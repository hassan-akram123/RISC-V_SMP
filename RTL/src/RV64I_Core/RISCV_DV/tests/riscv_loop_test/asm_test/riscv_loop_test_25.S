.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x1, h0_start
jalr x0, x1, 0
h0_start:
                  li x28, 0x40000100
                  csrw 0x301, x28
kernel_sp:        
                  la x25, kernel_stack_end

trap_vec_init:    
                  la x28, mtvec_handler
                  ori x28, x28, 0
                  csrw 0x305, x28 # MTVEC

mepc_setup:       
                  la x28, init
                  csrw 0x341, x28

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x28, 0x1800
                  csrw 0x300, x28 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0xf77da070
                  li x2, 0x0
                  li x3, 0xf9b64f30
                  li x4, 0x0
                  li x5, 0xfc0ecf73
                  li x6, 0x0
                  li x7, 0x0
                  li x8, 0x0
                  li x9, 0xf923e2b2
                  li x10, 0x2
                  li x11, 0xf8842425
                  li x12, 0x1
                  li x13, 0x0
                  li x14, 0x6
                  li x15, 0x0
                  li x16, 0x0
                  li x17, 0x0
                  li x18, 0x8f2876d3
                  li x19, 0xfde1145e
                  li x20, 0xfe5e0f92
                  li x21, 0x1e8227a1
                  li x22, 0x80000000
                  li x23, 0x978e0209
                  li x24, 0xdf851e92
                  li x26, 0x0
                  li x27, 0x0
                  li x28, 0xee008a0
                  li x29, 0xff348ced
                  li x30, 0x4
                  la x31, user_stack_end
main:             addi         tp, zero, 3 #init loop 1 counter
                  addi         s4, zero, 7 #init loop 1 limit
                  and          a3, s11, t2
                  add          t0, a5, a7
main_7_1_t:       lui          a2, 725600
                  srai         a5, a4, 7
                  addi         tp, tp, 8 #update loop 1 counter
                  sltiu        s6, a2, 1095
                  addi         a0, zero, -8 #init loop 0 counter
                  auipc        gp, 635030
                  sltu         s10, gp, a6
                  addi         t4, zero, 4 #init loop 0 limit
main_7_0_t:       ori          sp, s8, -1237
                  auipc        a6, 504278
                  sltiu        a1, s9, 1211
                  addi         a0, a0, 6 #update loop 0 counter
                  beq          a0, t4, main_7_0_t #branch for loop 0
                  or           s8, t1, s9
                  slti         s7, s8, 824
                  lui          s7, 667318
                  sra          t5, tp, t2
                  xor          s10, s1, a3
                  srai         sp, s8, 31
                  add          a7, s10, a3
                  sll          s6, ra, gp
                  blt          tp, s4, main_7_1_t #branch for loop 1
                  nop
                  addi         t5, zero, 4 #init loop 1 counter
                  addi         a4, zero, 18 #init loop 1 limit
main_8_1_t:       lui          s1, 363486
                  add          gp, a6, t4
                  addi         t5, t5, 1 #update loop 1 counter
                  addi         a2, zero, 6 #init loop 0 counter
                  addi         t1, zero, 6 #init loop 0 limit
                  slt          t3, s3, sp
main_8_0_t:       sub          s5, s4, s5
                  addi         a2, a2, -5 #update loop 0 counter
                  slti         s11, zero, -984
                  bgeu         a2, t1, main_8_0_t #branch for loop 0
                  slt          gp, s4, t6
                  bltu         t5, a4, main_8_1_t #branch for loop 1
                  srl          t4, t4, s10
                  addi         s8, zero, 4 #init loop 1 counter
                  nop
                  lui          t2, 1026479
                  and          s1, s4, tp
                  addi         t4, zero, 18 #init loop 1 limit
main_10_1_t:      nop
                  addi         s8, s8, 1 #update loop 1 counter
                  andi         s5, s4, 1315
                  addi         t3, zero, 9 #init loop 0 counter
                  addi         s4, zero, 19 #init loop 0 limit
                  srai         t1, t6, 17
                  sub          s7, s0, a4
main_10_0_t:      andi         a3, s11, -630
                  or           a7, s11, t0
                  addi         t3, t3, 10 #update loop 0 counter
                  beq          t3, s4, main_10_0_t #branch for loop 0
                  sltu         a5, s5, s3
                  sltu         sp, a1, s9
                  bltu         s8, t4, main_10_1_t #branch for loop 1
                  sltu         t2, a0, a3
                  addi         s1, zero, 9 #init loop 1 counter
                  sll          s0, s5, t6
                  srai         zero, t3, 2
                  addi         s5, zero, 9 #init loop 1 limit
                  andi         a1, ra, 871
main_11_1_t:      add          gp, t4, s3
                  xori         gp, ra, -1410
                  addi         s1, s1, -7 #update loop 1 counter
                  sra          a7, a7, s0
                  ori          a4, t4, 891
                  addi         t5, zero, -3 #init loop 0 counter
                  srai         s8, t5, 4
                  addi         a0, zero, -18 #init loop 0 limit
                  sll          t0, s2, a2
                  sub          a3, s7, s10
                  and          s7, t4, a7
                  srl          sp, s6, s0
main_11_0_t:      sltu         a3, a5, s9
                  and          gp, s5, s11
                  auipc        a5, 404363
                  and          s8, a3, s6
                  sra          a4, s10, s1
                  addi         t5, t5, -3 #update loop 0 counter
                  sll          a2, sp, tp
                  bge          t5, a0, main_11_0_t #branch for loop 0
                  ori          t2, s3, -361
                  add          s4, t5, a3
                  srl          a7, s8, s8
                  bgeu         s1, s5, main_11_1_t #branch for loop 1
                  addi         s11, t1, -482
                  addi         t0, zero, -9 #init loop 1 counter
                  addi         s5, zero, 0 #init loop 1 limit
main_6_1_t:       xor          s4, s9, s4
                  addi         t0, t0, 9 #update loop 1 counter
                  addi         s1, zero, 7 #init loop 0 counter
                  srli         a3, s6, 27
                  addi         s2, zero, 4 #init loop 0 limit
main_6_0_t:       andi         s4, t5, -391
                  addi         s1, s1, -2 #update loop 0 counter
                  sltiu        a0, t2, 1427
                  lui          t4, 860985
                  bgeu         s1, s2, main_6_0_t #branch for loop 0
                  beq          t0, s5, main_6_1_t #branch for loop 1
                  addi         a0, a5, -1498
                  addi         t1, zero, -7 #init loop 1 counter
                  or           a2, s11, t4
                  add          a7, s9, a3
                  sub          tp, tp, t2
                  addi         a3, zero, -13 #init loop 1 limit
main_5_1_t:       xori         tp, a3, -911
                  and          t5, t1, t3
                  addi         t1, t1, -4 #update loop 1 counter
                  nop
                  addi         t0, zero, 2 #init loop 0 counter
                  addi         t2, zero, -5 #init loop 0 limit
main_5_0_t:       andi         t4, a6, -1772
                  sll          a1, s10, a0
                  addi         t0, t0, -7 #update loop 0 counter
                  bge          t0, t2, main_5_0_t #branch for loop 0
                  auipc        a4, 639131
                  bge          t1, a3, main_5_1_t #branch for loop 1
                  sltiu        gp, zero, -834
                  addi         sp, zero, -7 #init loop 0 counter
                  addi         a5, t5, -202
                  sltu         t3, t5, a2
                  addi         a7, zero, -15 #init loop 0 limit
                  srai         t5, s7, 6
main_9_0_t:       add          a3, s4, sp
                  sll          a4, t0, s8
                  slli         a1, t2, 4
                  ori          t4, a1, -403
                  srli         t2, s4, 17
                  addi         sp, sp, -4 #update loop 0 counter
                  nop
                  sra          s8, s3, s3
                  bne          sp, a7, main_9_0_t #branch for loop 0
                  addi         s7, a4, -1894
                  addi         a0, zero, 7 #init loop 1 counter
                  addi         a5, gp, 1723
                  addi         t3, zero, 19 #init loop 1 limit
                  and          s7, a5, a5
                  andi         s6, s7, -700
main_3_1_t:       ori          s6, gp, -116
                  sltiu        t2, s8, -1037
                  addi         a0, a0, 2 #update loop 1 counter
                  ori          s7, a2, -1989
                  and          t1, a2, s1
                  addi         s4, zero, -10 #init loop 0 counter
                  andi         t5, a5, 542
                  slti         sp, s11, 221
                  ori          s6, t1, 764
                  addi         s11, zero, 7 #init loop 0 limit
                  sltu         s10, a3, t3
                  srai         s1, gp, 12
                  sub          s5, t4, a0
main_3_0_t:       add          s1, s4, a7
                  or           s7, s0, gp
                  srl          t2, s2, sp
                  addi         s4, s4, 1 #update loop 0 counter
                  srl          a1, ra, s0
                  slli         s8, a6, 29
                  xor          s2, t1, t4
                  srli         t4, a6, 26
                  lui          a2, 240949
                  blt          s4, s11, main_3_0_t #branch for loop 0
                  andi         s6, t4, 1469
                  addi         s10, t2, -1344
                  bne          a0, t3, main_3_1_t #branch for loop 1
                  lui          a5, 28803
                  andi         s8, zero, 250
                  slli         a6, s11, 31
                  srli         s2, t4, 22
                  srai         s0, a1, 17
                  slt          t2, s8, t2
                  add          gp, t2, a3
                  sll          t3, sp, a1
                  beq          gp, s3, 27f
                  lui          s11, 1010693
                  andi         t1, sp, 1796
                  blt          t1, a1, 21f
                  slt          a0, s5, ra
                  slti         a4, a6, 1809
                  sltiu        s6, s7, 444
                  auipc        t3, 795546
                  sll          gp, sp, s6
                  addi         t2, t1, 570
                  addi         a6, s4, -529
                  bge          a1, gp, 27f
                  andi         a0, a5, 616
                  bltu         a1, a1, 29f
21:               and          a2, a3, s3
                  or           s1, t1, s6
                  srli         s11, t4, 30
                  addi         s7, zero, 2 #init loop 1 counter
                  addi         t0, zero, -15 #init loop 1 limit
main_4_1_t:       sub          a2, a7, a1
                  addi         s7, s7, -6 #update loop 1 counter
                  addi         t5, zero, 2 #init loop 0 counter
                  addi         s8, zero, 2 #init loop 0 limit
                  sltu         t4, s11, t5
main_4_0_t:       ori          s5, gp, 1527
                  addi         t5, t5, -1 #update loop 0 counter
                  bgeu         t5, s8, main_4_0_t #branch for loop 0
                  bge          s7, t0, main_4_1_t #branch for loop 1
                  ori          zero, a3, -965
                  bltu         t2, sp, 36f
                  xor          s8, s11, s0
                  sll          s7, s0, s5
27:               sra          t4, a2, gp
                  srai         s8, s7, 22
29:               ori          s6, a7, 1023
                  sll          a2, a7, zero
                  slt          t5, ra, s3
                  beq          t1, tp, 35f
                  sub          a5, t3, t4
                  sub          tp, t2, tp
35:               slli         zero, t5, 4
36:               add          s4, a3, s4
                  beq          t4, a2, 47f
                  sltiu        a0, t2, -422
                  srai         t1, a2, 17
                  bltu         s11, s8, 56f
                  srl          t3, t4, a1
                  lui          s8, 24052
                  slt          s8, sp, s10
                  slti         t2, gp, -1120
                  bltu         s0, t6, 59f
                  beq          s10, gp, 53f
47:               add          t0, s7, s9
                  srai         a2, gp, 16
                  and          s3, ra, t6
                  bne          a4, s8, 57f
                  srli         t5, tp, 14
                  or           t1, t2, a7
53:               or           t2, a6, s1
                  add          s2, t5, s11
                  beq          s3, a1, 59f
56:               lui          a5, 575401
57:               bgeu         t2, a6, 66f
                  xor          t2, ra, t4
59:               nop
                  andi         a3, s4, -405
                  sltiu        a7, s10, -717
                  add          t3, a7, s9
                  slli         s0, a4, 27
                  srl          s0, a5, s10
                  slt          s6, s6, a7
66:               bgeu         s1, t4, 78f
                  sll          s1, t6, t1
                  slt          s3, s10, s8
                  slti         a2, sp, -1278
                  srai         t5, zero, 31
                  bltu         s9, s1, 81f
                  slt          t3, t0, zero
                  slli         s6, tp, 4
                  addi         s4, sp, 1374
                  srli         t1, t5, 16
                  bge          t0, t4, 95f
                  and          t5, tp, gp
78:               beq          s10, s3, 83f
                  sltiu        s11, s8, -1394
                  nop
81:               beq          t0, sp, 84f
                  ori          t1, a6, -1779
83:               srai         s11, s10, 31
84:               nop
                  xori         s0, zero, 231
                  sltiu        s7, ra, -512
                  ori          s2, s1, -1728
                  bgeu         t6, gp, 101f
                  slli         s8, s3, 7
                  ori          s10, s7, 498
                  slt          s4, t0, ra
                  sub          t4, a7, s4
                  xor          s10, gp, a1
                  xori         t1, t1, 1019
                  addi         a5, zero, 7 #init loop 1 counter
                  addi         a2, zero, 9 #init loop 1 limit
main_0_1_t:       auipc        sp, 927858
                  addi         a5, a5, 1 #update loop 1 counter
                  addi         s3, zero, -4 #init loop 0 counter
                  sltiu        a7, s2, 128
                  addi         t3, zero, 2 #init loop 0 limit
main_0_0_t:       auipc        s4, 362477
                  srli         t1, zero, 30
                  addi         s3, s3, 10 #update loop 0 counter
                  blt          s3, t3, main_0_0_t #branch for loop 0
                  sra          sp, a0, s10
                  bne          a5, a2, main_0_1_t #branch for loop 1
                  add          s1, a0, t4
95:               andi         t0, a1, -537
                  blt          s7, s3, 108f
                  xori         t3, s6, 1172
                  sltu         a7, s7, s4
                  addi         t2, t2, -1781
                  addi         a4, s0, 1535
101:              sltu         a7, t4, s4
                  bgeu         s8, s11, 122f
                  ori          s0, t4, 1611
                  bgeu         a3, s1, 117f
                  ori          t3, a6, -295
                  auipc        gp, 760088
                  slli         s0, a0, 24
108:              sltiu        t0, a7, -206
                  or           t0, a3, s4
                  ori          a0, gp, 1984
                  add          gp, t0, s6
                  slt          a6, s4, t0
                  ori          s6, s1, 836
                  addi         a6, zero, 834
                  addi         s1, zero, 1134
                  srli         a1, ra, 18
117:              bgeu         s2, s2, 121f
                  or           t2, s9, s4
                  or           a7, a7, s2
                  andi         s10, a7, -1201
121:              auipc        a1, 876185
122:              srai         s2, s4, 10
                  slt          a1, t5, s9
                  srl          a1, tp, ra
                  ori          s6, s11, 1488
                  slt          t4, s0, a7
                  nop
                  andi         a2, tp, 1884
                  sra          zero, a1, s3
                  srl          s8, s4, s4
                  xor          a3, sp, t0
                  srli         s11, t5, 11
                  xor          a2, a2, gp
                  xor          tp, a4, s9
                  ori          a3, t1, -1090
                  sltu         tp, t2, t2
                  slti         s0, a1, 1386
                  auipc        t3, 387284
                  srai         s6, gp, 8
                  add          s8, a5, a6
                  xor          a7, sp, t2
                  sra          s8, t1, a3
                  sll          s4, s2, s4
                  srl          s10, a3, t5
                  addi         a5, s8, 483
                  xori         s11, s0, -1682
                  bne          a0, gp, 154f
                  andi         t0, ra, -918
                  xor          zero, s3, ra
                  auipc        t4, 889811
                  sub          t2, s1, s8
                  bge          s6, t6, 163f
                  add          a7, t2, a1
154:              beq          s6, a6, 164f
                  xor          a7, s8, t1
                  slli         tp, s0, 20
                  sra          a3, a7, t0
                  nop
                  xor          s7, s4, t4
                  slli         t0, a6, 12
                  add          t3, t2, s7
                  add          s2, s8, a3
163:              sll          t5, s1, zero
164:              sltu         s6, t3, t3
                  xor          s4, a7, t4
                  bge          t6, s10, 179f
                  srl          t4, s1, a2
                  sll          a4, s10, gp
                  sltiu        t1, t1, -1760
                  bgeu         a6, tp, 185f
                  srl          s0, s9, t1
                  srai         gp, a7, 16
                  add          s0, ra, s4
                  srl          a5, t0, s2
                  bne          s8, t3, 179f
                  auipc        t2, 151598
                  slti         a3, sp, 830
                  bne          a2, zero, 185f
179:              sltu         s1, t2, a6
                  slti         s4, t1, -1047
                  auipc        s5, 523177
                  bltu         a2, gp, 194f
                  bne          gp, s9, 190f
                  sra          a4, t3, s2
185:              xori         tp, s11, 1043
                  beq          s5, s5, 195f
                  slti         s10, sp, 632
                  or           s11, s4, t5
                  srl          a7, a2, t2
190:              srl          a3, zero, a3
                  addi         tp, s2, -230
                  auipc        a5, 944142
                  slt          s10, s8, gp
194:              bge          s4, a7, 214f
195:              bge          s10, sp, 204f
                  bltu         sp, s11, 216f
                  srai         s7, s11, 24
                  add          a6, t1, s11
                  lui          a7, 867193
                  beq          t1, a2, 211f
                  srli         t2, gp, 15
                  blt          a6, t2, 209f
                  srli         sp, sp, 4
204:              sra          zero, t1, tp
                  srli         s5, zero, 22
                  lui          s7, 301140
                  nop
                  blt          s8, a1, 221f
209:              srai         a6, a5, 11
                  srl          s2, a3, a4
211:              bge          s4, s10, 214f
                  slli         a2, s4, 31
                  sub          a7, t0, a3
214:              add          t1, zero, s10
                  sra          a2, s10, s6
216:              srli         s2, s2, 31
                  sra          a1, s6, s3
                  lui          t1, 197450
                  addi         a7, gp, -338
                  or           s1, t4, t4
221:              srai         s11, s9, 26
                  andi         s11, s0, -896
                  slt          s6, s3, a6
                  srai         t4, a5, 27
                  lui          zero, 257397
                  sltiu        a2, t4, -1416
                  srl          t1, sp, t4
                  sltiu        s2, sp, 1980
                  lui          s1, 694115
                  lui          t2, 229977
                  nop
                  sltiu        a4, a3, -229
                  sra          s3, ra, t1
                  andi         a4, s7, 336
                  xori         zero, s10, 300
                  and          s5, s1, zero
                  srai         s11, a0, 24
                  and          s4, a1, s4
                  addi         t4, t2, -1804
                  sra          tp, ra, gp
                  bgeu         a5, s4, 256f
                  sltu         a3, gp, gp
                  beq          s3, gp, 255f
                  add          s7, s11, a4
                  or           a7, t6, s6
                  sra          tp, a1, ra
                  srai         a7, t1, 28
                  sll          a5, a4, t1
                  srai         s1, t5, 16
                  andi         s6, gp, -1492
                  auipc        a7, 631364
                  slli         sp, ra, 25
                  addi         t0, s10, 1147
                  add          t2, s8, s10
255:              lui          s2, 816232
256:              bge          t4, zero, 260f
                  addi         s2, zero, 3 #init loop 1 counter
                  xori         a5, a1, -73
                  addi         s8, zero, 12 #init loop 1 limit
main_1_1_t:       andi         t5, t2, 247
                  add          t1, s4, t2
                  addi         s2, s2, 7 #update loop 1 counter
                  srl          a6, a7, a0
                  addi         t2, zero, -3 #init loop 0 counter
                  slt          s11, sp, s3
                  addi         t4, zero, -20 #init loop 0 limit
                  and          s4, gp, t3
main_1_0_t:       xor          zero, s10, ra
                  addi         t2, t2, -9 #update loop 0 counter
                  bge          t2, t4, main_1_0_t #branch for loop 0
                  slli         s3, s2, 12
                  sra          t0, a4, s4
                  blt          s2, s8, main_1_1_t #branch for loop 1
                  andi         a6, tp, -1791
                  andi         s4, a2, -990
                  beq          s7, s2, 268f
                  xori         s10, t6, 1516
260:              andi         s0, s6, -240
                  sll          sp, a2, s9
                  and          a3, a3, t5
                  lui          s5, 264861
                  bne          a0, s11, 275f
                  slti         s5, s11, -1164
                  sltu         s7, a5, t5
                  slt          a1, s8, sp
268:              sltu         a2, ra, a4
                  srai         s3, a6, 10
                  xor          t2, s3, s4
                  beq          s4, a1, 285f
                  auipc        a3, 1040241
                  sll          a6, s9, sp
                  slti         s11, gp, 1239
275:              slt          t1, a4, t4
                  slti         t2, s10, 903
                  sra          s3, t2, ra
                  slli         zero, a6, 12
                  sltiu        a1, a3, -1090
                  beq          t4, s5, 287f
                  srli         s11, a3, 16
                  lui          a6, 1018261
                  ori          tp, s0, 834
                  beq          s4, a0, 291f
285:              addi         s0, a4, 191
                  sra          a1, t1, s4
287:              bne          a4, s8, 291f
                  auipc        s0, 103128
                  sll          a7, a4, gp
                  bne          t5, t2, 295f
291:              sltu         a5, a4, a0
                  nop
                  andi         s4, gp, 1861
                  sub          t2, t5, t4
295:              xor          s1, t5, s7
                  bgeu         t0, s6, 315f
                  bne          t1, t6, 300f
                  sra          a1, s8, s0
                  add          s0, t0, s2
300:              xor          a7, zero, zero
                  ori          t2, t5, -759
                  bne          t5, t3, 306f
                  sll          gp, s2, s8
                  xori         a4, t5, -636
                  sub          t1, s5, a6
306:              sra          a1, s10, t2
                  bltu         s6, a7, 320f
                  sll          gp, s1, s5
                  slli         s4, s10, 16
                  slli         s7, a5, 14
                  srai         a4, s0, 17
                  la           sp, sub_1
                  addi         sp, sp, -48
                  xori         a2, t2, -1978
                  bgeu         s7, s3, main_j1 #branch to jump instr
                  and          s10, ra, a6
                  ori          s0, sp, 458
main_j1:          jalr         s2, sp, 48 #jump main -> sub_1
                  xori         t0, s3, -1463
                  andi         a7, s7, -123
                  sra          t2, s1, t6
                  ori          s7, s10, -18
                  sll          s10, tp, a4
                  slt          a1, t1, s9
                  xori         a0, a5, 1421
315:              srl          s5, s11, s3
                  sra          tp, t1, a6
                  addi         tp, s8, 106
                  slti         a0, sp, -1906
                  add          s11, sp, t0
320:              srl          tp, a2, t2
                  andi         a3, s11, -1036
                  add          s10, a4, t1
                  blt          t0, zero, 333f
                  lui          t2, 679504
                  srl          zero, t6, s1
                  sub          t3, ra, s3
                  bge          s3, t4, 337f
                  srl          a5, s10, t1
                  srl          zero, s9, t0
                  xori         t5, a0, 992
                  and          a2, a3, a1
                  sltu         tp, t4, t5
333:              sltiu        t5, t2, 440
                  xor          a4, a7, a2
                  lui          a7, 243532
                  addi         zero, s6, 1682
337:              lui          a0, 823799
                  bge          t5, a2, 350f
                  or           zero, a2, a7
                  blt          a2, a4, 353f
                  addi         a0, s3, 396
                  blt          tp, s9, 351f
                  sltiu        zero, t1, -1773
                  blt          s11, a3, 360f
                  xor          s10, a6, a5
                  sltu         s7, a6, s3
                  slli         a3, a6, 18
                  xori         zero, s8, 604
                  blt          t5, s7, 359f
350:              lui          a0, 867148
351:              sll          sp, a2, s5
                  add          s2, tp, tp
353:              srli         s3, a0, 19
                  sltu         gp, a0, gp
                  andi         s10, zero, -1940
                  nop
                  slti         a2, s7, 1286
                  addi         t4, t2, 1386
359:              bne          a0, zero, 372f
360:              srli         zero, tp, 25
                  bne          s7, t5, 368f
                  slti         t1, s6, 915
                  nop
                  andi         s11, sp, -866
                  srl          s8, a4, s1
                  sltu         tp, sp, s9
                  beq          s6, s9, 376f
368:              bgeu         a3, s10, 383f
                  bltu         s10, s3, 376f
                  srl          t4, s8, a6
                  blt          s2, s10, 380f
372:              slt          sp, s9, s4
                  xor          t5, s7, a3
                  bgeu         t1, t5, 394f
                  bgeu         t1, s3, 378f
376:              bne          a2, t2, 389f
                  add          t4, tp, s2
378:              sltu         a2, s9, s3
                  addi         t3, zero, -4 #init loop 0 counter
                  srl          t5, a5, t5
                  or           s5, gp, sp
                  srl          t5, s3, a4
                  andi         a4, s10, -1822
                  srli         s8, zero, 2
                  addi         a1, zero, -19 #init loop 0 limit
                  or           a5, sp, s3
main_2_0_t:       auipc        s4, 977592
                  slt          a2, s9, sp
                  sltiu        s8, a7, -1290
                  srl          s5, tp, gp
                  slti         s11, s8, -1587
                  addi         t3, t3, -8 #update loop 0 counter
                  slti         gp, s10, -1905
                  xor          a5, zero, t0
                  slli         s0, a6, 23
                  slt          sp, a1, t0
                  sra          s1, a6, s9
                  bge          t3, a1, main_2_0_t #branch for loop 0
                  sltu         s2, a1, tp
                  addi         s3, s9, -702
380:              slli         t2, s7, 21
                  bltu         ra, s8, 394f
                  srl          tp, t2, t5
383:              sub          s11, ra, a2
                  addi         t4, s0, 588
                  beq          s10, s9, 404f
                  and          s1, s10, a3
                  slti         a0, t0, -906
                  bge          a7, a7, 399f
389:              bgeu         a1, gp, 403f
                  blt          s8, s2, 400f
                  bltu         s10, gp, 400f
                  sltu         tp, s8, a0
                  sra          s8, s9, a2
394:              srai         a6, s3, 24
                  and          zero, s0, s7
                  srli         t0, t6, 22
                  srli         t3, s9, 5
                  xor          t2, t0, s7
399:              slli         s3, t0, 9
400:              nop
                  slt          a6, s4, a2
                  or           t2, s8, t2
403:              lui          a6, 747731
404:              ori          s6, t2, 401
                  bltu         t1, a6, 415f
                  bltu         t0, a3, 409f
                  bge          s7, s8, 414f
                  bne          s3, t0, 420f
409:              auipc        a2, 365281
                  slti         a3, s6, 430
                  beq          zero, s4, 427f
                  sub          zero, s5, t5
                  bltu         s0, t1, 424f
414:              bge          s6, t0, 434f
415:              andi         s7, zero, -496
                  xor          a4, a5, sp
                  lui          a5, 938750
                  sltiu        t5, t6, 1054
                  andi         t4, ra, 542
420:              blt          t3, a1, 427f
                  addi         s10, s0, -1561
                  addi         s0, t2, 302
                  srl          a5, sp, t1
424:              xor          a2, t3, t5
                  bltu         s3, s6, 429f
                  sltu         a5, s9, tp
427:              bge          s10, a3, 432f
                  sltiu        t5, gp, 1402
429:              xor          t2, a6, s7
                  blt          s7, a3, 434f
                  slti         s2, s0, -1631
432:              slti         sp, s7, 1296
                  add          s2, s2, t3
434:              blt          ra, s5, 446f
                  ori          s5, a1, -696
                  sub          a5, t1, t4
                  addi         s0, s6, 1226
                  bne          gp, s3, 442f
                  nop
                  sltiu        s11, t1, 1052
                  and          gp, t1, a4
442:              xor          t5, sp, s7
                  blt          a6, s1, 455f
                  sra          a2, a7, t0
                  nop
446:              lui          s5, 1042122
                  nop
                  or           s4, a2, ra
                  sltu         s0, t5, a7
                  xori         t5, s6, 1081
                  xori         a6, s0, -471
                  sltu         t1, ra, a2
                  srli         t5, s6, 6
                  xori         a1, sp, -627
455:              srai         tp, a1, 31
                  ori          s11, a3, 1360
                  sltiu        a3, gp, 291
                  slt          s6, a1, t2
                  and          t5, s6, t1
                  xor          s5, tp, t5
                  add          s2, a7, s6
                  slti         t2, a7, 1292
                  bltu         t6, s8, 468f
                  srl          s6, a4, a1
                  sltiu        t5, gp, -275
                  auipc        s5, 773725
                  sra          t3, a5, s10
468:              andi         t2, s8, 447
                  blt          a4, s9, 484f
                  auipc        a1, 387037
                  sltu         s7, t0, t0
                  sltu         t3, s2, a5
                  srli         t3, t6, 6
                  srl          s7, s10, sp
                  sra          tp, t1, a1
                  slt          tp, s0, s7
                  sltu         a1, t5, sp
                  sltiu        t1, s6, 43
                  bgeu         a2, a4, 486f
                  bge          s4, s1, 493f
                  or           s2, t6, a4
                  slti         s3, s4, 1440
                  nop
484:              or           s2, s8, s1
                  bge          a1, s9, 489f
486:              nop
                  beq          s4, s3, 503f
                  bltu         s4, a6, 498f
489:              bltu         zero, s7, 498f
                  slt          sp, a4, a2
                  slti         t4, s6, 1513
                  addi         a4, s11, 978
493:              bltu         t0, t6, 512f
                  lui          a4, 109151
                  andi         t3, s2, 616
                  bgeu         t2, sp, 508f
                  srli         s1, s9, 7
498:              andi         a3, a4, 441
                  and          s0, a4, s0
                  srl          s8, s0, t3
                  bne          ra, s8, 511f
                  and          sp, a2, s10
503:              slti         zero, t4, 1134
                  srai         a6, s6, 17
                  srli         sp, sp, 28
                  auipc        gp, 630990
                  blt          a0, ra, 514f
508:              bge          a5, a3, 511f
                  bne          a7, s3, 523f
                  or           t5, s8, zero
511:              bge          s7, t2, 520f
512:              add          sp, s1, a6
                  slli         tp, s4, 6
514:              slli         s10, s11, 3
                  srai         s1, s7, 30
                  or           s10, s5, t5
                  xori         a2, a3, -55
                  and          s11, t6, s4
                  slti         gp, a7, 315
520:              slti         t1, s3, 2029
                  sltu         s8, a3, ra
                  or           t5, a0, s3
523:              addi         a4, s7, 1828
                  bge          a5, s1, 527f
                  sub          s3, s11, a5
                  xor          a3, zero, s6
527:              auipc        gp, 1044949
                  bgeu         sp, a6, 537f
                  xor          a0, ra, s3
                  add          a4, a0, t1
                  bgeu         s1, t2, 535f
                  srai         t3, zero, 7
                  slti         s7, a5, 254
                  lui          a0, 630453
535:              addi         s10, gp, -329
                  srli         a0, a5, 14
537:              bne          s3, s10, 541f
                  sub          a2, a3, s8
                  andi         t4, sp, -328
                  bgeu         a7, sp, 550f
541:              slt          a1, t0, ra
                  sll          a0, t1, s5
                  lui          t1, 911458
                  sub          t5, t3, s10
                  srai         s10, t1, 13
                  sltu         t3, ra, s6
                  bge          s10, a5, 558f
                  sub          t5, s1, s2
                  srli         a4, ra, 10
550:              add          s2, s5, t6
                  srai         a4, s5, 27
                  bne          s6, tp, 564f
                  sub          a4, gp, a6
                  srai         s7, zero, 30
                  lui          tp, 725576
                  slt          t2, ra, a2
                  srl          sp, s11, a2
558:              bgeu         a3, a7, 571f
                  andi         s11, t4, 879
                  bne          a6, s11, 571f
                  sltu         sp, s11, a5
                  auipc        s7, 269448
                  or           s10, s4, s11
564:              lui          a4, 461267
                  add          zero, s9, t5
                  sll          t3, t4, a3
                  blt          t5, a5, 587f
                  lui          a2, 763559
                  xor          a7, ra, t3
                  bgeu         s5, s0, 590f
571:              beq          a3, t0, 584f
                  slti         gp, tp, 91
                  lui          a3, 86759
                  sltu         zero, a2, s1
                  bltu         a7, t1, 582f
                  andi         a5, s11, -838
                  slt          a4, t1, a0
                  and          zero, t2, ra
                  sltiu        gp, tp, -241
                  blt          t3, s4, 592f
                  blt          s0, a2, 588f
582:              and          t1, s2, t4
                  beq          sp, s10, 599f
584:              xori         s5, a4, 106
                  auipc        t5, 623421
                  or           t1, s6, ra
587:              sra          a3, t3, s2
588:              sub          tp, s5, t6
                  sll          zero, a4, t2
590:              slt          t0, s3, zero
                  or           sp, a4, t0
592:              slti         t1, a2, 118
                  andi         s6, s9, -639
                  ori          gp, s3, 2042
                  bgeu         a3, t2, 598f
                  slli         zero, t6, 25
                  sltu         s10, sp, a7
598:              addi         a6, t0, -325
599:              slti         a3, s3, -1119
                  lui          s0, 594622
                  xor          s11, a6, a5
                  slt          s3, t1, a4
                  srai         t1, tp, 14
                  sll          s7, a0, s4
                  sll          gp, a3, s6
                  addi         t4, s2, 194
                  add          s3, a1, a5
                  addi         t3, s5, 2047
                  add          t0, s0, a2
                  bgeu         a4, gp, 614f
                  beq          t0, s7, 614f
                  addi         gp, gp, -343
                  or           s7, t4, s0
614:              srai         a1, gp, 2
                  la x1, test_done
                  jalr x0, x1, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            and          a0, a5, a2
                  addi         t6, t6, -36
                  sltu         s0, s3, s0
                  srai         a4, s2, 28
                  slt          zero, a0, s9
                  sw           s2, 4(t6)
                  slti         a5, t1, 1982
                  slli         a1, s5, 0
                  xor          t0, a4, s0
                  sra          sp, s5, t4
                  sltiu        s4, s11, -1022
                  xori         s5, a4, -439
                  auipc        s1, 581125
                  andi         sp, t4, 2019
                  bge          a3, s9, sub_2_j6 #branch to jump instr
                  addi         t0, s10, -1762
                  xori         zero, a3, -1014
                  addi         s4, s4, -1822
sub_2_j6:         jal          s2, sub_5 #jump sub_2 -> sub_5
                  addi         a7, zero, 1 #init loop 0 counter
                  xori         a0, t2, -1752
                  xor          s0, a6, a0
                  addi         t2, zero, -19 #init loop 0 limit
                  srl          a2, t1, zero
                  sll          tp, t1, t2
                  sub          t0, s3, s4
                  lui          zero, 241139
                  srli         t4, a7, 11
sub_2_0_0_t:      ori          sp, s0, -155
                  xori         s8, t3, 1090
                  addi         a7, a7, -3 #update loop 0 counter
                  slti         t3, a7, -184
                  srli         s1, s11, 22
                  xor          s2, a7, s11
                  addi         s11, gp, 1457
                  add          s2, t2, t1
                  slt          s8, s11, s9
                  bge          a7, t2, sub_2_0_0_t #branch for loop 0
                  nop
                  bgeu         s8, zero, 19f
                  sll          s5, t4, s11
                  sll          a4, a5, gp
                  xori         a7, gp, -1891
                  addi         a0, gp, 210
                  add          s8, s4, a4
                  sra          gp, s11, a4
                  srl          s5, a1, s8
                  xor          a1, s8, s1
                  lui          s6, 743535
                  add          s4, a0, s9
                  sub          s11, t3, a2
                  and          zero, tp, s5
                  bge          s4, a1, 17f
                  lui          sp, 473849
                  lui          s6, 215980
                  add          tp, a5, t2
17:               sltu         t1, s2, s4
                  sltu         a5, s3, s6
19:               nop
                  bgeu         gp, s1, 36f
                  sll          tp, t4, gp
                  sltiu        s4, s10, -1226
                  slt          s10, s4, zero
                  srai         t5, s6, 31
                  beq          a1, t1, 27f
                  srai         s10, zero, 7
27:               sll          t0, t2, zero
                  add          s4, gp, a5
                  sltiu        sp, gp, -991
                  ori          s3, gp, -446
                  and          s0, t6, t3
                  andi         s8, s6, -1386
                  addi         a2, s0, -535
                  bgeu         gp, a2, 47f
                  ori          a1, s11, -742
36:               or           s6, s0, s7
                  slli         a1, t3, 30
                  add          s11, t4, s10
                  xor          s7, a5, s0
                  bgeu         zero, s8, 54f
                  bge          a7, s6, 58f
                  beq          ra, tp, 57f
                  slti         s0, a0, 4
                  slt          s10, gp, sp
                  srai         s6, a6, 15
                  nop
47:               bne          s1, s6, 67f
                  slt          a0, a6, s3
                  nop
                  blt          t5, s2, 59f
                  sra          gp, s1, a4
                  lui          s8, 390976
                  sltiu        a0, s4, -1504
54:               nop
                  nop
                  auipc        a5, 193780
57:               blt          t3, t0, 74f
58:               slli         s11, t6, 4
59:               sub          a4, s4, gp
                  srai         a3, s5, 6
                  auipc        s6, 643522
                  addi         s1, a5, -1111
                  srli         s8, a4, 23
                  srl          s5, t6, t4
                  beq          a6, s6, 68f
                  or           t3, a2, s8
67:               bgeu         s9, s2, 73f
68:               bgeu         a7, s5, 83f
                  and          s10, s7, sp
                  srli         t4, t5, 11
                  sltu         s5, a7, a3
                  auipc        s7, 375490
73:               slli         s8, a6, 23
74:               auipc        a3, 1042805
                  bgeu         t5, a0, 85f
                  sll          zero, s8, t4
                  addi         s0, t2, -772
                  nop
                  add          tp, t4, ra
                  bgeu         s7, ra, 90f
                  lui          s10, 956380
                  slti         t4, s7, -57
83:               sub          zero, s10, a5
                  addi         s2, s10, -2021
85:               sltiu        zero, a3, -1002
                  lui          s8, 891216
                  bge          s6, s1, 96f
                  auipc        a2, 341648
                  srl          s11, a5, s3
90:               xor          a0, zero, t3
                  or           s11, t1, a0
                  nop
                  xor          s11, s8, a0
                  blt          a0, s4, 96f
                  ori          sp, t6, 199
96:               add          a1, a5, a1
                  lw           s2, 4(t6)
                  addi         t6, t6, 36
                  nop
                  sra          t4, sp, t1
                  slt          a6, t3, sp
                  andi         tp, a3, 340
                  add          s1, s7, s1
                  slt          a0, s9, ra
                  srli         a5, s2, 22
145:              addi x5, x18, 0
145:              jalr x5, x5, 0
sub_3:            and          gp, s2, t4
                  srai         sp, a2, 31
                  beq          a3, ra, sub_3_stack_p
sub_3_stack_p:    addi         t6, t6, -56
                  sw           s2, 4(t6)
                  sub          a1, s6, sp
                  xori         tp, a5, -692
                  xori         t5, s3, 1663
                  lui          s0, 23968
                  addi         s5, zero, 10 #init loop 1 counter
                  addi         t0, zero, 10 #init loop 1 limit
sub_3_2_1_t:      ori          s1, zero, 800
                  andi         s6, t6, 431
                  addi         s5, s5, -9 #update loop 1 counter
                  slti         gp, a2, 1163
                  sra          zero, t0, s6
                  sra          gp, t3, s9
                  and          a0, a4, a6
                  sra          a7, a4, t5
                  nop
                  addi         t3, zero, -7 #init loop 0 counter
                  ori          t1, s9, 1650
                  auipc        a6, 235558
                  addi         s0, zero, 11 #init loop 0 limit
sub_3_2_0_t:      andi         s8, t3, -1410
                  addi         t3, t3, 9 #update loop 0 counter
                  bltu         t3, s0, sub_3_2_0_t #branch for loop 0
                  and          a6, sp, s5
                  or           a1, ra, s0
                  bgeu         s5, t0, sub_3_2_1_t #branch for loop 1
                  sltiu        sp, s4, -967
                  addi         t5, zero, 6 #init loop 1 counter
                  addi         t4, tp, -457
                  addi         t3, zero, 3 #init loop 1 limit
                  sra          t0, s11, a7
sub_3_4_1_t:      slti         a2, s10, -664
                  addi         tp, s10, 1612
                  addi         t5, t5, -10 #update loop 1 counter
                  andi         zero, s7, -424
                  addi         gp, zero, 10 #init loop 0 counter
                  auipc        s7, 120349
                  addi         s4, zero, 18 #init loop 0 limit
                  and          s7, s1, t0
sub_3_4_0_t:      and          s7, s10, gp
                  srl          s3, a3, a4
                  addi         gp, gp, 8 #update loop 0 counter
                  auipc        t0, 122112
                  xori         s5, zero, -1611
                  bne          gp, s4, sub_3_4_0_t #branch for loop 0
                  bge          t5, t3, sub_3_4_1_t #branch for loop 1
                  add          sp, s1, t3
                  addi         t0, zero, -10 #init loop 0 counter
                  srl          t3, gp, a5
                  srai         s1, t4, 19
                  addi         a4, zero, -16 #init loop 0 limit
sub_3_6_0_t:      ori          t5, s1, 1898
                  srl          t4, s0, a4
                  addi         t0, t0, -5 #update loop 0 counter
                  sra          tp, a6, s1
                  nop
                  sltu         a7, a4, a0
                  bge          t0, a4, sub_3_6_0_t #branch for loop 0
                  slt          a0, a2, t6
                  addi         s6, zero, 10 #init loop 0 counter
                  sra          a6, t1, t2
                  srai         s1, s9, 17
                  xori         s0, s10, 641
                  sub          s1, t3, ra
                  slt          t3, s3, t2
                  slti         s0, s0, -887
                  srai         a6, gp, 19
                  slli         s4, s10, 13
                  nop
                  srli         a4, a2, 21
                  addi         t3, t5, 1646
                  xor          a2, s9, a6
                  addi         s11, zero, -10 #init loop 0 limit
                  slli         s1, a4, 8
                  srli         a3, s8, 10
                  slt          a6, s11, tp
                  auipc        t3, 16798
                  srl          a4, s8, s7
sub_3_7_0_t:      lui          tp, 752686
                  slli         s8, a5, 31
                  addi         s6, s6, -10 #update loop 0 counter
                  sra          s4, s9, ra
                  xori         s3, t1, 369
                  slli         sp, tp, 15
                  addi         tp, sp, -1425
                  addi         t4, t3, 213
                  beq          s6, s11, sub_3_7_0_t #branch for loop 0
                  sltu         s2, a0, s2
                  addi         t4, zero, 10 #init loop 1 counter
                  sll          s5, s1, zero
                  xori         a0, s4, 457
                  addi         tp, zero, 7 #init loop 1 limit
sub_3_5_1_t:      sltiu        s8, t2, -1505
                  srli         s1, s1, 12
                  addi         t4, t4, -6 #update loop 1 counter
                  sub          s2, s8, a2
                  auipc        a1, 585976
                  addi         s10, zero, -9 #init loop 0 counter
                  addi         a6, zero, -16 #init loop 0 limit
                  slt          t5, s9, a1
                  andi         zero, s7, -784
sub_3_5_0_t:      sltiu        s0, t5, -1767
                  srli         a3, s10, 14
                  addi         s10, s10, -10 #update loop 0 counter
                  bge          s10, a6, sub_3_5_0_t #branch for loop 0
                  sltiu        s1, t2, -26
                  sltu         t0, t3, sp
                  sltu         s0, a4, t5
                  bgeu         t4, tp, sub_3_5_1_t #branch for loop 1
                  nop
                  addi         a0, zero, 4 #init loop 0 counter
                  and          tp, s3, gp
                  ori          a1, t0, -1940
                  srai         s1, t4, 14
                  sltiu        t3, tp, 8
                  slti         s4, s0, 1244
                  addi         s6, zero, -1 #init loop 0 limit
                  slli         a4, t2, 20
                  and          a1, s9, t6
sub_3_1_0_t:      slt          tp, a2, t3
                  xor          t2, t0, s6
                  srli         a1, t5, 12
                  or           t0, s7, a6
                  sra          tp, s10, a0
                  addi         a0, a0, -5 #update loop 0 counter
                  slt          a5, a2, zero
                  xor          a2, gp, gp
                  xori         t0, a2, 135
                  or           s8, a7, a2
                  xor          s0, s1, a6
                  sll          zero, s6, gp
                  sra          a7, ra, a0
                  slti         t5, s11, -934
                  lui          t2, 840239
                  nop
                  bge          a0, s6, sub_3_1_0_t #branch for loop 0
                  xor          s5, sp, s11
                  addi         tp, zero, 0 #init loop 0 counter
                  srli         s4, s3, 20
                  xor          s7, gp, s5
                  addi         s1, zero, 16 #init loop 0 limit
                  slt          s6, a7, t4
sub_3_0_0_t:      andi         t4, a6, 1493
                  srli         a4, tp, 12
                  sltu         a3, s1, s3
                  addi         tp, tp, 8 #update loop 0 counter
                  slli         a0, a3, 15
                  sltiu        s0, s4, 1113
                  auipc        s7, 634169
                  and          a2, a0, t1
                  beq          tp, s1, sub_3_0_0_t #branch for loop 0
                  and          gp, sp, t5
                  sltu         gp, t5, t0
                  sra          sp, t5, a0
                  bltu         t3, a4, 21f
                  bne          t4, a5, 6f
                  nop
                  sltu         t2, s8, t5
6:                addi         a7, t0, -790
                  slli         a6, t3, 23
                  sra          s7, a5, a3
                  srl          a1, a1, a6
                  slli         t1, a5, 2
                  slti         a1, s6, 962
                  slti         gp, s7, -1660
                  or           t1, t3, zero
                  and          s11, t3, a5
                  srai         a6, sp, 2
                  sltu         t1, s0, s11
                  slti         a7, s10, -276
                  sub          t1, zero, t4
                  slt          s2, a3, s9
                  auipc        t0, 649472
21:               addi         a6, a3, 273
                  srai         sp, gp, 7
                  srl          t2, s0, s2
                  andi         s1, a2, -769
                  nop
                  srai         t1, a6, 27
                  sll          a5, t0, t6
                  bne          t6, t5, 34f
                  sltiu        tp, ra, 1802
                  and          gp, a6, s5
                  sltiu        a3, s10, -1078
                  blt          t5, s10, 44f
                  bgeu         s11, t2, 41f
34:               nop
                  srli         a5, s7, 31
                  slt          s10, s5, t3
                  slli         s2, a7, 7
                  beq          s1, ra, 50f
                  nop
                  lui          s2, 432531
41:               auipc        s8, 167520
                  and          a1, s4, s1
                  bltu         a2, t4, 54f
44:               slti         a0, s7, 1319
                  sltu         gp, s9, sp
                  nop
                  xor          s5, tp, t0
                  auipc        gp, 848536
                  bgeu         a1, a5, 66f
50:               add          a2, t5, gp
                  lui          a7, 889492
                  blt          t6, s9, 56f
                  slti         s4, s3, 779
54:               slti         s8, a0, -528
                  sra          t3, a7, s10
56:               srl          t4, a5, t6
                  sub          s5, s3, s4
                  slti         t1, a6, -1053
                  srai         t3, a6, 13
                  srai         a1, a1, 24
                  or           t2, s0, gp
                  xori         s3, s7, -563
                  auipc        s2, 398398
                  sra          s2, s7, a1
                  bgeu         a6, s10, 74f
66:               blt          s9, a7, 83f
                  beq          a7, t0, 74f
                  sll          s11, a2, a3
                  andi         sp, a1, -1713
                  srai         gp, t0, 27
                  blt          s0, s11, 73f
                  beq          ra, s10, 77f
73:               sra          s5, t3, ra
74:               blt          t5, sp, 90f
                  sub          s4, a1, s6
                  ori          a4, a3, -758
77:               bgeu         zero, zero, 93f
                  srli         s6, a5, 8
                  blt          s4, a5, 96f
                  sltiu        s5, t1, -1410
                  srai         a2, ra, 21
                  srai         t0, t0, 18
83:               bgeu         t0, t5, 98f
                  or           gp, s9, tp
                  nop
                  xor          s0, s10, s9
                  nop
                  or           s2, t3, t3
                  bgeu         a6, a1, 91f
90:               slti         zero, s7, 1620
91:               sra          s4, t6, a6
                  slli         gp, zero, 18
93:               lui          sp, 219041
                  slti         sp, a0, 1389
                  bge          t6, t6, 107f
96:               slli         t1, s7, 20
                  sra          s4, s6, t5
98:               auipc        s3, 676581
                  slt          s8, a0, s3
                  auipc        sp, 6931
                  slli         t1, t0, 29
                  sll          s4, s2, s6
                  and          sp, a1, gp
                  add          a4, s0, s9
                  blt          t2, s10, 113f
                  slti         a0, s3, -1670
107:              sltiu        a5, a0, 1645
                  andi         t5, a2, -780
                  srl          a5, s11, t4
                  or           a5, s6, tp
                  nop
                  auipc        a1, 124278
113:              sll          a0, t5, s0
                  beq          s7, t6, 132f
                  sltu         s8, zero, t4
                  xor          s0, s3, s2
                  and          s11, t6, t4
                  andi         a1, s9, -511
                  bge          s1, a0, 136f
                  or           s5, s3, a5
                  sra          t2, t5, s2
                  add          s2, t6, zero
                  bgeu         t4, a0, 130f
                  sub          t4, t3, t6
                  beq          sp, a0, 135f
                  beq          gp, a1, 144f
                  or           a6, s7, s1
                  srl          s11, a0, ra
                  srai         s6, s6, 5
130:              or           s7, t4, t5
                  lui          sp, 491968
132:              slt          a3, s8, s10
                  bgeu         a3, t4, 147f
                  srl          s11, t5, s10
135:              bgeu         sp, a4, 150f
136:              sll          a4, s7, a6
                  sltiu        a4, s8, -1628
                  auipc        s3, 537677
                  srai         t0, a5, 13
                  auipc        a2, 123711
                  slti         a4, a7, 188
                  srai         s2, t6, 31
                  lui          s3, 489498
144:              nop
                  andi         t4, sp, 1672
                  bgeu         a3, s11, 147f
147:              sltu         s8, s0, a2
                  sub          s11, a0, a2
                  beq          t0, a0, 159f
150:              sltiu        a0, t0, 2033
                  add          a7, s1, s4
                  or           gp, t3, gp
                  srai         a6, a0, 3
                  and          s6, a5, a7
                  slt          a6, t4, s5
                  srli         t4, t0, 21
                  xor          zero, s9, tp
                  andi         s5, a2, 1171
159:              slt          t0, a2, s0
                  blt          a4, s5, 175f
                  sltu         sp, ra, sp
                  and          a3, tp, a3
                  srai         t3, gp, 5
                  sll          sp, a0, s3
                  slti         a4, a4, -41
                  or           s0, s0, s1
                  or           s5, s2, a2
                  and          s5, s4, t6
                  sub          a6, s11, s3
                  sltiu        s11, s9, -1014
                  or           a2, sp, s6
                  srl          tp, s2, a1
                  slti         a2, t5, 952
                  sub          s5, gp, s5
175:              beq          a1, zero, 183f
                  blt          s2, s4, 190f
                  auipc        s3, 985846
                  nop
                  bgeu         a2, s10, 197f
                  auipc        s1, 1011682
                  lui          t4, 449633
                  srai         t4, s10, 3
                  addi         sp, zero, -1 #init loop 1 counter
                  nop
                  srli         t4, s6, 24
                  slti         s2, ra, 526
                  xori         a3, s3, 854
                  lui          s11, 846069
                  addi         t3, zero, 5 #init loop 1 limit
sub_3_3_1_t:      or           a4, t3, a0
                  srai         a1, a4, 6
                  add          s10, t4, t3
                  addi         sp, sp, 8 #update loop 1 counter
                  sub          s0, t6, s6
                  ori          t4, s11, 541
                  xor          t4, tp, s6
                  and          s8, a2, s10
                  xor          s6, zero, s7
                  addi         s5, zero, 8 #init loop 0 counter
                  srl          s2, s11, t1
                  srl          t0, s9, t6
                  addi         a5, zero, 15 #init loop 0 limit
sub_3_3_0_t:      slti         s4, s0, 1108
                  xori         a3, s2, -128
                  ori          s8, s10, -52
                  sltiu        gp, t4, 1384
                  addi         s5, s5, 8 #update loop 0 counter
                  blt          s5, a5, sub_3_3_0_t #branch for loop 0
                  ori          t1, gp, -404
                  andi         a0, s3, 1227
                  blt          sp, t3, sub_3_3_1_t #branch for loop 1
                  sltu         t5, a5, s4
183:              nop
                  ori          t0, t0, 1719
                  sll          s0, t2, a2
                  slt          s0, s10, s8
                  ori          a1, gp, 1104
                  xori         s0, t2, -2028
                  sltu         s8, sp, sp
190:              ori          s2, a6, -1482
                  xor          s2, a5, a0
                  srl          s2, s10, a5
                  auipc        a5, 300644
                  xori         s6, s5, -1480
                  slli         s3, t0, 10
                  slt          s4, s2, s7
197:              sltu         a7, s4, gp
                  bltu         s7, a1, 210f
                  bltu         a5, t5, 200f
200:              sll          a5, s8, s7
                  slti         s1, s11, 117
                  bgeu         s10, a3, 206f
                  or           t4, gp, tp
                  auipc        s5, 644865
                  xor          s7, a7, t0
206:              bltu         s9, s9, 224f
                  xori         t2, s8, -254
                  bge          t6, s5, 210f
                  bne          t1, s7, 221f
210:              and          s3, t4, a3
                  nop
                  add          a2, gp, t3
                  auipc        a5, 643937
                  blt          s5, a6, 221f
                  and          s3, zero, a5
                  ori          t3, zero, 649
                  bltu         s4, t1, 234f
                  or           a3, a0, a1
                  ori          s3, s7, -1899
                  beq          s11, s9, 231f
221:              beq          s4, a0, 238f
                  and          s1, a7, a0
                  bne          t5, t2, 226f
224:              srai         zero, s3, 26
                  beq          s4, t1, 233f
226:              add          a0, t5, t1
                  sub          s11, s1, s4
                  sub          s2, a6, a1
                  sub          a6, a1, s1
                  lui          a2, 399322
231:              srai         a2, t5, 22
                  sll          t1, tp, a0
233:              slti         a4, sp, 1021
234:              sra          s6, t6, a5
                  beq          zero, ra, 252f
                  bgeu         gp, s5, 246f
                  srl          t4, s1, a4
238:              addi         t2, ra, 539
                  srl          s5, sp, a1
                  bgeu         s10, s3, 246f
                  xor          s8, a4, a5
                  add          s4, a0, a5
                  xor          t2, s9, s6
                  bgeu         t4, t5, 256f
                  srl          gp, t2, s5
246:              ori          s4, a7, -1446
                  sub          t0, t3, s11
                  srli         s4, zero, 29
                  ori          tp, s5, -81
                  auipc        t2, 737402
                  bge          s4, a7, 266f
252:              xori         a3, a6, -594
                  auipc        t1, 828549
                  lui          tp, 128035
                  nop
256:              bne          t0, s9, 272f
                  sra          zero, gp, a3
                  bge          s8, s1, 265f
                  sltiu        s3, s2, -584
                  and          a1, a6, sp
                  sra          a5, s6, ra
                  bne          s10, t5, 278f
                  slti         s7, a5, 1743
                  addi         a5, s11, 1982
265:              andi         s7, tp, -817
266:              ori          gp, a7, 1320
                  srai         a0, t6, 5
                  blt          s3, t4, 287f
                  sltiu        t5, t4, -1458
                  srai         s6, s0, 11
                  bgeu         s5, s5, 276f
272:              slti         s0, s5, -510
                  xori         s3, gp, 520
                  srl          a0, s3, s6
                  bge          s10, a0, 292f
276:              addi         a0, s2, 1802
                  bltu         t6, t3, 286f
278:              blt          s10, a5, 288f
                  sra          s6, t2, t0
                  blt          s11, s4, 282f
                  nop
282:              bne          s4, t4, 284f
                  sra          a6, t1, a6
284:              sra          a6, s8, s5
                  xori         s10, a3, 1361
286:              or           a3, sp, sp
287:              sra          a7, a7, t6
288:              bne          s2, a0, 304f
                  bge          t3, t4, 304f
                  slti         t4, s10, -498
                  andi         t0, t2, 230
292:              bltu         t5, t5, 302f
                  addi         s4, s11, 1188
                  lui          s8, 990195
                  bge          t5, s9, 312f
                  bne          zero, s11, 311f
                  ori          s0, a2, 876
                  ori          t1, sp, 190
                  srai         t3, t1, 28
                  slli         s0, a6, 13
                  bne          t4, t0, 305f
302:              auipc        s7, 199134
                  slti         a6, t0, -1655
304:              and          a6, s0, s7
305:              bge          t6, s4, 307f
                  slti         t1, a7, -276
307:              srai         tp, tp, 6
                  srl          t1, s5, a4
                  andi         s4, a2, 247
                  sll          a4, t1, s4
311:              slt          s6, tp, s5
312:              xori         s7, s8, -614
                  andi         sp, a7, 73
                  bgeu         sp, t6, 332f
                  bgeu         s5, s7, 334f
                  and          sp, s2, sp
                  xor          sp, a0, a1
                  slli         a3, s7, 6
                  and          a2, sp, gp
                  auipc        a2, 719547
                  nop
                  xori         s11, s6, 1622
                  ori          s8, tp, -32
                  addi         s0, s2, 1
                  blt          a1, a2, 332f
                  bge          a2, s0, 327f
327:              srai         a1, t4, 7
                  srli         tp, t4, 22
                  sltu         s0, ra, a5
                  and          s7, s9, s4
                  bltu         s3, a3, 347f
332:              and          s6, a3, a4
                  and          s11, s5, sp
334:              or           a1, s7, s10
                  sltu         a2, s3, t6
                  addi         s4, t5, -474
                  srai         s6, s0, 6
                  sra          t0, a3, s0
                  bgeu         s2, t2, 351f
                  beq          s9, s11, 347f
                  sltu         zero, s7, a4
                  add          sp, s10, s5
                  sra          t4, a0, s0
                  nop
                  beq          t1, s7, 362f
                  nop
347:              srai         s6, sp, 24
                  srl          zero, sp, a5
                  sltiu        t2, a0, 534
                  slli         s0, t3, 12
351:              beq          a5, t2, 356f
                  xori         t1, t3, -567
                  bge          a5, t0, 361f
                  and          a6, s6, a0
                  srai         t3, s5, 2
356:              ori          a5, tp, 1601
                  add          a4, s4, s8
                  ori          t5, s11, -1689
                  nop
                  slt          s5, a4, t5
361:              xor          t5, t6, s1
362:              add          t4, s10, t3
                  slti         a5, gp, -498
                  beq          a1, s8, 370f
                  sltu         a5, s3, s3
                  bge          t6, a3, 383f
                  slt          a4, s7, s0
                  auipc        t1, 210608
                  auipc        a5, 894625
370:              bltu         s4, tp, 388f
                  add          s11, zero, t4
                  or           a3, s8, ra
                  sltu         zero, t4, a5
                  srai         t5, s5, 30
                  and          a7, s9, gp
                  andi         tp, s9, -1500
                  auipc        gp, 738456
                  srai         a6, s5, 11
                  sltu         t4, s0, t0
                  slti         t1, a1, 442
                  or           s8, s8, s5
                  bge          s7, a4, 385f
383:              sub          s7, t4, s10
                  sltiu        s8, s1, -742
385:              srai         a4, t1, 15
                  slti         a6, s8, 1421
                  sub          s0, s8, s10
388:              slti         a4, zero, 1510
                  or           a1, t1, t5
                  bltu         t1, ra, 399f
                  bgeu         t3, ra, 402f
                  add          s5, s8, a7
                  slli         sp, t6, 27
                  or           s5, t4, ra
                  srai         t3, s9, 5
                  srl          t0, a0, s7
                  blt          tp, a7, 409f
                  srai         sp, a3, 30
399:              sub          a3, t4, t1
                  srli         a3, t3, 2
                  add          t2, a4, a7
402:              slti         a0, s4, 762
                  or           s2, a2, s0
                  bgeu         t5, s0, 418f
                  bge          s5, ra, 413f
                  sltu         a0, a7, s9
                  bge          a6, sp, 417f
                  bgeu         zero, s0, 420f
409:              sltu         a6, s1, s10
                  sra          a5, a0, a0
                  beq          tp, t1, 421f
                  slti         sp, a0, 792
413:              srai         a3, a5, 28
                  bge          s1, a0, 421f
                  slt          zero, a4, s5
                  xori         zero, zero, -1242
417:              bge          ra, s3, 421f
418:              bge          s3, s2, 421f
                  beq          s5, s2, 421f
420:              sll          s5, s11, s0
421:              slti         a5, a7, 191
                  sll          t1, a0, t5
                  lw           s2, 4(t6)
                  add          a2, zero, tp
                  addi         t6, t6, 56
                  auipc        t3, 963892
                  slli         a0, s9, 7
                  lui          t3, 1029008
                  or           s5, s10, a4
616:              addi x10, x18, 0
616:              jalr x10, x10, 0
sub_1:            xor          a5, s9, s4
                  slt          s5, s3, a6
                  sra          sp, ra, a4
                  sll          gp, t6, s8
                  blt          tp, zero, sub_1_stack_p
                  sra          a2, s10, gp
sub_1_stack_p:    addi         t6, t6, -64
                  sw           s2, 4(t6)
                  add          s1, t5, s1
                  slt          a3, a7, a2
                  xori         a1, t6, -935
                  sltu         a2, sp, ra
                  slt          s5, t2, s9
                  auipc        a0, 487308
                  xor          a0, a0, s2
                  slli         a1, a2, 21
                  slti         a4, t6, -1844
                  srai         s0, s6, 31
                  lui          s1, 372895
sub_1_j2:         jal          s2, sub_4 #jump sub_1 -> sub_4
                  addi         tp, tp, -1469
                  and          sp, a4, s6
                  sltiu        a5, s6, -529
                  xor          t1, t0, ra
                  la           s6, sub_3
                  sltiu        s5, s11, 616
                  addi         s6, s6, -153
                  lui          t4, 166751
                  addi         a1, t0, -1624
                  or           zero, s11, sp
                  sub          t2, s3, s0
                  addi         a5, a5, 224
sub_1_j3:         jalr         s2, s6, 154 #jump sub_1 -> sub_3
                  bgeu         s11, t5, sub_1_j4 #branch to jump instr
                  auipc        a6, 995517
                  sltiu        t5, tp, 1443
                  lui          t3, 884046
                  auipc        t1, 336098
                  slti         s11, s10, -1455
                  xor          s6, t5, a7
                  andi         t5, a7, 1762
sub_1_j4:         jal          s2, sub_2 #jump sub_1 -> sub_2
                  or           a5, t2, a7
                  la           t2, sub_4
                  lui          tp, 850711
                  add          a0, s5, a3
                  addi         t2, t2, -270
                  andi         zero, s9, -822
                  bltu         t6, gp, sub_1_j5 #branch to jump instr
                  slti         s7, tp, -2005
                  nop
sub_1_j5:         jalr         s2, t2, 271 #jump sub_1 -> sub_4
                  sll          t1, t6, a1
                  or           s11, s3, a4
                  add          zero, t6, a1
                  sra          t1, s6, ra
                  sra          a2, a0, t0
                  srai         a5, t2, 5
                  ori          s10, a2, 996
                  add          s0, a2, tp
                  add          t5, t2, s5
                  xori         s1, t5, 431
                  beq          ra, s8, 12f
                  slt          a5, a6, a6
12:               add          t5, s7, s2
                  add          a7, a3, a7
                  nop
                  auipc        s0, 159024
                  lw           s2, 4(t6)
                  srl          t1, t6, a5
                  sub          s10, s10, s10
                  srai         gp, s6, 1
                  and          a1, a6, s5
                  addi         t6, t6, 64
                  andi         s10, s5, 184
                  nop
                  xori         s3, s8, 541
77:               addi x3, x18, 0
77:               jalr x3, x3, 0
sub_5:            bltu         t3, s4, sub_5_stack_p
                  slli         tp, tp, 14
                  slt          s3, t2, zero
                  sltu         a1, s10, gp
                  lui          s11, 16836
sub_5_stack_p:    addi         t6, t6, -48
                  add          s3, sp, tp
                  sw           s2, 4(t6)
                  addi         s3, t0, -85
                  sub          t1, zero, a5
                  srl          t3, a4, s7
                  sub          a4, s10, s6
                  srl          s10, t4, s1
                  addi         s10, zero, 3 #init loop 0 counter
                  or           a2, s6, a1
                  sra          gp, a2, ra
                  nop
                  or           a2, sp, t6
                  nop
                  addi         s6, a0, 1427
                  and          a7, t1, s2
                  srai         t4, t6, 5
                  sltiu        t2, zero, -782
                  addi         a5, zero, 13 #init loop 0 limit
                  srli         a2, a4, 24
                  sra          a3, s3, s3
                  srl          a3, s4, s7
                  nop
sub_5_2_0_t:      xori         s0, sp, 472
                  lui          tp, 559583
                  auipc        t0, 627407
                  lui          gp, 82223
                  srli         s6, sp, 23
                  slti         s1, t4, 254
                  addi         s10, s10, 5 #update loop 0 counter
                  or           t4, a6, a7
                  slt          a7, s5, s6
                  xor          s11, s9, t4
                  beq          s10, a5, sub_5_2_0_t #branch for loop 0
                  slt          s11, s7, s3
                  addi         t0, zero, -5 #init loop 0 counter
                  lui          t4, 17379
                  lui          a0, 60490
                  sra          s11, s2, t2
                  ori          t5, s1, -1715
                  slli         gp, a2, 15
                  slti         t3, a4, 620
                  and          tp, s7, a0
                  addi         a3, zero, 15 #init loop 0 limit
                  auipc        s7, 198743
                  auipc        sp, 22285
sub_5_3_0_t:      nop
                  slti         s4, s11, -342
                  slti         t1, a3, 1131
                  and          s11, tp, a3
                  sll          a4, t0, a5
                  addi         s5, s4, 1840
                  and          a6, a3, tp
                  andi         a7, t5, -195
                  addi         t0, t0, 10 #update loop 0 counter
                  xori         s11, t4, -1637
                  sra          a4, s11, t4
                  slli         a6, a2, 9
                  slti         t4, a5, 1951
                  auipc        s3, 184988
                  sra          a0, a7, s0
                  bne          t0, a3, sub_5_3_0_t #branch for loop 0
                  and          s6, s5, s3
                  addi         s4, zero, 3 #init loop 0 counter
                  xor          t3, a3, s5
                  sltu         t4, s4, t6
                  srli         s11, s1, 5
                  lui          t2, 29323
                  xor          a7, a0, s6
                  add          a2, t5, s2
                  sltu         t5, t4, gp
                  slt          t0, a3, a3
                  sll          s7, tp, s9
                  addi         gp, zero, 17 #init loop 0 limit
                  sltiu        a3, a2, -466
sub_5_9_0_t:      xori         zero, ra, -374
                  sll          sp, s11, a5
                  addi         s4, s4, 2 #update loop 0 counter
                  nop
                  srai         s10, s3, 30
                  xor          a7, tp, s11
                  addi         t4, t0, -351
                  andi         s3, t2, -1959
                  slli         s7, t0, 28
                  bne          s4, gp, sub_5_9_0_t #branch for loop 0
                  xor          t4, a4, a0
                  addi         s2, zero, -3 #init loop 0 counter
                  sra          t1, a6, s10
                  add          s5, s4, tp
                  sltu         s4, s2, s4
                  slti         a3, t6, -440
                  addi         a1, zero, -19 #init loop 0 limit
                  andi         t4, s8, 526
                  lui          a5, 385160
sub_5_0_0_t:      sub          s8, t4, a4
                  addi         s2, s2, -8 #update loop 0 counter
                  nop
                  sltu         s11, s2, s0
                  slti         t1, s4, 657
                  and          s3, a0, s4
                  addi         s0, a6, -763
                  nop
                  beq          s2, a1, sub_5_0_0_t #branch for loop 0
                  xor          s8, s1, a1
                  addi         t0, zero, -5 #init loop 0 counter
                  and          tp, s5, s2
                  auipc        s3, 650740
                  or           s8, a5, s0
                  srl          s0, a3, tp
                  and          sp, s5, t0
                  and          t2, s4, s8
                  xor          a5, t5, a5
                  slli         a6, t4, 20
                  add          zero, s4, t1
                  sub          t2, a5, s4
                  addi         s5, s0, -1006
                  and          a4, s11, t2
                  xori         sp, sp, -1229
                  addi         a2, zero, 16 #init loop 0 limit
                  lui          a0, 783383
                  andi         a1, gp, 460
                  ori          s10, s5, 17
sub_5_1_0_t:      lui          a1, 969400
                  addi         t0, t0, 4 #update loop 0 counter
                  srl          s4, t3, a4
                  srl          t3, t5, s3
                  bltu         t0, a2, sub_5_1_0_t #branch for loop 0
                  slli         s1, t1, 5
                  addi         s4, zero, -4 #init loop 1 counter
                  slti         t5, t6, 146
                  or           sp, a3, a2
                  nop
                  addi         s1, a5, 1420
                  sll          a0, a1, t2
                  addi         a2, zero, 17 #init loop 1 limit
sub_5_5_1_t:      slti         sp, s4, -1425
                  addi         s3, gp, 231
                  sll          a4, t1, s0
                  sltu         s8, s0, t5
                  nop
                  addi         s4, s4, 7 #update loop 1 counter
                  addi         tp, zero, -7 #init loop 0 counter
                  addi         a3, zero, -14 #init loop 0 limit
                  slt          sp, t4, a4
                  xor          a7, ra, zero
                  srl          s1, zero, a3
                  sltiu        t5, a5, -1664
sub_5_5_0_t:      sub          a0, s4, gp
                  addi         tp, tp, -7 #update loop 0 counter
                  bne          tp, a3, sub_5_5_0_t #branch for loop 0
                  andi         t2, ra, -1634
                  bne          s4, a2, sub_5_5_1_t #branch for loop 1
                  ori          s3, tp, 1565
                  addi         t0, zero, 3 #init loop 0 counter
                  slli         sp, s7, 7
                  ori          a1, s6, 965
                  and          t3, zero, sp
                  and          a1, t3, a3
                  ori          a2, s3, -1150
                  ori          s1, s3, -802
                  ori          a3, t5, 713
                  slt          a1, s11, t6
                  slti         a6, tp, -1543
                  addi         s10, zero, 3 #init loop 0 limit
                  add          zero, t1, sp
                  auipc        tp, 284134
                  sll          tp, a7, tp
                  srl          a5, t4, t6
                  slti         s8, s3, -1646
                  srl          s11, t5, s6
                  sub          a4, ra, s4
                  srli         a3, s4, 16
                  sub          tp, s0, zero
sub_5_7_0_t:      or           t5, a0, a5
                  srl          a4, a5, s8
                  add          t4, tp, t4
                  xor          s4, a0, a7
                  slt          s1, s2, s2
                  addi         t0, t0, -2 #update loop 0 counter
                  sltu         s2, s0, s3
                  bgeu         t0, s10, sub_5_7_0_t #branch for loop 0
                  or           sp, a1, gp
                  addi         s0, zero, -1 #init loop 0 counter
                  xor          t4, a5, s5
                  auipc        s11, 119053
                  andi         t4, a1, -1600
                  auipc        a0, 83242
                  addi         s6, zero, 19 #init loop 0 limit
                  slti         s8, t1, -363
sub_5_4_0_t:      andi         a1, s11, 727
                  addi         s0, s0, 2 #update loop 0 counter
                  sub          a2, s3, a6
                  lui          t4, 912791
                  addi         s5, s0, -1952
                  slt          a0, s3, t5
                  blt          s0, s6, sub_5_4_0_t #branch for loop 0
                  srl          t5, t1, t2
                  sll          s3, t3, s0
                  bge          a3, sp, 13f
                  beq          t4, s2, 7f
                  slli         a0, a6, 25
                  lui          a6, 372987
                  lui          t2, 469729
                  srl          s0, ra, t2
7:                bge          t3, t3, 11f
                  auipc        s0, 329845
                  slli         s10, s6, 14
                  sltu         s8, s6, tp
11:               bne          t0, a3, 21f
                  nop
13:               srli         a4, t6, 8
                  and          s11, s4, t3
                  srli         s7, s2, 22
                  slti         s1, s2, -1353
                  add          t2, s6, s11
                  bge          s1, a3, 32f
                  srl          sp, s2, t3
                  blt          t3, a3, 40f
21:               bgeu         s5, s6, 41f
                  auipc        s0, 618203
                  sltiu        s0, s3, 1156
                  sub          s10, s6, t2
                  slt          s2, t2, a0
                  beq          t3, t5, 35f
                  blt          t4, a6, 42f
                  sra          gp, t6, s8
                  ori          a2, a0, -1740
                  auipc        a1, 634502
                  slti         a7, a7, -657
32:               sra          t3, t4, a0
                  slti         a5, s3, 1898
                  beq          t2, a3, 41f
35:               xori         s3, t6, -171
                  xor          a3, s5, t5
                  sub          s5, t0, t4
                  ori          a4, a0, -319
                  xor          s10, t0, s7
40:               andi         gp, t3, -1728
41:               xor          t3, ra, s0
42:               andi         a1, s10, -1558
                  sll          s0, a6, s5
                  sltu         t2, s0, s1
                  slti         a1, t0, -460
                  xor          s10, ra, t1
                  sltiu        s10, a5, -269
                  sll          a1, a2, t3
                  ori          a0, t4, -677
                  bltu         sp, t6, 60f
                  bltu         s1, s2, 56f
                  bltu         a4, gp, 54f
                  sub          t5, zero, t5
54:               ori          s7, s10, -543
                  blt          t2, s1, 73f
56:               sll          s8, tp, a4
                  ori          t2, s10, -1462
                  slti         s11, a2, -290
                  sll          a2, s1, ra
60:               auipc        a3, 954039
                  add          s2, t1, s0
                  xori         t3, a0, 102
                  srl          sp, s3, a6
                  sub          t0, zero, s6
                  and          a1, s4, t1
                  bltu         ra, s3, 86f
                  sra          a0, a7, tp
                  or           t1, a4, s1
                  srai         s6, a3, 22
                  sub          zero, t2, a6
                  auipc        a0, 317845
                  beq          t0, t2, 84f
73:               beq          s7, s11, 87f
                  andi         s3, sp, -1710
                  xor          s2, a4, tp
                  srai         tp, a6, 18
                  bltu         gp, a3, 97f
                  sll          t4, a6, t1
                  bne          s0, s9, 96f
                  slt          s0, a6, s5
                  xor          sp, s1, s4
                  bltu         a5, s1, 88f
                  slti         a5, t0, -411
84:               slt          t5, tp, sp
                  xori         a3, s9, 450
86:               andi         s7, s10, 194
87:               andi         s6, s6, -1991
88:               bltu         a5, t1, 101f
                  andi         s8, t0, 1694
                  srli         a2, s7, 2
                  sub          t3, a7, s3
                  bne          s1, a0, 110f
                  sltiu        s1, a7, -418
                  sltiu        s5, s8, 1616
                  sra          a7, a6, a4
96:               slti         sp, t4, 1123
97:               lui          t0, 552813
                  xor          t3, zero, t5
                  add          s10, s8, a4
                  slt          t3, a3, s11
101:              srai         s3, a1, 29
                  xori         a2, s1, -770
                  bgeu         t0, s11, 107f
                  bge          t1, s3, 113f
                  sltiu        s4, t2, 1472
                  sll          s8, t1, s4
107:              bltu         s7, s6, 110f
                  srai         s6, gp, 1
                  and          tp, sp, s2
110:              sra          s6, a7, a4
                  sltiu        t5, s9, -1263
                  bltu         t5, a3, 117f
113:              nop
                  sra          a2, s2, a2
                  sll          zero, s9, s10
                  or           gp, ra, s9
117:              slti         s7, s9, 1715
                  sll          s7, a4, ra
                  slt          t1, t1, a5
                  nop
                  sub          zero, zero, sp
                  beq          s11, s5, 138f
                  nop
                  bge          a6, s4, 142f
                  slti         a5, tp, 1649
                  bltu         s7, s9, 136f
                  auipc        s2, 721754
                  srai         s7, a5, 21
                  slli         t1, t6, 25
                  auipc        a7, 392456
                  bgeu         a7, a5, 135f
                  sltu         gp, s10, t2
                  bltu         s6, t0, 147f
                  bgeu         a2, t0, 150f
135:              xor          s3, a3, s8
136:              addi         t4, a6, -816
                  srli         s7, t4, 3
138:              andi         sp, s11, -1537
                  bltu         s1, a4, 145f
                  or           a5, s8, s7
                  add          s8, a6, t0
142:              bgeu         s11, t0, 147f
                  slti         s4, s10, 847
                  sltiu        a1, s11, -1865
145:              and          gp, s4, s10
                  addi         s2, a2, -584
147:              lui          t5, 336131
                  addi         zero, a4, -1209
                  sll          a7, t4, t3
150:              srl          s3, t3, s9
                  ori          s4, ra, 63
                  srl          s3, a2, t1
                  srli         s11, t6, 20
                  beq          s11, s6, 171f
                  auipc        a1, 476100
                  srai         t0, s0, 26
                  bge          s11, a4, 167f
                  sll          a2, a6, a5
                  xori         gp, t0, 1564
                  addi         s4, t5, 1793
                  sub          s7, ra, t5
                  lui          s8, 909224
                  srli         t4, a5, 31
                  bgeu         s2, s7, 174f
                  sltiu        sp, s1, 1929
                  slli         tp, a3, 15
167:              srli         a3, a3, 30
                  sub          s4, a0, gp
                  andi         t3, s0, 1247
                  bgeu         s8, s6, 172f
171:              srai         s11, s1, 0
172:              sub          zero, s5, s3
                  blt          s2, s3, 193f
174:              bltu         t2, t5, 189f
                  and          a1, a0, t1
                  sltiu        s2, s10, 905
                  sra          s2, t5, s1
                  bne          a1, a2, 185f
                  srai         t2, s11, 10
                  addi         a1, tp, 248
                  auipc        a3, 717287
                  bltu         a4, s11, 187f
                  and          a4, a4, s4
                  and          s10, s9, ra
185:              andi         s0, ra, -1843
                  lui          t2, 690307
187:              bge          a0, s2, 190f
                  srli         s5, a2, 10
189:              bne          s2, a2, 207f
190:              or           t5, a4, s7
                  slli         tp, s5, 24
                  andi         s7, s7, 1135
193:              bgeu         s7, t0, 213f
                  slt          gp, a2, s6
                  andi         a0, t2, -707
                  slti         a7, s6, 257
                  bge          tp, s2, 215f
                  xori         gp, t0, 159
                  bltu         a2, tp, 217f
                  auipc        t5, 683166
                  lui          a5, 22165
                  sltiu        a4, t3, -1597
                  sra          a0, a0, s4
                  bne          t6, s10, 213f
                  and          t1, ra, zero
                  blt          a5, t6, 210f
207:              addi         sp, t2, 547
                  sub          s5, a6, s4
                  xori         a0, a2, -783
210:              srli         a5, s8, 13
                  sll          a5, zero, s9
                  add          t5, s10, s2
213:              lui          s1, 88311
                  xor          s7, s2, s2
215:              xor          gp, t3, s6
                  sra          s1, a4, a1
217:              ori          a1, s4, 1574
                  sltu         s0, s4, s10
                  or           a5, a2, t5
                  bne          s3, gp, 229f
                  andi         t2, s3, -1773
                  bltu         a7, ra, 242f
                  nop
                  slli         t4, s2, 1
                  addi         sp, s6, 391
                  slti         s3, sp, -1944
                  slt          a3, t3, a6
                  add          t3, t1, t1
229:              auipc        a0, 865178
                  or           tp, s11, t5
                  bgeu         s3, ra, 245f
                  nop
                  bge          t0, s2, 237f
                  srl          a4, a3, a3
                  sll          a3, a2, a2
                  xori         a1, s0, -738
237:              srl          s3, a3, tp
                  sra          t0, a7, zero
                  slti         gp, t2, -868
                  nop
                  sltiu        s0, a7, 1720
242:              nop
                  srl          a2, a5, s3
                  ori          tp, s7, -333
245:              xori         zero, s5, -871
                  slt          t2, s4, gp
                  addi         s5, zero, 3 #init loop 1 counter
                  addi         t0, zero, -5 #init loop 1 limit
                  slti         s3, t4, -511
sub_5_8_1_t:      xori         sp, s5, -1139
                  addi         s5, s5, -8 #update loop 1 counter
                  addi         t1, zero, -7 #init loop 0 counter
                  slli         a2, a1, 27
                  addi         t5, zero, 17 #init loop 0 limit
sub_5_8_0_t:      and          tp, s0, s5
                  addi         t1, t1, 8 #update loop 0 counter
                  srai         gp, s10, 14
                  bne          t1, t5, sub_5_8_0_t #branch for loop 0
                  addi         a7, gp, 698
                  bne          s5, t0, sub_5_8_1_t #branch for loop 1
                  add          s11, s7, tp
                  and          sp, a4, sp
                  xori         t2, t4, -445
                  srl          a4, s0, a4
                  addi         t3, ra, 1927
                  xor          s0, a6, s3
                  xor          t1, a3, a7
                  or           a6, s9, t4
                  slt          s0, s9, a7
                  srai         s11, a6, 31
                  srai         sp, a0, 3
                  addi         sp, zero, -323
                  addi         t1, zero, 0 #init loop 1 counter
                  srli         s4, gp, 27
                  xori         s5, a7, 1040
                  add          zero, zero, s11
                  addi         a3, zero, -7 #init loop 1 limit
                  xori         a0, t2, 275
                  xor          a5, s5, s9
sub_5_6_1_t:      sub          t4, t1, s2
                  addi         t1, t1, -6 #update loop 1 counter
                  srai         a6, s6, 19
                  sra          s0, ra, s9
                  sub          a2, sp, a2
                  nop
                  xor          sp, a7, a1
                  addi         s10, zero, 1 #init loop 0 counter
                  add          sp, a3, s9
                  addi         gp, zero, 1 #init loop 0 limit
                  sra          s7, s5, t5
                  srai         s4, s7, 18
                  add          s6, a3, t6
sub_5_6_0_t:      sltu         s5, t0, t4
                  slli         s0, t2, 5
                  srl          t2, a4, t0
                  addi         s10, s10, -9 #update loop 0 counter
                  lui          s11, 499776
                  sltu         a1, zero, a7
                  bge          s10, gp, sub_5_6_0_t #branch for loop 0
                  auipc        t3, 212515
                  sll          zero, s8, sp
                  bge          t1, a3, sub_5_6_1_t #branch for loop 1
                  xori         t2, s5, 955
                  and          a0, t2, s1
                  bge          gp, t0, 264f
                  sll          tp, a0, a7
                  slli         s1, a2, 15
                  add          a7, s0, s10
                  bgeu         a3, s9, 275f
264:              ori          s3, a3, 1994
                  sub          a0, s8, a7
                  nop
                  bgeu         s10, t6, 287f
                  lui          gp, 859679
                  bltu         s8, a3, 273f
                  slti         t2, a6, 1135
                  lui          a4, 786935
                  bltu         s2, gp, 284f
273:              srli         t3, tp, 29
                  bge          a5, s5, 287f
275:              sra          a0, s9, zero
                  bgeu         a2, s1, 286f
                  bgeu         s5, a2, 287f
                  srai         gp, t1, 15
                  slli         s11, s10, 3
                  and          a6, t1, s5
                  andi         t3, s3, 1620
                  lui          s8, 241100
                  add          t3, t6, a1
284:              sra          s8, t0, s0
                  srli         s10, a7, 13
286:              auipc        a1, 990195
287:              lui          a1, 479221
                  sltiu        s8, s0, 251
                  bge          s0, s7, 294f
                  nop
                  auipc        s1, 473780
                  addi         a5, s1, -384
                  srai         t3, a1, 19
294:              sra          a3, s11, a3
                  andi         a4, s5, -1163
                  and          t3, s3, s1
                  andi         gp, a6, -148
                  blt          s10, s2, 300f
                  bltu         ra, a0, 319f
300:              bgeu         t1, gp, 304f
                  slti         gp, a3, 1333
                  bge          a4, s0, 316f
                  add          s3, s1, s10
304:              bltu         s4, a3, 311f
                  addi         sp, s9, 582
                  slli         t0, t6, 27
                  sll          gp, s11, t1
                  bgeu         s11, a2, 328f
                  srli         s10, a1, 29
                  sub          t4, s9, gp
311:              slli         t1, a6, 29
                  slt          a6, s7, sp
                  xor          a3, t4, t3
                  bge          ra, a2, 319f
                  addi         zero, s7, 1399
316:              addi         t1, s6, 295
                  xor          s11, s11, s7
                  beq          s11, tp, 336f
319:              slt          s11, t6, t0
                  and          a4, a2, t6
                  xori         a4, t6, 1754
                  ori          a3, t2, 1539
                  bgeu         a4, zero, 339f
                  srli         a5, s4, 7
                  or           tp, t6, a1
                  sltu         a0, a7, t6
                  add          t2, s9, a3
328:              lui          tp, 802270
                  slli         t2, s9, 25
                  bgeu         a6, s3, 340f
                  add          s3, t2, t0
                  bgeu         s5, t5, 337f
                  slti         s11, s10, 1240
                  srl          t0, a2, s11
                  add          s10, s3, gp
336:              nop
337:              andi         s3, a2, 1213
                  beq          a0, s0, 341f
339:              slt          a2, ra, t3
340:              addi         a6, sp, -1010
341:              srai         s2, s11, 31
                  sra          t2, t0, s0
                  bgeu         a6, a4, 358f
                  bltu         t4, s1, 354f
                  slti         gp, a3, 1645
                  blt          a5, a7, 355f
                  srli         s10, s11, 17
                  slt          t4, t2, t5
                  sub          a2, s10, s11
                  auipc        s7, 1039304
                  blt          zero, a6, 360f
                  bgeu         a4, ra, 366f
                  slti         t5, sp, 1761
354:              lui          s11, 461723
355:              slli         s8, s5, 19
                  bge          s9, s4, 373f
                  sltiu        a5, t5, 118
358:              xor          t1, a2, t4
                  and          s11, s7, a6
360:              slt          a3, t1, a6
                  srl          t1, t0, s10
                  auipc        s8, 819058
                  beq          s7, t3, 383f
                  slt          s3, t6, a0
                  slli         s8, s9, 23
366:              srl          gp, s10, s2
                  slti         s2, s5, -210
                  ori          zero, s6, -1338
                  srli         a7, s3, 27
                  bltu         gp, a7, 383f
                  sltu         t0, a1, ra
                  sub          a1, tp, t0
373:              lui          s2, 746706
                  add          s2, t6, s9
                  lui          a4, 233559
                  srai         s11, a7, 24
                  slt          s0, s8, s9
                  slt          a5, gp, s4
                  auipc        a4, 383164
                  beq          s2, s10, 400f
                  xor          a1, sp, t4
                  sra          s8, s7, t3
383:              add          a2, s9, s10
                  xor          tp, t5, a5
                  nop
                  slti         a5, a6, 1042
                  sra          s1, s5, s5
                  sub          s3, s7, gp
                  xor          a6, s4, sp
                  ori          tp, s7, -962
                  and          s11, a7, zero
                  beq          s10, a7, 396f
                  sltu         s4, a2, s10
                  add          t5, s11, s2
                  ori          a4, ra, 1366
396:              slt          s5, a6, s4
                  auipc        tp, 745930
                  sub          s5, ra, t4
                  beq          a1, s10, 403f
400:              sltu         a2, zero, tp
                  auipc        s1, 65567
                  nop
403:              bltu         s9, t4, 415f
                  xor          s11, t5, t0
                  bge          a5, a7, 411f
                  sltu         s11, s2, a2
                  bltu         t5, a3, 425f
                  sub          a6, a6, a6
                  srli         s3, t6, 7
                  andi         s0, sp, 217
411:              xor          s5, a4, a3
                  beq          s11, s6, 424f
                  sltiu        t5, s0, -1873
                  bne          a2, s9, 432f
415:              andi         t3, s2, -1358
                  sra          t0, a0, t1
                  and          t1, t2, t3
                  ori          zero, t0, -1772
                  andi         s8, s5, 1832
                  addi         s0, s10, 957
                  ori          s10, a5, -1976
                  nop
                  lui          tp, 631249
424:              bge          t5, tp, 433f
425:              blt          t0, tp, 429f
                  nop
                  addi         a3, s10, 1229
                  add          a0, ra, s0
429:              nop
                  addi         t0, sp, 537
                  slt          t5, s9, s8
432:              bltu         ra, s8, 442f
433:              bge          ra, s8, 443f
                  or           t3, s8, s4
                  slti         t4, a0, 1394
                  srli         s4, s4, 16
                  and          s0, a3, a2
                  auipc        s8, 581920
                  sltu         a3, s11, a0
                  sltiu        s2, s7, -1722
                  and          tp, a7, a4
442:              srai         s1, a6, 25
443:              lui          t1, 625055
                  and          zero, a6, a4
                  auipc        a2, 849198
                  slt          a6, a0, t6
                  xori         s4, s7, 1979
                  slti         gp, a2, -1953
                  bne          t6, a5, 451f
                  andi         s1, a0, 700
451:              andi         s0, ra, -1577
                  sltiu        s2, t2, 1095
                  auipc        t1, 437111
                  slt          t0, a1, s10
                  or           s6, t2, t4
                  srli         a0, zero, 3
                  slti         tp, s9, 1785
                  srli         t5, s5, 11
                  sltiu        a0, t5, 55
                  sll          gp, t4, a3
                  and          tp, t2, s2
                  beq          s3, sp, 482f
                  bne          t0, t2, 483f
                  auipc        s10, 175980
                  addi         s11, a0, 32
                  sub          a1, a5, s2
                  xor          a3, t5, s3
                  slti         t5, a1, 44
                  sll          t3, s0, s8
                  nop
                  beq          s10, a2, 485f
                  sltiu        s2, ra, -107
                  bge          tp, ra, 477f
                  auipc        t0, 474209
                  auipc        s6, 88103
                  lui          a1, 587151
477:              ori          a2, a3, 1666
                  sll          t2, tp, t0
                  xori         a5, t1, -1714
                  bgeu         s1, s3, 485f
                  slli         t0, a6, 23
482:              srli         a1, t3, 2
483:              srl          s7, sp, s5
                  sltiu        t5, t5, -164
485:              sra          t4, a4, ra
                  sltu         zero, t2, t2
                  bne          s2, t4, 500f
                  lui          t4, 983536
                  sub          zero, s11, a0
                  and          t1, a7, s7
                  blt          s2, t2, 501f
                  nop
                  srai         s1, a3, 28
                  sra          t1, a3, s10
                  addi         a7, zero, 7 #init loop 0 counter
                  addi         gp, zero, 7 #init loop 0 limit
                  add          a0, a2, t5
                  sub          sp, a7, ra
                  andi         s8, a3, 1070
                  andi         s5, a6, -1924
sub_5_10_0_t:     and          a5, a2, a2
                  andi         t2, s3, 1762
                  xori         s4, zero, 875
                  slli         s2, gp, 7
                  srai         t0, tp, 31
                  auipc        sp, 27127
                  addi         a7, a7, -6 #update loop 0 counter
                  and          zero, a5, s9
                  slli         a4, s3, 17
                  bgeu         a7, gp, sub_5_10_0_t #branch for loop 0
                  ori          a5, gp, 1740
                  add          a0, s0, gp
                  sll          t4, t4, s10
                  lui          a3, 476643
                  blt          t1, gp, 516f
                  sltu         t1, ra, t2
500:              srl          s10, s2, t5
501:              lui          a3, 583861
                  andi         a0, t5, 161
                  addi         a7, a4, -1555
                  nop
                  srli         s10, a1, 24
                  sll          t2, s7, s5
                  srl          t1, a7, a6
                  xori         t2, a3, 177
                  slt          s5, s7, a0
                  bge          s10, s10, 515f
                  and          a2, a4, s5
                  sltu         t2, t4, s11
                  xor          a2, zero, t3
                  slt          s3, s6, sp
515:              sltu         t5, s8, a0
516:              blt          s8, a2, 528f
                  or           a6, a2, tp
                  blt          zero, s6, 533f
                  slti         a6, s2, 2016
                  slti         s0, t3, -1271
                  ori          t3, a4, -769
                  xori         t4, zero, -1625
                  sub          s2, s6, a4
                  sltu         zero, a6, zero
                  sll          sp, t6, a5
                  sll          s10, s10, t0
                  blt          ra, t0, 532f
528:              srli         gp, s10, 23
                  srai         a2, a0, 16
                  lui          s10, 571461
                  sra          a5, a0, zero
532:              xori         t4, a1, -3
533:              srli         a5, a0, 6
                  xor          s8, s10, a5
                  sll          s4, a2, s5
                  xor          a3, s8, t2
                  sltiu        a6, s0, 826
                  beq          t5, t0, 550f
                  sltu         s2, a4, ra
                  srai         s3, zero, 23
                  xor          t1, a5, s11
                  auipc        a3, 555926
                  bne          a0, a4, 550f
                  beq          s10, s10, 550f
                  slli         t1, s11, 20
                  xor          a6, t3, ra
                  slli         sp, zero, 1
                  auipc        t5, 362630
                  bne          t0, t0, 550f
550:              xori         a1, s1, -479
                  nop
                  sra          s10, a6, ra
                  andi         s7, s6, -1319
                  and          t3, s8, s7
                  lw           s2, 4(t6)
                  srai         zero, tp, 23
                  add          s6, s11, s10
                  addi         t6, t6, 48
                  srli         s6, s10, 1
                  addi         s10, s3, -2016
                  srai         a1, t4, 10
                  addi         gp, t1, 2039
828:              addi x24, x18, 1
828:              jalr x24, x24, 0
sub_4:            srl          a1, s8, a3
                  add          a7, s11, s6
                  bne          ra, s5, sub_4_stack_p
sub_4_stack_p:    addi         t6, t6, -20
                  sra          sp, t0, s3
                  sw           s2, 4(t6)
                  sub          s0, zero, a1
                  addi         s5, zero, 3 #init loop 1 counter
                  xor          a2, t0, a1
                  addi         s0, zero, 13 #init loop 1 limit
sub_4_0_1_t:      add          a4, zero, s1
                  sub          s2, s0, ra
                  xori         s4, s1, -409
                  addi         s5, s5, 5 #update loop 1 counter
                  andi         s2, s10, -309
                  slti         s8, s8, -985
                  addi         t4, zero, -2 #init loop 0 counter
                  addi         a5, tp, 401
                  addi         s6, zero, -20 #init loop 0 limit
sub_4_0_0_t:      slt          a6, tp, s7
                  addi         a7, t2, 1084
                  lui          gp, 240814
                  slt          t0, ra, gp
                  slti         s10, t4, 992
                  sltu         a5, s3, t0
                  xor          s10, s8, s8
                  addi         t4, t4, -2 #update loop 0 counter
                  sltu         s1, s1, t3
                  beq          t4, s6, sub_4_0_0_t #branch for loop 0
                  sltiu        s8, s11, -852
                  or           s11, a4, gp
                  sltiu        t3, t5, -1542
                  beq          s5, s0, sub_4_0_1_t #branch for loop 1
                  andi         s10, a0, -93
                  addi         a7, zero, -5 #init loop 1 counter
                  slt          s10, t6, t2
                  slti         s6, a1, 1109
                  addi         s2, zero, 11 #init loop 1 limit
sub_4_5_1_t:      andi         s6, a2, 1285
                  sll          a6, a7, a3
                  addi         a7, a7, 2 #update loop 1 counter
                  sll          s3, s5, s4
                  srli         zero, s10, 31
                  xori         s4, s5, -1395
                  srli         s8, s10, 4
                  addi         s0, zero, 1 #init loop 0 counter
                  sltiu        s3, s1, 132
                  nop
                  slt          a4, ra, s2
                  auipc        t5, 498189
                  addi         a0, zero, 12 #init loop 0 limit
sub_4_5_0_t:      addi         s8, s6, 296
                  xor          s3, gp, s4
                  addi         s0, s0, 7 #update loop 0 counter
                  sub          zero, t4, s3
                  bltu         s0, a0, sub_4_5_0_t #branch for loop 0
                  sltu         a5, a3, a4
                  lui          s1, 386215
                  srli         s4, t2, 21
                  nop
                  beq          a7, s2, sub_4_5_1_t #branch for loop 1
                  srl          t5, s6, a3
                  addi         gp, zero, -6 #init loop 1 counter
                  sltu         a1, t5, s8
                  sll          a5, a0, a1
                  or           t4, t4, a5
                  sltu         t2, a7, s7
                  lui          s4, 453969
                  and          s10, s2, a2
                  sll          s4, t0, t3
                  addi         t1, zero, 18 #init loop 1 limit
                  slt          s8, s7, a2
                  ori          s10, a4, 37
                  ori          a3, s5, -71
                  auipc        a0, 584230
sub_4_1_1_t:      and          s7, s11, a6
                  and          a0, s3, s3
                  addi         gp, gp, 6 #update loop 1 counter
                  sub          sp, s6, s1
                  andi         a6, a6, 1796
                  sub          t5, t6, a7
                  addi         s6, zero, 9 #init loop 0 counter
                  srl          a4, s10, s0
                  addi         t0, zero, 20 #init loop 0 limit
                  and          a0, t3, t1
                  sltu         s3, s11, t4
sub_4_1_0_t:      slt          s2, s4, s4
                  and          s2, a2, a0
                  addi         s6, s6, 5 #update loop 0 counter
                  blt          s6, t0, sub_4_1_0_t #branch for loop 0
                  nop
                  beq          gp, t1, sub_4_1_1_t #branch for loop 1
                  auipc        t2, 944315
                  addi         s3, zero, 7 #init loop 0 counter
                  slti         s10, zero, -184
                  auipc        a7, 153476
                  addi         s5, zero, 19 #init loop 0 limit
sub_4_2_0_t:      addi         t2, t2, 1730
                  addi         s3, s3, 3 #update loop 0 counter
                  bltu         s3, s5, sub_4_2_0_t #branch for loop 0
                  sll          a7, a4, t6
                  addi         s7, zero, -7 #init loop 1 counter
                  addi         t4, zero, -12 #init loop 1 limit
sub_4_4_1_t:      auipc        s1, 173986
                  addi         s7, s7, -9 #update loop 1 counter
                  addi         a3, zero, -8 #init loop 0 counter
                  addi         s11, zero, -16 #init loop 0 limit
sub_4_4_0_t:      andi         t1, s5, -1550
                  addi         a3, a3, -2 #update loop 0 counter
                  bge          a3, s11, sub_4_4_0_t #branch for loop 0
                  bge          s7, t4, sub_4_4_1_t #branch for loop 1
                  slt          gp, s10, s8
                  addi         s8, t2, 1197
                  add          a7, t0, s5
                  bltu         a6, t5, 4f
                  xori         tp, t4, -865
4:                sltu         s7, s5, s2
                  sltiu        a4, a2, -739
                  add          a7, s7, s3
                  nop
                  sll          s0, a2, tp
                  srli         t4, tp, 29
                  bltu         s7, t3, 18f
                  auipc        sp, 944023
                  xori         a6, t5, -54
                  ori          a4, a0, 1438
                  sra          tp, zero, s8
                  lui          s1, 270020
                  bge          t6, zero, 34f
                  slli         s7, s9, 12
18:               slli         t3, a6, 23
                  sub          s4, s7, gp
                  and          t4, s7, zero
                  srl          gp, a2, s5
                  bge          a3, t0, 28f
                  sra          a2, t5, tp
                  bge          s2, s8, 34f
                  slti         s10, t1, 242
                  srl          zero, s1, t6
                  sltu         s7, zero, s8
28:               bge          t3, s6, 32f
                  bge          s9, s0, 34f
                  sltu         a1, a1, s4
                  nop
32:               slli         a2, s2, 6
                  srl          zero, t6, t0
34:               auipc        s4, 532945
                  srai         gp, a0, 30
                  andi         s10, a3, 968
                  ori          t5, s3, -1048
                  and          t5, s2, a5
                  bltu         s3, zero, 50f
                  xor          t1, a7, sp
                  andi         a6, s9, 1645
                  blt          s2, tp, 59f
                  nop
                  sltiu        t2, s1, 1713
                  bgeu         t6, s10, 64f
                  bltu         zero, s9, 62f
                  slt          s2, s11, s11
                  lui          t3, 246267
                  sltiu        zero, a4, 1480
50:               bge          sp, sp, 56f
                  and          t2, a3, gp
                  and          s5, tp, gp
                  slt          sp, s10, a0
                  bge          s3, t0, 58f
                  sltu         s5, ra, tp
56:               slli         tp, a1, 18
                  srl          a5, a4, a7
58:               andi         a1, a5, 1667
59:               addi         s8, t0, 888
                  bltu         a4, a3, 75f
                  sltu         s1, s3, s1
62:               bne          s0, ra, 71f
                  auipc        s7, 546044
64:               slt          s7, zero, a7
                  blt          t0, s7, 71f
                  or           s0, s5, gp
                  sll          s3, s2, t0
                  lui          a0, 595199
                  ori          s3, a2, 828
                  or           sp, a5, a6
sub_4_j7:         jal          s2, sub_5 #jump sub_4 -> sub_5
                  andi         zero, gp, 410
                  bne          s5, s8, 81f
                  blt          s11, s10, 84f
                  bgeu         s1, s6, 79f
                  nop
71:               slti         t1, a5, 280
                  srli         a5, t2, 28
                  lui          a3, 823335
                  sll          s10, t6, ra
75:               sll          s4, a6, s8
                  and          a3, ra, s5
                  srli         s8, a0, 23
                  bgeu         s4, a2, 81f
79:               blt          a2, s4, 87f
                  bltu         s5, s1, 81f
81:               bne          a6, tp, 96f
                  addi         s8, zero, 10 #init loop 0 counter
                  lui          sp, 32459
                  andi         tp, zero, 1661
                  slt          t3, a1, zero
                  nop
                  and          sp, s2, s6
                  addi         s10, s3, 1310
                  or           a5, a1, a6
                  nop
                  slt          t0, t0, a3
                  addi         s3, zero, 8 #init loop 0 limit
                  ori          zero, s3, 1935
sub_4_3_0_t:      sub          t1, s11, t3
                  xori         s5, a6, 68
                  addi         s8, s8, -7 #update loop 0 counter
                  andi         a7, a4, -215
                  xor          a7, t5, a7
                  bgeu         s8, s3, sub_4_3_0_t #branch for loop 0
                  nop
                  sltiu        t0, zero, 1326
                  blt          s9, t2, 84f
84:               lui          a4, 499367
                  slli         s1, sp, 29
                  auipc        s3, 390493
87:               srai         a0, a7, 18
                  bltu         t1, s5, 94f
                  slli         s11, s10, 8
                  lui          a2, 488050
                  sltu         gp, s7, t1
                  bltu         s9, s2, 99f
                  blt          s5, t6, 109f
94:               auipc        s5, 195437
                  srli         s8, t2, 6
96:               srl          tp, a5, a5
                  auipc        s4, 807122
                  andi         t0, s0, 1729
99:               bgeu         t1, s1, 105f
                  bge          a6, s6, 111f
                  bltu         gp, s10, 109f
                  bne          t6, s8, 117f
                  xor          sp, s5, s5
                  and          s11, sp, s9
105:              ori          gp, t2, -80
                  beq          t6, s8, 114f
                  and          a5, s9, zero
                  beq          a3, t2, 112f
109:              bne          s7, s5, 115f
                  bgeu         s10, t6, 126f
111:              slti         s10, s2, -1901
112:              addi         s2, t4, 1490
                  srl          gp, ra, s11
114:              nop
115:              add          zero, s8, t0
                  add          s11, ra, a1
117:              srai         a6, a5, 8
                  andi         s8, s0, -85
                  sub          a6, s7, t3
                  sltu         tp, a1, a6
                  bne          s8, a2, 122f
122:              nop
                  addi         zero, t6, -660
                  andi         s7, gp, 1095
                  sra          a1, a0, t2
126:              srli         s0, zero, 6
                  bgeu         s8, a1, 130f
                  xor          tp, s11, t2
                  srai         zero, s0, 7
130:              sltu         s0, s7, t2
                  nop
                  lui          t3, 550439
                  bge          gp, s11, 140f
                  blt          t2, t5, 150f
                  bgeu         t2, a7, 141f
                  sub          s5, a2, zero
                  or           s5, t1, t1
                  auipc        a7, 100624
                  xor          a2, s2, s11
140:              or           s0, a3, s7
141:              bgeu         s10, a0, 160f
                  bltu         s11, t2, 148f
                  bgeu         a6, s7, 153f
                  slti         t1, s7, -1915
                  sra          a3, t4, tp
                  sra          a1, a3, s7
                  bltu         a3, a4, 152f
148:              sltu         s11, ra, s2
                  slt          s0, a1, ra
150:              srl          s10, a6, a4
                  auipc        tp, 482133
152:              nop
153:              bltu         a6, sp, 154f
154:              sltu         a0, s3, t0
                  srli         s4, a6, 3
                  xori         a6, a0, -517
                  and          s4, a3, a7
                  blt          t6, s10, 169f
                  sltu         s0, s1, s7
160:              and          s7, t4, a5
                  bltu         t4, gp, 169f
                  or           t2, s11, a3
                  bltu         tp, s0, 180f
                  lui          s2, 41071
                  sltu         s1, s5, s9
                  sltiu        t5, t6, 541
                  bne          s3, s8, 171f
                  bne          s7, s1, 174f
169:              beq          a7, t3, 184f
                  or           a4, t6, sp
171:              sra          s7, s10, s10
                  sltiu        a1, t0, 1651
                  sll          a7, t3, a0
174:              andi         s7, a6, 1323
                  slli         s10, a2, 29
                  andi         a3, a2, 1528
                  sll          s5, s7, a6
                  and          a4, t0, t2
                  lui          s6, 98737
180:              or           s4, s5, s1
                  add          s4, zero, t5
                  slti         a1, t0, -645
                  sub          a2, s1, gp
184:              bge          gp, a5, 193f
                  lui          t2, 59399
                  sub          t5, a1, s8
                  add          s3, s5, s9
                  bgeu         s0, t4, 198f
                  auipc        s6, 656056
                  sra          zero, t6, a0
                  nop
                  sltiu        s10, sp, -874
193:              sltu         s4, s4, a5
                  slli         a0, s1, 10
                  ori          s7, s9, 868
                  sub          t1, ra, t5
                  sll          t2, s0, t1
198:              nop
                  lui          t4, 450259
                  add          s0, zero, sp
                  xor          a2, s10, a6
                  slli         t3, s4, 25
                  sra          s2, s6, t1
                  xori         a0, s10, 1934
                  sra          a7, sp, gp
                  sll          t1, s7, a4
                  sltu         s4, s9, s11
                  slli         t1, a0, 13
                  srl          a4, s3, t3
                  srli         a4, t2, 5
                  sltu         t3, s4, t2
                  and          t3, sp, s4
                  sll          a5, ra, s0
                  srl          s4, s6, zero
                  auipc        s3, 601156
                  bne          t3, t5, 224f
                  srli         t0, s4, 18
                  blt          t5, t4, 234f
                  slli         s1, zero, 13
                  bltu         a7, s5, 234f
                  auipc        s6, 270255
                  bltu         a1, t4, 233f
                  sra          s4, a2, s0
224:              bltu         tp, s3, 226f
                  srl          t2, gp, a3
226:              slti         s2, s9, -819
                  xori         t3, t4, -137
                  sltu         t0, a2, ra
                  srli         s11, t6, 9
                  add          s7, a2, a3
                  lui          s6, 358955
                  slti         a6, a1, 1510
233:              bltu         s8, a6, 251f
234:              xor          t2, t4, a2
                  srli         tp, t5, 2
                  xor          s11, gp, a5
                  sltiu        s0, s8, 1579
                  srai         t1, t2, 29
                  ori          s0, a6, -1034
                  sltu         s1, gp, t0
                  addi         s6, t0, 1059
                  lui          t0, 632205
                  or           zero, s6, s11
                  slti         a5, t4, -1962
                  srl          t1, s9, a5
                  beq          s7, s2, 252f
                  srl          tp, t6, a3
                  and          sp, t4, a0
                  bltu         zero, a1, 257f
                  auipc        s0, 909283
251:              auipc        a6, 323288
252:              or           a4, s9, s10
                  bltu         s7, s9, 272f
                  slt          a5, t1, s11
                  srli         t4, s8, 27
                  addi         a4, s7, -343
257:              nop
                  add          t2, ra, a1
                  sra          s0, a6, s1
                  sub          t5, a5, zero
                  sltu         s0, gp, a5
                  srl          s5, ra, t3
                  andi         a5, s7, 1055
                  sltiu        t1, s11, -645
                  lui          t4, 1035550
                  sra          s10, s0, s4
                  beq          gp, t5, 273f
                  srai         gp, a3, 31
                  slli         s0, s3, 21
                  xori         t3, t4, 796
                  bltu         zero, a3, 272f
272:              or           a3, t3, t6
273:              bne          s5, a7, 283f
                  ori          a2, gp, -1857
                  srai         a2, ra, 1
                  xori         t3, s0, 453
                  slli         a3, s6, 10
                  addi         t1, t4, -406
                  lui          t5, 215445
                  auipc        s10, 128961
                  srai         a1, a0, 7
                  srli         a6, s5, 7
283:              and          s2, s6, t0
                  srli         s5, a0, 9
                  nop
                  slti         a5, s4, 304
                  sltiu        t2, s8, -1497
                  and          t3, t0, a7
                  sub          s10, s0, a3
                  sub          s1, s3, t1
                  or           s11, s11, a7
                  xori         tp, a2, -752
                  addi         gp, a1, 1300
                  and          a5, ra, a3
                  xori         s6, t0, -95
                  nop
                  srl          s0, s11, a4
                  slt          t5, t3, s9
                  or           t3, s8, s9
                  slli         sp, sp, 29
                  sub          t5, a1, a2
                  lw           s2, 4(t6)
                  addi         t6, t6, 20
                  slti         s3, a3, 1723
442:              addi x4, x18, 0
442:              jalr x4, x4, 0
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
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x25, x31, zero
                  csrr x28, 0x300 # MSTATUS
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 31
                  bne x28, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x28, 0x341 # MEPC
                  csrr x28, 0x342 # MCAUSE
                  li x12, 0x3 # BREAKPOINT
                  beq x28, x12, ebreak_handler
                  li x12, 0x8 # ECALL_UMODE
                  beq x28, x12, ecall_handler
                  li x12, 0x9 # ECALL_SMODE
                  beq x28, x12, ecall_handler
                  li x12, 0xb # ECALL_MMODE
                  beq x28, x12, ecall_handler
                  li x12, 0x1
                  beq x28, x12, instr_fault_handler
                  li x12, 0x5
                  beq x28, x12, load_fault_handler
                  li x12, 0x7
                  beq x28, x12, store_fault_handler
                  li x12, 0xc
                  beq x28, x12, pt_fault_handler
                  li x12, 0xd
                  beq x28, x12, pt_fault_handler
                  li x12, 0xf
                  beq x28, x12, pt_fault_handler
                  li x12, 0x2 # ILLEGAL_INSTRUCTION
                  beq x28, x12, illegal_instr_handler
                  csrr x12, 0x343 # MTVAL
                  1: la x1, test_done
                  jalr x1, x1, 0

ecall_handler:    
                  la x28, _start
                  sw x0, 0(x28)
                  sw x1, 4(x28)
                  sw x2, 8(x28)
                  sw x3, 12(x28)
                  sw x4, 16(x28)
                  sw x5, 20(x28)
                  sw x6, 24(x28)
                  sw x7, 28(x28)
                  sw x8, 32(x28)
                  sw x9, 36(x28)
                  sw x10, 40(x28)
                  sw x11, 44(x28)
                  sw x12, 48(x28)
                  sw x13, 52(x28)
                  sw x14, 56(x28)
                  sw x15, 60(x28)
                  sw x16, 64(x28)
                  sw x17, 68(x28)
                  sw x18, 72(x28)
                  sw x19, 76(x28)
                  sw x20, 80(x28)
                  sw x21, 84(x28)
                  sw x22, 88(x28)
                  sw x23, 92(x28)
                  sw x24, 96(x28)
                  sw x25, 100(x28)
                  sw x26, 104(x28)
                  sw x27, 108(x28)
                  sw x28, 112(x28)
                  sw x29, 116(x28)
                  sw x30, 120(x28)
                  sw x31, 124(x28)
                  la x1, write_tohost
                  jalr x0, x1, 0

instr_fault_handler:
                  add x31, x25, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

load_fault_handler:
                  add x31, x25, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

store_fault_handler:
                  add x31, x25, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

ebreak_handler:   
                  csrr  x28, 0x341
                  addi  x28, x28, 4
                  csrw  0x341, x28
                  add x31, x25, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

illegal_instr_handler:
                  csrr  x28, 0x341
                  addi  x28, x28, 4
                  csrw  0x341, x28
                  add x31, x25, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x28, 0x300 # MSTATUS;
                  csrr  x28, 0x304 # MIE;
                  csrr  x28, 0x344 # MIP;
                  csrrc x28, 0x344, x28 # MIP;
                  add x31, x25, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
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
