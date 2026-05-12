.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x4, h0_start
jalr x0, x4, 0
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
                  li x0, 0x44215f5d
                  li x1, 0x80000000
                  li x2, 0x6231c707
                  li x3, 0x0
                  li x4, 0xe9ba91f5
                  li x5, 0x0
                  li x6, 0xa
                  li x7, 0x2
                  li x8, 0x6
                  li x9, 0x0
                  li x10, 0xfabc645d
                  li x11, 0x80000000
                  li x12, 0x0
                  li x13, 0x0
                  li x14, 0x597dc906
                  li x15, 0xf7ee6523
                  li x16, 0x7
                  li x18, 0x0
                  li x19, 0x80000000
                  li x20, 0x0
                  li x21, 0x0
                  li x22, 0xc
                  li x23, 0xc6cb8400
                  li x24, 0x80000000
                  li x25, 0x80000000
                  li x26, 0xf43d4520
                  li x27, 0x152fe3ce
                  li x28, 0xab695800
                  li x29, 0x0
                  li x30, 0x640007ab
                  la x31, user_stack_end
main:             sltu         s11, s0, t3
                  la           s0, sub_3
                  or           s1, ra, a2
                  srai         t5, s11, 26
                  auipc        a2, 317693
                  and          zero, s5, s4
                  slli         s6, s11, 27
                  addi         s11, t6, -312
                  sll          a1, sp, s11
                  addi         s0, s0, 621
                  addi         a3, a7, 1232
main_j2:          jalr         a5, s0, -621 #jump main -> sub_3
                  la           t2, sub_2
                  ori          s11, s2, -1259
                  add          t0, a5, s9
                  addi         t2, t2, -963
                  slti         s1, s9, 1291
                  sub          sp, s2, gp
                  bltu         s9, ra, main_j3 #branch to jump instr
                  auipc        a5, 175021
                  sltiu        s8, s3, -1025
                  auipc        s4, 397130
                  srli         s8, t2, 28
                  ori          sp, a2, 846
                  sltu         s2, t1, s3
main_j3:          jalr         a5, t2, 964 #jump main -> sub_2
main_0:           jal          a5, 9f
0:                jal          ra, 5f
1:                jal          ra, 2f
2:                jal          a2, 15f
3:                jal          t1, 10f
4:                jal          s5, 3b
5:                jal          ra, 1b
6:                jal          sp, 12f
7:                jal          ra, 14f
8:                jal          t1, 0b
9:                jal          t1, 4b
10:               jal          s11, 7b
11:               jal          ra, 13f
12:               jal          ra, 8b
13:               jal          t1, 6b
14:               jal          s6, 11b
15:               slt          a2, s4, s7
                  xor          s7, s3, s3
                  xor          a4, s2, t1
                  andi         a5, a1, 1854
                  addi         a3, a1, -218
                  auipc        t0, 165483
                  la           s8, sub_1
                  srl          s1, t5, s3
                  addi         s8, s8, -286
                  blt          sp, sp, main_j1 #branch to jump instr
                  auipc        s11, 104963
                  add          s2, s3, a2
                  or           s9, t2, s1
                  srl          a5, a1, s11
main_j1:          jalr         a5, s8, 286 #jump main -> sub_1
                  slti         s5, a6, -499
                  blt          s11, t2, 4f
                  sltu         a0, zero, a1
4:                bltu         a6, s4, 9f
                  srai         s7, t5, 19
                  sll          s5, s0, s7
                  slli         s2, s3, 18
                  blt          t1, s11, 9f
9:                add          t3, a6, t6
                  la x4, test_done
                  jalr x0, x4, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            sltu         t4, s11, s11
                  addi         gp, t0, -732
                  auipc        zero, 857683
                  sltu         s7, ra, s10
                  addi         t6, t6, -20
                  sw           a5, 4(t6)
                  sll          s0, a1, a5
sub_4_5:          jal          a5, 6f
0:                jal          t1, 13f
1:                jal          ra, 4f
2:                jal          a1, 8f
3:                jal          t1, 1b
4:                jal          ra, 9f
5:                jal          t1, 11f
6:                jal          t1, 3b
7:                jal          ra, 0b
8:                jal          ra, 7b
9:                jal          ra, 5b
10:               jal          t1, 2b
11:               jal          ra, 12f
12:               jal          a6, 10b
13:               slt          s11, a1, s6
sub_4_6:          jal          a5, 13f
0:                jal          t1, 11f
1:                jal          a5, 17f
2:                jal          t1, 0b
3:                jal          ra, 8f
4:                jal          ra, 7f
5:                jal          s0, 21f
6:                jal          ra, 9f
7:                jal          ra, 3b
8:                jal          ra, 10f
9:                jal          ra, 15f
10:               jal          ra, 6b
11:               jal          ra, 1b
12:               jal          t1, 4b
13:               jal          ra, 19f
14:               jal          t1, 2b
15:               jal          ra, 22f
16:               jal          t1, 12b
17:               jal          gp, 5b
18:               jal          ra, 16b
19:               jal          ra, 14b
20:               jal          t1, 18b
21:               jal          ra, 20b
22:               sra          s5, sp, a0
sub_4_7:          jal          a5, 12f
0:                jal          t3, 8f
1:                jal          t1, 17f
2:                jal          ra, 20f
3:                jal          ra, 18f
4:                jal          t1, 16f
5:                jal          s4, 10f
6:                jal          t1, 7f
7:                jal          t1, 13f
8:                jal          ra, 1b
9:                jal          t1, 27f
10:               jal          ra, 26f
11:               jal          s8, 14f
12:               jal          s7, 22f
13:               jal          sp, 25f
14:               jal          ra, 4b
15:               jal          ra, 21f
16:               jal          ra, 3b
17:               jal          ra, 9b
18:               jal          ra, 24f
19:               jal          ra, 0b
20:               jal          ra, 19b
21:               jal          ra, 11b
22:               jal          s7, 5b
23:               jal          ra, 2b
24:               jal          ra, 6b
25:               jal          a2, 23b
26:               jal          ra, 15b
27:               srl          s8, ra, a5
sub_4_8:          jal          a5, 0f
0:                jal          ra, 12f
1:                jal          ra, 14f
2:                jal          ra, 10f
3:                jal          a3, 2b
4:                jal          sp, 11f
5:                jal          ra, 8f
6:                jal          ra, 4b
7:                jal          ra, 5b
8:                jal          t1, 9f
9:                jal          ra, 3b
10:               jal          t1, 6b
11:               jal          ra, 1b
12:               jal          s2, 13f
13:               jal          t1, 7b
14:               auipc        ra, 551759
sub_4_9:          jal          a5, 1f
0:                jal          s0, 8f
1:                jal          gp, 0b
2:                jal          s9, 3f
3:                jal          s3, 5f
4:                jal          ra, 15f
5:                jal          t0, 9f
6:                jal          a0, 2b
7:                jal          s1, 11f
8:                jal          ra, 13f
9:                jal          ra, 19f
10:               jal          t1, 17f
11:               jal          t1, 14f
12:               jal          ra, 6b
13:               jal          t2, 4b
14:               jal          s3, 16f
15:               jal          t1, 7b
16:               jal          t1, 18f
17:               jal          ra, 12b
18:               jal          a4, 10b
19:               jal          ra, 20f
20:               lui          t4, 656691
sub_4_3:          jal          a5, 4f
0:                jal          s4, 13f
1:                jal          ra, 15f
2:                jal          t1, 6f
3:                jal          ra, 2b
4:                jal          t1, 0b
5:                jal          ra, 14f
6:                jal          s2, 9f
7:                jal          ra, 1b
8:                jal          t0, 12f
9:                jal          s2, 5b
10:               jal          a2, 16f
11:               jal          a2, 3b
12:               jal          gp, 11b
13:               jal          ra, 7b
14:               jal          gp, 10b
15:               jal          ra, 8b
16:               slli         a6, gp, 3
sub_4_1:          jal          a5, 12f
0:                jal          ra, 18f
1:                jal          gp, 17f
2:                jal          ra, 14f
3:                jal          ra, 13f
4:                jal          ra, 19f
5:                jal          t1, 11f
6:                jal          ra, 0b
7:                jal          ra, 21f
8:                jal          ra, 7b
9:                jal          ra, 8b
10:               jal          s1, 4b
11:               jal          s11, 23f
12:               jal          t1, 3b
13:               jal          t0, 1b
14:               jal          ra, 6b
15:               jal          ra, 5b
16:               jal          sp, 15b
17:               jal          ra, 2b
18:               jal          ra, 16b
19:               jal          t4, 24f
20:               jal          ra, 9b
21:               jal          ra, 10b
22:               jal          ra, 20b
23:               jal          ra, 22b
24:               auipc        s0, 262766
sub_4_4:          jal          a5, 4f
0:                jal          t2, 12f
1:                jal          t1, 10f
2:                jal          ra, 3f
3:                jal          s4, 13f
4:                jal          t1, 5f
5:                jal          ra, 9f
6:                jal          ra, 15f
7:                jal          t5, 18f
8:                jal          t1, 16f
9:                jal          s9, 6b
10:               jal          t1, 14f
11:               jal          s2, 8b
12:               jal          ra, 1b
13:               jal          a1, 7b
14:               jal          ra, 2b
15:               jal          ra, 17f
16:               jal          ra, 0b
17:               jal          t1, 11b
18:               auipc        t3, 681093
sub_4_10:         jal          a5, 11f
0:                jal          ra, 21f
1:                jal          ra, 2f
2:                jal          t1, 3f
3:                jal          ra, 14f
4:                jal          ra, 0b
5:                jal          s11, 22f
6:                jal          s10, 10f
7:                jal          ra, 16f
8:                jal          ra, 18f
9:                jal          s0, 15f
10:               jal          s6, 9b
11:               jal          ra, 4b
12:               jal          t2, 19f
13:               jal          ra, 1b
14:               jal          ra, 20f
15:               jal          s11, 17f
16:               jal          ra, 5b
17:               jal          sp, 7b
18:               jal          ra, 6b
19:               jal          ra, 13b
20:               jal          t0, 8b
21:               jal          ra, 12b
22:               sltu         s8, a6, a2
                  sll          s3, ra, s10
                  add          ra, s2, a2
                  and          a4, s10, s10
                  sll          s0, ra, s11
                  beq          s10, t5, 19f
                  srai         a4, gp, 8
                  and          t1, s11, s6
                  xori         s7, t4, 609
                  or           s9, t2, sp
                  slti         s6, s7, -1799
                  bgeu         t5, s3, 21f
                  addi         s0, t1, 1837
                  sltiu        s4, a4, 1188
                  sltiu        s6, tp, 382
                  sra          a3, s7, s1
                  srli         a2, ra, 19
                  srli         t0, a5, 13
                  slli         t2, s7, 30
                  xor          s11, t1, s3
19:               and          s11, ra, t0
                  sltiu        a4, t5, -1888
21:               bltu         a1, t4, 29f
                  bge          t2, s7, 35f
                  sll          a5, t1, s2
                  slli         s9, s11, 4
                  bge          a6, a4, 42f
                  bge          gp, t3, 28f
                  sltiu        a0, t1, 1847
28:               slt          s6, s2, a7
29:               bltu         t4, s4, 32f
                  xor          a5, a5, s6
                  srai         a2, a7, 12
32:               bgeu         a1, t0, 35f
                  lui          s10, 961659
                  slti         a0, s0, -1090
35:               and          s10, tp, a3
                  addi         s7, s6, -936
                  addi         a5, t0, 580
                  andi         a4, t5, -900
                  sra          t3, a2, s4
                  lui          gp, 572006
                  sltu         a3, s6, a2
42:               xor          gp, sp, t0
                  bge          a2, s6, 58f
                  nop
                  add          s9, t4, s5
                  blt          a3, a3, 65f
                  bne          gp, a3, 50f
                  slli         a6, gp, 6
                  sltiu        s11, ra, -2028
50:               xor          a3, s11, a0
                  beq          sp, a5, 71f
                  sltu         sp, t2, s9
                  bne          s7, t3, 73f
                  xor          t1, s1, t5
                  add          s6, t2, s9
                  sll          s2, ra, s2
                  andi         s7, sp, 933
58:               xor          a5, ra, t5
                  slli         s4, a5, 31
                  xor          a2, a6, a6
                  blt          s4, t6, 69f
                  slti         sp, t4, -764
                  srai         t0, ra, 14
                  slli         a6, ra, 10
65:               srl          s10, gp, a1
                  bne          s1, s2, 81f
                  xori         s8, t0, -1481
                  andi         t5, sp, 2042
69:               lui          gp, 788266
                  addi         s4, a5, 1471
71:               slli         s10, tp, 9
                  xori         t4, a1, 1138
73:               add          t3, t3, a1
                  bltu         s8, zero, 82f
                  sub          a3, s1, t3
                  sltiu        t4, s8, 1759
                  add          s11, t3, a5
                  auipc        a0, 787529
                  auipc        s8, 769116
                  slti         t1, s6, -643
81:               srai         s4, s0, 5
82:               xor          a0, t5, s8
                  addi         a4, a2, -1809
                  srli         s11, s4, 24
                  bltu         t3, s9, 94f
                  sub          t4, a4, a7
                  and          s9, t3, t2
                  bne          a5, s8, 101f
                  beq          ra, s1, 90f
90:               slti         a0, a3, -1298
                  sra          s5, a5, a7
                  srli         a6, ra, 3
                  slti         a1, t2, -1723
94:               srai         t3, s0, 19
                  blt          a3, a3, 98f
                  slt          s7, s0, s10
                  srli         s3, s3, 21
98:               slt          a6, s1, zero
                  lui          ra, 93437
                  sub          s6, s4, a2
101:              sra          s4, t5, a2
                  add          s0, sp, t6
                  ori          sp, t0, 88
                  srli         s1, sp, 10
                  slli         s5, tp, 30
                  sll          a5, s10, t3
                  bltu         a7, t2, 111f
                  addi         s6, gp, -1477
                  srai         t4, s7, 0
                  ori          s2, s11, -1539
111:              add          s2, a0, a1
                  sra          s5, a3, a7
                  bltu         a4, t0, 123f
                  sltu         a1, a6, t0
                  auipc        sp, 853734
                  xor          s2, sp, s9
                  slli         t1, t4, 28
                  bgeu         gp, s4, 123f
                  bgeu         t6, s7, 126f
                  sra          s3, tp, a7
                  xor          a6, a5, t4
                  blt          gp, t3, 126f
123:              auipc        zero, 668277
                  sra          a3, t2, s5
                  auipc        s9, 102984
126:              nop
                  bne          s10, zero, 139f
                  sll          s4, s5, a2
                  bgeu         s2, t2, 132f
                  bne          t0, t2, 135f
                  blt          gp, s0, 149f
132:              lui          s6, 500608
                  bne          s7, s9, 152f
                  bne          a5, t3, 142f
135:              srai         a1, s2, 24
                  xori         a1, t2, -604
                  bge          s3, s2, 145f
                  bgeu         s5, a1, 156f
139:              sltu         a2, t1, s10
                  sltu         s4, s4, t5
                  bge          s8, s0, 151f
142:              slli         s0, t4, 30
                  sra          t0, sp, a1
                  slli         t3, s11, 20
145:              nop
                  sll          a1, a2, tp
                  add          s7, sp, a1
                  srl          s8, s2, s8
149:              slli         s5, a6, 25
                  lui          s2, 944133
151:              xor          s6, t0, s8
152:              sub          s7, tp, a0
                  addi         t3, gp, 1519
                  bge          t6, tp, 166f
                  slt          a5, t6, tp
156:              slti         s11, a3, -699
                  blt          s7, s10, 177f
                  slli         t3, s11, 29
                  bgeu         sp, t6, 160f
160:              lui          t1, 201124
                  sll          a3, s7, t5
                  sra          a0, s1, s6
                  sub          sp, ra, s1
                  addi         s0, t6, 75
                  add          s11, a6, t0
166:              xori         s2, sp, -2005
                  xor          s8, a3, s0
                  xor          t3, s0, a6
                  add          s1, t4, ra
                  slt          s5, s8, s8
                  sll          s6, ra, s8
                  sltu         a6, s2, s7
                  and          a0, t0, a6
                  sltu         s6, a7, t2
                  blt          gp, s9, 190f
                  slti         gp, t5, 487
177:              xori         a6, s0, 167
                  beq          zero, t1, 181f
                  sub          a1, t1, s6
                  bne          ra, s7, 195f
181:              and          s2, t4, a0
                  ori          a3, t2, -1431
                  add          t1, s5, s5
                  xori         sp, s5, -389
                  auipc        zero, 553533
                  sltiu        s7, a6, 55
                  and          a5, s1, s7
                  beq          a1, s0, 191f
                  srl          s6, t4, s0
190:              addi         a6, s2, -312
191:              andi         t2, t0, 1772
                  slti         t5, s8, -7
                  sltiu        s6, a4, 1365
                  or           t3, t5, s1
195:              auipc        s10, 716935
                  blt          a1, s7, 203f
                  sltiu        s11, a1, -1973
                  slli         s6, a0, 26
                  slt          t2, s10, t0
                  slti         s1, a2, -1490
                  bge          ra, s4, 204f
                  and          s8, ra, t4
203:              nop
204:              bne          tp, a4, 207f
                  ori          a1, s6, 263
                  nop
207:              srli         zero, ra, 20
                  slti         a0, s2, 1604
sub_4_0:          jal          a5, 7f
0:                jal          t1, 17f
1:                jal          t1, 10f
2:                jal          s1, 0b
3:                jal          ra, 14f
4:                jal          t1, 6f
5:                jal          ra, 20f
6:                jal          ra, 3b
7:                jal          t1, 9f
8:                jal          t1, 16f
9:                jal          t5, 18f
10:               jal          ra, 19f
11:               jal          t0, 1b
12:               jal          s10, 4b
13:               jal          ra, 11b
14:               jal          t1, 13b
15:               jal          t1, 5b
16:               jal          ra, 12b
17:               jal          ra, 8b
18:               jal          ra, 2b
19:               jal          ra, 15b
20:               add          a6, zero, s1
                  sltu         a5, t6, a7
                  or           gp, t3, ra
                  and          t1, s7, s8
                  slli         sp, s9, 29
                  sub          a4, s2, a7
                  bltu         a6, t2, 229f
                  ori          t2, s3, 1899
                  sltu         t5, s0, s10
                  beq          t1, s3, 219f
                  blt          a6, a7, 238f
219:              sltu         a6, a6, t4
                  add          t2, tp, s4
                  sra          a0, a7, a6
                  nop
                  and          a6, t0, gp
                  bne          a0, s3, 232f
                  sll          s1, t4, s0
                  and          t0, s1, a6
                  sltu         a5, s10, s3
                  addi         gp, gp, 1253
229:              sra          sp, t6, a3
                  srai         a1, a5, 1
                  xori         s4, a7, -457
232:              lui          t1, 501420
                  bltu         s2, s4, 238f
                  sra          a2, gp, a3
                  auipc        s11, 266771
                  and          t2, s0, a1
                  lui          s0, 721680
238:              nop
                  slti         zero, s3, 1668
                  slli         s2, a2, 12
                  lui          t4, 1046190
                  xor          t1, ra, a5
                  sra          s8, a3, s2
                  sll          t4, a7, t4
                  slt          t3, zero, a4
                  bge          s10, gp, 249f
                  nop
                  or           a3, s0, s6
249:              or           ra, a3, a1
                  bgeu         s2, a6, 255f
                  sll          s6, zero, zero
                  bltu         a6, t6, 256f
                  ori          s9, t1, 1048
                  andi         s0, sp, 330
255:              beq          s2, s4, 268f
256:              xor          s4, a0, s10
                  srai         s4, tp, 28
                  srai         gp, a0, 26
                  bne          s11, s10, 272f
                  and          zero, t0, s0
                  or           s0, t4, s2
                  sltiu        s4, a7, -194
                  sra          ra, t1, a1
                  sub          a0, s0, s11
                  xori         s7, s5, 1225
                  ori          s7, t4, -1217
                  add          t3, t5, s10
268:              bge          a5, s10, 287f
                  slti         gp, tp, -328
                  bltu         a2, sp, 281f
                  bne          a0, s0, 275f
272:              sll          t4, a2, t2
                  lui          s6, 936690
                  slt          s10, s0, s7
275:              bltu         s3, s8, 284f
                  sltu         t4, tp, a4
                  sub          s4, s9, s2
                  slt          s11, s7, s1
                  or           t5, a6, zero
                  srli         sp, t6, 14
281:              addi         s6, a4, -1200
                  bne          s4, zero, 299f
                  ori          a1, a0, -1781
284:              bltu         a7, t6, 303f
                  bne          a0, tp, 288f
                  or           ra, s9, a6
287:              bltu         a7, gp, 290f
288:              sll          s5, s2, t1
                  sltu         t3, s9, s5
290:              sub          s0, ra, t3
                  slti         s0, zero, -700
                  or           s11, s1, a0
                  beq          a2, s11, 312f
                  bltu         a7, a5, 312f
                  sltu         s3, a2, s4
                  blt          s3, a3, 300f
                  sub          s4, s5, t3
                  bge          a2, s2, 303f
299:              bgeu         zero, s1, 311f
300:              sub          a4, t0, a5
                  slli         s7, s0, 2
                  nop
303:              ori          t5, t3, 1097
                  add          s5, a5, s8
                  srl          a0, s6, a4
                  beq          tp, s3, 315f
                  slli         s2, zero, 15
                  sll          s2, ra, a0
                  andi         s6, s5, 1927
                  slt          a6, ra, s0
311:              nop
312:              bltu         s10, a2, 320f
                  beq          t1, a6, 326f
                  slti         t1, t6, -615
315:              slli         t5, a0, 1
                  sll          s2, s10, a0
                  sll          s5, s6, a0
                  bge          a6, tp, 326f
                  slli         s2, tp, 30
320:              addi         a3, a3, -1513
                  srl          ra, a2, s5
                  srai         t4, tp, 29
                  nop
                  or           s6, s3, tp
                  sra          zero, s10, zero
326:              add          s9, gp, s0
                  xor          s0, t5, zero
                  lui          t1, 552884
                  slt          zero, a0, t6
                  srl          s3, s10, a7
                  bltu         a0, a5, 346f
                  slti         a3, s3, 664
                  auipc        a1, 856064
                  beq          s9, s2, 337f
                  sltiu        s9, a4, 1638
                  sub          a0, s5, s3
337:              beq          s4, gp, 347f
                  slt          ra, s6, sp
                  srl          t2, t2, a7
                  sub          a1, t1, t3
                  sub          a0, s3, s2
                  and          s5, ra, s6
                  auipc        t4, 380435
                  slti         ra, s1, -1880
                  andi         s7, a6, -1306
346:              bltu         s7, s1, 366f
347:              or           a1, ra, a5
                  add          s1, s3, a5
                  or           s5, t0, t6
                  srai         s0, s1, 4
                  xor          s9, t3, t5
                  bltu         s8, s2, 357f
                  lui          t1, 70623
                  and          gp, sp, ra
                  andi         s7, s10, -89
                  sub          s8, t6, t1
357:              and          s7, a6, s3
                  srli         a2, t2, 16
                  bne          zero, t0, 374f
                  and          a4, sp, t5
                  add          s7, t4, t4
                  or           ra, t6, ra
                  lui          s10, 336892
                  slli         s5, s2, 22
                  bne          gp, s3, 378f
366:              bne          t1, s7, 374f
                  bltu         a2, tp, 384f
                  xor          s4, a5, t0
                  add          zero, s2, s4
                  beq          s7, s3, 374f
                  xor          gp, a4, a7
                  beq          zero, a3, 375f
                  add          t0, t2, s1
374:              addi         t4, a7, 1617
375:              sub          s11, sp, a4
                  sll          t0, a6, a0
                  bge          t2, t1, 396f
378:              slli         a1, t3, 23
                  andi         a6, gp, -273
                  slli         s5, tp, 11
                  srl          s10, a1, t1
                  slti         t2, sp, 1840
                  bne          a0, t4, 398f
384:              and          s6, sp, gp
                  sll          a5, s11, ra
                  or           t4, s2, ra
                  xori         s3, a3, -591
                  slt          s10, s6, s6
                  ori          s0, t0, 1373
                  slti         gp, a6, 1342
                  lui          s9, 821843
                  bge          s4, a3, 393f
393:              bltu         t3, s1, 395f
                  nop
395:              xor          a5, ra, t5
396:              bne          gp, t3, 407f
                  bltu         t2, t0, 400f
398:              sra          s10, a0, s1
                  bge          a1, a5, 419f
400:              srli         t2, a4, 4
                  slt          s2, gp, s1
                  andi         a3, a3, 1171
                  xor          s11, a2, a5
                  bne          s6, a5, 411f
                  and          gp, s5, t5
                  blt          a3, a0, 408f
407:              nop
408:              bltu         t3, t2, 411f
                  lui          t0, 457632
                  srli         t1, a6, 12
411:              sra          t5, a2, sp
                  srai         a4, s2, 13
                  nop
                  slli         s7, a6, 18
                  srli         t0, s6, 6
                  blt          sp, s5, 421f
                  slli         zero, t6, 23
                  sltu         t5, sp, s0
419:              auipc        t0, 670920
                  srli         a2, s0, 3
421:              sub          t1, s1, t0
                  sub          s3, a5, sp
                  xori         s1, s2, 979
                  or           a2, a0, s7
                  srl          s11, t2, sp
                  andi         a2, t6, -391
                  sltiu        s10, a7, 435
                  bgeu         s8, a3, 436f
                  xor          s2, t6, a3
                  blt          s5, s9, 442f
                  slt          a1, s10, a5
                  ori          s9, s8, 769
                  slli         gp, s1, 12
                  sltiu        zero, a5, -1119
                  andi         gp, s3, 166
436:              blt          a6, ra, 440f
                  blt          t0, t4, 447f
                  slti         s2, s0, 734
                  sra          t3, a3, s0
440:              bltu         s3, s5, 448f
                  add          s8, s11, s2
442:              sltu         ra, t5, ra
                  andi         t4, t3, -396
                  bgeu         s8, a1, 459f
                  auipc        s8, 1028243
                  bge          gp, s1, 464f
447:              srl          t3, s10, s11
448:              srli         s4, s7, 28
                  srai         s10, t5, 8
                  ori          s10, a6, -877
                  xor          t0, t1, s3
                  xor          s8, s7, s7
                  sltu         t1, gp, s0
                  slt          t5, gp, s0
                  addi         t5, a2, -134
                  sltiu        a6, s11, -144
                  slt          s6, s5, a6
                  bge          zero, s11, 461f
459:              beq          ra, a0, 464f
                  slli         s9, s0, 4
461:              slt          s3, s1, zero
                  blt          t2, a2, 469f
                  slt          t0, a3, s2
464:              srl          s2, s10, a5
                  or           s11, t3, t2
                  beq          t5, t4, 479f
                  sub          t0, s2, s8
                  lui          a3, 71340
469:              ori          s7, t6, -1385
                  bltu         t0, s6, 485f
                  slti         s7, ra, 118
                  bne          s5, t2, 492f
                  beq          a1, s3, 488f
                  auipc        s3, 176757
                  sltu         s1, zero, s7
                  ori          s5, s11, -1407
                  bne          a2, t4, 480f
                  ori          s3, s6, 551
479:              slli         s8, tp, 21
480:              bltu         s1, tp, 499f
                  sra          s3, a1, a7
                  sll          s10, s8, a3
                  andi         s4, s4, -1744
                  beq          t1, t4, 504f
485:              slti         s11, ra, 820
                  xori         s6, s9, 1468
                  ori          a3, a4, 240
488:              sll          s0, t3, a4
                  slti         t1, s10, 364
                  slti         t3, t4, -1821
                  andi         s1, s2, 2008
492:              lui          s3, 255726
                  sltiu        s9, s1, 1541
                  slt          t2, t4, a5
                  srli         s6, s2, 20
                  srai         t4, a7, 20
                  sub          t3, a0, s10
                  addi         a3, s11, 850
499:              srai         s11, s10, 23
                  slli         sp, s10, 17
                  xori         s7, a3, 506
                  slli         t3, s2, 4
                  or           t2, s2, tp
504:              bne          s9, t4, 515f
                  srl          s3, s11, s6
                  blt          a2, s3, 523f
                  sltu         s11, zero, s0
                  auipc        sp, 1022531
                  bltu         t4, s10, 510f
510:              ori          a4, s2, -1486
                  slt          t4, t1, a7
                  add          s7, a4, gp
                  slt          t4, t6, ra
                  nop
515:              bne          t5, zero, 518f
                  slt          s7, a5, a1
                  andi         s7, s2, 1549
518:              or           s7, a0, a7
                  beq          s9, a0, 523f
                  ori          s4, s0, -564
                  slli         t2, a0, 23
                  auipc        a0, 430298
523:              bgeu         s0, t2, 526f
                  sub          a5, a7, s8
                  srl          t0, a4, a1
526:              srl          t3, s6, a0
                  xori         s8, a4, 1514
                  ori          ra, t5, -1948
                  bltu         t3, s2, 542f
                  sll          s9, s0, a0
                  beq          a0, t1, 550f
                  sll          t3, s8, s9
                  xor          a4, s10, t4
                  slli         s7, s5, 16
                  bgeu         a3, s10, 544f
                  auipc        t0, 176117
                  srai         s4, a1, 21
                  sub          s0, a7, a3
                  bge          t3, t6, 547f
                  andi         s11, s2, -2009
                  beq          a0, s8, 545f
542:              srl          a0, gp, ra
                  auipc        s8, 739191
544:              sra          a3, s5, s7
545:              slt          a2, s8, s9
                  ori          s3, t5, -312
547:              xori         a1, s8, -2027
                  srli         t3, a7, 3
                  sll          t4, t0, s2
sub_4_2:          jal          a5, 7f
0:                jal          t1, 22f
1:                jal          t1, 12f
2:                jal          ra, 20f
3:                jal          t1, 6f
4:                jal          sp, 9f
5:                jal          a5, 10f
6:                jal          ra, 18f
7:                jal          t1, 14f
8:                jal          ra, 4b
9:                jal          ra, 15f
10:               jal          ra, 23f
11:               jal          ra, 1b
12:               jal          t1, 17f
13:               jal          ra, 5b
14:               jal          t0, 2b
15:               jal          s7, 11b
16:               jal          t0, 21f
17:               jal          t1, 24f
18:               jal          ra, 13b
19:               jal          t1, 3b
20:               jal          ra, 16b
21:               jal          ra, 19b
22:               jal          ra, 8b
23:               jal          t1, 0b
24:               auipc        a4, 474178
550:              ori          s6, s4, -476
                  blt          t2, t5, 554f
                  lui          s11, 367563
                  addi         s4, a6, -340
554:              beq          t4, t4, 559f
                  slli         a5, a2, 2
                  addi         t5, s6, -679
                  addi         ra, gp, 1673
                  and          s5, s1, t6
559:              ori          t4, s7, -1684
                  srl          s0, sp, t1
                  xor          a1, a6, s4
                  andi         s8, a7, -1021
                  slli         a0, zero, 3
                  slli         a1, s3, 27
                  and          s10, sp, a6
                  sra          a5, t0, t5
                  sltiu        gp, a0, 1551
                  bge          t5, a4, 571f
                  srl          s3, sp, sp
                  slli         s3, s3, 29
571:              ori          s1, s10, 1586
                  nop
                  nop
                  bne          zero, s0, 575f
575:              sra          gp, s7, s7
                  lw           a5, 4(t6)
                  sll          ra, a7, s2
                  sltu         t3, s6, tp
                  addi         t1, s8, 456
                  addi         t6, t6, 20
                  xor          a3, a2, s10
831:              addi x29, x15, 0
831:              jalr x29, x29, 0
sub_5:            srli         a4, s9, 16
                  or           zero, a1, a2
                  ori          s10, t6, -2009
                  blt          a6, s8, sub_5_stack_p
                  sra          t5, t1, a7
sub_5_stack_p:    addi         t6, t6, -44
                  lui          s6, 571265
                  sw           a5, 4(t6)
                  add          a0, a6, s6
                  auipc        s1, 701541
                  srai         s8, s4, 21
sub_5_0:          jal          a5, 1f
0:                jal          s2, 16f
1:                jal          t1, 6f
2:                jal          ra, 12f
3:                jal          ra, 5f
4:                jal          t1, 2b
5:                jal          t1, 17f
6:                jal          ra, 11f
7:                jal          ra, 13f
8:                jal          gp, 4b
9:                jal          t1, 8b
10:               jal          ra, 9b
11:               jal          ra, 14f
12:               jal          s7, 0b
13:               jal          s8, 15f
14:               jal          ra, 10b
15:               jal          t1, 3b
16:               jal          ra, 7b
17:               srl          s8, t2, ra
                  bltu         a3, s2, 5f
                  srai         a1, tp, 28
                  sll          a5, s6, s0
                  slli         s8, s1, 19
                  srl          s1, s10, t1
5:                sub          sp, a2, s5
                  ori          s5, t4, 811
                  blt          s8, s5, 10f
                  and          t3, a4, tp
                  add          zero, t4, t2
10:               auipc        s7, 109621
                  and          s1, a6, a2
                  slt          a2, t6, t0
                  sra          t1, t2, a3
                  sra          sp, s8, t0
                  addi         t4, ra, 1480
                  xor          s6, s4, s7
                  xori         t0, t3, 870
                  sra          a1, s5, s5
                  lui          s10, 472134
                  sltiu        s7, s2, 1998
                  bge          a6, t3, 24f
                  blt          a2, t4, 29f
                  sub          s6, t1, t3
24:               sub          a0, s10, s5
                  blt          s3, gp, 34f
                  srli         s1, s0, 21
                  srai         t4, ra, 1
                  bltu         ra, ra, 44f
29:               srli         zero, a2, 26
                  srai         ra, s1, 3
                  sltu         s4, gp, a3
                  slli         s9, s4, 17
                  beq          t3, t5, 47f
34:               bgeu         zero, gp, 36f
                  andi         t2, s7, 1876
36:               beq          gp, s9, 40f
                  and          a6, t2, s11
                  slt          s1, s2, sp
                  slt          t5, a7, t6
40:               srl          s10, t1, a2
                  srl          s3, s2, s10
                  sltu         s1, s6, s9
                  addi         t2, a0, -1774
44:               addi         s4, s11, 1352
                  or           a3, sp, a5
                  lui          zero, 104348
47:               beq          t1, s2, 56f
                  slt          s4, t4, gp
                  sll          t5, t6, a1
                  addi         t0, a6, 651
                  bgeu         s3, s1, 56f
                  srli         a6, ra, 23
                  sub          a6, s10, a5
                  sub          s11, t1, t3
                  xori         zero, a2, -225
56:               sltu         s5, t1, s0
                  srl          t5, ra, t5
                  slli         s7, s10, 1
                  lw           a5, 4(t6)
                  add          s0, a7, s3
                  addi         t6, t6, 44
                  sll          zero, sp, t4
93:               addi x19, x15, 0
93:               jalr x19, x19, 0
sub_2:            blt          zero, t3, sub_2_stack_p
                  nop
sub_2_stack_p:    addi         t6, t6, -48
                  auipc        a2, 278420
                  sw           a5, 4(t6)
                  sub          a3, s8, s10
                  add          zero, a3, s1
                  sra          ra, t6, a0
                  nop
                  sltu         s5, a7, s7
                  sub          sp, t6, s7
sub_2_28:         jal          a5, 8f
0:                jal          s0, 17f
1:                jal          ra, 19f
2:                jal          ra, 6f
3:                jal          ra, 0b
4:                jal          ra, 20f
5:                jal          ra, 16f
6:                jal          t0, 13f
7:                jal          s2, 5b
8:                jal          gp, 12f
9:                jal          ra, 14f
10:               jal          ra, 7b
11:               jal          ra, 18f
12:               jal          ra, 1b
13:               jal          s2, 11b
14:               jal          t0, 22f
15:               jal          t1, 21f
16:               jal          t1, 4b
17:               jal          a0, 2b
18:               jal          ra, 9b
19:               jal          t2, 15b
20:               jal          ra, 3b
21:               jal          ra, 10b
22:               ori          gp, s10, 1914
sub_2_23:         jal          a5, 10f
0:                jal          s5, 5f
1:                jal          a6, 9f
2:                jal          sp, 4f
3:                jal          ra, 11f
4:                jal          t1, 19f
5:                jal          ra, 1b
6:                jal          ra, 17f
7:                jal          t1, 15f
8:                jal          t1, 18f
9:                jal          ra, 16f
10:               jal          ra, 7b
11:               jal          ra, 6b
12:               jal          ra, 3b
13:               jal          ra, 2b
14:               jal          t1, 13b
15:               jal          ra, 0b
16:               jal          ra, 8b
17:               jal          ra, 14b
18:               jal          ra, 12b
19:               nop
sub_2_21:         jal          a5, 2f
0:                jal          s1, 3f
1:                jal          ra, 15f
2:                jal          ra, 6f
3:                jal          ra, 12f
4:                jal          ra, 10f
5:                jal          t1, 4b
6:                jal          t2, 16f
7:                jal          ra, 5b
8:                jal          ra, 18f
9:                jal          t1, 17f
10:               jal          t0, 9b
11:               jal          s10, 1b
12:               jal          ra, 7b
13:               jal          ra, 11b
14:               jal          s4, 0b
15:               jal          ra, 8b
16:               jal          t1, 14b
17:               jal          ra, 13b
18:               jal          ra, 19f
19:               andi         s1, t5, 1672
sub_2_10:         jal          a5, 2f
0:                jal          ra, 4f
1:                jal          ra, 8f
2:                jal          s2, 7f
3:                jal          sp, 9f
4:                jal          t1, 16f
5:                jal          s0, 14f
6:                jal          t1, 10f
7:                jal          ra, 1b
8:                jal          t1, 3b
9:                jal          t1, 13f
10:               jal          a5, 12f
11:               jal          t4, 5b
12:               jal          ra, 11b
13:               jal          ra, 15f
14:               jal          t0, 17f
15:               jal          t1, 0b
16:               jal          ra, 6b
17:               sltu         a3, t2, a3
sub_2_32:         jal          a5, 4f
0:                jal          ra, 21f
1:                jal          t2, 11f
2:                jal          t1, 16f
3:                jal          s7, 12f
4:                jal          ra, 5f
5:                jal          ra, 3b
6:                jal          ra, 14f
7:                jal          ra, 19f
8:                jal          t1, 0b
9:                jal          t0, 7b
10:               jal          ra, 9b
11:               jal          t1, 13f
12:               jal          gp, 2b
13:               jal          t0, 8b
14:               jal          ra, 10b
15:               jal          t1, 17f
16:               jal          a3, 18f
17:               jal          ra, 6b
18:               jal          t1, 15b
19:               jal          s0, 20f
20:               jal          a5, 1b
21:               nop
sub_2_0:          jal          a5, 19f
0:                jal          ra, 13f
1:                jal          ra, 15f
2:                jal          t1, 12f
3:                jal          ra, 11f
4:                jal          ra, 20f
5:                jal          ra, 1b
6:                jal          s0, 21f
7:                jal          ra, 23f
8:                jal          s7, 5b
9:                jal          ra, 17f
10:               jal          ra, 6b
11:               jal          ra, 2b
12:               jal          ra, 4b
13:               jal          t0, 16f
14:               jal          a5, 8b
15:               jal          t3, 10b
16:               jal          ra, 14b
17:               jal          s0, 3b
18:               jal          t1, 22f
19:               jal          t1, 18b
20:               jal          a3, 7b
21:               jal          gp, 9b
22:               jal          a5, 0b
23:               jal          t1, 24f
24:               ori          t1, s3, 918
sub_2_20:         jal          a5, 2f
0:                jal          s3, 7f
1:                jal          ra, 8f
2:                jal          ra, 6f
3:                jal          ra, 0b
4:                jal          t1, 5f
5:                jal          ra, 1b
6:                jal          ra, 3b
7:                jal          t0, 4b
8:                jal          ra, 10f
9:                jal          t1, 11f
10:               jal          a4, 9b
11:               sub          gp, s10, t2
sub_2_8:          jal          a5, 11f
0:                jal          t1, 14f
1:                jal          ra, 17f
2:                jal          s0, 4f
3:                jal          gp, 16f
4:                jal          a1, 18f
5:                jal          s7, 12f
6:                jal          ra, 10f
7:                jal          ra, 9f
8:                jal          ra, 1b
9:                jal          s10, 20f
10:               jal          t4, 5b
11:               jal          ra, 3b
12:               jal          ra, 7b
13:               jal          s8, 2b
14:               jal          ra, 6b
15:               jal          ra, 8b
16:               jal          ra, 13b
17:               jal          ra, 19f
18:               jal          t1, 0b
19:               jal          ra, 21f
20:               jal          t1, 15b
21:               slli         a3, t2, 23
sub_2_1:          jal          a5, 4f
0:                jal          t1, 5f
1:                jal          ra, 13f
2:                jal          ra, 3f
3:                jal          t1, 24f
4:                jal          ra, 27f
5:                jal          ra, 16f
6:                jal          t1, 23f
7:                jal          ra, 17f
8:                jal          t1, 21f
9:                jal          s4, 0b
10:               jal          s4, 25f
11:               jal          t1, 10b
12:               jal          t5, 20f
13:               jal          ra, 22f
14:               jal          t1, 6b
15:               jal          ra, 26f
16:               jal          ra, 14b
17:               jal          sp, 12b
18:               jal          ra, 11b
19:               jal          ra, 28f
20:               jal          a0, 9b
21:               jal          ra, 2b
22:               jal          sp, 15b
23:               jal          ra, 19b
24:               jal          ra, 7b
25:               jal          s0, 8b
26:               jal          ra, 18b
27:               jal          ra, 1b
28:               ori          s9, s3, 790
sub_2_26:         jal          a5, 12f
0:                jal          ra, 18f
1:                jal          t1, 21f
2:                jal          t1, 27f
3:                jal          t1, 11f
4:                jal          s10, 7f
5:                jal          ra, 2b
6:                jal          t1, 3b
7:                jal          s4, 20f
8:                jal          ra, 6b
9:                jal          a0, 16f
10:               jal          s10, 5b
11:               jal          t1, 17f
12:               jal          t1, 0b
13:               jal          ra, 1b
14:               jal          ra, 26f
15:               jal          ra, 10b
16:               jal          sp, 28f
17:               jal          ra, 9b
18:               jal          ra, 22f
19:               jal          ra, 4b
20:               jal          ra, 8b
21:               jal          t1, 23f
22:               jal          ra, 13b
23:               jal          s11, 24f
24:               jal          ra, 15b
25:               jal          gp, 14b
26:               jal          ra, 19b
27:               jal          ra, 25b
28:               lui          s8, 147792
sub_2_29:         jal          a5, 14f
0:                jal          ra, 10f
1:                jal          ra, 9f
2:                jal          s4, 7f
3:                jal          t0, 23f
4:                jal          a4, 3b
5:                jal          t1, 16f
6:                jal          t1, 13f
7:                jal          ra, 0b
8:                jal          a2, 1b
9:                jal          s11, 12f
10:               jal          ra, 24f
11:               jal          t1, 17f
12:               jal          sp, 20f
13:               jal          t1, 8b
14:               jal          ra, 15f
15:               jal          ra, 21f
16:               jal          s9, 22f
17:               jal          sp, 2b
18:               jal          sp, 11b
19:               jal          a2, 18b
20:               jal          ra, 19b
21:               jal          t1, 4b
22:               jal          sp, 6b
23:               jal          ra, 5b
24:               xor          a5, ra, t3
sub_2_14:         jal          a5, 3f
0:                jal          ra, 2f
1:                jal          t1, 17f
2:                jal          ra, 18f
3:                jal          t1, 21f
4:                jal          ra, 16f
5:                jal          s0, 13f
6:                jal          ra, 14f
7:                jal          ra, 23f
8:                jal          a5, 19f
9:                jal          gp, 15f
10:               jal          gp, 22f
11:               jal          t1, 6b
12:               jal          ra, 1b
13:               jal          t1, 8b
14:               jal          s7, 4b
15:               jal          ra, 20f
16:               jal          ra, 7b
17:               jal          gp, 10b
18:               jal          t1, 12b
19:               jal          ra, 9b
20:               jal          s11, 0b
21:               jal          ra, 11b
22:               jal          ra, 24f
23:               jal          ra, 5b
24:               srli         t2, t6, 1
sub_2_5:          jal          a5, 14f
0:                jal          ra, 23f
1:                jal          ra, 16f
2:                jal          ra, 20f
3:                jal          ra, 12f
4:                jal          t1, 0b
5:                jal          s8, 4b
6:                jal          ra, 21f
7:                jal          s7, 6b
8:                jal          t4, 24f
9:                jal          t1, 1b
10:               jal          ra, 13f
11:               jal          s7, 2b
12:               jal          s8, 15f
13:               jal          ra, 7b
14:               jal          s6, 22f
15:               jal          t1, 5b
16:               jal          ra, 11b
17:               jal          t0, 8b
18:               jal          ra, 10b
19:               jal          sp, 17b
20:               jal          ra, 19b
21:               jal          ra, 9b
22:               jal          ra, 3b
23:               jal          ra, 18b
24:               sltu         a3, a5, t1
sub_2_6:          jal          a5, 2f
0:                jal          t1, 5f
1:                jal          ra, 11f
2:                jal          ra, 1b
3:                jal          ra, 0b
4:                jal          t1, 13f
5:                jal          a4, 14f
6:                jal          t1, 15f
7:                jal          ra, 4b
8:                jal          t4, 7b
9:                jal          ra, 16f
10:               jal          ra, 12f
11:               jal          gp, 6b
12:               jal          t1, 9b
13:               jal          ra, 3b
14:               jal          ra, 10b
15:               jal          ra, 8b
16:               and          t5, a5, a2
sub_2_15:         jal          a5, 20f
0:                jal          t0, 6f
1:                jal          ra, 8f
2:                jal          t1, 9f
3:                jal          t4, 1b
4:                jal          s0, 10f
5:                jal          t1, 11f
6:                jal          t1, 5b
7:                jal          ra, 4b
8:                jal          ra, 7b
9:                jal          ra, 19f
10:               jal          ra, 14f
11:               jal          t0, 3b
12:               jal          ra, 22f
13:               jal          ra, 0b
14:               jal          s4, 21f
15:               jal          ra, 17f
16:               jal          ra, 15b
17:               jal          t1, 13b
18:               jal          ra, 12b
19:               jal          t2, 18b
20:               jal          a0, 16b
21:               jal          t1, 2b
22:               jal          s2, 23f
23:               jal          a2, 24f
24:               auipc        s8, 45525
sub_2_18:         jal          a5, 22f
0:                jal          t1, 7f
1:                jal          ra, 24f
2:                jal          a6, 18f
3:                jal          t2, 8f
4:                jal          s8, 16f
5:                jal          sp, 1b
6:                jal          ra, 4b
7:                jal          t5, 12f
8:                jal          t1, 2b
9:                jal          t1, 11f
10:               jal          t3, 0b
11:               jal          t1, 23f
12:               jal          t1, 6b
13:               jal          ra, 15f
14:               jal          gp, 21f
15:               jal          t1, 3b
16:               jal          ra, 14b
17:               jal          ra, 20f
18:               jal          ra, 17b
19:               jal          a3, 9b
20:               jal          t1, 10b
21:               jal          ra, 19b
22:               jal          t1, 13b
23:               jal          ra, 5b
24:               jal          ra, 25f
25:               srai         s10, a1, 28
sub_2_30:         jal          a5, 9f
0:                jal          t1, 1f
1:                jal          ra, 3f
2:                jal          ra, 8f
3:                jal          ra, 7f
4:                jal          t3, 5f
5:                jal          t1, 11f
6:                jal          t1, 10f
7:                jal          ra, 6b
8:                jal          ra, 4b
9:                jal          s5, 0b
10:               jal          ra, 2b
11:               slt          s6, s4, a6
sub_2_11:         jal          a5, 6f
0:                jal          s6, 9f
1:                jal          ra, 12f
2:                jal          a4, 5f
3:                jal          t1, 0b
4:                jal          t0, 7f
5:                jal          ra, 1b
6:                jal          t1, 10f
7:                jal          ra, 8f
8:                jal          t1, 11f
9:                jal          t0, 2b
10:               jal          ra, 4b
11:               jal          s5, 3b
12:               andi         s8, s7, -1887
sub_2_13:         jal          a5, 20f
0:                jal          ra, 29f
1:                jal          ra, 4f
2:                jal          ra, 27f
3:                jal          ra, 19f
4:                jal          ra, 22f
5:                jal          t4, 23f
6:                jal          ra, 15f
7:                jal          s1, 5b
8:                jal          t4, 24f
9:                jal          ra, 8b
10:               jal          t1, 2b
11:               jal          ra, 6b
12:               jal          a3, 11b
13:               jal          ra, 1b
14:               jal          s7, 10b
15:               jal          s9, 26f
16:               jal          t2, 18f
17:               jal          gp, 0b
18:               jal          ra, 12b
19:               jal          ra, 30f
20:               jal          ra, 17b
21:               jal          ra, 7b
22:               jal          ra, 14b
23:               jal          ra, 16b
24:               jal          s8, 13b
25:               jal          ra, 21b
26:               jal          ra, 9b
27:               jal          s9, 28f
28:               jal          ra, 3b
29:               jal          ra, 25b
30:               xor          s2, zero, a6
sub_2_3:          jal          a5, 2f
0:                jal          ra, 7f
1:                jal          ra, 6f
2:                jal          ra, 1b
3:                jal          ra, 4f
4:                jal          ra, 0b
5:                jal          ra, 10f
6:                jal          ra, 8f
7:                jal          ra, 5b
8:                jal          t1, 9f
9:                jal          ra, 3b
10:               lui          t0, 291192
sub_2_4:          jal          a5, 26f
0:                jal          ra, 5f
1:                jal          ra, 12f
2:                jal          ra, 4f
3:                jal          ra, 0b
4:                jal          ra, 25f
5:                jal          ra, 9f
6:                jal          t5, 20f
7:                jal          ra, 19f
8:                jal          t0, 1b
9:                jal          ra, 24f
10:               jal          a4, 30f
11:               jal          ra, 28f
12:               jal          sp, 23f
13:               jal          ra, 17f
14:               jal          a3, 29f
15:               jal          ra, 2b
16:               jal          ra, 15b
17:               jal          t1, 11b
18:               jal          ra, 21f
19:               jal          a6, 22f
20:               jal          ra, 3b
21:               jal          ra, 10b
22:               jal          ra, 13b
23:               jal          a3, 16b
24:               jal          gp, 14b
25:               jal          ra, 18b
26:               jal          s9, 6b
27:               jal          t5, 7b
28:               jal          t0, 8b
29:               jal          t1, 27b
30:               nop
sub_2_31:         jal          a5, 4f
0:                jal          s1, 3f
1:                jal          t3, 5f
2:                jal          t3, 1b
3:                jal          ra, 9f
4:                jal          t1, 8f
5:                jal          ra, 6f
6:                jal          ra, 0b
7:                jal          ra, 10f
8:                jal          t1, 2b
9:                jal          sp, 7b
10:               lui          a1, 707924
sub_2_17:         jal          a5, 13f
0:                jal          sp, 4f
1:                jal          ra, 12f
2:                jal          a3, 17f
3:                jal          s7, 0b
4:                jal          t1, 1b
5:                jal          s1, 10f
6:                jal          ra, 15f
7:                jal          a4, 11f
8:                jal          ra, 14f
9:                jal          ra, 8b
10:               jal          s10, 21f
11:               jal          ra, 3b
12:               jal          ra, 2b
13:               jal          t1, 18f
14:               jal          t1, 7b
15:               jal          s0, 20f
16:               jal          ra, 6b
17:               jal          a4, 22f
18:               jal          ra, 5b
19:               jal          ra, 9b
20:               jal          ra, 19b
21:               jal          t1, 16b
22:               xori         sp, t0, 1465
sub_2_7:          jal          a5, 16f
0:                jal          ra, 17f
1:                jal          ra, 2f
2:                jal          t2, 11f
3:                jal          ra, 12f
4:                jal          ra, 8f
5:                jal          s0, 4b
6:                jal          ra, 19f
7:                jal          t0, 9f
8:                jal          ra, 13f
9:                jal          a1, 18f
10:               jal          ra, 6b
11:               jal          ra, 10b
12:               jal          ra, 7b
13:               jal          s6, 1b
14:               jal          t3, 15f
15:               jal          ra, 0b
16:               jal          t1, 14b
17:               jal          s2, 3b
18:               jal          ra, 5b
19:               slt          s4, a5, a0
sub_2_25:         jal          a5, 6f
0:                jal          ra, 10f
1:                jal          ra, 11f
2:                jal          t1, 1b
3:                jal          t5, 0b
4:                jal          ra, 7f
5:                jal          s0, 2b
6:                jal          ra, 9f
7:                jal          t1, 18f
8:                jal          t1, 3b
9:                jal          t0, 15f
10:               jal          ra, 4b
11:               jal          s9, 14f
12:               jal          sp, 8b
13:               jal          ra, 5b
14:               jal          gp, 16f
15:               jal          gp, 17f
16:               jal          ra, 12b
17:               jal          ra, 13b
18:               sub          sp, a5, s7
                  xor          s1, a4, t2
                  srli         s3, tp, 7
                  add          a0, a5, a0
                  sltiu        t3, s2, -502
                  sltu         a0, s0, a3
                  and          a4, s5, s8
                  sll          t5, a3, ra
                  srl          zero, a5, zero
                  add          s11, s3, s1
                  bge          s8, s6, 22f
                  sra          t1, s8, a5
                  bne          s1, s10, 24f
                  sltiu        s2, s1, 255
                  auipc        ra, 77033
                  and          s7, a7, s1
                  srai         s3, t0, 9
                  sltiu        a4, t5, -1668
                  or           s8, t4, a7
                  sltiu        gp, s5, 1662
                  srai         t5, sp, 22
                  srli         a6, s1, 30
                  sra          t1, s8, s2
22:               addi         a4, sp, -634
                  bge          t0, s1, 26f
24:               sltiu        t3, a7, 1835
                  addi         a0, s7, 1896
26:               slli         t2, s11, 20
                  srai         s11, s10, 21
                  add          t4, a5, t6
                  sra          s5, a6, a4
                  sltiu        a5, s10, 76
                  xor          s5, t4, s5
                  ori          t2, t3, 385
                  bgeu         s0, s5, 49f
                  beq          s7, zero, 50f
                  bne          t3, a4, 53f
                  auipc        s3, 735304
                  sltiu        t3, a0, 538
                  and          a3, ra, a3
                  slti         t5, s0, 1301
                  bne          s2, a5, 60f
                  sra          s3, t4, t3
                  auipc        gp, 767245
                  xori         t4, a0, -447
                  sll          t1, s0, s11
                  slli         s1, zero, 30
                  lui          t3, 470499
                  add          s2, a1, gp
                  ori          zero, sp, 294
49:               slt          a6, t5, gp
50:               beq          s8, s10, 61f
                  auipc        a6, 107762
                  and          t0, t6, sp
53:               or           t3, a0, s7
                  slli         s3, sp, 0
                  sub          s5, s5, s3
                  srli         zero, s0, 6
                  blt          tp, tp, 69f
                  andi         a1, t3, 1147
                  lui          s5, 454159
60:               sll          t3, s6, a6
61:               bltu         t2, t5, 69f
                  bltu         a3, s8, 78f
                  bne          s2, ra, 78f
                  bltu         t2, t0, 66f
                  slt          s7, gp, s6
66:               bgeu         gp, t0, 83f
                  lui          ra, 941637
                  slti         a2, s11, -497
69:               slti         s4, t3, 1845
                  bltu         s6, t3, 75f
                  xori         a5, t4, -149
                  sltiu        sp, a6, -373
                  addi         a0, t0, -266
                  add          t4, s0, a7
75:               auipc        s2, 433362
                  srl          s7, a5, s3
                  sltu         a2, s8, gp
78:               lui          zero, 149202
                  and          a4, s6, s3
                  blt          a4, s8, 87f
                  addi         a6, a2, -1665
                  xori         s3, a3, 27
83:               srai         gp, a5, 22
                  sll          s10, a7, s8
                  lui          ra, 944663
                  slti         ra, s4, 625
87:               beq          t0, a1, 93f
                  ori          t1, t0, -391
                  bltu         t3, s9, 94f
                  addi         t5, t3, -656
                  blt          s0, s6, 109f
                  add          s2, a6, ra
93:               and          s7, s0, a3
94:               slt          sp, ra, zero
                  or           a2, t1, a0
                  bltu         s1, s2, 111f
                  sub          s0, a4, tp
                  add          s10, a3, a2
                  bge          t2, s4, 103f
                  auipc        s11, 585766
                  slli         sp, a4, 0
                  srai         a0, a3, 29
103:              ori          a0, ra, 1882
                  bge          ra, s4, 113f
                  beq          s7, s1, 117f
                  sltu         a2, t2, a7
                  bge          s7, t5, 112f
                  auipc        t5, 828810
109:              add          t1, t4, t1
                  sra          s3, zero, t1
111:              sra          s6, a2, a4
112:              auipc        t3, 376518
113:              srai         s2, s7, 1
                  srl          s8, a2, a7
                  and          a3, s11, s8
                  bne          a2, zero, 122f
117:              lui          a1, 380640
                  blt          t6, a0, 122f
                  bltu         s9, a6, 123f
                  beq          a1, a1, 139f
                  bne          s2, ra, 125f
122:              bgeu         a2, gp, 128f
123:              and          sp, zero, tp
                  xori         s7, a6, 1511
125:              sra          s0, s4, t1
                  xori         t1, t2, -963
                  nop
128:              srli         sp, s10, 14
                  sub          t0, a5, s5
                  xori         sp, a3, -1963
                  sra          a1, s3, s7
                  xori         s6, t4, -595
                  lui          s7, 179265
                  bgeu         a5, a3, 146f
                  and          sp, ra, s5
                  slti         a2, a2, -1388
                  slt          a1, s5, ra
                  srli         s8, s0, 27
139:              xor          s2, s3, t6
                  andi         t2, s6, 1733
                  blt          a5, s10, 159f
                  addi         zero, t3, -490
                  slti         a3, s4, -2
                  slt          s0, t4, a1
                  bltu         t4, t6, 156f
146:              sltiu        s6, a5, -638
                  srli         t5, s6, 27
                  xori         s1, s0, 1493
                  bge          t6, a1, 155f
                  or           a3, s10, ra
                  sltu         t4, t4, s0
                  bge          a5, s11, 154f
                  bne          t3, t4, 170f
154:              bltu         tp, gp, 159f
155:              sra          ra, a3, tp
156:              sub          zero, t4, tp
                  beq          s3, t4, 177f
                  beq          s11, s3, 162f
159:              srai         a5, a3, 27
                  bgeu         a5, s11, 167f
                  slli         a3, t1, 12
162:              slli         s5, tp, 1
                  sub          zero, s11, ra
                  or           t3, s8, s3
                  sra          a3, s4, a5
                  xor          s9, s0, t4
167:              andi         t1, t1, -1008
                  sll          a0, s9, a3
                  addi         s1, t0, -513
170:              xor          a3, a6, gp
                  and          s11, a2, s11
                  xori         gp, a2, 1914
                  xori         s3, ra, -657
                  srl          t3, s10, t3
                  auipc        s7, 1040169
                  bge          s5, s6, 181f
177:              add          a4, tp, s5
                  sltu         s6, t0, s7
                  sltu         ra, a7, zero
                  xor          s2, a6, a3
181:              add          a6, a5, t6
                  addi         a1, t2, -964
                  blt          s8, t0, 189f
                  xor          t1, t2, s10
                  or           s1, a5, tp
                  sll          a3, a0, s1
                  auipc        a1, 646094
                  slli         t2, t3, 30
189:              slt          a0, a7, s10
                  bne          a6, s3, 205f
                  addi         t1, t0, 292
                  slti         t5, gp, -1158
                  srl          gp, a2, gp
                  srl          s11, s11, tp
                  slli         t2, t6, 18
                  andi         s0, t2, 1281
                  slt          s6, t6, a1
                  sub          a3, t4, tp
                  sltu         t2, t5, a2
                  sll          s9, s6, s2
                  sltu         a6, s3, s2
                  sra          t3, gp, a7
                  lui          s6, 919779
                  auipc        zero, 48474
205:              slli         s6, a3, 0
                  sltiu        t0, t5, 547
                  sll          s7, sp, zero
                  slli         t4, a1, 2
                  auipc        a0, 480923
                  ori          a2, zero, 1044
                  sltu         s5, gp, s7
                  slt          gp, t0, t3
                  or           s0, s6, zero
                  slt          s7, t5, a1
                  xori         t4, t1, 2025
                  bltu         s1, a1, 229f
                  ori          t3, t3, 388
                  bne          t5, tp, 237f
                  auipc        s7, 759935
                  sub          s7, s6, t5
                  sra          sp, t0, a1
                  add          s0, a1, s5
                  addi         a4, a3, -2046
                  sll          gp, s6, s7
                  sltu         a6, s10, s6
                  xor          t3, a7, ra
                  sra          s11, t5, a5
                  slli         t4, s3, 8
229:              sltiu        ra, s11, -269
                  sra          zero, s2, s11
                  and          t2, s7, s1
                  lui          s3, 340396
                  sltu         s7, s7, s8
                  xor          a6, t5, tp
                  sra          gp, t2, a3
                  lui          t4, 218469
237:              sra          s0, t5, s2
                  slli         sp, s11, 23
                  sub          t5, a1, t6
                  bltu         s6, s4, 249f
                  ori          t4, ra, -1115
                  nop
                  nop
                  bgeu         s7, a3, 248f
                  sll          a5, a6, sp
                  slti         s6, s3, -569
                  srl          a4, s7, gp
248:              srai         s6, s10, 10
249:              or           sp, t1, a1
                  bgeu         t3, ra, 258f
                  sltu         s8, a0, s0
                  auipc        s1, 791996
                  addi         s8, gp, 1241
                  beq          s1, t1, 258f
                  beq          t4, t6, 271f
                  ori          a0, ra, -1082
                  and          zero, s7, s7
258:              sltiu        a0, s2, 1081
                  bgeu         s1, s1, 277f
                  nop
                  srl          a0, zero, s4
                  addi         s3, s4, -1744
                  beq          ra, s6, 267f
                  slli         s1, s10, 25
                  sltu         a6, t0, s1
                  sltu         a0, s3, a5
267:              slt          s9, a4, s9
                  srli         a0, a3, 9
                  lui          a1, 446636
                  lui          s1, 384192
271:              andi         t3, s0, 910
                  sra          a0, s8, t6
                  addi         t1, t2, -203
                  srai         a5, t6, 20
                  andi         a2, sp, -10
                  sltu         s4, tp, t6
277:              sltu         s9, ra, ra
                  slti         s7, gp, -847
                  bne          t2, s11, 292f
                  sub          s0, s5, t6
                  slli         a5, s3, 15
                  nop
                  or           t4, a0, t2
                  slli         s11, zero, 28
                  slti         t5, gp, -1297
                  xori         t0, t2, 1909
                  ori          s9, a6, -1169
                  sltiu        s7, a0, -1163
                  srli         t4, s0, 3
                  lui          s6, 248926
                  sll          s8, a7, a1
292:              sll          a1, s5, a7
                  slli         s8, t3, 28
                  auipc        t3, 546471
                  add          ra, t1, a6
                  bgeu         t1, s11, 302f
                  slli         s4, t1, 6
                  bne          a0, a5, 313f
                  sltu         s0, s1, s4
                  auipc        s5, 726087
                  slt          a3, t1, t5
302:              auipc        s9, 812897
                  bgeu         a1, t2, 306f
                  xor          t1, a6, s1
                  bne          t2, a6, 310f
306:              slti         s6, a7, 1296
                  sra          sp, s8, t6
                  bge          s3, s5, 324f
                  sltiu        gp, s9, 118
310:              slli         a2, a1, 20
                  bne          tp, t3, 327f
                  and          gp, s7, tp
313:              slli         sp, a4, 4
                  bge          a5, a6, 326f
                  srai         s0, a7, 9
                  auipc        t2, 518361
                  sub          s0, s2, a1
                  sll          s2, a2, s0
                  lui          gp, 248364
                  blt          a5, t0, 336f
                  sra          s11, t4, sp
                  and          a2, s0, a0
                  slt          a5, s2, s2
324:              addi         s4, t4, 1609
                  sub          s0, t0, t2
326:              sltu         t3, gp, gp
327:              auipc        a6, 483289
                  blt          t3, a4, 336f
                  addi         s6, s0, -1807
                  sltiu        a4, t0, 1715
                  slti         t1, s9, -298
                  slli         s3, gp, 18
                  xor          a5, tp, s8
                  xori         t1, a7, -1625
                  slt          s6, gp, a6
336:              addi         s2, s2, 727
                  bge          a5, sp, 355f
                  bgeu         t1, a2, 350f
                  add          t1, t4, zero
                  bne          s6, t1, 344f
                  srai         t2, s2, 19
                  srli         a4, sp, 31
                  blt          s1, s8, 354f
344:              addi         s4, a6, 958
                  sub          a2, zero, a1
                  beq          a4, t1, 359f
                  sltiu        t4, t1, -535
                  blt          gp, t3, 351f
                  sll          a1, s4, t3
350:              lui          a0, 871412
351:              bge          s9, t0, 357f
                  slt          a1, a2, t0
                  sltiu        s10, a2, 1488
354:              add          zero, a3, s1
355:              and          s2, s1, zero
                  or           s10, t0, s0
357:              srli         s0, s7, 26
                  srli         t1, s10, 12
359:              slt          s1, a7, a4
                  slli         a4, t0, 26
                  or           a3, s5, a1
                  sra          a6, tp, a0
                  srl          t4, tp, t1
                  blt          a0, ra, 373f
                  auipc        a2, 490107
                  xori         s5, t6, -279
                  bltu         s6, s11, 372f
                  add          s4, t4, t4
                  sltu         s3, a5, s7
                  srl          s1, a6, a0
                  sltu         t5, a5, t6
372:              sll          s7, t5, t3
373:              lui          s1, 859439
                  sltiu        s0, s10, -234
                  bne          a2, s3, 380f
                  slt          t2, t0, a1
                  slti         a5, s6, 1923
                  lui          s0, 45727
                  bltu         a2, a4, 385f
380:              nop
                  bge          a1, s6, 396f
                  bge          s3, a5, 386f
                  srai         s6, s5, 16
                  bge          gp, s7, 386f
385:              sltu         gp, s9, s8
386:              bge          s11, a6, 402f
                  sub          t2, s2, s9
                  srli         s1, t1, 29
                  and          s10, s4, a7
                  nop
                  addi         t2, a5, -324
                  bgeu         a7, sp, 396f
                  auipc        a5, 645948
                  lui          s2, 184124
                  lui          s10, 926556
396:              blt          gp, s7, 416f
                  srli         s0, a2, 21
                  srli         zero, a0, 20
                  add          s8, a1, s11
                  beq          s6, t5, 405f
                  addi         s4, a6, 624
402:              srl          s11, s11, t0
                  auipc        t3, 324379
                  addi         t1, s5, 809
405:              sll          s10, a5, s2
                  srli         a1, t0, 13
                  slti         t5, s2, -1444
                  bgeu         s10, a0, 420f
                  bne          s0, a1, 413f
                  add          s5, zero, t5
                  srli         s1, ra, 5
                  srai         a3, s9, 21
413:              bgeu         gp, s10, 432f
                  or           s5, s5, s2
                  xor          s11, s10, a7
416:              ori          s3, s2, 717
                  or           s8, ra, a6
                  slli         sp, t5, 24
                  xori         ra, a1, 754
420:              slli         a2, a5, 16
                  bltu         s9, s4, 438f
                  nop
                  sll          s8, sp, a1
                  sub          s10, t2, s2
                  slt          t0, a2, t5
                  lui          s7, 169650
                  sltiu        t5, s2, 207
                  auipc        a5, 270295
                  srli         s2, s11, 10
                  sltu         t0, s3, gp
                  sltu         s9, t6, s5
432:              bge          gp, a4, 439f
                  sltiu        a2, s8, -901
                  or           t0, t6, tp
                  and          t3, t5, s11
                  bgeu         s2, ra, 452f
                  add          s5, tp, t5
438:              addi         s11, zero, -2030
439:              sub          a1, t6, s9
                  blt          t5, a7, 455f
                  andi         t3, s8, -686
                  sra          s4, a2, t6
                  lui          a0, 747940
                  nop
                  ori          s9, t0, -338
                  beq          s1, a7, 459f
                  andi         s10, s3, -960
                  and          s4, a5, t1
                  sll          s10, s6, a1
                  bne          a5, a4, 456f
                  slt          s6, a4, s1
452:              ori          a5, s3, 508
                  beq          a0, s1, 471f
                  bne          t1, ra, 465f
455:              bge          a4, s7, 460f
456:              nop
                  and          a5, s9, sp
                  srl          gp, s3, s4
459:              xori         s11, gp, 1101
460:              slli         s8, tp, 18
                  addi         s0, gp, -1514
                  addi         t2, s8, 366
                  bltu         s2, tp, 482f
                  slti         a1, a0, 1185
465:              andi         s9, tp, -1177
                  beq          s8, a3, 470f
                  bltu         t2, t4, 480f
                  bne          ra, s1, 488f
                  or           ra, sp, a6
470:              add          t2, t5, s4
471:              bltu         t5, t3, 486f
                  andi         s9, s1, 1094
                  slt          ra, sp, s6
                  beq          t3, s10, 480f
                  bltu         t1, t6, 488f
                  bltu         t3, a3, 480f
                  sra          s9, t4, a6
                  add          ra, s0, ra
                  and          a5, s2, s7
480:              addi         a1, s0, -1858
                  andi         s8, s2, 1835
sub_2_9:          jal          a5, 13f
0:                jal          t1, 14f
1:                jal          ra, 4f
2:                jal          ra, 16f
3:                jal          ra, 12f
4:                jal          t1, 15f
5:                jal          ra, 25f
6:                jal          ra, 22f
7:                jal          t1, 2b
8:                jal          ra, 5b
9:                jal          ra, 24f
10:               jal          gp, 9b
11:               jal          t1, 0b
12:               jal          ra, 11b
13:               jal          ra, 1b
14:               jal          ra, 18f
15:               jal          ra, 19f
16:               jal          t0, 21f
17:               jal          ra, 7b
18:               jal          t1, 17b
19:               jal          sp, 20f
20:               jal          t1, 10b
21:               jal          ra, 6b
22:               jal          s7, 23f
23:               jal          t5, 8b
24:               jal          ra, 3b
25:               sub          t3, a0, s11
482:              bne          s10, s8, 490f
                  bltu         a2, t5, 500f
                  sltiu        s2, a5, -1409
                  srl          t4, s5, s5
486:              slli         s7, t1, 13
                  nop
488:              bne          t5, s3, 500f
                  bgeu         t4, zero, 507f
490:              blt          s0, s2, 499f
                  bltu         s7, t1, 493f
                  or           sp, a3, s7
493:              sltiu        a0, zero, -1878
                  nop
                  srl          t1, s5, ra
                  auipc        s5, 35364
                  or           a5, a3, s9
                  nop
499:              slti         s2, a3, 95
500:              sra          t0, s3, t6
                  sltiu        gp, sp, 426
                  sltiu        a5, s4, -2008
                  sltiu        a2, s5, 1223
                  sltiu        s11, t4, 779
                  srli         a3, t5, 18
                  bge          a6, s10, 521f
507:              xor          gp, s5, a3
                  blt          s3, ra, 512f
                  beq          ra, a1, 525f
                  sltu         s5, s1, s6
                  blt          tp, ra, 527f
sub_2_16:         jal          a5, 4f
0:                jal          gp, 9f
1:                jal          ra, 11f
2:                jal          ra, 10f
3:                jal          ra, 14f
4:                jal          t5, 12f
5:                jal          s7, 0b
6:                jal          ra, 8f
7:                jal          t0, 13f
8:                jal          ra, 1b
9:                jal          s4, 3b
10:               jal          ra, 5b
11:               jal          s11, 15f
12:               jal          t1, 7b
13:               jal          ra, 2b
14:               jal          ra, 6b
15:               sltu         t5, t4, a5
512:              blt          s5, s10, 518f
                  blt          tp, a0, 518f
                  blt          s11, zero, 519f
                  sltu         a1, t2, a4
                  sltiu        gp, sp, -391
                  slli         a3, a0, 20
518:              add          t2, t3, t2
519:              or           t2, s8, a4
                  slti         t4, s4, -100
521:              auipc        gp, 793931
                  sll          a3, s10, s1
                  sltu         t0, a5, gp
                  auipc        a4, 687031
525:              bne          s10, s8, 532f
                  xori         t4, s0, -542
527:              slt          a5, tp, s8
                  srl          s2, s1, t2
                  add          zero, s3, a4
                  sra          a1, t4, t3
                  or           sp, t6, a0
532:              auipc        t3, 222888
                  blt          a1, s11, 539f
                  blt          a0, s1, 552f
                  bltu         s1, t5, 538f
                  lui          sp, 18348
                  srai         a2, sp, 12
538:              nop
539:              lui          s11, 472155
                  slt          s9, a3, t5
                  auipc        t3, 60780
                  add          t4, sp, s3
                  xor          s7, a0, s9
                  bltu         s4, a6, 556f
                  auipc        s10, 193294
                  sltiu        s8, s4, 439
                  xori         t1, s11, 818
                  sltiu        s6, t5, 1306
                  slti         s8, s6, 1792
                  slti         sp, a5, 1415
                  bge          s9, ra, 567f
552:              sltiu        ra, a6, 1884
                  xori         a6, ra, -899
                  sll          t5, s7, s10
                  and          a0, t6, s11
556:              sll          a4, s6, s10
                  slli         a0, t6, 20
                  blt          sp, gp, 562f
                  add          s2, s1, s8
                  sltu         a3, a0, t6
                  slti         zero, a3, 1322
562:              or           a6, gp, t4
                  add          a2, a7, gp
                  lui          a1, 465020
                  nop
                  srli         s2, s3, 20
567:              blt          s2, t5, 587f
                  sltu         a5, t2, ra
                  and          a2, ra, s8
                  add          t2, t0, s2
                  srl          s2, a7, t4
                  ori          s7, t6, 1679
                  auipc        s9, 995457
                  ori          a1, t3, -292
                  slti         t4, a0, -960
                  sra          a1, s11, a5
                  bltu         zero, tp, 593f
                  bge          s1, a5, 597f
                  bgeu         s0, s1, 583f
                  slli         s10, a0, 9
                  sll          s10, a2, a3
                  srai         a4, s3, 2
583:              and          gp, s3, a3
                  or           t4, s11, a2
                  bne          a3, s1, 592f
                  beq          a4, s8, 601f
587:              and          a3, a6, zero
                  add          s5, t4, s3
                  auipc        zero, 135368
                  srai         t1, tp, 12
                  nop
592:              xori         s1, s10, -875
593:              ori          a4, a7, 1347
                  srli         sp, gp, 29
                  nop
                  sll          a5, a1, a1
597:              sltu         s2, s10, t1
                  sltu         t1, s4, a6
                  xori         a4, a4, -866
                  xori         a2, t2, 1936
601:              andi         a5, a5, -1190
                  ori          s2, t1, -175
                  and          s8, s11, a1
                  bltu         a4, t1, 610f
                  sltu         t3, t0, s0
                  srli         s4, a7, 2
                  blt          t4, t2, 623f
                  slt          s2, a7, s0
                  sltiu        gp, a5, 1074
610:              sltu         gp, t0, s4
                  sltu         s6, tp, a0
                  xor          s2, a7, t5
                  srai         a1, ra, 0
                  nop
                  sltu         s9, a7, a3
                  sltu         s11, s10, a3
                  sltiu        t2, t6, 1131
                  addi         s9, t5, -435
                  ori          s0, t4, 346
                  xori         s10, a6, 658
                  nop
                  slti         a1, s0, 1818
623:              sra          t4, a1, zero
                  ori          s5, t1, -813
                  sub          s7, t1, a0
                  blt          zero, s11, 635f
                  slt          s2, ra, s1
                  bne          s5, a6, 632f
                  sub          a3, t1, t0
                  add          sp, s2, t1
                  slti         s5, t3, -533
632:              lui          a4, 5105
                  nop
                  lui          s8, 565214
635:              bge          t3, gp, 639f
                  beq          a1, t2, 651f
                  slti         ra, gp, 1183
                  and          t4, a7, s8
639:              or           s4, a2, a4
                  andi         t0, t4, 2018
                  auipc        a0, 48191
                  xor          s0, a7, tp
                  auipc        sp, 134223
                  slt          a6, t0, t6
                  xor          zero, s1, s2
                  auipc        s3, 344161
                  lui          a6, 30330
                  auipc        t1, 134081
                  xori         ra, t5, -370
                  bgeu         s0, t2, 655f
651:              nop
                  slti         s2, s10, 858
                  andi         t2, s9, 1962
                  beq          s8, t5, 672f
655:              slli         s11, t4, 16
                  sll          gp, a1, s2
                  xori         a6, s6, -1206
                  addi         s7, a2, 436
                  sub          t3, a6, t0
                  bge          s1, gp, 663f
                  xori         s11, a2, 473
                  slt          s10, a2, zero
663:              addi         s7, a1, 1976
                  bgeu         t6, s4, 676f
                  bgeu         tp, ra, 670f
                  sll          t5, s8, s4
                  beq          tp, s3, 669f
                  and          s5, a2, a7
669:              addi         s11, a1, -1448
670:              nop
                  slti         t3, zero, 736
672:              bge          ra, a2, 688f
                  sltiu        s5, s6, -1467
                  slt          a3, gp, t1
                  srl          zero, s2, a6
676:              and          a3, s8, t3
                  sll          t1, tp, tp
                  xor          s0, s9, a7
                  blt          s8, t4, 696f
                  xor          a6, a2, s5
                  auipc        s11, 828198
                  sltu         sp, gp, a6
                  sub          a1, a0, t6
                  addi         sp, t5, -432
                  sltiu        s1, a2, 1708
                  sub          a5, a1, s3
                  add          t5, zero, s11
688:              blt          s6, s0, 701f
                  srai         a3, zero, 27
                  slti         t3, s1, -1914
                  sra          t5, tp, s6
                  sub          zero, tp, a5
                  sub          a4, t4, a6
                  sub          a3, t3, s0
                  sub          a0, s6, s6
696:              ori          a3, s1, -158
                  sll          s0, s7, s2
                  auipc        sp, 528635
                  andi         t3, s11, 606
                  andi         s11, a7, -138
701:              add          s2, t5, a7
                  srai         t1, s11, 14
                  slt          a2, a1, t1
                  blt          gp, ra, 722f
                  srai         s7, t2, 7
                  slti         s1, t1, 794
                  xori         s1, s11, -2023
                  sra          s7, s9, t4
                  sub          t0, t4, s7
                  bge          a3, s11, 723f
                  slt          a3, gp, s8
                  srli         zero, t3, 30
                  sltiu        t3, a2, 1907
                  sub          gp, s1, s3
                  or           a6, sp, a1
                  bge          s6, a6, 721f
                  sltu         gp, s0, s1
                  beq          a3, s3, 729f
                  beq          a1, zero, 727f
                  srai         s3, t4, 26
721:              sra          a4, t1, t3
722:              srai         ra, s5, 1
723:              addi         a1, t1, -230
                  and          t1, s11, tp
                  slt          s10, a5, a3
                  slti         s7, t0, 1749
727:              sltu         s8, s8, s3
                  addi         s9, zero, 1320
729:              srl          a5, s9, gp
                  sra          ra, s11, a0
                  or           a2, s10, sp
                  xori         t1, t6, -252
                  bgeu         tp, s5, 739f
                  srl          s1, t2, s10
                  auipc        a0, 538220
                  xor          ra, a2, s0
                  sltu         zero, s0, s9
                  sltiu        s1, s0, -1082
739:              auipc        s11, 913313
                  add          a6, t3, t2
                  sub          t4, a3, s2
                  bltu         t5, s6, 746f
                  srai         ra, s4, 10
                  sll          s9, s8, ra
                  sltiu        s5, s0, -1163
746:              beq          t6, a1, 758f
                  slt          zero, a7, a5
                  add          a6, t3, t1
                  and          gp, a6, gp
                  xori         t0, t4, 970
                  slli         a0, s8, 18
                  xori         s2, s9, -743
                  srl          a4, t5, s1
                  slti         zero, ra, -631
                  sltu         s8, t3, a5
                  srai         gp, s3, 3
                  andi         s2, s5, 727
758:              sll          s5, tp, s1
                  xori         s2, a2, -1240
                  sltu         a6, s9, t4
                  sra          s0, s1, s10
                  or           s9, sp, t3
                  bge          gp, sp, 769f
                  andi         s5, t5, 982
                  srl          t3, ra, t3
                  sll          s10, t2, s10
                  bgeu         a0, t5, 773f
                  srai         t0, sp, 20
769:              sltiu        t3, s3, 862
                  nop
                  bge          a6, a0, 784f
                  andi         zero, s5, 889
773:              beq          t0, s10, 782f
                  addi         s7, s9, -941
                  or           s11, s6, t1
                  bgeu         s11, ra, 781f
                  blt          a1, gp, 795f
                  beq          a7, tp, 793f
                  slt          a6, s6, a6
                  sll          gp, s10, s9
781:              slti         s10, a2, 442
782:              ori          t2, a6, 1214
                  lui          sp, 888294
784:              sltiu        a4, a1, -1504
                  xor          a3, a2, s10
                  srli         sp, a4, 29
                  srai         s11, a6, 6
                  slti         a2, s4, 922
                  xori         s3, t6, -314
                  slti         s4, tp, -635
                  beq          s7, a2, 810f
                  srai         t2, t6, 12
793:              sltiu        s9, a1, -346
                  sra          t2, s2, t3
795:              bgeu         a1, s8, 811f
                  nop
                  beq          gp, zero, 808f
                  beq          s3, zero, 801f
                  bgeu         t3, a5, 811f
                  add          a5, s1, t3
801:              sub          s7, a6, sp
                  srli         s1, a5, 19
                  nop
                  addi         s6, s1, -309
                  bge          s6, a3, 821f
                  sll          a1, a0, a5
                  or           t4, a5, a6
808:              and          s10, a1, s0
                  sltiu        a0, sp, -734
810:              srli         a1, a4, 5
811:              and          a2, t5, t2
                  bltu         s0, t5, 818f
                  lui          s9, 504538
                  nop
                  srl          t0, t0, t2
                  srai         s1, t6, 19
                  slti         s8, s5, -813
818:              slt          s9, s3, ra
                  lui          sp, 652335
                  sll          a5, s3, t1
821:              sll          s5, s7, s4
                  srl          s6, t5, t3
                  andi         a6, s4, 250
                  ori          a6, s3, 900
                  srai         t1, s1, 28
                  bltu         s9, t5, 831f
                  bne          s8, sp, 832f
                  srl          zero, s3, tp
                  slli         zero, ra, 3
                  slt          s2, s1, ra
831:              beq          s8, s5, 846f
832:              srai         s4, t2, 22
                  sltu         t3, s4, a1
                  bge          s8, t4, 850f
                  nop
                  blt          t5, gp, 840f
                  or           a2, a4, a0
                  bgeu         zero, s5, 842f
                  add          t0, s4, a6
840:              slli         s1, tp, 28
                  blt          t5, a5, 847f
842:              bge          s4, s1, 854f
                  and          s11, a1, t2
                  sltu         s3, t6, s9
                  slt          a1, ra, tp
846:              sltiu        a2, a3, 21
847:              ori          t4, s11, -1452
                  sltu         s5, s5, s1
                  xor          t2, ra, t4
850:              srli         ra, a2, 6
                  srl          a6, t5, s7
                  add          s8, t4, s6
                  sub          s10, a4, ra
854:              or           a1, s10, a6
                  slti         t4, s2, 1162
                  andi         s2, s9, -304
                  addi         s2, s4, 1471
                  srl          a6, gp, s2
                  auipc        a1, 530625
                  ori          s4, s4, 862
                  bge          s8, gp, 869f
                  srai         s5, a4, 14
                  srl          s10, a4, gp
                  add          a3, s9, s5
                  and          t3, s11, t2
                  auipc        a4, 147558
                  and          t5, s5, t2
                  blt          a3, t1, 881f
869:              auipc        t5, 441437
                  xori         a3, s7, -44
                  slt          t4, ra, sp
                  bltu         a5, a5, 889f
                  slt          s7, sp, t5
                  sltu         a5, a2, s2
                  sra          s11, s4, s5
                  slli         s5, ra, 25
                  xor          s4, s8, s9
                  xori         s9, a3, -1446
                  beq          a5, s10, 886f
                  addi         t1, gp, 1098
881:              nop
                  srl          t3, zero, s0
                  ori          t3, t3, 1688
                  bltu         s11, s9, 904f
                  slti         a6, s5, 52
886:              sltu         s5, s9, tp
                  auipc        a2, 685494
                  or           s1, s1, s2
889:              slti         s10, s10, 1949
                  nop
                  addi         a3, s10, -1124
                  bgeu         s9, a3, 894f
                  addi         a1, a1, 1048
894:              srai         a5, a3, 5
                  andi         gp, t4, -188
                  blt          sp, s3, 900f
                  lui          s1, 159259
                  sra          s4, tp, s11
                  nop
900:              srai         a6, s5, 21
                  bne          t1, a3, 919f
                  srl          s10, t5, a6
                  addi         s3, a4, -1013
904:              sub          s1, t1, s9
                  or           s6, t5, zero
                  sll          a0, s8, a3
                  blt          a5, t3, 911f
                  or           s3, a0, s1
                  sltiu        zero, a0, 1986
                  or           ra, s11, t2
911:              bgeu         t4, a3, 927f
                  srai         s4, t2, 8
                  lui          a0, 825665
                  beq          zero, zero, 918f
                  bgeu         a1, t0, 930f
                  bne          s8, gp, 929f
                  bne          ra, zero, 930f
918:              and          a6, t0, s0
919:              xor          s0, t1, tp
                  sub          s9, s2, t0
                  bltu         t3, a2, 925f
                  slti         t3, a0, 1560
                  slli         a1, t6, 22
                  sltiu        a0, t3, 416
925:              sub          zero, a6, s9
                  xor          t1, t1, s7
927:              auipc        sp, 242527
                  auipc        t2, 242454
929:              sub          a0, s9, s4
930:              slti         t4, t5, 1021
                  bne          s10, s6, 947f
                  or           s7, t5, a1
                  srli         a2, s8, 31
                  blt          a1, s6, 937f
                  srl          ra, t1, a1
                  srli         s2, s8, 19
937:              nop
                  sltu         t4, ra, t1
                  bltu         tp, s9, 941f
                  blt          s7, ra, 951f
941:              ori          t5, ra, -285
                  or           t1, t3, s5
                  sltu         s7, a0, sp
                  xor          s1, s11, a4
                  andi         a1, s9, -1237
                  slt          a5, s9, a2
947:              srli         gp, tp, 4
                  xori         t1, s8, 1106
                  sltu         a3, s11, a2
                  addi         s8, gp, -102
951:              bgeu         s10, t6, 955f
                  nop
                  sra          t5, s1, s3
                  sll          a5, a4, gp
955:              blt          t3, s5, 970f
                  or           s4, s7, a3
                  or           sp, a4, t1
                  slli         s6, sp, 0
sub_2_19:         jal          a5, 12f
0:                jal          ra, 18f
1:                jal          ra, 20f
2:                jal          ra, 10f
3:                jal          t1, 22f
4:                jal          ra, 14f
5:                jal          ra, 15f
6:                jal          ra, 19f
7:                jal          ra, 23f
8:                jal          ra, 3b
9:                jal          ra, 8b
10:               jal          t5, 13f
11:               jal          ra, 2b
12:               jal          t1, 16f
13:               jal          t1, 17f
14:               jal          t1, 21f
15:               jal          s8, 6b
16:               jal          a1, 0b
17:               jal          s0, 7b
18:               jal          ra, 9b
19:               jal          t1, 11b
20:               jal          ra, 4b
21:               jal          ra, 5b
22:               jal          ra, 1b
23:               nop
                  bne          t5, s10, 965f
                  and          a1, zero, a7
                  xor          ra, a3, a7
                  bltu         a0, s4, 979f
                  add          t1, s4, t4
                  sll          a3, s5, t4
965:              or           a4, a0, s9
                  auipc        s8, 24515
                  sltiu        a1, s1, 666
                  lui          s0, 369999
                  and          a1, s11, s6
970:              blt          t2, t3, 976f
                  slti         s8, ra, -1004
                  nop
                  xor          s2, ra, zero
                  blt          zero, a4, 979f
                  ori          s5, s5, 935
976:              srli         s4, t1, 22
                  add          t3, a1, s3
                  slli         s10, s10, 26
979:              ori          t4, s1, 1438
                  addi         gp, t6, -279
                  bgeu         sp, a6, 988f
                  srli         gp, a4, 15
                  srl          s7, t1, a4
                  xor          ra, zero, s10
                  and          s8, a0, s7
sub_2_2:          jal          a5, 9f
0:                jal          ra, 12f
1:                jal          ra, 16f
2:                jal          ra, 17f
3:                jal          ra, 7f
4:                jal          ra, 21f
5:                jal          ra, 19f
6:                jal          ra, 5b
7:                jal          t2, 18f
8:                jal          a3, 25f
9:                jal          a6, 0b
10:               jal          gp, 15f
11:               jal          ra, 26f
12:               jal          ra, 2b
13:               jal          s6, 8b
14:               jal          s0, 4b
15:               jal          ra, 11b
16:               jal          ra, 20f
17:               jal          t0, 24f
18:               jal          a2, 6b
19:               jal          ra, 13b
20:               jal          ra, 22f
21:               jal          ra, 23f
22:               jal          s9, 27f
23:               jal          ra, 1b
24:               jal          ra, 3b
25:               jal          ra, 10b
26:               jal          ra, 14b
27:               lui          s5, 158717
                  ori          s7, s2, -632
                  slti         a5, a5, 916
988:              blt          t4, s0, 1004f
                  slli         a2, zero, 27
                  or           s3, s6, a4
                  andi         t1, a1, -1244
                  bgeu         a0, s11, 996f
                  and          s3, t2, s1
                  slli         a3, a4, 25
                  xor          s6, a2, t0
996:              andi         a4, t2, 287
                  sltu         s5, sp, gp
                  xori         a4, t3, -1226
                  nop
                  beq          tp, gp, 1019f
                  sll          a1, s10, zero
                  lui          a1, 687614
                  srai         s4, zero, 4
1004:             andi         s2, s6, -1120
                  bge          s10, t5, 1010f
                  or           s2, s2, a6
                  slt          s4, a5, a1
                  addi         gp, s2, -1400
                  andi         a3, s8, -1392
1010:             srli         s1, s11, 5
                  andi         t2, t4, -1142
                  xor          s11, ra, s9
                  lui          t5, 799942
                  sltu         t1, a5, zero
                  bge          ra, s5, 1024f
                  bne          a6, a6, 1022f
                  slli         zero, t5, 9
                  slti         s8, a0, -1725
1019:             sltu         a3, s5, s5
                  sra          s6, a6, s0
                  auipc        s8, 1019830
1022:             bgeu         s10, s5, 1034f
                  bne          s6, s9, 1041f
1024:             ori          s9, a0, -1965
                  addi         a3, t1, -965
                  srai         zero, a6, 30
                  beq          t5, t2, 1045f
                  slli         t3, t0, 21
                  addi         s1, a1, 1746
                  srai         sp, t5, 24
                  bge          ra, t2, 1043f
                  xori         zero, t6, -1198
                  sll          t3, s8, t0
1034:             or           s4, s3, zero
                  ori          s11, zero, 1337
                  bge          t1, gp, 1041f
                  nop
                  bge          ra, t3, 1058f
                  blt          s6, a2, 1047f
                  nop
1041:             slli         s10, sp, 12
                  bltu         s1, s11, 1047f
1043:             auipc        t0, 151998
                  lui          sp, 248150
1045:             bne          s10, t1, 1052f
                  bgeu         t3, s11, 1048f
1047:             srai         a2, s10, 17
1048:             blt          t0, a1, 1052f
                  nop
                  xor          ra, sp, t2
                  slli         ra, s11, 22
1052:             nop
                  beq          s5, t6, 1066f
                  sltu         a1, a7, a6
                  and          s5, t2, tp
                  slli         a3, t4, 30
                  slti         s0, t4, 1323
1058:             or           sp, a1, t6
                  add          a5, s6, s11
                  lui          s5, 349073
                  addi         a2, tp, -1990
                  bltu         t2, a6, 1070f
                  sub          t5, t4, t1
                  bge          a1, a3, 1070f
                  lui          s7, 322150
1066:             bgeu         a5, a7, 1070f
                  sll          s0, t6, a2
                  lui          a5, 329139
                  srli         s4, a0, 29
1070:             nop
                  slt          s6, ra, a6
                  blt          ra, a4, 1083f
                  addi         ra, tp, -310
                  bge          a0, t6, 1080f
                  sltu         t0, s9, s5
                  add          s9, a0, s11
                  srli         a2, t5, 18
                  sltu         ra, a3, tp
                  slt          s8, s0, zero
1080:             ori          t0, tp, -1229
                  slt          sp, s0, a5
                  auipc        s9, 652678
1083:             srli         s9, a5, 26
                  addi         t2, a3, -1167
                  slli         a1, t5, 28
                  srl          s8, a2, a1
                  blt          a6, t4, 1107f
                  auipc        a4, 666224
                  andi         s8, t3, 914
                  and          s0, s3, a0
                  beq          a0, s11, 1106f
                  sub          t5, a5, zero
                  sra          s9, s10, t4
                  bne          t2, t1, 1110f
                  bge          s7, ra, 1111f
                  srli         ra, tp, 9
                  sra          s1, a3, s0
                  bgeu         s5, t1, 1102f
                  sra          s10, s6, gp
                  ori          a0, a6, -689
                  addi         a6, s10, 1747
1102:             slti         a4, s2, 1391
                  slti         s1, s2, -1254
                  sltu         s8, s8, a7
                  srai         a4, s2, 18
1106:             srl          sp, s7, s2
1107:             nop
                  sra          s9, t6, s1
                  xori         t1, s11, 67
1110:             xor          a5, zero, t6
1111:             and          t5, t3, tp
                  sltu         s7, tp, t6
                  bltu         s4, a5, 1125f
                  sltiu        t4, a4, -1317
                  sltu         a2, sp, s6
                  blt          t3, s2, 1125f
                  sra          s9, a3, t4
                  slli         a0, a4, 20
                  or           s4, tp, t1
                  srai         t3, s10, 18
                  andi         t4, s3, 0
                  sub          s1, a5, a3
                  xor          s5, t5, s2
                  sub          s2, s8, s3
1125:             xor          s9, s1, a0
                  xori         s7, s2, -717
                  sll          ra, s11, t1
                  slti         a6, s7, 831
                  sltiu        s10, t2, -946
                  sra          t1, s5, s0
                  auipc        zero, 742945
                  xori         s1, s9, 1676
                  slli         ra, a4, 10
                  add          t5, tp, s8
                  sltu         s5, s0, s6
                  srli         s5, s9, 19
                  andi         a6, s7, 278
                  sll          s7, a5, t5
                  add          s2, s7, zero
                  add          t0, s4, s9
                  xor          gp, s6, gp
                  andi         a1, a5, 1191
                  srli         t1, t3, 26
                  and          t1, t4, a5
                  bgeu         s2, tp, 1160f
                  bgeu         s2, tp, 1164f
                  bne          s10, a6, 1165f
                  slt          a2, t6, gp
                  srl          t1, s10, s8
                  or           gp, s8, zero
                  bne          t0, a5, 1156f
                  nop
                  xor          s7, ra, a2
                  slli         s10, t3, 12
                  nop
1156:             bgeu         a4, zero, 1160f
                  xor          a2, s4, a1
                  sltiu        t1, t1, 1988
                  add          s6, t2, a1
1160:             sub          t4, s11, tp
                  auipc        s4, 36274
                  sll          t3, t6, t1
                  slt          a2, s0, s3
1164:             addi         a1, ra, 1087
1165:             srl          a4, a4, s5
                  beq          t5, t2, 1172f
                  srl          t5, t5, t1
                  blt          a7, t4, 1181f
                  blt          gp, s0, 1172f
                  srai         t0, ra, 26
                  addi         a0, t0, 1594
1172:             slli         s8, t6, 19
                  xor          t5, s10, s0
                  xor          a1, s7, a2
                  auipc        t2, 935580
                  xor          s1, s4, s6
                  add          t1, t5, a1
                  bne          a1, t0, 1183f
                  bge          gp, s9, 1198f
                  sra          s0, ra, a1
1181:             addi         ra, a4, 1596
                  slli         gp, s11, 6
1183:             sub          zero, a7, s3
                  sltiu        a6, tp, -1650
                  auipc        s10, 983589
                  bge          sp, s3, 1198f
                  sltu         t5, s6, s0
                  lui          a5, 1025872
                  or           t5, s1, a4
                  slti         t2, a7, -474
                  xori         ra, sp, 1701
                  andi         s0, s7, -1864
                  nop
                  bne          s11, s6, 1211f
                  and          s3, a3, a6
                  beq          a2, a7, 1212f
                  beq          t2, tp, 1204f
1198:             sra          a4, s11, a1
                  slti         s2, gp, 821
                  auipc        s9, 934412
                  slti         s0, s8, -2044
sub_2_27:         jal          a5, 2f
0:                jal          ra, 5f
1:                jal          t1, 12f
2:                jal          a3, 10f
3:                jal          s5, 11f
4:                jal          ra, 0b
5:                jal          t1, 8f
6:                jal          ra, 7f
7:                jal          ra, 9f
8:                jal          ra, 3b
9:                jal          ra, 18f
10:               jal          s8, 6b
11:               jal          t1, 1b
12:               jal          s2, 14f
13:               jal          ra, 19f
14:               jal          ra, 13b
15:               jal          s2, 21f
16:               jal          ra, 17f
17:               jal          t1, 4b
18:               jal          a3, 20f
19:               jal          ra, 15b
20:               jal          ra, 16b
21:               xori         a1, s3, -186
                  or           t4, gp, t0
                  blt          s4, s5, 1209f
1204:             nop
                  andi         t0, t2, -696
                  slli         t0, a1, 10
                  xori         s7, s6, -2036
                  bne          t3, s0, 1213f
1209:             blt          s2, a0, 1226f
sub_2_12:         jal          a5, 18f
0:                jal          s8, 5f
1:                jal          ra, 9f
2:                jal          s1, 1b
3:                jal          t1, 11f
4:                jal          ra, 17f
5:                jal          a2, 29f
6:                jal          ra, 2b
7:                jal          ra, 10f
8:                jal          ra, 3b
9:                jal          t2, 13f
10:               jal          ra, 14f
11:               jal          ra, 16f
12:               jal          ra, 25f
13:               jal          gp, 15f
14:               jal          ra, 22f
15:               jal          t5, 24f
16:               jal          s4, 4b
17:               jal          s0, 28f
18:               jal          t1, 27f
19:               jal          a1, 7b
20:               jal          ra, 30f
21:               jal          a1, 8b
22:               jal          t1, 21b
23:               jal          a1, 19b
24:               jal          ra, 0b
25:               jal          t1, 6b
26:               jal          ra, 23b
27:               jal          t3, 26b
28:               jal          t1, 12b
29:               jal          ra, 20b
30:               andi         s0, s2, 439
                  and          s5, a3, t1
1211:             beq          zero, s7, 1226f
1212:             slti         s1, s11, -1164
1213:             sltiu        t4, a0, -386
                  xor          sp, a1, s2
                  blt          a4, a4, 1227f
                  addi         t3, a7, -584
                  slt          s9, s0, s10
                  nop
                  lui          t4, 304995
                  lui          s4, 660313
                  bgeu         a7, s11, 1232f
                  blt          t5, s0, 1231f
                  nop
                  slli         s6, a0, 17
                  nop
1226:             or           a4, s10, s7
1227:             lui          s11, 580568
                  xori         gp, a4, 1816
                  add          s2, ra, a4
                  addi         s10, s9, 656
1231:             xor          s10, a3, a6
1232:             srl          s5, s9, a0
                  andi         t3, zero, 1086
                  slti         sp, a5, 248
                  slti         s5, s4, 747
                  auipc        a0, 203713
                  srl          s4, a5, s11
                  blt          a2, s0, 1244f
                  bge          sp, tp, 1252f
                  sltiu        ra, ra, 1435
                  bgeu         t5, a6, 1246f
                  bgeu         gp, t3, 1255f
                  and          sp, s8, t5
1244:             addi         s5, t4, 1617
                  slli         a5, t4, 22
1246:             xor          s4, s2, a4
                  bne          a5, a7, 1263f
                  srli         a6, s8, 8
                  bge          gp, a1, 1269f
sub_2_24:         jal          a5, 7f
0:                jal          ra, 5f
1:                jal          ra, 12f
2:                jal          t1, 10f
3:                jal          ra, 21f
4:                jal          s9, 18f
5:                jal          ra, 3b
6:                jal          ra, 23f
7:                jal          ra, 16f
8:                jal          t1, 11f
9:                jal          t1, 25f
10:               jal          ra, 8b
11:               jal          a5, 20f
12:               jal          ra, 15f
13:               jal          ra, 1b
14:               jal          t5, 22f
15:               jal          ra, 24f
16:               jal          t1, 19f
17:               jal          s11, 0b
18:               jal          ra, 6b
19:               jal          ra, 17b
20:               jal          s3, 9b
21:               jal          a6, 14b
22:               jal          ra, 4b
23:               jal          ra, 13b
24:               jal          t1, 2b
25:               srli         t5, s5, 23
                  slli         s1, tp, 24
sub_2_22:         jal          a5, 7f
0:                jal          ra, 2f
1:                jal          ra, 11f
2:                jal          t1, 8f
3:                jal          a3, 5f
4:                jal          sp, 9f
5:                jal          t1, 0b
6:                jal          t1, 10f
7:                jal          ra, 6b
8:                jal          ra, 4b
9:                jal          ra, 1b
10:               jal          t1, 3b
11:               sub          a0, t2, s5
                  srl          s10, ra, t5
1252:             beq          t6, s6, 1256f
                  bne          s6, t0, 1255f
                  sll          t3, s6, ra
1255:             srli         s1, s5, 16
1256:             bne          a6, s9, 1262f
                  srai         s1, sp, 25
                  xori         t2, a1, -1815
                  or           a2, s4, s6
                  sub          s6, s3, a6
                  nop
1262:             sra          s9, t2, a2
1263:             srai         s4, a7, 14
                  bltu         sp, s9, 1267f
                  sltiu        a5, t1, 292
                  and          a3, a5, s1
1267:             addi         a4, t2, -940
                  bgeu         s9, t4, 1273f
1269:             xori         s0, a1, -867
                  andi         s0, t5, -976
                  sltu         a6, t6, t0
                  slli         s7, s11, 20
1273:             blt          s0, s4, 1277f
                  auipc        s6, 38648
                  sra          a4, s11, t0
                  xor          a6, s2, t3
1277:             xori         s8, s4, -1222
                  xori         t4, gp, -1465
                  and          s6, s11, s4
                  addi         s0, s1, 1820
                  xor          a4, tp, a3
                  andi         s11, s6, -1835
                  addi         ra, s4, 1765
                  slti         t0, t3, -1824
                  srai         a2, s6, 16
                  addi         s11, s2, -573
                  sltiu        a6, s8, 425
                  sub          t0, a6, t5
                  addi         a3, s0, 376
                  sub          s5, t3, s7
                  bgeu         t3, ra, 1310f
                  bgeu         gp, t6, 1304f
                  slt          a6, t0, a1
                  blt          a6, s3, 1312f
                  andi         t1, ra, 1265
                  sub          a3, s5, s4
                  xori         s9, a1, -1920
                  auipc        t5, 750176
                  bgeu         s1, t6, 1314f
                  and          a6, s10, t1
                  sll          a4, s0, a3
                  bne          t5, ra, 1310f
                  lui          t0, 113334
1304:             add          gp, s5, t4
                  lui          s5, 205223
                  slli         s4, s5, 10
                  andi         a4, a3, 1590
                  bltu         t4, t6, 1324f
                  bltu         ra, s9, 1313f
1310:             bgeu         ra, s10, 1314f
                  or           ra, s2, tp
1312:             auipc        sp, 772188
1313:             and          s3, s3, sp
1314:             add          a5, a3, s7
                  srl          s10, s1, sp
                  ori          a3, s2, 841
                  add          a3, t6, t0
                  sltiu        s7, t2, 957
                  addi         t3, t6, 1141
                  andi         zero, zero, 1126
                  slti         s7, a3, 1558
                  lui          s11, 994114
                  xori         s7, t3, -1779
1324:             sltiu        s10, a0, 1969
                  srl          t1, s9, zero
                  blt          a4, sp, 1342f
                  or           t4, tp, s4
                  bne          s10, s10, 1346f
                  bltu         a6, a2, 1333f
                  addi         s4, a2, -2023
                  slt          a6, zero, a6
                  xor          a1, s4, s3
1333:             lui          a6, 496129
                  xor          a5, s7, t2
                  slt          t2, zero, a7
                  or           s0, t4, s3
                  slli         sp, s6, 18
                  sltiu        s7, t3, -983
                  sub          zero, t2, s3
                  srl          s4, a2, a4
                  slti         s0, sp, -1683
1342:             bge          t5, sp, 1349f
                  blt          t1, t2, 1363f
                  srai         s1, ra, 17
                  xori         a4, gp, 1457
1346:             blt          a3, s8, 1365f
                  addi         s2, t1, 728
                  auipc        t0, 338805
1349:             bne          s10, a2, 1365f
                  ori          s7, s9, -371
                  sltu         t1, s9, a3
                  or           a4, t5, s4
                  add          s1, zero, t0
                  slti         s7, a6, 373
                  xor          t3, s8, s2
                  sub          s5, tp, a3
                  blt          a7, a1, 1372f
                  and          s0, a6, s6
                  or           gp, a3, s7
                  addi         a0, t1, -908
                  auipc        s8, 947701
                  or           a3, a3, a0
1363:             and          ra, a6, tp
                  srai         a2, a0, 25
1365:             or           zero, a6, tp
                  blt          s5, a5, 1384f
                  xori         a1, t0, -1575
                  xor          t4, t4, s7
                  slli         s10, a4, 30
                  srl          s1, s9, ra
                  sltu         sp, s9, t5
1372:             blt          t1, s8, 1389f
                  srl          a4, s7, s1
                  ori          s8, t1, -69
                  ori          s9, t1, 1975
                  ori          a1, s0, -1288
                  xori         gp, a6, -105
                  addi         gp, s7, -1786
                  sub          a3, t1, sp
                  add          t5, s2, s7
                  add          s11, a0, s10
                  sltu         a3, s4, s3
                  nop
1384:             addi         t4, s0, 480
                  bne          t4, gp, 1397f
                  addi         s10, tp, 1968
                  bltu         t6, a1, 1389f
                  sub          zero, s5, t1
1389:             srai         s8, t5, 18
                  sub          a5, s3, a1
                  xor          t0, a3, a1
                  sll          gp, s10, ra
                  blt          a5, a3, 1399f
                  ori          a0, a7, 294
                  srli         s1, s7, 12
                  add          s3, a6, t4
1397:             bgeu         s11, a3, 1413f
                  srl          a6, zero, t3
1399:             beq          sp, zero, 1407f
                  ori          a4, zero, 1263
                  bltu         zero, t1, 1406f
                  bltu         s1, tp, 1408f
                  sltiu        t0, a5, -1469
                  add          t2, a7, s11
                  srai         t2, s6, 16
1406:             and          s0, s4, zero
1407:             sltiu        s0, a7, 969
1408:             srli         a3, s11, 20
                  bge          s0, t4, 1421f
                  auipc        a0, 744892
                  blt          a6, zero, 1427f
                  beq          a0, s8, 1417f
1413:             bgeu         s6, a3, 1417f
                  add          a4, s5, a1
                  srli         s3, sp, 26
                  bgeu         s7, tp, 1421f
1417:             bgeu         t6, s3, 1420f
                  srl          t1, a3, a1
                  sltu         sp, t1, a7
1420:             sub          a2, tp, s4
1421:             or           a0, t5, a5
                  blt          s1, t0, 1440f
                  sll          ra, ra, t4
                  add          t3, t0, a3
                  slti         s0, s1, -418
                  slt          a5, s11, s2
1427:             srli         gp, ra, 4
                  srai         a6, s8, 23
                  slli         s3, s4, 13
                  srai         t3, t5, 6
                  srl          a6, a7, s8
                  sltiu        a4, sp, 489
                  slti         s3, s11, 868
                  slt          s11, ra, a6
                  bgeu         t0, t6, 1444f
                  srai         s9, s11, 17
                  and          zero, s0, a0
                  srl          t5, t4, s2
                  addi         zero, t4, -1523
1440:             sub          a0, t3, a0
                  and          a4, tp, s4
                  auipc        s7, 353362
                  sltiu        a3, sp, 1427
1444:             add          t3, a6, s0
                  andi         t3, ra, 1250
                  ori          s2, t1, 25
                  addi         a4, s2, 156
                  sub          t0, t0, s4
                  sltiu        t0, tp, -1590
                  or           s2, a1, a2
                  bge          s0, tp, 1455f
                  addi         gp, gp, 1311
                  xor          s8, s8, s4
                  add          t4, t4, a6
1455:             ori          a4, t0, -230
                  slti         s8, s6, 122
                  add          t1, s3, a4
                  xor          a3, a2, s5
                  sll          s11, s8, s3
                  bltu         a2, t0, 1464f
                  sll          a3, t3, ra
                  sll          a1, t0, sp
                  bgeu         a5, s4, 1469f
1464:             sll          s0, t2, s6
                  bge          t5, a4, 1478f
                  bne          a0, a2, 1477f
                  beq          a0, a4, 1482f
                  bltu         gp, s3, 1481f
1469:             slt          s3, a3, s5
                  xori         s9, ra, 2029
                  slli         a1, a7, 12
                  srli         sp, s1, 11
                  lui          a4, 104984
                  bltu         s5, s9, 1487f
                  or           s5, t4, s11
                  srai         s7, s11, 4
1477:             ori          t3, s7, 1280
1478:             srli         s4, a7, 22
                  sltiu        s10, zero, -1608
                  beq          t6, a6, 1493f
1481:             andi         s7, t4, 1010
1482:             bgeu         s5, a2, 1487f
                  lui          ra, 110246
                  sll          s5, a4, sp
                  bgeu         s2, a7, 1502f
                  auipc        s9, 50308
1487:             xor          s10, a7, s2
                  sltu         t2, zero, a3
                  bltu         a5, a2, 1505f
                  xori         s9, sp, 418
                  slt          zero, s4, a5
                  auipc        t4, 930333
1493:             andi         zero, a4, -1738
                  xor          t2, s0, s11
                  lui          s11, 795241
                  xori         s1, sp, -1835
                  bgeu         s9, a0, 1499f
                  bgeu         s6, t6, 1502f
1499:             nop
                  or           a1, sp, s0
                  bge          s5, a2, 1510f
1502:             slli         gp, a6, 5
                  beq          s8, t0, 1519f
                  sra          sp, sp, s5
1505:             bgeu         s7, a1, 1510f
                  bne          t4, zero, 1526f
                  add          s6, a5, s10
                  sll          a4, s9, a0
                  beq          a4, t3, 1515f
1510:             xori         s7, s2, 1865
                  sltu         a5, tp, a2
                  srl          t2, s0, t1
                  lui          t1, 765143
                  auipc        s4, 429581
1515:             lui          t1, 630850
                  andi         t5, t2, -1193
                  or           t5, s0, zero
                  xori         sp, s6, 672
1519:             sll          a3, a7, s6
                  blt          t0, a2, 1525f
                  sll          s7, t2, tp
                  srl          gp, tp, s5
                  bgeu         sp, s8, 1539f
                  bne          a1, s7, 1528f
1525:             bgeu         t0, s10, 1529f
1526:             bge          s4, s4, 1538f
                  srai         ra, sp, 5
1528:             or           ra, s9, gp
1529:             addi         s2, t1, 1076
                  addi         s8, sp, 279
                  sltiu        t4, ra, 384
                  xor          s7, ra, s7
                  add          s5, s2, a6
                  andi         s5, s7, -594
                  ori          sp, a0, 984
                  add          s9, t3, gp
                  xori         a4, t4, -1187
1538:             slt          s10, s10, a3
1539:             srai         s3, s6, 13
                  xor          t0, t6, sp
                  ori          a6, sp, 1376
                  and          a2, t3, s5
                  lui          s8, 4136
                  addi         t3, s8, -592
                  nop
                  andi         gp, s6, -788
                  bne          a4, s4, 1553f
                  bge          t5, gp, 1563f
                  srl          s2, s9, t3
                  blt          a7, zero, 1562f
                  nop
                  blt          s4, s9, 1563f
1553:             srli         s1, s6, 15
                  srai         s11, a3, 11
                  xori         sp, t3, 88
                  addi         gp, s7, 540
                  add          gp, s1, a2
                  ori          a4, s9, 1618
                  beq          a4, s10, 1565f
                  xori         t5, gp, 1889
                  ori          s0, ra, -1041
1562:             srl          zero, s8, t2
1563:             xori         s4, a3, 1783
                  xor          t3, s8, t4
1565:             or           t0, tp, a1
                  slti         s1, a1, -1083
                  sll          t5, t6, s1
                  sub          s0, s11, tp
                  bltu         tp, a6, 1587f
                  and          a4, ra, gp
                  lui          gp, 233290
                  ori          a4, gp, 902
                  bne          s11, s8, 1592f
                  beq          s11, s2, 1578f
                  slti         s11, s0, -292
                  xori         s9, s7, -1948
                  srai         s0, t4, 9
1578:             or           sp, s0, a6
                  bne          a0, sp, 1586f
                  sll          a1, a6, s0
                  srl          s6, sp, a4
                  slt          s11, t6, t1
                  sra          t4, a0, a4
                  sub          t3, s7, a0
                  or           s1, s5, a3
1586:             sltu         gp, ra, s7
1587:             bne          s5, s6, 1605f
                  srai         sp, s2, 29
                  or           sp, a0, s2
                  sltu         a1, s2, ra
                  or           s6, t1, t6
1592:             lui          sp, 459965
                  bge          s3, s1, 1596f
                  bltu         s7, s2, 1602f
                  slli         a0, s3, 3
1596:             bge          t4, s6, 1611f
                  slt          a3, a3, t1
                  bne          a0, t3, 1611f
                  bne          zero, a0, 1616f
                  srl          s3, ra, a5
                  ori          s10, s7, -316
1602:             srli         a4, t5, 26
                  beq          s2, a7, 1609f
                  ori          a5, s11, 1190
1605:             add          s4, a4, a7
                  bgeu         zero, ra, 1611f
                  or           sp, t0, tp
                  addi         t2, a4, -1164
1609:             sll          t2, a0, a6
                  xor          a6, a7, tp
1611:             or           t3, zero, s11
                  srl          s10, a3, s8
                  bgeu         s3, t2, 1617f
                  srli         a5, a6, 1
                  lui          zero, 956873
1616:             nop
1617:             addi         a1, s9, 1992
                  add          ra, sp, a5
                  bne          s7, zero, 1623f
                  srai         t0, t2, 14
                  slli         t2, s2, 27
                  srai         a1, a4, 22
1623:             srl          a1, a1, s2
                  and          s3, t1, s9
                  srli         s6, s2, 7
                  auipc        a0, 233456
                  xori         s2, gp, -698
                  bltu         s11, a0, 1643f
                  blt          a7, t0, 1641f
                  srli         t0, s9, 18
                  xori         s1, s11, -931
                  or           s6, s8, s2
                  andi         gp, s4, 1221
                  slti         t1, sp, 675
                  slli         a3, t2, 25
                  ori          a5, a4, 1718
                  bgeu         s9, t6, 1641f
                  blt          t0, s5, 1647f
                  srl          s9, a4, sp
                  auipc        t4, 820380
1641:             ori          t1, a7, -672
                  sltu         s4, a2, tp
1643:             sltu         t4, a4, a1
                  xori         s8, s9, -716
                  sra          a4, t2, s11
                  srai         s10, a2, 7
1647:             xor          a6, a4, tp
                  sll          a2, a0, s10
                  addi         s3, zero, -127
                  or           a1, t1, s1
                  sltiu        s3, a6, -1626
                  sltu         zero, t1, ra
                  bgeu         a5, s7, 1662f
                  beq          a1, tp, 1662f
                  blt          a1, s3, 1661f
                  addi         s1, zero, -1602
                  nop
                  or           a6, s1, a0
                  slt          s0, s3, s9
                  auipc        s8, 515179
1661:             sll          s1, a4, s4
1662:             andi         s8, tp, -1064
                  addi         s10, t1, 1457
                  xor          t3, a5, s5
                  slti         s11, a5, 680
                  addi         s8, a6, -1315
                  xor          t2, t4, t5
                  xori         s9, t0, -98
                  lw           a5, 4(t6)
                  xori         s8, s0, 1752
                  srli         s7, s9, 28
                  addi         t6, t6, 48
                  andi         s10, s11, 1193
2437:             addi x28, x15, 0
2437:             jalr x28, x28, 0
sub_3:            srli         s2, a2, 24
                  slt          t4, sp, a1
                  ori          s7, s1, 2038
                  bne          t4, t5, sub_3_stack_p
                  auipc        a4, 25186
sub_3_stack_p:    addi         t6, t6, -24
                  addi         a2, t2, -599
                  sw           a5, 4(t6)
                  srl          a1, a3, s3
                  sltu         sp, s4, t1
                  add          a6, a7, s5
                  xori         a0, a2, -2039
                  xor          gp, tp, s5
                  sll          t2, a4, t5
                  lui          a1, 117140
                  slti         a1, t0, -1363
                  auipc        t3, 1035428
                  addi         s11, s11, 1834
                  addi         s5, t2, 1676
                  srli         s8, t2, 31
sub_3_j6:         jal          a5, sub_4 #jump sub_3 -> sub_4
sub_3_0:          jal          a5, 8f
0:                jal          ra, 3f
1:                jal          t1, 4f
2:                jal          ra, 11f
3:                jal          ra, 13f
4:                jal          t1, 9f
5:                jal          ra, 12f
6:                jal          t1, 14f
7:                jal          gp, 6b
8:                jal          ra, 0b
9:                jal          s11, 2b
10:               jal          gp, 5b
11:               jal          ra, 7b
12:               jal          ra, 1b
13:               jal          t1, 10b
14:               lui          s4, 979551
                  bge          a2, a5, 9f
                  sltu         t0, t6, tp
                  lui          a0, 224229
                  slti         sp, s8, 1494
                  lui          gp, 472326
                  auipc        s6, 600325
                  slt          s9, s4, s0
                  bgeu         s4, t0, 14f
                  add          s11, s8, a3
9:                sub          a3, a7, s3
                  xori         a2, zero, -592
                  blt          s5, s5, 17f
                  xori         s0, ra, 1402
                  nop
14:               srai         t1, s0, 27
                  xori         s5, zero, -1452
                  sll          s11, a2, a1
17:               addi         a1, s5, 763
                  nop
                  and          t0, s10, s8
                  bgeu         s9, s6, 40f
                  xori         s1, s8, -1309
                  auipc        s3, 546929
                  slli         a5, t2, 13
                  addi         s6, t0, 1795
                  slt          a3, a6, s3
                  nop
                  lui          t1, 640957
                  slli         s1, s0, 20
                  blt          a5, t2, 35f
                  beq          a2, s7, 41f
                  or           sp, a6, s10
                  beq          t1, a1, 50f
                  nop
                  lui          s2, 215830
35:               sub          s2, t2, s10
                  andi         s9, a6, 1202
                  sltiu        a1, a3, 630
                  sltiu        t2, sp, 2032
                  bltu         sp, s1, 47f
40:               bltu         a4, s9, 55f
41:               srl          gp, zero, s7
                  srl          s0, s4, ra
                  lui          t5, 466045
                  srai         t3, t5, 7
                  srl          t0, gp, s8
                  lui          t5, 888757
47:               srl          s0, t6, a1
                  sra          s0, s9, s0
                  sll          zero, t5, s10
50:               sltu         s6, s3, s0
                  sltu         s7, t3, sp
                  lui          s10, 8280
                  blt          s4, s5, 63f
                  slti         a5, t3, -1905
55:               xori         a4, s0, 953
                  slt          t2, s9, a0
                  slli         s11, s7, 27
                  or           t4, s10, gp
                  srl          t1, s4, a5
                  blt          a6, a5, 68f
                  slli         zero, t3, 24
                  bne          a4, a6, 80f
63:               slli         t3, s4, 21
                  bltu         t5, a6, 81f
                  andi         s11, t3, -160
                  slti         ra, s8, 1833
                  sub          s2, gp, a6
68:               andi         t1, t4, -1438
                  sltu         a2, s2, s3
                  xori         a5, t0, -692
                  and          s1, t4, ra
                  ori          s6, a4, 1318
                  andi         ra, a1, -933
                  nop
                  andi         s3, s7, -1250
                  auipc        a5, 219770
                  bge          t3, t4, 95f
                  lui          s7, 854623
                  sub          s3, t5, s0
80:               andi         s8, t4, 1359
81:               andi         a6, t3, 1882
                  and          t4, a0, a6
                  sltu         a6, t0, a3
                  lui          s4, 436713
                  sll          a5, tp, s3
                  sub          zero, zero, t5
                  ori          s7, s1, -82
                  srl          t3, tp, s7
                  and          a3, a5, sp
                  slti         zero, s11, -111
                  nop
                  or           s5, s11, t3
                  xor          s9, s3, tp
                  ori          t0, a1, 173
95:               sltu         t3, a0, s8
                  lw           a5, 4(t6)
                  or           zero, tp, s6
                  addi         t6, t6, 24
                  sll          s10, s8, s6
                  nop
                  add          s5, t5, t3
139:              addi x3, x15, 1
139:              jalr x3, x3, 0
sub_1:            srai         s4, s7, 21
                  and          s5, s0, s3
                  sra          s7, tp, a1
                  and          s6, a2, gp
                  xori         t1, t3, -1384
                  srl          t4, s1, t1
                  xor          t1, tp, a4
                  sltu         zero, s2, ra
                  addi         t6, t6, -52
                  slli         s11, a4, 26
                  sw           a5, 4(t6)
                  sra          a1, s9, t1
                  srl          s5, a6, a0
                  sll          s1, s10, s10
                  addi         t5, zero, 1670
                  sltiu        s11, s1, -1658
                  sltiu        s4, s1, -1594
                  and          s8, t5, ra
sub_1_j5:         jal          a5, sub_4 #jump sub_1 -> sub_4
sub_1_2:          jal          a5, 10f
0:                jal          ra, 14f
1:                jal          ra, 6f
2:                jal          ra, 26f
3:                jal          sp, 5f
4:                jal          s7, 2b
5:                jal          ra, 8f
6:                jal          ra, 23f
7:                jal          ra, 17f
8:                jal          gp, 28f
9:                jal          t1, 25f
10:               jal          s2, 4b
11:               jal          ra, 7b
12:               jal          t1, 19f
13:               jal          s3, 1b
14:               jal          ra, 16f
15:               jal          t1, 24f
16:               jal          ra, 3b
17:               jal          t1, 9b
18:               jal          s9, 20f
19:               jal          ra, 11b
20:               jal          ra, 13b
21:               jal          t1, 18b
22:               jal          s11, 15b
23:               jal          gp, 27f
24:               jal          a1, 21b
25:               jal          t1, 0b
26:               jal          ra, 12b
27:               jal          t1, 29f
28:               jal          ra, 22b
29:               lui          a5, 46609
sub_1_7:          jal          a5, 16f
0:                jal          t1, 12f
1:                jal          t1, 14f
2:                jal          t1, 7f
3:                jal          ra, 11f
4:                jal          ra, 6f
5:                jal          ra, 3b
6:                jal          ra, 9f
7:                jal          t1, 4b
8:                jal          ra, 10f
9:                jal          ra, 8b
10:               jal          s11, 0b
11:               jal          s0, 18f
12:               jal          a4, 17f
13:               jal          ra, 2b
14:               jal          ra, 15f
15:               jal          ra, 5b
16:               jal          ra, 13b
17:               jal          s0, 1b
18:               auipc        s2, 908268
sub_1_9:          jal          a5, 7f
0:                jal          s3, 10f
1:                jal          ra, 11f
2:                jal          s3, 17f
3:                jal          t1, 24f
4:                jal          ra, 5f
5:                jal          t1, 15f
6:                jal          ra, 18f
7:                jal          ra, 23f
8:                jal          t1, 12f
9:                jal          s4, 1b
10:               jal          t1, 3b
11:               jal          ra, 6b
12:               jal          t1, 14f
13:               jal          ra, 21f
14:               jal          s11, 0b
15:               jal          ra, 13b
16:               jal          ra, 22f
17:               jal          ra, 25f
18:               jal          t1, 19f
19:               jal          s7, 20f
20:               jal          t1, 4b
21:               jal          ra, 26f
22:               jal          sp, 2b
23:               jal          ra, 16b
24:               jal          t1, 9b
25:               jal          t1, 8b
26:               xor          s4, s10, tp
sub_1_1:          jal          a5, 5f
0:                jal          t5, 9f
1:                jal          ra, 15f
2:                jal          s10, 13f
3:                jal          t1, 7f
4:                jal          t1, 19f
5:                jal          ra, 22f
6:                jal          ra, 24f
7:                jal          ra, 1b
8:                jal          ra, 27f
9:                jal          ra, 6b
10:               jal          t1, 18f
11:               jal          a0, 23f
12:               jal          ra, 20f
13:               jal          s3, 25f
14:               jal          t1, 26f
15:               jal          t1, 16f
16:               jal          gp, 2b
17:               jal          ra, 10b
18:               jal          t1, 3b
19:               jal          t1, 11b
20:               jal          t1, 21f
21:               jal          ra, 4b
22:               jal          t1, 14b
23:               jal          ra, 17b
24:               jal          ra, 8b
25:               jal          ra, 0b
26:               jal          s10, 12b
27:               xor          s4, s10, zero
sub_1_8:          jal          a5, 6f
0:                jal          ra, 3f
1:                jal          ra, 4f
2:                jal          t2, 10f
3:                jal          ra, 8f
4:                jal          ra, 7f
5:                jal          ra, 18f
6:                jal          t1, 15f
7:                jal          ra, 9f
8:                jal          t1, 13f
9:                jal          ra, 0b
10:               jal          ra, 5b
11:               jal          ra, 16f
12:               jal          ra, 14f
13:               jal          t0, 17f
14:               jal          ra, 11b
15:               jal          ra, 1b
16:               jal          ra, 2b
17:               jal          s10, 12b
18:               slli         zero, s1, 12
sub_1_10:         jal          a5, 5f
0:                jal          ra, 16f
1:                jal          sp, 11f
2:                jal          t1, 19f
3:                jal          ra, 18f
4:                jal          ra, 8f
5:                jal          s11, 14f
6:                jal          ra, 2b
7:                jal          ra, 6b
8:                jal          ra, 3b
9:                jal          ra, 10f
10:               jal          ra, 13f
11:               jal          s8, 15f
12:               jal          ra, 0b
13:               jal          ra, 4b
14:               jal          a5, 9b
15:               jal          a5, 12b
16:               jal          ra, 7b
17:               jal          ra, 20f
18:               jal          ra, 1b
19:               jal          ra, 17b
20:               sltu         s8, t3, gp
sub_1_3:          jal          a5, 19f
0:                jal          s0, 13f
1:                jal          t1, 15f
2:                jal          s7, 12f
3:                jal          ra, 14f
4:                jal          t1, 5f
5:                jal          s0, 6f
6:                jal          t1, 11f
7:                jal          ra, 1b
8:                jal          t3, 16f
9:                jal          ra, 17f
10:               jal          ra, 8b
11:               jal          sp, 0b
12:               jal          ra, 10b
13:               jal          t1, 7b
14:               jal          ra, 18f
15:               jal          t1, 2b
16:               jal          t1, 9b
17:               jal          ra, 20f
18:               jal          ra, 4b
19:               jal          ra, 3b
20:               sub          s10, ra, s6
sub_1_4:          jal          a5, 14f
0:                jal          t1, 15f
1:                jal          t1, 3f
2:                jal          ra, 6f
3:                jal          ra, 4f
4:                jal          ra, 5f
5:                jal          ra, 9f
6:                jal          t0, 1b
7:                jal          ra, 10f
8:                jal          s8, 7b
9:                jal          gp, 12f
10:               jal          t1, 13f
11:               jal          s3, 0b
12:               jal          t1, 11b
13:               jal          t1, 2b
14:               jal          ra, 8b
15:               xor          s8, s6, a0
sub_1_0:          jal          a5, 10f
0:                jal          ra, 16f
1:                jal          ra, 5f
2:                jal          ra, 12f
3:                jal          sp, 6f
4:                jal          ra, 0b
5:                jal          t0, 9f
6:                jal          ra, 14f
7:                jal          s1, 8f
8:                jal          ra, 1b
9:                jal          ra, 15f
10:               jal          t0, 2b
11:               jal          s3, 13f
12:               jal          ra, 3b
13:               jal          gp, 7b
14:               jal          ra, 11b
15:               jal          ra, 4b
16:               addi         s9, a3, 336
sub_1_5:          jal          a5, 4f
0:                jal          ra, 9f
1:                jal          t1, 6f
2:                jal          a1, 8f
3:                jal          s4, 1b
4:                jal          a5, 0b
5:                jal          t1, 7f
6:                jal          ra, 5b
7:                jal          ra, 2b
8:                jal          ra, 10f
9:                jal          t3, 3b
10:               nop
sub_1_6:          jal          a5, 20f
0:                jal          ra, 4f
1:                jal          ra, 18f
2:                jal          s3, 3f
3:                jal          gp, 9f
4:                jal          a6, 21f
5:                jal          ra, 0b
6:                jal          t1, 13f
7:                jal          ra, 17f
8:                jal          ra, 5b
9:                jal          ra, 12f
10:               jal          s3, 15f
11:               jal          ra, 7b
12:               jal          t1, 1b
13:               jal          t1, 19f
14:               jal          ra, 2b
15:               jal          t1, 8b
16:               jal          ra, 14b
17:               jal          t1, 10b
18:               jal          ra, 11b
19:               jal          sp, 16b
20:               jal          ra, 6b
21:               slti         s1, s4, 1
                  slti         t0, a3, 334
                  addi         t1, a5, 176
                  auipc        t2, 617536
                  srli         s8, tp, 21
                  slt          t2, tp, a0
                  sltu         a3, gp, a0
                  bne          a2, a4, 9f
                  sltu         s6, t5, s4
                  lui          a1, 945037
9:                ori          t5, s5, 1441
                  and          a0, zero, s2
                  bne          ra, a0, 26f
                  sll          t2, s8, s3
                  lui          t4, 774536
                  andi         s2, s4, -1066
                  srl          t0, t2, s2
                  bltu         s2, t4, 36f
                  sra          s10, a4, s11
                  slli         s2, s4, 4
                  and          ra, s2, a6
                  addi         a3, t3, -905
                  lui          s6, 282889
                  lui          zero, 1039314
                  sltiu        zero, s5, -784
                  xori         t3, t5, -1409
                  ori          s6, s5, 1722
26:               srli         t2, a1, 8
                  srai         sp, s11, 5
                  srl          t1, s6, s6
                  and          t1, a3, t5
                  sub          s3, s4, s1
                  blt          s5, s2, 39f
                  bge          t1, s3, 42f
                  srli         t3, s0, 9
                  beq          t6, a5, 54f
                  sltiu        s11, a3, 1429
36:               srai         s3, s0, 9
                  sra          t4, s11, a0
                  bltu         t1, s2, 41f
39:               sltiu        t5, s5, 742
                  slt          s7, s5, sp
41:               srai         a4, sp, 12
42:               srl          s11, a4, t6
                  andi         t2, s7, 1130
                  sub          zero, gp, sp
                  srli         s0, s5, 26
                  slti         s6, t4, -1915
                  beq          s5, s0, 48f
48:               bgeu         s5, s9, 68f
                  auipc        sp, 209461
                  andi         s7, a4, -536
                  sltu         gp, s3, a1
                  ori          s8, a4, 352
                  and          a3, t1, s0
54:               slt          ra, ra, gp
                  srai         s4, ra, 31
                  srli         gp, t4, 12
                  sll          s7, a6, s5
                  xor          s0, t2, s6
                  xori         ra, a2, 1125
                  xori         s8, s1, -1385
                  nop
                  or           a3, s1, sp
                  bltu         sp, t1, 77f
                  srl          ra, zero, a6
                  bgeu         s8, a2, 71f
                  add          s9, s9, t0
                  andi         s1, a6, -896
68:               or           s1, a7, s0
                  slt          sp, s8, s10
                  or           t1, s3, s3
71:               andi         a5, t1, 800
                  blt          s9, t3, 89f
                  sra          s1, ra, s7
                  slti         gp, s5, -1831
                  lui          a5, 269405
                  srli         t4, t1, 18
77:               sub          t3, zero, a3
                  sub          a5, t5, gp
                  slti         a1, a1, -1732
                  lui          t0, 946481
                  ori          a6, a6, -1270
                  add          gp, zero, s8
                  and          s3, zero, a2
                  srli         t3, t5, 12
                  bne          t2, s6, 102f
                  ori          s0, a2, -1074
                  sra          a1, s7, a3
                  srai         s1, s7, 4
89:               sltiu        s0, a2, -53
                  sltiu        s1, tp, 1565
                  addi         s8, s2, 511
                  sra          t0, s6, s11
                  slti         t2, s7, 1482
                  andi         s8, t0, -1246
                  addi         s6, t4, 2000
                  bgeu         zero, t3, 116f
                  add          t4, s3, sp
                  slli         a2, t2, 18
                  sltiu        s9, sp, -1131
                  lui          gp, 990425
                  beq          s3, s3, 111f
102:              sll          s4, s1, s11
                  or           a3, s7, a2
                  sub          a2, a6, sp
                  nop
                  sll          s8, a3, s6
                  bgeu         sp, t4, 124f
                  bge          sp, s6, 121f
                  xori         a2, sp, 1232
                  slli         ra, s4, 31
111:              andi         s6, t1, 1770
                  srai         s6, s4, 3
                  ori          a4, t2, -1356
                  srai         s0, s1, 10
                  slli         gp, t6, 15
116:              add          a3, t3, a0
                  nop
                  sub          s7, a0, a7
                  bne          s2, s2, 132f
                  bltu         t4, tp, 138f
121:              xori         s6, ra, -1952
                  srli         t1, ra, 15
                  slli         s11, a6, 21
124:              lui          s10, 515508
                  srai         s8, a2, 0
                  bne          a0, a5, 144f
                  slt          a1, t6, zero
                  srli         ra, s1, 7
                  or           s10, t4, s10
                  slti         s2, s1, 270
                  xor          s11, a1, s10
132:              slli         a0, a0, 23
                  addi         s5, t3, -1320
                  srai         s0, s0, 14
                  add          gp, tp, t2
                  slli         s1, a6, 27
                  add          a0, t5, s8
138:              sub          s9, a7, t3
                  bne          a6, a6, 152f
                  lui          t0, 464470
                  sll          a4, t5, s2
                  sltiu        zero, s6, -1487
                  sltiu        s11, tp, -1776
144:              sltiu        s8, zero, -738
                  xori         s1, a3, 471
                  or           a4, a3, t5
                  beq          s5, t5, 150f
                  slt          zero, a7, t6
                  slli         s10, s7, 4
150:              beq          s7, sp, 162f
                  add          s2, t3, t3
152:              slti         s10, sp, -1224
                  sra          a6, s6, a1
                  bge          t6, a0, 172f
                  slli         s0, tp, 3
                  sltiu        s7, s10, -603
                  bne          a6, a0, 172f
                  bne          tp, a5, 164f
                  srai         s2, t3, 26
                  xori         t0, gp, -1745
                  beq          s4, a7, 180f
162:              bne          a2, s6, 176f
                  andi         s7, a3, -1921
164:              srl          a4, s9, t2
                  slli         s3, gp, 19
                  and          gp, t1, gp
                  bgeu         zero, ra, 183f
                  bge          s5, t4, 183f
                  ori          t3, t3, -1931
                  slti         zero, s8, -1309
                  lui          s9, 352936
172:              lui          a0, 749765
                  sub          s0, s2, t6
                  bne          a0, tp, 194f
                  sltiu        zero, t0, 1707
176:              slt          a0, s4, t5
                  slt          t3, s0, s4
                  srai         t2, ra, 2
                  sltiu        s7, s10, -1275
180:              bne          a6, s0, 188f
                  bltu         s6, a4, 198f
                  lui          a5, 500653
183:              addi         sp, a1, 1087
                  andi         s11, s8, 1675
                  andi         a3, ra, -1181
                  beq          a3, a3, 202f
                  and          s8, a4, t6
188:              sll          s1, s7, tp
                  bltu         t6, gp, 192f
                  bltu         a5, s2, 203f
                  slt          s3, s8, s11
192:              xori         s9, t0, 1811
                  sltiu        a3, zero, -1702
194:              slli         s3, s9, 10
                  lui          s3, 576140
                  slti         a6, ra, -452
                  nop
198:              sltiu        a0, s11, 1213
                  nop
                  sltu         s1, s6, s4
                  slli         t2, a1, 17
202:              srli         s5, s8, 9
203:              srli         zero, zero, 18
                  beq          s8, t4, 217f
                  ori          gp, a0, 836
                  sra          t2, s2, a3
                  sltiu        a2, a0, 1819
                  slt          sp, s1, sp
                  bge          s5, s11, 222f
                  blt          a7, s5, 220f
                  slti         s3, s4, -251
                  bge          sp, t1, 231f
                  srl          s10, s0, a3
                  sltu         a3, a1, s7
                  lui          ra, 685733
                  bltu         a0, s5, 231f
217:              srl          s9, t6, t1
                  bgeu         a7, t5, 224f
                  xor          a6, a3, s11
220:              xor          s10, t6, s10
                  sub          zero, a1, t2
222:              sub          t4, a4, a1
                  ori          a3, ra, -936
224:              sltiu        t2, s3, -619
                  beq          a2, t4, 242f
                  beq          a6, t4, 243f
                  bltu         s1, a0, 242f
                  srli         s1, t2, 27
                  srli         a2, a5, 6
                  addi         t4, t3, -1234
231:              slli         s10, t5, 4
                  slt          s10, t1, s4
                  nop
                  srai         t5, zero, 8
                  slti         a2, s1, 1607
                  bltu         t2, s6, 256f
                  or           s10, s10, a1
                  or           s6, s0, a2
                  sltu         t4, a3, t6
                  beq          s3, s0, sub_1_j4 #branch to jump instr
                  auipc        a3, 69343
                  sub          a6, a4, t6
                  or           t1, t6, s10
                  srai         zero, t0, 16
                  xor          t5, s8, tp
                  slli         s5, a4, 18
                  srli         a3, s10, 22
sub_1_j4:         jal          a5, sub_5 #jump sub_1 -> sub_5
                  blt          t6, s11, 257f
                  ori          a2, t0, -538
                  addi         s8, a7, 1398
242:              slt          s10, s9, s2
243:              addi         sp, t1, -1352
                  blt          s9, a1, 262f
                  xor          s7, a1, s0
                  slli         t0, s9, 20
                  sltiu        t1, s3, -1799
                  auipc        sp, 182613
                  add          s8, t6, t0
                  nop
                  sltu         a6, a7, a7
                  bltu         a3, s0, 266f
                  srli         s2, s1, 2
                  sltu         t2, a2, s9
                  nop
256:              add          s5, s9, t5
257:              sltu         t3, s0, zero
                  srli         t2, a4, 4
                  xor          a3, zero, s6
                  bne          t3, t0, 263f
                  blt          t0, sp, 262f
262:              andi         t3, gp, -791
263:              xori         a4, a4, 837
                  xor          s11, zero, a0
                  slt          s10, t3, gp
266:              andi         a1, ra, 589
                  andi         gp, s5, 157
                  sll          t5, ra, gp
                  addi         a1, t0, -1275
                  slli         s5, s11, 30
                  and          t4, gp, s8
                  blt          s8, a4, 292f
                  sll          s6, zero, t3
                  andi         s3, s5, 1936
                  slti         zero, s2, 746
                  blt          a7, s8, 282f
                  andi         s0, s4, -1011
                  sll          a4, t0, tp
                  sltiu        sp, s11, -1605
                  xor          s3, gp, s5
                  bltu         s6, s5, 284f
282:              blt          a1, s3, 297f
                  ori          zero, gp, 1936
284:              or           a4, s8, s2
                  add          s10, a2, s5
                  auipc        s3, 551681
                  slt          t3, a7, a4
                  sltiu        s4, s4, 1551
                  srli         t5, t0, 9
                  or           s2, t6, t1
                  blt          t1, t6, 305f
292:              lui          t3, 348059
                  slt          a5, t2, a3
                  nop
                  beq          s11, a5, 315f
                  ori          t4, a5, -1988
297:              ori          a1, a7, 1094
                  andi         a0, s0, -877
                  bgeu         t5, t2, 317f
                  sll          a4, s6, a2
                  bge          ra, s7, 311f
                  srl          a4, t6, s6
                  beq          t4, zero, 315f
                  xor          s6, a4, a0
305:              slti         gp, t6, -944
                  bltu         t3, s4, 326f
                  and          s7, ra, t5
                  auipc        a5, 450282
                  slt          s6, s2, t4
                  and          s7, t5, a0
311:              addi         s5, s8, -1686
                  slti         ra, tp, -120
                  ori          s9, s4, -1723
                  lui          s7, 81233
315:              xori         s1, s10, -337
                  slti         a0, a0, 1179
317:              srl          s11, s4, a7
                  andi         a0, s10, 174
                  sll          ra, s6, s3
                  ori          gp, a5, -585
                  slt          a0, t0, a1
                  sltiu        a0, t2, -332
                  bgeu         t2, ra, 343f
                  sll          a2, t4, s10
                  sltiu        gp, a4, -1669
326:              xor          s10, a6, a4
                  ori          s2, s0, -233
                  add          s9, t3, t3
                  ori          a6, t5, -1809
                  bltu         ra, t1, 344f
                  bge          a5, s9, 346f
                  xor          t5, a7, s2
                  slt          s10, s11, s3
                  ori          s11, ra, 1364
                  bltu         s6, a5, 355f
                  sub          a6, a0, a6
                  sltiu        a3, tp, -256
                  sltu         a2, a7, s0
                  slli         sp, s9, 6
                  andi         a4, t2, -897
                  bge          t5, a2, 351f
                  ori          t3, s1, 801
343:              ori          zero, sp, -1771
344:              blt          a5, a4, 354f
                  bge          tp, s11, 357f
346:              add          s0, s9, zero
                  srli         t3, a3, 11
                  and          t0, a1, s3
                  add          a5, s10, a3
                  sll          a0, a6, t4
351:              sra          s9, a1, s7
                  srl          a1, t2, a3
                  ori          s5, t4, -605
354:              sub          a4, t0, s4
355:              bgeu         a6, t3, 373f
                  andi         zero, t5, 1559
357:              andi         a4, ra, 108
                  sll          s1, s6, ra
                  addi         s1, a7, 1090
                  xori         s8, gp, 1901
                  srai         s0, a7, 24
                  or           s3, sp, t6
                  and          zero, ra, s3
                  slt          t0, s2, a5
                  nop
                  addi         s1, s8, 1953
                  and          a3, a0, s8
                  or           s10, gp, ra
                  blt          s1, a0, 384f
                  sub          zero, s5, s10
                  and          s1, t1, s4
                  slti         a3, s3, -2010
373:              nop
                  lui          t3, 634260
                  sltiu        s0, t0, 1786
                  nop
                  beq          s0, a2, 380f
                  lui          a4, 194607
                  auipc        s4, 778818
380:              andi         a3, a0, 1718
                  sll          a4, a1, a2
                  add          a5, t4, t5
                  and          t0, s0, s2
384:              srai         a4, a0, 29
                  and          ra, a0, zero
                  auipc        a4, 923940
                  blt          t5, t1, 402f
                  slli         s6, a3, 29
                  bgeu         s8, s4, 406f
                  bge          s5, t1, 407f
                  bne          a3, t0, 411f
                  sltiu        s1, s0, -1899
                  nop
                  slt          t2, gp, s1
                  bgeu         s5, a4, 411f
                  and          s6, a6, s11
                  blt          s1, a5, 410f
                  srli         zero, s9, 31
                  xori         ra, ra, -1422
                  sra          s10, t6, s4
                  and          t4, a2, t1
402:              sub          t3, ra, s8
                  sll          s7, s6, s9
                  or           s1, s7, s7
                  bltu         s11, a1, 406f
406:              srl          gp, a2, t1
407:              ori          a1, s11, 1421
                  or           a6, s2, sp
                  add          s7, s5, t6
410:              srl          s9, a0, t1
411:              srl          s4, s6, s1
                  or           a5, a7, t1
                  nop
                  beq          t4, a7, 420f
                  slt          a0, t6, s4
                  slli         s5, t2, 10
                  auipc        s9, 727581
                  slli         s9, s6, 30
                  xor          s10, t1, zero
420:              bltu         sp, a0, 433f
                  bne          sp, a3, 439f
                  slli         t2, t4, 5
                  or           s8, s8, s3
                  bge          s0, a6, 427f
                  bltu         ra, tp, 438f
                  bne          t3, a5, 443f
427:              xor          s1, t1, a5
                  blt          sp, t4, 442f
                  blt          a4, a2, 435f
                  bgeu         t0, sp, 433f
                  slti         a3, t2, 445
                  sll          s11, a7, s6
433:              xori         s6, a1, -144
                  bge          s5, a7, 452f
435:              blt          tp, s11, 454f
                  blt          s6, s6, 444f
                  and          s0, s5, gp
438:              sra          s2, s3, zero
439:              slti         s1, t3, -317
                  or           a1, s3, s0
                  add          a5, s10, s0
442:              sll          s5, sp, a1
443:              sub          a3, t6, sp
444:              bne          t6, a5, 464f
                  xor          t4, t6, t3
                  and          a0, t2, t5
                  bgeu         s10, a1, 461f
                  xor          t4, t3, s0
                  blt          sp, s6, 455f
                  nop
                  bltu         t1, gp, 454f
452:              srli         zero, s9, 20
                  slt          t1, a5, s10
454:              nop
455:              xori         ra, s4, 1260
                  srai         ra, tp, 6
                  xor          a4, t2, t5
                  lui          s6, 925218
                  srai         a5, s5, 21
                  ori          s9, s8, 1395
461:              bne          a2, a2, 479f
                  sub          t0, s7, t4
                  ori          ra, gp, -1235
464:              slt          zero, s4, s4
                  bne          t0, a7, 471f
                  bltu         a4, a4, 484f
                  blt          t2, s1, 480f
                  add          s0, s6, t6
                  sltu         s3, a7, s4
                  and          gp, s7, s0
471:              sub          t4, t4, s9
                  sub          sp, t5, s4
                  sltu         s1, s7, a3
                  sub          ra, ra, ra
                  xori         s11, s2, 1252
                  slli         zero, t4, 18
                  sub          t4, a3, s10
                  and          a5, a2, tp
479:              bne          t2, s8, 499f
480:              sltu         s0, t0, s6
                  blt          a1, t3, 496f
                  srli         a5, t3, 15
                  addi         sp, s10, -741
484:              sltu         s6, t6, a2
                  sra          sp, t1, t5
                  add          s2, s3, a2
                  srai         s5, s5, 26
                  slli         a0, s4, 29
                  bne          t1, t3, 507f
                  sra          a1, t1, s3
                  sltu         t1, t5, s10
                  sra          a3, s4, t5
                  srai         t0, s3, 25
                  sll          a6, t6, t1
                  sltu         s5, t3, tp
496:              andi         a1, a4, 1891
                  ori          a2, s2, -274
                  sltiu        a5, a0, -332
499:              auipc        s7, 81730
                  bgeu         s4, t2, 510f
                  lui          s11, 66534
                  auipc        zero, 294888
                  sltu         s3, s7, tp
                  srli         s7, s10, 9
                  or           s6, t3, s6
                  or           ra, tp, a1
507:              andi         s2, s1, -1264
                  sltiu        a3, a4, 1112
                  blt          t2, s9, 524f
510:              srli         a6, t1, 15
                  sra          gp, s10, s8
                  addi         sp, s5, -1545
                  slt          s6, s4, gp
                  bge          s10, ra, 531f
                  andi         gp, s7, -1458
                  srli         s1, zero, 4
                  slli         s5, a6, 23
                  or           t3, s2, sp
                  slli         t3, zero, 22
                  slli         a4, t3, 15
                  sltu         s3, a2, s9
                  slti         s11, ra, 889
                  or           s2, s6, s6
524:              slti         t4, s10, 23
                  lui          t1, 21841
                  xor          s11, a7, a4
                  and          s4, a1, s5
                  sub          a4, t3, s10
                  sltiu        s7, t5, -827
                  bne          t3, t1, 543f
531:              bgeu         t1, s11, 550f
                  bne          s10, t1, 546f
                  sub          s2, s2, s11
                  addi         s6, s0, -1133
                  srl          t0, t3, s2
                  sltu         t3, s7, s11
                  blt          t0, sp, 557f
                  sll          s1, t4, s5
                  slti         a5, a5, -501
                  auipc        a5, 841465
                  auipc        zero, 757470
                  srli         t4, s0, 30
543:              sll          s11, s9, zero
                  ori          s4, s10, -588
                  and          a4, s3, s7
546:              or           t1, s0, s8
                  srli         s4, s7, 26
                  xor          s2, tp, s6
                  sll          t1, zero, s8
550:              slt          t1, s4, s3
                  slt          ra, s5, s10
                  sra          a1, s1, a5
                  auipc        s6, 1033723
                  sltiu        a0, a4, 1689
                  andi         a6, a4, -1357
                  sltu         s4, t5, gp
557:              auipc        s4, 748181
                  andi         s8, a2, -2034
                  ori          s6, s1, -721
                  auipc        s11, 138912
                  slti         s8, ra, 1302
                  sra          s9, s2, s5
                  nop
                  slli         a4, t5, 13
                  srli         s3, s0, 2
                  lui          zero, 297636
                  andi         a1, s11, -187
                  and          s8, s2, a5
                  or           t4, t0, s7
                  srl          t0, gp, t5
                  slti         gp, s4, -161
                  bgeu         s9, sp, 582f
                  bltu         tp, gp, 593f
                  beq          a3, s5, 575f
575:              bge          t3, a4, 591f
                  xori         a6, s10, 1868
                  auipc        t3, 917488
                  add          a4, t2, a7
                  sub          a4, s0, s2
                  bltu         s0, a4, 593f
                  bltu         s0, t6, 584f
582:              srai         a4, s9, 12
                  andi         t3, a5, -1660
584:              srai         s1, t4, 15
                  lui          s2, 749586
                  slti         a2, s8, -1842
                  or           s8, t2, a3
                  sub          s7, a2, t5
                  sra          a5, t0, t1
                  andi         a6, t6, -539
591:              blt          t2, s5, 593f
                  slt          t4, s5, zero
593:              ori          s8, t6, -4
                  slli         s11, gp, 11
                  srl          a3, tp, t3
                  srli         gp, s9, 19
                  ori          s4, zero, 164
                  srai         sp, s3, 23
                  lw           a5, 4(t6)
                  auipc        t1, 826075
                  slt          s7, t3, a2
                  addi         t6, t6, 52
                  andi         s4, tp, -1238
875:              addi x22, x15, 1
875:              jalr x22, x22, 0
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
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x17, x31, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_2:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x17, x31, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_3:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x17, x31, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_4:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x17, x31, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_5:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x17, x31, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_6:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x17, x31, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_7:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x17, x31, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_8:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x17, x31, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_9:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x17, x31, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_10:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x17, x31, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_11:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x17, x31, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_12:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x17, x31, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_13:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x17, x31, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_14:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x17, x31, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_15:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x17, x31, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

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
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x17, x31, zero
                  csrr x7, 0x341 # MEPC
                  csrr x7, 0x342 # MCAUSE
                  li x23, 0x3 # BREAKPOINT
                  beq x7, x23, ebreak_handler
                  li x23, 0x8 # ECALL_UMODE
                  beq x7, x23, ecall_handler
                  li x23, 0x9 # ECALL_SMODE
                  beq x7, x23, ecall_handler
                  li x23, 0xb # ECALL_MMODE
                  beq x7, x23, ecall_handler
                  li x23, 0x1
                  beq x7, x23, instr_fault_handler
                  li x23, 0x5
                  beq x7, x23, load_fault_handler
                  li x23, 0x7
                  beq x7, x23, store_fault_handler
                  li x23, 0xc
                  beq x7, x23, pt_fault_handler
                  li x23, 0xd
                  beq x7, x23, pt_fault_handler
                  li x23, 0xf
                  beq x7, x23, pt_fault_handler
                  li x23, 0x2 # ILLEGAL_INSTRUCTION
                  beq x7, x23, illegal_instr_handler
                  csrr x23, 0x343 # MTVAL
                  1: la x4, test_done
                  jalr x1, x4, 0

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
                  la x4, write_tohost
                  jalr x0, x4, 0

instr_fault_handler:
                  add x31, x17, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

load_fault_handler:
                  add x31, x17, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

store_fault_handler:
                  add x31, x17, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

ebreak_handler:   
                  csrr  x7, 0x341
                  addi  x7, x7, 4
                  csrw  0x341, x7
                  add x31, x17, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

illegal_instr_handler:
                  csrr  x7, 0x341
                  addi  x7, x7, 4
                  csrw  0x341, x7
                  add x31, x17, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x7, 0x300 # MSTATUS;
                  csrr  x7, 0x304 # MIE;
                  csrr  x7, 0x344 # MIP;
                  csrrc x7, 0x344, x7 # MIP;
                  add x31, x17, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
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
