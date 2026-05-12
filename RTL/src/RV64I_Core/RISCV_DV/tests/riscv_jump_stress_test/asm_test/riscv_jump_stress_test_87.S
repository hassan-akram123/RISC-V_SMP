.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x24, h0_start
jalr x0, x24, 0
h0_start:
                  li x17, 0x40000100
                  csrw 0x301, x17
kernel_sp:        
                  la x22, kernel_stack_end

trap_vec_init:    
                  la x17, mtvec_handler
                  ori x17, x17, 1
                  csrw 0x305, x17 # MTVEC

mepc_setup:       
                  la x17, init
                  csrw 0x341, x17

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x17, 0x1800
                  csrw 0x300, x17 # MSTATUS
                  mret
init:             
                  li x0, 0xf3392e00
                  li x1, 0x788f51f5
                  li x2, 0xf17f9c93
                  li x3, 0xf
                  li x4, 0xfadb2557
                  li x5, 0xb
                  li x6, 0x80000000
                  li x7, 0x9
                  li x8, 0x2
                  li x9, 0x80000000
                  li x10, 0x0
                  li x11, 0x80000000
                  li x12, 0xe27a1a09
                  li x13, 0x569a4676
                  li x14, 0x80000000
                  li x15, 0xaa15e211
                  li x16, 0x5
                  li x17, 0xa531e36d
                  li x19, 0xfe93afc3
                  li x20, 0x80000000
                  li x21, 0x0
                  li x23, 0xfe874395
                  li x24, 0xfebf7031
                  li x25, 0xa380027c
                  li x26, 0x0
                  li x27, 0xa
                  li x28, 0x80000000
                  li x29, 0x0
                  li x30, 0xb9a52d0
                  li x31, 0x80000000
                  la x18, user_stack_end
main:             nop
                  nop
                  sltu         a5, a5, t1
                  la           s3, sub_1
                  addi         s3, s3, -626
                  sll          s1, s8, a4
                  auipc        t4, 924463
                  sltu         s4, s4, t0
                  nop
main_j2:          jalr         t5, s3, 626 #jump main -> sub_1
main_0:           jal          t5, 11f
0:                jal          ra, 3f
1:                jal          ra, 15f
2:                jal          ra, 6f
3:                jal          ra, 12f
4:                jal          ra, 1b
5:                jal          tp, 19f
6:                jal          ra, 10f
7:                jal          ra, 16f
8:                jal          ra, 17f
9:                jal          ra, 8b
10:               jal          gp, 5b
11:               jal          a2, 9b
12:               jal          ra, 18f
13:               jal          sp, 4b
14:               jal          ra, 0b
15:               jal          ra, 2b
16:               jal          ra, 14b
17:               jal          ra, 7b
18:               jal          ra, 13b
19:               and          gp, s8, ra
                  sltu         gp, t6, ra
                  addi         s9, zero, 616
                  slt          sp, s1, a1
                  lui          a0, 619996
                  sltu         a0, t3, a2
                  and          a3, zero, s0
                  sra          a2, a7, zero
                  and          tp, t4, t3
                  add          s9, a0, a7
                  la           s9, sub_2
                  auipc        s3, 442032
                  xori         s5, s5, 534
                  sra          s10, s10, s7
                  lui          tp, 1037619
                  srli         s3, a2, 3
                  sltiu        a4, s5, 187
                  nop
                  sll          t0, a2, gp
                  slti         a5, s2, 389
                  addi         s9, s9, -518
                  xori         tp, t0, -415
main_j1:          jalr         t5, s9, 519 #jump main -> sub_2
                  lui          t3, 695718
                  slti         a1, a4, 374
                  beq          zero, a6, 12f
12:               and          s10, s6, t0
                  slti         t1, s4, -13
                  srl          a1, a2, t3
                  slti         a6, s3, -953
                  beq          s9, gp, 27f
                  bltu         a6, s4, 27f
                  addi         s10, tp, -674
                  srli         zero, a1, 12
                  srai         t0, s10, 1
                  sub          t2, a0, t0
                  bge          t0, t4, 23f
23:               add          zero, s0, a7
                  xor          a3, t0, s1
                  srli         s1, gp, 13
                  slti         a4, s0, 1280
27:               slt          t0, s1, s8
                  la x24, test_done
                  jalr x0, x24, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            slli         a2, s1, 18
                  beq          t3, a2, sub_4_stack_p
                  sltu         s0, a3, s6
sub_4_stack_p:    addi         s2, s2, -60
                  sw           t5, 4(s2)
                  ori          a6, t2, -2
                  addi         t3, a3, -45
                  sltiu        s3, sp, -1972
sub_4_16:         jal          t5, 11f
0:                jal          gp, 14f
1:                jal          ra, 19f
2:                jal          s9, 17f
3:                jal          t1, 6f
4:                jal          ra, 13f
5:                jal          tp, 21f
6:                jal          ra, 12f
7:                jal          ra, 18f
8:                jal          ra, 7b
9:                jal          ra, 4b
10:               jal          t1, 1b
11:               jal          t1, 20f
12:               jal          t1, 10b
13:               jal          ra, 8b
14:               jal          a4, 23f
15:               jal          ra, 16f
16:               jal          t0, 22f
17:               jal          ra, 3b
18:               jal          t0, 2b
19:               jal          ra, 5b
20:               jal          ra, 15b
21:               jal          ra, 0b
22:               jal          ra, 9b
23:               slli         t1, t0, 23
sub_4_3:          jal          t5, 12f
0:                jal          ra, 25f
1:                jal          ra, 13f
2:                jal          ra, 22f
3:                jal          tp, 6f
4:                jal          t1, 11f
5:                jal          a3, 9f
6:                jal          ra, 10f
7:                jal          ra, 18f
8:                jal          s1, 28f
9:                jal          ra, 4b
10:               jal          t6, 16f
11:               jal          t1, 8b
12:               jal          t1, 27f
13:               jal          ra, 3b
14:               jal          ra, 17f
15:               jal          tp, 0b
16:               jal          s0, 14b
17:               jal          t5, 29f
18:               jal          tp, 23f
19:               jal          ra, 2b
20:               jal          s0, 26f
21:               jal          ra, 20b
22:               jal          ra, 24f
23:               jal          ra, 21b
24:               jal          t1, 5b
25:               jal          ra, 7b
26:               jal          ra, 19b
27:               jal          ra, 15b
28:               jal          ra, 1b
29:               slti         s0, a0, -1819
sub_4_15:         jal          t5, 5f
0:                jal          t1, 18f
1:                jal          t1, 0b
2:                jal          ra, 11f
3:                jal          sp, 15f
4:                jal          t1, 17f
5:                jal          a3, 10f
6:                jal          t1, 9f
7:                jal          ra, 16f
8:                jal          t1, 6b
9:                jal          ra, 2b
10:               jal          ra, 7b
11:               jal          s3, 4b
12:               jal          sp, 1b
13:               jal          gp, 12b
14:               jal          t1, 3b
15:               jal          ra, 13b
16:               jal          ra, 8b
17:               jal          ra, 14b
18:               xori         s5, tp, 1696
sub_4_2:          jal          t5, 13f
0:                jal          ra, 3f
1:                jal          t1, 5f
2:                jal          ra, 12f
3:                jal          s0, 16f
4:                jal          ra, 8f
5:                jal          t0, 14f
6:                jal          ra, 1b
7:                jal          ra, 6b
8:                jal          ra, 17f
9:                jal          t1, 7b
10:               jal          ra, 15f
11:               jal          t5, 9b
12:               jal          ra, 4b
13:               jal          s11, 0b
14:               jal          ra, 18f
15:               jal          ra, 2b
16:               jal          t0, 10b
17:               jal          ra, 11b
18:               and          a2, t1, ra
sub_4_9:          jal          t5, 11f
0:                jal          t1, 2f
1:                jal          ra, 23f
2:                jal          a6, 4f
3:                jal          ra, 14f
4:                jal          ra, 1b
5:                jal          ra, 20f
6:                jal          t1, 16f
7:                jal          t1, 10f
8:                jal          ra, 15f
9:                jal          t1, 8b
10:               jal          t1, 22f
11:               jal          ra, 3b
12:               jal          ra, 17f
13:               jal          t0, 6b
14:               jal          ra, 7b
15:               jal          ra, 5b
16:               jal          t1, 0b
17:               jal          ra, 13b
18:               jal          a0, 9b
19:               jal          s4, 21f
20:               jal          t5, 19b
21:               jal          ra, 12b
22:               jal          ra, 18b
23:               sra          s3, s7, a6
sub_4_17:         jal          t5, 2f
0:                jal          t1, 3f
1:                jal          tp, 14f
2:                jal          s4, 5f
3:                jal          ra, 16f
4:                jal          ra, 0b
5:                jal          ra, 7f
6:                jal          ra, 8f
7:                jal          t0, 4b
8:                jal          ra, 15f
9:                jal          ra, 12f
10:               jal          s10, 18f
11:               jal          a6, 9b
12:               jal          ra, 17f
13:               jal          t1, 11b
14:               jal          ra, 10b
15:               jal          s11, 1b
16:               jal          ra, 13b
17:               jal          s11, 6b
18:               or           zero, s9, t3
sub_4_14:         jal          t5, 14f
0:                jal          ra, 19f
1:                jal          t5, 29f
2:                jal          s10, 8f
3:                jal          ra, 12f
4:                jal          s7, 5f
5:                jal          ra, 23f
6:                jal          ra, 28f
7:                jal          t1, 20f
8:                jal          ra, 16f
9:                jal          s9, 25f
10:               jal          t1, 21f
11:               jal          a0, 13f
12:               jal          tp, 26f
13:               jal          ra, 2b
14:               jal          gp, 15f
15:               jal          ra, 27f
16:               jal          ra, 9b
17:               jal          t5, 11b
18:               jal          t1, 17b
19:               jal          ra, 6b
20:               jal          t1, 22f
21:               jal          t1, 18b
22:               jal          ra, 10b
23:               jal          ra, 0b
24:               jal          s0, 4b
25:               jal          t1, 1b
26:               jal          ra, 7b
27:               jal          a3, 24b
28:               jal          sp, 3b
29:               or           s5, t3, ra
sub_4_5:          jal          t5, 1f
0:                jal          s9, 13f
1:                jal          t1, 17f
2:                jal          t0, 11f
3:                jal          ra, 15f
4:                jal          ra, 6f
5:                jal          ra, 7f
6:                jal          t2, 18f
7:                jal          a1, 2b
8:                jal          ra, 5b
9:                jal          a2, 3b
10:               jal          t1, 4b
11:               jal          t3, 10b
12:               jal          ra, 14f
13:               jal          t1, 12b
14:               jal          t1, 16f
15:               jal          ra, 0b
16:               jal          tp, 8b
17:               jal          t0, 9b
18:               sub          a0, s7, ra
sub_4_7:          jal          t5, 0f
0:                jal          ra, 3f
1:                jal          ra, 8f
2:                jal          tp, 10f
3:                jal          ra, 1b
4:                jal          gp, 2b
5:                jal          s1, 6f
6:                jal          gp, 9f
7:                jal          ra, 4b
8:                jal          t1, 7b
9:                jal          t5, 11f
10:               jal          ra, 5b
11:               lui          tp, 16331
sub_4_10:         jal          t5, 3f
0:                jal          s5, 12f
1:                jal          ra, 8f
2:                jal          sp, 0b
3:                jal          t1, 2b
4:                jal          ra, 14f
5:                jal          ra, 1b
6:                jal          ra, 4b
7:                jal          s9, 11f
8:                jal          ra, 9f
9:                jal          t1, 7b
10:               jal          t1, 6b
11:               jal          ra, 10b
12:               jal          ra, 13f
13:               jal          ra, 5b
14:               auipc        ra, 658335
sub_4_1:          jal          t5, 2f
0:                jal          s1, 10f
1:                jal          ra, 3f
2:                jal          ra, 9f
3:                jal          s1, 21f
4:                jal          ra, 0b
5:                jal          t1, 4b
6:                jal          t1, 1b
7:                jal          ra, 5b
8:                jal          ra, 14f
9:                jal          ra, 19f
10:               jal          t1, 11f
11:               jal          a1, 17f
12:               jal          ra, 7b
13:               jal          ra, 22f
14:               jal          t1, 20f
15:               jal          ra, 6b
16:               jal          ra, 8b
17:               jal          sp, 16b
18:               jal          ra, 13b
19:               jal          ra, 15b
20:               jal          t1, 18b
21:               jal          ra, 12b
22:               auipc        tp, 425042
sub_4_11:         jal          t5, 16f
0:                jal          t1, 19f
1:                jal          ra, 7f
2:                jal          ra, 18f
3:                jal          s0, 9f
4:                jal          t3, 8f
5:                jal          s3, 14f
6:                jal          ra, 5b
7:                jal          ra, 6b
8:                jal          t1, 3b
9:                jal          t3, 12f
10:               jal          ra, 15f
11:               jal          ra, 4b
12:               jal          sp, 17f
13:               jal          gp, 1b
14:               jal          t1, 11b
15:               jal          ra, 2b
16:               jal          s0, 13b
17:               jal          a2, 10b
18:               jal          ra, 0b
19:               sra          t2, ra, t0
sub_4_8:          jal          t5, 13f
0:                jal          ra, 23f
1:                jal          t1, 4f
2:                jal          ra, 0b
3:                jal          ra, 8f
4:                jal          t1, 19f
5:                jal          ra, 6f
6:                jal          ra, 9f
7:                jal          ra, 26f
8:                jal          t0, 22f
9:                jal          t1, 27f
10:               jal          ra, 18f
11:               jal          ra, 17f
12:               jal          ra, 29f
13:               jal          ra, 7b
14:               jal          t1, 3b
15:               jal          ra, 21f
16:               jal          ra, 12b
17:               jal          sp, 2b
18:               jal          ra, 25f
19:               jal          ra, 5b
20:               jal          ra, 28f
21:               jal          ra, 16b
22:               jal          ra, 11b
23:               jal          ra, 10b
24:               jal          s3, 14b
25:               jal          ra, 1b
26:               jal          ra, 24b
27:               jal          t6, 20b
28:               jal          ra, 15b
29:               lui          a2, 56958
sub_4_13:         jal          t5, 13f
0:                jal          ra, 3f
1:                jal          a4, 5f
2:                jal          t3, 26f
3:                jal          t2, 10f
4:                jal          ra, 17f
5:                jal          ra, 18f
6:                jal          ra, 11f
7:                jal          ra, 2b
8:                jal          t1, 23f
9:                jal          ra, 12f
10:               jal          t1, 15f
11:               jal          ra, 21f
12:               jal          ra, 6b
13:               jal          ra, 7b
14:               jal          a7, 29f
15:               jal          ra, 8b
16:               jal          ra, 25f
17:               jal          ra, 28f
18:               jal          ra, 20f
19:               jal          ra, 14b
20:               jal          t1, 0b
21:               jal          t0, 4b
22:               jal          ra, 9b
23:               jal          ra, 22b
24:               jal          ra, 1b
25:               jal          t1, 27f
26:               jal          t3, 16b
27:               jal          t1, 24b
28:               jal          ra, 19b
29:               xor          a2, t0, s7
sub_4_6:          jal          t5, 14f
0:                jal          tp, 4f
1:                jal          t1, 17f
2:                jal          s9, 19f
3:                jal          t1, 9f
4:                jal          ra, 10f
5:                jal          t1, 6f
6:                jal          t1, 2b
7:                jal          ra, 5b
8:                jal          ra, 1b
9:                jal          ra, 0b
10:               jal          ra, 15f
11:               jal          ra, 7b
12:               jal          t1, 13f
13:               jal          a3, 18f
14:               jal          t1, 12b
15:               jal          t1, 11b
16:               jal          ra, 8b
17:               jal          t1, 3b
18:               jal          ra, 16b
19:               sltiu        s10, a2, -1975
                  xor          s10, t5, a1
                  sltu         t0, s0, a2
                  beq          t2, t3, 7f
                  nop
                  auipc        t3, 1637
                  srai         gp, s6, 13
                  or           s5, t2, a6
7:                bltu         t3, s0, 26f
                  and          a5, s7, zero
                  nop
                  ori          sp, s6, -568
                  sra          tp, a2, s1
                  xori         a1, s7, -1401
                  xor          a1, t4, s10
                  slt          s5, s6, s10
                  srl          zero, a3, a1
                  ori          a5, s10, -1943
                  bltu         t3, a5, 27f
                  sltiu        t0, s5, -779
                  ori          ra, s2, -1247
                  srli         tp, t5, 24
                  beq          s3, a4, 28f
                  beq          s5, gp, 30f
                  xor          s11, s0, s5
                  bltu         a3, s4, 34f
                  nop
26:               sll          a2, ra, a5
27:               andi         a5, s1, 265
28:               srl          a5, a0, s2
                  slt          s4, s4, s11
30:               sltiu        a4, s0, -2000
                  bne          t2, sp, 49f
                  beq          a5, s9, 34f
                  add          s7, s9, gp
34:               and          zero, t2, a5
                  bne          t4, a5, 51f
                  andi         tp, a2, 609
                  slti         t0, t4, 1834
                  srli         zero, s5, 3
                  bltu         s1, t6, 41f
                  and          s9, zero, a4
41:               slt          t4, a3, s11
                  ori          t0, t5, -997
                  xor          t0, s9, s2
                  xor          sp, sp, t0
                  bltu         t6, t3, 64f
                  srai         t1, s9, 8
                  sra          s9, t5, a3
                  srl          s0, s11, t5
49:               slli         t1, a6, 14
                  or           a0, tp, s11
51:               blt          s11, s10, 63f
                  srai         a2, gp, 31
                  auipc        s10, 144460
                  blt          t3, t5, 67f
                  auipc        s5, 938744
                  auipc        s5, 638429
                  addi         a5, a0, -1434
                  slli         s1, t5, 26
                  beq          s7, gp, 63f
                  xori         s11, s6, 263
                  bge          s10, a4, 77f
                  nop
63:               bge          s4, ra, 81f
64:               slli         s7, s1, 17
                  bltu         ra, a1, 81f
                  bltu         a6, t1, 76f
67:               nop
                  bne          s9, t1, 87f
                  lui          s3, 934373
                  blt          gp, a3, 88f
                  sltu         tp, s10, s0
                  and          s11, a6, s9
                  sltiu        a6, t3, -1319
                  bne          ra, a6, 94f
                  slt          s1, s0, a7
76:               sltiu        t5, t6, 1443
77:               slli         a2, t1, 11
                  bge          t6, s7, 80f
                  nop
80:               lui          tp, 173200
81:               or           s10, s6, t5
                  sub          a6, tp, sp
                  sltu         a5, s7, zero
                  bgeu         s2, s2, 90f
                  bgeu         s11, a1, 102f
                  bgeu         t4, sp, 101f
87:               andi         s4, a1, 1526
88:               srli         s11, s4, 11
                  srl          s3, s3, s8
90:               slti         s7, s4, -1288
                  and          t4, a3, tp
                  sub          a2, s11, sp
                  add          s1, s4, a6
94:               sltiu        tp, s0, -1551
                  sll          s3, t5, s5
                  srai         t4, t0, 23
                  srl          a3, tp, a0
                  sra          s10, a0, s9
                  sltiu        tp, s2, -468
                  bne          a6, s3, 110f
101:              beq          a1, t2, 110f
102:              or           a7, gp, s7
                  andi         a6, a1, -1092
                  srai         a2, s3, 14
                  add          t3, s3, zero
                  beq          s9, t5, 120f
                  and          a4, a3, s11
                  srai         s5, a2, 20
                  lui          s0, 96321
110:              xori         tp, a5, -485
                  bge          s3, a0, 122f
                  beq          t5, a2, 130f
                  bne          a3, t1, 125f
                  and          t1, a4, a0
                  lui          s9, 240811
                  srai         s5, s8, 22
                  auipc        s9, 588101
                  srli         gp, tp, 9
                  slt          t5, s8, a4
120:              sltu         a5, a4, s3
                  sltu         s4, a7, a3
122:              sll          a1, t1, s1
                  sltu         t5, s3, s7
                  lui          s9, 1035927
125:              bgeu         s4, s0, 142f
                  xor          a7, s3, tp
                  bltu         zero, s8, 145f
                  bltu         s6, a5, 144f
                  sra          a7, a5, s3
130:              slti         a1, t5, 295
                  srai         tp, a4, 21
                  srai         s3, zero, 26
                  srai         a7, s2, 17
                  nop
                  or           s7, s6, s9
                  nop
                  srli         a2, t4, 5
                  lui          s10, 1005208
                  sra          t2, s3, sp
                  or           s4, s1, a7
                  xor          a0, t4, a5
142:              or           a6, a3, s1
                  bltu         s0, a0, 148f
144:              nop
145:              add          t3, s10, gp
                  ori          a4, a1, -1327
                  addi         tp, s0, -899
148:              sra          ra, t6, a0
                  lui          zero, 21798
                  nop
                  and          t2, s3, ra
                  lui          s7, 493656
                  slti         t3, a1, 109
                  slt          t6, s8, t6
                  bltu         t5, s10, 164f
                  auipc        s4, 732778
                  add          a4, s10, t6
                  bge          t6, a7, 168f
                  bgeu         s10, s1, 172f
                  srai         a4, a6, 17
                  auipc        t3, 912766
                  xori         a1, ra, 1876
                  sra          ra, a1, t2
164:              slti         t4, tp, -416
                  bltu         t4, a1, 180f
                  andi         gp, s8, 891
                  srli         s4, s10, 17
168:              xor          t4, s3, s4
                  auipc        s10, 20928
                  srai         s11, s0, 9
                  sub          t5, t5, t6
172:              bltu         a1, a6, 174f
                  sltiu        a1, s8, -952
174:              addi         s1, zero, 1349
                  add          t5, a6, s1
                  bge          a0, a2, 186f
                  lui          t6, 993870
                  lui          sp, 508910
                  slt          s10, tp, zero
180:              bne          t0, t1, 196f
                  beq          s0, t1, 200f
                  srai         t4, zero, 5
                  bgeu         t6, t6, 185f
                  auipc        s4, 192435
185:              bltu         s4, a5, 189f
186:              slti         ra, a3, 1189
                  sra          t3, a2, s7
                  sra          t5, ra, a7
189:              andi         a5, s11, -1836
                  slti         s10, a5, 499
                  sra          sp, a3, s2
                  auipc        s3, 262995
                  lui          s1, 164513
                  ori          a0, t2, 1933
                  srli         t6, s0, 28
196:              sra          s5, a0, a1
                  sub          a7, a4, t1
                  sra          a4, s4, s9
                  ori          zero, s0, -1633
200:              nop
                  and          a0, a5, a1
                  sltu         ra, s8, t0
                  slti         s7, s9, 131
                  xor          tp, t6, s5
                  slli         s3, s4, 15
                  slt          tp, t6, gp
                  and          s4, a0, s5
                  nop
                  sll          s10, s5, t1
                  blt          s11, ra, 217f
                  slt          s3, sp, a7
                  nop
                  bltu         s0, a7, 223f
                  sltiu        a4, a3, 1554
                  bgeu         s4, s10, 217f
                  sltiu        t1, a4, 1069
217:              srl          tp, s0, a5
                  lui          gp, 425758
                  srli         a6, s7, 31
                  add          tp, t5, a2
                  ori          a7, s8, -142
                  andi         t5, s8, -1064
223:              xori         t2, t5, -546
                  or           s0, a0, a2
                  addi         s10, t4, 1896
                  bne          s1, gp, 244f
                  sltiu        s1, t6, 688
                  sra          a6, s3, t5
                  lui          t4, 190651
                  nop
                  xori         s7, s5, 1638
                  sltiu        a5, t4, -1279
                  slli         ra, a5, 1
                  bltu         s1, a0, 250f
                  lui          s5, 21389
                  xori         s9, t5, -707
                  or           s10, s5, s4
                  bgeu         ra, t1, 258f
                  xor          zero, s6, zero
                  or           a6, t1, s6
                  beq          t6, a0, 252f
                  lui          zero, 1010487
                  bltu         s5, s3, 262f
244:              bne          a7, t0, 252f
                  sll          a5, s0, ra
                  sll          a6, s8, t2
                  xor          t6, s1, s1
                  auipc        s10, 555420
                  bge          t1, s1, 268f
250:              and          a4, a6, s5
                  add          tp, t6, a3
252:              bltu         t6, t2, 258f
                  lui          s0, 30848
                  sub          zero, a1, zero
                  blt          t0, s6, 273f
                  addi         a4, gp, -1593
                  add          t5, a3, s7
258:              sra          sp, s3, s11
                  slli         t1, s11, 29
                  srl          s1, s10, sp
                  xor          s0, zero, s8
262:              nop
                  sra          t2, a1, s9
                  srai         a1, s7, 23
                  sll          t4, s6, s9
                  sub          s1, a3, t0
                  or           t5, s5, tp
268:              sub          t5, a0, ra
                  nop
                  xor          a6, t1, s1
                  add          t6, s2, t6
                  slli         gp, a0, 20
273:              sltiu        t0, s3, 623
                  bne          a1, ra, 284f
                  andi         s7, s10, 775
                  slti         ra, a7, -1568
                  srl          s11, s9, a1
                  xor          s3, s1, s11
                  slt          tp, s1, s4
                  nop
                  sltiu        s0, t6, 1266
                  ori          t1, s11, -189
                  nop
284:              bne          t0, a4, 302f
                  srai         t6, s4, 15
                  beq          a5, a4, 300f
                  auipc        a3, 195412
                  sub          a3, a0, t2
                  add          a6, a3, gp
                  slli         s3, ra, 30
                  slt          t5, a4, a2
                  sra          s4, s6, s0
                  nop
                  xori         s7, s9, 137
                  bgeu         s8, t4, 306f
                  sltiu        gp, zero, 1006
                  srli         zero, a4, 7
                  beq          s0, s11, 300f
                  slti         a2, zero, -1441
300:              sll          a5, a1, gp
                  slt          a7, t5, s1
302:              sll          a3, sp, sp
                  bge          t2, s3, 315f
                  ori          s0, a1, 1648
                  ori          a2, t5, 616
306:              xor          s11, s8, s8
                  and          a4, s10, s11
                  srli         s10, tp, 6
                  lui          t5, 611278
                  andi         ra, t1, -590
                  sub          a6, gp, s3
                  beq          a5, a6, 329f
                  or           t2, t4, a1
                  bgeu         s0, a1, 332f
315:              xori         s5, a2, -34
                  addi         a3, s2, -727
                  srli         tp, t6, 24
                  addi         s1, a0, 1416
                  ori          a0, t0, 2006
                  addi         a3, s1, 113
                  xori         a5, sp, -1593
                  bge          a1, s5, 342f
                  lui          sp, 716174
                  bgeu         s5, s9, 340f
                  sltu         s10, a1, a4
                  and          t2, a7, t0
                  beq          s6, t3, 346f
                  sltu         s4, s4, zero
329:              srli         a5, t0, 25
                  nop
                  sll          t0, s8, t4
332:              sll          t6, s8, t0
                  and          s11, a7, a3
                  addi         a0, t5, 1739
                  sub          a3, s1, s9
                  xor          ra, s11, t0
                  xor          s3, s10, t4
                  bge          s8, s4, 356f
                  xor          a2, s10, s3
340:              add          t0, s2, t2
                  slt          sp, gp, s5
342:              xori         a1, t4, -1475
                  auipc        a7, 340062
                  sll          ra, a1, s10
                  xor          s5, a1, t1
346:              srai         t0, s1, 15
                  blt          t6, a1, 363f
                  sltu         t1, ra, zero
                  bltu         s6, s11, 362f
                  bge          s1, zero, 360f
                  beq          a4, sp, 359f
                  ori          s10, s11, 312
                  srli         t4, s5, 6
                  bne          t5, t4, 372f
                  slt          a5, s3, s7
356:              srl          t4, a2, gp
                  sltu         sp, t6, s11
                  sub          a5, a2, a0
359:              bltu         s7, a3, 365f
360:              xori         s1, t6, -925
                  srli         t3, a0, 13
362:              bltu         t4, s1, 364f
363:              ori          s1, t4, -1546
364:              srai         s7, a7, 15
365:              or           s11, s1, t4
                  addi         a5, ra, -828
                  srai         a3, s9, 22
                  sll          s9, a1, a4
                  sltu         sp, t0, a7
                  sra          a4, s5, a7
                  slli         s5, s3, 29
372:              sll          s11, a4, s6
                  bne          a2, s3, 392f
                  sra          a0, s6, s11
                  blt          s6, a4, 382f
                  bltu         sp, zero, 385f
                  bltu         zero, gp, 379f
                  bgeu         gp, s10, 388f
379:              bge          t1, t2, 384f
                  srl          s3, a7, a0
                  srli         s11, a6, 28
382:              sra          a3, a4, a6
                  and          s5, s8, a4
384:              auipc        s0, 786624
385:              slti         s4, t5, 1463
                  beq          a3, t0, 390f
                  addi         s7, t3, -114
388:              or           a5, sp, s9
                  slt          a3, s4, a7
390:              srli         t4, ra, 20
                  nop
392:              sltiu        sp, t1, -1493
                  addi         a4, t1, 1138
                  bge          s2, a4, 410f
                  slt          a0, a2, t3
                  bltu         a1, zero, 406f
                  auipc        t0, 81194
                  and          t3, ra, t3
                  sltu         s1, t3, a1
                  slti         s7, t3, 1288
                  slt          t5, a2, a7
                  bgeu         t6, t0, 417f
                  srl          a0, a4, s0
                  srl          s0, s4, a3
                  slli         a3, a6, 24
406:              srai         t0, s0, 13
                  addi         zero, t5, 718
                  bgeu         tp, gp, 426f
                  sll          a7, s3, s1
410:              srai         a7, a3, 14
                  srli         s4, s3, 24
                  sltu         a7, a2, tp
                  sub          s3, a4, a2
                  sll          t3, sp, t0
                  bltu         t3, s5, 425f
                  sltiu        t1, a7, -1480
417:              and          zero, a4, s8
                  and          a6, s5, a1
                  xor          a2, a3, t2
                  addi         s3, s9, 759
                  srl          a2, a5, s7
                  sltu         s7, t5, ra
                  bgeu         a5, s6, 442f
                  or           a3, a4, a3
425:              add          a6, s4, s1
426:              add          s3, s6, a3
                  slt          t0, a7, t5
                  srl          a4, tp, a5
                  sub          s3, ra, a2
                  auipc        s9, 910789
                  beq          s1, a5, 445f
                  bne          s8, zero, 437f
                  bltu         a7, s4, 451f
                  and          a5, s6, s11
                  srai         t1, s8, 12
sub_4_0:          jal          t5, 8f
0:                jal          s10, 21f
1:                jal          tp, 22f
2:                jal          s1, 17f
3:                jal          ra, 14f
4:                jal          t1, 13f
5:                jal          s10, 24f
6:                jal          ra, 15f
7:                jal          ra, 0b
8:                jal          t1, 4b
9:                jal          t0, 3b
10:               jal          t1, 25f
11:               jal          t1, 1b
12:               jal          s0, 23f
13:               jal          ra, 9b
14:               jal          ra, 16f
15:               jal          ra, 19f
16:               jal          ra, 12b
17:               jal          ra, 6b
18:               jal          t0, 10b
19:               jal          t1, 18b
20:               jal          s10, 5b
21:               jal          ra, 20b
22:               jal          ra, 7b
23:               jal          t1, 11b
24:               jal          sp, 2b
25:               auipc        s3, 421322
                  xor          t5, t6, s11
437:              xor          t5, t1, sp
                  blt          a0, a4, 457f
                  and          t5, s1, t1
                  blt          a5, zero, 458f
                  bgeu         s6, s2, 460f
442:              sltiu        s3, s3, -1337
                  xor          s5, t1, s0
                  slt          tp, t2, s5
445:              sltu         a6, a6, a3
                  or           s11, a4, s8
                  xori         t0, sp, -1612
                  blt          gp, a0, 452f
                  lui          s3, 410412
                  sll          s3, s10, a3
451:              sltu         a1, s4, a4
452:              andi         zero, s10, 974
                  ori          t5, a5, 385
                  sll          a2, a1, t5
                  bltu         a4, s5, 457f
                  sra          t6, s2, zero
457:              nop
458:              bltu         t1, a0, 465f
                  sub          a5, s9, s11
460:              slli         t6, s5, 4
                  slli         tp, a1, 25
                  sra          gp, s4, s6
                  blt          t4, s3, 476f
                  sltiu        a4, a2, -1325
465:              xor          a7, a2, s7
                  bltu         t0, s3, 485f
                  add          gp, t1, t6
                  nop
                  beq          s2, s8, 479f
                  sltu         s4, t0, t6
                  sub          s4, a1, t5
                  bne          ra, s8, 488f
                  sltiu        s11, sp, 902
                  beq          s7, tp, 483f
                  bge          a2, s4, 481f
476:              sll          a3, s7, s8
                  bgeu         s1, t2, 491f
                  sltu         s10, s6, ra
479:              srl          t6, s3, s3
                  srl          a4, s6, t6
481:              andi         tp, s5, 904
                  xor          s4, t2, s7
483:              sltu         s5, a4, t3
                  andi         t6, a4, -148
485:              and          a5, s9, t6
                  slli         s5, t0, 8
                  srai         t6, s6, 3
488:              bltu         a5, a5, 506f
                  add          s1, s2, s2
                  nop
491:              sltu         a3, a4, s4
                  srli         a0, t0, 4
                  sltu         a2, s10, a5
                  lui          a2, 661637
                  beq          s0, a7, 507f
                  bgeu         sp, t4, 512f
                  beq          a1, tp, 512f
                  xor          s11, ra, t6
                  sub          a6, t0, a3
                  bgeu         a3, a0, 511f
                  bge          t2, t3, 509f
                  srai         t1, t2, 22
                  and          ra, sp, a0
                  slti         t3, t1, 1977
                  auipc        s10, 317172
506:              andi         s0, s7, 1469
507:              bge          a2, ra, 517f
                  or           ra, t1, s7
509:              slti         a0, a5, -1161
                  bne          s11, sp, 530f
511:              srli         s4, s6, 20
512:              sltu         t2, s11, s8
                  lui          a5, 926156
                  and          t2, t2, s9
                  lui          s11, 956781
                  bltu         s1, a4, 534f
517:              srl          a1, s5, s7
                  sll          a3, s6, ra
                  sll          s1, t1, t5
                  slli         s4, t6, 4
                  slt          s3, a3, sp
                  srai         t1, gp, 6
                  and          t3, s3, s6
                  srli         zero, a2, 8
                  blt          s11, t4, 535f
                  srai         a6, t4, 10
                  srl          t6, s11, s0
                  sra          a4, s9, t6
                  xor          t1, s8, s4
530:              slti         s7, a0, 1996
                  srai         s4, a5, 30
                  slt          tp, t2, s3
                  xori         s5, s6, -952
534:              slt          tp, t6, s3
535:              ori          ra, s10, -117
                  sra          t0, a2, zero
                  nop
                  lui          a1, 553421
                  addi         s7, a7, -661
                  andi         s9, s4, -1100
                  andi         a1, s2, 1496
                  auipc        t1, 963702
                  add          s9, a0, ra
                  bgeu         s0, a4, 554f
                  srl          t5, a1, s11
                  bgeu         s7, s2, 562f
                  sra          gp, s8, t6
                  and          t2, a5, tp
                  blt          s6, s11, 551f
                  srl          t5, gp, t1
551:              sll          s7, a6, s0
                  blt          t0, s9, 569f
                  srai         t3, a2, 0
554:              beq          t5, a7, 556f
                  sltiu        tp, a4, 243
556:              srli         s5, a2, 15
                  bne          t5, gp, 573f
                  auipc        s1, 244659
                  bge          a7, s11, 578f
                  xori         s10, s5, 19
                  auipc        s5, 146014
562:              slli         a5, zero, 14
                  sltu         a3, s2, s5
                  beq          a2, s6, 576f
                  bgeu         t6, t3, 574f
                  slti         t1, tp, 859
                  bge          gp, a7, 569f
                  add          t1, t0, zero
569:              bgeu         s7, zero, 571f
                  srl          s4, gp, t1
571:              slt          zero, sp, ra
                  srai         a0, s5, 12
573:              sltiu        ra, s9, 1190
574:              sltu         a2, s8, s3
                  andi         a7, t0, -10
576:              srl          s7, a5, s1
                  slti         s1, s3, 1745
578:              andi         t1, a7, -1886
                  add          s1, sp, a6
                  srli         tp, s7, 31
                  srl          tp, s1, t0
                  sub          ra, t3, t5
                  or           a3, s1, t5
                  slt          s10, s5, t2
                  bgeu         a0, s5, 603f
                  andi         s4, s8, -663
                  blt          s5, a7, 597f
                  srli         s10, a3, 28
                  slt          t3, s3, ra
                  add          t5, s4, t4
                  sra          a2, s8, s10
                  andi         t6, t0, -1772
                  sub          s0, s6, a7
                  xori         s0, a7, 495
                  andi         s3, sp, -998
                  add          a1, s7, s5
597:              bge          zero, s2, 604f
                  srl          s9, a6, s1
                  auipc        t4, 554884
                  bge          s4, s3, 620f
                  andi         gp, s5, 1725
                  lui          t6, 640866
603:              bgeu         t1, a0, 618f
604:              bgeu         t4, s4, 615f
                  add          s11, a1, t4
                  nop
                  andi         a0, s9, -90
                  beq          a1, s2, 627f
                  nop
                  slli         s5, a5, 26
                  auipc        s10, 135031
                  sub          s9, tp, s10
                  srai         a1, s3, 14
                  slti         a1, s2, -1323
615:              sll          sp, s0, s1
                  beq          s9, a5, 622f
                  auipc        s3, 208375
618:              sub          t1, sp, a2
                  srl          a7, tp, t2
620:              sll          s5, s7, zero
                  slti         t1, t0, -1483
622:              slli         a1, gp, 23
                  sltu         a0, t2, s10
                  srl          t5, s9, a2
                  sub          s0, s3, a4
                  sltu         s4, s2, s2
627:              lui          s3, 868020
                  sltu         tp, s4, a0
                  srai         s11, s3, 0
                  bgeu         a6, s2, 632f
                  bltu         t6, zero, 647f
632:              bge          t3, s4, 650f
                  sltiu        t5, a7, -533
                  addi         a2, gp, -1449
                  sub          s7, s9, s9
                  bgeu         t0, t5, 649f
                  slli         s9, s1, 5
                  slt          a4, s9, s0
                  lui          a7, 589557
                  beq          s0, a7, 657f
                  addi         a0, a0, 32
                  sra          a1, t2, zero
                  and          t2, a7, s10
                  sub          a3, ra, a4
                  add          s1, t0, gp
                  and          s10, s7, a1
647:              slt          ra, s0, t2
                  and          zero, s5, s10
649:              or           tp, a0, t3
650:              sra          s5, a5, t3
                  addi         a0, s9, 795
                  slli         t5, sp, 19
                  srli         t2, a3, 0
                  srl          a4, a1, ra
                  sltu         s3, t2, a6
                  nop
657:              srl          zero, a7, t1
                  slti         ra, s2, -896
                  auipc        gp, 349688
                  bltu         gp, a5, 679f
                  bltu         s3, s7, 669f
                  beq          t6, t0, 666f
                  bne          s9, s6, 677f
                  sra          s3, s2, t3
                  bge          a3, s0, 681f
666:              slli         a5, a6, 23
                  addi         t1, a0, -973
                  beq          s9, gp, 673f
669:              lui          a2, 236352
                  blt          s7, s11, 680f
                  slt          t2, sp, a2
                  auipc        a2, 550004
673:              bne          zero, s2, 683f
                  xori         a2, a3, -1331
                  xor          t5, t3, a5
                  sra          s1, t2, s0
677:              sra          s5, s5, s11
                  bltu         a6, s6, 696f
679:              slti         t5, zero, 1409
680:              bne          s7, s4, 698f
681:              ori          gp, t2, 1523
                  slli         a6, s9, 2
683:              auipc        s1, 958422
                  slti         gp, s7, -669
                  andi         a1, s2, 1535
                  sltiu        s4, sp, -372
                  lui          a1, 668220
                  bgeu         s6, a3, 698f
                  sra          t2, t3, s1
                  sub          t1, t5, s3
                  sub          s10, s4, zero
                  ori          sp, s11, -171
                  nop
                  andi         a3, t6, 1307
                  srai         t5, t4, 26
696:              xori         s9, a0, -996
                  sub          t3, a1, s8
698:              srai         t4, a1, 0
                  and          s3, s9, a6
                  slt          t1, a6, s0
                  or           t4, ra, t2
                  nop
                  blt          s1, tp, 719f
                  addi         t3, s1, -1409
                  sltu         s10, s8, t0
                  srl          s5, t3, gp
                  bgeu         zero, s5, 725f
                  sub          s9, a2, a6
                  sra          t5, t4, a3
                  sltu         a1, t2, s7
                  sll          s9, t1, s3
                  bne          s1, s8, 729f
                  srli         t6, a1, 10
                  srl          a5, s7, s0
                  addi         t3, s7, 762
                  blt          t6, sp, 726f
                  bge          s7, t1, 727f
                  slli         s0, s9, 30
719:              beq          s4, gp, 725f
                  sll          s1, t6, a3
                  bne          s0, a0, 729f
                  bge          s0, s0, 726f
                  lui          t4, 2066
                  bltu         a2, s1, 740f
725:              and          s9, s4, a5
726:              slli         ra, sp, 25
727:              xor          t1, s6, s8
                  blt          s9, sp, 746f
729:              xor          t4, s5, a7
                  bltu         zero, s4, 743f
                  sra          s1, s4, s4
                  lui          gp, 986214
                  bge          t6, s6, 752f
                  nop
                  and          t6, s1, ra
                  addi         a4, s9, -1109
                  blt          a5, s6, 742f
                  sltu         s11, t6, s6
                  slt          a3, sp, s7
740:              sltiu        s3, a3, 318
                  beq          s5, s11, 759f
742:              xori         s3, t0, 1190
743:              sltu         a3, s5, t1
                  slli         a6, t0, 27
                  and          s1, s8, a5
746:              sltu         s1, s1, t1
                  xor          a3, s3, s4
                  bne          t2, zero, 766f
                  sub          gp, gp, s3
                  ori          a3, s4, -916
                  srl          a3, s0, s9
752:              srl          s1, zero, a1
                  slti         t0, t5, 1778
                  lui          s9, 208456
                  bne          a3, s7, 765f
                  lui          t6, 503787
                  bltu         s9, t0, 768f
                  xor          s0, a2, sp
759:              sll          t6, a0, a7
                  srli         tp, s0, 28
                  blt          s4, s4, 763f
                  bne          a6, t3, 772f
763:              slti         zero, t3, 444
                  srl          a4, s0, a7
765:              or           t2, s1, s1
766:              beq          s7, a7, 773f
                  slt          a6, s2, a4
768:              slt          t6, s0, t6
                  auipc        zero, 771403
                  sub          s11, t1, a5
                  xor          ra, ra, s3
772:              add          a0, s2, ra
773:              sltu         s3, t0, ra
                  bne          a2, t4, 793f
                  sltu         a7, a1, tp
                  bge          s9, s2, 796f
                  beq          s6, s5, 791f
                  slti         a6, a4, -365
                  srl          s10, s7, a0
                  slli         a6, t1, 7
                  andi         a6, a6, 1327
                  and          tp, s6, s6
                  auipc        a7, 396399
                  slli         gp, s9, 7
                  lui          s10, 906334
                  srli         a6, a7, 5
                  or           t0, s8, zero
                  blt          a5, t1, 803f
                  srl          t6, a0, s10
                  bltu         sp, ra, 802f
791:              slti         sp, s1, -1516
                  sll          s7, t6, a5
793:              srli         sp, ra, 7
                  lui          a1, 620630
                  srl          ra, sp, t3
796:              bne          a7, a3, 812f
                  or           s3, t0, tp
                  sltu         s5, a1, a6
                  or           t6, ra, t1
                  auipc        t1, 99417
                  bltu         s2, tp, 820f
802:              srai         s10, s5, 6
803:              bgeu         t1, sp, 805f
                  sra          a7, ra, s3
sub_4_12:         jal          t5, 11f
0:                jal          ra, 2f
1:                jal          a6, 15f
2:                jal          ra, 8f
3:                jal          t1, 1b
4:                jal          t2, 0b
5:                jal          t1, 12f
6:                jal          a1, 10f
7:                jal          t5, 6b
8:                jal          ra, 14f
9:                jal          ra, 3b
10:               jal          ra, 16f
11:               jal          t0, 4b
12:               jal          s7, 13f
13:               jal          ra, 9b
14:               jal          ra, 5b
15:               jal          s0, 7b
16:               nop
805:              xor          tp, a7, t1
                  auipc        t2, 197497
                  blt          tp, a5, 809f
                  bgeu         sp, t6, 817f
809:              or           s4, a3, s3
                  nop
                  bge          s7, gp, 813f
812:              sra          s4, s3, a5
813:              slti         t3, ra, 515
                  sltiu        s0, s3, -543
                  nop
                  addi         ra, s1, -1909
817:              bltu         t0, s8, 836f
                  nop
                  srli         t4, zero, 28
820:              and          sp, s11, s2
                  blt          a7, t4, 836f
                  bne          s5, t3, 841f
                  srai         t3, a0, 29
                  sra          t6, zero, s1
                  and          sp, t4, t6
                  beq          a0, t1, 836f
                  bltu         s1, s11, 832f
                  sltiu        a3, sp, 1966
                  or           a3, a6, tp
                  slt          a5, s10, s6
                  and          tp, s3, t3
832:              or           a7, a2, t3
                  sra          tp, s3, s4
                  andi         t4, a1, -1481
                  bne          t0, s11, 845f
836:              nop
                  xor          s10, sp, s9
                  sub          gp, s11, a4
                  lui          sp, 410849
                  srl          a7, a1, t3
841:              add          a5, s8, s5
                  or           t3, s1, a4
                  auipc        t2, 634641
                  xor          s7, t2, s6
845:              lui          t3, 248119
                  nop
                  andi         s0, s11, 1250
                  lui          t2, 228296
                  nop
                  xori         a6, s10, 1799
                  blt          s8, t1, 861f
                  bltu         a2, s6, 869f
                  slti         a7, a5, -492
                  bge          t5, a1, 872f
                  bgeu         t5, a3, 869f
                  beq          s3, s9, 874f
                  andi         s10, t1, 1207
                  bne          t1, tp, 874f
                  srl          s0, s4, t5
                  and          t0, t1, s0
861:              auipc        a7, 714049
                  sub          s7, t4, a1
                  or           s11, tp, s10
                  bgeu         t3, t2, 871f
                  slt          a5, s1, s6
                  sra          a2, t6, a0
                  addi         gp, a3, 1688
                  bltu         s0, s3, 886f
869:              or           s0, gp, s6
                  srli         s1, t3, 6
871:              or           s7, a2, a6
872:              srli         a6, s8, 31
                  slt          t1, t4, t0
874:              srai         a0, t0, 9
                  sra          a5, ra, a6
                  sub          s9, zero, s2
                  auipc        t1, 320904
                  bne          t3, a0, 898f
                  slt          a5, s7, s11
                  nop
                  add          t1, t2, a0
                  slti         s0, s9, -193
sub_4_4:          jal          t5, 1f
0:                jal          ra, 15f
1:                jal          a7, 18f
2:                jal          ra, 20f
3:                jal          t4, 6f
4:                jal          t2, 16f
5:                jal          ra, 0b
6:                jal          ra, 2b
7:                jal          ra, 11f
8:                jal          s7, 19f
9:                jal          t0, 10f
10:               jal          ra, 22f
11:               jal          ra, 8b
12:               jal          ra, 21f
13:               jal          t1, 5b
14:               jal          ra, 12b
15:               jal          a1, 7b
16:               jal          ra, 13b
17:               jal          ra, 9b
18:               jal          ra, 14b
19:               jal          s4, 17b
20:               jal          gp, 4b
21:               jal          ra, 3b
22:               jal          t0, 23f
23:               xor          zero, s0, zero
                  lui          sp, 772584
                  xori         s10, gp, -1004
                  xor          a2, a2, t1
886:              auipc        t2, 1002361
                  blt          t1, t1, 895f
                  bne          ra, s10, 890f
                  slli         s11, s1, 11
890:              srai         tp, t4, 23
                  xori         s10, a5, -1943
                  slt          t0, t5, t5
                  sll          a1, s0, s2
                  sra          t1, s0, s9
895:              slti         s1, t4, 49
                  xor          a5, t0, a1
                  or           s1, s10, s9
898:              slli         s1, t4, 21
                  slti         a4, s2, -1548
                  lui          t6, 969899
                  sra          s7, s2, s9
                  sltu         s9, s0, s4
                  srai         a3, s0, 4
                  bne          t2, ra, 906f
                  andi         ra, a6, -521
906:              sll          s5, s2, t5
                  lw           t5, 4(s2)
                  slt          t2, a6, s4
                  andi         a3, sp, -1368
                  sltiu        a6, gp, -1764
                  addi         s2, s2, 60
                  srli         a4, s4, 25
                  auipc        s4, 142134
                  sub          a7, t4, sp
                  slti         s5, s8, 1469
1343:             addi x9, x30, 1
1343:             jalr x9, x9, 0
sub_1:            sub          t1, zero, a6
                  bgeu         a1, s2, sub_1_stack_p
                  addi         t1, a5, -1877
sub_1_stack_p:    addi         s2, s2, -64
                  andi         gp, gp, 855
                  or           a0, t4, s7
                  sw           t5, 4(s2)
                  srli         t1, a2, 19
                  srai         s0, a0, 19
                  andi         t5, a0, 1992
                  sra          t4, s4, s7
                  bgeu         a5, s3, sub_1_j3 #branch to jump instr
                  xor          t6, a6, s3
                  auipc        a1, 51201
                  sltiu        t2, a1, -511
                  sltiu        s9, gp, -613
                  andi         a4, s7, -573
                  addi         s4, s11, -395
                  andi         a6, a5, -979
sub_1_j3:         jal          t5, sub_3 #jump sub_1 -> sub_3
sub_1_1:          jal          t5, 11f
0:                jal          ra, 9f
1:                jal          s10, 15f
2:                jal          ra, 14f
3:                jal          ra, 10f
4:                jal          t1, 1b
5:                jal          t1, 16f
6:                jal          sp, 13f
7:                jal          t1, 3b
8:                jal          ra, 6b
9:                jal          ra, 17f
10:               jal          ra, 4b
11:               jal          ra, 8b
12:               jal          t1, 7b
13:               jal          ra, 2b
14:               jal          ra, 12b
15:               jal          t0, 0b
16:               jal          ra, 18f
17:               jal          ra, 5b
18:               andi         s4, t4, 1058
sub_1_0:          jal          t5, 2f
0:                jal          t1, 1f
1:                jal          ra, 3f
2:                jal          ra, 5f
3:                jal          t1, 9f
4:                jal          ra, 11f
5:                jal          ra, 10f
6:                jal          ra, 8f
7:                jal          t1, 6b
8:                jal          a3, 0b
9:                jal          t4, 4b
10:               jal          ra, 7b
11:               srai         a4, s6, 19
                  and          ra, a3, s6
                  bne          s2, gp, 8f
                  add          zero, tp, s0
                  andi         t1, t6, 689
                  xor          t4, t3, a2
                  ori          s4, s2, -1748
                  xor          a6, s0, s8
                  srli         zero, t6, 1
8:                srl          s9, s11, ra
                  slli         s3, sp, 3
                  or           a7, s1, s10
                  bge          t1, t6, 18f
                  xori         s1, t5, 1812
                  srai         a7, gp, 0
                  nop
                  bltu         s11, tp, 21f
                  bge          t6, s6, 34f
                  srai         t0, a4, 11
18:               addi         s10, s10, -1371
                  srai         a5, t1, 22
                  andi         t5, s10, 1663
21:               srli         s11, t6, 5
                  bgeu         s2, s10, 23f
23:               bne          t2, s10, 31f
                  andi         ra, a2, 1922
                  bgeu         s10, s0, 37f
                  sra          s4, s3, a1
                  slli         t4, s1, 23
                  andi         s10, a3, 298
                  and          t1, s6, t3
                  bge          s2, a7, 44f
31:               bgeu         a1, t0, 34f
                  srai         s10, t0, 18
                  addi         t5, t0, 607
34:               slli         s9, s3, 3
                  sll          t1, s4, t6
                  xori         t2, t1, 1597
37:               beq          t4, ra, 40f
                  bne          s10, s5, 56f
                  andi         t5, t4, -30
40:               nop
                  sll          a2, a2, a7
                  slt          ra, a7, a1
                  nop
44:               sltiu        s1, ra, -104
                  add          a1, zero, s11
                  bltu         t5, s9, 50f
                  ori          s9, a0, 392
                  bgeu         a3, s0, 63f
                  sltu         s5, gp, a7
50:               and          a4, ra, a1
                  slli         t4, s10, 31
                  blt          s11, a0, 54f
                  srl          s7, s7, s2
54:               or           t0, a4, s9
                  bgeu         a0, s5, 63f
56:               sltu         a0, s1, s4
                  slt          s11, sp, a0
                  sub          a5, a7, a6
                  ori          s3, s4, 1145
                  nop
                  bgeu         s1, t3, 77f
                  beq          s8, s10, 81f
63:               and          s1, a3, a3
                  sub          tp, t5, gp
                  and          sp, t1, a2
                  xori         a3, gp, 1167
                  xori         t6, t1, 271
                  or           t5, s11, a1
                  auipc        a3, 842470
                  xor          a6, s7, s3
                  srai         s0, zero, 18
                  bgeu         s2, s7, 79f
                  sll          t2, tp, sp
                  slt          zero, sp, sp
                  ori          t1, t2, 902
                  bge          s3, a3, 90f
77:               bge          t2, zero, 89f
                  srl          s9, a6, s7
79:               sltu         t6, zero, a6
                  slt          t5, s7, a3
81:               sub          ra, s7, s4
                  xori         s1, a7, -766
                  beq          t1, t2, 101f
                  bne          a1, s2, 100f
                  srl          ra, s0, t4
                  or           s11, s10, s0
                  add          tp, t3, s4
                  xor          t3, s10, t3
89:               nop
90:               srli         t5, t0, 18
                  slti         a3, s4, 1073
                  add          a1, s3, sp
                  sll          s10, sp, t2
                  slti         t2, a2, -1514
                  sltu         s9, t4, s8
                  nop
                  sra          sp, s3, s0
                  or           t6, a3, s10
                  xori         t2, t0, -2043
100:              addi         a1, a0, 1557
101:              xori         a2, a1, -523
                  bge          s3, s4, 118f
                  lui          s9, 125216
                  slt          a1, s3, s11
                  sub          ra, s2, s11
                  and          s3, a2, a7
                  slt          s11, t4, a3
                  addi         a2, t0, -59
                  sub          a1, s10, a5
                  ori          a7, s2, -984
                  srli         s10, tp, 11
                  ori          t6, s0, -1573
                  srl          s10, a4, s9
                  or           t3, s5, s4
                  ori          t4, a6, -2045
                  sub          t4, s1, t5
                  or           s1, s0, t1
118:              nop
                  sra          a3, s1, a6
                  bne          s11, t2, 123f
                  bge          t6, a3, 127f
                  lui          t5, 605772
123:              srai         t3, t6, 9
                  lui          a4, 828706
                  or           s4, s0, a4
                  sll          s10, t2, s1
127:              xor          a6, t5, s10
                  auipc        a4, 415390
                  sll          a1, t2, s2
                  bgeu         sp, zero, 142f
                  bge          a6, sp, 148f
                  bltu         t0, a6, 142f
                  andi         t2, t0, -917
                  slt          s4, s6, zero
                  ori          t3, s10, -113
                  xori         a2, s1, -1649
                  sra          a2, zero, a1
                  ori          t1, a5, 911
                  blt          s3, t4, 147f
                  slt          a2, s3, a7
                  bltu         s6, s0, 143f
142:              addi         s10, t4, 1008
143:              addi         t2, t6, 738
                  srai         a1, s5, 18
                  bge          tp, gp, 148f
                  bge          tp, s4, 148f
147:              slli         s11, a0, 27
148:              nop
                  addi         s4, a4, -2037
                  xor          t0, t3, a5
                  lw           t5, 4(s2)
                  auipc        s10, 297118
                  addi         s2, s2, 64
                  srl          s5, s0, t4
                  xori         s11, s0, 169
                  auipc        a2, 704412
210:              addi x15, x30, 1
210:              jalr x15, x15, 0
sub_2:            add          s5, sp, tp
                  slli         zero, t2, 3
                  addi         s2, s2, -8
                  sw           t5, 4(s2)
                  auipc        s3, 1018359
                  auipc        t1, 981
                  slti         t3, s11, 52
                  add          t3, a1, s0
                  srl          a7, a1, s6
sub_2_4:          jal          t5, 1f
0:                jal          ra, 7f
1:                jal          ra, 12f
2:                jal          s4, 0b
3:                jal          t1, 13f
4:                jal          ra, 8f
5:                jal          ra, 3b
6:                jal          ra, 14f
7:                jal          t1, 11f
8:                jal          s5, 9f
9:                jal          sp, 2b
10:               jal          ra, 6b
11:               jal          t0, 5b
12:               jal          t1, 4b
13:               jal          ra, 10b
14:               add          s0, gp, sp
sub_2_1:          jal          t5, 5f
0:                jal          t1, 6f
1:                jal          ra, 9f
2:                jal          t1, 7f
3:                jal          t0, 14f
4:                jal          ra, 8f
5:                jal          s3, 13f
6:                jal          a3, 11f
7:                jal          a0, 1b
8:                jal          t5, 10f
9:                jal          ra, 3b
10:               jal          a4, 2b
11:               jal          ra, 4b
12:               jal          t1, 0b
13:               jal          t4, 12b
14:               slti         s11, t4, -849
sub_2_5:          jal          t5, 3f
0:                jal          ra, 4f
1:                jal          s5, 2f
2:                jal          t1, 12f
3:                jal          ra, 13f
4:                jal          ra, 1b
5:                jal          ra, 7f
6:                jal          ra, 5b
7:                jal          ra, 9f
8:                jal          a4, 10f
9:                jal          t1, 8b
10:               jal          ra, 0b
11:               jal          sp, 6b
12:               jal          sp, 14f
13:               jal          t2, 11b
14:               xor          gp, t2, gp
sub_2_2:          jal          t5, 9f
0:                jal          ra, 5f
1:                jal          t1, 3f
2:                jal          ra, 1b
3:                jal          ra, 11f
4:                jal          ra, 13f
5:                jal          t6, 6f
6:                jal          ra, 8f
7:                jal          ra, 0b
8:                jal          ra, 4b
9:                jal          ra, 10f
10:               jal          s9, 2b
11:               jal          ra, 12f
12:               jal          ra, 7b
13:               xor          s4, s2, s11
sub_2_0:          jal          t5, 9f
0:                jal          t1, 22f
1:                jal          ra, 10f
2:                jal          a5, 12f
3:                jal          t1, 7f
4:                jal          t1, 13f
5:                jal          t1, 21f
6:                jal          t1, 20f
7:                jal          ra, 18f
8:                jal          s4, 19f
9:                jal          ra, 15f
10:               jal          tp, 17f
11:               jal          s0, 8b
12:               jal          ra, 4b
13:               jal          t1, 0b
14:               jal          t1, 5b
15:               jal          gp, 6b
16:               jal          t1, 14b
17:               jal          ra, 2b
18:               jal          ra, 16b
19:               jal          t1, 3b
20:               jal          ra, 11b
21:               jal          t1, 1b
22:               srli         s11, t1, 29
                  auipc        s11, 325306
                  lui          a3, 1025758
                  xori         t5, s5, -73
                  or           sp, gp, s7
                  srai         s3, s7, 7
                  slti         a2, t6, 1014
                  or           t6, zero, s9
                  slli         ra, a1, 21
                  srl          a6, a7, t3
                  bne          s5, t6, 22f
                  ori          ra, tp, -641
                  slt          a2, s10, s11
                  lui          a0, 246046
                  bne          t1, t4, 25f
                  ori          t4, s8, 1909
                  srli         s3, a0, 16
                  auipc        a0, 772681
                  addi         s0, gp, -322
                  bltu         t0, t5, 19f
19:               add          a4, a1, a1
                  xor          s9, t5, s9
                  bgeu         s7, s8, 35f
22:               sra          s10, a1, t5
                  beq          t3, t5, 33f
                  blt          t3, tp, 41f
25:               xor          zero, a7, gp
                  or           s9, s2, a5
                  bne          t0, s6, 30f
                  auipc        tp, 203558
                  slti         a2, a3, 380
30:               bge          a4, s8, 31f
31:               and          s4, s8, s0
                  and          a6, t0, t4
33:               sltiu        t1, a5, -764
                  sub          a7, s1, s9
35:               xori         zero, a1, -1632
                  bge          zero, s11, 45f
                  srai         gp, s3, 7
                  bne          s0, s11, 43f
                  bne          s5, s9, 46f
                  xor          t4, s2, t1
41:               bge          s0, t4, 51f
                  srai         s10, t6, 4
43:               srl          s1, a5, t6
                  srl          t0, a7, t2
45:               srl          s9, s4, a0
46:               bgeu         gp, s8, 53f
                  xor          gp, a6, a4
                  srai         gp, a2, 29
                  add          s7, s3, s1
                  sub          t6, s0, s4
51:               xor          s0, s6, a3
                  and          a6, a5, t4
53:               andi         s0, a5, 867
                  sltu         s1, a5, ra
                  bltu         s10, tp, 56f
56:               ori          tp, s2, 1231
                  nop
                  add          zero, tp, s1
                  addi         s7, s9, 1353
                  slli         a4, sp, 27
                  sltiu        sp, a7, 1668
                  sltiu        s1, s3, -1110
                  blt          t4, tp, 80f
                  and          s4, a2, ra
                  bge          t4, t2, 66f
66:               or           tp, s7, a6
                  slli         a6, a5, 23
                  slt          s3, s0, s1
                  bge          s6, a0, 89f
                  bgeu         s2, ra, 86f
sub_2_3:          jal          t5, 2f
0:                jal          ra, 8f
1:                jal          ra, 11f
2:                jal          t1, 9f
3:                jal          s1, 4f
4:                jal          ra, 5f
5:                jal          s3, 1b
6:                jal          t1, 0b
7:                jal          s4, 6b
8:                jal          ra, 10f
9:                jal          t5, 7b
10:               jal          t1, 3b
11:               srai         tp, s6, 29
                  slti         s5, s0, -1136
                  sll          tp, s7, a5
                  andi         s11, s5, -1365
                  sltiu        t3, s9, -414
                  add          a6, a7, s10
                  add          ra, s1, a7
                  xori         a5, t2, 1772
                  sra          s3, a0, a2
                  or           a6, gp, a5
80:               srl          a3, s3, a1
                  blt          a7, s10, 100f
                  nop
                  and          t4, a6, s10
                  sll          s11, s5, s9
                  srl          a7, a6, s0
86:               blt          tp, t3, 96f
                  sltiu        tp, t4, -1179
                  or           a0, s6, t0
89:               sub          t3, a3, t5
                  auipc        t0, 136396
                  bgeu         tp, sp, 97f
                  xori         s10, s1, -934
                  andi         s10, s2, 626
                  srai         t5, tp, 4
                  lui          s3, 27431
96:               ori          a1, s11, 1791
97:               sll          s1, zero, t3
                  lui          a4, 89100
                  blt          a4, tp, 118f
100:              slt          zero, tp, a6
                  sll          s11, s2, a5
                  bltu         t5, s11, 119f
                  andi         s3, t4, -2011
                  slti         t1, a2, 1806
                  blt          zero, t1, 111f
                  nop
                  and          a7, ra, a7
                  bltu         t4, s8, 123f
                  beq          t4, t4, 122f
                  xori         a6, a4, -1769
111:              bne          s1, t0, 125f
                  xori         s5, s2, 1911
                  sltu         zero, gp, ra
                  sltiu        s10, a2, 248
                  bltu         s0, t1, 121f
                  xori         t1, a2, 712
                  slt          t1, a6, s4
118:              ori          sp, t5, 272
119:              sll          sp, s2, tp
                  slti         t6, s6, 1202
121:              sltu         tp, t6, ra
122:              blt          s8, t0, 137f
123:              andi         a4, s2, -1729
                  auipc        a1, 755488
125:              sra          s3, s5, sp
                  bltu         s1, a6, 130f
                  sltiu        ra, tp, 521
                  auipc        s11, 181478
                  nop
130:              slti         t1, tp, -11
                  or           a7, s5, s10
                  auipc        a3, 570998
                  bge          s4, s11, 139f
                  bgeu         s1, s9, 151f
                  srl          t6, s7, t5
                  bge          a6, gp, 146f
137:              lui          s4, 167384
                  andi         a4, a5, 102
139:              beq          s9, a7, 140f
140:              bge          s7, s9, 157f
                  srai         a1, a1, 19
                  beq          zero, s9, 157f
                  bltu         s5, s10, 149f
                  sltiu        a1, a4, -524
                  bgeu         tp, s5, 157f
146:              bgeu         zero, a0, 147f
147:              add          t3, a4, t0
                  bltu         a0, a2, 153f
149:              bltu         t6, t1, 155f
                  slt          t6, s2, s1
151:              srl          a1, s1, s5
                  auipc        s11, 5511
153:              and          t2, a3, s10
                  beq          s5, t2, 168f
155:              addi         a7, ra, 1158
                  add          s3, s0, gp
157:              ori          s3, s7, -462
                  ori          a4, s5, -362
                  slt          a2, s0, a4
                  ori          t2, s3, 172
                  srli         a1, a2, 21
                  srl          a4, s4, t2
                  andi         a3, s10, -827
                  sltiu        tp, zero, -1436
                  bgeu         a1, t0, 175f
                  srli         a4, gp, 2
                  sltiu        a3, s3, -869
168:              ori          s4, gp, 1999
                  slli         t2, sp, 26
                  andi         s7, s5, 1533
                  sub          t5, a7, s11
                  bltu         a6, a1, 191f
                  sub          t4, sp, t0
                  addi         a3, t0, -1643
175:              srli         a0, s10, 26
                  lui          gp, 763038
                  andi         t2, s3, -70
                  srl          t6, s11, t2
                  ori          t1, a2, -1904
                  nop
                  sltiu        a4, t0, -1212
                  srl          a7, t3, a4
                  sra          t4, a1, t3
                  bne          s3, s11, 193f
                  sltu         s1, t3, s3
                  ori          t3, s2, -1349
                  beq          gp, s6, 201f
                  nop
                  addi         tp, s2, -569
                  bge          a6, a1, 205f
191:              bge          s2, a0, 204f
                  sub          s4, s6, t2
193:              sltiu        s7, s6, -1292
                  blt          s8, s8, 214f
                  auipc        s0, 613517
                  sll          t3, zero, a0
                  xor          s3, t5, a6
                  nop
                  slli         s3, s7, 10
                  sub          a0, a3, a5
201:              srli         s9, gp, 31
                  and          a0, t5, tp
                  bne          s6, s2, 206f
204:              blt          a5, t0, 208f
205:              add          s10, s6, tp
206:              slli         s0, s1, 16
                  bgeu         s8, a0, 223f
208:              beq          s8, t5, 215f
                  bltu         t2, s2, 219f
                  add          s5, t2, a6
                  beq          s1, t0, 224f
                  add          s1, s11, s0
                  srai         a2, a3, 20
214:              xor          a2, a6, a1
215:              sra          a6, s11, gp
                  xori         t1, t6, 11
                  slti         t4, a5, -352
                  bne          a2, a7, 219f
219:              srli         s5, t1, 21
                  addi         zero, t0, 1657
                  auipc        s1, 630116
                  sltu         s11, t6, s3
223:              srai         a0, a4, 7
224:              blt          zero, t0, 241f
                  add          s3, s5, s11
                  addi         s9, sp, 348
                  lui          s1, 302909
                  xori         t0, gp, 1072
                  sll          a7, t2, a7
                  beq          s11, s7, 231f
231:              ori          t4, a6, -905
                  nop
                  blt          t0, t1, 252f
                  bge          sp, t0, 241f
                  bge          t5, s8, 242f
                  srai         a3, t5, 20
                  xori         s0, t0, 407
                  andi         a1, s10, 153
                  or           t4, s11, a1
                  slt          gp, t4, s10
241:              xor          gp, s4, t0
242:              bltu         s0, t5, 259f
                  addi         t5, sp, -1785
                  andi         ra, sp, -70
                  sra          zero, zero, s2
                  srai         s3, zero, 5
                  sltiu        t0, a6, -1871
                  sltu         a4, t3, a5
                  sltu         t4, t5, s1
                  ori          s9, s1, 398
                  ori          t6, gp, -1372
252:              bltu         s9, a2, 261f
                  bge          s3, s6, 268f
                  srli         t0, tp, 11
                  or           s0, a1, a3
                  bne          a0, s10, 260f
                  xor          t1, a2, s5
                  bge          a1, a6, 277f
259:              slli         s5, s0, 3
260:              slli         t5, s2, 3
261:              srl          s5, a6, a4
                  addi         t2, sp, -1917
                  slt          s11, a2, a3
                  add          sp, s11, a5
                  or           a1, a1, s10
                  bge          a1, s10, 272f
                  bgeu         s1, tp, 270f
268:              srai         a3, gp, 0
                  lui          t4, 95569
270:              slli         t3, s1, 11
                  lui          s1, 384940
272:              ori          t6, s0, 672
                  andi         s5, t1, -1890
                  sra          s10, a6, s4
                  bne          a2, s7, 289f
                  bge          t6, a2, 291f
277:              andi         a6, a6, -136
                  srai         a4, ra, 6
                  lui          a0, 3643
                  auipc        s11, 385383
                  xori         t6, a6, -1759
                  bgeu         s10, t3, 289f
                  srli         s7, ra, 2
                  blt          a1, zero, 297f
                  sub          t5, ra, t5
                  bgeu         s8, a1, 296f
                  ori          s11, t1, 1087
                  andi         a6, zero, -69
289:              sub          s0, a7, s6
                  sltiu        t3, tp, -563
291:              bne          a7, ra, 301f
                  sra          s1, a6, s3
                  bltu         s8, s5, 298f
                  srl          t1, a7, tp
                  nop
296:              sub          s5, tp, a0
297:              srl          t4, a7, a2
298:              xor          s7, s6, sp
                  sub          a3, s9, a2
                  andi         t4, a5, 331
301:              xori         t6, s6, 748
                  blt          a0, t2, 314f
                  lui          t2, 47027
                  bge          a4, sp, 321f
                  blt          t0, t3, 321f
                  bltu         tp, s10, 307f
307:              add          tp, s0, sp
                  nop
                  andi         a7, t0, -1261
                  andi         tp, s2, -509
                  sub          s11, s0, tp
                  sra          zero, s1, sp
                  bgeu         t4, a2, 333f
314:              bltu         t6, ra, 328f
                  bge          s11, a6, 328f
                  addi         s9, gp, 76
                  beq          s5, a2, 318f
318:              srli         s7, ra, 14
                  sub          s0, s8, s7
                  beq          s9, t4, 330f
321:              sltu         s10, gp, s10
                  blt          s2, t5, 323f
323:              ori          s7, s3, -1286
                  ori          s5, s4, -1428
                  xor          s1, zero, t2
                  bge          t4, s8, 344f
                  sub          a1, a0, s4
328:              bltu         s11, s7, 344f
                  xori         s9, s3, -548
330:              sltiu        s0, s2, -1497
                  sll          a5, s8, s8
                  addi         s9, t0, -1129
                  add          t4, s3, s1
                  xor          a2, s8, s10
                  and          t1, s3, t3
                  srl          t1, a1, a2
                  nop
                  sub          a3, zero, sp
                  sltiu        a2, t6, 663
sub_2_j4:         jal          t5, sub_3 #jump sub_2 -> sub_3
                  slti         a5, s5, -225
                  srl          t5, t2, s8
333:              sltu         s7, s0, s4
                  or           t4, t5, s4
                  bne          a4, a7, 341f
                  beq          ra, s2, 337f
337:              lui          s10, 621713
                  slti         ra, t5, 1265
                  slt          s3, a1, s4
                  add          a6, s3, t5
341:              addi         a0, a3, 148
                  lui          sp, 529769
                  and          zero, s0, s8
344:              auipc        tp, 801093
                  lw           t5, 4(s2)
                  sltu         t1, t2, t6
                  nop
                  slti         s10, s3, -1956
                  addi         s2, s2, 8
                  srai         sp, tp, 6
470:              addi x13, x30, 1
470:              jalr x13, x13, 0
sub_5:            sra          s0, a6, tp
                  addi         s2, s2, -36
                  slti         a2, a3, 1940
                  sub          s1, a6, a4
                  sw           t5, 4(s2)
                  xori         zero, t0, 1454
                  and          s5, a1, s0
sub_5_27:         jal          t5, 18f
0:                jal          tp, 14f
1:                jal          ra, 11f
2:                jal          ra, 5f
3:                jal          s3, 16f
4:                jal          ra, 8f
5:                jal          t1, 15f
6:                jal          t0, 10f
7:                jal          ra, 20f
8:                jal          t1, 21f
9:                jal          ra, 1b
10:               jal          ra, 17f
11:               jal          a7, 3b
12:               jal          ra, 19f
13:               jal          sp, 12b
14:               jal          t5, 6b
15:               jal          gp, 9b
16:               jal          ra, 13b
17:               jal          s5, 22f
18:               jal          t1, 0b
19:               jal          s9, 4b
20:               jal          t1, 23f
21:               jal          gp, 7b
22:               jal          ra, 2b
23:               ori          a6, ra, -1064
sub_5_28:         jal          t5, 2f
0:                jal          gp, 14f
1:                jal          ra, 15f
2:                jal          t1, 0b
3:                jal          t1, 13f
4:                jal          s11, 3b
5:                jal          ra, 9f
6:                jal          t2, 11f
7:                jal          ra, 10f
8:                jal          t2, 7b
9:                jal          ra, 6b
10:               jal          ra, 5b
11:               jal          ra, 1b
12:               jal          s3, 8b
13:               jal          s5, 12b
14:               jal          ra, 4b
15:               and          zero, a4, s0
sub_5_21:         jal          t5, 4f
0:                jal          ra, 5f
1:                jal          s4, 9f
2:                jal          gp, 3f
3:                jal          a0, 8f
4:                jal          ra, 7f
5:                jal          ra, 6f
6:                jal          ra, 2b
7:                jal          ra, 0b
8:                jal          ra, 1b
9:                jal          ra, 10f
10:               sub          t0, s2, t0
sub_5_2:          jal          t5, 8f
0:                jal          ra, 2f
1:                jal          ra, 21f
2:                jal          ra, 18f
3:                jal          ra, 9f
4:                jal          ra, 11f
5:                jal          ra, 19f
6:                jal          ra, 4b
7:                jal          ra, 5b
8:                jal          a7, 6b
9:                jal          t1, 10f
10:               jal          ra, 0b
11:               jal          t1, 13f
12:               jal          ra, 22f
13:               jal          t1, 24f
14:               jal          t1, 17f
15:               jal          ra, 23f
16:               jal          ra, 14b
17:               jal          ra, 20f
18:               jal          t1, 15b
19:               jal          ra, 12b
20:               jal          ra, 1b
21:               jal          t1, 3b
22:               jal          t1, 25f
23:               jal          ra, 7b
24:               jal          ra, 16b
25:               andi         s11, s8, -628
sub_5_9:          jal          t5, 7f
0:                jal          ra, 8f
1:                jal          ra, 4f
2:                jal          ra, 9f
3:                jal          sp, 16f
4:                jal          ra, 14f
5:                jal          t1, 20f
6:                jal          ra, 17f
7:                jal          sp, 5b
8:                jal          ra, 21f
9:                jal          t5, 15f
10:               jal          t1, 13f
11:               jal          sp, 12f
12:               jal          ra, 23f
13:               jal          ra, 11b
14:               jal          ra, 3b
15:               jal          a1, 10b
16:               jal          t1, 0b
17:               jal          s0, 18f
18:               jal          a1, 19f
19:               jal          ra, 1b
20:               jal          s4, 6b
21:               jal          t1, 22f
22:               jal          s3, 2b
23:               slli         t6, s1, 12
sub_5_11:         jal          t5, 8f
0:                jal          ra, 15f
1:                jal          t1, 3f
2:                jal          s5, 6f
3:                jal          ra, 16f
4:                jal          a1, 26f
5:                jal          t6, 11f
6:                jal          ra, 19f
7:                jal          t1, 20f
8:                jal          ra, 7b
9:                jal          t1, 21f
10:               jal          ra, 23f
11:               jal          t1, 24f
12:               jal          ra, 14f
13:               jal          ra, 9b
14:               jal          ra, 13b
15:               jal          a7, 4b
16:               jal          ra, 10b
17:               jal          sp, 2b
18:               jal          ra, 25f
19:               jal          t1, 18b
20:               jal          gp, 12b
21:               jal          ra, 1b
22:               jal          tp, 17b
23:               jal          ra, 22b
24:               jal          t1, 0b
25:               jal          a1, 5b
26:               sltu         sp, a2, t4
sub_5_20:         jal          t5, 12f
0:                jal          ra, 18f
1:                jal          s3, 7f
2:                jal          a0, 4f
3:                jal          ra, 0b
4:                jal          t1, 8f
5:                jal          s7, 19f
6:                jal          ra, 11f
7:                jal          a3, 9f
8:                jal          t1, 5b
9:                jal          t0, 10f
10:               jal          t3, 14f
11:               jal          t4, 1b
12:               jal          t1, 6b
13:               jal          ra, 15f
14:               jal          sp, 13b
15:               jal          ra, 17f
16:               jal          s11, 3b
17:               jal          ra, 16b
18:               jal          t0, 2b
19:               andi         s10, a1, -848
sub_5_16:         jal          t5, 15f
0:                jal          ra, 8f
1:                jal          t1, 5f
2:                jal          sp, 7f
3:                jal          s11, 12f
4:                jal          ra, 16f
5:                jal          ra, 3b
6:                jal          ra, 0b
7:                jal          t1, 9f
8:                jal          ra, 19f
9:                jal          ra, 21f
10:               jal          ra, 1b
11:               jal          ra, 6b
12:               jal          ra, 24f
13:               jal          ra, 17f
14:               jal          ra, 10b
15:               jal          ra, 13b
16:               jal          ra, 11b
17:               jal          ra, 4b
18:               jal          ra, 14b
19:               jal          ra, 18b
20:               jal          sp, 25f
21:               jal          t1, 26f
22:               jal          ra, 23f
23:               jal          a3, 2b
24:               jal          ra, 20b
25:               jal          t1, 22b
26:               sub          s10, a3, s10
sub_5_18:         jal          t5, 2f
0:                jal          sp, 20f
1:                jal          t1, 11f
2:                jal          ra, 0b
3:                jal          s1, 19f
4:                jal          a5, 12f
5:                jal          ra, 24f
6:                jal          ra, 17f
7:                jal          s1, 6b
8:                jal          ra, 7b
9:                jal          ra, 25f
10:               jal          ra, 5b
11:               jal          t1, 16f
12:               jal          t5, 21f
13:               jal          s4, 22f
14:               jal          t1, 8b
15:               jal          t1, 9b
16:               jal          ra, 14b
17:               jal          ra, 23f
18:               jal          ra, 10b
19:               jal          ra, 18b
20:               jal          ra, 1b
21:               jal          t1, 13b
22:               jal          ra, 15b
23:               jal          ra, 3b
24:               jal          s10, 4b
25:               add          gp, s0, s10
sub_5_0:          jal          t5, 18f
0:                jal          ra, 15f
1:                jal          tp, 16f
2:                jal          t1, 5f
3:                jal          s10, 4f
4:                jal          ra, 0b
5:                jal          tp, 1b
6:                jal          ra, 11f
7:                jal          ra, 19f
8:                jal          ra, 20f
9:                jal          t1, 13f
10:               jal          s10, 9b
11:               jal          ra, 21f
12:               jal          ra, 2b
13:               jal          s9, 3b
14:               jal          s11, 22f
15:               jal          ra, 6b
16:               jal          ra, 8b
17:               jal          ra, 14b
18:               jal          ra, 10b
19:               jal          ra, 17b
20:               jal          a0, 7b
21:               jal          a7, 12b
22:               andi         a0, s2, -1836
sub_5_12:         jal          t5, 0f
0:                jal          s10, 7f
1:                jal          ra, 6f
2:                jal          ra, 11f
3:                jal          ra, 8f
4:                jal          ra, 5f
5:                jal          ra, 14f
6:                jal          t1, 12f
7:                jal          a7, 9f
8:                jal          tp, 16f
9:                jal          t1, 10f
10:               jal          ra, 3b
11:               jal          ra, 13f
12:               jal          ra, 17f
13:               jal          s4, 15f
14:               jal          ra, 2b
15:               jal          t0, 1b
16:               jal          t5, 4b
17:               or           a5, s4, a5
sub_5_1:          jal          t5, 1f
0:                jal          ra, 11f
1:                jal          ra, 0b
2:                jal          ra, 7f
3:                jal          s4, 10f
4:                jal          ra, 13f
5:                jal          ra, 2b
6:                jal          a7, 4b
7:                jal          ra, 3b
8:                jal          t3, 14f
9:                jal          sp, 5b
10:               jal          t2, 6b
11:               jal          tp, 12f
12:               jal          ra, 9b
13:               jal          ra, 8b
14:               sll          a4, s5, t3
sub_5_5:          jal          t5, 9f
0:                jal          s10, 2f
1:                jal          t1, 6f
2:                jal          ra, 11f
3:                jal          t1, 8f
4:                jal          a2, 10f
5:                jal          t1, 13f
6:                jal          sp, 18f
7:                jal          ra, 20f
8:                jal          t1, 16f
9:                jal          tp, 17f
10:               jal          t1, 12f
11:               jal          t1, 4b
12:               jal          t1, 3b
13:               jal          t0, 21f
14:               jal          ra, 19f
15:               jal          ra, 14b
16:               jal          ra, 7b
17:               jal          ra, 15b
18:               jal          ra, 5b
19:               jal          ra, 0b
20:               jal          t1, 1b
21:               sra          a0, s0, a5
sub_5_15:         jal          t5, 0f
0:                jal          ra, 9f
1:                jal          ra, 8f
2:                jal          ra, 6f
3:                jal          sp, 10f
4:                jal          ra, 1b
5:                jal          ra, 2b
6:                jal          t1, 3b
7:                jal          ra, 4b
8:                jal          ra, 5b
9:                jal          s3, 7b
10:               sltu         tp, a4, a3
sub_5_10:         jal          t5, 12f
0:                jal          ra, 13f
1:                jal          ra, 25f
2:                jal          t2, 14f
3:                jal          a4, 4f
4:                jal          s10, 6f
5:                jal          ra, 16f
6:                jal          t2, 8f
7:                jal          ra, 11f
8:                jal          ra, 24f
9:                jal          ra, 20f
10:               jal          ra, 15f
11:               jal          sp, 10b
12:               jal          t1, 18f
13:               jal          sp, 2b
14:               jal          t1, 19f
15:               jal          t1, 0b
16:               jal          t1, 9b
17:               jal          ra, 22f
18:               jal          t1, 23f
19:               jal          ra, 21f
20:               jal          s9, 26f
21:               jal          t6, 17b
22:               jal          ra, 3b
23:               jal          ra, 1b
24:               jal          ra, 5b
25:               jal          tp, 7b
26:               or           s10, a5, s6
sub_5_13:         jal          t5, 2f
0:                jal          t1, 9f
1:                jal          ra, 4f
2:                jal          ra, 0b
3:                jal          ra, 7f
4:                jal          tp, 10f
5:                jal          s1, 6f
6:                jal          t3, 8f
7:                jal          ra, 1b
8:                jal          t1, 11f
9:                jal          ra, 3b
10:               jal          a4, 5b
11:               sll          t3, tp, t3
sub_5_8:          jal          t5, 14f
0:                jal          ra, 2f
1:                jal          ra, 3f
2:                jal          ra, 15f
3:                jal          t1, 0b
4:                jal          t3, 18f
5:                jal          a4, 1b
6:                jal          ra, 5b
7:                jal          t5, 11f
8:                jal          s9, 21f
9:                jal          s10, 19f
10:               jal          ra, 17f
11:               jal          gp, 9b
12:               jal          t1, 4b
13:               jal          ra, 10b
14:               jal          s11, 16f
15:               jal          t3, 8b
16:               jal          ra, 13b
17:               jal          t1, 7b
18:               jal          gp, 6b
19:               jal          t1, 20f
20:               jal          ra, 12b
21:               slt          zero, sp, t1
sub_5_25:         jal          t5, 4f
0:                jal          ra, 13f
1:                jal          ra, 9f
2:                jal          s9, 25f
3:                jal          ra, 16f
4:                jal          sp, 12f
5:                jal          a7, 20f
6:                jal          ra, 21f
7:                jal          s1, 11f
8:                jal          ra, 17f
9:                jal          ra, 6b
10:               jal          a2, 2b
11:               jal          t1, 10b
12:               jal          ra, 5b
13:               jal          ra, 7b
14:               jal          s1, 18f
15:               jal          a6, 22f
16:               jal          ra, 0b
17:               jal          t2, 14b
18:               jal          t1, 1b
19:               jal          ra, 24f
20:               jal          ra, 15b
21:               jal          ra, 23f
22:               jal          t1, 19b
23:               jal          ra, 3b
24:               jal          ra, 8b
25:               slt          ra, a4, t0
sub_5_6:          jal          t5, 12f
0:                jal          ra, 7f
1:                jal          ra, 10f
2:                jal          sp, 6f
3:                jal          t1, 5f
4:                jal          a3, 8f
5:                jal          ra, 9f
6:                jal          t1, 1b
7:                jal          a3, 2b
8:                jal          ra, 3b
9:                jal          ra, 13f
10:               jal          t4, 11f
11:               jal          ra, 4b
12:               jal          ra, 0b
13:               jal          ra, 14f
14:               sltu         s0, t2, t5
sub_5_17:         jal          t5, 5f
0:                jal          ra, 8f
1:                jal          a1, 4f
2:                jal          t1, 6f
3:                jal          ra, 12f
4:                jal          t5, 25f
5:                jal          ra, 19f
6:                jal          ra, 3b
7:                jal          a7, 22f
8:                jal          t2, 24f
9:                jal          ra, 21f
10:               jal          ra, 7b
11:               jal          ra, 1b
12:               jal          a2, 15f
13:               jal          ra, 23f
14:               jal          ra, 2b
15:               jal          t1, 11b
16:               jal          ra, 18f
17:               jal          ra, 27f
18:               jal          a2, 9b
19:               jal          ra, 13b
20:               jal          ra, 16b
21:               jal          ra, 0b
22:               jal          s4, 26f
23:               jal          ra, 14b
24:               jal          ra, 17b
25:               jal          ra, 10b
26:               jal          s10, 20b
27:               srai         a7, zero, 12
sub_5_22:         jal          t5, 9f
0:                jal          s4, 4f
1:                jal          ra, 3f
2:                jal          ra, 1b
3:                jal          s11, 8f
4:                jal          ra, 5f
5:                jal          ra, 7f
6:                jal          ra, 11f
7:                jal          ra, 13f
8:                jal          t1, 10f
9:                jal          ra, 2b
10:               jal          t1, 6b
11:               jal          sp, 12f
12:               jal          t1, 0b
13:               srl          t0, s1, s7
sub_5_4:          jal          t5, 1f
0:                jal          ra, 16f
1:                jal          ra, 3f
2:                jal          t0, 15f
3:                jal          t6, 4f
4:                jal          t0, 5f
5:                jal          t5, 14f
6:                jal          ra, 9f
7:                jal          a7, 13f
8:                jal          ra, 18f
9:                jal          ra, 11f
10:               jal          a1, 6b
11:               jal          ra, 12f
12:               jal          t1, 2b
13:               jal          t1, 17f
14:               jal          tp, 0b
15:               jal          a2, 8b
16:               jal          ra, 7b
17:               jal          ra, 10b
18:               andi         s0, t2, 1919
sub_5_19:         jal          t5, 19f
0:                jal          a6, 17f
1:                jal          a5, 4f
2:                jal          ra, 8f
3:                jal          ra, 15f
4:                jal          ra, 13f
5:                jal          t1, 2b
6:                jal          ra, 3b
7:                jal          ra, 18f
8:                jal          ra, 7b
9:                jal          s7, 5b
10:               jal          t1, 16f
11:               jal          s7, 12f
12:               jal          tp, 6b
13:               jal          t1, 14f
14:               jal          t1, 10b
15:               jal          t2, 9b
16:               jal          t1, 11b
17:               jal          gp, 1b
18:               jal          ra, 20f
19:               jal          t1, 0b
20:               nop
                  bge          s1, zero, 4f
                  sltiu        s4, a4, 253
                  xori         a6, a4, 1473
                  sltiu        ra, t1, 1063
4:                or           a5, a1, a4
                  bgeu         t5, s1, 18f
                  sub          t2, t3, t3
                  bgeu         gp, s7, 12f
                  addi         ra, t1, 1739
                  beq          a1, s7, 14f
                  addi         s10, tp, 355
                  sub          a4, t3, a0
12:               sub          a4, a4, sp
                  sltu         t6, s8, t1
14:               addi         t6, s2, -660
                  bge          t1, s3, 25f
                  srl          a3, t1, t4
                  addi         t3, t3, 850
18:               auipc        t5, 309188
                  slli         s7, a1, 31
                  sltiu        t3, t3, -982
                  and          sp, t3, a1
                  slt          t1, ra, a5
                  sub          s11, t3, tp
                  bge          s0, a5, 37f
25:               srli         t6, s7, 1
                  srl          t6, a0, s7
                  sub          s0, a3, ra
                  or           s4, t3, t2
                  srl          a3, t3, a2
                  xori         t1, s3, -242
                  lui          a4, 372866
                  xori         t1, a0, -1869
                  andi         s10, a6, -1006
                  ori          t2, s0, 1803
                  add          s4, tp, s3
                  xori         tp, t0, -6
37:               addi         t2, a2, -76
                  addi         s4, t4, 1763
                  bltu         t0, a7, 48f
                  lui          a4, 29380
                  slli         a4, t0, 19
                  nop
                  blt          t0, a6, 46f
                  sra          t5, a6, a4
                  xor          s5, s3, a2
46:               slli         zero, a5, 1
                  ori          s5, s0, -871
48:               srai         t5, t4, 24
                  bgeu         tp, s3, 51f
                  beq          a2, ra, 63f
51:               beq          a6, t3, 66f
                  sra          t6, t5, s11
                  auipc        s1, 560014
                  and          s3, s6, s9
                  nop
                  sra          s0, t6, t1
                  nop
                  and          s9, s2, t4
                  bne          s3, t2, 61f
                  slt          s11, a7, a6
61:               addi         s5, s10, -101
                  slli         t2, tp, 29
63:               bne          sp, s9, 78f
                  bne          t1, t0, 80f
                  sltiu        t3, gp, -1026
66:               bgeu         a0, t5, 82f
                  add          s9, a7, a5
                  bltu         t3, s7, 74f
                  srli         s3, s4, 26
                  bge          t0, s9, 76f
                  nop
                  slli         s3, t5, 27
                  slt          t1, t4, gp
74:               auipc        a3, 421646
                  nop
76:               srli         t1, gp, 11
                  ori          a4, gp, 228
78:               bge          tp, t5, 94f
                  srl          s4, gp, a3
80:               xor          t3, t1, a7
                  slli         s3, zero, 26
82:               xori         s9, s11, 632
                  beq          s10, gp, 94f
                  and          a1, zero, gp
                  sltiu        sp, t3, 185
                  sltu         tp, t4, t2
                  srai         s1, s4, 24
                  bltu         s3, a4, 94f
                  slt          a3, s11, t0
                  beq          a7, gp, 101f
                  slt          s10, a2, a3
                  beq          s7, a3, 98f
                  slti         tp, gp, -1809
94:               bltu         t1, s2, 101f
                  blt          a5, a7, 110f
                  bltu         s10, s7, 115f
                  blt          tp, gp, 100f
98:               or           a2, s9, t4
                  auipc        s1, 152827
100:              sll          a7, s0, s8
101:              addi         s0, a7, 1747
                  xor          t2, t3, t4
                  beq          s1, a3, 110f
                  slti         t6, t1, -1824
                  xor          a1, s1, s5
                  sltiu        a4, t4, 1472
                  srli         gp, a1, 10
                  and          a1, t5, t0
                  xori         a0, a2, -487
110:              ori          t0, s11, 1585
                  sub          ra, t6, s0
                  addi         s4, a3, -923
                  srl          t2, s9, s11
                  slli         a5, s9, 12
115:              sltu         a0, s8, s2
                  ori          s1, zero, 925
                  bne          a4, s8, 128f
                  srai         s4, t0, 9
                  add          s11, a2, s10
                  sltiu        s4, s9, -356
                  bge          a4, s1, 139f
                  slt          zero, t1, zero
                  nop
                  srl          t2, s9, gp
                  sll          a6, zero, s3
                  andi         s9, a3, 1960
                  add          t4, t3, t4
128:              and          t1, t1, gp
                  sub          a7, a6, a7
                  slt          s5, s10, s3
                  bltu         t3, t1, 150f
                  slli         t4, s10, 27
                  andi         ra, t0, -762
                  sltu         a0, t2, s0
                  auipc        t4, 591978
                  slli         s1, a6, 24
                  srli         s7, tp, 23
                  srai         tp, t4, 11
139:              sltiu        s5, t3, -155
                  sra          s9, a2, t4
                  sra          a6, a2, a4
                  addi         gp, a7, -1163
                  srl          a6, zero, t1
                  auipc        s7, 77865
                  auipc        t6, 360761
                  sra          t5, a0, zero
                  blt          a2, t1, 154f
                  sltu         s3, ra, zero
                  beq          a0, tp, 152f
150:              nop
                  sltu         a3, a7, gp
152:              bge          a5, t0, 168f
                  sub          a2, a2, a7
sub_5_7:          jal          t5, 5f
0:                jal          ra, 14f
1:                jal          ra, 24f
2:                jal          t1, 25f
3:                jal          ra, 19f
4:                jal          a1, 8f
5:                jal          t1, 23f
6:                jal          t1, 0b
7:                jal          t6, 2b
8:                jal          s4, 20f
9:                jal          t1, 11f
10:               jal          ra, 16f
11:               jal          ra, 10b
12:               jal          ra, 3b
13:               jal          ra, 4b
14:               jal          ra, 29f
15:               jal          ra, 28f
16:               jal          ra, 1b
17:               jal          t6, 26f
18:               jal          ra, 7b
19:               jal          ra, 21f
20:               jal          t1, 9b
21:               jal          ra, 15b
22:               jal          gp, 13b
23:               jal          ra, 12b
24:               jal          ra, 17b
25:               jal          ra, 22b
26:               jal          t1, 6b
27:               jal          ra, 18b
28:               jal          ra, 27b
29:               srli         gp, gp, 12
154:              sll          s0, s2, a2
                  nop
                  beq          s8, a3, 171f
                  andi         t0, t5, -1218
                  lui          s10, 66338
                  bltu         tp, t1, 174f
                  ori          s1, s2, 676
                  bne          s7, s5, 163f
                  ori          s5, s6, -1624
163:              sll          a5, s6, a3
                  xor          a5, s8, s4
                  ori          s10, t4, 1670
                  bne          s0, zero, 176f
                  add          a4, a1, gp
168:              sra          s5, sp, tp
                  sll          s4, a4, ra
                  sra          t1, t4, t0
171:              add          s9, s4, s1
                  nop
                  nop
174:              lui          a2, 203698
                  ori          a0, tp, -363
176:              xori         s11, s6, -578
                  srl          ra, t3, a1
                  sltu         s1, a6, s7
                  ori          a7, t1, 1609
                  slt          t1, t3, a5
                  sll          s11, s8, s2
                  auipc        s7, 743432
                  bgeu         t2, t2, 188f
                  nop
                  slli         a7, s7, 13
                  bne          s6, t6, 190f
                  bgeu         ra, t0, 198f
188:              xori         a5, s8, 1741
                  ori          gp, s2, -105
sub_5_3:          jal          t5, 6f
0:                jal          t1, 4f
1:                jal          a4, 8f
2:                jal          ra, 1b
3:                jal          t1, 0b
4:                jal          a7, 2b
5:                jal          ra, 7f
6:                jal          ra, 5b
7:                jal          ra, 3b
8:                jal          s11, 9f
9:                jal          ra, 10f
10:               lui          t2, 366103
190:              sltiu        s1, ra, 1096
                  bne          ra, t4, 209f
                  bltu         s2, t0, 198f
                  auipc        t0, 27321
                  bne          s0, s0, 205f
                  bge          a3, t5, 210f
                  sltiu        t5, t5, 1821
                  blt          t0, t4, 203f
198:              beq          a2, t6, 209f
                  bgeu         s2, a2, 218f
                  sub          a6, sp, s10
                  slt          t3, s7, t4
                  srl          gp, s4, s3
203:              auipc        a5, 599273
                  bltu         gp, s10, 213f
205:              beq          t4, a2, 218f
                  slt          tp, t6, a7
                  and          t3, s9, sp
                  bne          a0, a1, 227f
209:              add          t1, a7, t3
210:              auipc        s5, 169550
                  xor          tp, a0, a4
                  xori         t0, a7, -109
213:              lui          t6, 480304
                  ori          t2, t2, -17
                  beq          s9, a1, 231f
                  xori         t5, a2, -1792
                  beq          s11, a3, 233f
218:              xor          tp, a3, t5
                  sub          a6, t2, s2
                  srai         a5, s11, 29
                  add          s7, a1, a2
                  bgeu         tp, a4, 224f
                  nop
224:              auipc        ra, 79794
                  bne          t2, s0, 228f
                  sltiu        tp, t6, -1816
227:              slt          t2, s6, ra
228:              lui          a1, 40965
                  xori         s3, t6, -433
                  xor          a4, ra, s2
231:              lui          t5, 99089
                  bge          s5, s4, 238f
233:              or           a1, t6, s0
                  srl          t6, a3, ra
                  add          s1, t1, a2
                  or           s9, a4, s3
                  sra          ra, tp, s1
238:              slli         s10, s9, 29
                  and          t4, s10, a4
                  bge          s5, s7, 245f
                  bne          t1, ra, 248f
                  bgeu         a6, s11, 248f
                  xori         s11, a6, -1052
                  sltiu        a2, ra, 4
245:              xori         sp, t1, 1262
                  srli         a5, tp, 31
                  blt          s9, s11, 260f
248:              ori          a1, t2, -199
                  sra          t1, a5, s6
                  slti         s3, a2, 1489
                  slt          s0, s1, t2
                  xor          s11, s10, s11
                  and          s3, s11, a5
                  slti         gp, s2, 1595
                  slt          zero, s2, s8
                  and          t1, s6, s11
                  blt          t4, s8, 270f
                  sltu         s1, a6, s2
                  slli         t6, t6, 16
260:              bne          t0, t2, 275f
                  sub          s1, s10, s3
                  srli         s7, s1, 5
                  bge          a3, s6, 274f
                  ori          a6, s4, -662
                  addi         s9, gp, -1919
                  sub          a4, s6, a6
                  bltu         s2, t5, 269f
                  srai         t2, a1, 15
269:              slt          a0, s4, zero
270:              sll          s11, s1, a7
                  ori          t5, s5, -34
                  or           tp, a2, s9
sub_5_24:         jal          t5, 6f
0:                jal          s4, 15f
1:                jal          ra, 8f
2:                jal          ra, 14f
3:                jal          ra, 9f
4:                jal          ra, 2b
5:                jal          ra, 7f
6:                jal          ra, 13f
7:                jal          t1, 10f
8:                jal          ra, 4b
9:                jal          tp, 11f
10:               jal          ra, 1b
11:               jal          ra, 12f
12:               jal          ra, 5b
13:               jal          ra, 3b
14:               jal          ra, 0b
15:               ori          s4, s7, 226
                  ori          a2, t3, 989
274:              ori          s4, s9, 260
275:              srl          a5, t3, s1
                  bltu         s7, a6, 281f
                  lui          t1, 671496
                  addi         t1, a2, -1600
                  bge          t4, t3, 292f
                  ori          a7, a5, -1828
281:              sll          a5, t2, t3
                  addi         tp, s2, 1071
                  slti         a1, s4, -1105
                  sub          t4, a7, s10
                  srai         s3, t6, 1
                  addi         t4, a4, 991
                  beq          s10, s8, 306f
                  srli         tp, s6, 21
                  bge          s4, s0, 292f
                  or           a7, s7, a3
                  addi         s11, zero, 1996
292:              sub          s9, a3, t6
                  blt          a1, t2, 309f
                  sub          t6, s8, t1
                  ori          t4, s9, -603
                  ori          a6, tp, -485
                  auipc        t6, 312386
                  sll          tp, t3, s8
                  srl          t2, ra, s1
                  or           a2, ra, s5
                  or           tp, s5, a4
                  sll          s4, s1, a4
                  nop
                  sra          ra, s5, sp
                  srli         a4, tp, 7
306:              nop
                  bge          t6, t4, 311f
                  xori         ra, sp, -739
309:              srli         t5, s2, 23
                  or           t2, ra, zero
311:              bgeu         ra, a1, 324f
                  ori          s11, t2, -1856
                  andi         ra, gp, 476
                  add          zero, s0, t4
                  bgeu         s7, s10, 331f
                  auipc        tp, 182852
                  slti         sp, a6, -1965
                  or           ra, t3, a7
                  srl          s10, t3, a1
                  slti         t6, tp, 32
                  bgeu         s0, a0, 336f
                  xor          a5, s3, zero
                  add          a6, t6, s2
324:              sra          s1, s3, s8
                  andi         s9, t1, 1565
                  sub          t0, s5, s7
                  xori         t3, zero, 629
                  addi         s5, a4, -1093
                  lui          sp, 714152
                  sll          a2, tp, sp
331:              xor          s4, s8, s11
                  sra          s0, s8, s5
                  sra          zero, a6, t2
                  beq          t2, t3, 345f
                  sub          a1, a5, a3
336:              ori          a7, t3, -566
                  bgeu         a5, s4, 346f
                  and          a1, ra, s5
                  slt          a5, s3, a1
                  lui          t4, 344205
                  sll          a2, s5, s1
                  sub          t0, t0, ra
                  add          s11, t1, a1
                  ori          tp, t4, 1017
345:              addi         a6, t1, -1218
346:              xor          s0, tp, ra
                  srli         t6, t1, 4
                  sltu         a6, s11, a4
                  ori          s3, a2, 844
                  bne          a1, s9, 356f
                  slti         a6, t6, 391
                  xori         a6, s3, 794
                  sltu         a3, a3, s0
                  blt          s5, s9, 373f
                  xor          t5, a6, t1
356:              lui          a1, 1005048
                  slti         sp, s10, -619
                  xori         gp, a7, -1583
                  lui          a6, 767590
                  srai         a7, s11, 5
                  addi         ra, t3, 1436
                  xor          t2, s10, gp
                  auipc        s1, 873384
                  blt          zero, t6, 370f
                  srai         sp, ra, 19
                  ori          sp, s1, 0
                  andi         s3, a2, 1872
                  sltu         a6, a5, s6
                  auipc        t3, 313446
370:              srl          a7, s9, t1
                  sltu         s0, t3, a2
                  or           a2, s10, a5
373:              or           a0, s11, t5
                  srai         gp, s6, 9
                  andi         s0, s10, -552
                  sll          t4, a2, s9
                  andi         a5, s10, 429
                  nop
                  bne          ra, s7, 392f
                  bge          a0, s8, 387f
                  slti         ra, s8, -77
                  sll          gp, sp, a3
                  beq          t2, s10, 401f
                  ori          a3, t3, -1656
                  slli         a2, s11, 30
                  bltu         ra, a6, 396f
387:              xori         a1, s8, 373
                  slti         a3, s3, -1365
                  ori          t4, t3, 2046
                  bgeu         a1, s7, 401f
                  bge          s6, s6, 398f
392:              bltu         s11, t3, 397f
                  beq          s3, a0, 396f
                  addi         t2, gp, 2028
                  srli         a2, s0, 10
396:              nop
397:              add          s7, s1, t3
398:              srai         zero, s2, 12
                  add          a6, s8, gp
                  beq          s10, a1, 406f
401:              srli         sp, a7, 17
                  nop
                  xori         a2, s4, -905
                  sltiu        s5, gp, -1171
                  lui          a3, 370443
406:              or           s3, s5, t3
                  or           t5, t0, s10
                  xori         a0, a3, -41
                  and          a3, tp, t2
                  bgeu         a3, a3, 425f
                  lui          zero, 1013815
                  bgeu         t0, a7, 418f
                  srli         s1, t4, 19
                  sub          s5, s3, gp
                  srli         t4, s6, 0
                  xor          a1, t2, gp
                  slti         t0, a7, -1889
418:              sll          s0, s11, tp
                  addi         a7, s2, 864
                  bltu         s8, t2, 436f
                  beq          a4, a6, 423f
                  auipc        tp, 714134
423:              lui          s11, 542168
                  auipc        a5, 229153
425:              add          s10, a2, a2
                  addi         tp, zero, 1966
                  bltu         s1, t5, 433f
                  auipc        t5, 509046
                  bne          a7, a4, 440f
                  sltu         s7, t1, s6
                  bge          gp, ra, 447f
                  bltu         a1, s4, 445f
433:              xori         t4, a0, -1839
                  sub          t3, ra, tp
                  beq          sp, a1, 445f
436:              andi         t5, a5, -505
                  beq          s8, zero, 453f
                  srli         s3, s5, 6
                  bge          s6, a1, 445f
440:              srl          t3, s10, s7
                  addi         s1, a2, -1589
                  andi         a0, gp, -1577
                  bge          a7, a4, 462f
                  add          s3, a5, s5
445:              srli         a3, t4, 5
                  or           s9, t5, s3
447:              srai         s7, t4, 29
                  auipc        s11, 864891
                  add          s1, a2, s6
                  auipc        t3, 692432
                  andi         a0, s6, -1836
                  nop
453:              ori          a1, t1, -211
                  auipc        ra, 813010
                  srli         gp, s1, 10
                  bltu         a5, t1, 467f
                  bgeu         a3, t0, 460f
                  bltu         s8, a1, 473f
                  ori          s1, t2, 932
460:              sra          t6, t4, t5
                  bgeu         s5, t5, 467f
462:              slt          t6, a6, s5
                  slt          s7, s3, a3
                  bne          a7, t5, 477f
                  sltiu        a6, a7, 1550
                  bge          ra, s10, 477f
467:              and          a2, a4, tp
                  add          s4, sp, a2
                  add          t3, a5, s9
                  sltu         t5, t1, s0
sub_5_23:         jal          t5, 10f
0:                jal          a4, 12f
1:                jal          t1, 11f
2:                jal          ra, 16f
3:                jal          ra, 17f
4:                jal          s11, 1b
5:                jal          t1, 18f
6:                jal          ra, 2b
7:                jal          t0, 0b
8:                jal          ra, 3b
9:                jal          t1, 5b
10:               jal          a1, 4b
11:               jal          ra, 7b
12:               jal          t1, 6b
13:               jal          s3, 15f
14:               jal          a1, 9b
15:               jal          ra, 8b
16:               jal          ra, 13b
17:               jal          t6, 14b
18:               addi         t6, a7, -1621
                  sll          s5, t6, t6
                  sltiu        t2, t5, 1075
473:              addi         s4, s2, -1899
                  slli         sp, s11, 11
                  and          t3, s8, s3
                  srli         s3, t1, 11
477:              auipc        t6, 621809
                  andi         ra, a3, -820
                  sub          t6, gp, a1
                  xor          s7, s3, a0
                  bltu         t0, sp, 484f
                  and          zero, gp, t3
                  srl          tp, s7, t0
484:              bge          s10, gp, 503f
                  lui          t4, 64596
                  beq          a2, t4, 488f
                  andi         ra, s6, -183
488:              bge          t1, a2, 492f
                  add          s0, s5, a5
                  and          s1, s8, s8
                  bltu         a6, s9, 498f
492:              and          t1, s1, t5
                  srl          t6, s5, t5
                  add          s7, zero, t2
                  xori         zero, t1, 1676
                  add          s7, a7, t0
                  slt          a4, zero, t0
498:              auipc        a5, 60825
                  srai         tp, s11, 27
                  auipc        s3, 151157
                  bne          a2, sp, 517f
                  bgeu         s11, a6, 517f
503:              andi         a6, ra, -1440
                  sltu         s11, ra, tp
                  bne          sp, s4, 514f
                  slti         gp, a0, 1843
                  sub          a4, s0, s4
                  or           a4, a3, t3
                  nop
                  andi         gp, s1, 337
                  or           s3, a1, t5
                  blt          s0, sp, 525f
                  or           zero, sp, s0
514:              srli         sp, t3, 22
                  xori         s0, t5, 685
                  sra          a7, s10, t6
517:              slti         zero, s4, -1228
                  and          sp, a3, s10
                  sub          s0, s4, a1
                  ori          a7, s8, 1738
                  addi         t5, s3, -1281
                  auipc        a7, 284909
                  bge          s1, a5, 530f
                  slt          s9, a5, a0
525:              blt          s0, t2, 540f
                  bltu         sp, s8, 531f
                  blt          tp, t6, 545f
                  ori          s10, t5, -3
                  lui          a6, 71834
530:              addi         t0, t6, 1231
531:              add          t1, gp, s2
                  or           t3, a3, a5
                  sltiu        a7, s2, -1422
                  and          t4, a2, tp
                  sub          sp, s4, a7
                  addi         t0, t5, -2031
                  bne          t5, t4, 539f
                  xor          s10, s9, a2
539:              sltu         t1, t4, s4
540:              ori          a3, tp, -133
                  or           s4, sp, sp
                  sltiu        s3, s4, 573
                  addi         s10, t5, 1398
                  bgeu         a7, tp, 550f
545:              xori         s7, a3, -1227
                  srli         tp, s1, 22
                  beq          gp, t1, 552f
                  sub          t1, t5, s10
                  slti         a3, t2, -115
550:              xori         t1, s9, -2002
                  sll          s3, a5, sp
552:              and          a5, t2, zero
                  srai         s7, t1, 26
                  sltiu        s10, s2, -141
                  bgeu         s3, s10, 568f
                  addi         s7, a6, 346
                  sra          a2, s0, s2
                  or           a4, t6, a2
                  andi         t5, t1, -1930
                  srai         a6, s10, 15
                  slti         sp, a4, 772
                  bge          s9, a6, 569f
                  ori          a7, a6, 1524
                  beq          tp, a2, 574f
                  auipc        t2, 742629
                  add          ra, s8, gp
                  xor          s11, s5, sp
568:              slti         t2, s3, 14
569:              auipc        zero, 469931
                  or           a6, t2, t1
                  or           s9, s8, t1
                  bne          a0, a6, 591f
                  srl          ra, a7, a6
574:              sub          tp, s1, t3
                  or           a5, s0, s2
                  sll          t0, zero, t0
                  sltu         s1, zero, a3
                  or           a1, t0, s11
                  lui          a5, 423216
                  blt          a5, a4, 596f
                  blt          sp, ra, 584f
                  slli         t3, s4, 10
                  sll          a7, a5, t2
584:              bgeu         t1, s9, 599f
                  srli         s3, a3, 28
                  slti         tp, s10, 498
                  slti         s9, s4, -1551
                  xor          t1, zero, s0
                  auipc        ra, 473371
                  auipc        zero, 136632
591:              xori         s11, s6, -1512
                  srl          ra, ra, ra
                  bne          s2, t3, 598f
                  xori         t4, a2, -374
                  auipc        s4, 869985
596:              slli         s11, s9, 5
                  sub          a2, t4, a4
598:              sll          t1, a3, a2
599:              ori          t4, t0, -185
                  slt          s4, t0, s5
                  nop
                  xor          t1, a3, t6
                  beq          sp, tp, 614f
                  sltiu        s0, a3, -40
                  and          s3, a2, t3
                  and          s0, t5, a3
                  lui          tp, 618523
                  ori          s10, t6, -1114
                  slti         s1, tp, -463
                  blt          gp, t1, 619f
                  auipc        a3, 760289
                  xori         t1, s4, -652
                  blt          zero, t3, 628f
614:              srl          t6, s8, s10
                  bltu         s2, a4, 620f
                  ori          t5, t6, -794
                  srai         s3, ra, 11
                  srli         t6, t6, 30
619:              sll          s10, s6, s2
620:              or           t6, s6, s1
                  auipc        s4, 818954
                  nop
                  slt          sp, a0, t6
                  sltu         a5, t3, t4
                  slti         s1, a0, -75
                  bltu         t0, t6, 633f
                  addi         s9, s2, 904
628:              sltu         s1, s7, s6
                  srai         t5, s0, 29
                  auipc        zero, 521276
                  xori         a1, sp, 536
                  slt          zero, s1, s2
633:              nop
                  srli         s5, a3, 14
                  xor          s0, s10, s1
sub_5_26:         jal          t5, 18f
0:                jal          ra, 3f
1:                jal          s11, 10f
2:                jal          s0, 11f
3:                jal          t1, 17f
4:                jal          ra, 6f
5:                jal          t1, 14f
6:                jal          gp, 5b
7:                jal          t1, 20f
8:                jal          gp, 1b
9:                jal          ra, 16f
10:               jal          ra, 4b
11:               jal          ra, 0b
12:               jal          sp, 8b
13:               jal          ra, 19f
14:               jal          a4, 2b
15:               jal          ra, 7b
16:               jal          ra, 15b
17:               jal          t1, 21f
18:               jal          t1, 13b
19:               jal          s10, 9b
20:               jal          sp, 12b
21:               nop
                  srl          s5, s5, t4
                  blt          a4, s6, 640f
                  srl          t6, t2, s8
                  bne          t0, zero, 652f
640:              slt          ra, a7, gp
                  ori          s3, a7, 1270
                  blt          s5, s1, 648f
                  sltiu        s1, s7, -347
                  beq          s3, s1, 663f
                  bne          zero, t6, 651f
                  auipc        a4, 1045556
                  xori         a3, a0, -1690
648:              andi         a0, t2, 1835
                  srli         t1, t4, 20
                  bltu         s0, t2, 666f
651:              and          t0, s0, t3
652:              nop
                  srai         ra, s7, 28
                  bne          s9, a6, 665f
                  slt          zero, a7, a5
                  sub          ra, t3, s5
                  bgeu         s6, t3, 673f
                  bge          tp, s5, 660f
                  ori          s3, t3, 662
660:              slti         s0, s9, 175
                  slli         t4, s2, 24
                  beq          s0, s1, 675f
663:              srli         t4, a3, 1
                  lui          a2, 996953
665:              sltu         s7, sp, a7
666:              sltiu        s0, s11, -23
                  bge          zero, t4, 678f
                  srl          s1, s10, s5
                  lui          a1, 815485
                  ori          ra, s1, 133
                  sltiu        t0, s5, 1828
                  sub          t4, s4, a4
673:              srl          s1, a3, s0
                  slli         a0, t3, 7
675:              bltu         a2, s2, 693f
                  slli         t6, a1, 15
                  addi         t2, s5, 729
678:              srl          s3, s0, a4
                  srai         zero, s8, 19
                  add          s7, a7, t3
                  andi         t3, s8, -1283
                  sltiu        a3, s6, -1258
                  add          a7, tp, sp
                  sltu         a7, s3, s8
                  and          a1, s3, a6
                  and          t3, a7, s4
                  sra          s7, a4, s10
                  sra          t6, s0, zero
                  bne          s8, t1, 695f
                  bltu         s2, a7, 705f
                  slti         s3, t5, -524
                  srai         ra, a6, 12
693:              add          t6, zero, a3
                  nop
695:              srli         a0, a7, 1
                  bgeu         t1, t2, 702f
                  bltu         s7, t6, 699f
                  sltiu        t6, a4, 856
699:              srai         t6, s0, 26
                  sll          a7, s0, s2
                  lui          s11, 426288
702:              bge          s3, sp, 706f
                  srl          t4, a3, s2
                  sltu         a3, a0, a7
705:              add          s9, a5, zero
706:              bgeu         a3, s4, 721f
                  slli         s11, zero, 15
                  beq          t3, a1, 721f
                  bgeu         t1, s7, 727f
                  and          a0, s5, t3
                  ori          t1, a1, 638
                  add          t6, a4, a0
                  blt          s10, s5, 726f
                  srai         s1, s5, 23
                  sltiu        t1, s1, -1956
                  add          t0, a3, a7
                  add          s4, s11, s2
                  bltu         a0, a4, 734f
                  nop
                  slti         t3, sp, -1071
721:              slti         tp, s6, -1502
                  sltu         s10, s1, t2
                  and          t2, s5, t3
                  and          s4, zero, s10
                  srai         gp, s10, 8
726:              and          s5, t2, t2
727:              bltu         sp, s2, 733f
                  srli         s5, s2, 5
                  srl          t0, zero, a7
                  bge          gp, a4, 741f
                  sll          t4, t6, a5
                  srl          sp, ra, s10
733:              lui          gp, 172014
734:              srl          s4, s0, s8
                  slti         a7, s5, 2024
                  or           a5, t0, ra
                  or           s10, s7, s6
                  slli         a5, s5, 10
                  bge          t4, gp, 750f
                  sra          t3, gp, sp
741:              xori         ra, sp, -176
                  sub          ra, a3, s8
                  sub          s4, t0, s2
                  xori         a4, s11, -1390
                  beq          ra, gp, 760f
                  slli         s0, ra, 9
                  xor          a5, a6, t4
                  srai         s11, a7, 9
                  slti         a0, gp, 479
750:              addi         gp, sp, -1945
                  or           s10, t2, s6
                  beq          t0, s1, 759f
                  auipc        t6, 122619
                  slli         t3, a3, 4
                  blt          t4, s7, 774f
                  srli         t5, s7, 24
                  slti         a3, a0, 579
                  bgeu         s1, s5, 777f
759:              nop
760:              xor          a1, s8, s9
                  bne          a3, s1, 764f
                  addi         t2, t2, 1177
                  xori         a3, t0, 345
764:              ori          tp, s4, -1108
                  lui          s4, 401704
                  nop
                  bne          s11, a1, 783f
                  slti         a2, a2, 103
                  sub          t6, sp, t5
                  sltiu        a0, s8, -228
                  andi         a5, t2, -888
                  bgeu         a1, gp, 775f
                  add          gp, a4, a7
774:              beq          a2, t4, 780f
775:              or           s9, s6, s5
                  sll          a2, tp, ra
777:              andi         a4, a2, 1209
                  blt          s6, t4, 793f
                  or           ra, a5, t5
780:              auipc        a5, 502894
                  slt          t1, zero, s1
sub_5_14:         jal          t5, 7f
0:                jal          ra, 3f
1:                jal          t1, 4f
2:                jal          ra, 10f
3:                jal          ra, 9f
4:                jal          ra, 5f
5:                jal          ra, 8f
6:                jal          ra, 0b
7:                jal          s10, 6b
8:                jal          t4, 2b
9:                jal          ra, 1b
10:               or           a0, s2, t5
                  bne          s1, zero, 784f
783:              srl          t4, t0, t3
784:              and          a0, s5, a3
                  or           ra, s5, s0
                  sub          a3, zero, t2
                  lui          t3, 465709
                  srai         ra, s0, 6
                  lui          s11, 936355
                  bltu         a2, ra, 792f
                  beq          a7, t4, 796f
792:              auipc        a1, 748929
793:              slt          s0, s2, a1
                  lui          s1, 377266
                  bge          gp, t1, 802f
796:              xor          s7, a5, a6
                  sll          a0, gp, zero
                  slt          s10, s1, t1
                  or           s9, t6, a1
                  or           zero, s0, a1
                  or           s1, s6, gp
802:              bltu         a7, s0, 815f
                  bgeu         ra, s1, 809f
                  bne          s8, s1, 813f
                  bge          t1, s11, 810f
                  sltiu        s5, a4, 71
                  srai         s0, a7, 1
                  addi         ra, s2, 1953
809:              and          a0, a6, ra
810:              add          s0, s9, a7
                  srl          gp, s7, a2
                  beq          zero, a1, 828f
813:              slti         s7, s0, -1665
                  bgeu         a4, s11, 825f
815:              xori         t0, s6, -1913
                  bne          ra, zero, 822f
                  or           s5, ra, s4
                  srl          t2, t5, s7
                  blt          a0, a4, 829f
                  srli         t5, a4, 3
                  srli         t3, gp, 21
822:              sll          s1, s4, t0
                  lui          a6, 736714
                  add          s11, gp, t3
825:              addi         s9, a1, 1571
                  blt          s3, s6, 830f
                  lui          ra, 455686
828:              and          s3, t2, zero
829:              sra          gp, tp, a5
830:              slli         zero, s5, 18
                  slti         a4, s8, 813
                  srai         t2, s2, 21
                  bne          a2, a3, 849f
                  sra          s5, s10, tp
                  and          s5, t2, a6
                  and          a4, a6, s5
                  lui          tp, 599950
                  slt          a4, s5, s6
                  add          t4, s8, gp
                  slli         s3, t1, 8
                  add          a4, a0, s11
                  xori         a7, s10, 329
                  sll          t6, s9, sp
                  auipc        s7, 435272
                  sltiu        s11, s3, 740
                  andi         t6, a4, -30
                  bltu         zero, a1, 860f
                  bltu         t6, s4, 850f
849:              sltiu        a2, a4, 220
850:              bge          s11, t1, 856f
                  srai         s3, s10, 29
                  srai         s5, s8, 7
                  sra          s9, s6, t5
                  bge          a7, t2, 857f
                  slti         t5, a6, 768
856:              bgeu         s8, t4, 867f
857:              sub          a7, t5, ra
                  andi         t6, t2, -892
                  bgeu         gp, s2, 865f
860:              slt          tp, a4, s2
                  lui          t4, 848786
                  sub          tp, s7, t4
                  beq          t2, s4, 876f
                  srli         t1, s3, 13
865:              sub          sp, s9, a2
                  bge          sp, t1, 877f
867:              blt          a4, s0, 874f
                  ori          s5, tp, -1578
                  lui          s7, 394138
                  auipc        t2, 375740
                  addi         ra, s10, 626
                  sra          a1, a6, a7
                  sra          zero, a5, a5
874:              sub          t1, s8, t0
                  sub          gp, s9, a6
876:              nop
877:              sll          a3, t3, s3
                  nop
                  sltiu        sp, a2, 703
                  and          t0, t3, s7
                  ori          s5, a6, 1779
                  sltiu        s0, s9, -1506
                  slti         s4, s7, -889
                  addi         gp, a5, 1074
                  nop
                  ori          s11, a3, 1243
                  sra          a3, s5, a0
                  addi         t1, s6, -652
                  addi         t6, s8, -279
                  sll          s5, t1, tp
                  slti         s3, s10, 1721
                  nop
                  bge          zero, tp, 898f
                  slti         a2, t4, 666
                  bgeu         zero, t6, 902f
                  add          s0, t6, s7
                  slt          a7, tp, s11
898:              sll          s7, a2, a2
                  bgeu         t3, t3, 910f
                  bge          t5, s8, 915f
                  slt          a4, a0, s10
902:              bltu         s9, s0, 908f
                  xor          t2, s11, a2
                  xor          a6, s4, t4
                  bltu         t1, a0, 915f
                  srli         a5, s3, 24
                  bltu         a0, s10, 926f
908:              sltu         t4, zero, a7
                  bgeu         a4, t6, 914f
910:              xori         s9, a1, -488
                  srai         t3, s9, 25
                  xori         a6, gp, 532
                  blt          t2, t0, 922f
914:              slt          ra, s3, s7
915:              sra          t1, a3, s8
                  slt          a4, t0, s9
                  xor          s4, gp, t6
                  xor          a5, s10, t0
                  sra          a7, s3, t3
                  sra          s11, s7, s10
                  xori         s9, a3, 49
922:              ori          t5, s5, -1927
                  xori         a3, s2, -612
                  auipc        s1, 622932
                  bltu         t1, a6, 941f
926:              sll          t4, s0, t5
                  andi         a3, s7, 1285
                  sll          gp, t5, t3
                  sra          s10, t5, a1
                  nop
                  xori         s11, a7, -2016
                  slli         s11, s7, 3
                  or           t4, t2, a7
                  add          s10, s5, t2
                  nop
                  sltiu        ra, s4, 1877
                  srli         sp, sp, 3
                  xor          gp, s4, s5
                  andi         a5, a2, -921
                  bltu         t5, s10, 953f
941:              bne          a6, t1, 947f
                  sub          t2, t1, t2
                  lui          s0, 789574
                  bltu         s0, s6, 948f
                  bgeu         a4, s10, 964f
                  slli         ra, s0, 31
947:              or           t4, s5, a7
948:              xor          s1, t1, a1
                  ori          s11, tp, -1872
                  xori         a3, s11, -1200
                  beq          t4, tp, 967f
                  ori          t6, a1, 1118
953:              ori          s10, s0, 863
                  xor          a2, s1, t0
                  andi         s9, s4, -1509
                  auipc        sp, 547200
                  or           t5, t1, s11
                  bgeu         s0, t3, 973f
                  slt          s5, tp, a4
                  andi         tp, s6, -1268
                  bne          s4, s1, 963f
                  bgeu         s2, a5, 965f
963:              bgeu         s1, a2, 978f
964:              add          s0, a2, a4
965:              slti         a2, a2, -979
                  bge          s0, t3, 984f
967:              ori          zero, zero, 412
                  ori          s9, tp, 193
                  sltu         tp, t4, s11
                  add          a5, t4, t4
                  xori         a2, s4, -1671
                  addi         a1, t5, -1441
973:              xor          t6, a2, s4
                  sltu         s5, a1, t2
                  slt          s1, s7, a0
                  nop
                  bltu         s0, t4, 992f
978:              bge          zero, a0, 997f
                  lui          t2, 158231
                  xori         s11, s8, 1048
                  xori         t3, zero, -1367
                  sltu         s11, t4, a3
                  srli         a6, gp, 24
984:              bltu         sp, tp, 991f
                  bne          t4, a5, 991f
                  srl          t3, gp, s10
                  bgeu         zero, sp, 992f
                  sltu         s9, zero, s11
                  sltiu        t1, s0, 625
                  or           ra, s7, zero
991:              sub          t5, gp, t3
992:              bgeu         a4, a7, 1005f
                  bne          s7, s5, 1011f
                  blt          t5, s2, 1010f
                  slt          a3, a3, t0
                  slt          t3, gp, t1
997:              bge          t0, t6, 1007f
                  slli         s11, a3, 28
                  srai         t0, a5, 20
                  slt          t1, s6, s5
                  srl          s7, s11, a2
                  srli         t0, s4, 16
                  xor          t6, gp, s6
                  slti         t0, t2, 652
1005:             srl          s11, t0, t1
                  sltu         a6, s7, t5
1007:             lui          a4, 634619
                  srai         t1, a3, 17
                  bne          s3, tp, 1022f
1010:             beq          ra, s2, 1026f
1011:             bge          zero, s11, 1022f
                  or           s3, a0, s2
                  bne          a4, t1, 1015f
                  bge          zero, s2, 1020f
1015:             bltu         sp, a7, 1024f
                  bltu         a6, a5, 1022f
                  addi         ra, s11, 1567
                  xor          t1, a2, a2
                  addi         gp, zero, -1827
1020:             auipc        s4, 178305
                  sltu         a4, s7, s3
1022:             xori         t2, t5, 524
                  bge          a1, s1, 1042f
1024:             sub          s10, t5, a6
                  or           a0, s7, t6
1026:             srl          t0, t6, ra
                  srl          zero, gp, s11
                  lui          t1, 248473
                  ori          t1, t0, 995
                  sltu         t1, t3, s4
                  bltu         t4, t5, 1046f
                  add          ra, s3, s6
                  bge          a7, s0, 1046f
                  bge          t5, s1, 1038f
                  srai         a7, ra, 7
                  slti         t6, a7, 1500
                  xori         t5, ra, 1269
1038:             bne          t5, gp, 1044f
                  nop
                  srl          a7, tp, s7
                  nop
1042:             beq          s4, s0, 1057f
                  ori          s3, s0, 456
1044:             slt          t4, s6, s11
                  nop
1046:             sub          zero, s7, t2
                  beq          a6, s7, 1050f
                  slli         t4, a4, 23
                  auipc        t0, 1045918
1050:             slli         s11, a5, 12
                  and          a0, a3, s5
                  bltu         t0, s2, 1063f
                  bne          s10, zero, 1058f
                  bge          a5, s1, 1065f
                  sll          s7, a2, a7
                  sltiu        a6, a0, -1420
1057:             add          gp, zero, s6
1058:             addi         s4, s5, 688
                  srli         s11, t3, 1
                  ori          s4, s5, 1767
                  bge          a1, a1, 1064f
                  sra          s0, tp, s1
1063:             add          a2, s2, t2
1064:             slli         t5, a0, 23
1065:             sub          t6, s3, a6
                  xor          a2, t3, s1
                  sub          s5, t0, a1
                  add          a3, a2, tp
                  xori         gp, s5, 1129
                  slt          zero, t2, t6
                  lui          t2, 145646
                  sltiu        s1, s7, 943
                  sra          t4, s11, s6
                  bne          gp, a0, 1081f
                  beq          t6, s11, 1091f
                  sub          s11, gp, s5
                  bgeu         t2, ra, 1079f
                  addi         ra, s0, 389
1079:             slt          a1, s7, s3
                  xori         s1, a2, 834
1081:             beq          t5, s9, 1094f
                  bltu         s5, sp, 1100f
                  sub          a4, s3, s0
                  bge          t6, s7, 1089f
                  slli         a3, s2, 4
                  blt          a7, s3, 1090f
                  srli         a2, a5, 11
                  srli         s0, a0, 21
1089:             addi         t1, s9, 1074
1090:             add          t0, a5, sp
1091:             blt          t0, a6, 1097f
                  sltiu        s0, a2, 1819
                  or           a5, t5, s9
1094:             andi         s10, a1, 86
                  bge          zero, a5, 1102f
                  beq          a3, a1, 1099f
1097:             and          s0, s1, a1
                  nop
1099:             sltiu        ra, t6, -938
1100:             addi         s4, t4, -1537
                  xori         t1, tp, 189
1102:             lui          t2, 950737
                  xori         s11, zero, 1519
                  auipc        t1, 932298
                  sll          s0, s7, s4
                  bge          a5, s3, 1125f
                  xori         t3, s5, 861
                  andi         sp, t4, -1411
                  bltu         t6, sp, 1124f
                  auipc        zero, 493499
                  nop
                  blt          t6, zero, 1127f
                  sll          s7, a4, a7
                  srli         tp, sp, 8
                  nop
                  bne          s7, s4, 1122f
                  and          ra, s8, a6
                  auipc        t1, 658129
                  lui          a3, 352357
                  bge          s8, zero, 1123f
                  andi         s11, a3, -701
1122:             add          s3, t2, a6
1123:             slti         a7, zero, 1251
1124:             blt          zero, s2, 1137f
1125:             srl          s9, a7, s2
                  sltiu        a0, s10, 433
1127:             and          gp, s4, s9
                  slt          s7, s4, t5
                  lui          gp, 689267
                  nop
                  sub          s0, s5, gp
                  slti         a4, s1, 1279
                  add          s5, t6, t4
                  sltiu        s10, sp, -442
                  xori         s0, s9, -1062
                  xor          sp, s1, s3
1137:             add          t5, ra, t5
                  addi         s1, a7, 1260
                  add          s10, a3, s7
                  bltu         a5, s11, 1151f
                  add          t5, a7, s0
                  bltu         s11, s4, 1148f
                  ori          t1, s1, 356
                  slti         a5, s5, -538
                  blt          t6, s7, 1161f
                  xori         s4, s8, -140
                  slt          t5, s11, s7
1148:             lui          t2, 1027765
                  sra          zero, t2, t0
                  beq          zero, t4, 1169f
1151:             bne          a4, t3, 1167f
                  sltiu        s5, a0, 1406
                  sra          s1, t3, a3
                  andi         zero, a7, 640
                  addi         t1, s6, 1664
                  srli         a4, a2, 5
                  or           a2, s4, tp
                  sll          gp, t6, a2
                  sll          a2, s5, tp
                  srl          t3, s11, s11
1161:             and          s11, a7, a1
                  xor          s0, t4, t2
                  beq          gp, s1, 1165f
                  sll          zero, a7, t6
1165:             bgeu         s11, s11, 1167f
                  lui          s0, 869168
1167:             sll          t6, a6, s8
                  or           t4, s3, s4
1169:             blt          gp, s4, 1180f
                  bne          t0, s11, 1181f
                  bgeu         t5, s7, 1178f
                  or           a5, s4, a4
                  bgeu         t1, s10, 1189f
                  xor          a5, t1, s11
                  nop
                  xor          s9, a6, s11
                  addi         s5, s9, -345
1178:             or           a7, s2, s7
                  beq          a0, s1, 1189f
1180:             sra          s3, s8, a4
1181:             bge          t1, s2, 1196f
                  slt          t0, s5, t6
                  srli         a3, s10, 30
                  bge          s9, s11, 1193f
                  beq          tp, s5, 1190f
                  bltu         s11, ra, 1199f
                  andi         s10, a0, -1664
                  bgeu         a7, t6, 1194f
1189:             sra          a1, sp, t1
1190:             xor          s7, t6, s1
                  sub          a4, a5, a0
                  slt          s5, tp, a5
1193:             add          a7, s8, s11
1194:             srli         s1, s10, 8
                  slti         a7, a4, 174
1196:             addi         a6, a2, -428
                  xor          t1, s3, t0
                  xor          a0, a6, t3
1199:             sltu         s9, t0, t0
                  xor          a3, s9, t5
                  lui          t3, 674025
                  bgeu         s2, s5, 1217f
                  sltu         a5, s11, s5
                  srai         s1, a6, 1
                  blt          zero, s9, 1221f
                  add          gp, a5, t5
                  sltiu        t0, s10, -254
                  or           t2, s3, a4
                  lui          a0, 1013254
                  sltu         t6, t1, ra
                  sltu         tp, zero, s2
                  bltu         a1, a7, 1217f
                  slli         s0, s9, 13
                  lui          a3, 805909
                  andi         s1, s7, -1296
                  bne          gp, t0, 1225f
1217:             slli         t4, t2, 22
                  sra          ra, s8, t1
                  auipc        t1, 921689
                  nop
1221:             srl          t2, a2, gp
                  srl          gp, tp, a4
                  xori         t2, s1, 1557
                  blt          a3, a5, 1230f
1225:             xor          t1, a2, s9
                  xor          t1, a1, tp
                  srli         t1, s10, 24
                  and          tp, a1, s5
                  andi         s0, a6, 1844
1230:             xori         a1, s5, 955
                  sltu         s3, s2, s4
                  slti         s5, ra, 817
                  srai         s5, zero, 10
                  addi         t1, a6, 1895
                  sra          t6, t6, a6
                  xori         sp, s2, 1957
                  beq          sp, s4, 1248f
                  slt          a7, sp, zero
                  srai         s4, zero, 27
                  blt          tp, zero, 1255f
                  nop
                  sltu         t1, a2, s5
                  or           sp, s0, s3
                  srli         s0, gp, 14
                  slli         t0, t2, 20
                  slt          t5, s4, t6
                  slti         s11, zero, -1751
1248:             lui          t3, 605942
                  bgeu         t4, tp, 1260f
                  slli         t2, a3, 23
                  xori         t6, t4, -499
                  addi         a0, t0, 399
                  bgeu         s4, s11, 1255f
                  xor          t4, t4, s1
1255:             sub          t2, s10, sp
                  bgeu         t4, t0, 1272f
                  add          s9, s7, tp
                  sub          s11, a7, a1
                  xor          s0, t1, t3
1260:             srai         a0, a0, 31
                  ori          a6, t1, 1943
                  srai         t5, a1, 5
                  xor          a1, a1, a2
                  xori         s4, t0, -628
                  nop
                  sll          s10, t4, gp
                  auipc        ra, 397769
                  beq          t4, t0, 1279f
                  or           a7, s11, a0
                  xor          tp, s10, a4
                  srai         t6, a2, 13
1272:             auipc        a1, 287959
                  lui          zero, 612057
                  blt          a5, tp, 1278f
                  or           a1, t2, sp
                  srl          s11, a6, a7
                  bne          a4, a1, 1287f
1278:             bne          t4, gp, 1280f
1279:             bne          s11, s10, 1285f
1280:             sub          t2, tp, a7
                  addi         sp, t6, -1579
                  bge          t1, s3, 1297f
                  srli         a0, t4, 16
                  addi         t6, s10, 214
1285:             sra          gp, t1, a7
                  add          t1, t5, t4
1287:             slti         s0, a5, 850
                  and          s3, s11, s1
                  srai         s4, a5, 6
                  and          sp, s7, s9
                  ori          t4, a5, 1484
                  slti         s3, s10, 38
                  sub          a1, zero, s11
                  srai         t6, tp, 2
                  blt          s2, gp, 1313f
                  sub          s10, t3, t6
1297:             and          tp, t2, sp
                  nop
                  add          a3, s0, a4
                  xor          a2, s6, zero
                  ori          a4, a4, -714
                  and          t4, t0, t2
                  sra          s11, s11, sp
                  ori          t5, s3, -653
                  bge          t2, zero, 1312f
                  bltu         zero, s0, 1309f
                  ori          zero, a0, 1797
                  srai         a5, s4, 27
1309:             slt          a0, t1, t1
                  bltu         t5, a2, 1329f
                  sub          s4, s9, t5
1312:             xori         t4, t6, 1922
1313:             xori         s7, tp, 128
                  sltu         a3, s11, s2
                  bne          a3, sp, 1320f
                  slt          a5, s4, a3
                  sltu         a0, s10, zero
                  beq          t0, zero, 1331f
                  slli         a2, a2, 22
1320:             blt          tp, sp, 1333f
                  slt          t5, a2, s9
                  sltiu        t6, t3, -1431
                  or           s0, a1, a4
                  auipc        t1, 92585
                  andi         s0, a2, 1931
                  sub          a7, t5, s0
                  sub          s0, a3, gp
                  slt          a5, s3, sp
1329:             sub          s1, t5, t4
                  bgeu         s4, s10, 1343f
1331:             or           s1, s0, s11
                  slt          s4, gp, s4
1333:             andi         s3, t0, -870
                  bge          ra, s1, 1337f
                  auipc        a5, 173372
                  bgeu         t6, sp, 1355f
1337:             xor          t1, s10, s1
                  lui          s5, 1047747
                  andi         s11, s10, -1225
                  or           sp, t5, t5
                  beq          s7, ra, 1347f
                  bltu         s2, t2, 1348f
1343:             auipc        a0, 902935
                  srli         s4, s4, 28
                  andi         a5, s1, -546
                  blt          s2, s5, 1362f
1347:             slli         t5, s3, 15
1348:             addi         a4, a4, -146
                  slti         t2, t4, -30
                  sltiu        t6, s9, 1381
                  sra          tp, s6, ra
                  xor          a7, t0, a7
                  bltu         gp, t2, 1360f
                  slli         s3, t6, 30
1355:             bgeu         a7, a1, 1368f
                  bne          zero, a3, 1362f
                  srai         t1, tp, 6
                  bltu         a0, ra, 1374f
                  addi         t3, s11, 1404
1360:             bne          a6, t0, 1371f
                  lui          a3, 992806
1362:             add          t2, s8, t1
                  bgeu         s2, t4, 1370f
                  sub          t3, t5, s4
                  xori         s4, a6, -1268
                  srl          s0, s1, a4
                  xori         s7, ra, 328
1368:             auipc        s4, 112262
                  sltiu        gp, s0, -1155
1370:             and          s5, s7, s9
1371:             xori         a0, t1, 396
                  bne          s9, tp, 1379f
                  beq          t6, s0, 1391f
1374:             bgeu         t2, a0, 1376f
                  sltiu        t2, a3, -2038
1376:             sub          a4, s0, ra
                  srl          s3, s9, a6
                  srai         s9, t4, 11
1379:             beq          t2, s11, 1381f
                  sltiu        a5, ra, 264
1381:             beq          s11, a4, 1390f
                  bltu         a7, a7, 1388f
                  bgeu         ra, gp, 1388f
                  lui          a7, 137418
                  bne          s5, t6, 1401f
                  or           a6, a5, s8
                  bgeu         t6, t2, 1400f
1388:             slt          a2, sp, s3
                  srli         s10, t4, 19
1390:             sll          t5, s11, t0
1391:             add          tp, s2, a0
                  add          a7, t5, s5
                  auipc        t6, 600702
                  addi         s7, a0, 979
                  sll          a0, t1, t4
                  addi         zero, s5, 713
                  sub          s0, s2, t4
                  slli         a2, s6, 23
                  srl          t4, a1, a4
1400:             ori          tp, s2, 1733
1401:             bge          a2, s8, 1416f
                  sltu         t3, s0, a0
                  nop
                  bltu         s7, a0, 1417f
                  sub          ra, t2, a3
                  sltu         t6, t6, a1
                  xor          a2, s4, gp
                  bgeu         gp, s3, 1414f
                  and          s5, s5, ra
                  xori         a4, zero, 459
                  or           t2, s10, tp
                  srl          a1, s7, gp
                  srl          ra, t0, a2
1414:             slti         t6, s9, 1944
                  bltu         zero, s6, 1430f
1416:             add          s10, s1, sp
1417:             or           a0, t5, s6
                  srai         a7, s8, 28
                  andi         s1, a5, -313
                  slli         a0, a2, 17
                  srai         tp, a7, 28
                  srl          s0, t5, t2
                  sltiu        a1, gp, 1869
                  add          t2, tp, zero
                  sub          a7, a4, t0
                  ori          s5, ra, -1651
                  srl          t2, a2, zero
                  slti         s5, t1, -1037
                  xor          s10, s11, t1
1430:             nop
                  sltu         s3, a3, t1
                  srl          a2, s1, t5
                  bne          t2, t4, 1452f
                  srai         s11, s6, 11
                  addi         s9, s11, 471
                  sltiu        a4, s9, 1991
                  or           t3, s9, s8
                  or           zero, t6, s1
                  xori         s5, s8, 1217
                  auipc        ra, 682428
                  sub          zero, t2, a2
                  bltu         t6, a2, 1447f
                  srai         s5, s5, 19
                  lui          s9, 719003
                  sll          s7, s1, s9
                  sltiu        s10, a3, 1940
1447:             sltiu        a1, s6, -1782
                  sub          ra, ra, s4
                  add          sp, tp, s6
                  sub          s1, t6, s10
                  and          gp, s2, s11
1452:             srl          s3, s10, s4
                  slli         s9, s10, 28
                  beq          gp, s7, 1455f
1455:             sltiu        t0, s10, -1611
                  lw           t5, 4(s2)
                  add          s0, t6, s4
                  ori          a2, t2, -885
                  addi         s2, s2, 36
                  sltiu        a7, t1, -969
                  nop
                  srli         t1, t6, 4
                  nop
2083:             addi x8, x30, 0
2083:             jalr x8, x8, 0
sub_3:            bltu         ra, s2, sub_3_stack_p
                  auipc        a2, 619112
                  sltiu        t6, a2, 781
sub_3_stack_p:    addi         s2, s2, -36
                  slti         t3, t4, 1742
                  sw           t5, 4(s2)
                  auipc        a1, 7098
                  sltiu        tp, a2, -781
                  andi         s0, sp, 833
                  and          sp, ra, t5
                  slt          t4, t0, a1
                  xor          s1, t1, a7
sub_3_j5:         jal          t5, sub_4 #jump sub_3 -> sub_4
                  la           t1, sub_4
                  auipc        a0, 209970
                  auipc        s7, 621502
                  sll          a0, s3, a3
                  and          sp, a3, s0
                  addi         t1, t1, 1000
                  andi         s9, s1, 866
                  slli         a0, ra, 26
                  lui          t2, 952668
                  add          s11, s11, a6
sub_3_j6:         jalr         t5, t1, -999 #jump sub_3 -> sub_4
                  la           a7, sub_5
                  sltu         sp, a4, s6
                  sub          a0, t4, s6
                  xor          s0, s6, t3
                  addi         a7, a7, -274
                  ori          t0, s1, 449
                  xori         a0, a4, 689
                  or           tp, s6, t2
sub_3_j7:         jalr         t5, a7, 274 #jump sub_3 -> sub_5
sub_3_0:          jal          t5, 3f
0:                jal          ra, 7f
1:                jal          ra, 9f
2:                jal          s10, 10f
3:                jal          s11, 6f
4:                jal          s1, 1b
5:                jal          ra, 4b
6:                jal          t0, 0b
7:                jal          ra, 2b
8:                jal          ra, 5b
9:                jal          ra, 11f
10:               jal          ra, 8b
11:               slli         t3, s5, 31
sub_3_1:          jal          t5, 7f
0:                jal          ra, 20f
1:                jal          ra, 25f
2:                jal          ra, 18f
3:                jal          ra, 10f
4:                jal          t4, 23f
5:                jal          ra, 4b
6:                jal          ra, 1b
7:                jal          ra, 24f
8:                jal          ra, 0b
9:                jal          ra, 5b
10:               jal          t1, 17f
11:               jal          ra, 22f
12:               jal          ra, 28f
13:               jal          t1, 9b
14:               jal          s5, 15f
15:               jal          ra, 27f
16:               jal          t1, 3b
17:               jal          s5, 12b
18:               jal          ra, 26f
19:               jal          t1, 8b
20:               jal          s0, 21f
21:               jal          t0, 11b
22:               jal          a4, 16b
23:               jal          ra, 2b
24:               jal          ra, 13b
25:               jal          ra, 19b
26:               jal          ra, 14b
27:               jal          t0, 6b
28:               sltiu        a1, sp, 1569
                  or           a1, s1, a7
                  sll          t4, t6, s11
                  bltu         a6, t0, 12f
                  bltu         a2, t6, 5f
                  or           a2, s6, s1
5:                auipc        ra, 99801
                  sub          gp, t4, t2
                  slti         a3, tp, 1438
                  beq          a6, s3, 15f
                  beq          s11, s5, 24f
                  xor          t4, t3, sp
                  bltu         s9, zero, 15f
12:               addi         t3, t0, 143
                  slti         ra, s2, 878
                  srai         t4, a7, 17
15:               addi         s4, t3, -1483
                  addi         s9, a0, 552
                  bne          s10, a0, 28f
                  andi         gp, ra, -1299
                  sll          a1, t2, s0
                  add          a6, s10, gp
                  or           a1, s4, a3
                  slli         a5, s6, 0
                  bge          t0, a0, 41f
24:               and          t0, a1, s8
                  sltiu        t3, s4, 1642
                  andi         s11, t1, -1877
                  beq          gp, s4, 43f
28:               bne          s8, a4, 38f
                  and          a4, a4, t6
                  srli         sp, s8, 4
                  bltu         t4, t0, 36f
                  bge          t4, t5, 38f
                  nop
                  beq          t3, s9, 45f
                  bgeu         s6, s8, 49f
36:               auipc        a5, 306814
                  sub          t5, a3, t2
38:               beq          s6, s7, 45f
                  beq          s11, s2, 51f
                  srai         t3, s9, 11
41:               blt          s3, s11, 45f
                  add          s7, t4, sp
43:               slli         t4, t5, 30
                  sltu         t0, s0, t3
45:               slti         sp, s8, -1120
                  bne          a7, t6, 60f
                  sltiu        t6, s3, -542
                  srai         tp, a1, 30
49:               slt          a5, s6, a5
                  sra          a0, a4, t3
51:               bgeu         s10, s9, 63f
                  sltiu        s0, a7, -109
                  auipc        zero, 998100
                  ori          s0, s11, 1816
                  bltu         a5, s7, 63f
                  addi         zero, s10, 1058
                  nop
                  sltiu        t0, s6, 1399
                  slli         s11, s8, 26
60:               slti         s3, a7, 1049
                  xor          s5, t1, s9
                  bltu         ra, a1, 75f
63:               sll          s1, s11, t1
                  or           zero, s2, a2
                  slti         t1, t2, 226
                  srli         sp, s4, 28
                  nop
                  lui          a6, 530237
                  sra          t1, s6, zero
                  beq          a5, s4, 73f
                  bgeu         sp, t1, 76f
                  addi         sp, s6, 1686
73:               beq          s0, a6, 81f
                  xori         s7, a5, 1445
75:               slli         a4, s0, 8
76:               slt          a5, ra, a1
                  slti         t5, t6, 919
                  srai         tp, t6, 16
                  blt          t0, s5, 92f
                  addi         s1, gp, 1239
81:               bge          tp, ra, 91f
                  sra          t6, a2, a3
                  lui          s5, 115844
                  bge          t4, s11, 96f
                  nop
                  bltu         t1, s9, 104f
                  srli         t1, t1, 24
                  or           t2, s7, t0
                  sra          a6, sp, a2
                  andi         a0, s2, -599
91:               sra          a3, a6, s1
92:               add          a6, a4, tp
                  sltiu        s11, a1, 1009
                  lui          t1, 161353
                  bne          tp, t4, 99f
96:               sll          a3, t3, s9
                  ori          t0, a0, 787
                  srai         s4, t1, 14
99:               add          s3, t2, a5
                  sltiu        s10, s11, 329
                  slli         t0, gp, 15
                  andi         s5, s5, 937
                  slti         s3, s2, -987
104:              ori          a3, s3, 980
                  beq          s3, t5, 114f
                  addi         s4, s7, 1598
                  bgeu         s6, s3, 108f
108:              bne          ra, a2, 111f
                  bge          t1, t3, 114f
                  sll          a3, t2, t1
111:              xori         a1, t3, 1859
                  xor          s11, a0, a6
                  and          t0, sp, a3
114:              sra          s1, s10, a4
                  lw           t5, 4(s2)
                  lui          a3, 674336
                  lui          s4, 827767
                  slt          a3, a1, s10
                  slt          t2, s11, zero
                  ori          s10, s3, 915
                  andi         a0, s11, -680
                  srl          a4, a2, a2
                  addi         s2, s2, 36
                  sltiu        s9, ra, -328
                  auipc        t3, 439566
202:              addi x15, x30, 0
202:              jalr x15, x15, 0
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
                  add x22, x18, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

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
                  add x22, x18, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

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
                  add x22, x18, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

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
                  add x22, x18, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

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
                  add x22, x18, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

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
                  add x22, x18, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

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
                  add x22, x18, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

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
                  add x22, x18, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

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
                  add x22, x18, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

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
                  add x22, x18, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

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
                  add x22, x18, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

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
                  add x22, x18, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

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
                  add x22, x18, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

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
                  add x22, x18, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

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
                  add x22, x18, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

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
                  add x22, x18, zero
                  csrr x17, 0x341 # MEPC
                  csrr x17, 0x342 # MCAUSE
                  li x11, 0x3 # BREAKPOINT
                  beq x17, x11, ebreak_handler
                  li x11, 0x8 # ECALL_UMODE
                  beq x17, x11, ecall_handler
                  li x11, 0x9 # ECALL_SMODE
                  beq x17, x11, ecall_handler
                  li x11, 0xb # ECALL_MMODE
                  beq x17, x11, ecall_handler
                  li x11, 0x1
                  beq x17, x11, instr_fault_handler
                  li x11, 0x5
                  beq x17, x11, load_fault_handler
                  li x11, 0x7
                  beq x17, x11, store_fault_handler
                  li x11, 0xc
                  beq x17, x11, pt_fault_handler
                  li x11, 0xd
                  beq x17, x11, pt_fault_handler
                  li x11, 0xf
                  beq x17, x11, pt_fault_handler
                  li x11, 0x2 # ILLEGAL_INSTRUCTION
                  beq x17, x11, illegal_instr_handler
                  csrr x11, 0x343 # MTVAL
                  1: la x24, test_done
                  jalr x1, x24, 0

ecall_handler:    
                  la x17, _start
                  sw x0, 0(x17)
                  sw x1, 4(x17)
                  sw x2, 8(x17)
                  sw x3, 12(x17)
                  sw x4, 16(x17)
                  sw x5, 20(x17)
                  sw x6, 24(x17)
                  sw x7, 28(x17)
                  sw x8, 32(x17)
                  sw x9, 36(x17)
                  sw x10, 40(x17)
                  sw x11, 44(x17)
                  sw x12, 48(x17)
                  sw x13, 52(x17)
                  sw x14, 56(x17)
                  sw x15, 60(x17)
                  sw x16, 64(x17)
                  sw x17, 68(x17)
                  sw x18, 72(x17)
                  sw x19, 76(x17)
                  sw x20, 80(x17)
                  sw x21, 84(x17)
                  sw x22, 88(x17)
                  sw x23, 92(x17)
                  sw x24, 96(x17)
                  sw x25, 100(x17)
                  sw x26, 104(x17)
                  sw x27, 108(x17)
                  sw x28, 112(x17)
                  sw x29, 116(x17)
                  sw x30, 120(x17)
                  sw x31, 124(x17)
                  la x24, write_tohost
                  jalr x0, x24, 0

instr_fault_handler:
                  add x18, x22, zero
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
                  add x18, x22, zero
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
                  add x18, x22, zero
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
                  csrr  x17, 0x341
                  addi  x17, x17, 4
                  csrw  0x341, x17
                  add x18, x22, zero
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
                  csrr  x17, 0x341
                  addi  x17, x17, 4
                  csrw  0x341, x17
                  add x18, x22, zero
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
                  csrr  x17, 0x300 # MSTATUS;
                  csrr  x17, 0x304 # MIE;
                  csrr  x17, 0x344 # MIP;
                  csrrc x17, 0x344, x17 # MIP;
                  add x18, x22, zero
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
