.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x25, h0_start
jalr x0, x25, 0
h0_start:
                  li x10, 0x40000100
                  csrw 0x301, x10
kernel_sp:        
                  la x13, kernel_stack_end

trap_vec_init:    
                  la x10, mtvec_handler
                  ori x10, x10, 1
                  csrw 0x305, x10 # MTVEC

mepc_setup:       
                  la x10, init
                  csrw 0x341, x10

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x10, 0x1800
                  csrw 0x300, x10 # MSTATUS
                  mret
init:             
                  li x0, 0x59f8809d
                  li x1, 0x324173c8
                  li x2, 0xfd2863a2
                  li x3, 0xb
                  li x4, 0x80000000
                  li x5, 0xfd7a6ac0
                  li x6, 0x0
                  li x7, 0x0
                  li x8, 0xf271900b
                  li x9, 0x5
                  li x10, 0x0
                  li x12, 0xf903f7c6
                  li x14, 0x9
                  li x15, 0xe
                  li x16, 0xf
                  li x17, 0xf409c97a
                  li x18, 0x0
                  li x19, 0xfe58e4b4
                  li x20, 0xa
                  li x21, 0xfd3aa9fe
                  li x22, 0xf6762e17
                  li x23, 0xfc823d08
                  li x24, 0x0
                  li x25, 0xf5253614
                  li x26, 0x80000000
                  li x27, 0x80000000
                  li x28, 0x232ed01c
                  li x29, 0x1511483d
                  li x30, 0x80000000
                  li x31, 0xfd181994
                  la x11, user_stack_end
main:             addi         s0, zero, 1 #init loop 0 counter
                  add          s8, s3, t0
                  sltiu        tp, a7, 1854
                  add          s8, a0, s5
                  andi         s4, s11, 1865
                  auipc        sp, 573114
                  addi         a2, zero, 15 #init loop 0 limit
                  slti         s8, a7, 1330
                  nop
                  xor          s1, s9, a7
                  lui          a4, 172354
main_5_0_t:       auipc        t6, 962047
                  addi         s0, s0, 7 #update loop 0 counter
                  andi         t3, a0, -1919
                  xor          zero, s1, a3
                  srli         s8, t5, 12
                  blt          s0, a2, main_5_0_t #branch for loop 0
                  addi         ra, ra, 1389
                  addi         t6, zero, 0 #init loop 1 counter
                  addi         t1, zero, 8 #init loop 1 limit
                  sll          ra, t2, s7
main_3_1_t:       sub          s10, s1, a3
                  addi         t6, t6, 8 #update loop 1 counter
                  addi         a0, zero, 6 #init loop 0 counter
                  addi         t3, zero, -18 #init loop 0 limit
main_3_0_t:       andi         a5, s2, -428
                  addi         a0, a0, -4 #update loop 0 counter
                  beq          a0, t3, main_3_0_t #branch for loop 0
                  beq          t6, t1, main_3_1_t #branch for loop 1
                  slli         a6, ra, 13
                  addi         t2, zero, -9 #init loop 1 counter
                  slti         s3, s2, -597
                  addi         a7, zero, 14 #init loop 1 limit
main_1_1_t:       add          zero, s5, tp
                  sltu         s7, s5, s9
                  addi         t2, t2, 10 #update loop 1 counter
                  addi         t5, zero, 10 #init loop 0 counter
                  xor          t0, a6, a7
                  sll          s0, a6, s6
                  add          zero, s7, tp
                  addi         sp, zero, 16 #init loop 0 limit
                  auipc        s3, 705934
                  ori          s2, a1, -1589
main_1_0_t:       slti         s7, s7, 1692
                  srl          t0, s1, a4
                  nop
                  xor          t1, zero, s10
                  add          s6, tp, a6
                  addi         t5, t5, 5 #update loop 0 counter
                  addi         a0, zero, -849
                  bltu         t5, sp, main_1_0_t #branch for loop 0
                  bltu         t2, a7, main_1_1_t #branch for loop 1
                  andi         s11, t2, 1923
                  addi         a7, zero, -6 #init loop 0 counter
                  sub          t3, t4, s6
                  auipc        s4, 165340
                  lui          a6, 767978
                  addi         t6, zero, -15 #init loop 0 limit
                  addi         sp, s8, 1418
                  addi         tp, s7, 1164
                  srai         a5, s2, 23
main_8_0_t:       lui          sp, 436127
                  srli         zero, ra, 3
                  slti         s6, a7, 2015
                  addi         a7, a7, -9 #update loop 0 counter
                  beq          a7, t6, main_8_0_t #branch for loop 0
                  addi         s7, s0, -1067
                  addi         ra, zero, 5 #init loop 1 counter
                  xor          a7, a0, ra
                  addi         s3, zero, 11 #init loop 1 limit
                  lui          s7, 424825
main_10_1_t:      or           a6, s3, t5
                  srl          s6, s1, a5
                  sll          t6, s10, s11
                  add          a6, tp, a1
                  addi         ra, ra, 3 #update loop 1 counter
                  or           s7, a0, s11
                  addi         s11, zero, 2 #init loop 0 counter
                  andi         t0, s11, 577
                  lui          s7, 562633
                  add          a7, a1, a4
                  addi         a0, zero, 3 #init loop 0 limit
                  slti         a7, a2, -848
main_10_0_t:      and          zero, s3, s6
                  srl          t2, a3, gp
                  addi         s11, s11, 2 #update loop 0 counter
                  auipc        a6, 891458
                  sll          s2, s7, s9
                  sra          s4, t0, zero
                  slli         gp, s4, 3
                  blt          s11, a0, main_10_0_t #branch for loop 0
                  srai         s1, tp, 28
                  slli         t4, s1, 12
                  bne          ra, s3, main_10_1_t #branch for loop 1
                  auipc        s4, 192658
                  addi         tp, zero, 0 #init loop 1 counter
                  slt          t1, s4, t2
                  addi         t6, gp, 1141
                  slt          s8, gp, s6
                  nop
                  srl          s6, s8, s2
                  andi         s1, ra, 1034
                  addi         s7, zero, 5 #init loop 1 limit
                  andi         t3, a5, -131
main_0_1_t:       andi         t4, t2, 1110
                  xori         s5, ra, -999
                  and          ra, a2, t3
                  srai         t3, a7, 24
                  sll          a0, t5, s11
                  lui          t4, 622603
                  addi         tp, tp, 5 #update loop 1 counter
                  or           zero, t1, s4
                  lui          s4, 599864
                  addi         t2, zero, 7 #init loop 0 counter
                  add          s0, a3, s10
                  addi         s3, zero, 13 #init loop 0 limit
                  xor          a4, t1, a5
main_0_0_t:       ori          t4, t5, 933
                  addi         t2, t2, 6 #update loop 0 counter
                  bne          t2, s3, main_0_0_t #branch for loop 0
                  bne          tp, s7, main_0_1_t #branch for loop 1
                  slli         t4, s11, 20
                  addi         a0, zero, -7 #init loop 0 counter
                  xor          s2, s6, s6
                  xori         a2, t6, -1856
                  addi         s8, zero, 14 #init loop 0 limit
                  srai         s10, s2, 30
                  andi         a6, a6, 425
                  sub          t4, a0, a6
                  srl          zero, s5, t6
main_6_0_t:       nop
                  sltu         ra, s8, s0
                  slli         t3, s11, 18
                  srl          t5, a7, t6
                  slli         s4, a2, 6
                  srai         t6, t1, 2
                  srl          s5, s4, a3
                  addi         a0, a0, 4 #update loop 0 counter
                  ori          gp, s4, 1978
                  slt          a4, s0, a7
                  addi         s10, s5, -446
                  bltu         a0, s8, main_6_0_t #branch for loop 0
                  slti         a6, s4, 396
                  addi         t4, zero, 2 #init loop 1 counter
                  slti         sp, a0, -1491
                  addi         s2, zero, 3 #init loop 1 limit
main_2_1_t:       sltu         s7, a6, t2
                  or           t5, t0, s0
                  addi         t4, t4, 6 #update loop 1 counter
                  slti         a4, tp, 1735
                  srl          s4, a4, sp
                  xori         s7, s5, -748
                  addi         s3, zero, 10 #init loop 0 counter
                  sub          s10, t5, tp
                  addi         s0, zero, 8 #init loop 0 limit
main_2_0_t:       addi         zero, s5, -1917
                  andi         s7, s0, -1000
                  slti         a2, a2, 39
                  addi         s3, s3, -5 #update loop 0 counter
                  ori          s1, t0, -1784
                  nop
                  bgeu         s3, s0, main_2_0_t #branch for loop 0
                  blt          t4, s2, main_2_1_t #branch for loop 1
                  or           s4, s8, s11
                  addi         tp, zero, 8 #init loop 0 counter
                  addi         s6, zero, 8 #init loop 0 limit
                  sltu         s8, ra, t3
main_4_0_t:       xor          t1, ra, a1
                  sub          a5, tp, s7
                  sltiu        a0, t2, 1885
                  add          s7, s11, a3
                  sra          a2, a0, a3
                  xor          s2, sp, a7
                  srl          s3, s7, s6
                  and          t0, s1, s10
                  addi         tp, tp, -7 #update loop 0 counter
                  nop
                  sltiu        t5, a5, -1188
                  or           gp, s5, s7
                  andi         ra, s1, -520
                  slli         gp, a0, 30
                  and          s1, t3, s0
                  bgeu         tp, s6, main_4_0_t #branch for loop 0
                  sll          s1, gp, s11
                  slli         s11, t4, 20
                  srl          t2, s11, t1
                  slt          s1, s1, s10
                  srl          t6, s3, a7
                  sltu         t5, a6, s8
                  slt          a5, s8, a2
                  bltu         a0, t4, 13f
                  sra          a0, ra, s6
                  slli         zero, sp, 20
                  srli         a2, t0, 12
                  lui          t3, 321683
                  beq          s9, a6, 13f
                  addi         a2, s8, 1786
13:               auipc        s2, 788002
                  srl          t5, a6, a6
                  andi         t2, s5, -546
                  bge          t6, zero, 26f
                  bgeu         t6, s4, 19f
                  and          ra, a2, tp
19:               bge          a0, s1, 30f
                  nop
                  srai         t2, a1, 0
                  sll          t3, s8, a7
                  sub          a4, t0, s2
                  auipc        s0, 397474
                  sll          sp, tp, t3
26:               bge          a1, t1, 44f
                  srl          a5, a3, s9
                  ori          t3, tp, 572
                  srai         s3, s7, 11
30:               nop
                  andi         t1, tp, 445
                  nop
                  sltu         s8, a2, t2
                  slli         t4, a1, 9
                  auipc        s3, 637681
                  auipc        t0, 1031121
                  andi         gp, a6, -90
                  bne          a7, ra, 50f
                  srl          t3, s6, t0
                  or           s0, s5, a3
                  and          t4, t6, a5
                  and          t3, a2, a3
                  bge          s4, a4, 58f
44:               sra          a2, a7, s1
                  slt          s6, a7, a0
                  sll          t3, t0, s4
                  bne          a7, ra, 64f
                  ori          t0, s5, -1196
                  auipc        s11, 842870
50:               sll          s7, a5, a1
                  beq          a4, a2, 71f
                  add          t2, s1, ra
                  add          a7, s7, a6
                  addi         a4, t1, -463
                  bne          zero, a1, 74f
                  sltiu        s2, s4, -1308
                  slti         s10, t2, 521
58:               bge          s10, s0, 66f
                  ori          zero, zero, 1755
                  bltu         t3, a0, 73f
                  nop
                  and          a4, s4, zero
                  addi         s3, zero, 1505
64:               sll          a6, zero, t6
                  bge          t1, t2, 75f
66:               srai         s4, tp, 7
                  addi         sp, t1, 744
                  sra          a0, t0, a4
                  auipc        a6, 923213
                  sub          s0, a6, t1
71:               xor          s3, t0, s0
                  sltiu        s6, s5, 337
73:               srai         a5, s9, 23
74:               auipc        a0, 140007
75:               sltiu        s6, t4, 652
                  sll          s8, s11, sp
                  slli         a2, a3, 8
                  slti         zero, tp, -1971
                  sra          a0, zero, s8
                  and          ra, s10, s5
                  slt          s1, tp, a2
                  andi         sp, s2, -775
                  sra          s5, s1, a7
                  sltiu        t1, a6, -798
                  slli         s8, s1, 5
                  xori         a4, ra, -1504
                  slti         t3, s3, 1443
                  ori          a2, a3, 476
                  slt          t0, a5, t3
                  srl          t6, s1, s5
                  bne          sp, s8, 93f
                  lui          tp, 18180
93:               xor          s0, a0, gp
                  nop
                  add          s10, ra, s7
                  bge          a4, t4, 102f
                  srai         a6, s11, 18
                  ori          a5, a0, -203
                  sll          t4, t6, t4
                  xor          a0, a5, s9
                  andi         a4, zero, 262
102:              sll          a0, s1, s6
                  blt          a1, a3, 122f
                  lui          t6, 427686
                  sub          s3, t6, s3
                  bltu         a2, t0, 107f
107:              lui          a4, 1034681
                  la           s4, sub_1
                  add          tp, s8, s10
                  sub          s1, s1, t1
                  addi         s4, s4, -1003
                  xori         s1, ra, -1409
                  sltiu        sp, t5, 1404
                  slti         zero, a5, -127
                  beq          s5, t4, main_j1 #branch to jump instr
                  slt          s11, a4, s3
                  slti         t3, tp, -1509
main_j1:          jalr         s4, s4, 1003 #jump main -> sub_1
                  or           s6, a1, s5
                  bgeu         a5, sp, 120f
                  nop
                  bne          t3, s8, 130f
                  srl          s1, t4, s10
                  lui          s10, 512993
                  andi         t4, a3, 1696
                  bltu         a1, a2, 119f
                  andi         t0, s2, 1775
                  add          t5, a0, a2
                  bge          a7, sp, 136f
119:              sub          sp, tp, t1
120:              sll          t0, s9, s10
                  andi         s5, a6, -1650
122:              or           s0, a3, a2
                  add          s5, sp, t0
                  or           s10, a3, sp
                  bgeu         t0, s0, 127f
                  nop
127:              srl          sp, s9, t0
                  bge          gp, a0, 148f
                  sltu         tp, s6, a4
130:              and          t1, s8, s1
                  sra          a0, a4, s0
                  nop
                  lui          a4, 350709
                  slli         s10, a3, 10
                  andi         t2, a2, -1957
136:              sra          s2, s3, s5
                  nop
                  bgeu         a0, s4, 156f
                  blt          ra, t0, 149f
                  ori          t5, a6, -1221
                  slli         sp, s2, 26
                  addi         s7, s1, 31
                  sub          t1, a2, s3
                  nop
                  andi         s10, t1, 1080
                  andi         s8, s10, -1402
                  srai         s10, a0, 10
148:              blt          s2, t4, 158f
149:              and          t0, s3, a6
                  ori          a6, t6, 269
                  slli         a4, ra, 25
                  xor          t5, a0, s11
                  bge          s2, t6, 156f
                  and          s7, a6, s5
                  srai         s10, a6, 14
156:              lui          s7, 119686
                  ori          a7, t5, 213
158:              bgeu         a1, a4, 178f
                  ori          t1, tp, -624
                  ori          tp, t3, 869
                  srli         a6, s11, 25
                  beq          s5, ra, 171f
                  sltiu        zero, t3, -217
                  xori         sp, s2, -395
                  slt          t6, t6, t2
                  nop
                  beq          s7, a7, 174f
                  slt          a5, t3, s7
                  sll          a7, s5, s4
                  slt          a6, ra, s0
171:              bgeu         s7, s5, 181f
                  sub          sp, s1, s7
                  xor          t0, s11, t3
174:              sll          t1, t6, a0
                  andi         zero, gp, 1339
                  lui          s5, 435412
                  slt          ra, s9, s11
178:              bge          s1, ra, 186f
                  bne          t5, s6, 189f
                  xori         ra, t1, 630
181:              sltu         a4, a4, t1
                  slt          t1, t2, t0
                  lui          s6, 821905
                  sra          s2, zero, s4
                  xori         zero, s0, 659
186:              srl          t3, t4, s7
                  slli         a2, a4, 18
                  bgeu         s1, s4, 200f
189:              bgeu         a6, a6, 207f
                  sll          t0, t2, s2
                  auipc        t2, 728049
                  slti         t2, t6, -186
                  sll          t2, tp, s3
                  andi         t4, tp, -530
                  andi         s11, s3, -803
                  sra          t1, s1, s2
                  beq          s5, t5, 198f
198:              sll          zero, t0, a4
                  bltu         a6, s6, 202f
200:              blt          tp, s8, 220f
                  ori          a5, s9, 1391
202:              bltu         zero, t2, 215f
                  slt          a6, s4, s9
                  andi         s10, s1, -1516
                  srl          a4, t3, s3
                  auipc        gp, 155915
207:              andi         t6, s8, 1221
                  auipc        tp, 564340
                  xor          s2, a0, s11
                  addi         a4, gp, -1798
                  xor          s11, s3, t5
                  slti         t4, a2, -955
                  srli         t3, s1, 2
                  sltu         tp, sp, a5
215:              nop
                  xor          t3, a3, a6
                  andi         a2, t2, 1395
                  bge          ra, t3, 228f
                  slt          s10, s3, a5
220:              xori         s5, t5, 121
                  slli         s8, s6, 9
                  blt          sp, a4, 224f
                  or           s5, s1, t4
224:              bltu         t5, a3, 226f
                  sub          s5, t1, t6
226:              slt          t6, sp, a4
                  slt          t2, a0, ra
228:              nop
                  sltiu        s3, a1, -226
                  xori         s10, s1, 584
                  bltu         t0, t6, 233f
                  srl          s6, t0, sp
233:              auipc        s11, 828328
                  or           s3, a6, s2
                  sltu         t4, a4, t0
                  slt          s0, zero, s0
                  sltiu        s8, a0, -839
                  or           t2, a0, t0
                  bltu         s4, s5, 258f
                  sll          s5, s7, t3
                  bltu         s2, s0, 259f
                  sub          s6, t3, s0
                  beq          t3, t2, 261f
                  srl          s8, a2, s8
                  bge          a0, s10, 247f
                  sltu         gp, tp, gp
247:              sltiu        s8, s4, -1906
                  bltu         s5, a4, 268f
                  sll          s2, s7, s0
                  srli         a4, gp, 21
                  slt          s6, s2, t1
                  bne          s1, t4, 263f
                  ori          s1, t5, -1437
                  sltiu        s4, s0, -373
                  ori          s0, t0, 1903
                  bge          zero, s4, 266f
                  bge          t5, a2, 276f
258:              sra          s0, s3, s4
259:              or           s4, t3, s9
                  bltu         ra, s8, 266f
261:              bge          t6, gp, 265f
                  slli         a4, s7, 23
263:              srli         a5, s3, 12
                  add          ra, t0, ra
265:              sub          zero, t6, t3
266:              lui          a6, 983139
                  sltiu        a5, s11, 327
268:              nop
                  bge          s4, sp, 280f
                  sltiu        a6, a4, 1647
                  or           a7, a1, s1
                  andi         sp, a4, 1549
                  lui          t6, 759127
                  blt          s7, s5, 294f
                  bne          s11, t2, 294f
276:              srai         s10, s9, 28
                  slti         t2, t2, 1427
                  sub          a5, a2, ra
                  auipc        t1, 575923
280:              srai         a0, s7, 14
                  ori          s7, s4, 188
                  ori          t0, a3, 1862
                  sll          s1, s2, tp
                  srai         t5, t1, 14
                  auipc        a4, 297201
                  or           s7, t2, a7
                  and          s0, t2, s9
                  or           t3, s7, s2
                  xor          a0, s10, a4
                  auipc        a4, 1015540
                  bgeu         s10, t0, 306f
                  sltiu        s1, t1, -15
                  blt          ra, s5, 310f
294:              sltiu        s2, t3, 1822
                  lui          a2, 843225
                  sub          sp, a1, a6
                  andi         s2, s1, 1322
                  nop
                  add          s10, tp, a0
                  bgeu         t6, s11, 309f
                  lui          t2, 810211
                  srl          s0, s4, ra
                  srai         gp, a0, 14
                  slt          s1, t3, a7
                  bge          t6, a6, 325f
306:              blt          zero, t2, 308f
                  srli         t4, a4, 13
308:              sra          s0, zero, s4
309:              slt          ra, t4, s10
310:              sltiu        t0, s5, 1041
                  sub          s8, s0, s10
                  slt          s11, t6, s4
                  beq          s5, a1, 324f
                  xor          t2, s2, s8
                  auipc        s10, 172687
                  bge          s0, a1, 329f
                  or           t3, t0, ra
                  slli         t3, tp, 30
                  srai         a0, a6, 27
                  sra          s4, a5, s3
                  bne          s2, t6, 333f
                  bltu         s0, t3, 329f
                  bltu         s7, a4, 333f
324:              add          s5, s2, a1
325:              sra          a7, t6, gp
                  bne          a3, a3, 336f
                  slli         gp, s2, 22
                  slli         s7, zero, 21
329:              srai         gp, s7, 22
                  auipc        tp, 805232
                  lui          s2, 392515
                  addi         ra, sp, -793
333:              slt          s7, a6, s4
                  srli         a2, s6, 14
                  bge          t6, t5, 345f
336:              bgeu         s9, s8, 355f
                  auipc        a7, 333806
                  nop
                  lui          ra, 914102
                  bne          a5, s2, 343f
                  srai         t4, t0, 19
                  bne          s10, a1, 344f
343:              xor          s11, t2, s11
344:              add          tp, s11, ra
345:              bltu         s2, a2, 365f
                  xor          s1, s11, s1
                  bgeu         a2, a2, 365f
                  slt          a6, t3, t1
                  sub          s0, a0, s10
                  srl          s1, a6, s2
                  sub          ra, s9, t4
                  sub          a2, t2, t3
                  blt          s0, s7, 372f
                  xor          t4, s6, a2
355:              add          ra, t3, s1
                  slt          a5, a2, t1
                  xori         t4, s10, 1982
                  bltu         a3, t1, 360f
                  bne          t4, t1, 363f
360:              bltu         t0, t5, 369f
                  or           s8, a7, s9
                  nop
363:              beq          t0, s5, 364f
364:              nop
365:              blt          t2, tp, 376f
                  and          t3, s9, a0
                  add          zero, s3, s11
                  nop
369:              slti         t4, s9, -182
                  blt          s7, s7, 390f
                  nop
372:              bne          s0, s2, 390f
                  xori         a5, gp, 1127
                  addi         sp, s3, 20
                  ori          t6, gp, 893
376:              xori         sp, t2, -646
                  xori         a2, s4, 805
                  andi         t3, a7, 654
                  sltiu        a5, gp, -1362
                  xori         gp, a3, 215
                  bne          a6, a7, 396f
                  ori          s11, s2, -1522
                  sra          s8, s11, a6
                  srli         a0, zero, 17
                  sra          s2, a5, t0
                  bne          s4, tp, 392f
                  lui          s7, 1009318
                  and          s0, s11, s4
                  sra          tp, a3, s1
390:              andi         t0, a7, 556
                  slti         s2, t2, 561
392:              sltiu        s0, s11, 312
                  srli         t0, t1, 31
                  srl          s8, t0, a6
                  bge          gp, s11, 405f
396:              beq          a5, a2, 398f
                  sltu         a2, s7, s6
398:              add          ra, s10, a3
                  srai         s6, s10, 24
                  lui          a2, 200112
                  sub          s10, zero, t4
                  sltiu        ra, zero, -1341
                  nop
                  ori          s3, s2, 1585
405:              srl          t6, a2, tp
                  nop
                  add          s1, a2, t4
                  bne          t1, zero, 426f
                  slti         s3, t4, -1768
                  xor          a0, s7, t4
                  bgeu         a6, sp, 419f
                  addi         s0, a5, -1909
                  xori         s5, t1, -1067
                  sll          t5, sp, s10
                  sll          gp, s0, t6
                  bne          tp, zero, 435f
                  bge          tp, s8, 434f
                  slti         a4, t0, -1034
419:              beq          t2, s7, 438f
                  srl          t1, a0, s10
                  slti         t0, ra, 1419
                  xor          zero, t2, gp
                  sll          s3, a2, s4
                  bge          t0, a6, 434f
                  auipc        a6, 825720
426:              bltu         s5, t5, 439f
                  slt          tp, gp, t3
                  bge          gp, a6, 448f
                  beq          s6, t3, 435f
                  auipc        zero, 686174
                  srai         s8, s9, 6
                  andi         s2, a5, -166
                  auipc        s0, 939667
434:              bltu         s1, s11, 444f
435:              xor          t1, tp, gp
                  andi         s1, s6, -698
                  addi         s7, s6, 1085
438:              addi         t4, s10, -1463
439:              srli         s4, t4, 29
                  bltu         s11, t4, 449f
                  bne          t5, s4, 460f
                  slti         sp, s8, 1669
                  sll          a0, t0, s6
444:              sra          t2, t4, t5
                  bgeu         s7, a0, 464f
                  bne          a5, tp, 448f
                  sltu         s10, t5, s7
448:              srai         s1, s7, 24
449:              sll          sp, a3, a3
                  sll          s8, s3, s5
                  nop
                  bne          a1, tp, 467f
                  xor          t0, t1, s2
                  bltu         a4, s10, 464f
                  sra          t1, a7, s10
                  sltu         a2, s6, s5
                  beq          ra, sp, 458f
458:              sltu         s11, t2, t6
                  slli         s3, s6, 17
460:              xori         t3, s8, -558
                  blt          sp, s5, 479f
                  bgeu         s7, s6, 473f
                  bge          s1, a6, 481f
464:              addi         s6, s6, 560
                  addi         a0, s1, 1830
                  nop
467:              sub          s5, s11, s11
                  bne          s1, zero, 478f
                  sltu         a5, a1, t5
                  bne          a3, s0, 481f
                  slti         a2, sp, 1724
                  slt          t5, t2, t2
473:              slli         s11, sp, 16
                  srai         t6, s9, 26
                  slt          tp, a6, a0
                  sltiu        a7, a5, -755
                  bge          s4, a4, 485f
478:              beq          s10, a1, 495f
479:              ori          tp, t1, 573
                  add          a7, a1, t5
481:              sll          t1, s3, t2
                  and          s1, s0, s7
                  bgeu         s5, t1, 503f
                  add          t0, t2, s2
485:              bgeu         tp, s4, 492f
                  sra          s3, t4, a0
                  xori         t3, a7, 291
                  ori          a2, t1, 838
                  or           a7, a2, s11
                  add          s8, a1, s3
                  addi         tp, zero, 7 #init loop 1 counter
                  sltu         s6, t1, s7
                  addi         s4, zero, 6 #init loop 1 limit
                  addi         t1, s2, 1602
main_7_1_t:       or           a0, s0, t5
                  addi         tp, tp, -4 #update loop 1 counter
                  addi         s2, zero, -5 #init loop 0 counter
                  andi         sp, s2, 1761
                  addi         s7, zero, 7 #init loop 0 limit
                  lui          a2, 742860
main_7_0_t:       xori         t4, s4, -1171
                  srai         a2, t4, 24
                  addi         s2, s2, 3 #update loop 0 counter
                  and          a7, t5, a3
                  or           t2, tp, zero
                  srai         s0, sp, 28
                  bne          s2, s7, main_7_0_t #branch for loop 0
                  bgeu         tp, s4, main_7_1_t #branch for loop 1
                  srai         s6, a5, 11
                  sub          s2, t6, s5
492:              srli         s1, a0, 23
                  beq          zero, s11, 496f
                  addi         s6, tp, 1750
495:              xori         sp, a6, 60
496:              slt          t0, s3, t0
                  or           t3, t4, s7
                  sra          ra, a6, a6
                  auipc        a0, 253763
                  bgeu         a7, s5, 520f
                  bge          s9, a2, 503f
                  srl          s4, a7, s5
503:              srai         t5, s6, 7
                  bge          t4, gp, 506f
                  bltu         a3, s9, 507f
506:              addi         sp, t2, -1929
507:              andi         s7, t5, -934
                  xor          t1, t6, a0
                  lui          a7, 295229
                  blt          a1, a1, 528f
                  addi         s11, a7, 392
                  sub          a6, tp, zero
                  sll          a4, s3, gp
                  bge          s1, sp, 518f
                  xori         a2, s3, 905
                  andi         s7, s7, 1546
                  blt          ra, t2, 529f
518:              sltiu        a2, s1, 642
                  srl          s4, tp, a5
520:              bne          s5, t6, 522f
                  srli         s10, a0, 20
522:              sltu         a2, s6, s3
                  addi         s1, zero, -4 #init loop 0 counter
                  ori          s4, t3, 440
                  xori         s10, t6, 872
                  slt          s11, s1, a3
                  xori         sp, a3, 1159
                  auipc        s7, 394970
                  srli         t0, s0, 31
                  addi         a5, zero, 20 #init loop 0 limit
                  slti         t4, a1, 1235
main_9_0_t:       addi         s0, s10, -1140
                  sltiu        s4, t2, 1405
                  sltu         gp, a7, t6
                  sltiu        s11, tp, 211
                  sra          s3, a0, t6
                  slti         ra, t6, -697
                  addi         s1, s1, 8 #update loop 0 counter
                  sltiu        s0, s0, 1931
                  srli         zero, s6, 25
                  sra          s11, s5, t4
                  beq          s1, a5, main_9_0_t #branch for loop 0
                  sltiu        a6, s1, -247
                  lui          gp, 1019295
                  add          zero, s0, s5
                  beq          zero, t5, 526f
526:              slt          s0, t6, t5
                  beq          a4, t5, 544f
528:              add          a5, t0, gp
529:              beq          t0, s8, 538f
                  ori          a4, s2, -209
                  sra          s1, s11, t5
                  sub          a7, s0, s3
                  slli         s5, sp, 18
                  bge          gp, gp, 536f
                  bne          t3, s0, 553f
536:              sll          t1, a1, s6
                  sll          gp, s5, ra
538:              or           gp, a2, s5
                  nop
                  slti         s6, a0, 890
                  srai         ra, a0, 29
                  sltu         t3, zero, t6
                  bne          s10, a0, 556f
544:              slli         t1, a1, 7
                  and          gp, a2, s7
                  srai         sp, t0, 13
                  sub          s0, a5, s4
                  slti         s4, a0, 2047
                  add          t0, ra, s9
                  sub          gp, a6, s3
                  bgeu         s1, t6, 556f
                  srli         s10, s1, 11
553:              bne          a5, ra, 556f
                  srl          t1, s9, s6
                  srai         a4, s7, 25
556:              ori          s2, s6, 1905
                  la x25, test_done
                  jalr x0, x25, 0
test_done:        
                  li gp, 1
                  ecall
sub_5:            addi         a1, a1, -60
                  slt          a0, s11, t1
                  sw           s4, 4(a1)
                  ori          a0, t4, -1367
                  slli         a4, s8, 25
                  addi         s6, zero, 10 #init loop 0 counter
                  nop
                  sub          s8, s6, s5
                  srai         t4, a5, 28
                  andi         s10, tp, -1079
                  sltu         t4, sp, t6
                  srai         tp, t1, 18
                  addi         a7, zero, 9 #init loop 0 limit
                  auipc        gp, 880446
                  slti         zero, t5, -330
                  slli         a5, s9, 14
                  ori          t5, s9, -1439
                  srl          s5, a1, s4
                  sltu         s3, s1, s3
                  sltiu        s8, a5, 28
                  slti         t1, ra, 187
sub_5_11_0_t:     and          t0, s11, a4
                  sltiu        a0, t4, 187
                  sra          s5, a1, t2
                  addi         s6, s6, -7 #update loop 0 counter
                  or           a2, s0, s6
                  srli         a5, s4, 21
                  lui          s1, 284973
                  or           a0, s9, s7
                  srli         t2, t3, 13
                  xor          t1, gp, a7
                  bgeu         s6, a7, sub_5_11_0_t #branch for loop 0
                  lui          s7, 286424
                  addi         sp, zero, 5 #init loop 1 counter
                  sra          t4, s7, s3
                  srl          s1, zero, zero
                  addi         t3, zero, 5 #init loop 1 limit
sub_5_20_1_t:     slti         s2, s5, -790
                  sll          t4, s2, t0
                  and          s2, a0, s7
                  sltiu        a4, s11, -1932
                  sltu         t2, s2, gp
                  addi         sp, sp, -4 #update loop 1 counter
                  and          a5, sp, t4
                  nop
                  addi         a7, zero, -7 #init loop 0 counter
                  addi         s4, zero, 8 #init loop 0 limit
                  auipc        t4, 293479
                  sltiu        s11, s9, -1097
sub_5_20_0_t:     add          s10, t2, zero
                  slli         s10, a6, 0
                  or           s3, t6, t0
                  srli         a2, t3, 14
                  xori         a2, t1, 405
                  addi         a7, a7, 3 #update loop 0 counter
                  andi         s2, s11, 397
                  or           s3, s5, a6
                  srl          zero, s9, a0
                  add          a4, t2, s7
                  bne          a7, s4, sub_5_20_0_t #branch for loop 0
                  ori          s3, s2, -942
                  xor          s5, s4, a7
                  and          ra, s6, s3
                  slti         a2, a2, -1942
                  nop
                  bgeu         sp, t3, sub_5_20_1_t #branch for loop 1
                  srli         s6, s7, 10
                  addi         s3, zero, 1 #init loop 0 counter
                  sll          ra, s1, gp
                  slti         a5, ra, -1785
                  addi         s4, zero, -19 #init loop 0 limit
                  andi         t2, s9, 1647
sub_5_25_0_t:     addi         a5, a1, -1070
                  addi         s3, s3, -10 #update loop 0 counter
                  bne          s3, s4, sub_5_25_0_t #branch for loop 0
                  or           a6, s11, t4
                  addi         s7, zero, 9 #init loop 1 counter
                  sltu         s8, t6, sp
                  addi         a0, zero, 1 #init loop 1 limit
                  lui          t5, 990826
                  sltu         s6, s1, zero
sub_5_12_1_t:     addi         a2, t0, -1557
                  or           a2, s1, s7
                  nop
                  addi         s7, s7, -7 #update loop 1 counter
                  addi         s0, zero, 2 #init loop 0 counter
                  auipc        sp, 648345
                  addi         s2, zero, 16 #init loop 0 limit
sub_5_12_0_t:     sltiu        a6, s5, -1134
                  addi         s0, s0, 7 #update loop 0 counter
                  srl          s1, a2, sp
                  andi         a2, a5, 1414
                  bne          s0, s2, sub_5_12_0_t #branch for loop 0
                  bge          s7, a0, sub_5_12_1_t #branch for loop 1
                  and          s10, s1, t6
                  addi         s10, zero, 0 #init loop 1 counter
                  addi         a7, zero, 0 #init loop 1 limit
                  ori          t0, a1, 1919
                  sra          t3, t6, a1
sub_5_16_1_t:     slt          t3, zero, a2
                  sltiu        t0, sp, 1355
                  addi         s10, s10, -7 #update loop 1 counter
                  addi         t2, t5, -223
                  slti         t2, a2, 447
                  slt          t5, tp, ra
                  ori          t5, tp, -1374
                  srai         s3, a7, 16
                  srli         s1, a5, 1
                  lui          t6, 990820
                  add          t1, zero, gp
                  or           t3, s8, a3
                  srl          s11, s7, t5
                  addi         a2, zero, -9 #init loop 0 counter
                  addi         sp, zero, -15 #init loop 0 limit
                  sltiu        a0, t6, 373
sub_5_16_0_t:     slt          t6, gp, sp
                  sltiu        a4, a5, -866
                  nop
                  addi         a2, a2, -7 #update loop 0 counter
                  slti         t4, t1, 518
                  xor          s6, t0, t5
                  bge          a2, sp, sub_5_16_0_t #branch for loop 0
                  slt          t4, a1, gp
                  nop
                  sub          t2, zero, t5
                  lui          t3, 351009
                  bge          s10, a7, sub_5_16_1_t #branch for loop 1
                  nop
                  addi         a6, zero, 1 #init loop 0 counter
                  addi         gp, zero, -20 #init loop 0 limit
                  srai         s5, s0, 12
                  lui          s3, 986588
sub_5_7_0_t:      and          ra, t1, s10
                  addi         a6, a6, -7 #update loop 0 counter
                  bne          a6, gp, sub_5_7_0_t #branch for loop 0
                  xori         s1, t6, 1352
                  addi         s4, zero, -9 #init loop 0 counter
                  or           t4, s9, sp
                  addi         s11, zero, -19 #init loop 0 limit
sub_5_19_0_t:     or           s10, t3, s9
                  slt          t3, s8, s11
                  addi         s2, s11, -1420
                  addi         s4, s4, -5 #update loop 0 counter
                  srl          tp, s7, s11
                  slt          t2, s0, s10
                  beq          s4, s11, sub_5_19_0_t #branch for loop 0
                  lui          s5, 666189
                  addi         gp, zero, 9 #init loop 0 counter
                  andi         t4, tp, 458
                  addi         t3, zero, 9 #init loop 0 limit
                  lui          t5, 76040
                  srai         zero, s3, 13
                  auipc        a0, 878688
sub_5_3_0_t:      sub          ra, ra, a5
                  or           t0, s2, t4
                  addi         gp, gp, -8 #update loop 0 counter
                  sra          a2, s0, a4
                  srli         s10, t4, 22
                  addi         s10, s8, 141
                  add          s6, a4, s8
                  sub          s2, t6, t4
                  andi         a7, a4, -460
                  addi         t1, s9, 212
                  add          s11, s2, a4
                  bgeu         gp, t3, sub_5_3_0_t #branch for loop 0
                  auipc        t1, 604222
                  addi         t2, zero, 9 #init loop 0 counter
                  slti         a0, t0, 1434
                  auipc        a6, 435245
                  addi         t0, zero, 9 #init loop 0 limit
sub_5_4_0_t:      ori          s3, s9, -740
                  srai         t1, ra, 4
                  nop
                  and          ra, s10, t2
                  addi         t2, t2, -8 #update loop 0 counter
                  slli         s11, s7, 17
                  slli         s8, s10, 9
                  sll          tp, t0, s10
                  bgeu         t2, t0, sub_5_4_0_t #branch for loop 0
                  srai         t4, a1, 26
                  addi         a0, zero, -8 #init loop 0 counter
                  sltiu        s8, s9, -2039
                  addi         a6, zero, -20 #init loop 0 limit
sub_5_13_0_t:     add          t4, s11, a0
                  addi         a0, a0, -6 #update loop 0 counter
                  bne          a0, a6, sub_5_13_0_t #branch for loop 0
                  srl          tp, tp, t5
                  addi         t3, zero, -9 #init loop 1 counter
                  andi         s0, a5, 554
                  addi         s5, zero, -15 #init loop 1 limit
                  nop
sub_5_18_1_t:     addi         gp, s1, -402
                  sll          s0, t3, a6
                  addi         t3, t3, -5 #update loop 1 counter
                  slli         zero, s0, 16
                  ori          ra, s9, -1673
                  add          s1, t6, a0
                  addi         a7, zero, 8 #init loop 0 counter
                  addi         s10, zero, 9 #init loop 0 limit
                  andi         s6, s10, 635
sub_5_18_0_t:     sub          a2, s0, s7
                  sltu         t1, s1, ra
                  addi         a7, a7, 1 #update loop 0 counter
                  xor          t4, t0, t5
                  srli         a0, s6, 21
                  sra          a0, s1, s6
                  nop
                  beq          a7, s10, sub_5_18_0_t #branch for loop 0
                  bge          t3, s5, sub_5_18_1_t #branch for loop 1
                  add          s11, a6, s9
                  addi         s5, zero, -6 #init loop 1 counter
                  sra          zero, a0, tp
                  xori         t6, s5, 815
                  addi         gp, zero, 11 #init loop 1 limit
sub_5_1_1_t:      and          a4, zero, a0
                  sll          s6, t5, gp
                  srl          t4, a4, s9
                  and          t5, sp, a5
                  addi         s5, s5, 1 #update loop 1 counter
                  sltiu        t4, s2, 531
                  addi         a7, zero, 9 #init loop 0 counter
                  sra          s10, t6, s1
                  addi         s1, zero, -16 #init loop 0 limit
sub_5_1_0_t:      andi         a4, a6, 354
                  addi         a7, a7, -1 #update loop 0 counter
                  or           t3, a4, t0
                  beq          a7, s1, sub_5_1_0_t #branch for loop 0
                  slti         t5, tp, 872
                  auipc        t0, 165360
                  ori          tp, s0, 609
                  xori         a6, t6, 585
                  xori         ra, gp, -1868
                  slt          s6, tp, s9
                  bltu         s5, gp, sub_5_1_1_t #branch for loop 1
                  slli         a4, s5, 18
                  addi         s8, zero, -9 #init loop 0 counter
                  addi         a2, zero, -4 #init loop 0 limit
sub_5_17_0_t:     ori          a5, t3, 1110
                  slt          t4, s1, gp
                  addi         s8, s8, 5 #update loop 0 counter
                  beq          s8, a2, sub_5_17_0_t #branch for loop 0
                  slt          s3, s3, t4
                  addi         s2, zero, 7 #init loop 0 counter
                  sll          t2, a0, s0
                  addi         s11, a5, 313
                  add          a5, a1, ra
                  addi         tp, zero, -3 #init loop 0 limit
                  andi         s0, a2, 824
                  sub          t5, a6, t4
sub_5_15_0_t:     xor          t4, s10, s6
                  ori          s10, t3, 464
                  auipc        sp, 919803
                  addi         s2, s2, -9 #update loop 0 counter
                  srl          t6, s0, a5
                  nop
                  ori          s3, ra, -413
                  or           s7, a6, s4
                  bge          s2, tp, sub_5_15_0_t #branch for loop 0
                  and          t4, s6, zero
                  addi         a6, zero, -4 #init loop 1 counter
                  slli         s1, s6, 14
                  nop
                  ori          gp, s1, -880
                  add          s8, a7, gp
                  slt          a2, s4, a7
                  addi         s10, zero, -17 #init loop 1 limit
sub_5_14_1_t:     slti         a4, t2, -1814
                  sub          s8, s11, s8
                  addi         a6, a6, -2 #update loop 1 counter
                  addi         t1, zero, -5 #init loop 0 counter
                  and          tp, s2, t2
                  addi         t5, zero, -12 #init loop 0 limit
                  auipc        s6, 856699
                  sltu         zero, gp, s8
sub_5_14_0_t:     xori         s0, zero, -441
                  or           s8, a1, t1
                  addi         t1, t1, -7 #update loop 0 counter
                  andi         s2, t4, 48
                  andi         t2, s2, 456
                  beq          t1, t5, sub_5_14_0_t #branch for loop 0
                  and          s5, t4, s11
                  slt          ra, a3, s4
                  bge          a6, s10, sub_5_14_1_t #branch for loop 1
                  slti         t4, a0, -874
                  addi         s6, zero, 8 #init loop 1 counter
                  srai         a0, s2, 22
                  add          t3, s0, s10
                  slt          tp, s7, a5
                  addi         sp, t1, -1728
                  auipc        t2, 219354
                  lui          s7, 623186
                  slti         a4, s7, 1325
                  addi         a7, zero, -16 #init loop 1 limit
sub_5_9_1_t:      sltiu        s4, tp, -1379
                  sltu         s7, s6, a7
                  add          t1, sp, a5
                  slt          gp, s8, t2
                  addi         s6, s6, -8 #update loop 1 counter
                  addi         a6, zero, 9 #init loop 0 counter
                  and          s7, t3, a1
                  addi         t5, zero, 7 #init loop 0 limit
                  ori          s3, sp, 550
sub_5_9_0_t:      nop
                  sub          s5, s1, s8
                  sltiu        a2, s1, -366
                  addi         a6, a6, -6 #update loop 0 counter
                  slti         s8, t5, 402
                  sra          s10, s10, s10
                  bgeu         a6, t5, sub_5_9_0_t #branch for loop 0
                  xori         s4, s3, -149
                  andi         gp, zero, -416
                  lui          t4, 804047
                  sra          gp, t5, s3
                  sra          t2, t6, s3
                  bne          s6, a7, sub_5_9_1_t #branch for loop 1
                  sltu         s4, a2, s9
                  addi         t4, zero, -4 #init loop 0 counter
                  srli         ra, s11, 7
                  slt          s3, t4, s1
                  lui          s3, 505540
                  auipc        t0, 763234
                  or           t5, t2, t2
                  sltu         s0, s6, sp
                  sra          a0, sp, t4
                  add          s0, t1, s3
                  addi         s2, zero, -14 #init loop 0 limit
                  nop
                  sltu         a7, t2, s3
                  sltu         s3, zero, s7
                  ori          t0, s1, 1576
sub_5_6_0_t:      slti         gp, t3, 1797
                  and          t0, t6, s9
                  addi         t4, t4, -10 #update loop 0 counter
                  lui          s1, 340137
                  bne          t4, s2, sub_5_6_0_t #branch for loop 0
                  ori          s4, s0, -810
                  addi         s5, zero, 0 #init loop 1 counter
                  addi         s8, zero, 20 #init loop 1 limit
sub_5_10_1_t:     sltu         s3, a2, a3
                  addi         s5, s5, 5 #update loop 1 counter
                  sltiu        ra, tp, 214
                  addi         sp, zero, -4 #init loop 0 counter
                  and          ra, a7, t0
                  addi         t6, zero, -12 #init loop 0 limit
                  addi         a2, s3, 1640
sub_5_10_0_t:     sltu         t5, s2, t6
                  addi         sp, sp, -4 #update loop 0 counter
                  sll          a2, t2, a2
                  bge          sp, t6, sub_5_10_0_t #branch for loop 0
                  blt          s5, s8, sub_5_10_1_t #branch for loop 1
                  nop
                  addi         s8, zero, 5 #init loop 0 counter
                  srl          s7, a4, s1
                  slli         s11, t4, 1
                  xori         t6, s3, -1944
                  add          a5, s11, s6
                  sll          tp, s6, zero
                  srli         s11, t2, 22
                  auipc        t2, 203593
                  sltiu        s1, s2, 718
                  srli         a2, s9, 11
                  andi         a4, s7, 968
                  slli         a0, t0, 3
                  addi         gp, zero, 13 #init loop 0 limit
                  add          s4, s7, s3
                  slti         s1, a5, -2033
                  xor          t4, a4, s0
sub_5_8_0_t:      lui          t2, 868927
                  xor          s6, s9, s11
                  add          s7, s8, s2
                  xori         s0, s11, -577
                  addi         s8, s8, 4 #update loop 0 counter
                  sub          t6, a0, t6
                  or           a4, a1, t3
                  slli         a7, t3, 23
                  xor          s4, a4, s1
                  bne          s8, gp, sub_5_8_0_t #branch for loop 0
                  slti         a4, t0, -673
                  addi         a2, zero, -1 #init loop 1 counter
                  slti         a7, a4, 1830
                  sub          s0, a5, ra
                  slti         t6, s5, -373
                  auipc        sp, 530133
                  auipc        tp, 587709
                  add          s5, zero, a0
                  addi         t1, zero, -9 #init loop 1 limit
                  sll          s2, t4, t5
                  sltu         tp, zero, t1
                  srai         a4, s9, 29
                  sltu         s8, a3, a1
                  xor          t4, s2, s0
sub_5_23_1_t:     ori          a6, t3, 1798
                  ori          a0, s6, -274
                  addi         a2, a2, -9 #update loop 1 counter
                  and          a5, s1, s5
                  add          a7, t0, t5
                  auipc        s6, 232295
                  nop
                  srli         a0, s6, 17
                  addi         s3, zero, -3 #init loop 0 counter
                  addi         s7, zero, -15 #init loop 0 limit
                  add          a7, sp, t5
                  auipc        zero, 34457
                  sll          a6, s3, t3
                  sub          t4, a7, s0
sub_5_23_0_t:     sub          a7, s4, s1
                  ori          ra, t2, -801
                  addi         s3, s3, -5 #update loop 0 counter
                  bge          s3, s7, sub_5_23_0_t #branch for loop 0
                  sra          a4, t3, s5
                  sll          s10, s1, s11
                  bge          a2, t1, sub_5_23_1_t #branch for loop 1
                  sltu         s4, s1, s10
                  addi         a2, zero, 2 #init loop 1 counter
                  addi         s7, zero, 2 #init loop 1 limit
sub_5_2_1_t:      auipc        t3, 795225
                  addi         a2, a2, -1 #update loop 1 counter
                  addi         a0, zero, 6 #init loop 0 counter
                  sub          a7, a5, t1
                  addi         t6, zero, 16 #init loop 0 limit
sub_5_2_0_t:      andi         s1, a1, 1310
                  addi         a0, a0, 5 #update loop 0 counter
                  bne          a0, t6, sub_5_2_0_t #branch for loop 0
                  bgeu         a2, s7, sub_5_2_1_t #branch for loop 1
                  slti         s2, a4, 2002
                  addi         s4, zero, 4 #init loop 0 counter
                  srl          zero, tp, a2
                  slti         a7, a4, -629
                  slli         zero, s11, 27
                  addi         a2, zero, 11 #init loop 0 limit
                  ori          s7, t2, -1383
                  or           s5, a6, a2
                  xori         s8, t4, 1159
sub_5_24_0_t:     lui          s3, 648080
                  sltiu        t1, a5, 869
                  xori         s6, a6, 235
                  and          t1, t6, s2
                  ori          t0, t1, 1156
                  sra          gp, a2, t1
                  addi         s4, s4, 7 #update loop 0 counter
                  sub          a6, s3, a4
                  add          s0, s10, s7
                  beq          s4, a2, sub_5_24_0_t #branch for loop 0
                  auipc        t1, 492190
                  sltiu        t3, s4, -1118
                  andi         t3, s0, -1600
                  xor          s10, t4, s10
                  sub          t1, s2, s6
                  bge          zero, t4, 23f
                  slt          t2, tp, t3
                  sra          s5, t2, s11
                  sub          t6, a5, t6
                  bne          s8, a4, 20f
                  bgeu         s10, s8, 24f
                  auipc        s0, 432104
                  blt          s9, t6, 16f
                  ori          gp, zero, -947
                  nop
                  srai         a6, a0, 16
                  srli         s7, s6, 3
16:               srl          a2, t3, s2
                  bge          ra, a1, 19f
                  srli         s4, a3, 10
19:               andi         sp, t1, 1494
20:               xor          sp, a6, t2
                  andi         s0, a2, 1246
                  sra          s6, zero, a2
23:               sra          s10, s11, a3
24:               sub          a5, t0, a2
                  add          s0, tp, a6
                  srl          s0, s2, t4
                  blt          ra, s2, 45f
                  beq          s8, a2, 38f
                  auipc        ra, 553040
                  srli         s3, zero, 28
                  lui          t5, 894795
                  ori          s1, t4, -576
                  bltu         sp, a6, 34f
34:               slti         s7, a0, 1162
                  slli         sp, t2, 8
                  slli         t6, a3, 29
                  bgeu         a0, t6, 42f
38:               slt          ra, s4, a4
                  blt          zero, tp, 49f
                  bgeu         s6, s6, 41f
41:               bge          t1, t6, 50f
42:               xori         a5, t1, -1068
                  sll          ra, gp, tp
                  nop
45:               bgeu         a3, t4, 52f
                  or           a4, a1, a1
                  sltu         t0, s2, s3
                  nop
49:               slti         s6, t6, -1776
50:               xor          s5, s0, t1
                  sra          t1, a2, t4
52:               xori         s8, a2, -303
                  auipc        s2, 16605
                  xori         t5, t5, -690
                  srl          s3, t2, ra
                  nop
                  slti         s2, t4, -1650
                  bgeu         s0, tp, 69f
                  blt          a7, a0, 72f
                  andi         a5, a1, -367
                  and          t4, a4, s3
                  slt          t3, ra, t3
                  bltu         a3, s1, 75f
                  blt          s7, s11, 70f
                  ori          s6, s4, 102
                  slli         a0, a0, 1
                  sra          a6, t0, a6
                  xori         a6, s5, -1679
69:               sub          a5, s6, s1
70:               nop
                  nop
72:               sub          t1, tp, s11
                  bne          s8, t5, 76f
                  slli         t2, s9, 29
75:               sltu         s7, gp, a2
76:               lui          t4, 95450
                  xori         s0, tp, -1869
                  sltiu        s5, a0, -579
                  srli         gp, s0, 28
                  ori          t5, s2, -1596
                  sll          tp, t6, gp
                  xori         tp, a4, -1748
                  sub          sp, a7, a5
                  or           s11, t5, gp
                  beq          gp, s1, 91f
                  nop
                  bge          a1, s8, 101f
                  or           t2, s5, s7
                  ori          s5, zero, -1461
                  lui          a7, 398845
91:               bne          t5, t2, 103f
                  xori         s11, s4, -1555
                  addi         a5, a3, -214
                  sll          s2, s0, t2
                  slli         t0, sp, 24
                  slli         a6, ra, 22
                  or           a0, gp, t0
                  bltu         s9, sp, 101f
                  blt          s2, s5, 112f
                  lui          t5, 404581
101:              ori          s2, a1, 919
                  and          t4, a1, a2
103:              beq          a4, sp, 114f
                  or           s10, s0, s5
                  sll          sp, t5, s8
                  sltu         t5, s3, s2
                  lui          s4, 670393
                  slli         gp, s8, 0
                  srli         zero, s2, 2
                  bgeu         a3, s4, 127f
                  lui          t5, 277070
112:              bge          s10, s11, 118f
                  bltu         tp, a7, 119f
114:              ori          t4, t3, 943
                  bltu         s10, ra, 122f
                  and          s8, a5, t4
                  ori          t6, s5, -1508
118:              and          s4, s2, t5
119:              blt          s10, sp, 131f
                  bne          s2, a6, 139f
                  srai         s8, t3, 17
122:              slti         s4, a1, -984
                  nop
                  andi         t3, s11, 633
                  xori         a5, t6, 786
                  auipc        sp, 510
127:              blt          s8, s3, 139f
                  nop
                  srli         tp, t4, 25
                  bgeu         s9, s2, 131f
131:              bne          s5, ra, 133f
                  blt          s2, a7, 150f
133:              addi         s8, s0, -65
                  bltu         s1, a1, 153f
                  auipc        s7, 219869
                  addi         s6, a3, -338
                  srai         s3, t0, 4
                  xori         a2, s3, -1448
139:              lui          s4, 897544
                  slt          s4, s9, s1
                  sltiu        a0, s4, -1498
                  bge          s11, sp, 147f
                  addi         s11, t2, -974
                  addi         s4, ra, -1183
                  bne          t0, tp, 160f
                  nop
147:              beq          s10, t6, 157f
                  ori          s1, s8, 1094
                  slli         t1, s8, 25
150:              slli         zero, tp, 2
                  and          gp, s0, a7
                  auipc        ra, 89749
153:              lui          t4, 345109
                  srl          sp, s2, s2
                  srai         sp, s8, 3
                  bne          a4, a0, 157f
157:              blt          s3, ra, 163f
                  xori         s5, t0, -1360
                  or           s2, a7, a5
160:              sltiu        zero, s1, -331
                  sltiu        a7, a3, 1549
                  srai         s11, s11, 0
163:              auipc        s0, 801404
                  srl          a7, gp, t0
                  sltiu        sp, s0, -1400
                  beq          a7, s10, 185f
                  srli         s3, t5, 28
                  bne          s1, t5, 171f
                  or           t2, a7, s5
                  ori          s2, t0, 866
171:              bltu         s2, a4, 183f
                  nop
                  slli         s2, t5, 19
                  xori         t1, a7, 1803
                  srli         a2, a2, 11
                  addi         t4, t6, 1913
                  bge          tp, t2, 191f
                  lui          a2, 45781
                  sra          a4, a0, s5
                  slt          s0, s2, t1
                  bltu         t3, s9, 188f
                  auipc        s4, 177762
183:              xori         ra, s6, 547
                  or           s11, a4, s5
185:              srl          s3, a5, ra
                  srl          s10, a3, s10
                  bge          t5, s5, 199f
188:              slt          t5, tp, a7
                  lui          s5, 665279
                  bge          a6, t0, 202f
191:              sra          t6, a1, a4
                  nop
                  add          t4, a4, s9
                  xor          gp, s8, t3
                  bne          a0, s7, 200f
                  slt          ra, a0, s1
                  add          s6, s6, s5
                  bltu         s9, a2, 201f
199:              auipc        t4, 575955
200:              slti         s0, s1, -1124
201:              bge          s6, t2, 211f
202:              bne          t5, s4, 213f
                  slti         t5, sp, -331
                  slti         sp, t4, 371
                  or           s5, a4, t5
                  srli         t0, zero, 11
                  lui          ra, 844516
                  auipc        s2, 497641
                  bne          gp, t0, 216f
                  nop
211:              bgeu         s0, gp, 217f
                  add          t5, s4, s0
213:              slt          a0, s8, s0
                  slli         s11, t2, 25
                  lui          s5, 42598
216:              add          s6, a2, sp
217:              slti         s6, a5, -1110
                  sltu         s2, tp, a0
                  sltiu        s0, s10, -223
                  blt          s8, s10, 226f
                  addi         s8, t3, 1461
                  slli         s2, a3, 0
                  andi         s11, s6, -1110
                  srli         a7, tp, 18
                  bge          t6, tp, 238f
226:              xori         zero, a4, -1026
                  slt          s1, a1, a2
                  sra          a6, t3, zero
                  sub          t1, a6, s6
                  bne          s3, a1, 243f
                  xor          t1, t3, t0
                  sltu         t0, gp, s2
                  xor          s10, t5, a3
                  nop
                  bgeu         gp, ra, 244f
                  sltiu        t4, ra, 1996
                  slli         a6, t0, 24
238:              bne          s8, a5, 255f
                  auipc        s2, 346925
                  add          t6, a2, s11
                  sub          s4, s4, s1
                  bne          a6, sp, 248f
243:              bge          s10, s5, 254f
244:              nop
                  nop
                  lui          s5, 692917
                  sub          a7, s0, t6
248:              srai         s6, a7, 4
                  beq          s8, ra, 255f
                  sll          zero, t5, t1
                  xor          a6, t0, t2
                  andi         s11, s5, 1154
                  lui          a6, 630761
254:              bltu         t3, s9, 268f
255:              andi         a5, s10, -1696
                  srli         s4, s4, 14
                  srli         a2, t2, 12
                  or           a5, s9, a7
                  ori          s5, s2, -598
                  addi         s6, s8, -1181
                  slti         a5, a7, -1494
                  bltu         s7, sp, 268f
                  slli         s11, a2, 19
                  ori          s6, a5, 2032
                  or           a4, a5, a4
                  sub          a4, sp, s0
                  srl          t2, t3, a4
268:              srli         t6, s9, 14
                  or           s3, ra, s3
                  srli         a2, gp, 10
                  andi         s2, s9, 605
                  xor          sp, s0, t1
                  bge          gp, t3, 284f
                  or           t1, t0, s9
                  blt          s4, a6, 286f
                  bgeu         s0, s5, 293f
                  beq          tp, a5, 290f
                  bltu         a6, s3, 288f
                  add          a7, s7, s2
                  srai         s10, sp, 28
                  bne          a6, s4, 299f
                  slli         s2, a4, 0
                  bgeu         gp, s8, 302f
284:              srli         gp, a3, 10
                  auipc        tp, 293022
286:              xor          s0, t3, tp
                  andi         t2, s11, 1932
288:              beq          t3, a2, 298f
                  add          s1, s10, s7
290:              bge          sp, sp, 297f
                  bne          s0, a6, 294f
                  and          s10, a4, s8
293:              blt          a0, a4, 294f
294:              slti         ra, s4, 1154
                  add          ra, s7, s7
                  addi         gp, t1, 213
297:              sra          s1, a6, a2
298:              bne          ra, s7, 310f
299:              addi         s5, a3, -55
                  slt          s5, gp, t5
                  sltiu        a5, s0, -1191
302:              sltiu        a0, a7, -117
                  bge          s8, s5, 318f
                  andi         a0, s9, -678
                  sltu         a0, a5, a2
                  bltu         gp, gp, 318f
                  slt          s3, a5, ra
                  xor          a6, a5, a2
                  xori         a2, s11, 76
310:              bltu         tp, s8, 319f
                  slt          t0, a3, s8
                  srl          a6, s4, zero
                  slti         s10, t3, 394
                  bne          s0, a4, 320f
                  or           s10, sp, sp
                  bge          tp, a2, 321f
                  nop
318:              slt          sp, s7, a5
319:              beq          a1, t5, 325f
320:              ori          a2, a5, 2043
321:              srli         s5, s9, 23
                  sll          t6, t2, a7
                  bne          s7, a1, 330f
                  bne          s3, t5, 343f
325:              xori         s7, t5, -256
                  srli         s1, s2, 21
                  xori         s4, a6, 1206
                  add          t5, s4, s10
                  andi         s3, t2, -1257
330:              sub          t4, t6, sp
                  slli         s11, t0, 27
                  add          s10, t6, a6
                  and          ra, t1, a2
                  bgeu         zero, s0, 339f
                  nop
                  srl          a4, s1, a0
                  lui          tp, 437169
                  srai         s8, t0, 18
339:              slti         s3, s7, -808
                  bgeu         s3, t6, 342f
                  add          t3, a4, ra
342:              sra          s4, tp, s4
343:              slt          gp, s8, a2
                  sra          t2, t2, t3
                  sll          zero, s8, t2
                  sub          gp, t4, s1
                  andi         s7, t2, -1613
                  lui          a5, 425961
                  srai         a0, s4, 30
                  andi         a6, a0, -1314
                  sub          a7, tp, s4
                  sub          s4, t5, gp
                  xor          a7, a7, s9
                  sub          t6, t0, s8
                  srli         s6, t3, 27
                  lui          s0, 821234
                  sub          tp, a7, a7
                  nop
                  bge          t5, t1, 372f
                  addi         t1, t0, -201
                  add          a2, s0, a6
                  bge          tp, ra, 374f
                  bgeu         ra, s9, 366f
                  slt          zero, s9, s4
                  or           a0, t6, a1
366:              sltiu        s5, t4, -662
                  sub          s1, t5, t4
                  beq          s8, a2, 380f
                  lui          tp, 320568
                  lui          s8, 631802
                  ori          a5, a5, -1111
372:              srli         t5, a7, 14
                  sub          s3, a5, s0
374:              srai         a0, t6, 10
                  auipc        s7, 306130
                  srai         s1, a1, 31
                  srai         s2, zero, 23
                  addi         s2, a5, -1333
                  bne          gp, s0, 380f
380:              srli         a4, t2, 11
                  slli         s7, a3, 28
                  xor          s6, s6, a0
                  srai         s10, s8, 18
                  slli         s10, s4, 11
                  beq          a3, a6, 388f
                  addi         a7, zero, 764
                  slti         a4, t0, 598
388:              sll          s11, s2, s8
                  bne          tp, a1, 408f
                  sll          s10, sp, a4
                  addi         t5, zero, 9 #init loop 1 counter
                  sra          s2, s6, s0
                  sltiu        s10, a5, -366
                  addi         a4, zero, 15 #init loop 1 limit
                  lui          sp, 77866
sub_5_22_1_t:     andi         t4, t5, 190
                  ori          s5, s8, 1396
                  addi         t5, t5, 5 #update loop 1 counter
                  or           t0, gp, gp
                  and          s4, t3, s11
                  srl          s10, s8, a0
                  addi         s6, zero, 10 #init loop 0 counter
                  auipc        s4, 942505
                  srai         s4, s3, 16
                  addi         a7, zero, 10 #init loop 0 limit
                  auipc        t6, 994560
                  ori          s3, a3, 1421
                  slli         a2, s3, 20
sub_5_22_0_t:     lui          s2, 448378
                  sra          s8, a7, s5
                  addi         s6, s6, -8 #update loop 0 counter
                  addi         t0, a4, -374
                  bgeu         s6, a7, sub_5_22_0_t #branch for loop 0
                  srli         t4, s1, 24
                  slti         sp, s11, -924
                  sll          t6, a5, s5
                  blt          t5, a4, sub_5_22_1_t #branch for loop 1
                  add          s4, ra, t0
                  add          a2, a4, a0
                  srai         gp, s1, 0
                  lui          t2, 1013024
                  bne          s10, a0, 399f
                  xor          a2, s3, s2
                  sub          t6, t6, sp
                  srli         s6, s5, 27
                  srli         s11, t0, 28
399:              slli         t5, t4, 12
                  nop
                  sltu         a7, s6, s9
                  srl          t0, t5, ra
                  sra          a4, a3, s5
                  sltu         s8, zero, t2
                  srli         a6, t5, 30
                  bgeu         s8, s4, 407f
407:              xori         s5, s1, 1680
408:              slt          t2, a5, s9
                  slt          t6, t5, a7
                  srli         s3, t5, 18
                  srai         s5, s11, 9
                  and          tp, a3, t4
                  auipc        a5, 427387
                  nop
                  addi         s4, a5, -68
                  lui          s3, 79866
                  xori         t6, s0, -1962
                  srli         a5, s6, 8
                  sltu         s4, a1, s8
                  beq          t1, sp, 427f
                  lui          s8, 19928
                  auipc        t3, 755488
                  andi         t6, s8, 1224
                  slti         a5, t1, -1334
                  ori          s8, a2, 1710
                  slt          t3, gp, t3
427:              auipc        t0, 267754
                  nop
                  sltiu        s8, a6, 1016
                  add          s1, t4, s8
                  and          a4, s1, tp
                  add          t3, a7, t0
                  srl          sp, t0, s2
                  srli         a7, s3, 18
                  slt          t2, gp, ra
                  and          s8, ra, s6
                  lui          t1, 260721
                  bne          s4, s1, 441f
                  lui          t4, 935747
                  sra          a5, s10, s3
441:              nop
                  or           sp, zero, s11
                  add          tp, a2, a4
                  beq          s4, a5, 456f
                  sra          a5, s9, s9
                  srl          s6, s6, a0
                  auipc        t2, 583874
                  addi         a4, s9, -1553
                  sra          s8, a3, s7
                  ori          a6, a7, 206
                  beq          a0, t0, 457f
                  srai         s10, t0, 20
                  andi         s6, s0, -1063
                  add          a4, s9, a7
                  sub          t4, s11, t6
456:              slti         s7, tp, 1314
457:              or           s5, t3, zero
                  beq          t1, a4, 465f
                  blt          a6, zero, 465f
                  andi         t2, ra, -1420
                  sll          s11, s11, t0
                  slti         a0, t1, 1916
                  auipc        a4, 627110
                  srl          s10, s11, t0
465:              xor          s0, s1, s3
                  xor          s10, tp, ra
                  beq          t3, s1, 486f
                  srli         s2, s11, 31
                  slti         t6, a0, -1031
                  beq          s3, a1, 488f
                  sltu         a0, t5, s11
                  blt          ra, zero, 482f
                  bgeu         s9, sp, 478f
                  blt          t4, s8, 483f
                  beq          tp, s11, 487f
                  lui          t0, 228214
                  sra          s8, t0, t6
478:              sll          s11, zero, a6
                  or           s10, ra, t4
                  sltiu        a5, a0, 2012
                  xor          s2, s7, t5
482:              slli         a7, t4, 21
483:              slli         zero, a1, 11
                  add          a6, a6, s7
                  blt          s0, t0, 497f
486:              ori          s4, s2, -249
487:              bgeu         s3, zero, 497f
488:              beq          s8, s6, 501f
                  xori         a5, s1, 266
                  sltiu        a4, s8, -1639
                  andi         a6, s10, -550
                  bge          t0, s0, 509f
                  slti         gp, s1, -299
                  slti         t5, t4, -1859
                  andi         sp, a0, 289
                  bne          s7, s11, 507f
497:              sltu         t6, t2, s10
                  srli         sp, t1, 9
                  andi         zero, t5, 1485
                  and          t0, s11, s6
501:              andi         s10, ra, -270
                  slt          gp, sp, ra
                  blt          sp, ra, 516f
                  or           s6, t2, a0
                  srai         t6, s6, 23
                  srl          s6, t5, s4
507:              add          sp, s1, s3
                  or           zero, t1, a3
509:              xori         t5, s7, 691
                  xori         s1, s8, -528
                  xori         a0, tp, -1864
                  bltu         s6, s9, 513f
513:              bltu         s3, zero, 519f
                  add          a0, s0, t2
                  addi         s3, a7, -990
516:              bgeu         s4, t6, 518f
                  lui          s3, 75947
518:              beq          t1, zero, 530f
519:              auipc        s10, 500012
                  slti         t5, a0, 1947
                  srl          s7, s11, s9
                  and          s0, s3, s2
                  slti         a2, s11, 974
                  and          s5, s6, t2
                  xor          a4, a2, a2
                  lui          t2, 1033763
                  nop
                  bne          a4, a5, 543f
                  auipc        s2, 883580
530:              lui          tp, 799362
                  beq          t5, a7, 542f
                  xori         s3, a0, -1610
                  slt          t0, t0, t5
                  addi         a6, a4, 195
                  bgeu         s4, t6, 541f
                  sra          s10, s0, s3
                  slt          t5, s9, s5
                  or           t5, s2, s1
                  sltiu        s6, ra, 1728
                  sltiu        a7, t0, 378
541:              srai         t0, s4, 2
542:              add          s7, zero, s2
543:              auipc        a2, 901580
                  nop
                  bge          ra, t3, 559f
                  slt          s10, a1, t6
                  bge          ra, zero, 565f
                  sub          s5, s10, t6
                  sll          t5, s10, s3
                  lui          zero, 790271
                  srai         s7, t2, 1
                  and          a6, s6, s7
                  auipc        s3, 677385
                  bge          s9, tp, 567f
                  lui          a7, 213492
                  slti         t0, a5, 1217
                  andi         s8, s11, -1482
                  add          t2, gp, gp
559:              xori         t4, a4, -1530
                  srl          t1, t6, gp
                  slti         t4, s3, 460
                  srl          a0, a3, s8
                  ori          a7, sp, 803
                  add          s6, a3, t1
565:              or           t0, s2, ra
                  sll          s3, a2, a5
567:              sub          t6, t4, s0
                  sub          t2, s1, sp
                  srli         a2, a7, 1
                  nop
                  addi         s3, t3, -512
                  beq          a4, zero, 579f
                  sll          t4, ra, t1
                  slti         s3, a1, -2019
                  blt          a6, s4, 587f
                  bge          t2, a6, 588f
                  nop
                  slli         a6, t2, 22
579:              and          s3, s11, a1
                  slt          a2, a0, t5
                  lui          zero, 115643
                  slti         s2, t4, -1747
                  slti         s3, s9, -33
                  slti         s6, t0, -554
                  ori          a4, s0, -1649
                  xor          t0, s2, s5
587:              xori         a7, a1, 1856
588:              sra          s1, s8, a7
                  bltu         s8, s11, 594f
                  slti         s4, s5, -706
                  sub          t0, a7, a3
                  ori          t4, t6, 1108
                  srai         s2, ra, 5
594:              auipc        t3, 415786
                  sltiu        a2, a4, -1054
                  add          s8, s4, t6
                  beq          a3, t0, 616f
                  lui          s4, 461224
                  sll          a5, a2, t0
                  andi         s4, a4, -1734
                  auipc        t0, 440294
                  or           t1, t3, a0
                  sub          a0, a5, zero
                  auipc        s3, 76725
                  lui          t6, 632097
                  beq          t3, s10, 609f
                  sub          a4, s9, s1
                  addi         s10, zero, -8 #init loop 1 counter
                  addi         t5, zero, 16 #init loop 1 limit
sub_5_5_1_t:      or           s5, s9, a2
                  xori         tp, s3, -1631
                  addi         s10, s10, 4 #update loop 1 counter
                  addi         s8, zero, 9 #init loop 0 counter
                  addi         a4, zero, -19 #init loop 0 limit
sub_5_5_0_t:      auipc        s11, 294375
                  addi         s8, s8, -4 #update loop 0 counter
                  beq          s8, a4, sub_5_5_0_t #branch for loop 0
                  bne          s10, t5, sub_5_5_1_t #branch for loop 1
                  slli         a0, a0, 13
                  slli         s5, a6, 23
609:              andi         s2, a4, -736
                  addi         gp, ra, 1511
                  bltu         a3, tp, 617f
                  sltiu        s10, t4, -865
                  nop
                  addi         ra, s9, 1976
                  ori          s3, s2, 186
616:              sll          s11, s6, a6
617:              nop
                  xori         s8, zero, 1570
                  srai         a5, s8, 17
                  nop
                  or           zero, tp, t5
                  ori          s7, a4, -1363
                  slti         a2, s11, 1020
                  sub          t4, t3, s7
                  nop
                  slti         s2, sp, -1422
                  sra          t3, t5, a4
                  lui          tp, 708637
                  srai         gp, s11, 10
                  xori         s11, a0, 1807
                  and          s7, s11, a3
                  sra          s10, a5, t4
                  lui          a5, 182111
                  add          s3, s9, t4
                  xori         s10, s7, 1004
                  sll          s0, s2, t5
                  beq          a0, t5, 654f
                  and          t3, ra, t2
                  sltu         t6, ra, t1
                  srl          s7, s8, a0
                  auipc        t0, 9955
                  nop
                  sll          a7, s4, s6
                  slti         a2, s9, -1391
                  addi         gp, s7, -1626
                  srli         s6, a5, 3
                  xori         a4, s4, -1467
                  blt          t2, s4, 658f
                  add          sp, s3, a2
                  auipc        t4, 430875
                  blt          s4, t2, 663f
                  andi         s10, a4, -292
                  blt          s8, sp, 662f
654:              andi         t1, s11, 1688
                  andi         t5, a6, -1946
                  or           s11, ra, tp
                  sltiu        sp, s7, -815
658:              sub          s6, t2, t6
                  blt          gp, s3, 664f
                  bne          a4, sp, 674f
                  sltu         s2, s10, t2
662:              bge          t1, s8, 668f
663:              sub          s11, a2, a6
664:              slti         t2, s4, -1568
                  bge          s4, t5, 667f
                  addi         a4, t4, -1384
667:              xor          a2, a3, t0
668:              slt          a2, s4, t2
                  xor          s10, sp, a3
                  addi         tp, s0, -1357
                  sra          t3, t4, s8
                  sltu         a6, gp, t6
                  sll          ra, ra, s1
674:              srai         a7, s2, 7
                  bne          t0, t2, 690f
                  bgeu         t5, a2, 677f
677:              sub          a0, a3, a2
                  and          s8, ra, s7
                  or           s3, a6, s9
                  ori          s4, tp, 1853
                  sltu         t6, s2, a3
                  beq          a0, ra, 688f
                  sltu         s4, a7, s10
                  and          s11, sp, s6
                  andi         t4, a4, -1673
                  slt          a2, t3, s10
                  beq          t3, t0, 694f
688:              sltu         s2, zero, a3
                  blt          s5, ra, 695f
690:              sltiu        s7, ra, -1583
                  srl          s10, s2, s3
                  sra          a4, s6, ra
                  addi         s8, a5, -1536
694:              nop
695:              srli         s7, t4, 19
                  sltu         a4, gp, s11
                  sra          s5, s0, s1
                  ori          a6, t0, -1270
                  and          s10, s5, t2
                  srai         t6, a7, 27
                  add          s7, t4, tp
                  addi         s10, s9, -2018
                  and          a4, s10, s9
                  slti         s5, s9, -1806
                  slt          s0, gp, a2
                  bltu         s8, a2, 709f
                  slti         s5, gp, 1535
                  nop
709:              auipc        a4, 322182
                  or           s4, a2, a1
                  lui          t6, 854817
                  sltu         a7, t0, s9
                  sra          a6, a7, tp
                  srl          zero, s3, t4
                  nop
                  beq          s0, s5, 717f
717:              sra          t2, gp, s1
                  sra          sp, t4, t0
                  srai         zero, s2, 23
                  beq          a2, s8, 732f
                  nop
                  auipc        t6, 459062
                  andi         ra, s10, -1166
                  or           t5, a5, s10
                  auipc        s6, 412159
                  sltu         t6, gp, ra
                  sltiu        s10, a7, -1114
                  bne          t4, a5, 738f
                  bne          a2, s1, 742f
                  srai         a7, a6, 10
                  or           ra, tp, sp
732:              add          t5, s8, t4
                  sll          a2, zero, sp
                  bne          t5, a4, 753f
                  srli         a4, t5, 19
                  add          a4, s7, s11
                  srl          s10, t4, a7
738:              slli         a2, t1, 3
                  sltu         t2, t6, ra
                  xor          zero, a7, a5
                  xori         a6, a6, -324
742:              blt          ra, a5, 753f
                  ori          gp, a1, -1464
                  addi         s2, s5, 394
                  ori          s0, s5, 1973
                  xori         a4, t5, 1110
                  auipc        a4, 764622
                  slti         t6, s7, -629
                  slli         t2, s1, 4
                  bltu         s9, t5, 761f
                  bgeu         s10, t1, 757f
                  auipc        a0, 609335
753:              sll          s10, t1, a7
                  bgeu         a7, s8, 766f
                  bltu         s7, t2, 774f
                  sltu         a7, s6, a1
757:              bltu         s8, t1, 768f
                  xori         s11, a2, 1508
                  bne          s6, a4, 766f
                  slt          a7, s9, s9
761:              slli         t4, a2, 12
                  sltu         a7, a2, s3
                  andi         zero, s1, 2009
                  slt          a5, t0, s9
                  slti         ra, s9, -1120
766:              blt          a4, s9, 778f
                  srl          t1, s2, a4
                  addi         a4, zero, 8 #init loop 0 counter
                  srai         a6, s6, 25
                  addi         sp, zero, 16 #init loop 0 limit
                  or           s4, s5, s7
                  xor          s6, s0, a1
                  xor          s6, t6, sp
                  auipc        s5, 724726
                  srli         t4, a7, 13
sub_5_21_0_t:     slti         s10, t6, -1057
                  addi         a4, a4, 7 #update loop 0 counter
                  srl          gp, a5, a1
                  sra          gp, tp, s6
                  or           a0, tp, ra
                  addi         s8, a7, 1855
                  slti         gp, t1, 1699
                  addi         t1, t0, -1865
                  blt          a4, sp, sub_5_21_0_t #branch for loop 0
                  andi         ra, s10, -1712
768:              bne          s7, t0, 769f
769:              bne          t0, s10, 782f
                  blt          a3, s0, 789f
                  srl          tp, a0, sp
                  xori         s0, a5, -356
                  ori          zero, t5, -375
774:              xori         a2, gp, 1839
                  xor          a4, t5, a7
                  blt          a6, s4, 786f
                  bne          a1, t0, 782f
778:              sra          t0, a6, a6
                  bgeu         s8, t6, 789f
                  slli         t0, s7, 31
                  or           t1, s2, t0
782:              nop
                  ori          t2, s4, -736
                  bge          s4, t5, 799f
                  or           s0, s9, a7
786:              srl          s10, a3, t3
                  slti         t2, s8, -927
                  sra          t2, s4, s2
789:              srl          t6, s3, t6
                  slt          a6, a1, sp
                  srl          t3, t1, a4
                  bge          gp, t2, 806f
                  srai         s8, t4, 24
                  sub          a0, t5, s8
                  ori          a6, t0, -956
                  bge          s3, t4, 797f
797:              andi         s7, s6, 514
                  sra          a7, t0, s2
799:              or           s11, t3, s6
                  add          t4, s7, s10
                  ori          t0, s6, -278
                  and          s11, ra, t6
                  slt          ra, t5, t0
                  xori         s4, a3, 1257
                  auipc        zero, 107380
806:              addi         t5, s10, 780
                  xori         sp, s0, 1147
                  nop
                  ori          s6, t6, -1011
                  beq          t0, s4, 828f
                  nop
                  sltiu        s6, s3, 1237
                  xor          t4, t1, t6
                  auipc        t4, 799972
                  blt          a5, s10, 824f
                  sltu         s10, s6, t3
                  bge          s6, ra, 830f
                  nop
                  sll          a7, t2, s1
                  lui          t3, 636353
                  sra          s6, a6, t3
                  auipc        a5, 235174
                  nop
824:              beq          a0, s7, 836f
                  lui          t0, 263458
                  or           s0, s6, s2
                  slt          a7, s7, sp
828:              bge          s2, tp, 845f
                  sltiu        s10, t2, 652
830:              sltu         a6, s4, s5
                  sub          a2, a7, s0
                  bne          t5, a3, 839f
                  slti         s4, t6, 1052
                  slt          a0, t4, s11
                  slli         a6, t1, 30
836:              blt          a7, s0, 839f
                  sub          zero, s10, s4
                  auipc        s0, 66971
839:              addi         s3, s11, 952
                  nop
                  beq          s6, a5, 846f
                  slti         tp, s5, -1802
                  srai         a7, s9, 16
                  addi         a7, zero, 5 #init loop 0 counter
                  sll          t0, s1, tp
                  addi         s5, zero, -15 #init loop 0 limit
sub_5_26_0_t:     sltu         s0, s7, s7
                  sltu         t0, gp, s6
                  addi         a7, a7, -10 #update loop 0 counter
                  srl          a2, t4, t6
                  slli         s11, s10, 6
                  auipc        t4, 1036271
                  sltu         ra, a6, a2
                  slti         t2, s3, -1854
                  beq          a7, s5, sub_5_26_0_t #branch for loop 0
                  slli         t5, zero, 23
                  sra          tp, t3, t4
845:              ori          a7, t4, 822
846:              ori          a2, s8, 242
                  srl          a7, zero, sp
                  srai         zero, t1, 6
                  lui          gp, 665930
                  slti         a7, sp, -1137
                  bne          s5, a7, 857f
                  slt          s7, gp, a7
                  srli         s11, t0, 6
                  ori          s0, a3, 218
                  slti         t6, a3, 409
                  sll          zero, s6, s3
857:              auipc        s0, 1017385
                  bltu         a0, a4, 861f
                  and          ra, s8, s4
                  sltiu        t1, t6, 68
861:              andi         s6, s5, -1958
                  andi         a5, t0, -74
                  or           zero, s0, t3
                  bltu         s7, a6, 875f
                  sub          sp, s0, zero
                  srli         s7, a4, 19
                  sltiu        s2, a2, -1133
                  lui          t4, 996103
                  xori         t5, t4, 690
                  slt          s8, a1, s1
                  beq          t0, s7, 877f
                  sltu         a0, zero, s1
                  sltiu        tp, t0, -240
                  xori         ra, tp, 850
875:              xori         tp, sp, -636
                  or           zero, t5, s11
877:              sltiu        t3, tp, 2033
                  srai         s11, tp, 24
                  sltu         s4, t6, t5
                  srli         s6, t3, 24
                  sll          a4, a2, s1
                  bltu         a4, s0, 884f
                  lui          a2, 82500
884:              srl          t6, zero, ra
                  slli         t3, s3, 30
                  xor          a0, s2, s3
                  ori          t4, tp, 2003
                  bgeu         a6, gp, 900f
                  bne          ra, s6, 895f
                  bne          a7, t4, 897f
                  srli         t2, sp, 9
                  lui          s4, 960181
                  sltiu        a5, s7, -33
                  slti         t0, zero, -76
895:              slti         a0, t5, 1315
                  xori         t0, s2, -1034
897:              srl          t3, a4, t1
                  and          s11, s6, s11
                  nop
900:              blt          a1, a6, 906f
                  sub          t1, ra, s5
                  and          zero, s3, s10
                  bne          a7, t5, 904f
904:              srli         s7, a0, 17
                  srl          a2, s9, t3
906:              add          t6, a6, a0
                  bne          t4, a2, 909f
                  bne          t4, a3, 921f
909:              xori         ra, t6, -1949
                  sll          a7, t2, s2
                  srl          a5, s2, s10
                  xori         t2, a6, 1992
                  sll          a5, s6, s0
                  sltiu        s8, s2, -1580
                  or           a5, a1, s11
                  bne          a4, s4, 928f
                  andi         s3, s10, -1898
                  nop
                  slti         s1, a3, -1565
                  srai         a2, s11, 17
921:              ori          s11, a6, -1068
                  sra          s1, s4, gp
                  beq          t6, t6, 928f
                  srai         s8, s5, 13
                  xori         s8, s8, -1168
                  srli         a4, s10, 19
                  sltu         t4, t4, s5
928:              bge          s4, t4, 934f
                  or           s7, t5, zero
                  xori         a4, zero, 253
                  lui          a7, 697561
                  sll          tp, zero, gp
                  bgeu         s0, s2, 952f
934:              srl          a2, s10, a2
                  sll          a5, tp, s10
                  sltiu        s7, a6, -1409
                  sra          s4, s7, tp
                  andi         s7, s1, 1036
                  blt          a5, s1, 944f
                  slt          s0, t2, t6
                  lui          t2, 592645
                  slli         s4, s1, 20
                  srl          s0, a3, s9
944:              and          s2, s6, gp
                  bne          a2, a7, 954f
                  and          t5, a4, tp
                  and          t3, s2, gp
                  xori         t6, s1, -1489
                  sub          a7, s3, t4
                  sltiu        a5, t3, 1830
                  beq          t4, a1, 954f
952:              add          s0, s10, s1
                  auipc        ra, 165726
954:              and          t4, a4, zero
                  auipc        ra, 942388
                  srli         t3, t1, 6
                  auipc        t3, 932152
                  nop
                  xor          a5, s2, a5
                  nop
                  addi         s2, a3, -1888
                  and          s2, s10, s8
                  beq          a5, zero, 974f
                  blt          a7, t0, 974f
                  slt          gp, a5, t3
                  sll          s1, t6, a2
                  srai         ra, s8, 17
                  ori          tp, tp, 1109
                  sltu         a4, s6, t5
                  sltiu        s3, s8, -234
                  nop
                  srai         a2, s0, 16
                  and          a0, a1, s0
974:              add          a7, s1, s5
                  blt          ra, t4, 978f
                  nop
                  beq          t3, a3, 988f
978:              add          t2, s3, s1
                  sltiu        t0, a5, -407
                  sltu         s5, s10, s3
                  bne          a4, t5, 988f
                  bge          a4, a6, 994f
                  sub          s5, t1, t0
                  xor          s5, t2, a1
                  sra          s10, t5, s5
                  slt          a5, s11, t2
                  srli         s4, gp, 27
988:              xori         s1, a4, 507
                  bge          a6, s3, 1001f
                  xor          a5, a0, a1
                  bge          s1, t6, 1009f
                  and          t2, s9, t4
                  xor          t4, t2, a3
994:              sub          a2, t5, s3
                  sub          t0, a2, a5
                  nop
                  slli         s3, s3, 7
                  lui          a2, 460902
                  slti         t5, sp, -1096
                  bne          sp, a4, 1017f
1001:             nop
                  xor          s2, s4, t0
                  lui          t0, 991488
                  or           gp, gp, t6
                  bne          a4, s6, 1019f
                  bltu         t3, t4, 1007f
1007:             blt          zero, s3, 1017f
                  and          gp, zero, s2
1009:             bgeu         t3, zero, 1015f
                  srai         s7, gp, 13
                  ori          t4, a5, 651
                  ori          a0, a0, -314
                  bge          s0, t6, 1026f
                  and          sp, s3, gp
1015:             bgeu         s7, s2, 1030f
                  nop
1017:             blt          s10, s4, 1029f
                  sltu         t4, s10, tp
1019:             and          t5, s10, t5
                  srai         s5, t0, 29
                  and          gp, t6, t6
                  slt          s3, s11, s3
                  slt          s1, t0, s7
                  slt          t4, s3, a7
                  xor          s11, zero, s2
1026:             xori         s11, s11, -1140
                  slti         s5, t1, 1658
                  blt          s6, s10, 1047f
1029:             auipc        s1, 180311
1030:             andi         s2, a3, -1407
                  xori         t6, a4, 18
                  xori         zero, s10, -431
                  andi         t1, s4, 590
                  andi         s8, a5, 507
                  beq          a2, a2, 1041f
                  andi         t1, s4, 426
                  srli         ra, s9, 28
                  sub          s10, s6, s11
                  srli         a0, a5, 25
                  bge          t2, t1, 1052f
1041:             sll          ra, a0, sp
                  srai         s7, s11, 0
                  and          zero, s9, t6
                  auipc        s5, 828708
                  ori          a4, t5, -1221
                  srl          a5, t0, s5
1047:             xor          ra, a0, a6
                  addi         a2, a7, 1786
                  bgeu         s4, s9, 1051f
                  bgeu         s0, a5, 1069f
1051:             andi         a4, s11, -1339
1052:             sltu         a5, s5, a0
                  bge          s9, t2, 1065f
                  bne          s8, s3, 1059f
                  slti         s1, t6, -850
                  srli         t2, a6, 9
                  sra          s2, a3, a2
                  ori          s0, zero, -129
1059:             blt          s0, s11, 1069f
                  beq          a4, a0, 1078f
                  sll          s10, a5, a2
                  ori          t2, t2, -865
                  sub          tp, a6, s10
                  beq          gp, s6, 1071f
1065:             bne          a3, zero, 1078f
                  addi         s0, zero, 1988
                  slti         a7, a2, -1684
                  srli         s0, s9, 14
1069:             xor          tp, s11, s6
                  ori          a0, s8, -377
1071:             addi         t5, s3, -774
                  sra          s0, a3, s8
                  xor          a0, s2, s6
                  or           t2, t1, a3
                  slti         t6, a1, 1819
                  lui          a5, 666495
                  srai         sp, a7, 11
1078:             srai         t0, a7, 18
                  blt          gp, t1, 1092f
                  auipc        a0, 902213
                  slt          a2, a0, t6
                  sltu         zero, a1, a0
                  beq          t1, t6, 1102f
                  slt          t1, ra, s10
                  slti         s8, s2, -1708
                  ori          t2, s5, -1860
                  slti         t0, a0, 1208
                  bge          t6, a0, 1103f
                  lui          a7, 200941
                  sll          s0, t3, sp
                  sub          s10, ra, s0
1092:             nop
                  and          s8, a7, s5
                  addi         t2, a5, -1012
                  srl          s7, zero, s7
                  slli         s3, s8, 29
                  sub          s2, t5, a0
                  nop
                  srai         s11, gp, 12
                  sll          s11, t3, a3
                  bne          zero, t1, 1104f
1102:             slti         a7, s3, -979
1103:             add          t5, s11, tp
1104:             srai         ra, s2, 2
                  and          t1, t4, s0
                  srai         s3, a7, 13
                  ori          s3, s3, -1748
                  add          sp, a3, t6
                  sub          s2, a4, s2
                  sltiu        ra, t5, -689
                  or           tp, t3, ra
                  beq          t0, a2, 1115f
                  slti         ra, t1, -1907
                  sltu         zero, s2, a7
1115:             bltu         t0, zero, 1126f
                  srli         a5, a5, 8
                  xor          ra, s4, s5
                  and          a5, t1, tp
                  or           sp, s6, s6
                  sub          s5, s1, t2
                  xor          s8, a2, gp
                  and          t1, t6, a1
                  add          a0, a6, s0
                  addi         t4, t1, 644
                  slti         t2, a0, 1368
1126:             sub          t0, s10, s6
                  bge          s0, zero, 1134f
                  srli         t2, a4, 1
                  bltu         s4, s2, 1135f
                  srai         gp, t1, 19
                  or           s0, s9, s6
                  andi         zero, a3, 1087
                  blt          s7, a1, 1134f
1134:             xor          a6, a7, zero
1135:             xori         gp, s0, 1654
                  blt          zero, s5, 1148f
                  bge          t1, s11, 1138f
1138:             bgeu         s11, a5, 1144f
                  bgeu         gp, s4, 1153f
                  bge          s3, s3, 1149f
                  sltiu        s4, s8, -1869
                  srl          s8, a2, s6
                  ori          a2, sp, -705
1144:             xor          sp, s0, s3
                  nop
                  bne          t5, a3, 1151f
                  slli         sp, gp, 11
1148:             srl          s5, t1, s1
1149:             sub          t4, s0, t1
                  ori          t2, a1, -191
1151:             addi         a7, t2, -1422
                  slli         a2, t3, 10
1153:             sra          a0, t0, s5
                  xor          zero, t5, a7
                  sltu         a6, a3, s2
                  bltu         s10, sp, 1167f
                  srl          a6, t5, s7
                  andi         a2, a4, 1916
                  slli         s1, a1, 23
                  slli         t2, a2, 20
                  sll          s1, s3, s3
                  lui          s3, 1006217
                  sra          t0, ra, a3
                  andi         t5, a0, 856
                  srli         ra, s9, 11
                  lui          t4, 705786
1167:             and          t3, a0, t4
                  blt          a7, a2, 1174f
                  bgeu         a0, a4, 1181f
                  bltu         tp, a6, 1180f
                  and          t3, s3, gp
                  addi         zero, s8, 512
                  ori          s1, s8, 1682
1174:             sltiu        zero, tp, -1358
                  slt          t6, t3, a2
                  ori          a2, t3, -1231
                  and          s6, t0, a0
                  beq          a4, a3, 1195f
                  sltu         s0, s4, a1
1180:             andi         a6, s8, 1088
1181:             and          gp, t4, a6
                  blt          t5, t1, 1188f
                  sub          t4, a5, a1
                  bne          s2, t3, 1198f
                  srl          s7, t0, sp
                  sltiu        sp, s11, 422
                  blt          s3, t2, 1200f
1188:             sltiu        a0, a1, 420
                  sra          t6, s11, t0
                  srli         s8, s6, 26
                  or           a6, s0, t3
                  andi         sp, a7, -763
                  srai         a4, t4, 2
                  srl          sp, t1, a4
1195:             sll          a2, gp, t2
                  srli         s10, sp, 5
                  bgeu         a5, zero, 1209f
1198:             slti         s10, s7, -918
                  xor          t6, s2, t5
1200:             xor          zero, t5, gp
                  srli         t1, a1, 15
                  bgeu         a5, s5, 1208f
                  addi         s7, a0, -1730
                  auipc        s10, 512306
                  srl          t6, s5, t4
                  blt          s2, s11, 1216f
                  sll          t0, a7, a6
1208:             sub          t5, t1, a0
1209:             srli         s7, tp, 8
                  lui          t5, 647540
                  xor          a2, s3, a6
                  and          a6, a5, t5
                  slt          s5, a3, a2
                  slli         t6, a2, 24
                  and          s2, s4, s2
1216:             xor          t0, t6, t3
                  bgeu         s9, s8, 1223f
                  blt          a5, a4, 1237f
                  andi         t6, s5, -740
                  sub          s5, t5, s5
                  and          a4, gp, t1
                  blt          s8, a6, 1224f
1223:             srli         a0, s11, 1
1224:             blt          a2, s1, 1229f
                  or           s0, s1, s4
                  srli         s8, a1, 28
                  and          a4, a5, zero
                  sra          a7, tp, s10
1229:             auipc        a0, 768463
                  lui          t5, 48409
                  beq          ra, s1, 1242f
                  srl          s1, t3, t5
                  andi         zero, a4, 1386
                  sltiu        t4, s11, -486
                  add          a6, a0, a4
                  add          s3, ra, a5
1237:             slli         a5, tp, 30
                  slli         s7, t1, 0
                  srai         zero, t5, 29
                  sltiu        zero, a6, -1520
                  sra          t0, t3, zero
1242:             bne          t4, s7, 1245f
                  and          a5, a2, zero
                  or           a2, s0, t0
1245:             and          t0, a6, ra
                  add          s8, a6, sp
                  sltiu        s1, t5, 1435
                  sltiu        s3, s1, -1603
                  sra          s8, s4, gp
                  bne          tp, t6, 1251f
1251:             sltu         s0, s2, t0
                  or           a2, a1, s6
                  nop
                  bltu         s11, a1, 1266f
                  sltu         gp, s6, t6
                  lui          gp, 376824
                  or           s6, a0, s2
                  slti         s7, t1, 1939
                  srl          t3, a4, zero
                  blt          a3, a2, 1267f
                  srai         s11, s2, 19
                  slt          s0, s10, s10
                  or           a0, t1, s7
                  nop
                  bne          t6, t2, 1276f
1266:             sra          a0, a2, a5
1267:             and          sp, a6, s8
                  beq          a3, s11, 1281f
                  lui          s5, 243445
                  add          sp, s4, t6
                  andi         s8, s5, -1582
                  andi         t2, s5, -653
                  bgeu         t3, s2, 1292f
                  addi         gp, zero, -8 #init loop 1 counter
                  srl          t6, t2, a5
                  addi         s6, zero, -13 #init loop 1 limit
                  addi         a5, a2, 1794
                  auipc        a4, 519117
                  and          s5, s9, s0
                  and          s2, a1, a6
                  lui          a5, 183884
                  or           tp, s0, t1
sub_5_0_1_t:      xor          a7, t4, t6
                  addi         gp, gp, -9 #update loop 1 counter
                  srl          a6, a4, s2
                  addi         ra, zero, -10 #init loop 0 counter
                  nop
                  xori         t4, sp, -230
                  sra          a2, a0, t4
                  and          s8, a2, s1
                  addi         s10, zero, -16 #init loop 0 limit
sub_5_0_0_t:      sltu         tp, a1, a6
                  and          s0, s3, a7
                  addi         ra, ra, -2 #update loop 0 counter
                  srli         s11, tp, 13
                  slt          s5, t5, t3
                  beq          ra, s10, sub_5_0_0_t #branch for loop 0
                  andi         t3, a6, 729
                  andi         s1, s0, 1362
                  slti         s8, ra, 1781
                  bge          gp, s6, sub_5_0_1_t #branch for loop 1
                  sltiu        t2, a1, -660
                  srl          gp, s6, t1
                  bgeu         t2, s10, 1278f
1276:             sltu         gp, t1, sp
                  bne          s1, s11, 1278f
1278:             sub          t3, s4, t3
                  srai         s7, s11, 10
                  andi         s6, s5, -205
1281:             bltu         s11, gp, 1287f
                  bne          a6, sp, 1294f
                  sub          a5, a4, t4
                  lui          s8, 808747
                  xor          s2, t0, gp
                  addi         a7, a6, 1997
1287:             sltiu        sp, sp, 485
                  xor          gp, s11, s0
                  bne          a0, t0, 1301f
                  sub          s6, a5, t1
                  beq          t4, a6, 1297f
1292:             auipc        s2, 117759
                  sltiu        s6, a4, -1139
1294:             srai         t6, a0, 16
                  bge          s1, a6, 1304f
                  lui          gp, 979663
1297:             bne          s4, sp, 1312f
                  sll          gp, a2, a3
                  auipc        gp, 575481
                  slti         s7, a5, 1411
1301:             sltiu        s10, s6, -165
                  xori         t1, s8, 505
                  add          zero, gp, tp
1304:             srli         s11, a4, 13
                  sltu         a0, t3, a2
                  slti         t1, t2, 976
                  bltu         gp, s3, 1324f
                  srai         s11, a7, 12
                  blt          a5, s7, 1316f
                  xori         t3, t4, -991
                  xor          s6, s4, s9
1312:             add          t5, t2, s11
                  sra          s4, a4, t0
                  slt          t6, s11, a5
                  bne          s2, s8, 1320f
1316:             sra          t1, s4, s1
                  blt          a7, a7, 1335f
                  addi         t1, s6, -1408
                  andi         t4, a6, -3
1320:             xori         t3, a1, 1710
                  slli         a5, zero, 3
                  ori          s7, s2, -726
                  xor          s11, a0, s6
1324:             addi         ra, a0, 1941
                  sll          t0, a3, a4
                  bltu         s3, s6, 1336f
                  andi         s7, s5, 796
                  slti         a0, a2, 816
                  slti         a4, sp, 1090
                  bge          s6, s10, 1343f
                  nop
                  add          a0, t4, t4
                  or           s5, s8, a6
                  auipc        t0, 890696
1335:             add          s3, a1, t4
1336:             xor          t4, s2, a5
                  auipc        s0, 102338
                  lui          s4, 889709
                  sltiu        s1, a3, -1192
                  srli         a2, t1, 3
                  sltu         sp, t5, t1
                  srl          a2, tp, s8
1343:             or           a6, s4, a6
                  sltu         a2, zero, s0
                  or           a4, a3, s9
                  srl          sp, t2, a4
                  bge          s10, t5, 1357f
                  beq          s5, s10, 1357f
                  sra          t3, a0, a5
                  blt          a0, a1, 1357f
                  srli         t6, s1, 14
                  sltiu        s6, s6, -1516
                  slti         s6, s7, 748
                  blt          ra, s0, 1357f
                  sll          tp, zero, s10
                  slti         a0, s0, -1846
1357:             sltiu        a4, a4, 1574
                  sltiu        a0, t1, 902
                  or           s6, a0, t6
                  lw           s4, 4(a1)
                  and          s8, a0, s10
                  sltu         s7, s10, t3
                  xor          gp, s9, s6
                  slli         s8, a3, 0
                  addi         a1, a1, 60
                  auipc        s3, 813816
                  srli         a7, t5, 30
                  sltu         s8, s10, tp
1913:             addi x24, x20, 1
1913:             jalr x24, x24, 0
sub_2:            sll          s0, t2, ra
                  slti         s1, s9, -1415
                  addi         a1, a1, -28
                  addi         sp, a0, 1528
                  sw           s4, 4(a1)
                  sltu         s1, gp, t0
                  ori          a2, s9, -105
                  and          t3, a6, t2
                  srl          a4, t6, t4
                  slti         a2, s2, 1440
                  or           s2, zero, a4
                  srli         s3, t1, 20
                  nop
                  srli         s1, s4, 24
                  sub          gp, s11, sp
                  la           sp, sub_3
                  sltiu        s8, a6, -613
                  addi         sp, sp, 171
                  or           t4, t6, s3
                  beq          s5, t6, sub_2_j4 #branch to jump instr
                  slti         zero, s2, -1523
sub_2_j4:         jalr         s4, sp, -171 #jump sub_2 -> sub_3
                  sra          a0, s6, s7
                  slt          a4, s4, a0
                  slt          sp, s2, s4
                  lui          s4, 1028931
                  slli         s11, s8, 6
                  and          s7, t3, s0
                  andi         t3, a7, -1459
                  bne          t6, t3, 17f
                  srl          s6, s5, s1
                  auipc        s1, 904827
                  beq          s8, s1, 22f
                  sltu         s0, a4, s11
                  add          a4, a0, s8
                  bltu         s3, s6, 29f
                  add          t3, zero, a3
                  sra          s8, s2, t4
                  ori          s11, zero, 1394
17:               bge          s4, tp, 34f
                  bgeu         a2, a7, 36f
                  slli         s2, a0, 10
                  slt          zero, s2, s5
                  bne          t6, t5, 23f
22:               slli         a4, s5, 20
23:               and          s3, t4, a6
                  andi         t5, t4, 19
                  addi         t5, a0, -511
                  addi         s3, zero, -178
                  ori          a0, s11, -1494
                  sll          s8, s9, s5
29:               sltu         t5, zero, s2
                  xori         s8, a6, 722
                  add          s5, gp, a0
                  slt          ra, s7, s6
                  add          s1, s9, a0
34:               nop
                  xor          a7, tp, a6
36:               or           t3, s7, s5
                  srli         s0, a4, 18
                  xori         a5, a2, 783
                  or           t0, a3, a4
                  srai         t6, a3, 14
                  beq          t3, t3, 44f
                  lui          zero, 204956
                  slt          s10, t5, s9
44:               sltiu        a2, s0, 549
                  slti         t4, gp, 1653
                  lw           s4, 4(a1)
                  addi         a1, a1, 28
                  sltiu        a6, a4, 358
                  xori         a7, a4, -1871
                  ori          s10, a1, -232
                  addi         t0, a2, -1872
                  slti         gp, s0, -1155
                  ori          t5, s7, 3
                  or           t5, s0, s8
77:               addi x27, x20, 1
77:               jalr x27, x27, 0
sub_4:            beq          a5, s8, sub_4_stack_p
                  xor          s10, a4, a0
                  srai         ra, t6, 5
sub_4_stack_p:    addi         a1, a1, -36
                  xor          s7, a4, a4
                  xor          t1, s10, s7
                  sw           s4, 4(a1)
                  srai         a2, s0, 19
                  srli         s0, s8, 29
                  blt          a7, t2, 8f
                  sll          s10, s1, t0
                  addi         gp, gp, -1410
                  bgeu         s11, s7, 10f
                  xor          sp, t3, a1
                  slt          s5, s11, a6
                  srai         s4, s11, 24
                  auipc        s3, 154759
8:                or           t4, t1, zero
                  srai         a7, t0, 27
10:               slti         t2, t2, 984
                  lw           s4, 4(a1)
                  auipc        s2, 872964
                  slt          t4, zero, s4
                  addi         a1, a1, 36
                  and          ra, t6, a5
25:               addi x7, x20, 1
25:               jalr x7, x7, 0
sub_1:            blt          s7, s1, sub_1_stack_p
                  sll          ra, a5, s10
sub_1_stack_p:    addi         a1, a1, -60
                  add          t6, a5, a6
                  sw           s4, 4(a1)
                  add          t5, s8, t4
                  la           t5, sub_2
                  sll          t4, s4, s4
                  addi         t5, t5, -296
                  srli         s5, a4, 0
                  addi         s2, s5, -588
                  auipc        s8, 962635
                  bge          tp, s2, sub_1_j2 #branch to jump instr
                  slti         sp, zero, -1824
sub_1_j2:         jalr         s4, t5, 296 #jump sub_1 -> sub_2
                  sll          s0, t4, s5
                  lui          s11, 242887
                  nop
                  xori         zero, s10, -784
                  sub          s5, a7, a6
                  la           s4, sub_2
                  andi         a0, t0, -364
                  addi         s4, s4, -285
                  xori         a2, s8, 589
sub_1_j3:         jalr         s4, s4, 285 #jump sub_1 -> sub_2
                  addi         gp, ra, 1468
                  bltu         t5, a7, 13f
                  sra          s5, a3, gp
                  srl          a0, t0, t5
                  srl          s3, a1, s5
                  or           s4, t0, s4
                  ori          ra, tp, 830
                  bltu         a6, s2, 13f
                  srl          a0, s11, s5
                  and          gp, a7, t0
                  blt          s4, a6, 13f
                  blt          s5, a6, 13f
                  ori          a0, sp, -1327
13:               xor          s5, s7, s0
                  and          t6, ra, s10
                  lw           s4, 4(a1)
                  xori         s3, s3, 750
                  addi         a1, a1, 60
                  and          s11, s10, a5
44:               addi x23, x20, 0
44:               jalr x23, x23, 0
sub_3:            bltu         a6, s2, sub_3_stack_p
                  srli         s0, t0, 8
sub_3_stack_p:    addi         a1, a1, -24
                  or           tp, s1, s5
                  slt          a0, zero, t2
                  sw           s4, 4(a1)
                  auipc        zero, 377424
                  srai         t6, t5, 21
                  srai         gp, t1, 12
                  srli         gp, s1, 6
                  slti         a7, t1, -100
                  srli         a0, s7, 6
                  or           s10, a6, s10
                  xor          t2, s2, ra
                  xor          t6, s11, t1
                  sltu         s6, zero, s6
sub_3_j5:         jal          s4, sub_5 #jump sub_3 -> sub_5
                  sra          a4, ra, s8
                  xori         a6, tp, 1393
                  lui          s3, 885945
                  nop
                  nop
                  la           t6, sub_4
                  addi         t6, t6, 145
                  sub          a5, s7, s8
                  srai         a7, s1, 11
                  xori         a6, t3, 437
sub_3_j6:         jalr         s4, t6, -145 #jump sub_3 -> sub_4
                  andi         s7, s2, 1632
                  sra          sp, a3, ra
                  blt          a7, a7, sub_3_j7 #branch to jump instr
                  sra          a7, s8, zero
                  nop
                  slt          sp, t0, tp
sub_3_j7:         jal          s4, sub_5 #jump sub_3 -> sub_5
                  srl          a0, t1, gp
                  blt          s10, tp, 7f
                  sub          tp, s3, ra
                  bge          t1, a5, 12f
                  sub          a7, ra, t5
                  addi         s6, a5, 739
                  slt          t4, s6, tp
7:                sltiu        t5, a3, -1252
                  sll          zero, t4, t2
                  slt          t2, a0, s10
                  auipc        s4, 14505
                  beq          s1, s4, 12f
12:               sub          a6, t2, t6
                  lw           s4, 4(a1)
                  sll          s3, zero, t4
                  sltiu        t0, a4, -370
                  sll          sp, s8, a7
                  ori          t3, a2, 802
                  xor          gp, zero, s5
                  slt          t1, a6, zero
                  addi         a1, a1, 24
                  nop
57:               addi x26, x20, 0
57:               jalr x26, x26, 0
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
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x13, x11, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_2:
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x13, x11, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_3:
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x13, x11, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_4:
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x13, x11, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_5:
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x13, x11, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_6:
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x13, x11, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_7:
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x13, x11, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_8:
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x13, x11, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_9:
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x13, x11, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_10:
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x13, x11, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_11:
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x13, x11, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_12:
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x13, x11, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_13:
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x13, x11, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_14:
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x13, x11, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_15:
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x13, x11, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x13, x11, zero
                  csrr x10, 0x341 # MEPC
                  csrr x10, 0x342 # MCAUSE
                  li x19, 0x3 # BREAKPOINT
                  beq x10, x19, ebreak_handler
                  li x19, 0x8 # ECALL_UMODE
                  beq x10, x19, ecall_handler
                  li x19, 0x9 # ECALL_SMODE
                  beq x10, x19, ecall_handler
                  li x19, 0xb # ECALL_MMODE
                  beq x10, x19, ecall_handler
                  li x19, 0x1
                  beq x10, x19, instr_fault_handler
                  li x19, 0x5
                  beq x10, x19, load_fault_handler
                  li x19, 0x7
                  beq x10, x19, store_fault_handler
                  li x19, 0xc
                  beq x10, x19, pt_fault_handler
                  li x19, 0xd
                  beq x10, x19, pt_fault_handler
                  li x19, 0xf
                  beq x10, x19, pt_fault_handler
                  li x19, 0x2 # ILLEGAL_INSTRUCTION
                  beq x10, x19, illegal_instr_handler
                  csrr x19, 0x343 # MTVAL
                  1: la x25, test_done
                  jalr x1, x25, 0

ecall_handler:    
                  la x10, _start
                  sw x0, 0(x10)
                  sw x1, 4(x10)
                  sw x2, 8(x10)
                  sw x3, 12(x10)
                  sw x4, 16(x10)
                  sw x5, 20(x10)
                  sw x6, 24(x10)
                  sw x7, 28(x10)
                  sw x8, 32(x10)
                  sw x9, 36(x10)
                  sw x10, 40(x10)
                  sw x11, 44(x10)
                  sw x12, 48(x10)
                  sw x13, 52(x10)
                  sw x14, 56(x10)
                  sw x15, 60(x10)
                  sw x16, 64(x10)
                  sw x17, 68(x10)
                  sw x18, 72(x10)
                  sw x19, 76(x10)
                  sw x20, 80(x10)
                  sw x21, 84(x10)
                  sw x22, 88(x10)
                  sw x23, 92(x10)
                  sw x24, 96(x10)
                  sw x25, 100(x10)
                  sw x26, 104(x10)
                  sw x27, 108(x10)
                  sw x28, 112(x10)
                  sw x29, 116(x10)
                  sw x30, 120(x10)
                  sw x31, 124(x10)
                  la x25, write_tohost
                  jalr x0, x25, 0

instr_fault_handler:
                  add x11, x13, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  mret

load_fault_handler:
                  add x11, x13, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  mret

store_fault_handler:
                  add x11, x13, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  mret

ebreak_handler:   
                  csrr  x10, 0x341
                  addi  x10, x10, 4
                  csrw  0x341, x10
                  add x11, x13, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  mret

illegal_instr_handler:
                  csrr  x10, 0x341
                  addi  x10, x10, 4
                  csrw  0x341, x10
                  add x11, x13, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x10, 0x300 # MSTATUS;
                  csrr  x10, 0x304 # MIE;
                  csrr  x10, 0x344 # MIP;
                  csrrc x10, 0x344, x10 # MIP;
                  add x11, x13, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
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
