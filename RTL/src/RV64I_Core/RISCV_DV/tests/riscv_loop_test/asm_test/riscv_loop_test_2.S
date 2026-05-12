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
                  li x22, 0x40000100
                  csrw 0x301, x22
kernel_sp:        
                  la x20, kernel_stack_end

trap_vec_init:    
                  la x22, mtvec_handler
                  ori x22, x22, 0
                  csrw 0x305, x22 # MTVEC

mepc_setup:       
                  la x22, init
                  csrw 0x341, x22

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x22, 0x1800
                  csrw 0x300, x22 # MSTATUS
                  mret
init:             
                  li x0, 0x9
                  li x1, 0x0
                  li x2, 0x0
                  li x3, 0x80000000
                  li x4, 0x7
                  li x5, 0xf611f0e8
                  li x6, 0x1fd7d9d1
                  li x7, 0xf0e772ee
                  li x8, 0x80000000
                  li x9, 0xe
                  li x10, 0x5e4813b9
                  li x11, 0x0
                  li x12, 0x80000000
                  li x13, 0xf8b6dac9
                  li x14, 0xf15f17b9
                  li x15, 0xf3acf38a
                  li x16, 0x373651dc
                  li x17, 0x0
                  li x19, 0xfb4ad715
                  li x21, 0x635b060f
                  li x22, 0x2152bbfd
                  li x23, 0x80000000
                  li x24, 0x80000000
                  li x25, 0xf6ae12f3
                  li x26, 0x0
                  li x27, 0x80000000
                  li x28, 0x80000000
                  li x29, 0x80000000
                  li x30, 0x80000000
                  li x31, 0x0
                  la x18, user_stack_end
main:             la           a6, sub_3
                  and          t6, sp, s6
                  ori          sp, s7, -1328
                  sll          a3, s6, s6
                  slli         t1, s11, 28
                  and          s7, s2, t1
                  or           s3, ra, a2
                  sll          t6, t2, s7
                  auipc        sp, 446333
                  addi         a6, a6, 884
                  sltu         a3, s7, a0
                  slt          a1, t3, t6
main_j3:          jalr         ra, a6, -883 #jump main -> sub_3
                  addi         sp, zero, 9 #init loop 1 counter
                  addi         t6, zero, 8 #init loop 1 limit
main_2_1_t:       andi         t0, t5, -1293
                  addi         sp, sp, -7 #update loop 1 counter
                  addi         a3, zero, 8 #init loop 0 counter
                  addi         a2, zero, 6 #init loop 0 limit
main_2_0_t:       sltu         s11, t2, a1
                  addi         a3, a3, -5 #update loop 0 counter
                  bgeu         a3, a2, main_2_0_t #branch for loop 0
                  bgeu         sp, t6, main_2_1_t #branch for loop 1
                  ori          a7, s3, -503
                  addi         t2, zero, 4 #init loop 1 counter
                  slti         t4, tp, 2027
                  slli         sp, a7, 20
                  srli         s0, s8, 8
                  and          sp, s8, s4
                  addi         s8, zero, 10 #init loop 1 limit
main_1_1_t:       and          t1, s10, s8
                  srai         s1, sp, 0
                  xor          tp, s10, s3
                  nop
                  slli         a3, s10, 22
                  and          a6, a3, a7
                  xori         a2, s10, -929
                  addi         t2, t2, 1 #update loop 1 counter
                  addi         t3, zero, -10 #init loop 0 counter
                  add          a4, t0, a6
                  sra          s5, s9, s10
                  sra          s0, t2, gp
                  addi         s9, zero, -17 #init loop 0 limit
main_1_0_t:       and          s1, a5, a5
                  srl          t4, t5, t6
                  sra          t6, s3, t4
                  sub          sp, t5, a1
                  addi         s6, zero, 1033
                  xori         s1, s11, 551
                  sltu         a0, t3, t6
                  sra          a0, s8, t1
                  xori         t0, a3, -609
                  addi         t3, t3, -7 #update loop 0 counter
                  xori         a7, gp, -421
                  bge          t3, s9, main_1_0_t #branch for loop 0
                  blt          t2, s8, main_1_1_t #branch for loop 1
                  sra          a2, a1, tp
                  addi         t4, zero, 8 #init loop 0 counter
                  sltiu        s9, s6, 174
                  add          s10, a3, sp
                  slt          s9, a3, t1
                  andi         a4, sp, -696
                  nop
                  auipc        a7, 234465
                  sltiu        s10, a2, 1606
                  sra          a1, a6, s9
                  addi         t6, zero, 8 #init loop 0 limit
                  ori          a3, t4, 728
main_4_0_t:       addi         s6, s10, -1303
                  xor          sp, s3, zero
                  sll          s11, s3, s7
                  srai         t5, s5, 14
                  andi         s5, a1, 1310
                  addi         t4, t4, -7 #update loop 0 counter
                  nop
                  addi         s8, gp, 1408
                  sll          t5, s2, s9
                  srai         a3, s2, 0
                  sltiu        gp, s2, -1634
                  bgeu         t4, t6, main_4_0_t #branch for loop 0
                  xor          a7, sp, a4
                  addi         a0, zero, 10 #init loop 0 counter
                  sltiu        s10, t5, 1585
                  slli         s6, a7, 24
                  slt          s11, a0, zero
                  addi         s5, zero, 10 #init loop 0 limit
main_0_0_t:       ori          t1, a4, -1145
                  lui          s10, 391700
                  addi         a0, a0, -8 #update loop 0 counter
                  sltu         t0, s4, s7
                  bgeu         a0, s5, main_0_0_t #branch for loop 0
                  srl          a4, ra, s9
                  addi         ra, zero, -2 #init loop 1 counter
                  and          t3, s7, s6
                  addi         s5, zero, -4 #init loop 1 limit
main_3_1_t:       sltu         t5, s4, s2
                  addi         ra, ra, -6 #update loop 1 counter
                  addi         s1, zero, 4 #init loop 0 counter
                  sltiu        a0, s7, 968
                  addi         a3, zero, 18 #init loop 0 limit
                  and          a1, a1, t4
                  addi         zero, a5, 236
main_3_0_t:       slti         s0, t0, -613
                  srli         s9, t5, 27
                  addi         s1, s1, 7 #update loop 0 counter
                  beq          s1, a3, main_3_0_t #branch for loop 0
                  nop
                  addi         s10, s9, 1881
                  bge          ra, s5, main_3_1_t #branch for loop 1
                  slt          zero, a5, s3
                  addi         s10, zero, 2 #init loop 0 counter
                  slt          s0, s0, tp
                  addi         s5, zero, -1 #init loop 0 limit
                  andi         t5, zero, -189
main_9_0_t:       xor          t6, s2, s0
                  addi         s10, s10, -1 #update loop 0 counter
                  bge          s10, s5, main_9_0_t #branch for loop 0
                  xor          t5, s6, ra
                  addi         a3, zero, 2 #init loop 0 counter
                  addi         s8, zero, 14 #init loop 0 limit
                  auipc        s0, 229257
                  addi         s6, s9, -269
                  add          t3, tp, a0
                  srli         a6, t5, 11
                  sll          t5, a5, t4
main_5_0_t:       xori         s10, a5, -618
                  lui          s0, 712504
                  addi         a3, a3, 6 #update loop 0 counter
                  sltiu        a6, t1, -1252
                  bne          a3, s8, main_5_0_t #branch for loop 0
                  addi         s11, s6, 105
                  addi         s1, zero, 10 #init loop 0 counter
                  nop
                  addi         s11, zero, 9 #init loop 0 limit
                  slt          t5, sp, s4
main_8_0_t:       xor          s3, a7, t3
                  and          a0, a1, s11
                  addi         s1, s1, -8 #update loop 0 counter
                  or           ra, s8, a7
                  ori          s3, zero, -281
                  add          tp, t3, s8
                  auipc        t1, 638873
                  slti         t0, a1, 1205
                  ori          a0, a1, 1671
                  bgeu         s1, s11, main_8_0_t #branch for loop 0
                  xori         a2, a0, -2018
                  srai         s9, a5, 0
                  add          ra, t6, a5
                  nop
                  or           t2, a6, tp
                  nop
                  blt          t4, t6, 18f
                  bne          a3, zero, 9f
                  sub          zero, t6, t1
                  sll          sp, zero, s0
9:                sltiu        a6, a7, 514
                  srai         s3, s3, 11
                  srli         gp, s1, 11
                  slti         sp, s6, -761
                  or           t2, s10, t3
                  and          t2, s1, a3
                  slti         s10, s8, 741
                  andi         sp, zero, -974
                  beq          a7, s1, 36f
18:               bne          s9, t2, 37f
                  sub          a2, s3, s7
                  xori         gp, s8, -1072
                  sub          zero, s0, a6
                  slt          zero, a7, s7
                  addi         tp, s4, 1658
                  beq          a4, t0, 28f
                  lui          a3, 378784
                  srai         s0, t6, 5
                  blt          a2, s7, 35f
28:               xori         t1, s0, -83
                  bgeu         sp, a4, 33f
                  sra          s5, zero, s5
                  xor          tp, t4, s1
                  addi         t6, zero, 7 #init loop 1 counter
                  auipc        t5, 670782
                  srai         zero, s7, 11
                  add          s6, a7, t4
                  ori          s8, a6, 1445
                  andi         s6, a2, -1093
                  addi         a4, zero, -1703
                  addi         s1, zero, 17 #init loop 1 limit
                  auipc        t5, 911340
                  slti         s5, t0, 1842
                  add          a6, tp, s5
main_7_1_t:       xori         a3, s3, -1016
                  addi         t6, t6, 5 #update loop 1 counter
                  addi         a7, zero, -8 #init loop 0 counter
                  addi         sp, zero, -18 #init loop 0 limit
                  sltu         t0, tp, s10
main_7_0_t:       and          t1, a5, a4
                  sra          t0, t1, t1
                  addi         a7, a7, -1 #update loop 0 counter
                  sltiu        a6, t4, 561
                  bne          a7, sp, main_7_0_t #branch for loop 0
                  bltu         t6, s1, main_7_1_t #branch for loop 1
                  addi         t5, t1, -362
                  blt          a7, s2, 42f
33:               bge          sp, s9, 39f
                  sltiu        a7, gp, 1282
35:               srl          t4, a1, s0
36:               srli         s0, t4, 23
37:               sub          a7, t4, t2
                  add          s7, t4, zero
39:               slti         t0, s11, 991
                  sll          t1, a5, t5
                  auipc        s6, 766008
42:               nop
                  or           s11, s3, a6
                  andi         s7, tp, 1788
                  add          s10, tp, a2
                  beq          t3, s11, 51f
                  bgeu         a5, a7, 57f
                  ori          a0, a6, -742
                  lui          s11, 55358
                  nop
51:               sltu         t3, t5, t3
                  and          s10, t3, s7
                  sltu         sp, a4, s10
                  addi         s5, s7, -319
                  sra          tp, s11, t5
                  slli         t3, s4, 24
57:               ori          t5, a5, -1553
                  lui          s6, 629296
                  bltu         s2, t5, 69f
                  auipc        s11, 1022568
                  addi         zero, sp, -153
                  sltu         s3, a2, a3
                  srl          a2, zero, a2
                  sltu         sp, s2, s11
                  slli         a2, t1, 6
                  and          zero, a7, t4
                  blt          a3, s6, 71f
                  bne          s2, gp, 84f
69:               bltu         t6, a1, 78f
                  auipc        s10, 534782
71:               lui          s7, 598325
                  sltu         s9, s8, s11
                  auipc        a6, 934054
                  xor          s7, sp, t4
                  auipc        sp, 636734
                  sltu         a0, s7, a3
                  slti         t1, gp, 1291
78:               sltu         a3, t2, a7
                  sltu         a2, sp, t1
                  sltiu        s7, t1, 1716
                  or           a1, zero, s4
                  sltu         tp, a2, t6
                  auipc        s6, 140354
84:               add          tp, s1, s1
                  sltiu        t5, a1, 1814
                  auipc        s9, 720430
                  slli         t5, a6, 6
                  bne          a3, zero, 100f
                  nop
                  lui          s0, 987661
                  slli         s10, s3, 20
                  nop
                  add          s8, zero, gp
                  nop
                  srl          s10, ra, t5
                  sltu         s8, t5, s6
                  srl          zero, a3, a7
                  xori         a1, s4, -454
                  bltu         s1, s5, 100f
100:              andi         t0, t4, 1595
                  beq          a6, s0, 120f
                  or           s5, a4, a0
                  and          a7, s10, t2
                  andi         gp, s5, 666
                  bltu         t2, s6, 124f
                  blt          t0, t2, 116f
                  bne          t4, t5, 112f
                  srai         gp, ra, 26
                  srl          s5, t3, a2
                  srli         a0, s1, 29
                  or           ra, a4, s10
112:              sra          a3, gp, s0
                  sltu         ra, s5, t4
                  add          a1, t6, s4
                  addi         s9, a7, 1033
116:              add          s9, s8, t0
                  ori          t5, t4, -533
                  slt          t6, s8, s2
                  srl          s6, t4, t5
120:              sra          s11, s11, t2
                  srai         a4, zero, 12
                  bge          t0, s7, 142f
                  add          tp, s10, t3
124:              bgeu         s9, t5, 125f
125:              sll          a2, a4, t3
                  bgeu         a7, s8, 144f
                  srli         s7, gp, 1
                  addi         t1, a4, -1403
                  xor          a7, a5, t2
                  sra          s3, s3, sp
                  blt          gp, a1, 150f
                  slti         s3, t1, 639
                  blt          a4, a6, 146f
                  bgeu         a0, t5, 145f
                  srai         s8, a6, 29
                  slti         s9, t6, 1423
                  andi         t3, t1, -1551
                  slli         s1, sp, 18
                  sub          a4, a0, s5
                  or           t2, s8, a7
                  lui          s11, 98487
142:              auipc        t4, 606339
                  addi         s8, s3, 1494
144:              bgeu         s11, t1, 164f
145:              sub          a1, s9, ra
146:              andi         s9, sp, -1819
                  bne          s0, t6, 159f
                  nop
                  xori         t6, t5, 1297
150:              srai         s5, ra, 13
                  slt          a0, t6, s0
                  sltu         sp, t4, s0
                  slt          a6, zero, s8
                  addi         s10, s8, -763
                  xor          a7, zero, s4
                  lui          a6, 165137
                  xori         t5, a6, -1105
                  lui          tp, 987392
159:              slli         t4, ra, 31
                  ori          t5, s11, -1122
                  blt          s1, a2, 174f
                  sltiu        s10, t2, -1009
                  slti         a6, a4, -1012
164:              srl          s11, gp, a3
                  srli         s0, t4, 31
                  addi         a1, a3, -1650
                  la           t4, sub_2
                  xori         tp, s8, 850
                  addi         t4, t4, -987
                  sltu         t0, s1, s1
                  sltiu        a7, t4, -1498
                  and          a4, a3, s11
                  srli         a6, sp, 23
                  sll          ra, a3, s2
                  lui          t5, 925417
                  ori          a1, s9, -1814
main_j1:          jalr         ra, t4, 987 #jump main -> sub_2
                  and          s3, gp, s3
                  xor          s10, zero, t6
                  sltu         t3, t0, s2
                  bge          s9, t5, 189f
                  ori          zero, s6, 288
                  auipc        s3, 1025339
                  sltiu        ra, a3, -121
174:              bltu         s5, s5, 193f
                  bge          a2, sp, 185f
                  xor          s9, s1, zero
                  sltu         a7, s8, a3
                  nop
                  bge          t1, s5, 192f
                  sra          s0, t2, tp
                  slti         a1, t2, 487
                  xor          t4, a1, a0
                  blt          s6, t3, 202f
                  slli         a2, s1, 26
185:              bge          t6, a6, 193f
                  srli         a6, s1, 24
                  add          s0, t4, s9
                  sra          t4, a6, t3
189:              nop
                  sra          t4, t2, a3
                  srli         a7, t2, 0
192:              sub          a4, s8, s8
193:              bge          s3, a1, 206f
                  sltiu        a2, zero, -608
                  slti         t0, s6, 1470
                  bgeu         t6, gp, 199f
                  blt          a6, a4, 201f
                  slli         sp, s7, 2
199:              sll          a6, sp, sp
                  bgeu         s3, gp, 204f
201:              slt          gp, tp, s7
202:              xor          a4, s6, t5
                  bltu         s1, s0, 222f
204:              bne          a6, s5, 220f
                  bgeu         t4, t5, 215f
206:              auipc        a1, 810303
                  bgeu         t0, zero, 226f
                  beq          s2, t1, 213f
                  slli         t2, s9, 7
                  ori          s10, t6, 287
                  slli         a4, tp, 15
                  slli         t0, a0, 16
213:              bge          s11, t1, 233f
                  addi         gp, zero, 801
215:              sra          sp, s6, a6
                  bgeu         sp, t0, 227f
                  bgeu         a7, a7, 226f
                  srai         t6, t5, 3
                  or           a0, a6, t5
220:              bge          s4, t1, 226f
                  bgeu         a7, a4, 239f
222:              sll          t3, t5, sp
                  slli         tp, t5, 12
                  slti         s11, s9, -1386
                  auipc        t4, 704771
226:              sra          s1, a0, s5
227:              addi         a3, a6, 1526
                  ori          a2, t4, 1249
                  beq          gp, zero, 239f
                  sltu         s9, sp, t0
                  srai         s10, t6, 20
                  sra          s11, a0, ra
233:              sltiu        s7, zero, -316
                  bgeu         ra, s11, 246f
                  auipc        a3, 486215
                  nop
                  slt          s10, s0, s7
                  and          s6, s0, a4
239:              bgeu         s0, s7, 243f
                  slli         s8, tp, 27
                  slli         t2, s6, 11
                  srli         a4, s1, 2
243:              beq          s4, s4, 255f
                  addi         t4, t0, -1603
                  blt          tp, s0, 250f
246:              or           t2, a3, s9
                  sltu         t5, s3, t5
                  xor          a3, t2, s11
                  sub          s8, a3, t2
250:              and          gp, a6, sp
                  slli         zero, t2, 14
                  sub          a0, a7, a4
                  bne          a0, s4, 254f
254:              bltu         t3, t3, 267f
255:              sltiu        a4, a5, -1795
                  xor          s1, s11, s5
                  auipc        sp, 1026422
                  bge          s10, a7, 259f
259:              beq          s2, s3, 269f
                  nop
                  slli         t0, s4, 18
                  beq          s7, s9, 282f
                  sltu         t2, a5, a6
                  auipc        a3, 425181
                  bgeu         s1, s3, 276f
                  srai         zero, a5, 31
267:              add          gp, a2, s1
                  xor          s1, s9, a2
269:              bltu         t5, s8, 273f
                  slti         s5, s2, -533
                  xor          s1, a3, a6
                  sltu         gp, s6, t1
273:              bge          s7, sp, 283f
                  sra          ra, t0, s11
                  sll          tp, t3, a4
276:              srl          a7, a0, a4
                  auipc        sp, 428640
                  addi         t4, zero, 8 #init loop 0 counter
                  lui          t1, 183937
                  xori         t6, s7, -1916
                  xori         t1, s4, 1104
                  ori          a4, a5, -1199
                  addi         s10, zero, 13 #init loop 0 limit
                  slli         a6, s0, 10
main_6_0_t:       lui          a7, 725254
                  srli         gp, ra, 6
                  addi         t4, t4, 10 #update loop 0 counter
                  ori          t1, s0, 1911
                  slti         t1, a5, 2016
                  slti         a0, a7, -1417
                  slt          a0, s6, tp
                  slti         zero, s7, -1326
                  or           a1, s11, a1
                  srl          s8, a5, t2
                  lui          s7, 610281
                  bltu         t4, s10, main_6_0_t #branch for loop 0
                  andi         s5, zero, -72
                  lui          s6, 743465
                  blt          t4, t6, 289f
                  bltu         ra, s8, 293f
                  or           ra, s11, s5
282:              add          s1, tp, s2
283:              sra          ra, a6, sp
                  bltu         a7, tp, 304f
                  auipc        s7, 93843
                  srai         a1, sp, 30
                  blt          tp, t4, 297f
                  lui          s5, 538585
289:              ori          s0, s4, -1859
                  sltu         sp, a2, s1
                  beq          a0, a3, 299f
                  slli         tp, sp, 7
293:              xor          s10, t5, s0
                  sltu         zero, ra, t0
                  sub          ra, t3, t2
                  ori          gp, s9, 2028
297:              sub          t5, a2, a4
                  bne          s4, s1, 317f
299:              srl          a1, t5, t5
                  slti         s8, t6, 534
                  bge          s1, a1, 313f
                  nop
                  bltu         a0, s0, 323f
304:              sltiu        s11, s3, -1457
                  sltu         t1, s9, a1
                  sltiu        a1, s7, -1572
                  sltu         s6, t4, s11
                  srli         s6, a7, 24
                  sll          s5, s6, s10
                  srli         s9, tp, 30
                  srl          tp, s3, a1
                  xor          t3, sp, t6
313:              beq          t6, s4, 317f
                  auipc        ra, 102693
                  nop
                  bltu         t5, a7, 319f
317:              add          s9, a6, a5
                  xori         s7, s11, 434
                  xori         t3, s5, -1566
                  and          a3, a0, t6
                  la           ra, sub_1
                  slli         t6, ra, 6
                  xori         s6, a6, -1831
                  srli         t3, t1, 7
                  addi         ra, ra, -291
                  ori          s7, t0, -1995
                  nop
main_j2:          jalr         ra, ra, 291 #jump main -> sub_1
                  xori         t6, a7, -1620
319:              srai         a4, a5, 22
                  bgeu         s0, a5, 336f
                  bgeu         t1, t3, 340f
                  sll          s0, t1, a2
323:              ori          zero, a7, 1919
                  bge          t0, t5, 325f
325:              slti         t4, t0, -1711
                  slti         s0, a0, -1760
                  andi         a1, s8, -1265
                  and          a7, t2, s4
                  slli         a0, s5, 1
                  and          a1, sp, s9
                  sll          gp, t3, a0
                  sub          t4, t4, s7
                  sll          a2, s9, s10
                  srl          a6, s4, t6
                  slti         s8, s4, -1857
336:              andi         a2, a0, -987
                  lui          s7, 884814
                  slti         t6, tp, 396
                  xor          tp, a4, gp
340:              bge          t3, t5, 358f
                  slt          gp, a2, s4
                  blt          s9, ra, 355f
                  sltu         a6, s7, s2
                  srl          a6, t2, t1
                  slt          s8, s9, t2
                  sltiu        a1, tp, 210
                  sltu         ra, a4, sp
                  srli         tp, t6, 7
                  sll          a3, zero, a2
                  srl          a4, tp, s0
                  srai         s11, ra, 7
                  bge          tp, a4, 371f
                  add          tp, t2, a2
                  sltiu        s5, ra, -561
355:              sltu         ra, sp, a4
                  nop
                  bltu         s0, zero, 376f
358:              add          zero, s9, s4
                  auipc        a3, 999767
                  nop
                  slli         sp, s4, 7
                  xori         s1, a4, 494
                  bgeu         s1, a6, 364f
364:              andi         a1, gp, 1019
                  add          tp, zero, a0
                  sll          s5, t6, s8
                  srai         s5, t2, 10
                  auipc        sp, 985711
                  sltu         s5, a2, gp
                  slti         sp, s6, 2007
371:              nop
                  srai         s10, a2, 27
                  sll          s6, a3, a7
                  andi         a0, s7, -946
                  bltu         t3, a5, 380f
376:              sll          a3, s11, s11
                  slti         t1, t3, 221
                  srai         s6, s4, 23
                  nop
380:              xori         s7, a0, 311
                  srl          s7, s4, ra
                  slti         s5, s9, -939
                  lui          s0, 803076
                  addi         t3, s5, -798
                  xor          a6, a5, t1
                  bgeu         t4, s11, 398f
                  or           a4, s0, zero
                  bge          tp, sp, 393f
                  nop
                  xor          a1, s8, t0
                  srl          sp, a0, s6
                  sra          s5, t4, s6
393:              srai         s11, s11, 11
                  xor          s0, s4, a3
                  auipc        t0, 331091
                  addi         t0, t5, 929
                  srli         s10, s8, 10
398:              beq          s2, a0, 417f
                  slli         s7, t2, 17
                  add          s7, s1, tp
                  auipc        a1, 89742
                  and          s5, s2, t3
                  srai         t1, s8, 18
                  srli         gp, t0, 14
                  or           s6, a2, a3
                  blt          a6, t6, 415f
                  sra          s1, t4, t4
                  and          a4, a5, ra
                  addi         s3, s8, 1032
                  blt          a3, s10, 420f
                  addi         t3, t0, -11
                  auipc        s1, 312804
                  sub          s10, s3, a3
                  xori         a6, s5, 9
415:              lui          s1, 683816
                  sra          t1, s5, s7
417:              add          s1, gp, ra
                  sltiu        gp, zero, -950
                  sra          s8, zero, s7
420:              srli         a4, s0, 24
                  sltiu        t0, s11, -429
                  ori          a1, s11, 817
                  slli         a6, t1, 0
                  blt          a4, a0, 428f
                  xor          gp, s9, zero
                  add          s5, t0, sp
                  sltu         s6, s3, s4
428:              lui          t2, 829859
                  bne          a1, s3, 435f
                  add          s1, zero, s10
                  add          t4, t3, a6
                  bgeu         zero, s4, 445f
                  bgeu         t3, a7, 438f
                  and          s7, t5, t2
435:              bge          s8, s5, 448f
                  auipc        a2, 939515
                  blt          s11, s4, 441f
438:              sub          a6, s2, s2
                  sra          s9, t2, ra
                  slli         s0, s8, 22
441:              srl          a2, t3, s2
                  sll          t1, s11, s6
                  blt          s9, s5, 462f
                  sltiu        a6, t4, 477
445:              srai         gp, a6, 11
                  andi         s11, s7, 234
                  addi         zero, s10, 2004
448:              slt          a0, a6, gp
                  sra          a6, s0, a5
                  bltu         a4, tp, 463f
                  slt          a0, a4, s5
                  add          a3, s8, a2
                  or           s0, t3, a2
                  slti         s0, t3, -861
                  auipc        t1, 977048
                  bltu         t6, a4, 459f
                  srl          t6, s2, t0
                  or           s9, s6, s10
459:              sll          a6, t4, s6
                  addi         s3, s1, -1742
                  and          a6, tp, a4
462:              add          t1, t0, s8
463:              ori          s11, s8, 196
                  sltiu        a0, a3, 88
                  sll          a0, t0, s0
                  auipc        s11, 226435
                  andi         s5, s1, 1508
                  nop
                  sll          a0, a5, s5
                  bltu         a2, s9, 490f
                  sll          a7, t6, a1
                  slt          ra, s2, s7
                  or           s5, s10, s2
                  sltu         s8, a1, s4
                  xori         a0, t6, -1529
                  sub          s11, a1, a3
                  xor          tp, t3, a5
                  sub          a7, t3, s5
                  xor          s6, zero, s5
                  srai         s11, s8, 14
                  xori         tp, s9, 771
                  blt          a2, s3, 500f
                  or           ra, s8, s5
                  xori         a7, s1, 1590
                  blt          a1, a3, 496f
                  beq          s11, s3, 499f
                  auipc        s1, 146420
                  srli         t0, t5, 28
                  or           a3, s5, s11
490:              slti         s0, a4, -832
                  slli         s0, s0, 8
                  sra          a3, t4, s7
                  or           s7, s4, sp
                  sltiu        t3, s9, 1517
                  sltiu        s7, s1, 627
496:              beq          t2, s7, 501f
                  sltu         s10, s7, s8
                  bltu         s8, gp, 501f
499:              blt          t6, zero, 501f
500:              sltiu        s0, s8, -1497
501:              andi         a1, t0, -762
                  la x15, test_done
                  jalr x0, x15, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            xor          t1, t2, s4
                  bgeu         sp, a0, sub_4_stack_p
                  slt          a2, s4, t4
sub_4_stack_p:    addi         s2, s2, -64
                  xor          a7, s4, t0
                  sra          tp, a4, s0
                  sw           ra, 4(s2)
                  sll          t2, t5, t0
                  sll          s6, s10, a1
                  slti         a3, a3, -1625
                  xor          t0, t1, s7
                  and          a7, t3, a3
                  blt          s11, a4, sub_4_j6 #branch to jump instr
                  srl          t0, a4, s3
                  nop
                  ori          gp, s11, -1650
                  sll          s9, a7, s9
                  srai         sp, t5, 11
                  xori         t4, s0, 1214
                  andi         t6, t3, 984
sub_4_j6:         jal          ra, sub_5 #jump sub_4 -> sub_5
                  addi         t1, zero, 10 #init loop 1 counter
                  slti         sp, zero, 464
                  addi         s0, zero, 6 #init loop 1 limit
                  lui          s1, 841640
sub_4_1_1_t:      addi         s5, s0, 2033
                  addi         t1, t1, -4 #update loop 1 counter
                  add          s3, s8, a6
                  addi         t3, zero, 9 #init loop 0 counter
                  addi         t5, zero, 12 #init loop 0 limit
sub_4_1_0_t:      auipc        zero, 885159
                  addi         t3, t3, 3 #update loop 0 counter
                  slli         zero, s0, 16
                  sll          a0, s6, t1
                  bltu         t3, t5, sub_4_1_0_t #branch for loop 0
                  sltu         ra, t5, s7
                  bge          t1, s0, sub_4_1_1_t #branch for loop 1
                  sub          a0, s4, a6
                  addi         a4, zero, -9 #init loop 0 counter
                  addi         a0, zero, -7 #init loop 0 limit
sub_4_0_0_t:      nop
                  add          t2, t1, s3
                  addi         a4, a4, 10 #update loop 0 counter
                  blt          a4, a0, sub_4_0_0_t #branch for loop 0
                  slti         a6, s9, 1796
                  sra          s7, s7, t1
                  sltiu        s11, zero, -71
                  srl          a7, s5, a1
                  xor          s5, t4, a4
                  srl          s10, s5, s10
                  sra          a7, a1, zero
                  addi         s8, t3, 631
                  and          t0, s5, zero
                  ori          s6, s10, -357
                  bge          t4, a4, 13f
                  slli         gp, t6, 14
                  blt          t5, t0, 15f
                  slt          a6, s7, tp
13:               addi         t3, s10, 78
                  bge          a2, s3, 23f
15:               bgeu         s9, s6, 27f
                  srl          s9, gp, t4
                  srl          a6, s3, s4
                  bge          s11, t0, 34f
                  srli         s1, t3, 19
                  andi         a0, t2, 1939
                  bgeu         ra, a4, 22f
22:               slt          s9, sp, s2
23:               ori          s0, s7, 1719
                  srai         s9, a1, 3
                  sub          ra, a5, a4
                  srai         a3, a2, 7
27:               beq          a6, a7, 29f
                  srai         s5, a3, 12
29:               add          s11, t1, t4
                  bne          sp, s6, 35f
                  or           a6, s4, a7
                  bge          gp, t3, 47f
                  srai         s11, s6, 4
34:               lui          s7, 465905
35:               slt          s1, s6, gp
                  nop
                  sra          ra, a7, a7
                  sll          a2, s10, a0
                  beq          t0, t1, 48f
                  nop
                  or           zero, a1, sp
                  lui          a2, 266879
                  sll          s10, a1, a7
                  bne          t0, s8, 59f
                  xor          s9, a0, s9
                  slli         a6, s3, 12
47:               beq          sp, tp, 48f
48:               slt          s0, a5, s10
                  bgeu         ra, s11, 56f
                  srl          t6, t2, s7
                  sltu         zero, a5, s10
                  sltu         zero, ra, a1
                  slti         s0, t2, -1661
                  slt          a7, s0, t2
                  blt          s2, a4, 60f
56:               srai         s5, t4, 13
                  slli         t1, s9, 11
                  slli         ra, t6, 5
59:               bne          a0, a2, 76f
60:               andi         s3, a1, 30
                  add          a1, zero, a1
                  srli         s9, a4, 12
                  slli         s6, a6, 11
                  sltu         s7, a2, s1
                  and          t6, s10, tp
                  srl          sp, sp, s1
                  sltiu        s1, a0, -1185
                  srl          a7, t3, a0
                  ori          t3, ra, -354
                  ori          s7, a1, 979
                  bgeu         sp, a2, 82f
                  slt          a1, s0, a4
                  bltu         a6, t6, 81f
                  slli         a6, s0, 23
                  bltu         s2, a2, 94f
76:               srl          a0, t2, t1
                  slti         sp, sp, 1928
                  sltu         s5, t1, s9
                  auipc        t1, 713569
                  srl          t1, t6, s3
81:               andi         t6, a2, 1386
82:               add          a4, a7, t3
                  srai         s5, a6, 23
                  slli         t0, t0, 28
                  ori          s9, t0, 896
                  srai         t5, t0, 26
                  nop
                  andi         tp, t6, -621
                  add          a7, a3, s3
                  and          s1, s9, t5
                  sll          a6, gp, s8
                  sub          a1, t6, a5
                  blt          a3, t5, 109f
94:               beq          t1, t4, 111f
                  bge          t3, t2, 96f
96:               srli         a7, a0, 12
                  slli         t0, a7, 6
                  bne          t6, s0, 108f
                  xori         s7, gp, -1234
                  slti         s3, s1, -1956
                  slt          t1, a1, s6
                  bge          a2, a2, 104f
                  ori          t2, t2, 1089
104:              ori          t4, t6, 1552
                  slli         a6, a6, 3
                  and          t0, gp, a2
                  sll          a4, s3, s0
108:              bge          s0, t3, 113f
109:              srai         t3, s5, 17
                  bge          s1, s1, 113f
111:              or           s0, a2, zero
                  sra          a2, t0, tp
113:              srl          t5, a2, t2
                  lw           ra, 4(s2)
                  or           s5, s0, s3
                  addi         s2, s2, 64
                  srli         t2, zero, 8
                  andi         s6, s3, 1709
164:              addi x31, x1, 1
164:              jalr x31, x31, 0
sub_2:            nop
                  addi         s2, s2, -20
                  nop
                  sw           ra, 4(s2)
                  andi         sp, s5, -1329
                  xor          t6, s7, a5
                  srai         t3, s0, 4
                  sltu         s10, s2, a4
                  sub          a6, s4, a5
                  sll          t1, a3, a3
                  xori         a3, a2, 1691
                  srl          gp, s4, s0
                  nop
                  sra          tp, s8, s1
                  sra          sp, a4, t1
                  slti         s1, s2, 1119
                  auipc        s7, 312712
                  slt          zero, t1, t0
                  slt          zero, a1, s7
sub_2_j4:         jal          ra, sub_4 #jump sub_2 -> sub_4
                  srl          s0, s0, a7
                  bge          s6, t6, 9f
                  srl          s11, t3, s2
                  srl          tp, a3, t3
                  bne          ra, s8, 24f
                  addi         a1, tp, 1344
                  slt          s9, a4, a2
                  beq          t3, t1, 15f
                  sll          a3, tp, s10
9:                beq          tp, s1, 27f
                  nop
                  add          t2, sp, t0
                  and          a4, s11, gp
                  srl          a4, t4, ra
                  bne          t3, a5, 25f
15:               bne          a5, s11, 23f
                  or           t0, ra, a3
                  srli         t6, a6, 28
                  srli         a2, t3, 21
                  blt          a6, tp, 22f
                  bne          t3, a3, 21f
21:               bgeu         a0, s9, 22f
22:               or           s9, s6, a7
23:               slli         s3, a7, 22
24:               beq          t3, t3, 36f
25:               srli         s10, s3, 26
                  srai         s9, a5, 3
27:               slli         s6, t1, 17
                  auipc        s6, 608377
                  and          s5, t0, sp
                  bltu         s11, gp, 42f
                  blt          s10, s7, 42f
                  addi         t0, s6, 392
                  sra          a2, a1, s3
                  and          a3, a7, t6
                  bltu         s11, a7, 42f
36:               xor          a0, s5, t3
                  blt          a6, t1, 42f
                  slti         t4, gp, -669
                  andi         a3, a3, 595
                  bne          tp, a3, 42f
                  bge          t1, t5, 42f
42:               lui          a6, 423405
                  lw           ra, 4(s2)
                  srai         a0, s1, 6
                  auipc        a1, 975477
                  addi         s2, s2, 20
                  and          sp, s8, s10
                  slli         sp, s1, 4
                  lui          sp, 759531
70:               addi x27, x1, 1
70:               jalr x27, x27, 0
sub_5:            slt          t6, s11, t2
                  slti         tp, a5, -236
                  auipc        a2, 801701
                  addi         s2, s2, -8
                  andi         t4, a5, -955
                  sw           ra, 4(s2)
                  slt          t0, s0, t3
                  addi         sp, zero, 9 #init loop 0 counter
                  nop
                  andi         t4, s0, -1364
                  srl          t4, s6, zero
                  srli         s1, a4, 12
                  add          a1, s3, s3
                  slt          t2, s4, t6
                  sltiu        a7, s0, -1797
                  srli         s1, s2, 9
                  addi         s11, zero, 17 #init loop 0 limit
                  add          s7, ra, a3
sub_5_8_0_t:      auipc        s5, 662472
                  addi         sp, sp, 1 #update loop 0 counter
                  slli         s5, a6, 13
                  sub          t1, s11, t1
                  slt          t0, s1, t6
                  beq          sp, s11, sub_5_8_0_t #branch for loop 0
                  srl          s7, t3, a2
                  addi         a7, zero, 8 #init loop 1 counter
                  and          s1, a6, s6
                  lui          s6, 148728
                  sltu         t1, a6, ra
                  addi         t2, zero, 15 #init loop 1 limit
                  addi         t4, a2, -1369
                  nop
sub_5_12_1_t:     xori         t5, tp, 1038
                  slli         a0, s3, 11
                  and          a2, t6, s8
                  or           a0, s2, a0
                  sub          gp, tp, sp
                  auipc        a6, 249331
                  addi         a7, a7, 7 #update loop 1 counter
                  addi         sp, zero, 1 #init loop 0 counter
                  addi         s3, zero, -13 #init loop 0 limit
                  slli         a4, ra, 14
sub_5_12_0_t:     or           a0, sp, s6
                  sub          t5, gp, a5
                  addi         sp, sp, -2 #update loop 0 counter
                  srl          a2, s5, t0
                  sltu         s0, t1, s1
                  sra          t4, s11, t4
                  nop
                  or           s7, t0, zero
                  beq          sp, s3, sub_5_12_0_t #branch for loop 0
                  ori          t5, t2, -1462
                  sltu         t0, a7, t2
                  slti         s5, t1, 1911
                  xori         t3, s6, -928
                  add          t6, s9, s9
                  slt          s9, sp, gp
                  srli         s1, zero, 24
                  bne          a7, t2, sub_5_12_1_t #branch for loop 1
                  sltu         t4, t6, s7
                  addi         s8, zero, -9 #init loop 0 counter
                  srli         gp, s5, 12
                  addi         a7, zero, 4 #init loop 0 limit
                  slt          a0, s11, s5
                  xori         t1, a2, 492
sub_5_6_0_t:      or           a2, s9, t5
                  lui          a6, 310757
                  addi         s8, s8, 7 #update loop 0 counter
                  sra          t4, t3, s9
                  bltu         s8, a7, sub_5_6_0_t #branch for loop 0
                  sltiu        s0, sp, 1726
                  addi         a6, zero, -4 #init loop 1 counter
                  sltu         t1, t3, t6
                  addi         s11, zero, 18 #init loop 1 limit
sub_5_3_1_t:      sub          t3, s4, a0
                  addi         a6, a6, 1 #update loop 1 counter
                  slti         tp, a5, 654
                  slti         s7, s6, -1508
                  addi         s1, zero, -5 #init loop 0 counter
                  addi         a4, zero, -15 #init loop 0 limit
                  xor          sp, s7, s8
sub_5_3_0_t:      xori         s6, sp, 1838
                  xor          a2, a0, a0
                  addi         s1, s1, -9 #update loop 0 counter
                  sltiu        s9, a3, 1481
                  srai         s8, a5, 23
                  bge          s1, a4, sub_5_3_0_t #branch for loop 0
                  xor          t6, t2, zero
                  beq          a6, s11, sub_5_3_1_t #branch for loop 1
                  sltiu        t2, s7, 1298
                  addi         a0, zero, 10 #init loop 1 counter
                  auipc        gp, 386554
                  sltiu        sp, a0, -1742
                  slti         s6, s6, 179
                  xor          s8, a3, t3
                  slti         zero, tp, 343
                  sll          gp, s3, a1
                  and          s11, s10, a2
                  addi         s5, zero, 10 #init loop 1 limit
                  slli         t5, a2, 14
sub_5_13_1_t:     lui          tp, 323640
                  add          ra, s1, s9
                  addi         a0, a0, -9 #update loop 1 counter
                  sltiu        t4, gp, 972
                  addi         s7, zero, 8 #init loop 0 counter
                  and          a2, s3, tp
                  add          zero, s11, s0
                  or           a4, ra, t6
                  addi         s10, zero, 7 #init loop 0 limit
                  add          t6, tp, s3
                  sub          s9, s10, s0
                  xori         s1, zero, -536
sub_5_13_0_t:     sltiu        a7, s8, 1099
                  add          tp, s5, s11
                  addi         s7, s7, -6 #update loop 0 counter
                  bgeu         s7, s10, sub_5_13_0_t #branch for loop 0
                  andi         a2, t0, 96
                  nop
                  add          a6, s6, ra
                  slli         s11, a5, 31
                  or           zero, s1, s1
                  nop
                  bgeu         a0, s5, sub_5_13_1_t #branch for loop 1
                  nop
                  addi         a7, zero, -10 #init loop 1 counter
                  slt          a4, s8, a5
                  addi         s5, zero, 3 #init loop 1 limit
sub_5_0_1_t:      and          a0, a7, a3
                  nop
                  andi         t6, s9, 1007
                  sll          a3, a2, a4
                  xori         a0, s9, 1274
                  addi         a7, a7, 5 #update loop 1 counter
                  addi         ra, zero, 8 #init loop 0 counter
                  srli         s9, tp, 25
                  addi         gp, zero, -6 #init loop 0 limit
                  sra          t2, s3, a1
sub_5_0_0_t:      and          s3, s3, sp
                  auipc        t6, 410209
                  sll          t1, t6, s6
                  addi         ra, ra, -2 #update loop 0 counter
                  bne          ra, gp, sub_5_0_0_t #branch for loop 0
                  nop
                  xori         t4, zero, -272
                  slt          s0, t2, zero
                  andi         tp, a2, 878
                  sll          tp, t4, s6
                  blt          a7, s5, sub_5_0_1_t #branch for loop 1
                  or           s6, zero, t4
                  addi         a3, zero, -4 #init loop 0 counter
                  ori          s1, t2, -1041
                  auipc        t1, 216800
                  addi         s8, zero, 3 #init loop 0 limit
                  and          a0, t3, a0
                  sll          s7, s2, ra
sub_5_14_0_t:     sltiu        ra, t4, -1290
                  addi         a3, a3, 2 #update loop 0 counter
                  nop
                  sll          s11, ra, s9
                  lui          a7, 884990
                  andi         s7, s7, -1618
                  bltu         a3, s8, sub_5_14_0_t #branch for loop 0
                  srli         gp, s2, 26
                  addi         a7, zero, -9 #init loop 0 counter
                  add          s11, s5, s4
                  addi         s10, zero, 4 #init loop 0 limit
                  sra          t5, t2, s10
                  add          t0, s11, t0
                  ori          s3, a3, -1878
sub_5_2_0_t:      auipc        s8, 166636
                  ori          zero, tp, 1846
                  addi         a1, s11, -202
                  and          t3, a4, t0
                  xori         a4, a4, -308
                  addi         a7, a7, 5 #update loop 0 counter
                  add          a2, sp, a2
                  sll          sp, zero, t4
                  ori          a0, s9, 949
                  or           t2, s5, t0
                  andi         t2, a5, -1732
                  srai         sp, t4, 15
                  nop
                  xor          t2, t5, t0
                  add          s6, s6, s4
                  bltu         a7, s10, sub_5_2_0_t #branch for loop 0
                  slti         s3, s8, -727
                  addi         t5, zero, 10 #init loop 1 counter
                  addi         ra, zero, 7 #init loop 1 limit
sub_5_7_1_t:      nop
                  addi         t5, t5, -6 #update loop 1 counter
                  sub          s5, t2, gp
                  addi         a2, zero, 2 #init loop 0 counter
                  addi         a7, zero, 14 #init loop 0 limit
                  xor          s0, ra, s3
sub_5_7_0_t:      slt          a6, s5, a0
                  addi         a2, a2, 6 #update loop 0 counter
                  srli         s1, a1, 11
                  bne          a2, a7, sub_5_7_0_t #branch for loop 0
                  lui          s6, 759721
                  bgeu         t5, ra, sub_5_7_1_t #branch for loop 1
                  and          a3, t2, s0
                  addi         t1, zero, 10 #init loop 1 counter
                  auipc        a2, 29697
                  slti         a6, t5, 1396
                  addi         t3, zero, 10 #init loop 1 limit
sub_5_5_1_t:      or           ra, s0, a5
                  addi         t1, t1, -9 #update loop 1 counter
                  sub          gp, a7, s7
                  addi         t5, zero, 8 #init loop 0 counter
                  addi         tp, gp, -1912
                  addi         s10, zero, 12 #init loop 0 limit
                  srai         sp, s10, 30
                  addi         s11, a1, 1900
sub_5_5_0_t:      sltu         s7, a5, s5
                  srai         s9, s8, 22
                  xori         a6, tp, -1743
                  sub          t0, s7, s3
                  xor          s0, s11, a0
                  addi         s7, s1, 115
                  addi         t5, t5, 4 #update loop 0 counter
                  and          a2, t4, t6
                  bltu         t5, s10, sub_5_5_0_t #branch for loop 0
                  sra          s9, t2, s0
                  bgeu         t1, t3, sub_5_5_1_t #branch for loop 1
                  slt          t2, a4, a4
                  slli         t5, ra, 30
                  xori         a1, a0, 1426
                  bltu         a3, s2, 9f
                  ori          a3, zero, -1771
                  ori          t1, a0, -1463
                  srai         t0, a4, 27
                  add          t4, s2, s4
                  bgeu         a5, s11, 16f
                  xori         sp, s0, 873
9:                slt          s9, t6, sp
                  srl          t3, t1, s6
                  xor          a4, a4, s4
                  srai         a1, t1, 11
                  addi         a6, s8, -276
                  auipc        tp, 891656
                  sll          t5, s7, a5
16:               sub          tp, s5, s0
                  slt          tp, s11, s10
                  bltu         s7, a3, 26f
                  slt          a0, s7, s3
                  nop
                  sltiu        s10, ra, 1878
                  slli         zero, t2, 29
                  xor          t2, t5, a2
                  beq          t6, s0, 33f
                  xori         s1, s10, -1957
26:               xor          a3, s10, s4
                  sub          s8, s8, a3
                  bge          s0, s6, 40f
                  slti         t1, t0, -650
                  bge          a5, s9, 38f
                  sra          s7, s7, s10
                  sra          s9, t6, t5
33:               slti         t0, a3, -749
                  nop
                  srai         s10, t0, 14
                  srli         a6, s11, 29
                  and          t3, t1, t5
38:               blt          a4, t6, 39f
39:               auipc        s1, 122024
40:               xori         ra, s0, -350
                  bgeu         t5, a3, 60f
                  addi         s3, s2, -2002
                  slli         ra, a2, 22
                  sltu         t4, t6, t5
                  add          ra, s11, s0
                  bne          s5, s7, 65f
                  ori          gp, a5, -1157
                  add          t2, a5, sp
                  blt          t6, gp, 56f
                  slt          a4, t1, tp
                  bge          s3, sp, 66f
                  blt          s0, a4, 55f
                  srl          a0, t3, a0
                  sltiu        s10, a7, 543
55:               lui          s6, 564655
56:               slli         s7, s2, 31
                  sltu         s0, s10, a0
                  addi         s7, a6, 1537
                  sll          zero, t3, t0
60:               bltu         tp, s7, 68f
                  blt          t1, t3, 79f
                  srli         zero, s5, 26
                  slli         s8, s2, 28
                  bgeu         a7, s8, 69f
65:               lui          s6, 16330
66:               bltu         t4, a4, 69f
                  bltu         ra, tp, 78f
68:               bge          s7, s10, 69f
69:               sub          a0, s11, a3
                  and          a4, sp, s8
                  sll          t5, s7, t6
                  srai         t1, sp, 0
                  or           t5, t3, t6
                  bge          ra, a2, 88f
                  bltu         a1, s0, 85f
                  or           t5, s2, s6
                  lui          zero, 197723
78:               sra          s5, a1, s7
79:               andi         s5, ra, 782
                  nop
                  andi         a4, a1, -1667
                  xor          gp, s0, t2
                  sll          s6, s6, s6
                  and          s10, gp, a7
85:               sra          s11, a4, tp
                  sltu         s0, tp, gp
                  beq          s1, s3, 104f
88:               lui          s6, 631614
                  sra          t1, a7, t0
                  slli         s6, zero, 4
                  slt          zero, sp, a1
                  xori         s9, s7, 1386
                  srl          a3, a7, s0
                  srl          t0, s8, t6
                  bltu         s5, s0, 98f
                  sra          a4, s2, a5
                  bne          s5, t4, 110f
98:               auipc        a0, 856620
                  srli         t2, t1, 5
                  sltu         t6, sp, s0
                  beq          s8, a1, 114f
                  bgeu         s1, zero, 120f
                  bgeu         s8, s10, 121f
104:              bne          s5, t2, 120f
                  srai         a4, t2, 10
                  srli         a1, s5, 10
                  bge          t1, s2, 119f
                  ori          zero, s10, 805
                  ori          t2, a4, -357
110:              slt          s0, s0, s10
                  slt          tp, tp, gp
                  ori          a7, s6, -773
                  sltu         s6, t5, ra
114:              ori          s1, a7, 1481
                  sll          gp, a5, s5
                  slt          s0, ra, t4
                  ori          a7, s7, -90
                  bge          s11, t2, 131f
119:              or           t2, s1, s1
120:              slti         a0, t3, 2045
121:              sltiu        s3, t2, 1798
                  auipc        tp, 35817
                  sll          tp, a3, s11
                  and          s11, t4, tp
                  blt          sp, ra, 139f
                  bgeu         t5, s2, 129f
                  or           ra, a7, a7
                  bgeu         t0, s3, 129f
129:              slli         s9, s3, 23
                  and          s6, a5, a7
131:              sub          s8, s11, a6
                  beq          s9, a1, 145f
                  xori         t4, ra, -344
                  xori         t3, zero, -1027
                  bltu         s7, s7, 153f
                  sra          t2, a3, a1
                  and          s0, t6, t3
                  andi         s7, a4, -751
139:              slt          zero, ra, ra
                  sra          s8, t0, s4
                  bltu         t3, a5, 152f
                  blt          s3, s2, 151f
                  bltu         t5, tp, 151f
                  beq          s8, t5, 154f
145:              blt          t2, a2, 158f
                  srai         s0, t1, 8
                  xori         s1, s10, 611
                  srli         s3, s11, 10
                  beq          t1, t6, 152f
                  srli         t4, a7, 16
151:              beq          a6, t2, 169f
152:              auipc        s11, 374569
                  addi         s10, zero, 6 #init loop 0 counter
                  addi         s7, zero, -5 #init loop 0 limit
                  addi         s6, a7, 29
sub_5_10_0_t:     addi         s3, a7, -360
                  addi         s10, s10, -8 #update loop 0 counter
                  bge          s10, s7, sub_5_10_0_t #branch for loop 0
                  addi         t2, t5, 1300
153:              sub          t2, s9, a0
154:              auipc        a2, 445882
                  sltu         t2, zero, a4
                  and          a1, s6, a3
                  sll          s3, a6, a3
158:              xori         t2, gp, 1151
                  sll          t2, t1, t6
                  or           s11, s1, zero
                  lui          a3, 961763
                  sltiu        s0, s11, 784
                  addi         s10, a1, -1226
                  bne          t0, s1, 180f
                  sub          a3, t3, s3
                  auipc        zero, 813797
                  sra          s8, t2, t6
                  slt          t0, t3, s11
169:              or           s11, s7, t1
                  sltu         t5, a1, zero
                  lui          a4, 566477
                  bltu         t0, a0, 184f
                  srli         s11, a1, 4
                  sltu         s11, s5, s3
                  andi         t3, a4, -1466
                  slti         t0, s8, -744
                  slt          t4, zero, t0
                  xor          ra, t2, a6
                  andi         a3, a5, -1935
180:              srli         tp, s1, 13
                  srli         t5, s8, 7
                  slli         s11, s2, 23
                  bltu         s3, t5, 201f
184:              bge          a3, s1, 197f
                  nop
                  xori         s11, tp, 1825
                  andi         gp, s10, 1323
                  srai         a2, t1, 8
                  sltiu        tp, sp, -1529
                  sll          s5, t3, s5
                  bge          s10, s9, 210f
                  xori         s5, a6, -2028
                  and          t4, s0, a4
                  sltu         s0, s6, s10
                  bgeu         s7, gp, 198f
                  addi         tp, t1, -63
197:              bltu         s5, t3, 198f
198:              xori         s5, t6, 1033
                  sltiu        s9, t6, -335
                  sll          t0, tp, a5
201:              sltiu        s6, s1, -303
                  lui          t6, 878574
                  bltu         tp, s2, 211f
                  bne          t5, s7, 216f
                  bgeu         s10, zero, 210f
                  srli         s7, a6, 2
                  ori          s9, a7, -551
                  sltu         t0, s5, t5
                  blt          s0, t3, 216f
210:              sra          s0, s7, s3
211:              srli         a1, sp, 30
                  xori         t2, t6, 342
                  srl          s5, sp, sp
                  bge          s5, a4, 231f
                  beq          tp, t1, 222f
216:              add          t4, s8, ra
                  bgeu         a7, t6, 226f
                  sll          a4, a4, a2
                  nop
                  xor          t5, s3, zero
                  xor          sp, s0, t1
222:              and          s8, s1, a5
                  bne          s0, a2, 237f
                  sltiu        s6, a0, 483
                  nop
226:              bgeu         a6, a4, 245f
                  auipc        s1, 250675
                  sll          s1, s9, s6
                  or           t4, s2, a0
                  add          t2, s9, t2
231:              ori          tp, t0, 1679
                  sltiu        s8, t1, 1414
                  sub          s8, sp, s2
                  addi         s6, a2, 1726
                  lui          a2, 866629
                  addi         t0, s6, -778
237:              srli         a7, s8, 31
                  nop
                  bne          s11, a1, 247f
                  bltu         s2, t3, 255f
                  ori          t3, s4, -1380
                  slti         s8, a6, -1872
                  xori         t2, a3, -1817
                  xori         s0, tp, 1878
245:              bgeu         s1, tp, 259f
                  ori          a1, t6, -1561
247:              srli         s5, a7, 23
                  beq          zero, sp, 261f
                  nop
                  srli         a7, s10, 17
                  auipc        s8, 649913
                  blt          s7, a4, 267f
                  sltu         s6, tp, a5
                  or           a1, s1, s3
255:              and          s9, a3, a6
                  slli         s0, s3, 6
                  srl          t3, ra, a3
                  add          a0, t6, s5
259:              bgeu         zero, a3, 277f
                  srli         s3, a0, 15
261:              or           a1, zero, s6
                  sub          t5, a4, s8
                  lui          s3, 1015323
                  sltu         gp, tp, t6
                  nop
                  andi         s3, s7, -1295
267:              lui          gp, 684991
                  sltiu        a1, t5, 1686
                  bne          t2, a6, 276f
                  nop
                  or           ra, s6, t5
                  addi         s8, t6, -2030
                  sltu         a7, s6, s0
                  bne          s5, a2, 286f
                  sltu         s3, a5, t1
276:              addi         t0, gp, 2003
277:              bgeu         a2, s9, 278f
278:              bltu         t0, s3, 286f
                  nop
                  beq          tp, sp, 298f
                  and          s0, t2, a1
                  xori         a0, s4, -1834
                  sltiu        t2, s9, -1041
                  slli         t4, t1, 8
                  bge          t2, a1, 299f
286:              lui          s7, 962518
                  blt          t4, s0, 306f
                  and          ra, s1, s6
                  beq          s5, s8, 301f
                  lui          sp, 897080
                  auipc        s3, 344182
                  nop
                  slt          s1, a0, a4
                  slt          a7, s8, t4
                  sltiu        gp, ra, -932
                  bge          a7, tp, 309f
                  auipc        t2, 742931
298:              sll          t4, a6, a0
299:              ori          t2, s5, -219
                  xor          s9, t0, t1
301:              sub          t0, t0, a0
                  bgeu         s0, a3, 319f
                  slti         s10, s8, -646
                  bgeu         t4, a3, 312f
                  slt          t6, s0, s3
306:              srli         zero, ra, 1
                  sltu         s3, a5, s8
                  xor          a2, a6, t6
309:              bne          s8, s0, 318f
                  sub          a6, s10, s8
                  xor          a7, s11, sp
312:              bltu         s6, a1, 331f
                  addi         s9, a7, -1367
                  bltu         s5, s0, 332f
                  slli         t4, t3, 12
                  bgeu         a4, a2, 317f
317:              srli         s5, a2, 25
318:              sltiu        t0, s4, -1356
319:              bne          a7, s8, 328f
                  sltiu        a6, t5, -1338
                  xor          s8, a2, s11
                  sltiu        s11, t4, -880
                  slti         a4, a4, 984
                  add          zero, a6, s7
                  ori          s7, a4, 1538
                  lui          t5, 1013543
                  addi         t2, t6, -549
328:              sub          t5, a2, sp
                  beq          t1, a4, 337f
                  srli         a2, t3, 31
331:              xori         t0, s10, -705
332:              bge          a5, t4, 346f
                  nop
                  slli         t1, a0, 1
                  addi         t0, s6, -347
                  ori          t3, s3, 520
337:              srai         t5, a0, 8
                  bge          sp, t3, 343f
                  andi         a3, s3, 333
                  slt          a6, a5, a5
                  addi         s6, sp, -714
                  bne          t6, ra, 355f
343:              addi         s1, s5, -57
                  beq          t1, s2, 351f
                  srl          s3, t0, t5
346:              or           s8, s11, zero
                  bgeu         s10, gp, 350f
                  addi         t4, s0, 1767
                  bge          zero, a7, 360f
350:              slt          s3, a2, s11
351:              bgeu         s4, s4, 367f
                  addi         a0, a0, 1081
                  nop
                  sltu         t4, s0, t0
355:              slt          t5, ra, zero
                  or           s6, a3, t2
                  slt          a2, s4, t2
                  andi         zero, s6, -1479
                  and          s5, s8, a6
360:              bltu         a4, t0, 363f
                  nop
                  slli         t1, s7, 25
363:              and          s5, a6, a0
                  blt          a4, zero, 374f
                  add          t1, s11, t4
                  bltu         t1, a6, 369f
367:              ori          s5, s8, -1416
                  or           s1, s9, a4
369:              bge          s6, s2, 372f
                  sltiu        a3, s3, -1547
                  blt          s2, t3, 386f
372:              blt          s4, a5, 383f
                  bne          t2, a7, 376f
374:              srl          s10, s11, s2
                  slti         t2, a7, -934
376:              lui          s1, 751528
                  addi         tp, a2, 1045
                  sltiu        s0, s2, 956
                  or           t6, a6, t1
                  xor          tp, t6, s4
                  and          s8, a2, a1
                  sll          s1, sp, a4
383:              ori          s1, a6, -434
                  srl          a6, t5, s8
                  andi         t1, s11, 669
386:              bltu         s5, s6, 400f
                  sll          s1, a6, a4
                  ori          a0, s1, 1236
                  sra          s0, s7, s6
                  andi         a0, zero, -791
                  srai         a7, a5, 2
                  andi         s8, tp, -1563
                  andi         s7, a5, 1336
                  xor          t2, s1, s9
                  nop
                  slli         s6, s5, 15
                  add          a4, s10, a0
                  sltiu        t1, t5, 1632
                  srli         tp, s10, 8
400:              sltiu        ra, t6, 1371
                  srl          s1, s11, t4
                  srai         t1, a5, 31
                  auipc        s9, 891924
                  lui          a4, 62768
                  andi         a7, s11, -243
                  lui          a3, 310071
                  bne          a7, a1, 410f
                  add          a6, a5, s5
                  xori         s5, a2, 693
410:              lui          s10, 557470
                  beq          t3, a2, 427f
                  beq          s10, s9, 430f
                  nop
                  slt          a6, a4, t4
                  sll          gp, t4, a0
                  bltu         t3, s5, 430f
                  ori          s7, tp, 1465
                  slt          s10, s1, a1
                  nop
                  bltu         s0, t6, 438f
                  sltu         t6, s5, s10
                  sll          s0, s7, a1
                  auipc        a3, 281908
                  srl          t1, t5, s11
                  xori         s7, sp, -45
                  srli         t6, t6, 12
427:              blt          a0, zero, 434f
                  srl          s7, t2, s11
                  srl          s11, a7, t3
430:              and          s6, s4, a5
                  or           s10, s7, t3
                  bge          t2, t4, 451f
                  bgeu         ra, s3, 438f
434:              slti         s3, s0, -1896
                  andi         sp, a7, 1971
                  sll          s6, t2, t1
                  bge          t4, t1, 444f
438:              bge          tp, s2, 439f
439:              srli         a0, ra, 23
                  srl          a4, a0, a4
                  sltu         t2, t3, sp
                  sub          zero, t0, tp
                  addi         ra, t2, -1127
444:              srai         a3, s2, 21
                  or           a1, sp, t1
                  xor          tp, t1, a6
                  xor          s9, tp, a0
                  srl          gp, s0, tp
                  xori         s3, ra, -1262
                  and          s6, s6, s5
451:              or           a0, s9, a4
                  sltu         s7, a6, s11
                  xori         a7, ra, -1255
                  or           gp, a6, t0
                  blt          ra, a2, 467f
                  lui          s0, 415879
                  beq          s1, s9, 474f
                  slt          s9, ra, a6
                  slti         a3, a1, -1470
                  bltu         t0, s5, 472f
                  xor          s5, a6, s6
                  slt          s6, t0, zero
                  xori         s5, s7, -2018
                  slli         a3, t4, 10
                  slli         gp, s7, 27
                  bltu         t0, s7, 479f
467:              srli         a3, a5, 24
                  sll          t4, t1, a5
                  srl          a0, t2, s7
                  auipc        a7, 308280
                  srli         gp, t1, 21
472:              bne          t6, s10, 480f
                  sltu         sp, t2, a2
474:              sltu         t2, a4, s7
                  bge          s7, t5, 488f
                  slli         s8, s2, 18
                  sltiu        t3, s10, -1441
                  add          a4, a5, s9
479:              beq          t5, gp, 488f
480:              ori          s10, s6, 1327
                  bgeu         a4, t4, 489f
                  bgeu         t0, t1, 500f
                  sra          a2, a6, s6
                  srl          s9, s11, s5
                  lui          zero, 479061
                  slti         s0, s6, -1826
                  bge          t2, s10, 497f
488:              srli         s10, a6, 3
489:              sll          a2, sp, a7
                  bge          s0, gp, 499f
                  sub          s3, t0, s4
                  xori         tp, t4, -709
                  srl          s7, s5, s4
                  srl          s11, s3, s7
                  xor          sp, s2, s8
                  sltu         a1, s4, a0
497:              xor          a0, s5, s0
                  slli         s3, a4, 13
499:              beq          a0, a3, 512f
500:              blt          s2, s3, 501f
501:              ori          zero, t0, -1797
                  or           t2, t6, a6
                  xori         a6, t0, -1852
                  slt          t4, zero, a4
                  xor          ra, t2, s3
                  blt          a7, t0, 514f
                  sltiu        ra, s8, 640
                  andi         t0, s11, 377
                  bgeu         s5, a1, 528f
                  bltu         s2, t3, 513f
                  bgeu         s7, a0, 529f
512:              beq          sp, a2, 525f
513:              auipc        s9, 672502
514:              bgeu         ra, t2, 532f
                  auipc        s10, 398627
                  auipc        s11, 409195
                  xori         sp, s10, -1210
                  xor          zero, t2, s9
                  sltu         t1, s5, s0
                  blt          a7, a3, 529f
                  slli         a1, zero, 9
                  srai         t3, gp, 12
                  bge          a5, a3, 535f
                  sub          a4, a5, s10
525:              auipc        t2, 356116
                  or           s7, ra, t0
                  sltiu        s5, t0, 1775
528:              xor          s0, a0, t0
529:              srai         s5, s1, 11
                  srl          t3, s2, s10
                  xori         a7, s2, 710
532:              slli         a2, zero, 14
                  sll          t0, a1, t6
                  addi         a3, t3, -2042
535:              ori          s6, s1, 1429
                  lui          a1, 623435
                  xori         tp, s11, 1994
                  sltiu        ra, t6, 1935
                  bgeu         gp, s1, 547f
                  add          t6, t6, s1
                  sub          t3, t2, t4
                  addi         s7, zero, -2 #init loop 0 counter
                  sltiu        t3, gp, -1388
                  addi         t5, zero, 9 #init loop 0 limit
                  sll          t4, s2, s2
                  srai         a2, t3, 29
                  add          sp, s10, t3
sub_5_1_0_t:      slti         a7, gp, -1804
                  sub          s0, t0, sp
                  lui          t3, 101319
                  addi         s7, s7, 1 #update loop 0 counter
                  blt          s7, t5, sub_5_1_0_t #branch for loop 0
                  srl          s6, a5, s9
                  auipc        tp, 474508
                  slti         s8, t1, 152
                  bgeu         t1, s6, 547f
                  bgeu         zero, s5, 546f
546:              beq          a1, s10, 553f
547:              add          s0, a4, s1
                  bne          a7, gp, 561f
                  sra          a7, s4, a7
                  auipc        a4, 234386
                  srl          s3, a1, a4
                  sub          t5, a3, t3
553:              beq          t5, a1, 554f
554:              blt          s7, a2, 569f
                  xori         s7, a7, 424
                  sltu         s10, tp, a3
                  andi         t1, a6, -1398
                  slli         s3, zero, 26
                  srl          a4, s7, s0
                  blt          zero, gp, 572f
561:              slti         a0, t5, -319
                  bne          s0, s5, 578f
                  srai         t1, s4, 17
                  addi         s1, a6, -445
                  nop
                  xor          sp, s9, s11
                  bltu         a0, a0, 581f
                  ori          t6, s5, -190
569:              sltiu        s5, a1, -647
                  bltu         s4, a5, 577f
                  addi         a4, zero, 10 #init loop 0 counter
                  ori          t2, t5, 714
                  srli         t5, t4, 17
                  andi         t5, a7, -1683
                  xori         t2, a1, -873
                  addi         s11, zero, 9 #init loop 0 limit
sub_5_4_0_t:      and          zero, s11, s0
                  addi         s7, s11, 547
                  slt          s10, tp, a4
                  xor          sp, s6, s3
                  addi         a4, a4, -7 #update loop 0 counter
                  add          a0, s9, tp
                  bgeu         a4, s11, sub_5_4_0_t #branch for loop 0
                  slt          s8, s6, t3
                  srl          s0, s5, a2
572:              lui          gp, 948895
                  and          ra, t3, s10
                  auipc        t3, 484136
                  slli         zero, sp, 30
                  andi         tp, t1, -409
577:              andi         s7, ra, -1912
578:              addi         a0, t1, 1082
                  lui          s1, 839104
                  slli         a7, t4, 10
581:              slti         t0, a6, 689
                  lui          s10, 281073
                  srl          s5, t2, ra
                  slt          s1, a6, s5
                  bgeu         tp, s11, 593f
                  srl          a7, t4, a2
                  and          s9, s6, s3
                  xori         a7, a5, 2011
                  srl          a4, tp, s8
                  beq          tp, a7, 600f
                  addi         t4, s11, 1755
                  auipc        a0, 533530
593:              auipc        a6, 991950
                  slti         s11, s8, 273
                  addi         t1, tp, -1422
                  srl          s10, a4, zero
                  bge          a6, s11, 616f
                  sra          a2, s10, s11
                  or           s5, s8, s11
600:              sltu         a7, sp, a7
                  beq          a4, a7, 604f
                  beq          s7, t1, 619f
                  sll          s7, s4, s1
604:              addi         a1, a0, 1499
                  nop
                  ori          sp, s6, 1686
                  lui          tp, 942259
                  sra          t3, tp, s4
                  srli         a7, s7, 1
                  srli         t3, s10, 19
                  andi         a4, a2, -747
                  and          s10, s5, gp
                  xori         a3, a6, -1929
                  bltu         s4, t2, 632f
                  bltu         ra, sp, 634f
616:              andi         sp, s6, -1436
                  bne          s1, zero, 622f
                  xori         a6, t2, -836
619:              or           a4, sp, s7
                  add          s9, t3, t4
                  sub          a2, s3, s9
622:              sub          s3, t3, tp
                  auipc        zero, 613443
                  bge          a0, t1, 637f
                  slli         s0, sp, 31
                  xori         a0, zero, -1613
                  bne          s4, s6, 638f
                  add          s0, t0, a5
                  slt          a7, a3, s6
                  add          a2, s1, a3
                  sltiu        tp, a7, 1851
632:              xori         a7, zero, -589
                  blt          s11, s3, 642f
634:              auipc        a7, 769619
                  slti         t0, a0, 1281
                  bltu         t3, s1, 650f
637:              addi         tp, t3, 705
638:              slti         a0, s10, 862
                  addi         s5, s10, 420
                  addi         t6, zero, 8 #init loop 0 counter
                  addi         s5, zero, 7 #init loop 0 limit
sub_5_11_0_t:     sub          s3, s2, sp
                  addi         t6, t6, -4 #update loop 0 counter
                  andi         s3, a2, -1288
                  bgeu         t6, s5, sub_5_11_0_t #branch for loop 0
                  and          t4, zero, t0
                  lui          s10, 207797
                  bge          s9, zero, 649f
642:              sra          t1, s5, ra
                  add          gp, t3, t1
                  srli         a4, a4, 29
                  and          a4, s1, s8
                  auipc        ra, 149679
                  slli         a6, gp, 2
                  xori         a6, a7, -290
649:              nop
650:              sub          a0, a5, gp
                  srli         a1, s11, 31
                  slt          s10, t5, s3
                  sll          a2, a4, t3
                  slli         a4, a4, 15
                  bltu         t6, a0, 658f
                  sra          s0, s6, sp
                  sra          s1, a0, t4
658:              slti         a0, ra, -1666
                  bgeu         t0, a5, 672f
                  and          a1, zero, s7
                  bge          a2, s2, 670f
                  blt          t5, s9, 665f
                  add          zero, s6, a3
                  addi         s7, zero, -3 #init loop 1 counter
                  addi         s11, s8, -482
                  or           gp, t3, zero
                  add          s8, a4, a2
                  addi         s10, zero, -16 #init loop 1 limit
sub_5_9_1_t:      sub          a6, ra, s7
                  add          s11, a7, s7
                  or           a3, s1, s6
                  addi         s7, s7, -10 #update loop 1 counter
                  addi         s6, zero, -8 #init loop 0 counter
                  slti         s3, a6, -1373
                  addi         t1, zero, 16 #init loop 0 limit
                  ori          s9, t0, -1934
                  and          t2, s10, s10
                  srli         a3, s10, 18
sub_5_9_0_t:      xori         a3, t1, 1220
                  lui          s1, 953617
                  slt          a3, a3, t6
                  andi         a2, s6, -1118
                  sltu         sp, s8, s2
                  andi         a2, s4, -1062
                  srli         t5, s8, 6
                  addi         s6, s6, 3 #update loop 0 counter
                  slt          s11, a7, s3
                  xori         sp, s1, -243
                  andi         s1, a6, 1264
                  sra          s5, s11, sp
                  bltu         s6, t1, sub_5_9_0_t #branch for loop 0
                  auipc        s3, 176901
                  sltu         a6, zero, t6
                  bge          s7, s10, sub_5_9_1_t #branch for loop 1
                  add          t5, s7, sp
                  slti         t1, t2, -526
665:              sll          t6, a0, a0
                  bne          t5, sp, 679f
                  slli         s10, a1, 29
                  sltiu        t4, a2, -868
                  sltiu        s7, t5, -1327
670:              auipc        a7, 861270
                  srl          a0, s2, a7
672:              sll          s8, t3, ra
                  nop
                  bgeu         s8, s9, 693f
                  or           s8, s9, t0
                  sra          s11, s6, t6
                  ori          sp, t5, 1993
                  srai         ra, t1, 28
679:              bltu         s2, s8, 698f
                  srl          s1, a1, s2
                  srai         t1, s11, 25
                  andi         a7, ra, 1656
                  sll          s11, s1, s10
                  auipc        t2, 866785
                  lui          sp, 232193
                  blt          a4, zero, 703f
                  bge          t3, s5, 700f
                  bltu         s7, s0, 698f
                  add          s9, tp, t4
                  bgeu         s0, s5, 701f
                  slli         zero, a6, 13
                  srli         t6, s7, 12
693:              bltu         a4, s10, 707f
                  bgeu         s0, s11, 702f
                  andi         t6, t0, 1053
                  bge          s11, s1, 714f
                  auipc        s9, 713979
698:              slli         a7, s8, 18
                  bltu         s9, gp, 711f
700:              andi         sp, tp, 565
701:              auipc        t5, 286497
702:              andi         s11, s4, -2026
703:              bne          s0, s10, 721f
                  srli         t3, t1, 5
                  sra          s11, s10, s7
                  xor          s8, sp, s0
707:              sub          t0, a1, s0
                  or           gp, s0, s4
                  lui          a2, 318424
                  slli         a4, t3, 16
711:              ori          t1, s6, -620
                  blt          s7, ra, 727f
                  andi         s0, s10, -231
714:              bltu         t3, a3, 722f
                  sltiu        s3, a7, 1982
                  sra          t4, tp, s5
                  slti         s1, t3, 2023
                  slt          a3, t2, a0
                  or           s6, s11, a0
                  and          t6, sp, t1
721:              nop
722:              ori          a2, t5, 1557
                  addi         t4, ra, -482
                  or           a7, s1, s8
                  and          a0, a3, t5
                  sub          a7, a2, a0
727:              add          a7, a4, tp
                  slti         ra, zero, 909
                  auipc        s7, 171529
                  ori          a6, s7, 1845
                  bltu         a0, s7, 736f
                  ori          s11, a3, -333
                  auipc        s5, 307516
                  sra          s10, t4, t1
                  nop
736:              ori          a4, a3, 497
                  xor          t6, a5, s0
                  sub          s1, tp, s3
                  bltu         s1, t5, 746f
                  sltu         a0, s0, a4
                  sub          t6, a5, a6
                  nop
                  bgeu         t4, s5, 755f
                  sub          t2, a6, s6
                  or           s8, a5, t3
746:              xori         t2, a1, -15
                  slt          t2, s11, a6
                  blt          a5, gp, 755f
                  bgeu         t5, a2, 755f
                  bne          t4, s6, 753f
                  add          sp, zero, t3
                  beq          a5, s9, 753f
753:              andi         s9, s4, -1185
                  and          s1, s6, a2
755:              addi         a3, a2, 547
                  xori         s10, t1, 233
                  lw           ra, 4(s2)
                  srl          s9, t3, a4
                  andi         a7, a4, 975
                  addi         t4, ra, -1260
                  slli         zero, a7, 8
                  addi         s2, s2, 8
                  sll          a1, zero, s5
                  srai         s7, s1, 31
                  auipc        gp, 1000101
1063:             addi x10, x1, 1
1063:             jalr x10, x10, 0
sub_3:            auipc        a4, 537634
                  xori         sp, a2, 1436
                  blt          t0, a6, sub_3_stack_p
sub_3_stack_p:    addi         s2, s2, -60
                  andi         t2, t0, -1648
                  sll          s10, t5, a3
                  sll          gp, s5, s5
                  add          t6, s8, a2
                  slti         gp, a5, 1936
                  sw           ra, 4(s2)
                  srai         s5, s0, 27
                  sll          t1, t3, t1
                  addi         t2, zero, 8 #init loop 0 counter
                  addi         ra, a2, 1253
                  srli         s10, ra, 15
                  auipc        s10, 576341
                  sltiu        s10, gp, -1138
                  xor          s6, s6, s0
                  sll          t1, t2, s10
                  xor          s9, t1, s11
                  sltiu        t4, a1, -2011
                  auipc        tp, 676245
                  sra          zero, zero, a6
                  srai         s11, s5, 19
                  addi         s8, zero, 16 #init loop 0 limit
                  srai         a0, t1, 29
sub_3_4_0_t:      slti         tp, tp, 608
                  auipc        s3, 883851
                  srli         a3, s0, 26
                  nop
                  addi         t2, t2, 1 #update loop 0 counter
                  addi         s10, t3, 205
                  nop
                  auipc        s10, 797831
                  add          s9, s5, zero
                  srli         t6, a5, 31
                  nop
                  auipc        tp, 932060
                  srai         s9, a4, 14
                  srai         s6, a2, 29
                  bne          t2, s8, sub_3_4_0_t #branch for loop 0
                  ori          a0, s2, -1039
                  addi         a2, zero, 1 #init loop 1 counter
                  addi         t3, zero, -1 #init loop 1 limit
sub_3_3_1_t:      xori         a7, s4, -713
                  addi         a2, a2, -5 #update loop 1 counter
                  addi         a3, zero, -4 #init loop 0 counter
                  addi         s8, zero, -7 #init loop 0 limit
sub_3_3_0_t:      sub          a1, ra, s4
                  addi         a3, a3, -6 #update loop 0 counter
                  bge          a3, s8, sub_3_3_0_t #branch for loop 0
                  bge          a2, t3, sub_3_3_1_t #branch for loop 1
                  and          ra, s3, a6
                  addi         a7, zero, 7 #init loop 0 counter
                  or           t2, s6, a0
                  addi         gp, zero, -11 #init loop 0 limit
                  srli         zero, t2, 25
sub_3_5_0_t:      and          ra, s7, t5
                  addi         a7, a7, -3 #update loop 0 counter
                  sltu         ra, a5, s0
                  auipc        a2, 54614
                  beq          a7, gp, sub_3_5_0_t #branch for loop 0
                  lui          t4, 597101
                  addi         t5, zero, 1 #init loop 1 counter
                  and          s10, s4, s2
                  nop
                  slli         s3, a5, 3
                  add          sp, s6, ra
                  add          s0, s1, a3
                  addi         s11, zero, -18 #init loop 1 limit
                  sll          a6, s1, a4
                  slti         a6, s7, -1400
                  add          a4, t4, a0
                  ori          s3, a0, 1583
                  slti         a6, s6, 1885
sub_3_2_1_t:      andi         s10, t6, -1180
                  slti         t6, a7, -1138
                  auipc        a2, 542081
                  addi         t5, t5, -2 #update loop 1 counter
                  addi         s8, zero, 3 #init loop 0 counter
                  sll          gp, gp, a2
                  addi         a7, zero, -9 #init loop 0 limit
                  srli         a1, s2, 23
                  add          a6, a2, zero
sub_3_2_0_t:      xor          s0, a1, s2
                  addi         s8, s8, -6 #update loop 0 counter
                  lui          a0, 254032
                  bne          s8, a7, sub_3_2_0_t #branch for loop 0
                  sll          s1, s9, s3
                  lui          t0, 761741
                  bge          t5, s11, sub_3_2_1_t #branch for loop 1
                  slti         t6, s2, 871
                  addi         a6, zero, 8 #init loop 1 counter
                  srl          t5, s7, t0
                  sub          a1, tp, a1
                  sll          s0, a6, t2
                  addi         t0, t2, 366
                  sltu         t1, zero, a6
                  addi         a4, zero, 8 #init loop 1 limit
                  slt          a1, t0, zero
                  and          t4, s3, s6
sub_3_0_1_t:      sub          t3, t3, a6
                  slti         s7, sp, 892
                  addi         a6, a6, -1 #update loop 1 counter
                  sltiu        sp, t6, -392
                  sltu         s8, s7, s1
                  slti         a2, s8, -1520
                  addi         s11, zero, 2 #init loop 0 counter
                  addi         s1, zero, 3 #init loop 0 limit
sub_3_0_0_t:      nop
                  srl          s7, a4, a0
                  auipc        sp, 279324
                  addi         s11, s11, 7 #update loop 0 counter
                  bltu         s11, s1, sub_3_0_0_t #branch for loop 0
                  addi         a0, s8, 328
                  bgeu         a6, a4, sub_3_0_1_t #branch for loop 1
                  lui          s3, 388707
                  srli         a1, s10, 25
                  andi         a2, gp, 758
                  srai         s5, tp, 11
                  sltiu        a1, a0, 1671
                  ori          sp, zero, -1713
                  nop
                  add          a2, zero, s3
                  blt          a0, a5, 9f
                  srl          s11, s2, tp
9:                lui          t1, 237462
                  sltiu        s6, s3, 1803
                  and          a6, s3, t5
                  bge          s7, s5, 28f
                  slti         s5, a7, 1951
                  or           tp, a1, a5
                  srl          t2, a2, s3
                  lui          sp, 418771
                  slti         a7, s6, 642
                  blt          a7, t1, 20f
                  beq          t5, a1, 21f
20:               sra          a2, a3, s8
21:               sltu         ra, a2, t4
                  auipc        t5, 856014
                  sll          ra, s10, s8
                  sll          ra, t4, s10
                  sll          s3, a2, s11
                  sll          a1, gp, sp
                  slti         a3, sp, 662
28:               addi         a1, gp, -1436
                  sltiu        s8, a6, -1733
                  blt          t2, zero, 42f
                  addi         a0, s6, -1750
                  beq          s8, sp, 33f
33:               xor          t3, sp, a1
                  lui          t0, 288671
                  srli         t6, s7, 5
                  srl          sp, a5, t3
                  srl          s1, a1, a5
                  bgeu         s4, s11, 48f
                  addi         s8, a1, 2003
                  lui          t5, 508420
                  and          a3, t0, a5
42:               bltu         s2, t1, 48f
                  srl          tp, s2, a1
                  or           t4, s2, ra
                  nop
                  sra          ra, s4, s8
                  xor          zero, a7, gp
48:               ori          a3, tp, -136
                  xor          sp, t4, s3
                  or           tp, zero, s7
                  srl          a1, s2, t6
                  or           s8, s3, t6
                  nop
                  addi         t0, s6, 1456
                  add          s10, a7, s4
                  slli         s5, a4, 23
                  sll          t3, s7, a3
                  addi         zero, a3, -961
                  lui          t4, 717959
                  slti         sp, tp, -1091
                  bne          s5, a4, 65f
                  nop
                  andi         t4, t0, 439
                  sra          a1, t0, s4
65:               srai         a4, a3, 11
                  andi         a4, s3, 756
                  ori          t4, s10, 1524
                  add          ra, a1, t4
                  xori         s11, s2, -1356
                  nop
                  slli         s8, s2, 11
                  add          s9, s7, s11
                  sub          s11, s7, t2
                  blt          s9, s2, 84f
                  srl          s5, s9, sp
                  srai         s8, a1, 17
                  or           a2, s1, s8
                  slli         s7, s10, 24
                  andi         t6, ra, 1057
                  and          a0, s3, s0
                  srli         s11, t2, 13
                  beq          s8, a4, 97f
                  addi         zero, t4, 1747
84:               bgeu         s0, tp, 97f
                  add          t6, t6, t0
                  sra          s11, s2, s1
                  lui          s8, 686666
                  andi         ra, s5, 962
                  slli         s11, s10, 7
                  xor          s0, t6, s10
                  add          s1, s0, s2
                  beq          t6, s6, 98f
                  bltu         t6, a5, 112f
                  beq          t1, s7, 110f
                  ori          a4, s6, -1638
                  sub          t3, t3, t2
97:               slti         t1, zero, -1585
98:               sra          a0, s6, a2
                  and          a4, a7, s11
                  srl          t4, t1, s6
                  slti         a6, s6, -90
                  sub          s5, t3, t1
                  bne          t0, a1, 104f
104:              bne          s3, sp, 123f
                  andi         s8, a0, 1663
                  auipc        tp, 734774
                  sltiu        s0, s1, 67
                  andi         a0, zero, -1598
                  sll          t3, a4, gp
110:              auipc        s10, 213379
                  sltu         t4, s1, ra
112:              and          a3, tp, a6
                  and          ra, s10, s0
                  or           s3, t3, a6
                  nop
                  ori          a7, s5, -1475
                  addi         t4, s2, -1628
                  xor          sp, a4, s7
                  sltiu        t5, s7, -1852
                  xor          a6, s2, a5
                  sub          t0, t5, a4
                  slt          s9, t3, a4
123:              blt          t2, s0, 140f
                  bltu         a7, gp, 129f
                  ori          s10, zero, 1016
                  slli         a4, gp, 6
                  beq          gp, s5, 137f
                  sub          s11, gp, t4
129:              lui          s6, 503129
                  blt          a0, t4, 134f
                  bne          gp, s7, 150f
                  xori         s7, a2, -1621
                  or           s11, s8, s7
134:              bne          sp, ra, 139f
                  beq          a1, a7, 139f
                  srai         s11, t4, 6
137:              slt          t5, s5, a2
                  slti         t2, s11, 1805
139:              and          ra, t4, a4
140:              xori         gp, a0, -1026
                  beq          sp, t0, 159f
                  bgeu         t5, t0, 156f
                  nop
                  srl          zero, s8, s6
                  srai         s0, t0, 2
                  and          a4, a0, s8
                  sltu         s0, ra, s11
                  slti         s0, s5, -103
                  slli         t6, s7, 19
150:              and          t2, s7, a2
                  sll          ra, zero, a4
                  slli         s6, t3, 28
                  slti         a1, s10, -1734
                  xor          zero, s1, s5
                  sltiu        s11, a3, -180
156:              sltiu        s5, a1, 1815
                  sll          t0, ra, a7
                  lui          zero, 881785
159:              add          t6, s4, tp
                  bne          s6, s7, 179f
                  slti         s7, a5, -334
                  sra          ra, t0, t5
                  bltu         s10, a2, 164f
164:              bgeu         t0, s5, 165f
165:              or           ra, t3, a0
                  sltiu        s11, a5, 1850
                  slli         s10, a1, 31
                  ori          t1, s7, -65
                  xor          s3, t3, s8
                  slti         ra, t4, -391
                  lui          t6, 740632
                  andi         s8, s2, -1495
                  srl          s10, s9, ra
                  slt          a4, s3, zero
                  srl          a2, a0, s1
                  sra          a2, a1, s4
                  ori          s0, a0, -1265
                  or           sp, s3, s5
179:              ori          s9, sp, -475
                  srai         s6, s1, 16
                  slti         s5, zero, -1805
                  srli         ra, t6, 1
                  sra          tp, a3, a4
                  beq          t1, s11, 197f
                  bgeu         s8, tp, 200f
                  add          t5, s7, s9
                  srl          s10, a1, a5
                  sra          s1, s10, a6
                  nop
                  sll          s11, a3, a6
                  slt          tp, s4, s3
                  or           a3, t4, a5
                  lui          s10, 412457
                  auipc        s0, 993486
                  xor          s10, a6, s2
                  addi         gp, t0, 346
197:              bgeu         a1, s9, 199f
                  srl          zero, s9, t3
199:              bne          a4, gp, 217f
200:              srli         s0, s5, 9
                  bne          a4, a2, 202f
202:              slt          s1, ra, tp
                  beq          s6, s5, 207f
                  sra          t5, a3, a4
                  add          a2, s3, s4
                  blt          a4, s1, 225f
207:              addi         s11, s8, 864
                  xori         s9, s7, -1161
                  xor          t5, s9, gp
                  slt          t0, sp, a2
                  and          t6, s7, a0
                  and          gp, sp, tp
                  xor          a4, s0, t1
                  nop
                  lui          a6, 397917
                  bge          a6, ra, 230f
217:              sltu         s3, s7, t0
                  sra          t3, t1, zero
                  beq          s0, s3, 220f
220:              bne          t5, t3, 236f
                  slt          s11, gp, s8
                  addi         a1, s5, 56
                  addi         s10, zero, 1 #init loop 0 counter
                  lui          a1, 466793
                  addi         a2, zero, 11 #init loop 0 limit
sub_3_1_0_t:      ori          s11, a7, -1976
                  xor          sp, s1, a6
                  addi         s10, s10, 10 #update loop 0 counter
                  andi         sp, s6, -1701
                  beq          s10, a2, sub_3_1_0_t #branch for loop 0
                  sub          s5, s10, t2
                  slti         a4, a0, 1629
                  addi         s8, s4, 673
                  xor          s8, a7, tp
                  la           t3, sub_4
                  andi         t4, t5, -1099
                  and          t4, a0, t2
                  addi         t3, t3, -490
                  srl          s9, a6, a4
                  sub          s5, a0, s3
sub_3_j5:         jalr         ra, t3, 491 #jump sub_3 -> sub_4
                  bne          a2, a6, 226f
225:              sra          tp, s10, a7
226:              xor          t5, t0, a1
                  and          t0, s1, s8
                  beq          a5, sp, 229f
229:              sltiu        t6, s1, -1682
230:              sub          s1, a1, s5
                  sub          t3, s9, a7
                  sltu         sp, t3, s2
                  sltiu        s3, t0, -233
                  nop
                  srl          s10, a1, s0
236:              bne          a4, s3, 240f
                  slti         t5, sp, 445
                  ori          a1, s3, 901
                  xori         s11, a2, -1892
240:              bgeu         gp, s11, 252f
                  sub          t0, sp, a6
                  sub          a4, a5, a2
                  sll          t6, s2, t3
                  ori          a7, a1, -1380
                  andi         s10, s10, -1568
                  ori          s9, a7, -278
                  srl          s10, a3, a0
                  srai         tp, s9, 13
                  sltiu        a2, t5, 1391
                  andi         s5, a4, -605
                  srl          a2, s4, s2
252:              blt          a2, s10, 269f
                  auipc        s10, 19417
                  sltiu        s1, t0, -662
                  or           s10, sp, s2
                  lui          ra, 762586
                  slli         t4, zero, 24
                  bltu         t5, s5, 259f
259:              srai         a7, a3, 21
                  sltu         a7, t6, s7
                  srli         t3, sp, 21
                  addi         a7, s1, 558
                  srl          t2, s3, s5
                  addi         s6, s2, -199
                  slti         a7, gp, -66
                  ori          t5, s0, -1577
                  bgeu         s0, ra, 280f
                  bne          s2, t0, 287f
269:              sll          a1, s0, a5
                  bge          a4, t2, 276f
                  auipc        s9, 220805
                  slli         s3, s9, 13
                  addi         t0, a4, 987
                  add          t5, ra, s3
                  bltu         a6, a6, 279f
276:              andi         sp, s6, -1779
                  beq          s7, a4, 282f
                  and          s1, zero, t1
279:              sub          s0, a3, s5
280:              blt          a2, a2, 299f
                  sub          t0, t6, a7
282:              srl          t6, a2, zero
                  bge          gp, t3, 285f
                  sub          t1, ra, a0
285:              lui          a1, 160027
                  ori          a1, a5, 1183
287:              srli         s3, a0, 24
                  sll          a4, a6, a2
                  auipc        t2, 23738
                  bne          t6, s6, 296f
                  bltu         t4, zero, 310f
                  srli         s1, t4, 15
                  nop
                  bge          sp, s0, 310f
                  lui          sp, 763082
296:              and          a4, a0, s3
                  slti         t0, t3, 204
                  sltiu        s7, t2, -1594
299:              andi         sp, t0, 1760
                  slt          s5, t0, t2
                  xori         t6, s4, 1820
                  auipc        a2, 687604
                  sltu         s1, tp, ra
                  addi         a2, t1, 804
                  ori          s1, s10, -1434
                  sra          s1, s9, s2
                  auipc        s8, 467080
                  nop
                  addi         s10, s7, -518
310:              bne          a5, s3, 315f
                  bgeu         a7, a7, 321f
                  ori          s11, ra, 1897
                  andi         t3, gp, 910
                  slli         t5, sp, 4
315:              nop
                  sra          a3, s2, s9
                  bge          t6, s5, 322f
                  xori         zero, sp, -787
                  and          s5, a0, s1
                  sll          s5, s7, s6
321:              sltu         zero, s11, a2
322:              and          t3, a6, s2
                  and          zero, s11, s2
                  srl          a0, s4, t4
                  sll          t0, s3, a1
                  lw           ra, 4(s2)
                  addi         s2, s2, 60
                  andi         s5, t5, 1245
                  sltiu        t3, t1, 1618
465:              addi x2, x1, 0
465:              jalr x2, x2, 0
sub_1:            srli         s1, a6, 15
                  addi         t0, s8, 455
                  sll          s1, gp, t4
                  addi         s2, s2, -56
                  sw           ra, 4(s2)
                  andi         a3, zero, 699
                  addi         t1, a7, -1839
                  srl          s3, a4, a7
                  addi         s3, zero, 8 #init loop 1 counter
                  srli         t1, tp, 19
                  andi         s8, t4, 922
                  sll          t0, s0, a5
                  andi         a1, s11, -1433
                  andi         a0, t0, -1407
                  sltiu        s1, a7, 994
                  nop
                  addi         tp, zero, -14 #init loop 1 limit
sub_1_1_1_t:      ori          zero, a2, 1735
                  addi         s3, s3, -10 #update loop 1 counter
                  slt          s7, t3, t3
                  addi         t6, zero, -3 #init loop 0 counter
                  andi         a7, a4, -1123
                  addi         s5, zero, 7 #init loop 0 limit
                  add          s11, s6, s10
                  and          sp, gp, a6
sub_1_1_0_t:      addi         t4, s10, 1616
                  sltiu        ra, t5, -48
                  sltiu        t4, t4, -1315
                  addi         a2, s2, 1768
                  srl          s11, t2, s1
                  or           s6, s3, s5
                  addi         t6, t6, 5 #update loop 0 counter
                  beq          t6, s5, sub_1_1_0_t #branch for loop 0
                  sra          ra, t1, s7
                  sub          t5, s2, s5
                  srli         a3, s0, 22
                  or           a6, s8, t6
                  ori          zero, sp, 1721
                  or           zero, a3, zero
                  slt          s9, tp, a3
                  lui          t0, 886034
                  bge          s3, tp, sub_1_1_1_t #branch for loop 1
                  sub          a6, a2, a4
                  addi         t6, zero, -10 #init loop 1 counter
                  addi         t5, zero, 14 #init loop 1 limit
sub_1_0_1_t:      xor          t1, s7, a2
                  auipc        t0, 529293
                  addi         t6, t6, 8 #update loop 1 counter
                  addi         a4, zero, 6 #init loop 0 counter
                  addi         s7, zero, 17 #init loop 0 limit
                  sub          s3, s9, t1
                  and          t1, s0, t4
sub_1_0_0_t:      auipc        s10, 509558
                  addi         a4, a4, 4 #update loop 0 counter
                  blt          a4, s7, sub_1_0_0_t #branch for loop 0
                  beq          t6, t5, sub_1_0_1_t #branch for loop 1
                  andi         a1, s8, -520
                  addi         s7, zero, -5 #init loop 0 counter
                  ori          t5, t2, -189
                  srli         t3, s8, 20
                  sltiu        t2, s1, -61
                  andi         zero, t3, 1768
                  sltiu        a1, zero, -1930
                  and          t6, s6, a3
                  sltu         a2, s0, s8
                  add          t6, s0, a2
                  srli         s6, a1, 19
                  sltu         a2, sp, s10
                  lui          t0, 347171
                  addi         ra, zero, 6 #init loop 0 limit
                  srl          gp, a0, s1
                  add          a0, s11, t5
                  sltu         t6, t2, a0
                  addi         gp, ra, -1593
                  sra          a7, t0, ra
                  add          s0, a4, s2
                  sll          t5, a6, s11
sub_1_2_0_t:      auipc        s1, 457907
                  addi         s7, s7, 8 #update loop 0 counter
                  slti         a1, gp, 1368
                  and          a3, ra, t4
                  addi         t4, a2, 898
                  addi         zero, t0, 133
                  sll          a3, s6, a3
                  lui          t2, 262909
                  bltu         s7, ra, sub_1_2_0_t #branch for loop 0
                  andi         t6, t6, 1286
                  addi         s9, zero, -2 #init loop 1 counter
                  addi         s1, zero, 15 #init loop 1 limit
sub_1_3_1_t:      auipc        s5, 487853
                  addi         s9, s9, 3 #update loop 1 counter
                  sltu         t5, a2, t6
                  addi         gp, zero, -8 #init loop 0 counter
                  addi         sp, zero, -16 #init loop 0 limit
                  add          s7, s6, sp
sub_1_3_0_t:      sltiu        t6, sp, -1135
                  srli         t2, s9, 28
                  addi         gp, gp, -8 #update loop 0 counter
                  beq          gp, sp, sub_1_3_0_t #branch for loop 0
                  bltu         s9, s1, sub_1_3_1_t #branch for loop 1
                  srli         a2, a5, 16
                  srl          s5, t5, a4
                  xor          s1, s3, a6
                  srl          s1, a0, sp
                  addi         s0, a1, -1775
                  sra          s1, a1, tp
                  auipc        s10, 822486
                  nop
                  srai         s6, sp, 0
                  xori         t5, zero, -1985
                  bne          ra, a5, 19f
                  slti         t4, s11, -751
                  and          gp, s8, a6
                  ori          s0, s8, -1465
                  blt          s9, s1, 22f
                  sltiu        t4, a2, -585
                  ori          s7, a1, -263
                  nop
                  add          a7, tp, s1
                  sra          tp, zero, a7
19:               slt          t3, s8, s11
                  sub          gp, a5, t6
                  or           gp, tp, s10
22:               slt          a2, t4, t5
                  sra          s10, t2, t1
                  srai         gp, t2, 31
                  auipc        s3, 513945
                  xor          t2, t4, zero
                  sltu         t0, s11, a0
                  nop
                  auipc        s9, 507986
                  sltiu        t3, t3, -1035
                  slt          t3, t3, a7
                  sll          t5, t1, t3
                  slli         a3, t0, 10
                  lui          t1, 835492
                  srai         a3, a7, 28
                  andi         s3, t5, -1871
                  and          a7, s0, a2
                  addi         s1, s10, -1272
                  nop
                  or           s9, a4, t0
                  andi         s8, a5, -1927
                  lui          a7, 142022
                  srli         a3, s1, 0
                  beq          sp, s1, 63f
                  andi         tp, t4, 583
                  nop
                  auipc        s3, 1036833
                  andi         s5, tp, -1614
                  srl          s11, s9, zero
                  sltu         gp, a3, s9
                  slt          a1, sp, s11
                  bgeu         sp, zero, 55f
                  andi         t1, sp, 254
                  andi         s7, t4, 604
55:               xor          s7, zero, a3
                  and          gp, t3, s11
                  slt          t0, a0, ra
                  and          a3, s10, sp
                  srl          tp, s9, t2
                  slli         a6, s1, 13
                  ori          zero, a2, 0
                  and          s7, s1, s3
63:               auipc        s11, 739008
                  xor          t3, sp, s10
                  sub          t4, t0, s3
                  srl          gp, sp, a2
                  sltu         a6, s2, t0
                  ori          zero, s10, 1836
                  slli         s6, ra, 22
                  lui          zero, 952
                  auipc        t2, 617998
                  add          s6, a2, tp
                  sub          a3, t6, s6
                  sra          zero, t3, a0
                  ori          t3, tp, -755
                  beq          a0, a0, 81f
                  andi         a3, s7, 1722
                  andi         a2, s3, -900
                  srai         t0, a0, 14
                  xor          gp, ra, t4
81:               and          t2, a2, a7
                  sltu         t6, t1, s11
                  bge          t5, a6, 95f
                  auipc        s11, 922760
                  auipc        t3, 806268
                  beq          s4, a1, 101f
                  bltu         a7, zero, 91f
                  sltu         t0, a4, a3
                  nop
                  addi         a0, t5, 107
91:               sra          a0, a2, s6
                  addi         s6, zero, 4 #init loop 0 counter
                  or           s9, t4, ra
                  srli         a1, s7, 22
                  and          s5, t4, s0
                  and          t1, a0, gp
                  add          zero, t1, s8
                  andi         t4, t4, 1627
                  add          s1, a7, a1
                  and          tp, t6, s9
                  addi         t6, zero, 13 #init loop 0 limit
sub_1_4_0_t:      xor          zero, a3, s9
                  addi         s6, s6, 1 #update loop 0 counter
                  slli         a2, t6, 29
                  slli         sp, a4, 21
                  xor          s7, s0, sp
                  nop
                  auipc        sp, 232571
                  sll          t3, a5, a3
                  sltiu        zero, a4, -586
                  slli         sp, s11, 20
                  sltiu        s7, gp, 316
                  blt          s6, t6, sub_1_4_0_t #branch for loop 0
                  addi         t0, s7, 758
                  xori         s3, s9, -1574
                  srai         s5, s10, 11
                  sra          sp, t3, s8
95:               sltu         zero, a3, a3
                  srl          a4, a4, a5
                  nop
                  and          s11, s0, ra
                  blt          t5, a7, 119f
                  srai         s10, s8, 9
101:              sll          s10, s8, s2
                  auipc        a6, 97968
                  addi         s11, s11, 111
                  slt          t0, sp, s11
                  sltu         a1, s5, t4
                  sra          s3, a6, t4
                  sltiu        t5, t2, 434
                  lui          tp, 376370
                  sll          t6, t3, s6
                  srli         s0, a2, 30
                  nop
                  bge          s10, a4, 132f
                  bgeu         s11, a1, 117f
                  sltiu        s7, t0, 762
                  auipc        s10, 226285
                  ori          s10, a6, -1243
117:              sltiu        ra, t1, 68
                  sub          a3, s11, a2
119:              bgeu         a2, t6, 132f
                  andi         a0, t0, 456
                  srli         a1, a4, 3
                  xori         s8, a0, 621
                  addi         sp, a4, 1144
                  andi         a4, s11, 714
                  sltiu        sp, t4, -1268
                  ori          sp, s4, 1594
                  slti         sp, s3, -1215
                  bne          a5, s7, 140f
                  sltiu        a1, a6, -206
                  srli         a4, t1, 5
                  beq          tp, s8, 145f
132:              xor          s7, s0, s9
                  sra          s6, s8, gp
                  sltiu        s9, a3, -2024
                  or           t1, gp, s3
                  addi         a3, t4, -763
                  beq          zero, s10, 153f
                  add          gp, a7, t0
                  nop
140:              xori         gp, ra, -793
                  auipc        s9, 405160
                  slti         s9, zero, 1920
                  slli         a3, a6, 22
                  add          gp, s10, a5
145:              and          s7, t0, s11
                  andi         t3, gp, -1864
                  bgeu         s10, s0, 153f
                  or           t2, t5, s9
                  bne          tp, s11, 151f
                  bne          t2, t0, 162f
151:              slt          gp, s2, a6
                  sltu         a2, a1, t6
153:              sltu         s10, s0, t4
                  andi         zero, s2, -947
                  xori         gp, s3, -958
                  bge          a0, t3, 176f
                  bne          s2, s9, 171f
                  srli         s5, t1, 25
                  sll          s7, a4, ra
                  sll          t0, s1, s1
                  lui          s7, 413758
162:              srli         ra, s1, 14
                  srli         a0, s0, 10
                  slt          s11, s2, ra
                  nop
                  xori         a1, gp, 1847
                  or           a3, a0, a7
                  auipc        t1, 381996
                  andi         s5, s9, -1235
                  or           tp, s0, t6
171:              srli         a1, s2, 6
                  addi         s6, tp, -1284
                  bltu         a4, s2, 184f
                  ori          s3, t1, 1548
                  xori         t3, s3, -539
176:              nop
                  or           t1, s5, s7
                  slt          s7, a4, s5
                  slt          s8, s7, a6
                  bne          s11, a2, 184f
                  bgeu         sp, tp, 199f
                  sra          a3, s4, t1
                  and          t1, ra, s1
184:              beq          t5, s4, 201f
                  slt          ra, s3, s9
                  and          s0, s1, s10
                  bne          t2, s10, 204f
                  sltiu        s0, a4, -1063
                  bne          s8, zero, 202f
                  xori         s0, s7, -662
                  slti         ra, t3, -1587
                  slli         t4, a3, 14
                  or           s10, a7, a6
                  and          a6, s8, t5
                  beq          t1, a7, 202f
                  sra          s6, zero, a5
                  srai         t1, a1, 15
                  addi         t3, s6, -1679
199:              slt          sp, t6, tp
                  beq          s4, s5, 202f
201:              add          s3, t4, a3
202:              and          s7, sp, t3
                  bltu         a0, s0, 205f
204:              slti         tp, a2, 931
205:              ori          s9, t6, -1524
                  xori         a2, s3, -1619
                  and          a2, s3, t2
                  sll          t2, s0, tp
                  sll          s3, a4, t4
                  sll          s1, s11, s4
                  bgeu         s9, s2, 219f
                  or           s1, sp, a0
                  or           s3, t5, a1
                  sltiu        a6, s4, -962
                  srli         tp, t4, 29
                  slti         s11, s10, 1978
                  nop
                  slti         s5, a4, 2039
219:              sub          t2, s1, a0
                  slli         sp, t5, 12
                  xor          s5, sp, s1
                  andi         t4, a1, -1756
                  addi         gp, t4, 535
                  bltu         t2, s6, 240f
                  lui          t1, 903502
                  addi         t0, s6, -171
                  srl          s10, s10, s10
                  lui          s7, 817359
                  slt          t5, s7, a2
                  sltiu        s3, s10, -2046
                  slt          a6, zero, t6
                  beq          s1, s1, 249f
                  bne          t6, s10, 242f
                  nop
                  sll          s6, ra, a7
                  srai         t5, s3, 13
                  xor          s6, s10, a5
                  or           t1, t5, a4
                  srl          s0, s9, s4
240:              bge          a4, t2, 244f
                  slt          s3, t1, a6
242:              ori          t3, gp, 1304
                  beq          s3, sp, 245f
244:              slli         ra, s9, 19
245:              sll          a3, s8, ra
                  sltu         a6, a4, s4
                  addi         zero, s1, -1842
                  slt          a6, s5, a4
249:              bne          a5, s4, 253f
                  addi         t6, t3, -111
                  sll          s5, t1, s2
                  srli         t5, s4, 5
253:              nop
                  slti         a2, t3, 409
                  add          s8, sp, s10
                  slli         t5, a7, 1
                  srl          a0, a7, a2
                  ori          s8, s3, 1248
                  xor          a6, gp, s0
                  srl          t1, t4, t5
                  nop
                  sll          a4, a7, s8
                  or           s8, a7, s8
                  lw           ra, 4(s2)
                  andi         zero, s0, 1551
                  srli         a2, s8, 16
                  addi         s5, a3, 1126
                  addi         s2, s2, 56
                  and          t2, t2, t0
394:              addi x30, x1, 0
394:              jalr x30, x30, 0
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
                  add x20, x18, zero
                  csrr x22, 0x300 # MSTATUS
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 31
                  bne x22, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x22, 0x341 # MEPC
                  csrr x22, 0x342 # MCAUSE
                  li x7, 0x3 # BREAKPOINT
                  beq x22, x7, ebreak_handler
                  li x7, 0x8 # ECALL_UMODE
                  beq x22, x7, ecall_handler
                  li x7, 0x9 # ECALL_SMODE
                  beq x22, x7, ecall_handler
                  li x7, 0xb # ECALL_MMODE
                  beq x22, x7, ecall_handler
                  li x7, 0x1
                  beq x22, x7, instr_fault_handler
                  li x7, 0x5
                  beq x22, x7, load_fault_handler
                  li x7, 0x7
                  beq x22, x7, store_fault_handler
                  li x7, 0xc
                  beq x22, x7, pt_fault_handler
                  li x7, 0xd
                  beq x22, x7, pt_fault_handler
                  li x7, 0xf
                  beq x22, x7, pt_fault_handler
                  li x7, 0x2 # ILLEGAL_INSTRUCTION
                  beq x22, x7, illegal_instr_handler
                  csrr x7, 0x343 # MTVAL
                  1: la x15, test_done
                  jalr x1, x15, 0

ecall_handler:    
                  la x22, _start
                  sw x0, 0(x22)
                  sw x1, 4(x22)
                  sw x2, 8(x22)
                  sw x3, 12(x22)
                  sw x4, 16(x22)
                  sw x5, 20(x22)
                  sw x6, 24(x22)
                  sw x7, 28(x22)
                  sw x8, 32(x22)
                  sw x9, 36(x22)
                  sw x10, 40(x22)
                  sw x11, 44(x22)
                  sw x12, 48(x22)
                  sw x13, 52(x22)
                  sw x14, 56(x22)
                  sw x15, 60(x22)
                  sw x16, 64(x22)
                  sw x17, 68(x22)
                  sw x18, 72(x22)
                  sw x19, 76(x22)
                  sw x20, 80(x22)
                  sw x21, 84(x22)
                  sw x22, 88(x22)
                  sw x23, 92(x22)
                  sw x24, 96(x22)
                  sw x25, 100(x22)
                  sw x26, 104(x22)
                  sw x27, 108(x22)
                  sw x28, 112(x22)
                  sw x29, 116(x22)
                  sw x30, 120(x22)
                  sw x31, 124(x22)
                  la x15, write_tohost
                  jalr x0, x15, 0

instr_fault_handler:
                  add x18, x20, zero
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
                  add x18, x20, zero
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
                  add x18, x20, zero
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
                  csrr  x22, 0x341
                  addi  x22, x22, 4
                  csrw  0x341, x22
                  add x18, x20, zero
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
                  csrr  x22, 0x341
                  addi  x22, x22, 4
                  csrw  0x341, x22
                  add x18, x20, zero
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
                  csrr  x22, 0x300 # MSTATUS;
                  csrr  x22, 0x304 # MIE;
                  csrr  x22, 0x344 # MIP;
                  csrrc x22, 0x344, x22 # MIP;
                  add x18, x20, zero
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
