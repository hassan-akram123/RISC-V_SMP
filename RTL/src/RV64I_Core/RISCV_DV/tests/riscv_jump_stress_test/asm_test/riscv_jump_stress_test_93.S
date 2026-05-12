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
                  li x15, 0x40000100
                  csrw 0x301, x15
kernel_sp:        
                  la x26, kernel_stack_end

trap_vec_init:    
                  la x15, mtvec_handler
                  ori x15, x15, 0
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
                  li x0, 0x80000000
                  li x1, 0xd
                  li x2, 0x4
                  li x3, 0xf4585de1
                  li x4, 0x2d160f48
                  li x5, 0x0
                  li x6, 0xf60ccd98
                  li x8, 0xf73ebaf0
                  li x9, 0x80000000
                  li x10, 0xbae229a7
                  li x11, 0xfd2c9228
                  li x12, 0x4
                  li x13, 0xd3971487
                  li x14, 0xf
                  li x15, 0x80000000
                  li x16, 0x0
                  li x17, 0x10b86848
                  li x18, 0xfe006362
                  li x19, 0xfca83766
                  li x20, 0x80000000
                  li x21, 0x0
                  li x22, 0x80000000
                  li x23, 0xe251cc19
                  li x24, 0x80000000
                  li x25, 0x80000000
                  li x27, 0x0
                  li x28, 0x4
                  li x29, 0x0
                  li x30, 0xfc254a35
                  li x31, 0x0
                  la x7, user_stack_end
main:             jal          a3, 10f
0:                jal          t6, 5f
1:                jal          ra, 7f
2:                jal          ra, 6f
3:                jal          t1, 1b
4:                jal          ra, 11f
5:                jal          ra, 2b
6:                jal          t1, 15f
7:                jal          ra, 14f
8:                jal          ra, 0b
9:                jal          ra, 16f
10:               jal          a6, 3b
11:               jal          t1, 8b
12:               jal          s9, 9b
13:               jal          ra, 4b
14:               jal          ra, 13b
15:               jal          s9, 12b
16:               xori         t3, s5, -1377
                  or           t3, s4, ra
                  slli         t4, zero, 16
                  srai         zero, s10, 31
                  and          ra, gp, s2
                  bne          s10, s5, 7f
                  and          zero, sp, s0
                  lui          a4, 658434
                  la           s6, sub_1
                  sll          s0, s0, t2
                  slti         s8, tp, -1129
                  sra          s7, s3, a5
                  addi         s6, s6, -955
                  sltiu        a0, ra, 925
main_j1:          jalr         a3, s6, 955 #jump main -> sub_1
                  slti         a5, s9, 104
                  bgeu         t2, t0, 15f
7:                sll          s8, s1, s5
                  bge          sp, s9, 26f
                  srl          a5, a0, a0
                  sll          s8, a4, sp
                  slt          t0, s4, s1
                  nop
                  xor          a2, sp, t0
                  lui          ra, 614076
15:               auipc        a5, 336277
                  srli         s7, s1, 23
                  and          a5, gp, s9
                  beq          s4, a1, 38f
                  xori         a2, zero, 852
                  lui          t3, 997384
                  slli         a5, s0, 18
                  and          ra, zero, s6
                  bltu         s8, a3, 27f
                  xori         s5, t5, 932
                  bltu         ra, a2, 31f
26:               slli         s0, t4, 27
27:               beq          s11, t0, 38f
                  and          t1, gp, s3
                  xori         sp, t0, 1531
                  lui          t4, 271102
31:               bne          a2, s6, 40f
                  add          a4, t6, t3
                  addi         t6, a0, -633
                  nop
                  srai         a3, a1, 25
                  add          a3, t4, a2
                  slli         s6, s10, 0
38:               sra          ra, a5, s11
                  add          t0, sp, t1
40:               nop
                  or           a4, s0, tp
                  ori          a4, s8, 1766
                  ori          sp, t5, 1411
                  and          s1, gp, a3
                  bge          t4, a5, 60f
                  bge          a3, t1, 55f
                  srli         s6, s8, 16
                  bltu         a3, a2, 53f
                  srai         t0, a7, 4
                  add          s6, s2, t1
                  nop
                  srli         t4, a6, 26
53:               srl          a0, a0, s6
                  xori         s5, s4, -248
55:               lui          s6, 257787
                  or           t4, t5, t1
                  or           s7, t1, a7
                  ori          sp, s2, -1518
                  add          s9, gp, t3
60:               lui          s6, 983440
                  la x17, test_done
                  jalr x0, x17, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            srli         a4, t6, 3
                  or           s0, s5, s8
                  bgeu         s2, a5, sub_4_stack_p
                  sra          s9, a1, sp
                  sltu         gp, t0, a0
                  slti         a6, a4, 467
sub_4_stack_p:    addi         t2, t2, -20
                  sltiu        t1, t0, 1274
                  srli         a6, a6, 5
                  addi         a4, t5, 341
                  sw           a3, 4(t2)
                  lui          t5, 591640
                  sub          s3, a1, a1
                  la           gp, sub_5
                  andi         t4, s4, -184
                  ori          tp, s1, -1143
                  srai         tp, gp, 10
                  slti         a2, a0, -1335
                  sub          s8, gp, s4
                  addi         gp, gp, 85
                  slli         s0, t3, 22
                  sltu         s1, s3, a4
sub_4_j6:         jalr         a3, gp, -84 #jump sub_4 -> sub_5
sub_4_0:          jal          a3, 20f
0:                jal          a4, 7f
1:                jal          t1, 9f
2:                jal          ra, 23f
3:                jal          ra, 22f
4:                jal          ra, 27f
5:                jal          sp, 18f
6:                jal          ra, 0b
7:                jal          ra, 3b
8:                jal          ra, 25f
9:                jal          a2, 12f
10:               jal          ra, 17f
11:               jal          s6, 8b
12:               jal          ra, 16f
13:               jal          ra, 19f
14:               jal          t1, 21f
15:               jal          t5, 26f
16:               jal          t1, 13b
17:               jal          ra, 2b
18:               jal          ra, 1b
19:               jal          t1, 10b
20:               jal          ra, 5b
21:               jal          s1, 15b
22:               jal          ra, 24f
23:               jal          t1, 14b
24:               jal          ra, 4b
25:               jal          ra, 6b
26:               jal          t1, 11b
27:               auipc        s7, 354347
                  nop
                  slt          a4, a0, t6
                  sltu         t3, sp, a0
                  slli         s6, t6, 27
                  sub          a5, t0, t2
                  auipc        a1, 788204
                  xori         a2, sp, 405
                  sltu         s5, s6, sp
                  bgeu         a7, t2, 13f
                  lui          t1, 327632
                  slli         s7, a0, 11
                  bne          s9, s0, 29f
                  slli         t6, t2, 7
13:               sra          s8, t1, t5
                  xori         s0, s2, -1446
                  slti         s6, a0, 259
                  xor          s7, zero, a3
                  blt          a4, t3, 30f
                  xori         a3, a6, -1035
                  bne          a4, t4, 29f
                  addi         s4, t1, -555
                  sltiu        a2, s10, -31
                  srai         s0, ra, 12
                  sub          s11, s8, s11
                  sll          a1, s1, a0
                  srli         ra, zero, 20
sub_4_1:          jal          a3, 2f
0:                jal          ra, 13f
1:                jal          ra, 17f
2:                jal          s0, 8f
3:                jal          t1, 16f
4:                jal          t1, 11f
5:                jal          a5, 1b
6:                jal          ra, 3b
7:                jal          ra, 0b
8:                jal          s11, 18f
9:                jal          ra, 10f
10:               jal          gp, 5b
11:               jal          t1, 15f
12:               jal          a0, 9b
13:               jal          t1, 6b
14:               jal          t1, 12b
15:               jal          t1, 19f
16:               jal          s3, 4b
17:               jal          ra, 7b
18:               jal          t0, 14b
19:               auipc        ra, 367103
                  sra          s2, zero, s4
                  sltiu        t0, s1, -702
                  bgeu         t3, a4, 40f
29:               xori         sp, s2, -1729
30:               sll          s9, s7, a6
                  srli         a6, t4, 1
                  add          t3, a4, t6
                  srli         a1, t2, 9
                  add          s0, a1, s8
                  bgeu         s10, a4, 39f
                  bltu         a2, ra, 38f
                  srli         a0, s0, 31
38:               auipc        a3, 809765
39:               ori          t5, tp, -55
40:               bne          s0, s3, 41f
41:               xori         a5, a6, 422
                  lui          a6, 240390
                  bne          s1, zero, 44f
44:               bgeu         a4, s10, 48f
                  bne          s1, t0, 46f
46:               slt          s2, s9, s6
                  bgeu         s0, s11, 55f
48:               srl          zero, gp, s3
                  bgeu         t6, s8, 62f
                  sll          t4, s7, ra
                  bgeu         s5, tp, 70f
                  auipc        s2, 585666
                  nop
                  bgeu         t4, a0, 68f
55:               sub          t4, ra, s1
                  blt          s5, s2, 61f
                  srl          s7, t0, t1
                  slti         s3, t0, 808
                  or           a3, s2, a7
                  xor          t6, a7, s0
61:               slli         a3, tp, 17
62:               bne          s10, s6, 64f
                  srl          a6, a4, sp
64:               lui          t4, 677414
                  srai         t3, s8, 29
                  slli         a5, a2, 3
                  blt          a1, s1, 71f
68:               addi         a5, t0, 1114
                  sltu         s4, a5, s5
70:               srai         a3, a4, 4
71:               blt          s7, gp, 86f
                  add          gp, a0, t6
                  addi         s5, t0, 195
                  or           zero, sp, a5
                  and          a2, t3, s0
                  add          zero, s3, s11
                  sltu         s3, a3, s3
                  and          t6, t4, a6
                  sra          s3, t0, s2
                  auipc        zero, 502560
                  sra          t3, t4, s7
                  nop
                  xori         s2, s5, -536
                  sltu         s4, t1, t6
                  auipc        sp, 357834
86:               beq          a7, t3, 105f
                  add          s7, t0, a5
                  beq          t1, s0, 105f
                  addi         t6, sp, -1940
                  nop
                  bgeu         s9, s9, 110f
                  bltu         a4, s1, 103f
                  nop
                  andi         s11, s6, -1516
                  srl          t0, s11, s2
                  srai         s8, ra, 28
                  auipc        s7, 163025
                  bge          a2, s4, 109f
                  srli         s9, s4, 27
                  sra          gp, t0, s3
                  auipc        a6, 554536
                  auipc        s3, 13680
103:              slti         a3, s7, 1064
                  auipc        a5, 363320
105:              or           s5, t1, a2
                  ori          a5, gp, 398
                  srli         s1, a1, 18
                  slti         s1, t1, -488
109:              sltu         t0, s2, a6
110:              beq          s7, t2, 118f
                  blt          t1, s2, 124f
                  xori         t0, gp, -193
                  sltu         s2, gp, a7
                  slti         a6, zero, 1910
                  xori         t1, a5, -872
                  blt          s5, a6, 129f
                  bltu         s6, sp, 118f
118:              slt          ra, t2, t1
                  xor          s1, s7, a5
                  sra          s4, a4, gp
                  xor          ra, a3, s0
                  xori         sp, gp, 477
                  bltu         zero, t2, 135f
124:              xori         a3, gp, 126
                  auipc        t1, 593468
                  add          sp, s2, s5
                  sra          s5, a7, gp
                  auipc        a0, 898944
129:              slli         zero, a7, 25
                  and          s1, t3, t4
                  srli         ra, s3, 10
                  or           a3, s1, s3
                  xor          a4, zero, t4
                  or           ra, tp, s5
135:              add          s11, s10, s9
                  add          t6, a2, t6
                  xor          zero, a1, a6
                  sltiu        t5, s6, 997
                  bgeu         s2, s11, 146f
                  xori         t0, a5, 1562
                  addi         t5, a3, 136
                  bltu         t3, t6, 146f
                  bge          s10, t6, 146f
                  bgeu         s9, ra, 146f
                  nop
146:              xor          zero, s6, s2
                  lw           a3, 4(t2)
                  ori          a4, s4, -1084
                  add          a0, s0, t4
                  and          t0, s0, ra
                  add          t1, a1, s2
                  sub          sp, a4, t2
                  srli         s11, gp, 2
                  addi         t2, t2, 20
                  srai         a0, s9, 19
                  sltiu        t4, sp, -1030
230:              addi x31, x13, 0
230:              jalr x31, x31, 0
sub_1:            bne          s2, zero, sub_1_stack_p
                  andi         a0, gp, -1911
                  sra          a5, s2, s7
sub_1_stack_p:    addi         t2, t2, -32
                  sw           a3, 4(t2)
                  add          s9, t0, s11
                  srl          t1, t2, a3
                  la           a2, sub_3
                  or           t1, sp, a6
                  sll          ra, a1, gp
                  xor          gp, s7, gp
                  slti         a0, a3, 702
                  srli         s0, s9, 21
                  slli         a3, a6, 19
                  slt          a0, a3, a2
                  addi         a2, a2, 552
                  slli         s4, a0, 12
                  slti         a4, t5, 1049
sub_1_j3:         jalr         a3, a2, -552 #jump sub_1 -> sub_3
                  srli         t3, s9, 24
                  and          a4, s1, s1
                  nop
                  ori          s0, zero, -2005
                  slli         s1, t0, 25
                  and          ra, t2, a0
                  slt          t0, a2, a5
sub_1_j4:         jal          a3, sub_4 #jump sub_1 -> sub_4
                  la           s1, sub_4
                  addi         a1, a6, 165
                  sltu         s5, zero, zero
                  slti         s9, s4, 1099
                  sra          s7, s7, t2
                  slti         zero, t6, 1946
                  addi         s1, s1, 466
                  slti         t0, a4, -122
                  and          a2, tp, t2
                  sub          t6, gp, s1
                  bgeu         a3, s1, sub_1_j5 #branch to jump instr
                  xor          gp, ra, a1
                  add          s5, gp, s11
sub_1_j5:         jalr         a3, s1, -465 #jump sub_1 -> sub_4
sub_1_4:          jal          a3, 12f
0:                jal          t1, 17f
1:                jal          s7, 19f
2:                jal          ra, 15f
3:                jal          a0, 14f
4:                jal          ra, 3b
5:                jal          t1, 18f
6:                jal          ra, 2b
7:                jal          t1, 21f
8:                jal          tp, 1b
9:                jal          t4, 5b
10:               jal          ra, 7b
11:               jal          a2, 0b
12:               jal          t1, 20f
13:               jal          ra, 22f
14:               jal          ra, 9b
15:               jal          ra, 16f
16:               jal          ra, 10b
17:               jal          ra, 4b
18:               jal          ra, 8b
19:               jal          ra, 23f
20:               jal          ra, 6b
21:               jal          t1, 13b
22:               jal          tp, 11b
23:               slli         a5, s10, 7
sub_1_2:          jal          a3, 3f
0:                jal          s3, 11f
1:                jal          ra, 7f
2:                jal          t4, 6f
3:                jal          t1, 9f
4:                jal          ra, 2b
5:                jal          s8, 8f
6:                jal          ra, 1b
7:                jal          t1, 5b
8:                jal          ra, 0b
9:                jal          ra, 4b
10:               jal          ra, 12f
11:               jal          ra, 10b
12:               or           a2, gp, gp
sub_1_1:          jal          a3, 2f
0:                jal          ra, 5f
1:                jal          ra, 3f
2:                jal          gp, 1b
3:                jal          t4, 8f
4:                jal          s6, 0b
5:                jal          s3, 11f
6:                jal          t4, 7f
7:                jal          ra, 4b
8:                jal          t1, 9f
9:                jal          ra, 10f
10:               jal          ra, 6b
11:               and          zero, sp, a5
sub_1_0:          jal          a3, 18f
0:                jal          ra, 17f
1:                jal          ra, 22f
2:                jal          ra, 25f
3:                jal          t1, 2b
4:                jal          s7, 19f
5:                jal          ra, 11f
6:                jal          ra, 8f
7:                jal          ra, 23f
8:                jal          ra, 20f
9:                jal          ra, 15f
10:               jal          gp, 16f
11:               jal          ra, 12f
12:               jal          t1, 10b
13:               jal          a2, 14f
14:               jal          s0, 6b
15:               jal          ra, 1b
16:               jal          ra, 3b
17:               jal          ra, 9b
18:               jal          ra, 0b
19:               jal          t1, 24f
20:               jal          t0, 7b
21:               jal          ra, 4b
22:               jal          ra, 13b
23:               jal          ra, 21b
24:               jal          gp, 5b
25:               sra          t5, sp, s2
sub_1_3:          jal          a3, 26f
0:                jal          ra, 12f
1:                jal          t1, 22f
2:                jal          ra, 15f
3:                jal          t1, 5f
4:                jal          ra, 16f
5:                jal          t3, 9f
6:                jal          a0, 0b
7:                jal          ra, 8f
8:                jal          t1, 19f
9:                jal          ra, 24f
10:               jal          ra, 27f
11:               jal          ra, 2b
12:               jal          a5, 13f
13:               jal          ra, 23f
14:               jal          sp, 21f
15:               jal          ra, 10b
16:               jal          ra, 3b
17:               jal          ra, 1b
18:               jal          ra, 6b
19:               jal          tp, 14b
20:               jal          ra, 4b
21:               jal          t1, 25f
22:               jal          t1, 18b
23:               jal          ra, 7b
24:               jal          ra, 11b
25:               jal          t1, 20b
26:               jal          ra, 17b
27:               and          s4, a7, t1
                  slti         t6, t5, -10
                  bltu         s10, s6, 13f
                  addi         s7, zero, -2035
                  sll          zero, t4, ra
                  or           s6, s7, s3
                  slti         s7, s11, -229
                  blt          a6, sp, 25f
                  add          t4, s8, s6
                  sltiu        a6, t5, 1121
                  bltu         zero, a1, 22f
                  xori         s8, ra, -1229
                  srl          s5, s5, sp
                  slli         zero, t4, 29
13:               beq          a3, s10, 24f
                  srli         tp, a6, 6
                  bltu         a3, t4, 18f
                  addi         a4, t5, -142
                  bltu         s2, s6, 26f
18:               sra          s4, t3, s2
                  xor          a6, t2, a0
                  lui          t4, 89377
                  bgeu         s9, s1, 34f
22:               bgeu         s11, sp, 29f
                  xori         s11, s10, 1793
24:               blt          s6, s9, 39f
25:               beq          a2, t5, 31f
26:               srl          t3, s4, t4
                  ori          t0, gp, 1802
                  bltu         s0, s6, 44f
29:               slli         gp, a4, 25
                  xori         s11, s9, 1902
31:               and          tp, t0, t5
                  addi         s2, a3, 489
                  and          s5, t1, t6
34:               slt          t1, t0, s3
                  srai         ra, tp, 23
                  slti         s5, t2, 1752
                  and          a6, s4, t4
                  xori         s9, s9, -725
39:               andi         s4, s1, 1282
                  bgeu         t3, t4, 52f
                  slti         s1, a7, 193
                  auipc        t0, 860658
                  or           s9, sp, s4
44:               sra          s9, a3, s2
                  bge          a4, t6, 65f
                  sltu         a1, t6, a1
                  or           t5, t3, a5
                  addi         a3, s2, 1027
                  xori         a2, zero, -1078
                  bge          zero, t5, 55f
                  sltiu        s5, gp, 390
52:               andi         s3, s6, -366
                  or           tp, a5, s1
                  beq          ra, s8, 62f
55:               nop
                  add          t1, s6, s6
                  blt          s5, t6, 73f
                  sltiu        t6, gp, -833
                  addi         t0, sp, 1347
                  xor          s0, t6, a3
                  xor          s5, s5, a6
62:               bge          t2, s6, 78f
                  sltiu        s0, s5, 614
                  sub          t3, t3, a5
65:               sub          t6, t0, s2
                  or           s6, t2, a5
                  blt          s10, a2, 68f
68:               srli         s5, a5, 27
                  xori         ra, t2, -129
                  srai         s2, t1, 31
                  sub          sp, a1, a6
                  and          s1, t3, a6
73:               and          t5, sp, s4
                  ori          zero, sp, -1689
                  bgeu         a6, gp, 88f
                  xori         t5, s11, -1725
                  sra          s4, a6, sp
78:               beq          ra, a0, 90f
                  auipc        ra, 484828
                  andi         s11, a6, -1055
                  slt          a5, t1, s8
                  slt          s4, a2, s9
                  bgeu         s11, zero, 93f
                  srli         s1, t3, 27
                  blt          s10, tp, 105f
                  nop
                  sub          s3, s3, a3
88:               auipc        s2, 830970
                  add          s0, t3, tp
90:               blt          t4, s5, 94f
                  slli         zero, a2, 14
                  xori         a5, sp, 1454
93:               andi         t3, t6, -231
94:               auipc        ra, 936442
                  sltu         sp, tp, tp
                  sltu         s8, gp, s2
                  bge          t4, s5, 105f
                  slti         a5, s6, -478
                  and          s2, a0, s6
                  bgeu         tp, s5, 116f
                  or           a5, s0, gp
                  sltiu        t3, s4, -433
                  addi         zero, a6, -228
                  beq          t3, a4, 119f
105:              add          a1, s6, zero
                  addi         s3, a5, 1901
                  or           s5, a5, s7
                  slt          t4, s11, t1
                  sra          s5, t2, t0
                  slti         s7, s1, -1125
                  srli         s11, s5, 28
                  sub          a5, a3, a5
                  sll          s2, t4, tp
                  nop
                  andi         tp, a1, -761
116:              slt          s8, a7, ra
                  and          tp, a6, s1
                  sll          t3, t6, a0
119:              beq          t6, s2, 123f
                  srl          a2, s10, a5
                  sltiu        t3, gp, 389
                  lui          s6, 599705
123:              or           s1, s7, t1
                  auipc        a2, 649116
                  bgeu         tp, s8, 131f
                  nop
                  and          t0, a5, ra
                  xori         s6, sp, -1816
                  srl          a6, t0, s9
                  slti         ra, t1, -249
131:              auipc        s4, 304865
                  bgeu         t5, tp, 143f
                  slti         s2, s6, 1168
                  add          tp, s10, t3
                  slti         gp, t3, -1197
                  sltiu        s4, s5, 54
                  slti         t5, t2, 1069
                  sll          t4, a2, s0
                  addi         a1, t4, 1561
                  auipc        s4, 922248
                  and          a2, a3, t2
                  beq          t4, s7, 146f
143:              sltu         s3, t5, s11
                  sll          t5, ra, s6
                  auipc        zero, 1008754
146:              sra          sp, s11, a7
                  auipc        s3, 587044
                  srl          sp, t5, s11
                  add          s3, s6, t0
                  andi         tp, s4, 1648
                  add          a1, s5, t5
                  slli         t1, zero, 30
                  bne          s7, ra, 157f
                  srai         s6, a1, 4
                  bgeu         s2, s6, 164f
                  ori          a1, a7, 1787
157:              blt          t1, t6, 173f
                  nop
                  srai         a1, zero, 11
                  bne          t5, s9, 166f
                  srai         a3, a3, 12
                  nop
                  beq          t3, a0, 171f
164:              blt          s4, a4, 176f
                  addi         a1, a5, -1265
                  addi         s0, s7, -105
                  sltiu        t4, a6, 1267
                  srl          s9, s0, a0
                  slti         s2, s9, -219
                  nop
                  bltu         t0, a5, sub_1_j2 #branch to jump instr
                  srl          s8, a2, t1
                  sub          s11, sp, t6
                  slti         s0, s6, 1782
                  xor          s6, s8, a1
sub_1_j2:         jal          a3, sub_2 #jump sub_1 -> sub_2
                  auipc        a3, 1003351
166:              slt          t5, s0, a2
                  sll          ra, sp, ra
                  addi         s3, s10, 1251
                  bltu         t0, t2, 180f
                  beq          a3, t3, 185f
171:              beq          sp, t4, 176f
                  bltu         s5, s8, 176f
173:              sltiu        a2, t4, -551
                  sltiu        s6, t1, -382
                  srli         a6, s6, 29
176:              auipc        t6, 999773
                  srai         a2, s0, 27
                  nop
                  beq          a4, s2, 195f
180:              and          a5, sp, s4
                  nop
                  bge          t2, a5, 195f
                  and          zero, a5, sp
                  srl          s7, a2, t2
185:              sub          zero, a1, t2
                  auipc        a6, 234258
                  beq          s5, a6, 200f
                  and          tp, a7, s11
                  ori          sp, s3, 789
                  bne          a7, s2, 203f
                  sll          s0, s8, t0
                  sltiu        s11, a4, 1319
                  slli         s0, zero, 5
                  addi         gp, a5, -673
195:              bge          s0, a3, 210f
                  sltu         t3, a2, a7
                  srli         t3, s5, 28
                  nop
                  bltu         t2, t0, 219f
200:              srai         a3, a6, 2
                  bltu         t1, t1, 213f
                  sltiu        sp, sp, 1082
203:              bne          s1, ra, 207f
                  beq          sp, s4, 207f
                  auipc        s5, 239609
                  srl          s5, a0, a3
207:              add          s4, s2, s9
                  slti         a2, t2, -122
                  bne          s10, t2, 216f
210:              sltiu        t6, t2, -774
                  bltu         tp, t5, 219f
                  sub          ra, tp, s11
213:              bgeu         t6, s8, 233f
                  sltu         s9, s2, t4
                  bne          s0, s10, 221f
216:              beq          s9, t0, 226f
                  xori         t0, s5, -350
                  srl          s6, sp, s2
219:              auipc        s1, 159802
                  sll          s6, tp, a7
221:              slt          s8, a4, s6
                  srli         s9, t3, 1
                  sub          t6, s3, tp
                  bgeu         t0, a7, 240f
                  andi         s0, t1, -1996
226:              sub          ra, zero, tp
                  srl          s9, ra, t4
                  or           t4, s4, t5
                  add          tp, t1, s2
                  bge          gp, t2, 249f
                  bltu         s9, t3, 242f
                  slt          s0, t2, a5
233:              sll          s7, a2, s7
                  slt          t0, s9, ra
                  blt          t2, a7, 236f
236:              bge          s0, s11, 252f
                  srli         s4, t0, 4
                  slli         a5, t1, 17
                  slti         s0, s7, 961
240:              sub          s1, s5, a1
                  sltiu        s11, a1, -356
242:              bltu         s1, s9, 254f
                  sltiu        t1, t4, -1323
                  slt          gp, s4, tp
                  addi         a2, gp, 1400
                  xori         zero, s9, 970
                  ori          sp, a5, -173
                  ori          a0, s9, -541
249:              lui          s7, 671099
                  sra          s8, t4, s10
                  add          a6, a5, t0
252:              slt          a6, zero, t5
                  xor          s6, a3, s11
254:              sub          a0, s1, a4
                  or           s2, t2, a7
                  sub          ra, t0, t4
                  auipc        s4, 160291
                  nop
                  sra          a4, sp, s3
                  bge          s6, sp, 265f
                  and          t1, a4, sp
                  nop
                  xori         t6, s3, 1499
                  or           s2, sp, s2
265:              lui          a1, 214955
                  or           tp, t2, t5
                  slt          sp, t0, s4
                  andi         t4, a1, 1052
                  slti         s3, t5, 1853
                  auipc        t3, 543134
                  lw           a3, 4(t2)
                  or           s0, t0, a3
                  addi         t2, t2, 32
                  sltiu        t0, a4, -1016
                  srai         s5, s2, 0
                  srli         s5, tp, 25
438:              addi x20, x13, 1
438:              jalr x20, x20, 0
sub_3:            slt          ra, t5, a1
                  lui          a1, 117316
                  xori         t3, tp, 731
                  addi         t2, t2, -64
                  xori         zero, t4, -710
                  sll          gp, s4, s1
                  sltiu        s7, s6, -1341
                  sw           a3, 4(t2)
                  nop
sub_3_29:         jal          a3, 12f
0:                jal          a5, 7f
1:                jal          ra, 6f
2:                jal          s4, 0b
3:                jal          ra, 5f
4:                jal          t6, 16f
5:                jal          ra, 9f
6:                jal          ra, 3b
7:                jal          t1, 15f
8:                jal          ra, 4b
9:                jal          ra, 18f
10:               jal          ra, 19f
11:               jal          t1, 14f
12:               jal          tp, 8b
13:               jal          ra, 2b
14:               jal          ra, 1b
15:               jal          a0, 10b
16:               jal          s0, 11b
17:               jal          ra, 13b
18:               jal          a4, 17b
19:               xori         s0, s6, 1927
sub_3_22:         jal          a3, 0f
0:                jal          ra, 7f
1:                jal          ra, 15f
2:                jal          ra, 11f
3:                jal          t1, 4f
4:                jal          t1, 17f
5:                jal          ra, 6f
6:                jal          ra, 13f
7:                jal          a2, 27f
8:                jal          t1, 22f
9:                jal          ra, 28f
10:               jal          a0, 21f
11:               jal          t1, 10b
12:               jal          ra, 16f
13:               jal          sp, 14f
14:               jal          t1, 3b
15:               jal          t1, 5b
16:               jal          a2, 24f
17:               jal          ra, 9b
18:               jal          ra, 25f
19:               jal          ra, 2b
20:               jal          s8, 18b
21:               jal          t1, 1b
22:               jal          tp, 23f
23:               jal          s1, 26f
24:               jal          gp, 8b
25:               jal          ra, 12b
26:               jal          ra, 29f
27:               jal          t3, 19b
28:               jal          t1, 20b
29:               xor          tp, s10, s11
sub_3_11:         jal          a3, 21f
0:                jal          ra, 19f
1:                jal          t1, 5f
2:                jal          ra, 6f
3:                jal          t0, 13f
4:                jal          ra, 9f
5:                jal          a4, 0b
6:                jal          ra, 12f
7:                jal          ra, 3b
8:                jal          gp, 25f
9:                jal          t1, 7b
10:               jal          t1, 16f
11:               jal          ra, 14f
12:               jal          a0, 10b
13:               jal          t0, 1b
14:               jal          t1, 23f
15:               jal          t0, 11b
16:               jal          ra, 4b
17:               jal          ra, 18f
18:               jal          sp, 8b
19:               jal          ra, 15b
20:               jal          t0, 24f
21:               jal          t1, 2b
22:               jal          t1, 17b
23:               jal          ra, 20b
24:               jal          t1, 22b
25:               sra          s9, t3, a2
sub_3_27:         jal          a3, 15f
0:                jal          s6, 24f
1:                jal          ra, 16f
2:                jal          t1, 22f
3:                jal          s6, 6f
4:                jal          ra, 21f
5:                jal          ra, 11f
6:                jal          ra, 27f
7:                jal          ra, 10f
8:                jal          ra, 4b
9:                jal          s6, 26f
10:               jal          ra, 0b
11:               jal          s7, 3b
12:               jal          ra, 5b
13:               jal          s7, 2b
14:               jal          t1, 7b
15:               jal          t0, 12b
16:               jal          ra, 20f
17:               jal          ra, 28f
18:               jal          ra, 14b
19:               jal          s6, 13b
20:               jal          s1, 25f
21:               jal          t4, 18b
22:               jal          t1, 9b
23:               jal          a4, 19b
24:               jal          ra, 1b
25:               jal          ra, 23b
26:               jal          a3, 17b
27:               jal          ra, 8b
28:               auipc        s7, 35061
sub_3_0:          jal          a3, 1f
0:                jal          ra, 11f
1:                jal          ra, 4f
2:                jal          gp, 13f
3:                jal          s3, 27f
4:                jal          ra, 18f
5:                jal          ra, 14f
6:                jal          ra, 26f
7:                jal          t3, 0b
8:                jal          ra, 20f
9:                jal          ra, 2b
10:               jal          t1, 5b
11:               jal          ra, 10b
12:               jal          t1, 24f
13:               jal          s4, 17f
14:               jal          tp, 12b
15:               jal          a3, 8b
16:               jal          t0, 22f
17:               jal          ra, 21f
18:               jal          s2, 19f
19:               jal          ra, 23f
20:               jal          ra, 25f
21:               jal          ra, 15b
22:               jal          s5, 9b
23:               jal          ra, 6b
24:               jal          t1, 3b
25:               jal          ra, 7b
26:               jal          gp, 16b
27:               and          ra, t5, t0
sub_3_4:          jal          a3, 5f
0:                jal          ra, 8f
1:                jal          ra, 19f
2:                jal          t1, 22f
3:                jal          t1, 0b
4:                jal          t1, 7f
5:                jal          ra, 1b
6:                jal          a1, 14f
7:                jal          ra, 17f
8:                jal          s11, 12f
9:                jal          ra, 23f
10:               jal          t1, 24f
11:               jal          ra, 16f
12:               jal          a2, 13f
13:               jal          ra, 11b
14:               jal          a0, 10b
15:               jal          ra, 21f
16:               jal          t1, 2b
17:               jal          ra, 6b
18:               jal          ra, 15b
19:               jal          t1, 4b
20:               jal          ra, 18b
21:               jal          a3, 25f
22:               jal          a4, 20b
23:               jal          ra, 3b
24:               jal          t1, 9b
25:               sra          s11, s4, t3
sub_3_7:          jal          a3, 3f
0:                jal          gp, 1f
1:                jal          t0, 11f
2:                jal          ra, 9f
3:                jal          ra, 10f
4:                jal          t1, 12f
5:                jal          t1, 8f
6:                jal          t1, 5b
7:                jal          ra, 2b
8:                jal          a1, 0b
9:                jal          t3, 6b
10:               jal          t1, 7b
11:               jal          ra, 4b
12:               srl          s5, tp, s3
sub_3_19:         jal          a3, 9f
0:                jal          ra, 1f
1:                jal          t1, 26f
2:                jal          t1, 23f
3:                jal          ra, 24f
4:                jal          ra, 12f
5:                jal          t0, 20f
6:                jal          ra, 15f
7:                jal          ra, 6b
8:                jal          t1, 2b
9:                jal          ra, 17f
10:               jal          ra, 13f
11:               jal          ra, 8b
12:               jal          t1, 10b
13:               jal          ra, 27f
14:               jal          t1, 29f
15:               jal          a5, 21f
16:               jal          t1, 14b
17:               jal          t1, 18f
18:               jal          ra, 11b
19:               jal          ra, 7b
20:               jal          ra, 3b
21:               jal          gp, 5b
22:               jal          t1, 0b
23:               jal          ra, 25f
24:               jal          s6, 28f
25:               jal          tp, 4b
26:               jal          ra, 19b
27:               jal          ra, 22b
28:               jal          t4, 16b
29:               and          zero, s6, a1
sub_3_1:          jal          a3, 10f
0:                jal          s2, 3f
1:                jal          ra, 0b
2:                jal          ra, 1b
3:                jal          sp, 5f
4:                jal          s11, 7f
5:                jal          ra, 11f
6:                jal          ra, 9f
7:                jal          t1, 6b
8:                jal          t1, 2b
9:                jal          ra, 8b
10:               jal          ra, 4b
11:               sra          s0, a4, s4
sub_3_18:         jal          a3, 17f
0:                jal          t1, 3f
1:                jal          s1, 4f
2:                jal          t1, 10f
3:                jal          s0, 29f
4:                jal          t1, 24f
5:                jal          ra, 26f
6:                jal          t1, 11f
7:                jal          ra, 5b
8:                jal          t0, 13f
9:                jal          a3, 12f
10:               jal          s1, 22f
11:               jal          ra, 25f
12:               jal          s1, 14f
13:               jal          s5, 19f
14:               jal          s9, 1b
15:               jal          ra, 20f
16:               jal          ra, 0b
17:               jal          tp, 27f
18:               jal          tp, 15b
19:               jal          t1, 18b
20:               jal          ra, 28f
21:               jal          s8, 23f
22:               jal          ra, 8b
23:               jal          a5, 7b
24:               jal          ra, 21b
25:               jal          sp, 2b
26:               jal          t3, 16b
27:               jal          tp, 6b
28:               jal          ra, 9b
29:               andi         a0, t1, -1705
sub_3_13:         jal          a3, 6f
0:                jal          t1, 15f
1:                jal          ra, 22f
2:                jal          s11, 4f
3:                jal          ra, 1b
4:                jal          ra, 3b
5:                jal          ra, 11f
6:                jal          ra, 23f
7:                jal          t1, 2b
8:                jal          t1, 25f
9:                jal          t1, 14f
10:               jal          ra, 12f
11:               jal          ra, 9b
12:               jal          ra, 19f
13:               jal          t1, 26f
14:               jal          t1, 20f
15:               jal          t6, 16f
16:               jal          t1, 27f
17:               jal          t5, 21f
18:               jal          ra, 7b
19:               jal          sp, 8b
20:               jal          a4, 18b
21:               jal          ra, 24f
22:               jal          ra, 28f
23:               jal          ra, 10b
24:               jal          t1, 5b
25:               jal          t1, 0b
26:               jal          s7, 17b
27:               jal          tp, 13b
28:               auipc        a0, 673244
sub_3_8:          jal          a3, 7f
0:                jal          s6, 8f
1:                jal          s0, 6f
2:                jal          t3, 10f
3:                jal          s0, 0b
4:                jal          t1, 11f
5:                jal          t1, 9f
6:                jal          t6, 3b
7:                jal          t1, 2b
8:                jal          ra, 5b
9:                jal          gp, 4b
10:               jal          ra, 1b
11:               slli         s3, t6, 11
sub_3_14:         jal          a3, 5f
0:                jal          t1, 9f
1:                jal          a1, 11f
2:                jal          ra, 8f
3:                jal          ra, 7f
4:                jal          t1, 18f
5:                jal          t1, 24f
6:                jal          ra, 3b
7:                jal          a4, 14f
8:                jal          a6, 26f
9:                jal          s9, 20f
10:               jal          ra, 6b
11:               jal          tp, 12f
12:               jal          ra, 22f
13:               jal          ra, 17f
14:               jal          ra, 1b
15:               jal          t1, 16f
16:               jal          s1, 13b
17:               jal          ra, 21f
18:               jal          tp, 27f
19:               jal          s9, 10b
20:               jal          ra, 28f
21:               jal          ra, 0b
22:               jal          s3, 23f
23:               jal          ra, 4b
24:               jal          s5, 2b
25:               jal          ra, 15b
26:               jal          ra, 19b
27:               jal          ra, 25b
28:               sub          gp, a1, s0
sub_3_23:         jal          a3, 12f
0:                jal          ra, 10f
1:                jal          ra, 16f
2:                jal          sp, 3f
3:                jal          ra, 9f
4:                jal          t1, 11f
5:                jal          tp, 18f
6:                jal          t0, 13f
7:                jal          ra, 20f
8:                jal          t1, 14f
9:                jal          ra, 5b
10:               jal          ra, 8b
11:               jal          ra, 7b
12:               jal          t1, 15f
13:               jal          t1, 0b
14:               jal          t1, 17f
15:               jal          ra, 19f
16:               jal          ra, 6b
17:               jal          t1, 2b
18:               jal          t1, 4b
19:               jal          s9, 1b
20:               nop
sub_3_5:          jal          a3, 7f
0:                jal          t1, 15f
1:                jal          a3, 27f
2:                jal          a1, 9f
3:                jal          s6, 28f
4:                jal          ra, 29f
5:                jal          s7, 1b
6:                jal          ra, 10f
7:                jal          sp, 16f
8:                jal          ra, 12f
9:                jal          ra, 14f
10:               jal          t1, 26f
11:               jal          t1, 22f
12:               jal          s11, 17f
13:               jal          t1, 11b
14:               jal          ra, 20f
15:               jal          ra, 21f
16:               jal          t1, 25f
17:               jal          s11, 24f
18:               jal          t1, 19f
19:               jal          ra, 0b
20:               jal          ra, 18b
21:               jal          ra, 8b
22:               jal          ra, 5b
23:               jal          ra, 4b
24:               jal          t1, 3b
25:               jal          s11, 6b
26:               jal          ra, 13b
27:               jal          ra, 2b
28:               jal          ra, 23b
29:               and          a2, a1, t1
sub_3_30:         jal          a3, 0f
0:                jal          sp, 15f
1:                jal          ra, 14f
2:                jal          ra, 5f
3:                jal          t1, 13f
4:                jal          ra, 19f
5:                jal          s8, 18f
6:                jal          s8, 9f
7:                jal          ra, 3b
8:                jal          s2, 16f
9:                jal          ra, 2b
10:               jal          ra, 11f
11:               jal          ra, 17f
12:               jal          ra, 23f
13:               jal          t1, 8b
14:               jal          t1, 22f
15:               jal          t1, 4b
16:               jal          gp, 21f
17:               jal          t0, 7b
18:               jal          ra, 12b
19:               jal          ra, 10b
20:               jal          ra, 1b
21:               jal          t0, 20b
22:               jal          ra, 6b
23:               addi         gp, a3, 333
sub_3_16:         jal          a3, 20f
0:                jal          t1, 22f
1:                jal          t1, 16f
2:                jal          ra, 15f
3:                jal          s6, 5f
4:                jal          ra, 17f
5:                jal          s5, 27f
6:                jal          t1, 8f
7:                jal          t4, 12f
8:                jal          t1, 24f
9:                jal          ra, 2b
10:               jal          t5, 13f
11:               jal          ra, 6b
12:               jal          ra, 9b
13:               jal          a0, 14f
14:               jal          ra, 28f
15:               jal          ra, 0b
16:               jal          ra, 4b
17:               jal          ra, 3b
18:               jal          t1, 23f
19:               jal          ra, 26f
20:               jal          t1, 19b
21:               jal          sp, 1b
22:               jal          t1, 11b
23:               jal          tp, 29f
24:               jal          ra, 18b
25:               jal          a6, 10b
26:               jal          tp, 25b
27:               jal          t0, 7b
28:               jal          ra, 21b
29:               add          s5, s2, t5
sub_3_2:          jal          a3, 13f
0:                jal          a0, 17f
1:                jal          ra, 7f
2:                jal          ra, 9f
3:                jal          s11, 6f
4:                jal          t1, 10f
5:                jal          ra, 12f
6:                jal          t1, 8f
7:                jal          ra, 11f
8:                jal          ra, 1b
9:                jal          t1, 15f
10:               jal          t1, 2b
11:               jal          t6, 18f
12:               jal          ra, 3b
13:               jal          tp, 0b
14:               jal          ra, 4b
15:               jal          ra, 5b
16:               jal          ra, 14b
17:               jal          ra, 16b
18:               slt          t6, s1, s11
sub_3_28:         jal          a3, 9f
0:                jal          ra, 12f
1:                jal          sp, 7f
2:                jal          t1, 10f
3:                jal          t1, 4f
4:                jal          ra, 1b
5:                jal          ra, 2b
6:                jal          t1, 13f
7:                jal          t1, 11f
8:                jal          t1, 6b
9:                jal          t1, 5b
10:               jal          a6, 0b
11:               jal          tp, 8b
12:               jal          gp, 3b
13:               xori         s7, s0, 767
sub_3_15:         jal          a3, 8f
0:                jal          ra, 9f
1:                jal          t1, 7f
2:                jal          s1, 4f
3:                jal          ra, 10f
4:                jal          t1, 6f
5:                jal          t1, 3b
6:                jal          sp, 0b
7:                jal          ra, 5b
8:                jal          s8, 2b
9:                jal          ra, 1b
10:               sub          s3, zero, a4
sub_3_17:         jal          a3, 7f
0:                jal          t1, 3f
1:                jal          ra, 6f
2:                jal          t0, 8f
3:                jal          ra, 9f
4:                jal          a4, 1b
5:                jal          ra, 4b
6:                jal          tp, 2b
7:                jal          s11, 0b
8:                jal          t1, 10f
9:                jal          ra, 5b
10:               xori         a1, s0, 1939
sub_3_26:         jal          a3, 22f
0:                jal          ra, 8f
1:                jal          ra, 3f
2:                jal          a2, 23f
3:                jal          s8, 21f
4:                jal          t1, 7f
5:                jal          s3, 4b
6:                jal          t1, 1b
7:                jal          ra, 16f
8:                jal          s1, 12f
9:                jal          ra, 17f
10:               jal          t1, 24f
11:               jal          t0, 20f
12:               jal          ra, 10b
13:               jal          ra, 25f
14:               jal          t1, 2b
15:               jal          ra, 18f
16:               jal          ra, 14b
17:               jal          ra, 0b
18:               jal          ra, 11b
19:               jal          s5, 5b
20:               jal          ra, 13b
21:               jal          ra, 15b
22:               jal          t0, 9b
23:               jal          s4, 6b
24:               jal          ra, 19b
25:               addi         s2, a2, -229
sub_3_24:         jal          a3, 0f
0:                jal          t1, 11f
1:                jal          ra, 8f
2:                jal          t1, 5f
3:                jal          ra, 12f
4:                jal          sp, 7f
5:                jal          s6, 1b
6:                jal          ra, 3b
7:                jal          ra, 13f
8:                jal          t0, 6b
9:                jal          ra, 2b
10:               jal          sp, 4b
11:               jal          t3, 9b
12:               jal          ra, 10b
13:               sltu         sp, ra, s4
sub_3_25:         jal          a3, 12f
0:                jal          s8, 11f
1:                jal          t5, 2f
2:                jal          sp, 8f
3:                jal          ra, 18f
4:                jal          t1, 13f
5:                jal          t1, 4b
6:                jal          ra, 15f
7:                jal          s2, 10f
8:                jal          t6, 6b
9:                jal          t1, 16f
10:               jal          t1, 14f
11:               jal          ra, 9b
12:               jal          ra, 0b
13:               jal          s7, 17f
14:               jal          ra, 1b
15:               jal          ra, 3b
16:               jal          ra, 5b
17:               jal          t1, 7b
18:               andi         a4, s1, -1382
sub_3_12:         jal          a3, 0f
0:                jal          t1, 6f
1:                jal          s9, 10f
2:                jal          t1, 12f
3:                jal          ra, 7f
4:                jal          ra, 9f
5:                jal          tp, 4b
6:                jal          ra, 2b
7:                jal          ra, 11f
8:                jal          s0, 5b
9:                jal          ra, 13f
10:               jal          s11, 8b
11:               jal          ra, 1b
12:               jal          ra, 3b
13:               ori          a2, s1, -1411
                  addi         s4, ra, -502
                  sll          s6, a6, s5
                  sra          a0, s8, s8
                  bgeu         a5, s7, 9f
                  xor          tp, ra, t4
                  bgeu         t3, zero, 8f
                  slti         s2, ra, 639
                  slt          s5, t1, gp
8:                srl          a0, s11, a5
9:                xor          t3, a3, s8
                  andi         gp, t4, -912
                  blt          s6, tp, 30f
                  ori          s9, a2, -884
                  sltu         t3, t0, s3
                  srli         s5, a1, 3
                  xori         s1, s11, 1753
                  sra          tp, s5, s1
                  auipc        s11, 953818
                  blt          s1, a7, 36f
                  sra          a0, t0, t1
                  add          s2, s5, a1
                  xor          t3, a4, s8
                  lui          a0, 793544
                  auipc        s6, 204898
                  srl          t4, s9, t6
                  blt          sp, t1, 41f
                  blt          a4, t6, 46f
                  slt          s7, sp, s5
                  bgeu         s8, t3, 33f
                  andi         a2, t5, 518
30:               sll          sp, sp, s7
                  slli         s1, ra, 22
                  addi         a3, s0, -1417
33:               addi         s8, t2, 229
                  xor          s1, a4, s9
                  ori          a0, s8, 1821
36:               bge          s6, s1, 38f
                  bne          s7, a0, 45f
38:               slli         gp, a6, 12
                  sll          s3, gp, s8
                  sltu         a3, t2, s10
41:               sll          s8, a7, tp
                  xor          s6, t0, t1
                  addi         s8, t4, 1799
                  srl          t3, a4, t4
45:               bltu         s9, s2, 48f
46:               sll          a5, gp, gp
                  bge          s11, gp, 60f
48:               and          t4, t6, s0
                  blt          a3, sp, 61f
                  slti         s0, s11, 707
                  bge          s1, sp, 54f
                  bltu         ra, s4, 66f
                  nop
54:               bltu         a0, a0, 66f
                  nop
                  nop
                  andi         t0, s11, -711
                  slt          a0, t0, a7
                  bne          a3, gp, 69f
60:               blt          a1, sp, 74f
61:               nop
                  bgeu         sp, s6, 73f
                  bge          gp, gp, 64f
64:               bgeu         s7, s8, 65f
65:               bgeu         t1, t0, 81f
66:               lui          t1, 205800
                  srai         s11, zero, 15
                  slli         t6, s10, 25
69:               blt          s9, a3, 73f
                  sra          s8, t1, a6
                  sltu         tp, zero, s5
                  srl          s0, tp, gp
73:               bge          s6, a2, 91f
74:               andi         sp, gp, -1891
                  or           s4, s10, sp
                  slli         s11, s0, 2
                  slti         s1, t6, 1638
                  srl          tp, s0, a6
                  xor          t3, a4, s10
                  bge          s10, s6, 99f
81:               nop
                  sll          a4, s8, s3
                  srl          gp, a1, a3
                  nop
                  sll          a0, a3, gp
                  andi         s6, a1, -1722
                  lui          a3, 292271
                  blt          ra, t5, 108f
                  slli         a5, s9, 23
                  andi         a4, t0, 1100
91:               sltu         a1, t6, s7
                  nop
                  auipc        gp, 486117
                  andi         tp, zero, 1865
                  srli         a4, ra, 12
                  andi         tp, s6, -1892
                  xori         s3, zero, -418
                  sub          t1, a2, s4
99:               xori         s8, s0, 1302
                  bne          gp, t1, 106f
                  slli         a0, s2, 20
                  nop
                  lui          s5, 138621
                  bgeu         a4, tp, 117f
                  srl          t3, t2, a5
106:              lui          sp, 232229
                  andi         a0, a6, 1282
108:              bge          t2, s10, 124f
                  sltu         t0, s7, t0
                  srli         zero, gp, 16
                  lui          gp, 860491
                  blt          a0, s3, 130f
                  beq          s11, ra, 116f
                  and          s9, s3, a6
                  auipc        s11, 168405
116:              blt          s3, s3, 132f
117:              bne          t4, a5, 133f
                  slli         s8, s3, 23
                  nop
                  andi         s5, s3, -1888
                  sll          t4, s2, s1
                  and          a0, ra, t4
                  srli         tp, s1, 11
124:              andi         a6, s6, 1062
                  andi         zero, s10, 805
                  srli         tp, s5, 17
                  slti         a5, s4, 1933
                  or           t6, a0, a6
                  xori         s2, tp, -1539
130:              lui          s4, 566464
                  slli         s6, s0, 7
132:              ori          sp, sp, -305
133:              ori          t5, t2, 1032
                  xor          tp, s4, s11
                  and          a3, sp, zero
                  lui          t6, 864087
                  slli         t1, s8, 12
                  bltu         ra, t2, 140f
                  bne          s8, s3, 159f
140:              addi         ra, s8, -161
                  addi         t4, a1, 1329
                  sll          a6, gp, tp
                  xor          sp, a3, t2
                  bne          a4, a4, 150f
                  bgeu         a3, s6, 148f
                  blt          s0, ra, 158f
                  add          s3, s10, s9
148:              bgeu         a5, s4, 167f
                  slti         t6, a3, 585
150:              andi         a3, s9, -438
                  and          s11, a6, s9
                  bge          t4, s9, 170f
                  ori          a0, zero, 297
                  auipc        a5, 415648
                  sll          a3, s9, a2
                  sltiu        s9, tp, -947
                  lui          sp, 67131
158:              auipc        t4, 380605
159:              addi         gp, zero, 400
                  sra          a5, zero, t4
                  xor          a3, t4, s2
                  slli         s3, tp, 10
                  srli         s7, a0, 29
                  bgeu         tp, s0, 177f
                  blt          s0, t1, 168f
                  sltiu        sp, t0, 568
167:              blt          zero, a1, 172f
168:              srai         s11, s3, 8
                  xori         ra, t1, -211
170:              xori         a6, s4, 1749
                  srli         ra, t4, 10
172:              bne          tp, t4, 192f
                  bgeu         s9, s7, 176f
                  lui          t6, 942067
                  srl          s4, a4, t4
176:              sll          t4, a1, s9
177:              nop
                  ori          zero, a2, 570
                  add          a2, sp, sp
                  slli         s3, s11, 14
                  sub          a0, t5, t6
                  sub          a6, s6, zero
                  sltu         t0, s7, a2
                  beq          s5, s6, 202f
                  sltu         s6, sp, s6
                  bltu         t1, a2, 187f
187:              xori         s4, tp, -1987
                  nop
                  nop
                  bltu         t6, s11, 204f
                  and          t6, a3, gp
192:              lui          s2, 32526
                  bne          t2, a2, 211f
                  addi         s5, s0, -1415
                  bltu         a7, a6, 207f
                  bltu         t5, t0, 209f
                  nop
                  auipc        a4, 337068
                  bne          t3, t0, 215f
                  and          s3, t5, t1
                  sltu         s9, s1, s2
202:              blt          t6, s0, 213f
                  srl          a6, a7, a4
204:              blt          zero, a2, 214f
                  xor          t4, s11, a4
                  ori          tp, s9, 219
207:              xori         a1, a2, -663
                  add          t5, a0, a5
209:              addi         zero, a4, -897
                  addi         s11, s0, 708
211:              lui          s6, 379348
                  lui          a3, 225678
213:              addi         a4, s3, -471
214:              srai         a2, a5, 15
215:              bge          a5, t6, 221f
                  blt          s6, a4, 230f
                  lui          s1, 326170
                  slti         t0, a7, -1881
                  addi         ra, a3, -213
                  bltu         s8, s0, 223f
221:              xori         ra, s9, 535
                  sra          s6, s3, a3
223:              bge          s5, s5, 231f
                  xori         t3, a5, -703
                  nop
                  bltu         t2, sp, 245f
                  xor          s11, s8, s5
                  blt          s1, t1, 229f
229:              xori         a2, s10, 1712
230:              slt          s3, s11, t2
231:              nop
                  srli         s9, t0, 17
                  bgeu         t0, s4, 237f
                  auipc        s7, 426717
                  nop
                  slti         s1, t1, 1423
237:              sll          a3, s10, s4
                  bge          a2, ra, 250f
                  andi         t1, t6, -469
                  ori          t1, t6, 180
                  bltu         sp, ra, 242f
242:              srai         s6, s11, 16
                  add          zero, t0, zero
                  sltu         a6, s3, t4
245:              addi         s5, a1, -1479
                  sra          a2, sp, t1
                  bge          t4, ra, 267f
                  srai         tp, s3, 19
                  or           a2, t2, a0
250:              xori         s8, a5, -25
                  bgeu         s6, s3, 262f
                  auipc        s7, 960483
                  sll          s4, s11, s7
                  lui          a5, 177797
                  xor          a5, s8, a0
                  srai         a0, s7, 20
                  lui          a5, 355884
                  sltu         s2, s4, zero
                  slli         t0, t5, 8
                  slt          t1, s10, a3
                  xor          s0, a7, t3
262:              sub          t6, s6, s9
                  bne          ra, s0, 281f
                  or           gp, s2, a1
                  xori         s11, t2, -895
                  addi         t4, t0, -352
267:              sra          t0, a5, s5
                  ori          s11, s6, 1863
                  srai         a5, t2, 1
                  srai         t5, a7, 30
                  slti         a5, s1, -660
                  auipc        s11, 972881
                  or           s7, t4, tp
                  sltiu        tp, t6, -223
                  sll          s5, s9, a6
                  and          a5, a2, t6
                  slt          t5, t3, a5
                  sub          a6, sp, a7
                  srl          s0, s7, t1
                  ori          t1, sp, -1042
281:              or           sp, s5, t0
                  ori          t6, s2, -1719
                  slt          t6, a4, sp
                  nop
                  bgeu         t3, s8, 301f
                  slli         a5, tp, 1
                  slt          a6, a5, a2
                  bltu         s6, t1, 292f
                  beq          a1, s7, 301f
                  bge          a1, zero, 308f
                  auipc        s1, 469398
292:              sltu         s3, s8, a7
                  sll          a1, tp, gp
                  slli         s5, s6, 12
                  auipc        s5, 171917
                  ori          sp, s8, 1674
                  bgeu         s8, zero, 310f
                  slt          tp, zero, a2
                  ori          s6, s8, 580
                  bne          t5, t6, 314f
301:              bne          ra, s8, 315f
                  xor          a2, a7, t1
                  blt          a2, s0, 308f
                  xori         s9, a3, 1983
                  xori         tp, sp, -1191
                  slti         s6, a7, -975
                  sll          s11, s4, s0
308:              xori         t3, t2, -869
                  bge          s1, gp, 315f
310:              sltu         s4, a6, s2
                  lui          a3, 863355
                  sltu         s5, sp, s0
                  xori         a0, t0, 1798
314:              sra          s5, s5, s4
315:              sra          t3, s3, tp
                  srl          s5, zero, ra
                  slt          t1, s7, tp
                  slli         t5, zero, 21
                  bne          s2, a5, 327f
                  slt          a1, s2, a5
                  slti         t3, s3, 373
                  add          a4, zero, a0
                  bge          tp, s9, 341f
                  or           t0, t1, t1
                  and          s2, a0, t6
                  sub          a0, s5, a0
327:              auipc        ra, 691160
                  beq          s11, s9, 344f
                  srai         s11, zero, 4
                  sub          zero, tp, a6
                  srl          ra, s9, s4
                  ori          s1, gp, -422
                  lui          t6, 89174
                  sll          s11, a3, s2
                  sub          s2, a1, s7
                  xor          sp, s6, s2
                  or           t4, s5, s5
                  slti         s7, a6, 436
                  sltu         s7, s2, s8
                  srl          a1, s1, s10
341:              bltu         a4, t6, 344f
                  or           a5, s5, s2
                  blt          s11, s11, 363f
344:              add          a6, t3, s0
                  auipc        s11, 535915
                  lui          sp, 677101
                  sra          t5, s11, s0
                  andi         s8, sp, -534
                  slli         t6, sp, 11
                  sltu         s7, t6, s7
                  slti         t4, a0, 231
                  or           a3, t4, a3
                  blt          s9, a5, 372f
                  slli         s7, t5, 20
                  slli         a0, s11, 25
                  sll          s2, a5, t5
                  xori         t5, a4, -1627
                  bgeu         sp, s11, 360f
                  xor          a5, s0, s1
360:              nop
                  slt          a3, sp, t0
                  addi         t3, s4, 850
363:              srli         t6, s3, 5
sub_3_3:          jal          a3, 14f
0:                jal          ra, 16f
1:                jal          ra, 9f
2:                jal          a1, 10f
3:                jal          ra, 12f
4:                jal          s11, 15f
5:                jal          ra, 11f
6:                jal          ra, 7f
7:                jal          ra, 2b
8:                jal          ra, 0b
9:                jal          t1, 8b
10:               jal          ra, 13f
11:               jal          ra, 4b
12:               jal          ra, 5b
13:               jal          ra, 3b
14:               jal          ra, 6b
15:               jal          t1, 1b
16:               sll          a3, a1, zero
                  sll          s11, zero, s9
                  bne          a7, zero, 368f
                  slli         s9, a6, 6
                  bne          a1, t4, 380f
368:              or           s0, s4, s10
                  andi         t0, a0, 1662
                  auipc        t1, 322422
                  sll          t6, gp, s1
372:              add          a2, s0, s1
                  beq          t6, a1, 383f
                  auipc        sp, 408565
                  xori         a5, s0, -1912
                  bne          s3, t1, 382f
                  srai         sp, s6, 18
                  and          s6, a3, s11
                  add          a1, s2, s7
380:              beq          a5, gp, 383f
                  slt          s7, tp, zero
382:              srl          a0, s1, s6
383:              srli         s1, s6, 14
                  slti         s6, a2, -1131
                  bge          a3, t5, 401f
                  addi         sp, a2, 832
                  addi         ra, s3, 852
                  xor          ra, t1, s9
                  sltu         s9, ra, a0
                  bge          t1, t3, 393f
                  bltu         gp, s7, 410f
                  xor          t4, a5, s2
393:              lui          a4, 146895
                  andi         s8, s11, 927
                  sra          s0, t3, t1
                  bge          gp, ra, 397f
397:              and          t4, a0, a2
                  add          a4, s3, s11
                  andi         ra, s2, -875
                  slti         gp, a1, -405
401:              and          s1, s11, a0
                  auipc        s1, 726629
                  beq          zero, s0, 406f
                  addi         ra, s11, 1394
                  slt          s1, t2, a3
406:              srl          a5, s7, s3
                  or           a3, a6, tp
                  lui          a2, 1010051
                  and          gp, a3, s0
410:              blt          s9, s9, 426f
                  bltu         a7, s1, 429f
                  slti         s1, s6, -1434
                  and          ra, gp, t0
                  addi         s2, t4, -78
                  bgeu         s0, a7, 429f
                  addi         s11, a0, 1952
                  xor          s5, t0, a6
                  xori         tp, s2, -875
                  andi         a6, s7, -1303
                  srli         t1, a1, 10
                  lui          t4, 298510
                  sltiu        a2, s3, -7
                  lui          s11, 55413
                  sub          zero, tp, a7
                  sra          t3, tp, t3
426:              sltiu        a5, a6, -917
                  sltiu        ra, a3, -1872
                  sltiu        s8, t2, -90
429:              sra          a5, t0, s8
                  srl          t0, s5, s2
                  sra          s1, s9, s4
                  andi         sp, s5, 307
                  bltu         s3, a7, 439f
                  beq          s4, s2, 437f
                  addi         tp, s10, 1733
                  bne          zero, a1, 447f
437:              bne          t0, a2, 456f
                  bge          t6, t1, 457f
439:              lui          a5, 368793
                  nop
                  bge          t5, t2, 454f
                  sra          s9, t2, s1
                  sltiu        sp, s5, -846
                  slti         s9, s10, 1417
                  sll          a2, t3, s8
                  slti         ra, t1, 834
447:              bne          s0, s5, 452f
                  andi         s4, a3, 1545
                  sltu         a3, a4, a3
                  srai         zero, a4, 27
                  slti         sp, a4, -1312
452:              xor          gp, a6, t4
                  srai         t4, a7, 20
454:              auipc        tp, 619398
                  blt          s6, s11, 459f
456:              addi         s9, a0, 1543
457:              beq          gp, t1, 469f
                  sra          t4, zero, s1
459:              blt          a1, s6, 469f
                  or           zero, ra, t5
                  srli         t6, s10, 20
                  sra          t1, a6, t1
                  bgeu         a0, s4, 465f
sub_3_10:         jal          a3, 12f
0:                jal          a3, 15f
1:                jal          ra, 8f
2:                jal          ra, 11f
3:                jal          t6, 2b
4:                jal          t1, 16f
5:                jal          t5, 18f
6:                jal          s2, 5b
7:                jal          ra, 13f
8:                jal          tp, 7b
9:                jal          ra, 19f
10:               jal          ra, 4b
11:               jal          t1, 1b
12:               jal          t3, 10b
13:               jal          ra, 14f
14:               jal          ra, 17f
15:               jal          t1, 6b
16:               jal          ra, 3b
17:               jal          a1, 0b
18:               jal          ra, 9b
19:               nop
                  sub          gp, s3, a5
465:              addi         t6, sp, 447
                  sltiu        zero, a1, -1516
                  sltu         s2, a6, t0
                  srai         a4, s1, 4
469:              blt          a0, s6, 487f
                  add          s1, a7, s7
                  slt          s5, gp, a0
                  sll          zero, s2, a2
                  bgeu         ra, s2, 493f
                  sub          s0, s0, s6
                  slt          s0, s7, t6
                  or           sp, a1, zero
                  slt          a5, t6, a3
                  sltu         s8, t0, tp
                  sltu         t6, s1, t0
                  sll          ra, t2, a2
                  bne          s0, t1, 489f
                  beq          s8, s7, 485f
                  bge          sp, s11, 499f
                  auipc        zero, 481702
485:              sltu         s5, s2, gp
                  slti         s4, a5, 47
487:              sltu         ra, t0, s6
                  add          t5, a7, t1
489:              bltu         s1, t2, 505f
                  srl          zero, a1, sp
                  slt          t1, a2, a3
                  srai         s8, gp, 5
493:              nop
                  auipc        s5, 429186
                  sltu         t3, a4, a1
                  slt          gp, ra, a0
                  bgeu         tp, ra, 510f
                  bgeu         a4, t5, 499f
499:              blt          s8, a5, 517f
                  sltiu        a4, s7, 830
                  bge          ra, t1, 507f
                  sub          t4, s0, s5
                  addi         t5, a6, -1903
                  blt          s7, t0, 507f
505:              srli         gp, ra, 5
                  sub          a3, sp, t5
507:              andi         zero, t3, 1243
                  nop
                  bge          t6, s11, 529f
510:              nop
                  sltiu        s9, a3, -413
                  blt          sp, t0, 513f
513:              and          t1, a3, s11
                  and          tp, a1, t6
                  xor          t5, tp, s5
                  bne          ra, gp, 528f
517:              add          s6, t4, s1
                  blt          s8, s11, 532f
                  bne          s1, a4, 533f
                  bgeu         zero, t3, 523f
                  nop
                  srai         t4, a0, 23
523:              blt          t3, a0, 539f
                  slli         gp, t5, 23
                  slti         a4, a5, -1288
                  lui          s9, 650733
                  bgeu         t6, t1, 543f
528:              lui          a4, 499473
529:              sltiu        s5, s11, 1156
                  andi         t0, a2, 825
                  bge          t6, a7, 541f
532:              andi         t5, s9, -150
533:              and          s8, t3, t6
                  bne          a6, s11, 547f
                  auipc        s8, 200646
                  slt          a4, tp, t5
                  xori         t4, s9, 738
                  nop
539:              sltiu        a2, s8, -804
                  sub          t1, s11, a6
541:              bne          gp, t2, 560f
                  and          tp, t5, s1
543:              ori          t5, a6, -231
                  auipc        t3, 959310
                  nop
                  bgeu         t1, s8, 554f
547:              slli         s1, s6, 15
                  nop
                  auipc        t3, 964064
                  lui          ra, 146194
                  sub          gp, tp, s9
                  xor          t5, a4, s3
                  bgeu         a2, s9, 556f
554:              add          s0, s6, sp
                  andi         a0, t0, -925
556:              bgeu         a3, t2, 558f
                  and          s4, s8, zero
558:              bne          ra, s10, 570f
                  bne          tp, a1, 578f
560:              srli         t0, zero, 18
                  slti         gp, s6, -1044
                  bgeu         t2, a1, 565f
                  and          s11, sp, gp
                  blt          t4, t5, 570f
565:              auipc        t1, 971239
                  bltu         t2, a0, 586f
                  bge          a3, ra, 583f
                  andi         a2, t0, -565
                  beq          s0, ra, 570f
570:              slt          a5, s4, s10
                  xori         t3, t6, -889
                  bge          ra, s3, 576f
                  xor          a1, t1, s10
                  and          a3, t6, s11
                  bltu         s7, s6, 588f
576:              blt          a3, a1, 581f
                  or           t3, t6, tp
578:              xori         sp, a2, 964
                  and          s3, s7, ra
                  sltu         ra, a5, tp
581:              bgeu         a5, s3, 599f
                  srl          s9, gp, a6
583:              srl          tp, t0, a3
                  blt          s5, s2, 596f
                  sltiu        s3, t1, -442
586:              auipc        ra, 171466
                  slt          a2, s1, tp
588:              ori          ra, t5, 1162
                  bge          s0, t0, 592f
                  xor          t3, t3, s2
                  bge          a6, s5, 609f
592:              blt          ra, t2, 603f
                  beq          s2, a4, 611f
                  slti         s2, sp, 1029
                  or           t0, a1, t0
596:              beq          s7, s3, 610f
                  ori          a0, gp, -1422
                  blt          t3, sp, 618f
599:              xori         sp, a3, 580
                  bgeu         tp, a7, 606f
                  andi         t1, s4, -1048
                  blt          a5, a7, 603f
603:              xori         t5, s2, -1965
                  ori          s3, t3, 1766
                  lui          a2, 53157
606:              slli         a2, s8, 5
                  bgeu         s5, t0, 617f
                  slti         a4, t5, -1538
609:              lui          s5, 825690
610:              nop
611:              nop
                  add          t3, sp, a6
                  addi         s0, s1, 1933
                  nop
                  srai         s2, zero, 4
                  sra          zero, a2, s8
617:              srli         a1, a4, 30
618:              auipc        s7, 695061
                  addi         gp, t0, -512
                  bltu         t0, s3, 640f
                  or           a5, s4, gp
                  srai         tp, t2, 11
                  or           sp, t3, s1
                  sra          s8, sp, ra
                  bge          s11, s2, 631f
                  lui          t4, 198348
                  slli         t1, s8, 12
                  blt          s5, a5, 644f
                  sub          zero, t6, a6
                  addi         s7, a6, -1301
631:              beq          t0, t4, 639f
                  and          a6, a3, t2
                  sll          t5, zero, s6
                  bgeu         ra, a1, 652f
                  sra          zero, gp, a3
                  sub          s1, t3, a4
                  lui          zero, 374039
                  sltu         tp, s4, a0
639:              andi         s5, a7, 504
640:              ori          a6, t1, -609
                  srai         s0, t2, 21
                  srl          a5, s5, t2
                  or           a1, s9, s4
644:              sll          t0, s11, s3
                  bgeu         a3, s3, 657f
                  bltu         s11, s9, 666f
                  sub          s11, t0, t6
                  srai         t3, s5, 2
                  slli         t0, a0, 19
                  andi         a2, s2, 40
                  srli         a1, t0, 3
652:              or           a3, a7, a1
                  srl          t6, t5, a0
                  slt          ra, a6, s10
                  slli         a1, s1, 18
                  srl          s0, ra, a4
657:              sra          tp, a7, s3
                  and          s9, a2, t6
                  lui          s11, 596278
                  beq          s7, zero, 679f
                  srl          s6, s1, t1
                  bge          tp, ra, 665f
                  sub          s1, sp, a7
                  auipc        a6, 39576
665:              srai         a3, s3, 12
666:              nop
sub_3_21:         jal          a3, 7f
0:                jal          ra, 11f
1:                jal          s1, 14f
2:                jal          ra, 18f
3:                jal          ra, 16f
4:                jal          ra, 9f
5:                jal          s6, 17f
6:                jal          t0, 10f
7:                jal          tp, 6b
8:                jal          ra, 13f
9:                jal          ra, 8b
10:               jal          ra, 1b
11:               jal          t1, 12f
12:               jal          ra, 3b
13:               jal          a0, 5b
14:               jal          sp, 0b
15:               jal          gp, 4b
16:               jal          ra, 15b
17:               jal          a0, 2b
18:               srli         a1, tp, 26
                  slli         s1, s6, 24
                  beq          s4, gp, 679f
                  srl          zero, s3, zero
                  bgeu         s5, s0, 672f
                  and          a5, s3, a1
672:              beq          gp, s2, 685f
                  sra          s11, s2, t0
                  auipc        s1, 800478
                  andi         s3, t4, -1664
                  andi         ra, ra, 1954
                  nop
                  blt          tp, a6, 696f
679:              ori          a2, zero, -762
                  slti         zero, a6, 1483
                  ori          s3, t0, 1383
                  auipc        s9, 810395
                  bne          a5, a4, 688f
                  sll          s4, t4, s5
685:              sll          s6, a1, a4
                  sll          sp, a0, ra
                  slti         sp, t3, -881
688:              xor          t6, a3, s11
                  sltiu        a2, s9, -1901
                  srl          zero, a0, a0
                  slti         t5, sp, -1886
                  srli         s8, t6, 7
                  lui          a6, 113104
                  blt          tp, a6, 697f
                  nop
696:              sltu         a5, tp, gp
697:              xori         t0, a0, 195
                  xor          sp, t3, s8
                  andi         s9, t4, -1354
                  addi         t4, a1, -855
                  add          s1, s2, s4
                  sub          s8, a3, tp
                  slt          s8, s5, a6
                  sltu         s0, a3, s11
                  srl          s7, t6, a3
                  sra          t5, s1, t2
                  sra          sp, a7, s6
                  sltiu        t6, ra, -679
                  slt          s5, s4, s7
                  or           a1, t6, s1
                  slt          a4, sp, ra
                  sub          s5, s2, t5
                  ori          a6, s11, -1418
                  srli         s6, s1, 6
                  sra          gp, zero, sp
                  add          t6, t0, s8
                  sll          t3, s6, s9
                  sub          zero, t4, s5
                  sra          t6, a1, a5
                  beq          t2, a4, 734f
                  srl          gp, tp, a4
                  bgeu         a4, a5, 725f
                  nop
                  xori         t5, s6, -682
725:              srli         s4, s9, 31
                  bge          t4, s3, 744f
                  xor          a6, a1, t0
                  slti         s5, t1, -26
                  bltu         t5, a3, 741f
                  ori          ra, t5, 1308
                  addi         t5, sp, -1855
                  bne          s8, s2, 748f
                  bgeu         s8, t2, 746f
734:              nop
                  andi         a2, t0, 111
                  andi         a4, s9, -1310
                  slt          s3, t5, s4
                  sll          ra, a2, s3
                  sub          t0, s0, a3
                  auipc        a3, 144675
741:              and          tp, a6, a7
                  sltiu        a0, s1, -523
                  bne          a2, s3, 749f
744:              nop
                  slt          t3, s0, a1
746:              slli         a6, a6, 16
                  bgeu         a7, t6, 763f
748:              andi         s2, t0, 146
749:              ori          tp, s11, 783
                  sll          a2, s6, s3
                  srai         s11, a2, 17
                  srai         a5, s4, 4
                  or           a0, s0, s5
                  slli         t4, s0, 16
                  sra          tp, s2, a0
                  srli         s9, t3, 13
                  xori         t0, t4, 1348
                  srli         a2, s2, 13
                  andi         ra, t4, 136
                  andi         s4, a5, 341
                  srai         tp, gp, 22
                  slti         t0, s1, -707
763:              blt          a3, t2, 782f
                  bgeu         tp, t0, 765f
765:              blt          a1, s10, 766f
766:              sltu         a6, s1, s3
                  bltu         a6, s10, 771f
                  sltu         s11, a6, t3
                  slt          s1, s10, s5
                  or           s2, sp, t4
771:              sra          s4, t6, s10
                  slti         ra, t0, -914
                  bgeu         a7, s11, 787f
                  xor          s3, s0, a4
                  slli         s2, t0, 17
                  sll          zero, t3, s10
                  bge          s8, a1, 780f
                  sltu         s1, s7, s6
                  xori         s2, s2, -1472
780:              bltu         a7, s10, 786f
                  addi         s7, s11, 252
782:              or           a2, ra, s5
                  beq          s4, s8, 784f
784:              sub          a1, a5, t0
                  srl          t0, sp, s1
786:              andi         s6, t6, -374
787:              bgeu         s0, s1, 795f
                  sub          s6, a4, s8
                  bge          s1, a7, 807f
                  add          s2, a6, t4
                  xori         tp, s11, 727
                  add          t0, s5, a5
                  slt          s5, s11, tp
                  sub          ra, s10, a6
795:              sltu         s0, gp, a4
                  andi         a2, s3, 1716
                  xori         a6, a2, 1487
                  sub          a5, t0, s3
                  bne          a3, s11, 817f
                  or           tp, a0, zero
                  xori         s9, s0, 31
                  nop
                  bne          a1, s6, 817f
                  ori          s2, s4, -467
                  or           s0, s9, t1
                  sra          s11, t5, s3
sub_3_9:          jal          a3, 13f
0:                jal          s7, 15f
1:                jal          ra, 19f
2:                jal          t1, 5f
3:                jal          ra, 11f
4:                jal          ra, 9f
5:                jal          ra, 27f
6:                jal          ra, 2b
7:                jal          ra, 25f
8:                jal          ra, 0b
9:                jal          s0, 10f
10:               jal          a4, 6b
11:               jal          t1, 14f
12:               jal          ra, 26f
13:               jal          ra, 20f
14:               jal          ra, 16f
15:               jal          s1, 21f
16:               jal          t1, 8b
17:               jal          s11, 28f
18:               jal          tp, 23f
19:               jal          t1, 12b
20:               jal          s11, 22f
21:               jal          sp, 18b
22:               jal          ra, 24f
23:               jal          ra, 29f
24:               jal          ra, 4b
25:               jal          ra, 17b
26:               jal          ra, 3b
27:               jal          tp, 7b
28:               jal          ra, 1b
29:               srli         a2, s8, 23
807:              sltiu        t5, t6, 1525
                  bne          a7, a7, 826f
                  slt          t1, t3, a1
                  sra          t3, s7, gp
                  addi         s9, t1, -1519
                  ori          s5, s10, -2020
                  slti         zero, t4, -1425
                  sltiu        a6, s3, 43
                  sub          a0, a5, a1
                  sll          s6, a4, s3
817:              add          t0, s0, gp
                  add          a1, s0, s2
                  slti         a1, t4, 816
                  sra          tp, t5, zero
                  and          s4, s4, t6
                  slt          a3, s5, t3
                  ori          s5, s3, 1583
                  sub          s2, a3, s4
                  slli         a5, s7, 22
826:              lui          s0, 408375
                  xori         s7, tp, -118
                  slt          tp, t5, a3
                  ori          t0, s6, 613
                  sltu         sp, t0, zero
                  sltu         s3, s8, t3
                  add          s5, s8, s7
                  srai         ra, tp, 4
                  srl          a3, s7, s9
                  sub          s3, s8, a1
                  slt          a2, s5, s5
                  sll          t5, zero, gp
                  slt          s0, s5, s9
                  srl          zero, t4, s11
                  and          t3, t5, zero
                  sltu         s7, t6, s4
                  beq          s9, s9, 845f
                  sll          t1, s6, s5
                  srli         s3, a3, 26
845:              bgeu         s9, s6, 847f
                  xori         t1, a2, 1906
847:              slti         zero, tp, -1936
                  xori         a6, s1, 1510
                  sra          a5, s8, sp
                  slti         a1, a2, 1238
                  addi         a1, s1, -269
                  addi         t5, a3, 850
                  or           t5, gp, s10
                  sll          a3, s1, t2
                  nop
                  slti         a5, t5, -1912
                  andi         s8, s4, 34
                  add          a4, a5, s4
                  bne          zero, t6, 878f
                  bge          zero, sp, 874f
                  bge          t1, s11, 874f
                  add          s4, s2, s11
                  bne          zero, ra, 883f
                  xor          a3, s9, t4
                  blt          t1, t2, 881f
                  xori         s7, a0, -610
                  lui          t5, 674321
                  bltu         s9, ra, 888f
                  bltu         t6, t2, 874f
                  lui          s3, 96601
                  beq          tp, t0, 874f
                  beq          t3, t6, 878f
                  srl          a3, zero, a5
874:              srai         a0, a4, 14
                  lui          sp, 665192
                  sll          s4, t1, t3
                  auipc        s11, 349967
878:              sltu         a2, s4, ra
                  sltiu        t1, a5, -1078
                  srli         s8, a1, 17
881:              sltu         s11, t1, s4
                  nop
883:              ori          s11, zero, 1732
                  bge          a1, sp, 900f
                  sltu         a1, s4, t3
                  or           s9, a5, t6
                  sra          zero, tp, t5
888:              add          t6, sp, s6
                  addi         a4, s7, 2046
                  sub          a3, t5, t1
                  auipc        s9, 423007
                  add          s1, s11, s1
                  bgeu         s1, s0, 896f
                  xori         a0, tp, -1855
                  blt          a6, sp, 896f
896:              sltu         s2, a6, t0
                  sra          s9, t3, s0
                  xor          a3, t0, t0
                  and          a1, s6, a6
900:              xor          a0, s2, s7
                  ori          s1, a5, 9
                  xori         s6, ra, -233
                  srli         s0, sp, 13
                  bltu         t4, s7, 916f
                  and          a3, s3, s1
                  bgeu         s0, gp, 916f
                  bge          s9, ra, 911f
                  bge          s7, s0, 924f
                  bltu         t3, t4, 921f
                  sll          s8, s7, a3
911:              nop
                  slli         a6, zero, 22
                  sltiu        t3, t6, -822
                  auipc        s0, 587012
                  slti         s5, s3, 688
916:              beq          s10, t5, 927f
                  srai         t3, a5, 3
                  slti         a1, gp, -739
                  lui          t1, 29603
                  xori         t3, ra, 1287
921:              srl          tp, a6, a6
                  bgeu         t5, a2, 935f
                  and          s4, t3, sp
924:              andi         t6, a7, -137
                  bgeu         t5, a3, 944f
                  xori         t5, a5, -253
927:              slli         a2, s6, 24
                  srai         s0, t0, 17
                  nop
                  and          sp, s8, tp
                  bltu         a2, a3, 934f
                  bgeu         s6, a6, 944f
                  sltiu        s8, s9, 458
934:              bne          tp, a6, 942f
935:              blt          s1, ra, 936f
936:              andi         s6, t3, -289
                  bne          gp, sp, 953f
                  slli         a2, a5, 26
                  xori         s9, ra, -1868
                  bge          a3, s8, 951f
                  sltiu        sp, s7, 40
942:              xori         gp, a1, -692
                  or           t5, s0, s11
944:              bge          sp, a6, 962f
                  bgeu         gp, t2, 946f
946:              sll          a2, a6, s2
                  ori          s5, s11, 636
                  bltu         s2, t5, 950f
                  srai         t0, t1, 4
950:              xor          s3, s4, a3
951:              xori         t5, s4, -250
                  add          gp, a3, t3
953:              auipc        a6, 139719
                  slt          s9, t1, s6
                  addi         s5, a3, -500
                  sra          t3, s9, s6
                  bge          a7, ra, 977f
                  auipc        t4, 158175
                  slti         s5, s1, 1153
                  add          s6, a0, s6
                  sltu         sp, s10, tp
962:              add          t1, s0, a2
                  auipc        s3, 707987
                  lui          zero, 772366
                  blt          a0, s10, 979f
                  andi         s7, t4, 1566
                  sltiu        a6, t3, -1277
                  add          a5, s2, s1
                  sra          s9, s11, s4
                  bge          a0, a2, 974f
                  sltu         t0, a3, t5
                  andi         t3, a6, 17
                  slti         a0, s7, 345
974:              nop
                  sll          a1, s0, a7
                  ori          s5, a4, -237
977:              slli         a5, a4, 6
                  bgeu         a5, a3, 984f
979:              blt          t1, s0, 982f
                  xori         tp, a4, -1032
                  blt          a2, a3, 984f
982:              nop
                  or           a4, a2, a5
984:              ori          t3, ra, -1789
                  srli         t4, a4, 20
                  srli         s5, sp, 1
                  srli         s7, a5, 1
                  slti         t0, a1, -818
                  srai         ra, a3, 18
                  sltiu        s5, a5, -1681
                  srli         gp, s7, 16
                  bltu         s10, s9, 1012f
                  sll          s7, zero, a4
                  srai         t6, tp, 19
                  srl          a5, ra, s7
                  sltu         t4, tp, a1
                  lui          t5, 776549
                  add          a0, s10, tp
                  and          s6, a6, sp
                  sub          t3, a6, t2
                  lui          s6, 272019
                  slt          sp, a5, s8
                  xor          a0, a4, t6
                  blt          t0, s9, 1018f
                  srli         t5, s2, 8
                  xor          t6, s2, t4
                  sll          s0, ra, t5
                  slt          tp, t3, s1
                  nop
                  slti         s0, s6, -1804
                  andi         s6, a4, -971
1012:             xor          a3, s10, s3
                  ori          a0, a3, 824
                  sltiu        a2, sp, 456
                  blt          gp, a6, 1033f
                  bge          s4, s8, 1029f
                  sltiu        t6, s10, -631
1018:             blt          t4, sp, 1030f
                  slli         a2, a7, 6
                  auipc        a2, 275632
                  srl          a6, a1, s11
                  bne          s7, a7, 1025f
                  srai         s5, t4, 4
                  bne          gp, tp, 1040f
1025:             bgeu         a7, t1, 1038f
                  sub          ra, a0, a4
                  ori          t4, a2, -38
                  slli         t3, a0, 21
1029:             bltu         sp, gp, 1048f
1030:             bgeu         s9, s0, 1036f
                  srl          a1, t1, ra
                  or           zero, t3, s7
1033:             srl          zero, t0, a7
                  sltu         s8, a1, s7
                  add          s0, a1, s10
1036:             bltu         s6, a6, 1052f
                  and          s8, a4, t0
1038:             bne          tp, s1, 1041f
                  nop
1040:             slt          tp, a5, tp
1041:             srli         s1, s8, 2
                  sub          a4, a5, t3
                  sltu         gp, t3, s9
                  lui          t0, 893293
                  or           t6, gp, a3
                  bgeu         t1, a0, 1064f
                  xori         s1, s2, 960
1048:             auipc        sp, 455397
                  xor          s3, s2, s9
                  nop
                  lui          tp, 937073
1052:             slti         s9, a0, -994
                  srl          s11, s8, s9
                  bge          s11, ra, 1059f
                  slti         t1, s2, 137
                  xori         a1, s6, -991
                  bne          s1, t0, 1076f
                  xori         gp, tp, 1402
1059:             blt          t2, a7, 1069f
                  sltiu        a1, t0, 1276
                  ori          a0, s1, -969
                  sub          s11, tp, a3
                  add          t3, a4, s5
1064:             srai         s4, gp, 7
                  sll          tp, a1, s11
                  or           a2, t1, tp
                  or           a2, s6, zero
                  xori         s9, s9, 1568
1069:             xor          t3, a5, t4
                  auipc        a2, 491730
                  andi         t5, zero, 735
                  andi         s6, a2, -1019
                  ori          ra, s7, -736
                  sll          a2, s1, t1
                  xor          s4, s3, t2
1076:             blt          a4, ra, 1088f
                  sra          a0, s5, t6
                  srl          ra, t0, a7
                  blt          a4, a3, 1098f
                  bltu         a2, sp, 1081f
1081:             sltu         a2, s10, t1
                  sub          s8, t4, s10
                  xor          a0, gp, t6
                  sub          t6, s10, t3
                  xori         t6, ra, 1357
                  sll          a0, t6, ra
                  bge          a6, t0, 1090f
1088:             ori          t0, a3, -1306
                  slt          sp, s1, s6
1090:             slti         s8, a6, -1082
                  slli         s7, t6, 22
                  andi         a4, sp, 1283
                  sll          t1, s8, s0
                  sltu         zero, t5, ra
                  beq          s2, t4, 1114f
                  slli         tp, s6, 11
                  add          t3, t6, s2
1098:             lui          s2, 808475
                  ori          tp, t4, 1866
                  srai         a2, s0, 3
                  ori          a1, a0, -548
                  sra          s9, t5, t4
                  bgeu         t3, t2, 1123f
sub_3_6:          jal          a3, 17f
0:                jal          ra, 4f
1:                jal          ra, 15f
2:                jal          t5, 13f
3:                jal          sp, 16f
4:                jal          ra, 12f
5:                jal          ra, 3b
6:                jal          ra, 7f
7:                jal          t1, 9f
8:                jal          ra, 2b
9:                jal          t1, 11f
10:               jal          a0, 0b
11:               jal          s11, 5b
12:               jal          ra, 14f
13:               jal          a6, 6b
14:               jal          ra, 1b
15:               jal          ra, 19f
16:               jal          gp, 18f
17:               jal          a1, 8b
18:               jal          ra, 10b
19:               or           s4, s10, a6
                  bge          t2, ra, 1120f
                  bltu         a5, s9, 1108f
                  sll          ra, s2, zero
                  ori          ra, t2, 1399
1108:             srai         s6, s1, 20
                  beq          s2, t0, 1125f
                  sltiu        tp, s10, 312
                  sra          a1, t1, s0
                  sltu         sp, a7, a2
                  bge          a0, a1, 1114f
1114:             blt          a4, ra, 1126f
                  bgeu         t5, a5, 1117f
                  and          sp, a7, a1
1117:             addi         s7, s10, 861
                  beq          s4, s11, 1132f
                  slti         tp, s11, 412
1120:             lui          sp, 829515
                  nop
                  slli         a3, s1, 27
1123:             nop
                  slti         s1, t6, 1595
1125:             bne          a5, t1, 1128f
1126:             sub          a6, s6, t1
                  bge          a7, gp, 1145f
1128:             auipc        gp, 171773
                  xor          t5, s4, zero
                  nop
                  addi         s2, s5, -1343
1132:             blt          s11, a7, 1148f
                  srl          s8, a2, s8
                  sll          s1, a2, t0
                  srai         sp, a6, 1
                  ori          tp, t1, -20
                  sltu         a1, s10, s2
                  lui          s7, 803928
                  srai         s0, s2, 20
                  ori          t3, s6, -1034
                  bltu         s6, s11, 1151f
                  bgeu         a1, s2, 1155f
                  bgeu         a5, t1, 1154f
                  srai         t0, t5, 5
1145:             add          t4, s3, ra
                  slti         a3, a0, -1807
                  bltu         s3, s2, 1167f
1148:             bgeu         tp, s3, 1153f
                  sltiu        a3, a4, 601
                  slli         a1, a0, 7
1151:             add          t4, t1, a7
                  and          s0, s6, ra
1153:             sub          s0, tp, t6
1154:             auipc        zero, 156543
1155:             sll          sp, t1, s0
                  and          s7, t3, t1
                  bne          sp, sp, 1160f
                  srl          ra, s4, sp
                  xor          ra, t6, sp
1160:             bge          t1, s5, 1173f
                  slli         t5, zero, 25
                  bge          a4, a2, 1166f
                  sll          t0, a1, t6
                  nop
                  slli         t6, t2, 7
1166:             add          a4, a4, t6
1167:             sltiu        gp, a4, -425
                  bltu         ra, a5, 1186f
                  slt          t1, zero, gp
                  srai         a1, t6, 11
                  sll          zero, s11, t6
                  sra          s1, s9, t4
1173:             sltu         a6, a6, s1
                  sub          t6, a7, a2
                  sltiu        ra, s0, 775
                  srai         a0, ra, 6
                  or           s2, s0, sp
                  srl          s4, t5, s11
                  nop
                  sltu         s11, ra, s1
                  auipc        ra, 911737
                  slt          tp, zero, s3
                  srli         ra, s1, 6
                  auipc        a3, 501245
                  srai         s1, s6, 20
1186:             sll          s3, zero, s6
                  or           s2, a1, a0
                  or           s6, a3, s0
                  slti         t0, s9, 842
                  sltiu        a4, t6, -1974
                  bgeu         a5, t1, 1197f
                  xor          t1, gp, s0
                  beq          tp, gp, 1211f
                  sub          s2, s10, s9
                  bne          tp, s4, 1201f
                  sll          t1, s0, a7
1197:             slti         s3, s5, 1748
                  bne          a0, s2, 1212f
                  beq          zero, t2, 1207f
                  sltu         s3, s3, t2
1201:             xori         s3, s5, 918
                  slti         a1, ra, 556
                  bne          a0, ra, 1223f
                  nop
                  bne          t0, tp, 1208f
                  sll          a5, t3, s10
1207:             sltiu        s3, t3, 958
1208:             bge          a1, a2, 1228f
                  bgeu         t3, t5, 1227f
                  sra          tp, gp, a5
1211:             slt          tp, s5, s10
1212:             or           t1, s7, a6
                  xori         a1, t6, 1175
                  andi         a5, a6, -568
                  slli         s2, s5, 9
                  srli         sp, t2, 22
                  srli         s9, s7, 13
                  or           t4, s8, tp
                  xor          s2, a3, s10
                  auipc        s5, 352387
                  slti         s7, sp, -437
                  sub          a4, a4, a2
1223:             or           gp, a6, a5
                  xor          t1, a7, a1
                  srl          sp, a0, a7
                  slt          t0, t6, t0
1227:             lui          gp, 739621
1228:             beq          s2, a5, 1231f
                  xor          s4, t1, s3
                  add          s9, a2, s7
1231:             srli         a2, a6, 25
                  sub          s7, s11, s5
                  bgeu         t1, t1, 1245f
                  ori          t5, sp, 252
                  bgeu         a5, zero, 1236f
1236:             sltiu        gp, t4, 1641
                  andi         t1, t6, 671
                  xori         ra, ra, -1068
                  srli         s1, s6, 27
                  ori          s8, s0, -1353
                  slt          gp, s4, s6
                  ori          s11, t4, -1391
                  srl          tp, a0, t3
                  srai         s7, a4, 14
1245:             add          t6, a6, s1
                  or           sp, s4, s3
                  ori          t3, t0, -787
                  nop
                  slli         s0, s8, 15
                  andi         t3, t4, -652
                  blt          s5, s10, 1267f
                  sltiu        a6, s4, -508
                  beq          a4, a2, 1263f
                  srli         s9, t3, 15
                  sra          a0, s10, s10
                  bgeu         s11, zero, 1270f
                  sra          a2, a5, s1
                  bgeu         a3, a6, 1266f
                  auipc        s2, 873960
                  slti         a0, a0, 2034
                  beq          a7, gp, 1280f
                  or           gp, a4, s7
1263:             andi         a5, s11, -1562
                  bne          a6, t2, 1270f
                  beq          a1, t5, 1284f
1266:             sltu         s0, a6, t4
1267:             bne          a4, s11, 1270f
                  slli         a0, s5, 27
                  slt          sp, a3, tp
1270:             beq          a5, s5, 1284f
                  slt          t6, s1, sp
                  sub          s1, t4, s1
                  sltiu        s7, s2, 1615
                  srl          s1, t2, t2
                  bltu         s3, t1, 1293f
                  slti         a2, t4, 263
                  slt          t6, t2, ra
                  xori         t4, t2, 328
                  or           ra, a3, s10
1280:             sltiu        zero, t6, -1225
                  addi         a4, a3, 1148
                  ori          s3, s2, -195
                  slti         s4, s7, 1075
1284:             bne          s7, tp, 1300f
                  andi         s1, t2, 1601
                  xor          gp, s6, t3
                  or           s5, gp, a3
                  slt          a1, zero, a0
                  sltiu        ra, gp, 1639
                  ori          a4, t6, -1675
                  xor          s7, s10, s8
                  slt          s3, s10, a7
1293:             or           t6, t3, t5
                  xori         t0, s6, 1283
                  auipc        t1, 757019
                  srli         sp, s4, 14
                  bge          a3, s4, 1302f
                  beq          a3, t3, 1309f
                  xor          a4, s6, a1
1300:             bltu         a2, s7, 1302f
                  blt          s8, t5, 1319f
1302:             nop
                  nop
                  xori         a5, s5, 224
                  bltu         a4, s0, 1318f
                  addi         sp, s3, -21
                  srai         gp, s8, 16
                  auipc        t1, 978853
1309:             or           s3, s4, t0
                  or           s5, a3, s2
                  xor          s1, t2, a1
                  srl          a6, gp, t2
                  slt          a2, a6, s2
                  sra          t5, a5, ra
                  addi         a5, zero, -1861
                  and          s1, s11, tp
                  xor          s7, t6, t1
1318:             add          t3, sp, s5
1319:             bge          a7, ra, 1322f
                  auipc        s9, 464259
                  beq          s4, s8, 1334f
1322:             srai         a4, a2, 9
                  bltu         s4, ra, 1335f
                  blt          s9, zero, 1330f
                  bge          a3, t3, 1341f
                  sltu         a1, a1, s0
                  bgeu         a3, a1, 1328f
1328:             xori         s1, s9, 203
                  add          a3, s8, s2
1330:             xor          t5, t1, t5
                  ori          s5, a5, 192
                  andi         a0, s6, -832
                  slt          s9, s3, s8
1334:             nop
1335:             sltu         a5, s10, zero
                  sra          a0, a6, s10
                  bne          t0, sp, 1341f
                  bne          s6, s1, 1351f
                  lui          s4, 377785
                  sra          s0, a7, s9
1341:             bge          a3, a3, 1360f
                  lui          t1, 24499
                  sub          s8, t6, a1
                  xori         t3, s6, -1145
                  nop
                  sltiu        zero, t1, -1431
                  sltiu        t0, sp, 386
                  slli         t5, t3, 5
                  sra          s9, a0, s2
                  bne          a3, tp, 1355f
1351:             or           zero, sp, a6
                  or           s8, t4, ra
                  bltu         s3, gp, 1356f
                  blt          t3, a4, 1357f
1355:             slli         sp, gp, 13
1356:             ori          a6, ra, 539
1357:             sltiu        a6, s0, 1988
                  bltu         a5, a1, 1370f
                  xor          s5, a4, s5
1360:             srl          t6, a0, a3
                  auipc        t3, 704002
                  nop
                  sll          t3, a7, a4
                  andi         t4, t1, 1109
                  addi         zero, a5, -864
                  nop
                  xori         ra, a4, 1407
                  add          tp, s9, s2
                  beq          a0, s7, 1385f
1370:             nop
                  or           t4, zero, s9
                  bne          a6, a0, 1373f
1373:             bgeu         a1, s11, 1379f
                  bgeu         a0, s5, 1377f
                  sra          zero, s8, s0
                  ori          sp, s3, -139
1377:             and          s6, gp, a4
                  addi         a2, t3, 349
1379:             xor          t0, tp, tp
                  auipc        t6, 764452
                  slli         a5, a6, 2
                  srli         tp, s8, 10
                  lui          s8, 293677
                  or           s8, a6, s11
1385:             or           sp, sp, s6
                  blt          s8, s10, 1402f
                  srli         s2, ra, 1
                  bltu         s4, gp, 1399f
                  srl          gp, t3, t0
                  or           s6, s2, gp
                  and          t1, s4, t0
                  srl          a0, s0, s8
                  beq          t6, ra, 1413f
                  slli         t0, s0, 3
                  nop
                  sll          t4, t5, s6
                  sra          sp, tp, ra
                  bne          gp, s8, 1416f
1399:             and          s11, tp, s2
                  auipc        a6, 600659
                  sll          s3, sp, s7
1402:             slt          t6, a0, s1
                  and          t0, a0, t3
                  slli         ra, t3, 12
                  xor          sp, a6, s7
                  lui          t4, 169907
                  nop
                  and          s1, ra, a7
                  xori         t1, s2, -762
                  beq          s4, t3, 1430f
                  and          t0, s11, t4
                  slt          t3, a7, s5
1413:             sub          s9, a5, gp
                  auipc        s5, 797385
                  lui          s11, 673884
1416:             blt          a4, s10, 1430f
                  nop
                  sra          s11, s3, t6
                  sll          t3, t1, a3
                  lui          s5, 558075
                  beq          tp, t5, 1423f
                  bne          s0, s9, 1426f
1423:             bge          t1, sp, 1442f
                  and          t3, a6, sp
                  srai         a1, t1, 5
1426:             sub          a4, t5, a1
                  sltiu        a1, a3, 1991
                  addi         s3, t6, 1858
                  add          t0, zero, t4
1430:             srai         s4, s11, 23
                  or           t3, s7, a7
                  auipc        a3, 460161
                  sra          gp, a4, s9
                  and          zero, s2, a6
                  nop
                  slli         s2, s1, 20
                  ori          ra, a5, 1436
                  beq          a7, s9, 1456f
                  add          t0, t4, s7
                  or           s8, a0, s3
                  sltu         t4, s9, s6
1442:             or           t3, t2, s10
                  nop
                  beq          s11, a0, 1447f
                  slt          t3, t4, t6
sub_3_20:         jal          a3, 26f
0:                jal          ra, 16f
1:                jal          ra, 20f
2:                jal          ra, 14f
3:                jal          ra, 10f
4:                jal          sp, 22f
5:                jal          t1, 0b
6:                jal          t1, 2b
7:                jal          s11, 25f
8:                jal          t6, 4b
9:                jal          ra, 5b
10:               jal          tp, 15f
11:               jal          a2, 28f
12:               jal          ra, 18f
13:               jal          t0, 23f
14:               jal          t0, 30f
15:               jal          ra, 8b
16:               jal          s9, 19f
17:               jal          t1, 3b
18:               jal          ra, 6b
19:               jal          s6, 17b
20:               jal          a1, 9b
21:               jal          t1, 13b
22:               jal          ra, 12b
23:               jal          ra, 27f
24:               jal          ra, 29f
25:               jal          a4, 21b
26:               jal          ra, 24b
27:               jal          ra, 11b
28:               jal          a4, 1b
29:               jal          t5, 7b
30:               slt          a0, a1, zero
                  srl          zero, s3, s9
1447:             ori          s8, a6, 1280
                  add          s7, tp, a6
                  andi         s7, a7, -1485
                  slli         a0, s0, 3
                  or           a1, tp, s4
                  and          s3, s2, t1
                  bge          a2, zero, 1454f
1454:             sltu         s9, s11, gp
                  addi         s5, gp, -798
1456:             sra          a6, a1, sp
                  sltu         t5, s2, s8
                  blt          ra, s4, 1471f
                  xor          t6, s6, s3
                  auipc        tp, 1018208
                  or           a1, t0, t2
                  srli         gp, tp, 13
                  xor          t0, s6, s6
                  xori         s11, s0, 532
                  bge          s5, t2, 1479f
                  bgeu         a7, a4, 1474f
                  andi         t6, s11, 937
                  srli         s0, t6, 22
                  add          a0, s3, gp
                  srli         a5, s0, 18
1471:             srai         ra, s8, 27
                  blt          s3, gp, 1478f
                  xor          s1, s2, a0
1474:             xor          s1, s4, t0
                  nop
                  lui          a6, 11752
                  slt          a4, t6, a4
1478:             srai         s2, ra, 3
1479:             xor          a0, a0, a1
                  auipc        sp, 138778
                  or           s6, s5, a1
                  nop
                  xor          a3, a0, a4
                  ori          a6, ra, -1457
                  add          zero, a7, s5
                  xor          a4, t4, s7
                  srl          a2, sp, s2
                  bne          s9, s1, 1506f
                  sub          s1, a2, s5
                  xor          s6, zero, t6
                  nop
                  xori         s5, a4, 1311
                  xor          s2, t1, a2
                  xori         a5, s4, 48
                  nop
                  add          a3, s0, t1
                  add          s5, t6, s5
                  or           tp, s5, a0
                  auipc        s8, 664315
                  addi         tp, a1, 1351
                  nop
                  xori         t1, s6, -1454
                  auipc        t1, 928484
                  add          gp, s7, a0
                  bge          a0, sp, 1515f
1506:             srl          s0, t4, t1
                  nop
                  andi         a1, tp, -742
                  slt          sp, s5, a6
                  bltu         s10, s11, 1522f
                  bge          t1, a2, 1527f
                  xori         t1, a3, 518
                  beq          a0, s6, 1523f
                  sub          s11, zero, s0
1515:             xori         ra, s6, 1313
                  bge          zero, t1, 1519f
                  nop
                  bge          t6, a2, 1534f
1519:             addi         ra, s10, 465
                  sra          t1, s2, t3
                  xor          s8, t5, s7
1522:             bgeu         ra, a2, 1534f
1523:             slt          t5, s6, a1
                  sra          a5, a6, a6
                  bgeu         a0, a4, 1539f
                  bgeu         s6, a1, 1546f
1527:             andi         s4, zero, -1065
                  slti         a5, zero, -748
                  add          s7, a1, s2
                  bne          t5, a6, 1534f
                  bgeu         s7, a2, 1542f
                  lui          t4, 872407
                  sll          s4, t6, a1
1534:             bge          s4, t4, 1542f
                  sltiu        zero, s10, -56
                  xor          t1, s9, t2
                  sra          t3, s2, s2
                  sltu         a6, s5, s6
1539:             srai         zero, s10, 15
                  beq          t2, a1, 1551f
                  srli         a1, s7, 8
1542:             addi         s6, tp, 1232
                  sltiu        s0, s7, -696
                  slt          t6, s8, a3
                  sll          s1, s1, t1
1546:             slli         t1, t4, 6
                  bltu         a2, s10, 1551f
                  and          tp, tp, a6
                  ori          s3, tp, 1398
                  add          t6, t6, t6
1551:             auipc        a1, 1045606
                  or           s1, s7, a3
                  sll          t4, ra, s3
                  srli         a4, tp, 17
                  addi         t3, t6, -858
                  lw           a3, 4(t2)
                  xor          s0, ra, a7
                  xor          a0, t2, a1
                  sltiu        t1, s5, -206
                  add          a6, tp, a7
                  addi         t2, t2, 64
                  xori         s6, a0, 982
                  sll          a5, s6, s1
2288:             addi x16, x13, 1
2288:             jalr x16, x16, 0
sub_2:            sltu         a4, tp, t3
                  addi         t2, t2, -36
                  srl          t5, zero, t6
                  slt          sp, a7, s11
                  sltiu        s11, s8, 924
                  sw           a3, 4(t2)
                  srli         s6, t1, 24
                  sltu         s8, s9, s11
                  srl          s2, s5, t1
sub_2_0:          jal          a3, 12f
0:                jal          s4, 4f
1:                jal          ra, 18f
2:                jal          sp, 9f
3:                jal          ra, 15f
4:                jal          ra, 3b
5:                jal          ra, 1b
6:                jal          s0, 7f
7:                jal          t1, 11f
8:                jal          ra, 16f
9:                jal          t1, 13f
10:               jal          t1, 21f
11:               jal          ra, 2b
12:               jal          t0, 5b
13:               jal          t1, 8b
14:               jal          ra, 10b
15:               jal          t1, 17f
16:               jal          ra, 19f
17:               jal          s2, 6b
18:               jal          ra, 20f
19:               jal          ra, 14b
20:               jal          tp, 0b
21:               auipc        s3, 820715
sub_2_11:         jal          a3, 4f
0:                jal          s7, 1f
1:                jal          a4, 13f
2:                jal          tp, 3f
3:                jal          t0, 11f
4:                jal          sp, 9f
5:                jal          ra, 2b
6:                jal          ra, 10f
7:                jal          t1, 12f
8:                jal          t1, 7b
9:                jal          ra, 8b
10:               jal          ra, 0b
11:               jal          ra, 14f
12:               jal          t1, 6b
13:               jal          t1, 5b
14:               auipc        a1, 295560
sub_2_4:          jal          a3, 11f
0:                jal          t1, 8f
1:                jal          ra, 4f
2:                jal          ra, 7f
3:                jal          ra, 10f
4:                jal          ra, 6f
5:                jal          a0, 2b
6:                jal          ra, 0b
7:                jal          ra, 3b
8:                jal          sp, 12f
9:                jal          ra, 5b
10:               jal          ra, 1b
11:               jal          t1, 9b
12:               slli         s6, gp, 14
sub_2_1:          jal          a3, 3f
0:                jal          ra, 6f
1:                jal          ra, 5f
2:                jal          sp, 7f
3:                jal          s9, 8f
4:                jal          ra, 12f
5:                jal          a0, 10f
6:                jal          ra, 1b
7:                jal          ra, 9f
8:                jal          tp, 11f
9:                jal          ra, 4b
10:               jal          t1, 2b
11:               jal          t1, 0b
12:               sltiu        s5, s3, -1100
sub_2_2:          jal          a3, 8f
0:                jal          t1, 11f
1:                jal          t1, 6f
2:                jal          ra, 4f
3:                jal          a3, 0b
4:                jal          t1, 5f
5:                jal          ra, 12f
6:                jal          ra, 10f
7:                jal          gp, 9f
8:                jal          t6, 1b
9:                jal          ra, 3b
10:               jal          sp, 2b
11:               jal          ra, 13f
12:               jal          ra, 7b
13:               sll          ra, a6, a6
sub_2_13:         jal          a3, 2f
0:                jal          t1, 6f
1:                jal          a5, 0b
2:                jal          ra, 7f
3:                jal          ra, 16f
4:                jal          ra, 10f
5:                jal          ra, 14f
6:                jal          ra, 12f
7:                jal          ra, 15f
8:                jal          tp, 1b
9:                jal          ra, 13f
10:               jal          t1, 5b
11:               jal          a6, 4b
12:               jal          ra, 11b
13:               jal          ra, 3b
14:               jal          t1, 9b
15:               jal          ra, 8b
16:               add          s0, s5, s7
sub_2_7:          jal          a3, 2f
0:                jal          s1, 26f
1:                jal          ra, 6f
2:                jal          s0, 12f
3:                jal          ra, 10f
4:                jal          ra, 5f
5:                jal          t1, 15f
6:                jal          gp, 13f
7:                jal          ra, 20f
8:                jal          a5, 1b
9:                jal          ra, 25f
10:               jal          s4, 9b
11:               jal          s6, 0b
12:               jal          ra, 17f
13:               jal          ra, 28f
14:               jal          ra, 18f
15:               jal          s6, 14b
16:               jal          ra, 27f
17:               jal          ra, 3b
18:               jal          ra, 7b
19:               jal          ra, 23f
20:               jal          ra, 16b
21:               jal          ra, 19b
22:               jal          ra, 11b
23:               jal          s6, 22b
24:               jal          t1, 21b
25:               jal          s2, 24b
26:               jal          a6, 4b
27:               jal          s6, 8b
28:               lui          a6, 720862
sub_2_3:          jal          a3, 19f
0:                jal          ra, 9f
1:                jal          ra, 17f
2:                jal          ra, 16f
3:                jal          s11, 20f
4:                jal          ra, 13f
5:                jal          ra, 12f
6:                jal          ra, 18f
7:                jal          t1, 2b
8:                jal          t1, 23f
9:                jal          s5, 7b
10:               jal          t1, 15f
11:               jal          ra, 21f
12:               jal          ra, 4b
13:               jal          a5, 3b
14:               jal          ra, 1b
15:               jal          ra, 11b
16:               jal          a1, 5b
17:               jal          sp, 22f
18:               jal          ra, 14b
19:               jal          t1, 0b
20:               jal          ra, 10b
21:               jal          ra, 6b
22:               jal          ra, 8b
23:               srli         a2, a5, 0
sub_2_8:          jal          a3, 0f
0:                jal          ra, 11f
1:                jal          t1, 4f
2:                jal          ra, 10f
3:                jal          ra, 2b
4:                jal          t1, 16f
5:                jal          tp, 18f
6:                jal          t1, 3b
7:                jal          ra, 13f
8:                jal          ra, 12f
9:                jal          sp, 15f
10:               jal          t1, 19f
11:               jal          s5, 8b
12:               jal          ra, 17f
13:               jal          ra, 5b
14:               jal          ra, 9b
15:               jal          t1, 6b
16:               jal          t1, 14b
17:               jal          t1, 7b
18:               jal          ra, 1b
19:               nop
sub_2_10:         jal          a3, 26f
0:                jal          ra, 21f
1:                jal          s0, 28f
2:                jal          t1, 30f
3:                jal          a3, 6f
4:                jal          ra, 16f
5:                jal          a5, 27f
6:                jal          ra, 9f
7:                jal          ra, 1b
8:                jal          ra, 24f
9:                jal          t1, 22f
10:               jal          ra, 7b
11:               jal          ra, 23f
12:               jal          ra, 0b
13:               jal          t1, 19f
14:               jal          t1, 17f
15:               jal          s9, 11b
16:               jal          tp, 18f
17:               jal          tp, 15b
18:               jal          ra, 10b
19:               jal          ra, 29f
20:               jal          s3, 8b
21:               jal          ra, 14b
22:               jal          t3, 2b
23:               jal          t1, 25f
24:               jal          ra, 4b
25:               jal          ra, 13b
26:               jal          t1, 20b
27:               jal          gp, 12b
28:               jal          ra, 5b
29:               jal          ra, 3b
30:               sra          a1, a5, a4
sub_2_16:         jal          a3, 16f
0:                jal          ra, 12f
1:                jal          t1, 5f
2:                jal          ra, 0b
3:                jal          ra, 7f
4:                jal          ra, 18f
5:                jal          t0, 4b
6:                jal          t1, 3b
7:                jal          ra, 2b
8:                jal          t0, 1b
9:                jal          a3, 11f
10:               jal          ra, 15f
11:               jal          t1, 8b
12:               jal          sp, 10b
13:               jal          ra, 9b
14:               jal          sp, 13b
15:               jal          ra, 19f
16:               jal          t1, 14b
17:               jal          ra, 6b
18:               jal          ra, 17b
19:               xori         s1, a0, 514
sub_2_9:          jal          a3, 7f
0:                jal          sp, 2f
1:                jal          ra, 17f
2:                jal          t1, 12f
3:                jal          t4, 18f
4:                jal          t1, 13f
5:                jal          ra, 8f
6:                jal          s0, 4b
7:                jal          ra, 9f
8:                jal          a2, 20f
9:                jal          ra, 0b
10:               jal          t6, 16f
11:               jal          sp, 5b
12:               jal          ra, 1b
13:               jal          ra, 15f
14:               jal          ra, 10b
15:               jal          t1, 11b
16:               jal          ra, 19f
17:               jal          ra, 14b
18:               jal          ra, 6b
19:               jal          ra, 3b
20:               ori          s7, t3, -1708
                  sub          t4, t1, a5
                  sub          t5, a6, s7
sub_2_14:         jal          a3, 11f
0:                jal          ra, 7f
1:                jal          t1, 2f
2:                jal          tp, 26f
3:                jal          ra, 4f
4:                jal          ra, 19f
5:                jal          ra, 15f
6:                jal          ra, 22f
7:                jal          ra, 13f
8:                jal          ra, 20f
9:                jal          a5, 12f
10:               jal          t6, 3b
11:               jal          ra, 8b
12:               jal          ra, 0b
13:               jal          t1, 10b
14:               jal          ra, 17f
15:               jal          tp, 16f
16:               jal          gp, 6b
17:               jal          ra, 28f
18:               jal          t1, 27f
19:               jal          ra, 14b
20:               jal          t1, 1b
21:               jal          ra, 18b
22:               jal          ra, 25f
23:               jal          ra, 24f
24:               jal          ra, 5b
25:               jal          a2, 21b
26:               jal          ra, 23b
27:               jal          t6, 9b
28:               srai         s2, a6, 16
                  srli         a5, a6, 1
                  srl          t1, zero, s2
                  add          a3, t1, s4
                  xor          t4, s5, s1
                  bgeu         zero, t2, 17f
                  slt          t6, ra, gp
                  nop
                  xori         a2, s3, 530
                  slti         t0, s1, -1751
                  beq          zero, zero, 27f
                  auipc        s9, 610808
                  or           t4, gp, a0
                  srl          s5, s5, a7
                  auipc        s4, 668702
                  nop
17:               and          s2, t6, a0
                  slt          t3, s5, t3
                  slli         s3, a5, 8
                  srl          s0, a2, t5
                  slti         zero, t3, -789
                  srli         s7, zero, 15
                  add          s11, t4, t4
                  sra          a5, t6, a3
                  xori         zero, t2, -1832
                  sll          s7, s9, a5
27:               srai         a6, a3, 19
                  lui          a5, 82570
                  sltu         s8, s1, t0
                  beq          a5, s0, 49f
                  and          t6, s5, s5
                  sltiu        a2, s11, -579
                  bge          a6, t2, 39f
                  sub          s6, a2, t4
                  slti         gp, ra, -2016
                  sll          s11, t6, ra
                  srl          t0, zero, a0
                  sra          sp, gp, sp
39:               slti         t5, s10, -765
                  lui          zero, 966393
                  srli         sp, t1, 19
                  sub          s11, a1, s3
                  sub          s1, s2, t2
                  beq          t5, s3, 47f
                  sub          ra, tp, s8
                  xor          s6, s5, a5
47:               sll          gp, tp, a2
                  sltu         s0, sp, a4
49:               sub          s6, s8, zero
                  slti         s3, a3, 358
                  bgeu         a3, a5, 62f
                  and          t5, a0, s6
                  addi         s4, s4, 1844
                  srl          t3, s10, s10
                  sub          s3, t2, a3
                  and          s6, s6, t6
                  bge          s6, a6, 64f
                  sll          a6, tp, a3
                  sub          s7, s3, a4
                  lui          s11, 798537
                  sra          a1, s7, ra
62:               bge          s0, s11, 76f
                  beq          t0, s8, 72f
64:               andi         t0, s7, -1878
                  srai         a5, a0, 12
                  sub          t5, t6, s4
                  xori         a0, t3, 1039
                  nop
                  or           a5, t1, a4
                  and          s5, a0, s11
                  sll          s7, t2, a3
72:               auipc        t5, 879752
                  srai         tp, a4, 26
                  or           s5, a5, s2
                  add          a4, a0, t6
76:               bne          a6, s2, 82f
                  or           s4, a7, t6
                  sra          t3, t0, t5
                  sltu         s1, a5, a1
                  addi         zero, t1, -283
                  srli         s5, s11, 15
82:               sltu         a6, a0, s6
                  addi         ra, s1, -942
                  sltu         a0, s10, s6
                  slti         s5, t3, 1731
                  lui          gp, 719460
                  add          s8, t5, t1
                  bne          t1, a2, 103f
                  auipc        s8, 841965
                  slli         sp, sp, 29
                  xor          s11, s4, ra
                  nop
                  sra          tp, a5, s8
                  srl          s8, sp, t2
                  bgeu         sp, s6, 113f
                  bgeu         ra, s11, 113f
                  srl          s2, s8, s11
                  sub          tp, s1, a6
                  slt          s5, sp, s5
                  andi         t3, a3, 16
                  srl          t1, t3, s11
                  slli         s0, t3, 14
103:              blt          s10, t0, 107f
                  bgeu         s1, zero, 122f
                  srli         s2, tp, 20
                  lui          s6, 200707
107:              sltu         a4, a7, s6
                  slt          s0, t5, a1
                  sub          s0, s1, s3
                  bne          s9, t4, 116f
                  xor          a6, s3, a6
                  addi         t4, a7, 182
113:              sltiu        a4, t0, 879
                  bge          s6, a5, 121f
                  srai         s9, a7, 21
116:              srl          a3, t2, a7
                  srli         s5, s4, 25
                  auipc        s11, 597579
                  addi         s5, s4, 967
                  bgeu         sp, zero, 130f
121:              slt          s3, t6, a7
122:              beq          a5, s6, 134f
                  sltu         s0, t2, s6
                  addi         s6, t5, -1980
                  slt          a3, sp, a1
                  addi         t4, a1, -805
                  sra          a2, tp, s4
                  auipc        a5, 573577
                  nop
130:              bgeu         gp, a3, 143f
                  nop
                  sub          s1, zero, t6
                  or           gp, s3, t2
134:              srai         tp, a0, 15
                  xori         t0, a3, 1959
                  auipc        t5, 795479
                  bne          s3, s0, 153f
                  or           a4, a3, t0
                  slt          a4, a5, s11
                  bltu         s0, a6, 156f
                  andi         a3, t3, 1886
                  slti         s9, t3, 1861
143:              srai         s6, t6, 26
                  bgeu         s6, t2, 162f
                  lui          s0, 280760
                  sltu         s9, t4, a2
                  bne          a5, t2, 157f
                  srli         gp, s5, 1
                  sub          sp, a1, t4
                  add          sp, s6, a3
                  and          s0, sp, s0
                  add          t6, s4, s6
153:              xori         t6, t4, 1594
                  ori          s5, s1, -1065
                  bge          s8, tp, 166f
156:              sltiu        zero, t5, 1469
157:              slt          s9, t5, a2
                  srai         s7, s8, 20
                  sll          a1, t5, a3
                  lui          t5, 41795
                  srai         s6, t5, 24
162:              sub          s4, a4, t6
                  and          ra, s8, s7
                  srli         tp, t3, 16
                  bltu         s4, s6, 166f
166:              bge          t6, a6, 185f
                  bltu         s2, zero, 186f
                  sra          ra, a6, a0
                  srai         s2, s3, 6
                  slti         t3, s10, -1505
                  sra          s2, s8, gp
                  bge          a1, s8, 180f
                  sll          s5, t6, a7
                  blt          s3, sp, 175f
175:              addi         a6, a6, -284
                  slt          a2, a2, a5
                  nop
                  xori         sp, s11, 635
                  lui          s8, 544068
180:              blt          a5, s6, 187f
                  or           a5, zero, zero
                  bgeu         a7, gp, 188f
                  lui          tp, 539629
                  bltu         t1, t6, 202f
185:              xor          a3, sp, s6
186:              sll          a4, s8, sp
187:              bltu         t4, s10, 204f
188:              nop
                  sub          s11, t3, s11
                  sll          gp, sp, t1
                  slti         a4, t4, 945
                  or           a5, t6, s1
                  sll          s0, s7, s6
                  nop
                  add          t0, t4, t1
                  bgeu         t0, s1, 205f
                  sll          t5, s0, s11
                  xori         t3, t1, -1071
                  sll          s7, s2, a0
                  sll          zero, s0, s7
                  add          s9, s11, t1
202:              nop
                  ori          s11, s9, 321
204:              sltiu        s11, sp, 1388
205:              slt          s11, s9, s10
                  bge          tp, tp, 213f
                  sll          a0, zero, t3
                  bgeu         s3, a6, 216f
                  srl          sp, ra, zero
                  slt          tp, s10, tp
                  blt          ra, t0, 214f
                  ori          s8, t0, -704
213:              or           a3, s3, a0
214:              sll          s7, a6, s1
                  ori          a3, s0, -1202
216:              nop
                  srai         a4, s1, 5
                  add          t6, s0, a2
                  slli         tp, ra, 15
                  srai         gp, s7, 11
                  sltu         a0, a2, s11
                  andi         t1, a3, -1032
                  nop
                  auipc        a4, 222398
                  or           a2, t5, t0
                  sll          s7, tp, a2
                  srli         s7, a3, 31
                  or           s5, a1, s4
                  bltu         t6, a7, 239f
                  sll          a4, s9, s7
                  slti         a1, s3, 432
                  beq          tp, s0, 236f
                  ori          ra, a4, -496
                  bgeu         t4, t6, 240f
                  xor          s0, s4, sp
236:              xor          s11, zero, gp
                  ori          t6, s0, -857
                  xori         t3, s0, -1118
239:              sltu         zero, t3, s9
240:              sll          zero, a5, t1
                  or           t3, sp, a0
                  bge          s7, s1, 260f
                  slli         s4, a0, 23
                  bne          zero, s10, 263f
                  nop
                  bgeu         a7, s7, 262f
                  srl          s5, a0, zero
                  srl          s2, s6, tp
                  lui          a0, 658034
                  slli         a1, s6, 31
                  andi         s2, t0, -373
                  and          t6, s9, t0
                  auipc        t5, 130609
                  srl          s11, s11, a3
                  blt          s6, t2, 266f
                  xori         a6, s7, -1645
                  blt          a0, a6, 271f
                  bgeu         t5, s5, 276f
                  slti         s4, t6, -149
260:              bge          s9, a4, 276f
                  srli         a6, s8, 2
262:              xor          s1, ra, a6
263:              sltu         a3, t0, a6
                  add          a4, ra, s8
                  add          sp, s3, a6
266:              auipc        t6, 643101
                  lui          t1, 583118
                  sra          a0, a3, s8
                  sra          gp, s11, s6
                  sll          s2, s9, t6
271:              blt          s4, a4, 281f
                  nop
                  sltiu        s5, a0, -937
                  sltiu        s8, t6, 1891
                  sltu         sp, tp, s4
276:              addi         s11, t5, -1669
                  slti         a1, s5, -940
                  or           s4, s9, t4
                  nop
                  auipc        a2, 214319
281:              srli         a6, s9, 22
                  ori          t6, a3, -1855
                  xor          a3, s10, tp
                  sltiu        t6, s8, -660
                  blt          s4, t0, 296f
                  slt          s5, a0, s4
                  blt          s5, s5, 293f
                  sltu         s2, t4, t4
                  sll          t4, s11, s8
                  slli         tp, s6, 4
                  sll          a3, s0, s7
                  bne          a2, s9, 311f
293:              and          a2, a6, t3
                  srli         a0, ra, 22
                  xori         sp, a7, -548
296:              sll          a6, ra, s8
                  slti         s7, s7, 186
                  auipc        s9, 491592
                  beq          t0, s9, 312f
                  xori         s8, s8, -2034
                  slti         s7, zero, 1976
                  and          tp, a0, s0
                  srai         a3, s9, 26
                  andi         s8, gp, 2020
                  auipc        sp, 306030
                  slt          a4, a0, s8
                  bgeu         a6, s9, 326f
                  xori         zero, a2, 1210
                  andi         a3, s8, -1056
                  slti         a3, a2, -1967
311:              bgeu         sp, t4, 322f
312:              sll          s6, s10, s7
                  srl          s2, s2, a4
                  slti         s0, s8, 829
                  or           zero, a6, tp
                  sltu         a5, s4, a7
                  blt          t3, s0, 329f
                  sra          a2, s1, s2
                  sltu         a4, s11, t1
                  bgeu         s4, s8, 321f
321:              sra          s3, s0, s11
322:              auipc        s2, 648810
                  sltiu        s11, a1, -1456
                  bltu         a3, a5, 325f
325:              sltiu        a4, t3, -1135
326:              sltiu        a2, a7, -168
                  slti         t1, zero, -662
                  blt          t6, s3, 344f
329:              bgeu         a4, zero, 344f
                  sub          a3, a7, a2
                  sub          t6, t1, a2
                  slli         s4, sp, 26
                  srl          a1, t3, t4
                  srai         a1, a4, 22
                  bgeu         sp, a7, 344f
                  lui          a3, 545545
                  nop
                  srai         a5, a7, 16
                  lui          s11, 531651
                  xor          t6, s3, s7
                  sll          tp, t5, s3
                  slti         a3, t3, -1979
                  auipc        t6, 944052
344:              andi         t4, s1, 1462
                  sub          a1, gp, t1
                  srai         ra, s3, 11
                  srl          tp, s7, s4
                  or           t1, zero, t3
                  or           t4, t1, s10
                  bne          s10, ra, 368f
                  bgeu         tp, a7, 358f
                  or           s7, t5, s2
                  add          ra, s10, s3
                  ori          t0, t5, 470
                  add          a6, s4, t4
                  or           a6, a0, s11
                  sll          t0, t5, s4
358:              andi         s7, t1, -713
                  blt          s9, s11, 377f
                  slti         t4, s8, -494
                  lui          s11, 452764
                  srl          tp, s1, t0
                  sltiu        t0, t3, -1940
                  addi         a3, s3, 1472
                  sll          s9, sp, a1
                  sra          s6, t6, ra
                  xor          zero, t3, a5
368:              add          s11, s3, t3
                  bgeu         s3, s4, 382f
                  sra          ra, a6, s10
                  sltiu        s3, t6, 696
                  srai         t3, t1, 19
                  bltu         s7, ra, 392f
                  sltu         a3, a1, t0
                  xori         s3, a3, 870
                  ori          sp, s9, 1563
377:              bgeu         s3, s1, 385f
                  nop
                  bgeu         t4, a6, 396f
                  sub          s1, s7, a5
                  slt          sp, s6, t2
382:              blt          s1, a1, 386f
                  bltu         s1, a2, 394f
                  sra          s8, sp, t0
385:              srl          s3, s11, gp
386:              andi         s2, t3, 1437
                  nop
                  bgeu         s7, a5, 400f
                  sra          t6, s6, t6
                  ori          a6, a0, 35
                  sltiu        s0, s0, -635
392:              srl          t6, a3, a7
                  beq          s10, t5, 412f
394:              bge          s1, a1, 404f
sub_2_15:         jal          a3, 14f
0:                jal          ra, 16f
1:                jal          ra, 8f
2:                jal          ra, 13f
3:                jal          t1, 5f
4:                jal          ra, 11f
5:                jal          t1, 1b
6:                jal          t0, 3b
7:                jal          tp, 12f
8:                jal          ra, 17f
9:                jal          a6, 15f
10:               jal          ra, 7b
11:               jal          ra, 9b
12:               jal          ra, 2b
13:               jal          s9, 0b
14:               jal          ra, 4b
15:               jal          ra, 10b
16:               jal          t1, 6b
17:               srai         t5, a1, 11
                  blt          sp, zero, 406f
396:              sll          t4, t2, s4
                  auipc        s3, 484404
                  bgeu         tp, ra, 401f
                  and          t3, s10, a6
400:              blt          a0, s4, 416f
401:              srl          s9, zero, t2
                  bne          t2, t3, 416f
                  sub          a2, sp, s4
404:              sub          s7, a3, a2
                  srli         a3, t6, 11
406:              auipc        t5, 61538
                  bltu         t1, a5, 418f
                  sll          s7, t4, s3
                  addi         tp, s7, -289
                  add          s6, sp, s10
                  sll          gp, t5, s8
412:              sltu         sp, s6, gp
                  add          a5, a0, s9
                  slli         gp, s4, 24
                  srli         s3, tp, 12
416:              srli         a0, ra, 24
                  sltu         t5, s11, s9
418:              or           a5, t5, a3
                  or           zero, s1, s4
                  slli         gp, t5, 0
                  xori         a2, s10, 353
                  sll          a4, a2, tp
                  addi         a3, s9, -1063
                  srai         a3, s7, 12
                  bge          a4, t6, 444f
                  add          s11, s11, s7
                  addi         t0, s1, -1010
                  nop
                  bge          a2, tp, 445f
                  or           s11, s0, s4
                  lui          ra, 575791
                  andi         a2, tp, -1736
                  sltiu        gp, a7, 1783
                  auipc        tp, 323869
                  xori         s4, a4, -825
                  beq          s10, s5, 446f
                  slli         zero, t4, 2
                  xori         t5, ra, -546
                  srli         s2, s4, 8
                  lui          a4, 55786
                  ori          a5, t3, 1953
                  add          a2, s4, s4
                  bgeu         t3, s4, 444f
444:              xori         a6, t1, -1674
445:              sra          s3, s4, t3
446:              bne          s0, a3, 447f
447:              addi         s9, s6, 1240
                  bne          s7, ra, 464f
                  or           t4, t0, a0
                  bgeu         a1, a2, 468f
                  sltiu        s3, s8, -1720
                  and          s4, s7, s4
                  add          a0, s1, zero
                  andi         a3, s0, 1365
                  sltu         s1, a4, t2
                  beq          a4, tp, 462f
                  bge          s9, t0, 463f
                  auipc        s9, 296596
                  sll          s4, s8, s9
                  bge          s7, a2, 466f
                  slt          s6, s9, t4
462:              sltu         s9, a2, t5
463:              xor          s11, s5, t6
464:              beq          s0, a0, 471f
                  sltu         s1, gp, t3
466:              addi         t3, ra, -66
                  addi         s2, s5, 1948
468:              srai         tp, a4, 17
                  bltu         a4, gp, 484f
                  bgeu         zero, a5, 483f
471:              sltu         gp, s4, a2
                  bltu         tp, s6, 491f
                  beq          a1, s3, 484f
sub_2_6:          jal          a3, 21f
0:                jal          t1, 16f
1:                jal          ra, 13f
2:                jal          ra, 19f
3:                jal          s7, 11f
4:                jal          ra, 17f
5:                jal          ra, 8f
6:                jal          ra, 7f
7:                jal          t1, 20f
8:                jal          ra, 18f
9:                jal          ra, 3b
10:               jal          t1, 5b
11:               jal          s8, 10b
12:               jal          s2, 14f
13:               jal          t1, 9b
14:               jal          ra, 4b
15:               jal          t1, 6b
16:               jal          ra, 2b
17:               jal          s5, 1b
18:               jal          a0, 0b
19:               jal          t3, 22f
20:               jal          sp, 12b
21:               jal          ra, 15b
22:               xori         s0, s4, 20
                  beq          gp, s11, 480f
                  ori          s0, t2, 255
                  beq          s9, a7, 488f
                  slli         zero, t6, 21
                  srl          a4, a5, gp
                  bge          s2, t0, 490f
480:              or           t0, zero, a7
                  andi         a3, s7, 1336
                  add          a6, ra, a4
483:              sub          s0, a0, gp
484:              lui          zero, 959303
                  xor          s6, tp, a5
                  add          s9, t5, s11
                  or           a2, t2, a7
488:              bgeu         s10, a4, 507f
                  slt          ra, a7, s4
490:              lui          a2, 669347
491:              bgeu         t3, s5, 498f
                  lui          a5, 986847
                  sltu         ra, s1, a1
                  addi         zero, s1, -375
                  or           s7, t0, a3
                  and          t3, a1, gp
                  xori         s11, s1, 689
498:              slli         t0, gp, 23
                  sll          zero, s9, gp
                  slt          s5, s6, s4
                  and          a3, a7, t5
                  and          ra, a5, s3
                  andi         s6, s1, -257
                  and          t5, t2, a1
                  or           a4, s7, t5
                  slli         s7, t6, 26
507:              bltu         s2, a7, 517f
                  auipc        zero, 1018821
                  slli         s8, t3, 5
                  nop
                  srl          a5, s3, s1
                  srai         s1, t1, 4
                  bge          t5, s1, 529f
                  srli         s6, s11, 31
                  slti         t4, s8, -1405
                  xor          s7, t5, s2
517:              ori          s6, a5, 1573
                  bgeu         a5, t2, 536f
                  lui          tp, 380044
                  and          t6, a2, t2
                  beq          t1, a4, 539f
                  srai         s6, ra, 30
                  bltu         tp, a1, 542f
                  sra          s5, s3, sp
                  sub          a6, sp, s2
                  add          a1, a6, gp
                  blt          t4, s1, 535f
                  nop
529:              sub          tp, s10, t2
                  lui          ra, 439590
                  bge          t4, gp, 532f
532:              bge          s3, a5, 549f
                  blt          s9, s2, 549f
                  sub          s5, s3, a3
535:              slti         a4, sp, 1362
536:              bne          s3, s6, 550f
                  bltu         s1, s1, 553f
                  blt          s11, s11, 541f
539:              srl          t3, tp, t6
                  bge          s10, s6, 551f
541:              addi         a1, t4, -862
542:              slt          a1, a1, s7
                  bne          s10, t6, 549f
                  slli         a3, s10, 7
                  sll          s0, s4, t0
                  srai         tp, a4, 22
                  bltu         s1, t2, 562f
                  sll          gp, t4, a7
549:              andi         s3, s3, -989
550:              sltu         tp, s5, tp
551:              srli         t3, t6, 18
                  sltiu        t6, t4, 886
553:              slti         t4, ra, -1247
                  bltu         s2, t4, 564f
                  nop
                  andi         t6, s2, -433
                  sub          s6, ra, a1
                  slti         a0, s8, 1957
                  auipc        a6, 939508
                  xor          a3, s5, s4
                  and          s4, tp, a2
562:              bgeu         s10, tp, 563f
563:              add          s2, a6, s4
564:              nop
                  addi         a6, s4, 1295
                  or           s0, zero, a2
                  xori         gp, t3, 882
                  andi         a0, a0, 1891
                  slli         a0, a4, 25
                  srai         s8, a5, 10
                  andi         s4, a1, -338
                  bgeu         gp, s6, 576f
                  andi         s7, t6, -778
                  ori          s0, s7, 1068
                  sltu         a2, zero, t4
576:              sub          a4, t5, a6
                  slli         gp, s0, 17
                  sltu         t5, t4, tp
                  ori          tp, s3, 1855
                  bgeu         a1, s8, 586f
                  sltu         a3, sp, s0
                  sltiu        a6, a6, 1842
                  blt          t0, s4, 592f
                  srli         s2, s7, 13
                  bge          s10, a6, 603f
586:              bge          s2, ra, 593f
                  addi         a2, s0, -3
                  sltu         s8, s4, ra
                  bne          s8, t6, 599f
                  sub          a0, t3, zero
                  addi         t6, s6, 232
592:              srai         s3, s5, 28
593:              add          t4, s5, s10
                  srl          a0, s3, s11
                  andi         s1, gp, -531
                  srli         s8, a4, 24
                  andi         tp, t3, -568
                  sltu         s2, s3, a7
599:              sltiu        s2, t4, 409
                  slli         t3, s10, 16
                  slti         s5, a6, -1945
                  sltiu        s3, a6, -1342
603:              bgeu         tp, s2, 622f
                  bltu         s8, gp, 617f
                  bge          ra, a3, 606f
606:              auipc        a1, 247303
                  bge          s7, a1, 614f
                  or           a1, s8, a5
                  slti         t0, a7, -1683
                  xori         s7, a0, -1235
                  srl          s11, s10, s5
                  or           t6, ra, gp
                  sll          a5, s5, zero
614:              slti         t0, sp, 935
                  lui          s5, 242062
                  lui          s3, 639007
617:              addi         s6, t1, 1021
                  xori         sp, s10, -902
                  xor          tp, s8, sp
                  and          s1, t5, s6
                  lui          s7, 754678
622:              addi         s2, s1, 1550
                  add          t4, a7, s9
                  slti         t4, a4, -1078
                  slt          a5, a2, s2
                  slti         zero, s11, -106
                  sll          ra, sp, a2
                  lui          s7, 186815
                  srai         a3, s6, 7
                  nop
                  lui          a1, 150555
                  auipc        t4, 519147
                  auipc        t6, 176504
                  slli         t4, gp, 20
                  srl          a6, t5, s9
                  ori          t5, t1, -749
                  xor          sp, s0, zero
                  srli         s0, t2, 21
                  srli         a3, sp, 23
                  slli         ra, a5, 5
                  bne          t5, gp, 657f
                  ori          t6, s7, -293
                  bltu         t3, t3, 662f
                  sll          t1, s1, a3
                  bge          s2, t0, 653f
                  srli         a0, gp, 18
                  ori          s3, a5, 1113
                  slli         s6, s7, 24
                  bltu         a5, s3, 665f
                  srli         t5, ra, 28
sub_2_12:         jal          a3, 18f
0:                jal          t1, 20f
1:                jal          t1, 25f
2:                jal          ra, 21f
3:                jal          sp, 19f
4:                jal          ra, 10f
5:                jal          t1, 15f
6:                jal          t1, 1b
7:                jal          ra, 24f
8:                jal          ra, 0b
9:                jal          t0, 11f
10:               jal          t0, 22f
11:               jal          ra, 6b
12:               jal          gp, 23f
13:               jal          ra, 12b
14:               jal          ra, 5b
15:               jal          ra, 3b
16:               jal          t1, 14b
17:               jal          t1, 2b
18:               jal          ra, 7b
19:               jal          ra, 4b
20:               jal          ra, 13b
21:               jal          ra, 8b
22:               jal          t1, 17b
23:               jal          ra, 9b
24:               jal          ra, 16b
25:               slli         zero, a7, 24
                  sltiu        ra, s4, 1672
                  slti         s11, a5, -1166
653:              blt          a0, t6, 657f
                  xor          s6, gp, s3
                  slli         sp, a0, 11
                  bne          s3, s6, 662f
657:              andi         t0, t6, -1479
                  slli         a2, a0, 20
                  sltu         sp, t5, t1
                  slt          a3, s4, a1
                  sll          t4, t3, s2
662:              sub          a1, a0, s1
                  addi         s6, zero, -378
                  slli         a3, sp, 10
665:              beq          s5, s7, 683f
                  sltiu        t5, s4, -1332
                  add          s5, sp, s0
                  slt          s1, s9, a7
                  nop
                  and          a3, ra, s11
                  bge          a4, s4, 688f
                  auipc        s7, 205906
                  blt          gp, t0, 688f
                  bltu         t5, tp, 693f
                  ori          s11, s1, -1287
                  sub          a6, zero, t3
                  bgeu         t5, s3, 688f
                  nop
                  xori         t3, t4, 356
                  sltiu        t1, a5, 411
                  srli         a3, s7, 9
                  sll          zero, s9, t6
683:              andi         s1, s0, 97
                  ori          t5, tp, 1741
                  andi         s0, s10, -1649
                  lui          a2, 1041299
                  blt          s1, s8, 701f
688:              bltu         a6, a5, 695f
                  blt          s2, s8, 705f
                  auipc        a1, 657564
                  bne          a6, s8, 702f
                  ori          t4, a5, 909
693:              slt          s6, s3, s9
                  sltiu        s5, s9, -2038
695:              nop
                  andi         s5, t1, -151
                  lui          t4, 764257
                  or           a5, sp, s4
                  lui          s7, 899978
                  srai         s0, s9, 9
701:              slt          t0, s2, a5
sub_2_17:         jal          a3, 0f
0:                jal          t1, 3f
1:                jal          t1, 7f
2:                jal          tp, 13f
3:                jal          s6, 5f
4:                jal          ra, 11f
5:                jal          s8, 2b
6:                jal          a0, 8f
7:                jal          ra, 16f
8:                jal          ra, 10f
9:                jal          ra, 1b
10:               jal          ra, 4b
11:               jal          t0, 15f
12:               jal          t3, 9b
13:               jal          t1, 6b
14:               jal          t0, 12b
15:               jal          t1, 14b
16:               slt          t0, a5, a2
702:              srl          a3, s4, s4
                  bltu         s6, a0, 709f
                  bge          t0, a0, 714f
705:              or           t6, ra, s4
                  andi         t6, t2, -439
                  srai         a5, t1, 1
                  slti         s6, t4, -635
709:              slli         s8, s6, 13
                  andi         a0, s4, -54
                  bne          a1, s5, 717f
                  and          s9, zero, a2
                  sltu         t6, a2, s6
714:              addi         a3, gp, -215
                  slti         a2, s10, -954
                  sub          s2, a5, t0
717:              bltu         s7, t0, 729f
                  srli         s7, s7, 9
                  slli         ra, a2, 1
                  auipc        t4, 3520
                  and          s4, a3, ra
                  sltiu        s9, a4, 23
                  ori          a6, a7, 1892
                  addi         s0, a5, -551
                  sltu         a6, s8, s6
                  xor          s9, s4, t0
                  slt          s5, s10, s1
                  sll          s0, a6, s8
729:              blt          t3, ra, 747f
                  sltu         t1, ra, gp
                  slt          s11, a3, a3
                  xor          s5, s7, t4
                  and          a6, ra, a2
                  bge          a2, t5, 743f
                  sll          s3, ra, t3
                  bge          t3, s8, 747f
                  auipc        s5, 782765
                  xor          a2, a0, s4
                  sll          a1, tp, t2
                  and          sp, t2, s2
                  andi         ra, s0, -425
                  sltu         s8, a3, s9
743:              add          a1, ra, gp
                  slti         s4, a3, 825
                  srl          a2, a1, a1
                  xor          a0, s10, a3
747:              blt          s1, t6, 748f
748:              bgeu         a6, s4, 766f
                  srli         s1, s7, 12
                  srl          t5, sp, a0
                  slt          a2, s4, t2
                  or           s8, a4, s8
                  bgeu         ra, s7, 756f
                  add          s8, s3, a3
                  or           s9, a4, t6
756:              sub          ra, a5, a1
                  srli         s8, a4, 13
                  slti         s11, sp, 702
                  slli         s3, s7, 25
                  sra          s9, a5, s7
                  bne          s3, s3, 764f
                  srl          sp, s6, t4
                  sltiu        a2, s3, 1500
764:              sll          s6, a1, s11
                  and          sp, t6, a2
766:              slli         a5, t6, 13
                  bge          a6, tp, 771f
                  sltiu        s8, a5, -498
                  andi         a0, a0, 1737
                  srl          gp, t1, t5
771:              sub          sp, gp, t3
                  srli         s9, t0, 6
                  addi         tp, a3, -12
                  lui          s11, 640169
                  auipc        s0, 200402
                  slli         sp, t5, 28
sub_2_5:          jal          a3, 9f
0:                jal          t1, 1f
1:                jal          ra, 2f
2:                jal          a4, 5f
3:                jal          ra, 0b
4:                jal          sp, 3b
5:                jal          ra, 6f
6:                jal          t1, 8f
7:                jal          s8, 10f
8:                jal          t4, 7b
9:                jal          ra, 4b
10:               addi         s6, t5, 889
                  blt          t0, t1, 793f
                  bltu         t5, a5, 796f
                  srl          s4, a0, ra
                  sub          s3, ra, s9
                  ori          t3, s1, 91
                  srai         a3, zero, 15
                  sub          a2, s1, t3
                  bltu         gp, a6, 799f
                  nop
                  nop
                  sub          a5, t0, a3
                  or           a4, t5, s5
                  sltiu        s4, gp, -299
                  slt          s11, ra, s10
                  bge          t6, s2, 801f
                  bne          t6, t1, 806f
793:              xor          sp, a2, gp
                  bge          t0, t5, 803f
                  blt          s8, s0, 803f
796:              sra          tp, tp, t3
                  and          s1, sp, sp
                  nop
799:              sltu         s6, s8, ra
                  bne          s11, s11, 811f
801:              bne          a1, tp, 807f
                  sltiu        s4, s4, -441
803:              addi         s4, t1, 1279
                  lui          a3, 821644
                  bgeu         t3, tp, 815f
806:              sltu         t3, a7, t6
807:              slt          s5, s3, a2
                  slt          a2, s9, s5
                  slti         tp, s4, -312
                  nop
811:              auipc        s11, 346849
                  nop
                  bgeu         gp, t6, 831f
                  blt          s1, t1, 827f
815:              xor          s11, t6, t0
                  sra          s2, s4, s2
                  addi         tp, s10, 280
                  srai         s9, a7, 21
                  and          s7, s11, s1
                  bltu         s0, s0, 827f
                  srli         zero, a5, 16
                  nop
                  xori         a6, sp, 1523
                  add          s7, ra, s8
                  sltiu        s0, a7, -565
                  auipc        s11, 440980
827:              auipc        tp, 943111
                  srli         t5, gp, 21
                  srli         a2, a1, 15
                  slli         tp, s7, 16
831:              lui          a4, 379769
                  auipc        s9, 603858
                  ori          t5, s5, 282
                  bltu         sp, gp, 840f
                  add          s6, ra, a2
                  nop
                  ori          a1, t2, 44
                  addi         s11, s10, -687
                  or           a6, zero, t3
840:              bgeu         s7, s8, 857f
                  slli         t3, t0, 19
                  sub          a5, zero, s2
                  bge          s1, a5, 862f
                  blt          s9, s1, 855f
                  slt          a1, s11, s3
                  ori          s3, s7, 1289
                  sra          t0, a0, t6
                  bne          a6, s1, 867f
                  andi         s6, t1, -1455
                  blt          t5, a0, 868f
                  add          t5, sp, s6
                  bgeu         t0, s11, 871f
                  srli         s7, a2, 24
                  beq          a2, s9, 865f
855:              bne          zero, s8, 862f
                  sll          a2, s6, t3
857:              srl          s2, sp, zero
                  slt          s5, a0, a1
                  beq          t2, a4, 871f
                  sra          t4, a0, a7
                  nop
862:              and          t6, s11, s8
                  slti         tp, t3, 1677
                  andi         a0, s11, 1094
865:              nop
                  bltu         s6, ra, 867f
867:              nop
868:              slt          t1, s3, s5
                  nop
                  auipc        s1, 868031
871:              slti         a2, t0, 1583
                  bge          s11, s2, 873f
873:              auipc        a5, 464778
                  slt          s6, s8, t6
                  xori         a3, a2, -1371
                  xor          gp, s9, a3
                  slli         s7, s5, 9
                  srl          t0, tp, s3
                  addi         a6, t2, -890
                  slli         a6, s2, 9
                  slt          s0, s6, a5
                  and          s9, s1, s1
                  srl          s7, s0, s11
                  sra          a2, t1, a1
                  auipc        ra, 118713
                  lui          a6, 104789
                  slti         s1, a6, 1848
                  slti         a1, t2, -957
                  nop
                  sltiu        a1, a0, 441
                  sltu         s7, gp, ra
                  sltiu        s6, a1, 1004
                  xor          tp, t3, t4
                  blt          s6, a2, 910f
                  srli         a1, ra, 27
                  srai         ra, t1, 16
                  add          s0, s0, a7
                  slti         ra, s4, -330
                  slli         a2, t4, 3
                  or           gp, s8, a2
                  srai         tp, a5, 29
                  and          s5, t5, a7
                  xor          a6, t1, s9
                  sll          t3, t0, a0
                  xor          ra, s3, s9
                  sltiu        a3, gp, -559
                  sub          s11, s6, s3
                  ori          a3, a5, 736
                  sll          t5, s5, s11
910:              srai         s11, s0, 30
                  sub          ra, s9, t0
                  blt          sp, a0, 918f
                  sltiu        s0, s9, -1495
                  sll          t1, s7, s5
                  or           s9, t0, sp
                  bgeu         a7, t6, 932f
                  sll          a2, a4, t6
918:              xori         s9, sp, 1276
                  beq          a1, t6, 935f
                  slli         s8, a6, 6
                  addi         s5, a0, -819
                  sltu         s0, s5, s1
                  bne          s10, t0, 940f
                  sltu         t3, s11, a4
                  bgeu         s1, tp, 940f
                  or           sp, s10, s5
                  srai         s9, s5, 12
                  xori         t4, zero, -1418
                  srli         s1, s10, 4
                  srli         s3, s4, 0
                  xori         s7, s3, 1369
932:              ori          t5, t5, -128
                  slt          s9, t1, zero
                  nop
935:              nop
                  nop
                  sll          t4, s8, s10
                  srli         t6, s11, 2
                  bne          s4, a6, 940f
940:              sra          a0, s1, s2
                  addi         a0, a7, -493
                  slli         s9, a4, 8
                  srl          t1, s1, s5
                  andi         ra, a0, 1939
                  lw           a3, 4(t2)
                  auipc        t3, 845188
                  andi         s8, s10, 624
                  sltu         a1, s1, t1
                  srl          a2, s9, t5
                  addi         t2, t2, 36
                  sra          ra, s6, t4
                  srl          t6, sp, s9
1343:             addi x8, x13, 0
1343:             jalr x8, x8, 0
sub_5:            add          s3, s2, s9
                  addi         t2, t2, -8
                  srli         s11, s11, 30
                  sub          s7, s2, a0
                  srai         a4, zero, 22
                  addi         s4, a6, -1562
                  andi         gp, a2, -1331
                  sw           a3, 4(t2)
                  sra          s1, s4, a3
                  sll          t5, s6, t6
                  lui          s11, 10261
                  srli         s11, s4, 26
                  ori          a5, s6, -516
                  sltu         a2, gp, s6
                  slli         t4, s5, 24
                  andi         a3, a5, -484
                  sltiu        a6, t2, 520
                  and          t3, s1, s4
                  bne          s1, s10, 9f
                  beq          s6, a7, 13f
9:                srli         s5, s2, 17
                  xori         t0, s1, -305
                  lui          a0, 21850
                  auipc        s8, 920724
13:               bne          t2, a7, 29f
                  slli         s5, t1, 2
                  slt          s7, s9, a0
                  or           s3, a2, s7
                  addi         a5, s2, -575
                  blt          t3, t6, 32f
                  slt          t3, s9, s0
                  or           a5, a7, t2
                  slti         ra, s7, -1560
                  xori         gp, s5, -175
                  bne          a7, a3, 25f
                  sll          s4, s9, s7
25:               slti         s7, s7, 983
                  addi         sp, s6, -1561
                  bltu         s10, s0, 32f
                  lui          s11, 766057
29:               slli         tp, a4, 30
                  sltu         s0, s2, t5
                  bltu         s6, a7, 32f
32:               and          s6, t6, s6
                  lw           a3, 4(t2)
                  nop
                  srli         a6, a2, 25
                  andi         a6, t0, 985
                  addi         t2, t2, 8
                  sub          a4, s3, tp
                  auipc        s6, 460416
                  sll          a4, t5, s6
                  addi         t5, t4, -1069
53:               addi x9, x13, 0
53:               jalr x9, x9, 0
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
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x26, x7, zero
                  csrr x15, 0x300 # MSTATUS
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 31
                  bne x15, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x15, 0x341 # MEPC
                  csrr x15, 0x342 # MCAUSE
                  li x18, 0x3 # BREAKPOINT
                  beq x15, x18, ebreak_handler
                  li x18, 0x8 # ECALL_UMODE
                  beq x15, x18, ecall_handler
                  li x18, 0x9 # ECALL_SMODE
                  beq x15, x18, ecall_handler
                  li x18, 0xb # ECALL_MMODE
                  beq x15, x18, ecall_handler
                  li x18, 0x1
                  beq x15, x18, instr_fault_handler
                  li x18, 0x5
                  beq x15, x18, load_fault_handler
                  li x18, 0x7
                  beq x15, x18, store_fault_handler
                  li x18, 0xc
                  beq x15, x18, pt_fault_handler
                  li x18, 0xd
                  beq x15, x18, pt_fault_handler
                  li x18, 0xf
                  beq x15, x18, pt_fault_handler
                  li x18, 0x2 # ILLEGAL_INSTRUCTION
                  beq x15, x18, illegal_instr_handler
                  csrr x18, 0x343 # MTVAL
                  1: la x17, test_done
                  jalr x1, x17, 0

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
                  la x17, write_tohost
                  jalr x0, x17, 0

instr_fault_handler:
                  add x7, x26, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

load_fault_handler:
                  add x7, x26, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

store_fault_handler:
                  add x7, x26, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

ebreak_handler:   
                  csrr  x15, 0x341
                  addi  x15, x15, 4
                  csrw  0x341, x15
                  add x7, x26, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

illegal_instr_handler:
                  csrr  x15, 0x341
                  addi  x15, x15, 4
                  csrw  0x341, x15
                  add x7, x26, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x15, 0x300 # MSTATUS;
                  csrr  x15, 0x304 # MIE;
                  csrr  x15, 0x344 # MIP;
                  csrrc x15, 0x344, x15 # MIP;
                  add x7, x26, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
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
