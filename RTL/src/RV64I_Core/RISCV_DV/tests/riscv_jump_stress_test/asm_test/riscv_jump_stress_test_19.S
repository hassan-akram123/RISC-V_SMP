.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x17, h0_start
jalr x0, x17, 0
h0_start:
                  li x20, 0x40000100
                  csrw 0x301, x20
kernel_sp:        
                  la x8, kernel_stack_end

trap_vec_init:    
                  la x20, mtvec_handler
                  ori x20, x20, 0
                  csrw 0x305, x20 # MTVEC

mepc_setup:       
                  la x20, init
                  csrw 0x341, x20

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x20, 0x1800
                  csrw 0x300, x20 # MSTATUS
                  mret
init:             
                  li x0, 0xc
                  li x1, 0x9
                  li x2, 0x0
                  li x3, 0x80000000
                  li x4, 0xfff3c760
                  li x5, 0x39ac4bee
                  li x6, 0x0
                  li x7, 0x9
                  li x9, 0xc
                  li x10, 0x6dd623b1
                  li x11, 0xe244982a
                  li x12, 0x3e55cfa8
                  li x13, 0xfca3cb7b
                  li x14, 0x5
                  li x15, 0x80000000
                  li x16, 0x80000000
                  li x17, 0xc
                  li x18, 0x5
                  li x19, 0x0
                  li x20, 0x6
                  li x21, 0xb8dd003b
                  li x22, 0xf9c44e92
                  li x23, 0x80000000
                  li x24, 0x80000000
                  li x25, 0xa55443b9
                  li x26, 0x0
                  li x28, 0xf13f1d16
                  li x29, 0xf0574e3d
                  li x30, 0xf5439d97
                  li x31, 0x21fe285c
                  la x27, user_stack_end
main:             sltiu        sp, a1, 1847
                  add          s3, zero, sp
                  auipc        t3, 352964
                  addi         s4, s2, -23
                  xori         s4, s10, -1785
                  slli         s1, s1, 26
                  srl          tp, ra, tp
                  la           ra, sub_1
                  slti         zero, t5, -1362
                  addi         ra, ra, -48
                  slt          a6, t5, gp
                  nop
main_j1:          jalr         ra, ra, 48 #jump main -> sub_1
                  ori          ra, t1, 809
                  xor          t2, a6, s0
                  bltu         ra, a0, 13f
                  or           s3, t3, a6
                  or           s7, ra, t0
                  xori         t4, a0, -621
                  srl          a3, s2, a1
                  and          s8, t2, t2
                  sub          t5, t1, s4
                  andi         a0, sp, 1055
                  sub          a2, s6, s9
13:               addi         s3, s9, 1756
                  andi         a5, s3, -1633
                  xor          s3, s9, tp
                  bgeu         a0, s0, 32f
                  slli         a3, s6, 22
                  add          gp, a7, a4
                  srl          t2, s0, s9
                  add          s1, s2, s1
                  bltu         s6, s10, 24f
                  and          a6, sp, t2
                  or           a0, ra, a5
                  addi         a3, t3, 1134
                  la           s3, sub_1
                  add          a2, s10, s0
                  addi         s3, s3, -675
                  add          t5, s3, t3
                  slt          t2, tp, t3
                  add          a6, a5, s7
                  lui          s9, 270845
                  add          s5, a4, t5
                  and          a4, a7, a7
                  sll          t2, s1, a1
main_j2:          jalr         ra, s3, 676 #jump main -> sub_1
                  xori         t4, t6, 1341
24:               and          a5, t6, a3
                  srai         gp, a1, 22
                  sltiu        a3, s3, 1715
                  blt          s2, t3, 30f
                  blt          t6, a4, 35f
                  add          a1, t2, t2
30:               srl          s8, a0, s10
                  blt          t3, s2, 32f
32:               sra          s5, s2, a7
                  add          s5, s2, s7
                  bne          s0, t2, 35f
35:               slt          tp, s7, a7
                  sltu         zero, a0, a4
                  sra          s4, s9, a2
                  bne          s7, s9, 40f
                  add          t2, t1, a0
40:               and          zero, a1, gp
                  and          s7, t6, s1
                  bge          a4, s11, 62f
                  sra          s3, tp, s8
                  slt          a1, t2, a0
                  bne          t6, ra, 58f
                  andi         s9, s7, 1244
                  add          s6, a7, s0
main_0:           jal          ra, 14f
0:                jal          ra, 7f
1:                jal          ra, 15f
2:                jal          ra, 8f
3:                jal          s7, 4f
4:                jal          t1, 13f
5:                jal          ra, 9f
6:                jal          s5, 5b
7:                jal          ra, 3b
8:                jal          ra, 12f
9:                jal          t6, 11f
10:               jal          t1, 16f
11:               jal          s10, 1b
12:               jal          t0, 10b
13:               jal          ra, 17f
14:               jal          t1, 2b
15:               jal          ra, 0b
16:               jal          ra, 6b
17:               ori          t5, t3, -1280
                  and          s5, s7, t6
                  slti         a2, a5, -1249
                  andi         s8, s7, -1404
                  or           t2, t4, tp
                  sll          a0, t2, t1
                  sll          ra, s7, s6
                  auipc        a0, 74265
                  sub          s9, sp, s4
                  bgeu         s7, gp, 62f
                  andi         t0, zero, -1562
58:               beq          sp, a3, 62f
                  nop
                  auipc        s7, 159288
                  srl          s8, t1, t0
62:               xori         s3, gp, 787
                  la x17, test_done
                  jalr x0, x17, 0
test_done:        
                  li gp, 1
                  ecall
sub_5:            bge          a6, s8, sub_5_stack_p
                  add          tp, t4, t1
                  srai         t5, a2, 11
                  slt          t3, s11, s7
sub_5_stack_p:    addi         s11, s11, -24
                  srai         s7, a5, 6
                  ori          s9, a2, -443
                  srl          t6, s5, ra
                  sw           ra, 4(s11)
                  sub          zero, s2, tp
sub_5_0:          jal          ra, 15f
0:                jal          ra, 17f
1:                jal          t1, 8f
2:                jal          t1, 6f
3:                jal          tp, 9f
4:                jal          ra, 16f
5:                jal          s1, 11f
6:                jal          a1, 12f
7:                jal          ra, 2b
8:                jal          a1, 20f
9:                jal          t1, 0b
10:               jal          ra, 14f
11:               jal          ra, 4b
12:               jal          ra, 10b
13:               jal          ra, 3b
14:               jal          ra, 5b
15:               jal          t1, 13b
16:               jal          s7, 1b
17:               jal          ra, 19f
18:               jal          ra, 7b
19:               jal          t1, 18b
20:               xori         a5, s2, -527
sub_5_1:          jal          ra, 8f
0:                jal          t1, 1f
1:                jal          sp, 13f
2:                jal          s8, 7f
3:                jal          t0, 0b
4:                jal          t0, 3b
5:                jal          s6, 10f
6:                jal          t1, 5b
7:                jal          t1, 16f
8:                jal          a5, 9f
9:                jal          ra, 14f
10:               jal          s5, 11f
11:               jal          ra, 2b
12:               jal          ra, 15f
13:               jal          ra, 6b
14:               jal          s7, 12b
15:               jal          s10, 4b
16:               or           s5, a4, a3
                  nop
                  beq          s4, zero, 18f
                  or           a5, a0, s5
                  bge          t5, s9, 6f
                  blt          zero, gp, 13f
                  sltu         t2, a1, t4
6:                bge          t2, t1, 24f
                  sltu         s9, s10, gp
                  andi         s3, s11, -1126
                  srai         a2, s8, 10
                  xori         a4, a1, 1746
                  bltu         a2, t0, 31f
                  sltu         t3, a2, a4
13:               srl          t5, tp, t3
                  bltu         t0, t6, 15f
15:               bgeu         s11, a2, 17f
                  slt          t0, s0, t3
17:               bge          s5, t0, 22f
18:               srli         sp, s0, 25
                  or           s9, s3, s6
                  xori         s5, a1, -1243
                  addi         s4, s11, -1930
22:               bltu         s6, s7, 41f
                  add          sp, t0, t1
24:               ori          s4, t6, -64
                  bge          t1, gp, 30f
                  ori          ra, s3, 1447
                  bgeu         t4, a0, 38f
                  sltiu        t1, gp, -913
                  or           sp, sp, sp
30:               slli         s10, t3, 0
31:               and          s6, s5, s4
                  sltiu        t6, t4, -756
                  ori          a5, s8, 841
                  beq          a1, t6, 52f
                  auipc        s3, 511499
                  blt          a3, s5, 43f
                  srai         s10, s8, 31
38:               beq          s11, zero, 54f
                  xor          s3, ra, s10
                  andi         t1, s9, 247
41:               slt          t6, t5, t6
                  slt          s5, a5, s5
43:               ori          a2, a0, 1671
                  ori          a6, a0, -589
                  bltu         ra, t3, 50f
                  bltu         sp, s3, 54f
                  xori         s9, a4, 2015
                  bgeu         t4, s8, 62f
                  sltiu        a2, tp, -670
50:               and          s6, s11, a1
                  sltiu        s4, s0, 357
52:               beq          t0, a7, 59f
                  auipc        a2, 1036414
54:               bge          a6, a2, 72f
                  blt          a3, s10, 63f
                  ori          a4, t2, -1857
                  add          s10, gp, t0
                  beq          zero, gp, 73f
59:               sra          a1, t6, t6
                  add          s9, t6, t0
                  slli         s2, a2, 19
62:               ori          a6, a7, -300
63:               andi         sp, s0, -2004
                  sra          t4, a4, a1
                  slti         s9, t1, -571
                  auipc        s7, 344521
                  xor          t5, s9, t4
                  or           a5, s11, a0
                  sll          t3, s8, a2
                  addi         t1, s10, 1741
                  and          ra, gp, s8
72:               add          a0, s8, t6
73:               bgeu         t1, zero, 82f
                  slt          t5, s9, gp
                  or           gp, t2, s4
                  andi         sp, t6, -475
                  slti         t1, s6, 381
                  slt          zero, a4, a2
                  addi         gp, s2, -787
                  srli         t0, a5, 25
                  lui          s6, 179466
82:               ori          s7, s6, 1775
                  ori          s9, s8, -1697
                  sll          t0, t6, zero
                  ori          t6, gp, 1462
                  srl          ra, a4, t2
                  bltu         s0, t0, 90f
                  bltu         a4, t5, 100f
                  sra          t5, t6, a6
90:               lui          sp, 683619
                  bge          t0, s11, 93f
                  or           t5, s11, t5
93:               bne          a5, t0, 104f
                  sltiu        a0, a7, 1679
                  sltu         a4, gp, s10
                  srl          a3, zero, s10
                  blt          s8, s8, 104f
                  lui          t4, 884338
                  and          s9, a7, a3
100:              add          s1, a1, s9
                  andi         tp, s8, -1556
                  bge          gp, t1, 113f
                  srli         s1, s6, 17
104:              slt          s9, s4, s7
                  beq          s6, s5, 124f
                  nop
                  bge          tp, a3, 125f
                  ori          t6, a1, 2018
                  sltiu        a0, a1, 242
                  sltu         gp, s5, a6
                  sra          s8, t3, s6
                  slli         s9, s6, 31
113:              addi         a4, zero, -163
                  sra          t0, a5, a5
                  slti         t1, s6, -287
                  addi         t4, a7, 1916
                  beq          zero, gp, 128f
                  srli         s3, t0, 10
                  sll          tp, a1, t5
                  xor          gp, s0, ra
                  bne          s10, s4, 129f
                  bne          a0, t3, 127f
                  lui          a3, 775074
124:              bge          a4, t0, 126f
125:              lui          a5, 44774
126:              slli         s8, a1, 15
127:              or           t1, a3, ra
128:              xori         s6, a5, -1025
129:              srai         a6, a1, 16
                  sltu         t1, t4, a0
                  srli         t0, s10, 24
                  blt          s3, a0, 144f
                  slt          s9, t6, s9
                  auipc        s9, 985593
                  sub          t1, s3, s2
                  addi         t2, t2, 933
                  sub          s5, s8, t1
                  auipc        s7, 965380
                  srli         s9, a7, 5
                  sltiu        a5, s4, 901
                  sltiu        s3, t3, 203
                  slt          t2, s0, tp
                  ori          a6, t4, -651
144:              sra          t3, a2, s0
                  andi         a1, a7, -1749
                  slli         t0, t5, 0
                  auipc        zero, 898595
                  lw           ra, 4(s11)
                  ori          tp, s7, 1364
                  addi         s11, s11, 24
                  lui          s4, 248709
                  sltu         sp, s1, s11
203:              addi x11, x1, 0
203:              jalr x11, x11, 0
sub_4:            srl          a5, s6, t1
                  srli         s10, s8, 21
                  sltu         s6, sp, zero
                  andi         a5, gp, 1926
                  addi         s11, s11, -60
                  nop
                  slli         a2, a0, 15
                  srl          tp, zero, s8
                  srai         s3, t1, 3
                  xori         s5, a3, 49
                  sw           ra, 4(s11)
                  addi         s10, s1, 307
sub_4_1:          jal          ra, 9f
0:                jal          ra, 14f
1:                jal          ra, 3f
2:                jal          ra, 8f
3:                jal          s2, 18f
4:                jal          gp, 10f
5:                jal          tp, 4b
6:                jal          ra, 13f
7:                jal          s6, 6b
8:                jal          a2, 20f
9:                jal          ra, 22f
10:               jal          t1, 1b
11:               jal          a2, 12f
12:               jal          ra, 23f
13:               jal          s7, 21f
14:               jal          ra, 17f
15:               jal          ra, 2b
16:               jal          ra, 7b
17:               jal          t2, 19f
18:               jal          s6, 11b
19:               jal          ra, 16b
20:               jal          ra, 0b
21:               jal          t1, 5b
22:               jal          ra, 15b
23:               sltu         a0, a0, t1
sub_4_0:          jal          ra, 8f
0:                jal          ra, 17f
1:                jal          s1, 12f
2:                jal          t1, 11f
3:                jal          ra, 0b
4:                jal          a0, 3b
5:                jal          ra, 15f
6:                jal          ra, 5b
7:                jal          ra, 16f
8:                jal          a1, 13f
9:                jal          t1, 2b
10:               jal          s2, 4b
11:               jal          t0, 6b
12:               jal          t1, 7b
13:               jal          ra, 9b
14:               jal          t2, 10b
15:               jal          ra, 1b
16:               jal          ra, 14b
17:               srli         s2, s5, 27
sub_4_12:         jal          ra, 20f
0:                jal          ra, 19f
1:                jal          t0, 21f
2:                jal          t1, 15f
3:                jal          ra, 0b
4:                jal          ra, 2b
5:                jal          t2, 22f
6:                jal          t1, 7f
7:                jal          s3, 3b
8:                jal          ra, 4b
9:                jal          ra, 8b
10:               jal          t1, 17f
11:               jal          t1, 9b
12:               jal          t0, 13f
13:               jal          t0, 23f
14:               jal          a1, 5b
15:               jal          t2, 6b
16:               jal          ra, 1b
17:               jal          ra, 18f
18:               jal          ra, 11b
19:               jal          a5, 16b
20:               jal          t1, 10b
21:               jal          ra, 14b
22:               jal          ra, 12b
23:               xor          s6, t4, s9
sub_4_8:          jal          ra, 15f
0:                jal          t1, 18f
1:                jal          ra, 4f
2:                jal          t1, 20f
3:                jal          ra, 19f
4:                jal          ra, 28f
5:                jal          ra, 3b
6:                jal          sp, 23f
7:                jal          a5, 14f
8:                jal          ra, 16f
9:                jal          s9, 0b
10:               jal          t1, 26f
11:               jal          s3, 25f
12:               jal          a2, 21f
13:               jal          t1, 8b
14:               jal          ra, 5b
15:               jal          t5, 13b
16:               jal          t1, 9b
17:               jal          t1, 7b
18:               jal          t3, 17b
19:               jal          t3, 1b
20:               jal          sp, 12b
21:               jal          t1, 29f
22:               jal          ra, 11b
23:               jal          ra, 2b
24:               jal          ra, 10b
25:               jal          s5, 27f
26:               jal          ra, 22b
27:               jal          t1, 6b
28:               jal          t1, 24b
29:               xori         s4, t6, -209
sub_4_11:         jal          ra, 10f
0:                jal          ra, 14f
1:                jal          t1, 8f
2:                jal          ra, 9f
3:                jal          ra, 1b
4:                jal          t2, 17f
5:                jal          ra, 11f
6:                jal          ra, 18f
7:                jal          a1, 6b
8:                jal          ra, 12f
9:                jal          ra, 16f
10:               jal          s6, 4b
11:               jal          t1, 0b
12:               jal          ra, 13f
13:               jal          ra, 2b
14:               jal          ra, 19f
15:               jal          ra, 20f
16:               jal          sp, 15b
17:               jal          tp, 7b
18:               jal          ra, 5b
19:               jal          gp, 3b
20:               jal          ra, 21f
21:               xor          a4, s6, a1
sub_4_5:          jal          ra, 17f
0:                jal          t1, 1f
1:                jal          t1, 10f
2:                jal          ra, 13f
3:                jal          s2, 8f
4:                jal          a6, 15f
5:                jal          a0, 16f
6:                jal          sp, 2b
7:                jal          t2, 11f
8:                jal          ra, 18f
9:                jal          t1, 0b
10:               jal          t1, 6b
11:               jal          ra, 3b
12:               jal          s9, 4b
13:               jal          t2, 14f
14:               jal          ra, 12b
15:               jal          t1, 5b
16:               jal          ra, 7b
17:               jal          ra, 9b
18:               lui          a3, 1045471
sub_4_2:          jal          ra, 5f
0:                jal          s8, 3f
1:                jal          ra, 27f
2:                jal          t1, 9f
3:                jal          t1, 23f
4:                jal          sp, 22f
5:                jal          s1, 0b
6:                jal          s8, 20f
7:                jal          ra, 15f
8:                jal          t1, 2b
9:                jal          t1, 24f
10:               jal          sp, 16f
11:               jal          s2, 7b
12:               jal          t1, 4b
13:               jal          t1, 19f
14:               jal          ra, 29f
15:               jal          t0, 1b
16:               jal          s1, 14b
17:               jal          t1, 25f
18:               jal          t1, 28f
19:               jal          a1, 6b
20:               jal          ra, 11b
21:               jal          ra, 8b
22:               jal          ra, 10b
23:               jal          ra, 26f
24:               jal          t3, 12b
25:               jal          t1, 21b
26:               jal          ra, 13b
27:               jal          t2, 18b
28:               jal          ra, 17b
29:               or           t5, a4, a0
sub_4_3:          jal          ra, 7f
0:                jal          t5, 15f
1:                jal          t1, 18f
2:                jal          s8, 25f
3:                jal          t1, 21f
4:                jal          ra, 17f
5:                jal          ra, 6f
6:                jal          t1, 1b
7:                jal          ra, 22f
8:                jal          ra, 26f
9:                jal          t0, 14f
10:               jal          ra, 13f
11:               jal          a3, 9b
12:               jal          ra, 4b
13:               jal          s6, 20f
14:               jal          tp, 5b
15:               jal          t1, 2b
16:               jal          ra, 0b
17:               jal          ra, 10b
18:               jal          ra, 3b
19:               jal          t1, 12b
20:               jal          t5, 8b
21:               jal          ra, 24f
22:               jal          t5, 19b
23:               jal          tp, 11b
24:               jal          ra, 27f
25:               jal          t1, 23b
26:               jal          t1, 16b
27:               xor          zero, t1, zero
sub_4_7:          jal          ra, 18f
0:                jal          t4, 7f
1:                jal          t1, 15f
2:                jal          ra, 19f
3:                jal          t3, 2b
4:                jal          a5, 23f
5:                jal          t1, 12f
6:                jal          t1, 0b
7:                jal          tp, 10f
8:                jal          ra, 22f
9:                jal          gp, 5b
10:               jal          sp, 20f
11:               jal          t2, 14f
12:               jal          a0, 13f
13:               jal          ra, 1b
14:               jal          ra, 3b
15:               jal          ra, 16f
16:               jal          s1, 11b
17:               jal          t3, 6b
18:               jal          a4, 24f
19:               jal          s2, 4b
20:               jal          ra, 9b
21:               jal          ra, 25f
22:               jal          ra, 17b
23:               jal          t1, 21b
24:               jal          ra, 8b
25:               sltiu        ra, sp, -80
sub_4_13:         jal          ra, 14f
0:                jal          ra, 18f
1:                jal          ra, 6f
2:                jal          ra, 21f
3:                jal          ra, 11f
4:                jal          ra, 1b
5:                jal          ra, 8f
6:                jal          ra, 15f
7:                jal          tp, 9f
8:                jal          ra, 22f
9:                jal          t3, 13f
10:               jal          ra, 7b
11:               jal          ra, 16f
12:               jal          t1, 19f
13:               jal          ra, 12b
14:               jal          s4, 17f
15:               jal          sp, 0b
16:               jal          ra, 26f
17:               jal          a2, 2b
18:               jal          ra, 20f
19:               jal          ra, 29f
20:               jal          ra, 25f
21:               jal          ra, 5b
22:               jal          ra, 4b
23:               jal          t5, 27f
24:               jal          gp, 28f
25:               jal          sp, 23b
26:               jal          ra, 24b
27:               jal          ra, 3b
28:               jal          t1, 10b
29:               nop
sub_4_9:          jal          ra, 18f
0:                jal          t1, 17f
1:                jal          t1, 23f
2:                jal          ra, 21f
3:                jal          ra, 5f
4:                jal          ra, 0b
5:                jal          ra, 22f
6:                jal          s2, 2b
7:                jal          t1, 16f
8:                jal          t1, 6b
9:                jal          ra, 12f
10:               jal          s3, 7b
11:               jal          s3, 8b
12:               jal          t1, 11b
13:               jal          ra, 15f
14:               jal          a2, 13b
15:               jal          a5, 9b
16:               jal          a0, 20f
17:               jal          ra, 3b
18:               jal          s5, 19f
19:               jal          ra, 10b
20:               jal          t1, 4b
21:               jal          ra, 1b
22:               jal          s4, 14b
23:               sll          a5, a1, s8
sub_4_6:          jal          ra, 8f
0:                jal          ra, 6f
1:                jal          s3, 4f
2:                jal          ra, 1b
3:                jal          ra, 7f
4:                jal          t6, 11f
5:                jal          ra, 2b
6:                jal          ra, 10f
7:                jal          ra, 5b
8:                jal          tp, 9f
9:                jal          tp, 0b
10:               jal          ra, 3b
11:               auipc        t1, 460746
                  sltu         a5, a0, s1
                  slti         gp, a6, -1170
                  xori         a0, s3, 933
                  andi         t1, t5, 51
                  xori         gp, ra, -102
                  lui          sp, 106013
                  sltiu        a5, tp, 662
                  slt          sp, s5, s10
                  srl          a0, t4, a0
                  nop
                  sltu         a5, s8, a2
                  sltu         t0, s6, a3
                  bltu         s0, ra, 24f
                  and          a2, gp, t5
                  xor          t0, t3, s7
                  srli         t1, s3, 29
                  slti         a4, s0, 994
                  sltu         t3, s0, a6
                  andi         zero, s5, -1850
                  ori          s5, tp, -727
                  add          s5, s2, s6
                  add          s1, s8, a7
                  srai         gp, a4, 4
                  nop
24:               andi         s2, s10, -1927
                  ori          sp, t3, 1158
                  srai         t5, s5, 9
                  or           zero, gp, s2
                  beq          tp, a5, 35f
                  auipc        s7, 86642
                  xor          a5, s0, s3
                  slti         a2, t6, -845
                  bge          a2, s1, 46f
                  srl          t3, a5, t2
                  sltiu        t6, s9, 1420
35:               beq          a6, a3, 46f
                  add          s5, a3, t0
                  andi         s4, t6, 1680
                  beq          s8, gp, 39f
39:               bge          ra, s2, 44f
                  sra          a6, s1, s5
                  slli         tp, t5, 22
                  sltu         s6, a1, s3
                  addi         s9, t5, 1692
44:               xor          s6, t3, t3
                  ori          s1, s9, 509
46:               slti         a6, zero, -373
                  auipc        s9, 659158
                  auipc        a5, 10423
                  sltiu        sp, s6, 132
                  bge          s2, t4, 70f
                  slli         t2, a4, 4
                  slti         s8, sp, 108
                  nop
                  srai         a6, s1, 1
                  sra          a4, t1, s7
                  slli         a6, s11, 12
                  sub          t0, s9, a1
                  sltiu        t4, gp, 969
                  sub          t0, t2, tp
                  sltiu        s9, t4, -767
                  lui          ra, 431729
                  ori          s3, ra, 1168
                  ori          a5, gp, 712
                  srai         s3, t5, 31
                  andi         s1, tp, 1242
                  and          s5, s10, a2
                  bltu         t2, t0, 77f
                  sll          s4, s3, a5
                  srai         a0, tp, 3
70:               bgeu         t0, sp, 74f
                  lui          s7, 851829
                  slli         a6, t0, 20
                  and          s2, t5, gp
74:               ori          s7, s2, -1798
                  bne          gp, s1, 77f
                  slt          s2, a7, a1
77:               add          sp, a6, t4
                  lui          t4, 20585
                  auipc        s6, 323353
                  blt          s1, tp, 81f
81:               blt          t1, s0, 97f
                  and          a1, s3, s2
                  srl          s9, t1, t6
                  auipc        t2, 242647
                  sll          a1, s11, s2
                  or           t2, s5, gp
                  xor          s2, s5, t0
                  and          gp, tp, s8
                  bltu         s2, zero, 105f
                  bne          s6, t1, 92f
                  slt          zero, t1, a0
92:               sra          sp, a0, s3
                  slt          a2, a0, a6
                  auipc        a0, 641583
                  srli         t1, a6, 24
                  ori          sp, a4, 1983
97:               ori          a5, s6, 536
                  srai         t5, a3, 19
                  bltu         t6, a0, 104f
                  auipc        a0, 179229
                  sltu         a2, a6, a2
                  srli         s7, a4, 20
                  blt          a7, a0, 106f
104:              sll          a2, t2, t1
105:              beq          a5, a1, 125f
106:              andi         s9, t5, 191
                  sltu         t3, a7, t1
                  and          t5, a7, s7
                  srl          s4, s1, t5
                  bge          s5, s4, 130f
                  bgeu         t6, t6, 113f
                  sltiu        s6, sp, 875
113:              sub          s5, t4, ra
                  add          a2, gp, s5
                  sltu         t5, t4, a7
                  nop
                  addi         s5, s4, 667
                  sltu         tp, s4, s9
                  sra          t2, t4, s8
                  bne          s3, ra, 140f
                  bgeu         t3, s8, 124f
                  srl          ra, t1, t1
                  ori          s4, zero, 1618
124:              srli         ra, s6, 8
125:              bne          s8, t2, 138f
                  addi         gp, s0, -1651
                  srli         s3, a4, 26
                  srl          t3, s7, s2
                  beq          s4, s3, 140f
130:              addi         t1, s1, 77
                  andi         t6, s4, 1815
                  andi         s6, a3, 26
                  add          s9, a6, t2
                  slt          t5, a0, s8
                  sltu         a5, s9, s1
                  sltiu        s2, s4, 2045
                  xor          a3, s4, s10
138:              bne          a1, a0, 149f
                  bge          s9, a5, 140f
140:              sra          a2, zero, t2
                  slt          sp, t3, a5
                  srli         s6, s2, 27
                  addi         t1, t3, -440
                  sltu         tp, a2, s4
                  or           a1, s3, zero
                  sub          s10, s9, t2
                  ori          gp, t2, 1159
                  slt          tp, t1, gp
149:              andi         ra, t0, -319
                  ori          s5, a4, -222
                  add          s6, s5, t5
                  slt          s2, ra, gp
                  sltiu        s5, s0, -341
                  srai         a0, ra, 29
                  beq          a0, zero, 167f
                  ori          t4, a5, -1616
                  ori          sp, a0, -300
                  sltiu        sp, s11, 1320
                  slli         s10, t2, 8
                  blt          t3, a5, 163f
                  addi         sp, t3, 573
                  sltu         a5, s2, s4
163:              sltu         t2, t0, s2
                  add          t1, s3, s11
                  sltiu        zero, ra, 1128
                  bgeu         a3, t2, 167f
167:              bne          s7, t2, 181f
                  nop
                  sra          gp, s4, a7
                  bne          s2, s9, 179f
                  sll          s9, s11, a5
                  slli         ra, s5, 7
                  nop
                  srli         s10, t4, 21
                  beq          s4, s0, 195f
                  bltu         t5, s11, 190f
                  sra          t6, s4, ra
                  srl          s4, t4, a0
179:              sltiu        t1, t1, -1597
                  sltiu        s3, s4, -214
181:              srl          t0, t6, zero
                  slli         s7, sp, 19
                  sltiu        t2, t1, -1309
                  add          zero, a1, s1
                  sltiu        s8, a0, 1570
                  xor          t0, s2, tp
                  sub          s9, t4, s7
                  or           a4, s5, a2
                  slt          t3, t4, t3
190:              and          gp, tp, s4
                  or           a5, t5, s1
                  addi         tp, gp, 1874
                  bne          gp, s8, 194f
194:              srli         a0, s0, 6
195:              sltiu        a0, ra, 116
                  lui          s8, 93977
                  bltu         s7, ra, 210f
                  auipc        a3, 12211
                  sub          s6, s4, a2
                  xor          t2, t3, s2
                  bltu         t1, s6, 212f
                  ori          zero, a6, 602
                  sub          ra, s6, a6
                  sub          a2, t0, zero
                  bltu         t3, t1, 210f
                  sra          s4, a6, s4
                  add          t6, a0, a7
                  beq          ra, a6, 220f
                  slli         a2, a0, 24
210:              sltu         gp, sp, a1
                  sll          sp, s0, s9
212:              bne          a2, a1, 215f
                  xor          s3, s11, a1
                  addi         t3, s2, 1686
215:              srl          t0, s3, s6
                  bgeu         t2, t1, 230f
                  andi         t0, a0, 1616
                  bge          t5, s2, 219f
219:              bge          a3, s10, 220f
220:              srli         s7, zero, 7
                  xori         gp, s2, 36
                  nop
                  and          a5, t0, s0
                  sll          a2, s11, a2
                  slti         t4, tp, 285
                  or           s4, s9, t2
                  slli         s3, a6, 6
                  nop
                  bne          a7, a6, 230f
230:              bltu         s11, s0, 232f
                  or           a0, ra, s9
232:              slli         s3, s10, 11
                  sra          sp, t6, a1
                  bltu         s0, a5, 241f
                  sltiu        s3, s11, 1507
                  andi         t1, t6, -1863
                  bgeu         tp, s6, 247f
                  sltu         s6, a4, s4
                  srl          s3, s9, s5
                  bge          s3, t2, 256f
241:              addi         a3, a7, 1740
                  sub          a1, a6, s2
                  auipc        gp, 453801
                  bgeu         t6, a3, 247f
                  and          a3, s7, s4
                  sub          s4, t3, a4
247:              sltu         ra, ra, s3
                  and          a4, a5, s5
                  nop
                  xori         zero, a5, -1919
                  lui          s7, 962754
                  andi         t5, t3, -1201
                  bge          t6, a7, 258f
                  srl          t3, t3, s3
                  bge          s1, t1, 267f
256:              andi         t1, a7, -897
                  sub          gp, a4, a5
258:              sltiu        s7, a1, 1208
                  auipc        s4, 827235
                  sltiu        a0, s7, 52
                  xor          s5, tp, t4
                  beq          s5, s2, 282f
                  sll          s7, a0, s0
                  andi         s2, gp, -1697
                  lui          t0, 42691
                  xor          s3, s3, t2
                  sll          t6, a2, a7
                  srli         gp, a3, 1
                  or           t3, s11, zero
                  slt          a0, s2, tp
                  bgeu         a6, a5, sub_4_j7 #branch to jump instr
                  nop
                  lui          s3, 74816
                  or           s6, tp, s3
                  xor          t5, t6, t2
                  xori         s9, ra, 945
sub_4_j7:         jal          ra, sub_5 #jump sub_4 -> sub_5
267:              srli         s5, a2, 7
                  slli         s1, tp, 2
                  xori         t3, s5, 110
                  sub          s8, t4, s8
                  ori          s9, sp, 1811
                  nop
                  add          ra, s9, tp
                  slti         s3, s2, -181
                  bgeu         ra, s11, 277f
                  xori         a5, t2, 677
277:              slti         s10, a3, -1056
                  beq          s10, a3, 287f
                  blt          s5, a4, 282f
                  ori          s6, t6, -2038
                  srl          zero, s0, t1
282:              slti         t0, a4, 1579
                  beq          a0, s0, 303f
                  or           s6, zero, t5
                  slt          gp, a7, a2
                  add          t1, s0, s7
287:              add          tp, zero, t6
                  sll          zero, s7, s11
                  srai         s2, s7, 20
                  sltu         a2, s3, s10
                  auipc        a2, 383832
                  ori          a2, tp, -260
                  andi         s6, zero, 269
                  addi         s6, a5, -1174
                  bgeu         s11, s9, 306f
                  lui          a5, 2061
                  slt          a5, gp, a6
                  and          s3, t3, t3
sub_4_4:          jal          ra, 23f
0:                jal          ra, 27f
1:                jal          t1, 16f
2:                jal          ra, 4f
3:                jal          ra, 14f
4:                jal          ra, 17f
5:                jal          ra, 24f
6:                jal          ra, 5b
7:                jal          ra, 18f
8:                jal          gp, 13f
9:                jal          sp, 0b
10:               jal          ra, 1b
11:               jal          t1, 22f
12:               jal          a4, 26f
13:               jal          ra, 2b
14:               jal          gp, 7b
15:               jal          a5, 10b
16:               jal          a1, 21f
17:               jal          ra, 15b
18:               jal          ra, 9b
19:               jal          t1, 11b
20:               jal          ra, 6b
21:               jal          t1, 3b
22:               jal          t1, 12b
23:               jal          t1, 19b
24:               jal          ra, 8b
25:               jal          ra, 20b
26:               jal          t1, 25b
27:               srli         t5, a5, 29
                  srli         a0, a1, 14
                  ori          t0, zero, -1910
                  xori         a5, s8, 1234
                  xori         t2, s8, -1305
303:              beq          t5, a7, 314f
                  xor          t2, s8, t2
                  addi         a5, a4, 906
306:              slti         s1, s7, 1714
                  xori         t2, a5, -321
                  bne          a1, a4, 324f
                  add          s2, tp, t6
                  srli         s10, tp, 5
                  or           t1, s2, s5
                  lui          ra, 1034159
                  addi         t3, t4, -1717
314:              srai         a3, s10, 2
                  xor          s5, s1, t0
                  ori          s6, s1, 73
                  slli         s1, a2, 8
                  nop
                  bltu         s10, s3, 321f
                  lui          a0, 112134
321:              blt          a6, a0, 325f
                  sra          t1, gp, gp
                  slli         gp, zero, 7
324:              beq          s3, sp, 344f
325:              sltiu        s6, a1, 537
                  add          a5, a3, a6
                  sub          a3, s1, a1
                  blt          t2, s1, 331f
                  sll          sp, s7, a1
                  ori          s5, s2, -525
331:              beq          s5, tp, 343f
                  slt          s9, zero, t0
                  and          a2, a7, s3
                  slt          s8, a0, s5
                  and          t0, a7, a1
                  bltu         s8, a4, 337f
337:              and          a3, zero, a5
                  sltu         zero, t3, t5
                  sub          s1, a4, s3
                  srai         a1, a5, 31
                  srli         t3, a7, 13
                  blt          tp, a0, 352f
343:              bne          s3, s9, 363f
344:              sub          a1, s7, s5
                  srai         s4, zero, 18
                  sra          t1, s1, tp
                  sub          a0, s8, s0
                  nop
                  bltu         s6, a3, 369f
                  xori         s4, s0, 348
                  beq          s1, zero, 362f
352:              add          s10, s2, s2
                  sll          a5, a2, s8
                  add          t4, t3, ra
                  sub          t5, t6, a1
                  blt          a3, ra, 365f
                  bgeu         a0, s10, 360f
                  addi         gp, s2, -948
                  xori         a3, a5, 634
360:              add          a2, gp, t1
                  addi         s6, s10, -1406
362:              slt          t5, a0, a2
363:              auipc        t5, 581862
                  andi         t4, ra, -1848
365:              or           a3, t3, ra
                  nop
                  xor          a4, s4, t5
                  andi         a4, s8, -774
369:              add          t0, a4, s8
                  nop
                  bge          a7, s8, 375f
                  andi         a2, s5, 1103
                  bgeu         tp, a7, 374f
374:              srai         s5, a7, 30
375:              ori          t5, tp, 996
                  nop
                  and          t1, s1, t3
                  srl          s8, t4, sp
                  xori         t2, s5, 1562
                  slt          t4, s3, sp
                  xor          sp, t1, s4
                  bne          zero, t5, 393f
                  addi         t5, tp, -1515
                  sltiu        a0, sp, 513
                  add          s9, gp, gp
                  srai         a3, tp, 18
                  xori         a6, a7, -1689
                  sra          s8, t5, ra
                  add          t5, t1, s5
                  slli         s7, zero, 8
                  srli         a1, tp, 1
                  ori          s10, a2, -1661
393:              sll          s3, t5, a3
                  bge          s6, a3, 408f
                  bne          s0, a0, 407f
                  nop
                  addi         a5, s3, -787
                  sltiu        t4, t3, 689
                  sltiu        a2, t3, 1345
                  beq          tp, t6, 407f
                  xori         s7, gp, -693
                  bne          t0, s0, 413f
                  nop
                  srli         ra, a2, 21
                  sltu         t3, t2, s8
                  lui          s7, 539926
407:              xori         s4, a6, 1738
408:              andi         t6, t4, -1771
                  auipc        ra, 900067
                  slt          s6, s6, tp
                  and          t4, s7, t0
                  slti         s5, sp, 1528
413:              srai         a0, ra, 21
                  sra          a5, s8, ra
                  andi         t6, s3, 1078
                  addi         a1, t1, 821
                  auipc        t3, 128990
                  or           s4, a5, t6
                  bne          a0, s7, 420f
420:              bltu         t4, a1, 434f
                  add          s6, s8, a0
                  slli         a1, t2, 23
                  and          t2, a2, s9
                  slli         s3, s10, 13
                  bgeu         zero, zero, 428f
sub_4_10:         jal          ra, 13f
0:                jal          a5, 9f
1:                jal          ra, 0b
2:                jal          ra, 15f
3:                jal          gp, 7f
4:                jal          ra, 10f
5:                jal          ra, 2b
6:                jal          ra, 8f
7:                jal          t1, 12f
8:                jal          ra, 11f
9:                jal          ra, 14f
10:               jal          t1, 6b
11:               jal          ra, 3b
12:               jal          t1, 1b
13:               jal          ra, 4b
14:               jal          t1, 5b
15:               srli         a0, t6, 0
                  srli         a4, zero, 1
                  sub          t5, a4, t0
428:              bge          s8, t6, 441f
                  srl          a2, a6, t6
                  srli         s4, t6, 3
                  slti         t4, a4, -1675
                  slt          s3, t0, zero
                  beq          t2, ra, 438f
434:              andi         t6, t1, 1379
                  nop
                  bne          t0, a2, 438f
                  beq          t3, a6, 457f
438:              sltiu        t4, t6, -788
                  slti         t3, t6, 937
                  srl          t6, s10, t4
441:              andi         t0, sp, 794
                  ori          t0, a6, -199
                  and          s6, s0, s4
                  bge          t5, t5, 449f
                  auipc        a1, 51001
                  or           a2, s9, s3
                  xor          sp, zero, t2
                  blt          s1, s0, 449f
449:              beq          a6, a1, 465f
                  lui          s4, 868839
                  or           a6, a7, s4
                  andi         t6, s10, 633
                  or           a0, a2, s8
                  srai         s9, t6, 28
                  sub          a1, zero, s3
                  slli         t0, a0, 29
457:              xor          s7, s11, t6
                  sub          s3, tp, a5
                  nop
                  blt          a7, sp, 462f
                  bgeu         s10, s11, 477f
462:              lui          s3, 251365
                  ori          zero, tp, 521
                  sll          zero, t0, s3
465:              slt          s1, s1, s7
                  bltu         a0, s6, 486f
                  blt          s5, ra, 469f
                  andi         a3, s7, 985
469:              addi         t3, a7, -1764
                  bgeu         zero, t3, 482f
                  sub          a3, a6, t6
                  beq          s1, tp, 492f
                  sll          t0, s9, zero
                  sub          t6, a6, s6
                  lui          gp, 986710
                  sub          s4, a6, a7
477:              bgeu         t1, a1, 484f
                  blt          s6, sp, 480f
                  and          zero, t1, s1
480:              bltu         s8, a2, 481f
481:              slli         t6, s0, 30
482:              srl          s2, s0, s7
                  ori          s6, s1, 608
484:              ori          s3, s8, -315
                  slti         a6, t5, -102
486:              srl          s8, t1, a7
                  slt          s1, s1, a5
                  bltu         s5, t1, 491f
                  lui          t4, 39496
                  add          s5, s6, t4
491:              andi         tp, s9, 2045
492:              lui          a3, 115689
                  bne          s2, t3, 509f
                  sltu         s1, s10, t5
                  bge          sp, a5, 506f
                  xori         s6, s2, 1730
                  slti         zero, s10, 1972
                  slti         s10, t4, 1094
                  slt          a5, a1, t2
                  sltu         s3, s8, tp
                  bge          s2, s7, 506f
                  xor          t6, gp, t6
                  and          a3, s10, t2
                  sltiu        s2, a2, -817
                  srl          t2, a1, t1
506:              slli         t6, t2, 2
                  srai         a1, a1, 14
                  sra          s4, a7, s4
509:              sra          a1, a0, t2
                  sltu         ra, t5, ra
                  bge          t6, s0, 513f
                  andi         s5, a3, -409
513:              sub          gp, s2, t3
                  xor          a4, s3, ra
                  sub          a4, s1, t2
                  or           s5, ra, tp
                  blt          tp, s11, 522f
                  slti         a6, s7, -222
                  nop
                  bltu         a3, ra, 534f
                  bne          s5, a3, 533f
522:              blt          t4, s3, 535f
                  sll          gp, a0, a1
                  nop
                  slli         gp, s1, 21
                  nop
                  add          s3, s4, t5
                  srai         s2, t6, 6
                  add          s7, t6, s4
                  xori         a5, ra, 1770
                  ori          a2, t3, 563
                  add          t4, s1, a5
533:              and          t2, s2, t6
534:              srl          sp, a2, s0
535:              sll          zero, t3, ra
                  bltu         s11, s4, 547f
                  slt          a6, a5, t5
                  andi         t1, s3, -1220
                  xori         gp, t0, -1716
                  sltu         t2, t4, t2
                  lui          s2, 107138
                  lui          zero, 1027971
                  bltu         a5, a0, 545f
                  sub          a1, tp, sp
545:              beq          s6, s6, 559f
                  or           s1, s2, a7
547:              auipc        s5, 671817
                  srli         a0, s1, 10
                  addi         gp, t1, -1987
                  la           s9, sub_5
                  lui          t0, 887117
                  or           a1, t4, s5
                  sltu         a4, s5, tp
                  sll          sp, a0, s3
                  lui          ra, 497327
                  sub          a0, s3, a0
                  addi         s9, s9, 114
                  lui          zero, 519378
sub_4_j8:         jalr         ra, s9, -114 #jump sub_4 -> sub_5
                  slt          a4, zero, a1
                  lui          a5, 651220
                  sub          a1, zero, s7
                  sub          a3, t6, s0
                  auipc        a0, 696226
                  nop
                  slt          s3, s0, a3
                  srli         t4, s0, 23
                  andi         t1, sp, -1589
559:              slli         zero, s1, 31
                  sltu         t1, ra, t1
                  blt          s3, tp, 562f
562:              slt          s1, t4, s11
                  auipc        t0, 310848
                  slli         t6, s11, 4
                  lui          a4, 1047248
                  srl          s10, a2, a0
                  sltiu        s6, s1, -788
                  sltu         t5, a6, t2
                  lui          t5, 449190
                  and          t2, t4, gp
                  slli         a3, a3, 4
                  or           sp, s3, t2
                  slli         t6, t4, 27
                  and          s7, t2, s7
                  sll          s7, s4, t2
                  bltu         s5, t6, 596f
                  ori          ra, s0, 1231
                  srli         s4, s0, 4
                  blt          t0, gp, 582f
                  andi         a2, ra, -1733
                  srl          a6, s2, zero
582:              bgeu         s7, a6, 598f
                  nop
                  bge          s3, s2, 604f
                  add          s8, s0, s6
                  nop
                  sub          s5, zero, zero
                  sra          s2, tp, tp
                  bgeu         s5, s2, 590f
590:              slti         s9, s3, -1046
                  beq          s1, t2, 602f
                  sll          a3, a3, s9
                  xori         s9, s11, 1810
                  nop
                  beq          a7, t0, 605f
596:              lui          s1, 121873
                  beq          t6, s3, 601f
598:              bne          s5, s3, 618f
                  or           s3, s11, s8
                  xor          ra, a7, tp
601:              beq          s10, sp, 602f
602:              blt          tp, s9, 611f
                  srl          s6, a7, s8
604:              beq          s3, s0, 607f
605:              slli         s2, tp, 0
                  sra          t5, ra, s10
607:              slt          ra, a0, s0
                  bne          t6, sp, 620f
                  slt          t5, ra, zero
                  bltu         t3, s2, 612f
611:              auipc        a2, 1027326
612:              andi         t2, s6, 462
                  srli         s7, s8, 14
                  slti         s8, a3, -1460
                  addi         s2, s7, -1947
                  sltiu        gp, s1, 432
                  beq          a1, ra, 637f
618:              add          a3, a7, s0
                  addi         a0, t6, 300
620:              srl          sp, s1, tp
                  sll          s6, ra, t6
                  srli         s3, a4, 2
                  lui          a0, 969876
                  bne          gp, a3, 635f
                  add          t1, t5, a4
                  slt          t6, t0, s10
                  xor          t5, s9, s3
                  sltu         a1, t4, s3
                  beq          tp, s2, 649f
                  sltu         s2, s2, zero
                  or           s1, a0, a7
                  slti         ra, a3, -801
                  bgeu         a3, a1, 635f
                  bltu         s10, t4, 648f
635:              bltu         a7, t4, 645f
                  bge          t3, a1, 652f
637:              nop
                  slli         s7, s11, 15
                  srli         a6, s10, 25
                  sub          s7, a3, tp
                  slli         s5, sp, 2
                  sltu         a6, s9, a7
                  ori          t4, ra, -1325
                  slt          a6, a0, a3
645:              or           s6, tp, a4
                  and          a1, s11, ra
                  srai         a6, gp, 30
648:              sra          s3, s2, s8
649:              srai         s1, gp, 11
                  blt          t0, a0, 661f
                  blt          s0, s4, 663f
652:              slt          s3, s9, s2
                  or           t5, s10, a2
                  bge          s10, a2, 674f
                  bgeu         t1, t2, 656f
656:              bltu         a5, s6, 665f
                  srli         a5, ra, 6
                  andi         tp, t4, 13
                  ori          zero, s2, 1642
                  and          t1, s1, sp
661:              nop
                  srli         t2, t0, 10
663:              xor          s10, s10, ra
                  auipc        t2, 914664
665:              srl          s1, gp, a6
                  bge          gp, s2, 670f
                  sra          a1, s11, s0
                  andi         tp, a0, 876
                  nop
670:              srl          a5, t6, s5
                  sll          s8, t2, s0
                  lui          tp, 455935
                  beq          s3, s0, 686f
674:              add          s8, t1, a5
                  srai         s4, s8, 29
                  bltu         a5, t5, 681f
                  slti         t4, sp, -1376
                  sub          t0, s3, t6
                  bne          s8, t2, 695f
                  sub          t5, a7, s11
681:              sltiu        t5, t3, -560
                  and          s4, s8, tp
                  srai         s1, s8, 14
                  slli         a3, s7, 12
                  auipc        tp, 907581
686:              xori         a3, a6, 1555
                  slti         a6, s3, -742
                  sub          gp, a7, ra
                  bge          s1, t0, 705f
                  slti         ra, a5, -1675
                  add          t1, t3, t4
                  blt          a6, s7, 703f
                  sll          zero, a2, t6
                  xori         a6, s11, -320
695:              bne          t5, t2, 700f
                  sub          s6, tp, t1
                  auipc        tp, 611187
                  sltu         a6, ra, s8
                  slti         s7, a0, 1958
700:              or           s9, s11, t2
                  and          s10, s7, s9
                  slli         t6, s1, 24
703:              sll          zero, a6, a2
                  sltiu        s5, t3, -908
705:              xori         t6, tp, 42
                  andi         s8, a0, 596
                  srli         a1, t5, 20
                  lw           ra, 4(s11)
                  slli         sp, a1, 14
                  xor          s5, ra, t2
                  addi         s11, s11, 60
                  sltu         s5, s4, s9
                  slli         s2, sp, 13
                  xori         a5, a6, -778
                  slt          t2, s9, t0
                  ori          gp, s2, 1387
                  slt          t2, a2, t2
1096:             addi x19, x1, 1
1096:             jalr x19, x19, 0
sub_3:            bge          t5, t6, sub_3_stack_p
                  add          s5, s11, s9
                  auipc        s4, 623508
sub_3_stack_p:    addi         s11, s11, -12
                  sw           ra, 4(s11)
                  sll          s9, a2, t0
                  sll          t0, a6, a2
sub_3_0:          jal          ra, 1f
0:                jal          t1, 11f
1:                jal          ra, 13f
2:                jal          ra, 21f
3:                jal          a3, 6f
4:                jal          t1, 9f
5:                jal          ra, 24f
6:                jal          ra, 18f
7:                jal          s7, 23f
8:                jal          ra, 3b
9:                jal          ra, 10f
10:               jal          t1, 5b
11:               jal          ra, 7b
12:               jal          gp, 16f
13:               jal          t1, 25f
14:               jal          t2, 22f
15:               jal          t1, 12b
16:               jal          t3, 17f
17:               jal          tp, 0b
18:               jal          ra, 2b
19:               jal          ra, 20f
20:               jal          ra, 14b
21:               jal          ra, 4b
22:               jal          t1, 26f
23:               jal          t6, 8b
24:               jal          s10, 19b
25:               jal          ra, 15b
26:               srli         t5, s4, 11
sub_3_24:         jal          ra, 17f
0:                jal          ra, 18f
1:                jal          ra, 11f
2:                jal          ra, 3f
3:                jal          s1, 20f
4:                jal          t1, 21f
5:                jal          ra, 6f
6:                jal          t1, 4b
7:                jal          ra, 5b
8:                jal          t0, 16f
9:                jal          ra, 22f
10:               jal          t1, 0b
11:               jal          ra, 8b
12:               jal          ra, 15f
13:               jal          s2, 7b
14:               jal          ra, 9b
15:               jal          t1, 1b
16:               jal          t6, 10b
17:               jal          ra, 19f
18:               jal          ra, 13b
19:               jal          t1, 12b
20:               jal          sp, 14b
21:               jal          a6, 2b
22:               slli         t6, zero, 7
sub_3_23:         jal          ra, 6f
0:                jal          s3, 10f
1:                jal          ra, 0b
2:                jal          ra, 18f
3:                jal          ra, 1b
4:                jal          ra, 8f
5:                jal          t5, 2b
6:                jal          gp, 15f
7:                jal          t1, 4b
8:                jal          ra, 19f
9:                jal          ra, 11f
10:               jal          a6, 7b
11:               jal          ra, 13f
12:               jal          t0, 17f
13:               jal          ra, 14f
14:               jal          a2, 16f
15:               jal          ra, 12b
16:               jal          t1, 3b
17:               jal          ra, 5b
18:               jal          s5, 9b
19:               or           s9, a6, s3
sub_3_5:          jal          ra, 0f
0:                jal          ra, 14f
1:                jal          t1, 9f
2:                jal          ra, 4f
3:                jal          ra, 10f
4:                jal          s7, 1b
5:                jal          ra, 17f
6:                jal          t4, 5b
7:                jal          t1, 16f
8:                jal          gp, 18f
9:                jal          t1, 22f
10:               jal          a4, 11f
11:               jal          t1, 21f
12:               jal          s2, 2b
13:               jal          ra, 8b
14:               jal          sp, 15f
15:               jal          t1, 3b
16:               jal          ra, 6b
17:               jal          t3, 20f
18:               jal          ra, 12b
19:               jal          ra, 7b
20:               jal          a5, 13b
21:               jal          ra, 19b
22:               jal          gp, 23f
23:               sltiu        s8, t6, 406
sub_3_6:          jal          ra, 2f
0:                jal          ra, 5f
1:                jal          ra, 12f
2:                jal          ra, 17f
3:                jal          ra, 16f
4:                jal          ra, 3b
5:                jal          a4, 22f
6:                jal          t1, 15f
7:                jal          ra, 9f
8:                jal          ra, 10f
9:                jal          ra, 19f
10:               jal          ra, 13f
11:               jal          t1, 6b
12:               jal          ra, 14f
13:               jal          a1, 21f
14:               jal          t1, 8b
15:               jal          ra, 20f
16:               jal          gp, 1b
17:               jal          ra, 11b
18:               jal          ra, 4b
19:               jal          t0, 0b
20:               jal          ra, 18b
21:               jal          t1, 7b
22:               xori         a1, s5, -923
sub_3_3:          jal          ra, 7f
0:                jal          a1, 23f
1:                jal          t1, 24f
2:                jal          ra, 16f
3:                jal          t1, 25f
4:                jal          t1, 9f
5:                jal          sp, 20f
6:                jal          ra, 15f
7:                jal          s10, 22f
8:                jal          a4, 3b
9:                jal          ra, 13f
10:               jal          tp, 27f
11:               jal          s10, 6b
12:               jal          t1, 5b
13:               jal          t1, 17f
14:               jal          ra, 4b
15:               jal          t4, 8b
16:               jal          ra, 12b
17:               jal          s4, 18f
18:               jal          t1, 26f
19:               jal          t3, 2b
20:               jal          ra, 10b
21:               jal          a1, 14b
22:               jal          a1, 11b
23:               jal          s9, 19b
24:               jal          a2, 21b
25:               jal          ra, 1b
26:               jal          t1, 0b
27:               slti         a1, t4, 330
sub_3_22:         jal          ra, 0f
0:                jal          t5, 23f
1:                jal          gp, 2f
2:                jal          t1, 4f
3:                jal          ra, 15f
4:                jal          ra, 16f
5:                jal          ra, 13f
6:                jal          ra, 3b
7:                jal          ra, 6b
8:                jal          sp, 19f
9:                jal          s1, 11f
10:               jal          ra, 9b
11:               jal          t1, 17f
12:               jal          ra, 25f
13:               jal          t1, 7b
14:               jal          t1, 24f
15:               jal          ra, 22f
16:               jal          t1, 20f
17:               jal          ra, 18f
18:               jal          ra, 12b
19:               jal          t1, 14b
20:               jal          a3, 8b
21:               jal          ra, 10b
22:               jal          ra, 21b
23:               jal          ra, 1b
24:               jal          s3, 5b
25:               slti         gp, tp, -79
sub_3_27:         jal          ra, 9f
0:                jal          ra, 17f
1:                jal          ra, 10f
2:                jal          a3, 21f
3:                jal          t2, 14f
4:                jal          tp, 19f
5:                jal          t5, 11f
6:                jal          t1, 22f
7:                jal          ra, 15f
8:                jal          ra, 5b
9:                jal          s2, 12f
10:               jal          t3, 3b
11:               jal          ra, 6b
12:               jal          ra, 4b
13:               jal          ra, 18f
14:               jal          ra, 8b
15:               jal          t1, 0b
16:               jal          tp, 2b
17:               jal          a3, 1b
18:               jal          ra, 7b
19:               jal          ra, 20f
20:               jal          ra, 16b
21:               jal          t1, 13b
22:               andi         s2, ra, -173
sub_3_20:         jal          ra, 23f
0:                jal          t3, 1f
1:                jal          t3, 13f
2:                jal          ra, 22f
3:                jal          ra, 12f
4:                jal          tp, 17f
5:                jal          tp, 6f
6:                jal          t1, 8f
7:                jal          tp, 2b
8:                jal          ra, 26f
9:                jal          s9, 15f
10:               jal          ra, 18f
11:               jal          ra, 4b
12:               jal          ra, 21f
13:               jal          s6, 7b
14:               jal          gp, 5b
15:               jal          ra, 3b
16:               jal          s2, 9b
17:               jal          ra, 16b
18:               jal          ra, 19f
19:               jal          s8, 20f
20:               jal          gp, 25f
21:               jal          ra, 0b
22:               jal          s3, 14b
23:               jal          t1, 24f
24:               jal          a6, 10b
25:               jal          t1, 11b
26:               xori         s2, t2, 626
sub_3_25:         jal          ra, 24f
0:                jal          ra, 19f
1:                jal          ra, 8f
2:                jal          t0, 26f
3:                jal          s1, 5f
4:                jal          s5, 10f
5:                jal          a0, 7f
6:                jal          ra, 0b
7:                jal          t1, 22f
8:                jal          ra, 13f
9:                jal          ra, 11f
10:               jal          ra, 20f
11:               jal          a2, 2b
12:               jal          ra, 16f
13:               jal          t1, 21f
14:               jal          ra, 17f
15:               jal          a2, 25f
16:               jal          s1, 9b
17:               jal          t1, 6b
18:               jal          ra, 14b
19:               jal          s3, 12b
20:               jal          ra, 18b
21:               jal          tp, 4b
22:               jal          ra, 23f
23:               jal          ra, 15b
24:               jal          sp, 3b
25:               jal          ra, 1b
26:               and          s8, s0, s5
sub_3_17:         jal          ra, 9f
0:                jal          t1, 10f
1:                jal          t4, 8f
2:                jal          t1, 4f
3:                jal          ra, 13f
4:                jal          t1, 1b
5:                jal          t5, 7f
6:                jal          ra, 2b
7:                jal          t1, 0b
8:                jal          ra, 11f
9:                jal          ra, 5b
10:               jal          ra, 12f
11:               jal          t1, 3b
12:               jal          s1, 6b
13:               add          a6, t1, s1
sub_3_4:          jal          ra, 0f
0:                jal          ra, 5f
1:                jal          ra, 15f
2:                jal          ra, 9f
3:                jal          s3, 14f
4:                jal          t1, 12f
5:                jal          ra, 17f
6:                jal          ra, 2b
7:                jal          ra, 8f
8:                jal          ra, 10f
9:                jal          a3, 7b
10:               jal          ra, 11f
11:               jal          ra, 3b
12:               jal          t0, 19f
13:               jal          t0, 16f
14:               jal          t1, 13b
15:               jal          tp, 4b
16:               jal          ra, 18f
17:               jal          t1, 6b
18:               jal          ra, 1b
19:               jal          ra, 20f
20:               srli         s10, t0, 12
sub_3_15:         jal          ra, 8f
0:                jal          ra, 3f
1:                jal          gp, 2f
2:                jal          tp, 16f
3:                jal          s4, 11f
4:                jal          ra, 23f
5:                jal          t1, 13f
6:                jal          a6, 24f
7:                jal          s6, 5b
8:                jal          ra, 22f
9:                jal          ra, 1b
10:               jal          ra, 21f
11:               jal          a3, 6b
12:               jal          ra, 4b
13:               jal          ra, 17f
14:               jal          t1, 9b
15:               jal          gp, 19f
16:               jal          ra, 12b
17:               jal          ra, 14b
18:               jal          ra, 0b
19:               jal          t0, 7b
20:               jal          ra, 15b
21:               jal          t1, 18b
22:               jal          s5, 20b
23:               jal          ra, 10b
24:               auipc        ra, 756649
sub_3_19:         jal          ra, 8f
0:                jal          ra, 1f
1:                jal          ra, 10f
2:                jal          sp, 6f
3:                jal          ra, 2b
4:                jal          s5, 7f
5:                jal          ra, 9f
6:                jal          ra, 4b
7:                jal          ra, 0b
8:                jal          a1, 5b
9:                jal          ra, 3b
10:               auipc        t6, 126709
sub_3_2:          jal          ra, 7f
0:                jal          s7, 4f
1:                jal          t1, 8f
2:                jal          a4, 5f
3:                jal          ra, 0b
4:                jal          ra, 12f
5:                jal          tp, 3b
6:                jal          t1, 2b
7:                jal          ra, 9f
8:                jal          t1, 10f
9:                jal          sp, 11f
10:               jal          ra, 6b
11:               jal          a5, 1b
12:               jal          ra, 13f
13:               xori         s7, gp, 947
sub_3_13:         jal          ra, 7f
0:                jal          ra, 18f
1:                jal          t1, 9f
2:                jal          ra, 22f
3:                jal          ra, 27f
4:                jal          t1, 5f
5:                jal          ra, 19f
6:                jal          ra, 21f
7:                jal          a5, 1b
8:                jal          t1, 26f
9:                jal          ra, 11f
10:               jal          t0, 14f
11:               jal          ra, 10b
12:               jal          ra, 24f
13:               jal          ra, 29f
14:               jal          s6, 13b
15:               jal          ra, 0b
16:               jal          ra, 15b
17:               jal          s7, 20f
18:               jal          a0, 17b
19:               jal          t1, 28f
20:               jal          t6, 25f
21:               jal          t1, 4b
22:               jal          ra, 16b
23:               jal          ra, 6b
24:               jal          ra, 3b
25:               jal          a4, 8b
26:               jal          ra, 30f
27:               jal          ra, 23b
28:               jal          a4, 2b
29:               jal          ra, 12b
30:               xor          ra, a5, a2
sub_3_7:          jal          ra, 11f
0:                jal          ra, 20f
1:                jal          t1, 0b
2:                jal          t1, 7f
3:                jal          t1, 2b
4:                jal          ra, 17f
5:                jal          ra, 6f
6:                jal          ra, 1b
7:                jal          ra, 13f
8:                jal          t1, 5b
9:                jal          ra, 14f
10:               jal          ra, 3b
11:               jal          ra, 12f
12:               jal          ra, 19f
13:               jal          t1, 21f
14:               jal          a1, 18f
15:               jal          ra, 16f
16:               jal          gp, 10b
17:               jal          a4, 8b
18:               jal          ra, 15b
19:               jal          t1, 4b
20:               jal          t1, 9b
21:               xor          tp, t1, s4
sub_3_14:         jal          ra, 0f
0:                jal          ra, 2f
1:                jal          t1, 9f
2:                jal          s8, 10f
3:                jal          ra, 4f
4:                jal          t1, 1b
5:                jal          sp, 12f
6:                jal          tp, 7f
7:                jal          a0, 3b
8:                jal          t5, 6b
9:                jal          t1, 5b
10:               jal          ra, 11f
11:               jal          sp, 8b
12:               sra          t2, zero, s8
sub_3_10:         jal          ra, 2f
0:                jal          t1, 4f
1:                jal          ra, 17f
2:                jal          ra, 18f
3:                jal          ra, 5f
4:                jal          gp, 7f
5:                jal          t1, 16f
6:                jal          t1, 0b
7:                jal          ra, 19f
8:                jal          ra, 10f
9:                jal          ra, 11f
10:               jal          ra, 9b
11:               jal          a0, 14f
12:               jal          t1, 8b
13:               jal          t1, 12b
14:               jal          tp, 6b
15:               jal          ra, 20f
16:               jal          ra, 1b
17:               jal          ra, 13b
18:               jal          ra, 3b
19:               jal          ra, 15b
20:               srl          a1, t2, s3
sub_3_28:         jal          ra, 1f
0:                jal          ra, 3f
1:                jal          ra, 13f
2:                jal          ra, 10f
3:                jal          t1, 17f
4:                jal          ra, 18f
5:                jal          a6, 2b
6:                jal          t5, 8f
7:                jal          t2, 6b
8:                jal          t1, 16f
9:                jal          ra, 14f
10:               jal          t5, 4b
11:               jal          ra, 5b
12:               jal          ra, 0b
13:               jal          t1, 15f
14:               jal          ra, 7b
15:               jal          t1, 9b
16:               jal          ra, 12b
17:               jal          ra, 11b
18:               lui          t4, 904043
sub_3_16:         jal          ra, 7f
0:                jal          ra, 15f
1:                jal          ra, 9f
2:                jal          s5, 14f
3:                jal          ra, 4f
4:                jal          ra, 11f
5:                jal          a4, 20f
6:                jal          ra, 19f
7:                jal          ra, 12f
8:                jal          ra, 18f
9:                jal          t1, 23f
10:               jal          ra, 3b
11:               jal          t5, 5b
12:               jal          ra, 6b
13:               jal          a5, 2b
14:               jal          t4, 25f
15:               jal          s3, 22f
16:               jal          s3, 17f
17:               jal          ra, 21f
18:               jal          ra, 13b
19:               jal          ra, 1b
20:               jal          t1, 24f
21:               jal          a1, 10b
22:               jal          t1, 8b
23:               jal          s5, 16b
24:               jal          ra, 0b
25:               and          tp, s11, a4
sub_3_26:         jal          ra, 9f
0:                jal          ra, 5f
1:                jal          ra, 10f
2:                jal          t1, 11f
3:                jal          t1, 1b
4:                jal          ra, 7f
5:                jal          a5, 3b
6:                jal          sp, 4b
7:                jal          t1, 12f
8:                jal          ra, 0b
9:                jal          ra, 6b
10:               jal          ra, 2b
11:               jal          ra, 13f
12:               jal          ra, 8b
13:               auipc        t6, 736222
                  sltiu        zero, t0, -499
                  xori         s6, s3, 1818
                  blt          s5, s9, 14f
                  srai         t1, tp, 15
                  lui          t6, 95532
                  sll          a0, t1, t6
                  sltiu        s8, s2, 152
                  sltiu        a6, s8, 672
                  srl          zero, s2, t6
                  andi         zero, a0, 206
                  sra          t5, s1, s11
                  andi         t3, s10, -62
                  slti         a1, sp, 576
                  srli         ra, s7, 29
14:               lui          a2, 467224
                  bge          t6, t0, 35f
                  slt          a3, a6, t2
                  lui          s1, 510393
                  sub          a5, gp, s3
                  slti         t5, a4, 779
                  add          a2, s4, t1
                  blt          a3, s11, 31f
                  slli         s2, t5, 9
                  addi         s6, ra, 210
                  sltu         gp, a0, s9
                  xori         zero, t5, -651
                  andi         a1, t4, 2044
                  sltu         s9, s1, t0
                  srli         t5, s1, 25
                  sub          tp, t4, s0
                  srai         a3, s6, 9
31:               sub          t6, s10, a3
                  sub          s9, ra, s10
                  addi         t0, s2, 626
                  srai         a2, a3, 2
35:               bne          a5, a6, 47f
                  xor          s1, a2, s8
                  lui          s5, 667009
                  or           t6, a6, s7
                  srl          s2, tp, t1
                  srl          s9, t0, t4
                  or           gp, t5, tp
                  sra          t0, a3, s9
                  slli         t3, a7, 21
                  sltiu        s9, a3, 1045
                  blt          t1, zero, 65f
                  addi         s5, s9, -1400
47:               or           a6, ra, s3
                  sll          zero, ra, s4
                  xor          t2, s11, s8
                  bne          s4, t0, 61f
                  srli         s6, a3, 10
                  add          tp, s6, s2
                  add          s6, s9, s3
                  sra          s7, a3, a5
                  xori         t3, a3, -2040
                  add          s2, t3, t5
                  bge          a3, s10, 60f
                  and          s1, a3, s5
                  add          s3, a0, a1
60:               bge          s7, t3, 73f
61:               sltiu        zero, a3, -1263
                  xor          a6, a2, a1
                  sll          a5, a1, s10
                  bge          s10, s8, 83f
65:               slt          s3, t5, s8
                  bne          s8, ra, 79f
                  auipc        s2, 246520
                  sra          t1, t2, t1
                  and          s3, a5, tp
                  slli         s2, zero, 11
                  blt          t5, a7, 82f
                  bge          s3, s8, 90f
73:               or           s3, s5, a7
                  srl          ra, s8, s2
                  bne          s1, t0, 82f
                  and          s5, a0, t1
                  sll          ra, a2, t2
                  andi         s10, t3, 683
79:               addi         t5, sp, -635
                  auipc        a5, 240437
                  or           s5, t3, t5
82:               beq          s10, s2, 98f
83:               xori         s1, t6, 1932
                  or           s9, s9, s9
                  ori          a2, a3, -1166
                  xori         a3, a0, -1655
                  bge          s1, t6, 104f
                  xori         zero, a3, 2010
                  ori          a2, s9, 637
90:               bltu         a4, tp, 95f
                  sub          a6, s10, s10
                  lui          s6, 31762
                  sra          t5, s0, s10
                  bge          s6, s0, 110f
95:               nop
                  ori          zero, s11, -287
                  andi         s2, s8, -1709
98:               bgeu         tp, t3, 99f
99:               sub          sp, a6, t3
                  bne          a6, s9, 109f
                  sll          a6, t2, a1
                  sltiu        s9, t0, 1700
                  slti         t4, tp, 1067
104:              sra          a1, zero, a6
                  xori         t0, s5, 1522
                  bge          a5, s9, 121f
                  addi         t4, s10, -1079
                  slti         s5, a1, 1209
109:              slt          a3, t1, t3
110:              srl          a0, a5, a5
                  bgeu         ra, s6, 128f
                  sll          a2, s2, s5
                  and          t4, t3, a4
                  beq          a7, a6, 117f
                  beq          s0, s4, 124f
                  andi         a6, t1, -1520
117:              sltiu        s8, t4, 483
                  andi         gp, s1, 424
                  srai         a5, s7, 24
                  add          a3, s2, s9
121:              addi         a5, s6, 998
                  srli         s1, zero, 14
                  sltu         a5, t0, a2
124:              sltiu        s6, tp, -487
                  slti         t1, s10, -1905
                  auipc        tp, 505276
                  andi         a1, s5, 662
128:              slli         s8, sp, 11
                  slti         sp, t0, 1697
                  addi         a0, gp, -767
                  slti         ra, s7, 1752
                  sltiu        a1, gp, -960
                  blt          s2, s0, 150f
                  blt          t1, s0, 138f
                  andi         gp, s10, -803
                  srai         s1, ra, 23
                  or           t0, s8, s1
138:              sub          zero, s7, a0
                  xor          t6, s10, a3
                  srai         tp, ra, 28
                  slt          t4, s9, a3
                  xor          a2, gp, a0
                  xori         t1, t3, -708
                  nop
                  and          a1, a7, sp
                  add          s5, s11, a3
                  and          sp, t3, t2
                  lui          gp, 852613
                  slt          t1, a1, s8
150:              slli         a5, t0, 29
                  sltiu        t6, sp, -1699
                  and          tp, s1, a2
                  lui          t1, 225802
                  srl          a0, a6, t4
                  bltu         t5, t2, 166f
                  sub          t6, s3, s0
                  srai         t1, s8, 9
                  addi         s10, t4, 1345
                  lui          s8, 165014
                  srai         ra, s1, 24
                  xori         a4, a3, 15
                  srl          s3, t0, t2
                  or           a2, t5, t0
                  sll          s6, t2, t4
                  bne          a3, a6, 169f
166:              sltiu        a1, s3, 1421
                  and          a4, t4, gp
                  or           zero, a3, s1
169:              xori         t5, gp, 1046
                  bltu         s6, s7, 177f
                  sll          s6, a4, a6
                  xori         t5, t3, -794
                  sltu         s9, s7, s7
                  srl          s9, t1, a6
                  auipc        a6, 303684
                  bgeu         a5, gp, 188f
177:              bge          s6, a7, 195f
                  nop
                  addi         s7, s3, 1995
                  bne          ra, sp, 187f
                  xori         a3, a5, -1822
                  add          a1, a2, a3
                  srl          ra, t4, s10
                  or           s3, t3, t1
                  xori         s8, a1, 1548
                  xor          zero, t0, s8
187:              lui          t6, 899963
188:              slli         a0, a2, 21
                  xor          t4, s0, zero
                  sll          t6, s10, a7
                  bge          t6, t2, 201f
                  slt          s10, t4, a6
                  add          a1, s8, sp
                  blt          t3, s5, 195f
195:              or           s9, s10, s2
                  auipc        t4, 447110
                  sltiu        gp, t3, 1421
                  lui          a4, 903086
                  ori          zero, a6, 1827
                  auipc        a2, 249059
201:              sra          s10, ra, s9
                  sub          a4, s2, a4
                  or           a5, s4, a6
                  bgeu         a7, zero, 207f
                  blt          t2, s1, 221f
                  ori          s9, s10, 1767
207:              xori         t0, t4, 835
                  and          t1, s5, tp
                  srl          s1, s0, s6
                  sub          s4, sp, t5
                  xori         a5, t3, 1737
                  andi         s10, a6, 530
                  srai         s3, tp, 26
                  bgeu         s0, s3, 226f
                  bne          s6, gp, 232f
                  slti         t4, s4, -665
                  sra          t5, zero, t1
                  sltiu        a6, gp, 1487
                  add          s6, a3, a5
                  and          a4, t2, t0
221:              slli         sp, s1, 0
                  sll          zero, s8, t2
                  srai         a2, t5, 1
                  sltu         s4, t5, a2
                  addi         a4, sp, -2004
226:              sltu         s6, tp, s10
                  add          t0, sp, t5
                  slli         zero, t0, 18
                  xori         s3, s5, 1289
                  lui          s3, 275355
                  or           t3, a3, a1
232:              srai         s2, s5, 26
                  nop
                  lui          a4, 647005
                  or           t1, a6, zero
                  sltu         s4, s8, s3
                  srli         t3, a5, 13
                  bne          sp, s5, 242f
                  slt          t3, tp, t5
                  lui          gp, 610565
                  slli         a4, s11, 13
242:              and          s7, s5, s4
                  bgeu         zero, s6, 254f
                  sra          sp, ra, s2
                  bltu         tp, s10, 257f
                  lui          t0, 46854
                  sltiu        sp, a6, -1681
                  auipc        ra, 807870
                  nop
                  sll          s2, s11, a1
                  srai         a3, a0, 26
                  nop
                  lui          s10, 675424
254:              ori          s1, t4, -504
                  ori          a5, a7, -1397
                  or           a5, s5, s6
257:              nop
                  or           a0, ra, s3
                  bge          a7, s1, 272f
                  srli         s8, s5, 6
                  xor          t0, t3, a1
                  blt          a3, s10, 281f
                  sltu         s7, s10, a6
                  xori         t2, t1, -1730
                  andi         s7, a0, 1300
                  bgeu         ra, t5, 284f
                  bltu         s5, t3, 278f
                  or           s10, s11, s1
                  xori         a0, tp, -1329
                  bgeu         s1, s3, 282f
                  xori         sp, a0, -1252
272:              auipc        t2, 441553
                  bgeu         gp, s11, 284f
                  nop
                  ori          t5, s10, -487
                  bge          t1, t6, 279f
                  or           gp, s6, a6
278:              sltu         a2, t4, tp
279:              andi         s7, s6, -934
                  beq          a2, t5, 287f
281:              sltiu        t5, a7, -757
282:              auipc        t3, 146095
                  auipc        s8, 747296
284:              sub          s10, a0, a6
                  slti         a4, a2, -768
                  add          a3, tp, t1
287:              beq          t2, sp, 307f
                  slti         t1, s2, 1563
                  srl          t4, zero, ra
                  bgeu         s7, s4, 303f
                  sltu         t3, t4, s2
                  auipc        a6, 169908
                  nop
                  la           sp, sub_4
                  lui          s8, 447689
                  addi         sp, sp, -661
                  addi         s10, s9, 1375
sub_3_j5:         jalr         ra, sp, 662 #jump sub_3 -> sub_4
                  addi         t5, a0, -22
                  sub          sp, s1, s9
                  sltiu        a6, ra, 228
                  srai         a5, a2, 16
                  xori         t6, s6, 1691
                  srl          t2, a7, a3
                  xori         gp, ra, 1722
                  ori          a5, t5, 1714
                  slt          zero, zero, t0
                  srai         s9, t6, 14
                  blt          s2, t4, 305f
                  sll          s3, s1, s2
303:              beq          a5, s11, 312f
                  bne          s10, t5, 319f
305:              or           t3, s6, s8
                  srai         gp, ra, 31
307:              ori          s6, s6, -814
                  and          t6, t5, s4
                  bge          s10, s3, 318f
                  xor          a4, a3, t4
                  slti         s10, s9, -765
312:              xori         t4, s5, 312
                  sltu         s9, tp, t3
                  sltu         t0, t4, s9
                  add          ra, tp, t1
                  addi         t2, t2, -943
                  beq          t3, s11, 337f
318:              ori          t1, s8, -423
319:              slli         gp, s11, 17
                  xori         gp, a7, 395
                  auipc        s4, 669267
                  sll          t0, a3, a0
                  slli         s8, sp, 2
                  sltu         a4, s7, s9
                  srl          s10, a5, t1
                  sltu         t2, s4, a5
                  blt          gp, gp, 343f
                  xori         a6, a0, -1949
                  blt          s1, tp, 334f
                  slti         a3, gp, -431
                  ori          s4, s8, 1238
                  nop
                  xori         t3, s9, -1235
sub_3_11:         jal          ra, 21f
0:                jal          t1, 17f
1:                jal          t1, 15f
2:                jal          ra, 24f
3:                jal          a3, 16f
4:                jal          t1, 26f
5:                jal          ra, 28f
6:                jal          ra, 22f
7:                jal          t1, 23f
8:                jal          t1, 14f
9:                jal          s3, 11f
10:               jal          ra, 12f
11:               jal          t1, 29f
12:               jal          t1, 8b
13:               jal          t1, 7b
14:               jal          t1, 1b
15:               jal          t1, 18f
16:               jal          ra, 2b
17:               jal          t1, 20f
18:               jal          t1, 5b
19:               jal          ra, 13b
20:               jal          ra, 19b
21:               jal          ra, 25f
22:               jal          ra, 4b
23:               jal          ra, 6b
24:               jal          s5, 10b
25:               jal          t1, 3b
26:               jal          t1, 9b
27:               jal          t5, 0b
28:               jal          ra, 27b
29:               sltiu        t2, s5, -1795
334:              auipc        s6, 864479
                  srai         s4, ra, 24
                  sltiu        t2, a3, 1936
337:              srli         s10, t5, 2
                  nop
                  slt          s8, gp, a3
                  slti         ra, s11, 396
                  and          t1, tp, t5
                  auipc        s5, 374112
343:              slti         t4, s4, 796
                  slti         t1, zero, -1463
                  xor          t5, tp, a2
                  sltiu        zero, sp, 1412
                  bne          t2, s3, 364f
                  addi         s1, t6, 1536
                  beq          s6, s8, 367f
                  sltiu        s9, s8, -1973
                  slt          a5, t1, t6
                  sltiu        s10, s0, -857
                  slli         t4, a7, 28
                  slti         t6, a7, -1539
                  bgeu         a2, s5, 372f
                  sltiu        t3, ra, 1669
                  blt          gp, ra, 367f
                  bgeu         t5, s8, 375f
                  sltu         t3, zero, s11
                  slli         a5, t3, 6
                  bltu         t3, t6, 381f
                  bgeu         s5, a2, 378f
                  or           t5, a1, a0
364:              or           s4, s0, sp
                  slli         a5, t3, 16
                  add          zero, s3, a5
367:              xor          a1, ra, a2
                  add          a2, a6, a1
                  blt          t3, t6, 376f
                  bne          s4, zero, 387f
                  xor          a1, t4, a0
372:              slt          s6, a1, ra
                  bgeu         s3, s5, 376f
                  slt          t1, a1, a2
375:              sll          a5, a3, s3
376:              xori         t6, s1, 806
                  srl          s6, s7, ra
378:              xori         s9, a7, -335
                  auipc        s3, 746067
                  ori          s5, a0, 790
381:              bge          t6, s9, 392f
                  bltu         a5, s3, 391f
                  nop
                  beq          a7, s11, 399f
                  auipc        s5, 850722
                  beq          s4, s4, 406f
387:              sra          s3, a5, a6
                  bltu         t3, s10, 392f
                  ori          a2, t1, -1965
                  xori         s2, s1, 706
391:              slli         a6, a7, 31
392:              addi         gp, gp, -1256
                  slt          s6, t2, a2
                  blt          s9, s4, 407f
                  srl          s10, a2, zero
                  slti         t4, a5, -382
                  slli         zero, t4, 17
                  sra          s3, s5, s10
                  or           s1, sp, s9
                  addi         s6, a6, 61
                  xor          t4, ra, s6
                  slti         gp, t0, -1873
                  sra          gp, ra, s5
                  srai         a4, zero, 19
                  andi         s9, s11, -1248
                  xor          a6, s7, s9
                  addi         sp, t6, -490
sub_3_j6:         jal          ra, sub_4 #jump sub_3 -> sub_4
                  and          t6, sp, s5
399:              sltiu        a6, a0, 136
                  bge          t0, s11, 418f
                  srai         a2, t6, 4
                  ori          s4, t3, -1986
                  slli         a6, gp, 19
                  bgeu         s0, gp, 411f
                  lui          a0, 225474
406:              slti         a5, s3, -733
407:              nop
                  ori          tp, t6, 1091
                  slti         s4, a0, 1711
                  bge          a1, t6, 427f
411:              sra          tp, s0, t2
                  ori          t2, s3, -27
sub_3_18:         jal          ra, 17f
0:                jal          ra, 8f
1:                jal          t1, 18f
2:                jal          ra, 7f
3:                jal          ra, 12f
4:                jal          ra, 9f
5:                jal          ra, 4b
6:                jal          ra, 13f
7:                jal          ra, 16f
8:                jal          t4, 2b
9:                jal          a6, 1b
10:               jal          ra, 5b
11:               jal          s5, 0b
12:               jal          s2, 11b
13:               jal          t1, 14f
14:               jal          t1, 15f
15:               jal          t1, 3b
16:               jal          ra, 10b
17:               jal          ra, 6b
18:               andi         sp, a6, 1213
                  ori          t6, s11, -1627
                  auipc        a0, 523677
                  slti         a3, a5, -194
                  slt          t1, zero, s2
                  and          a2, s8, sp
418:              bne          a6, sp, 422f
                  and          s1, a2, s4
                  sub          t2, s10, t6
                  sra          a2, t2, sp
422:              srai         s6, t4, 10
                  sub          s5, t2, t1
                  slti         s1, t6, 382
                  sll          t5, s6, sp
                  beq          t3, s11, 431f
427:              nop
                  sltu         gp, a4, gp
                  srai         t1, t1, 24
                  beq          a6, a4, 446f
431:              bge          a0, s8, 434f
                  bgeu         a2, zero, 444f
                  nop
434:              or           s1, t4, a7
                  addi         t2, a6, -688
                  addi         a5, t3, -1825
                  srai         a1, s8, 6
                  and          t3, s5, s5
                  or           a5, s1, s6
                  nop
                  blt          s10, s11, 459f
                  srli         s7, a0, 25
                  bgeu         a2, s6, 452f
444:              bltu         a2, gp, 456f
sub_3_9:          jal          ra, 11f
0:                jal          ra, 19f
1:                jal          ra, 12f
2:                jal          ra, 16f
3:                jal          ra, 17f
4:                jal          t1, 0b
5:                jal          tp, 26f
6:                jal          s1, 7f
7:                jal          ra, 25f
8:                jal          t4, 2b
9:                jal          t1, 4b
10:               jal          a0, 23f
11:               jal          t1, 6b
12:               jal          t4, 22f
13:               jal          t1, 18f
14:               jal          s10, 9b
15:               jal          ra, 13b
16:               jal          a0, 20f
17:               jal          ra, 5b
18:               jal          ra, 28f
19:               jal          ra, 24f
20:               jal          tp, 15b
21:               jal          ra, 14b
22:               jal          ra, 21b
23:               jal          t1, 8b
24:               jal          ra, 3b
25:               jal          t1, 1b
26:               jal          t1, 27f
27:               jal          s10, 10b
28:               addi         t6, t3, -837
                  bne          s9, t0, 458f
446:              slli         s8, s2, 13
                  addi         gp, s1, -779
                  add          t0, s7, t6
                  blt          a0, a1, 460f
                  beq          t4, s0, 461f
                  srai         t2, t4, 20
452:              sltiu        s4, s9, -1801
                  bgeu         sp, a3, 454f
454:              blt          s3, s3, 466f
                  slt          s4, a3, sp
456:              addi         t6, a6, 1866
                  bne          ra, s8, 476f
458:              ori          a1, s6, -966
459:              bge          t5, a2, 474f
460:              beq          a4, a3, 472f
461:              bne          s2, s3, 464f
                  auipc        a6, 978860
                  sltiu        s9, gp, -2002
464:              lui          t3, 236213
                  sll          a3, t1, ra
466:              add          sp, s11, zero
                  add          s9, s7, a1
                  and          s7, a1, s6
                  srli         a0, s5, 29
                  ori          a6, sp, -983
                  blt          s0, t5, 480f
472:              andi         t5, a7, -782
                  sltiu        a6, s11, -1711
474:              ori          s2, tp, -1017
                  addi         s9, a0, 1765
476:              auipc        a0, 384006
                  add          ra, t5, s1
                  bltu         a7, s8, 496f
                  bne          s0, s9, 490f
480:              slli         sp, s8, 9
                  srl          a5, s0, ra
                  auipc        s1, 677362
                  addi         s3, s10, -427
                  bne          s11, s3, 501f
                  or           s6, a7, zero
                  blt          s1, a3, 506f
                  lui          s5, 735327
                  and          a0, a2, s7
                  andi         tp, t5, 1168
490:              sub          sp, a1, a3
                  add          a6, s4, s2
                  slt          s2, sp, zero
                  srli         s3, s6, 21
                  addi         t0, s2, 864
                  or           t0, a3, tp
496:              nop
                  slt          a5, s4, t4
                  sub          a6, t3, s3
                  auipc        s4, 744944
                  addi         t2, a7, 2028
501:              sltu         t5, t1, s6
                  srl          s10, a7, t0
                  addi         a4, s0, -1627
                  ori          t1, a7, -1014
                  auipc        t6, 127955
506:              slt          t6, a4, s2
                  ori          t6, t0, 1867
                  addi         a4, a5, -1723
                  bgeu         tp, t2, 516f
                  slli         t2, s9, 16
                  blt          s10, s1, 520f
                  lui          s10, 643980
                  nop
                  xor          a2, s4, s2
                  sll          tp, a4, a5
516:              auipc        a1, 186161
                  andi         t4, a5, -310
                  nop
                  bltu         tp, a5, 530f
520:              auipc        a4, 321293
                  ori          a1, a3, 1751
                  sll          t3, t4, a2
                  bne          s0, a2, 540f
                  bgeu         s2, s8, 528f
                  sra          t2, s1, t0
sub_3_12:         jal          ra, 3f
0:                jal          gp, 4f
1:                jal          t1, 5f
2:                jal          a6, 13f
3:                jal          ra, 11f
4:                jal          t1, 8f
5:                jal          t1, 6f
6:                jal          ra, 12f
7:                jal          ra, 2b
8:                jal          ra, 10f
9:                jal          ra, 14f
10:               jal          ra, 9b
11:               jal          ra, 7b
12:               jal          ra, 0b
13:               jal          tp, 1b
14:               andi         a6, s7, 594
                  slli         t4, s3, 30
                  and          gp, a3, s1
528:              add          a6, t0, a5
                  sub          a3, t1, sp
530:              bne          s6, a7, 533f
                  slli         gp, t1, 29
                  bge          t2, t6, 536f
533:              nop
                  or           s1, t5, a5
                  sll          s3, a6, s10
536:              sll          a5, s11, a5
                  add          s9, s4, a2
                  slti         tp, s9, 1599
                  bltu         a5, s0, 555f
540:              andi         gp, ra, -152
                  sltu         a0, s6, s9
                  srli         gp, s10, 19
                  xor          s9, tp, t1
                  addi         a0, a0, 322
                  sll          s5, s11, s3
                  slti         s10, s0, -386
                  xor          s3, s5, zero
                  nop
                  sltiu        t0, s2, -625
                  lui          a1, 1047057
                  slli         s1, gp, 26
                  or           tp, t3, s6
                  ori          a5, s2, -1685
                  slli         ra, s10, 31
555:              xori         ra, s4, 1042
                  sra          t1, t3, t2
                  xori         t1, t3, 889
                  bge          t2, s4, 565f
                  auipc        a5, 578179
                  sra          a0, ra, a3
                  slt          a1, s2, sp
                  sra          s4, s5, s10
                  blt          s0, a4, 576f
                  lui          a2, 755181
565:              slli         t0, zero, 19
                  andi         a5, a6, 965
                  ori          a3, a6, -2028
                  nop
                  nop
                  andi         t6, s2, 1493
                  bne          s0, a6, 584f
                  srl          s6, gp, t4
                  add          zero, s0, t4
                  srai         s4, t3, 26
                  lui          s2, 647234
576:              andi         t3, s10, -586
                  srai         a2, a1, 15
                  slt          a6, s10, zero
                  srl          s10, a3, s3
                  slli         t0, t4, 20
                  srai         s6, a7, 0
                  add          t3, t6, t2
                  lui          s1, 327673
584:              andi         t2, t6, -1166
                  addi         t5, a4, -1092
                  sll          a1, s6, a0
                  and          s1, s7, s1
                  and          a2, s2, s6
                  xori         gp, s11, -486
                  or           t4, s4, s7
                  slli         a5, a2, 31
                  bge          s8, s2, 611f
                  or           tp, s9, ra
                  sub          s3, tp, t3
                  sra          a2, a5, s5
                  slti         zero, sp, 1376
                  bne          sp, gp, 602f
                  slt          a3, s4, t5
                  srl          s1, s1, a7
                  xor          a3, s3, t3
                  sub          tp, a4, a4
602:              bne          sp, s11, 622f
                  bgeu         s0, t1, 614f
                  sll          s1, s7, ra
                  xori         t3, s10, -149
                  andi         ra, zero, -1068
                  xor          s2, s0, s6
                  slti         t4, a6, 1858
                  bltu         zero, s11, 621f
                  add          zero, s11, ra
611:              slt          s3, a1, t4
                  srl          gp, t4, a5
                  auipc        a3, 225308
614:              beq          t6, s10, 615f
615:              slt          s7, s5, a2
                  slt          t3, zero, t3
                  or           a2, a0, t3
                  blt          a1, s7, 628f
                  nop
                  slt          tp, a4, sp
621:              nop
622:              auipc        s1, 392532
                  bge          s2, s3, 635f
                  bltu         t2, s2, 641f
                  auipc        a5, 743089
                  bge          t4, s4, 642f
                  xori         a2, s2, -459
628:              xor          s8, a1, s8
                  srai         zero, s6, 4
                  sll          a3, zero, s1
                  beq          a4, sp, 649f
                  xor          t5, tp, t2
                  lui          s5, 781833
                  srai         a2, s11, 0
635:              srli         ra, gp, 20
                  slli         s6, t6, 13
                  and          t2, ra, a1
                  bne          a6, s11, 648f
                  addi         a4, a5, 1190
                  bgeu         s1, s9, 658f
641:              andi         s1, ra, -1888
642:              slti         t1, s2, 1434
                  nop
                  sub          s9, a6, a6
                  blt          s1, tp, 656f
                  srl          t1, ra, s5
                  bltu         a1, a3, 654f
648:              nop
649:              bltu         gp, a7, 665f
                  sll          tp, s6, tp
                  slli         s3, t4, 13
                  sltiu        t6, s8, 1253
                  ori          s1, s6, -1373
654:              bgeu         a3, s1, 666f
                  bne          a0, s4, 659f
656:              slt          t5, t1, t3
                  sll          sp, zero, s11
658:              andi         t3, a5, -1767
659:              xori         t3, gp, -542
                  xor          s7, t6, s2
                  srli         s10, a6, 31
                  or           a5, s6, s7
                  sll          s3, t0, a4
                  addi         a1, a1, -1189
665:              bgeu         t1, t2, 666f
666:              slli         ra, a6, 22
                  or           s10, zero, a2
                  srl          t5, zero, a4
                  nop
                  sltiu        t0, zero, -833
                  slli         a1, s5, 8
                  blt          t5, s5, 684f
                  slli         tp, s9, 19
                  srai         gp, zero, 22
                  xori         t3, a3, -1452
                  bge          a2, s11, 691f
                  andi         t6, s7, -1836
                  sltiu        sp, a0, 2043
                  bge          a4, sp, 697f
                  bne          gp, a4, 693f
                  bne          s3, s7, 692f
                  sub          t3, a3, a1
sub_3_1:          jal          ra, 2f
0:                jal          ra, 25f
1:                jal          a2, 5f
2:                jal          ra, 17f
3:                jal          s3, 4f
4:                jal          t1, 10f
5:                jal          t0, 18f
6:                jal          ra, 20f
7:                jal          s10, 0b
8:                jal          ra, 27f
9:                jal          s3, 13f
10:               jal          t5, 22f
11:               jal          a5, 3b
12:               jal          ra, 7b
13:               jal          ra, 11b
14:               jal          ra, 26f
15:               jal          t1, 16f
16:               jal          t1, 14b
17:               jal          ra, 9b
18:               jal          ra, 6b
19:               jal          ra, 28f
20:               jal          ra, 15b
21:               jal          ra, 24f
22:               jal          ra, 23f
23:               jal          s4, 19b
24:               jal          s6, 8b
25:               jal          ra, 1b
26:               jal          tp, 29f
27:               jal          ra, 30f
28:               jal          t1, 12b
29:               jal          ra, 21b
30:               addi         a6, t5, 1821
                  blt          sp, t2, 700f
684:              bne          a4, a7, 701f
                  sub          s2, a5, s9
                  blt          s1, t0, 703f
                  bne          ra, s9, 692f
                  and          s6, t3, s4
                  sltu         tp, s5, a1
                  xor          t0, a1, ra
691:              sub          t2, tp, s10
692:              nop
693:              or           t3, tp, s2
                  bltu         tp, s9, 707f
                  nop
                  auipc        a1, 275368
697:              xor          s2, ra, t2
                  ori          s3, s1, -1505
                  bne          s7, a4, 715f
700:              xori         t6, ra, 1703
701:              andi         s6, t0, 1245
                  srai         a4, gp, 27
703:              slti         t2, s7, 995
                  sub          a1, a5, gp
                  srli         gp, a4, 0
                  beq          s5, a1, 718f
707:              slli         t5, s3, 21
                  xori         zero, t6, -947
                  xor          a4, ra, t3
                  sll          s6, s1, s4
                  lui          a4, 934843
                  sltu         t5, s6, ra
                  or           s8, t0, t6
                  sltu         a3, s3, a1
715:              lui          a6, 732046
                  beq          ra, a0, 723f
                  bgeu         s11, a0, 721f
718:              srli         t2, s11, 7
                  sltiu        t3, a6, 764
                  bge          s7, t0, 729f
721:              sub          a1, a5, a2
                  or           s3, a4, s9
723:              sltiu        t3, s11, -796
                  bltu         t0, s0, 727f
                  or           a5, ra, t1
                  sltiu        ra, sp, 420
727:              srai         s8, ra, 18
                  bgeu         s2, a6, 737f
729:              sll          s8, s6, t1
sub_3_21:         jal          ra, 7f
0:                jal          sp, 8f
1:                jal          ra, 12f
2:                jal          t0, 10f
3:                jal          gp, 16f
4:                jal          t3, 17f
5:                jal          s9, 13f
6:                jal          a2, 3b
7:                jal          t1, 0b
8:                jal          t1, 11f
9:                jal          tp, 4b
10:               jal          t0, 9b
11:               jal          t1, 5b
12:               jal          s7, 6b
13:               jal          ra, 1b
14:               jal          ra, 15f
15:               jal          t6, 2b
16:               jal          s2, 14b
17:               or           tp, a5, s8
                  bge          t6, a6, 733f
                  sub          gp, a1, s1
                  sra          s8, tp, s9
733:              xori         s1, sp, -1216
                  slti         s6, tp, 943
                  xori         s3, t6, -1561
                  sltiu        s2, tp, -1932
737:              bltu         ra, ra, 757f
                  sra          t4, a5, a3
                  nop
                  xor          t2, gp, t3
                  bge          s3, s8, 760f
                  blt          t3, a1, 762f
                  addi         s7, a4, 1591
                  sub          s6, t6, t2
                  addi         t3, t4, 1646
                  bne          s7, a7, 757f
                  lui          a1, 209951
                  slli         t4, s1, 28
                  bgeu         a3, zero, 756f
                  slli         t6, a0, 15
                  sub          sp, s7, s10
                  srl          a3, t3, s6
                  andi         t5, a3, 1341
                  xori         s3, a7, -1681
                  sltiu        a3, a4, 1387
756:              bgeu         ra, t2, 773f
757:              bgeu         s0, s8, 761f
                  addi         a1, a1, -1697
                  sltiu        a6, t4, -963
760:              andi         t4, s4, -463
761:              xori         ra, s9, 525
762:              xori         t1, s6, 1853
                  xori         t0, a3, -244
                  nop
                  bgeu         a7, a1, 774f
                  and          s7, s1, gp
                  sub          s10, s7, ra
                  and          t4, a0, s6
                  auipc        t5, 633446
                  bltu         t0, t1, 788f
                  bltu         a5, a2, 791f
                  srai         s2, a0, 23
773:              sll          s1, a1, t6
774:              bge          s4, s11, 789f
                  sra          t0, ra, tp
                  xor          a6, s5, t0
                  sltu         gp, s6, zero
                  beq          tp, t3, 783f
                  srai         s9, a2, 10
                  andi         a6, s7, 1030
                  sra          t3, t2, a6
                  slli         s6, s5, 16
783:              auipc        a4, 674278
                  slt          ra, gp, s5
                  and          a2, s5, s9
                  andi         s6, t6, -125
                  slt          s2, s9, tp
788:              beq          tp, s11, 797f
789:              xori         s6, a2, 1
                  add          sp, a6, t2
791:              bne          t4, t4, 809f
                  slti         ra, a5, 1475
                  bltu         a5, a6, 805f
                  sltu         s6, s5, s6
                  sltu         t2, s6, s8
                  addi         zero, zero, 18
797:              srl          a3, gp, s9
                  bgeu         t6, zero, 811f
                  slti         a4, a6, 25
                  add          a1, s10, t2
                  sltiu        t3, s5, -1313
                  andi         s10, s9, -1253
                  bge          s6, t2, 822f
                  beq          s0, t6, 815f
805:              addi         s3, s9, -1324
                  bne          t6, t3, 826f
                  ori          s3, s2, -178
                  slti         t5, s2, 1781
809:              bne          a5, gp, 820f
                  srai         t6, a5, 1
811:              ori          a5, s3, -1553
                  xor          t6, s6, s9
                  xori         s1, s2, 714
                  add          t1, s5, s5
815:              nop
                  bge          s11, sp, 832f
                  and          t2, ra, t6
                  srli         s7, s10, 20
                  beq          t6, t2, 823f
820:              andi         s3, s0, -656
                  bltu         t2, s7, 833f
822:              slti         a3, t4, 965
823:              slli         s10, s8, 17
                  nop
                  bgeu         s1, gp, 832f
826:              or           sp, t2, t0
                  slt          s9, a4, ra
                  srli         t2, s0, 1
                  or           t2, a7, ra
                  beq          s2, gp, 847f
                  addi         t0, a0, 999
832:              bge          sp, a4, 835f
833:              srai         a5, t5, 25
                  and          a3, zero, t5
835:              srli         s1, a6, 30
                  sltu         s9, a7, s11
                  sra          s3, a3, s4
                  xori         gp, t4, 1415
                  sra          a5, s0, t4
                  addi         a5, t3, 1701
                  lui          s4, 233453
                  slt          tp, s6, ra
                  bgeu         s7, t5, 854f
                  srl          t5, a0, t4
                  slti         a0, s4, -800
                  slti         s3, s0, 692
847:              sll          a5, s8, s2
                  bne          s1, t6, 849f
849:              addi         t6, t3, -1735
                  auipc        a0, 612097
                  srai         t6, a5, 24
                  andi         s7, sp, -1346
                  addi         s10, s7, -1694
854:              srli         s1, s7, 8
                  srai         a4, s0, 6
                  bge          a2, a0, 872f
                  addi         t2, s7, 1364
                  srl          a0, a4, t4
                  sltiu        s9, s11, -35
                  add          a4, s0, s11
                  srl          s9, s10, t3
                  bltu         a7, gp, 875f
                  nop
                  andi         s7, zero, 1174
                  auipc        s1, 271469
                  bne          a1, t5, 878f
                  or           ra, t1, s4
                  ori          ra, a5, 1903
                  srai         t4, a5, 14
                  or           s3, s11, a7
                  bne          t4, s8, 874f
872:              or           zero, s5, a3
                  or           t3, s4, sp
874:              beq          s7, ra, 891f
875:              beq          s4, s8, 885f
                  sltu         a3, a0, s5
                  sltiu        s9, s9, -1719
878:              bge          s9, t0, 891f
                  sub          ra, s2, s11
                  sra          s10, s10, s4
                  or           ra, t0, a2
                  bge          t0, s9, 901f
                  srli         sp, gp, 13
                  srl          zero, a3, s5
885:              srl          s2, sp, s9
                  andi         tp, s10, 1543
                  nop
                  add          s6, s3, s6
                  sltiu        a4, t3, 798
                  slli         t4, t6, 0
891:              auipc        a5, 730318
                  bge          s9, sp, 908f
                  sll          s10, t3, t2
                  sltiu        t3, gp, -1588
                  auipc        s7, 499447
                  blt          t4, t6, 897f
897:              slli         s5, a0, 26
                  sltiu        a2, zero, -1265
                  bgeu         gp, s3, 911f
                  bge          a1, a6, 911f
901:              bne          s11, t3, 910f
                  nop
                  slti         t5, sp, -1638
                  xor          s2, t0, tp
                  bgeu         s0, zero, 923f
                  bge          t5, s11, 910f
                  sltu         s6, a1, s5
908:              srai         tp, a5, 31
                  bge          s10, s6, 920f
910:              slli         s6, sp, 23
911:              and          sp, a3, zero
                  sltiu        gp, a6, 1414
                  ori          t0, s4, 1845
                  sll          gp, a6, sp
                  sra          s9, s7, s0
                  blt          t3, a2, 933f
                  xori         t0, s4, 1160
                  sub          t4, t4, a4
                  bge          a0, s0, 930f
920:              sll          t4, s3, tp
                  bgeu         s9, s3, 930f
                  sltiu        a5, gp, 103
923:              sub          tp, s1, t3
                  auipc        t6, 477464
                  srl          tp, s1, s10
                  slli         t0, s10, 7
                  srli         t1, a5, 29
                  addi         a5, a2, 83
                  bge          t4, s9, 936f
930:              bne          t5, s11, 950f
                  xori         s1, a6, -1726
                  blt          gp, s6, 935f
933:              xor          ra, t5, t3
                  bge          s5, s10, 941f
935:              lui          s8, 294873
936:              slt          s9, sp, s7
                  sub          t3, a0, a6
                  addi         t2, a1, 1297
                  sra          t3, s3, s1
                  srai         t3, t5, 4
941:              bne          s1, s11, 951f
                  auipc        a2, 607091
                  srai         a0, s5, 7
                  ori          a6, s7, -1844
                  andi         s7, t2, -911
                  srai         t5, a1, 6
                  slt          s7, t1, s7
                  sll          s2, t0, t5
                  beq          a1, s9, 967f
950:              addi         t0, s4, 246
951:              sltu         s6, t4, ra
                  bge          t2, t2, 965f
                  xor          t6, a1, a1
                  nop
                  nop
                  xor          a5, a5, a2
                  add          s1, s10, t4
                  slli         s2, s4, 26
                  sltu         s8, s11, s5
                  addi         gp, s4, 1250
                  blt          t3, zero, 978f
                  slli         a6, a7, 10
                  blt          t1, t1, 967f
                  beq          t6, a3, 967f
965:              and          a6, s3, t0
                  sub          a5, s2, s9
967:              bltu         s10, ra, 972f
                  ori          a2, s11, -573
                  nop
                  auipc        a5, 296472
                  sra          s2, s9, s0
972:              nop
                  auipc        t2, 928136
                  beq          a1, t1, 991f
                  bltu         tp, s8, 990f
                  slli         a1, gp, 8
sub_3_8:          jal          ra, 0f
0:                jal          s4, 4f
1:                jal          ra, 16f
2:                jal          ra, 15f
3:                jal          s4, 2b
4:                jal          ra, 7f
5:                jal          t1, 13f
6:                jal          s8, 17f
7:                jal          t1, 8f
8:                jal          ra, 1b
9:                jal          s1, 6b
10:               jal          gp, 14f
11:               jal          ra, 9b
12:               jal          t0, 11b
13:               jal          tp, 3b
14:               jal          tp, 12b
15:               jal          t1, 10b
16:               jal          ra, 5b
17:               andi         s4, a7, 959
                  beq          a7, a5, 997f
978:              sll          a2, t4, a6
                  srl          zero, s5, a0
                  srai         t3, t5, 27
                  sra          s1, s2, a4
                  addi         t0, t4, -1102
                  blt          s11, s5, 995f
                  sltiu        t1, s0, -15
                  andi         t3, a5, 636
                  addi         s2, s0, -248
                  bgeu         a3, a0, 999f
                  beq          t2, s1, 1004f
                  or           ra, s2, s1
990:              srli         a0, a6, 5
991:              sra          t1, t0, s9
                  ori          a0, sp, -65
                  sll          s1, t0, a6
                  blt          s6, s7, 998f
995:              auipc        s10, 899852
                  andi         s3, s0, -1072
997:              sll          sp, a4, a0
998:              auipc        t0, 680217
999:              xor          s9, s4, a0
                  xori         t6, t5, 1221
                  nop
                  and          tp, s1, sp
                  and          t3, s3, t6
1004:             srai         t6, t1, 5
                  bge          gp, s7, 1022f
                  andi         s4, t6, -558
                  xori         s2, gp, 89
                  sll          sp, s7, gp
                  bne          t5, s7, 1022f
                  ori          a5, a0, -107
                  slli         gp, s0, 28
                  bne          s10, s4, 1017f
                  and          s9, gp, zero
                  bgeu         a4, a4, 1027f
                  or           s5, a1, s4
                  slt          t2, s7, a7
1017:             blt          s6, a3, 1024f
                  lui          s2, 534894
                  sra          zero, t5, ra
                  sub          a2, a2, t0
                  slli         a0, s1, 6
1022:             bne          s6, s11, 1031f
                  bltu         s10, s0, 1040f
1024:             blt          a2, s5, 1036f
                  sll          s5, t6, gp
                  sltiu        sp, t5, 665
1027:             srli         a0, zero, 15
                  bne          s0, t2, 1038f
                  beq          s8, t2, 1040f
                  bge          t5, s6, 1042f
1031:             or           s5, s7, a4
                  addi         tp, t4, 635
                  ori          s7, a5, 534
                  andi         s3, a6, -960
                  xor          a4, t5, s11
1036:             and          s8, sp, sp
                  sltiu        gp, s8, 209
1038:             lui          a5, 184300
                  xor          a6, a1, t5
1040:             xori         s2, s0, 1886
                  auipc        a3, 233302
1042:             sll          t4, s5, tp
                  and          s4, t5, s9
                  sll          s7, s4, s8
                  bge          s0, s1, 1052f
                  nop
                  bltu         s9, t0, 1058f
                  xor          s9, t1, sp
                  srai         a3, gp, 22
                  add          gp, t3, a4
                  or           t0, s5, s10
1052:             or           s9, t5, a4
                  add          a6, a3, s4
                  srai         zero, zero, 30
                  srl          t6, t0, a4
                  bne          a0, s2, 1073f
                  or           s3, s4, a5
1058:             blt          s4, s10, 1073f
                  bltu         tp, zero, 1060f
1060:             lui          s8, 1003282
                  or           t0, gp, s3
                  bge          s2, a2, 1082f
                  slli         s10, t4, 5
                  srli         t3, s8, 19
                  ori          t2, zero, -1969
                  andi         t2, t5, -1972
                  andi         s1, a3, 546
                  auipc        s8, 848170
                  addi         a3, a0, 472
                  xori         t0, s5, -682
                  bgeu         gp, a7, 1082f
                  bgeu         s10, a4, 1090f
1073:             xor          t0, s5, s8
                  lui          t3, 148879
                  slli         a6, a2, 9
                  addi         ra, s11, -2021
                  bgeu         t2, s2, 1081f
                  andi         a5, s0, 208
                  srl          s9, sp, t5
                  bge          s3, s7, 1092f
1081:             srl          s4, s10, zero
1082:             xor          t1, t4, s4
                  auipc        zero, 373632
                  auipc        ra, 34492
                  srl          s5, t4, gp
                  srai         t1, t3, 0
                  bne          s10, s11, 1090f
                  nop
                  bne          s2, s7, 1092f
1090:             add          s5, s4, a3
                  xor          a1, a3, a4
1092:             xor          s3, a5, s1
                  xori         a0, tp, -1732
                  slt          s5, a6, a4
                  xor          t2, s7, a2
                  sltu         t0, s11, t3
                  lui          tp, 562659
                  and          s3, t2, t4
                  sub          t1, s8, t0
                  and          s8, s5, sp
                  srai         sp, a7, 9
                  sltiu        a1, t4, 700
                  slt          s2, t2, s3
                  srai         s8, a0, 11
                  sltiu        t0, t3, -23
                  and          a4, s9, s5
                  blt          s3, a1, 1125f
                  or           t3, s8, a7
                  or           t1, a2, t0
                  xor          t4, sp, s10
                  bltu         t0, s9, 1127f
                  add          a6, a6, t4
                  blt          s0, a0, 1122f
                  and          tp, t2, a2
                  bne          s11, a3, 1134f
                  sub          s8, s6, s4
                  slli         t1, t2, 24
                  beq          s8, t1, 1138f
                  slti         tp, a4, 1
                  srl          t0, t4, s10
                  sra          t6, s9, s3
1122:             xor          s4, s9, s3
                  sra          sp, a1, s11
                  slti         ra, t0, -328
1125:             blt          a3, s10, 1141f
                  slli         a4, ra, 13
1127:             bltu         gp, s10, 1143f
                  srai         s3, t6, 25
                  and          a6, t4, s2
                  sltu         ra, t5, sp
                  xor          t1, s3, t2
                  add          a3, t1, ra
                  ori          gp, s4, 718
1134:             addi         ra, ra, -1757
                  srli         s10, s5, 6
                  and          zero, a7, s5
                  blt          a6, t5, 1154f
1138:             ori          s5, zero, 1475
                  add          s8, s4, s11
                  srl          a2, zero, s10
1141:             xor          s2, a4, zero
                  sltu         t3, t0, a7
1143:             andi         t2, t2, -143
                  beq          s7, sp, 1160f
                  sltiu        s6, t1, -137
                  sltu         a6, a4, s4
                  bne          gp, s2, 1151f
                  auipc        s6, 1033900
                  slti         a2, tp, -423
                  or           t5, s4, s4
1151:             sra          s2, t6, a5
                  slt          a3, s5, a7
                  or           s8, a6, a3
1154:             xori         s6, t5, 307
                  xori         a0, a4, 1474
                  blt          s3, s11, 1169f
                  srl          t3, s5, zero
                  addi         a2, t6, -936
                  sub          t3, t6, a0
1160:             sltu         s2, a3, t0
                  bltu         gp, t5, 1179f
                  beq          s0, tp, 1167f
                  auipc        t3, 179246
                  ori          t3, a3, -1527
                  srli         a0, t4, 11
                  beq          t3, s9, 1179f
1167:             sra          t3, t0, zero
                  bge          a0, t6, 1188f
1169:             sll          s2, a3, a4
                  add          a0, s11, s8
                  xor          t0, s2, zero
                  xor          ra, s0, a5
                  addi         a4, t5, -723
                  srli         s5, sp, 17
                  add          s1, t1, s3
                  blt          s8, s8, 1186f
                  xor          s4, t4, s10
                  lui          s9, 444229
1179:             bltu         t0, s6, 1190f
                  srai         s3, a7, 30
                  slti         a2, t6, -352
                  nop
                  srli         t3, s11, 30
                  srli         ra, gp, 7
                  blt          s5, s11, 1188f
1186:             srli         t3, s6, 0
                  slti         tp, s0, 950
1188:             andi         a2, s6, -1628
                  slti         a3, s0, -1301
1190:             bgeu         a0, s10, 1207f
                  slti         a0, zero, 126
                  srli         a3, s5, 30
                  bge          s8, zero, 1212f
                  and          a3, s6, a4
                  bgeu         a1, t1, 1204f
                  beq          s2, s0, 1205f
                  nop
                  xori         s9, s11, 2005
                  sll          s5, s3, s0
                  bne          ra, s11, 1201f
1201:             xori         s1, s9, 579
                  beq          s10, s6, 1214f
                  xori         t1, sp, 1834
1204:             bltu         s2, a5, 1219f
1205:             blt          s9, t2, 1209f
                  and          sp, s5, s3
1207:             sltu         s6, a6, a1
                  blt          s5, tp, 1228f
1209:             srai         s3, a2, 24
                  sub          s5, a1, a4
                  nop
1212:             sra          s7, t2, t2
                  bge          s3, a0, 1225f
1214:             bne          t3, a2, 1226f
                  andi         a0, a1, -1573
                  slti         a2, s3, -1282
                  bgeu         s6, t5, 1235f
                  andi         a6, t0, 1788
1219:             addi         t1, s0, 1876
                  or           a3, s8, t6
                  srai         s3, s1, 14
                  add          t4, a1, t2
                  slli         ra, a1, 7
                  sub          s5, t5, a1
1225:             srl          t3, s4, tp
1226:             blt          ra, s3, 1237f
                  bgeu         s11, gp, 1244f
1228:             sltiu        t5, s3, -570
                  bgeu         a7, s0, 1236f
                  bge          gp, gp, 1233f
                  bgeu         s2, a4, 1238f
                  bne          s5, a1, 1243f
1233:             bgeu         t6, a3, 1237f
                  srai         sp, s9, 12
1235:             bgeu         s1, s8, 1252f
1236:             addi         t2, s7, -2043
1237:             or           t2, s4, a0
1238:             srai         s10, t1, 30
                  bge          tp, t6, 1246f
                  slt          ra, s6, s0
                  or           t1, a7, a2
                  auipc        s2, 107066
1243:             xor          s7, t4, a2
1244:             slli         s3, t6, 5
                  xor          a3, s5, s8
1246:             addi         gp, t4, -1861
                  srl          t4, t2, gp
                  addi         s1, t4, -109
                  bge          s4, s2, 1258f
                  lui          t1, 118479
                  auipc        zero, 448444
1252:             srai         sp, s6, 29
                  lui          a4, 772485
                  slt          s10, s11, a1
                  slt          s4, s3, s7
                  auipc        a0, 475866
                  blt          a2, s0, 1276f
1258:             lui          t2, 296801
                  srl          gp, t0, t6
                  blt          t1, tp, 1272f
                  sub          tp, ra, t0
                  blt          s7, sp, 1273f
                  sub          t4, a3, s5
                  andi         s1, a2, 1675
                  beq          t6, a2, 1277f
                  addi         s3, s6, -516
                  srai         s1, s5, 29
                  bge          a4, a2, 1285f
                  slti         s4, s7, 253
                  bgeu         a7, s4, 1285f
                  bltu         a7, sp, 1281f
1272:             addi         a6, s4, -1375
1273:             sll          s5, a2, t4
                  bge          s7, gp, 1294f
                  sltu         s7, tp, t3
1276:             blt          s11, t6, 1283f
1277:             sltu         s9, ra, s9
                  sra          s3, s8, sp
                  addi         s8, zero, 750
                  sltiu        s1, s1, -439
1281:             sltiu        s5, s7, -1315
                  xori         a3, gp, -869
1283:             xori         s3, t1, -1643
                  slt          s10, gp, a7
1285:             addi         gp, a5, -2015
                  srai         t4, s9, 17
                  srli         t1, s11, 14
                  srl          t5, s8, zero
                  nop
                  slt          a0, s5, t6
                  slti         s1, s5, 1147
                  andi         a6, a0, 1880
                  lui          gp, 231396
1294:             srl          s1, a5, a2
                  bltu         a1, t3, 1308f
                  srl          t6, gp, s5
                  slti         t6, s6, -1544
                  nop
                  sra          a1, a4, t6
                  add          s3, t2, sp
                  sltiu        t3, a1, 59
                  add          t3, a1, s4
                  sll          t6, tp, t4
                  or           s7, s3, s1
                  blt          s0, s10, 1321f
                  slli         t5, a0, 20
                  srai         s8, s0, 10
1308:             xor          a2, s6, s11
                  sub          a3, t0, s5
                  sub          a4, sp, s7
                  bgeu         tp, a4, 1314f
                  blt          s1, s11, 1330f
                  sub          ra, s7, s7
1314:             sltiu        zero, t6, 21
                  lui          t0, 490452
                  auipc        s3, 853731
                  slli         s4, a5, 27
                  srli         a6, zero, 7
                  sra          s3, a0, s5
                  sll          a2, a6, tp
1321:             xor          t0, s1, tp
                  lui          a3, 530910
                  and          t0, s8, s0
                  add          tp, a5, t3
                  sra          s7, s4, s10
                  sub          ra, ra, s11
                  and          t2, s10, t5
                  xori         a2, zero, -1173
                  sll          a1, s4, s10
1330:             addi         s3, t3, 703
                  sltu         s8, t3, ra
                  slti         sp, s11, -1715
                  srai         s9, a4, 31
                  bne          a3, s6, 1347f
                  lui          s2, 959786
                  srli         s3, s6, 9
                  xori         s5, zero, 1518
                  sub          s7, a4, s8
                  add          a6, a5, t0
                  slli         t1, t1, 19
                  and          s3, ra, s5
                  xori         t2, s3, 518
                  sra          t6, t6, s1
                  bltu         a6, a5, 1355f
                  or           ra, s8, s11
                  xor          a1, t2, a4
1347:             or           t2, ra, s8
                  or           a3, t6, a3
                  srl          a1, gp, a1
                  ori          a2, a4, -1835
                  nop
                  bgeu         s11, a7, 1355f
                  and          s5, ra, sp
                  sltu         s5, s3, s8
1355:             slti         a1, s5, 1658
                  bgeu         s7, s2, 1357f
1357:             srl          s10, tp, t4
                  andi         s8, t2, -1171
                  lui          s9, 147134
                  srl          t4, s9, gp
                  or           a0, a0, s7
                  lui          s5, 615500
                  or           t1, t3, a6
                  sltu         sp, tp, s7
                  slt          a5, s5, s8
                  srl          t5, a1, a7
                  auipc        t2, 393179
                  xor          t6, s10, ra
                  blt          s4, a3, 1389f
                  bgeu         sp, a0, 1375f
                  slti         a6, zero, 1173
                  sra          ra, a5, tp
                  slli         gp, t2, 15
                  andi         t3, s9, 1127
1375:             blt          t1, a6, 1393f
                  xori         ra, t6, 12
                  bgeu         gp, s3, 1388f
                  nop
                  slli         t1, s8, 7
                  add          gp, ra, t5
                  slt          s2, a0, t1
                  slli         t4, tp, 18
                  sub          a1, ra, t0
                  sltu         a3, s1, s1
                  blt          t4, gp, 1402f
                  slli         s1, t3, 24
                  sra          s4, a2, zero
1388:             auipc        t1, 654749
1389:             sll          s9, t0, t2
                  addi         a2, s11, -278
                  sltiu        s5, s8, 1395
                  sub          t4, sp, s4
1393:             lui          t5, 65635
                  nop
                  auipc        a1, 626670
                  ori          s1, a7, 1375
                  nop
                  and          t6, t5, s5
                  xori         a2, s10, -1931
                  add          t3, s2, a7
                  slti         s3, t3, 681
1402:             bgeu         s11, gp, 1406f
                  nop
                  nop
                  bgeu         s8, s6, 1421f
1406:             srl          t0, s2, s8
                  lui          t4, 394198
                  beq          s9, t6, 1417f
                  srli         s4, t0, 21
                  addi         t3, s4, 1394
                  srli         t3, s0, 5
                  sll          s5, t1, t1
                  sltiu        a5, a6, 1019
                  lui          gp, 406203
                  srli         t5, t1, 2
                  sll          t4, a5, s11
1417:             xor          zero, s6, s10
                  auipc        s9, 534830
                  slti         s4, s11, 191
                  ori          s8, ra, -1780
1421:             xori         gp, s10, -838
                  bltu         s10, zero, 1434f
                  ori          t6, a1, -1816
                  bne          a7, s5, 1441f
                  or           s9, s11, s2
                  and          s7, s9, t3
                  and          s3, gp, s11
                  auipc        gp, 357460
                  srli         t4, s0, 31
                  slt          t0, s6, a3
                  addi         t3, s4, 1047
                  addi         t6, ra, 1158
                  slli         t1, t4, 14
1434:             sra          a5, gp, s11
                  bgeu         s6, a5, 1439f
                  sub          a1, sp, a4
                  bne          t0, s10, 1448f
                  nop
1439:             sra          t1, a4, t2
                  bne          s10, a6, 1451f
1441:             xor          t2, t2, s10
                  lui          a2, 46347
                  bgeu         s6, sp, 1455f
                  bltu         a0, gp, 1447f
                  bge          s11, a0, 1461f
                  sltu         s1, s7, a2
1447:             sra          a0, a3, t2
1448:             add          s6, s10, a2
                  sub          t6, t0, a0
                  xor          s1, tp, t5
1451:             add          a0, a4, s2
                  sltiu        a1, a1, -1799
                  lui          t6, 528655
                  nop
1455:             blt          a4, s5, 1462f
                  sltu         t1, a1, sp
                  blt          s11, gp, 1462f
                  sltu         s5, a4, s3
                  sub          t2, a3, tp
                  slt          t2, t6, a6
1461:             bgeu         s3, s10, 1462f
1462:             slti         s5, s2, -44
                  andi         s3, t6, -1143
                  lw           ra, 4(s11)
                  ori          a4, s3, 198
                  xor          a1, t6, a7
                  nop
                  add          t3, s5, s5
                  lui          s3, 18277
                  addi         s11, s11, 12
                  srl          s6, a6, s3
                  srli         s3, t5, 17
                  ori          tp, sp, -318
                  srli         s1, ra, 2
2169:             addi x12, x1, 1
2169:             jalr x12, x12, 0
sub_2:            srli         gp, s10, 12
                  or           s3, t3, s7
                  ori          a3, s2, 1624
                  srai         s1, a1, 0
                  bgeu         a0, s6, sub_2_stack_p
                  xori         s7, tp, -1929
sub_2_stack_p:    addi         s11, s11, -48
                  srli         s5, s0, 17
                  nop
                  nop
                  or           t2, ra, s9
                  sw           ra, 4(s11)
                  xor          a4, a2, a0
                  auipc        t5, 590094
                  lui          a5, 832763
                  la           a1, sub_3
                  xori         s1, a7, -579
                  and          a4, s9, s4
                  xor          a2, gp, tp
                  addi         a1, a1, 968
                  bne          t6, s6, sub_2_j4 #branch to jump instr
                  slt          s8, a1, t0
sub_2_j4:         jalr         ra, a1, -968 #jump sub_2 -> sub_3
sub_2_0:          jal          ra, 2f
0:                jal          t1, 8f
1:                jal          tp, 12f
2:                jal          ra, 14f
3:                jal          t1, 24f
4:                jal          ra, 22f
5:                jal          t1, 20f
6:                jal          t1, 0b
7:                jal          t1, 4b
8:                jal          t1, 23f
9:                jal          s4, 1b
10:               jal          a3, 18f
11:               jal          s6, 15f
12:               jal          ra, 6b
13:               jal          ra, 19f
14:               jal          tp, 11b
15:               jal          t5, 9b
16:               jal          t1, 17f
17:               jal          ra, 10b
18:               jal          ra, 21f
19:               jal          gp, 7b
20:               jal          t1, 16b
21:               jal          ra, 3b
22:               jal          ra, 5b
23:               jal          t1, 13b
24:               andi         t1, t6, 350
sub_2_8:          jal          ra, 8f
0:                jal          ra, 22f
1:                jal          ra, 14f
2:                jal          s7, 23f
3:                jal          ra, 11f
4:                jal          t0, 18f
5:                jal          a3, 10f
6:                jal          ra, 2b
7:                jal          ra, 0b
8:                jal          t1, 19f
9:                jal          ra, 24f
10:               jal          ra, 12f
11:               jal          ra, 20f
12:               jal          ra, 1b
13:               jal          ra, 15f
14:               jal          ra, 17f
15:               jal          ra, 6b
16:               jal          t1, 4b
17:               jal          ra, 9b
18:               jal          a6, 5b
19:               jal          ra, 3b
20:               jal          ra, 7b
21:               jal          ra, 16b
22:               jal          ra, 13b
23:               jal          ra, 21b
24:               jal          s6, 25f
25:               andi         s7, s4, -490
sub_2_4:          jal          ra, 11f
0:                jal          ra, 28f
1:                jal          ra, 18f
2:                jal          t1, 24f
3:                jal          ra, 25f
4:                jal          s4, 9f
5:                jal          tp, 6f
6:                jal          t6, 21f
7:                jal          a2, 23f
8:                jal          ra, 5b
9:                jal          gp, 1b
10:               jal          ra, 12f
11:               jal          ra, 22f
12:               jal          ra, 7b
13:               jal          t5, 17f
14:               jal          ra, 19f
15:               jal          t1, 3b
16:               jal          ra, 14b
17:               jal          t4, 0b
18:               jal          ra, 16b
19:               jal          ra, 30f
20:               jal          t1, 10b
21:               jal          ra, 2b
22:               jal          t1, 20b
23:               jal          ra, 13b
24:               jal          t4, 4b
25:               jal          t0, 29f
26:               jal          ra, 8b
27:               jal          sp, 26b
28:               jal          s5, 15b
29:               jal          ra, 27b
30:               and          s7, s7, s1
sub_2_9:          jal          ra, 6f
0:                jal          t1, 16f
1:                jal          t0, 0b
2:                jal          t1, 19f
3:                jal          tp, 15f
4:                jal          t1, 18f
5:                jal          t1, 7f
6:                jal          ra, 3b
7:                jal          ra, 13f
8:                jal          t1, 9f
9:                jal          t0, 10f
10:               jal          a6, 17f
11:               jal          ra, 2b
12:               jal          ra, 14f
13:               jal          ra, 12b
14:               jal          ra, 11b
15:               jal          ra, 8b
16:               jal          t1, 5b
17:               jal          t1, 4b
18:               jal          ra, 1b
19:               sra          t6, s2, s2
sub_2_1:          jal          ra, 3f
0:                jal          ra, 21f
1:                jal          ra, 4f
2:                jal          ra, 8f
3:                jal          a1, 10f
4:                jal          ra, 22f
5:                jal          t1, 12f
6:                jal          t1, 13f
7:                jal          ra, 0b
8:                jal          gp, 15f
9:                jal          ra, 23f
10:               jal          ra, 24f
11:               jal          ra, 20f
12:               jal          t1, 6b
13:               jal          ra, 14f
14:               jal          t1, 25f
15:               jal          ra, 7b
16:               jal          ra, 2b
17:               jal          ra, 1b
18:               jal          ra, 16b
19:               jal          ra, 26f
20:               jal          ra, 9b
21:               jal          ra, 19b
22:               jal          t1, 11b
23:               jal          t1, 5b
24:               jal          ra, 17b
25:               jal          ra, 18b
26:               addi         s5, a3, 704
sub_2_3:          jal          ra, 6f
0:                jal          ra, 8f
1:                jal          ra, 9f
2:                jal          ra, 7f
3:                jal          ra, 2b
4:                jal          t6, 3b
5:                jal          ra, 1b
6:                jal          ra, 0b
7:                jal          a6, 10f
8:                jal          ra, 5b
9:                jal          s1, 4b
10:               jal          ra, 11f
11:               and          s1, t4, s7
sub_2_7:          jal          ra, 5f
0:                jal          s1, 14f
1:                jal          ra, 11f
2:                jal          s6, 10f
3:                jal          ra, 12f
4:                jal          tp, 3b
5:                jal          ra, 2b
6:                jal          ra, 7f
7:                jal          t1, 9f
8:                jal          ra, 4b
9:                jal          t1, 13f
10:               jal          t1, 8b
11:               jal          ra, 6b
12:               jal          ra, 1b
13:               jal          ra, 0b
14:               xor          a3, s8, zero
sub_2_2:          jal          ra, 1f
0:                jal          t1, 10f
1:                jal          gp, 3f
2:                jal          ra, 7f
3:                jal          t3, 14f
4:                jal          t1, 12f
5:                jal          ra, 13f
6:                jal          ra, 11f
7:                jal          t1, 15f
8:                jal          tp, 2b
9:                jal          t1, 8b
10:               jal          ra, 5b
11:               jal          ra, 0b
12:               jal          sp, 6b
13:               jal          ra, 9b
14:               jal          t1, 4b
15:               sra          a4, s7, a4
                  slti         sp, t2, -1561
                  or           a3, a1, tp
                  bge          s11, t6, 9f
                  andi         t2, s11, 244
                  auipc        s5, 573002
                  beq          s3, s10, 6f
6:                bge          s11, t5, 16f
                  bltu         a7, sp, 26f
                  beq          t1, s10, 22f
9:                nop
                  bge          t5, s0, 12f
                  slli         s7, sp, 24
12:               auipc        s9, 696867
                  sltiu        t3, t0, 608
                  srli         t2, a6, 7
                  bne          s5, a1, 26f
16:               sll          s7, a7, a6
                  srai         s9, s11, 5
                  lui          t5, 464837
                  sra          t6, a4, a3
                  slli         s4, t1, 16
                  srli         t2, s6, 15
22:               srl          s3, t6, t1
                  bltu         s8, a1, 36f
                  srli         a6, t2, 13
                  slli         s7, a2, 26
26:               sll          t6, t4, a5
                  srli         t4, s6, 18
                  sll          a3, sp, s2
                  srai         t0, a7, 3
                  lui          t4, 441534
                  and          ra, s4, sp
                  addi         tp, s4, -1823
                  srai         s5, s6, 4
                  slt          a6, t3, t3
                  sltu         s5, t1, tp
36:               blt          s6, s4, 38f
                  srai         s6, t4, 7
38:               sltiu        s2, zero, -1413
                  bne          a2, tp, 57f
                  addi         s1, s8, -1632
                  and          a3, s1, a2
                  nop
                  sll          zero, zero, s7
                  auipc        s10, 911288
                  slt          t4, a1, a0
                  ori          s4, ra, -1315
                  auipc        s3, 64074
                  and          a3, t4, a7
                  sub          zero, t2, s1
                  bltu         t3, a7, 59f
                  beq          s1, zero, 55f
                  slti         a1, a1, -1070
                  add          t3, s3, t5
                  and          s7, t2, zero
55:               and          a2, s3, s10
                  xori         t0, t3, -532
57:               sll          gp, s4, gp
                  beq          a3, s8, 66f
59:               sltu         s3, s10, s11
                  sltiu        s2, t4, 238
                  srli         t6, s6, 12
                  srai         s4, s5, 16
                  lui          a1, 505115
                  srai         s2, a3, 19
                  andi         sp, s8, -1811
66:               bgeu         t3, a7, 78f
                  srai         t1, a5, 13
                  sltu         s7, s5, a0
                  bne          a3, a6, 84f
                  add          tp, s0, a1
                  or           a4, a2, s10
                  sll          s10, a4, s3
                  sltiu        a3, s2, -749
                  beq          t1, s4, 88f
                  addi         t4, t6, 447
                  bne          s3, t5, 78f
                  bltu         a5, s2, 81f
78:               slli         gp, s9, 7
                  add          sp, t6, t4
                  beq          tp, t6, 91f
81:               sll          s3, t5, zero
                  bgeu         a3, s11, 96f
                  addi         a0, t0, 254
84:               lui          s8, 91708
                  slt          s10, t4, t1
                  srl          s7, s3, tp
                  bltu         s7, t1, 92f
88:               bltu         s1, s10, 99f
                  slt          a2, gp, sp
                  auipc        t3, 720535
91:               sub          gp, t1, a4
92:               bltu         t3, a0, 97f
                  and          s4, ra, s11
                  lui          s9, 401548
                  bltu         a3, sp, 103f
96:               ori          s5, a6, 1353
97:               bne          s11, t4, 107f
                  addi         ra, s9, 1200
99:               srli         t2, gp, 31
                  srli         s1, t5, 30
                  sll          sp, t3, s2
                  blt          s0, a4, 113f
103:              bgeu         t2, s4, 109f
                  srl          t3, s0, ra
                  xori         a2, t4, -1994
                  slt          t1, s10, t4
107:              sltiu        s5, s2, -779
                  srli         s7, zero, 0
109:              lui          a1, 429968
                  beq          t1, a2, 115f
                  srli         t5, sp, 12
                  sra          s4, t2, s4
113:              ori          t2, s1, 327
                  auipc        t1, 684443
115:              bgeu         tp, a4, 126f
                  andi         gp, tp, -2027
                  sra          s2, s5, a2
                  xor          s9, a3, s8
                  blt          t4, sp, 126f
                  slli         sp, a2, 28
                  bge          s3, s0, 131f
                  sltiu        t0, s2, -610
                  auipc        s6, 993545
                  srl          a0, sp, s2
                  auipc        a5, 590300
126:              nop
                  sltu         s10, s10, s11
                  bgeu         a3, s3, 137f
                  slli         a0, t6, 5
                  slli         s8, s3, 0
131:              auipc        a0, 278022
                  bgeu         s8, a2, 147f
                  bltu         s8, ra, 144f
                  xor          a6, gp, s10
                  xor          s5, zero, sp
                  sub          s9, a1, a3
137:              sub          a1, s3, s5
                  bge          a2, tp, 150f
                  sltiu        a2, s9, 187
                  srl          s3, t3, t6
                  or           s2, ra, tp
                  bgeu         a5, a3, 156f
                  sra          a0, gp, a7
144:              sra          a0, s0, s3
                  srl          t6, t3, zero
                  bltu         t2, s3, 157f
147:              lui          s9, 298665
                  srli         sp, s10, 21
                  sltiu        t5, t0, -1834
150:              slti         s9, a3, 452
                  srai         s3, a5, 3
                  xor          t0, a5, a2
                  nop
                  bgeu         a4, s2, 155f
155:              bgeu         gp, t3, 161f
156:              bne          s0, s9, 164f
157:              nop
                  sub          a1, ra, t4
                  sltu         t0, a3, s10
                  sltiu        a2, s6, 1951
161:              add          sp, gp, ra
                  or           a3, s0, s2
                  sll          gp, ra, t1
164:              srl          s8, a4, a5
                  andi         s10, t5, 600
                  srli         s8, a7, 19
                  add          t5, a4, gp
                  slli         ra, t3, 12
                  sub          s10, s2, a1
                  or           s7, s6, s6
                  lui          t4, 81237
                  sltiu        s7, s10, -266
                  blt          a6, s0, 187f
                  bltu         a0, zero, 179f
                  slt          s2, a2, s2
                  add          gp, ra, s7
                  sra          tp, a2, t3
                  sra          a4, s2, a0
179:              ori          a1, s3, 269
                  sub          s5, sp, ra
                  sltu         s7, s3, a7
                  addi         s1, t2, 1310
                  sub          a2, s10, a2
                  or           t2, s7, s5
                  add          s7, s1, t3
                  nop
187:              srai         t6, s6, 29
                  sltiu        a2, gp, 113
                  bltu         a3, s2, 194f
                  beq          zero, s0, 201f
                  add          t4, gp, s6
                  bne          t6, t1, 196f
                  bge          a7, a6, 200f
194:              slt          t1, tp, s10
                  and          s8, a7, a2
196:              sra          t1, s6, s2
sub_2_5:          jal          ra, 5f
0:                jal          ra, 1f
1:                jal          t1, 11f
2:                jal          ra, 12f
3:                jal          ra, 0b
4:                jal          ra, 9f
5:                jal          s6, 3b
6:                jal          ra, 4b
7:                jal          t1, 8f
8:                jal          ra, 2b
9:                jal          ra, 7b
10:               jal          s1, 6b
11:               jal          ra, 10b
12:               srl          a0, t0, ra
                  slti         t5, a0, -2017
                  slt          t3, s5, t6
                  beq          t2, t6, 207f
200:              add          s2, a3, s3
201:              nop
                  nop
                  beq          t3, sp, 216f
                  sltu         s9, t6, a5
                  bne          a6, s2, 207f
                  lui          s4, 643488
207:              bge          t3, s10, 212f
                  blt          sp, t5, 226f
                  andi         sp, t6, -839
                  slli         s5, zero, 25
                  blt          a4, t0, 222f
212:              or           s3, a7, s6
                  srai         t0, s0, 6
                  sll          t0, gp, s8
                  and          t2, s1, s1
216:              auipc        zero, 418940
                  beq          a7, a6, 221f
                  xori         t3, t2, -1567
                  andi         a4, t5, -1205
                  beq          a2, s3, 227f
221:              slti         s6, s0, -792
222:              bne          a1, s8, 241f
                  sll          gp, gp, a6
                  sll          s3, s5, s11
                  sltu         s1, a6, s5
226:              slli         sp, a0, 15
227:              slli         s8, s1, 28
                  bgeu         ra, sp, 239f
                  sltu         s5, s3, s4
                  xor          t4, sp, s4
                  auipc        s1, 1039412
                  xori         a4, s9, -1614
                  bge          t6, a3, 235f
                  blt          s11, a3, 236f
235:              sra          t5, t4, s11
236:              nop
                  auipc        s3, 139545
                  srli         s5, t0, 23
239:              slti         a0, s2, -248
                  srli         zero, s6, 28
241:              bge          t2, t1, 251f
                  slti         a4, s8, -1114
                  slt          a2, ra, tp
                  slti         a3, a1, 1995
                  beq          s2, a4, 259f
                  slti         s1, a3, -1565
                  ori          s10, a7, -1291
                  and          t2, t1, s8
                  or           ra, a7, t4
                  addi         s9, a7, -1271
251:              sltu         s6, s7, a7
                  auipc        ra, 659570
                  sltu         sp, s1, t2
                  and          zero, zero, t5
                  sra          s9, t3, t3
                  slti         zero, a0, 1446
                  sltiu        s2, t6, -1564
                  and          s5, t6, a5
259:              bgeu         sp, zero, 263f
                  sra          s7, s1, s7
                  srl          s9, gp, sp
                  ori          s6, s1, 1465
263:              sub          a4, t3, sp
                  andi         s8, s8, 416
                  slt          t6, s4, s10
                  or           s10, s8, s2
                  bne          zero, zero, 285f
                  srl          s2, zero, gp
                  ori          s3, t2, -21
                  xor          t0, s5, a2
                  slt          s10, s7, a4
                  srai         a3, s7, 9
                  addi         s6, a5, -1021
                  sll          a5, t3, tp
                  srai         a1, s11, 20
                  add          ra, s8, a1
                  slli         a4, gp, 22
                  srai         s2, t1, 21
                  auipc        t4, 944999
                  beq          s11, ra, 293f
                  bge          s3, t3, 293f
                  bgeu         t2, s3, 292f
                  sltu         s7, a4, a3
                  srli         s6, s10, 24
285:              sub          s2, s4, s1
                  addi         t2, s2, -939
                  srl          a5, a3, s5
                  addi         a3, zero, 773
                  or           s5, s8, a5
                  bltu         t6, s8, 296f
                  andi         a2, s11, 694
292:              bne          s8, a1, 294f
293:              lui          tp, 689574
294:              bge          a0, t6, 309f
                  lui          s2, 598648
296:              xori         t2, t0, 969
                  slt          zero, s11, a6
                  bgeu         t5, a7, 303f
                  slt          sp, t0, t5
                  auipc        gp, 195380
                  auipc        a6, 926025
                  sra          a0, s11, zero
303:              slli         t3, s5, 27
                  bne          t1, t2, 313f
                  auipc        t5, 270036
                  add          s7, ra, t3
                  and          s3, s9, sp
                  slti         s3, s10, 1693
309:              slli         t2, s2, 1
                  bltu         s8, a3, 318f
                  slt          zero, a5, zero
                  bgeu         s0, sp, 319f
313:              andi         a4, t4, 454
                  addi         gp, tp, 1251
                  blt          tp, s2, 326f
                  andi         t1, ra, -35
                  srai         a2, s0, 18
318:              beq          a7, t4, 332f
319:              sub          t2, t3, s3
                  slti         a6, a6, -634
                  bne          sp, s11, 340f
                  srai         t4, a6, 17
                  sltiu        t1, s3, 1149
                  bne          s2, t6, 326f
                  xor          s5, a3, sp
326:              blt          a6, s10, 330f
                  addi         s2, t2, -485
                  auipc        sp, 629125
                  nop
330:              nop
                  sll          s10, s8, s3
332:              bge          s7, s9, 346f
                  xori         a1, s3, -427
                  sra          s10, s8, a6
                  sll          t2, s6, s7
                  add          tp, a4, s5
                  slt          s3, a1, t5
                  bne          s6, t0, 349f
                  sra          s3, s5, s0
340:              srl          s10, a0, s3
                  lui          s4, 352780
                  or           s5, t3, t0
                  bltu         a7, t4, 351f
                  sll          a6, s4, s8
                  auipc        s9, 1032544
346:              sltu         s10, s9, s7
                  blt          s11, s8, 358f
                  blt          s4, ra, 353f
349:              or           tp, s1, a1
                  sll          s4, s3, t6
351:              srl          a5, s2, s7
                  and          s8, a0, s3
353:              xori         s6, ra, -1565
                  and          s7, s8, s11
                  add          t5, a0, a6
                  lui          tp, 659307
                  slti         tp, s9, 1020
358:              add          tp, sp, s8
                  or           s1, a6, s7
                  srai         t5, a1, 0
                  xori         a6, a0, -2003
                  bne          s9, s3, 376f
                  srai         a4, tp, 15
                  or           a5, t2, tp
                  sltu         s9, t0, s4
                  srl          t2, t5, s0
                  add          s1, s10, s6
                  xori         zero, a2, 121
                  bltu         a4, a0, 380f
                  xor          s1, t6, zero
                  xori         zero, ra, 55
                  andi         tp, gp, 879
                  xori         zero, s3, -1783
                  slli         gp, s8, 5
                  or           t6, t1, t6
376:              andi         gp, s3, 1214
                  beq          a3, a6, 378f
378:              xor          s5, s5, sp
                  srai         s5, s0, 4
380:              beq          a3, a4, 390f
                  slt          a4, s7, s10
                  sltiu        a4, s8, -2017
                  and          s9, a5, t3
                  srai         t4, a7, 26
                  bge          s9, s5, 390f
                  sll          a1, s11, s4
                  sra          a1, t5, a5
                  addi         s4, s8, 1527
                  bne          t5, s0, 396f
390:              srai         t5, sp, 25
                  auipc        s2, 849503
                  xori         s1, t1, 132
                  andi         a0, t2, -1878
                  addi         s3, t2, -610
                  xor          t2, s10, s0
396:              sltiu        a0, s7, -135
                  auipc        t1, 229070
                  sra          s5, s0, t5
                  bgeu         gp, s10, 401f
                  slt          s8, sp, s6
401:              bltu         t5, a1, 412f
                  sll          s4, s11, t0
                  auipc        a5, 623971
                  and          a1, s10, t6
                  bne          a1, s10, 419f
                  blt          s9, s3, 424f
                  bge          zero, s8, 414f
                  slt          a5, s2, a2
                  bge          gp, s6, 423f
                  blt          a1, s1, 416f
                  slt          sp, a0, zero
412:              bltu         t6, s4, 417f
                  slt          s10, t0, t3
414:              add          s4, t5, a3
                  sra          a3, sp, s10
416:              srli         t3, gp, 15
417:              bltu         s9, s4, 419f
                  sub          a6, a6, t4
419:              ori          zero, a3, -1537
                  sltiu        t4, s4, -249
                  bgeu         s5, t4, 423f
                  bne          t0, a3, 424f
423:              ori          s10, s10, 245
424:              slt          zero, zero, t4
                  srli         s6, t5, 12
                  srli         sp, t6, 11
                  ori          s9, s9, 1394
                  bgeu         s5, s2, 439f
                  auipc        a5, 692314
                  sltu         zero, a4, a0
                  sub          tp, s11, s0
                  slt          s7, s2, s10
                  bge          t4, tp, 442f
                  bltu         t6, gp, 444f
                  blt          a0, a5, 440f
                  bge          t1, s5, 451f
                  bltu         a0, a1, 448f
                  slti         t1, s5, 1176
439:              auipc        ra, 12914
440:              xor          a0, t5, s1
                  slli         t5, s2, 13
442:              srai         s10, gp, 12
                  slt          sp, s5, t0
444:              lui          a5, 192062
                  bgeu         sp, t0, 452f
                  sltiu        a5, gp, -1646
                  lui          s3, 169987
448:              bne          s9, a4, 460f
                  bltu         sp, tp, 454f
                  sltu         sp, s6, a6
451:              srai         a4, a2, 5
452:              auipc        s7, 557835
                  sltiu        a0, s4, -970
454:              addi         a0, s0, -1903
                  nop
                  sll          s1, s10, a3
                  auipc        a6, 964043
                  blt          t6, t0, 469f
                  slt          t6, t3, a3
460:              blt          a3, t0, 471f
                  andi         a6, a6, 329
                  andi         a2, s7, -1763
                  xori         ra, s11, -1600
                  lui          a1, 991517
                  sltiu        a4, s8, -680
                  or           tp, a6, s6
                  srli         zero, s11, 24
                  beq          tp, s7, 469f
469:              beq          s5, a7, 473f
                  blt          s2, zero, 474f
471:              sub          a6, t5, s2
                  sub          t6, s3, tp
473:              bgeu         s5, a0, 481f
474:              xori         s10, t2, -926
                  bltu         zero, a7, 494f
                  bgeu         sp, a3, 490f
                  add          s5, gp, gp
                  lui          t4, 76732
                  nop
                  sltu         t2, a4, s4
481:              bgeu         s3, a0, 491f
                  srai         t1, t6, 5
                  bne          s3, zero, 494f
                  or           zero, t6, gp
                  ori          s4, ra, -141
                  nop
                  bne          s5, s1, 495f
                  slt          a0, s8, a5
                  ori          t6, a2, 1715
490:              auipc        t3, 760444
491:              beq          s2, s2, 504f
                  add          ra, gp, s4
                  sltu         s1, s1, s8
494:              slli         t0, t2, 22
495:              sra          t1, t4, s7
                  bgeu         s1, gp, 504f
                  addi         t6, s1, 547
                  sltiu        t4, tp, -1565
                  beq          t3, t6, 512f
                  srai         s5, s6, 2
                  blt          a1, s6, 511f
                  srli         t6, s0, 3
                  slti         a4, s9, 927
504:              and          t6, s7, zero
                  addi         t4, s8, 524
                  auipc        a4, 820183
                  bgeu         a1, s0, 517f
                  auipc        t3, 530716
                  addi         a1, s7, -1879
                  bgeu         a2, a3, 518f
511:              addi         t1, ra, 1791
512:              blt          ra, s0, 528f
                  sll          ra, t4, a7
                  sltu         s7, tp, s0
                  sltu         zero, s7, a7
                  auipc        s7, 360215
517:              slti         t0, t5, -1003
518:              sra          s3, ra, ra
sub_2_6:          jal          ra, 23f
0:                jal          ra, 18f
1:                jal          ra, 14f
2:                jal          ra, 21f
3:                jal          ra, 0b
4:                jal          t5, 1b
5:                jal          t3, 7f
6:                jal          ra, 8f
7:                jal          ra, 20f
8:                jal          gp, 11f
9:                jal          a4, 16f
10:               jal          ra, 2b
11:               jal          ra, 15f
12:               jal          ra, 22f
13:               jal          sp, 24f
14:               jal          t1, 25f
15:               jal          a3, 19f
16:               jal          ra, 3b
17:               jal          t1, 6b
18:               jal          ra, 17b
19:               jal          t1, 10b
20:               jal          ra, 9b
21:               jal          t1, 13b
22:               jal          t1, 4b
23:               jal          ra, 5b
24:               jal          a3, 12b
25:               slt          s2, s10, s7
                  and          t6, a0, zero
                  add          tp, t2, gp
                  slt          tp, s11, t4
                  ori          a3, a2, 998
                  slti         ra, s10, 1372
                  slti         t1, a4, -962
                  srl          s2, ra, tp
                  and          s9, s7, t0
                  add          s2, a5, s10
528:              andi         t6, s6, -707
                  sll          s6, s7, a0
                  lw           ra, 4(s11)
                  nop
                  addi         s11, s11, 48
                  slti         a3, t2, 32
                  xor          t6, s3, a4
779:              addi x26, x1, 1
779:              jalr x26, x26, 0
sub_1:            addi         s11, s11, -64
                  addi         zero, t4, -1771
                  sll          t2, a2, s2
                  sw           ra, 4(s11)
                  srli         gp, s3, 16
                  srai         s7, s6, 7
                  la           s3, sub_2
                  xori         s6, t3, -1604
                  addi         s3, s3, -506
                  slt          a1, t6, t2
                  auipc        t0, 588009
                  slli         tp, s6, 24
sub_1_j3:         jalr         ra, s3, 507 #jump sub_1 -> sub_2
sub_1_0:          jal          ra, 11f
0:                jal          tp, 6f
1:                jal          ra, 15f
2:                jal          ra, 0b
3:                jal          t1, 5f
4:                jal          ra, 1b
5:                jal          ra, 12f
6:                jal          ra, 10f
7:                jal          a2, 2b
8:                jal          ra, 7b
9:                jal          ra, 13f
10:               jal          t1, 4b
11:               jal          t0, 3b
12:               jal          t1, 9b
13:               jal          ra, 14f
14:               jal          a2, 8b
15:               or           tp, a4, s9
                  sltu         a3, s6, s1
                  andi         s6, s8, 231
                  ori          s2, s7, 1037
                  or           t3, zero, a3
                  add          s6, s1, s3
                  lui          s6, 16641
                  sra          ra, a5, s6
                  sll          a2, a0, gp
                  auipc        t5, 58338
                  xor          sp, s2, t3
                  slli         a5, s8, 17
                  or           s1, s0, t1
                  sub          s10, sp, s6
                  xori         tp, t1, -1949
                  addi         a4, a0, 1700
                  ori          s1, s2, -1874
                  xor          s8, s9, s1
                  srli         t6, t6, 2
                  sub          s10, a0, t2
                  srli         s6, s7, 0
                  andi         gp, ra, -1020
                  srli         ra, t0, 25
                  bgeu         t0, sp, 41f
                  bltu         s1, s8, 26f
                  srli         s4, a5, 9
                  nop
26:               bltu         s7, s11, 46f
                  slt          t3, sp, s1
                  sra          t3, gp, s7
                  auipc        s4, 966213
                  ori          zero, s3, -356
                  nop
                  bge          s6, a0, 35f
                  srl          s10, t5, s5
                  or           s5, a7, s9
35:               nop
                  slli         a6, s2, 27
                  bne          s8, s7, 44f
                  slli         sp, a1, 3
                  bgeu         s11, s2, 52f
                  ori          a2, t3, -2044
41:               blt          a7, t4, 61f
                  srli         zero, s5, 15
                  beq          s9, s11, 61f
44:               sltiu        s10, ra, -15
                  srli         a6, s9, 22
46:               blt          s5, s7, 64f
                  sub          t6, s9, sp
                  slt          a2, s0, t5
                  sltiu        s9, t4, 947
                  srai         tp, t4, 18
                  beq          zero, s9, 69f
52:               addi         t3, s0, 1408
                  sra          a0, a6, a5
                  ori          t3, a4, -288
                  srli         a5, sp, 13
                  sltu         tp, s2, gp
                  slti         a6, a2, -862
                  and          t3, t4, t5
                  bne          a2, zero, 77f
                  bgeu         s8, s0, 62f
61:               bne          s11, s0, 76f
62:               add          s9, t3, sp
                  auipc        a2, 494814
64:               bge          t3, a3, 71f
                  sll          sp, t1, s4
                  sltiu        s7, s1, 147
                  srl          tp, s9, gp
                  blt          a1, s5, 69f
69:               ori          t3, t4, 1405
                  and          tp, s0, a7
71:               beq          t4, s11, 73f
                  addi         t1, a3, 1862
73:               ori          a1, s10, -1056
                  xori         gp, t4, -201
                  and          s5, s10, t3
76:               addi         t5, gp, 1963
77:               andi         s7, a2, -1643
                  xor          a3, a2, s9
                  or           s7, s6, a0
                  bge          a0, sp, 86f
                  xori         t1, ra, 1326
                  slti         t3, s5, 746
                  and          a2, t5, t0
                  bltu         s6, t6, 89f
                  sub          t6, a0, a4
86:               slti         ra, s0, 684
                  andi         s2, t2, 88
                  andi         a4, s4, 1920
89:               srli         t0, s1, 30
                  add          s6, t0, t2
                  nop
                  slt          s10, gp, a7
                  srli         gp, s1, 28
                  add          a2, s6, tp
                  lui          t3, 296114
                  lw           ra, 4(s11)
                  srli         t4, t4, 15
                  and          a1, s3, zero
                  slt          gp, s8, s1
                  addi         s11, s11, 64
                  ori          s6, ra, 88
132:              addi x1, x1, 0
132:              jalr x1, x1, 0
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
.word 0x1969b253, 0xaf55da67, 0xebe622fd, 0x41c125c7, 0x332a9907, 0x7869b5c7, 0x5b1e5ce1, 0xa2e05722
.word 0xc6157662, 0x42ffb345, 0x62849c76, 0x92e30cd3, 0xa67db60e, 0x07f86e68, 0x7a70636b, 0xdb030c59
.word 0x5b62a70d, 0x69682694, 0x12cea381, 0xbf2cf61e, 0x193ff88e, 0xf9dcc015, 0x7c44590c, 0xdc6339af
.word 0x233e2672, 0x2123b5f0, 0x981424b9, 0xd24fde13, 0x473cb9c7, 0xc054866e, 0x9111bfca, 0xe65345fd
.word 0x25b19a11, 0xdd9bda38, 0x1dfec50f, 0xbf7bd76a, 0xbfa9d561, 0x351479ae, 0xe1d89486, 0xcd41875b
.word 0x9b86a1ee, 0x6a407243, 0x7ba922f9, 0xc8e62960, 0x4b0fbedf, 0x4c6c2a68, 0x8649ae87, 0x0bdddb18
.word 0x7b08610e, 0xbceaea84, 0xb2769416, 0x5eb1c109, 0x9d2e747e, 0x2ca7defc, 0x04b59279, 0x00b629a0
.word 0x99a6e295, 0xfb3f6672, 0x498024dc, 0xc98c7858, 0x89e186a5, 0x23420708, 0x940a55c3, 0x14fe8829
.word 0xe5eaa6f8, 0xf7ce170f, 0x247bb850, 0xcf517817, 0xa89004db, 0xdeeef970, 0xc04e7858, 0xfe134ff3
.word 0xb646844e, 0xd2c2dc5f, 0xcf7b17be, 0x1218daa3, 0x03f624db, 0x01d7aea6, 0xa024ebd9, 0x6fc686b8
.word 0xb7dfcfdd, 0xdc4a31c6, 0x061a6d21, 0x3b143f7c, 0x5f26e2fb, 0x35b65870, 0x1a73084f, 0x15e3cd7e
.word 0x7bdb8ff7, 0x3b2567a3, 0xf64b0a76, 0x3bb235e5, 0x262e4223, 0xe23f0d38, 0x47e657d6, 0x8e7622d5
.word 0x61819916, 0x21752203, 0x7297fab8, 0x9b12068a, 0x3f667da4, 0x742bcb4e, 0xe1cc1d70, 0xec32f329
.word 0xbbd37fd2, 0xd49c1cce, 0x1d96b218, 0x70ce4b1a, 0x624c0ae8, 0x76103b61, 0x16dabbb2, 0x7411499c
.word 0x2da8b912, 0x28e16b96, 0xf24fceac, 0x36d0548b, 0x413662ea, 0x7263956d, 0xcf833e2a, 0x9a3f6f43
.word 0x6d027ed9, 0xcd082ecc, 0xed718ab9, 0x4ba5d03a, 0x6b442c38, 0x68c37d4b, 0x14fc8b17, 0x43ebde4c
.word 0xeaafe31a, 0xbc1d60ac, 0xd74d3a69, 0x779c58c0, 0xf67d9189, 0x519b8562, 0x2d15c559, 0x60d25be3
.word 0x16ab331c, 0x26bbd569, 0x8250fc58, 0x91f79182, 0x9f1a75ab, 0xde0c4d71, 0xc4ae435e, 0x463afbc6
.word 0x625c826f, 0xff9f00fe, 0xfce332e3, 0x4343ce05, 0xaeb7053f, 0x6606512f, 0x9edf1e98, 0xd63f9e92
.word 0x709d5f6f, 0x317dac43, 0xca973689, 0x1b4db3b7, 0xbdfa1155, 0x688082c0, 0x7d638932, 0x9cb9113a
.word 0x900bd957, 0xccd81727, 0x594cfc6d, 0x52b39851, 0x9e688865, 0x6102ebe4, 0x9d2beb2d, 0x137be3d9
.word 0x4442f692, 0x82d1bce9, 0xdf300eda, 0xbd507d26, 0xfd978a74, 0x71ed0136, 0x81a44056, 0x47e19b2d
.word 0xe3eaa4ae, 0xaa3e5305, 0xa47c3801, 0x8c1aab6b, 0xbd8078d2, 0xdc544981, 0x47647cb8, 0x3a254db2
.word 0x5012e92b, 0xecf16180, 0x1843f6ea, 0x0eb043a1, 0xb4bc2462, 0x6af99a02, 0xc2f6fb58, 0x4833788e
.word 0x43fb2dea, 0x6f8e333c, 0xcff1843a, 0xdba8026c, 0x30118ba6, 0x16b80629, 0xa050fbb4, 0x55394c96
.word 0xeae1e728, 0x215ea589, 0x1793737d, 0x697542dd, 0xfcf4f447, 0x051b8666, 0x3f659e2a, 0xd5bdb544
.word 0x816be991, 0x3cb2e04a, 0x241f9ace, 0xd6e1cde4, 0x3b130422, 0x17b714dd, 0x81037daa, 0xd5af5c31
.word 0xfb7afa83, 0xd5c288c9, 0x74d6cf75, 0x4790b153, 0xb4321f56, 0xf5bf82a8, 0xd96eb372, 0x0baf2d70
.word 0xd20138d1, 0x497af138, 0x75e9127d, 0x4fd9757c, 0xeb58600f, 0x4a6d1f52, 0x55918fe4, 0x0ef57843
.word 0x7a84ef2a, 0xbb00760a, 0xd4c860d6, 0x3122318a, 0x55742f25, 0x5f1e052c, 0x6a8d8888, 0x31389075
.word 0x8655c959, 0x1c70730c, 0x195be789, 0xb05cf805, 0x9db63462, 0x8ef76067, 0xe5486e39, 0x2933783e
.word 0xb6b82c78, 0x40aca4d9, 0x57fa8918, 0xfe9900b0, 0x738dc209, 0x49abcb16, 0x86cc6254, 0x5c8a1a7f
.word 0x473127f5, 0xb7dd4cc0, 0xaa84bf23, 0x785b8064, 0x59271314, 0x73f8241f, 0x0a2803cc, 0x6235dc0f
.word 0x914900d4, 0x903165c7, 0xb9eb14fb, 0x6e90cfe3, 0x94085e6d, 0x749e194c, 0x134f71b7, 0xf5345c1f
.word 0x3c36d4d8, 0x363df188, 0x7cc28c81, 0x8ac5f009, 0x39359bf0, 0xc4b70037, 0xe4b570f7, 0x29f04ef1
.word 0x3453084b, 0x3caccc30, 0x23d01a70, 0x2acf0516, 0xdcca02eb, 0x87c3085e, 0x2244ab12, 0x92c30167
.word 0x824f7c35, 0x05bef25e, 0xe0cffe92, 0x9b3e23b6, 0xccd870af, 0x5c112f06, 0x34319631, 0x8ff4d970
.word 0x2c163206, 0x4819ace8, 0x76b96f03, 0x76ae9508, 0x0f3305af, 0xb9f8a797, 0x3fc7547a, 0xa82ddef1
.word 0x78cec218, 0xe805eeaa, 0x4db15472, 0x1ad50327, 0x0430b958, 0x88c60227, 0xe125d3e1, 0xa097762d
.word 0x10624528, 0x1f5119c6, 0x41c4088a, 0x3a744cf6, 0xc679f788, 0x7650d6fb, 0x641f147b, 0xf074f500
.word 0x1074a4a6, 0x0b31d4ec, 0x580d432e, 0x2e796929, 0xe2a988b9, 0xa94a141a, 0x511b267a, 0xbfe97257
.word 0x38cdd981, 0xcb3cf01a, 0x625ce5cd, 0x8a8c432c, 0x072e2bfa, 0x2c34c5ae, 0x634543fc, 0xf988fc67
.word 0x82a4ba97, 0xcf724b33, 0x20884d90, 0xa5fb2f34, 0x95541b5f, 0xd748ccd7, 0xaed44eeb, 0x60fccad4
.word 0x1e807035, 0x450a590b, 0x58c31da0, 0xa8fe76b9, 0xb18be521, 0x6af98ec8, 0x8d3f1209, 0x1235eb33
.word 0x039987be, 0x38ac2c10, 0x3e8195fc, 0x9f3c489c, 0xd71381c9, 0x308acf6f, 0x3b66ad57, 0x1687719b
.word 0x7dd722e8, 0xdfa73c03, 0xde84a11e, 0x3ac1992a, 0x68f17d18, 0x29ba6768, 0xdcc6bc1a, 0x2b87965c
.word 0xfb9e9957, 0xcd257e02, 0xf96069fb, 0x9aa4c807, 0x7e32a0bd, 0xc3fedb2c, 0x3e3d5126, 0x66f37883
.word 0x121627fa, 0x94583277, 0x173e56f4, 0x6e93b6cb, 0x9d5184ed, 0xc337f80a, 0x80b96cb9, 0xa09fd5a9
.word 0x11493b49, 0x45e32a4b, 0xbc2af51d, 0x55ea84a6, 0xac7a3a3e, 0x0f0ff5ed, 0x9a8a36de, 0xd170e2ff
.word 0x85192992, 0xd38d4422, 0xf15a5d06, 0xe4b9a94e, 0x166c9376, 0xd5ae43fa, 0x432a20c2, 0x49e8dd1a
.word 0x1a3c2854, 0x460feaa9, 0xdb8e46dc, 0x1bb38ad5, 0xe85a442c, 0xee221c90, 0xf976880c, 0xd098473c
.word 0x656dbac5, 0x18855221, 0x4d16b170, 0x7575d446, 0x28ee6b64, 0x2dacf33c, 0x3404f5c0, 0x2dd86161
.word 0xbbef3aee, 0x8f40f173, 0x5d5c5325, 0xdeb759a1, 0xb9c6150e, 0xf93278e8, 0x4a399010, 0xe0e6f577
.word 0xafe8871b, 0x2cf032c4, 0x5c415903, 0x3baa5d77, 0xf0c6d8fb, 0xb941814a, 0x8e53c7cd, 0x5ac0fd59
.word 0x7205b5a9, 0x32f717c4, 0xefc3f2c1, 0xf29c8419, 0xa418186e, 0x221ba71e, 0x1971ed35, 0xe2ef997b
.word 0xa351ae53, 0x42271397, 0xd17b0a58, 0x49847bd7, 0xcbda8cda, 0x09150fab, 0xbee4ba5a, 0xa0a549aa
.word 0x2de5ed6e, 0xd43f907b, 0x70d19241, 0x31b96155, 0x9562c918, 0xfa091161, 0x79923410, 0x962d5052
.word 0x882a32e9, 0x5352f204, 0xaabaedce, 0x25b4e466, 0xdbe1dcac, 0xebcb3345, 0x9fe10e3a, 0x60c56900
.word 0xafd6376d, 0x9ee3a5b5, 0xb83ffc54, 0x48515fd8, 0xb227c272, 0x1da4597e, 0xa019409a, 0x5e514caf
.word 0x87f58f90, 0x575f09d6, 0x7d901c13, 0x51b6c222, 0xe8301968, 0xe6ab4f75, 0xb1689bac, 0xf680e1ae
.word 0xc496ec32, 0xe3c2acd1, 0x46a9a7f3, 0xd5a10042, 0xd02aff40, 0xeb2dd0b5, 0x567fa590, 0x373e6a11
.word 0x16261e87, 0xded7d1bc, 0x66ef23ab, 0x8ebff2bb, 0x6c9c75aa, 0x6c7f3d02, 0xc050d049, 0x798b36a4
.word 0xa538cad0, 0x5f2e9e12, 0x9ccb670c, 0xe66160c8
.section .region_1,"aw",@progbits;
region_1:
.word 0x4342e008, 0xbf14eafc, 0x31cf594e, 0xf9c73c1e, 0x054c6054, 0xa231971c, 0xe0a4a647, 0x5797a7bd
.word 0x91286a13, 0x9efa89e3, 0x9435bb15, 0x90e2eaea, 0xe2049095, 0x8d190c8a, 0x6188e2b1, 0x1a2daee0
.word 0x371095bf, 0x8a28fd8d, 0xad2ba220, 0x01375909, 0x31f252e5, 0x4043e9de, 0x0d28e049, 0x5f638079
.word 0x2d34f2b7, 0xf44e78ce, 0x47009925, 0x23712fd2, 0xa72d45dc, 0x1db4caea, 0x1fb9455a, 0x10635984
.word 0x7309d26c, 0x2d00bb67, 0x8c2f9e06, 0xa131d4b4, 0x5309f472, 0xf29e7108, 0xf145afdc, 0x5bc59c63
.word 0x449e94db, 0xfdb0349f, 0x85f866cc, 0xce4a1131, 0x1c584ebc, 0x37139b49, 0x374af4f2, 0xd1276aa4
.word 0x20612186, 0x39c47070, 0xcb2001be, 0xdf287df3, 0x105fc55b, 0xf36f843f, 0x14468228, 0x982188b6
.word 0x8a8d8b9d, 0x03cb36a0, 0xd1745420, 0x2a10494c, 0x5c0c5264, 0xbcd192e0, 0xe5dc1518, 0xe99c08d1
.word 0x77caaaeb, 0x2a48c59d, 0x1c9d6fbe, 0x16110d68, 0x6eb23d66, 0xd95efec2, 0xa3b7fc51, 0xc495259b
.word 0xc905ca95, 0x6420de68, 0x6009caed, 0xbfe8ef5a, 0x61727c4d, 0xffbc3b7b, 0xa6fc7897, 0x06af464a
.word 0xd0661fc8, 0x165180b8, 0x5f4ae9d0, 0x670cbb71, 0x89a5e855, 0x49fa74f8, 0xce64e4a6, 0x80f3bf4b
.word 0xb41406dd, 0x9088aab2, 0xc776e9fc, 0xa9efd815, 0x8e486f93, 0xaeee656a, 0xf0d6b6f1, 0x48f8623b
.word 0xef580aa5, 0x7ce9a0bd, 0xfe98cd5d, 0xf011142d, 0x4a0d22c2, 0xcdf54cee, 0xeb098e01, 0x28ff41ff
.word 0x5769b3a8, 0x10140a83, 0x73b2d75b, 0x6c9b3e4b, 0xe0133b1b, 0x67cfe442, 0xcf8933f9, 0xf807b2b1
.word 0x5cb15676, 0xbb58aa7b, 0xc40e7920, 0x7baf099b, 0xc765e1d5, 0x2e8ef141, 0xd1e115f5, 0xba251fc6
.word 0xf31d46bb, 0xbe7a4ac1, 0x1a160e20, 0xaa869c59, 0x93726226, 0xd6199a4a, 0x74990856, 0xd837312d
.word 0x15b5a6b3, 0x902337ee, 0x660256f0, 0x699401cc, 0xdb5ff7f4, 0xb531ec34, 0x68935c5d, 0x312ade37
.word 0x04efe869, 0x207259f6, 0x4fe895c0, 0xfd659692, 0x271803d6, 0x53a34122, 0x2ca1b822, 0x2fdba2c6
.word 0x530fc1ed, 0xe6cb8350, 0x801e3495, 0x0dbd884c, 0xecfd2996, 0xe64c771d, 0x828c6a4d, 0x41d98dda
.word 0xa39bb26f, 0xf8e7d526, 0xb11215de, 0x6ba8262d, 0x90a88c4d, 0x83bd715e, 0xcf6575ee, 0xdbdee8c6
.word 0x0a578f8f, 0xea8ce6dc, 0x2b2a9da9, 0x4e1fec6d, 0x6a01c578, 0x25266e53, 0x42000426, 0xb287fa74
.word 0x2d12c6d6, 0x996f1c71, 0x189a9ea8, 0x9b7be4ff, 0x041133d0, 0x9d06d745, 0xf67cf279, 0xf41d7170
.word 0x79576f4d, 0xd9cd9fcb, 0x7842dac0, 0x61cf255f, 0x8cc42639, 0xefa3ff11, 0xd830826b, 0x9faad4ee
.word 0x71d26a8f, 0xf87440d8, 0xc6496eec, 0x63858619, 0x32034298, 0x2acf12c5, 0x3b21cd62, 0x080e61f3
.word 0x30fcd305, 0x2015c9fd, 0x6c58a063, 0xeedae8f9, 0x78e9388c, 0xf2e37c5d, 0xb6f5695a, 0x39c494fb
.word 0xba9037e3, 0x5747acaf, 0x0c08c4b3, 0x710d0867, 0xdb083fc9, 0xeff0216a, 0x764647bd, 0xa942a424
.word 0xbc8fc935, 0xdf34b39f, 0xcfbe7524, 0xf87d2a1c, 0xb1ae63fb, 0x06f52806, 0x4441dbfa, 0xd48ab558
.word 0xda0ca630, 0x20283ca8, 0x2ceb3cab, 0xb136ab01, 0x4a979bef, 0xd0d329c1, 0xe1c74c5c, 0xd45a3e35
.word 0xe2a445fb, 0x0839fe0a, 0xedffacbd, 0xe5ad02c2, 0xff08af94, 0xbf19b426, 0x62fd29dc, 0xb9d87ea1
.word 0xf0b80999, 0xe2126ed9, 0x6ba0cf85, 0x824a3805, 0xf0440b73, 0x24b6c4e2, 0x552ea5b0, 0xde211082
.word 0x99b6e4e6, 0xe3666d81, 0x6687dcbe, 0x30389593, 0x6c42a565, 0xd82ddb8d, 0x50847fc4, 0x55201b30
.word 0x0546f4b0, 0xee3e197b, 0xf2e95445, 0xa94175f0, 0xae35125b, 0x3ac589c1, 0x6883f47a, 0x83f29b19
.word 0x34f21a90, 0x83cd92c9, 0x0cff932d, 0xc5ef81a2, 0xf8a4aac6, 0xa0b2b172, 0xa8372f87, 0x5949c5d0
.word 0xe86e0cef, 0x300ce98d, 0x2dea2578, 0xf6b94f43, 0x07297a95, 0xc0feef75, 0x2a708447, 0x8e00903c
.word 0x5c549a41, 0x9f53dfb8, 0xda81e93f, 0xeae20f8c, 0x931b5019, 0x15673983, 0x89088762, 0x5a25fc51
.word 0xa6c7898f, 0x5042c0e8, 0x935025cf, 0x2950ddc6, 0xa1c8f30c, 0x69007450, 0xeed936c8, 0xcb8fc34e
.word 0x54405fd8, 0x8bbde3b8, 0x04a0092e, 0xb1551ab0, 0xb9fdc165, 0xeaf172f1, 0xf1e4fb45, 0x68aa3495
.word 0x7f8d2007, 0x5997e191, 0xef52f1b5, 0x3bc1cb41, 0x2ab7b507, 0x2506b566, 0xb3aef286, 0xe5df037c
.word 0xd2e24042, 0x7bda47fc, 0xacfb960c, 0x2b782208, 0xa245e143, 0xe65c0b4b, 0x01116c9e, 0x554da007
.word 0x85a1a853, 0xbc5ee81b, 0xfe9afc36, 0xbd136843, 0xf4de03fb, 0x0d3eb1f8, 0x6b7183ba, 0xe840b1d1
.word 0x0d66e026, 0x28521d61, 0x7b5f5d9c, 0xbf251ab6, 0x99623825, 0xf8a6e7cc, 0x05bedc21, 0x54e8574d
.word 0x047c89f3, 0xc1fe9768, 0xe0c9287c, 0x3b13d9b9, 0xc76ee9dc, 0xd8194182, 0x4a006b3f, 0x59035c56
.word 0xf14fab4f, 0xe0d31f1a, 0x66bc4a77, 0xfdc19f73, 0xc97691bf, 0x14c8489e, 0x3af56044, 0x00a54edd
.word 0x4caa7016, 0xad4e1956, 0x70fde6d9, 0x3b466862, 0x7032909f, 0x691bc700, 0xc2c1b696, 0x3b92fa27
.word 0xaa0aad90, 0x985c7e47, 0x0e2a9703, 0x146a7ff9, 0x03765d22, 0xdee6541c, 0x7dfc3297, 0xc0d5d372
.word 0x47b5bbae, 0x032f84f1, 0xe9cb8993, 0x4328c3a6, 0x1572ec84, 0x516473d4, 0xf95861ec, 0xe1cdd43a
.word 0xb8947cdd, 0x039d3a87, 0x649b751b, 0x46a1cc2e, 0x507db9a3, 0xbceab99c, 0xb0937b2b, 0x34037e30
.word 0x875b6c0f, 0xa7c4bcb8, 0x6f864e2a, 0x4c33fbaa, 0xcc439875, 0x0f4bdc36, 0xa7dd08cc, 0x3656e85d
.word 0xccbe1224, 0x02be00c5, 0x5faa846a, 0x5635d635, 0x613e1dee, 0x95606d2c, 0x25ec0ca4, 0x0e50738a
.word 0xfed1e323, 0xd53e599a, 0xcc21395c, 0xff3f3dba, 0x6fb88dcc, 0x3ab6dfa3, 0x93072705, 0x7f54f4b6
.word 0xfd7c2e21, 0x814c7951, 0x0a5bff03, 0xf349a658, 0xa2bf4a11, 0x933a169e, 0xc34bbfc1, 0xdddf66da
.word 0x6776fc99, 0x39c9c014, 0x7f9f00b2, 0x37729f16, 0xc2021e1b, 0xa1a1257e, 0x4f9da776, 0x6c2f9f18
.word 0xc0d02f01, 0x2114a0b7, 0xd4b38a58, 0x68cfe4c5, 0x0fc5a6dc, 0xa2a97c68, 0xe290cd02, 0x90cab50c
.word 0x9a0612f5, 0x257a5a2e, 0xe605d952, 0x0a895a32, 0xee136699, 0x651c1a30, 0xe17caf1d, 0xe6e5b6f1
.word 0x8282cbf7, 0x45cdd808, 0xc6ff021a, 0x36802fc9, 0x428ea767, 0x973d8d54, 0xc9678685, 0xfdbe7ef9
.word 0x211e76b2, 0xe106f4cd, 0x40ce05eb, 0x46fdbd21, 0xf0a03114, 0xd8f422d5, 0xd54c2eee, 0x0b495f3f
.word 0xd0e4050a, 0x32c577aa, 0xa664149b, 0x6d3809c8, 0x62214c7c, 0x466c53c7, 0x10d1f527, 0xca4ffc79
.word 0xd2a7813c, 0xbfd0a70c, 0x67c5f138, 0x9901f555, 0x544136f9, 0xaa88d597, 0xca152ff9, 0x0e9cc125
.word 0x04ed2f49, 0xce7cee2a, 0xf012a9f5, 0xc31019c6, 0x6a648c7d, 0x007896fe, 0x706f6cb3, 0x827ae17b
.word 0xac2e2b26, 0xa9e0a2e2, 0xb86246e6, 0x0de527db, 0x7f6abf6e, 0xf124a5e4, 0xa34f09a9, 0xa1aeca7e
.word 0x82c716f9, 0xa197461d, 0x634d3c36, 0xfd2e43f6, 0x09437b64, 0x9a95015f, 0x1265b54a, 0xe8ee9f81
.word 0x8b55b3a8, 0x86243571, 0xd4af12d9, 0x9e18373d, 0x51091d84, 0x96bebcb6, 0x7645a3bd, 0x4d180da1
.word 0x067fcce8, 0xa1cde6ad, 0xb5c60f68, 0xac4a917e
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
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x8, x27, zero
                  csrr x20, 0x300 # MSTATUS
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 31
                  bne x20, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x20, 0x341 # MEPC
                  csrr x20, 0x342 # MCAUSE
                  li x25, 0x3 # BREAKPOINT
                  beq x20, x25, ebreak_handler
                  li x25, 0x8 # ECALL_UMODE
                  beq x20, x25, ecall_handler
                  li x25, 0x9 # ECALL_SMODE
                  beq x20, x25, ecall_handler
                  li x25, 0xb # ECALL_MMODE
                  beq x20, x25, ecall_handler
                  li x25, 0x1
                  beq x20, x25, instr_fault_handler
                  li x25, 0x5
                  beq x20, x25, load_fault_handler
                  li x25, 0x7
                  beq x20, x25, store_fault_handler
                  li x25, 0xc
                  beq x20, x25, pt_fault_handler
                  li x25, 0xd
                  beq x20, x25, pt_fault_handler
                  li x25, 0xf
                  beq x20, x25, pt_fault_handler
                  li x25, 0x2 # ILLEGAL_INSTRUCTION
                  beq x20, x25, illegal_instr_handler
                  csrr x25, 0x343 # MTVAL
                  1: la x17, test_done
                  jalr x1, x17, 0

ecall_handler:    
                  la x20, _start
                  sw x0, 0(x20)
                  sw x1, 4(x20)
                  sw x2, 8(x20)
                  sw x3, 12(x20)
                  sw x4, 16(x20)
                  sw x5, 20(x20)
                  sw x6, 24(x20)
                  sw x7, 28(x20)
                  sw x8, 32(x20)
                  sw x9, 36(x20)
                  sw x10, 40(x20)
                  sw x11, 44(x20)
                  sw x12, 48(x20)
                  sw x13, 52(x20)
                  sw x14, 56(x20)
                  sw x15, 60(x20)
                  sw x16, 64(x20)
                  sw x17, 68(x20)
                  sw x18, 72(x20)
                  sw x19, 76(x20)
                  sw x20, 80(x20)
                  sw x21, 84(x20)
                  sw x22, 88(x20)
                  sw x23, 92(x20)
                  sw x24, 96(x20)
                  sw x25, 100(x20)
                  sw x26, 104(x20)
                  sw x27, 108(x20)
                  sw x28, 112(x20)
                  sw x29, 116(x20)
                  sw x30, 120(x20)
                  sw x31, 124(x20)
                  la x17, write_tohost
                  jalr x0, x17, 0

instr_fault_handler:
                  add x27, x8, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

load_fault_handler:
                  add x27, x8, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

store_fault_handler:
                  add x27, x8, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

ebreak_handler:   
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x27, x8, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

illegal_instr_handler:
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x27, x8, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x20, 0x300 # MSTATUS;
                  csrr  x20, 0x304 # MIE;
                  csrr  x20, 0x344 # MIP;
                  csrrc x20, 0x344, x20 # MIP;
                  add x27, x8, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
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
