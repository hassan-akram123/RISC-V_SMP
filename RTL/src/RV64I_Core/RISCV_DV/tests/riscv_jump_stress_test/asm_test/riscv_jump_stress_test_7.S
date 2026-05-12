.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x14, h0_start
jalr x0, x14, 0
h0_start:
                  li x2, 0x40000100
                  csrw 0x301, x2
kernel_sp:        
                  la x17, kernel_stack_end

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
                  li x0, 0x80000000
                  li x1, 0xe
                  li x2, 0xff48b46e
                  li x3, 0x80000000
                  li x4, 0x80000000
                  li x5, 0xb
                  li x6, 0x5
                  li x7, 0x28a8a587
                  li x8, 0xf
                  li x9, 0xc
                  li x10, 0xfe6e900b
                  li x11, 0xf33ad05a
                  li x12, 0xb
                  li x13, 0x80000000
                  li x14, 0x4
                  li x15, 0x80000000
                  li x16, 0x6
                  li x18, 0x80000000
                  li x19, 0x441e1cf
                  li x20, 0x6771c6a5
                  li x21, 0x3
                  li x22, 0x6
                  li x24, 0xfdd286b1
                  li x25, 0x80000000
                  li x26, 0x3
                  li x27, 0xd
                  li x28, 0x0
                  li x29, 0xf00eafa6
                  li x30, 0x0
                  li x31, 0x0
                  la x23, user_stack_end
main:             srli         t6, s9, 13
                  ori          s3, s9, 395
                  la           a5, sub_3
                  andi         a3, t6, 228
                  sltiu        s10, s7, 319
                  nop
                  addi         a5, a5, 250
                  sltu         zero, s10, s3
main_j2:          jalr         ra, a5, -250 #jump main -> sub_3
                  slli         ra, gp, 4
                  la           t4, sub_1
                  addi         t4, t4, 540
                  ori          ra, sp, -1663
                  andi         t3, s4, -622
                  or           t3, t4, s11
                  sub          t3, ra, a6
                  lui          s2, 240768
                  sll          s2, gp, s5
                  srl          t1, t3, a6
                  slt          a3, s0, t6
                  auipc        zero, 870767
main_j4:          jalr         ra, t4, -539 #jump main -> sub_1
main_1:           jal          ra, 0f
0:                jal          ra, 19f
1:                jal          s9, 14f
2:                jal          ra, 10f
3:                jal          t1, 21f
4:                jal          t1, 22f
5:                jal          t0, 2b
6:                jal          s10, 12f
7:                jal          sp, 8f
8:                jal          ra, 9f
9:                jal          t1, 13f
10:               jal          s0, 1b
11:               jal          ra, 16f
12:               jal          ra, 5b
13:               jal          ra, 3b
14:               jal          ra, 20f
15:               jal          t1, 4b
16:               jal          t1, 15b
17:               jal          ra, 18f
18:               jal          s8, 11b
19:               jal          s8, 7b
20:               jal          ra, 17b
21:               jal          ra, 6b
22:               and          s2, gp, t1
main_2:           jal          ra, 23f
0:                jal          ra, 14f
1:                jal          t5, 10f
2:                jal          ra, 4f
3:                jal          ra, 2b
4:                jal          tp, 0b
5:                jal          ra, 7f
6:                jal          t1, 24f
7:                jal          ra, 8f
8:                jal          t6, 19f
9:                jal          ra, 6b
10:               jal          ra, 5b
11:               jal          s11, 25f
12:               jal          t1, 18f
13:               jal          ra, 1b
14:               jal          ra, 22f
15:               jal          t1, 12b
16:               jal          ra, 15b
17:               jal          ra, 3b
18:               jal          ra, 17b
19:               jal          a2, 20f
20:               jal          t1, 16b
21:               jal          ra, 9b
22:               jal          t1, 11b
23:               jal          t1, 21b
24:               jal          s4, 13b
25:               srli         zero, s11, 8
main_3:           jal          ra, 16f
0:                jal          s11, 7f
1:                jal          ra, 21f
2:                jal          t5, 17f
3:                jal          ra, 4f
4:                jal          t1, 27f
5:                jal          ra, 11f
6:                jal          s11, 18f
7:                jal          s3, 12f
8:                jal          ra, 2b
9:                jal          s10, 0b
10:               jal          t1, 5b
11:               jal          t1, 6b
12:               jal          ra, 14f
13:               jal          t1, 25f
14:               jal          s6, 10b
15:               jal          ra, 3b
16:               jal          ra, 23f
17:               jal          t6, 20f
18:               jal          t1, 8b
19:               jal          t3, 24f
20:               jal          ra, 15b
21:               jal          gp, 26f
22:               jal          s4, 13b
23:               jal          t1, 1b
24:               jal          ra, 9b
25:               jal          ra, 19b
26:               jal          ra, 22b
27:               sra          s3, gp, a2
main_0:           jal          ra, 6f
0:                jal          ra, 4f
1:                jal          s1, 3f
2:                jal          ra, 7f
3:                jal          s11, 14f
4:                jal          t1, 15f
5:                jal          ra, 0b
6:                jal          t1, 13f
7:                jal          ra, 9f
8:                jal          t1, 11f
9:                jal          a3, 12f
10:               jal          ra, 5b
11:               jal          ra, 10b
12:               jal          a6, 1b
13:               jal          ra, 2b
14:               jal          a3, 8b
15:               jal          ra, 16f
16:               sra          ra, tp, a5
                  sltu         a3, s6, t4
                  srai         t5, a6, 9
                  xor          s4, t4, s10
                  slli         s2, s10, 24
                  sll          t6, zero, zero
                  auipc        zero, 818942
                  srli         s0, s1, 2
                  srli         a0, s5, 9
                  sltiu        t3, zero, -271
                  slt          s1, t6, t2
                  addi         s3, t3, 1654
                  xori         tp, a5, 454
                  andi         t6, s6, 804
                  blt          t5, a5, 28f
                  srl          t6, t5, sp
                  slli         t4, tp, 3
                  slli         s11, s7, 8
                  srl          s8, a0, s7
                  srli         t3, t4, 7
                  slt          s1, t6, sp
                  addi         s3, t2, -1477
                  sub          a1, a3, s3
                  bge          s2, s0, 35f
                  and          s3, s4, a1
                  nop
                  srai         s1, t0, 13
                  sll          a6, s2, sp
                  and          s9, s2, s9
28:               bltu         s11, s9, 31f
                  and          s4, a0, s0
                  nop
31:               bge          a3, s3, 47f
                  xori         s11, s3, 945
                  sltu         ra, a4, ra
                  srli         t4, s5, 30
35:               add          s2, a5, s5
                  bgeu         sp, sp, 50f
                  and          t5, s1, s10
                  srli         s4, s7, 2
                  srai         sp, s7, 1
                  bne          zero, a2, 59f
                  slti         s0, s7, 2041
                  beq          a3, s10, 52f
                  sltu         a2, a5, a5
                  sra          s6, s7, tp
                  and          s6, t2, s2
                  beq          a6, t6, 49f
47:               addi         s10, s9, 685
                  xor          a3, t3, t5
49:               lui          s6, 790017
50:               lui          t1, 991416
                  slli         a6, a0, 9
52:               slli         ra, s3, 25
                  slli         a5, tp, 23
                  beq          t4, a4, 73f
                  addi         t2, t2, 594
                  ori          zero, a5, -777
                  beq          a2, a0, 70f
                  bltu         t1, s9, 75f
59:               sra          sp, s3, a7
                  sub          t1, s2, a0
                  bgeu         s5, a3, 72f
                  bltu         s7, s11, 80f
                  sltu         s3, s8, t4
                  lui          zero, 519197
                  or           t0, s3, s7
                  slt          gp, sp, tp
                  bgeu         t5, s2, 69f
                  xor          ra, s8, s4
69:               addi         a6, t1, 1164
70:               slti         t6, s9, 1410
                  bge          t0, s5, 76f
72:               srl          a2, t4, t5
73:               sltu         gp, t5, zero
                  add          s1, a2, sp
75:               srl          a0, a6, s9
76:               addi         t0, t5, -1619
                  srai         zero, s6, 7
                  srai         sp, a3, 26
                  srl          s5, s6, a1
80:               ori          s6, t4, -483
                  sll          s1, a2, t3
                  add          a0, s4, t6
                  or           s9, s4, t5
                  xor          s3, a7, t5
                  bne          s10, tp, 90f
                  add          s1, s1, gp
                  ori          s3, t6, 1544
                  bne          a6, s10, 103f
                  bge          a1, s4, 93f
90:               sub          t4, t1, t6
                  sub          s5, a5, t5
                  andi         s3, a2, 1834
93:               xori         a1, a7, -1740
                  beq          zero, s9, 111f
                  xor          a5, t3, ra
                  sll          zero, a4, a4
                  sra          s4, s1, s10
                  xori         zero, s3, -450
                  sll          a3, s3, a5
                  lui          a0, 260836
                  andi         s5, s6, -839
                  sub          zero, tp, t2
103:              nop
                  blt          a2, s10, 112f
                  srli         s9, t1, 5
                  slti         s8, t5, 708
                  bltu         t5, sp, 123f
                  sltiu        s3, s10, 1880
                  lui          t5, 508266
                  or           a6, t4, a4
111:              xor          s3, s5, t0
112:              or           s5, a2, s1
                  srli         s5, s1, 3
                  lui          zero, 539981
                  ori          s5, s1, -1206
                  sltiu        s8, s5, 1530
                  sltiu        a1, gp, -1741
                  xori         tp, gp, -1401
                  addi         s9, a1, -1898
                  slti         t3, s0, 55
                  beq          s7, t4, 141f
                  bne          a7, a2, 130f
123:              bgeu         ra, a1, 125f
                  lui          t0, 310297
125:              andi         a5, gp, 1378
                  srli         s0, t4, 29
                  andi         t3, a7, 1057
                  slli         t3, s9, 26
                  bne          s1, sp, 133f
130:              andi         s0, a1, -860
                  bgeu         sp, s6, 133f
                  ori          a0, a6, 1920
133:              slti         s3, a5, -127
                  bltu         s4, t0, 144f
                  slt          sp, t2, sp
                  sltu         s8, zero, gp
                  beq          a1, t4, 151f
                  nop
                  addi         s6, s9, 1035
                  sltu         a1, s3, s4
141:              srli         tp, s4, 16
                  bgeu         s3, gp, 149f
                  srai         s10, s6, 15
144:              nop
                  srl          zero, tp, t3
                  bgeu         gp, s5, 149f
                  slli         a6, s8, 2
                  slli         sp, a0, 22
149:              add          s4, a0, s4
                  xori         t3, s1, -970
151:              sltu         s5, s0, s10
                  bgeu         t2, s1, 156f
                  nop
                  slli         t1, t3, 21
                  bltu         t3, sp, 165f
156:              blt          s6, s10, 175f
                  or           t0, a3, t2
                  lui          s5, 632943
                  srl          t1, s4, s4
                  sltu         s8, s10, t5
                  srli         gp, s5, 4
                  srai         tp, s1, 12
                  slti         gp, gp, -102
                  la           a3, sub_3
                  sll          s3, s1, a0
                  slt          a2, s2, gp
                  addi         tp, t1, -1718
                  addi         a3, a3, -590
                  slli         s4, a3, 23
                  sll          t4, s11, tp
main_j3:          jalr         ra, a3, 591 #jump main -> sub_3
                  add          a5, s8, ra
                  bne          t4, t4, 182f
165:              bne          s7, t2, 168f
                  srli         gp, a7, 28
                  srl          a6, s0, a4
168:              add          s0, s10, a0
                  sra          gp, s2, s4
                  andi         a6, ra, 2042
                  srai         t0, gp, 9
                  bne          ra, a3, 177f
                  auipc        a3, 624749
                  nop
175:              sltiu        a5, a2, -842
                  sltu         sp, t5, s6
177:              bgeu         s10, s11, 196f
                  sltu         t2, s2, t6
                  bge          t0, a3, 181f
                  xor          s11, ra, a6
181:              auipc        s3, 839130
182:              ori          t2, s7, -150
                  lui          t2, 823259
                  bge          t5, s7, 201f
                  bge          s6, a6, 198f
                  bgeu         s10, a1, 202f
                  srai         a6, s1, 13
                  andi         s3, s11, -893
                  sra          ra, s10, s1
                  or           s0, t6, t0
                  sltiu        s8, gp, -913
                  xori         tp, ra, -300
                  beq          t4, t4, 198f
                  srai         s8, t6, 15
                  sltiu        a0, a7, 1918
196:              sltiu        t2, tp, 295
                  nop
198:              addi         s11, t6, -424
                  xori         s1, s11, -112
                  auipc        a6, 726301
201:              slli         s4, a5, 30
202:              slli         s2, s9, 16
                  sll          s3, a7, s2
                  xori         t2, s5, 40
                  andi         s10, s11, -2024
                  ori          a6, t4, -1646
                  xor          s1, t6, a7
                  sub          t3, t4, a3
                  slli         zero, s3, 22
                  srli         t0, ra, 11
                  nop
                  sltu         ra, s3, a0
                  auipc        t3, 851998
                  blt          a7, t6, 231f
                  srli         t1, a7, 5
                  sub          a0, t3, s2
                  la           s2, sub_2
                  xori         s6, s2, -995
                  ori          t1, s2, 1306
                  addi         s2, s2, 568
                  sltiu        s0, s1, 643
                  slli         a0, ra, 5
                  add          t0, a1, s1
main_j1:          jalr         ra, s2, -567 #jump main -> sub_2
                  add          s5, a4, s2
                  nop
                  ori          t6, s0, 647
                  auipc        s9, 646818
                  add          s0, s5, a7
                  bne          t5, s8, 229f
                  slli         s9, t4, 14
                  bltu         a3, ra, 227f
                  sra          a3, s9, t5
                  srai         t0, t1, 7
227:              add          s3, zero, s11
                  or           a3, gp, gp
229:              sltiu        s11, sp, -1135
                  sltu         a3, t6, a3
231:              srli         zero, tp, 14
                  blt          s1, s6, 234f
                  add          t5, s4, a3
234:              and          t6, zero, s0
                  la x14, test_done
                  jalr x0, x14, 0
test_done:        
                  li gp, 1
                  ecall
sub_3:            slti         a0, s4, 306
                  addi         s7, s7, -32
                  slti         s5, a3, -330
                  sw           ra, 4(s7)
                  sub          t2, a6, s6
sub_3_26:         jal          ra, 7f
0:                jal          s3, 6f
1:                jal          gp, 4f
2:                jal          ra, 10f
3:                jal          ra, 9f
4:                jal          ra, 3b
5:                jal          t1, 1b
6:                jal          s0, 5b
7:                jal          ra, 0b
8:                jal          t1, 2b
9:                jal          t1, 8b
10:               sra          zero, s10, t3
sub_3_11:         jal          ra, 7f
0:                jal          t1, 2f
1:                jal          tp, 5f
2:                jal          sp, 6f
3:                jal          ra, 4f
4:                jal          ra, 0b
5:                jal          ra, 9f
6:                jal          ra, 8f
7:                jal          t0, 3b
8:                jal          a2, 1b
9:                jal          ra, 10f
10:               sltiu        s1, s0, 802
sub_3_15:         jal          ra, 20f
0:                jal          ra, 5f
1:                jal          gp, 7f
2:                jal          t1, 11f
3:                jal          a3, 8f
4:                jal          t1, 2b
5:                jal          t1, 21f
6:                jal          ra, 16f
7:                jal          t1, 13f
8:                jal          s11, 6b
9:                jal          s5, 12f
10:               jal          t1, 24f
11:               jal          ra, 9b
12:               jal          a5, 15f
13:               jal          ra, 10b
14:               jal          t1, 23f
15:               jal          sp, 22f
16:               jal          t1, 19f
17:               jal          ra, 14b
18:               jal          t1, 3b
19:               jal          ra, 4b
20:               jal          ra, 0b
21:               jal          ra, 18b
22:               jal          t1, 17b
23:               jal          t1, 1b
24:               andi         a0, a5, 112
sub_3_21:         jal          ra, 9f
0:                jal          ra, 6f
1:                jal          a1, 3f
2:                jal          ra, 23f
3:                jal          t1, 20f
4:                jal          a2, 22f
5:                jal          ra, 12f
6:                jal          t1, 7f
7:                jal          ra, 1b
8:                jal          ra, 2b
9:                jal          ra, 18f
10:               jal          sp, 4b
11:               jal          t1, 10b
12:               jal          ra, 15f
13:               jal          ra, 5b
14:               jal          a2, 16f
15:               jal          ra, 14b
16:               jal          t4, 11b
17:               jal          t1, 19f
18:               jal          gp, 13b
19:               jal          ra, 8b
20:               jal          s0, 21f
21:               jal          ra, 17b
22:               jal          ra, 0b
23:               jal          ra, 24f
24:               auipc        s10, 761068
sub_3_19:         jal          ra, 15f
0:                jal          ra, 19f
1:                jal          t1, 20f
2:                jal          t1, 10f
3:                jal          sp, 21f
4:                jal          t1, 3b
5:                jal          t1, 1b
6:                jal          s5, 2b
7:                jal          tp, 16f
8:                jal          sp, 7b
9:                jal          t1, 22f
10:               jal          ra, 18f
11:               jal          ra, 13f
12:               jal          t1, 4b
13:               jal          ra, 6b
14:               jal          t6, 17f
15:               jal          ra, 9b
16:               jal          t5, 11b
17:               jal          ra, 8b
18:               jal          t1, 23f
19:               jal          ra, 14b
20:               jal          ra, 0b
21:               jal          ra, 5b
22:               jal          s6, 12b
23:               sltiu        s2, a3, -1226
sub_3_16:         jal          ra, 11f
0:                jal          ra, 23f
1:                jal          ra, 8f
2:                jal          s2, 5f
3:                jal          t1, 22f
4:                jal          ra, 18f
5:                jal          sp, 13f
6:                jal          t0, 7f
7:                jal          t1, 12f
8:                jal          ra, 16f
9:                jal          t1, 15f
10:               jal          t1, 19f
11:               jal          ra, 17f
12:               jal          s9, 27f
13:               jal          ra, 3b
14:               jal          t1, 21f
15:               jal          t3, 6b
16:               jal          t0, 14b
17:               jal          t1, 20f
18:               jal          ra, 28f
19:               jal          t1, 1b
20:               jal          t1, 0b
21:               jal          t2, 9b
22:               jal          ra, 26f
23:               jal          t1, 10b
24:               jal          a1, 2b
25:               jal          t1, 4b
26:               jal          ra, 25b
27:               jal          t1, 24b
28:               xor          a3, s0, s3
sub_3_1:          jal          ra, 13f
0:                jal          ra, 16f
1:                jal          t1, 23f
2:                jal          gp, 7f
3:                jal          t6, 5f
4:                jal          ra, 3b
5:                jal          t1, 0b
6:                jal          t2, 10f
7:                jal          ra, 20f
8:                jal          s0, 22f
9:                jal          sp, 8b
10:               jal          ra, 28f
11:               jal          ra, 21f
12:               jal          gp, 9b
13:               jal          gp, 11b
14:               jal          a6, 18f
15:               jal          s0, 19f
16:               jal          t1, 24f
17:               jal          t0, 4b
18:               jal          t1, 2b
19:               jal          ra, 29f
20:               jal          a0, 15b
21:               jal          t1, 6b
22:               jal          t1, 14b
23:               jal          tp, 25f
24:               jal          t1, 1b
25:               jal          t1, 27f
26:               jal          t1, 17b
27:               jal          t1, 12b
28:               jal          t1, 26b
29:               nop
sub_3_22:         jal          ra, 24f
0:                jal          t1, 25f
1:                jal          ra, 15f
2:                jal          ra, 13f
3:                jal          s9, 9f
4:                jal          t1, 22f
5:                jal          ra, 11f
6:                jal          t1, 7f
7:                jal          sp, 0b
8:                jal          ra, 29f
9:                jal          s1, 5b
10:               jal          ra, 19f
11:               jal          t0, 17f
12:               jal          t1, 3b
13:               jal          sp, 18f
14:               jal          tp, 8b
15:               jal          ra, 26f
16:               jal          t1, 20f
17:               jal          ra, 27f
18:               jal          ra, 10b
19:               jal          t1, 16b
20:               jal          t1, 14b
21:               jal          ra, 12b
22:               jal          t6, 28f
23:               jal          a5, 4b
24:               jal          ra, 21b
25:               jal          s10, 23b
26:               jal          t1, 6b
27:               jal          ra, 1b
28:               jal          a6, 2b
29:               auipc        a5, 627006
sub_3_12:         jal          ra, 13f
0:                jal          t1, 7f
1:                jal          s0, 21f
2:                jal          ra, 14f
3:                jal          ra, 23f
4:                jal          ra, 11f
5:                jal          sp, 24f
6:                jal          ra, 25f
7:                jal          t1, 20f
8:                jal          ra, 4b
9:                jal          ra, 10f
10:               jal          ra, 1b
11:               jal          ra, 3b
12:               jal          ra, 18f
13:               jal          t6, 19f
14:               jal          s5, 15f
15:               jal          s2, 16f
16:               jal          t3, 8b
17:               jal          ra, 2b
18:               jal          t1, 26f
19:               jal          ra, 12b
20:               jal          t6, 22f
21:               jal          t1, 5b
22:               jal          s10, 9b
23:               jal          t5, 27f
24:               jal          ra, 6b
25:               jal          s5, 17b
26:               jal          a2, 0b
27:               sltu         sp, a2, t1
sub_3_17:         jal          ra, 3f
0:                jal          ra, 9f
1:                jal          s3, 2f
2:                jal          ra, 7f
3:                jal          ra, 1b
4:                jal          t5, 18f
5:                jal          ra, 0b
6:                jal          t6, 5b
7:                jal          ra, 13f
8:                jal          ra, 22f
9:                jal          a1, 12f
10:               jal          ra, 6b
11:               jal          ra, 14f
12:               jal          s9, 11b
13:               jal          ra, 10b
14:               jal          ra, 17f
15:               jal          ra, 8b
16:               jal          ra, 23f
17:               jal          t1, 21f
18:               jal          a6, 20f
19:               jal          tp, 16b
20:               jal          ra, 19b
21:               jal          ra, 15b
22:               jal          gp, 4b
23:               auipc        tp, 432215
sub_3_9:          jal          ra, 12f
0:                jal          ra, 7f
1:                jal          ra, 11f
2:                jal          ra, 17f
3:                jal          ra, 14f
4:                jal          a6, 10f
5:                jal          ra, 19f
6:                jal          t1, 2b
7:                jal          t1, 20f
8:                jal          t1, 22f
9:                jal          ra, 4b
10:               jal          t0, 3b
11:               jal          ra, 18f
12:               jal          ra, 5b
13:               jal          t1, 1b
14:               jal          ra, 13b
15:               jal          t5, 0b
16:               jal          t1, 15b
17:               jal          ra, 9b
18:               jal          t1, 21f
19:               jal          t1, 16b
20:               jal          ra, 6b
21:               jal          a5, 8b
22:               auipc        s10, 414122
sub_3_8:          jal          ra, 19f
0:                jal          ra, 17f
1:                jal          gp, 11f
2:                jal          ra, 0b
3:                jal          ra, 21f
4:                jal          ra, 18f
5:                jal          sp, 12f
6:                jal          ra, 2b
7:                jal          a5, 24f
8:                jal          t1, 4b
9:                jal          ra, 15f
10:               jal          ra, 22f
11:               jal          t1, 20f
12:               jal          ra, 3b
13:               jal          ra, 14f
14:               jal          ra, 6b
15:               jal          ra, 8b
16:               jal          s9, 7b
17:               jal          ra, 9b
18:               jal          ra, 5b
19:               jal          a2, 10b
20:               jal          ra, 23f
21:               jal          ra, 16b
22:               jal          t1, 1b
23:               jal          ra, 13b
24:               sltiu        t5, t1, -496
sub_3_24:         jal          ra, 7f
0:                jal          s8, 25f
1:                jal          ra, 21f
2:                jal          t1, 10f
3:                jal          ra, 18f
4:                jal          ra, 6f
5:                jal          ra, 17f
6:                jal          ra, 8f
7:                jal          tp, 0b
8:                jal          t1, 5b
9:                jal          ra, 14f
10:               jal          ra, 9b
11:               jal          a5, 28f
12:               jal          ra, 24f
13:               jal          sp, 19f
14:               jal          ra, 26f
15:               jal          ra, 22f
16:               jal          t3, 12b
17:               jal          ra, 11b
18:               jal          ra, 16b
19:               jal          t1, 2b
20:               jal          s6, 3b
21:               jal          ra, 23f
22:               jal          t1, 29f
23:               jal          t3, 20b
24:               jal          t1, 27f
25:               jal          t1, 13b
26:               jal          ra, 4b
27:               jal          a3, 15b
28:               jal          t1, 1b
29:               sub          s3, sp, s3
sub_3_7:          jal          ra, 16f
0:                jal          ra, 1f
1:                jal          ra, 15f
2:                jal          t2, 13f
3:                jal          ra, 22f
4:                jal          ra, 17f
5:                jal          tp, 3b
6:                jal          ra, 20f
7:                jal          t2, 19f
8:                jal          ra, 24f
9:                jal          t1, 5b
10:               jal          ra, 14f
11:               jal          ra, 7b
12:               jal          t1, 6b
13:               jal          s10, 12b
14:               jal          sp, 8b
15:               jal          ra, 25f
16:               jal          ra, 18f
17:               jal          ra, 2b
18:               jal          ra, 21f
19:               jal          t1, 10b
20:               jal          t0, 0b
21:               jal          gp, 4b
22:               jal          ra, 23f
23:               jal          ra, 11b
24:               jal          t2, 26f
25:               jal          ra, 9b
26:               srli         t4, s7, 13
sub_3_5:          jal          ra, 19f
0:                jal          t1, 8f
1:                jal          t6, 5f
2:                jal          s5, 4f
3:                jal          ra, 26f
4:                jal          ra, 1b
5:                jal          ra, 3b
6:                jal          ra, 0b
7:                jal          ra, 23f
8:                jal          ra, 10f
9:                jal          ra, 22f
10:               jal          ra, 18f
11:               jal          ra, 9b
12:               jal          ra, 11b
13:               jal          ra, 16f
14:               jal          ra, 25f
15:               jal          ra, 12b
16:               jal          t6, 14b
17:               jal          t1, 7b
18:               jal          s0, 15b
19:               jal          t5, 21f
20:               jal          t4, 24f
21:               jal          t1, 20b
22:               jal          t1, 2b
23:               jal          t6, 6b
24:               jal          gp, 13b
25:               jal          ra, 17b
26:               andi         t0, t2, 1827
sub_3_20:         jal          ra, 3f
0:                jal          ra, 20f
1:                jal          ra, 17f
2:                jal          t1, 9f
3:                jal          ra, 22f
4:                jal          ra, 11f
5:                jal          ra, 0b
6:                jal          a5, 10f
7:                jal          ra, 15f
8:                jal          ra, 6b
9:                jal          ra, 14f
10:               jal          t3, 4b
11:               jal          ra, 25f
12:               jal          t1, 13f
13:               jal          ra, 26f
14:               jal          ra, 12b
15:               jal          t6, 2b
16:               jal          ra, 5b
17:               jal          gp, 16b
18:               jal          t1, 1b
19:               jal          a0, 8b
20:               jal          ra, 7b
21:               jal          ra, 24f
22:               jal          t1, 19b
23:               jal          ra, 21b
24:               jal          ra, 18b
25:               jal          tp, 23b
26:               xori         a0, t4, -99
sub_3_2:          jal          ra, 11f
0:                jal          ra, 2f
1:                jal          ra, 27f
2:                jal          s6, 25f
3:                jal          ra, 15f
4:                jal          ra, 12f
5:                jal          tp, 9f
6:                jal          ra, 4b
7:                jal          ra, 28f
8:                jal          t1, 23f
9:                jal          ra, 0b
10:               jal          ra, 26f
11:               jal          ra, 13f
12:               jal          t1, 10b
13:               jal          s11, 17f
14:               jal          ra, 21f
15:               jal          t2, 19f
16:               jal          t1, 29f
17:               jal          ra, 22f
18:               jal          t1, 3b
19:               jal          t1, 14b
20:               jal          s0, 6b
21:               jal          ra, 16b
22:               jal          t5, 1b
23:               jal          ra, 24f
24:               jal          sp, 20b
25:               jal          ra, 7b
26:               jal          s1, 5b
27:               jal          ra, 8b
28:               jal          ra, 18b
29:               lui          s4, 935117
sub_3_18:         jal          ra, 9f
0:                jal          t1, 18f
1:                jal          s0, 17f
2:                jal          t1, 5f
3:                jal          ra, 6f
4:                jal          ra, 0b
5:                jal          a5, 22f
6:                jal          t1, 19f
7:                jal          t6, 2b
8:                jal          ra, 23f
9:                jal          t6, 12f
10:               jal          s9, 21f
11:               jal          ra, 20f
12:               jal          ra, 3b
13:               jal          t6, 4b
14:               jal          ra, 13b
15:               jal          ra, 16f
16:               jal          ra, 10b
17:               jal          ra, 15b
18:               jal          ra, 11b
19:               jal          ra, 7b
20:               jal          ra, 8b
21:               jal          ra, 14b
22:               jal          s8, 1b
23:               addi         s8, s5, -952
sub_3_25:         jal          ra, 10f
0:                jal          ra, 11f
1:                jal          t1, 0b
2:                jal          ra, 6f
3:                jal          ra, 12f
4:                jal          ra, 2b
5:                jal          ra, 3b
6:                jal          t1, 7f
7:                jal          s0, 13f
8:                jal          ra, 1b
9:                jal          ra, 8b
10:               jal          ra, 5b
11:               jal          gp, 14f
12:               jal          t1, 4b
13:               jal          tp, 9b
14:               sub          t2, a2, t0
sub_3_14:         jal          ra, 10f
0:                jal          t1, 7f
1:                jal          t1, 3f
2:                jal          ra, 1b
3:                jal          t0, 8f
4:                jal          s11, 6f
5:                jal          ra, 11f
6:                jal          ra, 13f
7:                jal          ra, 5b
8:                jal          t2, 12f
9:                jal          t1, 2b
10:               jal          ra, 9b
11:               jal          ra, 4b
12:               jal          t1, 0b
13:               srli         a0, s8, 11
sub_3_23:         jal          ra, 4f
0:                jal          ra, 14f
1:                jal          a1, 21f
2:                jal          ra, 13f
3:                jal          t1, 16f
4:                jal          ra, 10f
5:                jal          ra, 12f
6:                jal          sp, 1b
7:                jal          ra, 26f
8:                jal          s6, 7b
9:                jal          ra, 5b
10:               jal          t1, 6b
11:               jal          ra, 23f
12:               jal          s8, 20f
13:               jal          t1, 3b
14:               jal          ra, 18f
15:               jal          ra, 22f
16:               jal          sp, 25f
17:               jal          ra, 2b
18:               jal          t1, 11b
19:               jal          ra, 9b
20:               jal          t1, 15b
21:               jal          ra, 24f
22:               jal          t2, 8b
23:               jal          ra, 19b
24:               jal          ra, 17b
25:               jal          ra, 0b
26:               srli         t6, a1, 9
sub_3_3:          jal          ra, 15f
0:                jal          ra, 5f
1:                jal          t1, 22f
2:                jal          t1, 23f
3:                jal          ra, 14f
4:                jal          s10, 0b
5:                jal          ra, 17f
6:                jal          t1, 1b
7:                jal          ra, 19f
8:                jal          ra, 18f
9:                jal          t1, 13f
10:               jal          ra, 16f
11:               jal          t1, 3b
12:               jal          ra, 2b
13:               jal          t6, 11b
14:               jal          t4, 8b
15:               jal          t1, 4b
16:               jal          t0, 6b
17:               jal          ra, 20f
18:               jal          ra, 7b
19:               jal          t1, 21f
20:               jal          ra, 10b
21:               jal          t1, 12b
22:               jal          ra, 9b
23:               sltiu        sp, s6, -1412
sub_3_27:         jal          ra, 16f
0:                jal          s4, 26f
1:                jal          ra, 6f
2:                jal          t1, 0b
3:                jal          ra, 2b
4:                jal          gp, 1b
5:                jal          ra, 23f
6:                jal          ra, 27f
7:                jal          s0, 20f
8:                jal          sp, 11f
9:                jal          ra, 25f
10:               jal          ra, 17f
11:               jal          ra, 19f
12:               jal          ra, 15f
13:               jal          ra, 4b
14:               jal          ra, 21f
15:               jal          sp, 8b
16:               jal          ra, 14b
17:               jal          t1, 5b
18:               jal          t1, 12b
19:               jal          ra, 13b
20:               jal          ra, 10b
21:               jal          ra, 22f
22:               jal          ra, 24f
23:               jal          t0, 3b
24:               jal          s6, 9b
25:               jal          ra, 7b
26:               jal          a0, 18b
27:               sll          zero, t5, sp
                  bge          t6, s10, 9f
                  bge          t1, s11, 20f
                  and          s2, s10, a5
                  beq          t4, a7, 19f
                  blt          t0, a1, 18f
                  nop
                  xori         s2, a4, 1885
                  sll          t4, tp, s0
                  srli         s0, a3, 17
9:                srai         a6, t1, 0
                  sll          t3, s6, zero
                  addi         ra, s2, 1928
                  add          a2, a6, tp
                  beq          t4, s8, 20f
                  xor          zero, s4, s3
                  add          t1, s7, s4
                  blt          t4, s5, 25f
                  blt          a6, t2, 20f
18:               srli         t1, s6, 14
19:               bne          t4, a1, 20f
20:               srai         t3, a0, 14
                  addi         zero, a1, -882
                  bgeu         s10, a2, 23f
23:               bne          zero, t6, 42f
                  add          s0, t5, a0
25:               and          t2, a3, s9
                  xori         a5, a1, -796
                  sub          s5, s0, s7
                  lui          s5, 563765
                  slli         t6, a4, 6
                  add          s0, t2, t5
                  xori         s8, s8, 773
                  addi         tp, t2, 593
                  andi         s5, t2, -834
                  bltu         a4, zero, 38f
                  sll          s0, t3, s7
                  beq          gp, s4, 48f
                  beq          a7, zero, 54f
38:               add          t5, tp, s6
                  andi         sp, s11, -640
                  blt          a2, s4, 43f
                  sub          a3, s11, a2
42:               sub          zero, zero, s2
43:               bltu         s6, s8, 55f
                  bne          tp, ra, 56f
                  lui          s1, 534801
                  bne          a5, ra, 57f
                  xori         t1, t1, -1514
48:               ori          a6, a5, 532
                  nop
                  bltu         s7, s2, 69f
                  sll          tp, s5, a7
                  slt          t5, t5, t4
                  bne          a1, tp, 59f
54:               srai         s0, s2, 25
55:               xori         s10, s2, -1746
56:               srai         s9, a2, 8
57:               slt          s9, t4, s6
                  srl          t6, s4, a4
59:               auipc        t2, 487247
                  srl          t5, t6, a1
                  srai         t5, t3, 13
                  beq          s4, a7, 78f
                  xor          zero, tp, a5
                  xori         t2, s2, -1609
                  bgeu         s3, s10, 82f
                  sra          s6, zero, tp
                  srli         s2, a0, 24
                  nop
69:               sltiu        a0, s2, -1782
                  srl          a5, ra, s1
                  lui          t0, 296673
                  sltu         t2, t6, t0
                  bltu         a5, s6, 77f
                  xori         a2, s10, 468
                  sll          a1, t6, a3
                  srai         s1, t2, 15
77:               slti         t6, s6, 1102
78:               slti         t3, s10, -735
                  nop
                  auipc        t0, 841956
                  bge          t6, s0, 98f
82:               srl          a0, t4, t5
                  sltiu        tp, t2, 901
                  bgeu         s11, s6, 103f
                  ori          s8, t4, -1750
                  bgeu         a1, s0, 88f
                  sra          s4, a6, a7
88:               slt          s0, t3, gp
                  nop
                  xori         t4, a5, 18
                  xori         s6, s8, -1244
                  sub          ra, s5, t1
                  bgeu         a5, s1, 113f
                  ori          s8, t2, 1937
                  auipc        s4, 917097
                  add          s11, s5, s10
                  sltiu        s10, s10, 33
98:               srai         s8, a1, 25
                  nop
                  srli         s8, s7, 6
                  addi         s3, t3, -575
                  ori          s10, zero, -1124
103:              or           a6, t1, gp
                  xori         s8, s1, -568
                  auipc        s8, 407550
                  sltu         s3, s2, a0
                  slt          a2, s5, s2
                  nop
                  lui          t4, 971416
                  beq          s3, s9, 127f
                  srai         a0, t1, 14
                  nop
113:              sll          tp, a3, t4
                  srli         s8, t5, 20
                  auipc        t3, 200359
                  sub          s5, t5, s7
                  auipc        s5, 698192
                  srl          ra, ra, gp
                  bgeu         a7, zero, 121f
                  andi         s0, t3, -489
121:              bne          zero, s8, 130f
                  beq          t1, zero, 133f
                  addi         t6, t5, -940
                  xori         t5, ra, 1795
                  blt          s8, s4, 141f
                  sll          t4, s9, s7
127:              blt          s9, s0, 131f
                  nop
                  srl          s6, s4, a7
130:              or           s4, s11, a2
131:              srl          s1, s8, s1
                  sll          s5, s9, s8
133:              sra          t5, tp, s10
                  sll          a2, t3, t4
                  sll          t4, zero, a5
                  bne          s9, a6, 148f
                  beq          s0, a4, 139f
                  bge          s11, ra, 141f
139:              nop
                  blt          a0, a0, 147f
141:              bne          tp, s11, 143f
                  srli         t4, s6, 29
143:              srli         t1, tp, 28
                  lui          zero, 69080
                  sll          s3, a7, a4
                  sll          a6, sp, tp
147:              bgeu         t5, t2, 158f
148:              sltu         s10, s7, a5
                  sltiu        s0, s7, 1704
                  sltiu        s4, a1, -1508
                  srl          s3, sp, t4
                  sub          sp, t3, t3
                  andi         s10, a3, -1700
                  sra          s2, s1, t0
                  and          a2, a1, ra
                  bne          a0, s3, 173f
                  sll          s4, a3, t2
158:              srli         s4, a2, 21
                  beq          s3, s1, 168f
                  auipc        ra, 742678
                  bne          a4, s8, 170f
                  xori         a5, s3, 1518
                  ori          a1, s7, -1058
                  xori         s10, a3, -589
                  bge          t2, a4, 177f
                  blt          s7, a2, 185f
                  xori         t3, s0, 394
168:              lui          s4, 401163
                  sra          a2, s3, a4
170:              slti         t2, a7, 19
                  ori          t2, a5, -376
                  sub          a1, t1, a1
173:              beq          s3, tp, 189f
                  ori          ra, t6, 1969
                  auipc        s3, 899106
                  slti         t3, a6, -1065
177:              add          s1, a5, t0
                  slli         a0, s6, 27
                  srl          s10, s1, a3
                  srl          s5, t5, gp
                  slt          t1, sp, t6
                  bltu         s6, s8, 196f
                  xor          s8, s2, ra
                  bgeu         s0, a2, 195f
185:              beq          s2, a4, 204f
                  and          a0, s6, zero
                  xori         ra, a7, 553
                  slli         a0, zero, 26
189:              sltu         t1, t2, s5
                  srli         a1, t6, 12
                  srl          s4, s7, t0
                  srli         tp, s10, 28
                  add          s2, a5, gp
                  beq          t5, s10, 214f
195:              nop
196:              slti         s3, s2, -351
                  slti         t2, a7, 1346
                  sra          t2, s1, t1
                  slti         s6, s4, 1700
                  xori         s3, s6, 757
                  lui          t0, 58859
sub_3_0:          jal          ra, 6f
0:                jal          ra, 11f
1:                jal          ra, 7f
2:                jal          ra, 0b
3:                jal          t1, 13f
4:                jal          gp, 5f
5:                jal          ra, 14f
6:                jal          t1, 2b
7:                jal          ra, 10f
8:                jal          ra, 1b
9:                jal          ra, 4b
10:               jal          ra, 12f
11:               jal          t1, 3b
12:               jal          ra, 9b
13:               jal          ra, 8b
14:               sra          t6, a5, a6
                  sll          a0, s2, t1
                  sub          a3, s1, s10
204:              sra          zero, s2, t1
                  ori          s8, t2, -1692
                  andi         a1, s3, -1034
                  add          t6, s7, t4
                  srai         s2, a6, 25
                  xor          a5, s0, s10
                  sll          sp, a1, ra
                  lui          zero, 1023857
                  slt          gp, zero, a5
                  xori         a2, t1, 1659
214:              bltu         t2, zero, 233f
                  sltu         s9, t0, a5
                  bgeu         t0, ra, 233f
                  and          gp, a1, sp
                  slti         t1, t1, -202
                  sll          s4, s3, a3
                  and          s9, gp, t4
                  ori          a2, s11, 322
                  slti         t4, s1, -1084
                  bge          zero, gp, 242f
                  srli         s10, s1, 18
                  xor          s5, s2, a4
                  bne          s2, sp, 238f
                  sltiu        a1, a4, 1917
                  beq          t3, zero, 245f
                  sub          a1, a5, t4
                  xor          s8, gp, s1
                  xor          s9, t1, s1
                  bltu         tp, sp, 235f
233:              sra          s5, s7, s0
                  bgeu         t3, a4, 235f
235:              addi         s6, t3, 956
                  srai         ra, t5, 23
                  addi         a3, t0, 1042
238:              slti         tp, s6, -1953
                  or           tp, a4, a4
                  srl          s8, a7, a3
                  add          a2, s9, a3
242:              slti         s10, s9, 218
                  sra          s0, s8, a7
                  andi         t0, a1, 1662
245:              beq          ra, a1, 262f
                  auipc        s6, 744726
                  nop
                  beq          s2, t2, 257f
                  bge          s10, a2, 255f
                  srl          a6, gp, t1
                  sra          sp, a6, sp
                  srai         t4, a7, 27
                  beq          t3, a5, 257f
                  srl          s5, t4, zero
255:              sltu         a3, s5, a1
                  sra          a6, a5, a5
257:              bge          a5, a2, 258f
258:              slt          s1, s9, s6
                  bgeu         sp, s3, 261f
                  addi         gp, a3, -875
261:              nop
262:              lui          s2, 64041
                  bltu         s10, tp, 282f
                  xor          s2, s7, s11
                  addi         t1, a5, 2021
                  bgeu         s8, s4, 278f
                  nop
                  nop
                  lui          s5, 832532
                  slli         t2, s2, 27
                  ori          t5, t4, -723
                  or           t1, tp, s7
                  sll          t3, t3, s11
                  sltu         t1, s2, t3
                  slt          t4, t6, gp
                  and          t4, s6, s6
                  bgeu         a0, a6, 293f
278:              auipc        ra, 517765
                  srl          s2, a0, a7
                  ori          a1, a6, 1583
                  ori          zero, gp, -529
282:              sll          a0, t3, s9
                  srl          t3, t6, s9
                  sltiu        ra, t3, -748
                  sub          t0, s8, a0
                  srli         tp, sp, 26
                  auipc        s0, 559124
                  slt          s2, s8, t5
                  sra          t2, a0, t0
                  or           t4, t5, s1
                  bge          a3, t2, 310f
                  sltiu        t4, sp, -339
293:              slli         t2, s4, 28
                  ori          s9, s3, 1121
                  slti         s10, s10, -2011
                  srai         a5, t2, 22
                  blt          t0, s3, 309f
                  auipc        t4, 986369
                  lui          s0, 741770
                  addi         s4, s11, -1137
                  beq          s11, t2, 302f
302:              srai         ra, tp, 2
                  bltu         a4, a1, 314f
                  bne          t6, s0, 321f
                  or           s11, sp, t3
                  and          a3, s7, a2
                  auipc        t5, 762907
                  sra          t5, s5, t3
309:              nop
310:              bge          gp, a7, 313f
                  xor          t1, s0, s10
                  add          a0, zero, ra
313:              blt          a4, zero, 314f
314:              blt          t1, tp, 330f
                  sltu         a3, s8, a7
                  bltu         t5, s0, 320f
                  xor          ra, a6, gp
                  andi         s5, a4, -21
                  bltu         gp, a7, 328f
320:              andi         s11, t2, 1823
321:              slt          t4, a0, t3
                  nop
                  srli         t3, s0, 19
                  srl          t3, s6, s2
                  beq          a2, sp, 327f
                  blt          s2, s8, 343f
327:              beq          s6, s11, 338f
328:              bne          s4, s4, 345f
                  sub          s11, s1, s3
330:              bge          t5, sp, 349f
                  blt          a6, s5, 335f
                  xor          s9, s8, s11
                  bgeu         s5, t4, 336f
                  bltu         t6, s4, 343f
335:              slti         a5, s5, -1468
336:              slli         t4, s3, 23
                  sra          t1, t5, a7
338:              srli         t3, t2, 6
                  auipc        t6, 191394
                  and          s11, t0, t0
                  srl          s1, a0, s11
                  blt          s0, a7, 359f
343:              srl          s1, sp, s7
                  lui          t3, 882122
345:              addi         a1, tp, -1560
                  nop
                  slli         s4, a6, 25
                  sra          s10, a2, a3
349:              slt          sp, s9, s10
                  addi         s4, sp, 219
                  slti         t0, t3, 475
                  and          t0, ra, gp
                  srl          a6, a6, s4
                  sltu         zero, zero, s10
                  or           tp, a5, sp
                  auipc        s2, 810034
                  sra          s8, t0, s2
                  auipc        s3, 787684
359:              beq          s10, s3, 366f
                  sltiu        s10, a0, -1166
                  bge          a5, zero, 380f
                  bgeu         a1, tp, 374f
                  and          s8, tp, gp
                  bne          a0, zero, 378f
                  slli         zero, t4, 13
366:              srli         s0, t1, 15
                  bne          t1, s1, 376f
                  srli         a6, zero, 29
                  blt          s9, a4, 389f
                  slti         a6, s5, -110
                  addi         t3, s8, -91
                  addi         s5, sp, -1405
                  slli         s6, zero, 27
374:              srai         t5, s8, 26
                  sub          t2, t6, gp
376:              sltu         a1, s6, a2
                  srli         t2, sp, 13
378:              srli         ra, s10, 4
                  xor          s3, s9, t2
380:              xori         s11, a2, -220
                  sub          t6, t5, a2
sub_3_13:         jal          ra, 9f
0:                jal          sp, 4f
1:                jal          ra, 16f
2:                jal          t1, 13f
3:                jal          t1, 21f
4:                jal          ra, 6f
5:                jal          ra, 7f
6:                jal          sp, 22f
7:                jal          t1, 25f
8:                jal          ra, 3b
9:                jal          ra, 15f
10:               jal          t1, 5b
11:               jal          sp, 26f
12:               jal          ra, 17f
13:               jal          tp, 1b
14:               jal          ra, 18f
15:               jal          t1, 24f
16:               jal          ra, 19f
17:               jal          t1, 23f
18:               jal          ra, 20f
19:               jal          ra, 11b
20:               jal          ra, 2b
21:               jal          sp, 12b
22:               jal          ra, 10b
23:               jal          ra, 0b
24:               jal          ra, 27f
25:               jal          ra, 14b
26:               jal          a1, 28f
27:               jal          t1, 8b
28:               sltiu        tp, s11, -1711
                  sll          s6, s9, t4
                  lui          tp, 77905
                  xor          t4, t2, s9
                  addi         s8, t5, 1617
                  srli         s5, s10, 19
                  andi         a1, t1, 151
                  xori         s11, tp, -1519
389:              sltu         s10, s10, t0
                  sll          t4, s11, zero
                  and          t1, t5, a0
                  sll          s3, s0, a5
                  slli         a6, a1, 14
                  srl          s8, s8, t4
                  lui          t6, 699868
                  sra          s3, s2, t4
                  sltiu        s2, tp, -1946
                  lui          ra, 983792
                  srli         s9, ra, 31
                  slt          zero, a3, s1
                  srl          t4, s11, gp
                  xori         a2, s3, 572
                  and          a5, ra, s8
                  beq          s5, s1, 410f
                  add          t3, tp, a5
                  bne          s0, ra, 423f
                  slti         t2, s4, 90
                  slti         t4, ra, -110
                  srli         t0, t5, 25
410:              sltu         gp, s11, a0
                  and          zero, a5, s10
                  and          s0, s4, s0
                  nop
                  sra          s0, s4, s0
                  and          ra, t5, t5
                  auipc        t1, 579178
                  add          sp, a3, a5
                  slt          a0, a5, sp
                  addi         zero, tp, -339
                  andi         zero, t3, -461
                  bne          t5, s9, 423f
                  sll          zero, s11, gp
423:              bne          ra, gp, 426f
                  srai         s2, s2, 15
                  slti         a0, sp, -1998
426:              auipc        a6, 206359
                  bge          sp, tp, 436f
                  beq          ra, s2, 442f
                  bne          s9, a0, 445f
                  sltiu        s5, s6, 213
                  sll          s8, t4, a2
                  xor          t3, sp, tp
                  srli         s8, s1, 30
                  xori         t5, s1, -215
                  sra          a6, s4, s3
436:              bgeu         gp, t6, 445f
                  bge          s3, sp, 441f
                  bgeu         t2, ra, 444f
                  srl          s10, tp, s5
                  andi         s8, s1, 591
441:              srai         a6, s6, 18
442:              addi         a1, a1, -994
                  bne          s1, s9, 462f
444:              sltiu        s0, t3, 701
445:              bge          s11, s10, 465f
                  bltu         a3, s4, 463f
                  sltu         a6, t2, a0
                  bne          t0, s7, 455f
                  add          ra, s9, s6
                  srai         s8, s11, 30
                  nop
                  add          s8, a2, s1
                  blt          s6, a2, 470f
                  addi         a0, a4, -854
455:              xor          s4, a7, s3
                  blt          s5, s11, 460f
                  srli         gp, a6, 31
                  add          gp, a1, t1
                  bge          s0, s2, 471f
460:              bge          t2, s1, 479f
                  slti         a1, s0, -1859
462:              beq          t1, a7, 473f
463:              andi         sp, s0, -1403
                  sub          s3, s9, a6
465:              srl          s2, a6, tp
                  sub          s2, s7, t2
                  sra          t3, t4, s2
                  slt          sp, a6, a6
                  bgeu         t2, tp, 486f
470:              or           tp, s1, t6
471:              bge          s1, a0, 483f
                  nop
473:              srai         s10, s7, 2
                  auipc        a1, 1004870
                  blt          sp, s8, 476f
476:              xor          a6, s9, t0
                  ori          s3, s0, -1876
                  beq          a5, s1, 480f
479:              bltu         a1, zero, 488f
480:              or           s8, a5, a2
                  addi         a3, a5, -1353
                  srai         s2, s8, 5
483:              sub          s4, t1, s8
                  srai         a0, s3, 16
                  blt          s2, a3, 497f
486:              beq          t4, t1, 502f
                  add          s2, sp, a6
488:              sltiu        s9, s10, -261
                  blt          s1, t2, 508f
                  sltiu        a6, a5, -60
                  bne          s1, a6, 502f
                  lui          t3, 257140
                  sub          a2, gp, s3
                  sll          zero, s10, s1
                  bge          a6, s4, 514f
                  bne          t0, t0, 499f
497:              slli         sp, zero, 4
                  slli         a5, t5, 3
499:              nop
                  sra          s10, s1, a7
                  slli         s1, t2, 16
502:              bltu         s0, a7, 503f
503:              addi         t4, t1, -247
                  auipc        s2, 460282
                  blt          t3, sp, 516f
                  sltiu        tp, t0, 1040
                  sltu         s6, a2, t1
508:              beq          s11, ra, 511f
                  xori         gp, t3, -335
                  slli         t1, t4, 27
511:              srai         t1, s4, 1
                  bltu         s7, tp, 531f
                  lui          t1, 996746
514:              ori          a0, gp, 1652
                  add          t1, t0, s4
516:              sltu         s4, t6, a3
                  sra          a2, s6, a1
                  bgeu         a1, gp, 535f
                  xori         zero, t6, 1607
                  srl          s3, a2, t0
                  xori         sp, a3, -531
                  lui          zero, 41168
                  lui          s9, 999990
                  slt          s11, t5, s8
                  auipc        s1, 963004
                  xor          zero, s7, t0
                  sltiu        a0, a1, -1488
                  bgeu         s8, zero, 531f
                  and          gp, a2, t1
                  slti         s2, t2, -989
531:              beq          tp, s0, 548f
                  sra          s10, s1, t6
                  sll          s4, t1, a3
                  slti         sp, a4, -2044
535:              or           t3, a1, s2
                  bltu         a5, s8, 537f
537:              andi         t1, s10, 236
                  lui          s11, 665782
                  andi         s4, tp, 1244
                  sub          s9, s5, gp
                  lui          t6, 212867
                  nop
                  bge          s11, t0, 555f
                  nop
                  beq          s10, a4, 547f
                  sra          a6, a3, t2
547:              slt          s1, t4, tp
548:              and          t3, s5, zero
                  ori          t4, s2, -174
                  bge          t3, a3, 557f
                  andi         t2, s0, -1947
                  srli         a3, a7, 8
                  srl          t5, s2, a6
                  or           s0, a5, a1
555:              or           t3, t2, t6
                  nop
557:              or           zero, s11, a5
                  lui          t6, 78271
                  slti         tp, t4, 919
                  sra          t3, s9, a3
                  xor          s1, a4, s5
                  addi         a6, a0, -847
                  srl          s2, t3, tp
                  ori          a3, tp, 410
                  slt          s8, t6, a0
                  sltu         t4, tp, s8
                  blt          s8, ra, 586f
                  slli         a2, t2, 3
                  slli         s8, t1, 16
                  bltu         s8, a1, 586f
                  and          a6, a5, tp
                  sll          ra, s9, a3
                  ori          tp, zero, 1090
                  sll          a5, a2, tp
                  andi         a0, t5, 991
                  beq          s7, s3, 585f
                  sra          s9, a6, a5
                  srl          t3, s2, s11
                  xor          a1, sp, t5
                  sltu         a6, ra, s5
                  slt          zero, t1, t2
                  bge          s2, a1, 583f
583:              sltiu        s11, t6, 1777
                  andi         t2, t3, -737
585:              srli         s8, t0, 19
586:              bge          ra, s1, 592f
                  srl          s10, s1, a4
                  bltu         t5, s7, 599f
                  auipc        a1, 928034
                  and          sp, a6, a5
                  lui          s10, 998282
592:              addi         a3, s11, 1936
                  sltu         a0, s7, t2
                  blt          a3, s10, 598f
                  andi         s1, s5, -1561
                  bgeu         s3, a6, 615f
                  sltu         a5, s5, t5
598:              xori         zero, a7, -145
599:              slli         a1, ra, 3
                  bge          a1, s4, 612f
                  sltu         a0, t6, sp
                  sra          s3, s8, s5
                  sll          s2, s9, s8
                  sra          tp, a5, s10
                  sub          a1, zero, s9
                  ori          t3, s0, -1809
                  add          s4, a3, s9
                  sll          s6, a6, t4
                  auipc        a6, 268351
                  and          s6, zero, a1
                  bgeu         a6, s3, 628f
612:              sltu         t6, s8, t4
                  addi         s5, s9, 1466
                  sll          s3, s3, s0
615:              beq          gp, s6, 624f
                  add          s9, s8, t5
                  nop
                  xor          a3, a5, t4
                  addi         s3, a7, -1371
                  srli         t2, t2, 16
                  bne          t3, ra, 641f
                  and          s11, s6, a1
                  add          t1, a6, a1
624:              sub          s1, a5, s1
                  sub          s1, sp, s9
                  slti         t1, s3, -1365
                  or           s11, s4, s7
628:              lui          t2, 348297
                  slt          a2, t5, a5
                  sltiu        a2, t4, 1441
                  srl          s1, s8, t5
                  bltu         t1, a4, 634f
                  add          t1, tp, t5
634:              bltu         s3, a1, 651f
                  bltu         a1, a3, 651f
                  bltu         s5, s1, 655f
                  add          t6, a6, t6
                  srl          t4, t5, ra
                  slti         tp, t0, 1438
                  nop
641:              bge          a7, a5, 655f
                  sll          s9, s9, tp
                  auipc        gp, 962463
                  addi         t5, t5, 1411
                  lui          a0, 442864
                  srli         a6, a1, 15
                  sltu         a1, a5, t1
                  xor          zero, t6, s5
                  bgeu         a5, a3, 653f
                  beq          s0, s2, 662f
651:              slt          s4, t0, s6
                  slli         s5, s7, 26
653:              beq          s3, s9, 662f
                  or           ra, a6, s7
655:              beq          t3, a7, 657f
                  xori         s11, s8, -1712
657:              ori          s11, a7, -307
                  sra          sp, a2, a3
                  xor          s0, s7, t4
                  nop
                  andi         a1, t5, 296
662:              srl          sp, t4, a7
                  slli         s0, s11, 0
                  xor          t6, s7, tp
                  slti         s4, s0, -1072
                  bne          sp, s10, 675f
                  xori         s5, s2, 1182
                  or           s1, a2, s5
                  lui          ra, 578402
                  slt          t4, s3, gp
                  auipc        s1, 675208
                  sltu         s0, s1, a6
                  sll          s1, a1, s3
                  lui          gp, 995447
675:              slti         a1, t2, -696
                  slti         s2, t5, 1500
                  or           s5, a6, s10
                  slt          t6, t0, s0
                  beq          a0, s9, 690f
                  lui          a3, 221935
                  ori          a2, s0, -1763
                  bgeu         tp, s5, 701f
                  bgeu         s6, t4, 702f
                  and          t6, s7, s11
                  slti         t5, s5, -554
                  and          t2, t3, t4
                  ori          s5, t3, 475
                  srl          t0, s8, a6
                  srli         a2, sp, 24
690:              sltu         t4, a4, s3
                  ori          t3, s0, -514
                  addi         zero, t5, -751
                  slli         a3, t4, 13
                  addi         gp, sp, -1738
                  nop
                  srai         gp, s4, 30
                  sltiu        s1, a6, -336
                  andi         a6, a3, -196
                  sra          t2, zero, s1
                  bltu         t2, zero, 719f
701:              slt          a3, zero, s8
702:              beq          s7, s2, 711f
                  bgeu         s2, t1, 715f
                  add          t2, a2, s6
                  add          t5, s4, a5
                  addi         t6, a0, -1966
                  xor          t5, s1, t4
                  auipc        t4, 800892
                  bgeu         s1, s4, 712f
                  addi         a2, a7, -1765
711:              slli         s1, sp, 4
712:              bltu         a1, t4, 713f
713:              and          s10, t0, a6
                  ori          s8, a5, 1983
715:              bge          s1, s11, 732f
                  and          t1, a0, s1
                  bge          zero, ra, 737f
                  nop
719:              bgeu         s11, s5, 722f
                  and          s10, t4, s5
                  srl          s8, s10, s0
722:              srl          s1, zero, s7
                  ori          a3, s5, 1414
                  slt          s2, s2, t1
                  or           a3, t3, gp
                  and          a5, t6, t0
                  sub          s1, s1, t1
                  or           a3, t1, t6
                  bge          s8, a5, 736f
                  lui          a3, 54274
                  nop
732:              slli         t6, gp, 25
                  sltu         s4, s11, s4
                  add          a3, s8, s2
                  sltu         a6, t0, a7
736:              blt          tp, s11, 742f
737:              addi         s2, s11, 1519
                  nop
                  srli         s5, s3, 17
                  srl          s4, s9, s1
                  lui          a2, 98245
742:              and          t2, s9, a0
                  and          s6, a3, s8
                  xori         s6, s1, 1455
                  slti         a5, ra, 853
                  slti         s4, s8, -1940
                  bgeu         s3, t4, 764f
                  xori         s2, a4, 1213
                  bltu         a7, s0, 761f
                  and          zero, ra, a2
                  slt          a2, t3, t5
                  srli         t4, t4, 19
                  slli         t4, t3, 21
                  bgeu         a3, a1, 768f
                  srli         a3, a2, 25
                  lui          a6, 536517
                  andi         s10, a6, -696
                  and          t2, ra, s8
                  and          zero, s1, a2
                  bge          t2, sp, 761f
761:              xori         t4, a3, -372
                  sltiu        sp, s1, -895
                  sra          s2, ra, s2
764:              add          t0, a5, s8
                  nop
                  sra          a5, t6, t0
                  and          s6, t6, s9
768:              slti         gp, s6, -100
                  bltu         ra, a2, 771f
                  bltu         t5, s0, 774f
771:              beq          s3, zero, 787f
                  bltu         gp, a0, 784f
                  srl          s11, t1, tp
774:              srai         ra, a2, 23
                  xor          sp, a5, s8
                  sltu         s5, s10, s8
                  slli         s5, t6, 19
                  slli         t5, s1, 26
                  ori          s6, a7, -1332
                  xori         s3, s10, 359
                  srai         s3, a7, 31
                  srl          t0, s0, a4
                  beq          a2, zero, 794f
784:              srl          s11, gp, a2
                  srai         t5, tp, 11
                  bltu         a7, s10, 803f
787:              sltu         zero, s8, t1
                  lui          t3, 829338
                  sub          a0, t0, s11
                  bge          a6, t6, 794f
                  slti         gp, zero, -401
                  sltu         s11, t1, s6
                  bltu         a7, s0, 810f
794:              beq          a7, t3, 810f
                  slli         s4, ra, 11
                  and          s1, gp, s11
                  add          a6, s3, s6
                  andi         s10, a4, 464
                  nop
                  srai         s3, t0, 2
                  xor          a6, a5, a1
                  andi         zero, t2, 1437
803:              lui          gp, 140043
                  bgeu         t6, ra, 813f
                  xori         t6, s2, -238
                  srli         s8, tp, 8
                  sra          a6, a6, gp
                  bne          a3, t4, 827f
                  xor          s1, s2, sp
810:              bge          a5, s5, 829f
                  xori         a0, s8, -1889
                  beq          t6, s6, 831f
813:              slti         t0, s10, 1746
                  lui          t0, 768342
                  slt          s11, a0, a4
                  xor          t0, t6, t1
                  add          s8, s11, a4
                  sltu         s6, s9, s6
                  bge          a4, t5, 825f
                  andi         t0, s8, 2019
                  andi         s0, s11, 1239
                  ori          a3, a6, 409
                  auipc        t5, 936733
                  bge          s5, sp, 825f
825:              slti         s4, s3, 1563
                  srai         sp, s10, 20
827:              srai         s9, t6, 7
                  sll          t0, s8, t3
829:              bgeu         sp, ra, 843f
                  slt          t6, a2, s2
831:              lui          tp, 360527
                  addi         gp, t4, 1453
                  or           sp, a7, s3
                  xor          a5, s1, a0
                  srl          t0, tp, t0
                  srl          t2, t6, s8
                  bgeu         s10, s2, 844f
                  add          a3, a6, a0
                  slli         t1, s5, 25
                  beq          s11, s8, 844f
                  sltu         a3, t1, s3
                  xori         s8, t1, -2027
843:              srli         t1, s6, 10
844:              sll          gp, s4, s10
                  nop
                  srai         a1, t2, 21
                  sll          s9, s10, ra
                  slti         t6, ra, -1524
                  slti         a1, s5, -608
                  nop
                  nop
                  nop
                  andi         s1, gp, 879
                  or           a0, s0, t5
                  sll          t3, sp, s3
                  beq          s11, a4, 875f
                  sub          s4, a4, s3
                  auipc        t3, 603049
                  addi         a2, t3, -300
                  sltu         s8, s2, s8
                  sub          s0, t6, a1
                  auipc        s3, 1042640
                  sltu         t5, t4, t1
                  bge          a2, s10, 868f
                  slt          s3, a3, s9
                  xor          s6, t3, s2
                  bge          a4, a4, 870f
868:              slt          t5, s5, tp
                  xori         s6, a6, -1264
870:              slli         s2, s0, 16
                  srli         s11, s1, 3
                  srai         t2, s9, 7
                  lui          s2, 926343
                  xor          s2, t5, t2
875:              srl          a5, t4, t0
                  xori         t4, a5, -653
                  and          t4, a4, gp
                  sub          s3, s5, s1
                  addi         a0, t4, -359
                  slti         ra, s5, 2034
                  xor          ra, gp, t1
                  xor          a2, s11, s11
                  ori          tp, s3, -632
                  slti         s4, t3, 1551
                  bge          sp, a6, 901f
                  bgeu         gp, s8, 895f
                  xori         s6, s3, -1313
                  add          s0, s8, s10
                  or           t0, a7, s4
                  srai         s3, ra, 27
                  lui          ra, 626238
                  sltiu        t5, zero, 739
                  addi         s0, gp, 777
                  srai         t1, a2, 22
895:              nop
                  lui          s8, 679826
                  xori         s9, a5, 1508
                  addi         a0, t0, -971
                  lui          s0, 631580
                  slli         t2, a6, 4
901:              sub          s9, ra, t2
                  andi         a3, a2, -739
                  or           s10, t0, s2
                  ori          t1, a5, -101
                  sll          s0, a1, t5
                  bne          t0, s6, 923f
                  slli         s5, a2, 14
                  auipc        sp, 149090
                  or           s9, t4, s10
                  auipc        s5, 743758
                  srli         tp, s5, 7
                  lui          a5, 99503
                  add          s9, ra, s0
                  sra          s2, ra, t2
                  or           tp, a6, a5
                  sll          a6, a5, a4
                  srl          t3, t0, a4
                  blt          a2, s2, 930f
                  slt          s6, a0, zero
                  bge          a0, zero, 922f
                  sra          t1, a1, s0
922:              add          s9, t5, a1
923:              bltu         sp, s7, 932f
                  beq          s1, a2, 941f
                  bltu         s1, t2, 936f
                  srli         s3, sp, 2
                  sltiu        sp, s11, 520
                  sltu         ra, a2, s7
                  auipc        s1, 129108
930:              bltu         s1, s9, 946f
                  xor          a3, s9, s5
932:              slt          s2, a1, s8
                  xori         s1, a0, -1426
                  slli         t3, s0, 17
                  addi         t6, a3, 689
936:              bltu         a7, s4, 956f
                  xori         s1, t4, -1238
                  sltiu        a6, t6, -1812
                  xor          t2, sp, t0
                  srli         a5, sp, 6
941:              bgeu         a5, t3, 944f
                  slti         sp, s0, -1268
                  srli         ra, t0, 5
944:              sub          s10, s6, s11
                  beq          a6, s3, 954f
946:              srai         a0, a4, 30
                  sra          a1, zero, s7
                  add          t3, t5, a6
                  auipc        a3, 748717
                  bge          s1, t6, 967f
                  andi         a0, s3, -1432
                  nop
                  bgeu         t5, t6, 954f
954:              sll          s4, t6, s8
                  sra          zero, ra, s11
956:              blt          a4, s10, 975f
                  bgeu         t3, t3, 969f
                  sltiu        s3, a7, -1694
                  beq          s1, a1, 971f
                  and          zero, tp, s10
                  and          tp, a0, a7
                  addi         a0, tp, 1665
                  srli         a3, t4, 21
                  addi         s11, ra, -1466
                  srli         s3, gp, 24
                  ori          gp, s6, -1826
967:              add          s9, a5, s8
                  xori         ra, s10, 602
969:              sltu         s4, s11, t2
                  bne          a2, a2, 981f
971:              sll          s5, gp, t4
                  addi         s2, t4, 1469
                  sltiu        s10, s6, 485
                  bge          a1, a2, 976f
975:              srli         s5, zero, 6
976:              addi         a5, s6, 595
                  andi         s9, a7, -359
                  addi         s2, s0, -1105
                  add          s4, a5, s8
                  slt          t2, s6, tp
981:              slt          t6, s3, s0
                  bgeu         s5, s4, 999f
                  srl          t3, t2, a3
                  bgeu         s11, t0, 986f
                  nop
986:              srai         a2, s8, 29
                  srl          zero, t4, a0
                  sub          a0, a1, s10
                  auipc        t2, 129787
                  sll          sp, s3, a6
                  auipc        a5, 129210
                  sra          t6, a6, a1
                  sll          a6, a3, t6
                  srai         s6, zero, 24
                  beq          s11, a4, 1011f
                  sra          t2, a2, s10
                  addi         a3, a1, 1801
                  andi         s5, a0, -27
999:              sll          ra, s4, s7
                  slli         a1, s1, 10
                  bge          t4, s8, 1007f
                  srl          zero, a7, t4
                  ori          a3, ra, -1366
                  srai         s6, t5, 18
                  ori          s6, a6, -1531
                  srl          t6, s6, s3
1007:             blt          tp, a7, 1014f
                  sltu         t6, ra, t4
                  beq          t0, s2, 1020f
                  sra          s3, a2, a7
1011:             addi         ra, t6, 217
                  sll          s9, s9, s2
                  or           sp, a2, s5
1014:             auipc        zero, 896459
                  and          s3, s7, s3
                  add          s11, sp, s7
                  and          t1, sp, a4
                  sltu         s8, a7, ra
                  slti         s1, t3, 205
1020:             srl          s6, s0, s9
                  bltu         s7, t0, 1030f
                  ori          a0, s8, -1974
                  sltu         s9, sp, s1
                  xor          t2, a0, a1
                  srai         a0, zero, 16
                  sub          sp, t2, s5
                  slti         t3, s10, -1129
                  nop
                  ori          t5, t1, -1010
1030:             bltu         s7, t3, 1042f
                  beq          t4, s8, 1043f
                  andi         t5, s7, 46
                  bltu         t2, s8, 1052f
                  bne          t1, t1, 1053f
                  sra          s4, s2, a2
                  auipc        sp, 698952
                  ori          s0, gp, -1778
                  lui          s11, 781598
                  bgeu         tp, ra, 1048f
                  nop
                  nop
1042:             auipc        gp, 989620
1043:             andi         t5, a4, 319
                  bne          t2, a4, 1045f
1045:             bge          t6, a0, 1049f
                  xor          a3, t6, tp
sub_3_4:          jal          ra, 17f
0:                jal          sp, 1f
1:                jal          ra, 26f
2:                jal          ra, 16f
3:                jal          ra, 22f
4:                jal          a6, 20f
5:                jal          ra, 18f
6:                jal          t1, 27f
7:                jal          ra, 24f
8:                jal          t1, 28f
9:                jal          ra, 7b
10:               jal          t0, 11f
11:               jal          ra, 23f
12:               jal          t5, 4b
13:               jal          ra, 15f
14:               jal          ra, 8b
15:               jal          ra, 5b
16:               jal          ra, 12b
17:               jal          s6, 21f
18:               jal          ra, 9b
19:               jal          ra, 25f
20:               jal          ra, 13b
21:               jal          ra, 2b
22:               jal          ra, 19b
23:               jal          s3, 3b
24:               jal          sp, 10b
25:               jal          t3, 6b
26:               jal          ra, 14b
27:               jal          ra, 0b
28:               nop
                  xor          a0, a0, s7
1048:             sll          t2, sp, s11
1049:             or           ra, s1, t5
                  slt          tp, s11, a3
                  sltiu        s3, a6, -1680
1052:             andi         t4, a7, -1527
1053:             bge          t3, s6, 1056f
                  bltu         ra, t4, 1071f
                  slli         ra, sp, 0
1056:             sltu         t6, a0, s2
                  add          s1, tp, sp
                  andi         s5, a7, 155
                  srl          t3, a4, s2
                  nop
                  xori         t4, a6, 1982
                  blt          zero, s6, 1065f
                  bltu         t1, t0, 1072f
                  or           zero, s11, a6
1065:             bgeu         s6, t5, 1082f
                  add          ra, s0, s0
                  and          tp, t2, t2
                  bge          s0, s7, 1084f
                  bge          t0, a3, 1086f
                  ori          zero, a1, -1348
1071:             sll          a0, s5, t3
1072:             and          s0, t5, s2
                  sll          t3, tp, sp
                  bne          sp, sp, 1078f
                  slli         s4, tp, 23
                  bgeu         t0, t2, 1093f
                  slli         s6, a6, 17
1078:             xor          s11, a0, a0
                  beq          zero, s3, 1099f
                  auipc        a1, 3622
                  andi         s4, ra, 969
1082:             nop
                  sltu         a3, a2, a6
1084:             sltiu        a0, s1, -553
                  and          zero, s6, t2
1086:             sra          gp, a4, a2
                  sll          s9, a0, a1
                  bge          a3, s1, 1090f
                  srai         a1, t0, 5
1090:             and          s3, gp, s4
                  srai         zero, t5, 15
                  nop
1093:             nop
                  add          s6, a3, gp
                  blt          t6, s9, 1114f
                  lui          a5, 173011
                  sltu         t4, tp, sp
                  bne          gp, a4, 1117f
1099:             sltu         ra, s1, s8
                  sltu         s5, a1, a4
                  xor          s11, t1, a7
                  bne          s2, s11, 1114f
                  slti         t0, a6, 1205
                  auipc        gp, 753290
                  slti         a6, t6, 1834
                  sltiu        t3, s7, -638
                  slli         s11, s8, 6
                  slli         t4, a2, 5
                  and          tp, s6, a6
                  beq          sp, t2, 1121f
                  bgeu         t0, tp, 1125f
                  srli         s9, a5, 19
                  add          s6, s0, s4
1114:             srl          t3, t4, s0
                  slli         t6, a6, 29
                  xor          s11, s6, s2
1117:             or           s10, a2, t2
                  srli         s8, t3, 13
                  sltiu        t3, s3, 555
                  lui          t6, 213671
1121:             andi         sp, ra, 1496
                  or           s0, a1, s9
                  sll          tp, a3, a5
                  andi         s5, a4, 231
1125:             addi         a3, t3, -1008
                  slt          s6, t3, s8
                  or           s3, s8, a7
                  auipc        a5, 165881
                  bltu         a0, tp, 1130f
1130:             slti         s0, zero, 198
                  slli         s8, a0, 6
                  sll          a2, s0, t4
                  srl          s1, s8, gp
                  addi         ra, a2, 242
                  bge          zero, s5, 1146f
                  addi         s3, s0, 1851
                  sltiu        s5, ra, -1664
                  sll          t6, a6, t3
                  srl          gp, a0, t1
                  sltiu        a1, t3, -215
                  srai         s8, s1, 9
                  addi         s4, s10, -728
                  lui          s5, 393675
                  nop
                  slt          t3, t1, t4
1146:             or           s0, t0, ra
                  slti         t0, t3, -1636
                  blt          s1, s6, 1167f
                  xori         zero, s3, 151
                  slti         s3, a3, 608
                  srl          s3, tp, a2
                  bne          zero, s5, 1169f
                  slti         a0, s1, 1678
                  slti         t3, t1, 326
                  srai         a6, s4, 25
                  xor          s9, s0, a5
                  xori         t5, s4, 1476
                  slt          a6, a1, t5
                  srai         ra, gp, 16
                  sltiu        s3, s0, 855
                  auipc        a1, 157811
                  xori         s11, t3, -1783
                  sltiu        a2, s6, 753
                  srl          t0, gp, t1
                  slti         t3, s0, 1430
                  and          s4, ra, t4
1167:             sub          s10, a6, ra
                  auipc        a5, 138920
1169:             slli         a1, a1, 28
                  srai         a0, sp, 22
                  nop
                  sll          a0, t6, t2
                  slti         s6, a6, 1107
                  srai         sp, t3, 2
                  srai         s5, s0, 12
                  andi         zero, a1, 1230
                  slli         s0, t5, 10
                  srai         s0, t0, 28
                  andi         a6, zero, -295
                  srl          tp, s6, s6
                  xori         s2, a3, -295
                  lui          a3, 616776
                  beq          t0, a3, 1185f
                  blt          s2, zero, 1204f
1185:             sub          t5, a2, s0
                  srai         s8, sp, 31
                  bne          s0, a2, 1204f
                  nop
                  auipc        s4, 991267
                  blt          gp, s1, 1199f
                  andi         s1, s11, -253
                  slli         s1, s0, 13
                  add          a0, a2, a4
                  blt          t3, t2, 1206f
                  bne          s11, t0, 1204f
                  sll          ra, s11, t3
                  slli         s3, s10, 24
                  srl          s5, s9, s3
1199:             srli         zero, s11, 3
                  slt          t5, a3, sp
                  and          s1, t5, a5
                  blt          t3, s3, 1213f
                  srai         t3, t1, 18
1204:             sll          s3, a3, tp
                  bne          s7, a5, 1221f
1206:             xor          s6, a0, t5
                  auipc        ra, 741223
                  addi         t4, a4, -591
                  srli         a0, s3, 11
                  add          a6, gp, s1
                  slt          t5, a0, s1
                  bge          ra, s10, 1216f
1213:             beq          s8, s6, 1219f
                  andi         t3, s7, -633
                  sltiu        t3, sp, 1570
1216:             srl          a3, t6, s6
                  add          a1, s5, s3
                  srai         s10, s11, 2
1219:             srli         s4, a2, 27
                  andi         sp, sp, -298
1221:             xori         s2, a3, 22
                  xor          s10, t0, s3
                  bge          t0, s3, 1232f
                  srl          s10, a7, s6
                  blt          t2, a4, 1237f
                  bltu         s4, a6, 1243f
                  bge          s11, s11, 1246f
                  srli         t4, a7, 20
                  bgeu         t6, t3, 1243f
sub_3_6:          jal          ra, 13f
0:                jal          ra, 6f
1:                jal          a2, 3f
2:                jal          ra, 15f
3:                jal          t1, 19f
4:                jal          ra, 11f
5:                jal          s0, 10f
6:                jal          ra, 21f
7:                jal          ra, 22f
8:                jal          ra, 23f
9:                jal          ra, 5b
10:               jal          t1, 18f
11:               jal          ra, 1b
12:               jal          ra, 20f
13:               jal          ra, 7b
14:               jal          ra, 24f
15:               jal          t1, 14b
16:               jal          ra, 9b
17:               jal          ra, 2b
18:               jal          ra, 12b
19:               jal          ra, 17b
20:               jal          t6, 4b
21:               jal          ra, 16b
22:               jal          s8, 8b
23:               jal          s8, 0b
24:               slti         s2, s10, -722
                  xor          s8, s2, s10
                  sll          a3, s3, zero
1232:             xor          a6, s11, t5
                  bne          s5, s1, 1234f
1234:             nop
                  slli         t1, s10, 24
                  xor          s9, t2, t5
1237:             sll          s9, s8, t4
                  sltu         s8, s8, zero
                  bne          a4, a2, 1251f
                  lui          s4, 968180
                  beq          t0, a7, 1260f
                  xori         a1, s3, 1977
1243:             srl          sp, s10, s9
                  slti         gp, a7, 1319
                  addi         s10, s8, 508
1246:             nop
                  bltu         a4, t0, 1251f
                  sub          ra, s0, t0
                  addi         a6, t5, 1785
                  sll          s8, ra, t0
1251:             nop
                  bne          t2, a3, 1254f
                  srli         s0, a3, 2
1254:             bge          t0, gp, 1257f
                  bge          tp, t0, 1256f
1256:             lui          s6, 290753
1257:             sltiu        zero, zero, -2040
                  and          a5, s8, t4
                  ori          sp, t6, -1995
1260:             slt          s0, s9, s10
                  sra          s4, zero, s5
                  and          a6, s5, s2
                  srai         t6, a5, 27
                  xor          tp, s7, s4
                  blt          s11, t6, 1281f
                  addi         a6, s3, -1226
                  srli         s8, s6, 8
                  sra          s4, tp, s3
                  bne          t4, t1, 1272f
                  srai         a1, s2, 28
                  bne          s7, a5, 1278f
1272:             nop
                  srai         s3, a3, 17
                  nop
                  add          s11, s7, ra
                  sra          s2, t6, zero
                  slti         zero, s9, 623
1278:             sra          s4, s7, s11
                  lui          a0, 448467
                  srl          t5, s10, s4
1281:             nop
                  srai         s4, s3, 30
                  and          s1, t6, a2
                  xori         s9, a0, 479
                  bne          tp, s4, 1302f
                  sra          a3, t3, s10
                  slli         s8, zero, 26
                  bgeu         a7, s1, 1307f
                  sltiu        s9, a2, -751
                  xori         s6, sp, -72
                  lui          s8, 732110
                  srli         s6, a7, 10
                  add          a0, t2, t6
                  addi         a0, s0, 29
                  xor          s11, t6, t2
                  or           t4, t1, s1
                  lui          zero, 900053
                  blt          a1, s1, 1299f
1299:             slti         s1, a2, -1881
                  srl          s11, t6, s2
                  bltu         ra, gp, 1312f
1302:             or           t4, t0, t6
                  lui          t5, 668451
                  add          a5, s7, s7
                  bne          t5, a7, 1322f
                  srli         s9, s10, 21
1307:             beq          sp, s8, 1323f
                  bge          a0, s9, 1317f
                  andi         ra, t5, -817
                  slli         t5, s6, 8
                  bge          gp, t1, 1322f
1312:             beq          a5, sp, 1329f
                  add          a0, s8, t0
                  xor          sp, s5, s4
                  nop
                  bne          s6, zero, 1320f
1317:             sra          a2, gp, s6
                  sltiu        t6, s11, 117
                  lui          t2, 386914
1320:             nop
                  srai         s10, s10, 5
1322:             bgeu         a0, s11, 1341f
1323:             bne          s4, a3, 1327f
                  srli         sp, sp, 4
                  blt          sp, s11, 1328f
                  sll          sp, s10, ra
1327:             and          a5, s8, t3
1328:             bgeu         s3, s1, 1345f
1329:             andi         s8, s4, -1949
                  blt          t5, a4, 1342f
                  addi         a5, s8, 1980
                  srli         t0, a2, 3
                  ori          s10, s3, -1811
                  ori          gp, s7, -736
                  bne          t3, t3, 1349f
                  blt          s8, s1, 1355f
                  xori         t0, s4, -106
                  sub          t0, tp, s1
                  lui          t5, 768741
                  auipc        a6, 325545
1341:             addi         t2, a6, 295
1342:             andi         s9, s6, 173
                  sra          s8, a3, a6
                  andi         s10, s2, 1907
1345:             sltiu        s8, a1, -1299
                  or           s1, a6, sp
                  sub          s3, zero, t5
                  auipc        s11, 944038
1349:             bltu         a4, t5, 1350f
1350:             slti         a3, s2, -1324
                  slli         t2, t0, 13
                  srli         a3, s10, 14
                  bne          t5, s7, 1355f
                  beq          s3, s1, 1363f
1355:             srai         a6, ra, 10
                  sltu         tp, t2, a0
                  xor          a2, t3, a4
                  slt          s4, s9, gp
                  and          t1, gp, a2
                  xor          t0, t3, t3
                  slli         gp, zero, 6
                  sra          t1, a4, a5
1363:             or           a6, a2, s9
                  auipc        s3, 711042
                  blt          t5, s5, 1374f
                  bgeu         a0, a4, 1369f
                  blt          s2, s1, 1369f
                  sub          s8, a6, t6
1369:             beq          zero, s7, 1388f
                  bge          s4, a4, 1389f
                  bgeu         ra, a0, 1377f
                  bgeu         s1, t3, 1388f
                  slli         t2, t6, 4
1374:             sub          s6, t1, a7
                  slli         s4, t5, 25
                  auipc        t6, 891115
1377:             bne          t2, s11, 1394f
                  sltiu        t2, a6, -1442
                  slt          s6, s11, a5
                  andi         s11, t4, 823
                  sltiu        s11, s0, 560
                  or           a2, sp, s7
                  bltu         a2, gp, 1395f
                  bge          a6, a0, 1396f
                  ori          tp, s5, -1735
                  sll          s2, s8, s7
                  beq          t0, s9, 1407f
1388:             sub          a6, t1, s5
1389:             and          s0, tp, s8
                  srai         t3, zero, 16
                  beq          s11, s6, 1398f
                  slti         s6, a0, -1301
                  auipc        t5, 697632
1394:             sltu         a1, s11, t1
1395:             srli         a1, s7, 0
1396:             ori          a3, gp, -127
                  sltu         a0, a1, t5
1398:             nop
                  sltu         zero, s2, a3
                  bge          a2, zero, 1411f
                  slt          t3, s1, t0
                  blt          s5, tp, 1411f
                  sltu         s5, s9, s1
                  slli         tp, t3, 10
                  nop
                  sll          a0, a7, s1
1407:             ori          s10, a2, 1107
sub_3_10:         jal          ra, 14f
0:                jal          t1, 15f
1:                jal          t1, 6f
2:                jal          ra, 11f
3:                jal          s2, 8f
4:                jal          ra, 1b
5:                jal          ra, 3b
6:                jal          ra, 21f
7:                jal          ra, 19f
8:                jal          ra, 13f
9:                jal          ra, 17f
10:               jal          s4, 16f
11:               jal          ra, 12f
12:               jal          a2, 9b
13:               jal          ra, 10b
14:               jal          ra, 18f
15:               jal          t1, 20f
16:               jal          ra, 4b
17:               jal          t1, 0b
18:               jal          t0, 7b
19:               jal          t1, 2b
20:               jal          a1, 5b
21:               slli         tp, t2, 23
                  ori          a3, a4, 229
                  sub          t1, sp, a1
                  srl          t4, s1, a7
1411:             auipc        t6, 182233
                  lui          s11, 456455
                  slli         t5, s6, 13
                  sub          s6, s1, a0
                  nop
                  lw           ra, 4(s7)
                  addi         s7, s7, 32
                  or           t4, a5, s3
                  sra          s2, tp, s2
                  sltu         a1, t2, t2
2132:             addi x13, x1, 0
2132:             jalr x13, x13, 0
sub_4:            addi         s7, s7, -44
                  sub          a5, a1, s6
                  sw           ra, 4(s7)
                  auipc        t2, 77816
                  add          s2, t4, s6
                  slti         a0, s9, -321
                  add          a5, s6, a3
                  sll          s9, s3, s2
                  srli         a3, s5, 3
                  xor          tp, s7, s9
                  srai         s6, s10, 31
                  sltiu        sp, t5, -512
                  addi         s10, s3, -967
                  la           a3, sub_5
                  auipc        tp, 497429
                  andi         zero, a4, -1050
                  addi         a3, a3, 584
                  slli         zero, s7, 22
                  addi         s5, a4, 239
                  bgeu         a2, sp, sub_4_j7 #branch to jump instr
                  addi         a1, s3, 2013
sub_4_j7:         jalr         ra, a3, -583 #jump sub_4 -> sub_5
sub_4_3:          jal          ra, 26f
0:                jal          ra, 3f
1:                jal          t3, 17f
2:                jal          s5, 23f
3:                jal          s6, 24f
4:                jal          ra, 1b
5:                jal          s10, 7f
6:                jal          t1, 21f
7:                jal          t1, 0b
8:                jal          t1, 14f
9:                jal          s10, 27f
10:               jal          tp, 15f
11:               jal          t1, 25f
12:               jal          a6, 20f
13:               jal          ra, 18f
14:               jal          sp, 28f
15:               jal          t1, 13b
16:               jal          a2, 11b
17:               jal          s9, 2b
18:               jal          s1, 9b
19:               jal          t0, 29f
20:               jal          ra, 4b
21:               jal          ra, 12b
22:               jal          ra, 5b
23:               jal          ra, 30f
24:               jal          s1, 6b
25:               jal          ra, 8b
26:               jal          ra, 19b
27:               jal          s5, 22b
28:               jal          ra, 10b
29:               jal          t1, 16b
30:               ori          a6, zero, 240
sub_4_19:         jal          ra, 0f
0:                jal          ra, 1f
1:                jal          sp, 22f
2:                jal          t1, 23f
3:                jal          t1, 26f
4:                jal          t1, 10f
5:                jal          gp, 20f
6:                jal          ra, 15f
7:                jal          t1, 17f
8:                jal          ra, 12f
9:                jal          t1, 21f
10:               jal          ra, 3b
11:               jal          ra, 8b
12:               jal          ra, 14f
13:               jal          ra, 19f
14:               jal          s5, 4b
15:               jal          t1, 25f
16:               jal          ra, 5b
17:               jal          s8, 13b
18:               jal          ra, 6b
19:               jal          t1, 16b
20:               jal          gp, 2b
21:               jal          t1, 7b
22:               jal          ra, 18b
23:               jal          ra, 11b
24:               jal          sp, 9b
25:               jal          ra, 24b
26:               sll          t2, t5, a3
sub_4_7:          jal          ra, 14f
0:                jal          ra, 6f
1:                jal          ra, 0b
2:                jal          ra, 16f
3:                jal          ra, 12f
4:                jal          sp, 5f
5:                jal          ra, 13f
6:                jal          ra, 15f
7:                jal          ra, 9f
8:                jal          t4, 4b
9:                jal          gp, 8b
10:               jal          ra, 2b
11:               jal          ra, 7b
12:               jal          ra, 10b
13:               jal          t4, 1b
14:               jal          ra, 11b
15:               jal          ra, 3b
16:               sltiu        s0, t3, -1964
sub_4_1:          jal          ra, 10f
0:                jal          t1, 3f
1:                jal          ra, 6f
2:                jal          ra, 8f
3:                jal          sp, 12f
4:                jal          t3, 11f
5:                jal          ra, 0b
6:                jal          ra, 2b
7:                jal          ra, 4b
8:                jal          ra, 7b
9:                jal          s11, 5b
10:               jal          t1, 1b
11:               jal          ra, 9b
12:               jal          ra, 13f
13:               jal          ra, 14f
14:               xori         ra, t3, 416
sub_4_15:         jal          ra, 5f
0:                jal          ra, 6f
1:                jal          ra, 3f
2:                jal          ra, 0b
3:                jal          ra, 10f
4:                jal          t1, 11f
5:                jal          ra, 9f
6:                jal          t1, 1b
7:                jal          ra, 4b
8:                jal          t0, 7b
9:                jal          t1, 2b
10:               jal          t1, 8b
11:               jal          ra, 12f
12:               lui          s4, 584903
sub_4_17:         jal          ra, 9f
0:                jal          a6, 26f
1:                jal          t1, 7f
2:                jal          t1, 28f
3:                jal          t4, 21f
4:                jal          ra, 18f
5:                jal          ra, 4b
6:                jal          s8, 0b
7:                jal          a5, 16f
8:                jal          ra, 20f
9:                jal          ra, 27f
10:               jal          t2, 12f
11:               jal          t1, 8b
12:               jal          ra, 29f
13:               jal          ra, 6b
14:               jal          t1, 23f
15:               jal          t4, 2b
16:               jal          ra, 10b
17:               jal          a3, 11b
18:               jal          ra, 22f
19:               jal          ra, 5b
20:               jal          a1, 1b
21:               jal          ra, 30f
22:               jal          gp, 25f
23:               jal          s11, 13b
24:               jal          t1, 15b
25:               jal          a1, 3b
26:               jal          t1, 19b
27:               jal          ra, 17b
28:               jal          t1, 14b
29:               jal          t6, 24b
30:               slt          a6, s5, a3
sub_4_8:          jal          ra, 16f
0:                jal          t6, 17f
1:                jal          s5, 13f
2:                jal          t0, 6f
3:                jal          s10, 10f
4:                jal          ra, 7f
5:                jal          t1, 0b
6:                jal          ra, 5b
7:                jal          s3, 23f
8:                jal          t4, 1b
9:                jal          t1, 20f
10:               jal          ra, 8b
11:               jal          t1, 2b
12:               jal          ra, 9b
13:               jal          ra, 12b
14:               jal          t1, 15f
15:               jal          t3, 22f
16:               jal          s4, 21f
17:               jal          ra, 3b
18:               jal          tp, 14b
19:               jal          t1, 4b
20:               jal          t1, 19b
21:               jal          t1, 18b
22:               jal          t6, 11b
23:               sll          a1, t4, s8
sub_4_5:          jal          ra, 12f
0:                jal          sp, 3f
1:                jal          ra, 18f
2:                jal          ra, 13f
3:                jal          t1, 14f
4:                jal          ra, 8f
5:                jal          ra, 19f
6:                jal          s6, 16f
7:                jal          t4, 2b
8:                jal          s8, 11f
9:                jal          t6, 5b
10:               jal          ra, 1b
11:               jal          ra, 15f
12:               jal          sp, 10b
13:               jal          s0, 6b
14:               jal          t4, 4b
15:               jal          s4, 17f
16:               jal          s6, 0b
17:               jal          ra, 9b
18:               jal          ra, 7b
19:               andi         s3, a6, 970
sub_4_6:          jal          ra, 14f
0:                jal          ra, 9f
1:                jal          t1, 0b
2:                jal          ra, 13f
3:                jal          ra, 2b
4:                jal          t1, 15f
5:                jal          s2, 4b
6:                jal          ra, 16f
7:                jal          s0, 8f
8:                jal          t1, 17f
9:                jal          t2, 5b
10:               jal          sp, 12f
11:               jal          ra, 1b
12:               jal          ra, 11b
13:               jal          ra, 7b
14:               jal          ra, 10b
15:               jal          sp, 6b
16:               jal          s3, 3b
17:               srl          s5, a5, s8
sub_4_12:         jal          ra, 8f
0:                jal          ra, 13f
1:                jal          t1, 2f
2:                jal          t0, 24f
3:                jal          t6, 27f
4:                jal          ra, 9f
5:                jal          t4, 25f
6:                jal          ra, 15f
7:                jal          ra, 5b
8:                jal          ra, 7b
9:                jal          t1, 17f
10:               jal          t1, 6b
11:               jal          ra, 22f
12:               jal          ra, 23f
13:               jal          ra, 26f
14:               jal          t1, 1b
15:               jal          ra, 12b
16:               jal          t1, 3b
17:               jal          t0, 11b
18:               jal          a5, 10b
19:               jal          ra, 0b
20:               jal          ra, 19b
21:               jal          t1, 18b
22:               jal          t1, 14b
23:               jal          a6, 16b
24:               jal          t0, 21b
25:               jal          ra, 20b
26:               jal          t1, 4b
27:               srai         tp, s11, 30
sub_4_0:          jal          ra, 8f
0:                jal          t1, 22f
1:                jal          ra, 7f
2:                jal          ra, 3f
3:                jal          ra, 11f
4:                jal          t1, 10f
5:                jal          ra, 12f
6:                jal          ra, 13f
7:                jal          ra, 18f
8:                jal          t0, 15f
9:                jal          ra, 4b
10:               jal          t0, 17f
11:               jal          ra, 20f
12:               jal          ra, 16f
13:               jal          ra, 14f
14:               jal          s6, 9b
15:               jal          t3, 19f
16:               jal          ra, 0b
17:               jal          ra, 5b
18:               jal          t1, 21f
19:               jal          ra, 1b
20:               jal          ra, 6b
21:               jal          ra, 2b
22:               xori         s4, gp, 1245
sub_4_14:         jal          ra, 5f
0:                jal          t1, 10f
1:                jal          ra, 11f
2:                jal          ra, 6f
3:                jal          ra, 0b
4:                jal          ra, 9f
5:                jal          ra, 13f
6:                jal          gp, 12f
7:                jal          t0, 4b
8:                jal          ra, 2b
9:                jal          t2, 14f
10:               jal          ra, 7b
11:               jal          ra, 8b
12:               jal          ra, 3b
13:               jal          tp, 1b
14:               addi         t3, a4, -1153
sub_4_13:         jal          ra, 0f
0:                jal          ra, 13f
1:                jal          s4, 5f
2:                jal          t1, 21f
3:                jal          ra, 14f
4:                jal          t1, 20f
5:                jal          ra, 15f
6:                jal          ra, 16f
7:                jal          a5, 17f
8:                jal          ra, 6b
9:                jal          ra, 10f
10:               jal          ra, 18f
11:               jal          s3, 7b
12:               jal          tp, 2b
13:               jal          ra, 3b
14:               jal          ra, 1b
15:               jal          t1, 19f
16:               jal          gp, 11b
17:               jal          t5, 12b
18:               jal          t0, 4b
19:               jal          s8, 9b
20:               jal          a1, 8b
21:               add          t0, gp, t5
sub_4_18:         jal          ra, 14f
0:                jal          t1, 6f
1:                jal          tp, 16f
2:                jal          t1, 7f
3:                jal          ra, 1b
4:                jal          a0, 8f
5:                jal          s4, 15f
6:                jal          s4, 10f
7:                jal          t2, 17f
8:                jal          t0, 12f
9:                jal          t1, 0b
10:               jal          ra, 13f
11:               jal          t0, 9b
12:               jal          sp, 3b
13:               jal          ra, 2b
14:               jal          ra, 4b
15:               jal          ra, 11b
16:               jal          ra, 5b
17:               sltiu        a1, a7, -969
sub_4_10:         jal          ra, 22f
0:                jal          gp, 23f
1:                jal          gp, 2f
2:                jal          t1, 25f
3:                jal          ra, 27f
4:                jal          a3, 0b
5:                jal          ra, 24f
6:                jal          s6, 3b
7:                jal          t1, 21f
8:                jal          t1, 13f
9:                jal          ra, 16f
10:               jal          s2, 26f
11:               jal          tp, 19f
12:               jal          ra, 20f
13:               jal          t1, 1b
14:               jal          tp, 6b
15:               jal          ra, 11b
16:               jal          ra, 18f
17:               jal          ra, 12b
18:               jal          ra, 17b
19:               jal          ra, 9b
20:               jal          ra, 28f
21:               jal          t1, 14b
22:               jal          ra, 8b
23:               jal          ra, 7b
24:               jal          t1, 4b
25:               jal          s1, 5b
26:               jal          t1, 15b
27:               jal          s10, 10b
28:               slti         zero, s10, -1312
sub_4_4:          jal          ra, 12f
0:                jal          ra, 9f
1:                jal          ra, 3f
2:                jal          t6, 5f
3:                jal          t1, 4f
4:                jal          ra, 14f
5:                jal          ra, 0b
6:                jal          t1, 7f
7:                jal          ra, 1b
8:                jal          s9, 13f
9:                jal          tp, 10f
10:               jal          ra, 8b
11:               jal          tp, 2b
12:               jal          t1, 11b
13:               jal          s11, 6b
14:               jal          sp, 15f
15:               slli         gp, s11, 14
sub_4_16:         jal          ra, 12f
0:                jal          ra, 26f
1:                jal          a2, 5f
2:                jal          t1, 8f
3:                jal          sp, 7f
4:                jal          t1, 27f
5:                jal          ra, 0b
6:                jal          t1, 18f
7:                jal          ra, 13f
8:                jal          ra, 22f
9:                jal          ra, 3b
10:               jal          tp, 24f
11:               jal          ra, 9b
12:               jal          ra, 15f
13:               jal          ra, 20f
14:               jal          ra, 17f
15:               jal          t0, 10b
16:               jal          ra, 2b
17:               jal          ra, 6b
18:               jal          ra, 23f
19:               jal          ra, 21f
20:               jal          ra, 1b
21:               jal          ra, 25f
22:               jal          ra, 11b
23:               jal          t1, 4b
24:               jal          s1, 19b
25:               jal          ra, 14b
26:               jal          ra, 28f
27:               jal          gp, 16b
28:               sltu         t6, a6, s4
                  addi         a0, t1, 223
                  srai         t1, s6, 23
                  sll          s1, s7, t6
                  beq          tp, s7, 9f
                  srli         t4, s4, 31
                  slti         s9, s0, -580
                  auipc        t5, 571249
                  blt          s11, a7, 14f
                  bltu         s8, t0, 12f
9:                or           a3, a0, ra
                  slt          a0, s0, a5
                  add          ra, zero, a7
12:               sll          s5, s0, s4
                  sltiu        a1, gp, -1093
14:               xor          t3, a5, a7
                  slt          t5, s0, a4
                  bgeu         zero, s7, 28f
                  srli         s6, a4, 5
                  srl          t1, s10, a7
                  xor          tp, a7, a4
                  sltiu        t3, s5, -530
                  or           s5, s5, s8
                  bne          gp, t4, 28f
                  andi         s8, s5, 1333
                  auipc        s5, 427300
                  addi         t6, t6, -709
                  bltu         t6, a2, 38f
                  slli         s0, a5, 19
28:               slli         s1, a2, 9
                  addi         a1, s6, 331
                  bgeu         s0, ra, 36f
                  slt          t3, t5, a5
                  srai         a3, tp, 29
                  srl          s8, a1, t0
                  ori          s2, t1, 284
                  blt          s5, t3, 55f
36:               lui          tp, 547492
                  srl          t2, s1, t0
38:               slti         a0, a2, 535
                  or           a6, t6, s8
                  beq          s7, t6, 42f
                  andi         t4, s5, 1325
42:               sltiu        a3, s11, 383
                  sll          a2, a1, a0
                  slt          s9, s3, ra
                  sra          t1, a1, t3
                  sll          s6, s0, s5
                  srl          s5, s3, s6
                  sll          gp, s4, a1
                  sltiu        a2, tp, -1564
                  and          a0, sp, s4
                  or           a6, a0, a4
                  bge          s1, s5, 64f
                  bgeu         s0, t0, 56f
                  sub          s11, s11, s4
55:               bne          s8, s2, 74f
56:               sub          ra, t5, t4
                  slt          s6, tp, t0
                  srli         t5, s0, 29
                  blt          s9, t6, 63f
                  sltu         s6, a1, a2
                  add          a0, t2, sp
                  sltu         s10, s3, s11
63:               srai         t0, t6, 20
64:               ori          s1, s10, -1199
                  sltiu        s4, s1, -1829
                  or           s4, t6, zero
                  add          s2, t3, a6
                  xori         a1, a1, -1955
                  blt          s4, s4, 81f
                  srai         tp, a4, 17
                  bltu         s9, s7, 72f
72:               auipc        t6, 797012
                  slti         a3, a6, 1842
74:               sltiu        a2, t4, -1140
                  slt          t3, s4, s7
                  add          gp, s7, s7
                  srli         s9, s10, 27
                  srli         a6, tp, 0
                  sub          s10, a0, s1
                  slli         s0, a6, 20
81:               nop
                  auipc        s8, 528452
                  or           t6, ra, a3
                  sll          t1, t3, s8
                  addi         a0, t3, -1370
                  srl          t5, s11, s5
                  sll          a0, a2, ra
                  nop
                  slli         gp, t6, 23
                  srl          s9, s3, a6
                  add          gp, s7, s9
                  sltu         s9, s2, s11
                  slli         a2, t1, 16
                  bgeu         a6, gp, 101f
                  or           t4, a2, s5
                  ori          t0, s9, -431
                  sra          t3, a1, t4
                  sub          t6, s5, gp
                  bge          t6, t0, 103f
                  lui          s4, 816908
101:              sub          t0, t2, s11
                  srai         s3, gp, 11
103:              and          a2, ra, a7
                  andi         a6, a4, -799
                  srl          tp, a7, t1
                  sra          gp, t0, s6
                  sub          t0, a0, s8
                  bne          a5, t2, 124f
                  sltiu        s1, t1, 60
                  sra          sp, s8, s10
                  srai         s3, s4, 2
                  sub          a5, sp, t1
                  blt          s6, s7, 122f
                  or           t3, ra, s2
                  srai         s6, s11, 17
                  srai         s11, ra, 20
                  or           tp, gp, a7
                  blt          s11, gp, 119f
119:              and          t0, a5, t3
                  slti         ra, ra, -2043
                  add          sp, ra, s7
122:              addi         tp, a0, -1617
                  srl          a5, a0, a6
124:              addi         a0, s4, -1381
                  bne          zero, s7, 135f
                  sltiu        gp, s8, -531
                  xori         s2, a7, -666
                  sra          t6, a1, s11
                  srli         t2, s7, 22
                  bne          zero, s9, 147f
                  or           t5, tp, sp
                  add          s1, t1, a5
                  sll          a6, t4, a0
                  slt          ra, a5, ra
135:              xor          t6, gp, tp
                  add          ra, a5, t5
                  sltiu        t2, a7, 912
                  sltiu        t6, a4, -954
                  addi         a5, t5, -131
                  add          ra, t1, t4
                  sll          s1, a5, t4
                  xori         t6, s7, 7
                  nop
                  bltu         sp, s7, 160f
                  sll          a3, t6, t2
                  bne          a6, t2, 165f
147:              ori          s0, s7, 1725
                  bge          sp, a6, 160f
                  srai         t1, t6, 11
                  srli         a5, a0, 12
                  sra          s8, t3, gp
                  addi         tp, s2, 1225
                  srai         s10, a6, 19
                  xori         t0, t0, -913
                  xor          a0, a1, s4
                  ori          s10, a0, 2015
                  slti         t2, a2, -982
                  slti         gp, t2, -2030
                  beq          s11, t6, 160f
160:              ori          zero, s3, -323
                  slt          ra, t1, s0
                  sltiu        t6, s11, -493
                  srai         t5, t0, 12
                  andi         t0, gp, -944
165:              bltu         t2, a1, 168f
                  bge          s10, a1, 169f
                  srli         s10, t3, 16
168:              srai         a5, t1, 2
169:              bne          s4, a0, 171f
                  slt          tp, t6, a7
171:              and          ra, sp, ra
                  addi         t3, a6, 1162
                  slti         a2, a3, 85
                  xor          s10, sp, s8
                  and          t2, s6, t1
                  slti         s6, sp, -1074
                  andi         a2, s3, -274
                  sll          zero, ra, a0
                  sra          t3, t4, sp
                  bne          t0, a2, 196f
                  blt          a0, s11, 193f
                  srli         s0, s11, 19
                  beq          t5, s4, 185f
                  bge          tp, tp, 204f
185:              bgeu         s7, gp, 204f
                  beq          a3, zero, 193f
                  auipc        s2, 284177
                  bne          s2, t3, 205f
                  bltu         t3, s8, 208f
                  and          s8, s6, s8
                  srai         s3, s11, 23
                  andi         s11, s0, 314
193:              slti         tp, gp, 375
                  ori          s2, t4, 500
                  nop
196:              slt          a6, sp, a1
                  addi         s1, s10, 1144
                  sra          s2, t2, s9
                  blt          t0, s4, 206f
                  sll          s6, s5, t5
                  nop
                  auipc        t4, 759737
                  bge          t4, s2, 219f
204:              slli         t4, a7, 31
205:              and          a5, t1, t0
206:              nop
                  bne          sp, ra, 223f
208:              andi         s6, s5, 828
                  xori         s2, t3, -1270
                  sub          s10, t5, t2
                  bne          s4, t4, 214f
                  bltu         s2, a0, 218f
                  auipc        s9, 954054
214:              sll          s11, t5, s5
                  add          t2, t1, a0
                  lui          s0, 357164
                  addi         a1, s5, -503
218:              xori         t6, t0, 1592
219:              bge          s10, s11, 231f
                  bgeu         a7, a3, 226f
                  nop
                  ori          t5, t1, 1636
223:              xor          a5, t2, t6
                  bne          t0, ra, 234f
                  xori         s5, t5, -1940
226:              slti         s5, sp, -1679
                  sltu         t4, tp, s9
                  add          t5, t6, t4
                  srai         sp, tp, 22
                  bgeu         ra, t4, 231f
231:              srai         t2, a6, 4
                  or           s5, sp, s9
                  andi         t6, s8, -120
234:              blt          a2, a2, 246f
                  nop
                  or           tp, s9, ra
                  sub          a6, s5, t2
                  lui          a1, 91536
                  sll          s4, s7, a0
                  sra          sp, s11, a4
                  bge          s6, a5, 245f
                  bge          t2, t4, 248f
                  xori         s10, a2, -685
                  nop
245:              sra          s4, s8, zero
246:              add          a5, t2, s10
                  xori         s5, t1, -1307
248:              beq          a5, s0, 257f
                  add          t4, s2, t4
                  auipc        a2, 944499
                  addi         a5, t4, 1021
                  bge          t1, a4, 255f
                  auipc        s3, 471678
                  addi         t6, s1, -299
255:              blt          a1, ra, 267f
                  addi         s6, s0, -337
257:              lui          s1, 155677
                  sll          s9, gp, a5
                  sltu         a1, s9, s0
                  andi         s1, s1, -1360
                  and          gp, s2, t3
                  sll          s4, t4, a2
                  srai         s6, tp, 0
                  and          s10, a2, a1
                  lui          s6, 793242
                  srl          gp, s6, t0
267:              srli         t1, t4, 15
                  lui          s11, 119677
                  and          s4, ra, t2
                  xor          s10, ra, zero
                  sltu         a0, a5, t1
                  add          t0, a4, s2
                  sltiu        t0, a7, -1392
                  beq          gp, tp, 286f
                  xor          a6, tp, gp
                  xori         s8, zero, -395
                  bltu         s3, sp, 281f
                  addi         a0, sp, -536
                  add          t2, s7, a1
                  or           t1, a3, gp
281:              auipc        a3, 466294
                  bge          s11, s7, 283f
283:              bgeu         zero, s4, 286f
                  or           sp, s9, t5
                  slli         a2, t2, 26
286:              bge          s9, sp, 287f
287:              or           s10, s2, s11
                  bne          t1, s3, 304f
                  sub          ra, s10, t2
                  bge          t1, t1, 294f
                  andi         s11, zero, -548
                  srai         s2, sp, 19
                  slli         s8, s1, 20
294:              ori          s0, s2, 498
                  auipc        zero, 396754
                  auipc        s0, 219246
                  auipc        sp, 709504
                  bne          t6, a7, 300f
                  sltiu        s4, s11, -1815
300:              bgeu         t3, a5, 301f
301:              addi         t0, t1, -463
                  sltiu        t2, t2, -1490
                  auipc        a3, 70835
304:              sll          t3, tp, s5
                  auipc        s10, 224760
                  lui          t6, 978183
                  sra          s0, a6, s7
                  addi         t4, ra, 469
                  srli         zero, sp, 7
                  sub          t2, a2, t6
                  andi         s9, s10, 1263
                  bne          t4, a3, 316f
                  addi         t5, a7, 423
                  xor          s1, tp, ra
                  nop
sub_4_9:          jal          ra, 16f
0:                jal          ra, 10f
1:                jal          t1, 0b
2:                jal          ra, 12f
3:                jal          ra, 2b
4:                jal          t3, 18f
5:                jal          t1, 3b
6:                jal          a6, 15f
7:                jal          s5, 6b
8:                jal          tp, 14f
9:                jal          t0, 11f
10:               jal          t1, 13f
11:               jal          tp, 17f
12:               jal          ra, 1b
13:               jal          ra, 19f
14:               jal          t1, 5b
15:               jal          s10, 9b
16:               jal          ra, 7b
17:               jal          ra, 4b
18:               jal          ra, 8b
19:               xori         s6, s6, -1293
316:              lui          a6, 774767
                  bgeu         t2, s3, 324f
                  or           t1, zero, tp
                  nop
                  bge          s1, gp, 332f
                  nop
                  blt          a5, t3, 341f
                  sltiu        s5, s6, 661
324:              lui          t4, 72044
                  lui          t3, 620329
                  sltiu        a1, s6, -1406
                  beq          t0, a3, 346f
                  sra          t5, t2, s1
                  ori          a0, tp, 1354
                  bge          s2, a3, 340f
                  xori         a5, t3, 51
332:              addi         sp, s9, -326
                  slti         a1, tp, 1313
                  bltu         sp, tp, 338f
                  sll          s6, a6, a7
                  slli         a6, gp, 11
                  bgeu         sp, s1, 339f
338:              bne          a3, t3, 341f
339:              bne          s5, t5, 342f
340:              blt          a6, a4, 356f
341:              sltu         zero, a7, a3
342:              xori         s9, s1, -1436
                  andi         a3, sp, 1061
                  xor          a0, s7, a2
                  auipc        t1, 465966
346:              slli         s1, t6, 12
                  beq          s0, a7, 351f
                  bgeu         t0, s7, 349f
349:              slti         t0, a3, 1725
                  bltu         t5, a7, 366f
351:              bne          t1, t4, 363f
                  sltiu        s2, a7, -681
                  srai         a2, a7, 28
                  and          t0, s6, s8
                  slt          t1, a6, s2
356:              slli         a5, s2, 14
                  lui          t1, 55856
                  sltiu        s3, a4, 1157
                  blt          a7, s6, 371f
                  or           s2, s3, s3
                  bgeu         s2, t2, 370f
                  addi         t5, s8, 39
363:              nop
                  add          s9, s3, a3
                  or           tp, a0, t4
366:              srai         s6, t3, 0
                  addi         gp, s0, 1076
                  srl          t2, ra, s5
                  bne          a4, t0, 381f
370:              xor          s5, a4, sp
371:              sll          s3, s5, a6
                  slti         s10, s9, 448
                  xori         a1, a4, -108
                  srli         ra, a3, 31
                  addi         a1, s1, -238
                  xori         t5, t3, -185
                  add          t2, t6, s8
sub_4_2:          jal          ra, 10f
0:                jal          t3, 8f
1:                jal          ra, 16f
2:                jal          t4, 3f
3:                jal          t1, 20f
4:                jal          sp, 19f
5:                jal          t1, 12f
6:                jal          ra, 4b
7:                jal          ra, 15f
8:                jal          gp, 2b
9:                jal          s9, 0b
10:               jal          t1, 17f
11:               jal          t1, 1b
12:               jal          ra, 14f
13:               jal          sp, 11b
14:               jal          ra, 6b
15:               jal          ra, 5b
16:               jal          t1, 21f
17:               jal          t1, 18f
18:               jal          ra, 9b
19:               jal          s6, 24f
20:               jal          tp, 13b
21:               jal          ra, 23f
22:               jal          ra, 7b
23:               jal          t0, 22b
24:               nop
                  ori          s2, tp, 1927
                  bne          s11, t1, 385f
                  andi         t4, a5, -1176
381:              ori          s2, zero, -414
                  sll          gp, zero, a6
                  andi         sp, s5, 557
                  add          gp, s3, s11
385:              and          s10, a1, s2
                  ori          sp, s4, 123
                  srli         a3, s2, 3
                  xori         s6, zero, -447
                  blt          s0, s5, 395f
                  addi         t2, s4, 1574
                  sltu         a0, a3, t0
                  slti         s10, a4, -1278
                  srai         gp, a0, 25
                  srl          s11, s8, a7
395:              bgeu         t4, zero, 407f
                  beq          s9, a3, 416f
                  add          a5, t1, sp
                  bge          t1, a3, 401f
                  srl          sp, a2, a7
                  srli         a0, s0, 27
401:              blt          s4, s1, 402f
402:              and          s9, ra, s11
                  sll          tp, a4, ra
                  slti         s5, tp, 430
                  srl          sp, s0, s2
                  sltiu        a6, a3, 1027
407:              and          a1, t6, t4
                  nop
                  addi         s6, s4, 75
                  sltu         t2, a4, a5
                  auipc        a6, 793804
                  sltu         a2, s6, zero
                  auipc        t1, 379191
                  ori          s10, s10, -1582
                  or           t6, s2, gp
416:              sra          s11, s5, gp
                  sltiu        t5, s5, -514
                  add          a2, t1, tp
                  nop
                  srl          t3, s4, a0
                  srai         s3, a5, 7
                  sub          s3, s11, s1
                  slli         a2, a1, 5
                  nop
                  and          t0, s5, s3
                  or           t6, a2, a7
                  slt          a5, s11, s0
                  srl          tp, s4, a6
                  srai         s11, t6, 13
                  srai         s3, s3, 7
                  srl          t4, s2, a7
                  and          s5, s8, s4
                  xori         tp, t1, 80
                  sll          a2, a4, ra
                  xor          s5, s0, s7
                  sub          s0, s2, t0
                  bgeu         s7, s9, 444f
                  andi         t1, s7, 261
                  slti         a3, tp, 928
                  slt          s8, s8, s0
                  slt          s2, t2, t3
                  sltiu        s8, t4, 2020
                  and          zero, a7, t5
444:              ori          s0, s6, -1105
                  bgeu         t1, s2, 451f
                  srai         s0, a3, 24
                  auipc        t4, 303954
                  and          a0, s6, s0
                  sra          a6, s1, s1
                  auipc        a2, 6023
451:              or           t1, s10, s8
                  slli         s1, s8, 14
                  beq          t1, s3, 455f
                  slli         a5, a6, 15
455:              slti         s8, gp, -166
                  bltu         a4, s7, 473f
                  and          s4, s4, s6
                  bge          s6, s2, 474f
                  sll          s2, s9, a3
                  bge          a0, t3, 466f
                  nop
                  slli         t6, a2, 15
                  sub          s10, t4, t2
                  xori         s3, a0, -836
                  bltu         t2, t0, 468f
466:              bne          s7, t4, 482f
                  bge          s0, s0, 474f
468:              add          t5, s2, t4
                  sltu         a0, a7, s3
                  slt          s10, s9, s6
                  xori         t6, ra, -1226
                  bne          s9, t3, 482f
473:              slti         s3, t5, 311
474:              bgeu         a1, s11, 478f
                  sltiu        s9, s7, -372
                  sub          s1, a5, t0
                  blt          s11, zero, 479f
478:              sltu         a6, a4, s5
479:              nop
                  auipc        t5, 591950
                  lui          tp, 909423
482:              sll          t4, tp, t1
                  blt          s0, a6, 495f
                  or           s3, t3, s3
                  bgeu         s8, t2, 497f
                  sltiu        zero, s3, 807
                  slti         a0, s9, 1424
                  sltiu        t2, a3, -1850
                  xori         t5, s1, -1129
                  slt          a5, s0, s8
                  sll          t2, t1, tp
                  sltu         s1, s3, tp
                  bge          s7, s9, 509f
                  ori          t1, a7, 798
495:              add          a1, s7, s5
                  beq          s2, a3, 508f
497:              lui          s4, 1005073
                  ori          t5, s4, 1670
                  srli         s6, a2, 19
                  ori          s9, a0, 865
                  sltu         t0, s2, s7
                  lui          t2, 132482
                  slt          a5, gp, s6
                  ori          s2, s4, -1176
                  sll          s9, s10, t6
                  blt          s3, t4, 507f
507:              bge          a3, a6, 526f
508:              srai         t5, s7, 5
509:              srli         s1, s7, 28
                  blt          a3, s4, 529f
                  sltiu        a5, s9, 997
                  xor          gp, s3, zero
                  slti         t6, a0, -775
                  and          a0, gp, t5
                  sltu         a3, s0, s3
                  srai         s1, s0, 23
                  sub          ra, a2, a4
                  slt          sp, s4, gp
                  add          sp, s5, s0
                  ori          a6, s5, 237
                  beq          s2, t5, 524f
                  xori         a1, s8, -2027
                  ori          t4, zero, -518
524:              sra          t0, s6, s6
                  and          s0, s6, a0
526:              bne          a7, s11, 533f
                  andi         a5, t6, 772
                  blt          t3, a0, 529f
529:              sltu         t3, a0, tp
                  xori         s0, a7, 370
                  slt          s1, s2, s3
                  sub          a3, s10, s7
533:              sub          t5, s9, s5
                  and          s8, s4, gp
                  sra          a3, s6, t2
                  beq          a7, t0, 539f
                  srai         t1, zero, 6
                  sub          t0, zero, t6
539:              ori          t5, s11, 244
                  blt          a5, s10, 552f
                  sll          s2, s8, a7
                  ori          a5, t3, -2033
                  sll          t3, s9, a4
                  or           s4, gp, gp
                  lui          a0, 817644
                  sll          a5, s8, s1
                  sub          s2, a7, sp
                  srli         gp, s9, 6
                  addi         t0, a6, 169
                  slti         s2, s9, -1875
                  and          s2, s6, s0
552:              andi         ra, s3, 1012
                  lui          a1, 313030
                  xor          s4, s9, t4
                  bge          a1, s11, 571f
                  and          t6, a6, ra
                  sltiu        s4, s5, 1117
                  blt          a2, t2, 570f
                  srl          t5, t0, s8
                  bne          t6, s10, 569f
                  bltu         s5, s7, 563f
                  xori         a6, s2, -799
563:              addi         t3, t0, -1701
                  or           zero, t4, t3
                  bgeu         t6, a6, 569f
                  add          t6, s2, t4
                  sll          zero, s7, s8
                  bne          ra, s8, 588f
569:              xor          ra, s8, t2
570:              nop
571:              sll          sp, sp, s4
                  ori          t4, tp, 1303
                  sub          s5, s10, a4
                  xor          t3, a6, a2
                  sltiu        s9, s9, -1940
                  srli         s0, t2, 1
                  or           s10, s11, s9
                  andi         t5, s1, 1913
                  srl          a1, a3, t0
                  ori          a5, a6, 1604
                  and          tp, s11, tp
                  beq          tp, a0, 583f
583:              xori         s1, sp, -1251
                  srl          t4, a0, t4
                  or           a0, zero, t2
                  sub          s4, t1, a0
                  or           a0, t5, gp
588:              lui          t0, 769365
                  xori         tp, zero, -456
                  beq          gp, a6, 594f
                  bgeu         s3, s4, 597f
                  xori         zero, s11, 42
                  slt          t3, ra, a5
594:              sub          s6, a3, s3
                  slti         s9, s2, 1793
                  bge          s3, a4, 602f
597:              bgeu         t6, s1, 614f
                  bge          a4, t2, 610f
                  andi         a2, s8, 514
                  bge          s2, a0, 607f
                  srli         s2, s1, 8
602:              auipc        zero, 2737
                  andi         a0, s2, -1709
                  add          t4, a4, a4
                  sra          ra, a4, a4
                  or           t0, s9, sp
607:              srl          a3, t0, a7
                  slti         t6, t2, 1045
                  andi         ra, t3, 1709
610:              xori         t6, a6, -1848
                  slli         s2, s1, 24
                  bgeu         s4, s10, 618f
                  nop
614:              addi         t5, t2, 124
                  bne          t3, s11, 627f
                  bge          s11, s2, 619f
                  andi         t1, a2, 380
618:              sltu         a5, s1, a4
619:              and          a0, a0, gp
                  auipc        a3, 401740
                  sltiu        t2, a3, -961
                  addi         s8, t3, -1530
                  or           t3, a1, t0
                  sra          ra, sp, s9
                  lui          a0, 205693
                  add          s0, s5, a5
627:              xori         a6, a0, 38
                  and          sp, s6, s0
                  and          t0, t1, s3
                  slti         t3, t4, -1217
                  bltu         s5, gp, 638f
                  bne          a3, a2, 644f
                  slt          s10, s1, s3
                  srli         t0, s11, 20
                  slti         tp, a3, -757
                  sltiu        t4, s5, 444
                  srai         t2, s6, 1
638:              xor          a6, s10, s3
                  bge          sp, s7, 658f
                  addi         s8, zero, -1722
                  bne          s2, a7, 642f
642:              bgeu         s6, s2, 659f
                  beq          s6, ra, 646f
644:              lui          s4, 309119
                  lui          t5, 403428
646:              bge          gp, s2, 652f
                  and          t6, s8, s1
                  auipc        s11, 1006972
                  ori          s0, ra, 1098
                  sltu         a1, t2, s5
                  ori          a3, a3, -773
652:              blt          t4, s0, 653f
653:              sra          zero, s4, s4
                  bltu         t2, sp, 674f
                  xori         t6, t2, -778
                  bge          t4, s0, 672f
                  bne          s7, a4, 673f
658:              nop
659:              beq          t4, s1, 661f
                  ori          t2, s3, 675
661:              ori          a1, s1, -593
                  or           t6, a3, a5
                  andi         s1, t4, 1333
                  xor          a0, a5, s6
                  slli         gp, s6, 5
                  srai         t5, a4, 31
                  sltu         t5, s9, sp
sub_4_11:         jal          ra, 23f
0:                jal          ra, 17f
1:                jal          t5, 20f
2:                jal          ra, 22f
3:                jal          ra, 7f
4:                jal          s2, 2b
5:                jal          ra, 8f
6:                jal          t0, 14f
7:                jal          a1, 6b
8:                jal          a0, 11f
9:                jal          t3, 13f
10:               jal          t1, 21f
11:               jal          ra, 12f
12:               jal          s5, 0b
13:               jal          s4, 1b
14:               jal          ra, 10b
15:               jal          s10, 18f
16:               jal          s10, 4b
17:               jal          ra, 15b
18:               jal          ra, 9b
19:               jal          ra, 5b
20:               jal          s10, 3b
21:               jal          a2, 24f
22:               jal          t1, 19b
23:               jal          ra, 16b
24:               or           s8, a6, s3
                  slti         t2, a2, 1056
                  and          ra, t2, a4
                  bgeu         a2, a3, 682f
                  andi         t5, a1, 1419
672:              ori          s9, zero, -452
673:              bltu         tp, t0, 677f
674:              sltu         t1, a5, ra
                  srl          tp, a0, s3
                  bgeu         t6, t4, 678f
677:              sltiu        t3, a6, -324
678:              sra          zero, tp, a5
                  blt          sp, zero, 685f
                  srai         t1, s6, 29
                  xori         t4, s11, 682
682:              sltiu        s6, a0, -1442
                  bltu         t2, s0, 687f
                  bgeu         s7, a6, 685f
685:              sra          tp, s6, s4
                  slti         s6, t5, 454
687:              nop
                  sltu         a3, ra, s11
                  or           gp, a7, a0
                  blt          tp, s2, 702f
                  bltu         a7, t4, 695f
                  lui          t1, 508773
                  xori         a2, s7, 74
                  ori          tp, t4, -385
695:              add          a3, s7, zero
                  slli         t0, t4, 10
                  addi         s0, t4, 1635
                  sra          a6, a6, s9
                  nop
                  slt          t6, a3, s10
                  bne          a5, t0, 711f
702:              auipc        s2, 778746
                  bne          a0, s11, 722f
                  bge          s8, a5, 707f
                  add          a2, t4, a3
                  srli         t2, a3, 14
707:              slli         s2, gp, 0
                  slti         t6, ra, 1653
                  nop
                  sll          a5, a1, s0
711:              slli         t3, ra, 31
                  slli         a1, s8, 24
                  slti         s9, s5, 386
                  ori          ra, gp, 1200
                  addi         t2, tp, -326
                  auipc        gp, 680246
                  beq          t6, a1, 726f
                  srli         ra, s11, 20
                  sll          t3, s10, t2
                  sltiu        t5, s2, -404
                  bge          a1, ra, 737f
722:              bltu         a4, s1, 729f
                  andi         s10, sp, 745
                  and          t1, s7, s5
                  slti         s9, ra, 617
726:              bge          t4, t5, 738f
                  slti         tp, t4, -1047
                  beq          t3, zero, 731f
729:              sll          a2, s7, t4
                  sll          a2, s2, s2
731:              beq          t3, a4, 743f
                  sltu         a1, zero, a7
                  sll          t0, sp, t2
                  ori          a3, tp, -415
                  xor          ra, a6, s9
                  sltiu        t0, a5, -571
737:              bge          a0, s8, 738f
738:              ori          s10, t0, -1095
                  slt          s10, zero, s10
                  sltiu        ra, tp, -1510
                  slli         s4, ra, 29
                  xori         t0, a1, 901
743:              bne          a3, a6, 746f
                  slti         a5, a2, 1643
                  addi         tp, a0, 825
746:              nop
                  sltu         s3, a6, t6
                  beq          tp, t5, 764f
                  xor          a0, s7, tp
                  slti         a6, t1, 173
                  bltu         s11, s7, 760f
                  slti         a3, zero, 1270
                  slti         s3, a4, -422
                  bltu         tp, a1, 770f
                  xor          t5, zero, gp
                  sltiu        a6, s3, 531
                  sltu         s2, t5, s6
                  xori         s8, s11, 1174
                  xor          s2, s10, t2
760:              sll          s2, gp, s6
                  bne          t2, a2, 764f
                  auipc        t6, 561516
                  sra          s0, a3, a6
764:              blt          a2, s11, 783f
                  srai         s6, s3, 27
                  add          t0, t1, t2
                  sub          t3, zero, t6
                  bne          s5, t2, 772f
                  andi         t5, s0, 1584
770:              add          a6, t6, s4
                  auipc        t5, 105628
772:              bgeu         a4, s9, 784f
                  ori          s5, t4, -1663
                  sll          s3, t3, s11
                  sltu         s11, s11, a0
                  bltu         s8, tp, 793f
                  blt          t5, s6, 781f
                  ori          a0, a1, -51
                  nop
                  auipc        a3, 168218
781:              sll          s4, t3, ra
                  slti         s3, s7, 1341
783:              nop
784:              lui          s6, 9761
                  addi         t5, s8, 1343
                  slli         ra, a3, 13
                  sra          a0, s7, sp
                  blt          s9, s9, 808f
                  sra          s8, t0, t6
                  sltiu        a6, s2, 1622
                  lui          s0, 938528
                  slti         t2, zero, 1588
793:              nop
                  xor          t6, s5, a1
                  or           sp, t1, s10
                  xori         s8, t3, -312
                  bge          s10, s4, 803f
                  srai         s6, a6, 19
                  beq          a2, a2, 809f
                  blt          zero, s6, 819f
                  bltu         a5, s9, 805f
                  ori          s2, s10, -552
803:              srli         s3, s0, 10
                  sltu         t0, s8, s3
805:              or           a2, a1, a0
                  slti         a2, a1, -875
                  sltu         s10, ra, tp
808:              add          s10, s9, s3
809:              srl          s8, s6, t6
                  slli         tp, a4, 28
                  bgeu         t2, gp, 818f
                  sll          s3, t2, s11
                  and          tp, ra, s10
                  blt          s0, s6, 815f
815:              slli         t1, a2, 10
                  addi         a2, s8, -719
                  bltu         a5, s1, 819f
818:              ori          a2, s2, 371
819:              slli         gp, a2, 0
                  sub          a3, s3, t1
                  and          a2, t2, a5
                  xori         t2, s2, -1969
                  or           a0, s1, s4
                  bne          s5, t1, 840f
                  sub          t4, zero, s1
                  or           a3, t1, s4
                  add          a6, a5, s9
                  xori         a3, a4, -987
                  xori         a1, gp, 1067
                  ori          a1, t3, -1795
                  slti         a0, t5, -1968
                  beq          s7, a0, 844f
                  bltu         t0, s8, 845f
                  lui          t1, 946191
                  auipc        ra, 657377
                  srai         gp, a6, 12
                  srai         s5, ra, 5
                  slti         s4, gp, -422
                  sub          t1, s10, t5
840:              bne          s7, s4, 841f
841:              beq          t6, zero, 843f
                  nop
843:              auipc        tp, 736250
844:              andi         t2, t2, -1040
845:              auipc        gp, 849168
                  lui          s8, 466183
                  or           t6, s4, a3
                  ori          ra, s7, -20
                  add          s0, t1, s6
                  sltu         t6, s3, sp
                  sub          a6, a1, a2
                  lui          s0, 434851
                  auipc        t2, 954747
                  sll          t2, sp, ra
                  lui          t3, 760286
                  xori         a6, a6, 854
                  slti         s5, t2, 1295
                  xor          t2, s1, s2
                  sltu         s2, sp, s2
                  bgeu         ra, t3, 866f
                  and          s4, t5, a6
                  ori          a5, t1, -766
                  slt          ra, s9, s4
                  slti         a5, s5, -1461
                  addi         t0, t2, -1505
866:              add          s9, t4, s8
                  nop
                  bltu         t2, s3, 874f
                  srl          s3, t3, s2
                  add          s8, s6, s7
                  addi         t0, t3, -1603
                  bne          a4, t5, 876f
                  and          t0, t0, a5
874:              bltu         a7, s8, 878f
                  slti         s4, s3, -286
876:              sra          a5, t4, s11
                  or           s8, t4, ra
878:              srli         gp, a3, 8
                  xori         t1, s10, -1510
                  beq          s11, s0, 899f
                  andi         s9, a7, 800
                  andi         s3, a1, 1226
                  nop
                  srl          t1, a5, t1
                  la           a3, sub_5
                  lui          s8, 312560
                  sub          a2, zero, s9
                  addi         a3, a3, 1
                  bltu         s6, a4, sub_4_j8 #branch to jump instr
                  sll          sp, zero, t0
                  ori          t4, s8, -1216
sub_4_j8:         jalr         ra, a3, -1 #jump sub_4 -> sub_5
                  xor          t6, a6, s6
                  sltu         a5, a7, a2
                  xori         t4, s0, 1857
                  bltu         t1, t4, 897f
                  sll          s11, t1, s6
                  and          a1, s5, t1
                  xori         s1, a6, 1526
                  sltu         zero, a6, s7
                  xori         tp, a3, 1157
                  sub          s9, a3, t2
                  sltu         s5, a4, s4
                  srl          a6, t1, t0
                  slt          s11, t2, a3
                  xor          a0, s6, tp
                  slt          t5, tp, a4
897:              or           t1, s2, s5
                  blt          s11, a5, 915f
899:              addi         s0, s2, -1279
                  srli         gp, s4, 28
                  xor          s4, t2, t2
                  bge          s9, s7, 909f
                  xori         a2, s4, 56
                  sub          a6, ra, t3
                  srai         a6, s8, 28
                  sltu         t3, s0, s1
                  addi         a5, s5, 1452
                  slli         s2, t5, 12
909:              bge          s0, s4, 915f
                  or           ra, s1, t0
                  sub          t5, zero, s5
                  or           ra, ra, s9
                  sra          s11, s3, t1
                  add          s1, s7, zero
915:              srli         a3, s3, 1
                  nop
                  add          s8, a3, s4
                  bgeu         sp, zero, 930f
                  xori         t1, t1, -266
                  auipc        a0, 102754
                  slli         s11, a7, 25
                  xori         zero, t3, 1006
                  or           a3, a0, a3
                  nop
                  nop
                  lui          t4, 224764
                  xor          s8, s6, zero
                  bltu         a2, a6, 944f
                  srli         s6, gp, 23
930:              xor          s1, a0, s9
                  bgeu         s11, t0, 940f
                  srai         a6, a3, 8
                  bne          sp, gp, 934f
934:              sll          tp, s11, a4
                  addi         s6, t2, -637
                  addi         t3, a7, 745
                  addi         gp, s0, 905
                  nop
                  xori         a5, t2, -1770
940:              add          a6, t4, gp
                  lui          a1, 400036
                  srli         t1, s1, 21
                  auipc        s1, 434299
944:              bgeu         s3, a6, 954f
                  blt          t6, s1, 949f
                  srai         t4, a2, 11
                  srl          s10, s1, s10
                  sra          sp, a6, gp
949:              ori          s10, a3, 1441
                  sltu         sp, a7, a3
                  blt          s9, a2, 952f
952:              or           sp, a4, t1
                  ori          s3, a5, -682
954:              xor          ra, s9, s4
                  slt          s9, t1, s9
                  add          s4, a2, a1
                  beq          zero, a4, 969f
                  beq          a6, a1, 960f
                  srl          s3, a3, t1
960:              bne          s1, s1, 967f
                  sub          s4, gp, s9
                  sltiu        a0, s7, -899
                  bltu         a5, s6, 975f
                  slli         s4, ra, 9
                  xor          a5, s1, a4
                  lui          s8, 12354
967:              bge          s3, s8, 983f
                  auipc        a2, 23577
969:              andi         a2, t0, 920
                  auipc        a6, 522030
                  bge          t3, t0, 983f
                  and          t4, zero, s1
                  srli         t0, t5, 9
                  andi         s9, a4, -1019
975:              addi         a6, a5, -1783
                  bltu         a6, s0, 979f
                  sltiu        t1, t3, -225
                  sltu         s4, s9, ra
979:              sll          s4, t3, t1
                  lui          ra, 830751
                  sltu         s4, a7, a3
                  slti         s3, s4, 530
983:              sltiu        s5, t3, 1127
                  srli         a2, s4, 17
                  blt          s1, s4, 986f
986:              sltiu        s0, s8, -1387
                  auipc        t0, 487434
                  slli         a5, gp, 7
                  sltiu        t4, s0, -191
                  bne          s10, tp, 993f
                  xori         ra, a6, 1315
                  and          t5, s6, t2
993:              ori          s6, t0, 239
                  srli         t5, s0, 6
                  ori          s0, s0, -666
                  srai         s1, s1, 22
                  lui          s5, 900257
                  bne          t4, a6, 1014f
                  xori         gp, s7, -656
                  add          s10, tp, s2
                  sra          gp, s11, t0
                  sltiu        s5, s8, 1793
                  nop
                  bne          s0, a2, 1014f
                  xor          s11, a5, a0
                  sub          t2, s3, s11
                  xor          gp, s3, s8
                  bge          tp, zero, 1014f
                  lui          a1, 269807
                  bgeu         a6, a5, 1014f
                  add          ra, s9, s11
                  xor          t4, a4, s8
                  auipc        ra, 955898
1014:             xori         s6, a0, 1287
                  and          s8, s8, a7
                  lw           ra, 4(s7)
                  ori          a5, s5, 292
                  addi         s7, s7, 44
                  sltiu        s5, t2, 1630
1519:             addi x12, x1, 0
1519:             jalr x12, x12, 0
sub_2:            slt          a6, gp, sp
                  srai         a5, a0, 17
                  auipc        t3, 954962
                  bne          s3, t6, sub_2_stack_p
                  add          a2, t6, s5
sub_2_stack_p:    addi         s7, s7, -24
                  and          s0, s4, s0
                  sw           ra, 4(s7)
                  auipc        t5, 392382
                  sll          s2, s7, s5
                  srli         s9, zero, 20
                  blt          s11, s1, 6f
                  beq          a7, t2, 21f
                  sll          s10, t1, a2
                  slli         s3, zero, 29
6:                beq          s10, t1, 10f
                  and          s0, zero, a5
                  add          s11, t5, s1
                  bne          s4, s11, 15f
10:               andi         t0, s6, 696
                  ori          a0, s3, -283
                  bltu         a7, a2, 20f
                  bge          t2, a0, 25f
                  or           gp, a2, s8
15:               srai         s9, t3, 18
                  lui          t2, 211104
                  slli         tp, t0, 3
                  ori          t4, t4, 1058
                  srl          a3, t6, t5
20:               slli         t5, t1, 27
21:               sub          a0, a3, a4
                  srai         s10, s2, 14
                  auipc        a6, 578431
                  bgeu         tp, s8, 33f
25:               srli         s4, tp, 22
                  sltiu        s8, ra, -1732
                  blt          t2, t0, 31f
                  xori         a5, s9, 1940
                  slti         zero, s1, -904
                  bgeu         sp, a4, 37f
31:               sltiu        t4, s4, 1413
                  sll          s3, s3, s11
33:               sltiu        a1, a4, -615
                  lui          s8, 708918
                  beq          s10, s4, 38f
                  sll          a6, s2, s7
37:               slli         a6, zero, 30
38:               sltiu        s9, gp, -1462
                  bltu         ra, t0, 58f
                  bltu         s3, a4, 51f
                  sll          s10, t0, a1
                  xori         zero, a6, 1714
                  srli         s3, s3, 10
                  or           s5, tp, sp
                  or           a6, s11, s8
                  slti         s4, s4, 1576
                  lui          t0, 332810
                  srai         s0, sp, 21
                  sra          a5, a0, s9
                  sltiu        t0, t0, 1755
51:               addi         s9, a1, -1889
                  and          s1, sp, a4
                  beq          ra, s2, 71f
                  add          t3, s9, a3
                  sll          s4, t2, a5
                  blt          t1, zero, 66f
                  addi         s9, t2, -1896
sub_2_0:          jal          ra, 6f
0:                jal          ra, 3f
1:                jal          s2, 17f
2:                jal          t0, 15f
3:                jal          s0, 2b
4:                jal          ra, 13f
5:                jal          tp, 20f
6:                jal          ra, 14f
7:                jal          ra, 10f
8:                jal          t1, 1b
9:                jal          t1, 16f
10:               jal          t1, 18f
11:               jal          t1, 0b
12:               jal          ra, 11b
13:               jal          ra, 19f
14:               jal          a3, 8b
15:               jal          ra, 5b
16:               jal          a2, 4b
17:               jal          t1, 7b
18:               jal          t0, 9b
19:               jal          ra, 12b
20:               auipc        s5, 178412
58:               add          ra, s8, ra
                  sll          a0, t1, t2
                  sll          s2, a2, t3
                  sll          a1, s10, sp
                  srli         a3, t2, 18
                  slt          a2, t0, tp
                  ori          t6, tp, 583
                  sll          a3, s8, t4
66:               add          s3, a0, t6
                  ori          a2, a7, 494
                  sra          t0, t6, s6
                  blt          s11, t6, 75f
                  bltu         s0, t4, 80f
71:               andi         s1, s7, 1652
                  bltu         t2, t0, 80f
                  bgeu         t3, s3, 79f
                  slli         tp, a5, 8
75:               bne          t4, s10, 76f
76:               sll          t5, a3, a4
                  sub          s10, s1, t2
                  or           tp, t5, s4
79:               auipc        s4, 819004
80:               sub          s8, t4, a2
                  srli         t3, s7, 11
                  nop
                  add          s10, t4, a4
                  lw           ra, 4(s7)
                  xor          s9, gp, a5
                  add          s11, sp, s2
                  nop
                  nop
                  nop
                  addi         s7, s7, 24
                  xori         t2, a1, -856
123:              addi x21, x1, 0
123:              jalr x21, x21, 0
sub_5:            slti         s10, a5, 1662
                  nop
                  or           t6, s5, t0
                  addi         s7, s7, -36
                  sw           ra, 4(s7)
                  sub          zero, ra, s11
                  auipc        t1, 999699
sub_5_0:          jal          ra, 10f
0:                jal          ra, 8f
1:                jal          a5, 11f
2:                jal          ra, 1b
3:                jal          ra, 6f
4:                jal          ra, 7f
5:                jal          ra, 0b
6:                jal          t1, 12f
7:                jal          ra, 13f
8:                jal          ra, 4b
9:                jal          ra, 2b
10:               jal          tp, 9b
11:               jal          gp, 3b
12:               jal          ra, 5b
13:               xor          s1, t4, tp
                  ori          zero, a6, -1782
                  andi         s8, a7, -585
                  ori          s11, a5, -1552
                  slt          tp, s0, a0
                  slti         a0, s11, 1130
                  slli         t4, s11, 17
                  bne          s11, t4, 19f
                  bge          s8, t3, 12f
                  slli         zero, s0, 8
                  srai         s4, sp, 14
                  lui          sp, 998867
                  addi         gp, t6, 142
12:               auipc        a2, 16421
                  sub          a2, a4, tp
                  srai         s5, s1, 25
                  nop
                  ori          ra, t6, -1621
                  srl          gp, s9, s1
                  addi         ra, t5, 1163
19:               addi         t3, t0, -380
                  bne          a2, a0, 22f
                  srl          tp, a1, gp
22:               sltiu        a0, s0, -2016
                  sltu         zero, t5, a3
                  sltiu        s8, t2, 270
                  slti         s6, t5, -736
                  sltiu        a1, s6, 2009
                  slt          ra, s4, s0
                  srl          t2, t2, s5
                  srli         t4, a1, 2
                  slli         tp, a1, 16
                  beq          s4, t4, 36f
                  lui          a5, 664387
                  beq          a4, a5, 52f
                  xori         s9, t5, -1294
                  xor          s1, a5, s9
36:               and          s3, s10, t3
                  beq          s4, zero, 38f
38:               xori         tp, a5, 387
                  srai         a6, s9, 18
                  slt          a3, t0, zero
                  auipc        a5, 428788
                  slti         t0, s3, -306
                  ori          t0, s9, 1749
                  slli         s10, s7, 18
                  beq          t5, a6, 61f
                  auipc        s3, 687932
                  add          s11, s1, t5
                  beq          s2, t0, 61f
                  nop
                  sltiu        s1, t3, 922
                  sltu         tp, gp, t4
52:               xori         s1, t3, -1954
                  bltu         a1, gp, 55f
                  slti         sp, t5, 1365
55:               bne          a5, a6, 71f
                  bge          s5, t0, 67f
                  xori         gp, s9, 849
                  srai         s9, a4, 23
                  sltiu        s0, t5, -338
                  srli         s9, t0, 17
61:               bne          t0, a7, 78f
                  sra          t4, s1, t5
                  andi         s3, s5, -1796
                  and          t4, a6, zero
                  sltu         a6, t4, t4
                  nop
67:               addi         s3, a2, 622
                  sltu         s9, a0, t0
                  or           t0, s7, s5
                  xori         ra, ra, 864
71:               blt          ra, a7, 78f
                  bge          a0, s2, 78f
                  nop
                  bltu         s1, s9, 78f
                  blt          s1, s1, 78f
                  sra          s10, t0, t1
                  srli         t0, t0, 1
78:               lui          s0, 716740
                  xori         t1, a6, -1433
                  lw           ra, 4(s7)
                  xori         s6, a0, -1082
                  addi         s7, s7, 36
                  or           a2, s6, s4
                  sltu         s10, t0, a7
                  sub          a6, s0, t1
                  and          s2, s10, s3
                  xor          t5, a0, s5
                  nop
111:              addi x10, x1, 1
111:              jalr x10, x10, 0
sub_1:            bne          s7, a3, sub_1_stack_p
                  andi         t0, a5, 1805
sub_1_stack_p:    addi         s7, s7, -60
                  xor          zero, s10, s11
                  ori          s2, zero, -1299
                  srli         t6, s4, 6
                  slti         a6, zero, 1392
                  or           t5, a6, t5
                  sw           ra, 4(s7)
                  sltiu        s8, s10, -1728
                  srli         s3, s4, 2
                  slli         a6, t4, 21
                  lui          sp, 1010473
                  la           s4, sub_4
                  nop
                  lui          s5, 546014
                  nop
                  sll          s3, a5, s5
                  addi         s4, s4, 460
                  or           t5, a3, s5
                  slli         s1, s9, 17
                  slti         s9, s3, -473
                  srl          t5, a0, s10
                  blt          tp, s8, sub_1_j5 #branch to jump instr
                  and          s1, a3, t4
sub_1_j5:         jalr         ra, s4, -459 #jump sub_1 -> sub_4
                  and          a2, a1, a7
                  srli         a2, a0, 17
                  nop
                  blt          s6, tp, sub_1_j6 #branch to jump instr
                  and          s10, s0, a5
                  lui          gp, 940651
                  slt          a3, sp, a1
                  sra          t6, t1, a7
                  slt          a6, s9, s10
sub_1_j6:         jal          ra, sub_4 #jump sub_1 -> sub_4
sub_1_2:          jal          ra, 0f
0:                jal          t2, 22f
1:                jal          t6, 21f
2:                jal          t1, 3f
3:                jal          ra, 29f
4:                jal          s9, 2b
5:                jal          a2, 28f
6:                jal          a1, 12f
7:                jal          s11, 26f
8:                jal          ra, 20f
9:                jal          t1, 24f
10:               jal          ra, 7b
11:               jal          ra, 9b
12:               jal          s10, 14f
13:               jal          ra, 6b
14:               jal          t1, 11b
15:               jal          ra, 23f
16:               jal          ra, 5b
17:               jal          t1, 1b
18:               jal          t0, 17b
19:               jal          ra, 10b
20:               jal          ra, 15b
21:               jal          ra, 25f
22:               jal          ra, 16b
23:               jal          t1, 19b
24:               jal          ra, 30f
25:               jal          t1, 27f
26:               jal          t5, 18b
27:               jal          ra, 13b
28:               jal          ra, 4b
29:               jal          t1, 8b
30:               xori         ra, t0, -540
sub_1_1:          jal          ra, 11f
0:                jal          ra, 21f
1:                jal          ra, 18f
2:                jal          s0, 23f
3:                jal          ra, 5f
4:                jal          ra, 6f
5:                jal          t4, 17f
6:                jal          ra, 16f
7:                jal          t1, 3b
8:                jal          ra, 0b
9:                jal          t1, 10f
10:               jal          ra, 14f
11:               jal          ra, 22f
12:               jal          ra, 24f
13:               jal          ra, 1b
14:               jal          ra, 8b
15:               jal          a5, 7b
16:               jal          ra, 19f
17:               jal          s6, 12b
18:               jal          ra, 20f
19:               jal          s6, 13b
20:               jal          ra, 9b
21:               jal          a0, 2b
22:               jal          t1, 4b
23:               jal          ra, 15b
24:               sub          s2, s4, s10
sub_1_0:          jal          ra, 9f
0:                jal          s2, 15f
1:                jal          t1, 6f
2:                jal          ra, 4f
3:                jal          ra, 11f
4:                jal          s11, 1b
5:                jal          tp, 10f
6:                jal          ra, 13f
7:                jal          ra, 5b
8:                jal          ra, 7b
9:                jal          s1, 0b
10:               jal          t0, 16f
11:               jal          s1, 14f
12:               jal          a5, 8b
13:               jal          a0, 12b
14:               jal          ra, 2b
15:               jal          t1, 3b
16:               auipc        tp, 381185
                  srl          s6, s8, s3
                  sra          t6, tp, sp
                  bne          t2, t2, 5f
                  add          a6, t1, s7
                  bge          a4, t3, 15f
5:                srl          gp, s4, s10
                  blt          t4, a2, 18f
                  sra          t3, t1, tp
                  bge          s3, a7, 23f
                  sltu         gp, s2, zero
                  bge          t0, a0, 20f
                  slti         s9, t0, -1926
                  or           s1, ra, s3
                  sltu         s10, s11, t3
                  slt          t3, s6, s6
15:               slli         s9, t0, 0
                  slt          t4, a3, s0
                  beq          s2, t6, 27f
18:               add          tp, t3, s6
                  or           a2, s11, ra
20:               and          t1, s8, s9
                  auipc        s3, 300709
                  andi         a6, sp, -675
23:               bne          a0, s5, 26f
                  slli         s2, a2, 6
                  beq          s10, s1, 40f
26:               srl          gp, a2, a6
27:               and          a3, sp, s6
                  lui          gp, 825720
                  slli         t3, a6, 31
                  sltiu        t2, zero, -443
                  sltu         s0, tp, s6
                  bltu         s1, a3, 38f
                  sltiu        t0, t6, -1168
                  andi         s8, a6, -655
                  add          t4, t3, t6
                  bne          s9, s2, 48f
                  nop
38:               addi         t5, a4, -658
                  bge          a0, s3, 50f
40:               lui          t6, 638896
                  sltiu        s10, tp, -987
                  srl          s4, s3, s1
                  nop
                  auipc        a6, 247200
                  sra          t5, a6, s4
                  lui          s4, 956877
                  slli         s6, sp, 9
48:               auipc        s6, 415471
                  sub          s5, s10, s9
50:               slli         a6, a2, 21
                  bge          sp, s8, 55f
                  or           t5, s8, s8
                  bne          s8, t5, 71f
                  nop
55:               beq          a7, a3, 64f
                  sub          a0, t1, s0
                  sltiu        s2, a6, -1897
                  sltu         t5, s11, ra
                  andi         s3, s1, -1273
                  bne          a1, t3, 68f
                  ori          zero, t5, 1803
                  lui          zero, 402363
                  or           s2, sp, t6
64:               slti         s0, gp, 205
                  addi         s11, a3, -115
                  slti         t4, a5, 434
                  bltu         s2, t6, 86f
68:               beq          t5, t2, 81f
                  slli         a2, s4, 20
                  bge          a6, a1, 80f
71:               slti         s11, s3, 107
                  bgeu         s7, zero, 84f
                  sltu         t5, t0, a3
                  sra          s9, gp, s11
                  bne          a2, a6, 86f
                  beq          s7, s9, 86f
                  sub          gp, s9, s3
                  slli         a1, s7, 6
                  ori          s8, a4, -1464
80:               sra          s5, tp, s1
81:               sra          s5, s0, ra
                  addi         t1, s6, -1917
                  bltu         t5, a0, 89f
84:               andi         a5, a1, 825
                  slti         s1, s11, 796
86:               lui          s8, 964110
                  nop
                  sltiu        s5, a3, -1927
89:               bltu         a2, a0, 97f
                  bge          gp, s7, 93f
                  slt          s11, s5, a2
                  beq          t4, s3, 110f
93:               addi         sp, s11, 1486
                  srai         sp, s3, 4
                  slti         a6, zero, -1244
                  slli         a0, s2, 26
97:               addi         s4, s11, -889
                  or           s9, s9, zero
                  sltu         a6, s3, a5
                  addi         s3, s7, -1195
                  xori         zero, a4, 431
                  bne          a3, a2, 110f
                  auipc        t2, 529135
                  addi         sp, zero, -40
                  sra          s6, a5, a3
                  srli         sp, a6, 0
                  bgeu         tp, a2, 125f
                  slt          s6, a4, ra
                  sltu         t3, s2, t5
110:              srli         t5, s4, 30
                  xori         t6, s0, 1472
                  sltu         s9, t5, t2
                  srl          s8, t0, s10
                  bltu         t2, ra, 128f
                  add          t2, t5, tp
                  sll          tp, t5, gp
                  srli         s8, s11, 2
                  srai         a1, s8, 14
                  bltu         t5, s8, 138f
                  or           a6, ra, a5
                  bltu         s10, sp, 134f
                  srli         a0, t0, 16
                  add          t5, ra, ra
                  addi         sp, a2, 424
125:              sltu         s0, s0, s5
                  addi         t3, a0, -692
                  add          gp, t1, s9
128:              add          s11, sp, s1
                  srli         t1, a0, 20
                  addi         t5, s10, -440
                  xori         zero, s2, 779
                  xor          t0, t6, s1
                  bltu         tp, t5, 147f
134:              ori          s0, a1, 1334
                  xor          s2, t6, s5
                  sll          t2, s1, s8
                  xor          a5, a5, s6
138:              sub          t5, s1, sp
                  beq          a3, ra, 151f
                  ori          zero, ra, 102
                  sltiu        s11, t0, -615
                  auipc        t2, 184552
                  sll          t3, ra, s6
                  auipc        a5, 24664
                  andi         zero, t2, -828
                  add          a6, a5, tp
147:              and          s5, s3, s8
                  srl          s8, s10, tp
                  slli         s2, s2, 4
                  nop
151:              sra          t0, t5, t5
                  sltiu        s9, zero, -26
                  and          tp, a3, s8
                  lui          s5, 926989
                  blt          a6, s4, 165f
                  bgeu         t6, t1, 166f
                  bltu         a2, a5, 163f
                  andi         a6, s11, -1949
                  nop
                  srai         gp, t1, 9
                  xor          t2, tp, s1
                  beq          ra, a3, 166f
163:              srai         s1, s1, 2
                  beq          zero, s10, 177f
165:              bgeu         a5, sp, 177f
166:              ori          s11, a3, 538
                  slli         s9, sp, 11
                  slti         a2, a1, -584
                  bge          s3, zero, 177f
                  sll          zero, t2, sp
                  slli         ra, s0, 26
                  nop
                  xori         a6, s7, -1815
                  sub          t4, s4, s2
                  slti         s8, a0, -965
                  blt          s0, sp, 177f
177:              slt          s0, s7, ra
                  or           a5, a0, t0
                  srl          t0, s6, s5
                  lw           ra, 4(s7)
                  addi         s7, s7, 60
                  add          s1, a5, a6
                  lui          a5, 264163
                  srli         a3, s3, 17
297:              addi x27, x1, 1
297:              jalr x27, x27, 0
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
.word 0x1755895d, 0x514a18e4, 0x692b7a22, 0xf2f3625f, 0x92b5bfec, 0x8f438e13, 0xb4a082c5, 0x243d9bc8
.word 0x1bee23d9, 0x707eb7d7, 0x43996931, 0x40418846, 0x7285a8ee, 0xbbde425f, 0xfbae8321, 0x4587cf9f
.word 0xad8b221d, 0xcb37465a, 0xf5187a9a, 0x3fe658b1, 0xbc4c7387, 0x309ade28, 0xd3d47d73, 0xea4803ef
.word 0xcaf0fb71, 0xebea1eab, 0xa9588de8, 0xb3728c76, 0x2461d258, 0xa8142a21, 0x0fe2844b, 0x5bb1f8ec
.word 0xdd6c44fa, 0xb629a130, 0x5b673f91, 0x9c1486f0, 0x71384244, 0x1e097454, 0xa6876e62, 0x37e1021d
.word 0x2b4e7f3a, 0x697c3da5, 0x4cea5594, 0x6445116a, 0xd950cc35, 0x3275be6b, 0x58f90333, 0xdbdbcab6
.word 0x29913685, 0xccded374, 0x22ed9211, 0xb66391bb, 0x55eef804, 0x3972df7a, 0x96fa786b, 0x17575641
.word 0x936bdd91, 0xcaaba09e, 0x488eb054, 0xba9c329d, 0xcde719dd, 0xade2c984, 0x4e1fd567, 0xf3516e96
.word 0x1f8a9b82, 0x69150b79, 0x571d0606, 0xcd57c5b9, 0x5e70d12a, 0x9c32376a, 0x8718500a, 0x72a33de1
.word 0xd4758831, 0x37b67ff2, 0x36c2f167, 0x1fc0322d, 0x833bd312, 0x7a9c30e2, 0x2d4b5ef2, 0xdcb92291
.word 0x705fb4f8, 0x8069cc85, 0x4fcff5dd, 0x3bba2059, 0x871ecb3a, 0xb76f52c4, 0x3c898ff2, 0x648887ac
.word 0x193d9a97, 0xda71d547, 0xff03ed63, 0x99d85569, 0xbbe643c5, 0x5f74bb73, 0x09445301, 0xd3ba2c5a
.word 0x119859b8, 0x96c22c76, 0x8d3f54d8, 0xd3be0b54, 0xfa284576, 0x717cc15f, 0xe58a26a1, 0xd5d4a829
.word 0x48c65e09, 0xe12b918a, 0x93c3f306, 0x65e9cbd6, 0xb8432893, 0xfdd910ad, 0xf4a2d45d, 0xc90f34ff
.word 0xc9daa4a0, 0x32f99495, 0x3b1ff52d, 0x82f99de1, 0x02d8e60f, 0x26e73e87, 0x3e0d941b, 0xdb512703
.word 0xd53d5bdb, 0xdc240897, 0xbb414cde, 0x652e3d74, 0x236750ea, 0x74d38263, 0xc105da5f, 0x34a798a5
.word 0x822b3841, 0x7afcecf7, 0xaf634485, 0x4280a545, 0xdb349ff6, 0x099c4f2f, 0xf7de12df, 0x847e1f48
.word 0x19836947, 0x9b55d7df, 0x64fa77d0, 0xf5a42595, 0xa092c8c5, 0x87f78bb2, 0x40379f4c, 0x52891d1c
.word 0x0911730f, 0x4e38a79c, 0x6a92958b, 0xbe128b8f, 0x29067545, 0xf0911632, 0x38a23105, 0x2e2c787c
.word 0x6b8ed830, 0x22169d3e, 0x0f727dbe, 0xcd634c52, 0x77cc70da, 0x613bc089, 0x28f7404b, 0x89d84199
.word 0x72e8def4, 0xe38bb1d3, 0x98be34fe, 0x80b1e7b7, 0x8545afbf, 0xf20848f3, 0x32ac3ad8, 0x5bf3eef1
.word 0xfb6cdbc6, 0x42320868, 0x8804ca86, 0xb767b87c, 0x6463e9ea, 0xa90b2727, 0xbb3913b2, 0x4ab62a0d
.word 0xe2025146, 0xfbf526ff, 0xa74843ab, 0x6354a5e3, 0x7376692d, 0x16b9dba4, 0x94c169a8, 0xa02eb59b
.word 0x9b932dd5, 0x71959102, 0x392f35dc, 0xc3e6d3e4, 0xf1e1fbac, 0xe25a55b6, 0x4bbd22e6, 0x2706690e
.word 0x38332f0f, 0xc2379db0, 0xa223a5a6, 0x2252d22c, 0x57b1bce2, 0x4b5ec5ea, 0x020a72bd, 0x682694d8
.word 0x524c4447, 0xd802d53c, 0xb848814e, 0xbb23e431, 0xfdff5b47, 0x8b547cea, 0x969b0959, 0xb224374f
.word 0xfd1f4956, 0xd02261f7, 0xe136098e, 0x0bb08977, 0x86f2145f, 0xcc63448b, 0xaedda026, 0xd7b4b2f2
.word 0x2f01ce16, 0xac17e9ad, 0x1bb00fff, 0xd2274d1f, 0x19cd946d, 0x1fbbddbf, 0x66797bfa, 0x6bbd1c4e
.word 0x60c04590, 0x524e45fc, 0x1af6872b, 0x72502a67, 0x6d232fb9, 0x3a1ba521, 0x889ec702, 0x579e16f9
.word 0x4e8c6318, 0xf7d93b6c, 0x66674cc1, 0xfb743fe5, 0x0dc9a07b, 0x1af28260, 0x2ebcfded, 0x716e84eb
.word 0x66a0b45f, 0xab7b643c, 0xd8d9ba71, 0x8f7d6a49, 0x17b964a6, 0x0a39a0af, 0x7a953b3c, 0xa3606e03
.word 0xd2b211c2, 0xc7b8c356, 0x72c9db10, 0x306d344d, 0x35ea293d, 0xce1d0faa, 0x3d58e71f, 0x8db0d381
.word 0xd20a3038, 0x130bc83e, 0x19348bfe, 0x3933a4e4, 0xe60c8a3e, 0xcc055a7d, 0xd1c0662a, 0x438aa161
.word 0x67855cd3, 0x88fc999c, 0x914e10ba, 0xafa75a95, 0x23e58f8a, 0xed142b4f, 0x0da03e78, 0xade089f8
.word 0xf2a78c03, 0x5cf64b1a, 0xd91cc770, 0x095e5e34, 0x033137f6, 0x435fdb29, 0xd3b0f6b6, 0xa49f3a8d
.word 0xacd5efff, 0x11743318, 0x492cf20c, 0xfc238fb9, 0x40c11e4c, 0xfbc6f326, 0x256513ce, 0x4b8ce414
.word 0xc32ef2a4, 0xfc8ca49d, 0xeb9bde4b, 0xf45fa669, 0x77d7ad49, 0x65b7e891, 0x4b1499b6, 0x06f26172
.word 0x7b3716ed, 0xacce56ad, 0xb32032ff, 0x520816e1, 0x73840d26, 0x96423eb3, 0x5782ad66, 0x0dbd192c
.word 0x1373097b, 0x80d4f795, 0xab1cb9f9, 0xa93cd15b, 0xf7406336, 0xdbf51c04, 0x3b4df1f9, 0xac2ff7a4
.word 0x0cea0bd3, 0xc1876fad, 0xc4b0d2b9, 0xaa85b726, 0x41638d0c, 0x23f6e742, 0x439bca52, 0x51f1dc39
.word 0x20c8444e, 0x3921c610, 0x04d94adf, 0xd99eeffd, 0x6d089f6f, 0x77cbf7e9, 0x926b87a5, 0xad51f0b7
.word 0xef551a30, 0x7028b5f2, 0x354a19bb, 0x0016dd83, 0x246b5f5f, 0x38dee694, 0x1a85b12d, 0x574815af
.word 0x6d932de2, 0xaeb8dbee, 0x1fb22239, 0x4dd0f1ed, 0x42d1024e, 0x89dd6b75, 0x0bc3e06b, 0x4b1ea67a
.word 0x03594725, 0x3f8f3c01, 0x22a8997b, 0xdf2fb49a, 0x06f0e5a9, 0x212e4477, 0x74a051c1, 0x44d02d16
.word 0xa01f4043, 0x39fc5dc7, 0xb34cb4c2, 0x5e528fba, 0x3d4e9dbf, 0x38a076fb, 0x337c1242, 0xcf728046
.word 0xe0f1b37d, 0x89536a6a, 0xc333fbc6, 0xa3ac6c9f, 0x67b086b3, 0xb08ecfa6, 0x06476068, 0x805a6964
.word 0x367d71c6, 0x6c6f1a2f, 0x71baaeca, 0x3247e74f, 0xe6c3c5bb, 0x94486b1c, 0x7e3d511c, 0x6d4c5e30
.word 0x11a9715d, 0xfb7073f3, 0x0ed0f368, 0x66f64fca, 0x4ed6f316, 0x69f860dc, 0xee41b7f7, 0x42c99af2
.word 0x0fdd5fec, 0xc5909b7a, 0x7f949583, 0x64a4e4ac, 0x29615b2d, 0x781e1ea4, 0xa69d376c, 0x33676c61
.word 0xc104ced2, 0x4ca17962, 0x8d92e5c1, 0xbeab01df, 0x3edb0e0a, 0xd9e4a96e, 0xca96c012, 0xf523db5f
.word 0xdaeaec4e, 0xf7c8336b, 0x92b8060e, 0xe19e2506, 0x623f75cf, 0xa633eb99, 0x5ffa4504, 0x0826cb95
.word 0xef739a2f, 0x4b97ef1f, 0x050b32e1, 0x0cf11ae5, 0x55269f05, 0x988a33b3, 0xf5e7e542, 0x10aab04f
.word 0xfaca3fb8, 0x36d5e019, 0x3809102b, 0xfb45f62a, 0x189bf558, 0xa1b44a77, 0xb51eba97, 0xca26b761
.word 0xb2199bdc, 0xaa1cb692, 0xe789b601, 0xff1ae38f, 0xb4218da6, 0x36de2919, 0xee1773a4, 0x97ac93fc
.word 0x941a9e37, 0xf8ca5cf0, 0xcb8489a4, 0x318a4e64, 0x4fa879d2, 0x74585aa8, 0xfba5e5ed, 0xeddcde7e
.word 0x48d39b83, 0x114e19e4, 0xb464eabd, 0x2eac91ae, 0xab8e158c, 0xc31532df, 0x160401f1, 0xf24ed38d
.word 0x511deae4, 0x370b1386, 0x4c9e04f2, 0x0402faa8, 0xceeab717, 0x355325ed, 0x0540b813, 0x526b73a3
.word 0x83f38161, 0xbd6995c1, 0xce2c6267, 0x773cd906, 0xcdb4168e, 0x78c40dd6, 0x835c19de, 0xf4895345
.word 0xf4bc4d9c, 0xe6dbb50d, 0xdfea3c0c, 0x74aa86d1, 0x5832bb16, 0x03867d98, 0xa128a180, 0x3590ed46
.word 0xdb548d26, 0x1f65d31e, 0x657f5cea, 0x3e2fc188, 0x34efe753, 0x9c81093f, 0x6f9c3b92, 0x2fc355ee
.word 0x658c52d5, 0x37468151, 0x9139c1bd, 0x69246bde, 0xc42d7eda, 0x5193d3bf, 0x66b8befd, 0xbd8f9b0c
.word 0x5775f8d9, 0x1deb0ad9, 0x038a9f70, 0xc905c364, 0x9e333c3f, 0x41dc4bb9, 0x38245f6d, 0xc7ce0fe9
.word 0x3422aad4, 0x47c572c1, 0xc4528a38, 0x6150f6ed
.section .region_1,"aw",@progbits;
region_1:
.word 0x23da1617, 0xa7aed2c1, 0x46da29cd, 0x4e35338d, 0x7cc552ac, 0x3937da6a, 0x080e5ba0, 0x54085867
.word 0x536a172e, 0x97c940c6, 0xdcb51e39, 0x89e6027f, 0xa3efd606, 0x785eebda, 0xcf97938d, 0xf7775fd8
.word 0xbc49cc2b, 0x2d0c5827, 0x10fa9b39, 0xc708977d, 0xbb4c9048, 0xd909287f, 0x7815289a, 0xfe65adbc
.word 0x810ef9c2, 0xbaa21db1, 0xa8510868, 0x52b17683, 0xa91fd40e, 0x211ba5b3, 0xc4cce238, 0xd6a98126
.word 0x21ba2597, 0x73bb78e4, 0xac04c845, 0x81bebe66, 0x3fb521e6, 0xc9c9e23f, 0xe09cf71b, 0x8c5ea305
.word 0x1c748323, 0xa7d38f22, 0xe00d75d5, 0xca047a59, 0xb0f30b50, 0x80b747af, 0xb5a19fb8, 0x4a43d2e7
.word 0xf7148203, 0x271bffd3, 0x7cabead3, 0x105103ef, 0xc5c34e8b, 0xc6d54b75, 0x72947d6c, 0xc74061e5
.word 0x8372709f, 0x06c3ce81, 0xe4ecbd6f, 0x950cbcd0, 0xc85d9a63, 0x29207c17, 0x7793d768, 0x66ac5693
.word 0xbe21fff9, 0xb028d765, 0xf5cba29a, 0x5c5bce83, 0x7b9e6145, 0x2de928eb, 0x93e55569, 0x88010af3
.word 0x51086d96, 0xbd0a467f, 0xe94689f1, 0x51e349e7, 0x6ac5f7d3, 0x32887506, 0xbd6bbdf5, 0x466abdfa
.word 0x3ec0b041, 0x2769daa0, 0xfea2ab96, 0x2578260a, 0x96e43ebf, 0xd55324cb, 0x23930e6f, 0xa1a4ede1
.word 0xb7ce5084, 0x5d434631, 0x438fc140, 0x7fb16ce1, 0x0bd4578a, 0xac7e0d35, 0xa761c53b, 0x2be6ae5b
.word 0x3295a892, 0xa4caf4e7, 0x789ab1c4, 0xd78c142e, 0xab11b619, 0x674bfe0b, 0xe7a3c2fa, 0x0c5e001d
.word 0xc34b9322, 0xab781619, 0x242889bb, 0x465db8f3, 0xa9fb9db2, 0x25e35660, 0x9e029f03, 0xd4f7508c
.word 0xc48ca3f9, 0xa63ab4b8, 0x336c7048, 0x0eab966a, 0x4a07039d, 0xd2afca7a, 0x307685f7, 0xbfec61de
.word 0x60220363, 0x603f6881, 0x90f9b376, 0xfc1dfac4, 0x3d2978d0, 0x13868752, 0xdeb7bb14, 0xd424f037
.word 0x0ae40f3b, 0xb1244aaa, 0x8b2cecd9, 0x03c1804f, 0x089dac06, 0x3d52ff85, 0x4307712a, 0x9c55669a
.word 0x03a2e27e, 0xad6cb617, 0xf0871b8d, 0xcfabf523, 0x725b915e, 0x61fb5f56, 0xa0f9de95, 0x309029c0
.word 0xdacf670f, 0xea3d17a4, 0x667293b9, 0xb8258c62, 0xa7ee0db0, 0xdb85c5cf, 0xbeb82977, 0x104a5149
.word 0x6aadb7cd, 0x0276c3f3, 0x17c0967e, 0x07b7de70, 0xe7d53ecd, 0xc07a5246, 0x39d413b0, 0x5ef223d1
.word 0x8a13d0ae, 0xf00efadb, 0x995d179b, 0x3a7574ba, 0xbe625fe8, 0x1ac15cc8, 0xe826329b, 0x0711175c
.word 0x8fd3c9fd, 0x863ced65, 0x089e4385, 0x3366126a, 0x9e6ccebd, 0xcf01a89c, 0x61e04350, 0x33559f9d
.word 0xb5e1e5e2, 0xd538d09d, 0x8c6cda5b, 0x92290a69, 0x11242b9c, 0xa3d7d5dd, 0xcf3e0c48, 0x860ff772
.word 0x41f6b34b, 0xf52b9fdc, 0xd3ea3932, 0x42bbec69, 0x8c3d563b, 0x1975597c, 0x056bc705, 0x3ee5bece
.word 0x36608ec7, 0xfe1ffe2f, 0xd353033b, 0x21b1d4e7, 0xc5922ab0, 0x9c842e00, 0x943fa1c6, 0xd8d7dda5
.word 0xf608b299, 0x64816d86, 0xbe0009ab, 0x3f02b818, 0x3246b21a, 0x299c78db, 0xe42dff7e, 0x218d947f
.word 0x6d825a57, 0x2d9d2f8f, 0x1ce7ad78, 0xf3cf420e, 0x6fe7a445, 0x38b7e723, 0xd6602576, 0x2ccc7705
.word 0xc811c9e1, 0x82a707f6, 0xf60cbe4b, 0xc4903320, 0x6f281623, 0x93785f3d, 0xcb8d48a4, 0xa23c1447
.word 0x80345e39, 0x10bcee4b, 0xbd64a3d7, 0xa704b109, 0xe4d62379, 0xa5a93918, 0x1c3c90c2, 0xd3b13dc1
.word 0x4f27af72, 0x06af7597, 0x69aaa8fb, 0x525a463c, 0x6310a512, 0xb7bb4ac1, 0x5f3986b5, 0xce54ba08
.word 0xcde3775c, 0xc8048d86, 0x4f1bb98e, 0xd3dc3611, 0x0680a8e9, 0x7d924c56, 0xb2571cf9, 0xa30cdaeb
.word 0x56d10ea6, 0xc79b90b3, 0xaace2dfc, 0xadd1b818, 0x467233eb, 0x5654a5af, 0xdf45b54f, 0xdbdf7110
.word 0xd9edcfb9, 0x6566c97e, 0xda1f32ea, 0xc9334d46, 0x997e65e3, 0x18104a9d, 0x400b7716, 0xa7476fa7
.word 0x0b095dbd, 0xe5756f09, 0xeed83a3e, 0xf0dfa644, 0xb13110f2, 0x07dd89de, 0x196e162d, 0x25d2c563
.word 0x86b36688, 0xcf914795, 0x113f2a68, 0xa5ff17e4, 0xed433758, 0x9425020f, 0x3b1451b8, 0x1eedd07f
.word 0xcd2eb400, 0x78fbf441, 0xaed6f3cf, 0x06bcbb1b, 0xf5748938, 0x8b284997, 0x78cd3bb4, 0x8ad6bc4a
.word 0x9cb50afc, 0x0c2d6ee3, 0x01c2e65e, 0x8ad1fafa, 0xa408bcc0, 0xd6b42034, 0x84879d38, 0x3d90cf83
.word 0xfce1f75b, 0x1c8ee636, 0x53c659ae, 0x13a5c199, 0x1a622ab7, 0x551ca88a, 0x425202ec, 0xf2660dcc
.word 0x220b5e3b, 0x82829465, 0x793b817d, 0xf361760c, 0xfe194c1e, 0x0d9fa7c9, 0x25173708, 0x210013de
.word 0x09f10d82, 0x01728eea, 0xf4c3f2ab, 0x29a4a109, 0x0c5a2c3b, 0xe62b40b4, 0x6bbebbe5, 0xc3f62e71
.word 0x6d839011, 0x3a4477fa, 0x1825b54a, 0x47e56a26, 0x9f66c532, 0xd6883fab, 0x8dda807d, 0x3bb7fa25
.word 0x27a704a2, 0x1fa960a0, 0x7c593336, 0xf505cb01, 0xb925be84, 0x94949d7a, 0x24cea2ad, 0x5ba74a8a
.word 0xbf45f082, 0xe52a3a8c, 0xc240caf3, 0x17ba7287, 0xbd4557f7, 0x729a441b, 0x69ca380b, 0xc384d26b
.word 0x58f8c8af, 0x317567d1, 0xec4c292e, 0x1a5ba87d, 0xdb4a3f32, 0x6d428e93, 0xb717f2c1, 0x67bc8b42
.word 0x6b33e0b4, 0xefb1e436, 0x4476040d, 0xf82f4dd4, 0x540dfa5e, 0x45aa429a, 0x9a72401a, 0xf946d6c1
.word 0x3c5d29b5, 0xed94aa13, 0x7c40119a, 0x5f94c81f, 0xee4b06b9, 0x4a81b4ef, 0xbbe145c5, 0x909592f9
.word 0x77f74503, 0x3bf1530e, 0x5a287f19, 0x723b6ca6, 0x5e559acc, 0x3ce4c1f8, 0xaabf6b21, 0x625843b3
.word 0xbf47e6fe, 0x3f31cf87, 0x18e6ef83, 0x27607267, 0xf456a7b4, 0xf7e09d34, 0xbe061a95, 0x17edbbf3
.word 0x15991c8b, 0xe2bf9c58, 0x25cd1048, 0x93499675, 0x110396b8, 0x7ca82928, 0x9debe9dd, 0x7a028a0f
.word 0xa0d2d581, 0x951093d8, 0x2b6acf4f, 0xcedb701e, 0xa6af8143, 0x0cc59277, 0x53e58bb9, 0x93d6d3e4
.word 0x53db41bc, 0xc7557a86, 0xe6921c1e, 0x8453dd94, 0xba6958fc, 0x3b1ccddb, 0xe01488d6, 0x2b6f67d6
.word 0xa4922e11, 0x7275278f, 0xe0752b43, 0xa0d3247f, 0x080fd846, 0xf96aa16e, 0x0cd27d45, 0x7aeb828f
.word 0x281db118, 0xa1953892, 0x280d1742, 0xee16f695, 0x6b4eb499, 0x80a4af21, 0x8ab2e9a2, 0xd5d55455
.word 0xf54093ff, 0x120ef9d1, 0x2d94c943, 0x4fa12ee6, 0x2c49e684, 0x0a7082ea, 0xf506ea71, 0x6eb34020
.word 0x72146c01, 0xcaa3e1af, 0x51a6a3d4, 0xf46512ae, 0xcf55df10, 0x7b3846b9, 0x0e0fe94e, 0x5735fe34
.word 0x1ccd18ff, 0x236c6cfe, 0xff08308c, 0x1d66a12c, 0x44eb879c, 0xaa339864, 0xc1dafb06, 0x86d1a1e6
.word 0xc79eedbc, 0x164e7938, 0xe62fbf04, 0x42ee5b74, 0x1918d094, 0xb75054ec, 0xbc9e9ebb, 0x38018b4b
.word 0x32aa7ca4, 0xb4f6ba89, 0xacf10ab5, 0x1a1d503e, 0xacb05128, 0x719dffb4, 0xa6bb499d, 0x9c8f6c56
.word 0x35dd9f95, 0x4173b1c5, 0xc59375d9, 0x88546192, 0x3672391b, 0x087e0975, 0xf965452e, 0x999c5713
.word 0x79da131a, 0xcf2816e1, 0xa2e0f5d1, 0x71ecdf59, 0xc2df5cae, 0x08c0ff52, 0x3f61a5ae, 0xb45f50de
.word 0x4c3f6e38, 0x054fbb57, 0xe5b91356, 0x5f2eb072, 0x3520d2db, 0x4c5e85d0, 0x93a23dd6, 0x436da58d
.word 0xabd278e7, 0xbdefacfd, 0xbc413fa3, 0xf0529e82, 0x76d268e7, 0x0c551560, 0x1343b536, 0xa61ed081
.word 0xfc171419, 0x66c70103, 0xbf61b7d3, 0xedb0db00
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
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x17, x23, zero
                  csrr x2, 0x300 # MSTATUS
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 31
                  bne x2, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x2, 0x341 # MEPC
                  csrr x2, 0x342 # MCAUSE
                  li x7, 0x3 # BREAKPOINT
                  beq x2, x7, ebreak_handler
                  li x7, 0x8 # ECALL_UMODE
                  beq x2, x7, ecall_handler
                  li x7, 0x9 # ECALL_SMODE
                  beq x2, x7, ecall_handler
                  li x7, 0xb # ECALL_MMODE
                  beq x2, x7, ecall_handler
                  li x7, 0x1
                  beq x2, x7, instr_fault_handler
                  li x7, 0x5
                  beq x2, x7, load_fault_handler
                  li x7, 0x7
                  beq x2, x7, store_fault_handler
                  li x7, 0xc
                  beq x2, x7, pt_fault_handler
                  li x7, 0xd
                  beq x2, x7, pt_fault_handler
                  li x7, 0xf
                  beq x2, x7, pt_fault_handler
                  li x7, 0x2 # ILLEGAL_INSTRUCTION
                  beq x2, x7, illegal_instr_handler
                  csrr x7, 0x343 # MTVAL
                  1: la x14, test_done
                  jalr x1, x14, 0

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
                  la x14, write_tohost
                  jalr x0, x14, 0

instr_fault_handler:
                  add x23, x17, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

load_fault_handler:
                  add x23, x17, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

store_fault_handler:
                  add x23, x17, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

ebreak_handler:   
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x23, x17, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

illegal_instr_handler:
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x23, x17, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x2, 0x300 # MSTATUS;
                  csrr  x2, 0x304 # MIE;
                  csrr  x2, 0x344 # MIP;
                  csrrc x2, 0x344, x2 # MIP;
                  add x23, x17, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
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
