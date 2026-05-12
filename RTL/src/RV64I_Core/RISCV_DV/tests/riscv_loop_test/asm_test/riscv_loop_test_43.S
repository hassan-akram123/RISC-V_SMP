.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x28, h0_start
jalr x0, x28, 0
h0_start:
                  li x30, 0x40000100
                  csrw 0x301, x30
kernel_sp:        
                  la x10, kernel_stack_end

trap_vec_init:    
                  la x30, mtvec_handler
                  ori x30, x30, 1
                  csrw 0x305, x30 # MTVEC

mepc_setup:       
                  la x30, init
                  csrw 0x341, x30

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x30, 0x1800
                  csrw 0x300, x30 # MSTATUS
                  mret
init:             
                  li x0, 0xf4df5cb9
                  li x1, 0x80000000
                  li x2, 0xa1b7b858
                  li x3, 0xad279cfe
                  li x4, 0x80000000
                  li x5, 0xf70a8012
                  li x6, 0xfaf2bfb8
                  li x7, 0x0
                  li x8, 0x5584426c
                  li x9, 0x0
                  li x11, 0x5
                  li x12, 0xfae5daa1
                  li x13, 0xd
                  li x14, 0x80000000
                  li x15, 0x4b359c29
                  li x16, 0x0
                  li x17, 0xf1e3de3
                  li x18, 0xf1fb543e
                  li x19, 0xf
                  li x20, 0xb
                  li x21, 0x80000000
                  li x22, 0x803d75c0
                  li x23, 0x0
                  li x24, 0x80000000
                  li x25, 0xf43a15f8
                  li x26, 0x0
                  li x27, 0xdb14d0ba
                  li x28, 0xec3ecebc
                  li x30, 0x6a4fc4fc
                  li x31, 0x80000000
                  la x29, user_stack_end
main:             addi         a5, zero, 6 #init loop 1 counter
                  sub          s10, a2, t1
                  xor          tp, a7, tp
                  addi         s0, zero, 16 #init loop 1 limit
main_1_1_t:       xori         a4, a3, -1551
                  addi         a5, a5, 2 #update loop 1 counter
                  srl          sp, t2, s8
                  addi         s6, zero, 5 #init loop 0 counter
                  slti         a1, s10, 1495
                  auipc        s8, 75403
                  addi         t1, zero, -17 #init loop 0 limit
main_1_0_t:       ori          a1, t0, 1481
                  sltiu        s11, a1, -1694
                  addi         s6, s6, -4 #update loop 0 counter
                  bge          s6, t1, main_1_0_t #branch for loop 0
                  srl          s4, s6, t3
                  beq          a5, s0, main_1_1_t #branch for loop 1
                  slti         t2, s1, 712
                  addi         gp, zero, 6 #init loop 1 counter
                  nop
                  or           s0, s0, t3
                  addi         s6, zero, 17 #init loop 1 limit
                  and          t1, a1, a3
main_2_1_t:       auipc        t2, 479650
                  add          t6, t0, t0
                  or           ra, a6, a0
                  addi         gp, gp, 1 #update loop 1 counter
                  srli         s7, s0, 15
                  addi         a3, a1, -464
                  add          s11, s10, t1
                  addi         s10, zero, 1 #init loop 0 counter
                  and          t0, t2, ra
                  addi         s8, zero, 7 #init loop 0 limit
                  xori         s4, s6, 842
                  addi         a7, s10, -405
main_2_0_t:       sltiu        a4, s3, 1358
                  add          s3, s3, s7
                  slti         t1, s7, -1601
                  addi         s10, s10, 2 #update loop 0 counter
                  addi         s0, s1, 79
                  sltiu        s0, t1, -1043
                  bltu         s10, s8, main_2_0_t #branch for loop 0
                  xori         t2, gp, 1036
                  srl          s3, a0, s0
                  srai         s7, a5, 16
                  xori         ra, a0, -1376
                  slti         sp, tp, 765
                  xori         s9, s4, -2037
                  slli         t2, a7, 6
                  blt          gp, s6, main_2_1_t #branch for loop 1
                  add          s3, t0, zero
                  addi         ra, zero, -10 #init loop 0 counter
                  and          t2, s11, a3
                  or           t6, s3, a6
                  ori          s3, s6, 1981
                  nop
                  addi         s3, tp, -922
                  nop
                  srl          sp, a3, s7
                  slt          s1, a2, a1
                  or           s2, a0, s4
                  xor          a5, a6, s9
                  slli         a5, t4, 29
                  sra          a5, s1, s7
                  slti         t2, t0, 33
                  slti         s7, a1, -525
                  slli         a5, s4, 17
                  slt          a2, a5, a4
                  sll          s3, s7, t5
                  addi         tp, zero, 8 #init loop 0 limit
                  xor          zero, s10, t3
                  slt          s2, s3, zero
main_4_0_t:       nop
                  ori          s8, a3, -443
                  addi         ra, ra, 9 #update loop 0 counter
                  or           sp, a1, t5
                  sll          s10, sp, t6
                  bltu         ra, tp, main_4_0_t #branch for loop 0
                  sub          s6, s1, s11
                  addi         a6, zero, 8 #init loop 1 counter
                  sra          tp, zero, s6
                  addi         t1, zero, -1 #init loop 1 limit
                  srli         t2, t5, 9
                  andi         tp, s9, -329
                  xor          tp, t5, s10
                  nop
                  add          s3, s6, t6
                  sra          a1, tp, a4
                  srl          tp, t4, sp
                  slt          zero, a6, gp
main_0_1_t:       addi         gp, t3, 618
                  lui          gp, 890109
                  and          a5, zero, s7
                  addi         a6, a6, -5 #update loop 1 counter
                  addi         ra, zero, -3 #init loop 0 counter
                  addi         s8, zero, -6 #init loop 0 limit
                  srli         zero, s8, 23
main_0_0_t:       andi         a7, t4, 427
                  addi         ra, ra, -2 #update loop 0 counter
                  bge          ra, s8, main_0_0_t #branch for loop 0
                  sub          s5, t5, sp
                  slti         s6, a0, 848
                  xori         t6, a7, 991
                  xori         s6, a0, 402
                  sltiu        a1, s1, -1586
                  bge          a6, t1, main_0_1_t #branch for loop 1
                  andi         gp, t2, -1036
                  or           t6, a2, t6
                  bge          t2, s9, 15f
                  and          a5, t4, s4
                  beq          t1, s0, 5f
                  bltu         s8, a5, 21f
5:                bltu         a7, s1, 17f
                  slti         s7, s8, -881
                  ori          t1, s4, 1614
                  sub          s0, s8, a3
                  slli         t2, t0, 6
                  andi         s9, a1, -13
                  bne          gp, s9, 20f
                  ori          a3, sp, -1064
                  slti         s11, t5, -621
                  nop
15:               andi         s4, a6, 1687
                  srai         t1, s7, 26
17:               sll          a7, s4, s1
                  auipc        s11, 827105
                  beq          tp, s6, 28f
20:               slt          tp, t1, a4
21:               andi         zero, a7, -1683
                  sltiu        ra, a5, -1347
                  bge          s10, s7, 37f
                  sub          s6, t6, s11
                  lui          s5, 96054
                  sra          gp, zero, s7
                  addi         s9, s3, 1561
28:               addi         a1, ra, -1457
                  addi         sp, s1, -622
                  addi         s5, a6, -951
                  srl          t5, a1, t2
                  sub          t2, s5, s1
                  blt          a4, t3, 46f
                  srl          a3, s9, zero
                  sll          zero, t1, s6
                  bge          s3, ra, 44f
37:               bne          a1, s7, 52f
                  add          s0, t6, s1
                  and          s0, sp, a4
                  sltiu        a1, gp, 467
                  bge          t3, t4, 42f
42:               blt          t0, a7, 49f
                  slti         sp, s11, 1479
44:               xori         a5, s3, -1280
                  sll          t0, t0, t6
46:               ori          gp, s10, 452
                  add          a7, t2, gp
                  sll          t2, a5, s7
49:               srli         gp, s8, 22
                  xor          t6, a0, s3
                  ori          t0, s10, -1239
52:               lui          a7, 354124
                  addi         s2, s10, -1173
                  andi         s3, t6, 1433
                  slti         s0, a6, -1288
                  sra          s10, s7, a0
                  xori         a2, a6, 488
                  blt          a4, s5, 76f
                  ori          a2, s4, -1091
                  bgeu         a6, s1, 70f
                  sltu         t0, a1, s8
                  andi         s8, a5, -814
                  sub          ra, a5, a5
                  add          tp, s4, s1
                  or           t1, t1, a3
                  la           a6, sub_2
                  and          a7, s1, s6
                  lui          a2, 359140
                  srl          a2, t3, a1
                  slli         zero, s8, 4
                  andi         a3, t5, 456
                  srli         s9, a3, 27
                  addi         a6, a6, 479
                  ori          t2, a1, -1403
                  auipc        s8, 582414
main_j1:          jalr         a5, a6, -478 #jump main -> sub_2
                  bge          a6, a4, 81f
                  beq          sp, sp, 85f
                  sra          s8, s1, s7
                  srai         t2, zero, 24
                  slti         a3, s2, 1090
                  srl          a2, a2, t5
70:               ori          t6, t5, -1378
                  beq          s7, s8, 78f
                  add          s1, a0, s3
                  xori         t5, t0, -300
                  addi         a7, s4, -2024
                  sltiu        a3, t6, -453
76:               slt          s8, tp, s6
                  ori          s10, zero, 1550
78:               sra          a1, s3, s1
                  srai         a6, s4, 1
                  beq          s1, ra, 97f
81:               beq          s0, s6, 85f
                  andi         t0, a3, 148
                  bgeu         s2, tp, 87f
                  andi         t1, sp, -1559
85:               sra          s11, s4, ra
                  bge          a4, s11, 89f
87:               slli         a6, a5, 12
                  slti         a4, s0, -464
89:               sltu         s3, s9, s8
                  sltu         s1, t0, s5
                  and          t1, a0, a0
                  andi         tp, a4, -765
                  sltu         a1, a3, t6
                  sra          s10, a4, t3
                  slti         s10, s8, -299
                  addi         s5, a5, 1854
97:               sra          s11, tp, t6
                  auipc        t6, 612134
                  sll          ra, s4, gp
                  or           a2, s5, t2
                  slt          s4, s2, sp
                  xori         a3, a7, -1246
                  xori         s3, t2, -675
                  and          s1, a2, t3
                  bne          a1, a7, 107f
                  xor          ra, a3, s6
107:              xor          t5, t5, a6
                  sltu         s11, gp, t6
                  nop
                  ori          a4, s9, 585
                  andi         t5, s7, -211
                  la           s1, sub_1
                  slli         zero, t5, 21
                  addi         s1, s1, 467
                  andi         s7, sp, -74
                  slli         s7, s9, 0
                  bgeu         a5, s0, main_j2 #branch to jump instr
                  nop
main_j2:          jalr         a5, s1, -466 #jump main -> sub_1
                  ori          s9, t4, 1326
                  bne          s1, t0, 117f
                  bgeu         sp, s11, 117f
                  srai         s6, t2, 22
                  nop
                  sltu         a2, s8, s2
117:              and          a4, a0, a7
                  slti         ra, a5, 1343
                  sltu         a7, a1, a1
                  ori          t0, s4, -903
                  ori          a7, s4, 1028
                  lui          s3, 945006
                  addi         a6, t1, -1994
                  sltu         gp, ra, s9
                  lui          a2, 474267
                  srli         s2, s8, 0
                  slti         a7, s8, 1222
                  slti         zero, t6, 1674
                  sub          s6, zero, t6
                  xori         t0, ra, -1930
                  sltu         tp, s10, t5
                  lui          a7, 1000602
                  auipc        s3, 478919
                  slt          a4, sp, s8
                  slti         a6, s3, -600
                  bgeu         a0, a5, 151f
                  addi         s11, a6, 1418
                  and          tp, a4, t6
                  addi         s5, s1, 2021
                  bne          a4, t1, 142f
                  auipc        ra, 249508
142:              slti         s1, s5, 1654
                  blt          s5, t2, 146f
                  ori          s8, s11, -914
                  sra          gp, s7, s11
146:              sltiu        t1, s8, -517
                  bgeu         zero, s7, 159f
                  srai         s6, s6, 13
                  nop
                  srl          t6, t2, ra
151:              beq          t4, a2, 156f
                  blt          t3, a0, 164f
                  slt          a3, s0, t4
                  sltu         a2, t5, gp
                  srai         ra, a4, 22
156:              bge          t2, t6, 160f
                  slti         a1, ra, -1849
                  add          a5, a1, zero
159:              xor          s10, sp, t3
160:              addi         s8, s10, -638
                  srli         s0, s10, 31
                  bne          a2, a1, 164f
                  sltu         gp, gp, s8
164:              xor          s10, zero, a2
                  blt          s3, t1, 174f
                  xori         sp, t4, 1696
                  andi         a3, a5, 1675
                  xor          s0, gp, a4
                  xor          t2, t5, s0
                  add          a4, t5, a6
                  bgeu         a7, s9, 186f
                  nop
                  lui          a1, 551168
174:              srl          s11, a2, t6
                  bgeu         sp, s5, 183f
                  bne          t2, a5, 185f
                  beq          s2, s7, 189f
                  lui          t2, 241648
                  sra          t2, t5, s4
                  blt          t0, gp, 183f
                  sub          a6, s3, ra
                  srli         s8, a1, 16
183:              auipc        gp, 196600
                  lui          zero, 474754
185:              sltu         a2, s10, tp
186:              bgeu         a5, s2, 189f
                  sltu         zero, s4, a1
                  addi         a7, zero, -4 #init loop 1 counter
                  srai         s1, s4, 8
                  slti         ra, a0, -1368
                  addi         a1, zero, 2 #init loop 1 limit
main_3_1_t:       andi         s11, a0, 2036
                  xori         s7, s6, -1428
                  sra          a5, t1, s1
                  slti         gp, s0, 511
                  nop
                  addi         a7, a7, 10 #update loop 1 counter
                  addi         s0, zero, 4 #init loop 0 counter
                  or           a5, a7, tp
                  addi         t5, zero, 4 #init loop 0 limit
                  slli         s3, s1, 24
                  slt          s11, s5, t6
                  addi         t6, a0, -712
main_3_0_t:       sltiu        t6, s2, -960
                  srl          t0, a0, a1
                  xor          s9, t5, a5
                  sltu         a3, t2, zero
                  addi         s0, s0, -2 #update loop 0 counter
                  ori          s3, a4, 1204
                  bgeu         s0, t5, main_3_0_t #branch for loop 0
                  lui          a3, 375623
                  bltu         a7, a1, main_3_1_t #branch for loop 1
                  lui          s6, 262713
                  add          s9, a4, s9
189:              beq          s0, t1, 191f
                  andi         a2, a3, 1232
191:              sltu         a5, s4, t5
                  xor          a3, s0, a1
                  xori         s5, tp, 309
                  auipc        ra, 818504
                  addi         a7, s10, -1356
                  slli         s0, s2, 9
                  blt          s9, s8, 201f
                  srli         s3, a4, 3
                  slli         s1, s9, 26
                  bltu         t2, a2, 207f
201:              xori         gp, ra, 746
                  slli         a3, t5, 19
                  xor          s5, s0, t2
                  sltu         s4, s10, a7
                  beq          s3, s8, 217f
                  or           a2, zero, s1
207:              or           a1, a6, sp
                  or           s6, s5, t2
                  nop
                  or           t6, t0, s11
                  ori          gp, s9, -73
                  blt          s5, a5, 226f
                  blt          s0, s4, 233f
                  bge          t0, t6, 219f
                  slt          a1, a7, s0
                  sltiu        s6, sp, -728
217:              srl          s1, a7, s4
                  or           a3, a5, t5
219:              blt          t5, s0, 220f
220:              nop
                  sub          a7, t2, ra
                  srai         ra, a4, 6
                  bge          t3, a7, 230f
                  bltu         a2, a6, 239f
                  sltiu        t6, ra, 484
226:              sub          s3, a3, t4
                  sltu         s2, s0, t2
                  beq          gp, t4, 241f
                  bgeu         t5, s8, 246f
230:              lui          s2, 659964
                  bge          sp, s3, 248f
                  or           s5, t1, t0
233:              or           ra, gp, s9
                  auipc        s11, 360796
                  xor          s4, zero, t3
                  sub          s11, t4, s11
                  nop
                  xori         s2, s11, -1198
239:              srli         a5, s6, 11
                  bne          a7, t1, 245f
241:              bge          t3, t3, 245f
                  add          a5, a4, gp
                  and          s4, a1, s2
                  srli         gp, a7, 18
245:              sltiu        a7, ra, -1600
246:              xori         t5, s5, 1836
                  srli         sp, s3, 28
248:              lui          t0, 118239
                  sltu         t6, t2, t0
                  sra          s10, a5, a6
                  xori         gp, a3, -1787
                  xor          a1, ra, t3
                  auipc        a6, 383249
                  slti         a5, s7, -435
                  andi         s5, t4, 1475
                  or           t5, t1, a4
                  sub          a1, s1, t0
                  sltu         a3, a5, t2
                  and          s7, s7, gp
                  sltu         s2, t2, t5
                  or           t0, s4, s0
                  bgeu         ra, s4, 276f
                  slti         t5, a6, 328
                  auipc        s2, 816582
                  sltiu        t0, gp, -691
                  slti         gp, a5, 147
                  srli         a7, sp, 11
                  addi         a4, a1, -988
                  srl          t1, s9, t6
                  sltiu        s7, s8, 626
                  bgeu         a2, t0, 283f
                  slt          s5, s3, t4
                  add          s8, t5, s11
                  bge          sp, s4, 292f
                  bge          a6, s7, 285f
276:              slti         sp, s10, -2002
                  auipc        gp, 636892
                  srl          a3, s3, a3
                  srai         t1, s9, 31
                  sub          s3, s0, s11
                  lui          a1, 772649
                  sub          s0, t6, s3
283:              blt          s0, s2, 285f
                  lui          s7, 204570
285:              ori          t5, sp, 1650
                  sll          t2, s4, t6
                  bgeu         a0, a3, 304f
                  bge          a2, t2, 293f
                  xor          s0, t4, a1
                  sra          a4, a0, tp
                  addi         a3, ra, -219
292:              sll          s0, a0, tp
293:              and          a2, t4, a2
                  andi         t1, s0, -1975
                  srai         s5, t6, 5
                  sltiu        s1, t4, 227
                  sub          s9, s4, s4
                  xori         s4, t5, 1807
                  xori         s0, t3, -1047
                  slti         zero, s1, -1395
                  sltu         t0, t5, t2
                  slti         t2, s3, -71
                  addi         s4, a4, 886
304:              addi         s7, ra, 406
                  xor          s2, t4, a0
                  beq          zero, s7, 309f
                  slli         s1, a0, 16
                  beq          s0, s1, 315f
309:              addi         t6, t3, -17
                  bge          t0, t4, 318f
                  srli         a7, t1, 12
                  xori         zero, t0, -1468
                  and          t1, tp, s0
                  sll          s6, a6, a3
315:              srl          s8, s9, a5
                  slli         t0, gp, 21
                  sub          s4, a2, s10
318:              and          a4, s9, gp
                  sra          s6, sp, t4
                  addi         s6, s9, 929
                  srl          a4, a0, a4
                  xori         a2, a4, 1429
                  or           s6, s7, t3
                  bge          a1, a2, 339f
                  lui          zero, 878407
                  sll          s0, gp, zero
                  addi         s8, zero, -3 #init loop 0 counter
                  sltu         a7, s0, zero
                  sub          t1, s4, s6
                  addi         t2, zero, -17 #init loop 0 limit
                  xor          t6, a1, a6
main_5_0_t:       andi         s4, a7, 563
                  ori          zero, a3, 1075
                  addi         s8, s8, -7 #update loop 0 counter
                  xor          s9, s5, t6
                  sll          s2, t5, t1
                  sll          sp, a4, a2
                  beq          s8, t2, main_5_0_t #branch for loop 0
                  andi         s9, a0, -228
                  xor          s3, s2, s9
                  sltu         gp, s10, t6
                  bge          t0, a5, 339f
                  blt          s9, ra, 339f
                  srl          t5, a6, s8
                  beq          t6, t3, 339f
                  bltu         gp, t4, 339f
                  addi         a6, a1, 1098
                  slti         t5, zero, -931
                  nop
                  or           sp, s8, tp
                  and          s10, s1, a6
339:              add          s0, a7, s5
                  la x28, test_done
                  jalr x0, x28, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            auipc        ra, 677376
                  bge          s10, a7, sub_2_stack_p
                  ori          s6, s0, 1911
                  ori          s7, a7, -2031
sub_2_stack_p:    addi         t4, t4, -56
                  slli         gp, t4, 22
                  auipc        t5, 506106
                  sw           a5, 4(t4)
                  sub          a4, s6, t4
                  sltu         sp, s0, t3
                  sub          a4, a1, s4
                  slt          s8, s0, s0
                  sll          gp, t4, s1
                  la           t6, sub_3
                  and          a5, a0, a7
                  nop
                  addi         t6, t6, 47
                  sra          t0, tp, tp
                  sll          a1, s5, s3
sub_2_j4:         jalr         a5, t6, -46 #jump sub_2 -> sub_3
                  addi         s7, zero, -5 #init loop 0 counter
                  slti         s11, s11, -1740
                  xori         s3, s4, -1501
                  lui          a2, 823608
                  addi         a1, zero, 2 #init loop 0 limit
                  srli         s11, a7, 16
                  slli         t0, a1, 6
sub_2_3_0_t:      add          a5, a4, s1
                  lui          tp, 491448
                  nop
                  srl          t2, sp, a6
                  addi         s11, gp, -1680
                  or           gp, zero, t2
                  add          s10, t3, s4
                  addi         s7, s7, 5 #update loop 0 counter
                  xori         a7, s3, -800
                  auipc        s8, 975563
                  auipc        gp, 536904
                  auipc        t2, 462223
                  slli         a6, a4, 23
                  or           s6, a5, t3
                  srli         s3, s10, 6
                  sub          s11, a0, s4
                  auipc        t2, 745647
                  add          a6, s4, t1
                  srl          t5, s8, a1
                  auipc        t5, 1045126
                  bltu         s7, a1, sub_2_3_0_t #branch for loop 0
                  addi         tp, a7, 1617
                  addi         a2, zero, 2 #init loop 0 counter
                  srl          gp, t4, sp
                  srli         a1, s3, 20
                  addi         a4, zero, 7 #init loop 0 limit
sub_2_0_0_t:      slt          sp, t2, s7
                  addi         a2, a2, 4 #update loop 0 counter
                  ori          a1, t3, -1943
                  sltu         a7, s10, t6
                  or           t5, a1, a0
                  sub          t1, t6, t0
                  or           a1, sp, s8
                  xori         ra, zero, -1138
                  andi         sp, a1, -1118
                  and          s0, a7, s10
                  sll          a3, a4, s0
                  sltu         s3, s9, s11
                  sra          a6, s9, s3
                  add          s7, t1, s4
                  add          s11, s6, a5
                  and          t1, s4, t2
                  srl          s8, t4, s1
                  sra          s2, s10, sp
                  xori         s6, t1, -512
                  sub          s2, a6, s4
                  blt          a2, a4, sub_2_0_0_t #branch for loop 0
                  slti         t2, a2, -1267
                  addi         a6, zero, -9 #init loop 0 counter
                  and          zero, t2, t3
                  add          t1, s2, s1
                  slti         s5, s5, -1194
                  xori         t5, sp, 848
                  add          zero, t4, s11
                  addi         a7, zero, 3 #init loop 0 limit
                  andi         tp, s0, 1353
sub_2_4_0_t:      xor          t0, a5, a5
                  sra          t0, s5, s2
                  or           ra, s10, s1
                  addi         a6, a6, 5 #update loop 0 counter
                  xor          s5, t1, a5
                  sra          a1, t0, a2
                  xori         s10, a5, 538
                  sll          a1, s4, ra
                  slli         s1, t1, 28
                  sub          s8, s8, s0
                  sltu         s6, a2, a5
                  andi         s2, sp, -1875
                  xor          s11, t6, s11
                  slti         s10, a0, 91
                  blt          a6, a7, sub_2_4_0_t #branch for loop 0
                  auipc        s5, 864532
                  addi         a5, zero, -4 #init loop 0 counter
                  addi         t0, zero, 11 #init loop 0 limit
sub_2_1_0_t:      slti         tp, s1, -281
                  slli         t1, s8, 25
                  addi         a5, a5, 1 #update loop 0 counter
                  and          a2, t6, a1
                  sra          s2, s6, s1
                  lui          t5, 170772
                  or           s11, s2, s3
                  beq          a5, t0, sub_2_1_0_t #branch for loop 0
                  sll          s1, s7, s1
                  slti         a4, s2, -765
                  xori         t5, s8, 1261
                  bltu         t4, a4, 6f
                  sltu         s5, s9, a0
                  xori         a1, t5, -1103
                  blt          a6, a3, 22f
6:                sltu         t0, gp, s11
                  bgeu         s11, ra, 19f
                  sub          sp, s0, a2
                  lui          s7, 271103
                  srli         gp, t5, 4
                  bgeu         s4, s9, 13f
                  sltiu        s9, ra, -749
13:               or           s5, t6, a0
                  bne          ra, a0, 33f
                  bge          a0, t2, 35f
                  srli         s4, t2, 3
                  bge          a5, a0, 18f
18:               addi         a4, t1, 787
19:               andi         t1, s6, -588
                  srl          tp, sp, t6
                  nop
22:               srli         s3, gp, 0
                  srli         s9, a0, 25
                  bge          t0, a7, 35f
                  and          s6, t4, gp
                  auipc        tp, 329436
                  bne          gp, s6, 29f
                  xori         t2, a0, 1104
29:               srli         gp, s6, 19
                  sll          ra, a1, tp
                  nop
                  srli         s2, a2, 27
33:               or           a1, s0, s6
                  ori          s1, a7, -181
35:               nop
                  nop
                  slli         t5, a4, 9
                  or           s10, s10, tp
                  beq          a3, ra, 57f
                  addi         tp, zero, 4 #init loop 0 counter
                  xori         t5, gp, -397
                  xori         s7, tp, 689
                  auipc        a2, 217569
                  srli         s2, s9, 1
                  nop
                  auipc        a4, 681018
                  addi         s0, zero, -6 #init loop 0 limit
                  ori          s4, s10, 12
                  sll          t2, t0, ra
                  xori         s6, s7, -562
                  slli         t0, a2, 22
                  sltu         a4, gp, s5
                  xor          s6, a1, s3
                  slli         a1, t5, 3
sub_2_2_0_t:      slt          s9, s8, a1
                  slli         s8, s7, 15
                  addi         tp, tp, -5 #update loop 0 counter
                  auipc        t1, 296963
                  srli         s9, t3, 7
                  sub          a7, t2, t2
                  srli         s7, s2, 19
                  sltu         a2, s10, zero
                  add          s5, a1, t0
                  or           t1, ra, s1
                  bne          tp, s0, sub_2_2_0_t #branch for loop 0
                  sll          a3, a2, s6
                  sra          s2, t2, s0
                  slli         s10, s7, 26
                  bge          tp, s10, 55f
                  sltiu        s11, s4, 74
                  nop
                  sltu         a2, tp, t6
                  bgeu         a4, zero, 51f
                  sra          zero, s0, s9
                  ori          a5, a2, 2007
                  andi         s2, s0, -1260
                  sltu         a1, t0, t0
51:               nop
                  ori          a5, zero, -1380
                  sll          gp, a7, t3
                  or           s1, a5, tp
55:               srai         a2, a6, 27
                  beq          a3, t5, 58f
57:               sub          a5, s5, t0
58:               srai         s1, a3, 5
                  slli         tp, t0, 13
                  andi         t0, s2, 1046
                  bltu         t2, s4, 76f
                  sra          sp, s11, ra
                  srl          a3, sp, t4
                  bgeu         a0, s0, 82f
                  srli         t5, a0, 23
                  or           tp, sp, a7
                  addi         t2, tp, -331
                  and          s6, t5, t0
                  sub          s5, s7, s2
                  sub          s0, t5, a6
                  slli         sp, s6, 9
                  bgeu         t2, ra, 86f
                  bltu         s5, s7, 74f
74:               bgeu         t6, gp, 84f
                  andi         t2, a1, 1586
76:               bltu         s9, t1, 81f
                  sll          a3, ra, a2
                  srli         s6, s6, 17
                  sltiu        s5, t3, 457
                  bltu         a3, s4, 94f
81:               add          a1, s1, tp
82:               sra          gp, s0, t2
                  beq          t1, a7, 89f
84:               auipc        gp, 519997
                  slti         sp, a3, -1390
86:               sltiu        a1, a4, -1989
                  xor          s2, s7, a1
                  srai         ra, a0, 31
89:               bgeu         zero, tp, 98f
                  bltu         s11, a2, 94f
                  sltiu        a7, t4, -1178
                  bge          sp, s4, 98f
                  srl          t5, s7, a2
94:               xori         sp, a3, -1639
                  bne          a6, sp, 113f
                  srl          t2, s2, a2
                  srli         t1, s0, 23
98:               nop
                  sra          sp, s4, tp
                  xor          ra, s10, zero
                  bltu         gp, t0, 112f
                  bgeu         t0, t6, 104f
                  andi         s8, s2, -1987
104:              bgeu         s3, s3, 114f
                  or           s6, t2, a2
                  blt          s2, a7, 112f
                  bne          s11, t2, 126f
                  andi         a6, a4, 330
                  sll          s2, s5, t2
                  or           s7, s9, a5
                  srai         s4, s4, 20
112:              bge          a1, t0, 113f
113:              or           s9, zero, zero
114:              sltu         a1, t3, a2
                  bge          t0, s5, 124f
                  nop
                  srai         s2, s3, 11
                  sll          s7, s8, a5
                  bltu         a1, s11, 123f
                  add          s10, s2, s0
                  bltu         tp, s4, 127f
                  add          s6, t3, t2
123:              add          s4, a1, t1
124:              addi         zero, gp, -69
                  sra          a1, a0, t3
126:              slt          t6, s9, s3
127:              bne          s10, a4, 129f
                  xori         s10, a7, -832
129:              auipc        a2, 200070
                  blt          t4, s5, 142f
                  add          t1, s5, t1
                  bltu         a1, t6, 136f
                  srl          t0, a5, s0
                  sub          s9, a4, s7
                  xori         s9, s7, -522
136:              slt          s7, a2, s11
                  lui          a1, 940341
                  addi         s3, t3, -1782
                  sub          s7, s5, s3
                  ori          a6, t2, 1498
                  slt          sp, ra, zero
142:              xor          s3, s8, tp
                  xori         zero, s4, 1817
                  srai         s8, s11, 11
                  sra          a6, t5, sp
                  sub          t1, a2, t6
                  slli         s4, a2, 11
                  srai         zero, s9, 16
                  slt          ra, a7, ra
                  slli         a1, a6, 11
                  sra          a4, t0, ra
                  and          s10, s11, s1
                  sra          s8, t5, s7
                  lui          a5, 883645
                  lui          t6, 991601
                  addi         t6, s1, 555
                  ori          t0, a5, -1376
                  slti         a7, a2, 486
                  sltiu        a7, s7, 961
                  bltu         s2, s0, 178f
                  slli         a2, zero, 8
                  srl          s3, s5, s8
                  xor          s6, zero, sp
                  slti         s10, t2, -832
                  or           t5, s0, t4
                  srl          s4, t0, sp
                  sra          gp, s6, ra
                  bne          a1, a1, 188f
                  and          s6, a2, a7
                  slti         a7, s7, -507
                  blt          t5, a2, 177f
                  andi         a5, a0, 1492
                  slti         t0, s8, 2037
                  lui          s1, 801973
                  addi         a3, s4, -1264
                  lui          a4, 189699
177:              nop
178:              beq          t1, s6, 180f
                  lui          s10, 581729
180:              ori          s10, t4, 1479
                  srl          a3, s6, a7
                  bltu         a4, s8, 201f
                  lui          s6, 176384
                  bgeu         a0, s9, 186f
                  sltiu        s1, s7, -149
186:              sra          a5, a1, a4
                  nop
188:              or           a5, s0, t6
                  xori         s7, ra, -1383
                  andi         gp, a0, 1356
                  auipc        s1, 407712
                  auipc        s11, 825552
                  bltu         a6, s4, 210f
                  sltu         s6, s3, t6
                  bgeu         t4, s3, 214f
                  sra          s8, s10, a6
                  bgeu         a7, a5, 215f
                  bltu         s11, tp, 212f
                  srli         s1, t4, 1
                  andi         a3, s0, -816
201:              add          a3, zero, t6
                  auipc        t1, 296556
                  sltiu        t6, a7, 889
                  addi         t2, s11, 1878
                  nop
                  beq          a6, a2, 219f
                  sll          s8, t1, a3
                  add          s6, s11, ra
                  slli         s4, s9, 9
210:              bne          s8, s0, 220f
                  xor          s7, a2, t4
212:              nop
                  nop
214:              bne          a5, s10, 225f
215:              srai         s1, a4, 19
                  nop
                  and          t6, s0, a7
                  add          zero, s8, a4
219:              xori         t2, zero, 1149
220:              or           gp, s3, t6
                  sltu         s11, a3, gp
                  sltu         s11, zero, a2
                  beq          a0, s11, 234f
                  xori         a7, t1, -602
225:              beq          s8, t4, 230f
                  slt          s4, sp, t5
                  add          t6, t3, s0
                  bge          s1, a2, 234f
                  sra          s5, a5, s2
230:              sub          s8, t4, tp
                  beq          s9, a0, 233f
                  addi         s11, s6, -1532
233:              or           a7, s8, s4
234:              xor          gp, t0, s11
                  addi         s6, a1, 470
                  blt          s10, a7, 251f
                  andi         a4, s11, -706
                  add          a2, s10, t0
                  andi         a1, a3, -1873
                  slti         sp, ra, -1332
                  or           s1, zero, t3
                  sltiu        a4, a5, 1806
                  andi         t6, t0, 1172
                  sll          a1, tp, a1
                  ori          s2, a1, 551
                  add          a4, t5, a7
                  ori          t1, t3, -1874
                  beq          s4, tp, 258f
                  ori          t5, s3, 1631
                  ori          a4, a2, -1575
251:              bltu         tp, s8, 265f
                  xori         s0, a5, 835
                  nop
                  slt          s5, a0, sp
                  xori         gp, s1, 1971
                  blt          sp, t0, 274f
                  ori          s4, zero, 1865
258:              slt          s1, a6, t2
                  slti         s11, a3, -1675
                  xori         t1, s1, -794
                  beq          sp, s4, 266f
                  slt          s1, s8, a0
                  bltu         t5, s3, 264f
264:              bgeu         tp, t5, 273f
265:              beq          t2, t6, 279f
266:              srai         s3, s5, 16
                  srl          t5, s6, s7
                  bge          t2, a0, 285f
                  add          a7, t2, zero
                  or           s9, t1, s8
                  srai         t6, a1, 27
                  srl          s5, s0, t1
273:              srli         a2, t0, 5
274:              nop
                  sra          a5, s1, s10
                  bge          t4, s4, 288f
                  auipc        sp, 712522
                  sltiu        s7, gp, -132
279:              srli         a1, a4, 4
                  lui          s9, 278612
                  add          sp, s3, t1
                  bltu         a1, t1, 284f
                  ori          a4, a7, -1738
284:              bne          a0, s10, 288f
285:              xori         s8, s8, -1409
                  srl          a4, t3, a6
                  sub          t0, a7, a5
288:              sll          s8, t5, t4
                  lw           a5, 4(t4)
                  srai         sp, s1, 7
                  lui          s4, 336574
                  addi         t4, t4, 56
                  ori          s5, s7, -1170
                  auipc        t0, 109639
                  srli         a2, a2, 18
                  auipc        s8, 433435
434:              addi x21, x15, 1
434:              jalr x21, x21, 0
sub_5:            sltiu        gp, a1, -493
                  slt          s6, a0, a3
                  blt          s8, t2, sub_5_stack_p
                  xor          a6, s10, s11
sub_5_stack_p:    addi         t4, t4, -64
                  sw           a5, 4(t4)
                  sra          t2, tp, a1
                  addi         s9, zero, -1 #init loop 1 counter
                  andi         sp, s11, -2044
                  and          sp, tp, s10
                  addi         a5, zero, -7 #init loop 1 limit
                  slli         t6, s8, 5
sub_5_6_1_t:      auipc        s0, 749954
                  addi         s9, s9, -6 #update loop 1 counter
                  sra          s7, t2, s8
                  addi         a6, zero, 6 #init loop 0 counter
                  lui          s11, 22097
                  sll          ra, s1, tp
                  lui          s7, 220977
                  srl          s5, s0, t3
                  addi         a7, zero, 1 #init loop 0 limit
sub_5_6_0_t:      nop
                  sub          t5, s8, t6
                  addi         a6, a6, -9 #update loop 0 counter
                  bge          a6, a7, sub_5_6_0_t #branch for loop 0
                  slli         t0, a0, 30
                  bne          s9, a5, sub_5_6_1_t #branch for loop 1
                  sll          t2, a0, s11
                  addi         s11, zero, -5 #init loop 1 counter
                  addi         s10, zero, 9 #init loop 1 limit
sub_5_1_1_t:      xori         a7, a5, 624
                  xor          s6, s10, a2
                  addi         s11, s11, 4 #update loop 1 counter
                  addi         a5, zero, 3 #init loop 0 counter
                  addi         s1, zero, -9 #init loop 0 limit
                  slli         t1, a4, 25
                  xori         s3, s1, -1469
sub_5_1_0_t:      slti         s4, tp, 1010
                  addi         a5, a5, -6 #update loop 0 counter
                  beq          a5, s1, sub_5_1_0_t #branch for loop 0
                  blt          s11, s10, sub_5_1_1_t #branch for loop 1
                  slli         s8, s2, 20
                  addi         ra, zero, -5 #init loop 1 counter
                  auipc        t1, 861731
                  addi         a7, zero, 20 #init loop 1 limit
sub_5_2_1_t:      auipc        a5, 166032
                  add          t2, a1, s11
                  addi         ra, ra, 3 #update loop 1 counter
                  addi         a4, zero, 7 #init loop 0 counter
                  addi         s7, zero, 7 #init loop 0 limit
sub_5_2_0_t:      addi         a2, t1, -964
                  addi         a4, a4, -6 #update loop 0 counter
                  bgeu         a4, s7, sub_5_2_0_t #branch for loop 0
                  bltu         ra, a7, sub_5_2_1_t #branch for loop 1
                  srai         s1, a7, 15
                  addi         a7, zero, 4 #init loop 0 counter
                  addi         s1, zero, 4 #init loop 0 limit
sub_5_7_0_t:      add          s3, a5, t5
                  addi         a7, a7, -3 #update loop 0 counter
                  bgeu         a7, s1, sub_5_7_0_t #branch for loop 0
                  srli         s10, s9, 16
                  addi         s8, zero, -4 #init loop 1 counter
                  xori         s0, a6, 1512
                  nop
                  addi         a6, zero, 14 #init loop 1 limit
                  slt          a2, t1, s7
                  and          s0, tp, a2
sub_5_8_1_t:      andi         s6, s6, -619
                  xor          zero, s2, s5
                  addi         s8, s8, 6 #update loop 1 counter
                  add          a3, a6, a2
                  ori          tp, a3, -319
                  sltu         s9, s9, s11
                  ori          a2, a2, 847
                  sub          s7, t3, t0
                  sltiu        s5, s9, -461
                  sltiu        tp, t4, -367
                  slli         t1, s9, 4
                  and          s7, a2, ra
                  slt          s6, a0, t5
                  sltiu        a5, a7, 1132
                  xori         t1, a7, 1416
                  or           s5, t2, t4
                  sll          s6, t2, s5
                  addi         s10, zero, 4 #init loop 0 counter
                  sll          s11, sp, zero
                  addi         a1, zero, 4 #init loop 0 limit
                  srli         s5, t3, 29
sub_5_8_0_t:      auipc        s6, 411027
                  addi         s10, s10, -2 #update loop 0 counter
                  nop
                  slli         s0, s1, 3
                  or           t5, a7, tp
                  bgeu         s10, a1, sub_5_8_0_t #branch for loop 0
                  bltu         s8, a6, sub_5_8_1_t #branch for loop 1
                  lui          t6, 591968
                  addi         s11, zero, -7 #init loop 0 counter
                  ori          sp, t0, 837
                  sltu         s4, s2, tp
                  slli         s2, s4, 18
                  addi         s0, t2, 990
                  or           s2, a5, s10
                  andi         s0, t4, -625
                  xor          t6, a7, s3
                  auipc        s2, 56222
                  addi         t1, zero, -12 #init loop 0 limit
                  and          a6, a5, a5
                  and          a6, a3, a6
                  andi         s9, s7, 368
                  add          a1, t1, s11
                  slt          t5, s9, s4
                  add          zero, t2, s6
sub_5_9_0_t:      nop
                  sltu         s5, t1, t6
                  addi         s11, s11, -5 #update loop 0 counter
                  ori          t2, gp, 1104
                  sll          s10, gp, t2
                  addi         s10, t2, -165
                  sll          tp, s8, s1
                  slli         t0, t0, 21
                  srl          s0, a0, t6
                  xor          s9, gp, a3
                  slli         s0, a0, 11
                  sltu         s7, zero, t5
                  bne          s11, t1, sub_5_9_0_t #branch for loop 0
                  nop
                  addi         a7, zero, 9 #init loop 1 counter
                  sltu         a4, tp, s4
                  srai         a4, s1, 27
                  addi         s2, zero, 10 #init loop 1 limit
sub_5_5_1_t:      auipc        s7, 709912
                  srli         a6, s11, 20
                  addi         a7, a7, 1 #update loop 1 counter
                  addi         a5, zero, 2 #init loop 0 counter
                  addi         s6, zero, 6 #init loop 0 limit
                  xor          s11, t1, s9
sub_5_5_0_t:      andi         s11, s7, -1499
                  sltu         a4, s10, s9
                  addi         a5, a5, 8 #update loop 0 counter
                  xori         s5, a2, -501
                  bltu         a5, s6, sub_5_5_0_t #branch for loop 0
                  xor          s5, sp, t0
                  sltu         s0, zero, t3
                  bltu         a7, s2, sub_5_5_1_t #branch for loop 1
                  lui          s5, 779229
                  bltu         t2, s0, 11f
                  and          a5, tp, s2
                  addi         a6, s6, 1153
                  or           a6, tp, t1
                  bge          a1, sp, 22f
                  xor          gp, t2, a3
                  srai         t0, t5, 7
                  nop
                  add          a1, tp, a3
                  slti         s2, s2, -957
                  sra          s9, a1, zero
11:               bne          t1, s3, 30f
                  nop
                  sra          t2, t5, s11
                  xor          a4, t1, zero
                  bgeu         t6, s8, 27f
                  bgeu         a7, s10, 17f
17:               or           a1, gp, a4
                  xori         sp, t2, -1466
                  sub          s11, t6, a3
                  sltiu        zero, s1, 257
                  srl          s0, a5, s6
22:               xor          s8, s7, t2
                  ori          gp, t0, 242
                  slti         a6, a7, 442
                  add          a3, s2, s10
                  sra          zero, tp, a5
27:               sra          a2, s3, a5
                  bge          s3, a5, 35f
                  ori          gp, a0, 1499
30:               bne          s9, t1, 35f
                  xori         a1, s1, 1279
                  slti         s9, t1, 876
                  add          a5, sp, s11
                  addi         s0, a2, 1984
35:               bge          s10, ra, 37f
                  slli         s6, gp, 12
37:               bgeu         t5, t3, 45f
                  addi         t2, s11, -1372
                  or           s3, s4, s4
                  beq          a0, s1, 47f
                  xori         t0, s8, -1874
                  addi         t1, s8, 34
                  srli         s8, zero, 12
                  bgeu         sp, s1, 55f
45:               or           t0, t0, t3
                  srl          s7, a5, s10
47:               lui          s2, 200671
                  bltu         a2, s3, 51f
                  bne          s0, a4, 69f
                  addi         a3, tp, -1588
51:               blt          gp, t2, 65f
                  lui          t0, 878025
                  bge          zero, a4, 66f
                  srai         s11, a4, 15
55:               blt          s3, t4, 56f
56:               slti         s2, a5, 1692
                  slt          a1, a2, s9
                  beq          s5, s6, 60f
                  or           t0, tp, s7
60:               srai         a6, ra, 5
                  slti         a7, s0, -1601
                  slti         ra, t1, -1115
                  slt          t6, s3, s7
                  addi         s11, s2, 1600
65:               slli         s1, tp, 28
66:               andi         s0, sp, 1139
                  ori          s8, t3, -1754
                  slt          t6, s1, s1
69:               bgeu         tp, s6, 85f
                  slli         a1, s0, 24
                  or           s9, ra, s2
                  bltu         zero, a6, 88f
                  sub          zero, t6, s10
                  nop
                  xor          t1, a7, s1
                  sll          s1, zero, a4
                  sub          ra, t0, gp
                  or           s3, gp, a6
                  lui          t0, 323523
                  blt          s10, t4, 92f
                  auipc        s11, 802905
                  addi         t5, a4, 305
                  slti         ra, s7, -1827
                  addi         s4, s6, 1952
85:               and          ra, s2, a3
                  sub          s11, zero, s6
                  auipc        s7, 878321
88:               sra          s8, s1, s3
                  sub          s9, t0, gp
                  auipc        t5, 763859
                  slt          s10, t1, a4
92:               add          s0, a6, t6
                  and          a3, s10, tp
                  slli         s10, s5, 7
                  bltu         a5, sp, 106f
                  and          a2, a7, a0
                  slt          t5, t2, t1
                  slti         sp, a5, -901
                  sub          a3, t2, t3
                  slt          t1, t6, t0
                  sub          s1, t5, zero
                  sub          tp, t2, a0
                  addi         s0, t3, -1017
                  andi         s9, t5, -139
                  nop
106:              sltu         t6, s11, t4
                  sll          a4, t2, a1
                  srai         s4, t6, 30
                  and          s4, sp, gp
                  sub          ra, t3, a1
                  srl          sp, tp, zero
                  sra          s8, a6, s0
                  andi         s6, t6, -1952
                  bne          t6, a5, 124f
                  or           s5, a1, a3
                  xor          s11, t3, zero
                  sra          s9, a6, s1
                  nop
                  bne          s3, a0, 129f
                  srai         s4, s1, 17
                  sltiu        sp, s2, 1349
                  sub          s8, s3, tp
                  bne          s5, s10, 134f
124:              beq          t3, a5, 137f
                  slli         t5, s8, 27
                  sltu         t5, s5, a5
                  beq          a7, a1, 130f
                  sltiu        s1, s5, 947
129:              xor          t1, a4, t5
130:              sltu         sp, t2, zero
                  beq          s3, s2, 143f
                  lui          s5, 966345
                  sub          t5, s5, s10
134:              andi         t5, t6, -1064
                  srai         sp, a0, 30
                  slli         s5, tp, 18
137:              srl          a2, s11, s5
                  sltu         s5, a7, s7
                  ori          s2, a5, 405
                  xori         s3, t2, 2018
                  blt          a4, a4, 151f
                  add          a3, sp, t1
143:              auipc        t5, 302009
                  or           a2, a4, s6
                  auipc        a7, 60044
                  andi         s0, s2, -1005
                  srai         t1, zero, 17
                  bgeu         zero, gp, 167f
                  srl          s10, s4, t3
                  ori          zero, gp, 423
151:              xori         s2, t0, 1862
                  beq          s2, s3, 156f
                  xori         s4, zero, 1274
                  xor          s9, s9, tp
                  xori         s10, a7, -1636
156:              sra          t0, a1, s3
                  and          s0, s4, t1
                  auipc        a4, 231880
                  ori          ra, t1, 1532
                  bgeu         s0, s11, 179f
                  addi         s8, a4, -26
                  or           s2, zero, s11
                  andi         s2, a5, 1802
                  bltu         a6, t6, 178f
                  sltiu        s10, zero, 1504
                  srl          s1, s5, a7
167:              blt          a0, s2, 187f
                  srai         s7, s4, 27
                  sltiu        a7, s5, -1495
                  bgeu         a4, sp, 177f
                  sltiu        zero, s10, -1594
                  blt          t1, ra, 173f
173:              xor          s0, a4, a5
                  lui          a3, 496337
                  addi         s8, s6, -1581
                  slt          s6, s0, s8
177:              sll          t0, a7, s0
178:              slti         a1, a3, -1827
179:              and          s11, t1, zero
                  sltiu        ra, t0, 1617
                  bne          s8, t5, 191f
                  auipc        a1, 533910
                  blt          tp, s10, 193f
                  srl          s5, tp, t5
                  srli         zero, a2, 17
                  slti         a2, s6, -853
187:              sub          zero, s7, a3
                  or           t5, t5, zero
                  srl          a1, s1, t3
                  slli         s4, s0, 16
191:              andi         s4, t3, 1273
                  srl          a1, s0, s5
193:              xor          a5, a3, s8
                  add          ra, a0, s8
                  slti         s8, tp, -1730
                  sltu         a7, t3, sp
                  xor          s5, s5, a7
                  bne          gp, s7, 201f
                  blt          s3, a4, 210f
                  sll          s1, s4, t1
201:              addi         zero, t6, 221
                  sub          a3, gp, a0
                  srl          a4, s6, sp
                  bltu         s10, a7, 211f
                  bge          s1, t2, 217f
                  sltiu        a5, ra, -899
                  bgeu         s3, s0, 225f
                  ori          s6, s7, -1266
                  xor          a3, a2, s2
210:              slti         s9, s4, 1718
211:              srli         a4, ra, 22
                  srai         t1, a3, 26
                  sra          s9, s3, t0
                  auipc        t1, 762720
                  srl          a5, s4, gp
                  sltiu        tp, gp, 1897
217:              andi         s10, a3, 1645
                  and          t5, sp, t5
                  sra          a2, s6, t3
                  bge          a5, a6, 223f
                  sltu         a2, a2, s1
                  sra          s8, a0, s6
223:              srai         tp, sp, 23
                  sra          s7, s6, s4
225:              bltu         a2, a4, 236f
                  srli         a7, t2, 2
                  srli         t1, t5, 6
                  auipc        s0, 889943
                  add          zero, t5, s7
                  bne          a4, a2, 234f
                  sll          s8, s2, t6
                  slt          s1, ra, zero
                  bge          s11, gp, 235f
234:              sll          tp, a1, s11
235:              and          t0, t6, a1
236:              sub          s7, s9, sp
                  bne          a2, t0, 245f
                  xor          t0, s6, s1
                  sltiu        s3, a1, 1503
                  srai         a3, a0, 0
                  sltiu        s6, t2, -1799
                  nop
                  add          s4, a1, t1
                  sltiu        s1, a0, 6
245:              bgeu         s4, s10, 246f
246:              sltiu        s6, tp, 757
                  slt          t2, s4, a3
                  or           t5, a3, a6
                  lui          ra, 687807
                  xori         a7, s7, 336
                  srl          a1, s2, ra
                  nop
                  andi         s4, s8, 358
                  or           tp, a1, ra
                  xori         ra, t0, 1588
                  sltiu        s11, sp, -1083
                  sub          s9, s8, a5
                  sltiu        t5, a7, 1735
                  xori         s1, t3, 1470
                  sra          s11, a7, s10
                  slti         a5, tp, -1270
                  srl          s7, s0, s0
                  and          a5, t0, s4
                  bne          s7, a6, 275f
                  blt          sp, t3, 267f
                  bgeu         t0, a1, 277f
267:              blt          s5, s4, 277f
                  srli         s11, s4, 28
                  xori         s8, t2, 337
                  blt          s9, a3, 283f
                  auipc        t1, 661617
                  bltu         a7, s6, 284f
                  slti         ra, a7, 203
                  blt          s5, s2, 286f
275:              and          a2, t3, gp
                  addi         t1, zero, 8 #init loop 1 counter
                  addi         a6, zero, 8 #init loop 1 limit
sub_5_4_1_t:      or           gp, s3, gp
                  addi         t1, t1, -7 #update loop 1 counter
                  addi         sp, zero, 10 #init loop 0 counter
                  addi         t2, zero, 8 #init loop 0 limit
sub_5_4_0_t:      sub          a7, a3, s2
                  addi         s3, a4, -256
                  addi         sp, sp, -2 #update loop 0 counter
                  bgeu         sp, t2, sub_5_4_0_t #branch for loop 0
                  bgeu         t1, a6, sub_5_4_1_t #branch for loop 1
                  slti         a1, t3, -717
                  or           t0, s4, a1
277:              xor          zero, s5, s6
                  ori          t5, s5, -1405
                  xor          zero, s5, a2
                  or           a3, a3, s6
                  add          gp, s2, s3
                  slt          s0, s7, s10
283:              lui          a7, 942120
284:              xori         tp, t0, -1702
                  slli         s3, s5, 4
286:              beq          a2, s3, 299f
                  slt          tp, t2, tp
                  srai         a1, t4, 28
                  slli         s6, s7, 19
                  xor          s8, s7, s8
                  sltiu        t2, t2, -1456
                  ori          s4, a0, 743
                  slli         s3, sp, 23
                  srai         a7, s1, 17
                  sltiu        gp, ra, -1134
                  srai         ra, tp, 25
                  blt          gp, a4, 313f
                  sltiu        s4, s10, 1888
299:              addi         s7, s3, -541
                  and          s4, ra, tp
                  srli         zero, t6, 11
                  bne          a0, s7, 318f
                  lui          a2, 249929
                  sra          ra, t6, a7
                  bne          a5, t3, 310f
                  slt          a3, gp, a0
                  bge          sp, a4, 326f
                  sll          s2, t6, t1
                  blt          a2, a5, 314f
310:              andi         a6, t5, -378
                  srli         s9, zero, 23
                  slli         a2, s11, 7
313:              sll          a4, s7, s8
314:              ori          s10, s2, 106
                  blt          t3, t6, 326f
                  bgeu         s0, s7, 326f
                  ori          t0, a1, 1783
318:              blt          a5, s4, 320f
                  sra          a4, a7, t3
320:              ori          s9, gp, -1687
                  slti         zero, ra, 1570
                  bltu         s0, s8, 323f
323:              sltiu        s7, s8, -1020
                  slli         s10, s11, 29
                  bne          a2, a5, 329f
326:              sltu         s4, zero, sp
                  srli         s6, s11, 19
                  add          s1, s3, s0
329:              add          tp, s6, gp
                  srli         a5, a3, 19
                  and          a2, s9, t3
                  sll          s1, zero, a5
                  slt          ra, a1, t5
                  blt          s3, s10, 353f
                  nop
                  srai         s8, a5, 25
                  or           a5, a5, tp
                  slt          t5, s9, s2
                  sltu         s5, t0, t4
                  srl          s7, s11, a2
                  auipc        tp, 175589
                  sll          a5, s8, t0
                  ori          t1, a0, 1472
                  or           s4, t5, t4
                  beq          a6, s0, 352f
                  addi         a3, tp, -1033
                  sll          zero, s6, s0
                  blt          s9, t2, 356f
                  srli         s1, t1, 9
                  or           zero, s2, t4
                  sltiu        s3, zero, -1053
352:              slti         s9, a1, 974
353:              xori         s9, s6, -1884
                  xor          tp, s10, s10
                  add          t1, a5, s6
356:              andi         t6, t0, 529
                  sltu         s10, s10, zero
                  bltu         s7, t0, 370f
                  bgeu         a1, a5, 362f
                  and          a4, s7, s4
                  auipc        a2, 248269
362:              auipc        t5, 962141
                  bltu         s1, s9, 376f
                  ori          s6, s1, -1330
                  addi         sp, t2, 897
                  srl          zero, a4, a7
                  slti         s7, a3, 424
                  beq          t3, s9, 387f
                  bgeu         a0, s5, 382f
370:              sll          gp, a7, s1
                  bltu         t1, t1, 381f
                  srl          s8, s7, a5
                  srli         s4, a6, 21
                  nop
                  srai         s6, s3, 16
376:              addi         a1, s6, -19
                  srli         s3, tp, 13
                  xori         s6, t4, 1204
                  blt          s2, s5, 393f
                  beq          s8, t5, 392f
381:              sltu         s2, a6, s1
382:              bge          a6, s0, 393f
                  auipc        s9, 107684
                  slti         s10, t4, 1613
                  auipc        zero, 267172
                  slli         t5, s9, 6
387:              addi         s5, a2, -1295
                  add          s11, a1, ra
                  srai         s8, s5, 15
                  andi         s10, t0, -599
                  addi         t2, s2, 786
392:              ori          s9, a1, -373
393:              xor          a7, ra, s6
                  addi         zero, s11, 298
                  srai         s8, tp, 12
                  srl          a6, s3, t2
                  lui          s6, 397007
                  bne          s5, zero, 410f
                  xori         s5, s9, -112
                  auipc        s10, 252467
                  andi         a7, ra, 1136
                  auipc        s7, 138550
                  sll          a2, t1, a6
                  xor          a6, t3, a6
                  beq          a0, t4, 416f
                  xor          s9, a0, s3
                  beq          gp, s1, 427f
                  srai         s1, s0, 10
                  srl          s10, a3, s4
410:              and          a5, a1, a0
                  ori          s11, s11, 709
                  ori          t5, t1, -1026
                  sll          s4, s6, a3
                  bne          a3, t2, 430f
                  bne          a3, a7, 416f
416:              srli         a1, s8, 27
                  slli         s10, a0, 7
                  slt          zero, a5, s11
                  sub          sp, s8, s11
                  blt          s0, s1, 427f
                  bgeu         gp, a1, 431f
                  andi         t1, t2, -882
                  add          s2, a5, s7
                  sltiu        s11, s2, -1047
                  bgeu         tp, s8, 427f
                  bgeu         gp, zero, 444f
427:              slti         a3, gp, 365
                  slli         s1, s10, 25
                  xor          s10, s4, t0
430:              addi         a6, a4, -889
431:              xor          s3, t1, t6
                  sltu         s8, s10, s7
                  slti         s6, zero, 699
                  andi         t6, s11, -1046
                  sra          t6, t6, a3
                  sra          s2, a3, gp
                  srli         a5, t6, 20
                  slli         a6, s8, 3
                  bltu         s11, sp, 442f
                  slti         t5, s11, -259
                  or           s7, s10, t3
442:              bltu         t1, a7, 458f
                  and          t0, t3, t1
444:              bgeu         sp, s0, 455f
                  lui          a4, 827026
                  bgeu         a1, t6, 448f
                  slti         a4, a0, -1999
448:              bge          a5, a6, 451f
                  lui          gp, 271894
                  srai         a3, s4, 11
451:              slli         s2, tp, 15
                  nop
                  bge          t6, t4, 464f
                  srl          s10, s8, a5
455:              sltiu        t2, t3, 513
                  lui          s1, 52355
                  bne          a2, s9, 464f
458:              xor          t6, t3, s2
                  srl          a5, s2, s3
                  or           t5, zero, s11
                  beq          a7, a2, 462f
462:              sub          s5, sp, t3
                  sra          a1, s11, a6
464:              sll          s1, ra, s0
                  slli         ra, t1, 28
                  auipc        t2, 539957
                  bltu         s2, ra, 478f
                  bge          s3, s6, 479f
                  bgeu         t3, s0, 476f
                  nop
                  srai         s8, gp, 16
                  srl          a2, a2, s3
                  slt          tp, s0, t3
                  sra          a1, s2, s6
                  xor          s9, s3, a5
476:              auipc        s8, 882549
                  sra          a4, tp, s11
478:              slti         gp, tp, -361
479:              ori          t0, a1, 789
                  bne          s11, a5, 482f
                  sll          zero, s8, a5
482:              xori         s7, t6, -1489
                  nop
                  xori         sp, zero, 186
                  or           a6, s11, t2
                  and          s10, ra, gp
                  blt          sp, a2, 499f
                  andi         s1, tp, -452
                  addi         a4, s5, -1464
                  addi         zero, a0, -338
                  sub          s11, tp, a2
                  andi         a5, t5, 85
                  slli         t5, a7, 11
                  nop
                  auipc        t5, 73602
                  srai         a3, a1, 3
                  nop
                  add          a2, ra, a2
499:              srai         s5, t3, 24
                  srai         s11, s9, 22
                  addi         s3, t6, 300
                  bgeu         a7, s10, 512f
                  sltu         t6, a3, t1
                  addi         t1, zero, 2 #init loop 0 counter
                  sltu         s0, s7, s8
                  add          t2, s5, s3
                  slt          s4, t6, t5
                  xori         s9, t0, 1284
                  srli         tp, a6, 8
                  auipc        s5, 41926
                  or           a1, t1, a5
                  srai         sp, sp, 25
                  or           t6, s8, a7
                  slli         a3, s4, 0
                  addi         a2, zero, 4 #init loop 0 limit
                  srai         s4, t1, 31
                  xori         s11, s10, -2028
sub_5_3_0_t:      slti         s7, t2, 750
                  xor          s1, t1, a3
                  addi         t1, t1, 10 #update loop 0 counter
                  and          t6, t0, t4
                  blt          t1, a2, sub_5_3_0_t #branch for loop 0
                  srai         s3, t2, 31
                  or           a6, t4, s4
                  addi         gp, zero, 0 #init loop 0 counter
                  and          a4, s9, s3
                  sub          s8, gp, s9
                  addi         ra, zero, 13 #init loop 0 limit
                  and          tp, t4, t5
                  srl          s7, a2, tp
sub_5_0_0_t:      xor          a7, s2, s9
                  addi         gp, gp, 10 #update loop 0 counter
                  and          t5, s6, s10
                  and          t5, a7, s4
                  add          s8, gp, a3
                  add          a3, s7, ra
                  blt          gp, ra, sub_5_0_0_t #branch for loop 0
                  or           a6, a7, t4
                  xori         t6, s8, 1626
                  slli         a5, s9, 18
                  and          s7, ra, tp
                  andi         t0, a0, -963
                  bne          s11, s11, 522f
                  lui          s3, 894603
                  bltu         s3, s7, 525f
512:              addi         s7, a4, 1590
                  srli         s8, t3, 10
                  bgeu         t3, s3, 530f
                  sltiu        a7, a6, -1868
                  lui          s10, 821998
                  srl          s0, tp, zero
                  srl          t0, s1, a3
                  bltu         sp, a0, 533f
                  sra          t0, a4, s9
                  srli         s1, a6, 17
522:              srai         t2, t2, 25
                  nop
                  ori          t0, t0, -273
525:              bltu         tp, a1, 533f
                  add          a3, tp, a3
                  xori         s10, tp, -609
                  or           s1, s5, s3
                  or           s10, t3, zero
530:              srli         a5, sp, 1
                  srl          tp, s0, s5
                  add          s7, a0, s6
533:              srai         s5, a0, 30
                  lw           a5, 4(t4)
                  xor          a3, s5, a6
                  addi         t4, t4, 64
                  slti         t6, t4, 1084
                  slt          tp, t4, s1
                  addi         sp, t2, 1775
731:              addi x26, x15, 1
731:              jalr x26, x26, 0
sub_4:            bgeu         tp, s11, sub_4_stack_p
                  xori         t0, ra, -1655
sub_4_stack_p:    addi         t4, t4, -16
                  and          s9, a5, s11
                  andi         ra, s4, 668
                  xor          ra, t2, s4
                  sw           a5, 4(t4)
                  slti         gp, a1, -1548
                  srl          gp, s11, ra
                  nop
                  slt          t5, s0, s10
                  add          s3, s3, s0
                  addi         t1, zero, 3 #init loop 0 counter
                  sltiu        a1, a7, -1080
                  and          gp, s5, s4
                  sltu         a7, s9, tp
                  lui          a1, 862565
                  or           a2, s4, a2
                  srai         a3, a2, 0
                  slt          a5, s1, a0
                  andi         ra, gp, 287
                  sltu         s3, a3, s6
                  and          a2, a0, a3
                  and          s3, s6, a1
                  ori          zero, t0, 626
                  add          a5, a3, t0
                  sltiu        t0, t1, 783
                  nop
                  addi         s6, zero, 9 #init loop 0 limit
                  slli         s8, s0, 2
sub_4_0_0_t:      lui          s8, 562125
                  slti         s2, s1, 1291
                  srai         s4, a3, 29
                  sub          sp, s9, ra
                  andi         t6, a1, -174
                  or           s4, t5, s6
                  addi         t1, t1, 1 #update loop 0 counter
                  srai         ra, s9, 23
                  sra          a6, t6, s2
                  srl          a1, sp, a7
                  bne          t1, s6, sub_4_0_0_t #branch for loop 0
                  xor          s10, s6, s0
                  addi         t2, zero, 7 #init loop 0 counter
                  slti         a4, sp, 1482
                  andi         ra, s1, -1246
                  sll          a1, a3, a2
                  or           a3, s6, sp
                  lui          ra, 406179
                  sub          s9, a4, s4
                  xori         s7, a1, -632
                  sub          a4, s0, gp
                  sll          s4, s4, t4
                  add          t6, a4, t2
                  addi         s1, zero, 16 #init loop 0 limit
                  nop
                  slli         gp, ra, 16
                  add          a7, gp, a6
                  slli         s2, t5, 26
                  lui          a2, 644207
                  lui          s11, 373322
                  slt          s6, a2, a6
sub_4_1_0_t:      xor          a4, a6, s2
                  and          t1, t2, s7
                  addi         t2, t2, 9 #update loop 0 counter
                  addi         s5, t1, 415
                  sltu         ra, a1, t6
                  sltu         sp, a0, s2
                  lui          s8, 468302
                  srl          t0, s9, s2
                  bne          t2, s1, sub_4_1_0_t #branch for loop 0
                  add          t5, gp, t4
                  addi         t5, zero, 10 #init loop 0 counter
                  nop
                  add          ra, a1, t6
                  and          s2, ra, s6
                  addi         s1, zero, 7 #init loop 0 limit
sub_4_9_0_t:      sltiu        a6, t0, -2007
                  sll          s10, s9, a2
                  addi         t5, t5, -2 #update loop 0 counter
                  srai         a7, a6, 23
                  sltiu        s7, a7, -1777
                  srli         a7, t0, 8
                  srai         a1, s3, 16
                  slt          ra, t2, tp
                  or           zero, sp, s1
                  srl          s4, s1, t5
                  slt          a5, t6, tp
                  addi         s5, t2, -829
                  bgeu         t5, s1, sub_4_9_0_t #branch for loop 0
                  or           s10, s10, a5
                  addi         s9, zero, 7 #init loop 0 counter
                  sub          a2, a5, s6
                  srl          s10, t0, t0
                  ori          t1, t3, -1386
                  ori          a3, sp, -476
                  lui          t2, 760822
                  addi         s1, s11, 224
                  slti         s4, a6, 1016
                  sltu         t0, s0, s9
                  slti         gp, t5, -1972
                  add          s2, tp, zero
                  addi         tp, zero, -19 #init loop 0 limit
                  srl          t1, tp, t0
                  andi         t0, ra, -726
sub_4_4_0_t:      sub          s7, tp, s7
                  lui          t6, 938651
                  slt          t0, t5, ra
                  addi         s9, s9, -10 #update loop 0 counter
                  xor          sp, sp, s8
                  bge          s9, tp, sub_4_4_0_t #branch for loop 0
                  sub          s4, a3, a5
                  addi         a3, zero, -4 #init loop 0 counter
                  sra          t0, gp, s0
                  srli         s10, t2, 19
                  sltu         s9, s0, s5
                  addi         a4, zero, 15 #init loop 0 limit
                  add          sp, s5, s10
                  slt          s9, t4, t2
sub_4_10_0_t:     andi         s1, a6, 1209
                  lui          s11, 458710
                  addi         a3, a3, 8 #update loop 0 counter
                  ori          s10, t0, 373
                  srai         t2, s4, 5
                  blt          a3, a4, sub_4_10_0_t #branch for loop 0
                  sub          s10, s11, gp
                  addi         tp, zero, 7 #init loop 1 counter
                  addi         t0, zero, 9 #init loop 1 limit
                  nop
sub_4_7_1_t:      nop
                  addi         tp, tp, 10 #update loop 1 counter
                  slli         t6, t1, 15
                  addi         ra, zero, -9 #init loop 0 counter
                  andi         a4, s6, -1086
                  addi         s2, zero, 18 #init loop 0 limit
sub_4_7_0_t:      lui          a7, 55032
                  sltu         s4, t4, t3
                  or           t6, s11, sp
                  addi         ra, ra, 8 #update loop 0 counter
                  xori         t6, tp, 759
                  auipc        t1, 616288
                  bltu         ra, s2, sub_4_7_0_t #branch for loop 0
                  bltu         tp, t0, sub_4_7_1_t #branch for loop 1
                  ori          s10, s1, 1155
                  addi         s8, zero, 2 #init loop 1 counter
                  addi         sp, zero, 14 #init loop 1 limit
sub_4_6_1_t:      xori         s5, t1, -410
                  addi         s8, s8, 4 #update loop 1 counter
                  addi         t2, zero, 10 #init loop 0 counter
                  or           gp, s8, t2
                  addi         a7, zero, 18 #init loop 0 limit
sub_4_6_0_t:      lui          tp, 540254
                  addi         t2, t2, 8 #update loop 0 counter
                  slt          s2, s10, s4
                  bne          t2, a7, sub_4_6_0_t #branch for loop 0
                  bne          s8, sp, sub_4_6_1_t #branch for loop 1
                  auipc        zero, 927148
                  addi         t5, zero, 7 #init loop 0 counter
                  nop
                  andi         sp, s9, 56
                  slli         a5, t5, 9
                  sltu         s1, ra, t2
                  xor          s6, s6, t5
                  addi         ra, zero, 19 #init loop 0 limit
                  sll          s11, s0, a0
                  sll          a7, a3, ra
                  sub          s3, t3, s0
sub_4_3_0_t:      slt          t6, tp, s2
                  sltu         t6, a7, s6
                  sltiu        a1, s4, -1048
                  sub          s2, t3, s5
                  srli         s9, s5, 27
                  srai         s1, t6, 13
                  ori          tp, gp, 3
                  nop
                  sll          s10, t6, s0
                  sltu         t1, t6, t5
                  srl          s10, a5, s6
                  addi         t2, t3, -1403
                  addi         t5, t5, 4 #update loop 0 counter
                  sltiu        s11, s10, 553
                  slti         t0, a5, -1764
                  sub          zero, a6, t4
                  sltiu        a6, t3, 1875
                  blt          t5, ra, sub_4_3_0_t #branch for loop 0
                  slli         t1, a1, 21
                  addi         s1, zero, 5 #init loop 0 counter
                  slti         a5, s4, -1423
                  nop
                  slti         s0, t1, -1869
                  addi         a1, zero, 19 #init loop 0 limit
                  add          s6, s6, s7
sub_4_5_0_t:      add          a4, zero, sp
                  ori          t5, t0, 815
                  addi         s1, s1, 4 #update loop 0 counter
                  add          a6, a4, a6
                  srl          s5, tp, s9
                  andi         tp, t3, -1817
                  bltu         s1, a1, sub_4_5_0_t #branch for loop 0
                  sltu         tp, s7, a4
                  addi         s10, zero, -5 #init loop 0 counter
                  auipc        s3, 334991
                  sltiu        tp, t4, -1568
                  srl          s6, s2, s8
                  and          s3, a3, ra
                  addi         s11, zero, 11 #init loop 0 limit
                  sltu         sp, tp, t3
                  sltu         a6, t5, s1
                  slli         a7, a5, 23
                  nop
                  and          t1, t2, s2
                  or           s1, s3, t3
                  sll          gp, s1, a1
sub_4_2_0_t:      xor          s8, t6, a5
                  sltu         a1, a7, gp
                  addi         s10, s10, 6 #update loop 0 counter
                  sltiu        s6, s11, -1103
                  lui          s1, 765119
                  or           t0, a7, s5
                  blt          s10, s11, sub_4_2_0_t #branch for loop 0
                  xori         s9, s11, -1269
                  beq          a0, t3, 16f
                  and          t2, s7, a2
                  ori          s8, ra, -1829
                  srli         s6, a2, 15
                  or           s9, t5, s8
                  slti         t5, t6, -358
                  nop
                  bltu         s6, t5, 22f
                  slli         zero, zero, 6
                  srl          s8, a0, s2
                  xori         a5, s5, 751
                  srl          ra, s5, a6
                  sltiu        s4, t1, -406
                  bltu         s10, zero, 28f
                  sra          a5, t0, t5
                  addi         s9, s3, -885
16:               srai         gp, t1, 16
                  ori          a6, a3, -1633
                  bne          a6, t0, 29f
                  sub          s3, s3, t6
                  auipc        a3, 620578
                  nop
22:               slli         a7, t6, 24
                  sll          s5, a4, s3
                  ori          a7, s7, -406
                  sltu         s11, zero, a7
                  sll          s11, a6, s10
                  bge          s4, t4, 33f
28:               xor          s10, a7, gp
29:               add          sp, a1, t6
                  add          s3, s7, s4
                  and          tp, s10, a0
                  slt          t6, s1, s3
33:               srl          t5, a5, t0
                  sra          s10, t5, tp
                  sub          s10, a4, t0
                  slti         t2, zero, 1685
                  sub          zero, t4, s4
                  xori         t2, t2, -1848
                  slli         a1, s9, 31
                  bge          a0, s8, 57f
                  xor          s2, a4, s5
                  sra          s4, ra, a4
                  sra          t2, s11, t1
                  andi         a5, a1, 1056
                  or           gp, a2, t0
                  srai         s0, a1, 21
                  nop
                  andi         zero, s9, -268
                  bge          a3, a0, 56f
                  lui          tp, 276853
                  bge          s3, t4, 57f
                  add          sp, s5, s7
                  ori          s1, a5, -1928
                  srai         a2, a1, 27
                  addi         tp, ra, 1663
56:               srli         t6, a3, 27
57:               or           t0, a0, s3
                  sltu         s5, a3, s0
                  srli         a7, ra, 28
                  srl          gp, s8, t5
                  bltu         a7, zero, 74f
                  bgeu         s8, sp, 82f
                  slti         s5, s4, 1885
                  add          s0, ra, s3
                  bgeu         a0, a2, 77f
                  blt          t5, s1, 82f
                  or           gp, tp, t1
                  ori          t2, t4, -104
                  sltiu        s4, sp, 2043
                  slt          s10, s4, s9
                  sub          s7, ra, a6
                  xor          tp, t2, a7
                  srai         ra, s5, 27
74:               slti         s10, s1, 490
                  sltu         a3, sp, s11
                  add          t0, t1, tp
77:               lui          a5, 638307
                  beq          s1, ra, 86f
                  or           gp, s3, s10
                  nop
                  xori         s10, s0, -242
82:               and          s1, s9, a4
                  and          a2, gp, s5
                  beq          s11, sp, 100f
                  slti         s4, a7, -478
86:               ori          zero, a7, -25
                  sra          tp, s8, s4
                  bge          a4, t4, 104f
                  sub          gp, s0, a7
                  auipc        t6, 810194
                  addi         a7, zero, -1 #init loop 1 counter
                  nop
                  addi         s1, zero, -9 #init loop 1 limit
sub_4_8_1_t:      sub          s5, zero, s5
                  addi         a7, a7, -9 #update loop 1 counter
                  addi         s8, zero, -1 #init loop 0 counter
                  sub          a1, a5, t3
                  auipc        s11, 999140
                  srli         tp, t0, 15
                  addi         ra, zero, -2 #init loop 0 limit
                  auipc        gp, 1007353
                  sltiu        a3, a2, -736
sub_4_8_0_t:      lui          t6, 737591
                  slti         a2, s3, 1005
                  sltiu        s5, zero, -853
                  andi         gp, a1, 375
                  auipc        t0, 589068
                  auipc        a2, 75065
                  addi         s8, s8, -5 #update loop 0 counter
                  slli         a5, t1, 11
                  or           zero, a3, gp
                  bge          s8, ra, sub_4_8_0_t #branch for loop 0
                  xor          a3, t0, t1
                  bge          a7, s1, sub_4_8_1_t #branch for loop 1
                  ori          t0, a7, -226
                  sub          a2, s11, s5
                  xori         s6, t5, -1737
                  beq          t1, a2, 101f
                  bge          s3, a3, 98f
                  slt          t6, t4, sp
                  auipc        t0, 320300
                  addi         a5, a0, -691
98:               sltiu        s2, ra, 701
                  andi         a7, s8, 671
100:              ori          t2, s4, 598
101:              sltiu        s2, a7, 1818
                  sub          t6, zero, a0
                  sub          s11, tp, a0
104:              srli         a3, t6, 25
                  sll          s2, gp, s8
                  slti         s7, a1, 441
                  srai         a7, s7, 7
                  sltu         t2, a3, a4
                  srli         a6, s9, 2
                  bltu         ra, s11, 121f
                  bltu         a2, zero, 129f
                  andi         s8, s8, 318
                  bge          a3, s9, 121f
                  sub          s10, s2, a6
                  sltu         a2, s9, t2
                  slti         a1, a3, -27
                  bge          s4, zero, 129f
                  sltu         t6, s8, t6
                  lui          t2, 61773
                  or           t5, t5, a7
121:              or           a4, ra, s0
                  sub          ra, s9, gp
                  bge          a4, t6, 133f
                  srl          tp, s7, s7
                  add          a4, s3, gp
                  sltu         s6, t5, t0
                  bge          a6, s3, 144f
                  sll          a7, s9, s7
129:              andi         t2, sp, -1894
                  auipc        gp, 97235
                  sra          s8, t0, a4
                  sll          s3, a0, t6
133:              srai         s9, zero, 12
                  slt          a3, a1, t3
                  slti         s7, t4, 396
                  sra          t1, t3, s5
                  bge          s0, t1, 154f
                  slti         tp, a5, 1798
                  srli         a6, t3, 15
                  sll          s9, a3, a0
                  bltu         s7, sp, 144f
                  beq          s10, s3, 154f
                  andi         a7, t5, 1006
144:              ori          t1, s10, -1940
                  sub          zero, t2, s11
                  bltu         a6, t3, 161f
                  nop
                  bgeu         sp, t0, 164f
                  slli         s3, s0, 29
                  srl          s8, zero, t6
                  xor          sp, t3, a0
                  auipc        t6, 613965
                  and          s11, ra, s0
154:              sltiu        s8, t1, -68
                  sltu         a1, s3, a4
                  or           t2, s9, s8
                  srai         s5, sp, 14
                  andi         a6, t3, 239
                  srl          s2, s7, t1
                  sra          s6, a3, t1
161:              sltiu        s0, a1, 1985
                  xori         zero, gp, 240
                  blt          sp, t1, 175f
164:              or           s3, t1, t6
                  slt          t5, s1, a1
                  sll          t6, s3, s8
                  or           s11, s2, sp
                  or           a3, a1, s9
                  addi         a2, a1, 1415
                  sub          a7, s7, s10
                  slli         s0, t5, 21
                  srl          a6, a1, s11
                  xor          sp, s6, s2
                  xori         s4, a4, 629
175:              sltiu        t5, t6, 785
                  beq          a4, t0, 192f
                  beq          s3, t3, 184f
                  ori          t1, a6, -434
                  and          a3, s2, zero
                  and          a4, ra, s11
                  sub          s2, a3, a7
                  sll          a2, s3, a1
                  addi         s3, s4, 1213
184:              and          s5, ra, t5
                  bne          s8, s9, 202f
                  bge          s4, s4, 202f
                  xor          gp, t3, tp
                  srli         a4, s10, 8
                  srl          t5, zero, t4
                  sll          s0, s10, s8
                  slli         a7, a4, 22
192:              bgeu         a1, s11, 196f
                  bge          t5, zero, 206f
                  bne          s4, t2, 202f
                  bge          a3, a4, 215f
196:              bltu         a6, t4, 211f
                  sra          a5, s9, a4
                  bge          a6, a5, 206f
                  sub          a7, a6, tp
                  xor          s7, s6, s6
                  lui          a7, 353460
202:              sub          s1, a5, sp
                  addi         s5, a0, 1444
                  add          a7, s2, a7
                  bne          t6, s5, 221f
206:              xor          zero, tp, a2
                  sltu         s8, sp, s6
                  and          gp, zero, zero
                  srl          s4, t6, s0
                  addi         s1, s5, 375
211:              addi         t6, a7, -1787
                  bgeu         tp, s11, 224f
                  sltu         tp, s10, a0
                  srli         t0, s0, 0
215:              blt          t2, t2, 232f
                  sltiu        tp, gp, -1602
                  add          s5, a5, a4
                  bge          a2, s3, 221f
                  slt          s11, zero, s3
                  bltu         sp, a2, 236f
221:              slti         s10, s2, 507
                  sltu         sp, t0, t3
                  and          s6, s9, a3
224:              srli         s1, t1, 21
                  add          tp, a6, a5
                  sltiu        zero, t1, -788
                  bne          s10, t5, 242f
                  xori         ra, s4, 319
                  bltu         t6, ra, 245f
                  nop
                  sll          t1, a0, s4
232:              andi         s4, a3, 1479
                  sub          tp, ra, a1
                  andi         s11, a0, -404
                  lui          a5, 721489
236:              auipc        sp, 868965
                  sltu         s6, a0, t3
                  nop
                  srli         a7, t5, 12
                  nop
                  srli         a6, t4, 30
242:              sltu         t2, sp, s11
                  andi         s9, s10, -132
                  lui          t6, 828042
245:              add          a3, sp, s3
                  lui          a7, 776930
                  blt          a2, s1, 259f
                  lui          s8, 877303
                  srai         a5, s11, 29
                  blt          s9, s3, 256f
                  slli         s5, t4, 26
                  srli         s5, t3, 0
                  sltiu        sp, s9, 549
                  srai         t5, t3, 12
                  slt          t0, a3, t5
256:              bge          t2, s9, 272f
                  add          a1, a0, tp
                  bge          t0, t4, 269f
259:              bltu         s7, t5, 277f
                  srli         a3, s9, 10
                  xori         t6, t6, 1093
                  srli         s7, ra, 0
                  lui          tp, 163713
                  srli         s4, t4, 5
                  sltu         s0, a5, a7
                  xor          a4, a5, s10
                  sub          s8, a1, tp
                  or           s6, ra, s1
269:              andi         s4, s11, -845
                  xor          t1, a3, tp
                  nop
272:              bgeu         t5, t0, 278f
                  addi         t1, t1, -372
                  beq          a7, a6, 282f
                  srai         gp, t0, 28
                  sra          s5, s4, s1
277:              bgeu         a0, tp, 294f
278:              slli         t5, t3, 29
                  auipc        t5, 26398
                  beq          a3, t5, 292f
                  srli         s7, s7, 4
282:              bne          t1, a6, 293f
                  xor          s2, s2, t3
                  ori          a6, gp, -1332
                  bgeu         gp, s10, 301f
                  or           s2, a1, t5
                  srl          t5, t3, s5
                  slt          s11, a4, gp
                  xori         s6, t3, -636
                  srl          tp, t0, a1
                  sll          s8, t2, s2
292:              add          gp, s10, a6
293:              add          t5, s9, t4
294:              beq          t1, a7, 309f
                  auipc        a3, 261250
                  srli         ra, sp, 15
                  blt          gp, s4, 309f
                  sra          a6, t6, s3
                  and          a4, s6, s10
                  sub          s9, a4, t0
301:              srl          t0, sp, gp
                  sub          t6, s2, t3
                  beq          t0, a4, 313f
                  xori         sp, t4, -1861
                  auipc        s6, 900597
                  addi         a4, s11, 620
                  bltu         t5, ra, 322f
                  bltu         s4, t6, 320f
309:              ori          t5, t2, -750
                  beq          a1, t3, 313f
                  nop
                  bgeu         s6, a3, 318f
313:              xori         s2, s7, -821
                  sltu         zero, s10, t0
                  nop
                  srai         zero, s8, 18
                  slli         s11, t4, 30
318:              nop
                  slt          zero, s10, s7
320:              bne          t2, s10, 330f
                  srai         ra, zero, 20
322:              beq          s0, s10, 334f
                  xori         a6, a3, -1312
                  sll          s3, s8, gp
                  bne          ra, s6, 332f
                  sra          ra, s11, a7
                  nop
                  sra          a6, s4, s5
                  slti         ra, s8, 1761
330:              addi         sp, a2, 1112
                  nop
332:              bne          s5, s2, 348f
                  bne          s9, s7, 350f
334:              xor          sp, s4, sp
                  srl          a4, s2, a5
                  beq          t6, a0, 352f
                  srli         s9, s10, 29
                  auipc        zero, 15921
                  bltu         sp, tp, 347f
                  srl          t5, s0, a4
                  srl          zero, a2, a5
                  andi         s3, a5, 1347
                  sll          t0, s8, a7
                  auipc        s6, 244020
                  sltiu        tp, s10, 1463
                  slti         tp, s0, -1810
347:              beq          a3, gp, 362f
348:              bgeu         a1, a5, 352f
                  slt          s10, a0, s10
350:              srli         ra, t2, 6
                  xori         a7, s0, 662
352:              xori         a6, s0, 1972
                  add          s11, s2, s6
                  addi         sp, ra, -1281
                  add          t2, t4, t2
                  auipc        s2, 988334
                  addi         t1, a3, 312
                  sltu         a3, a0, a7
                  bltu         zero, t2, 371f
                  add          ra, s2, a5
                  sub          zero, zero, s3
362:              xori         a7, s8, 1400
                  srl          a6, t3, a4
                  or           s5, t5, s10
                  nop
                  bne          tp, gp, 377f
                  sltu         a2, a4, s3
                  slli         s9, tp, 17
                  bgeu         sp, t2, 387f
                  lui          s3, 712738
371:              blt          a5, a3, 388f
                  auipc        s7, 137639
                  srl          t0, a3, s5
                  sltiu        s1, a2, -170
                  xori         s10, t3, -1734
                  srl          sp, s5, a3
377:              sll          t6, a1, a7
                  bge          a4, s5, 391f
                  sub          gp, s0, t5
                  srai         sp, s11, 13
                  nop
                  bge          s2, zero, 402f
                  sra          a7, t1, zero
                  add          a4, a2, s3
                  bgeu         s9, t0, 401f
                  nop
387:              sltu         a5, s11, zero
388:              beq          t1, a5, 399f
                  sub          s8, a6, t1
                  sll          t5, a0, ra
391:              nop
                  add          t1, a5, a5
                  xor          a1, t6, sp
                  nop
                  srai         s3, a0, 5
                  and          a7, t5, s10
                  addi         s0, a7, -569
                  sra          s6, a5, a7
399:              auipc        t6, 123104
                  and          zero, a6, t0
401:              auipc        s6, 1014441
402:              bgeu         t3, zero, 418f
                  bgeu         t5, s5, 411f
                  add          a4, s3, a6
                  blt          s8, s7, 422f
                  or           a7, s2, a4
                  xori         s2, t0, 556
                  srli         a4, s5, 19
                  lui          s11, 1030183
                  auipc        t1, 85870
411:              srai         a6, t6, 2
                  lui          s4, 278138
                  bne          a7, s8, 429f
                  xor          a5, s5, a3
                  bltu         s9, a2, 427f
                  xor          t6, s11, sp
                  bgeu         s8, tp, 432f
418:              or           a1, t1, a0
                  srai         s1, tp, 16
                  sltiu        ra, s0, -832
                  nop
422:              xori         ra, tp, 1024
                  srli         s4, a2, 22
                  or           s3, a7, t4
                  bltu         a6, s0, 433f
                  ori          t1, a1, 1366
427:              bltu         zero, a0, 433f
                  xori         t0, s0, -1634
429:              xori         a7, sp, 1728
                  lui          tp, 9156
                  beq          a2, sp, 447f
432:              andi         t6, t4, 488
433:              srli         t6, t6, 16
                  nop
                  slli         s5, s4, 17
                  srl          ra, t3, ra
                  bltu         a7, s6, 453f
                  beq          a4, t5, 449f
                  slti         s8, a3, 1342
                  sltu         t2, a7, a7
                  ori          s4, s3, 1385
                  andi         a6, s10, -734
                  blt          s1, s2, 455f
                  sll          s6, s6, t2
                  srl          a2, t2, t4
                  ori          a2, a5, 1868
447:              bne          s10, zero, 464f
                  srai         s9, a7, 17
449:              lui          s6, 100224
                  sltiu        tp, s5, -55
                  andi         a5, s11, -33
                  bltu         a5, s8, 467f
453:              slli         sp, s7, 26
                  ori          t2, s3, -777
455:              add          tp, s10, s7
                  sltiu        a3, a1, 603
                  bge          a2, s1, 463f
                  lui          s10, 973145
                  srai         gp, a5, 19
                  srl          s4, a4, t5
                  xori         a3, sp, -2028
                  sltu         a7, a4, ra
463:              bgeu         a3, s4, 481f
464:              slt          a6, a5, s2
                  sub          t6, a4, a2
                  srai         t5, a0, 15
467:              bge          a1, a4, 483f
                  srai         a4, gp, 4
                  bltu         t0, ra, 485f
                  srl          gp, s3, t1
                  auipc        s8, 400579
                  bgeu         a6, a5, 479f
                  xor          a3, a0, s6
                  sra          s1, s0, s0
                  and          a2, t5, s7
                  beq          ra, t1, 480f
                  bne          a0, t5, 489f
                  slli         a1, ra, 26
479:              xor          s7, a5, a3
480:              slti         t2, s6, -475
481:              bltu         t4, a5, 489f
                  bne          a0, ra, 497f
483:              slti         s0, s5, -811
                  blt          t5, s4, 497f
485:              srl          a7, a4, gp
                  srai         s0, gp, 28
                  bgeu         a2, a3, 498f
                  srl          gp, tp, ra
489:              and          ra, a0, t6
                  bne          s0, t4, 506f
                  sub          a1, tp, t5
                  slt          a4, s0, a4
                  srl          a7, gp, t4
                  bltu         s2, t6, 509f
                  slti         a6, t1, 671
                  srl          a4, tp, t5
497:              beq          s6, zero, 500f
498:              bltu         tp, a4, 510f
                  srli         s11, s3, 27
500:              sra          s11, a2, s4
                  addi         t2, s9, -509
                  srl          zero, s6, t6
                  srai         s0, s7, 1
                  xori         s7, s8, -1946
                  xor          gp, s1, a6
506:              slti         t6, a5, 1193
                  or           s1, gp, s1
                  sll          s4, s2, s6
509:              slti         zero, t4, -901
510:              sll          t1, ra, a0
                  auipc        s10, 605723
                  andi         s3, t1, 609
                  lui          a1, 585635
                  slli         t1, a3, 2
                  blt          t0, s1, 525f
                  sltiu        t5, t2, 459
                  addi         s2, sp, -915
                  bgeu         t4, a6, 530f
                  blt          a3, s4, 525f
                  sltu         a3, s6, sp
                  sra          t6, s4, s6
                  bgeu         t0, s1, 542f
                  and          t2, s10, s9
                  xor          t2, t2, s11
525:              slli         t6, a5, 21
                  andi         s4, t5, -703
                  beq          s5, a5, 544f
                  bne          s10, s4, 544f
                  xor          a3, s6, sp
530:              bgeu         a2, a4, 547f
                  srli         s0, s9, 20
                  slti         zero, sp, -143
                  bltu         tp, s8, 541f
                  lui          s4, 110834
                  srli         s9, tp, 18
                  srl          t6, a0, zero
                  bgeu         sp, s0, 545f
                  sra          t1, s1, t6
                  bltu         a7, a6, 549f
                  bgeu         tp, a7, 549f
541:              sub          ra, s5, a5
542:              slli         s10, a1, 10
                  xor          a6, s6, t5
544:              bgeu         t5, a2, 549f
545:              lui          s6, 603499
                  sltiu        s8, a0, 1535
547:              beq          s11, a3, 549f
                  lui          s0, 746240
549:              addi         a5, a4, -173
                  or           t1, s6, t6
                  lw           a5, 4(t4)
                  slli         s0, s7, 0
                  sra          s7, tp, s10
                  sra          s1, s5, zero
                  sll          t6, t3, s10
                  addi         t4, t4, 16
                  slt          a6, s2, s0
                  slti         t0, t0, -1360
                  addi         zero, a3, -938
                  add          t5, tp, s0
                  srli         sp, t1, 17
807:              addi x24, x15, 1
807:              jalr x24, x24, 0
sub_1:            sra          t2, s8, a0
                  addi         t4, t4, -52
                  sw           a5, 4(t4)
                  nop
                  srli         zero, s5, 8
                  sltu         s5, s6, zero
                  srl          s9, s1, s6
                  srli         t6, a1, 1
                  andi         a3, a7, -794
                  slt          s3, s0, t6
                  srli         s11, s10, 9
                  sub          a5, gp, zero
                  sub          tp, s9, s4
                  srl          t6, s11, s0
                  add          a2, sp, t3
                  srli         a5, s11, 18
                  xori         a3, s11, 1152
                  xor          t5, t1, t4
                  slli         t2, s7, 2
sub_1_j3:         jal          a5, sub_3 #jump sub_1 -> sub_3
                  addi         t2, zero, 6 #init loop 1 counter
                  slti         a4, a2, -8
                  lui          t0, 669843
                  srl          ra, s5, sp
                  auipc        ra, 1027088
                  addi         t6, zero, -8 #init loop 1 limit
                  and          s10, a2, a7
                  sub          zero, t6, a0
sub_1_0_1_t:      sub          s1, s6, a6
                  slt          a5, s0, a1
                  nop
                  addi         t2, t2, -7 #update loop 1 counter
                  auipc        s10, 461757
                  addi         s11, zero, -1 #init loop 0 counter
                  andi         s10, a1, -1860
                  addi         s2, zero, -5 #init loop 0 limit
                  add          tp, ra, a2
                  slt          t1, a6, t2
                  sra          a3, s8, s11
                  srl          a1, s2, t5
                  nop
                  auipc        s3, 537001
sub_1_0_0_t:      lui          t5, 854834
                  addi         s11, s11, -7 #update loop 0 counter
                  slti         t0, a1, 1192
                  ori          a2, a0, 661
                  bge          s11, s2, sub_1_0_0_t #branch for loop 0
                  sltiu        zero, ra, -922
                  or           s3, t6, t6
                  slti         zero, a5, 887
                  sltu         a4, s5, s0
                  slt          sp, a2, s5
                  auipc        s9, 883367
                  bne          t2, t6, sub_1_0_1_t #branch for loop 1
                  auipc        s7, 675255
                  addi         a2, zero, 3 #init loop 0 counter
                  srli         sp, s8, 14
                  sltiu        t0, t3, -1076
                  sll          t2, s11, a7
                  addi         s10, zero, 18 #init loop 0 limit
                  xor          tp, t5, a1
                  or           s3, s8, s9
sub_1_1_0_t:      xori         s11, s8, 622
                  lui          s2, 841774
                  sll          t1, a1, s10
                  slt          ra, t3, sp
                  srli         s7, t1, 6
                  ori          s7, gp, -1132
                  addi         a2, a2, 4 #update loop 0 counter
                  blt          a2, s10, sub_1_1_0_t #branch for loop 0
                  addi         s8, t1, -1420
                  and          t1, s7, s9
                  bge          t4, ra, 9f
                  bge          a4, a3, 17f
                  andi         s3, ra, -475
                  addi         s11, gp, -595
                  nop
                  bge          t3, t2, 17f
                  add          t2, ra, t5
                  xor          s3, s8, zero
9:                sub          s3, s6, s9
                  sltiu        a7, a0, -562
                  sll          s4, s9, t1
                  add          t0, sp, gp
                  srli         a7, s8, 8
                  blt          a3, s8, 20f
                  sra          t1, t5, a5
                  srli         ra, s1, 14
17:               srli         s1, zero, 9
                  srai         a5, zero, 14
                  slt          t5, a1, t2
20:               xor          t2, a4, s8
                  ori          t6, a0, -229
                  bge          a0, gp, 26f
                  bgeu         t3, a5, 41f
                  xori         s9, s6, 1221
                  slt          s6, s8, a5
26:               slti         t0, t6, 409
                  srli         s3, ra, 31
                  or           a7, t6, t3
                  add          a3, a1, s2
                  or           a6, s4, s1
                  addi         t1, a6, -530
                  srli         s4, a6, 0
                  sub          t6, t0, a0
                  add          a3, t4, zero
                  xori         s2, t6, 1982
                  blt          t0, sp, 45f
                  xori         s2, t3, 1289
                  addi         sp, zero, -9 #init loop 1 counter
                  sub          s6, s8, a3
                  addi         s2, zero, 12 #init loop 1 limit
sub_1_2_1_t:      sltiu        a5, a7, 1358
                  srl          ra, s1, s1
                  addi         sp, sp, 6 #update loop 1 counter
                  and          a2, a6, s8
                  xor          a4, a6, s6
                  addi         a3, zero, -3 #init loop 0 counter
                  addi         s0, zero, 16 #init loop 0 limit
                  and          s6, s5, s10
                  lui          s9, 286252
sub_1_2_0_t:      sltiu        a2, gp, 1559
                  or           a2, a6, t6
                  addi         a3, a3, 2 #update loop 0 counter
                  sra          gp, t2, a7
                  bltu         a3, s0, sub_1_2_0_t #branch for loop 0
                  sltiu        s1, s9, -1845
                  bltu         sp, s2, sub_1_2_1_t #branch for loop 1
                  slt          gp, s10, a6
                  blt          s11, s6, 48f
                  slti         s7, s11, -1284
                  and          a6, t2, s5
41:               ori          a6, sp, -137
                  srai         s0, a4, 7
                  sltu         sp, a4, s7
                  addi         t6, zero, -733
45:               srli         a7, s3, 4
                  sub          s11, t6, sp
                  slli         ra, s4, 7
48:               nop
                  sltiu        t2, t4, 55
                  xor          t0, a1, t1
                  slli         s8, s7, 0
                  nop
                  sra          s7, a5, tp
                  andi         t0, t3, 826
                  ori          t1, s4, 1872
                  auipc        t5, 41640
                  slt          ra, s3, s8
                  ori          s7, a5, -1999
                  auipc        a7, 957562
                  slt          s1, s1, zero
                  bltu         a1, s11, 79f
                  slli         t6, t3, 15
                  srai         a7, s5, 17
                  sltiu        a7, ra, 17
                  bne          t1, t5, 80f
                  beq          a4, t0, 70f
                  or           a4, s7, s1
                  beq          t5, t2, 75f
                  xori         s2, s4, 1578
70:               addi         zero, gp, 1272
                  add          s0, a4, a4
                  xor          ra, zero, t5
                  srai         a4, t3, 15
                  srai         s1, a2, 6
75:               bge          zero, sp, 94f
                  slli         tp, t3, 20
                  auipc        t6, 482087
                  bgeu         s9, a2, 94f
79:               bge          s10, sp, 87f
80:               add          s3, s6, s0
                  sll          a5, s5, s1
                  sra          s4, t2, s0
                  slt          a1, a2, a7
                  bgeu         a7, a7, 93f
                  srl          s6, t5, s6
                  or           zero, a0, a7
87:               add          zero, s5, a5
                  bltu         a3, s7, 105f
                  sub          ra, t3, a7
                  nop
                  addi         t1, s10, 1760
                  sub          sp, t1, s0
93:               nop
94:               add          sp, s10, sp
                  sub          t6, a1, zero
                  or           s8, t3, s10
                  sltiu        gp, zero, 1941
                  addi         a5, s5, -417
                  sll          a3, t1, a6
                  srai         t1, t3, 14
                  lui          s0, 1027231
                  srai         s8, gp, 4
                  or           s6, a4, s3
                  slti         a1, a2, 1564
105:              sub          s7, t5, zero
                  and          t1, t4, tp
                  sra          zero, a1, s10
                  auipc        s3, 932115
                  bne          s4, s4, 123f
                  add          s2, t3, s2
                  srl          a1, s11, s0
                  slti         a7, s11, 1851
                  bge          t1, a7, 120f
                  blt          s7, s8, 129f
                  bgeu         a3, s11, 134f
                  bne          s6, s2, 135f
                  auipc        a1, 56753
                  bge          s9, t0, 126f
                  bge          s8, s4, 132f
120:              srai         s1, t6, 17
                  addi         s1, s4, -655
                  auipc        s1, 199142
123:              blt          s10, sp, 124f
124:              bge          t3, t1, 126f
                  srai         t6, s10, 2
126:              lui          t5, 978395
                  slti         a7, a5, 1537
                  bltu         a4, a5, 146f
129:              blt          s11, a0, 141f
                  srai         s7, s11, 3
                  nop
132:              and          s6, s6, a5
                  slli         a4, s0, 18
134:              bgeu         t2, a0, 148f
135:              and          s0, s11, t6
                  xori         tp, s5, -1547
                  xor          sp, ra, s1
                  xor          s1, a3, s2
                  slti         s9, sp, -507
                  bgeu         ra, a6, 159f
141:              srai         sp, t4, 12
                  sltu         s7, t4, ra
                  srai         s10, a4, 16
                  addi         gp, s5, -1333
                  sll          s2, a3, sp
146:              andi         t1, a4, -1360
                  nop
148:              bne          s2, a7, 165f
                  sub          a5, s1, tp
                  bltu         t5, a6, 159f
                  auipc        s5, 123795
                  slti         ra, s4, -1737
                  slti         ra, t2, 28
                  bltu         t3, t0, 161f
                  blt          s0, a1, 166f
                  ori          t2, s10, 185
                  and          t1, s9, zero
                  xori         a4, sp, -1691
159:              bgeu         s4, a0, 178f
                  bltu         s5, s11, 176f
161:              andi         t5, t0, 581
                  srl          s6, t6, a3
                  bgeu         a7, a7, 171f
                  andi         a5, t2, 742
165:              auipc        t6, 435570
166:              bne          s0, s11, 181f
                  sltu         s1, s11, a2
                  sll          t6, s1, t1
                  srai         s5, s2, 22
                  slti         t2, gp, 1151
171:              srl          a6, a7, sp
                  xor          a6, a6, s10
                  ori          t6, a2, 2021
                  sltu         s5, a2, s7
                  slt          s1, s0, s10
176:              srl          s11, a4, a3
                  bltu         t2, a4, 194f
178:              or           t1, gp, zero
                  sltu         a6, a1, t3
                  sll          s4, s4, a0
181:              bltu         a0, a5, 194f
                  slt          tp, s8, s2
                  addi         s3, a1, -277
                  srli         t2, gp, 11
                  auipc        t2, 187240
                  slti         s7, gp, 1433
                  or           s2, s11, ra
                  ori          a1, zero, 1217
                  bge          sp, s4, 194f
                  sltiu        s5, a4, -1470
                  xor          zero, s10, t1
                  bgeu         a4, s1, 194f
                  lui          a3, 700169
194:              sub          s11, t6, t3
                  srl          a3, s3, t0
                  slti         ra, s5, -677
                  srl          s8, t6, t5
                  lw           a5, 4(t4)
                  xor          s2, s1, s3
                  nop
                  nop
                  auipc        s1, 665592
                  xor          s6, t0, s8
                  addi         t4, t4, 52
                  and          s11, t6, t4
297:              addi x7, x15, 0
297:              jalr x7, x7, 0
sub_3:            bge          t1, s5, sub_3_stack_p
                  sll          a2, ra, gp
sub_3_stack_p:    addi         t4, t4, -20
                  sw           a5, 4(t4)
                  add          s10, sp, s1
                  addi         s3, s6, 919
                  and          gp, t0, s3
                  la           a4, sub_5
                  slti         s7, tp, 1893
                  sub          s9, t1, s4
                  xori         t0, t6, -964
                  addi         a4, a4, -190
                  auipc        s5, 588928
                  bne          s0, s11, sub_3_j5 #branch to jump instr
                  xor          s9, s6, s1
sub_3_j5:         jalr         a5, a4, 191 #jump sub_3 -> sub_5
                  addi         a2, s9, -1508
                  la           gp, sub_4
                  xori         a4, tp, 1457
                  addi         gp, gp, -114
                  slti         s7, s3, -704
                  slli         t0, s6, 22
                  srl          sp, s3, s5
                  sltu         s0, s10, t0
                  slt          tp, a5, s1
sub_3_j6:         jalr         a5, gp, 114 #jump sub_3 -> sub_4
                  addi         s1, zero, -1 #init loop 0 counter
                  xori         s4, t3, -9
                  addi         s0, zero, 18 #init loop 0 limit
                  or           a5, a1, t4
                  sll          s3, s10, a2
sub_3_0_0_t:      and          s2, ra, a6
                  slt          s11, t2, a6
                  srai         s9, sp, 16
                  and          s11, ra, a2
                  addi         s1, s1, 5 #update loop 0 counter
                  ori          s11, s5, 1527
                  xori         sp, s4, 1988
                  slti         s9, s11, -1690
                  sltu         t2, s0, t4
                  nop
                  blt          s1, s0, sub_3_0_0_t #branch for loop 0
                  srl          zero, t4, a1
                  addi         sp, a3, 829
                  bltu         a2, s6, 19f
                  or           s6, a5, a1
                  sub          s9, a0, t3
                  srai         zero, s6, 21
                  ori          sp, t2, 92
                  srl          t2, a4, t5
                  addi         a6, s5, 1476
                  slti         s0, s6, -32
                  beq          t0, ra, 15f
                  addi         zero, s9, -1041
                  or           s1, t5, a3
                  bgeu         t2, t4, 25f
                  or           tp, a7, s7
                  ori          s10, a1, -1529
15:               ori          s5, s0, 720
                  addi         a5, s10, -527
                  bne          s6, s7, 32f
                  addi         t6, a4, -1998
19:               or           s0, a7, s4
                  addi         a3, s3, 1411
                  sltiu        t1, a2, 1553
                  bge          a1, s1, 32f
                  nop
                  bltu         zero, s11, 38f
25:               sltu         s6, s5, a1
                  lui          a6, 261345
                  slt          a1, zero, s1
                  slti         zero, s6, 1421
                  sll          s1, s2, s2
                  sltu         a2, a0, tp
                  lui          sp, 693854
32:               blt          a4, gp, 38f
                  bge          t6, t6, 35f
                  and          sp, s2, s5
35:               bgeu         a3, zero, 45f
                  nop
                  auipc        s1, 703824
38:               srl          a3, t4, a7
                  sra          a6, a6, a6
                  sll          a2, ra, a3
                  sltu         ra, s7, a7
                  xori         a4, s9, -1936
                  or           s6, a4, s5
                  bgeu         a6, s11, 53f
45:               bne          t1, t2, 58f
                  bltu         tp, a5, 48f
                  slli         a3, s5, 6
48:               ori          zero, s10, 422
                  auipc        t1, 238132
                  auipc        s1, 605643
                  sltu         a4, s1, t2
                  beq          a5, s10, 61f
53:               beq          s1, s10, 72f
                  sltiu        s10, s0, -1287
                  slti         s10, t1, 1334
                  add          s0, t5, s0
                  xor          a3, gp, a6
58:               sltu         t0, tp, a6
                  srai         s1, s11, 20
                  sra          s10, s2, t4
61:               srl          t1, s7, t6
                  srai         t5, s5, 29
                  beq          s7, s0, 81f
                  xor          s9, s11, t2
                  slt          t6, tp, s10
                  blt          s2, a3, 82f
                  srl          s7, s5, s7
                  srli         t2, s6, 1
                  sltiu        t5, gp, -1122
                  auipc        t5, 33213
                  xori         s2, s9, 1100
72:               bltu         s6, a6, 89f
                  beq          s5, a2, 79f
                  lui          ra, 671123
                  ori          s8, gp, -957
                  sll          sp, a3, tp
                  andi         t0, a3, -1908
                  slli         a6, sp, 16
79:               ori          t2, s11, 8
                  slti         t2, a1, -529
81:               xor          gp, t4, a7
82:               or           s9, zero, a3
                  xori         sp, s6, -1851
                  add          tp, a2, s6
                  slt          ra, t1, s10
                  lui          s9, 610762
                  blt          zero, a0, 91f
                  bltu         a7, s0, 91f
89:               xor          s1, tp, t0
                  sub          s9, s3, zero
91:               slt          s2, t4, zero
                  ori          a4, s2, 1670
                  slli         s9, a0, 23
                  nop
                  sub          t0, gp, s10
                  lw           a5, 4(t4)
                  and          a1, a7, s10
                  addi         t4, t4, 20
                  andi         s1, a4, 551
                  slt          s7, s9, tp
144:              addi x2, x15, 0
144:              jalr x2, x2, 0
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
                  add x10, x29, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x10, x29, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x10, x29, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x10, x29, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x10, x29, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x10, x29, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x10, x29, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x10, x29, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x10, x29, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x10, x29, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x10, x29, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x10, x29, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x10, x29, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x10, x29, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x10, x29, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x10, x29, zero
                  csrr x30, 0x341 # MEPC
                  csrr x30, 0x342 # MCAUSE
                  li x20, 0x3 # BREAKPOINT
                  beq x30, x20, ebreak_handler
                  li x20, 0x8 # ECALL_UMODE
                  beq x30, x20, ecall_handler
                  li x20, 0x9 # ECALL_SMODE
                  beq x30, x20, ecall_handler
                  li x20, 0xb # ECALL_MMODE
                  beq x30, x20, ecall_handler
                  li x20, 0x1
                  beq x30, x20, instr_fault_handler
                  li x20, 0x5
                  beq x30, x20, load_fault_handler
                  li x20, 0x7
                  beq x30, x20, store_fault_handler
                  li x20, 0xc
                  beq x30, x20, pt_fault_handler
                  li x20, 0xd
                  beq x30, x20, pt_fault_handler
                  li x20, 0xf
                  beq x30, x20, pt_fault_handler
                  li x20, 0x2 # ILLEGAL_INSTRUCTION
                  beq x30, x20, illegal_instr_handler
                  csrr x20, 0x343 # MTVAL
                  1: la x28, test_done
                  jalr x1, x28, 0

ecall_handler:    
                  la x30, _start
                  sw x0, 0(x30)
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  la x28, write_tohost
                  jalr x0, x28, 0

instr_fault_handler:
                  add x29, x10, zero
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
                  add x29, x10, zero
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
                  add x29, x10, zero
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
                  csrr  x30, 0x341
                  addi  x30, x30, 4
                  csrw  0x341, x30
                  add x29, x10, zero
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
                  csrr  x30, 0x341
                  addi  x30, x30, 4
                  csrw  0x341, x30
                  add x29, x10, zero
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
                  csrr  x30, 0x300 # MSTATUS;
                  csrr  x30, 0x304 # MIE;
                  csrr  x30, 0x344 # MIP;
                  csrrc x30, 0x344, x30 # MIP;
                  add x29, x10, zero
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
