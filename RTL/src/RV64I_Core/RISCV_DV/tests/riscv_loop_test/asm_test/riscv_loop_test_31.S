.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x10, h0_start
jalr x0, x10, 0
h0_start:
                  li x19, 0x40000100
                  csrw 0x301, x19
kernel_sp:        
                  la x31, kernel_stack_end

trap_vec_init:    
                  la x19, mtvec_handler
                  ori x19, x19, 1
                  csrw 0x305, x19 # MTVEC

mepc_setup:       
                  la x19, init
                  csrw 0x341, x19

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x19, 0x1800
                  csrw 0x300, x19 # MSTATUS
                  mret
init:             
                  li x0, 0x10ef2806
                  li x1, 0x80000000
                  li x2, 0xba894f41
                  li x3, 0xf796e45b
                  li x4, 0xc
                  li x5, 0xfed4efe9
                  li x6, 0xd1290e78
                  li x7, 0x5
                  li x8, 0xb
                  li x9, 0xfa50e90c
                  li x10, 0xb
                  li x11, 0x0
                  li x12, 0x80000000
                  li x13, 0x0
                  li x14, 0x1
                  li x15, 0x80000000
                  li x16, 0x80000000
                  li x17, 0xf3d0d2d8
                  li x19, 0xa58384da
                  li x20, 0xf4b904b3
                  li x21, 0xa
                  li x22, 0xd
                  li x23, 0x80000000
                  li x24, 0x3
                  li x25, 0xfa7cc24f
                  li x26, 0xf51ac4d8
                  li x27, 0x1
                  li x28, 0x47e43c22
                  li x29, 0x80000000
                  li x30, 0xa7ffaba7
                  la x18, user_stack_end
main:             addi         s7, zero, -6 #init loop 0 counter
                  xori         tp, a2, -406
                  auipc        gp, 941933
                  slti         sp, s5, 489
                  nop
                  add          t1, t1, a0
                  or           s0, sp, s10
                  addi         tp, s4, -1464
                  addi         a4, t4, 1857
                  addi         a5, zero, 4 #init loop 0 limit
                  andi         gp, zero, -1773
main_1_0_t:       andi         a6, s11, -1963
                  auipc        s5, 634430
                  lui          t3, 979593
                  slti         a3, s1, 1531
                  sub          t5, t5, gp
                  addi         s7, s7, 2 #update loop 0 counter
                  sll          a6, t4, s0
                  sltiu        t0, t1, 1355
                  auipc        s0, 402156
                  and          tp, gp, t0
                  add          t4, a4, zero
                  lui          t5, 435027
                  slti         a1, tp, -1349
                  beq          s7, a5, main_1_0_t #branch for loop 0
                  ori          s9, t6, -950
                  addi         s9, zero, 5 #init loop 0 counter
                  addi         gp, zero, 6 #init loop 0 limit
                  lui          zero, 912705
                  addi         a6, a3, 481
                  sltiu        t2, t2, -1825
                  and          a7, gp, s1
                  ori          tp, s4, -1082
                  srl          t3, zero, ra
                  ori          t0, a4, -1767
main_3_0_t:       slt          a4, s8, a6
                  nop
                  addi         s9, s9, 7 #update loop 0 counter
                  sra          a3, s7, a0
                  srl          s6, a4, s8
                  sll          zero, s9, s7
                  srl          tp, s3, s8
                  lui          s11, 777584
                  lui          a2, 388482
                  ori          s10, s7, -1210
                  sll          s8, s11, zero
                  or           a4, t4, t2
                  sub          sp, s11, t0
                  sltu         a5, t4, s3
                  srl          sp, a1, s2
                  blt          s9, gp, main_3_0_t #branch for loop 0
                  slt          s7, t5, a2
                  addi         a4, zero, 1 #init loop 1 counter
                  addi         s8, s9, -1743
                  xori         s4, s0, 947
                  sltiu        s11, s5, 593
                  addi         t5, zero, -11 #init loop 1 limit
                  srai         s7, t5, 1
                  nop
                  and          t1, t2, s6
main_2_1_t:       sub          s11, t6, a6
                  addi         s6, a3, -1029
                  srai         ra, s2, 31
                  addi         ra, t2, 239
                  xori         sp, a7, -600
                  addi         a4, a4, -2 #update loop 1 counter
                  srli         s0, ra, 16
                  sll          a7, s4, s4
                  addi         gp, zero, -3 #init loop 0 counter
                  addi         s1, zero, 15 #init loop 0 limit
                  sltu         a3, s0, s7
                  lui          s7, 813044
                  sltu         s0, t2, a0
main_2_0_t:       sub          s0, a3, s8
                  srl          t2, s10, gp
                  sub          a6, a7, s11
                  addi         a1, a7, -1111
                  or           s0, s7, tp
                  addi         gp, gp, 9 #update loop 0 counter
                  srli         s6, s7, 17
                  beq          gp, s1, main_2_0_t #branch for loop 0
                  ori          s9, sp, -886
                  bge          a4, t5, main_2_1_t #branch for loop 1
                  lui          s8, 558075
                  addi         s6, zero, 8 #init loop 1 counter
                  sra          t0, s11, s4
                  addi         t5, zero, 7 #init loop 1 limit
                  srai         a4, s7, 29
                  ori          t4, t5, 159
main_0_1_t:       or           gp, t6, gp
                  and          s10, s5, ra
                  addi         s6, s6, -6 #update loop 1 counter
                  lui          a5, 979827
                  slli         s11, tp, 28
                  addi         s9, zero, 5 #init loop 0 counter
                  addi         s0, zero, -9 #init loop 0 limit
                  xori         s4, t0, 1050
                  auipc        a7, 959195
                  srai         s7, s2, 27
                  addi         s4, tp, -1035
                  ori          a5, zero, 1458
                  nop
                  srl          s4, s9, a4
                  and          t0, s7, t3
main_0_0_t:       ori          a3, s0, 800
                  slli         s10, a1, 20
                  addi         s9, s9, -9 #update loop 0 counter
                  bge          s9, s0, main_0_0_t #branch for loop 0
                  srli         t0, t1, 7
                  bgeu         s6, t5, main_0_1_t #branch for loop 1
                  slt          s11, a6, s7
                  addi         a3, zero, 2 #init loop 1 counter
                  srai         t4, t4, 25
                  addi         ra, zero, 15 #init loop 1 limit
main_4_1_t:       sltu         s6, s4, t5
                  addi         a3, a3, 9 #update loop 1 counter
                  addi         s1, zero, -8 #init loop 0 counter
                  slti         t4, s2, -854
                  addi         a1, zero, -13 #init loop 0 limit
                  ori          s0, t3, 252
                  slt          a4, s8, a1
main_4_0_t:       nop
                  addi         s1, s1, -1 #update loop 0 counter
                  bge          s1, a1, main_4_0_t #branch for loop 0
                  sub          s9, t0, a1
                  sub          s4, s9, zero
                  bltu         a3, ra, main_4_1_t #branch for loop 1
                  sub          s10, sp, s7
                  addi         t5, zero, -3 #init loop 0 counter
                  addi         tp, zero, 15 #init loop 0 limit
main_9_0_t:       or           s9, s4, t1
                  addi         t5, t5, 8 #update loop 0 counter
                  bltu         t5, tp, main_9_0_t #branch for loop 0
                  xori         s9, t4, -1168
                  addi         s9, zero, 8 #init loop 0 counter
                  addi         t5, zero, 8 #init loop 0 limit
                  xor          s7, s6, a0
                  sltiu        t1, s10, -1363
main_6_0_t:       xori         tp, s3, -1464
                  sub          s5, sp, zero
                  addi         s9, s9, -7 #update loop 0 counter
                  srli         s5, t3, 16
                  auipc        s0, 944029
                  sra          s0, s11, a1
                  addi         a7, a0, -1451
                  bgeu         s9, t5, main_6_0_t #branch for loop 0
                  srl          zero, t5, s8
                  addi         a4, zero, -1 #init loop 1 counter
                  addi         t3, zero, 2 #init loop 1 limit
                  sll          zero, s5, tp
                  sra          s1, a7, t5
main_7_1_t:       nop
                  sltu         a5, s2, zero
                  addi         a4, a4, 1 #update loop 1 counter
                  sltu         s4, s9, a5
                  addi         t5, zero, 4 #init loop 0 counter
                  sub          s4, sp, gp
                  slti         a7, s5, -124
                  addi         t1, zero, -2 #init loop 0 limit
main_7_0_t:       xor          s4, a6, s9
                  add          s6, t4, a6
                  addi         t5, t5, -4 #update loop 0 counter
                  bge          t5, t1, main_7_0_t #branch for loop 0
                  sltiu        tp, a4, -451
                  xor          s3, a7, s4
                  beq          a4, t3, main_7_1_t #branch for loop 1
                  sltiu        t4, ra, 1453
                  addi         s6, zero, 7 #init loop 0 counter
                  xor          s5, s2, a0
                  ori          s9, s7, -1714
                  xori         ra, a0, -422
                  add          a2, t3, sp
                  addi         t5, zero, 7 #init loop 0 limit
                  sra          zero, s2, s5
                  slt          t3, t5, a6
                  slli         a2, ra, 27
                  slti         t4, t5, 650
main_5_0_t:       sltu         t0, s7, t2
                  srli         a2, ra, 9
                  ori          a6, s7, -1933
                  addi         s6, s6, -2 #update loop 0 counter
                  slli         gp, a5, 20
                  or           ra, s4, sp
                  xori         s9, t1, 1848
                  srli         a4, a2, 22
                  and          a6, s6, a2
                  bgeu         s6, t5, main_5_0_t #branch for loop 0
                  srai         zero, t2, 7
                  beq          s6, s10, 16f
                  add          s1, t5, s0
                  addi         s3, a3, 2015
                  bgeu         s3, s3, 20f
                  xori         a4, t5, 300
                  bltu         t1, a6, 17f
                  srl          s7, ra, a4
                  and          t0, t1, a0
                  or           a7, s10, s8
                  srai         s0, s0, 20
                  addi         a7, a2, -133
                  xori         t0, s9, -243
                  or           a3, gp, a1
                  and          s5, a6, s6
                  ori          t2, s7, -1910
                  andi         tp, s3, -770
16:               sltiu        t1, a4, -1240
17:               bge          s5, a4, 23f
                  ori          a3, zero, -1388
                  lui          s3, 709649
20:               lui          t2, 31501
                  bgeu         t1, sp, 24f
                  slti         zero, s3, -299
23:               ori          a1, s3, 1679
24:               nop
                  slli         s8, s0, 14
                  sltu         a7, s2, s10
                  lui          zero, 813664
                  blt          tp, a3, 41f
                  slli         s5, s5, 29
                  xori         s5, t6, -1814
                  xori         sp, t3, 1144
                  sltu         s3, s2, a1
                  sub          t3, t6, a7
                  xor          s7, t0, s7
                  bge          s10, a6, 38f
                  srli         s0, gp, 27
                  sll          s9, s1, t5
38:               bge          t6, a1, 57f
                  slti         s11, s5, 1022
                  sub          sp, s7, a3
41:               blt          s5, t1, 57f
                  and          t4, s10, s6
                  slt          a1, a5, s8
                  sra          s9, t2, t1
                  sra          s11, s7, s7
                  slt          tp, t0, a2
                  auipc        tp, 758428
                  blt          t2, s9, 50f
                  slti         ra, a1, 109
50:               nop
                  auipc        a1, 605631
                  sltu         s3, a3, t0
                  or           s9, t3, t0
                  ori          s7, a2, 1536
                  xori         ra, s11, 2001
                  slti         a6, s2, -1019
57:               xori         a5, a5, -852
                  or           s7, a7, a0
                  srl          s9, s4, a4
                  bge          a1, zero, 71f
                  blt          zero, tp, 76f
                  beq          zero, s7, 67f
                  bltu         t6, s5, 80f
                  and          s4, gp, s3
                  addi         sp, t6, 1286
                  bge          sp, s3, 76f
67:               nop
                  addi         s5, zero, 8 #init loop 1 counter
                  srli         a6, s8, 6
                  addi         a2, zero, 18 #init loop 1 limit
main_8_1_t:       ori          gp, a5, -289
                  sll          t0, t5, s10
                  addi         s5, s5, 3 #update loop 1 counter
                  lui          s8, 15081
                  slt          t4, sp, gp
                  addi         a5, zero, -4 #init loop 0 counter
                  addi         s6, zero, 15 #init loop 0 limit
main_8_0_t:       xor          s0, a0, s0
                  sub          s7, a2, s9
                  slti         s9, s6, -716
                  or           gp, tp, ra
                  ori          s11, s2, -243
                  addi         a6, a0, 1833
                  addi         a5, a5, 1 #update loop 0 counter
                  slt          a3, s4, s11
                  bne          a5, s6, main_8_0_t #branch for loop 0
                  sltiu        a6, s9, -1176
                  bltu         s5, a2, main_8_1_t #branch for loop 1
                  ori          s4, t4, -1124
                  srli         a7, a6, 23
                  xori         s9, s2, 1829
                  xori         a3, s5, 571
71:               or           t0, a0, s8
                  nop
                  slli         s8, ra, 10
                  srl          t4, s7, s6
                  andi         t4, a1, -74
76:               slti         a3, s4, 181
                  slli         a3, t2, 11
                  sltu         a7, t3, t2
                  srai         s4, s1, 25
80:               slt          t5, a5, t3
                  xori         a3, a5, 1582
                  bge          a7, a3, 92f
                  srai         s8, s8, 28
                  ori          t2, s10, -1500
                  xori         t5, s3, 722
                  bltu         a6, a2, 97f
                  slli         ra, s10, 7
                  add          t0, a3, s5
                  auipc        gp, 133810
                  nop
                  slt          s3, gp, gp
92:               add          s9, a3, tp
                  andi         sp, t2, 511
                  or           t2, s2, a0
                  sltiu        t2, t6, 1490
                  bgeu         s9, a1, 112f
97:               bne          s6, s9, 117f
                  addi         sp, s7, 479
                  ori          t3, a5, -589
                  sra          s3, s9, s7
                  xor          t5, gp, zero
                  bne          s5, s7, 103f
103:              ori          t0, tp, 50
                  add          s1, s1, a7
                  beq          a6, t0, 107f
                  srl          s8, a1, t0
107:              slli         a1, t3, 9
                  xori         a2, s3, -1695
                  srl          a7, s4, a3
                  lui          t2, 122289
                  add          gp, gp, s10
112:              nop
                  bge          s9, a4, 118f
                  srai         s7, a4, 13
                  sltu         a3, s11, a2
                  slti         t1, t1, -356
117:              or           sp, ra, s11
118:              addi         t0, t3, -1387
                  slli         a6, s1, 3
                  bge          s7, t0, 124f
                  andi         s0, a1, 43
                  blt          a4, tp, 134f
                  slli         s0, s2, 17
124:              srli         s9, s8, 12
                  bne          s5, t4, 137f
                  and          t2, a6, a0
                  bge          t6, t4, 143f
                  addi         s11, s5, 148
                  and          s1, t6, s7
                  xor          t0, s0, t4
                  slli         s7, s11, 28
                  srl          s3, s10, s6
                  bltu         s5, gp, 145f
134:              sra          a7, gp, t4
                  slli         zero, a1, 22
                  blt          s0, a5, 152f
137:              lui          a4, 1005657
                  srl          s10, s2, zero
                  srai         t3, s11, 21
                  sll          a2, a0, s2
                  or           a1, a1, a4
                  bge          t3, s4, 153f
143:              sra          a4, s1, s5
                  xori         s6, a4, 1809
145:              xor          t1, t4, a6
                  auipc        s5, 384028
                  beq          t2, s3, 151f
                  bge          a0, t0, 152f
                  andi         s6, a1, 1613
                  add          a1, s5, s1
151:              ori          s7, t2, -1771
152:              nop
153:              xor          a7, s1, a6
                  slli         t2, a0, 24
                  sltu         s3, a7, t0
                  xori         t3, t6, -1119
                  xor          s6, a2, s10
                  bgeu         s1, zero, 174f
                  add          tp, a3, t0
                  srli         t3, s5, 31
                  sub          s5, t5, a6
                  ori          a5, t1, 1519
                  slli         a1, a3, 20
                  andi         gp, a2, 1648
                  beq          s0, s0, 181f
                  auipc        a3, 619298
                  sltu         t1, gp, a4
                  slt          s0, a4, t0
                  blt          s4, s1, 184f
                  blt          zero, sp, 187f
                  and          t2, s0, s11
                  sltiu        zero, t2, 1469
                  srli         t0, s1, 8
174:              sll          a3, t4, s6
                  or           tp, t5, a2
                  or           t4, t4, a1
                  srli         t4, tp, 26
                  auipc        a3, 126216
                  bge          s8, sp, 190f
                  auipc        a4, 612152
181:              sltiu        s10, s9, 933
                  blt          t6, s0, 198f
                  xori         s3, a2, -613
184:              sll          a3, t0, a7
                  bge          t6, t1, 189f
                  sra          a1, s2, t3
187:              auipc        tp, 706936
                  or           t4, t3, sp
189:              and          t2, s0, gp
190:              srli         t5, s1, 10
                  srai         a3, t6, 13
                  xori         s9, gp, 1324
                  srl          a5, s2, a2
                  slli         s4, a2, 31
                  slti         a6, sp, 1930
                  srai         s10, t3, 27
                  andi         s3, a3, 728
198:              or           s5, a4, a6
                  srai         a6, zero, 23
                  nop
                  ori          a1, s11, -591
                  bge          s1, a7, 213f
                  srli         zero, a0, 21
                  blt          a1, a0, 216f
                  auipc        t3, 680406
                  sltu         a3, t6, a6
                  bge          s3, a6, 212f
                  beq          t5, s6, 210f
                  slli         t4, t2, 21
210:              ori          a6, s4, -2024
                  sub          gp, s9, s11
212:              xori         t0, a3, -1876
213:              bltu         s6, t5, 225f
                  beq          t3, t5, 230f
                  xor          s4, s9, tp
216:              bgeu         tp, a2, 221f
                  srl          ra, t0, s9
                  srli         s11, t3, 24
                  beq          s2, gp, 238f
                  slli         a3, s10, 25
221:              slli         a5, s0, 12
                  srli         s9, s7, 27
                  xori         s7, s9, -417
                  lui          a6, 1027428
225:              andi         s4, s1, -1295
                  slt          s9, s1, t1
                  slli         s11, gp, 11
                  or           s1, s8, s0
                  andi         a5, s4, 1704
230:              slti         tp, s6, 815
                  slti         s1, t5, 1717
                  bltu         a5, t3, 244f
                  blt          a2, s6, 244f
                  srai         a3, tp, 30
                  nop
                  lui          t0, 117569
                  nop
238:              srl          a5, s0, gp
                  and          t0, s11, s11
                  ori          a6, s5, -1983
                  srl          a7, a4, s10
                  add          sp, tp, s4
                  andi         a1, s1, -1629
244:              beq          t6, s3, 246f
                  sra          sp, tp, s2
246:              andi         s9, a7, -452
                  xor          a1, a5, s5
                  ori          s6, s9, 788
                  lui          a1, 286221
                  sll          s1, s3, a1
                  sltiu        t4, s1, -506
                  or           s0, a3, t4
                  andi         s0, tp, 428
                  sra          t0, a4, t0
                  sub          a6, t5, t4
                  add          a1, a0, s5
                  bltu         a2, t0, 267f
                  sltiu        s1, sp, 616
                  addi         sp, s9, -1056
                  nop
                  xor          s11, t6, zero
                  sltu         a5, s1, s2
                  sll          a5, a3, t5
                  bgeu         a2, a5, 276f
                  srl          gp, a0, s0
                  lui          a3, 392766
267:              xor          s4, t0, t2
                  ori          s3, s5, 2031
                  bge          s5, t5, 272f
                  sll          gp, a2, t0
                  or           s0, a5, t2
272:              bgeu         s4, s3, 288f
                  bltu         s8, t5, 279f
                  ori          a1, zero, -1750
                  bge          t4, t6, 278f
276:              sub          s1, ra, zero
                  beq          t5, s0, 290f
278:              srl          a4, s3, t5
279:              bge          a5, s8, 299f
                  sra          s11, tp, s7
                  slt          s9, s9, a5
                  sltiu        a5, a5, -258
                  srai         a3, s6, 24
                  xor          s7, t1, a0
                  ori          gp, a5, 1170
                  beq          t6, sp, 296f
                  sltiu        s3, t0, 1507
288:              sltiu        t1, t0, -842
                  beq          a6, zero, 306f
290:              beq          gp, t4, 291f
291:              srai         zero, t2, 11
                  add          t0, a3, a0
                  add          s11, t3, a3
                  bne          s5, s6, 296f
                  sltiu        a2, gp, -1543
296:              sltiu        s11, a4, -323
                  lui          s9, 447306
                  andi         t0, gp, 1128
299:              sltu         zero, s11, gp
                  beq          a7, ra, 303f
                  srl          s0, gp, s2
                  sll          ra, gp, t0
303:              auipc        t1, 442194
                  bne          zero, gp, 323f
                  auipc        sp, 831529
306:              bltu         a5, a6, 317f
                  sltu         a7, s2, ra
                  add          s7, t3, tp
                  and          s7, a0, a6
                  and          s3, t4, t3
                  addi         a3, a2, -1330
                  la           s10, sub_1
                  addi         s10, s10, -570
                  nop
                  srai         t3, s8, 30
main_j1:          jalr         t2, s10, 570 #jump main -> sub_1
                  blt          t1, s1, 321f
                  nop
                  blt          s2, zero, 331f
                  slt          s3, a6, a3
                  blt          a2, t4, 329f
                  addi         t2, a4, 1319
                  slt          sp, a6, a1
                  sra          a7, t3, a5
317:              slti         s6, a1, -662
                  sub          a2, s8, ra
                  add          a7, a6, tp
                  xor          a1, t6, s10
321:              ori          t2, sp, 889
                  xori         t3, t1, -1337
323:              srai         s5, a1, 6
                  beq          t0, a0, 340f
                  bne          a4, s6, 337f
                  srai         a4, s5, 4
                  srl          s0, a0, t2
                  auipc        a6, 28002
329:              bgeu         ra, t5, 330f
330:              slt          s4, t3, t4
331:              slli         t2, gp, 21
                  sub          s11, a1, s0
                  xor          a1, t6, ra
                  bltu         s8, t5, 344f
                  addi         s8, sp, 1692
                  auipc        a6, 146317
337:              auipc        t3, 258729
                  add          a6, t4, s8
                  or           gp, zero, a1
340:              srl          s0, s0, s4
                  bltu         t3, a5, 343f
                  ori          a3, s6, 1208
343:              srli         t3, a2, 22
344:              sll          s0, s4, tp
                  srli         a4, t4, 24
                  and          t3, s4, s0
                  slt          ra, t6, s1
                  add          s9, s7, a7
                  lui          s11, 723327
                  srai         s3, ra, 28
                  slti         s1, t2, 317
                  auipc        s7, 690024
                  ori          s4, s6, -1053
                  slti         s6, t2, -401
                  bne          s5, gp, 358f
                  and          s3, s10, s5
                  sub          gp, s5, s0
358:              sub          a3, s6, t3
                  bge          a1, sp, 375f
                  sra          s4, s11, sp
                  xor          zero, a0, t0
                  lui          s3, 225345
                  addi         t0, s11, 1697
                  slti         s11, s5, -808
                  slli         s5, a1, 5
                  bge          s6, zero, 377f
                  addi         a4, t4, 1685
                  nop
                  beq          a6, s10, 373f
                  andi         tp, t3, 1977
                  srl          s6, s9, tp
                  beq          t4, s0, 378f
373:              slt          s11, zero, t5
                  srai         gp, ra, 10
375:              bne          t2, s7, 392f
                  nop
377:              ori          zero, a0, -1666
378:              andi         s6, a1, 1007
                  andi         a1, t0, -1141
                  nop
                  sub          s7, s0, s8
                  lui          a1, 597868
                  blt          s10, s0, 388f
                  add          s8, tp, a2
                  or           s10, s5, t6
                  srli         gp, tp, 15
                  blt          s0, t2, 404f
388:              slti         a1, tp, 543
                  addi         s1, s1, 258
                  add          s8, s0, s1
                  srli         s6, sp, 9
392:              nop
                  sub          s3, a4, s10
                  beq          zero, tp, 398f
                  srl          s9, s4, t4
                  xor          a7, t3, s7
                  or           s11, t2, a1
398:              bge          ra, zero, 408f
                  bltu         s1, s3, 415f
                  sub          tp, s9, a7
                  auipc        a2, 862200
                  addi         s9, a2, -570
                  srl          a5, s7, s0
                  la           s9, sub_1
                  slli         a6, s7, 27
                  addi         t3, s11, -1245
                  addi         s9, s9, -887
                  beq          t0, a4, main_j2 #branch to jump instr
                  nop
                  and          s4, t3, ra
                  sltiu        gp, a5, 1525
                  nop
                  slti         a2, s5, 361
main_j2:          jalr         t2, s9, 888 #jump main -> sub_1
                  blt          s2, a4, 419f
404:              xor          s5, t0, t0
                  xori         t2, a4, 807
                  lui          a3, 690358
                  bne          s5, t2, 418f
408:              addi         s0, ra, -1008
                  bge          a4, s2, 421f
                  or           s4, a1, t4
                  andi         s11, s7, -850
                  or           s0, s3, t2
                  bltu         t5, a6, 425f
                  sltiu        a4, a7, 1040
415:              add          ra, ra, t6
                  slli         s8, s2, 13
                  blt          t1, a6, 422f
418:              bltu         s8, s5, 431f
419:              sltiu        s11, a1, -578
                  bltu         a3, ra, 435f
421:              auipc        s5, 479272
422:              slt          s3, s1, s8
                  sltiu        s6, s5, 1738
                  ori          s4, s3, -726
425:              srl          s9, s10, s5
                  ori          s3, tp, -733
                  and          a5, s3, s3
                  slli         a4, s0, 7
                  srl          gp, zero, s8
                  xori         a5, a2, 984
431:              bne          t3, a2, 433f
                  sra          a5, ra, s8
433:              or           t3, t5, t3
                  sltiu        s3, s6, 1228
435:              bge          t3, s4, 447f
                  slti         s6, a2, -988
                  add          gp, a4, s4
                  sltiu        t4, s5, -869
                  srli         a6, t6, 4
                  nop
                  slti         t5, a5, -1744
                  srl          s5, a4, t4
                  bltu         s6, s11, 446f
                  srai         a6, zero, 23
                  or           s3, s11, s4
446:              sltu         s6, t3, s9
447:              sub          a1, a7, ra
                  bge          t1, t3, 449f
449:              sltiu        ra, gp, 397
                  xori         t3, s7, -756
                  slti         a5, ra, 647
                  and          a2, s11, a2
                  add          s4, t3, s6
                  sltu         t2, a7, s1
                  bltu         s1, s1, 465f
                  addi         t5, s9, 1953
                  blt          a0, sp, 472f
                  add          s8, t3, ra
                  bgeu         a5, ra, 475f
                  lui          a4, 104539
                  add          tp, gp, t6
                  addi         a2, t2, 1033
                  auipc        s4, 915362
                  xori         a5, sp, -516
465:              sub          a2, zero, s1
                  xori         a1, zero, -1304
                  bgeu         s6, a5, 484f
                  or           a4, s6, a2
                  sll          s6, t4, s4
                  auipc        t3, 154462
                  andi         s0, s4, 936
472:              lui          a5, 1007881
                  beq          a6, t0, 478f
                  or           s3, t3, t2
475:              add          s3, a3, ra
                  beq          s11, s10, 482f
                  bge          a6, s9, 479f
478:              bne          s11, a3, 490f
479:              add          t0, s5, t0
                  blt          a1, s9, 485f
                  srl          a7, a4, a5
482:              lui          s5, 811230
                  slli         a3, a4, 10
484:              sra          a3, a5, a3
485:              slt          s5, t6, t5
                  slt          a2, a1, s10
                  slt          a5, s2, a7
                  add          ra, a2, s1
                  ori          t5, ra, -1679
490:              add          s0, sp, t2
                  bgeu         s2, zero, 507f
                  bne          t0, s3, 504f
                  lui          t0, 836561
                  slti         tp, a1, 550
                  sra          a1, a6, s9
                  sll          tp, s11, s8
                  xor          a6, s8, t0
                  srli         s11, s0, 2
                  sra          s11, a4, t3
                  nop
                  bltu         s9, s6, 521f
                  slti         t0, s3, -1768
                  sra          s7, a0, s9
504:              srli         t1, a0, 27
                  srli         a6, a4, 6
                  srl          s5, t4, t2
507:              nop
                  sra          s6, t5, t2
                  bgeu         ra, gp, 525f
                  auipc        ra, 256901
                  xor          s3, t3, s0
                  andi         s4, zero, -1532
                  xor          a5, s0, t3
                  blt          a1, a5, 526f
                  add          t1, a2, s5
                  slt          a3, t6, a1
                  sra          s6, t2, a7
                  sltiu        a3, a4, 1850
                  bge          a2, t4, 532f
                  sll          s7, s10, s2
521:              addi         s6, s7, -608
                  srl          s0, t2, ra
                  blt          s1, s7, 532f
                  blt          t3, s6, 528f
525:              sra          t4, s9, zero
526:              sll          t4, s11, s1
                  auipc        t2, 725366
528:              srl          zero, a2, tp
                  blt          s0, s7, 532f
                  bge          t5, t2, 532f
                  sltiu        s3, s4, -935
532:              sub          tp, a5, s1
                  la x10, test_done
                  jalr x0, x10, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            bgeu         t2, t5, sub_4_stack_p
                  slli         s3, s1, 19
                  or           s1, s7, s11
                  srli         t0, s4, 14
sub_4_stack_p:    addi         s2, s2, -28
                  sw           t2, 4(s2)
                  slt          a2, s8, a7
                  addi         a2, a2, 1824
                  lui          t4, 700546
                  addi         tp, zero, -2 #init loop 1 counter
                  sltiu        s7, a7, -1712
                  ori          s6, zero, -1936
                  or           zero, a0, t3
                  addi         s11, zero, -18 #init loop 1 limit
                  sub          sp, t3, a1
                  sra          gp, t2, sp
                  srli         t5, t4, 30
sub_4_0_1_t:      add          a2, a3, a4
                  slli         t2, sp, 12
                  addi         tp, tp, -2 #update loop 1 counter
                  slti         a2, a1, 1366
                  slt          a6, t0, s4
                  and          sp, s7, s9
                  addi         s0, zero, -10 #init loop 0 counter
                  slti         a1, a6, 386
                  lui          t3, 288647
                  sub          s4, s1, a2
                  addi         a3, zero, -17 #init loop 0 limit
                  nop
                  or           a5, s9, t4
                  or           s4, t5, s7
                  sltiu        zero, a5, 949
                  add          s3, sp, t3
                  sll          gp, a1, s0
sub_4_0_0_t:      lui          t0, 747720
                  andi         a4, a1, 779
                  addi         s0, s0, -10 #update loop 0 counter
                  sra          s5, a3, sp
                  srli         a1, s6, 24
                  bge          s0, a3, sub_4_0_0_t #branch for loop 0
                  lui          s4, 417867
                  and          a7, t0, a2
                  bne          tp, s11, sub_4_0_1_t #branch for loop 1
                  or           s10, t2, a2
                  slti         t1, zero, 1551
                  srli         s4, t5, 18
                  slti         a4, a1, -874
                  add          s0, t0, a4
                  beq          s1, a0, 9f
                  bge          s5, sp, 17f
                  srli         s4, t3, 21
                  beq          s4, s6, 14f
                  blt          a7, s2, 11f
9:                srli         s6, s9, 14
                  slti         a2, sp, -981
11:               srai         ra, t5, 22
                  blt          s0, s7, 15f
                  srl          t1, s5, s0
14:               lui          t0, 508988
15:               slt          s0, s10, a7
                  andi         a3, s4, -579
17:               bltu         s11, ra, 26f
                  bne          zero, a5, 24f
                  srai         s8, t3, 15
                  srli         t5, t6, 21
                  sltu         s0, t1, a5
                  or           s3, s8, a1
                  slt          a2, zero, s9
24:               addi         s4, a4, -552
                  blt          gp, ra, 34f
26:               sub          a7, s3, s4
                  bltu         s3, t3, 34f
                  lui          a3, 64578
                  slli         s0, t3, 12
                  slli         t3, s6, 19
                  nop
                  bltu         zero, s1, 46f
                  nop
34:               beq          s7, a3, 35f
35:               slti         t2, a5, 1779
                  sra          t5, a0, s11
                  slli         zero, t5, 24
                  addi         gp, s3, -816
                  sll          t3, t1, t5
                  slti         t0, t4, -182
                  bltu         s10, a3, 52f
                  xori         a7, ra, 1082
                  bge          s4, t2, 47f
                  beq          s1, s2, 48f
                  nop
46:               andi         s6, a6, -158
47:               srai         s9, s7, 30
48:               sra          s4, s0, a3
                  xor          s4, s9, s10
                  slt          s6, s5, sp
                  slt          s6, t4, t4
52:               sll          a5, s1, t6
                  bge          s4, t6, 67f
                  xori         s3, t5, 134
                  srli         ra, a6, 9
                  srl          s6, a6, zero
                  lui          t4, 734793
                  lui          t1, 925225
                  bgeu         s1, s10, 71f
                  blt          a5, s9, 77f
                  sltiu        a3, zero, 445
                  sub          sp, a2, a5
                  sra          t4, zero, zero
                  beq          s10, s5, 68f
                  sll          a3, s0, a1
                  sra          a6, sp, s9
67:               sra          a1, s7, s5
68:               slt          a6, s9, s3
                  sltiu        s6, a1, -1095
                  sra          t4, a6, tp
71:               slti         a7, a7, 659
                  srli         s6, t2, 8
                  blt          t6, gp, 82f
                  or           t3, sp, s7
                  blt          t1, a3, 82f
                  sub          t3, s9, a0
77:               xor          sp, t4, s9
                  slt          s4, a1, s7
                  slt          a7, s10, t1
                  xori         tp, s11, -1822
                  sll          a4, s4, t4
82:               slti         t4, a6, 524
                  nop
                  andi         s1, s5, 1459
                  srai         zero, a4, 27
                  lw           t2, 4(s2)
                  ori          s8, ra, -690
                  addi         s2, s2, 28
                  add          ra, s2, s9
                  and          s0, a7, gp
                  or           gp, a7, s0
                  auipc        a4, 575779
                  or           tp, s1, a3
                  sra          t1, gp, a0
139:              addi x8, x7, 0
139:              jalr x8, x8, 0
sub_1:            srli         s1, zero, 16
                  addi         s2, s2, -40
                  slti         a5, t6, 262
                  and          a4, s8, t5
                  sw           t2, 4(s2)
                  ori          a4, s0, 782
                  add          t1, zero, a1
                  xor          ra, a3, t2
                  xori         a5, a3, -1436
                  slt          tp, a5, sp
                  slt          gp, s7, a3
                  sltiu        a6, s2, -1419
                  srai         s10, a0, 16
                  sltu         s3, s0, s7
                  slli         sp, a7, 9
                  sll          a6, s2, tp
                  slti         zero, sp, -364
                  sub          a3, s1, a5
                  srai         ra, s2, 17
sub_1_j3:         jal          t2, sub_2 #jump sub_1 -> sub_2
                  addi         s4, zero, -3 #init loop 1 counter
                  slt          a5, s3, sp
                  sltiu        a2, s11, 1172
                  lui          t5, 240737
                  addi         a7, zero, 17 #init loop 1 limit
                  srai         t3, a3, 15
sub_1_1_1_t:      add          s3, s10, ra
                  nop
                  addi         ra, a2, -437
                  sra          a3, t5, a6
                  addi         s4, s4, 10 #update loop 1 counter
                  srl          a4, s3, s9
                  srai         t4, a0, 0
                  addi         s6, zero, -4 #init loop 0 counter
                  addi         t0, zero, -1 #init loop 0 limit
                  andi         t3, t5, 1133
                  lui          tp, 717548
                  slli         s1, t0, 21
sub_1_1_0_t:      xori         s0, t4, -1008
                  sll          a3, gp, s6
                  sltiu        t5, t6, -1118
                  sll          a5, sp, a1
                  slli         s5, a5, 5
                  addi         s6, s6, 3 #update loop 0 counter
                  srl          s3, s0, a6
                  srai         a4, s2, 2
                  srl          t3, a4, s8
                  andi         t3, s6, 195
                  beq          s6, t0, sub_1_1_0_t #branch for loop 0
                  bne          s4, a7, sub_1_1_1_t #branch for loop 1
                  slti         tp, s6, -347
                  addi         s10, zero, -2 #init loop 0 counter
                  slt          a4, tp, t5
                  slti         t5, s5, 84
                  add          s4, tp, t0
                  sltu         s6, a0, a6
                  addi         tp, zero, -14 #init loop 0 limit
sub_1_3_0_t:      or           t3, a0, s5
                  slli         t4, t2, 29
                  nop
                  sra          s7, s8, a6
                  slti         s8, t3, -1494
                  and          a3, a7, a0
                  sltu         t1, t3, a1
                  addi         s10, s10, -6 #update loop 0 counter
                  ori          sp, sp, 784
                  srl          gp, a4, gp
                  srai         sp, s5, 14
                  or           a1, s4, a5
                  slt          t1, ra, s10
                  sltiu        s3, t1, -1211
                  addi         s1, gp, 1565
                  bne          s10, tp, sub_1_3_0_t #branch for loop 0
                  slt          s7, s4, sp
                  addi         tp, zero, 1 #init loop 0 counter
                  xor          a5, t1, s2
                  or           t4, t4, s7
                  addi         sp, zero, 18 #init loop 0 limit
                  ori          s9, a1, 935
                  srli         a7, a3, 17
                  srai         t3, s9, 25
                  sltu         a3, s0, t5
                  auipc        a7, 959697
sub_1_4_0_t:      sltiu        s0, t3, -12
                  slli         a2, s7, 4
                  add          s7, t4, t6
                  slti         a2, sp, 420
                  xor          t0, t0, gp
                  addi         tp, tp, 6 #update loop 0 counter
                  nop
                  add          s7, s6, t0
                  auipc        t4, 851512
                  sub          a1, a3, s6
                  sltu         t2, t4, s10
                  srai         s8, a4, 30
                  slt          s1, ra, a4
                  sltu         t3, t4, s4
                  bltu         tp, sp, sub_1_4_0_t #branch for loop 0
                  addi         t0, gp, -789
                  addi         t0, zero, 1 #init loop 0 counter
                  lui          s10, 568595
                  srli         s10, a2, 12
                  xori         s9, gp, 1439
                  and          ra, s2, s8
                  sra          zero, s6, s8
                  or           s3, s11, t6
                  or           ra, t2, zero
                  sltu         ra, s2, s10
                  sltu         t3, s6, s1
                  slti         t5, t4, 1595
                  addi         a3, zero, -12 #init loop 0 limit
                  add          s10, t6, s3
                  and          a1, t2, s3
                  srai         a2, ra, 31
                  xor          a4, s8, a7
                  srl          s8, a3, s9
                  lui          s5, 804078
                  nop
                  xor          s4, t5, s10
                  srl          sp, s0, s4
                  ori          t4, s5, -1011
sub_1_2_0_t:      slti         a7, zero, 1943
                  sltiu        ra, ra, -399
                  srl          s6, zero, t5
                  xori         s10, ra, -1499
                  addi         t0, t0, -8 #update loop 0 counter
                  andi         s4, t1, 655
                  bge          t0, a3, sub_1_2_0_t #branch for loop 0
                  slli         s5, s9, 1
                  addi         s0, zero, 2 #init loop 0 counter
                  addi         a1, zero, -10 #init loop 0 limit
sub_1_0_0_t:      add          a3, s5, t0
                  and          t1, t2, a2
                  addi         s0, s0, -3 #update loop 0 counter
                  and          a2, a5, s1
                  sub          ra, s6, a4
                  beq          s0, a1, sub_1_0_0_t #branch for loop 0
                  nop
                  lui          tp, 979012
                  srl          s8, a3, ra
                  lui          s8, 626445
                  nop
                  auipc        a4, 840941
                  nop
                  slt          a1, tp, a3
                  bge          t4, ra, 21f
                  addi         s0, s5, -1328
                  or           ra, s10, t5
                  bne          t6, s1, 23f
                  slli         s8, s7, 30
                  addi         a7, a6, -1930
                  srl          s6, s11, s4
                  andi         t4, a4, 3
                  nop
                  and          gp, a3, a2
                  bge          s5, a4, 19f
                  nop
19:               sltiu        s4, s6, -1000
                  sub          t0, s2, s1
21:               beq          s10, t1, 32f
                  sra          t4, t6, s9
23:               bge          s1, gp, 41f
                  add          s1, s7, sp
                  slt          s10, a3, s7
                  slti         ra, a1, 1863
                  srli         s0, s9, 7
                  xor          t5, t0, s10
                  srli         tp, s4, 2
                  blt          s3, s4, 31f
31:               ori          t0, zero, 1147
32:               slli         a1, a2, 29
                  srai         a7, a6, 28
                  xor          t5, a0, s11
                  slt          t5, a1, sp
                  bge          s1, t1, 50f
                  or           a7, a6, a6
                  blt          a5, a6, 45f
                  sltu         t5, s8, s2
                  xori         a1, ra, -622
41:               auipc        ra, 373004
                  bltu         s6, t5, 57f
                  sub          a6, s4, gp
                  blt          gp, a2, 52f
45:               beq          t0, s2, 57f
                  bne          s8, s0, 53f
                  bge          a3, s9, 59f
                  and          s7, a1, zero
                  sltu         t3, s3, a3
50:               srli         a5, t2, 8
                  add          t4, a3, a2
52:               nop
53:               nop
                  auipc        t3, 392587
                  bne          s9, ra, 69f
                  ori          t2, t6, 794
57:               add          t0, s4, s0
                  or           s6, gp, s1
59:               bne          s8, s9, 62f
                  addi         s8, t2, -239
                  nop
62:               sub          a1, s3, sp
                  sra          s0, t1, s11
                  sltu         s6, s7, t2
                  sub          t0, s11, t3
                  ori          s3, t4, 51
                  blt          t6, t1, 72f
                  bltu         a7, sp, 74f
69:               bgeu         a3, a6, 71f
                  slti         s5, a5, -1588
71:               lui          a5, 48006
72:               bne          s5, t1, 85f
                  srai         t2, s4, 19
74:               bgeu         s0, a1, 80f
                  bltu         ra, t5, 78f
                  bne          s4, s11, 90f
                  slti         a3, s0, -363
78:               or           a1, a7, s6
                  srli         s9, s11, 24
80:               xori         t0, s7, 1244
                  xor          t0, s4, a5
                  bne          a3, s0, 88f
                  sll          t2, a0, a2
                  blt          a5, s11, 100f
85:               auipc        s1, 159648
                  or           a3, s8, a5
                  auipc        a2, 684143
88:               srli         t4, t6, 11
                  ori          t0, t0, 693
90:               beq          tp, s4, 105f
                  xori         t4, a1, -149
                  or           t2, t4, a0
                  add          a6, tp, sp
                  bge          s6, s3, 112f
                  or           t0, s6, a7
                  xori         s9, s2, -1880
                  nop
                  andi         tp, a6, -151
                  bltu         a5, t0, 109f
100:              srai         s4, s9, 3
                  lui          gp, 9088
                  sltiu        s10, s9, 1461
                  add          tp, s11, gp
                  bltu         sp, a5, 115f
105:              and          s11, a4, s9
                  sll          s7, a6, a0
                  andi         s11, s1, -1252
                  slli         a2, a2, 9
109:              srai         t3, s6, 26
                  ori          a2, a6, -1977
                  andi         s9, t5, -547
112:              slt          s8, s4, t0
                  add          a6, s1, a5
                  auipc        t0, 334510
115:              ori          s10, s5, -848
                  sltiu        s6, gp, -1685
                  nop
                  srl          s3, ra, s5
                  bne          a3, a0, 125f
                  andi         sp, t5, -509
                  slli         s6, sp, 15
                  nop
                  xor          t4, t1, t4
                  lui          t0, 877066
125:              slli         a3, t1, 26
                  sra          tp, s3, s0
                  sltiu        gp, sp, 120
                  nop
                  ori          a6, a3, -1983
                  or           ra, s11, t1
                  srai         t1, a4, 30
                  beq          s3, a6, 139f
                  lui          a4, 120564
                  sltiu        s6, t3, -108
                  or           t3, a0, t3
                  bne          a4, a1, 138f
                  beq          gp, s8, 138f
138:              bltu         t0, t3, 144f
139:              addi         s1, a3, -702
                  srl          sp, s5, zero
                  add          zero, s7, s7
                  sll          s8, s5, s3
                  lui          s3, 646080
144:              add          s1, s4, s4
                  ori          s5, s4, 18
                  andi         sp, t0, 705
                  blt          s5, a6, 154f
                  addi         a5, s0, 1489
                  bne          t3, s1, 162f
                  ori          zero, t1, 1584
                  sltu         s4, zero, gp
                  bltu         s2, t4, 157f
                  sra          a6, t0, s2
154:              sltu         s7, t4, s5
                  lui          a1, 391433
                  slli         a5, s1, 19
157:              sub          t5, sp, zero
                  addi         s4, ra, 173
                  blt          s2, sp, 173f
                  bltu         t5, ra, 170f
                  srai         a6, s0, 27
162:              srai         sp, a2, 19
                  srl          a4, s3, s10
                  sll          s10, s6, t1
                  slti         gp, a7, 1725
                  sltiu        ra, t1, 157
                  slti         t3, sp, 1463
                  nop
                  lui          s0, 51053
170:              blt          s2, s10, 182f
                  lui          s4, 471405
                  sltiu        s1, s0, -988
173:              sub          sp, a0, a3
                  andi         s3, s0, -38
                  slt          s6, gp, t5
                  beq          ra, t5, 194f
                  srai         sp, tp, 23
                  sll          s0, a0, a5
                  andi         ra, s1, -1557
                  bne          s3, a4, 193f
                  add          zero, s11, zero
182:              sll          sp, a2, t2
                  bltu         a2, tp, 190f
                  auipc        a4, 61609
                  addi         s6, t2, -918
                  auipc        t0, 313998
                  srai         s7, gp, 21
                  add          a5, sp, ra
                  or           s9, zero, s4
190:              slli         a3, a5, 3
                  sub          s1, s3, a7
                  or           s10, s6, s4
193:              srli         t1, s8, 14
194:              andi         zero, a7, -1081
                  xori         a1, t3, -277
                  and          s1, t5, a5
                  sub          a4, s5, s11
                  auipc        ra, 438262
                  blt          t4, s4, 206f
                  and          s6, s11, t5
                  bne          s10, s5, 219f
                  xor          s10, a7, s8
                  slt          s9, a0, s0
                  slt          s1, t5, s6
                  auipc        t5, 849714
206:              bltu         tp, ra, 222f
                  bne          t5, s4, 213f
                  bgeu         s5, zero, 214f
                  sltu         s0, ra, s7
                  nop
                  add          t5, t3, s8
                  blt          s3, s7, 227f
213:              bgeu         tp, tp, 219f
214:              or           a1, t3, s2
                  srai         t5, s7, 28
                  srai         a6, s4, 25
                  sltiu        s0, a2, -409
                  andi         a7, t0, -939
219:              andi         s6, s10, -2041
                  sltiu        a7, s6, 1238
                  srli         s8, t3, 17
222:              slli         t5, zero, 20
                  sltiu        s6, t5, -456
                  sub          t3, t1, a5
                  slli         sp, s8, 5
                  blt          a0, s7, 240f
227:              addi         s4, s0, 1055
                  slt          s3, s2, a3
                  blt          t0, a7, 243f
                  bne          a0, t0, 241f
                  slti         tp, a7, 118
                  srli         t1, t0, 24
                  bgeu         t3, a6, 236f
                  or           zero, gp, ra
                  sll          s0, sp, s3
236:              and          sp, a2, a2
                  addi         s11, s11, 1100
                  and          a5, sp, sp
                  nop
240:              nop
241:              srai         zero, t3, 25
                  beq          s11, gp, 255f
243:              nop
                  lui          sp, 493870
                  auipc        t5, 666779
                  ori          s5, s6, 1130
                  ori          s6, s5, -1660
                  bgeu         a5, ra, 255f
                  beq          s1, s1, 255f
                  and          a2, a0, sp
                  auipc        t1, 696261
                  addi         s4, sp, 1496
                  sub          a7, a2, a0
                  slli         zero, s6, 18
255:              slti         tp, s4, 1961
                  lw           t2, 4(s2)
                  sll          ra, t0, s10
                  sra          sp, a7, s6
                  xori         a4, s2, -210
                  addi         t4, s9, 1234
                  auipc        s3, 150495
                  ori          s10, gp, -1159
                  addi         s2, s2, 40
                  sra          a7, a1, s2
                  slti         a2, a2, 732
404:              addi x28, x7, 0
404:              jalr x28, x28, 0
sub_5:            addi         s2, s2, -40
                  auipc        ra, 733830
                  sub          tp, t4, s9
                  or           tp, a4, tp
                  nop
                  slli         tp, a4, 31
                  xori         s1, a3, -1172
                  sw           t2, 4(s2)
                  slt          a3, zero, a1
                  slli         s4, a0, 23
                  addi         a5, zero, 2 #init loop 1 counter
                  slti         s5, s1, 1714
                  addi         a4, zero, 11 #init loop 1 limit
sub_5_0_1_t:      sub          a6, s3, ra
                  sltiu        a1, a1, 250
                  sra          ra, s5, s3
                  addi         tp, tp, 1460
                  addi         a5, a5, 3 #update loop 1 counter
                  nop
                  lui          s6, 210506
                  nop
                  addi         t0, zero, 0 #init loop 0 counter
                  addi         a2, zero, 0 #init loop 0 limit
                  nop
sub_5_0_0_t:      addi         s8, ra, -817
                  addi         t0, t0, -7 #update loop 0 counter
                  slt          s5, t0, s8
                  sub          s3, t0, t1
                  bge          t0, a2, sub_5_0_0_t #branch for loop 0
                  srai         t4, s3, 6
                  lui          t3, 276399
                  blt          a5, a4, sub_5_0_1_t #branch for loop 1
                  slt          a6, t6, s2
                  addi         s3, zero, -2 #init loop 1 counter
                  addi         a4, zero, 16 #init loop 1 limit
sub_5_2_1_t:      slt          ra, s7, s3
                  addi         s3, s3, 3 #update loop 1 counter
                  slti         s10, s1, 619
                  addi         t0, zero, -3 #init loop 0 counter
                  addi         t5, zero, 13 #init loop 0 limit
                  or           s8, s7, s10
sub_5_2_0_t:      andi         a7, s1, 1818
                  addi         t0, t0, 8 #update loop 0 counter
                  beq          t0, t5, sub_5_2_0_t #branch for loop 0
                  bne          s3, a4, sub_5_2_1_t #branch for loop 1
                  add          gp, sp, s9
                  addi         a5, zero, -10 #init loop 0 counter
                  addi         s3, zero, 18 #init loop 0 limit
sub_5_3_0_t:      andi         s11, s0, 1400
                  addi         a4, a0, -1317
                  addi         a5, a5, 7 #update loop 0 counter
                  andi         s4, a4, -82
                  add          a6, s11, a3
                  or           s6, s5, s7
                  blt          a5, s3, sub_5_3_0_t #branch for loop 0
                  slt          t4, t5, s7
                  addi         t4, zero, 7 #init loop 0 counter
                  addi         t1, t3, 1126
                  sub          a5, s10, s10
                  auipc        s4, 1044120
                  addi         t2, zero, 12 #init loop 0 limit
sub_5_1_0_t:      xor          s10, tp, a0
                  ori          s10, s5, 1081
                  sll          a2, s9, s9
                  addi         t4, t4, 5 #update loop 0 counter
                  sra          t1, s5, a4
                  sub          a7, s0, a5
                  xori         s8, a6, 1213
                  and          s8, a5, a3
                  slli         sp, t5, 30
                  srai         a6, s1, 13
                  slli         s11, ra, 28
                  or           s0, gp, a0
                  auipc        s5, 921799
                  srl          s8, t4, t2
                  addi         t3, a1, 1848
                  slt          zero, a2, t2
                  sltiu        s9, s0, 1384
                  beq          t4, t2, sub_5_1_0_t #branch for loop 0
                  xor          s11, sp, t0
                  sll          s3, t3, sp
                  sra          t5, t6, sp
                  slli         s10, s8, 2
                  auipc        t2, 881635
                  slli         a4, ra, 22
                  bgeu         tp, t6, 24f
                  beq          zero, s11, 8f
                  or           t3, t6, a4
8:                srai         s7, s8, 17
                  lui          gp, 263321
                  or           t5, s4, s11
                  andi         s8, t5, -986
                  sltiu        gp, zero, 593
                  sltiu        a6, s4, -760
                  slli         a6, t1, 28
                  or           s11, s3, a2
                  auipc        s1, 24678
                  blt          t1, s2, 26f
                  bge          s1, gp, 29f
                  ori          t4, t3, -1584
                  xori         tp, t1, -1587
                  beq          s1, t2, 24f
                  sltu         t5, t2, s5
                  lui          s7, 367690
24:               bltu         t2, tp, 28f
                  or           s1, t5, s0
26:               ori          s0, s5, 1690
                  blt          ra, s2, 45f
28:               srai         s7, s8, 10
29:               sll          t1, tp, s7
                  bne          s3, t5, 37f
                  lui          gp, 319654
                  bge          s11, a2, 41f
                  bgeu         sp, s4, 43f
                  sltu         s0, t4, gp
                  lui          t1, 69433
                  sltu         sp, tp, a5
37:               lui          t0, 56431
                  srli         t0, gp, 24
                  slli         a1, gp, 26
                  sltu         gp, s0, s4
41:               ori          s3, a0, -1278
                  slti         s7, s7, -1516
43:               lui          a2, 580151
                  srl          s6, s8, t1
45:               beq          sp, a1, 65f
                  add          s4, s9, a6
                  bge          s1, t5, 63f
                  sub          s5, t6, s1
                  srli         s1, t3, 20
                  blt          s5, zero, 53f
                  sll          ra, tp, a7
                  blt          a7, t2, 54f
53:               ori          s7, t2, -1630
54:               andi         s11, t4, 1635
                  nop
                  auipc        s9, 676858
                  srai         t5, a0, 8
                  sra          zero, s9, s5
                  xor          a4, t4, t5
                  ori          a2, s1, -1779
                  andi         gp, s1, 615
                  sll          a4, s1, s11
63:               and          t5, t0, s4
                  srli         tp, a2, 24
65:               bltu         s10, s2, 74f
                  sltu         gp, a7, t6
                  beq          a1, s11, 83f
                  or           zero, s9, s8
                  bne          s4, s3, 70f
70:               or           a4, t0, sp
                  lui          s3, 15482
                  beq          ra, s9, 83f
                  sub          a1, s5, s2
74:               bgeu         s11, s6, 90f
                  and          s6, a7, s9
                  addi         s9, t4, -651
                  sltu         s0, t0, s1
                  ori          s8, ra, 1338
                  srl          zero, t4, s7
                  srai         t5, a6, 10
                  xor          t3, a7, s6
                  slli         a5, s7, 20
83:               xor          s3, tp, s7
                  sltiu        gp, gp, 160
                  bgeu         s5, a3, 87f
                  or           a6, a3, t6
87:               beq          t4, a0, 90f
                  sltu         a5, t1, s5
                  and          sp, s1, a2
90:               slti         s7, s2, 48
                  lui          a5, 238310
                  auipc        a1, 497718
                  or           t0, sp, a2
                  bne          a0, zero, 98f
                  ori          s7, zero, 1995
                  or           tp, t5, s0
                  bne          zero, a7, 101f
98:               bltu         zero, a4, 108f
                  slti         ra, t3, 1940
                  and          s0, s4, s8
101:              slti         t3, s11, 704
                  bne          s9, s5, 119f
                  add          t3, s5, s11
                  srli         a2, s2, 4
                  sub          s5, t3, s3
                  bgeu         t5, s0, 120f
                  srl          s3, a5, zero
108:              ori          s1, s3, 1497
                  and          t1, t4, zero
                  sltu         a4, a1, s6
                  slt          t5, s7, a4
                  xori         t2, s5, 147
                  xor          s7, a3, a4
                  lui          a5, 310454
                  sll          tp, s10, ra
                  andi         s7, a6, 300
                  sll          a3, s6, s10
                  sra          sp, ra, a6
119:              xori         a1, s7, -900
120:              srl          s9, t3, s3
                  andi         a4, t6, -1465
                  ori          ra, s11, 866
                  and          t3, sp, tp
                  auipc        a4, 473391
                  bge          t6, a4, 139f
                  xor          t0, s2, t1
                  srai         a4, gp, 5
                  slli         s5, a6, 0
                  addi         a5, t1, 1945
                  sll          gp, t6, a1
                  ori          t3, a5, -1483
                  slt          t0, a1, a0
                  srai         a1, t3, 29
                  bge          s4, s0, 143f
                  slli         gp, a2, 14
                  add          a3, t2, t0
                  nop
                  bgeu         s4, a5, 145f
139:              slt          s1, t1, a0
                  xor          s7, t4, zero
                  slti         a1, a2, -927
                  andi         t4, s5, 1028
143:              srli         a4, s7, 10
                  blt          s4, sp, 154f
145:              bltu         ra, t0, 147f
                  ori          t2, t3, -1461
147:              slt          t3, gp, sp
                  sub          a3, a2, s4
                  srl          t0, tp, s2
                  srai         t3, a1, 0
                  beq          s3, s10, 158f
                  slti         ra, s8, 350
                  and          a3, a2, ra
154:              ori          gp, a0, -1713
                  xori         a5, t4, -2046
                  slt          s0, a4, tp
                  bne          s3, t2, 166f
158:              ori          s3, t3, 251
                  bge          s8, s1, 162f
                  sltiu        s3, a4, 1025
                  addi         a7, s7, 970
162:              sltiu        a7, a6, 499
                  addi         s9, t1, -1503
                  xor          t5, a5, t0
                  blt          sp, t2, 167f
166:              beq          zero, s6, 182f
167:              ori          a3, s9, 1825
                  beq          a6, s2, 178f
                  srai         t3, a6, 6
                  slt          gp, s3, a6
                  beq          t6, s6, 187f
                  ori          a4, gp, -1866
                  or           s9, s5, s3
                  nop
                  nop
                  sltiu        a4, a3, -633
                  xori         s10, s11, 1749
178:              srai         a6, s0, 0
                  bgeu         s4, gp, 188f
                  andi         a5, a7, -2001
                  blt          s3, tp, 195f
182:              sra          a4, s5, tp
                  addi         t3, t5, -1532
                  bltu         a4, a1, 188f
                  sra          t3, zero, s4
                  slt          s9, s3, t5
187:              bgeu         t2, s1, 196f
188:              srai         a2, t5, 7
                  add          s3, t0, t1
                  lui          t0, 529736
                  bge          a3, s6, 204f
                  sra          s9, s8, s8
                  bgeu         s8, a7, 204f
                  ori          s11, s7, -1674
195:              auipc        a2, 463255
196:              xori         gp, s10, 402
                  or           a3, s11, s2
                  and          t5, gp, t5
                  bge          a2, a3, 204f
                  sra          a3, t0, t2
                  sltu         zero, ra, a7
                  lui          t1, 544918
                  nop
204:              srli         s7, gp, 10
                  nop
                  add          gp, s2, a3
                  lw           t2, 4(s2)
                  sub          a2, s0, gp
                  sub          tp, s10, a5
                  andi         s4, t3, -1779
                  addi         s2, s2, 40
                  xor          s6, zero, s5
293:              addi x4, x7, 0
293:              jalr x4, x4, 0
sub_2:            addi         s2, s2, -36
                  sw           t2, 4(s2)
                  lui          s3, 314834
                  or           s10, tp, ra
                  sltiu        a6, s6, 544
                  sll          a7, t6, a7
                  and          t4, a0, t3
                  la           tp, sub_5
                  sll          s6, t4, ra
                  addi         tp, tp, 915
                  andi         s11, a1, 415
                  srl          a4, t5, sp
                  bge          s9, s4, sub_2_j4 #branch to jump instr
                  addi         s9, s7, -590
                  sltu         t5, zero, t3
                  auipc        a2, 370622
                  lui          s0, 296295
                  add          t1, a0, s11
                  sra          s6, s9, s9
sub_2_j4:         jalr         t2, tp, -915 #jump sub_2 -> sub_5
                  sra          t2, s3, s7
                  add          t3, a2, a5
                  add          s7, t3, s7
                  srai         a1, a5, 21
                  and          a6, s0, ra
                  addi         sp, a4, -1949
                  bgeu         t2, gp, sub_2_j5 #branch to jump instr
                  auipc        s7, 1039753
sub_2_j5:         jal          t2, sub_3 #jump sub_2 -> sub_3
                  blt          t0, t1, sub_2_j6 #branch to jump instr
                  slli         s0, t0, 7
                  sra          zero, a7, sp
                  sll          gp, sp, a0
                  sltu         s0, s1, t2
                  slt          s9, a5, zero
sub_2_j6:         jal          t2, sub_4 #jump sub_2 -> sub_4
                  and          s6, t4, sp
                  xor          a6, a7, a1
                  sub          zero, t1, s6
                  xori         t1, tp, 1347
                  addi         t5, s10, 1845
                  la           ra, sub_3
                  slti         s8, s10, -1807
                  add          s8, ra, s2
                  addi         ra, ra, -940
                  srli         s10, ra, 7
                  slti         s5, a2, -367
sub_2_j7:         jalr         t2, ra, 940 #jump sub_2 -> sub_3
                  sltu         s5, t1, s7
                  slt          s9, t3, s3
                  ori          gp, t1, -542
                  and          a5, a3, tp
                  bltu         t4, zero, 9f
                  and          s11, t2, s3
                  blt          s11, zero, 9f
                  sub          s11, a1, t6
                  srl          t5, zero, s4
9:                lui          t5, 159576
                  srli         a7, tp, 25
                  lw           t2, 4(s2)
                  slti         sp, a7, -913
                  and          gp, s9, gp
                  srl          a5, a5, s11
                  and          gp, a0, a1
                  addi         s2, s2, 36
                  xori         s4, s2, -1407
                  srai         s10, s3, 27
                  slt          a1, s4, s3
                  addi         s11, a6, -245
                  auipc        t4, 479913
70:               addi x15, x7, 1
70:               jalr x15, x15, 0
sub_3:            xori         a5, zero, -1764
                  addi         s2, s2, -56
                  add          t0, a0, s10
                  sw           t2, 4(s2)
                  add          s3, t2, a4
                  sll          gp, t1, t5
                  nop
                  sltu         s9, s7, t3
                  addi         a1, zero, 0 #init loop 0 counter
                  nop
                  andi         s6, a3, 336
                  lui          t5, 796454
                  slti         tp, s4, 1687
                  xor          s0, a1, sp
                  addi         t0, zero, 18 #init loop 0 limit
                  slt          t3, s5, a5
sub_3_2_0_t:      slt          s10, a7, s11
                  nop
                  and          s10, ra, ra
                  xor          t2, s0, sp
                  sll          s6, t6, t0
                  addi         a1, a1, 3 #update loop 0 counter
                  srl          t4, a0, a7
                  sltu         s11, a3, t0
                  sltu         a4, s1, a2
                  sll          zero, s1, t4
                  sll          a2, t6, s9
                  sra          a7, gp, s2
                  xori         s1, s8, 1775
                  addi         s8, t4, -1640
                  srai         t3, s0, 7
                  slli         tp, s7, 8
                  xori         s10, s6, 690
                  slti         a2, ra, 735
                  nop
                  bltu         a1, t0, sub_3_2_0_t #branch for loop 0
                  xori         ra, a0, -850
                  addi         s11, zero, -3 #init loop 0 counter
                  and          a2, t4, a2
                  slli         tp, s11, 11
                  sll          a1, s3, s6
                  sltu         t0, s6, s0
                  xor          s6, sp, s1
                  slt          a6, s1, a6
                  slt          s4, sp, s4
                  auipc        s8, 370279
                  lui          t1, 428474
                  or           t3, a3, zero
                  addi         s10, zero, 12 #init loop 0 limit
                  slli         s6, s4, 30
                  srl          s5, s2, s5
                  xori         t5, t6, -1630
                  andi         s9, tp, -898
                  andi         a3, t0, -1777
sub_3_4_0_t:      sub          a2, tp, a5
                  srli         a6, t2, 2
                  addi         s11, s11, 5 #update loop 0 counter
                  and          gp, s11, a6
                  lui          s3, 767447
                  slti         zero, a2, 1530
                  srai         tp, zero, 4
                  slli         a1, a5, 24
                  xori         tp, a0, 1723
                  sra          sp, zero, s3
                  or           s5, s0, s11
                  bne          s11, s10, sub_3_4_0_t #branch for loop 0
                  andi         a2, zero, 1712
                  addi         ra, zero, 6 #init loop 1 counter
                  addi         t4, zero, -15 #init loop 1 limit
                  xori         s11, s7, -657
sub_3_16_1_t:     andi         a6, t5, -405
                  sltu         sp, gp, t4
                  addi         ra, ra, -7 #update loop 1 counter
                  slti         a1, s1, -412
                  auipc        s7, 980068
                  xori         gp, s7, -1247
                  srli         t3, a1, 30
                  andi         t3, s2, -63
                  addi         a7, zero, -1 #init loop 0 counter
                  addi         s6, zero, 14 #init loop 0 limit
                  slti         t3, a1, -506
                  srli         s1, a1, 25
sub_3_16_0_t:     sub          a3, a6, a5
                  addi         a7, a7, 3 #update loop 0 counter
                  sltiu        s1, zero, -1425
                  bltu         a7, s6, sub_3_16_0_t #branch for loop 0
                  sub          zero, a6, t1
                  slti         a1, s4, 1524
                  or           a2, s3, t6
                  bne          ra, t4, sub_3_16_1_t #branch for loop 1
                  srli         t2, a5, 18
                  addi         t0, zero, -8 #init loop 0 counter
                  sra          a5, t6, t3
                  auipc        zero, 948076
                  sltiu        zero, a0, -488
                  addi         s3, zero, -15 #init loop 0 limit
                  srli         ra, ra, 30
                  sub          tp, s2, s11
                  xor          zero, s6, a2
                  sltu         s7, gp, s6
                  sra          t4, a3, t3
sub_3_13_0_t:     lui          s11, 264277
                  ori          a2, gp, 244
                  addi         t0, t0, -7 #update loop 0 counter
                  or           s7, a6, t2
                  beq          t0, s3, sub_3_13_0_t #branch for loop 0
                  slt          s6, a4, a3
                  addi         t2, zero, 5 #init loop 0 counter
                  sltu         a1, a1, a7
                  sltiu        s9, t4, -92
                  sub          t1, a1, tp
                  or           s3, gp, t4
                  slti         s3, a6, -1063
                  sub          s8, t5, s8
                  addi         s6, zero, 9 #init loop 0 limit
                  or           a3, gp, s3
                  addi         s1, a0, -185
sub_3_0_0_t:      slti         a4, a6, 865
                  sltu         s10, a7, t4
                  addi         t2, t2, 1 #update loop 0 counter
                  srl          s7, a1, s2
                  slti         ra, s5, 286
                  addi         a7, a1, 1925
                  beq          t2, s6, sub_3_0_0_t #branch for loop 0
                  nop
                  addi         t2, zero, 9 #init loop 0 counter
                  srai         sp, a0, 31
                  addi         ra, zero, -19 #init loop 0 limit
                  addi         a5, a7, -249
                  auipc        t5, 470991
                  lui          s1, 818809
                  ori          t0, s3, 831
sub_3_14_0_t:     andi         t4, s3, -2015
                  or           gp, s8, a2
                  srli         s10, s10, 28
                  nop
                  srli         t5, s8, 14
                  srli         s3, t1, 7
                  addi         t2, t2, -2 #update loop 0 counter
                  lui          t5, 910047
                  beq          t2, ra, sub_3_14_0_t #branch for loop 0
                  lui          t0, 321906
                  addi         tp, zero, -6 #init loop 1 counter
                  add          s3, s11, tp
                  srl          s7, s0, s2
                  srli         s6, t6, 18
                  xor          a6, a5, s7
                  and          a3, s7, t3
                  addi         t3, zero, 11 #init loop 1 limit
sub_3_8_1_t:      and          s6, t1, s6
                  addi         tp, tp, 8 #update loop 1 counter
                  or           a5, a5, t0
                  addi         s11, zero, -7 #init loop 0 counter
                  ori          t2, a5, -73
                  srli         a7, a7, 26
                  add          s3, sp, s7
                  xor          a4, gp, a7
                  add          t2, tp, t3
                  add          s10, sp, t1
                  addi         s8, zero, 17 #init loop 0 limit
                  or           t1, gp, s10
sub_3_8_0_t:      addi         s0, s3, 1310
                  nop
                  addi         s11, s11, 7 #update loop 0 counter
                  bltu         s11, s8, sub_3_8_0_t #branch for loop 0
                  nop
                  bltu         tp, t3, sub_3_8_1_t #branch for loop 1
                  slt          a2, s9, t0
                  addi         t4, zero, 6 #init loop 1 counter
                  sltu         s11, ra, a1
                  addi         s9, zero, 18 #init loop 1 limit
                  slt          a7, a7, zero
                  and          a1, t3, sp
sub_3_15_1_t:     andi         a3, a5, -339
                  addi         s3, s6, -1496
                  addi         t4, t4, 5 #update loop 1 counter
                  sltu         t1, s8, s10
                  addi         tp, zero, 0 #init loop 0 counter
                  addi         t5, zero, 18 #init loop 0 limit
                  and          sp, t0, s3
sub_3_15_0_t:     nop
                  srli         t3, s6, 18
                  addi         tp, tp, 9 #update loop 0 counter
                  auipc        s6, 720352
                  or           a7, s9, a1
                  xor          s0, t3, t4
                  nop
                  addi         a3, t5, 1283
                  sltiu        s11, a4, 452
                  srl          a5, t2, t2
                  bltu         tp, t5, sub_3_15_0_t #branch for loop 0
                  addi         s8, s7, 568
                  addi         s6, t2, -1347
                  slli         s3, a4, 17
                  xori         s6, t6, 1343
                  nop
                  bltu         t4, s9, sub_3_15_1_t #branch for loop 1
                  srl          s4, s1, t6
                  addi         t4, zero, -3 #init loop 0 counter
                  auipc        s8, 176384
                  slli         zero, s8, 10
                  slli         s9, t3, 14
                  lui          t2, 870962
                  add          t1, sp, s1
                  lui          sp, 224595
                  addi         s6, zero, 2 #init loop 0 limit
                  slt          a7, t5, s10
                  lui          t3, 943462
                  slti         s4, sp, -773
                  sltu         ra, t4, s5
                  auipc        s7, 222137
                  addi         ra, a2, 1800
                  or           sp, s1, s5
                  lui          a1, 994128
                  and          s0, s4, ra
sub_3_12_0_t:     auipc        s8, 789712
                  sll          tp, t0, s10
                  addi         ra, t4, 1192
                  addi         t4, t4, 4 #update loop 0 counter
                  xori         a5, a1, -768
                  ori          a1, a2, -650
                  srli         a2, ra, 1
                  slli         tp, ra, 8
                  or           s10, t4, t6
                  blt          t4, s6, sub_3_12_0_t #branch for loop 0
                  lui          s11, 314097
                  addi         a1, zero, 5 #init loop 0 counter
                  xori         s3, s9, -206
                  add          a3, t4, t0
                  srl          s11, s11, s1
                  slt          a7, a6, t2
                  xor          a4, s11, ra
                  sltu         s8, s7, a0
                  srai         s9, a0, 7
                  sltu         t0, a0, t1
                  addi         gp, zero, 8 #init loop 0 limit
                  or           zero, s10, s8
                  nop
sub_3_5_0_t:      auipc        t0, 464664
                  sub          t4, s4, s9
                  addi         a1, a1, 5 #update loop 0 counter
                  lui          a3, 661161
                  sll          s10, a4, a4
                  xori         s1, tp, -422
                  add          s10, a4, s11
                  add          s9, s10, s6
                  slli         s0, t2, 6
                  slti         s1, t0, -1195
                  auipc        a4, 26722
                  sll          t3, ra, s4
                  sub          s3, t6, s0
                  bltu         a1, gp, sub_3_5_0_t #branch for loop 0
                  slt          t3, a3, s4
                  addi         t5, zero, 8 #init loop 0 counter
                  ori          s6, a7, -263
                  slli         a1, a2, 15
                  slli         t2, t4, 25
                  ori          s0, a6, -340
                  nop
                  addi         s3, zero, 11 #init loop 0 limit
                  slli         zero, t2, 27
                  sltu         s7, ra, a5
                  sltiu        a1, t5, 1755
                  slli         s10, s4, 25
                  or           s1, a0, s5
                  slli         a3, s10, 4
sub_3_7_0_t:      lui          s0, 988825
                  addi         t5, t5, 3 #update loop 0 counter
                  ori          gp, s3, 637
                  slt          a3, a1, gp
                  sltiu        a7, s0, -139
                  sll          s1, s2, t2
                  slli         zero, s10, 20
                  addi         t2, t4, 1592
                  and          sp, s11, t3
                  or           s10, a1, t0
                  slti         tp, s9, 854
                  bne          t5, s3, sub_3_7_0_t #branch for loop 0
                  sltu         a2, a1, t2
                  addi         t0, zero, 7 #init loop 0 counter
                  addi         s6, zero, 7 #init loop 0 limit
sub_3_1_0_t:      sltu         t4, t2, a4
                  addi         t0, t0, -6 #update loop 0 counter
                  sub          t4, s4, a2
                  bgeu         t0, s6, sub_3_1_0_t #branch for loop 0
                  slti         s5, gp, -790
                  addi         a2, zero, 10 #init loop 1 counter
                  sll          ra, a3, a3
                  srai         zero, ra, 23
                  addi         a7, zero, 10 #init loop 1 limit
                  auipc        t4, 800488
sub_3_11_1_t:     sub          t5, s9, t6
                  andi         t4, s8, -752
                  add          a3, t1, a5
                  addi         a2, a2, -9 #update loop 1 counter
                  xor          s9, s3, tp
                  addi         s3, zero, -2 #init loop 0 counter
                  sll          t0, s4, t1
                  addi         s10, zero, 20 #init loop 0 limit
                  nop
sub_3_11_0_t:     slti         t4, s6, 1250
                  addi         s3, s3, 2 #update loop 0 counter
                  slt          t4, a3, s5
                  sll          gp, t6, s3
                  bltu         s3, s10, sub_3_11_0_t #branch for loop 0
                  bgeu         a2, a7, sub_3_11_1_t #branch for loop 1
                  andi         s1, a6, 1380
                  addi         s4, zero, 1 #init loop 0 counter
                  or           s8, t4, s8
                  sub          s9, s8, t0
                  addi         s5, zero, 5 #init loop 0 limit
sub_3_10_0_t:     slti         t5, s3, 1408
                  xori         sp, t0, -1599
                  ori          s3, a3, 1788
                  xori         s11, s5, 1758
                  sra          a5, s6, t4
                  srli         s11, s0, 10
                  addi         s4, s4, 2 #update loop 0 counter
                  nop
                  sll          zero, ra, s6
                  sra          s8, tp, gp
                  nop
                  auipc        a2, 234118
                  xori         gp, s7, -399
                  slt          s1, s1, t5
                  srli         s11, a2, 26
                  sltiu        s8, t4, -569
                  slti         a7, a5, -42
                  beq          s4, s5, sub_3_10_0_t #branch for loop 0
                  srli         a7, a1, 16
                  lui          a5, 473605
                  srl          t0, s4, s2
                  auipc        t2, 213219
                  andi         s7, a0, 1957
                  slti         sp, t6, 1049
                  auipc        a1, 875256
                  bge          t6, t1, 22f
                  srl          a4, a4, t3
                  bltu         a0, a1, 27f
                  and          a4, t1, gp
                  addi         s10, s3, 267
                  or           a7, t1, s3
                  bne          s1, a7, 21f
                  slti         a3, s8, -831
                  srli         a1, t1, 25
                  slt          t2, t2, s10
                  blt          gp, a0, 21f
                  add          s4, s1, t4
                  sub          t5, s1, s7
                  sltu         t1, a2, s8
                  slt          t3, s5, a3
21:               sltu         a7, s11, s11
22:               blt          s6, s1, 35f
                  bltu         s6, t1, 38f
                  or           t1, tp, t4
                  lui          t5, 477816
                  slti         s0, a6, -431
27:               xori         a4, s1, -219
                  bltu         s4, t3, 45f
                  beq          gp, t5, 42f
                  xori         s7, t4, -231
                  slti         a3, tp, -877
                  srai         t5, t2, 16
                  or           gp, gp, s1
                  xori         s3, sp, -207
35:               sra          s6, a2, s3
                  nop
                  srl          t1, s9, s3
38:               bltu         s7, t5, 46f
                  srli         s8, t3, 15
                  srli         s10, a5, 25
                  slti         s3, s2, -2007
42:               slli         a1, s6, 8
                  slt          a5, s6, gp
                  lui          s10, 393096
45:               ori          a2, s8, 1026
46:               slli         s0, zero, 6
                  slt          tp, a2, s6
                  bne          sp, gp, 58f
                  slti         s7, a5, -557
                  slli         s10, s6, 13
                  xori         t2, s4, 1081
                  blt          zero, t4, 72f
                  and          s3, t4, t6
                  lui          t1, 248983
                  srli         t4, a6, 16
                  or           s1, a6, tp
                  slt          a1, s5, a7
58:               and          s5, a1, s1
                  and          a3, a3, s8
                  beq          s6, gp, 70f
                  and          sp, s11, t0
                  sub          s7, zero, s1
                  ori          s8, s8, -1190
                  bltu         a0, a5, 68f
                  beq          a5, t0, 84f
                  sra          t3, tp, s7
                  bge          a0, a7, 76f
68:               or           a3, a2, tp
                  srai         a6, a2, 27
70:               sltiu        t4, t5, 1090
                  sltiu        s11, t3, -1911
72:               blt          t0, tp, 92f
                  srai         s4, sp, 19
                  and          a2, a1, a1
                  sll          t4, s9, t6
76:               bne          a2, s7, 78f
                  sll          tp, t1, s0
78:               lui          s9, 745024
                  andi         s0, sp, 84
                  lui          t5, 712859
                  addi         s0, t0, 1306
                  srl          ra, tp, a2
                  auipc        a4, 814420
84:               lui          t5, 181462
                  xori         s0, tp, -559
                  ori          s4, s11, -1964
                  sltiu        ra, s10, 450
                  bne          s7, a0, 107f
                  sltu         s4, s3, s11
                  sltiu        s0, s5, 1229
                  bgeu         t1, s2, 105f
92:               lui          s10, 550769
                  add          s4, a4, a2
                  xor          s10, a3, a1
                  sll          zero, s0, gp
                  sub          sp, s8, s8
                  sub          t0, t3, t6
                  and          s4, s0, s6
                  sll          s7, t1, t4
                  xori         sp, s10, 1114
                  slt          s9, t5, s10
                  srli         a3, zero, 25
                  addi         s3, s5, -617
                  xor          a1, s9, gp
105:              blt          s0, a4, 119f
                  sub          gp, s7, s8
107:              bne          t5, sp, 114f
                  ori          s9, s10, -1530
                  or           s6, s0, a6
                  slt          s0, s11, a2
                  sltiu        ra, s4, 1136
                  nop
                  slti         s8, t5, 1464
114:              sub          t0, a5, a7
                  blt          tp, t3, 135f
                  nop
                  ori          s7, s5, 451
                  slti         zero, t6, -115
119:              beq          sp, gp, 122f
                  lui          t0, 240311
                  sltu         a3, s9, t3
122:              andi         s8, t3, 1434
                  ori          ra, a0, 1774
                  xori         a1, s6, 435
                  bne          t1, s10, 143f
                  sltu         t5, ra, s0
                  slt          zero, t4, t0
                  srli         a2, a5, 1
                  ori          a1, tp, -680
                  srai         tp, a1, 6
                  auipc        sp, 782127
                  blt          a2, t0, 139f
                  xori         t0, gp, -1388
                  slli         a2, s7, 12
135:              andi         s1, t2, -257
                  nop
                  ori          a1, a1, 1339
                  slt          s11, s8, t6
139:              xori         s1, t5, 738
                  andi         a4, ra, -572
                  auipc        s0, 812995
                  slli         a7, s9, 12
143:              slti         a2, a1, 1919
                  auipc        t4, 358529
                  andi         a7, a5, -1206
                  lui          t1, 357628
                  bne          gp, t6, 154f
                  lui          s6, 148650
                  sll          s8, s0, s10
                  and          a6, a4, s0
                  blt          a3, s4, 167f
                  addi         t4, a4, -1606
                  or           s0, a3, s2
154:              addi         s0, ra, -129
                  slt          a7, s5, ra
                  sltu         s10, a2, gp
                  bge          a1, zero, 172f
                  sltu         s10, a5, a3
                  sra          t0, t6, a5
                  srli         ra, a2, 17
                  bgeu         s7, a7, 170f
                  srai         s6, tp, 15
                  bgeu         t3, a1, 179f
                  andi         t0, t3, -1070
                  srl          a2, s2, a1
                  xori         s10, t1, 657
167:              addi         s9, s9, 231
                  beq          t1, a2, 188f
                  srli         s6, sp, 27
170:              srl          s5, t0, t4
                  sra          s6, t3, a6
172:              andi         s11, t5, -1897
                  slt          t2, s11, s0
                  xor          t5, a1, s7
                  sltiu        tp, a4, -1044
                  lui          t2, 934945
                  and          t5, ra, gp
                  sra          s9, t1, t1
179:              sra          t1, s3, t0
                  or           t3, s10, a2
                  ori          s6, t5, -1272
                  srl          s4, a3, a6
                  and          s6, a2, s10
                  andi         s9, t6, 237
                  srl          t5, t1, a4
                  bge          gp, s6, 199f
                  blt          t5, s10, 196f
188:              slti         s6, s7, 1179
                  slti         s9, ra, 1219
                  xor          t1, t6, a1
                  sltiu        s1, t4, -1994
                  sll          s0, gp, zero
                  or           a5, a6, sp
                  add          t2, t2, t2
                  beq          t5, a0, 211f
196:              bltu         s2, a7, 213f
                  sltu         t1, a1, t4
                  sub          a3, s6, a1
199:              bgeu         a6, s3, 206f
                  slli         gp, t3, 13
                  bgeu         s9, s1, 211f
                  srl          s8, tp, a6
                  srai         ra, ra, 7
                  nop
                  xor          tp, a6, a6
206:              srai         t3, a3, 7
                  bne          t5, t1, 212f
                  srli         a6, t4, 4
                  sub          s6, s3, sp
                  add          tp, sp, s7
211:              slt          s9, t2, a1
212:              andi         s10, gp, -804
213:              nop
                  slli         s0, a2, 15
                  bgeu         s6, s7, 230f
                  bne          a2, a7, 224f
                  srai         t4, t0, 19
                  lui          zero, 682266
                  auipc        s10, 138679
                  nop
                  xori         s11, s5, -1539
                  slti         a6, zero, -1373
                  srl          a3, t4, a2
224:              slt          a1, a0, a7
                  sltu         a6, t2, zero
                  blt          s5, a7, 230f
                  sltu         a4, t6, t1
                  xor          s0, s11, a6
                  add          a5, s1, s0
230:              sltu         a7, a2, s2
                  blt          t1, a0, 247f
                  lui          s3, 950560
                  bgeu         s1, s0, 242f
                  sll          s0, sp, s8
                  andi         s11, s3, -2
                  nop
                  bne          s1, s11, 251f
                  xor          sp, s6, s1
                  ori          a3, t6, 706
                  srli         tp, ra, 23
                  sub          a7, s11, s10
242:              sltu         a5, a0, a0
                  slli         s10, tp, 11
                  sub          a4, a5, s0
                  sub          t2, ra, ra
                  bge          s10, s2, 248f
247:              nop
248:              or           s6, a5, s9
                  slt          zero, s0, gp
                  bgeu         s9, a4, 257f
251:              srl          s6, t3, a2
                  sra          zero, t5, s3
                  slti         s0, s3, 491
                  xor          s6, s10, tp
                  and          zero, a2, t1
                  srl          a5, a4, gp
257:              sub          a5, t1, t3
                  sltu         a6, s1, a4
                  xori         s4, a5, 1328
                  xori         s10, s4, 28
                  lui          s10, 466504
                  blt          t4, t4, 282f
                  and          t0, s2, s4
                  xor          a6, a3, t2
                  add          zero, s10, a3
                  blt          s10, a2, 285f
                  slli         a4, tp, 4
                  nop
                  sub          t4, a2, s2
                  sltu         sp, a4, ra
                  andi         s10, s7, 1416
                  auipc        s10, 728325
                  srli         s7, s10, 31
                  srli         a2, a2, 7
                  or           tp, s9, a4
                  sra          s0, zero, s7
                  sub          s8, a2, s5
                  sltiu        zero, t3, -553
                  bltu         tp, s11, 297f
                  sltu         s3, t0, s8
                  blt          t4, a0, 284f
282:              bgeu         sp, t0, 301f
                  sub          s11, a7, s3
284:              addi         t2, s1, -846
285:              bltu         t6, s1, 304f
                  addi         a7, a2, 947
                  sll          t5, s5, a2
                  sra          s3, t2, a7
                  srl          a3, a4, t5
                  and          t1, a7, tp
                  xori         s11, gp, -1029
                  xori         s8, a5, 1945
                  beq          a4, a2, 309f
                  srl          tp, a3, t2
                  xor          s7, s9, s4
                  addi         s6, s10, 936
297:              ori          ra, s6, -1065
                  andi         a5, a1, -1533
                  andi         a5, s2, -143
                  slt          a3, s6, t0
301:              sra          ra, sp, t3
                  xori         ra, t1, 289
                  slli         s5, s8, 26
304:              add          s0, s7, s0
                  bge          s8, t2, 325f
                  srl          zero, s10, a5
                  sra          a3, sp, s8
                  and          zero, tp, a3
309:              lui          a4, 186872
                  andi         a4, sp, 1239
                  xori         sp, s4, 866
                  bltu         a7, zero, 325f
                  sltiu        s9, a5, 552
                  srl          s6, s0, t0
                  bge          gp, s1, 329f
                  slti         t2, s1, -1832
                  and          t0, t2, a3
                  sltiu        s10, t2, -1624
                  srai         zero, s8, 6
                  sltu         t2, a7, s2
                  bgeu         a1, s0, 328f
                  sra          t5, t5, a3
                  and          sp, s8, s11
                  and          s1, a7, s1
325:              bltu         tp, t1, 340f
                  nop
                  blt          s9, a0, 337f
328:              andi         s0, t0, -1325
329:              blt          a0, a4, 338f
                  bge          tp, s3, 346f
                  add          s11, a7, t1
                  or           s4, tp, t6
                  slli         s11, a5, 5
                  sub          t4, s11, ra
                  and          a5, t5, t1
                  srli         ra, a4, 4
337:              srli         s0, a3, 20
338:              srl          a3, s7, s9
                  addi         ra, s3, 1249
340:              lui          gp, 562565
                  add          ra, sp, s7
                  slt          t1, s10, t3
                  lui          zero, 811897
                  sra          ra, s1, ra
                  bgeu         gp, ra, 353f
346:              sltiu        t0, s7, 1964
                  slli         a5, sp, 12
                  bgeu         s10, t4, 355f
                  xor          a5, tp, s2
                  slt          t4, t0, sp
                  srai         s5, t1, 30
                  sll          s6, a2, gp
353:              srai         s7, ra, 3
                  bge          t5, gp, 363f
355:              addi         s5, s5, -1713
                  bltu         t6, t0, 358f
                  srli         s6, t0, 9
358:              or           t3, t2, gp
                  or           s0, s10, a7
                  srl          a1, s3, gp
                  slt          t1, a7, a5
                  addi         a7, a7, 307
363:              addi         s9, s5, 962
                  bne          tp, s5, 383f
                  sltiu        t5, s1, -1846
                  slli         s8, a3, 12
                  lui          t4, 405699
                  srli         a5, zero, 2
                  srli         s10, a6, 24
                  or           a5, a3, a5
                  lui          a5, 1029479
                  srl          t2, zero, t5
                  addi         t2, s9, -584
                  xor          t0, tp, a2
                  xor          s4, s6, a5
                  sltu         tp, s9, t2
                  addi         s0, s0, 1113
                  beq          s3, s4, 387f
                  bgeu         s2, t2, 384f
                  srai         a2, s11, 31
                  or           s7, t2, a2
                  sub          s9, t4, s2
383:              bltu         s9, a6, 397f
384:              ori          t2, s7, 54
                  sll          t5, a3, a0
                  slti         s6, t5, 867
387:              bltu         s9, t5, 394f
                  addi         zero, s6, 111
                  and          s4, s8, zero
                  xor          gp, s4, t5
                  lui          t2, 169837
                  or           sp, a7, s4
                  ori          s8, t5, 1223
394:              addi         t3, a4, 469
                  sltiu        t0, s7, 1175
                  slli         a7, a1, 12
397:              srl          zero, a4, t6
                  blt          s3, t3, 415f
                  or           a6, s11, a2
                  andi         a4, a4, -920
                  srai         t3, zero, 31
                  or           s4, a0, s8
                  addi         a1, zero, 8 #init loop 0 counter
                  add          a6, s9, t3
                  addi         a2, zero, -17 #init loop 0 limit
                  and          t2, ra, s11
                  and          zero, t3, gp
                  sra          a6, s11, s11
sub_3_6_0_t:      slt          tp, a7, s11
                  andi         tp, s6, 655
                  lui          ra, 991740
                  andi         a4, a2, -907
                  addi         a1, a1, -5 #update loop 0 counter
                  ori          s5, zero, -203
                  nop
                  sltiu        a4, sp, 1508
                  bge          a1, a2, sub_3_6_0_t #branch for loop 0
                  slli         gp, t6, 30
                  sub          s7, s4, a6
                  slli         s3, gp, 3
                  bltu         t2, t5, 412f
                  addi         a4, sp, 1931
                  slt          s8, tp, s0
                  blt          gp, t1, 426f
                  auipc        gp, 443852
                  sltiu        s9, s6, -1812
                  sll          a4, s6, s2
412:              andi         s7, s7, 1247
                  srl          t0, t3, s10
                  sltu         sp, s3, s4
415:              xori         a1, a5, 1517
                  sltiu        s3, t6, -1574
                  xor          s5, s7, s10
                  nop
                  andi         s11, s10, 1579
                  srl          a6, s10, a7
                  srli         s8, t0, 19
                  sltu         a7, a3, t4
                  auipc        a2, 863887
                  sltiu        s7, t1, -355
                  bltu         a2, t0, 439f
426:              slti         s10, a7, -81
                  beq          s2, sp, 447f
                  sra          s5, s3, s9
                  sra          s5, a7, a5
                  lui          t5, 573368
                  xori         s4, s7, -2042
                  bltu         t1, t0, 447f
                  bne          t0, a1, 452f
                  blt          zero, zero, 438f
                  bge          s3, t4, 448f
                  xor          t2, gp, s3
                  srl          a1, a5, a0
438:              and          t3, s9, a5
439:              sltiu        a6, t1, -731
                  and          t0, s0, s4
                  sub          a3, s4, a3
                  srai         s7, t4, 20
                  bne          t3, s6, 459f
                  srli         a6, t5, 0
                  sll          a1, a6, s9
                  sltiu        s1, s4, 1059
447:              and          s10, s2, t5
448:              xor          a5, s3, zero
                  sub          t0, s6, a3
                  beq          a3, a2, 460f
                  andi         s1, gp, 1802
452:              sltu         s6, s7, gp
                  bgeu         t0, s7, 473f
                  nop
                  xori         ra, s5, -1961
                  bne          a6, tp, 471f
                  bne          tp, t0, 473f
                  sll          a3, s9, t4
459:              andi         a6, tp, -1084
460:              or           tp, t0, t3
                  blt          s8, tp, 471f
                  sub          s3, t3, s0
                  bgeu         a3, t4, 472f
                  xor          sp, s3, t4
                  xor          s7, s1, t6
                  slt          a4, a0, a2
                  slti         t5, t3, -1425
                  xori         a3, a5, -355
                  lui          gp, 196240
                  xori         s7, t6, -1918
471:              add          s10, s8, t5
472:              lui          t4, 60964
473:              add          t1, a4, a3
                  xor          a7, s1, s11
                  beq          s5, s7, 495f
                  srl          tp, s2, s11
                  srai         s7, s10, 0
                  and          a2, t3, t0
                  srli         tp, sp, 7
                  slli         s1, s1, 30
                  sltu         s0, s2, tp
                  slt          t0, zero, gp
                  srli         ra, s0, 16
                  addi         s7, a3, 359
                  sltiu        t5, s2, -1813
                  bge          a1, a6, 489f
                  srl          s7, ra, s10
                  addi         t4, a1, 1265
489:              srai         s10, a6, 2
                  srl          a2, s3, a2
                  srl          t4, tp, a4
                  auipc        sp, 128409
                  bltu         zero, s8, 506f
                  xori         t2, t5, 886
495:              and          a1, t2, t4
                  ori          gp, a6, 1578
                  lui          gp, 119985
                  nop
                  or           sp, s2, t1
                  andi         t0, t5, 224
                  and          s6, a4, a5
                  beq          tp, s1, 521f
                  sltu         s9, s2, s0
                  lui          s9, 311309
                  bltu         s8, a1, 507f
506:              beq          gp, a0, 519f
507:              slti         s5, s7, 737
                  srli         tp, zero, 26
                  sra          a6, s1, t4
                  sub          a4, t1, t4
                  sltu         t1, s0, s1
                  andi         s11, t2, 509
                  add          t5, a4, s3
                  xor          s11, tp, s9
                  xor          ra, s3, a0
                  nop
                  srli         zero, a4, 19
                  sra          s0, s6, s8
519:              xori         s10, s2, 1257
                  auipc        tp, 112020
521:              and          zero, t2, t5
                  add          gp, t2, s7
                  bltu         s9, t0, 532f
                  andi         a3, t4, -593
                  and          s11, ra, a7
                  bltu         a0, gp, 530f
                  lui          s6, 181794
                  xor          s11, sp, s7
                  bge          a5, s6, 548f
530:              srli         a2, a6, 7
                  sub          a3, s11, ra
532:              sltiu        t1, a3, -2026
                  and          s7, a5, a5
                  auipc        ra, 801056
                  beq          s0, tp, 543f
                  sub          a2, t2, gp
                  blt          t4, a2, 553f
                  bne          s10, s6, 552f
                  slli         gp, s2, 26
                  auipc        a7, 611007
                  nop
                  auipc        s11, 578120
543:              sub          t3, s5, a4
                  andi         t4, s0, -1044
                  bltu         t4, s3, 558f
                  sll          t2, t0, sp
                  sra          s4, a1, s11
548:              blt          t2, s4, 563f
                  bge          a6, t1, 552f
                  sll          t0, a6, a2
                  nop
552:              slli         s10, s1, 26
553:              sra          t5, s0, s1
                  sub          t4, a3, ra
                  ori          s1, a0, -68
                  xori         t4, s11, -1534
                  slt          a4, a6, a1
558:              blt          a6, t1, 577f
                  auipc        t4, 154116
                  bge          sp, a3, 565f
                  ori          t4, a6, 1892
                  sltu         gp, s5, ra
563:              sltiu        s10, a0, 575
                  sltiu        s3, a1, 1303
565:              sub          s10, tp, a5
                  or           t0, t5, t6
                  sll          t3, s6, s7
                  sltu         a3, s11, sp
                  srl          a7, zero, t4
                  beq          s3, s3, 586f
                  srai         s5, t6, 29
                  sra          t5, t0, a0
                  add          t5, s8, s6
                  or           s1, ra, zero
                  xor          s0, t6, sp
                  sub          a7, s1, a2
577:              bge          a0, t6, 584f
                  xor          a5, s5, s5
                  sub          s6, s3, t6
                  srl          sp, gp, s2
                  slti         s3, a3, 2037
                  srli         s6, zero, 29
                  slti         s8, s10, -412
584:              bltu         s5, ra, 591f
                  ori          a7, t2, -833
586:              srli         t0, a2, 24
                  nop
                  nop
                  sub          s3, s5, a5
                  nop
591:              lui          s0, 432063
                  bgeu         s4, s7, 609f
                  beq          tp, a0, 611f
                  sltiu        a5, ra, -941
                  bge          a3, a1, 605f
                  auipc        s3, 190586
                  and          gp, t6, a1
                  slli         gp, ra, 9
                  andi         s0, s3, -931
                  blt          s3, t2, 609f
                  bne          s6, a5, 611f
                  xori         a4, gp, -658
                  add          ra, a5, s5
                  beq          t1, zero, 619f
605:              sltiu        gp, sp, 543
                  srli         s6, a0, 22
                  bne          t4, t1, 627f
                  bltu         ra, t4, 624f
609:              and          gp, s9, gp
                  bltu         t5, t4, 624f
611:              ori          t1, t3, -72
                  sra          a6, s10, s7
                  auipc        a6, 602070
                  srli         a7, s2, 13
                  srai         t4, gp, 28
                  sltiu        a6, s11, -158
                  nop
                  bne          t0, a5, 637f
619:              srli         ra, s9, 19
                  srai         s9, t6, 11
                  lui          s9, 379519
                  and          a2, s8, a4
                  slt          s10, gp, a2
624:              sll          zero, a6, t2
                  ori          s0, s10, 1027
                  bge          a1, s1, 646f
627:              bne          a0, zero, 636f
                  sll          s5, a3, a2
                  sltu         s4, t4, s0
                  sll          a1, a6, gp
                  lui          t1, 49557
                  srai         s10, s6, 13
                  slti         a1, s9, 929
                  bltu         s3, t2, 654f
                  and          s3, a2, ra
636:              xor          s3, a2, t6
637:              or           s1, s2, t1
                  sltiu        gp, a4, 1928
                  sub          t0, t6, gp
                  bgeu         ra, a7, 647f
                  add          gp, a1, a6
                  lui          t0, 420132
                  sltiu        s5, s3, 448
                  lui          t2, 460392
                  ori          s4, s10, 960
646:              beq          a4, t4, 665f
647:              or           s9, s9, a3
                  andi         t0, s3, 1600
                  lui          a6, 62120
                  addi         s3, a1, -1037
                  slti         t0, ra, 1930
                  bltu         s10, t1, 672f
                  sll          s0, zero, s4
654:              sll          a7, t0, t1
                  sub          s7, s11, s1
                  bne          s7, s11, 661f
                  addi         a1, zero, -2 #init loop 1 counter
                  sra          gp, sp, a5
                  addi         s7, zero, 12 #init loop 1 limit
                  srl          a2, s9, s7
sub_3_9_1_t:      or           s8, a0, t2
                  srli         ra, a0, 16
                  ori          s8, s11, -1486
                  lui          s6, 71292
                  sltiu        s6, s0, -942
                  addi         a1, a1, 6 #update loop 1 counter
                  addi         t3, zero, -8 #init loop 0 counter
                  add          t4, s3, a7
                  addi         s1, zero, 20 #init loop 0 limit
                  and          a3, gp, a0
                  and          s9, a2, s0
sub_3_9_0_t:      xor          a6, s1, s9
                  sra          a7, t5, t0
                  addi         t3, t3, 7 #update loop 0 counter
                  srli         t0, a5, 6
                  addi         s3, t2, 53
                  xori         s11, s4, 497
                  srai         s10, a7, 7
                  sll          a2, a4, s2
                  bltu         t3, s1, sub_3_9_0_t #branch for loop 0
                  xori         ra, s6, 689
                  srai         s10, t6, 9
                  srai         a3, a0, 27
                  sub          zero, a0, t6
                  blt          a1, s7, sub_3_9_1_t #branch for loop 1
                  or           s6, t0, t0
                  slt          a6, a1, s9
                  bge          t6, s11, 668f
                  add          t1, t0, a3
                  srl          a1, a1, s1
661:              xor          s11, a0, s6
                  sll          s0, s5, s7
                  addi         a1, s7, -1967
                  sltu         s0, s10, a5
665:              andi         s3, s7, 1632
                  bne          t1, s4, 682f
                  slli         s3, t5, 8
668:              xori         t5, a1, -208
                  sub          a2, sp, s6
                  bgeu         a1, zero, 679f
                  srl          a5, t1, t3
672:              ori          t5, s3, 1216
                  sltiu        zero, s8, 725
                  addi         s11, a7, -84
                  srl          s11, s6, s0
                  bgeu         t4, s3, 683f
                  sltu         s1, s9, a4
                  bltu         t1, a5, 680f
679:              and          t4, s5, a5
680:              andi         a1, s5, -1801
                  sub          s3, sp, s0
682:              beq          s8, a6, 691f
                  addi         a1, zero, 9 #init loop 0 counter
                  addi         s11, zero, 8 #init loop 0 limit
sub_3_3_0_t:      sltu         s3, s2, t3
                  and          s6, ra, a4
                  addi         a1, a1, -5 #update loop 0 counter
                  bgeu         a1, s11, sub_3_3_0_t #branch for loop 0
                  slli         s3, t0, 11
683:              xor          t1, s5, sp
                  ori          s10, sp, 589
                  addi         s4, s7, 1413
                  or           sp, a7, a4
                  addi         s3, a7, 1202
                  bgeu         a1, s8, 703f
                  srl          s4, s10, sp
                  sll          s7, s0, s3
691:              nop
                  srli         s1, t5, 19
                  bge          sp, t1, 706f
                  bltu         s5, s0, 712f
                  slli         s5, t4, 21
                  auipc        t1, 389044
                  blt          s1, s0, 704f
                  slti         a1, a6, -829
                  bge          a6, ra, 716f
                  bne          s9, a3, 714f
                  slti         zero, t6, 922
                  or           zero, t3, s6
703:              beq          s4, gp, 712f
704:              and          a2, s0, a0
                  addi         s1, s9, 1880
706:              or           s4, gp, a0
                  sll          t0, s6, t1
                  sltu         zero, t1, s5
                  xori         a7, a1, -1544
                  addi         t1, ra, 108
                  srai         t0, t1, 29
712:              srl          s0, a3, s2
                  andi         s6, s3, 284
714:              xor          s8, t1, a4
                  xor          a4, t5, tp
716:              bge          a5, a0, 719f
                  and          s3, s8, gp
                  bgeu         tp, t6, 725f
719:              blt          a3, sp, 723f
                  sra          s3, s10, s2
                  slt          a2, s6, a4
                  sltiu        s8, s2, -557
723:              sra          sp, a4, gp
                  xor          s6, s2, ra
725:              xori         zero, t4, 128
                  bltu         s4, s6, 746f
                  slti         zero, s5, 1771
                  lui          s4, 715736
                  sra          a7, sp, a3
                  srl          s10, a0, a1
                  srai         t2, t4, 17
                  lui          t0, 637984
                  and          s4, s9, ra
                  bltu         t1, a4, 753f
                  add          s6, s11, t1
                  srai         tp, a4, 24
                  bne          s6, t4, 751f
                  sltiu        a1, ra, -1324
                  slti         s3, t2, -1757
                  lui          s10, 385269
                  and          s9, a3, s4
                  or           sp, s5, t3
                  ori          t1, s9, -1339
                  sra          s11, s2, t3
                  sltiu        s11, sp, 1800
746:              slt          sp, zero, t5
                  srl          s6, s1, zero
                  beq          a6, s0, 764f
                  blt          t3, a7, 759f
                  add          t5, s5, t0
751:              srai         s7, s5, 27
                  srl          a6, ra, a3
753:              add          zero, a2, s5
                  bge          s10, t0, 767f
                  beq          s3, zero, 775f
                  addi         s7, t2, 530
                  slli         gp, a3, 31
                  ori          t4, s8, -313
759:              srai         t5, a4, 17
                  add          a4, s11, s10
                  auipc        s6, 260058
                  bltu         s3, a6, 781f
                  bge          t2, s6, 779f
764:              beq          s3, t4, 779f
                  beq          a6, s5, 773f
                  slli         a4, ra, 0
767:              srli         s7, a7, 11
                  beq          s5, s1, 783f
                  bne          gp, a2, 783f
                  or           t1, s0, a1
                  srl          t0, a2, a4
                  andi         gp, s4, -167
773:              and          s3, s2, s11
                  blt          s5, s11, 783f
775:              auipc        s11, 223745
                  andi         a2, a0, 1026
                  sltiu        t3, a0, 1215
                  beq          a5, sp, 794f
779:              srl          a1, s9, t5
                  auipc        t5, 39077
781:              addi         t4, a6, 1292
                  add          s0, a7, a3
783:              xori         s5, s8, -1728
                  andi         t3, t0, 1904
                  bgeu         t5, s2, 802f
                  lui          t3, 387203
                  sltiu        a4, s4, -384
                  srai         s1, a1, 11
                  bne          a7, a2, 809f
                  slti         a2, s0, 2003
                  sltiu        s3, a6, -1871
                  andi         gp, t2, 481
                  andi         a2, s2, 58
794:              sltu         s3, a7, t2
                  and          a5, sp, s10
                  slt          sp, a6, a4
                  or           t5, s1, s10
                  add          a2, t0, t2
                  nop
                  bgeu         s1, a6, 816f
                  xor          a1, s3, a2
802:              add          a5, s2, a1
                  srai         t4, a7, 21
                  blt          sp, s10, 823f
                  xor          t1, ra, s11
                  slti         s6, tp, 454
                  nop
                  addi         gp, s7, 504
809:              ori          tp, s1, -1776
                  sll          ra, s8, s8
                  xor          a5, s0, a2
                  sra          t4, a5, sp
                  and          a3, s9, a6
                  srli         s7, s6, 29
                  addi         t1, t3, 761
816:              blt          s4, a7, 834f
                  lui          s6, 303161
                  ori          t0, s7, -1568
                  srli         t5, zero, 6
                  ori          t0, t6, -684
                  and          s7, s6, gp
                  srli         s10, s4, 8
823:              xori         s11, t4, -578
                  xori         t4, a7, -1568
                  bge          t2, s1, 832f
                  sltu         s1, s1, a0
                  sltu         s9, s10, a4
                  auipc        tp, 788431
                  beq          gp, t6, 849f
                  sra          s6, t0, gp
                  xor          a2, t3, s10
832:              and          t1, t0, t6
                  and          zero, a3, tp
834:              srl          t0, s8, s10
                  sub          s3, t6, t6
                  xori         s6, s3, 443
                  ori          t5, tp, 1092
                  srai         s8, a0, 2
                  srai         a4, t0, 1
                  slti         s7, t3, -1031
                  bgeu         s4, a2, 857f
                  bge          t2, a0, 862f
                  slt          sp, s6, t4
                  bge          zero, a5, 854f
                  srli         tp, s1, 16
                  ori          a4, t4, -989
                  sra          s7, s11, a1
                  auipc        tp, 996692
849:              xori         a4, t5, -344
                  bne          t5, s10, 852f
                  srai         s7, s9, 1
852:              blt          t1, a6, 859f
                  sll          gp, t5, s6
854:              add          s5, s9, a2
                  sra          sp, tp, t4
                  addi         s8, a6, -54
857:              xor          s1, t5, sp
                  sra          s9, s3, gp
859:              or           s0, s3, tp
                  sltu         s7, s1, a0
                  sltiu        a2, a2, 334
862:              bgeu         s6, s9, 869f
                  sltu         s3, zero, t0
                  bge          zero, a3, 878f
                  srai         s3, a2, 28
                  add          t0, s8, sp
                  sra          s6, t4, a6
                  auipc        gp, 753814
869:              sltiu        t1, s4, -1354
                  nop
                  slti         t0, t5, 1170
                  addi         s0, t6, 2027
                  slti         s6, t2, -657
                  sra          t0, t0, a0
                  slli         s5, tp, 31
                  bne          s10, zero, 881f
                  nop
878:              add          s10, s1, s2
                  bne          t3, gp, 889f
                  addi         s11, zero, 4 #init loop 0 counter
                  addi         s4, zero, 14 #init loop 0 limit
sub_3_17_0_t:     addi         tp, zero, -448
                  auipc        s6, 698221
                  addi         s11, s11, 10 #update loop 0 counter
                  bne          s11, s4, sub_3_17_0_t #branch for loop 0
                  slli         t5, a1, 15
                  lui          zero, 1039543
881:              srli         a2, s4, 11
                  srl          s1, sp, gp
                  sll          a2, zero, a6
                  add          a2, gp, s2
                  nop
                  beq          a7, s9, 890f
                  sltu         s7, s6, s6
                  slt          s10, a1, t5
889:              xori         s5, s6, -1393
890:              sra          s3, a0, a7
                  srl          a6, s9, s3
                  slti         t1, t3, -507
                  bltu         a3, a0, 902f
                  sltu         a5, t0, ra
                  srai         sp, s6, 15
                  beq          a6, t0, 911f
                  bge          a2, t2, 900f
                  ori          ra, t3, -254
                  sra          s0, a2, s9
900:              andi         t3, t1, -737
                  beq          a0, t3, 910f
902:              andi         t5, t6, 1634
                  ori          s11, s7, -1273
                  bgeu         s8, s7, 912f
                  sub          zero, s3, s0
                  bltu         zero, s8, 912f
                  sub          ra, t5, sp
                  blt          a5, t6, 912f
                  lui          t0, 189257
910:              bltu         s0, t4, 912f
911:              sll          gp, s3, a3
912:              slli         s7, a6, 22
                  andi         s8, t4, 306
                  auipc        s7, 85038
                  lw           t2, 4(s2)
                  srli         s5, s1, 23
                  lui          s10, 974281
                  addi         s2, s2, 56
                  and          s5, t2, t6
1310:             addi x1, x7, 0
1310:             jalr x1, x1, 0
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
                  add x31, x18, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

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
                  add x31, x18, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

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
                  add x31, x18, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

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
                  add x31, x18, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

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
                  add x31, x18, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

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
                  add x31, x18, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

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
                  add x31, x18, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

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
                  add x31, x18, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

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
                  add x31, x18, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

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
                  add x31, x18, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

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
                  add x31, x18, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

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
                  add x31, x18, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

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
                  add x31, x18, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

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
                  add x31, x18, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

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
                  add x31, x18, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

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
                  add x31, x18, zero
                  csrr x19, 0x341 # MEPC
                  csrr x19, 0x342 # MCAUSE
                  li x9, 0x3 # BREAKPOINT
                  beq x19, x9, ebreak_handler
                  li x9, 0x8 # ECALL_UMODE
                  beq x19, x9, ecall_handler
                  li x9, 0x9 # ECALL_SMODE
                  beq x19, x9, ecall_handler
                  li x9, 0xb # ECALL_MMODE
                  beq x19, x9, ecall_handler
                  li x9, 0x1
                  beq x19, x9, instr_fault_handler
                  li x9, 0x5
                  beq x19, x9, load_fault_handler
                  li x9, 0x7
                  beq x19, x9, store_fault_handler
                  li x9, 0xc
                  beq x19, x9, pt_fault_handler
                  li x9, 0xd
                  beq x19, x9, pt_fault_handler
                  li x9, 0xf
                  beq x19, x9, pt_fault_handler
                  li x9, 0x2 # ILLEGAL_INSTRUCTION
                  beq x19, x9, illegal_instr_handler
                  csrr x9, 0x343 # MTVAL
                  1: la x10, test_done
                  jalr x1, x10, 0

ecall_handler:    
                  la x19, _start
                  sw x0, 0(x19)
                  sw x1, 4(x19)
                  sw x2, 8(x19)
                  sw x3, 12(x19)
                  sw x4, 16(x19)
                  sw x5, 20(x19)
                  sw x6, 24(x19)
                  sw x7, 28(x19)
                  sw x8, 32(x19)
                  sw x9, 36(x19)
                  sw x10, 40(x19)
                  sw x11, 44(x19)
                  sw x12, 48(x19)
                  sw x13, 52(x19)
                  sw x14, 56(x19)
                  sw x15, 60(x19)
                  sw x16, 64(x19)
                  sw x17, 68(x19)
                  sw x18, 72(x19)
                  sw x19, 76(x19)
                  sw x20, 80(x19)
                  sw x21, 84(x19)
                  sw x22, 88(x19)
                  sw x23, 92(x19)
                  sw x24, 96(x19)
                  sw x25, 100(x19)
                  sw x26, 104(x19)
                  sw x27, 108(x19)
                  sw x28, 112(x19)
                  sw x29, 116(x19)
                  sw x30, 120(x19)
                  sw x31, 124(x19)
                  la x10, write_tohost
                  jalr x0, x10, 0

instr_fault_handler:
                  add x18, x31, zero
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
                  add x18, x31, zero
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
                  add x18, x31, zero
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
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x18, x31, zero
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
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x18, x31, zero
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
                  csrr  x19, 0x300 # MSTATUS;
                  csrr  x19, 0x304 # MIE;
                  csrr  x19, 0x344 # MIP;
                  csrrc x19, 0x344, x19 # MIP;
                  add x18, x31, zero
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
