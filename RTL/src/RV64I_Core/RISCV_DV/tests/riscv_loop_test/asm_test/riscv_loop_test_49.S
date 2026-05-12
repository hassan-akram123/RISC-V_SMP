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
                  la x5, kernel_stack_end

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
                  li x1, 0x0
                  li x2, 0xf6ddbded
                  li x3, 0xf12f1958
                  li x4, 0xf16e0a12
                  li x6, 0xfba84b83
                  li x7, 0xf
                  li x8, 0x20de8bd2
                  li x9, 0xd
                  li x10, 0x80000000
                  li x11, 0x4
                  li x12, 0x3
                  li x13, 0xfbcc40a0
                  li x14, 0x0
                  li x15, 0xc
                  li x17, 0xfc9e7f2a
                  li x18, 0x80000000
                  li x19, 0x80000000
                  li x20, 0x340ca5c7
                  li x21, 0x7b0bb899
                  li x22, 0xc386a577
                  li x23, 0x0
                  li x24, 0x3
                  li x25, 0xd
                  li x26, 0x80000000
                  li x27, 0x80000000
                  li x28, 0x2
                  li x29, 0x80000000
                  li x30, 0xdb369112
                  li x31, 0xfeb1d9eb
                  la x16, user_stack_end
main:             addi         a3, zero, 4 #init loop 1 counter
                  addi         ra, zero, 14 #init loop 1 limit
main_3_1_t:       ori          t2, t2, -1723
                  addi         a3, a3, 10 #update loop 1 counter
                  add          zero, s8, a2
                  sra          s2, s3, s0
                  addi         s6, zero, 5 #init loop 0 counter
                  nop
                  addi         gp, zero, 3 #init loop 0 limit
main_3_0_t:       xori         a5, a6, -336
                  addi         s6, s6, -1 #update loop 0 counter
                  bgeu         s6, gp, main_3_0_t #branch for loop 0
                  xori         t3, s3, -521
                  sltiu        s8, t2, 1206
                  sra          t4, t1, s4
                  addi         s5, s9, -1384
                  beq          a3, ra, main_3_1_t #branch for loop 1
                  srl          t2, s7, t3
                  addi         gp, zero, 10 #init loop 1 counter
                  auipc        t3, 480212
                  slli         a7, gp, 27
                  srli         s8, t6, 2
                  nop
                  srli         ra, t4, 15
                  xori         a1, a1, 550
                  addi         s1, zero, 8 #init loop 1 limit
                  auipc        s3, 711972
main_2_1_t:       lui          a0, 837347
                  addi         gp, gp, -7 #update loop 1 counter
                  slli         t3, t4, 15
                  add          t4, a7, t3
                  and          t5, s8, s2
                  and          t3, s6, t4
                  addi         a5, zero, 9 #init loop 0 counter
                  sub          s6, s11, s6
                  addi         s10, zero, 11 #init loop 0 limit
main_2_0_t:       and          a1, ra, s9
                  addi         s7, s3, 1443
                  addi         a5, a5, 6 #update loop 0 counter
                  slli         tp, s6, 29
                  blt          a5, s10, main_2_0_t #branch for loop 0
                  or           s4, s2, s5
                  sll          s0, t5, s11
                  bgeu         gp, s1, main_2_1_t #branch for loop 1
                  nop
                  addi         tp, zero, -7 #init loop 0 counter
                  and          zero, a6, s10
                  sltu         s0, gp, a4
                  sra          s6, s1, s2
                  lui          gp, 223825
                  slli         s3, a0, 31
                  addi         s10, zero, -3 #init loop 0 limit
                  srl          t5, a1, a1
                  sltu         t4, s3, s6
main_4_0_t:       add          s5, s5, s4
                  addi         t4, t2, 405
                  sltu         a0, ra, sp
                  srl          s7, s11, s6
                  sra          t5, a1, a1
                  and          a1, a7, a3
                  ori          a3, tp, -862
                  add          t4, t0, t0
                  addi         tp, tp, 4 #update loop 0 counter
                  slti         s5, t5, -1890
                  srai         a5, t3, 6
                  slt          s0, t6, s6
                  bne          tp, s10, main_4_0_t #branch for loop 0
                  add          t6, s10, tp
                  addi         t2, zero, 7 #init loop 0 counter
                  sll          t4, s2, a1
                  or           t5, t5, s9
                  auipc        a2, 315262
                  auipc        a7, 333680
                  add          s4, s2, s5
                  srai         s4, ra, 12
                  addi         t1, sp, 767
                  srai         t4, gp, 14
                  xor          zero, t3, s0
                  addi         a0, zero, 7 #init loop 0 limit
                  sra          t5, tp, s6
                  xori         t4, a6, 1397
main_7_0_t:       or           s4, s7, s6
                  lui          s7, 416671
                  addi         t2, t2, -4 #update loop 0 counter
                  auipc        t4, 749820
                  sltu         s8, t5, t3
                  xor          t6, s6, ra
                  and          t4, a5, a4
                  nop
                  sltiu        s10, s7, 1133
                  sll          a5, s6, t3
                  bgeu         t2, a0, main_7_0_t #branch for loop 0
                  auipc        t3, 575382
                  addi         sp, zero, -5 #init loop 0 counter
                  sltu         a7, s5, a5
                  xor          s4, ra, a0
                  sltu         t6, a1, a6
                  ori          a2, s9, 13
                  lui          t4, 999905
                  srl          t5, t5, t5
                  xor          a7, a1, t3
                  addi         s10, zero, -11 #init loop 0 limit
                  sub          s1, a7, a0
                  ori          zero, t6, -730
                  sub          s4, t6, t0
                  sltu         gp, zero, s9
                  nop
                  auipc        a2, 295280
                  and          ra, s8, a3
                  andi         t5, tp, -1883
                  xori         a3, s10, 1388
                  sltiu        s4, t3, -466
                  sltiu        zero, a1, -880
                  lui          s0, 94981
                  sltiu        zero, s8, 36
main_0_0_t:       ori          s0, gp, 366
                  xor          t5, a3, ra
                  addi         sp, sp, -2 #update loop 0 counter
                  xor          s5, a0, sp
                  srli         a2, t6, 3
                  bne          sp, s10, main_0_0_t #branch for loop 0
                  and          s3, t5, s10
                  addi         s6, zero, 10 #init loop 0 counter
                  nop
                  xori         s3, t0, 1920
                  sll          s8, t6, a2
                  nop
                  srli         a1, t2, 1
                  slli         t5, s8, 2
                  xori         zero, t6, -939
                  sltu         ra, tp, t6
                  sltu         s10, t3, t1
                  addi         t2, zero, 19 #init loop 0 limit
main_1_0_t:       sub          s9, s11, s10
                  sll          a3, s10, t3
                  xori         t4, s2, -132
                  addi         s6, s6, 6 #update loop 0 counter
                  slli         s4, a1, 7
                  slli         gp, a2, 13
                  xor          s2, s7, s3
                  add          s7, s0, gp
                  auipc        t3, 34178
                  slti         a2, t4, 1295
                  bltu         s6, t2, main_1_0_t #branch for loop 0
                  xor          s4, t5, s5
                  auipc        t5, 255240
                  nop
                  bgeu         s1, zero, 13f
                  srl          s1, t2, s6
                  sltu         s4, a6, t0
                  and          t6, a4, s11
                  sra          t5, t4, s6
                  xori         s10, sp, 1940
                  sltu         a1, a6, s3
                  nop
                  beq          a7, a5, 26f
                  srli         a1, t0, 24
                  auipc        s4, 402496
13:               nop
                  and          zero, s1, a0
                  nop
                  srl          a3, gp, s3
                  bgeu         t3, ra, 30f
                  beq          a3, a3, 35f
                  sra          tp, a6, s3
                  beq          t1, a2, 26f
                  slt          t5, s11, s1
                  bltu         t6, a7, 31f
                  bne          t6, t6, 31f
                  bgeu         ra, a6, 28f
                  sll          a5, tp, t3
26:               ori          t2, tp, 806
                  ori          s6, t0, 1255
28:               andi         s9, s3, 1915
                  srai         s7, t1, 8
30:               sltu         s7, s7, a5
31:               sll          tp, a0, s2
                  bltu         zero, gp, 47f
                  slti         s5, s3, 1721
                  or           s6, a2, s11
35:               blt          sp, t6, 50f
                  nop
                  srai         t3, s1, 18
                  beq          t5, a5, 56f
                  and          t6, a6, t2
                  sll          a7, s6, s11
                  srl          a7, s11, s10
                  bne          s5, t5, 44f
                  ori          a7, zero, 1942
44:               sll          s10, sp, a7
                  slti         s1, s6, -946
                  slti         t1, s7, -374
47:               bne          s0, a4, 50f
                  beq          s8, t3, 67f
                  srl          a3, s5, t0
50:               srai         sp, t6, 28
                  bgeu         t3, a3, 61f
                  sltu         s8, a5, s4
                  sltiu        s7, s8, -997
                  slli         s1, tp, 21
                  nop
56:               lui          s5, 665522
                  bgeu         s9, t5, 75f
                  xor          s8, t2, s0
                  sub          s10, t4, s1
                  srl          a2, s9, s2
61:               sub          t1, tp, s9
                  nop
                  lui          a2, 562605
                  sltu         s3, s6, a0
                  auipc        s3, 274632
                  xori         s9, t1, -1303
67:               bltu         t3, a2, 69f
                  slt          s11, a3, s6
69:               or           s6, t5, a5
                  auipc        a3, 663042
                  andi         s6, s5, 46
                  bltu         s4, a2, 84f
                  srl          t4, sp, s10
                  add          a0, s10, tp
75:               srai         s7, s7, 28
                  bne          t0, s9, 78f
                  slti         zero, t2, 323
78:               and          t6, a0, a6
                  srli         a2, s8, 17
                  sub          s2, t4, s9
                  srli         t3, s8, 12
                  auipc        a1, 940805
                  xor          a5, sp, t1
84:               lui          s9, 150255
                  or           zero, a3, a7
                  sra          s5, s4, a2
                  beq          t5, a5, 103f
                  beq          a3, s6, 104f
                  sra          t1, s10, ra
                  srli         s11, t1, 7
                  slli         a3, t4, 8
                  ori          s6, s10, -823
                  and          sp, s8, s8
                  bgeu         t3, ra, 95f
95:               bltu         s10, t3, 106f
                  bne          s4, s2, 110f
                  srl          a2, s11, t6
                  sub          t1, t5, t6
                  slt          s9, s1, s11
                  sltiu        s2, s4, 296
                  auipc        a2, 638144
                  srl          s3, s3, s8
103:              beq          s0, s1, 105f
104:              nop
105:              slti         s9, a2, 1477
106:              sltu         t1, a7, a2
                  sltu         a2, s10, s5
                  bltu         t0, t6, 116f
                  bne          a2, s4, 118f
110:              bge          s1, a0, 129f
                  slti         a2, a5, -1296
                  xori         s5, s11, 1402
                  sltu         a1, ra, t2
                  srli         s8, s1, 31
                  slli         t6, s1, 30
116:              sra          gp, t1, a1
                  xor          tp, a3, t5
118:              beq          a3, s8, 138f
                  blt          a2, a2, 123f
                  slli         s2, s11, 18
                  slli         tp, gp, 5
                  lui          s6, 244108
123:              nop
                  slli         s7, a1, 12
                  slt          a7, a0, s4
                  srli         s4, s5, 27
                  blt          a2, s0, 130f
                  bltu         a6, s9, 136f
129:              addi         s9, a4, -1274
130:              or           s11, ra, t0
                  bltu         s0, t1, 150f
                  xor          s6, s10, s6
                  ori          a1, a1, -1917
                  bgeu         a2, s10, 145f
                  slt          s2, a5, s9
136:              nop
                  and          s0, t3, s5
138:              sltu         ra, a0, a6
                  beq          sp, s6, 151f
                  slt          a1, ra, a4
                  add          t3, tp, a1
                  sll          a5, s6, s0
                  addi         t3, a6, 1962
                  srl          t3, s6, s3
145:              srli         a5, s10, 9
                  ori          a2, t3, 624
                  sltiu        s4, s10, 1500
                  nop
                  bge          t1, t3, 167f
150:              andi         s3, s6, 1309
151:              or           t6, s9, s4
                  addi         t4, s9, -686
                  beq          t0, a3, 155f
                  srli         a0, t3, 20
155:              blt          a5, s3, 175f
                  sra          t2, zero, t1
                  addi         s4, s10, -934
                  sub          s1, a5, a3
                  bne          a7, t1, 175f
                  and          a1, s11, s3
                  srli         t3, t0, 8
                  srl          s9, t4, a4
                  bne          t1, s3, 173f
                  sltiu        s8, s3, -2030
                  srai         s5, t3, 6
                  beq          sp, s3, 175f
167:              sll          s4, s4, sp
                  beq          sp, s3, 174f
                  srl          t1, t3, s0
                  sltu         t6, sp, t1
                  auipc        t1, 890228
                  andi         s5, t1, -715
173:              srai         s11, t2, 18
174:              srl          gp, gp, t5
175:              sltiu        tp, sp, 1701
                  srl          zero, gp, s2
                  sub          s8, s7, a3
                  slti         a2, t4, 411
                  blt          zero, t2, 181f
                  sll          s5, a7, s11
181:              auipc        s9, 309917
                  xori         s3, s5, -1066
                  add          t3, a0, a1
                  blt          a0, s9, 199f
                  auipc        a1, 660844
                  beq          t2, s8, 203f
                  nop
                  or           t1, s3, gp
                  auipc        ra, 899753
                  bltu         ra, a2, 205f
                  add          t5, sp, zero
                  sra          t3, a4, a6
                  nop
                  bltu         a4, s6, 205f
                  srl          s0, s0, s4
                  sll          a2, s5, t3
                  or           s2, s10, t1
                  sub          s0, a1, a2
199:              bgeu         a7, t3, 201f
                  sltu         t2, s5, s0
201:              ori          t6, s5, 1398
                  slti         t4, t0, 1281
203:              xori         s8, zero, 703
                  slli         s7, a3, 3
205:              slli         s9, sp, 17
                  or           s11, t2, a7
                  ori          a7, a3, 1294
                  xor          t3, t3, t4
                  blt          a6, a5, 225f
                  srl          s2, zero, a2
                  bltu         s8, s9, 219f
                  auipc        t2, 354996
                  andi         t1, s0, -582
                  slti         s7, s3, 710
                  beq          a2, t6, 231f
                  sra          s8, s11, a5
                  lui          s1, 530559
                  add          s10, zero, t6
219:              bge          sp, gp, 221f
                  xor          s10, a6, s10
221:              slli         a1, t2, 17
                  add          s0, sp, sp
                  andi         gp, s3, -434
                  slt          a5, gp, a5
                  srli         a1, t3, 13
                  la           a7, sub_1
                  xor          s6, a3, zero
                  sub          gp, s6, s9
                  addi         a7, a7, -607
                  sll          ra, a5, s11
main_j1:          jalr         a0, a7, 608 #jump main -> sub_1
                  srl          a1, s7, s10
225:              sltiu        t5, t6, -1029
                  srli         a7, a5, 19
                  sltu         a2, t3, s0
                  ori          t6, s8, -2028
                  beq          a6, s8, 233f
                  slt          a5, s0, s2
231:              srl          t1, s3, ra
                  ori          t4, ra, 1375
233:              sub          a7, t1, a3
                  auipc        tp, 26301
                  auipc        a1, 908159
                  slli         a1, s1, 5
                  lui          t4, 780077
                  lui          zero, 73355
                  blt          a4, s1, 257f
                  srli         s3, a5, 24
                  bltu         a0, s2, 255f
                  bgeu         s7, s1, 243f
243:              sll          a5, a1, t0
                  sra          t3, a7, s1
                  addi         s0, a0, 357
                  or           s8, a0, s2
                  nop
                  sra          tp, s8, t4
                  sltu         a2, t0, zero
                  xor          gp, ra, s10
                  sltiu        s2, ra, 34
                  ori          s2, sp, -836
                  addi         tp, zero, -10 #init loop 1 counter
                  sub          t1, a4, a4
                  sub          s10, s7, s6
                  xori         t6, a1, -651
                  addi         s7, zero, 14 #init loop 1 limit
main_5_1_t:       sltiu        s1, t0, 1927
                  slli         t2, sp, 6
                  auipc        a5, 807008
                  ori          s8, s0, 938
                  addi         tp, tp, 1 #update loop 1 counter
                  sra          a2, t2, s9
                  addi         s0, zero, 8 #init loop 0 counter
                  lui          t3, 426853
                  nop
                  sub          a0, t2, gp
                  addi         a7, zero, -12 #init loop 0 limit
                  add          zero, s6, s7
                  auipc        s5, 775008
                  sll          t1, s9, t0
main_5_0_t:       and          sp, s3, t2
                  add          s8, gp, t5
                  xor          s3, s5, sp
                  sra          gp, ra, s6
                  sra          s4, t0, a1
                  nop
                  and          s3, t1, t3
                  addi         s0, s0, -9 #update loop 0 counter
                  ori          sp, s8, -465
                  bge          s0, a7, main_5_0_t #branch for loop 0
                  add          sp, s4, s7
                  auipc        s2, 323656
                  beq          tp, s7, main_5_1_t #branch for loop 1
                  add          s8, s11, s8
                  beq          gp, s10, 257f
                  lui          s2, 906039
255:              sll          s4, a7, tp
                  sub          s2, t0, s11
257:              sltiu        t1, t0, 1392
                  srai         s1, s2, 1
                  lui          t1, 863338
                  slti         a1, s10, -646
                  srai         s8, s5, 8
                  sltu         t4, sp, a7
                  sltu         a3, tp, s10
                  bge          a4, sp, 283f
                  andi         s7, t6, -1555
                  srl          s4, a2, t1
                  srl          s4, s4, a3
                  srai         t3, s4, 22
                  slli         s3, tp, 4
                  ori          s2, a5, -164
                  xori         sp, s0, 1906
                  xori         t1, a0, -727
                  add          s2, a0, s4
                  srl          sp, t1, a3
                  bltu         t3, sp, 284f
                  sltiu        tp, t6, 1526
                  slt          a1, a5, s6
                  sra          t4, s2, a6
                  sltu         a0, s2, a7
                  srl          a2, s6, a5
                  lui          s8, 745243
                  bltu         t0, a5, 295f
283:              bge          tp, s0, 303f
284:              beq          s9, s7, 299f
                  beq          s7, gp, 287f
                  slt          a3, gp, s7
287:              sltu         s8, ra, tp
                  sltiu        ra, a6, 1984
                  sltiu        zero, a2, 511
                  nop
                  sub          sp, a4, t2
                  beq          t0, sp, 308f
                  auipc        zero, 697502
                  add          s3, a4, gp
295:              xori         s10, s5, 277
                  beq          sp, t5, 304f
                  nop
                  xor          s0, s2, s9
299:              blt          s8, gp, 318f
                  ori          zero, s11, 1276
                  xori         s7, gp, -1729
                  bne          a2, s5, 319f
303:              and          s7, s1, t4
304:              slli         t3, ra, 30
                  lui          s0, 737796
                  slti         t5, a3, -1038
                  slli         s10, zero, 21
308:              and          gp, s0, s2
                  addi         a2, a3, 1037
                  sra          t3, a5, s3
                  auipc        sp, 246138
                  add          s7, a3, t4
                  nop
                  slti         a0, s6, -741
                  beq          s8, s10, 327f
                  ori          s9, s11, -459
                  slti         a0, s11, 1651
318:              sll          t5, a7, zero
319:              sltu         t1, s4, a6
                  srl          s1, zero, a5
                  xor          s10, s1, s6
                  add          t5, gp, s8
                  slti         t2, t6, -163
                  beq          a3, s5, 342f
                  sltiu        t2, a4, -510
                  xori         s2, a7, -1817
327:              sra          s6, t3, s1
                  sltu         t2, a0, s0
                  sltiu        a2, a0, 128
                  and          ra, sp, t1
                  auipc        a0, 274579
                  add          tp, t5, a1
                  lui          a1, 800673
                  sltiu        s9, gp, 90
                  add          s2, gp, a4
                  bge          a2, t0, 350f
                  sltiu        s6, gp, 1720
                  blt          zero, t5, 340f
                  slli         tp, s11, 9
340:              srai         t6, s2, 4
                  srai         s5, tp, 24
342:              or           s8, sp, ra
                  sub          s3, s2, s3
                  nop
                  auipc        gp, 273234
                  and          s7, s3, zero
                  xor          a1, zero, a4
                  lui          a2, 144138
                  bltu         t6, gp, 367f
350:              slt          a2, a1, gp
                  bltu         t1, t2, 355f
                  srl          a3, zero, s1
                  nop
                  bne          s1, s5, 363f
355:              sub          s7, a0, a2
                  sra          a2, a3, t5
                  auipc        s10, 138315
                  xori         t4, tp, -689
                  or           t4, a2, t3
                  sll          s4, s6, s4
                  xor          s10, s9, s9
                  sra          t4, s8, s7
363:              slt          sp, a7, s1
                  and          t2, ra, s2
                  nop
                  slti         s7, s8, -334
367:              sub          s4, t5, s10
                  bne          s11, a3, 384f
                  auipc        s10, 977262
                  blt          gp, ra, 386f
                  addi         a5, zero, -8 #init loop 0 counter
                  auipc        a3, 468333
                  slti         t1, a0, 1936
                  addi         s8, zero, 8 #init loop 0 limit
                  auipc        s2, 305399
                  andi         gp, a0, 831
                  slti         t5, zero, 1955
main_6_0_t:       sub          s5, s4, a5
                  sltu         s11, ra, t6
                  and          s5, t1, s8
                  xori         a0, s1, 1987
                  xori         zero, s10, -1737
                  addi         a1, s11, -1881
                  slli         s3, a0, 20
                  addi         s7, t6, -1604
                  addi         a5, a5, 4 #update loop 0 counter
                  auipc        ra, 910960
                  xor          s0, t3, t5
                  auipc        t5, 927217
                  nop
                  beq          a5, s8, main_6_0_t #branch for loop 0
                  slli         a2, s0, 9
                  sltiu        s9, t4, 114
                  xor          a5, t2, t0
                  bne          a3, s3, 386f
                  xori         a1, t2, -1109
                  lui          s3, 693145
                  blt          s3, tp, 385f
                  addi         s8, t1, 952
                  bge          a0, t2, 380f
                  bge          t3, a3, 380f
380:              xori         t2, s4, 398
                  addi         t5, zero, -1617
                  xori         t4, a1, 487
                  sub          a5, sp, s1
384:              auipc        gp, 896121
385:              beq          s2, ra, 389f
386:              sra          tp, s2, t3
                  xor          t2, s7, s8
                  xori         t3, s1, -942
389:              blt          s4, s9, 392f
                  nop
                  auipc        a5, 732518
392:              beq          a4, s0, 400f
                  beq          a5, t1, 404f
                  add          t5, tp, a6
                  srl          s10, s5, a4
                  xor          t3, s2, tp
                  beq          a3, a1, 412f
                  bne          a3, a5, 408f
                  srl          a1, t2, s4
400:              sra          s10, tp, t0
                  sra          s6, zero, s3
                  beq          s9, t2, 421f
                  srai         zero, a6, 25
404:              xor          a1, s6, t6
                  sra          tp, s0, a6
                  blt          ra, gp, 412f
                  xor          s10, s8, s2
408:              bne          s3, s3, 419f
                  sll          t2, sp, s7
                  srai         t5, ra, 29
                  sltiu        t6, s6, 1665
412:              nop
                  sra          s0, ra, t6
                  ori          t2, t4, -1337
                  sll          s6, a5, a1
                  srl          a1, ra, t4
                  beq          s11, tp, 419f
                  or           t1, s11, s7
419:              andi         a1, s11, 1052
                  bne          a3, t1, 428f
421:              andi         t2, ra, -807
                  slt          a1, t1, sp
                  sub          s5, s2, a0
                  srli         a2, s8, 10
                  sltiu        s6, a0, -686
                  bgeu         t6, sp, 428f
                  bgeu         s2, s8, 428f
428:              andi         ra, a5, -819
                  la x14, test_done
                  jalr x0, x14, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            addi         a6, a6, -28
                  srl          t1, s11, s1
                  sra          s3, a0, a0
                  sw           a0, 4(a6)
                  slt          gp, s8, tp
                  srli         s10, a7, 9
                  sltu         a5, s2, t6
                  la           a2, sub_3
                  slt          zero, s2, t6
                  addi         a2, a2, 5
                  srli         tp, s0, 22
                  bgeu         s9, a7, sub_2_j4 #branch to jump instr
                  sub          a7, t1, a6
                  addi         tp, s4, 198
sub_2_j4:         jalr         a0, a2, -4 #jump sub_2 -> sub_3
                  lui          s10, 369673
                  srli         t1, tp, 3
                  xor          a5, s6, s10
                  lui          a1, 159632
                  add          tp, t0, s5
sub_2_j5:         jal          a0, sub_4 #jump sub_2 -> sub_4
                  or           t4, s10, s5
                  bge          s11, s2, sub_2_j6 #branch to jump instr
                  sra          s11, t6, s2
                  addi         s1, tp, 1720
                  or           a7, zero, gp
                  srl          tp, t1, a5
sub_2_j6:         jal          a0, sub_5 #jump sub_2 -> sub_5
                  bge          a7, t0, 9f
                  add          ra, a1, s0
                  nop
                  bgeu         s7, s7, 12f
                  slli         gp, t2, 2
                  bgeu         a2, t5, 12f
                  bge          zero, ra, 12f
                  sub          a5, a6, a1
                  addi         sp, s4, -451
9:                slti         t4, s3, -1743
                  add          t2, t6, a6
                  or           a2, gp, sp
12:               slt          t5, t1, a4
                  xor          s3, t5, a2
                  lw           a0, 4(a6)
                  addi         t5, gp, -1109
                  addi         a6, a6, 28
                  add          s6, s10, a0
46:               addi x23, x10, 1
46:               jalr x23, x23, 0
sub_4:            blt          a1, tp, sub_4_stack_p
                  sltiu        s1, a3, 1699
                  srli         t5, t1, 15
sub_4_stack_p:    addi         a6, a6, -60
                  auipc        a2, 318575
                  sw           a0, 4(a6)
                  sltu         t5, s2, t3
                  srai         ra, ra, 0
                  sltu         s5, s10, a4
                  bltu         t1, a4, 11f
                  slt          ra, s6, t4
                  xor          s2, zero, s5
                  blt          t4, s3, 13f
                  and          t5, gp, t0
                  xor          ra, t6, s2
                  bne          s7, gp, 9f
                  xor          s2, t2, s4
9:                and          a5, s1, sp
                  lui          t4, 337904
11:               bltu         tp, tp, 25f
                  xori         s4, s4, 1293
13:               sll          s8, s7, a3
                  xori         a1, ra, 1094
                  sltiu        s2, a0, 1562
                  sll          t6, a6, t1
                  srli         s5, s6, 31
                  xor          t1, s2, t6
                  xori         t2, a4, -1943
                  bgeu         s9, zero, 21f
21:               addi         ra, s9, 979
                  nop
                  addi         s10, t5, 1018
                  beq          s9, s3, 43f
25:               slti         ra, t6, -909
                  bltu         a3, a1, 29f
                  xori         a1, t2, -520
                  bgeu         t3, sp, 47f
29:               beq          s7, sp, 41f
                  sll          t4, s9, s11
                  sltu         a2, s9, s0
                  bgeu         s2, s0, 52f
                  addi         t4, zero, -1 #init loop 0 counter
                  addi         t2, zero, -3 #init loop 0 limit
                  sra          s7, a7, sp
sub_4_0_0_t:      lui          ra, 701680
                  xor          t5, t5, s10
                  addi         t4, t4, -9 #update loop 0 counter
                  add          zero, a5, zero
                  xor          s0, t2, s9
                  srli         s7, s4, 7
                  slt          s8, t5, t3
                  bge          t4, t2, sub_4_0_0_t #branch for loop 0
                  sltu         s3, s11, zero
                  slt          s5, s3, sp
                  xori         ra, s0, -1796
                  bltu         a5, zero, 47f
                  slt          s1, s8, a4
                  slli         sp, gp, 1
                  sltiu        t6, s9, 1188
                  and          t2, s8, tp
                  or           s3, t6, a2
41:               srli         t4, a2, 3
                  sub          t5, a7, t2
43:               and          gp, gp, s7
                  beq          tp, a7, 57f
                  bne          s5, a6, 46f
46:               and          a2, s8, a4
47:               slt          s9, s1, s0
                  bgeu         s8, s9, 52f
                  bge          s2, a3, 51f
                  andi         s1, ra, -300
51:               srai         a5, a0, 30
52:               andi         t1, zero, -1108
                  andi         s7, s1, -1425
                  beq          a1, s7, 61f
                  sra          sp, a7, s6
                  slli         s4, t2, 16
57:               sltu         a5, s11, tp
                  nop
                  slt          a7, t0, tp
                  srl          a1, a1, t2
61:               sub          s3, s4, t5
                  srli         a2, a1, 26
                  lw           a0, 4(a6)
                  xor          s3, s2, a6
                  addi         a6, a6, 60
                  srli         a7, a6, 30
87:               addi x10, x10, 0
87:               jalr x10, x10, 0
sub_1:            blt          t3, gp, sub_1_stack_p
sub_1_stack_p:    addi         a6, a6, -28
                  and          gp, zero, s2
                  sw           a0, 4(a6)
                  slti         s1, t1, 673
                  sltiu        t5, a0, 1168
                  addi         t3, t3, -1498
                  sll          t6, a5, a3
                  la           t4, sub_2
                  sltiu        a5, a6, 8
                  ori          a0, s0, 1723
                  addi         t4, t4, 498
                  or           t5, t6, sp
                  srli         t3, a3, 21
                  auipc        ra, 403168
                  add          ra, s4, a1
                  srli         a0, s5, 11
sub_1_j2:         jalr         a0, t4, -497 #jump sub_1 -> sub_2
                  la           s7, sub_2
                  sub          s11, t4, gp
                  addi         s7, s7, -492
                  slt          a5, t6, s6
                  andi         ra, s1, -1313
                  bgeu         t3, a4, sub_1_j3 #branch to jump instr
                  ori          zero, gp, 467
                  slti         t2, t1, -1840
                  sll          s4, a5, s9
sub_1_j3:         jalr         a0, s7, 493 #jump sub_1 -> sub_2
                  beq          t3, s4, 9f
                  slti         s7, tp, -1070
                  bltu         a6, a3, 18f
                  addi         gp, a7, 357
                  sra          a2, tp, s9
                  auipc        a0, 541837
                  and          s0, gp, t0
                  nop
                  xori         s5, a3, 253
9:                srl          a5, zero, t5
                  andi         a0, t5, -1347
                  sub          s9, s1, sp
                  auipc        s1, 736281
                  xor          t2, s3, s1
                  bge          a5, t5, 24f
                  or           sp, a2, t2
                  xor          s0, t5, gp
                  bge          a2, a5, 21f
18:               ori          t6, a1, -1100
                  add          s0, zero, a7
                  slli         a1, tp, 3
21:               auipc        t2, 226016
                  slti         a7, s10, 1579
                  bgeu         a5, a5, 34f
24:               nop
                  srai         gp, s6, 30
                  nop
                  auipc        sp, 938299
                  and          gp, t4, a1
                  sub          a0, t2, a1
                  slt          s10, a7, a5
                  bltu         s1, s4, 34f
                  bge          t2, t2, 34f
                  sra          s9, a3, t0
34:               srai         a3, t4, 22
                  lui          a5, 3221
                  xor          tp, s10, a2
                  ori          s10, s11, 850
                  lw           a0, 4(a6)
                  addi         tp, s11, -1835
                  addi         a6, a6, 28
                  srli         s5, a7, 21
70:               addi x1, x10, 1
70:               jalr x1, x1, 0
sub_5:            nop
                  lui          gp, 613381
                  sub          t3, t4, sp
                  addi         a6, a6, -40
                  slt          s10, a7, t2
                  slti         gp, s5, -1666
                  sw           a0, 4(a6)
                  add          s6, t6, s4
                  addi         s3, zero, 10 #init loop 1 counter
                  addi         s8, zero, 7 #init loop 1 limit
                  and          s0, t4, sp
sub_5_0_1_t:      sub          a0, t1, t3
                  addi         s3, s3, -6 #update loop 1 counter
                  addi         t3, zero, -3 #init loop 0 counter
                  addi         s10, zero, -16 #init loop 0 limit
                  sub          s9, a1, zero
sub_5_0_0_t:      xori         s5, t2, 1502
                  nop
                  addi         t3, t3, -1 #update loop 0 counter
                  bne          t3, s10, sub_5_0_0_t #branch for loop 0
                  bgeu         s3, s8, sub_5_0_1_t #branch for loop 1
                  srli         s6, zero, 17
                  slli         s7, s2, 24
                  slli         s2, a6, 4
                  bne          t4, t4, 18f
                  sra          t2, zero, zero
                  sra          a1, t5, t5
                  xor          tp, gp, a2
                  lui          t6, 750869
                  or           s0, a2, a3
                  auipc        s7, 414825
                  auipc        s5, 386203
                  bne          s0, t1, 21f
                  sub          s10, s2, s9
                  srl          t2, t4, gp
                  ori          a0, a7, -1652
                  bge          a6, t4, 15f
15:               sra          t3, a3, a4
                  sltiu        s5, a1, -103
                  srl          s9, zero, s9
18:               auipc        s2, 245870
                  blt          t0, t3, 28f
                  sra          sp, a5, s9
21:               slt          s1, s10, sp
                  sra          t1, t6, s8
                  sltu         s3, a5, s1
                  sll          s3, s7, zero
                  sltiu        a3, zero, 1798
                  sltu         a0, a7, s6
                  sltu         s3, sp, s7
28:               auipc        ra, 238343
                  andi         a0, a6, 1517
                  sltu         s4, s3, s8
                  or           gp, a1, t0
                  sltu         s4, s6, a2
                  slli         a3, a3, 4
                  andi         ra, s11, -1590
                  slt          sp, a6, t5
                  add          tp, a3, t2
                  blt          s11, a6, 50f
                  xori         a1, s9, 1741
                  srli         a2, a1, 3
                  add          tp, s10, gp
                  bltu         s1, a3, 42f
42:               bge          t1, s9, 53f
                  bge          s4, zero, 44f
44:               bne          t4, sp, 53f
                  or           s0, a0, t4
                  or           t6, a0, s8
                  sra          s4, tp, s7
                  slti         s3, t1, -1667
                  lui          t4, 600245
50:               sltu         s3, sp, t0
                  bge          a2, t5, 53f
                  srai         t2, t3, 25
53:               xori         t1, t4, 1988
                  lw           a0, 4(a6)
                  ori          t3, s6, 553
                  or           t4, a2, s9
                  slti         s6, a2, 1724
                  nop
                  srai         t5, sp, 16
                  addi         a6, a6, 40
                  ori          gp, t6, -229
84:               addi x11, x10, 1
84:               jalr x11, x11, 0
sub_3:            and          s5, a7, t1
                  nop
                  bgeu         t4, s1, sub_3_stack_p
                  nop
sub_3_stack_p:    addi         a6, a6, -8
                  and          s4, s7, s6
                  sw           a0, 4(a6)
                  sra          s10, a7, tp
                  addi         sp, zero, -9 #init loop 1 counter
                  addi         s7, zero, 12 #init loop 1 limit
sub_3_5_1_t:      or           a5, a3, a2
                  addi         sp, sp, 5 #update loop 1 counter
                  addi         t5, zero, 9 #init loop 0 counter
                  addi         t6, zero, 20 #init loop 0 limit
                  srli         t2, s3, 13
sub_3_5_0_t:      addi         t2, s3, -1491
                  addi         t5, t5, 4 #update loop 0 counter
                  blt          t5, t6, sub_3_5_0_t #branch for loop 0
                  sltu         s11, s8, a3
                  srli         t1, s6, 25
                  bltu         sp, s7, sub_3_5_1_t #branch for loop 1
                  lui          s11, 684050
                  addi         s9, zero, -4 #init loop 1 counter
                  or           zero, t6, sp
                  sltiu        t4, gp, -386
                  addi         tp, zero, 3 #init loop 1 limit
                  lui          s6, 436816
                  add          t6, t2, s4
sub_3_27_1_t:     nop
                  addi         sp, s2, -482
                  xori         gp, a3, -1167
                  addi         s9, s9, 5 #update loop 1 counter
                  sub          ra, t3, s8
                  add          t1, s0, s7
                  addi         s10, zero, 10 #init loop 0 counter
                  add          zero, s2, t3
                  sra          s4, t1, zero
                  addi         s0, zero, 6 #init loop 0 limit
                  srai         s3, s11, 1
sub_3_27_0_t:     sub          a7, sp, sp
                  sra          a2, a4, s5
                  addi         s10, s10, -5 #update loop 0 counter
                  slt          t1, ra, s10
                  bgeu         s10, s0, sub_3_27_0_t #branch for loop 0
                  sra          ra, t3, s3
                  srli         t6, s5, 13
                  addi         s3, s11, -888
                  bltu         s9, tp, sub_3_27_1_t #branch for loop 1
                  xor          s1, t1, tp
                  addi         a0, zero, -1 #init loop 1 counter
                  addi         s1, zero, 9 #init loop 1 limit
sub_3_20_1_t:     slti         ra, t2, -1849
                  xori         sp, t1, -1153
                  srl          a3, a2, s11
                  addi         a0, a0, 10 #update loop 1 counter
                  addi         s9, zero, -5 #init loop 0 counter
                  addi         s2, zero, 4 #init loop 0 limit
                  xor          s11, t3, a0
sub_3_20_0_t:     sltu         s7, a5, t1
                  ori          t4, t1, -1397
                  addi         s9, s9, 9 #update loop 0 counter
                  beq          s9, s2, sub_3_20_0_t #branch for loop 0
                  srli         s7, s0, 31
                  bne          a0, s1, sub_3_20_1_t #branch for loop 1
                  srai         tp, a7, 23
                  addi         a3, zero, 10 #init loop 1 counter
                  addi         t1, zero, 9 #init loop 1 limit
sub_3_18_1_t:     addi         s10, sp, 761
                  addi         a3, a3, -4 #update loop 1 counter
                  addi         s11, zero, -7 #init loop 0 counter
                  addi         a7, zero, -6 #init loop 0 limit
                  sra          s2, t6, s5
sub_3_18_0_t:     or           s4, a0, ra
                  srl          tp, a2, s4
                  addi         s11, s11, 10 #update loop 0 counter
                  blt          s11, a7, sub_3_18_0_t #branch for loop 0
                  bgeu         a3, t1, sub_3_18_1_t #branch for loop 1
                  srli         zero, zero, 24
                  addi         a2, zero, 7 #init loop 1 counter
                  add          gp, a3, sp
                  slli         t5, s10, 23
                  addi         a5, zero, 7 #init loop 1 limit
                  xori         s10, s6, 1197
                  lui          t1, 577265
                  srli         gp, t4, 15
sub_3_23_1_t:     add          zero, zero, t1
                  addi         a2, a2, -5 #update loop 1 counter
                  addi         t2, s2, 341
                  and          a3, ra, s1
                  addi         s7, zero, -8 #init loop 0 counter
                  sra          s1, s11, a1
                  addi         t6, zero, 5 #init loop 0 limit
                  slt          a1, s11, t2
                  nop
                  or           a7, a6, a7
sub_3_23_0_t:     sub          s11, t3, gp
                  srai         sp, sp, 31
                  lui          s3, 684426
                  addi         s7, s7, 2 #update loop 0 counter
                  xor          a3, t0, t1
                  sltiu        s11, a0, -1809
                  lui          s8, 813855
                  blt          s7, t6, sub_3_23_0_t #branch for loop 0
                  addi         a0, s0, -1947
                  bgeu         a2, a5, sub_3_23_1_t #branch for loop 1
                  sltu         ra, s7, gp
                  addi         a5, zero, 0 #init loop 0 counter
                  slt          s0, t6, s8
                  sltu         t2, s2, s3
                  srli         s7, t1, 5
                  auipc        s11, 167886
                  srai         ra, s6, 26
                  addi         gp, zero, 12 #init loop 0 limit
sub_3_16_0_t:     nop
                  ori          s8, tp, 820
                  srai         t4, zero, 30
                  addi         t4, s11, 860
                  srai         t3, t0, 3
                  andi         t5, zero, 106
                  and          s7, a3, s0
                  addi         s7, s5, 1419
                  sub          s1, s8, s1
                  sll          s1, gp, s0
                  addi         s4, a3, 1061
                  addi         a5, a5, 3 #update loop 0 counter
                  beq          a5, gp, sub_3_16_0_t #branch for loop 0
                  or           s4, s1, s2
                  addi         t5, zero, 5 #init loop 0 counter
                  addi         s11, zero, -19 #init loop 0 limit
                  sltu         s7, a3, a2
                  add          a1, t2, s7
sub_3_9_0_t:      ori          t3, ra, -1709
                  and          s2, ra, zero
                  and          a1, s4, s3
                  addi         t5, t5, -2 #update loop 0 counter
                  slti         ra, zero, -1457
                  andi         s3, s1, 1585
                  sll          tp, a7, s7
                  bge          t5, s11, sub_3_9_0_t #branch for loop 0
                  srl          s1, a0, a0
                  addi         s3, zero, 1 #init loop 1 counter
                  lui          gp, 916260
                  lui          s10, 128927
                  addi         s8, zero, 9 #init loop 1 limit
                  andi         sp, s11, -229
sub_3_7_1_t:      addi         t2, s6, -1255
                  addi         s3, s3, 2 #update loop 1 counter
                  slti         s1, t2, -1956
                  slti         s7, a6, 1689
                  slli         s1, t4, 7
                  addi         t4, zero, 0 #init loop 0 counter
                  addi         s9, zero, -20 #init loop 0 limit
                  ori          t3, s0, -124
sub_3_7_0_t:      nop
                  addi         t4, t4, -9 #update loop 0 counter
                  sltu         s10, a3, a6
                  bge          t4, s9, sub_3_7_0_t #branch for loop 0
                  or           s10, zero, t4
                  ori          zero, s2, -1225
                  blt          s3, s8, sub_3_7_1_t #branch for loop 1
                  slli         s4, ra, 21
                  addi         a7, zero, 8 #init loop 0 counter
                  srai         t2, s3, 10
                  xori         s10, a5, -748
                  addi         s3, zero, 20 #init loop 0 limit
                  addi         t2, s6, -1191
                  ori          s0, t2, 551
sub_3_3_0_t:      slti         s9, t6, 1370
                  srai         t4, tp, 25
                  sra          s10, s7, s7
                  slt          s7, sp, t1
                  addi         a7, a7, 4 #update loop 0 counter
                  and          a0, t3, t5
                  lui          tp, 418740
                  ori          t3, s11, -638
                  srl          a0, s9, ra
                  slti         s7, s0, 677
                  and          s6, zero, s3
                  xori         t4, a5, 313
                  sll          s10, t0, a2
                  xor          tp, s3, a5
                  xor          s5, s2, t1
                  and          s5, s7, tp
                  ori          s9, t2, 1724
                  beq          a7, s3, sub_3_3_0_t #branch for loop 0
                  and          a5, a2, a1
                  addi         sp, zero, 10 #init loop 1 counter
                  auipc        s5, 139298
                  ori          s4, ra, 766
                  addi         a7, zero, 10 #init loop 1 limit
                  sltu         a2, s9, s5
                  auipc        s8, 838411
                  slt          s10, a1, gp
sub_3_19_1_t:     sltu         s11, s1, a6
                  addi         sp, sp, -9 #update loop 1 counter
                  andi         s2, s9, 650
                  sub          s2, ra, zero
                  ori          zero, a0, 284
                  sub          s2, t2, ra
                  addi         a5, zero, 9 #init loop 0 counter
                  add          s9, s9, s9
                  srli         tp, s4, 27
                  addi         a1, zero, 9 #init loop 0 limit
                  slti         t4, a7, -138
                  nop
                  sll          t4, a5, t3
                  andi         s11, a1, -1472
                  add          s11, t0, s8
sub_3_19_0_t:     andi         s11, s7, 709
                  sll          t5, s2, s10
                  addi         a5, a5, -8 #update loop 0 counter
                  srl          s6, t2, s10
                  xor          s5, t3, t0
                  sub          zero, s6, t4
                  bgeu         a5, a1, sub_3_19_0_t #branch for loop 0
                  lui          s3, 840152
                  bgeu         sp, a7, sub_3_19_1_t #branch for loop 1
                  nop
                  addi         s8, zero, -3 #init loop 0 counter
                  lui          a2, 439534
                  srli         ra, s6, 4
                  slli         t1, t2, 23
                  lui          tp, 681602
                  srli         s2, tp, 25
                  addi         a5, zero, 19 #init loop 0 limit
                  sll          s1, s5, s4
sub_3_11_0_t:     sltu         s2, tp, tp
                  and          a7, s4, a1
                  sll          zero, s7, s0
                  srai         tp, a6, 18
                  auipc        s2, 532122
                  sra          s3, s11, s10
                  addi         s8, s8, 2 #update loop 0 counter
                  beq          s8, a5, sub_3_11_0_t #branch for loop 0
                  srli         s11, t2, 3
                  addi         s9, zero, -8 #init loop 1 counter
                  sltiu        t3, a3, -1450
                  addi         s6, zero, 8 #init loop 1 limit
                  xor          sp, s9, t0
sub_3_13_1_t:     add          s2, a5, t0
                  srli         s3, t2, 2
                  slt          gp, a5, a4
                  addi         s9, s9, 9 #update loop 1 counter
                  add          s2, a0, s4
                  srli         t4, a5, 2
                  or           s4, t6, s2
                  srli         t2, s3, 11
                  ori          a0, a2, -322
                  addi         s7, zero, -4 #init loop 0 counter
                  sll          ra, s8, s6
                  sra          t3, tp, s3
                  addi         a5, zero, -20 #init loop 0 limit
                  ori          t6, a4, 1875
                  andi         t2, t6, 1475
                  slli         gp, a3, 20
                  slt          s3, a4, sp
                  xor          a0, s7, ra
sub_3_13_0_t:     auipc        s5, 459461
                  addi         s7, s7, -4 #update loop 0 counter
                  nop
                  beq          s7, a5, sub_3_13_0_t #branch for loop 0
                  sltiu        a3, s8, 732
                  blt          s9, s6, sub_3_13_1_t #branch for loop 1
                  slti         a0, tp, 597
                  addi         t1, zero, -6 #init loop 0 counter
                  nop
                  sub          a0, s4, s11
                  addi         s6, zero, 16 #init loop 0 limit
                  andi         ra, s9, -34
                  srli         a2, tp, 27
                  addi         ra, s8, -140
                  or           s9, s6, s9
                  xori         gp, s4, -1217
                  and          s0, s8, a7
                  ori          s7, s11, 642
sub_3_1_0_t:      addi         t3, s2, -538
                  sll          s9, s11, t0
                  addi         t1, t1, 3 #update loop 0 counter
                  lui          ra, 493280
                  or           zero, s0, a5
                  addi         s7, a0, 336
                  sltu         s0, s11, a3
                  srli         s9, t6, 18
                  auipc        sp, 502519
                  nop
                  xor          tp, s4, a6
                  auipc        gp, 99153
                  srli         s2, gp, 14
                  sll          s3, s7, t2
                  slti         a5, s4, 271
                  or           s10, s10, t6
                  sll          s3, t0, s1
                  blt          t1, s6, sub_3_1_0_t #branch for loop 0
                  sll          s8, a0, s7
                  addi         s11, zero, -6 #init loop 0 counter
                  xor          tp, t5, s7
                  xor          a3, a2, gp
                  auipc        s0, 909385
                  nop
                  sltu         sp, a1, t5
                  sll          ra, a3, s2
                  sub          a3, a2, t1
                  slli         ra, s3, 1
                  addi         s8, zero, 2 #init loop 0 limit
                  srai         a3, s7, 25
                  andi         s0, ra, 1020
                  lui          s6, 235467
                  sra          s7, a5, a2
                  sub          t3, zero, s7
                  lui          t1, 900051
sub_3_2_0_t:      add          t5, gp, s1
                  sub          t6, a5, s2
                  auipc        t6, 712305
                  addi         s11, s11, 8 #update loop 0 counter
                  xori         s10, a2, 1898
                  nop
                  srl          a5, tp, a6
                  slti         a3, s10, 919
                  srli         t2, s3, 24
                  add          ra, s11, s2
                  bne          s11, s8, sub_3_2_0_t #branch for loop 0
                  xori         t3, s4, 520
                  addi         t1, zero, 9 #init loop 1 counter
                  slt          s11, s10, a2
                  srli         a7, s1, 18
                  and          t2, sp, a4
                  addi         s0, zero, -18 #init loop 1 limit
sub_3_14_1_t:     addi         t5, s10, -587
                  addi         t1, t1, -2 #update loop 1 counter
                  ori          a1, s8, -1766
                  addi         s4, zero, -6 #init loop 0 counter
                  sll          tp, t1, t5
                  srl          a5, a4, s0
                  slli         sp, t5, 7
                  addi         s10, zero, -14 #init loop 0 limit
                  sll          s11, t5, s8
                  slt          sp, s4, s5
                  or           tp, a2, t6
sub_3_14_0_t:     sub          s7, a4, s0
                  addi         s4, s4, -3 #update loop 0 counter
                  srl          zero, s5, s8
                  andi         s2, s0, -1620
                  add          sp, zero, a5
                  bge          s4, s10, sub_3_14_0_t #branch for loop 0
                  sra          t5, t2, a7
                  bge          t1, s0, sub_3_14_1_t #branch for loop 1
                  srai         t5, t2, 15
                  addi         a7, zero, -2 #init loop 0 counter
                  lui          s9, 1038999
                  addi         s1, gp, 629
                  slt          s3, t5, zero
                  ori          s0, a6, -29
                  xori         t2, a3, 500
                  addi         a5, zero, 19 #init loop 0 limit
                  add          s1, sp, s7
                  srai         s9, a7, 7
                  or           t4, a7, s10
                  addi         s0, t3, -1888
                  lui          t1, 388655
sub_3_10_0_t:     sltiu        s5, s0, 211
                  slti         t6, s7, -926
                  sra          t5, a2, zero
                  addi         a7, a7, 4 #update loop 0 counter
                  blt          a7, a5, sub_3_10_0_t #branch for loop 0
                  and          s4, ra, s10
                  addi         s2, zero, 8 #init loop 0 counter
                  addi         s4, t0, 660
                  addi         s9, zero, 4 #init loop 0 limit
                  addi         t6, a7, -1203
sub_3_17_0_t:     lui          a7, 245151
                  xori         s8, s7, 1715
                  sltiu        s8, s0, 864
                  addi         s2, s2, -1 #update loop 0 counter
                  bgeu         s2, s9, sub_3_17_0_t #branch for loop 0
                  xori         s1, a0, 990
                  addi         ra, zero, 10 #init loop 0 counter
                  addi         s0, zero, 15 #init loop 0 limit
sub_3_15_0_t:     and          zero, s7, t0
                  addi         ra, ra, 2 #update loop 0 counter
                  blt          ra, s0, sub_3_15_0_t #branch for loop 0
                  srai         zero, s5, 8
                  addi         a7, zero, 9 #init loop 1 counter
                  slli         s11, s1, 20
                  addi         s0, zero, -8 #init loop 1 limit
sub_3_8_1_t:      sltiu        a3, a5, 1016
                  xori         a0, s1, -986
                  slli         a2, s7, 31
                  slt          t3, tp, s10
                  sltu         s7, s4, t2
                  addi         a7, a7, -4 #update loop 1 counter
                  andi         s8, s9, 871
                  sltu         s7, s3, s11
                  add          a1, s1, s8
                  xori         s2, s4, -372
                  addi         s10, zero, -1 #init loop 0 counter
                  addi         s4, zero, -10 #init loop 0 limit
                  add          t2, a7, t2
                  xori         a1, tp, -581
                  slli         a5, t6, 20
                  nop
                  andi         s5, a3, -478
                  or           t4, a1, a6
                  andi         s3, a3, 175
sub_3_8_0_t:      andi         gp, s3, -1172
                  addi         s10, s10, -9 #update loop 0 counter
                  bne          s10, s4, sub_3_8_0_t #branch for loop 0
                  xor          a3, s2, a3
                  slti         gp, sp, 784
                  add          a3, a6, s2
                  nop
                  sltiu        gp, s9, -1153
                  srl          zero, a1, s1
                  ori          s6, s2, -1452
                  bge          a7, s0, sub_3_8_1_t #branch for loop 1
                  auipc        a5, 370629
                  addi         s10, zero, 4 #init loop 1 counter
                  sltiu        t1, t6, 925
                  addi         t3, zero, 18 #init loop 1 limit
                  ori          s11, s2, 576
sub_3_4_1_t:      nop
                  andi         s5, t6, -78
                  addi         s10, s10, 3 #update loop 1 counter
                  addi         t5, zero, 10 #init loop 0 counter
                  andi         t6, a7, 1022
                  addi         s1, zero, 10 #init loop 0 limit
                  slt          t4, s9, t4
sub_3_4_0_t:      ori          s4, s6, 501
                  addi         t5, t5, -9 #update loop 0 counter
                  sltu         tp, a5, s10
                  bgeu         t5, s1, sub_3_4_0_t #branch for loop 0
                  ori          s4, a0, 654
                  slli         gp, s6, 5
                  blt          s10, t3, sub_3_4_1_t #branch for loop 1
                  srai         s4, a2, 30
                  sll          s2, t1, t3
                  bne          s5, a0, 21f
                  auipc        s5, 733074
                  nop
                  blt          a0, a6, 6f
                  and          a2, t3, t3
6:                blt          a0, a5, 19f
                  slti         a2, a3, -432
                  srai         sp, s9, 14
                  slli         s11, a2, 22
                  addi         s10, sp, -696
                  xori         s7, sp, 1829
                  blt          t5, t5, 21f
                  ori          zero, a0, 938
                  slt          t2, s6, s2
                  bge          tp, s4, 24f
                  or           s4, sp, s8
                  srai         s0, t3, 9
                  beq          t3, t3, 29f
19:               or           s11, t5, zero
                  slti         a5, t2, 981
21:               slli         s5, t4, 31
                  or           s5, t0, tp
                  blt          t1, a4, 32f
24:               sltiu        sp, a3, 149
                  nop
                  slti         ra, a3, -1460
                  xori         sp, t5, 146
                  bgeu         a3, s3, 32f
29:               andi         tp, s7, 1155
                  addi         s11, a3, -617
                  lui          a2, 331737
32:               bne          a4, gp, 47f
                  sub          s4, a4, s9
                  xori         zero, t2, 1134
                  ori          t6, t6, 1469
                  sltu         s1, t3, sp
                  slli         a0, gp, 7
                  or           t6, s11, zero
                  beq          t1, s11, 58f
                  srli         s1, s1, 25
                  sra          s9, a1, s4
                  slt          s2, t0, a3
                  bge          s7, tp, 50f
                  beq          a4, t2, 55f
                  bne          t5, a2, 64f
                  slti         a2, zero, -701
47:               bge          s1, t2, 59f
                  xori         tp, a3, 1178
                  slli         t5, s0, 2
50:               sll          gp, a1, gp
                  srli         s6, a7, 2
                  sll          a1, t2, tp
                  bltu         t2, a5, 59f
                  sub          a1, s11, s0
55:               xori         gp, t2, -1498
                  sra          t3, s8, tp
                  auipc        sp, 21201
58:               bge          s9, s6, 62f
59:               bltu         a3, t3, 78f
                  sll          s10, gp, t4
                  srl          a0, s2, zero
62:               bne          s10, s6, 68f
                  slti         s8, s2, -118
64:               sll          s3, t5, a2
                  bgeu         t5, s1, 82f
                  beq          gp, sp, 83f
                  lui          s9, 277082
68:               and          gp, a2, s10
                  srai         s3, s8, 24
                  lui          a7, 753694
                  slli         s3, t2, 18
                  sltu         s7, t6, a1
                  beq          t0, s3, 79f
                  ori          s2, gp, -1556
                  bne          s1, sp, 84f
                  sub          a5, s3, a4
                  and          a3, a3, s0
78:               nop
79:               srai         s1, gp, 15
                  lui          t2, 139432
                  addi         a0, t6, -405
82:               or           t5, s3, t1
83:               xori         gp, a2, -1610
84:               addi         a3, a7, 1638
                  lui          a1, 804886
                  addi         t3, tp, -1984
                  sltu         ra, t1, t2
                  sltu         s8, s0, s9
                  bne          s4, zero, 99f
                  srai         a3, gp, 16
                  xori         s4, s0, 1878
                  bgeu         s6, t3, 93f
93:               andi         s4, s9, 1441
                  srai         s3, s10, 13
                  or           t4, a2, s4
                  slli         t4, a5, 19
                  slti         a1, s6, -531
                  addi         a3, s3, -1811
99:               ori          s4, t2, 1098
                  nop
                  ori          ra, a6, -2035
                  or           s6, s11, a0
                  bne          s0, a5, 123f
                  xori         ra, t6, -618
                  srl          s6, s8, t1
                  srai         gp, s1, 21
                  blt          t5, s6, 113f
                  srli         s0, s6, 2
                  srl          a7, t5, s4
                  or           s9, s9, a7
                  srai         t6, a2, 9
                  sub          sp, tp, s11
113:              bge          t2, t2, 133f
                  andi         sp, zero, -1950
                  sltu         a7, t2, a2
                  slli         s1, a3, 18
                  nop
                  slt          a1, s8, t0
                  or           a0, a5, tp
                  xor          a1, t5, t3
                  addi         s2, s8, 746
                  add          s10, t0, tp
123:              srl          a0, a6, s10
                  or           ra, s11, gp
                  sltiu        s4, a3, 1019
                  srli         s1, s0, 8
                  blt          a2, a5, 141f
                  slti         t6, s9, -1405
                  sra          s3, s6, a0
                  srai         s1, t2, 4
                  blt          t0, zero, 149f
                  or           t6, t4, s5
133:              or           a0, a3, s10
                  xori         a1, a1, 771
                  sltu         ra, sp, s6
                  add          s7, s9, s7
                  beq          s3, s0, 142f
                  srli         s7, a2, 13
                  lui          s6, 854436
                  nop
141:              bne          s2, s8, 148f
142:              xori         a5, a0, -1618
                  slt          t1, t3, s7
                  blt          t6, s8, 161f
                  bne          t2, t4, 158f
                  sltiu        t1, a1, -1566
                  or           gp, gp, t3
148:              lui          s11, 662624
149:              sltu         s2, tp, s6
                  beq          a2, s6, 170f
                  addi         s3, t6, -552
                  nop
                  sub          t4, a0, tp
                  xor          t4, a2, sp
                  sll          t6, a1, tp
                  or           s6, s5, s7
                  bge          zero, s7, 166f
158:              beq          s5, s6, 163f
                  srai         zero, t0, 31
                  srai         t4, a6, 16
161:              nop
                  beq          s3, tp, 171f
163:              xori         s3, t0, -1049
                  andi         s9, a0, -1591
                  and          zero, s5, t0
166:              xor          a7, t1, ra
                  sub          tp, a5, t3
                  ori          s6, sp, -913
                  bgeu         s10, t0, 184f
170:              lui          t2, 849729
171:              bltu         sp, zero, 191f
                  bltu         s1, t2, 181f
                  bne          a5, a2, 192f
                  and          s11, zero, s1
                  and          a3, t3, t3
                  slti         s5, a2, -1920
                  and          s10, a2, a6
                  sra          s11, a2, s8
                  slt          s4, a1, s8
                  and          s6, a7, s7
181:              nop
                  sltu         s8, t4, a1
                  sra          s5, s7, s2
184:              bge          a7, t3, 194f
                  auipc        s9, 906222
                  andi         a7, t1, 407
                  srai         a3, s0, 14
                  bge          s0, s2, 190f
                  bge          t4, s4, 203f
190:              blt          t2, a6, 209f
191:              sub          t1, s8, s7
192:              bgeu         t5, t1, 198f
                  nop
194:              and          s8, a6, t3
                  srl          a1, a3, t5
                  sra          s5, s1, s5
                  xori         a0, a4, 1429
198:              sll          s10, s1, t1
                  andi         s2, s9, -787
                  lui          s9, 113496
                  andi         a5, sp, -1205
                  nop
203:              add          s2, a3, t1
                  beq          t3, sp, 208f
                  xori         sp, s8, 1885
                  xori         ra, t1, -1211
                  nop
208:              slt          t1, s10, a2
209:              auipc        a0, 578841
                  bge          s8, zero, 216f
                  xor          s3, s10, s5
                  and          a0, t1, s2
                  or           s2, t2, a5
                  slli         t5, tp, 30
                  slti         s0, t0, 1313
216:              auipc        t3, 612672
                  auipc        sp, 231708
                  sltu         s8, a4, a4
                  ori          s4, a6, -655
                  sll          tp, t4, t1
                  sll          a5, a5, t5
                  ori          s3, a1, -88
                  slti         s3, t5, -233
                  sltiu        t2, zero, -666
                  beq          s7, a0, 244f
                  nop
                  or           tp, s8, sp
                  add          s8, a0, s0
                  bgeu         s7, s9, 241f
                  slt          s6, t3, t5
                  addi         s1, t4, 1363
                  ori          s11, gp, 1135
                  addi         s10, s2, 2039
                  or           a5, s5, t3
                  sll          s0, a4, a6
                  sub          s9, t3, t6
                  andi         gp, t6, 1130
                  slt          ra, a2, s5
                  xori         s6, t1, 1750
                  nop
241:              bltu         sp, s3, 252f
                  beq          t0, s4, 253f
                  slti         t1, a2, 100
244:              xor          s9, a4, a5
                  srl          ra, s0, s9
                  srl          s0, ra, t5
                  andi         s1, t0, -1587
                  sra          a2, gp, zero
                  bgeu         s5, gp, 253f
                  sub          s10, t5, t2
                  srai         s4, s8, 26
252:              bgeu         t2, s9, 272f
253:              ori          a1, a6, -132
                  sra          t3, s0, a4
                  bne          zero, a0, 261f
                  sltu         t3, tp, ra
                  beq          a4, tp, 266f
                  bne          a4, s11, 276f
                  and          ra, s9, a6
                  bge          t4, s6, 261f
261:              slli         s7, s7, 28
                  bne          t1, t2, 268f
                  srai         s11, zero, 5
                  slli         sp, t3, 31
                  add          t5, a5, a5
266:              sub          t3, s9, a4
                  slt          tp, s9, ra
268:              slti         s7, t1, -134
                  sra          a7, t3, a3
                  slli         zero, s11, 0
                  srl          t2, a0, tp
272:              bltu         t5, t0, 289f
                  sub          a5, a0, a2
                  sll          gp, tp, a2
                  addi         sp, s11, 945
276:              sltiu        s4, s3, 315
                  andi         a5, t0, -845
                  and          gp, zero, a3
                  bge          a5, s1, 294f
                  nop
                  lui          a3, 101753
                  and          s3, a2, a0
                  beq          a3, zero, 292f
                  ori          a7, a4, -144
                  blt          s5, s9, 289f
                  slli         sp, a6, 20
                  sltiu        s4, t0, -1415
                  slti         s6, t5, 1853
289:              bne          t1, s4, 295f
                  sll          a1, s9, tp
                  xor          s11, s3, s9
292:              xori         sp, a2, -268
                  bne          ra, t6, 312f
294:              bgeu         gp, a3, 314f
295:              sltiu        s0, s11, -589
                  srl          s1, a5, t1
                  beq          s0, s4, 317f
                  slt          tp, tp, s6
                  and          t5, t4, a1
                  bge          s6, s7, 312f
                  addi         s3, gp, -1433
                  addi         t4, s4, -1343
                  andi         t2, s1, 1839
                  andi         ra, gp, 694
                  bltu         s8, a3, 311f
                  or           s3, ra, a6
                  slt          s5, zero, a1
                  sltu         s6, zero, s4
                  ori          s9, s11, 919
                  and          s8, s10, s8
311:              srai         a7, a0, 8
312:              bgeu         a2, s4, 321f
                  addi         s0, zero, 9 #init loop 1 counter
                  addi         a5, zero, -8 #init loop 1 limit
sub_3_21_1_t:     slti         t3, s2, -934
                  addi         s0, s0, -10 #update loop 1 counter
                  addi         t1, zero, -7 #init loop 0 counter
                  addi         a7, zero, 15 #init loop 0 limit
sub_3_21_0_t:     andi         s5, a7, 606
                  addi         t1, t1, 7 #update loop 0 counter
                  blt          t1, a7, sub_3_21_0_t #branch for loop 0
                  bge          s0, a5, sub_3_21_1_t #branch for loop 1
                  slti         sp, s5, -1322
                  srai         zero, a6, 4
314:              add          s0, s7, s11
                  bne          a4, s2, 324f
                  bgeu         s9, t4, 327f
317:              or           tp, t2, t3
                  bltu         s11, s8, 319f
319:              srai         s1, tp, 1
                  srl          s2, s3, s6
321:              lui          s11, 836020
                  auipc        s11, 1011467
                  ori          zero, t3, 1602
324:              sltu         s2, a7, s7
                  bltu         s5, t1, 336f
                  srl          ra, t1, a7
327:              sll          a2, zero, s5
                  xori         gp, a1, -1943
                  sltiu        s9, sp, -633
                  blt          a5, s4, 339f
                  srai         t5, ra, 23
                  bge          sp, a3, 342f
                  sltu         a7, t3, s0
                  bge          s7, s1, 352f
                  slti         s2, s8, -1299
336:              srai         a5, s11, 0
                  add          t4, t1, t6
                  bne          gp, a3, 352f
339:              or           s11, a6, t2
                  andi         s2, a0, 1637
                  srai         a2, t6, 26
342:              bge          s3, a2, 362f
                  srai         t6, s11, 27
                  slt          s8, a6, t2
                  lui          t6, 646083
                  bgeu         t0, tp, 363f
                  srai         s9, s9, 3
                  bge          s6, s11, 365f
                  nop
                  sub          t6, s11, s4
                  blt          s6, s7, 370f
352:              srli         s9, a1, 17
                  add          t4, a2, sp
                  xor          s11, t4, a2
                  andi         gp, zero, -2009
                  sltiu        a1, zero, -1326
                  ori          s0, t3, -593
                  andi         t1, a2, -1424
                  addi         a5, a6, 350
                  bne          a5, s1, 366f
                  xori         gp, s3, 890
362:              add          s11, a1, t5
363:              srai         gp, s0, 3
                  sltiu        gp, a3, -588
365:              or           s9, t6, zero
366:              srai         t1, t2, 18
                  add          s3, a1, a0
                  sub          a3, t1, s11
                  bgeu         s10, t3, 382f
370:              bgeu         tp, t6, 372f
                  bltu         s6, sp, 375f
372:              ori          t1, s3, -1538
                  beq          s5, a6, 378f
                  blt          s5, t6, 380f
375:              slt          t3, s9, t4
                  sra          sp, s10, a0
                  auipc        zero, 1006306
378:              beq          a6, gp, 385f
                  slti         s1, zero, -90
380:              srl          t6, tp, a2
                  and          a2, gp, t3
382:              srl          s3, s7, s9
                  xori         s8, a3, 449
                  addi         s5, s7, -483
385:              slt          zero, a3, s10
                  sra          t4, t0, t4
                  or           s0, tp, t0
                  lui          t5, 851241
                  beq          s2, s10, 408f
                  or           a5, s2, a0
                  slli         tp, sp, 11
                  auipc        s7, 844909
                  srli         a1, a1, 25
                  xori         s0, s10, 574
                  sll          t4, s2, ra
                  sltu         t1, tp, t4
                  sll          a0, s10, s0
                  sub          s2, s0, s0
                  addi         gp, s1, 1778
                  sra          s3, t0, t5
                  slti         s2, a0, -1079
                  srli         s0, t4, 25
                  sub          s2, s2, s9
                  lui          a3, 343496
                  blt          s7, sp, 425f
                  sltu         s4, s1, ra
                  nop
408:              sll          t4, s1, ra
                  nop
                  addi         s5, zero, 8 #init loop 1 counter
                  addi         a5, zero, -10 #init loop 1 limit
                  lui          a2, 221882
                  sltu         gp, s0, a5
                  sra          a0, a5, s1
                  sra          t4, s9, s8
sub_3_25_1_t:     auipc        s1, 236608
                  addi         s5, s5, -5 #update loop 1 counter
                  addi         ra, zero, -5 #init loop 0 counter
                  addi         sp, zero, 10 #init loop 0 limit
sub_3_25_0_t:     and          t5, t2, gp
                  addi         ra, ra, 1 #update loop 0 counter
                  nop
                  lui          s3, 327154
                  xor          s7, a2, a7
                  or           t1, t3, s10
                  blt          ra, sp, sub_3_25_0_t #branch for loop 0
                  sltiu        tp, a0, 501
                  auipc        t6, 482048
                  and          s2, a7, a5
                  xori         t1, s1, 1101
                  sll          t2, s7, gp
                  bge          s5, a5, sub_3_25_1_t #branch for loop 1
                  ori          t3, t4, -734
                  and          s5, t6, a7
                  beq          gp, a5, 420f
                  lui          a0, 650168
                  srli         t2, t3, 9
                  lui          s0, 564342
                  srl          s11, s7, a3
                  sra          s8, sp, s9
                  bge          t3, s9, 432f
                  bge          a3, s1, 437f
                  auipc        s10, 414487
420:              sltu         a7, ra, a2
                  sll          ra, t6, s2
                  slli         t1, s4, 13
                  nop
                  or           a1, t3, a0
425:              slt          a3, s8, a2
                  sll          zero, a3, s4
                  sltiu        s0, t3, -1018
                  and          t5, s8, t2
                  bge          t5, a4, 449f
                  bge          s6, t3, 432f
                  sll          gp, s0, s9
432:              xori         tp, s1, -241
                  sub          t4, s0, tp
                  sltiu        s11, sp, 1238
                  srli         s3, t3, 11
                  sra          s11, s7, t0
437:              add          s5, tp, a6
                  bgeu         t1, sp, 439f
439:              beq          t6, ra, 451f
                  bne          s7, s10, 454f
                  xori         s9, s4, 978
                  nop
                  slt          s9, t6, s8
                  slti         s7, tp, -275
                  xor          a5, t2, a5
                  sra          s3, t6, s5
                  or           ra, s4, a5
                  beq          a5, s0, 454f
449:              srli         a2, s9, 19
                  xori         a7, a4, -1736
451:              sll          t5, t0, s3
                  bge          gp, a7, 469f
                  xor          a0, s0, s3
454:              bgeu         t1, s4, 473f
                  xor          t3, a5, a1
                  add          s4, t2, s5
                  or           a2, sp, a2
                  sub          t2, a7, gp
                  sll          a1, a0, a7
                  nop
                  bgeu         t6, t0, 472f
                  add          gp, s9, s4
                  xor          s11, t6, s3
                  sub          s7, a5, s1
                  sra          s0, s5, a0
                  beq          s2, a5, 485f
                  sra          s7, gp, s6
                  lui          a0, 191570
469:              xori         s0, t4, 327
                  beq          t5, a4, 479f
                  sra          s9, a1, a2
472:              srl          tp, t2, t1
473:              xori         ra, s10, 40
                  xor          t2, t5, s0
                  sub          s8, gp, s10
                  bgeu         t4, s11, 482f
                  srl          a3, a1, a1
                  auipc        s0, 468081
479:              lui          tp, 954969
                  slti         ra, s6, 1528
                  slt          s4, t6, ra
482:              xor          gp, a0, a1
                  bgeu         zero, a7, 492f
                  sub          sp, t1, s6
485:              addi         tp, t4, -1227
                  xor          sp, s1, s2
                  srai         t5, s9, 14
                  or           t2, a4, tp
                  addi         s2, zero, -8 #init loop 1 counter
                  sltiu        t1, s4, 1526
                  addi         a0, zero, -12 #init loop 1 limit
sub_3_22_1_t:     andi         a2, s9, 1500
                  slti         a5, s4, 936
                  addi         s2, s2, -4 #update loop 1 counter
                  addi         gp, zero, -7 #init loop 0 counter
                  addi         tp, zero, 0 #init loop 0 limit
                  xori         s6, a7, 385
                  addi         ra, tp, -1225
sub_3_22_0_t:     or           s1, t0, a2
                  slt          s10, s0, s0
                  addi         gp, gp, 3 #update loop 0 counter
                  blt          gp, tp, sub_3_22_0_t #branch for loop 0
                  beq          s2, a0, sub_3_22_1_t #branch for loop 1
                  lui          t5, 778061
                  auipc        a1, 654014
                  sltiu        t3, t0, -716
                  blt          s4, s1, 498f
492:              auipc        gp, 824884
                  slti         t1, s9, 1785
                  bgeu         a6, sp, 498f
                  addi         tp, t4, 1752
                  sltu         s8, s4, s4
                  bge          s4, t6, 517f
498:              nop
                  auipc        a1, 949521
                  xori         s3, s4, 1503
                  srli         a5, s2, 22
                  add          a7, s3, s8
                  lui          s11, 921531
                  srai         a0, s10, 24
                  lui          ra, 339451
                  blt          t6, a1, 519f
                  blt          s8, a5, 513f
                  xori         s3, t2, -1781
                  beq          t3, t2, 519f
                  slt          s2, s1, a4
                  auipc        s6, 83373
                  slt          s8, s0, a2
513:              bge          zero, a0, 530f
                  srli         a0, a0, 20
                  sub          t6, a7, a7
                  sltu         sp, a4, gp
517:              slti         zero, s9, -881
                  blt          a0, a4, 524f
519:              bne          s5, ra, 528f
                  sltiu        s4, s7, -1030
                  bne          t2, t6, 532f
                  or           s6, t2, s10
                  bltu         s11, s4, 528f
524:              beq          zero, a4, 542f
                  nop
                  sltiu        s6, s7, 635
                  xori         t2, t5, 296
528:              or           s2, s0, t1
                  sltu         t2, s4, s11
530:              sll          s7, s1, t3
                  bge          s4, tp, 535f
532:              or           s10, s0, t5
                  or           s2, a5, s11
                  blt          t6, s10, 536f
535:              addi         zero, t1, 70
536:              xor          tp, s0, a4
                  addi         s2, t6, 1137
                  add          s9, t3, a2
                  sltiu        s6, a7, 1563
                  add          s8, sp, s6
                  srli         t5, s1, 29
542:              sll          tp, s2, s9
                  sll          zero, ra, a7
                  slt          t2, gp, s3
                  andi         a2, s9, 468
                  bne          a2, a5, 552f
                  sub          tp, s4, s4
                  nop
                  ori          s2, s10, -382
                  addi         a2, zero, 8 #init loop 0 counter
                  addi         s2, sp, 1413
                  slt          s9, a6, s11
                  slti         s10, a0, -359
                  sub          s6, t2, s5
                  xori         ra, a5, -1893
                  or           gp, s4, s4
                  or           s11, a7, a0
                  addi         t5, zero, 15 #init loop 0 limit
sub_3_24_0_t:     add          a1, s1, t2
                  sltu         t4, a3, s6
                  sltu         t3, tp, t5
                  slt          s2, s2, tp
                  addi         a2, a2, 4 #update loop 0 counter
                  slti         s5, sp, -1867
                  slt          sp, ra, ra
                  sll          s0, s3, s3
                  sltiu        a3, s3, -1246
                  srli         a0, t2, 10
                  or           t4, a2, sp
                  xori         s0, sp, 578
                  bltu         a2, t5, sub_3_24_0_t #branch for loop 0
                  srli         ra, a4, 25
                  srai         s11, s7, 9
                  slti         s2, a2, -1241
552:              xori         a7, t4, -849
                  sltu         s0, t0, a2
                  bne          tp, t0, 569f
                  sll          s1, t6, t4
                  sltiu        s8, a3, -378
                  sltiu        ra, s5, 1973
                  beq          s1, gp, 578f
                  auipc        s2, 763534
                  and          sp, a0, s11
                  srli         s6, s4, 29
                  srli         t5, a2, 19
                  slli         s0, t4, 6
                  blt          s0, t5, 576f
                  bne          s7, a0, 582f
                  andi         t4, t0, 398
                  bne          t1, s11, 574f
                  bgeu         s4, s5, 574f
569:              addi         s11, t3, 47
                  add          s9, t4, t1
                  sll          tp, s0, t2
                  ori          sp, a3, -872
                  slti         t2, tp, 933
574:              sra          ra, t3, sp
                  sltu         s9, s6, t6
576:              sra          s9, s1, a6
                  sra          zero, sp, a3
578:              slt          s10, a5, a1
                  bge          t0, s2, 598f
                  slli         a5, a7, 10
                  ori          sp, a1, -168
582:              blt          a0, t5, 586f
                  lui          s10, 444346
                  ori          gp, a1, 879
                  sltu         a2, t2, s2
586:              bgeu         s5, a6, 590f
                  srli         a1, a5, 4
                  add          s9, t6, a3
                  nop
590:              bge          t5, sp, 596f
                  srli         sp, t3, 27
                  slt          t5, a7, s10
                  bltu         t6, s6, 599f
                  sra          t4, s8, t6
                  sll          t1, t0, t5
596:              ori          s9, s0, -891
                  bltu         s4, s10, 607f
598:              and          s4, s4, gp
599:              slt          a7, s6, s10
                  sub          a1, a7, a5
                  sltiu        sp, t1, -802
                  ori          s11, s8, 1401
                  srl          t3, s10, sp
                  and          s2, a4, t1
                  lui          t6, 561754
                  or           a1, s4, tp
607:              sra          t3, t5, t0
                  sll          s5, s6, t6
                  beq          t5, t2, 627f
                  bltu         gp, sp, 627f
                  sltiu        t2, s6, 424
                  srl          tp, s11, s2
                  nop
                  auipc        s1, 1004142
                  slli         t6, tp, 6
                  beq          t4, ra, 630f
                  bgeu         s5, s7, 637f
                  add          tp, s2, t4
                  beq          s3, zero, 624f
                  srai         t6, a4, 28
                  or           s3, t4, s6
                  blt          s3, a2, 631f
                  slti         ra, a6, 1964
624:              lui          s8, 621428
                  slti         s0, s11, 649
                  auipc        a0, 112750
627:              nop
                  lui          s3, 632082
                  bne          a6, t0, 640f
630:              slli         s1, s1, 4
631:              add          a0, t3, s6
                  or           a3, t2, t6
                  bne          a6, a7, 642f
                  sub          gp, a4, a1
                  sltiu        gp, a7, 1224
                  sltiu        s8, a7, -978
637:              bgeu         t1, s9, 638f
638:              xori         s4, s7, 1850
                  bltu         zero, gp, 648f
640:              bne          s3, a4, 659f
                  xor          t2, t3, a6
642:              auipc        s2, 979135
                  blt          a7, s4, 663f
                  andi         s7, a0, -1054
                  nop
                  bne          t5, s9, 659f
                  sub          zero, zero, tp
648:              or           ra, s1, t2
                  sra          s1, zero, s11
                  auipc        s2, 146579
                  sub          s1, zero, t5
                  sub          t4, s4, a6
                  sra          t1, s7, s0
                  addi         a3, s7, -2030
                  srai         s11, zero, 9
                  addi         t1, s3, 1720
                  sltu         sp, t1, ra
                  slti         a2, ra, -843
659:              srl          t5, a4, s7
                  srai         t4, s0, 26
                  sra          t3, s4, s8
                  add          s3, s0, s9
663:              or           s8, t3, t3
                  slti         s3, gp, -795
                  sub          t5, t2, s2
                  sra          t5, t6, a5
                  nop
                  auipc        s3, 387249
                  slt          s4, sp, s10
                  srl          s1, s4, s9
                  xori         s8, t0, -424
                  srai         s1, s5, 20
                  sll          gp, t3, s1
                  addi         sp, s6, -936
                  beq          s0, tp, 694f
                  sltiu        a2, s11, -988
                  slt          s5, a1, s2
                  and          a7, s0, s10
                  sltiu        s4, a5, 698
                  blt          t6, s0, 689f
                  sll          s2, zero, a4
                  bgeu         s3, s11, 693f
                  slt          s0, t3, s11
                  blt          t1, s5, 701f
                  sll          s11, ra, a5
                  slti         s10, s8, -991
                  sll          s5, s3, s1
                  or           a7, t1, tp
689:              bge          a1, a2, 695f
                  addi         t2, t0, 579
                  addi         sp, s8, -597
                  xori         s9, tp, 845
693:              and          s2, ra, t4
694:              sra          s1, s6, a5
695:              srl          s3, a1, t0
                  add          s8, s8, zero
                  sltu         s10, t4, a0
                  xor          t5, a0, t5
                  nop
                  ori          a7, s6, -1828
701:              slt          s3, a2, a2
                  sll          tp, a7, t2
                  lui          s9, 840944
                  slti         s11, s7, -1784
                  blt          s3, a3, 712f
                  xor          gp, t5, tp
                  sltu         s7, s9, a6
                  bge          s6, a3, 722f
                  slli         a0, t1, 9
                  or           gp, s0, s11
                  bge          s5, t2, 726f
712:              or           s7, s3, a3
                  sll          a0, s10, t5
                  add          s1, a7, t4
                  srl          s5, t1, t3
                  sra          a1, s11, t6
                  sltiu        t3, s3, -1672
                  bltu         s1, t1, 738f
                  bltu         a0, s5, 723f
                  sltu         t3, a7, a7
                  srai         a1, a1, 15
722:              or           s6, a3, t2
723:              sltu         a5, a3, t3
                  bgeu         a2, t6, 733f
                  auipc        s9, 221938
726:              sra          s8, s10, t4
                  bltu         s10, s2, 739f
                  slti         s3, tp, -1648
                  sltu         sp, t5, a3
                  srli         tp, s7, 0
                  xor          s5, t2, ra
                  blt          t3, gp, 752f
733:              bne          tp, t0, 735f
                  bge          a6, t4, 753f
735:              xor          tp, s9, a4
                  ori          s7, t2, -315
                  xor          tp, a4, tp
738:              bge          s5, ra, 758f
739:              sltu         s4, t4, s5
                  and          s4, ra, sp
                  auipc        sp, 50257
                  or           s10, gp, ra
                  nop
                  slt          s2, s7, s6
                  xori         t6, s10, -1994
                  slti         t1, s6, 1986
                  sra          a7, s6, a3
                  slti         t2, t4, 642
                  slli         a5, ra, 25
                  or           t5, t2, t5
                  blt          tp, t5, 762f
752:              slli         t4, s6, 7
753:              sltiu        s6, gp, 1866
                  slti         t6, s7, -936
                  sll          t3, sp, a5
                  srl          a1, s8, a0
                  srli         s1, a0, 11
758:              srai         t6, s4, 13
                  sll          s4, s0, a5
                  auipc        a2, 1032636
                  add          t6, ra, s10
762:              slt          t5, s10, tp
                  bgeu         tp, s10, 772f
                  addi         t4, a1, 126
                  bgeu         ra, ra, 771f
                  sll          tp, s9, s4
                  bge          a1, s1, 773f
                  slti         t4, tp, 733
                  bgeu         t1, s10, 780f
                  beq          s5, t6, 780f
771:              srli         s3, a0, 6
772:              bltu         a2, a5, 778f
773:              slli         a7, t4, 9
                  ori          s9, tp, 310
                  srli         tp, a3, 5
                  slti         s2, t3, 732
                  ori          t4, zero, 1511
778:              sll          s6, tp, s6
                  addi         s9, t5, -14
780:              auipc        s5, 260008
                  slt          s6, t3, a4
                  or           s6, t5, a7
                  sra          a7, t0, s1
                  bltu         s9, s2, 793f
                  bge          s11, a4, 789f
                  sltiu        s9, tp, -747
                  xor          t5, t3, s9
                  sub          s6, t2, t3
789:              addi         a7, a7, -287
                  sub          a7, t4, tp
                  blt          a5, s6, 804f
                  add          a7, a4, s5
793:              srl          a3, ra, t1
                  srl          a1, s8, gp
                  bltu         s3, s2, 814f
                  beq          gp, t4, 815f
                  sub          ra, t6, s3
                  beq          s4, t3, 799f
799:              slti         s10, s6, 964
                  sub          t6, s2, s5
                  auipc        zero, 947208
                  bgeu         sp, gp, 820f
                  slt          s7, t4, tp
804:              or           s9, a6, gp
                  blt          ra, s10, 810f
                  slli         s1, s3, 23
                  bne          s2, s4, 824f
                  beq          zero, a5, 817f
                  lui          t4, 606367
810:              blt          t2, s0, 816f
                  srli         a3, s11, 23
                  addi         a1, t5, -1560
                  add          a1, s7, s9
814:              ori          s3, s10, -1328
815:              bge          zero, s8, 834f
816:              sub          ra, s7, sp
817:              srl          s3, s0, sp
                  addi         t6, s11, 1434
                  srli         a5, s4, 21
820:              xori         s2, a6, -473
                  bltu         t0, t2, 836f
                  sltu         zero, sp, s11
                  srli         s9, ra, 5
824:              bgeu         t2, s10, 828f
                  sll          s7, s10, gp
                  bge          t1, s10, 828f
                  xor          s7, s0, a2
828:              lui          sp, 953027
                  sra          zero, t0, a1
                  sltu         s3, tp, t2
                  sltu         a5, t3, s7
                  sltu         s4, zero, tp
                  lui          t3, 671039
834:              xori         ra, sp, 89
                  srai         ra, s10, 3
836:              blt          s8, t4, 856f
                  bne          s3, a6, 849f
                  addi         s1, s1, 1368
                  and          zero, s5, a2
                  andi         t2, t4, -1493
                  sltiu        tp, s7, 1650
                  blt          t0, s8, 848f
                  beq          a0, a4, 847f
                  auipc        a1, 400483
                  xor          s4, a1, t6
                  ori          t1, t1, -2039
847:              slli         s4, t4, 20
848:              lui          s6, 806305
849:              xor          ra, s11, s8
                  or           zero, a5, a7
                  or           ra, ra, zero
                  sltu         s9, a2, t1
                  ori          ra, zero, 1061
                  xor          sp, s11, s3
                  xor          s11, a5, zero
856:              sltiu        ra, s1, 1920
                  blt          tp, t5, 876f
                  andi         t4, sp, 820
                  and          t6, t3, s3
                  xori         t4, sp, -1047
                  xori         t1, sp, 1253
                  bltu         zero, t4, 873f
                  bgeu         s0, t4, 876f
                  addi         t4, s11, -1688
                  blt          t1, s6, 885f
                  auipc        s9, 652314
                  blt          a4, a0, 872f
                  srl          t2, gp, s11
                  add          a3, a5, a7
                  addi         ra, t5, -473
                  ori          s0, gp, -1439
872:              lui          s7, 629600
873:              srl          gp, a5, a0
                  sltu         s1, tp, t0
                  slli         s0, s5, 0
876:              slt          a5, a2, a6
                  sll          a3, tp, t4
                  lui          a5, 895025
                  xori         a1, gp, 592
                  and          s8, a3, s11
                  nop
                  srli         gp, s0, 29
                  sub          s11, t4, ra
                  add          s2, a4, t6
885:              ori          t3, a1, -416
                  srl          sp, a7, s3
                  or           s3, t6, a4
                  sltu         a2, a6, zero
                  sltiu        s8, s6, 405
                  blt          s4, s3, 899f
                  srl          s2, a6, a5
                  xor          t6, s7, t1
                  bgeu         tp, t0, 911f
                  bgeu         a3, s10, 911f
                  slli         a2, a6, 14
                  slli         s6, t6, 27
                  or           a2, t5, t0
                  blt          s10, s7, 908f
899:              slt          s11, t3, t0
                  slti         a1, s2, 638
                  blt          a3, s8, 921f
                  slti         t1, t3, -723
                  sll          a2, a3, s8
                  andi         t3, a6, -1554
                  xori         s2, t2, -277
                  and          s6, zero, a0
                  srli         a0, s1, 11
908:              addi         zero, t1, -929
                  bltu         t4, t3, 915f
                  blt          s10, a6, 929f
911:              beq          s11, ra, 918f
                  srli         s5, tp, 15
                  srai         t1, t6, 6
                  slt          a7, s5, s10
915:              beq          a4, a7, 926f
                  sra          s2, tp, t3
                  slti         s9, a2, 46
918:              bltu         t0, sp, 927f
                  auipc        s8, 856840
                  sub          ra, s6, a3
921:              srli         s5, a7, 3
                  add          s7, a0, tp
                  slt          s2, s2, s2
                  or           s2, a7, s10
                  blt          s2, t2, 926f
926:              srai         s10, s2, 5
927:              slli         t3, t0, 2
                  srli         gp, a5, 13
929:              ori          t1, a4, 1807
                  blt          s2, a6, 939f
                  bge          gp, s7, 945f
                  xori         s4, t5, 246
                  auipc        s11, 527516
                  lui          gp, 539285
                  xori         a7, s4, -1483
                  blt          s0, s2, 945f
                  xor          s7, s0, sp
                  blt          t4, s3, 944f
939:              bne          s6, s11, 956f
                  srai         t4, t4, 16
                  xori         s9, a6, -1937
                  sub          a3, a3, a4
                  nop
944:              xori         s10, a2, -1464
945:              bltu         s10, tp, 965f
                  bge          a6, s7, 958f
                  srai         s4, s6, 16
                  beq          s4, tp, 968f
                  and          gp, t4, s10
                  slli         s5, zero, 13
                  blt          s0, ra, 960f
                  bge          s0, s0, 971f
                  srli         s1, t2, 22
                  auipc        s9, 56433
                  and          s0, gp, a4
956:              srai         zero, a3, 11
                  srai         s5, s3, 2
958:              sub          s5, ra, zero
                  and          s2, a4, a2
960:              lui          s11, 595444
                  ori          zero, s9, 1991
                  srai         t1, t2, 22
                  slt          s2, a2, a6
                  and          s3, zero, t4
965:              slli         t1, s8, 17
                  sltu         ra, zero, a1
                  blt          a2, a1, 981f
968:              beq          s6, a3, 972f
                  xori         tp, a1, -747
                  bgeu         t3, a7, 979f
971:              andi         s5, t0, 434
972:              add          a7, s1, t2
                  ori          t1, a5, 419
                  blt          s1, s11, 985f
                  beq          t5, a5, 992f
                  xor          t4, s11, s6
                  blt          a2, t3, 988f
                  and          t5, a5, t2
979:              and          s4, a1, s7
                  ori          s4, zero, 363
981:              bgeu         s2, s0, 987f
                  auipc        a7, 105428
                  nop
                  or           gp, s9, s8
985:              sra          s1, t5, s0
                  auipc        a1, 744072
987:              xor          s9, ra, a1
988:              andi         t2, a6, -492
                  ori          tp, a5, 1122
                  blt          t5, t3, 1000f
                  slli         t5, ra, 2
992:              andi         a1, s8, -1483
                  and          a7, t4, tp
                  sltu         s0, s6, a4
                  add          s4, a4, a4
                  xor          s8, a6, a2
                  blt          t5, a4, 1006f
                  sltiu        a3, s5, 106
                  lui          s6, 436028
1000:             bgeu         a3, s3, 1006f
                  blt          s11, a3, 1005f
                  or           s11, a5, s9
                  sltiu        t1, s8, 426
                  sra          t6, s1, t5
1005:             bne          t3, sp, 1025f
1006:             beq          s1, s3, 1011f
                  sra          s10, a0, s7
                  bgeu         s2, s0, 1027f
                  ori          a0, t2, -2040
                  lui          s5, 983511
1011:             sub          a5, t5, s3
                  xor          zero, s6, s9
                  and          s10, t1, s0
                  auipc        t1, 275954
                  srai         a5, s6, 25
                  blt          ra, a1, 1035f
                  slti         t1, a2, 1934
                  add          t6, a2, s7
                  sub          t5, a6, s11
                  and          s1, a5, a2
                  sub          s9, t6, s7
                  beq          s3, tp, 1028f
                  sll          a3, a5, zero
                  nop
1025:             sltu         a2, zero, ra
                  addi         s3, zero, 2 #init loop 0 counter
                  slli         a0, a2, 12
                  srli         zero, a5, 29
                  addi         s11, zero, 11 #init loop 0 limit
                  sub          a5, s9, t4
sub_3_6_0_t:      nop
                  addi         s3, s3, 9 #update loop 0 counter
                  addi         a2, s2, -64
                  auipc        a0, 424203
                  bltu         s3, s11, sub_3_6_0_t #branch for loop 0
                  andi         t5, tp, 2006
                  bltu         a4, s0, 1035f
1027:             blt          s9, t1, 1033f
1028:             and          s8, zero, a4
                  sltiu        s1, gp, 1277
                  bge          s3, s4, 1031f
1031:             xori         s11, s4, -336
                  bge          gp, a5, 1050f
1033:             srai         s6, t4, 26
                  beq          a6, zero, 1049f
1035:             sra          s3, t3, t0
                  sltu         a3, a0, t0
                  sra          zero, a4, s5
                  sra          s6, s4, t1
                  sltiu        tp, s5, 1123
                  and          s5, s11, a7
                  lui          a5, 953891
                  beq          t6, a6, 1059f
                  srli         t2, s1, 3
                  bgeu         s0, t4, 1057f
                  srai         zero, a7, 30
                  add          ra, a3, s5
                  srli         tp, a2, 23
                  slt          s9, zero, s3
1049:             slli         a7, s2, 22
1050:             and          t5, s5, s6
                  add          s8, tp, t6
                  andi         a1, s6, 1458
                  andi         a7, s7, -952
                  sra          gp, gp, s1
                  add          zero, s10, a5
                  bltu         t4, t1, 1058f
1057:             and          s1, s5, t0
1058:             or           s5, a6, s8
1059:             ori          zero, a5, -789
                  add          t2, s7, s8
                  slli         s6, a3, 28
                  slt          t6, t0, a5
                  srl          s8, a1, a5
                  nop
                  bne          s1, a2, 1072f
                  sltu         t4, a6, t4
                  sltu         s6, t6, a0
                  sra          zero, s10, t3
                  ori          s9, sp, -860
                  sll          s0, s7, a0
                  bgeu         s9, zero, 1080f
1072:             or           sp, t3, sp
                  lui          sp, 745855
                  sll          a2, t5, t6
                  sltu         ra, a3, a3
                  bgeu         tp, s8, 1085f
                  bne          s10, t3, 1091f
                  srl          t3, zero, sp
                  or           tp, a1, t3
                  addi         t4, zero, -3 #init loop 1 counter
                  addi         s10, zero, 7 #init loop 1 limit
sub_3_12_1_t:     nop
                  slli         s0, s2, 20
                  addi         t4, t4, 6 #update loop 1 counter
                  addi         s11, zero, -6 #init loop 0 counter
                  sltiu        a0, a1, 1192
                  addi         a3, zero, 17 #init loop 0 limit
sub_3_12_0_t:     andi         t6, t0, 1445
                  srli         s3, s9, 17
                  addi         s11, s11, 10 #update loop 0 counter
                  blt          s11, a3, sub_3_12_0_t #branch for loop 0
                  blt          t4, s10, sub_3_12_1_t #branch for loop 1
                  srli         s1, a1, 29
1080:             srl          t3, t4, a1
                  sll          zero, t1, s5
                  bltu         s4, s5, 1102f
                  xori         a7, a6, -1192
                  beq          t4, gp, 1090f
1085:             lui          t3, 903962
                  sub          tp, tp, a2
                  andi         s0, a7, -459
                  sub          tp, t6, a1
                  and          s0, ra, tp
1090:             bge          t1, s5, 1108f
1091:             xori         s11, t4, 269
                  srli         t3, t3, 2
                  sll          t3, zero, s8
                  slti         t1, sp, -1567
                  sltu         s5, tp, s9
                  sra          s1, a6, a2
                  xor          t1, a0, a0
                  bltu         s6, s5, 1117f
                  sltu         s6, s11, s5
                  bne          t1, t5, 1104f
                  andi         sp, a5, -1781
1102:             srl          s8, s10, s5
                  slti         s10, s10, -460
1104:             nop
                  ori          gp, a7, -141
                  sub          a0, a1, s1
                  ori          zero, tp, 1662
1108:             auipc        a7, 670777
                  bge          s7, tp, 1115f
                  and          t6, t3, s11
                  add          a1, t2, a0
                  sra          s5, s4, a3
                  bne          a2, t5, 1123f
                  sra          t5, s2, ra
1115:             sltiu        a3, s10, -1088
                  sltu         s5, sp, s2
1117:             xori         a5, zero, 913
                  lui          s10, 496765
                  bne          s4, t1, 1124f
                  bltu         a1, s1, 1127f
                  andi         zero, s3, 25
                  or           zero, s9, s6
1123:             sra          gp, t3, t2
1124:             andi         t1, s1, 1326
                  auipc        zero, 93505
                  srai         s10, s2, 12
1127:             addi         zero, ra, 1523
                  srai         s4, s4, 31
                  blt          a2, a6, 1135f
                  lui          t4, 216549
                  lui          s11, 660489
                  bne          s2, a1, 1149f
                  blt          a0, s2, 1148f
                  lui          s0, 635722
1135:             xor          gp, a2, t6
                  sltiu        a0, ra, 156
                  srli         s5, s11, 16
                  xori         a1, a2, 1231
                  blt          s8, ra, 1141f
                  slli         s2, a3, 0
1141:             srai         t2, s4, 3
                  sltiu        tp, s9, -553
                  bne          tp, t4, 1155f
                  srl          t5, gp, s2
                  sltiu        t1, t2, -777
                  slti         s6, t6, 1707
                  xor          a5, s2, s8
1148:             beq          s8, zero, 1159f
1149:             slli         t6, a3, 21
                  xor          s10, a2, sp
                  sll          s7, s0, a5
                  nop
                  bltu         a3, a6, 1170f
                  bgeu         t0, a2, 1155f
1155:             srli         tp, s8, 6
                  lui          tp, 869022
                  srli         a1, t4, 21
                  bltu         s7, s7, 1171f
1159:             bltu         tp, s8, 1178f
                  srl          t2, s2, t2
                  sltiu        t5, sp, -614
                  slli         s11, s1, 20
                  sub          a2, a3, s9
                  sll          t4, t2, s11
                  bgeu         t6, a2, 1174f
                  nop
                  add          a3, zero, t3
                  addi         a7, s6, 827
                  srli         t1, a6, 14
1170:             ori          a7, t4, 371
1171:             andi         a3, t0, -873
                  srl          t2, sp, a7
                  beq          t0, ra, 1177f
1174:             lui          s8, 973707
                  blt          t0, s2, 1194f
                  bne          a7, a0, 1196f
1177:             ori          a2, t0, -707
1178:             xori         t4, t1, -179
                  lui          t2, 689578
                  bne          a7, s11, 1186f
                  blt          s1, t6, 1190f
                  addi         zero, s8, 1559
                  sltu         t3, s3, a1
                  beq          a7, gp, 1204f
                  beq          t0, a3, 1196f
1186:             sll          s4, a3, s4
                  lui          t5, 800892
                  add          t2, ra, a4
                  srli         s9, s2, 20
1190:             sub          a0, ra, t6
                  auipc        a2, 87770
                  srl          a1, s2, s10
                  slli         s11, s11, 6
1194:             and          a0, a0, s7
                  lui          s1, 206599
1196:             bne          s9, s11, 1215f
                  auipc        tp, 490819
                  sra          s9, s3, a4
                  slt          s8, a5, s10
                  srl          a1, a3, t2
                  sltiu        s8, a3, 1198
                  sub          a5, a1, sp
                  addi         s11, tp, 1417
1204:             add          tp, a0, t0
                  bne          a3, a5, 1211f
                  bgeu         t4, a5, 1215f
                  sra          s3, a7, t0
                  beq          s2, a4, 1221f
                  slti         a1, a3, 1736
                  blt          s8, s10, 1215f
1211:             and          t5, s5, sp
                  xor          s1, s1, s6
                  srai         t3, a3, 13
                  bne          sp, tp, 1220f
1215:             xor          s3, zero, a2
                  sra          a0, t2, s0
                  beq          a4, t0, 1232f
                  bge          gp, gp, 1227f
                  slti         s3, t3, -1929
1220:             and          t2, s3, s8
1221:             sltu         s1, a4, t2
                  add          s3, t0, zero
                  ori          zero, tp, 548
                  bne          s8, s10, 1235f
                  bne          sp, s1, 1243f
                  bne          a0, s11, 1228f
1227:             bge          a0, sp, 1236f
1228:             xori         s6, tp, -700
                  and          sp, s11, t5
                  sub          zero, t2, a5
                  slli         sp, gp, 7
1232:             srai         a3, s8, 29
                  auipc        s1, 915619
                  slti         s0, a0, 198
1235:             bltu         a5, a1, 1247f
1236:             or           s4, ra, a0
                  xor          s2, t4, a3
                  or           s2, s5, s3
                  sltu         s11, t6, s10
                  sra          s5, sp, s1
                  nop
                  bltu         a7, a1, 1262f
1243:             srai         s7, a1, 0
                  sltiu        s3, t1, 1907
                  ori          s3, a7, -1470
                  blt          s8, s9, 1260f
1247:             slti         s3, a6, 125
                  xori         a0, a3, 1429
                  andi         a5, zero, -858
                  bne          s5, gp, 1259f
                  blt          a1, t6, 1257f
                  sra          t5, s7, a6
                  bgeu         s1, tp, 1270f
                  lui          s8, 461870
                  blt          s10, s5, 1266f
                  bltu         s8, a5, 1266f
1257:             lui          zero, 222497
                  and          s3, a0, s2
1259:             sltu         a3, t0, ra
1260:             xori         s9, s6, 173
                  srl          a2, a6, t4
1262:             srli         s0, a6, 13
                  sra          s2, a7, a0
                  bgeu         s5, t2, 1284f
                  auipc        a0, 606605
1266:             xori         zero, ra, -1874
                  bne          t3, a0, 1271f
                  bltu         s1, tp, 1274f
                  add          a3, s6, a3
1270:             nop
1271:             srl          a3, t0, s9
                  nop
                  addi         ra, t6, -229
1274:             bgeu         t4, s1, 1291f
                  lui          a5, 981698
                  or           a7, t5, t3
                  sltiu        ra, a4, -1728
                  bne          a2, t1, 1285f
                  ori          s2, s10, -906
                  srli         s8, a7, 19
                  slt          s3, s8, s3
                  srai         t1, t1, 1
                  sltu         s0, s7, a0
1284:             and          s8, a1, a3
1285:             addi         t1, a6, -59
                  xori         a2, gp, 170
                  beq          a7, t2, 1288f
1288:             addi         a5, sp, -638
                  ori          s8, a3, -1850
                  slti         t5, a6, -466
                  addi         s4, zero, -7 #init loop 1 counter
                  sltiu        s0, a4, 1714
                  add          a2, a6, tp
                  addi         gp, zero, -1 #init loop 1 limit
sub_3_26_1_t:     slti         t5, a1, 1974
                  addi         s11, s3, -673
                  addi         s4, s4, 1 #update loop 1 counter
                  addi         s10, zero, -3 #init loop 0 counter
                  addi         t1, zero, 3 #init loop 0 limit
sub_3_26_0_t:     add          t2, s2, a0
                  nop
                  addi         s10, s10, 5 #update loop 0 counter
                  sub          a0, s5, s4
                  bltu         s10, t1, sub_3_26_0_t #branch for loop 0
                  beq          s4, gp, sub_3_26_1_t #branch for loop 1
                  sltu         a2, ra, zero
1291:             ori          s4, a2, -1032
                  sltiu        s7, sp, 313
                  srli         t6, a6, 11
                  bne          t3, a6, 1314f
                  slli         s10, t6, 22
                  addi         s9, s0, -1648
                  bne          a7, s10, 1301f
                  bgeu         a7, t3, 1317f
                  sltiu        s2, t4, 1691
                  or           t3, s7, a2
1301:             nop
                  sra          s3, ra, a1
                  nop
                  xor          t3, s3, ra
                  srli         s2, s4, 7
                  xori         zero, zero, -833
                  auipc        tp, 706193
                  and          s8, t0, s3
                  nop
                  slli         s9, t6, 2
                  slt          a7, t0, a6
                  bge          a2, t3, 1331f
                  nop
1314:             srai         a5, tp, 4
                  auipc        s7, 743821
                  lui          s9, 820595
1317:             sra          s10, tp, s2
                  blt          s9, s6, 1329f
                  srli         t1, s6, 16
                  slli         zero, a2, 11
                  srli         t2, s1, 4
                  andi         t6, s4, 1674
                  and          sp, s3, a0
                  bgeu         s10, s2, 1334f
                  bne          sp, s2, 1340f
                  bge          s9, sp, 1327f
1327:             srai         s3, s5, 26
                  andi         s11, ra, -1681
1329:             nop
                  srl          a1, s10, s0
1331:             bgeu         t1, sp, 1351f
                  sra          gp, s2, a2
                  addi         s3, s3, 1541
1334:             auipc        gp, 79162
                  sll          ra, s1, s8
                  or           t2, s5, ra
                  bge          s6, s5, 1346f
                  ori          t1, s2, 776
                  bne          s2, t3, 1345f
1340:             or           s2, t5, s8
                  sltiu        s7, s8, -464
                  sll          s4, s0, s11
                  lui          gp, 271986
                  bge          s8, t4, 1350f
1345:             srl          a3, zero, t1
1346:             or           s2, sp, s6
                  sltiu        t1, s4, 1895
                  srli         tp, t0, 25
                  auipc        a0, 213195
1350:             xor          s9, s8, a4
1351:             sltiu        s11, ra, -2046
                  or           t6, a6, t2
                  blt          sp, a7, 1365f
                  lui          a5, 359727
                  lui          s3, 151794
                  bne          a4, t4, 1376f
                  slli         zero, ra, 29
                  bltu         a5, s7, 1377f
                  slli         a1, s10, 3
                  xor          s9, s9, t3
                  srli         sp, a6, 25
                  add          s9, zero, s4
                  add          s9, s10, s5
                  auipc        sp, 343077
1365:             andi         s4, s3, 1268
                  blt          s4, s2, 1375f
                  add          zero, t6, gp
                  slt          s5, s4, s0
                  srl          zero, t2, t1
                  bne          a1, zero, 1389f
                  ori          s6, s11, -1997
                  sra          s7, sp, t0
                  sub          tp, s8, a1
                  slt          s6, a3, t5
1375:             slli         t3, ra, 1
1376:             and          a2, s4, a5
1377:             slti         a0, t1, 1017
                  sltiu        t1, ra, 1495
                  xori         s6, s0, 1000
                  srl          s5, t4, ra
                  addi         s10, zero, -10 #init loop 0 counter
                  sltiu        a0, sp, 1702
                  addi         t2, zero, -3 #init loop 0 limit
sub_3_0_0_t:      xor          t3, gp, zero
                  addi         s10, s10, 9 #update loop 0 counter
                  srl          t3, s3, s10
                  blt          s10, t2, sub_3_0_0_t #branch for loop 0
                  xori         a0, s6, -996
                  sub          ra, t6, s10
                  or           a1, t4, t6
                  sltiu        t2, tp, -909
                  lui          a0, 197184
                  nop
                  slti         s8, s10, -1567
                  slt          gp, zero, zero
                  beq          t2, s0, 1390f
1389:             beq          s4, a1, 1405f
1390:             sltu         s2, s11, s10
                  sub          s10, s6, a5
                  blt          t0, t6, 1403f
                  bgeu         s9, s1, 1399f
                  sra          a5, a3, s1
                  xori         sp, s4, -1944
                  lui          t1, 668633
                  sltu         t2, zero, t4
                  slli         t5, s3, 26
1399:             sltu         s2, s8, a4
                  srai         sp, gp, 27
                  or           s8, s11, a3
                  ori          t1, t4, 590
1403:             xor          s1, s5, a4
                  bltu         a5, ra, 1405f
1405:             andi         s3, tp, 662
                  lw           a0, 4(a6)
                  sub          s6, t3, a1
                  add          s2, s6, s5
                  xor          s4, a6, s8
                  sltu         s9, a1, s7
                  sltu         s9, t5, ra
                  add          s11, t6, t0
                  sltu         s9, s5, a0
                  addi         a6, a6, 8
                  sltiu        ra, a4, -1617
                  sltu         t6, s5, s9
1974:             addi x20, x10, 0
1974:             jalr x20, x20, 0
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
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x5, x16, zero
                  csrr x2, 0x300 # MSTATUS
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 31
                  bne x2, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x2, 0x341 # MEPC
                  csrr x2, 0x342 # MCAUSE
                  li x24, 0x3 # BREAKPOINT
                  beq x2, x24, ebreak_handler
                  li x24, 0x8 # ECALL_UMODE
                  beq x2, x24, ecall_handler
                  li x24, 0x9 # ECALL_SMODE
                  beq x2, x24, ecall_handler
                  li x24, 0xb # ECALL_MMODE
                  beq x2, x24, ecall_handler
                  li x24, 0x1
                  beq x2, x24, instr_fault_handler
                  li x24, 0x5
                  beq x2, x24, load_fault_handler
                  li x24, 0x7
                  beq x2, x24, store_fault_handler
                  li x24, 0xc
                  beq x2, x24, pt_fault_handler
                  li x24, 0xd
                  beq x2, x24, pt_fault_handler
                  li x24, 0xf
                  beq x2, x24, pt_fault_handler
                  li x24, 0x2 # ILLEGAL_INSTRUCTION
                  beq x2, x24, illegal_instr_handler
                  csrr x24, 0x343 # MTVAL
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
                  add x16, x5, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  mret

load_fault_handler:
                  add x16, x5, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  mret

store_fault_handler:
                  add x16, x5, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  mret

ebreak_handler:   
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x16, x5, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  mret

illegal_instr_handler:
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x16, x5, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x2, 0x300 # MSTATUS;
                  csrr  x2, 0x304 # MIE;
                  csrr  x2, 0x344 # MIP;
                  csrrc x2, 0x344, x2 # MIP;
                  add x16, x5, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
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
