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
                  li x16, 0x40000100
                  csrw 0x301, x16
kernel_sp:        
                  la x23, kernel_stack_end

trap_vec_init:    
                  la x16, mtvec_handler
                  ori x16, x16, 1
                  csrw 0x305, x16 # MTVEC

mepc_setup:       
                  la x16, init
                  csrw 0x341, x16

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x16, 0x1800
                  csrw 0x300, x16 # MSTATUS
                  mret
init:             
                  li x0, 0x1
                  li x1, 0x0
                  li x2, 0xbb73dacf
                  li x3, 0xf7756c04
                  li x4, 0x7
                  li x5, 0x9
                  li x6, 0x80000000
                  li x7, 0x80000000
                  li x8, 0x7aa9cb9f
                  li x9, 0x80000000
                  li x10, 0xb
                  li x11, 0xc7360534
                  li x12, 0xa
                  li x13, 0xdb034994
                  li x14, 0x0
                  li x15, 0x80000000
                  li x16, 0xf115fae0
                  li x17, 0x80000000
                  li x18, 0xc803f8a3
                  li x19, 0x80000000
                  li x20, 0x80000000
                  li x21, 0x0
                  li x22, 0x80000000
                  li x24, 0x8
                  li x25, 0x153a7824
                  li x26, 0xe
                  li x27, 0x59b920b2
                  li x28, 0x80000000
                  li x30, 0xd
                  li x31, 0x0
                  la x29, user_stack_end
main:             sll          a5, t4, s9
                  la           s10, sub_2
                  slt          s8, t4, a4
                  addi         s10, s10, -1019
                  ori          t5, t5, 316
                  sltiu        a3, a0, -1833
                  sltu         tp, a2, s11
                  nop
                  srli         s5, ra, 14
main_j2:          jalr         ra, s10, 1019 #jump main -> sub_2
main_0:           jal          ra, 19f
0:                jal          ra, 13f
1:                jal          t1, 3f
2:                jal          ra, 10f
3:                jal          t0, 20f
4:                jal          ra, 0b
5:                jal          ra, 25f
6:                jal          s8, 27f
7:                jal          s9, 9f
8:                jal          t1, 6b
9:                jal          ra, 26f
10:               jal          ra, 18f
11:               jal          ra, 14f
12:               jal          ra, 15f
13:               jal          a1, 2b
14:               jal          ra, 22f
15:               jal          ra, 1b
16:               jal          tp, 17f
17:               jal          sp, 23f
18:               jal          ra, 7b
19:               jal          ra, 12b
20:               jal          t0, 11b
21:               jal          ra, 16b
22:               jal          ra, 21b
23:               jal          a0, 5b
24:               jal          gp, 8b
25:               jal          s8, 4b
26:               jal          ra, 24b
27:               slli         s5, s7, 8
                  bne          t6, s6, 2f
                  srai         ra, a4, 1
2:                slti         s10, ra, 554
                  blt          s5, tp, 7f
                  beq          s9, t5, 7f
                  sltu         a2, a7, sp
                  srli         a3, t5, 27
7:                sub          s2, sp, a3
                  bgeu         s5, a1, 11f
                  srli         s10, a6, 13
                  slti         t3, a4, -1605
                  nop
                  slt          s4, ra, a5
                  addi         s10, s0, -702
                  la           t5, sub_1
                  or           a5, s10, a3
                  sub          s3, s10, s0
                  addi         t5, t5, 252
                  srli         t0, t4, 23
                  xor          tp, t5, t4
                  srl          a5, zero, s3
                  sub          t6, sp, t6
main_j1:          jalr         ra, t5, -252 #jump main -> sub_1
                  sll          s9, a7, t0
11:               lui          t6, 945800
                  la x14, test_done
                  jalr x0, x14, 0
test_done:        
                  li gp, 1
                  ecall
sub_5:            sra          t6, a3, a0
                  nop
                  beq          a4, t5, sub_5_stack_p
sub_5_stack_p:    addi         t4, t4, -64
                  sw           ra, 4(t4)
                  sra          t2, sp, t6
                  or           t6, a7, tp
                  sltu         t3, a1, s10
sub_5_13:         jal          ra, 15f
0:                jal          ra, 6f
1:                jal          ra, 3f
2:                jal          sp, 9f
3:                jal          t1, 12f
4:                jal          s0, 17f
5:                jal          ra, 7f
6:                jal          t1, 2b
7:                jal          ra, 8f
8:                jal          ra, 18f
9:                jal          ra, 13f
10:               jal          a5, 16f
11:               jal          ra, 14f
12:               jal          ra, 0b
13:               jal          ra, 5b
14:               jal          ra, 4b
15:               jal          ra, 10b
16:               jal          ra, 11b
17:               jal          ra, 1b
18:               addi         s6, a6, -464
sub_5_9:          jal          ra, 25f
0:                jal          t1, 1f
1:                jal          ra, 26f
2:                jal          ra, 22f
3:                jal          gp, 4f
4:                jal          a6, 6f
5:                jal          ra, 2b
6:                jal          ra, 10f
7:                jal          ra, 15f
8:                jal          tp, 0b
9:                jal          ra, 18f
10:               jal          sp, 11f
11:               jal          t1, 13f
12:               jal          s2, 9b
13:               jal          ra, 14f
14:               jal          a7, 5b
15:               jal          gp, 16f
16:               jal          t1, 17f
17:               jal          ra, 20f
18:               jal          ra, 7b
19:               jal          ra, 12b
20:               jal          gp, 21f
21:               jal          ra, 8b
22:               jal          a5, 23f
23:               jal          ra, 24f
24:               jal          ra, 19b
25:               jal          tp, 3b
26:               slli         a6, t2, 1
sub_5_6:          jal          ra, 9f
0:                jal          ra, 20f
1:                jal          t1, 5f
2:                jal          ra, 3f
3:                jal          ra, 12f
4:                jal          ra, 15f
5:                jal          t1, 4b
6:                jal          s5, 18f
7:                jal          ra, 14f
8:                jal          t1, 26f
9:                jal          ra, 19f
10:               jal          t1, 23f
11:               jal          ra, 1b
12:               jal          ra, 27f
13:               jal          s9, 8b
14:               jal          ra, 6b
15:               jal          t1, 22f
16:               jal          gp, 7b
17:               jal          a6, 25f
18:               jal          ra, 13b
19:               jal          ra, 16b
20:               jal          t1, 24f
21:               jal          t1, 10b
22:               jal          tp, 17b
23:               jal          ra, 2b
24:               jal          gp, 11b
25:               jal          s8, 28f
26:               jal          s1, 0b
27:               jal          ra, 29f
28:               jal          ra, 21b
29:               sltiu        t1, s9, -430
sub_5_4:          jal          ra, 6f
0:                jal          ra, 5f
1:                jal          a0, 7f
2:                jal          ra, 10f
3:                jal          a0, 0b
4:                jal          s8, 12f
5:                jal          ra, 4b
6:                jal          ra, 8f
7:                jal          t1, 11f
8:                jal          ra, 2b
9:                jal          ra, 3b
10:               jal          t1, 1b
11:               jal          gp, 9b
12:               auipc        a1, 245824
sub_5_0:          jal          ra, 3f
0:                jal          t1, 9f
1:                jal          t1, 14f
2:                jal          sp, 5f
3:                jal          ra, 2b
4:                jal          t1, 11f
5:                jal          t1, 10f
6:                jal          sp, 7f
7:                jal          ra, 1b
8:                jal          ra, 4b
9:                jal          tp, 13f
10:               jal          s0, 0b
11:               jal          t6, 15f
12:               jal          ra, 6b
13:               jal          t1, 12b
14:               jal          ra, 8b
15:               jal          a7, 16f
16:               sltiu        t3, a1, 1589
sub_5_3:          jal          ra, 9f
0:                jal          t0, 16f
1:                jal          ra, 17f
2:                jal          s0, 18f
3:                jal          ra, 11f
4:                jal          t6, 8f
5:                jal          s10, 6f
6:                jal          ra, 4b
7:                jal          ra, 1b
8:                jal          tp, 12f
9:                jal          t1, 14f
10:               jal          t0, 15f
11:               jal          t1, 0b
12:               jal          ra, 2b
13:               jal          ra, 10b
14:               jal          ra, 7b
15:               jal          ra, 5b
16:               jal          ra, 13b
17:               jal          ra, 3b
18:               sltu         tp, t3, s3
sub_5_1:          jal          ra, 12f
0:                jal          t3, 7f
1:                jal          s9, 13f
2:                jal          t1, 14f
3:                jal          ra, 5f
4:                jal          a1, 9f
5:                jal          ra, 11f
6:                jal          ra, 3b
7:                jal          ra, 2b
8:                jal          s6, 0b
9:                jal          ra, 6b
10:               jal          ra, 1b
11:               jal          s4, 16f
12:               jal          s6, 10b
13:               jal          ra, 8b
14:               jal          t1, 15f
15:               jal          s2, 4b
16:               sltu         s9, s7, a4
sub_5_10:         jal          ra, 13f
0:                jal          ra, 3f
1:                jal          ra, 19f
2:                jal          t1, 0b
3:                jal          a7, 23f
4:                jal          ra, 2b
5:                jal          ra, 4b
6:                jal          s5, 11f
7:                jal          ra, 9f
8:                jal          s2, 6b
9:                jal          t1, 1b
10:               jal          ra, 8b
11:               jal          gp, 17f
12:               jal          ra, 18f
13:               jal          t1, 21f
14:               jal          ra, 10b
15:               jal          ra, 12b
16:               jal          ra, 15b
17:               jal          t5, 5b
18:               jal          sp, 7b
19:               jal          t1, 14b
20:               jal          ra, 22f
21:               jal          t1, 20b
22:               jal          t1, 16b
23:               nop
sub_5_2:          jal          ra, 6f
0:                jal          ra, 1f
1:                jal          ra, 4f
2:                jal          ra, 5f
3:                jal          t1, 0b
4:                jal          ra, 7f
5:                jal          t5, 3b
6:                jal          ra, 2b
7:                jal          ra, 9f
8:                jal          ra, 10f
9:                jal          ra, 8b
10:               jal          s3, 11f
11:               slli         a7, t5, 23
sub_5_11:         jal          ra, 8f
0:                jal          t0, 10f
1:                jal          tp, 5f
2:                jal          t1, 6f
3:                jal          s10, 2b
4:                jal          t3, 3b
5:                jal          t1, 17f
6:                jal          ra, 15f
7:                jal          ra, 12f
8:                jal          a0, 0b
9:                jal          a0, 11f
10:               jal          ra, 13f
11:               jal          ra, 7b
12:               jal          t1, 1b
13:               jal          a7, 4b
14:               jal          ra, 16f
15:               jal          t1, 14b
16:               jal          t1, 9b
17:               andi         s8, a3, -92
                  slti         a0, a7, -1430
                  srli         s9, a6, 13
                  or           s11, s5, s3
                  sra          s5, s9, ra
                  nop
                  andi         t1, t0, 866
                  srai         s0, a6, 25
                  andi         s0, s8, -78
                  sub          a1, a3, s1
                  sub          s10, a3, a1
                  slt          a5, t1, s10
                  srai         s1, a0, 11
                  sub          sp, t4, t2
                  add          t1, t2, a5
                  slti         s5, s5, -677
                  sub          s4, s9, a1
                  add          a0, a7, t5
                  ori          t2, s6, -445
                  sltiu        a3, ra, 1704
                  sub          a2, s10, a6
                  sra          gp, t1, s10
                  sltu         a0, s2, ra
                  lui          s1, 423840
                  nop
                  blt          s1, a5, 25f
25:               add          t1, s4, zero
                  addi         s2, t2, 628
                  lui          t0, 986479
                  ori          ra, t6, -1947
                  srai         tp, a6, 3
                  ori          s2, s9, -425
                  sub          s2, s11, s11
                  auipc        t1, 795846
                  srli         s9, ra, 14
                  bltu         a4, a1, 54f
                  srli         ra, t5, 29
                  srli         tp, s1, 9
                  sll          s4, sp, a6
                  beq          t5, s7, 51f
                  ori          s4, s1, 873
                  srl          a2, a4, zero
                  bge          a7, a2, 53f
                  slli         s6, s1, 29
                  nop
                  bgeu         a1, a2, 50f
                  andi         a7, sp, 578
                  slti         a2, t5, -627
                  srl          a5, tp, t6
                  slti         a2, s11, 900
                  beq          s7, s1, 58f
50:               srai         t0, s5, 6
51:               lui          s2, 344714
                  andi         s11, s9, -531
53:               and          s8, s5, a7
54:               slli         s0, t4, 29
                  add          zero, s10, s7
                  addi         gp, tp, 1753
                  slt          gp, a2, a0
58:               beq          s2, s11, 59f
59:               addi         a7, t4, 454
                  slti         a2, s5, 612
                  auipc        s0, 648064
                  sltiu        sp, a2, 950
                  blt          s5, s5, 69f
                  and          s1, t2, s5
                  slti         a2, s2, 1455
                  xori         a1, a5, -1536
                  slti         a7, t6, 1192
                  nop
69:               add          sp, a4, t1
                  sra          ra, a6, s9
                  add          s0, zero, s2
                  xor          a3, a5, a3
                  nop
                  lui          t1, 100832
                  slti         s6, t6, -818
                  slli         s0, s11, 3
                  bltu         tp, sp, 78f
78:               sltu         a2, s0, s4
                  sltu         s4, t2, s3
                  lui          s4, 1039144
                  slt          zero, a2, t6
                  srai         s2, t1, 26
                  sub          a2, sp, a1
                  srai         a7, a0, 0
                  sltiu        t5, a5, -1641
                  add          t3, s9, s10
                  sub          a3, sp, tp
                  andi         zero, s10, 249
                  bne          sp, t0, 106f
                  sltiu        t2, s11, -260
                  sltu         a1, t4, gp
                  beq          t3, zero, 108f
                  sltu         t0, a4, s2
                  slli         a6, s8, 1
                  slli         s10, a4, 0
                  slt          s2, ra, t5
                  and          s8, t6, s8
                  bge          s10, t5, 117f
                  srai         a1, t1, 19
                  slli         s1, t0, 3
                  sll          sp, s6, t4
                  bge          s7, s11, 104f
                  xori         t0, a2, -1987
104:              slt          s10, ra, a0
                  srli         t0, s0, 18
106:              srai         s8, s0, 16
                  or           s5, zero, t0
108:              and          t1, t0, t1
                  sll          s9, t3, a2
                  sltiu        s8, tp, -1946
                  slli         t5, a6, 24
                  bne          s1, s5, 117f
                  sra          a0, tp, tp
                  srl          t6, s8, s3
                  sub          s6, zero, a3
                  sub          s0, s6, zero
117:              slti         s3, a3, 764
                  addi         s10, tp, 697
                  srl          s3, a3, s0
                  sra          s3, s9, a7
                  or           t1, a4, t5
                  ori          s9, zero, 745
                  blt          tp, s7, 139f
                  auipc        s10, 12106
                  andi         zero, a3, 745
                  slli         s0, s3, 27
                  blt          a4, s6, 137f
                  bgeu         t1, s4, 131f
                  addi         s9, a1, -800
                  slti         s10, a2, -1429
131:              xori         zero, s1, -724
                  bgeu         s5, a0, 141f
                  or           sp, tp, zero
                  slt          s4, t6, s11
                  blt          s0, zero, 148f
                  blt          s9, ra, 152f
137:              ori          t6, tp, -1391
                  slti         ra, s4, -895
139:              slti         s2, ra, -259
                  addi         tp, zero, -1514
141:              xor          t6, a5, s11
                  sub          t0, a4, s8
                  sltu         s6, a4, s10
                  ori          t0, a5, 616
                  nop
                  xori         s11, gp, 1753
                  lui          t6, 650662
148:              xori         ra, t2, 1368
                  sltu         s10, s10, s7
                  nop
                  xor          s0, gp, sp
152:              lui          s2, 406912
                  blt          s7, s6, 157f
                  auipc        a6, 496801
                  blt          a2, t4, 156f
156:              slli         t3, t3, 6
157:              bne          s11, t6, 170f
                  srl          t6, tp, a1
                  ori          s4, a0, -868
                  xor          s2, a5, a4
                  bne          zero, a2, 162f
162:              or           s5, ra, a7
                  bgeu         gp, s7, 177f
                  slli         a6, gp, 14
                  add          a2, tp, a0
                  srli         a5, s5, 27
                  or           a5, s10, sp
sub_5_5:          jal          ra, 6f
0:                jal          sp, 18f
1:                jal          ra, 5f
2:                jal          t1, 7f
3:                jal          s11, 9f
4:                jal          t1, 20f
5:                jal          ra, 13f
6:                jal          ra, 3b
7:                jal          ra, 1b
8:                jal          s4, 10f
9:                jal          s8, 11f
10:               jal          ra, 21f
11:               jal          ra, 19f
12:               jal          ra, 17f
13:               jal          ra, 4b
14:               jal          ra, 22f
15:               jal          ra, 2b
16:               jal          t1, 14b
17:               jal          ra, 15b
18:               jal          ra, 12b
19:               jal          ra, 0b
20:               jal          ra, 8b
21:               jal          t1, 16b
22:               slli         a0, s9, 12
                  ori          s6, a5, 1611
                  blt          s1, s0, 171f
170:              sll          s1, a1, zero
171:              slli         s3, a3, 2
                  or           s9, a7, a7
                  auipc        s1, 892250
                  slli         sp, a7, 13
                  sltiu        a5, t1, -759
                  srl          t5, s6, s2
177:              sub          a0, s0, t4
                  add          t0, a5, a1
                  andi         s11, t4, -1711
                  auipc        a1, 693376
                  beq          t2, a4, 192f
                  bltu         a1, s11, 184f
                  bgeu         s4, t3, 199f
184:              andi         s4, gp, 1135
                  auipc        s4, 155168
                  add          s10, s8, t1
                  srai         ra, t2, 22
                  beq          s2, s11, 207f
                  auipc        t6, 915929
                  slli         t3, s7, 15
                  ori          sp, tp, 1409
192:              sra          s0, s1, s8
                  sltiu        a7, s7, -589
                  srli         a2, s8, 8
                  sltiu        s11, s2, -1119
                  auipc        zero, 30767
                  srai         a5, a2, 2
                  srai         s5, s0, 21
199:              bgeu         t2, t0, 212f
                  or           t5, ra, s8
                  bltu         t1, t6, 221f
                  bltu         t6, s6, 208f
                  srli         a2, a0, 11
                  beq          tp, a7, 213f
                  blt          a2, t2, 219f
                  sltu         s3, t4, tp
207:              beq          a2, t2, 209f
208:              xori         t5, a2, 893
209:              beq          t4, a1, 228f
                  blt          a6, t0, 216f
                  auipc        a0, 719587
212:              sra          tp, tp, sp
213:              or           ra, t0, sp
                  or           t3, s2, s10
                  addi         sp, a3, -202
216:              slti         a5, t5, 668
                  sltu         a3, s9, a5
                  sub          s10, a7, t6
219:              sll          t6, a7, t3
                  xori         a7, s5, 1141
221:              sub          gp, zero, s10
                  bgeu         t2, ra, 224f
                  bgeu         s7, s7, 235f
224:              bne          a4, a3, 234f
                  xor          a6, s9, zero
                  xor          sp, a1, zero
                  sltu         t0, s8, s5
228:              srli         s0, a4, 27
                  andi         a0, a6, 1420
                  ori          gp, s0, 120
                  nop
                  bge          s11, t5, 233f
233:              slt          sp, s1, s1
234:              sra          t1, a5, a2
235:              sra          t0, s0, t3
                  sltu         s10, s7, s0
                  sub          s0, s11, gp
                  srai         t1, gp, 30
                  addi         a1, s4, 1721
                  bne          s8, s10, 249f
                  sub          zero, s9, t2
                  beq          a7, t2, 243f
243:              xori         t2, a1, -446
                  bltu         gp, a4, 246f
                  srl          s3, t0, sp
246:              sltu         s10, a3, s8
                  blt          a7, s0, 264f
                  sll          t2, ra, t0
249:              sltu         t2, t5, a7
                  srli         t2, s1, 0
                  srai         s0, t3, 24
                  bge          t2, tp, 268f
                  lui          a3, 59301
                  andi         t3, t0, -133
                  sll          ra, a6, s4
                  add          t5, sp, t3
                  slti         gp, s3, 1062
                  bge          a4, t0, 259f
259:              auipc        s11, 799658
                  and          s8, a5, t1
                  sltiu        s3, s7, 788
                  blt          t6, a1, 267f
                  slt          a1, a5, a0
264:              sub          ra, s6, gp
                  beq          a5, t4, 266f
266:              srai         a6, s8, 6
267:              xori         a5, gp, 217
268:              bne          t6, tp, 284f
                  sltiu        a3, t3, -218
                  bltu         s11, a4, 286f
                  andi         a5, ra, -185
                  sltiu        t6, t2, -877
                  andi         a5, s5, -942
                  xori         s9, s9, 700
                  blt          t6, sp, 278f
                  slt          s1, a7, a1
                  srl          a7, s7, t5
278:              bgeu         zero, s5, 291f
                  srli         s9, a2, 11
                  add          a7, s2, t1
                  add          s9, s1, gp
                  sra          gp, s2, zero
                  beq          s2, s11, 299f
284:              and          gp, sp, a3
                  beq          tp, a4, 286f
286:              nop
                  slt          t2, s7, a7
                  sltiu        sp, tp, 1650
                  bltu         a5, s9, 300f
                  slt          s4, t3, zero
291:              xori         s4, gp, -583
                  blt          s0, s1, 311f
                  auipc        t0, 58596
                  xor          a5, s6, s7
                  srli         a5, a7, 29
                  auipc        tp, 670835
                  lui          s4, 65293
                  addi         s8, s8, -1798
299:              slli         a3, a1, 31
300:              beq          zero, t1, 313f
                  blt          a3, t6, 305f
                  lui          s2, 588041
                  slt          a0, a2, s11
                  bne          t6, t3, 305f
305:              ori          s10, s0, -1853
                  sra          s9, s5, s10
                  slti         s1, s3, -184
                  sltiu        a7, t6, -1600
                  slli         s11, s7, 26
                  andi         zero, a2, -1574
311:              slti         t5, gp, 753
                  bne          a6, s2, 325f
313:              add          a5, s0, s9
                  or           gp, t6, s10
                  slti         s10, s1, 1959
                  srli         s0, s1, 8
                  sra          t6, t3, s5
                  addi         sp, a6, -334
                  bgeu         a4, gp, 332f
                  lui          ra, 555092
                  beq          ra, s3, 322f
322:              ori          a0, a3, -1281
                  sra          s6, gp, zero
                  srai         s11, s0, 7
325:              slti         a1, t0, 453
                  srli         a2, t1, 14
                  slli         s8, s8, 15
                  sll          a5, s2, a2
                  beq          a5, tp, 345f
                  bltu         a6, t1, 331f
331:              and          t2, zero, s7
332:              bne          s11, s10, 341f
                  andi         a7, s6, -1354
                  srl          t3, a3, t3
                  srli         gp, a1, 27
                  auipc        s5, 320375
                  bne          tp, s3, 342f
                  srai         a6, s1, 14
                  andi         s11, gp, 997
                  blt          t6, s6, 341f
341:              bne          t3, s6, 358f
342:              slt          s1, a5, a1
                  or           t2, a1, s5
                  addi         s10, a1, 1226
345:              sltiu        gp, s8, -1916
                  sra          a5, gp, a1
                  slt          ra, t6, a7
                  auipc        s11, 485770
                  blt          a4, a4, 365f
                  slli         t6, zero, 2
                  srli         a3, s9, 1
                  slli         s0, a5, 2
                  bge          t5, s1, 366f
                  bge          t5, a4, 374f
                  andi         t6, s10, 1558
                  beq          t6, a2, 357f
357:              srl          s3, s9, gp
358:              blt          t2, a3, 360f
                  srai         a2, a2, 29
360:              or           ra, a0, zero
                  xor          a6, a2, sp
                  blt          s11, t6, 381f
                  nop
                  slti         s1, ra, -1710
365:              and          a1, s11, t5
366:              srl          s8, s9, t0
                  nop
                  sub          gp, tp, tp
                  blt          tp, a5, 372f
                  bne          a2, ra, 384f
                  blt          t6, s5, 387f
372:              sltu         t1, s10, t2
                  sub          t3, t6, s9
374:              ori          s11, sp, -484
                  andi         s9, s1, -1401
                  beq          a0, s5, 378f
                  add          a3, s5, t0
378:              sltu         s0, s11, t2
                  sll          s2, a5, a5
                  or           tp, a3, s4
381:              xori         a3, a6, 708
                  bge          s1, a0, 391f
                  xor          s5, t4, t1
384:              sub          sp, s9, a7
                  ori          gp, a5, -1344
                  and          a1, s10, a3
387:              bgeu         a7, s10, 398f
                  sltiu        a3, t4, -1031
                  blt          s4, a2, 395f
                  srl          s9, sp, s6
391:              slti         s4, a3, 1990
                  auipc        s11, 550778
                  xor          a2, a7, a1
                  srl          a7, s5, a5
395:              srli         s2, s1, 23
                  xori         s11, a1, 897
                  sltiu        a1, t2, 486
398:              andi         s11, t4, -245
                  beq          t0, a1, 403f
                  add          a3, s2, t1
                  sltiu        s5, zero, -688
                  xori         a6, s10, -1546
403:              slli         gp, a6, 16
                  sll          a3, t1, a6
                  sltiu        s5, ra, 582
                  or           t0, sp, t2
                  lui          s9, 970166
                  bge          t5, s9, 410f
                  bgeu         a2, s3, 419f
410:              srli         t3, t6, 23
                  sub          t6, s2, t4
                  slt          t6, t2, sp
                  bltu         t0, a0, 419f
                  addi         t5, s0, -1583
                  ori          s10, s9, -1351
                  beq          s2, s9, 428f
                  blt          sp, t4, 436f
                  bne          a6, s5, 434f
419:              bgeu         t6, s9, 421f
                  xori         s4, s7, -329
421:              bltu         t0, a5, 434f
                  slt          sp, s7, s8
                  add          t6, s2, sp
                  bltu         t1, t0, 433f
                  srl          t1, t2, t3
                  beq          a5, t5, 440f
                  slli         a6, sp, 30
428:              bge          s3, a6, 433f
                  addi         a6, t1, -1403
                  sub          t1, s10, t2
                  srl          ra, a2, t1
                  or           t2, s7, s7
433:              slt          t5, a6, a3
434:              srli         a6, s0, 29
                  bgeu         s3, a3, 437f
436:              sub          s6, s0, t1
437:              bge          t3, s4, 453f
                  slt          t6, s0, s6
                  auipc        a7, 600773
440:              blt          t2, s5, 441f
441:              beq          s7, t6, 443f
                  addi         t1, s10, -868
443:              sltiu        a7, t3, 1365
                  and          s2, gp, a0
                  nop
                  bge          t5, tp, 447f
447:              blt          gp, t2, 453f
                  slt          a5, zero, gp
                  addi         a0, s3, -442
                  addi         s0, a2, 1400
                  or           t5, tp, t6
                  bge          ra, s0, 455f
453:              andi         t3, a3, 1762
                  andi         t6, s3, -107
455:              addi         s8, s1, -1381
                  nop
                  sltiu        t0, a5, 1150
                  ori          s2, s2, 685
                  sll          s3, a1, t2
                  lui          t2, 527548
                  srli         tp, s11, 9
                  slli         t6, s2, 21
                  or           s2, sp, s10
                  andi         s5, s4, -1790
                  bgeu         s1, tp, 475f
                  slti         s4, s8, 367
                  sub          s5, t0, t2
                  slli         t6, t0, 2
                  lui          s3, 834400
                  blt          a6, a0, 471f
471:              and          s11, a0, t4
                  sub          a6, s7, t4
                  or           a3, t1, a7
                  ori          t3, t3, -1822
475:              bge          s3, zero, 495f
                  bge          t6, t0, 477f
477:              sub          a5, sp, s0
                  bne          t2, s5, 497f
                  bne          a4, t1, 498f
                  bltu         s9, t4, 496f
                  srli         a6, t5, 2
                  sltu         t2, gp, s10
                  lui          s6, 308178
                  sltiu        s8, t6, 778
                  sll          gp, a7, t2
                  slli         t3, t3, 29
                  bne          s5, a1, 500f
                  sll          zero, a2, a3
                  sub          a3, t5, s6
                  sub          t6, a5, tp
                  addi         zero, s3, 1353
                  ori          t3, s2, -1806
                  blt          s10, tp, 509f
                  bgeu         s8, s4, 506f
495:              sltu         s3, t4, s4
496:              srl          t5, gp, tp
497:              addi         s11, s5, 1218
498:              slt          a1, a2, a3
                  sub          s2, s1, sp
500:              sltu         a1, s11, s6
                  beq          a4, s11, 502f
502:              slti         a7, t2, 1017
                  sub          s5, a0, s9
                  bge          s8, s10, 513f
                  ori          t6, s9, 1315
506:              and          t1, ra, sp
                  sltu         a5, t1, s10
                  slti         tp, t3, -167
509:              sll          s0, sp, a0
                  nop
                  beq          s9, a0, 517f
                  srl          a7, t1, s3
513:              or           s0, s0, gp
                  bge          ra, a3, 530f
                  sltu         zero, zero, s8
                  bgeu         zero, tp, 527f
517:              srai         a1, t5, 2
                  sltiu        s2, a4, 152
                  and          a1, ra, s6
                  bltu         a0, s2, 533f
                  bge          tp, a5, 538f
                  srai         a2, s9, 13
                  add          a1, t0, s8
sub_5_8:          jal          ra, 12f
0:                jal          t1, 4f
1:                jal          t1, 9f
2:                jal          ra, 10f
3:                jal          ra, 6f
4:                jal          ra, 8f
5:                jal          ra, 7f
6:                jal          t1, 1b
7:                jal          ra, 2b
8:                jal          tp, 3b
9:                jal          ra, 13f
10:               jal          t0, 11f
11:               jal          ra, 0b
12:               jal          t1, 5b
13:               slt          s5, ra, t2
                  srai         s10, s1, 29
                  and          t0, t1, gp
                  slli         ra, sp, 29
527:              slti         ra, s1, 1013
                  bne          sp, s3, 532f
                  xor          zero, a5, s11
530:              nop
                  bltu         s2, s8, 550f
532:              sltu         s9, a7, a0
533:              xori         a0, s5, 477
                  sll          t6, a3, s3
                  bgeu         s9, a3, 536f
536:              bge          t0, a5, 540f
                  slli         sp, a3, 6
538:              srli         a1, s8, 16
                  bgeu         s10, s9, 540f
540:              ori          t3, t4, -1395
                  sub          t3, s7, s2
                  slli         ra, t3, 12
                  sltu         s11, t5, s8
                  sll          s11, t5, t3
                  bge          t4, s6, 547f
                  lui          a5, 118162
547:              slt          t5, t0, s10
                  ori          gp, s1, -1691
                  add          s11, tp, a4
550:              andi         s3, s3, -1003
                  srl          tp, t4, t0
                  xori         t3, sp, -713
sub_5_12:         jal          ra, 1f
0:                jal          ra, 6f
1:                jal          ra, 5f
2:                jal          sp, 4f
3:                jal          s8, 11f
4:                jal          ra, 10f
5:                jal          s11, 9f
6:                jal          ra, 7f
7:                jal          ra, 2b
8:                jal          ra, 3b
9:                jal          t1, 0b
10:               jal          t1, 8b
11:               sltiu        s1, s9, -1889
                  lui          s9, 112381
                  bltu         s0, s10, 567f
                  slli         a1, t3, 5
                  slli         a7, s3, 18
                  sltu         t5, t0, s0
                  slti         a3, a0, 664
                  auipc        t5, 796485
                  and          t5, s7, t6
                  xor          a7, gp, t0
                  lui          t5, 480824
                  srl          a7, s0, s7
                  sltu         a5, a0, a7
                  auipc        s5, 494631
                  sll          a1, a2, a2
567:              sll          t5, gp, a2
                  addi         s8, a5, 1057
                  slti         a7, s7, 1020
                  srl          a7, s4, a7
                  xor          t3, t2, t3
                  sltiu        s10, t3, 505
                  xori         t2, s1, 1199
                  slli         s2, t6, 30
                  and          a1, a6, a0
                  sra          a3, ra, a5
                  blt          ra, t4, 597f
                  andi         a5, a0, -221
                  slt          s10, s9, a5
                  xori         s5, ra, 1450
                  and          s9, a0, s4
                  srli         a0, a0, 6
                  and          t0, a7, t3
                  bne          a7, s5, 600f
                  andi         zero, a2, 1304
                  and          sp, s2, zero
                  slti         tp, s5, -1254
                  nop
                  slti         s9, a5, -1210
                  sltu         s11, a4, a0
                  bne          s2, gp, 597f
                  andi         a7, t0, -2009
                  sltiu        s9, t6, -1008
                  andi         a6, a2, 200
                  beq          s5, a4, 601f
                  add          a2, s5, t5
597:              and          t6, s6, a2
                  sll          s2, t2, t4
                  add          a5, a5, gp
600:              add          a3, s1, gp
601:              auipc        a1, 149644
                  xor          a5, t6, a7
                  and          s8, t2, s10
                  sltiu        t1, t0, -1894
                  xor          s4, t4, a2
                  srai         s11, a3, 12
                  srl          a3, t3, s5
                  bne          s6, s0, 609f
609:              slt          s6, s7, gp
                  auipc        a2, 352554
                  srli         zero, s0, 14
                  sll          a7, gp, t2
                  xor          t0, t6, s9
                  xori         a5, tp, 1436
                  slli         a3, t6, 14
                  sub          s4, gp, sp
                  ori          s10, t0, 573
                  blt          s11, s11, 632f
                  bltu         ra, s5, 631f
                  sll          a6, ra, a0
                  bge          t1, t4, 634f
                  and          t5, s7, ra
                  nop
                  andi         t2, s8, 1832
                  bge          s5, t3, 628f
                  xori         tp, t2, 615
                  slli         s11, s4, 16
sub_5_7:          jal          ra, 1f
0:                jal          ra, 23f
1:                jal          t1, 21f
2:                jal          ra, 3f
3:                jal          ra, 16f
4:                jal          gp, 17f
5:                jal          ra, 9f
6:                jal          t0, 0b
7:                jal          t0, 15f
8:                jal          ra, 22f
9:                jal          ra, 19f
10:               jal          s4, 13f
11:               jal          t1, 24f
12:               jal          ra, 10b
13:               jal          ra, 14f
14:               jal          ra, 11b
15:               jal          tp, 18f
16:               jal          ra, 28f
17:               jal          t5, 20f
18:               jal          t0, 8b
19:               jal          t1, 26f
20:               jal          t1, 27f
21:               jal          ra, 7b
22:               jal          a7, 6b
23:               jal          t0, 4b
24:               jal          ra, 2b
25:               jal          ra, 12b
26:               jal          ra, 25b
27:               jal          t0, 5b
28:               sltiu        a3, s5, -1767
628:              lui          a6, 465197
                  slti         s10, a0, -184
                  slti         ra, a7, -154
631:              srl          a6, a1, t3
632:              blt          s11, t2, 645f
                  beq          zero, a5, 642f
634:              andi         t0, a2, 1675
                  srli         t0, t6, 17
                  andi         a7, zero, -1374
                  lui          s2, 728900
                  blt          t5, a0, 654f
                  sltu         s3, s6, t0
                  srl          a2, zero, ra
                  auipc        t2, 860499
642:              bltu         s10, s2, 653f
                  sra          zero, a5, sp
                  addi         s9, s8, -396
645:              ori          zero, s5, -1321
                  slt          s3, t3, s1
                  ori          s2, t3, 1797
                  srli         t2, t4, 29
                  bgeu         a0, a2, 665f
                  bge          ra, t0, 667f
                  addi         t1, t4, 841
                  xor          t1, s8, a0
653:              bgeu         s10, a3, 663f
654:              nop
                  sltu         s6, tp, t0
                  bge          a5, s1, 657f
657:              lui          s11, 181942
                  bge          s6, t6, 674f
                  andi         a1, s0, 8
                  sltiu        a0, s10, -1653
                  sltiu        s1, a7, -1612
                  sll          t3, t6, s8
663:              sub          sp, a3, a7
                  add          t3, sp, s11
665:              sra          a6, s4, tp
                  srai         tp, a4, 24
667:              bne          t4, t6, 669f
                  add          tp, a5, tp
669:              sltu         s4, gp, a7
                  blt          s8, s5, 675f
                  sll          t6, s5, s1
                  sra          gp, tp, s8
                  bne          a0, a5, 692f
674:              srai         a0, t6, 21
675:              sll          t3, ra, t5
                  andi         zero, a3, -928
                  bge          s10, t0, 686f
                  slti         sp, s9, 1433
                  ori          s9, a1, 1831
                  addi         a7, a2, -1539
                  sub          s3, s2, ra
                  srli         gp, gp, 18
                  slt          s8, t3, tp
                  bge          a0, t1, 685f
685:              sll          s11, sp, t1
686:              slti         s9, a1, -567
                  bgeu         a6, s0, 689f
                  srai         a3, tp, 30
689:              sra          s9, s5, a0
                  auipc        s0, 434133
                  or           a3, a3, ra
692:              xor          s3, gp, a0
                  slli         t0, a0, 11
                  nop
                  add          a7, s6, a0
                  sll          t1, t1, tp
                  srl          gp, t3, a6
                  xor          t3, t1, sp
                  addi         a5, t0, -1569
                  sll          s3, ra, tp
                  sra          sp, s6, zero
                  sub          t1, s3, a3
                  srai         a7, gp, 9
                  sltiu        s0, s6, -1915
                  add          s8, s11, tp
                  slt          t1, s4, s9
                  srl          t3, gp, tp
                  and          a6, s6, s9
                  add          s1, a1, a0
                  sub          gp, s10, t1
                  nop
                  srl          s8, sp, a2
                  srli         s2, s1, 23
                  xor          ra, a2, sp
                  blt          t4, a1, 720f
                  ori          gp, s8, 1525
                  sub          t6, tp, a7
                  sltu         s5, tp, a6
                  sra          s8, a5, a2
720:              srl          s0, a0, a6
                  lui          s6, 396439
                  or           tp, ra, zero
                  lw           ra, 4(t4)
                  and          t1, a3, t4
                  addi         t4, t4, 64
                  sub          t0, s1, s0
1023:             addi x22, x1, 1
1023:             jalr x22, x22, 0
sub_1:            srai         s5, s10, 2
                  auipc        s6, 89117
                  sub          s9, a0, a1
                  slti         s9, s1, 506
                  sltu         s10, s2, t6
                  addi         t4, t4, -64
                  slt          t3, a2, s3
                  sltu         s2, zero, s3
                  sw           ra, 4(t4)
                  add          s6, t2, t2
                  auipc        s4, 154064
                  sll          zero, s2, a4
                  la           a7, sub_3
                  srli         s4, a4, 22
                  srai         a0, a0, 25
                  sub          s4, gp, a3
                  slli         s5, ra, 17
                  addi         a7, a7, -417
                  blt          s0, s8, sub_1_j3 #branch to jump instr
                  xor          zero, a4, s2
                  slli         ra, ra, 23
                  auipc        t0, 604690
sub_1_j3:         jalr         ra, a7, 417 #jump sub_1 -> sub_3
                  xori         s8, zero, -2013
                  sub          s5, s9, gp
                  slti         t0, tp, 1018
                  slti         a6, s6, 1119
                  xor          t6, tp, a5
                  nop
                  slti         zero, a4, -1938
                  or           s10, a4, ra
sub_1_j4:         jal          ra, sub_4 #jump sub_1 -> sub_4
sub_1_0:          jal          ra, 13f
0:                jal          ra, 2f
1:                jal          t6, 15f
2:                jal          gp, 4f
3:                jal          ra, 12f
4:                jal          ra, 5f
5:                jal          ra, 6f
6:                jal          ra, 16f
7:                jal          t1, 0b
8:                jal          ra, 14f
9:                jal          tp, 17f
10:               jal          s8, 9b
11:               jal          ra, 3b
12:               jal          t1, 8b
13:               jal          ra, 1b
14:               jal          ra, 7b
15:               jal          a6, 11b
16:               jal          ra, 10b
17:               ori          s9, s7, -1850
sub_1_1:          jal          ra, 8f
0:                jal          s10, 1f
1:                jal          a6, 14f
2:                jal          t1, 0b
3:                jal          s5, 6f
4:                jal          ra, 12f
5:                jal          ra, 17f
6:                jal          ra, 5b
7:                jal          ra, 11f
8:                jal          ra, 2b
9:                jal          ra, 7b
10:               jal          s6, 4b
11:               jal          ra, 10b
12:               jal          ra, 15f
13:               jal          t1, 16f
14:               jal          s6, 13b
15:               jal          t1, 3b
16:               jal          t1, 9b
17:               and          ra, a1, zero
                  slli         s5, s11, 24
                  ori          a7, a7, 338
                  bltu         sp, t0, 12f
                  xori         s3, a5, -1299
                  srl          t1, a4, s1
                  bgeu         a1, s4, 12f
                  sll          s10, s11, t5
                  nop
                  blt          a5, s10, 19f
                  bge          s10, a0, 23f
                  bgeu         s8, sp, 12f
                  bltu         a5, s1, 29f
12:               bne          a2, t1, 21f
                  beq          s8, t3, 28f
                  or           t3, t5, a6
                  sub          a6, t6, s3
                  or           s5, zero, t5
                  andi         a7, t2, 1467
                  slt          a6, s11, a5
19:               sra          t3, a5, a7
                  and          s0, s0, s4
21:               ori          t1, a1, 790
                  bgeu         s4, sp, 24f
23:               xor          t2, t2, a2
24:               slli         t6, t4, 31
                  bgeu         t0, t5, 41f
                  lui          s8, 483383
                  or           ra, a2, t0
28:               sltu         s1, t2, t3
29:               slli         a7, s4, 20
                  ori          s10, t6, 691
                  slt          a3, t4, a5
                  sltiu        a6, s3, -1178
                  sltiu        a5, t6, 746
                  or           t6, t3, a5
                  blt          t5, s10, 50f
                  bne          s9, a2, 43f
                  auipc        s10, 683726
                  bltu         s9, a3, 47f
                  and          s5, s11, s2
                  auipc        a2, 612039
41:               ori          a0, a7, 639
                  xor          a1, a2, t1
43:               or           s6, sp, s1
                  sub          s1, t0, s6
                  bgeu         t2, a6, 64f
                  slti         a0, a3, -857
47:               add          tp, gp, sp
                  bge          a0, tp, 62f
                  slli         sp, s4, 9
50:               sll          t0, t3, tp
                  or           s5, s5, s3
                  xor          a5, a6, a3
                  bltu         a2, gp, 62f
                  sub          t6, s2, tp
                  andi         t6, s1, -1598
                  slti         s10, a7, -887
                  slt          s3, ra, t5
                  srl          s4, s4, s7
                  slti         s5, s9, 1818
                  and          s5, tp, t1
                  bltu         sp, gp, 66f
62:               ori          sp, s11, -1864
                  blt          tp, t5, 66f
64:               sll          t6, a0, a6
                  bge          t3, a2, 84f
66:               xori         s8, gp, -1566
                  slli         a5, t2, 8
                  xori         t1, ra, 160
                  srl          a0, t4, t4
                  bgeu         a1, a6, 74f
                  sll          s10, s6, s4
                  ori          a6, t2, 41
                  andi         s11, tp, 1918
74:               blt          s2, s4, 77f
                  slli         s3, s2, 28
                  beq          a6, a4, 93f
77:               and          s11, t1, a2
                  auipc        s4, 854453
                  bne          tp, s5, 87f
                  nop
                  bne          ra, t1, 87f
                  ori          gp, a2, -1909
                  ori          a6, s11, -727
84:               or           a2, s6, t5
                  bgeu         a4, t1, 95f
                  xor          t6, t6, t3
87:               sltiu        a2, t2, 2028
                  slli         t3, t6, 31
                  xori         s1, t1, -1865
                  sra          tp, s5, s10
                  slt          t5, t2, s0
                  bne          t4, a4, 94f
93:               xor          t3, a3, t3
94:               xori         s11, t5, -1168
95:               addi         s3, a5, 1316
                  sll          s5, ra, t3
                  addi         s5, s3, 720
                  add          t0, s4, s4
                  bge          s7, s6, 113f
                  auipc        s11, 483289
                  addi         sp, t4, 287
                  sra          t6, a3, s10
                  and          zero, s4, a5
                  slti         t2, a4, 634
                  sltiu        s11, gp, -1062
                  srl          ra, a3, t6
                  lui          a6, 265546
                  xori         a3, s11, -1360
                  srli         tp, t3, 7
                  and          a6, ra, s5
                  blt          s8, a1, 123f
                  srai         s1, a1, 23
113:              xor          t1, s8, a5
                  or           t0, t0, s11
                  bltu         t2, t1, 121f
                  ori          t2, s8, 1521
                  andi         a6, a2, -1946
                  beq          a7, t5, 134f
                  sub          a6, s11, a0
                  andi         zero, t1, -795
121:              sra          s2, s8, s7
                  srl          t0, t0, s10
123:              srli         s5, s3, 1
                  add          s8, s11, s10
                  bgeu         zero, t4, 134f
                  srli         tp, s10, 0
                  addi         s8, s5, 1379
                  addi         s6, s11, -1647
                  add          s11, a1, s2
                  and          t3, tp, a4
                  bgeu         s3, t1, 134f
                  ori          gp, a6, -1087
                  xori         sp, a5, -1904
134:              sub          a7, s10, a7
                  lw           ra, 4(t4)
                  slli         s3, gp, 23
                  srl          s2, s9, t2
                  xori         s3, gp, 280
                  xori         t6, gp, 479
                  sltu         s4, a6, s8
                  slt          s2, sp, s2
                  srl          a3, s6, s11
                  srl          s10, s7, t1
                  sltiu        t6, a6, -1230
                  addi         t4, t4, 64
                  auipc        a1, 870304
217:              addi x8, x1, 0
217:              jalr x8, x8, 0
sub_4:            addi         t4, t4, -32
                  add          s2, t2, a4
                  or           a7, zero, s2
                  sra          t0, s6, t3
                  sw           ra, 4(t4)
                  slli         tp, t4, 31
                  auipc        a2, 1044695
                  sra          s1, s6, s11
                  and          t6, t0, a7
                  addi         a5, sp, -402
                  sll          s1, a6, a4
                  srli         t3, t1, 13
                  lui          t3, 605641
                  slli         t5, a5, 30
                  slt          t1, s6, a6
                  ori          a5, t5, -1149
                  sltu         t0, s2, tp
                  srai         s2, a6, 19
sub_4_j5:         jal          ra, sub_5 #jump sub_4 -> sub_5
                  addi         t3, a7, 559
                  sll          a1, s7, t2
                  slt          s5, a3, a4
                  bltu         s9, t1, sub_4_j6 #branch to jump instr
                  auipc        t6, 556224
                  xor          a2, a6, s11
sub_4_j6:         jal          ra, sub_5 #jump sub_4 -> sub_5
sub_4_0:          jal          ra, 14f
0:                jal          ra, 1f
1:                jal          t1, 11f
2:                jal          tp, 7f
3:                jal          ra, 4f
4:                jal          ra, 13f
5:                jal          ra, 19f
6:                jal          ra, 3b
7:                jal          s1, 0b
8:                jal          s4, 17f
9:                jal          a5, 8b
10:               jal          ra, 5b
11:               jal          ra, 15f
12:               jal          t0, 6b
13:               jal          s2, 9b
14:               jal          t0, 12b
15:               jal          t0, 10b
16:               jal          ra, 18f
17:               jal          ra, 16b
18:               jal          ra, 2b
19:               nop
sub_4_1:          jal          ra, 12f
0:                jal          s0, 16f
1:                jal          t1, 17f
2:                jal          ra, 3f
3:                jal          ra, 6f
4:                jal          t1, 1b
5:                jal          ra, 23f
6:                jal          ra, 15f
7:                jal          t0, 10f
8:                jal          t1, 2b
9:                jal          s8, 29f
10:               jal          tp, 19f
11:               jal          ra, 24f
12:               jal          a6, 0b
13:               jal          ra, 8b
14:               jal          sp, 9b
15:               jal          t1, 25f
16:               jal          t1, 21f
17:               jal          ra, 11b
18:               jal          t1, 7b
19:               jal          t1, 13b
20:               jal          a6, 14b
21:               jal          ra, 27f
22:               jal          ra, 18b
23:               jal          ra, 22b
24:               jal          t0, 26f
25:               jal          a7, 4b
26:               jal          ra, 20b
27:               jal          t1, 28f
28:               jal          s3, 5b
29:               srl          s11, t1, s7
sub_4_3:          jal          ra, 6f
0:                jal          a2, 13f
1:                jal          t1, 15f
2:                jal          ra, 7f
3:                jal          ra, 14f
4:                jal          ra, 5f
5:                jal          a1, 9f
6:                jal          ra, 10f
7:                jal          t1, 0b
8:                jal          sp, 4b
9:                jal          ra, 1b
10:               jal          t5, 11f
11:               jal          gp, 2b
12:               jal          t1, 3b
13:               jal          ra, 12b
14:               jal          ra, 8b
15:               nop
sub_4_2:          jal          ra, 2f
0:                jal          ra, 3f
1:                jal          ra, 9f
2:                jal          t1, 1b
3:                jal          sp, 6f
4:                jal          sp, 8f
5:                jal          t1, 0b
6:                jal          t1, 10f
7:                jal          ra, 4b
8:                jal          t1, 5b
9:                jal          t1, 7b
10:               sll          t3, s4, t6
                  srai         t5, gp, 31
                  sub          s6, sp, s4
                  sltiu        tp, s4, 1056
                  srai         t0, a2, 19
                  auipc        s0, 639499
                  bgeu         sp, s11, 6f
6:                sub          s4, s7, a5
                  bgeu         s4, t1, 27f
                  bgeu         s4, s2, 22f
                  addi         a7, s2, 1060
                  sll          t0, a6, s0
                  slt          gp, zero, a4
                  auipc        t5, 832949
                  addi         a0, a6, -1418
                  lui          s2, 27378
                  xori         s11, s0, -610
                  or           sp, s11, gp
                  and          s3, ra, a5
                  bltu         sp, t2, 27f
                  xori         s6, a2, 1573
                  blt          a6, s7, 40f
                  sra          s6, t5, a3
22:               andi         s9, a5, 1828
                  sll          a1, a7, s7
                  slt          t6, t3, ra
                  blt          ra, t6, 37f
                  nop
27:               sltu         s4, s9, gp
                  sra          a5, s10, a4
                  sltu         s10, s5, t0
                  xor          s8, t4, t3
                  sltu         a1, a0, a5
                  ori          s4, s11, 298
                  auipc        a5, 932630
                  slti         gp, s0, 65
                  slti         a6, s2, -880
                  bgeu         s4, t1, 42f
37:               xori         t3, a3, -1808
                  sltiu        t0, a5, 776
                  addi         a6, t1, -867
40:               slt          a1, t6, t0
                  bne          t2, a6, 58f
42:               blt          zero, sp, 61f
                  sltu         a5, a4, t2
                  bltu         s1, t3, 54f
                  sra          s3, a5, s11
                  xori         t0, t1, -637
                  lui          ra, 92559
                  add          t1, gp, s9
                  or           ra, a2, s6
                  beq          t2, tp, 62f
                  srai         s3, a6, 4
                  beq          s2, t6, 58f
                  auipc        tp, 851882
54:               and          a2, t3, a5
                  srli         s10, t3, 19
                  addi         gp, a1, 1609
                  bne          a2, s2, 75f
58:               srai         gp, a7, 2
                  or           t1, ra, zero
                  slt          a2, t6, s5
61:               lui          ra, 257025
62:               slli         s1, a4, 6
                  sra          ra, a2, a6
                  slti         s2, sp, -1708
                  ori          a1, t3, -89
                  xor          t5, tp, a2
                  addi         a2, gp, 1518
                  bltu         s0, a1, 80f
                  sra          t1, a0, tp
                  sltu         s5, a4, s11
                  nop
                  bltu         s7, s1, 82f
                  or           s10, s0, t4
                  and          s11, s8, s5
75:               sll          s1, t5, a6
                  lui          s3, 920686
                  srli         s3, gp, 7
                  bge          s9, s1, 87f
                  srli         a7, zero, 19
80:               sra          a1, s3, ra
                  sub          a6, t3, s1
82:               nop
                  bne          ra, sp, 99f
                  sltu         s0, t1, s1
                  lui          a3, 549483
                  or           a3, s9, a4
87:               or           s0, s7, a3
                  ori          a2, s9, 316
                  slti         s0, s9, -264
                  slti         t3, a3, -607
                  xori         a6, s0, -1195
                  lui          t0, 740420
                  sll          s1, s9, s11
                  bltu         t6, s5, 102f
                  add          t5, tp, s3
                  bne          a1, s2, 104f
                  sltu         s2, t6, sp
                  ori          t2, s2, -1121
99:               beq          a6, a0, 102f
                  lui          a2, 392838
                  bne          tp, t2, 118f
102:              add          a5, s3, s11
                  ori          a6, a5, 1797
104:              bne          s2, s2, 105f
105:              xori         s0, s4, -898
                  beq          s7, t1, 125f
                  slt          a1, a2, s0
                  or           a7, a1, a1
                  slli         gp, a2, 16
                  ori          tp, a4, 1358
                  slli         ra, s4, 14
                  blt          s2, a3, 117f
                  slti         a2, tp, -1160
                  srai         t6, t4, 14
                  sll          gp, t3, a2
                  srl          t2, s0, a4
117:              xor          s5, gp, a2
118:              sltu         s4, tp, t3
                  add          a5, tp, t6
                  blt          t5, a6, 129f
                  srli         t3, a1, 15
                  add          s2, a5, t3
                  addi         t0, s3, -1603
                  and          t5, s10, t2
125:              andi         t5, sp, -757
                  xor          ra, ra, ra
                  xori         s1, t0, -374
                  sra          t0, s7, ra
129:              slti         s8, a7, 927
                  slti         s10, t2, 1302
                  blt          ra, t3, 147f
                  add          gp, s6, s2
                  bge          a1, a3, 147f
                  slt          s0, t3, zero
                  bne          a2, tp, 136f
136:              bgeu         t6, t0, 145f
                  xor          s5, s0, a1
                  slli         a6, zero, 28
                  add          tp, s3, s5
                  xori         sp, gp, 785
                  sll          a1, t5, s11
                  beq          a1, t6, 156f
                  sra          t5, a6, a6
                  or           a2, sp, s2
145:              srl          s2, t6, a4
                  beq          s3, a6, 165f
147:              and          gp, a5, s2
                  addi         s0, a6, 543
                  bge          a1, a2, 150f
150:              sub          a1, ra, t2
                  ori          a5, t0, 451
                  xori         s6, t4, 1133
                  sltu         zero, t4, a6
                  xori         s2, s5, -1778
                  slt          s5, s5, s10
156:              slti         s2, zero, 452
                  srai         a3, a0, 24
                  srai         t3, t5, 15
                  slt          s3, s1, s3
                  and          a2, a7, ra
                  slli         gp, a1, 24
                  srai         s9, a2, 23
                  or           t3, s0, gp
                  xori         s3, s10, -1494
165:              lui          s9, 204702
                  add          t5, s9, a5
                  auipc        s3, 606409
                  sltu         a3, a5, a3
                  srl          gp, s7, t6
                  sltiu        t0, gp, 1771
                  sltiu        a5, ra, -381
                  bgeu         a3, a1, 177f
                  beq          gp, a2, 182f
                  slli         s9, t0, 17
                  add          s10, s9, t0
                  srli         s6, s6, 10
177:              blt          s4, a7, 191f
                  beq          t3, s6, 184f
                  blt          t4, s4, 199f
                  slli         s6, t4, 27
                  slt          s10, s3, gp
182:              auipc        s10, 692570
                  auipc        t5, 486272
184:              or           s5, s8, a6
                  slt          a1, a7, a5
                  addi         ra, s9, 1267
                  bge          s6, a4, 196f
                  sra          a3, tp, t0
                  slt          t1, t6, s9
                  auipc        ra, 558803
191:              sltiu        s9, a5, 166
                  sll          a6, a4, s4
                  andi         t6, s4, 1191
                  sltiu        t2, a2, -1592
                  or           a1, gp, s4
196:              bge          zero, t4, 213f
                  lui          s6, 647292
                  auipc        s8, 401564
199:              slli         s6, a4, 19
                  sll          tp, a2, a7
                  sll          s1, t4, ra
                  xori         sp, a3, -444
                  sll          t1, a1, s6
                  addi         t2, s4, 1108
                  andi         s6, a5, 256
                  slt          a6, t6, sp
                  xor          s10, s3, a7
                  srai         t0, s10, 30
                  ori          t0, s3, -2033
                  nop
                  srai         a5, a3, 16
                  ori          s9, s8, 1096
213:              addi         zero, s9, -179
                  sub          s9, s3, s5
                  xori         a0, zero, 904
                  and          a0, zero, ra
                  srli         s10, t5, 28
                  nop
                  lw           ra, 4(t4)
                  xori         t5, s10, 205
                  srl          a3, s3, t4
                  slt          s4, tp, s3
                  lui          s1, 83682
                  andi         a2, a6, 972
                  addi         t4, t4, 32
                  auipc        s8, 765876
                  sll          s8, s10, s3
335:              addi x19, x1, 0
335:              jalr x19, x19, 0
sub_3:            addi         t4, t4, -20
                  slt          s3, s1, zero
                  xori         t3, s4, 1649
                  xori         a5, t6, -166
                  auipc        s3, 786767
                  andi         s8, s9, -601
                  sw           ra, 4(t4)
                  nop
sub_3_10:         jal          ra, 17f
0:                jal          ra, 20f
1:                jal          ra, 8f
2:                jal          ra, 23f
3:                jal          tp, 15f
4:                jal          t1, 10f
5:                jal          t1, 1b
6:                jal          t1, 26f
7:                jal          tp, 16f
8:                jal          ra, 28f
9:                jal          t1, 4b
10:               jal          t1, 19f
11:               jal          s2, 5b
12:               jal          s1, 22f
13:               jal          s3, 24f
14:               jal          t1, 6b
15:               jal          ra, 13b
16:               jal          gp, 29f
17:               jal          ra, 21f
18:               jal          t0, 2b
19:               jal          ra, 18b
20:               jal          ra, 27f
21:               jal          s8, 14b
22:               jal          ra, 11b
23:               jal          ra, 7b
24:               jal          tp, 9b
25:               jal          ra, 0b
26:               jal          ra, 12b
27:               jal          t1, 3b
28:               jal          ra, 25b
29:               xor          s10, s5, s7
sub_3_23:         jal          ra, 20f
0:                jal          s1, 26f
1:                jal          t1, 0b
2:                jal          t1, 9f
3:                jal          ra, 21f
4:                jal          ra, 1b
5:                jal          ra, 8f
6:                jal          ra, 14f
7:                jal          ra, 12f
8:                jal          ra, 6b
9:                jal          t3, 7b
10:               jal          s1, 17f
11:               jal          t1, 10b
12:               jal          t0, 24f
13:               jal          s10, 18f
14:               jal          ra, 3b
15:               jal          t2, 16f
16:               jal          ra, 13b
17:               jal          t1, 19f
18:               jal          ra, 22f
19:               jal          t1, 2b
20:               jal          ra, 23f
21:               jal          ra, 15b
22:               jal          s2, 4b
23:               jal          ra, 11b
24:               jal          ra, 25f
25:               jal          ra, 5b
26:               xori         s4, t6, -81
sub_3_15:         jal          ra, 0f
0:                jal          ra, 22f
1:                jal          t5, 16f
2:                jal          ra, 6f
3:                jal          t1, 7f
4:                jal          gp, 15f
5:                jal          s0, 17f
6:                jal          t1, 13f
7:                jal          ra, 14f
8:                jal          a1, 21f
9:                jal          tp, 23f
10:               jal          ra, 2b
11:               jal          ra, 8b
12:               jal          t1, 1b
13:               jal          ra, 24f
14:               jal          t1, 10b
15:               jal          ra, 9b
16:               jal          t1, 18f
17:               jal          t1, 20f
18:               jal          ra, 11b
19:               jal          t2, 4b
20:               jal          ra, 3b
21:               jal          ra, 5b
22:               jal          ra, 12b
23:               jal          gp, 25f
24:               jal          t1, 19b
25:               nop
sub_3_11:         jal          ra, 23f
0:                jal          ra, 18f
1:                jal          ra, 9f
2:                jal          ra, 26f
3:                jal          t1, 15f
4:                jal          t1, 11f
5:                jal          a5, 7f
6:                jal          ra, 24f
7:                jal          ra, 28f
8:                jal          ra, 4b
9:                jal          ra, 10f
10:               jal          ra, 3b
11:               jal          ra, 20f
12:               jal          ra, 6b
13:               jal          ra, 5b
14:               jal          ra, 21f
15:               jal          ra, 2b
16:               jal          ra, 8b
17:               jal          ra, 29f
18:               jal          ra, 13b
19:               jal          sp, 1b
20:               jal          s2, 22f
21:               jal          ra, 12b
22:               jal          s5, 17b
23:               jal          s6, 14b
24:               jal          s11, 19b
25:               jal          ra, 27f
26:               jal          a3, 0b
27:               jal          ra, 16b
28:               jal          t1, 25b
29:               andi         t6, s2, -724
sub_3_24:         jal          ra, 5f
0:                jal          ra, 7f
1:                jal          t1, 13f
2:                jal          ra, 12f
3:                jal          t1, 0b
4:                jal          ra, 10f
5:                jal          t0, 9f
6:                jal          t1, 4b
7:                jal          ra, 8f
8:                jal          ra, 6b
9:                jal          ra, 3b
10:               jal          ra, 14f
11:               jal          t1, 2b
12:               jal          t1, 15f
13:               jal          t1, 11b
14:               jal          ra, 1b
15:               srai         s0, t3, 10
sub_3_9:          jal          ra, 12f
0:                jal          ra, 16f
1:                jal          ra, 13f
2:                jal          ra, 1b
3:                jal          s1, 14f
4:                jal          tp, 17f
5:                jal          ra, 10f
6:                jal          s8, 15f
7:                jal          ra, 5b
8:                jal          ra, 11f
9:                jal          t1, 8b
10:               jal          a0, 0b
11:               jal          ra, 7b
12:               jal          ra, 3b
13:               jal          ra, 4b
14:               jal          ra, 2b
15:               jal          ra, 9b
16:               jal          t5, 18f
17:               jal          a2, 6b
18:               andi         t3, a3, -186
sub_3_17:         jal          ra, 5f
0:                jal          t1, 17f
1:                jal          a0, 14f
2:                jal          s8, 12f
3:                jal          ra, 4f
4:                jal          ra, 22f
5:                jal          a6, 3b
6:                jal          t1, 18f
7:                jal          ra, 23f
8:                jal          t1, 2b
9:                jal          ra, 24f
10:               jal          ra, 21f
11:               jal          ra, 20f
12:               jal          sp, 19f
13:               jal          t1, 7b
14:               jal          ra, 16f
15:               jal          t1, 9b
16:               jal          t1, 8b
17:               jal          ra, 1b
18:               jal          sp, 15b
19:               jal          s6, 11b
20:               jal          ra, 6b
21:               jal          ra, 13b
22:               jal          ra, 10b
23:               jal          ra, 0b
24:               sltiu        s5, t3, -40
sub_3_5:          jal          ra, 2f
0:                jal          ra, 10f
1:                jal          ra, 0b
2:                jal          tp, 7f
3:                jal          t0, 13f
4:                jal          s1, 12f
5:                jal          gp, 8f
6:                jal          t0, 4b
7:                jal          a2, 9f
8:                jal          ra, 6b
9:                jal          ra, 1b
10:               jal          ra, 5b
11:               jal          ra, 3b
12:               jal          a0, 11b
13:               jal          ra, 14f
14:               srai         s4, a6, 11
sub_3_1:          jal          ra, 16f
0:                jal          ra, 14f
1:                jal          t5, 5f
2:                jal          ra, 20f
3:                jal          s0, 25f
4:                jal          sp, 8f
5:                jal          sp, 17f
6:                jal          t1, 21f
7:                jal          ra, 11f
8:                jal          s4, 9f
9:                jal          ra, 22f
10:               jal          ra, 13f
11:               jal          ra, 19f
12:               jal          t1, 2b
13:               jal          tp, 24f
14:               jal          ra, 27f
15:               jal          s3, 0b
16:               jal          tp, 4b
17:               jal          t1, 3b
18:               jal          t1, 1b
19:               jal          s5, 6b
20:               jal          ra, 15b
21:               jal          t2, 23f
22:               jal          ra, 18b
23:               jal          a7, 12b
24:               jal          t0, 7b
25:               jal          t1, 26f
26:               jal          t1, 10b
27:               xori         s3, s5, -1489
sub_3_6:          jal          ra, 19f
0:                jal          ra, 5f
1:                jal          ra, 23f
2:                jal          ra, 12f
3:                jal          ra, 25f
4:                jal          ra, 18f
5:                jal          s6, 21f
6:                jal          ra, 9f
7:                jal          t1, 2b
8:                jal          t2, 11f
9:                jal          t1, 13f
10:               jal          ra, 27f
11:               jal          s10, 22f
12:               jal          ra, 24f
13:               jal          s5, 8b
14:               jal          ra, 15f
15:               jal          ra, 17f
16:               jal          ra, 6b
17:               jal          ra, 16b
18:               jal          ra, 1b
19:               jal          t1, 0b
20:               jal          s2, 10b
21:               jal          ra, 20b
22:               jal          ra, 26f
23:               jal          ra, 28f
24:               jal          ra, 14b
25:               jal          ra, 7b
26:               jal          ra, 4b
27:               jal          ra, 3b
28:               sltiu        s5, a0, -1823
sub_3_7:          jal          ra, 20f
0:                jal          ra, 9f
1:                jal          ra, 13f
2:                jal          ra, 7f
3:                jal          gp, 8f
4:                jal          ra, 2b
5:                jal          s10, 23f
6:                jal          t1, 19f
7:                jal          ra, 10f
8:                jal          s2, 18f
9:                jal          ra, 1b
10:               jal          t0, 16f
11:               jal          t1, 5b
12:               jal          t1, 4b
13:               jal          t0, 21f
14:               jal          ra, 15f
15:               jal          ra, 0b
16:               jal          ra, 3b
17:               jal          s9, 22f
18:               jal          t3, 11b
19:               jal          ra, 14b
20:               jal          s5, 17b
21:               jal          ra, 12b
22:               jal          ra, 6b
23:               jal          sp, 24f
24:               andi         t0, a1, -523
sub_3_25:         jal          ra, 10f
0:                jal          t1, 20f
1:                jal          ra, 22f
2:                jal          t2, 21f
3:                jal          t0, 7f
4:                jal          s0, 9f
5:                jal          ra, 6f
6:                jal          ra, 13f
7:                jal          t1, 19f
8:                jal          s10, 4b
9:                jal          ra, 16f
10:               jal          s2, 5b
11:               jal          ra, 3b
12:               jal          ra, 17f
13:               jal          t1, 12b
14:               jal          ra, 8b
15:               jal          ra, 2b
16:               jal          ra, 1b
17:               jal          ra, 15b
18:               jal          ra, 14b
19:               jal          ra, 18b
20:               jal          t1, 11b
21:               jal          s4, 0b
22:               xor          ra, s5, s5
sub_3_16:         jal          ra, 2f
0:                jal          s6, 5f
1:                jal          ra, 4f
2:                jal          ra, 9f
3:                jal          t1, 21f
4:                jal          s9, 17f
5:                jal          ra, 24f
6:                jal          tp, 1b
7:                jal          t1, 22f
8:                jal          ra, 20f
9:                jal          t1, 18f
10:               jal          ra, 15f
11:               jal          gp, 16f
12:               jal          s4, 3b
13:               jal          gp, 7b
14:               jal          s0, 12b
15:               jal          t1, 0b
16:               jal          ra, 6b
17:               jal          ra, 8b
18:               jal          tp, 19f
19:               jal          ra, 14b
20:               jal          a3, 23f
21:               jal          t1, 11b
22:               jal          s10, 10b
23:               jal          s2, 13b
24:               slt          s9, a6, sp
sub_3_22:         jal          ra, 15f
0:                jal          ra, 3f
1:                jal          ra, 13f
2:                jal          sp, 8f
3:                jal          ra, 11f
4:                jal          ra, 12f
5:                jal          ra, 2b
6:                jal          ra, 0b
7:                jal          ra, 6b
8:                jal          ra, 4b
9:                jal          s9, 7b
10:               jal          t1, 9b
11:               jal          gp, 16f
12:               jal          ra, 14f
13:               jal          t0, 17f
14:               jal          t1, 10b
15:               jal          t0, 5b
16:               jal          ra, 1b
17:               slli         s6, a4, 4
sub_3_27:         jal          ra, 14f
0:                jal          ra, 2f
1:                jal          ra, 20f
2:                jal          ra, 6f
3:                jal          ra, 16f
4:                jal          ra, 17f
5:                jal          ra, 7f
6:                jal          ra, 1b
7:                jal          ra, 18f
8:                jal          t1, 10f
9:                jal          ra, 13f
10:               jal          t1, 12f
11:               jal          ra, 15f
12:               jal          s2, 11b
13:               jal          ra, 8b
14:               jal          ra, 3b
15:               jal          ra, 4b
16:               jal          ra, 9b
17:               jal          ra, 5b
18:               jal          t1, 19f
19:               jal          ra, 0b
20:               add          ra, sp, s3
sub_3_8:          jal          ra, 0f
0:                jal          t1, 9f
1:                jal          ra, 8f
2:                jal          t3, 1b
3:                jal          ra, 11f
4:                jal          t1, 3b
5:                jal          s5, 7f
6:                jal          s10, 21f
7:                jal          t1, 16f
8:                jal          t6, 18f
9:                jal          t1, 13f
10:               jal          t1, 14f
11:               jal          ra, 6b
12:               jal          ra, 15f
13:               jal          t0, 5b
14:               jal          ra, 20f
15:               jal          ra, 10b
16:               jal          a2, 17f
17:               jal          t1, 2b
18:               jal          t1, 12b
19:               jal          ra, 4b
20:               jal          ra, 19b
21:               srli         t6, t1, 30
sub_3_26:         jal          ra, 5f
0:                jal          s1, 7f
1:                jal          gp, 9f
2:                jal          gp, 3f
3:                jal          t1, 1b
4:                jal          ra, 10f
5:                jal          s10, 2b
6:                jal          ra, 0b
7:                jal          s4, 8f
8:                jal          a7, 4b
9:                jal          t6, 6b
10:               addi         s8, zero, 605
sub_3_13:         jal          ra, 15f
0:                jal          ra, 10f
1:                jal          t6, 5f
2:                jal          ra, 13f
3:                jal          a2, 9f
4:                jal          ra, 20f
5:                jal          ra, 8f
6:                jal          ra, 18f
7:                jal          t1, 21f
8:                jal          t1, 14f
9:                jal          ra, 17f
10:               jal          ra, 4b
11:               jal          s5, 1b
12:               jal          tp, 6b
13:               jal          ra, 22f
14:               jal          ra, 16f
15:               jal          ra, 0b
16:               jal          ra, 12b
17:               jal          ra, 2b
18:               jal          t1, 19f
19:               jal          t1, 7b
20:               jal          gp, 11b
21:               jal          ra, 3b
22:               sltu         a5, t0, a7
sub_3_14:         jal          ra, 13f
0:                jal          a7, 21f
1:                jal          s4, 16f
2:                jal          t1, 25f
3:                jal          ra, 1b
4:                jal          t1, 8f
5:                jal          sp, 26f
6:                jal          a5, 19f
7:                jal          t1, 30f
8:                jal          ra, 23f
9:                jal          t1, 4b
10:               jal          a3, 22f
11:               jal          ra, 29f
12:               jal          gp, 10b
13:               jal          ra, 2b
14:               jal          t1, 28f
15:               jal          t0, 11b
16:               jal          ra, 9b
17:               jal          t1, 20f
18:               jal          s8, 7b
19:               jal          ra, 3b
20:               jal          ra, 5b
21:               jal          ra, 15b
22:               jal          t5, 0b
23:               jal          ra, 27f
24:               jal          ra, 14b
25:               jal          s4, 24b
26:               jal          ra, 12b
27:               jal          t0, 17b
28:               jal          ra, 6b
29:               jal          ra, 18b
30:               slti         t3, t0, -612
sub_3_4:          jal          ra, 7f
0:                jal          ra, 18f
1:                jal          s0, 22f
2:                jal          ra, 6f
3:                jal          t1, 19f
4:                jal          t1, 1b
5:                jal          t0, 17f
6:                jal          t1, 16f
7:                jal          t1, 0b
8:                jal          t1, 23f
9:                jal          s5, 12f
10:               jal          tp, 11f
11:               jal          t1, 3b
12:               jal          s2, 5b
13:               jal          t1, 9b
14:               jal          t1, 15f
15:               jal          t1, 4b
16:               jal          ra, 13b
17:               jal          ra, 8b
18:               jal          ra, 21f
19:               jal          ra, 14b
20:               jal          t1, 2b
21:               jal          t0, 10b
22:               jal          ra, 20b
23:               slti         a6, a5, 1924
sub_3_0:          jal          ra, 8f
0:                jal          ra, 5f
1:                jal          ra, 4f
2:                jal          gp, 19f
3:                jal          ra, 17f
4:                jal          ra, 16f
5:                jal          t1, 21f
6:                jal          a2, 22f
7:                jal          gp, 18f
8:                jal          ra, 2b
9:                jal          t1, 7b
10:               jal          ra, 20f
11:               jal          ra, 12f
12:               jal          ra, 25f
13:               jal          ra, 6b
14:               jal          a2, 11b
15:               jal          a0, 9b
16:               jal          t6, 3b
17:               jal          ra, 15b
18:               jal          t1, 23f
19:               jal          ra, 10b
20:               jal          s3, 13b
21:               jal          t1, 1b
22:               jal          ra, 24f
23:               jal          ra, 14b
24:               jal          ra, 0b
25:               addi         s11, zero, -1048
sub_3_20:         jal          ra, 7f
0:                jal          ra, 15f
1:                jal          a2, 12f
2:                jal          ra, 13f
3:                jal          ra, 21f
4:                jal          t1, 22f
5:                jal          ra, 24f
6:                jal          ra, 20f
7:                jal          s4, 6b
8:                jal          gp, 4b
9:                jal          ra, 5b
10:               jal          ra, 1b
11:               jal          s10, 23f
12:               jal          ra, 14f
13:               jal          t0, 18f
14:               jal          ra, 0b
15:               jal          t1, 3b
16:               jal          t3, 2b
17:               jal          s3, 10b
18:               jal          s6, 11b
19:               jal          s1, 16b
20:               jal          gp, 19b
21:               jal          t0, 8b
22:               jal          ra, 9b
23:               jal          ra, 17b
24:               and          t6, t5, s0
sub_3_18:         jal          ra, 7f
0:                jal          ra, 18f
1:                jal          s3, 4f
2:                jal          t1, 24f
3:                jal          t1, 8f
4:                jal          ra, 9f
5:                jal          t5, 6f
6:                jal          t1, 23f
7:                jal          ra, 12f
8:                jal          ra, 22f
9:                jal          ra, 17f
10:               jal          ra, 21f
11:               jal          t1, 13f
12:               jal          a2, 2b
13:               jal          t1, 25f
14:               jal          s2, 20f
15:               jal          s6, 10b
16:               jal          a0, 3b
17:               jal          t1, 19f
18:               jal          ra, 5b
19:               jal          ra, 15b
20:               jal          ra, 11b
21:               jal          ra, 14b
22:               jal          t1, 1b
23:               jal          ra, 16b
24:               jal          ra, 0b
25:               lui          s4, 277859
                  bne          s10, s2, 3f
                  beq          tp, t5, 12f
                  slli         t2, a2, 7
3:                slli         s8, t1, 8
                  srli         t3, s7, 12
                  ori          a3, s5, 605
                  sltu         gp, a7, s7
                  blt          t3, tp, 23f
                  xor          a6, s11, t3
                  bltu         s6, a4, 10f
10:               beq          t3, s1, 16f
sub_3_21:         jal          ra, 2f
0:                jal          s9, 15f
1:                jal          t1, 10f
2:                jal          ra, 1b
3:                jal          t1, 12f
4:                jal          ra, 19f
5:                jal          ra, 6f
6:                jal          t1, 22f
7:                jal          a2, 16f
8:                jal          ra, 20f
9:                jal          ra, 3b
10:               jal          ra, 13f
11:               jal          t1, 24f
12:               jal          gp, 21f
13:               jal          t0, 17f
14:               jal          ra, 5b
15:               jal          t1, 9b
16:               jal          t1, 0b
17:               jal          t1, 4b
18:               jal          s6, 23f
19:               jal          ra, 7b
20:               jal          a3, 14b
21:               jal          ra, 8b
22:               jal          ra, 18b
23:               jal          ra, 11b
24:               jal          t1, 25f
25:               slti         s9, s2, 1954
                  sll          a0, a0, s6
12:               blt          t0, a7, 21f
                  sub          t1, zero, t4
                  sll          t2, s11, ra
                  add          a0, s10, a7
16:               slli         t0, a4, 20
                  bne          s9, s10, 25f
                  or           s5, a5, a4
                  add          s4, s11, a4
                  slti         s8, s7, -770
21:               bne          s2, s2, 35f
sub_3_2:          jal          ra, 14f
0:                jal          ra, 12f
1:                jal          ra, 0b
2:                jal          a5, 19f
3:                jal          ra, 1b
4:                jal          ra, 2b
5:                jal          s10, 7f
6:                jal          a0, 8f
7:                jal          s3, 23f
8:                jal          ra, 4b
9:                jal          gp, 3b
10:               jal          tp, 16f
11:               jal          ra, 13f
12:               jal          ra, 22f
13:               jal          ra, 18f
14:               jal          ra, 21f
15:               jal          ra, 5b
16:               jal          ra, 24f
17:               jal          ra, 10b
18:               jal          t1, 25f
19:               jal          t1, 15b
20:               jal          s1, 9b
21:               jal          t1, 20b
22:               jal          ra, 17b
23:               jal          ra, 11b
24:               jal          gp, 6b
25:               sub          t6, a0, ra
                  slli         s9, a0, 29
23:               ori          s8, t6, -1618
                  slt          s8, t5, s10
25:               or           s10, a7, a0
                  bltu         s1, a3, 41f
                  bge          sp, t2, 39f
                  or           a6, sp, s0
                  lui          a6, 781183
                  bge          s10, sp, 35f
                  bltu         a3, s3, 38f
                  bgeu         zero, a2, 50f
                  slli         a2, ra, 19
                  bge          s7, s0, 42f
35:               slt          s4, s3, s8
                  andi         gp, a7, 964
                  bgeu         gp, s5, 48f
38:               add          s9, gp, gp
39:               sra          ra, a6, s8
                  slli         t6, a0, 4
41:               bge          t4, a4, 48f
42:               andi         t6, s9, 127
                  and          s4, s9, t5
                  srli         t1, t1, 20
                  addi         ra, a6, 1393
                  beq          s11, a6, 52f
                  sltiu        sp, s1, 393
48:               srli         s8, tp, 6
                  or           zero, tp, s0
50:               sll          t6, s1, s6
                  auipc        ra, 434897
52:               and          s10, a0, t1
                  sltu         gp, a1, s10
                  and          a3, s10, a4
                  sltu         s10, t2, t2
                  bgeu         t5, a1, 63f
                  slti         ra, t2, -1038
                  srai         t0, s3, 22
                  slli         a3, s4, 0
                  sltu         sp, t2, t3
                  sra          s1, s6, t5
                  sll          a5, a3, t5
63:               xori         t3, t6, 1983
                  beq          t0, sp, 83f
                  add          t0, s3, s11
                  sub          s11, t1, a3
                  addi         s4, s2, 514
                  sltu         s2, zero, a0
                  bge          tp, s2, 75f
                  andi         t6, a0, 284
                  bne          a1, t1, 76f
                  addi         t3, s7, 1127
                  sll          a1, s0, t4
                  andi         tp, s4, 1764
75:               bltu         sp, t6, 92f
76:               bgeu         t3, a6, 90f
                  sub          s1, s5, t1
                  andi         a3, s4, -898
                  srai         t0, a7, 11
                  slti         s4, tp, -1977
                  ori          s2, s7, -384
                  nop
83:               xori         a1, s8, -1689
                  ori          s2, a1, 188
                  auipc        a7, 95842
                  slt          t2, a4, s5
                  sub          s1, a3, t5
                  slli         s10, t1, 18
                  blt          a3, tp, 102f
90:               sll          a3, a6, s8
                  ori          a1, sp, 490
92:               xori         t2, t4, -598
                  beq          t2, s7, 108f
                  slt          s4, s9, t6
                  slt          s2, s10, s6
                  bge          s0, t6, 98f
                  slt          s6, a0, t0
98:               and          s2, t0, s5
                  auipc        t2, 225390
                  srl          s2, s9, sp
                  slti         zero, t2, -1996
102:              beq          s2, t6, 108f
                  bgeu         a3, ra, 105f
                  bgeu         t3, s1, 111f
105:              sub          s6, a2, s6
                  sub          a1, t4, s10
                  and          s2, tp, a1
108:              andi         s9, s4, 1286
                  slli         s1, s0, 6
                  sltu         s6, s11, a5
111:              srl          t2, a2, a4
                  xori         t6, s9, -1186
                  srli         s4, t2, 0
                  srl          s4, s2, a1
                  andi         a5, a7, 1215
                  xor          s11, a2, sp
                  xor          s4, t4, s2
                  blt          t1, s8, 129f
                  slli         zero, zero, 25
                  slt          s2, a6, a4
                  sub          t2, s4, t1
                  xor          a7, zero, a0
                  auipc        t0, 823450
                  add          t6, t3, s4
                  bge          a5, s0, 136f
                  auipc        t2, 90958
                  andi         gp, t4, 1024
                  slli         a5, gp, 28
129:              bne          s10, s9, 136f
                  slti         a2, t0, -700
                  srai         a5, a0, 7
                  auipc        t3, 809279
                  srli         s4, a1, 0
                  ori          a1, tp, -1955
                  nop
136:              slli         t0, s6, 11
                  slli         s11, sp, 12
                  srai         t3, zero, 8
                  auipc        s5, 521084
                  sltu         a2, t4, a7
                  srl          t0, s11, ra
                  xori         s8, t3, -1964
                  bge          s6, t4, 155f
                  add          a1, zero, s3
                  xori         s8, gp, -771
                  sub          s5, a5, a1
                  xori         sp, s3, 246
                  xori         t1, a1, -270
                  sltiu        t2, t2, -1245
                  addi         zero, t2, -2048
                  bge          s9, s11, 157f
                  slli         a1, s10, 9
sub_3_12:         jal          ra, 24f
0:                jal          a2, 16f
1:                jal          ra, 6f
2:                jal          a2, 20f
3:                jal          a1, 22f
4:                jal          ra, 8f
5:                jal          t0, 12f
6:                jal          t1, 3b
7:                jal          ra, 14f
8:                jal          ra, 15f
9:                jal          ra, 10f
10:               jal          ra, 13f
11:               jal          a5, 25f
12:               jal          t2, 11b
13:               jal          s8, 2b
14:               jal          ra, 26f
15:               jal          sp, 19f
16:               jal          ra, 17f
17:               jal          ra, 23f
18:               jal          ra, 7b
19:               jal          t1, 0b
20:               jal          s8, 1b
21:               jal          s9, 5b
22:               jal          t6, 4b
23:               jal          gp, 18b
24:               jal          tp, 21b
25:               jal          ra, 9b
26:               sltiu        a6, a1, -145
                  add          sp, t1, s9
                  xor          gp, s11, s0
155:              slt          sp, t1, t1
                  sub          s5, sp, s7
157:              sra          s3, zero, t6
                  bge          s10, a6, 165f
                  beq          s0, t2, 173f
                  slli         t5, s10, 28
                  andi         s9, sp, -2044
                  xor          a7, a5, s9
                  and          s4, a6, a7
                  addi         t3, t5, 928
165:              beq          a6, gp, 167f
                  slt          tp, tp, a5
167:              slti         ra, t0, -912
                  sll          a1, a2, t0
                  sll          s5, s2, a2
                  sltu         s9, sp, zero
                  sltiu        ra, s0, 1306
                  xori         a6, sp, -1169
173:              blt          a5, s2, 192f
                  sltiu        s4, t4, 1143
                  or           s1, s9, s5
                  bge          t2, a1, 183f
                  andi         s10, tp, 739
                  addi         a2, s11, -294
                  auipc        s8, 673000
                  bge          t5, t5, 193f
                  sltiu        s9, t1, -1114
                  slti         s2, s8, 1213
183:              addi         a1, s0, 173
                  or           t0, zero, t2
                  sltiu        t6, s8, 805
                  slli         s4, tp, 14
                  bge          a7, ra, 193f
                  slt          t3, s0, s11
                  bltu         s8, s8, 196f
                  bge          t3, t6, 195f
                  ori          a6, gp, -2024
192:              srli         sp, s0, 1
193:              bne          t3, gp, 201f
                  slli         s3, s6, 2
195:              xor          s5, s8, t2
196:              addi         t6, s3, -72
                  and          t3, ra, zero
                  sub          t0, t1, zero
                  bge          s4, s1, 210f
                  sll          a5, t2, a0
201:              lui          s6, 57306
                  bgeu         a5, s1, 217f
                  add          a5, t0, sp
                  bne          t1, a7, 210f
                  and          s9, s9, a7
                  bltu         s11, t6, 209f
                  bgeu         s3, a1, 213f
                  sra          s8, s7, a0
209:              bgeu         s5, a7, 227f
210:              add          t6, a2, s4
                  and          t2, sp, t5
                  srl          sp, s7, s4
213:              auipc        s11, 267519
                  sra          t3, s7, a5
                  sll          s6, s2, s8
                  bne          a6, tp, 231f
217:              bltu         s11, s8, 234f
                  lui          s11, 216276
                  sub          t3, ra, a2
                  blt          s1, s8, 221f
221:              ori          gp, a1, 495
                  sltiu        a3, s2, 1329
                  add          a2, gp, t0
                  beq          s10, t3, 238f
                  sra          gp, s8, gp
                  xor          ra, t6, ra
227:              xor          a1, a3, s4
                  andi         s3, t5, 1459
                  auipc        a3, 725727
                  bgeu         s11, s0, 239f
231:              beq          gp, t3, 247f
                  sra          s11, s6, sp
                  sra          a3, zero, s4
234:              srli         sp, t2, 27
                  addi         s11, a5, -1286
                  or           s3, s0, s1
                  bne          sp, sp, 242f
238:              slt          a3, t0, s1
239:              beq          s11, a0, 250f
                  bgeu         a1, a0, 248f
                  slt          gp, sp, a7
242:              lui          s2, 368366
                  sltiu        s9, s1, -278
                  xori         s9, a6, 357
                  sub          a3, s8, a4
                  slti         a2, s7, 1426
247:              lui          s8, 601521
248:              slli         ra, s0, 13
                  slli         t6, s8, 1
250:              or           s4, s9, s8
                  or           t0, t2, tp
                  bne          a6, a0, 254f
                  bgeu         a6, t5, 267f
254:              lui          s9, 715997
                  sub          a7, t4, tp
                  sltiu        a2, a4, -632
                  srl          a5, gp, zero
                  srai         a6, s3, 21
                  srli         a1, sp, 20
                  nop
                  srl          a5, a7, s4
                  add          ra, s6, a4
                  auipc        a0, 849262
                  ori          t3, s11, -2040
                  slli         a7, s6, 21
                  sltu         t3, t6, s11
267:              bge          a1, a3, 276f
                  add          s6, tp, a1
                  bne          t5, a0, 286f
                  bltu         t1, a3, 289f
                  bgeu         t4, a0, 286f
                  sltu         t5, t1, a3
                  or           a2, s6, t2
                  or           t2, gp, zero
                  sra          tp, s11, t6
sub_3_19:         jal          ra, 0f
0:                jal          s4, 8f
1:                jal          t1, 10f
2:                jal          t1, 6f
3:                jal          a2, 4f
4:                jal          t0, 7f
5:                jal          t1, 9f
6:                jal          a6, 1b
7:                jal          ra, 5b
8:                jal          t1, 3b
9:                jal          ra, 2b
10:               addi         t6, a7, 1728
276:              sltu         s4, s9, sp
                  slti         a7, t0, 382
                  bgeu         a5, s8, 280f
                  sra          a7, a6, t5
280:              andi         a5, s3, 1850
                  bgeu         t6, t4, 296f
                  xori         s10, s0, 297
                  sub          s10, t3, s5
                  bne          s9, s10, 290f
                  add          s9, a6, a2
286:              add          a7, sp, a5
                  xor          a7, s7, t4
                  add          s5, s1, s1
289:              sra          ra, a5, s3
290:              addi         s9, t2, 1488
                  sltiu        t2, a5, -263
                  bltu         s2, a5, 308f
                  sll          s5, zero, a5
                  sltu         sp, s6, a4
                  sub          t1, s3, s0
296:              srl          s8, zero, s4
                  sltu         s4, t2, t2
                  sll          sp, t6, a6
                  or           a3, tp, s0
                  ori          a5, s7, -273
                  sub          ra, t4, s9
                  sra          zero, a7, zero
                  xor          t0, t5, s6
                  bge          s6, t0, 311f
                  xori         s5, s5, -1992
sub_3_3:          jal          ra, 18f
0:                jal          t1, 23f
1:                jal          ra, 6f
2:                jal          a1, 10f
3:                jal          ra, 7f
4:                jal          s9, 22f
5:                jal          t5, 13f
6:                jal          ra, 14f
7:                jal          ra, 12f
8:                jal          gp, 21f
9:                jal          ra, 4b
10:               jal          t1, 17f
11:               jal          t1, 15f
12:               jal          t1, 9b
13:               jal          ra, 20f
14:               jal          ra, 5b
15:               jal          ra, 16f
16:               jal          ra, 0b
17:               jal          ra, 1b
18:               jal          t3, 19f
19:               jal          ra, 3b
20:               jal          ra, 8b
21:               jal          t6, 11b
22:               jal          ra, 2b
23:               slt          a7, t0, s6
                  lui          s2, 605247
                  xori         s9, sp, 43
308:              beq          sp, s10, 320f
                  bltu         a7, s6, 314f
                  auipc        a5, 48986
311:              sra          ra, t2, s3
                  bne          s3, a7, 320f
                  lui          s1, 765919
314:              slt          s3, s9, a5
                  ori          a5, a7, -1771
                  addi         s3, a6, 1322
                  ori          a7, ra, -878
                  nop
                  bne          a4, ra, 325f
320:              lui          t1, 985201
                  srl          s6, a5, zero
                  bgeu         s11, gp, 328f
                  andi         s4, s5, 152
                  addi         zero, t6, 1585
325:              bltu         sp, a3, 328f
                  addi         s11, t2, -699
                  beq          t6, s10, 332f
328:              add          gp, t1, t1
                  or           sp, a2, s3
                  sub          s8, t4, s5
                  srl          t1, t1, a4
332:              bltu         a1, t2, 334f
                  nop
334:              lui          t6, 871884
                  sltiu        t3, t5, -1270
                  sll          a3, s0, s7
                  sll          s3, a7, s6
                  srli         s5, a2, 19
                  lui          ra, 375937
                  sra          a3, a1, sp
                  bltu         sp, a2, 352f
                  srl          a2, s9, a4
                  xori         s10, sp, -1840
                  bltu         s2, t1, 355f
                  addi         zero, a7, 264
                  srl          a5, s0, t6
                  bge          a1, s11, 354f
                  sltu         a1, a5, s6
                  xor          a5, a1, a7
                  sra          tp, s6, ra
                  slli         s5, s4, 27
352:              beq          t5, ra, 353f
353:              xor          ra, s6, s1
354:              bne          t3, s7, 360f
355:              auipc        zero, 697699
                  add          gp, t2, a2
                  sll          s10, t1, s11
                  srl          a3, s0, s4
                  bltu         s6, s1, 366f
360:              sltiu        a6, sp, 1201
                  addi         a2, s4, -1064
                  sll          zero, t0, s5
                  slt          s2, tp, gp
                  or           s3, t1, a0
                  nop
366:              sub          a7, ra, gp
                  beq          a0, s9, 381f
                  add          a7, tp, a5
                  slt          s10, s0, s9
                  srai         s9, t2, 23
                  bgeu         ra, s4, 382f
                  lui          s8, 642357
                  auipc        s3, 164229
                  ori          s1, s3, -706
                  add          s6, a6, s5
                  srai         s1, a1, 26
                  sltu         gp, t3, sp
                  bltu         a0, t6, 391f
                  srl          s2, t2, zero
                  auipc        s8, 952668
381:              add          a3, t1, a1
382:              auipc        ra, 154893
                  sub          a1, tp, s6
                  blt          a5, s6, 402f
                  slti         t6, tp, -2028
                  slt          a1, t0, s4
                  sltu         s4, s1, s10
                  slti         sp, a7, 638
                  addi         t1, s3, 705
                  ori          t6, t5, 1050
391:              lui          s0, 563501
                  bne          t2, gp, 399f
                  or           s2, a0, a6
                  sltiu        s5, tp, -1440
                  beq          ra, t3, 403f
                  lui          t2, 99295
                  beq          t2, s2, 413f
                  slti         a5, s6, 623
399:              slti         s9, t2, 80
                  slt          t1, s2, s8
                  bltu         s11, a6, 416f
402:              sra          a3, s1, s6
403:              sltiu        a1, s0, -1072
                  add          t3, a5, s4
                  slti         s2, tp, 901
                  srl          a7, a7, a3
                  auipc        a1, 766815
                  auipc        s9, 1027182
                  and          ra, s6, s1
                  srli         a7, a3, 2
                  srai         a1, tp, 13
                  slli         sp, a2, 22
413:              add          t5, a3, t3
                  lui          a0, 397204
                  slti         s4, a2, -830
416:              slti         s3, ra, 1215
                  sltiu        s5, a1, 1571
                  xori         s8, s1, -1736
                  sltiu        s1, t4, 1433
                  nop
                  nop
                  sub          t5, t1, a3
                  srli         a5, t4, 9
                  beq          s3, s6, 437f
                  sub          a7, a5, t5
                  addi         s8, t1, -743
                  bne          t3, a5, 439f
                  bgeu         s4, s4, 439f
                  bgeu         s4, a2, 436f
                  sub          s5, s4, s8
                  add          s11, s3, t1
                  xor          t0, ra, sp
                  xor          t2, s5, s8
                  or           s4, s3, s7
                  lui          t3, 330592
436:              xor          s4, s5, t6
437:              sra          t2, s0, a6
                  slt          tp, a3, sp
439:              srai         a2, s10, 7
                  srli         gp, a0, 2
                  blt          ra, s3, 443f
                  addi         s3, s10, -2022
443:              auipc        s8, 561841
                  add          s11, sp, s8
                  sltiu        s8, a1, -1513
                  bltu         a2, s11, 465f
                  sll          gp, s8, s11
                  nop
                  bltu         ra, a4, 456f
                  slli         s8, t1, 29
                  bgeu         a7, s1, 465f
                  nop
                  bge          a3, s1, 462f
                  and          a2, s6, ra
                  srli         s10, t2, 1
456:              srl          t6, t0, a7
                  bge          s2, t6, 471f
                  add          a3, a2, sp
                  xor          gp, gp, ra
                  slt          s2, t6, s10
                  sll          gp, s2, t4
462:              addi         s11, s8, 620
                  bge          ra, zero, 470f
                  bltu         s4, s8, 467f
465:              beq          s0, zero, 470f
                  bgeu         ra, t5, 474f
467:              and          t2, a5, zero
                  blt          s6, s3, 473f
                  andi         gp, s0, -1033
470:              addi         gp, a0, -1953
471:              bltu         a2, a6, 479f
                  srl          s6, ra, t4
473:              bne          tp, zero, 474f
474:              bgeu         s3, a6, 485f
                  add          s8, zero, ra
                  sltiu        t1, t1, -1228
                  bltu         s1, s3, 488f
                  xori         s5, s7, -705
479:              nop
                  srli         a5, s10, 28
                  auipc        t3, 786633
                  sltiu        t5, t5, 1827
                  sltiu        s10, s9, -1082
                  addi         tp, a7, -1773
485:              bgeu         t2, s3, 491f
                  slti         a7, t5, -753
                  lui          zero, 920013
488:              ori          s11, a3, 562
                  srai         a7, t1, 26
                  srl          s8, t1, ra
491:              srai         s4, a6, 26
                  xori         zero, a1, -798
                  sll          t1, s1, a3
                  sltu         a1, t0, s7
                  blt          s6, a5, 501f
                  andi         t0, s4, -1299
                  ori          s4, ra, -249
                  bne          s3, t0, 516f
                  andi         t3, s4, -1582
                  bgeu         s1, t5, 502f
501:              andi         ra, s8, 852
502:              beq          a5, s11, 508f
                  blt          t0, s1, 518f
                  bne          s1, s10, 511f
                  sltiu        a0, t4, 1165
                  sra          s1, ra, s10
                  ori          a2, s11, -1282
508:              sub          a7, s3, s6
                  bne          a5, a1, 526f
                  beq          t3, a7, 516f
511:              add          s6, a6, s9
                  and          s1, a2, t1
                  ori          sp, ra, -1314
                  xori         s1, a1, 332
                  and          s8, a3, s5
516:              bgeu         tp, s8, 532f
                  sra          s9, s2, sp
518:              beq          t4, ra, 532f
                  sll          t6, zero, t4
                  sra          s2, s2, a7
                  blt          sp, zero, 523f
                  and          ra, s8, s1
523:              beq          a7, t3, 538f
                  or           s8, s6, a4
                  addi         a6, s8, 572
526:              srl          t2, a0, sp
                  ori          a1, a2, -1989
                  and          s9, t1, s5
                  bgeu         a1, s1, 536f
                  lui          t5, 758675
                  xor          s2, s4, a4
532:              add          a5, s8, s11
                  xor          gp, s8, t5
                  bge          s2, t6, 539f
                  bgeu         t5, t4, 541f
536:              ori          a5, tp, 1794
                  beq          t5, a2, 548f
538:              sra          sp, s7, s9
539:              bgeu         t1, s5, 547f
                  xor          s8, t3, s4
541:              andi         sp, a6, -1782
                  sltu         a5, s9, a1
                  beq          ra, s1, 556f
                  sub          gp, s6, a4
                  srli         zero, s3, 13
                  sltiu        t5, s5, 525
547:              andi         zero, ra, -331
548:              sub          t1, a0, a3
                  srl          t6, s3, s11
                  sll          s10, a1, t0
                  xori         t1, s7, -1027
                  slli         a3, zero, 16
                  addi         a3, ra, -715
                  beq          a0, a0, 557f
                  srai         tp, a6, 10
556:              bgeu         s11, zero, 570f
557:              and          t0, a5, s9
                  xori         t5, a0, -867
                  sltu         a7, t4, a5
                  xor          t0, t6, s9
                  xori         t2, a6, 1514
                  sltiu        a3, a6, -733
                  sll          a3, t5, a7
                  blt          a1, ra, 571f
                  srai         a3, t5, 31
                  xor          t1, s0, s5
                  xori         a2, s10, 1501
                  sra          s1, a2, a0
                  sra          t3, a7, ra
570:              sub          t0, a3, s11
571:              sltu         a0, s7, a3
                  bge          a4, ra, 589f
                  sltiu        a2, s4, 1746
                  lui          t0, 572422
                  sltiu        zero, s10, -687
                  sltu         t5, t2, a2
                  sub          a7, s10, s0
                  sltiu        a2, a2, 216
                  srai         s1, t6, 16
                  add          s11, t3, t0
                  xori         a7, t6, -102
                  slli         s6, s0, 27
                  addi         tp, t0, -1821
                  sra          a2, a7, a5
                  bgeu         s5, t1, 591f
                  addi         s0, t6, -295
                  srl          s2, t3, s1
                  xor          a3, s7, s4
589:              slti         a0, a4, -1197
                  nop
591:              bne          a5, a0, 602f
                  add          zero, t3, t4
                  blt          s7, s8, 608f
                  addi         gp, t4, 2043
                  bgeu         s4, a2, 601f
                  nop
                  ori          s9, t4, 853
                  and          s3, t6, s10
                  addi         ra, t2, 1289
                  ori          sp, s3, -1942
601:              and          s4, a4, s6
602:              sll          sp, s4, gp
                  or           s2, a7, t2
                  slt          s5, t6, sp
                  sra          t5, t1, t1
                  bltu         t1, t5, 625f
                  bne          gp, a3, 614f
608:              sub          a5, a5, s5
                  nop
                  xori         s2, t3, 699
                  andi         ra, s0, 1597
                  lui          t0, 727285
                  slli         a7, t1, 22
614:              or           s5, t0, s2
                  slti         tp, s0, 13
                  ori          t0, s5, 880
                  sll          ra, a3, s3
                  bge          s7, a4, 626f
                  blt          s6, s8, 620f
620:              beq          a7, a6, 638f
                  andi         t5, s1, 1361
                  auipc        a3, 498992
                  lui          t2, 425370
                  slti         sp, a3, 2033
625:              xori         s8, s1, -1868
626:              sra          t1, t4, zero
                  bltu         a5, s8, 639f
                  srl          t1, t0, a4
                  xori         tp, a5, 206
                  beq          tp, a2, 632f
                  nop
632:              andi         a5, s7, 939
                  srli         t6, zero, 5
                  andi         t2, s3, 1431
                  nop
                  sub          zero, s11, a4
                  or           zero, ra, zero
638:              andi         s10, tp, 1064
639:              andi         a6, s7, -1538
                  nop
                  srai         a5, s6, 31
                  nop
                  add          gp, a1, s8
                  sll          s3, ra, s9
                  sra          t2, s10, ra
                  bgeu         s11, t5, 652f
                  and          ra, s11, s4
                  xori         sp, s10, 698
                  slt          a2, a5, t4
                  srli         t6, tp, 31
                  lui          zero, 501584
652:              slli         gp, t3, 23
                  sub          s0, a2, s11
                  slt          a1, zero, ra
                  slli         a2, s11, 24
                  or           s10, t5, a6
                  slli         s8, s11, 29
                  slli         a7, a6, 8
                  xori         a5, t3, 1337
                  srli         s2, s5, 19
                  slli         a7, s6, 14
                  lui          zero, 10008
                  sra          t1, s8, s9
                  add          s1, t5, t2
                  xori         zero, s11, 2024
                  slt          s8, a6, a3
                  sub          ra, t6, a1
                  sra          a0, s4, t4
                  sll          t2, s1, a3
                  bne          a7, t3, 675f
                  bgeu         a2, a3, 680f
                  ori          s5, a5, 552
                  slti         zero, s0, 482
                  lui          a7, 70325
675:              slt          s6, t0, a3
                  add          a0, s3, a2
                  auipc        tp, 873583
                  sll          t0, s4, t5
                  srai         a3, s1, 25
680:              sll          t5, s6, s1
                  bgeu         s0, s3, 688f
                  xor          a2, sp, s6
                  nop
                  sltiu        s5, s1, 48
                  sub          s10, s0, sp
                  sltu         s11, t0, s8
                  add          a5, zero, gp
688:              srli         t5, s11, 31
                  nop
                  addi         t1, s3, -1597
                  bgeu         t6, t6, 702f
                  auipc        s9, 15584
                  or           tp, sp, t2
                  andi         s3, a3, -620
                  srl          t6, s10, gp
                  sll          s11, a2, tp
                  sltiu        a1, t4, 757
                  blt          s5, s0, 699f
699:              xori         s0, a0, -1791
                  xor          s6, sp, s1
                  xor          gp, a0, a7
702:              addi         t1, a0, 40
                  beq          a7, s6, 718f
                  bltu         a4, s5, 722f
                  xori         a7, t5, 2042
                  sll          s5, a5, t4
                  beq          t3, a2, 718f
                  slt          a7, a5, a1
                  xori         s0, tp, -2031
                  xor          zero, t5, tp
                  bgeu         t5, s5, 718f
                  srl          s6, s3, a7
                  xor          s2, s1, zero
                  bne          tp, t1, 720f
                  srli         zero, s1, 25
                  sll          s8, t0, t3
                  nop
718:              ori          ra, s0, 1166
                  lui          a7, 598712
720:              slli         t2, s1, 8
                  xor          s9, a5, s3
722:              sll          s1, s8, s5
                  ori          s0, s11, -1600
                  xori         gp, s4, 1309
                  srai         a1, s8, 13
                  sll          s3, t3, sp
                  ori          zero, s11, -1665
                  slli         t3, a0, 9
                  srl          s10, ra, s10
                  bltu         s9, s8, 737f
                  bge          s9, a7, 738f
                  xori         a2, a7, -1416
                  auipc        s10, 260898
                  add          s3, s3, s1
                  srai         s9, t0, 25
                  lui          zero, 903243
737:              srli         s9, gp, 12
738:              sltu         s2, a7, t3
                  sra          t3, a1, sp
                  or           t5, s11, s0
                  xori         s11, s8, -28
                  and          a3, t3, s1
                  sll          s0, t5, s0
                  slti         s10, s8, 1014
                  xori         s2, a5, -1613
                  sltiu        s5, t1, -1529
                  bge          t0, s9, 754f
                  xori         a3, a2, 269
                  xori         a1, t3, 644
                  slti         s0, sp, 506
                  beq          s5, s3, 763f
                  blt          gp, s9, 758f
                  sub          s4, a0, ra
754:              sltu         s9, a0, t2
                  bge          s5, a5, 774f
                  bne          tp, a2, 758f
                  sltu         a1, s10, a4
758:              slli         a6, s5, 24
                  and          tp, s1, a7
                  bgeu         t1, s10, 768f
                  beq          s0, tp, 774f
                  bge          t5, s0, 765f
763:              ori          s10, a6, 1747
                  lui          sp, 555765
765:              xori         s0, s1, -1194
                  slt          ra, t2, tp
                  sll          s11, t2, ra
768:              and          a5, tp, s10
                  bne          zero, tp, 780f
                  beq          t3, a3, 785f
                  slti         s4, gp, -249
                  blt          s4, a0, 774f
                  ori          sp, gp, -1894
774:              sra          s9, gp, s11
                  srai         s11, a4, 8
                  xori         s1, s10, 902
                  xori         t0, s2, 14
                  addi         a5, t3, -1645
                  sltu         t6, t4, zero
780:              bgeu         tp, t2, 786f
                  auipc        t3, 979691
                  srli         s11, s5, 11
                  or           a1, a1, s8
                  sltu         s2, t5, s5
785:              beq          a3, s8, 790f
786:              bne          a6, a6, 800f
                  slli         s9, s4, 27
                  lui          t6, 519147
                  sltu         zero, s2, t4
790:              slti         a6, s6, 891
                  bgeu         t4, s4, 807f
                  srai         s0, s0, 14
                  ori          a7, a1, -1324
                  and          s5, s8, t4
                  sll          a3, s6, a2
                  nop
                  blt          t3, s3, 808f
                  slli         s10, s7, 11
                  nop
800:              slti         s2, gp, -1170
                  bne          gp, gp, 818f
                  srli         s6, t4, 6
                  sub          s8, a1, t3
                  andi         s0, s10, -1324
                  srai         s6, s1, 16
                  beq          t5, s0, 815f
807:              lui          a1, 552793
808:              sltu         s10, t1, a5
                  xori         s1, a3, -1063
                  ori          t1, t3, 610
                  slt          t3, s11, a2
                  sub          s5, a0, zero
                  auipc        s2, 686310
                  blt          s4, s1, 822f
815:              slli         zero, t1, 17
                  andi         s4, s11, -1466
                  auipc        a2, 137972
818:              srai         s5, ra, 4
                  lui          a5, 152629
                  xori         a6, zero, 1912
                  beq          s4, t3, 835f
822:              srl          s9, ra, t4
                  add          tp, t5, zero
                  bge          s6, s3, 829f
                  sll          ra, a1, s6
                  xor          t2, t1, s5
                  ori          zero, s7, -110
                  bgeu         s9, s10, 834f
829:              xor          t2, s10, t1
                  sltu         s3, s11, t0
                  bltu         a5, ra, 844f
                  sltu         s11, a6, a7
                  sub          s8, zero, s5
834:              srai         a0, a6, 4
835:              andi         t0, a1, -107
                  bgeu         a0, a1, 843f
                  slti         s3, s6, -467
                  ori          s10, a6, -1584
                  and          a2, t1, a7
                  slti         s3, s5, 1261
                  slt          s6, s4, zero
                  add          s10, t4, s10
843:              andi         s10, s0, 2040
844:              srl          tp, s1, s5
                  sll          a3, s4, zero
                  srai         gp, s10, 7
                  srl          s8, gp, sp
                  slli         s4, a6, 11
                  bgeu         s0, a7, 866f
                  lui          ra, 562064
                  slli         a5, ra, 30
                  beq          t4, t0, 858f
                  bge          a1, a6, 860f
                  slt          a2, a6, ra
                  sll          s10, a2, s11
                  srli         a5, t0, 6
                  xor          s10, a1, t3
858:              slti         t5, t5, 1168
                  sltu         t3, t1, t4
860:              bge          t6, t0, 867f
                  sll          s2, t2, s5
                  srai         a2, a6, 4
                  or           s0, gp, s2
                  srai         tp, s8, 23
                  sra          a0, tp, s0
866:              nop
867:              bltu         s4, t6, 882f
                  sll          s6, s8, s4
                  bge          s9, t4, 880f
                  sra          a7, s9, t3
                  sll          s3, a7, t6
                  slti         s11, a3, 1483
                  srli         sp, t6, 28
                  sra          s4, a7, a6
                  slli         s9, t0, 31
                  xori         s1, s9, -820
                  xor          t1, s10, a1
                  blt          s6, s9, 889f
                  auipc        a1, 503529
880:              auipc        zero, 165657
                  beq          s3, s11, 886f
882:              addi         s1, a5, -1872
                  blt          t2, s9, 886f
                  lui          s1, 575897
                  bgeu         s0, a6, 890f
886:              andi         t3, ra, -460
                  or           s11, t1, ra
                  sll          s6, s7, gp
889:              sra          t5, s2, t6
890:              sub          a7, s0, s8
                  ori          t6, s11, 1970
                  sub          s1, a2, a0
                  sra          t0, a5, a2
                  slt          a5, a0, a5
                  sub          s8, t4, t0
                  andi         s9, s8, -1345
                  bltu         s10, a1, 899f
                  lui          s2, 206039
899:              add          t5, s7, s0
                  sltu         s8, s6, sp
                  slt          t2, a4, t4
                  andi         t1, s4, -1172
                  sra          s4, s5, s7
                  sub          t3, a3, a2
                  srli         a3, s8, 23
                  xor          gp, a3, t1
                  nop
                  slt          s10, a5, t5
                  srai         t3, s8, 30
                  srli         a1, s0, 31
                  beq          a2, a7, 919f
                  xori         a1, a1, 1319
                  xor          a2, a3, a3
                  add          a2, t6, t6
                  addi         s5, a7, -1282
                  sra          s9, s10, t0
                  srli         s9, tp, 17
                  slt          s6, ra, t1
919:              andi         s5, a7, -1200
                  blt          t2, zero, 921f
921:              addi         s6, a7, -685
                  srl          zero, s1, a2
                  ori          s0, t0, -419
                  srli         t1, t3, 12
                  lui          s0, 332497
                  and          s5, t3, s5
                  beq          s6, a2, 942f
                  bge          a6, t4, 937f
                  bne          s7, s2, 941f
                  and          t5, s0, t1
                  sra          a7, t3, s4
                  add          s3, a5, t6
                  srli         a0, a1, 10
                  add          s8, a5, t1
                  srli         s10, t0, 0
                  lui          a5, 934640
937:              lui          a5, 982715
                  addi         s10, a6, 1251
                  add          ra, s1, ra
                  sub          t0, t6, zero
941:              xor          s0, s1, sp
942:              or           a3, s3, s3
                  bne          a4, s8, 949f
                  xor          s10, a6, s10
                  sub          s2, a6, t2
                  beq          s0, s9, 953f
                  auipc        gp, 230791
                  sra          tp, s0, sp
949:              sll          t3, t6, a6
                  addi         s4, a3, 1730
                  beq          a3, s8, 953f
                  srai         t6, t6, 10
953:              beq          a3, gp, 959f
                  sra          s11, zero, s10
                  slli         a5, s1, 11
                  ori          s3, a0, 1903
                  sra          s5, s0, t6
                  sltiu        s5, a4, -106
959:              add          s8, s11, s3
                  xori         a6, s11, -526
                  add          t2, s3, s5
                  srl          a5, s10, a5
                  bltu         s0, a0, 977f
                  sra          a1, ra, s4
                  and          t6, gp, a1
                  or           s10, t6, t3
                  sra          s11, a5, t3
                  slli         ra, ra, 20
                  xor          ra, t2, a3
                  xori         zero, tp, -561
                  slt          s5, a7, s9
                  auipc        s11, 760027
                  bltu         s4, t5, 989f
                  andi         a0, s0, -570
                  beq          t3, tp, 981f
                  slti         t0, t6, -616
977:              sra          s11, t4, s3
                  sltiu        sp, s9, -1720
                  addi         a3, t2, 1676
                  lui          t2, 877074
981:              bge          s7, sp, 995f
                  addi         a1, s5, -1903
                  slli         sp, t4, 7
                  ori          a2, ra, -388
                  xori         t6, s7, -938
                  bgeu         s7, s2, 997f
                  srai         a7, t0, 2
                  slli         zero, a1, 26
989:              and          s3, gp, s0
                  auipc        a0, 772547
                  bge          t5, s1, 1010f
                  and          s11, ra, t1
                  xor          t6, a3, s1
                  beq          a3, s10, 1002f
995:              nop
                  slli         a5, sp, 15
997:              and          t3, s10, a2
                  beq          s3, t3, 1016f
                  beq          t1, a4, 1018f
                  sll          a1, ra, a2
                  bge          t5, sp, 1002f
1002:             or           s3, a0, a3
                  sll          a6, s3, s0
                  srl          s1, a4, a5
                  sll          t6, s3, s10
                  auipc        s4, 57049
                  bge          t5, t2, 1021f
                  beq          a0, s6, 1015f
                  srai         a2, t5, 1
1010:             xori         gp, t0, -1553
                  ori          a3, s2, 117
                  bge          a2, s7, 1023f
                  sub          s0, t2, ra
                  slli         s1, t2, 17
1015:             sll          zero, a4, s3
1016:             andi         t0, t4, 1851
                  srli         s3, a4, 24
1018:             bgeu         s8, a7, 1029f
                  xori         a5, sp, 1941
                  bgeu         s7, a3, 1027f
1021:             sll          s5, tp, s8
                  auipc        t6, 910063
1023:             blt          sp, t3, 1028f
                  sra          a1, s7, a1
                  srli         a3, sp, 9
                  bne          a6, s0, 1041f
1027:             beq          zero, t3, 1034f
1028:             nop
1029:             srl          a6, t6, tp
                  slt          zero, s10, t4
                  sra          s11, s3, ra
                  srai         s0, tp, 1
                  sll          gp, s7, sp
1034:             slt          s11, s4, t4
                  sltiu        s3, a2, -1548
                  xor          s3, a6, t0
                  srli         a5, s7, 0
                  and          t2, t1, s11
                  bltu         tp, zero, 1044f
                  nop
1041:             nop
                  and          s2, s11, zero
                  andi         t1, sp, 669
1044:             bne          a4, gp, 1053f
                  and          s10, ra, zero
                  sub          s3, ra, t4
                  slli         gp, s6, 16
                  xor          a6, s6, t0
                  bne          a3, a3, 1051f
                  nop
1051:             blt          s1, a4, 1068f
                  bge          t4, t1, 1058f
1053:             sltiu        s6, a4, -1705
                  bge          s7, t5, 1070f
                  ori          tp, ra, -490
                  sra          a1, zero, ra
                  ori          s10, ra, -998
1058:             beq          t5, s2, 1064f
                  nop
                  sll          s9, s3, s1
                  andi         a1, s7, -549
                  sra          ra, s8, t5
                  sltiu        t1, s8, -1657
1064:             xori         zero, a1, 1193
                  xor          t5, gp, t0
                  xori         s10, a4, 1631
                  bltu         s6, a4, 1079f
1068:             srli         s8, a5, 29
                  nop
1070:             srli         t6, a7, 8
                  add          tp, t1, s9
                  slli         zero, s1, 22
                  srai         s0, s3, 2
                  bgeu         s1, t5, 1076f
                  nop
1076:             sltu         ra, zero, s9
                  beq          s3, gp, 1090f
                  nop
1079:             bge          zero, a7, 1097f
                  sub          s2, sp, s10
                  sub          t0, t5, a5
                  ori          s5, s2, 798
                  sub          a3, ra, s6
                  bgeu         s6, s5, 1099f
                  beq          t0, s6, 1099f
                  addi         s3, gp, 1041
                  srli         s3, a2, 16
                  blt          s2, s5, 1096f
                  add          t2, s1, a0
1090:             addi         a6, s8, -1660
                  slti         a7, zero, 936
                  lui          a5, 734422
                  ori          t6, a4, 583
                  sll          s3, a1, a5
                  slt          t0, a1, s6
1096:             bge          s5, a7, 1104f
1097:             sub          t0, t2, t6
                  lui          a1, 700604
1099:             sll          s9, sp, s2
                  and          a6, s9, s10
                  bge          zero, sp, 1112f
                  sub          a1, s4, gp
                  and          zero, s10, gp
1104:             srai         s10, s10, 6
                  sub          a0, sp, t5
                  add          gp, t1, a2
                  bgeu         t1, s1, 1113f
                  srl          s5, s6, s5
                  slt          s1, s10, sp
                  srl          a7, t2, t3
                  andi         a0, s10, 432
1112:             sra          tp, zero, s6
1113:             xori         t5, t3, -1040
                  sltiu        t5, s4, -1251
                  sll          a7, a4, t4
                  add          s9, s8, a7
                  slt          sp, ra, a7
                  sra          ra, a2, sp
                  bgeu         a0, s11, 1122f
                  bge          t2, s0, 1127f
                  sra          s6, s1, s5
1122:             slli         a7, s7, 10
                  xor          s4, s2, t3
                  bne          t5, t0, 1130f
                  bne          a0, s4, 1141f
                  add          a6, a5, s8
1127:             xori         s9, a7, 1452
                  bgeu         t4, t2, 1143f
                  sll          zero, a7, tp
1130:             addi         zero, t2, -1598
                  beq          s6, t1, 1138f
                  srl          ra, t4, sp
                  andi         a0, ra, 964
                  sra          a3, s8, ra
                  addi         a1, s8, 369
                  slt          t3, s10, s6
                  addi         a7, gp, 10
1138:             and          a7, sp, s2
                  blt          t1, zero, 1146f
                  xor          tp, s9, t0
1141:             srai         s5, a7, 10
                  srli         zero, t1, 26
1143:             bge          a2, t5, 1151f
                  slt          a5, s10, t3
                  slli         t5, a6, 10
1146:             srai         gp, tp, 21
                  slli         t6, a2, 16
                  xor          s10, a3, a0
                  and          s10, sp, s11
                  beq          t6, s11, 1164f
1151:             bge          s8, t1, 1152f
1152:             or           t5, s9, s4
                  nop
                  srl          s1, t4, a2
                  sll          tp, s9, t1
                  bgeu         gp, s2, 1168f
                  sra          s6, s5, s4
                  bge          a2, zero, 1169f
                  sltiu        s5, a3, -663
                  add          sp, zero, ra
                  xori         s6, t5, 2011
                  slli         a3, s10, 21
                  xor          a3, zero, a2
1164:             addi         t1, s8, -1002
                  sub          s10, s4, s10
                  sltiu        ra, t0, 1912
                  srl          s5, s10, a6
1168:             xor          t1, t1, s3
1169:             bge          t4, sp, 1175f
                  slli         s3, a1, 22
                  bne          s1, t3, 1189f
                  nop
                  or           sp, t5, s9
                  beq          s5, gp, 1191f
1175:             sub          a6, t4, s7
                  xori         s8, s1, -46
                  auipc        s9, 578472
                  srl          t5, a6, s7
                  bne          t2, a3, 1185f
                  nop
                  addi         s6, s7, -1131
                  srl          s9, t4, s5
                  srl          tp, a6, sp
                  bne          t3, t5, 1190f
1185:             slt          s10, s8, a4
                  sll          s9, s5, t0
                  or           s9, a3, a4
                  or           t3, a4, a5
1189:             add          sp, s9, a5
1190:             sll          a1, a2, a2
1191:             sltu         tp, ra, s4
                  ori          s5, t4, 473
                  sra          s6, a7, a3
                  sltu         s8, t2, s2
                  slli         t1, s2, 3
                  bltu         s9, a2, 1207f
                  auipc        s4, 1034859
                  bltu         a6, s8, 1209f
                  or           s3, s2, t4
                  slli         a0, t3, 30
                  xor          s10, a7, ra
                  bne          a6, t0, 1221f
                  xor          s11, s7, tp
                  slli         t0, t4, 9
                  lui          t0, 93159
                  bne          tp, a4, 1212f
1207:             srl          s11, s9, s9
                  sra          a3, a4, t0
1209:             bltu         a0, t4, 1222f
                  andi         s10, a1, 197
                  or           s2, t6, s11
1212:             ori          s4, s11, -444
                  srli         a2, a5, 31
                  blt          t3, t4, 1221f
                  sltiu        t3, t4, -1130
                  slti         s6, s1, -1212
                  bne          s7, s10, 1224f
                  slt          a2, tp, s3
                  xori         a6, s8, 1096
                  sra          s10, t0, a5
1221:             ori          s5, a1, 967
1222:             add          s0, a1, s2
                  srl          s0, s8, s0
1224:             srai         a2, sp, 10
                  bge          t5, t5, 1230f
                  slti         s11, s11, -1978
                  andi         s0, s1, 1483
                  ori          tp, t3, -571
                  auipc        t3, 223338
1230:             bltu         t1, s6, 1245f
                  xor          s0, s6, a1
                  add          t6, a1, ra
                  andi         s9, sp, -197
                  nop
                  bltu         a3, s1, 1244f
                  xor          t6, s9, t5
                  and          gp, a5, sp
                  slli         s2, tp, 23
                  add          s8, s4, t5
                  bge          a7, s8, 1242f
                  xori         a2, t4, -69
1242:             andi         a5, a5, 1995
                  bltu         a4, s3, 1245f
1244:             add          a5, a2, zero
1245:             nop
                  srli         t6, s10, 14
                  addi         s2, a0, -913
                  slt          s6, tp, a7
                  srli         s5, s6, 26
                  add          a1, t6, s11
                  ori          a7, a5, 574
                  add          tp, a4, tp
                  ori          s5, s0, -699
                  xor          t0, s0, gp
                  bgeu         s2, s1, 1260f
                  bgeu         s11, s7, 1259f
                  slti         a6, a6, -518
                  slt          t2, s3, ra
1259:             bge          t6, s1, 1267f
1260:             addi         s11, a1, 769
                  add          s3, a4, gp
                  bltu         s4, sp, 1276f
                  sltu         a5, t4, t0
                  xor          s3, a0, a3
                  srl          t6, t4, t2
                  slli         s0, gp, 3
1267:             sltiu        t6, a2, 806
                  addi         a3, s10, 1588
                  beq          s6, a3, 1280f
                  srl          s1, s6, t6
                  xor          s1, a3, s4
                  srl          t6, a6, t5
                  nop
                  xor          a1, s5, ra
                  lui          t0, 363536
1276:             bgeu         a3, a4, 1289f
                  sltu         s8, s5, gp
                  bne          t2, s6, 1293f
                  sub          s8, ra, s7
1280:             lui          ra, 99168
                  sub          ra, s5, s4
                  lui          zero, 945179
                  beq          s8, a7, 1302f
                  bge          s6, ra, 1290f
                  bne          t2, a0, 1297f
                  slli         a2, s11, 24
                  auipc        s3, 276415
                  sub          s10, s3, t6
1289:             srai         t0, a6, 5
1290:             sltu         t6, s9, zero
                  sltu         a5, s3, s7
                  nop
1293:             ori          s9, a0, -1384
                  ori          sp, t6, -1962
                  beq          s11, a0, 1312f
                  bge          s0, zero, 1305f
1297:             slt          s1, t5, s4
                  slt          s4, s7, a5
                  srli         s0, t6, 31
                  nop
                  nop
1302:             andi         s4, a5, 889
                  srli         t0, t4, 16
                  slli         s2, sp, 14
1305:             lui          s5, 522881
                  xori         sp, s5, 1492
                  srai         tp, t5, 6
                  auipc        a7, 846812
                  xor          t6, s6, t0
                  srai         a5, s1, 12
                  srl          a5, t0, s1
1312:             andi         a0, t1, 167
                  nop
                  slti         s8, s3, 207
                  bne          s10, t6, 1321f
                  ori          s2, a4, -1930
                  and          s8, a7, s5
                  srli         t6, t5, 20
                  or           t6, t1, s2
                  ori          a6, s1, -1085
1321:             slli         a2, a7, 12
                  beq          t2, a4, 1330f
                  srai         sp, a4, 24
                  bne          a3, a6, 1330f
                  sltiu        zero, a2, -307
                  sll          s1, s3, a1
                  bne          s11, s11, 1335f
                  bge          s11, s10, 1333f
                  bgeu         a6, zero, 1347f
1330:             nop
                  srli         s9, t0, 0
                  slli         tp, s3, 12
1333:             sltu         a0, t3, s8
                  srli         a2, s5, 14
1335:             xor          s1, s7, sp
                  lui          a2, 797883
                  bltu         a0, t1, 1344f
                  andi         s1, a5, 1663
                  andi         t1, t4, -2023
                  srli         a2, s7, 10
                  sub          s2, s6, a4
                  blt          s11, t2, 1353f
                  sltu         s1, s8, s1
1344:             ori          s2, t1, 1841
                  slti         s5, a4, 1881
                  bne          s3, s1, 1353f
1347:             add          ra, t2, a6
                  srl          s0, a6, s3
                  slt          s0, t0, t2
                  slli         a3, sp, 15
                  xori         a5, tp, -167
                  srl          a1, t6, t3
1353:             add          a5, tp, s4
                  addi         t5, s6, 898
                  add          a3, t2, t5
                  srli         t0, t6, 19
                  slli         t2, a0, 19
                  blt          s8, a2, 1361f
                  lui          s2, 71789
                  lui          s3, 647252
1361:             xor          tp, a4, t2
                  sltu         gp, ra, s0
                  xori         s9, a3, 1073
                  bne          s1, s5, 1369f
                  and          ra, ra, a6
                  ori          a2, a2, -65
                  sltu         t3, s0, ra
                  sltu         a3, s7, a6
1369:             bltu         t4, t0, 1384f
                  blt          gp, s2, 1376f
                  sub          s9, a5, gp
                  ori          a6, tp, -12
                  slli         s10, zero, 27
                  srai         a7, a4, 16
                  slti         s4, a2, 1334
1376:             add          t6, a0, s9
                  sub          tp, s4, t0
                  sltiu        a3, a7, -463
                  slli         a0, t1, 4
                  blt          s4, s6, 1382f
                  auipc        a2, 417987
1382:             slti         t6, gp, 0
                  ori          s8, sp, -1977
1384:             andi         t0, s11, 1006
                  addi         ra, zero, -1634
                  addi         s5, s5, 1776
                  beq          sp, s7, 1394f
                  add          s2, s2, t5
                  andi         a0, a6, -1330
                  bgeu         s7, s3, 1404f
                  sltiu        a2, s11, -1823
                  xori         zero, s6, 588
                  srai         a2, s5, 30
1394:             blt          ra, gp, 1396f
                  slti         s3, a6, 2003
1396:             xor          s1, s1, s9
                  slti         t1, a1, -1663
                  add          s10, s9, s9
                  add          a6, s7, a1
                  xor          s4, t2, s8
                  ori          s6, a5, -953
                  blt          s7, a3, 1409f
                  xori         t2, s0, 1234
1404:             xori         a3, t5, 1962
                  sll          t6, a6, s2
                  bge          s4, a6, 1407f
1407:             blt          sp, s6, 1409f
                  and          s4, s6, t6
1409:             sll          a2, t4, a5
                  lw           ra, 4(t4)
                  sltiu        t0, a7, 1434
                  addi         t4, t4, 20
                  srli         a7, s0, 5
                  andi         a5, t1, -1922
2110:             addi x1, x1, 0
2110:             jalr x1, x1, 0
sub_2:            addi         t4, t4, -60
                  add          t0, a2, a2
                  sw           ra, 4(t4)
                  or           a6, t4, s3
                  sra          t6, s3, s7
sub_2_5:          jal          ra, 4f
0:                jal          sp, 26f
1:                jal          ra, 21f
2:                jal          ra, 27f
3:                jal          t1, 14f
4:                jal          ra, 22f
5:                jal          t1, 2b
6:                jal          ra, 11f
7:                jal          ra, 1b
8:                jal          s1, 0b
9:                jal          t1, 12f
10:               jal          ra, 23f
11:               jal          t1, 9b
12:               jal          a0, 10b
13:               jal          ra, 18f
14:               jal          a2, 13b
15:               jal          a7, 6b
16:               jal          t1, 24f
17:               jal          t1, 3b
18:               jal          t1, 15b
19:               jal          t1, 5b
20:               jal          t1, 25f
21:               jal          ra, 19b
22:               jal          t0, 8b
23:               jal          ra, 7b
24:               jal          ra, 20b
25:               jal          ra, 17b
26:               jal          sp, 16b
27:               sll          sp, s2, s0
sub_2_2:          jal          ra, 15f
0:                jal          ra, 10f
1:                jal          ra, 6f
2:                jal          ra, 22f
3:                jal          s6, 4f
4:                jal          s5, 16f
5:                jal          t1, 9f
6:                jal          t1, 17f
7:                jal          ra, 3b
8:                jal          ra, 2b
9:                jal          s9, 11f
10:               jal          t1, 13f
11:               jal          s0, 18f
12:               jal          ra, 24f
13:               jal          t1, 14f
14:               jal          ra, 19f
15:               jal          sp, 7b
16:               jal          ra, 1b
17:               jal          ra, 21f
18:               jal          s1, 0b
19:               jal          ra, 23f
20:               jal          t1, 8b
21:               jal          ra, 20b
22:               jal          sp, 12b
23:               jal          ra, 25f
24:               jal          t2, 5b
25:               add          s1, s11, s9
sub_2_6:          jal          ra, 18f
0:                jal          ra, 12f
1:                jal          ra, 4f
2:                jal          ra, 8f
3:                jal          ra, 7f
4:                jal          ra, 16f
5:                jal          s11, 10f
6:                jal          ra, 2b
7:                jal          ra, 19f
8:                jal          t5, 3b
9:                jal          s9, 1b
10:               jal          t1, 17f
11:               jal          ra, 0b
12:               jal          ra, 15f
13:               jal          t1, 14f
14:               jal          ra, 11b
15:               jal          ra, 9b
16:               jal          t1, 6b
17:               jal          ra, 13b
18:               jal          t1, 5b
19:               xor          t6, gp, s10
sub_2_9:          jal          ra, 9f
0:                jal          ra, 6f
1:                jal          sp, 16f
2:                jal          t1, 14f
3:                jal          ra, 17f
4:                jal          t1, 3b
5:                jal          ra, 4b
6:                jal          ra, 10f
7:                jal          t5, 15f
8:                jal          s0, 1b
9:                jal          tp, 12f
10:               jal          ra, 11f
11:               jal          t1, 13f
12:               jal          ra, 7b
13:               jal          ra, 18f
14:               jal          gp, 20f
15:               jal          t1, 0b
16:               jal          t1, 19f
17:               jal          t1, 2b
18:               jal          t1, 8b
19:               jal          t1, 5b
20:               ori          gp, a1, 1981
sub_2_3:          jal          ra, 2f
0:                jal          ra, 1f
1:                jal          ra, 8f
2:                jal          ra, 5f
3:                jal          ra, 9f
4:                jal          t1, 10f
5:                jal          tp, 3b
6:                jal          ra, 4b
7:                jal          ra, 6b
8:                jal          s6, 7b
9:                jal          ra, 0b
10:               slt          s2, a5, a2
sub_2_7:          jal          ra, 3f
0:                jal          ra, 5f
1:                jal          ra, 6f
2:                jal          s5, 11f
3:                jal          ra, 9f
4:                jal          ra, 1b
5:                jal          ra, 10f
6:                jal          t5, 2b
7:                jal          ra, 4b
8:                jal          ra, 7b
9:                jal          t5, 0b
10:               jal          s0, 8b
11:               add          s9, a1, t1
sub_2_0:          jal          ra, 2f
0:                jal          ra, 10f
1:                jal          sp, 11f
2:                jal          ra, 0b
3:                jal          gp, 9f
4:                jal          ra, 1b
5:                jal          ra, 12f
6:                jal          ra, 3b
7:                jal          t1, 14f
8:                jal          ra, 13f
9:                jal          ra, 5b
10:               jal          s1, 8b
11:               jal          ra, 6b
12:               jal          ra, 7b
13:               jal          t1, 4b
14:               xor          s10, a6, a4
sub_2_1:          jal          ra, 6f
0:                jal          t1, 18f
1:                jal          sp, 17f
2:                jal          a3, 5f
3:                jal          ra, 0b
4:                jal          tp, 14f
5:                jal          ra, 11f
6:                jal          t1, 8f
7:                jal          ra, 12f
8:                jal          ra, 15f
9:                jal          ra, 2b
10:               jal          ra, 13f
11:               jal          ra, 10b
12:               jal          tp, 16f
13:               jal          t1, 4b
14:               jal          s9, 7b
15:               jal          t0, 9b
16:               jal          a3, 1b
17:               jal          ra, 3b
18:               srl          s1, a1, a5
sub_2_8:          jal          ra, 7f
0:                jal          ra, 11f
1:                jal          tp, 8f
2:                jal          ra, 6f
3:                jal          ra, 5f
4:                jal          t1, 3b
5:                jal          t1, 0b
6:                jal          ra, 1b
7:                jal          ra, 4b
8:                jal          ra, 10f
9:                jal          ra, 2b
10:               jal          s11, 12f
11:               jal          ra, 9b
12:               jal          ra, 13f
13:               ori          s2, a4, -679
                  beq          s9, s4, 19f
                  blt          t1, s10, 3f
                  xor          s2, a6, t6
3:                ori          zero, a0, -392
                  andi         s1, ra, 1626
                  srai         tp, a1, 3
                  bne          a0, s11, 12f
                  srli         s0, s8, 30
                  nop
                  slli         s10, a6, 2
                  xori         a3, t1, -802
                  nop
12:               sra          gp, t3, a6
                  slt          a1, s11, s8
                  auipc        t0, 903785
                  bge          t5, s9, 25f
                  bne          zero, s11, 36f
                  sra          gp, t1, s5
                  blt          a6, s6, 31f
19:               auipc        t5, 1026968
                  xori         zero, ra, -1068
                  bne          ra, t4, 23f
                  bge          t3, s11, 31f
23:               sltiu        a5, sp, 1040
                  or           t2, s0, t0
25:               xori         zero, ra, -243
                  addi         t0, s10, -356
                  srli         s11, a6, 0
                  add          s10, s7, s11
                  ori          gp, s1, 274
                  addi         s10, s3, -1779
31:               srl          t3, tp, a3
                  bgeu         t1, a7, 43f
                  ori          a7, a5, 430
                  srl          t2, zero, t3
                  sltiu        a5, s0, 1510
36:               slli         t3, s3, 12
                  addi         s4, ra, 534
                  blt          sp, s0, 58f
                  bne          s9, a4, 40f
40:               sub          s11, s5, s11
                  nop
                  addi         s0, ra, 1896
43:               bgeu         s10, zero, 53f
                  bgeu         a4, tp, 48f
                  srl          a6, s5, a0
                  xori         a5, s10, 1012
                  sltu         s5, t2, s5
48:               sra          a7, s5, tp
                  srl          a2, ra, t5
                  nop
                  sub          s3, s0, s4
                  slt          a6, s9, t5
53:               srai         zero, a3, 5
                  sltu         s5, a6, zero
                  ori          s9, a5, 1986
                  sll          s9, zero, s1
                  bne          s8, sp, 70f
58:               bgeu         t0, t5, 66f
                  slli         ra, s1, 4
                  ori          zero, t3, 1035
                  addi         tp, s8, -202
                  sub          t3, s2, s5
                  srl          zero, zero, s0
                  auipc        sp, 291850
                  blt          a0, a4, 84f
66:               srai         s9, a7, 1
                  srai         t1, s9, 13
                  slt          s0, s9, t4
                  slti         s5, t0, 819
70:               sltu         s8, s0, a0
                  add          s5, a4, sp
                  slli         a0, zero, 9
                  add          s8, a1, a1
                  sra          tp, zero, a6
                  andi         a7, a2, -996
                  sltiu        s5, a1, -40
                  slli         s4, t6, 0
                  xori         zero, s11, 1736
sub_2_4:          jal          ra, 18f
0:                jal          t1, 27f
1:                jal          ra, 5f
2:                jal          a2, 25f
3:                jal          ra, 20f
4:                jal          t1, 13f
5:                jal          ra, 19f
6:                jal          ra, 0b
7:                jal          a7, 24f
8:                jal          ra, 10f
9:                jal          ra, 8b
10:               jal          ra, 21f
11:               jal          t1, 23f
12:               jal          t0, 9b
13:               jal          t1, 28f
14:               jal          ra, 22f
15:               jal          t1, 12b
16:               jal          t0, 26f
17:               jal          ra, 14b
18:               jal          ra, 16b
19:               jal          s2, 4b
20:               jal          ra, 11b
21:               jal          ra, 2b
22:               jal          ra, 1b
23:               jal          ra, 17b
24:               jal          ra, 3b
25:               jal          t0, 7b
26:               jal          t2, 6b
27:               jal          t1, 15b
28:               andi         a6, s9, -672
                  sub          sp, t0, t4
                  auipc        t3, 842891
                  xor          t0, t6, t5
                  bne          s8, a6, 85f
                  or           s2, sp, t3
84:               sltiu        a0, s10, -692
85:               sltu         t5, ra, a2
                  slli         gp, s11, 26
                  xor          zero, s3, sp
                  sub          tp, ra, a7
                  sub          a3, s7, t4
                  bne          a7, a2, 91f
91:               slt          s6, s5, t2
                  blt          s3, s11, 93f
93:               bne          sp, s4, 95f
                  or           s8, a7, t3
95:               slti         t0, a7, 1521
                  sub          a3, s1, t3
                  sltu         t3, s7, t3
                  srai         s5, a1, 19
                  srai         s8, s7, 30
                  sra          s3, t4, s6
                  sltiu        t2, a2, 607
                  auipc        ra, 997013
                  slti         a1, a4, 356
                  or           t3, t2, s0
                  or           ra, t4, a7
                  beq          s7, t5, 125f
                  xor          sp, a0, t4
                  slti         sp, s2, 1793
                  sltu         a1, s4, a7
                  slti         s5, s9, 1041
                  sll          sp, t4, t3
                  bgeu         t2, sp, 132f
                  slt          s0, sp, s2
                  andi         s10, s8, -1672
                  addi         a7, s7, -96
                  srl          s9, s4, a7
                  sltiu        s3, s6, -1978
                  beq          t2, t1, 129f
                  slti         s11, zero, 8
                  sll          t6, t3, a0
                  addi         t2, t4, -1669
                  addi         s11, a1, -209
                  slt          t2, t6, s8
                  sll          s3, s5, tp
125:              sltiu        t2, s1, 613
                  bgeu         a6, a4, 140f
                  srl          s3, s3, a4
                  auipc        a2, 235362
129:              or           a5, t2, gp
                  addi         tp, s9, -886
                  blt          s6, a6, 132f
132:              nop
                  and          s3, s8, t2
                  auipc        t1, 567740
                  srai         a3, sp, 22
                  add          sp, s1, s5
                  sub          t0, t4, a3
                  sltiu        a7, s10, -1289
                  or           t1, sp, sp
140:              srai         s5, t5, 31
                  sra          s1, sp, zero
                  add          s0, s1, s1
                  lui          s2, 937724
                  blt          sp, a4, 161f
                  bne          s5, t5, 150f
                  slt          zero, ra, a1
                  xori         t0, t0, 499
                  auipc        a1, 985899
                  sra          a3, a2, t0
150:              sltu         s4, a0, a6
                  bge          ra, t0, 155f
                  sra          tp, t1, t2
                  bltu         a4, t1, 165f
                  bne          s4, zero, 162f
155:              sltiu        a2, a7, -1824
                  bltu         a1, s0, 176f
                  add          sp, ra, s3
                  sltu         s1, s3, s8
                  beq          a6, t4, 167f
                  beq          s0, a7, 171f
161:              andi         a7, s3, -1706
162:              and          t3, s2, a5
                  addi         tp, a0, 1885
                  slt          s1, s7, t0
165:              nop
                  sra          t6, t1, a0
167:              slt          t5, s10, zero
                  add          s10, s1, tp
                  bge          t0, a0, 173f
                  sra          s11, a5, s1
171:              ori          s0, t3, 616
                  sltiu        t0, s4, -248
173:              bltu         sp, s10, 179f
                  sltiu        s6, t4, -2024
                  sra          a3, tp, s9
176:              or           zero, s3, s10
                  and          s6, s10, s9
                  bltu         t5, s8, 180f
179:              beq          tp, t2, 199f
180:              srli         a5, t2, 22
                  bgeu         a0, s5, 191f
                  beq          t6, s10, 202f
                  sltu         a6, s0, s10
                  xori         t6, a4, 764
                  sra          s1, t0, sp
                  bge          t1, t0, 188f
                  sll          a0, t1, t1
188:              slt          s5, a5, a2
                  bltu         a3, a1, 198f
                  sltu         a1, a7, s1
191:              ori          t0, s10, -1671
                  andi         gp, t1, -1540
                  sub          a5, a3, a2
                  sub          a7, s4, s7
                  ori          s5, s3, -1800
                  sub          ra, tp, s6
                  srl          t1, a0, a7
198:              bne          a3, a0, 210f
199:              sltu         s11, gp, s1
                  or           a6, zero, a2
                  srai         zero, s2, 15
202:              sltu         s5, a3, t3
                  blt          s10, s6, 216f
                  xor          s2, zero, a3
                  slli         a2, a0, 26
                  srli         s3, s11, 18
                  and          s9, tp, s11
                  andi         t5, a0, 619
                  addi         a1, t0, -6
210:              slt          t6, s10, s10
                  xor          ra, s6, tp
                  add          gp, t2, s5
                  ori          s10, zero, -505
                  sra          a2, s7, t1
                  srli         a2, s11, 11
216:              slt          s9, s3, a5
                  srli         a5, zero, 8
                  srli         s6, t3, 19
                  nop
                  slt          t5, a6, t5
                  beq          a3, a7, 240f
                  sltiu        zero, gp, 1295
                  bne          a3, s1, 233f
                  sltiu        s10, t4, -596
                  bge          s4, s4, 226f
226:              beq          gp, sp, 227f
227:              srai         s9, a1, 20
                  bne          s3, a1, 230f
                  bge          t6, tp, 240f
230:              beq          a4, s3, 243f
                  xori         t2, a3, -947
                  sll          a0, s4, s7
233:              bge          s5, s8, 241f
                  xor          a3, a7, zero
                  slt          a0, a1, a5
                  nop
                  add          t1, s0, s10
                  bge          t4, s10, 243f
                  sltiu        t3, s0, -216
240:              add          s2, t4, a5
241:              and          a7, s7, s8
                  bge          a6, zero, 245f
243:              and          zero, t1, t1
                  slt          s0, a0, a7
245:              srl          ra, s7, t0
                  sltu         t3, s8, sp
                  sub          s11, t4, t3
                  sra          s3, a1, s7
                  auipc        a5, 995110
                  auipc        t2, 1039298
                  bltu         a2, s6, 255f
                  slt          t6, s7, s1
                  sltu         s3, t3, a6
                  bne          gp, s2, 268f
255:              bge          t0, a0, 256f
256:              lui          t5, 41742
                  srl          a0, a1, s9
                  auipc        s2, 326164
                  lui          s0, 565988
                  addi         s2, s5, -1866
                  andi         a0, a7, -1197
                  srl          s3, s3, s2
                  andi         a6, t2, -57
                  slt          s0, s4, t5
                  sltiu        s6, a6, -864
                  xori         s4, a2, 1177
                  sll          gp, a3, s7
268:              auipc        s10, 714398
                  bne          s7, gp, 288f
                  sub          a5, s6, t4
                  sltiu        t1, s1, 773
                  slli         a7, a4, 15
                  sra          s6, zero, a1
                  slt          tp, s3, a4
                  xor          s11, s3, s1
                  srai         s11, t5, 10
                  srl          ra, ra, s5
                  sltu         ra, tp, t5
                  srai         s4, a1, 17
                  sltiu        s3, s2, -612
                  andi         s5, s11, 1096
                  srai         ra, t3, 16
                  srli         a7, s3, 4
                  auipc        a0, 10383
                  bltu         s3, t6, 286f
286:              add          a5, zero, a1
                  bltu         a0, s2, 304f
288:              sub          a6, s11, a0
                  bltu         s2, t4, 308f
                  bge          s6, gp, 298f
                  srl          s0, t2, a2
                  slt          gp, a6, zero
                  bge          s2, a0, 312f
                  beq          s10, a3, 296f
                  xori         ra, s10, 429
296:              sltu         a5, zero, gp
                  sll          t2, s11, a1
298:              srai         t1, t1, 0
                  sll          gp, t3, tp
                  bne          s6, s7, 319f
                  nop
                  srl          s2, a2, a2
                  and          a5, s10, ra
304:              nop
                  bgeu         a5, t6, 319f
                  slli         sp, zero, 18
                  slli         s8, s5, 8
308:              ori          t5, s11, -689
                  ori          zero, a4, -1598
                  slt          tp, s10, s9
                  add          s8, s10, s6
312:              auipc        s10, 764827
                  sra          t5, a0, s2
                  bne          s7, s9, 327f
                  auipc        s2, 658614
                  sltiu        s0, s7, 1398
                  sub          t6, s9, gp
                  andi         sp, a3, 740
319:              addi         a7, a2, 178
                  bgeu         gp, t4, 321f
321:              blt          a2, a7, 325f
                  and          ra, s8, gp
                  auipc        s11, 338679
                  sltiu        a6, s6, 1712
325:              lui          t6, 957343
                  beq          s4, s10, 343f
327:              add          a6, s9, s8
                  bne          t0, s7, 339f
                  bne          t6, s3, 337f
                  ori          a5, t0, 1843
                  and          zero, s11, a6
                  blt          s9, tp, 334f
                  srai         a6, a3, 0
334:              beq          tp, s5, 335f
335:              sra          s0, sp, a1
                  bge          a0, t6, 346f
337:              bge          s0, zero, 348f
                  slli         s10, a5, 5
339:              bltu         a4, t0, 345f
                  beq          a4, s7, 360f
                  slti         s9, s8, -464
                  bne          ra, zero, 351f
343:              slt          gp, t3, sp
                  and          sp, ra, a6
345:              srl          s1, s9, s1
346:              lui          s0, 289886
                  xori         t3, ra, -430
348:              beq          a0, a3, 353f
                  nop
                  bge          a4, tp, 370f
351:              xor          gp, a5, t3
                  blt          s5, s3, 355f
353:              sltiu        a7, a5, -747
                  lui          ra, 873499
355:              bltu         s3, s6, 374f
                  add          s5, s2, a2
                  slt          t5, t0, t3
                  lui          s5, 5589
                  sltu         t0, s4, s2
360:              xor          a6, t4, t6
                  slt          t1, s5, t6
                  bltu         a0, s0, 372f
                  bltu         s10, s3, 375f
                  bgeu         s6, s9, 365f
365:              srli         a3, s6, 20
                  sltu         s1, a5, a1
                  andi         t3, ra, -1697
                  and          t2, s11, s11
                  srli         s6, t2, 4
370:              auipc        t2, 388287
                  bltu         gp, a3, 373f
372:              and          a3, s2, s6
373:              sltiu        sp, sp, 725
374:              srli         s4, a6, 27
375:              bge          t6, gp, 379f
                  xori         t0, ra, 787
                  sra          t2, a2, a5
                  srl          gp, t3, ra
379:              slt          a5, zero, sp
                  sll          a0, t3, t0
                  xor          s2, t6, a4
                  bge          t3, s6, 402f
                  srli         t2, s10, 18
                  bgeu         a2, ra, 385f
385:              sra          t3, gp, s4
                  and          t1, t0, s5
                  add          sp, s0, s0
                  andi         sp, zero, 925
                  srli         s3, a6, 9
                  xori         t2, s3, -917
                  auipc        s1, 901969
                  slti         s0, t5, 65
                  and          s10, s4, zero
                  addi         tp, s10, -979
                  ori          a1, s11, 1876
                  bgeu         zero, ra, 409f
                  sll          s4, t2, t6
                  ori          ra, s10, 1354
                  auipc        t0, 358492
                  bge          gp, a5, 403f
                  slli         s4, s7, 25
402:              srli         s8, s4, 23
403:              xor          tp, tp, s7
                  ori          s11, t4, -1723
                  bge          a2, s1, 413f
                  nop
                  slt          a3, s7, tp
                  beq          a4, tp, 419f
409:              slt          s2, s1, a6
                  sll          gp, a7, ra
                  sltiu        gp, a3, -1014
                  bge          s7, a6, 423f
413:              xor          t6, s3, s7
                  sll          t6, s10, a1
                  bne          s6, t1, 416f
416:              auipc        s1, 346587
                  or           tp, t6, a3
                  bne          s10, s11, 430f
419:              ori          s10, s0, -1329
                  add          gp, a5, t0
                  srai         s8, tp, 8
                  srli         zero, t6, 26
423:              slli         s6, t5, 27
                  bgeu         t0, a4, 443f
                  lui          a1, 130910
                  bltu         s0, a5, 428f
                  ori          s9, a0, 1414
428:              bgeu         s4, t0, 445f
                  bne          t0, s10, 438f
430:              bgeu         s10, a4, 431f
431:              sltu         s2, t5, ra
                  and          s6, t4, a2
                  andi         tp, s4, -1726
                  and          s1, tp, s10
                  addi         gp, t4, -562
                  slli         s3, sp, 19
                  slli         gp, s9, 28
438:              xor          t0, s2, s3
                  srai         s2, a7, 10
                  andi         s5, s2, -1611
                  bgeu         a3, s9, 442f
442:              sra          t3, s5, a6
443:              and          s1, t3, a4
                  bge          s7, t3, 450f
445:              srai         a0, a1, 31
                  srai         tp, s3, 6
                  add          s8, a6, t2
                  xor          s11, t2, s11
                  sltiu        s2, t1, 586
450:              sra          t3, sp, s3
                  srli         a3, ra, 18
                  bne          a3, sp, 465f
                  bgeu         zero, a1, 461f
                  srli         t5, a4, 24
                  addi         s9, a4, -2043
                  addi         a2, t4, 14
                  lui          s0, 225816
                  addi         s10, ra, 1294
                  srl          t6, a2, t6
                  sub          s2, t0, t6
461:              addi         s4, s5, 63
                  beq          s2, s9, 466f
                  bne          s5, t6, 483f
                  sra          s11, a0, s11
465:              xori         s6, a3, 823
466:              lui          s1, 855783
                  or           sp, t2, s5
                  ori          t2, gp, -1433
                  bgeu         a5, s8, 473f
                  addi         a5, a0, -134
                  sltiu        s9, a4, -1243
                  auipc        a0, 23099
473:              sltu         tp, s7, zero
                  sll          s1, s11, a4
                  andi         s4, a5, 1240
                  bgeu         s3, s11, 490f
                  xori         sp, s3, -1358
                  sltiu        t3, zero, 1217
                  bne          t5, a6, 481f
                  sra          s11, s0, ra
481:              andi         a2, t2, 2015
                  srai         t2, t5, 2
483:              add          s4, s1, s11
                  sltiu        s3, s8, 1298
                  slt          s9, s0, t4
                  sra          s5, zero, s1
                  ori          a1, s6, -592
                  nop
                  bne          t0, s0, 490f
490:              nop
                  andi         zero, s7, -717
                  xor          t0, s8, s5
                  add          a7, s4, tp
                  ori          zero, t4, -659
                  xori         t1, s1, -1184
                  auipc        s10, 648776
                  and          s2, s2, s1
                  blt          a6, a0, 503f
                  srli         s1, t6, 8
                  xor          t0, ra, a1
                  sub          a5, t6, a0
                  or           s11, t2, t3
503:              or           s1, s1, a7
                  xor          a2, s6, t1
                  xori         sp, ra, -1521
                  ori          s8, s9, 1225
                  srl          t3, a7, t5
                  lw           ra, 4(t4)
                  and          a7, s0, t1
                  addi         a0, s0, 841
                  sll          s2, t5, ra
                  addi         t4, t4, 60
                  andi         s4, a4, 1014
                  add          zero, t2, a4
                  srl          sp, t6, tp
726:              addi x9, x1, 1
726:              jalr x9, x9, 0
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
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x23, x29, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_2:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x23, x29, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_3:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x23, x29, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_4:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x23, x29, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_5:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x23, x29, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_6:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x23, x29, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_7:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x23, x29, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_8:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x23, x29, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_9:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x23, x29, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_10:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x23, x29, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_11:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x23, x29, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_12:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x23, x29, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_13:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x23, x29, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_14:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x23, x29, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_15:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x23, x29, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

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
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x23, x29, zero
                  csrr x16, 0x341 # MEPC
                  csrr x16, 0x342 # MCAUSE
                  li x22, 0x3 # BREAKPOINT
                  beq x16, x22, ebreak_handler
                  li x22, 0x8 # ECALL_UMODE
                  beq x16, x22, ecall_handler
                  li x22, 0x9 # ECALL_SMODE
                  beq x16, x22, ecall_handler
                  li x22, 0xb # ECALL_MMODE
                  beq x16, x22, ecall_handler
                  li x22, 0x1
                  beq x16, x22, instr_fault_handler
                  li x22, 0x5
                  beq x16, x22, load_fault_handler
                  li x22, 0x7
                  beq x16, x22, store_fault_handler
                  li x22, 0xc
                  beq x16, x22, pt_fault_handler
                  li x22, 0xd
                  beq x16, x22, pt_fault_handler
                  li x22, 0xf
                  beq x16, x22, pt_fault_handler
                  li x22, 0x2 # ILLEGAL_INSTRUCTION
                  beq x16, x22, illegal_instr_handler
                  csrr x22, 0x343 # MTVAL
                  1: la x14, test_done
                  jalr x1, x14, 0

ecall_handler:    
                  la x16, _start
                  sw x0, 0(x16)
                  sw x1, 4(x16)
                  sw x2, 8(x16)
                  sw x3, 12(x16)
                  sw x4, 16(x16)
                  sw x5, 20(x16)
                  sw x6, 24(x16)
                  sw x7, 28(x16)
                  sw x8, 32(x16)
                  sw x9, 36(x16)
                  sw x10, 40(x16)
                  sw x11, 44(x16)
                  sw x12, 48(x16)
                  sw x13, 52(x16)
                  sw x14, 56(x16)
                  sw x15, 60(x16)
                  sw x16, 64(x16)
                  sw x17, 68(x16)
                  sw x18, 72(x16)
                  sw x19, 76(x16)
                  sw x20, 80(x16)
                  sw x21, 84(x16)
                  sw x22, 88(x16)
                  sw x23, 92(x16)
                  sw x24, 96(x16)
                  sw x25, 100(x16)
                  sw x26, 104(x16)
                  sw x27, 108(x16)
                  sw x28, 112(x16)
                  sw x29, 116(x16)
                  sw x30, 120(x16)
                  sw x31, 124(x16)
                  la x14, write_tohost
                  jalr x0, x14, 0

instr_fault_handler:
                  add x29, x23, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

load_fault_handler:
                  add x29, x23, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

store_fault_handler:
                  add x29, x23, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

ebreak_handler:   
                  csrr  x16, 0x341
                  addi  x16, x16, 4
                  csrw  0x341, x16
                  add x29, x23, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

illegal_instr_handler:
                  csrr  x16, 0x341
                  addi  x16, x16, 4
                  csrw  0x341, x16
                  add x29, x23, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x16, 0x300 # MSTATUS;
                  csrr  x16, 0x304 # MIE;
                  csrr  x16, 0x344 # MIP;
                  csrrc x16, 0x344, x16 # MIP;
                  add x29, x23, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
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
