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
                  li x21, 0x40000100
                  csrw 0x301, x21
kernel_sp:        
                  la x16, kernel_stack_end

trap_vec_init:    
                  la x21, mtvec_handler
                  ori x21, x21, 1
                  csrw 0x305, x21 # MTVEC

mepc_setup:       
                  la x21, init
                  csrw 0x341, x21

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x21, 0x1800
                  csrw 0x300, x21 # MSTATUS
                  mret
init:             
                  li x0, 0xc
                  li x1, 0x7
                  li x2, 0x80000000
                  li x3, 0xc02deb45
                  li x4, 0xf52e4f6f
                  li x5, 0x80000000
                  li x6, 0x0
                  li x7, 0xf69dd8a3
                  li x8, 0x9
                  li x9, 0xcb142603
                  li x10, 0x57be9177
                  li x11, 0xff43104d
                  li x12, 0xd954abb3
                  li x13, 0x0
                  li x14, 0x9
                  li x15, 0x80000000
                  li x18, 0x80000000
                  li x19, 0x0
                  li x20, 0xf8600ac6
                  li x21, 0xabebabdd
                  li x22, 0x80000000
                  li x23, 0xd
                  li x24, 0xf442b7a7
                  li x25, 0xf84dde00
                  li x26, 0x41f846d
                  li x27, 0xf2fa3272
                  li x28, 0x80000000
                  li x29, 0x80000000
                  li x30, 0x0
                  li x31, 0xb12a335f
                  la x17, user_stack_end
main:             nop
                  xori         t6, a3, 1307
                  and          t2, a3, s10
                  xori         a0, s5, -60
                  la           t4, sub_2
                  xor          s5, s5, t4
                  addi         t4, t4, 228
                  nop
                  add          s10, s3, t3
main_j4:          jalr         t1, t4, -227 #jump main -> sub_2
                  addi         s1, zero, 6 #init loop 0 counter
                  addi         t4, zero, -9 #init loop 0 limit
main_7_0_t:       ori          s11, a5, -452
                  lui          a3, 574982
                  andi         tp, a2, -483
                  addi         s1, s1, -6 #update loop 0 counter
                  sltiu        s7, s10, -980
                  xori         a2, a1, -1252
                  and          s9, a3, sp
                  or           s10, zero, s9
                  or           t6, s4, s3
                  bge          s1, t4, main_7_0_t #branch for loop 0
                  srai         s0, t5, 8
                  addi         t6, zero, 4 #init loop 0 counter
                  addi         s0, zero, 5 #init loop 0 limit
main_2_0_t:       slti         t0, s6, -1598
                  addi         t6, t6, 8 #update loop 0 counter
                  blt          t6, s0, main_2_0_t #branch for loop 0
                  lui          t1, 146362
                  addi         s11, zero, 9 #init loop 1 counter
                  auipc        s2, 198517
                  nop
                  addi         s0, zero, 9 #init loop 1 limit
                  or           t1, a3, a0
main_12_1_t:      addi         s4, s9, 1123
                  sra          t1, a7, s10
                  addi         s11, s11, -8 #update loop 1 counter
                  xor          s7, s0, tp
                  srai         t1, s10, 15
                  addi         tp, zero, 10 #init loop 0 counter
                  xor          s4, a5, s10
                  xori         s5, s0, -1735
                  addi         s3, zero, 15 #init loop 0 limit
                  sltiu        s5, s10, 170
                  sltu         a0, a1, s9
main_12_0_t:      xori         s9, s0, -641
                  slli         a1, s8, 1
                  lui          s7, 490757
                  addi         tp, tp, 3 #update loop 0 counter
                  slti         t6, gp, 10
                  blt          tp, s3, main_12_0_t #branch for loop 0
                  ori          s6, a4, -2011
                  or           gp, a5, a3
                  bgeu         s11, s0, main_12_1_t #branch for loop 1
                  slt          a5, a6, a7
                  addi         s1, zero, 10 #init loop 0 counter
                  sub          t1, s7, ra
                  and          a3, a7, a3
                  sll          a4, t4, t6
                  andi         a2, a7, -2000
                  srai         a5, s1, 0
                  addi         tp, zero, 10 #init loop 0 limit
                  sltiu        t4, s7, 275
                  and          s2, s6, s4
main_10_0_t:      addi         zero, a3, 17
                  sra          s5, s5, gp
                  and          t2, s8, a1
                  addi         s1, s1, -9 #update loop 0 counter
                  addi         a4, a1, 1526
                  srl          gp, a6, t2
                  xor          sp, t2, tp
                  sltiu        ra, a3, -1851
                  bgeu         s1, tp, main_10_0_t #branch for loop 0
                  srai         s9, a4, 25
                  addi         tp, zero, -6 #init loop 1 counter
                  slt          t4, a2, a7
                  ori          s7, s9, 926
                  addi         s4, zero, 11 #init loop 1 limit
                  and          s6, t5, s0
main_15_1_t:      addi         s3, s10, -724
                  addi         tp, tp, 2 #update loop 1 counter
                  ori          s3, t4, -910
                  addi         s0, zero, 9 #init loop 0 counter
                  addi         a4, zero, 8 #init loop 0 limit
                  sll          zero, a0, ra
main_15_0_t:      nop
                  sra          a5, a2, s9
                  addi         s0, s0, -5 #update loop 0 counter
                  bgeu         s0, a4, main_15_0_t #branch for loop 0
                  slli         s8, s10, 19
                  xor          sp, t5, s9
                  or           t0, t4, s4
                  blt          tp, s4, main_15_1_t #branch for loop 1
                  sltu         t0, ra, gp
                  addi         s8, zero, 0 #init loop 1 counter
                  slti         t2, s7, -1273
                  slli         zero, a6, 31
                  addi         s10, zero, -4 #init loop 1 limit
main_13_1_t:      xori         t5, ra, -340
                  sltu         a2, a0, s2
                  xor          s6, a1, a4
                  addi         s8, s8, -3 #update loop 1 counter
                  srli         t1, s11, 3
                  addi         gp, zero, 8 #init loop 0 counter
                  srli         a5, zero, 3
                  addi         sp, zero, 11 #init loop 0 limit
main_13_0_t:      slti         a2, t2, 979
                  addi         gp, gp, 1 #update loop 0 counter
                  slt          t0, s2, a4
                  blt          gp, sp, main_13_0_t #branch for loop 0
                  slt          t5, a6, a0
                  bge          s8, s10, main_13_1_t #branch for loop 1
                  and          t5, a7, a3
                  addi         a1, zero, -2 #init loop 0 counter
                  and          t2, sp, a5
                  addi         t6, zero, 20 #init loop 0 limit
                  andi         s8, a2, -711
main_1_0_t:       add          ra, t5, gp
                  auipc        s9, 302097
                  srai         a5, s5, 24
                  slt          sp, a6, zero
                  addi         a1, a1, 2 #update loop 0 counter
                  slli         zero, s11, 2
                  sltiu        a3, a3, -1479
                  andi         s9, s2, 837
                  addi         zero, t0, -812
                  blt          a1, t6, main_1_0_t #branch for loop 0
                  slti         sp, s8, -172
                  addi         t5, zero, 8 #init loop 0 counter
                  slt          s6, s9, a4
                  add          a2, s6, t3
                  slli         s3, s1, 7
                  slt          a0, sp, s5
                  slti         ra, gp, 1824
                  addi         t1, zero, 7 #init loop 0 limit
                  add          a2, s4, s9
main_8_0_t:       ori          tp, t4, 23
                  slt          sp, t0, s10
                  srai         a1, tp, 14
                  sll          s9, s6, sp
                  addi         t5, t5, -6 #update loop 0 counter
                  sub          sp, tp, a3
                  srai         a5, s0, 23
                  slti         s8, zero, 1355
                  sltu         a3, t5, a5
                  slli         a3, sp, 7
                  sll          gp, s6, t6
                  slti         a4, sp, 95
                  sub          s9, t3, zero
                  bgeu         t5, t1, main_8_0_t #branch for loop 0
                  and          s10, t6, a7
                  addi         s6, zero, 8 #init loop 1 counter
                  addi         tp, zero, 8 #init loop 1 limit
                  slt          s7, t3, t0
                  sltu         s9, gp, a2
                  sltu         t6, sp, s6
main_3_1_t:       lui          gp, 528537
                  addi         s6, s6, -6 #update loop 1 counter
                  sll          s11, t6, tp
                  addi         a4, zero, 0 #init loop 0 counter
                  addi         a2, zero, 14 #init loop 0 limit
main_3_0_t:       auipc        s10, 163727
                  sra          s9, s7, a7
                  addi         a4, a4, 7 #update loop 0 counter
                  beq          a4, a2, main_3_0_t #branch for loop 0
                  bgeu         s6, tp, main_3_1_t #branch for loop 1
                  srl          a0, ra, gp
                  addi         s0, zero, 9 #init loop 0 counter
                  addi         a4, zero, 9 #init loop 0 limit
main_9_0_t:       sub          ra, s3, a1
                  addi         s0, s0, -8 #update loop 0 counter
                  lui          a0, 325524
                  or           t0, s1, a6
                  slli         s5, s5, 13
                  bgeu         s0, a4, main_9_0_t #branch for loop 0
                  or           t5, s4, s8
                  addi         tp, zero, -1 #init loop 0 counter
                  slli         zero, s6, 5
                  addi         s1, zero, 11 #init loop 0 limit
                  nop
main_14_0_t:      lui          t0, 715995
                  slt          zero, ra, s4
                  addi         tp, tp, 3 #update loop 0 counter
                  nop
                  blt          tp, s1, main_14_0_t #branch for loop 0
                  andi         s10, a3, 405
                  add          tp, a4, s7
                  bgeu         t0, t1, 19f
                  add          t4, gp, t5
                  sra          tp, a7, zero
                  nop
                  bltu         t4, s4, 23f
                  slt          zero, t0, t6
                  xori         gp, a5, -1282
                  sltiu        t1, t3, 795
                  sltiu        s3, s11, -568
                  sll          s1, t6, tp
                  slt          s2, s0, gp
                  sltiu        s8, t6, 800
                  lui          t4, 596646
                  srli         t4, ra, 18
                  srl          t6, a0, a1
                  beq          tp, a6, 20f
                  bge          s8, zero, 27f
                  srai         ra, a0, 16
19:               slt          gp, a5, ra
20:               sra          t1, t4, t6
                  slt          s6, ra, t5
                  bne          a7, t3, 42f
23:               xor          t2, s8, s7
                  slt          a2, a3, a3
                  slti         s0, s2, -1585
                  and          ra, s5, a7
27:               bne          s6, ra, 34f
                  sltu         t4, s11, s4
                  xori         ra, a2, -954
                  nop
                  bge          s9, s11, 47f
                  xori         s11, s7, -248
                  bgeu         a5, a1, 51f
34:               blt          s9, t4, 51f
                  xor          s5, ra, s11
                  blt          a1, a3, 52f
                  andi         a5, t4, 1826
                  slti         a5, s11, 1714
                  add          gp, gp, t4
                  or           ra, gp, s10
                  sltiu        s7, s7, 545
42:               srl          a0, s11, t3
                  xori         t0, t3, 54
                  blt          s10, sp, 55f
                  nop
                  slt          t2, s2, a7
47:               sll          a1, t1, t6
                  bgeu         a6, s3, 63f
                  or           a0, t2, s10
                  or           a1, a2, a7
51:               xori         t5, t5, 415
52:               sll          s2, t2, t2
                  bgeu         a4, s9, 60f
                  addi         a4, a1, -282
55:               andi         a4, a0, -1182
                  bgeu         a4, t0, 74f
                  sub          t1, s0, ra
                  slli         gp, s5, 1
                  addi         s2, s0, 1222
                  la           s7, sub_3
                  addi         s7, s7, -73
                  addi         t5, s9, 466
                  slli         t5, s0, 25
                  sll          s5, a4, ra
                  sub          a1, a1, a6
                  auipc        s10, 911375
main_j2:          jalr         t1, s7, 73 #jump main -> sub_3
60:               srli         a4, t1, 22
                  sltiu        t2, s11, 1704
                  sltu         a1, t2, t3
63:               blt          t5, a5, 69f
                  slli         a1, a5, 22
                  sltu         t2, s10, t0
                  slti         s8, ra, -1186
                  srl          t4, s9, sp
                  bltu         s9, a1, 70f
69:               ori          t2, s4, -1908
70:               sra          s10, t1, a2
                  xor          gp, s3, zero
                  slli         a2, t6, 0
                  sll          s11, s4, t2
74:               slli         s9, tp, 12
                  bne          a5, s1, 91f
                  lui          s9, 749171
                  srli         a3, a5, 15
                  sub          t6, t1, a0
                  bgeu         sp, s5, 82f
                  srai         s3, a6, 22
                  ori          s2, ra, 739
82:               srli         s1, t5, 11
                  srai         a3, zero, 1
                  slli         s9, t0, 21
                  srl          ra, a2, gp
                  or           t0, s3, a0
                  sltiu        s9, gp, -1058
                  addi         s6, zero, 0 #init loop 0 counter
                  addi         s8, zero, 19 #init loop 0 limit
                  addi         a4, s5, 128
main_11_0_t:      sltu         t6, t3, a4
                  slli         s11, s8, 5
                  addi         t2, t4, 1951
                  addi         s6, s6, 10 #update loop 0 counter
                  slli         ra, sp, 24
                  slti         ra, t6, -1359
                  srli         t6, a0, 0
                  xori         s7, t6, 1234
                  sltiu        ra, a6, -1378
                  blt          s6, s8, main_11_0_t #branch for loop 0
                  xor          gp, s10, s2
                  xori         zero, s11, 450
                  or           a0, t2, s6
                  bltu         s11, s9, 101f
91:               or           s2, t1, a6
                  sll          a4, a7, a1
                  auipc        s2, 521667
                  auipc        t6, 80748
                  beq          s10, t6, 98f
                  add          tp, s11, t5
                  auipc        s2, 29636
98:               bltu         s11, s9, 105f
                  sltu         s8, a6, t5
                  nop
101:              lui          a3, 641162
                  bne          a3, t0, 103f
103:              slti         a3, s7, -1326
                  ori          sp, a6, -1081
105:              bltu         t4, s1, 121f
                  srl          s0, s1, t6
                  blt          s5, s8, 120f
                  xori         s9, ra, -450
                  xori         s1, s8, -47
                  bge          s11, s11, 119f
                  slt          a1, s4, t2
                  sra          a0, s10, s9
                  lui          s2, 980819
                  andi         t4, a1, -424
                  bltu         sp, s2, 119f
                  slti         s8, s4, -289
                  srli         zero, s2, 22
                  lui          s7, 1009364
119:              and          s7, a4, sp
120:              srli         a2, t3, 0
121:              auipc        s10, 438186
                  sltu         s6, s3, ra
                  srai         s1, a0, 31
                  slt          a5, s8, a6
                  lui          s6, 94789
                  srli         s3, s2, 26
                  srli         a3, sp, 21
                  addi         s3, a0, 112
                  and          s9, a1, a1
                  addi         gp, zero, 10 #init loop 1 counter
                  ori          t0, a3, -420
                  and          s1, a2, t5
                  and          t0, sp, s5
                  xor          s5, a5, a7
                  andi         t2, a7, 1650
                  addi         a0, zero, 18 #init loop 1 limit
main_0_1_t:       nop
                  sra          s4, s5, s3
                  slti         s9, gp, -1555
                  srli         t2, sp, 19
                  addi         gp, gp, 3 #update loop 1 counter
                  addi         s2, s0, 1509
                  addi         a5, zero, 6 #init loop 0 counter
                  slt          t5, tp, s3
                  lui          t4, 843427
                  addi         t1, zero, -6 #init loop 0 limit
                  xori         s5, s11, -1159
                  lui          s6, 866834
main_0_0_t:       ori          t5, t5, 1433
                  addi         a5, a5, -3 #update loop 0 counter
                  sra          t2, t5, t1
                  sra          t5, s8, s9
                  bne          a5, t1, main_0_0_t #branch for loop 0
                  sub          s7, ra, t6
                  blt          gp, a0, main_0_1_t #branch for loop 1
                  srai         s4, s5, 30
                  andi         tp, s9, 1007
                  sra          s9, a7, s6
                  nop
                  bgeu         s3, a4, 142f
                  xor          a2, t4, gp
                  add          a3, s1, a1
                  xor          a5, t3, sp
                  srli         tp, s10, 2
                  slt          a5, s11, tp
                  slt          s11, t4, s1
                  slli         a3, s11, 26
                  bgeu         a7, a5, 144f
142:              blt          s5, t0, 143f
143:              bltu         gp, s0, 146f
144:              ori          t2, a4, 1282
                  lui          t1, 419919
146:              slti         t1, s8, 1003
                  slli         s1, tp, 6
                  addi         s6, t4, -626
                  sra          s4, t5, s5
                  nop
                  bne          s8, t3, 169f
                  or           a5, s11, a2
                  sra          a4, tp, a6
                  slt          a1, tp, a3
                  sra          tp, t6, a0
                  bge          zero, t4, 172f
                  sltiu        s2, s7, -408
                  bge          t3, t5, 162f
                  srl          gp, sp, s7
                  xor          gp, t2, s2
                  blt          s8, t3, 177f
162:              slt          sp, t4, t3
                  blt          a7, s1, 179f
                  bge          a3, s0, 170f
                  sltu         s2, t4, a2
                  sra          sp, a2, t3
                  lui          t4, 909441
                  srli         a5, t5, 2
169:              xori         a5, a3, -1146
170:              srli         s0, t1, 8
                  srai         s1, s3, 23
172:              xor          s5, a2, a4
                  ori          s0, ra, -1792
                  xor          s3, gp, s11
                  sltiu        s9, t5, 1914
                  or           ra, gp, s0
177:              addi         t1, s2, -1513
                  xor          s11, t4, ra
179:              slt          s0, gp, a4
                  slli         s6, a4, 5
                  bltu         a3, s3, 190f
                  srai         t2, s8, 21
                  ori          s5, s3, 1297
                  srli         zero, s2, 16
                  slli         a5, a6, 29
                  sltiu        tp, a2, -1536
                  sll          a2, a0, zero
                  bltu         s6, s4, 191f
                  andi         a0, t5, -1580
190:              lui          s5, 890805
191:              sub          s4, t1, a5
                  bgeu         ra, t5, 207f
                  srli         s0, gp, 23
                  sub          zero, s9, s1
                  srli         s7, a6, 8
                  bltu         zero, zero, 197f
197:              xor          a1, t6, a2
                  sltiu        s7, s2, 1337
                  and          zero, a3, a0
                  auipc        a5, 89041
                  srli         s8, s7, 17
                  add          s7, a0, s5
                  add          a3, a6, a5
                  sltu         gp, s6, s1
                  sra          tp, s0, tp
                  slli         s2, ra, 1
207:              sub          t0, s6, gp
                  sltu         s11, a6, a0
                  xor          a3, t6, a7
                  slt          s6, ra, a0
                  or           s3, a0, s7
                  blt          s5, s0, 232f
                  xori         s8, t5, -575
                  and          tp, s9, t0
                  sltu         a0, t2, a0
                  xor          s3, a7, a4
                  addi         s8, zero, 7 #init loop 0 counter
                  nop
                  addi         a5, zero, 17 #init loop 0 limit
main_6_0_t:       and          t1, gp, a3
                  addi         s8, s8, 10 #update loop 0 counter
                  ori          t0, t1, 1548
                  ori          a2, a6, -1417
                  bne          s8, a5, main_6_0_t #branch for loop 0
                  srli         t2, a3, 6
                  and          a5, s8, t5
                  sub          sp, t4, s7
                  auipc        t6, 194719
                  bne          sp, s6, 221f
221:              srli         a2, s11, 15
                  and          t5, t4, t5
                  xori         gp, a5, -1111
                  beq          sp, t0, 240f
                  andi         sp, t4, -1822
                  bltu         s9, s8, 235f
                  srai         s11, a6, 15
                  auipc        t4, 584485
                  bge          s5, a6, 247f
                  nop
                  sltiu        s9, a3, 1983
                  sltu         s7, s11, a4
                  andi         s11, s8, 929
                  la           s0, sub_1
                  sltu         s5, a2, gp
                  xori         t2, ra, 15
                  addi         s0, s0, -168
                  slli         t4, s3, 0
main_j1:          jalr         t1, s0, 168 #jump main -> sub_1
                  ori          sp, t2, -941
                  sltiu        s11, s11, 303
232:              srli         gp, t4, 3
                  sub          s5, gp, s11
                  slli         s1, zero, 30
235:              andi         t2, a3, 787
                  sll          zero, t3, zero
                  ori          zero, s11, 1317
                  srl          a4, a5, zero
                  auipc        a2, 822317
240:              bgeu         a1, s8, 251f
                  add          t2, tp, s8
                  ori          a1, s5, -1856
                  srli         s3, ra, 24
                  slti         t6, s8, 1023
                  lui          t4, 100801
                  slt          ra, a1, s3
247:              nop
                  srli         s11, s11, 8
                  bge          s5, s10, 267f
                  add          a3, tp, s7
251:              bne          s6, s10, 254f
                  and          ra, a7, a3
                  beq          s8, s5, 257f
254:              beq          t6, s9, 261f
                  or           s11, a0, sp
                  nop
257:              or           s11, a0, t5
                  and          tp, zero, s10
                  sltiu        a3, t1, -585
                  sub          zero, s11, s0
261:              andi         tp, s2, 929
                  xori         a1, a0, -1622
                  srli         a4, ra, 6
                  slti         zero, s9, -872
                  and          ra, s6, gp
                  beq          t5, gp, 284f
267:              srai         s8, t0, 5
                  auipc        a1, 429448
                  and          s6, sp, a7
                  srai         t2, s11, 6
                  auipc        t5, 735955
                  add          a1, tp, s8
                  add          s0, a3, s5
                  beq          s2, a0, 277f
                  auipc        t1, 719608
                  sltiu        a2, t2, -818
277:              and          a1, a3, a1
                  sll          s0, a7, a6
                  and          s8, s10, t0
                  bgeu         t6, a5, 291f
                  ori          s0, t6, -43
                  srai         s9, t3, 18
                  beq          s11, a7, 293f
284:              bne          gp, a0, 286f
                  blt          ra, tp, 298f
286:              sll          s7, s4, t5
                  add          s10, s5, s8
                  and          s2, a4, s0
                  sll          t2, t4, s10
                  bge          tp, t5, 307f
291:              bgeu         sp, t6, 298f
                  and          s2, gp, a0
293:              sltiu        s0, t1, 1196
                  xori         s10, s4, 1258
                  srai         a3, t3, 19
                  bltu         s2, tp, 299f
                  bltu         a3, a3, 304f
298:              xori         s5, s5, 1650
299:              andi         t5, t3, 341
                  or           tp, a1, a6
                  beq          a0, ra, 304f
                  bge          s2, s8, 311f
                  addi         zero, a2, 1183
304:              or           a3, a5, zero
                  bne          a6, a1, 321f
                  ori          t4, t1, -366
307:              lui          a5, 522978
                  srl          tp, t1, a2
                  ori          s3, a3, -286
                  srai         s5, zero, 15
311:              auipc        sp, 521598
                  srli         s2, a6, 31
                  auipc        zero, 176680
                  add          s1, zero, a3
                  blt          ra, a6, 331f
                  slli         a1, a5, 11
                  sub          s4, a2, a1
                  srai         s10, t1, 17
                  srai         a1, gp, 13
                  xori         s6, t3, 1608
321:              bltu         s0, a5, 331f
                  bne          zero, a6, 340f
                  nop
                  sltiu        t1, a6, 1653
                  blt          t1, gp, 332f
                  andi         a0, a3, 309
                  slt          t2, ra, t1
                  srl          a0, gp, t1
                  nop
                  andi         s11, tp, -334
331:              blt          s9, a7, 337f
332:              auipc        s8, 887378
                  slli         sp, a7, 10
                  slti         a2, t1, 140
                  xor          sp, s1, a7
                  xori         s10, s9, -251
337:              sub          s11, t3, zero
                  srli         tp, zero, 19
                  andi         s2, zero, -1806
340:              bge          a3, a6, 353f
                  andi         s4, t3, -366
                  auipc        gp, 953827
                  andi         t5, a5, 1148
                  andi         t6, ra, -561
                  sll          a5, zero, s7
                  srl          a0, s5, t5
                  sll          s8, s10, gp
                  andi         s4, s6, 1444
                  slli         gp, s0, 11
                  slli         zero, s3, 31
                  srai         t1, s0, 30
                  slli         t1, s2, 27
353:              auipc        a2, 658885
                  blt          a4, s4, 372f
                  blt          sp, t4, 358f
                  blt          gp, gp, 359f
                  bgeu         s9, t3, 373f
358:              slt          a5, t3, zero
359:              slli         t5, s10, 4
                  srl          s7, a7, s3
                  srli         s0, t5, 30
                  slt          s9, ra, a7
                  xor          s8, ra, sp
                  or           s3, s8, tp
                  blt          s8, a3, 380f
                  sltu         s4, s1, gp
                  bge          s6, t0, 376f
                  srl          a4, s2, s7
                  blt          s9, t4, 370f
370:              sll          a3, zero, s4
                  nop
372:              slt          ra, t4, t4
373:              blt          s8, s10, 377f
                  sll          s4, s7, a3
                  bne          s4, zero, 379f
376:              srai         zero, t0, 20
377:              sltiu        a1, a7, 859
                  xor          a3, s1, s0
379:              xor          a2, a2, t5
380:              ori          a4, a1, -119
                  nop
                  nop
                  sll          t0, s1, t3
                  slt          s9, s1, a0
                  beq          a5, s11, 403f
                  ori          t0, ra, 383
                  xor          s4, gp, a3
                  bge          s7, s4, 395f
                  slti         t6, t6, 1066
                  bltu         t5, s11, 410f
                  bge          a4, gp, 402f
                  bgeu         a4, a5, 410f
                  bge          s4, a7, 394f
394:              ori          s10, s0, 535
395:              nop
                  add          a5, s2, t1
                  bne          t5, tp, 408f
                  ori          sp, s2, 1649
                  beq          s1, a1, 406f
                  srai         s1, t0, 26
                  slt          a0, s7, tp
402:              andi         s0, t4, 701
403:              beq          s0, s3, 405f
                  xori         s9, sp, -389
405:              slti         s3, a3, 1274
406:              or           t1, s7, sp
                  slti         sp, zero, -255
408:              beq          s3, a3, 425f
                  srl          s5, s7, s5
410:              auipc        sp, 357432
                  nop
                  bge          s1, s6, 428f
                  and          zero, s8, sp
                  srai         a2, s3, 27
                  slli         s4, t3, 8
                  srli         t2, gp, 4
                  sll          sp, s9, a3
                  ori          tp, s5, 882
                  xori         s3, s11, -35
                  addi         t4, t1, -120
                  xor          a5, a2, t0
                  srli         t6, a6, 8
                  lui          t5, 261464
                  xori         gp, s1, -1014
425:              nop
                  srl          s2, a2, s9
                  and          s1, t0, s11
428:              slti         t6, s11, 616
                  add          a0, gp, s7
                  xor          a5, a6, a0
                  sltu         ra, t4, s1
                  sltiu        t4, gp, 650
                  bge          s8, s9, 436f
                  sra          a3, s2, a1
                  srl          s4, a0, s11
436:              bge          s4, s8, 438f
                  and          t5, a1, t5
438:              sll          s4, s3, t3
                  sub          s8, s7, s11
                  slli         a1, s4, 13
                  beq          t3, s3, 459f
                  add          s11, s3, tp
                  lui          s1, 851463
                  srli         ra, sp, 10
                  addi         s2, s2, -523
                  bgeu         s7, gp, 464f
                  sltiu        s2, s3, -545
                  bne          a1, ra, 452f
                  slt          s0, s6, s5
                  srl          a5, t0, t6
                  ori          s8, a4, -1300
452:              sltiu        a0, tp, -1636
                  slt          ra, s11, s4
                  sll          a4, t5, s8
                  bne          t5, a4, 470f
                  slli         a4, s9, 20
                  nop
                  sltu         t6, a7, s0
459:              sll          a2, a2, t1
                  lui          zero, 689713
                  sltu         t0, s1, t3
                  srai         a1, s4, 14
                  sltu         s11, s10, zero
464:              bge          t2, t5, 481f
                  slt          s1, t5, a0
                  bgeu         gp, a4, 475f
                  blt          a5, t2, 473f
                  sltiu        t6, sp, 819
                  addi         a3, a1, 276
470:              bgeu         t6, t1, 481f
                  srl          s7, s0, t5
                  sra          t1, s10, s11
473:              sub          gp, s8, s4
                  bne          tp, s3, 475f
475:              srli         a2, a6, 26
                  sra          s2, a3, s6
                  and          a4, t6, a0
                  blt          sp, zero, 494f
                  xori         s6, gp, -1281
                  bne          s8, s0, 483f
481:              sll          t6, t0, s4
                  bge          s0, t2, 485f
483:              srli         s0, t6, 18
                  blt          s11, s7, 493f
485:              andi         s9, tp, 129
                  sub          sp, a5, a3
                  sll          a4, s7, a7
                  srai         t2, t6, 11
                  sltu         s10, a1, t2
                  sra          t5, s3, a2
                  nop
                  auipc        s0, 561545
493:              sltiu        zero, t2, 1409
494:              sltiu        a0, s3, -508
                  sltu         a0, s2, s4
                  sub          s1, s8, gp
                  nop
                  xor          a2, s3, s6
                  xor          s2, s6, zero
                  bne          t6, t2, 516f
                  or           sp, s9, t1
                  sltu         s11, s1, s10
                  nop
                  bge          s2, t0, 514f
                  lui          s0, 829209
                  xori         t0, s1, 1824
                  sub          sp, s3, zero
                  and          ra, s0, s0
                  bltu         t3, s2, 516f
                  srai         t4, s7, 15
                  andi         s8, s6, 1250
                  auipc        a5, 827153
                  bltu         s0, t4, 524f
514:              sltu         s1, gp, s11
                  nop
516:              slt          t2, t1, s5
                  srai         a2, zero, 18
                  bne          s6, t5, 538f
                  sltu         a2, t1, ra
                  bge          a5, t6, 538f
                  auipc        s10, 441774
                  slti         ra, t1, -1637
                  addi         ra, a3, -996
524:              srli         s3, t0, 29
                  sub          gp, t0, a3
                  beq          s6, s3, 530f
                  sub          zero, a0, a3
                  lui          t6, 913120
                  addi         a5, s0, 598
530:              auipc        s8, 384290
                  bgeu         t2, s6, 534f
                  srl          s0, t4, a3
                  xori         s7, a3, -111
534:              add          gp, a0, a4
                  or           t5, s2, s2
                  addi         s11, a0, -797
                  sll          s0, a2, s1
538:              xor          a0, s1, s7
                  slt          a5, t3, s11
                  sll          s8, t0, s9
                  sll          t5, t1, s5
                  bgeu         s8, t3, 549f
                  bge          s11, s0, 559f
                  bge          s10, t2, 545f
545:              xor          a1, s7, tp
                  add          s3, s7, a3
                  bgeu         a7, tp, 550f
                  xori         t5, s7, 350
549:              and          t1, a2, t0
550:              xor          s11, s11, sp
                  or           s2, s5, s8
                  bgeu         s6, s10, 568f
                  bge          s0, ra, 560f
                  bne          t6, t1, 567f
                  nop
                  auipc        t6, 451128
                  xor          a0, a5, t0
                  sub          a4, a6, s3
559:              auipc        t6, 842402
560:              bltu         s0, t0, 578f
                  bne          t4, zero, 579f
                  xori         t0, sp, -1507
                  and          t6, s8, gp
                  bge          zero, t0, 574f
                  nop
                  slli         t4, s1, 22
567:              auipc        t2, 326478
568:              bgeu         s7, t2, 572f
                  slt          a4, s1, t3
                  addi         tp, s11, 1956
                  srli         a0, s0, 8
572:              andi         a1, s7, 1986
                  srli         s2, tp, 16
574:              slli         s6, s2, 29
                  bgeu         s7, t2, 584f
                  sub          a5, zero, t2
                  srli         s9, gp, 17
578:              xor          ra, s3, a4
579:              srai         a3, s11, 25
                  blt          s4, a3, 582f
                  add          a2, s6, s6
582:              slt          s10, s2, gp
                  bltu         s0, tp, 584f
584:              srli         s7, t5, 22
                  xor          s1, s5, s1
                  xori         a5, s6, 1589
                  srli         s9, a0, 31
                  xori         s0, gp, -166
                  auipc        tp, 837199
                  ori          s4, a6, -1867
                  bge          tp, t5, 606f
                  sll          s2, s10, s4
                  beq          t0, s0, 594f
594:              lui          t5, 383168
                  slli         t5, s5, 30
                  srli         s2, s8, 11
                  addi         ra, zero, 3 #init loop 0 counter
                  ori          s9, s4, 1602
                  slti         t1, a0, -838
                  auipc        zero, 396518
                  addi         s5, zero, 4 #init loop 0 limit
                  andi         t5, a3, 2040
main_5_0_t:       sltu         t4, s3, s2
                  xori         tp, t5, 1778
                  lui          s1, 778901
                  addi         ra, ra, 9 #update loop 0 counter
                  auipc        t2, 154951
                  bltu         ra, s5, main_5_0_t #branch for loop 0
                  slt          a5, a3, s6
                  bltu         gp, a7, 615f
                  ori          a3, s8, 222
                  nop
                  srli         s11, a0, 30
                  andi         t4, a6, -1924
                  sltu         zero, t0, t2
                  auipc        s3, 60274
                  or           t1, a5, s8
                  bgeu         a4, ra, 612f
606:              slli         s9, sp, 4
                  slli         t2, gp, 16
                  add          t5, a2, ra
                  srai         ra, a4, 23
                  beq          a0, a7, 621f
                  and          s1, t3, t5
612:              add          t0, s4, s0
                  or           ra, t5, t2
                  sra          a0, t5, a2
615:              slt          ra, gp, t1
                  or           s5, a0, gp
                  xor          s10, a1, t4
                  ori          gp, a5, -1735
                  ori          ra, t0, -1756
                  bge          s4, s10, 624f
621:              srli         a5, s1, 22
                  srai         s6, t4, 3
                  nop
624:              add          s7, t1, s11
                  sltu         a5, s5, s11
                  or           t5, a6, s9
                  slt          s5, s7, t5
                  bge          s3, t2, 639f
                  srai         s11, t3, 22
                  blt          a1, t3, 643f
                  ori          s6, s11, 1723
                  sltiu        t6, t6, 1845
                  srl          s3, s2, tp
                  sll          zero, sp, sp
                  la           s2, sub_1
                  or           ra, a0, t4
                  addi         s2, s2, -658
                  nop
                  andi         s7, t4, 1775
                  bltu         zero, zero, main_j3 #branch to jump instr
                  xor          a5, t5, t4
                  xor          t0, s5, t5
                  srl          gp, t2, a5
main_j3:          jalr         t1, s2, 659 #jump main -> sub_1
                  bgeu         s8, a1, 636f
                  ori          s11, s9, -1849
                  slli         a1, a2, 6
636:              sltiu        tp, a4, 595
                  sll          s5, s3, a1
                  lui          s2, 1021284
639:              slt          t0, a7, s9
                  beq          s9, t3, 647f
                  blt          zero, s5, 659f
                  slli         a1, tp, 17
643:              bltu         a2, ra, 646f
                  bltu         t6, s7, 653f
                  slti         s9, s4, 1366
646:              andi         sp, s1, 38
647:              sub          t0, s9, sp
                  andi         s6, s3, -1138
                  xor          a4, s6, t2
                  sra          t6, zero, s1
                  slti         t6, t2, -1741
                  add          t5, t0, s7
653:              xori         t4, s4, -1858
                  or           tp, t3, gp
                  sltu         s7, t1, a7
                  lui          a3, 721765
                  nop
                  lui          a2, 127685
659:              bltu         ra, s7, 677f
                  addi         ra, a4, -532
                  srl          s7, a7, a4
                  srli         a4, a5, 5
                  addi         s2, a0, 1721
                  srl          s7, a4, tp
                  srai         t0, s6, 15
                  nop
                  sra          s11, a4, s10
                  ori          gp, s0, -1803
                  beq          a4, t6, 686f
                  sub          t4, zero, s11
                  bge          s0, t6, 678f
                  srl          t1, tp, t0
                  add          s1, a4, s3
                  sltiu        ra, s11, 1684
                  bgeu         t6, sp, 691f
                  slt          zero, t1, a4
677:              srl          s4, ra, ra
678:              andi         a1, s1, -219
                  or           t1, a1, tp
                  bltu         s3, s1, 686f
                  bge          s1, t6, 684f
                  srl          s5, a1, a4
                  xori         t4, s3, -910
684:              lui          s0, 963841
                  srli         gp, s11, 31
686:              sltu         s0, t1, s11
                  srl          t2, s10, t0
                  srl          a0, t1, tp
                  sll          s11, t6, t3
                  slt          t2, s8, t2
691:              slti         t4, t6, -2013
                  bltu         a0, t2, 695f
                  or           zero, ra, t5
                  addi         t4, zero, -670
695:              srl          t4, a7, s9
                  sra          a0, t1, a4
                  xor          ra, s11, s11
                  sra          s11, s3, t6
                  blt          s7, s3, 719f
                  beq          s9, a1, 716f
                  srl          t5, t1, a2
                  blt          s9, t4, 718f
                  addi         t1, t1, -1478
                  srl          a5, a7, a0
                  auipc        a3, 841287
                  nop
                  and          gp, a4, a5
                  slt          ra, a3, ra
                  slt          s6, a0, s4
                  or           a2, t2, ra
                  sra          s3, s2, gp
                  and          s2, a6, a3
                  ori          a0, ra, -1373
                  sltiu        tp, s5, -1660
                  slt          t4, s9, s9
716:              lui          s6, 138624
                  xori         t4, s7, -1338
718:              slti         tp, a1, -438
719:              srl          s10, t2, t6
                  blt          a1, s10, 736f
                  sra          s1, t2, a0
                  addi         sp, s3, 805
                  bne          sp, s10, 732f
                  sll          t6, s3, t1
                  srli         zero, s4, 13
                  add          tp, a1, s1
                  or           s3, t6, s0
                  xor          t0, ra, a2
                  xori         gp, t4, -640
                  slt          a3, s9, a3
                  bne          t0, a3, 747f
732:              srl          a5, s6, s4
                  sltu         s3, tp, s5
                  ori          ra, s11, -273
                  bgeu         s10, s7, 751f
736:              sltu         t4, s0, gp
                  srai         gp, s10, 3
                  blt          t2, sp, 756f
                  sltiu        a5, s1, 61
                  sra          s0, s7, tp
                  srl          s7, a3, t5
                  bge          t5, t6, 759f
                  or           t1, a5, a7
                  sltu         s11, s4, s6
                  addi         a3, zero, -6 #init loop 1 counter
                  addi         t2, zero, -13 #init loop 1 limit
                  andi         tp, s11, 1682
                  srl          s8, s6, s10
main_4_1_t:       xori         t6, t0, 1922
                  addi         a3, a3, -9 #update loop 1 counter
                  ori          s10, t2, 982
                  auipc        t1, 189743
                  sll          s10, a1, tp
                  addi         t0, zero, 3 #init loop 0 counter
                  ori          s1, s2, -414
                  sub          a4, ra, s10
                  srai         t1, a5, 17
                  slti         t6, s0, -1064
                  andi         s2, a3, 393
                  xor          a4, s4, tp
                  addi         sp, zero, 20 #init loop 0 limit
                  sub          s6, s5, t3
                  srl          a1, s7, a3
                  sltiu        s2, sp, 148
main_4_0_t:       add          s8, sp, s9
                  lui          s1, 782413
                  ori          s5, s0, -334
                  nop
                  addi         t0, t0, 10 #update loop 0 counter
                  xor          t5, a4, s11
                  slt          t4, s4, a2
                  blt          t0, sp, main_4_0_t #branch for loop 0
                  sll          a0, t1, s10
                  srai         s1, zero, 23
                  srl          s7, ra, s11
                  sltiu        a4, t4, 1697
                  bge          a3, t2, main_4_1_t #branch for loop 1
                  addi         s1, zero, 1749
                  xor          s9, a7, t4
                  sltu         sp, gp, s9
747:              ori          a0, s3, -1948
                  sll          a2, s0, t4
                  slli         a2, t4, 9
                  sltu         a5, a5, t5
751:              xor          ra, t3, s1
                  srli         tp, a2, 17
                  sub          s9, a3, t2
                  lui          tp, 733321
                  ori          a1, t0, 326
756:              or           s0, a4, gp
                  add          t4, s4, ra
                  sltiu        s7, s9, 1623
759:              sub          s8, a6, sp
                  slti         s4, a7, 878
                  slli         ra, s5, 18
                  sltu         ra, a7, s0
                  slt          a5, a4, a5
                  bne          a4, a2, 767f
                  and          s9, s10, a4
                  andi         s10, s5, 494
767:              sub          a4, sp, s0
                  bltu         tp, s1, 775f
                  srl          s11, s1, t4
                  andi         gp, t4, -578
                  andi         t4, t2, 406
                  sra          s11, a6, gp
                  srli         s2, a0, 10
                  nop
775:              or           s5, ra, s9
                  and          s6, s2, s1
                  ori          s2, t2, 562
                  xori         s9, a2, 1289
                  slli         s3, s4, 30
                  bne          gp, zero, 781f
781:              sltu         s0, gp, a5
                  blt          ra, a1, 789f
                  xor          t6, s4, tp
                  slt          tp, tp, s9
                  lui          s3, 528141
                  srl          ra, s4, a2
                  add          s10, s7, sp
                  xor          s11, ra, a0
789:              nop
                  sub          a4, s10, a0
                  blt          s4, tp, 793f
                  bgeu         s4, tp, 796f
793:              sub          zero, s6, tp
                  slli         gp, s5, 1
                  srai         a3, t0, 30
796:              addi         sp, a0, 996
                  slt          a2, gp, s9
                  srli         ra, s7, 2
                  or           s6, a4, a5
                  sltu         a1, tp, t6
                  sll          s0, t6, s0
                  srli         tp, a0, 9
                  sra          s7, s3, a7
                  xori         a5, s3, -937
                  xori         t5, s6, 1206
                  srai         s5, a1, 6
                  blt          s0, s5, 810f
                  bge          a1, ra, 811f
                  lui          s7, 976782
810:              and          t6, a1, a4
811:              xori         tp, a1, 410
                  addi         t0, t5, -1611
                  lui          s2, 282418
                  andi         t6, zero, 1890
                  sra          a2, s8, s3
                  bne          s7, t5, 821f
                  addi         s3, t2, 1912
                  sub          tp, s9, zero
                  slti         t6, zero, 771
                  beq          t4, zero, 821f
821:              srl          t0, a7, a5
                  la x28, test_done
                  jalr x0, x28, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            and          s4, a6, s5
                  slt          s9, s1, a1
                  xor          zero, s4, s5
                  bne          a4, t4, sub_4_stack_p
                  sltiu        a2, tp, 215
sub_4_stack_p:    addi         a7, a7, -40
                  srl          t0, a6, s4
                  slti         s8, ra, 1515
                  sw           t1, 4(a7)
                  lui          a0, 988469
                  addi         t1, zero, 8 #init loop 0 counter
                  add          tp, zero, t3
                  srl          a3, s9, t5
                  srli         t0, sp, 1
                  sll          t0, t4, sp
                  nop
                  or           a5, s11, s0
                  addi         t5, zero, 14 #init loop 0 limit
                  lui          a4, 394921
sub_4_0_0_t:      nop
                  sub          a5, a0, a3
                  sltu         s11, a6, s3
                  srl          a2, t3, sp
                  addi         t1, t1, 2 #update loop 0 counter
                  srli         ra, a6, 26
                  xor          sp, gp, s0
                  slli         s8, ra, 14
                  xor          a4, s9, s8
                  sltu         s7, s0, s8
                  sltiu        tp, t2, -1439
                  beq          t1, t5, sub_4_0_0_t #branch for loop 0
                  sra          s7, gp, a6
                  addi         s7, zero, 4 #init loop 1 counter
                  auipc        t0, 613578
                  andi         s1, t4, -130
                  addi         ra, zero, 5 #init loop 1 limit
                  ori          s3, tp, 1630
sub_4_7_1_t:      slt          a0, s0, tp
                  slli         a0, a3, 0
                  sltu         s2, a2, s1
                  addi         s7, s7, 1 #update loop 1 counter
                  sll          s1, gp, a7
                  sub          s3, gp, a6
                  addi         s4, zero, 10 #init loop 0 counter
                  addi         t4, zero, 10 #init loop 0 limit
                  sra          a5, t4, s4
sub_4_7_0_t:      add          s8, s4, t5
                  sltiu        s9, s10, -865
                  addi         s4, s4, -9 #update loop 0 counter
                  addi         s1, a1, 26
                  bgeu         s4, t4, sub_4_7_0_t #branch for loop 0
                  blt          s7, ra, sub_4_7_1_t #branch for loop 1
                  sll          t0, s5, tp
                  addi         s6, zero, -7 #init loop 0 counter
                  sltu         tp, a2, s9
                  and          s11, s2, a1
                  or           gp, s11, t6
                  srli         t0, a2, 2
                  sub          tp, s5, s8
                  slti         a5, t4, 1557
                  slt          s0, a1, s8
                  andi         s11, t1, 1996
                  addi         t6, zero, -17 #init loop 0 limit
sub_4_8_0_t:      add          s5, s8, s2
                  lui          gp, 344538
                  slt          zero, s7, s3
                  addi         s6, s6, -8 #update loop 0 counter
                  lui          zero, 813675
                  andi         tp, a6, -260
                  srai         s7, s9, 21
                  bge          s6, t6, sub_4_8_0_t #branch for loop 0
                  nop
                  addi         a4, zero, 10 #init loop 0 counter
                  sub          s6, a1, t5
                  srl          s6, a4, s7
                  sltu         t0, t2, sp
                  addi         s3, zero, 10 #init loop 0 limit
                  srai         t5, s8, 21
sub_4_5_0_t:      lui          a3, 527400
                  addi         a4, a4, -7 #update loop 0 counter
                  slli         sp, tp, 25
                  and          s2, t4, sp
                  nop
                  sltiu        ra, tp, -527
                  sra          a3, t0, s10
                  addi         s9, a1, -1685
                  bgeu         a4, s3, sub_4_5_0_t #branch for loop 0
                  auipc        s10, 653905
                  addi         s7, zero, -7 #init loop 0 counter
                  ori          s0, a6, 1675
                  addi         a4, zero, 18 #init loop 0 limit
                  sra          gp, t3, s4
                  addi         ra, s0, -699
sub_4_2_0_t:      sltiu        sp, s8, -1220
                  addi         s7, s7, 2 #update loop 0 counter
                  srai         t6, t2, 23
                  addi         s2, s9, 1275
                  bltu         s7, a4, sub_4_2_0_t #branch for loop 0
                  slli         s1, t3, 15
                  addi         t5, zero, -5 #init loop 0 counter
                  addi         s0, zero, -17 #init loop 0 limit
                  ori          s6, gp, 438
                  auipc        t6, 144204
                  add          ra, t6, s7
sub_4_3_0_t:      sub          s9, t2, s11
                  srl          t2, t6, a7
                  addi         t5, t5, -6 #update loop 0 counter
                  andi         t4, t6, -1926
                  sll          zero, a2, ra
                  bne          t5, s0, sub_4_3_0_t #branch for loop 0
                  and          s8, t3, s6
                  addi         t6, zero, 7 #init loop 0 counter
                  add          s5, t2, s1
                  nop
                  lui          zero, 1036530
                  addi         s3, zero, -13 #init loop 0 limit
sub_4_4_0_t:      sub          a5, a5, s9
                  sra          a4, t1, a6
                  ori          s0, s5, 1666
                  addi         t6, t6, -4 #update loop 0 counter
                  auipc        s9, 40487
                  srl          s9, t3, s6
                  slli         s10, s2, 21
                  bge          t6, s3, sub_4_4_0_t #branch for loop 0
                  nop
                  addi         s7, zero, -1 #init loop 0 counter
                  addi         s3, zero, -14 #init loop 0 limit
                  sub          gp, s5, s3
                  or           a5, a1, zero
                  add          s0, t4, t5
                  sll          s2, s9, s9
                  slti         s6, t2, 33
sub_4_6_0_t:      slt          s0, s3, t1
                  ori          a4, s7, 312
                  addi         s7, s7, -1 #update loop 0 counter
                  sltiu        a3, s2, -1542
                  sll          ra, s4, t1
                  bge          s7, s3, sub_4_6_0_t #branch for loop 0
                  nop
                  bgeu         s2, a0, 10f
                  sltiu        tp, a6, -1673
                  srai         s2, s5, 1
                  xor          s6, zero, t3
                  and          tp, tp, t5
                  sltu         s2, sp, tp
                  srai         t0, t6, 22
                  sll          a4, a3, s6
                  ori          a1, sp, -1975
                  addi         sp, t6, -563
10:               nop
                  sltiu        t0, a0, 880
                  ori          a3, s11, -797
                  and          s9, s10, t5
                  and          s4, t3, s3
                  beq          s0, t2, 24f
                  beq          ra, a0, 26f
                  bge          s10, s5, 34f
                  slli         sp, s10, 24
                  srl          s11, a2, s1
                  and          sp, s1, ra
                  blt          s7, s2, 26f
                  addi         tp, t0, 1045
                  bgeu         a3, s3, 34f
24:               ori          tp, s5, -1436
                  bge          a1, s5, 41f
26:               srli         t0, a3, 0
                  sub          s5, s1, s5
                  or           t0, ra, a0
                  nop
                  ori          zero, t6, -1388
                  slti         s7, a0, -1862
                  srl          s6, s11, ra
                  slt          a2, gp, a5
34:               slt          zero, a0, s0
                  slli         a2, s2, 22
                  add          t2, s1, t6
                  sltu         a5, s6, s6
                  bltu         a3, s3, 53f
                  lui          s11, 729648
                  sltiu        s3, s3, -42
41:               add          a5, s5, s4
                  bne          t3, t5, 50f
                  xori         s9, tp, -707
                  beq          t0, zero, 62f
                  bge          a6, s0, 60f
                  lui          a3, 107757
                  bgeu         a4, a5, 63f
                  sll          t6, s5, sp
                  lui          s3, 67326
50:               bltu         a3, s5, 60f
                  and          s2, t6, s9
                  andi         gp, s3, 1473
53:               sll          s4, t5, s7
                  srai         t4, s11, 24
                  ori          sp, gp, 192
                  beq          s11, t4, 70f
                  add          t1, s2, t5
                  add          s9, a7, s9
                  srl          s2, t3, a5
60:               xori         t6, a7, 951
                  sub          a1, t2, ra
62:               srl          s11, s6, a5
63:               addi         s1, t2, 1539
                  lui          a1, 444499
                  slti         s0, ra, 433
                  srai         s11, t6, 12
                  srai         t0, a0, 5
                  srli         a3, a7, 18
                  andi         t6, s4, 910
70:               lui          a0, 307510
                  sltiu        s2, t6, 1868
                  lui          a3, 36135
                  bne          a4, t4, 82f
                  slli         t6, a5, 14
                  addi         t6, gp, -1243
                  srai         s8, a3, 14
                  blt          s7, t5, 95f
                  bgeu         s4, a6, 91f
                  ori          s5, s2, -924
                  slti         s5, a3, -906
                  slt          t4, tp, t1
82:               xor          s10, s7, s9
                  add          a4, a2, ra
                  blt          s0, t1, 102f
                  bge          a0, a6, 97f
                  andi         a1, tp, 354
                  sltu         s5, a2, t2
                  lui          t6, 993480
                  sltiu        t2, s9, -868
                  srai         s1, t2, 12
91:               beq          zero, ra, 108f
                  addi         t2, t6, -1739
                  lui          a3, 342162
                  bltu         s8, t4, 99f
95:               sltiu        a2, s5, -462
                  srli         a5, s3, 27
97:               xor          t6, s8, a0
                  sltu         t5, s1, a7
99:               sra          s0, s4, s11
                  srli         s8, s7, 22
                  auipc        s11, 879361
102:              srai         s7, a0, 8
                  sltu         sp, a3, t1
                  blt          sp, t0, 109f
                  slt          a1, a5, s8
                  slt          a5, s3, t1
                  ori          t4, t3, -1934
108:              or           a5, s2, s10
109:              sll          t0, s1, a0
                  or           s7, s2, s9
                  sltu         s4, t4, t2
                  blt          t3, a7, 130f
                  nop
                  srl          zero, a0, a5
                  slt          t2, s4, s6
                  srl          gp, t0, s9
                  bne          a6, a5, 134f
                  sra          zero, s2, s7
                  sra          s4, s11, a6
                  sltiu        s8, a4, 729
                  bgeu         zero, tp, 134f
                  nop
                  bge          a2, s4, 142f
                  bge          s4, sp, 130f
                  sll          t1, a2, sp
                  slti         zero, s5, 1789
                  sltu         s0, s3, s4
                  srai         s8, a2, 17
                  blt          s3, tp, 134f
130:              add          a0, s11, s7
                  sub          s3, s5, tp
                  beq          t0, zero, 149f
                  lui          s4, 287077
134:              srl          a1, t4, t4
                  lui          ra, 1002157
                  bgeu         zero, ra, 153f
                  bge          a2, s1, 152f
                  sub          a5, a0, t3
                  addi         s9, tp, -1237
                  beq          zero, s9, 145f
                  auipc        a5, 48048
142:              slli         t1, s3, 4
                  slti         gp, t3, -779
                  sll          t5, s11, a5
145:              bge          t1, t1, 155f
                  sll          t2, a5, s0
                  bgeu         tp, a1, 164f
                  bgeu         s6, s2, 164f
149:              sra          zero, sp, s2
                  xori         s7, zero, -1339
                  srai         s5, s9, 22
152:              xor          s9, s8, s8
153:              srli         tp, s5, 31
                  sltu         gp, s11, s2
155:              srl          s1, a3, s6
                  slti         t1, s11, 539
                  slli         s5, a4, 12
                  bge          a5, s4, 166f
                  beq          t1, s1, 170f
                  sra          s3, s3, a0
                  sra          a0, s9, t2
                  sltu         t6, s2, t1
                  sltu         t2, a3, t6
164:              sltiu        s8, a7, 1122
                  and          s1, s2, s6
166:              bge          s8, t6, 179f
                  blt          s4, s9, 184f
                  bltu         s11, a2, 185f
                  xor          a3, s5, a7
170:              srai         a0, s10, 2
                  slli         s7, t6, 28
                  and          t2, a6, t0
                  add          sp, s4, ra
                  sub          t1, s9, s9
                  lui          a4, 893224
                  slli         t6, a1, 4
                  add          s4, s2, s8
                  andi         a3, s10, 2002
179:              auipc        s2, 631597
                  beq          gp, s0, 195f
                  and          s10, a7, t4
                  srl          s0, t3, a3
                  bltu         s1, s5, 201f
184:              beq          s11, ra, 190f
185:              bge          tp, a1, 190f
                  sltiu        t1, s5, 901
                  bltu         s4, a4, 199f
                  add          t4, ra, zero
                  sra          gp, s5, s11
190:              auipc        s7, 665941
                  beq          t4, t1, 209f
                  bltu         gp, s3, 201f
                  sltu         a3, t5, a4
                  sll          t5, a4, s0
195:              sra          tp, a0, s4
                  slt          a2, a3, gp
                  bgeu         a5, sp, 202f
                  nop
199:              slti         a5, t5, -615
                  auipc        a1, 110407
201:              beq          s2, s3, 210f
202:              bltu         s9, t3, 215f
                  lui          s5, 825923
                  bge          a5, s4, 221f
                  bne          s2, s4, 221f
                  sll          zero, t1, a4
                  bge          a7, t2, 217f
                  bge          s6, a3, 227f
209:              slti         t4, t2, -1958
210:              bne          s5, s3, 220f
                  bne          a6, a4, 229f
                  srli         tp, s7, 15
                  andi         s6, s7, 440
                  sra          t1, a7, gp
215:              lui          t2, 43006
                  bne          a1, s9, 234f
217:              or           s11, s9, s3
                  or           s11, t2, a2
                  beq          s6, s6, 236f
220:              blt          a1, t1, 225f
221:              add          t2, s10, a5
                  sub          ra, sp, t2
                  bne          a4, a6, 237f
                  bge          a2, s1, 240f
225:              ori          s0, t4, 1334
                  slti         s11, a1, -152
227:              addi         zero, s11, 319
                  or           a4, s0, s7
229:              ori          a5, t3, 1831
                  sltu         tp, s9, s2
                  slt          s11, s11, a3
                  srli         a3, s9, 3
                  sltiu        s3, sp, -437
234:              and          t0, t4, a4
                  addi         a0, s2, 305
236:              blt          tp, s9, 254f
237:              add          t2, s10, zero
                  sll          t0, t1, ra
                  xori         a2, t5, 889
240:              srl          s9, a5, s10
                  sltu         a2, a4, s6
                  slti         s8, s1, -968
                  bne          t5, s4, 248f
                  slli         t5, a1, 31
                  lui          zero, 226667
                  srai         s10, gp, 24
                  and          t0, s7, ra
248:              blt          s11, sp, 267f
                  sltiu        s8, zero, 1179
                  add          a2, a0, s2
                  srai         a5, s3, 0
                  ori          t6, s9, 1
                  bgeu         ra, t4, 268f
254:              blt          s11, gp, 270f
                  srl          s11, s11, s0
                  and          gp, s11, a5
                  andi         t1, t1, -1011
                  blt          s4, s2, 271f
                  sub          t5, t3, tp
                  sll          t2, s6, t4
                  bne          a2, t2, 271f
                  addi         a5, a2, -1267
                  bltu         a6, zero, 281f
                  xori         a3, s1, -387
                  sll          a4, t2, a4
                  addi         s8, s6, 185
267:              sltiu        s10, tp, -61
268:              bge          a6, s7, 285f
                  bne          s9, t5, 274f
270:              srli         s4, s9, 27
271:              xor          s5, s9, t1
                  and          t6, s7, t0
                  bgeu         s10, s8, 282f
274:              sltu         a3, s6, t4
                  srl          s0, t4, ra
                  srai         a2, s7, 30
                  or           a5, a4, a7
                  blt          s1, a6, 295f
                  xori         t2, a2, 1933
                  addi         s1, gp, -1638
281:              bgeu         a6, s1, 298f
282:              slli         t5, s3, 17
                  lui          t1, 9660
                  bne          t6, a2, 294f
285:              srli         s11, t0, 25
                  bltu         t3, a1, 296f
                  or           s5, s0, t1
                  bltu         s0, s8, 300f
                  addi         s1, s2, -1198
                  addi         s11, a5, 1057
                  xori         ra, a1, 743
                  srli         a2, a4, 15
                  bgeu         a3, a6, 311f
294:              ori          a5, t4, -1402
295:              slt          a4, t4, s11
296:              ori          s8, s0, 1351
                  lui          s6, 643381
298:              sub          t1, zero, t6
                  bge          tp, s11, 310f
300:              sltiu        t1, s9, 1389
                  bgeu         a3, ra, 307f
                  addi         s9, s8, -793
                  add          s6, s4, t6
                  bne          t2, s1, 317f
                  bge          gp, sp, 322f
                  srai         t1, sp, 21
307:              xor          a0, t5, a5
                  sra          a0, t2, gp
                  srl          s1, a2, s6
310:              srai         sp, sp, 22
311:              xor          a3, t0, s9
                  slti         tp, a0, -553
                  bne          s10, tp, 330f
                  sll          a1, a5, s3
                  add          s6, t0, s0
                  add          a0, t4, s0
317:              bge          t5, t5, 331f
                  bge          t2, zero, 326f
                  add          s11, s6, a0
                  sll          ra, a0, t2
                  beq          a0, zero, 326f
322:              bne          gp, sp, 337f
                  sub          s4, s6, zero
                  bgeu         a6, gp, 333f
                  sltiu        s11, t2, -1135
326:              blt          a2, a7, 344f
                  auipc        ra, 992167
                  sll          tp, tp, t3
                  addi         s0, t3, 535
330:              lui          s5, 524035
331:              sra          a2, t4, s11
                  sll          s7, a7, s11
333:              addi         a0, t2, -1346
                  srai         s4, s7, 10
                  nop
                  bne          s0, a3, 341f
337:              nop
                  beq          a2, gp, 343f
                  andi         s11, t6, -1092
                  bgeu         s1, t4, 357f
341:              auipc        t2, 663525
                  beq          t3, s4, 347f
343:              bgeu         a3, s9, 361f
344:              add          a3, zero, a3
                  xor          s1, s6, gp
                  andi         tp, s2, -1983
                  addi         s9, zero, -6 #init loop 1 counter
                  sra          a3, s3, s1
                  addi         s11, zero, 6 #init loop 1 limit
                  sra          s0, s7, s3
sub_4_1_1_t:      addi         sp, a1, -678
                  addi         s9, s9, 6 #update loop 1 counter
                  addi         t1, zero, 5 #init loop 0 counter
                  addi         s5, zero, 4 #init loop 0 limit
sub_4_1_0_t:      sltiu        a3, s1, 1158
                  srli         s4, s7, 30
                  addi         t1, t1, -2 #update loop 0 counter
                  sltu         a5, s7, s5
                  bgeu         t1, s5, sub_4_1_0_t #branch for loop 0
                  blt          s9, s11, sub_4_1_1_t #branch for loop 1
                  nop
347:              srli         s10, s11, 3
                  add          s5, sp, s3
                  slt          s1, a2, a5
                  nop
                  andi         s8, s3, 10
                  sltu         s0, t3, s6
                  blt          a5, s8, 363f
                  sll          a3, t5, s0
                  lui          s2, 165809
                  nop
357:              add          s11, gp, a0
                  srl          s9, s10, a0
                  slli         a3, a0, 9
                  and          a4, a5, s9
361:              add          t0, s5, s9
                  slli         gp, s7, 3
363:              xori         a0, a2, -1919
                  bgeu         t4, t3, 376f
                  sltu         t4, s11, tp
                  blt          s8, a5, 385f
                  slt          ra, t5, s1
                  slti         s7, a0, -186
                  and          t6, s8, a0
                  auipc        a2, 6053
                  slti         s5, s6, -398
                  sub          s5, a7, a1
                  slti         s8, t2, -1141
                  nop
                  srai         ra, t0, 5
376:              xor          zero, a0, s4
                  beq          s10, s3, 390f
                  srli         t2, ra, 24
                  nop
                  and          t5, tp, s1
                  sub          ra, t6, t0
                  slti         t5, gp, -1089
                  slti         ra, s7, -1220
                  xori         t6, s5, -796
385:              xori         a3, t3, -530
                  srli         t0, s2, 27
                  and          t5, t5, t2
                  srli         s8, s10, 1
                  addi         a1, s11, -1415
390:              sub          s4, a7, a0
                  slt          a1, a1, a5
                  bltu         tp, a6, 398f
                  addi         s5, t6, 1133
                  or           s6, t6, a3
                  slt          s10, a2, sp
                  andi         t6, s3, 1409
                  sub          s9, s10, s8
398:              nop
                  slt          a3, a4, t1
                  xor          s1, ra, s5
                  bgeu         a7, s7, 418f
                  blt          a5, s5, 419f
                  blt          s0, a3, 421f
                  srli         sp, zero, 0
                  auipc        a4, 176532
                  bge          s2, ra, 411f
                  srai         a5, s5, 27
                  srl          gp, a7, a1
                  beq          s3, t6, 427f
                  xori         s3, t2, -1686
411:              nop
                  bgeu         s3, s5, 422f
                  sll          s11, t6, s8
                  srli         s7, a0, 25
                  xor          sp, s11, t5
                  auipc        s2, 97259
                  srai         s0, tp, 25
418:              sra          s1, s2, s1
419:              xor          s10, zero, tp
                  addi         s6, t2, -1572
421:              and          a2, a7, s10
422:              auipc        t4, 830477
                  andi         a3, s4, -1227
                  nop
                  blt          t0, t2, 441f
                  slti         tp, t2, 1498
427:              srai         t4, a4, 19
                  nop
                  lui          t4, 71372
                  ori          sp, a7, 64
                  srl          s0, s10, t2
                  andi         t0, s5, 1107
                  slti         s8, s6, 739
                  srl          t1, a1, s10
                  andi         a5, t2, 1446
                  lui          t0, 119901
                  xor          t0, a3, a4
                  xori         s3, a6, 834
                  sltu         t0, s8, a5
                  bge          s0, ra, 455f
441:              andi         s4, s0, 605
                  sra          s5, sp, s5
                  and          s2, t5, a3
                  ori          gp, s2, -423
                  sra          s5, ra, t1
                  srli         sp, t1, 10
                  srl          t6, a4, s7
                  slt          tp, a2, s1
                  slti         s6, s1, -675
                  add          t0, ra, t0
                  srli         t4, s2, 27
                  sltu         t1, s2, s9
                  slt          s3, s11, s9
                  sltiu        s11, t3, -1757
455:              sub          a3, a3, s7
                  sll          s5, a6, t0
                  xor          s10, s11, ra
                  sra          s8, s3, t4
                  sltiu        a1, t5, -1637
                  bge          s2, t5, 473f
                  srl          t2, a1, s9
                  andi         s4, s7, 746
                  beq          s7, s0, 477f
                  bgeu         a2, a3, 480f
                  addi         t4, s9, -1921
                  srli         s2, t5, 6
                  beq          s1, s5, 484f
                  bge          t3, s2, 477f
                  sltu         gp, a7, t6
                  sll          a2, s0, s2
                  add          ra, t2, t1
                  sltiu        s5, s5, 2017
473:              lui          t0, 395021
                  srl          a4, t5, a6
                  xor          s2, t4, a3
                  srai         sp, a1, 11
477:              slt          a4, t4, t2
                  bgeu         t2, a2, 486f
                  and          a4, ra, a0
480:              bge          t6, s5, 486f
                  xor          ra, t4, s8
                  bgeu         sp, s8, 486f
                  and          a3, zero, a7
484:              xori         s0, s5, -474
                  or           t5, a2, a2
486:              sltu         s9, s8, t5
                  sll          sp, s7, zero
                  ori          ra, a4, 553
                  sra          zero, a3, s9
                  lw           t1, 4(a7)
                  addi         a7, a7, 40
                  slt          a3, s6, s5
                  sra          a3, zero, a2
                  slt          s10, s11, s7
                  srl          gp, t6, a1
                  srli         sp, s7, 5
                  nop
652:              addi x30, x6, 0
652:              jalr x30, x30, 0
sub_1:            blt          t3, a6, sub_1_stack_p
                  sra          a5, a4, s2
sub_1_stack_p:    addi         a7, a7, -20
                  or           a0, s8, s9
                  sw           t1, 4(a7)
                  add          s1, t2, t1
                  and          gp, s2, tp
                  sll          a4, gp, t1
                  srai         t4, s2, 20
                  addi         s9, zero, -5 #init loop 0 counter
                  addi         s4, zero, -13 #init loop 0 limit
sub_1_2_0_t:      lui          t1, 428470
                  addi         s9, s9, -1 #update loop 0 counter
                  beq          s9, s4, sub_1_2_0_t #branch for loop 0
                  sltu         t6, sp, t3
                  addi         t0, zero, -6 #init loop 0 counter
                  slti         gp, a6, 1165
                  sltu         a2, s11, s10
                  addi         sp, zero, 6 #init loop 0 limit
                  sll          s4, a1, a1
sub_1_1_0_t:      sltiu        s0, s4, -1031
                  sltu         t6, tp, a7
                  srai         s11, a1, 7
                  srl          zero, s2, a7
                  xori         a4, s2, 1102
                  sub          s0, s10, ra
                  add          a0, a2, s8
                  slt          t4, t6, a6
                  srai         t2, t3, 23
                  addi         t0, t0, 4 #update loop 0 counter
                  andi         zero, gp, 1676
                  blt          t0, sp, sub_1_1_0_t #branch for loop 0
                  addi         ra, t4, 1615
                  addi         t5, zero, 8 #init loop 1 counter
                  srl          s1, t6, s4
                  addi         a1, t4, 456
                  addi         t4, zero, 7 #init loop 1 limit
sub_1_0_1_t:      addi         a1, t5, 840
                  xor          a1, t3, t0
                  sra          s4, s7, sp
                  sub          a3, s6, zero
                  addi         t5, t5, -1 #update loop 1 counter
                  srl          a2, s10, s7
                  addi         sp, zero, 6 #init loop 0 counter
                  or           s9, t6, s2
                  xor          tp, a2, ra
                  srai         a2, s9, 18
                  addi         t1, zero, -11 #init loop 0 limit
                  srl          s11, a7, s4
                  slli         s6, s4, 2
sub_1_0_0_t:      xor          s2, gp, s6
                  slli         t2, s2, 0
                  add          s0, t5, a2
                  addi         sp, sp, -10 #update loop 0 counter
                  sltu         gp, a6, s9
                  andi         a3, sp, -67
                  bge          sp, t1, sub_1_0_0_t #branch for loop 0
                  srli         s9, zero, 30
                  sltu         ra, gp, a4
                  or           gp, a1, t3
                  bgeu         t5, t4, sub_1_0_1_t #branch for loop 1
                  sll          zero, zero, s7
                  sra          s0, s11, a5
                  add          s9, t6, t6
                  bltu         s5, a5, 7f
                  slt          a4, t4, ra
                  andi         s8, s7, 876
                  sll          t1, s2, a0
                  lui          t1, 114723
7:                sltiu        t1, s9, 864
                  blt          t2, a7, 22f
                  blt          a7, s8, 23f
                  ori          a3, s5, 1696
                  slli         s6, a0, 12
                  bgeu         t1, a6, 18f
                  bge          gp, tp, 26f
                  bne          s0, a3, 18f
                  sltu         s2, tp, a0
                  blt          a7, t3, 34f
                  andi         t5, s5, 1439
18:               nop
                  addi         s0, a3, -1030
                  bgeu         a6, s10, 21f
21:               sll          a2, a3, sp
22:               bgeu         t4, t6, 23f
23:               sltiu        gp, t5, 144
                  sub          ra, a5, t3
                  slti         s5, t6, -687
26:               bge          s0, zero, 35f
                  slli         s2, s1, 17
                  lui          s11, 904998
                  slli         tp, ra, 11
                  srai         gp, t4, 5
                  nop
                  slt          t5, ra, s8
                  sub          s8, t4, gp
34:               bltu         ra, a3, 40f
35:               bltu         a0, a1, 44f
                  bgeu         s2, t3, 47f
                  bgeu         t5, a3, 55f
                  bltu         s3, a6, 46f
                  blt          s3, t4, 51f
40:               nop
                  srli         s3, s11, 31
                  auipc        zero, 832531
                  slti         s4, s5, 1823
44:               bltu         a1, sp, 51f
                  srli         ra, s2, 13
46:               sra          s4, t5, sp
47:               bgeu         s5, s8, 50f
                  addi         s1, sp, -50
                  sub          zero, t1, t2
50:               slli         s6, zero, 5
51:               slli         t1, a2, 10
                  bgeu         s0, a1, 57f
                  beq          a7, a5, 71f
                  sltiu        a3, s3, -483
55:               bgeu         s0, s8, 72f
                  and          a3, sp, t0
57:               bgeu         s0, a6, 60f
                  sra          s6, a5, a3
                  ori          t0, t5, -32
60:               ori          ra, ra, -1884
                  srl          s9, s11, a6
                  ori          a4, s3, 1851
                  xor          s3, a2, s2
                  andi         s4, s0, -1391
                  and          s10, ra, a2
                  sll          a5, s7, zero
                  slti         a4, t1, -686
sub_1_j5:         jal          t1, sub_4 #jump sub_1 -> sub_4
                  bge          a0, a5, 63f
                  srl          a1, s7, ra
63:               srli         t6, t1, 29
                  or           t2, a1, t6
                  slli         s9, sp, 6
                  srli         t2, ra, 5
                  and          s6, s0, a6
                  sra          ra, s1, t2
                  bge          zero, s7, 78f
                  sll          t0, zero, s2
71:               bne          t3, s5, 77f
72:               beq          s1, a2, 82f
                  srli         t0, s7, 18
                  sll          s8, a7, sp
                  xori         s3, a5, -619
                  bne          zero, a5, 81f
77:               srai         a2, s11, 31
78:               ori          tp, t5, -830
                  xor          t2, a7, sp
                  andi         s10, sp, -2047
81:               auipc        s8, 34153
82:               bge          a7, tp, 99f
                  slli         s5, s8, 21
                  sub          a4, a2, a0
                  srai         a2, s1, 9
                  xori         a3, a3, -1353
                  add          s3, t2, s0
                  sltu         s10, s11, s4
                  srl          s4, a0, s6
                  beq          zero, a6, 107f
                  slli         t0, a1, 17
                  sub          t6, ra, s2
                  bge          s8, zero, 106f
                  bne          sp, s1, 99f
                  srai         s10, s5, 17
                  srl          s6, t2, t0
                  bgeu         s5, s7, 100f
                  beq          s1, tp, 111f
99:               xor          a3, s7, zero
100:              sltiu        s5, s0, -228
                  srai         t6, s2, 9
                  lui          t4, 3399
                  sltiu        t1, s6, 59
                  bne          s10, t0, 113f
                  slti         s7, tp, -1317
106:              andi         a5, s9, 1697
107:              slli         s2, s9, 10
                  srai         t1, gp, 2
                  or           s0, tp, t3
                  bge          a7, a6, 120f
111:              sltiu        zero, a0, 637
                  srli         a1, a2, 1
113:              blt          s9, gp, 119f
                  srai         t2, a3, 23
                  or           s10, tp, ra
                  xor          t4, t5, gp
                  or           t6, a4, t0
                  bge          a6, a6, 126f
119:              xor          a1, ra, s3
120:              sltu         s1, s5, t4
                  sltu         s10, gp, t0
                  ori          t6, s10, 633
                  xor          a5, a5, sp
                  bltu         a3, tp, 125f
125:              and          a3, a3, a4
126:              nop
                  xori         gp, zero, -701
                  srl          t2, t6, s1
                  nop
                  beq          a2, t1, 135f
                  slt          a0, s7, t2
                  bltu         t2, a3, 133f
133:              or           a3, s9, tp
                  addi         a4, a4, -909
135:              nop
                  add          s8, gp, s4
                  and          s0, a6, s11
                  xor          s0, s9, s10
                  sub          a4, t5, zero
                  nop
                  sltu         t5, s5, t6
                  and          ra, a5, s10
                  slt          s4, t5, a7
                  andi         s4, t4, 0
                  bltu         t4, t5, 147f
                  auipc        s11, 34676
147:              xori         zero, tp, -653
                  sra          s9, t5, s9
                  sub          ra, s3, s6
                  auipc        a5, 41927
                  nop
                  slt          s7, ra, s5
                  nop
                  add          a5, s9, s1
                  nop
                  or           t5, a5, a6
                  xor          tp, a0, s7
                  lw           t1, 4(a7)
                  addi         a7, a7, 20
                  and          ra, a7, s6
                  ori          t2, a5, 326
                  sll          s1, a6, s3
                  slt          a0, t1, t2
                  nop
                  sub          t5, a0, gp
236:              addi x29, x6, 0
236:              jalr x29, x29, 0
sub_2:            bltu         s5, s10, sub_2_stack_p
sub_2_stack_p:    addi         a7, a7, -60
                  xor          sp, s6, a1
                  slti         a0, s2, 1177
                  sw           t1, 4(a7)
                  ori          tp, s4, -1385
                  srli         a3, s2, 20
                  xori         t4, a7, 1787
                  add          s7, a5, a2
                  srl          s2, gp, s11
                  or           s3, s9, a3
                  srl          a4, a6, a1
                  addi         t4, a4, 1262
                  xori         t2, a2, -1531
                  ori          a0, s10, 958
                  bgeu         s8, s2, sub_2_j6 #branch to jump instr
                  sltu         s11, a4, s1
                  xor          t2, s10, gp
                  andi         t0, s2, -984
sub_2_j6:         jal          t1, sub_4 #jump sub_2 -> sub_4
                  addi         t2, zero, -4 #init loop 1 counter
                  addi         ra, zero, -15 #init loop 1 limit
sub_2_0_1_t:      slt          a3, ra, ra
                  addi         t2, t2, -10 #update loop 1 counter
                  sub          tp, a5, t3
                  addi         s11, zero, -6 #init loop 0 counter
                  addi         a4, zero, -9 #init loop 0 limit
sub_2_0_0_t:      sub          s4, gp, t4
                  addi         s11, s11, -5 #update loop 0 counter
                  bge          s11, a4, sub_2_0_0_t #branch for loop 0
                  bge          t2, ra, sub_2_0_1_t #branch for loop 1
                  slti         a5, s10, -853
                  sll          s9, s8, s10
                  and          t4, a7, gp
                  srl          tp, a4, a5
                  nop
                  bge          t0, s2, 10f
                  lui          tp, 527742
                  andi         a3, t0, 982
                  srli         gp, a4, 13
                  xor          s2, a4, t0
                  or           a4, t4, s7
10:               sra          s3, s9, ra
                  slli         s1, s1, 10
                  xori         s3, s1, 328
                  srli         s11, t2, 17
                  slt          t5, s6, zero
                  beq          s11, s11, 20f
                  srai         s0, s0, 10
                  andi         s10, t1, 456
                  add          zero, t3, s8
                  lui          a2, 1035803
20:               bltu         a1, ra, 23f
                  sltu         s8, a7, ra
                  andi         t1, s2, -680
23:               blt          s3, s10, 26f
                  and          t5, s6, s7
                  or           t0, ra, s2
26:               or           t6, s7, s11
                  bltu         zero, a3, 35f
                  slti         s11, s11, 1144
                  lui          s3, 328262
                  lui          s7, 620384
                  sltu         t1, s4, s7
                  nop
                  slti         s9, t0, 1046
                  slli         s1, t4, 21
35:               slt          s4, a1, s11
                  add          s2, t6, a1
                  xor          s9, gp, s9
                  xori         s9, a1, -576
                  sub          s2, sp, s9
                  bltu         a6, s7, 56f
                  xor          gp, gp, s0
                  xori         a3, a1, 1156
                  ori          ra, t5, 399
                  sub          t0, a1, s1
                  slt          a1, a1, s1
                  sub          s4, a7, t4
                  slli         zero, a6, 0
                  srl          s8, s5, zero
                  slli         s0, s8, 27
                  slli         t4, s8, 6
                  slli         s8, t3, 23
                  slli         ra, ra, 10
                  slli         s7, a0, 3
                  lui          a0, 389091
                  srli         t0, s11, 20
56:               sltiu        a5, a3, -1273
                  or           a0, t2, t6
                  addi         s3, a6, -777
                  blt          s7, s3, 69f
                  ori          a0, a6, -692
                  addi         zero, a0, -1025
                  srai         t2, s7, 6
                  xor          s11, gp, t1
                  xori         sp, zero, 490
                  bge          s8, a6, 69f
                  ori          s10, t1, 1552
                  blt          s5, s6, 69f
                  srai         gp, s4, 13
69:               auipc        s7, 322155
                  srl          s11, t0, a2
                  lw           t1, 4(a7)
                  sra          a1, ra, s11
                  nop
                  addi         a7, a7, 60
                  ori          s10, s1, -2033
108:              addi x4, x6, 0
108:              jalr x4, x4, 0
sub_5:            bltu         s8, s10, sub_5_stack_p
                  sra          s8, zero, s2
sub_5_stack_p:    addi         a7, a7, -36
                  slti         a0, t5, -216
                  sw           t1, 4(a7)
                  slt          s1, ra, t3
                  bgeu         s2, t3, 17f
                  bge          t3, s0, 16f
                  slli         t0, zero, 23
                  xori         s3, a0, 1455
                  slti         t4, s8, -1251
                  srai         s11, a2, 21
                  srai         s4, a3, 5
                  lui          t5, 900216
                  ori          s11, s8, -2002
                  ori          s0, a1, -179
                  or           gp, t6, t3
                  addi         s11, gp, -1364
                  srl          t5, t0, a0
                  srli         t6, t3, 16
                  slt          ra, t3, ra
                  srli         s11, s9, 9
16:               sub          t4, sp, s4
17:               sltu         zero, tp, ra
                  slti         a0, a7, -334
                  srli         a1, t5, 31
                  sltiu        s0, sp, -312
                  sltu         a2, t3, t1
                  srai         t2, ra, 20
                  xori         t5, a3, 1093
                  srli         tp, s9, 19
                  sra          s2, t0, s2
                  sra          t2, t6, s6
                  lw           t1, 4(a7)
                  addi         tp, s7, 533
                  ori          s11, a7, -1432
                  or           sp, gp, s6
                  addi         a7, a7, 36
                  slti         a2, a2, 81
                  lui          sp, 289608
                  slt          t0, a6, a5
                  ori          a3, t3, -1484
42:               addi x24, x6, 1
42:               jalr x24, x24, 0
sub_3:            and          t5, s6, t2
                  addi         a7, a7, -52
                  sll          a5, a1, t0
                  sw           t1, 4(a7)
                  xor          s6, t6, a4
                  addi         s10, zero, -4 #init loop 1 counter
                  sltiu        sp, s11, 525
                  ori          sp, s9, 1130
                  addi         a5, zero, -6 #init loop 1 limit
                  or           t1, t1, s2
sub_3_2_1_t:      andi         s5, t2, -821
                  addi         s10, s10, -9 #update loop 1 counter
                  xor          a4, tp, s1
                  srli         s8, s6, 3
                  addi         gp, zero, 10 #init loop 0 counter
                  srai         t0, zero, 10
                  addi         t6, zero, 7 #init loop 0 limit
                  slt          t2, s4, s3
                  lui          s9, 952196
                  sll          zero, t3, s4
                  lui          s6, 666988
sub_3_2_0_t:      or           sp, s6, t3
                  slt          t1, a7, a2
                  srli         a3, t3, 30
                  addi         gp, gp, -4 #update loop 0 counter
                  or           s2, a2, gp
                  bgeu         gp, t6, sub_3_2_0_t #branch for loop 0
                  and          s6, zero, t3
                  xori         zero, zero, -1399
                  srl          s1, s5, zero
                  bge          s10, a5, sub_3_2_1_t #branch for loop 1
                  sll          t2, a2, s4
                  addi         a4, zero, 8 #init loop 0 counter
                  add          s9, s7, sp
                  addi         s5, zero, -18 #init loop 0 limit
                  nop
                  nop
                  sra          s3, tp, a0
                  sltu         t0, t5, t0
                  lui          gp, 134389
                  sltu         a5, a5, s11
sub_3_3_0_t:      ori          tp, t2, -829
                  srl          t6, s3, a6
                  xori         t1, gp, -2048
                  addi         a4, a4, -6 #update loop 0 counter
                  nop
                  slt          s3, sp, gp
                  sltu         a2, s7, s6
                  slti         s1, a6, 766
                  srl          zero, s10, s11
                  and          t6, a3, s2
                  add          t2, s2, a4
                  auipc        t6, 873402
                  sll          s1, t4, a6
                  addi         t0, gp, -1257
                  sll          s10, t4, s7
                  ori          t2, a5, 182
                  add          sp, s8, s1
                  bge          a4, s5, sub_3_3_0_t #branch for loop 0
                  or           t2, t6, a1
                  addi         s6, zero, 5 #init loop 0 counter
                  addi         tp, zero, -10 #init loop 0 limit
sub_3_4_0_t:      auipc        t1, 567491
                  addi         s6, s6, -8 #update loop 0 counter
                  bge          s6, tp, sub_3_4_0_t #branch for loop 0
                  add          s11, t2, s1
                  addi         gp, zero, -1 #init loop 1 counter
                  addi         s0, zero, 16 #init loop 1 limit
sub_3_6_1_t:      xori         t5, tp, -778
                  ori          s10, s10, -24
                  addi         gp, gp, 7 #update loop 1 counter
                  addi         a1, zero, -7 #init loop 0 counter
                  addi         s7, zero, 17 #init loop 0 limit
sub_3_6_0_t:      andi         s8, s0, -606
                  addi         a1, a1, 10 #update loop 0 counter
                  add          a4, sp, t4
                  blt          a1, s7, sub_3_6_0_t #branch for loop 0
                  blt          gp, s0, sub_3_6_1_t #branch for loop 1
                  slt          s3, t1, t1
                  addi         a5, zero, 1 #init loop 0 counter
                  addi         tp, zero, 9 #init loop 0 limit
                  and          s7, ra, a4
                  sra          s2, t1, s2
                  addi         s9, s3, -43
                  lui          s7, 235918
                  add          t4, s10, t0
sub_3_7_0_t:      slt          a2, ra, t5
                  slti         s3, s2, 398
                  addi         a5, a5, 10 #update loop 0 counter
                  sub          gp, s0, t3
                  sltiu        s8, t4, 112
                  sra          a1, t2, tp
                  xori         s10, zero, 1917
                  srl          s1, s5, t5
                  sltu         t1, t2, a1
                  blt          a5, tp, sub_3_7_0_t #branch for loop 0
                  or           s9, a2, s8
                  addi         s6, zero, 9 #init loop 0 counter
                  nop
                  sltu         s1, a5, t6
                  lui          s5, 382425
                  addi         sp, zero, 17 #init loop 0 limit
                  sll          s0, s10, tp
                  xor          t2, t5, a1
sub_3_1_0_t:      ori          a5, sp, -1060
                  andi         s7, s2, 673
                  xor          a1, s2, t3
                  xor          a4, a7, s9
                  sltu         a1, zero, s6
                  lui          s2, 380343
                  srli         s2, s9, 10
                  sltu         t1, a0, tp
                  sub          s2, s2, a2
                  addi         s6, s6, 4 #update loop 0 counter
                  add          s8, a6, s5
                  sra          s3, ra, s1
                  andi         s9, s8, -56
                  sll          s1, t5, t5
                  beq          s6, sp, sub_3_1_0_t #branch for loop 0
                  srli         s8, a0, 5
                  addi         sp, zero, 2 #init loop 0 counter
                  addi         s3, zero, -18 #init loop 0 limit
                  sltu         a0, t2, t6
sub_3_5_0_t:      lui          s5, 804342
                  addi         sp, sp, -5 #update loop 0 counter
                  bne          sp, s3, sub_3_5_0_t #branch for loop 0
                  xor          t0, t6, t6
                  and          ra, s7, s0
                  sub          s4, s6, t1
                  ori          a1, t5, -135
                  sra          s6, a0, a1
                  srli         s6, ra, 16
                  nop
                  beq          a5, s0, sub_3_j7 #branch to jump instr
                  sll          ra, t5, s11
                  addi         s1, s2, 1158
                  xori         ra, ra, 1741
                  xor          t4, a2, t1
sub_3_j7:         jal          t1, sub_5 #jump sub_3 -> sub_5
                  bltu         t0, a6, 17f
                  add          s8, s2, a3
                  sll          s7, a3, a7
                  bge          s3, a7, 20f
                  sltu         s9, a2, a3
                  slti         s9, s1, -595
                  bne          gp, a6, 15f
                  sltu         a0, s11, a3
                  addi         ra, zero, -1790
                  nop
                  andi         s11, s10, 302
                  sltiu        t2, s3, 1676
                  andi         zero, t1, 1376
15:               sltiu        a4, tp, 94
                  xori         s7, a3, -904
17:               sltiu        t4, s0, -740
                  sub          a4, t2, s7
                  bge          s1, a3, 29f
20:               bge          a0, a0, 36f
                  beq          sp, gp, 32f
                  srli         a1, s8, 25
                  addi         a3, s5, -1987
                  and          a3, s2, a6
                  add          t2, t1, t5
                  slli         s11, s8, 8
                  bgeu         s1, t5, 34f
                  sub          t6, s9, s11
29:               slti         s3, s8, -765
                  srli         s4, sp, 4
                  srl          s1, s8, t6
32:               xori         t6, s8, -1101
                  blt          s6, t6, 49f
34:               sub          s10, s7, t6
                  and          s8, a0, a6
                  addi         s0, zero, 8 #init loop 0 counter
                  slt          s8, t3, s8
                  sll          a2, a1, a6
                  and          a4, t1, s0
                  addi         a0, zero, 14 #init loop 0 limit
                  andi         s4, a3, 1624
sub_3_0_0_t:      xori         a1, s5, 1411
                  auipc        s2, 527167
                  ori          zero, a3, -933
                  add          s8, ra, s6
                  srl          s3, t3, s10
                  addi         s0, s0, 10 #update loop 0 counter
                  sra          gp, t4, tp
                  nop
                  srli         tp, s11, 19
                  sra          a1, a4, s9
                  bltu         s0, a0, sub_3_0_0_t #branch for loop 0
                  srl          s9, a5, a1
36:               sltu         s1, t0, t6
                  sltiu        t2, t6, 1303
                  sra          a2, s0, ra
                  auipc        s6, 715308
                  slti         s8, s10, -666
                  auipc        t6, 586196
                  or           ra, s4, t5
                  slt          a0, a4, a3
                  bne          t0, s4, 61f
                  bge          t6, zero, 65f
                  ori          s3, a1, 1371
                  slli         s2, t6, 10
                  srli         s3, a2, 10
49:               blt          sp, t5, 60f
                  andi         gp, zero, -1737
                  slli         s4, t1, 1
                  ori          s4, s7, 1771
                  lui          a3, 59995
                  andi         zero, s7, -397
                  srli         a1, s4, 17
                  sltu         s1, s1, s11
                  xor          s11, t6, sp
                  sra          sp, s1, s5
                  add          a4, ra, s11
60:               or           s5, s5, s4
61:               lui          s0, 582207
                  bne          s5, s7, 68f
                  add          a2, s9, sp
                  srli         s11, gp, 23
65:               sra          s11, t0, s2
                  srli         a2, s10, 20
                  add          zero, tp, s3
68:               sltu         s5, a4, s9
                  bne          s8, gp, 74f
                  xori         a2, s4, -1116
                  slti         s3, a6, -1703
                  blt          s6, a3, 75f
                  sub          s2, s8, a0
74:               bltu         s1, s2, 85f
75:               addi         s3, a3, -1191
                  blt          zero, a6, 81f
                  sub          a4, t2, a7
                  srli         zero, a0, 27
                  slt          a3, a3, a3
                  bltu         t0, s7, 87f
81:               slli         s6, s8, 2
                  slti         a3, s8, 1486
                  sra          a2, ra, a0
                  add          s11, a4, a5
85:               sub          t2, s9, a1
                  sll          zero, gp, t6
87:               sra          s0, t3, s4
                  blt          t6, a4, 106f
                  add          s7, s6, s4
                  slli         a1, s0, 14
                  slt          t1, s1, s9
                  xori         t6, gp, 849
                  srl          a4, a5, s2
                  or           t1, sp, tp
                  blt          a5, s8, 111f
                  slt          t6, t1, s0
                  andi         t2, s8, 1188
                  slli         a3, s6, 0
                  sll          a0, t0, t1
                  sltiu        s6, sp, -467
                  bne          t0, s9, 119f
                  srli         t0, a4, 15
                  sra          a1, s8, tp
                  srai         t4, tp, 21
                  add          s9, ra, s8
106:              slti         s9, a1, 1526
                  lui          s0, 676252
                  bne          s2, s1, 125f
                  xori         t6, t5, 655
                  and          t1, t1, t2
111:              addi         s10, s8, -52
                  slti         s2, s8, 1563
                  slti         a1, a2, 363
                  lui          a3, 400108
                  bge          a1, t1, 133f
                  slli         t0, a4, 29
                  slli         a3, a7, 11
                  nop
119:              or           t2, a0, s7
                  xori         s7, s10, 1048
                  xori         s2, t0, -1815
                  bne          t5, s5, 140f
                  sub          s7, s4, t2
                  xori         a3, t0, -524
125:              add          s7, sp, a4
                  sub          a0, t1, s3
                  bge          a5, a7, 139f
                  slt          zero, sp, s4
                  auipc        s10, 221025
                  and          a5, s3, a4
                  srl          s6, s10, s6
                  beq          s2, t3, 134f
133:              nop
134:              add          a0, a7, gp
                  srl          sp, t0, gp
                  ori          t5, t0, 1213
                  blt          s11, gp, 157f
                  ori          zero, a1, 412
139:              andi         s1, s8, 141
140:              and          ra, s3, s7
                  auipc        t1, 802720
                  auipc        s0, 623424
                  bne          t0, a7, 149f
                  srai         a2, t1, 27
                  bne          a2, s8, 151f
                  sra          s6, s9, s7
                  lui          zero, 372460
                  sub          t1, s9, tp
149:              bne          t3, a5, 160f
                  bge          s7, ra, 160f
151:              sub          s10, t4, s0
                  xori         t0, t1, 1706
                  bgeu         t6, tp, 170f
                  lui          s1, 419032
                  ori          ra, a0, 199
                  srai         s4, a4, 27
157:              bge          s3, sp, 164f
                  sll          s9, t6, s8
                  srli         s2, s10, 3
160:              slli         sp, s0, 2
                  add          s3, s5, s10
                  bne          zero, t0, 165f
                  sra          tp, t2, t3
164:              blt          t1, t3, 182f
165:              ori          t0, s6, -303
                  sltiu        s7, s9, -989
                  slli         s10, s3, 17
                  beq          a0, s10, 183f
                  and          a1, a7, ra
170:              bge          zero, s9, 176f
                  beq          t3, s11, 173f
                  bltu         a6, a2, 178f
173:              lui          s8, 244411
                  slti         s10, s10, 1505
                  srai         s0, t3, 9
176:              sra          a5, ra, a6
                  xor          s5, t3, t0
178:              bltu         s10, zero, 188f
                  sra          sp, s1, s10
                  nop
                  slti         s0, s10, -314
182:              bgeu         t1, s11, 198f
183:              srai         s7, s0, 11
                  sra          s9, t2, a3
                  bne          s9, a1, 201f
                  bge          s5, s9, 196f
                  add          sp, a6, ra
188:              nop
                  sltiu        a4, s5, 1343
                  slti         s4, s4, 308
                  xori         s8, s7, 990
                  slti         ra, t2, 1507
                  or           a0, gp, a6
                  xor          t5, tp, s2
                  addi         s8, zero, 866
196:              srai         s9, a4, 28
                  srl          ra, s2, s5
198:              bne          t3, a7, 209f
                  addi         a1, zero, -226
                  bltu         a3, t3, 211f
201:              srai         a5, zero, 23
                  srai         t4, s11, 7
                  srl          sp, t6, a2
                  or           s11, s8, a7
                  slt          a5, t3, t6
                  bne          a0, a1, 212f
                  srl          a0, gp, s7
                  sltu         a4, s5, s5
209:              sub          zero, s0, t2
                  slti         s9, s7, -1269
211:              srli         s2, s0, 7
212:              sll          s3, a3, s2
                  bltu         s11, zero, 220f
                  andi         t6, tp, -1253
                  srai         s11, t3, 11
                  slt          s11, gp, s0
                  beq          gp, a5, 237f
                  sltu         sp, t6, s5
                  or           t0, t3, s4
220:              xori         t1, t4, -139
                  beq          t2, s3, 226f
                  bge          s3, a4, 238f
                  slt          t2, s10, t5
                  sub          s7, s6, gp
                  bgeu         a6, s2, 236f
226:              bltu         t0, t4, 244f
                  slli         s11, t0, 7
                  add          a4, s0, gp
                  xor          s6, s0, t2
                  andi         t0, t2, 1211
                  bgeu         gp, ra, 242f
                  addi         a1, zero, 480
                  blt          s0, s10, 240f
                  blt          t5, sp, 239f
                  bge          sp, t1, 247f
236:              xor          tp, a7, a6
237:              bgeu         s10, a2, 255f
238:              slti         s11, a3, 308
239:              or           a2, a4, t2
240:              lui          a4, 401195
                  bge          s6, t1, 259f
242:              and          zero, s10, t0
                  bge          s7, t3, 258f
244:              blt          s1, t4, 261f
                  nop
                  beq          a3, t3, 266f
247:              srl          s6, s2, t1
                  ori          s2, s8, -1724
                  or           t5, s9, a0
                  add          t2, s6, a6
                  srai         a5, tp, 0
                  beq          s9, t0, 258f
                  xor          a2, t3, a0
                  bge          s0, t1, 274f
255:              srl          t4, ra, s0
                  sltu         gp, a2, t3
                  or           s5, a1, s6
258:              bgeu         t1, s9, 269f
259:              and          zero, s3, tp
                  addi         s7, sp, 955
261:              sub          s9, a5, s9
                  slti         tp, a7, -1172
                  sltiu        s5, a5, 1339
                  slli         s5, a1, 2
                  add          s8, sp, s1
266:              sltiu        gp, s1, 1651
                  bge          s2, ra, 273f
                  bne          s2, a1, 271f
269:              srai         s9, s1, 3
                  add          s7, a5, s11
271:              srli         a1, a6, 2
                  or           a1, a5, t5
273:              bne          s9, a5, 289f
274:              xor          a3, t2, a3
                  auipc        t5, 578145
                  lui          s3, 361690
                  bne          a5, s1, 282f
                  andi         ra, s1, 697
                  lui          sp, 889627
                  sltiu        s11, a5, 319
                  srli         zero, t0, 19
282:              beq          a0, s8, 294f
                  ori          s9, s0, -1611
                  lui          t4, 255496
                  sll          t5, t6, s1
                  bltu         gp, a4, 301f
                  sll          a4, a0, s10
                  andi         a2, a3, 1269
289:              slli         s4, s0, 6
                  slli         ra, s0, 0
                  ori          s2, t5, -1794
                  slli         t4, s8, 9
                  blt          a6, zero, 299f
294:              auipc        sp, 337836
                  bltu         t0, s2, 305f
                  sltu         s9, a2, a3
                  slli         s9, t3, 3
                  slt          s7, a6, t4
299:              ori          a1, t3, 1910
                  auipc        s5, 476864
301:              srli         s1, zero, 1
                  slli         s10, s3, 26
                  sra          gp, t1, tp
                  and          ra, t4, gp
305:              srai         s7, t2, 12
                  or           t1, t6, gp
                  blt          a6, t3, 323f
                  sll          s2, sp, gp
                  nop
                  or           s0, tp, s6
                  xori         s0, s10, 1280
                  ori          t4, a2, -1968
                  beq          ra, a0, 329f
                  ori          s10, t4, 1270
                  addi         t2, s7, 978
                  bge          s11, a5, 327f
                  sltiu        s11, a0, 633
                  slti         t2, zero, 150
                  sub          s2, s1, a2
                  bgeu         gp, zero, 337f
                  add          s1, s9, s3
                  blt          ra, s7, 340f
323:              and          sp, t2, s6
                  auipc        t4, 290784
                  slli         a3, a4, 2
                  andi         t4, t5, 240
327:              slt          t6, a6, a1
                  and          t2, a2, a7
329:              lui          s1, 812374
                  slti         t2, t3, -631
                  beq          s10, s8, 342f
                  lui          t0, 343734
                  and          t2, s7, tp
                  bge          a7, sp, 341f
                  bgeu         s8, a6, 342f
                  bge          ra, s1, 346f
337:              slti         t6, t2, -1993
                  add          a4, a0, s2
                  addi         s8, t3, 772
340:              beq          a3, sp, 360f
341:              blt          t0, s7, 359f
342:              slt          gp, t3, s7
                  sub          zero, t6, tp
                  sub          t1, s8, a4
                  add          s5, s5, s5
346:              slli         ra, s6, 24
                  ori          s11, s0, -1528
                  slti         s9, a3, -411
                  sll          a1, s9, t3
                  blt          ra, tp, 357f
                  srai         t0, s6, 2
                  slli         t4, zero, 28
                  ori          gp, tp, -1483
                  add          s10, a2, s8
                  bge          s10, s5, 373f
                  bltu         s8, a6, 358f
357:              sub          a3, t1, s3
358:              and          tp, a1, sp
359:              sub          a2, s10, t5
360:              sll          t4, t4, s10
                  sltiu        a2, a4, 1577
                  bltu         s5, a3, 367f
                  nop
                  srli         s7, tp, 25
                  sub          a0, s9, t3
                  slti         s7, a6, -1731
367:              bgeu         a7, s3, 378f
                  slti         a2, s11, 1705
                  slt          t1, s5, s7
                  addi         zero, a6, 992
                  srl          t1, s10, tp
                  xor          a1, s4, s3
373:              srai         t1, s11, 11
                  srl          t5, a1, a5
                  beq          tp, t3, 393f
                  xor          ra, ra, a1
                  srai         ra, a3, 4
378:              sll          a0, a1, sp
                  bltu         a6, a4, 396f
                  lui          s11, 353578
                  beq          ra, a3, 396f
                  slli         s11, s2, 15
                  auipc        s7, 249010
                  auipc        s8, 680981
                  sra          s4, s0, s4
                  andi         s8, s1, 98
                  beq          s10, a5, 394f
                  srl          a1, a4, s4
                  andi         zero, zero, -1362
                  or           t0, s9, sp
                  or           s5, sp, tp
                  xori         t4, a2, 883
393:              slli         a4, s11, 19
394:              srli         s11, t0, 20
                  nop
396:              beq          s5, t3, 414f
                  ori          s4, a4, -958
                  sltiu        s11, gp, 1899
                  andi         s4, s7, -1739
                  bgeu         t6, t3, 410f
                  bne          t3, gp, 421f
                  beq          a0, s7, 408f
                  bne          a2, s4, 413f
                  sll          s6, t6, t4
                  sra          t1, t6, s3
                  bltu         s2, a6, 417f
                  srli         s8, s1, 18
408:              nop
                  ori          t1, s3, 593
410:              sltiu        a4, s7, 1337
                  xori         t5, tp, 1217
                  bltu         s9, s2, 428f
413:              slti         t4, s6, -827
414:              auipc        t0, 345259
                  sltiu        s11, s10, -1937
                  andi         a5, t6, -370
417:              srai         s7, t3, 26
                  nop
                  xor          t1, gp, ra
                  andi         zero, gp, -1970
421:              beq          s4, zero, 426f
                  blt          s1, a5, 433f
                  sll          s8, t1, a6
                  beq          t3, t5, 435f
                  bge          s11, s4, 439f
426:              srli         t1, sp, 30
                  lui          gp, 39422
428:              or           s0, t0, s8
                  addi         a4, s2, 130
                  sub          t5, s2, sp
                  sltiu        a1, s5, -1126
                  slti         a0, a4, 501
433:              beq          ra, s0, 439f
                  and          s9, s8, gp
435:              slli         tp, ra, 21
                  bgeu         s7, sp, 439f
                  andi         a4, a1, 1458
                  sll          t0, a3, s5
439:              srl          a5, a7, t4
                  sub          t5, t5, s7
                  lw           t1, 4(a7)
                  auipc        t0, 380542
                  addi         a7, a7, 52
                  andi         a2, s1, 367
                  sltu         s1, tp, t6
                  sra          s9, a5, a7
                  lui          t4, 700300
603:              addi x1, x6, 0
603:              jalr x1, x1, 0
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
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x16, x17, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_2:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x16, x17, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_3:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x16, x17, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_4:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x16, x17, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_5:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x16, x17, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_6:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x16, x17, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_7:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x16, x17, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_8:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x16, x17, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_9:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x16, x17, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_10:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x16, x17, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_11:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x16, x17, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_12:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x16, x17, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_13:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x16, x17, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_14:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x16, x17, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_15:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x16, x17, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
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
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x16, x17, zero
                  csrr x21, 0x341 # MEPC
                  csrr x21, 0x342 # MCAUSE
                  li x14, 0x3 # BREAKPOINT
                  beq x21, x14, ebreak_handler
                  li x14, 0x8 # ECALL_UMODE
                  beq x21, x14, ecall_handler
                  li x14, 0x9 # ECALL_SMODE
                  beq x21, x14, ecall_handler
                  li x14, 0xb # ECALL_MMODE
                  beq x21, x14, ecall_handler
                  li x14, 0x1
                  beq x21, x14, instr_fault_handler
                  li x14, 0x5
                  beq x21, x14, load_fault_handler
                  li x14, 0x7
                  beq x21, x14, store_fault_handler
                  li x14, 0xc
                  beq x21, x14, pt_fault_handler
                  li x14, 0xd
                  beq x21, x14, pt_fault_handler
                  li x14, 0xf
                  beq x21, x14, pt_fault_handler
                  li x14, 0x2 # ILLEGAL_INSTRUCTION
                  beq x21, x14, illegal_instr_handler
                  csrr x14, 0x343 # MTVAL
                  1: la x28, test_done
                  jalr x1, x28, 0

ecall_handler:    
                  la x21, _start
                  sw x0, 0(x21)
                  sw x1, 4(x21)
                  sw x2, 8(x21)
                  sw x3, 12(x21)
                  sw x4, 16(x21)
                  sw x5, 20(x21)
                  sw x6, 24(x21)
                  sw x7, 28(x21)
                  sw x8, 32(x21)
                  sw x9, 36(x21)
                  sw x10, 40(x21)
                  sw x11, 44(x21)
                  sw x12, 48(x21)
                  sw x13, 52(x21)
                  sw x14, 56(x21)
                  sw x15, 60(x21)
                  sw x16, 64(x21)
                  sw x17, 68(x21)
                  sw x18, 72(x21)
                  sw x19, 76(x21)
                  sw x20, 80(x21)
                  sw x21, 84(x21)
                  sw x22, 88(x21)
                  sw x23, 92(x21)
                  sw x24, 96(x21)
                  sw x25, 100(x21)
                  sw x26, 104(x21)
                  sw x27, 108(x21)
                  sw x28, 112(x21)
                  sw x29, 116(x21)
                  sw x30, 120(x21)
                  sw x31, 124(x21)
                  la x28, write_tohost
                  jalr x0, x28, 0

instr_fault_handler:
                  add x17, x16, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

load_fault_handler:
                  add x17, x16, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

store_fault_handler:
                  add x17, x16, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

ebreak_handler:   
                  csrr  x21, 0x341
                  addi  x21, x21, 4
                  csrw  0x341, x21
                  add x17, x16, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

illegal_instr_handler:
                  csrr  x21, 0x341
                  addi  x21, x21, 4
                  csrw  0x341, x21
                  add x17, x16, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x21, 0x300 # MSTATUS;
                  csrr  x21, 0x304 # MIE;
                  csrr  x21, 0x344 # MIP;
                  csrrc x21, 0x344, x21 # MIP;
                  add x17, x16, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
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
