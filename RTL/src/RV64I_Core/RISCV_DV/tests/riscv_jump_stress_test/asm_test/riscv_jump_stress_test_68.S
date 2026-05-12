.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x11, h0_start
jalr x0, x11, 0
h0_start:
                  li x6, 0x40000100
                  csrw 0x301, x6
kernel_sp:        
                  la x31, kernel_stack_end

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
                  li x0, 0x0
                  li x1, 0x20b29fce
                  li x2, 0x4
                  li x3, 0x4f79682b
                  li x4, 0x17025979
                  li x5, 0x0
                  li x6, 0x0
                  li x7, 0x1
                  li x8, 0x0
                  li x9, 0x0
                  li x10, 0x0
                  li x11, 0x80000000
                  li x12, 0x7
                  li x13, 0x80000000
                  li x14, 0xfddec4d6
                  li x15, 0x0
                  li x16, 0x56dbd5c5
                  li x17, 0x80000000
                  li x18, 0x80000000
                  li x19, 0x56e657af
                  li x20, 0xf635cd7e
                  li x22, 0x9
                  li x23, 0x80000000
                  li x24, 0x80000000
                  li x25, 0x80000000
                  li x26, 0x80000000
                  li x27, 0xf193cfe5
                  li x28, 0xb
                  li x29, 0xef39751d
                  li x30, 0x80000000
                  la x21, user_stack_end
main:             jal          ra, 1f
0:                jal          t1, 7f
1:                jal          ra, 24f
2:                jal          ra, 3f
3:                jal          ra, 5f
4:                jal          ra, 13f
5:                jal          ra, 14f
6:                jal          ra, 9f
7:                jal          ra, 18f
8:                jal          ra, 22f
9:                jal          ra, 12f
10:               jal          ra, 19f
11:               jal          s9, 0b
12:               jal          ra, 23f
13:               jal          ra, 10b
14:               jal          a3, 4b
15:               jal          t1, 25f
16:               jal          ra, 15b
17:               jal          t1, 21f
18:               jal          ra, 2b
19:               jal          t1, 6b
20:               jal          ra, 11b
21:               jal          ra, 16b
22:               jal          t1, 17b
23:               jal          ra, 8b
24:               jal          ra, 20b
25:               and          s3, s11, s3
main_1:           jal          ra, 13f
0:                jal          sp, 7f
1:                jal          t1, 17f
2:                jal          t1, 15f
3:                jal          ra, 18f
4:                jal          ra, 2b
5:                jal          ra, 10f
6:                jal          ra, 14f
7:                jal          sp, 16f
8:                jal          s1, 11f
9:                jal          s4, 4b
10:               jal          t1, 8b
11:               jal          t1, 3b
12:               jal          ra, 0b
13:               jal          ra, 9b
14:               jal          ra, 12b
15:               jal          t1, 1b
16:               jal          t1, 5b
17:               jal          s6, 6b
18:               andi         s9, s2, 1696
main_0:           jal          ra, 15f
0:                jal          ra, 19f
1:                jal          a0, 20f
2:                jal          t1, 17f
3:                jal          s2, 7f
4:                jal          ra, 8f
5:                jal          t2, 9f
6:                jal          s9, 12f
7:                jal          t1, 24f
8:                jal          t2, 10f
9:                jal          ra, 3b
10:               jal          ra, 1b
11:               jal          ra, 14f
12:               jal          ra, 23f
13:               jal          ra, 16f
14:               jal          ra, 21f
15:               jal          s2, 6b
16:               jal          a0, 11b
17:               jal          t0, 22f
18:               jal          a5, 4b
19:               jal          s10, 13b
20:               jal          s11, 0b
21:               jal          ra, 2b
22:               jal          ra, 25f
23:               jal          ra, 18b
24:               jal          ra, 26f
25:               jal          ra, 5b
26:               andi         a0, gp, -411
main_2:           jal          ra, 25f
0:                jal          ra, 13f
1:                jal          ra, 18f
2:                jal          t1, 28f
3:                jal          ra, 30f
4:                jal          ra, 16f
5:                jal          t1, 10f
6:                jal          t1, 23f
7:                jal          t4, 1b
8:                jal          t1, 9f
9:                jal          ra, 3b
10:               jal          ra, 20f
11:               jal          t1, 29f
12:               jal          tp, 15f
13:               jal          ra, 21f
14:               jal          a0, 27f
15:               jal          ra, 22f
16:               jal          s9, 8b
17:               jal          t1, 12b
18:               jal          ra, 26f
19:               jal          ra, 24f
20:               jal          t1, 11b
21:               jal          ra, 14b
22:               jal          s10, 19b
23:               jal          gp, 4b
24:               jal          s10, 2b
25:               jal          t1, 7b
26:               jal          sp, 17b
27:               jal          t0, 5b
28:               jal          t1, 0b
29:               jal          ra, 6b
30:               sra          t0, a6, gp
                  slti         s11, a5, 175
                  bltu         a6, s8, 7f
                  srli         a3, sp, 29
                  and          s2, s5, t2
                  addi         s9, t1, -17
                  sltiu        a5, gp, -682
                  slt          t2, a1, t1
7:                nop
                  sltiu        s8, ra, -1722
                  sltu         a2, t4, ra
                  slti         a0, a7, -250
                  slt          a4, gp, t0
                  slti         tp, t0, -1637
                  xori         t1, s3, -1707
                  beq          tp, s11, 24f
                  add          zero, s1, a0
                  xor          s0, tp, a4
                  slli         s10, t4, 16
                  bltu         s9, s1, 22f
                  sltiu        s11, s10, -629
                  slti         gp, s4, 1168
                  lui          zero, 71244
22:               sra          t3, a0, t1
                  bne          sp, s9, 34f
24:               addi         t3, t0, 1164
                  add          s8, s8, s10
                  sub          s1, t3, a0
                  slli         s8, t1, 17
                  add          sp, s0, a3
                  slt          a2, s8, zero
                  lui          s8, 19199
                  auipc        sp, 592825
                  slti         t2, s0, 847
                  andi         gp, s10, 1807
34:               slti         ra, a1, 1486
                  addi         s2, t2, 880
                  bge          a3, s5, 39f
                  bge          a0, zero, 43f
                  sltu         gp, a2, s11
39:               and          s0, t6, s8
                  bgeu         s0, ra, 50f
                  sll          s4, a1, t0
                  bgeu         s11, t5, 44f
43:               slt          ra, t6, a2
44:               bge          s1, s5, 48f
                  or           t1, s10, a2
                  add          gp, t1, s0
                  nop
48:               sll          t0, s9, s6
                  nop
50:               blt          t4, a4, 68f
                  lui          a0, 36763
                  xori         s11, s7, -1992
                  srl          a4, ra, t1
                  nop
main_3:           jal          ra, 5f
0:                jal          s6, 10f
1:                jal          s7, 7f
2:                jal          ra, 6f
3:                jal          ra, 1b
4:                jal          ra, 8f
5:                jal          ra, 0b
6:                jal          tp, 9f
7:                jal          tp, 14f
8:                jal          ra, 12f
9:                jal          t3, 4b
10:               jal          ra, 2b
11:               jal          ra, 15f
12:               jal          ra, 13f
13:               jal          sp, 3b
14:               jal          ra, 11b
15:               xori         s6, s2, -2015
                  sltu         tp, a7, zero
                  sll          t2, a2, s11
                  add          s9, s10, sp
                  auipc        s8, 388657
                  slt          s11, a5, sp
                  lui          a3, 120999
                  sra          tp, s3, t2
                  bltu         t0, s2, 68f
                  sll          a6, t4, t6
                  sub          s10, s2, t0
                  bge          t0, s2, 83f
                  sub          s2, s10, s0
                  srai         s0, sp, 11
68:               sltu         t5, s6, t4
                  add          a3, t5, t0
                  slt          a5, a0, a1
                  and          s11, t5, t2
                  bgeu         s11, a6, 76f
                  addi         a5, a7, 377
                  srli         t2, s6, 25
                  srl          s8, a5, s8
76:               slti         t4, a3, 1349
                  and          s6, s4, t6
                  sub          a6, a1, s4
                  bltu         s9, s6, 90f
                  beq          a5, s6, 86f
                  bge          zero, t5, 89f
                  sra          s1, s9, t3
83:               or           s2, s10, a0
                  bltu         a3, tp, 100f
                  bltu         t1, a1, 104f
86:               lui          sp, 448565
                  auipc        a2, 739549
                  xor          t2, zero, s7
89:               slt          s4, s10, tp
90:               andi         sp, s10, -1689
                  addi         t5, sp, 646
                  lui          a4, 279948
                  ori          t0, s4, 1424
                  srl          s6, a4, s6
                  sltu         t3, s4, s7
                  sltiu        s4, zero, -619
                  blt          a2, a4, 99f
                  sltiu        zero, s0, 1793
99:               ori          t3, gp, -1907
100:              srli         t1, a3, 1
                  slli         s11, s7, 28
                  add          sp, t2, a1
                  sra          s11, s10, a1
104:              bgeu         s5, s6, 111f
                  xori         a6, s11, 288
                  auipc        s10, 914302
                  andi         a4, a1, 740
                  or           s3, s2, sp
                  slt          t0, t2, t1
                  slti         s3, tp, 1572
111:              bltu         s8, s11, 131f
                  add          s8, s7, t0
                  bne          a4, ra, 119f
                  sltu         a3, gp, s6
                  srli         t4, t6, 5
                  sltu         sp, s11, a6
                  and          t3, a5, s0
                  or           s3, gp, t1
119:              and          s2, t1, s1
                  lui          tp, 307653
                  sll          t5, sp, t1
                  add          s0, s11, a4
                  sub          t4, s7, a2
                  ori          s11, s9, -1304
                  xori         tp, a6, -1348
                  srli         a2, s5, 26
                  andi         gp, zero, -1190
                  sltiu        ra, s0, -16
                  slt          a6, s6, zero
                  bne          a4, zero, 147f
131:              andi         a0, s0, 965
                  nop
                  sub          a2, s0, s5
                  srai         a3, t1, 4
                  or           a7, t1, s1
                  blt          s2, a3, 150f
                  sltu         zero, s7, s6
main_4:           jal          ra, 10f
0:                jal          ra, 7f
1:                jal          ra, 8f
2:                jal          t1, 13f
3:                jal          t1, 1b
4:                jal          t1, 6f
5:                jal          ra, 9f
6:                jal          t1, 2b
7:                jal          t1, 5b
8:                jal          ra, 11f
9:                jal          ra, 3b
10:               jal          a0, 4b
11:               jal          t5, 16f
12:               jal          t1, 15f
13:               jal          ra, 14f
14:               jal          s8, 12b
15:               jal          t1, 0b
16:               andi         s11, zero, -289
                  nop
                  slt          a7, s9, t3
                  auipc        t1, 52588
                  xor          t3, tp, a5
                  bgeu         s0, ra, 160f
                  sltiu        s3, t3, -595
                  xor          t5, s0, s9
                  xor          s11, s2, a6
                  add          gp, s2, s10
147:              bgeu         s1, s2, 161f
                  slt          s7, s8, sp
                  srli         a2, tp, 26
150:              blt          sp, t5, 156f
                  slt          t4, a6, a1
                  addi         t0, s7, -1635
                  ori          a5, t2, 1894
                  sra          s10, s1, t0
                  blt          t6, s4, 172f
156:              srli         gp, a2, 1
                  sltu         a0, ra, a3
                  bge          s0, a2, 160f
                  addi         sp, t1, -441
160:              bgeu         a5, t4, 164f
161:              sltu         zero, s11, s6
                  blt          a0, s10, 168f
                  bge          s7, t6, 180f
164:              slti         a4, s9, 419
                  bne          a2, gp, 169f
                  sltiu        t1, s9, 1645
                  auipc        a6, 528504
168:              srli         s7, a6, 5
169:              xor          a0, t6, s7
                  andi         a0, zero, 2032
                  xor          s2, s7, ra
172:              ori          gp, a6, -1613
                  srl          s8, a0, t6
                  xor          s3, zero, zero
                  bltu         s2, a7, 181f
                  bgeu         t2, s5, 194f
                  slti         t0, t5, 916
                  sltiu        a5, tp, -1420
                  add          tp, s1, s5
180:              nop
181:              sltiu        s2, s4, 259
                  sub          t3, t0, a2
                  addi         t3, t1, -797
                  ori          s0, a4, 1105
                  addi         s6, a6, 1980
                  auipc        s10, 985666
                  and          s11, s10, a3
                  sltu         t3, t6, t2
                  nop
                  andi         a0, s0, -458
                  andi         a6, a7, 1169
                  bne          a6, t2, 202f
                  slt          sp, a2, s1
194:              beq          s8, sp, 205f
                  nop
                  or           zero, t2, a2
                  srli         sp, s10, 20
                  beq          s4, a5, 202f
                  nop
                  sll          s11, tp, a0
                  slt          a4, s2, zero
202:              sra          t4, s7, a5
                  slti         t4, ra, -2030
                  srai         s4, s0, 19
205:              blt          s6, s2, 207f
                  bne          a7, a1, 216f
207:              sra          ra, s5, a5
                  sll          t3, t3, a3
                  addi         s11, tp, 330
                  sub          a2, s7, ra
                  slli         zero, s7, 29
                  sltu         a7, ra, t3
                  sub          t3, a6, s2
                  sll          sp, s5, s1
                  and          a2, tp, tp
                  srli         a5, t3, 10
                  la           a7, sub_1
                  and          s11, s0, s0
                  addi         a7, a7, 339
                  ori          t3, s4, -619
main_j1:          jalr         ra, a7, -338 #jump main -> sub_1
                  srai         tp, t5, 1
                  addi         ra, t5, 944
                  addi         s7, sp, 1949
216:              sltiu        sp, a5, -1506
                  andi         t3, a0, -673
                  andi         t4, a1, -1793
                  sub          t0, a1, s7
                  bltu         a4, s0, 224f
                  lui          s10, 404728
                  slti         s2, t3, 355
                  xor          s6, t0, t2
224:              bltu         t2, ra, 240f
                  sltiu        s10, a1, -1102
                  sra          a7, s8, a0
                  slt          t0, a6, s3
                  slti         t5, s7, -340
                  sltiu        a4, s9, -1330
                  bge          s3, s10, 232f
                  bgeu         s0, t6, 245f
232:              and          a6, a5, s5
                  slti         s4, s0, 1041
                  xori         s8, a6, 1155
                  sltu         a2, ra, a7
                  lui          s8, 284870
                  add          a4, t5, s4
                  bgeu         t0, a4, 249f
                  addi         sp, t5, -785
240:              bltu         t3, a0, 254f
                  and          t2, a1, a1
                  or           s6, a7, s10
                  slt          s0, s8, s8
                  srli         s10, s6, 13
245:              bgeu         t5, a5, 264f
                  ori          t0, sp, -153
                  srl          t3, t0, s8
                  ori          tp, zero, -1077
249:              sltiu        s0, s0, 2037
                  slli         s10, tp, 2
                  addi         a7, s5, 112
                  slt          zero, sp, a4
                  addi         s4, a7, -933
254:              sltiu        t1, s0, -1914
                  nop
                  slti         s4, s7, 1063
                  slli         a4, s8, 13
                  srli         s9, t6, 28
                  addi         t2, gp, 654
                  bgeu         gp, t1, 277f
                  xor          s2, s8, zero
                  srli         t2, a4, 5
                  auipc        a0, 140746
264:              slti         a4, t0, -2030
                  xor          t5, a3, t1
                  and          a0, t6, s1
                  bge          s2, t5, 287f
                  srl          s2, s6, zero
                  bgeu         t0, a7, 275f
                  ori          s7, t0, -1408
                  beq          t1, ra, 277f
                  xor          s2, gp, t5
                  bgeu         s4, s0, 291f
                  addi         t4, t6, -1610
275:              sll          a4, a6, gp
                  lui          s7, 96021
277:              and          a0, sp, s2
                  nop
                  srli         s4, t0, 17
                  srli         s8, s8, 4
                  xor          s10, s8, t2
                  and          zero, gp, t5
                  and          s4, a1, s4
                  xor          s4, t4, gp
                  bgeu         ra, a0, 287f
                  sra          s8, s6, t1
287:              bne          a1, s1, 305f
                  sra          s1, t4, s5
                  auipc        t2, 809078
                  bltu         a4, s4, 298f
291:              addi         tp, a3, -888
                  or           t2, s11, sp
                  sltiu        tp, s6, 1079
                  or           t2, s11, s10
                  sll          a5, a4, gp
                  lui          s7, 95925
                  slti         ra, s0, 1211
298:              sra          t5, t3, s4
                  bge          t2, s6, 305f
                  addi         sp, s5, -549
                  sra          s0, t1, s7
                  beq          t2, t2, 309f
                  slti         a4, zero, -140
                  beq          t6, s10, 308f
305:              bne          sp, a3, 308f
                  add          gp, s5, t1
                  bgeu         zero, t3, 313f
308:              auipc        t1, 386685
309:              bne          s8, s10, 312f
                  auipc        a6, 260823
                  add          s0, s10, a3
312:              bge          s4, a1, 328f
313:              srai         s7, s2, 23
                  sltiu        ra, s7, -1676
                  slli         t2, t1, 6
                  sub          s11, s0, a3
                  xor          t1, t3, t5
                  bge          t4, a7, 326f
                  slli         a0, a4, 6
                  srai         s10, a2, 20
                  sll          sp, t0, tp
                  blt          sp, s11, 328f
                  blt          s10, t6, 330f
                  lui          a0, 157284
                  srli         s2, t1, 15
326:              sub          s9, zero, t6
                  nop
328:              bltu         t6, t3, 330f
                  and          sp, a0, s8
330:              srai         t4, t1, 3
                  la x11, test_done
                  jalr x0, x11, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            blt          sp, a0, sub_4_stack_p
                  auipc        a3, 515420
                  and          s2, s5, a4
sub_4_stack_p:    addi         s5, s5, -32
                  sra          sp, s1, t1
                  andi         s1, s9, 1364
                  sw           ra, 4(s5)
                  srai         gp, s4, 21
                  srl          t2, t3, ra
                  xor          a6, t0, t6
                  sltiu        s3, a4, 1091
                  sltu         a0, t4, s1
                  blt          s9, s0, 8f
                  bne          ra, s0, 16f
                  sub          s11, zero, t0
                  nop
8:                sltu         a4, s9, t4
                  bgeu         a2, t3, 27f
                  sub          zero, gp, s10
                  auipc        s11, 866529
                  slt          t4, t4, s6
                  andi         zero, s4, -848
                  or           s10, s10, t5
                  nop
16:               bgeu         s3, s0, 27f
                  beq          a5, t6, 27f
                  lui          s2, 856011
                  add          s9, a4, sp
                  sltiu        a5, s11, -767
                  sltiu        s7, sp, 1891
                  srai         s10, s4, 24
                  bgeu         tp, a5, 25f
                  addi         tp, tp, -1291
25:               srai         a0, a0, 31
                  bltu         t6, a7, 27f
27:               xor          a2, zero, t6
                  srl          a7, s10, a4
                  addi         zero, t2, -1641
                  lw           ra, 4(s5)
                  auipc        a5, 118057
                  addi         s5, s5, 32
                  sra          a7, t0, s7
                  xor          s3, a1, a3
43:               addi x28, x1, 1
43:               jalr x28, x28, 0
sub_3:            addi         a7, a6, 811
                  ori          t0, a6, -673
                  beq          s10, a6, sub_3_stack_p
                  sra          a2, gp, sp
                  srli         a5, a5, 22
                  sub          a3, s7, s1
sub_3_stack_p:    addi         s5, s5, -24
                  slti         t3, a0, -852
                  sw           ra, 4(s5)
                  and          s10, s1, s10
                  lui          t5, 236647
                  slt          s3, sp, s11
                  la           tp, sub_4
                  sub          s0, t3, s8
                  slt          sp, t2, a2
                  sltiu        s9, ra, -1985
                  sltiu        s6, t4, -1458
                  addi         tp, tp, -250
                  add          sp, s4, s2
sub_3_j4:         jalr         ra, tp, 251 #jump sub_3 -> sub_4
                  srl          sp, tp, ra
                  sub          t1, t5, s1
                  slli         s2, a4, 21
                  or           a4, s9, t1
                  sra          s0, t4, t4
                  slli         sp, tp, 14
                  andi         s6, a3, 1189
                  xor          t0, t4, s9
sub_3_j5:         jal          ra, sub_5 #jump sub_3 -> sub_5
sub_3_5:          jal          ra, 6f
0:                jal          ra, 14f
1:                jal          s0, 3f
2:                jal          t1, 1b
3:                jal          ra, 8f
4:                jal          ra, 16f
5:                jal          t3, 7f
6:                jal          ra, 0b
7:                jal          t1, 4b
8:                jal          s8, 13f
9:                jal          t1, 5b
10:               jal          t0, 2b
11:               jal          tp, 10b
12:               jal          ra, 15f
13:               jal          ra, 9b
14:               jal          ra, 12b
15:               jal          ra, 11b
16:               sltiu        s0, a3, -1304
sub_3_0:          jal          ra, 2f
0:                jal          s9, 13f
1:                jal          t1, 21f
2:                jal          s0, 4f
3:                jal          s4, 18f
4:                jal          s11, 3b
5:                jal          t1, 19f
6:                jal          ra, 28f
7:                jal          ra, 17f
8:                jal          ra, 15f
9:                jal          t4, 22f
10:               jal          sp, 20f
11:               jal          ra, 25f
12:               jal          t1, 27f
13:               jal          s6, 8b
14:               jal          ra, 16f
15:               jal          a0, 1b
16:               jal          s2, 6b
17:               jal          a3, 9b
18:               jal          a4, 0b
19:               jal          a0, 14b
20:               jal          ra, 26f
21:               jal          t1, 10b
22:               jal          ra, 12b
23:               jal          ra, 5b
24:               jal          ra, 11b
25:               jal          ra, 7b
26:               jal          ra, 24b
27:               jal          t1, 23b
28:               sra          a0, a6, a0
sub_3_17:         jal          ra, 2f
0:                jal          ra, 5f
1:                jal          t1, 7f
2:                jal          ra, 6f
3:                jal          t1, 1b
4:                jal          t1, 8f
5:                jal          t0, 10f
6:                jal          ra, 0b
7:                jal          t0, 4b
8:                jal          ra, 9f
9:                jal          ra, 11f
10:               jal          ra, 3b
11:               or           a4, a0, t2
sub_3_15:         jal          ra, 8f
0:                jal          t1, 4f
1:                jal          s4, 27f
2:                jal          t1, 5f
3:                jal          gp, 16f
4:                jal          ra, 11f
5:                jal          ra, 12f
6:                jal          ra, 21f
7:                jal          ra, 15f
8:                jal          t3, 14f
9:                jal          s2, 10f
10:               jal          ra, 7b
11:               jal          gp, 22f
12:               jal          ra, 26f
13:               jal          t1, 3b
14:               jal          ra, 17f
15:               jal          ra, 18f
16:               jal          ra, 19f
17:               jal          ra, 9b
18:               jal          ra, 23f
19:               jal          ra, 6b
20:               jal          ra, 24f
21:               jal          gp, 20b
22:               jal          s9, 13b
23:               jal          ra, 25f
24:               jal          gp, 2b
25:               jal          t1, 0b
26:               jal          t1, 1b
27:               sltu         s3, a2, a3
sub_3_7:          jal          ra, 11f
0:                jal          t1, 16f
1:                jal          s1, 4f
2:                jal          ra, 1b
3:                jal          ra, 12f
4:                jal          ra, 13f
5:                jal          t1, 7f
6:                jal          ra, 15f
7:                jal          ra, 10f
8:                jal          ra, 2b
9:                jal          t5, 8b
10:               jal          ra, 0b
11:               jal          ra, 3b
12:               jal          ra, 14f
13:               jal          ra, 5b
14:               jal          t5, 6b
15:               jal          s3, 9b
16:               slli         t0, s1, 7
sub_3_2:          jal          ra, 4f
0:                jal          gp, 16f
1:                jal          ra, 20f
2:                jal          ra, 14f
3:                jal          t1, 15f
4:                jal          ra, 7f
5:                jal          ra, 17f
6:                jal          t1, 19f
7:                jal          ra, 5b
8:                jal          ra, 3b
9:                jal          ra, 1b
10:               jal          ra, 8b
11:               jal          ra, 23f
12:               jal          t3, 18f
13:               jal          t1, 21f
14:               jal          ra, 12b
15:               jal          ra, 0b
16:               jal          ra, 22f
17:               jal          ra, 13b
18:               jal          ra, 11b
19:               jal          a6, 9b
20:               jal          t5, 10b
21:               jal          tp, 6b
22:               jal          t1, 2b
23:               srl          s11, t1, s8
sub_3_3:          jal          ra, 4f
0:                jal          t1, 11f
1:                jal          ra, 9f
2:                jal          ra, 13f
3:                jal          ra, 6f
4:                jal          t1, 2b
5:                jal          ra, 12f
6:                jal          s1, 14f
7:                jal          s0, 1b
8:                jal          ra, 7b
9:                jal          ra, 10f
10:               jal          ra, 17f
11:               jal          s3, 3b
12:               jal          s8, 18f
13:               jal          t3, 8b
14:               jal          ra, 19f
15:               jal          ra, 0b
16:               jal          t1, 5b
17:               jal          s2, 16b
18:               jal          s3, 15b
19:               sll          sp, t2, ra
sub_3_1:          jal          ra, 12f
0:                jal          t1, 15f
1:                jal          s8, 9f
2:                jal          s6, 1b
3:                jal          t1, 28f
4:                jal          ra, 3b
5:                jal          ra, 13f
6:                jal          gp, 27f
7:                jal          t1, 21f
8:                jal          t1, 2b
9:                jal          s10, 11f
10:               jal          s1, 24f
11:               jal          ra, 23f
12:               jal          s9, 5b
13:               jal          t1, 19f
14:               jal          a7, 18f
15:               jal          ra, 22f
16:               jal          t1, 4b
17:               jal          t1, 8b
18:               jal          ra, 16b
19:               jal          t5, 25f
20:               jal          ra, 7b
21:               jal          ra, 14b
22:               jal          t1, 20b
23:               jal          ra, 0b
24:               jal          ra, 6b
25:               jal          gp, 26f
26:               jal          t1, 10b
27:               jal          t1, 17b
28:               sra          t1, ra, t1
sub_3_8:          jal          ra, 20f
0:                jal          ra, 6f
1:                jal          t1, 13f
2:                jal          sp, 14f
3:                jal          t1, 9f
4:                jal          ra, 25f
5:                jal          t1, 29f
6:                jal          ra, 26f
7:                jal          a5, 2b
8:                jal          gp, 17f
9:                jal          ra, 23f
10:               jal          ra, 1b
11:               jal          ra, 10b
12:               jal          t1, 7b
13:               jal          ra, 12b
14:               jal          a6, 8b
15:               jal          t1, 5b
16:               jal          ra, 21f
17:               jal          t1, 28f
18:               jal          t5, 4b
19:               jal          ra, 0b
20:               jal          t1, 18b
21:               jal          tp, 22f
22:               jal          ra, 27f
23:               jal          t1, 19b
24:               jal          ra, 11b
25:               jal          ra, 15b
26:               jal          t3, 24b
27:               jal          t1, 30f
28:               jal          ra, 16b
29:               jal          t1, 3b
30:               slti         t4, t5, 102
sub_3_13:         jal          ra, 6f
0:                jal          t0, 13f
1:                jal          s8, 12f
2:                jal          t1, 15f
3:                jal          ra, 17f
4:                jal          sp, 14f
5:                jal          t1, 16f
6:                jal          ra, 9f
7:                jal          t4, 8f
8:                jal          t5, 1b
9:                jal          t1, 3b
10:               jal          s7, 20f
11:               jal          a3, 0b
12:               jal          a4, 19f
13:               jal          s7, 2b
14:               jal          t1, 7b
15:               jal          t1, 10b
16:               jal          ra, 18f
17:               jal          s0, 5b
18:               jal          t1, 4b
19:               jal          ra, 11b
20:               jal          t1, 21f
21:               lui          t1, 621265
sub_3_9:          jal          ra, 2f
0:                jal          ra, 22f
1:                jal          t1, 7f
2:                jal          ra, 19f
3:                jal          t1, 1b
4:                jal          t1, 13f
5:                jal          ra, 16f
6:                jal          ra, 11f
7:                jal          ra, 10f
8:                jal          t1, 3b
9:                jal          t1, 17f
10:               jal          s0, 20f
11:               jal          ra, 18f
12:               jal          s2, 5b
13:               jal          ra, 25f
14:               jal          t1, 12b
15:               jal          t1, 26f
16:               jal          ra, 4b
17:               jal          ra, 14b
18:               jal          s10, 8b
19:               jal          ra, 24f
20:               jal          ra, 27f
21:               jal          t1, 9b
22:               jal          ra, 23f
23:               jal          ra, 21b
24:               jal          ra, 15b
25:               jal          ra, 6b
26:               jal          a4, 0b
27:               andi         a5, s11, -1505
sub_3_12:         jal          ra, 2f
0:                jal          ra, 26f
1:                jal          ra, 27f
2:                jal          t0, 9f
3:                jal          ra, 8f
4:                jal          s8, 1b
5:                jal          t5, 6f
6:                jal          t1, 18f
7:                jal          t1, 20f
8:                jal          ra, 25f
9:                jal          s6, 21f
10:               jal          ra, 5b
11:               jal          t1, 24f
12:               jal          s8, 3b
13:               jal          s1, 17f
14:               jal          ra, 16f
15:               jal          ra, 10b
16:               jal          ra, 7b
17:               jal          s2, 11b
18:               jal          t2, 23f
19:               jal          ra, 13b
20:               jal          t0, 19b
21:               jal          ra, 12b
22:               jal          t1, 0b
23:               jal          ra, 22b
24:               jal          ra, 15b
25:               jal          ra, 14b
26:               jal          ra, 4b
27:               sltu         gp, ra, gp
sub_3_4:          jal          ra, 23f
0:                jal          ra, 25f
1:                jal          ra, 7f
2:                jal          a6, 26f
3:                jal          s1, 19f
4:                jal          t1, 10f
5:                jal          ra, 18f
6:                jal          ra, 13f
7:                jal          ra, 6b
8:                jal          t1, 20f
9:                jal          sp, 27f
10:               jal          ra, 15f
11:               jal          t1, 21f
12:               jal          ra, 0b
13:               jal          s2, 3b
14:               jal          ra, 16f
15:               jal          ra, 11b
16:               jal          s9, 17f
17:               jal          ra, 5b
18:               jal          ra, 9b
19:               jal          ra, 4b
20:               jal          ra, 22f
21:               jal          t1, 14b
22:               jal          ra, 1b
23:               jal          t1, 2b
24:               jal          ra, 28f
25:               jal          tp, 24b
26:               jal          t1, 8b
27:               jal          ra, 12b
28:               srl          s0, s8, s6
sub_3_16:         jal          ra, 15f
0:                jal          ra, 10f
1:                jal          ra, 25f
2:                jal          ra, 13f
3:                jal          ra, 20f
4:                jal          t1, 22f
5:                jal          t1, 17f
6:                jal          t0, 27f
7:                jal          a4, 18f
8:                jal          ra, 29f
9:                jal          ra, 2b
10:               jal          s8, 7b
11:               jal          t1, 16f
12:               jal          ra, 30f
13:               jal          t1, 1b
14:               jal          gp, 0b
15:               jal          gp, 8b
16:               jal          ra, 24f
17:               jal          ra, 12b
18:               jal          ra, 5b
19:               jal          t2, 23f
20:               jal          ra, 9b
21:               jal          a4, 28f
22:               jal          ra, 21b
23:               jal          ra, 6b
24:               jal          ra, 4b
25:               jal          ra, 26f
26:               jal          ra, 19b
27:               jal          ra, 14b
28:               jal          t1, 3b
29:               jal          s1, 11b
30:               sltu         s0, s1, a6
sub_3_11:         jal          ra, 12f
0:                jal          t1, 4f
1:                jal          ra, 0b
2:                jal          t0, 8f
3:                jal          s3, 7f
4:                jal          tp, 3b
5:                jal          t1, 11f
6:                jal          a3, 10f
7:                jal          s7, 13f
8:                jal          ra, 6b
9:                jal          sp, 1b
10:               jal          ra, 5b
11:               jal          ra, 9b
12:               jal          ra, 2b
13:               lui          t3, 59492
sub_3_10:         jal          ra, 5f
0:                jal          ra, 3f
1:                jal          ra, 11f
2:                jal          ra, 8f
3:                jal          t1, 4f
4:                jal          t1, 2b
5:                jal          gp, 6f
6:                jal          ra, 7f
7:                jal          ra, 9f
8:                jal          t1, 1b
9:                jal          ra, 10f
10:               jal          a2, 0b
11:               add          t0, a6, t1
                  auipc        a3, 1024783
                  and          ra, t1, gp
                  lui          s8, 79133
                  bgeu         s10, t0, 11f
                  bge          a7, s8, 17f
                  or           s11, s2, t2
                  sltiu        t3, s8, 349
                  bne          t0, zero, 21f
                  bge          zero, t5, 12f
                  sll          s10, t4, a0
                  auipc        a2, 885918
11:               srli         a5, s11, 2
12:               srl          s11, a2, gp
                  slti         s11, s1, -162
                  bgeu         sp, a1, 29f
                  lui          tp, 909710
                  auipc        s11, 554131
17:               auipc        s10, 379966
                  ori          a4, s7, 1012
                  bge          sp, s2, 22f
                  sra          ra, a7, t3
sub_3_14:         jal          ra, 10f
0:                jal          ra, 15f
1:                jal          ra, 19f
2:                jal          ra, 4f
3:                jal          tp, 2b
4:                jal          ra, 1b
5:                jal          ra, 22f
6:                jal          sp, 0b
7:                jal          gp, 11f
8:                jal          ra, 14f
9:                jal          ra, 13f
10:               jal          t2, 20f
11:               jal          ra, 8b
12:               jal          t0, 6b
13:               jal          ra, 3b
14:               jal          a2, 9b
15:               jal          ra, 7b
16:               jal          t2, 21f
17:               jal          a2, 12b
18:               jal          ra, 5b
19:               jal          a4, 18b
20:               jal          ra, 17b
21:               jal          ra, 23f
22:               jal          ra, 16b
23:               xor          gp, t2, s8
21:               blt          s1, s5, 35f
22:               lui          s9, 364697
                  sra          a4, a2, s3
                  andi         s2, s7, 843
                  or           a6, t1, gp
                  andi         s1, zero, -195
                  bltu         ra, gp, 44f
                  ori          s2, a2, 1801
29:               lui          s4, 563272
                  or           t1, a3, ra
                  sltiu        t4, sp, 884
                  beq          t4, a0, 35f
                  andi         a2, a7, -1354
                  bge          t2, t4, 45f
35:               slti         s4, zero, -80
                  srai         tp, a4, 17
                  ori          a7, a5, 1444
                  ori          t3, s5, -551
                  bgeu         s7, s3, 43f
                  sub          t0, t5, s11
                  srl          t2, s8, t3
                  sltu         t5, a1, t1
43:               blt          a1, sp, 45f
44:               auipc        a5, 919022
45:               bne          tp, t3, 57f
                  bne          s11, s11, 64f
                  sltiu        a7, s2, 1423
                  srl          s1, a1, s0
                  bgeu         sp, s1, 69f
                  bgeu         sp, s7, 68f
                  sll          a4, t6, s9
                  sub          s11, a7, s5
                  andi         s2, t4, -487
                  bltu         s2, a4, 74f
                  addi         gp, zero, -1671
                  beq          s0, s7, 57f
57:               srli         tp, t1, 5
                  bltu         a6, a0, 69f
                  bne          s11, tp, 73f
                  srai         tp, s7, 9
                  auipc        t4, 89657
                  xor          t3, s9, a3
                  bgeu         s6, s1, 73f
64:               bge          s10, ra, 66f
                  beq          a4, a6, 68f
66:               auipc        s11, 603234
                  slli         s7, s1, 5
68:               srli         a4, a0, 8
69:               beq          s9, zero, 78f
                  srai         a4, ra, 26
                  xor          s7, s3, s4
                  bgeu         t6, s1, 88f
73:               beq          t5, a5, 78f
74:               sra          zero, tp, a7
                  sra          a0, s0, a5
sub_3_6:          jal          ra, 2f
0:                jal          s9, 19f
1:                jal          t1, 3f
2:                jal          t1, 0b
3:                jal          ra, 6f
4:                jal          ra, 8f
5:                jal          t1, 21f
6:                jal          t0, 4b
7:                jal          ra, 9f
8:                jal          ra, 26f
9:                jal          t1, 12f
10:               jal          ra, 5b
11:               jal          gp, 7b
12:               jal          t1, 1b
13:               jal          ra, 11b
14:               jal          t1, 25f
15:               jal          ra, 16f
16:               jal          s8, 20f
17:               jal          t3, 13b
18:               jal          ra, 17b
19:               jal          ra, 22f
20:               jal          a6, 18b
21:               jal          t1, 15b
22:               jal          t4, 14b
23:               jal          t1, 10b
24:               jal          ra, 23b
25:               jal          ra, 24b
26:               jal          ra, 27f
27:               lui          t3, 416059
                  slt          ra, s7, s1
                  blt          s6, s4, 85f
78:               sltu         a2, t2, a3
                  sltu         t1, a7, t1
                  sub          s3, t3, gp
                  ori          zero, sp, -2025
                  blt          t2, s10, 92f
                  nop
                  beq          t2, t3, 103f
85:               sltu         s9, a2, a1
                  and          t2, s6, s9
                  slti         s6, s10, -1739
88:               sll          a4, tp, t6
                  nop
                  slti         s11, t1, -32
                  add          gp, sp, a1
92:               auipc        a0, 685519
                  xor          s0, s3, t4
                  xor          s10, s9, t1
                  add          s0, s9, a7
                  blt          t1, s3, 111f
                  and          s4, a4, a6
                  sltu         t0, t4, s7
                  bgeu         s8, t6, 102f
                  bltu         s4, t5, 111f
                  slli         a2, a1, 13
102:              addi         s11, s4, 1249
103:              ori          zero, t2, -685
                  sub          t4, t6, a0
                  xori         s8, s1, 1858
                  andi         s0, s4, 161
                  sltiu        sp, s0, 171
                  or           s10, a2, s3
                  bge          sp, s1, 128f
                  srai         s8, t6, 25
111:              bge          t5, gp, 129f
                  addi         a3, s8, -243
                  lui          a2, 167025
                  add          t4, s8, ra
                  xori         a2, s1, -1220
                  bge          s3, tp, 119f
                  bne          s0, zero, 125f
                  sltiu        s6, t3, 1557
119:              auipc        s7, 854493
                  bne          a1, s5, 128f
                  and          a5, a1, s5
                  bge          s0, s5, 136f
                  lui          s7, 825979
                  blt          a7, a2, 141f
125:              srli         s7, a7, 26
                  slt          t4, a3, s11
                  sra          s4, s10, s4
128:              nop
129:              slli         s1, ra, 16
                  xor          s8, s4, s11
                  andi         t1, zero, 30
                  nop
                  sub          tp, t1, t6
                  addi         t1, t0, -944
                  andi         t0, a3, -1962
136:              bgeu         s8, sp, 140f
                  slt          t3, s0, zero
                  slli         s2, s0, 10
                  slt          zero, s3, a3
140:              beq          sp, a0, 145f
141:              slli         s3, s0, 19
                  blt          s6, s7, 144f
                  bltu         s0, s11, 147f
144:              xori         s11, s6, 136
145:              sub          t4, s8, t3
                  srl          tp, ra, t5
147:              beq          tp, a7, 162f
                  srl          gp, t3, s8
                  auipc        a7, 865510
                  bltu         a2, tp, 160f
                  xori         s10, s11, 1088
                  sll          a3, t4, gp
                  sltiu        ra, s11, 742
                  sltiu        gp, sp, -135
                  or           s10, s9, t4
                  sltiu        s4, t6, -1264
                  addi         t0, a7, -670
                  sltiu        t2, s4, -1430
                  beq          a3, a2, 179f
160:              or           s4, t5, a1
                  ori          s6, s3, 445
162:              bgeu         s4, t0, 163f
163:              slt          t3, s7, a1
                  xor          t0, s8, tp
                  lui          t0, 730263
                  auipc        s0, 488293
                  add          s1, a7, s11
                  xor          zero, s10, t6
                  addi         s2, t5, 840
                  bge          s9, t4, 183f
                  xori         a2, a0, -1111
                  add          s10, gp, a0
                  beq          gp, s1, 188f
                  nop
                  addi         s4, gp, -911
                  nop
                  sltiu        a4, a4, 1907
                  nop
179:              bne          t2, s4, 193f
                  sra          sp, zero, sp
                  xor          a0, s9, t6
                  or           a3, s10, s0
183:              slti         sp, t4, 481
                  ori          a3, t5, -1167
                  beq          t3, a2, 205f
                  ori          s2, ra, -1459
                  bltu         s3, s3, 190f
188:              xor          s3, ra, zero
                  srli         s0, t2, 25
190:              blt          t6, t5, 206f
                  add          tp, a0, a2
                  or           s9, s0, t0
193:              sub          t1, zero, t2
                  slt          a6, s10, s7
                  auipc        ra, 382532
                  addi         s9, sp, 2014
                  slli         zero, a1, 30
                  srai         s9, a2, 10
                  srli         a4, s0, 25
                  sub          a7, a4, s6
                  sltu         t0, a3, tp
                  sltiu        s6, a7, 884
                  add          a0, s5, gp
                  bgeu         t2, s7, 218f
205:              auipc        sp, 215953
206:              andi         zero, a4, -282
                  ori          s2, t0, 1090
                  addi         a3, s3, -968
                  auipc        s7, 123153
                  beq          a0, s8, 222f
                  andi         s1, s0, -1053
                  or           s0, ra, s9
                  srli         s7, a1, 24
                  or           t5, a3, t1
                  slli         a3, zero, 5
                  bge          gp, s8, 227f
                  and          s7, s8, t5
218:              lui          t1, 173943
                  auipc        ra, 230176
                  or           a0, s8, s5
                  blt          gp, sp, 230f
222:              sltiu        sp, s6, -1595
                  add          s8, tp, zero
                  andi         tp, t5, 1105
                  nop
                  addi         s8, ra, -2011
227:              slli         s1, s9, 18
                  beq          tp, s4, 246f
                  slti         t2, a2, -623
230:              sra          s7, t1, t0
                  sltiu        s2, a0, 348
                  blt          a4, s3, 242f
                  srli         t0, s0, 6
                  srli         s1, gp, 20
                  bge          a2, s3, 237f
                  nop
237:              sll          a0, s5, tp
                  slti         t0, t4, -1797
                  srli         a0, a4, 5
                  sll          s6, s10, s9
                  addi         a4, a0, -639
242:              bge          a5, t3, 256f
                  srai         s9, s9, 5
                  srli         t1, s1, 6
                  sra          ra, s9, s6
246:              slti         t1, tp, 725
                  slti         s11, s9, -1386
                  bltu         s7, t2, 266f
                  bltu         s3, t1, 251f
                  beq          s4, s6, 258f
251:              bge          a1, a1, 255f
                  xori         t1, t0, 1148
                  xor          t3, s10, t2
                  bge          s9, a5, 269f
255:              slti         a7, s0, 500
256:              blt          a7, tp, 259f
                  blt          a4, t2, 268f
258:              or           a3, s4, t1
259:              srl          a5, sp, tp
                  beq          ra, a1, 274f
                  slti         a0, a1, 763
                  srl          a2, a1, a7
                  slt          a4, gp, s4
                  sltiu        a2, a1, -357
                  ori          s3, gp, 470
266:              slti         s1, gp, 930
                  sltu         t2, s9, s10
268:              bgeu         t1, s4, 287f
269:              sll          s2, gp, t5
                  beq          s0, s9, 285f
                  sra          a0, s0, a2
                  slli         s1, a0, 13
                  addi         a7, t5, 1038
274:              lui          tp, 685769
                  lui          t2, 741680
                  nop
                  and          s4, s1, t2
                  or           t1, s3, a7
                  andi         t5, s6, 2028
                  addi         t0, s5, -972
                  bgeu         s3, s9, 284f
                  or           a3, gp, s1
                  slt          s1, ra, s1
284:              addi         s2, t2, -81
285:              slt          s4, s8, t0
                  and          a4, zero, t4
287:              sub          a2, s8, a0
                  sll          a2, tp, s9
                  bltu         tp, a1, 309f
                  bge          s2, s3, 294f
                  slti         zero, gp, -592
                  srl          t4, zero, s4
                  addi         t3, a7, 1898
294:              beq          a1, t3, 297f
                  slli         a3, t4, 4
                  and          t4, s7, t1
297:              xor          s7, s6, s11
                  bgeu         t3, s9, 310f
                  sra          t1, s8, s4
                  add          s2, t4, a5
                  bgeu         a6, s0, 310f
                  sll          s10, a2, sp
                  slt          s3, tp, s9
                  bge          a0, t3, 318f
                  sub          a4, zero, tp
                  nop
                  sra          s10, a7, s7
                  srl          s8, t2, t6
309:              and          a3, a1, s1
310:              addi         s10, a3, 1761
                  blt          a1, a4, 319f
                  add          a4, s4, s11
                  xori         zero, s3, 243
                  xor          t4, a5, s8
                  addi         s4, tp, 48
                  sll          s10, s1, t4
                  sltu         t2, a0, s11
318:              lui          t5, 410457
319:              sub          s11, t2, gp
                  slti         a6, s5, 1438
                  add          t1, a4, t2
                  ori          s6, gp, 613
                  or           t0, s4, s2
                  slli         s11, tp, 1
                  bgeu         s9, gp, 336f
                  addi         s3, a6, -605
                  ori          gp, s0, -8
                  blt          t0, t6, 345f
                  srli         t2, s8, 2
                  ori          t3, t0, -1054
                  lui          zero, 482193
                  blt          s7, a2, 342f
                  bge          t5, s0, 349f
                  srai         ra, s10, 24
                  blt          a2, a5, 337f
336:              xor          s1, t3, zero
337:              xori         t4, zero, -218
                  srli         s9, a2, 6
                  add          s6, a6, s1
                  auipc        s3, 688084
                  sltu         s11, s1, tp
342:              auipc        tp, 764021
                  sub          a6, t3, s2
                  bgeu         s11, s4, 362f
345:              nop
                  sra          a3, a4, s8
                  sra          s1, s1, t6
                  ori          s9, t2, -1425
349:              sltiu        a7, s4, 982
                  bgeu         zero, s4, 355f
                  and          s4, s3, a5
                  xori         s1, tp, 1943
                  andi         t3, s7, -592
                  slt          s11, a5, t2
355:              lui          gp, 302853
                  auipc        s0, 577341
                  slli         s10, ra, 0
                  slli         a6, a3, 17
                  bgeu         zero, a1, 369f
                  bge          s9, s5, 361f
361:              sra          a3, s0, a2
362:              ori          tp, a3, -648
                  bgeu         ra, t0, 376f
                  beq          s0, s10, 384f
                  or           s7, t6, t2
                  bltu         a3, sp, 376f
                  slli         zero, t6, 30
                  bge          sp, t2, 376f
369:              sltiu        s3, t6, -128
                  xor          s1, s6, s11
                  sltu         sp, s0, a2
                  nop
                  sll          s11, s0, s11
                  nop
                  auipc        s3, 865063
376:              beq          a7, a1, 378f
                  slti         s7, t1, -758
378:              ori          s7, s8, -69
                  add          t4, t4, gp
                  beq          t3, s7, 398f
                  slt          t1, s4, a2
                  slti         s6, a2, 1091
                  add          a2, a6, s3
384:              xor          zero, a7, s2
                  slli         t1, zero, 4
                  srli         a5, a0, 31
                  sra          zero, s7, s1
                  srli         s10, t3, 12
                  srai         a2, s11, 10
                  bne          s11, t0, 394f
                  nop
                  slti         gp, a4, -1459
                  slt          s10, t0, a4
394:              srai         a2, a3, 12
                  sltu         a2, tp, t6
                  ori          s6, t2, -675
                  sltiu        t0, a7, 845
398:              slli         a6, s9, 18
                  blt          t2, s4, 417f
                  beq          a0, a7, 403f
                  srl          s4, s5, a3
                  add          s0, s1, t6
403:              or           a5, t0, a5
                  auipc        sp, 502032
                  nop
                  slli         s10, t5, 26
                  sra          s0, s1, a5
                  slli         a2, a7, 23
                  srl          zero, s5, a5
                  auipc        t2, 960946
                  beq          a2, s3, 416f
                  nop
                  ori          s7, a0, 1329
                  bgeu         gp, a4, 434f
                  slti         s4, a6, 825
416:              sub          t4, s11, s4
417:              beq          ra, s1, 431f
                  bgeu         a5, t4, 420f
                  srli         a3, tp, 14
420:              ori          t1, t5, -540
                  sltiu        t3, s1, 1676
                  xor          a3, s8, s6
                  xor          s4, s9, s0
                  srai         a3, t6, 21
                  andi         s3, t1, -495
                  slti         a2, s2, -2039
                  sltiu        a4, s5, -1592
                  sltiu        s8, a3, 909
                  slti         t4, t6, 1006
                  bgeu         gp, gp, 445f
431:              xor          s9, t3, gp
                  sltu         t3, s4, s10
                  bge          a1, t5, 434f
434:              srai         a4, s10, 21
                  add          a7, s9, t3
                  bge          s11, s0, 453f
                  bgeu         s1, s5, 441f
                  andi         s9, a5, 1181
                  slti         s9, a6, 834
                  nop
441:              nop
                  bgeu         a7, t1, 453f
                  slt          s7, s10, a6
                  blt          s4, s9, 464f
445:              slt          a0, sp, tp
                  srai         s9, t0, 19
                  bgeu         t4, a3, 450f
                  sltiu        s1, a1, 567
                  srl          a6, t1, a6
450:              sra          gp, ra, a7
                  sltiu        t1, s1, 139
                  add          a3, a5, s8
453:              beq          a2, tp, 461f
                  and          t4, s4, sp
                  srli         s9, t6, 16
                  or           gp, s1, gp
                  add          gp, a4, a7
                  bne          a2, s5, 473f
                  xor          zero, a4, sp
                  xor          a7, t5, a4
461:              sub          s6, s8, s5
                  sltiu        t2, t0, 1392
                  slli         t5, a4, 9
464:              xor          t1, s11, t0
                  xori         t1, s11, -1243
                  xori         s11, t5, 2025
                  slti         s2, ra, 1393
                  srli         sp, a6, 15
                  sub          t4, a5, a3
                  lui          s10, 66133
                  slti         t2, s7, 615
                  andi         s2, t0, -1080
473:              bltu         a1, s3, 483f
                  addi         t1, ra, -107
                  sltu         a5, s2, tp
                  sltu         t0, t3, tp
                  and          s0, tp, t6
                  nop
                  bne          a1, ra, 491f
                  blt          t1, s9, 493f
                  slli         s8, a7, 22
                  blt          s10, s3, 485f
483:              sltu         s8, s6, t4
                  auipc        a0, 286190
485:              beq          t3, s6, 504f
                  beq          t6, t2, 500f
                  bgeu         s11, s8, 496f
                  sra          s6, a1, zero
                  lui          s10, 835870
                  sub          s11, a1, t2
491:              beq          zero, zero, 507f
                  beq          gp, s8, 506f
493:              sub          s9, t4, a5
                  bge          s1, s4, 505f
                  sltiu        s11, a1, 1272
496:              bge          ra, s10, 508f
                  bge          s9, t6, 511f
                  lui          ra, 499633
                  bne          t2, s11, 517f
500:              xori         s0, s6, -1953
                  add          s11, t3, ra
                  sltiu        a5, t6, -925
                  srli         t1, a4, 15
504:              add          gp, a0, s4
505:              srai         s7, gp, 20
506:              srai         t4, s1, 28
507:              srl          s2, a0, s7
508:              slti         s7, s10, 1787
                  sltiu        s7, s2, 1969
                  sll          t5, a7, a2
511:              sub          a3, s1, tp
                  add          zero, s7, t0
sub_3_18:         jal          ra, 2f
0:                jal          tp, 17f
1:                jal          t1, 14f
2:                jal          ra, 13f
3:                jal          tp, 10f
4:                jal          sp, 9f
5:                jal          s2, 12f
6:                jal          t1, 5b
7:                jal          ra, 4b
8:                jal          a6, 0b
9:                jal          a4, 8b
10:               jal          ra, 7b
11:               jal          s4, 15f
12:               jal          ra, 11b
13:               jal          t1, 1b
14:               jal          ra, 16f
15:               jal          ra, 3b
16:               jal          t1, 6b
17:               sub          gp, t1, s1
                  sltiu        t5, a1, 288
                  bne          a4, s7, 517f
                  slt          s9, s9, t6
                  srli         s6, t4, 18
517:              ori          gp, s6, -1332
                  sltu         s8, a7, s6
                  andi         s10, s4, -1439
                  and          s8, s7, a6
                  sra          t4, s2, a6
                  bltu         s9, s5, 524f
                  add          s2, a5, a3
524:              lui          s10, 291745
                  and          a2, s0, s9
                  slt          s11, s5, s3
                  beq          zero, s5, 536f
                  sra          a6, s5, t0
                  sll          s7, s3, s4
                  addi         s10, a4, 166
                  or           a5, a1, a1
                  ori          s7, t6, 1281
                  slti         a2, a7, 1801
                  slt          zero, t3, a6
                  sub          s4, s5, s10
536:              slli         a7, t0, 30
                  andi         s9, a2, -242
                  addi         sp, a5, -246
                  bgeu         s9, t3, 556f
                  sltiu        s6, a1, 1096
                  sltu         sp, zero, s3
                  sra          s2, t3, tp
                  xori         s6, s11, -1959
                  bltu         s2, s9, 558f
                  srli         t4, s6, 2
                  andi         t3, a7, -1489
                  srl          a2, tp, s5
                  lui          s4, 749310
                  blt          a7, s5, 550f
550:              or           s10, gp, a0
                  xori         a2, s7, -1927
                  blt          a2, zero, 554f
                  sub          a7, t1, t2
554:              slli         tp, tp, 6
                  or           t4, t4, a4
556:              sra          a2, s6, t4
                  bgeu         a2, s9, 576f
558:              lui          s1, 714773
                  and          s1, t5, ra
                  sltiu        s0, tp, -1489
                  slt          s7, ra, gp
                  slli         s0, s11, 4
                  srli         a7, s0, 16
                  xor          s9, s9, t0
                  slt          a3, a0, s7
                  add          gp, a2, t5
                  or           a6, a7, a5
                  bge          s6, t0, 584f
                  sll          tp, t0, t2
                  srli         a5, s0, 19
                  bge          s1, a3, 579f
                  ori          s1, a0, -360
                  xori         s7, s6, -268
                  srai         a6, t6, 31
                  sll          tp, t3, t3
576:              andi         ra, a0, 818
                  bne          gp, tp, 595f
                  add          s1, s0, a3
579:              addi         t5, a0, 59
                  addi         a3, s9, -1797
                  srl          a0, a3, s8
                  blt          t5, t5, 593f
                  addi         gp, s2, -461
584:              sll          a6, tp, a3
                  sll          s9, s4, s7
                  blt          s10, sp, 596f
                  srli         s4, s3, 31
                  lui          a2, 255634
                  xori         a6, s7, 27
                  lui          a2, 464816
                  sltu         s3, s10, tp
                  blt          t2, tp, 612f
593:              bge          ra, a7, 604f
                  sra          zero, s4, s7
595:              xor          t3, s1, ra
596:              xori         a7, s3, -970
                  blt          t0, s3, 600f
                  sltu         s7, t0, a7
                  xori         t4, a1, 1485
600:              bgeu         a5, s5, 610f
                  bge          s10, a5, 614f
                  sll          t1, a5, t0
                  xor          zero, t6, s8
604:              srl          t4, sp, t5
                  bltu         s11, ra, 609f
                  xor          s2, a7, t2
                  and          t0, s11, a2
                  nop
609:              lui          t2, 946619
610:              xor          a2, a3, s10
                  xori         t0, tp, -1596
612:              srli         s4, t3, 23
                  bltu         a3, gp, 616f
614:              lui          s7, 126143
                  addi         gp, a1, -676
616:              sltiu        s11, gp, 1069
                  slti         gp, t3, 523
                  sra          a3, s5, s8
                  xor          t1, t1, s10
                  ori          s3, s4, -1392
                  blt          ra, a6, 636f
                  add          a4, a4, gp
                  nop
                  ori          t0, t6, 1770
                  lui          s2, 1019040
                  sra          s0, zero, s9
                  srli         s2, a4, 21
                  ori          gp, s9, 1206
                  srai         ra, s1, 15
                  slt          a5, s0, s6
                  or           s11, a4, a2
                  bne          s10, a6, 636f
                  andi         s2, s2, -2044
                  bge          s5, sp, 639f
                  beq          s11, s2, 650f
636:              bne          s7, a5, 650f
                  lui          s10, 536252
                  srl          s7, t3, s10
639:              srli         s8, t6, 5
                  xor          t1, t4, s10
                  xor          s2, a7, t6
                  auipc        t0, 697129
                  ori          s1, zero, 494
                  srai         s8, a0, 26
                  sub          s1, s10, a0
                  sll          a4, a7, s8
                  nop
                  sub          a0, t0, gp
                  addi         t1, s5, -1989
650:              srl          t1, a1, t1
                  bge          t1, a3, 659f
                  auipc        s8, 245534
                  ori          s4, s2, 1760
                  xori         t5, a6, -1400
                  beq          ra, t4, 675f
                  sll          t4, a6, t0
                  slti         t5, a0, 1853
                  sra          s10, s9, gp
659:              bge          s11, s1, 678f
                  sltiu        t2, t0, -1691
                  ori          t1, s0, -1769
                  slt          s1, s5, s9
                  slt          gp, t6, t6
                  beq          a2, t5, 678f
                  sll          s0, a2, s2
                  blt          s2, ra, 675f
                  slt          a7, a7, t5
                  slli         s4, t5, 14
                  bgeu         ra, tp, 679f
                  xori         a4, zero, 924
                  beq          s2, ra, 674f
                  lui          s0, 626997
                  beq          gp, a5, 689f
674:              bltu         tp, t1, 677f
675:              slt          s7, t6, t1
                  srai         a5, gp, 24
677:              auipc        gp, 419512
678:              and          s7, t3, a5
679:              sra          a2, s0, s9
                  xor          a3, a7, t3
                  srl          t5, a7, a7
                  slli         t0, t3, 11
                  srai         a5, s3, 3
                  addi         s9, s10, -985
                  srl          s1, s10, t4
                  sll          a6, ra, s5
                  or           sp, s3, s3
                  srl          s8, s7, t2
689:              sra          s9, s5, s11
                  sltu         sp, s2, s1
                  lui          a3, 934605
                  sub          tp, s1, s2
                  sra          ra, s9, a2
                  bne          tp, s7, 706f
                  bgeu         t0, a0, 703f
                  xor          t3, t0, s10
                  xori         s11, t6, 1722
                  slt          a4, s6, gp
                  slt          tp, s0, t5
                  beq          a5, s7, 720f
                  blt          a2, zero, 712f
                  slti         t2, s10, 467
703:              blt          a6, sp, 707f
                  sltiu        ra, s10, -863
                  auipc        s6, 979004
706:              slt          sp, a5, s6
707:              srl          s0, s6, t2
                  add          gp, sp, a3
                  bltu         s4, a2, 722f
                  and          s11, s0, t3
                  slli         a0, a6, 21
712:              bge          s2, s4, 727f
                  sltu         a7, s8, s0
                  nop
                  sltu         t5, a2, t5
                  slti         t5, a3, -1810
                  bgeu         a5, t0, 720f
                  sltu         t0, s6, a7
                  andi         a4, a0, 1794
720:              sra          a6, t5, t3
                  sltiu        s7, t5, 303
722:              auipc        s9, 449509
                  bltu         s0, s6, 737f
                  bltu         s1, tp, 739f
                  sltu         a6, t0, t6
                  auipc        s9, 509437
727:              bne          s0, t1, 747f
                  srli         t0, a7, 7
                  srl          t5, gp, t2
                  bgeu         s0, a0, 741f
                  or           sp, t3, ra
                  auipc        t2, 361509
                  sll          a6, a5, s7
                  and          s0, s7, zero
                  beq          sp, a0, 739f
                  nop
737:              and          sp, zero, a1
                  andi         t5, gp, -1737
739:              slti         s3, t5, -1274
                  slti         a0, t2, 726
741:              bgeu         a2, a0, 758f
                  andi         s9, a4, -634
                  xori         zero, sp, 1329
                  slti         t2, a3, -117
                  sub          s1, t4, t0
                  or           s7, t1, a3
747:              ori          tp, t5, 1239
                  sltiu        s4, s3, -1494
                  slli         s3, s7, 13
                  slti         s4, t4, -1214
                  ori          sp, s6, -1800
                  sltiu        t0, t3, -896
                  add          s4, zero, s9
                  slli         t1, s0, 4
                  beq          a0, s5, 765f
                  lui          t5, 117665
                  nop
758:              slt          gp, a1, a3
                  slli         s0, tp, 0
                  auipc        a7, 883708
                  xori         t5, s11, 1070
                  slli         s10, a5, 4
                  srl          t2, s5, s8
                  auipc        ra, 782446
765:              add          tp, sp, t4
                  sltu         t0, zero, s10
                  slt          a5, t5, tp
                  slli         s3, t6, 6
                  ori          a5, s9, -71
                  blt          s8, t2, 772f
                  and          a2, a3, tp
772:              sll          s11, t3, t2
                  or           ra, a0, t1
                  xori         s10, t2, 1445
                  bne          s4, s3, 777f
                  lui          s7, 723761
777:              lui          a4, 828224
                  nop
                  and          t5, zero, zero
                  ori          a2, s11, -1037
                  bgeu         s11, t5, 799f
                  lui          tp, 605143
                  bltu         t3, a7, 791f
                  sltiu        t2, gp, 921
                  bge          a2, a1, 799f
                  bltu         a6, t1, 791f
                  and          s8, a3, t4
                  bge          sp, t2, 806f
                  bltu         t2, a0, 790f
790:              xor          gp, s6, t4
791:              auipc        a2, 18485
                  sll          s4, a1, ra
                  bltu         t0, a3, 803f
                  xori         a6, s9, 1399
                  slli         s1, s10, 3
                  srai         a2, s7, 1
                  ori          s7, ra, 833
                  andi         a4, tp, -367
799:              and          t4, gp, a0
                  srli         s8, a1, 2
                  srli         a6, ra, 11
                  bgeu         t3, t6, 807f
803:              beq          zero, a7, 804f
804:              xor          s10, a4, t3
                  srl          ra, gp, s5
806:              srli         ra, t1, 16
807:              xori         s1, t0, -1500
                  or           a5, s1, s4
                  andi         s9, tp, -875
                  or           s2, t2, a7
                  sll          s10, s7, s3
                  sub          s2, s2, t3
                  srli         t1, t6, 30
                  bltu         s6, t5, 826f
                  add          s11, a1, sp
                  srli         t0, t1, 12
                  nop
                  bge          t4, t5, 827f
                  andi         a4, a4, -1494
                  srai         t4, a1, 18
                  and          t3, t5, t1
                  blt          a1, a0, 824f
                  slt          s4, s4, s10
824:              beq          a5, t1, 844f
                  bge          ra, s10, 839f
826:              bltu         a1, s9, 844f
827:              srl          sp, t3, s5
                  sll          s11, t0, s4
                  andi         a4, t1, 1782
                  or           a6, t2, s3
                  lui          s3, 592528
                  slli         t2, s3, 4
                  blt          s0, ra, 841f
                  or           s8, a3, s11
                  addi         gp, ra, -1735
                  srl          sp, tp, t3
                  auipc        zero, 368872
                  sltu         s3, s5, s8
839:              bgeu         sp, a0, 854f
                  lui          s11, 162610
841:              or           s4, s2, t3
                  auipc        a0, 35588
                  sltiu        sp, a0, 1032
844:              xor          s11, s6, t3
                  andi         s0, t3, 579
                  bgeu         a2, t0, 857f
                  slt          sp, t3, s6
                  slli         a2, t6, 18
                  and          a6, s2, s5
                  add          gp, t2, t3
                  andi         a0, s6, 1904
                  auipc        s2, 995755
                  sltu         sp, a2, t5
854:              lui          a7, 155364
                  auipc        t4, 517430
                  slli         tp, s3, 13
857:              sra          s7, a3, a2
                  sll          s11, a5, s7
                  andi         a6, t2, 1713
                  nop
                  andi         s4, t6, 755
                  bge          s0, a4, 877f
                  add          zero, zero, sp
                  andi         t4, sp, 130
                  xor          zero, s9, a7
                  add          zero, sp, a2
                  srl          s9, s9, s10
                  srai         t5, s4, 4
                  andi         s9, gp, -195
                  andi         t3, a3, -1107
                  bltu         s3, t2, 875f
                  slti         t4, t1, 1345
                  bge          a1, s6, 876f
                  srl          ra, tp, s0
875:              sub          t0, a7, t0
876:              auipc        t2, 210114
877:              add          t4, t5, t2
                  sltu         a2, s1, a6
                  sub          t4, s7, s5
                  nop
                  srli         t4, s10, 20
                  slti         s1, s3, -1098
                  blt          t5, t2, 896f
                  ori          t2, s10, -1903
                  andi         sp, s11, 1396
                  xori         s0, a1, -253
                  xori         a5, t4, -1019
                  beq          s10, a4, 907f
                  bgeu         t5, a2, 903f
                  or           a4, s3, t2
                  srai         t3, sp, 8
                  slti         s8, tp, 1613
                  slli         s9, t6, 31
                  lui          s8, 922872
                  xori         a7, s9, -1017
896:              bltu         ra, zero, 900f
                  andi         gp, tp, 571
                  bge          a3, s0, 916f
                  srli         s6, s10, 22
900:              add          a0, s7, a4
                  srli         zero, s0, 9
                  slt          s8, s2, a6
903:              bne          ra, t5, 906f
                  slli         a4, t5, 11
                  bne          t1, a4, 913f
906:              nop
907:              slt          a0, t2, t3
                  srl          s9, s0, a5
                  beq          s0, a5, 919f
                  sra          gp, zero, s8
                  and          t3, t4, tp
                  bltu         tp, zero, 928f
913:              bltu         s4, s0, 933f
                  bltu         t0, t6, 916f
                  slli         a3, a1, 27
916:              xori         tp, t5, 1128
                  sll          t0, s9, s1
                  blt          a3, s10, 921f
919:              srli         s0, t2, 29
                  auipc        t3, 591178
921:              slt          tp, s6, s3
                  lui          t1, 364493
                  sltu         s9, a4, s1
                  sltiu        s10, s4, -1046
                  sll          tp, t6, s3
                  srli         t2, ra, 27
                  sltiu        s4, ra, 1110
928:              srl          s4, t6, s7
                  srai         s2, t5, 26
                  sub          a6, s1, ra
                  ori          s11, a3, -858
                  xor          a4, t3, s11
933:              bne          s2, a3, 944f
                  srai         sp, gp, 27
                  addi         a0, s2, -900
                  or           s10, s9, a7
                  bgeu         tp, s3, 954f
                  or           gp, t1, t1
                  slti         s11, t4, -1640
                  sltiu        t4, t5, 1183
                  add          s2, a4, a6
                  bgeu         gp, s4, 956f
                  add          s10, a7, t1
944:              blt          s0, s5, 948f
                  slt          a4, t0, a0
                  sltu         s11, a6, t2
                  beq          t1, s10, 952f
948:              nop
                  srli         gp, a4, 14
                  bne          sp, a0, 958f
                  sltu         tp, a3, t1
952:              slti         sp, s10, -552
                  sltiu        s10, a4, -1092
954:              andi         s8, a1, 1
                  andi         t3, a3, -1625
956:              srai         gp, s1, 16
                  and          a7, a4, a1
958:              or           sp, s2, t4
                  auipc        a5, 352285
                  sll          a0, a6, a7
                  srai         a3, s10, 19
                  srl          t0, s8, a4
                  srl          s2, t3, gp
                  sltu         a3, a4, sp
                  lw           ra, 4(s5)
                  slti         s9, s4, -1181
                  sltu         t5, t4, s9
                  slt          t4, s9, s5
                  or           a7, gp, t5
                  sltiu        a0, s6, 2021
                  addi         s5, s5, 24
                  addi         a3, t6, 445
1462:             addi x22, x1, 1
1462:             jalr x22, x22, 0
sub_2:            srl          a7, s0, t0
                  addi         s5, s5, -16
                  xori         s8, s3, -991
                  sw           ra, 4(s5)
                  srli         s10, s5, 31
                  or           s3, s9, t1
                  lui          a4, 827525
                  or           a7, t0, t6
                  xor          a6, s7, t5
                  ori          s6, s2, -1742
                  xori         sp, t3, -1051
                  and          t3, t6, s11
sub_2_8:          jal          ra, 1f
0:                jal          ra, 14f
1:                jal          ra, 7f
2:                jal          ra, 0b
3:                jal          a3, 12f
4:                jal          ra, 19f
5:                jal          ra, 3b
6:                jal          t0, 16f
7:                jal          t1, 13f
8:                jal          ra, 2b
9:                jal          ra, 6b
10:               jal          t1, 18f
11:               jal          sp, 5b
12:               jal          ra, 4b
13:               jal          t1, 17f
14:               jal          t1, 10b
15:               jal          t5, 9b
16:               jal          s3, 8b
17:               jal          ra, 15b
18:               jal          t1, 11b
19:               andi         sp, sp, -1959
sub_2_5:          jal          ra, 3f
0:                jal          ra, 6f
1:                jal          ra, 15f
2:                jal          t0, 20f
3:                jal          ra, 17f
4:                jal          ra, 2b
5:                jal          ra, 8f
6:                jal          ra, 19f
7:                jal          ra, 14f
8:                jal          ra, 12f
9:                jal          a7, 23f
10:               jal          t1, 24f
11:               jal          ra, 5b
12:               jal          ra, 1b
13:               jal          ra, 22f
14:               jal          ra, 18f
15:               jal          ra, 7b
16:               jal          ra, 0b
17:               jal          t1, 9b
18:               jal          ra, 4b
19:               jal          s7, 11b
20:               jal          ra, 21f
21:               jal          t4, 10b
22:               jal          t1, 16b
23:               jal          t1, 13b
24:               sltiu        s9, t2, -1229
sub_2_12:         jal          ra, 2f
0:                jal          t1, 10f
1:                jal          ra, 7f
2:                jal          ra, 5f
3:                jal          ra, 12f
4:                jal          ra, 3b
5:                jal          ra, 11f
6:                jal          s6, 4b
7:                jal          ra, 0b
8:                jal          t1, 6b
9:                jal          gp, 1b
10:               jal          t1, 8b
11:               jal          t1, 9b
12:               srai         a7, a1, 16
sub_2_21:         jal          ra, 7f
0:                jal          s4, 11f
1:                jal          t1, 9f
2:                jal          sp, 3f
3:                jal          ra, 12f
4:                jal          t1, 1b
5:                jal          ra, 0b
6:                jal          t5, 2b
7:                jal          ra, 8f
8:                jal          t2, 10f
9:                jal          a3, 6b
10:               jal          t1, 5b
11:               jal          s2, 4b
12:               slti         a2, sp, -247
sub_2_15:         jal          ra, 4f
0:                jal          ra, 5f
1:                jal          ra, 9f
2:                jal          t1, 8f
3:                jal          ra, 21f
4:                jal          ra, 1b
5:                jal          ra, 19f
6:                jal          ra, 0b
7:                jal          ra, 2b
8:                jal          ra, 24f
9:                jal          ra, 18f
10:               jal          gp, 11f
11:               jal          t2, 22f
12:               jal          ra, 7b
13:               jal          ra, 16f
14:               jal          ra, 6b
15:               jal          ra, 12b
16:               jal          ra, 3b
17:               jal          ra, 23f
18:               jal          t1, 13b
19:               jal          s7, 10b
20:               jal          ra, 17b
21:               jal          t1, 14b
22:               jal          ra, 20b
23:               jal          t1, 15b
24:               andi         s1, t5, -1276
sub_2_24:         jal          ra, 2f
0:                jal          t1, 3f
1:                jal          ra, 5f
2:                jal          ra, 16f
3:                jal          ra, 10f
4:                jal          t1, 17f
5:                jal          t1, 27f
6:                jal          ra, 20f
7:                jal          ra, 14f
8:                jal          s2, 1b
9:                jal          t1, 26f
10:               jal          t1, 13f
11:               jal          ra, 0b
12:               jal          ra, 9b
13:               jal          ra, 15f
14:               jal          ra, 8b
15:               jal          t1, 23f
16:               jal          t1, 19f
17:               jal          t5, 25f
18:               jal          t0, 11b
19:               jal          a4, 24f
20:               jal          s3, 21f
21:               jal          ra, 18b
22:               jal          ra, 12b
23:               jal          ra, 7b
24:               jal          gp, 22b
25:               jal          t5, 6b
26:               jal          t1, 4b
27:               sra          t0, a4, s3
sub_2_20:         jal          ra, 6f
0:                jal          t1, 10f
1:                jal          ra, 0b
2:                jal          ra, 3f
3:                jal          ra, 9f
4:                jal          ra, 2b
5:                jal          sp, 4b
6:                jal          s7, 7f
7:                jal          ra, 1b
8:                jal          t1, 5b
9:                jal          t1, 11f
10:               jal          ra, 8b
11:               sll          a2, a5, a0
sub_2_14:         jal          ra, 9f
0:                jal          t1, 14f
1:                jal          t1, 15f
2:                jal          t1, 12f
3:                jal          s1, 0b
4:                jal          ra, 8f
5:                jal          s10, 11f
6:                jal          s0, 10f
7:                jal          sp, 1b
8:                jal          ra, 19f
9:                jal          ra, 4b
10:               jal          t1, 7b
11:               jal          t1, 6b
12:               jal          s10, 20f
13:               jal          ra, 5b
14:               jal          ra, 17f
15:               jal          t1, 18f
16:               jal          ra, 13b
17:               jal          ra, 2b
18:               jal          a3, 3b
19:               jal          ra, 16b
20:               srli         t1, t4, 10
sub_2_10:         jal          ra, 13f
0:                jal          t1, 11f
1:                jal          ra, 8f
2:                jal          ra, 3f
3:                jal          ra, 15f
4:                jal          t1, 16f
5:                jal          t2, 9f
6:                jal          t1, 1b
7:                jal          s6, 12f
8:                jal          s4, 4b
9:                jal          t1, 0b
10:               jal          gp, 14f
11:               jal          s11, 6b
12:               jal          ra, 2b
13:               jal          a4, 10b
14:               jal          ra, 7b
15:               jal          ra, 5b
16:               or           s6, s0, s11
sub_2_6:          jal          ra, 10f
0:                jal          t1, 9f
1:                jal          t0, 2f
2:                jal          t1, 11f
3:                jal          a6, 0b
4:                jal          a7, 6f
5:                jal          t1, 3b
6:                jal          t1, 5b
7:                jal          ra, 4b
8:                jal          t3, 7b
9:                jal          t1, 1b
10:               jal          ra, 8b
11:               sltiu        t4, ra, -1020
sub_2_1:          jal          ra, 2f
0:                jal          t1, 11f
1:                jal          ra, 7f
2:                jal          ra, 14f
3:                jal          t1, 6f
4:                jal          ra, 8f
5:                jal          ra, 10f
6:                jal          s10, 19f
7:                jal          ra, 4b
8:                jal          t1, 13f
9:                jal          ra, 12f
10:               jal          ra, 17f
11:               jal          s10, 9b
12:               jal          t1, 3b
13:               jal          t0, 16f
14:               jal          ra, 15f
15:               jal          ra, 18f
16:               jal          a4, 5b
17:               jal          t1, 0b
18:               jal          ra, 1b
19:               srli         s4, zero, 16
sub_2_3:          jal          ra, 5f
0:                jal          gp, 19f
1:                jal          ra, 13f
2:                jal          a0, 24f
3:                jal          ra, 7f
4:                jal          ra, 26f
5:                jal          ra, 12f
6:                jal          s3, 2b
7:                jal          tp, 15f
8:                jal          ra, 1b
9:                jal          s3, 8b
10:               jal          ra, 18f
11:               jal          ra, 4b
12:               jal          t1, 20f
13:               jal          ra, 3b
14:               jal          ra, 11b
15:               jal          ra, 10b
16:               jal          ra, 9b
17:               jal          ra, 21f
18:               jal          ra, 25f
19:               jal          ra, 16b
20:               jal          ra, 17b
21:               jal          t1, 0b
22:               jal          ra, 23f
23:               jal          t0, 14b
24:               jal          t1, 22b
25:               jal          ra, 6b
26:               and          s7, s5, s9
sub_2_2:          jal          ra, 9f
0:                jal          t1, 2f
1:                jal          ra, 6f
2:                jal          t1, 7f
3:                jal          gp, 12f
4:                jal          tp, 0b
5:                jal          t1, 1b
6:                jal          s7, 8f
7:                jal          a5, 11f
8:                jal          ra, 4b
9:                jal          s7, 10f
10:               jal          ra, 5b
11:               jal          ra, 3b
12:               or           a5, zero, a4
sub_2_7:          jal          ra, 16f
0:                jal          ra, 4f
1:                jal          ra, 0b
2:                jal          ra, 10f
3:                jal          a3, 9f
4:                jal          ra, 8f
5:                jal          t1, 11f
6:                jal          t1, 21f
7:                jal          a6, 15f
8:                jal          a0, 5b
9:                jal          ra, 2b
10:               jal          ra, 14f
11:               jal          s2, 3b
12:               jal          sp, 6b
13:               jal          ra, 19f
14:               jal          t1, 13b
15:               jal          ra, 20f
16:               jal          s7, 17f
17:               jal          ra, 1b
18:               jal          t1, 7b
19:               jal          ra, 18b
20:               jal          ra, 12b
21:               srli         a2, t5, 18
sub_2_0:          jal          ra, 17f
0:                jal          sp, 8f
1:                jal          t1, 3f
2:                jal          a6, 18f
3:                jal          ra, 15f
4:                jal          ra, 10f
5:                jal          s11, 11f
6:                jal          t1, 9f
7:                jal          ra, 5b
8:                jal          ra, 13f
9:                jal          a3, 16f
10:               jal          ra, 7b
11:               jal          s7, 12f
12:               jal          t1, 6b
13:               jal          ra, 4b
14:               jal          t1, 0b
15:               jal          ra, 14b
16:               jal          a4, 2b
17:               jal          t1, 1b
18:               andi         gp, t6, 1073
sub_2_11:         jal          ra, 17f
0:                jal          t1, 13f
1:                jal          ra, 12f
2:                jal          t1, 21f
3:                jal          tp, 20f
4:                jal          ra, 14f
5:                jal          ra, 7f
6:                jal          gp, 25f
7:                jal          ra, 11f
8:                jal          ra, 16f
9:                jal          t2, 24f
10:               jal          t1, 5b
11:               jal          ra, 8b
12:               jal          ra, 6b
13:               jal          t1, 2b
14:               jal          ra, 1b
15:               jal          ra, 26f
16:               jal          s10, 4b
17:               jal          t1, 0b
18:               jal          ra, 23f
19:               jal          a4, 22f
20:               jal          s11, 10b
21:               jal          ra, 19b
22:               jal          ra, 3b
23:               jal          ra, 15b
24:               jal          s7, 18b
25:               jal          ra, 9b
26:               and          s6, s5, ra
sub_2_19:         jal          ra, 4f
0:                jal          s3, 24f
1:                jal          t1, 8f
2:                jal          s0, 5f
3:                jal          s11, 11f
4:                jal          ra, 12f
5:                jal          ra, 17f
6:                jal          ra, 13f
7:                jal          a0, 16f
8:                jal          ra, 23f
9:                jal          ra, 2b
10:               jal          ra, 9b
11:               jal          ra, 7b
12:               jal          s9, 14f
13:               jal          ra, 1b
14:               jal          ra, 3b
15:               jal          ra, 6b
16:               jal          t0, 21f
17:               jal          s11, 18f
18:               jal          ra, 15b
19:               jal          ra, 0b
20:               jal          ra, 10b
21:               jal          t1, 22f
22:               jal          ra, 20b
23:               jal          ra, 19b
24:               sltu         a3, t5, t0
sub_2_13:         jal          ra, 20f
0:                jal          t1, 24f
1:                jal          gp, 11f
2:                jal          ra, 10f
3:                jal          ra, 1b
4:                jal          ra, 16f
5:                jal          ra, 17f
6:                jal          t0, 23f
7:                jal          ra, 21f
8:                jal          tp, 6b
9:                jal          s3, 27f
10:               jal          t1, 4b
11:               jal          t0, 18f
12:               jal          ra, 5b
13:               jal          s8, 19f
14:               jal          ra, 26f
15:               jal          tp, 3b
16:               jal          ra, 25f
17:               jal          ra, 22f
18:               jal          t1, 0b
19:               jal          t1, 7b
20:               jal          ra, 13b
21:               jal          s6, 12b
22:               jal          s1, 2b
23:               jal          ra, 14b
24:               jal          ra, 9b
25:               jal          ra, 8b
26:               jal          ra, 15b
27:               xor          gp, a3, a2
sub_2_18:         jal          ra, 0f
0:                jal          a2, 1f
1:                jal          sp, 11f
2:                jal          t1, 13f
3:                jal          t1, 8f
4:                jal          ra, 22f
5:                jal          t1, 19f
6:                jal          s10, 16f
7:                jal          ra, 14f
8:                jal          ra, 17f
9:                jal          t1, 26f
10:               jal          ra, 18f
11:               jal          ra, 2b
12:               jal          sp, 9b
13:               jal          t4, 15f
14:               jal          ra, 6b
15:               jal          t1, 10b
16:               jal          gp, 4b
17:               jal          a3, 5b
18:               jal          t1, 21f
19:               jal          ra, 23f
20:               jal          t1, 25f
21:               jal          t1, 7b
22:               jal          ra, 24f
23:               jal          ra, 12b
24:               jal          t0, 20b
25:               jal          a0, 3b
26:               srli         s1, ra, 0
sub_2_22:         jal          ra, 13f
0:                jal          s4, 10f
1:                jal          ra, 17f
2:                jal          s11, 0b
3:                jal          t3, 16f
4:                jal          s4, 2b
5:                jal          ra, 11f
6:                jal          ra, 9f
7:                jal          ra, 6b
8:                jal          a3, 1b
9:                jal          ra, 12f
10:               jal          s0, 8b
11:               jal          ra, 14f
12:               jal          s6, 4b
13:               jal          tp, 5b
14:               jal          s11, 15f
15:               jal          ra, 3b
16:               jal          ra, 7b
17:               slt          s0, s3, a0
sub_2_17:         jal          ra, 4f
0:                jal          tp, 12f
1:                jal          ra, 6f
2:                jal          ra, 13f
3:                jal          t1, 2b
4:                jal          sp, 7f
5:                jal          ra, 9f
6:                jal          ra, 3b
7:                jal          t1, 11f
8:                jal          ra, 1b
9:                jal          ra, 10f
10:               jal          a7, 8b
11:               jal          tp, 0b
12:               jal          s0, 5b
13:               lui          t0, 629329
                  xor          tp, s1, s0
                  bne          tp, t1, 7f
                  sltu         t4, s1, t2
                  srl          t2, t1, a5
                  sltiu        t2, t3, 1351
                  bge          a6, s6, 17f
                  sra          sp, s7, s2
7:                sltu         s11, s1, t6
                  bge          t3, t6, 16f
                  bgeu         a5, t3, 18f
                  srl          ra, a5, s9
                  srl          t1, a5, t1
                  nop
                  xor          ra, s3, s7
                  sub          s10, a0, s7
                  add          gp, t4, s7
16:               xori         s7, a2, 1621
17:               bgeu         a2, s5, 18f
18:               srl          a0, s0, a6
                  slti         s8, s3, -95
                  bgeu         s4, s0, 39f
                  nop
                  ori          s8, s9, -159
                  bltu         a1, s4, 40f
                  slli         s2, s2, 2
                  sltiu        a6, s0, 890
                  xor          a7, s7, t0
                  xor          a6, gp, a1
                  slt          t4, zero, s4
                  and          gp, a5, s0
                  beq          s2, a1, 40f
                  bltu         t3, gp, 36f
                  and          s0, zero, a2
                  or           s8, s11, t4
                  andi         zero, a5, 1039
                  xori         a3, t1, -1801
36:               xori         a7, a3, -692
                  sltiu        gp, s7, -119
                  sltu         ra, tp, s4
39:               andi         s3, t6, -1254
40:               addi         a2, s3, 1555
                  sltiu        t4, t6, -864
                  sltiu        s7, a4, 1226
                  andi         ra, a6, 378
                  blt          a1, s10, 45f
45:               bltu         t1, s9, 53f
                  srl          gp, s1, t0
                  sltiu        s8, s9, 1916
                  sub          t3, s8, s2
                  slt          gp, gp, a2
                  beq          a6, s7, 53f
                  andi         s3, gp, 1129
                  ori          t1, a2, 1548
53:               nop
                  sltu         s9, t0, s8
                  bne          s11, t4, 70f
                  sltiu        s3, s9, 1941
                  or           tp, gp, t5
                  andi         s10, s10, 924
                  srli         s8, t5, 25
                  bgeu         a0, s11, 67f
                  srl          t1, tp, s7
                  bne          s4, tp, 64f
                  sll          t5, gp, s1
64:               beq          a1, ra, 73f
                  lui          tp, 809008
                  beq          t0, a6, 83f
67:               sra          s7, s4, s11
                  xor          s9, a5, s8
                  bne          t2, t6, 70f
70:               slt          ra, a0, gp
                  slti         tp, a5, -343
                  bge          t2, s2, 90f
73:               add          zero, t5, tp
                  andi         s4, s11, 1276
                  andi         gp, a3, 1340
                  sltu         t5, s8, ra
                  bgeu         s2, s9, 84f
                  addi         t2, s8, -1049
                  add          s2, s3, a6
                  sltu         s3, s5, t5
                  xori         a5, a0, 1556
                  sltiu        sp, s11, -1071
83:               or           s3, a4, gp
84:               nop
                  slli         a7, a4, 9
                  bne          s8, tp, 98f
                  bltu         a5, s1, 99f
                  bne          tp, a2, 91f
                  xori         t0, a3, 108
90:               bgeu         a6, gp, 100f
91:               sra          t0, a7, a2
                  srai         s8, t0, 4
                  bge          a3, s7, 98f
                  and          t1, s4, t2
                  or           s6, s10, a3
                  bge          a0, t1, 104f
                  nop
98:               beq          a1, s11, 109f
99:               slli         s1, gp, 20
100:              sra          t4, tp, s3
                  sub          s8, a4, s4
                  sub          a5, s2, s3
                  xori         t3, t0, 803
104:              sll          s0, t5, s4
                  srai         a7, s0, 16
                  nop
                  lui          s3, 784327
                  sll          s1, s11, a5
109:              srai         a3, t5, 1
                  beq          s7, t6, 127f
                  xori         a6, gp, -1073
                  slli         s4, a6, 23
                  slli         ra, t0, 18
                  srai         s4, a6, 13
                  and          s3, s5, s1
                  srli         s9, sp, 31
                  srai         t2, s0, 28
                  slt          sp, s0, zero
                  beq          s0, s0, 136f
                  ori          a4, s2, -1899
                  and          zero, t2, t0
                  beq          t2, a7, 127f
                  addi         s9, a2, 645
                  sub          s11, s8, s7
                  ori          s7, a0, 1531
                  auipc        t3, 628159
127:              beq          sp, t3, 146f
                  nop
                  auipc        s11, 953839
                  srli         a3, s5, 18
                  sll          s3, s6, s8
                  or           a4, t3, t0
                  and          ra, s7, s11
                  sltu         a6, a4, a1
                  andi         gp, t2, 1004
136:              slti         a4, s1, -199
                  blt          s10, a2, 152f
                  bltu         s9, s0, 146f
                  andi         s6, t5, -807
                  beq          a4, a5, 143f
                  bgeu         s11, a5, 158f
                  slli         s4, t3, 8
143:              or           a5, a1, s5
                  ori          s9, t5, -227
                  lui          s1, 551812
146:              or           a4, a2, s0
                  slti         t4, a7, 1081
                  slli         t5, ra, 13
                  xor          s7, t3, a2
                  and          s6, s7, t0
                  slt          a7, t2, s1
152:              srli         t0, t3, 16
                  bgeu         a2, s0, 165f
                  nop
                  srai         a6, s3, 26
                  addi         zero, t2, -1499
                  sll          s3, a6, tp
158:              nop
                  sll          s6, t3, gp
                  sltiu        s0, s5, -1994
                  or           s2, ra, t2
                  lui          s0, 562873
                  srai         t5, a2, 6
                  xor          s2, a6, t0
165:              bge          a7, t3, 173f
                  sltu         s4, a6, s3
                  bltu         tp, s9, 172f
                  srai         sp, s4, 12
                  bne          t3, s10, 180f
                  ori          gp, ra, -1429
                  sll          a6, a2, tp
172:              bgeu         t1, a7, 180f
173:              slti         sp, a1, -400
                  andi         ra, s3, 1300
                  srli         t4, s11, 12
                  beq          s4, t4, 185f
                  nop
                  auipc        a3, 216016
                  sra          t1, a2, t1
180:              addi         a3, a1, 1258
                  slli         t2, t0, 4
                  srli         s1, sp, 21
                  ori          s2, a0, 729
                  xori         s1, a4, -1074
185:              sltiu        a6, t3, -1705
                  xor          a6, a7, t3
                  bgeu         t4, a7, 188f
188:              sltu         s7, t2, a3
                  srl          a3, gp, s3
                  bltu         s7, a5, 192f
                  andi         s7, zero, -404
192:              auipc        t4, 416461
                  srl          s9, a1, s7
                  add          s6, s2, t6
                  auipc        ra, 447094
                  sll          sp, t1, s8
                  or           gp, s5, a6
                  addi         s11, s2, 2047
                  ori          s0, s0, 1115
                  beq          a2, tp, 205f
                  bgeu         s10, s5, 218f
                  bltu         t4, zero, 208f
                  slt          s0, s4, a4
                  xori         a0, a7, -1299
205:              auipc        gp, 1044400
                  sub          a5, ra, s2
                  xori         t3, zero, 1452
208:              addi         t0, s1, -1528
                  bltu         s8, a6, 210f
210:              xori         s4, s11, -50
                  bltu         a6, t2, 221f
                  lui          a6, 962643
                  slt          t0, s1, s10
                  blt          s8, a2, 224f
                  addi         s9, t5, -1744
                  addi         a7, sp, 1190
                  lui          ra, 1018600
sub_2_4:          jal          ra, 12f
0:                jal          t1, 4f
1:                jal          ra, 6f
2:                jal          ra, 20f
3:                jal          ra, 7f
4:                jal          a6, 11f
5:                jal          sp, 18f
6:                jal          ra, 2b
7:                jal          t1, 25f
8:                jal          ra, 13f
9:                jal          t1, 26f
10:               jal          t1, 16f
11:               jal          ra, 15f
12:               jal          ra, 23f
13:               jal          t1, 14f
14:               jal          ra, 22f
15:               jal          t1, 9b
16:               jal          ra, 19f
17:               jal          t1, 24f
18:               jal          ra, 21f
19:               jal          t1, 27f
20:               jal          ra, 3b
21:               jal          t1, 8b
22:               jal          ra, 1b
23:               jal          ra, 17b
24:               jal          t1, 0b
25:               jal          t1, 10b
26:               jal          tp, 5b
27:               slt          s8, s11, tp
218:              slti         s11, a5, -1685
                  bge          s1, s2, 228f
                  auipc        s3, 442034
221:              bge          s5, a0, 226f
                  slli         t2, gp, 2
                  lui          zero, 612242
224:              srai         s2, s1, 26
                  xor          sp, t1, s2
226:              bge          a1, s1, 233f
                  nop
228:              blt          s7, a6, 240f
                  srai         s1, a7, 31
sub_2_9:          jal          ra, 12f
0:                jal          ra, 22f
1:                jal          ra, 21f
2:                jal          t3, 13f
3:                jal          ra, 15f
4:                jal          ra, 24f
5:                jal          t1, 8f
6:                jal          ra, 3b
7:                jal          t2, 17f
8:                jal          ra, 0b
9:                jal          ra, 20f
10:               jal          ra, 19f
11:               jal          t1, 7b
12:               jal          ra, 9b
13:               jal          ra, 1b
14:               jal          ra, 2b
15:               jal          t2, 11b
16:               jal          a4, 18f
17:               jal          t5, 23f
18:               jal          ra, 14b
19:               jal          s7, 5b
20:               jal          a3, 16b
21:               jal          t1, 10b
22:               jal          tp, 6b
23:               jal          ra, 4b
24:               add          a7, a7, s6
                  or           a4, s8, s7
                  lui          t5, 607064
                  xor          t2, t1, a2
233:              srli         s9, t3, 17
                  sltiu        a3, s8, -1861
                  srl          a0, t0, a6
                  blt          s7, zero, 253f
                  auipc        s9, 647932
                  bltu         s7, s7, 256f
                  srl          s4, tp, tp
240:              sltu         s2, a7, a4
                  blt          sp, s8, 244f
                  beq          t6, t3, 243f
243:              or           t2, s1, t1
244:              srai         gp, s11, 17
                  blt          ra, t6, 257f
                  xor          s3, a2, a7
                  addi         a4, a7, -278
                  ori          ra, a2, 1434
                  auipc        t2, 730928
                  sra          t2, s3, ra
                  or           t2, s4, zero
                  lui          a3, 657500
253:              srl          s9, tp, gp
                  sub          t0, a0, a4
                  and          a6, ra, a2
256:              bne          a4, a3, 273f
257:              sltu         gp, sp, a2
                  xor          t2, t5, s8
                  ori          a5, t2, 401
                  blt          t1, ra, 267f
                  ori          a3, a7, 1491
                  or           a2, a1, t0
                  bne          ra, s6, 269f
                  add          a5, t0, ra
                  bne          t6, ra, 267f
                  add          t4, a5, a6
267:              bltu         gp, s7, 279f
                  bgeu         zero, s3, 285f
269:              sltiu        s10, a2, 53
                  bne          a6, t4, 271f
271:              addi         t0, s1, 1870
                  bne          s8, s11, 289f
273:              srl          gp, t5, t6
                  addi         s9, s8, 643
                  lui          s8, 527304
                  sltiu        s8, a0, -323
                  and          s6, s0, s9
                  srai         s10, t1, 13
279:              lui          s9, 17728
                  nop
                  beq          a3, s1, 293f
                  blt          t2, s3, 291f
                  sll          s10, a2, s6
                  nop
285:              srli         s10, a5, 15
                  xori         t4, s2, 869
                  andi         a5, a6, -1942
                  sub          s2, s8, t0
289:              srl          s9, zero, s10
                  xori         s1, s10, -1538
291:              srl          s7, a2, a6
                  slti         zero, a4, -69
293:              ori          s7, zero, 546
                  xor          s8, a7, s0
                  addi         ra, t3, -738
                  sra          a3, t0, s0
                  srai         a7, s3, 3
                  xor          sp, a4, s10
                  auipc        gp, 225593
                  addi         a2, t1, -510
                  beq          a1, s4, 318f
                  blt          a3, t6, 312f
                  sltu         s1, zero, t4
                  srai         s9, t0, 13
                  blt          gp, t1, 322f
                  xori         sp, s0, -1083
                  bne          s9, a3, 315f
                  beq          t3, s2, 309f
309:              blt          s7, t0, 320f
                  nop
                  bge          s5, s0, 316f
312:              sltiu        s4, s4, 331
                  add          a0, a6, t4
                  srai         a2, s5, 18
315:              sub          a4, a3, t6
316:              slti         zero, a6, -678
                  bltu         s7, t6, 318f
318:              bge          s10, sp, 327f
                  auipc        s6, 439427
320:              and          a5, s8, s5
                  auipc        s8, 315171
322:              andi         s8, a2, -2003
                  slt          a5, t1, a0
                  nop
                  andi         t2, ra, 629
                  srl          s3, a6, s0
327:              auipc        s8, 386772
                  slti         t3, s8, 1948
                  sra          a2, tp, a1
                  slli         gp, s0, 31
                  srl          a6, s1, a0
                  auipc        ra, 888965
                  bne          gp, a6, 352f
                  sltiu        s2, a1, 646
                  andi         s8, a5, -704
                  slt          a4, a7, a2
                  bgeu         t5, a0, 352f
                  slli         sp, s4, 17
                  srai         a2, a2, 5
                  srl          tp, t2, t5
                  xor          gp, a4, zero
                  lui          t0, 775612
                  bge          s3, t1, 355f
                  add          t5, a5, ra
                  slli         gp, a3, 24
                  sub          t2, s2, s11
                  or           s2, a4, s7
                  addi         s11, s2, 916
                  xori         a0, t5, 762
                  srl          s2, s3, s11
                  slli         tp, s5, 3
352:              beq          a6, s4, 359f
                  bne          a3, zero, 358f
                  slli         a7, t4, 28
355:              bltu         t0, t4, 363f
                  sra          a5, t6, a2
                  add          s11, s10, s6
358:              slti         zero, sp, 809
359:              srl          ra, t3, s1
                  slti         zero, s8, -1341
                  xori         t1, t1, 1148
                  slti         t2, t0, 1453
363:              bltu         s8, s8, 370f
                  srli         a5, s8, 25
                  bltu         a2, a1, 383f
                  nop
                  ori          t5, s0, 500
                  or           a6, t3, a5
                  or           a2, s8, t0
370:              slt          a6, a6, s2
                  add          t1, t2, a2
                  auipc        s0, 728133
                  sltu         tp, a3, tp
                  add          s8, t0, t6
                  bgeu         s6, t6, 378f
                  add          a3, a0, s2
                  xor          s8, s8, t2
378:              sra          t2, a7, t0
                  lui          ra, 314284
                  or           gp, tp, a2
                  lui          s11, 827922
                  xori         a5, sp, -404
383:              sltu         a6, ra, t0
                  bgeu         t4, a1, 389f
                  beq          a6, t6, 393f
                  sll          t4, s7, zero
                  addi         s11, a6, 1359
                  srai         t0, s3, 27
389:              andi         zero, s4, -475
                  srli         s6, s11, 3
                  lui          tp, 908989
                  ori          a4, ra, -954
393:              beq          s10, t1, 396f
                  bltu         a4, t4, 404f
                  slti         a4, sp, 475
396:              or           a6, tp, s8
                  bgeu         a3, s7, 398f
398:              addi         a7, s8, -1403
                  add          a5, tp, s11
                  sltiu        s2, a2, -691
                  auipc        t0, 737882
                  slt          a0, t3, a5
                  slli         s10, a7, 20
404:              bne          a0, a4, 412f
                  sltu         ra, s2, t4
                  nop
                  xor          t3, s0, a3
                  xori         tp, s6, -703
                  sra          a6, s5, s3
                  ori          s4, s6, -1608
                  ori          zero, s4, -123
412:              blt          t1, s7, 413f
413:              sub          a3, t4, tp
                  or           a7, t3, a2
                  ori          s9, s3, -3
                  slli         s6, a2, 3
                  andi         a2, t0, -1968
                  sra          s8, gp, a6
                  slli         t5, s5, 4
                  srai         sp, t4, 2
                  ori          a5, s10, -794
                  and          s4, a7, a4
                  and          sp, t2, s2
                  bgeu         a1, a2, 426f
                  bge          a5, a7, 428f
426:              sltu         t2, s0, a2
                  srli         t2, s5, 17
428:              ori          s3, t0, 852
                  bgeu         t5, s4, 439f
                  nop
                  slli         t1, s6, 19
                  sltu         s9, s4, ra
                  auipc        gp, 343242
                  slt          t3, s10, ra
                  slt          s4, t4, t6
                  srai         a5, sp, 11
                  lui          s9, 836518
                  srai         a7, a7, 19
439:              nop
                  blt          t0, tp, 457f
                  srl          s6, s11, t0
                  andi         s3, a0, -306
                  auipc        sp, 760087
                  lui          a3, 594208
                  auipc        tp, 222794
                  slt          s4, a1, s8
                  beq          t1, s8, 457f
                  andi         s7, s2, 1426
                  sra          zero, tp, s9
                  ori          a3, sp, 67
                  xor          t0, s1, a0
                  bgeu         a1, a2, 458f
                  or           t3, s4, tp
                  sll          sp, t0, s3
                  andi         zero, tp, 424
                  or           a0, t5, t3
457:              slti         a3, t5, -2017
458:              add          s8, t1, t6
                  lui          s7, 39597
                  slli         s6, s11, 0
                  blt          s11, a5, 468f
                  slli         s8, t1, 16
                  bltu         a2, s9, 466f
                  andi         a5, s6, 435
                  ori          s3, t4, -1567
466:              or           t4, s5, s5
                  auipc        t1, 912394
468:              or           a3, s0, s0
                  sltu         t1, t3, a3
                  sra          t5, a0, ra
                  ori          s6, a5, 756
                  beq          a5, a2, 484f
                  sltiu        t1, s0, 111
                  srli         s11, s11, 29
                  beq          s5, tp, 490f
                  auipc        s1, 117858
                  blt          s5, a3, 486f
                  ori          t2, s4, 1687
                  xor          s9, a4, sp
                  srai         s3, a1, 8
                  ori          s3, ra, 427
                  srli         tp, t0, 27
                  or           s9, a3, t2
484:              xor          a3, t3, s3
                  slt          gp, a4, s1
486:              auipc        tp, 215750
                  xori         s11, tp, 124
                  slt          s0, gp, gp
                  addi         a6, s4, -1131
490:              slt          s3, a0, sp
                  sltu         s1, gp, t0
                  beq          s8, gp, 497f
                  srl          a0, t2, t4
                  addi         s6, t6, 414
                  slt          a7, a7, sp
                  sll          a5, s7, a6
497:              sltu         sp, s11, s7
                  srai         s2, s4, 5
                  bltu         a0, s11, 510f
                  sltiu        t2, s11, 1295
                  bge          t0, s1, 502f
502:              sltiu        t3, a7, 1971
                  andi         gp, t1, -30
                  sltiu        a5, t0, -277
                  slli         a7, a1, 11
                  srli         s10, a2, 27
                  blt          s3, s11, 524f
                  add          sp, s7, t3
                  add          t3, t4, t1
510:              or           s1, a4, s1
                  sltu         s4, s3, t5
                  bne          a6, sp, 531f
                  or           a6, a3, a4
                  sltiu        a2, a3, 563
                  xor          a7, a6, s6
                  bgeu         t6, s7, 523f
                  bge          gp, s1, 525f
                  sll          s9, s10, s3
                  bgeu         s2, s7, 537f
                  ori          ra, t2, -1814
                  add          s0, s3, sp
                  ori          s6, a1, 1836
523:              srai         t5, s9, 28
524:              beq          a3, gp, 536f
525:              addi         s4, t1, 1142
                  ori          a3, s0, 238
                  or           a0, s0, a3
                  slti         s1, s1, 992
                  sra          s11, a1, ra
                  slti         tp, gp, -117
531:              lui          sp, 349103
                  srl          a2, zero, t0
                  add          t4, ra, s11
                  lui          s4, 325362
                  slt          t2, t4, s7
536:              addi         t2, t0, 1037
537:              beq          s4, s0, 545f
                  andi         a2, s10, -1873
                  xor          s11, t2, a4
                  auipc        s11, 743176
                  sra          t5, s3, zero
                  sltu         s2, t1, s0
                  xor          s10, a0, t2
                  bltu         t0, s2, 556f
545:              add          sp, a3, t6
                  sra          s9, s7, tp
                  auipc        s2, 808988
                  sltiu        s8, t6, 365
                  nop
                  srai         t2, t2, 1
                  slli         s4, a2, 27
                  lui          s3, 462504
                  bge          t0, sp, 558f
                  srli         zero, gp, 3
                  slti         a4, a7, -1920
556:              sub          tp, a3, s3
                  lui          t2, 543146
558:              bne          t5, sp, 563f
                  auipc        s8, 148541
                  auipc        t5, 440610
                  lui          t0, 363102
                  add          s9, a2, t1
563:              xori         s0, a5, -611
                  sra          s4, s9, s8
                  blt          a6, a6, 582f
                  bltu         a3, a3, 575f
                  slti         s7, a7, 107
                  xori         a3, s5, 123
                  slli         s3, t4, 18
                  xor          s10, s11, tp
                  add          a5, t0, sp
                  sltiu        t3, s0, 472
                  sltiu        a2, s8, -1808
                  slt          a2, t6, s3
575:              slli         s9, s4, 26
                  blt          s1, s1, 593f
                  ori          a5, t4, 98
                  or           s9, s6, s4
                  sub          s6, a0, s5
                  bne          s9, a2, 592f
                  lui          s9, 256617
582:              ori          tp, s4, 1664
                  sub          s8, tp, t1
                  beq          s8, s2, 602f
                  auipc        a0, 467106
                  bne          s4, sp, 603f
                  beq          s11, s10, 604f
                  srl          t3, sp, t2
                  ori          a6, t4, 1090
                  sll          s11, t6, t4
                  slli         t3, a4, 5
592:              bgeu         s9, s8, 601f
593:              ori          gp, a5, -2002
                  addi         s2, s11, -1374
                  sltiu        t0, a0, 315
                  sll          a7, a3, ra
                  addi         t4, ra, 10
                  sltu         a6, s1, t3
                  bne          s4, tp, 610f
                  blt          t0, a6, 603f
601:              srai         tp, s1, 27
602:              bge          s3, ra, 607f
603:              blt          sp, a6, 615f
604:              slti         a6, t1, 738
                  beq          s9, s6, 611f
                  bge          s7, s1, 607f
607:              bne          zero, zero, 614f
                  blt          a0, s10, 609f
609:              slti         s10, a4, -507
610:              or           a7, s8, t3
611:              slt          s0, s0, s6
                  srai         zero, t0, 9
                  xori         a2, gp, 1765
614:              slt          t2, s8, s4
615:              xori         s3, a4, -443
                  srli         ra, t6, 4
                  sll          s9, s0, gp
                  xori         a5, t5, -1067
                  nop
                  slli         s3, s5, 14
                  add          t4, t2, s10
                  sltu         s3, a4, s3
                  slt          t0, t4, s6
                  srai         s1, t2, 16
                  slt          tp, tp, a0
                  sltu         ra, s1, a3
                  sltiu        tp, s7, 1420
                  sll          s0, s8, s5
                  auipc        gp, 257523
                  ori          t4, tp, -1750
                  sll          t2, ra, t2
                  auipc        t0, 366197
                  xori         a4, s9, 1717
                  ori          a3, ra, 1061
                  xor          ra, s1, s0
                  slt          s11, gp, a1
                  srli         t4, a7, 17
                  srli         s1, t5, 5
                  sltiu        s11, a7, 1047
                  slli         a5, a1, 23
                  ori          a5, s9, -395
                  xori         ra, tp, 1356
                  sltiu        s0, t1, 1254
                  sub          sp, a4, t0
                  bge          a1, s9, 646f
646:              sltiu        s10, a5, 152
                  bgeu         t2, t5, 656f
                  bltu         s7, s4, 656f
                  srli         s6, a6, 22
                  slli         s3, s1, 25
                  or           t2, t5, s5
                  sltiu        zero, t6, -651
                  add          tp, s6, ra
                  sra          s11, s2, a2
                  srli         s11, t3, 2
656:              sll          a6, s6, s0
                  lui          s0, 334145
                  and          t2, t1, t2
                  srai         s7, s4, 25
                  bgeu         tp, s10, 675f
                  sltiu        s9, gp, 799
                  sra          tp, t6, t0
                  beq          a0, a7, 673f
                  nop
                  add          ra, s3, t5
                  bltu         gp, s7, 683f
                  lui          s11, 441601
                  srai         t5, a3, 15
                  srai         s10, s9, 1
                  srai         t0, a5, 13
                  lui          t1, 27365
                  or           t4, tp, t1
673:              lui          gp, 923162
                  addi         s10, t0, -1341
675:              add          s8, a4, s7
                  andi         t0, t1, 1481
                  sub          t4, s7, s5
                  beq          s5, t5, 690f
                  ori          s6, tp, -562
                  bne          s3, a0, 688f
                  sltiu        a3, s4, -1533
                  beq          t4, zero, 684f
683:              bge          a7, t3, 700f
684:              slli         s2, zero, 25
                  bge          s5, t0, 704f
                  slt          s8, s7, t2
                  bgeu         gp, ra, 692f
688:              sra          tp, s5, s0
                  nop
690:              bgeu         s3, s9, 695f
                  sltiu        s7, s5, 1354
692:              xori         t4, s10, 1392
                  sltiu        a4, t4, 1358
                  bne          ra, a1, 697f
695:              andi         tp, tp, -145
                  bltu         a5, a7, 706f
697:              srai         ra, s8, 30
                  slti         sp, a1, 557
                  srai         t5, t3, 16
700:              add          s9, tp, s7
                  sltu         a3, zero, s7
                  blt          t6, t6, 709f
                  srl          a3, t6, s7
704:              ori          t5, t2, 774
                  ori          a6, s1, 1213
706:              andi         a3, a4, -187
                  or           ra, t4, t5
                  sra          sp, s11, a1
709:              add          gp, t0, t6
                  srli         ra, a3, 25
                  sltu         s10, a6, t0
                  srli         s3, zero, 14
                  xor          s9, a0, ra
                  sub          s1, t5, a4
                  slti         s9, s10, 302
                  sll          a3, a5, t1
                  and          s0, t1, a0
                  lui          s7, 460382
                  bgeu         t2, s4, 727f
                  or           s8, s0, s3
                  add          tp, a6, a6
                  nop
                  slti         s11, s9, -1102
                  nop
                  lui          s2, 1047018
                  bgeu         s6, s10, 735f
727:              sra          a0, s11, a6
                  beq          a4, gp, 736f
                  or           a0, t5, a3
                  srai         s11, a6, 7
                  beq          s8, sp, 732f
732:              or           zero, t0, a7
                  add          a0, zero, a4
                  slti         sp, a0, 1827
735:              sra          a7, s2, s2
736:              sra          s8, s7, a7
                  sll          a6, s5, s1
                  and          t4, s0, t3
                  and          s4, s8, a5
                  sub          ra, s10, a5
                  sll          a2, a7, a1
                  sub          s11, tp, s3
                  sra          s8, a0, t3
                  slti         t5, t5, -1359
                  andi         zero, a3, 1768
                  nop
                  ori          s3, a4, -395
                  sltiu        s6, s3, 3
                  sra          gp, s7, t6
                  beq          s2, a7, 752f
                  xor          tp, s7, gp
752:              sub          sp, gp, a7
                  slli         s2, a6, 4
                  bne          s9, s9, 773f
                  bge          gp, s9, 760f
                  beq          t1, gp, 773f
                  blt          s9, sp, 767f
                  bgeu         a5, s5, 768f
                  lui          s2, 975463
760:              and          s9, s10, a6
                  xori         s7, s7, -8
                  slt          a5, a2, a3
                  xori         t2, t3, -481
                  srli         tp, t1, 18
                  or           a0, a1, t3
                  bltu         ra, s7, 778f
767:              auipc        t4, 256297
768:              srai         a3, t5, 31
                  sltu         t4, a0, s4
                  sltiu        zero, s8, 501
                  bgeu         s2, t2, 772f
772:              srli         s10, s11, 6
773:              xori         s8, tp, 1042
                  add          s9, a3, s4
                  sltiu        s0, s11, 1978
                  andi         s4, s5, 584
                  sra          a2, t5, t2
778:              sltu         s3, a1, s10
                  beq          ra, s11, 786f
                  add          ra, t6, gp
                  sra          t1, a7, s5
                  addi         s4, t2, 100
                  srai         a6, t0, 19
                  slt          a4, s8, sp
                  beq          a0, s0, 802f
786:              slli         t2, s7, 15
                  bge          a3, t0, 794f
                  slt          zero, s3, a6
                  add          t1, s3, s6
                  slli         a5, s2, 17
                  xori         t4, a5, -656
                  srli         s6, s3, 21
                  sltu         s10, s6, s0
794:              sltu         t2, s4, t0
                  andi         a3, s1, -1653
                  auipc        tp, 552141
                  srl          t0, s10, t6
                  blt          t5, t5, 810f
                  bge          t3, s1, 807f
                  or           s6, s11, tp
                  add          a7, s1, s7
802:              sltiu        sp, t4, 654
                  srli         s0, a7, 12
                  nop
                  and          s7, t4, s2
                  blt          t0, s6, 811f
807:              sub          ra, t3, a7
                  nop
                  xori         s7, t6, -1987
810:              bltu         t2, a5, 813f
811:              bge          ra, s5, 814f
                  andi         s10, s7, -907
813:              slti         s2, s4, 1061
814:              blt          a0, s10, 819f
                  sub          s4, s3, a2
                  bgeu         tp, a1, 822f
                  srai         a7, s4, 17
                  sub          t1, t5, ra
819:              blt          a7, s9, 827f
                  lui          s6, 437116
                  nop
822:              bne          s8, a3, 834f
                  add          gp, t5, s6
                  nop
                  xor          s3, s3, s4
                  sltu         s10, s6, zero
827:              bltu         a7, t6, 838f
                  bge          a1, a0, 845f
                  sra          sp, a1, a7
                  beq          tp, s8, 831f
831:              blt          t0, a1, 849f
                  sll          t5, t3, t6
                  lui          t0, 826181
834:              bge          t1, a6, 849f
                  xori         s9, t0, -882
                  blt          t1, ra, 853f
                  srli         s4, sp, 19
838:              lui          sp, 492873
                  addi         t3, s3, 1400
                  bltu         s2, t2, 849f
                  blt          s5, s10, 849f
                  blt          a5, s5, 849f
                  slti         a2, s4, -1396
                  sltiu        a4, t6, -215
845:              sll          s6, a1, a2
                  or           s2, t0, s7
                  srai         s1, gp, 5
                  or           s9, a2, s5
849:              sub          s11, s5, a4
                  sltiu        sp, s0, 349
                  andi         a3, t6, -680
                  sra          a2, a0, ra
853:              srl          s3, s0, s5
                  add          a5, s8, s0
                  lui          t3, 747251
                  sltu         t0, a1, t5
                  slti         s11, zero, 173
                  xori         s0, gp, -43
                  srli         t2, s9, 26
                  beq          t0, tp, 877f
                  auipc        t5, 424943
                  sub          zero, zero, ra
                  slti         a2, a4, 1457
                  sra          ra, sp, t1
                  srl          s1, s7, sp
                  sltiu        sp, tp, -527
                  sub          a5, s0, a4
                  bge          sp, a3, 873f
                  xor          sp, ra, s4
                  beq          s4, s6, 878f
                  auipc        ra, 1006344
                  addi         s0, ra, -1014
873:              slt          t0, t5, t2
                  sra          ra, a7, ra
                  sltiu        s6, s11, -297
                  bne          s11, s5, 888f
877:              sub          a7, s0, t2
878:              sub          t4, s6, t1
                  blt          s9, a7, 896f
                  sub          t5, sp, a2
                  srl          a4, ra, a1
                  bltu         sp, a6, 884f
                  sltu         a5, s0, a4
884:              sub          ra, t4, s11
                  bne          s6, a3, 890f
                  beq          a2, zero, 891f
                  sra          t3, ra, s0
888:              xor          s1, a5, s3
                  srai         a0, gp, 26
890:              sub          a6, t3, a2
891:              auipc        t3, 194578
                  ori          s0, a7, -1057
                  slt          s8, s10, s11
                  slli         s0, gp, 1
                  ori          a2, s1, -196
896:              xor          tp, t5, a0
                  sltu         s6, sp, ra
                  andi         t5, zero, -215
                  srli         sp, a1, 28
                  addi         sp, s5, 1282
                  slti         t1, s9, -498
                  slti         t4, a6, -158
                  and          t1, zero, t3
                  auipc        s3, 891721
                  blt          sp, tp, 917f
                  sltu         s0, gp, zero
                  ori          s6, t0, -88
                  and          sp, s10, s5
                  sll          t1, ra, t5
                  sltu         s10, t2, s7
                  beq          t6, s9, 918f
                  auipc        a5, 889783
                  blt          zero, t5, 930f
                  srli         s8, s9, 24
                  sub          a5, t4, t0
                  sll          t1, a6, gp
917:              xori         s3, t5, 1473
918:              sra          t2, t4, tp
                  slt          s4, s11, a4
                  sra          t2, s6, a6
                  slti         t0, sp, 525
                  slt          t4, zero, t6
                  xor          sp, t5, t5
                  slli         t5, a0, 22
                  or           a0, a3, tp
                  slt          a4, s9, t4
                  lui          gp, 277414
                  bne          a0, s6, 937f
                  lui          a5, 325875
930:              ori          t3, s6, -1092
                  srai         ra, a2, 2
                  and          t1, s5, s1
                  ori          t5, s2, 1449
                  ori          s4, s6, 1684
                  auipc        s9, 921520
                  bge          s1, s1, 946f
937:              xori         t1, t5, 1048
                  add          gp, a6, s5
                  sll          a7, t0, s5
                  bne          t4, s4, 957f
                  srli         ra, t5, 12
                  bge          s9, s2, 951f
                  bltu         s9, tp, 944f
944:              bltu         a1, t2, 955f
                  addi         t5, a4, -336
946:              bgeu         zero, a4, 952f
                  sltu         a3, t0, a3
                  bge          t0, t3, 956f
                  bgeu         s9, a4, 952f
                  sll          s4, gp, a5
951:              slti         s6, t1, 1967
952:              srli         tp, s8, 23
                  lui          a7, 372323
                  srai         s2, t4, 10
955:              srl          s0, s11, ra
956:              andi         a7, s5, -1843
957:              bgeu         t6, s8, 958f
958:              addi         s11, t4, 739
                  addi         s3, s8, -1884
                  slli         tp, t1, 26
                  xori         a7, t6, -1692
                  srli         zero, a5, 7
                  beq          sp, t5, 964f
964:              addi         s11, a3, 1882
                  sltu         sp, t4, a0
                  sltiu        tp, sp, 1509
                  srl          a5, a6, a5
                  slli         s3, t2, 9
                  auipc        t1, 876299
                  blt          t3, t4, 985f
                  or           t4, t6, s0
                  slt          t2, s2, a2
                  lui          a5, 773481
                  beq          a4, s7, 993f
                  and          s1, sp, a1
                  sltiu        s11, a0, 975
                  auipc        a3, 630494
                  ori          s0, s2, -492
                  nop
                  slt          s6, s2, s4
                  blt          a4, s4, 991f
                  srli         t4, zero, 26
                  addi         t2, s2, 823
                  srl          a5, a3, t1
985:              bne          s2, s3, 1003f
                  add          a7, sp, s6
                  add          t4, t5, s1
                  slti         ra, a4, 1592
                  xori         a5, gp, 1645
                  sltu         s4, t6, s4
991:              bltu         tp, sp, 994f
                  blt          t0, s1, 1004f
993:              sltu         t0, s10, a1
994:              ori          s10, ra, -733
                  and          a7, zero, ra
                  bgeu         s3, a0, 1008f
                  auipc        s3, 166015
                  bne          s1, a5, 1005f
                  sll          ra, s2, s1
                  bgeu         s0, a4, 1010f
                  srli         s4, t2, 3
                  slli         t5, a6, 28
1003:             sra          s9, s8, a5
1004:             lui          t1, 514843
1005:             blt          a3, s1, 1014f
                  ori          t1, a3, 895
                  slli         s8, s8, 23
1008:             srli         tp, a2, 4
                  slt          t4, s0, a1
1010:             bltu         t5, a3, 1015f
                  bgeu         a0, t4, 1023f
                  blt          s5, s10, 1014f
                  beq          s2, gp, 1016f
1014:             or           zero, s1, s7
1015:             sub          s4, s7, s5
1016:             slti         s1, s11, -1705
                  xori         zero, s2, 1490
                  xori         t4, t4, 560
                  sub          t4, s0, s4
                  xor          t5, a1, a0
                  xor          s7, s5, sp
                  sub          a4, s4, a3
1023:             srli         s6, s10, 7
                  nop
                  add          s0, s4, t6
                  blt          s4, zero, 1032f
                  bne          tp, s11, 1037f
                  bne          a6, s4, 1029f
1029:             slli         gp, t6, 1
                  addi         a5, t5, 990
                  sub          s11, t4, t5
1032:             slti         s3, s8, 1017
                  slti         s1, s9, 1960
                  sra          a6, s0, t0
                  and          s4, t4, s10
                  lui          t1, 594222
1037:             slt          t0, ra, s9
                  auipc        sp, 147589
                  sltu         s2, a3, t0
                  sra          t1, s7, t5
                  or           tp, t4, s10
                  slti         s0, s3, 1153
                  or           s1, zero, ra
                  addi         s7, a6, -1519
                  sltiu        s1, a6, 832
                  srai         t2, t4, 30
                  bltu         t6, s6, 1050f
                  ori          t2, s5, 371
                  slt          ra, s10, a2
1050:             lui          gp, 211876
                  srai         a0, t2, 24
                  srl          s2, s11, a0
                  bge          s6, a4, 1072f
                  blt          s3, s10, 1069f
                  sltiu        s2, ra, 1724
                  or           s1, s6, s6
                  slti         t5, s9, 799
                  slti         a4, a0, -1763
                  srl          zero, s3, a3
                  bge          a0, gp, 1061f
1061:             nop
                  nop
                  slti         t4, s10, -77
                  sltiu        s3, s5, -1688
                  bltu         zero, t4, 1076f
                  and          s3, a1, a3
                  srai         s6, ra, 16
                  xori         s0, s3, 1973
1069:             xor          a4, t2, s11
                  sra          s0, gp, a2
                  nop
1072:             lui          sp, 505309
                  or           gp, a3, a5
                  sll          s4, t2, s7
                  srli         s6, a7, 14
1076:             lui          s9, 599734
                  bgeu         a6, s10, 1094f
                  nop
                  ori          a0, s8, -453
                  beq          s4, s7, 1098f
                  or           s6, s7, a7
                  sltiu        ra, s8, -1101
                  slt          s0, s8, a7
                  ori          s2, a0, -1931
                  bgeu         t1, s3, 1102f
                  slli         s11, t1, 21
                  xori         t0, t2, 22
                  sll          s9, a2, s3
                  bltu         a0, a0, 1094f
                  auipc        s10, 727270
                  slt          a0, s1, a5
                  add          s7, a0, s10
                  slt          s6, t3, a0
1094:             xor          s1, s7, s9
                  blt          t2, s1, 1104f
                  sub          s2, a5, t0
                  andi         t3, s7, -978
1098:             xori         s10, t6, -1179
                  and          a6, a7, a3
                  bltu         zero, ra, 1112f
                  and          t0, t3, a1
1102:             nop
                  xori         s6, a5, -1928
1104:             slli         a5, t0, 29
                  andi         s11, s0, 1181
                  blt          s3, t5, 1123f
                  slti         a4, a0, 625
                  bltu         a1, s9, 1125f
                  slt          t3, sp, s3
                  xor          a6, t0, s9
                  add          s10, t0, a4
1112:             srl          s7, s11, s2
                  bgeu         t1, s10, 1121f
                  beq          s0, a2, 1115f
1115:             bltu         t0, a1, 1120f
                  bge          t4, a3, 1124f
                  blt          s5, s11, 1124f
                  addi         s7, s5, -986
                  srai         s6, a0, 31
1120:             and          t0, s10, s4
1121:             bltu         s11, s10, 1129f
                  bge          s4, s5, 1140f
1123:             srli         ra, a7, 7
1124:             lui          s9, 298478
1125:             auipc        s11, 463975
                  slli         s9, s5, 2
                  slli         a4, s3, 2
                  xor          zero, s5, s11
1129:             auipc        a3, 819866
                  xori         t5, a5, 228
                  nop
                  and          s9, tp, s2
                  sra          a3, gp, s1
                  ori          ra, s9, 1543
                  sltiu        a5, s3, -1807
                  and          t1, s9, s11
                  xori         a2, s5, 1936
                  sll          ra, s10, s1
                  srli         sp, a2, 6
1140:             beq          zero, s1, 1147f
                  sltu         s3, t4, s6
                  xor          a2, a5, s1
                  slt          a5, gp, s7
                  or           s10, s4, a3
                  bne          s3, a0, 1146f
1146:             sltu         a6, t4, s2
1147:             sltiu        a3, gp, 1263
                  add          t4, s8, a5
                  sra          t0, a7, a0
                  xor          a5, s1, tp
                  xori         t1, a7, 1651
                  auipc        s1, 1018893
                  addi         a3, s11, -1122
                  srl          a7, a0, s8
                  ori          s3, s1, -1319
                  add          t2, t0, a5
                  or           s2, t5, t6
                  sra          s8, s9, t2
                  bge          s8, t0, 1161f
                  xori         s6, s3, -281
1161:             blt          tp, a7, 1168f
                  sltiu        s9, a4, -1956
sub_2_23:         jal          ra, 0f
0:                jal          sp, 12f
1:                jal          s2, 6f
2:                jal          s3, 17f
3:                jal          t0, 11f
4:                jal          ra, 5f
5:                jal          ra, 16f
6:                jal          a7, 13f
7:                jal          ra, 4b
8:                jal          t0, 9f
9:                jal          ra, 3b
10:               jal          sp, 15f
11:               jal          ra, 10b
12:               jal          t1, 8b
13:               jal          ra, 2b
14:               jal          t1, 7b
15:               jal          t1, 14b
16:               jal          ra, 1b
17:               xor          s6, a6, a7
                  slt          t1, t1, sp
                  srai         s11, s10, 13
                  auipc        t2, 715503
                  bne          t4, a2, 1183f
                  ori          tp, t4, -1950
1168:             lui          t1, 727770
                  srai         a6, t3, 11
                  sltu         s6, a6, a3
                  slt          t1, ra, s3
                  xori         s7, a6, 1450
                  bgeu         sp, s3, 1184f
                  sub          a3, a4, zero
                  blt          a3, a3, 1183f
                  andi         t5, a5, 877
                  sltiu        ra, t3, 400
                  srli         t0, t4, 1
                  slti         sp, a3, -1562
                  or           tp, a2, s4
                  or           s0, t6, a2
                  or           s0, tp, s8
1183:             bge          t0, s11, 1188f
1184:             srai         s7, t3, 18
                  xori         s4, s7, 1329
                  slli         s6, s4, 22
                  sltu         a7, t4, ra
1188:             slt          t1, s8, s5
                  blt          ra, zero, 1206f
                  addi         s3, gp, 1716
                  srl          tp, tp, s8
                  slli         ra, s3, 31
                  beq          s1, t1, 1196f
                  slli         ra, a1, 10
                  srai         zero, a1, 28
1196:             addi         zero, t3, 598
                  sltiu        s11, s4, -871
                  and          s9, s8, a7
                  sltu         t2, s2, a6
                  slt          s0, s5, s3
                  slt          sp, t1, zero
                  or           t3, a3, s5
                  srl          a7, t3, t4
                  slli         s0, gp, 16
                  xori         a4, a5, -438
1206:             bne          a4, t1, 1215f
                  slt          s3, s7, s0
sub_2_16:         jal          ra, 13f
0:                jal          ra, 4f
1:                jal          sp, 15f
2:                jal          s7, 6f
3:                jal          t1, 12f
4:                jal          t1, 5f
5:                jal          t1, 1b
6:                jal          t1, 3b
7:                jal          ra, 0b
8:                jal          ra, 11f
9:                jal          ra, 7b
10:               jal          ra, 9b
11:               jal          s7, 14f
12:               jal          t1, 16f
13:               jal          s10, 10b
14:               jal          t1, 2b
15:               jal          t1, 8b
16:               or           t4, gp, a6
                  bltu         sp, a5, 1214f
                  slt          t2, t3, s0
                  beq          s2, s5, 1211f
1211:             bltu         s2, gp, 1220f
                  blt          s7, t1, 1213f
1213:             srl          s0, a3, s6
1214:             srai         ra, s4, 8
1215:             sltiu        zero, sp, 148
                  beq          s4, a2, 1228f
                  slli         t0, t4, 24
                  lui          sp, 628032
                  andi         s4, a5, 1286
1220:             xori         ra, s11, 850
                  ori          zero, s8, -1417
                  srl          a4, s2, s5
                  or           s2, t3, s11
                  slt          a3, zero, s5
                  xori         s7, s1, -1122
                  ori          t1, a7, 928
                  srai         a4, a5, 0
1228:             bge          t1, s10, 1247f
                  xor          a7, s8, t0
                  bltu         s2, a7, 1242f
                  xor          t2, t6, s3
                  slli         t5, a2, 0
                  sltu         s11, ra, t0
                  addi         s11, a4, 1819
                  or           a6, t3, s0
                  addi         a0, a0, -1082
                  bltu         a2, zero, 1245f
                  xor          ra, a7, t4
                  nop
                  nop
                  slti         t2, a6, -1127
1242:             lui          a7, 975963
                  lui          sp, 563552
                  slt          s7, s11, s5
1245:             srli         a6, t5, 28
                  nop
1247:             nop
                  andi         sp, t0, 1863
                  add          zero, a3, s10
                  srai         s10, s1, 6
                  ori          a6, sp, 59
                  sltu         s11, gp, a7
                  ori          a3, s5, -592
                  ori          s0, a4, 431
                  slli         s8, s11, 23
                  nop
                  bltu         s8, s0, 1267f
                  nop
                  srai         a6, t2, 23
                  beq          a4, t0, 1277f
                  sra          s11, s7, s1
                  slti         a3, s2, 1790
                  srai         a5, s0, 30
                  ori          s2, a0, -39
                  xori         t5, s2, 1792
                  srli         s0, t3, 22
1267:             slli         ra, sp, 6
                  bne          s5, t4, 1276f
                  add          s2, s11, tp
                  xor          s7, a3, t1
                  and          t4, s8, t1
                  andi         s4, sp, 318
                  sub          s9, s9, a0
                  sra          tp, a1, s3
                  sub          t3, t6, a7
1276:             bne          s8, tp, 1280f
1277:             sub          s3, a2, a3
                  blt          s7, ra, 1280f
                  ori          t0, a2, 698
1280:             add          t1, sp, s3
                  ori          a4, a2, 1417
                  lw           ra, 4(s5)
                  andi         a3, a1, -1909
                  sra          gp, s4, a2
                  addi         s5, s5, 16
                  sll          zero, t2, s9
1838:             addi x6, x1, 0
1838:             jalr x6, x6, 0
sub_1:            addi         s5, s5, -48
                  addi         s8, t3, 633
                  addi         s0, zero, -715
                  sw           ra, 4(s5)
                  sll          a4, t3, t5
                  srai         s4, tp, 23
                  andi         t1, s8, -305
                  xori         a7, a4, 1288
                  srl          s10, a4, a3
                  slli         a6, s3, 13
                  lui          s2, 388098
                  srl          s2, a1, a4
                  and          t0, t1, t0
                  slli         s2, a3, 31
                  xor          s1, s2, t2
sub_1_j2:         jal          ra, sub_2 #jump sub_1 -> sub_2
                  xori         a3, s2, -1020
                  sll          s11, t6, s10
                  srli         t0, s9, 11
                  la           t1, sub_3
                  addi         t1, t1, -374
                  slli         gp, a7, 2
                  lui          s7, 514281
sub_1_j3:         jalr         ra, t1, 375 #jump sub_1 -> sub_3
sub_1_0:          jal          ra, 15f
0:                jal          ra, 9f
1:                jal          ra, 14f
2:                jal          s7, 10f
3:                jal          tp, 12f
4:                jal          s9, 2b
5:                jal          t1, 6f
6:                jal          ra, 11f
7:                jal          ra, 8f
8:                jal          sp, 4b
9:                jal          ra, 16f
10:               jal          ra, 3b
11:               jal          ra, 18f
12:               jal          s9, 1b
13:               jal          sp, 0b
14:               jal          a7, 13b
15:               jal          ra, 7b
16:               jal          t1, 17f
17:               jal          ra, 5b
18:               sltiu        s2, s8, 1873
sub_1_2:          jal          ra, 0f
0:                jal          t5, 1f
1:                jal          t2, 3f
2:                jal          a3, 10f
3:                jal          ra, 5f
4:                jal          ra, 6f
5:                jal          ra, 8f
6:                jal          t1, 7f
7:                jal          s11, 9f
8:                jal          gp, 2b
9:                jal          ra, 11f
10:               jal          ra, 4b
11:               sub          s10, t2, sp
sub_1_1:          jal          ra, 2f
0:                jal          ra, 11f
1:                jal          ra, 9f
2:                jal          ra, 10f
3:                jal          a3, 14f
4:                jal          t1, 1b
5:                jal          ra, 15f
6:                jal          s8, 3b
7:                jal          ra, 13f
8:                jal          a6, 4b
9:                jal          ra, 12f
10:               jal          ra, 6b
11:               jal          t1, 7b
12:               jal          a5, 5b
13:               jal          ra, 8b
14:               jal          ra, 0b
15:               add          sp, t1, s9
sub_1_4:          jal          ra, 1f
0:                jal          ra, 9f
1:                jal          t1, 23f
2:                jal          tp, 0b
3:                jal          ra, 14f
4:                jal          t4, 25f
5:                jal          ra, 20f
6:                jal          t3, 18f
7:                jal          ra, 30f
8:                jal          ra, 27f
9:                jal          s9, 15f
10:               jal          ra, 29f
11:               jal          a2, 13f
12:               jal          ra, 7b
13:               jal          ra, 5b
14:               jal          ra, 4b
15:               jal          t1, 10b
16:               jal          a5, 28f
17:               jal          ra, 22f
18:               jal          tp, 21f
19:               jal          ra, 26f
20:               jal          ra, 24f
21:               jal          ra, 17b
22:               jal          t1, 11b
23:               jal          ra, 6b
24:               jal          s6, 19b
25:               jal          s9, 8b
26:               jal          s6, 16b
27:               jal          ra, 12b
28:               jal          ra, 2b
29:               jal          ra, 3b
30:               srl          s6, t1, s2
sub_1_5:          jal          ra, 6f
0:                jal          t1, 13f
1:                jal          ra, 9f
2:                jal          a4, 10f
3:                jal          sp, 4f
4:                jal          a2, 15f
5:                jal          ra, 14f
6:                jal          ra, 21f
7:                jal          t1, 17f
8:                jal          ra, 16f
9:                jal          ra, 12f
10:               jal          s3, 18f
11:               jal          ra, 1b
12:               jal          sp, 8b
13:               jal          ra, 2b
14:               jal          t3, 19f
15:               jal          a5, 22f
16:               jal          ra, 20f
17:               jal          ra, 11b
18:               jal          ra, 3b
19:               jal          ra, 0b
20:               jal          ra, 5b
21:               jal          t1, 7b
22:               or           s4, zero, a2
sub_1_3:          jal          ra, 18f
0:                jal          s11, 22f
1:                jal          ra, 16f
2:                jal          ra, 19f
3:                jal          ra, 0b
4:                jal          ra, 5f
5:                jal          a6, 25f
6:                jal          ra, 12f
7:                jal          t1, 24f
8:                jal          t1, 1b
9:                jal          s4, 2b
10:               jal          ra, 30f
11:               jal          ra, 3b
12:               jal          t1, 7b
13:               jal          a6, 17f
14:               jal          ra, 9b
15:               jal          ra, 6b
16:               jal          ra, 15b
17:               jal          t1, 11b
18:               jal          t1, 29f
19:               jal          ra, 28f
20:               jal          a3, 8b
21:               jal          t1, 26f
22:               jal          ra, 27f
23:               jal          t1, 10b
24:               jal          s8, 14b
25:               jal          ra, 23b
26:               jal          ra, 13b
27:               jal          sp, 20b
28:               jal          s6, 4b
29:               jal          tp, 21b
30:               slt          a2, a0, gp
                  add          t5, s3, a1
                  nop
                  slt          gp, s1, t1
                  lui          s7, 158094
                  srai         tp, a6, 11
                  beq          s2, a3, 11f
                  bltu         a5, zero, 11f
                  nop
                  slt          s10, s8, tp
                  xor          gp, a6, zero
                  sll          s11, a7, t5
11:               auipc        gp, 756635
                  blt          s5, s11, 14f
                  auipc        s6, 620991
14:               slti         s0, a4, 900
                  srl          t2, s10, s0
                  slt          t5, s3, s3
                  sltu         t1, s0, t0
                  auipc        a6, 912814
                  slt          a6, s1, a5
                  beq          t5, gp, 29f
                  or           t1, sp, gp
                  xor          sp, t3, s8
                  bltu         a5, a1, 34f
                  srl          s11, t4, gp
                  slti         s2, s7, -663
                  bltu         a3, a1, 32f
                  srl          t3, s10, a4
                  bgeu         ra, s9, 37f
29:               sltu         ra, s1, t1
                  bgeu         s6, t0, 37f
                  addi         t1, s0, -1663
32:               slli         a6, a7, 24
                  lui          s6, 195663
34:               andi         gp, s5, -533
                  bge          s5, a2, 43f
                  addi         s4, a6, 967
37:               sra          a5, t5, a6
                  auipc        gp, 299606
                  bgeu         ra, s1, 57f
                  or           ra, ra, s1
                  and          s2, a2, a1
                  xor          t3, sp, s11
43:               nop
                  ori          a3, a1, -332
                  xori         s1, zero, 458
                  lui          s9, 472854
                  sll          s7, a3, tp
                  slti         s10, s10, -837
                  blt          a0, s0, 52f
                  or           s9, sp, tp
                  nop
52:               sltiu        s7, ra, 1453
                  slli         s8, t0, 15
                  sra          s7, s10, s1
                  bge          s9, t2, 67f
                  srai         zero, s2, 3
57:               bgeu         a6, a2, 58f
58:               beq          a5, ra, 60f
                  sltu         s8, t6, t2
60:               bge          tp, zero, 61f
61:               ori          a5, ra, 100
                  auipc        s7, 489274
                  srai         t1, t0, 20
                  slli         zero, s11, 19
                  sll          s3, t4, s0
                  sub          a7, a0, s11
67:               auipc        s1, 815144
                  bgeu         a3, s2, 73f
                  lui          tp, 596587
                  bgeu         t6, sp, 73f
                  bne          s8, a0, 87f
                  slti         s4, s10, -610
73:               bltu         a0, gp, 80f
                  auipc        t5, 799004
                  bge          s11, a2, 95f
                  blt          s2, t6, 82f
                  bne          a2, t5, 91f
                  andi         t2, t2, -413
                  andi         t0, s0, 359
80:               or           s0, a5, a2
                  bge          t6, s5, 92f
82:               blt          t1, t6, 96f
                  andi         t4, ra, 764
                  xori         s9, s6, 1282
                  sll          s1, a3, ra
                  bge          s7, a4, 100f
87:               sra          a4, s8, t0
                  srai         t5, s2, 21
                  nop
                  sra          t3, a0, s3
91:               and          t3, t2, t5
92:               blt          t0, a4, 111f
                  ori          s10, s0, 2013
                  sra          a0, s9, t3
95:               xor          s10, s9, t0
96:               slt          a4, s2, tp
                  sltiu        s1, s8, -951
                  sltu         s1, a0, t5
                  bne          t6, s0, 118f
100:              sltu         a6, a0, t0
                  xori         sp, tp, 627
                  lui          a0, 954319
                  bne          a1, s6, 115f
                  sltiu        a2, s7, -1477
                  sra          a4, a6, t6
                  sra          a7, t5, a2
                  bgeu         s6, t5, 108f
108:              xori         s0, gp, 280
                  sra          t1, t3, t1
                  sltu         tp, a7, a7
111:              add          s11, s3, t1
                  sltiu        s9, zero, -960
                  bne          s4, t5, 126f
                  bgeu         a2, a2, 115f
115:              bge          t4, ra, 129f
                  bgeu         s8, t3, 117f
117:              add          t2, s1, a4
118:              xor          s6, a7, t4
                  and          tp, a4, a6
                  bgeu         s7, a0, 122f
                  and          s9, a6, tp
122:              and          s6, a2, a6
                  sll          s4, s6, s2
                  slt          t1, s10, s8
                  bgeu         zero, s7, 139f
126:              sltiu        t0, t6, 1725
                  srai         t5, t2, 24
                  bne          s3, s1, 146f
129:              blt          zero, zero, 138f
                  ori          s3, s8, -807
                  nop
                  blt          t2, a1, 144f
                  nop
                  xori         a6, t1, 1923
                  bltu         ra, t5, 138f
                  addi         s6, a5, 27
                  bge          a3, a2, 149f
138:              sll          s1, s5, a3
139:              addi         s9, t2, 203
                  bge          s7, t1, 146f
                  xor          t0, ra, t6
                  sra          t2, s11, a1
                  slt          sp, sp, s10
144:              addi         ra, t4, -1246
                  bgeu         s7, s8, 159f
146:              blt          t6, t3, 151f
                  or           s9, s10, sp
                  blt          t4, sp, 151f
149:              srl          s4, s0, tp
                  slt          s6, s4, s11
151:              beq          s10, tp, 157f
                  ori          t3, s4, -358
                  add          zero, s10, a5
                  and          s8, t4, gp
                  beq          a4, a1, 174f
                  slt          s10, t2, s11
157:              xori         a0, s6, -504
                  auipc        ra, 335120
159:              xori         a6, s3, -863
                  beq          a5, s0, 173f
                  bgeu         t1, t0, 169f
                  lui          s11, 455188
                  ori          a0, a2, -1248
                  sltiu        s1, t4, -1980
                  sltu         tp, t3, a1
                  auipc        t5, 315225
                  srl          gp, s4, a7
                  slt          a5, t4, zero
169:              bgeu         t5, s0, 176f
                  bltu         a3, s4, 171f
171:              bltu         t5, t0, 190f
                  srli         s10, a1, 15
173:              auipc        t4, 530041
174:              srl          s4, s7, s11
                  srl          s11, s9, s10
176:              sub          s9, sp, s3
                  beq          t3, a2, 182f
                  srli         a4, a2, 25
                  andi         t3, a7, -1464
                  lui          t2, 415975
                  andi         ra, s5, -1940
182:              sub          t4, s3, t0
                  slt          s8, a5, t2
                  slti         s0, s9, -838
                  bltu         s2, t3, 194f
                  and          t3, s2, tp
                  add          a5, a1, a4
                  xor          t2, t5, t1
                  auipc        s7, 491374
190:              slli         t3, s5, 24
                  addi         s2, s5, 812
                  bgeu         s3, a3, 194f
                  slt          s7, s8, a3
194:              nop
                  sra          t0, a2, s2
                  addi         gp, s11, -1107
                  add          t2, s10, s0
                  bgeu         t3, t1, 209f
                  sltu         a0, ra, s8
                  bgeu         t4, t0, 216f
                  addi         gp, a7, -748
                  sll          s8, a2, t2
                  or           s2, a7, t0
                  auipc        s11, 636572
                  andi         s3, s5, -586
                  nop
                  slli         s4, sp, 15
                  sub          a2, s8, s3
209:              sll          a0, a1, t2
                  srl          s3, t5, ra
                  ori          s3, a6, -1043
                  srli         t0, a5, 3
                  addi         s3, s11, 1696
                  srai         s10, s10, 19
                  beq          t0, ra, 221f
216:              nop
                  bgeu         zero, s11, 237f
                  andi         a3, a2, 1562
                  srl          a6, s3, s9
                  bltu         a3, t5, 231f
221:              andi         s2, a0, 578
                  sra          s1, s3, s1
                  add          s3, a4, t3
                  nop
                  bge          s9, a0, 232f
                  andi         a0, t1, -1270
                  addi         ra, t1, 1851
                  sltiu        s2, s10, 1114
                  beq          t5, zero, 231f
                  addi         s2, gp, -1064
231:              srl          t1, s6, ra
232:              xori         s4, t3, 1191
                  blt          a1, a4, 252f
                  bge          s0, tp, 235f
235:              add          s0, a2, t4
                  add          s6, a7, s3
237:              xori         tp, a1, -255
                  sll          t3, a4, s10
                  auipc        t4, 753204
                  nop
                  blt          zero, sp, 252f
                  blt          t4, zero, 247f
                  add          a0, s3, s8
                  srai         zero, s0, 26
                  bne          s5, a3, 259f
                  bne          s5, a2, 257f
247:              bne          s7, a0, 266f
                  sltiu        a2, gp, 365
                  bge          s3, a5, 254f
                  add          t1, a7, a7
                  slli         s0, s0, 11
252:              nop
                  srl          zero, a7, a3
254:              lui          a2, 560060
                  srai         a2, sp, 15
                  bltu         s5, s4, 264f
257:              bltu         s11, a5, 271f
                  lui          sp, 797624
259:              and          tp, t5, s11
                  nop
                  sltiu        t1, tp, 160
                  andi         sp, a3, 993
                  xor          t4, a5, s8
264:              srli         t3, t3, 12
                  bltu         s3, s6, 277f
266:              auipc        t4, 313959
                  sll          t1, gp, s2
                  slli         a7, s0, 8
                  or           ra, s6, s2
                  nop
271:              sll          s1, zero, a3
                  srl          s2, gp, s1
                  andi         a5, ra, 1224
                  beq          t0, s8, 280f
                  and          a6, s5, s10
                  sra          a3, t5, a3
277:              sll          a4, t5, s3
                  slt          s10, t5, t0
                  slli         sp, s3, 31
280:              slli         t5, s10, 29
                  srli         a6, sp, 0
                  srai         s6, t1, 3
                  slli         ra, sp, 19
                  bgeu         s11, s9, 302f
                  ori          s3, t2, 1444
                  slt          a5, t1, a7
                  addi         a4, sp, 711
                  blt          t1, a1, 302f
                  or           s10, s2, s9
                  bltu         a5, a4, 293f
                  xori         a5, s11, 1241
                  beq          s5, a0, 298f
293:              srli         t2, s5, 15
                  slti         t5, s1, 698
                  add          a0, s7, a4
                  slti         t3, s0, 975
                  bgeu         a5, t3, 302f
298:              srl          s4, s9, t1
                  beq          ra, s0, 302f
                  and          sp, a7, ra
                  auipc        t2, 436229
302:              srai         s6, a6, 28
                  slli         s11, t4, 30
                  slti         s3, s1, 509
                  lw           ra, 4(s5)
                  sra          a6, a1, tp
                  addi         s5, s5, 48
                  xori         t2, s4, -1585
                  srl          s8, s8, s1
                  srli         t4, s5, 16
                  srai         t0, t2, 2
                  sll          a0, s6, s0
                  srli         gp, s11, 6
476:              addi x28, x1, 0
476:              jalr x28, x28, 0
sub_5:            lui          s1, 229382
                  srli         s0, s5, 25
                  blt          a2, s11, sub_5_stack_p
                  srli         t5, s11, 17
sub_5_stack_p:    addi         s5, s5, -64
                  xor          s10, t3, s4
                  and          s4, s1, t1
                  sltiu        s10, a3, -1080
                  nop
                  sll          s6, s0, a2
                  sw           ra, 4(s5)
                  xori         s3, gp, 529
                  or           a7, a1, t6
sub_5_0:          jal          ra, 5f
0:                jal          ra, 22f
1:                jal          ra, 4f
2:                jal          s2, 17f
3:                jal          ra, 16f
4:                jal          ra, 2b
5:                jal          t5, 15f
6:                jal          ra, 21f
7:                jal          ra, 8f
8:                jal          ra, 10f
9:                jal          t1, 6b
10:               jal          ra, 24f
11:               jal          tp, 23f
12:               jal          ra, 0b
13:               jal          ra, 14f
14:               jal          ra, 12b
15:               jal          ra, 9b
16:               jal          ra, 18f
17:               jal          s8, 11b
18:               jal          a0, 20f
19:               jal          ra, 7b
20:               jal          ra, 19b
21:               jal          ra, 13b
22:               jal          ra, 1b
23:               jal          a0, 3b
24:               srli         t5, s0, 18
                  xor          s9, t1, a0
                  and          a7, a1, s5
                  slt          a2, s9, t6
                  bge          s4, a6, 7f
                  srl          s7, t3, s0
                  xor          a6, s7, a3
                  sll          a2, t4, s1
7:                lui          a2, 869432
                  sltu         a3, s8, t5
                  bltu         gp, s10, 19f
                  srli         zero, t4, 11
                  slt          t0, s9, s3
                  beq          s11, s2, 13f
13:               srl          a0, a1, s2
                  bltu         a0, t1, 34f
                  sll          s11, s1, s3
                  xori         a5, a1, 1572
                  add          t4, s6, s2
                  slti         a5, t4, 76
19:               beq          s3, s2, 34f
                  slli         s2, zero, 27
                  auipc        a0, 247714
                  xor          s6, sp, s7
                  andi         s2, a4, -1678
                  bgeu         t5, s6, 26f
                  lui          sp, 954384
26:               xori         a3, a5, 768
                  slt          a5, a3, s3
                  slli         zero, t4, 23
                  slti         s9, a7, -1716
                  srai         s1, t2, 25
                  auipc        s2, 702028
                  slt          a3, a1, s11
                  xor          tp, t6, s9
34:               bge          s8, a2, 54f
                  beq          s9, gp, 44f
                  sltiu        t2, t3, -960
                  bne          s11, a3, 52f
                  blt          t2, t1, 54f
                  and          t5, s5, a7
                  sll          t5, s3, s11
                  slli         tp, a1, 21
                  blt          a4, a2, 51f
                  andi         ra, a1, 1675
44:               slli         s10, s0, 28
                  sll          t5, a6, s3
                  xori         s7, a3, 818
                  ori          s10, s6, 2
                  srai         sp, s8, 11
                  addi         a0, t5, -1616
                  andi         s7, s7, 920
51:               addi         a0, t6, 688
52:               auipc        gp, 240561
                  srli         a7, s6, 1
54:               xori         s8, t2, -1630
                  addi         s9, sp, -688
                  sltu         s0, a0, a2
                  slt          s8, s8, t1
                  ori          t2, t1, -1966
                  or           a5, a1, sp
                  srai         t5, s0, 20
                  slli         s7, a0, 5
                  beq          s3, a6, 74f
                  bne          tp, a7, 74f
                  srai         t2, tp, 15
                  sll          s6, s3, t6
                  bgeu         s0, s0, 70f
                  ori          ra, t5, -163
                  slt          s6, t0, s5
                  bge          gp, s2, 89f
70:               bgeu         s6, s2, 80f
                  sll          gp, s10, a7
                  xori         s1, s8, 1047
                  nop
74:               sll          a4, t4, a1
                  bgeu         s4, a0, 85f
                  sub          ra, s6, a0
                  bgeu         s1, s5, 78f
78:               srli         s7, s4, 18
                  blt          a4, s2, 82f
80:               lui          a7, 874680
                  sll          a4, t6, zero
82:               sra          s3, tp, a3
                  bgeu         a5, s8, 89f
                  bgeu         ra, ra, 90f
85:               slli         s4, s0, 8
                  blt          sp, s9, 90f
                  bne          s5, s5, 90f
                  bne          a3, t5, 90f
89:               and          a0, s1, gp
90:               nop
                  addi         a0, t4, -978
                  lw           ra, 4(s5)
                  srli         tp, s7, 4
                  addi         s5, s5, 64
                  xori         a3, s4, -1927
                  sub          t5, t4, t1
                  xori         sp, ra, -1720
137:              addi x28, x1, 0
137:              jalr x28, x28, 0
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
.align           2
mtvec_handler:    
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x31, x21, zero
                  csrr x6, 0x300 # MSTATUS
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 31
                  bne x6, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x6, 0x341 # MEPC
                  csrr x6, 0x342 # MCAUSE
                  li x26, 0x3 # BREAKPOINT
                  beq x6, x26, ebreak_handler
                  li x26, 0x8 # ECALL_UMODE
                  beq x6, x26, ecall_handler
                  li x26, 0x9 # ECALL_SMODE
                  beq x6, x26, ecall_handler
                  li x26, 0xb # ECALL_MMODE
                  beq x6, x26, ecall_handler
                  li x26, 0x1
                  beq x6, x26, instr_fault_handler
                  li x26, 0x5
                  beq x6, x26, load_fault_handler
                  li x26, 0x7
                  beq x6, x26, store_fault_handler
                  li x26, 0xc
                  beq x6, x26, pt_fault_handler
                  li x26, 0xd
                  beq x6, x26, pt_fault_handler
                  li x26, 0xf
                  beq x6, x26, pt_fault_handler
                  li x26, 0x2 # ILLEGAL_INSTRUCTION
                  beq x6, x26, illegal_instr_handler
                  csrr x26, 0x343 # MTVAL
                  1: la x11, test_done
                  jalr x1, x11, 0

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
                  la x11, write_tohost
                  jalr x0, x11, 0

instr_fault_handler:
                  add x21, x31, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

load_fault_handler:
                  add x21, x31, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

store_fault_handler:
                  add x21, x31, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

ebreak_handler:   
                  csrr  x6, 0x341
                  addi  x6, x6, 4
                  csrw  0x341, x6
                  add x21, x31, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

illegal_instr_handler:
                  csrr  x6, 0x341
                  addi  x6, x6, 4
                  csrw  0x341, x6
                  add x21, x31, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x6, 0x300 # MSTATUS;
                  csrr  x6, 0x304 # MIE;
                  csrr  x6, 0x344 # MIP;
                  csrrc x6, 0x344, x6 # MIP;
                  add x21, x31, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
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
