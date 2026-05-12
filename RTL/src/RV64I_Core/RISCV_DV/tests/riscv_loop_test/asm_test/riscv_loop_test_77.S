.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x26, h0_start
jalr x0, x26, 0
h0_start:
                  li x8, 0x40000100
                  csrw 0x301, x8
kernel_sp:        
                  la x4, kernel_stack_end

trap_vec_init:    
                  la x8, mtvec_handler
                  ori x8, x8, 0
                  csrw 0x305, x8 # MTVEC

mepc_setup:       
                  la x8, init
                  csrw 0x341, x8

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x8, 0x1800
                  csrw 0x300, x8 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x7758a6a
                  li x2, 0x80000000
                  li x3, 0x0
                  li x5, 0x3241f7d5
                  li x6, 0x0
                  li x7, 0x0
                  li x8, 0xf39d20ca
                  li x9, 0x0
                  li x10, 0x80000000
                  li x11, 0x0
                  li x12, 0x0
                  li x13, 0x80000000
                  li x14, 0x3f1849b4
                  li x15, 0xa
                  li x16, 0xe
                  li x17, 0x60b2712d
                  li x18, 0x0
                  li x19, 0x0
                  li x20, 0x8
                  li x21, 0x33103aa7
                  li x23, 0xf
                  li x24, 0xeaf593cb
                  li x25, 0x0
                  li x26, 0x2
                  li x27, 0x80000000
                  li x28, 0xf74b7763
                  li x29, 0x4
                  li x30, 0xef4d72d7
                  li x31, 0xae159f92
                  la x22, user_stack_end
main:             addi         s4, zero, 5 #init loop 0 counter
                  slt          t5, t5, s7
                  slt          a3, a2, a6
                  sll          s3, s11, s11
                  sra          t5, a2, s10
                  addi         gp, zero, 5 #init loop 0 limit
                  sltu         s5, ra, s0
                  sub          sp, a7, s2
main_2_0_t:       auipc        s9, 591744
                  ori          t4, t2, 1702
                  nop
                  ori          s8, a0, -1517
                  or           t2, s3, a4
                  and          s1, tp, a5
                  or           zero, s9, a7
                  sub          t5, a0, s10
                  xor          t4, t4, t5
                  addi         s4, s4, -4 #update loop 0 counter
                  srai         sp, s1, 7
                  slli         a7, s2, 9
                  slti         s8, s9, 242
                  slt          t1, t6, s3
                  sub          s2, s0, s6
                  slli         t1, ra, 0
                  sltiu        a7, ra, 735
                  bgeu         s4, gp, main_2_0_t #branch for loop 0
                  xori         a5, t1, 1364
                  addi         gp, zero, -7 #init loop 1 counter
                  xor          zero, t5, s5
                  addi         a7, zero, -17 #init loop 1 limit
                  slt          a4, t4, tp
                  xor          s9, s3, s2
                  sll          a3, s0, s1
                  xori         t4, tp, -1087
                  andi         a6, tp, -1182
main_1_1_t:       and          a3, gp, s3
                  addi         gp, gp, -5 #update loop 1 counter
                  srai         s2, a4, 0
                  slti         s1, s8, -122
                  addi         t2, zero, -10 #init loop 0 counter
                  sll          s11, s0, t1
                  addi         a0, zero, 5 #init loop 0 limit
main_1_0_t:       andi         zero, ra, 1864
                  and          t6, s2, t1
                  addi         s11, a0, -1360
                  andi         a6, t4, 645
                  addi         t2, t2, 6 #update loop 0 counter
                  sltiu        a1, s9, 296
                  bltu         t2, a0, main_1_0_t #branch for loop 0
                  and          a6, a1, s5
                  sub          s1, gp, s7
                  xori         a2, s6, 272
                  sra          s4, t1, a7
                  and          s1, s3, s11
                  srl          a2, s4, a6
                  ori          s0, a1, 420
                  beq          gp, a7, main_1_1_t #branch for loop 1
                  srl          zero, t2, a5
                  addi         a0, zero, 3 #init loop 1 counter
                  addi         ra, zero, -17 #init loop 1 limit
main_3_1_t:       sltiu        t2, s0, 1419
                  addi         a0, a0, -2 #update loop 1 counter
                  addi         a5, zero, 6 #init loop 0 counter
                  addi         s7, zero, -14 #init loop 0 limit
main_3_0_t:       slt          t3, s2, s8
                  addi         a5, a5, -4 #update loop 0 counter
                  beq          a5, s7, main_3_0_t #branch for loop 0
                  bge          a0, ra, main_3_1_t #branch for loop 1
                  and          s9, t2, s1
                  andi         t0, gp, 14
                  sltiu        s5, zero, -1133
                  slt          s7, sp, a6
                  bltu         s8, t6, 17f
                  sub          s3, t1, sp
                  slt          sp, s10, t2
                  sll          s7, a6, a1
                  bltu         t2, a3, 20f
                  andi         s9, s1, -807
                  lui          s2, 612508
                  bgeu         s1, t4, 27f
                  addi         a6, a5, 1510
                  slli         a2, a7, 10
                  add          s4, t2, s7
                  slli         a6, t4, 11
                  nop
                  slti         gp, a1, 1748
17:               nop
                  srai         t1, sp, 0
                  srl          a1, a0, s4
20:               sub          a7, s10, s8
                  bgeu         tp, s8, 33f
                  auipc        s9, 926143
                  xor          a4, s7, a1
                  bne          zero, s10, 43f
                  xor          t2, t6, s6
                  srli         t2, s10, 11
27:               add          s11, t6, zero
                  sltiu        s3, a5, 1539
                  sltu         a5, s5, a5
                  srai         t6, zero, 15
                  sra          s7, s4, s8
                  slt          s0, s9, a7
33:               bltu         t4, s7, 36f
                  nop
                  addi         s3, a6, 565
36:               auipc        a1, 176209
                  lui          s9, 778445
                  or           t6, a7, a0
                  srl          a0, a1, a4
                  bltu         s5, gp, 50f
                  add          s2, t3, a4
                  andi         t1, s5, -711
43:               add          a4, s3, t0
                  bltu         s11, a1, 60f
                  lui          a2, 464711
                  bne          s2, ra, 56f
                  sra          gp, t4, s1
                  beq          s7, zero, 64f
                  or           a2, tp, ra
50:               andi         a5, a4, -1323
                  or           s3, s3, sp
                  xor          t3, t6, a5
                  lui          a6, 667784
                  bltu         a5, s10, 64f
                  auipc        s1, 350530
56:               srli         t0, t6, 11
                  bge          a7, a3, 67f
                  beq          t0, t3, 73f
                  addi         s9, zero, 1 #init loop 1 counter
                  sltiu        t1, a5, 1713
                  add          a6, t4, a1
                  srai         s8, tp, 19
                  addi         a7, zero, -7 #init loop 1 limit
                  srai         a3, s10, 26
main_4_1_t:       xori         s0, t1, 207
                  and          t6, a3, s8
                  add          ra, s1, a1
                  addi         s9, s9, -8 #update loop 1 counter
                  sub          a5, gp, a1
                  ori          s3, a5, 607
                  add          s4, sp, s0
                  sub          gp, tp, s8
                  sll          s4, s0, s8
                  sltiu        zero, gp, 741
                  andi         t5, s9, 1710
                  add          t2, s6, s4
                  addi         a1, zero, 7 #init loop 0 counter
                  or           a3, zero, a3
                  addi         s7, zero, 17 #init loop 0 limit
                  auipc        a6, 791339
main_4_0_t:       sltu         s2, a6, s8
                  srli         sp, s1, 9
                  add          a6, t6, s2
                  addi         a1, a1, 5 #update loop 0 counter
                  srai         a4, a3, 20
                  bne          a1, s7, main_4_0_t #branch for loop 0
                  and          a2, a3, zero
                  sltiu        s2, s0, -1439
                  xori         a6, t2, -483
                  beq          s9, a7, main_4_1_t #branch for loop 1
                  sll          t1, a5, t6
                  xori         sp, a6, 1356
60:               sltiu        t2, a2, 1600
                  blt          a0, t6, 64f
                  sub          a3, sp, s6
                  blt          t2, t5, 78f
64:               srai         sp, a6, 21
                  auipc        t2, 166314
                  lui          t5, 14630
67:               srai         zero, t6, 12
                  srli         a2, a0, 27
                  sltu         a5, a0, tp
                  andi         t0, t1, -1167
                  bltu         s0, a1, 90f
                  srl          t4, s4, a1
73:               slli         s8, zero, 8
                  slti         s5, zero, 93
                  sra          a6, gp, t4
                  sltu         t0, t4, a0
                  sll          a3, sp, a4
78:               slli         s3, a7, 20
                  srai         s0, s11, 11
                  nop
                  bne          s4, a2, 93f
                  srai         s0, a3, 0
                  slli         a4, s10, 17
                  addi         a6, t6, -686
                  bgeu         ra, sp, 101f
                  sll          gp, s7, s5
                  xori         s5, s10, 931
                  or           t1, a4, s10
                  la           s8, sub_1
                  sltiu        t1, s10, -377
                  slti         t1, a3, -1512
                  addi         s8, s8, 465
                  sra          gp, s10, a4
main_j1:          jalr         ra, s8, -464 #jump main -> sub_1
                  or           a1, a2, s3
                  bge          t1, a4, 100f
                  srai         a4, s10, 19
90:               ori          a1, s5, -397
                  andi         t2, t2, 1021
                  auipc        s8, 214841
93:               slt          s7, s8, t2
                  sub          s1, t6, gp
                  xori         zero, a3, -1490
                  srai         t5, a4, 25
                  sltu         a7, t3, sp
                  blt          t4, s0, 108f
                  srli         t3, s1, 27
100:              auipc        s2, 591293
101:              bne          a1, s9, 111f
                  sll          s4, a0, s9
                  auipc        s7, 876201
                  auipc        s0, 121596
                  addi         a1, zero, 1 #init loop 1 counter
                  addi         s1, zero, 5 #init loop 1 limit
main_0_1_t:       addi         s7, s8, 1373
                  addi         a1, a1, 5 #update loop 1 counter
                  addi         a5, zero, 1 #init loop 0 counter
                  and          a7, s4, t4
                  addi         a2, zero, -5 #init loop 0 limit
main_0_0_t:       sltiu        a7, s3, 262
                  slt          a0, t3, s10
                  addi         a5, a5, -2 #update loop 0 counter
                  sltu         t6, s6, s8
                  bge          a5, a2, main_0_0_t #branch for loop 0
                  bltu         a1, s1, main_0_1_t #branch for loop 1
                  slli         gp, s3, 26
                  addi         t2, s1, 1461
                  ori          ra, s5, 582
                  srl          s11, t3, a7
108:              bne          s5, a4, 114f
                  blt          t3, s10, 120f
                  slti         a3, t2, 673
111:              sub          a0, s1, a4
                  beq          t4, s6, 122f
                  srai         s4, a3, 17
114:              bne          a4, t3, 128f
                  sra          t0, t2, a6
                  and          s4, s6, a7
                  bgeu         t1, s11, 122f
                  sll          s3, s9, s10
                  sra          s5, a3, ra
120:              auipc        s3, 364936
                  lui          s8, 996548
122:              blt          zero, a0, 124f
                  slt          s1, a1, t0
124:              beq          a1, s6, 132f
                  blt          s6, t6, 128f
                  sltu         t6, t5, s10
                  bltu         s3, a4, 135f
128:              ori          t1, s5, 672
                  nop
                  bgeu         a4, t6, 146f
                  or           s5, s7, a3
132:              bne          a2, s4, 149f
                  sltu         s1, t6, zero
                  sub          s9, s3, zero
135:              sra          a5, s0, zero
                  sltu         s2, a5, t0
                  nop
                  bgeu         a7, s3, 151f
                  ori          a2, a1, -1192
                  and          a0, s2, s2
                  bge          zero, s9, 149f
                  slti         t6, a1, 1136
                  slti         s3, a0, -378
                  auipc        s7, 31298
                  andi         a3, t0, 1267
146:              sub          t4, a5, a7
                  sltiu        t6, ra, 1743
                  and          s3, s7, s2
149:              ori          t1, s5, -1796
                  bne          t3, t3, 162f
151:              beq          s7, s11, 154f
                  slli         gp, a5, 27
                  auipc        t4, 749712
154:              blt          a5, s7, 164f
                  slt          t4, a1, a1
                  bgeu         a4, s7, 175f
                  or           s1, sp, sp
                  bge          t0, t2, 160f
                  srai         a1, s5, 29
160:              slli         a1, a0, 7
                  slti         t0, a6, -1936
162:              add          s8, sp, zero
                  srai         a6, ra, 19
164:              bgeu         s1, s4, 174f
                  sltu         s3, gp, s10
                  and          t3, s11, s3
                  bltu         s4, s2, 170f
                  bltu         t0, a5, 171f
                  andi         a5, a5, 1404
170:              lui          a3, 881334
171:              sra          zero, sp, gp
                  sub          s2, a4, zero
                  slti         t5, zero, 688
174:              slti         a5, t1, 1889
175:              add          a1, ra, t0
                  andi         s5, s9, 1695
                  sra          a4, s7, t1
                  nop
                  beq          a2, a3, 189f
                  bltu         a5, s0, 199f
                  xor          s9, s3, a5
                  and          sp, s9, t6
                  srli         s5, s1, 13
                  sub          s2, t3, s0
                  slli         a5, s3, 16
                  auipc        t0, 746446
                  slt          a0, s4, t1
                  blt          s7, t4, 200f
189:              nop
                  slli         a7, s11, 12
                  bne          s3, s11, 207f
                  xori         s0, ra, -389
                  slt          a7, s4, s9
                  blt          s9, t2, 208f
                  blt          a6, t0, 205f
                  lui          s1, 211991
                  bgeu         a3, a0, 213f
                  sltu         s2, s4, t0
199:              sltiu        s3, a1, 1595
200:              and          s2, sp, t5
                  auipc        a3, 499086
                  add          a5, a4, a1
                  xor          sp, gp, s5
                  sub          s9, a5, t5
205:              and          zero, t0, s8
                  addi         a4, s4, 1037
207:              srli         t4, s9, 9
208:              slli         zero, t2, 30
                  srai         t5, t2, 11
                  bge          t0, a7, 224f
                  sll          zero, a2, gp
                  slli         sp, a1, 8
213:              nop
                  sra          t4, gp, s10
                  lui          a1, 948124
                  srai         gp, s5, 10
                  sltu         s0, zero, t4
                  bge          a4, s5, 228f
                  srai         zero, a6, 21
                  andi         t6, s4, 491
                  srli         t4, s11, 11
                  sra          a5, a7, t4
                  srli         s11, s8, 10
224:              sltu         s1, zero, a0
                  slt          t3, s5, s7
                  slli         a0, s8, 7
                  slt          gp, tp, s10
228:              bltu         s11, s6, 238f
                  xori         t5, t2, -1489
                  ori          zero, tp, 1552
                  add          zero, s2, s6
                  sra          a7, a1, s1
                  srli         a0, s8, 21
                  blt          s6, zero, 245f
                  bge          s9, tp, 245f
                  slli         sp, s8, 2
                  bge          s6, s7, 243f
238:              blt          s6, t1, 253f
                  bne          t5, s5, 244f
                  lui          a1, 407991
                  bltu         sp, sp, 249f
                  slt          a1, s10, a0
243:              sltu         t2, t4, ra
244:              bge          t3, a7, 256f
245:              or           a3, s5, sp
                  blt          sp, a7, 261f
                  srai         t0, s11, 11
                  auipc        a7, 986004
249:              xori         a1, tp, -820
                  slt          t1, s5, s0
                  bne          zero, a1, 265f
                  auipc        a0, 37167
253:              bgeu         a5, s0, 263f
                  auipc        s0, 746272
                  sub          s4, ra, tp
256:              xori         s2, s8, 565
                  addi         a5, s3, -492
                  and          a6, t0, a4
                  add          a1, t1, a2
                  slli         t1, ra, 6
261:              sltu         a5, a2, zero
                  xori         s8, sp, -1908
263:              and          ra, a0, t1
                  ori          t2, a4, 1153
265:              bgeu         s9, gp, 268f
                  bne          t5, s2, 280f
                  or           t5, zero, s3
268:              bne          s7, ra, 278f
                  sltiu        s5, t4, -1019
                  slt          ra, s4, t3
                  nop
                  slli         t0, sp, 9
                  bne          tp, t3, 282f
                  lui          zero, 433146
                  bge          tp, s3, 282f
                  slli         t4, t3, 25
                  beq          s6, s9, 282f
278:              beq          a0, t1, 280f
                  nop
280:              beq          gp, a7, 282f
                  bne          t5, s3, 282f
282:              xori         t4, t0, -1707
                  la x26, test_done
                  jalr x0, x26, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            addi         s6, s6, -56
                  addi         a5, s10, -1329
                  andi         a2, s0, 200
                  srai         s0, ra, 18
                  sw           ra, 4(s6)
                  xori         a6, s8, -829
                  nop
                  addi         s2, zero, 6 #init loop 0 counter
                  xori         t6, zero, -227
                  add          a0, zero, a5
                  addi         sp, zero, 4 #init loop 0 limit
                  and          s11, a6, a1
sub_4_0_0_t:      ori          s9, t1, -460
                  addi         s2, s2, -2 #update loop 0 counter
                  sltiu        t4, a1, -1762
                  andi         zero, s0, 318
                  bne          s2, sp, sub_4_0_0_t #branch for loop 0
                  ori          s1, s0, -1335
                  addi         a2, zero, 8 #init loop 0 counter
                  or           t4, s10, s9
                  sltu         a7, a7, s1
                  add          s2, s6, a2
                  add          a3, s6, s10
                  addi         s4, zero, 20 #init loop 0 limit
                  ori          a1, s1, 2042
                  add          t3, s7, gp
sub_4_1_0_t:      or           a0, s8, s3
                  nop
                  xori         a7, zero, 877
                  addi         s8, s3, -1215
                  slli         s11, t5, 24
                  addi         a2, a2, 8 #update loop 0 counter
                  sll          a7, s10, a6
                  auipc        s1, 461525
                  slt          t3, a0, s2
                  srai         t6, a6, 16
                  bltu         a2, s4, sub_4_1_0_t #branch for loop 0
                  or           s11, t1, a0
                  xor          s7, a0, t5
                  sra          t1, t1, ra
                  srli         gp, s2, 20
                  sll          s11, a4, t3
                  bge          s6, a3, 20f
                  bgeu         a3, s5, 19f
                  slli         t6, gp, 0
                  nop
                  blt          t4, t1, 27f
                  and          sp, s4, s8
                  blt          a3, a6, 29f
                  sltiu        a6, a2, -37
                  srl          t4, a7, t4
                  slti         s3, s0, 72
                  sub          a6, s10, a2
                  blt          a1, s11, 20f
                  sub          a7, s1, t1
                  beq          s10, ra, 33f
                  ori          a6, a1, 887
19:               srai         t3, s11, 4
20:               bltu         s4, gp, 36f
                  slt          t6, a3, s10
                  slli         zero, a3, 18
                  srl          t1, t2, s9
                  srl          s9, t3, s10
                  lui          s9, 1007060
                  sra          t2, s1, a5
27:               lui          t0, 133662
                  slli         s0, s4, 19
29:               slli         s4, s9, 6
                  sub          t0, s0, t5
                  beq          s2, s0, 36f
                  sltu         s0, s3, s6
33:               ori          a3, t2, 1209
                  auipc        s8, 873625
                  sll          t0, s0, a7
36:               blt          t6, ra, 38f
                  sltu         a2, t2, s1
38:               slli         t4, a1, 25
                  sltiu        s4, t3, 1559
                  blt          s2, a6, 48f
                  or           s1, a5, a6
                  lui          a6, 875233
                  auipc        a4, 758204
                  sltiu        s3, s9, 1378
                  lui          s2, 640312
                  sltu         s3, ra, s2
                  auipc        s7, 287148
48:               and          zero, a0, s0
                  slti         a1, t6, 1467
                  beq          a1, a1, 70f
                  sltu         t3, s8, a2
                  and          gp, s0, t2
                  or           a6, s10, t0
                  and          a4, s4, s4
                  and          s7, t3, s11
                  srli         ra, tp, 12
                  sltu         s4, s2, s10
                  or           a2, a3, s1
                  ori          ra, sp, -1311
                  sub          a0, s8, a3
                  sub          s3, a1, t5
                  xori         a4, ra, 1211
                  or           zero, s0, s11
                  sub          a1, zero, ra
                  bge          s11, t1, 71f
                  slt          a7, tp, t6
                  slli         a3, t0, 28
                  andi         s1, s5, -1178
                  bge          t1, zero, 78f
70:               slt          a3, a4, gp
71:               ori          t1, sp, 1290
                  srli         sp, t0, 31
                  sub          t6, t3, gp
                  slli         t4, tp, 8
                  and          a7, s11, a6
                  lui          gp, 240122
                  srl          s5, a6, t2
78:               bge          t1, t4, 87f
                  ori          t3, s0, -145
                  xori         t4, gp, 1388
                  beq          a3, s4, 98f
                  bne          s6, a6, 94f
                  ori          t6, t0, 1499
                  srl          zero, s5, t1
                  blt          s4, t2, 103f
                  add          sp, sp, s1
87:               andi         s2, a2, 1193
                  slti         t6, t1, 1848
                  slli         t5, s6, 1
                  srli         s7, sp, 11
                  nop
                  sltiu        t4, s7, -781
                  srai         a2, t3, 31
94:               bgeu         s2, s2, 108f
                  andi         t6, t4, -61
                  srai         a4, a7, 25
                  sub          zero, a2, a2
98:               xori         s1, t1, -8
                  slli         t1, t2, 5
                  xori         sp, s10, 948
                  or           t0, t2, a7
                  add          s9, t3, zero
103:              bgeu         a1, s7, 108f
                  slli         s3, a3, 31
                  srai         s0, tp, 18
                  nop
                  andi         gp, gp, -1003
108:              xor          a1, s3, s4
                  srli         t4, t5, 7
                  lw           ra, 4(s6)
                  srli         t5, a6, 1
                  sltiu        gp, t2, 1572
                  srli         a7, s10, 9
                  sub          a7, a4, s0
                  sra          a7, s9, s10
                  addi         s6, s6, 56
                  addi         t2, a5, -1329
156:              addi x31, x1, 1
156:              jalr x31, x31, 0
sub_5:            sltiu        a5, s3, -1843
                  addi         a2, s9, -1627
                  bne          s0, s11, sub_5_stack_p
                  add          t4, s6, t2
sub_5_stack_p:    addi         s6, s6, -44
                  sra          a1, t5, s9
                  sw           ra, 4(s6)
                  lui          t0, 116402
                  slt          t2, s10, a5
                  addi         s5, zero, -8 #init loop 1 counter
                  sra          t1, t6, t1
                  xori         a4, s8, -507
                  addi         t3, zero, -17 #init loop 1 limit
                  xori         s11, a5, -313
                  xori         ra, s5, -1283
sub_5_12_1_t:     slt          a5, tp, a5
                  addi         s5, s5, -9 #update loop 1 counter
                  lui          s9, 347502
                  addi         a7, zero, -1 #init loop 0 counter
                  addi         t0, zero, -7 #init loop 0 limit
                  auipc        zero, 447341
                  nop
                  lui          s11, 649548
sub_5_12_0_t:     sltu         a6, t2, t3
                  addi         a7, a7, -6 #update loop 0 counter
                  sub          a5, t6, t0
                  beq          a7, t0, sub_5_12_0_t #branch for loop 0
                  bge          s5, t3, sub_5_12_1_t #branch for loop 1
                  and          zero, zero, s7
                  addi         s1, zero, 8 #init loop 1 counter
                  slt          a3, a1, a2
                  sltu         t1, s5, s5
                  addi         ra, zero, 12 #init loop 1 limit
sub_5_20_1_t:     xori         a1, a7, -2047
                  addi         s4, zero, -405
                  sll          t0, t6, a2
                  sltiu        a2, gp, 422
                  addi         s1, s1, 10 #update loop 1 counter
                  srl          a3, a4, zero
                  addi         a5, zero, 6 #init loop 0 counter
                  srl          t6, a3, s1
                  addi         t2, zero, 17 #init loop 0 limit
                  srai         s9, s5, 25
sub_5_20_0_t:     slt          gp, a5, s3
                  xori         zero, ra, 1793
                  sltu         a1, t0, a7
                  add          t0, a4, s4
                  addi         a5, a5, 5 #update loop 0 counter
                  bltu         a5, t2, sub_5_20_0_t #branch for loop 0
                  xori         a2, a3, -794
                  ori          s3, t3, -322
                  srl          a3, a1, gp
                  sll          s11, a0, ra
                  add          a3, s2, a3
                  bltu         s1, ra, sub_5_20_1_t #branch for loop 1
                  srli         a6, t6, 17
                  addi         sp, zero, -3 #init loop 1 counter
                  addi         s0, zero, 5 #init loop 1 limit
sub_5_3_1_t:      andi         s3, t6, -618
                  addi         sp, sp, 8 #update loop 1 counter
                  addi         s9, zero, 8 #init loop 0 counter
                  and          s11, tp, sp
                  addi         a6, zero, 19 #init loop 0 limit
sub_5_3_0_t:      addi         a1, t6, 1192
                  addi         s9, s9, 5 #update loop 0 counter
                  slli         t2, a2, 6
                  bltu         s9, a6, sub_5_3_0_t #branch for loop 0
                  bne          sp, s0, sub_5_3_1_t #branch for loop 1
                  add          zero, a2, t1
                  addi         t0, zero, 5 #init loop 0 counter
                  xori         ra, s4, -1909
                  andi         t6, sp, -881
                  andi         t3, s9, 530
                  and          t2, a7, s6
                  sub          zero, s9, t1
                  addi         t4, zero, 18 #init loop 0 limit
                  sll          ra, a1, a6
sub_5_18_0_t:     auipc        s9, 658463
                  addi         t0, t0, 8 #update loop 0 counter
                  xor          a5, t1, a2
                  auipc        s8, 865556
                  xori         a1, s0, 14
                  slli         zero, sp, 7
                  ori          s1, a2, -1321
                  ori          s3, s5, -1767
                  addi         t5, t2, 1963
                  srli         s5, a4, 9
                  ori          a3, s0, 2010
                  or           a1, s7, s4
                  bltu         t0, t4, sub_5_18_0_t #branch for loop 0
                  slli         a5, s9, 4
                  addi         s4, zero, 3 #init loop 1 counter
                  lui          t0, 933550
                  addi         s8, zero, 16 #init loop 1 limit
                  or           s9, s6, s6
sub_5_6_1_t:      slt          ra, s2, a2
                  xor          s7, s9, sp
                  addi         s4, s4, 3 #update loop 1 counter
                  xor          a4, a5, a5
                  addi         sp, zero, 0 #init loop 0 counter
                  nop
                  addi         a3, zero, 18 #init loop 0 limit
sub_5_6_0_t:      addi         s7, t1, -1302
                  slli         zero, t1, 2
                  addi         sp, sp, 10 #update loop 0 counter
                  add          a2, zero, s2
                  bltu         sp, a3, sub_5_6_0_t #branch for loop 0
                  bltu         s4, s8, sub_5_6_1_t #branch for loop 1
                  lui          s5, 1029876
                  addi         sp, zero, -2 #init loop 1 counter
                  addi         s3, zero, 6 #init loop 1 limit
                  add          a2, s5, a7
sub_5_21_1_t:     auipc        t5, 1004187
                  addi         sp, sp, 8 #update loop 1 counter
                  sltu         s2, a1, s10
                  sltiu        t4, t2, 896
                  addi         s0, zero, -10 #init loop 0 counter
                  addi         a0, zero, -16 #init loop 0 limit
sub_5_21_0_t:     nop
                  srl          a7, a4, t3
                  addi         s0, s0, -7 #update loop 0 counter
                  bge          s0, a0, sub_5_21_0_t #branch for loop 0
                  or           a6, s8, a6
                  sltu         s1, t3, s7
                  srai         t3, t6, 3
                  andi         s5, a5, -595
                  add          s5, t4, t5
                  add          s5, s11, t4
                  sltiu        t6, s10, 49
                  slt          t3, ra, t3
                  beq          sp, s3, sub_5_21_1_t #branch for loop 1
                  sltiu        t5, s10, 1794
                  addi         t6, zero, -8 #init loop 0 counter
                  sltiu        zero, zero, 1901
                  ori          s8, s6, 956
                  sra          a4, s6, s7
                  srai         s4, a0, 30
                  addi         ra, zero, 17 #init loop 0 limit
                  sub          t4, a0, s4
sub_5_1_0_t:      nop
                  addi         t6, t6, 7 #update loop 0 counter
                  sltu         a0, t2, s5
                  sub          s5, t6, s3
                  blt          t6, ra, sub_5_1_0_t #branch for loop 0
                  srai         a1, s0, 22
                  addi         a5, zero, -4 #init loop 1 counter
                  srli         s5, t3, 24
                  slt          a0, gp, s2
                  addi         a7, s7, -1787
                  addi         s9, zero, 6 #init loop 1 limit
                  slti         a7, s7, 1808
sub_5_15_1_t:     auipc        t1, 409685
                  and          ra, s5, t6
                  xor          a4, s5, tp
                  addi         a5, a5, 10 #update loop 1 counter
                  lui          a6, 257536
                  sub          gp, t6, s0
                  addi         a3, zero, 6 #init loop 0 counter
                  addi         a7, t6, 428
                  auipc        s4, 571828
                  slti         a7, s1, 121
                  addi         t0, zero, 14 #init loop 0 limit
sub_5_15_0_t:     andi         s7, zero, 59
                  slli         t3, a7, 3
                  slli         s7, ra, 11
                  addi         a3, a3, 5 #update loop 0 counter
                  slli         sp, ra, 3
                  nop
                  ori          t5, s6, 1445
                  sub          sp, a0, a4
                  xori         s4, ra, -684
                  xor          t6, t4, s8
                  bltu         a3, t0, sub_5_15_0_t #branch for loop 0
                  xori         s2, a5, -589
                  beq          a5, s9, sub_5_15_1_t #branch for loop 1
                  auipc        t6, 972547
                  addi         a0, zero, -4 #init loop 1 counter
                  lui          a6, 49563
                  addi         s1, zero, 5 #init loop 1 limit
sub_5_17_1_t:     xor          zero, gp, t6
                  addi         a0, a0, 8 #update loop 1 counter
                  addi         s8, zero, 5 #init loop 0 counter
                  addi         t4, zero, 9 #init loop 0 limit
                  and          s7, s4, s1
sub_5_17_0_t:     auipc        t1, 980727
                  addi         s8, s8, 9 #update loop 0 counter
                  blt          s8, t4, sub_5_17_0_t #branch for loop 0
                  blt          a0, s1, sub_5_17_1_t #branch for loop 1
                  sltu         ra, t3, s3
                  addi         t5, zero, 10 #init loop 0 counter
                  addi         s1, zero, 9 #init loop 0 limit
sub_5_16_0_t:     or           t1, tp, s1
                  addi         t5, t5, -7 #update loop 0 counter
                  bgeu         t5, s1, sub_5_16_0_t #branch for loop 0
                  ori          ra, tp, -1225
                  addi         t3, zero, 3 #init loop 1 counter
                  addi         a7, zero, 18 #init loop 1 limit
                  sub          t4, a6, s7
                  nop
                  ori          s8, s1, -2047
sub_5_27_1_t:     nop
                  sra          gp, a4, t4
                  xor          a5, s4, t3
                  addi         t3, t3, 2 #update loop 1 counter
                  slli         t0, a1, 14
                  addi         s4, zero, 7 #init loop 0 counter
                  lui          a4, 484095
                  addi         t1, zero, 6 #init loop 0 limit
                  lui          a3, 745055
                  sltiu        a4, s0, -896
sub_5_27_0_t:     auipc        s3, 254617
                  andi         a0, s10, -485
                  auipc        t6, 825588
                  srli         a2, a7, 22
                  sub          t4, a7, s3
                  addi         s4, s4, -6 #update loop 0 counter
                  bge          s4, t1, sub_5_27_0_t #branch for loop 0
                  srli         ra, s0, 7
                  sll          t5, a7, s8
                  sra          a3, t0, s5
                  srli         a5, a3, 22
                  sltu         s7, s8, a4
                  ori          s1, t1, -126
                  nop
                  addi         s3, s9, -1850
                  bltu         t3, a7, sub_5_27_1_t #branch for loop 1
                  slt          s2, s11, s2
                  addi         sp, zero, 0 #init loop 1 counter
                  addi         s8, zero, -14 #init loop 1 limit
sub_5_22_1_t:     or           t4, s7, s2
                  addi         sp, sp, -9 #update loop 1 counter
                  addi         s2, zero, 7 #init loop 0 counter
                  addi         a4, zero, 6 #init loop 0 limit
sub_5_22_0_t:     ori          ra, t4, 634
                  addi         s2, s2, -3 #update loop 0 counter
                  bgeu         s2, a4, sub_5_22_0_t #branch for loop 0
                  bge          sp, s8, sub_5_22_1_t #branch for loop 1
                  lui          a3, 62285
                  addi         t0, zero, -10 #init loop 1 counter
                  addi         s3, zero, -20 #init loop 1 limit
                  lui          s9, 771175
sub_5_28_1_t:     andi         sp, ra, -2040
                  sltu         s9, s3, t0
                  addi         t0, t0, -7 #update loop 1 counter
                  addi         t5, zero, -9 #init loop 0 counter
                  addi         s0, zero, 3 #init loop 0 limit
                  slli         s7, zero, 4
sub_5_28_0_t:     sltiu        a3, s0, -206
                  and          ra, t2, s9
                  addi         t5, t5, 1 #update loop 0 counter
                  add          a7, ra, t2
                  slt          a0, t3, s5
                  beq          t5, s0, sub_5_28_0_t #branch for loop 0
                  or           s2, a7, zero
                  bge          t0, s3, sub_5_28_1_t #branch for loop 1
                  or           a1, a3, gp
                  addi         t1, zero, -9 #init loop 1 counter
                  slli         s0, a1, 31
                  addi         ra, zero, -12 #init loop 1 limit
                  and          a6, a3, a0
sub_5_24_1_t:     sltiu        gp, tp, 731
                  xori         sp, a1, 2009
                  sll          t3, s7, t6
                  addi         t1, t1, -4 #update loop 1 counter
                  srli         gp, s7, 0
                  addi         s3, zero, 7 #init loop 0 counter
                  xor          gp, s7, a4
                  xor          a5, a1, t5
                  addi         t4, zero, 5 #init loop 0 limit
                  xor          a3, gp, a7
                  sub          s5, s0, s7
                  sltu         s5, s9, tp
sub_5_24_0_t:     ori          gp, s10, 1756
                  addi         s3, s3, -4 #update loop 0 counter
                  andi         t6, s6, -918
                  sub          s0, a5, s1
                  nop
                  sltiu        s8, t0, 1097
                  auipc        s8, 395805
                  auipc        gp, 585790
                  addi         s9, a7, -718
                  sub          s11, t0, t1
                  xor          s4, a4, a3
                  srl          t5, s5, a7
                  bgeu         s3, t4, sub_5_24_0_t #branch for loop 0
                  sra          a5, s5, a7
                  sll          t0, t4, s4
                  srai         a6, t3, 10
                  bge          t1, ra, sub_5_24_1_t #branch for loop 1
                  sltu         a6, s1, t4
                  addi         sp, zero, 2 #init loop 1 counter
                  ori          a5, a7, -127
                  addi         gp, zero, 15 #init loop 1 limit
                  srl          s0, a4, s8
                  slti         zero, s10, 148
                  and          a2, t2, s7
sub_5_4_1_t:      addi         t1, s1, -1309
                  sltu         s3, t5, a1
                  addi         sp, sp, 4 #update loop 1 counter
                  srl          a0, t0, s11
                  andi         a7, t4, -1065
                  sub          s1, a6, s3
                  slti         a4, tp, -733
                  srai         t5, t1, 6
                  addi         a6, zero, -8 #init loop 0 counter
                  lui          s9, 668605
                  ori          s1, s2, 1345
                  lui          t2, 726496
                  addi         s11, zero, 3 #init loop 0 limit
                  slli         s9, s8, 27
                  sll          s7, s4, s6
                  and          t0, t1, s2
sub_5_4_0_t:      xori         t1, a0, -1312
                  addi         a6, a6, 10 #update loop 0 counter
                  xori         a5, tp, 1055
                  bltu         a6, s11, sub_5_4_0_t #branch for loop 0
                  lui          a5, 560024
                  sub          a0, sp, t5
                  add          zero, a1, s1
                  ori          a1, s7, -525
                  ori          a7, s7, -1573
                  slt          s8, ra, a2
                  slli         a1, tp, 6
                  bltu         sp, gp, sub_5_4_1_t #branch for loop 1
                  sra          a5, t1, s11
                  addi         a2, zero, 1 #init loop 1 counter
                  addi         s11, zero, -13 #init loop 1 limit
sub_5_23_1_t:     nop
                  slti         gp, zero, -1872
                  addi         a2, a2, -4 #update loop 1 counter
                  addi         s3, zero, -10 #init loop 0 counter
                  addi         t4, zero, -10 #init loop 0 limit
sub_5_23_0_t:     nop
                  nop
                  addi         s3, s3, -2 #update loop 0 counter
                  bge          s3, t4, sub_5_23_0_t #branch for loop 0
                  bge          a2, s11, sub_5_23_1_t #branch for loop 1
                  nop
                  addi         a1, zero, 9 #init loop 1 counter
                  addi         a4, zero, 1 #init loop 1 limit
sub_5_14_1_t:     or           s8, s7, s1
                  xor          s0, s5, s10
                  srai         s5, t4, 5
                  addi         a1, a1, -10 #update loop 1 counter
                  addi         s0, zero, -667
                  auipc        s8, 78016
                  addi         ra, zero, -2 #init loop 0 counter
                  srli         t6, s0, 2
                  addi         s9, zero, 19 #init loop 0 limit
                  xor          sp, s10, a2
                  srai         a6, s0, 15
                  sltu         t5, s5, s0
sub_5_14_0_t:     sub          a2, s4, a5
                  sltu         t2, t4, t2
                  nop
                  addi         ra, ra, 7 #update loop 0 counter
                  lui          t6, 498087
                  ori          s0, t1, -1440
                  andi         a2, s7, 80
                  andi         s4, tp, 485
                  srl          a5, sp, a7
                  andi         s8, s5, -1871
                  blt          ra, s9, sub_5_14_0_t #branch for loop 0
                  srai         a5, t5, 18
                  sltu         s5, ra, a6
                  lui          a6, 838090
                  slli         a7, s9, 8
                  sll          a3, zero, a1
                  sra          t3, a1, s7
                  or           sp, a2, t3
                  bge          a1, a4, sub_5_14_1_t #branch for loop 1
                  sltiu        s2, t1, 305
                  addi         s2, zero, -4 #init loop 1 counter
                  addi         t6, zero, -14 #init loop 1 limit
sub_5_25_1_t:     nop
                  slti         a6, t2, 528
                  sltu         t4, a2, s10
                  addi         s2, s2, -1 #update loop 1 counter
                  addi         t5, zero, 9 #init loop 0 counter
                  srai         s0, gp, 17
                  addi         t3, zero, 9 #init loop 0 limit
                  xori         s7, s8, 57
                  sub          ra, s6, s0
                  sll          gp, sp, s5
sub_5_25_0_t:     slt          t2, s4, a1
                  addi         t5, t5, -8 #update loop 0 counter
                  bgeu         t5, t3, sub_5_25_0_t #branch for loop 0
                  sll          s7, zero, s8
                  sll          a2, t4, s11
                  bne          s2, t6, sub_5_25_1_t #branch for loop 1
                  srli         t4, t1, 9
                  addi         s11, zero, -2 #init loop 1 counter
                  addi         s5, zero, 15 #init loop 1 limit
                  sll          t5, s3, s6
                  srai         a1, s10, 25
                  addi         s8, tp, 1893
sub_5_8_1_t:      xor          t2, s10, sp
                  xori         t5, s8, -1509
                  addi         s11, s11, 8 #update loop 1 counter
                  sltu         a3, s1, s4
                  srl          s8, tp, t6
                  addi         s9, zero, -6 #init loop 0 counter
                  add          a1, a4, s4
                  ori          a6, s2, 235
                  addi         s7, zero, -19 #init loop 0 limit
sub_5_8_0_t:      xor          t4, s11, t2
                  srl          t5, a3, a2
                  addi         s9, s9, -10 #update loop 0 counter
                  sra          s4, s6, s8
                  srai         s3, s8, 6
                  sll          t1, s10, a6
                  bge          s9, s7, sub_5_8_0_t #branch for loop 0
                  andi         t5, s3, -1567
                  slli         s2, s7, 31
                  srli         s8, s1, 13
                  bltu         s11, s5, sub_5_8_1_t #branch for loop 1
                  xor          ra, s10, s3
                  addi         a4, zero, 1 #init loop 1 counter
                  addi         s8, zero, -9 #init loop 1 limit
                  srai         t2, s2, 3
sub_5_13_1_t:     ori          t4, s3, 106
                  addi         a4, a4, -3 #update loop 1 counter
                  slli         t2, t5, 10
                  addi         s5, zero, -10 #init loop 0 counter
                  addi         a7, zero, 8 #init loop 0 limit
                  sll          t0, s3, tp
                  nop
                  sltu         s0, ra, s10
                  and          ra, s4, t3
                  sll          t2, t5, s2
                  xor          gp, t0, s9
                  slli         s2, s0, 8
                  nop
                  and          t3, s9, s0
sub_5_13_0_t:     slti         a1, t0, 1207
                  and          a5, a5, s6
                  or           s4, a3, a4
                  addi         s5, s5, 9 #update loop 0 counter
                  srai         t1, tp, 20
                  or           t0, a5, s6
                  bne          s5, a7, sub_5_13_0_t #branch for loop 0
                  and          s1, sp, s11
                  xori         sp, t2, 473
                  slli         t2, s5, 9
                  sra          s2, a5, t0
                  and          s11, s0, ra
                  xori         t6, s0, -641
                  slt          s9, ra, a3
                  sll          a6, t6, s2
                  bge          a4, s8, sub_5_13_1_t #branch for loop 1
                  slti         sp, a6, 305
                  addi         t4, zero, -3 #init loop 1 counter
                  addi         s7, zero, -19 #init loop 1 limit
                  ori          a4, t5, -478
                  slli         s0, s11, 28
sub_5_11_1_t:     xori         s2, s11, 1886
                  sltu         zero, t1, a2
                  addi         t4, t4, -8 #update loop 1 counter
                  add          t6, a4, s10
                  addi         a2, zero, 3 #init loop 0 counter
                  addi         s8, zero, 13 #init loop 0 limit
sub_5_11_0_t:     ori          s5, s6, 1892
                  auipc        t3, 55568
                  addi         a2, a2, 3 #update loop 0 counter
                  srl          s1, s8, t6
                  sub          s3, t5, tp
                  bltu         a2, s8, sub_5_11_0_t #branch for loop 0
                  nop
                  slti         t6, a5, 500
                  sll          t3, a0, t3
                  beq          t4, s7, sub_5_11_1_t #branch for loop 1
                  srli         s2, s8, 31
                  xori         s1, s11, -564
                  or           t2, gp, s2
                  lui          a6, 852016
                  srl          s9, s11, s10
                  bne          a1, a0, 5f
5:                srai         t4, t6, 26
                  srai         a1, s0, 19
                  slti         s11, t5, -383
                  xori         a5, a4, 782
                  srli         gp, a5, 12
                  add          a4, tp, s8
                  addi         a5, s1, 1849
                  sltiu        s0, a4, -302
                  srli         t6, a2, 16
                  or           s8, a1, s8
                  sub          s1, s5, t6
                  bgeu         sp, s8, 29f
                  sll          a5, s10, a3
                  slli         t2, a2, 23
                  addi         ra, t4, 609
                  nop
                  auipc        t0, 619227
                  sll          s8, t6, s3
                  add          t0, s5, ra
                  add          s4, ra, a5
                  slti         a5, a5, -712
                  lui          s1, 300141
                  bltu         s9, s9, 41f
                  bltu         s6, t6, 35f
29:               bge          sp, tp, 35f
                  bne          zero, a7, 38f
                  add          a1, t4, s6
                  nop
                  srli         s7, t4, 3
                  sll          t4, t2, t3
35:               slli         s2, zero, 22
                  bltu         t3, zero, 50f
                  beq          a2, s4, 38f
38:               xor          gp, ra, a1
                  sub          t1, a4, s10
                  sltiu        s2, s5, -182
41:               bne          s2, t0, 58f
                  srli         a0, t3, 29
                  ori          s5, t3, 339
                  auipc        s7, 798637
                  or           t6, a7, t4
                  slti         zero, s4, 526
                  srl          s0, sp, s10
                  srl          sp, t2, s4
                  bge          s0, s11, 62f
50:               sra          a4, a0, sp
                  slli         t2, a5, 18
                  bgeu         t0, a5, 55f
                  beq          zero, s6, 60f
                  auipc        a0, 133161
55:               slti         a4, a6, -870
                  xori         t3, a0, -1205
                  slti         s8, zero, -1773
58:               bltu         s0, s9, 62f
                  sltiu        t4, tp, -1291
60:               xori         a3, a0, 862
                  bltu         a5, s8, 71f
62:               sltu         s3, s8, s4
                  auipc        a0, 326930
                  add          t2, s8, s9
                  bgeu         s8, a0, 78f
                  srai         s7, s2, 23
                  auipc        a4, 99701
                  slti         a0, zero, -1783
                  and          s3, s10, s11
                  sltu         s7, t1, a1
71:               bne          s5, t3, 91f
                  blt          a1, s7, 91f
                  blt          s10, s6, 90f
                  slt          t2, s7, tp
                  beq          a5, s5, 87f
                  srl          s9, tp, s2
                  srli         ra, s1, 24
78:               slt          t1, t2, s6
                  xor          s1, sp, t1
                  srai         s4, s7, 31
                  xor          t1, a2, tp
                  blt          t3, s10, 86f
                  sltu         s11, t2, s11
                  sll          s7, a2, a5
                  sub          s9, a3, t0
86:               xor          a4, s5, s3
87:               xori         t6, s11, -1195
                  xor          gp, s3, t0
                  slti         s5, t3, 809
90:               sra          sp, gp, s3
91:               nop
                  sra          a5, t6, s5
                  nop
                  auipc        t4, 234682
                  slli         s3, t3, 16
                  xori         s3, a5, -1779
                  srl          sp, ra, t3
                  ori          s8, s2, -1976
                  andi         s5, s2, 1173
                  bge          s11, zero, 110f
                  sll          zero, s2, a2
                  bgeu         s6, t3, 109f
                  sll          s1, t0, gp
                  bge          s4, a3, 113f
                  and          s9, s2, a0
                  xori         t0, s5, 514
                  srai         s0, s4, 3
                  addi         a0, a7, 2008
109:              sltiu        s4, s11, 1154
110:              ori          a0, s11, -470
                  beq          s4, t4, 125f
                  and          s7, a6, s2
113:              andi         a3, sp, -1066
                  ori          s1, a3, 55
                  addi         a0, s3, -1012
                  slti         s9, s0, 1105
                  and          t2, a6, s0
                  sra          s5, t3, s7
                  srli         t2, t6, 19
                  nop
                  ori          a1, a4, -1146
                  slli         s11, t4, 5
                  srl          t3, a1, t0
                  addi         t5, s2, -1472
125:              sub          t6, t3, s3
                  and          s8, t4, a0
                  bltu         s9, t3, 129f
                  slt          t1, a5, s9
129:              bltu         s3, s3, 132f
                  sltiu        s7, s10, -1295
                  bltu         a4, a0, 139f
132:              sltiu        t5, s0, 1558
                  and          gp, ra, a6
                  blt          a1, s2, 144f
                  auipc        t5, 633620
                  bgeu         a1, s11, 138f
                  bltu         a1, t4, 151f
138:              andi         s0, t1, 1283
139:              and          a7, s10, a5
                  sra          t5, a5, s4
                  addi         sp, s0, 1585
                  lui          s3, 801399
                  srai         s1, t6, 8
144:              nop
                  add          a7, t4, t3
                  or           t3, a7, s3
                  slti         s7, s7, 1021
                  auipc        s11, 443245
                  slti         gp, s0, 1561
                  sra          a1, a6, t3
151:              or           t3, a3, s4
                  bltu         sp, s1, 154f
                  srli         t5, s6, 24
154:              sub          s2, a2, t4
                  add          s7, s10, a5
                  beq          t4, s2, 159f
                  srl          zero, a5, s7
                  xor          s3, zero, t3
159:              lui          s0, 377593
                  andi         t6, a0, -1224
                  xor          s11, a2, a0
                  slli         t4, a5, 18
                  bltu         t3, s1, 176f
                  slli         a5, t1, 30
                  xor          a0, t0, a6
                  or           t6, a6, tp
                  andi         a7, t1, 1064
                  ori          a7, ra, -1005
                  slli         s4, t2, 11
                  ori          t0, s4, 1607
                  nop
                  andi         t3, gp, -625
                  sltu         a5, a4, t5
                  xor          t2, t2, t5
                  lui          s4, 907538
176:              sltiu        a1, a5, 1813
                  sltiu        a4, a6, -1733
                  bltu         t4, t0, 192f
                  or           gp, a3, t3
                  srli         a0, s3, 6
                  xori         s8, ra, 45
                  srai         a7, a4, 21
                  sltu         zero, a1, a3
                  blt          t2, s9, 191f
                  slli         t2, s5, 26
                  sub          t2, t5, t2
                  srl          s2, s7, tp
                  bge          t1, a7, 189f
189:              slti         ra, a7, 1814
                  ori          ra, s1, -1059
191:              add          sp, s1, s11
192:              slt          t5, t5, a6
                  lui          a6, 407540
                  ori          a2, a5, 1417
                  srl          s0, sp, zero
                  sltu         sp, t3, s0
                  auipc        a5, 86484
                  and          a5, s8, s4
                  beq          s4, tp, 203f
                  sra          s8, s0, a2
                  srai         s2, t1, 14
                  xori         t0, gp, -335
203:              bgeu         s9, s0, 222f
                  nop
                  xori         gp, t3, -1367
                  bgeu         t5, t4, 218f
                  srli         t1, a6, 31
                  srai         t3, a6, 31
                  bgeu         s7, t5, 219f
                  and          t4, s3, a5
                  ori          s8, a4, 1860
                  ori          s1, s10, -1083
                  and          s9, t0, s7
                  blt          a5, ra, 222f
                  sltu         a7, a2, a5
                  bgeu         t6, a5, 226f
                  sltiu        gp, s11, 1493
218:              ori          t0, s3, -1920
219:              bgeu         zero, ra, 236f
                  srli         s0, s11, 1
                  sltu         sp, a6, a2
222:              auipc        t5, 576397
                  slt          s8, s10, zero
                  bge          s2, t2, 231f
                  beq          s8, s2, 228f
226:              beq          t4, t2, 227f
227:              ori          a6, s3, 652
228:              addi         t0, a7, -1995
                  slli         a7, a3, 1
                  sub          a1, t1, sp
231:              bne          t2, s3, 238f
                  xor          a0, s6, s6
                  sll          t6, s10, s2
                  bge          t6, s2, 251f
                  auipc        s5, 995488
236:              srai         s4, s8, 18
                  slt          a0, s8, t4
238:              srl          t2, t3, t1
                  and          s1, a5, s7
                  lui          s9, 472476
                  sltiu        s2, t5, 407
                  blt          s1, s10, 255f
                  andi         t6, s0, -906
                  srl          a0, a7, a7
                  and          a1, t5, s4
                  sltu         s0, t5, a1
                  srl          zero, a2, a6
                  beq          s7, zero, 254f
                  ori          a4, zero, -41
                  sra          a1, a4, s2
251:              sub          s9, s0, s10
                  slt          s0, a2, s2
                  auipc        sp, 909817
254:              slt          a2, a2, s0
255:              auipc        a4, 219297
                  slt          a3, a6, a1
                  or           t5, s4, s5
                  bltu         zero, s1, 272f
                  lui          s11, 835389
                  bltu         t5, t4, 262f
                  xor          a7, t4, a5
262:              xor          gp, a2, t4
                  bgeu         s6, s7, 276f
                  nop
                  add          t5, s5, t1
                  bge          s7, s1, 270f
                  add          s1, a4, t1
                  and          sp, a4, t3
                  andi         a5, s8, -1186
270:              auipc        s0, 512549
                  addi         t1, sp, -1350
272:              sltu         t3, a7, a6
                  andi         a2, zero, -787
                  bge          t3, gp, 282f
                  andi         a2, s2, -1046
276:              sltiu        s5, a2, -624
                  blt          a3, s6, 287f
                  sub          t3, a4, s6
                  andi         t3, s5, 157
                  sltu         a6, t6, a0
                  andi         s1, tp, 991
282:              addi         s1, a7, -1663
                  slti         a3, t5, 1874
                  bne          a3, gp, 298f
                  beq          s7, a7, 299f
                  addi         s9, t4, 252
287:              and          t0, s5, t3
                  slt          t0, a5, a0
                  bltu         s4, a5, 298f
                  ori          s7, t6, 1190
                  andi         sp, a3, -426
                  sub          t0, s5, s8
                  lui          t0, 460770
                  srai         s3, t4, 27
                  xor          s2, t0, s9
                  slti         s2, t3, -1500
                  auipc        s5, 270383
298:              sll          t5, s3, ra
299:              auipc        a3, 213568
                  xori         s8, t1, -2026
                  blt          a3, tp, 321f
                  andi         s5, s3, 1649
                  srli         a4, a5, 14
                  xor          s11, a5, s5
                  bge          s9, s6, 313f
                  sltiu        s11, zero, -710
                  xori         a6, a7, 820
                  xor          a6, t4, s2
                  srl          a6, a3, t0
                  sra          s4, s10, a2
                  bgeu         a3, s3, 313f
                  addi         a4, s10, -358
313:              slli         sp, a3, 19
                  srai         a4, gp, 14
                  add          a6, s9, s11
                  slti         a1, s10, -1304
                  or           a3, t0, tp
                  auipc        t1, 376498
                  sltiu        s0, s10, -1209
                  andi         s2, s10, 78
321:              xori         s8, s7, -1931
                  sll          s5, s1, s2
                  andi         t0, s5, 1731
                  bltu         t2, a1, 331f
                  srl          a3, s10, s2
                  sub          t1, t6, t1
                  bgeu         t1, sp, 333f
                  auipc        a5, 76676
                  nop
                  lui          sp, 648301
331:              addi         a2, t0, -237
                  ori          s5, s11, -1370
333:              xor          s0, s4, gp
                  bgeu         sp, a2, 335f
335:              sra          s9, s4, a1
                  slt          s8, ra, t4
                  srl          a5, s7, a6
                  xor          a2, s3, s3
                  bge          s7, a7, 340f
340:              bne          tp, s7, 354f
                  bltu         a4, s7, 344f
                  bltu         s4, zero, 359f
                  sll          a1, zero, a4
344:              sub          s8, a2, s8
                  bgeu         a0, a6, 362f
                  slli         s7, ra, 16
                  xori         s3, gp, 1184
                  lui          t3, 282462
                  lui          zero, 304724
                  ori          sp, a6, -1360
                  sltu         a4, t1, t5
                  slli         a2, sp, 10
                  xori         gp, s1, -44
354:              sub          a7, ra, a5
                  lui          a6, 743553
                  add          gp, tp, s1
                  beq          t4, t0, 370f
                  beq          a2, a6, 362f
359:              slt          a0, t0, s6
                  beq          s3, t1, 370f
                  bge          a6, a4, 371f
362:              andi         t6, t5, -1400
                  addi         s4, ra, -284
                  bltu         s3, zero, 374f
                  andi         t2, s4, 589
                  xori         s11, t0, -652
                  sltiu        zero, s3, -854
                  beq          a4, s9, 382f
                  slt          t5, t1, tp
370:              and          s9, a7, t1
371:              sub          zero, a2, s7
                  srl          s11, s1, s2
                  and          s3, a7, s1
374:              bltu         zero, t3, 381f
                  srli         t3, s9, 7
                  sltiu        a0, s6, -1138
                  sra          s5, a0, s8
                  srli         t3, a5, 2
                  sll          s3, s11, a6
                  srai         s11, t6, 21
381:              srl          s1, tp, s7
382:              xor          s11, a2, s7
                  and          s4, sp, a2
                  slti         a5, a6, 1260
                  sltiu        t5, t0, 1048
                  srl          a0, s8, sp
                  blt          t0, s11, 400f
                  nop
                  bge          s4, zero, 403f
                  slti         s7, a5, -1131
                  sltu         a6, s1, a1
                  bgeu         t5, t5, 412f
                  blt          ra, s3, 400f
                  bgeu         zero, s11, 397f
                  sll          s2, ra, s10
                  slti         s8, tp, -1462
397:              slti         s9, t4, -1426
                  sub          s9, tp, a4
                  xor          s1, t3, t6
400:              nop
                  ori          s3, s5, -1387
                  bge          gp, t6, 406f
403:              xori         zero, a5, -728
                  andi         zero, t2, 824
                  blt          t2, s3, 407f
406:              sltu         a3, a3, s8
407:              srl          s1, t2, t4
                  ori          t6, s7, -1760
                  andi         t3, s4, 667
                  nop
                  bge          s10, sp, 420f
412:              sltiu        s5, s5, 1144
                  sub          a6, a5, ra
                  xori         gp, s5, 708
                  addi         ra, t4, -521
                  andi         t5, t0, -1262
                  bne          zero, s3, 436f
                  srai         a1, s4, 17
                  xori         sp, sp, 596
420:              lui          a6, 288745
                  add          a4, t2, s4
                  add          s7, tp, s10
                  sll          s5, t1, tp
                  blt          t0, t2, 437f
                  lui          s7, 839355
                  xor          zero, s10, s10
                  bgeu         s10, s10, 439f
                  slli         s9, gp, 20
                  and          gp, s8, s0
                  sub          a3, ra, tp
                  blt          a4, a7, 445f
                  bge          s1, t2, 440f
                  and          a6, s7, s2
                  slti         a2, tp, -2007
                  and          a1, t0, a1
436:              srli         s1, zero, 29
437:              bge          t5, s0, 451f
                  bne          t2, s0, 448f
439:              xori         t3, a3, 1285
440:              addi         a4, a7, 1811
                  auipc        t5, 131688
                  andi         a3, s3, 1191
                  sltu         t2, s5, t0
                  lui          t3, 860100
445:              sub          s5, ra, a4
                  slti         t1, s10, 1873
                  andi         t6, tp, 1163
448:              xor          a6, sp, s10
                  sll          s4, s9, t4
                  nop
451:              sub          sp, s5, sp
                  srai         a4, t0, 11
                  bne          gp, s11, 454f
454:              beq          s4, t1, 471f
                  srli         a4, ra, 5
                  andi         s9, zero, 880
                  sub          gp, t5, s2
                  slti         a2, t5, 1459
                  auipc        a3, 711703
                  bne          s7, s7, 463f
                  andi         zero, s1, -250
                  lui          s11, 601576
463:              add          a2, t5, a0
                  srl          t1, a3, s1
                  addi         t3, a2, -101
                  bne          s9, s9, 473f
                  sra          s8, zero, zero
                  sltu         s5, s0, a6
                  beq          a0, a3, 473f
                  lui          a6, 141885
471:              blt          ra, sp, 480f
                  sra          s7, a7, t5
473:              slti         a6, a6, 797
                  xori         s9, s5, -357
                  addi         a5, a6, -1189
                  sub          zero, a4, a2
                  lui          a5, 933735
                  add          gp, s6, t0
                  and          a7, s8, ra
480:              bne          s0, s7, 481f
481:              xor          s11, t6, t0
                  xor          s7, s8, s10
                  slli         sp, s5, 19
                  slli         a6, sp, 15
                  blt          t6, s8, 492f
                  add          t1, a4, s6
                  sltiu        t0, sp, 1090
                  xori         a5, t3, 1276
                  sra          s1, s9, a5
                  beq          a1, tp, 500f
                  nop
492:              sltu         zero, t5, s9
                  slli         a5, a2, 3
                  ori          ra, t2, 1510
                  sra          a7, s4, a4
                  nop
                  sub          t6, s10, s7
                  slti         a4, zero, -803
                  sltiu        t5, s9, 26
500:              nop
                  add          a3, s5, sp
                  slt          s4, a0, zero
                  auipc        s3, 943070
                  bgeu         sp, zero, 508f
                  auipc        a4, 115060
                  bgeu         s8, zero, 509f
                  srai         s5, t3, 29
508:              lui          t3, 751842
509:              blt          a1, a2, 511f
                  lui          a3, 539658
511:              sltu         s11, s4, s11
                  bltu         t2, a4, 524f
                  bge          s10, s1, 532f
                  xor          a4, t2, a0
                  sub          sp, t1, s2
                  bne          t4, s10, 526f
                  srli         s0, t5, 27
                  slli         s3, t0, 13
                  slti         a3, a0, -248
                  addi         t6, t6, -1024
                  sra          zero, zero, s1
                  xori         t1, s8, -395
                  or           gp, a3, s8
524:              slt          t0, t0, s5
                  sll          t1, s1, s8
526:              slti         a4, s2, -589
                  slt          s0, gp, t6
                  slli         s9, s2, 16
                  sll          s11, a4, s2
                  add          s3, a6, s4
                  bltu         sp, s8, 538f
532:              add          a7, sp, a7
                  bltu         t1, s4, 550f
                  or           s2, a5, ra
                  sra          s5, s3, a0
                  srl          s7, t4, gp
                  sltu         a1, s4, a5
538:              and          s3, t6, s9
                  sltiu        s0, t0, -1004
                  srli         s9, zero, 23
                  bge          zero, s6, 561f
                  bgeu         a7, s10, 556f
                  addi         t2, s2, 878
                  and          s0, s4, a1
                  slt          a1, t0, s11
                  or           s2, s1, a1
                  ori          a1, a1, 1744
                  sltiu        t5, s9, 1731
                  sra          s11, s3, t1
550:              sltiu        zero, s9, 234
                  srl          t2, a2, a2
                  add          t1, s2, sp
                  addi         s5, s0, 1475
                  slli         s5, s3, 29
                  auipc        t6, 6532
556:              or           t4, tp, s8
                  bltu         t1, t5, 571f
                  bge          s5, s1, 566f
                  bne          t4, t4, 572f
                  auipc        s8, 36244
561:              beq          s7, s6, 567f
                  sltiu        a4, s6, 1353
                  slt          a1, a7, t4
                  srl          gp, s0, a5
                  auipc        s4, 966516
566:              add          a5, t5, t5
567:              slt          a3, t3, a6
                  bgeu         t2, t1, 570f
                  sltiu        a6, s0, -1666
570:              sltiu        s1, t4, -1553
571:              sll          zero, t6, a0
572:              srli         s9, t3, 23
                  xori         t6, t4, 2011
                  xor          s11, t3, s5
                  addi         a4, s3, 1108
                  sltiu        a6, tp, -1421
                  blt          zero, t5, 590f
                  slti         a7, t6, -1340
                  and          a2, tp, t0
                  slli         a6, t6, 21
                  sll          t2, zero, t2
                  ori          s1, t3, -217
                  addi         t1, s10, 905
                  sub          t5, ra, s10
                  beq          s6, sp, 599f
                  sll          sp, t4, s0
                  add          s7, s4, s6
                  auipc        s5, 140414
                  srai         t3, s9, 25
590:              sltu         t5, s3, s0
                  auipc        a1, 1039542
                  slt          s3, a0, s9
                  bge          a6, gp, 606f
                  ori          a6, a1, 1001
                  auipc        a2, 554470
                  bne          s4, a2, 604f
                  slli         t4, sp, 17
                  bltu         a1, s3, 612f
599:              srl          t4, a0, a5
                  xori         ra, ra, -968
                  lui          a3, 411448
                  sra          gp, s3, t0
                  and          a3, s7, a4
604:              andi         t0, a0, 1967
                  auipc        s7, 88679
606:              andi         t5, t4, 40
                  srl          s11, sp, t5
                  sll          gp, t4, a4
                  xori         a1, s8, 1035
                  xori         t3, s1, -1838
                  bltu         a7, tp, 620f
612:              sub          zero, t2, s11
                  sra          s9, t4, s8
                  srl          s7, s1, a3
                  auipc        s3, 665950
                  slli         gp, gp, 26
                  sltu         zero, a4, s3
                  blt          t3, a6, 631f
                  sltu         t4, t4, t2
620:              sub          a4, s7, ra
                  slt          s3, tp, t6
                  blt          t3, s4, 641f
                  slti         gp, a7, -1411
                  srai         s4, a3, 29
                  srli         ra, sp, 6
                  sltiu        a2, tp, -895
                  lui          ra, 628844
                  auipc        s8, 6711
                  srl          t5, s0, a5
                  lui          s11, 1005325
631:              slli         s7, t1, 12
                  sra          a2, s2, s2
                  srl          ra, zero, s10
                  slli         t0, ra, 14
                  ori          t0, s11, -1971
                  bne          t2, s1, 656f
                  ori          s9, s8, 1161
                  slti         s7, t5, -817
                  slt          s8, t0, s10
                  bge          gp, s3, 647f
641:              beq          a3, t0, 642f
642:              srl          t6, s11, s2
                  slt          a1, zero, t0
                  slli         gp, zero, 29
                  srli         s7, a4, 12
                  xori         s4, zero, 1966
647:              addi         a6, s11, 1698
                  auipc        t0, 869466
                  bge          a6, zero, 653f
                  srai         s9, t5, 23
                  and          a0, t1, tp
                  sll          s5, s11, s9
653:              srl          s4, a5, s10
                  lui          s11, 160485
                  ori          zero, a3, 1513
656:              srli         t0, t4, 21
                  bltu         tp, a1, 660f
                  bge          t2, a0, 670f
                  xor          s4, s5, a6
660:              slt          t4, a4, a2
                  slti         t3, s9, -1091
                  xori         s5, s2, -816
                  xori         zero, a1, -1643
                  andi         a6, a0, -784
                  xori         s7, ra, 474
                  bltu         ra, s8, 674f
                  srai         s5, s3, 2
                  sltu         zero, s10, s2
                  ori          ra, a4, 880
670:              bltu         s5, s5, 687f
                  sub          s9, s6, t3
                  lui          s11, 102181
                  sra          s5, s4, t2
674:              blt          a5, t6, 688f
                  beq          s11, s9, 685f
                  srli         s9, s2, 6
                  srai         a4, a7, 5
                  sub          gp, s10, ra
                  srli         t0, s0, 30
                  bltu         s11, s3, 697f
                  srai         s7, s5, 26
                  xor          zero, t5, s6
                  xori         sp, s5, 1954
                  srl          a5, a3, t2
685:              sub          a4, s11, a7
                  sltu         a6, t1, a4
687:              sra          a5, s1, a4
688:              sltu         s8, tp, a7
                  xor          sp, s2, s11
                  xor          a2, a5, a2
                  srai         s5, s7, 28
                  sltiu        a5, sp, 1468
                  add          a3, s3, a6
                  ori          a7, a6, 228
                  srl          t6, a3, a7
                  srli         ra, t3, 13
697:              sll          s3, a7, a3
                  bge          s8, t0, 712f
                  bltu         a4, s7, 701f
                  bge          s2, a0, 707f
701:              sub          a1, zero, a3
                  add          ra, a3, a3
                  bltu         a6, s0, 713f
                  nop
                  sub          a4, a3, a6
                  add          s4, s6, t6
707:              srai         s7, s0, 22
                  sra          s0, t4, s1
                  nop
                  beq          t5, s11, 712f
                  or           a3, s7, s11
712:              xori         t4, t1, 144
713:              slli         t5, a7, 22
                  blt          a7, t0, 718f
                  beq          a7, ra, 723f
                  srai         a5, s2, 13
                  auipc        s8, 245447
718:              beq          s9, a4, 721f
                  sub          s3, a6, gp
                  ori          s11, a2, -307
721:              lui          a5, 980581
                  sra          a0, a4, a1
723:              sub          a4, t0, zero
                  srl          t3, s11, a7
                  slli         a2, zero, 27
                  sub          a5, s1, tp
                  slti         t6, t4, 1040
                  sra          zero, t4, zero
                  blt          t0, s4, 742f
                  xori         s5, s1, 1618
                  add          a5, s6, s9
                  slt          s8, a0, a0
                  sll          zero, sp, s9
                  blt          s11, s1, 740f
                  srli         gp, a7, 31
                  nop
                  srli         t4, tp, 27
                  bne          s1, s5, 751f
                  slt          a7, s11, sp
740:              ori          a3, a6, 1530
                  andi         ra, t3, -957
742:              slli         ra, zero, 22
                  srli         s3, ra, 23
                  srl          s2, s7, t2
                  and          a7, sp, t3
                  sltu         s1, tp, a4
                  slti         s4, zero, -1150
                  slti         s11, t4, -926
                  xori         s3, t1, 1026
                  bne          t6, s10, 757f
751:              beq          a7, s9, 752f
752:              sltu         zero, s1, s1
                  sra          a3, s5, s1
                  bge          s10, s1, 768f
                  blt          s4, s11, 765f
                  xor          a6, t1, s9
757:              or           a7, t2, s7
                  sltu         t6, ra, a4
                  bne          t1, s8, 773f
                  sltiu        ra, a3, 1595
                  bne          s11, s9, 769f
                  xori         s0, t0, -1976
                  blt          t0, s6, 777f
                  slt          t3, t3, t3
765:              bge          tp, s8, 772f
                  bltu         a1, a7, 779f
                  slt          t6, zero, s0
768:              bge          tp, t2, 772f
769:              bltu         zero, ra, 776f
                  blt          s9, s1, 783f
                  sltu         t6, t2, t4
772:              lui          t2, 983809
773:              bne          s4, a1, 783f
                  andi         s5, a1, -1771
                  ori          t6, s2, 789
776:              sll          s2, a0, t4
777:              blt          tp, t3, 781f
                  xor          s4, ra, s10
779:              beq          a1, t6, 793f
                  lui          a5, 733480
781:              bltu         sp, s3, 784f
                  auipc        t6, 809690
783:              add          sp, s10, s7
784:              bgeu         t2, t6, 791f
                  bgeu         a4, s9, 795f
                  auipc        a5, 34309
                  srl          s8, a0, s1
                  slt          a7, t3, ra
                  bltu         a4, t3, 809f
                  srl          s9, t2, zero
791:              beq          t5, s4, 804f
                  sra          a6, ra, a1
793:              sub          s0, s1, sp
                  beq          a5, t3, 808f
795:              sll          s11, t6, zero
                  sra          s2, t1, s3
                  and          t4, s3, t4
                  sll          t0, ra, zero
                  srl          a2, t4, t1
                  slt          a1, s11, tp
                  xori         t5, a0, -1511
                  slt          s9, a6, ra
                  bge          t4, s11, 805f
804:              srli         a5, t0, 24
805:              ori          s2, s5, 560
                  bge          s8, s10, 815f
                  bne          ra, a6, 813f
808:              andi         s2, a0, 809
809:              or           t0, t5, t5
                  or           a2, s3, a2
                  xori         s2, zero, 1887
                  blt          t2, a3, 813f
813:              sub          s8, tp, s11
                  xori         zero, s1, -1391
815:              sltu         t2, s1, s8
                  lui          a0, 341105
                  bgeu         a7, a7, 820f
                  srli         t6, s1, 26
                  sltu         a6, gp, s10
820:              slli         t0, a6, 7
                  bgeu         t5, ra, 823f
                  srl          s11, a0, a6
823:              beq          a7, gp, 824f
824:              sll          a3, s5, t4
                  addi         s7, t2, -936
                  sltiu        zero, gp, -165
                  slli         t0, ra, 13
                  slli         s8, s2, 11
                  xori         t6, s9, -1806
                  blt          a4, t6, 847f
                  addi         s8, s8, -1177
                  slti         s5, s7, 58
                  and          s4, sp, gp
                  sub          t4, ra, a1
                  srai         t5, s7, 12
                  ori          t1, a2, -796
                  srl          s3, t2, a2
                  srli         s1, a0, 10
                  nop
                  add          zero, s9, s9
                  or           a1, s10, a1
                  slt          s9, s2, zero
                  bgeu         t0, gp, 853f
                  bltu         sp, sp, 852f
                  auipc        sp, 616839
                  bge          t0, s8, 863f
847:              auipc        t3, 73193
                  slli         s9, sp, 16
                  bne          t0, a5, 868f
                  and          s3, t0, s9
                  bge          t2, a2, 863f
852:              sltu         a5, t0, s1
853:              auipc        s5, 369029
                  bne          s1, t0, 861f
                  lui          a3, 336519
                  srai         t1, t2, 12
                  sltu         ra, t0, t0
                  xori         a6, s7, -1169
                  srai         a2, t6, 7
                  nop
861:              and          a0, s3, a6
                  addi         sp, s11, -184
863:              xori         s2, ra, 955
                  sll          s1, t6, s4
                  sltu         s1, s11, t6
                  sltiu        s3, s6, 1528
                  bltu         a1, s6, 880f
868:              sub          s11, a0, a3
                  srl          s11, a2, s5
                  srl          s1, a2, s8
                  srl          a2, tp, a6
                  sra          a2, s5, a4
                  beq          s1, s10, 883f
                  srli         s4, a2, 18
                  sltiu        sp, s10, 814
                  or           s8, a0, sp
                  sltiu        s11, s8, 1570
                  or           a6, t6, a5
                  sltiu        t1, t0, -1883
880:              slli         a6, tp, 26
                  add          t2, s11, s10
                  slli         s11, s8, 31
883:              or           s1, s5, t0
                  auipc        s7, 185759
                  srli         s3, t2, 8
                  srai         a7, s6, 14
                  andi         s5, s10, -1220
                  slti         a0, t0, -252
                  blt          s1, s8, 897f
                  slti         zero, a6, -504
                  slli         s11, s8, 29
                  lui          a7, 295710
                  bne          s2, s4, 900f
                  beq          s9, t5, 913f
                  xori         s3, gp, 2021
                  lui          t0, 976275
897:              slli         s5, a4, 18
                  srli         t3, s10, 9
                  bne          a4, s5, 913f
900:              slt          a5, a6, t0
                  sltu         s1, a2, a5
                  addi         s2, t6, -569
                  auipc        t6, 349149
                  nop
                  srl          s4, s11, s7
                  sra          s11, gp, a7
                  and          a1, tp, a2
                  nop
                  sltiu        t5, t6, 20
                  sub          s0, s8, a4
                  sub          t3, t5, ra
                  srli         a2, t1, 17
913:              sll          a4, sp, t3
                  sra          a2, s6, s11
                  sll          gp, s0, s4
                  srli         a0, s1, 5
                  sll          t2, s11, s4
                  ori          t2, s10, 252
                  xori         s1, zero, -375
                  bge          s8, t2, 926f
                  nop
                  sra          t5, s8, sp
                  addi         s5, s4, -1239
                  sltiu        a3, a0, -231
                  xori         zero, a6, -1686
926:              addi         t4, s11, 1718
                  xor          a3, a1, a2
                  bgeu         t1, a6, 938f
                  nop
                  slti         s9, a1, -1466
                  sll          a1, gp, gp
                  sra          ra, s1, a5
                  or           s11, a7, t1
                  bgeu         s5, gp, 943f
                  bltu         s11, t5, 937f
                  nop
937:              sll          s9, s2, t5
938:              auipc        zero, 630619
                  auipc        t4, 426867
                  beq          s10, s6, 941f
941:              xori         a3, t5, -2020
                  ori          t6, a1, 147
943:              slli         a2, s9, 5
                  blt          tp, t4, 961f
                  srl          a0, a0, zero
                  add          t5, s2, a1
                  and          a5, t1, t1
                  beq          a0, t0, 962f
                  addi         s0, s7, -1413
                  addi         s1, zero, 0 #init loop 0 counter
                  sll          s3, a4, t3
                  slt          s3, ra, sp
                  srli         a6, t3, 14
                  andi         ra, t1, -559
                  sub          t0, s6, a6
                  slt          t4, a7, sp
                  addi         a4, zero, -6 #init loop 0 limit
sub_5_0_0_t:      sub          t2, t0, gp
                  addi         s1, s1, -3 #update loop 0 counter
                  sra          s7, zero, t3
                  auipc        gp, 400237
                  bne          s1, a4, sub_5_0_0_t #branch for loop 0
                  auipc        s3, 575728
                  bne          s5, s1, 952f
                  sll          t6, a5, s6
952:              bge          a6, s4, 955f
                  xor          s9, s7, s10
                  xori         a0, t3, -603
955:              addi         s5, s3, -1920
                  ori          a2, sp, 722
                  nop
                  sltu         s7, a7, t1
                  lui          s2, 639709
                  bge          t3, t0, 964f
961:              xori         sp, a1, 487
962:              add          s11, sp, s1
                  xor          s8, a2, ra
964:              sll          s8, t1, a2
                  slti         s0, t6, -567
                  addi         s1, zero, -8 #init loop 0 counter
                  addi         a7, zero, 750
                  ori          a3, s2, 1762
                  xori         a7, t1, -146
                  sltiu        zero, s0, -1068
                  ori          t1, s8, -151
                  xori         a5, s7, 1575
                  sub          s9, t4, s7
                  slli         a3, t1, 9
                  srai         zero, s5, 11
                  srai         t2, zero, 7
                  srl          gp, tp, s2
                  addi         ra, s2, 1354
                  sll          sp, t5, s3
                  addi         sp, s6, -1238
                  xor          t0, s4, s10
                  addi         s0, zero, 9 #init loop 0 limit
                  lui          ra, 99913
sub_5_7_0_t:      sub          s3, t6, t3
                  srai         a5, gp, 10
                  add          t1, tp, s6
                  addi         t5, sp, 1023
                  addi         s1, s1, 1 #update loop 0 counter
                  srai         s4, s0, 5
                  auipc        a4, 699923
                  srli         s9, a3, 23
                  srai         a4, s8, 8
                  srl          s4, s6, s11
                  blt          s1, s0, sub_5_7_0_t #branch for loop 0
                  xor          a5, a7, a7
                  bgeu         a7, s2, 973f
                  ori          a3, a6, -650
                  xor          ra, tp, a3
                  srl          a6, t4, s5
                  srl          t2, s5, s11
                  addi         t2, t2, -1212
                  xor          s9, t1, t3
973:              sra          s7, gp, s3
                  and          t4, zero, a1
                  bne          s9, a2, 987f
                  slti         a7, s4, 529
                  addi         s9, s0, 730
                  sra          s1, t5, t4
                  and          a4, a3, a6
                  auipc        t6, 80889
                  blt          zero, a5, 984f
                  sra          zero, t0, s1
                  bne          ra, a4, 996f
984:              ori          t2, a6, -674
                  slti         s0, t6, 1910
                  or           a1, ra, s3
987:              xor          t2, s7, a1
                  add          s11, zero, a4
                  sub          t4, a6, s10
                  xori         s0, a7, 1946
                  lui          a5, 112460
                  blt          a7, zero, 1002f
                  or           s7, t2, s10
                  bgeu         t6, t4, 1008f
                  sub          t1, a3, a6
996:              bgeu         t4, t6, 1013f
                  sll          s4, t6, a0
                  sll          s9, s6, t6
                  srai         a2, s4, 3
                  sll          sp, a7, a7
                  sltiu        s9, t2, 1524
1002:             xori         t1, s0, -12
                  sub          t0, s5, a3
                  bge          s6, a6, 1017f
                  bltu         tp, t4, 1013f
                  andi         t6, t5, 1381
                  beq          a5, s2, 1021f
1008:             addi         s3, s2, -177
                  and          t3, s9, tp
                  bgeu         t5, a4, 1014f
                  srli         a7, sp, 23
                  srl          a0, ra, t3
1013:             srli         a7, a3, 26
1014:             or           sp, s3, s6
                  srli         t3, s11, 13
                  addi         t0, s4, 600
1017:             addi         s2, a4, 435
                  blt          s7, s9, 1038f
                  bltu         a3, a0, 1020f
1020:             bgeu         ra, t5, 1027f
1021:             bne          a0, gp, 1028f
                  auipc        s5, 1036355
                  bne          t5, s0, 1024f
1024:             lui          gp, 908815
                  or           s0, a2, t5
                  sll          a3, a6, s1
1027:             sra          s5, s11, s1
1028:             ori          t0, a7, -1087
                  and          t5, s5, s10
                  bltu         tp, t5, 1044f
                  addi         s11, zero, -4 #init loop 1 counter
                  sll          s4, s9, a7
                  addi         a0, zero, 14 #init loop 1 limit
                  sltu         t1, t6, t6
sub_5_5_1_t:      auipc        sp, 498981
                  and          a4, s2, s3
                  addi         s11, s11, 6 #update loop 1 counter
                  addi         a2, zero, 0 #init loop 0 counter
                  srl          s0, sp, t0
                  addi         a5, zero, 15 #init loop 0 limit
                  and          s8, t2, sp
sub_5_5_0_t:      add          zero, t0, a7
                  addi         a2, a2, 10 #update loop 0 counter
                  xori         t5, s1, 1388
                  blt          a2, a5, sub_5_5_0_t #branch for loop 0
                  blt          s11, a0, sub_5_5_1_t #branch for loop 1
                  andi         s5, a4, 348
                  sra          t6, t2, t5
                  srli         a1, t5, 11
                  srai         s8, zero, 16
                  nop
                  xor          t6, s10, s2
                  slli         s5, t6, 18
                  sltu         a3, s10, t5
1038:             srai         s9, s1, 23
                  lui          t2, 533185
                  sra          t1, a1, s6
                  srai         s1, s7, 20
                  bne          s2, a4, 1059f
                  andi         s1, t2, 184
1044:             nop
                  ori          s1, s4, 1756
                  slt          s8, a4, t2
                  addi         s8, sp, -1276
                  srai         a6, t1, 20
                  and          s4, s1, a4
                  sra          a4, a5, s10
                  or           s1, s0, gp
                  andi         a1, gp, -647
                  bgeu         s9, a0, 1054f
1054:             or           gp, s6, gp
                  srli         t2, s8, 9
                  slt          t3, s5, t6
                  srli         t5, t4, 11
                  beq          a1, t2, 1061f
1059:             beq          gp, s9, 1065f
                  sra          s11, s10, t2
1061:             sra          t0, t6, s7
                  add          t2, a6, s1
                  sltu         t2, a1, s8
                  srai         t5, s10, 14
1065:             and          t4, t2, a5
                  srli         s8, t4, 12
                  bne          a3, tp, 1077f
                  sltiu        zero, a3, -1995
                  srai         s5, s10, 1
                  andi         t1, a6, 1376
                  slt          s1, s8, t3
                  slli         ra, t4, 3
                  srli         s0, s6, 29
                  bge          a4, s6, 1087f
                  srai         t0, a7, 16
                  add          s7, s7, s10
1077:             sub          ra, s7, ra
                  srl          s9, s4, s8
                  xori         a0, s0, 1930
                  andi         s2, s0, 26
                  and          t1, t6, sp
                  slti         t2, t4, -1954
                  bne          a0, t5, 1095f
                  bltu         t4, s11, 1098f
                  sltiu        s8, t3, -1169
                  slt          s8, a7, s7
1087:             sltiu        s4, s3, 380
                  sltu         a4, s5, gp
                  srli         s4, s5, 8
                  beq          s7, s7, 1109f
                  srl          a2, a5, t2
                  blt          a4, t1, 1102f
                  and          zero, sp, tp
                  sub          gp, s5, a2
1095:             and          s9, a6, a1
                  xori         a2, gp, -1739
                  sll          sp, ra, t5
1098:             blt          t5, a3, 1106f
                  bgeu         t0, tp, 1106f
                  bge          a7, a3, 1114f
                  sra          s9, a2, s2
1102:             bge          s5, zero, 1106f
                  srai         s3, a1, 1
                  bne          t1, t2, 1113f
                  slli         a7, a0, 6
1106:             blt          t0, s1, 1119f
                  sra          s4, sp, s2
                  srai         sp, s1, 13
1109:             ori          ra, tp, -1099
                  addi         sp, ra, 1673
                  ori          s9, tp, -258
                  lui          s8, 514940
1113:             slti         gp, t1, 1026
1114:             slt          s8, a2, s8
                  srl          s7, s11, s10
                  slti         s7, sp, -1471
                  blt          sp, t6, 1119f
                  auipc        t2, 15699
1119:             bltu         s3, s5, 1121f
                  xor          t1, tp, s9
1121:             beq          s3, a5, 1124f
                  xor          a6, a0, ra
                  sra          ra, s7, a0
1124:             sltu         t6, t1, s6
                  bge          s4, s9, 1135f
                  nop
                  bge          t3, a1, 1141f
                  bne          a5, t5, 1136f
                  xori         a7, s2, -867
                  blt          ra, s11, 1143f
                  srai         ra, t3, 24
                  xori         a7, s8, -1621
                  slli         a4, s9, 13
                  beq          a6, s11, 1151f
1135:             sra          ra, t4, a0
1136:             or           s11, a1, s1
                  addi         s11, s6, -1391
                  nop
                  addi         a0, s0, -61
                  add          t3, a5, a5
1141:             ori          s3, s5, 247
                  slli         t4, s2, 9
1143:             add          a0, zero, sp
                  andi         s11, a2, -1087
                  xori         s3, gp, -41
                  auipc        s5, 62383
                  beq          a0, s9, 1151f
                  bltu         a4, s4, 1168f
                  srai         s3, a1, 17
                  bgeu         a6, a7, 1170f
1151:             bltu         a5, a4, 1161f
                  slli         gp, s2, 14
                  bltu         s7, s5, 1155f
                  slli         s3, s6, 8
1155:             sltu         t2, a2, zero
                  xor          sp, s2, a5
                  addi         s4, zero, -3 #init loop 1 counter
                  srai         s3, a2, 26
                  slt          s9, tp, s5
                  add          t2, s2, t0
                  and          a7, gp, t6
                  addi         s7, zero, -3 #init loop 1 limit
                  slt          s3, s7, t1
                  sltu         s0, t1, t4
                  auipc        t4, 61580
sub_5_10_1_t:     auipc        s9, 813320
                  addi         s4, s4, -2 #update loop 1 counter
                  ori          t0, sp, 1432
                  addi         sp, zero, 1 #init loop 0 counter
                  addi         s11, t4, 879
                  xori         zero, a3, 383
                  addi         t6, zero, -10 #init loop 0 limit
                  srli         a3, s8, 28
sub_5_10_0_t:     andi         t0, s10, -1315
                  or           t2, s3, a5
                  ori          t4, a1, -543
                  addi         sp, sp, -9 #update loop 0 counter
                  lui          s2, 388606
                  bge          sp, t6, sub_5_10_0_t #branch for loop 0
                  srai         t2, a5, 16
                  srl          s2, a4, zero
                  srai         s3, s3, 10
                  or           s3, t6, s7
                  slli         a4, s2, 24
                  xor          a1, s0, t3
                  bge          s4, s7, sub_5_10_1_t #branch for loop 1
                  and          s11, zero, gp
                  or           t1, t0, a6
                  ori          a1, t2, 1347
                  ori          sp, t5, 1479
                  xor          s9, gp, s9
1161:             ori          a7, s0, -806
                  slt          t0, a1, s5
                  srli         t2, a2, 29
                  bgeu         s5, s7, 1178f
                  sll          a5, s0, a3
                  bne          s4, sp, 1176f
                  srai         s3, s2, 10
1168:             xor          t1, t4, a5
                  beq          ra, tp, 1183f
1170:             beq          t5, t1, 1183f
                  bgeu         t1, t3, 1177f
                  srl          t2, s3, sp
                  xor          s9, s6, s2
                  slt          s2, sp, gp
                  auipc        a4, 742899
1176:             nop
1177:             slli         s2, s7, 8
1178:             addi         s5, t3, -927
                  beq          ra, t0, 1186f
                  beq          tp, t4, 1194f
                  addi         t2, a7, 1154
                  srl          s1, a2, t0
1183:             slt          a0, tp, t3
                  srli         a1, s0, 26
                  addi         s0, a3, 1943
1186:             lui          s11, 162971
                  and          s2, a0, a3
                  srli         t2, a3, 31
                  addi         s5, t2, 490
                  bge          t4, a1, 1193f
                  and          s7, s3, t1
                  blt          s9, t4, 1200f
1193:             bge          a0, t2, 1206f
1194:             beq          s10, s7, 1208f
                  beq          s5, tp, 1196f
1196:             lui          t0, 57275
                  slti         a5, s0, -702
                  nop
                  and          t1, t6, s5
1200:             add          a1, a3, t2
                  srai         ra, tp, 4
                  xori         s1, s9, -290
                  andi         t3, s4, 1965
                  bltu         a6, sp, 1211f
                  addi         a1, a5, 1101
1206:             andi         a1, a1, -1734
                  auipc        s0, 1020421
1208:             xori         t1, t4, 788
                  beq          sp, a3, 1222f
                  sltu         s5, s11, t3
1211:             lui          s1, 456094
                  lui          s8, 916311
                  srai         zero, a1, 18
                  and          s9, ra, s1
                  blt          s2, t3, 1224f
                  or           t3, s5, a1
                  addi         a3, s8, -1080
                  andi         s0, sp, 615
                  sltiu        s8, gp, -1041
                  sra          sp, s7, s0
                  bgeu         s10, s5, 1233f
1222:             bgeu         a6, s6, 1225f
                  sltiu        t2, a7, -89
1224:             srl          s2, a3, a0
1225:             bge          t1, gp, 1226f
1226:             addi         a4, t5, 14
                  addi         a4, a4, -248
                  bltu         s0, a7, 1232f
                  add          t1, s8, zero
                  nop
                  and          s8, s3, t6
1232:             bltu         a2, a3, 1249f
1233:             bgeu         t6, a4, 1240f
                  xori         a7, ra, 1337
                  srai         s2, s2, 23
                  ori          t2, t6, 185
                  xori         a6, s8, 507
                  bge          s7, s4, 1257f
                  beq          t1, a1, 1247f
1240:             sra          a4, s6, ra
                  sltu         t0, a4, tp
                  or           s3, ra, s2
                  sltiu        t3, a1, -1218
                  and          s2, t0, s5
                  bge          s0, a4, 1249f
                  sltu         s8, s4, s6
1247:             slli         s8, s8, 27
                  sra          s11, a3, s8
1249:             xor          t1, s7, s7
                  srli         t6, a7, 1
                  sltiu        s8, a3, 1646
                  srli         s9, a0, 30
                  slt          s11, t4, sp
                  and          s7, s8, s4
                  addi         zero, t4, 1920
                  auipc        t4, 181037
1257:             bltu         a2, sp, 1274f
                  bge          t6, t2, 1268f
                  slt          s1, s6, s1
                  nop
                  lui          s3, 545835
                  nop
                  nop
                  andi         t5, a0, -1069
                  sub          s7, tp, t6
                  andi         sp, s1, -1150
                  auipc        zero, 210393
1268:             lui          a6, 710529
                  bne          a6, t4, 1271f
                  sltu         t2, s7, s8
1271:             and          a1, s7, a7
                  sltiu        a3, s7, 69
                  slti         a0, sp, 816
1274:             slt          t1, s6, s9
                  blt          s3, t3, 1281f
                  auipc        a7, 948496
                  srai         zero, t2, 11
                  addi         t2, zero, -2 #init loop 0 counter
                  andi         zero, t0, -966
                  andi         s2, ra, 241
                  srl          s11, s4, sp
                  addi         s3, zero, -6 #init loop 0 limit
                  xor          s2, a1, s9
                  slti         s8, s4, -369
                  or           s7, a7, s7
sub_5_19_0_t:     slti         s9, a7, 202
                  addi         t2, t2, -1 #update loop 0 counter
                  ori          a6, tp, -1192
                  sll          t1, s10, s3
                  slli         t3, t6, 29
                  sltu         s9, gp, t3
                  srl          s11, zero, s4
                  bge          t2, s3, sub_5_19_0_t #branch for loop 0
                  auipc        s11, 367543
                  auipc        zero, 669738
                  addi         s9, tp, 820
                  bltu         a3, sp, 1290f
1281:             bne          ra, a7, 1294f
                  andi         a4, s5, -935
                  srli         s2, s1, 10
                  sll          s3, s3, s7
                  sra          a4, a6, s10
                  or           s11, s1, t0
                  sltiu        a0, s6, 1139
                  sub          s7, a2, t2
                  slti         s4, s1, -1052
1290:             srai         t5, zero, 10
                  srl          a4, s0, t1
                  slt          a4, ra, s10
                  srai         s5, a1, 7
1294:             sra          s7, a0, s1
                  blt          s8, s11, 1303f
                  srai         a5, s6, 2
                  ori          s4, zero, -606
                  sltu         t6, a3, a5
                  sltu         a1, s4, t0
                  sltu         zero, tp, s10
                  sltiu        s11, s2, -1530
                  srai         t5, s9, 9
1303:             bge          a7, a6, 1306f
                  add          s5, s9, a7
                  addi         s8, tp, 402
1306:             slli         a4, zero, 26
                  xor          s11, s11, a0
                  andi         s2, t0, 81
                  ori          a4, ra, 1060
                  slti         t4, t5, -217
                  lui          a0, 1006355
                  sra          zero, s5, ra
                  or           a0, t2, t1
                  ori          s11, sp, 93
                  srl          a3, s7, s8
                  addi         a7, t0, 512
                  or           s5, gp, s11
                  xor          t1, a4, zero
                  sra          t3, t1, s0
                  slli         t3, a2, 21
                  bgeu         s5, t5, 1338f
                  srl          s9, t6, t0
                  auipc        s1, 935407
                  sub          s0, a1, s4
                  sltu         t3, s10, s7
                  andi         t1, t3, 127
                  add          a3, s6, a5
                  add          t3, a5, a4
                  and          zero, s10, s11
                  srai         zero, s10, 5
                  nop
                  sra          s5, s6, a0
                  sub          a4, s9, t2
                  lui          s7, 77839
                  slt          t1, a7, s4
                  andi         t2, s3, -421
                  bltu         s6, tp, 1339f
1338:             srli         ra, s10, 21
1339:             nop
                  blt          s2, a2, 1343f
                  srai         a0, a3, 24
                  slti         s9, s2, -1510
1343:             ori          s4, gp, 2034
                  xori         t2, a7, 1658
                  sub          t6, t4, s1
                  ori          a6, s9, -628
                  slt          t3, a4, t5
                  blt          gp, a4, 1360f
                  add          s1, t3, sp
                  srl          s0, t2, gp
                  auipc        a0, 1031429
                  bge          a2, gp, 1362f
                  srl          sp, s4, t6
                  or           s5, t3, a5
                  xor          t1, t5, a5
                  slt          t4, s5, zero
                  sll          a5, s9, sp
                  addi         sp, t5, -364
                  blt          s1, s9, 1373f
1360:             and          t0, s1, tp
                  lui          s1, 70056
1362:             srl          t1, s11, t2
                  xor          t3, s7, t4
                  xor          t6, t1, a1
                  beq          tp, a1, 1378f
                  srl          a4, s3, s2
                  blt          s3, s11, 1374f
                  add          s8, a5, ra
                  xor          t3, t3, t4
                  sltiu        t3, a7, -1020
                  srl          s5, t4, zero
                  sub          s4, s2, a1
1373:             bge          t6, a2, 1380f
1374:             sra          s4, s5, s2
                  sltiu        t2, s1, -1853
                  xor          s5, s4, s8
                  beq          s4, s7, 1387f
1378:             ori          t0, s9, 1559
                  xori         a2, s1, 1705
1380:             sltiu        zero, a5, -751
                  slt          s9, ra, s11
                  bne          s3, s5, 1384f
                  and          s1, t3, a7
1384:             bne          t0, t6, 1385f
1385:             slt          gp, a5, a6
                  auipc        a0, 294763
1387:             addi         s9, s2, -1369
                  sltiu        ra, a0, -799
                  srli         s2, a4, 5
                  addi         ra, zero, -2 #init loop 0 counter
                  auipc        s9, 30073
                  nop
                  sltu         t2, s6, a1
                  sub          a5, a2, a6
                  srl          t0, a7, a1
                  slli         s1, s0, 11
                  slli         a1, a3, 24
                  addi         a4, zero, 18 #init loop 0 limit
                  xor          t5, t2, a7
                  slti         a6, s6, 1447
                  sltu         s9, t2, gp
                  sll          s7, s2, a5
                  nop
                  nop
sub_5_2_0_t:      add          s7, t4, a7
                  addi         ra, ra, 10 #update loop 0 counter
                  or           a6, s4, s2
                  beq          ra, a4, sub_5_2_0_t #branch for loop 0
                  or           t2, a7, t0
                  or           a0, t3, t0
                  sra          a6, s11, s3
                  srl          s11, a4, s8
                  beq          s11, s3, 1397f
                  bltu         ra, s7, 1407f
                  bltu         zero, sp, 1403f
                  srl          a5, a2, s5
1397:             bltu         zero, a5, 1416f
                  sll          a0, zero, gp
                  ori          t2, t1, -130
                  sltiu        s11, s7, -1571
                  slt          sp, a4, a2
                  nop
1403:             bltu         a3, t5, 1404f
1404:             sltu         t6, a5, a4
                  slli         t4, a6, 14
                  bne          a1, t5, 1420f
1407:             or           a4, ra, a2
                  slti         gp, s2, 1929
                  andi         s11, s11, -1428
                  sra          t4, tp, s7
                  bge          s1, s7, 1425f
                  addi         gp, zero, 6 #init loop 0 counter
                  and          s9, a6, a6
                  ori          s4, s11, 1469
                  addi         sp, zero, 6 #init loop 0 limit
                  auipc        s4, 805474
sub_5_9_0_t:      xori         t1, s2, -1724
                  nop
                  addi         gp, gp, -5 #update loop 0 counter
                  addi         s0, s9, 1018
                  bgeu         gp, sp, sub_5_9_0_t #branch for loop 0
                  nop
                  nop
                  sra          a1, s9, s7
                  ori          s2, a0, 839
                  slti         s4, t5, -311
1416:             slli         s11, a5, 16
                  sra          s11, s9, zero
                  sub          s1, s8, s11
                  sll          a0, s10, a4
1420:             slli         s4, s9, 5
                  sra          sp, t2, sp
                  bne          s6, a5, 1439f
                  sltu         t1, sp, s10
                  lui          ra, 176125
                  addi         s7, zero, 8 #init loop 0 counter
                  sra          ra, s8, t6
                  and          s2, zero, t6
                  ori          s11, s9, 1070
                  slti         t1, a0, 1513
                  andi         s9, s5, 80
                  addi         t0, zero, -4 #init loop 0 limit
                  srli         s0, a0, 24
                  sll          a2, s10, tp
                  addi         a0, s8, 266
sub_5_26_0_t:     nop
                  xor          gp, ra, s2
                  srai         s5, t3, 20
                  sub          s0, s3, t2
                  slti         t5, t6, 1984
                  addi         s7, s7, -4 #update loop 0 counter
                  lui          s11, 232175
                  xori         t6, a4, -1836
                  beq          s7, t0, sub_5_26_0_t #branch for loop 0
                  xori         t2, a7, -1875
1425:             addi         ra, s8, -1413
                  srl          s9, t0, t3
                  bne          s11, s11, 1441f
                  blt          a1, s2, 1437f
                  bne          a5, s0, 1433f
                  srl          gp, s5, s11
                  xori         t4, t3, -454
                  lui          a3, 83063
1433:             sra          s9, s0, a1
                  or           a3, t4, gp
                  slli         a2, s10, 23
                  lui          t3, 63437
1437:             sra          a2, t3, t5
                  add          s4, a7, s0
1439:             lui          s5, 336702
                  blt          ra, gp, 1460f
1441:             sub          s4, a3, s7
                  auipc        t6, 526582
                  srl          a3, ra, s10
                  or           zero, a1, a4
                  blt          s10, t0, 1452f
                  nop
                  beq          gp, zero, 1455f
                  nop
                  ori          s11, s0, 921
                  bne          s0, s6, 1456f
                  add          s11, s8, t3
1452:             sltu         s4, s10, s3
                  sltiu        ra, s11, 395
                  sltu         gp, t6, s3
1455:             andi         t2, t3, 151
1456:             blt          t0, t1, 1465f
                  sll          t5, s4, s7
                  lui          s3, 690106
                  slti         sp, s11, -1003
1460:             beq          t4, s6, 1470f
                  srli         a5, s0, 12
                  bltu         t2, t4, 1464f
                  slt          s5, t1, a4
1464:             addi         a4, ra, 545
1465:             srai         s5, a3, 17
                  ori          a4, t6, -602
                  xor          t3, t2, t3
                  bgeu         a4, s6, 1469f
1469:             srai         s8, t6, 13
1470:             lui          t2, 766996
                  lw           ra, 4(s6)
                  add          t3, sp, t1
                  slt          s9, a7, s11
                  addi         s6, s6, 44
                  srli         t2, s2, 7
                  sub          a3, s10, a2
2109:             addi x19, x1, 0
2109:             jalr x19, x19, 0
sub_3:            beq          gp, s10, sub_3_stack_p
                  ori          s2, t0, -1989
                  srai         t1, zero, 22
                  srl          sp, s0, t5
                  slli         s3, a0, 27
                  add          t3, t5, s1
sub_3_stack_p:    addi         s6, s6, -44
                  ori          t6, tp, -997
                  add          a4, tp, gp
                  sw           ra, 4(s6)
                  lui          t0, 49809
                  srl          s2, s4, t6
                  srl          t6, s2, s0
                  sltiu        a1, tp, 1924
                  blt          t2, s10, sub_3_j5 #branch to jump instr
                  srl          a0, s10, a4
                  nop
                  and          a4, a7, s9
                  sltu         a7, sp, a5
                  srl          zero, sp, s2
                  srli         s4, s8, 22
sub_3_j5:         jal          ra, sub_5 #jump sub_3 -> sub_5
                  slt          s2, gp, tp
                  nop
                  sll          t4, s5, s2
                  ori          s9, a4, 669
                  lui          a6, 823228
                  sll          a1, a4, a0
                  nop
                  auipc        t3, 68655
sub_3_j6:         jal          ra, sub_4 #jump sub_3 -> sub_4
                  slli         zero, a7, 22
                  bgeu         a4, a2, 10f
                  lui          s3, 326203
                  sltiu        t5, s5, 390
                  or           a2, s3, t3
                  auipc        s7, 356423
                  xori         s8, s4, 139
                  bgeu         t6, a4, 18f
                  srl          t6, s8, a1
                  andi         t3, t5, -1548
10:               srai         s1, t3, 18
                  srli         s5, sp, 10
                  add          t2, t1, gp
                  xor          s3, a6, t0
                  or           s3, s8, a1
                  nop
                  auipc        t1, 501639
                  bne          a5, a2, 30f
18:               andi         t5, s11, -45
                  sltiu        s11, s1, -218
                  xori         a0, s6, 1970
                  bgeu         a7, s9, 36f
                  blt          a5, s3, 36f
                  sltu         s8, t5, a6
                  sltu         s5, s0, s9
                  nop
                  sltu         a1, a1, a1
                  bge          s0, gp, 36f
                  srl          s4, s7, s2
                  beq          s9, a2, 36f
30:               nop
                  bgeu         ra, a1, 36f
                  sltu         a4, a3, a0
                  slt          ra, a6, t4
                  bltu         a1, s9, 36f
                  andi         a6, s6, 1181
36:               auipc        sp, 971046
                  lw           ra, 4(s6)
                  slti         sp, t1, 1388
                  nop
                  addi         s6, s6, 44
                  add          s8, s3, a4
                  srli         t6, s2, 11
                  ori          a3, sp, -868
                  sll          a1, sp, t2
76:               addi x24, x1, 1
76:               jalr x24, x24, 0
sub_2:            addi         s6, s6, -28
                  sw           ra, 4(s6)
                  nop
                  srai         a2, ra, 11
                  and          s4, t1, ra
                  xor          t1, t2, s5
                  auipc        s4, 224926
                  slli         t3, s1, 5
                  slti         s1, s5, 670
                  slt          s0, s9, tp
                  srai         a0, zero, 12
                  srai         t2, t3, 5
                  auipc        s4, 825877
                  srli         t2, zero, 6
                  srli         a3, s10, 4
                  xori         t5, s8, -974
                  nop
                  slti         ra, s7, -747
                  xori         t5, s8, -146
sub_2_j4:         jal          ra, sub_3 #jump sub_2 -> sub_3
                  addi         t6, zero, -4 #init loop 1 counter
                  lui          s11, 14839
                  addi         s1, zero, 12 #init loop 1 limit
                  and          ra, a5, a4
                  srai         s2, s4, 26
sub_2_0_1_t:      xori         a2, t3, -346
                  lui          s7, 564808
                  addi         t6, t6, 7 #update loop 1 counter
                  addi         t4, zero, 9 #init loop 0 counter
                  or           gp, s7, s8
                  auipc        a2, 29206
                  addi         a7, zero, 8 #init loop 0 limit
                  andi         sp, s3, -1534
sub_2_0_0_t:      lui          t3, 899211
                  auipc        a4, 525213
                  srai         s4, a1, 13
                  addi         t4, t4, -7 #update loop 0 counter
                  sltiu        s5, a4, 511
                  andi         sp, t1, 1014
                  bgeu         t4, a7, sub_2_0_0_t #branch for loop 0
                  addi         s4, a3, 98
                  srai         s3, t5, 23
                  nop
                  blt          t6, s1, sub_2_0_1_t #branch for loop 1
                  xor          t0, tp, s3
                  sltu         gp, tp, a6
                  sra          t5, gp, s2
                  xori         s1, a0, -1682
                  slti         a4, t2, -58
                  nop
                  beq          s2, gp, 24f
                  slti         a0, s7, -1879
                  bge          ra, s11, 13f
                  blt          t6, s5, 25f
                  slti         t6, gp, -1381
                  srl          t4, a1, s2
                  and          a3, s5, t6
                  bne          s8, t3, 25f
13:               andi         a1, s8, 1595
                  bne          s2, s1, 24f
                  blt          s8, a1, 25f
                  bltu         s2, s0, 31f
                  bgeu         a7, s4, 19f
                  add          a1, s4, t2
19:               lui          a2, 918338
                  sub          s9, t6, t2
                  srli         s2, s10, 30
                  bge          t6, a0, 37f
                  xori         s0, gp, -542
24:               sra          t1, s10, s11
25:               or           t2, s3, a2
                  bge          a6, gp, 46f
                  slti         s2, s1, 587
                  bltu         a4, s8, 35f
                  lui          zero, 378064
                  sltu         t1, s5, s11
31:               sltu         s2, a4, t3
                  bltu         s3, s10, 47f
                  and          gp, a1, t2
                  xor          gp, t5, gp
35:               beq          s5, s10, 52f
                  sll          s1, a4, ra
37:               srli         a2, ra, 27
                  andi         s4, t2, 933
                  and          t5, a1, a3
                  nop
                  bgeu         s9, s3, 56f
                  add          sp, s10, tp
                  slti         s11, s2, 65
                  blt          s5, a0, 55f
                  auipc        s9, 421610
46:               or           sp, a7, s9
47:               blt          a1, t2, 64f
                  slli         t4, s3, 7
                  andi         a5, a3, -1965
                  bne          a1, tp, 60f
                  srai         gp, tp, 21
52:               lui          ra, 813184
                  ori          s3, t6, -553
                  srl          s7, t3, t3
55:               or           t4, zero, ra
56:               srli         zero, t3, 4
                  bge          s6, s0, 66f
                  sltiu        s4, s3, -1205
                  auipc        sp, 666938
60:               add          s4, s10, s0
                  bltu         a0, s7, 68f
                  nop
                  slt          s7, t4, a6
64:               sltiu        s4, s9, 1159
                  slti         a3, a1, 1973
66:               bne          s11, t1, 75f
                  sll          s11, a0, s8
68:               slti         s3, s4, -1978
                  bne          s9, t5, 73f
                  add          a4, a5, ra
                  beq          a3, t0, 73f
                  xori         s4, s10, 312
73:               sra          a6, s1, sp
                  slt          t6, s3, t2
75:               addi         t6, s3, -749
                  sltiu        s11, zero, -778
                  sltu         s1, sp, zero
                  lw           ra, 4(s6)
                  slt          gp, a5, sp
                  ori          t6, sp, -24
                  slt          s11, s3, t1
                  addi         a6, s10, 967
                  andi         zero, a7, 735
                  slli         s8, t0, 1
                  addi         s6, s6, 28
                  and          s8, s2, t5
132:              addi x20, x1, 1
132:              jalr x20, x20, 0
sub_1:            bge          s8, s1, sub_1_stack_p
                  add          s8, s2, gp
                  nop
                  or           t6, zero, s10
sub_1_stack_p:    addi         s6, s6, -52
                  nop
                  sw           ra, 4(s6)
                  addi         a3, s11, -1381
                  srai         t1, ra, 10
                  la           s7, sub_2
                  srai         a4, zero, 19
                  addi         s7, s7, -689
                  srai         zero, s10, 13
                  nop
                  srl          s3, s1, gp
                  sll          a6, t6, s9
                  srli         a6, sp, 0
sub_1_j2:         jalr         ra, s7, 690 #jump sub_1 -> sub_2
                  auipc        a1, 392453
                  sll          s11, ra, a0
                  andi         a5, t0, -1235
                  sub          t5, s0, sp
                  lui          sp, 248253
                  blt          s10, s11, sub_1_j3 #branch to jump instr
                  srl          a7, zero, s1
sub_1_j3:         jal          ra, sub_2 #jump sub_1 -> sub_2
                  slt          s4, t4, s9
                  ori          t6, s2, -1754
                  bltu         s3, t0, 17f
                  add          sp, s6, s0
                  addi         s1, s8, 164
                  andi         sp, a0, -1090
                  srl          t0, s7, s6
                  bge          s3, a0, 23f
                  and          a7, s11, s3
                  sra          s5, gp, a3
                  sltu         t2, a5, s11
                  slli         a7, t5, 10
                  sll          a5, ra, t6
                  auipc        s5, 272454
                  xori         t1, s11, 1557
                  slti         gp, s6, -660
                  beq          tp, t2, 23f
17:               bge          gp, s0, 18f
18:               auipc        s5, 801977
                  bne          s6, s7, 23f
                  addi         ra, t5, 1447
                  sltu         zero, zero, s9
                  xori         a1, t1, 539
23:               xor          s4, gp, t3
                  nop
                  add          s2, s1, t6
                  lw           ra, 4(s6)
                  ori          t6, a0, 1278
                  slt          s0, t2, tp
                  xori         a2, t3, 1396
                  xori         s2, a6, 1269
                  addi         s6, s6, 52
                  slli         sp, t1, 28
                  auipc        s0, 156056
60:               addi x29, x1, 1
60:               jalr x29, x29, 0
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
.word 0x4deb052f, 0x0612b42a, 0x0eb6acbe, 0xdb8e15d8, 0xc083bcde, 0xa3af981e, 0xac67cbce, 0xf22c6edd
.word 0x65fa9a3e, 0x227d902c, 0x21971cf8, 0x3503e9d3, 0x62848cfa, 0x93b8b642, 0xb0569324, 0x87f7fb1f
.word 0xd15e0010, 0xdf11f324, 0x7efe646f, 0x1d4e5c0d, 0xdcfb9fba, 0x8e0275f1, 0x31c5d873, 0x3423c55d
.word 0xc92b9a54, 0xdeded813, 0xe8a67316, 0x24215aa0, 0x813e7053, 0x3e9750a1, 0x1b436d9c, 0xd1b2eec1
.word 0x8eac3a4c, 0xd8f56ff7, 0x41c7ab34, 0x3f750122, 0x79878656, 0x9169826a, 0xc4977852, 0x15fc346c
.word 0x9d912f90, 0x95c29602, 0xe3ea1021, 0xe2293959, 0x3d07088e, 0xa80446f4, 0x6e74c910, 0x77d77a72
.word 0xf40d12ed, 0x96bc20b4, 0x22071836, 0x4cdcc576, 0xea5d5720, 0xc825dc0d, 0x2dad08f0, 0x63ecde39
.word 0x97fe449d, 0x86010a77, 0x7bb7290c, 0x3073d909, 0x826fe9be, 0x84e10963, 0x6c5e16c4, 0xcc85b17b
.word 0x8c74bd5d, 0x4eb2a466, 0xcd424088, 0x2e912c11, 0xc885242a, 0x61a02c6c, 0xae68d69a, 0x505fbfd2
.word 0x0c157443, 0x66b4acaa, 0x0ad875ba, 0x134411c2, 0x22889c3e, 0xf23c2193, 0x335ba50a, 0xced7bf1b
.word 0xdba396d5, 0xbd3720ae, 0x46359718, 0xe2d95256, 0xbaaf2cb8, 0xe802339d, 0xdddf396b, 0x3956d7c1
.word 0xcb4de9f4, 0xa155c31f, 0x01889de7, 0x8bbf5d03, 0x0e4b186b, 0x4d926552, 0xb46d997c, 0xdbcf3ae0
.word 0x6a2368b9, 0x46cb2256, 0x325cac88, 0x1dfe08bf, 0xaade5a5a, 0xbd21fd64, 0x78b2069c, 0x22f94b10
.word 0xa67bfcc3, 0x56119640, 0x175a0b23, 0x8769ad49, 0x3a289ecc, 0x80f0d3ec, 0xf761598c, 0x384b5535
.word 0x41e68fe1, 0x22aacfc6, 0x7d3fadc6, 0x6b7f0d5a, 0xddbb0516, 0x42764dc4, 0xe6b7807c, 0xf9b0ba80
.word 0xa7a0d4d5, 0xba053637, 0x89d56acc, 0xb0d345f1, 0x374af0b7, 0xcf475720, 0x5e40a598, 0x23ed6bf3
.word 0xecae4944, 0xe53fdedc, 0x175212b3, 0xa767262e, 0x3a147054, 0x304a3dc1, 0x6ac08828, 0xd2e1a703
.word 0x8d46d0c3, 0xd04185dd, 0xd39c1ed2, 0x3dfa5c19, 0x7bd45383, 0x38e671a5, 0x701f67dc, 0xd61cf586
.word 0x488e5b94, 0x46f198b9, 0x459965ea, 0x5ed84787, 0xbdb0db94, 0xe13aacc4, 0xd20e47e2, 0x51d5f7c9
.word 0x06bd5390, 0x061f5a02, 0x27719861, 0x8cd722df, 0x1ed07c88, 0x67f3da1e, 0x0fb17ffe, 0x64b3cdb1
.word 0x6830bf60, 0xb836ed99, 0xd476f540, 0x02e1f8b7, 0x2e33bd50, 0xe0cf038f, 0x73e3cc42, 0xcc72f69f
.word 0x1e3f6104, 0x4749e1fe, 0x007851df, 0xda2add5e, 0x035d000f, 0xdc62f2f9, 0xc4084818, 0xef234c08
.word 0x6186e2df, 0xe78dc491, 0xa1bd0d09, 0x271e90f7, 0x5ef00f92, 0xe7e6b00e, 0x006c7730, 0x6e4da971
.word 0xbe4a1406, 0x2a9e6a09, 0x49aa5565, 0x5ffd8cc6, 0xef116795, 0x0e10fe6a, 0xa1d27ea3, 0xbdfe2e63
.word 0x0fb32155, 0x0ce32acd, 0x482ee6c9, 0x763edd52, 0xc5df7f64, 0xa698c54f, 0x845893a6, 0x81de2783
.word 0x760c2130, 0xdda76ccd, 0xdd8ee41e, 0x70e6c12d, 0x318e9b1e, 0x1dee4731, 0x2f562509, 0xcdec1d59
.word 0xa81ec987, 0x8f8c9081, 0x3353beb3, 0xd211ac77, 0x61377aca, 0x766b2b78, 0xac1c9bb2, 0xe970dde8
.word 0x9f8d5bf6, 0x0ca405b0, 0xb080dfde, 0xcddcacda, 0xadbe692a, 0xffe033c0, 0x726497f8, 0x9e4ff2aa
.word 0xe6f2a9d5, 0x177e9345, 0xfe4b15b6, 0xa180141e, 0xddd2f230, 0x5e9e87e9, 0xec9b7590, 0x9ed41424
.word 0xe4d57a7f, 0x92b2100f, 0x38d8e916, 0xb9827968, 0x977ba42e, 0xbf80814c, 0xdf3b8f65, 0x087e675f
.word 0x66b0fd08, 0xa6100fee, 0x50f34e60, 0xad11f9d5, 0xd887da7f, 0x16e97814, 0x42756dea, 0xe2195684
.word 0xd2b08b1b, 0x9e41e4d2, 0xd7dc4fff, 0xb3e16261, 0x5896f279, 0xd7ec4854, 0x6e51b4ac, 0x5cbc179d
.word 0x3be085e5, 0x80589d49, 0x1b4da052, 0x227283bb, 0x8656de62, 0x81110d05, 0x7feb7aeb, 0x0e90f953
.word 0x22171df1, 0xf5661777, 0x68e565bc, 0xbc8de456, 0x0f6e495b, 0xadaff5e7, 0x252a5588, 0xd77e4477
.word 0x4c3d6e07, 0x42e8cc4a, 0x048ed0b5, 0x4a139266, 0x1fb5ede9, 0x301c49f4, 0x19fe1a4c, 0xab0cb1de
.word 0xca37d7ec, 0x92771ab3, 0x8ed234be, 0x0b1188dc, 0x3fd41c5b, 0xdc4803ec, 0xa12f3324, 0xc81dae89
.word 0x8f8e0f13, 0x6bd69e98, 0x079f0c93, 0x2185140c, 0x714c850b, 0x55e4b16b, 0x8046e3b8, 0x655e5480
.word 0x267dd298, 0x6f8b6206, 0x361964ae, 0x9224f019, 0x0fef7ab8, 0xa6f20ba2, 0x33631b92, 0x4ea49ae2
.word 0xa8d363bf, 0x7c393cb3, 0xc7fe6ee1, 0x2ff8d719, 0xdabbf738, 0x9136dc1b, 0xc5e0b68d, 0xd72775eb
.word 0xf712c946, 0x815ff656, 0xab9e5381, 0x493b452a, 0x99cdbf49, 0x6f18c64f, 0x5ff7cf46, 0xc7000d0d
.word 0x8744e072, 0x928dbd8e, 0xbf18d226, 0x6511062c, 0x459b965f, 0x04aaf1f2, 0x4a358a25, 0x8fd68343
.word 0x0e6c6ab8, 0x4e657e33, 0x85f2414e, 0x7401031e, 0x4ef63f22, 0x5dfb2d5f, 0xb6bb2395, 0xa7314201
.word 0xd632efda, 0x84a4dd19, 0x6dfd0e54, 0x366a0517, 0xd6991321, 0x4cb8eed5, 0xf6157b31, 0xa527d81d
.word 0x77677349, 0xc5f46061, 0x38ce1c75, 0x47be083f, 0xf1682b6a, 0xa7367640, 0xb7d7bfb0, 0xfbd92d2b
.word 0x2186d42c, 0xbd509361, 0x242929e3, 0xe55dcfdf, 0xd9ed9778, 0x3815d4b2, 0xa2000782, 0x24c27e69
.word 0x5f64e90b, 0x2be3bb06, 0xbbef2779, 0x59bc82ce, 0x2b358282, 0x42b6a09a, 0x1cf715ed, 0xa07fe145
.word 0xed4268ab, 0xe71167bc, 0x49358441, 0xc0a17c7b, 0x6b572ea2, 0xfdd58a58, 0xe392a641, 0xb3e18cba
.word 0xf4899e68, 0x979896a9, 0xe4652364, 0x428807bd, 0x0c3b61a4, 0x786f628f, 0xc0dea495, 0xdca3ef52
.word 0xaa633f61, 0x86e376f4, 0x2f71cbc7, 0x3c45d423, 0x8e5398b8, 0x1a08b9e6, 0x4b913266, 0xcf7a7e31
.word 0x525a2468, 0xda40ff40, 0x4bc3a16d, 0x4dc63ce9, 0xa3a3558d, 0x145e0a9d, 0x04c94a75, 0x6277d1fc
.word 0x283fcc59, 0xb6ede674, 0xed833154, 0x366266f5, 0x99994d93, 0x844510f8, 0x7ecbfcbf, 0xb4b64792
.word 0x3a4dea2a, 0x08514522, 0x1bfb4706, 0xd580e0d9, 0x2fe2daee, 0x45222675, 0xf3271450, 0xbc458ceb
.word 0x8f3ce4f7, 0xf0ff86ab, 0x882a9073, 0x8e697153, 0xa124fc92, 0x1f4dddbc, 0xd98db5a6, 0x71bdfb75
.word 0x55d673c5, 0x6001b9cb, 0xe64e936e, 0x522496af, 0xafa37eef, 0x0b11c98f, 0x1103fdb3, 0xe624a9c7
.word 0x5a2bf2d3, 0x2ef25fc9, 0x14caa9db, 0x6791a9fd, 0x0fe386d4, 0xb826daeb, 0xed68fcd0, 0x8d824828
.word 0xc8951583, 0x0e436ab7, 0xcf4970c6, 0x0b70a8d9, 0x8fe86ab1, 0xfab85dcc, 0xec3dff5f, 0xe7fd7de0
.word 0xb5764956, 0x52f0e654, 0xfeac6736, 0x6b9f4bc3, 0x1ee00b7b, 0xef6b4e62, 0xe069a611, 0xd4325c1b
.word 0x877c2f8e, 0x2856ece9, 0x629d21e0, 0x52455902, 0x7766db64, 0x08fa0b69, 0x3dd348a4, 0x6da5075f
.word 0x51b23a47, 0xc4042d17, 0x424d408e, 0xf6a4f49e, 0x906f9117, 0xbf17bcd4, 0xf2608e53, 0xeac7a917
.word 0x8d4399ed, 0xdc89b0ac, 0xb979bb05, 0xc9805e3a, 0x7232334a, 0xc0808a65, 0x47421ad3, 0x33d06a8f
.word 0xf747e5e6, 0xf5be0cff, 0x47cd236c, 0xe4b13fdc, 0x3fd3b0ce, 0xd1574d8d, 0x51d52304, 0xa9eea3dd
.word 0xe79b559a, 0xa7ea8dcb, 0xb851914f, 0xed47102b, 0x0e08a0eb, 0xf96a1fcf, 0x021ffdd9, 0xb8b84069
.word 0x31bd09a9, 0x590c69ad, 0xa8c980cf, 0x68e5c48c
.section .region_1,"aw",@progbits;
region_1:
.word 0x8c651657, 0x0e7451c7, 0x01f1767b, 0x52d887d8, 0xc2a23927, 0x34d89c6e, 0x9054fc58, 0x095e8b08
.word 0xec4404b0, 0xed03abfb, 0xbb86f10e, 0xb2c852f2, 0x53d5dc6a, 0x1b43f888, 0x469b3f00, 0x95c1cb54
.word 0x98cf20b4, 0x83e53e20, 0xa50fc5c1, 0x966aaed3, 0x966d4401, 0xd78fa7ac, 0x923d167c, 0x5a01f6a0
.word 0xb6c803ab, 0x8ffeee9e, 0x3b76c938, 0xc35e9d04, 0xeadcf0e6, 0x15ced7ea, 0x35a2981d, 0xb6ca0769
.word 0x5a95c0cb, 0xfb7519d9, 0x3f78b439, 0x562216b2, 0xb70ca2a2, 0x419265b0, 0xa328e610, 0xd6ab8e0d
.word 0x8d87382e, 0xd4256af9, 0x94bcf52d, 0x3359f03c, 0x211b557e, 0x61b3b403, 0x5df53416, 0x947bd39d
.word 0xe81f3dcd, 0x09e08cf2, 0xceebba2c, 0xc8e12ebd, 0xc17104d7, 0x700f11a2, 0x68060b0c, 0xb8b6543a
.word 0x91f86614, 0xc057a72a, 0x232d08cf, 0x19cdd4d1, 0x51dae855, 0xecd354a4, 0x5c671b98, 0xe650bc75
.word 0x8e9d5264, 0x380a4fd2, 0xe099ea12, 0x4418e560, 0x0fff03b5, 0x630169b2, 0xe14f1c90, 0xcebbbdc3
.word 0x50e03b52, 0x87d2a573, 0xe48865fc, 0x20b572da, 0xda957c3e, 0x6240aada, 0x2c4dd6d9, 0x276eeefb
.word 0xc74d9ea8, 0xda01624c, 0x90554de3, 0xe92a180e, 0x9cf5082b, 0xf79206b5, 0x1c79a644, 0xbc53bfbf
.word 0x796a7999, 0x0292c8b5, 0xef18e06a, 0xb498fb1b, 0xfcba0620, 0x1a4ef64a, 0xb6e937c4, 0x5969e102
.word 0x3950b090, 0xcea3bcd1, 0x452c4e08, 0xdb557500, 0xfbc0cf07, 0x4a5c20e1, 0xd2bbed93, 0xf04ff325
.word 0xfe82b1aa, 0xb1e8a6b7, 0x4efcb43d, 0x83b143ae, 0x5191580e, 0x5901b5ad, 0x301a79c0, 0x0531a41c
.word 0xfeeffbab, 0xf5b6ba31, 0xd72b204e, 0x3af4bc36, 0x956edc70, 0x01c4895b, 0xed14bac0, 0x31c71b40
.word 0xf98fa920, 0x09df5dc3, 0x98359dde, 0xf603db18, 0x09aded63, 0x3535726e, 0x4913f5d3, 0xa8ebe6dd
.word 0x3cc31e7f, 0xf2e8c9a8, 0xb50ce3d6, 0xa79e80da, 0x375ec26a, 0x75fb741a, 0x0571b3d9, 0xcf62d805
.word 0x291d2191, 0x4fd4f1e8, 0x7c525ca4, 0x40a77441, 0x76da388c, 0x279e8eef, 0x58afa07f, 0xf07a4e5d
.word 0xf926036a, 0xb1a3c6c3, 0xa3ff370d, 0xb40c114b, 0xdcf1125e, 0x2cd9737a, 0x9d895dd3, 0x9b606555
.word 0xf614c502, 0xd10f169f, 0x956af866, 0xaccbb423, 0xa31c6b89, 0xa128c8c4, 0xb75807c2, 0x9fa5aaec
.word 0xdf898bcf, 0xc0c8fb02, 0x355bc4a5, 0x896d2870, 0xa91407ae, 0x68910633, 0x07201e24, 0x59cfc9af
.word 0xcaf54f19, 0x31265a07, 0xdb8151bb, 0xac51185d, 0xfa38367a, 0x272f206f, 0x5c267fbc, 0xa79c4253
.word 0x6e4c77ae, 0xd3eb220b, 0x06ef58a6, 0xe02e1d80, 0x7f079e1e, 0x562f024e, 0x3db7a4d0, 0xf1d7fe7a
.word 0x9f027169, 0xdc5d2093, 0xa2d86904, 0x3e3e8b08, 0x8a78a1bf, 0x64313ae1, 0x40ecde7d, 0x08e88b7e
.word 0x5c3b49b1, 0x7688572b, 0xce35cc35, 0x542b7e67, 0xfca0d186, 0xbd1dfee5, 0xfa0f864f, 0x3c6cda71
.word 0x2c93c845, 0x885fd387, 0x7ae97248, 0x3974aac8, 0xf0a4c360, 0x43fa2a2c, 0xd4db5d13, 0xa60fb919
.word 0x2fe22229, 0xa16387c7, 0xea409512, 0xeb4c22dd, 0xceaced31, 0xaab5a84d, 0x48c4d0de, 0x021cfe4c
.word 0x896670a6, 0x14f8b840, 0x4e2b44fd, 0x129a36c2, 0x009e7aa8, 0xd2aaf2af, 0xea5e100c, 0x293753c7
.word 0x2716ed53, 0xd5b912e5, 0x65851ba2, 0x959bd0ec, 0x516eff07, 0xefdcf5bb, 0x98d1c1b1, 0x7459b2ff
.word 0x0357453b, 0x85a0f968, 0x63796b13, 0x35ae1ca3, 0x6bd6390c, 0x2873690e, 0x3f885ac9, 0x6fa25185
.word 0x007b5c29, 0x69051147, 0x479c2871, 0xd218a9b0, 0xfd11f96c, 0xf65d731f, 0xe602712f, 0xa677ebb6
.word 0x7fc7f494, 0xa92346b2, 0x5e8d8850, 0x7dca0a1f, 0x92540129, 0x7885a081, 0x873ba6bf, 0x974f9f52
.word 0x71afab14, 0xeb7eb210, 0x41136df2, 0xd2ed32a0, 0xb81c5efc, 0xe4fdb5c9, 0xdebcb018, 0x24809277
.word 0xd920d8b4, 0x54659409, 0x3a06906b, 0xadde91f4, 0xff2b933b, 0x2d2ee0db, 0xa9a93630, 0x1470d97a
.word 0xad1263d9, 0xde0f4535, 0x0367694d, 0x2c4b1b9a, 0x3d8d9f37, 0xfc70837f, 0x2a2a98f0, 0x528cee3f
.word 0x96ede155, 0x2de1da89, 0x0c7d17a8, 0x1ba50f85, 0x5fe65e8a, 0x7348d983, 0x960ed2ab, 0xa9033e6e
.word 0x900f1b0b, 0x1173a9eb, 0xfed1592c, 0xc694393d, 0x13aed19a, 0x71a62898, 0x5d9edf7c, 0x7822e3a3
.word 0xf639d6c4, 0xa043b9a5, 0x2e0fafa8, 0xc7d877f3, 0xe165385f, 0x4cd634eb, 0x4f1249e8, 0x3d1e43da
.word 0x6cae8a30, 0xb3ffa77c, 0x18f08f97, 0xbe38e214, 0x82700bd9, 0x22fc234d, 0x06e08cdd, 0xb0bef7a8
.word 0x20d0f90c, 0x364e6704, 0xd66d8ae3, 0x8f69ceeb, 0xa6e6c67a, 0x472e1826, 0xff28aef2, 0x6f4e94ef
.word 0xa9b130c1, 0x12af7659, 0x868de02e, 0xc1018557, 0x4871878f, 0xf4fe0059, 0xff3cf63f, 0xc95281eb
.word 0xe631ffd6, 0x6d0e66fa, 0xdfd6ffc8, 0xd51771ae, 0x20f50681, 0xfaa20d72, 0x0a662f2b, 0xc8eda982
.word 0xce156761, 0xaa52ec79, 0x755d93ca, 0x917a5b76, 0xd369ff3d, 0x1178cfe1, 0x80a252f3, 0xb4415cc2
.word 0x5932d4e9, 0x8ad5050a, 0x05c9706d, 0xd09e7de9, 0x15c0ea03, 0x5a189275, 0xa7901eb3, 0x39d771e6
.word 0x980ca5df, 0x3946fd4e, 0xc85674d2, 0x90ccbe2d, 0x05c7242a, 0xb5148e5c, 0x78c70cb4, 0x788e11f2
.word 0x69ef4b6c, 0xfb9ad2ba, 0x0d356fa3, 0xdbd51643, 0x62487d4e, 0x522829bc, 0x964488a4, 0xfcc065af
.word 0x8c214cbd, 0x5af677e7, 0xd397a98e, 0x92a8a88a, 0x3283361b, 0x63819938, 0x92326eb3, 0xfbba9b85
.word 0x3828cde0, 0x6e8d4a7d, 0x3081b25b, 0x6c8dede3, 0x3477d347, 0xdd203394, 0xc83cc22b, 0xc2e98f0b
.word 0xe9ed5388, 0x3bfd765c, 0xfa8d9c58, 0x2dcf68c4, 0x057a69ed, 0xda5f3515, 0x8eb0426a, 0x8dc9ab67
.word 0xb2cebd44, 0xd06145fd, 0x7893e9b5, 0x28d24c68, 0xd8801056, 0x5b0efa6f, 0xf5bd9581, 0x3260888b
.word 0x518eb20d, 0x56ccbe59, 0xfa793a76, 0xb6646f31, 0xc2be8516, 0xd1c5995b, 0x1980d061, 0xd229fda2
.word 0x26143b51, 0xab2c583b, 0x5e9d20a3, 0xd91658de, 0xaadf1320, 0xa66ea5bb, 0x256894b3, 0xec8e094e
.word 0x98269213, 0xa08c61aa, 0xb75311a4, 0x000f04f0, 0xbe530953, 0x91884859, 0xe1ca41b9, 0x3520f665
.word 0xd95d1f0b, 0x4c20eee0, 0x8176750d, 0x68aa686a, 0x6771858a, 0xb465baca, 0x177d117c, 0x1116f47c
.word 0x9cce767f, 0xc0f048a4, 0xfaab2842, 0x2e39d805, 0xa485eb92, 0xb1fa4a51, 0x34e266bc, 0x42361e0c
.word 0x27d7ccc6, 0x0f3692c8, 0xee21a004, 0x41ddf497, 0x66e9bc73, 0x73789ec6, 0x04d1003f, 0x6107a2e2
.word 0x7391e121, 0xd2f9ecc8, 0xed28cda8, 0x399dc922, 0x5e0f0042, 0xe7a14c0c, 0xdb5fb30e, 0x8eda9f1e
.word 0x97a8e9a7, 0x96ee8573, 0xbe724d85, 0x374cba69, 0x2fd383ad, 0x886f0dd6, 0x7707f6cb, 0xada6590b
.word 0xae3147f4, 0x3fe24fe7, 0x0e10a74d, 0x00c4f187, 0x42609923, 0x25a9e65c, 0x67328bbc, 0x469855a9
.word 0xde3ecf06, 0xc4b79ee0, 0x73b784b0, 0xbd046f89, 0xf740cd38, 0xf3f6680b, 0xc5c0586f, 0xf392c1ae
.word 0x7ce749be, 0x6fe20f46, 0x73ab49fa, 0xbf135357, 0x0c3cf805, 0xc39164c9, 0xbd090619, 0x9f1f0a72
.word 0xc0700857, 0x6769f263, 0xbf29564f, 0x24482c6a, 0x0059a147, 0x3f82a306, 0x669b5b57, 0x1195c903
.word 0x86be277c, 0xfe29f830, 0xaf4c0a9f, 0x0f89e618
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
                  addi x22, x22, -128
                  sw  x1, 4(x22)
                  sw  x2, 8(x22)
                  sw  x3, 12(x22)
                  sw  x4, 16(x22)
                  sw  x5, 20(x22)
                  sw  x6, 24(x22)
                  sw  x7, 28(x22)
                  sw  x8, 32(x22)
                  sw  x9, 36(x22)
                  sw  x10, 40(x22)
                  sw  x11, 44(x22)
                  sw  x12, 48(x22)
                  sw  x13, 52(x22)
                  sw  x14, 56(x22)
                  sw  x15, 60(x22)
                  sw  x16, 64(x22)
                  sw  x17, 68(x22)
                  sw  x18, 72(x22)
                  sw  x19, 76(x22)
                  sw  x20, 80(x22)
                  sw  x21, 84(x22)
                  sw  x22, 88(x22)
                  sw  x23, 92(x22)
                  sw  x24, 96(x22)
                  sw  x25, 100(x22)
                  sw  x26, 104(x22)
                  sw  x27, 108(x22)
                  sw  x28, 112(x22)
                  sw  x29, 116(x22)
                  sw  x30, 120(x22)
                  sw  x31, 124(x22)
                  add x4, x22, zero
                  csrr x8, 0x300 # MSTATUS
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 31
                  bne x8, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x8, 0x341 # MEPC
                  csrr x8, 0x342 # MCAUSE
                  li x31, 0x3 # BREAKPOINT
                  beq x8, x31, ebreak_handler
                  li x31, 0x8 # ECALL_UMODE
                  beq x8, x31, ecall_handler
                  li x31, 0x9 # ECALL_SMODE
                  beq x8, x31, ecall_handler
                  li x31, 0xb # ECALL_MMODE
                  beq x8, x31, ecall_handler
                  li x31, 0x1
                  beq x8, x31, instr_fault_handler
                  li x31, 0x5
                  beq x8, x31, load_fault_handler
                  li x31, 0x7
                  beq x8, x31, store_fault_handler
                  li x31, 0xc
                  beq x8, x31, pt_fault_handler
                  li x31, 0xd
                  beq x8, x31, pt_fault_handler
                  li x31, 0xf
                  beq x8, x31, pt_fault_handler
                  li x31, 0x2 # ILLEGAL_INSTRUCTION
                  beq x8, x31, illegal_instr_handler
                  csrr x31, 0x343 # MTVAL
                  1: la x26, test_done
                  jalr x1, x26, 0

ecall_handler:    
                  la x8, _start
                  sw x0, 0(x8)
                  sw x1, 4(x8)
                  sw x2, 8(x8)
                  sw x3, 12(x8)
                  sw x4, 16(x8)
                  sw x5, 20(x8)
                  sw x6, 24(x8)
                  sw x7, 28(x8)
                  sw x8, 32(x8)
                  sw x9, 36(x8)
                  sw x10, 40(x8)
                  sw x11, 44(x8)
                  sw x12, 48(x8)
                  sw x13, 52(x8)
                  sw x14, 56(x8)
                  sw x15, 60(x8)
                  sw x16, 64(x8)
                  sw x17, 68(x8)
                  sw x18, 72(x8)
                  sw x19, 76(x8)
                  sw x20, 80(x8)
                  sw x21, 84(x8)
                  sw x22, 88(x8)
                  sw x23, 92(x8)
                  sw x24, 96(x8)
                  sw x25, 100(x8)
                  sw x26, 104(x8)
                  sw x27, 108(x8)
                  sw x28, 112(x8)
                  sw x29, 116(x8)
                  sw x30, 120(x8)
                  sw x31, 124(x8)
                  la x26, write_tohost
                  jalr x0, x26, 0

instr_fault_handler:
                  add x22, x4, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

load_fault_handler:
                  add x22, x4, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

store_fault_handler:
                  add x22, x4, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

ebreak_handler:   
                  csrr  x8, 0x341
                  addi  x8, x8, 4
                  csrw  0x341, x8
                  add x22, x4, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

illegal_instr_handler:
                  csrr  x8, 0x341
                  addi  x8, x8, 4
                  csrw  0x341, x8
                  add x22, x4, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x8, 0x300 # MSTATUS;
                  csrr  x8, 0x304 # MIE;
                  csrr  x8, 0x344 # MIP;
                  csrrc x8, 0x344, x8 # MIP;
                  add x22, x4, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
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
