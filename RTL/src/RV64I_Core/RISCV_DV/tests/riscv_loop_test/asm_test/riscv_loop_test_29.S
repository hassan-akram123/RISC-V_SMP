.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x6, h0_start
jalr x0, x6, 0
h0_start:
                  li x24, 0x40000100
                  csrw 0x301, x24
kernel_sp:        
                  la x23, kernel_stack_end

trap_vec_init:    
                  la x24, mtvec_handler
                  ori x24, x24, 0
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
                  li x0, 0x0
                  li x1, 0x80000000
                  li x2, 0x80000000
                  li x3, 0xf0c4a96e
                  li x4, 0x0
                  li x5, 0xf4ef28bf
                  li x6, 0x3
                  li x7, 0x7e7dad37
                  li x8, 0x80000000
                  li x9, 0x80000000
                  li x10, 0x9
                  li x11, 0x39a19933
                  li x12, 0x80000000
                  li x14, 0xfd367bc6
                  li x15, 0xd
                  li x16, 0x18579d52
                  li x17, 0xa0db41ab
                  li x18, 0x0
                  li x19, 0x57f389bb
                  li x20, 0x80000000
                  li x21, 0x80000000
                  li x22, 0xf22752fa
                  li x24, 0x6
                  li x25, 0x8
                  li x26, 0x80000000
                  li x27, 0xbd7ee065
                  li x28, 0x80000000
                  li x29, 0x3
                  li x30, 0x0
                  li x31, 0x3afe57de
                  la x13, user_stack_end
main:             addi         t6, zero, -5 #init loop 0 counter
                  slli         a0, a6, 19
                  addi         a6, zero, -18 #init loop 0 limit
                  lui          s5, 617689
main_7_0_t:       nop
                  sltu         s0, t4, s10
                  addi         t6, t6, -4 #update loop 0 counter
                  bge          t6, a6, main_7_0_t #branch for loop 0
                  srl          zero, s5, a0
                  addi         a6, zero, 5 #init loop 1 counter
                  addi         a5, zero, 1 #init loop 1 limit
main_0_1_t:       lui          t3, 46346
                  srli         a2, ra, 10
                  addi         a6, a6, -2 #update loop 1 counter
                  srli         sp, s1, 22
                  addi         s4, zero, 6 #init loop 0 counter
                  addi         t5, zero, 10 #init loop 0 limit
main_0_0_t:       sub          tp, t6, t3
                  addi         s4, s4, 4 #update loop 0 counter
                  bltu         s4, t5, main_0_0_t #branch for loop 0
                  beq          a6, a5, main_0_1_t #branch for loop 1
                  slt          t6, s10, a3
                  addi         s10, zero, -6 #init loop 1 counter
                  addi         t4, zero, -2 #init loop 1 limit
main_2_1_t:       lui          a2, 914880
                  lui          s5, 427285
                  srai         sp, t2, 2
                  addi         s10, s10, 1 #update loop 1 counter
                  xor          sp, s8, s0
                  srl          t2, s9, s9
                  nop
                  addi         s9, zero, 2 #init loop 0 counter
                  addi         a0, zero, 10 #init loop 0 limit
                  sll          s8, t3, s4
main_2_0_t:       slt          s1, a2, tp
                  slli         a7, a4, 31
                  addi         s9, s9, 7 #update loop 0 counter
                  sll          ra, t2, s8
                  blt          s9, a0, main_2_0_t #branch for loop 0
                  blt          s10, t4, main_2_1_t #branch for loop 1
                  or           sp, s8, t6
                  addi         s4, zero, 9 #init loop 0 counter
                  addi         s5, zero, 13 #init loop 0 limit
main_4_0_t:       add          sp, t0, t1
                  addi         s4, s4, 2 #update loop 0 counter
                  beq          s4, s5, main_4_0_t #branch for loop 0
                  add          a7, s0, t3
                  addi         a7, zero, 3 #init loop 1 counter
                  addi         a1, zero, 7 #init loop 1 limit
                  slli         s0, t6, 2
main_3_1_t:       add          t3, a6, t2
                  andi         t5, a7, 902
                  slli         ra, s5, 6
                  sltiu        tp, s5, 355
                  addi         a7, a7, 8 #update loop 1 counter
                  slt          a2, ra, a5
                  addi         t0, zero, 2 #init loop 0 counter
                  addi         a6, zero, 18 #init loop 0 limit
                  slt          s1, t0, t0
                  andi         t3, t6, 171
                  and          s11, sp, a3
main_3_0_t:       auipc        t4, 904783
                  addi         t0, t0, 4 #update loop 0 counter
                  sra          a2, a3, a0
                  beq          t0, a6, main_3_0_t #branch for loop 0
                  sll          s4, s1, t2
                  sra          ra, s9, t2
                  slt          t6, s2, s10
                  xori         s5, s3, 1614
                  sra          t2, zero, gp
                  andi         a5, sp, -287
                  blt          a7, a1, main_3_1_t #branch for loop 1
                  or           s1, s2, t2
                  addi         s11, zero, 8 #init loop 0 counter
                  addi         t2, zero, 18 #init loop 0 limit
main_1_0_t:       addi         a5, sp, 1859
                  addi         s11, s11, 10 #update loop 0 counter
                  bne          s11, t2, main_1_0_t #branch for loop 0
                  and          s4, a0, s2
                  addi         t2, zero, 5 #init loop 1 counter
                  xori         a4, a6, -470
                  sub          s11, s8, t5
                  addi         s3, zero, 4 #init loop 1 limit
                  sra          t0, s7, s0
                  xori         s9, sp, 312
main_9_1_t:       add          zero, s11, s5
                  sub          s10, a5, gp
                  sub          t0, t3, t0
                  addi         t2, t2, -3 #update loop 1 counter
                  srai         t0, s3, 15
                  addi         t5, zero, 7 #init loop 0 counter
                  sra          a5, t4, a3
                  addi         t4, zero, 15 #init loop 0 limit
                  slli         a0, a5, 7
                  slti         t0, a7, -764
main_9_0_t:       ori          s0, a0, -1747
                  addi         s6, s5, -1639
                  addi         t5, t5, 7 #update loop 0 counter
                  auipc        zero, 226014
                  add          s6, tp, s11
                  ori          ra, s6, 228
                  andi         s11, a0, 1478
                  bltu         t5, t4, main_9_0_t #branch for loop 0
                  slli         a4, s2, 14
                  srli         s9, a0, 9
                  bgeu         t2, s3, main_9_1_t #branch for loop 1
                  srai         a1, s1, 13
                  addi         t5, zero, -2 #init loop 1 counter
                  and          t4, s7, a3
                  auipc        t4, 752100
                  addi         t4, s2, 1770
                  sra          s6, s4, s2
                  addi         sp, zero, 3 #init loop 1 limit
main_8_1_t:       ori          zero, s2, -2006
                  sltu         s4, a2, t2
                  addi         t5, t5, 2 #update loop 1 counter
                  sltu         s2, s10, t2
                  slli         s8, s9, 29
                  ori          a5, a5, 1026
                  addi         s0, zero, 4 #init loop 0 counter
                  sltiu        s6, a6, 454
                  lui          t2, 35737
                  addi         s3, zero, 12 #init loop 0 limit
                  ori          gp, gp, 1064
                  slti         a6, sp, 1371
main_8_0_t:       sltu         t0, t2, t0
                  addi         s0, s0, 2 #update loop 0 counter
                  bne          s0, s3, main_8_0_t #branch for loop 0
                  slli         s6, tp, 26
                  xor          a6, t3, s11
                  bltu         t5, sp, main_8_1_t #branch for loop 1
                  and          a2, s8, t3
                  addi         ra, zero, 9 #init loop 0 counter
                  nop
                  slti         a7, a6, -1960
                  addi         a5, s4, 167
                  addi         t4, zero, 8 #init loop 0 limit
                  xori         s5, tp, -1611
                  sltiu        tp, s11, 1642
                  sra          s5, t5, sp
main_10_0_t:      sltiu        a4, a5, -894
                  nop
                  nop
                  nop
                  addi         ra, ra, -6 #update loop 0 counter
                  addi         t6, ra, -937
                  ori          s4, s6, 1463
                  andi         a1, t5, 1740
                  sltiu        a7, a5, 249
                  add          tp, t0, t4
                  sltu         s6, t4, zero
                  sltu         gp, s9, t0
                  ori          zero, a5, 1977
                  bgeu         ra, t4, main_10_0_t #branch for loop 0
                  slli         s1, s11, 20
                  srl          s1, s9, a2
                  andi         t4, a7, 908
                  addi         ra, a0, -38
                  auipc        t5, 624945
                  srai         sp, t6, 17
                  srai         zero, t0, 28
                  ori          t5, t2, -400
                  slli         a4, t4, 0
                  srli         s2, t6, 24
                  slt          s8, zero, s5
                  xor          t0, s11, s3
                  lui          t0, 452788
                  bltu         s6, s10, 14f
                  bltu         s2, a6, 14f
14:               slt          tp, zero, s3
                  sltiu        s3, t1, -204
                  auipc        s11, 13195
                  srl          ra, s2, s4
                  xor          t2, ra, a6
                  beq          a7, s8, 27f
                  auipc        t3, 221420
                  auipc        s1, 881747
                  lui          a2, 987625
                  slt          t0, a3, a0
                  sub          t2, a5, t3
                  beq          gp, a6, 43f
                  srai         s1, s7, 11
27:               bgeu         a3, t6, 37f
                  bge          s4, s0, 30f
                  sll          a2, t1, s11
30:               bltu         s0, s3, 36f
                  bltu         ra, t1, 32f
32:               slt          zero, s2, t1
                  bne          ra, a4, 53f
                  sub          s10, a7, t0
                  bge          a6, t6, 50f
36:               ori          a1, gp, 78
37:               sub          t5, a7, s10
                  sra          s8, s10, a3
                  addi         zero, a5, -612
                  la           a4, sub_1
                  srli         s6, t3, 3
                  addi         a4, a4, -486
                  andi         s5, t3, 1352
                  xor          t2, a0, zero
                  add          t2, s10, a4
                  slt          tp, s3, s2
                  or           s0, s9, a0
                  xor          t0, t0, a2
                  beq          s5, a5, main_j1 #branch to jump instr
                  sltiu        s11, a3, -1155
                  xor          a6, t2, t2
main_j1:          jalr         ra, a4, 487 #jump main -> sub_1
                  add          a2, a1, t4
                  add          gp, t3, s0
                  slti         s6, a4, 594
                  srli         s5, a6, 3
43:               add          a2, t1, s9
                  blt          a3, s5, 53f
                  sra          a2, s10, a0
                  ori          s8, s7, 2016
                  slt          a5, s8, s11
                  or           s0, s10, s3
                  sll          t2, s2, t3
50:               and          s9, s4, a5
                  blt          s8, a7, 70f
                  auipc        a1, 170621
53:               srai         t6, a6, 29
                  and          s10, s2, s1
                  ori          s11, s7, -32
                  addi         s5, a4, -1177
                  xor          s11, t3, tp
                  slti         s10, a0, -1174
                  andi         zero, s10, -628
                  slli         s5, s4, 22
                  ori          s8, zero, -58
                  slti         t0, t0, -175
                  bge          s10, t6, 76f
                  bne          sp, s7, 73f
                  srai         a7, a3, 12
                  sltu         s0, t5, a5
                  srl          s5, tp, t4
                  xor          a7, sp, s5
                  srai         s6, zero, 20
70:               blt          t5, t2, 75f
                  srli         s0, a4, 26
                  sub          a7, t1, tp
73:               addi         t5, a6, -1629
                  xor          s11, a0, t2
75:               beq          t0, a0, 83f
76:               bge          s3, ra, 77f
77:               xori         s0, t6, -598
                  sltu         a5, gp, s5
                  add          s11, a7, s0
                  bltu         gp, a6, 86f
                  slti         s8, s11, -1487
                  lui          a4, 377282
83:               sltu         s4, t5, a7
                  sltiu        ra, s3, -1134
                  auipc        s4, 218347
86:               nop
                  lui          t0, 468202
                  sltu         s2, s4, s8
                  lui          s1, 182401
                  xor          a0, s11, s7
                  slti         t6, t5, -1706
                  andi         s5, t6, 912
                  srli         a4, ra, 2
                  srli         ra, gp, 6
                  srl          t3, a2, s1
                  sra          s5, sp, sp
                  lui          a5, 667594
                  sltiu        t6, t6, 658
                  bgeu         a2, a5, 117f
                  auipc        t4, 474265
                  bgeu         a6, s10, 104f
                  bltu         a6, s1, 119f
                  slti         s3, s0, -980
104:              or           a2, s8, s7
                  xori         a7, t0, -754
                  and          t2, a3, t2
                  bgeu         a5, a0, 108f
108:              bgeu         s2, s9, 124f
                  or           ra, t1, t0
                  sub          a2, s8, t1
                  blt          s5, a4, 123f
                  bgeu         s9, s4, 115f
                  srai         a5, t6, 4
                  sltu         t4, a0, sp
115:              or           a5, s1, gp
                  sltiu        zero, ra, 1430
117:              ori          a0, s10, 578
                  xori         s6, s10, -142
119:              bne          s1, t6, 125f
                  sltu         t3, zero, t2
                  xor          a6, s5, tp
                  ori          zero, gp, -533
123:              xori         s4, s9, 733
124:              sltiu        t2, s7, -709
125:              addi         a2, t1, -1663
                  slt          a6, s1, a3
                  or           t5, a2, tp
                  srli         s5, a6, 7
                  or           s5, zero, a4
                  srl          t0, t3, s10
                  slti         t0, tp, 1222
                  bge          s2, s0, 151f
                  auipc        zero, 412971
                  sub          t0, a0, a6
                  lui          a4, 287710
                  bne          a3, t6, 154f
                  blt          s0, t3, 144f
                  slti         s0, a1, 1866
                  xor          s0, s1, tp
                  sltu         s0, s7, t1
                  ori          zero, t0, 633
                  sub          s3, a6, s6
                  bge          gp, a6, 155f
144:              bne          s9, a7, 161f
                  sll          s4, s1, a6
                  xor          t6, t3, s10
                  sltu         tp, t2, s5
                  addi         gp, a2, 934
                  bgeu         s4, a0, 158f
                  bge          a3, t0, 151f
151:              slli         s3, a1, 31
                  add          t4, sp, gp
                  slt          t4, a0, a5
154:              xori         s1, s4, -1899
155:              bne          a0, s2, 157f
                  auipc        t0, 769500
157:              xor          s1, s10, t1
158:              slt          s9, t5, a1
                  slt          s8, s2, a7
                  srai         tp, s1, 24
161:              beq          t4, s6, 167f
                  sub          s6, t0, t4
                  bgeu         s0, s0, 170f
                  addi         a4, zero, -3 #init loop 0 counter
                  sra          s10, s1, s0
                  add          a6, s5, s9
                  srl          t4, a6, t4
                  ori          t0, a1, -1363
                  srl          t2, s7, a0
                  nop
                  lui          t6, 927052
                  sltu         ra, ra, a6
                  add          s2, a5, t2
                  addi         s3, zero, -2 #init loop 0 limit
                  xori         t6, s0, 525
                  addi         t2, t3, -6
                  sltiu        s6, t6, 1799
main_5_0_t:       addi         s5, a2, -1576
                  addi         sp, zero, 928
                  addi         a4, a4, 7 #update loop 0 counter
                  auipc        ra, 408066
                  addi         s2, s2, -329
                  slli         a5, s10, 3
                  and          t4, tp, sp
                  auipc        gp, 346143
                  ori          s6, s11, -1722
                  srl          a6, t0, zero
                  slti         t2, t2, 641
                  ori          s2, sp, -1512
                  srai         gp, a0, 6
                  blt          a4, s3, main_5_0_t #branch for loop 0
                  slti         t3, s1, -618
                  auipc        t5, 876917
                  ori          a4, s3, -1140
                  srli         a7, a1, 26
167:              srai         gp, s0, 10
                  addi         sp, t1, -1397
                  slt          sp, s10, s11
170:              xori         s0, s5, 1089
                  bgeu         a5, t4, 183f
                  ori          gp, ra, -790
                  blt          s1, a2, 188f
                  sltu         s9, s4, tp
                  bltu         a5, t2, 180f
                  beq          s3, ra, 189f
                  sltiu        a2, t4, 614
                  or           s11, s9, s7
                  sltu         s10, t2, s3
180:              bge          a1, s3, 186f
                  nop
                  bge          s3, t4, 185f
183:              addi         tp, a6, -408
                  xor          a1, t1, s3
185:              srai         s0, a0, 7
186:              bltu         t2, t3, 187f
187:              sltiu        s3, s3, -1489
188:              add          s9, t5, a5
189:              nop
                  slli         ra, s8, 13
                  addi         t6, a1, -1964
                  slt          t0, t4, tp
                  addi         s1, s0, 1903
                  andi         ra, t4, -437
                  slti         zero, s0, -1743
                  bgeu         a0, t6, 214f
                  sra          s5, s7, a5
                  sra          s10, tp, t2
                  andi         t5, s3, 985
                  add          s0, a4, s3
                  ori          gp, s5, -215
                  auipc        s0, 649448
                  xori         s2, a4, -1459
                  slt          a4, s0, s4
                  lui          a5, 439453
                  slti         t2, s3, -1426
                  addi         s1, s5, -1737
                  slli         t3, s5, 11
                  slt          a0, s8, ra
                  lui          a4, 411246
                  nop
                  lui          t0, 472026
                  xor          a5, s10, a5
214:              lui          t2, 381972
                  sltu         s5, t5, t0
                  slli         sp, s8, 17
                  andi         s11, a7, -1383
                  bltu         t4, a5, 230f
                  sll          t3, a7, s6
                  and          a0, s1, sp
                  and          a6, sp, zero
                  slt          s4, s8, s11
                  bge          a5, s8, 242f
                  sra          t5, zero, s3
                  ori          t4, s8, -101
                  nop
                  lui          a5, 728577
                  srl          a5, s8, s7
                  bgeu         t0, s5, 235f
230:              auipc        t0, 928293
                  slt          a4, s0, a6
                  lui          a2, 233270
                  blt          sp, a6, 249f
                  xor          a1, tp, s6
235:              lui          a0, 873464
                  slli         a4, s7, 22
                  bne          gp, s3, 246f
                  blt          a3, s4, 256f
                  beq          t1, s4, 241f
                  ori          zero, s8, -2025
241:              sra          t2, sp, ra
242:              nop
                  ori          a2, s9, 755
                  ori          s11, a6, -1463
                  blt          sp, a7, 265f
246:              andi         a5, t5, 710
                  sltiu        zero, s3, -1579
                  blt          zero, s10, 256f
249:              sra          s2, a7, s3
                  srl          a0, a4, t3
                  xori         t2, s7, -1431
                  add          t4, s10, a2
                  sub          zero, a6, s2
                  sra          s5, a3, a4
                  bge          s2, a0, 256f
256:              beq          tp, s7, 274f
                  blt          s7, a1, 276f
                  or           s11, s3, s9
                  andi         s10, s10, 556
                  srai         t4, t3, 26
                  or           tp, t1, a5
                  xor          s5, s1, a2
                  sra          t0, tp, a5
                  andi         s0, s4, 516
265:              ori          s11, t1, 1437
                  sub          a5, t4, t1
                  sra          a6, tp, t6
                  bltu         s6, t0, 271f
                  lui          a1, 714803
                  and          s5, t2, t6
271:              sub          s6, t3, a7
                  blt          a6, s2, 280f
                  sra          s1, s0, a1
274:              blt          s8, sp, 275f
275:              addi         t0, tp, -1661
276:              lui          zero, 321097
                  andi         zero, t6, -887
                  sltu         s5, a4, s9
                  and          t5, a7, s11
280:              ori          tp, s9, -672
                  slli         s4, gp, 16
                  or           ra, s4, t6
                  slli         s5, a4, 5
                  and          a2, t2, s10
                  srli         s11, s10, 29
                  sll          t4, a4, t3
                  bgeu         s4, a7, 297f
                  slt          t3, s9, a3
                  srl          s0, gp, tp
                  xori         s4, a7, -383
                  and          s1, t4, ra
                  bne          s10, a4, 308f
                  blt          a6, t4, 300f
                  srli         s6, s4, 13
                  bltu         t0, a1, 315f
                  srli         t6, s7, 20
297:              bgeu         s3, a6, 312f
                  auipc        a0, 92312
                  blt          t6, zero, 309f
300:              andi         s10, a6, -415
                  slli         s9, a5, 17
                  bge          a6, a4, 310f
                  sll          a0, a5, gp
                  and          s1, ra, t6
                  blt          s1, a1, 311f
                  and          t6, a0, s10
                  blt          s9, s4, 319f
308:              or           a0, s4, s6
309:              srli         t0, a6, 28
310:              sub          t2, t1, a3
311:              add          s10, s0, a5
312:              ori          t3, s3, -1791
                  nop
                  bne          s5, t0, 322f
315:              add          sp, tp, a7
                  and          s3, s9, s1
                  andi         s10, s6, 1270
                  srl          t3, ra, s7
319:              srli         s4, s7, 20
                  andi         s10, s5, -477
                  srl          zero, s2, a1
322:              slli         s6, s5, 4
                  lui          a0, 529235
                  srl          s4, s2, gp
                  slt          zero, sp, s9
                  srai         a5, t5, 23
                  slli         s6, t5, 22
                  xor          gp, t5, gp
                  bltu         t3, zero, 338f
                  bgeu         t2, s11, 343f
                  xori         s3, s2, -1115
                  srl          zero, t1, zero
                  bge          a7, gp, 334f
334:              xori         t5, s1, 348
                  bltu         s10, a3, 340f
                  nop
                  bgeu         a3, a7, 356f
338:              lui          a5, 26501
                  sra          t0, gp, a4
340:              slt          gp, t4, s6
                  and          a7, s6, t2
                  slli         ra, s9, 8
343:              sll          tp, sp, s4
                  sltiu        t3, a7, 1656
                  srl          a1, s11, t5
                  blt          a6, a5, 352f
                  bne          s3, s5, 364f
                  lui          a0, 593737
                  auipc        tp, 187773
                  slli         s4, a1, 10
                  beq          tp, s7, 352f
352:              add          t3, gp, s9
                  add          s10, a3, a6
                  bltu         tp, a2, 360f
                  sub          s8, a7, t4
356:              bgeu         s8, a5, 365f
                  beq          t5, s10, 358f
358:              bltu         ra, t1, 361f
                  and          ra, a6, gp
360:              sll          t5, tp, s11
361:              slt          a0, s7, a1
                  ori          a4, s3, -344
                  sltu         t4, s8, a3
364:              bltu         a6, s10, 366f
365:              xori         s10, s10, -1052
366:              andi         sp, s2, -826
                  beq          s10, a1, 368f
368:              xori         t3, t5, 1268
                  bne          s11, s10, 387f
                  beq          tp, a3, 388f
                  bne          s5, zero, 390f
                  sub          a4, t6, a3
                  addi         s10, t3, 285
                  add          t6, t3, a1
                  nop
                  blt          a1, s8, 394f
                  addi         a6, tp, 91
                  bgeu         a7, t0, 380f
                  lui          a0, 816776
380:              srli         tp, a3, 15
                  sltu         zero, s3, t0
                  and          a2, t6, a0
                  and          t0, t3, a4
                  sll          t5, gp, ra
                  and          sp, t2, a1
                  srl          a4, a2, t0
387:              srai         t3, s7, 29
388:              sltu         s11, s11, s10
                  lui          ra, 247773
390:              andi         ra, a2, -1808
                  add          sp, sp, a4
                  ori          s8, a3, 199
                  xori         t0, ra, 571
394:              nop
                  slti         a7, a4, 140
                  bltu         a0, s7, 408f
                  beq          s5, tp, 400f
                  xori         sp, s9, -581
                  slti         s0, t0, 1873
400:              slli         s4, s2, 9
                  srl          s3, s8, a1
                  addi         t5, ra, -1246
                  nop
                  slti         a6, t3, 1077
                  slti         s2, s9, 1404
                  xor          t3, s4, s1
                  ori          s3, t1, -1073
408:              srl          s4, tp, t2
                  sltu         a0, a0, t0
                  beq          t6, s1, 422f
                  auipc        a1, 784680
                  add          s8, t1, s8
                  andi         s6, a6, -563
                  sra          ra, a7, t6
                  or           t3, sp, a0
                  sra          s1, a7, s11
                  xori         s5, s6, 1950
                  ori          gp, a0, 30
                  auipc        s0, 285320
                  bltu         a3, t6, 432f
                  blt          s3, t2, 429f
422:              blt          s0, tp, 424f
                  sltiu        a0, a6, 655
424:              or           zero, a4, a1
                  srai         t4, zero, 11
                  blt          s8, gp, 443f
                  sra          s1, s3, s4
                  sltu         a1, t1, a5
429:              bltu         t4, a3, 432f
                  nop
                  slt          t6, t1, a0
432:              sub          t4, s9, t3
                  blt          a6, t5, 439f
                  and          t4, t2, a6
                  bge          s0, s2, 455f
                  addi         t3, tp, 817
                  xori         s8, t5, -1196
                  addi         a5, s8, 163
439:              slli         s11, t1, 7
                  and          s5, t2, a6
                  bltu         t5, gp, 442f
442:              nop
443:              addi         a7, s2, -1880
                  sltu         s2, s8, s9
                  slli         sp, a7, 7
                  beq          s4, ra, 462f
                  auipc        t5, 640537
                  or           zero, a4, s1
                  la           s0, sub_1
                  lui          t5, 1001255
                  xori         tp, tp, 1141
                  lui          sp, 558521
                  or           t3, tp, s6
                  addi         s0, s0, 934
                  auipc        zero, 852129
                  blt          a4, s9, main_j2 #branch to jump instr
                  sll          a2, ra, s8
                  sub          sp, tp, s1
                  addi         gp, s11, -73
main_j2:          jalr         ra, s0, -933 #jump main -> sub_1
                  bne          sp, a6, 466f
                  or           t0, s11, a2
                  sub          s5, t4, s1
                  slt          s4, s4, s11
                  blt          sp, s0, 462f
                  blt          s4, a0, 472f
                  beq          s3, a5, 455f
455:              nop
                  slli         a2, t2, 3
                  lui          t6, 1002755
                  or           s3, s7, sp
                  sltu         t3, tp, s7
                  addi         s6, gp, 1095
                  srl          t4, a6, t2
462:              beq          s11, t3, 471f
                  lui          tp, 524896
                  andi         s4, a7, -1635
                  lui          t6, 365231
466:              sub          s11, a7, s5
                  bgeu         a6, s6, 485f
                  slti         t3, a6, 1825
                  sltiu        s0, t3, 397
                  beq          a6, s2, 478f
471:              slt          s1, t1, s8
472:              xor          s1, a4, a6
                  lui          a4, 655587
                  slti         s11, t1, -775
                  andi         s5, a1, -959
                  blt          s6, t4, 479f
                  xori         s6, a4, -665
478:              slli         a1, a5, 28
479:              slti         s8, s5, -985
                  blt          a3, a3, 482f
                  blt          t1, s7, 482f
482:              slti         gp, t4, 1998
                  sltiu        a5, a6, -1238
                  nop
485:              beq          s11, a3, 503f
                  srai         ra, zero, 2
                  srli         zero, s8, 15
                  add          ra, s9, ra
                  sll          a2, s0, s11
                  srai         tp, zero, 6
                  sltu         s4, a0, tp
                  sub          s8, a2, s7
                  bgeu         s7, s5, 498f
                  sltu         t5, t3, s8
                  bgeu         t4, s2, 514f
                  nop
                  srl          s5, a1, s11
498:              sra          a4, a7, s3
                  blt          s3, a5, 512f
                  srl          zero, sp, t6
                  srl          s11, a0, sp
                  srl          t5, a7, gp
503:              addi         a7, s5, -1218
                  srli         s10, t6, 5
                  lui          a4, 95745
                  and          a1, a6, a6
                  auipc        ra, 10588
                  beq          a4, a7, 517f
                  bne          t4, a7, 524f
                  sll          s10, t6, s0
                  bge          a4, a5, 517f
512:              blt          t6, t3, 519f
                  slt          a6, t3, a0
514:              bltu         s4, s8, 520f
                  bgeu         a1, s9, 516f
516:              xor          a7, t0, a7
517:              xori         s11, s7, 224
                  auipc        s0, 265259
519:              slli         s9, t4, 8
520:              beq          a1, s7, 528f
                  beq          a4, a1, 540f
                  sub          t5, s0, a4
                  srai         t2, a1, 18
524:              sll          sp, t3, a0
                  blt          s3, s11, 528f
                  sltu         ra, a0, a3
                  srli         a2, s4, 6
528:              slti         a4, a3, -744
                  nop
                  sra          s3, s2, a7
                  beq          s3, a7, 549f
                  bgeu         t5, t3, 535f
                  srl          t4, s8, s8
                  sra          a7, a2, s10
535:              blt          t2, t6, 537f
                  srl          t6, a7, a0
537:              nop
                  andi         sp, s11, -515
                  and          a1, s10, gp
540:              beq          s4, s8, 541f
541:              and          gp, a1, s3
                  bne          a7, a7, 552f
                  srai         s3, gp, 8
                  slti         a2, gp, 1196
                  slli         gp, a1, 7
                  xor          s5, s4, s1
                  sll          a6, gp, s11
                  bltu         t1, t2, 560f
549:              slli         a0, s7, 5
                  slli         ra, s0, 24
                  slt          tp, tp, t3
552:              srli         sp, a0, 3
                  sra          s8, a5, a0
                  slti         sp, a3, 1565
                  srli         s6, a0, 13
                  slli         a1, s6, 7
                  slti         s10, s8, -877
                  sll          tp, s4, a6
                  sltu         tp, s10, s2
560:              auipc        s0, 348674
                  bne          a4, s0, 563f
                  slli         a5, s6, 20
563:              beq          s0, a2, 564f
564:              bgeu         s7, t2, 579f
                  addi         s2, a2, -1443
                  xori         ra, t0, 538
                  srli         a1, t1, 0
                  bgeu         t3, t5, 585f
                  lui          s11, 140849
                  sll          t2, s11, a5
                  xori         s10, a0, 1562
                  addi         gp, a6, -1990
                  and          t2, t0, a4
                  addi         s2, zero, 8 #init loop 1 counter
                  addi         a6, zero, 0 #init loop 1 limit
main_6_1_t:       or           a1, s3, t1
                  addi         s2, s2, -2 #update loop 1 counter
                  addi         tp, zero, -5 #init loop 0 counter
                  addi         s0, zero, -19 #init loop 0 limit
                  nop
main_6_0_t:       auipc        a5, 123565
                  addi         tp, tp, -4 #update loop 0 counter
                  bge          tp, s0, main_6_0_t #branch for loop 0
                  beq          s2, a6, main_6_1_t #branch for loop 1
                  sltiu        gp, a0, 1283
                  andi         s3, zero, 613
                  bne          zero, t4, 583f
                  beq          s9, t3, 594f
                  ori          s6, t4, -316
                  addi         s9, s1, 1651
579:              xor          ra, t4, gp
                  srai         a7, s3, 22
                  or           s0, t3, s10
                  xori         t4, t3, 1987
583:              slli         t4, tp, 11
                  xori         s3, s0, -916
585:              auipc        zero, 883278
                  or           s1, t1, s9
                  sltu         t5, gp, s0
                  ori          t2, tp, -1551
                  sll          s8, gp, s9
                  xori         s8, s3, -1487
                  sltu         s5, a2, s6
                  bgeu         t4, s1, 597f
                  add          a0, a7, s3
594:              bltu         s6, s9, 597f
                  sra          t5, t2, s11
                  bne          s6, t5, 597f
597:              addi         s5, s9, -181
                  la x6, test_done
                  jalr x0, x6, 0
test_done:        
                  li gp, 1
                  ecall
sub_3:            sub          s3, a2, s1
                  beq          t5, a1, sub_3_stack_p
sub_3_stack_p:    addi         a3, a3, -12
                  sltu         s0, a7, s4
                  sltu         s8, s9, s7
                  xori         t5, s11, -335
                  sra          s0, a4, s0
                  sltu         s6, t1, s4
                  sub          t4, t1, t4
                  sw           ra, 4(a3)
                  xor          zero, a5, t1
                  addi         s3, zero, 2 #init loop 0 counter
                  addi         s9, zero, 15 #init loop 0 limit
sub_3_5_0_t:      lui          s4, 2774
                  addi         s3, s3, 2 #update loop 0 counter
                  xori         zero, s6, -99
                  blt          s3, s9, sub_3_5_0_t #branch for loop 0
                  nop
                  addi         sp, zero, 8 #init loop 0 counter
                  slti         t4, t4, -1159
                  addi         a1, zero, -9 #init loop 0 limit
                  srli         tp, a2, 9
                  sll          t0, s3, t1
                  slt          s11, a6, s3
sub_3_10_0_t:     sub          s1, a7, s9
                  srli         zero, a2, 11
                  addi         sp, sp, -1 #update loop 0 counter
                  xori         t2, s1, 1729
                  sll          a0, s2, t3
                  nop
                  slt          a4, a1, s8
                  slli         t5, a6, 1
                  lui          s4, 219692
                  nop
                  slti         a0, a4, -1390
                  add          s4, s0, ra
                  auipc        ra, 967839
                  bne          sp, a1, sub_3_10_0_t #branch for loop 0
                  sll          t4, a5, t2
                  addi         a6, zero, 10 #init loop 1 counter
                  addi         s3, zero, 2 #init loop 1 limit
                  xor          a5, t6, a4
sub_3_6_1_t:      auipc        s9, 571541
                  addi         a6, a6, -1 #update loop 1 counter
                  ori          s11, t0, -503
                  addi         s5, zero, 0 #init loop 0 counter
                  sltiu        s0, gp, -272
                  addi         tp, zero, -12 #init loop 0 limit
                  xori         t4, a3, 541
sub_3_6_0_t:      andi         a4, t4, -129
                  addi         s5, s5, -6 #update loop 0 counter
                  beq          s5, tp, sub_3_6_0_t #branch for loop 0
                  add          a2, s6, tp
                  bgeu         a6, s3, sub_3_6_1_t #branch for loop 1
                  xori         s4, s0, -2021
                  addi         a0, zero, 9 #init loop 0 counter
                  sltiu        t5, s1, -730
                  nop
                  xori         t4, a2, -877
                  sra          ra, s7, a2
                  sltiu        a5, t2, -2014
                  and          s8, t2, s0
                  sub          s8, s0, ra
                  nop
                  slti         s9, gp, -1846
                  addi         s1, zero, 8 #init loop 0 limit
                  srai         a5, a1, 0
                  andi         t2, zero, 27
                  nop
                  sll          ra, t0, a0
                  xori         a7, s6, 1272
                  and          a5, s10, zero
                  sll          t3, gp, a7
sub_3_13_0_t:     xori         a5, a0, 934
                  ori          s11, t5, -789
                  ori          a6, s0, -710
                  nop
                  auipc        t2, 100184
                  addi         a0, a0, -6 #update loop 0 counter
                  bgeu         a0, s1, sub_3_13_0_t #branch for loop 0
                  srli         s2, a3, 10
                  addi         a6, zero, 10 #init loop 0 counter
                  sltu         t4, t2, a3
                  add          s10, t4, s7
                  addi         s0, zero, 14 #init loop 0 limit
                  and          zero, gp, s2
sub_3_11_0_t:     auipc        a7, 102686
                  slti         t6, a4, 696
                  addi         a6, a6, 4 #update loop 0 counter
                  srai         s11, a2, 31
                  srai         sp, s6, 13
                  and          a0, s2, a1
                  blt          a6, s0, sub_3_11_0_t #branch for loop 0
                  and          t6, s3, s10
                  addi         a2, zero, -1 #init loop 1 counter
                  nop
                  xor          s6, s10, a6
                  addi         t3, zero, 17 #init loop 1 limit
                  and          s10, zero, s6
                  nop
sub_3_7_1_t:      xor          s10, t0, s3
                  or           s5, s11, t1
                  addi         a2, a2, 10 #update loop 1 counter
                  ori          s11, s1, 787
                  addi         sp, zero, 1 #init loop 0 counter
                  addi         gp, a2, 1931
                  addi         a5, zero, 17 #init loop 0 limit
                  auipc        a1, 744157
                  srai         a1, ra, 24
sub_3_7_0_t:      nop
                  sltiu        t2, s4, -1256
                  addi         sp, sp, 8 #update loop 0 counter
                  bne          sp, a5, sub_3_7_0_t #branch for loop 0
                  sltiu        s11, ra, 1940
                  sub          s9, s10, a5
                  sra          a7, s1, t6
                  xori         s6, s5, 1810
                  slli         s10, a3, 16
                  sub          s5, s1, s7
                  sltu         a0, sp, tp
                  auipc        s11, 151612
                  lui          s5, 382526
                  bltu         a2, t3, sub_3_7_1_t #branch for loop 1
                  sltiu        ra, t6, 324
                  addi         a4, zero, 10 #init loop 1 counter
                  xori         gp, a6, -364
                  addi         a6, zero, 18 #init loop 1 limit
                  srl          t3, ra, a6
sub_3_9_1_t:      sltiu        t5, t4, -567
                  xori         t5, gp, -961
                  slli         s1, t0, 21
                  srai         t3, t5, 12
                  addi         a4, a4, 5 #update loop 1 counter
                  ori          ra, s8, 662
                  or           t5, t5, zero
                  sub          ra, s1, s6
                  srl          zero, a4, t4
                  sub          s1, s1, s8
                  addi         a7, zero, 8 #init loop 0 counter
                  sltu         s0, s11, a7
                  andi         s2, s9, 1685
                  addi         tp, zero, -4 #init loop 0 limit
                  or           t3, t5, a0
sub_3_9_0_t:      xori         a0, s1, -648
                  ori          s9, a2, 1593
                  andi         a5, s5, 990
                  sltiu        s9, s11, 321
                  addi         ra, t3, -1017
                  nop
                  xor          t4, t6, t6
                  addi         a7, a7, -6 #update loop 0 counter
                  sra          s8, s1, t4
                  nop
                  bne          a7, tp, sub_3_9_0_t #branch for loop 0
                  slt          t5, zero, a7
                  sll          s2, gp, a7
                  bltu         a4, a6, sub_3_9_1_t #branch for loop 1
                  ori          gp, s2, 807
                  addi         s8, zero, 10 #init loop 0 counter
                  slt          t2, a6, t0
                  xor          a7, sp, gp
                  add          a5, a5, tp
                  srai         t0, a7, 1
                  sltiu        a5, t5, -1932
                  slt          gp, t3, t1
                  slt          s10, t0, s3
                  and          t0, ra, t0
                  sltu         t2, s2, ra
                  auipc        a4, 995811
                  add          t0, t1, s3
                  nop
                  srai         gp, sp, 19
                  slt          t4, s9, s9
                  sltu         a7, a2, s1
                  addi         s11, zero, 16 #init loop 0 limit
                  srli         gp, a1, 15
                  sltiu        t3, t1, -1814
                  xori         t6, a6, 1518
sub_3_4_0_t:      xor          a5, s5, a7
                  auipc        t0, 538752
                  addi         s8, s8, 1 #update loop 0 counter
                  xor          ra, s8, a2
                  lui          s2, 581649
                  slt          a7, s2, gp
                  sltiu        zero, ra, 1259
                  addi         a5, a1, 733
                  bne          s8, s11, sub_3_4_0_t #branch for loop 0
                  ori          gp, s6, -1454
                  addi         s11, zero, -2 #init loop 0 counter
                  addi         t0, zero, -12 #init loop 0 limit
sub_3_8_0_t:      xori         tp, a1, -1571
                  addi         s11, s11, -5 #update loop 0 counter
                  beq          s11, t0, sub_3_8_0_t #branch for loop 0
                  srai         s8, t2, 7
                  addi         t2, zero, -2 #init loop 1 counter
                  addi         s3, zero, 5 #init loop 1 limit
                  lui          a5, 485737
sub_3_2_1_t:      lui          t3, 310677
                  add          s5, a0, ra
                  sltiu        sp, a4, -1558
                  sltiu        t0, a7, -823
                  srai         tp, s0, 7
                  addi         t2, t2, 3 #update loop 1 counter
                  addi         t5, zero, -3 #init loop 0 counter
                  sra          s0, t6, t1
                  or           sp, ra, zero
                  addi         s4, zero, 8 #init loop 0 limit
                  auipc        s8, 395225
sub_3_2_0_t:      slti         ra, s2, 1062
                  srai         s5, tp, 5
                  addi         zero, sp, -1470
                  addi         t5, t5, 7 #update loop 0 counter
                  lui          tp, 169928
                  sub          s10, a3, s5
                  lui          zero, 214924
                  bltu         t5, s4, sub_3_2_0_t #branch for loop 0
                  and          s2, gp, s11
                  sltiu        sp, s6, 1580
                  sra          sp, t3, s3
                  blt          t2, s3, sub_3_2_1_t #branch for loop 1
                  addi         a6, t1, -1341
                  beq          t6, a4, 14f
                  sltu         s8, t2, t0
                  slt          t4, s4, a6
                  slt          t5, s2, s4
                  beq          s0, t1, 12f
                  add          s0, t4, a1
                  add          t6, s11, ra
                  blt          t1, s11, 14f
                  bltu         gp, s4, 18f
                  beq          tp, t5, 27f
                  srai         a1, s7, 20
                  sltiu        a2, s7, 903
12:               or           gp, t4, t5
                  ori          t5, zero, -880
14:               srai         s11, s0, 10
                  beq          a4, zero, 20f
                  addi         a1, t2, 265
                  srl          a0, s10, t3
18:               sll          a5, sp, s6
                  or           a6, ra, a5
20:               bge          zero, s8, 21f
21:               sltu         s5, s11, s7
                  add          sp, a4, t4
                  andi         a2, a0, 1651
                  addi         a0, s2, 370
                  sll          s6, t5, ra
                  xori         ra, s8, 1237
27:               lui          s11, 360888
                  blt          t2, t1, 40f
                  sltiu        t0, a3, 1738
                  srl          s6, a1, sp
                  slt          t2, ra, t0
                  nop
                  blt          t5, a7, 51f
                  sll          s11, t4, a3
                  add          t2, s3, t5
                  lui          sp, 367449
                  bgeu         tp, s6, 50f
                  and          t5, s11, s9
                  lui          s2, 680205
40:               xor          zero, zero, t2
                  add          s9, s0, a3
                  srai         s2, s4, 0
                  addi         s10, s2, -242
                  bgeu         sp, a4, 48f
                  xori         s0, a4, 67
                  ori          s2, s5, 88
                  bgeu         s8, sp, 59f
48:               bltu         a6, zero, 65f
                  addi         s1, t6, -1503
50:               blt          s4, ra, 61f
51:               andi         s6, s9, -5
                  xor          tp, t1, a5
                  sll          sp, ra, s8
                  ori          s0, t0, 1297
                  add          gp, s3, t6
                  bgeu         t6, t6, 71f
                  addi         s2, a7, 1785
                  and          sp, a6, t1
59:               bltu         a0, s10, 63f
                  or           s1, t3, s6
61:               sra          a6, s3, s11
                  slt          a7, a6, s0
63:               sll          a2, zero, sp
                  sltu         s4, a0, a0
65:               bgeu         t0, t3, 75f
                  slti         s5, s4, 2001
                  srli         ra, t4, 8
                  bne          s7, t3, 71f
                  xori         a5, s5, 462
                  add          a4, s2, a1
71:               srl          t5, s11, t5
                  sll          s8, t4, tp
                  slti         s0, ra, 1019
                  sltu         s1, a1, a3
75:               ori          a4, s4, -1020
                  nop
                  auipc        a0, 1024981
                  slti         a0, t4, 1446
                  sub          t2, a0, s2
                  slti         s8, a3, -588
                  andi         a1, t3, 308
                  slt          t0, a1, s6
                  bne          a0, s6, 97f
                  slt          s10, a5, s6
                  bne          sp, t2, 94f
                  and          a4, t2, t2
                  and          a4, gp, s4
                  xori         ra, s1, -1450
                  sltiu        s4, sp, 1909
                  slt          s4, t2, t0
                  sltiu        zero, tp, -282
                  andi         a0, a1, -1188
                  sll          t3, s11, a7
94:               bne          s1, t3, 109f
                  srl          zero, t1, t5
                  auipc        s1, 199737
97:               srai         t0, a6, 9
                  addi         s11, zero, 0 #init loop 1 counter
                  addi         ra, zero, -17 #init loop 1 limit
                  srli         a2, t0, 20
sub_3_1_1_t:      auipc        s4, 394537
                  xor          gp, t4, t5
                  sltu         s9, s4, t4
                  addi         s11, s11, -3 #update loop 1 counter
                  add          s6, ra, s2
                  add          s3, a0, t3
                  addi         tp, zero, -1 #init loop 0 counter
                  or           a0, s10, s9
                  sltiu        s6, s11, 1450
                  or           s0, a0, s4
                  xor          t2, sp, tp
                  slti         s0, t1, 1384
                  addi         t4, zero, -19 #init loop 0 limit
                  add          a2, a1, s4
                  srai         a5, a2, 25
sub_3_1_0_t:      ori          a5, tp, -927
                  addi         tp, tp, -9 #update loop 0 counter
                  beq          tp, t4, sub_3_1_0_t #branch for loop 0
                  sra          a4, a6, s11
                  or           sp, s2, a1
                  slti         t0, a4, -1668
                  xor          s5, t3, s1
                  bge          s11, ra, sub_3_1_1_t #branch for loop 1
                  srai         t5, a2, 5
                  sltiu        s9, s4, 424
                  xori         s10, gp, -1756
                  nop
                  sltiu        s1, a4, -1759
                  ori          s5, t6, 972
                  or           s8, s4, t5
                  sub          t2, s4, t6
                  ori          t2, a4, -1043
                  xor          s4, t4, s4
                  and          s10, s10, t0
                  beq          tp, ra, 120f
109:              add          s3, zero, a7
                  sltiu        s9, a1, 137
                  sltu         t2, a5, zero
                  sll          a4, s10, zero
                  andi         gp, a0, 1970
                  sll          gp, s9, s0
                  or           s1, a1, a1
                  srl          a7, a7, tp
                  slli         ra, a1, 7
                  bne          s1, t1, 138f
                  lui          s6, 541945
120:              add          s9, t3, s1
                  bltu         zero, a5, 129f
                  andi         sp, a4, -343
                  bltu         s4, a1, 133f
                  add          a5, s9, gp
                  srli         t2, a1, 7
                  bne          s7, s7, 133f
                  bge          a5, a5, 141f
                  bltu         s7, t6, 138f
129:              addi         s8, s9, 1623
                  bgeu         a5, t1, 150f
                  and          s3, a0, s7
                  beq          s6, t3, 143f
133:              auipc        a4, 592167
                  blt          t0, zero, 138f
                  beq          a6, t1, 152f
                  sltiu        a0, sp, -1810
                  or           s9, zero, t6
138:              srai         s0, a6, 0
                  slti         a0, t1, 174
                  xor          t0, ra, s3
141:              srli         s2, t5, 9
                  sra          a6, a4, a4
143:              sltu         a0, a6, ra
                  bltu         t4, sp, 155f
                  auipc        ra, 78279
                  sub          t5, t6, a3
                  srli         s1, s2, 5
                  sra          s5, t6, tp
                  auipc        t0, 700881
150:              srl          s2, t1, tp
                  sll          s4, a5, a7
152:              xor          s4, a5, s7
                  blt          a4, sp, 165f
                  srl          s11, zero, a3
155:              addi         tp, a0, -818
                  lui          a6, 627351
                  bge          a6, t4, 167f
                  bltu         s11, s0, 173f
                  or           t0, a7, t1
                  andi         s6, s3, -1507
                  slli         s0, a2, 20
                  bltu         t0, sp, 172f
                  blt          ra, s2, 171f
                  blt          s1, sp, 182f
165:              bltu         tp, s8, 174f
                  bne          s1, s6, 176f
167:              lui          a6, 627158
                  ori          gp, t4, 1632
                  srli         gp, a2, 6
                  blt          a2, s7, 190f
171:              sub          sp, s11, t0
172:              xor          t2, s11, t0
173:              or           t2, s2, s6
174:              bltu         sp, gp, 184f
                  srl          s3, s4, sp
176:              ori          t5, tp, 1545
                  srl          t4, a6, t0
                  srli         t5, s10, 30
                  srai         s2, zero, 10
                  srli         a6, s8, 8
                  slt          s0, sp, s2
182:              addi         tp, a2, -243
                  bge          zero, s7, 195f
184:              beq          s10, s2, 196f
                  sra          s1, a6, s8
                  sltiu        ra, t0, 305
                  or           t5, a5, s5
                  sltu         t6, ra, a3
                  nop
190:              sll          a7, s3, a3
                  bne          s11, s0, 196f
                  sltu         t3, s3, s1
                  and          s4, a5, s2
                  bgeu         s11, s4, 205f
195:              addi         s4, s7, 741
196:              ori          s10, tp, -1186
                  slti         a6, s6, -301
                  auipc        t5, 851692
                  addi         sp, s4, 1632
                  lui          a0, 1027827
                  blt          s10, s9, 208f
                  sll          t5, a4, t5
                  bge          s3, a4, 217f
                  xor          s0, a2, s7
205:              lui          t4, 247026
                  bgeu         t5, t2, 214f
                  add          s6, t0, t3
208:              sll          s9, a4, zero
                  slli         s10, s4, 18
                  sra          t5, t4, t1
                  addi         sp, s9, -1827
                  beq          a0, s0, 216f
                  and          tp, a3, tp
214:              sltu         t4, a5, t0
                  bne          sp, ra, 229f
216:              xori         s11, t3, 1361
217:              and          s5, t4, s2
                  srai         a2, a5, 27
                  bltu         s8, t6, 232f
                  xori         t0, a6, -328
                  nop
                  auipc        s8, 719876
                  srli         sp, s1, 10
                  bltu         t4, t0, 239f
                  ori          s4, t5, 1991
                  xor          s8, s2, t2
                  ori          t6, a2, 1312
                  nop
229:              slli         a2, s11, 1
                  sltu         s3, a1, t3
                  nop
232:              srli         a2, a7, 14
                  srai         t0, zero, 28
                  bge          t0, s3, 237f
                  bge          t2, gp, 255f
                  bltu         t0, a6, 237f
237:              bltu         s9, gp, 244f
                  sll          s11, zero, a3
239:              nop
                  bne          t2, a0, 254f
                  srli         a4, t4, 14
                  and          s8, s1, zero
                  sub          s11, s11, s5
244:              lui          sp, 360067
                  ori          s4, zero, -1476
                  lui          t3, 114467
                  sra          tp, zero, t5
                  beq          t2, gp, 266f
                  sub          a7, gp, a4
                  add          sp, s0, a1
                  sltiu        a7, s6, -449
                  sll          a6, t3, s10
                  add          a1, tp, a4
254:              slt          s11, ra, s10
255:              slli         a5, a2, 3
                  sll          s10, sp, t4
                  sltiu        s0, a6, 514
                  sub          t0, s5, a7
                  or           t2, gp, gp
                  slt          a6, a3, s9
                  srli         s4, t6, 11
                  add          s1, t5, s7
                  bge          s1, t3, 278f
                  slt          s5, s4, a4
                  andi         t5, s10, 1320
266:              ori          t0, tp, -1700
                  xori         a0, t0, -1733
                  addi         a7, zero, 9 #init loop 1 counter
                  lui          a1, 441595
                  addi         s8, zero, 9 #init loop 1 limit
                  auipc        sp, 997893
                  addi         s4, s10, 1991
                  auipc        a0, 126210
sub_3_3_1_t:      lui          sp, 336947
                  nop
                  sltiu        zero, a7, 682
                  xori         a5, a6, -1320
                  ori          t3, s0, 79
                  xor          t3, s5, s7
                  addi         a7, a7, -8 #update loop 1 counter
                  srli         s9, s2, 31
                  addi         a6, zero, 8 #init loop 0 counter
                  sltu         s5, s6, t2
                  slti         t0, t0, 1407
                  addi         ra, zero, 18 #init loop 0 limit
                  or           gp, t1, a1
                  srli         a1, t0, 7
                  ori          t4, s4, -1444
sub_3_3_0_t:      auipc        s3, 694378
                  slt          s9, s8, t6
                  srli         s6, t4, 4
                  addi         a6, a6, 6 #update loop 0 counter
                  bltu         a6, ra, sub_3_3_0_t #branch for loop 0
                  sltu         tp, t0, s6
                  bgeu         a7, s8, sub_3_3_1_t #branch for loop 1
                  auipc        tp, 365630
                  lui          a4, 466140
                  nop
                  andi         sp, s2, 1412
                  and          a2, a5, s6
                  lui          t3, 440591
                  slt          a5, a4, s8
                  slt          zero, a2, a4
                  nop
                  slli         t6, s5, 27
                  xori         tp, s3, -284
278:              sub          a1, t5, t2
                  add          s1, zero, t1
                  beq          s2, t0, 290f
                  beq          s9, t0, 293f
                  slti         a5, t4, 1615
                  blt          s2, t0, 296f
                  xori         a6, t0, 486
                  addi         s2, a2, -1215
                  srl          a5, a7, s6
                  bne          s2, t2, 295f
                  sra          s5, t1, s2
                  addi         s1, zero, -3 #init loop 1 counter
                  slt          s3, a3, t4
                  addi         s8, zero, -12 #init loop 1 limit
sub_3_0_1_t:      or           t6, a5, a1
                  sltu         s5, s5, tp
                  slli         s4, sp, 10
                  andi         s4, s9, -637
                  addi         s1, s1, -9 #update loop 1 counter
                  addi         s6, zero, -8 #init loop 0 counter
                  addi         a5, zero, 16 #init loop 0 limit
                  slti         s10, s7, 2009
                  auipc        s2, 536640
sub_3_0_0_t:      nop
                  addi         s6, s6, 7 #update loop 0 counter
                  nop
                  bltu         s6, a5, sub_3_0_0_t #branch for loop 0
                  sll          zero, s3, s9
                  nop
                  beq          s1, s8, sub_3_0_1_t #branch for loop 1
                  slt          s9, t4, t1
                  xor          s6, s5, s1
290:              slt          s3, tp, a5
                  add          t4, s3, a3
                  bge          a1, gp, 295f
293:              lui          s0, 841447
                  slli         s8, ra, 3
295:              ori          s5, s11, -1445
296:              auipc        a2, 487212
                  bltu         s11, a4, 317f
                  addi         sp, s11, 1787
                  srai         s4, t1, 21
                  sltiu        a4, a4, 540
                  andi         tp, s6, -1327
                  sll          a6, t4, t3
                  ori          sp, a2, 1151
                  sltiu        a7, s0, 295
                  sub          a6, s7, zero
                  bgeu         t2, a5, 324f
                  bne          a6, tp, 319f
                  and          s11, t4, s8
                  slt          a7, a5, s9
                  add          s3, s10, s1
                  nop
                  addi         t2, t3, 1366
                  or           zero, t0, a4
                  lui          t0, 237020
                  xori         s1, a4, 1740
                  lui          a5, 334317
317:              bltu         a1, a7, 332f
                  sra          s4, ra, s0
319:              add          a5, t0, s7
                  xor          a7, a6, s6
                  sll          zero, zero, a7
                  sub          s2, t5, t2
                  andi         t3, s2, 1341
324:              bgeu         a2, t0, 335f
                  bgeu         a5, s5, 335f
                  or           t5, t1, s1
                  andi         gp, t1, 1295
                  andi         s4, a5, 381
                  bltu         a1, s6, 339f
                  srl          s6, t2, s9
                  add          s4, a3, s8
332:              or           a4, a2, s3
                  ori          s2, a3, -396
                  srai         a0, a2, 30
335:              slli         sp, tp, 18
                  bltu         t5, s3, 346f
                  sltu         a0, t6, a2
                  and          s5, s11, a7
                  bge          t3, t4, sub_3_j7 #branch to jump instr
                  sll          t0, t5, t0
                  sltiu        s6, t3, -552
                  lui          s8, 53666
                  xori         t3, s9, 1789
                  auipc        s3, 718311
                  slt          tp, t6, s3
sub_3_j7:         jal          ra, sub_5 #jump sub_3 -> sub_5
339:              sra          gp, t5, s11
                  sra          t3, a1, zero
                  sltiu        t4, s4, 814
                  srai         s4, s4, 21
                  srl          t5, t2, s4
                  bne          t5, t0, 348f
                  slt          gp, t1, s7
346:              sra          s3, s1, ra
                  srai         a0, s4, 13
348:              andi         a1, a0, -328
                  nop
                  bge          a3, tp, 357f
                  nop
                  nop
                  or           t6, a6, s10
                  sltiu        t0, a7, -1005
                  sub          s6, s9, s1
                  beq          a0, s5, 376f
357:              srl          s1, gp, t0
                  slt          s9, t6, s3
                  srli         tp, t5, 0
                  or           t5, s11, a2
                  sltiu        zero, a0, 249
                  sra          t0, zero, s11
                  slli         t6, t6, 20
                  nop
                  bne          s3, t6, 374f
                  add          gp, s0, zero
                  beq          a0, s6, 378f
                  xor          s5, s10, t3
                  sub          t6, t0, gp
                  and          a4, s3, a5
                  sll          t3, s9, s6
                  or           s11, t2, a2
                  srai         s2, ra, 21
374:              srl          t2, a7, a4
                  sub          s1, s5, t0
376:              sltiu        s10, t3, 1722
                  add          s3, s1, s6
378:              srai         zero, zero, 8
                  sltu         s10, s11, a7
                  srli         s10, a2, 17
                  sll          t5, s8, s11
                  andi         s6, a6, 115
                  srl          s11, a4, s1
                  sltu         t2, sp, s6
                  slli         tp, s7, 23
                  bge          tp, s7, 400f
                  or           a2, t1, t1
                  or           s8, s3, sp
                  nop
                  xori         ra, t4, 1545
                  sra          s1, t4, s8
                  sll          s10, s7, a7
                  andi         s8, a6, 1133
                  srl          s10, a5, tp
                  xor          t4, s2, s2
                  andi         t0, ra, -1188
                  bne          ra, s8, 414f
                  lui          s1, 858985
                  sltiu        sp, t4, -1677
400:              sll          s6, s4, ra
                  sra          a5, t2, a0
                  blt          s6, t2, 410f
                  add          a7, ra, s9
                  beq          a1, t5, 418f
                  bgeu         t4, t6, 409f
                  beq          s4, t2, 418f
                  auipc        s9, 734369
                  bne          s9, s9, 426f
409:              andi         s4, t3, -1583
410:              slti         tp, s7, -1197
                  xor          s0, t2, a0
                  slli         ra, gp, 13
                  slti         sp, s7, -1840
414:              bgeu         a7, a1, 428f
                  srai         s3, t0, 17
                  sltu         t4, s6, s5
                  sll          t2, s1, t4
418:              nop
                  or           s4, a5, s2
                  sll          s9, a4, a5
                  sub          a5, a1, tp
                  beq          sp, s5, 429f
                  slli         a5, s1, 21
                  or           t2, a6, sp
                  or           a4, s1, a4
426:              bltu         t3, s8, 427f
427:              nop
428:              addi         s11, s3, 6
429:              slt          a0, a1, s1
                  xori         gp, a1, -328
                  bge          t5, sp, 436f
                  or           s8, t3, s8
                  bge          s7, t2, 446f
                  slti         s8, a5, 865
                  slt          sp, t4, s1
436:              beq          a6, a1, 450f
                  and          ra, s3, t4
                  xori         tp, a4, -1444
                  addi         t0, a5, 1753
                  sltiu        t3, s1, -742
                  andi         zero, sp, 1633
                  sltu         s11, zero, s5
                  ori          t6, t1, -1
                  andi         s9, a2, 1913
                  or           s3, s8, s8
446:              xori         a6, s10, 151
                  blt          s2, s11, 459f
                  srli         zero, a5, 7
                  or           s3, a3, a7
450:              beq          a7, a4, 461f
                  srai         t0, t4, 15
                  srai         a1, s5, 21
                  sltu         tp, a2, s4
                  sltu         t3, s11, s3
                  sub          a5, a7, s0
                  sub          a6, s4, t3
                  slti         a5, a6, -1044
                  sltu         a6, gp, s1
459:              sll          a0, t1, s11
                  bne          a4, t5, 470f
                  addi         t6, zero, 7 #init loop 1 counter
                  addi         s0, zero, 7 #init loop 1 limit
sub_3_12_1_t:     ori          zero, s0, -1343
                  addi         t6, t6, -6 #update loop 1 counter
                  addi         s9, zero, -1 #init loop 0 counter
                  add          s2, s8, s2
                  addi         s8, zero, 11 #init loop 0 limit
sub_3_12_0_t:     ori          t4, a1, 1762
                  addi         s9, s9, 10 #update loop 0 counter
                  bltu         s9, s8, sub_3_12_0_t #branch for loop 0
                  bgeu         t6, s0, sub_3_12_1_t #branch for loop 1
                  slt          s1, a7, t2
461:              nop
                  xori         t2, t6, 1675
                  and          a6, t4, s8
                  bltu         zero, s3, 482f
                  srl          s2, ra, a0
                  xor          s6, s3, s9
                  blt          tp, s0, 477f
                  addi         a4, sp, -829
                  lui          s10, 267233
470:              xori         t2, t5, -268
                  slt          a7, sp, zero
                  srli         t3, s0, 9
                  beq          s7, s1, 477f
                  srai         s2, a0, 3
                  srli         s4, s7, 6
                  sltu         t4, tp, a3
477:              sub          sp, a7, gp
                  and          a1, s1, a4
                  and          a0, a7, s6
                  blt          t6, s5, 487f
                  xor          gp, a3, sp
482:              bge          t2, a4, 491f
                  or           s2, s8, a6
                  sub          a7, gp, a3
                  srli         a7, zero, 11
                  andi         s1, s6, -1753
487:              sll          a5, s6, s11
                  xori         a5, tp, -270
                  slli         a4, a4, 7
                  sub          a0, s3, a5
491:              bne          t0, ra, 499f
                  nop
                  srl          s10, t0, a3
                  xori         zero, s0, -1038
                  nop
                  bltu         s1, s9, 506f
                  srli         ra, s7, 2
                  srai         s1, s8, 14
499:              and          s11, a6, t6
                  nop
                  slli         zero, a5, 21
                  bne          a1, tp, 522f
                  sra          t5, t4, s5
                  bltu         a5, a2, 515f
                  slli         t3, gp, 25
506:              beq          a5, a0, 524f
                  beq          s4, s1, 517f
                  srli         s10, a7, 25
                  slli         s4, s6, 22
                  xori         a6, s9, -297
                  beq          ra, a0, 526f
                  auipc        zero, 329476
                  nop
                  bltu         t6, t4, 528f
515:              nop
                  sra          tp, a0, a1
517:              addi         a4, t6, -1371
                  srai         t6, s1, 15
                  sub          s0, a7, a5
                  auipc        t5, 1012775
                  andi         t4, t0, -1474
522:              sltiu        t6, t3, 1093
                  slli         s2, a1, 25
524:              sll          s10, s6, t5
                  ori          s0, tp, 1769
526:              sll          t2, t5, a3
                  srli         t2, a3, 24
528:              auipc        a1, 313648
                  srl          s5, ra, s10
                  auipc        a0, 24362
                  bge          t4, a1, 546f
                  beq          s9, a7, 533f
533:              bgeu         s5, gp, 536f
                  addi         a2, a5, -805
                  xor          s6, t0, t6
536:              lui          t3, 327154
                  bltu         s0, a3, 544f
                  nop
                  sltu         s5, t6, t5
                  slt          s5, a5, s3
                  xori         s3, s1, -636
                  slt          t2, s11, s7
                  slti         a0, a3, -473
544:              sub          s10, a2, s7
                  srli         s10, s0, 2
546:              and          s1, t1, s8
                  sll          t0, s7, sp
                  srl          s3, a3, s10
                  addi         t5, a5, 1252
                  ori          a7, ra, 1206
                  addi         t0, t0, 461
                  ori          t3, s5, -1826
                  andi         s4, s10, 2030
                  lui          a6, 7446
                  slti         t4, t4, 331
                  slli         s10, a4, 11
                  bne          a6, a0, 562f
                  xori         s9, ra, -1758
                  sltu         sp, t6, s6
                  bgeu         s9, gp, 574f
                  xor          gp, tp, s6
562:              sll          s9, s11, s0
                  bltu         s4, s9, 575f
                  add          s3, s9, a3
                  andi         a2, s1, 315
                  srli         a1, a4, 13
                  sra          s6, tp, a6
                  slti         s9, s8, -1015
                  sra          s11, t2, s5
                  bge          a1, gp, 574f
                  ori          zero, s2, 1996
                  slt          t2, zero, s9
                  slt          s2, sp, a7
574:              sltiu        t4, gp, 375
575:              bltu         a7, t5, 583f
                  srai         s5, s6, 22
                  slt          s5, a2, s11
                  andi         sp, s2, -1107
                  bltu         t5, s5, 596f
                  ori          s0, s11, 1942
                  beq          s6, ra, 601f
                  and          t3, s4, s5
583:              bltu         s3, t4, 595f
                  auipc        t3, 398656
                  add          a0, s6, a0
                  add          t3, a7, t6
                  slt          t5, t5, ra
                  lui          a7, 1044012
                  srli         a6, a7, 26
                  blt          s3, s10, 591f
591:              sra          a4, zero, s2
                  auipc        a2, 52245
                  srai         s2, t0, 28
                  sltiu        sp, tp, -363
595:              and          s5, s3, t5
596:              add          gp, a3, t6
                  auipc        t0, 300668
                  blt          a7, s11, 618f
                  beq          s3, tp, 613f
                  sra          s2, t4, s9
601:              sub          a6, s6, zero
                  srl          s11, s10, s0
                  auipc        a4, 738866
                  and          s6, ra, a0
                  and          a7, s9, t6
                  blt          a1, s0, 617f
                  sltu         ra, a7, a3
                  and          sp, gp, s9
                  slt          gp, s8, a7
                  beq          s2, gp, 623f
                  blt          a7, s8, 621f
                  srai         s0, gp, 26
613:              xori         s6, gp, 851
                  and          s8, gp, a7
                  lui          ra, 99316
                  srl          gp, s3, s6
617:              xor          t3, gp, zero
618:              srai         a2, t0, 22
                  xori         gp, t4, 1647
                  srli         s3, s3, 0
621:              srl          zero, t1, s3
                  ori          a7, t3, -1332
623:              add          s3, t6, s1
                  xor          s2, t1, tp
                  auipc        a0, 107617
                  nop
                  sll          s6, s4, a0
                  add          a5, s7, s3
                  xori         s2, a0, -1347
                  auipc        s2, 387207
                  or           t6, a3, t0
                  sltiu        t5, a2, 136
                  sub          s11, s0, s6
                  beq          s0, s7, 652f
                  bgeu         gp, t5, 650f
                  sltiu        s9, s5, -426
                  auipc        gp, 890891
                  slt          s3, s1, a1
                  bge          sp, s6, 643f
                  beq          a3, zero, 652f
                  srl          a5, s3, s3
                  nop
643:              blt          s0, t6, 655f
                  bge          s7, gp, 653f
                  andi         s4, s5, 1719
                  bgeu         t1, t5, 661f
                  srl          t6, zero, t3
                  andi         t6, a3, -1578
                  sub          a0, a0, a1
650:              nop
                  sltiu        sp, t1, -399
652:              bgeu         a6, a1, 659f
653:              bgeu         t4, a6, 658f
                  blt          a6, s1, 662f
655:              auipc        s10, 440450
                  andi         t5, gp, 961
                  sll          a7, s11, t3
658:              bne          a1, t6, 662f
659:              ori          a6, t0, -508
                  andi         s9, s2, 1012
661:              andi         a0, s9, 833
662:              add          a1, t3, s7
                  ori          s8, a2, -756
                  slti         a0, zero, -891
                  sltiu        ra, t0, 1906
                  nop
                  bne          s2, s3, 687f
                  xor          t5, t6, t0
                  addi         s11, gp, -587
                  andi         s5, a2, 1682
                  blt          s1, s8, 678f
                  or           sp, gp, s10
                  srli         s4, gp, 12
                  xor          s9, t2, a7
                  bne          gp, s1, 678f
                  sll          t6, t5, zero
                  sra          s8, gp, a3
678:              add          a0, s8, a6
                  srl          a4, t4, a2
                  sra          t5, s9, s7
                  xor          t6, s4, t2
                  sll          a4, s10, a3
                  nop
                  slti         a4, a6, -220
                  andi         s11, s8, -867
                  slt          a4, s4, tp
687:              bltu         s5, t4, 697f
                  auipc        s4, 274477
                  bge          t4, a0, 697f
                  or           s6, s0, s2
                  sltiu        t2, tp, 1359
                  beq          t4, ra, 702f
                  slli         t3, a5, 16
                  nop
                  bltu         s2, gp, 713f
                  bgeu         t4, t1, 713f
697:              bgeu         a1, tp, 709f
                  slt          t5, a2, s9
                  andi         a5, sp, 117
                  sra          s9, tp, a4
                  beq          s0, s0, 715f
702:              xor          s2, a3, t3
                  addi         tp, ra, -204
                  xor          t6, t0, t6
                  auipc        zero, 4361
                  add          s10, a7, s5
                  addi         s8, s11, -609
                  slt          a6, s11, s6
709:              srai         a1, s11, 11
                  sll          s2, a5, a7
                  bge          s9, zero, 722f
                  andi         ra, a6, -428
713:              xor          t0, ra, s4
                  slti         gp, a4, 1030
715:              and          s8, s1, a2
                  auipc        zero, 242242
                  addi         a4, s9, 1979
                  ori          s4, sp, 606
                  bne          gp, a0, 723f
                  sra          t6, s6, s2
                  beq          s9, t4, 723f
722:              bne          a4, s11, 723f
723:              slli         s0, a0, 4
                  srl          t2, t4, a4
                  and          s10, s9, sp
                  ori          s6, s9, 908
                  sltu         s5, a5, s0
                  srl          a5, s3, ra
                  add          a4, a1, ra
                  lw           ra, 4(a3)
                  addi         a3, a3, 12
                  srl          t6, s7, t3
1050:             addi x27, x1, 1
1050:             jalr x27, x27, 0
sub_5:            or           s3, s7, a2
                  srai         s1, a7, 5
                  addi         a3, a3, -60
                  sra          s10, t0, a4
                  sw           ra, 4(a3)
                  auipc        s9, 732778
                  slt          s11, t0, s2
                  slti         s6, s0, -1619
                  addi         ra, zero, 9 #init loop 0 counter
                  sll          s11, s10, t1
                  xori         s3, s7, 1045
                  add          s5, a4, s9
                  auipc        a6, 352869
                  sub          s4, gp, s2
                  srli         t6, sp, 1
                  slli         s4, a4, 14
                  srli         gp, s9, 1
                  addi         t4, zero, 9 #init loop 0 limit
                  slt          a6, s11, s5
                  lui          s5, 764710
                  sltu         a2, s3, zero
                  addi         t0, s5, -626
sub_5_3_0_t:      andi         s11, t6, -1279
                  slli         zero, a4, 29
                  addi         ra, ra, -7 #update loop 0 counter
                  srai         a5, ra, 21
                  srl          s3, t6, zero
                  add          s4, s1, t1
                  lui          a5, 221399
                  sub          s5, a2, ra
                  lui          s6, 670152
                  andi         t2, t0, 1005
                  bgeu         ra, t4, sub_5_3_0_t #branch for loop 0
                  sra          zero, ra, a3
                  addi         s2, zero, 9 #init loop 1 counter
                  slti         t5, s6, -1043
                  nop
                  lui          tp, 837098
                  addi         ra, zero, -7 #init loop 1 limit
sub_5_0_1_t:      xori         s4, t2, -142
                  sltu         zero, s2, s4
                  addi         s2, s2, -8 #update loop 1 counter
                  add          a6, t0, t5
                  sub          sp, s2, a7
                  sub          a6, sp, ra
                  addi         a5, zero, 9 #init loop 0 counter
                  andi         s3, a3, 1451
                  addi         a2, zero, -15 #init loop 0 limit
                  slti         s3, s5, -193
sub_5_0_0_t:      sltu         s8, t4, a2
                  addi         a5, a5, -3 #update loop 0 counter
                  sltiu        t5, t6, 750
                  bne          a5, a2, sub_5_0_0_t #branch for loop 0
                  sra          s9, t0, s7
                  beq          s2, ra, sub_5_0_1_t #branch for loop 1
                  or           s0, t5, a6
                  addi         tp, zero, -8 #init loop 0 counter
                  andi         a4, s9, 544
                  sltu         s5, t6, s11
                  slt          a2, t3, a1
                  addi         s6, zero, 1 #init loop 0 limit
                  sll          s8, t5, t4
                  xori         a4, a6, 1685
sub_5_1_0_t:      nop
                  addi         tp, tp, 8 #update loop 0 counter
                  sltu         t6, s6, s11
                  ori          a5, a0, 1177
                  blt          tp, s6, sub_5_1_0_t #branch for loop 0
                  srl          t4, a6, sp
                  addi         a1, zero, 10 #init loop 1 counter
                  xor          s6, t4, s0
                  addi         s2, zero, 10 #init loop 1 limit
sub_5_2_1_t:      sub          a0, a0, s4
                  addi         a1, a1, -9 #update loop 1 counter
                  srli         a5, sp, 24
                  addi         s0, zero, -5 #init loop 0 counter
                  addi         t6, zero, 7 #init loop 0 limit
                  slli         a7, a4, 9
                  sub          zero, t6, s1
sub_5_2_0_t:      sub          a7, t3, t1
                  andi         t5, sp, 1363
                  srai         zero, t2, 10
                  sltu         zero, t2, s9
                  srai         s5, s6, 10
                  addi         s0, s0, 4 #update loop 0 counter
                  bne          s0, t6, sub_5_2_0_t #branch for loop 0
                  auipc        s9, 161976
                  bgeu         a1, s2, sub_5_2_1_t #branch for loop 1
                  xori         s9, t5, -364
                  sltiu        t4, s8, -1466
                  sll          s8, t2, s8
                  beq          a3, s8, 4f
                  sltiu        s1, s2, 1991
4:                andi         a4, t4, -559
                  sub          s4, s10, a6
                  and          t3, zero, a4
                  nop
                  slli         s6, s1, 10
                  or           tp, t6, s5
                  sub          t2, t2, s7
                  bgeu         gp, a0, 18f
                  ori          s1, ra, -1584
                  beq          t6, t0, 23f
                  bne          zero, a1, 33f
                  sub          s9, a6, s9
                  srl          a0, a6, t0
                  beq          t2, s6, 34f
18:               beq          t6, a3, 31f
                  bgeu         s2, a6, 25f
                  and          a6, ra, a1
                  bgeu         s1, s11, 26f
                  bne          tp, a6, 42f
23:               srai         s6, t0, 11
                  beq          a5, tp, 28f
25:               andi         t0, s3, -1212
26:               bne          s10, t2, 45f
                  srli         s4, a4, 8
28:               beq          t6, a1, 31f
                  sll          gp, a4, a4
                  srl          s1, s1, a6
31:               bgeu         s8, s3, 47f
                  beq          s4, s8, 50f
33:               bge          s5, s6, 34f
34:               srli         gp, a1, 2
                  srl          s9, s2, gp
                  addi         s0, ra, 888
                  srai         gp, s2, 22
                  addi         a0, s7, 1580
                  ori          s3, zero, 1626
                  nop
                  bge          s6, tp, 52f
42:               or           s3, t4, a3
                  beq          s5, ra, 62f
                  nop
45:               bgeu         s1, t6, 60f
                  ori          a4, a5, 978
47:               beq          t6, sp, 58f
                  xori         a2, a7, -692
                  add          s5, ra, a7
50:               slli         s8, s0, 12
                  add          s3, a4, s9
52:               bne          sp, a4, 65f
                  xori         zero, s4, 652
                  bltu         s8, tp, 62f
                  sub          t4, gp, t2
                  ori          a7, sp, -816
                  xori         zero, s1, 236
58:               andi         t4, s2, -866
                  andi         a2, a1, -910
60:               addi         t0, s4, 89
                  add          a4, s3, a2
62:               srai         a5, t2, 16
                  sub          s9, zero, s5
                  slti         t3, s7, -1892
65:               andi         s2, s1, -1593
                  bge          s3, a0, 85f
                  andi         ra, s1, 1226
                  bge          s6, s11, 71f
                  slti         tp, s1, -600
                  bge          s1, s9, 72f
71:               sll          a4, t0, s6
72:               andi         a0, t5, -152
                  andi         zero, s1, 196
                  xori         a5, a0, -135
                  sll          t0, s6, a3
                  auipc        t5, 189325
                  addi         s6, t2, -940
                  bge          s2, t0, 87f
                  andi         s1, s6, 372
                  srli         s3, s6, 5
                  beq          s6, sp, 95f
                  bltu         s4, s0, 100f
                  xor          t3, s9, t6
                  andi         sp, a1, 1014
85:               xor          s2, s2, t5
                  ori          s3, ra, -1469
87:               slti         a5, t6, 1373
                  slli         s8, s9, 23
                  srl          s0, a6, t6
                  andi         s8, s2, -1871
                  slt          a0, t3, s4
                  slti         ra, s9, 1346
                  slli         a5, t4, 19
                  add          gp, a5, t6
95:               ori          t5, ra, -20
                  bgeu         s4, t2, 106f
                  bge          sp, s0, 113f
                  srai         t4, s2, 22
                  srai         s2, t3, 21
100:              sub          s8, s4, t4
                  srai         zero, t6, 3
                  lui          sp, 504186
                  lui          s8, 336481
                  slti         s10, s11, -1384
                  ori          s9, t6, -59
106:              andi         s11, a6, -1475
                  nop
                  slt          a5, a0, t6
                  slti         a4, a6, -535
                  or           s2, s0, s3
                  slti         t3, t3, 148
                  sltiu        a1, a7, 136
113:              srai         t3, s2, 12
                  sltiu        t0, a1, 909
                  sub          t3, a6, t3
                  auipc        s8, 552480
                  bltu         a4, s11, 136f
                  srli         s4, t4, 18
                  xor          t6, ra, gp
                  bltu         tp, t4, 123f
                  andi         a0, s9, -2035
                  and          s0, a1, a6
123:              slti         t4, gp, 374
                  nop
                  srai         ra, t6, 27
                  or           sp, s0, a6
                  sra          s8, s5, sp
                  bne          s7, a2, 147f
                  and          ra, t3, t1
                  auipc        s3, 307998
                  slli         s11, a2, 10
                  addi         t5, s11, 1820
                  bltu         s2, s9, 150f
                  slli         s2, s11, 17
                  nop
136:              xor          s5, s0, s2
                  sll          ra, a6, gp
                  and          a5, s5, a0
                  xori         t6, a3, -1598
                  sra          t5, tp, tp
                  bltu         t3, a0, 160f
                  or           a5, t5, a3
                  sltu         s5, t6, s1
                  sll          s10, s11, a6
                  auipc        gp, 492086
                  add          t5, a6, a0
147:              srai         s1, s11, 13
                  sltu         s6, a1, s3
                  or           a4, s8, tp
150:              ori          tp, t3, -1642
                  bge          a0, s8, 167f
                  sra          s3, s2, s10
                  xori         s4, s9, 1059
                  sltiu        s8, a4, 1914
                  beq          t2, t0, 165f
                  add          ra, a1, t1
                  add          s11, t1, s2
                  bge          s2, sp, 177f
                  addi         s3, t3, 1591
160:              srl          t3, t5, gp
                  bge          a3, s11, 177f
                  andi         s0, s5, -1374
                  xor          s3, t5, t4
                  sub          a2, s8, s10
165:              bltu         t2, t2, 183f
                  sltu         s4, a1, ra
167:              srai         ra, s2, 3
                  srli         s4, s8, 3
                  srl          s5, s11, t5
                  bne          s10, s9, 176f
                  sll          tp, t2, s4
                  srai         s1, t5, 22
                  slli         s6, s8, 28
                  nop
                  or           t6, zero, t1
176:              srli         sp, zero, 21
177:              ori          s6, sp, 1754
                  srli         t0, sp, 7
                  xor          a1, sp, s6
                  auipc        s5, 519803
                  or           t5, t0, s8
                  ori          s1, s7, 911
183:              bge          s2, a4, 186f
                  bge          s1, t2, 192f
                  blt          s5, gp, 189f
186:              sll          ra, s1, t1
                  srl          s2, s10, t4
                  add          gp, a2, a7
189:              or           ra, s5, s11
                  sub          t3, s6, s11
                  blt          t1, a5, 193f
192:              addi         t3, zero, 698
193:              sltiu        s4, a5, -1582
                  xori         t3, gp, 365
                  xor          s3, a2, t3
                  slti         s6, a7, 740
                  add          s4, a4, a2
                  sra          s3, a2, t2
                  addi         a6, zero, 5 #init loop 0 counter
                  slti         t2, t4, 88
                  srai         a2, t0, 29
                  addi         sp, zero, -4 #init loop 0 limit
                  or           t2, t2, t5
sub_5_4_0_t:      slti         gp, s6, -1911
                  srli         t6, a7, 11
                  addi         a6, a6, -9 #update loop 0 counter
                  sra          s4, s3, s9
                  nop
                  bne          a6, sp, sub_5_4_0_t #branch for loop 0
                  xori         t6, tp, 441
                  srai         t2, a0, 2
                  srai         a6, ra, 15
                  auipc        a7, 204125
                  and          s4, s8, t3
                  bgeu         ra, s7, 222f
                  lui          s2, 1005252
                  bgeu         t1, t6, 225f
                  srai         t5, s1, 19
                  nop
                  auipc        s11, 376965
                  lui          t2, 577299
                  sltu         a2, t1, s10
                  sll          s4, sp, s3
                  lui          s9, 237634
                  bltu         t2, s11, 226f
                  andi         s3, s10, -1346
                  xori         t4, s5, 1486
                  bgeu         a3, t4, 234f
                  slli         zero, t3, 4
                  sra          s0, s10, s5
                  srai         s0, s6, 16
                  srli         sp, s11, 2
                  sub          s11, sp, s1
222:              xor          s0, t1, zero
                  srai         tp, gp, 13
                  srai         s3, t0, 23
225:              add          sp, s0, tp
226:              sra          s5, s3, t5
                  beq          s6, t0, 242f
                  add          t4, s1, s6
                  slt          s2, t0, t2
                  srli         ra, s11, 9
                  bne          a2, a5, 242f
                  bne          s3, a0, 246f
                  xor          s9, s1, a7
234:              slt          gp, a0, s9
                  sll          s8, t3, s5
                  andi         ra, sp, 872
                  sub          t4, s11, a3
                  srli         a4, t2, 15
                  xori         ra, a3, -659
                  bltu         s11, t2, 251f
                  bgeu         a2, t2, 243f
242:              auipc        tp, 940780
243:              slti         s0, s5, 22
                  and          a2, s1, s3
                  beq          t6, s3, 252f
246:              lui          t3, 500880
                  and          a5, a6, tp
                  bne          a7, gp, 258f
                  sra          s6, t1, gp
                  auipc        a1, 537498
251:              sltiu        a1, a2, 24
252:              slti         a1, a3, 1546
                  bne          s4, t0, 254f
254:              ori          a2, t1, 171
                  slt          a5, t2, a1
                  or           a6, s10, sp
                  bltu         a3, a3, 266f
258:              andi         a2, zero, 951
                  sub          a7, a7, t6
                  nop
                  bgeu         a2, a3, 266f
                  bge          t2, zero, 266f
                  bgeu         tp, t5, 266f
                  sra          tp, t3, s10
                  slt          s8, t4, ra
266:              sll          s8, s3, s8
                  srl          t4, s1, s4
                  sll          s4, a6, a4
                  nop
                  sltu         a1, a1, s11
                  lw           ra, 4(a3)
                  xori         sp, t1, 643
                  add          s1, s8, a6
                  addi         a3, a3, 60
                  sltu         tp, s11, s7
                  sltiu        s8, t6, 814
                  lui          s3, 198876
379:              addi x10, x1, 0
379:              jalr x10, x10, 0
sub_2:            srl          t6, s10, a6
                  sltiu        tp, s9, 1172
                  sub          t6, t5, s8
                  bltu         s5, a7, sub_2_stack_p
sub_2_stack_p:    addi         a3, a3, -12
                  slt          a6, a1, a5
                  nop
                  or           zero, a5, s0
                  sltiu        s0, t1, -2026
                  sw           ra, 4(a3)
                  sltiu        s0, a1, 1709
                  srai         s9, s6, 27
                  blt          a5, t4, 18f
                  sll          s9, s7, ra
                  sub          a4, s2, zero
                  slt          s3, zero, s1
                  sll          t4, a1, a4
                  sra          s1, t5, t2
                  srai         zero, s7, 23
                  srli         a4, a6, 16
                  xori         s1, s2, 898
                  sra          t4, s3, s11
                  auipc        sp, 366371
                  sltiu        t6, t0, 1341
                  ori          s10, t1, 1622
                  bne          tp, a7, 29f
                  bne          t6, zero, 27f
                  lui          ra, 560843
                  bltu         a1, s11, 22f
                  addi         s9, s2, 742
18:               addi         ra, s11, -1031
                  xor          s11, s0, a0
                  or           ra, a2, s6
                  lui          s6, 969451
22:               sltu         s10, t6, a2
                  srai         zero, sp, 13
                  sub          sp, s1, s6
                  bne          a6, sp, 38f
                  or           t0, zero, t6
27:               srli         t6, s8, 3
                  sub          t3, t3, s6
29:               sll          t5, a1, s5
                  and          zero, s8, s11
                  lui          s0, 253394
                  bltu         t0, t6, 38f
                  bge          s7, a4, 38f
                  andi         s9, s7, -1811
                  srai         a1, s3, 15
                  addi         tp, s2, 1023
                  lui          gp, 980765
38:               sub          a0, a3, t2
                  slt          t0, a6, a4
                  lw           ra, 4(a3)
                  or           s3, s10, a1
                  addi         a3, a3, 12
                  addi         s3, sp, 379
56:               addi x8, x1, 1
56:               jalr x8, x8, 0
sub_4:            beq          t0, t3, sub_4_stack_p
                  auipc        t5, 651548
                  srl          s1, tp, a1
sub_4_stack_p:    addi         a3, a3, -56
                  sw           ra, 4(a3)
                  or           s1, t1, a6
                  addi         s11, zero, -4 #init loop 1 counter
                  sltu         t6, a0, a1
                  slti         sp, a1, -326
                  addi         ra, zero, -19 #init loop 1 limit
                  lui          a4, 936558
sub_4_1_1_t:      or           t6, s6, a5
                  addi         s11, s11, -5 #update loop 1 counter
                  sra          t6, a6, t6
                  addi         tp, zero, -2 #init loop 0 counter
                  addi         t2, zero, 9 #init loop 0 limit
sub_4_1_0_t:      sltu         a7, a1, t0
                  srai         t5, s3, 13
                  sll          s4, s3, s5
                  slti         t0, s1, -624
                  addi         tp, tp, 5 #update loop 0 counter
                  slti         zero, a4, 963
                  blt          tp, t2, sub_4_1_0_t #branch for loop 0
                  slti         t4, s10, 1571
                  xori         a6, gp, -1568
                  and          zero, s7, s9
                  srai         zero, ra, 5
                  slt          a1, ra, s2
                  beq          s11, ra, sub_4_1_1_t #branch for loop 1
                  sltu         s2, s4, a3
                  addi         s1, zero, -2 #init loop 1 counter
                  andi         t2, sp, 125
                  andi         sp, a6, -1801
                  ori          t5, a6, 864
                  sltiu        s4, t2, -1868
                  xor          s2, a6, a1
                  sll          ra, s3, s5
                  addi         a6, zero, -12 #init loop 1 limit
sub_4_4_1_t:      ori          t2, a7, -965
                  addi         s1, s1, -1 #update loop 1 counter
                  addi         s11, zero, 5 #init loop 0 counter
                  sltu         a2, t5, a6
                  addi         a7, zero, 5 #init loop 0 limit
sub_4_4_0_t:      slt          s0, tp, a3
                  addi         s11, s11, -4 #update loop 0 counter
                  slt          s6, t2, a7
                  or           zero, s11, s6
                  sra          ra, a4, t4
                  or           s9, ra, a7
                  bgeu         s11, a7, sub_4_4_0_t #branch for loop 0
                  ori          tp, zero, -83
                  bge          s1, a6, sub_4_4_1_t #branch for loop 1
                  and          s4, s3, s1
                  addi         gp, zero, 4 #init loop 0 counter
                  addi         t0, a3, 1340
                  sll          a2, t3, tp
                  sra          s3, a0, s0
                  lui          s0, 260583
                  addi         s5, zero, -13 #init loop 0 limit
                  or           ra, s6, a7
sub_4_3_0_t:      add          t4, t5, a0
                  addi         gp, gp, -2 #update loop 0 counter
                  bge          gp, s5, sub_4_3_0_t #branch for loop 0
                  slli         s1, a0, 12
                  sltu         s10, t6, s4
                  sra          s4, s7, a1
                  bne          gp, gp, 4f
                  slli         a0, t4, 29
4:                sra          s9, t1, s11
                  andi         t0, s6, 27
                  slli         a6, s11, 14
                  addi         s1, zero, 9 #init loop 0 counter
                  sll          a2, a7, s4
                  sub          s9, a2, s2
                  srli         a2, a6, 4
                  srl          s4, s0, t2
                  addi         a6, zero, 10 #init loop 0 limit
                  slli         t5, a2, 30
sub_4_0_0_t:      sub          a2, s2, s5
                  sltu         t4, tp, s2
                  addi         s1, s1, 1 #update loop 0 counter
                  xor          zero, a6, tp
                  bltu         s1, a6, sub_4_0_0_t #branch for loop 0
                  sltu         s4, t1, a3
                  bne          s7, a7, 25f
                  srai         a4, t1, 10
                  srai         t3, tp, 2
                  andi         sp, a0, -1405
                  auipc        gp, 370527
                  slli         t2, s10, 11
                  slti         tp, a7, -1269
                  sub          sp, t6, a7
                  addi         a6, zero, -1714
                  auipc        t3, 844310
                  auipc        zero, 297697
                  bne          s10, a4, 20f
                  nop
20:               slt          t4, t0, s3
                  bge          gp, a0, 26f
                  sub          t5, s0, a6
                  add          s8, s0, t3
                  and          t3, gp, s1
25:               slli         a7, gp, 20
26:               sltu         s1, a7, a7
                  slli         a5, a2, 27
                  bgeu         sp, a3, 42f
                  slt          s5, s11, s3
                  beq          t3, a4, 50f
                  bltu         sp, t5, 38f
                  bltu         a6, ra, 42f
                  slt          t4, s4, sp
                  bltu         t6, s11, sub_4_j8 #branch to jump instr
                  slti         s11, a6, -1611
                  xori         s10, t4, -1176
                  xor          a5, s8, sp
                  slli         s11, t6, 14
                  sll          s10, s0, t0
                  sub          t5, s6, a5
sub_4_j8:         jal          ra, sub_5 #jump sub_4 -> sub_5
                  sra          s4, t2, s0
                  sltiu        a2, s11, 814
                  bne          sp, s4, 49f
                  xor          t3, t3, s0
                  sltiu        s9, s1, -375
38:               srl          tp, a2, tp
                  beq          a5, s0, 51f
                  xori         zero, t1, 55
                  add          ra, s4, a6
42:               slli         t5, s3, 4
                  andi         s4, s1, -1428
                  addi         t5, s7, 947
                  bltu         a3, a6, 63f
                  xor          t3, t0, a3
                  xor          s11, s6, s8
                  lui          zero, 546008
49:               and          gp, a3, s5
50:               ori          s3, t4, -906
51:               or           a4, a1, zero
                  sra          t4, s2, s4
                  sltiu        a2, a4, 1032
                  srli         gp, s3, 1
                  lui          t5, 596587
                  lui          sp, 747766
                  nop
                  bgeu         a0, zero, 78f
                  bgeu         s2, a1, 79f
                  xori         s8, s10, 796
                  and          s6, s2, t4
                  nop
63:               beq          ra, a7, 73f
                  andi         s0, s7, -1526
                  and          a1, tp, ra
                  sll          ra, a0, a4
                  sltiu        s4, s9, 145
                  bltu         tp, t2, 73f
                  lui          s10, 920698
                  addi         a6, t1, -708
                  or           s11, a7, a0
                  slti         a6, s3, 1745
73:               slli         ra, sp, 9
                  or           a0, t0, t3
                  bltu         sp, gp, 90f
                  xor          s3, s7, s4
                  xori         s0, s7, -1796
78:               bgeu         a4, a0, 91f
79:               ori          s1, s8, -1640
                  bltu         s0, sp, 82f
                  ori          s8, a5, 1671
82:               bge          a7, a3, 87f
                  nop
                  srl          s11, t0, s8
                  sub          a7, s4, s0
                  bgeu         s1, s1, 97f
87:               sltu         a0, s5, t2
                  bne          a6, gp, 105f
                  xor          a4, a2, s3
90:               beq          s8, a6, 92f
91:               addi         zero, a0, 1451
92:               srl          t0, s1, t3
                  auipc        a1, 360826
                  lui          s2, 194208
                  slt          gp, a2, s8
                  srli         s10, t6, 15
97:               and          s4, s1, t1
                  andi         t3, t5, -1902
                  sltu         a5, t5, s8
                  auipc        tp, 17898
                  sltu         t4, t3, zero
                  add          a0, s5, a6
                  sltiu        a4, a3, 293
                  xor          s9, s10, t6
105:              lui          a4, 314447
                  sltu         ra, s6, s1
                  lui          t4, 967131
                  xori         s2, a6, -1670
                  addi         a2, a4, 801
                  blt          t5, a7, 127f
                  xor          a2, s0, t2
                  ori          t0, a6, 1412
                  beq          t6, s8, 124f
                  bgeu         s0, t1, 133f
                  sltu         gp, t0, s10
                  srl          s3, a1, t2
                  add          a1, t4, t2
                  and          s3, s1, a2
                  lui          t4, 762268
                  slt          t0, t1, t5
                  xori         s5, a0, -1058
                  andi         a7, s2, 1269
                  and          s10, a0, s9
124:              slti         a1, s4, 852
                  slli         a0, s4, 8
                  srai         gp, s2, 21
127:              ori          ra, s6, 741
                  beq          ra, t4, 134f
                  nop
                  bgeu         a0, s11, 134f
                  slt          a7, s10, a0
                  beq          a0, gp, 150f
133:              add          s0, a1, a3
134:              sll          t4, a2, tp
                  auipc        s0, 1032883
                  srl          ra, t3, gp
                  sll          t5, s7, a2
                  sltiu        s0, a3, -341
                  sltu         ra, a2, t4
                  sltiu        s11, s5, -600
                  srl          a0, t2, a4
                  lui          a7, 68466
                  srai         t4, s10, 7
                  or           t4, s1, s2
                  xori         sp, a2, 359
                  add          gp, t2, a0
                  sra          s0, s4, s4
                  srl          a0, s5, s6
                  slt          a7, s4, s1
150:              lui          sp, 728280
                  srl          ra, t0, ra
                  srli         s11, s6, 4
                  and          s8, s11, a2
                  sub          ra, s9, t6
                  xor          a2, a6, s10
                  nop
                  xori         s6, a5, 280
                  andi         s8, a4, 2007
                  srli         a0, a0, 19
                  xor          tp, tp, t5
                  slt          a7, tp, s4
                  lui          a6, 856764
                  bge          s8, a7, 169f
                  sub          a0, s11, s3
                  auipc        a1, 600954
                  slli         a2, s3, 9
                  sll          sp, a1, s9
                  lui          s3, 954361
169:              add          s3, zero, a6
                  lui          t4, 256027
                  beq          s9, ra, 178f
                  slt          a0, a3, s4
                  srl          a1, s11, t0
                  srli         a0, s4, 25
                  slti         a4, s2, 1103
                  sra          sp, s1, s3
                  andi         gp, t4, 1648
178:              sra          s10, gp, t0
                  bne          s9, t5, 184f
                  srli         a0, a4, 24
                  slti         a4, s9, -766
                  sltiu        s3, zero, -1030
                  bne          t5, s6, 193f
184:              sltiu        a2, a3, -417
                  lui          s5, 806001
                  addi         ra, t6, -993
                  addi         a5, zero, 1 #init loop 0 counter
                  sltiu        t6, a5, 133
                  slti         t6, s10, 358
                  ori          sp, tp, 1203
                  sltu         a6, s0, ra
                  ori          s6, sp, 1070
                  srli         s4, s8, 28
                  sltu         s10, a1, t0
                  auipc        t3, 208524
                  or           t5, s5, a1
                  sll          ra, s1, s9
                  sltiu        a1, tp, -143
                  addi         a4, zero, 20 #init loop 0 limit
                  nop
sub_4_2_0_t:      slt          s8, tp, s2
                  slt          a0, s7, s9
                  addi         a5, a5, 5 #update loop 0 counter
                  xor          tp, a4, tp
                  slti         s5, t2, 25
                  sltu         t6, a7, tp
                  srai         s11, s5, 11
                  bltu         a5, a4, sub_4_2_0_t #branch for loop 0
                  srl          s1, s3, a6
                  blt          s9, zero, 194f
                  slt          t3, a0, s8
                  bgeu         s3, s3, 191f
                  nop
191:              nop
                  srai         s2, s4, 14
193:              sltu         a6, s11, t5
194:              bltu         s6, a0, 200f
                  addi         s0, s4, 1900
                  sltu         gp, a2, t1
                  or           s2, ra, t4
                  beq          tp, a6, 200f
                  auipc        t6, 22825
200:              slt          s3, a2, s5
                  nop
                  sltiu        a1, a2, -280
                  nop
                  addi         s4, zero, -1798
                  ori          s3, s9, 1397
                  srli         s9, tp, 26
                  sll          s1, s8, s5
                  beq          s0, t6, 225f
                  xori         s10, s0, 1584
                  xor          tp, a0, a1
                  addi         gp, t4, 1141
                  bltu         a7, a0, 230f
                  srai         a1, s2, 13
                  bgeu         s9, t4, 232f
                  lui          t2, 524042
                  sltu         zero, ra, ra
                  and          t5, s8, s4
                  bge          s0, tp, 231f
                  bgeu         t6, a7, 231f
                  bge          t6, a5, 226f
                  sll          t2, t2, t6
                  sub          t0, s4, t1
                  srl          s2, t5, zero
                  beq          s2, a1, 229f
225:              xori         gp, s8, -957
226:              beq          s7, t0, 231f
                  sltiu        s11, a0, -20
                  addi         s9, s3, -422
229:              xori         s11, s10, -648
230:              add          s8, s4, s7
231:              sltiu        s1, s0, -1928
232:              srli         s3, t4, 22
                  srli         t5, a0, 7
                  sra          t5, ra, t3
                  srli         t2, a6, 18
                  slli         t0, a2, 0
                  xori         a0, s5, 1477
                  bne          gp, s11, 248f
                  andi         s8, t2, 1702
                  sub          ra, zero, zero
                  srli         t4, a2, 12
                  andi         sp, a7, 1084
                  bltu         s10, s2, 262f
                  beq          a5, zero, 246f
                  sll          t2, gp, s4
246:              xor          s3, t3, a6
                  slli         t0, a0, 2
248:              slt          s6, s10, s1
                  lui          s8, 284744
                  sltu         a0, s4, t2
                  bne          a3, sp, 266f
                  sltiu        a4, s6, -893
                  sltu         a2, t5, ra
                  or           a6, t4, t1
                  slli         a5, a3, 20
                  xor          t0, s4, a3
                  sra          sp, gp, s9
                  xor          sp, s3, t4
                  srl          a1, a4, s4
                  slti         s1, s8, 1644
                  and          s5, gp, s1
262:              slli         s0, s0, 5
                  bge          t0, sp, 283f
                  slti         s2, s1, 410
                  sll          t4, s3, a3
266:              and          s5, t0, a1
                  slli         s10, ra, 8
                  sll          tp, a4, s5
                  and          s0, gp, gp
                  auipc        t4, 1022659
                  sltiu        t4, t4, 1043
                  beq          t5, t3, 287f
                  srl          s11, a5, s0
                  bgeu         a5, a2, 287f
                  bltu         s9, a7, 286f
                  slti         sp, t1, -523
                  sltu         a0, a2, s7
                  addi         zero, s11, -860
                  add          a2, ra, a4
                  bne          sp, tp, 287f
                  bgeu         t2, t1, 283f
                  slli         t4, a3, 9
283:              bgeu         s0, t4, 287f
                  sltiu        t0, a7, 1710
                  add          s10, a6, s2
286:              xori         s5, t2, -2031
287:              slti         t2, s6, 1978
                  lw           ra, 4(a3)
                  slti         a1, s6, -2036
                  auipc        s6, 20109
                  srli         s11, a1, 19
                  addi         a3, a3, 56
                  sll          t3, t1, gp
403:              addi x3, x1, 0
403:              jalr x3, x3, 0
sub_1:            srli         t5, s5, 10
                  addi         a3, a3, -44
                  andi         s10, s0, 1006
                  sw           ra, 4(a3)
                  slli         sp, s5, 26
                  and          t6, t4, t1
                  la           t4, sub_4
                  lui          t2, 246640
                  addi         t4, t4, 107
                  and          s2, gp, t3
                  add          s6, s0, t3
                  sra          s0, s1, s9
                  ori          a6, a3, 616
                  or           t5, sp, s3
                  ori          t5, t4, -628
sub_1_j3:         jalr         ra, t4, -106 #jump sub_1 -> sub_4
                  la           s4, sub_3
                  sltiu        s2, tp, 1378
                  sra          a5, s8, ra
                  addi         s4, s4, -563
                  addi         s8, ra, 1291
                  beq          s0, a1, sub_1_j4 #branch to jump instr
                  xor          t0, t4, tp
                  ori          a5, a4, 1757
sub_1_j4:         jalr         ra, s4, 563 #jump sub_1 -> sub_3
                  addi         t4, s1, -287
                  lui          gp, 418324
                  la           a2, sub_2
                  addi         a2, a2, -418
                  auipc        t2, 153921
                  blt          s0, s9, sub_1_j5 #branch to jump instr
                  ori          s4, s8, -2023
                  nop
                  ori          t6, s0, 178
sub_1_j5:         jalr         ra, a2, 418 #jump sub_1 -> sub_2
                  andi         a6, a1, -993
                  la           tp, sub_3
                  addi         ra, s10, 1265
                  addi         tp, tp, 999
                  ori          t3, a2, -1385
                  sub          a6, t5, s11
                  or           t6, s9, s11
                  sub          a0, t6, tp
                  lui          s2, 816455
                  bne          t6, t6, sub_1_j6 #branch to jump instr
                  ori          s5, a1, -267
                  sltiu        a6, a2, 1367
                  lui          s6, 75264
sub_1_j6:         jalr         ra, tp, -998 #jump sub_1 -> sub_3
                  addi         t5, zero, 10 #init loop 0 counter
                  lui          a5, 276049
                  add          a2, a0, s10
                  slt          t4, s11, s11
                  sltiu        a5, tp, 1659
                  srai         t6, s1, 24
                  xori         zero, s3, 1712
                  addi         s8, zero, 7 #init loop 0 limit
                  nop
sub_1_0_0_t:      or           a0, a4, sp
                  srai         s3, t6, 4
                  slti         sp, a1, 1990
                  lui          t2, 186955
                  addi         t5, t5, -2 #update loop 0 counter
                  sub          s9, zero, s4
                  addi         s11, ra, -312
                  andi         a1, s0, 766
                  lui          t6, 193315
                  addi         s0, t0, -1973
                  lui          t6, 232893
                  xori         s0, a2, -1874
                  bge          t5, s8, sub_1_0_0_t #branch for loop 0
                  or           s9, a2, t6
                  nop
                  blt          sp, t3, 2f
2:                add          s5, s11, a7
                  sll          a5, s5, s9
                  nop
                  auipc        s8, 618425
                  sra          a1, a1, s10
                  sltiu        a2, tp, 38
                  ori          a7, s3, 356
                  xor          s8, s0, s11
                  srai         a5, s7, 2
                  srli         s2, t4, 13
                  srai         s2, a4, 21
                  srai         s2, t3, 17
                  bge          s1, s10, 30f
                  auipc        a6, 288334
                  beq          a7, a1, 28f
                  srl          a4, s0, s11
                  bltu         t3, ra, 27f
                  slt          s1, ra, t2
                  sll          s0, tp, ra
                  ori          t6, sp, 1478
                  xor          s10, a7, a4
                  bltu         s5, s2, 28f
                  slt          s10, s7, s0
                  sll          s10, s3, t1
                  srai         t3, tp, 20
27:               sll          a0, zero, a1
28:               xor          s3, s6, s5
                  sltiu        t2, zero, -1227
30:               addi         a4, s3, 280
                  srli         a6, t0, 26
                  lui          zero, 117202
                  sll          gp, s9, t0
                  slt          t5, a2, t1
                  sll          s2, tp, a3
                  lui          s2, 109072
                  blt          a2, a4, 50f
                  bgeu         a0, s11, 42f
                  nop
                  xor          t3, t1, s3
                  lui          s2, 863042
42:               andi         a6, s0, -261
                  ori          s10, a0, -1386
                  xori         t5, s9, -737
                  auipc        s3, 171859
                  or           t5, s5, s0
                  sra          a1, t4, s5
                  xor          s4, a7, t1
                  bge          a2, a0, 63f
50:               nop
                  nop
                  bltu         s7, t5, 63f
                  slt          zero, gp, zero
                  slt          s3, t0, t1
                  bltu         t4, s3, 68f
                  add          s8, zero, s6
                  xori         s1, sp, 1670
                  auipc        a1, 728900
                  sll          a6, a7, t1
                  auipc        t2, 821881
                  or           a1, s9, a1
                  blt          t0, a2, 65f
63:               sra          s0, t5, t3
                  bltu         gp, a1, 79f
65:               andi         s4, a5, -590
                  sltu         s11, sp, t4
                  ori          a7, zero, -1003
68:               sub          s1, t6, s7
                  slti         a7, a6, 1448
                  slli         t3, s0, 26
                  slti         a2, a5, 2011
                  xor          sp, zero, a6
                  slti         a7, s5, -226
                  sub          t2, s0, a6
                  auipc        s9, 419176
                  slt          ra, a6, s9
                  srli         a0, zero, 14
                  slli         s11, s2, 10
79:               add          t0, a2, a6
                  lui          a2, 1007717
                  add          a2, s3, s4
                  andi         gp, s5, 1961
                  lw           ra, 4(a3)
                  addi         s3, gp, 53
                  srl          s8, ra, a4
                  ori          s4, a6, -776
                  sll          a1, s5, a4
                  addi         a3, a3, 44
                  srai         s0, gp, 20
                  lui          zero, 134696
163:              addi x4, x1, 0
163:              jalr x4, x4, 0
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
.word 0x9dfd5e6a, 0x6fc6fdd4, 0x4047e7ec, 0x77116367, 0x23ebdb7c, 0x01c46fc0, 0x47e02a04, 0x3fae339c
.word 0xdcfe6f29, 0x50f15b1e, 0x13c6b659, 0xa77ea430, 0x18401eed, 0x8adf4b17, 0x975a0b94, 0xe0f1e8cc
.word 0xaf510a25, 0xb80d166e, 0xbd49d2f5, 0x28560c5d, 0xb8affdb9, 0x4bfb714d, 0x56a25dde, 0xcd0df32f
.word 0x0eb1b36f, 0x3dac6453, 0x1b038df6, 0xec5288aa, 0x1e8741ee, 0x37d1311f, 0x9b7402a3, 0xf9c47b65
.word 0x98ff5db2, 0x501213e2, 0x64e313b3, 0x8b82e96f, 0xc2ccdbff, 0x2c420198, 0xe4584d3b, 0x5edc49f4
.word 0xa8e8ff2b, 0xabfbfde6, 0x172f585f, 0x04dee139, 0x40d13baa, 0x6848861c, 0x8cbd5bdb, 0x2c6169c9
.word 0xd5269e60, 0x010d6985, 0x2d98e827, 0x9d0609c9, 0xde60ffeb, 0xfd7ad1be, 0x71c5296f, 0x7bf96b3d
.word 0xa984773f, 0x914acba7, 0x1934b509, 0x21dd82c9, 0xe7747932, 0xcdfd3d01, 0x93528c89, 0x46913e9c
.word 0x54729016, 0xc41adf53, 0x32c0949b, 0xec541b8b, 0x2ba975c7, 0x7339108e, 0xd33d3487, 0x33bdf995
.word 0x6b2ecf08, 0x3794d893, 0xc5f95ac1, 0xe6d8b9f1, 0x96075d09, 0xdb0bd79b, 0x43c3985f, 0xbf679fa1
.word 0xff072572, 0x53e6eef0, 0x6280fdff, 0xca0f34c1, 0x06e0db15, 0x293a66a3, 0x6e971969, 0x5dbdece7
.word 0x7b0270aa, 0x0e976191, 0x5f9cd2bf, 0x7a7f7fd2, 0xdbfe19ca, 0x23c401d0, 0xeaade219, 0x869d831b
.word 0xb9831a96, 0xa00c50f2, 0x497acd68, 0x802b4dab, 0x22d0c421, 0x41fabb97, 0x0532310e, 0x4288c85c
.word 0xe739bad8, 0x0ddc023f, 0xdbde90fc, 0x81f85672, 0xf42ab86d, 0x95e9c5e0, 0x626e8765, 0x89455dae
.word 0xde86a61a, 0x8b91214c, 0xf8fdb2fa, 0x9d40fb43, 0x7fe7c8e1, 0x9bd34911, 0xb39e2829, 0xd508347a
.word 0xacefe8fd, 0xc06be5bc, 0xdaab022d, 0x4c7c68f1, 0xbb4134c0, 0x51cb0a9d, 0x3bc58c18, 0xa6ad63ce
.word 0xa54fa0c4, 0xcfea12e8, 0x007818a9, 0xbcd5a677, 0xeb2202e2, 0xb39970aa, 0xe4c15fe9, 0x71aa9d46
.word 0xeb1af698, 0xde59d2d3, 0x3b0cd8f9, 0xfa0803de, 0xbaa8756c, 0xb3ae8466, 0x5c1addae, 0x3359a3d9
.word 0x035de825, 0x56b1e469, 0xae9f2f08, 0x74fa1aa4, 0x9c8b63e2, 0x1163fb3d, 0xeef9e3a8, 0x628b3be1
.word 0xe858056a, 0xf660477b, 0xeac787de, 0x534abde6, 0xca938d76, 0x28aae413, 0x3cb4ff56, 0x873a888d
.word 0xe84c7875, 0x3ab48341, 0x7fdd0580, 0x75fd8ec4, 0xd7e4855f, 0x580c280d, 0x64d39ec8, 0x43d320f9
.word 0x793ce0ca, 0x80f518d5, 0xf159b177, 0x53378d0b, 0x73b20286, 0xf5348a9e, 0x64249aac, 0x0f16d050
.word 0x568fbcc3, 0xb1043949, 0x5be7a025, 0x49f3c826, 0x351170d3, 0x0290844e, 0xde60a849, 0xda013d86
.word 0xefdc9ec4, 0xfbbd17d5, 0xf49cc2c2, 0xc76263fa, 0x7f6b79e6, 0x0fd8d663, 0x749a91fa, 0x221cd0d9
.word 0xc31fbaa0, 0x0de87fc6, 0xe5e34104, 0xf09ec600, 0x57db1964, 0x8b845172, 0x7ba94940, 0x58d89d02
.word 0x44f35607, 0x19f1c3a8, 0xb6fddd80, 0xe4642873, 0x885fcf9b, 0xcbf91c9b, 0x37677de3, 0xb23075c1
.word 0xca200b74, 0xe96d5f5f, 0x8d0866c8, 0x714164d6, 0x1087d10e, 0x2d4a4f86, 0x715915d3, 0x8e1d5dbb
.word 0xe54c2a01, 0x27af9ec8, 0xd610525b, 0xabe1b0c5, 0x400ef540, 0x9f364ae0, 0x52334c73, 0x3fbe6905
.word 0x31683b46, 0x1009bd67, 0xdd9cc8f0, 0x5f05b6eb, 0x2c34d137, 0x49bb5625, 0xd8b1c2b6, 0x04ab149a
.word 0x584890a1, 0xbd69eedc, 0xfd4902e7, 0x6047a1ac, 0x92b1adab, 0x3b1d8de2, 0x1295ac99, 0x23e00423
.word 0x78da616a, 0xd1eb1057, 0x00c7b7de, 0x7c87aa10, 0xb2c1cad6, 0x7d42b9bc, 0x52391ad2, 0x33b2b04f
.word 0xbc0f3421, 0xcbf5836b, 0x3fce8585, 0x7408d00c, 0x1844571d, 0x1087a378, 0x38f2e49d, 0x243b6319
.word 0x51770b06, 0xd9d11f1e, 0xc794ab94, 0x9c212755, 0xd3c3c360, 0x522c97f6, 0x9e6dfa4c, 0x702a8a7e
.word 0x9ba8af77, 0x02079738, 0xf60036eb, 0x9d6159a1, 0x8873c699, 0xe3e0c703, 0x942a548e, 0xe479313a
.word 0x37bdb240, 0xc04a70e9, 0xdb357fb4, 0xe1514daf, 0xe3259ac6, 0x01b8f041, 0xa8cfd012, 0x2c61c3b5
.word 0x3cd04bfb, 0xd1d6f0c0, 0xa0f84640, 0x6627d633, 0xcd5bee9f, 0xcd1199ad, 0xef346ca8, 0xadb22e0e
.word 0xa5f18226, 0x475895dd, 0x7196fa14, 0x1676c15c, 0xfb35a744, 0xf163c555, 0x529e11bc, 0xcc064a27
.word 0xabdd30ad, 0xeeb2f810, 0xd71bea51, 0x6fd43f0c, 0xd6f5e031, 0x3ae88732, 0xd7ff0d6b, 0x3051d41c
.word 0xf88f4010, 0x40f8c56b, 0xf6772a13, 0xe70c7da1, 0xffd06f25, 0xd31e4d71, 0x3b70cb33, 0x0807f6d4
.word 0x379eb967, 0x48d3a4ec, 0x0e944f9c, 0x0623047b, 0x645faec6, 0x377183f4, 0xd118d913, 0x00b76b33
.word 0xb4d66152, 0xdda9e486, 0xb5d6be62, 0xabd8b1fb, 0xd0452633, 0x82dfa806, 0x304a98b2, 0xb86089e6
.word 0x65d3d47c, 0x7f3e76c7, 0x8270b09a, 0x2403e782, 0x979d9e00, 0xfd177166, 0xda4bb4c2, 0x6fc8e8aa
.word 0x1f2a5720, 0x87b43464, 0x5bb2ed50, 0x7b2a9461, 0x3be78caa, 0x4f590d25, 0x814c3379, 0x0eb786ed
.word 0xef7d6d84, 0x597f7a4c, 0xd2a0449c, 0x20b6c825, 0x63f7c99f, 0x716f05d8, 0x8352767f, 0xe039567e
.word 0x85a3c691, 0x088ba6ac, 0x1020509e, 0x7fdd8916, 0xd7c90e39, 0x6f5be7ca, 0x52d096d3, 0xb6297d87
.word 0x9a5e90c7, 0xe9c58c0a, 0x6a5b0f4e, 0x326cc731, 0xc7b6edf7, 0xbe2b4e5e, 0x79ebbfd4, 0x9a6b1b1f
.word 0x3e7a78c7, 0x334248ee, 0x99fc253b, 0x6ad8c5de, 0x0120797e, 0x6138a4df, 0x87ec35d2, 0xd1488bec
.word 0xdc1f4cde, 0xe32c4fac, 0x3bce65e6, 0xae67cfc4, 0xee1d4475, 0x2c0599fd, 0x72b72883, 0xcb19e237
.word 0xf33f1599, 0x6c442c0c, 0x7d2995ab, 0xd0e92025, 0xc228dc5c, 0x44c7106e, 0x2cb4d1e4, 0x440045fc
.word 0x563c5d0b, 0x0e68b2cf, 0xb8644587, 0xb0151f00, 0x575b06c7, 0x80c9b94a, 0x26842a70, 0xb0222b4e
.word 0xbe63f317, 0xaa4959fb, 0x0094adab, 0xc0d59481, 0xa1453ec4, 0x4a7f5f6c, 0xd4a96950, 0xc548c1b3
.word 0x348df6da, 0x26771f91, 0xc769b3eb, 0x71bd51c9, 0x1cc485bc, 0x0fbe2765, 0x28a2891d, 0xb4690867
.word 0xb558d158, 0x3f70dcc9, 0xf9fa0093, 0xfb988342, 0xd40e2f74, 0x535b73a3, 0x7d7574cc, 0x1de047e8
.word 0x0b70aba3, 0x3de9967c, 0x469c2a69, 0x5001bc0c, 0x3a2f978c, 0x886c868a, 0xe20484f4, 0xbcdb6910
.word 0xb19736ab, 0xd8963c33, 0x7c117adf, 0xe50a6020, 0x96eac5dc, 0x6d663b4e, 0xb21bec31, 0xe48b4b84
.word 0xe7950755, 0xf129596d, 0xf2395a15, 0x39963b2a, 0xb4df10af, 0x21524c95, 0xdc73e7ef, 0x43884fe0
.word 0x7e644000, 0x3359d274, 0xdb78d712, 0x65343618, 0x8767d03e, 0xfcbb4f86, 0x9d08c4ad, 0x873ee254
.word 0x06025570, 0xf26ac918, 0xc61f17d6, 0x7b44bce8, 0xa30f547e, 0x5d920cab, 0x8699cea0, 0x7beb27c2
.word 0x0103ecfe, 0xf4ed76dc, 0x43cda8b7, 0x7cf42277, 0xc13fd531, 0xbfcd20b2, 0xafe71f35, 0x817fceaa
.word 0x3f599a82, 0xf0ddb0c2, 0x021d1918, 0xba6b59be, 0x0c6f0f17, 0x2c07233c, 0xca2cf302, 0x55603b6a
.word 0xcb14158f, 0x5f6ed788, 0xbfd73017, 0x7e69fa9a, 0xfcc9d93f, 0xd7aa5f21, 0xecdef948, 0x606a35cf
.word 0xdfcfe8be, 0x8dea9217, 0x78eb8776, 0xac0ba3c1, 0x8924534f, 0x7a3cca23, 0x3aa029f1, 0x78f3ddbf
.word 0x2b58c25d, 0x4c7063cf, 0x88a9ae9d, 0xe9c3d816
.section .region_1,"aw",@progbits;
region_1:
.word 0xc1d2e145, 0xeed16c48, 0xe675e8ae, 0x5de5b46a, 0xf052db90, 0x329c0534, 0xe2809b66, 0x4eb42d5d
.word 0x9c1917a2, 0x8493dcaa, 0x25ecc343, 0x524d533b, 0x46c6db24, 0x0c5e20eb, 0x0a38f009, 0x4ca00407
.word 0xcde4e7ae, 0x70d92022, 0x1d558b8f, 0xd05c4c7a, 0xbcb2ddca, 0x4aef0c37, 0x549cd0f3, 0x2e11e2ce
.word 0x2cd222fc, 0xc9cf15d3, 0x6ab7235d, 0xc705cbcb, 0x3a4ef3d3, 0x6d5531ae, 0x74010d46, 0x64905580
.word 0x7086dcd1, 0x09c9cdb5, 0xc4998065, 0x704b8542, 0xd9d929e1, 0x33a20775, 0x5fac4ac6, 0xb5d88253
.word 0x0ace05c3, 0xeee6fdd0, 0x49d784f9, 0x208dbf95, 0x545ca6b4, 0xa62c4a9e, 0xbb1e1ff5, 0x322da737
.word 0xabe8de7e, 0x45d951ba, 0x8bfdf0c0, 0xdf44fe19, 0xec2bad8f, 0x37de8d03, 0xa57c244b, 0x322048c9
.word 0xef3627f9, 0x5106f305, 0x8e740058, 0xc5be5f5c, 0xb72e5f3c, 0xe948ef58, 0xf1aea589, 0x536479ca
.word 0xedcad41d, 0x498e4670, 0x366f07d1, 0x1207635c, 0x83d3c6b8, 0xaeeb42f2, 0x954e27b1, 0x05000f39
.word 0x974e7eaa, 0x3c87d37d, 0x574c6c59, 0x93a5981d, 0x171c1def, 0x9294dd2a, 0x6a49763d, 0x6a43a9f0
.word 0x7fd5b9f5, 0x5d29069d, 0xd7520f23, 0x066d81d2, 0xc0c303c3, 0xae038e24, 0xfb4db227, 0x26f59712
.word 0xab79f54a, 0x6106f21f, 0x497ad380, 0x9567b008, 0x941f8741, 0x525c081e, 0x2d866a59, 0xf1604794
.word 0x618210a4, 0x6a410186, 0xe7e3e4a9, 0xf4460392, 0x6129abaa, 0x40e8c4c9, 0x02f0ecf6, 0x1c521808
.word 0x795b891a, 0x9d3ec156, 0xa2a12121, 0x55264a29, 0x3fef5900, 0xd89da7ee, 0x3ede715b, 0x615d85ee
.word 0x30982e09, 0xa54e9aff, 0x9a357326, 0x70905c30, 0x709c84fd, 0xe8de760c, 0xbdb6ae76, 0xdff45207
.word 0xd9b8ea3c, 0x6eb5a12a, 0x7c3ee0dc, 0x2d781fb7, 0xcbb3db21, 0x9c1fc2a5, 0x8299d86c, 0x4bfe9282
.word 0x92b076e5, 0xef04a148, 0x6265e884, 0x797803d8, 0xb972feb8, 0xfdd30380, 0xbd8d6f78, 0x456e5db3
.word 0x02a72283, 0x04aa69b4, 0x42abe946, 0xd96788e4, 0x3f456f31, 0xdb1138cb, 0xd0be0e04, 0x8e5af644
.word 0x67340d0c, 0x41ebba70, 0x1252fad2, 0x7fffba52, 0x961e90f3, 0x23114d4a, 0xcab5a4dc, 0x8e62807f
.word 0x29ad84e5, 0x1a94b275, 0x77a6043a, 0xa85cd391, 0x272d69db, 0x391b241f, 0x088110b0, 0xfdc7110c
.word 0x8cf89e37, 0xc3468d64, 0x8c7f8585, 0xb6566086, 0xe95aebec, 0x99aba42d, 0x32c35b62, 0x100a0391
.word 0xdc41bb42, 0x424ccc65, 0xfd1b27ad, 0xa0013139, 0x37b7b5c4, 0xafbdf969, 0x760fac66, 0xdf890c42
.word 0x66838245, 0x1dad16e7, 0x4d5c9340, 0x25f45f8c, 0xfd4edeff, 0x179b8fe9, 0xa3091a46, 0x2c7911dc
.word 0x6de2c1d6, 0x32fd6900, 0x1dee8f00, 0x1220bac8, 0xdfa04e42, 0x55592e5c, 0x499ad6f1, 0x2881a9f6
.word 0xb39a63dd, 0xb76a357f, 0xc62da8b1, 0x5b8f8fb5, 0x3a12b1eb, 0x00d41b2f, 0xe31d2774, 0x3460643f
.word 0xf38bc9ed, 0x721cea85, 0xd1e4a099, 0xffa0f0c0, 0x5cf5c36b, 0x806dfc6b, 0x4b405cbe, 0xd6aa354d
.word 0x23c9a49a, 0x94cf3b67, 0xff3a1976, 0xca58535a, 0x66041dc6, 0x2e44671e, 0x3c498e2f, 0xc16dc55a
.word 0x3d31ede1, 0xca92695e, 0xaf56b9dc, 0xc149eb7e, 0xf543173d, 0xfe5d7fb7, 0x6d6ae3cc, 0x3925cea9
.word 0x8b5dfeb8, 0x0759198a, 0xcd42fe54, 0x6563ebb9, 0x1cdc36a4, 0x94508d25, 0x0051639b, 0x1a62997f
.word 0x0619d54b, 0x458e1673, 0xf221d643, 0xa7a92adc, 0x914bef4d, 0x8f7c6653, 0x17c029d5, 0x58780c7f
.word 0x18fac571, 0xa4b37cb8, 0xb82ad5d8, 0x8a7f3a2c, 0x1f79c9e9, 0xf46f214c, 0x9ceec61b, 0x10be15ac
.word 0xdab88480, 0xa45ec4e2, 0x34e27028, 0x08e28bd7, 0x19ca04e1, 0x16b26e99, 0x51033363, 0x22c8b16e
.word 0xfafb7d87, 0x3f5234f3, 0x60cd12b8, 0xf3b1d42d, 0xf3b2cad9, 0x04be0b1c, 0x39dd86ff, 0x7922dd62
.word 0x88c4d53b, 0xb7cc2232, 0xe783781a, 0xf9f58b6b, 0x0140c1b0, 0x10388c12, 0xbca3f3d9, 0xce62916f
.word 0xf4cf5dda, 0xcbd98933, 0x7d07fb4a, 0xcc1dba9f, 0xbca72ddc, 0x6a487e3a, 0xbd622243, 0x39606d9a
.word 0x5f6c354a, 0x45e7c7a1, 0xa1364486, 0xc72f6093, 0xeb3ff4fb, 0x16883346, 0x56247931, 0x33621f29
.word 0x5be80b01, 0x79bfd5f9, 0xcdd36da2, 0x4a2c1127, 0xa9c3c4df, 0x552ae3c6, 0x8f4e35c3, 0xe3a570fc
.word 0xd6a202b3, 0x93d38341, 0xaee95d9c, 0x772ae548, 0x05fb781d, 0x967660d8, 0x780d7064, 0xafd8aa64
.word 0x5a5341f4, 0xfb95902d, 0x34ca1078, 0xeebc5af1, 0x65d55fa1, 0xeec603da, 0xb955d61c, 0x2322d702
.word 0x172e3527, 0x4cfd4e21, 0x7728ece6, 0x9b7574a6, 0xc089c7d7, 0x81323ff5, 0x8216bb8f, 0xcfec7214
.word 0xd1a76c50, 0xf9178f8d, 0x27e48d81, 0xcc2d034d, 0xf3910c44, 0x6edaef46, 0x14c48587, 0x8a954bd4
.word 0x5cf19643, 0x867bae81, 0x2de8c95a, 0xb6f720d5, 0x599f4c65, 0x4417a973, 0xf1f63f62, 0x0a64472d
.word 0x9cc84b64, 0xfbeb5f7e, 0x6695b7ad, 0x9b6a80ec, 0xc6776730, 0x021e1df3, 0xcabbea5c, 0xac260f09
.word 0x580ca57c, 0xfaaa2359, 0x29d7d65a, 0x90995c04, 0x77a2a822, 0x08f74dd7, 0xbaa5c823, 0x0932ed6b
.word 0xf3393a79, 0xdc470887, 0xab21a83d, 0x522c6187, 0x917e20f7, 0x03b58c3a, 0x74d6049f, 0xdae5d6b3
.word 0xcd78f576, 0xa3b6d5c4, 0xec46c4eb, 0xc02df9a2, 0xf5509cf1, 0x37891d1c, 0x950fba45, 0x9795e721
.word 0xe85e1649, 0x3905e12f, 0xfe12b7f8, 0x94a7c0e4, 0x84e29061, 0xfccadbec, 0x3dec4173, 0xd596f32f
.word 0xc4b09750, 0xac111c78, 0x9130ee73, 0x71d1fcb5, 0xbb491499, 0x9e9e5ee0, 0xd9eaa9ee, 0x2be548cb
.word 0xd4c2cf49, 0x6e6ed3cd, 0x0f775d8d, 0xe564703c, 0xa7b1a81c, 0xf3f9efa4, 0xc7f19bd6, 0x6d1d1b2b
.word 0xb9b3f7c6, 0x602d4821, 0x9415af35, 0xde59b5a8, 0x5cce9986, 0x4be665e9, 0xa2fc882a, 0x5b9024b5
.word 0x4743c44a, 0x316fb324, 0xeb6b58ad, 0x16cc1fa6, 0x3be21743, 0xb6d8b4d8, 0xe20411df, 0x1d54e6c8
.word 0x9f869832, 0x8c36071b, 0x7e32c935, 0xf3b5b493, 0x73dcd51e, 0x43ad4b3a, 0x130382a0, 0x154c671f
.word 0xa1924aaa, 0x46ba2472, 0x866c351a, 0x2f40dd0d, 0x8705be0f, 0x24a80f7c, 0x803fa943, 0xddbe5066
.word 0xb9a91cdd, 0xc6603a84, 0x70899508, 0x9e83f958, 0xc829d380, 0x2f7218dc, 0x987c9342, 0x1f6e0014
.word 0x5d59b491, 0x7187cc1f, 0x72bd27c2, 0xe90671c6, 0x6e586f3d, 0x62a1deed, 0x81298604, 0x78638be2
.word 0x2ab66486, 0xf15b51c0, 0xafde263c, 0xb1b8db1b, 0x43560dbd, 0x81f3193b, 0x04372e64, 0x32f210df
.word 0x18002677, 0x27adf197, 0x4b962511, 0x4d12194c, 0x44642cf2, 0x37d32005, 0x7515f186, 0xc080c1e6
.word 0x33013c64, 0x1811dd85, 0xdefb8334, 0xc4b134e3, 0x75bfb48a, 0x179e4ac4, 0xd9785739, 0xd339d8a6
.word 0xaa7491ca, 0xd48b65a4, 0xe29d1ab9, 0xa4572753, 0xb157d78c, 0x46649703, 0x619e4115, 0x63c7364f
.word 0x67942a12, 0xa098244a, 0xd48c553c, 0xe985e375, 0x351c39f1, 0x4b60c22f, 0x65ccd06f, 0x939ba506
.word 0x70dbd339, 0x0e957c42, 0xcca76189, 0x5d37a3c2, 0x03b36d74, 0x02214748, 0xdfd4048f, 0x21a21a65
.word 0xd2a42147, 0x2aa8603f, 0xcef44ad4, 0x1432dd3d, 0x47d68c8e, 0xf76206c4, 0x086a95d7, 0x88692729
.word 0x66dd02d8, 0xd9bfd2c4, 0xe7145c6a, 0xdcfdc59c
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
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x23, x13, zero
                  csrr x24, 0x300 # MSTATUS
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 31
                  bne x24, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x24, 0x341 # MEPC
                  csrr x24, 0x342 # MCAUSE
                  li x19, 0x3 # BREAKPOINT
                  beq x24, x19, ebreak_handler
                  li x19, 0x8 # ECALL_UMODE
                  beq x24, x19, ecall_handler
                  li x19, 0x9 # ECALL_SMODE
                  beq x24, x19, ecall_handler
                  li x19, 0xb # ECALL_MMODE
                  beq x24, x19, ecall_handler
                  li x19, 0x1
                  beq x24, x19, instr_fault_handler
                  li x19, 0x5
                  beq x24, x19, load_fault_handler
                  li x19, 0x7
                  beq x24, x19, store_fault_handler
                  li x19, 0xc
                  beq x24, x19, pt_fault_handler
                  li x19, 0xd
                  beq x24, x19, pt_fault_handler
                  li x19, 0xf
                  beq x24, x19, pt_fault_handler
                  li x19, 0x2 # ILLEGAL_INSTRUCTION
                  beq x24, x19, illegal_instr_handler
                  csrr x19, 0x343 # MTVAL
                  1: la x6, test_done
                  jalr x1, x6, 0

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
                  la x6, write_tohost
                  jalr x0, x6, 0

instr_fault_handler:
                  add x13, x23, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

load_fault_handler:
                  add x13, x23, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

store_fault_handler:
                  add x13, x23, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

ebreak_handler:   
                  csrr  x24, 0x341
                  addi  x24, x24, 4
                  csrw  0x341, x24
                  add x13, x23, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

illegal_instr_handler:
                  csrr  x24, 0x341
                  addi  x24, x24, 4
                  csrw  0x341, x24
                  add x13, x23, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x24, 0x300 # MSTATUS;
                  csrr  x24, 0x304 # MIE;
                  csrr  x24, 0x344 # MIP;
                  csrrc x24, 0x344, x24 # MIP;
                  add x13, x23, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
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
