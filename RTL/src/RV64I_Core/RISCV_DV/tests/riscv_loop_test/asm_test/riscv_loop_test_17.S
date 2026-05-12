.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x5, h0_start
jalr x0, x5, 0
h0_start:
                  li x14, 0x40000100
                  csrw 0x301, x14
kernel_sp:        
                  la x16, kernel_stack_end

trap_vec_init:    
                  la x14, mtvec_handler
                  ori x14, x14, 1
                  csrw 0x305, x14 # MTVEC

mepc_setup:       
                  la x14, init
                  csrw 0x341, x14

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x14, 0x1800
                  csrw 0x300, x14 # MSTATUS
                  mret
init:             
                  li x0, 0xfd261205
                  li x1, 0xfa6f5ae1
                  li x3, 0x0
                  li x4, 0x80000000
                  li x5, 0xd
                  li x6, 0x51de56dd
                  li x7, 0x4
                  li x8, 0x80000000
                  li x9, 0x80000000
                  li x10, 0xc
                  li x11, 0x0
                  li x12, 0xf24e3d68
                  li x13, 0x22e7280b
                  li x14, 0x80000000
                  li x15, 0xd
                  li x17, 0x80000000
                  li x18, 0x5ffbff9e
                  li x19, 0x38a1ccd4
                  li x20, 0xa
                  li x21, 0xa
                  li x22, 0x9e21866f
                  li x23, 0x1a81707a
                  li x24, 0x6
                  li x25, 0xd2181672
                  li x26, 0x8ff4eb68
                  li x27, 0xf368b391
                  li x28, 0x0
                  li x29, 0x0
                  li x30, 0x0
                  li x31, 0x3
                  la x2, user_stack_end
main:             la           t4, sub_1
                  srli         gp, a0, 3
                  andi         s3, t6, -1770
                  andi         zero, s9, 1374
                  or           a7, s6, a3
                  slli         s0, s8, 2
                  addi         t4, t4, 57
                  bge          a4, a0, main_j3 #branch to jump instr
                  nop
main_j3:          jalr         s8, t4, -57 #jump main -> sub_1
                  addi         t2, zero, 6 #init loop 1 counter
                  nop
                  and          a0, s11, sp
                  addi         s4, zero, 5 #init loop 1 limit
                  or           s1, s10, t1
main_0_1_t:       sltu         t4, t2, s2
                  addi         t2, t2, -4 #update loop 1 counter
                  andi         s3, a7, 602
                  addi         a5, zero, 0 #init loop 0 counter
                  addi         s0, zero, 8 #init loop 0 limit
                  xor          gp, a3, t0
                  srli         a2, s0, 3
                  addi         t4, s7, -1842
                  addi         zero, sp, -118
                  xori         a7, t6, -1805
main_0_0_t:       add          t4, s0, s9
                  addi         a5, a5, 4 #update loop 0 counter
                  blt          a5, s0, main_0_0_t #branch for loop 0
                  sub          s1, t0, a5
                  sltiu        a2, s8, 248
                  lui          s9, 323352
                  slt          a7, s6, s8
                  bgeu         t2, s4, main_0_1_t #branch for loop 1
                  srai         ra, a6, 9
                  addi         a1, zero, 0 #init loop 0 counter
                  add          s1, t2, s1
                  slli         s10, t6, 18
                  srai         s7, t3, 18
                  slti         s5, a3, -79
                  srli         t6, a4, 30
                  sltu         t6, a0, a6
                  sltiu        s6, tp, 798
                  nop
                  slt          t2, a1, s5
                  sra          s8, t1, t4
                  auipc        a2, 969154
                  and          t1, s1, a5
                  addi         s7, t4, -927
                  sltu         t1, t4, t5
                  addi         s2, zero, 20 #init loop 0 limit
                  sll          a0, a2, s11
main_4_0_t:       add          a3, t2, a6
                  srai         gp, sp, 25
                  srl          tp, sp, zero
                  addi         a1, a1, 5 #update loop 0 counter
                  slli         s6, gp, 23
                  srl          s0, a7, sp
                  slti         a2, s4, -1280
                  slt          gp, sp, sp
                  beq          a1, s2, main_4_0_t #branch for loop 0
                  slli         t4, t6, 0
                  addi         a1, zero, -4 #init loop 0 counter
                  sub          s1, s3, t5
                  srai         s5, a3, 25
                  addi         a2, s0, 653
                  slt          s0, s10, s4
                  sltu         s5, s9, t3
                  andi         t5, a7, 47
                  add          a0, t2, a3
                  addi         s6, zero, 16 #init loop 0 limit
                  addi         s2, s0, 1455
                  or           t3, a7, s6
                  or           a0, a5, t2
                  or           s8, a5, t0
                  sub          gp, s8, sp
                  lui          t5, 353098
main_1_0_t:       ori          a4, t4, -202
                  srl          s10, t5, s5
                  or           a5, a1, a2
                  addi         a1, a1, 10 #update loop 0 counter
                  and          t1, sp, s1
                  sra          t3, a5, s6
                  ori          t4, ra, -1390
                  slt          s10, zero, s5
                  blt          a1, s6, main_1_0_t #branch for loop 0
                  xor          a3, a2, t6
                  addi         a2, zero, 10 #init loop 1 counter
                  slt          t6, sp, a4
                  addi         s1, zero, 10 #init loop 1 limit
                  or           a3, t4, t3
                  sltu         t5, s1, t1
main_5_1_t:       xor          zero, s7, s9
                  and          s11, a1, t5
                  ori          s0, s1, 1417
                  sltiu        a7, s0, -957
                  and          s3, t3, t1
                  sub          s6, t2, a5
                  slt          t5, a3, s9
                  addi         a2, a2, -9 #update loop 1 counter
                  addi         a1, zero, 9 #init loop 0 counter
                  sll          s6, tp, s3
                  addi         ra, zero, 7 #init loop 0 limit
                  slti         s5, s7, -691
main_5_0_t:       auipc        zero, 621309
                  addi         a1, a1, -5 #update loop 0 counter
                  bgeu         a1, ra, main_5_0_t #branch for loop 0
                  srli         t3, t1, 30
                  ori          gp, s3, 176
                  sub          s5, t5, t5
                  bgeu         a2, s1, main_5_1_t #branch for loop 1
                  andi         s3, s4, -1131
                  addi         t2, zero, 10 #init loop 1 counter
                  addi         s6, zero, 19 #init loop 1 limit
                  and          a1, sp, s3
main_10_1_t:      and          s3, t2, t3
                  xori         a5, s7, -1545
                  addi         t2, t2, 1 #update loop 1 counter
                  add          a1, t0, a1
                  addi         s5, zero, 5 #init loop 0 counter
                  addi         s1, zero, 20 #init loop 0 limit
main_10_0_t:      xori         s10, gp, -242
                  addi         s5, s5, 5 #update loop 0 counter
                  xor          t6, a1, a6
                  beq          s5, s1, main_10_0_t #branch for loop 0
                  blt          t2, s6, main_10_1_t #branch for loop 1
                  andi         a0, s6, -116
                  addi         s4, zero, -1 #init loop 0 counter
                  slti         a1, a5, 710
                  addi         s7, zero, 10 #init loop 0 limit
                  xor          s9, tp, ra
                  srai         a4, s4, 1
                  sub          s2, s0, sp
main_6_0_t:       add          t5, s3, s2
                  or           s9, a7, s11
                  and          tp, t0, s8
                  xor          s1, s11, s0
                  add          s0, s10, t6
                  sra          s8, s9, tp
                  addi         s4, s4, 1 #update loop 0 counter
                  srli         t4, a2, 17
                  ori          s10, zero, 630
                  bltu         s4, s7, main_6_0_t #branch for loop 0
                  sll          t5, a5, a2
                  addi         a2, zero, 3 #init loop 1 counter
                  sltiu        s0, s8, -1011
                  or           t5, t3, t3
                  srli         s2, ra, 17
                  add          s7, t5, s3
                  addi         t1, zero, 3 #init loop 1 limit
                  slt          t2, t0, sp
                  or           s7, s6, s5
main_7_1_t:       sub          s11, s0, a0
                  or           zero, a7, t4
                  addi         a2, a2, -1 #update loop 1 counter
                  xori         s9, s9, -536
                  addi         a3, zero, 4 #init loop 0 counter
                  xor          s6, t0, s8
                  addi         t6, zero, -19 #init loop 0 limit
main_7_0_t:       andi         s3, s9, 486
                  auipc        s5, 172150
                  sltiu        s8, s4, 1024
                  addi         a3, a3, -1 #update loop 0 counter
                  bge          a3, t6, main_7_0_t #branch for loop 0
                  sub          ra, s2, s1
                  slli         s1, a5, 21
                  and          s3, t4, t0
                  sll          s9, s3, a1
                  sub          t3, s4, t1
                  sub          t2, a4, s1
                  bgeu         a2, t1, main_7_1_t #branch for loop 1
                  or           gp, a2, s3
                  addi         s8, zero, 5 #init loop 0 counter
                  sltu         a3, ra, t4
                  nop
                  andi         zero, a4, -202
                  addi         a7, zero, 15 #init loop 0 limit
main_8_0_t:       nop
                  auipc        s5, 905703
                  sll          s7, t3, a7
                  nop
                  lui          s11, 904293
                  xori         zero, s10, -1285
                  sra          tp, s4, a0
                  addi         s0, a2, -374
                  addi         s8, s8, 3 #update loop 0 counter
                  sll          a5, s2, t1
                  xor          s2, a3, t0
                  andi         s4, zero, -31
                  srai         s2, s7, 28
                  xor          a0, s6, zero
                  srli         a3, s8, 21
                  andi         a4, t4, 1439
                  srl          ra, a0, a4
                  sltiu        s3, zero, 1349
                  xori         a4, a6, 1187
                  andi         t4, s1, 700
                  bltu         s8, a7, main_8_0_t #branch for loop 0
                  add          t5, a6, a6
                  addi         a0, zero, 2 #init loop 1 counter
                  addi         s4, zero, 12 #init loop 1 limit
main_9_1_t:       xor          t1, ra, s4
                  addi         a0, a0, 10 #update loop 1 counter
                  addi         s5, zero, 6 #init loop 0 counter
                  addi         a3, zero, -6 #init loop 0 limit
main_9_0_t:       addi         s6, s10, 1547
                  addi         s5, s5, -9 #update loop 0 counter
                  bge          s5, a3, main_9_0_t #branch for loop 0
                  beq          a0, s4, main_9_1_t #branch for loop 1
                  sll          s8, s4, s8
                  xori         s8, a6, -255
                  and          t5, a4, a7
                  bgeu         a5, s6, 7f
                  xori         s4, zero, 1064
                  bgeu         tp, a6, 18f
                  sltu         zero, a4, s7
                  sll          t3, a2, s9
7:                sub          zero, t0, gp
                  slt          zero, t3, a3
                  sra          s0, t0, t0
                  sra          s6, t5, t2
                  slt          t4, s7, s1
                  blt          s9, s8, 20f
                  auipc        s7, 494896
                  xori         s5, s11, -640
                  bgeu         a1, a2, 23f
                  bne          t4, a1, 20f
                  bge          zero, zero, 28f
18:               slti         t5, a0, -660
                  sra          t3, s7, t2
20:               lui          ra, 345978
                  sll          s8, a4, s6
                  andi         s7, s1, -1780
23:               andi         ra, s10, -1584
                  lui          s6, 923341
                  sltiu        a2, s9, -1941
                  lui          t4, 117582
                  nop
28:               bgeu         t4, s4, 47f
                  nop
                  srl          s7, s4, a6
                  blt          s5, s3, 43f
                  srli         zero, ra, 21
                  sltiu        s7, t3, 363
                  srai         t5, a6, 7
                  addi         ra, t0, 959
                  blt          s0, s5, 51f
                  bge          s5, t4, 45f
                  add          s5, a5, s2
                  add          a0, a3, s8
                  xori         t3, a7, -1358
                  ori          s7, t5, 1212
                  bgeu         t3, t5, 46f
43:               sub          zero, t5, s6
                  sll          tp, a3, s0
45:               sra          s5, s6, a5
46:               ori          a7, s8, -1499
47:               srli         a3, a4, 0
                  and          s9, s5, zero
                  slli         s1, s8, 13
                  bltu         a6, s8, 57f
51:               sra          a7, s3, s5
                  sltiu        s4, sp, 350
                  sltu         t2, s5, s0
                  or           s5, s7, t4
                  addi         s11, t4, -652
                  lui          tp, 458618
57:               or           s1, s7, s9
                  blt          s9, s1, 72f
                  beq          t1, a6, 72f
                  slti         s10, t4, 2014
                  or           t3, s8, a6
                  blt          s7, t1, 72f
                  sub          gp, a7, ra
                  ori          gp, s9, 922
                  addi         zero, a2, -1562
                  nop
                  sll          t5, t2, s7
                  srl          s5, s5, a4
                  bge          s4, a1, 85f
                  bge          s7, s1, 79f
                  sltiu        ra, s3, 1822
72:               or           t2, tp, s8
                  srai         a1, a6, 29
                  bgeu         a4, a0, 81f
                  blt          s2, s8, 94f
                  bltu         t0, s2, 77f
77:               sra          t6, a4, s1
                  addi         a5, t2, -123
79:               slti         s9, a5, -677
                  add          ra, s5, s1
81:               sra          s6, ra, t1
                  srl          s11, tp, s9
                  nop
                  beq          t0, s10, 88f
85:               lui          a0, 519576
                  bltu         t5, s9, 104f
                  slt          ra, s9, s9
88:               bgeu         s10, a2, 95f
                  auipc        a2, 650335
                  bgeu         a1, s11, 106f
                  sltu         s4, a2, s4
                  srl          s6, a6, ra
                  sub          s3, s8, s1
94:               bge          a4, a0, 111f
95:               lui          tp, 784711
                  xor          t1, t5, s6
                  xori         tp, s2, -824
                  and          ra, a4, s5
                  and          gp, a2, ra
                  and          t4, s5, s9
                  xor          s10, a1, a4
                  or           s5, s11, a2
                  auipc        a3, 528102
104:              xori         a3, s4, -1040
                  sra          s5, a3, s5
106:              srai         s11, s9, 13
                  blt          a2, a1, 126f
                  sltu         a3, ra, s2
                  beq          a4, s3, 122f
                  add          t1, t2, s6
111:              srli         s4, zero, 25
                  srl          s7, zero, zero
                  srai         ra, t3, 12
                  lui          a0, 763482
                  blt          a5, s1, 124f
                  slli         s4, s2, 31
                  sltu         s4, t3, s7
                  lui          t3, 200419
                  auipc        s4, 950553
                  sra          s10, a1, t0
                  lui          s8, 778731
122:              bne          a3, s8, 128f
                  or           t1, a5, a1
124:              sll          zero, s9, s10
                  sltiu        s5, s3, 730
126:              sltu         s1, t1, s11
                  add          s5, t5, t4
128:              sra          a3, t6, ra
                  nop
                  srl          t1, s5, a3
                  sltu         a5, a5, s0
                  bge          t5, zero, 142f
                  bge          a5, s8, 137f
                  bgeu         a0, s3, 146f
                  xori         s5, a3, -834
                  addi         tp, s1, -810
137:              addi         a7, t5, -1783
                  ori          t1, s9, 1444
                  auipc        s9, 412768
                  slti         tp, s8, -1024
                  lui          s3, 243796
142:              blt          s1, t0, 156f
                  and          s3, a0, t4
                  slli         s5, a4, 3
                  sub          s9, ra, s10
146:              bge          a5, a2, 150f
                  bge          a6, t1, 165f
                  blt          a7, gp, 164f
                  bgeu         sp, s9, 164f
150:              sub          a3, s8, zero
                  slli         a5, s9, 24
                  bne          s1, s7, 159f
                  slt          s7, s7, s1
                  nop
                  xori         a7, t6, -379
156:              srai         s2, a0, 9
                  srai         a2, a0, 28
                  bltu         a2, s3, 172f
159:              sltiu        tp, a7, 1534
                  lui          a7, 305552
                  bne          a1, a4, 174f
                  bne          zero, t4, 170f
                  auipc        s0, 661139
                  sltu         a1, a1, s10
                  slti         gp, t4, 1351
                  sra          t1, t1, tp
                  lui          t4, 264820
                  sra          s11, s7, a1
                  srli         a4, a2, 30
                  la           a0, sub_2
                  or           a5, sp, t1
                  srl          t4, a4, s10
                  addi         a0, a0, 188
                  slli         s8, tp, 1
main_j2:          jalr         s8, a0, -188 #jump main -> sub_2
                  lui          zero, 184038
164:              bltu         s1, s3, 183f
165:              sub          a7, s7, t0
                  srai         a2, a0, 28
                  bne          a4, s3, 175f
                  sub          s6, t2, t5
                  nop
170:              lui          s5, 88605
                  nop
172:              sll          a7, t6, a2
                  nop
                  addi         s4, zero, 1 #init loop 0 counter
                  xor          t1, s11, s3
                  addi         s11, zero, 18 #init loop 0 limit
                  sub          s8, t4, a7
main_3_0_t:       slti         a4, t1, -1824
                  slti         a2, ra, -1188
                  and          gp, s7, s10
                  srai         a7, a6, 10
                  addi         s4, s4, 4 #update loop 0 counter
                  lui          t5, 932268
                  srli         s10, t0, 5
                  sra          t3, t6, tp
                  nop
                  sra          s3, zero, s3
                  slli         t4, s0, 5
                  sltiu        t5, t4, 1422
                  or           a5, gp, s9
                  slt          s9, s10, s3
                  sub          a7, t4, s6
                  ori          gp, sp, 854
                  nop
                  srli         a0, tp, 7
                  slti         s10, s4, 1814
                  addi         a2, s5, -1246
                  srli         s0, s10, 7
                  blt          s4, s11, main_3_0_t #branch for loop 0
                  and          s6, s5, t2
174:              blt          t5, a6, 185f
175:              srai         s0, s1, 20
                  slt          s11, s4, s4
                  slli         s0, s7, 14
                  srai         a7, a3, 22
                  srai         t5, a4, 27
                  ori          a7, zero, 1413
                  xori         a4, s0, -1972
                  bne          a2, sp, 195f
183:              bne          t5, t0, 192f
                  bge          t4, t3, 194f
185:              sub          s7, s3, t5
                  ori          s7, t6, 219
                  sll          a2, a0, s6
                  srl          a2, s9, a3
                  srai         t4, s5, 27
                  sra          s4, a3, t6
                  srl          s0, t1, a3
192:              addi         s1, s4, -1797
                  slti         s3, s5, 286
194:              andi         a3, a2, 842
195:              sltu         a5, s5, t5
                  andi         ra, s2, -1736
                  slt          s11, s10, a5
                  bgeu         t4, sp, 217f
                  slt          s8, s10, s9
                  and          a2, t5, gp
                  sra          a0, t0, a6
                  sltiu        t6, gp, 608
                  auipc        a7, 85283
                  addi         s8, tp, -1037
                  slti         t2, a3, -1361
                  lui          a1, 549096
                  slt          a3, tp, s5
                  and          s6, zero, s7
                  xor          s3, s3, a4
                  sra          a3, t1, s4
                  auipc        t4, 566684
                  srai         s3, a2, 13
                  xori         a2, s9, 1526
                  addi         zero, t6, 1180
                  srl          t5, a3, t4
                  sltu         s2, s0, a4
217:              add          s9, s7, t1
                  sub          t4, t0, s9
                  srai         s2, s4, 22
                  ori          s3, a6, -1354
                  beq          t6, s5, 231f
                  addi         s7, sp, -684
                  ori          a1, s1, -466
                  sltiu        s11, s0, 1699
                  srai         s1, t6, 14
                  slli         s4, s6, 0
                  and          s5, a4, sp
                  and          t1, a3, gp
                  bgeu         a1, a5, 230f
230:              nop
231:              or           a3, a4, t2
                  andi         s8, a7, 601
                  bltu         s7, s4, 242f
                  sltu         a4, a3, s10
                  or           s10, s5, a5
                  beq          t4, tp, 242f
                  sll          s8, s9, s10
                  add          a2, a5, a7
                  sltu         a4, s6, s11
                  nop
                  bne          t5, sp, 245f
242:              sltu         s0, tp, s2
                  slt          a4, a7, ra
                  sra          t3, s9, a3
245:              addi         s6, s8, 1322
                  srli         tp, tp, 29
                  xori         a1, t2, -512
                  sll          a5, gp, t3
                  add          s8, t1, a5
                  bgeu         s5, s2, 266f
                  sltiu        s2, t6, 407
                  slli         s2, s0, 6
                  slt          s1, a0, s4
                  sll          s5, a5, s11
                  sub          a7, s2, a4
                  srl          t4, t5, s3
                  sll          s2, sp, t5
                  and          t6, t3, a6
                  xor          s6, a2, t3
                  sra          s4, zero, s5
                  slt          s7, t2, s5
                  or           t3, tp, s10
                  or           t1, s11, ra
                  and          a2, s3, a5
                  bgeu         a3, t1, 282f
266:              bgeu         sp, s4, 285f
                  and          a4, s7, t3
                  slti         a2, s1, -458
                  bltu         sp, s10, 276f
                  sltu         a5, a5, s8
                  slti         s3, s4, -1574
                  bgeu         t1, s2, 279f
                  slli         tp, s9, 17
                  xor          tp, s9, s6
                  sltu         t3, a7, s10
276:              sltu         tp, s11, s3
                  slti         tp, s0, 826
                  or           t6, sp, a7
279:              slti         t5, t4, 432
                  sltu         s6, s7, s0
                  bge          gp, a0, 289f
282:              beq          tp, ra, 287f
                  sra          s5, zero, tp
                  srli         t6, a6, 19
285:              blt          s2, s10, 292f
                  bge          t5, s5, 292f
287:              lui          s3, 354527
                  srl          t5, t1, a5
289:              slli         a4, s6, 4
                  addi         a0, a0, -602
                  srai         t2, zero, 18
292:              andi         s6, t4, 215
                  slt          s8, t2, s0
                  sltu         gp, a5, s6
                  srai         s9, t2, 23
                  andi         s5, t4, -1901
                  and          ra, a3, s6
                  slli         a5, s11, 4
                  beq          t2, t2, 317f
                  slli         t4, a7, 1
                  xor          s10, s6, a0
                  and          t4, s3, t5
                  bge          s9, s2, 310f
                  srai         t4, s11, 28
                  lui          ra, 108169
                  sltiu        t1, s11, 1640
                  auipc        s7, 631042
                  lui          s10, 516583
                  nop
310:              slt          a7, a2, tp
                  or           a0, t5, tp
                  xor          t5, gp, s9
                  sll          s8, s10, zero
                  add          gp, s8, t3
                  nop
                  slt          a2, a3, s3
317:              and          s5, s1, s11
                  bge          a5, s5, 331f
                  beq          t4, a2, 335f
                  slt          s8, t3, s5
                  or           a7, tp, s6
                  sltu         a1, sp, s10
                  slli         a2, s5, 20
                  andi         a7, t1, -63
                  or           t5, s2, t3
                  sra          a2, t0, s11
                  sltu         a0, a7, s11
                  sll          s3, a0, s11
                  auipc        s11, 568204
                  sub          s3, zero, s1
331:              nop
                  sltiu        s8, s3, -1069
                  sltu         s10, a0, s6
                  and          s3, a0, t1
335:              sltiu        s0, s7, -404
                  sltiu        t3, t2, -348
                  xor          a2, t5, ra
                  nop
                  addi         s7, zero, -9 #init loop 1 counter
                  srai         a3, a2, 26
                  sra          t3, s4, s2
                  addi         s9, zero, -19 #init loop 1 limit
                  nop
main_2_1_t:       andi         a4, a4, -193
                  srli         s5, s4, 17
                  addi         s7, s7, -10 #update loop 1 counter
                  addi         ra, zero, 3 #init loop 0 counter
                  srl          tp, a3, s3
                  add          a7, zero, a3
                  or           s5, s6, a0
                  addi         s10, zero, 15 #init loop 0 limit
                  xor          t4, t5, tp
                  srl          a5, a1, t3
main_2_0_t:       or           t4, t3, t4
                  srai         gp, a0, 21
                  addi         ra, ra, 4 #update loop 0 counter
                  add          a2, a5, tp
                  beq          ra, s10, main_2_0_t #branch for loop 0
                  slti         a2, a5, -1750
                  slti         zero, gp, 1867
                  ori          t6, s10, -997
                  beq          s7, s9, main_2_1_t #branch for loop 1
                  sltiu        zero, s1, 1151
                  beq          s9, s3, 340f
340:              slli         a0, a5, 2
                  andi         s2, a1, -562
                  srli         s11, t3, 30
                  srl          s11, a1, a1
                  nop
                  sltiu        t6, tp, 1816
                  srai         s6, a6, 5
                  sra          gp, s11, a4
                  bge          a2, sp, 367f
                  or           gp, s9, s3
                  or           a7, a6, t6
                  sltiu        s3, a4, -467
                  srl          t1, s1, a2
                  sltiu        zero, a7, -803
                  lui          a5, 24334
                  addi         s2, a2, -961
                  add          s8, s8, s9
                  ori          a7, s6, -244
                  slti         s7, s3, 962
                  srl          s11, t5, s7
                  lui          t1, 716540
                  or           t1, gp, gp
                  bltu         sp, s8, 378f
                  add          s2, zero, s4
                  beq          zero, sp, 369f
                  srai         s0, zero, 9
                  blt          a6, t6, 376f
367:              auipc        s11, 652142
                  lui          s11, 966233
369:              ori          s5, a2, 22
                  srli         s6, gp, 11
                  beq          gp, a3, 380f
                  xor          s9, t6, tp
                  or           a4, s4, s4
                  srai         a2, a5, 6
                  slli         t3, s5, 10
376:              srli         s8, s2, 29
                  or           s3, gp, s10
378:              or           t3, a0, s4
                  sra          s10, zero, s2
380:              bne          t5, zero, 384f
                  slli         gp, t4, 6
                  lui          t3, 996674
                  beq          s6, s11, 391f
384:              sub          s9, t6, s2
                  beq          gp, s6, 399f
                  xor          s5, a4, s3
                  slt          zero, t5, a4
                  lui          s6, 491838
                  andi         gp, t4, -2036
                  xori         a4, s0, -653
391:              and          s3, t0, t0
                  add          a5, t0, s6
                  sub          tp, s11, t4
                  sll          zero, a3, gp
                  xor          t1, s5, s11
                  xor          a5, a6, a3
                  or           s0, a5, s9
                  srl          a5, a0, s11
399:              xor          a7, a2, s9
                  sltiu        s3, s5, -1942
                  beq          s2, s1, 409f
                  sub          tp, a7, a7
                  andi         tp, s7, 760
                  srli         a0, a6, 29
                  sra          a2, t4, a1
                  beq          t2, a3, 410f
                  sub          s11, a0, t3
                  sra          s11, a4, t6
409:              sub          s1, s6, s11
410:              sub          a1, ra, s11
                  srai         s5, t5, 17
                  sltu         s8, a6, t0
                  slt          s5, sp, s0
                  xor          t5, s5, t5
                  sra          gp, a6, t5
                  and          t3, s8, gp
                  srli         zero, s5, 30
                  sra          a3, ra, s9
                  bltu         zero, s8, 427f
                  add          s2, s9, s10
                  slt          t6, a0, gp
                  slli         t2, zero, 26
                  bgeu         s7, s4, 434f
                  bge          a3, s9, 443f
                  srai         a5, t5, 30
                  beq          s3, s5, 440f
427:              sltu         tp, tp, t6
                  sltiu        s4, s9, 530
                  bge          s9, s6, 438f
                  ori          s8, a7, -1825
                  sra          t1, a7, ra
                  sltu         s6, a2, s8
                  or           s10, a6, s5
434:              bltu         s5, gp, 444f
                  blt          a1, t1, 448f
                  slt          s5, s2, s11
                  lui          zero, 748820
438:              or           s9, s0, gp
                  sltu         a2, s4, s4
440:              xori         s9, t2, -543
                  ori          s8, s5, 45
                  sra          s6, a1, s8
443:              srai         a1, a0, 13
444:              sltu         s0, s11, s8
                  nop
                  addi         t3, gp, -1207
                  slti         t3, a4, -498
448:              sltiu        t3, a7, 79
                  auipc        s9, 917370
                  slti         a3, s5, -1726
                  lui          t4, 112959
                  blt          s1, s10, 467f
                  andi         t4, s2, 605
                  srl          s11, ra, t4
                  beq          s3, a2, 467f
                  xor          t1, s3, s4
                  and          a7, t6, t3
                  beq          a3, t1, 465f
                  xor          s9, t0, a6
                  srli         s7, a2, 10
                  auipc        s4, 744680
                  sltu         s6, s9, s9
                  xor          a2, s9, t5
                  nop
465:              bltu         s9, s7, 484f
                  srl          t3, tp, a2
467:              slt          s8, a6, t6
                  sll          a5, zero, s5
                  sll          a7, t0, t4
                  ori          s0, t1, 289
                  and          s7, s2, s1
                  srli         s2, s8, 17
                  sll          ra, t6, a5
                  sra          s2, t0, s10
                  srl          s3, s4, t1
                  srli         t1, t4, 31
                  la           t6, sub_2
                  addi         t6, t6, 805
                  bge          tp, t2, main_j1 #branch to jump instr
                  sra          s3, tp, t3
                  sub          s6, tp, t3
main_j1:          jalr         s8, t6, -805 #jump main -> sub_2
                  add          a3, s10, t0
                  sra          s4, s1, s6
                  or           s4, t1, a3
                  slt          a7, a3, a0
                  addi         s5, zero, 233
                  sltu         tp, t6, t2
                  sltu         ra, s3, gp
                  nop
                  and          s3, sp, gp
                  sltiu        s11, s8, 1771
                  add          s6, a4, t4
                  sltu         s3, ra, s9
                  srai         a4, s3, 29
                  or           zero, s6, t1
484:              sub          t3, zero, a4
                  xor          s4, zero, s8
                  xori         a3, a3, 2025
                  bge          t4, a5, 491f
                  andi         t1, s11, -1448
                  addi         s10, a5, -357
                  xor          a1, a4, a5
491:              sra          s11, a5, t6
                  slti         t4, t2, -986
                  bgeu         a6, a2, 510f
                  or           s9, s7, a1
                  sltu         a4, s5, tp
                  or           a4, s11, a7
                  beq          t0, a4, 501f
                  sll          t1, a3, a1
                  srli         a0, t6, 27
                  and          t6, t0, t3
501:              beq          t1, s7, 502f
502:              andi         t2, s0, -1994
                  sltu         a0, a2, s0
                  sub          t4, t4, s1
                  andi         a3, s7, -374
                  srai         s0, a2, 1
                  bge          s10, a4, 516f
                  bltu         t5, a5, 515f
                  sltiu        a4, a3, 162
510:              sll          t5, s3, s3
                  sltiu        a5, s2, 1617
                  sub          s5, a2, s9
                  ori          s10, s11, 495
                  beq          t6, sp, 526f
515:              andi         s10, tp, 1359
516:              sub          s6, tp, s9
                  nop
                  sra          gp, a4, s3
                  sll          tp, s9, gp
                  sll          t2, a0, t6
                  add          s3, a2, a1
                  sll          s6, s2, s4
                  xor          a3, a3, s11
                  sltu         t1, s8, ra
                  auipc        ra, 35656
526:              sub          s6, t2, a2
                  addi         s6, t0, -1753
                  slti         s11, s2, 651
                  bgeu         a6, a2, 534f
                  sra          s10, s10, s10
                  sltiu        s8, s0, -1045
                  srl          t6, s4, s8
                  andi         t5, ra, -305
534:              bne          s6, s4, 540f
                  sub          t6, tp, tp
                  sltu         t4, s11, a6
                  bne          s3, t5, 556f
                  sltu         ra, t2, gp
                  srl          t2, s5, s9
540:              slti         a4, t0, 220
                  nop
                  bne          s1, t2, 559f
                  lui          s1, 872124
                  sub          s4, s8, s3
                  bltu         a3, a3, 559f
                  sltu         tp, t4, t5
                  lui          a4, 708060
                  andi         t2, a3, -1813
                  sra          s4, zero, a4
                  lui          s6, 92152
                  bne          t5, a3, 559f
                  slli         a1, a3, 3
                  sltiu        s9, s2, -1055
                  addi         t3, a2, 47
                  slti         s6, t1, -812
556:              slt          a5, s3, zero
                  auipc        s11, 1029025
                  slli         gp, t4, 10
559:              slli         s0, t0, 30
                  la x5, test_done
                  jalr x0, x5, 0
test_done:        
                  li gp, 1
                  ecall
sub_3:            bgeu         t0, s11, sub_3_stack_p
                  addi         s2, s1, -317
                  slli         ra, s6, 5
                  sra          a3, t2, s10
sub_3_stack_p:    addi         sp, sp, -20
                  sw           s8, 4(sp)
                  or           s10, a5, s3
                  slli         t3, t1, 5
                  auipc        t3, 1016447
                  slt          ra, gp, s9
                  slt          s3, s7, s9
                  sltu         a5, s11, s2
                  srli         t4, ra, 1
                  lui          a4, 245285
                  srl          a5, s1, s8
                  slti         a1, t3, -1027
                  beq          s6, gp, sub_3_j5 #branch to jump instr
                  slt          ra, tp, a3
sub_3_j5:         jal          s8, sub_5 #jump sub_3 -> sub_5
                  sra          s4, a7, a3
                  sll          s3, t3, s3
                  ori          s3, a7, -1832
                  and          a3, t4, t0
                  beq          a7, t3, sub_3_j6 #branch to jump instr
                  nop
sub_3_j6:         jal          s8, sub_4 #jump sub_3 -> sub_4
                  sra          s9, a5, t4
                  addi         s2, s10, -327
                  sll          s9, s9, s0
                  add          gp, zero, t1
                  slli         s9, a5, 12
                  sub          s0, s2, a7
                  nop
                  add          s5, s9, s1
                  bgeu         a4, zero, sub_3_j7 #branch to jump instr
                  sub          s5, t5, s8
                  srai         t1, gp, 18
sub_3_j7:         jal          s8, sub_4 #jump sub_3 -> sub_4
                  lui          a2, 165657
                  sll          a7, gp, t3
                  slti         a1, a5, -1672
                  andi         a0, a3, -71
                  srli         s1, s2, 20
                  nop
                  sll          s3, s9, a7
                  slti         a2, t5, -1649
                  auipc        t4, 254124
                  sub          s6, s8, s3
                  ori          a3, a7, 102
                  sll          s9, t5, t2
                  nop
                  srl          a1, a2, a5
                  addi         zero, s9, -1903
                  sltiu        s9, t0, -918
                  xor          a5, a2, s4
                  srli         s2, s5, 21
                  sub          s8, a1, ra
                  bgeu         a7, s11, 20f
20:               slti         a7, a4, 1528
                  andi         s8, gp, 23
                  lui          t1, 800598
                  sub          t4, sp, s5
                  xori         a2, t4, 1706
                  slt          a7, a7, s6
                  auipc        s1, 109481
                  srli         s6, t0, 15
                  lui          t2, 733124
                  nop
                  sltiu        t3, t0, 1580
                  lw           s8, 4(sp)
                  ori          a2, s9, 2045
                  xori         tp, s11, -110
                  slt          ra, t0, zero
                  auipc        s4, 534523
                  nop
                  srl          a5, a4, t5
                  ori          a7, t1, 1609
                  addi         sp, sp, 20
                  sltu         zero, a7, a0
                  auipc        t2, 653727
80:               addi x24, x24, 0
80:               jalr x24, x24, 0
sub_2:            beq          t1, a7, sub_2_stack_p
                  slti         s6, s11, -1714
sub_2_stack_p:    addi         sp, sp, -60
                  sw           s8, 4(sp)
                  sra          a5, ra, tp
                  xor          a7, tp, t5
                  xor          t3, a3, s0
                  add          s4, s5, a5
                  slli         s1, t5, 18
                  add          s2, s2, a2
                  srl          s7, a5, a0
                  srl          tp, s1, gp
                  slt          t4, a4, sp
                  srl          s4, s1, a0
                  sra          s7, sp, a1
sub_2_j4:         jal          s8, sub_3 #jump sub_2 -> sub_3
                  addi         gp, zero, 5 #init loop 1 counter
                  and          zero, gp, t3
                  and          t1, s4, s10
                  addi         a0, zero, 15 #init loop 1 limit
                  slti         ra, s2, 1610
                  srai         s9, a3, 29
                  addi         s3, s10, -440
sub_2_0_1_t:      slt          s9, t2, a7
                  xor          s6, a2, t1
                  addi         gp, gp, 6 #update loop 1 counter
                  and          t4, a1, t3
                  addi         s1, zero, 2 #init loop 0 counter
                  add          a2, s4, s9
                  srli         s5, s9, 1
                  nop
                  auipc        tp, 11664
                  addi         s10, zero, -19 #init loop 0 limit
sub_2_0_0_t:      sltu         s5, s4, s0
                  ori          s2, t4, -1132
                  sra          t5, a3, s6
                  ori          t6, a7, -1394
                  auipc        s5, 377283
                  sltu         a4, a1, s8
                  sra          ra, t3, a0
                  srl          s9, s8, s4
                  slt          a3, sp, a3
                  addi         s1, s1, -7 #update loop 0 counter
                  xori         s2, a3, 126
                  auipc        zero, 652102
                  beq          s1, s10, sub_2_0_0_t #branch for loop 0
                  sltu         a2, ra, t6
                  sltu         s6, ra, t6
                  sltiu        s4, s1, -423
                  blt          gp, a0, sub_2_0_1_t #branch for loop 1
                  lui          s4, 363474
                  lui          s1, 60616
                  sll          a4, a6, t6
                  ori          a3, a2, -858
                  slt          s11, s5, s3
                  bne          a1, s8, 24f
                  srai         t4, a3, 17
                  nop
                  slli         s10, t5, 17
                  srl          s5, gp, sp
                  or           ra, a3, t4
                  add          s3, s6, a3
                  bgeu         a4, t0, 15f
                  andi         a5, s5, -1571
                  and          a1, zero, s5
                  slti         a0, s11, -2000
15:               bltu         s3, tp, 29f
                  ori          t4, t1, -1947
                  beq          s4, ra, 28f
                  ori          s11, a6, 730
                  lui          a3, 368325
                  sll          s9, t0, s3
                  sra          a4, s11, a5
                  xor          a2, a0, a3
                  lui          t3, 286677
24:               lui          a4, 106874
                  sub          s1, tp, a7
                  blt          t3, t0, 43f
                  andi         t6, s2, -647
28:               nop
29:               auipc        t5, 657419
                  sll          t2, s6, s8
                  bne          ra, s2, 48f
                  srai         s2, t0, 10
                  lui          s10, 577618
                  nop
                  or           s8, s4, t4
                  slli         a3, gp, 6
                  sltiu        s2, t5, -1478
                  bgeu         t5, s10, 56f
                  auipc        s1, 407918
                  nop
                  and          t4, s0, a5
                  bgeu         a2, a5, 44f
43:               beq          t4, s5, 51f
44:               and          a7, a3, s8
                  sra          t6, s0, t1
                  xor          t6, a7, t2
                  bgeu         a1, a3, 53f
48:               bgeu         t6, a2, 51f
                  auipc        s11, 153411
                  or           a7, s1, ra
51:               or           s8, t1, s2
                  sltu         s7, a1, s8
53:               addi         s2, sp, 1981
                  srai         s1, a6, 8
                  sra          s6, t2, a3
56:               bge          s5, s9, 58f
                  slti         s2, zero, 887
58:               bgeu         s6, s4, 75f
                  bgeu         t6, s7, 60f
60:               bltu         a6, sp, 76f
                  srai         t3, a2, 21
                  or           a3, tp, s10
                  sub          s4, s9, s3
                  andi         s8, s5, -132
                  sra          s11, a1, t5
                  sra          s2, s8, sp
                  sltiu        a5, t4, -146
                  srl          s9, a2, s0
                  srli         s9, a7, 25
                  nop
                  srl          a7, t6, tp
                  srl          t6, t6, t1
                  beq          s4, t1, 85f
                  add          a0, t5, s8
75:               bgeu         s6, s8, 84f
76:               bge          s1, t3, 88f
                  lui          s10, 652101
                  and          t3, sp, t2
                  and          s4, ra, a2
                  sra          a0, s1, a7
                  andi         t5, s1, 820
                  bgeu         t0, s6, 89f
                  blt          a4, s8, 89f
84:               srli         s11, s10, 10
85:               sra          a0, s6, s1
                  blt          a5, t0, 89f
                  bge          t4, t2, 89f
88:               bge          t5, s3, 89f
89:               srai         s11, zero, 30
                  lw           s8, 4(sp)
                  srli         s10, s3, 15
                  sltiu        a5, sp, 1039
                  addi         s2, s9, -485
                  addi         sp, sp, 60
                  sltiu        a4, a6, 661
                  slt          tp, t4, a5
                  sll          t1, tp, t3
                  andi         a7, s5, 1533
                  andi         t3, s2, -167
                  nop
152:              addi x10, x24, 0
152:              jalr x10, x10, 0
sub_4:            sll          s0, s10, a1
                  beq          s1, t6, sub_4_stack_p
                  and          s2, sp, s0
                  sltu         s0, s4, t6
sub_4_stack_p:    addi         sp, sp, -20
                  addi         s3, a0, 1655
                  xori         s3, s5, 1111
                  srli         t3, zero, 22
                  sw           s8, 4(sp)
                  sra          t2, a7, t4
                  addi         t2, zero, -8 #init loop 0 counter
                  auipc        a4, 789174
                  slt          s11, a3, a2
                  nop
                  sltiu        t1, t0, -1531
                  xor          a7, s6, t4
                  sltu         t4, s7, a6
                  addi         s8, zero, 12 #init loop 0 limit
                  or           s11, gp, t5
                  sltiu        s9, t2, -1112
                  sll          s4, s9, t0
sub_4_10_0_t:     slt          a2, t1, t6
                  ori          s9, t4, 776
                  or           s11, a0, s8
                  addi         t2, t2, 2 #update loop 0 counter
                  sra          s2, t1, a3
                  sll          tp, t6, s11
                  andi         t4, t3, 306
                  or           a7, a7, s4
                  xor          t1, s11, s11
                  sltiu        s3, s11, 852
                  ori          a1, zero, 1402
                  nop
                  xori         s6, s10, -1797
                  lui          gp, 552773
                  srai         ra, s0, 30
                  sra          s0, s7, a1
                  blt          t2, s8, sub_4_10_0_t #branch for loop 0
                  srli         a3, a5, 29
                  addi         s2, zero, 10 #init loop 1 counter
                  add          zero, s11, t1
                  or           tp, t0, s2
                  addi         s9, zero, -8 #init loop 1 limit
                  lui          t4, 964716
                  srl          a1, s10, t5
sub_4_11_1_t:     nop
                  addi         s2, s2, -9 #update loop 1 counter
                  addi         gp, zero, 8 #init loop 0 counter
                  slti         t3, a7, 904
                  addi         s0, zero, 8 #init loop 0 limit
sub_4_11_0_t:     nop
                  srli         s6, s8, 11
                  addi         gp, gp, -7 #update loop 0 counter
                  and          s10, t4, a4
                  bgeu         gp, s0, sub_4_11_0_t #branch for loop 0
                  ori          a0, s1, -74
                  slti         s11, t2, -1814
                  beq          s2, s9, sub_4_11_1_t #branch for loop 1
                  addi         t5, tp, -903
                  addi         s0, zero, 0 #init loop 0 counter
                  srl          s6, t1, s5
                  addi         a1, zero, 1 #init loop 0 limit
sub_4_14_0_t:     or           gp, s5, t4
                  sll          s2, s1, t3
                  addi         s0, s0, 2 #update loop 0 counter
                  ori          t3, t0, 324
                  sub          s1, ra, a1
                  blt          s0, a1, sub_4_14_0_t #branch for loop 0
                  andi         s3, t5, -1397
                  addi         tp, zero, 2 #init loop 0 counter
                  sll          a3, a2, t5
                  xori         t2, a4, -1844
                  or           s5, t4, s8
                  addi         s7, zero, 4 #init loop 0 limit
                  xor          a2, a6, t3
                  slti         s4, t4, -838
sub_4_16_0_t:     slt          zero, s7, t2
                  srli         t3, a0, 14
                  andi         t3, a2, -1864
                  addi         tp, tp, 2 #update loop 0 counter
                  sub          s8, t2, s3
                  slt          s2, a0, s8
                  slti         ra, sp, -21
                  sltiu        a0, t3, 1850
                  and          s6, ra, t1
                  auipc        t3, 336814
                  sltu         s5, a3, t0
                  srai         s9, a0, 16
                  bltu         tp, s7, sub_4_16_0_t #branch for loop 0
                  and          a2, s7, t0
                  addi         t6, zero, 7 #init loop 1 counter
                  lui          s10, 199075
                  addi         a1, zero, 7 #init loop 1 limit
                  ori          a4, tp, 94
                  xori         s0, s10, 1817
sub_4_8_1_t:      slt          a0, a1, zero
                  slt          t5, a2, s7
                  addi         t6, t6, -6 #update loop 1 counter
                  nop
                  addi         s11, zero, 6 #init loop 0 counter
                  addi         a5, zero, 18 #init loop 0 limit
                  auipc        t5, 249583
sub_4_8_0_t:      xori         s9, t1, -1059
                  xor          t3, t1, s9
                  or           ra, a7, s0
                  auipc        tp, 47481
                  addi         s11, s11, 3 #update loop 0 counter
                  srli         s4, a0, 30
                  beq          s11, a5, sub_4_8_0_t #branch for loop 0
                  xori         tp, s6, 455
                  bgeu         t6, a1, sub_4_8_1_t #branch for loop 1
                  sll          zero, tp, s6
                  addi         t3, zero, 4 #init loop 1 counter
                  slti         a1, s5, -583
                  addi         a2, zero, 7 #init loop 1 limit
                  addi         t4, a1, 714
sub_4_17_1_t:     nop
                  lui          s5, 664830
                  addi         t3, t3, 5 #update loop 1 counter
                  add          s8, a7, tp
                  xori         a0, sp, -1443
                  sltiu        s11, a5, 956
                  xor          s7, s11, a4
                  addi         s3, zero, 7 #init loop 0 counter
                  slt          t4, a6, t0
                  addi         s4, zero, 10 #init loop 0 limit
                  slt          s10, s6, ra
                  srli         s11, s7, 16
                  nop
sub_4_17_0_t:     nop
                  slli         t4, s3, 10
                  and          t1, a3, t0
                  addi         s3, s3, 9 #update loop 0 counter
                  srl          s11, s9, s9
                  sub          gp, t6, s4
                  srai         a7, t6, 19
                  lui          zero, 677163
                  bltu         s3, s4, sub_4_17_0_t #branch for loop 0
                  sltiu        a5, s1, 747
                  sltiu        s9, s0, -1859
                  bltu         t3, a2, sub_4_17_1_t #branch for loop 1
                  andi         s2, s2, 1068
                  addi         a3, zero, 1 #init loop 1 counter
                  sra          zero, t0, t6
                  ori          tp, s5, 2036
                  andi         t3, s2, 1883
                  srai         ra, t0, 17
                  srai         t2, s10, 26
                  sltu         s3, t5, s3
                  xor          a2, s5, a2
                  sltiu        tp, s7, 310
                  sub          a5, a3, s0
                  xori         t3, s9, 690
                  addi         s10, zero, 1 #init loop 1 limit
                  slli         s5, a4, 20
                  sltiu        a5, t3, 1896
sub_4_18_1_t:     sub          s1, t4, t4
                  xori         s4, a2, -2039
                  addi         a3, a3, -7 #update loop 1 counter
                  nop
                  addi         gp, zero, 8 #init loop 0 counter
                  slli         s8, s11, 31
                  slli         s5, zero, 4
                  addi         s2, zero, 0 #init loop 0 limit
                  add          a4, t5, tp
                  sltu         tp, t5, gp
                  or           a1, t4, t6
sub_4_18_0_t:     slti         t5, s0, -504
                  add          s5, a2, s0
                  sll          a7, t5, a4
                  addi         gp, gp, -1 #update loop 0 counter
                  ori          tp, a2, 792
                  sll          ra, gp, a3
                  bne          gp, s2, sub_4_18_0_t #branch for loop 0
                  or           a4, t5, s6
                  bge          a3, s10, sub_4_18_1_t #branch for loop 1
                  sltu         s3, s2, a6
                  addi         s5, zero, -10 #init loop 1 counter
                  addi         s0, zero, -12 #init loop 1 limit
sub_4_20_1_t:     lui          ra, 277377
                  addi         s5, s5, -7 #update loop 1 counter
                  addi         t6, zero, 9 #init loop 0 counter
                  xori         t3, a2, 1231
                  addi         s11, zero, 8 #init loop 0 limit
sub_4_20_0_t:     sltu         s2, s11, s0
                  addi         t6, t6, -7 #update loop 0 counter
                  sltiu        a3, zero, 91
                  bgeu         t6, s11, sub_4_20_0_t #branch for loop 0
                  bge          s5, s0, sub_4_20_1_t #branch for loop 1
                  xor          a3, s8, t4
                  addi         s0, zero, 8 #init loop 0 counter
                  xor          t6, s11, s2
                  slt          t5, sp, a5
                  slt          s4, s7, s5
                  addi         s11, zero, 15 #init loop 0 limit
                  ori          gp, s1, 381
                  slt          s1, a1, a5
sub_4_24_0_t:     slt          t4, a2, s11
                  addi         s0, s0, 8 #update loop 0 counter
                  slt          a3, t3, s2
                  addi         t6, a1, 488
                  slt          s7, a6, sp
                  blt          s0, s11, sub_4_24_0_t #branch for loop 0
                  xor          zero, a1, s6
                  addi         s10, zero, -10 #init loop 1 counter
                  addi         s0, t1, 1786
                  sltu         a7, a7, s2
                  srai         t1, s2, 19
                  add          t2, tp, s3
                  slli         s3, s0, 15
                  addi         gp, s9, 1657
                  addi         a0, zero, 0 #init loop 1 limit
sub_4_4_1_t:      andi         a2, ra, 281
                  add          t5, s10, t5
                  srl          s9, t2, s4
                  addi         s10, s10, 3 #update loop 1 counter
                  auipc        tp, 148641
                  addi         s8, zero, -8 #init loop 0 counter
                  auipc        ra, 28520
                  slli         s3, t2, 21
                  sltiu        a5, s2, 534
                  and          gp, s5, t4
                  addi         s2, zero, 10 #init loop 0 limit
sub_4_4_0_t:      sltiu        s0, s2, -1139
                  and          ra, s4, s4
                  addi         s8, s8, 9 #update loop 0 counter
                  beq          s8, s2, sub_4_4_0_t #branch for loop 0
                  nop
                  xori         s3, tp, -1707
                  slt          a1, s9, s7
                  xor          a4, a7, t0
                  sltu         t3, t3, sp
                  blt          s10, a0, sub_4_4_1_t #branch for loop 1
                  slli         s4, s11, 24
                  addi         s4, zero, 10 #init loop 1 counter
                  and          s9, s5, t3
                  addi         a2, zero, 9 #init loop 1 limit
                  slti         zero, a1, -1013
                  ori          a3, t2, -233
                  sub          a7, s6, a7
                  sll          t1, a0, ra
sub_4_23_1_t:     add          t2, t0, s2
                  addi         a0, t2, 569
                  auipc        s5, 31996
                  addi         s4, s4, -5 #update loop 1 counter
                  addi         a1, zero, -4 #init loop 0 counter
                  addi         t6, zero, 15 #init loop 0 limit
                  lui          s0, 967678
                  sltiu        s1, t0, -359
sub_4_23_0_t:     slti         a0, s6, -2005
                  addi         a1, a1, 3 #update loop 0 counter
                  lui          ra, 820352
                  xor          s11, sp, s3
                  bltu         a1, t6, sub_4_23_0_t #branch for loop 0
                  srli         s1, s9, 29
                  andi         s1, t4, -708
                  bgeu         s4, a2, sub_4_23_1_t #branch for loop 1
                  xori         a0, s11, -1491
                  addi         a4, zero, -7 #init loop 0 counter
                  srli         zero, a1, 16
                  xor          s1, a5, s2
                  addi         t5, s1, 1628
                  addi         s3, zero, -17 #init loop 0 limit
sub_4_6_0_t:      addi         t1, a0, -51
                  sll          zero, s10, s9
                  addi         a4, a4, -7 #update loop 0 counter
                  bge          a4, s3, sub_4_6_0_t #branch for loop 0
                  add          s6, a1, t1
                  addi         a3, zero, -6 #init loop 0 counter
                  addi         t1, zero, 11 #init loop 0 limit
                  andi         a5, t4, 185
sub_4_5_0_t:      slti         s11, s2, 897
                  addi         s11, s3, 1425
                  sra          a2, t6, t4
                  srl          s7, tp, s10
                  addi         a3, a3, 5 #update loop 0 counter
                  ori          t6, ra, -1264
                  srai         s10, sp, 22
                  sub          s7, s8, s11
                  blt          a3, t1, sub_4_5_0_t #branch for loop 0
                  xor          t5, a5, a1
                  addi         s7, zero, 10 #init loop 1 counter
                  slti         s6, t3, -232
                  and          a7, a0, s0
                  xor          t5, s8, s4
                  addi         t6, zero, 10 #init loop 1 limit
                  nop
                  add          s8, s8, s7
                  sll          s10, sp, t4
                  sub          s4, sp, s8
sub_4_7_1_t:      slti         t4, gp, -1492
                  slli         s3, t4, 26
                  addi         s7, s7, -9 #update loop 1 counter
                  sra          s8, zero, s9
                  sll          s9, s11, a4
                  addi         a1, zero, 7 #init loop 0 counter
                  and          s8, s6, t3
                  addi         ra, zero, -20 #init loop 0 limit
                  sltiu        s1, t0, 1678
sub_4_7_0_t:      slt          tp, a6, zero
                  or           s1, s7, sp
                  andi         t1, s11, 274
                  sll          t3, t4, s11
                  xori         s10, t4, 46
                  addi         a1, a1, -7 #update loop 0 counter
                  sltiu        tp, s7, 453
                  sltu         gp, gp, t5
                  srai         zero, s9, 16
                  sra          t5, gp, s4
                  srl          s4, a2, s6
                  bge          a1, ra, sub_4_7_0_t #branch for loop 0
                  sub          s8, t6, s7
                  bgeu         s7, t6, sub_4_7_1_t #branch for loop 1
                  and          a4, s0, s2
                  addi         a0, zero, -10 #init loop 1 counter
                  addi         t2, zero, -3 #init loop 1 limit
                  slt          t6, s4, zero
sub_4_21_1_t:     ori          s3, a3, -1269
                  sll          t3, s0, a5
                  addi         a0, a0, 1 #update loop 1 counter
                  addi         t4, zero, 8 #init loop 0 counter
                  nop
                  addi         s9, ra, 1146
                  addi         s5, zero, 16 #init loop 0 limit
                  srai         s6, s4, 21
                  sub          s0, s9, s4
                  srli         s1, s5, 15
                  slti         t3, s3, 1835
sub_4_21_0_t:     andi         a4, s1, 500
                  addi         t4, t4, 8 #update loop 0 counter
                  xor          t6, t1, s8
                  sltiu        t1, s4, -1327
                  beq          t4, s5, sub_4_21_0_t #branch for loop 0
                  slti         a4, a6, -1391
                  xor          s11, a7, tp
                  blt          a0, t2, sub_4_21_1_t #branch for loop 1
                  auipc        s10, 341572
                  addi         s9, zero, 0 #init loop 1 counter
                  sltiu        a1, a7, 1828
                  addi         t2, zero, 9 #init loop 1 limit
                  nop
                  add          a7, s11, a0
sub_4_0_1_t:      slt          a0, t6, a0
                  srli         s0, s5, 0
                  addi         s9, s9, 5 #update loop 1 counter
                  xor          a7, s4, s9
                  addi         s10, zero, 9 #init loop 0 counter
                  srai         a0, t4, 27
                  addi         s3, a2, -534
                  addi         a5, zero, 15 #init loop 0 limit
                  slt          ra, t0, a3
sub_4_0_0_t:      nop
                  sltu         s7, a4, a4
                  addi         s10, s10, 5 #update loop 0 counter
                  sltu         a3, a3, s2
                  sub          tp, s11, s9
                  add          s5, t2, s11
                  sub          s3, gp, t2
                  bltu         s10, a5, sub_4_0_0_t #branch for loop 0
                  bltu         s9, t2, sub_4_0_1_t #branch for loop 1
                  ori          ra, sp, -1456
                  addi         s4, zero, 9 #init loop 0 counter
                  andi         s1, a3, -694
                  add          t3, a6, s5
                  auipc        s10, 383652
                  nop
                  srl          a4, zero, zero
                  srli         t3, s11, 17
                  xori         s3, a5, 677
                  addi         s5, zero, 8 #init loop 0 limit
sub_4_13_0_t:     andi         s2, ra, 1690
                  srai         a1, a5, 30
                  slti         a7, a4, -244
                  or           a2, t2, s5
                  sltiu        s2, sp, -149
                  srai         gp, t4, 30
                  sub          s8, t5, s11
                  add          s7, a4, t2
                  addi         s4, s4, -6 #update loop 0 counter
                  sltiu        s8, a1, -1512
                  addi         t4, a5, -1179
                  bgeu         s4, s5, sub_4_13_0_t #branch for loop 0
                  ori          t6, a1, 11
                  addi         s10, zero, 3 #init loop 1 counter
                  slt          t3, s8, s2
                  sra          s6, s1, s4
                  addi         s9, zero, -6 #init loop 1 limit
                  srli         t1, s6, 22
                  sub          a3, zero, t5
                  slt          s8, a5, zero
                  or           a2, s10, s8
                  slt          s7, zero, zero
sub_4_19_1_t:     slti         s6, t4, 1145
                  lui          s4, 248962
                  addi         s10, s10, -9 #update loop 1 counter
                  xor          a0, s10, s9
                  slt          tp, a4, t0
                  addi         a1, zero, 6 #init loop 0 counter
                  slli         a4, tp, 22
                  addi         s1, zero, 9 #init loop 0 limit
                  srai         ra, a2, 6
                  sub          a7, s5, a3
sub_4_19_0_t:     auipc        s5, 1030797
                  srai         s8, a7, 24
                  addi         a1, a1, 9 #update loop 0 counter
                  slli         s7, t5, 28
                  bltu         a1, s1, sub_4_19_0_t #branch for loop 0
                  add          s5, a4, s4
                  nop
                  xori         t6, s3, 289
                  ori          t4, sp, 1031
                  sub          a4, s6, s6
                  bne          s10, s9, sub_4_19_1_t #branch for loop 1
                  srl          t5, t1, t2
                  addi         s8, zero, 3 #init loop 1 counter
                  addi         s4, zero, 4 #init loop 1 limit
sub_4_22_1_t:     sltu         a5, a0, tp
                  addi         s8, s8, 10 #update loop 1 counter
                  addi         s3, zero, 9 #init loop 0 counter
                  addi         t4, zero, 9 #init loop 0 limit
sub_4_22_0_t:     sltu         t3, a4, a6
                  addi         s3, s3, -6 #update loop 0 counter
                  sra          a7, a4, ra
                  bgeu         s3, t4, sub_4_22_0_t #branch for loop 0
                  bltu         s8, s4, sub_4_22_1_t #branch for loop 1
                  addi         s7, a6, -1897
                  addi         t6, zero, 10 #init loop 0 counter
                  addi         s10, zero, 10 #init loop 0 limit
                  sltiu        a1, a3, 669
                  addi         gp, s1, -640
sub_4_12_0_t:     ori          t5, t6, 107
                  sltu         s8, s9, a2
                  andi         s1, t1, 861
                  auipc        a5, 150308
                  addi         t6, t6, -9 #update loop 0 counter
                  bgeu         t6, s10, sub_4_12_0_t #branch for loop 0
                  sltu         gp, s11, a3
                  addi         t1, zero, -6 #init loop 1 counter
                  srai         a2, a0, 4
                  and          s9, s4, a2
                  addi         ra, zero, 3 #init loop 1 limit
sub_4_3_1_t:      sltu         zero, a1, t1
                  addi         t1, t1, 3 #update loop 1 counter
                  add          s5, s5, s2
                  sll          a3, t2, t1
                  addi         t2, zero, -9 #init loop 0 counter
                  slt          a2, s10, t4
                  sltu         t5, s2, s9
                  addi         t6, zero, -7 #init loop 0 limit
                  slti         a1, t6, 1822
                  xor          s11, sp, a0
sub_4_3_0_t:      andi         a2, a7, 1970
                  xor          s3, t5, a5
                  addi         t2, t2, 2 #update loop 0 counter
                  srai         t4, a1, 13
                  beq          t2, t6, sub_4_3_0_t #branch for loop 0
                  ori          zero, ra, 616
                  bne          t1, ra, sub_4_3_1_t #branch for loop 1
                  andi         s3, gp, 55
                  blt          tp, s5, 9f
                  auipc        t5, 284708
                  bge          s8, a6, 22f
                  sltiu        tp, a3, -692
                  sltiu        t1, s0, 2018
                  sltiu        s9, a3, 108
                  add          s6, s9, t6
                  addi         t1, s1, -1006
                  ori          a5, s1, 440
9:                sra          a2, s3, a3
                  bltu         t5, t3, 20f
                  slt          s6, zero, t6
                  and          gp, t0, a5
                  xori         a2, s4, 392
                  srai         s3, t1, 7
                  nop
                  lui          s3, 208274
                  slti         s5, t3, 1030
                  slt          t1, t1, zero
                  xori         t6, s11, -759
20:               slli         s2, sp, 24
                  sub          zero, zero, t5
22:               slti         s8, s10, -917
                  slt          zero, s4, t4
                  auipc        a4, 618938
                  sra          t1, s6, t6
                  sub          zero, t0, a5
                  sub          t3, a6, s10
                  nop
                  sltiu        t2, a4, -641
                  andi         t2, s5, -1356
                  blt          s6, t3, 37f
                  slti         s10, a1, -1453
                  bgeu         a0, gp, 49f
                  lui          a7, 687106
                  beq          s10, a1, 46f
                  sub          s8, t2, a6
37:               slti         t1, a4, 1303
                  bge          a7, s7, 57f
                  and          s11, t0, s6
                  blt          t4, a1, 50f
                  bne          s7, gp, 42f
42:               or           s11, a1, gp
                  srai         ra, s9, 11
                  and          a3, t6, t0
                  srli         t3, a6, 26
46:               lui          a4, 375259
                  or           a1, s5, s2
                  bgeu         tp, s4, 68f
49:               sltiu        a4, tp, -589
50:               ori          a0, s1, -175
                  sra          gp, s10, a5
                  ori          s6, a5, 899
                  sltu         s0, s7, a0
                  sltiu        a3, a0, 872
                  sltu         s2, a3, a0
                  blt          a7, a6, 69f
57:               xori         ra, s8, -285
                  xori         t3, sp, -117
                  slli         s6, s9, 12
                  beq          gp, a7, 77f
                  srl          tp, s7, ra
                  srli         gp, s3, 8
                  nop
                  sltiu        t6, s0, -1251
                  slti         s1, zero, -760
                  slti         s9, a5, -864
                  slt          tp, t0, s2
68:               xor          a5, a3, s3
69:               bltu         a2, tp, 81f
                  andi         s0, a0, -715
                  or           s6, zero, a3
                  sra          t4, a5, a4
                  add          gp, t5, s11
                  addi         tp, t6, 125
                  bge          s9, a4, 87f
                  ori          t1, a5, 650
77:               bge          a2, s2, 88f
                  slli         t2, s2, 21
                  addi         t1, a6, 885
                  xor          t4, s10, sp
81:               xor          s7, s10, sp
                  andi         gp, gp, 1775
                  srli         a3, sp, 26
                  sub          s3, a3, s2
                  sll          s3, t1, a4
                  andi         a1, t3, -635
87:               xori         s11, t0, -497
88:               slli         a2, tp, 28
                  sub          a0, t1, tp
                  slli         a1, a1, 13
                  addi         a7, a2, 825
                  sra          s7, ra, gp
                  addi         s0, sp, -1765
                  blt          s11, t0, 102f
                  bltu         a3, tp, 102f
                  nop
                  slti         t1, s5, 828
                  nop
                  sltiu        t4, a6, 173
                  sra          a1, s3, t1
                  srli         s9, s4, 9
102:              slti         s3, s6, 2002
                  srli         s0, s4, 7
                  bltu         a1, a6, 106f
                  sra          s10, s11, ra
106:              add          s10, tp, t5
                  blt          s11, s4, 126f
                  xori         s8, t2, 702
                  nop
                  and          s0, a5, sp
                  bltu         s7, t0, 117f
                  bne          s1, t0, 129f
                  lui          s9, 1011561
                  and          s11, s10, s6
                  bgeu         s5, t4, 122f
                  add          ra, sp, s9
117:              nop
                  nop
                  auipc        s1, 873038
                  bge          a3, t1, 129f
                  slti         t6, a1, -985
122:              bne          s7, tp, 134f
                  srl          s11, a1, s5
                  slt          s2, s7, t6
                  addi         s1, s4, -392
126:              slti         t5, t1, -994
                  bge          s4, t3, 130f
                  bgeu         t2, t3, 139f
129:              slti         s6, s0, -1309
130:              xori         t4, a5, 1727
                  xor          t5, s10, s7
                  add          s11, a2, t6
                  xori         a5, t4, 1507
134:              slti         s0, s0, 617
                  srli         s6, s7, 24
                  bge          sp, s4, 142f
                  slli         s5, ra, 23
                  sll          gp, a1, s8
139:              xori         s11, tp, 1399
                  srl          s7, t2, t1
                  slti         s4, s10, -1258
142:              xor          a3, t0, s11
                  bne          s9, s4, 153f
                  srai         s5, a4, 12
                  sub          s9, t0, a5
                  slli         s1, s0, 25
                  nop
                  xor          s9, s0, a2
                  ori          ra, s9, -175
                  bge          s3, s2, 154f
                  blt          s5, a4, 154f
                  addi         a7, s7, -1157
153:              auipc        a4, 204474
154:              addi         a4, t0, -366
                  sub          a1, t5, a1
                  bge          s6, s10, 167f
                  and          s5, a7, t2
                  auipc        t5, 32896
                  lui          s8, 800201
                  bltu         a2, s2, 180f
                  sub          t4, a2, s5
                  sra          a4, gp, a5
                  slti         t3, t6, -1605
                  ori          zero, sp, -713
                  andi         t2, a6, 1955
                  auipc        a1, 456132
167:              nop
                  xori         s8, s5, -1899
                  slti         tp, ra, 804
                  srai         s1, a3, 6
                  lui          t5, 631592
                  xori         s4, a2, 1039
                  sub          gp, s5, t6
                  andi         s2, t0, 1953
                  sltiu        a4, t0, -533
                  auipc        a3, 288311
                  xor          s10, s8, t6
                  lui          s2, 543987
                  sra          a3, t3, t3
180:              sll          t5, s4, zero
                  bne          s2, s1, 184f
                  lui          a7, 16996
                  auipc        t4, 284973
184:              auipc        s6, 207947
                  auipc        a4, 214100
                  addi         t4, a5, 694
                  nop
                  sra          s11, a7, t0
                  addi         t2, a3, 1337
                  bne          a2, a2, 196f
                  bne          s8, t4, 210f
                  addi         s4, zero, -2 #init loop 1 counter
                  ori          ra, s3, -1581
                  addi         s10, zero, -5 #init loop 1 limit
                  xor          ra, sp, a0
                  slti         s1, t4, -27
sub_4_15_1_t:     lui          s2, 380989
                  or           a7, a5, a4
                  addi         s4, s4, -3 #update loop 1 counter
                  add          t6, t1, s3
                  addi         t5, zero, 2 #init loop 0 counter
                  sltiu        t2, a1, -1772
                  addi         a1, zero, 17 #init loop 0 limit
sub_4_15_0_t:     and          ra, a6, a5
                  xori         t4, ra, -556
                  addi         t5, t5, 5 #update loop 0 counter
                  srli         a2, s0, 14
                  bne          t5, a1, sub_4_15_0_t #branch for loop 0
                  and          s6, t6, s11
                  slli         t1, a7, 16
                  beq          s4, s10, sub_4_15_1_t #branch for loop 1
                  sltiu        ra, sp, 1766
                  add          s6, a5, s2
                  xor          s1, zero, tp
                  addi         s1, s7, -1718
                  lui          zero, 310478
196:              bge          a4, tp, 208f
                  srai         s8, t5, 19
                  slt          s0, s2, a5
                  and          t1, s5, tp
                  slli         a4, a5, 11
                  slli         gp, s2, 24
                  sub          t3, a6, s5
                  sll          tp, zero, ra
                  slt          tp, t6, t0
                  and          s11, a1, a0
                  sub          a4, ra, a7
                  sra          a2, s6, a0
208:              blt          ra, a0, 214f
                  beq          sp, s1, 228f
210:              nop
                  andi         gp, a7, -2023
                  lui          gp, 54873
                  srl          s0, zero, s11
214:              sub          gp, t6, tp
                  sltu         t5, s7, s7
                  slli         a3, a5, 30
                  xori         s9, s6, 142
                  slli         s4, s5, 13
                  sltu         a7, a3, ra
                  xor          t4, t2, t5
                  srli         t1, t6, 21
                  andi         tp, a4, 1441
                  xori         a0, s11, -1361
                  sltu         t4, t3, tp
                  sub          zero, sp, gp
                  andi         a1, a1, 170
                  slli         s1, t6, 22
228:              bne          s8, s9, 237f
                  sltu         s10, a1, t0
                  slt          t4, s0, s2
                  sll          zero, a4, t1
                  sra          s3, a1, s0
                  xori         a3, gp, 524
                  beq          t6, s9, 242f
                  bltu         a4, s0, 245f
                  ori          a2, tp, 1323
237:              sltiu        t6, t1, -1248
                  bge          ra, a7, 249f
                  srli         a0, s8, 28
                  xori         a4, s3, 525
                  slli         t6, a2, 29
242:              auipc        zero, 285534
                  sub          s1, t6, t6
                  lui          s10, 876573
245:              nop
                  nop
                  auipc        s9, 384785
                  add          t5, a0, a3
249:              add          t5, t2, s0
                  beq          t2, s9, 262f
                  auipc        t4, 565906
                  ori          s0, t5, -1381
                  slli         t2, s6, 22
                  auipc        s6, 565829
                  beq          t6, s3, 259f
                  srl          s2, s0, s1
                  sltu         a5, gp, gp
                  bltu         s10, t3, 259f
259:              beq          t5, zero, 269f
                  slli         a3, t5, 14
                  and          t5, gp, s7
262:              andi         zero, s9, -742
                  bge          s8, sp, 279f
                  and          s11, s9, a2
                  add          s3, a7, a2
                  slti         a4, a3, 1661
                  slli         tp, a0, 3
                  slli         t4, t0, 5
269:              bne          a2, s0, 271f
                  xori         a3, t5, 81
271:              srai         s7, a3, 28
                  slt          a5, gp, a3
                  or           a5, s11, s0
                  lui          s3, 838446
                  bltu         t1, t5, 287f
                  slt          t6, sp, a0
                  bltu         t4, s8, 288f
                  andi         t1, t4, 1173
279:              add          a4, a7, ra
                  sub          s3, a5, s9
                  sll          a5, s2, s2
                  srl          s0, a7, t1
                  sra          s7, t3, t4
                  xori         s4, a4, 2042
                  addi         a0, t1, -24
                  beq          s0, gp, 303f
287:              srai         s3, sp, 0
288:              nop
                  slli         t2, a2, 4
                  bne          sp, a6, 300f
                  and          s11, s7, s11
                  sltiu        s0, s2, 377
                  srl          t3, t3, s9
                  blt          t5, t5, 303f
                  xor          s2, t3, a4
                  xori         a5, a1, 988
                  and          s5, tp, s3
                  sltiu        s3, sp, 873
                  xor          s1, t0, a5
300:              ori          tp, a1, -1571
                  nop
                  lui          tp, 674470
303:              beq          a3, a1, 306f
                  bltu         t3, ra, 324f
                  or           s10, zero, sp
306:              bge          s11, t5, 319f
                  bgeu         t3, s11, 314f
                  lui          a7, 875513
                  bgeu         t5, s9, 316f
                  nop
                  auipc        s6, 186962
                  lui          a5, 355822
                  ori          s6, a3, 316
314:              slt          zero, s0, a4
                  sltu         s4, a7, s11
316:              sltiu        t2, s11, -1771
                  add          s1, s5, t5
                  beq          a6, a5, 324f
319:              nop
                  nop
                  or           a2, s5, s3
                  and          a7, zero, s10
                  beq          a7, gp, 340f
324:              blt          a2, t2, 331f
                  srai         s9, s10, 24
                  add          s11, t5, s6
                  sll          s1, t3, s0
                  sra          s6, t1, s7
                  bne          a0, t6, 342f
                  srli         a5, t4, 23
331:              sra          t6, s8, ra
                  or           ra, t3, tp
                  sltu         s10, s7, t2
                  xori         s3, s0, -983
                  sra          a7, s10, s6
                  bgeu         sp, a5, 342f
                  bne          t4, t5, 353f
                  sltiu        s3, t6, 123
                  bge          t0, zero, 343f
340:              blt          s6, t0, 357f
                  lui          ra, 160254
342:              nop
343:              srai         a3, s10, 20
                  srli         a5, t4, 19
                  sltiu        t4, s7, -1962
                  bltu         s7, s11, 355f
                  srai         t5, a6, 16
                  slt          t6, s6, a4
                  and          t2, a1, ra
                  lui          s5, 783790
                  bge          s4, gp, 362f
                  bne          a7, t2, 360f
353:              bne          a2, a0, 363f
                  bne          a3, s9, 361f
355:              srl          s0, a2, a6
                  sltiu        s6, s4, 997
357:              srai         a5, s4, 12
                  or           s1, s8, s5
                  blt          a3, s11, 370f
360:              srli         s2, s8, 13
361:              bne          t1, tp, 381f
362:              addi         s4, t5, -1902
363:              sra          s2, s9, s8
                  auipc        a4, 1026345
                  blt          t4, s11, 375f
                  nop
                  sll          t2, s6, t0
                  srl          s4, a1, t0
                  sra          t6, t6, a0
370:              slli         t2, a6, 26
                  slt          s2, s7, s1
                  andi         s3, a6, 187
                  and          t4, s7, t2
                  srli         t5, s2, 19
375:              sll          s0, s0, t1
                  lui          a3, 400145
                  bgeu         t6, s8, 380f
                  slli         s6, s8, 28
                  add          s0, a0, s3
380:              andi         s4, t3, 1227
381:              srl          tp, tp, s7
                  nop
                  addi         a0, zero, 10 #init loop 1 counter
                  addi         s8, a2, 13
                  slli         s11, s5, 20
                  addi         tp, zero, 20 #init loop 1 limit
                  add          t3, s8, a3
sub_4_9_1_t:      slti         s0, sp, 906
                  slt          t2, s10, zero
                  addi         a0, a0, 7 #update loop 1 counter
                  ori          s6, t0, -762
                  xori         a5, a5, 1651
                  addi         ra, zero, 9 #init loop 0 counter
                  andi         s4, a0, -1983
                  addi         s1, zero, 8 #init loop 0 limit
                  slti         zero, s10, 914
                  slti         t1, s3, -119
                  lui          s8, 24171
sub_4_9_0_t:      sub          s4, a4, s2
                  xori         t2, s5, -1765
                  addi         ra, ra, -7 #update loop 0 counter
                  or           a1, a7, t5
                  sub          s4, t5, s9
                  slt          a2, a2, tp
                  sub          t2, ra, t3
                  lui          a5, 772713
                  lui          a5, 357531
                  and          a5, a7, s7
                  bgeu         ra, s1, sub_4_9_0_t #branch for loop 0
                  sra          gp, ra, t0
                  andi         a5, t2, -1113
                  bltu         a0, tp, sub_4_9_1_t #branch for loop 1
                  xor          a5, sp, ra
                  andi         t4, a5, 150
                  xori         t5, gp, 229
                  srai         gp, a2, 25
                  addi         s5, a3, 1479
                  blt          t4, a3, 399f
                  addi         t6, s4, 663
                  addi         s7, t1, 871
                  sra          a3, t3, a7
                  nop
                  bge          s3, s4, 411f
                  bltu         s7, s3, 405f
                  ori          t2, s6, 1940
                  add          t3, ra, t4
                  bgeu         a2, s3, 416f
                  auipc        s9, 600336
                  sltu         s2, s10, a0
399:              sra          s9, a3, s1
                  slti         t2, zero, 888
                  slt          t2, a5, a3
                  beq          s3, t6, 414f
                  srli         s3, gp, 15
                  auipc        ra, 346386
405:              auipc        s3, 502627
                  bge          s11, gp, 425f
                  xor          a3, s4, s6
                  bgeu         a0, tp, 409f
409:              bne          a5, tp, 415f
                  bge          s9, t4, 416f
411:              bgeu         s2, ra, 420f
                  ori          s9, t2, 931
                  srli         t4, t0, 31
414:              srl          a1, a4, a2
415:              blt          gp, s2, 426f
416:              xor          gp, t6, sp
                  bge          a1, s9, 419f
                  sltiu        a4, s0, 1164
419:              sltiu        s7, t0, 1861
420:              blt          a3, s3, 430f
                  srai         zero, a6, 29
                  slli         t4, t5, 13
                  slt          a2, t1, s7
                  slli         s10, a6, 7
425:              or           s7, s9, s1
426:              bgeu         a3, ra, 443f
                  srli         s1, s3, 11
                  srl          s0, a5, s9
                  or           s2, a7, sp
430:              ori          a3, a2, -1204
                  blt          a5, s8, 434f
                  sll          a5, s11, a2
                  nop
434:              slli         gp, t6, 30
                  slt          s11, a5, s8
                  bgeu         tp, gp, 452f
                  sra          s1, s5, s11
                  andi         s3, s8, -98
                  bne          s3, s10, 456f
                  slli         a3, t1, 4
                  srl          a2, s9, t3
                  sltiu        gp, a6, 294
443:              bltu         s7, s6, 449f
                  srai         t4, a0, 24
                  and          t2, t0, s4
                  srai         t2, t0, 7
                  ori          gp, s2, 43
                  add          gp, tp, sp
449:              slti         s3, zero, -580
                  xori         s6, t5, 828
                  srl          s1, s7, s8
452:              ori          t1, s11, -789
                  sra          a0, s4, a2
                  slt          t5, t3, a2
                  srai         a4, s11, 31
456:              slti         a3, a1, 890
                  sub          s2, ra, s2
                  sltu         a5, a6, a5
                  sra          a4, ra, t4
                  srli         s1, a4, 23
                  sra          a7, t3, t2
                  add          t5, s7, a2
                  beq          s2, s1, 474f
                  slt          a3, a2, s10
                  xor          a4, ra, s11
                  bge          t5, s3, 485f
                  nop
                  srai         s1, ra, 5
                  beq          s3, s10, 489f
                  xori         s11, s1, 328
                  sltu         s1, t0, ra
                  beq          s2, a2, 478f
                  beq          t1, s8, 482f
474:              nop
                  sll          a4, s6, a5
                  bne          t4, a6, 488f
                  auipc        t5, 292259
478:              slli         zero, t6, 24
                  sll          s5, s7, s1
                  sltiu        ra, s8, -1068
                  bgeu         s0, t3, 484f
482:              or           t3, t3, t3
                  and          t4, t2, a0
484:              slt          a0, t4, s1
485:              lui          a5, 319614
                  srai         t1, a3, 6
                  srai         s2, s0, 22
488:              ori          t5, a5, 202
489:              nop
                  blt          s4, zero, 501f
                  andi         ra, a7, 1647
                  lui          tp, 386996
                  srli         s4, t6, 14
                  ori          a4, t3, 1093
                  or           s8, a6, a5
                  sub          ra, zero, a2
                  or           s3, gp, s5
                  srl          t2, s6, ra
                  lui          s10, 623489
                  sll          a2, a5, s10
501:              beq          s1, s4, 513f
                  slt          s11, a4, s10
                  beq          a3, s1, 514f
                  sltu         a3, sp, t3
                  sltu         a1, s4, a1
                  nop
                  sub          a4, t3, t2
                  nop
                  ori          s9, a2, 1602
                  and          s5, a6, gp
                  nop
                  slli         s8, a6, 29
513:              sltiu        s11, a5, -1477
514:              slt          s1, s4, a3
                  srai         s6, tp, 22
                  sltiu        t4, s7, -1794
                  add          s0, s7, a2
                  nop
                  sltu         a1, s2, a4
                  or           a0, s5, a6
                  bne          ra, s1, 529f
                  and          gp, t0, a6
                  or           s6, s6, s3
                  srai         s7, t3, 18
                  auipc        a2, 118619
                  add          a1, sp, s9
                  srli         tp, s8, 1
                  sub          t6, s9, ra
529:              lui          a3, 887645
                  lui          s6, 499753
                  and          s8, t3, a7
                  sltiu        ra, s1, 627
                  bgeu         t0, s3, 550f
                  bne          tp, t2, 544f
                  andi         t5, zero, 52
                  slti         t6, a1, 142
                  or           a3, s1, t4
                  srli         s7, s10, 20
                  sltiu        t4, a7, -838
                  xori         a2, s2, 1762
                  xor          a7, t1, zero
                  sra          s6, s7, a3
                  slli         s7, t3, 18
544:              xori         s0, t3, 381
                  slli         t1, s7, 26
                  addi         t2, t6, -881
                  srai         s1, s7, 26
                  srli         s0, a3, 25
                  srli         t5, t1, 19
550:              slli         t6, a1, 14
                  sll          s11, s9, t4
                  bge          a1, t1, 553f
553:              srl          a5, a0, s4
                  lui          s8, 317309
                  andi         a0, s7, 182
                  slt          a5, a1, t3
                  andi         s6, a5, -1157
                  sll          s6, s1, ra
                  xor          s1, a1, s4
                  srl          s5, t2, t2
                  ori          ra, s5, -324
                  sra          s1, s9, s7
                  nop
                  addi         t1, tp, -91
                  slt          s1, s5, t3
                  bltu         a0, a3, 568f
                  sltiu        a5, a3, 28
568:              addi         s9, a6, 481
                  srai         s10, t5, 18
                  or           s5, t5, s2
                  beq          s1, s10, 591f
                  slli         s11, ra, 28
                  xor          t4, a4, t5
                  xor          t5, a6, a5
                  srl          zero, t6, a6
                  sltu         s5, a4, a1
                  bltu         tp, a0, 590f
                  sltiu        a0, t3, -1048
                  and          s7, s0, sp
                  sltu         ra, a4, gp
                  nop
                  andi         a1, a5, 1297
                  slti         s6, zero, -1591
                  sra          s2, a2, t5
                  auipc        a2, 570062
                  or           a2, t5, s0
                  sltu         t1, s9, zero
                  lui          s4, 83087
                  blt          s7, s2, 608f
590:              and          s7, zero, gp
591:              andi         t3, t1, -192
                  blt          s0, s7, 596f
                  add          s2, t2, ra
                  add          s2, s5, s7
                  srli         a7, s1, 26
596:              bne          t3, t2, 603f
                  sll          a1, s5, s5
                  add          t5, a5, s2
                  srl          gp, s5, a1
                  sltu         s3, t3, t3
                  slti         t2, a2, -1485
                  auipc        tp, 1000720
603:              lui          zero, 796675
                  nop
                  addi         a2, sp, -1874
                  blt          a1, t2, 612f
                  nop
608:              auipc        t6, 402450
                  sra          t3, t3, s2
                  blt          s9, t6, 622f
                  ori          zero, s9, 1759
612:              slli         t1, t3, 18
                  and          tp, t5, t2
                  srli         a2, s4, 1
                  add          zero, t4, s2
                  xori         ra, s11, -1929
                  andi         s7, a0, 1245
                  xori         a0, a0, -138
                  sltu         s11, t6, s4
                  add          s9, t0, s6
                  slt          t4, gp, a3
622:              ori          s3, t3, 1485
                  srli         t4, tp, 5
                  slt          s11, s11, s5
                  sra          s11, s9, a5
                  slt          s0, s2, s2
                  slt          ra, t3, t3
                  sltiu        s5, t4, 1136
                  sltiu        a5, sp, 1171
                  sltiu        s0, tp, 594
                  blt          s3, tp, 641f
                  add          t6, ra, a3
                  srl          s11, zero, s11
                  blt          a2, a0, 641f
                  xori         t4, t3, 1550
                  bgeu         sp, s2, 646f
                  srl          a1, t4, t1
                  slti         s1, s6, -1258
                  sub          a3, t3, tp
                  or           a4, gp, s0
641:              slli         s2, s8, 23
                  sub          t6, s5, s6
                  sra          gp, s8, t2
                  slt          s3, tp, s7
                  bge          t1, s1, 654f
646:              andi         t1, t3, 1172
                  auipc        s0, 172987
                  slt          t2, a2, s11
                  sra          s4, a2, t6
                  slti         t3, a2, -88
                  slt          s8, t0, s11
                  sll          s8, a4, s5
                  sll          s7, t4, s9
654:              auipc        gp, 255726
                  or           a3, t0, zero
                  srl          s0, t6, s2
                  slti         t1, sp, 1697
                  auipc        s3, 457611
                  xor          zero, gp, s1
                  xor          a4, s3, s6
                  sub          s4, a7, s10
                  srai         t6, zero, 30
                  or           s11, s7, s5
                  xori         a5, a6, 728
                  bltu         zero, t5, 668f
                  lui          a3, 946008
                  xori         t5, t1, -581
668:              srai         s1, s7, 0
                  beq          s4, gp, 676f
                  bltu         a5, s6, 687f
                  srai         s3, s0, 16
                  bne          a5, gp, 673f
673:              andi         ra, a5, -913
                  xor          a0, a4, s9
                  sll          t3, a0, a5
676:              srli         t6, tp, 28
                  sra          s3, ra, sp
                  srli         t4, s8, 11
                  sll          a5, s2, t5
                  srli         s3, tp, 20
                  or           t2, s5, s6
                  or           a5, s3, t3
                  add          s11, s8, t3
                  and          t3, s7, s0
                  ori          s5, s2, -1006
                  xor          t1, zero, a2
687:              xor          a1, a6, a7
                  xori         s9, t2, 2027
                  slt          a3, s1, a3
                  addi         s1, a5, -576
                  lui          a0, 764212
                  sltiu        t6, s4, 1027
                  beq          a6, tp, 699f
                  slti         s2, t4, 1252
                  sub          s10, t1, s5
                  srai         s11, t6, 29
                  bltu         sp, t1, 706f
                  sub          a2, t4, t5
699:              sltiu        s10, tp, 669
                  slli         s9, s5, 23
                  srli         a2, s8, 16
                  addi         s5, zero, 823
                  auipc        s1, 378139
                  xor          t5, t2, t4
                  srl          s11, a6, s9
706:              beq          a1, ra, 712f
                  addi         t4, s9, -777
                  bge          t4, a3, 716f
                  lui          s2, 6131
                  srl          tp, s0, a2
                  auipc        ra, 875060
712:              slt          a2, s0, s1
                  srai         s7, s2, 11
                  bltu         a4, a2, 724f
                  srl          s4, t0, a4
716:              slti         s3, s5, 500
                  blt          s5, a2, 728f
                  sll          ra, s6, t3
                  slli         a7, t1, 11
                  auipc        s0, 619849
                  slti         s2, a0, 172
                  andi         t4, a0, -1871
                  sltu         s11, s5, sp
724:              bgeu         s11, t5, 733f
                  nop
                  blt          t1, s6, 732f
                  slli         s8, t2, 8
728:              srli         s3, t3, 10
                  nop
                  bne          t5, t1, 733f
                  or           s8, t2, ra
732:              bge          s0, s11, 744f
733:              or           s0, s6, ra
                  srli         s1, s7, 5
                  slti         s4, zero, 90
                  lui          s10, 65926
                  srai         a7, tp, 13
                  and          s4, s1, a7
                  add          a0, s1, t6
                  slti         ra, s10, -694
                  lui          s4, 882364
                  xori         a1, s3, -1165
                  slli         tp, a7, 13
744:              bne          s5, gp, 764f
                  xor          t2, zero, s4
                  and          s0, s10, a4
                  bne          s0, s2, 758f
                  xor          gp, a3, t4
                  addi         s1, s8, 1399
                  xori         s2, a2, 2047
                  sltiu        s6, s7, 591
                  sltu         a2, s4, ra
                  slt          ra, gp, a6
                  or           s6, a0, gp
                  slti         t3, zero, 1085
                  slti         a5, a3, -176
                  slt          s10, t1, s4
758:              add          s11, t6, a6
                  auipc        a3, 10094
                  srl          tp, tp, a2
                  xori         t5, a3, -1664
                  andi         ra, s10, 1139
                  andi         s10, a1, -802
764:              srai         s11, s10, 3
                  andi         t3, t1, 1888
                  bltu         a5, s3, 782f
                  slli         s1, gp, 3
                  andi         t6, s2, -1028
                  nop
                  or           a5, s2, s4
                  slt          s2, t2, s0
                  blt          s1, a7, 775f
                  srai         t3, a3, 4
                  andi         s2, s5, -1405
775:              andi         tp, sp, -1536
                  lui          t6, 142237
                  sub          s3, a0, t2
                  or           t6, a4, sp
                  sltiu        t2, a1, -1968
                  srli         a7, s4, 22
                  xor          s6, t5, gp
782:              add          s6, s3, t1
                  srl          s11, s0, s8
                  lui          t2, 605781
                  sra          s1, zero, s6
                  slt          s5, t0, s6
                  srli         a3, a0, 19
                  bgeu         s6, sp, 800f
                  sub          s9, t0, a2
                  sltu         s7, zero, t0
                  lui          a3, 800778
                  bne          ra, s7, 796f
                  bne          s10, a6, 803f
                  and          a5, s6, s6
                  bne          s2, s0, 814f
796:              sll          s1, s1, sp
                  auipc        t6, 999956
                  srli         s4, t3, 10
                  bge          s9, s11, 809f
800:              add          t5, s11, a7
                  bne          gp, s2, 818f
                  and          s4, ra, s2
803:              slli         tp, a5, 24
                  srai         a3, gp, 19
                  sltu         s0, t4, gp
                  or           a3, zero, a0
                  bgeu         s9, s6, 827f
                  beq          t6, s2, 819f
809:              sltu         a1, t3, s11
                  srai         a2, a0, 10
                  add          ra, ra, s6
                  srl          t5, s3, t1
                  bltu         s10, sp, 815f
814:              slti         a7, tp, -994
815:              addi         s8, a0, 1803
                  nop
                  and          t3, a4, s8
818:              srl          s1, tp, s4
819:              nop
                  slti         tp, t3, 76
                  sll          s5, s8, s2
                  ori          s6, s2, 1162
                  beq          t1, a3, 830f
                  lui          a4, 213315
                  bge          t6, a6, 837f
                  sltiu        tp, ra, -197
827:              or           s7, t3, t3
                  xori         s10, s2, 744
                  srli         t2, t1, 31
830:              nop
                  slli         t6, s0, 4
                  addi         s3, t0, 1088
                  blt          t3, s3, 846f
                  ori          a4, t6, 1466
                  bge          zero, s0, 854f
                  xor          t1, s0, sp
837:              add          gp, a2, s6
                  bge          a3, a7, 851f
                  bne          ra, a4, 849f
                  nop
                  xor          s10, tp, s10
                  sra          t2, s0, t1
                  bltu         a5, s3, 844f
844:              slti         t4, t3, -385
                  lui          s7, 304165
846:              nop
                  sltu         t4, s2, a4
                  srl          t5, t5, gp
849:              lui          t1, 288657
                  add          s8, a5, a7
851:              bltu         s6, s8, 862f
                  srl          a7, gp, t4
                  sltiu        a1, a1, -276
854:              nop
                  sltiu        t1, a0, 870
                  srl          a1, a1, tp
                  slli         s11, s3, 14
                  sub          s0, a3, s9
                  auipc        zero, 858416
                  auipc        gp, 726493
                  srl          t3, t0, s5
862:              beq          t1, gp, 866f
                  srl          a2, s5, t3
                  slt          gp, ra, t2
                  xori         s5, gp, -1403
866:              sll          s9, gp, t5
                  srli         s11, t3, 27
                  srli         s8, t5, 0
                  slt          s2, a4, s5
                  beq          t4, s6, 887f
                  bltu         s0, s7, 888f
                  xor          a0, s8, a3
                  add          s2, s11, sp
                  srl          s10, tp, t3
                  auipc        s10, 1028216
                  beq          t5, t5, 885f
                  bltu         s7, s3, 896f
                  sub          s0, t6, a2
                  andi         ra, t4, 378
                  srli         s9, s11, 28
                  bltu         s11, tp, 884f
                  sra          a1, s0, a4
                  blt          a1, t5, 889f
884:              or           gp, s5, s0
885:              xori         s8, a4, -1413
                  slt          t1, s8, s5
887:              slt          a7, t6, a3
888:              add          a0, sp, s10
889:              ori          s7, a3, 497
                  srl          s8, t1, s7
                  sra          s11, s8, t5
                  ori          t2, s3, -321
                  slli         s11, a7, 6
                  xor          s11, a5, s1
                  auipc        t3, 35620
896:              sub          t4, s0, a0
                  sltiu        a0, t1, 2032
                  add          zero, s1, t3
                  sll          gp, t3, a7
                  sra          tp, t0, s11
                  xor          a3, a2, sp
                  and          tp, ra, t1
                  add          s6, t2, a2
                  sra          gp, s8, a4
                  and          t5, s2, s6
                  sll          s2, s9, s0
                  lui          tp, 222378
                  blt          t0, t2, 918f
                  slt          s9, s6, a5
                  slli         a1, t4, 19
                  nop
                  sltiu        s6, t2, -690
                  auipc        s8, 924162
                  blt          gp, a2, 933f
                  srl          a3, s0, zero
                  sltiu        s2, s0, -531
                  srli         t4, s10, 13
918:              lui          t3, 76231
                  sltiu        a5, ra, 145
                  slt          t3, a6, t5
                  add          a1, a0, a6
                  lui          s2, 845618
                  add          s7, sp, s8
                  lui          a3, 431761
                  slti         s6, s10, -810
                  sub          s2, s6, s8
                  slli         ra, sp, 1
                  srai         ra, s8, 11
                  ori          a1, s2, 1879
                  sltiu        a5, t2, 680
                  beq          s11, a4, 938f
                  andi         s4, t0, -729
933:              sll          s3, s8, s4
                  andi         tp, a3, -815
                  slti         s3, t2, 1603
                  sltiu        a3, a5, -1217
                  sra          a4, a3, a2
938:              sltiu        s6, a6, -1201
                  srl          t1, a4, s0
                  beq          s11, a5, 947f
                  sltiu        t3, s4, -1072
                  srl          a7, a0, s10
                  srai         t2, s11, 16
                  andi         s0, gp, -674
                  sra          a7, a6, a3
                  xori         s2, t3, -2047
947:              or           t2, t6, s10
                  bne          t4, t6, 957f
                  sltiu        t6, s1, 1611
                  bltu         a4, s2, 961f
                  slt          s11, ra, s8
                  srl          t3, s5, t5
                  slli         gp, s2, 27
                  srli         s4, s1, 15
                  xori         s10, a2, 1076
                  sub          t5, s6, t1
957:              nop
                  add          s6, sp, a6
                  sll          a5, s7, sp
                  xor          zero, s8, t6
961:              srai         s1, s8, 5
                  slti         a4, s6, -796
                  nop
                  ori          a4, s9, 2003
                  xor          t6, s7, gp
                  bge          tp, a4, 972f
                  nop
                  blt          s3, a4, 971f
                  bne          s10, t3, 971f
                  bgeu         a2, s8, 976f
971:              sra          t3, s10, s8
972:              sra          s10, a3, t1
                  sub          s1, s6, s6
                  sra          ra, a1, sp
                  lui          gp, 162613
976:              bne          a0, t2, 992f
                  beq          a5, t5, 997f
                  blt          s4, s5, 998f
                  sltiu        t2, ra, -1987
                  sra          zero, s7, s2
                  beq          t3, s3, 993f
                  srai         s4, s2, 31
                  sub          s5, ra, s11
                  and          t6, s4, a6
                  sltu         ra, a6, a1
                  xor          a7, s3, t5
                  sra          t2, zero, t1
                  add          t5, zero, s1
                  sltiu        a4, a7, -1419
                  sll          s4, t1, s3
                  bltu         a5, t6, 1003f
992:              srai         s9, t1, 26
993:              bltu         t2, s3, 1003f
                  bltu         s11, s3, 1002f
                  blt          s11, s7, 1007f
                  beq          s2, t3, 1007f
997:              bne          sp, s0, 1004f
998:              bgeu         a6, sp, 1001f
                  srai         t2, t6, 15
                  andi         s7, s1, 1530
1001:             slli         s7, a5, 9
1002:             sltu         ra, s7, zero
1003:             sra          s9, s11, t5
1004:             add          s6, s10, tp
                  slt          tp, ra, a4
                  bge          a3, a7, 1013f
1007:             addi         s8, s6, -50
                  lui          s9, 109113
                  auipc        gp, 857629
                  sltiu        a2, a7, -1300
                  nop
                  sub          tp, sp, s7
1013:             lui          t4, 1013913
                  bgeu         a3, a6, 1031f
                  bgeu         a2, t3, 1024f
                  add          s7, s1, s6
                  addi         t2, zero, 2 #init loop 1 counter
                  xori         s0, a2, -1434
                  addi         s1, zero, 12 #init loop 1 limit
sub_4_1_1_t:      lui          ra, 210180
                  addi         t2, t2, 10 #update loop 1 counter
                  addi         tp, zero, 10 #init loop 0 counter
                  andi         gp, s4, -79
                  andi         a2, a4, -2001
                  srai         ra, t0, 4
                  addi         s0, ra, -836
                  srai         a4, s11, 15
                  slt          s7, a5, s4
                  add          ra, a5, s10
                  addi         t1, zero, 10 #init loop 0 limit
                  slt          s9, a6, s1
sub_4_1_0_t:      sub          s9, t6, t5
                  srai         a4, a2, 25
                  addi         tp, tp, -7 #update loop 0 counter
                  bgeu         tp, t1, sub_4_1_0_t #branch for loop 0
                  bne          t2, s1, sub_4_1_1_t #branch for loop 1
                  lui          ra, 254894
                  or           tp, zero, a7
                  addi         t1, s1, 845
                  srli         a5, s6, 21
                  srl          a7, s3, a5
                  nop
                  bge          s5, a1, 1033f
                  sub          t2, t1, s9
1024:             srli         s7, ra, 13
                  sub          s3, gp, s6
                  sltu         s9, a0, a6
                  bge          s9, s4, 1035f
                  srai         a0, t1, 4
                  sra          a0, s5, a2
                  srli         t5, s2, 24
1031:             srli         s5, s10, 31
                  xor          s0, s10, a1
1033:             nop
                  xori         t3, s3, 269
1035:             and          a2, t0, s10
                  ori          t5, a2, 901
                  sltiu        s5, a1, 1415
                  add          t2, s6, a7
                  slt          s5, t6, s2
                  add          s1, s11, a2
                  sub          t6, tp, a0
                  sll          a5, s7, s1
                  blt          a3, t0, 1044f
1044:             andi         s9, s5, -1799
                  add          s0, tp, sp
                  nop
                  bge          a6, t3, 1053f
                  and          a7, s6, a7
                  srli         t3, a4, 10
                  ori          tp, a3, -530
                  auipc        t5, 1019334
                  lui          a0, 583352
1053:             sll          s2, s0, t0
                  blt          a2, a2, 1073f
                  srl          s1, s8, t4
                  srl          a4, s1, a6
                  sub          s5, a2, s5
                  slli         ra, s3, 9
                  lui          s1, 1043920
                  andi         ra, a2, 566
                  auipc        s2, 182519
                  blt          s6, a7, 1074f
                  slti         a2, t4, 1591
                  sll          s11, zero, a0
                  nop
                  sltu         s8, s1, s11
                  slt          t6, t4, s4
                  bgeu         t6, s4, 1070f
                  nop
1070:             slti         t2, t6, 1180
                  sra          s2, a3, a4
                  sra          a7, a0, zero
1073:             nop
1074:             andi         s4, a5, -1078
                  bne          a4, ra, 1091f
                  sub          s6, t3, t5
                  blt          s10, a2, 1086f
                  or           s0, s1, a4
                  bne          t1, s2, 1091f
                  andi         t3, s9, 827
                  slti         s3, s7, 1447
                  bgeu         s5, zero, 1101f
                  slti         a3, a1, -425
                  sll          s1, a2, t2
                  srl          t1, t0, s3
1086:             beq          a6, s1, 1103f
                  sub          a1, gp, ra
                  or           t3, a2, a5
                  sra          s7, a5, sp
                  xor          a3, s1, a4
1091:             srl          t6, s11, s2
                  sub          a7, s11, s6
                  xor          t5, s8, s8
                  slli         a1, s7, 22
                  xori         s10, s4, -1890
                  sltiu        s9, a4, 427
                  xori         s7, t5, 12
                  and          s6, s3, s6
                  sltu         t5, s6, t2
                  slli         a1, a4, 24
1101:             auipc        t5, 829612
                  sltiu        ra, s7, 1312
1103:             nop
                  sll          a3, a2, a7
                  add          gp, a1, t3
                  and          s1, s0, a6
                  xor          t2, s6, t3
                  srai         a1, s6, 20
                  bgeu         t4, a4, 1112f
                  auipc        t5, 178269
                  blt          t6, s8, 1117f
1112:             sltu         s6, a1, a6
                  andi         s6, s0, -1746
                  sll          t1, a0, t6
                  bgeu         a1, a2, 1126f
                  ori          t3, zero, -538
1117:             nop
                  sub          a1, a3, t0
                  sltiu        gp, a0, 1873
                  sltiu        t4, s5, 1671
                  sll          t2, a7, zero
                  sra          a0, t0, tp
                  lui          a4, 577762
                  bne          s1, a5, 1135f
                  srai         s0, a0, 23
1126:             slli         s6, sp, 6
                  nop
                  lui          s8, 124320
                  add          ra, t3, s1
                  sltiu        a1, s8, 1254
                  and          s9, s8, s0
                  sltiu        s8, a1, -1732
                  xori         a7, s0, -1505
                  srli         s10, a0, 16
1135:             srli         s5, s5, 4
                  lui          a0, 353421
                  slt          tp, a7, ra
                  sltiu        t5, tp, 924
                  slti         a0, s0, 361
                  srl          t1, a7, s8
                  blt          sp, a3, 1145f
                  xori         s1, a5, -243
                  beq          a2, t0, 1153f
                  and          s8, a5, sp
1145:             sra          zero, a0, a6
                  srai         a4, s2, 8
                  srl          s6, t1, a4
                  blt          ra, a2, 1158f
                  srli         a1, t2, 8
                  bltu         t1, t0, 1162f
                  bge          t4, s6, 1157f
                  add          t1, s10, s4
1153:             xori         t4, s1, 515
                  addi         s8, s1, 709
                  sltu         t2, s2, s10
                  or           tp, s6, ra
1157:             srl          t4, a1, s9
1158:             or           ra, t1, gp
                  beq          t2, t3, 1172f
                  bgeu         ra, a4, 1180f
                  bltu         t0, s9, 1171f
1162:             srli         t6, t5, 23
                  or           s3, s9, sp
                  and          t2, gp, s3
                  ori          s7, a0, 223
                  and          a7, ra, a4
                  sll          s6, t1, a7
                  bltu         s4, s9, 1188f
                  bltu         s3, a0, 1179f
                  nop
1171:             slti         t1, s11, -1914
1172:             auipc        a1, 389732
                  sra          s9, s11, a6
                  add          t1, s5, s4
                  slt          s4, tp, t4
                  beq          a4, a0, 1196f
                  sltiu        s2, s6, -358
                  bltu         s1, s0, 1191f
1179:             ori          t1, s3, -2046
1180:             sltu         a0, sp, s7
                  nop
                  add          s10, t6, s6
                  addi         a5, t4, -394
                  xori         s5, t5, -1695
                  xori         a4, t1, 764
                  bge          t2, a7, 1193f
                  bltu         s7, t6, 1193f
1188:             srai         s9, s9, 24
                  and          t4, a4, s8
                  sltu         a5, t1, t0
1191:             sltu         a7, s5, t4
                  xori         s2, a4, 15
1193:             bne          t0, t5, 1205f
                  sll          s9, t2, s7
                  srl          t3, gp, s5
1196:             lui          zero, 474449
                  ori          a3, gp, -1291
                  addi         t6, gp, -968
                  sll          s9, s0, a2
                  add          s2, a7, s11
                  addi         s11, s3, 966
                  addi         a7, a2, -626
                  slt          s6, t3, t4
                  sub          s4, ra, s10
1205:             blt          a5, t4, 1206f
1206:             srli         t6, t4, 18
                  xor          a1, a6, a4
                  blt          a2, s3, 1220f
                  bge          t5, s0, 1220f
                  srai         ra, s5, 7
                  andi         t2, zero, 28
                  slti         t5, t5, 1054
                  slti         s8, a6, -1639
                  sltiu        a4, s6, 1354
                  andi         s2, s11, -285
                  slti         s7, s8, 1688
                  srai         s11, a2, 3
                  bge          a2, a0, 1228f
                  srl          a2, a1, a1
1220:             srai         s7, a6, 5
                  xori         s6, t5, 1896
                  sltiu        s3, s6, -246
                  srai         gp, a7, 13
                  bne          a4, zero, 1227f
                  auipc        s4, 571923
                  xori         s10, s9, -1313
1227:             slli         zero, s5, 22
1228:             srl          a5, t4, t4
                  blt          a2, s7, 1246f
                  bne          s8, t6, 1236f
                  nop
                  addi         a4, zero, 10 #init loop 0 counter
                  addi         gp, t6, -1437
                  slli         t5, ra, 2
                  sltiu        s3, s9, -1573
                  and          ra, s3, t6
                  srl          t4, s8, s1
                  sltiu        a0, s1, 513
                  sltiu        t1, s9, 1584
                  addi         t3, zero, -4 #init loop 0 limit
                  slt          s5, s4, sp
                  or           a1, s0, a1
                  add          a0, a1, t0
                  lui          t1, 86139
                  nop
                  auipc        a3, 372972
                  sra          s3, a1, t2
                  ori          s9, s5, 617
                  srli         gp, a3, 23
                  sltu         s1, sp, s9
sub_4_2_0_t:      sltu         s2, t0, t6
                  slt          tp, t1, a2
                  slli         a1, a0, 10
                  addi         a4, a4, -7 #update loop 0 counter
                  auipc        a7, 973527
                  slti         s10, a7, 159
                  sll          s2, s2, s10
                  xori         s5, ra, -70
                  srl          zero, sp, a6
                  bge          a4, t3, sub_4_2_0_t #branch for loop 0
                  srai         a2, s8, 29
                  srai         a1, t3, 8
                  bgeu         zero, t2, 1244f
                  add          a4, t1, a6
                  bltu         s10, t1, 1251f
1236:             sra          s0, a1, t2
                  beq          t2, s3, 1248f
                  beq          zero, t6, 1242f
                  sltu         tp, s7, a4
                  slt          s5, s10, s1
                  slti         s3, a3, -1589
1242:             sll          s6, a3, t4
                  sltiu        t4, t0, 386
1244:             nop
                  nop
1246:             xori         a4, s7, 160
                  slti         s4, ra, 684
1248:             xori         a0, s0, -682
                  bne          gp, t3, 1252f
                  sltu         s10, t3, t1
1251:             nop
1252:             sub          a4, s1, t6
                  xori         s11, a3, 1540
                  lui          a3, 341134
                  ori          ra, t0, 621
                  blt          a1, s3, 1275f
                  sltu         zero, a6, s0
                  bgeu         t3, s1, 1278f
                  andi         s4, t3, 733
                  srli         t3, zero, 21
                  or           s2, zero, t0
                  slti         ra, a5, 507
                  andi         t6, tp, -1603
                  nop
                  srl          a4, a0, t2
                  srl          s6, s4, a5
                  bltu         t6, a2, 1276f
                  bgeu         s6, t3, 1278f
                  nop
                  and          ra, t1, s8
                  srai         t4, t3, 29
                  bltu         t4, gp, 1281f
                  bne          s8, a2, 1280f
                  bgeu         a2, s4, 1276f
1275:             bge          zero, a3, 1282f
1276:             add          s11, t5, a0
                  slt          s2, gp, a3
1278:             xori         t5, a2, 2015
                  nop
1280:             bgeu         s2, a2, 1282f
1281:             bne          s0, t0, 1282f
1282:             addi         ra, s7, 1919
                  sra          t2, t0, gp
                  lw           s8, 4(sp)
                  sltiu        t6, s7, 1241
                  sra          t1, s10, a0
                  addi         sp, sp, 20
                  lui          tp, 345245
                  srli         a2, a1, 19
                  auipc        s1, 398498
                  slt          s11, t4, s8
                  srli         s0, s0, 4
                  slt          a1, tp, zero
                  xor          tp, a0, s11
1857:             addi x26, x24, 0
1857:             jalr x26, x26, 0
sub_1:            auipc        s0, 741595
                  or           t2, t0, s8
                  addi         sp, sp, -60
                  sw           s8, 4(sp)
                  nop
                  sltu         s10, t1, t0
                  auipc        a5, 1027906
                  ori          t4, s0, 894
                  lui          s6, 410446
                  xor          zero, a1, a4
                  srai         s2, t5, 10
                  slli         s8, tp, 5
                  auipc        s5, 976782
                  xori         s7, s0, -1351
                  sra          a1, s1, a2
                  addi         s11, s1, 21
                  xor          t4, t3, s6
                  sub          gp, s1, gp
                  sltu         a4, s8, s6
                  srl          gp, s0, t4
                  bne          s3, s9, 15f
15:               or           s1, t1, t6
                  addi         s6, t3, -1017
                  sll          a0, s0, s7
                  lw           s8, 4(sp)
                  or           a7, t1, t2
                  add          s10, s6, a6
                  srai         s7, s7, 14
                  addi         sp, sp, 60
                  auipc        s11, 197253
30:               addi x1, x24, 0
30:               jalr x1, x1, 0
sub_5:            sra          gp, s2, s7
                  sltiu        s11, s3, 359
                  bge          sp, s4, sub_5_stack_p
sub_5_stack_p:    addi         sp, sp, -56
                  sw           s8, 4(sp)
                  auipc        t6, 215187
                  bge          s5, s10, 7f
                  add          a3, a2, a5
                  auipc        a1, 830817
                  addi         s0, t1, -1993
                  bne          a1, a3, 15f
                  xor          t2, ra, s4
                  srai         s4, s1, 0
7:                add          s3, s3, t3
                  slli         t6, t6, 17
                  lui          a3, 817682
                  andi         s11, t3, -833
                  bne          s0, s4, 20f
                  sltu         s8, t1, s3
                  slt          tp, a2, s10
                  auipc        a2, 668462
15:               slli         s4, ra, 12
                  andi         tp, sp, -1705
                  sll          s4, gp, t6
                  and          t3, a0, t4
                  sll          t2, sp, s3
20:               ori          t5, s8, -866
                  lw           s8, 4(sp)
                  sub          s9, zero, a4
                  srai         a2, a6, 31
                  addi         sp, sp, 56
                  sltu         s11, s3, a1
                  slli         s2, s9, 0
33:               addi x10, x24, 1
33:               jalr x10, x10, 0
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
.word 0x141ebeab, 0x78297b4e, 0x5458a415, 0xee1587c6, 0x14bb7a8e, 0xb2174513, 0x1b89f1f2, 0xaac38e4d
.word 0x8b3d8b4d, 0xfe778acb, 0x3bbb9ce6, 0x2e906dd1, 0xa319575c, 0x2047558a, 0x684e5266, 0x3e27bb4a
.word 0x6d389ae8, 0x5e4a0597, 0xdb8d1a12, 0xf6abb711, 0x9c3f2eec, 0xe8a1907c, 0x9c1a8d04, 0x1f47cce2
.word 0xd6bf2254, 0xb0d1fe78, 0x5c8cff34, 0x1a84e02c, 0x2c711033, 0x82211272, 0xbd0bbb17, 0xba10ea5d
.word 0x2c9450d7, 0x1b3b1168, 0xcf305099, 0xec22c7c8, 0xeaad5b4c, 0x56a8cef9, 0xaddcda6a, 0x538df040
.word 0xaf01de5f, 0x142d1394, 0x1b294ded, 0xcb3064df, 0xba2b0c4a, 0xe2918877, 0xf41131bb, 0xeb148f8f
.word 0x9da9476d, 0x9f4cb334, 0x2954e849, 0xb5d42e9f, 0x520ffb4d, 0x4f8af7b2, 0xf74b305c, 0xf5a20573
.word 0xbd16b184, 0xbe186c56, 0x90a7d26f, 0xa58891c1, 0xf844d5f2, 0x57a1108f, 0x62411974, 0x6139fd9c
.word 0x19d14ea4, 0x263c728b, 0x49cc36d1, 0x82decffa, 0x2ea5cc21, 0xb4ff68b1, 0x71e7fda3, 0x0b2f97e8
.word 0x6d7b1929, 0x337b0273, 0xf31bfacb, 0xa0d8c7f3, 0x11aab39f, 0x8d07c770, 0xff0571ab, 0xa8c3a15c
.word 0x43bc3b34, 0xa3446eba, 0x935aaef2, 0xc801202a, 0xc32ea475, 0x7b8a041a, 0x71a2db2e, 0x3387a77d
.word 0x1eee2aed, 0x5d99cf94, 0xf3af3b7a, 0xd92d0ebf, 0x876224a6, 0x7e25daee, 0x8001834c, 0xd82667b8
.word 0x4fcb6e95, 0xd9d46a7f, 0x04d1241b, 0x5d5a9293, 0x08dbb605, 0x628a1aca, 0x517a2c58, 0xbd4c5456
.word 0x083357c1, 0x954d25d0, 0xc2999678, 0xbc58b49e, 0x0aeceb5a, 0x709e6d00, 0x5f8f90bc, 0x1bb25c8b
.word 0xdc82a03b, 0xb7bfeb04, 0x064aca3e, 0x3a0e28e6, 0xf024e9c6, 0x3e6e8102, 0x863a2c36, 0x033b6e7d
.word 0x25fcac58, 0x97d253f3, 0x0c49ad87, 0xeef9fd1b, 0xcdb589d9, 0x5fe87ada, 0xe4dc48da, 0x7f0d4480
.word 0x4ce73687, 0x8f19a9c6, 0x44953751, 0x0b7872c5, 0x68d7fe37, 0xa9308ec7, 0x24933d42, 0xde655741
.word 0x7412882e, 0xe86032a7, 0x701da9cd, 0x639e2cd5, 0xaf5294be, 0xe741f214, 0x35b2a9b9, 0x1840b93c
.word 0x7e27c994, 0x1ac050c0, 0x9f335441, 0x9a5a3a7a, 0x458be1e6, 0x737678ea, 0x201a9fed, 0x66762e39
.word 0x4d736b61, 0xaffd5c02, 0xabec743a, 0x152559e9, 0x51bbc803, 0xf60a0f3a, 0x2a960890, 0x6458b645
.word 0xe5b8b0aa, 0xe64502d6, 0x649a110a, 0x09b9b759, 0xf44c0ba1, 0x59c355e2, 0x5c6890d8, 0x75d2c294
.word 0x2355a233, 0xd1738ebd, 0x281ec890, 0x962a0b76, 0xdbab034a, 0x9ce0e495, 0xab9ba4e0, 0x1006bed1
.word 0x393c9eb4, 0xa4eb920c, 0x02f6cdd8, 0xd1b01004, 0xbd13719d, 0x1ffe594e, 0x8a70994c, 0x891ddfac
.word 0x30bdeb38, 0xf63a609a, 0xf4c316e2, 0x6d0386b0, 0x435653fa, 0x7f831561, 0xa19d072e, 0x260c8350
.word 0x849662dd, 0x28f27f52, 0x2ca392a6, 0x1281dab8, 0x7f7d4379, 0xa62e2514, 0x9719a4d9, 0xfae5f6bb
.word 0xe3d8b1e7, 0x121a655c, 0x6195570f, 0x8ee6c8bf, 0xca8b174b, 0xd841bc03, 0xebc753c9, 0x1825738f
.word 0x25e7e0e3, 0xf5def8f5, 0x4ef1952c, 0x58de4905, 0x74c7d153, 0x2b8fda07, 0x28aaec36, 0xa69c4a97
.word 0x3e6fa23c, 0xf2b93eb0, 0xc3580cc3, 0xf9c3b622, 0x0d6e1ff4, 0xee31407f, 0x418a8758, 0xe5b700a6
.word 0x2aebb2a9, 0x86de666a, 0x0b4be5d8, 0x3dc76c49, 0x7cf3dd86, 0x8fa4d7ce, 0x8b0bdc59, 0x71866814
.word 0x4a87c6d6, 0x87ff2dc2, 0x946eb27a, 0x85b32495, 0xa1b8daad, 0x92a6e6bc, 0x649963c9, 0x71b7752d
.word 0xffd33bab, 0xac5e2742, 0xdb6af505, 0xa56dd408, 0x9eb0bf0f, 0xa341052f, 0x4ad88504, 0x4a427996
.word 0x8fa88d68, 0x75687f6d, 0x24e03328, 0x185e0e8e, 0x39751b0f, 0xa8b9e6cf, 0xf35695b7, 0x5d12b38b
.word 0xb37232c9, 0x828b50de, 0x266e9c9c, 0x264db081, 0x0ad74fcb, 0xa9db7342, 0x94835f43, 0x7eeed9df
.word 0xbb8102af, 0xe321439c, 0x0900cbcd, 0xc4addbc1, 0x4d2897d8, 0xdea24495, 0x00315ae8, 0xc9525a9e
.word 0x6d4aa9dd, 0x5a3e18ea, 0x36f04965, 0x61ca6077, 0xf28e616d, 0x13a25d8e, 0x6975b36e, 0xd91b647c
.word 0xf4530c8d, 0xeef97505, 0xbed8888e, 0x0ec0eaae, 0x44d70254, 0xac1c2cab, 0xd7970d50, 0x643bca26
.word 0xae8ec835, 0x2b282865, 0xa264272e, 0xdb1f983c, 0xe5ca4842, 0x91042368, 0xde468cb8, 0x3c0a971d
.word 0x557ba27c, 0x4b6bfbbf, 0x59e51956, 0x7ab57d83, 0x63e70d60, 0xa89d281f, 0x8b325a82, 0x6f934f71
.word 0xa43b7f20, 0x1ea6b0d5, 0x6e7ed5a6, 0x0d9b161e, 0x72fd1f80, 0x59668a8f, 0xeceb69b1, 0x11ea9b1f
.word 0xd857b725, 0x3d94fd3f, 0x902a7222, 0xb58d1bb5, 0x4005e490, 0x2488622a, 0xa67bbc8b, 0xef853803
.word 0x0c1a78cd, 0x0bf5e0c2, 0x34aa4d00, 0x17840d12, 0x886dafb2, 0x2d034351, 0x73a10f5a, 0xbcb5ed30
.word 0x24e7141f, 0x3827ad5e, 0x2200b5f9, 0xc01dd77e, 0x1b54ba86, 0x9baecdad, 0x8b588e7b, 0x16171429
.word 0x06ae00ad, 0x6f4e8d17, 0xfe402b85, 0x703985e6, 0x719f6967, 0xb4408882, 0x53abdb96, 0x0c29507c
.word 0x7ec08005, 0xfbc12311, 0x486dd046, 0xa2febd57, 0xf0bb068a, 0x4d0c6bb4, 0x281dca52, 0xcc4548fe
.word 0x0c7c0e82, 0xb6102071, 0xf24ab42f, 0xfbbc1993, 0xdaffef3c, 0x5b1f4244, 0xa1681219, 0x7769c11c
.word 0x0f14b9e9, 0xd9011944, 0x0ede87ba, 0xc1e42bab, 0x5fa255b9, 0x206e04e2, 0x107e5342, 0x38f6baf8
.word 0xcd16c87e, 0xa7ea4058, 0xfd4731e8, 0x9a080c46, 0xde074d4c, 0xfdae0ed0, 0x750391a8, 0x8ee14ebb
.word 0xa10a15a6, 0xf4857ee2, 0xb0f1ca52, 0xa3c4f837, 0xe7edea58, 0xb75020b1, 0xc347d3c6, 0x4c7a68ee
.word 0xfcfa9dfd, 0x9ccf5076, 0x65e40bdb, 0xfb46edc0, 0x6feb9073, 0x9f44149a, 0x7edce543, 0x42d87b5d
.word 0x3f77538a, 0x6a4317f5, 0xa7a6133c, 0xf102aef7, 0x64327ad7, 0xaa7683ab, 0x4b4182a2, 0xf7f3e4bb
.word 0xcdd3d73b, 0x28984f42, 0x51083514, 0x49ac97fc, 0x192dc75a, 0xe6bc8fed, 0x1b7b9f4c, 0x3231b1d1
.word 0xcffa0515, 0x5e1f2d3b, 0x4b6b3fee, 0x2d56e84b, 0xfd163382, 0xa1b1c323, 0x028cc544, 0xe20a520a
.word 0x9540abbd, 0x9833e026, 0x44a6a49d, 0xc4281a41, 0xefeb1a81, 0x49e1111e, 0x2173b1e5, 0xafca40bb
.word 0x07e778c8, 0x1feeab01, 0x4d0ecd9f, 0xfccffaa0, 0xec0a479e, 0x68277b66, 0x6387eca2, 0x9f200e0a
.word 0x05d31ab6, 0x9ebca6e5, 0x79464e94, 0xb3144168, 0xfa86f754, 0xd2e50ce2, 0x9d6f095e, 0x26cc426a
.word 0x2232d59e, 0x341369db, 0x4b7ebd7e, 0xb68fe024, 0x04ed77e4, 0x06cae921, 0x21e6b90a, 0x53c5104d
.word 0x70ad8c3e, 0x48831441, 0xecaf4e4a, 0xd60ec0e4, 0xf01f6fbc, 0xc6d2b6d4, 0x37375fae, 0xc0c902c2
.word 0xae221670, 0x161f7d34, 0xe1ffb5d1, 0x1b390b26, 0x0bb65dfb, 0xd9b0ecfb, 0xf4d6550d, 0xff1219fe
.word 0xa32fe5bb, 0x84cfc7f3, 0x1dd43e27, 0x849015e7, 0xe988b0fc, 0x9506774b, 0x3f6d28d2, 0xa5b7b748
.word 0x3d7cbff8, 0x4327fab0, 0xd88fe4bb, 0xd72ee524, 0xe8506792, 0xac1d0ea5, 0x7a68e9fb, 0xa7fb63b7
.word 0x65f6e3fe, 0xc6e78dfc, 0xb0b7278a, 0xb918b1c6, 0xf63a2539, 0xa2ed22d5, 0x321bca11, 0xca497676
.word 0x02121cfb, 0xf3302600, 0xbd4905e3, 0x08471408, 0x55b4c997, 0x6c805128, 0xd12c8261, 0x1f37e7dd
.word 0x9fd72d91, 0x6fb4c3fc, 0xb703db5e, 0xa322b0ce
.section .region_1,"aw",@progbits;
region_1:
.word 0xabc3e0d8, 0x4453180e, 0x21ab5fd6, 0x956ecfff, 0xf9898289, 0x0feb71d0, 0x737e4b07, 0x96ab950f
.word 0x35615f8b, 0x59604cdf, 0x02e1793b, 0x4727c491, 0xfa3d6a5b, 0x9165967b, 0xa567463d, 0x6f763c4a
.word 0x9b7707e6, 0xac6a7821, 0xe1b189fa, 0x8350c0ae, 0x3ec67486, 0xfee4874b, 0x2c3ba188, 0x30b59e44
.word 0x445958d4, 0xb1c74d29, 0x1ed257ca, 0x88eb8dca, 0x7fea8104, 0xcf0fca59, 0xd6c3956f, 0xc275bdde
.word 0x003c4a71, 0x3a77b0ab, 0x66b5d8d9, 0x7be9bf9b, 0xd75cfc04, 0xcc62c9fd, 0x27213a39, 0x63fc0357
.word 0xd33f8959, 0xd3e9af09, 0x422add2b, 0xf2b97c9f, 0xcf49652a, 0x498cc76e, 0xadafaeb2, 0x4ec6165c
.word 0x6b5d5862, 0xc974bd5c, 0xa48ed8a2, 0x863356b0, 0x183ed921, 0x0d8d62a7, 0x9a18e66e, 0x49db97e3
.word 0x00a092f9, 0xd75d4ee9, 0x09f91e16, 0x3c636636, 0x7a7ca9a9, 0xd3f7ef0d, 0x21b2f27d, 0x3d3d1273
.word 0x8b632dc7, 0xb4ff359a, 0x946f1539, 0x763c7a6e, 0x272cb8f4, 0x451ca56b, 0xb627c950, 0xf01f116c
.word 0x5cbdc701, 0x43cec6f1, 0xd7ff03aa, 0x12e2ff1b, 0x493848a5, 0x4cf168eb, 0x3349c840, 0x836a3345
.word 0xf8dcbec6, 0x8b3ff2fe, 0x1a1c1f39, 0xa9d36b08, 0x9e604b51, 0x7e90f0dc, 0xc4263102, 0x6cbbca77
.word 0xb44a33a0, 0x3f6ece2a, 0xa5ef5c2c, 0x4b43a151, 0xcfd35b1e, 0x754a2411, 0xc9992f12, 0x2840501e
.word 0xd52474bb, 0x0afed13f, 0x71c8082a, 0x1ebcadd0, 0x2d217bfd, 0x75800b09, 0x43443946, 0xf1181b10
.word 0x3c212cd1, 0x39d1788c, 0x0630248f, 0xeb24f3af, 0x839763c2, 0xb32f4d34, 0x0dedeb0a, 0xba953b90
.word 0x785a2354, 0xba8d8dda, 0x897847ac, 0xdbd118a3, 0xe56d9be4, 0x96b61582, 0x1072b047, 0xa9995071
.word 0x15d50409, 0xe1051853, 0x3382da46, 0xdfb4ffbd, 0xc55d06ec, 0x6d3b2270, 0xa7699d20, 0xbdeffd0a
.word 0x2ccfd59b, 0xb492a5bc, 0x8d799acc, 0xea947be1, 0x492a59ae, 0x24b26465, 0x5bb1551f, 0x7d3bc858
.word 0x5196ae06, 0x85c3c402, 0xf5c594bd, 0xdd893355, 0xe040017d, 0xdba291bd, 0x11be5be9, 0xc641c4b4
.word 0x4df6559e, 0x609f0a1d, 0x36b65579, 0x540fb853, 0x9a3f78b8, 0xacccb72a, 0xb41af620, 0x2266dee1
.word 0x71a2dc10, 0x900ca17e, 0xcad2dfd5, 0x97150f86, 0x647a5264, 0xd2575420, 0xb4b55565, 0x9265efcd
.word 0xd1bdb49b, 0x8553a461, 0x5df4b201, 0xe7e51438, 0xf3d45a97, 0x1d9ee11c, 0xe6b64325, 0x857c5713
.word 0x1c2b5ff4, 0x0975fe4f, 0x5f444786, 0x5b82ef6c, 0xb67b3d27, 0xbb839848, 0x7b85c499, 0xc99b62c8
.word 0x9e8ab761, 0xdb51fd0a, 0x5363e96d, 0xd3918984, 0xc0d0df16, 0x141fc0dd, 0x280e42c4, 0x99d18670
.word 0x1fe808ef, 0x52bd021c, 0x108f8b51, 0xea97abf1, 0xf4f2ff7e, 0xc3589ee5, 0xd0aab3cf, 0x5ef97fb1
.word 0x9459a970, 0x0dc1cfab, 0x5bd4f832, 0xe91d069b, 0xfd8d2d79, 0x3e963e69, 0x3d9abdb0, 0xd5e9b90f
.word 0xeb30187b, 0xc5f6186a, 0x07d689c9, 0x56d6afe9, 0xf9e0f732, 0xa2a3cbba, 0x7eb5b44f, 0x099f2e59
.word 0xad148165, 0xf69d9f87, 0x459d2975, 0xd08ef305, 0x972c9d40, 0x54041f5b, 0x3d0aefe0, 0x4eaa3165
.word 0x83855833, 0x01b8df83, 0xc5162192, 0x29fe9e90, 0xeca13d02, 0x7d6de34b, 0x807781ee, 0xa101b295
.word 0x9764cd60, 0xe6f4017c, 0x4774ffde, 0xafc93dfb, 0xfc759709, 0x9e9ccec1, 0xe1b93ae6, 0x2fae6793
.word 0xd599be7e, 0x17929f7e, 0xf8817519, 0xca4c3eb2, 0x8e8097f1, 0xed85ff19, 0x5c7332af, 0xe3b020a5
.word 0x57f79739, 0x913ab8ca, 0x455c6600, 0xff974d57, 0x5f13963b, 0x5d110b6a, 0x0582c145, 0x83fa03f3
.word 0xc7cf80af, 0x979c8620, 0xa67f7ee6, 0x21d32e93, 0x4eb94b90, 0x27bea786, 0x896830c2, 0x8e7e8e1e
.word 0x2af150ad, 0x34fca31e, 0x0a57a9fb, 0x8af4f4ae, 0xa7ef2630, 0x14ac7eea, 0x8dfaa07a, 0x17614d05
.word 0x2d340527, 0xc473bc10, 0xf2621e65, 0x4cea58c8, 0x5db01703, 0xcc45d4be, 0x68a81fd8, 0xed09bffe
.word 0xbe5ab159, 0x5f9238c7, 0x772f0428, 0x74feef0a, 0x8c2c7be3, 0xec57c27f, 0xa4d3c14c, 0xb50222ec
.word 0xb3d14e9b, 0xd9792ead, 0x6489a4cc, 0x6e6a2ce7, 0xc8fd306d, 0x0fd23ffb, 0x737038fe, 0xc9567858
.word 0x030f5fc0, 0x36d8a777, 0x8e7d7433, 0x7d57e6b2, 0x49b19c64, 0xf8554977, 0x33e093f9, 0x09abd16f
.word 0x1eab637c, 0xdaf01cb7, 0xc0831c52, 0x32865926, 0x322a268f, 0x0d0bc61c, 0xea71b8da, 0xf376ee15
.word 0x34d03618, 0xcd19a5a2, 0x6d6bcbb4, 0xaaf7ef37, 0xff2d3274, 0x9070046c, 0x40a01a8d, 0xc4252242
.word 0x15d9cba6, 0x2df3d28a, 0x68210b0d, 0xffdddecc, 0xcf592673, 0xca2f452b, 0xb30b3346, 0xa26187a4
.word 0x4fd4a72d, 0x2f72fb7c, 0x1aec4e3e, 0x72c3f2c6, 0x99b730a8, 0xbdc2baff, 0x8707a75f, 0x075bbf71
.word 0x593897d9, 0x40a028fa, 0x8adfb917, 0x9b880b0a, 0xce682c48, 0x20f27854, 0x63ddf86b, 0x87faaa78
.word 0xf32cae58, 0x9f717e34, 0x888bf3c3, 0xafd86946, 0x98b3ee69, 0x8986c943, 0x8dd79c8a, 0x67582316
.word 0xc7e03eb3, 0xc22e6fd4, 0x5029a930, 0x8d312cb0, 0x492fc34f, 0xa701defc, 0x897b65af, 0x56bee969
.word 0x40b25814, 0x37db0477, 0x54540bbd, 0x559d2c77, 0x249ca590, 0x003e89ad, 0xea8236af, 0xbb8ca580
.word 0x81c885fa, 0xb591bb00, 0x776392e3, 0x1588eb12, 0x1952960b, 0xa392a86b, 0xe3499727, 0x1b40882e
.word 0x4b427264, 0x45532386, 0x233fbece, 0x62321ed5, 0xbb1601ec, 0x71d110fa, 0x82596ea1, 0x379f5201
.word 0x35170844, 0xcbda9f7b, 0x5818abf3, 0xa12fc78c, 0x5a9c2c23, 0x6ea98e8e, 0x67718e07, 0x8e7a2de4
.word 0x67315e21, 0xbb144284, 0xcc7306b1, 0xfba26046, 0x5a208ade, 0x3bb5a427, 0xe02f8399, 0xd2acfa7c
.word 0x9ceea4c4, 0xb4b48d6c, 0x0ae48e53, 0x1de61c29, 0x22b69795, 0x831f334a, 0x1db78123, 0xd47ec1c4
.word 0x60c21623, 0x9b17cee7, 0x406e8d78, 0x96baa842, 0xefde8c89, 0x425b43a6, 0x605a6fe0, 0xb18c7a0d
.word 0xcf19ce5b, 0x8fc13efe, 0xd74bfa85, 0x15e3cc3e, 0x73cc8780, 0x480bc06c, 0xbdb70106, 0x0d4e1736
.word 0x399b2643, 0xe09ae237, 0xe94918e1, 0x2499f29e, 0x328fa865, 0x2e0cd1fe, 0x3082c33b, 0x220b1b28
.word 0x6b93a59b, 0x56b38b31, 0xa3fa5838, 0xc3dab796, 0x2bebbc83, 0x394f8c8d, 0xab09c535, 0xcd890d1c
.word 0x01df6480, 0xad9b46fe, 0x93c4c903, 0x79f7e69e, 0x42e49f81, 0xb9164765, 0xe44107ab, 0x634a8d6c
.word 0x67383ef8, 0x5299ee96, 0x8ad67ff0, 0xc0b7b065, 0x2b646229, 0xd87afcf6, 0x6fef5f16, 0x46932f9d
.word 0x66a503f7, 0x96f8fad2, 0xc055c67c, 0x91440645, 0xff8e7e08, 0x2953e0ec, 0xd9b1ad87, 0x206a7d5a
.word 0x4b9cf100, 0x4b308c8c, 0x002e2985, 0x2905621d, 0x451bbedc, 0x86d66753, 0xe6501ff9, 0x85b27831
.word 0x17f10d6e, 0x93b0b716, 0x44dd89a5, 0xb0014ed7, 0x90413fc5, 0xb88edd9e, 0xf4d96ebe, 0x6fbe861d
.word 0xa3fdf5c5, 0x8e665102, 0x180a9bea, 0xab2afecf, 0xe2168b8d, 0x82ff548a, 0x03938e08, 0x2de948da
.word 0x387d2159, 0x36baff17, 0xb8be9f12, 0xc1ff7000, 0x38ceb5ce, 0xe8ca32b9, 0xbe77fe34, 0x7d2183f1
.word 0x770548cf, 0x42f46c63, 0xf4de9853, 0x4f44723e, 0x18b50762, 0xa01f86a2, 0x2cbc6ee1, 0x044e3118
.word 0x50740492, 0x7f547157, 0x4b5da983, 0x3bd5f134
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
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x16, x2, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_2:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x16, x2, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_3:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x16, x2, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_4:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x16, x2, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_5:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x16, x2, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_6:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x16, x2, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_7:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x16, x2, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_8:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x16, x2, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_9:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x16, x2, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_10:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x16, x2, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_11:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x16, x2, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_12:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x16, x2, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_13:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x16, x2, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_14:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x16, x2, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_15:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x16, x2, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

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
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x16, x2, zero
                  csrr x14, 0x341 # MEPC
                  csrr x14, 0x342 # MCAUSE
                  li x18, 0x3 # BREAKPOINT
                  beq x14, x18, ebreak_handler
                  li x18, 0x8 # ECALL_UMODE
                  beq x14, x18, ecall_handler
                  li x18, 0x9 # ECALL_SMODE
                  beq x14, x18, ecall_handler
                  li x18, 0xb # ECALL_MMODE
                  beq x14, x18, ecall_handler
                  li x18, 0x1
                  beq x14, x18, instr_fault_handler
                  li x18, 0x5
                  beq x14, x18, load_fault_handler
                  li x18, 0x7
                  beq x14, x18, store_fault_handler
                  li x18, 0xc
                  beq x14, x18, pt_fault_handler
                  li x18, 0xd
                  beq x14, x18, pt_fault_handler
                  li x18, 0xf
                  beq x14, x18, pt_fault_handler
                  li x18, 0x2 # ILLEGAL_INSTRUCTION
                  beq x14, x18, illegal_instr_handler
                  csrr x18, 0x343 # MTVAL
                  1: la x5, test_done
                  jalr x1, x5, 0

ecall_handler:    
                  la x14, _start
                  sw x0, 0(x14)
                  sw x1, 4(x14)
                  sw x2, 8(x14)
                  sw x3, 12(x14)
                  sw x4, 16(x14)
                  sw x5, 20(x14)
                  sw x6, 24(x14)
                  sw x7, 28(x14)
                  sw x8, 32(x14)
                  sw x9, 36(x14)
                  sw x10, 40(x14)
                  sw x11, 44(x14)
                  sw x12, 48(x14)
                  sw x13, 52(x14)
                  sw x14, 56(x14)
                  sw x15, 60(x14)
                  sw x16, 64(x14)
                  sw x17, 68(x14)
                  sw x18, 72(x14)
                  sw x19, 76(x14)
                  sw x20, 80(x14)
                  sw x21, 84(x14)
                  sw x22, 88(x14)
                  sw x23, 92(x14)
                  sw x24, 96(x14)
                  sw x25, 100(x14)
                  sw x26, 104(x14)
                  sw x27, 108(x14)
                  sw x28, 112(x14)
                  sw x29, 116(x14)
                  sw x30, 120(x14)
                  sw x31, 124(x14)
                  la x5, write_tohost
                  jalr x0, x5, 0

instr_fault_handler:
                  add x2, x16, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

load_fault_handler:
                  add x2, x16, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

store_fault_handler:
                  add x2, x16, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

ebreak_handler:   
                  csrr  x14, 0x341
                  addi  x14, x14, 4
                  csrw  0x341, x14
                  add x2, x16, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

illegal_instr_handler:
                  csrr  x14, 0x341
                  addi  x14, x14, 4
                  csrw  0x341, x14
                  add x2, x16, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x14, 0x300 # MSTATUS;
                  csrr  x14, 0x304 # MIE;
                  csrr  x14, 0x344 # MIP;
                  csrrc x14, 0x344, x14 # MIP;
                  add x2, x16, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
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
