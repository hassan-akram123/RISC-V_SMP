.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x31, h0_start
jalr x0, x31, 0
h0_start:
                  li x24, 0x40000100
                  csrw 0x301, x24
kernel_sp:        
                  la x19, kernel_stack_end

trap_vec_init:    
                  la x24, mtvec_handler
                  ori x24, x24, 1
                  csrw 0x305, x24 # MTVEC

mepc_setup:       
                  la x24, init
                  csrw 0x341, x24

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x24, 0x1800
                  csrw 0x300, x24 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0xcc915bf4
                  li x2, 0xa2a20797
                  li x3, 0xf4acbcc1
                  li x4, 0x80000000
                  li x5, 0x0
                  li x6, 0x80000000
                  li x7, 0xfce430a0
                  li x9, 0xb4af44ad
                  li x10, 0x6
                  li x11, 0x7
                  li x12, 0x0
                  li x13, 0x3b8eb237
                  li x14, 0x0
                  li x15, 0x9450afb
                  li x16, 0x0
                  li x17, 0x0
                  li x18, 0x9
                  li x20, 0x3
                  li x21, 0x0
                  li x22, 0xff4d5691
                  li x23, 0xc
                  li x24, 0xf33a3b2b
                  li x25, 0xf96d8c32
                  li x26, 0x0
                  li x27, 0xd2d41dd5
                  li x28, 0xa
                  li x29, 0x0
                  li x30, 0x1
                  li x31, 0x8
                  la x8, user_stack_end
main:             addi         s5, zero, 9 #init loop 1 counter
                  addi         a2, zero, 5 #init loop 1 limit
main_0_1_t:       xori         sp, s3, 579
                  addi         s5, s5, -4 #update loop 1 counter
                  addi         s4, zero, 9 #init loop 0 counter
                  addi         s2, zero, 7 #init loop 0 limit
                  addi         a5, s11, -2033
main_0_0_t:       slti         s1, s0, 350
                  addi         s4, s4, -4 #update loop 0 counter
                  bgeu         s4, s2, main_0_0_t #branch for loop 0
                  bgeu         s5, a2, main_0_1_t #branch for loop 1
                  sub          t5, t4, a6
                  sltiu        a4, s8, 1240
                  lui          s8, 280620
                  sub          s7, ra, s3
                  bge          ra, a4, 9f
                  bne          a1, s10, 16f
                  lui          tp, 328989
                  slti         a7, t5, -982
                  bgeu         s5, s8, 18f
                  sltiu        zero, gp, 955
9:                xor          s2, a7, a4
                  xori         ra, s1, 1439
                  sltiu        s1, t0, -531
                  and          s5, t3, a0
                  sltu         a6, a3, a7
                  srl          s8, s11, s5
                  bge          s5, t2, 16f
16:               srai         t0, s9, 14
                  lui          s1, 247625
18:               beq          t2, t3, 33f
                  or           a2, s7, s10
                  beq          s5, s2, 37f
                  or           t5, s3, s5
                  ori          t5, sp, -1647
                  sltu         a7, sp, a3
                  srl          a4, sp, gp
                  and          t2, s11, s3
                  xori         a6, zero, 1091
                  add          zero, s8, s5
                  sll          gp, a3, s2
                  slt          t2, t5, sp
                  sltiu        s7, s11, -828
                  slt          a3, s5, s6
                  beq          a0, s6, 38f
33:               and          s10, a3, s10
                  andi         sp, s4, -1110
                  addi         s11, s3, -862
                  xori         s1, s4, -1815
37:               slli         t5, a4, 27
38:               or           s5, t1, a2
                  bge          a5, s7, 55f
                  srli         s11, s11, 21
                  srli         s2, a0, 18
                  bge          s5, gp, 58f
                  bge          s3, a5, 59f
                  srli         tp, t6, 30
                  beq          gp, t6, 49f
                  xori         a3, a7, -1911
                  la           s5, sub_1
                  slt          s2, s6, a4
                  srai         a6, t1, 14
                  lui          s1, 166070
                  addi         t4, t2, -1545
                  addi         s5, s5, 567
                  sltu         t1, s8, a1
                  srli         a0, a7, 18
                  beq          a0, a6, main_j1 #branch to jump instr
                  or           a7, s10, sp
                  sub          t0, a3, t0
                  srl          t2, a0, tp
                  srli         tp, s7, 3
main_j1:          jalr         t1, s5, -566 #jump main -> sub_1
                  srai         ra, s7, 17
                  bge          s11, s9, 57f
49:               auipc        a1, 196687
                  slli         s6, s9, 31
                  blt          s2, s4, 59f
                  blt          t5, tp, 59f
                  srli         t0, s0, 19
                  andi         zero, t0, -894
55:               or           s4, t3, s5
                  srai         s10, t5, 26
57:               slti         s8, s4, 1179
58:               nop
59:               add          s9, a3, t1
                  la x31, test_done
                  jalr x0, x31, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            addi         t0, s6, 1675
                  sll          tp, s4, a4
                  addi         s0, s0, -56
                  ori          a7, a7, 320
                  sra          s9, t3, a0
                  sra          t0, s1, a1
                  slt          a5, a5, t6
                  slt          a6, a6, s10
                  sw           t1, 4(s0)
                  srai         zero, tp, 13
                  sll          s7, s4, gp
                  ori          a0, a5, -264
                  addi         gp, zero, 6 #init loop 1 counter
                  sltiu        t0, a7, 556
                  addi         t4, zero, 19 #init loop 1 limit
                  lui          a5, 361871
sub_4_6_1_t:      or           a6, t1, a5
                  addi         gp, gp, 10 #update loop 1 counter
                  nop
                  addi         ra, zero, 8 #init loop 0 counter
                  xori         s1, a5, 449
                  addi         s5, zero, 16 #init loop 0 limit
sub_4_6_0_t:      addi         tp, tp, 1416
                  sra          s6, zero, a3
                  add          tp, s4, zero
                  sra          a7, s3, s2
                  addi         ra, ra, 4 #update loop 0 counter
                  nop
                  slt          a2, s5, a4
                  add          a3, s6, a0
                  bne          ra, s5, sub_4_6_0_t #branch for loop 0
                  slli         a2, a4, 8
                  blt          gp, t4, sub_4_6_1_t #branch for loop 1
                  srai         t0, t0, 4
                  addi         ra, zero, 8 #init loop 0 counter
                  srai         a2, s8, 24
                  srli         a2, s1, 2
                  addi         sp, zero, 11 #init loop 0 limit
                  and          t5, s5, a0
                  and          s1, t6, sp
                  xori         a6, zero, 879
                  add          s4, a4, s8
                  sra          t2, a7, tp
                  slti         gp, s10, -1394
sub_4_5_0_t:      sltu         a6, s0, s7
                  srai         a3, a3, 4
                  srli         s10, s2, 5
                  andi         s10, s4, 502
                  slt          t1, a1, t3
                  xori         s11, t1, 1613
                  lui          s2, 273090
                  nop
                  addi         ra, ra, 4 #update loop 0 counter
                  add          t4, ra, a1
                  ori          s7, a0, 415
                  lui          t2, 523976
                  or           s5, s11, gp
                  xor          t5, a4, sp
                  sll          t0, gp, t4
                  blt          ra, sp, sub_4_5_0_t #branch for loop 0
                  auipc        t2, 986719
                  addi         sp, zero, -10 #init loop 1 counter
                  addi         t3, zero, -12 #init loop 1 limit
sub_4_4_1_t:      andi         t4, gp, 678
                  addi         sp, sp, -3 #update loop 1 counter
                  addi         a2, zero, 3 #init loop 0 counter
                  ori          a0, s7, -1010
                  addi         t0, zero, 6 #init loop 0 limit
sub_4_4_0_t:      sltu         s1, s8, zero
                  auipc        a4, 434812
                  addi         a2, a2, 5 #update loop 0 counter
                  blt          a2, t0, sub_4_4_0_t #branch for loop 0
                  bge          sp, t3, sub_4_4_1_t #branch for loop 1
                  sra          t2, s4, ra
                  addi         a6, zero, 5 #init loop 1 counter
                  add          s1, s9, s1
                  sltu         s11, s0, t3
                  sra          s11, tp, gp
                  addi         a2, zero, 20 #init loop 1 limit
                  nop
                  xor          s9, s5, s10
                  sra          tp, t4, s11
sub_4_2_1_t:      ori          t4, tp, -568
                  auipc        s11, 458568
                  and          t0, s5, s9
                  addi         a6, a6, 3 #update loop 1 counter
                  addi         tp, ra, -1067
                  addi         t1, zero, -5 #init loop 0 counter
                  sll          zero, a2, s6
                  addi         gp, zero, 18 #init loop 0 limit
sub_4_2_0_t:      sub          t0, a0, gp
                  sra          t4, s7, a1
                  add          t5, ra, s7
                  addi         t1, t1, 8 #update loop 0 counter
                  lui          s11, 737514
                  blt          t1, gp, sub_4_2_0_t #branch for loop 0
                  blt          a6, a2, sub_4_2_1_t #branch for loop 1
                  auipc        a1, 17404
                  and          t3, s7, a1
                  sltu         tp, s10, a2
                  and          a3, t5, s11
                  srli         t0, t5, 22
                  beq          s8, a4, 9f
                  or           a3, s10, a5
                  bltu         sp, ra, 26f
                  sll          gp, ra, s10
                  nop
9:                blt          s11, tp, 23f
                  and          a5, a2, t0
                  sltiu        a1, t1, -750
                  bgeu         s2, t3, 21f
                  slli         a6, t5, 15
                  bne          s0, tp, 28f
                  bge          t4, t6, 32f
                  auipc        gp, 306623
                  beq          s11, t2, 27f
                  or           s2, t5, a0
                  andi         s10, a5, -1797
                  beq          s1, s4, 24f
21:               slti         ra, gp, -1429
                  slli         a5, t6, 17
23:               slt          s2, s3, s2
24:               blt          s2, s8, 36f
                  bge          t1, a6, 32f
26:               xor          t3, s7, a2
27:               bgeu         s8, t1, 31f
28:               srli         ra, t3, 21
                  bne          a1, a1, 38f
                  andi         s7, s7, -1843
31:               sra          gp, t4, s7
32:               nop
                  or           a2, s9, t0
                  xori         t3, t5, 1917
                  sub          a0, a6, zero
36:               ori          ra, a7, -2007
                  sub          gp, s2, s3
38:               sra          a4, sp, a5
                  bgeu         sp, t1, 52f
                  sltiu        s2, s9, -1311
                  bltu         a3, t2, 54f
                  sra          sp, s0, a6
                  lui          s2, 149734
                  sltiu        ra, a6, -1975
                  srl          sp, s2, t2
                  ori          a6, t3, 638
                  ori          t4, s10, 1096
                  bltu         s6, s8, 61f
                  sltiu        zero, a1, -944
                  bge          zero, a6, 65f
                  blt          t5, tp, 71f
52:               bne          s7, t2, 53f
53:               xor          t3, t3, t0
54:               slli         a3, gp, 13
                  bne          tp, s1, 62f
                  add          t2, s9, s5
                  add          a4, s3, t2
                  nop
                  beq          a6, s9, 69f
                  bge          s7, t2, 76f
61:               srli         s9, t2, 27
62:               beq          a1, s4, 80f
                  bge          s8, t0, 78f
                  srli         s8, t3, 12
65:               blt          tp, t5, 69f
                  blt          s0, t0, 73f
                  andi         s1, a5, 1087
                  nop
69:               beq          t4, t6, 76f
                  blt          s8, s2, 71f
71:               bltu         a0, t1, 74f
                  srli         t2, a1, 21
73:               lui          s7, 655493
74:               blt          t0, s10, 78f
                  andi         s10, a7, 733
76:               xori         s1, t5, -579
                  auipc        gp, 162368
78:               ori          s8, s8, -271
                  slti         t0, t0, -564
80:               auipc        s9, 880259
                  bgeu         s9, t6, 92f
                  sltu         s7, s2, a5
                  slti         ra, s10, 845
                  sltiu        a6, t2, -1398
                  ori          tp, s6, 480
                  slti         t1, s4, -330
                  add          s11, s2, s6
                  sub          a1, gp, s11
                  addi         sp, tp, -1109
                  sltu         s2, s9, a3
                  andi         s5, s2, 113
92:               andi         t5, a1, 777
                  add          s10, s1, a4
                  sll          a0, a2, t3
                  blt          s5, s1, 105f
                  lui          s4, 434366
                  blt          sp, s0, 104f
                  slt          s10, ra, gp
                  sltu         tp, a1, s2
                  add          s7, gp, s9
                  sra          a0, ra, s6
                  bne          t1, t6, 114f
                  auipc        t1, 262658
104:              andi         t0, t0, -1522
105:              bne          s8, gp, 118f
                  nop
                  sltu         s9, zero, s7
                  srai         a6, s0, 19
                  or           a0, s10, t0
                  slli         t4, a6, 26
                  sll          gp, s9, a2
                  slti         a0, s11, -1060
                  beq          s4, a2, 130f
114:              srl          s8, t3, sp
                  bgeu         a4, t2, 124f
                  bge          a0, s5, 136f
                  addi         zero, s7, -29
118:              andi         a0, t5, 954
                  lui          a5, 138980
                  srl          s6, s6, ra
                  nop
                  slli         s6, t2, 7
                  lui          a3, 297462
124:              lui          t3, 124316
                  slt          s11, s5, a0
                  slti         a0, gp, -873
                  auipc        sp, 413724
                  sltu         a2, s8, s8
                  sub          t0, t3, s6
130:              add          s8, t3, s7
                  bne          t1, s11, 144f
                  auipc        a2, 320801
                  addi         t2, zero, 10 #init loop 0 counter
                  add          sp, s2, t0
                  and          t5, a4, s2
                  addi         t1, zero, 18 #init loop 0 limit
                  add          s7, a6, a7
sub_4_0_0_t:      and          s2, t2, a6
                  addi         t2, t2, 2 #update loop 0 counter
                  and          tp, a5, a1
                  nop
                  add          tp, s8, s5
                  sub          t4, s7, s11
                  auipc        s1, 500065
                  lui          sp, 425144
                  bltu         t2, t1, sub_4_0_0_t #branch for loop 0
                  slli         s10, s8, 29
                  auipc        a3, 693751
                  addi         gp, s9, 695
                  bgeu         sp, a2, 150f
136:              beq          tp, a0, 150f
                  sltiu        gp, zero, 559
                  sub          s8, zero, s0
                  srli         a6, s0, 31
                  and          a2, s2, a3
                  slt          t4, s7, a0
                  slti         zero, tp, -771
                  srl          a7, s0, s6
144:              auipc        s4, 497879
                  or           t0, a0, t6
                  addi         a0, gp, -519
                  slti         s10, t1, -228
                  lui          gp, 331334
                  bgeu         a5, gp, 156f
150:              slli         t2, a7, 14
                  bgeu         t0, t3, 167f
                  srai         t4, a1, 18
                  bltu         s7, a3, 168f
                  addi         a3, s4, -1562
                  xori         s4, s9, 933
156:              bne          s0, s11, 166f
                  xor          s9, ra, sp
                  sltu         s9, t4, s3
                  or           s6, t5, a4
                  slt          zero, a5, a2
                  andi         tp, s7, 1120
                  beq          ra, s10, 166f
                  sll          t5, t3, s11
                  blt          s8, t3, 182f
                  lui          s1, 707628
166:              beq          gp, s0, 180f
167:              xor          a6, s5, s11
168:              slt          a6, gp, s11
                  sltiu        t4, t2, -1781
                  add          a2, t1, a0
                  sub          t2, t1, a7
                  sll          a2, gp, s4
                  sltiu        s8, tp, -721
                  srl          a7, t0, s6
                  addi         s8, s9, 635
                  slli         tp, t3, 31
                  slti         t3, s8, 304
                  sll          t2, zero, a4
                  auipc        s11, 9639
180:              andi         s8, s0, 1727
                  srl          s2, t4, a1
182:              blt          a5, t4, 191f
                  or           s6, a7, t3
                  xor          t5, t4, gp
                  sll          a1, s6, a7
                  srli         t5, s1, 23
                  xor          a3, t6, a7
                  bltu         s7, s5, 191f
                  sltiu        t3, gp, -102
                  sra          t1, s5, t5
191:              beq          s4, a7, 195f
                  andi         t0, a3, -287
                  blt          s0, a5, 204f
                  beq          s4, sp, 195f
195:              lui          a0, 783815
                  srl          t0, t2, a1
                  srli         a3, s5, 16
                  srai         s2, s7, 21
                  blt          s0, zero, 206f
                  slti         s1, s4, -80
                  and          gp, a0, a0
                  slt          a1, a7, a6
                  lui          t1, 899096
204:              lui          tp, 124239
                  nop
206:              bge          ra, tp, 207f
207:              srl          a5, sp, s10
                  addi         s4, a3, -1693
                  and          t0, s0, t4
                  xor          a3, a6, a7
                  or           a3, s1, s6
                  sra          s11, t5, s1
                  auipc        t1, 205209
                  auipc        t0, 661048
                  xor          s8, t1, s3
                  bge          a2, s11, 236f
                  bne          t2, a0, 224f
                  and          gp, tp, a2
                  sll          t3, s7, a4
                  slti         a3, t5, -1783
                  sltiu        sp, s4, 885
                  slti         a6, a4, 1605
                  lui          t3, 506576
224:              sra          s6, s4, ra
                  bge          t1, s11, 238f
                  bne          t0, ra, 230f
                  ori          a0, ra, 1836
                  add          a3, s3, s8
                  auipc        zero, 233485
230:              srl          a7, s2, s11
                  or           s4, s1, t2
                  sltiu        gp, t4, -1955
                  andi         a5, s10, -197
                  lui          a1, 911500
                  andi         t3, s5, 1309
236:              addi         s5, s2, 1527
                  srli         s8, s11, 1
238:              blt          s6, a7, 243f
                  bltu         s6, s5, 243f
                  slti         s10, t2, -1325
                  srai         s1, a3, 17
                  bltu         ra, a3, 246f
243:              slti         s7, s5, 190
                  blt          a1, a2, 257f
                  sub          t3, t5, t1
246:              srai         a0, t4, 17
                  sra          s7, t0, s6
                  sub          s1, ra, a5
                  and          s5, zero, t0
                  sltiu        sp, sp, -1927
                  bge          s10, a6, 261f
                  or           t4, sp, t5
                  bne          t4, zero, 273f
                  slt          a3, a7, a7
                  sub          t3, a3, s4
                  addi         tp, zero, 1 #init loop 0 counter
                  addi         ra, zero, -20 #init loop 0 limit
sub_4_7_0_t:      lui          gp, 482192
                  addi         tp, tp, -2 #update loop 0 counter
                  bge          tp, ra, sub_4_7_0_t #branch for loop 0
                  slt          a5, s1, s9
                  srli         tp, s11, 18
257:              andi         s8, s10, -587
                  or           a7, s11, a0
                  slti         a6, gp, 80
                  andi         a7, s0, -197
261:              bge          s3, t1, 266f
                  ori          s8, t2, 1011
                  blt          ra, a6, 274f
                  bgeu         sp, s6, 268f
                  bgeu         t6, s7, 269f
266:              srai         a2, t5, 14
                  andi         t2, a4, -973
268:              or           s4, s4, s11
269:              sub          a6, a4, s8
                  sra          gp, gp, a4
                  slti         s4, a0, -1940
                  addi         s6, zero, 6 #init loop 1 counter
                  auipc        gp, 504681
                  addi         t4, zero, -7 #init loop 1 limit
sub_4_3_1_t:      or           s1, s3, zero
                  slt          a7, s0, s11
                  addi         s6, s6, -5 #update loop 1 counter
                  ori          t2, a6, -1145
                  addi         a3, zero, -3 #init loop 0 counter
                  sltiu        s11, sp, 1230
                  nop
                  srl          s8, s11, s4
                  addi         s4, zero, 10 #init loop 0 limit
                  ori          t1, sp, 1789
                  addi         s5, a1, 1295
                  sub          s7, s0, a3
                  srli         s7, s10, 31
sub_4_3_0_t:      ori          a5, s2, -623
                  addi         a3, a3, 9 #update loop 0 counter
                  auipc        ra, 594976
                  sra          a2, s2, s10
                  blt          a3, s4, sub_4_3_0_t #branch for loop 0
                  bge          s6, t4, sub_4_3_1_t #branch for loop 1
                  andi         s9, gp, -1252
                  sltu         s2, ra, s2
273:              lui          a1, 65078
274:              slli         a7, t5, 24
                  bltu         a5, a2, 279f
                  srai         t4, zero, 23
                  srli         a4, a1, 6
                  bgeu         sp, s10, 291f
279:              and          s2, s9, tp
                  sltu         a7, ra, t3
                  slli         a0, s3, 23
                  sltu         a3, t1, t4
                  and          s6, t1, s0
                  lui          s6, 599558
                  add          a6, s3, t6
                  sll          t3, t2, s3
                  sra          a5, t4, s11
                  sltiu        a4, s7, 509
                  nop
                  sltiu        s10, t1, -1600
291:              srli         t4, s11, 7
                  xor          t1, sp, s10
                  srli         a5, s7, 4
                  auipc        t5, 245237
                  xor          a2, s1, a0
                  auipc        gp, 117874
                  sra          s4, t4, s9
                  srl          gp, s10, s2
                  sub          t5, a7, tp
                  lui          a0, 746250
                  srl          t4, t4, s4
                  bltu         a4, s11, 311f
                  addi         t1, a7, 51
                  ori          a3, sp, -764
                  sra          a2, t6, s4
                  lui          s10, 820168
                  srli         ra, a4, 4
                  auipc        s2, 499082
                  bltu         t6, t5, 316f
                  ori          t3, a0, -714
311:              auipc        a7, 613728
                  slt          s6, gp, s1
                  bltu         a5, s10, 323f
                  slt          s11, s7, tp
                  sub          s8, s5, s4
316:              sltiu        a2, a1, 1235
                  or           gp, t3, s4
                  auipc        s10, 312650
                  slti         s7, a4, 1345
                  srli         a1, ra, 30
                  or           s7, s4, t6
                  add          t2, a4, a0
323:              auipc        t4, 348449
                  sltiu        a4, s2, -1689
                  bne          s0, s8, 342f
                  nop
                  srl          sp, a2, s3
                  ori          t5, t3, -1876
                  nop
                  ori          s4, a6, -1998
                  slti         s10, t3, 990
                  slti         s4, zero, -154
                  andi         a0, gp, 438
                  xori         s9, t3, -1839
                  slli         zero, t5, 21
                  sra          a6, gp, s0
                  andi         s10, sp, 1050
                  ori          a1, tp, 181
                  sll          a2, sp, zero
                  xori         ra, s9, -793
                  nop
342:              srli         s4, t5, 9
                  bltu         a4, a5, 355f
                  auipc        ra, 254240
                  bgeu         s7, gp, 346f
346:              xor          t4, a3, s11
                  xor          a5, t4, a0
                  ori          sp, a3, 1885
                  sub          s10, s11, s11
                  slli         a6, s4, 14
                  blt          s8, s2, 367f
                  srl          a7, a6, s1
                  slli         a5, t1, 17
                  sltiu        s1, a6, 36
355:              auipc        zero, 222788
                  slli         s5, a3, 21
                  nop
                  srl          s4, a7, s0
                  slt          t1, t1, s1
                  and          s9, s6, s0
                  nop
                  srli         s9, t1, 9
                  bgeu         s4, t1, 376f
                  xori         a1, s7, 422
                  xori         s9, t4, -1600
                  add          s1, ra, t3
367:              bgeu         gp, t2, 374f
                  srl          s5, zero, s8
                  sra          a4, t2, t4
                  addi         s4, zero, 8 #init loop 0 counter
                  andi         t5, a6, 595
                  slt          a2, s8, sp
                  addi         sp, zero, 9 #init loop 0 limit
sub_4_1_0_t:      sltu         s6, a1, tp
                  nop
                  slti         s2, s9, 1299
                  addi         s4, s4, 6 #update loop 0 counter
                  slt          s6, a5, t2
                  xor          zero, a6, zero
                  auipc        a1, 338750
                  xori         a7, s3, 1722
                  auipc        s11, 654440
                  blt          s4, sp, sub_4_1_0_t #branch for loop 0
                  lui          a1, 75171
                  srli         gp, a2, 20
                  xori         s6, t4, -617
                  ori          gp, s4, 92
                  ori          t4, s10, -1513
374:              addi         s2, a2, 1654
                  or           s11, s7, t6
376:              sll          t3, a5, tp
                  xor          s10, a4, sp
                  sltiu        s1, s4, -1852
                  sub          s2, a3, s10
                  slli         a6, s8, 17
                  sltiu        t4, sp, 412
                  sltu         t0, t2, s11
                  add          s4, sp, a3
                  ori          s6, s0, 518
                  nop
                  sltu         t0, a3, s5
                  blt          sp, s0, 405f
                  ori          tp, a6, 729
                  srli         s2, a6, 3
                  srai         s7, t6, 9
                  sltiu        s4, t3, 937
                  addi         s1, s10, -873
                  and          s2, s10, a2
                  bgeu         t4, s7, 403f
                  bge          s6, gp, 402f
                  slti         a3, s1, -1518
                  blt          t0, s11, 414f
                  slli         a2, s1, 19
                  slli         s4, gp, 0
                  slt          t2, a7, a4
                  sra          s1, s9, s11
402:              bge          s10, t0, 409f
403:              beq          a3, t5, 406f
                  ori          a4, gp, -990
405:              sltu         a5, s2, s9
406:              nop
                  xori         s2, s6, -620
                  blt          s8, t0, 414f
409:              ori          a1, s3, 580
                  sltiu        s4, a0, 960
                  andi         ra, sp, 1839
                  addi         t4, t4, -217
                  sltu         a5, sp, s5
414:              srl          a5, a0, a7
                  lw           t1, 4(s0)
                  addi         s7, s8, 181
                  slli         a0, s4, 15
                  or           a5, s2, a2
                  addi         s0, s0, 56
                  and          t4, t1, s5
                  slt          t5, s5, s7
                  addi         s8, a2, -1186
                  xori         s8, s0, -1770
581:              addi x1, x6, 0
581:              jalr x1, x1, 0
sub_3:            beq          t0, t4, sub_3_stack_p
sub_3_stack_p:    addi         s0, s0, -44
                  nop
                  sw           t1, 4(s0)
                  and          t2, s2, gp
                  lui          a1, 108111
                  auipc        s10, 334148
                  addi         s2, zero, -4 #init loop 1 counter
                  sll          s5, s1, t2
                  or           s4, a2, t0
                  xor          s9, s5, s11
                  sra          ra, s3, sp
                  xor          a1, s6, s0
                  lui          s7, 848863
                  addi         t1, zero, 13 #init loop 1 limit
sub_3_8_1_t:      slt          s11, s7, t5
                  xori         a6, gp, -1275
                  addi         s2, s2, 7 #update loop 1 counter
                  sltu         s8, t3, s6
                  nop
                  addi         a4, zero, -3 #init loop 0 counter
                  slti         tp, a2, -1448
                  addi         a7, zero, -9 #init loop 0 limit
                  auipc        a2, 782421
sub_3_8_0_t:      nop
                  xor          sp, tp, s2
                  addi         a4, a4, -5 #update loop 0 counter
                  bge          a4, a7, sub_3_8_0_t #branch for loop 0
                  xori         s6, t6, 644
                  srl          s8, s6, gp
                  bltu         s2, t1, sub_3_8_1_t #branch for loop 1
                  slli         zero, s3, 21
                  addi         a0, zero, 1 #init loop 1 counter
                  addi         s1, zero, -19 #init loop 1 limit
sub_3_3_1_t:      sltiu        s6, s2, 393
                  addi         a0, a0, -7 #update loop 1 counter
                  addi         tp, zero, -8 #init loop 0 counter
                  sltu         a1, t3, a5
                  addi         gp, zero, -18 #init loop 0 limit
sub_3_3_0_t:      xori         zero, t1, 735
                  addi         tp, tp, -2 #update loop 0 counter
                  beq          tp, gp, sub_3_3_0_t #branch for loop 0
                  bge          a0, s1, sub_3_3_1_t #branch for loop 1
                  sltiu        t5, s2, 382
                  addi         s8, zero, 5 #init loop 0 counter
                  addi         a6, s6, 505
                  slti         s4, t2, 813
                  nop
                  sll          t2, s4, t1
                  auipc        t1, 403312
                  addi         sp, zero, -12 #init loop 0 limit
                  nop
sub_3_1_0_t:      slti         a7, s0, -360
                  srai         a7, s2, 3
                  addi         s8, s8, -1 #update loop 0 counter
                  or           s11, s8, a5
                  nop
                  slti         s9, t1, -1566
                  auipc        s11, 598774
                  or           s5, s9, s2
                  sll          t4, a3, a1
                  sltiu        s7, a0, -466
                  sub          s11, a0, t6
                  bge          s8, sp, sub_3_1_0_t #branch for loop 0
                  and          t3, a7, a5
                  addi         t4, zero, -1 #init loop 1 counter
                  addi         s9, zero, -19 #init loop 1 limit
sub_3_2_1_t:      lui          s7, 415546
                  addi         t4, t4, -3 #update loop 1 counter
                  lui          a7, 231763
                  addi         a6, zero, -4 #init loop 0 counter
                  addi         ra, zero, 11 #init loop 0 limit
sub_3_2_0_t:      slt          a3, ra, s10
                  addi         a6, a6, 1 #update loop 0 counter
                  bltu         a6, ra, sub_3_2_0_t #branch for loop 0
                  bne          t4, s9, sub_3_2_1_t #branch for loop 1
                  sltu         t2, tp, s4
                  addi         a7, zero, 8 #init loop 1 counter
                  addi         sp, zero, -17 #init loop 1 limit
sub_3_7_1_t:      lui          s8, 109092
                  addi         a7, a7, -7 #update loop 1 counter
                  addi         s6, zero, -2 #init loop 0 counter
                  addi         s2, zero, 16 #init loop 0 limit
sub_3_7_0_t:      and          a2, ra, t1
                  addi         s6, s6, 9 #update loop 0 counter
                  beq          s6, s2, sub_3_7_0_t #branch for loop 0
                  bge          a7, sp, sub_3_7_1_t #branch for loop 1
                  or           s9, s8, a1
                  addi         a3, zero, 7 #init loop 0 counter
                  srai         t2, t5, 15
                  sll          a5, t3, t5
                  slt          tp, a2, ra
                  slti         a1, t4, 1052
                  addi         t3, zero, 13 #init loop 0 limit
                  and          a7, a0, t1
sub_3_5_0_t:      xor          t0, s4, s0
                  andi         t1, t4, 1471
                  sltu         t2, ra, s8
                  nop
                  lui          s5, 439479
                  auipc        s2, 33843
                  addi         a3, a3, 3 #update loop 0 counter
                  addi         zero, s11, -307
                  beq          a3, t3, sub_3_5_0_t #branch for loop 0
                  slli         s7, s0, 10
                  addi         t0, zero, 6 #init loop 1 counter
                  slt          ra, sp, t2
                  lui          a0, 553548
                  and          a1, a4, s10
                  addi         a6, zero, 9 #init loop 1 limit
sub_3_9_1_t:      lui          gp, 858737
                  and          s2, a0, s7
                  addi         t0, t0, 5 #update loop 1 counter
                  xori         sp, a3, 217
                  addi         a7, zero, 4 #init loop 0 counter
                  addi         s9, zero, -13 #init loop 0 limit
                  auipc        s5, 310716
sub_3_9_0_t:      nop
                  andi         tp, s11, -1167
                  addi         a7, a7, -5 #update loop 0 counter
                  srli         a2, t4, 26
                  add          a5, tp, s9
                  addi         s7, a7, 540
                  lui          s4, 158273
                  bge          a7, s9, sub_3_9_0_t #branch for loop 0
                  sltiu        s8, a4, 1990
                  sltiu        s5, t2, -1045
                  sub          t5, s10, a6
                  xori         t3, s10, 132
                  slt          a5, a6, ra
                  blt          t0, a6, sub_3_9_1_t #branch for loop 1
                  srl          a3, a0, t3
                  addi         a0, zero, -2 #init loop 1 counter
                  slli         s8, t1, 5
                  srl          gp, t6, s2
                  auipc        a4, 550137
                  srl          a4, ra, t3
                  lui          zero, 754860
                  sltiu        a7, a7, -1607
                  srl          a6, gp, s7
                  addi         s4, zero, 6 #init loop 1 limit
                  or           a1, gp, s9
sub_3_6_1_t:      nop
                  addi         a0, a0, 8 #update loop 1 counter
                  auipc        t1, 85904
                  addi         a3, zero, 9 #init loop 0 counter
                  addi         s6, zero, 9 #init loop 0 limit
sub_3_6_0_t:      ori          zero, a0, -310
                  xor          s10, s8, s10
                  addi         a3, a3, -7 #update loop 0 counter
                  srl          zero, a1, s10
                  bgeu         a3, s6, sub_3_6_0_t #branch for loop 0
                  beq          a0, s4, sub_3_6_1_t #branch for loop 1
                  sll          a1, t3, s0
                  addi         s2, zero, 7 #init loop 0 counter
                  addi         s9, zero, 5 #init loop 0 limit
sub_3_0_0_t:      or           a6, t3, gp
                  addi         s2, s2, -3 #update loop 0 counter
                  bgeu         s2, s9, sub_3_0_0_t #branch for loop 0
                  sra          s7, t0, s8
                  addi         sp, zero, 4 #init loop 1 counter
                  addi         a6, zero, -14 #init loop 1 limit
                  srl          s7, s8, tp
sub_3_4_1_t:      lui          t5, 366655
                  xor          s5, s9, a0
                  addi         sp, sp, -9 #update loop 1 counter
                  addi         t3, zero, 0 #init loop 0 counter
                  addi         s9, zero, -14 #init loop 0 limit
sub_3_4_0_t:      xor          t4, a6, t5
                  nop
                  addi         t3, t3, -5 #update loop 0 counter
                  bge          t3, s9, sub_3_4_0_t #branch for loop 0
                  sltiu        tp, s7, -1405
                  beq          sp, a6, sub_3_4_1_t #branch for loop 1
                  srl          s11, ra, a5
                  bgeu         a7, a7, 7f
                  srl          t4, t1, sp
                  sll          s7, t4, s3
                  sll          s7, s6, s8
                  beq          zero, s11, 16f
                  bltu         s9, t4, 15f
                  sltu         t5, t1, a2
7:                xori         t0, t0, -780
                  ori          s5, a6, 733
                  bge          s11, ra, 24f
                  slli         t5, s1, 19
                  srl          t1, t6, s5
                  blt          gp, s11, 32f
                  sltu         t1, s9, tp
                  slti         sp, t0, -1824
15:               or           a5, s8, t4
16:               ori          a2, t5, -151
                  addi         a0, s3, 922
                  sltiu        s6, a1, -1428
                  slt          a5, a5, a7
                  bltu         s0, a4, 34f
                  nop
                  blt          a2, sp, 23f
23:               beq          s10, a0, 43f
24:               bne          t6, a5, 35f
                  sra          s1, s9, t6
                  or           t2, t1, a4
                  slti         t5, s5, 1718
                  sltiu        s10, s1, 1375
                  addi         s2, a1, 541
                  slli         a1, s10, 15
                  nop
32:               lui          s10, 368056
                  slt          t2, zero, t2
34:               lui          t0, 277388
35:               ori          s2, s1, -1767
                  srli         t5, s9, 20
                  addi         a2, s9, -1386
                  sra          t0, t6, a2
                  srai         s9, s5, 20
                  bltu         s7, s3, 48f
                  and          a2, a7, a5
                  addi         s4, s4, 1910
43:               bne          s10, a2, 63f
                  addi         s2, tp, 198
                  or           a6, t2, a2
                  bne          t4, s2, 61f
                  lui          t1, 318477
48:               bltu         s1, a3, 51f
                  and          s9, s0, a0
                  or           a6, s4, tp
51:               sltiu        a6, ra, -1080
                  srai         a1, s6, 19
                  bge          sp, a6, 66f
                  slli         sp, s2, 19
                  sltiu        a7, s0, -677
                  sltu         s2, zero, t0
                  sra          s1, a3, a0
                  bltu         s1, a4, 72f
                  xori         t4, t6, 1247
                  beq          t1, t3, 71f
61:               ori          zero, a0, 457
                  sll          s9, s1, sp
63:               slt          s8, s0, s3
                  slti         a5, tp, 1320
                  slli         ra, t6, 1
66:               srai         s7, t2, 1
                  slti         a0, s6, 21
                  addi         a7, a7, 376
                  srl          sp, s3, t0
                  slt          s9, a5, t5
71:               sll          tp, t3, s7
72:               sub          s9, s10, t0
                  nop
                  slli         s11, s8, 28
                  bltu         t1, zero, 89f
                  andi         s2, s6, 1041
                  slli         s9, t3, 26
                  srli         a2, s11, 4
                  beq          a0, a2, 98f
                  auipc        s6, 295104
                  and          a2, s7, s7
                  sra          sp, t6, s2
                  slli         t2, t2, 21
                  xor          a1, s11, t6
                  xor          tp, t2, a4
                  bltu         a5, t6, 88f
                  or           a0, tp, a2
88:               bgeu         t0, a4, 105f
89:               sltiu        s10, s9, -691
                  ori          t5, t3, -500
                  sra          t4, s11, a1
                  or           t4, s2, a3
                  xor          s1, s0, ra
                  beq          s9, a6, 107f
                  bne          s11, t6, 108f
                  bne          t0, t3, 103f
                  addi         a3, s8, -1054
98:               slli         a5, zero, 19
                  sub          t4, a2, s5
                  sll          a6, s5, t1
                  addi         t5, t6, 209
                  srai         s1, s3, 24
103:              srai         t3, s1, 23
                  bgeu         ra, s3, 115f
105:              auipc        t1, 58325
                  sub          t1, a5, s6
107:              sra          s6, gp, s2
108:              srai         s1, s9, 2
                  lui          sp, 94179
                  bne          zero, s5, 113f
                  andi         t4, t3, -734
                  srai         t5, s4, 21
113:              bltu         gp, t5, 128f
                  sra          s5, gp, sp
115:              bge          a1, s3, 122f
                  xor          a4, t5, s9
                  slli         t0, t5, 19
                  sltiu        a5, s7, -395
                  bne          a2, a6, 133f
                  bne          tp, s4, 132f
                  bge          s6, a0, 125f
122:              bgeu         t5, zero, 130f
                  andi         t5, s7, -964
                  sltu         s9, gp, a7
125:              sra          t1, s0, s10
                  nop
                  sltu         s9, t4, s6
128:              andi         a3, t6, 342
                  slt          t1, a1, s3
130:              xori         s8, s6, 437
                  slt          tp, t4, t3
132:              srli         t3, s4, 10
133:              srli         t1, s6, 1
                  lui          a7, 507943
                  sltiu        zero, s8, -1125
                  bne          a0, s1, 143f
                  srli         a7, s2, 21
                  bltu         gp, tp, 157f
                  bltu         a5, a5, 159f
                  srai         t1, a5, 22
                  bne          s7, a3, 161f
                  slt          a7, s6, a2
143:              bne          a0, t2, 144f
144:              sltiu        zero, s8, -694
                  srl          t0, a7, s10
                  sltiu        tp, sp, -1717
                  auipc        a3, 526094
                  add          a2, s11, s3
                  srai         tp, t6, 15
                  srl          a1, a0, t0
                  and          a4, s7, s8
                  bge          t4, t6, 162f
                  nop
                  ori          ra, a7, -483
                  bne          a1, gp, 168f
                  sltiu        t1, t5, -1992
157:              blt          zero, a0, 160f
                  sltu         t4, s4, s7
159:              andi         t3, t3, 239
160:              srli         ra, s0, 19
161:              xor          tp, a4, s7
162:              addi         a0, s4, -423
                  beq          s11, s1, 177f
                  nop
                  xor          s5, s10, s7
                  srli         s10, sp, 29
                  sra          t3, s10, t4
168:              sltu         t5, t4, t4
                  xori         t4, ra, 1080
                  add          sp, s6, a1
                  ori          a3, s6, -11
                  beq          t2, s3, 184f
                  bltu         a3, a3, 184f
                  sltu         s8, a5, s4
                  slt          s7, s6, s7
                  add          s8, t2, s8
177:              sll          s2, tp, t0
                  addi         a3, a0, 122
                  xori         a0, tp, 39
                  sub          s1, t5, gp
                  or           s11, gp, s9
                  nop
                  slli         s6, t3, 23
184:              srli         s8, s6, 15
                  addi         s7, t6, 344
                  xor          s9, a6, tp
                  or           a4, zero, t4
                  sll          a0, a2, a7
                  srl          gp, s11, s7
                  srai         s7, sp, 22
                  sltu         t5, a6, sp
                  srai         a5, tp, 24
                  ori          t5, tp, -502
                  sub          ra, a2, a4
                  bltu         t3, a4, 210f
                  sll          s10, s3, s7
                  bge          a2, a0, 204f
                  addi         a4, s8, 1835
                  nop
                  srai         a6, a7, 13
                  andi         s2, t0, -1159
                  auipc        a2, 939267
                  srai         s7, t5, 29
204:              lui          s10, 780302
                  slti         s7, t1, -130
                  and          a2, ra, s1
                  srl          a6, s11, s11
                  slt          s5, t1, a6
                  bge          s1, s3, 223f
210:              bltu         s9, t3, 224f
                  srli         s5, t0, 26
                  srli         s7, a7, 13
                  lui          s2, 25684
                  bne          s11, s6, 225f
                  sltiu        a2, s10, 799
                  sra          a4, sp, ra
                  and          s9, s0, t1
                  srl          t1, a5, s6
                  add          s8, s1, s4
                  srl          s9, s4, s6
                  srl          a4, s8, t5
                  slli         a5, t4, 16
223:              auipc        a5, 32793
224:              ori          t3, s1, -1715
225:              xori         a1, s2, -58
                  and          s8, a0, sp
                  sltu         tp, sp, a4
                  blt          s10, s2, 231f
                  slli         a6, tp, 23
                  auipc        ra, 903898
231:              slti         t0, t0, -181
                  bgeu         t0, s10, 247f
                  or           s10, gp, s11
                  xori         zero, s7, -602
                  slli         t4, s1, 2
                  sra          t5, s11, a4
                  and          s8, ra, s11
                  sltiu        a0, gp, 1663
                  addi         s7, t3, 1612
                  lui          t1, 65411
                  bge          s8, t3, 248f
                  bltu         ra, a2, 255f
                  beq          t3, s5, 257f
                  xor          t0, t1, t4
                  srai         a5, s4, 29
                  ori          t2, s3, 1399
                  sltiu        t4, a0, 1382
                  la           s6, sub_4
                  nop
                  addi         s6, s6, 330
                  sltu         t4, a6, tp
                  addi         a4, zero, -963
                  add          t0, s5, a0
sub_3_j4:         jalr         t1, s6, -330 #jump sub_3 -> sub_4
247:              auipc        s4, 434270
248:              sltiu        a3, a6, -1506
                  addi         zero, a7, 1032
                  sra          s1, a0, zero
                  xor          s1, s6, ra
                  srai         s5, a2, 13
                  and          sp, sp, s5
                  bltu         s4, s0, 269f
255:              auipc        a5, 372625
                  sra          s11, s1, s2
257:              srli         s6, t1, 11
                  blt          a1, a7, 262f
                  lui          s7, 196664
                  lui          s8, 971451
                  bltu         t1, s11, 273f
262:              blt          s1, tp, 273f
                  andi         s9, a6, 820
                  and          t5, s11, a0
                  ori          s8, tp, -597
                  add          t2, t1, s9
                  beq          s1, tp, 280f
                  beq          s8, a2, 285f
269:              sltiu        s4, s10, -1163
                  sll          a0, t5, s4
                  srl          s11, a6, s1
                  srl          a7, t3, a7
273:              add          t4, t6, t6
                  xor          s6, gp, s7
                  bltu         t4, t2, 295f
                  add          s7, s10, t2
                  lui          t4, 170516
                  addi         sp, t2, 162
                  auipc        t1, 125462
280:              srl          tp, t4, t4
                  beq          a4, a7, 283f
                  bgeu         sp, t1, 289f
283:              or           t5, a3, a6
                  beq          s6, t1, 299f
285:              sra          s1, s10, s9
                  srl          s5, s3, a6
                  bge          sp, s1, 299f
                  srl          s4, s6, s2
289:              addi         a7, s5, 1847
                  bge          t5, a4, 298f
                  sra          a1, s9, a4
                  beq          s9, t5, 306f
                  sltu         a0, t4, sp
                  srai         t4, sp, 15
295:              and          s7, s2, s10
                  bltu         s7, s1, 309f
                  nop
298:              bne          s8, s4, 313f
299:              sltiu        tp, tp, -710
                  srai         s1, s4, 29
                  and          t3, a4, s7
                  sltiu        t5, t3, -1868
                  xor          s11, a5, a5
                  bltu         a0, s11, 318f
                  bltu         a4, a2, 319f
306:              beq          t2, s11, 308f
                  sltiu        s5, a2, -1053
308:              and          t4, a2, s11
309:              add          t2, t2, s3
                  bgeu         t3, s4, 330f
                  beq          t5, a6, 322f
                  slli         a0, s4, 3
313:              slt          zero, a3, a7
                  srli         t1, s1, 26
                  andi         a3, zero, 1839
                  sra          a4, sp, t1
                  xori         s11, a1, 1360
318:              slli         a0, tp, 24
319:              slt          a3, a4, a4
                  slli         t4, s3, 2
                  sltiu        s11, s11, -166
322:              blt          s9, s11, 335f
                  bge          sp, sp, 327f
                  srl          t0, s9, t2
                  sltiu        t2, a6, -1135
                  add          t0, zero, t1
327:              slt          t4, a4, a4
                  auipc        s7, 282911
                  addi         s10, gp, 648
330:              slti         s5, t3, 710
                  ori          t0, t2, 1854
                  nop
                  srai         t4, t0, 21
                  bltu         a5, s11, 354f
335:              or           s2, s11, sp
                  srai         s9, t1, 24
                  slt          a4, s1, a6
                  and          s5, t3, sp
                  beq          t4, s3, 346f
                  ori          t1, t5, -1953
                  lui          s9, 155267
                  or           a7, s3, gp
                  srl          t0, s5, a0
                  lui          s7, 454212
                  addi         tp, ra, -460
346:              or           a6, s4, t2
                  bne          s5, s6, 348f
348:              or           a1, t2, t4
                  and          a5, gp, a5
                  add          s8, s3, ra
                  bltu         a3, t6, 362f
                  bltu         t4, sp, 355f
                  xor          s5, s1, s6
354:              sll          t4, t3, t3
355:              xor          t5, s8, a4
                  xor          a6, s2, s6
                  add          ra, t6, sp
                  slti         s5, a7, -575
                  ori          a3, a1, 443
                  bge          tp, s4, 374f
                  or           s8, s3, s0
362:              andi         s7, a1, 1043
                  nop
                  sll          a4, a1, t6
                  auipc        a5, 69340
                  sra          s11, s9, s7
                  xor          s5, s5, gp
                  slt          t5, s10, t5
                  addi         a3, s7, 278
                  nop
                  xor          t1, s8, a2
                  addi         s1, t3, -1874
                  sll          s11, zero, t6
374:              auipc        t3, 484968
                  xor          t2, s3, t6
                  and          zero, a0, a3
                  sll          s8, s9, a0
                  sra          a7, s4, t5
                  xori         ra, a4, 2014
                  sltiu        s7, t0, 362
                  srai         t2, s2, 10
                  sltu         gp, t4, a3
                  and          t2, s8, t5
                  srli         s2, s0, 19
sub_3_j5:         jal          t1, sub_5 #jump sub_3 -> sub_5
                  sltiu        t5, s10, -1402
                  sltiu        a2, t1, -1228
                  lui          s11, 167756
                  sll          a4, s9, a6
                  andi         s7, t3, -630
                  xor          t1, t6, a6
                  sra          s11, a2, s8
                  bne          a6, gp, 398f
                  srai         s5, s5, 5
                  addi         s9, sp, 822
                  srai         s11, a5, 16
                  srl          a7, t5, a3
                  sltiu        s5, a5, -69
                  andi         a3, a4, -1364
                  sub          t3, t6, a4
                  slti         a1, t2, -87
                  ori          t5, s7, 181
                  srl          t1, a5, sp
                  nop
                  srli         zero, a1, 28
398:              blt          s9, sp, 417f
                  slti         t5, t2, 1237
                  srl          a0, t4, zero
                  bne          s5, s10, 416f
                  srli         gp, sp, 10
                  srl          gp, s0, a0
                  andi         sp, a4, -762
                  or           ra, s2, s1
                  sub          a5, s2, t5
                  add          a3, t5, s5
                  xor          t2, a4, s3
                  andi         s9, s3, -1828
                  and          a0, s0, t6
                  srl          t4, t1, zero
                  and          a1, a2, s1
                  bgeu         t2, s1, 420f
                  add          t0, s9, s2
                  xori         s10, s6, -347
416:              sltiu        a2, a6, 1260
417:              or           s9, s10, t5
                  auipc        t1, 105477
                  nop
420:              beq          s8, s8, 440f
                  add          gp, s9, s0
                  srai         s10, s9, 0
                  sub          gp, a6, s7
                  slti         t3, sp, 1664
                  xor          gp, s2, t0
                  andi         tp, t1, -376
                  and          gp, s2, s4
                  addi         s11, t4, 476
                  lui          a6, 268413
                  srai         s2, a2, 5
                  slti         s6, s8, -1245
                  auipc        a4, 786447
                  bltu         t4, s6, 444f
                  bge          s1, a6, 437f
                  srai         t2, s6, 4
                  and          s2, sp, t2
437:              lui          t0, 748062
                  bgeu         a0, a0, 455f
                  and          s9, s7, s3
440:              blt          s4, a3, 452f
                  add          a4, s0, s2
                  slli         s1, t0, 27
                  srli         s8, s11, 7
444:              bltu         a0, t5, 454f
                  and          a4, gp, t5
                  ori          zero, a1, 463
                  slli         s11, t5, 4
                  bltu         s6, t6, 460f
                  srai         t5, s1, 13
                  ori          s4, t1, 781
                  sltu         t1, s8, a3
452:              andi         t5, t2, -1548
                  bge          s11, s2, 466f
454:              addi         tp, s4, 834
455:              xori         s9, a7, 972
                  auipc        t4, 908998
                  sra          s1, ra, a4
                  andi         a4, s0, 1301
                  beq          a6, gp, 478f
460:              sltu         a5, sp, t3
                  sltu         gp, tp, s2
                  or           s7, t6, a1
                  ori          a4, s7, 1313
                  bne          a6, s1, 474f
                  sra          a2, a0, a0
466:              bgeu         a0, s8, 481f
                  slti         a5, s0, -1280
                  bge          a6, a4, 470f
                  sltu         a1, sp, s0
470:              bgeu         s3, s11, 477f
                  lui          s7, 840907
                  addi         tp, tp, 341
                  lui          a6, 661312
474:              lui          t5, 501263
                  slti         s6, s7, -326
                  sub          a2, s4, a1
477:              bne          a6, s8, 484f
478:              xori         a0, s4, -509
                  add          ra, s3, s4
                  lui          t2, 208062
481:              and          s9, t3, s8
                  auipc        a6, 571697
                  auipc        s1, 150390
484:              and          tp, s8, gp
                  nop
                  nop
                  and          t1, ra, t5
                  ori          s6, t6, 1622
                  add          a6, t4, s7
                  sltu         s11, sp, s5
                  sltu         t1, s2, t2
                  blt          s2, s0, 499f
                  lui          t3, 795346
                  srli         ra, a0, 3
                  sra          s7, a3, a7
                  srai         t5, a1, 13
                  beq          s8, a5, 511f
                  xori         a5, a3, -1794
499:              sltu         s1, t5, t1
                  and          a0, t6, s3
                  sra          sp, a0, a3
                  lui          a3, 777712
                  xor          t2, s4, s9
                  bgeu         s11, s1, 515f
                  beq          t6, a0, 506f
506:              add          ra, tp, t4
                  bgeu         a5, s9, 521f
                  sub          s4, t3, t6
                  blt          s8, sp, 524f
                  and          t4, t0, t6
511:              slt          sp, s2, s10
                  slli         s9, a6, 20
                  blt          s5, ra, 524f
                  addi         a0, t3, 1970
515:              bne          s7, s8, 518f
                  xor          zero, t4, s7
                  sltu         s9, s2, s5
518:              or           ra, s6, s5
                  lui          tp, 790056
                  blt          s6, s3, 524f
521:              sltu         s10, a5, a0
                  beq          a6, s1, 524f
                  slt          s9, a1, s6
524:              and          a6, s11, a6
                  lw           t1, 4(s0)
                  sub          a5, s8, a0
                  auipc        tp, 194693
                  sltiu        t5, a0, -263
                  slti         t4, t2, 542
                  nop
                  srai         a6, zero, 24
                  or           a4, s7, s5
                  addi         s0, s0, 44
                  addi         a2, ra, -487
726:              addi x14, x6, 0
726:              jalr x14, x14, 0
sub_5:            addi         a2, a7, 524
                  slt          ra, s2, s10
                  nop
                  addi         s0, s0, -32
                  sub          ra, s11, a5
                  srl          s7, a0, t1
                  slti         t0, s7, -1520
                  slti         s10, t3, 790
                  sw           t1, 4(s0)
                  xor          a3, t2, a6
                  andi         t2, a7, -1790
                  addi         s5, zero, 10 #init loop 0 counter
                  addi         tp, t3, -910
                  auipc        t1, 144049
                  addi         s9, zero, 16 #init loop 0 limit
                  xor          sp, s5, a7
sub_5_3_0_t:      xor          ra, t5, s7
                  lui          s4, 79518
                  srli         s6, a7, 31
                  lui          a7, 187440
                  addi         t3, t1, -67
                  slli         a2, t4, 23
                  lui          a1, 697016
                  sra          t3, sp, s0
                  addi         s5, s5, 6 #update loop 0 counter
                  sltu         s2, a1, s3
                  bne          s5, s9, sub_5_3_0_t #branch for loop 0
                  sra          zero, a6, a1
                  addi         a4, zero, -9 #init loop 0 counter
                  addi         a1, zero, -15 #init loop 0 limit
sub_5_6_0_t:      ori          a3, tp, 1951
                  addi         a4, a4, -2 #update loop 0 counter
                  bge          a4, a1, sub_5_6_0_t #branch for loop 0
                  or           s6, a5, a3
                  addi         a0, zero, -9 #init loop 0 counter
                  nop
                  srl          s4, s4, t6
                  addi         a7, zero, 13 #init loop 0 limit
                  slt          ra, s9, t2
sub_5_2_0_t:      sltu         t3, t1, ra
                  addi         a0, a0, 2 #update loop 0 counter
                  bltu         a0, a7, sub_5_2_0_t #branch for loop 0
                  slt          s10, s4, tp
                  addi         a4, zero, -2 #init loop 0 counter
                  nop
                  slt          sp, s3, s6
                  andi         s11, tp, 1435
                  and          t0, s4, s0
                  sltu         t2, a3, s0
                  sub          a6, t0, s2
                  sub          t1, gp, s9
                  andi         s8, a3, 1784
                  addi         s1, zero, 13 #init loop 0 limit
                  xor          s6, s0, s10
                  xori         a6, s11, -1445
                  sltiu        t1, s1, -869
                  srli         s2, s1, 22
                  and          gp, s8, s2
                  lui          a6, 648521
                  slli         s10, ra, 10
sub_5_5_0_t:      ori          a6, s9, 504
                  addi         a4, a4, 10 #update loop 0 counter
                  and          t5, a6, a0
                  nop
                  ori          t4, t6, -1291
                  auipc        gp, 90642
                  xori         a6, sp, -1538
                  srli         s4, s6, 31
                  slli         a1, zero, 0
                  lui          s9, 297921
                  blt          a4, s1, sub_5_5_0_t #branch for loop 0
                  slti         a7, s0, -480
                  addi         a1, zero, 9 #init loop 0 counter
                  ori          t5, a1, -989
                  addi         sp, s0, -1457
                  sub          a0, s0, t1
                  add          s9, s0, a6
                  sub          a0, s0, gp
                  addi         t4, zero, 9 #init loop 0 limit
                  slli         t2, a5, 30
                  sltiu        sp, s9, -944
sub_5_0_0_t:      sub          zero, s4, a4
                  srl          s1, s4, s6
                  sltiu        a7, s4, -563
                  or           s5, a0, sp
                  addi         a1, a1, -8 #update loop 0 counter
                  ori          s9, s10, -1665
                  xori         s1, t3, -1928
                  slti         zero, zero, -1165
                  auipc        s9, 770021
                  addi         gp, tp, 844
                  andi         t2, a2, -789
                  and          s5, s6, s10
                  slt          s4, zero, t6
                  and          ra, a5, s3
                  sltiu        s8, a1, 1579
                  sltu         a6, s10, t2
                  srli         a0, sp, 11
                  sub          a2, t6, t3
                  add          s2, sp, s5
                  bgeu         a1, t4, sub_5_0_0_t #branch for loop 0
                  sra          s8, t6, s1
                  addi         a0, zero, -10 #init loop 1 counter
                  sub          a6, tp, a5
                  add          ra, ra, t0
                  or           s10, t6, t4
                  srai         t0, a0, 10
                  addi         t2, zero, 12 #init loop 1 limit
                  andi         a4, s2, -1292
sub_5_4_1_t:      andi         ra, zero, -95
                  auipc        zero, 100284
                  addi         a0, a0, 1 #update loop 1 counter
                  add          a1, t2, gp
                  addi         s9, zero, -4 #init loop 0 counter
                  sltiu        gp, t0, 1206
                  xor          a7, a6, s11
                  sltu         s1, s1, a7
                  addi         s4, zero, 8 #init loop 0 limit
                  sll          s6, t5, t1
sub_5_4_0_t:      sltiu        ra, sp, 1788
                  ori          s1, s9, 1573
                  addi         s9, s9, 6 #update loop 0 counter
                  srli         t0, a7, 17
                  beq          s9, s4, sub_5_4_0_t #branch for loop 0
                  srli         t5, s8, 22
                  sltu         s10, s8, t6
                  addi         t5, zero, 1280
                  sll          s5, t6, a6
                  sll          a4, a6, s5
                  add          a7, a5, t0
                  slti         a7, s6, 1363
                  add          a3, a6, t6
                  blt          a0, t2, sub_5_4_1_t #branch for loop 1
                  xori         a7, t3, 1930
                  bltu         s5, t4, 17f
                  slli         a5, s9, 27
                  bltu         s3, t4, 3f
3:                beq          t1, s1, 19f
                  sll          a2, s0, s5
                  addi         s1, t1, 1936
                  bge          t2, s2, 19f
                  auipc        a3, 713701
                  addi         s4, t6, 789
                  bgeu         s5, s9, 28f
                  bgeu         s4, s5, 29f
                  nop
                  and          s10, t0, t4
                  slli         s1, a3, 18
                  sltiu        a2, t4, 1357
                  srai         a5, t0, 29
                  slli         s4, s10, 6
17:               or           a2, t6, s9
                  addi         a3, s9, 973
19:               nop
                  bne          s10, a5, 26f
                  andi         gp, t3, 1652
                  andi         t2, t4, 1013
                  srl          a6, s1, s0
                  or           a2, s3, sp
                  bge          ra, s7, 38f
26:               and          gp, s6, a4
                  slti         zero, ra, 1864
28:               srai         t3, s1, 19
29:               nop
                  lui          s4, 339627
                  sra          sp, a0, s10
                  add          s4, t3, t4
                  sltiu        tp, s4, 714
                  sub          a6, s7, s0
                  sltiu        s2, ra, 1831
                  add          s11, zero, a6
                  add          gp, s7, s8
38:               nop
                  sub          s2, a5, a6
                  and          a3, s10, t4
                  auipc        t2, 712420
                  addi         t3, t0, -885
                  blt          a6, t5, 53f
                  sll          s6, s10, s1
                  addi         s7, a2, -127
                  addi         a5, sp, 1779
                  srli         a1, s8, 27
                  and          t0, s6, s8
                  bne          t2, a7, 57f
                  sltiu        s9, a1, -976
                  beq          a5, a2, 53f
                  ori          a7, s7, -347
53:               sub          t4, a5, gp
                  lui          s1, 935813
                  bne          a7, a0, 71f
                  ori          s10, a5, 870
57:               sltu         a1, s6, a7
                  sub          t1, a0, s3
                  sll          a3, a1, s4
                  sra          s5, zero, t1
                  bne          s8, s5, 64f
                  xori         t4, t4, 1698
                  slli         t5, t3, 28
64:               slt          a3, s5, s9
                  auipc        s9, 972458
                  lui          s8, 651306
                  slti         a3, a3, 1970
                  srli         t4, gp, 22
                  blt          s3, gp, 70f
70:               sltiu        t3, tp, -1434
71:               beq          s1, a4, 73f
                  srl          zero, a6, t0
73:               slli         zero, t1, 24
                  srl          a3, t5, a3
                  slli         t3, s6, 5
                  slti         s6, t5, 1003
                  srli         s10, a4, 14
                  bge          tp, t5, 85f
                  slli         sp, gp, 22
                  bltu         tp, t2, 87f
                  srl          s7, s9, t2
                  sra          s7, zero, s9
                  sra          a7, t4, t3
                  beq          s10, tp, 96f
85:               bltu         s8, t0, 86f
86:               addi         ra, s3, 1371
87:               lui          s10, 134304
                  beq          a2, s2, 99f
                  xori         s5, t5, -1776
                  bne          a2, s1, 100f
                  addi         t2, a0, -1212
                  add          t5, a2, s8
                  sll          a7, t1, s3
                  bgeu         a3, tp, 105f
                  srl          sp, t1, s4
96:               sll          s1, s11, s1
                  and          s11, s4, a3
                  srl          a0, s11, zero
99:               and          s1, sp, s2
100:              bltu         s0, a1, 107f
                  blt          s4, a3, 104f
                  auipc        a4, 35559
                  bne          ra, s7, 107f
104:              or           t3, s1, s0
105:              bgeu         a0, a5, 118f
                  bgeu         a7, s1, 109f
107:              blt          gp, a7, 112f
                  nop
109:              xor          a5, s11, ra
                  bne          s0, a3, 127f
                  slti         a2, s2, 938
112:              srl          a4, t2, a5
                  srai         s6, zero, 5
                  bne          a6, a3, 122f
                  addi         a1, s6, -1578
                  xori         a3, s3, -1585
                  or           a7, a4, t1
118:              slli         s11, a5, 13
                  slli         t1, s8, 25
                  addi         a0, t3, -223
                  auipc        t4, 504636
122:              bne          s10, s9, 135f
                  slt          t1, s9, s10
                  xori         a2, s2, -170
                  sltu         t0, a4, t1
                  nop
127:              add          a1, t3, s2
                  srai         s11, s2, 23
                  lui          a2, 640112
                  slli         s10, s6, 0
                  andi         s2, sp, -615
                  bgeu         a7, a5, 135f
                  srli         t2, t1, 10
                  nop
135:              bltu         s9, t2, 139f
                  xori         gp, s5, 515
                  addi         s7, t5, -1001
                  beq          gp, t4, 149f
139:              andi         tp, s8, -67
                  sll          s10, t3, s5
                  or           a7, s8, s2
                  add          ra, s0, a3
                  auipc        s10, 535165
                  and          tp, ra, t3
                  bne          a3, s6, 148f
                  bne          t4, s9, 149f
                  slti         zero, zero, 1781
                  addi         a4, zero, -6 #init loop 0 counter
                  sll          a7, s10, s11
                  auipc        t2, 444333
                  or           zero, s1, t2
                  nop
                  addi         s5, zero, -15 #init loop 0 limit
sub_5_1_0_t:      lui          t3, 90054
                  slti         a7, a4, 1229
                  xor          t5, s2, ra
                  addi         a4, a4, -2 #update loop 0 counter
                  addi         s2, s2, 1227
                  auipc        t0, 119599
                  bge          a4, s5, sub_5_1_0_t #branch for loop 0
                  sltiu        a1, t2, 1398
148:              nop
149:              srli         ra, t6, 0
                  blt          t4, t5, 161f
                  addi         s10, t6, 355
                  slti         s7, s6, 1425
                  and          a5, sp, s4
                  sltiu        a0, s8, 1017
                  auipc        ra, 131999
                  auipc        s8, 342361
                  beq          t5, zero, 159f
                  beq          a4, a7, 168f
159:              auipc        t0, 584614
                  slli         a3, gp, 25
161:              srl          zero, t6, s10
                  lui          sp, 509988
                  or           a2, t1, sp
                  slli         a5, a6, 31
                  auipc        a1, 227882
                  bge          s6, t6, 171f
                  beq          s11, a1, 183f
168:              sra          a0, s7, a4
                  or           ra, sp, a5
                  srli         t0, s0, 26
171:              xor          sp, a3, a5
                  and          s4, s4, s11
                  and          s10, zero, t5
                  xori         s4, s11, -1793
                  bne          s6, a0, 194f
                  srl          s5, s5, s4
                  slli         a7, s4, 11
                  beq          sp, a4, 195f
                  sra          s5, a7, a3
                  andi         a7, t5, -401
                  sll          t2, t5, s3
                  add          t1, s0, s1
183:              xor          ra, a1, gp
                  and          t0, s6, s11
                  xor          a4, s0, gp
                  or           s2, a4, s0
                  add          gp, s5, a5
                  xori         zero, t0, 1203
                  ori          s9, a3, 2008
                  add          t2, s9, gp
                  bltu         t3, t5, 197f
                  sltu         t1, a1, s2
                  blt          s1, s8, 201f
194:              bgeu         ra, t3, 211f
195:              and          a6, s1, t2
                  sltiu        zero, s3, 662
197:              sra          t0, t4, s10
                  slt          gp, s10, a7
                  auipc        gp, 273963
                  sll          gp, a5, s9
201:              bgeu         s9, s1, 211f
                  lui          s8, 983473
                  lui          s5, 280396
                  xor          s7, s0, s11
                  and          t3, s2, s1
                  slt          t5, a0, a4
                  slt          gp, a1, s8
                  bgeu         s5, s0, 215f
                  srl          ra, ra, s0
                  srai         s2, s6, 22
211:              add          sp, zero, t0
                  srli         s2, a7, 11
                  sub          a3, t2, t2
                  srli         s8, s6, 30
215:              slti         t3, a0, 1322
                  beq          a3, a3, 217f
217:              slt          a3, s9, a0
                  bge          s2, t5, 225f
                  and          s1, s3, a6
                  xori         s6, s5, 888
                  nop
                  xor          a0, t1, t2
                  bge          a1, a1, 224f
224:              srai         s5, t1, 21
225:              srai         t3, a2, 11
                  srai         t4, s5, 4
                  sltu         sp, ra, s1
                  bne          s8, a3, 241f
                  bne          a2, s1, 230f
230:              sub          s9, t0, s10
                  xor          s7, s2, sp
                  slti         s2, t1, -1785
                  and          t4, sp, tp
                  sra          ra, s10, s0
                  sra          s5, a4, s0
                  bgeu         t0, t0, 248f
                  bltu         a7, gp, 256f
                  slli         a5, t5, 15
                  and          s5, ra, t5
                  bne          s10, s5, 253f
241:              sll          a7, s3, a1
                  srai         s1, t5, 21
                  srli         t5, s9, 11
                  sll          s4, s3, a6
                  slt          t3, s4, s1
                  slti         sp, s8, -1381
                  auipc        s8, 2452
248:              sub          a4, t4, ra
                  slt          s1, s9, tp
                  slt          sp, t4, s1
                  beq          a1, a3, 267f
                  sll          a7, t1, t3
253:              sub          t0, s11, t0
                  andi         a1, s4, -1465
                  sra          a1, t0, s6
256:              srli         a4, a6, 29
                  addi         ra, s5, -130
                  bgeu         t4, t5, 266f
                  sra          t3, a0, t1
                  srl          t3, s6, s6
                  bgeu         ra, a0, 263f
                  sltiu        s8, s4, 334
263:              sll          s10, s11, s9
                  or           s1, t5, ra
                  add          a0, a6, t6
266:              sltiu        t5, s1, 288
267:              sltiu        gp, s5, -469
                  ori          t3, s5, 761
                  sub          s11, s4, sp
                  srl          t5, t6, a4
                  lui          a0, 863833
                  nop
                  xori         a2, t2, -1298
                  sltiu        zero, t3, 1496
                  slt          t3, ra, a2
                  slli         t4, a2, 13
                  xori         t4, s5, -1456
                  beq          a3, a5, 285f
                  slli         s11, s1, 21
                  xori         s6, a1, -1560
                  beq          t4, a3, 283f
                  andi         t0, s6, -446
283:              bgeu         t6, s10, 293f
                  sltu         s10, tp, s11
285:              slli         t3, a6, 26
                  lui          t0, 217567
                  sltu         s2, t1, gp
                  addi         t3, s9, 582
                  slti         s11, sp, 1145
                  srl          t2, sp, t1
                  add          a6, sp, a6
                  bltu         a3, t6, 296f
293:              xor          a1, a2, tp
                  slli         t0, t0, 13
                  ori          s5, s9, -431
296:              auipc        a7, 1017860
                  slt          s10, a3, a2
                  slli         a6, s1, 7
                  sltiu        t1, t6, 573
                  add          t3, s10, a2
                  sra          a0, zero, t4
                  and          a0, gp, s11
                  or           a4, s2, s6
                  and          gp, a0, gp
                  andi         a4, zero, -487
                  srli         tp, s4, 13
                  bge          t4, a1, 314f
                  bgeu         t4, t1, 321f
                  sra          a7, s7, s7
                  bgeu         s9, s9, 313f
                  slti         s9, s2, -1523
                  beq          t4, s8, 314f
313:              add          a3, tp, a4
314:              xor          t5, s2, s1
                  bgeu         a7, s11, 332f
                  bne          a1, t6, 327f
                  srai         s5, s4, 8
                  bne          t1, a6, 331f
                  srl          t5, s3, t1
                  xori         s5, s6, 713
321:              slti         s11, a6, -1082
                  blt          a3, a5, 338f
                  sltiu        s11, ra, 179
                  add          t2, s2, gp
                  bgeu         t2, a7, 336f
                  nop
327:              bgeu         gp, s4, 340f
                  or           a3, a6, tp
                  sub          a5, t6, a2
                  lui          gp, 877647
331:              ori          a0, a0, 112
332:              nop
                  srl          a2, s0, t4
                  sra          tp, tp, s5
                  addi         a4, a7, 863
336:              nop
                  bne          s8, a3, 344f
338:              sltu         a3, a6, s4
                  sltiu        gp, a4, 426
340:              nop
                  lui          ra, 510850
                  slti         s11, t5, 843
                  bge          ra, ra, 349f
344:              srai         t5, t2, 23
                  auipc        zero, 436133
                  sltu         s7, s5, s10
                  sltu         s5, a4, s7
                  slti         a5, a1, -1828
349:              andi         s6, s6, 324
                  auipc        s5, 990454
                  sltu         ra, t0, s7
                  xori         t5, zero, -604
                  lw           t1, 4(s0)
                  addi         s0, s0, 32
                  and          a4, a0, t4
504:              addi x12, x6, 0
504:              jalr x12, x12, 0
sub_1:            bge          t2, a6, sub_1_stack_p
                  sltiu        s5, zero, 1340
sub_1_stack_p:    addi         s0, s0, -40
                  nop
                  or           zero, s11, a6
                  ori          zero, s0, 314
                  sw           t1, 4(s0)
                  addi         a0, s3, -707
                  addi         a6, zero, -3 #init loop 1 counter
                  xori         t1, t1, -1606
                  addi         t4, zero, 5 #init loop 1 limit
                  add          t3, a7, ra
                  lui          s1, 115828
sub_1_8_1_t:      sltu         t3, zero, tp
                  auipc        tp, 602201
                  srl          a4, s6, t5
                  or           t5, a0, a7
                  addi         a6, a6, 4 #update loop 1 counter
                  ori          a4, t5, 1531
                  addi         s10, gp, -179
                  sra          s11, s10, s7
                  addi         a1, zero, 1 #init loop 0 counter
                  and          s4, zero, t3
                  addi         sp, zero, 18 #init loop 0 limit
                  sub          t0, s4, ra
sub_1_8_0_t:      auipc        ra, 753455
                  sltiu        s7, s6, -1490
                  sltiu        a0, t5, 1503
                  addi         a1, a1, 9 #update loop 0 counter
                  lui          a0, 131959
                  blt          a1, sp, sub_1_8_0_t #branch for loop 0
                  lui          s5, 1515
                  beq          a6, t4, sub_1_8_1_t #branch for loop 1
                  addi         s8, s9, 1409
                  addi         t2, zero, 10 #init loop 0 counter
                  andi         s8, a0, 1290
                  sltiu        t4, t2, -1215
                  srli         a1, sp, 8
                  srli         t4, t0, 29
                  ori          tp, t0, -58
                  addi         s6, zero, -5 #init loop 0 limit
                  auipc        a5, 418983
                  ori          a2, a3, -1896
                  andi         s4, a2, -1734
sub_1_9_0_t:      andi         a6, t1, 913
                  auipc        t3, 267753
                  addi         t2, t2, -5 #update loop 0 counter
                  addi         t0, s7, -1242
                  srai         s1, a6, 9
                  sra          s11, t5, gp
                  bne          t2, s6, sub_1_9_0_t #branch for loop 0
                  sub          t1, zero, s6
                  addi         a2, zero, 5 #init loop 1 counter
                  addi         a1, zero, -8 #init loop 1 limit
                  sltiu        ra, gp, 1533
sub_1_5_1_t:      addi         s10, a1, 1013
                  addi         a2, a2, -2 #update loop 1 counter
                  addi         s7, zero, -1 #init loop 0 counter
                  addi         a5, zero, -11 #init loop 0 limit
                  srli         tp, t3, 14
sub_1_5_0_t:      sltiu        t1, a7, 1166
                  addi         s7, s7, -2 #update loop 0 counter
                  bge          s7, a5, sub_1_5_0_t #branch for loop 0
                  bge          a2, a1, sub_1_5_1_t #branch for loop 1
                  slt          t0, t2, t4
                  addi         s8, zero, 3 #init loop 1 counter
                  slli         a1, s1, 20
                  sra          s1, t2, gp
                  srli         a3, s3, 22
                  addi         s10, zero, 9 #init loop 1 limit
                  slt          s4, s4, a3
                  sub          a4, t1, s2
                  lui          a4, 631537
sub_1_10_1_t:     add          s2, s1, s4
                  auipc        s7, 104672
                  addi         s8, s8, 10 #update loop 1 counter
                  addi         a6, zero, 4 #init loop 0 counter
                  addi         a7, zero, 13 #init loop 0 limit
                  nop
sub_1_10_0_t:     sltiu        s6, tp, 1722
                  or           t3, s7, ra
                  addi         a6, a6, 9 #update loop 0 counter
                  srl          t2, s7, tp
                  beq          a6, a7, sub_1_10_0_t #branch for loop 0
                  slli         a2, sp, 6
                  and          s7, t4, t0
                  add          t5, sp, a1
                  blt          s8, s10, sub_1_10_1_t #branch for loop 1
                  xor          s5, a7, s11
                  addi         a1, zero, 4 #init loop 1 counter
                  lui          s10, 660140
                  and          t5, a6, a4
                  xor          sp, t3, s3
                  ori          s5, a1, 632
                  nop
                  andi         s7, s9, -1405
                  addi         s1, zero, 4 #init loop 1 limit
                  or           ra, s6, a5
sub_1_3_1_t:      add          sp, t0, s0
                  addi         a1, a1, -1 #update loop 1 counter
                  sra          ra, t3, t5
                  addi         s6, zero, 0 #init loop 0 counter
                  sra          t2, t5, t5
                  addi         s9, zero, -14 #init loop 0 limit
sub_1_3_0_t:      slt          a2, t0, t5
                  add          s7, s2, s11
                  auipc        s11, 1009904
                  addi         s6, s6, -7 #update loop 0 counter
                  bne          s6, s9, sub_1_3_0_t #branch for loop 0
                  auipc        t1, 844123
                  ori          a2, a6, 943
                  bgeu         a1, s1, sub_1_3_1_t #branch for loop 1
                  srli         s8, t0, 22
                  addi         sp, zero, 5 #init loop 1 counter
                  and          a7, s2, s6
                  sra          s1, a2, s10
                  addi         s7, zero, 2 #init loop 1 limit
                  add          s6, a5, s11
sub_1_6_1_t:      ori          a6, a0, -968
                  xori         a7, s0, -822
                  ori          t2, a4, -772
                  lui          a4, 347279
                  add          zero, t0, t5
                  xor          a1, s4, s1
                  srl          a6, s0, t1
                  addi         sp, sp, -1 #update loop 1 counter
                  sub          s6, a2, ra
                  sub          a4, s11, gp
                  addi         a4, s8, -546
                  addi         ra, zero, -7 #init loop 0 counter
                  addi         a3, zero, -20 #init loop 0 limit
                  slt          a1, s7, s2
                  add          gp, s0, t4
sub_1_6_0_t:      lui          a7, 811736
                  sll          t4, t1, t2
                  addi         ra, ra, -7 #update loop 0 counter
                  bge          ra, a3, sub_1_6_0_t #branch for loop 0
                  srai         a7, t3, 6
                  sltiu        s4, a2, -1710
                  sll          s10, s5, s8
                  sltu         a1, a1, tp
                  sltu         s11, a6, s0
                  bgeu         sp, s7, sub_1_6_1_t #branch for loop 1
                  add          t0, t3, s1
                  addi         s8, zero, -2 #init loop 0 counter
                  sra          sp, ra, gp
                  addi         s5, zero, -18 #init loop 0 limit
                  sub          a5, s5, t2
                  sltu         s2, a0, s3
sub_1_4_0_t:      and          s1, t1, tp
                  andi         s2, t5, -1809
                  addi         s8, s8, -4 #update loop 0 counter
                  sltu         t3, a7, zero
                  bne          s8, s5, sub_1_4_0_t #branch for loop 0
                  srai         s2, a2, 25
                  addi         a6, zero, 10 #init loop 1 counter
                  addi         a5, zero, 10 #init loop 1 limit
sub_1_11_1_t:     sub          sp, t4, a0
                  nop
                  addi         a6, a6, -9 #update loop 1 counter
                  addi         gp, zero, -7 #init loop 0 counter
                  addi         t3, zero, 17 #init loop 0 limit
                  ori          s6, zero, -1563
sub_1_11_0_t:     slti         s10, s8, 15
                  addi         gp, gp, 8 #update loop 0 counter
                  bne          gp, t3, sub_1_11_0_t #branch for loop 0
                  bgeu         a6, a5, sub_1_11_1_t #branch for loop 1
                  sltu         s5, s6, a7
                  addi         a4, zero, 8 #init loop 1 counter
                  sll          sp, t6, s0
                  xori         s9, s10, -182
                  ori          s4, s7, -1971
                  slti         t4, a1, 978
                  xori         t1, s7, -1828
                  addi         gp, zero, 12 #init loop 1 limit
sub_1_0_1_t:      add          tp, s10, a5
                  slti         s4, a3, -1299
                  slt          s9, t0, ra
                  addi         a4, a4, 2 #update loop 1 counter
                  slli         t2, t6, 11
                  addi         s8, zero, 8 #init loop 0 counter
                  addi         a1, zero, 14 #init loop 0 limit
                  and          t3, t5, a1
                  xori         s6, a7, -598
sub_1_0_0_t:      slti         t0, sp, 1454
                  srli         t5, zero, 5
                  auipc        t2, 1039036
                  slti         tp, a2, -176
                  srl          a6, s7, sp
                  srli         t1, s1, 3
                  addi         s8, s8, 6 #update loop 0 counter
                  bne          s8, a1, sub_1_0_0_t #branch for loop 0
                  xor          t2, t3, a3
                  sll          s1, ra, ra
                  addi         t1, s1, 1947
                  slli         a7, t6, 21
                  slt          s6, s9, t5
                  sub          t5, a3, t2
                  beq          a4, gp, sub_1_0_1_t #branch for loop 1
                  sra          s7, s1, t2
                  addi         t5, s6, -8
                  srli         s8, a0, 1
                  srli         s2, a1, 30
                  andi         a4, t5, -908
                  srl          s11, t3, a7
                  sltiu        s11, t4, 1307
                  bne          s10, ra, 13f
                  sll          t5, a4, t6
                  sltu         t3, s5, t2
                  nop
                  srl          s11, t4, sp
                  sra          s9, s10, s5
                  blt          zero, s4, 32f
13:               ori          t0, s4, -54
                  sub          a5, s0, gp
                  lui          t5, 1012225
                  sltu         s5, s0, s3
                  sltu         t0, ra, s1
                  add          s9, gp, zero
                  sltu         t0, a5, a5
                  bltu         a0, s1, 38f
                  xori         a7, s3, -532
                  beq          s2, t0, 38f
                  blt          t5, a2, 34f
                  slt          gp, a0, s11
                  xori         t3, t2, 1215
                  xor          s10, t6, t1
                  nop
                  auipc        a0, 212123
                  srai         t0, t2, 4
                  beq          s11, s9, 45f
                  bge          ra, ra, 33f
32:               srai         t3, s2, 3
33:               xor          t5, t6, s6
34:               bne          s0, ra, 35f
35:               slli         t3, s6, 11
                  sltiu        tp, a6, 221
                  srli         gp, s3, 9
38:               and          s10, a0, s1
                  or           s1, tp, s11
                  bne          sp, t4, 55f
                  and          a1, zero, s2
                  srli         a3, s0, 11
                  sub          s8, sp, t5
                  bne          t6, t0, 62f
45:               bge          a7, t1, 50f
                  srli         t2, zero, 10
                  xori         a2, t1, -1764
                  bgeu         t4, a6, 59f
                  nop
50:               bge          s0, s2, 66f
                  xor          s10, t3, a5
                  sltu         s6, s5, s9
                  lui          t3, 935349
                  srl          s1, s5, s7
55:               add          t1, a1, s8
                  srl          sp, s0, s7
                  slti         a4, a1, 797
                  srli         s1, s10, 22
59:               sll          s8, a6, a6
                  add          s7, s1, a3
                  sltiu        t4, a0, 378
62:               bne          a3, ra, 68f
                  sll          s9, ra, ra
                  beq          a4, a6, 83f
                  auipc        s11, 456394
66:               or           zero, a2, t6
                  slti         zero, s2, -1862
68:               srai         a4, s8, 4
                  bne          s6, s3, 74f
                  beq          t0, s2, 86f
                  blt          s7, s9, 81f
                  slti         a5, s5, -1374
                  or           ra, s3, a7
74:               lui          s7, 184498
                  andi         s5, s4, -732
                  xori         s8, t5, -931
                  bltu         tp, s7, 89f
                  auipc        t3, 831036
                  sltiu        s8, s9, -899
                  sltu         a6, s10, t0
81:               slt          a4, t2, a2
                  srli         a2, a6, 23
83:               slli         t0, a3, 3
                  sub          a7, s6, a3
                  bgeu         s7, s5, 98f
86:               ori          t0, t1, 1816
                  add          s4, a0, t1
                  slti         s11, s1, -335
89:               sltiu        ra, s3, -592
                  xori         a3, sp, -1067
                  sub          t2, t2, s6
                  bltu         s1, gp, 95f
                  blt          t1, s7, 100f
                  sltu         a5, s10, gp
95:               bne          s4, sp, 96f
96:               bne          s10, a5, 101f
                  lui          s8, 633779
98:               slt          s9, t0, a6
                  sltiu        a7, t0, 723
100:              blt          t4, t2, 112f
101:              blt          zero, zero, 108f
                  or           s10, s11, t5
                  andi         sp, s6, -1988
                  lui          sp, 900203
                  sltiu        t4, a4, 1908
                  auipc        s10, 964817
                  and          a5, t4, a7
108:              sra          sp, t2, t3
                  nop
                  sltu         a4, sp, tp
                  ori          s8, a5, 761
112:              bne          a3, s8, 129f
                  bge          t2, t6, 118f
                  bgeu         a0, ra, 126f
                  sltiu        a0, zero, 1741
                  bltu         s6, s5, 123f
                  slli         s10, t2, 27
118:              sltu         s1, s10, s7
                  bgeu         s11, s4, 131f
                  bltu         t0, zero, 127f
                  addi         s1, t6, -1458
                  nop
123:              or           a2, s10, ra
                  ori          a5, a4, 473
                  and          t2, zero, ra
126:              xori         a0, s6, -1089
127:              beq          a1, a1, 132f
                  slt          s4, s6, s8
129:              sra          gp, a1, a6
                  slt          s9, a5, gp
131:              slti         a4, sp, -867
132:              slli         t5, s11, 28
                  srl          s1, s3, zero
                  ori          s7, a2, 121
                  auipc        t4, 266255
                  lui          a1, 945527
                  add          t0, a3, a7
                  and          a6, s11, a2
                  sltiu        t5, a2, -719
                  sltu         gp, t0, zero
                  add          a6, zero, a6
                  bgeu         t3, t6, 162f
                  slt          ra, a3, t6
                  nop
                  sub          a4, a2, tp
                  srli         a5, t5, 14
                  slt          s8, zero, t2
                  add          t1, s9, s8
                  blt          t2, t6, 161f
                  bge          s0, t1, 152f
                  bne          s7, s8, 152f
152:              sll          t3, s6, tp
                  ori          s2, sp, 1432
                  blt          a4, t5, 170f
                  sltu         s5, s5, a6
                  and          ra, s7, s7
                  blt          t0, s7, 176f
                  nop
                  bltu         s9, s0, 176f
                  srai         s11, t2, 26
161:              sltu         ra, a2, a3
162:              nop
                  sltu         t2, a4, tp
                  sltiu        sp, sp, 261
                  and          t2, s3, a0
                  sltiu        s11, s11, -1060
                  slli         t1, t2, 23
                  sll          gp, t5, s0
                  sltu         s11, gp, a1
170:              bne          a4, a4, 183f
                  sra          a4, a4, ra
                  lui          zero, 742645
                  bne          s10, s5, 179f
                  bltu         s5, s6, 179f
                  and          sp, sp, t2
176:              and          t3, a4, t5
                  sub          s1, a0, sp
                  and          s2, a7, a0
179:              bge          t2, a0, 180f
180:              srai         s7, a4, 18
                  nop
                  slli         s1, t5, 11
183:              bne          t2, s3, 190f
                  auipc        s9, 777641
                  or           s11, t2, t2
                  addi         a4, t6, 924
                  or           a2, t5, t5
                  and          t0, s9, s5
                  sltiu        a2, t5, 94
190:              sra          s8, s8, t6
                  xor          s6, s0, a5
                  sra          s5, s3, s10
                  ori          s2, s8, 690
                  andi         t0, sp, -1003
                  blt          t6, s11, 202f
                  xori         t3, t4, -1575
                  add          ra, a3, t0
                  bgeu         s5, t1, 216f
                  sll          s5, a7, s6
                  bne          s6, s11, 205f
                  slli         s2, t4, 14
202:              add          zero, s9, a0
                  srai         zero, a0, 18
                  ori          s4, t0, 630
205:              addi         s1, a3, 1336
                  auipc        s4, 365405
                  srai         s8, a1, 22
                  slti         sp, t6, 1298
                  sra          s7, zero, s2
                  sltiu        s8, s9, 1793
                  ori          a3, a5, -1136
                  lui          tp, 774958
                  srli         a6, a2, 10
                  slt          s4, a1, s2
                  slli         ra, a4, 25
216:              sltu         a1, s8, s1
                  lui          s9, 921769
                  bne          s11, a1, 229f
                  and          t0, t5, a0
                  slt          t4, t3, zero
                  srli         zero, s7, 2
                  bne          zero, t2, 232f
                  and          a5, a2, t5
                  slt          a0, t1, sp
                  beq          a4, zero, 240f
                  or           a7, zero, a5
                  xori         s10, a3, 955
                  and          s1, t1, a2
                  andi         t3, t0, -697
                  add          s5, t3, gp
                  or           s11, t1, t6
                  srai         zero, t6, 10
                  slt          a4, s1, s2
                  xor          a0, t5, s2
                  or           t2, t4, s11
                  xor          s1, sp, a7
sub_1_j2:         jal          t1, sub_2 #jump sub_1 -> sub_2
                  slti         s4, t3, -54
229:              slti         s5, t3, -643
                  slli         s6, s3, 2
                  nop
232:              blt          zero, t0, 243f
                  ori          s9, gp, 1541
                  bgeu         s0, s2, 237f
                  bge          a2, a4, 253f
                  sub          sp, t2, a5
237:              sll          t1, t1, a1
                  bgeu         s6, s10, 253f
                  sub          tp, t1, zero
240:              bne          a5, sp, 256f
                  auipc        tp, 663345
                  add          a4, s6, a7
243:              bltu         s10, s8, 250f
                  sra          a0, s5, s1
                  srl          a6, ra, a6
                  slt          sp, t0, a3
                  lui          s5, 396703
                  sra          s10, a1, s4
                  slli         sp, ra, 24
250:              slli         s1, s0, 12
                  addi         a0, s1, -1541
                  srl          s8, s11, t1
253:              sll          a4, a6, s2
                  srl          s4, t0, a0
                  andi         a3, t3, 913
                  addi         s2, zero, 6 #init loop 0 counter
                  addi         a3, zero, 6 #init loop 0 limit
sub_1_1_0_t:      addi         ra, a5, -956
                  addi         s2, s2, -3 #update loop 0 counter
                  bgeu         s2, a3, sub_1_1_0_t #branch for loop 0
                  ori          t0, ra, 441
256:              xori         s9, t4, 346
                  srai         a5, s5, 8
                  and          s6, t6, a5
                  andi         s11, s6, 812
                  bltu         a0, a1, 272f
                  bne          ra, t3, 266f
                  sll          t2, s0, s1
                  sltu         t0, t1, a0
                  beq          t2, s11, 280f
                  xor          s4, s11, a2
266:              and          s2, t4, s11
                  slli         s8, a4, 11
                  auipc        s8, 446532
                  add          s10, a0, a7
                  nop
                  sll          s8, a0, s0
272:              xor          s2, s1, s2
                  slt          a1, a5, s6
                  blt          zero, zero, 281f
                  slti         a3, s1, -9
                  slti         t4, s10, 931
                  andi         s11, t2, 294
                  slt          a3, tp, t4
                  srli         s7, s5, 15
280:              and          s10, s9, ra
281:              auipc        t0, 811958
                  bne          s9, s8, 294f
                  srai         tp, a4, 9
                  bge          s4, sp, 285f
285:              add          t4, s3, s11
                  sltiu        sp, zero, 1128
                  xor          a1, t6, s9
                  or           s10, t3, a2
                  sub          zero, a4, gp
                  sll          s9, a4, s6
                  sra          s7, a1, a5
                  srai         s11, a7, 9
                  andi         a3, s5, -292
294:              sra          t3, s7, a5
                  or           t2, t2, gp
                  bge          s10, s11, 307f
                  bltu         s11, s3, 315f
                  slti         tp, t1, -1476
                  xor          a7, s9, a4
                  sltu         s1, t5, t2
                  auipc        a2, 201652
                  srai         a1, t6, 4
                  and          t2, a7, tp
                  sltiu        t2, s5, -1662
                  slli         s6, s11, 25
                  bne          gp, gp, 307f
307:              or           a3, t2, s3
                  or           t5, a0, t2
                  slti         s4, a6, 1526
                  beq          a2, t2, 323f
                  sltu         s9, a4, a1
                  nop
                  nop
                  sra          t1, t4, t0
315:              sra          s6, zero, s1
                  add          t5, t4, t6
                  slt          t5, a2, s7
                  beq          s0, a1, 337f
                  sub          a4, a5, s7
                  bge          t3, s7, 325f
                  lui          a4, 513484
                  nop
323:              beq          s4, a0, 339f
                  xori         s11, s8, 436
325:              sub          t2, t4, t6
                  and          t5, a6, t5
                  andi         t3, s7, -534
                  srai         t5, s7, 21
                  xor          a1, a7, a3
                  or           t0, a6, a1
                  sll          a6, t6, a6
                  slti         a7, t6, -106
                  slt          t2, s3, s0
                  ori          a7, t6, 401
                  sltu         t3, a3, a6
                  xor          a1, s2, t3
337:              xori         t3, s0, -194
                  sra          t1, a1, s10
339:              nop
                  xor          a0, s3, zero
                  xor          zero, t3, s8
                  or           s1, s4, s1
                  andi         s11, s3, 621
                  ori          s2, t6, 988
                  srl          sp, s2, sp
                  addi         s9, t3, -1681
                  bge          s2, s8, 352f
                  sub          a0, gp, s0
                  blt          t1, t1, 352f
                  sltu         t4, s6, s10
                  srl          s7, t3, a4
352:              addi         a6, gp, -822
                  bge          s11, a2, 355f
                  srl          s9, a5, a1
355:              auipc        gp, 766825
                  andi         a1, s8, 1047
                  sra          a3, s0, ra
                  bltu         ra, zero, 368f
                  beq          s11, tp, 366f
                  slti         s5, s4, 1460
                  bltu         ra, s8, 366f
                  bltu         s11, t3, 382f
                  slli         a1, s5, 25
                  bgeu         a0, s8, 371f
                  sltiu        t3, t4, -1354
366:              xori         a7, a6, -1857
                  bltu         t4, a2, 378f
368:              sub          a6, s3, a1
                  sll          s1, s8, s10
                  blt          zero, s1, 376f
371:              blt          s4, s4, 386f
                  bltu         s3, s2, 384f
                  slt          t2, a0, s2
                  xor          s8, s5, a6
                  slti         s8, a0, 349
376:              sra          s9, a2, sp
                  sltiu        t0, s0, -1194
378:              blt          s10, t2, 394f
                  slti         t5, sp, 1977
                  addi         ra, sp, 716
                  slli         gp, a3, 13
382:              ori          s7, a5, 1801
                  slli         s7, s7, 17
384:              beq          tp, t4, 389f
                  or           s4, s3, s0
386:              lui          a7, 255690
                  xori         t5, a2, 1161
                  bltu         a0, s0, 404f
389:              nop
                  bgeu         gp, t5, 397f
                  add          s4, s4, tp
                  bgeu         s7, s4, 404f
                  sra          s5, s2, s9
394:              xor          s1, a2, s10
                  xori         s1, a0, -89
                  xor          a2, t3, a5
397:              or           a5, t6, s9
                  or           a6, gp, a6
                  blt          t4, zero, 416f
                  srai         s5, t4, 23
                  slt          a7, t5, a2
                  sltu         t2, s3, t1
                  sltu         a2, a1, a5
404:              sra          a3, t4, zero
                  sltu         a2, s3, s10
                  slti         s2, s10, 1202
                  and          t0, s0, a3
                  nop
                  slti         s1, s10, 618
                  bge          s1, t6, 425f
                  beq          s1, s2, 429f
                  nop
                  andi         a7, gp, 886
                  bltu         s1, t2, 426f
                  slti         t5, t2, -1486
416:              slli         s10, s11, 31
                  ori          s7, a5, -2025
                  srli         a0, a5, 4
                  xor          s5, s6, zero
                  add          ra, a5, s7
                  lui          a2, 181466
                  sra          s2, a3, gp
                  bge          a1, s1, 430f
                  add          t2, ra, a7
425:              bge          a1, s1, 436f
426:              slti         s6, tp, -173
                  sltiu        s1, gp, 101
                  slli         sp, tp, 1
429:              lui          s5, 204735
430:              bne          t3, s10, 431f
431:              xor          a7, a1, gp
                  slli         t2, ra, 30
                  bgeu         s9, s4, 438f
                  bltu         a1, t3, 449f
                  bltu         t6, s8, 440f
436:              andi         a5, tp, -1182
                  blt          sp, s7, 439f
438:              sltu         a2, s10, s8
439:              bgeu         ra, s6, 454f
440:              slti         t3, s9, 1748
                  bgeu         s10, t4, 448f
                  xori         a2, s8, 344
                  xor          sp, s8, s11
                  bltu         s10, s1, 450f
                  bne          s8, s10, 461f
                  slt          a3, s9, t3
                  bge          a0, s9, 459f
448:              andi         sp, t1, -1208
449:              add          tp, zero, gp
450:              beq          s9, s10, 466f
                  xor          a6, s9, a6
                  auipc        a3, 501592
                  lui          a2, 447067
454:              srli         sp, t1, 10
                  addi         a1, a3, -1698
                  xor          t0, s7, s3
                  add          s9, s1, t0
                  srai         s10, a4, 7
459:              beq          s9, s8, 476f
                  ori          s11, a7, -145
461:              and          t2, s7, s1
                  sltu         zero, t4, s2
                  srli         s2, a2, 25
                  nop
                  srai         a0, t6, 29
466:              ori          t0, ra, -1239
                  srl          s2, s5, s3
                  xori         a7, a5, 1147
                  ori          a7, a3, 1455
                  or           s7, t5, s10
                  bne          sp, a3, 472f
472:              slt          s10, s2, s2
                  slli         a4, t2, 1
                  srai         s1, ra, 27
                  slti         a1, a3, 1277
476:              slt          s5, s8, t6
                  auipc        tp, 996205
                  sll          a7, a4, t0
                  andi         tp, t0, -1127
                  slli         t2, gp, 9
                  sub          a7, a5, s10
                  slti         ra, t1, -1762
                  slti         a7, t2, 336
                  slti         a1, a1, 1906
                  lui          zero, 64611
                  ori          s11, s7, 1610
                  addi         a0, zero, 8 #init loop 1 counter
                  lui          t1, 624496
                  addi         s7, zero, 8 #init loop 1 limit
sub_1_2_1_t:      addi         t0, s6, 1280
                  addi         a0, a0, -7 #update loop 1 counter
                  srai         s4, sp, 31
                  nop
                  addi         a7, zero, -5 #init loop 0 counter
                  addi         sp, zero, 11 #init loop 0 limit
sub_1_2_0_t:      addi         a2, s6, 1334
                  add          s9, a1, s4
                  addi         a7, a7, 4 #update loop 0 counter
                  bne          a7, sp, sub_1_2_0_t #branch for loop 0
                  sub          t0, t3, t4
                  addi         t5, t0, -1465
                  sltu         a3, s10, a1
                  add          a2, s5, s7
                  lui          s10, 121006
                  sltiu        a4, a7, -178
                  bgeu         a0, s7, sub_1_2_1_t #branch for loop 1
                  nop
                  bgeu         a1, a5, 506f
                  srli         t0, a2, 29
                  xori         t2, a1, 1197
                  ori          a7, a7, 149
                  andi         t4, s2, 662
                  or           s10, s10, tp
                  sltiu        s8, a0, -960
                  add          t5, a4, t0
                  ori          s8, s6, 1498
                  nop
                  bne          a5, ra, 509f
                  sra          t1, t0, s4
                  blt          s3, zero, 510f
                  bne          s6, s5, 505f
                  srl          a6, t5, a1
                  andi         s9, zero, -568
                  srl          s5, ra, a2
                  auipc        s7, 654200
505:              sub          t2, s5, a3
506:              sll          ra, a3, s2
                  sltu         t1, s5, a2
                  nop
509:              blt          t3, s5, 527f
510:              and          a0, s7, a6
                  ori          gp, a1, 1585
                  xor          t3, t2, s2
                  or           a5, t1, t3
                  xor          t5, s10, gp
                  bltu         s9, gp, 522f
                  bgeu         s0, a7, 534f
                  sub          tp, t3, s8
                  nop
                  and          s4, sp, t5
                  slti         tp, t0, -1900
                  bgeu         t6, s4, 528f
522:              srli         a7, tp, 20
                  bne          s6, sp, 536f
                  bge          sp, a3, 540f
                  lui          s1, 734904
                  sltu         s10, a3, a3
527:              lui          a1, 186991
528:              blt          s8, s2, 533f
                  bne          t4, a5, 549f
                  nop
                  slli         a1, t1, 19
                  ori          t2, a7, 887
533:              and          a6, t2, s9
534:              beq          a5, t6, 544f
                  slt          t1, t1, t2
536:              sltiu        sp, t5, -1911
                  sltu         s6, s5, s10
                  addi         s5, a0, 1814
                  slt          a1, s9, a0
540:              sltiu        gp, s10, -1275
                  slt          s7, a1, s7
                  add          t1, s2, s0
                  slli         t5, s6, 30
544:              add          a1, s3, gp
                  srai         gp, zero, 26
                  xori         sp, s11, 1774
                  sra          t2, s6, s0
                  sll          a4, a3, a3
549:              srl          sp, s11, ra
                  blt          s0, s5, 553f
                  ori          t1, s5, -1033
                  bltu         t5, a7, 555f
553:              srli         s6, t0, 9
                  xor          s5, s3, a2
555:              srai         t2, a1, 31
                  srli         t0, s10, 19
                  sltiu        s6, a5, 376
                  ori          a0, a0, 1761
                  sub          a2, s5, s5
                  bgeu         gp, sp, 576f
                  srl          s10, a3, t2
                  sub          s5, s5, t5
                  sub          a5, gp, zero
                  blt          t4, t2, 569f
                  bne          t0, a0, 583f
                  srai         sp, a1, 7
                  nop
                  or           a6, s9, ra
569:              or           s9, s11, s3
                  ori          s9, t6, 1985
                  bne          a6, t3, 578f
                  add          s11, a4, a0
                  sltu         s6, ra, a4
                  add          a2, zero, t0
                  add          s4, s1, a1
576:              srl          a2, s1, s2
                  bge          a2, a6, 583f
578:              bltu         t6, ra, 590f
                  or           t2, a1, tp
                  lui          s11, 552976
                  addi         a1, t5, 469
                  sll          ra, zero, a2
583:              xori         t3, s10, 650
                  bne          a6, gp, 589f
                  srli         t2, t6, 7
                  slti         t1, s0, 1104
                  sra          s9, gp, s10
                  auipc        s6, 981097
589:              srl          a4, a6, s6
590:              srl          ra, s4, t4
                  slt          a0, s8, s9
                  sra          s8, sp, zero
                  addi         t2, zero, -8 #init loop 0 counter
                  srl          tp, s2, a6
                  nop
                  addi         s6, s9, -1304
                  sra          t1, s8, s9
                  addi         s11, zero, 10 #init loop 0 limit
                  sltu         s2, s9, t5
                  srli         s7, a5, 31
                  and          s2, gp, s10
                  and          s8, zero, a5
                  sltiu        ra, a4, 66
                  srl          sp, s10, t2
                  srli         t0, t3, 1
sub_1_7_0_t:      add          a0, zero, s3
                  ori          s10, s0, -1914
                  addi         t2, t2, 9 #update loop 0 counter
                  sltiu        zero, s4, -1113
                  addi         zero, s11, -1330
                  srai         a7, t2, 10
                  xor          t1, a0, ra
                  sltiu        a0, t4, 1365
                  bne          t2, s11, sub_1_7_0_t #branch for loop 0
                  sltu         s6, t0, t5
                  lui          gp, 205965
                  sltiu        a0, s6, 928
                  srl          s9, s3, s5
                  sltu         gp, s7, zero
                  slt          s8, a1, a1
                  or           s9, a1, a7
                  srli         s6, a1, 18
                  slli         s4, s7, 12
                  srli         zero, a0, 2
                  nop
                  sltiu        s8, s5, 1328
                  srai         t2, s7, 10
                  sltiu        s10, s1, 608
                  sll          s8, t5, s8
                  lui          t3, 843284
                  sltiu        a0, zero, -752
                  and          s6, s11, zero
                  xor          t4, t0, a2
                  sll          a0, t3, t5
                  slli         s1, s8, 12
                  blt          a3, sp, 618f
                  nop
                  sub          zero, a7, s0
                  bge          gp, s4, 617f
617:              sltu         s6, t0, a1
618:              addi         ra, t6, 2037
                  lui          a0, 980120
                  srl          zero, a1, a1
                  srl          t1, sp, t6
                  srl          s5, t2, a3
                  add          gp, s10, t1
                  bltu         t2, ra, 627f
                  sra          zero, s0, a5
                  or           s10, a6, s9
627:              sub          a0, s10, s7
                  xor          a0, tp, t5
                  or           s5, a2, a0
                  addi         t3, s0, -763
                  lw           t1, 4(s0)
                  nop
                  xor          a1, s7, s5
                  addi         s0, s0, 40
                  add          t0, gp, s1
896:              addi x24, x6, 1
896:              jalr x24, x24, 0
sub_2:            bne          s5, s11, sub_2_stack_p
                  xori         s11, gp, 8
                  srl          s1, ra, s6
sub_2_stack_p:    addi         s0, s0, -56
                  sw           t1, 4(s0)
                  and          gp, gp, t3
                  auipc        a5, 315630
                  bge          s6, a4, sub_2_j3 #branch to jump instr
                  nop
                  srl          gp, s2, a5
                  sub          ra, ra, t3
                  sltiu        tp, a4, -227
                  srli         t2, t0, 30
                  sra          s1, sp, t1
sub_2_j3:         jal          t1, sub_3 #jump sub_2 -> sub_3
                  nop
                  and          tp, s4, t0
                  beq          sp, t0, 8f
                  xori         a1, a3, -1725
                  bltu         s7, s6, 19f
                  slt          s11, s1, s10
                  andi         tp, s3, -113
                  beq          t4, s2, 13f
8:                and          s8, a2, a3
                  slt          s8, s11, tp
                  auipc        t3, 245314
                  sltu         t1, t2, s2
                  add          t1, a4, s4
13:               sltu         gp, t6, a7
                  auipc        a4, 81488
                  sub          a6, t6, a3
                  andi         a4, s8, 1529
                  and          a0, a2, gp
                  lui          a5, 126746
19:               slli         s7, tp, 7
                  lw           t1, 4(s0)
                  srl          s5, t2, a0
                  xor          a6, tp, s2
                  addi         s0, s0, 56
                  ori          gp, gp, -204
                  slti         sp, t2, 1098
                  sltiu        a1, a4, 30
42:               addi x27, x6, 1
42:               jalr x27, x27, 0
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
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x19, x8, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_2:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x19, x8, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_3:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x19, x8, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_4:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x19, x8, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_5:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x19, x8, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_6:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x19, x8, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_7:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x19, x8, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_8:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x19, x8, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_9:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x19, x8, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_10:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x19, x8, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_11:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x19, x8, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_12:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x19, x8, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_13:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x19, x8, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_14:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x19, x8, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_15:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x19, x8, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x19, x8, zero
                  csrr x24, 0x341 # MEPC
                  csrr x24, 0x342 # MCAUSE
                  li x21, 0x3 # BREAKPOINT
                  beq x24, x21, ebreak_handler
                  li x21, 0x8 # ECALL_UMODE
                  beq x24, x21, ecall_handler
                  li x21, 0x9 # ECALL_SMODE
                  beq x24, x21, ecall_handler
                  li x21, 0xb # ECALL_MMODE
                  beq x24, x21, ecall_handler
                  li x21, 0x1
                  beq x24, x21, instr_fault_handler
                  li x21, 0x5
                  beq x24, x21, load_fault_handler
                  li x21, 0x7
                  beq x24, x21, store_fault_handler
                  li x21, 0xc
                  beq x24, x21, pt_fault_handler
                  li x21, 0xd
                  beq x24, x21, pt_fault_handler
                  li x21, 0xf
                  beq x24, x21, pt_fault_handler
                  li x21, 0x2 # ILLEGAL_INSTRUCTION
                  beq x24, x21, illegal_instr_handler
                  csrr x21, 0x343 # MTVAL
                  1: la x31, test_done
                  jalr x1, x31, 0

ecall_handler:    
                  la x24, _start
                  sw x0, 0(x24)
                  sw x1, 4(x24)
                  sw x2, 8(x24)
                  sw x3, 12(x24)
                  sw x4, 16(x24)
                  sw x5, 20(x24)
                  sw x6, 24(x24)
                  sw x7, 28(x24)
                  sw x8, 32(x24)
                  sw x9, 36(x24)
                  sw x10, 40(x24)
                  sw x11, 44(x24)
                  sw x12, 48(x24)
                  sw x13, 52(x24)
                  sw x14, 56(x24)
                  sw x15, 60(x24)
                  sw x16, 64(x24)
                  sw x17, 68(x24)
                  sw x18, 72(x24)
                  sw x19, 76(x24)
                  sw x20, 80(x24)
                  sw x21, 84(x24)
                  sw x22, 88(x24)
                  sw x23, 92(x24)
                  sw x24, 96(x24)
                  sw x25, 100(x24)
                  sw x26, 104(x24)
                  sw x27, 108(x24)
                  sw x28, 112(x24)
                  sw x29, 116(x24)
                  sw x30, 120(x24)
                  sw x31, 124(x24)
                  la x31, write_tohost
                  jalr x0, x31, 0

instr_fault_handler:
                  add x8, x19, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

load_fault_handler:
                  add x8, x19, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

store_fault_handler:
                  add x8, x19, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

ebreak_handler:   
                  csrr  x24, 0x341
                  addi  x24, x24, 4
                  csrw  0x341, x24
                  add x8, x19, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

illegal_instr_handler:
                  csrr  x24, 0x341
                  addi  x24, x24, 4
                  csrw  0x341, x24
                  add x8, x19, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x24, 0x300 # MSTATUS;
                  csrr  x24, 0x304 # MIE;
                  csrr  x24, 0x344 # MIP;
                  csrrc x24, 0x344, x24 # MIP;
                  add x8, x19, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
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
