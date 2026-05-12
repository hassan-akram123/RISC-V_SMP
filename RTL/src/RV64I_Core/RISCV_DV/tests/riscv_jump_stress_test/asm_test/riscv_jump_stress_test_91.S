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
                  li x2, 0x40000100
                  csrw 0x301, x2
kernel_sp:        
                  la x9, kernel_stack_end

trap_vec_init:    
                  la x2, mtvec_handler
                  ori x2, x2, 0
                  csrw 0x305, x2 # MTVEC

mepc_setup:       
                  la x2, init
                  csrw 0x341, x2

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x2, 0x1800
                  csrw 0x300, x2 # MSTATUS
                  mret
init:             
                  li x0, 0x869a1f95
                  li x1, 0x80000000
                  li x2, 0x0
                  li x3, 0xff1342c5
                  li x4, 0x3
                  li x5, 0x773b0992
                  li x6, 0xac07e9a1
                  li x7, 0xfc4d8e01
                  li x8, 0xd
                  li x10, 0x3
                  li x11, 0xb0d657b1
                  li x12, 0xf895a0cc
                  li x13, 0xf6ab1494
                  li x14, 0x0
                  li x15, 0xf1ade896
                  li x16, 0xecd7d0ad
                  li x17, 0xfa4c75e7
                  li x18, 0x6
                  li x19, 0xf20fd505
                  li x21, 0xf677cad4
                  li x22, 0x9
                  li x23, 0xb
                  li x24, 0xfb0dda99
                  li x25, 0xffaeafed
                  li x26, 0x0
                  li x27, 0x3
                  li x28, 0x0
                  li x29, 0xf6d369d6
                  li x30, 0xf5b53808
                  li x31, 0xf5eaf3c1
                  la x20, user_stack_end
main:             la           ra, sub_2
                  srl          t4, a3, a0
                  addi         ra, ra, 779
                  addi         t3, a6, -506
                  add          s8, ra, a1
                  sll          t6, a0, a0
                  srl          t0, a1, s6
                  srl          gp, tp, a2
main_j2:          jalr         t1, ra, -779 #jump main -> sub_2
                  addi         t4, s0, -1275
                  slt          s0, s11, t1
                  srli         t3, s1, 10
                  srl          t1, t0, tp
                  sltiu        t2, t3, 1051
                  la           t6, sub_1
                  addi         t6, t6, -731
                  sltiu        s7, s9, -1028
                  addi         a7, t1, -844
                  lui          a6, 350342
main_j3:          jalr         t1, t6, 731 #jump main -> sub_1
                  xori         a2, a2, 1156
                  xori         t2, a3, -153
                  la           a1, sub_3
                  srli         t2, s9, 23
                  srai         t2, s5, 4
                  addi         a1, a1, 530
                  and          a0, sp, s10
                  addi         a6, t1, 1068
                  slt          gp, a2, s4
                  srl          a2, a3, s11
                  sltiu        a5, s6, 621
                  add          ra, a5, t3
main_j4:          jalr         t1, a1, -529 #jump main -> sub_3
main_0:           jal          t1, 8f
0:                jal          ra, 6f
1:                jal          a7, 4f
2:                jal          t1, 15f
3:                jal          a6, 17f
4:                jal          a4, 7f
5:                jal          t1, 13f
6:                jal          ra, 9f
7:                jal          t1, 14f
8:                jal          ra, 3b
9:                jal          ra, 10f
10:               jal          gp, 18f
11:               jal          t1, 0b
12:               jal          a5, 19f
13:               jal          a1, 11b
14:               jal          ra, 12b
15:               jal          gp, 5b
16:               jal          a5, 1b
17:               jal          gp, 2b
18:               jal          ra, 16b
19:               ori          s3, t1, 1857
main_1:           jal          t1, 5f
0:                jal          ra, 10f
1:                jal          ra, 3f
2:                jal          ra, 6f
3:                jal          ra, 12f
4:                jal          t3, 7f
5:                jal          ra, 11f
6:                jal          t1, 13f
7:                jal          ra, 1b
8:                jal          ra, 2b
9:                jal          tp, 4b
10:               jal          ra, 9b
11:               jal          t1, 0b
12:               jal          a1, 8b
13:               sll          s9, t3, a1
                  addi         s10, s0, -1717
                  auipc        sp, 840729
                  andi         s6, s4, -1157
                  bge          s0, t3, 11f
                  sub          s9, a6, s5
                  slli         a7, gp, 9
                  or           a3, s10, s4
                  and          t4, gp, s8
                  sltu         t2, s6, a0
                  xor          sp, s11, t2
                  auipc        s11, 771280
11:               srl          s9, s10, a1
                  srli         t1, s3, 28
                  slt          s10, a6, s5
                  add          a1, s8, s7
                  srli         s3, t5, 25
                  bne          a4, t5, 21f
                  srai         s3, s1, 12
                  sltiu        s7, s7, 1637
                  srai         s3, ra, 4
                  nop
21:               slti         a7, s4, -1547
                  auipc        a3, 472295
                  ori          s9, a0, 314
                  bne          tp, s5, 37f
                  sltu         s0, a4, a0
                  bne          s3, ra, 31f
                  bge          t2, s3, 35f
                  or           a4, s7, s4
                  auipc        a4, 550287
                  blt          t5, s5, 37f
31:               srai         zero, a2, 5
                  sub          s10, s11, s6
                  beq          t6, s6, 40f
                  lui          ra, 668375
35:               bltu         gp, a1, 49f
                  andi         s6, s9, -1739
37:               sltu         sp, a1, a6
                  blt          t3, s0, 41f
                  ori          t5, s10, -1052
40:               xori         t3, s0, 939
41:               sll          tp, t6, a5
                  bgeu         t2, s8, 49f
                  blt          a6, s4, 56f
                  xori         t3, s3, 1652
                  srli         t4, a3, 9
                  sltiu        a3, t0, -715
                  andi         t4, s2, -214
                  ori          s5, tp, 257
49:               srli         a4, t4, 10
                  andi         gp, t5, -1369
                  slt          ra, a4, t2
                  bltu         t3, t4, 72f
                  sra          zero, s11, s2
                  srli         ra, s3, 4
                  nop
56:               xor          a6, s1, s2
                  auipc        s7, 138700
                  lui          a6, 782827
                  add          a3, a3, s4
                  add          t2, a4, t1
                  sltu         gp, t0, s9
                  bge          s7, s2, 64f
                  or           s8, s1, t5
64:               bge          a3, s3, 77f
                  beq          s9, tp, 82f
                  srl          t1, t6, s5
                  nop
                  bgeu         a0, t6, 88f
                  ori          s7, a1, 448
                  sltu         t4, s8, s1
                  srl          a6, s8, s10
72:               bge          t3, s9, 79f
                  andi         a4, t0, 674
                  sltu         a5, s9, a4
                  sltu         a0, a4, s6
                  bge          a0, t2, 83f
77:               srl          s7, t6, a0
                  sll          a6, tp, t2
79:               slt          s8, s8, a3
                  or           zero, a7, t6
                  beq          s10, a2, 98f
82:               srai         a5, a7, 3
83:               slli         a2, t2, 7
                  sra          t6, s8, zero
                  addi         zero, t3, -933
                  xor          ra, sp, s6
                  xor          t1, s2, a4
88:               sltiu        a0, a7, -753
                  bge          s3, tp, 107f
                  sra          t0, a7, s11
                  nop
                  addi         a5, t0, 1229
                  nop
                  sltiu        t2, t5, 1486
                  srl          a5, s3, s8
                  lui          t2, 340837
                  slti         zero, s7, 1549
98:               sltu         s8, s1, s2
                  bge          s0, sp, 100f
100:              srai         t4, zero, 30
                  bge          t5, a2, 111f
                  bgeu         a7, t5, 112f
                  bne          ra, a6, 111f
                  bgeu         s5, t2, 117f
                  bne          t1, gp, 106f
106:              addi         s7, s0, -974
107:              slt          s7, t2, sp
                  la           a3, sub_1
                  sub          sp, s2, s8
                  srai         t6, sp, 6
                  slti         s6, t6, -1581
                  xor          s10, s8, zero
                  nop
                  addi         a3, a3, 1014
                  sll          s7, s0, s5
                  nop
                  sub          t1, tp, t3
main_j1:          jalr         t1, a3, -1013 #jump main -> sub_1
                  srai         s9, s11, 29
                  bge          t0, a1, 117f
                  bgeu         t6, t5, 117f
111:              slli         t3, a1, 12
112:              srli         t4, s0, 3
                  andi         a1, a6, -834
                  srai         a5, s11, 7
                  sltiu        s6, a2, -1949
                  auipc        tp, 1017290
117:              or           s9, t6, s6
                  la x18, test_done
                  jalr x0, x18, 0
test_done:        
                  li gp, 1
                  ecall
sub_3:            addi         s4, s4, -44
                  sltu         ra, s0, s10
                  lui          a4, 365660
                  addi         t4, s6, 346
                  xori         s10, s7, -993
                  sw           t1, 4(s4)
                  auipc        a4, 804759
                  lui          s11, 1044981
                  or           a1, t6, ra
                  sub          zero, s6, sp
                  sll          s3, s5, a2
                  xori         sp, tp, 427
                  srli         t3, t3, 11
                  addi         t2, a5, -1029
                  and          t2, a6, t0
                  add          ra, s4, t1
                  slt          s9, s8, s7
                  sub          a2, a6, gp
                  slti         a7, t6, 687
                  beq          ra, s10, 24f
                  ori          s5, s4, 561
                  bgeu         gp, s11, 19f
                  addi         s7, s9, -1671
                  slt          a6, a3, a0
                  sub          a2, a3, s11
                  and          s0, s0, ra
                  sub          ra, s10, t5
19:               ori          a3, t4, -1980
                  sll          t2, s3, s10
                  sll          a6, s3, s0
                  blt          s3, s8, 28f
                  srl          gp, zero, a4
24:               xori         s6, sp, -1427
                  bltu         t5, t0, 28f
                  srli         t1, s1, 26
                  slti         t5, gp, 1948
28:               slli         t0, t6, 0
                  lw           t1, 4(s4)
                  srl          a7, s11, t5
                  lui          zero, 916084
                  andi         a5, a6, -1503
                  srl          s9, gp, s7
                  addi         s4, s4, 44
                  andi         a5, a5, 241
                  andi         a2, a4, -1988
                  srai         t5, a4, 0
                  nop
                  auipc        t5, 501143
48:               addi x24, x6, 1
48:               jalr x24, x24, 0
sub_1:            srai         a6, t4, 19
                  andi         s11, t6, 633
                  addi         s4, s4, -16
                  sw           t1, 4(s4)
                  lui          s11, 664729
                  srl          t2, zero, gp
                  addi         t4, s4, -360
                  sltu         s11, s11, sp
sub_1_8:          jal          t1, 3f
0:                jal          a5, 10f
1:                jal          t1, 7f
2:                jal          gp, 11f
3:                jal          ra, 8f
4:                jal          t1, 5f
5:                jal          s11, 1b
6:                jal          ra, 0b
7:                jal          ra, 12f
8:                jal          ra, 6b
9:                jal          ra, 4b
10:               jal          a7, 2b
11:               jal          ra, 9b
12:               andi         t3, t3, 1703
sub_1_2:          jal          t1, 7f
0:                jal          ra, 22f
1:                jal          tp, 25f
2:                jal          ra, 10f
3:                jal          ra, 4f
4:                jal          t0, 19f
5:                jal          ra, 12f
6:                jal          t1, 24f
7:                jal          ra, 15f
8:                jal          t5, 21f
9:                jal          s6, 20f
10:               jal          t1, 5b
11:               jal          ra, 23f
12:               jal          gp, 3b
13:               jal          t1, 26f
14:               jal          a7, 0b
15:               jal          ra, 14b
16:               jal          ra, 2b
17:               jal          ra, 16b
18:               jal          ra, 13b
19:               jal          t6, 6b
20:               jal          a4, 18b
21:               jal          s9, 1b
22:               jal          ra, 11b
23:               jal          t1, 17b
24:               jal          a6, 8b
25:               jal          ra, 9b
26:               andi         s11, ra, -1179
sub_1_3:          jal          t1, 9f
0:                jal          ra, 2f
1:                jal          ra, 12f
2:                jal          ra, 15f
3:                jal          ra, 0b
4:                jal          a7, 3b
5:                jal          t4, 10f
6:                jal          ra, 13f
7:                jal          s7, 1b
8:                jal          ra, 7b
9:                jal          s7, 4b
10:               jal          gp, 6b
11:               jal          ra, 14f
12:               jal          ra, 19f
13:               jal          t3, 11b
14:               jal          ra, 8b
15:               jal          s7, 16f
16:               jal          t1, 17f
17:               jal          t1, 18f
18:               jal          s5, 5b
19:               srli         s8, s6, 29
sub_1_9:          jal          t1, 27f
0:                jal          tp, 17f
1:                jal          ra, 9f
2:                jal          sp, 6f
3:                jal          ra, 14f
4:                jal          t3, 23f
5:                jal          s6, 1b
6:                jal          ra, 24f
7:                jal          t1, 25f
8:                jal          ra, 10f
9:                jal          ra, 11f
10:               jal          t1, 21f
11:               jal          t1, 28f
12:               jal          ra, 13f
13:               jal          s5, 0b
14:               jal          t0, 16f
15:               jal          a6, 26f
16:               jal          ra, 8b
17:               jal          ra, 22f
18:               jal          a1, 15b
19:               jal          a7, 12b
20:               jal          ra, 7b
21:               jal          ra, 29f
22:               jal          ra, 2b
23:               jal          sp, 19b
24:               jal          ra, 20b
25:               jal          ra, 5b
26:               jal          ra, 4b
27:               jal          s0, 18b
28:               jal          t1, 3b
29:               slt          s5, t2, s11
sub_1_0:          jal          t1, 6f
0:                jal          ra, 7f
1:                jal          t5, 3f
2:                jal          a0, 5f
3:                jal          ra, 9f
4:                jal          t1, 1b
5:                jal          ra, 8f
6:                jal          t1, 4b
7:                jal          a7, 2b
8:                jal          ra, 10f
9:                jal          ra, 0b
10:               sub          ra, sp, s1
sub_1_7:          jal          t1, 16f
0:                jal          s10, 24f
1:                jal          ra, 5f
2:                jal          tp, 20f
3:                jal          ra, 22f
4:                jal          s0, 10f
5:                jal          t1, 11f
6:                jal          s6, 29f
7:                jal          sp, 6b
8:                jal          ra, 4b
9:                jal          a4, 30f
10:               jal          t1, 19f
11:               jal          ra, 3b
12:               jal          ra, 9b
13:               jal          t1, 8b
14:               jal          a7, 18f
15:               jal          s5, 12b
16:               jal          a5, 13b
17:               jal          ra, 15b
18:               jal          ra, 28f
19:               jal          ra, 27f
20:               jal          ra, 26f
21:               jal          ra, 1b
22:               jal          t6, 23f
23:               jal          gp, 0b
24:               jal          ra, 2b
25:               jal          s6, 21b
26:               jal          t1, 14b
27:               jal          s0, 25b
28:               jal          ra, 7b
29:               jal          ra, 17b
30:               andi         t3, tp, 684
sub_1_1:          jal          t1, 0f
0:                jal          ra, 17f
1:                jal          t3, 15f
2:                jal          t1, 3f
3:                jal          t1, 25f
4:                jal          t1, 23f
5:                jal          ra, 26f
6:                jal          ra, 16f
7:                jal          s9, 19f
8:                jal          ra, 10f
9:                jal          ra, 11f
10:               jal          t1, 12f
11:               jal          ra, 13f
12:               jal          ra, 6b
13:               jal          ra, 1b
14:               jal          t1, 22f
15:               jal          t1, 21f
16:               jal          ra, 2b
17:               jal          ra, 4b
18:               jal          t1, 20f
19:               jal          ra, 24f
20:               jal          t1, 8b
21:               jal          t0, 18b
22:               jal          ra, 7b
23:               jal          ra, 9b
24:               jal          ra, 5b
25:               jal          ra, 14b
26:               lui          gp, 661938
sub_1_4:          jal          t1, 4f
0:                jal          sp, 12f
1:                jal          s8, 14f
2:                jal          ra, 8f
3:                jal          ra, 6f
4:                jal          ra, 11f
5:                jal          ra, 2b
6:                jal          ra, 0b
7:                jal          t1, 1b
8:                jal          s3, 9f
9:                jal          t1, 10f
10:               jal          sp, 3b
11:               jal          a6, 5b
12:               jal          t1, 13f
13:               jal          a6, 7b
14:               slli         t2, a3, 25
                  srli         t0, gp, 25
                  bltu         s9, s3, 21f
                  or           t5, t0, t0
                  add          s0, s1, a2
                  slt          s7, gp, s10
                  addi         a0, t2, -1035
                  add          t1, s2, s11
                  auipc        s3, 345392
                  sub          a4, t4, s11
                  slt          a0, gp, ra
                  ori          tp, t5, -35
                  srli         t2, tp, 23
                  auipc        tp, 798125
                  beq          s0, s3, 14f
14:               bgeu         s4, t6, 31f
                  bltu         s2, s7, 19f
                  add          t3, a1, zero
                  srl          a2, t4, s5
                  addi         t0, gp, -1715
19:               beq          s11, s11, 37f
                  bne          a1, s4, 22f
21:               andi         gp, t3, 425
22:               andi         t4, a6, 164
                  slti         a6, a6, 1575
                  ori          s11, s4, 629
                  sltu         t4, t5, s9
                  sltiu        tp, a3, 858
                  bne          t4, a0, 41f
                  nop
                  sltiu        tp, a7, 1140
                  bne          a6, t4, 38f
31:               andi         zero, s5, -1321
                  beq          s11, t2, 45f
                  xor          a5, a7, t1
                  sub          t5, t3, s4
                  beq          s11, s5, 50f
                  add          a7, s11, s10
37:               xor          t0, s0, s0
38:               srl          a4, s10, s2
                  lui          a7, 838935
                  bgeu         s0, a3, 42f
41:               slti         a7, t2, 1347
42:               xori         s9, s8, -1964
                  nop
                  srai         gp, a1, 8
45:               addi         t4, a5, 1384
                  bne          a5, a0, 49f
                  add          a4, t1, ra
                  bgeu         s5, a7, 50f
49:               srl          t5, s8, tp
50:               or           s3, s5, s10
                  nop
                  slti         tp, s9, 1643
                  auipc        a7, 372908
                  bne          s8, s9, 65f
                  or           s11, a2, a4
                  slti         a4, a0, -1880
                  sra          s10, a5, a4
                  slti         gp, t0, 1973
                  sltu         s0, tp, s5
                  sltu         a0, t6, a7
                  srl          sp, a5, s5
                  or           t5, a6, s7
                  bgeu         t1, t2, 72f
                  nop
65:               xori         s10, s5, 359
                  sll          s5, tp, t2
                  bge          s7, sp, 72f
                  srl          t4, t6, gp
                  ori          a7, t3, -1728
                  sub          s9, t2, s7
                  bge          s3, s11, 89f
72:               sll          ra, s5, sp
                  bne          a2, t4, 75f
                  auipc        sp, 513313
75:               sll          a1, t0, s9
                  blt          s8, a6, 85f
                  srl          s9, a3, tp
                  sltiu        s3, t4, 1842
                  beq          a7, s11, 97f
                  srai         s7, a4, 29
                  and          t6, s1, a4
                  xor          s8, a6, t0
                  srl          s8, a0, s5
                  srl          s9, a7, s3
85:               auipc        a0, 921920
                  or           tp, s9, t3
                  andi         s11, t5, 65
                  sra          t2, t6, a0
89:               bne          a2, sp, 108f
                  bgeu         s7, a3, 110f
                  ori          t6, t2, -1344
                  slt          a5, a7, t1
                  bgeu         s3, a4, 101f
                  bge          t3, a5, 106f
                  sltiu        a0, a0, -2002
                  bltu         s2, ra, 114f
97:               nop
                  bgeu         tp, t4, 106f
sub_1_5:          jal          t1, 1f
0:                jal          ra, 11f
1:                jal          a1, 2f
2:                jal          ra, 14f
3:                jal          tp, 5f
4:                jal          s0, 19f
5:                jal          ra, 9f
6:                jal          a1, 13f
7:                jal          s10, 8f
8:                jal          t1, 6b
9:                jal          t2, 16f
10:               jal          t1, 15f
11:               jal          ra, 18f
12:               jal          ra, 10b
13:               jal          t1, 0b
14:               jal          t1, 17f
15:               jal          t1, 3b
16:               jal          t0, 7b
17:               jal          t1, 12b
18:               jal          ra, 4b
19:               auipc        t5, 553064
                  bgeu         sp, ra, 116f
                  or           a4, a6, s11
101:              sltu         a0, a0, s5
                  auipc        tp, 637597
                  xor          a0, t6, s11
                  srli         a4, t5, 21
                  add          t2, a6, a7
106:              bne          a1, a0, 113f
                  blt          t2, s11, 127f
108:              add          a1, zero, t2
                  bgeu         s7, t3, 113f
110:              xori         a6, s11, 1355
                  sub          zero, s1, a5
                  and          t3, t2, s2
113:              and          s9, s6, s10
114:              or           s10, a0, gp
                  sltu         a5, s10, t5
116:              sltu         t2, a6, s1
                  and          ra, s9, t2
                  srl          t4, t2, t0
                  srl          a7, s11, a4
                  bge          t1, s3, 138f
                  srli         s10, t6, 13
                  blt          a1, t5, 125f
                  xori         a2, s3, 449
                  slli         gp, t5, 13
125:              srai         s6, s5, 11
                  or           sp, a7, a6
127:              slti         a3, sp, -1538
                  xori         a3, s2, -1730
                  bgeu         zero, a5, 138f
                  slli         a6, s10, 17
                  xor          s10, t6, s5
                  srai         a4, a5, 5
                  auipc        gp, 376706
                  lui          a0, 734825
                  sltu         t4, a4, s2
                  beq          s1, t3, 143f
                  sltu         s10, a5, t1
138:              sltu         t6, a5, a7
                  bgeu         t4, a0, 147f
                  lui          s3, 527053
                  sll          a0, a5, t4
                  blt          a0, s0, 144f
143:              bgeu         t2, s0, 145f
144:              auipc        t5, 423889
145:              sltiu        a3, s6, -356
                  slti         a0, s0, -1838
147:              bgeu         a5, gp, 160f
                  slli         a7, s2, 13
                  blt          s8, s5, 151f
                  addi         s8, s1, -1191
151:              srli         a6, s3, 30
                  or           a6, t3, s4
                  ori          s0, t1, -946
                  auipc        a1, 738652
                  xori         a4, ra, 1072
                  auipc        t6, 187423
                  bne          s1, s7, 177f
                  beq          s11, ra, 166f
                  add          s10, t3, zero
160:              sltu         s7, a6, a4
                  sra          a6, a7, s9
                  addi         t3, ra, -1970
                  xor          s8, a2, s8
                  addi         t6, s3, 6
                  nop
166:              ori          s6, t5, -999
                  andi         s0, s9, -1508
                  addi         s6, ra, -1946
                  auipc        t2, 357240
                  bgeu         a4, a1, 181f
                  sltu         t4, t3, t3
                  bgeu         s0, s6, 192f
                  blt          s7, a5, 191f
                  srl          a6, s6, ra
                  slt          sp, s11, s4
                  srl          s10, a6, a7
177:              add          a2, s9, t6
                  ori          t3, sp, -1854
                  xori         a5, s7, 98
                  andi         a2, s10, -841
181:              nop
                  blt          sp, s10, 201f
                  xor          tp, sp, a3
                  bltu         t3, a4, 202f
                  sub          s11, s2, tp
                  bge          sp, a0, 195f
                  auipc        t1, 886568
                  srl          s6, a6, a7
                  sltu         t0, a4, s10
                  lui          tp, 975067
191:              auipc        a6, 752758
192:              sra          s3, ra, a3
                  xor          ra, t3, t4
                  sra          a7, a4, s10
195:              bge          s8, zero, 207f
                  bne          a6, a6, 200f
                  sub          s5, t2, t2
                  add          s6, s9, s3
                  srl          t0, s1, s6
200:              sltiu        s0, t4, 1107
201:              beq          a3, a7, 219f
202:              ori          t6, s11, 690
                  bltu         s0, a2, 218f
                  bgeu         tp, s9, 221f
                  ori          t5, s7, 541
                  bltu         s11, a6, 214f
207:              bltu         zero, s10, 211f
                  slli         t2, a2, 27
                  bne          s11, gp, 211f
                  lui          t2, 425228
211:              sra          a2, a2, zero
                  auipc        s6, 130488
                  nop
214:              bltu         a5, t3, 219f
                  and          s8, t5, s10
                  xor          s0, s9, s8
                  srli         t6, a5, 6
218:              lui          t3, 573484
219:              nop
                  or           s6, s8, a6
221:              beq          a6, a5, 222f
222:              bne          s4, t6, 239f
                  auipc        a1, 56431
                  bge          s7, a0, 244f
                  addi         t3, a4, -1955
                  bge          s1, ra, 240f
                  ori          s7, t0, -760
                  bltu         s11, a6, 230f
                  srl          sp, t4, t3
230:              slt          a5, a1, a3
                  sub          t6, a3, s1
                  bne          a7, s3, 250f
                  beq          t2, ra, 245f
                  beq          s4, s10, 251f
                  sll          zero, s5, s7
                  add          a3, t2, a2
                  srl          s0, a4, s6
                  ori          s10, t5, 211
239:              blt          t1, s3, 241f
240:              add          s11, t6, s0
241:              xori         s6, s4, 1894
                  sub          a6, a6, t3
                  slli         t0, a5, 26
244:              andi         a0, sp, 1069
245:              sll          zero, s4, a5
                  sub          s6, s0, t1
                  blt          s2, s3, 260f
                  sll          tp, s11, t4
                  xor          a4, t3, s5
250:              sltu         t5, a3, s9
251:              nop
                  lui          a0, 777765
                  bne          a6, tp, 268f
                  xor          t2, s7, s2
                  ori          s10, s5, 1447
                  bge          t5, a2, 274f
                  slt          s5, s4, t5
                  bgeu         a4, s11, 263f
                  nop
260:              srl          zero, t0, s4
                  srai         a7, t6, 1
                  auipc        t6, 1030188
263:              xor          a3, a3, s0
                  bltu         s4, s8, 284f
                  slli         a4, gp, 30
                  xori         t3, ra, 523
                  xori         t6, s3, -1591
268:              bne          s7, s6, 279f
                  bltu         s9, s8, 278f
                  srl          a3, a4, tp
                  srl          a2, s11, s1
                  slli         t2, s2, 22
                  sltiu        a5, s1, -434
274:              slt          a2, sp, gp
                  bgeu         tp, s9, 293f
                  ori          t2, a2, -120
                  lui          a1, 198112
278:              srl          a2, t2, s10
279:              slli         ra, t2, 16
                  and          gp, a0, a7
                  slt          gp, s0, a4
                  srai         t5, t6, 8
                  or           a1, s10, a1
284:              andi         t1, s7, -1579
                  srai         s5, s5, 3
                  bltu         gp, s5, 306f
                  slti         ra, tp, -473
                  sltu         a5, s0, s11
                  xori         a5, gp, 1033
                  sll          s0, s5, t4
                  srai         a3, t0, 1
                  srai         s3, s8, 26
293:              sra          sp, t0, t5
                  bltu         gp, ra, 313f
                  srai         gp, s7, 7
                  addi         a6, t2, -1880
                  bge          s5, a2, 300f
                  sltiu        zero, a0, 2038
                  sll          a6, t5, s3
300:              xor          a2, s5, t6
                  xori         zero, a3, 1431
                  xori         a4, s5, 1486
                  sub          a7, a7, a3
                  lui          t3, 979646
                  bne          sp, s11, 313f
306:              ori          s0, s9, 1918
                  bge          t1, t4, 315f
                  beq          t6, t4, 325f
                  bgeu         s4, zero, 310f
310:              bgeu         t6, a0, 317f
                  bgeu         s10, s1, 315f
                  or           zero, ra, a6
313:              xor          a7, tp, s4
                  sltiu        t2, gp, -1138
315:              addi         t3, ra, -1390
                  sltiu        zero, a7, 1172
317:              sltu         ra, a1, a7
                  srl          s6, ra, s11
                  andi         s10, a2, 665
                  srl          gp, a0, a4
                  bltu         gp, ra, 325f
                  srai         t2, a0, 9
                  beq          t6, s0, 332f
                  blt          s7, s0, 326f
325:              bge          s9, s0, 345f
326:              srai         a1, t1, 16
                  sub          tp, t3, t1
                  srai         t1, a1, 3
                  sra          tp, s10, t4
                  slt          zero, s5, t6
                  slti         a5, a5, 1655
332:              beq          s11, zero, 346f
                  slti         a7, ra, -931
                  lui          a4, 911442
                  sra          t3, sp, s1
                  sltiu        t6, sp, -17
                  bltu         a1, s1, 345f
                  blt          s1, a1, 356f
                  sub          t0, gp, a3
                  xor          a6, t4, s9
                  sltu         t5, s10, t6
                  xori         zero, t1, 1867
                  sll          a4, gp, ra
                  bgeu         s0, t4, 346f
345:              or           s6, s7, s2
346:              srli         t4, s10, 17
                  bge          a2, s8, 361f
                  xori         a4, zero, -1740
                  or           a5, s11, a6
                  xor          t4, a7, s2
                  addi         a4, s6, -1275
                  lui          s10, 123973
                  addi         s3, a4, 1912
                  sra          t2, s6, a1
                  bgeu         s3, a3, 357f
356:              lui          a6, 118749
357:              blt          t2, s10, 360f
                  and          a4, t4, a6
                  and          s11, s5, a5
360:              slti         gp, s2, -475
361:              srl          a6, tp, t5
                  sltu         s0, ra, ra
                  xori         a4, s7, 166
                  or           a6, t6, sp
                  bge          t5, s3, 377f
                  sll          a7, a0, s5
                  srl          gp, a5, s5
                  sub          s9, t6, t4
                  srai         a6, t4, 19
                  sll          gp, s5, a6
                  bne          zero, a1, 375f
                  sub          a3, t3, a0
                  andi         t6, a2, 271
                  auipc        s10, 702650
375:              srai         t4, s10, 17
                  slti         t3, tp, -764
377:              add          zero, s10, s11
                  bltu         zero, s7, 387f
                  sltiu        a3, a5, 1609
                  andi         a5, a7, -830
                  ori          s10, t3, 1337
                  and          a2, s1, sp
                  xor          a0, s10, a7
                  sll          t1, s8, sp
                  sltu         s7, a2, ra
                  slti         s11, a3, -1609
387:              sltu         t6, t5, s3
                  bne          ra, a4, 408f
                  slli         s10, s0, 12
                  xor          t5, ra, s5
                  add          s0, tp, s3
                  bltu         s11, zero, 409f
                  srl          s5, s0, s8
                  lui          sp, 132109
                  slli         a4, a1, 15
                  addi         a0, s10, 156
sub_1_6:          jal          t1, 3f
0:                jal          ra, 6f
1:                jal          ra, 10f
2:                jal          ra, 7f
3:                jal          t1, 2b
4:                jal          ra, 0b
5:                jal          ra, 12f
6:                jal          s7, 1b
7:                jal          s11, 9f
8:                jal          s0, 4b
9:                jal          ra, 11f
10:               jal          t1, 5b
11:               jal          a0, 8b
12:               andi         a7, s2, 198
                  bgeu         a3, s9, 415f
                  sltiu        sp, t2, -1856
                  beq          s5, a1, 407f
                  xor          a3, t5, a5
                  and          t1, a1, s8
                  xor          s5, s1, tp
                  blt          a2, s11, 412f
                  xori         s3, s4, 1820
                  nop
                  slli         sp, s1, 21
407:              slti         t3, t3, 590
408:              srai         t3, s5, 26
409:              blt          s0, a4, 414f
                  nop
                  lui          gp, 853476
412:              xor          t4, t2, s1
                  srl          t6, t1, a0
414:              slti         s10, tp, -1430
415:              addi         s10, s5, -1325
                  addi         a1, s8, 1515
                  auipc        ra, 778558
                  slt          tp, s8, zero
                  srl          s5, tp, a0
                  blt          a1, s2, 440f
                  blt          ra, a7, 423f
                  srl          s6, t0, s5
423:              andi         t5, a7, -359
                  add          t5, a1, zero
                  add          t3, t6, a4
                  auipc        t5, 998930
                  bne          zero, s7, 446f
                  sra          a3, a5, gp
                  bne          s9, s10, 440f
                  srl          s3, t1, s0
                  bltu         a2, zero, 439f
                  xor          s8, s5, a7
                  lui          t4, 72766
                  slt          s7, a5, a4
                  sltu         s0, a2, s1
                  srli         t1, gp, 7
                  xori         a5, a2, 909
                  blt          t2, a5, 453f
439:              sltiu        a1, zero, 1216
440:              ori          tp, a1, -1521
                  xori         gp, a6, -1986
                  xori         s9, a6, 1739
                  sll          s9, t5, t1
                  slti         t1, s0, -1418
                  nop
446:              sub          t6, t5, a3
                  slt          a7, s8, s3
                  add          tp, t2, a7
                  or           s11, t2, a5
                  ori          sp, s11, 723
                  xor          s8, s4, t3
                  bne          s2, a5, 469f
453:              lui          zero, 466992
                  addi         a1, a1, -487
                  sll          t6, t1, t6
                  srai         t4, s7, 12
                  and          a6, s0, t5
                  addi         tp, t1, -643
                  sltu         s7, ra, t1
                  or           s11, s11, zero
                  add          s11, gp, a3
                  lui          s0, 1046713
                  bgeu         t1, t5, 470f
                  srl          s7, t2, a3
                  bne          t0, s6, 483f
                  sub          t2, a6, s3
                  or           s11, s5, t3
                  slli         s7, a7, 8
469:              slt          t0, s7, t3
470:              sub          ra, zero, s8
                  slti         tp, t4, 919
                  andi         s7, a3, -1132
                  slt          zero, s4, t6
                  addi         a7, s0, 1880
                  xori         a5, tp, 1999
                  srli         t2, a4, 11
                  ori          t5, s11, 854
                  sll          t4, s3, s5
                  sra          a5, s8, s3
                  ori          t3, s2, -840
                  sll          s11, t3, zero
                  auipc        t4, 275493
483:              slt          t6, tp, s2
                  bge          s6, s5, 488f
                  blt          zero, s4, 500f
                  slli         t3, s1, 1
                  beq          s2, s0, 500f
488:              lui          t3, 246150
                  addi         t4, sp, -813
                  bgeu         s0, gp, 498f
                  andi         sp, gp, 1386
                  and          t0, s9, s1
                  srai         t4, a6, 5
                  xor          a3, s5, a3
                  srl          s3, zero, t6
                  xor          s5, s3, s3
                  sll          zero, s5, s9
498:              srl          a6, s2, a7
                  srai         t5, t0, 24
500:              add          a3, s10, s2
                  sltu         sp, t5, t2
                  sltu         s0, a0, s7
                  auipc        a0, 255658
                  lw           t1, 4(s4)
                  ori          t5, a2, -1250
                  addi         s4, s4, 16
                  sltiu        a5, gp, -1779
                  srli         a1, ra, 15
                  sll          t3, s2, a1
                  ori          a7, s4, -888
                  and          s11, ra, t6
                  sltu         a4, t2, s11
738:              addi x6, x6, 1
738:              jalr x6, x6, 0
sub_2:            addi         s4, s4, -40
                  slli         a7, t0, 6
                  slli         s5, s2, 0
                  ori          gp, zero, -1216
                  xor          s8, s2, gp
                  lui          s10, 83234
                  andi         s3, tp, 737
                  sw           t1, 4(s4)
                  xor          s0, s7, t1
                  or           gp, a3, a2
                  and          t6, ra, gp
sub_2_0:          jal          t1, 1f
0:                jal          s9, 10f
1:                jal          ra, 12f
2:                jal          t3, 4f
3:                jal          t1, 6f
4:                jal          ra, 0b
5:                jal          ra, 11f
6:                jal          ra, 7f
7:                jal          ra, 9f
8:                jal          ra, 5b
9:                jal          t1, 8b
10:               jal          t2, 3b
11:               jal          ra, 13f
12:               jal          t0, 2b
13:               sra          t5, s11, a6
sub_2_18:         jal          t1, 4f
0:                jal          s5, 2f
1:                jal          tp, 9f
2:                jal          ra, 1b
3:                jal          s6, 0b
4:                jal          ra, 8f
5:                jal          ra, 7f
6:                jal          ra, 13f
7:                jal          ra, 11f
8:                jal          s11, 6b
9:                jal          t1, 10f
10:               jal          ra, 14f
11:               jal          ra, 3b
12:               jal          ra, 5b
13:               jal          ra, 12b
14:               srai         a4, a2, 3
sub_2_12:         jal          t1, 3f
0:                jal          ra, 9f
1:                jal          s9, 10f
2:                jal          t1, 7f
3:                jal          gp, 6f
4:                jal          t1, 0b
5:                jal          t1, 2b
6:                jal          t1, 5b
7:                jal          t1, 8f
8:                jal          ra, 4b
9:                jal          ra, 1b
10:               slt          s11, s1, t4
sub_2_15:         jal          t1, 5f
0:                jal          ra, 13f
1:                jal          ra, 25f
2:                jal          ra, 10f
3:                jal          t1, 4f
4:                jal          t1, 26f
5:                jal          ra, 24f
6:                jal          a0, 7f
7:                jal          ra, 22f
8:                jal          ra, 1b
9:                jal          s10, 21f
10:               jal          t3, 14f
11:               jal          ra, 17f
12:               jal          s10, 20f
13:               jal          s11, 23f
14:               jal          ra, 16f
15:               jal          a2, 9b
16:               jal          ra, 18f
17:               jal          t1, 19f
18:               jal          ra, 6b
19:               jal          ra, 0b
20:               jal          t1, 15b
21:               jal          t1, 8b
22:               jal          sp, 11b
23:               jal          a0, 12b
24:               jal          tp, 2b
25:               jal          a2, 3b
26:               lui          a2, 207671
sub_2_6:          jal          t1, 5f
0:                jal          t1, 8f
1:                jal          t0, 2f
2:                jal          tp, 7f
3:                jal          tp, 1b
4:                jal          ra, 10f
5:                jal          ra, 3b
6:                jal          a2, 9f
7:                jal          t1, 6b
8:                jal          ra, 4b
9:                jal          ra, 0b
10:               nop
sub_2_11:         jal          t1, 10f
0:                jal          ra, 22f
1:                jal          ra, 11f
2:                jal          t1, 26f
3:                jal          ra, 23f
4:                jal          ra, 20f
5:                jal          s10, 25f
6:                jal          gp, 17f
7:                jal          sp, 21f
8:                jal          t1, 12f
9:                jal          ra, 8b
10:               jal          ra, 19f
11:               jal          ra, 0b
12:               jal          a2, 13f
13:               jal          ra, 2b
14:               jal          ra, 5b
15:               jal          ra, 7b
16:               jal          t1, 6b
17:               jal          a4, 3b
18:               jal          ra, 24f
19:               jal          s9, 16b
20:               jal          ra, 1b
21:               jal          a7, 14b
22:               jal          t1, 9b
23:               jal          ra, 15b
24:               jal          ra, 4b
25:               jal          ra, 18b
26:               addi         tp, t0, 1061
sub_2_13:         jal          t1, 21f
0:                jal          ra, 18f
1:                jal          a6, 0b
2:                jal          t1, 19f
3:                jal          ra, 23f
4:                jal          ra, 15f
5:                jal          t1, 20f
6:                jal          a4, 22f
7:                jal          t1, 8f
8:                jal          a2, 11f
9:                jal          t1, 7b
10:               jal          t1, 6b
11:               jal          ra, 25f
12:               jal          ra, 14f
13:               jal          ra, 4b
14:               jal          ra, 10b
15:               jal          ra, 3b
16:               jal          s0, 13b
17:               jal          s7, 5b
18:               jal          ra, 16b
19:               jal          t1, 24f
20:               jal          s8, 9b
21:               jal          ra, 1b
22:               jal          tp, 26f
23:               jal          s7, 17b
24:               jal          t1, 12b
25:               jal          ra, 2b
26:               sltiu        t1, s5, 1023
sub_2_23:         jal          t1, 3f
0:                jal          t1, 4f
1:                jal          ra, 7f
2:                jal          ra, 14f
3:                jal          ra, 12f
4:                jal          t1, 8f
5:                jal          t1, 17f
6:                jal          ra, 9f
7:                jal          ra, 10f
8:                jal          t1, 16f
9:                jal          ra, 1b
10:               jal          ra, 15f
11:               jal          tp, 2b
12:               jal          t1, 13f
13:               jal          ra, 5b
14:               jal          t1, 6b
15:               jal          ra, 18f
16:               jal          a3, 11b
17:               jal          t1, 0b
18:               ori          t5, s11, -1058
sub_2_2:          jal          t1, 3f
0:                jal          t0, 10f
1:                jal          t1, 4f
2:                jal          a2, 0b
3:                jal          a5, 1b
4:                jal          s10, 8f
5:                jal          ra, 2b
6:                jal          gp, 9f
7:                jal          t1, 6b
8:                jal          s11, 11f
9:                jal          t1, 13f
10:               jal          t1, 7b
11:               jal          ra, 12f
12:               jal          ra, 5b
13:               srl          t0, s4, s6
sub_2_4:          jal          t1, 9f
0:                jal          s10, 1f
1:                jal          t1, 7f
2:                jal          ra, 10f
3:                jal          a3, 2b
4:                jal          sp, 8f
5:                jal          ra, 3b
6:                jal          gp, 5b
7:                jal          ra, 6b
8:                jal          tp, 0b
9:                jal          a2, 4b
10:               xor          a6, s6, s7
sub_2_10:         jal          t1, 14f
0:                jal          ra, 12f
1:                jal          t6, 4f
2:                jal          ra, 7f
3:                jal          t1, 10f
4:                jal          ra, 6f
5:                jal          ra, 0b
6:                jal          t1, 11f
7:                jal          ra, 17f
8:                jal          ra, 16f
9:                jal          ra, 19f
10:               jal          t6, 8b
11:               jal          ra, 9b
12:               jal          t1, 2b
13:               jal          ra, 3b
14:               jal          ra, 13b
15:               jal          s11, 18f
16:               jal          ra, 5b
17:               jal          t1, 15b
18:               jal          ra, 1b
19:               jal          s11, 20f
20:               slli         t5, s0, 10
sub_2_7:          jal          t1, 7f
0:                jal          s0, 9f
1:                jal          a0, 8f
2:                jal          t1, 5f
3:                jal          gp, 6f
4:                jal          ra, 1b
5:                jal          t1, 3b
6:                jal          ra, 4b
7:                jal          ra, 10f
8:                jal          ra, 0b
9:                jal          ra, 11f
10:               jal          ra, 2b
11:               srli         a4, s6, 25
sub_2_20:         jal          t1, 18f
0:                jal          ra, 9f
1:                jal          t1, 26f
2:                jal          t1, 8f
3:                jal          a7, 24f
4:                jal          s0, 5f
5:                jal          ra, 1b
6:                jal          ra, 17f
7:                jal          ra, 10f
8:                jal          gp, 14f
9:                jal          ra, 21f
10:               jal          t1, 19f
11:               jal          t1, 25f
12:               jal          ra, 13f
13:               jal          t1, 11b
14:               jal          a4, 0b
15:               jal          a6, 12b
16:               jal          ra, 22f
17:               jal          ra, 4b
18:               jal          t1, 28f
19:               jal          t1, 16b
20:               jal          ra, 3b
21:               jal          s6, 29f
22:               jal          t1, 6b
23:               jal          tp, 15b
24:               jal          ra, 7b
25:               jal          t6, 20b
26:               jal          t1, 30f
27:               jal          ra, 2b
28:               jal          ra, 27b
29:               jal          ra, 23b
30:               slti         a3, t6, 1553
sub_2_1:          jal          t1, 22f
0:                jal          s9, 3f
1:                jal          ra, 15f
2:                jal          ra, 11f
3:                jal          s5, 19f
4:                jal          a4, 20f
5:                jal          s8, 4b
6:                jal          t1, 24f
7:                jal          t2, 1b
8:                jal          ra, 0b
9:                jal          ra, 23f
10:               jal          a5, 2b
11:               jal          t1, 6b
12:               jal          ra, 5b
13:               jal          sp, 8b
14:               jal          a6, 7b
15:               jal          ra, 21f
16:               jal          ra, 9b
17:               jal          s0, 12b
18:               jal          ra, 16b
19:               jal          a1, 17b
20:               jal          t1, 18b
21:               jal          gp, 10b
22:               jal          ra, 13b
23:               jal          ra, 14b
24:               auipc        s7, 608677
sub_2_24:         jal          t1, 19f
0:                jal          ra, 8f
1:                jal          ra, 14f
2:                jal          ra, 20f
3:                jal          ra, 5f
4:                jal          ra, 10f
5:                jal          tp, 2b
6:                jal          s11, 0b
7:                jal          ra, 17f
8:                jal          ra, 9f
9:                jal          a3, 18f
10:               jal          ra, 1b
11:               jal          ra, 16f
12:               jal          ra, 3b
13:               jal          ra, 11b
14:               jal          s9, 15f
15:               jal          s8, 6b
16:               jal          ra, 7b
17:               jal          a0, 4b
18:               jal          ra, 12b
19:               jal          ra, 13b
20:               slti         t4, ra, 1958
sub_2_8:          jal          t1, 8f
0:                jal          ra, 10f
1:                jal          ra, 18f
2:                jal          ra, 14f
3:                jal          t1, 13f
4:                jal          s10, 2b
5:                jal          t4, 21f
6:                jal          ra, 11f
7:                jal          s6, 24f
8:                jal          ra, 1b
9:                jal          t1, 23f
10:               jal          ra, 12f
11:               jal          ra, 16f
12:               jal          t1, 9b
13:               jal          a1, 19f
14:               jal          ra, 7b
15:               jal          ra, 4b
16:               jal          ra, 25f
17:               jal          ra, 3b
18:               jal          ra, 15b
19:               jal          a3, 26f
20:               jal          s8, 22f
21:               jal          tp, 6b
22:               jal          t0, 5b
23:               jal          a5, 20b
24:               jal          ra, 0b
25:               jal          ra, 17b
26:               sub          a4, sp, zero
sub_2_5:          jal          t1, 9f
0:                jal          ra, 8f
1:                jal          t1, 10f
2:                jal          ra, 12f
3:                jal          s11, 7f
4:                jal          ra, 11f
5:                jal          ra, 4b
6:                jal          t1, 2b
7:                jal          ra, 6b
8:                jal          ra, 1b
9:                jal          tp, 5b
10:               jal          t1, 3b
11:               jal          ra, 0b
12:               sra          s0, s5, a4
sub_2_17:         jal          t1, 6f
0:                jal          ra, 14f
1:                jal          ra, 19f
2:                jal          ra, 0b
3:                jal          t1, 2b
4:                jal          ra, 13f
5:                jal          ra, 7f
6:                jal          sp, 17f
7:                jal          t1, 1b
8:                jal          t0, 5b
9:                jal          t1, 20f
10:               jal          ra, 4b
11:               jal          s3, 10b
12:               jal          ra, 9b
13:               jal          a6, 16f
14:               jal          a2, 11b
15:               jal          a0, 12b
16:               jal          ra, 8b
17:               jal          t1, 18f
18:               jal          ra, 3b
19:               jal          ra, 15b
20:               xori         s11, s3, 1435
sub_2_21:         jal          t1, 1f
0:                jal          ra, 6f
1:                jal          t1, 12f
2:                jal          gp, 11f
3:                jal          ra, 10f
4:                jal          a7, 5f
5:                jal          ra, 17f
6:                jal          ra, 9f
7:                jal          ra, 2b
8:                jal          a2, 16f
9:                jal          ra, 7b
10:               jal          tp, 8b
11:               jal          t0, 13f
12:               jal          ra, 14f
13:               jal          ra, 3b
14:               jal          ra, 4b
15:               jal          ra, 0b
16:               jal          ra, 18f
17:               jal          ra, 15b
18:               srai         gp, t2, 22
sub_2_19:         jal          t1, 28f
0:                jal          t6, 3f
1:                jal          a0, 9f
2:                jal          s6, 4f
3:                jal          t6, 21f
4:                jal          sp, 7f
5:                jal          s6, 27f
6:                jal          ra, 29f
7:                jal          ra, 17f
8:                jal          ra, 14f
9:                jal          ra, 0b
10:               jal          ra, 6b
11:               jal          a1, 23f
12:               jal          tp, 18f
13:               jal          t0, 15f
14:               jal          t0, 25f
15:               jal          s11, 5b
16:               jal          tp, 20f
17:               jal          t1, 16b
18:               jal          t1, 30f
19:               jal          ra, 10b
20:               jal          ra, 19b
21:               jal          ra, 26f
22:               jal          a0, 24f
23:               jal          s5, 1b
24:               jal          ra, 8b
25:               jal          ra, 2b
26:               jal          gp, 13b
27:               jal          ra, 12b
28:               jal          t1, 22b
29:               jal          t3, 11b
30:               xori         sp, s2, 1412
sub_2_26:         jal          t1, 7f
0:                jal          tp, 14f
1:                jal          t0, 11f
2:                jal          ra, 12f
3:                jal          ra, 17f
4:                jal          ra, 21f
5:                jal          ra, 20f
6:                jal          ra, 1b
7:                jal          ra, 19f
8:                jal          ra, 13f
9:                jal          t1, 4b
10:               jal          a2, 2b
11:               jal          gp, 15f
12:               jal          s6, 0b
13:               jal          t1, 23f
14:               jal          s8, 9b
15:               jal          t1, 18f
16:               jal          ra, 10b
17:               jal          ra, 8b
18:               jal          tp, 22f
19:               jal          ra, 16b
20:               jal          ra, 3b
21:               jal          t1, 6b
22:               jal          s0, 5b
23:               sll          a5, a2, s9
sub_2_22:         jal          t1, 5f
0:                jal          ra, 9f
1:                jal          a7, 3f
2:                jal          ra, 18f
3:                jal          t0, 17f
4:                jal          tp, 21f
5:                jal          t4, 2b
6:                jal          s5, 22f
7:                jal          ra, 4b
8:                jal          a0, 16f
9:                jal          ra, 12f
10:               jal          ra, 14f
11:               jal          ra, 20f
12:               jal          ra, 1b
13:               jal          ra, 10b
14:               jal          ra, 11b
15:               jal          ra, 0b
16:               jal          t0, 23f
17:               jal          t5, 13b
18:               jal          ra, 15b
19:               jal          t4, 8b
20:               jal          ra, 6b
21:               jal          ra, 19b
22:               jal          t0, 7b
23:               srli         a5, s10, 11
sub_2_3:          jal          t1, 20f
0:                jal          ra, 23f
1:                jal          ra, 17f
2:                jal          t4, 21f
3:                jal          ra, 8f
4:                jal          t1, 5f
5:                jal          ra, 10f
6:                jal          ra, 3b
7:                jal          ra, 14f
8:                jal          a6, 15f
9:                jal          a0, 11f
10:               jal          ra, 2b
11:               jal          t1, 6b
12:               jal          s0, 7b
13:               jal          ra, 12b
14:               jal          ra, 9b
15:               jal          ra, 24f
16:               jal          ra, 13b
17:               jal          t1, 22f
18:               jal          ra, 25f
19:               jal          ra, 16b
20:               jal          t1, 0b
21:               jal          ra, 1b
22:               jal          ra, 18b
23:               jal          t1, 19b
24:               jal          ra, 4b
25:               sra          t0, s1, s8
                  sll          a6, tp, a1
                  bge          t6, tp, 6f
                  blt          a4, a3, 4f
                  or           t1, a3, t1
4:                lui          t6, 1022743
                  addi         ra, s0, -1698
6:                slli         a5, a1, 25
                  slli         a6, s7, 5
                  sltu         t0, tp, a6
                  and          t4, a0, a2
                  bge          a5, s6, 26f
                  nop
                  blt          s8, s9, 16f
                  slli         s8, ra, 4
                  sub          s10, zero, s11
                  addi         s11, s2, -1752
16:               sltiu        a5, s10, 625
                  sltiu        ra, s6, 1946
                  nop
                  xori         sp, s9, 239
                  add          s6, s1, t2
                  ori          t3, t0, 566
                  auipc        ra, 699998
                  bne          s3, t2, 34f
                  bge          s7, s0, 29f
                  sub          s10, a3, gp
26:               xor          s8, s11, s7
                  slli         zero, a7, 28
                  auipc        s10, 687073
29:               srl          t5, sp, a7
                  sltu         s7, a7, t5
                  slt          t5, a4, zero
                  bge          tp, s5, 52f
                  slti         zero, ra, 941
34:               sll          t1, a3, t5
                  sub          sp, s2, a4
                  slli         gp, a0, 17
                  sltiu        s6, s8, 482
                  slti         a7, a6, -731
                  bne          ra, s11, 49f
                  sltiu        gp, a1, 1512
                  sra          a0, s8, a5
                  xor          a6, a0, a7
                  sltiu        t0, t2, -435
                  sltiu        s0, t6, 40
                  andi         s5, s10, -765
                  xor          t5, gp, sp
                  srl          s7, a6, a6
                  andi         s6, a2, -1770
49:               or           a5, a2, sp
                  bne          a3, a1, 54f
                  blt          s4, sp, 68f
52:               srli         t5, ra, 23
                  ori          a7, s5, 916
54:               bne          s5, ra, 58f
                  sltu         t1, zero, s11
                  beq          tp, ra, 70f
                  srli         sp, s5, 27
58:               nop
                  auipc        sp, 259207
                  bne          s2, t2, 72f
                  slli         zero, s0, 25
                  bgeu         gp, s7, 74f
                  bne          gp, a2, 80f
                  blt          t0, s9, 83f
                  andi         a6, tp, -1793
                  add          t6, s7, s0
                  xori         zero, tp, -126
68:               sltu         s9, s1, t6
                  sub          t1, zero, s11
70:               xori         ra, a5, 608
                  or           s7, a0, s3
72:               slli         t0, t1, 21
                  sra          t6, a5, t0
74:               xor          tp, a3, zero
                  ori          s11, a5, -962
                  srai         s0, a1, 26
                  sub          a3, gp, s4
                  bltu         t0, t2, 86f
                  sltu         s5, s1, s3
80:               bgeu         s5, a7, 97f
                  srl          s7, s8, s8
                  srl          s9, a6, a5
83:               bgeu         ra, a1, 87f
                  sltiu        sp, a0, -1697
                  xori         a5, a0, 1951
86:               blt          t5, t6, 94f
87:               slli         a1, s0, 25
                  auipc        gp, 496999
                  srl          tp, s5, a2
                  sra          s3, tp, t3
                  xor          s8, t1, s9
                  sra          a7, s8, t5
                  add          s0, s3, a3
94:               beq          s2, s7, 100f
                  bltu         a4, a3, 104f
                  xor          t3, s5, s4
97:               nop
                  srl          t0, a2, s0
                  slt          a2, s8, s0
100:              slt          t3, s5, s0
                  lui          zero, 893013
                  nop
                  srli         s5, ra, 30
104:              slli         sp, s4, 8
                  srai         tp, zero, 1
                  slt          a2, t4, a4
                  slti         a4, a4, 772
                  add          s6, s7, s4
                  bgeu         s3, s9, 119f
                  srl          s5, s4, s7
                  slti         a5, a1, -319
                  bgeu         s11, s10, 122f
                  bne          s1, s11, 131f
                  bge          a5, t2, 127f
                  slt          t3, s1, a2
                  sra          zero, s5, zero
                  xori         t5, a7, 419
                  slti         s5, t1, -1529
119:              add          t1, s6, s2
                  slt          zero, a2, s11
                  beq          a7, t4, 125f
122:              bne          t5, tp, 124f
                  slli         ra, gp, 18
124:              and          ra, zero, s5
125:              sra          a6, s11, a6
                  add          s3, ra, t0
127:              sltu         t4, tp, a2
                  add          ra, s10, tp
                  beq          t2, a5, 142f
                  xor          s3, s4, t2
131:              or           zero, s8, s3
                  beq          ra, sp, 134f
                  slti         a7, ra, 225
134:              and          s7, t6, t4
                  blt          a7, s9, 148f
                  sra          a2, sp, s0
                  addi         t3, zero, 1139
                  bne          a7, s10, 152f
                  xor          a1, s8, a5
                  blt          a4, a6, 142f
                  or           s5, zero, a4
142:              slti         t4, s4, 1396
                  and          s10, s8, t4
                  srai         s9, s1, 23
                  andi         s9, a1, -166
                  nop
                  lui          t3, 228186
148:              nop
                  blt          a3, zero, 157f
                  nop
                  slt          a7, t5, s4
152:              xori         a4, t1, 1607
                  nop
                  srli         s9, t6, 19
                  addi         gp, s3, -736
                  bge          a7, t4, 173f
157:              andi         s6, t5, 291
                  bltu         a1, s10, 162f
                  ori          t6, s3, -427
                  or           t0, s3, gp
                  bgeu         s9, s6, 178f
162:              srl          s7, t4, a7
                  bge          s11, s1, 180f
                  srai         ra, a0, 25
                  sll          t3, tp, t3
                  slt          s9, s0, t0
                  auipc        tp, 754925
                  slti         tp, a1, -996
                  addi         s5, a7, 789
                  andi         ra, s8, 683
                  bltu         t2, s3, 189f
                  or           t4, s7, s4
173:              bne          gp, s0, 175f
                  ori          s5, ra, 1071
175:              and          t2, t4, gp
                  lui          s3, 445464
                  sll          a0, t6, s0
178:              slt          s5, a4, s6
                  blt          t6, zero, 185f
180:              slt          s7, a2, s3
                  sltu         s8, t3, a2
                  blt          t0, s1, 187f
                  sltu         a0, a7, t2
                  sub          a3, s0, a5
185:              bgeu         a2, s7, 205f
                  and          gp, a2, s0
187:              xori         a0, a1, -1896
                  blt          t0, s6, 197f
189:              addi         t4, a0, -1079
                  sra          a1, t6, s9
                  slli         gp, s0, 23
                  slt          s10, s3, t2
                  andi         a0, s9, 1306
                  ori          zero, s5, 1743
                  add          s8, a1, t2
                  sra          a1, a1, s8
197:              slli         a3, s6, 9
                  andi         a0, s10, 625
                  slt          t0, s5, zero
                  sll          a6, s6, t1
                  bltu         a1, t6, 206f
                  nop
                  bltu         s7, sp, 211f
                  sra          s5, t6, s2
205:              beq          s2, a6, 215f
206:              ori          t0, s3, 959
                  addi         zero, a3, -1258
                  sltu         t5, ra, s2
                  andi         t5, t6, -368
                  slt          s6, s6, s0
211:              bltu         a5, a7, 223f
                  or           t6, gp, tp
                  slt          t1, s7, tp
                  sltiu        s6, s6, -869
215:              xor          a1, t2, a5
                  auipc        a0, 29335
                  xori         a4, a4, -1339
                  xor          ra, t2, s9
                  ori          s10, zero, -1012
                  slti         s8, t1, -519
                  andi         a3, a7, -35
                  sll          t1, gp, s10
223:              srli         a4, s0, 13
                  or           s6, gp, a2
                  bne          a1, t0, 229f
                  slli         sp, s0, 4
                  blt          zero, s3, 238f
                  and          s0, a5, ra
229:              srl          a3, a1, gp
                  sub          s7, a3, s9
                  and          t6, s5, tp
                  add          t5, t3, s6
                  bltu         a7, a3, 249f
                  srli         a1, s11, 22
                  bltu         s2, a4, 239f
                  sltiu        s7, tp, 0
                  sra          s10, s1, gp
238:              bgeu         s9, s2, 240f
239:              slt          tp, s10, gp
240:              auipc        s11, 953778
                  sll          a7, t2, zero
                  xori         t2, gp, 565
                  sra          tp, s11, t2
                  slti         t1, a3, -395
                  bltu         t4, tp, 255f
                  addi         a5, s4, 255
                  sub          sp, s10, s5
                  or           a6, a3, s4
249:              nop
                  sub          zero, a6, zero
                  xor          tp, s3, ra
                  andi         t3, zero, 1636
                  sub          a2, s9, gp
                  sra          s5, s8, a4
sub_2_25:         jal          t1, 12f
0:                jal          t6, 23f
1:                jal          s3, 27f
2:                jal          t1, 20f
3:                jal          ra, 16f
4:                jal          t6, 3b
5:                jal          ra, 24f
6:                jal          t1, 7f
7:                jal          ra, 11f
8:                jal          t1, 9f
9:                jal          t1, 0b
10:               jal          t1, 6b
11:               jal          t1, 18f
12:               jal          ra, 10b
13:               jal          ra, 19f
14:               jal          t1, 4b
15:               jal          s0, 5b
16:               jal          t1, 21f
17:               jal          ra, 26f
18:               jal          s7, 22f
19:               jal          ra, 25f
20:               jal          ra, 13b
21:               jal          sp, 17b
22:               jal          ra, 14b
23:               jal          ra, 1b
24:               jal          ra, 2b
25:               jal          s9, 8b
26:               jal          ra, 15b
27:               or           a7, s8, s0
255:              srai         a3, s8, 18
                  sub          sp, sp, s10
                  slt          t3, a4, sp
                  xor          a6, ra, s10
                  bltu         a5, a5, 263f
                  lui          s10, 225752
                  add          a4, s2, s5
                  slli         t4, s11, 30
263:              andi         t4, zero, -1636
                  srl          a6, gp, s5
                  addi         t2, a3, -680
                  slt          s7, ra, a0
                  ori          s8, a6, 1976
                  sltu         s0, a2, gp
                  bgeu         s7, a4, 281f
                  xori         a3, s4, -704
                  srai         t1, t2, 15
                  sra          s0, a7, ra
                  srai         a0, t6, 1
                  xor          s7, a5, a3
                  auipc        s10, 105373
                  beq          s1, s8, 280f
                  bne          t2, t4, 290f
                  sra          s8, s9, a7
                  srli         sp, a4, 11
280:              sra          a1, zero, s8
281:              sltiu        s11, t2, -847
                  bgeu         s9, tp, 292f
                  addi         s11, t0, 559
                  beq          s0, s7, 303f
                  lui          a0, 551571
                  slt          sp, s10, s8
                  srai         s6, s2, 0
                  lui          t1, 400545
                  srl          t5, s11, s8
290:              sltu         s8, a5, a6
                  bge          s8, t6, 295f
292:              xori         a1, a0, 964
                  nop
                  sltu         s5, t0, s6
295:              add          t4, t5, s8
                  andi         a0, s3, -1813
                  slti         s6, a5, -14
                  sll          tp, s2, zero
                  srl          a6, t5, s0
                  andi         tp, s3, 524
                  xori         s7, tp, -1005
                  beq          a3, a0, 310f
303:              srai         t3, t3, 18
                  bge          a2, a4, 306f
                  ori          a4, gp, 288
306:              lui          s3, 896027
                  xori         a2, a7, 1329
                  bgeu         sp, s3, 325f
                  sub          s11, s9, a4
310:              slti         t5, sp, -1801
                  ori          a4, t1, 946
                  ori          t1, t6, 203
                  sltiu        t1, s2, 456
                  auipc        a6, 177268
                  sub          t6, a1, s9
                  blt          s0, s6, 322f
                  sub          s3, a0, tp
                  beq          s2, s11, 322f
                  bgeu         s10, s2, 331f
                  addi         ra, t5, 101
                  ori          tp, a5, 711
322:              and          t2, zero, s4
                  addi         t2, gp, 265
                  srai         t4, s7, 27
325:              sltiu        s5, a7, -1585
                  sub          s0, s0, a4
                  sub          t3, a7, s1
                  bgeu         a7, a4, 332f
                  andi         a6, a2, -1816
                  bge          s11, a1, 340f
331:              slli         s3, sp, 29
332:              or           t0, s2, a0
                  bltu         s3, s5, 337f
                  and          t2, s8, s3
                  slli         s3, a0, 11
                  andi         s9, s1, -1274
337:              srli         a3, t1, 17
                  xori         s8, s4, -211
                  blt          a6, t3, 357f
340:              bge          s7, s8, 349f
                  srli         a4, a1, 16
                  andi         zero, s11, -1924
                  lui          s7, 411081
                  beq          t1, t4, 354f
                  andi         s6, s3, -1096
                  blt          sp, a3, 356f
                  lui          a0, 715256
                  or           gp, a7, t0
349:              or           s9, s5, s10
                  sll          t2, zero, s6
                  bne          s10, zero, 364f
                  sll          sp, t1, s3
                  srai         t1, a3, 17
354:              ori          t5, s11, 46
                  xor          t4, a6, s4
356:              sub          a6, a4, t1
357:              lui          a6, 761327
                  sra          s6, a7, s8
                  andi         a3, a6, 136
                  ori          s7, sp, -1319
                  andi         s0, s3, 1446
                  ori          s0, t5, 557
                  nop
364:              sltiu        s0, s1, 1851
                  sra          s11, s1, s3
                  srli         s3, s1, 16
                  sll          t1, a3, zero
                  add          a3, ra, a6
                  add          a4, ra, ra
                  xori         s0, t2, -546
                  beq          s1, t4, 376f
                  addi         t1, s8, 1706
                  and          s11, s7, t4
                  blt          sp, t3, 376f
                  bgeu         a6, s1, 377f
376:              andi         a6, a7, 504
377:              lui          a0, 428938
                  and          t1, a5, zero
                  beq          s9, s8, 387f
                  xori         a4, t4, 1765
                  srai         s9, t1, 13
                  slti         s3, s5, -432
                  addi         s5, t0, -864
                  addi         s3, s2, 1177
                  ori          t1, a6, 619
                  xor          ra, a5, s10
387:              beq          a6, s1, 407f
                  nop
                  beq          s11, s3, 394f
                  slli         a7, t1, 16
                  sra          ra, a3, s11
                  xor          s7, gp, s5
                  sltiu        t0, s11, -470
394:              xor          a1, tp, s9
                  andi         tp, a1, -924
                  blt          ra, gp, 408f
                  auipc        t3, 567366
                  slli         t4, s0, 19
                  slli         ra, s6, 28
                  bne          a1, t2, 414f
                  ori          t1, a3, 808
                  sltu         t4, a4, s4
                  xor          a7, t1, t6
                  addi         a7, a5, 74
                  nop
                  addi         s5, zero, 1483
407:              bgeu         s5, a0, 426f
408:              xori         gp, t3, 490
                  add          t2, s11, s9
                  sltu         s9, s7, s0
                  or           s3, gp, tp
                  xori         s3, s1, 1357
                  andi         sp, tp, 540
414:              srl          s5, zero, t2
                  bgeu         tp, zero, 432f
                  bgeu         gp, tp, 432f
                  slt          a3, tp, s10
                  sltiu        a4, t1, -1745
                  and          t5, a2, a0
                  xori         sp, s0, -1731
                  andi         s5, gp, -741
                  xori         s8, t3, 130
                  and          a5, s1, t2
                  srai         a4, s9, 20
                  srli         s10, t0, 15
426:              bge          s0, s6, 439f
                  lui          s0, 185861
                  slli         a3, sp, 4
                  slt          a3, sp, a3
                  add          t3, t0, s0
                  bge          s4, t0, 442f
432:              bne          ra, s5, 449f
                  sub          s3, s1, s7
                  andi         a3, a7, 1117
                  bltu         a6, sp, 439f
                  bgeu         t5, a0, 449f
                  slli         s11, t5, 17
                  bgeu         a6, s10, 440f
439:              srai         a7, tp, 26
440:              sltu         a7, s5, s10
                  bne          s1, s9, 459f
442:              bgeu         a0, s1, 461f
                  sub          a4, t2, a5
                  addi         sp, t2, -827
                  bge          t4, t4, 458f
                  add          a5, s3, s10
                  or           t4, s0, a2
                  sra          a0, a5, s6
449:              srl          tp, s6, t2
                  auipc        a1, 301946
                  sltu         t4, s5, s11
                  bge          s0, a0, 462f
                  sub          s11, s10, a5
                  and          s7, s4, t3
                  srl          sp, s11, s10
                  add          a7, a2, a7
                  lui          tp, 905194
458:              ori          s9, t1, -1639
459:              auipc        t2, 494557
                  lui          a0, 714648
461:              nop
462:              nop
                  sltu         gp, s6, t2
                  sub          ra, gp, a5
                  blt          a2, tp, 479f
                  andi         s6, t5, -543
                  bltu         s3, sp, 471f
                  bne          zero, a1, 488f
                  addi         t4, a5, 846
                  beq          a5, s10, 476f
471:              bltu         ra, s1, 488f
                  ori          s7, s0, 668
                  bltu         s0, a5, 485f
                  sll          s5, a3, t2
                  or           s0, tp, s2
476:              sltu         s0, t2, gp
                  sltu         t4, zero, a2
                  slt          sp, t4, a1
479:              sll          ra, a0, ra
                  and          t6, t3, s0
                  bltu         t3, s3, 485f
                  auipc        zero, 1033524
                  or           a4, a3, s8
                  nop
485:              addi         s0, a6, 618
                  srai         a5, a5, 23
                  bge          s1, s1, 496f
488:              sltu         t6, s6, a4
                  addi         a6, t6, -176
                  addi         s0, t3, 543
                  slli         s9, gp, 29
                  xor          t4, zero, s0
                  and          s8, t1, s9
                  add          s6, s1, a1
                  bltu         a2, s9, 512f
496:              lui          t0, 942697
                  sll          s8, a0, s4
                  srl          t1, s5, a6
                  sub          s5, s10, s10
                  ori          s11, s1, 1983
                  andi         t0, a6, 204
                  srl          s7, a5, a1
                  bne          t5, s6, 507f
                  slt          gp, sp, a5
                  or           a1, a1, a1
                  sub          s5, a6, s3
507:              lui          s5, 288805
                  or           t1, s10, s4
                  add          zero, t5, s8
                  andi         t1, t3, -262
                  or           a5, t5, t2
512:              bltu         sp, s7, 522f
                  beq          s5, t5, 521f
                  sltu         a1, ra, zero
                  sll          t2, a1, tp
                  bltu         s6, t5, 521f
                  sltiu        t1, a6, -158
                  andi         ra, a6, 1821
                  sub          t4, tp, s10
                  bge          a3, s4, 525f
521:              srli         s6, s5, 2
522:              andi         t6, a4, 1930
                  srli         a2, a3, 14
                  slti         s9, s0, -378
525:              and          s6, t3, ra
                  slti         zero, a0, -1757
                  bgeu         a0, t4, 531f
                  auipc        t3, 892736
                  add          a2, s7, tp
                  sltu         s10, s7, t2
531:              bgeu         t1, a6, 543f
                  srli         t0, gp, 26
                  lui          s3, 880197
                  blt          a3, sp, 536f
                  sra          t4, s7, s5
536:              bltu         ra, tp, 540f
                  bgeu         s4, tp, 547f
                  blt          zero, t5, 554f
                  xori         t1, s5, -1473
540:              bne          t0, t3, 542f
                  sub          s11, s11, a3
542:              sll          tp, a3, s9
543:              slli         s10, t3, 2
                  and          t4, a4, zero
                  andi         ra, s11, -1183
                  nop
547:              xori         s6, s3, -299
                  srl          s5, a0, gp
                  xor          a3, s3, a0
                  slt          a2, s6, a6
                  bge          zero, t1, 559f
                  xor          s11, s1, a1
                  bge          s3, a4, 564f
554:              addi         s11, t3, 1515
                  add          s8, s4, t6
                  srl          t3, t1, s0
                  lui          t3, 633715
                  lui          a1, 535828
559:              sltu         s3, a6, a0
                  lui          ra, 951544
                  sub          t0, a3, t0
                  sra          s8, s0, t1
                  blt          a3, t2, 580f
564:              blt          s6, a4, 577f
                  nop
                  auipc        s9, 748031
                  sltu         s11, a7, ra
                  xori         a4, a7, -961
                  sub          a0, s11, ra
                  sltiu        s6, s1, 1741
                  slti         s3, t5, 367
                  ori          t3, a3, -352
                  sub          a4, a2, t1
                  bne          s7, s7, 587f
                  bge          a6, t3, 581f
                  sra          a5, s3, s8
577:              lui          s10, 964819
                  sll          zero, a5, s7
                  bge          s7, t4, 596f
580:              add          a0, s2, s5
581:              beq          a0, s1, 598f
                  and          s10, a0, s3
                  blt          t1, ra, 588f
                  add          s6, t3, t5
                  sub          t4, s7, a3
                  bne          tp, s6, 590f
587:              bge          t5, s9, 592f
588:              lui          s10, 574958
                  addi         zero, t5, -99
590:              bge          t5, s0, 606f
                  slti         t3, s6, -101
592:              ori          t5, a0, 1039
                  nop
                  ori          a2, t0, 997
                  srli         a3, s10, 31
596:              bne          a0, t1, 605f
                  andi         gp, s1, 1247
598:              nop
                  sll          s3, t4, s10
                  bgeu         s5, s9, 612f
                  srli         a7, s3, 16
                  bgeu         tp, s0, 619f
                  nop
                  sll          t6, a0, s11
605:              lui          gp, 825247
606:              sub          s0, t6, s7
                  auipc        t5, 735949
                  sltu         s5, s8, a7
                  and          t2, zero, s3
                  and          a7, s1, s4
                  or           t5, a2, t5
612:              bltu         sp, tp, 622f
                  ori          s11, s8, -918
                  sltiu        t2, tp, 1681
                  ori          ra, s4, 311
                  bgeu         s0, a6, 627f
                  beq          s5, s10, 621f
                  slti         s11, s4, -1857
619:              auipc        t1, 502298
                  bltu         s9, a7, 640f
621:              sll          a6, t4, s10
622:              blt          a0, a5, 632f
                  srai         s6, s11, 5
                  addi         t1, gp, -2036
                  slti         s7, s10, 309
                  andi         t1, a4, -1424
627:              slti         tp, s0, 661
                  srli         sp, s11, 13
                  slti         t2, t2, -1535
                  srli         s7, s9, 12
                  lui          a7, 310344
632:              sub          s8, s0, s8
                  xori         ra, a4, 1405
                  srl          t1, s0, s1
                  srai         s0, s7, 11
                  sll          a2, t2, s9
                  sub          s8, a0, a2
                  bge          a0, a1, 657f
                  srli         a5, s2, 13
640:              bge          t5, s2, 642f
                  lui          t6, 120371
642:              bltu         t3, s1, 650f
                  addi         a1, s2, -1842
                  bgeu         s0, t1, 654f
                  slt          a1, t2, t1
                  nop
                  add          s0, a4, a5
                  nop
                  srai         a6, s4, 18
650:              ori          t2, s4, 1522
                  srai         a1, a2, 7
                  sra          tp, t2, a6
                  sub          a1, s2, a2
654:              sra          t4, a7, tp
                  xor          a2, t0, s6
                  sltu         s5, a0, a6
657:              bltu         a4, s7, 659f
                  sltiu        a3, a7, 302
659:              nop
                  addi         t5, t4, 326
                  sltiu        s8, s0, -1803
                  sltiu        s11, t6, -2000
                  srai         gp, t6, 31
                  andi         a1, t2, -1631
                  sltu         s5, a4, s8
                  auipc        s11, 169177
                  or           sp, a2, a5
                  sltu         t4, t4, a5
                  and          t1, a4, ra
                  xori         a6, gp, 38
                  srli         t6, zero, 17
                  and          zero, a4, t1
                  sltu         s8, s5, t1
                  bge          s2, t1, 678f
                  bne          zero, a2, 687f
                  xor          t0, s0, sp
                  bgeu         s10, a7, 681f
678:              and          s3, a6, s1
                  bne          a0, s4, 681f
                  sub          t6, t2, sp
681:              xori         tp, s5, 1140
                  slt          zero, sp, a7
                  beq          s2, t0, 691f
                  sltu         a5, ra, t3
                  srai         s7, t1, 4
                  sub          a7, s2, t5
687:              srli         s0, s11, 10
                  sra          a5, s1, s9
                  ori          s11, s2, -1286
                  addi         t1, t0, 1836
                  nop
                  ori          t1, s10, 1477
                  la           s5, sub_4
                  nop
                  addi         s5, s5, -774
                  sll          s6, sp, a4
                  lui          s8, 656533
                  sltu         s9, sp, a5
                  lui          a4, 1021071
sub_2_j5:         jalr         t1, s5, 775 #jump sub_2 -> sub_4
                  bne          s9, t3, 702f
                  sub          sp, sp, s1
                  sub          a4, sp, a5
691:              slt          t6, s6, s0
                  slti         t5, s0, -1780
                  add          t4, a6, a7
                  add          ra, s7, tp
                  xor          s7, zero, s8
                  bltu         a6, a6, 714f
                  ori          a0, s10, 591
                  blt          tp, a3, 702f
                  xori         sp, t1, 839
                  auipc        zero, 564522
                  bne          s2, a5, 718f
702:              bgeu         gp, s7, 719f
                  ori          s9, zero, -1912
                  sub          t2, s6, t1
                  bgeu         a4, sp, 713f
                  slli         a2, t1, 17
                  or           t5, s0, a5
                  andi         s11, ra, 835
                  sub          zero, tp, a0
                  srli         s9, t1, 21
                  sra          t6, s10, a3
                  nop
713:              xor          t2, t3, s10
714:              sll          s3, s0, t1
                  xor          s11, t6, a3
                  blt          a3, s3, 727f
                  blt          a6, t2, 729f
718:              beq          a5, t1, 728f
719:              ori          s9, a6, -1697
                  bgeu         a6, tp, 726f
                  andi         s0, s4, 1041
                  sltu         s9, s3, a3
                  sub          s3, t1, a0
                  sltiu        a1, tp, 1713
                  srl          a5, a1, a2
726:              or           s10, s0, gp
727:              slli         a0, s3, 0
728:              slt          gp, t6, ra
729:              srl          t4, s1, s11
                  ori          a3, s8, -1758
                  bge          t3, s11, 743f
                  nop
                  slti         t2, s11, -1303
                  auipc        s5, 889486
                  nop
                  sra          gp, s6, t4
                  auipc        t5, 439055
                  sll          s3, a3, ra
                  xori         ra, sp, -1017
                  sll          tp, s10, tp
                  bne          s0, t0, 745f
                  srl          a5, sp, t2
743:              and          a5, s4, a7
                  addi         s8, s10, -1431
745:              beq          a4, t1, 749f
                  blt          s10, gp, 762f
                  blt          t5, ra, 751f
                  xor          s11, a4, t2
749:              srai         s11, s0, 11
                  bltu         s8, t1, 752f
751:              srli         t1, t4, 23
752:              bne          t0, s0, 771f
                  addi         a2, t4, -860
                  srai         a4, gp, 20
                  sltu         t2, t4, t3
                  addi         ra, t5, 585
                  add          s5, a3, zero
                  ori          s0, tp, -1450
                  sll          s7, t1, a2
                  srai         s9, a2, 21
                  addi         a0, t2, -1892
762:              bgeu         s2, a3, 766f
                  bge          t0, a4, 780f
                  lui          s5, 86526
                  andi         s9, a1, -1530
766:              lui          s7, 943780
                  addi         s6, s1, 1495
                  sra          a7, s0, t4
                  lui          t3, 553294
                  bltu         s8, s6, 774f
771:              bne          s11, s8, 773f
                  auipc        s3, 268330
773:              sub          s10, a6, s2
774:              nop
                  blt          t5, s0, 789f
                  sltu         tp, a1, a1
                  add          a7, s8, s10
                  slli         s0, a6, 2
                  bne          ra, t0, 788f
780:              xori         a3, s9, -800
                  addi         sp, a2, 1371
                  bne          t0, s9, 784f
                  addi         a5, a5, 1385
784:              andi         sp, s9, 339
                  xor          s3, tp, t2
                  srai         a3, a5, 26
                  slti         ra, sp, 703
788:              blt          a7, a1, 793f
789:              lui          t0, 656257
                  sltu         a3, s11, tp
                  sltiu        a4, s8, -1700
                  or           a7, s10, a6
793:              sll          t0, s4, ra
                  ori          s6, a3, 1668
                  sub          ra, a4, a5
                  sll          t1, s6, a3
                  or           t0, s8, sp
                  sra          t1, t3, t0
                  blt          a7, a1, 817f
                  add          s6, t0, gp
                  and          t1, a3, a7
                  srli         t3, sp, 15
                  srli         a5, a5, 21
                  bge          a6, s11, 824f
                  sltiu        a7, a2, 581
                  blt          t2, a0, 819f
                  slli         tp, tp, 14
                  srl          s11, t4, s11
                  srli         a1, a4, 22
                  lui          gp, 784667
                  sltu         t3, zero, a3
                  lui          t4, 416369
                  or           zero, a1, a7
                  bne          a1, zero, 827f
                  xor          a5, s11, t4
                  auipc        s10, 673194
817:              bge          s8, t1, 827f
                  beq          s0, zero, 828f
819:              srl          s3, tp, t2
                  and          s5, s2, t0
                  andi         t1, s11, -720
                  lui          a6, 183857
                  and          s11, t6, s7
824:              nop
                  xori         a7, tp, -1275
                  add          a4, t0, a0
827:              xor          s6, t1, t6
828:              bgeu         s11, s8, 833f
                  addi         t6, a0, 509
                  auipc        a3, 770122
                  andi         t2, a6, -1751
                  srli         s11, s6, 25
833:              blt          s7, ra, 841f
                  sub          s11, t1, t2
                  addi         a5, a0, 197
                  sltu         s6, sp, t3
                  ori          tp, a7, -289
                  add          a1, ra, a1
                  srai         tp, s5, 15
                  nop
841:              bgeu         a0, a7, 854f
                  sltiu        t4, s10, 1228
                  bgeu         gp, s3, 852f
                  and          s5, a0, a2
                  blt          s8, s7, 856f
                  lui          t2, 323841
sub_2_16:         jal          t1, 12f
0:                jal          t1, 14f
1:                jal          t1, 0b
2:                jal          t0, 19f
3:                jal          t1, 1b
4:                jal          ra, 17f
5:                jal          ra, 15f
6:                jal          t6, 18f
7:                jal          ra, 11f
8:                jal          s7, 21f
9:                jal          a1, 10f
10:               jal          t1, 5b
11:               jal          t1, 22f
12:               jal          ra, 9b
13:               jal          gp, 8b
14:               jal          ra, 13b
15:               jal          ra, 3b
16:               jal          t0, 23f
17:               jal          ra, 16b
18:               jal          a0, 20f
19:               jal          s10, 4b
20:               jal          ra, 2b
21:               jal          s11, 7b
22:               jal          t1, 24f
23:               jal          ra, 26f
24:               jal          t2, 25f
25:               jal          ra, 6b
26:               sll          t2, s5, tp
                  or           t3, t1, s0
                  srli         t0, s11, 12
                  xor          a1, ra, s0
                  and          a0, a1, s3
                  addi         s3, tp, -1238
852:              and          s11, s11, sp
                  ori          t5, s2, 606
854:              ori          a6, t4, -667
                  sra          t4, s3, t4
856:              addi         s9, t3, -959
                  srli         s6, a2, 17
                  srli         a7, zero, 5
                  bltu         t2, s2, 879f
                  sltu         s0, s11, t1
                  bgeu         t5, sp, 865f
                  ori          s6, t1, 1731
                  nop
                  bge          t4, s2, 870f
                  ori          tp, t2, 1231
                  sub          a1, s2, t1
                  slt          a5, gp, a3
                  or           s9, a2, a3
                  nop
                  add          s7, s5, t6
                  bge          t4, a4, sub_2_j6 #branch to jump instr
                  srl          s9, s8, ra
                  and          a5, sp, t5
sub_2_j6:         jal          t1, sub_4 #jump sub_2 -> sub_4
865:              bltu         s4, t5, 867f
                  srli         s10, a6, 21
867:              slt          t6, a4, zero
                  xori         s5, a3, -1667
                  srli         sp, s11, 28
870:              bltu         t2, gp, 887f
                  bltu         s10, a7, 884f
                  slti         zero, ra, -1276
                  add          zero, tp, s4
                  slti         zero, tp, 361
                  srai         s7, s3, 10
                  addi         s10, a5, -761
                  srl          a1, s2, s1
                  ori          a5, s7, -99
879:              srai         a6, s7, 5
                  andi         t1, t3, -1065
                  bgeu         s5, a2, 893f
                  bltu         t6, s6, 886f
                  auipc        s10, 1012718
884:              ori          sp, t6, 1153
                  xor          t2, s4, s8
886:              xor          t3, s8, ra
887:              bge          t3, t1, 892f
                  nop
                  or           t1, s1, s10
                  bltu         s0, zero, 906f
                  ori          s6, s1, 1638
892:              srli         a6, a4, 27
893:              xor          a0, a2, a7
                  auipc        a1, 965731
                  sra          t0, t3, s5
                  or           a7, t6, s2
                  and          zero, a0, tp
                  bltu         a2, t1, 900f
                  add          ra, s0, t5
900:              addi         t0, gp, -333
                  beq          t0, a4, 918f
                  auipc        a5, 447377
                  add          t0, t1, s0
                  addi         gp, t6, -576
                  and          t2, t3, gp
906:              slti         a5, t1, -1477
                  auipc        t5, 775991
                  sltu         t6, s7, sp
                  bge          a7, t3, 923f
                  blt          t6, t0, 914f
                  andi         zero, a6, 577
sub_2_14:         jal          t1, 2f
0:                jal          s5, 12f
1:                jal          s9, 9f
2:                jal          ra, 6f
3:                jal          t6, 7f
4:                jal          ra, 3b
5:                jal          t1, 13f
6:                jal          a4, 10f
7:                jal          a5, 8f
8:                jal          tp, 14f
9:                jal          sp, 4b
10:               jal          s10, 5b
11:               jal          ra, 1b
12:               jal          s0, 11b
13:               jal          s8, 0b
14:               sll          s10, s2, a7
                  nop
                  bgeu         tp, s1, 921f
914:              ori          a6, s0, -607
                  sltiu        s11, s1, -1030
                  or           a5, t6, s1
                  ori          t6, gp, 1786
918:              sll          a1, s3, s5
                  slt          s11, s9, s2
                  add          a5, a7, s3
921:              sll          t2, a6, s6
                  add          zero, s6, s0
923:              slli         t5, t0, 11
                  srl          a7, s11, s6
                  bltu         s8, gp, 937f
                  sra          t0, a1, gp
                  bge          t5, s7, 944f
                  slli         s0, gp, 1
                  nop
                  or           sp, t3, s6
                  bge          t4, a0, 936f
                  ori          t3, s6, -1440
                  slli         t4, t1, 31
                  and          t5, a5, t2
                  bgeu         t5, s4, 954f
936:              sub          t4, s9, a2
937:              xori         t5, s1, -1051
                  nop
                  blt          s0, t3, 949f
                  add          t3, s1, a7
                  addi         s5, s5, 80
                  nop
                  srl          s3, zero, tp
944:              xor          s5, s2, a0
                  add          a2, s4, s4
                  and          a6, s3, a0
                  xor          a1, s5, s4
                  addi         s3, a0, -579
949:              slt          a5, s4, ra
                  slti         s0, zero, 1980
                  sltu         t4, s0, t0
                  sll          s11, zero, s11
                  xori         t2, s9, 1583
954:              or           s7, s4, zero
                  bge          s4, t2, 957f
                  bltu         sp, ra, 964f
957:              or           s11, sp, a0
                  blt          t3, s1, 968f
                  beq          a6, s10, 963f
                  srl          t1, a7, s11
                  bge          ra, t6, 965f
                  slti         gp, s11, 545
sub_2_9:          jal          t1, 14f
0:                jal          t1, 21f
1:                jal          t0, 2f
2:                jal          ra, 9f
3:                jal          t2, 11f
4:                jal          ra, 10f
5:                jal          ra, 12f
6:                jal          ra, 1b
7:                jal          t1, 3b
8:                jal          s5, 16f
9:                jal          ra, 8b
10:               jal          ra, 0b
11:               jal          ra, 5b
12:               jal          a3, 13f
13:               jal          t1, 19f
14:               jal          ra, 18f
15:               jal          ra, 17f
16:               jal          ra, 15b
17:               jal          ra, 20f
18:               jal          ra, 6b
19:               jal          t1, 4b
20:               jal          ra, 7b
21:               addi         a5, t3, 97
963:              sra          ra, a6, s7
964:              slli         s9, s5, 26
965:              addi         t4, s10, 2025
                  bgeu         a3, a1, 976f
                  auipc        gp, 999003
968:              blt          s6, sp, 986f
                  srl          a0, a1, s2
                  srl          s10, s6, t5
                  bltu         a2, s7, 983f
                  sltu         zero, s10, s7
                  slli         a5, t2, 31
                  beq          s0, t4, 976f
                  andi         gp, a7, 1667
976:              and          t2, s2, tp
                  beq          t5, a7, 994f
                  srli         s3, tp, 10
                  beq          tp, s3, 999f
                  ori          a1, a7, 1020
                  bltu         s4, s9, 985f
                  blt          a0, t4, 987f
983:              bltu         s4, t2, 987f
                  srai         t1, tp, 31
985:              sub          t4, t2, t5
986:              sltiu        a5, a0, 973
987:              sra          t6, zero, t2
                  add          s11, a5, s6
                  srl          t2, s11, s3
                  bgeu         t2, t3, 996f
                  sll          s10, a0, s10
                  sltu         s10, sp, s5
                  slti         a3, ra, -1188
994:              xor          s11, s7, ra
                  slli         s6, s3, 0
996:              beq          s0, t6, 1012f
                  andi         s0, tp, -948
                  xor          s10, s8, a1
999:              slt          zero, s4, t3
                  bne          t3, a2, 1004f
                  srai         s6, t2, 7
                  slt          t0, s1, a1
                  ori          a1, s6, -1312
1004:             nop
                  andi         a2, ra, 489
                  sll          a5, ra, a2
                  slli         a3, a2, 21
                  or           sp, s10, s0
                  bge          s0, s7, 1026f
                  sltu         a5, zero, t3
                  ori          a3, s5, 196
1012:             xor          s11, s8, s0
                  andi         t6, t6, -557
                  slli         a0, t2, 9
                  andi         s10, s8, 1024
                  sll          tp, s9, zero
                  srl          t1, a4, a1
                  auipc        s8, 780855
                  bne          sp, t5, 1029f
                  srli         a5, a0, 24
                  sll          t4, a5, t6
                  sub          tp, t1, t2
                  bge          a3, s8, 1036f
                  lui          t4, 857884
                  andi         t6, s2, 775
1026:             andi         s10, s11, 981
                  slti         a2, a1, 1992
                  srli         s6, ra, 31
1029:             beq          tp, tp, 1034f
                  srl          t0, s2, s7
                  srli         a3, s1, 7
                  bgeu         tp, gp, 1042f
                  add          zero, t6, sp
1034:             slt          zero, sp, tp
                  sltiu        a5, t6, -863
1036:             sltu         t2, s6, s1
                  sltiu        s3, a1, 38
                  slt          t3, t0, a7
                  sra          s11, t6, s11
                  add          t2, ra, t3
                  lui          s0, 986048
1042:             sltiu        tp, sp, 783
                  or           a6, t4, t6
                  bltu         gp, s0, 1046f
                  sra          s10, s2, t3
1046:             bge          s8, sp, 1065f
                  slli         a1, s8, 21
                  beq          s9, a1, 1056f
                  slt          a1, gp, s8
                  bne          s9, gp, 1068f
                  addi         t6, a4, -292
                  addi         a1, a0, 1658
                  sltiu        a5, a5, -1702
                  sltu         t0, a3, s7
                  bgeu         t2, a2, 1059f
1056:             xor          s11, s8, t4
                  ori          t6, a1, 1400
                  ori          s10, s11, 1309
1059:             lui          t6, 172572
                  sub          t2, t3, a5
                  auipc        s10, 906629
                  addi         ra, a0, -1960
                  srai         s6, s1, 30
                  bge          s4, gp, 1081f
1065:             bltu         t4, gp, 1069f
                  lui          a0, 210648
                  and          s10, s1, a2
1068:             srli         gp, tp, 9
1069:             sub          a4, ra, tp
                  or           a6, t5, t3
                  addi         a1, t2, 45
                  lui          a6, 719892
                  sra          a2, tp, s5
                  srli         a6, ra, 8
                  lui          s6, 579963
                  xori         a2, a5, -1660
                  ori          a2, t3, 1569
                  addi         s5, a1, -795
                  sra          zero, t4, t2
                  sltu         a7, s9, s8
1081:             add          t0, t5, gp
                  blt          s7, a3, 1093f
                  lui          t2, 911375
                  addi         a4, s6, -388
                  slli         s9, t6, 6
                  ori          ra, gp, 311
                  nop
                  srli         a4, t2, 29
                  or           a1, t4, t0
                  or           t5, s9, sp
                  slt          s9, s11, s3
                  blt          a6, t2, 1100f
1093:             lui          a0, 558077
                  slti         t5, s4, -536
                  bltu         a4, t0, 1104f
                  sll          t1, t3, t2
                  beq          a0, s3, 1111f
                  sub          a5, s2, t5
                  srli         t6, a6, 20
1100:             sra          s3, s11, t0
                  srli         s11, s9, 19
                  srli         t4, tp, 19
                  srli         a7, t3, 26
1104:             beq          sp, s9, 1106f
                  sltu         t4, s4, ra
1106:             auipc        s7, 908580
                  lui          s5, 644533
                  nop
                  and          tp, a2, s7
                  srli         t4, t5, 0
1111:             nop
                  ori          s3, t4, 271
                  sltu         s3, a3, s9
                  slli         t3, t3, 22
                  ori          s0, s1, -2043
                  xori         s5, t4, -385
                  beq          a4, a4, 1130f
                  sltu         t2, t5, s4
                  xor          a0, s0, a3
                  blt          s7, gp, 1132f
                  add          a0, t6, t1
                  sltu         s8, s6, t5
                  andi         tp, a2, -1537
                  srli         a0, s7, 13
                  bne          a4, s4, 1135f
                  nop
                  slti         s6, s5, -100
                  and          s5, a0, a3
                  sll          a6, s0, a7
1130:             sub          s5, a5, a0
                  addi         s8, t5, -1557
1132:             bne          gp, t5, 1144f
                  srl          ra, ra, s9
                  blt          s4, a6, 1153f
1135:             srli         s7, gp, 22
                  sub          s3, t2, s11
                  srl          t2, s8, zero
                  slli         a1, t5, 4
                  xori         s6, a7, -964
                  lui          s9, 124597
                  blt          s10, a7, 1143f
                  slt          t6, a6, a6
1143:             bne          sp, t6, 1145f
1144:             bge          s4, zero, 1161f
1145:             ori          t3, s8, 908
                  srli         t2, s4, 21
                  and          s9, s2, s10
                  sll          t6, zero, s3
                  beq          a0, a1, 1153f
                  bltu         t4, a1, 1163f
                  nop
                  sll          t5, ra, a7
1153:             bge          s2, t1, 1163f
                  sltiu        s6, a4, -468
                  lui          sp, 1020300
                  slt          a2, a7, a7
                  blt          s6, t0, 1174f
                  slli         t2, s5, 4
                  slti         t1, t0, -1042
                  bltu         s1, a3, 1169f
1161:             bge          tp, a0, 1172f
                  bgeu         a6, s11, 1167f
1163:             beq          a1, s5, 1168f
                  slt          gp, a7, s6
                  nop
                  andi         s5, a5, -723
1167:             ori          sp, a5, 1894
1168:             xori         a2, s11, -595
1169:             beq          a7, t6, 1171f
                  add          t1, sp, t6
1171:             slli         tp, s0, 22
1172:             bltu         a4, ra, 1176f
                  addi         s11, a2, -609
1174:             bgeu         a0, s6, 1187f
                  slli         s9, a4, 0
1176:             xori         a3, s2, 1889
                  srl          s0, t3, s11
                  nop
                  andi         tp, a7, -858
                  srai         t4, s3, 29
                  beq          s1, s2, 1185f
                  bgeu         a5, gp, 1192f
                  sltiu        s6, s1, -1568
                  addi         sp, a5, 872
1185:             xor          a2, a0, s7
                  bltu         a6, a0, 1194f
1187:             sub          a0, s7, t6
                  and          s8, s1, t0
                  srl          t0, a4, t0
                  auipc        ra, 101480
                  slti         t2, s6, 1351
1192:             xori         t4, a4, 1575
                  andi         a5, s3, -1197
1194:             slt          t4, s1, s11
                  slti         s8, gp, -719
                  andi         a6, t4, -1963
                  sltu         tp, s1, s4
                  bgeu         s1, a0, 1202f
                  xori         s7, a5, 1850
                  sub          t0, s10, gp
                  addi         s7, s6, 955
1202:             slli         t3, tp, 22
                  srai         s3, s4, 30
                  slti         s10, t1, -2035
                  sra          a4, s1, s2
                  beq          t1, s7, 1222f
                  addi         tp, s5, -1565
                  sra          s3, t5, ra
                  nop
                  bgeu         gp, s8, 1214f
                  srl          t1, s10, t0
                  add          s5, ra, zero
                  andi         a5, t1, -1414
1214:             sltiu        tp, s8, 1821
                  auipc        t5, 237695
                  auipc        a7, 234663
                  bltu         s6, a3, 1235f
                  lui          t6, 945604
                  slt          s7, s6, a3
                  ori          s0, sp, 447
                  auipc        a2, 204866
1222:             andi         a1, s11, -236
                  and          t0, tp, sp
                  add          s7, a2, a0
                  andi         a1, s10, 1634
                  xori         s10, t5, 1303
                  blt          t0, a2, 1239f
                  bne          s7, s3, 1234f
                  bgeu         a6, t5, 1249f
                  ori          a1, t3, 1130
                  nop
                  auipc        s3, 458991
                  bltu         t2, s9, 1241f
1234:             sra          t4, zero, s0
1235:             andi         tp, t0, 2033
                  srl          s10, s11, t2
                  srl          a2, t0, s10
                  addi         a1, a2, 1862
1239:             sltiu        zero, s8, -669
                  sub          s9, sp, s5
1241:             sltu         t3, s7, t1
                  or           a6, ra, a6
                  sll          t5, s7, t3
                  and          a2, zero, s4
                  srli         gp, a2, 27
                  beq          a5, s8, 1256f
                  lui          sp, 327564
                  slti         t2, t5, -1127
1249:             or           sp, s6, s3
                  srl          t2, s6, t2
                  sltiu        t4, s7, 231
                  bne          s2, s6, 1266f
                  xor          t0, tp, t2
                  or           s6, t5, zero
                  bne          a4, sp, 1272f
1256:             bge          a1, a1, 1268f
                  lui          a1, 580728
                  srai         s10, a4, 2
                  bgeu         s3, s6, 1263f
                  srli         a0, s0, 12
                  xor          s3, s0, t6
                  srl          a7, t5, a2
1263:             slt          a7, s1, gp
                  bltu         a3, t5, 1268f
                  slti         s5, s10, -1790
1266:             nop
                  auipc        a0, 266237
1268:             beq          t5, sp, 1276f
                  sll          t1, a0, a5
                  slt          t3, s6, s5
                  addi         a6, s2, -1501
1272:             or           s8, s8, a7
                  sltu         s10, s9, a2
                  andi         s3, s9, 1235
                  srai         sp, s9, 30
1276:             sub          t4, sp, t6
                  srl          s11, s3, gp
                  bltu         s7, a4, 1294f
                  xori         a4, sp, 984
                  sub          t0, s7, s6
                  bgeu         ra, s7, 1295f
                  nop
                  bgeu         a2, sp, 1293f
                  sltiu        a3, s2, -100
                  bltu         t4, t4, 1295f
                  sltiu        tp, s3, -1644
                  srai         s11, s8, 29
                  xor          a1, sp, a3
                  bgeu         a1, s4, 1309f
                  xor          a3, tp, t4
                  lui          gp, 294119
                  andi         s11, s2, -676
1293:             xori         tp, a1, 1763
1294:             xori         s9, s6, 1849
1295:             and          s0, s4, a0
                  slli         sp, s9, 16
                  srai         s9, t0, 14
                  bge          zero, s7, 1302f
                  addi         a3, s7, 1566
                  srai         a0, a6, 17
                  addi         a1, a5, 1361
1302:             srl          s9, t4, a4
                  or           zero, a7, s8
                  bltu         ra, t4, 1306f
                  nop
1306:             sub          s7, s11, tp
                  and          t6, s9, gp
                  ori          s7, a7, 1746
1309:             sra          a5, s3, a3
                  xori         s11, s2, -2044
                  beq          t6, tp, 1315f
                  srl          zero, s3, s9
                  andi         a6, s5, -1098
                  and          s8, tp, s5
1315:             blt          gp, a6, 1321f
                  sll          tp, a5, a1
                  srl          s7, t3, s10
                  andi         s8, s8, -1592
                  srl          s7, t4, t2
                  bne          a1, a2, 1325f
1321:             auipc        s6, 816675
                  addi         t0, s9, 845
                  bltu         a2, a7, 1341f
                  sltiu        t4, s11, -1483
1325:             sll          s6, ra, s0
                  beq          s0, a4, 1343f
                  addi         s11, t3, -1866
                  ori          t1, a6, 1011
                  lui          s5, 242962
                  srli         a3, s11, 13
                  ori          s9, s1, -307
                  sra          t4, t3, a2
                  or           ra, gp, s0
                  addi         s3, a6, -1474
                  srli         s5, t3, 9
                  add          a7, s5, s8
                  ori          s8, s11, 1039
                  srl          s6, a5, sp
                  sltiu        a5, s5, -168
                  nop
1341:             srli         a4, s11, 31
                  slli         a3, t0, 25
1343:             lui          sp, 189923
                  slti         s3, tp, -562
                  srai         s8, t1, 19
                  xori         t6, a5, 1454
                  sub          a6, a6, t4
                  andi         s0, a2, -1145
                  xor          t1, a3, t5
                  auipc        sp, 778689
                  and          s0, s6, s4
                  slt          s7, s6, s4
                  and          sp, sp, a4
                  xor          a0, a0, t3
                  andi         t5, a3, 805
                  sll          s10, a6, s10
                  addi         s7, zero, 476
                  xori         a5, s0, -55
                  xor          s5, s10, gp
                  auipc        a5, 679933
                  srli         t3, gp, 6
                  lui          s0, 748224
                  bltu         t3, s5, 1364f
1364:             sub          t5, a6, s9
                  lui          a3, 983545
                  lw           t1, 4(s4)
                  sra          s8, gp, s11
                  or           s5, a1, t2
                  addi         s4, s4, 40
                  xor          a2, t0, sp
1995:             addi x27, x6, 0
1995:             jalr x27, x27, 0
sub_5:            bltu         t6, s6, sub_5_stack_p
                  or           a3, s2, t6
sub_5_stack_p:    addi         s4, s4, -12
                  sltiu        s10, s0, -1964
                  sw           t1, 4(s4)
                  slt          s0, a1, t1
sub_5_11:         jal          t1, 25f
0:                jal          ra, 9f
1:                jal          ra, 4f
2:                jal          tp, 8f
3:                jal          t1, 18f
4:                jal          t1, 15f
5:                jal          ra, 3b
6:                jal          t1, 29f
7:                jal          ra, 10f
8:                jal          ra, 23f
9:                jal          ra, 22f
10:               jal          t6, 12f
11:               jal          ra, 30f
12:               jal          ra, 27f
13:               jal          ra, 16f
14:               jal          t0, 19f
15:               jal          t2, 26f
16:               jal          sp, 20f
17:               jal          ra, 7b
18:               jal          t1, 1b
19:               jal          ra, 28f
20:               jal          ra, 0b
21:               jal          ra, 17b
22:               jal          ra, 11b
23:               jal          t1, 24f
24:               jal          t1, 13b
25:               jal          ra, 6b
26:               jal          gp, 14b
27:               jal          s0, 2b
28:               jal          t0, 21b
29:               jal          ra, 5b
30:               addi         t0, a6, 78
sub_5_2:          jal          t1, 5f
0:                jal          ra, 12f
1:                jal          s3, 8f
2:                jal          ra, 10f
3:                jal          a1, 7f
4:                jal          s6, 14f
5:                jal          s9, 9f
6:                jal          ra, 13f
7:                jal          ra, 15f
8:                jal          ra, 0b
9:                jal          tp, 6b
10:               jal          t1, 16f
11:               jal          t1, 2b
12:               jal          ra, 4b
13:               jal          tp, 1b
14:               jal          a7, 3b
15:               jal          t1, 11b
16:               slti         a1, a5, 884
sub_5_18:         jal          t1, 17f
0:                jal          s3, 8f
1:                jal          ra, 24f
2:                jal          ra, 25f
3:                jal          ra, 23f
4:                jal          t1, 29f
5:                jal          ra, 16f
6:                jal          gp, 28f
7:                jal          t3, 30f
8:                jal          t1, 26f
9:                jal          ra, 19f
10:               jal          ra, 12f
11:               jal          s9, 1b
12:               jal          s0, 27f
13:               jal          t1, 6b
14:               jal          s5, 11b
15:               jal          t1, 20f
16:               jal          a0, 15b
17:               jal          ra, 22f
18:               jal          s3, 10b
19:               jal          t1, 0b
20:               jal          t1, 18b
21:               jal          ra, 3b
22:               jal          ra, 9b
23:               jal          gp, 13b
24:               jal          t0, 5b
25:               jal          gp, 21b
26:               jal          t2, 2b
27:               jal          a5, 4b
28:               jal          s5, 14b
29:               jal          t1, 7b
30:               sll          t1, gp, s7
sub_5_14:         jal          t1, 24f
0:                jal          s3, 26f
1:                jal          ra, 18f
2:                jal          t1, 3f
3:                jal          ra, 10f
4:                jal          t1, 16f
5:                jal          ra, 17f
6:                jal          a2, 22f
7:                jal          gp, 21f
8:                jal          t1, 1b
9:                jal          ra, 12f
10:               jal          ra, 19f
11:               jal          t1, 23f
12:               jal          ra, 15f
13:               jal          t1, 8b
14:               jal          ra, 11b
15:               jal          ra, 20f
16:               jal          ra, 14b
17:               jal          tp, 28f
18:               jal          t1, 4b
19:               jal          a0, 30f
20:               jal          ra, 13b
21:               jal          ra, 0b
22:               jal          ra, 7b
23:               jal          ra, 25f
24:               jal          ra, 9b
25:               jal          ra, 6b
26:               jal          s11, 27f
27:               jal          t4, 5b
28:               jal          ra, 29f
29:               jal          t1, 2b
30:               sll          s5, ra, s10
sub_5_15:         jal          t1, 11f
0:                jal          ra, 5f
1:                jal          sp, 21f
2:                jal          ra, 10f
3:                jal          ra, 6f
4:                jal          ra, 20f
5:                jal          s9, 18f
6:                jal          ra, 12f
7:                jal          t4, 2b
8:                jal          t5, 13f
9:                jal          t1, 19f
10:               jal          s3, 4b
11:               jal          ra, 23f
12:               jal          ra, 14f
13:               jal          t1, 22f
14:               jal          ra, 9b
15:               jal          ra, 16f
16:               jal          ra, 7b
17:               jal          ra, 0b
18:               jal          ra, 26f
19:               jal          gp, 15b
20:               jal          ra, 17b
21:               jal          a5, 25f
22:               jal          a1, 1b
23:               jal          t1, 24f
24:               jal          tp, 8b
25:               jal          s9, 3b
26:               add          s11, a2, s10
sub_5_17:         jal          t1, 3f
0:                jal          ra, 9f
1:                jal          t1, 13f
2:                jal          ra, 14f
3:                jal          t1, 6f
4:                jal          a4, 8f
5:                jal          ra, 15f
6:                jal          t5, 0b
7:                jal          t1, 18f
8:                jal          s6, 1b
9:                jal          ra, 11f
10:               jal          t1, 5b
11:               jal          sp, 4b
12:               jal          ra, 17f
13:               jal          ra, 2b
14:               jal          t1, 10b
15:               jal          gp, 16f
16:               jal          ra, 12b
17:               jal          a2, 7b
18:               sltu         a0, a6, s6
sub_5_13:         jal          t1, 21f
0:                jal          ra, 16f
1:                jal          t5, 25f
2:                jal          t5, 15f
3:                jal          a0, 8f
4:                jal          ra, 14f
5:                jal          ra, 4b
6:                jal          ra, 2b
7:                jal          s3, 6b
8:                jal          ra, 0b
9:                jal          ra, 11f
10:               jal          ra, 19f
11:               jal          t1, 28f
12:               jal          ra, 24f
13:               jal          s10, 10b
14:               jal          t5, 27f
15:               jal          ra, 5b
16:               jal          s6, 9b
17:               jal          ra, 12b
18:               jal          a1, 3b
19:               jal          ra, 26f
20:               jal          ra, 1b
21:               jal          ra, 20b
22:               jal          ra, 13b
23:               jal          t0, 22b
24:               jal          ra, 18b
25:               jal          ra, 23b
26:               jal          t1, 7b
27:               jal          t1, 17b
28:               sltu         s7, t0, s5
sub_5_9:          jal          t1, 0f
0:                jal          t1, 8f
1:                jal          ra, 5f
2:                jal          ra, 3f
3:                jal          t1, 7f
4:                jal          ra, 2b
5:                jal          t1, 4b
6:                jal          t1, 10f
7:                jal          t5, 6b
8:                jal          ra, 9f
9:                jal          ra, 1b
10:               ori          s7, s11, -904
sub_5_3:          jal          t1, 14f
0:                jal          ra, 12f
1:                jal          ra, 11f
2:                jal          ra, 6f
3:                jal          ra, 19f
4:                jal          ra, 0b
5:                jal          s11, 20f
6:                jal          ra, 8f
7:                jal          t1, 4b
8:                jal          tp, 24f
9:                jal          ra, 5b
10:               jal          a6, 2b
11:               jal          t1, 17f
12:               jal          ra, 9b
13:               jal          gp, 16f
14:               jal          t1, 23f
15:               jal          ra, 3b
16:               jal          s9, 21f
17:               jal          t1, 22f
18:               jal          t1, 13b
19:               jal          t1, 1b
20:               jal          ra, 15b
21:               jal          t1, 10b
22:               jal          ra, 18b
23:               jal          ra, 7b
24:               srai         a1, s9, 8
sub_5_16:         jal          t1, 11f
0:                jal          ra, 30f
1:                jal          ra, 3f
2:                jal          ra, 10f
3:                jal          ra, 5f
4:                jal          t1, 12f
5:                jal          ra, 15f
6:                jal          ra, 9f
7:                jal          ra, 23f
8:                jal          ra, 28f
9:                jal          t3, 14f
10:               jal          sp, 22f
11:               jal          ra, 13f
12:               jal          s6, 24f
13:               jal          ra, 27f
14:               jal          sp, 7b
15:               jal          ra, 29f
16:               jal          a3, 4b
17:               jal          t2, 6b
18:               jal          t1, 1b
19:               jal          ra, 8b
20:               jal          ra, 18b
21:               jal          ra, 25f
22:               jal          s3, 16b
23:               jal          t0, 20b
24:               jal          t1, 26f
25:               jal          ra, 17b
26:               jal          ra, 21b
27:               jal          ra, 2b
28:               jal          ra, 0b
29:               jal          s6, 19b
30:               srli         t3, a7, 23
sub_5_7:          jal          t1, 3f
0:                jal          t1, 12f
1:                jal          ra, 10f
2:                jal          ra, 20f
3:                jal          sp, 22f
4:                jal          s11, 13f
5:                jal          ra, 4b
6:                jal          t1, 7f
7:                jal          ra, 17f
8:                jal          ra, 1b
9:                jal          s3, 18f
10:               jal          ra, 5b
11:               jal          t1, 16f
12:               jal          a4, 9b
13:               jal          ra, 15f
14:               jal          t1, 23f
15:               jal          ra, 2b
16:               jal          ra, 6b
17:               jal          ra, 19f
18:               jal          s9, 14b
19:               jal          sp, 8b
20:               jal          a4, 0b
21:               jal          ra, 11b
22:               jal          t6, 21b
23:               add          ra, s11, t1
sub_5_4:          jal          t1, 0f
0:                jal          ra, 13f
1:                jal          ra, 25f
2:                jal          s7, 12f
3:                jal          t1, 16f
4:                jal          ra, 3b
5:                jal          ra, 22f
6:                jal          ra, 10f
7:                jal          t1, 6b
8:                jal          ra, 15f
9:                jal          ra, 18f
10:               jal          ra, 14f
11:               jal          a0, 2b
12:               jal          ra, 1b
13:               jal          ra, 9b
14:               jal          ra, 11b
15:               jal          s7, 28f
16:               jal          a6, 26f
17:               jal          ra, 4b
18:               jal          ra, 21f
19:               jal          ra, 20f
20:               jal          ra, 24f
21:               jal          s10, 27f
22:               jal          ra, 23f
23:               jal          gp, 7b
24:               jal          t6, 8b
25:               jal          ra, 19b
26:               jal          ra, 5b
27:               jal          ra, 17b
28:               auipc        a6, 62655
sub_5_8:          jal          t1, 7f
0:                jal          ra, 4f
1:                jal          ra, 19f
2:                jal          tp, 5f
3:                jal          t1, 18f
4:                jal          ra, 2b
5:                jal          ra, 11f
6:                jal          ra, 15f
7:                jal          ra, 12f
8:                jal          gp, 0b
9:                jal          ra, 8b
10:               jal          tp, 13f
11:               jal          sp, 10b
12:               jal          sp, 16f
13:               jal          ra, 20f
14:               jal          ra, 6b
15:               jal          a5, 3b
16:               jal          ra, 9b
17:               jal          t1, 21f
18:               jal          t5, 1b
19:               jal          t1, 17b
20:               jal          ra, 14b
21:               or           a6, a4, t0
                  sra          s10, a4, s10
                  xor          zero, a5, t0
                  andi         t4, t5, 746
                  xor          a5, s1, s1
                  ori          a4, a2, 644
                  srai         t5, sp, 3
                  nop
                  beq          tp, s2, 12f
                  and          s8, a3, s6
                  andi         t4, s9, -1103
                  and          a7, sp, t6
                  slti         a0, gp, 1554
12:               blt          s3, tp, 19f
                  addi         a4, s7, -1608
                  nop
                  or           a2, t1, s7
                  sub          t5, a4, s7
                  beq          a5, a6, 25f
                  ori          t2, t1, -826
19:               addi         s7, s4, 989
                  auipc        zero, 48307
                  lui          s11, 180876
                  and          t5, gp, a0
                  nop
                  bge          t1, s8, 30f
25:               bne          s2, s10, 36f
                  lui          gp, 531889
                  beq          s6, t5, 46f
                  sltiu        a3, t2, -992
                  bgeu         a6, a6, 40f
30:               slt          t5, a4, s2
                  ori          a4, s6, -1512
                  and          s7, a6, t6
                  or           t4, a5, a5
                  slt          t6, tp, a2
                  ori          ra, tp, 537
36:               bne          a5, s2, 56f
                  beq          a5, zero, 53f
                  xori         tp, a0, -1539
                  bltu         s11, s11, 43f
40:               bne          a5, a4, 50f
                  xor          a5, t2, tp
                  slt          t5, a1, s4
43:               bne          a4, s5, 49f
                  blt          a2, t5, 57f
                  slti         s7, s3, 1509
46:               srl          t0, a1, t5
                  or           a7, a1, a6
                  nop
49:               bne          gp, t3, 59f
50:               srli         s0, s5, 22
                  lui          t0, 23625
                  ori          t4, a4, -1200
53:               xori         t0, zero, 834
                  srli         s0, s11, 21
                  srl          a4, t3, a3
56:               or           t6, t0, t2
57:               auipc        ra, 802750
                  sll          a4, s9, t1
59:               srai         s9, s7, 11
                  sra          a6, s11, a7
                  sltiu        t5, gp, -610
                  add          a4, tp, t0
                  bltu         s7, a0, 69f
                  xor          a2, t1, t4
                  bne          s11, s0, 68f
                  or           t5, t3, ra
                  blt          a2, s2, 68f
68:               bge          s3, tp, 84f
69:               ori          a0, t4, -573
                  bne          s3, t2, 81f
                  beq          a5, s2, 75f
                  xor          tp, t3, t3
                  slt          a7, s6, a3
                  lui          s0, 803929
75:               sltiu        s8, tp, 1131
                  add          s9, a0, s8
                  xori         ra, a3, -818
                  slti         tp, ra, -1276
                  lui          s5, 376352
                  lui          s6, 524316
81:               xor          gp, s9, t3
                  slt          s7, t5, t1
                  sll          t6, s7, s2
84:               sll          a4, sp, a7
sub_5_1:          jal          t1, 8f
0:                jal          ra, 13f
1:                jal          ra, 5f
2:                jal          ra, 4f
3:                jal          ra, 6f
4:                jal          a5, 9f
5:                jal          a6, 15f
6:                jal          t0, 7f
7:                jal          ra, 10f
8:                jal          t1, 12f
9:                jal          gp, 14f
10:               jal          a0, 16f
11:               jal          sp, 3b
12:               jal          ra, 1b
13:               jal          sp, 2b
14:               jal          ra, 11b
15:               jal          t1, 0b
16:               ori          a4, a0, 1491
                  slt          s0, t4, sp
                  sll          s8, s1, s2
                  addi         t6, t6, 1549
                  beq          a3, t2, 103f
                  nop
                  srai         s0, t4, 6
                  ori          s3, sp, -810
                  bgeu         s4, t4, 99f
                  sll          t2, a3, s11
                  add          s0, a6, s11
                  andi         ra, t6, 923
                  bltu         s6, s4, 116f
                  slt          t6, gp, s10
                  sub          s10, t3, s0
99:               or           s10, t6, zero
                  sltu         t6, ra, s11
                  or           t0, zero, a5
                  bltu         s0, s4, 105f
sub_5_10:         jal          t1, 7f
0:                jal          t1, 14f
1:                jal          ra, 0b
2:                jal          s5, 5f
3:                jal          sp, 2b
4:                jal          t1, 19f
5:                jal          a3, 11f
6:                jal          t1, 13f
7:                jal          t1, 10f
8:                jal          ra, 12f
9:                jal          ra, 6b
10:               jal          t1, 18f
11:               jal          ra, 9b
12:               jal          ra, 17f
13:               jal          gp, 15f
14:               jal          ra, 4b
15:               jal          t1, 8b
16:               jal          t1, 3b
17:               jal          t1, 1b
18:               jal          ra, 16b
19:               andi         t6, s1, -1245
103:              xor          a1, t3, s2
                  sltu         t4, a5, t3
105:              sltu         sp, s11, a5
                  bgeu         t0, t5, 121f
                  auipc        t6, 371665
                  addi         a0, s11, -605
                  slli         a6, a2, 20
                  sra          t1, ra, tp
                  bgeu         s4, zero, 118f
                  bge          a5, s10, 113f
113:              ori          a3, a7, -953
                  bge          s1, s0, 124f
                  slli         t6, tp, 5
116:              xor          tp, s5, a2
                  bgeu         a1, s4, 120f
118:              ori          a3, t6, 1399
                  bgeu         ra, ra, 125f
120:              sltiu        a5, a3, -1569
121:              srl          s8, s1, t2
                  and          s3, ra, a5
                  and          gp, s4, t6
124:              sra          s11, s4, t4
125:              nop
                  bgeu         s0, s2, 141f
                  bne          a0, a6, 146f
                  add          s7, t1, s2
                  and          s0, a7, sp
                  sra          s5, t5, s8
                  srli         a2, s1, 30
                  sll          t6, t2, s7
                  and          a0, t2, t6
                  srl          t0, sp, s9
                  bge          s7, a6, 141f
                  beq          t3, a1, 151f
                  sltiu        a2, t1, 1457
                  bgeu         s6, t6, 141f
                  srl          a0, ra, t4
                  nop
141:              bge          s9, s8, 151f
                  ori          ra, ra, -1451
                  sltiu        sp, t2, -507
                  slli         t0, t6, 22
                  slli         a4, s10, 0
146:              addi         t2, a7, 46
                  andi         a1, s4, -1834
                  sltiu        t3, a1, 511
                  slti         t4, s1, -998
                  addi         t1, s5, -1202
151:              sub          t3, s1, gp
                  andi         a7, s1, -537
                  lui          ra, 765365
                  andi         s5, s2, 174
                  addi         a5, ra, -110
                  srai         t2, s9, 22
                  nop
                  srli         tp, s6, 28
                  bge          t4, a0, 175f
                  lui          s3, 754498
                  srli         a6, a5, 2
                  sltu         t6, a2, s6
                  addi         ra, s2, -982
                  add          s10, s9, s7
                  xori         t0, t2, -1861
                  sub          t2, s0, a3
                  and          t4, s10, t6
                  slt          a5, s9, s11
                  nop
                  bge          gp, sp, 173f
                  auipc        ra, 689672
                  sltu         a0, s1, s3
173:              andi         s9, t5, 1660
                  bge          a0, a6, 181f
175:              andi         s6, tp, 417
                  add          s9, t2, t6
                  bltu         t3, a1, 178f
178:              bgeu         a2, a0, 182f
                  and          zero, t1, s11
                  xor          s8, a1, t2
181:              slt          a5, t6, gp
182:              beq          a4, a6, 183f
183:              andi         a3, s4, -381
                  sll          t6, s2, t6
                  srai         s6, s9, 22
                  bltu         a1, t3, 191f
                  bltu         t5, s4, 193f
                  bge          t5, a4, 195f
                  slli         t4, s5, 2
                  beq          t3, s10, 203f
191:              bge          t5, s9, 197f
                  andi         t5, s7, 2
193:              srli         t2, s10, 9
                  and          t6, s8, t5
195:              or           a7, s4, zero
                  lui          t6, 25982
197:              and          a6, ra, a0
                  sltiu        a2, s6, 1351
                  andi         s5, gp, -3
                  sll          s6, t6, t6
                  blt          t3, a5, 209f
                  xor          s9, ra, t5
203:              xori         t1, ra, -1017
                  addi         tp, a0, -1423
                  bge          s7, s1, 216f
                  xori         tp, gp, 1155
                  andi         s9, a4, 1077
                  srai         s5, s1, 1
209:              bltu         t5, s9, 219f
                  bltu         ra, s8, 226f
sub_5_0:          jal          t1, 10f
0:                jal          ra, 1f
1:                jal          t1, 8f
2:                jal          t1, 5f
3:                jal          ra, 6f
4:                jal          t1, 11f
5:                jal          ra, 12f
6:                jal          a6, 4b
7:                jal          t1, 9f
8:                jal          s5, 3b
9:                jal          ra, 2b
10:               jal          ra, 0b
11:               jal          ra, 7b
12:               sra          s5, t3, gp
                  slti         sp, s5, 1804
                  bltu         a5, t0, 223f
                  bltu         s11, t0, 220f
                  slli         t5, t2, 1
                  slti         sp, zero, 1456
216:              lui          a3, 145149
                  slli         s11, a4, 5
                  blt          t1, a7, 221f
219:              and          a0, a0, t3
220:              bge          s2, sp, 240f
221:              slt          sp, a4, s0
                  srli         s3, a4, 5
223:              srl          zero, s4, t4
                  or           t4, ra, t0
                  lui          s8, 476213
226:              sltiu        a5, t0, -437
sub_5_5:          jal          t1, 11f
0:                jal          ra, 6f
1:                jal          t1, 12f
2:                jal          ra, 5f
3:                jal          s3, 7f
4:                jal          ra, 0b
5:                jal          ra, 8f
6:                jal          ra, 3b
7:                jal          s8, 10f
8:                jal          s10, 14f
9:                jal          s8, 1b
10:               jal          ra, 2b
11:               jal          a7, 13f
12:               jal          sp, 4b
13:               jal          gp, 9b
14:               srli         s6, a7, 10
                  blt          t3, t0, 247f
                  sra          s11, s4, a1
                  bgeu         s6, s5, 233f
                  xor          a4, t6, t0
                  slli         s0, a2, 20
                  ori          s6, s5, 286
233:              srli         t1, s3, 31
                  slli         sp, gp, 27
                  addi         s7, gp, 345
                  bltu         s10, s4, 246f
                  blt          gp, a2, 243f
                  slli         t6, a4, 17
                  addi         s7, a5, -1162
240:              blt          s7, s2, 251f
                  srli         s7, gp, 24
                  blt          s3, t5, 249f
243:              auipc        a6, 515407
                  and          s3, zero, t5
                  sra          a3, a7, s11
246:              xori         zero, zero, 861
247:              or           a0, s5, zero
                  sll          s3, t0, a3
249:              sll          s7, a7, a7
                  bgeu         a2, t2, 253f
251:              sll          zero, s4, ra
                  bge          s3, zero, 268f
253:              sll          a4, t1, a6
                  andi         s3, gp, 687
                  ori          t1, gp, 683
                  bge          s0, s9, 266f
                  sltu         t3, t4, a6
                  bne          s4, t0, 263f
                  and          s8, ra, gp
                  slti         s0, a5, 15
                  sltu         s8, s5, s1
                  sub          t0, tp, s3
263:              bne          t5, s2, 274f
                  add          a1, t5, zero
                  bgeu         a4, sp, 285f
266:              slli         t5, a6, 16
                  nop
268:              sra          s7, t2, tp
                  srli         s9, ra, 28
                  sra          s5, s9, t3
                  blt          s4, a1, 277f
                  blt          s9, tp, 275f
                  xor          a7, s6, s10
274:              xor          t5, s8, t3
275:              slli         t0, a4, 30
                  and          t2, t4, t3
277:              srl          a2, zero, ra
                  slt          t1, a5, s6
                  sll          s9, a3, ra
                  srl          s7, a7, ra
                  beq          a5, s10, 291f
                  blt          s0, gp, 283f
283:              bne          a1, s1, 289f
                  blt          s8, s3, 299f
285:              add          tp, a7, a0
                  slt          t3, t0, t4
                  sub          s6, s0, s8
                  andi         tp, t0, 149
289:              and          t2, t6, a7
                  beq          t1, t5, 301f
291:              sra          a3, gp, a1
                  bge          a2, s7, 305f
                  addi         a5, s3, -930
                  sltiu        t3, a6, 27
                  auipc        t2, 360798
                  bgeu         zero, a3, 303f
                  or           s3, a4, t0
                  beq          t0, t6, 304f
299:              srl          a4, s10, a3
                  srli         ra, s8, 20
301:              srl          a7, s6, t1
                  sub          s7, a1, t0
303:              slli         a3, t2, 17
304:              slt          t0, a7, s11
305:              slt          s11, t4, t3
                  ori          a0, a6, 379
                  nop
                  or           s7, a5, t6
                  srai         t5, ra, 27
                  nop
                  sll          t3, a0, t0
                  slli         s5, a0, 2
                  bge          s3, ra, 319f
                  blt          tp, s3, 324f
                  add          s7, a0, a4
                  bltu         a6, sp, 317f
317:              slti         s0, s0, 985
                  xor          sp, t4, t4
319:              sltiu        s0, t2, 1111
                  bgeu         t4, ra, 335f
                  bne          s6, t1, 332f
                  bne          sp, a5, 326f
                  lui          s10, 714249
324:              add          a4, a2, s8
                  sll          a0, s6, t5
326:              bltu         s0, s1, 342f
                  nop
                  sra          t0, s3, a0
                  xor          t0, t1, s1
                  beq          a3, gp, 338f
                  xori         a6, s9, 813
332:              sub          s7, s0, s4
                  beq          s11, s11, 337f
                  and          s0, t4, s10
335:              lui          t5, 117586
                  addi         a3, t0, 1770
337:              sll          sp, t4, t0
338:              add          s8, s11, t3
                  srl          a7, s8, gp
                  sltiu        t3, s10, 1680
                  slti         s5, a1, -151
342:              sra          a6, s3, a7
                  sll          zero, a2, t3
                  and          a0, sp, a6
                  sll          tp, a5, t3
                  bne          s6, t3, 366f
                  and          s0, s3, s1
                  bgeu         s1, s3, 351f
                  srli         s5, a2, 3
                  xori         gp, s2, -1975
351:              addi         t4, t2, 1891
                  beq          s4, s10, 371f
                  bgeu         t1, s8, 360f
                  and          t3, s2, a0
                  sra          a4, t3, a3
                  bltu         s6, zero, 359f
                  bgeu         sp, a6, 372f
                  bgeu         a7, a6, 369f
359:              sll          t1, s11, t4
360:              xori         s3, zero, 1452
                  sra          s0, t5, s6
                  beq          t5, a5, 363f
363:              srli         a6, a6, 24
                  sltiu        a0, s0, 1408
                  sltu         ra, a5, a0
366:              sltu         gp, sp, s7
                  sltiu        s7, sp, -732
                  and          a1, s2, t2
369:              xori         a0, a5, 611
                  srl          a5, s2, s6
371:              srai         s6, a1, 7
372:              lui          t2, 672128
                  sll          tp, a1, s2
                  add          a6, s9, ra
                  slt          a1, a2, s7
                  lui          gp, 103484
                  srai         t5, a4, 26
                  auipc        tp, 78299
                  beq          a0, zero, 399f
                  xor          t3, s5, t6
                  xori         a3, t2, -381
                  auipc        t4, 737804
                  sll          t4, a6, gp
                  sll          tp, sp, s9
                  bge          t6, s3, 401f
                  slt          s9, s1, a2
                  add          s3, a1, s4
                  bgeu         ra, a4, 395f
                  and          s0, t3, s0
                  bgeu         s2, t4, 396f
                  srl          a0, a4, s4
                  lui          t0, 628971
                  srl          gp, s1, a6
                  xori         s5, s2, 1067
395:              slti         s6, sp, 1707
396:              srai         s7, a1, 10
                  srl          s3, t3, a2
                  andi         t1, a3, 948
399:              slli         s6, tp, 16
                  sltu         s10, s7, t2
401:              ori          t0, a3, -1150
                  ori          tp, a0, 1372
                  sltu         t4, t4, a1
                  sltiu        s3, ra, 774
                  bgeu         s4, zero, 411f
                  slt          t5, a7, s2
                  srli         a2, t6, 6
                  xor          t3, s6, t1
                  lui          a0, 17498
                  beq          s10, s4, 429f
411:              srl          ra, s10, s1
                  srai         t2, s11, 18
                  bge          a2, a7, 416f
                  slli         t1, a1, 1
                  slti         s7, t3, 1390
416:              srl          t5, s2, t5
                  srl          a1, s3, a5
                  addi         zero, a0, -74
                  sll          gp, a0, s9
                  bge          t5, s8, 421f
421:              sltiu        t0, a2, -1790
                  or           s3, gp, tp
                  srli         s7, ra, 14
                  slt          t0, t6, s4
                  addi         t4, s5, -1116
                  slti         a0, s5, -241
                  xor          a3, a0, a2
                  sub          s5, a6, t6
429:              sll          t0, a6, a4
                  sltiu        s9, s3, 1193
                  sltiu        s5, a3, -13
                  slt          a1, a1, a4
                  andi         s5, s10, 360
                  andi         t1, a7, -1823
                  lui          s0, 309530
                  sltiu        s11, t2, 994
                  srl          t4, t2, s9
                  beq          a5, t6, 449f
                  xor          t4, s11, t3
                  lui          a5, 10895
                  or           t4, s9, tp
                  lui          s8, 845931
                  srl          s11, s3, s1
                  blt          s2, s11, 460f
                  auipc        a1, 535027
sub_5_6:          jal          t1, 19f
0:                jal          ra, 23f
1:                jal          ra, 2f
2:                jal          t1, 13f
3:                jal          ra, 17f
4:                jal          ra, 24f
5:                jal          s7, 1b
6:                jal          t1, 5b
7:                jal          ra, 0b
8:                jal          a5, 12f
9:                jal          a2, 11f
10:               jal          tp, 20f
11:               jal          t0, 16f
12:               jal          ra, 7b
13:               jal          ra, 8b
14:               jal          t1, 10b
15:               jal          ra, 4b
16:               jal          s0, 14b
17:               jal          ra, 18f
18:               jal          ra, 25f
19:               jal          t6, 15b
20:               jal          s7, 3b
21:               jal          t3, 22f
22:               jal          t1, 9b
23:               jal          ra, 21b
24:               jal          ra, 6b
25:               ori          t5, s5, -2042
                  beq          tp, s10, 454f
                  sra          s10, s0, s9
                  add          t0, a7, s7
449:              bge          a4, t3, 456f
                  sltu         s5, t0, a4
                  nop
                  add          t4, a2, s2
                  xor          gp, s5, a2
454:              sltiu        a1, gp, 3
                  bne          t0, a1, 459f
456:              srli         t5, sp, 9
                  bgeu         t3, sp, 470f
                  srai         s10, tp, 3
459:              xori         s10, zero, 65
460:              xori         a3, a1, 1459
                  srl          s11, a7, sp
                  xori         zero, t4, -1285
                  sra          tp, s1, t0
                  sll          t1, t6, ra
                  bgeu         a5, s3, 471f
                  addi         t4, s0, 164
                  slti         a5, gp, -550
                  bge          t3, s6, 479f
                  srai         s7, zero, 19
470:              nop
471:              sub          ra, a0, s0
                  srl          s0, s9, s10
                  and          s5, s10, t1
                  sub          t6, s6, a2
                  lui          s3, 795280
                  slti         zero, s3, 1510
                  bltu         s6, s5, 487f
                  bgeu         s9, s0, 481f
479:              sll          s0, s11, t2
                  addi         s10, t1, 721
481:              slt          s0, a1, s8
                  bgeu         t5, s11, 488f
                  blt          t3, zero, 490f
                  add          a2, s3, a7
                  srli         t0, t4, 12
                  slli         a2, a1, 13
487:              bne          a1, s0, 502f
488:              andi         s10, a0, -574
                  addi         s5, a1, -585
490:              xori         a5, gp, 1029
                  bltu         a0, t3, 496f
                  blt          a4, gp, 496f
                  addi         s8, s4, -1327
                  xori         zero, t5, 1581
                  xor          gp, s8, t5
496:              sub          s0, t0, a5
                  sra          gp, s10, s2
                  srai         s9, ra, 18
                  sra          a3, a7, a7
                  auipc        s5, 756293
                  add          tp, t6, t5
502:              bgeu         s6, t1, 512f
                  addi         t2, gp, 1477
                  slti         t1, s7, 1319
                  auipc        a0, 315999
                  bltu         a3, a7, 516f
                  sltiu        t5, s10, 983
                  beq          s2, a7, 528f
                  slli         s8, s10, 13
                  sltu         a4, s11, a3
                  auipc        a0, 325560
512:              bne          a4, a5, 513f
513:              auipc        s10, 962418
                  slti         s5, s1, 1782
                  bge          a2, t5, 520f
516:              xori         t1, t0, 1592
                  bgeu         a3, s1, 523f
                  sll          a6, t5, t4
                  nop
520:              nop
                  auipc        gp, 215137
                  xor          s6, a7, a4
523:              bge          s9, t2, 529f
                  lui          a2, 959395
                  add          s0, ra, t0
                  beq          s8, t4, 536f
                  srl          zero, t0, a3
528:              andi         s3, a3, -440
529:              slli         s9, s6, 23
                  sltu         t2, s7, s11
                  ori          a5, s4, 1778
                  nop
                  beq          a1, s4, 543f
                  lui          a1, 500785
                  beq          t6, t1, 538f
536:              xori         s11, s3, 1417
                  blt          s9, a1, 553f
538:              andi         t3, s11, -1357
                  auipc        s5, 881217
                  bgeu         t3, a4, 541f
541:              srai         a5, ra, 4
                  auipc        t3, 968215
543:              sltiu        zero, s9, 706
                  sub          gp, a2, tp
                  beq          t0, tp, 549f
                  addi         s0, a7, -680
                  slt          s9, t4, a5
                  blt          gp, sp, 555f
549:              sll          s11, s6, gp
                  sltu         s8, s2, s7
                  auipc        gp, 947459
                  sra          s11, zero, s10
553:              bgeu         gp, s6, 559f
                  bgeu         gp, a1, 564f
555:              beq          a3, a4, 570f
                  addi         t3, tp, -366
                  andi         a0, s10, -285
                  bge          s7, s1, 569f
559:              sltiu        a7, a3, -1596
                  xor          a6, a0, s5
                  xori         s9, t4, 250
                  or           a3, s6, sp
                  sll          sp, t2, zero
564:              slt          a2, t5, a2
                  or           s8, s4, t5
                  addi         a5, s8, 1386
                  andi         t2, s4, -195
                  nop
569:              blt          gp, t1, 576f
570:              bge          s4, s7, 576f
                  add          a6, t2, t0
                  auipc        sp, 358498
                  beq          a3, s1, 576f
                  srai         a0, s11, 4
                  add          a3, t4, s3
576:              beq          a5, s6, 596f
                  slt          t4, a1, a6
                  or           a3, s6, tp
                  srli         gp, s7, 10
                  beq          t4, a1, 584f
                  sltiu        a5, sp, 624
                  sub          s0, s4, a6
                  andi         a2, s0, 444
584:              andi         t6, a6, 1507
                  slti         a3, s8, 1148
                  bne          gp, t6, 593f
                  bltu         t3, a0, 590f
                  srai         s8, s6, 9
                  auipc        t3, 790769
590:              auipc        zero, 890977
                  bltu         t5, ra, 610f
                  nop
593:              sltiu        a0, gp, -1832
                  sub          s9, zero, a4
                  srli         t5, s8, 2
596:              bgeu         s10, a4, 616f
                  sra          t5, t3, a1
                  xor          s5, s2, zero
                  xori         s11, t5, 1842
                  slli         s10, a7, 14
                  andi         s0, s7, -448
                  sll          s3, s4, a0
                  sra          tp, tp, s4
                  xori         a1, s10, 1944
                  slli         a6, a7, 5
                  auipc        a3, 820425
                  addi         s9, s2, -1518
                  xor          s6, s2, zero
                  slli         t5, zero, 21
610:              sltiu        s11, t1, 905
                  and          a5, s10, t2
                  slli         s5, t0, 23
                  bne          t1, t6, 624f
                  srli         t6, a4, 25
                  or           a4, tp, s0
616:              bgeu         s2, tp, 624f
                  or           s9, a0, gp
                  beq          tp, a5, 631f
                  bgeu         s9, t4, 635f
                  lui          t0, 154426
                  bge          t6, s1, 636f
                  xori         t4, s10, -20
                  bge          s11, s1, 634f
624:              add          t3, s1, t0
                  bgeu         tp, t1, 632f
                  and          s8, tp, zero
                  xor          s7, s7, s3
                  auipc        ra, 980167
                  bltu         s10, sp, 633f
                  slt          a2, s0, s2
631:              sll          s7, ra, t2
632:              sra          t0, a1, a2
633:              sub          s3, s7, a5
634:              lui          s9, 16970
635:              blt          s2, t3, 651f
636:              slti         a5, a1, 1299
                  or           a6, a5, s0
                  beq          s0, s6, 658f
                  bge          s9, s6, 643f
                  bne          s2, a6, 650f
                  addi         s7, sp, 1065
                  bltu         a7, t2, 643f
643:              srl          gp, zero, s2
                  slti         t2, a5, 667
                  bgeu         s7, sp, 652f
                  ori          a0, a2, -1973
                  blt          t5, t1, 658f
                  srl          t4, a4, t4
                  addi         a5, a2, -4
650:              nop
651:              sra          a2, s9, s5
652:              bge          sp, sp, 665f
                  addi         a6, s7, -511
                  slt          s7, a2, a1
                  bne          t1, ra, 661f
                  add          a7, s0, a0
                  sub          s5, s1, a6
sub_5_12:         jal          t1, 7f
0:                jal          t1, 4f
1:                jal          ra, 8f
2:                jal          s9, 5f
3:                jal          a5, 12f
4:                jal          t1, 6f
5:                jal          ra, 3b
6:                jal          a6, 2b
7:                jal          s7, 9f
8:                jal          ra, 0b
9:                jal          ra, 10f
10:               jal          t1, 11f
11:               jal          ra, 1b
12:               lui          s0, 572744
658:              sltiu        t4, t0, -1690
                  srli         a7, t3, 4
                  slt          t0, s1, t1
661:              bltu         t6, a1, 676f
                  auipc        t4, 339431
                  sub          a0, s4, t5
                  bne          s7, a4, 667f
665:              bgeu         a4, s4, 675f
                  slli         sp, a4, 23
667:              srl          s8, t0, a5
                  auipc        sp, 632033
                  sltu         zero, s5, zero
                  or           a5, s1, t1
                  sll          s11, s3, t2
                  or           s5, a0, s9
                  srai         a1, gp, 17
                  sll          s6, s3, s1
675:              sra          t2, a4, s9
676:              ori          a6, t5, -1136
                  sltu         s9, s7, a6
                  slt          ra, a1, t4
                  srli         gp, s10, 17
                  and          a6, a6, t1
                  add          t3, s4, t5
                  bltu         ra, a7, 690f
                  beq          a7, s5, 693f
                  slti         t2, t5, 455
                  srai         a6, t5, 27
                  auipc        t5, 422645
                  srl          s7, a6, t0
                  sltiu        s11, s9, 1456
                  add          s11, a7, a3
690:              lui          a3, 98063
                  addi         a6, s4, 2017
                  slli         s9, s5, 10
693:              sltiu        t0, a5, -1967
                  sltiu        s0, s9, -1194
                  sll          a4, a6, a1
                  bltu         s7, sp, 712f
                  and          a3, a0, s8
                  addi         a6, s9, 260
                  blt          s7, a7, 719f
                  sltu         gp, s10, a7
                  slli         t0, t0, 29
                  sltiu        t0, s3, 296
                  sltiu        sp, a7, -1574
                  bgeu         gp, a0, 709f
                  or           a1, a6, s0
                  bge          s1, gp, 713f
                  srai         a0, s10, 9
                  andi         s6, s10, 1159
709:              ori          a4, t6, -1109
                  srai         s8, t3, 31
                  srli         a4, a4, 29
712:              sltiu        a6, t2, -602
713:              sltiu        t5, t5, -1714
                  srl          s10, t2, a0
                  xor          a4, t0, ra
                  srli         s11, a6, 9
                  xori         t2, gp, -2017
                  ori          t4, a6, 1375
719:              nop
                  bne          s11, tp, 726f
                  nop
                  sltiu        zero, ra, -1300
                  nop
                  ori          s11, s9, -1934
                  bgeu         a6, s11, 736f
726:              auipc        t5, 636795
                  bltu         a0, a5, 742f
                  srl          a4, s6, tp
                  ori          a0, t1, 468
                  beq          s8, a3, 733f
                  or           t1, s11, s5
                  sub          a4, s5, s9
733:              bge          t4, sp, 739f
                  bgeu         s4, s5, 735f
735:              srli         tp, t2, 13
736:              slli         a6, t2, 17
                  bltu         a0, t2, 743f
                  slti         s0, s7, -909
739:              or           a3, a6, t2
                  ori          t1, a4, 1579
                  ori          s8, s0, 45
742:              slt          a4, s1, s2
743:              nop
                  sra          s11, s5, zero
                  sltu         t0, t2, a1
                  sll          ra, s4, s8
                  sub          t4, s11, t2
                  slt          a7, t6, s2
                  sltiu        t2, a0, -536
                  bgeu         t2, s2, 769f
                  ori          zero, s2, 1613
                  sltiu        a0, t5, 442
                  slt          sp, a5, gp
                  xor          ra, zero, a7
                  slli         t2, gp, 6
                  or           gp, ra, a3
                  bge          a4, s2, 760f
                  sltiu        t1, s5, -623
                  slt          s11, gp, zero
760:              lui          a0, 1044386
                  or           t0, a2, a7
                  sub          gp, s9, tp
                  srl          t3, tp, t5
                  bgeu         a7, s6, 775f
                  srl          t5, s2, a3
                  slti         a3, t2, 637
                  slli         s10, s4, 17
                  sll          a2, s2, s3
769:              lui          ra, 607277
                  nop
                  lui          s9, 980211
                  bgeu         s4, t4, 778f
                  bltu         zero, s6, 780f
                  xor          t1, t4, zero
775:              sltiu        t3, s9, -1416
                  sub          a0, tp, s9
                  srl          ra, s4, t2
778:              bltu         zero, a2, 782f
                  addi         t3, sp, 696
780:              ori          t3, s9, 1944
                  beq          t6, ra, 791f
782:              slti         s7, s2, 1284
                  bne          s7, t4, 793f
                  sra          a3, gp, a6
                  bltu         gp, s11, 790f
                  sltiu        t5, t3, 536
                  or           s9, s11, a3
                  srli         t2, a6, 6
                  addi         s6, s8, 950
790:              nop
791:              nop
                  bge          a3, a6, 802f
793:              blt          s5, a7, 804f
                  bne          a0, a2, 809f
                  slt          a6, a7, s8
                  and          s8, s2, a6
                  bltu         s9, zero, 817f
                  add          s6, a6, t0
                  slt          s9, s2, s10
                  sltu         t1, a2, t6
                  srl          s3, sp, a2
802:              andi         ra, s8, 1885
                  sra          s0, s0, t6
804:              srai         a5, a2, 26
                  and          a5, gp, s2
                  bge          t5, s3, 819f
                  srl          a6, a6, t4
                  ori          a4, s10, 615
809:              andi         s6, gp, -455
                  ori          t1, s1, -202
                  slli         s5, s4, 30
                  ori          t1, t5, 1030
                  slt          a1, s11, s3
                  sll          a6, t1, t6
                  slti         s8, t5, -678
                  blt          s4, sp, 817f
817:              andi         a4, t3, 37
                  sltiu        t5, s1, -326
819:              nop
                  blt          ra, a6, 823f
                  sltiu        sp, s8, 1829
                  and          s9, t6, a5
823:              slli         t4, s5, 16
                  ori          t6, gp, 1350
                  bgeu         sp, a3, 840f
                  srl          sp, a2, a0
                  and          a3, t0, s5
                  or           t6, t1, a2
                  slt          a6, a2, zero
                  xori         t3, s9, 284
                  slt          t5, zero, a5
                  srl          s10, s8, t4
                  xori         s5, a5, -958
                  bltu         t6, tp, 841f
                  srl          t6, s4, t6
                  slt          s7, s8, s5
                  or           t4, t3, t6
                  slli         a4, s0, 18
                  auipc        gp, 936397
840:              srl          a7, s1, s5
841:              srai         ra, t3, 2
                  sra          s9, t0, t0
                  and          zero, s7, a0
                  bltu         s7, s9, 850f
                  srl          a5, ra, tp
                  sra          gp, a7, s0
                  srl          a1, a5, t6
                  sra          ra, t0, s6
                  sltiu        s6, sp, 1947
850:              bge          t5, t4, 861f
                  bne          a2, ra, 854f
                  sra          a2, a2, a2
                  addi         tp, s2, -1266
854:              slt          s0, t5, t5
                  or           s10, ra, t0
                  xori         tp, a1, 242
                  beq          s7, s11, 877f
                  slt          a1, t3, t4
                  slti         a3, s11, -13
                  beq          s3, s5, 879f
861:              srai         tp, a0, 11
                  slti         zero, t2, 1403
                  andi         gp, s11, 1153
                  sltiu        t5, s11, -358
                  srli         ra, t1, 20
                  beq          a6, tp, 872f
                  sub          a1, a3, t6
                  sub          a2, a1, a6
                  bne          tp, a6, 875f
                  bge          t1, t2, 878f
                  srai         s9, s3, 7
872:              auipc        s9, 998468
                  blt          a5, s5, 889f
                  add          a1, s5, t0
875:              or           ra, t1, s1
                  bge          s9, s11, 887f
877:              sub          s8, s5, a2
878:              slti         s7, a1, 609
879:              or           a5, ra, sp
                  andi         a6, a2, -1997
                  beq          s5, a7, 897f
                  srl          s7, s4, a5
                  srl          s10, s11, a0
                  and          t2, t6, t1
                  srli         t5, a6, 15
                  srl          s6, s8, s8
887:              blt          s0, s6, 891f
                  slt          s11, t4, a2
889:              xori         ra, a6, 872
                  or           a1, s7, a2
891:              and          t5, s2, s1
                  sll          tp, a4, zero
                  sra          t6, s2, t4
                  addi         zero, a3, 7
                  xori         t6, s10, 1968
                  sll          t1, a1, s8
897:              lui          s0, 393588
                  bgeu         a2, a3, 901f
                  add          tp, s1, t5
                  blt          a4, s0, 907f
901:              bgeu         tp, a1, 902f
902:              xor          t4, sp, t3
                  sra          t5, s3, t4
                  beq          s9, t1, 919f
                  sra          s5, a2, a1
                  sra          a0, zero, s4
907:              sltiu        t4, s2, -231
                  bge          a4, t5, 911f
                  srai         t1, s10, 22
                  addi         a2, s0, 1615
911:              sltu         a3, sp, s1
                  sltiu        t5, ra, -704
                  sltu         s5, a4, s4
                  sra          t1, a5, gp
                  srli         t1, t0, 1
                  bgeu         s6, s5, 929f
                  add          a5, s10, t5
                  nop
919:              sll          a6, t6, s4
                  slt          a3, t4, sp
                  sub          t2, s2, zero
                  blt          s0, t4, 933f
                  add          t5, s7, s1
                  sub          a4, tp, s5
                  xor          a2, s1, s7
                  addi         s5, s7, 639
                  bgeu         s8, gp, 928f
928:              sub          s10, a6, s8
929:              bltu         s8, sp, 930f
930:              srli         a6, s7, 15
                  or           zero, t1, zero
                  add          s8, a6, s6
933:              bne          a6, ra, 937f
                  auipc        zero, 1006618
                  add          a0, s5, a6
                  auipc        zero, 680475
937:              xor          t0, s3, s1
                  addi         t0, a4, 1458
                  srli         a5, t3, 9
                  slti         s7, a1, -1364
                  bge          a5, t3, 944f
                  and          s5, t2, a2
                  andi         s8, a0, -73
944:              lui          a6, 30652
                  nop
                  nop
                  srai         a6, s11, 29
                  sltu         s6, s11, s3
                  srli         s7, s2, 5
                  add          a7, ra, s0
                  andi         t2, a6, -1782
                  sltiu        zero, s0, 511
                  sub          a3, a6, a0
                  beq          a6, a2, 960f
                  sll          s3, tp, t1
                  lui          t5, 217995
                  slli         t5, s7, 21
                  sltiu        s10, s4, -461
                  xor          tp, t4, a6
960:              srli         t3, a5, 21
                  bgeu         a6, s5, 963f
                  beq          t6, tp, 963f
963:              sub          s0, s9, s3
                  xor          s5, s1, s1
                  auipc        a4, 1021344
                  lw           t1, 4(s4)
                  addi         s4, s4, 12
                  sub          gp, s1, a0
                  sltu         a3, zero, a0
                  nop
                  sll          s0, a5, s7
1428:             addi x10, x6, 0
1428:             jalr x10, x10, 0
sub_4:            slt          tp, a1, sp
                  addi         s4, s4, -24
                  sw           t1, 4(s4)
                  and          t3, s4, s3
                  sltu         a7, t5, s9
                  slti         a3, s8, -1457
                  srl          tp, s8, tp
                  addi         s11, t2, -1006
                  nop
                  la           a2, sub_5
                  slti         t4, s5, 1172
                  addi         a2, a2, 696
                  sub          a1, s8, a5
                  xor          t0, a0, t1
                  xor          s9, a7, s1
                  beq          s6, s7, sub_4_j7 #branch to jump instr
                  srli         s0, t5, 14
sub_4_j7:         jalr         t1, a2, -695 #jump sub_4 -> sub_5
                  ori          tp, a1, -872
                  and          s5, s0, tp
                  srl          t2, zero, s4
                  srl          s3, gp, a0
                  auipc        gp, 997882
                  xor          t3, t4, s4
                  la           t5, sub_5
                  srli         s9, a6, 7
                  addi         t5, t5, 367
                  lui          a1, 21286
                  auipc        t4, 1034302
                  xor          a3, gp, s10
sub_4_j8:         jalr         t1, t5, -366 #jump sub_4 -> sub_5
                  slti         s9, s0, -795
                  sub          s11, ra, t5
                  bgeu         a2, t3, 6f
                  or           a6, sp, s10
                  ori          t5, tp, -1398
                  bltu         t0, s1, 7f
6:                andi         a1, a3, 305
7:                add          s0, gp, s5
                  srli         gp, a4, 25
                  auipc        a1, 20008
                  addi         t3, zero, 1735
                  slt          sp, s6, s8
                  slli         a7, s8, 2
                  bge          a4, t0, 18f
                  srl          t3, s1, a3
                  add          a0, gp, zero
                  or           a0, s11, s5
                  sltu         s11, a7, t6
18:               blt          ra, a2, 22f
                  srli         s7, s3, 2
                  slt          tp, s0, a7
                  sll          a1, a4, s2
22:               slli         a4, s3, 24
                  lw           t1, 4(s4)
                  addi         t0, s5, -509
                  sltu         s11, ra, a4
                  addi         s4, s4, 24
                  slli         s0, a5, 2
                  and          t6, s1, a4
60:               addi x22, x6, 0
60:               jalr x22, x22, 0
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
.word 0xfa07c89f, 0x5c04b016, 0xe176e896, 0xa05f324f, 0xd2088320, 0x84bc34a3, 0x05cc0849, 0xe09cc2b6
.word 0x1148010c, 0xe1e6a983, 0x3ada3505, 0x1fcd4c53, 0x74368abd, 0x6461ede5, 0x5c0e3b5b, 0xdf59846d
.word 0x5222ced5, 0xa28b02ea, 0x5ed5c6a5, 0x38096e84, 0xdd377f72, 0x0959cd87, 0xc54a6a33, 0x4928b0fe
.word 0x519a80ea, 0x5bcda26a, 0x750055a7, 0xe26d50c1, 0x44e12861, 0xd2f7b154, 0x29b1cff3, 0x0cca5959
.word 0x34c74960, 0x91070954, 0xf5647acd, 0xe887c8a8, 0x28725874, 0xf9ed96b0, 0xa0d21a1e, 0xe85b093c
.word 0x023865b5, 0x11bf4615, 0x7b9e3d5a, 0xd39cbf59, 0x53a225f8, 0xc98fdf02, 0x26b125a0, 0x89de3d28
.word 0x3c889981, 0x0d73e708, 0x6e2db262, 0x699f608b, 0xa7d22482, 0x1c1e5656, 0x4654a775, 0x90967999
.word 0xa50e4dc4, 0x42d234c2, 0x29a5310a, 0x2b6abc71, 0xd2fe083b, 0xb31d0548, 0x969d795d, 0x4a61a3b2
.word 0x05d49ed4, 0x1cfa7eb7, 0x36eec50f, 0xe0d43589, 0x22625d5b, 0xa66c3b80, 0x0b6af5af, 0x0700f4b0
.word 0x61dc83fe, 0x6aba65ce, 0x08a5b457, 0xfa9bb3a6, 0x22da3917, 0x8370a54e, 0x1f8c45cf, 0x2ba93970
.word 0x961907df, 0x43ce31fd, 0x0a000cce, 0x60e675d8, 0xcd8c5ab0, 0xa909b7f3, 0x1c371045, 0x9cf38dc0
.word 0x95506e62, 0xf994b17b, 0x4b917f7d, 0xfc9ec5be, 0x1d602436, 0x3fef8d2f, 0xc202af43, 0x45c3d8b5
.word 0x893955f0, 0x1195085c, 0x1dbf31bc, 0x7266548e, 0xde46333c, 0xdd86abdb, 0x98f23c2a, 0x97462ca7
.word 0x29fa50ab, 0x91aebce8, 0x15715c40, 0xc96e7733, 0x4f1320a6, 0xce916b3a, 0x02bffa5a, 0xad6bb42f
.word 0x6579f6dc, 0x8f618893, 0xd4af5e82, 0x7305175c, 0x81784e54, 0x07a8f14a, 0xa7533a5c, 0x01bb02a2
.word 0x82d4809c, 0x2b71e794, 0x97987bfc, 0xe6141ef7, 0xbe0ce31e, 0x5b4004b0, 0x55b96647, 0x50d23bb5
.word 0xb498ec36, 0xe608e3c7, 0xb6d7e7d5, 0xceaa33e4, 0x6dfec4ee, 0x73a4ee1e, 0x7be10aaa, 0xe07c0ede
.word 0x45b61e53, 0xf88d40bc, 0x546e5cfb, 0xa9130191, 0xbc70e96e, 0x561c7eb2, 0xf1f988d5, 0xcd14f46e
.word 0x1dc6fe03, 0x55d9bb75, 0x3353ca2f, 0x684a9fd7, 0x210824c3, 0x1465195e, 0x493ca94c, 0x358ca6fb
.word 0x411710fb, 0x4d79210d, 0xc3feb297, 0xf80323a7, 0xffdfda34, 0xdbb615db, 0x866a7b41, 0x903dca31
.word 0x9eeed711, 0xfa081711, 0x00a252a1, 0x67897030, 0xc0df48cc, 0x87d05ea2, 0x0007f639, 0x57d5feb4
.word 0x79c63924, 0x1a11531e, 0x8390901a, 0x7437273b, 0x0887ae86, 0xb362600f, 0x177f33bb, 0x2fc9f2fc
.word 0x3af05890, 0x37749023, 0x11cb524e, 0x4e3c408f, 0xbd1aab40, 0x1a4fe759, 0x4d5115a0, 0x5177840e
.word 0x827cd8be, 0xbbcd12a9, 0xee4a3553, 0x4c9221c1, 0x10859758, 0x07e659eb, 0xff3d6986, 0xc2eb6675
.word 0x399c45ee, 0x65021529, 0xf717d929, 0xb060f91c, 0xf23e66bb, 0x0f5bdac2, 0x830962d7, 0x97ba1ea8
.word 0xe6b88ae4, 0x5a5001c8, 0x951be06d, 0x8dcb34c0, 0x5be90321, 0x469e0fa2, 0xd26be0c7, 0xb03ec26b
.word 0x6052171f, 0x6f189dbb, 0x42685a0b, 0x5c71d624, 0xc09f090d, 0xe391dbf5, 0xe7763ecd, 0x699a869d
.word 0xab73fdcc, 0xbb3cd890, 0xb8bc9e72, 0x53a469d5, 0x2a54014a, 0xb321ae37, 0x2c899e5b, 0x7931c83e
.word 0x4efdf54a, 0x9570128a, 0xcd2f35b9, 0xe6933971, 0x46ef8f26, 0x50d59d57, 0xf438eb11, 0xfb185f73
.word 0x28da93b2, 0x4e2f293f, 0xec6e9315, 0x15382fce, 0x0ab25160, 0x0e670769, 0xf4ef9e9a, 0x30695525
.word 0xbeb50403, 0xcad3181b, 0x20e10f4b, 0xcef8cf09, 0x465bbe81, 0x0109bdb2, 0x84f15db9, 0xc56b8fb4
.word 0xd276014e, 0xc722a449, 0x8add3a8c, 0x6885dcae, 0xc04b7cdf, 0x150e9619, 0x0a27a972, 0x8e83507e
.word 0x2e58cbd0, 0xea9c6f3b, 0xbe136ec0, 0x0b27e2e8, 0x4ef54d05, 0x4c0b6311, 0x712f3836, 0x1e9464a5
.word 0xb4bd4cb4, 0x2cceab88, 0x592fbc16, 0x909f5e88, 0xc818f873, 0x907dbca3, 0x54a02c9f, 0x9814e690
.word 0x921de74b, 0x0fa72b8f, 0x227407c8, 0x64a863ee, 0xea2d4916, 0x799522dd, 0x22eac3c1, 0xe83fb2bc
.word 0x476d2440, 0x2b4064f9, 0x32dcc37a, 0x2c7c395e, 0x9fba1d72, 0x9c6efb18, 0x72a27d80, 0x1f4166cb
.word 0x858558ab, 0xbcee511e, 0x6cf983b0, 0x7a3b09ef, 0x4c167dc6, 0x46b98259, 0x1322736f, 0xf077de70
.word 0xe8e0db7d, 0x173eece4, 0x080f32f7, 0x61a93a5f, 0x26bfb880, 0x6b11f9cb, 0xc130d4b2, 0xb055f660
.word 0xff279a22, 0xc4f657e3, 0x8bba161d, 0x147244e6, 0x2f7b078a, 0xc90364fa, 0x5952e95f, 0xda3a88c4
.word 0x336abf25, 0xb0b735b3, 0xb52cda82, 0xeaac17cf, 0x47087ea2, 0xaac26561, 0x565c60bc, 0x7150e5ae
.word 0x9c156786, 0x5a624971, 0xc9b69766, 0x4b1d1f4b, 0x5a2258fb, 0x78976d56, 0x96dd7667, 0xfa2f6b49
.word 0xef1e7bd0, 0xbb00968d, 0x0c085c8a, 0xf081cb17, 0x26f0e4a1, 0x5164fd73, 0x478eabcf, 0x89559312
.word 0xe37836af, 0xd27ca510, 0x40d19cda, 0x0b89e0b5, 0x34b5384f, 0x2884abba, 0x92083bd5, 0x86827a13
.word 0x9ba87497, 0x576522f7, 0xb2b9967a, 0xe114cd71, 0x1a6913e6, 0x70bb930d, 0xf29541df, 0xa7dd79c5
.word 0x042c68d0, 0xa1879ad7, 0x43a71c39, 0x2ef88a49, 0xbd0259f3, 0x3a7d2f8f, 0x7afea7b0, 0x0ac8bfc5
.word 0x4192c49a, 0x2c9f349d, 0x51bd0a5e, 0x563816af, 0x541c5422, 0xae4ac0ad, 0x1636aaef, 0x0d058126
.word 0x7ad27d19, 0x2543ce3e, 0x19b8c8cc, 0xb716664f, 0x1f0e9e94, 0x475a58ba, 0x0dc6a648, 0x230c97a2
.word 0xfd1305fe, 0x8e717a4c, 0x1bb5c516, 0x748299bd, 0xa139fd88, 0x94b275fc, 0x9e601ceb, 0x65a93dff
.word 0x610adcf9, 0x01268a2d, 0x49e701f3, 0x7f2b8279, 0xc700ead6, 0xed57dc9b, 0x234e270d, 0x14e738c8
.word 0x350cb881, 0xd8f15c50, 0xa00bbc25, 0xfccce87f, 0x69bce0d8, 0x41655d26, 0x1bfa7897, 0x66bf5100
.word 0x973d04ee, 0x45af7fb6, 0x580ad508, 0x9078f680, 0x9ddb30bb, 0x19173b20, 0xe3fa194d, 0x470b8183
.word 0x0231ef9f, 0xb8064ba8, 0x74d5cc01, 0x21cf48ed, 0x70a498b7, 0x0b962269, 0x8b958f6e, 0xd2925f23
.word 0xce9b20df, 0x74a8b968, 0x5f1198dc, 0x2e078ce0, 0xc2a57e1d, 0x488755ed, 0xb278d673, 0x220126f2
.word 0x6191a7de, 0x30b44450, 0x4e9882a4, 0xc2ada980, 0x6b981516, 0xfa9a1ecb, 0x9418458f, 0x67980035
.word 0x89c59cff, 0x0881fb9a, 0xcfcd3a67, 0x32c4ca04, 0x2136fa5d, 0xfd401c3c, 0xdc331310, 0x661c5b17
.word 0x2c02cd9d, 0x3c5e2194, 0x9845b872, 0xf08c081b, 0xcf9e77e5, 0x4232bbd2, 0xc73740d6, 0x74d56a77
.word 0x3b69564e, 0xf98c5cae, 0x4f0fc13f, 0x9831f182, 0xa8aaba02, 0x5fae6e3a, 0x0886a082, 0xa6adb54e
.word 0x5653f657, 0x78ff196f, 0x5bfa7b0a, 0xecfc6c2a, 0x4a3d4a2d, 0xa458e440, 0x9ce29ca3, 0xf9cbe692
.word 0x79081db1, 0x70fc250e, 0x09f6fcc5, 0x88e2e616, 0x60c82133, 0xe8b40c3e, 0x78891bf4, 0x6f2c3aa1
.word 0x68f64e8c, 0x59d7fdd4, 0xb3e0ff4e, 0xd89e0db1, 0x9088d888, 0x6976798e, 0xd116b786, 0xd819e0bc
.word 0x18c35ada, 0xdb973d0f, 0x4daef55b, 0xd83e036b, 0x5840dd2c, 0xdf4d0674, 0xbcb1b5b5, 0xcb8e1ef6
.word 0x6a4493d4, 0xdab46e12, 0xc036a5ac, 0x8d7b50e4, 0x553f7739, 0x45999a08, 0x4dd37ea3, 0xc1446106
.word 0x95d47272, 0xa9fdb14f, 0xf6705cf9, 0xbb618bec
.section .region_1,"aw",@progbits;
region_1:
.word 0x3345b99a, 0x88977e53, 0xc619ec62, 0x05f75048, 0x2ad1dd66, 0x669c09e5, 0x084201f4, 0xc5c3ab00
.word 0x316ecc1b, 0x1204dd20, 0x5cdebb16, 0x049e9251, 0x584f5e0f, 0x874bbdfb, 0x4c6e013d, 0xc6b7a596
.word 0x34f00f90, 0x23d34a46, 0x3151f1fc, 0x8d51e183, 0x4f33ee84, 0x64efd0cc, 0x419565c5, 0xc30601ff
.word 0x39a2bd0a, 0x9bcbce7b, 0x44d6d899, 0xcc550fe0, 0x67addd55, 0xe9ef3b28, 0xd7d45cc3, 0x6224e3b0
.word 0x32b30174, 0x134de8e7, 0x2cf61175, 0xd58b5986, 0xd8fa9903, 0x3af653ad, 0x6d60c728, 0xae44df35
.word 0x320e59eb, 0xb2bca495, 0x5554ba39, 0x3388c590, 0x0e1aa6ed, 0x0b2d210f, 0x993dcc10, 0x7bc4a084
.word 0x4e7d95cc, 0xd37a25ca, 0x43105f19, 0xe7f40ce2, 0xd5616fe5, 0x9deeeee4, 0x468892de, 0xd78eb9c1
.word 0x62563e43, 0xaba06074, 0x4639183b, 0x2e6ea205, 0xbd103df4, 0xbcee79b0, 0xe94fd71f, 0x225ceb54
.word 0x0d9f0060, 0x0cc4843a, 0x8333b99d, 0x768b6bcc, 0xfd50e161, 0xc92401a1, 0x3555c6ad, 0x93392b3d
.word 0x0d9b00cd, 0x0ce4bc62, 0x3d1cae08, 0x8ad1c00f, 0x5b24db47, 0x18cef9f7, 0x2ec8f841, 0xd52c9696
.word 0xd22dfb72, 0x2baebc11, 0xdb6133bd, 0xa791ecc7, 0xec4eeff3, 0x3e6e31c8, 0x12356dbf, 0x96e8f08c
.word 0x5a59b269, 0x5b2c74be, 0x0f66d236, 0xfc204613, 0xe127be73, 0x491525e3, 0x0684295f, 0x7631d9d8
.word 0x0a512536, 0xa21946ac, 0x92e363df, 0x40ee11ad, 0xc4fb3445, 0x167aec9c, 0x710ef2f8, 0x7695e824
.word 0x10b3fc65, 0x466e561c, 0xe665bfba, 0xc67cd7f8, 0xe3745184, 0xc0c81fb2, 0x308699ac, 0xfec7ace7
.word 0x14ea2341, 0x85a05929, 0xcc5de774, 0xfb7d6d35, 0x3bbfdd5d, 0x369e36ac, 0x23423fd2, 0xb34af6d3
.word 0x51b46a74, 0x0ec75cf0, 0x76f7e58a, 0xb9bba000, 0x12d6a84f, 0x035faa9e, 0xc1fbd048, 0xdc71db91
.word 0xf7e7f719, 0x2e05738d, 0xa5be2fc7, 0x10e92103, 0xe8803c8e, 0x9cd857cc, 0x3619b8fc, 0x9bae3111
.word 0x95985dc9, 0xa5fcc11c, 0xdc9e2183, 0xb50a4aa2, 0x5556e69a, 0x6ef0b1f4, 0x750a9f01, 0x451d57cd
.word 0x26402fb6, 0x86bf085a, 0x869d82ad, 0x4fb01e0a, 0x0c1db3e3, 0xc36ee01f, 0xeb3be4aa, 0xbf823cf7
.word 0x20181ad6, 0xb0438756, 0xae604f9f, 0xa7f6c84e, 0x198f488f, 0x70891942, 0xee32b589, 0x5676c910
.word 0x813826bf, 0x9ec1bf6e, 0x50e8b56b, 0x2749317d, 0x9f944e20, 0x6b2eedf2, 0x35a3603f, 0x59b7c5a5
.word 0xd48fd541, 0x77430b13, 0x25ada920, 0xe44585cb, 0xaf4b82e3, 0xa05d6fce, 0xebd47a14, 0x042ca171
.word 0x95d1d9d8, 0x7447181c, 0xe3526bc3, 0xa5050c89, 0x95bf9de5, 0x059b93c7, 0xb3c0522c, 0x69004b2d
.word 0xd7128126, 0x67eaa03f, 0x3cbc3e43, 0xc55c2fa3, 0x1bb6bbee, 0x1fcf47ad, 0xe4e86e76, 0x8d8bff35
.word 0x2d126e6c, 0xf242b0b9, 0xd0b32099, 0xd5edabc8, 0x46c44e0d, 0xe0399b40, 0xbafb6f4a, 0xfb5a0dd6
.word 0x1ab1b4ab, 0x56b9cd56, 0x08af78b0, 0x6a344455, 0x4d14d801, 0x38336f9f, 0xb1c2d61c, 0x231c2f41
.word 0x6220195e, 0x74782368, 0x43872c6d, 0x01720710, 0x121c3c18, 0x0359ec46, 0x64f06b16, 0x0923de2c
.word 0xd1e6c076, 0x12e2c3cf, 0x71d6e81e, 0xe6683bf7, 0x77a2f99b, 0xa083ff6f, 0xf85e3895, 0xc8866062
.word 0xcd32e756, 0x4c77c98e, 0xc4602620, 0x1fa1a402, 0x2bbb6199, 0xb245e83f, 0x2afc9014, 0xecbd5578
.word 0x492fb234, 0xc4baae25, 0x7b212bad, 0x14fe8791, 0x8e48a17f, 0x7f67e1e1, 0xe2d4730b, 0x26d286e0
.word 0xea4f9e0a, 0x27e5fefe, 0xa6a9d28e, 0x048d7a0f, 0x70e3a678, 0xe6f84ec7, 0x0b9f57ba, 0x1f5c08f8
.word 0xe5913604, 0x77c518a9, 0xe4ddc069, 0x58add994, 0x5abf16ee, 0x5a92b026, 0x7248ffdb, 0xb3c106f1
.word 0x455b1ef4, 0x6b875590, 0xe1b15f8b, 0x75523ee1, 0xd091af66, 0x38d0484c, 0x96dee934, 0xbe01d416
.word 0x500afd9e, 0x7e1f9ca6, 0xc1944195, 0x9e040ca0, 0x3bf15367, 0xe316b40f, 0xf668fecc, 0x26cbece6
.word 0x00bda225, 0xbf7d4267, 0x2a400e2e, 0x46e897ff, 0xd537a066, 0xa15f9b68, 0x8ef5d638, 0x8c4b0620
.word 0x42f79452, 0x4e39dac9, 0xfe6d0f3e, 0xf0ea57a2, 0x5756e24e, 0x0c63d1d1, 0xca1b0013, 0x0acde35f
.word 0x2cd1bee2, 0x5d90560c, 0x0f66af90, 0x29f4c9af, 0xc6416e49, 0x0256835c, 0xc375f2c1, 0x9f5440bc
.word 0xe7c26614, 0x363be280, 0x5eae37dc, 0xd21b8784, 0xe6e266ba, 0xe3ffadc9, 0xc6fe82b5, 0xaa58a567
.word 0x3ed3cdb8, 0x38963bdc, 0x7572c999, 0x7626947e, 0xed2d0d94, 0xfc4eac21, 0x016fca49, 0x6457c9ff
.word 0x52735570, 0xe7c8d47a, 0x47b84b80, 0x06724385, 0x7bf90639, 0x41fa09c9, 0x8c0cab15, 0xf9f09984
.word 0x981aa4b0, 0xd021eece, 0xcaec052d, 0xa368ac20, 0xd6392081, 0x9776e114, 0x6b3342df, 0x3432e0ef
.word 0xfaff2860, 0xc0229d95, 0x061e640d, 0x5773bb5a, 0xd71f5521, 0x91505ed7, 0xef189c65, 0xf04988fa
.word 0x5424973c, 0x61cfac74, 0x064ccea7, 0xd9b78c2a, 0xe727bdfe, 0x956f5d30, 0xeec606fb, 0xe987d227
.word 0xe1c97a12, 0x540c2815, 0xb3e740c7, 0xdf4be4df, 0x22cdb2db, 0xb269d27a, 0xc0a49966, 0xaeecb751
.word 0x0e002377, 0x6027ebbd, 0x5b7e065d, 0x9c6c2db7, 0x2d066712, 0xf7d6982e, 0x1d7a0089, 0x48079128
.word 0xf8990491, 0x9cd3c12e, 0x3dc9f3a0, 0xdf6bb5d3, 0xf9501caf, 0xa44430bc, 0x1399b1b6, 0x3330b499
.word 0x70e592d7, 0x9bb42e3c, 0x1a444622, 0x17a264ed, 0x8d7d8f37, 0x355d096e, 0x46a5675a, 0x4560de21
.word 0x96170f0c, 0xbd458c2c, 0x45d9d2a1, 0x6f0ca2ce, 0x7ac8173a, 0xfed1183f, 0x64d26644, 0x830de81d
.word 0xdb8ee49e, 0x1325709d, 0xf371eda2, 0x91989001, 0xe357dc10, 0x6149fdee, 0xdb30c8cc, 0x651f9973
.word 0x7421a930, 0x620a560f, 0x55cb0249, 0xfbeccfbe, 0xeb4417e6, 0x090fc245, 0x90d47d27, 0xab29cb7b
.word 0x7d842ecf, 0xf46d4371, 0xd3dff865, 0x16cb3b3f, 0xfa4bab70, 0x9eefaa35, 0x21dd7fce, 0x83b7b00e
.word 0xedc71d43, 0xb48c5886, 0xaffd93f1, 0x570a10d9, 0xa79cb391, 0xc3d4ebd4, 0xbfc0faff, 0xd3d2ade0
.word 0x130dbd39, 0x3727cb2c, 0x1ef486e2, 0xfcdd7e86, 0x86e60228, 0x75f0d610, 0xce7eb7a9, 0xce20529a
.word 0xe6a0a36e, 0x91178893, 0x73100051, 0x1cf85755, 0x51c1d87b, 0xe45d1836, 0xae00faa0, 0x0e84e87e
.word 0x805bea42, 0xf0bb74a1, 0xde8f9b63, 0x7b4e7fb9, 0xcbeace86, 0xea6d6aa0, 0x86ea3dc4, 0xc3592d99
.word 0xb8cac383, 0xe5e7af5a, 0x2f9fe64c, 0x74902697, 0x8e763dea, 0x774c9f17, 0x447e51f9, 0xbdb62e3d
.word 0x4564c0da, 0x1869b428, 0x72f241e2, 0x10d085d5, 0x0ef51c89, 0x7be70f95, 0x81824f39, 0xa6e9e0bf
.word 0x95d67318, 0x00ca2999, 0x436c6fa8, 0xf123075f, 0x3c9b3fe8, 0x5ea2e7da, 0x799529be, 0x4568cb23
.word 0x8cbf0efa, 0x3b08f433, 0x6d4f2a41, 0xde4d33e7, 0x0a096a40, 0x479455e3, 0x13c2d119, 0x076697d8
.word 0x2988bd74, 0x9fcbcdd8, 0xb70bf7cd, 0x9eed1155, 0xde53ba7f, 0xa4dc52bb, 0x96f89f0f, 0xcd4dca98
.word 0x2ea9736e, 0xf4225061, 0xe25829dc, 0x0d883f1c, 0xb48eb75f, 0xa1635784, 0x8b26eee2, 0xc7da0237
.word 0xba6636cf, 0xf97025d1, 0x34b5b7ab, 0xbce912a2, 0x14a5e2a9, 0xac8b2969, 0xaab60c4e, 0x8b2073d9
.word 0x1ae46fba, 0x7c5e7d43, 0x0b272669, 0xfd8e3495
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
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x9, x20, zero
                  csrr x2, 0x300 # MSTATUS
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 31
                  bne x2, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x2, 0x341 # MEPC
                  csrr x2, 0x342 # MCAUSE
                  li x25, 0x3 # BREAKPOINT
                  beq x2, x25, ebreak_handler
                  li x25, 0x8 # ECALL_UMODE
                  beq x2, x25, ecall_handler
                  li x25, 0x9 # ECALL_SMODE
                  beq x2, x25, ecall_handler
                  li x25, 0xb # ECALL_MMODE
                  beq x2, x25, ecall_handler
                  li x25, 0x1
                  beq x2, x25, instr_fault_handler
                  li x25, 0x5
                  beq x2, x25, load_fault_handler
                  li x25, 0x7
                  beq x2, x25, store_fault_handler
                  li x25, 0xc
                  beq x2, x25, pt_fault_handler
                  li x25, 0xd
                  beq x2, x25, pt_fault_handler
                  li x25, 0xf
                  beq x2, x25, pt_fault_handler
                  li x25, 0x2 # ILLEGAL_INSTRUCTION
                  beq x2, x25, illegal_instr_handler
                  csrr x25, 0x343 # MTVAL
                  1: la x18, test_done
                  jalr x1, x18, 0

ecall_handler:    
                  la x2, _start
                  sw x0, 0(x2)
                  sw x1, 4(x2)
                  sw x2, 8(x2)
                  sw x3, 12(x2)
                  sw x4, 16(x2)
                  sw x5, 20(x2)
                  sw x6, 24(x2)
                  sw x7, 28(x2)
                  sw x8, 32(x2)
                  sw x9, 36(x2)
                  sw x10, 40(x2)
                  sw x11, 44(x2)
                  sw x12, 48(x2)
                  sw x13, 52(x2)
                  sw x14, 56(x2)
                  sw x15, 60(x2)
                  sw x16, 64(x2)
                  sw x17, 68(x2)
                  sw x18, 72(x2)
                  sw x19, 76(x2)
                  sw x20, 80(x2)
                  sw x21, 84(x2)
                  sw x22, 88(x2)
                  sw x23, 92(x2)
                  sw x24, 96(x2)
                  sw x25, 100(x2)
                  sw x26, 104(x2)
                  sw x27, 108(x2)
                  sw x28, 112(x2)
                  sw x29, 116(x2)
                  sw x30, 120(x2)
                  sw x31, 124(x2)
                  la x18, write_tohost
                  jalr x0, x18, 0

instr_fault_handler:
                  add x20, x9, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

load_fault_handler:
                  add x20, x9, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

store_fault_handler:
                  add x20, x9, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

ebreak_handler:   
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x20, x9, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

illegal_instr_handler:
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x20, x9, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x2, 0x300 # MSTATUS;
                  csrr  x2, 0x304 # MIE;
                  csrr  x2, 0x344 # MIP;
                  csrrc x2, 0x344, x2 # MIP;
                  add x20, x9, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
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
