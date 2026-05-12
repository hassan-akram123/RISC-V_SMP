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
                  li x25, 0x40000100
                  csrw 0x301, x25
kernel_sp:        
                  la x9, kernel_stack_end

trap_vec_init:    
                  la x25, mtvec_handler
                  ori x25, x25, 1
                  csrw 0x305, x25 # MTVEC

mepc_setup:       
                  la x25, init
                  csrw 0x341, x25

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x25, 0x1800
                  csrw 0x300, x25 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x197bdd99
                  li x2, 0x0
                  li x3, 0xf71fcd84
                  li x4, 0x0
                  li x6, 0xf860af59
                  li x7, 0x80000000
                  li x8, 0x0
                  li x10, 0x80000000
                  li x11, 0x7
                  li x12, 0x6
                  li x13, 0xa367640e
                  li x14, 0xf5eb8bd2
                  li x15, 0x4
                  li x16, 0xf60dc064
                  li x17, 0x5
                  li x18, 0x5b50d7c9
                  li x19, 0x80000000
                  li x20, 0xf
                  li x21, 0x8b719d31
                  li x22, 0x80000000
                  li x23, 0x50e29c14
                  li x24, 0x8742c1ea
                  li x25, 0x0
                  li x26, 0xc
                  li x27, 0xf33b7227
                  li x28, 0x51e20970
                  li x29, 0xa
                  li x30, 0xc
                  li x31, 0x8
                  la x5, user_stack_end
main:             jal          ra, 2f
0:                jal          ra, 9f
1:                jal          ra, 6f
2:                jal          t1, 0b
3:                jal          ra, 8f
4:                jal          t1, 11f
5:                jal          ra, 4b
6:                jal          t1, 10f
7:                jal          t1, 12f
8:                jal          ra, 1b
9:                jal          s4, 5b
10:               jal          t1, 7b
11:               jal          ra, 3b
12:               jal          t1, 13f
13:               xor          a1, a2, s9
main_2:           jal          ra, 10f
0:                jal          ra, 2f
1:                jal          s6, 6f
2:                jal          ra, 3f
3:                jal          ra, 11f
4:                jal          ra, 5f
5:                jal          sp, 8f
6:                jal          gp, 12f
7:                jal          gp, 4b
8:                jal          sp, 0b
9:                jal          ra, 13f
10:               jal          t3, 1b
11:               jal          ra, 9b
12:               jal          ra, 7b
13:               add          gp, t3, s1
main_3:           jal          ra, 15f
0:                jal          t1, 10f
1:                jal          t1, 22f
2:                jal          ra, 19f
3:                jal          ra, 21f
4:                jal          s5, 16f
5:                jal          t1, 12f
6:                jal          ra, 23f
7:                jal          ra, 6b
8:                jal          a0, 1b
9:                jal          ra, 5b
10:               jal          t1, 20f
11:               jal          ra, 24f
12:               jal          ra, 18f
13:               jal          ra, 3b
14:               jal          a0, 2b
15:               jal          ra, 9b
16:               jal          ra, 17f
17:               jal          ra, 26f
18:               jal          ra, 0b
19:               jal          t1, 8b
20:               jal          s5, 25f
21:               jal          t1, 14b
22:               jal          ra, 7b
23:               jal          t1, 11b
24:               jal          ra, 4b
25:               jal          t1, 13b
26:               andi         s7, ra, 1399
                  blt          a1, s2, 6f
                  andi         t4, a1, -430
                  andi         gp, t3, -1400
                  and          s2, s7, s11
                  xor          s7, s6, tp
                  bne          s2, s2, 25f
6:                slli         t4, s1, 14
                  bgeu         s10, a1, 23f
                  andi         s3, a6, 492
                  nop
                  lui          s6, 349296
                  bgeu         zero, s10, 26f
                  ori          gp, t0, -1271
                  slt          a0, s3, s0
                  nop
                  srai         gp, a3, 26
                  srai         s11, a4, 7
                  sltiu        s2, a4, 992
                  auipc        a6, 435360
                  bltu         a7, s8, 39f
                  srl          t5, s7, t2
                  bne          s4, a5, 32f
                  or           a3, ra, a1
23:               bltu         a4, t5, 32f
                  sra          a1, s0, t6
25:               nop
26:               and          s4, t5, a7
                  sll          t3, a3, ra
                  auipc        s4, 71427
                  sub          gp, a5, gp
                  bne          s11, a2, 50f
                  blt          a0, s5, 45f
32:               sltiu        s8, s9, -1986
                  addi         s2, a2, 1991
                  bgeu         t1, t2, 47f
                  slli         t3, zero, 18
                  addi         t1, a3, 1602
                  slti         a5, t3, 1779
                  addi         t2, t6, -444
39:               blt          s6, a0, 58f
                  srl          s11, s3, a0
                  nop
                  ori          a2, a7, 1537
                  addi         s2, a0, -1279
                  bltu         t4, a0, 54f
45:               ori          s9, s2, 774
                  and          a1, s10, s1
47:               auipc        t6, 322751
                  beq          t3, tp, 56f
                  sub          s11, s3, t4
50:               srl          s9, t4, s7
                  xori         a2, t6, 1466
                  xori         sp, t6, -1480
                  ori          a6, t4, -494
54:               bltu         t0, t3, 68f
                  xori         a0, a1, 1026
56:               sltiu        a2, t0, -1452
                  add          s9, s5, t2
58:               and          t2, tp, s8
                  bltu         gp, s3, 67f
                  srai         s7, sp, 9
                  addi         ra, ra, -1189
                  andi         t4, t4, 1400
                  bne          t4, zero, 68f
                  slt          a1, s4, t4
                  lui          s9, 339190
                  bltu         a2, a3, 71f
67:               slti         t5, a1, 1373
68:               add          t4, gp, s6
                  bgeu         a5, s11, 89f
                  ori          sp, ra, 1626
71:               add          gp, t1, a5
                  bltu         s3, s7, 91f
                  andi         s9, s11, 773
                  bltu         ra, t5, 80f
                  slti         a3, s7, 1805
                  slt          tp, a1, a1
                  auipc        ra, 111963
                  or           s6, s6, t2
                  blt          t0, t0, 91f
80:               ori          s2, s6, 1857
                  srli         tp, s2, 5
                  andi         zero, t1, -1209
                  or           a4, a6, s9
                  sltiu        s8, a3, 1326
                  nop
                  slti         a5, s3, 1031
                  or           a2, a3, s8
                  xor          s3, a7, t3
89:               xor          s6, s5, a5
                  sltu         a2, s4, a5
91:               blt          a5, a0, 108f
                  srai         a5, s9, 18
                  beq          zero, ra, 110f
                  sltu         a3, a6, a2
                  slti         s5, s9, 275
                  bge          s4, a0, 110f
                  sltu         t4, s7, a4
                  or           t3, a4, s8
                  or           a5, s6, s7
                  bge          ra, t4, 120f
                  blt          zero, sp, 118f
                  ori          t3, s5, -644
                  xori         t4, a7, -1482
                  addi         s8, zero, 533
                  add          a2, s0, s11
                  bgeu         s7, s6, 124f
                  lui          t4, 149880
108:              srai         ra, a2, 14
                  andi         a6, a3, 1945
110:              addi         gp, a5, 1087
                  xori         t3, a0, -759
                  sll          s11, a2, a3
                  bge          a3, s8, 122f
                  andi         t6, t4, -1338
                  xori         zero, ra, -1133
                  sltu         gp, a7, s2
                  sltiu        s9, t1, -349
118:              srl          s6, a7, s8
                  srl          a6, s7, t1
120:              beq          a6, s9, 134f
                  bltu         t5, s8, 133f
122:              sll          s11, s4, s3
                  bge          a0, s0, 132f
124:              addi         t4, t5, -1527
                  xori         s6, s5, 1631
                  srl          t5, s0, s10
                  add          a1, tp, a5
                  xor          s6, t6, a6
                  srli         a2, s3, 12
                  bne          a6, s3, 150f
                  beq          a3, t1, 139f
132:              lui          s0, 449076
133:              bgeu         a5, a1, 153f
134:              slli         s7, s4, 0
                  add          t3, a2, a6
                  nop
                  sub          a6, t1, s2
                  sra          s0, s3, t2
139:              bgeu         s9, a4, 153f
                  sra          s5, s4, t5
                  slti         s6, s8, -1275
                  bne          s8, t1, 159f
                  la           tp, sub_1
                  sltu         s5, t2, s11
                  slt          s3, a4, a5
                  addi         tp, tp, -602
                  sra          sp, a5, s2
                  or           t5, t3, a0
                  sll          ra, s7, a7
                  xor          a3, gp, t1
                  lui          s9, 182860
                  xor          gp, s11, s4
                  xor          zero, gp, a6
                  andi         t5, a4, 956
main_j2:          jalr         ra, tp, 602 #jump main -> sub_1
                  slli         t3, t4, 16
                  sltiu        s10, a4, 88
                  sltu         s5, zero, zero
                  xor          s8, t3, s5
                  sltiu        tp, tp, -1390
                  addi         a3, s8, -76
                  bne          a5, a0, 155f
150:              auipc        a2, 568616
                  sltu         sp, t0, s4
                  lui          t3, 690929
153:              sub          ra, a4, s6
                  srli         t3, a1, 28
155:              andi         a5, t3, 1327
                  bgeu         s7, s11, 166f
                  slti         a0, t5, 1759
                  srl          a1, s5, t0
159:              sltiu        s8, s1, -1553
                  addi         s10, s4, -1526
                  sltu         s8, a3, s7
                  bltu         s8, tp, 176f
                  slt          zero, t3, t1
main_0:           jal          ra, 5f
0:                jal          s11, 3f
1:                jal          a3, 4f
2:                jal          ra, 14f
3:                jal          ra, 13f
4:                jal          a0, 6f
5:                jal          ra, 0b
6:                jal          tp, 2b
7:                jal          t1, 15f
8:                jal          t1, 7b
9:                jal          t1, 10f
10:               jal          sp, 12f
11:               jal          ra, 1b
12:               jal          t1, 11b
13:               jal          t1, 9b
14:               jal          tp, 8b
15:               jal          t1, 16f
16:               slt          a3, t0, s5
                  ori          a4, ra, -1657
                  sll          a6, s8, t5
166:              srli         zero, sp, 28
                  blt          s4, t5, 179f
                  xori         a2, a1, 1714
                  srai         a2, s9, 23
                  or           t1, s10, ra
                  bltu         s0, t4, 190f
                  beq          a6, sp, 186f
                  bltu         a4, s1, 190f
                  and          ra, t5, s4
                  bltu         zero, s9, 195f
176:              sltu         a5, s7, s0
                  and          s10, t1, zero
                  and          t5, sp, t5
179:              and          s3, t3, s6
                  bgeu         sp, s0, 192f
                  bltu         s7, t3, 196f
                  beq          s6, a6, 188f
                  lui          t2, 767118
                  or           s5, t4, t2
                  sltiu        t2, a0, -521
186:              sll          s10, s4, a7
                  ori          tp, sp, -1609
188:              slti         a5, s4, 288
                  ori          s11, s6, 65
190:              lui          a2, 910655
                  nop
192:              sltiu        s2, a3, -1850
                  nop
                  slti         a0, t4, 728
195:              bltu         s2, a2, 214f
196:              slti         s5, a1, 1483
                  sra          t5, sp, a6
                  auipc        t4, 599638
                  addi         t2, t3, -1009
                  addi         s5, a4, -15
                  xori         a5, t2, -1896
                  bge          t0, a0, 222f
                  slti         s9, a4, -2048
                  addi         a4, s7, 811
                  sra          gp, a6, s1
                  add          a6, s6, s4
                  lui          s6, 514600
                  sltu         a6, s11, gp
                  srl          sp, a5, sp
                  or           sp, a5, t0
                  nop
                  srl          t5, s2, a2
main_1:           jal          ra, 6f
0:                jal          ra, 7f
1:                jal          s10, 9f
2:                jal          gp, 14f
3:                jal          t1, 12f
4:                jal          a6, 15f
5:                jal          sp, 16f
6:                jal          s6, 8f
7:                jal          tp, 20f
8:                jal          t1, 19f
9:                jal          ra, 0b
10:               jal          t1, 18f
11:               jal          ra, 17f
12:               jal          ra, 1b
13:               jal          ra, 2b
14:               jal          a5, 11b
15:               jal          t1, 3b
16:               jal          a1, 4b
17:               jal          t3, 10b
18:               jal          t2, 5b
19:               jal          t1, 13b
20:               sra          t2, s0, t4
                  beq          t5, s4, 231f
214:              nop
                  slti         s2, a3, 414
                  sra          s5, s10, t0
                  srai         t1, t4, 4
                  ori          s3, a7, 232
                  srl          s7, s3, t6
                  and          a4, s5, s3
                  sltiu        s8, a2, 84
222:              slti         tp, t2, -258
                  nop
                  bge          s9, a0, 235f
                  sll          s9, t0, ra
                  srli         t5, t1, 12
                  slli         a1, s5, 24
                  sra          s9, s3, s11
                  sltiu        gp, t3, 902
                  srl          t4, s6, s9
231:              sltu         s9, a2, s8
                  bltu         s3, a3, 252f
                  sltiu        s4, s2, -1207
                  lui          s3, 40906
235:              slli         a5, t4, 3
                  andi         s4, t3, -1832
                  srl          a5, tp, zero
                  addi         s5, a0, 319
                  sra          s11, s3, t0
                  auipc        a5, 818061
                  bgeu         t0, sp, 258f
                  blt          a2, gp, 255f
                  and          t5, gp, t5
                  slli         a0, sp, 3
                  slti         zero, a3, 196
                  andi         a0, t3, -1665
                  bgeu         s2, s4, 255f
                  sltu         t6, s2, a0
                  slt          s9, t0, sp
                  add          t5, ra, gp
                  slti         s9, s10, -1120
252:              bge          t1, zero, 257f
                  slti         s9, gp, 714
                  sltiu        t6, t4, -194
255:              slt          s7, sp, t3
                  andi         t2, s5, 1073
257:              beq          a0, s4, 262f
                  andi         a0, a1, 506
                  ori          t6, a4, -1831
                  la           tp, sub_1
                  srli         s7, s10, 30
                  srl          zero, a0, s9
                  addi         tp, tp, -5
                  sltiu        sp, s0, 1634
                  sub          s5, tp, s5
                  auipc        t3, 651713
                  slti         t4, s1, 848
                  blt          s9, tp, main_j1 #branch to jump instr
                  sltu         t5, s5, gp
                  sub          t4, s2, a6
main_j1:          jalr         ra, tp, 5 #jump main -> sub_1
258:              slti         a2, gp, -170
                  andi         s6, s0, -1647
                  add          a3, a0, t1
                  or           a5, s3, s11
262:              blt          a5, tp, 266f
                  xori         s11, a7, 176
                  andi         a6, a3, 1308
                  or           t2, s2, t0
266:              nop
                  la x17, test_done
                  jalr x0, x17, 0
test_done:        
                  li gp, 1
                  ecall
sub_5:            sltiu        t3, zero, -642
                  addi         t0, t0, -52
                  auipc        s11, 1024505
                  sw           ra, 4(t0)
                  sub          s8, t2, a7
                  sll          a3, t5, t1
                  or           s7, s11, s5
                  lui          t6, 553932
                  lui          a2, 441784
sub_5_18:         jal          ra, 15f
0:                jal          ra, 12f
1:                jal          ra, 0b
2:                jal          gp, 13f
3:                jal          ra, 11f
4:                jal          ra, 19f
5:                jal          t1, 2b
6:                jal          ra, 14f
7:                jal          ra, 3b
8:                jal          s0, 17f
9:                jal          t1, 4b
10:               jal          ra, 7b
11:               jal          t1, 20f
12:               jal          ra, 18f
13:               jal          t1, 6b
14:               jal          ra, 16f
15:               jal          ra, 5b
16:               jal          ra, 8b
17:               jal          ra, 1b
18:               jal          t1, 9b
19:               jal          a4, 10b
20:               sra          t5, s1, s0
sub_5_10:         jal          ra, 7f
0:                jal          ra, 22f
1:                jal          tp, 17f
2:                jal          ra, 15f
3:                jal          ra, 8f
4:                jal          s10, 1b
5:                jal          ra, 11f
6:                jal          ra, 13f
7:                jal          ra, 10f
8:                jal          s5, 5b
9:                jal          t1, 18f
10:               jal          ra, 0b
11:               jal          ra, 23f
12:               jal          t1, 9b
13:               jal          ra, 4b
14:               jal          ra, 6b
15:               jal          ra, 20f
16:               jal          s6, 2b
17:               jal          tp, 16b
18:               jal          ra, 19f
19:               jal          ra, 14b
20:               jal          ra, 3b
21:               jal          t1, 12b
22:               jal          t1, 21b
23:               andi         a4, t3, -1325
sub_5_2:          jal          ra, 2f
0:                jal          a4, 11f
1:                jal          s9, 16f
2:                jal          ra, 15f
3:                jal          ra, 6f
4:                jal          ra, 9f
5:                jal          ra, 0b
6:                jal          ra, 4b
7:                jal          ra, 14f
8:                jal          ra, 1b
9:                jal          t1, 17f
10:               jal          ra, 12f
11:               jal          ra, 19f
12:               jal          ra, 5b
13:               jal          s9, 8b
14:               jal          ra, 13b
15:               jal          ra, 18f
16:               jal          ra, 3b
17:               jal          t2, 10b
18:               jal          tp, 7b
19:               sltiu        s10, t1, -419
sub_5_13:         jal          ra, 4f
0:                jal          ra, 15f
1:                jal          t1, 8f
2:                jal          ra, 1b
3:                jal          t1, 19f
4:                jal          t1, 3b
5:                jal          ra, 10f
6:                jal          ra, 5b
7:                jal          t1, 9f
8:                jal          gp, 18f
9:                jal          ra, 22f
10:               jal          ra, 13f
11:               jal          t1, 21f
12:               jal          t1, 2b
13:               jal          ra, 12b
14:               jal          t1, 11b
15:               jal          ra, 17f
16:               jal          ra, 14b
17:               jal          ra, 6b
18:               jal          ra, 7b
19:               jal          ra, 20f
20:               jal          ra, 16b
21:               jal          ra, 0b
22:               addi         gp, s6, -114
sub_5_1:          jal          ra, 21f
0:                jal          ra, 6f
1:                jal          ra, 14f
2:                jal          ra, 22f
3:                jal          t1, 15f
4:                jal          ra, 13f
5:                jal          tp, 4b
6:                jal          s9, 19f
7:                jal          t1, 2b
8:                jal          t1, 20f
9:                jal          ra, 3b
10:               jal          t1, 7b
11:               jal          ra, 18f
12:               jal          t1, 11b
13:               jal          ra, 8b
14:               jal          t1, 12b
15:               jal          ra, 10b
16:               jal          ra, 17f
17:               jal          s9, 9b
18:               jal          s0, 5b
19:               jal          t1, 1b
20:               jal          ra, 16b
21:               jal          ra, 0b
22:               nop
sub_5_7:          jal          ra, 1f
0:                jal          t1, 15f
1:                jal          sp, 18f
2:                jal          ra, 0b
3:                jal          s7, 17f
4:                jal          ra, 19f
5:                jal          tp, 4b
6:                jal          ra, 20f
7:                jal          ra, 3b
8:                jal          a1, 16f
9:                jal          s3, 14f
10:               jal          ra, 8b
11:               jal          ra, 13f
12:               jal          ra, 11b
13:               jal          ra, 7b
14:               jal          t3, 2b
15:               jal          ra, 12b
16:               jal          tp, 6b
17:               jal          t1, 10b
18:               jal          t1, 5b
19:               jal          ra, 9b
20:               addi         s11, t2, 1210
sub_5_20:         jal          ra, 11f
0:                jal          t1, 9f
1:                jal          ra, 12f
2:                jal          ra, 13f
3:                jal          ra, 10f
4:                jal          ra, 1b
5:                jal          ra, 3b
6:                jal          t6, 7f
7:                jal          ra, 15f
8:                jal          ra, 4b
9:                jal          t2, 6b
10:               jal          ra, 17f
11:               jal          ra, 16f
12:               jal          a2, 2b
13:               jal          ra, 0b
14:               jal          t1, 5b
15:               jal          s3, 14b
16:               jal          t1, 8b
17:               jal          ra, 18f
18:               addi         s5, t5, -1747
sub_5_3:          jal          ra, 13f
0:                jal          t1, 20f
1:                jal          t1, 7f
2:                jal          ra, 4f
3:                jal          ra, 5f
4:                jal          ra, 23f
5:                jal          ra, 10f
6:                jal          gp, 16f
7:                jal          ra, 22f
8:                jal          ra, 0b
9:                jal          a4, 14f
10:               jal          gp, 17f
11:               jal          ra, 19f
12:               jal          t1, 2b
13:               jal          ra, 1b
14:               jal          s5, 15f
15:               jal          ra, 18f
16:               jal          t4, 21f
17:               jal          t1, 9b
18:               jal          gp, 12b
19:               jal          sp, 6b
20:               jal          t1, 11b
21:               jal          s3, 3b
22:               jal          ra, 8b
23:               nop
sub_5_5:          jal          ra, 2f
0:                jal          s9, 6f
1:                jal          ra, 12f
2:                jal          s6, 17f
3:                jal          t2, 9f
4:                jal          a2, 18f
5:                jal          ra, 15f
6:                jal          a6, 3b
7:                jal          ra, 1b
8:                jal          ra, 10f
9:                jal          ra, 11f
10:               jal          ra, 14f
11:               jal          ra, 7b
12:               jal          ra, 5b
13:               jal          ra, 8b
14:               jal          ra, 16f
15:               jal          s5, 4b
16:               jal          a6, 0b
17:               jal          ra, 13b
18:               sltu         t4, t6, s10
sub_5_6:          jal          ra, 8f
0:                jal          s0, 11f
1:                jal          ra, 9f
2:                jal          t1, 7f
3:                jal          tp, 13f
4:                jal          ra, 22f
5:                jal          ra, 10f
6:                jal          t1, 18f
7:                jal          t1, 6b
8:                jal          gp, 21f
9:                jal          t1, 23f
10:               jal          ra, 12f
11:               jal          a6, 3b
12:               jal          t1, 1b
13:               jal          a5, 15f
14:               jal          t1, 0b
15:               jal          t1, 20f
16:               jal          ra, 5b
17:               jal          t1, 19f
18:               jal          ra, 4b
19:               jal          ra, 2b
20:               jal          tp, 16b
21:               jal          s4, 17b
22:               jal          a0, 14b
23:               sltiu        a5, s8, -1838
sub_5_12:         jal          ra, 22f
0:                jal          t1, 7f
1:                jal          ra, 13f
2:                jal          t1, 1b
3:                jal          a0, 10f
4:                jal          s8, 5f
5:                jal          ra, 6f
6:                jal          t1, 11f
7:                jal          ra, 17f
8:                jal          ra, 18f
9:                jal          t1, 23f
10:               jal          ra, 20f
11:               jal          ra, 15f
12:               jal          s7, 8b
13:               jal          ra, 3b
14:               jal          ra, 4b
15:               jal          t1, 16f
16:               jal          ra, 2b
17:               jal          ra, 21f
18:               jal          s6, 0b
19:               jal          ra, 9b
20:               jal          ra, 12b
21:               jal          t1, 19b
22:               jal          tp, 14b
23:               sra          a2, sp, a1
sub_5_21:         jal          ra, 1f
0:                jal          ra, 17f
1:                jal          a3, 22f
2:                jal          sp, 0b
3:                jal          ra, 5f
4:                jal          a0, 8f
5:                jal          sp, 4b
6:                jal          a5, 20f
7:                jal          a0, 18f
8:                jal          ra, 2b
9:                jal          ra, 23f
10:               jal          ra, 9b
11:               jal          ra, 21f
12:               jal          t1, 24f
13:               jal          tp, 14f
14:               jal          ra, 10b
15:               jal          ra, 3b
16:               jal          ra, 25f
17:               jal          ra, 26f
18:               jal          ra, 16b
19:               jal          ra, 13b
20:               jal          gp, 15b
21:               jal          ra, 7b
22:               jal          s5, 12b
23:               jal          ra, 6b
24:               jal          s2, 11b
25:               jal          t2, 19b
26:               srai         t5, s8, 23
sub_5_8:          jal          ra, 0f
0:                jal          ra, 10f
1:                jal          a6, 11f
2:                jal          t1, 4f
3:                jal          t1, 8f
4:                jal          t5, 7f
5:                jal          t1, 9f
6:                jal          a3, 13f
7:                jal          ra, 1b
8:                jal          t1, 2b
9:                jal          t5, 14f
10:               jal          ra, 3b
11:               jal          t3, 12f
12:               jal          s4, 6b
13:               jal          ra, 5b
14:               sll          t6, a6, gp
sub_5_4:          jal          ra, 11f
0:                jal          ra, 12f
1:                jal          ra, 2f
2:                jal          t1, 18f
3:                jal          ra, 6f
4:                jal          t1, 19f
5:                jal          ra, 16f
6:                jal          t4, 10f
7:                jal          t1, 1b
8:                jal          ra, 13f
9:                jal          ra, 20f
10:               jal          ra, 5b
11:               jal          ra, 8b
12:               jal          ra, 15f
13:               jal          t1, 14f
14:               jal          ra, 3b
15:               jal          s2, 9b
16:               jal          s11, 0b
17:               jal          ra, 7b
18:               jal          ra, 21f
19:               jal          ra, 17b
20:               jal          t1, 4b
21:               srl          t6, a4, s0
sub_5_16:         jal          ra, 21f
0:                jal          ra, 22f
1:                jal          ra, 7f
2:                jal          t1, 15f
3:                jal          s0, 16f
4:                jal          ra, 13f
5:                jal          ra, 18f
6:                jal          t1, 19f
7:                jal          ra, 9f
8:                jal          a2, 1b
9:                jal          ra, 17f
10:               jal          ra, 11f
11:               jal          ra, 2b
12:               jal          ra, 10b
13:               jal          s11, 12b
14:               jal          a6, 5b
15:               jal          ra, 20f
16:               jal          t1, 6b
17:               jal          ra, 3b
18:               jal          sp, 8b
19:               jal          a3, 23f
20:               jal          ra, 14b
21:               jal          s8, 0b
22:               jal          ra, 4b
23:               nop
sub_5_15:         jal          ra, 17f
0:                jal          ra, 11f
1:                jal          t1, 9f
2:                jal          ra, 12f
3:                jal          ra, 4f
4:                jal          ra, 16f
5:                jal          ra, 15f
6:                jal          ra, 10f
7:                jal          ra, 13f
8:                jal          t1, 1b
9:                jal          ra, 6b
10:               jal          ra, 0b
11:               jal          ra, 5b
12:               jal          sp, 14f
13:               jal          ra, 2b
14:               jal          sp, 18f
15:               jal          ra, 3b
16:               jal          t1, 7b
17:               jal          t1, 8b
18:               and          sp, a0, s8
sub_5_0:          jal          ra, 5f
0:                jal          t6, 3f
1:                jal          t1, 11f
2:                jal          s2, 25f
3:                jal          ra, 21f
4:                jal          t1, 2b
5:                jal          t1, 6f
6:                jal          a0, 24f
7:                jal          ra, 4b
8:                jal          ra, 19f
9:                jal          ra, 15f
10:               jal          gp, 8b
11:               jal          ra, 18f
12:               jal          a5, 23f
13:               jal          gp, 0b
14:               jal          ra, 22f
15:               jal          a5, 16f
16:               jal          ra, 10b
17:               jal          t1, 12b
18:               jal          t1, 13b
19:               jal          t1, 17b
20:               jal          ra, 9b
21:               jal          ra, 14b
22:               jal          sp, 20b
23:               jal          ra, 7b
24:               jal          gp, 1b
25:               slti         s5, a0, -72
sub_5_14:         jal          ra, 6f
0:                jal          t1, 16f
1:                jal          s10, 4f
2:                jal          ra, 7f
3:                jal          t1, 0b
4:                jal          ra, 9f
5:                jal          ra, 13f
6:                jal          ra, 14f
7:                jal          t1, 8f
8:                jal          ra, 1b
9:                jal          t5, 15f
10:               jal          gp, 12f
11:               jal          t1, 2b
12:               jal          ra, 3b
13:               jal          t1, 11b
14:               jal          ra, 5b
15:               jal          t1, 10b
16:               sra          a5, zero, s4
sub_5_22:         jal          ra, 14f
0:                jal          ra, 18f
1:                jal          ra, 12f
2:                jal          t5, 13f
3:                jal          sp, 21f
4:                jal          ra, 17f
5:                jal          ra, 7f
6:                jal          ra, 25f
7:                jal          s2, 15f
8:                jal          t4, 23f
9:                jal          t1, 19f
10:               jal          ra, 20f
11:               jal          ra, 0b
12:               jal          ra, 10b
13:               jal          gp, 24f
14:               jal          s3, 11b
15:               jal          ra, 1b
16:               jal          t1, 4b
17:               jal          s11, 2b
18:               jal          ra, 22f
19:               jal          ra, 6b
20:               jal          t1, 9b
21:               jal          gp, 8b
22:               jal          t1, 3b
23:               jal          t1, 16b
24:               jal          ra, 5b
25:               auipc        t6, 118916
sub_5_11:         jal          ra, 11f
0:                jal          ra, 2f
1:                jal          gp, 9f
2:                jal          t1, 13f
3:                jal          ra, 6f
4:                jal          s7, 5f
5:                jal          t1, 7f
6:                jal          ra, 8f
7:                jal          ra, 3b
8:                jal          ra, 1b
9:                jal          ra, 0b
10:               jal          ra, 12f
11:               jal          ra, 10b
12:               jal          ra, 4b
13:               slti         t5, t6, -353
sub_5_9:          jal          ra, 0f
0:                jal          gp, 5f
1:                jal          sp, 10f
2:                jal          ra, 18f
3:                jal          ra, 19f
4:                jal          ra, 20f
5:                jal          s6, 16f
6:                jal          ra, 2b
7:                jal          ra, 17f
8:                jal          ra, 23f
9:                jal          a0, 22f
10:               jal          t1, 14f
11:               jal          t1, 3b
12:               jal          t1, 13f
13:               jal          ra, 11b
14:               jal          ra, 4b
15:               jal          ra, 24f
16:               jal          a1, 12b
17:               jal          ra, 9b
18:               jal          s3, 21f
19:               jal          a1, 1b
20:               jal          a6, 7b
21:               jal          ra, 8b
22:               jal          s8, 6b
23:               jal          t1, 15b
24:               ori          s11, t1, 942
                  sll          s5, t2, a4
                  xor          a1, s11, a3
                  ori          s7, s4, -413
                  andi         s8, s10, 120
                  slt          s0, a1, t3
                  xori         t6, a7, 619
                  or           s0, s4, s3
                  bne          a6, t5, 11f
                  slti         a4, ra, -1240
                  sub          a4, s7, a2
                  srl          s8, s2, s9
11:               lui          a4, 942269
                  and          t2, t4, t5
                  slli         a4, a5, 7
                  bge          t2, s4, 20f
                  sltu         s3, a4, s3
                  addi         s2, a3, 41
                  andi         s7, gp, -1529
                  addi         tp, tp, -172
                  beq          s8, s4, 23f
20:               addi         a1, s3, 369
                  sltu         ra, t6, gp
                  sltu         s7, s5, s4
23:               addi         a1, t2, 893
                  blt          s4, a6, 42f
                  srl          s10, s11, a1
                  slt          a4, a3, a5
                  sub          a0, s4, s6
                  lui          tp, 42149
                  bgeu         t1, t6, 44f
                  beq          gp, a4, 46f
                  slt          a5, t1, s0
                  blt          a4, a4, 44f
                  lui          s2, 991692
                  sra          a1, s5, a1
                  bltu         t5, t2, 39f
                  ori          t2, gp, 1956
                  srli         s5, s9, 12
                  bge          a0, s7, 41f
39:               nop
                  bgeu         t6, t3, 50f
41:               ori          tp, s0, 886
42:               bgeu         ra, t1, 53f
                  xor          a6, a0, a1
44:               and          a2, t3, s11
                  auipc        t5, 246008
46:               bne          a5, t2, 60f
                  sll          gp, s7, a7
                  lui          s8, 535714
                  sub          s0, t5, s1
50:               addi         t5, gp, 438
                  bge          t1, ra, 64f
                  srl          s5, tp, s5
53:               andi         s4, a6, 840
                  lui          s8, 422478
                  srai         tp, t1, 20
                  andi         t6, t5, 995
                  sll          a6, a1, sp
                  slt          s2, a6, s1
                  bne          tp, sp, 79f
60:               and          t2, gp, s10
                  slli         s3, s8, 12
                  nop
                  auipc        s10, 174805
64:               ori          tp, a1, 191
                  bltu         a7, s5, 69f
                  sub          t4, a2, s6
                  bge          t1, t5, 76f
                  sltiu        s6, zero, -1604
69:               sltiu        a4, ra, -913
                  srli         s10, t5, 21
                  xor          s2, a4, s10
                  sltu         s6, t5, s10
                  auipc        t5, 402556
                  bne          t2, s5, 76f
                  bltu         t0, s9, 80f
76:               auipc        sp, 401683
                  ori          t3, s1, -1109
                  bge          t3, a5, 86f
79:               sltu         s11, s1, a7
80:               beq          tp, s2, 94f
                  sltu         s8, s2, t4
                  beq          s3, zero, 85f
                  bge          a6, t2, 96f
                  andi         s5, a6, 327
85:               bltu         t3, a2, 97f
86:               lui          t5, 461815
                  sltu         ra, t5, a4
                  blt          t5, t3, 107f
                  bne          t6, s5, 105f
                  blt          s1, a3, 108f
                  blt          a4, t5, 98f
                  slli         a5, s0, 30
                  and          s6, a1, s6
94:               auipc        t1, 37683
                  lui          t1, 425558
96:               add          t6, s3, ra
97:               or           s3, s2, t6
98:               bge          t4, a7, 115f
                  bgeu         t1, zero, 104f
                  bge          t6, t6, 115f
                  add          a1, t6, a4
                  lui          s10, 593518
                  srai         s9, t5, 25
104:              sltu         s5, t0, s9
105:              blt          a1, a1, 119f
                  bgeu         a0, s3, 110f
107:              andi         t4, sp, -743
108:              xori         s2, t3, -1705
                  auipc        s4, 646424
110:              add          a5, t0, a7
                  auipc        s7, 909188
                  blt          a3, t6, 119f
                  sll          t6, zero, t5
                  srai         s5, t1, 27
115:              xor          s8, t3, t1
                  bge          a4, t5, 136f
                  srai         a0, s7, 0
                  slli         s5, s3, 9
119:              xori         s0, t3, 252
                  ori          s4, t6, 1461
                  srl          a0, t5, t4
                  nop
                  blt          s10, a0, 136f
                  srl          t6, t0, s9
                  srli         t2, a4, 24
                  sltiu        s6, a1, -1866
                  bne          a2, s0, 139f
                  bltu         ra, t0, 136f
                  xor          a2, s5, a6
                  xori         s10, s11, -1793
                  sltu         a2, s7, t0
                  sra          a4, s11, s0
                  blt          s5, a2, 135f
                  lui          t1, 4012
135:              xor          ra, s7, a7
136:              beq          s2, s0, 148f
                  auipc        sp, 543927
                  srl          zero, t2, s2
139:              xori         a6, a3, 984
                  beq          s7, a5, 144f
                  slli         s3, t3, 28
                  add          tp, s5, s2
                  srli         s5, a6, 13
144:              nop
                  srli         a1, t1, 13
                  auipc        a3, 646300
                  bge          s4, a5, 165f
148:              sltu         s5, t5, s8
                  or           t1, t0, a4
                  andi         t4, s4, 242
                  or           tp, s9, s1
                  slt          s10, s4, t1
                  sltiu        s6, zero, -1962
                  and          a4, s6, ra
                  lui          t3, 772283
                  srli         s9, s3, 2
                  srli         t5, a5, 13
                  and          s11, a0, sp
                  sltiu        s4, a6, -1649
                  xori         a6, t4, -2036
                  srli         s9, a3, 27
                  sub          t1, t6, a7
                  ori          s0, t6, -998
                  addi         s0, s1, 141
165:              bltu         s0, a7, 181f
                  lui          s3, 458705
                  lui          a1, 50879
                  srai         a1, a3, 14
                  slt          a5, t6, s1
                  add          s5, s1, t3
                  andi         s0, gp, -1688
                  sltu         a5, a6, s4
                  srl          s8, a6, a0
                  addi         s3, t6, 61
                  bltu         sp, t5, 184f
                  nop
                  blt          t0, t5, 182f
                  xor          t3, t0, t3
                  and          s4, s0, s1
                  xori         s5, t5, 1838
181:              sll          ra, ra, t5
182:              sub          s7, s4, s8
                  ori          sp, t1, -408
184:              and          tp, s6, s1
                  or           a3, gp, t2
                  srai         t2, t2, 12
                  sub          s6, s1, gp
                  slli         s5, s5, 3
                  auipc        a2, 204815
                  xor          ra, a0, a2
                  bltu         sp, s1, 208f
                  bne          gp, a2, 208f
                  slt          t2, ra, a3
                  slt          tp, t1, a2
                  bne          a5, a0, 214f
                  sll          s3, s10, s7
                  bne          s8, a3, 215f
                  bltu         s6, t5, 213f
                  srl          t5, a5, a7
                  sub          s6, t5, ra
                  nop
                  slt          sp, a5, s7
                  bne          s1, sp, 216f
                  bge          s10, a6, 207f
                  sll          s5, s4, a4
                  xori         t1, s2, -841
207:              bgeu         t6, s9, 217f
208:              bltu         tp, s5, 213f
                  andi         a5, zero, 1589
                  bltu         a1, ra, 225f
                  sra          a2, t0, s5
                  xori         a5, a2, -822
213:              xor          s11, sp, t0
214:              sub          ra, t4, t0
215:              blt          a6, tp, 218f
216:              sra          s11, t1, t6
217:              sll          s2, sp, t1
218:              sub          s7, t2, a2
                  srli         t1, s7, 3
                  srai         gp, s1, 1
                  bltu         a2, s6, 227f
                  xor          gp, a4, t1
                  blt          a1, s0, 234f
                  xor          gp, a4, s8
225:              add          a2, s10, tp
                  nop
227:              slt          sp, t6, a4
                  sltu         s3, s5, s4
                  andi         a2, s4, -1204
                  nop
                  sltu         a2, s10, a1
                  and          gp, s10, t5
                  bge          s6, s9, 247f
234:              sll          s0, s0, a3
                  sub          s4, a6, s0
                  add          t3, t5, s10
                  sltiu        t2, a5, 131
                  slt          a2, s0, s10
                  ori          a1, a2, -1531
                  andi         a5, a0, 1094
                  or           t4, a5, s4
                  ori          a3, s11, -280
                  sltu         t1, s11, s3
                  bne          s6, t4, 248f
                  and          a5, a6, s0
                  xori         a0, s6, 306
247:              sll          s3, t2, s7
248:              slli         t6, tp, 23
                  bgeu         t5, a3, 253f
                  or           s8, s3, s9
                  andi         gp, s5, -1432
                  slti         a2, t2, -189
253:              lui          s5, 23005
                  xori         s2, a1, -1722
                  andi         s0, a4, -222
                  sltu         a5, a5, a1
                  sltu         t2, s11, t3
                  sltiu        s7, a6, -56
                  sub          a4, s0, s6
                  slti         t1, t0, -36
                  beq          a2, t5, 263f
                  auipc        s6, 141172
263:              slli         t2, a6, 14
                  srli         s3, s3, 31
                  or           s8, a4, ra
                  xor          t2, a2, s10
                  andi         sp, a1, -1465
                  auipc        t6, 549633
                  bgeu         tp, a6, 285f
                  sra          zero, a2, t6
                  blt          s7, zero, 284f
                  sub          a6, t2, a2
                  andi         s2, s4, -192
                  bne          s10, t0, 289f
                  sll          s7, s2, a5
                  sra          t2, s1, s2
                  slli         zero, s8, 5
                  bne          a1, s7, 288f
                  srli         gp, a2, 4
                  andi         tp, a6, 711
                  bgeu         s8, t0, 290f
                  bgeu         tp, s7, 294f
                  slli         sp, tp, 6
284:              andi         s8, ra, -850
285:              auipc        t3, 702101
                  sltiu        a2, s4, 653
                  ori          t5, t0, 1862
288:              sra          s0, s0, s7
289:              sll          a4, s8, sp
290:              or           s4, s10, t0
                  bge          a6, t0, 310f
                  sra          zero, t3, t4
                  xor          a2, s1, s8
294:              sub          a4, s1, s7
                  addi         a6, a6, -467
                  blt          t5, sp, 310f
                  sra          s8, s4, gp
                  bgeu         zero, s3, 313f
                  or           s7, s6, zero
                  srl          a4, t1, t0
                  and          a1, a7, s3
                  xori         t4, s2, 515
                  lui          a5, 703080
                  slti         s10, s4, -877
                  slli         t4, t2, 3
                  sltu         s8, a1, t2
                  and          t3, a3, s1
                  and          s4, t6, a4
                  sll          s6, s1, s8
310:              bgeu         t1, s4, 315f
                  bge          s5, a6, 325f
                  srli         a2, a5, 16
313:              addi         s7, s4, 712
                  srai         ra, s1, 18
315:              srli         a2, t3, 26
                  srl          s0, sp, s6
                  bgeu         tp, a1, 324f
                  sltiu        t6, s11, 1501
                  xor          s4, s5, zero
                  ori          zero, t5, 1068
                  blt          t3, a4, 341f
                  add          t2, t0, t5
                  andi         tp, a1, 1993
324:              srai         s7, s0, 24
325:              xor          t6, s10, s9
                  bgeu         s4, tp, 344f
                  auipc        t6, 370431
                  add          s5, a2, a1
                  lui          s9, 193582
                  blt          a4, s0, 333f
                  bgeu         ra, a3, 337f
                  bgeu         zero, s9, 349f
333:              xori         s4, s10, 706
                  add          t6, zero, sp
                  and          s5, s5, t3
                  xor          s0, s2, s6
337:              sltiu        ra, s1, 1489
                  bne          t5, s10, 350f
                  ori          s11, s10, -1951
                  sltu         s4, s0, s9
341:              xor          s10, t2, t2
                  sltiu        t1, t0, -1165
                  beq          s0, sp, 347f
344:              andi         a5, a2, -365
                  ori          s0, s11, 922
                  nop
347:              sll          t5, s10, s9
                  srli         a1, t2, 16
349:              bge          ra, a6, 365f
350:              sub          s7, t6, s7
                  beq          a6, ra, 364f
                  slli         a2, s0, 22
                  slt          tp, s8, t5
                  sltu         a6, t5, a5
                  andi         s6, a4, 1988
                  sub          a2, s2, t5
                  slt          s10, t4, a2
                  ori          zero, t3, 56
                  lui          a4, 140358
                  andi         s6, tp, -1913
                  sltu         t2, a1, ra
                  sltiu        gp, a3, -292
                  or           s11, s8, t4
364:              bne          s0, s7, 368f
365:              andi         t1, s10, 1935
                  auipc        a4, 48567
                  sltiu        t3, s2, -77
368:              addi         s11, s2, 1035
                  add          s2, a7, t4
                  beq          s11, ra, 381f
                  srl          s5, a6, a0
                  bltu         a4, s4, 390f
                  slti         a1, s7, 1302
                  ori          s9, tp, -650
                  bltu         s1, t3, 379f
                  slti         t1, t0, -1186
                  ori          a0, s6, 1915
                  slti         s5, a4, 1840
379:              slt          tp, gp, tp
                  ori          gp, a4, -2012
381:              xori         s5, s10, 552
                  lui          a4, 21479
                  nop
                  sltu         ra, t6, s8
                  and          t1, s10, zero
                  sltiu        s8, sp, -816
                  or           a6, t0, s6
                  beq          s9, s11, 396f
                  sltiu        sp, s6, -1066
390:              srl          t3, gp, t3
                  srai         s3, sp, 8
                  ori          t2, s3, 567
                  ori          a1, a6, 589
                  add          s4, a4, a1
                  sltiu        s8, a3, 1914
396:              bltu         zero, s1, 399f
                  or           s11, zero, zero
                  sltiu        a3, s4, 920
399:              ori          s5, a1, -493
                  sra          a5, a5, s7
                  ori          t5, s0, 1921
                  lui          t5, 759893
                  or           a1, a7, t2
                  blt          ra, zero, 408f
                  beq          s9, t3, 410f
                  beq          ra, s5, 423f
                  bne          gp, s0, 413f
408:              sltiu        t3, a6, -848
                  beq          s11, ra, 425f
410:              or           t4, sp, t3
                  blt          t5, a4, 425f
                  slti         t6, t3, -574
413:              sltiu        a1, sp, -341
                  or           t1, zero, a2
                  beq          a2, a3, 424f
                  srl          s9, t0, a2
                  sra          a2, t4, t4
                  or           s10, t6, t6
                  xor          t3, a1, s10
                  xori         t4, sp, -527
                  add          zero, a5, tp
                  bgeu         a1, s11, 426f
423:              bgeu         a5, s0, 441f
424:              andi         s3, t1, -444
425:              srl          t5, t1, s1
426:              bne          tp, t6, 438f
                  bgeu         t1, t1, 445f
                  nop
                  slt          s8, s2, s9
                  bne          gp, s6, 450f
                  xor          s0, t2, s11
                  beq          s1, t2, 436f
                  sub          s9, a1, a0
                  xor          t4, s11, t5
                  andi         t1, t2, 1578
436:              ori          s3, a3, -1517
                  nop
438:              sra          t5, t3, t3
                  bne          t0, sp, 451f
                  lui          t6, 230776
441:              ori          s0, s4, 976
                  bne          s5, s1, 455f
                  lui          s7, 161697
                  srl          t2, s0, t4
445:              sltiu        s11, zero, 1673
                  add          t1, zero, s11
                  blt          s8, a2, 451f
                  beq          s0, gp, 453f
                  xor          tp, s7, t5
450:              ori          s4, a2, -1930
451:              blt          t5, t3, 454f
                  srai         t1, s10, 1
453:              add          s10, s1, a2
454:              sra          a0, a2, t5
455:              beq          s0, zero, 468f
                  srl          s6, a7, tp
                  slt          a5, s6, tp
                  add          t6, a6, s6
                  nop
                  lui          s11, 532289
                  addi         t4, a7, 681
                  bne          s0, s8, 464f
                  addi         a3, tp, 660
464:              bne          ra, t2, 472f
                  srl          tp, t0, t1
                  sra          s9, tp, a7
                  add          s7, a7, s2
468:              lui          s11, 201760
                  bge          s6, zero, 488f
                  bgeu         s6, t3, 477f
                  beq          t1, a3, 487f
472:              ori          t5, s2, 735
                  ori          a1, a3, 711
                  slti         ra, t1, -146
                  ori          s2, t4, -1002
                  xor          s9, s2, t5
477:              slli         ra, s10, 17
                  bge          s2, s8, 492f
                  auipc        t4, 215223
                  addi         tp, a2, 1080
                  sll          s0, a4, a7
                  xor          s5, a3, s4
                  and          t6, s3, gp
                  srai         zero, s2, 4
                  slt          a2, t0, a0
                  slt          a6, s11, gp
487:              bltu         t3, gp, 502f
488:              sub          s0, tp, a4
                  auipc        s10, 348284
                  addi         tp, s9, 499
                  andi         t6, a1, 631
492:              beq          s2, a4, 502f
                  sub          t4, s4, s6
                  sltiu        s7, s8, -1852
                  addi         s2, s1, -673
                  sub          a5, s11, t6
                  srli         t6, zero, 8
                  lui          a3, 1018489
                  sltu         t6, s1, t6
                  lui          s6, 261697
                  blt          tp, t2, 516f
502:              srai         s11, t6, 10
                  srli         s11, s4, 15
                  sltiu        tp, a2, 1945
                  srl          s5, s9, ra
                  nop
                  srli         s9, s9, 6
                  sra          s6, a7, t4
                  sra          a5, t1, tp
                  sra          ra, a7, zero
                  addi         s3, a0, 277
                  lui          t1, 18858
                  sltiu        a0, s8, 1647
                  bge          t5, ra, 518f
                  bne          a4, s3, 526f
516:              sll          s10, ra, t2
                  sltu         s9, t6, sp
518:              and          gp, s10, s9
                  or           sp, t0, s2
                  blt          t3, t0, 525f
                  sll          t5, s5, a3
                  andi         s4, gp, -347
                  add          a2, ra, s1
                  ori          s0, gp, 1069
525:              nop
526:              slli         t5, t0, 30
                  sll          s0, s3, tp
                  blt          t6, t2, 531f
                  sltu         s2, s2, a3
                  srli         a2, t3, 21
531:              ori          s6, s3, 1277
                  bne          tp, sp, 540f
                  add          s9, sp, gp
                  srl          tp, s10, t5
                  slti         a6, a1, -552
                  lui          ra, 77500
                  bltu         gp, a7, 542f
                  bge          a5, s8, 551f
                  or           t2, s7, a6
540:              ori          gp, a1, -676
                  ori          t2, t2, -1029
542:              sll          a6, s6, sp
                  sltiu        s6, s10, -1104
                  srai         s0, t0, 24
                  ori          s9, s3, 1005
                  srli         t6, a4, 8
                  bge          a0, s7, 561f
                  addi         s11, t5, 809
                  lui          t6, 163888
                  srli         ra, a5, 2
551:              slli         gp, zero, 27
                  srai         s4, zero, 24
                  auipc        s5, 159178
                  sra          sp, ra, tp
                  ori          s6, a6, 1390
                  xori         t2, a7, 9
                  addi         a4, s9, -560
                  nop
                  bge          s4, t5, 568f
                  beq          s9, sp, 571f
561:              slti         t2, zero, -1351
                  srli         t5, t0, 8
                  or           t4, s2, gp
                  and          s10, sp, gp
                  blt          t1, a2, 575f
                  andi         a0, a1, 168
                  bge          s0, t0, 587f
568:              bge          a0, t5, 573f
                  bne          s8, t3, 581f
                  slli         s2, a4, 27
571:              xori         zero, zero, -1805
                  slli         s7, s6, 20
573:              sub          a3, t6, s4
                  slt          a2, tp, s9
575:              addi         a3, a4, 958
                  xori         a1, s1, -417
                  lui          s3, 59746
                  add          t3, a6, t6
                  ori          a3, ra, 1399
                  sltiu        s0, zero, -622
581:              srl          s9, s2, t5
                  slli         a6, a3, 20
                  sra          a3, s0, a7
                  andi         ra, a0, 1217
                  slti         a5, s8, 1984
                  add          s5, s4, t5
587:              srl          s3, a5, s3
                  sll          s6, s4, zero
                  andi         t6, a4, 123
                  slti         gp, s2, -563
                  or           t3, s0, s0
                  slli         s4, s7, 25
                  beq          a0, a4, 597f
                  blt          sp, zero, 598f
                  slli         zero, s2, 21
                  sltiu        s5, s8, 232
597:              sra          a2, t5, ra
598:              bge          s9, t3, 602f
                  beq          zero, t6, 602f
                  sltiu        t3, t4, 2027
                  sltiu        s8, tp, 1208
602:              slli         zero, s9, 25
                  sltiu        t4, a4, 114
                  lui          s8, 464813
                  xor          s10, s6, t5
                  addi         t2, s5, 1518
                  andi         a0, s10, -468
                  sltu         a5, t1, s9
                  beq          ra, a1, 627f
                  blt          a4, zero, 625f
                  xori         s7, t6, 1167
                  sll          s8, s7, gp
                  xori         s7, a6, -1157
                  lui          s9, 1039072
                  bge          a5, t3, 630f
                  or           s6, zero, s0
                  srai         s8, ra, 30
                  sll          gp, t2, t5
                  xor          t4, a7, s2
                  or           s4, s9, t0
                  sltiu        t2, t2, -627
                  sra          t6, a6, s4
                  bge          s8, t5, 642f
                  sltu         a0, s9, s1
625:              and          a4, s11, a3
                  slt          sp, a6, a6
627:              sra          a2, t5, a4
                  beq          s8, s9, 632f
                  xori         t5, gp, 720
630:              sll          s10, tp, s2
                  sltiu        s5, tp, 463
632:              bge          s9, s5, 648f
                  bltu         a6, s9, 647f
                  addi         s8, a6, 678
                  or           t5, s8, ra
                  and          a1, s8, t0
                  srai         s4, s11, 2
                  bltu         t4, a4, 645f
                  slt          t4, s1, a1
                  xor          a3, zero, s4
                  bne          sp, tp, 647f
642:              bgeu         s5, zero, 644f
                  xor          s10, t3, a4
644:              xori         gp, t3, 1176
645:              beq          a2, a1, 662f
                  auipc        a1, 184364
647:              ori          s2, t4, 1095
648:              andi         s9, tp, 1179
                  xor          s8, tp, t1
                  srli         a4, s11, 22
                  bge          t1, s11, 654f
                  and          s4, a0, a4
                  srai         t6, a6, 18
654:              slli         t1, t0, 7
                  bge          t2, t5, 668f
                  sra          t4, s11, s5
                  andi         t5, t0, -1113
                  and          t2, t3, s9
                  bgeu         a6, a1, 671f
                  sra          sp, s10, s0
                  bge          s7, a1, 679f
662:              blt          t6, a1, 678f
                  blt          t1, s8, 669f
                  or           s10, s0, t0
                  sltiu        t1, t6, -780
                  sll          a2, t1, s9
                  sltiu        a5, gp, 128
668:              and          a1, t3, zero
669:              lui          s6, 621646
                  sltu         t2, gp, s0
671:              nop
                  slti         t1, tp, 1012
                  sra          t2, a4, a0
                  bne          s4, t0, 689f
                  sub          s10, tp, t1
                  slli         a2, a5, 14
                  srl          a1, s5, a3
678:              auipc        s10, 395774
679:              addi         a1, ra, 1974
                  sll          t2, a5, zero
                  beq          t5, s3, 684f
                  sra          s11, a7, t5
                  bltu         a1, s4, 687f
684:              bge          s3, s11, 701f
                  auipc        t6, 722052
                  sltiu        a4, a0, 1824
sub_5_19:         jal          ra, 12f
0:                jal          ra, 6f
1:                jal          ra, 16f
2:                jal          ra, 8f
3:                jal          s7, 1b
4:                jal          t1, 10f
5:                jal          ra, 0b
6:                jal          t1, 4b
7:                jal          t1, 5b
8:                jal          ra, 13f
9:                jal          a5, 3b
10:               jal          t5, 11f
11:               jal          ra, 2b
12:               jal          ra, 7b
13:               jal          a5, 15f
14:               jal          t1, 9b
15:               jal          ra, 14b
16:               srli         s3, s1, 18
687:              sltu         a1, a2, t1
                  slt          t2, tp, s11
689:              sub          s0, t3, s8
                  bgeu         s6, s8, 695f
                  addi         t5, zero, 1904
                  sltiu        s7, s4, 19
                  slli         t3, zero, 0
                  slli         s4, gp, 6
695:              add          s6, s3, t2
                  bgeu         s6, t1, 700f
                  bge          a2, t5, 699f
                  bltu         zero, a7, 711f
699:              and          s8, t5, a3
700:              sltu         a5, s6, s0
701:              beq          t1, s7, 710f
                  beq          s6, s9, 716f
                  beq          s6, s10, 722f
                  sub          ra, s0, gp
                  auipc        s4, 452549
                  srai         s6, zero, 1
                  slli         ra, ra, 8
                  srli         s0, sp, 2
                  sltiu        t1, a5, -323
710:              bge          a6, s10, 722f
711:              xori         a2, t3, 1728
                  add          s9, gp, t6
                  andi         a3, t3, -967
                  sll          tp, s6, a1
sub_5_17:         jal          ra, 8f
0:                jal          ra, 6f
1:                jal          s5, 9f
2:                jal          sp, 3f
3:                jal          ra, 10f
4:                jal          t1, 2b
5:                jal          tp, 0b
6:                jal          ra, 1b
7:                jal          ra, 5b
8:                jal          ra, 7b
9:                jal          t1, 4b
10:               add          sp, a0, a4
                  sub          a6, s8, s7
716:              bge          s9, s7, 723f
                  srl          a3, zero, t0
                  xori         a2, t0, -1074
                  lui          a3, 422400
                  nop
                  bge          t3, a0, 732f
722:              slt          zero, a0, s7
723:              bge          s7, s9, 735f
                  slt          s8, t1, t5
                  sub          a3, s0, s5
                  xori         s7, s8, 1763
                  auipc        a0, 371435
                  andi         t1, s11, 1582
                  bge          a7, t3, 744f
                  bltu         a1, t5, 746f
                  xor          a5, s10, s6
732:              and          a6, t2, s8
                  nop
                  srli         a0, t4, 3
735:              sltu         s6, s9, sp
                  sra          ra, s2, ra
                  srli         t5, a5, 25
                  xor          t6, a3, zero
                  auipc        a5, 435373
                  andi         s0, s2, 255
                  sltu         t1, a2, sp
                  beq          sp, s6, 760f
                  srai         s9, tp, 27
744:              sra          s6, t5, t1
                  xori         s4, zero, -650
746:              or           t2, s3, t3
                  auipc        a4, 494001
                  sltiu        t4, t4, 565
                  auipc        s9, 353254
                  srai         t6, a2, 19
                  sltiu        s2, t3, 632
                  nop
                  bge          t0, t2, 757f
                  and          a1, s6, a1
                  slli         s6, a4, 10
                  sll          s4, a0, t5
757:              sltiu        s5, a4, -569
                  andi         zero, ra, 401
                  andi         a6, a2, 1882
760:              xori         s6, a3, 1774
                  beq          t4, s6, 779f
                  xor          s8, s8, sp
                  srli         s2, a1, 19
                  srl          a0, s6, sp
                  slt          s7, s5, zero
                  slti         s8, s1, -440
                  nop
                  srli         s4, a2, 9
                  lui          s5, 889673
                  blt          s9, s0, 775f
                  ori          gp, t3, 182
                  lui          t5, 1023651
                  slli         gp, a1, 1
                  sub          sp, zero, s2
775:              blt          t0, sp, 795f
                  sltu         a3, a6, s3
                  sltiu        zero, a1, 331
                  blt          s9, a6, 781f
779:              or           sp, t4, a7
                  srli         a6, t3, 30
781:              slli         a0, s0, 9
                  srl          s11, s8, s3
                  addi         a6, s5, 547
                  srl          s9, s2, gp
                  bge          s2, a5, 798f
                  nop
                  addi         zero, t2, -1521
                  srli         a0, t5, 9
                  sra          s3, s0, s7
                  or           t6, s4, t2
                  bne          a2, a0, 807f
                  beq          s10, ra, 796f
                  srai         s9, s9, 20
                  srl          a5, s10, t6
795:              sra          gp, a5, sp
796:              nop
                  slti         t4, s10, -1241
798:              or           a4, s6, gp
                  sub          s5, s8, s8
                  add          ra, sp, t2
                  slti         s11, a7, -817
                  addi         s4, s6, -1709
                  slt          s7, s1, s10
                  blt          t1, a4, 818f
                  and          s11, a0, a1
                  bge          zero, s8, 816f
807:              srl          s5, t1, a5
                  andi         a4, sp, 1221
                  add          s0, zero, t4
                  slt          s4, t6, s2
                  xori         t5, a0, 972
                  sltiu        a4, t6, -1861
                  srli         t4, a4, 20
                  bltu         t4, s9, 822f
                  xor          s6, s6, a3
816:              slli         t6, sp, 16
                  auipc        zero, 582630
818:              beq          t6, s1, 822f
                  bltu         a1, zero, 823f
                  lui          s10, 695825
                  blt          s4, s1, 840f
822:              addi         s8, s9, -2046
823:              add          a5, s11, a1
                  xor          s10, zero, s8
                  blt          s4, a0, 835f
                  or           s6, tp, t1
                  sra          zero, a4, s10
                  bne          a3, a5, 846f
                  nop
                  or           t4, s8, t5
                  or           a6, a1, s1
                  sra          a4, t1, t3
                  srai         a2, t3, 12
                  sub          s7, tp, t2
835:              add          a3, s3, s11
                  bge          a7, a5, 842f
                  ori          t6, ra, 1312
                  addi         s11, sp, 1911
                  srli         a6, s10, 18
840:              beq          tp, a6, 844f
                  and          s3, a2, t4
842:              srl          a2, t6, sp
                  bgeu         s7, a6, 855f
844:              bne          s7, ra, 852f
                  xor          s3, ra, a3
846:              and          a6, a7, s5
                  bge          t6, s7, 861f
                  bltu         a6, a7, 851f
                  add          t2, s10, t6
                  slt          zero, s10, s3
851:              bltu         gp, t5, 858f
852:              xor          a3, a6, a3
                  sra          a5, a0, s8
                  xori         gp, t3, -66
855:              slti         t5, a7, 528
                  nop
                  sltu         s4, gp, s0
858:              or           t1, t1, s3
                  andi         a0, a2, -649
                  sltiu        a0, t3, 1338
861:              xori         s5, s9, 1596
                  srl          gp, a3, t0
                  addi         s5, t3, 427
                  or           a6, tp, s8
                  andi         s4, a2, 1196
                  sll          t6, s5, a3
                  blt          t1, a6, 883f
                  bge          t4, tp, 884f
                  bne          a2, s9, 878f
                  srli         s8, t1, 5
                  ori          a2, s10, -1138
                  nop
                  srli         tp, a2, 13
                  sltiu        s10, a7, -802
                  nop
                  auipc        s0, 683316
                  slti         gp, t6, 213
878:              blt          t3, t2, 890f
                  lui          a2, 892107
                  srl          t5, s8, s4
                  or           s6, zero, a2
                  beq          t2, a4, 899f
883:              bgeu         s11, tp, 897f
884:              slti         s8, a0, 552
                  andi         s9, ra, 500
                  sub          t1, s5, a1
                  nop
                  bne          a7, a3, 892f
                  add          t3, a0, s10
890:              or           s2, s9, a3
                  bne          s0, a6, 904f
892:              sra          s6, t3, t4
                  lui          a1, 66263
                  sll          sp, a3, a6
                  bne          a7, a5, 910f
                  slli         a2, a2, 9
897:              srai         t6, a0, 16
                  and          a5, s2, a4
899:              add          s8, s10, ra
                  beq          a0, t4, 911f
                  auipc        s11, 1041218
                  srli         t6, a7, 26
                  sltu         s9, ra, a1
904:              sltu         sp, t5, a4
                  lui          ra, 798973
                  slli         ra, a6, 10
                  slt          s6, gp, s2
                  andi         t2, s7, -2005
                  xori         s5, s2, -28
910:              srai         s4, t4, 10
911:              xor          s2, a3, s6
                  sll          a4, s4, s11
                  sll          s9, zero, zero
                  bge          t4, a2, 917f
                  bne          s3, t0, 928f
                  lui          s4, 535176
917:              ori          ra, s9, 950
                  sub          a1, a4, t4
                  slti         s6, a2, -1450
                  xor          s2, s0, a5
                  xor          s8, t6, a1
                  slli         s0, t3, 1
                  sub          s10, s11, t4
                  slt          zero, t0, gp
                  or           s4, t3, t6
                  xor          t5, s4, a5
                  sra          s10, s4, s4
928:              sltiu        a4, s11, 1051
                  bne          t2, gp, 934f
                  bgeu         a4, ra, 950f
                  slli         t5, sp, 31
                  srli         a0, s4, 3
                  add          a4, t4, s7
934:              bne          gp, s6, 949f
                  xor          s9, t0, a5
                  slli         zero, t4, 30
                  blt          a2, s9, 955f
                  srai         a4, a7, 30
                  lui          t1, 51766
                  xori         s11, s3, -1181
                  bgeu         s8, t5, 943f
                  sra          s0, t3, s9
943:              sub          t5, a4, t4
                  addi         a3, t5, 1306
                  bltu         t1, gp, 950f
                  add          s4, s7, t3
                  bgeu         a1, a3, 964f
                  auipc        s4, 99237
949:              srai         a0, t3, 8
950:              srl          gp, a5, ra
                  nop
                  bltu         s1, s4, 966f
                  ori          t5, tp, 1497
                  nop
955:              nop
                  lui          s7, 523787
                  and          ra, a3, ra
                  addi         a3, t1, 1624
                  andi         ra, s11, 1527
                  slt          t4, t0, s9
                  lui          gp, 233545
                  srai         a5, t4, 11
                  srai         t2, a7, 14
964:              sll          a2, s4, s8
                  sltiu        s3, a6, -190
966:              andi         s8, s0, -587
                  srli         a4, a6, 20
                  add          a0, a1, s9
                  srli         t6, a1, 13
                  ori          a5, s9, -2044
                  andi         s9, t2, -1615
                  or           t2, a0, s8
                  sra          s2, s0, t3
                  or           s11, t2, gp
                  and          s2, s10, s6
                  sub          gp, s10, t2
                  xor          s3, s3, s5
                  sub          s10, gp, zero
                  andi         ra, sp, -1288
                  and          s6, s5, t0
                  lui          a0, 625054
                  xori         a0, t0, 1046
                  bge          s6, a4, 989f
                  addi         a6, a5, 816
                  lui          t2, 737140
                  bne          sp, a7, 988f
                  ori          s10, t1, -86
988:              slt          tp, s9, s2
989:              sub          zero, t4, gp
                  and          s10, t2, sp
                  and          t5, s1, tp
                  addi         s10, a3, 615
                  bgeu         s5, s9, 1003f
                  lui          t6, 986369
                  bge          s1, s11, 1011f
                  sub          a0, s0, t0
                  slti         s10, s7, 1977
                  srl          tp, a6, t6
                  srli         a1, zero, 27
                  blt          a5, t6, 1016f
                  blt          s0, t4, 1015f
                  lui          a4, 28968
1003:             sll          s2, s11, s0
                  blt          t5, s8, 1017f
                  sltiu        a2, s6, -1751
                  lui          s5, 674336
                  bge          a4, s0, 1012f
                  auipc        a1, 172727
                  slli         a6, a4, 2
                  srl          s2, s4, s3
1011:             addi         gp, s8, -542
1012:             bltu         t2, s6, 1024f
                  sltiu        s10, gp, 1814
                  sra          s6, a3, s3
1015:             xori         s10, s3, -902
1016:             xor          sp, s11, zero
1017:             bne          t0, t6, 1021f
                  srai         ra, s10, 9
                  nop
                  srai         t4, a2, 16
1021:             andi         s0, a2, 1409
                  andi         s10, ra, -168
                  and          t4, s10, gp
1024:             auipc        a2, 979358
                  xori         s8, a1, -374
                  auipc        a0, 753609
                  addi         t4, s9, -1327
                  blt          t4, t1, 1043f
                  lui          s10, 392026
                  add          s10, s11, s7
                  addi         t1, t5, -1312
                  sll          zero, s6, sp
                  sltu         zero, sp, s2
                  sltiu        t5, gp, -153
                  and          a4, s7, sp
                  srli         s11, s3, 0
                  beq          s8, t3, 1057f
                  bge          s7, s8, 1045f
                  ori          t3, tp, -443
                  sltiu        s6, gp, -149
                  addi         t6, zero, 1163
                  slti         a3, a0, -888
1043:             sll          t4, s9, s2
                  bltu         s8, t1, 1052f
1045:             xori         s2, s0, -1727
                  sra          s2, t2, s9
                  sltiu        t1, s9, -210
                  blt          a3, a6, 1051f
                  srli         gp, zero, 19
                  bne          s7, ra, 1053f
1051:             or           ra, a1, a3
1052:             sll          a5, s2, t0
1053:             sltiu        s8, sp, -166
                  srl          a2, s7, sp
                  srl          s9, s4, s6
                  srl          ra, t5, t0
1057:             sltu         s11, s4, a5
                  addi         s4, s1, 609
                  addi         s6, s1, 805
                  add          s10, a1, zero
                  bgeu         t5, t4, 1080f
                  nop
                  addi         t1, s7, 1780
                  bltu         a1, s4, 1079f
                  sltiu        s9, ra, -479
                  nop
                  nop
                  slt          ra, s1, t0
                  bge          s10, a6, 1073f
                  and          tp, zero, s5
                  slt          s0, s2, s4
                  beq          t1, s8, 1081f
1073:             bne          s11, gp, 1085f
                  auipc        tp, 2912
                  sltu         a0, s9, t5
                  srai         gp, tp, 23
                  bltu         a6, s8, 1081f
                  sltu         ra, a5, sp
1079:             or           s8, a6, a2
1080:             bltu         a3, s3, 1091f
1081:             sub          s9, s1, ra
                  slli         a5, a2, 18
                  sra          a5, s8, t6
                  slli         a6, sp, 15
1085:             srl          t4, gp, a2
                  ori          gp, tp, -2026
                  bgeu         a4, a7, 1105f
                  and          s8, s1, a4
                  srai         s10, s4, 22
                  srai         s3, s8, 25
1091:             slti         s5, a0, -562
                  nop
                  sltu         t1, gp, s4
                  slli         t5, s0, 1
                  xori         s4, a4, -1969
                  addi         t5, s8, 1858
                  sltiu        a5, s2, -546
                  bgeu         s7, s10, 1103f
                  sltiu        ra, s3, -139
                  bge          s6, a6, 1118f
                  slti         s4, t2, 1216
                  xori         t2, s7, -1288
1103:             bge          t3, a3, 1107f
                  bgeu         s5, t5, 1117f
1105:             bge          s9, a1, 1109f
                  srai         t5, s11, 26
1107:             ori          s8, s6, -1766
                  bge          t3, s11, 1122f
1109:             or           zero, gp, a1
                  auipc        t6, 1009122
                  auipc        t5, 249966
                  sub          t1, t2, ra
                  nop
                  bgeu         s10, a5, 1122f
                  srai         s6, s7, 4
                  bne          a1, t6, 1125f
1117:             xori         zero, s6, -907
1118:             ori          s6, sp, 1507
                  sll          ra, t6, s6
                  slti         ra, s4, -555
                  lui          t1, 849867
1122:             srai         s0, a1, 11
                  srl          s3, t3, s1
                  slt          s6, t5, s3
1125:             bge          a1, s11, 1130f
                  srl          gp, gp, t3
                  auipc        s9, 95214
                  srli         zero, s5, 26
                  andi         a6, t0, -805
1130:             sub          t2, t3, s3
                  sltiu        a4, a0, 433
                  auipc        s4, 626072
                  slli         a6, tp, 5
                  auipc        ra, 1012195
                  bgeu         t1, zero, 1147f
                  sltu         a3, s6, s1
                  andi         a6, s9, -1099
                  and          gp, s1, gp
                  sub          s8, s4, s6
                  blt          t1, s7, 1149f
                  bge          s0, a0, 1144f
                  add          s0, s8, s4
                  and          a3, s5, s10
1144:             sub          a2, sp, t1
                  lui          s9, 632402
                  auipc        a3, 422245
1147:             sltiu        zero, s1, 1360
                  nop
1149:             addi         gp, a2, 1614
                  lw           ra, 4(t0)
                  sltu         s4, t5, s11
                  srli         s5, tp, 19
                  slti         a6, s9, 718
                  addi         t6, t1, 1872
                  ori          s0, a1, 535
                  addi         t0, t0, 52
                  auipc        t3, 980081
1675:             addi x7, x1, 0
1675:             jalr x7, x7, 0
sub_2:            sltiu        a2, sp, 1397
                  nop
                  and          s9, s7, sp
                  addi         t0, t0, -60
                  srai         t6, s6, 4
                  sub          a0, tp, ra
                  sw           ra, 4(t0)
                  srai         gp, t5, 31
                  or           a5, t4, gp
                  sltu         s6, ra, t1
                  srli         gp, a6, 2
                  bgeu         t6, t2, 3f
                  or           s5, s9, t0
3:                blt          a6, t4, 11f
                  slli         ra, a0, 6
                  slti         a0, s11, -868
                  blt          t6, a7, 20f
                  slti         s2, t5, 822
                  lui          a1, 633227
                  bne          gp, s7, 21f
                  slt          s5, t0, s10
11:               slli         a5, sp, 20
                  slt          zero, t3, s9
                  nop
                  slti         zero, t5, 1389
                  andi         a2, a3, -1195
                  xori         s11, sp, 40
                  sll          s3, a3, t4
                  andi         a5, s3, 1454
                  slti         s11, a5, 1013
20:               slt          s8, t0, t1
21:               slli         t3, a0, 12
                  slt          s2, s6, s9
                  lw           ra, 4(t0)
                  slti         t2, a2, 864
                  and          a2, t4, s4
                  addi         t0, t0, 60
                  srl          a5, s11, t0
38:               addi x13, x1, 0
38:               jalr x13, x13, 0
sub_1:            or           s6, a3, s6
                  ori          gp, a3, -1256
                  nop
                  sra          t6, s0, a5
                  or           t3, t4, s6
                  nop
                  addi         t0, t0, -8
                  sw           ra, 4(t0)
                  sltu         s4, s2, a7
                  xori         a6, s10, 1058
                  srl          sp, s0, a5
                  or           s9, s8, a7
                  ori          a1, s10, 875
                  ori          t2, s4, -1077
                  bge          t5, a2, sub_1_j3 #branch to jump instr
                  sra          s10, a0, sp
                  add          t2, s8, s9
                  srl          a0, s7, s6
                  addi         a0, t5, -1986
sub_1_j3:         jal          ra, sub_2 #jump sub_1 -> sub_2
                  andi         t1, s8, 1679
                  la           s10, sub_2
                  addi         s10, s10, -223
                  sll          tp, t4, s8
                  sll          s3, gp, a7
                  auipc        s2, 761023
                  srl          s8, s10, t3
                  srl          ra, a3, s7
                  sub          t1, s8, s5
                  beq          t3, s11, sub_1_j4 #branch to jump instr
                  slli         t4, a4, 12
                  sll          s7, ra, t6
sub_1_j4:         jalr         ra, s10, 224 #jump sub_1 -> sub_2
                  andi         a5, a2, -158
                  xori         t2, s6, -1827
                  add          t2, a0, t3
                  lui          s0, 668977
                  slli         s0, t4, 2
                  srli         sp, s2, 12
                  xor          a3, ra, a1
                  bne          a5, a1, sub_1_j5 #branch to jump instr
                  slt          t4, s3, s10
sub_1_j5:         jal          ra, sub_4 #jump sub_1 -> sub_4
                  la           s8, sub_3
                  lui          t3, 795507
                  xori         s4, s5, -753
                  sltu         zero, s8, t2
                  lui          t6, 236715
                  addi         s8, s8, -738
                  auipc        tp, 748209
                  slti         a4, s7, 471
                  sltiu        s4, a0, 807
                  xor          a2, t0, t0
sub_1_j6:         jalr         ra, s8, 738 #jump sub_1 -> sub_3
                  bltu         a4, a4, 3f
                  add          s6, s7, a3
                  srl          s6, t4, sp
3:                addi         a2, s11, -276
                  and          ra, s0, sp
                  sra          s9, zero, a7
                  lui          tp, 394498
                  ori          s6, s10, -1528
                  sra          a2, t5, a4
                  add          s0, s4, s0
                  and          zero, s8, t0
                  xori         t1, t4, 295
                  lw           ra, 4(t0)
                  addi         t0, t0, 8
                  lui          gp, 22562
                  slt          s8, s3, t4
                  xori         s5, s11, -544
                  auipc        a4, 838481
                  auipc        a0, 797406
                  addi         s11, s10, -1678
                  sltiu        s6, a3, 29
                  sub          a0, t4, s7
                  sub          t3, t6, zero
77:               addi x24, x1, 0
77:               jalr x24, x24, 0
sub_3:            add          a3, s4, a3
                  addi         t0, t0, -52
                  sw           ra, 4(t0)
                  addi         a1, t2, -942
                  sltu         s0, s11, tp
                  srli         t3, a2, 5
                  sub          zero, a7, zero
                  sra          a5, t0, a4
                  nop
                  sll          t2, a4, a5
sub_3_12:         jal          ra, 8f
0:                jal          t6, 11f
1:                jal          ra, 10f
2:                jal          ra, 7f
3:                jal          ra, 2b
4:                jal          ra, 5f
5:                jal          ra, 3b
6:                jal          ra, 1b
7:                jal          t1, 0b
8:                jal          t1, 6b
9:                jal          ra, 4b
10:               jal          ra, 9b
11:               xor          tp, a2, a2
sub_3_13:         jal          ra, 0f
0:                jal          t1, 10f
1:                jal          ra, 3f
2:                jal          ra, 6f
3:                jal          ra, 7f
4:                jal          t3, 12f
5:                jal          t1, 9f
6:                jal          ra, 4b
7:                jal          ra, 8f
8:                jal          t5, 11f
9:                jal          gp, 2b
10:               jal          a2, 1b
11:               jal          sp, 5b
12:               or           s6, ra, s6
sub_3_9:          jal          ra, 19f
0:                jal          ra, 14f
1:                jal          gp, 24f
2:                jal          ra, 0b
3:                jal          ra, 4f
4:                jal          ra, 20f
5:                jal          ra, 17f
6:                jal          a6, 13f
7:                jal          sp, 15f
8:                jal          a6, 9f
9:                jal          ra, 12f
10:               jal          ra, 5b
11:               jal          s0, 21f
12:               jal          ra, 25f
13:               jal          s3, 26f
14:               jal          ra, 18f
15:               jal          t1, 1b
16:               jal          s11, 3b
17:               jal          s0, 8b
18:               jal          ra, 11b
19:               jal          ra, 7b
20:               jal          s6, 23f
21:               jal          s3, 16b
22:               jal          t1, 27f
23:               jal          ra, 10b
24:               jal          s0, 2b
25:               jal          ra, 6b
26:               jal          ra, 22b
27:               addi         a0, s6, -1991
sub_3_15:         jal          ra, 0f
0:                jal          ra, 1f
1:                jal          t1, 21f
2:                jal          t1, 12f
3:                jal          t5, 2b
4:                jal          s3, 10f
5:                jal          ra, 23f
6:                jal          ra, 9f
7:                jal          tp, 3b
8:                jal          t1, 19f
9:                jal          ra, 13f
10:               jal          ra, 17f
11:               jal          s0, 16f
12:               jal          ra, 26f
13:               jal          t1, 8b
14:               jal          s9, 6b
15:               jal          sp, 14b
16:               jal          a2, 18f
17:               jal          t1, 7b
18:               jal          t1, 5b
19:               jal          s5, 24f
20:               jal          ra, 4b
21:               jal          t1, 22f
22:               jal          ra, 11b
23:               jal          ra, 15b
24:               jal          t1, 25f
25:               jal          ra, 20b
26:               slli         s11, a2, 30
sub_3_5:          jal          ra, 4f
0:                jal          ra, 1f
1:                jal          t1, 13f
2:                jal          ra, 14f
3:                jal          ra, 19f
4:                jal          gp, 2b
5:                jal          ra, 17f
6:                jal          ra, 8f
7:                jal          t1, 0b
8:                jal          sp, 9f
9:                jal          ra, 11f
10:               jal          a1, 5b
11:               jal          t1, 18f
12:               jal          ra, 6b
13:               jal          ra, 10b
14:               jal          s10, 3b
15:               jal          sp, 16f
16:               jal          ra, 20f
17:               jal          ra, 12b
18:               jal          t6, 15b
19:               jal          ra, 7b
20:               auipc        s5, 1020849
sub_3_4:          jal          ra, 16f
0:                jal          ra, 11f
1:                jal          gp, 13f
2:                jal          gp, 15f
3:                jal          a3, 4f
4:                jal          gp, 7f
5:                jal          ra, 6f
6:                jal          t1, 2b
7:                jal          ra, 9f
8:                jal          ra, 1b
9:                jal          ra, 17f
10:               jal          t1, 18f
11:               jal          ra, 19f
12:               jal          t1, 0b
13:               jal          t1, 21f
14:               jal          ra, 10b
15:               jal          ra, 8b
16:               jal          ra, 3b
17:               jal          a0, 20f
18:               jal          ra, 5b
19:               jal          t4, 14b
20:               jal          t5, 12b
21:               lui          s6, 797174
sub_3_6:          jal          ra, 15f
0:                jal          ra, 6f
1:                jal          ra, 3f
2:                jal          ra, 17f
3:                jal          t2, 2b
4:                jal          ra, 23f
5:                jal          ra, 21f
6:                jal          ra, 1b
7:                jal          t1, 10f
8:                jal          a1, 14f
9:                jal          sp, 16f
10:               jal          ra, 4b
11:               jal          ra, 7b
12:               jal          ra, 11b
13:               jal          sp, 12b
14:               jal          ra, 20f
15:               jal          t1, 5b
16:               jal          ra, 22f
17:               jal          ra, 18f
18:               jal          t1, 19f
19:               jal          ra, 9b
20:               jal          t1, 13b
21:               jal          a2, 0b
22:               jal          ra, 8b
23:               add          s10, a7, s3
sub_3_2:          jal          ra, 4f
0:                jal          t1, 3f
1:                jal          s2, 8f
2:                jal          t1, 6f
3:                jal          t1, 10f
4:                jal          t1, 7f
5:                jal          t1, 0b
6:                jal          t3, 5b
7:                jal          ra, 1b
8:                jal          sp, 9f
9:                jal          ra, 2b
10:               sub          s9, a1, t3
sub_3_1:          jal          ra, 0f
0:                jal          ra, 9f
1:                jal          t1, 3f
2:                jal          sp, 1b
3:                jal          t1, 7f
4:                jal          sp, 15f
5:                jal          t1, 18f
6:                jal          t1, 13f
7:                jal          ra, 8f
8:                jal          ra, 24f
9:                jal          t1, 14f
10:               jal          ra, 21f
11:               jal          s2, 20f
12:               jal          ra, 4b
13:               jal          ra, 25f
14:               jal          s5, 5b
15:               jal          sp, 19f
16:               jal          ra, 6b
17:               jal          ra, 16b
18:               jal          a4, 10b
19:               jal          ra, 22f
20:               jal          s0, 2b
21:               jal          ra, 23f
22:               jal          ra, 11b
23:               jal          ra, 12b
24:               jal          ra, 17b
25:               addi         a4, a4, -224
sub_3_10:         jal          ra, 7f
0:                jal          ra, 19f
1:                jal          t1, 2f
2:                jal          t1, 18f
3:                jal          gp, 17f
4:                jal          s0, 12f
5:                jal          ra, 15f
6:                jal          s2, 9f
7:                jal          ra, 16f
8:                jal          ra, 13f
9:                jal          ra, 4b
10:               jal          ra, 3b
11:               jal          ra, 21f
12:               jal          ra, 20f
13:               jal          t2, 22f
14:               jal          ra, 8b
15:               jal          t1, 1b
16:               jal          t1, 0b
17:               jal          ra, 6b
18:               jal          t1, 11b
19:               jal          ra, 5b
20:               jal          t1, 14b
21:               jal          s11, 10b
22:               sra          s5, s11, a6
sub_3_11:         jal          ra, 10f
0:                jal          ra, 29f
1:                jal          tp, 28f
2:                jal          ra, 17f
3:                jal          t1, 4f
4:                jal          ra, 18f
5:                jal          s6, 1b
6:                jal          ra, 30f
7:                jal          t1, 25f
8:                jal          ra, 12f
9:                jal          ra, 23f
10:               jal          ra, 27f
11:               jal          t2, 3b
12:               jal          sp, 20f
13:               jal          ra, 7b
14:               jal          ra, 26f
15:               jal          ra, 6b
16:               jal          ra, 22f
17:               jal          sp, 16b
18:               jal          ra, 13b
19:               jal          ra, 15b
20:               jal          s2, 9b
21:               jal          t1, 0b
22:               jal          ra, 24f
23:               jal          sp, 21b
24:               jal          ra, 14b
25:               jal          ra, 5b
26:               jal          ra, 11b
27:               jal          ra, 8b
28:               jal          ra, 19b
29:               jal          ra, 2b
30:               xori         s11, s9, 1948
                  and          s8, s7, s10
                  srai         tp, s1, 5
                  bge          sp, s10, 12f
                  addi         s7, a3, -1993
                  or           zero, a6, t0
                  slti         s10, s6, 1137
                  bge          s1, gp, 13f
                  bne          a5, a5, 11f
                  bne          s3, t4, 24f
                  bne          a7, gp, 20f
                  sra          s10, s3, tp
11:               slt          a3, s9, s3
12:               ori          s5, t1, 1952
13:               slti         s2, t5, -916
                  or           s6, s6, s5
                  auipc        s0, 241887
                  xori         t1, t4, -490
                  srli         s7, s6, 31
                  bgeu         s3, t3, 29f
                  addi         a4, s9, -1109
20:               srai         a5, a1, 30
                  lui          s6, 880621
                  auipc        s7, 172538
                  slli         a1, a2, 28
24:               slt          a2, s2, a3
                  srli         t4, ra, 18
                  or           gp, s3, t1
                  sltiu        gp, a0, 634
                  xori         t1, s3, -433
29:               srl          t6, s0, s4
                  slli         gp, t5, 18
                  sll          s7, s8, t2
                  addi         t2, t6, -1094
                  ori          a6, sp, -78
                  nop
                  bge          t4, t4, 53f
sub_3_7:          jal          ra, 10f
0:                jal          a1, 11f
1:                jal          sp, 6f
2:                jal          t1, 7f
3:                jal          s6, 12f
4:                jal          ra, 14f
5:                jal          t1, 18f
6:                jal          ra, 0b
7:                jal          s11, 17f
8:                jal          ra, 9f
9:                jal          t1, 5b
10:               jal          ra, 3b
11:               jal          t1, 8b
12:               jal          a4, 4b
13:               jal          s11, 16f
14:               jal          ra, 15f
15:               jal          a0, 13b
16:               jal          gp, 1b
17:               jal          ra, 19f
18:               jal          ra, 2b
19:               jal          a2, 20f
20:               sll          t5, t6, t1
                  blt          s5, a5, 56f
                  sltiu        a1, t5, -275
                  srai         s0, t4, 8
                  srl          s5, s5, s8
                  xori         t6, a2, 1711
                  bltu         a7, s8, 53f
                  bne          t6, ra, 51f
                  xori         zero, t5, 1956
                  blt          a5, t4, 61f
                  sll          t5, ra, t5
                  bge          s5, a4, 47f
47:               auipc        a3, 388795
                  or           s5, s6, tp
                  ori          zero, sp, 1646
                  xori         s8, s1, 927
51:               add          ra, s11, a4
                  slti         ra, s3, -394
53:               slli         s5, s9, 15
                  sll          s3, gp, t1
                  xor          a4, s11, a3
56:               andi         a4, sp, -569
                  xor          sp, a5, s5
                  lui          s5, 784809
                  ori          t6, s6, -939
                  slli         s7, a5, 21
61:               blt          s3, s11, 73f
                  sra          s9, s5, tp
                  lui          gp, 684249
                  sll          s10, a3, s4
                  beq          s11, s9, 84f
                  bne          t4, t5, 80f
                  slt          a0, s0, s1
                  sll          s0, a6, s4
                  xor          s8, s10, ra
                  sra          a5, t1, t5
                  andi         a6, t6, 1378
                  srai         s10, gp, 2
73:               slli         s2, t5, 22
                  srli         t2, s0, 17
                  or           a5, ra, t0
                  lui          a2, 471088
                  blt          s3, zero, 79f
                  add          s6, s7, t3
79:               slt          t4, s7, t3
80:               slti         t2, t5, 1081
                  xori         a2, s2, 1833
                  sltiu        a4, t2, 578
                  bgeu         s0, a5, 99f
84:               xor          sp, s4, a6
                  auipc        s10, 909686
                  slti         t4, gp, -307
                  add          sp, t2, tp
                  bge          a5, s11, 89f
89:               add          t2, t6, s6
                  slt          s5, a4, s3
                  sll          s11, s8, a0
                  and          t1, s2, s6
                  srli         s10, gp, 2
                  slt          t6, tp, s4
                  sub          s7, s11, s6
                  beq          tp, a5, 113f
                  lui          t2, 266004
                  auipc        s6, 685242
99:               ori          t5, a2, 1619
                  sll          s3, s4, a5
                  xor          t3, zero, gp
                  and          s3, s3, gp
                  bltu         s8, t6, 110f
                  slt          s2, s11, a4
                  srl          s3, a3, s3
                  beq          a3, s1, 122f
                  bne          s7, a5, 115f
                  srli         s6, a7, 21
                  sltu         a1, s3, s7
110:              srli         a3, s5, 1
                  srl          t1, s8, s6
                  sltiu        s6, s4, 310
113:              sra          a2, sp, t5
                  sltu         t5, s5, s5
115:              slli         a5, s11, 9
                  xor          a5, s9, gp
                  srli         s0, a4, 23
                  ori          s10, a0, -459
                  add          s0, s2, a5
                  and          a5, s10, a0
                  bne          a3, t1, 122f
sub_3_16:         jal          ra, 9f
0:                jal          s0, 15f
1:                jal          a3, 8f
2:                jal          t1, 16f
3:                jal          ra, 0b
4:                jal          tp, 25f
5:                jal          t1, 21f
6:                jal          ra, 19f
7:                jal          ra, 1b
8:                jal          t1, 26f
9:                jal          ra, 2b
10:               jal          ra, 17f
11:               jal          s3, 4b
12:               jal          s7, 10b
13:               jal          ra, 6b
14:               jal          ra, 20f
15:               jal          ra, 7b
16:               jal          a6, 18f
17:               jal          a3, 22f
18:               jal          t1, 23f
19:               jal          ra, 5b
20:               jal          ra, 11b
21:               jal          ra, 3b
22:               jal          t1, 24f
23:               jal          t1, 14b
24:               jal          gp, 13b
25:               jal          t1, 12b
26:               auipc        t5, 57035
122:              srl          t4, s0, s8
                  srai         t1, a7, 22
                  slli         ra, s3, 23
                  sll          zero, s9, s11
                  and          t3, gp, s2
                  slli         s3, a2, 30
                  andi         s11, s11, -962
                  andi         t4, s10, 916
                  blt          a6, s4, 132f
                  srai         s5, a1, 8
132:              auipc        s4, 825824
                  sltiu        s4, t5, -1549
                  xor          a5, s10, t0
                  ori          a4, t1, -115
                  lui          s8, 120351
                  xor          t1, s3, s7
                  add          s7, a0, ra
                  bltu         zero, s4, 154f
                  ori          s10, s6, -1256
                  bge          s0, ra, 142f
142:              srli         t1, t6, 22
                  xori         s11, a0, 443
                  sll          t3, a7, s6
                  blt          t3, ra, 160f
                  sltiu        s5, t6, 1454
                  ori          s8, t4, -755
                  slli         s10, a7, 21
                  and          t5, t3, a7
                  lui          s11, 22503
                  slti         t5, a5, -381
                  lui          s10, 916607
                  sltu         ra, s7, s6
154:              beq          a2, zero, 156f
                  sub          gp, t0, tp
156:              add          s9, s10, t2
                  nop
                  ori          a6, t5, 809
                  sra          s7, tp, t3
160:              bgeu         s10, zero, 162f
                  or           a4, sp, t5
162:              ori          sp, s3, -1141
                  sra          t1, s1, a7
                  add          sp, a7, a5
                  addi         s0, s1, 717
                  slt          s5, t6, s10
                  andi         a6, t2, 775
                  bge          zero, a0, 181f
                  xor          s7, s1, t6
                  blt          s8, s0, 174f
                  or           a3, gp, t4
                  bltu         t5, zero, 179f
                  sltu         tp, t3, a1
174:              xor          t4, gp, s3
                  srai         a0, a1, 12
                  srli         s7, a2, 20
                  xori         s0, t4, -1505
                  slli         t3, t3, 4
179:              andi         a6, s10, -1040
                  slti         gp, a0, 473
181:              sll          s4, s6, zero
                  and          a2, tp, a3
                  sub          zero, a6, s9
                  xori         a2, s2, 1587
                  srl          a0, a3, ra
                  blt          a4, a1, 188f
                  add          ra, t0, a3
188:              bne          t0, s10, 189f
189:              slti         s4, a5, -1915
                  or           s0, t4, s5
                  sltiu        ra, a6, -2010
                  xori         s2, a0, -923
                  blt          t0, a2, 206f
                  sll          a0, tp, s10
                  beq          s8, t0, 213f
                  bge          t1, a7, 206f
                  sra          s8, a0, sp
                  add          a0, a3, s6
                  beq          t5, zero, 206f
                  xori         a6, ra, 1541
                  and          s5, ra, s6
                  sltiu        s7, s3, -1065
                  beq          a3, a7, 218f
                  sltu         t4, a2, s6
                  beq          t3, s10, 219f
206:              andi         t1, s3, 1986
                  srl          a2, sp, s1
                  xor          tp, s4, zero
                  sltiu        t6, tp, -545
                  blt          s8, t2, 211f
211:              sltu         s8, s0, a6
                  sltu         s2, a0, a3
213:              slli         a6, s11, 31
                  slt          gp, t4, a4
                  ori          t2, s10, 1847
                  nop
                  sltu         s9, s7, s9
218:              addi         s0, t4, 853
219:              xor          s6, s8, s3
                  or           s2, zero, s11
                  or           a0, tp, tp
                  nop
                  lui          ra, 955872
                  auipc        s11, 156572
                  bne          zero, s1, 244f
                  bne          a0, zero, 242f
                  auipc        s2, 674071
                  xori         a1, s2, -696
                  bge          s8, t3, 231f
                  srai         s0, a5, 25
231:              add          a1, s11, tp
                  slli         tp, a4, 14
                  srli         ra, a5, 30
                  sra          s0, a5, ra
                  sltu         t6, a4, a3
                  xor          s4, a3, a2
                  srl          a6, a4, s2
                  sltu         a4, t2, t2
                  bltu         gp, a5, 248f
                  beq          t3, a4, 251f
                  bne          s0, s2, 258f
242:              bne          t2, ra, 250f
                  slli         a2, t1, 7
244:              bgeu         a0, a4, 245f
245:              lui          a3, 483092
                  add          s9, s8, s7
                  sub          t2, s3, s3
248:              nop
                  slli         s6, s6, 28
250:              bne          t3, tp, 265f
251:              bgeu         t1, t0, 263f
                  slli         t2, t5, 18
                  bltu         t6, a6, 265f
                  or           a3, t6, a4
                  slti         s5, s6, 1509
                  sltiu        a6, s6, -1861
                  sltiu        zero, t1, -93
258:              sub          s10, a3, s8
                  and          s7, s8, s1
                  bltu         t1, a5, 277f
                  xor          a0, s9, s2
                  slti         s8, t0, -2041
263:              nop
                  xori         tp, a3, -531
265:              sll          s8, zero, s4
                  sra          s11, s4, t5
                  sltu         a6, a1, a1
                  sub          t4, s1, s7
                  sltu         s7, a3, s0
                  sub          a5, a6, s11
                  lui          a0, 826644
                  xor          t1, a1, s1
                  srl          s8, s6, s0
                  lui          s10, 1035487
                  sll          t1, t6, tp
                  slt          s0, s1, t6
277:              bgeu         a4, t6, 278f
278:              bgeu         sp, s2, 289f
                  ori          a0, t4, 1140
                  xori         s6, a1, 918
                  sltiu        a1, t3, -876
                  bge          gp, s6, 298f
                  srli         s10, s0, 1
                  xori         a2, a5, -1528
                  add          a3, a3, a3
                  srl          s3, s6, t2
                  sub          s2, s8, a4
                  srl          s5, t3, a1
289:              bne          s4, sp, 305f
                  bge          s3, s3, 310f
                  slt          s6, t1, t4
                  bgeu         s11, ra, 294f
                  sra          s8, s1, s5
294:              bge          t5, s1, 296f
                  and          t4, s11, a4
296:              sltu         tp, a7, s8
                  ori          s0, t6, 1889
298:              bne          t2, sp, 300f
                  addi         a3, s6, 1926
300:              srai         sp, s2, 1
                  sltu         a5, t3, t3
                  srl          s0, s6, s10
sub_3_14:         jal          ra, 3f
0:                jal          ra, 14f
1:                jal          a0, 15f
2:                jal          ra, 11f
3:                jal          t1, 2b
4:                jal          gp, 20f
5:                jal          t1, 22f
6:                jal          t1, 7f
7:                jal          sp, 8f
8:                jal          ra, 1b
9:                jal          s11, 21f
10:               jal          ra, 12f
11:               jal          ra, 10b
12:               jal          s8, 0b
13:               jal          ra, 6b
14:               jal          ra, 16f
15:               jal          ra, 17f
16:               jal          ra, 19f
17:               jal          gp, 4b
18:               jal          t1, 9b
19:               jal          s9, 18b
20:               jal          t1, 5b
21:               jal          t1, 13b
22:               sltu         a5, s6, s5
                  bge          t5, s8, 305f
                  or           t6, a7, sp
305:              srai         t5, s5, 15
                  bltu         a2, s4, 317f
                  bne          a4, t2, 308f
308:              and          s8, s5, a1
                  lui          s9, 222446
310:              slti         s0, t2, 452
                  srl          s6, s0, a4
                  lui          t3, 90747
                  nop
                  nop
                  lui          t1, 244084
                  add          s5, a3, sp
317:              slti         a6, t1, -659
                  bgeu         s3, s2, 320f
                  slli         t6, a6, 25
320:              slti         sp, s11, -215
                  or           a3, t2, t5
                  bne          s4, s11, 324f
                  bne          s7, sp, 332f
324:              sltu         ra, s2, ra
                  andi         gp, sp, -1596
                  sltu         t3, a2, s5
                  beq          s9, s3, 346f
                  bltu         a6, s8, 336f
                  addi         t3, s4, -2036
                  slti         a5, t3, 1084
                  beq          s0, t2, 345f
332:              bne          a6, ra, 344f
                  srai         s9, t1, 7
                  blt          ra, zero, 347f
                  addi         s3, a6, 900
336:              andi         s0, t4, 1914
                  auipc        zero, 744371
                  andi         t6, a0, 1975
                  xor          s7, s3, ra
                  slti         t6, s7, 1336
                  sltiu        ra, s4, -490
                  slt          s4, a3, s3
                  sub          s4, s4, a1
344:              sltu         s5, a0, tp
345:              nop
346:              sra          s3, s3, a5
347:              slli         s7, s9, 2
                  nop
                  add          s7, gp, a1
                  bne          zero, s5, 362f
                  auipc        zero, 89140
                  xor          t3, a6, t4
                  lui          t5, 330197
                  add          a5, zero, s9
                  slt          s3, t1, t0
                  bne          t1, t3, 371f
                  addi         t2, tp, -388
                  ori          s6, t2, -677
                  nop
                  bltu         a5, a5, 375f
                  auipc        s11, 255669
362:              add          s4, gp, t3
                  sub          t1, s2, s3
                  bne          s10, t2, 365f
365:              blt          s8, s5, 372f
                  srli         a3, t4, 17
                  bge          s9, s4, 378f
                  bge          a6, t5, 375f
                  blt          s7, a2, 385f
                  sltu         t4, a5, s7
371:              slti         s5, s6, 1453
372:              andi         a2, a0, 1724
                  srai         s2, t2, 24
                  slti         s3, t3, -1517
375:              sltu         a1, a7, a3
                  beq          s11, t0, 392f
                  lui          a3, 325208
378:              sltiu        a5, gp, 1757
                  sltiu        a4, ra, -1362
                  srli         a2, a4, 23
                  srai         ra, s1, 8
                  ori          gp, s0, 1466
                  sub          tp, t1, t0
                  sra          a2, t4, t3
385:              slti         a2, t3, -1885
                  beq          a7, s4, 404f
                  bgeu         t1, s4, 404f
                  bge          t5, tp, 398f
                  sll          t5, gp, a4
                  and          ra, s6, s6
                  nop
392:              slti         tp, t0, -595
                  xori         s6, s11, -830
                  bne          s1, sp, 395f
395:              blt          t6, sp, 396f
396:              bltu         s11, a1, 413f
                  sltu         s7, tp, gp
398:              bgeu         s6, a3, 414f
                  lui          a5, 323571
                  andi         ra, s1, 439
                  addi         a1, a5, 1234
                  or           s2, t4, a1
                  bge          zero, a2, 407f
404:              srai         a5, sp, 2
                  xori         t5, sp, -946
                  sub          s8, s7, t1
407:              xori         s2, a3, -249
                  sltiu        a1, tp, 807
                  bltu         a2, ra, 429f
                  sub          ra, t3, a7
                  add          tp, a1, s5
                  auipc        s0, 339662
413:              sltiu        s11, t4, -1746
414:              srl          s6, s0, t4
                  nop
                  lui          s9, 167869
                  sub          tp, t1, a4
                  beq          a4, a0, 419f
419:              bge          s1, s6, 426f
                  bge          s8, t5, 424f
                  blt          t6, s4, 423f
                  and          s4, t6, ra
423:              xor          s0, tp, s8
424:              sltiu        sp, a5, -626
                  bne          s7, a7, 436f
426:              addi         t3, s5, -379
                  sll          ra, a5, a4
                  andi         a1, s2, -1779
429:              bgeu         a6, zero, 431f
                  slli         s10, sp, 26
431:              blt          sp, s7, 432f
432:              nop
                  sll          a3, s0, a5
                  sltiu        ra, t0, 1228
                  and          tp, a3, s6
436:              ori          s2, s9, 826
                  xor          a2, tp, t5
                  auipc        s6, 618450
                  bgeu         s1, s1, 456f
                  srl          s2, t0, s1
                  slt          a3, a5, a0
                  beq          s0, s6, 454f
                  blt          ra, s10, 458f
                  add          a6, s8, s0
                  bge          s1, s6, 463f
                  slt          ra, ra, a5
                  xor          t1, a5, a5
                  beq          s2, tp, 450f
                  lui          s7, 966093
450:              bne          s8, zero, 470f
                  slli         tp, t4, 29
                  lui          a6, 374153
                  sll          gp, a6, t4
454:              slli         tp, gp, 21
                  beq          a4, ra, 470f
456:              sltu         t5, a5, a5
                  sltu         a1, t5, a6
458:              slt          s10, s6, s0
                  blt          s0, t6, 460f
460:              blt          ra, a5, 473f
                  beq          a1, s5, 463f
                  sltiu        s5, s4, -1073
463:              sub          gp, t2, a6
                  slti         gp, t0, 1611
                  lui          s5, 507462
                  lui          s2, 559453
                  bge          s5, s0, 479f
                  slli         s5, a3, 17
                  add          a4, t3, tp
470:              xori         s6, s1, 1449
                  auipc        gp, 334411
                  sltu         zero, a2, a1
473:              bge          tp, t4, 490f
                  ori          s5, s7, -1757
                  bltu         s8, a3, 491f
                  bne          zero, a1, 485f
                  slli         s8, t1, 22
                  auipc        sp, 838446
479:              slti         s11, sp, 570
                  sltiu        s0, t0, 858
                  sub          a4, s7, s5
                  srl          s9, a6, s1
                  sltu         tp, t0, ra
                  lui          s0, 495253
485:              bge          a5, s9, 501f
                  slt          a2, t5, s0
                  bne          t3, t3, 498f
                  sltu         zero, s1, gp
                  srai         s11, t4, 24
490:              ori          a4, a3, 1669
491:              sll          s2, s4, a0
                  xor          gp, t4, sp
                  bgeu         s3, s9, 507f
                  srli         zero, a1, 20
                  bgeu         t1, t5, 496f
496:              bne          a6, s0, 515f
                  beq          s7, t3, 504f
498:              srli         zero, a4, 30
                  sltu         s10, s6, t1
                  slli         s0, a0, 5
501:              auipc        s7, 137766
                  bltu         t4, tp, 518f
                  sub          s0, a6, sp
504:              bge          s0, t2, 514f
                  slt          tp, a4, s2
                  add          tp, s5, s5
507:              andi         a3, t4, -248
                  bne          t5, s3, 516f
                  bgeu         a3, ra, 511f
                  slt          s10, a7, s4
511:              blt          t3, tp, 528f
                  add          s2, a5, s8
                  andi         sp, s4, 923
514:              nop
515:              andi         t1, s5, -1201
516:              slli         t2, ra, 19
                  addi         ra, s0, 926
518:              blt          sp, s2, 534f
                  srli         s7, s9, 25
                  slli         s8, a6, 9
                  add          s4, a4, a5
                  or           s4, s5, a6
                  sltu         ra, s2, s3
                  add          a1, s0, a7
                  ori          s0, t6, -584
                  or           gp, s6, t0
                  bltu         t0, t3, 529f
528:              slli         t5, zero, 0
529:              sltu         s9, s8, s0
                  andi         t5, s3, -1296
                  and          a5, s11, a5
                  bne          a7, t6, 546f
                  sltiu        a2, a6, -572
534:              bltu         s7, s5, 549f
                  sltu         t2, a7, s1
                  blt          s0, t5, 552f
                  bgeu         s5, a4, 557f
                  sub          s2, gp, s6
                  sub          a6, t6, s8
                  lui          s6, 637142
                  bne          t6, sp, 542f
542:              sll          a2, t6, a1
                  bgeu         s11, a7, 559f
                  srai         s7, s4, 11
                  xori         a3, ra, -727
546:              nop
                  bgeu         sp, a4, 557f
                  bne          tp, a7, 549f
549:              addi         t5, a4, 689
                  sltu         a5, s2, ra
                  bgeu         t3, s10, 558f
552:              xor          s7, t0, s9
                  srl          s3, a0, gp
                  andi         t1, ra, 1740
                  ori          a2, sp, 1688
                  sub          sp, s2, s5
557:              addi         t1, s6, 1003
558:              nop
559:              sra          a4, t6, t0
                  sll          s8, t3, s10
                  xori         s0, a4, -14
                  add          s0, t3, s9
                  bgeu         s10, gp, 571f
                  sltu         a6, s1, gp
                  or           s11, zero, a1
                  xor          a3, a0, a2
                  srli         s3, a0, 0
                  bltu         t0, s2, 580f
                  andi         s7, ra, -596
                  slli         s7, s2, 15
571:              bgeu         s10, s7, 582f
                  blt          ra, a6, 583f
                  xor          s2, s6, zero
                  xor          t3, s11, t4
                  bgeu         a4, s10, 579f
                  bgeu         s11, a6, 594f
                  sll          s3, a0, a0
                  srai         s4, s3, 9
579:              bne          a4, s10, 580f
580:              sra          a4, a0, t4
                  nop
582:              sub          s9, s0, t0
583:              or           a6, t1, t4
                  bne          t6, t4, 601f
                  srli         sp, s4, 11
                  bltu         s7, ra, 588f
                  addi         zero, s9, 1750
588:              xori         s9, a3, -265
                  lui          s10, 275198
                  sltu         s8, t3, a6
                  srli         s2, t4, 27
                  beq          s5, s1, 599f
                  add          gp, gp, t0
594:              xori         ra, t3, -1365
                  and          t2, s7, a2
                  slt          s7, s2, s7
                  and          a0, ra, s4
                  slti         s6, s2, 981
599:              lui          a4, 41482
                  srai         a1, a2, 28
601:              ori          a0, a3, -1776
                  xori         tp, s3, 158
                  sll          t4, s7, s1
                  xori         t3, a3, 1428
sub_3_8:          jal          ra, 8f
0:                jal          ra, 19f
1:                jal          t1, 13f
2:                jal          ra, 18f
3:                jal          ra, 15f
4:                jal          t4, 5f
5:                jal          s8, 11f
6:                jal          s5, 1b
7:                jal          t1, 2b
8:                jal          gp, 6b
9:                jal          a6, 0b
10:               jal          s9, 16f
11:               jal          t1, 3b
12:               jal          t1, 4b
13:               jal          ra, 10b
14:               jal          ra, 12b
15:               jal          ra, 7b
16:               jal          s9, 17f
17:               jal          ra, 14b
18:               jal          ra, 9b
19:               slt          s11, t5, a0
                  bne          s7, t3, 607f
                  lui          s4, 188347
607:              beq          t0, t2, 616f
                  xori         a0, t4, 1915
                  slt          s10, s6, s2
                  xori         s3, t6, -21
                  andi         ra, s11, 1438
                  bge          s3, tp, 627f
                  srl          a5, s11, a5
                  sltiu        s10, s9, -1298
                  bne          t2, t1, 628f
616:              srli         s0, s5, 31
                  sra          a1, s8, ra
                  or           s11, a4, a7
                  blt          s7, s9, 638f
                  lui          a1, 634553
                  bne          s1, a1, 633f
                  sll          s5, s11, s1
                  beq          t6, s10, 624f
624:              sltu         t4, t0, a0
                  nop
                  nop
627:              beq          s8, gp, 634f
628:              bge          s0, t1, 642f
                  bltu         s4, s0, 646f
                  bltu         s1, gp, 642f
                  xori         zero, s1, 161
                  slli         gp, t4, 28
633:              sltiu        a6, a4, 1446
634:              sltiu        ra, tp, -1394
                  or           s10, t4, s0
                  sltu         s5, t6, a1
                  bne          s1, s0, 647f
638:              xor          s10, ra, a3
                  bge          t5, t2, 655f
                  or           s2, t2, a1
                  sra          a1, a7, s11
642:              bne          a6, gp, 653f
                  xor          a6, s5, s1
                  andi         a1, a2, 623
                  srai         s3, t6, 9
646:              slti         a2, a4, 171
647:              bne          a0, a7, 667f
                  sra          sp, s0, a7
                  xor          t1, zero, s5
                  srl          s11, t0, s8
                  xor          s7, a0, s5
                  srl          s3, s6, t6
653:              slt          a3, t3, a0
                  sub          gp, a5, a3
655:              lui          t3, 579183
                  sra          s7, t2, s10
                  sll          s9, t0, s11
                  srai         a2, t4, 15
                  slli         ra, t1, 23
                  add          t3, a7, s0
                  srl          a4, t3, s5
                  sra          s3, s8, s3
                  sll          zero, s10, s3
                  xor          s5, s0, gp
                  and          s7, ra, s11
                  blt          a7, a7, 683f
667:              srli         s11, s11, 18
                  ori          a5, tp, 1681
                  slti         t5, a5, 1971
                  addi         a0, a0, 291
                  xori         t3, a2, -877
                  bltu         s10, s6, 681f
                  sll          tp, s10, s6
                  slli         s10, s1, 20
                  add          s2, t6, a1
                  auipc        s10, 181800
                  andi         s9, t6, -1188
                  blt          a4, t6, 679f
679:              slti         t2, t6, -1870
                  sra          a4, s1, a7
681:              sub          t1, s1, s5
                  lui          s6, 332862
683:              slli         sp, s0, 15
                  sra          t5, t4, s8
                  bltu         s7, s7, 687f
sub_3_3:          jal          ra, 6f
0:                jal          ra, 13f
1:                jal          ra, 7f
2:                jal          ra, 11f
3:                jal          t1, 15f
4:                jal          ra, 25f
5:                jal          ra, 12f
6:                jal          a4, 5b
7:                jal          a3, 2b
8:                jal          ra, 16f
9:                jal          ra, 0b
10:               jal          t2, 21f
11:               jal          s2, 14f
12:               jal          ra, 3b
13:               jal          ra, 10b
14:               jal          s3, 19f
15:               jal          ra, 9b
16:               jal          t1, 1b
17:               jal          t1, 8b
18:               jal          t1, 24f
19:               jal          ra, 18b
20:               jal          t1, 23f
21:               jal          t6, 20b
22:               jal          ra, 17b
23:               jal          ra, 22b
24:               jal          t5, 4b
25:               andi         ra, s11, -1412
                  xor          gp, s5, s0
687:              srli         s3, a4, 27
                  sll          s7, t0, s6
                  nop
                  bge          s2, a6, 692f
                  beq          s7, s0, 704f
692:              and          a3, t5, t6
                  sub          t3, s1, ra
                  srai         t3, ra, 15
                  srai         t5, a6, 21
                  sll          t1, zero, s7
                  addi         s3, t3, -948
                  addi         s5, a3, 1669
                  xori         a1, s0, -504
                  srai         t2, t1, 13
                  andi         a1, s1, -405
                  bne          a4, t0, 721f
                  srli         s11, s0, 0
704:              slt          s0, ra, t1
                  add          s9, t5, s6
                  bgeu         s6, s10, 707f
707:              bne          t2, a1, 709f
                  slt          s8, t5, a2
709:              slli         t6, s5, 16
                  srl          t6, a1, s10
                  sltiu        s2, a2, 816
                  bne          s1, s3, 727f
                  srl          t3, t0, t4
                  xor          s10, a3, t6
                  addi         gp, s8, -293
                  xor          s3, t2, s8
                  sra          a6, t4, s7
                  addi         t4, sp, -1047
                  auipc        t5, 767320
                  bgeu         a0, a7, 727f
721:              addi         t3, t4, -611
                  sub          s6, a3, s5
                  xori         a6, a5, 2032
                  bne          s4, a7, 740f
                  sltiu        s5, t4, -765
                  or           t2, ra, t4
727:              bltu         a5, s3, 728f
728:              addi         t4, a3, 1495
                  or           a3, s0, s1
                  bne          s2, s9, 745f
                  add          a4, t3, a7
                  sltu         sp, s1, s10
                  and          s9, s0, t2
                  srl          s6, ra, s4
                  ori          t6, a4, -570
                  srl          a0, a6, s8
                  sra          t5, t4, a2
                  bge          s7, s0, 740f
                  srai         s2, t4, 12
740:              addi         t3, a4, -961
                  or           s0, t6, a1
                  sltu         t2, a3, sp
                  slt          a1, a5, t3
                  sra          a1, s11, t6
745:              bgeu         tp, a3, 763f
                  addi         s7, s6, -1397
                  and          tp, s4, a0
                  sltiu        t6, tp, 1066
                  srl          s6, s4, s0
                  or           s0, gp, a6
                  ori          t2, a6, -1245
                  and          a3, s1, tp
                  nop
                  andi         tp, ra, 659
sub_3_j7:         jal          ra, sub_5 #jump sub_3 -> sub_5
                  slli         gp, s2, 10
                  slli         s9, a2, 15
                  nop
                  sltu         s3, a2, t3
                  slt          t3, a6, s8
                  sub          sp, t3, a7
                  slli         sp, s8, 21
                  sll          tp, s5, gp
                  lui          a4, 836946
                  bgeu         s2, a3, 773f
                  ori          a4, a4, 1154
                  sltiu        t5, s1, 670
                  srli         ra, s6, 2
                  blt          s4, a7, 765f
                  bge          ra, t3, 763f
763:              blt          t2, a5, 775f
                  auipc        s4, 449952
765:              srli         a3, a3, 22
                  srli         a2, a1, 25
                  blt          a4, ra, 778f
                  bgeu         tp, a3, 776f
                  srl          t6, t4, s4
                  bgeu         a4, tp, 786f
                  lui          a0, 86667
sub_3_0:          jal          ra, 5f
0:                jal          gp, 4f
1:                jal          s5, 7f
2:                jal          tp, 3f
3:                jal          a2, 17f
4:                jal          a5, 12f
5:                jal          ra, 6f
6:                jal          ra, 8f
7:                jal          t1, 15f
8:                jal          ra, 11f
9:                jal          t1, 14f
10:               jal          ra, 16f
11:               jal          ra, 9b
12:               jal          gp, 10b
13:               jal          ra, 0b
14:               jal          t5, 1b
15:               jal          ra, 13b
16:               jal          t2, 2b
17:               slt          a2, s0, t3
                  srli         s2, t0, 22
773:              bne          zero, s10, 775f
                  lui          s2, 167942
775:              slli         a5, t4, 25
776:              xor          s7, gp, s5
                  sltu         a0, s9, s5
778:              ori          t3, s1, -1575
                  sltu         t5, a5, a4
                  sltiu        a2, a4, 368
                  nop
                  nop
                  ori          s0, s1, -1311
                  bge          s9, a2, 804f
                  bne          sp, s2, 801f
786:              addi         t1, t5, -1655
                  bne          s2, s10, 794f
                  andi         s9, s5, 1374
                  sltu         s0, s9, ra
                  add          s9, s0, a7
                  slli         s2, a6, 2
                  bltu         s11, s3, 804f
                  srli         sp, s10, 19
794:              srli         s3, t4, 20
                  slt          ra, t0, s2
                  sll          t2, s8, s0
                  beq          a0, a6, 809f
                  sub          s4, tp, gp
                  or           s4, s1, a5
                  ori          s9, t1, 1767
801:              bgeu         s0, s5, 802f
802:              ori          tp, s8, -1864
                  nop
804:              or           a3, t1, s6
                  srl          a5, t5, ra
                  xor          s4, sp, t1
                  sltiu        s0, s0, 1409
                  bge          a1, t2, 819f
809:              lui          t4, 973724
                  and          s5, s6, s1
                  slli         ra, tp, 15
                  slt          a0, t2, t3
                  xori         t4, sp, 1405
                  ori          t2, t5, 820
                  andi         sp, t6, 515
                  bge          s3, a5, 824f
                  srl          a1, t6, a0
                  add          s11, ra, s9
819:              srli         a3, s11, 0
                  andi         t2, t0, -198
                  beq          a1, t6, 823f
                  bgeu         t0, t5, 829f
823:              bne          t0, s3, 827f
824:              beq          s4, t5, 826f
                  lui          s3, 1016573
826:              add          ra, a1, s8
827:              xori         t5, t0, -1489
                  srai         ra, s9, 27
829:              bne          s8, s7, 843f
                  bltu         s1, a2, 847f
                  sub          gp, tp, s9
                  sltu         s2, t2, t3
                  sra          s6, a6, a5
                  and          s9, s0, tp
                  bne          a3, a5, 836f
836:              auipc        tp, 620823
                  bge          s5, gp, 838f
838:              beq          a6, t3, 854f
                  bge          s10, a6, 850f
                  lui          a3, 685580
                  sltu         tp, t0, zero
                  lui          a5, 308761
843:              sll          gp, t2, t5
                  bne          s6, sp, 859f
                  xor          a0, t2, s1
                  xori         s9, a4, 1144
847:              xor          s3, t1, t2
                  sub          sp, t6, t1
                  nop
850:              auipc        s0, 985645
                  beq          a5, s6, 859f
                  add          gp, a3, s3
                  sltiu        a6, s11, -515
854:              xori         a5, sp, 1881
                  or           s5, s2, t2
                  srai         a1, s6, 5
                  ori          a0, t5, 1583
                  srl          a3, t0, t2
859:              lui          t2, 233832
                  lw           ra, 4(t0)
                  sltu         a5, a6, s6
                  addi         t0, t0, 52
                  srai         t1, a4, 3
                  slli         gp, a6, 21
                  srli         tp, tp, 9
1274:             addi x1, x1, 1
1274:             jalr x1, x1, 0
sub_4:            addi         t0, t0, -40
                  slli         s9, a3, 2
                  sltiu        s0, sp, -1374
                  and          s9, a1, s5
                  andi         sp, a1, 542
                  sw           ra, 4(t0)
                  and          t5, gp, s2
sub_4_6:          jal          ra, 9f
0:                jal          t2, 23f
1:                jal          t1, 17f
2:                jal          t1, 19f
3:                jal          t1, 24f
4:                jal          ra, 13f
5:                jal          t1, 14f
6:                jal          gp, 20f
7:                jal          t1, 10f
8:                jal          ra, 3b
9:                jal          t1, 11f
10:               jal          s0, 25f
11:               jal          t1, 12f
12:               jal          ra, 8b
13:               jal          s11, 18f
14:               jal          sp, 4b
15:               jal          t1, 7b
16:               jal          a3, 21f
17:               jal          ra, 6b
18:               jal          ra, 15b
19:               jal          ra, 0b
20:               jal          ra, 5b
21:               jal          t1, 2b
22:               jal          t3, 1b
23:               jal          t1, 22b
24:               jal          a2, 16b
25:               srli         s8, s10, 17
sub_4_10:         jal          ra, 5f
0:                jal          ra, 11f
1:                jal          ra, 4f
2:                jal          a4, 1b
3:                jal          ra, 12f
4:                jal          t1, 16f
5:                jal          ra, 6f
6:                jal          ra, 3b
7:                jal          a4, 15f
8:                jal          ra, 14f
9:                jal          t1, 13f
10:               jal          t1, 9b
11:               jal          ra, 10b
12:               jal          t1, 8b
13:               jal          ra, 2b
14:               jal          t1, 7b
15:               jal          t1, 0b
16:               auipc        t2, 789177
sub_4_11:         jal          ra, 1f
0:                jal          t1, 3f
1:                jal          s11, 5f
2:                jal          a1, 7f
3:                jal          sp, 10f
4:                jal          sp, 2b
5:                jal          gp, 8f
6:                jal          t1, 9f
7:                jal          t1, 0b
8:                jal          t1, 6b
9:                jal          ra, 4b
10:               sltiu        a4, s5, -1336
sub_4_1:          jal          ra, 10f
0:                jal          t1, 8f
1:                jal          s3, 3f
2:                jal          ra, 6f
3:                jal          t1, 2b
4:                jal          ra, 7f
5:                jal          ra, 11f
6:                jal          gp, 9f
7:                jal          t1, 5b
8:                jal          ra, 12f
9:                jal          ra, 0b
10:               jal          t2, 4b
11:               jal          sp, 1b
12:               sltiu        s3, t6, 366
sub_4_2:          jal          ra, 11f
0:                jal          t1, 5f
1:                jal          ra, 10f
2:                jal          a3, 23f
3:                jal          t1, 8f
4:                jal          ra, 18f
5:                jal          ra, 2b
6:                jal          t1, 3b
7:                jal          ra, 22f
8:                jal          gp, 12f
9:                jal          t1, 7b
10:               jal          sp, 15f
11:               jal          s5, 14f
12:               jal          t1, 16f
13:               jal          tp, 6b
14:               jal          ra, 21f
15:               jal          ra, 9b
16:               jal          s4, 4b
17:               jal          t1, 19f
18:               jal          t4, 24f
19:               jal          ra, 0b
20:               jal          ra, 17b
21:               jal          ra, 20b
22:               jal          t1, 13b
23:               jal          t1, 1b
24:               auipc        gp, 635332
sub_4_3:          jal          ra, 6f
0:                jal          s7, 5f
1:                jal          ra, 4f
2:                jal          ra, 12f
3:                jal          tp, 9f
4:                jal          a6, 0b
5:                jal          ra, 8f
6:                jal          ra, 18f
7:                jal          t5, 3b
8:                jal          s9, 16f
9:                jal          ra, 1b
10:               jal          a6, 15f
11:               jal          t1, 20f
12:               jal          ra, 7b
13:               jal          ra, 19f
14:               jal          t1, 10b
15:               jal          t1, 2b
16:               jal          ra, 13b
17:               jal          gp, 11b
18:               jal          t1, 14b
19:               jal          a0, 17b
20:               andi         t2, a0, 1775
sub_4_9:          jal          ra, 14f
0:                jal          s8, 21f
1:                jal          ra, 20f
2:                jal          a5, 27f
3:                jal          a5, 8f
4:                jal          t6, 23f
5:                jal          ra, 3b
6:                jal          ra, 26f
7:                jal          ra, 25f
8:                jal          ra, 9f
9:                jal          ra, 1b
10:               jal          t1, 17f
11:               jal          t1, 5b
12:               jal          t1, 19f
13:               jal          tp, 28f
14:               jal          ra, 16f
15:               jal          s2, 11b
16:               jal          gp, 4b
17:               jal          ra, 13b
18:               jal          gp, 15b
19:               jal          tp, 24f
20:               jal          t1, 22f
21:               jal          s2, 7b
22:               jal          ra, 12b
23:               jal          a2, 2b
24:               jal          t1, 0b
25:               jal          s5, 10b
26:               jal          ra, 18b
27:               jal          gp, 6b
28:               sub          s2, ra, s7
sub_4_4:          jal          ra, 1f
0:                jal          a3, 17f
1:                jal          ra, 5f
2:                jal          ra, 23f
3:                jal          ra, 4f
4:                jal          ra, 16f
5:                jal          ra, 19f
6:                jal          t1, 2b
7:                jal          a2, 0b
8:                jal          t1, 28f
9:                jal          ra, 21f
10:               jal          gp, 11f
11:               jal          t1, 7b
12:               jal          s2, 6b
13:               jal          ra, 18f
14:               jal          ra, 12b
15:               jal          ra, 29f
16:               jal          s9, 8b
17:               jal          t1, 9b
18:               jal          t5, 3b
19:               jal          ra, 25f
20:               jal          ra, 26f
21:               jal          a3, 24f
22:               jal          t1, 15b
23:               jal          tp, 20b
24:               jal          tp, 27f
25:               jal          tp, 13b
26:               jal          ra, 10b
27:               jal          ra, 22b
28:               jal          t1, 14b
29:               sltu         a0, sp, s2
sub_4_8:          jal          ra, 6f
0:                jal          t1, 3f
1:                jal          s9, 7f
2:                jal          ra, 5f
3:                jal          ra, 10f
4:                jal          ra, 9f
5:                jal          s0, 28f
6:                jal          s4, 21f
7:                jal          t1, 17f
8:                jal          ra, 12f
9:                jal          s7, 13f
10:               jal          t1, 19f
11:               jal          ra, 4b
12:               jal          ra, 27f
13:               jal          ra, 2b
14:               jal          t1, 24f
15:               jal          ra, 1b
16:               jal          a6, 18f
17:               jal          t1, 0b
18:               jal          ra, 23f
19:               jal          ra, 16b
20:               jal          tp, 11b
21:               jal          a0, 8b
22:               jal          sp, 15b
23:               jal          t1, 25f
24:               jal          ra, 22b
25:               jal          s6, 20b
26:               jal          ra, 14b
27:               jal          a1, 26b
28:               andi         sp, t4, 74
sub_4_0:          jal          ra, 4f
0:                jal          gp, 15f
1:                jal          s3, 2f
2:                jal          ra, 0b
3:                jal          ra, 9f
4:                jal          s5, 8f
5:                jal          t6, 13f
6:                jal          t1, 11f
7:                jal          ra, 6b
8:                jal          ra, 7b
9:                jal          ra, 14f
10:               jal          ra, 3b
11:               jal          ra, 10b
12:               jal          ra, 5b
13:               jal          sp, 1b
14:               jal          sp, 12b
15:               nop
sub_4_7:          jal          ra, 15f
0:                jal          ra, 20f
1:                jal          ra, 5f
2:                jal          ra, 1b
3:                jal          t1, 13f
4:                jal          t1, 3b
5:                jal          t1, 0b
6:                jal          ra, 21f
7:                jal          ra, 24f
8:                jal          t1, 14f
9:                jal          a3, 4b
10:               jal          ra, 17f
11:               jal          ra, 26f
12:               jal          ra, 27f
13:               jal          ra, 25f
14:               jal          ra, 2b
15:               jal          ra, 6b
16:               jal          ra, 9b
17:               jal          s7, 22f
18:               jal          ra, 19f
19:               jal          s2, 10b
20:               jal          t1, 11b
21:               jal          s0, 8b
22:               jal          t1, 16b
23:               jal          ra, 12b
24:               jal          ra, 23b
25:               jal          t4, 7b
26:               jal          t4, 18b
27:               slti         s8, t6, 770
                  bltu         a3, s11, 3f
                  and          s4, a2, s4
                  sll          a4, s6, t2
3:                xori         ra, s4, 1494
                  xor          s2, s9, t2
                  slt          t6, a4, t4
                  sltiu        a5, a1, -27
                  lui          s11, 340
                  bltu         t2, s1, 12f
                  xori         sp, s1, 555
                  srli         s9, zero, 27
                  bne          s3, s11, 29f
12:               bltu         s3, s1, 21f
                  sltu         s10, s5, a5
                  nop
                  and          a0, a5, sp
                  srli         s10, s11, 11
                  sltu         a1, s9, t3
                  blt          s2, ra, 32f
                  sltiu        t3, s9, -14
                  srl          s2, a0, s5
21:               blt          a3, sp, 29f
                  add          t5, gp, tp
                  andi         gp, ra, -1977
                  srl          s3, t2, s10
                  sra          s8, s4, ra
                  nop
                  beq          s3, s8, 32f
                  sltu         t2, s2, t3
29:               andi         s11, s3, -675
                  slti         s4, s1, 1170
                  nop
32:               and          s4, zero, s8
                  add          s11, t0, s11
                  addi         sp, t2, 376
                  sltu         s10, sp, t3
                  srai         t2, s10, 16
                  auipc        s7, 207282
                  xor          t6, a5, s7
                  and          s6, a1, zero
                  sra          s4, a0, s10
                  or           s2, a2, gp
                  xori         s5, a7, 770
                  slt          a2, t6, s4
                  sltiu        t4, t0, 1722
                  addi         t3, s8, -941
                  ori          t1, s7, 2027
                  xor          s10, s3, s8
                  bge          s5, s4, 55f
                  sra          ra, s2, ra
                  sub          t3, t5, s11
                  lui          ra, 663575
                  slti         s2, a7, 1428
                  andi         s10, t5, -581
                  srai         a1, s10, 7
55:               slti         s11, tp, -1707
                  blt          s10, s7, 65f
                  sub          zero, a4, gp
                  xori         a6, s10, -1749
                  blt          gp, a4, 63f
                  lui          s9, 42348
                  slt          a0, t0, a7
                  bgeu         zero, s9, 72f
63:               bgeu         a2, t5, 72f
                  bltu         s0, s3, 75f
65:               xor          sp, a6, a4
                  srli         s0, a0, 13
                  ori          s5, a6, -1084
                  slt          s2, t4, s2
                  xor          s8, a1, sp
                  ori          a3, a7, 1474
                  slti         ra, s6, 682
72:               srl          a1, t0, a3
                  bltu         s4, s11, 81f
                  andi         s5, s1, 1837
75:               bge          ra, s1, 78f
                  beq          a7, sp, 88f
                  bltu         a3, s10, 93f
78:               auipc        t6, 187583
                  bne          t5, t5, 83f
                  and          s11, a5, t3
81:               ori          a0, ra, -1137
                  slli         a0, s10, 11
83:               bltu         a4, t1, 103f
                  srai         a6, s4, 8
                  sub          a2, s1, s6
                  and          a1, t5, t6
                  srl          a6, a1, s10
88:               beq          a1, tp, 94f
                  beq          s3, s0, 93f
                  ori          a3, s3, 1870
                  srli         s9, gp, 2
                  auipc        s7, 699056
93:               ori          a6, a1, -99
94:               nop
                  sltiu        a6, tp, 1832
                  andi         sp, gp, 1131
                  xori         t5, a5, 1488
                  sltiu        zero, a5, -1892
                  slti         t4, sp, -392
                  sub          t6, s2, a4
                  add          t1, t2, s5
                  slti         s5, t4, -1207
103:              ori          a4, ra, 1065
                  sra          a2, zero, s10
                  srai         zero, a0, 22
                  bltu         ra, t0, 115f
                  sll          t6, t1, a0
                  srai         a6, s10, 26
                  bge          s1, a2, 118f
                  sub          a2, s3, s7
                  sra          s6, tp, a3
                  xori         a6, zero, -766
                  addi         s7, t3, -500
                  bltu         s1, t2, 131f
115:              xor          a1, t4, t2
                  xor          tp, s5, s4
                  sll          a4, t5, s1
118:              lui          a4, 246781
                  ori          s11, s4, 1160
                  beq          s8, s10, 128f
                  sltu         a6, t1, t3
                  sll          zero, tp, a1
                  srai         s0, t5, 30
                  slli         s7, a7, 25
                  ori          s6, t1, 1076
                  sltu         sp, a4, sp
                  addi         s4, s10, 1666
128:              srai         tp, t3, 23
                  slli         tp, s6, 15
                  ori          t6, gp, -1530
131:              bgeu         s0, a1, 138f
                  bne          s1, a2, 146f
                  srl          a4, t5, a2
                  sltu         t1, s0, s5
                  auipc        s11, 623690
                  bltu         s6, s11, 148f
                  beq          sp, t6, 140f
138:              xor          t1, s1, a2
                  bne          s9, sp, 149f
140:              sub          a3, a7, s7
                  sltiu        a5, t5, -456
                  slt          t1, s11, t6
                  xor          gp, a1, t3
                  add          a5, a0, a0
                  srl          a6, s8, t3
146:              srl          s11, ra, t5
                  bne          s3, t0, 159f
148:              blt          tp, t3, 159f
149:              auipc        gp, 902194
                  add          s10, a7, t5
                  bne          t5, s9, 160f
                  bge          s5, s3, 159f
                  nop
                  sra          t5, a5, a6
                  addi         a6, a5, -1213
                  srai         s5, a6, 20
                  slti         s10, t1, 263
                  nop
159:              slli         s4, s7, 5
160:              sltiu        ra, t0, 578
                  ori          a5, s6, -888
sub_4_5:          jal          ra, 0f
0:                jal          tp, 11f
1:                jal          s11, 8f
2:                jal          a2, 9f
3:                jal          s5, 1b
4:                jal          t6, 22f
5:                jal          t1, 16f
6:                jal          ra, 3b
7:                jal          t1, 13f
8:                jal          s0, 14f
9:                jal          ra, 4b
10:               jal          s11, 7b
11:               jal          s2, 20f
12:               jal          t1, 15f
13:               jal          ra, 19f
14:               jal          t3, 26f
15:               jal          gp, 10b
16:               jal          ra, 21f
17:               jal          a6, 24f
18:               jal          ra, 25f
19:               jal          t1, 2b
20:               jal          ra, 12b
21:               jal          tp, 17b
22:               jal          ra, 23f
23:               jal          ra, 5b
24:               jal          ra, 18b
25:               jal          ra, 6b
26:               slt          sp, t3, s1
                  sltu         zero, s0, s11
                  sltiu        a3, tp, 1954
                  slt          s7, zero, a0
                  add          a3, t0, s9
                  addi         a6, s11, -236
                  slti         a6, t5, 228
                  add          a5, t2, s1
                  slt          a2, ra, t0
                  addi         s6, t2, 1182
                  bgeu         gp, ra, 180f
                  xori         a3, t6, -298
                  addi         a1, s11, -2001
                  xor          tp, ra, a0
                  sltu         a0, a3, s1
                  slt          a6, tp, a1
                  auipc        a0, 602196
                  ori          s8, t3, 784
                  srl          t3, ra, gp
180:              or           s7, a2, s3
                  addi         s10, a1, 950
                  bne          a0, sp, 196f
                  nop
                  beq          t5, a3, 187f
                  xori         s7, a6, -88
                  add          s5, t6, ra
187:              addi         a2, t1, 98
                  lui          s11, 642265
                  xori         sp, s0, 882
                  srai         s6, sp, 17
                  sltu         ra, t0, t5
                  slt          sp, tp, s8
                  auipc        s6, 187451
                  slli         s11, t1, 0
                  auipc        sp, 703181
196:              srai         t4, t1, 8
                  bne          tp, a2, 217f
                  slli         s10, s7, 16
                  sltiu        a3, s9, -40
                  slt          t1, t0, ra
                  lui          t6, 905955
                  sub          s10, zero, tp
                  addi         t6, s6, 1837
                  sltiu        t6, t4, -1837
                  add          s5, tp, t1
                  xor          t5, zero, s5
                  or           a4, s3, s3
                  lui          t3, 498537
                  srli         a0, sp, 20
                  beq          t4, s0, 214f
                  bltu         t0, a3, 217f
                  and          s7, a1, a7
                  slli         s2, s3, 3
214:              sltu         t1, s11, a0
                  srl          a0, s5, a4
                  slti         s7, t5, -24
217:              sub          s2, zero, a1
                  slli         t2, zero, 26
                  add          a1, zero, t0
                  blt          t0, t3, 225f
                  bltu         s3, a0, 235f
                  sub          a0, zero, ra
                  nop
                  slt          t3, t0, s9
225:              sltiu        tp, a5, -492
                  sll          s8, a6, t1
                  srl          t2, sp, s2
                  addi         a5, a7, -1210
                  sub          s6, sp, s5
                  andi         a6, tp, 85
                  and          a3, s6, s8
                  srl          gp, t5, s6
                  srai         s2, a1, 6
                  sltiu        s0, t0, -871
235:              xori         tp, a5, -185
                  bne          a4, a4, 240f
                  slli         s5, tp, 23
                  auipc        t5, 847507
                  xori         s6, s10, 1840
240:              add          s10, a4, s8
                  sll          s6, s2, t6
                  bge          t0, s4, 252f
                  beq          a0, t3, 260f
                  add          a4, gp, s0
                  andi         s11, ra, 1414
sub_4_12:         jal          ra, 7f
0:                jal          ra, 5f
1:                jal          ra, 13f
2:                jal          t1, 15f
3:                jal          gp, 1b
4:                jal          sp, 11f
5:                jal          ra, 3b
6:                jal          a4, 16f
7:                jal          tp, 14f
8:                jal          ra, 6b
9:                jal          ra, 4b
10:               jal          ra, 9b
11:               jal          ra, 2b
12:               jal          ra, 10b
13:               jal          gp, 8b
14:               jal          t1, 12b
15:               jal          ra, 0b
16:               auipc        a2, 25493
                  nop
                  add          ra, t4, a0
                  xori         a5, t5, -1291
                  bgeu         s2, t4, 253f
                  addi         s4, a3, 1141
                  lui          a6, 878358
252:              sltu         a5, s2, t6
253:              sll          sp, a2, s2
                  or           s3, s2, t3
                  blt          s6, zero, 263f
                  sll          a1, s10, s7
                  andi         sp, s2, -2030
                  srai         s10, s9, 21
                  andi         s3, a4, 1331
260:              sll          gp, sp, s9
                  bgeu         t3, zero, 279f
                  add          s9, t6, s9
263:              xor          s2, t6, t3
                  auipc        t2, 514720
                  and          a3, t0, a7
                  slt          ra, sp, a7
                  bne          s6, s4, 276f
                  bge          a1, t5, 276f
                  auipc        s4, 79545
                  nop
                  ori          sp, t0, 1368
                  srl          t5, sp, s3
                  beq          gp, a1, 276f
                  bge          s0, a1, 286f
                  sltu         t2, a3, s2
276:              sll          a5, s5, t5
                  add          s3, t3, a2
                  sll          s11, t2, a4
279:              bltu         s1, a1, 288f
                  sra          t3, s2, s9
                  addi         sp, a4, -1709
                  xor          a2, s4, a2
                  xor          s9, s11, zero
                  srai         sp, s6, 21
                  nop
286:              ori          t3, s2, -1455
                  bgeu         t2, t5, 290f
288:              sll          a6, zero, a6
                  and          t3, t1, s6
290:              bltu         s1, s1, 299f
                  addi         tp, t5, 731
                  bltu         sp, s6, 308f
                  and          s9, a7, a7
                  andi         s6, t5, 909
                  sra          s4, a4, tp
                  and          s4, s7, a2
                  bne          t0, s2, 305f
                  srai         a5, s4, 15
299:              bne          t3, t4, 306f
                  ori          t5, a7, -157
                  srl          s6, gp, s2
                  sll          t3, s8, s3
                  sub          ra, t5, a1
                  andi         t5, a3, 1279
305:              addi         t2, t6, 1944
306:              lui          s0, 815941
                  sll          s0, s7, gp
308:              or           s7, zero, t0
                  slt          tp, s9, a1
                  blt          a2, s3, 314f
                  sltu         s2, t3, tp
                  xor          a5, sp, s9
                  slti         s4, t5, -1801
314:              srai         t5, sp, 30
                  slli         t6, a5, 9
                  srai         a0, t0, 18
                  xori         s2, a4, -1473
                  xori         s10, t6, 1719
                  xor          t3, s6, t4
                  add          t2, s3, t3
                  lui          ra, 915460
                  and          t6, ra, gp
                  and          tp, s5, tp
                  sltiu        a3, gp, 133
                  slti         s3, tp, 471
                  xori         a5, a2, -504
                  add          s0, s2, s8
                  xori         s0, a4, -184
                  slt          s10, s1, gp
                  nop
                  xori         ra, s11, 1832
                  xor          a4, s1, s3
                  xori         s6, t0, -315
                  sub          sp, s4, a2
                  sltu         ra, s7, sp
                  xori         s3, a2, -1571
                  sll          s7, gp, s4
                  and          a4, t1, a7
                  and          s4, a7, s2
                  lui          s8, 431696
                  srli         s10, s11, 29
                  sltiu        a6, t6, -1729
                  auipc        zero, 1027207
                  blt          a2, s8, 354f
                  sub          a1, t4, t2
                  sltu         s4, t3, ra
                  xori         zero, s10, -2040
                  bltu         a6, t6, 355f
                  slli         a0, a2, 11
                  lui          a6, 724606
                  or           a2, s4, tp
                  srl          s4, a0, a3
                  ori          t6, sp, -34
354:              slli         tp, a5, 28
355:              bge          ra, s11, 359f
                  sltu         t5, a5, s2
                  sub          s2, t3, s3
                  slt          a2, s5, tp
359:              srli         t4, a4, 14
                  addi         a1, s2, -1318
                  blt          a1, s11, 375f
                  blt          t3, s3, 370f
                  xor          s0, s3, s2
                  sra          t3, s5, s4
                  xor          s7, t3, s5
                  slli         t5, t0, 17
                  srai         a2, a6, 14
                  beq          s8, s2, 377f
                  add          s0, s7, t6
370:              slli         t6, s9, 17
                  addi         a1, t3, 1364
                  or           zero, s9, t6
                  lui          s2, 999680
                  sltiu        a5, a3, -1433
375:              slti         a3, t5, 704
                  ori          s4, s4, -1909
377:              andi         a5, s10, 1562
                  sltu         t1, s5, sp
                  xori         t1, t4, 1693
                  xori         a5, s11, 1272
                  xor          s11, t5, s11
                  srl          s7, t4, zero
                  slli         a4, t6, 6
                  add          t1, a3, s8
                  sltu         a1, a2, t5
                  andi         s2, a7, -1538
                  srli         s11, s5, 7
                  srl          s10, s6, s0
                  andi         s5, s8, 1886
                  sll          t6, s10, t0
                  addi         s6, tp, 1842
                  bge          t3, tp, 406f
                  slli         s6, tp, 15
                  srai         t6, sp, 24
                  and          s2, t0, a5
                  xor          a2, a2, s11
                  andi         sp, a1, -270
                  nop
                  or           t5, a3, ra
                  srl          gp, s3, a5
                  and          a2, s9, t3
                  srl          s2, ra, ra
                  srli         t4, t1, 30
                  sub          s3, s4, s4
                  xori         a2, a3, 37
406:              sll          a3, s3, t3
                  ori          s5, s11, 1254
                  and          a1, s4, t3
                  bltu         s5, a1, 412f
                  sra          a3, tp, sp
                  bne          s9, s2, 429f
412:              slti         a4, s8, -136
                  slti         s7, s0, -1116
                  beq          a4, s8, 422f
                  nop
                  bge          s3, a7, 432f
                  or           a6, sp, a1
                  bge          t4, zero, 435f
                  bge          a2, t3, 426f
                  slti         tp, gp, 1940
                  xor          gp, a5, s4
422:              addi         a0, s2, 1864
                  lui          a4, 736926
                  addi         s0, t1, 174
                  srli         t1, sp, 3
426:              addi         t2, t5, 1059
                  auipc        t5, 946011
                  blt          a3, t1, 431f
429:              andi         s4, a4, -1980
                  sra          s5, a1, a1
431:              blt          s3, a5, 443f
432:              lui          a3, 913679
                  bltu         a2, s8, 445f
                  sub          sp, gp, t5
435:              bltu         tp, a1, 444f
                  srai         t4, a3, 18
                  add          t6, s10, s3
                  bltu         s7, a1, 442f
                  addi         s11, sp, 506
                  srli         zero, a5, 14
                  bltu         s4, t0, 452f
442:              add          s4, s6, a6
443:              bge          a2, ra, 453f
444:              sltiu        tp, a7, 1871
445:              beq          a6, t5, 451f
                  add          t5, a5, s9
                  beq          s2, s9, 467f
                  sll          s5, s11, t1
                  ori          t5, t5, 839
                  sltiu        s9, t0, -1420
451:              slli         a3, s1, 6
452:              auipc        s11, 761999
453:              and          t6, t0, t1
                  sltu         s5, sp, t0
                  bgeu         t6, s3, 459f
                  andi         s8, a3, -1724
                  slli         t6, t6, 0
                  bltu         a4, t5, 467f
459:              beq          a4, a5, 468f
                  addi         a5, t2, 1111
                  or           s3, a0, t5
                  ori          a5, s7, -1502
                  sltiu        s0, s2, 330
                  auipc        t5, 613378
                  sltu         a2, s9, t6
                  srli         t4, t3, 30
467:              beq          t1, s2, 470f
468:              andi         t5, s5, -145
                  lui          s6, 384216
470:              blt          s6, s5, 479f
                  and          a4, t5, a3
                  srl          s7, a1, a6
                  slti         s4, s11, -1246
                  nop
                  add          s11, gp, t6
                  add          s10, gp, t4
                  srli         s11, tp, 27
                  bge          a2, t5, 488f
479:              bne          s6, a7, 483f
                  slli         s6, t2, 10
                  beq          s11, t5, 489f
                  blt          s5, s11, 487f
483:              sra          s5, s2, a4
                  srli         a6, s5, 19
                  blt          a7, s2, 497f
                  xor          a0, s5, t6
487:              bgeu         s8, s8, 496f
488:              and          s7, a3, gp
489:              sltiu        s5, t0, -1699
                  sra          a0, s2, a2
                  add          a1, ra, s2
                  bne          s9, t5, 501f
                  bge          a1, s4, 511f
                  bltu         t0, a2, 514f
                  lui          s10, 1008372
496:              srai         a1, t4, 1
497:              slti         t6, a5, 142
                  slti         s3, s8, -1419
                  addi         a2, t6, -1778
                  add          s5, a4, s9
501:              slli         s2, s2, 10
                  addi         s5, a6, -1526
                  bne          a7, tp, 506f
                  srl          s4, a7, s8
                  srai         s0, t6, 23
506:              blt          gp, s10, 513f
                  nop
                  sra          t6, gp, t2
                  blt          s5, t1, 517f
                  bltu         t3, s5, 517f
511:              xori         t5, t4, -1764
                  andi         t3, s1, 1845
513:              bltu         t6, a6, 522f
514:              bge          s10, t6, 531f
                  slli         s3, a2, 30
                  nop
517:              slt          s5, s5, a6
                  srai         t2, s1, 31
                  bne          s2, t4, 522f
                  xori         a1, a2, -1220
                  andi         s8, t3, 1472
522:              slli         tp, gp, 19
                  srl          t2, t5, ra
                  bne          s9, s7, 532f
                  srli         a0, sp, 10
                  auipc        s4, 19476
                  srl          s11, s2, s10
                  bge          a4, t2, 538f
                  sll          s0, t4, a0
                  or           a5, t5, s2
531:              sub          t5, s2, a0
532:              and          a1, a5, s8
                  blt          a4, zero, 536f
                  bltu         a5, t6, 538f
                  srai         t1, s1, 7
536:              slti         a6, a5, 930
                  bne          a7, s10, 541f
538:              srl          s7, a1, a7
                  sll          ra, a0, t2
                  xor          t5, t1, s9
541:              add          t2, a6, t0
                  bne          s4, a5, 551f
                  slti         sp, s3, -659
                  nop
                  bgeu         s11, a4, 549f
                  blt          zero, ra, 560f
                  sltiu        a1, a7, 1173
                  beq          t0, t6, 562f
549:              sll          ra, a3, a4
                  bge          gp, zero, 560f
551:              blt          tp, s10, 556f
                  add          s9, s1, s3
                  lui          a5, 647990
                  sll          t6, t6, s11
                  bne          s8, t3, 571f
556:              srl          a2, s3, t5
                  slti         a0, tp, 714
                  sra          s4, a0, a0
                  bltu         zero, s1, 570f
560:              andi         t2, a3, -260
                  bge          a3, a1, 569f
562:              auipc        s4, 760037
                  srl          t3, s8, t3
                  slt          a2, s7, s3
                  andi         t6, t5, 1540
                  and          s11, s2, t6
                  add          t3, t2, ra
                  bne          t5, s3, 572f
569:              lui          t1, 434961
570:              or           tp, s5, t5
571:              sltu         s8, zero, s6
572:              bgeu         s3, t2, 581f
                  ori          s2, s6, -1652
                  bltu         sp, a6, 580f
                  srli         s9, s5, 12
                  sra          zero, s6, zero
                  xori         t4, s10, 398
                  and          t5, s7, s5
                  sub          zero, a5, t3
580:              blt          a4, a0, 592f
581:              srli         s4, s9, 25
                  sltiu        t4, a2, -292
                  srai         gp, s1, 12
                  sltiu        a0, a1, 381
                  beq          ra, t4, 594f
                  sll          a4, t5, ra
                  auipc        t3, 42596
                  bltu         t3, s3, 591f
                  srli         t5, a5, 11
                  srai         s3, s10, 12
591:              bgeu         t2, a1, 599f
592:              or           sp, t5, s11
                  blt          a6, s0, 610f
594:              bgeu         t2, t4, 600f
                  and          gp, t1, a1
                  srl          s7, tp, s9
                  sra          s7, t0, a4
                  srli         gp, s6, 15
599:              bltu         a7, s5, 604f
600:              add          a2, s6, gp
                  srli         s11, s2, 8
                  nop
                  andi         a3, gp, 202
604:              srl          t4, tp, s5
                  nop
                  beq          t5, t4, 616f
                  srai         sp, s1, 4
                  srl          a0, s5, t4
                  or           gp, t0, s1
610:              xori         zero, tp, -1969
                  slti         ra, s7, 1463
                  slt          s6, t4, s3
                  srli         t2, t5, 15
                  addi         s8, a2, 692
                  srai         s11, s0, 2
616:              bge          t5, a5, 620f
                  bltu         a6, s3, 629f
                  slt          t1, t1, t2
                  auipc        t1, 465644
620:              blt          a4, s3, 628f
                  blt          a2, s4, 639f
                  bltu         t3, a1, 625f
                  sub          a5, s11, s2
                  srl          t2, s6, s6
625:              slli         t4, a0, 18
                  auipc        s3, 302965
                  slli         t4, t2, 7
628:              and          s10, a3, t5
629:              and          a5, t3, a2
                  srai         zero, tp, 17
                  ori          s10, zero, -1275
                  add          t3, s2, t5
                  sll          t5, s7, t5
                  bge          t0, s11, 638f
                  add          a6, t6, a1
                  addi         s6, s4, -233
                  slt          sp, s11, s5
638:              auipc        t6, 287346
639:              sra          gp, s7, a1
                  sub          gp, s0, sp
                  ori          t1, a0, 1043
                  add          a4, a5, a1
                  sltu         sp, t2, tp
                  nop
                  srai         s11, s6, 29
                  nop
                  add          s8, t3, s1
                  or           a4, t0, a2
                  bltu         a4, s10, 657f
                  slti         t4, zero, 275
                  sra          a6, s9, ra
                  slti         s8, t2, -750
                  sltu         a4, gp, s2
                  srli         a0, s10, 13
                  slti         a1, s2, -842
                  bge          a6, s11, 672f
657:              and          t2, s4, a2
                  sra          t4, s6, s5
                  slli         s10, a0, 21
                  or           a0, s6, zero
                  bne          s7, s8, 681f
                  srli         a3, s5, 11
                  xor          t1, a3, t1
                  blt          zero, t4, 674f
                  beq          t3, s7, 676f
                  sra          a0, a5, s6
                  or           t3, ra, zero
                  add          a2, s0, a4
                  slti         t2, t0, -466
                  and          a5, t3, t5
                  sltiu        s10, s2, 539
672:              andi         s0, s0, 974
                  andi         t3, a3, 769
674:              bne          s5, t0, 687f
                  andi         s8, s3, 113
676:              ori          s8, sp, -345
                  bge          a6, a5, 681f
                  or           a6, ra, t4
                  bge          a3, t5, 683f
                  andi         a4, a1, 1194
681:              sub          t6, t3, t3
                  sub          a6, ra, t1
683:              xori         t1, s6, 90
                  add          t6, a2, s5
                  sll          s8, a7, a0
                  bge          zero, a4, 687f
687:              srai         s4, zero, 19
                  sltiu        a1, a7, -1779
                  sll          t3, a0, a4
                  and          s5, t6, s8
                  srli         s10, t2, 19
                  addi         a3, s10, -1018
                  lw           ra, 4(t0)
                  sra          t5, s0, t0
                  lui          t6, 383429
                  addi         t0, t0, 40
                  srli         t1, t5, 10
1007:             addi x15, x1, 0
1007:             jalr x15, x15, 0
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
mmode_intr_vector_1:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x9, x5, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_2:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x9, x5, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_3:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x9, x5, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_4:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x9, x5, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_5:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x9, x5, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_6:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x9, x5, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_7:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x9, x5, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_8:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x9, x5, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_9:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x9, x5, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_10:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x9, x5, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_11:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x9, x5, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_12:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x9, x5, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_13:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x9, x5, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_14:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x9, x5, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_15:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x9, x5, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

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
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x9, x5, zero
                  csrr x25, 0x341 # MEPC
                  csrr x25, 0x342 # MCAUSE
                  li x22, 0x3 # BREAKPOINT
                  beq x25, x22, ebreak_handler
                  li x22, 0x8 # ECALL_UMODE
                  beq x25, x22, ecall_handler
                  li x22, 0x9 # ECALL_SMODE
                  beq x25, x22, ecall_handler
                  li x22, 0xb # ECALL_MMODE
                  beq x25, x22, ecall_handler
                  li x22, 0x1
                  beq x25, x22, instr_fault_handler
                  li x22, 0x5
                  beq x25, x22, load_fault_handler
                  li x22, 0x7
                  beq x25, x22, store_fault_handler
                  li x22, 0xc
                  beq x25, x22, pt_fault_handler
                  li x22, 0xd
                  beq x25, x22, pt_fault_handler
                  li x22, 0xf
                  beq x25, x22, pt_fault_handler
                  li x22, 0x2 # ILLEGAL_INSTRUCTION
                  beq x25, x22, illegal_instr_handler
                  csrr x22, 0x343 # MTVAL
                  1: la x17, test_done
                  jalr x1, x17, 0

ecall_handler:    
                  la x25, _start
                  sw x0, 0(x25)
                  sw x1, 4(x25)
                  sw x2, 8(x25)
                  sw x3, 12(x25)
                  sw x4, 16(x25)
                  sw x5, 20(x25)
                  sw x6, 24(x25)
                  sw x7, 28(x25)
                  sw x8, 32(x25)
                  sw x9, 36(x25)
                  sw x10, 40(x25)
                  sw x11, 44(x25)
                  sw x12, 48(x25)
                  sw x13, 52(x25)
                  sw x14, 56(x25)
                  sw x15, 60(x25)
                  sw x16, 64(x25)
                  sw x17, 68(x25)
                  sw x18, 72(x25)
                  sw x19, 76(x25)
                  sw x20, 80(x25)
                  sw x21, 84(x25)
                  sw x22, 88(x25)
                  sw x23, 92(x25)
                  sw x24, 96(x25)
                  sw x25, 100(x25)
                  sw x26, 104(x25)
                  sw x27, 108(x25)
                  sw x28, 112(x25)
                  sw x29, 116(x25)
                  sw x30, 120(x25)
                  sw x31, 124(x25)
                  la x17, write_tohost
                  jalr x0, x17, 0

instr_fault_handler:
                  add x5, x9, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

load_fault_handler:
                  add x5, x9, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

store_fault_handler:
                  add x5, x9, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

ebreak_handler:   
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x5, x9, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

illegal_instr_handler:
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x5, x9, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x25, 0x300 # MSTATUS;
                  csrr  x25, 0x304 # MIE;
                  csrr  x25, 0x344 # MIP;
                  csrrc x25, 0x344, x25 # MIP;
                  add x5, x9, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
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
