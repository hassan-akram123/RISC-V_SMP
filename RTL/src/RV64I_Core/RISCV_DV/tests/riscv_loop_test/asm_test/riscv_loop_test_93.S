.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x4, h0_start
jalr x0, x4, 0
h0_start:
                  li x22, 0x40000100
                  csrw 0x301, x22
kernel_sp:        
                  la x18, kernel_stack_end

trap_vec_init:    
                  la x22, mtvec_handler
                  ori x22, x22, 0
                  csrw 0x305, x22 # MTVEC

mepc_setup:       
                  la x22, init
                  csrw 0x341, x22

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x22, 0x1800
                  csrw 0x300, x22 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x0
                  li x2, 0xfc828527
                  li x3, 0xf3cfc279
                  li x4, 0xf3ce2509
                  li x5, 0x43061bbf
                  li x6, 0x0
                  li x7, 0x80000000
                  li x8, 0x0
                  li x9, 0xfc138eda
                  li x10, 0x80000000
                  li x11, 0x80000000
                  li x12, 0x0
                  li x13, 0xa
                  li x14, 0x0
                  li x15, 0xfda11e24
                  li x16, 0x8
                  li x17, 0x9
                  li x19, 0x80000000
                  li x20, 0xfd16aa2a
                  li x21, 0x80000000
                  li x22, 0x80000000
                  li x23, 0xe326ef85
                  li x24, 0x80000000
                  li x25, 0x9a9f9fab
                  li x26, 0xd292aa30
                  li x27, 0x80000000
                  li x28, 0x0
                  li x29, 0xa1532da1
                  li x31, 0x0
                  la x30, user_stack_end
main:             addi         s0, zero, 1 #init loop 0 counter
                  sll          s9, a0, s8
                  or           t1, a4, s10
                  xor          a4, zero, s6
                  addi         t3, t6, 1451
                  slli         s7, s7, 21
                  addi         s4, zero, 4 #init loop 0 limit
                  nop
main_3_0_t:       nop
                  addi         s0, s0, 4 #update loop 0 counter
                  blt          s0, s4, main_3_0_t #branch for loop 0
                  or           sp, zero, a0
                  addi         s4, zero, 9 #init loop 1 counter
                  slt          s9, a5, s0
                  add          t1, gp, ra
                  addi         a5, zero, 10 #init loop 1 limit
main_0_1_t:       ori          zero, ra, -1736
                  sltu         a2, s1, a1
                  addi         s4, s4, 7 #update loop 1 counter
                  ori          t0, s8, 1614
                  srl          a0, t4, t2
                  addi         gp, zero, -5 #init loop 0 counter
                  addi         t4, zero, -5 #init loop 0 limit
                  slt          sp, a6, a7
                  srai         s6, t5, 26
                  srli         s7, s1, 25
                  lui          t0, 486201
                  sub          s7, t6, s1
main_0_0_t:       ori          a4, s5, 1187
                  or           zero, t2, a3
                  lui          s6, 427170
                  addi         gp, gp, -3 #update loop 0 counter
                  srl          t3, s10, s6
                  auipc        a4, 46722
                  sltiu        s3, s9, -1723
                  slli         s6, s5, 10
                  slt          s11, s1, a0
                  bge          gp, t4, main_0_0_t #branch for loop 0
                  addi         a0, s11, 643
                  slt          zero, a1, t1
                  addi         s10, a3, 465
                  sll          s7, s4, s10
                  xori         s10, a3, 1588
                  srai         a3, t3, 21
                  add          t2, s1, s4
                  blt          s4, a5, main_0_1_t #branch for loop 1
                  sltu         s7, s2, s9
                  addi         a1, zero, 9 #init loop 1 counter
                  sra          s5, t6, s3
                  addi         t2, zero, 16 #init loop 1 limit
                  xori         ra, a4, 1091
main_2_1_t:       xori         a3, sp, -1411
                  srli         ra, zero, 30
                  addi         a1, a1, 6 #update loop 1 counter
                  nop
                  slt          s11, t1, t2
                  addi         a4, zero, 10 #init loop 0 counter
                  addi         a0, zero, 2 #init loop 0 limit
                  xor          zero, tp, t5
                  sra          sp, a5, t4
                  andi         s8, s1, 827
main_2_0_t:       add          sp, t6, sp
                  addi         a4, a4, -5 #update loop 0 counter
                  andi         a2, a0, -333
                  bge          a4, a0, main_2_0_t #branch for loop 0
                  bltu         a1, t2, main_2_1_t #branch for loop 1
                  addi         t0, s7, 629
                  addi         t0, zero, -10 #init loop 1 counter
                  slli         s6, a3, 3
                  sra          gp, a1, s4
                  sltu         a3, t2, t2
                  and          a7, s10, ra
                  addi         s9, zero, -15 #init loop 1 limit
                  xori         s3, ra, -1087
main_5_1_t:       addi         a2, t3, 787
                  addi         t0, t0, -10 #update loop 1 counter
                  sll          gp, sp, a2
                  addi         a6, zero, -9 #init loop 0 counter
                  ori          s5, s3, 1922
                  addi         a1, zero, 20 #init loop 0 limit
main_5_0_t:       lui          zero, 382841
                  addi         a6, a6, 10 #update loop 0 counter
                  bltu         a6, a1, main_5_0_t #branch for loop 0
                  sra          t2, zero, s3
                  bge          t0, s9, main_5_1_t #branch for loop 1
                  slt          a0, s3, t3
                  addi         a7, zero, 2 #init loop 1 counter
                  addi         s7, zero, -10 #init loop 1 limit
                  srai         a0, s5, 11
                  and          a1, gp, gp
main_6_1_t:       ori          gp, s1, 284
                  addi         a7, a7, -9 #update loop 1 counter
                  sll          a5, t2, ra
                  addi         s10, zero, 0 #init loop 0 counter
                  sub          s3, s2, s7
                  sll          t4, a0, a4
                  addi         a3, zero, 11 #init loop 0 limit
main_6_0_t:       andi         t4, s3, -1783
                  slli         s4, zero, 3
                  slti         s9, t4, 786
                  add          t4, gp, a6
                  or           a2, t0, s0
                  addi         s10, s10, 3 #update loop 0 counter
                  ori          a0, a0, -1147
                  slli         s4, s0, 16
                  blt          s10, a3, main_6_0_t #branch for loop 0
                  xori         s1, sp, -1107
                  slli         s11, a0, 14
                  bge          a7, s7, main_6_1_t #branch for loop 1
                  xori         s6, t0, 643
                  addi         t4, zero, -5 #init loop 0 counter
                  addi         s3, zero, 4 #init loop 0 limit
                  slt          t6, gp, s5
main_1_0_t:       sltiu        s0, a7, 478
                  slt          s7, t5, ra
                  addi         s5, t2, -1063
                  sra          a4, s9, s9
                  add          s8, tp, a3
                  slti         s11, a3, 1960
                  addi         t4, t4, 2 #update loop 0 counter
                  bltu         t4, s3, main_1_0_t #branch for loop 0
                  add          s9, s1, a2
                  addi         a6, zero, 10 #init loop 1 counter
                  xor          t3, a2, t0
                  addi         t6, zero, 6 #init loop 1 limit
                  nop
                  slt          a2, tp, s11
                  or           t1, s0, tp
                  addi         a3, a7, -1307
                  sltu         s10, t1, sp
                  nop
                  sll          a5, s9, s3
                  sltiu        s1, gp, 277
                  xor          t3, a7, s5
                  nop
main_10_1_t:      auipc        s1, 595690
                  lui          zero, 755341
                  srl          ra, t4, a0
                  addi         a6, a6, -5 #update loop 1 counter
                  slt          s9, a5, a5
                  srl          s10, a2, s0
                  xor          sp, a0, s5
                  sub          s10, s6, s8
                  sltu         t2, s10, a7
                  addi         a4, zero, 1 #init loop 0 counter
                  srl          a3, s10, sp
                  addi         s11, zero, 17 #init loop 0 limit
main_10_0_t:      nop
                  srl          t1, tp, s0
                  slli         a0, a0, 6
                  ori          t3, a4, -123
                  addi         a4, a4, 8 #update loop 0 counter
                  or           s5, t2, s4
                  add          s9, t1, a0
                  bne          a4, s11, main_10_0_t #branch for loop 0
                  bgeu         a6, t6, main_10_1_t #branch for loop 1
                  slt          s7, t3, s0
                  beq          tp, s3, 11f
                  auipc        a3, 338460
                  addi         t6, ra, -1269
                  sltu         t6, a1, t2
                  andi         s8, s2, 111
                  beq          a0, s1, 12f
                  auipc        a5, 213766
                  add          s3, a4, s8
                  bgeu         t5, zero, 17f
                  sltiu        a5, a6, 1942
                  slli         zero, a7, 14
11:               sltiu        sp, t0, 2006
12:               and          a7, t1, a1
                  slt          s4, a5, s6
                  addi         s0, s5, 226
                  sltiu        s11, s5, -1784
                  add          t1, s8, t2
17:               srl          s10, s4, a6
                  slli         a4, t2, 31
                  bge          t6, s7, 28f
                  bgeu         s8, t5, 39f
                  slli         a4, s2, 15
                  xor          ra, a0, gp
                  or           s1, t5, s5
                  sltu         s3, t6, zero
                  and          s11, a5, a3
                  or           zero, t6, s3
                  beq          s5, t2, 32f
28:               sra          a7, t3, s2
                  blt          t1, s4, 48f
                  lui          s11, 678307
                  ori          sp, t4, -1653
32:               slt          a6, t0, t6
                  bltu         t4, s3, 36f
                  auipc        t2, 858943
                  andi         t6, s8, 858
36:               bne          s0, ra, 39f
                  bne          s0, s3, 53f
                  sltu         s11, a5, gp
39:               add          s10, a3, s3
                  srai         t4, t5, 2
                  xori         s4, a1, -1019
                  sltu         s10, a3, s6
                  srli         a0, a5, 27
                  srai         ra, s6, 31
                  ori          t4, t6, 1508
                  bne          s1, ra, 58f
                  blt          t4, tp, 53f
48:               beq          gp, s6, 52f
                  and          t3, t0, a3
                  and          s3, a6, t3
                  slt          s6, s0, a4
52:               add          a7, a7, a1
53:               auipc        a6, 473847
                  ori          s3, a5, -479
                  sub          a5, a6, s8
                  bltu         ra, a7, 74f
                  bltu         ra, s4, 67f
58:               srl          s6, s1, s11
                  sra          ra, t5, s9
                  addi         t2, t2, -1425
                  slti         s7, t2, 891
                  srai         t6, a3, 12
                  slt          t6, s9, a1
                  and          a7, s0, t2
                  bne          s5, s4, 78f
                  addi         a2, t4, -1968
67:               srl          a4, s7, s7
                  blt          ra, t5, 79f
                  xori         a6, zero, -1607
                  srai         s4, zero, 7
                  sltu         s1, s2, t2
                  addi         ra, s11, 1571
                  sltiu        t2, a3, 782
74:               bltu         t5, s3, 78f
                  slti         sp, t6, -1721
                  sll          s1, sp, a1
                  sll          ra, t2, t2
78:               bge          a3, t5, 97f
79:               xor          a6, s7, s11
                  slt          sp, t1, s7
                  bgeu         s9, s1, 82f
82:               sltiu        t0, s0, 1026
                  bge          s3, a4, 84f
84:               bne          t1, s7, 89f
                  slti         s4, s7, -1299
                  slt          s9, s9, s3
                  xori         s1, a6, -273
                  addi         sp, s3, 1865
89:               lui          t4, 198281
                  slt          a7, ra, a0
                  ori          s11, s4, -1481
                  auipc        t0, 305366
                  or           t1, a0, t5
                  or           t6, a2, t1
                  blt          s9, s3, 103f
                  auipc        gp, 779310
97:               srai         s9, gp, 16
                  xor          t1, tp, t6
                  add          t1, s9, t3
                  blt          t3, a4, 113f
                  srai         t0, a2, 9
                  slt          t1, t5, ra
103:              sra          ra, t1, s11
                  add          gp, s10, s11
                  slt          t1, t0, a2
                  nop
                  xor          a1, a4, a1
                  xori         a6, t6, -65
                  auipc        ra, 709010
                  blt          s7, sp, 127f
                  lui          a4, 571633
                  lui          t0, 553547
113:              slti         t3, s9, -1067
                  lui          zero, 703088
                  sltiu        s1, s3, 1583
                  srli         s1, a1, 15
                  slli         zero, s10, 25
                  srli         s9, s11, 7
                  bgeu         s1, s7, 138f
                  xor          t4, t2, ra
                  sra          t0, a5, sp
                  and          zero, s10, a4
                  lui          t0, 812399
                  lui          a5, 802029
                  bge          s1, a4, 131f
                  srl          s4, s3, t2
127:              srli         t0, a3, 7
                  slti         s9, ra, 1429
                  andi         s11, a2, -1030
                  addi         ra, zero, -3 #init loop 1 counter
                  lui          sp, 466416
                  sll          t4, gp, t3
                  addi         a6, zero, 0 #init loop 1 limit
                  slti         zero, s6, -1341
main_8_1_t:       sub          s6, sp, s5
                  slti         s4, a2, -1595
                  addi         ra, ra, 8 #update loop 1 counter
                  addi         a3, zero, -6 #init loop 0 counter
                  sll          s3, a2, s3
                  srl          a2, a5, s3
                  addi         a1, zero, 3 #init loop 0 limit
main_8_0_t:       sltiu        s8, a7, -940
                  or           a7, ra, s8
                  xor          t6, t3, s7
                  srl          s6, s5, s8
                  addi         a3, a3, 2 #update loop 0 counter
                  add          a5, ra, s8
                  srli         t6, s0, 23
                  bltu         a3, a1, main_8_0_t #branch for loop 0
                  blt          ra, a6, main_8_1_t #branch for loop 1
                  ori          s7, tp, 141
                  and          t2, sp, gp
131:              slt          a4, a1, s2
                  or           a6, t5, t6
                  beq          s4, a1, 135f
                  slli         t0, t6, 13
135:              srai         s1, a6, 18
                  andi         s0, a0, 586
                  sra          ra, t5, s10
138:              bne          t6, s1, 157f
                  bne          s2, tp, 158f
                  nop
                  or           s7, s1, t3
                  addi         t4, s11, -1799
                  add          a0, s10, s8
                  nop
                  ori          a6, a6, -530
                  bge          tp, a6, 155f
                  bge          s11, s7, 158f
                  sra          a2, t6, s1
                  sub          t3, zero, ra
                  or           t6, s3, t0
                  srai         s4, s5, 22
                  slti         a6, s10, -71
                  bltu         sp, a1, 172f
                  bltu         s5, s4, 157f
155:              bltu         a4, s6, 156f
156:              srl          a2, a4, t0
157:              srli         t6, a0, 22
158:              sltu         a6, a2, a5
                  bltu         s6, a0, 160f
160:              ori          s7, ra, 1091
                  srl          s1, a4, s5
                  lui          t6, 3812
                  sra          a0, s4, a2
                  beq          t6, s4, 169f
                  and          s4, t3, sp
                  bltu         a0, s10, 174f
                  nop
                  sll          s5, s4, a7
169:              bge          s5, a0, 188f
                  ori          t6, s3, -313
                  nop
172:              ori          t1, t1, 1109
                  srl          a5, a2, a3
174:              xori         a7, t5, 1098
                  lui          s6, 803399
                  sra          t4, a0, s7
                  srli         a1, sp, 2
                  xor          s7, t2, t4
                  ori          gp, s10, -1770
                  addi         s7, a6, 1897
                  bgeu         s6, t5, 187f
                  andi         a6, t2, -2028
                  sll          s10, s9, t5
                  xor          t3, t5, a2
                  srai         s1, a6, 7
                  bge          a5, a0, 190f
187:              sltu         t2, a1, s8
188:              bltu         s8, tp, 198f
                  or           s9, t0, s8
190:              sra          t6, t4, a7
                  sra          zero, t3, s2
                  slti         s8, s10, 117
                  lui          t1, 294691
                  addi         s0, t6, -221
                  srl          s7, a7, t4
                  xor          a0, s9, t3
                  srli         s6, t5, 26
198:              xor          a3, t0, s9
                  srl          s8, t1, gp
                  add          s1, s5, t6
                  xori         s3, t2, 1718
                  srli         a0, a3, 2
                  xor          a7, t2, s8
                  andi         s11, a7, 1240
                  and          t6, s7, s0
                  ori          a5, a7, 2002
                  bgeu         s8, s8, 211f
                  and          t3, ra, t1
                  sra          a7, s5, gp
                  sub          s11, t5, a3
211:              slt          s5, a6, a4
                  slti         t4, t6, 609
                  beq          tp, t6, 232f
                  srl          t4, t4, gp
                  srli         s9, s11, 11
                  xor          sp, s1, s0
                  slli         sp, a2, 26
                  beq          tp, t4, 223f
                  beq          zero, tp, 231f
                  and          s8, a1, t2
                  blt          sp, a7, 238f
                  bne          s9, s0, 241f
223:              srli         a7, s9, 20
                  sltu         s9, s3, a1
                  nop
                  slt          a2, t0, s8
                  srai         t2, t1, 19
                  add          a1, s8, gp
                  ori          t3, zero, 195
                  sltu         t4, s11, t2
231:              and          a0, s5, t6
232:              bne          s9, s7, 245f
                  or           t6, s5, t1
                  slti         s8, t5, -1582
                  bltu         s4, a3, 241f
                  or           a1, zero, t1
                  ori          zero, a7, 1346
238:              or           t0, s3, t0
                  lui          s0, 794830
                  or           t6, gp, s5
241:              slli         t3, a3, 21
                  bltu         t1, gp, 260f
                  sltu         t0, t1, s2
                  bgeu         a5, s5, 257f
245:              ori          s6, ra, 807
                  beq          gp, t2, 253f
                  sll          a4, a5, s2
                  srai         a6, sp, 9
                  sub          s11, t4, a4
                  sra          a6, s0, s2
                  slt          s7, a5, a7
                  xori         a0, ra, 1503
253:              sub          t6, a4, s10
                  xori         s7, t2, 1428
                  slli         s7, s7, 14
                  or           t6, tp, t4
257:              slt          s7, a5, a7
                  bgeu         ra, t1, 260f
                  lui          a2, 233691
260:              xor          a5, sp, a4
                  sub          s11, a5, t0
                  sub          s0, t3, s10
                  srl          s10, a6, gp
                  ori          gp, zero, -369
                  sra          t3, a0, a2
                  beq          s11, s2, 277f
                  beq          t6, s4, 286f
                  sub          a7, zero, gp
                  slti         a1, s1, -118
                  slti         ra, sp, 1853
                  blt          s6, s3, 287f
                  bge          t4, zero, 291f
                  sltiu        s8, t1, -518
                  srli         t3, s11, 15
                  sltu         ra, s7, s11
                  sra          s9, a1, sp
277:              ori          t0, t4, 1799
                  sub          s4, s10, t3
                  srli         a6, a6, 0
                  srl          a0, t6, t1
                  blt          s10, a7, 290f
                  bgeu         a4, a7, 285f
                  srai         s10, zero, 19
                  auipc        s0, 727029
285:              srai         s8, t6, 29
286:              ori          s0, s7, 1578
287:              srai         a4, ra, 15
                  bge          s8, s5, 296f
                  beq          s8, s0, 308f
290:              bgeu         t5, s7, 307f
291:              beq          t4, s4, 304f
                  blt          s6, s9, 299f
                  beq          gp, a3, 312f
                  sltiu        t1, s1, -997
                  or           s7, tp, t0
296:              bgeu         a0, a2, 301f
                  lui          t3, 354757
                  sub          t2, s3, a7
299:              andi         a3, s4, -542
                  srl          sp, s3, s7
301:              xor          a5, s9, sp
                  sub          a2, t6, t6
                  slli         t3, a4, 29
304:              add          a4, s1, a5
                  andi         a4, sp, 1371
                  blt          s3, a0, 325f
307:              add          s0, t5, zero
308:              slt          s1, zero, s9
                  blt          s7, a4, 320f
                  bgeu         a5, s6, 321f
                  addi         a7, zero, -1 #init loop 1 counter
                  ori          t0, s7, -707
                  addi         t2, zero, 20 #init loop 1 limit
main_7_1_t:       slti         a6, t2, 712
                  addi         a7, a7, 7 #update loop 1 counter
                  auipc        a6, 313098
                  addi         a3, zero, 5 #init loop 0 counter
                  addi         t6, zero, 5 #init loop 0 limit
                  srl          a1, s10, a7
main_7_0_t:       auipc        t0, 267254
                  add          a4, a3, a7
                  lui          a2, 923972
                  ori          t3, t3, 669
                  addi         a3, a3, -4 #update loop 0 counter
                  bgeu         a3, t6, main_7_0_t #branch for loop 0
                  beq          a7, t2, main_7_1_t #branch for loop 1
                  sll          s3, a7, t6
                  slt          a7, a7, gp
                  addi         t1, zero, -4 #init loop 1 counter
                  addi         a6, zero, 6 #init loop 1 limit
                  nop
main_4_1_t:       ori          a2, s4, 1144
                  srai         s6, a2, 10
                  addi         t1, t1, 10 #update loop 1 counter
                  and          t2, gp, a2
                  srl          s9, ra, s5
                  addi         sp, zero, -2 #init loop 0 counter
                  addi         s7, zero, -19 #init loop 0 limit
main_4_0_t:       sltiu        a1, sp, 834
                  sltiu        a1, a3, -548
                  sltu         a4, s11, a5
                  addi         sp, sp, -6 #update loop 0 counter
                  sltiu        t2, t3, 1150
                  sltiu        t2, s2, -255
                  bge          sp, s7, main_4_0_t #branch for loop 0
                  or           ra, a0, a4
                  slt          a3, t6, s1
                  xor          s9, t6, s7
                  andi         a1, t4, 1984
                  blt          t1, a6, main_4_1_t #branch for loop 1
                  add          ra, a3, s4
312:              add          a0, t1, t3
                  bgeu         t1, s0, 332f
                  xor          s3, t6, t3
                  bgeu         t3, s7, 316f
316:              bge          s7, s9, 319f
                  blt          s5, gp, 336f
                  ori          a7, s2, -667
319:              andi         a0, a5, 1844
320:              slt          a6, s8, s4
321:              slti         sp, t3, 1749
                  slti         s0, t4, -895
                  auipc        s7, 156848
                  srai         a4, a4, 19
325:              ori          a2, a0, -1482
                  beq          s9, zero, 332f
                  add          a3, zero, t6
                  slt          s3, s2, tp
                  xori         t1, s8, -795
                  or           s11, sp, zero
                  slt          s1, t6, t1
332:              sltiu        ra, s9, -1314
                  or           t4, t5, s3
                  and          ra, s1, s8
                  xori         s6, a5, -1299
336:              xori         s11, t1, 687
                  sub          gp, a3, s8
                  auipc        s10, 360231
                  srl          a1, t1, a3
                  blt          t5, t6, 344f
                  sltu         sp, sp, s1
                  xor          ra, tp, s1
                  or           t0, s7, a1
344:              addi         s6, s10, 871
                  ori          a1, a0, -197
                  andi         s8, t1, -715
                  sll          s10, a1, a3
                  blt          tp, t0, 350f
                  slt          a2, s10, t0
350:              bgeu         s11, a4, 363f
                  lui          t2, 186237
                  xori         a0, s10, -1043
                  slti         ra, zero, -703
                  xori         t4, s7, 1869
                  or           s6, a2, gp
                  srai         s11, s0, 0
                  bgeu         t3, s5, 373f
                  ori          s7, ra, -921
                  sra          s6, s11, s4
                  ori          a1, s11, -1306
                  add          s7, gp, a5
                  bne          s1, ra, 381f
363:              andi         s1, s11, 609
                  bne          s4, sp, 373f
                  beq          s10, sp, 377f
                  and          a2, s10, a3
                  srli         t6, s11, 24
                  bne          a7, s2, 369f
369:              lui          t4, 1002958
                  bgeu         s4, s4, 375f
                  srl          t0, gp, t4
                  slt          a7, tp, t0
373:              bgeu         s7, sp, 379f
                  bgeu         zero, t2, 383f
375:              auipc        s4, 617783
                  xori         t3, ra, 1347
377:              sltu         t1, zero, gp
                  slt          s4, s6, gp
379:              slti         a4, a2, 1129
                  slti         a0, s1, -1033
381:              sltu         t6, a4, a3
                  sll          t3, ra, t4
383:              slli         s0, a6, 4
                  srl          a2, t3, s7
                  lui          gp, 641993
                  lui          s1, 717907
                  ori          gp, t1, 1312
                  nop
                  add          t2, s2, t6
                  xor          t3, s4, t5
                  or           zero, s11, t6
                  sll          t1, t4, s11
                  srl          t2, a7, s5
                  sra          a0, s10, s7
                  slt          a5, s11, tp
                  xor          s9, t4, tp
                  bltu         s0, a3, 407f
                  xor          a7, s8, t5
                  ori          s5, tp, -1273
                  srai         s11, s6, 9
                  srl          a5, a5, a2
                  xor          s7, s11, s4
                  sltiu        t2, s0, 1262
                  ori          t0, t6, -770
                  la           gp, sub_1
                  addi         t2, a4, 1947
                  addi         gp, gp, -620
                  sltu         t2, a4, s5
                  srli         s9, a7, 31
                  sub          ra, s6, s11
                  xor          t6, s4, s6
                  nop
                  sra          a1, a3, t0
main_j1:          jalr         ra, gp, 621 #jump main -> sub_1
                  xor          t2, ra, s10
                  sltu         s0, a7, s7
                  auipc        s1, 928054
                  sll          a5, a7, t5
                  bge          tp, s10, 424f
407:              sltu         t6, a0, t1
                  bgeu         a3, a7, 411f
                  xor          a1, a5, tp
                  blt          a4, ra, 414f
411:              lui          t2, 114681
                  sra          s0, gp, s8
                  slt          s0, gp, s6
414:              srai         sp, t1, 11
                  xor          t1, zero, t0
                  ori          a3, s11, 525
                  xori         s7, s11, -1981
                  xori         a4, t3, 2025
                  sll          s11, a2, t5
                  sra          t0, s4, sp
                  xor          a0, s9, tp
                  bgeu         s11, t5, 431f
                  sltu         zero, t4, a3
424:              sub          a7, s6, zero
                  bgeu         zero, a3, 432f
                  slli         ra, a2, 0
                  sltu         a6, s0, sp
                  beq          s8, t1, 431f
                  and          a4, ra, t0
                  srl          a3, t3, s10
431:              or           s11, a7, a3
432:              add          gp, a1, zero
                  sltu         s7, a0, s3
                  auipc        zero, 458156
                  bge          a5, s7, 454f
                  bne          s1, a5, 442f
                  lui          s6, 520579
                  slti         zero, s11, 1253
                  bne          t4, s4, 450f
                  slti         s7, s6, 47
                  bge          a7, s2, 452f
442:              slti         s7, s8, 192
                  bge          s6, t3, 456f
                  sll          zero, a5, a3
                  auipc        t4, 433676
                  sra          s3, tp, a0
                  nop
                  sll          a6, s2, s8
                  add          s0, tp, a5
450:              bne          zero, s0, 460f
                  sra          s4, a2, a7
452:              sra          ra, s9, ra
                  beq          t5, a3, 456f
454:              and          a3, s1, s1
                  bltu         sp, s0, 474f
456:              and          a4, s0, s6
                  beq          t2, t3, 459f
                  sra          t0, s0, s2
459:              andi         s3, t4, -1277
460:              slt          s5, a1, a0
                  slt          a5, t3, s10
                  lui          s10, 256793
                  nop
                  lui          a4, 673873
                  beq          a7, gp, 484f
                  slti         s10, a5, 1113
                  srai         a2, zero, 3
                  lui          s4, 584455
                  xori         s6, s7, 1265
                  bge          s1, s1, 475f
                  srl          t3, s4, a7
                  and          t4, s6, s10
                  bltu         a0, a6, 474f
474:              lui          s9, 125454
475:              sltiu        s0, s2, -1272
                  auipc        a4, 951893
                  slt          s3, a6, a6
                  sra          zero, s5, zero
                  bltu         a4, s2, 488f
                  bltu         s2, s5, 499f
                  sltiu        t0, t4, -1489
                  bltu         s11, s9, 499f
                  blt          s9, s11, 489f
484:              sra          s3, t2, a2
                  lui          s0, 628584
                  addi         s3, s7, -32
                  xor          a6, s1, s0
488:              srai         s6, a4, 0
489:              srl          s4, a0, s9
                  bltu         ra, s10, 494f
                  sra          a6, s3, t2
                  or           s0, s2, t0
                  lui          t0, 581090
494:              bne          s7, a2, 510f
                  bltu         a0, a3, 496f
496:              srli         s1, a3, 7
                  bltu         a2, a5, 509f
                  bltu         a4, s9, 506f
499:              sll          a6, t3, a1
                  bne          s6, a1, 519f
                  xor          gp, s11, s6
                  bgeu         t3, s2, 520f
                  addi         s10, zero, 5 #init loop 1 counter
                  addi         t2, zero, 5 #init loop 1 limit
                  sra          s3, a0, a5
main_9_1_t:       andi         sp, a2, -235
                  addi         s10, s10, -3 #update loop 1 counter
                  addi         t4, zero, 2 #init loop 0 counter
                  addi         s7, zero, 10 #init loop 0 limit
                  sll          s9, s10, s1
main_9_0_t:       ori          a5, a6, 793
                  addi         t4, t4, 2 #update loop 0 counter
                  bltu         t4, s7, main_9_0_t #branch for loop 0
                  bgeu         s10, t2, main_9_1_t #branch for loop 1
                  andi         gp, s4, 1916
                  andi         a3, s6, -1150
                  add          s6, s4, tp
                  bgeu         t4, zero, 509f
506:              sll          s10, ra, s0
                  srl          gp, a2, t5
                  nop
509:              add          s8, t0, t4
510:              blt          s5, a0, 523f
                  srl          s11, s0, sp
                  bge          s5, s7, 531f
                  srl          zero, s7, a6
                  beq          tp, s11, 519f
                  and          zero, s11, gp
                  blt          a6, a3, 529f
                  slt          t4, s10, t3
                  and          sp, tp, ra
519:              nop
520:              sll          t4, s4, s6
                  andi         a4, t2, 1226
                  andi         s0, tp, 645
523:              bge          ra, s5, 527f
                  bltu         s2, s9, 543f
                  sltiu        t2, tp, -1970
                  srai         zero, s1, 7
527:              blt          t2, tp, 537f
                  srai         s9, s8, 11
529:              lui          a0, 489922
                  slli         t3, a6, 3
531:              bgeu         t2, t2, 542f
                  blt          a0, zero, 551f
                  bltu         t6, a4, 546f
                  slt          s6, s5, t5
                  or           s1, sp, ra
                  and          s10, t1, t4
537:              add          s6, tp, t6
                  bge          s4, s3, 544f
                  sltu         t1, a1, t5
                  bge          gp, a4, 559f
                  or           s10, a4, s0
542:              slt          a1, a7, s3
543:              auipc        t6, 140161
544:              bge          t6, a0, 545f
545:              and          a0, s9, tp
546:              auipc        s4, 715225
                  sltiu        a6, tp, 853
                  addi         s7, s9, -809
                  srli         s11, t5, 27
                  xori         zero, s5, 1234
551:              sub          t6, a6, zero
                  srl          s4, s4, a6
                  beq          tp, s0, 570f
                  slt          s0, t3, a0
                  or           a6, s2, t1
                  ori          s0, s6, -459
                  beq          t6, tp, 564f
                  andi         t2, a7, -475
559:              bgeu         t5, s3, 560f
560:              beq          s6, a7, 571f
                  xori         ra, s5, -683
                  sll          gp, a4, t0
                  bltu         ra, gp, 577f
564:              srai         s8, t0, 17
                  andi         s1, s7, 1892
                  slti         s4, zero, -1669
                  sll          t2, a1, s4
                  blt          zero, a3, 572f
                  sra          a6, zero, s10
570:              and          t1, t4, s0
571:              blt          a6, a1, 574f
572:              slti         a7, t1, -168
                  bne          t2, s6, 577f
574:              srl          s7, s0, s9
                  blt          s10, s9, 577f
                  sltiu        zero, t0, -965
577:              lui          s4, 636616
                  la x4, test_done
                  jalr x0, x4, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            sltiu        s7, s2, 643
                  sll          sp, t2, a4
                  addi         t5, t5, -12
                  srai         gp, zero, 4
                  sll          s6, s5, t3
                  sw           ra, 4(t5)
                  or           s9, s3, t1
                  addi         s6, zero, -4 #init loop 0 counter
                  nop
                  and          t0, ra, zero
                  srai         s11, a7, 12
                  slti         a0, s0, 825
                  addi         sp, zero, 16 #init loop 0 limit
                  auipc        zero, 691424
                  sub          s9, s4, t4
                  and          ra, s5, s3
sub_1_4_0_t:      xori         a5, s6, -225
                  srai         gp, t1, 15
                  lui          s10, 415592
                  addi         s6, s6, 10 #update loop 0 counter
                  srli         s3, gp, 30
                  xori         a7, s6, -1407
                  sra          ra, a7, s9
                  slli         ra, s4, 10
                  and          a1, zero, t0
                  sub          s3, s4, ra
                  slli         a6, t5, 20
                  sll          s8, a7, s11
                  bne          s6, sp, sub_1_4_0_t #branch for loop 0
                  srli         a6, s0, 4
                  addi         t0, zero, 7 #init loop 1 counter
                  sub          s5, s6, s5
                  sub          s9, a1, sp
                  srli         a6, zero, 15
                  addi         ra, a5, 1226
                  addi         s11, zero, -18 #init loop 1 limit
                  or           t4, t2, s9
                  slt          zero, s11, t0
                  sll          t4, s11, gp
                  sltiu        a5, s4, 440
sub_1_8_1_t:      addi         s5, s3, 702
                  sltiu        s1, s6, 2031
                  or           s1, a0, a2
                  addi         t0, t0, -1 #update loop 1 counter
                  addi         t1, zero, -2 #init loop 0 counter
                  slli         a7, t0, 29
                  addi         a4, zero, -8 #init loop 0 limit
                  xori         t6, s6, 1524
                  or           s6, a4, a1
                  or           ra, t5, a2
sub_1_8_0_t:      lui          t4, 494836
                  sub          s1, sp, t6
                  slt          s10, a6, s4
                  addi         t1, t1, -3 #update loop 0 counter
                  srli         s3, s7, 27
                  bge          t1, a4, sub_1_8_0_t #branch for loop 0
                  srai         sp, a3, 20
                  srli         t6, t2, 2
                  andi         a1, zero, -870
                  srli         s10, t6, 31
                  slt          s4, a2, a1
                  auipc        s4, 700521
                  auipc        a7, 397950
                  bne          t0, s11, sub_1_8_1_t #branch for loop 1
                  auipc        a7, 1031008
                  addi         t4, zero, 5 #init loop 1 counter
                  xori         t2, a5, 1261
                  sltiu        gp, a5, 2
                  srli         s6, s0, 26
                  sra          t0, a2, s8
                  srl          t3, s6, sp
                  addi         s0, zero, 7 #init loop 1 limit
sub_1_2_1_t:      addi         s6, a3, 190
                  srli         s10, t0, 14
                  ori          ra, t0, 1176
                  addi         a2, a0, -62
                  sltiu        s7, a3, -210
                  or           s10, t4, sp
                  addi         t4, t4, 2 #update loop 1 counter
                  slt          s4, s10, a4
                  sltiu        t0, zero, 1786
                  addi         s8, zero, -5 #init loop 0 counter
                  addi         a1, zero, 8 #init loop 0 limit
                  addi         ra, sp, -677
sub_1_2_0_t:      sltiu        s4, t5, 1736
                  nop
                  add          s1, ra, t2
                  ori          ra, t6, -1016
                  addi         s8, s8, 9 #update loop 0 counter
                  bltu         s8, a1, sub_1_2_0_t #branch for loop 0
                  srli         s10, a3, 6
                  and          s9, a6, s1
                  sll          a5, s4, t5
                  bne          t4, s0, sub_1_2_1_t #branch for loop 1
                  andi         s11, t6, -822
                  addi         sp, zero, -4 #init loop 0 counter
                  slli         s5, a3, 0
                  sltiu        t4, t6, 959
                  nop
                  slti         a6, t6, 1045
                  addi         a1, zero, -13 #init loop 0 limit
                  add          zero, a7, s9
sub_1_3_0_t:      slti         a7, a0, -1160
                  srli         s4, t3, 5
                  sub          a7, a7, s0
                  addi         sp, sp, -3 #update loop 0 counter
                  or           t3, a4, t1
                  sra          s0, s10, s6
                  sll          zero, t0, t1
                  xor          t3, ra, s4
                  sra          t0, a3, gp
                  andi         ra, t3, -1231
                  slt          s7, s5, s9
                  lui          t4, 492903
                  srl          gp, s7, s11
                  bge          sp, a1, sub_1_3_0_t #branch for loop 0
                  addi         s7, s3, 45
                  addi         s4, zero, -7 #init loop 0 counter
                  addi         gp, t4, 1092
                  addi         t3, s6, 1913
                  sltiu        t4, ra, -580
                  nop
                  andi         s1, t4, 779
                  lui          s6, 370056
                  addi         t1, zero, 13 #init loop 0 limit
                  and          s7, s11, t4
                  slli         t0, s9, 7
                  add          a0, t6, s11
                  xori         a2, t4, -1960
                  sra          s9, t1, s0
                  srli         a6, t3, 1
                  addi         t2, gp, -1761
                  sltiu        s11, tp, -1965
                  slli         t3, a2, 28
                  slti         a0, s3, -1572
                  srl          ra, ra, a1
                  nop
                  or           s0, a2, a2
sub_1_13_0_t:     and          t3, sp, s8
                  ori          a5, s7, -1747
                  srl          s10, t0, s6
                  addi         s4, s4, 10 #update loop 0 counter
                  auipc        t6, 904917
                  srai         s7, a6, 19
                  xor          a1, a0, s1
                  bne          s4, t1, sub_1_13_0_t #branch for loop 0
                  ori          s10, s11, 737
                  addi         s7, zero, -7 #init loop 1 counter
                  sltu         s8, s0, a0
                  ori          gp, t4, -1729
                  addi         s5, zero, 13 #init loop 1 limit
                  sub          a5, a7, s11
                  slli         t6, s3, 31
                  lui          t4, 479016
sub_1_12_1_t:     slti         t6, s8, -1104
                  xor          s0, s1, a0
                  addi         s7, s7, 10 #update loop 1 counter
                  addi         gp, zero, 1609
                  add          s10, t2, t4
                  addi         ra, zero, -7 #init loop 0 counter
                  slt          a4, s1, s8
                  sll          gp, a6, s7
                  addi         a6, s4, -1094
                  lui          sp, 251472
                  sub          a4, a2, a2
                  addi         s11, zero, 6 #init loop 0 limit
sub_1_12_0_t:     andi         t3, t4, -1314
                  addi         ra, ra, 10 #update loop 0 counter
                  bltu         ra, s11, sub_1_12_0_t #branch for loop 0
                  srai         s4, a0, 31
                  or           a1, a4, gp
                  or           a2, t1, a7
                  andi         t4, s0, 1935
                  beq          s7, s5, sub_1_12_1_t #branch for loop 1
                  sra          s8, s4, a2
                  addi         a5, zero, -3 #init loop 0 counter
                  add          s7, t6, gp
                  add          t1, a7, t3
                  addi         t4, zero, -3 #init loop 0 limit
                  addi         s6, a1, 1067
                  xor          a1, a4, s2
                  and          s7, a2, a1
                  addi         s5, t3, -44
                  srl          gp, t4, t3
                  slli         ra, s10, 3
sub_1_7_0_t:      and          t1, a1, s8
                  sll          s10, t1, s6
                  srli         s11, a6, 24
                  sub          s9, s1, t1
                  srai         s8, a7, 12
                  xor          a6, gp, s6
                  and          t0, t5, a5
                  addi         a5, a5, -5 #update loop 0 counter
                  add          s9, t6, tp
                  srai         a7, a1, 10
                  sll          t2, a1, a6
                  auipc        s9, 358925
                  sltu         sp, s0, a5
                  srai         s7, s7, 13
                  bge          a5, t4, sub_1_7_0_t #branch for loop 0
                  sltu         gp, ra, s5
                  addi         a6, zero, 7 #init loop 0 counter
                  addi         zero, t3, -1917
                  srl          gp, t6, t5
                  sra          t4, s0, s9
                  srl          t1, a0, t2
                  srai         gp, t5, 24
                  addi         a2, zero, 11 #init loop 0 limit
                  lui          a0, 1012233
                  add          s0, tp, ra
sub_1_1_0_t:      sltu         a4, a0, a2
                  andi         t4, a6, 1170
                  addi         a3, s0, 1810
                  addi         a6, a6, 4 #update loop 0 counter
                  slt          a7, s10, s4
                  bne          a6, a2, sub_1_1_0_t #branch for loop 0
                  lui          s8, 141375
                  addi         s8, zero, -2 #init loop 0 counter
                  addi         sp, zero, 4 #init loop 0 limit
                  sltiu        t4, s8, 614
sub_1_10_0_t:     add          t6, a0, t3
                  addi         s8, s8, 10 #update loop 0 counter
                  bltu         s8, sp, sub_1_10_0_t #branch for loop 0
                  lui          a6, 505584
                  addi         s11, zero, 5 #init loop 0 counter
                  andi         t3, t5, -1513
                  add          s10, s2, s8
                  sra          t6, a7, a3
                  slt          a5, s6, t1
                  sltu         a2, a2, a2
                  addi         a7, zero, 13 #init loop 0 limit
                  lui          t1, 409326
sub_1_14_0_t:     sltu         a0, a7, t6
                  or           s1, s4, tp
                  addi         s11, s11, 5 #update loop 0 counter
                  srai         t1, s7, 27
                  sra          a3, t6, s0
                  blt          s11, a7, sub_1_14_0_t #branch for loop 0
                  slt          s0, a2, zero
                  addi         ra, zero, -4 #init loop 1 counter
                  addi         a2, zero, 1 #init loop 1 limit
sub_1_5_1_t:      sltu         s11, sp, t4
                  addi         ra, ra, 2 #update loop 1 counter
                  or           t4, a4, t3
                  addi         gp, zero, 6 #init loop 0 counter
                  addi         s10, zero, 6 #init loop 0 limit
                  andi         s8, a0, -1192
sub_1_5_0_t:      andi         s7, a1, 852
                  addi         gp, gp, -5 #update loop 0 counter
                  bgeu         gp, s10, sub_1_5_0_t #branch for loop 0
                  blt          ra, a2, sub_1_5_1_t #branch for loop 1
                  or           a4, t3, s4
                  slli         s1, s4, 19
                  xor          a7, a1, a0
                  sltu         t6, s5, a3
                  srli         zero, s7, 24
                  add          s9, s6, a6
                  andi         a2, a6, 1510
                  ori          a3, s10, -1348
                  srli         zero, a6, 5
                  sll          a6, s8, s11
                  ori          t6, tp, -727
                  nop
                  lui          a1, 538262
                  sra          s7, s1, s0
                  xor          s3, a1, s4
                  sub          s0, t2, gp
                  blt          a2, t3, 21f
                  and          s0, t6, a6
                  xor          t3, t1, a3
                  beq          a4, s9, 23f
                  and          a2, s10, a4
                  slt          s1, s11, a0
21:               slli         a2, a2, 13
                  and          ra, sp, sp
23:               add          t3, t6, a1
                  andi         s0, s4, 1266
                  sra          a6, s0, ra
                  bltu         gp, s11, 27f
27:               blt          t5, a6, 40f
                  sub          s6, sp, s11
                  bne          s6, a0, 32f
                  add          a3, t0, s8
                  bgeu         tp, a2, 38f
32:               xori         t2, s7, 636
                  addi         s8, s9, -1275
                  slli         a0, t0, 0
                  bge          a2, s5, 54f
                  beq          t4, s0, 37f
37:               srli         s0, a4, 7
38:               andi         t1, a3, -168
                  slt          a7, s2, ra
40:               srl          t3, t4, s9
                  lui          s11, 556717
                  andi         s11, a5, -1227
                  nop
                  srai         a5, s3, 26
                  lui          ra, 20
                  auipc        gp, 370515
                  blt          s4, s10, 63f
                  srai         zero, a0, 5
                  andi         s7, s5, -1921
                  xor          a7, t5, gp
                  and          t6, s7, a1
                  beq          a7, tp, 60f
                  sll          s11, a2, s4
54:               slt          sp, a4, s9
                  bne          a3, a4, 61f
                  bne          t4, s8, 71f
                  blt          s1, s1, 61f
                  beq          s0, a7, 69f
                  or           a5, s1, a7
60:               ori          a4, t5, -221
61:               sltiu        s11, sp, -1675
                  sll          s8, s3, s7
63:               auipc        t2, 543471
                  addi         a1, s1, 220
                  sub          s7, s2, a3
                  sra          s1, a1, s9
                  bne          s2, s8, 86f
                  bgeu         gp, a0, 77f
69:               sltiu        s0, s4, -343
                  srl          ra, t0, s4
71:               srli         s9, t1, 14
                  xor          a7, a1, s9
                  xori         t2, s7, -714
                  sltiu        t4, s1, -96
                  and          s1, s4, a7
                  add          s9, s11, s8
77:               xor          t6, s6, a6
                  sub          t4, t1, s0
                  srli         s10, s10, 14
                  add          t6, s7, t3
                  auipc        a3, 634768
                  sll          s8, tp, s3
                  srl          s3, a6, gp
                  sll          ra, s1, s9
                  xor          a7, a3, t0
86:               or           s6, t3, t3
                  beq          sp, s6, 98f
                  sra          t2, a5, a0
                  bgeu         a6, a1, 106f
                  andi         a7, t1, 1543
                  and          s4, s11, t5
                  xori         s4, s2, 2028
                  bge          zero, t1, 108f
                  blt          s0, t4, 106f
                  lui          s10, 72279
                  ori          t4, s6, -972
                  bge          s8, zero, 111f
98:               bge          a0, t4, 111f
                  sltiu        t2, a0, 1589
                  add          a6, s7, s9
                  ori          t4, s5, -1101
                  srli         ra, t2, 31
                  srl          t6, sp, s3
                  sra          s11, gp, s3
                  sll          s6, t5, t4
106:              bgeu         tp, s8, 124f
                  sub          s1, s2, s0
108:              bge          a2, s5, 116f
                  add          s9, s11, s9
                  nop
111:              sub          s10, a6, s1
                  slt          s8, s11, s10
                  andi         a6, s11, -315
                  auipc        a1, 899710
                  slli         s5, a1, 4
116:              srai         t6, s7, 21
                  addi         s1, t6, 1768
                  addi         ra, s2, -655
                  auipc        s8, 520321
                  auipc        s7, 987347
                  lui          sp, 326643
                  bgeu         s8, s11, 136f
                  sra          a2, t6, s1
124:              xor          t3, a4, t6
                  slti         s8, t3, 1312
                  blt          s0, a2, 134f
                  sltiu        a7, t5, 996
                  slt          a0, t2, t2
                  lui          zero, 844175
                  add          ra, t5, s8
                  slli         t3, s3, 20
                  add          a7, s1, a2
                  blt          s0, t5, 140f
134:              bgeu         t1, ra, 140f
                  andi         a5, ra, 210
136:              srli         a0, s9, 29
                  srl          ra, s8, ra
                  srai         a5, t4, 1
                  blt          s7, s11, 155f
140:              nop
                  slli         s3, t0, 27
                  sub          a7, a1, s0
                  sub          a2, ra, s8
                  slti         s6, gp, -202
                  and          t1, s1, s8
                  blt          a7, t5, 164f
                  bge          s4, s5, 155f
                  ori          t0, t0, -1723
                  or           s0, zero, s10
                  sub          s8, a3, s11
                  beq          t5, s3, 159f
                  bgeu         s7, s10, 163f
                  xor          s6, s7, a2
                  lui          s8, 355940
155:              sltiu        sp, s2, -1744
                  xori         s9, ra, -735
                  addi         a0, t3, 1161
                  slti         s7, a4, -1410
159:              andi         s9, s4, 1317
                  srli         gp, a6, 16
                  sltu         t2, s10, s2
                  sub          zero, a6, s2
163:              nop
164:              srai         s3, a7, 31
                  bltu         t1, t2, 183f
                  ori          t4, zero, 1226
                  slti         zero, s11, 576
                  slli         t4, s4, 1
                  slli         s6, s2, 20
                  lui          sp, 1001941
                  and          s11, ra, sp
                  sra          t1, t5, s2
                  sra          t1, a4, t2
                  sll          s6, s5, s0
                  xori         s11, a0, 1642
                  lui          t2, 854340
                  add          s4, t6, s8
                  sltiu        s11, s1, -747
                  srli         a1, s8, 8
                  slti         s0, t6, 1036
                  beq          s0, t2, 186f
                  srai         a2, t6, 16
183:              srl          t1, t2, a7
                  slt          ra, s8, t6
                  slli         a2, gp, 18
186:              bgeu         a7, s8, 203f
                  slt          ra, gp, s7
                  blt          s1, s2, 192f
                  beq          a6, t2, 203f
                  nop
                  bgeu         s6, s6, 207f
192:              andi         s9, zero, 118
                  xor          a5, t3, a3
                  or           a6, s8, s5
                  xor          zero, t4, s6
                  or           s3, t1, s10
                  beq          tp, a1, 212f
                  bltu         a3, t4, 211f
                  ori          s8, a0, -717
                  srli         a3, a7, 7
                  bne          sp, s7, 216f
                  sra          s0, t3, zero
203:              add          t2, sp, gp
                  and          a5, s1, s5
                  or           a5, a3, s10
                  sra          s11, s7, tp
207:              blt          s5, tp, 214f
                  add          a0, s11, s2
                  slti         s6, a0, -845
                  bge          s7, s3, 213f
211:              bge          s3, a3, 219f
212:              addi         t3, a7, -2032
213:              slti         gp, s10, 323
214:              slti         a6, a0, -1045
                  srl          t3, ra, a0
216:              sltu         t3, s9, s2
                  slti         t1, a1, -687
                  bne          t5, s7, 237f
219:              slt          s7, s3, s4
                  bgeu         s5, t2, 229f
                  andi         t2, s8, 242
                  add          t3, s11, s6
                  sra          gp, s4, a0
                  sub          s0, sp, t0
                  ori          s4, a3, 1607
                  slli         t2, t0, 31
                  xori         s5, sp, -1803
                  blt          s8, a0, 247f
229:              blt          sp, t2, 245f
                  lui          t4, 452857
                  xori         s8, t0, -1808
                  sll          sp, a0, s8
                  ori          s10, s4, -784
                  or           sp, s9, s2
                  beq          t5, s9, 249f
                  sll          a2, t6, s4
237:              sltiu        a3, a3, 712
                  slt          a1, t4, t5
                  ori          a3, s5, -1900
                  lui          s10, 312823
                  xor          s8, a4, a5
                  xor          a7, s10, t2
                  srl          a3, a2, s11
                  nop
245:              lui          s4, 316556
                  add          ra, gp, ra
247:              lui          s5, 638507
                  srli         s9, s3, 22
249:              slti         zero, s2, -2043
                  ori          zero, s7, -612
                  sra          a6, s8, a1
                  srli         zero, t0, 28
                  add          gp, a3, a5
                  or           s0, s3, t4
                  slt          s1, a4, zero
                  or           a6, ra, a2
                  add          t3, t6, s11
                  beq          a7, s8, 270f
                  nop
                  bge          t5, a6, 261f
261:              sltiu        s3, t0, -272
                  lui          t0, 961662
                  blt          s1, s6, 269f
                  srai         a4, a1, 14
                  lui          t6, 741902
                  sra          s0, a3, sp
                  andi         s10, t4, 510
                  xori         ra, a5, -2005
269:              blt          t1, t5, 270f
270:              sra          s0, sp, t1
                  nop
                  sra          t1, tp, tp
                  xor          t1, t4, a1
                  lui          s9, 177903
                  add          a0, t5, a5
                  xori         s9, a1, 1868
                  andi         s7, gp, 514
                  ori          s10, a5, -810
                  blt          a7, sp, 297f
                  sltu         a4, a1, s1
                  xor          s8, t1, s5
                  xor          gp, s9, s7
                  bne          s5, s6, 289f
                  bgeu         s8, t0, 290f
                  bne          t5, s8, 292f
                  sra          s8, t6, s3
                  auipc        ra, 691156
                  srli         s8, a0, 0
289:              srai         zero, t0, 18
290:              andi         a4, s10, -2003
                  sltu         t3, t0, tp
                  la           t2, sub_2
                  andi         a5, s5, -222
                  nop
                  sll          a2, s8, t2
                  addi         t2, t2, -229
                  srl          a5, s1, a1
                  lui          s8, 966560
                  srl          t6, t5, a7
                  xori         s0, a2, -347
sub_1_j2:         jalr         ra, t2, 229 #jump sub_1 -> sub_2
                  xori         a7, s2, 1714
292:              sltu         a2, s7, t2
                  and          s10, t4, t3
                  addi         t2, zero, -1 #init loop 0 counter
                  nop
                  andi         zero, a2, -1822
                  sltu         a6, sp, s11
                  addi         s10, zero, -19 #init loop 0 limit
sub_1_6_0_t:      addi         t3, s0, -254
                  ori          t0, s6, 1735
                  ori          s6, gp, -1934
                  addi         t2, t2, -1 #update loop 0 counter
                  bge          t2, s10, sub_1_6_0_t #branch for loop 0
                  slti         gp, t6, -831
                  addi         a2, zero, 5 #init loop 0 counter
                  sub          t0, s9, t1
                  sra          zero, s3, a4
                  xori         a0, t3, -850
                  xor          t6, s10, t5
                  addi         s9, zero, 13 #init loop 0 limit
                  srai         a1, a0, 13
sub_1_11_0_t:     sub          a1, a0, t4
                  addi         a2, a2, 7 #update loop 0 counter
                  addi         s8, t0, 705
                  or           s7, s7, t6
                  sll          s8, a6, t0
                  nop
                  blt          a2, s9, sub_1_11_0_t #branch for loop 0
                  ori          s4, t3, -1552
                  andi         s5, t0, 1287
                  or           gp, s8, t4
                  bgeu         s4, a6, 307f
297:              add          s11, s6, s10
                  and          a3, t6, s9
                  srl          t0, s3, a1
                  add          s0, s4, s0
                  bge          a1, s4, 314f
                  srli         t2, tp, 22
                  bne          a2, s0, 321f
                  slt          s9, s7, s8
                  bltu         t6, t4, 319f
                  nop
307:              beq          sp, zero, 315f
                  sltu         t1, t1, a6
                  srai         s7, t1, 25
                  sll          s6, s2, a0
                  srl          a7, t2, t5
                  bgeu         t1, t6, 330f
                  srli         a0, s0, 22
314:              bne          t2, a4, 320f
315:              lui          s4, 273953
                  bge          a5, t3, 324f
                  slli         ra, s2, 3
                  lui          s6, 374687
319:              sub          sp, s7, a0
320:              nop
321:              lui          s7, 895987
                  andi         s1, t0, 1336
                  sltiu        t6, t1, 933
324:              slt          s7, sp, s10
                  lui          a5, 717955
                  auipc        a4, 142964
                  srli         t1, t3, 8
                  bne          t1, a7, 339f
                  andi         t4, s5, -1860
330:              sub          s9, a3, s10
                  lui          a7, 669153
                  sub          a1, s1, s0
                  slli         s9, s6, 31
                  bltu         zero, s11, 337f
                  ori          zero, tp, -1336
                  sltiu        a1, t3, -1147
337:              srl          s11, s6, s3
                  xor          s3, s1, s9
339:              ori          s0, ra, 1730
                  sub          gp, t3, a1
                  srai         a5, t5, 6
                  sub          a0, s2, t5
                  srai         s8, a0, 22
                  blt          s2, gp, 345f
345:              add          t2, t6, s5
                  and          s9, sp, a0
                  add          gp, s6, t5
                  andi         sp, a6, -1491
                  add          ra, t0, a1
                  sll          t3, t1, s5
                  sll          s6, t1, s11
                  xori         s4, s7, 1007
                  sltiu        a4, s3, 1887
                  auipc        t3, 1030080
                  blt          t0, gp, 362f
                  xor          s4, t5, t4
                  add          t3, s7, ra
                  auipc        a6, 554682
                  sra          zero, a1, a5
                  slti         a1, s6, -831
                  addi         ra, s10, 310
362:              sra          a0, s7, s6
                  addi         a1, tp, -1163
                  srli         a4, t5, 6
                  lui          a6, 466499
                  sltu         a2, a1, s11
                  or           a3, gp, s11
                  sltu         sp, s2, s10
                  bgeu         a0, a4, 383f
                  sltiu        a5, a4, -358
                  beq          a6, a6, 383f
                  slli         a1, s8, 11
                  xor          s9, t0, s9
                  and          a3, s8, sp
                  blt          a7, t0, 388f
                  beq          ra, a7, 382f
                  bltu         a4, t5, 390f
                  sll          s3, a4, a3
                  bltu         gp, sp, 396f
                  blt          sp, t2, 399f
                  bne          ra, a4, 385f
382:              nop
383:              sltiu        zero, ra, 2025
                  xor          s5, gp, a7
385:              nop
                  xor          s5, a7, t5
                  sltu         a0, s0, a4
388:              srai         sp, s6, 15
                  addi         s6, s7, -1782
390:              slti         s10, a5, 591
                  slli         a2, s4, 19
                  srai         t1, s8, 28
                  bltu         s4, t1, 408f
                  auipc        zero, 433894
                  srai         ra, gp, 7
396:              bge          s11, s0, 402f
                  sub          s5, t2, t5
                  slti         zero, s11, -1081
399:              bne          t3, t6, 404f
                  sltiu        s7, s3, -317
                  srli         sp, s5, 8
402:              sltiu        a4, a0, 536
                  xor          s6, s0, s11
404:              srai         t0, t1, 25
                  bne          s10, s7, 414f
                  bge          t3, s4, 422f
                  addi         t4, zero, -6 #init loop 1 counter
                  and          a6, t3, s4
                  lui          a5, 633561
                  addi         a2, zero, -8 #init loop 1 limit
                  srli         a0, ra, 26
sub_1_0_1_t:      xor          s9, s0, sp
                  srli         s0, gp, 19
                  add          s8, ra, s2
                  sll          t1, s2, s7
                  srli         s10, ra, 26
                  slt          a7, a0, a5
                  addi         t4, t4, -3 #update loop 1 counter
                  addi         s7, zero, -10 #init loop 0 counter
                  xor          zero, a1, s8
                  addi         t2, zero, -16 #init loop 0 limit
                  andi         a6, a6, 655
                  sll          s9, s9, a3
                  and          t3, zero, gp
sub_1_0_0_t:      lui          s5, 873395
                  or           s1, t4, a0
                  lui          t6, 589068
                  srli         t6, s4, 13
                  srai         sp, a2, 21
                  addi         s7, s7, -3 #update loop 0 counter
                  beq          s7, t2, sub_1_0_0_t #branch for loop 0
                  nop
                  bge          t4, a2, sub_1_0_1_t #branch for loop 1
                  srli         t0, s5, 15
                  nop
408:              andi         t1, s11, -1061
                  add          s3, a3, a7
                  srl          t6, s1, sp
                  sltiu        t1, a7, -262
                  ori          a5, sp, 1308
                  bne          s10, a0, 428f
414:              add          t4, zero, s7
                  sll          t3, a4, s10
                  andi         a7, sp, -63
                  srli         t6, s8, 0
                  sltu         zero, a1, a5
                  nop
                  bne          a1, s8, 439f
                  xor          s1, s3, a5
422:              sltu         sp, t0, s3
                  xori         a3, a4, -1739
                  auipc        t2, 82698
                  sra          s1, t2, zero
                  nop
                  sra          gp, gp, sp
428:              bne          zero, ra, 429f
429:              srai         a4, t1, 6
                  xor          s5, a1, t1
                  bgeu         zero, s9, 447f
                  srli         a6, a6, 22
                  slli         s6, t3, 23
                  sltiu        s8, t4, 439
                  and          zero, a0, s11
                  srli         s7, a1, 26
                  slt          s8, t6, s7
                  bne          s2, s5, 449f
439:              bgeu         s8, a5, 446f
                  bne          t0, a4, 448f
                  xor          s8, s10, t6
                  sra          s4, zero, s9
                  bltu         s4, tp, 449f
                  sra          t3, a3, t0
                  beq          a0, a2, 454f
446:              sll          s8, s4, s0
447:              xori         s6, s5, 122
448:              srl          a5, gp, t0
449:              sltu         t0, s11, t2
                  sltu         s6, s6, tp
                  bgeu         a4, t3, 456f
                  lui          t4, 357410
                  xori         gp, s2, -249
454:              srl          a4, a6, s0
                  blt          tp, a4, 463f
456:              andi         a6, t5, 735
                  xor          a6, t4, gp
                  srai         t4, s7, 4
                  blt          ra, a5, 467f
                  sltiu        s5, s7, 238
                  ori          s1, s6, -1497
                  or           s3, s11, tp
463:              srl          a5, s9, a4
                  beq          s7, t1, 477f
                  slli         s0, s7, 16
                  sll          gp, t4, s2
467:              blt          t6, s2, 483f
                  and          s7, a2, sp
                  andi         a7, a3, 1645
                  ori          a3, t3, 2034
                  sll          s11, s7, s6
                  add          a3, s6, zero
                  sra          s5, s10, t2
                  auipc        s3, 277472
                  bne          s4, s6, 476f
476:              blt          t3, t5, 495f
477:              auipc        s11, 322981
                  slti         zero, s2, -461
                  xori         t4, t2, -338
                  and          a2, t1, s11
                  slli         a3, s8, 16
                  sltu         a0, sp, s6
483:              bgeu         s9, s3, 490f
                  nop
                  bltu         s7, tp, 497f
                  bne          t5, a2, 499f
                  add          s6, a6, s8
                  slt          a3, a2, s2
                  srli         a7, s10, 10
490:              auipc        s4, 144836
                  beq          s9, t4, 495f
                  blt          zero, a5, 498f
                  addi         a5, ra, 768
                  bltu         t3, a0, 500f
495:              auipc        a4, 911682
                  slt          s6, s9, t2
497:              srai         s0, s6, 3
498:              add          a3, t2, gp
499:              sra          sp, t6, s7
500:              or           s3, a0, t4
                  bltu         s3, a3, 512f
                  srl          a2, s9, t0
                  bne          t6, gp, 518f
                  srl          s4, s7, t5
                  ori          a2, a6, 151
                  bltu         s2, s6, 514f
                  srl          a7, a2, t2
                  sltiu        s11, s6, -815
                  ori          a2, s8, 969
                  bge          gp, a6, 511f
511:              lui          t4, 411822
512:              sub          zero, t4, s7
                  bgeu         ra, s3, 527f
514:              sll          s6, a7, s8
                  addi         ra, a7, 549
                  or           a5, a3, s9
                  bltu         s1, a0, 535f
518:              slti         t0, s3, -1866
                  addi         s9, s0, 56
                  nop
                  add          s3, s10, gp
                  xori         ra, a5, -302
                  and          s11, ra, s8
                  blt          a1, s3, 531f
                  beq          s8, t0, 540f
                  sll          s7, a3, t6
527:              srl          t1, s11, a2
                  slt          s10, s2, a2
                  add          a1, s3, gp
                  andi         t3, a3, 1236
531:              auipc        s8, 83252
                  sub          s9, t3, a0
                  addi         a7, tp, -698
                  add          t4, t3, s10
535:              nop
                  blt          s4, a1, 547f
                  addi         s3, s9, 521
                  add          ra, s1, s7
                  sltu         t4, t3, a2
540:              add          s8, a1, t2
                  slt          t3, a7, a5
                  slli         s4, gp, 2
                  sltu         a5, a4, t4
                  slli         a5, a4, 6
                  auipc        gp, 682416
                  sra          s7, a4, s5
547:              bgeu         s9, s4, 565f
                  add          s7, t0, s2
                  xori         gp, s4, 203
                  srl          t1, s3, s7
                  bgeu         s11, a6, 568f
                  add          sp, tp, s8
                  blt          ra, s10, 569f
                  sltiu        t1, a2, 265
                  srl          s8, gp, s5
                  beq          s6, t5, 575f
                  bltu         s6, a2, 560f
                  bltu         a1, s0, 572f
                  xor          gp, t4, s5
560:              beq          t3, s3, 578f
                  srl          s0, t6, s0
                  ori          s1, s7, -182
                  addi         a0, s7, 693
                  srl          t3, t2, s10
565:              srai         zero, ra, 0
                  beq          t5, gp, 574f
                  srli         s7, a4, 0
568:              bge          a7, s0, 579f
569:              bgeu         a2, a4, 583f
                  sltu         s6, s8, a7
                  ori          s11, s10, -1250
572:              andi         s0, s6, -322
                  sll          s9, t0, s1
574:              xor          s8, gp, t2
575:              bgeu         ra, gp, 588f
                  slli         sp, t3, 27
                  srl          s4, t4, zero
578:              and          zero, t5, t0
579:              xori         s5, ra, 800
                  add          s11, a1, ra
                  sll          sp, a4, s7
                  bge          a3, zero, 598f
583:              bgeu         a5, s9, 586f
                  add          gp, a6, s0
                  addi         a0, zero, -8 #init loop 0 counter
                  srai         ra, s4, 7
                  xor          s6, s0, s7
                  slti         t0, s9, -873
                  auipc        s4, 375666
                  sra          sp, t4, a3
                  sltiu        s9, s2, 821
                  addi         a4, zero, -14 #init loop 0 limit
                  lui          a2, 279097
                  xori         s11, t2, 1918
sub_1_9_0_t:      lui          gp, 383187
                  xor          zero, a5, s2
                  srai         zero, ra, 25
                  addi         a0, a0, -3 #update loop 0 counter
                  auipc        s9, 508892
                  srli         s4, s7, 12
                  beq          a0, a4, sub_1_9_0_t #branch for loop 0
                  slt          a7, s1, t2
                  slti         sp, a2, 1490
586:              add          s10, s10, t0
                  sltu         t1, a2, s3
588:              srai         t6, s8, 4
                  bltu         t6, a6, 590f
590:              bge          s6, sp, 608f
                  slt          zero, t5, s10
                  srai         s4, s3, 22
                  ori          s1, s6, -1648
                  bge          a6, s6, 595f
595:              bltu         tp, s3, 606f
                  add          sp, a6, s0
                  addi         t3, t2, -1283
598:              and          t1, a5, s3
                  slti         s1, a7, -1711
                  sub          s7, t1, a7
                  slt          a3, s9, s3
                  bgeu         s6, s1, 614f
                  beq          sp, a2, 610f
                  sltiu        s8, s10, -1008
                  or           t2, a2, a0
606:              sub          s10, a7, t3
                  bltu         s8, s11, 624f
608:              srl          a6, tp, gp
                  slti         t4, s1, 1053
610:              sra          s0, t4, a4
                  xor          a4, a3, a5
                  srli         s5, s7, 0
                  srl          t4, s9, t1
614:              bltu         s2, a0, 633f
                  beq          s6, a1, 631f
                  add          gp, s9, s7
                  bltu         s4, tp, 624f
                  sltiu        a3, s2, -1828
                  sub          sp, tp, s8
                  srai         gp, a7, 30
                  xor          s3, t5, t0
                  addi         ra, s5, 2004
                  sub          gp, a1, s0
624:              and          s1, a4, a6
                  bne          s6, zero, 638f
                  auipc        s7, 950700
                  slt          t6, sp, zero
                  slti         a7, a0, 1650
                  xor          a7, sp, s11
                  andi         s10, s3, 1455
631:              blt          a2, s9, 646f
                  srli         gp, t4, 25
633:              xori         s3, s6, 295
                  blt          s6, gp, 643f
                  slti         s6, a6, -1751
                  xor          s11, gp, zero
                  srai         t0, t0, 26
638:              sub          s1, t1, s6
                  xor          gp, t6, s9
                  sltiu        t0, s8, -1257
                  sub          s0, zero, a2
                  bltu         t6, t2, 656f
643:              auipc        s1, 833478
                  sltu         a0, s7, s10
                  add          s0, s4, t4
646:              slli         s0, a2, 6
                  slt          t0, s10, t3
                  slti         a0, a0, -376
                  sltiu        a0, a7, 1167
                  srli         s6, a4, 25
                  blt          s10, a2, 656f
                  ori          t4, a1, 402
                  sll          a3, gp, t3
                  sll          s4, a6, ra
                  sub          zero, s0, ra
656:              bltu         a0, t3, 662f
                  xor          a2, s1, s1
                  srli         ra, t1, 25
                  auipc        t1, 855604
                  xori         s8, s1, 643
                  sll          s10, gp, gp
662:              slti         ra, a3, -1689
                  or           t6, s11, t2
                  srai         a7, s4, 17
                  sra          s6, s11, s8
                  sltiu        s5, a2, 1596
                  srl          s1, zero, a3
                  or           t1, zero, s11
                  slt          s5, s7, gp
                  sltiu        a4, a7, -1825
                  sll          s11, a4, a5
                  slt          a2, a3, a0
                  andi         a2, s11, 481
                  sltu         s4, sp, s0
                  xori         s3, t0, -1842
                  lui          s4, 683267
                  add          a4, a4, s9
                  xori         gp, t3, -1877
                  slt          t0, s3, s3
                  or           a4, t4, t6
                  srli         s9, a6, 17
                  bge          s0, s8, 701f
                  srli         t0, t0, 14
                  lui          a3, 816367
                  or           ra, a7, gp
                  slt          a5, a5, s4
                  srai         a2, ra, 30
                  nop
                  srl          s11, a1, t4
                  bltu         a5, s5, 696f
                  sltiu        t4, tp, 1758
                  sra          s11, s10, a3
                  and          s8, s7, s6
                  slli         s5, a4, 24
                  addi         t2, sp, 804
696:              ori          t3, t3, 398
                  xori         zero, a7, -872
                  blt          s6, t4, 706f
                  slli         t4, s4, 19
                  blt          t1, s8, 708f
701:              xor          s1, s2, s11
                  srai         a6, s4, 12
                  slt          s8, s11, a2
                  sltu         s9, t0, t0
                  sra          t3, t6, t6
706:              bltu         s4, sp, 721f
                  slli         a3, a2, 18
708:              srai         sp, tp, 19
                  auipc        a6, 85715
                  sltiu        s11, s10, 1416
                  beq          s9, tp, 717f
                  sltu         t1, s9, t0
                  slli         t3, s4, 22
                  sltu         a1, a1, ra
                  bgeu         zero, t3, 719f
                  slt          t6, a4, t3
717:              slli         a5, s2, 2
                  sll          s0, t5, a0
719:              beq          s2, gp, 732f
                  xori         s7, s5, -1502
721:              bne          s10, s7, 736f
                  auipc        t1, 432010
                  or           a0, a5, gp
                  ori          gp, gp, 211
                  andi         gp, sp, 1869
                  blt          s0, t5, 731f
                  bge          s10, a6, 741f
                  ori          s11, s9, 1370
                  xor          a3, s6, s1
                  slt          s9, tp, s3
731:              srli         a0, a2, 16
732:              bge          t3, s9, 738f
                  and          a4, a3, t4
                  sltu         s9, zero, s11
                  sltu         s5, tp, s5
736:              srai         t0, t0, 18
                  slt          s5, ra, t5
738:              sll          t6, s1, tp
                  slt          ra, t4, tp
                  srli         s10, t5, 4
741:              sra          a4, t0, t4
                  andi         t1, s10, -1151
                  and          s6, t1, s9
                  slti         t4, a5, 1655
                  sltiu        t0, zero, 1917
                  auipc        a7, 664417
                  auipc        a5, 309291
                  xor          ra, t6, a2
                  addi         zero, a6, 814
                  andi         ra, s11, -928
                  bltu         s3, t5, 754f
                  slti         gp, t0, 915
                  xori         zero, s3, 614
754:              lui          zero, 21006
                  add          t0, t2, s3
                  bgeu         a2, a5, 765f
                  sra          t6, sp, a3
                  slti         t1, s2, -2020
                  srai         s3, tp, 22
                  bne          t3, a4, 769f
                  andi         s10, ra, 568
                  add          s5, s8, s0
                  sltu         a2, s11, t2
                  bgeu         sp, s8, 769f
765:              srli         s3, tp, 6
                  blt          a3, gp, 769f
                  add          sp, zero, s7
                  blt          a3, tp, 769f
769:              nop
                  lw           ra, 4(t5)
                  ori          gp, s0, -1706
                  slti         a5, s0, -346
                  nop
                  addi         t5, t5, 12
                  slli         s1, a7, 22
                  sltu         s1, a3, t3
1112:             addi x3, x1, 1
1112:             jalr x3, x3, 0
sub_4:            addi         t5, t5, -16
                  or           t3, s8, s3
                  sw           ra, 4(t5)
                  lui          t2, 936860
                  ori          a5, gp, 1885
                  sub          a7, a5, s5
                  addi         t2, zero, 8 #init loop 1 counter
                  srli         t6, s8, 10
                  srai         gp, a4, 17
                  or           ra, tp, gp
                  slli         s6, t2, 6
                  sra          gp, zero, sp
                  addi         s5, zero, 7 #init loop 1 limit
                  sll          s11, a1, s10
sub_4_0_1_t:      sub          s9, gp, t6
                  srai         s11, tp, 4
                  addi         t2, t2, -5 #update loop 1 counter
                  addi         t0, zero, -6 #init loop 0 counter
                  addi         a4, zero, 2 #init loop 0 limit
sub_4_0_0_t:      add          zero, s7, tp
                  nop
                  lui          sp, 202022
                  addi         t0, t0, 1 #update loop 0 counter
                  beq          t0, a4, sub_4_0_0_t #branch for loop 0
                  bgeu         t2, s5, sub_4_0_1_t #branch for loop 1
                  sra          a3, s10, s3
                  addi         a1, zero, -1 #init loop 0 counter
                  ori          a7, s2, -1824
                  xor          s3, s11, t5
                  nop
                  ori          s4, s9, 1626
                  xor          s11, t2, a6
                  srl          a2, t1, t6
                  ori          t4, s3, -1918
                  addi         s1, zero, -3 #init loop 0 limit
                  sltiu        t6, s11, 1894
                  sra          a7, s6, t6
sub_4_1_0_t:      nop
                  or           a7, a0, t1
                  lui          s8, 280102
                  addi         a1, a1, -2 #update loop 0 counter
                  sra          a0, a2, s6
                  xori         s3, s10, 753
                  addi         a7, a2, -197
                  xor          s6, a6, t3
                  sub          s0, s4, ra
                  srli         a4, t4, 21
                  sll          s3, s0, t3
                  andi         t3, s10, -140
                  srl          s8, a0, s11
                  srli         a3, a0, 31
                  andi         a4, gp, 994
                  slt          a2, a7, a6
                  bne          a1, s1, sub_4_1_0_t #branch for loop 0
                  andi         a7, s7, -121
                  addi         a7, zero, -9 #init loop 1 counter
                  srai         sp, s3, 28
                  sltiu        t1, s5, 1927
                  xori         s6, s2, 969
                  addi         t2, zero, 3 #init loop 1 limit
                  sll          s10, a6, ra
sub_4_3_1_t:      auipc        t4, 161143
                  sll          a1, t1, s0
                  xor          s6, s6, s6
                  addi         a7, a7, 7 #update loop 1 counter
                  addi         s1, zero, -10 #init loop 0 counter
                  srli         s10, a5, 28
                  andi         s3, s9, 2038
                  slt          t6, t6, a7
                  ori          a2, s8, -836
                  slli         t6, s9, 21
                  slli         sp, gp, 6
                  slli         a2, ra, 25
                  andi         s6, sp, 1780
                  addi         s8, zero, -2 #init loop 0 limit
                  sltu         s7, s0, tp
sub_4_3_0_t:      and          s10, s7, a4
                  slli         s4, s6, 22
                  slti         s9, s10, 223
                  addi         t4, t0, -35
                  addi         s1, s1, 1 #update loop 0 counter
                  sra          ra, s8, s4
                  ori          s6, s7, 965
                  bne          s1, s8, sub_4_3_0_t #branch for loop 0
                  and          s11, tp, gp
                  bltu         a7, t2, sub_4_3_1_t #branch for loop 1
                  slti         s0, t1, 1413
                  add          s11, s10, sp
                  ori          gp, t3, 117
                  xori         gp, s0, -26
                  bgeu         s3, t1, 23f
                  addi         t0, gp, -72
                  andi         s9, s5, -1386
                  ori          a2, s4, 758
                  slli         s9, sp, 14
                  slt          a1, t3, s10
                  srl          a0, t2, t0
                  sub          t6, s5, a2
                  bne          a1, a4, 12f
12:               bgeu         a7, t6, 16f
                  slt          s4, s8, t2
                  sra          s7, s8, a7
                  blt          s2, ra, 29f
16:               sra          s1, a7, zero
                  slli         s1, s11, 25
                  slt          gp, s1, t1
                  bgeu         a7, a5, 25f
                  bgeu         a7, a7, 22f
                  bltu         a0, s0, 33f
22:               andi         t6, s9, 174
23:               slti         t3, t4, -632
                  auipc        a6, 243353
25:               beq          s0, tp, 26f
26:               ori          s10, s6, 895
                  andi         a1, a6, -974
                  nop
29:               xor          t2, s8, s2
                  ori          gp, t3, 1028
                  bne          s8, s2, 51f
                  srli         ra, sp, 0
33:               srli         a1, t3, 7
                  srai         s4, s7, 5
                  sltu         t6, s1, t1
                  bltu         s6, s7, 52f
                  nop
                  srai         t0, t1, 5
                  ori          t2, a3, 1296
                  bltu         a6, t5, 43f
                  or           a0, s5, s3
                  nop
43:               slt          t1, a1, t5
                  and          s9, s5, sp
                  sra          s4, tp, s0
                  srl          a6, ra, tp
                  blt          s0, t3, 51f
                  and          s7, gp, t1
                  sltiu        a2, t3, -1204
                  bltu         t2, s5, 63f
51:               xor          a4, t4, gp
52:               srai         a3, s9, 26
                  srai         s7, sp, 31
                  slli         zero, a1, 24
                  lui          a1, 827095
                  slt          sp, s8, s9
                  bgeu         a2, tp, 76f
                  andi         s0, t0, -1602
                  sltu         s0, sp, t1
                  xor          a1, s8, tp
                  srl          t1, t4, a0
                  add          a5, a7, t2
63:               slt          a6, a0, s2
                  andi         a0, s8, -178
                  beq          a6, s8, 85f
                  add          s11, t1, a4
                  beq          s11, a2, 79f
                  sub          s11, t4, a4
                  beq          s9, a6, 87f
                  srl          s0, tp, t4
                  slti         s0, t1, -1420
                  and          s11, t5, s6
                  ori          s7, s1, 279
                  add          t6, s7, s0
                  bge          a4, t2, 77f
76:               xor          s1, t5, s11
77:               sra          t3, s0, a2
                  sll          a5, t3, s5
79:               nop
                  slti         a0, s9, 541
                  lui          gp, 765719
                  andi         ra, t4, 341
                  auipc        a7, 832084
                  lui          ra, 911272
85:               srl          s5, t0, sp
                  srai         s7, s10, 4
87:               slli         s8, s8, 10
                  blt          s9, s2, 89f
89:               xor          s11, s6, s2
                  nop
                  xori         sp, a5, -5
                  nop
                  auipc        ra, 824003
                  add          s0, s7, zero
                  slt          a4, a7, s2
                  bgeu         s3, s2, 105f
                  xori         sp, s10, 246
                  and          s0, ra, gp
                  nop
                  andi         a1, a1, -2023
                  xori         s8, a3, -1462
                  ori          s5, s7, -2008
                  sltu         t4, t5, a2
                  bltu         s7, t4, 106f
105:              sll          a3, s6, t1
106:              sub          gp, ra, s2
                  slli         a6, t6, 1
                  beq          s4, a0, 115f
                  add          t1, s7, s5
                  and          t6, s1, a0
                  bge          s3, s6, 126f
                  lui          a7, 959962
                  sub          gp, t4, a2
                  slt          t6, sp, t1
115:              slli         s9, a4, 18
                  srli         t1, s7, 9
                  auipc        s1, 601269
                  xori         t3, gp, -1644
                  bge          t3, t6, 123f
                  sltiu        s0, s2, 1587
                  or           a0, s6, s1
                  slli         a6, ra, 6
123:              bgeu         a3, t4, 127f
                  srai         a4, s3, 27
                  ori          s3, a5, -1698
126:              slti         s11, t6, -1283
127:              srli         a2, t4, 5
                  slt          t4, t0, a0
                  nop
                  blt          t6, a6, 132f
                  blt          t4, gp, 150f
132:              addi         s11, a6, 1751
                  bge          a5, zero, 150f
                  slti         t6, ra, -932
                  srai         s0, s0, 18
                  beq          a5, t5, 138f
                  nop
138:              sltu         s7, a5, t0
                  bge          s11, s5, 143f
                  addi         t1, s4, 614
                  addi         s10, a2, 1134
                  slt          s11, ra, s5
143:              srai         a6, t1, 2
                  and          s8, a6, a6
                  addi         s5, zero, -7 #init loop 0 counter
                  xori         t2, t2, 1810
                  srl          s6, s4, a4
                  addi         ra, zero, -11 #init loop 0 limit
                  sll          sp, a0, s8
                  xor          gp, s8, zero
                  nop
                  add          a2, t4, s5
                  sub          zero, ra, s6
                  xori         s10, a0, -1099
sub_4_2_0_t:      or           s7, a7, s9
                  addi         s5, s5, -2 #update loop 0 counter
                  xori         t6, t3, 1510
                  sub          s8, a5, s2
                  bge          s5, ra, sub_4_2_0_t #branch for loop 0
                  srl          t3, zero, s9
                  bge          s2, a3, 164f
                  sltiu        t2, s11, 92
                  sltu         t4, s5, tp
                  sub          s1, s8, s11
                  add          s5, s6, t5
150:              srl          s1, s11, t2
                  slti         t0, t0, 1813
                  sub          s5, t6, t4
                  xori         a5, tp, -1610
                  slti         a0, zero, -55
                  xor          s8, gp, t5
                  srl          a3, s8, a7
                  sra          s8, t4, a7
                  sub          s7, a6, t3
                  ori          a2, t6, -1319
                  slti         zero, t4, 358
                  sll          s4, s7, zero
                  slt          s4, s5, s8
                  sll          s4, s6, s0
164:              sub          a0, s9, a3
                  srl          t0, s4, s4
                  bgeu         s8, t6, 170f
                  auipc        s3, 675472
                  slti         ra, t5, 75
                  sra          s1, t1, zero
170:              slt          ra, a6, s2
                  xor          zero, s11, ra
                  ori          sp, s11, -1483
                  or           s6, s2, t0
                  or           a0, s4, tp
                  srli         s1, a6, 5
                  bge          a2, a0, 185f
                  slti         s1, s10, -918
                  nop
                  auipc        a5, 738785
                  slti         t0, t6, 1675
                  srai         sp, gp, 0
                  or           a1, s10, s11
                  srl          s0, t0, a7
                  sltu         s1, a0, t3
185:              beq          gp, a6, 189f
                  slti         s8, s3, -755
                  ori          a3, t0, -1206
                  srl          gp, s1, s3
189:              or           a6, t4, a4
                  or           s11, a7, sp
                  sltu         s6, a7, s6
                  slli         s8, t5, 4
                  bge          t5, gp, 211f
                  slli         t6, s8, 11
                  ori          a2, a3, 1268
                  sltu         s11, s4, s1
                  and          t1, a4, a1
                  beq          t2, ra, 200f
                  blt          s5, zero, 203f
200:              add          t1, s3, a7
                  sub          a6, a0, s7
                  srl          a6, s5, s8
203:              bge          gp, a1, 205f
                  nop
205:              sub          a6, a5, t6
                  sra          a0, s0, t4
                  sub          s7, s6, a2
                  sltiu        s10, t0, 562
                  addi         sp, t2, -172
                  sll          a1, a7, a1
211:              bltu         a2, a4, 216f
                  sltiu        t4, t0, 505
                  sra          t4, a5, a3
                  ori          s5, a7, -519
                  slli         a0, a1, 17
216:              andi         s6, gp, 729
                  sll          s11, a4, s3
                  andi         s10, s8, -1145
                  xor          gp, s2, t6
                  ori          t2, a4, 972
                  auipc        t3, 43599
                  addi         sp, a3, 1180
                  lw           ra, 4(t5)
                  srai         a3, a7, 26
                  addi         t5, t5, 16
                  sub          t1, a6, tp
                  sub          gp, t3, a1
331:              addi x19, x1, 0
331:              jalr x19, x19, 0
sub_5:            add          a2, s9, gp
                  ori          s10, a5, -468
                  bgeu         a1, s4, sub_5_stack_p
                  srli         gp, a1, 30
sub_5_stack_p:    addi         t5, t5, -16
                  sw           ra, 4(t5)
                  sll          t6, s5, s8
                  addi         s10, zero, 8 #init loop 1 counter
                  lui          s4, 1006811
                  sub          a7, s8, sp
                  slti         s9, s3, 1139
                  auipc        s8, 1017080
                  sra          a3, gp, zero
                  and          s9, s1, a7
                  addi         t3, zero, 5 #init loop 1 limit
sub_5_0_1_t:      slti         a7, t6, -800
                  addi         s10, s10, -2 #update loop 1 counter
                  xori         t6, s5, -496
                  addi         t2, zero, 6 #init loop 0 counter
                  sltiu        t1, s6, 1115
                  addi         gp, zero, -18 #init loop 0 limit
                  ori          a2, s8, -822
                  or           a0, s0, s9
                  slli         s1, t1, 28
sub_5_0_0_t:      slti         s6, a3, 1204
                  slli         a1, s1, 26
                  addi         t2, t2, -8 #update loop 0 counter
                  slt          s6, s6, s2
                  auipc        a6, 432546
                  nop
                  slli         a2, a7, 21
                  addi         s9, a2, 653
                  beq          t2, gp, sub_5_0_0_t #branch for loop 0
                  srl          a7, a0, s2
                  bgeu         s10, t3, sub_5_0_1_t #branch for loop 1
                  auipc        s3, 495164
                  sra          s3, zero, a0
                  sra          t2, a0, gp
                  srl          s0, sp, a5
                  auipc        ra, 408481
                  add          a5, s3, t4
                  sltu         s7, s10, a3
                  or           t4, s6, sp
                  xor          a0, s9, a5
                  auipc        a2, 301804
                  srai         t0, s1, 24
                  bgeu         a4, a0, 15f
                  sll          t3, a7, sp
                  sll          a5, s7, a0
                  bne          a1, s9, 26f
                  auipc        a3, 338581
15:               srli         t3, a6, 2
                  or           zero, s10, ra
                  sub          t1, a7, a3
                  sra          a4, a2, t0
                  sltu         s8, s5, gp
                  or           t3, s9, s9
                  and          s1, t6, zero
                  bge          s3, t0, 23f
23:               bgeu         t2, ra, 32f
                  bltu         s1, s11, 39f
                  sub          a7, a3, gp
26:               bgeu         t4, s9, 36f
                  auipc        a1, 9161
                  bltu         ra, s2, 41f
                  sra          zero, zero, s8
                  sltu         s11, s9, t1
                  sra          s1, ra, s2
32:               addi         ra, t2, 851
                  srai         t3, s5, 23
                  sra          t4, a3, t1
                  nop
36:               andi         sp, s1, 1371
                  sltiu        s3, a2, -1801
                  slli         s6, tp, 11
39:               add          t4, t6, s1
                  sltu         gp, a6, t6
41:               srl          t1, s2, t2
                  srl          gp, t4, a2
                  srli         s6, a2, 4
                  auipc        a5, 848237
                  srl          sp, a6, a2
                  sll          a0, gp, s0
                  bge          t3, t4, 55f
                  srai         s8, s7, 25
                  sub          s8, a0, a4
                  auipc        s3, 969300
                  auipc        ra, 301266
                  sltiu        s11, s2, -700
                  sll          s4, s0, s3
                  bltu         s7, a7, 71f
55:               or           s0, s5, s4
                  nop
                  addi         a7, a6, 1182
                  srai         t2, t4, 14
                  srai         a2, t5, 5
                  sltiu        zero, a7, 889
                  blt          zero, a3, 66f
                  beq          tp, a2, 65f
                  xor          t3, a7, s1
                  srai         t6, t6, 10
65:               bgeu         a5, s11, 82f
66:               lui          ra, 1037619
                  srli         a6, a0, 13
                  sll          s9, t6, t5
                  slti         t4, s9, -529
                  and          t0, a3, s0
71:               slt          zero, t0, a5
                  blt          t3, gp, 89f
                  slli         s7, t1, 3
                  sltiu        s5, a4, -1785
                  lui          s6, 24404
                  bne          a5, t3, 87f
                  add          a3, s6, a6
                  sll          sp, a1, a7
                  srli         a1, s2, 10
                  lui          s10, 751493
                  auipc        s5, 331184
82:               sub          a7, s6, s1
                  bne          a7, a2, 90f
                  addi         t2, a2, 1313
                  beq          a6, s10, 91f
                  lui          s5, 532805
87:               lui          a6, 340253
                  andi         a2, t5, 361
89:               sll          a4, s8, s10
90:               slti         a7, t3, 2012
91:               ori          t1, a0, -1852
                  add          s4, s9, s8
                  and          sp, s11, a1
                  andi         sp, a6, 1745
                  xor          a2, gp, s7
                  nop
                  addi         a2, s11, 651
                  sub          t4, s0, zero
                  lw           ra, 4(t5)
                  sub          s7, a7, s11
                  addi         t5, t5, 16
                  auipc        t0, 191309
                  lui          s7, 77366
                  auipc        t2, 601255
                  andi         gp, a4, 161
142:              addi x11, x1, 0
142:              jalr x11, x11, 0
sub_3:            andi         gp, a5, -1490
                  sltu         a0, s10, t1
                  and          s7, s4, s10
                  addi         t5, t5, -64
                  sw           ra, 4(t5)
                  andi         s8, a1, -1295
                  sll          a0, tp, a4
                  srl          s0, s6, t4
                  lui          s0, 694279
                  srli         a4, tp, 21
                  addi         s11, zero, 6 #init loop 1 counter
                  addi         s5, zero, 7 #init loop 1 limit
                  sll          s7, gp, t0
                  addi         t3, t3, 1726
sub_3_1_1_t:      auipc        s3, 100549
                  addi         s11, s11, 2 #update loop 1 counter
                  addi         a1, zero, -2 #init loop 0 counter
                  and          t2, s11, t6
                  slt          t2, a0, s9
                  addi         s9, zero, 13 #init loop 0 limit
                  xor          s4, t0, s4
sub_3_1_0_t:      xori         a6, s11, 1438
                  sub          a5, t2, s1
                  srl          ra, t2, s7
                  addi         a1, a1, 7 #update loop 0 counter
                  lui          gp, 585876
                  bltu         a1, s9, sub_3_1_0_t #branch for loop 0
                  slt          s6, s4, s0
                  blt          s11, s5, sub_3_1_1_t #branch for loop 1
                  nop
                  auipc        a0, 496469
                  sll          t1, s6, gp
                  bgeu         s4, a5, 21f
                  addi         t6, a2, 1157
                  or           t3, a4, ra
                  srl          zero, t6, gp
                  sltu         t1, a1, s2
                  auipc        gp, 823577
                  bgeu         s1, s0, 15f
                  add          s1, a3, s0
                  addi         a7, zero, 4 #init loop 1 counter
                  slt          s1, s2, a0
                  sltu         s10, a1, s5
                  sltu         s6, zero, a3
                  lui          s11, 462531
                  addi         s9, zero, 14 #init loop 1 limit
sub_3_2_1_t:      xori         a0, s6, -1664
                  slli         gp, a1, 6
                  addi         a7, a7, 2 #update loop 1 counter
                  xori         a5, a6, -454
                  andi         s6, s9, -85
                  srl          s10, s10, a1
                  addi         s8, zero, -6 #init loop 0 counter
                  srli         a1, s3, 28
                  nop
                  slli         t1, t6, 21
                  addi         a2, zero, 19 #init loop 0 limit
                  slti         sp, t0, 1762
sub_3_2_0_t:      xor          a4, a0, t4
                  addi         s8, s8, 3 #update loop 0 counter
                  sltiu        sp, a2, -1340
                  blt          s8, a2, sub_3_2_0_t #branch for loop 0
                  slt          t2, s3, s7
                  or           s11, a7, s4
                  ori          s0, gp, -34
                  lui          a1, 648616
                  srli         s10, s1, 11
                  beq          a7, s9, sub_3_2_1_t #branch for loop 1
                  auipc        s5, 872828
                  bne          s6, a5, 23f
                  sltiu        t3, s1, 465
                  slti         a3, s6, -561
                  add          s5, a7, a1
                  sltu         s9, a1, a1
15:               nop
                  sub          t2, s10, t2
                  blt          t0, t1, 36f
                  srai         s9, a4, 2
                  and          s7, s1, a6
                  auipc        a4, 227658
21:               sltiu        t0, t4, -384
                  andi         zero, s6, 1341
23:               andi         s10, t1, 1489
                  beq          a2, a3, 29f
                  sll          s11, tp, s0
                  add          s10, t2, s2
                  xor          t3, s8, s8
                  bne          a5, s6, 36f
29:               blt          a7, tp, 40f
                  bltu         s0, t1, 39f
                  slt          t3, s8, a6
                  bgeu         a7, sp, 41f
                  sltu         gp, s8, a6
                  sltiu        s3, s9, -2044
                  sltu         s11, s11, ra
36:               xor          s6, s5, a5
                  bltu         s3, a0, 45f
                  or           s10, t4, s11
39:               sra          t6, t3, s10
40:               bgeu         s6, s5, 49f
41:               lui          s1, 856808
                  sra          ra, t5, s3
                  slt          s10, a5, a6
                  auipc        s11, 338719
45:               slli         ra, a6, 26
                  auipc        s11, 322811
                  sll          t3, a1, ra
                  and          s11, a5, t0
49:               ori          s9, s4, 408
                  addi         s0, zero, 10 #init loop 0 counter
                  srl          s11, s9, s6
                  xori         zero, ra, -1245
                  addi         a7, zero, 0 #init loop 0 limit
                  sltiu        s9, a1, -255
                  nop
                  sltu         a6, s0, s11
                  xor          t2, a2, s10
sub_3_0_0_t:      sltiu        s6, s1, 573
                  andi         a5, s7, -480
                  srli         s8, a3, 9
                  sll          s6, a5, t5
                  addi         s0, s0, -10 #update loop 0 counter
                  or           s3, s7, a3
                  srai         t1, s9, 9
                  add          s6, a7, t6
                  add          s10, t4, a2
                  bne          s0, a7, sub_3_0_0_t #branch for loop 0
                  and          a3, ra, a2
                  xori         a2, s3, 1912
                  or           a1, t6, t2
                  bgeu         a4, t3, 66f
                  slli         s11, t0, 4
                  sltu         t1, t3, t2
                  xor          s9, zero, t2
                  srli         s9, a4, 2
                  or           t4, tp, s1
                  srai         t3, s5, 26
                  ori          s5, t4, 75
                  add          t6, s6, a4
                  bgeu         sp, s2, 74f
                  andi         a0, t3, 591
                  slli         s3, s11, 30
                  bltu         tp, a5, 66f
                  beq          t4, s4, 84f
66:               bne          a4, s4, 74f
                  add          zero, a2, s9
                  andi         a7, s9, 1855
                  srli         a2, sp, 4
                  sll          s4, a7, s3
                  sra          t1, s4, a2
                  auipc        a6, 623527
                  slli         a7, s0, 29
74:               bge          s10, s9, 91f
                  srl          t6, a4, s5
                  sltiu        a1, s7, 119
                  sra          t3, a7, s0
                  srai         a2, s0, 0
                  bgeu         s11, t4, 80f
80:               blt          a6, tp, 100f
                  sub          t6, s11, tp
                  bne          s9, s1, 95f
                  sltu         t0, t4, s4
84:               add          s4, t3, a0
                  addi         a0, s4, 459
                  sltiu        s8, a5, 2034
                  bgeu         t5, ra, 105f
                  sltu         t1, t5, s6
                  sltiu        s4, a1, -329
                  xor          t6, s9, s1
91:               and          ra, t6, t4
                  srli         t3, s2, 31
                  bgeu         t2, a6, 101f
                  auipc        s10, 998426
95:               bne          s2, zero, 115f
                  lui          a1, 124245
                  and          s7, s3, ra
                  srai         s5, s0, 29
                  srl          a4, ra, tp
100:              addi         t2, s7, -702
101:              sltiu        s8, t1, -655
                  slt          a4, s11, t2
                  bge          tp, gp, 110f
                  beq          t0, s0, 109f
105:              addi         t1, a6, 1596
                  slt          t2, s4, t6
                  bltu         t0, a1, 110f
                  nop
109:              bge          s9, t4, 124f
110:              srli         s1, zero, 10
                  sltu         s8, s7, s4
                  bltu         s6, s7, 117f
                  beq          t2, s4, 125f
                  lui          t3, 407142
115:              srli         t3, tp, 9
                  addi         t0, gp, -1761
117:              bne          s1, a6, 123f
                  srli         a4, t6, 21
                  add          s9, s1, s7
                  lui          s4, 626034
                  sll          s11, a6, s10
                  nop
123:              lui          zero, 963861
124:              xori         a7, s6, -847
125:              sll          s4, gp, s6
                  and          s8, a6, s11
                  srai         zero, a3, 8
                  addi         s6, s4, -1357
                  srl          t6, a4, t5
                  srli         s7, a5, 1
                  bge          a2, a7, 136f
                  or           s11, zero, s10
                  and          a0, t2, zero
                  slt          t4, a6, s9
                  and          s10, a5, t6
136:              bltu         t6, s11, 155f
                  addi         s7, tp, -1206
                  slt          s0, a2, s0
                  slli         s9, a2, 3
                  srl          a5, a4, a3
                  xori         s3, zero, 1479
                  addi         s8, a3, -1803
                  bgeu         t2, tp, 156f
                  auipc        t1, 361424
                  addi         s8, s1, 406
                  sltu         sp, a1, s5
                  add          s7, t5, s9
                  srai         s8, a6, 26
                  xori         s8, gp, -1918
                  bne          gp, s3, 152f
                  addi         s10, t2, 182
152:              auipc        s1, 132583
                  slli         a4, a2, 15
                  addi         s1, a0, -181
155:              srli         s10, a3, 19
156:              sll          ra, s0, s6
                  srai         s9, tp, 25
                  bge          t4, s8, 161f
                  or           a1, s2, a4
                  srl          t1, a6, s0
161:              or           a7, s5, sp
                  sra          a2, t0, gp
                  slti         t1, a3, -1400
                  ori          s0, s0, 1503
                  lw           ra, 4(t5)
                  slti         s9, a5, -280
                  slt          s8, t0, s11
                  sltu         a0, a4, s9
                  addi         t5, t5, 64
                  srl          t0, a0, t4
                  xori         s4, ra, 1397
250:              addi x5, x1, 1
250:              jalr x5, x5, 0
sub_2:            sub          a0, t0, s8
                  or           a3, ra, s9
                  andi         a3, s5, 49
                  bne          t2, s11, sub_2_stack_p
                  nop
                  and          sp, t1, s0
sub_2_stack_p:    addi         t5, t5, -12
                  srai         a4, a1, 2
                  sw           ra, 4(t5)
                  xori         a3, s10, 1688
                  and          t2, t4, ra
                  srli         s9, a1, 13
                  beq          a6, tp, sub_2_j3 #branch to jump instr
                  xor          s7, s10, zero
                  addi         a0, a6, -341
                  slli         s4, s6, 15
sub_2_j3:         jal          ra, sub_4 #jump sub_2 -> sub_4
                  and          sp, s0, a5
                  sltiu        s0, s2, 683
                  and          s6, a3, t0
                  or           t3, a4, a4
                  and          t2, a7, zero
                  sltu         s4, a1, s11
                  slti         a0, s8, -1008
                  sll          s9, s2, s0
                  nop
                  auipc        s9, 85879
sub_2_j4:         jal          ra, sub_5 #jump sub_2 -> sub_5
                  auipc        t6, 250900
                  srl          a2, s1, s6
                  add          s8, t0, t2
                  addi         s10, t3, -730
                  slti         s11, t3, -242
                  andi         s6, s1, -1132
                  ori          a2, gp, 121
                  andi         a1, a1, -117
                  addi         sp, s0, 1521
sub_2_j5:         jal          ra, sub_4 #jump sub_2 -> sub_4
                  xor          gp, t0, sp
                  xori         s1, gp, 251
                  la           s6, sub_3
                  sltiu        s4, a2, 251
                  auipc        s4, 963298
                  addi         s6, s6, -229
                  slt          a5, s6, t0
                  bne          zero, a7, sub_2_j6 #branch to jump instr
                  sub          s8, t2, t3
sub_2_j6:         jalr         ra, s6, 229 #jump sub_2 -> sub_3
                  addi         ra, zero, -8 #init loop 1 counter
                  sub          t4, s5, s11
                  addi         t6, zero, -16 #init loop 1 limit
                  or           sp, s6, s3
sub_2_0_1_t:      add          s3, t5, zero
                  and          s9, tp, t1
                  sltu         gp, s4, s5
                  xor          a5, a5, s0
                  addi         ra, ra, -4 #update loop 1 counter
                  xor          s5, s6, a0
                  or           a7, s8, s3
                  auipc        a2, 629711
                  nop
                  addi         s6, a7, -132
                  sltiu        a2, a4, -445
                  addi         a4, zero, -4 #init loop 0 counter
                  slt          a0, t1, t0
                  addi         a3, zero, -4 #init loop 0 limit
                  srai         a0, s2, 17
sub_2_0_0_t:      add          s4, s0, s4
                  addi         a4, a4, -9 #update loop 0 counter
                  srai         t1, t0, 25
                  auipc        t3, 791438
                  bge          a4, a3, sub_2_0_0_t #branch for loop 0
                  sll          t1, t0, s8
                  or           a1, t6, a5
                  srli         zero, t3, 27
                  beq          ra, t6, sub_2_0_1_t #branch for loop 1
                  sll          t1, s8, s8
                  addi         a7, zero, -7 #init loop 0 counter
                  addi         s0, s5, 1955
                  slti         a5, s3, -962
                  and          a0, t2, zero
                  sra          ra, t2, t4
                  and          s10, a3, s5
                  lui          s10, 193109
                  xor          a0, a7, zero
                  and          s3, t1, t0
                  xor          t6, s10, a4
                  slti         gp, s5, -1272
                  sub          t1, s6, t3
                  addi         a1, zero, 12 #init loop 0 limit
                  xori         a3, a3, -736
sub_2_2_0_t:      slti         t6, s6, 1946
                  srli         s8, a6, 14
                  addi         a7, a7, 7 #update loop 0 counter
                  or           a2, a1, t1
                  srai         t1, a5, 23
                  andi         zero, s8, -1093
                  blt          a7, a1, sub_2_2_0_t #branch for loop 0
                  addi         a6, gp, -1129
                  addi         s4, zero, -4 #init loop 1 counter
                  sltu         a4, s5, t1
                  slt          gp, s9, t4
                  sltu         s6, s3, t5
                  slt          s8, t1, a6
                  auipc        a6, 125528
                  addi         s7, zero, -2 #init loop 1 limit
                  and          a2, t0, s9
sub_2_1_1_t:      andi         s1, a6, 1002
                  xori         s6, a3, -67
                  addi         s4, s4, 6 #update loop 1 counter
                  sltiu        t4, a2, -1869
                  addi         a5, zero, 7 #init loop 0 counter
                  sltu         a7, s3, a1
                  addi         s5, zero, 7 #init loop 0 limit
                  slti         s11, a4, -293
sub_2_1_0_t:      and          t4, t2, s2
                  addi         t3, t1, 670
                  lui          sp, 623324
                  nop
                  addi         a5, a5, -6 #update loop 0 counter
                  xor          sp, s9, s5
                  slli         s11, s11, 31
                  bgeu         a5, s5, sub_2_1_0_t #branch for loop 0
                  auipc        t3, 588212
                  blt          s4, s7, sub_2_1_1_t #branch for loop 1
                  slti         s1, s3, 2009
                  and          t6, t2, s10
                  xori         zero, a2, 734
                  sltiu        s4, sp, -743
                  auipc        s10, 927240
                  xor          s0, a0, a1
                  blt          t5, a4, 16f
                  srl          t6, s10, a5
                  auipc        t3, 502189
                  sll          a3, s3, a2
                  sub          s8, t4, s3
                  add          s9, s7, s9
                  blt          s10, s6, 12f
12:               sra          a0, s5, t5
                  andi         t6, s11, -1301
                  andi         t4, s7, -277
                  blt          s0, t0, 22f
16:               slt          t1, sp, t6
                  sub          sp, t3, t2
                  ori          s4, ra, -1794
                  sltu         t1, s6, a7
                  nop
                  and          t3, t0, sp
22:               sltiu        zero, s6, -332
                  srai         s10, s3, 6
                  srli         t4, s4, 24
                  srai         t0, s2, 16
                  lui          a0, 735793
                  slt          a1, t5, t3
                  sltiu        sp, zero, -88
                  slt          s6, a1, tp
                  xor          a6, ra, a5
                  lui          a3, 672595
                  bne          a5, tp, 34f
                  addi         s11, gp, 558
34:               sra          s0, s3, zero
                  sll          s8, a0, ra
                  sll          s7, t5, s2
                  sub          s6, s2, s9
                  sltiu        t2, t5, -686
                  slt          a6, t4, s5
                  srai         s5, s0, 29
                  xori         s10, s1, 1421
                  xor          a4, s11, a2
                  or           gp, tp, t2
                  nop
                  bne          sp, s3, 56f
                  slti         t2, a6, -793
                  srai         a5, s0, 11
                  sltiu        a2, s0, -1004
                  andi         s10, t3, -1231
                  nop
                  sltu         a2, s0, a1
                  ori          ra, s9, 451
                  andi         s6, a7, -677
                  nop
                  srli         s5, s4, 22
56:               andi         zero, s9, -1559
                  auipc        a3, 960665
                  or           s10, t1, a3
                  addi         a5, t2, -1982
                  slt          t4, a6, t1
                  slti         s10, s9, 1167
                  slti         a6, t1, -1646
                  nop
                  or           t4, t3, s6
                  andi         t0, s8, -1831
                  andi         s3, s0, 20
                  or           s5, s6, s1
                  bltu         t0, t1, 70f
                  xor          a3, t1, tp
70:               lui          t1, 538405
                  sll          s0, t4, ra
                  slti         s11, s1, 298
                  auipc        s1, 144496
                  srai         t4, s0, 27
                  or           sp, gp, t2
                  xor          s7, s1, s7
                  bne          a0, sp, 85f
                  nop
                  slti         s10, a2, 1302
                  and          t6, a7, t1
                  sltu         a5, s9, s7
                  ori          zero, s8, -1995
                  srai         s1, tp, 29
                  xor          s5, zero, t6
85:               sltiu        s3, a3, -678
                  beq          sp, a2, 99f
                  add          a1, s9, a3
                  sra          s6, t2, a4
                  sub          a3, gp, t1
                  lui          a6, 900733
                  bne          s0, a4, 110f
                  add          s5, tp, tp
                  ori          t4, t4, -1505
                  sltu         s5, s3, a3
                  bge          s11, a7, 107f
                  srli         s5, t2, 18
                  bne          a1, s0, 105f
                  addi         sp, a4, -1629
99:               srli         s10, s3, 3
                  sra          a3, s2, s6
                  sub          a6, t3, a2
                  srai         s8, ra, 13
                  beq          s1, t6, 113f
                  bge          t3, s5, 122f
105:              beq          s0, s5, 116f
                  bne          s8, sp, 112f
107:              addi         s3, s2, -263
                  bge          s10, ra, 111f
                  nop
110:              beq          s6, tp, 114f
111:              srl          a4, s3, a7
112:              slt          s5, t0, tp
113:              bgeu         t5, a2, 122f
114:              auipc        s7, 148057
                  bgeu         zero, s6, 134f
116:              bltu         a2, zero, 133f
                  beq          a1, a7, 124f
                  sra          s10, s3, t3
                  bltu         s4, a4, 135f
                  or           s5, s8, s1
                  sll          s0, s11, s0
122:              add          sp, t3, s8
                  srai         t3, s8, 31
124:              bgeu         s0, a0, 135f
                  bltu         s10, a6, 141f
                  and          s4, s8, t0
                  sub          s3, a6, s4
                  sltu         a1, t2, a5
                  slti         s9, s11, 1577
                  bltu         s0, a0, 139f
                  sra          s3, gp, a6
                  slli         a3, zero, 19
133:              auipc        s9, 862211
134:              sra          ra, s2, t3
135:              add          a6, t2, sp
                  nop
                  srli         t3, s11, 11
                  xor          a3, a5, s3
139:              lui          s10, 313166
                  slli         s3, s2, 11
141:              blt          s5, s2, 149f
                  slti         a4, s8, 1617
                  srli         a4, s9, 9
                  srli         s0, s3, 26
                  sub          t1, a4, s8
                  nop
                  sub          s5, s9, a5
                  add          s9, s0, a6
149:              xor          a3, s5, gp
                  sra          a2, s1, s0
                  sra          t2, s8, s7
                  bge          a0, ra, 171f
                  beq          t6, t6, 159f
                  bltu         ra, a3, 168f
                  blt          s3, zero, 170f
                  and          a7, s6, zero
                  lui          sp, 483632
                  andi         a3, s5, -31
159:              andi         t1, a6, -1890
                  slli         s1, t0, 31
                  sltiu        t3, t6, 1573
                  lui          s10, 990926
                  xor          t6, s8, s4
                  bne          t0, a2, 171f
                  xor          t4, sp, s9
                  bltu         t0, a3, 176f
                  lui          a5, 816741
168:              bgeu         s10, t6, 172f
                  slli         s8, s8, 25
170:              beq          a4, zero, 176f
171:              add          s7, s0, a4
172:              bne          t5, s5, 176f
                  bltu         s1, t3, 176f
                  bltu         t6, tp, 176f
                  srai         s1, s9, 25
176:              sra          s6, gp, s1
                  or           s10, ra, tp
                  lw           ra, 4(t5)
                  and          t0, a3, a3
                  sltiu        t4, t0, 1148
                  addi         t5, t5, 12
                  addi         s11, s11, 1056
                  sra          a5, tp, gp
                  auipc        s1, 130614
                  xori         s6, s8, 497
312:              addi x22, x1, 0
312:              jalr x22, x22, 0
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
.word 0xe6dcacb9, 0x6069f143, 0x301038ef, 0xdfaf5b91, 0xfb840a16, 0x0ba95ff9, 0xcb613701, 0x65388e1b
.word 0xcaf1af9b, 0xd7994cdc, 0xafe023f0, 0xb2699fec, 0x0eb7a38c, 0xe2869751, 0x0edcadcb, 0xef11fb39
.word 0x1af4eb8c, 0x52af8ae7, 0x71a0cd23, 0xf5394dd1, 0x2521cc57, 0xc91644a0, 0x8e8a5f05, 0x4a2d856f
.word 0x94f95700, 0x6afbafdf, 0xc4f9c0d5, 0x1c39b137, 0x9452f092, 0xdd00da26, 0x7d872a9b, 0x5cdffa95
.word 0x2ca9f0ca, 0xbd82f376, 0x3c9b3d6a, 0x9511c47e, 0xb7cdbafd, 0x93f95997, 0xcd6824c0, 0x567bf38e
.word 0x197ce26d, 0xb651df3a, 0xff3c522a, 0x0c469609, 0x629898fc, 0x5f57b89a, 0x480a568c, 0x885739e0
.word 0x534a4c42, 0x34a8bb76, 0xbeb878f3, 0x19825d73, 0xe7e2480c, 0xa9b75b30, 0xbdc34efa, 0xb54e62ae
.word 0xf8bd5db6, 0x92736fc2, 0x1e7b6555, 0x78b70bb5, 0x66ae3950, 0x98176991, 0x6acb5105, 0x7297b870
.word 0xdef90403, 0x8ce3098a, 0xdc285860, 0xdd5cdf9b, 0x15e0609e, 0x4ea1402a, 0xa3292351, 0xd6f9782c
.word 0x4c5210c6, 0x2fac5609, 0x09c213d1, 0x7a4f95e6, 0x8eed74d9, 0x8a46175f, 0x5d8486a6, 0x1f44e768
.word 0x1f7a2a81, 0x3ec18b31, 0x3ba6353e, 0xa3fd4ca0, 0x50580ca8, 0x132eecba, 0x5e2bf979, 0x7b3bc113
.word 0xc20d9b88, 0x93ae828a, 0x00a2c221, 0xb426c6b5, 0xdbf36823, 0x8131d968, 0x52f10a3c, 0x4cb7cc82
.word 0x30a3eece, 0x72d545ed, 0xc2792906, 0x1c2e7743, 0x6a0cd416, 0x288d7d0f, 0xd9cf6e20, 0xeae08a14
.word 0x37112f61, 0x076e7df9, 0xb128d1ba, 0x979a3cbe, 0x14d610dd, 0xee434b88, 0xeae7aeb4, 0x38008e54
.word 0x4fcc010c, 0x38a30e43, 0x43c2c37e, 0xb670a45b, 0xb0d80425, 0x8c222d49, 0x50a492aa, 0x9556d929
.word 0x0bd8331d, 0xc581622b, 0x0f477ddc, 0xbe1f45d5, 0xe3b189f0, 0x6dd38e2a, 0xfde2bf2b, 0x0b9379c9
.word 0x3c0ab4a0, 0x03f524d8, 0x20d1dea0, 0x3d1041d0, 0x6ef368e6, 0x730b0305, 0xe3971e2a, 0x56a341ed
.word 0xd522c957, 0x7bb16402, 0xbcfc158b, 0x89cd62e8, 0x29eac6d2, 0x3c906910, 0xc38ee9eb, 0x1c554d5a
.word 0xe127b27d, 0x4f758a5c, 0x18318ae5, 0xfec9b171, 0x1b480663, 0xa425a10b, 0xe9486df5, 0x8ecc96fb
.word 0x14833f8b, 0x99f10765, 0x736095d6, 0x95ef1f8f, 0x0d70da41, 0xf8e70722, 0xd217914c, 0xfe19e598
.word 0x77b700ab, 0x4689df4c, 0xa845d006, 0x6d6267d8, 0x458e48cd, 0xd03e5da7, 0xe6d1ce83, 0xa1c3a70e
.word 0x368dc7d2, 0xcb8458d2, 0x9e750433, 0xdd481a32, 0xdc354d8c, 0x7c9b33b1, 0x70a7a380, 0x03cb4604
.word 0x0f35fff4, 0x0115c729, 0xaa003b61, 0x9c88cafc, 0x1a0759af, 0x0947518d, 0x19b69415, 0xc84ed90b
.word 0xe4b2ba53, 0xa8972fec, 0x387c9eb2, 0xf182d166, 0xd67d39c0, 0x637ad80d, 0xe2b39ec6, 0xdb8d60c1
.word 0x01ff120f, 0x72af0ce4, 0x04a4574b, 0x3bd385e2, 0x0070f2eb, 0x3d167eab, 0xdf540c88, 0x7ff2d872
.word 0xf2116349, 0xeae9e469, 0x9c8e50d1, 0xc717b67e, 0xa6c84631, 0x0f5815da, 0xa2331589, 0xdd2ef85c
.word 0x3e088292, 0x8eff8ab8, 0xd56b606c, 0x2fb1d9fc, 0x5fb31f53, 0x4dbbe84a, 0x23c90e37, 0x08d9a135
.word 0x69f54dff, 0xaeebceac, 0x9f8b47b7, 0xd60e92a8, 0x7b302edd, 0x5540d156, 0x93d87c89, 0x60a5e566
.word 0x98fbf67b, 0xfe11f480, 0xcbc09f1b, 0xd9d26185, 0x7e3cc42c, 0xa507c12c, 0x46f96f50, 0xb511d291
.word 0xd85ec8fb, 0x16f9990c, 0x982160ce, 0xd1494c45, 0x690ef61b, 0x488b7a67, 0xdb03a63a, 0x8af81dce
.word 0x25225dcd, 0xf4bf6113, 0x7d50b077, 0x8f0196ba, 0xb91b28b5, 0x157a25ab, 0x7aa5b2fb, 0xaedf1d79
.word 0xd2489f66, 0xc50eb84c, 0x0b108fc3, 0xb81b835a, 0x29124521, 0xd03ff10b, 0x88fac5ed, 0x7c3e7cb6
.word 0xa955ded5, 0x29436438, 0xa1775ca7, 0x4cffbc35, 0xc075a7d6, 0xaad62034, 0xabae6b5b, 0x6b35ae16
.word 0xaeae5084, 0x8c17d786, 0x2fad1ef5, 0x87bd9e9d, 0x50ba82d2, 0xe68e38c6, 0x36377b7f, 0x22823817
.word 0x99a6bc36, 0x5cb010b1, 0x601ae6e6, 0x1867b7bb, 0x254c417f, 0xbbcac8dd, 0xd17ef8ea, 0xcb0bd99f
.word 0x83903d6e, 0x080665d1, 0x46185129, 0xe7dcdbf0, 0x04b06cd0, 0x3918b026, 0x2ba30846, 0x59acac32
.word 0xc2ff7bfc, 0x3d507f5d, 0x3c1c123c, 0xceab13a7, 0xfaa75608, 0xfd9e004b, 0x67b037c7, 0x848b4ff7
.word 0x4af44796, 0x333cd95f, 0xdf9a16be, 0xc64668a1, 0x663d996f, 0x0e8a80a7, 0xb6c5009c, 0x68dc3636
.word 0xfea50cec, 0x54924d01, 0xd3d0f133, 0xcdfa4ec9, 0x71a2bafd, 0x2ed6ef06, 0xfef411c1, 0xa279514e
.word 0x2d44a3b6, 0x70279852, 0x31ba330e, 0xdbf7ade6, 0x34913d52, 0x3a5d28b0, 0xd70f6b4a, 0xd2a85520
.word 0x4c8bb9b3, 0x956b7116, 0xeda0db57, 0x0b3acd59, 0x2f40d29f, 0xa08ce41c, 0x726cc27d, 0x27b4b96d
.word 0xe4e4fb05, 0xa84cc39a, 0x18b7d2c9, 0x72923101, 0x80c261ea, 0x22415035, 0xe1060b76, 0x501c78be
.word 0x0077fa19, 0x116feaa6, 0x2cd54900, 0xd126baab, 0xc1c6ad34, 0xc7c4d70f, 0x75cbea29, 0x4a358cb6
.word 0x4e89b61e, 0x6e696fbc, 0xaa824102, 0x698e67a3, 0x1e2b5f9e, 0x86358d9b, 0xafddd2d3, 0x96ea2b8a
.word 0x3eb82bc6, 0xbb68cbde, 0x2f10a92e, 0xc4c8702c, 0x8f73322f, 0x6923f3c3, 0x68f822ed, 0xd86510c3
.word 0xec8b8ead, 0x4cf915ac, 0x84f3e110, 0x7b5f9018, 0x2e4f1705, 0x48b9f018, 0xd6fe4c5d, 0x5567a0c3
.word 0x25dfeccb, 0x29960fdf, 0xdff0f93f, 0x9e66c6d6, 0x2b413bc9, 0x64a75337, 0x14739e81, 0xb0fbaca7
.word 0x74d931fd, 0x5e301251, 0x54bd7786, 0xa7594432, 0x827acbc3, 0xf9b0cade, 0x8fd1fdab, 0x11585982
.word 0xa19ca030, 0x837e6b68, 0x56a162c5, 0xe3df8bee, 0x47d4bc03, 0x3ee74c4a, 0xc02a65ac, 0x43e96c14
.word 0xe9e8c868, 0x04965122, 0xc70ebc47, 0xa56fd7f2, 0xc922c561, 0xf86d39cb, 0x284f0ef3, 0x13093228
.word 0xf42e5950, 0x86fbc2d7, 0xbf30ea28, 0x58584f1f, 0x579a04e2, 0x03291a0a, 0x3a567a65, 0xac7b9168
.word 0x7f0f9e2d, 0xbe842139, 0x85c9b0cc, 0x8c89523e, 0x84b2648a, 0x591e4c85, 0x9b5e79dc, 0x573bd5de
.word 0xc87a27c6, 0x721f634b, 0xaf127b00, 0xb7f4b387, 0xce45dbbf, 0x4e2e6110, 0xb0367319, 0x704cbccf
.word 0x21412edd, 0x32323dff, 0x24ff68aa, 0x342f1d19, 0x7a6a6f6c, 0x8e2e651d, 0x12243e84, 0x79885e78
.word 0xe3ff0f6a, 0x2d838dd2, 0x7985fd7f, 0xde57922c, 0x8c523729, 0x90ecd77b, 0x53444d22, 0xbcfeaeb6
.word 0x1cd15623, 0x5c613607, 0x8758ec69, 0xe753bae9, 0x71084efe, 0xf162c2f8, 0x83589a97, 0x67983e24
.word 0xeb10cc3d, 0x5d266df1, 0xb06454e2, 0xf8412bfb, 0x176d7178, 0x35ce699e, 0x53b02eb1, 0x1b08d02e
.word 0xe9a3711d, 0xef0bdeee, 0x349d2130, 0x0eb1cabe, 0x09eecc00, 0xc70b3582, 0x6d6bc13a, 0xe8d79869
.word 0x4cd32b46, 0x98e6e9c4, 0xb712501a, 0xa1ee41a9, 0xcdceeb0d, 0xde96f227, 0xd9ecc2b1, 0x4125ef59
.word 0x8700a96e, 0x13f26806, 0x40d11379, 0x8ecc199b, 0xa41fecc7, 0x71933c40, 0x5e48225c, 0x2556924d
.word 0x31a0349f, 0x6f3f2c9d, 0x66060dd0, 0x4c83fbca, 0x5d569077, 0x8ee48c88, 0x30504c3f, 0xe4b9d6c7
.word 0x6e0995ea, 0x2b35543d, 0x581ab673, 0x89c10fb9, 0xa4da48ec, 0x98308a8e, 0x0a2e5a27, 0x7c54b04b
.word 0x9d27ab10, 0x1fa649fd, 0x9477a9d7, 0xd3d2f5d8
.section .region_1,"aw",@progbits;
region_1:
.word 0xf7db2df3, 0xecfa99ad, 0xfee437e2, 0x2aa0666f, 0x380a5b70, 0x256e42a8, 0xc5f909a5, 0x8c60cc4e
.word 0xd480cbed, 0x48566934, 0x28a7ffae, 0x774d644f, 0x9b8187b6, 0x82b75389, 0x88ced0c4, 0x96ec9b8e
.word 0xbbf9006d, 0x2f83f72d, 0x40482774, 0x28404dce, 0x20dc8955, 0x5f5dd465, 0x229b5708, 0x29faf411
.word 0xde4eed25, 0x01225455, 0x34b54ea1, 0xb601298e, 0xbadac17a, 0x29e9e682, 0x17b7eb41, 0xeb3ea4e9
.word 0x851f7742, 0xb94276b6, 0xf0e6ee95, 0x20a20b8d, 0x0d955f3b, 0x225377d4, 0xd332cf64, 0xc4f377fe
.word 0x34b75f5b, 0xb71ced24, 0x8a0a6e67, 0x437c3088, 0xf7283cc5, 0xdfd80c74, 0x2bfb7589, 0x0679777d
.word 0x95cd4023, 0xa8951fe3, 0x3e651807, 0xa24d5f53, 0x86024778, 0xcb5e661f, 0xc4793175, 0x26b7e450
.word 0x69de0866, 0x7070a212, 0xaa9d3ad1, 0x904fbc2b, 0xf0ee1b76, 0x41401f00, 0xcbc57f85, 0x56fd26fc
.word 0x4a93499f, 0x1dce7aa2, 0x23792e45, 0x15f3a5a2, 0x3d331b95, 0x9998527c, 0x62421071, 0xe68cdb24
.word 0x96917652, 0xa8b71463, 0xd20c97e2, 0xa794fd8d, 0x765dba38, 0x0e489c61, 0x36268b05, 0x13db98af
.word 0x3b4e7584, 0x6c7cb353, 0x7fc645ad, 0xf6384c9c, 0x6fac5f08, 0x269eba8f, 0xb0cf3f21, 0xf33d5b20
.word 0xd4e480d9, 0x96268588, 0x2fff6c80, 0x1828a9da, 0x5baa1ef0, 0xdf8158b3, 0x0db38712, 0xd7ad9887
.word 0xff992822, 0xfb53679a, 0xf3de5a95, 0x19d499cc, 0x6728cfe6, 0xde345e55, 0xd698cabf, 0xd70d35ee
.word 0x87f66a27, 0x59989b5a, 0x0a2400ab, 0x0e133459, 0xca8c8787, 0x24d702fc, 0x2095d2af, 0x6fb4db41
.word 0x9814d15d, 0xd9ab4b23, 0x5d2732b0, 0x1c581952, 0x610b17d6, 0x86d4331e, 0x40a667e6, 0xcee21d1a
.word 0x26cb7ace, 0x00f2ab54, 0x271288b0, 0xa53cb15f, 0xed62753e, 0x28e41bf2, 0x059ef39a, 0x4bad6b30
.word 0xc9b16470, 0xf6215365, 0x839df18e, 0x17ecc36e, 0xfe86bbf1, 0xb79d5de8, 0x7668ef58, 0x07b76d84
.word 0x2912882f, 0x574ccc2c, 0xe49d2c11, 0x50fc30da, 0xf262a978, 0x0784d085, 0x4ac5a01c, 0x92aab58a
.word 0x419295fd, 0xa7ec9a9b, 0x1bc0e969, 0xc1c1938e, 0xd69d3234, 0x10ee76a8, 0xcdbf5a42, 0x52e227e0
.word 0x6186d625, 0xd4d7a56d, 0xedf67cba, 0x14cca77a, 0x6c724468, 0xde5b8d69, 0x9fb0e496, 0xe9cf0ac7
.word 0x15124177, 0x5a88849a, 0x312ddb35, 0xd029b6a9, 0x301a2069, 0x2e0e749a, 0x6936031d, 0xff829ea7
.word 0xfec94d82, 0x0d08cee3, 0xc70ba185, 0x51d6c588, 0x219f6965, 0xf1a65a8f, 0x8938a608, 0xc52d866c
.word 0xf45692be, 0x618fdbc3, 0x2c7e84fc, 0xfc21425b, 0x72afd4c7, 0xd23ab425, 0xf2584ca1, 0x6d421bb0
.word 0x36816473, 0x27a22780, 0xe6c9fc1f, 0x3cd21e94, 0xc845c8d8, 0xd5132088, 0x616f5f29, 0xedf979e0
.word 0x31aeea14, 0x3c5f47de, 0x6e102314, 0x322c183d, 0x596674d5, 0x8be398dc, 0x654c2665, 0x9130ec08
.word 0x436019a5, 0xe8620357, 0xcce46b71, 0x2f507ed5, 0x711fe873, 0xcd1e23ac, 0x5e5351ad, 0x0680bb55
.word 0xc1736c51, 0x478ec05e, 0x3a338410, 0x5e3691da, 0x0663c374, 0xbc6582fa, 0x25ab8548, 0xfbae750e
.word 0x712fc9e8, 0x59166aa6, 0x5e7b6b51, 0x80f44571, 0x1a9d909d, 0x03da078e, 0x72199b0b, 0x02c161c4
.word 0xe84ab660, 0xfbbdc39c, 0x81da6a6c, 0x689c457c, 0x39591cf2, 0xbda1ce92, 0x87ddeb56, 0xae81d35b
.word 0xfad0d8e2, 0xb0728a49, 0x0e52099c, 0x210407b8, 0x9b5dc278, 0xca81273e, 0x60880e53, 0x8010de4a
.word 0xfeab0cf8, 0xacd2ceef, 0xb228eef7, 0xed82d4e5, 0xcd7ea7d3, 0x32009560, 0x163a7853, 0xebf681ed
.word 0xf60391e8, 0xe658b6d0, 0x368983ad, 0x4b9aad4f, 0x0fb1ef1c, 0x89679ce4, 0xbd42fd0f, 0x3f8d7245
.word 0xd2df60c7, 0xbbb50f2e, 0xd0aba4b7, 0x05fc1b2a, 0x6e4bf742, 0x60d238c8, 0x63c46a48, 0xb4fbec74
.word 0xff962a9c, 0x65b11344, 0x230524ef, 0xb259a74e, 0x946930fa, 0x0377fce1, 0xbdba4acb, 0x26c227d3
.word 0xa18e8642, 0x023ad94a, 0xec44d094, 0x282a72fe, 0x2907b9b7, 0xe081ad17, 0x02e8ad22, 0xee7da68d
.word 0x5074ad90, 0xfdbfbb9a, 0xebac9c6a, 0x800c3def, 0xc929a7c4, 0xe6e3c0e4, 0x775673bd, 0xdc048315
.word 0xc509bf70, 0xaceb1ef4, 0x753ee423, 0xc7a22689, 0x541b8586, 0xfe681fcc, 0xb2fbc5b5, 0x787e2749
.word 0xf722321f, 0x44f1b626, 0xd3c74bbd, 0x64ec4087, 0xe881469e, 0x2af7d77d, 0x3f96147c, 0x4139ee47
.word 0x8b18d918, 0xbe84ddab, 0x79f9f8c8, 0x8f64177c, 0xdffc88e3, 0xcee14b5a, 0x5c090bd0, 0x9316e8af
.word 0x4e1175d6, 0x036b02c8, 0x37b0bc30, 0x2dd79ad8, 0xc664c431, 0x62818b57, 0x37782931, 0xef11e974
.word 0xbd6a5e32, 0x7866907c, 0x5f818ab3, 0x419bef5e, 0x56dc6e8d, 0x0d74c153, 0xea113991, 0x77fe798e
.word 0xa7cf3e88, 0x0d7b7743, 0x07d9468c, 0x0c4ed0de, 0x1b345da7, 0x1aba1e5f, 0x9053ea57, 0x09c4575a
.word 0x61cae5ea, 0x853c4a23, 0x3e5eae1e, 0x01167b81, 0xb9d7346b, 0x752b6d5a, 0x612dd3fa, 0x626b62dd
.word 0xa3cb781b, 0x32686fd7, 0xb723c6ce, 0x51737630, 0xed9f9797, 0xe2b84f86, 0x6c65d7f0, 0xaa4ba868
.word 0xd6ed5e89, 0xaa3b7af6, 0xeb56876b, 0x80a3370c, 0x0813ab61, 0xc38b502e, 0x0ebe3768, 0x34f4e5ec
.word 0xafa88ff8, 0x15d591c8, 0x555b784a, 0x5d0c5409, 0x473c0780, 0x8e8e89cb, 0x195d8d05, 0x36185f06
.word 0x2ba2b2a8, 0x75feeebf, 0xd7dd9f17, 0x1e8cafeb, 0x251c5f5c, 0x4b65ee23, 0xb50bd6ee, 0x139498b1
.word 0xa71e61cc, 0x0fda3152, 0x8d25ef38, 0x1ff4f417, 0xd8a023b1, 0xce45ceb1, 0x2e44e53b, 0x082aa183
.word 0xed0bf473, 0x2ea25c16, 0xe3473485, 0x8bb4e317, 0xf070d856, 0x44706890, 0x945eb7a8, 0xf3931b42
.word 0x2d2c19e8, 0x4f62244b, 0xbf4c81ca, 0x61a3e547, 0x7bfe3077, 0x82e90373, 0xa1701ae0, 0x5d5220bf
.word 0x8d6e6e19, 0x074fe6e3, 0xe519b6c9, 0xf185aa7c, 0x610715ed, 0xe29cda68, 0x36fd8e24, 0x3c778d77
.word 0x6c340721, 0x46e2b116, 0x61933ab2, 0x2790a10f, 0x7513e8f9, 0x3514d85b, 0xfcded2a4, 0xf45c8785
.word 0xe718622f, 0x0eda14fc, 0x89e9693d, 0xbd5a4fe9, 0x071a4956, 0x6851b1f2, 0x05b08c66, 0x46acf17a
.word 0x508d75af, 0x403e401d, 0xeee09310, 0x73d72422, 0x9cace573, 0x1b4e6616, 0xce7bd735, 0x3d70c7da
.word 0x05b3d444, 0xa7b10c29, 0x80c86e28, 0x0b48bda0, 0xd188ad65, 0xb0f0b024, 0x905c4eba, 0x04ee46f1
.word 0x0d72561c, 0x0819a8a5, 0x4f47e5d6, 0xcfa62625, 0xafe1b323, 0x3a3c7773, 0xd68bc548, 0xb5ae1f89
.word 0xa98b48e3, 0x0ed25341, 0xfebe5055, 0x34b08313, 0xd5b2e3ae, 0xb983fb7f, 0xc98c60ef, 0x3566007b
.word 0xf6d6c4d6, 0x6d233da0, 0xf682491f, 0x68c974bf, 0x8c476164, 0x8fc64a45, 0x784ebd06, 0x7be2a1df
.word 0x663f699a, 0x9b0cdedf, 0xe4091b86, 0x41024452, 0xf725264b, 0x7f25fff8, 0x3f0be604, 0x15c18045
.word 0x5890ac90, 0x7d0f377e, 0xad563823, 0x7cca3c98, 0xe0f04657, 0x4ab30d4e, 0x2a96a74f, 0xb3975f3a
.word 0xd62f5b90, 0x6fb7d92d, 0x82ee063c, 0xc108dc56, 0x63b64ed7, 0x78306117, 0xc9589dc0, 0xd946534d
.word 0x8d5c0216, 0xa50e3407, 0x304c3851, 0x8c5c1003, 0xde5e2103, 0x2a51217a, 0xf847343e, 0x005ce77c
.word 0xf4210c6c, 0x26ce317c, 0x48e018e3, 0x8ea8bcc1
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
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x18, x30, zero
                  csrr x22, 0x300 # MSTATUS
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 31
                  bne x22, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x22, 0x341 # MEPC
                  csrr x22, 0x342 # MCAUSE
                  li x15, 0x3 # BREAKPOINT
                  beq x22, x15, ebreak_handler
                  li x15, 0x8 # ECALL_UMODE
                  beq x22, x15, ecall_handler
                  li x15, 0x9 # ECALL_SMODE
                  beq x22, x15, ecall_handler
                  li x15, 0xb # ECALL_MMODE
                  beq x22, x15, ecall_handler
                  li x15, 0x1
                  beq x22, x15, instr_fault_handler
                  li x15, 0x5
                  beq x22, x15, load_fault_handler
                  li x15, 0x7
                  beq x22, x15, store_fault_handler
                  li x15, 0xc
                  beq x22, x15, pt_fault_handler
                  li x15, 0xd
                  beq x22, x15, pt_fault_handler
                  li x15, 0xf
                  beq x22, x15, pt_fault_handler
                  li x15, 0x2 # ILLEGAL_INSTRUCTION
                  beq x22, x15, illegal_instr_handler
                  csrr x15, 0x343 # MTVAL
                  1: la x4, test_done
                  jalr x1, x4, 0

ecall_handler:    
                  la x22, _start
                  sw x0, 0(x22)
                  sw x1, 4(x22)
                  sw x2, 8(x22)
                  sw x3, 12(x22)
                  sw x4, 16(x22)
                  sw x5, 20(x22)
                  sw x6, 24(x22)
                  sw x7, 28(x22)
                  sw x8, 32(x22)
                  sw x9, 36(x22)
                  sw x10, 40(x22)
                  sw x11, 44(x22)
                  sw x12, 48(x22)
                  sw x13, 52(x22)
                  sw x14, 56(x22)
                  sw x15, 60(x22)
                  sw x16, 64(x22)
                  sw x17, 68(x22)
                  sw x18, 72(x22)
                  sw x19, 76(x22)
                  sw x20, 80(x22)
                  sw x21, 84(x22)
                  sw x22, 88(x22)
                  sw x23, 92(x22)
                  sw x24, 96(x22)
                  sw x25, 100(x22)
                  sw x26, 104(x22)
                  sw x27, 108(x22)
                  sw x28, 112(x22)
                  sw x29, 116(x22)
                  sw x30, 120(x22)
                  sw x31, 124(x22)
                  la x4, write_tohost
                  jalr x0, x4, 0

instr_fault_handler:
                  add x30, x18, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

load_fault_handler:
                  add x30, x18, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

store_fault_handler:
                  add x30, x18, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

ebreak_handler:   
                  csrr  x22, 0x341
                  addi  x22, x22, 4
                  csrw  0x341, x22
                  add x30, x18, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

illegal_instr_handler:
                  csrr  x22, 0x341
                  addi  x22, x22, 4
                  csrw  0x341, x22
                  add x30, x18, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x22, 0x300 # MSTATUS;
                  csrr  x22, 0x304 # MIE;
                  csrr  x22, 0x344 # MIP;
                  csrrc x22, 0x344, x22 # MIP;
                  add x30, x18, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
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
