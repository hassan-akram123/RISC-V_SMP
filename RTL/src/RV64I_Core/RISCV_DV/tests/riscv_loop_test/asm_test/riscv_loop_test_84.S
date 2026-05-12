.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x22, h0_start
jalr x0, x22, 0
h0_start:
                  li x9, 0x40000100
                  csrw 0x301, x9
kernel_sp:        
                  la x15, kernel_stack_end

trap_vec_init:    
                  la x9, mtvec_handler
                  ori x9, x9, 1
                  csrw 0x305, x9 # MTVEC

mepc_setup:       
                  la x9, init
                  csrw 0x341, x9

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x9, 0x1800
                  csrw 0x300, x9 # MSTATUS
                  mret
init:             
                  li x0, 0xfb67010c
                  li x1, 0x84a56f8b
                  li x2, 0x58e57830
                  li x3, 0x80000000
                  li x4, 0xf29df9b2
                  li x5, 0x7109ab96
                  li x6, 0x1
                  li x7, 0xace9ded1
                  li x8, 0x0
                  li x9, 0x80000000
                  li x10, 0xf83c9ebe
                  li x11, 0x9fecfe5
                  li x12, 0xf044cd1b
                  li x13, 0x0
                  li x14, 0x2
                  li x16, 0x3aac5efb
                  li x17, 0xfaa7a296
                  li x18, 0x0
                  li x19, 0x80000000
                  li x20, 0x408fc70d
                  li x22, 0x0
                  li x23, 0x250ef9c9
                  li x24, 0x0
                  li x25, 0x80000000
                  li x26, 0xf36f8c16
                  li x27, 0xf9d1671f
                  li x28, 0x1
                  li x29, 0xfdc22c10
                  li x30, 0xd9c15817
                  li x31, 0x0
                  la x21, user_stack_end
main:             la           s7, sub_1
                  lui          t0, 536
                  andi         t2, s5, 246
                  lui          a2, 698357
                  addi         s7, s7, 241
                  xori         a2, a2, -1651
                  srai         sp, t0, 25
                  lui          s9, 779680
                  sra          s0, t5, tp
                  sltiu        t1, s0, -1183
main_j1:          jalr         s7, s7, -241 #jump main -> sub_1
                  sub          a7, gp, ra
                  auipc        t3, 405145
                  la           t1, sub_1
                  addi         t1, t1, 178
                  srai         s9, t3, 24
                  xor          a7, s5, s5
                  blt          tp, s2, main_j2 #branch to jump instr
                  xor          s2, s1, a7
main_j2:          jalr         s7, t1, -177 #jump main -> sub_1
                  addi         sp, zero, -6 #init loop 1 counter
                  nop
                  and          s11, t2, s7
                  ori          s7, t0, -1016
                  srl          s10, a7, ra
                  andi         s7, a7, -1986
                  andi         a1, s7, 1017
                  and          tp, ra, s6
                  sub          a1, t1, a4
                  sll          a4, s1, a7
                  srl          s4, gp, s1
                  addi         t6, zero, 10 #init loop 1 limit
                  or           s11, s5, zero
                  add          t3, t1, t1
                  xori         a4, a7, -150
main_0_1_t:       ori          s2, a6, -57
                  addi         sp, sp, 8 #update loop 1 counter
                  andi         s10, a5, -1319
                  lui          a3, 1002689
                  srli         s0, s7, 9
                  addi         gp, zero, 1 #init loop 0 counter
                  addi         s1, zero, 11 #init loop 0 limit
                  auipc        a0, 281726
main_0_0_t:       ori          a4, s11, 756
                  addi         gp, gp, 6 #update loop 0 counter
                  sra          s11, s11, t3
                  srli         s4, s2, 18
                  addi         a3, tp, 2034
                  sll          t4, a5, a2
                  blt          gp, s1, main_0_0_t #branch for loop 0
                  srl          t3, sp, s9
                  nop
                  beq          sp, t6, main_0_1_t #branch for loop 1
                  andi         a4, a6, -1768
                  bne          s9, s3, 9f
                  add          a1, t3, a7
                  ori          a0, s7, 1048
                  bltu         tp, a5, 11f
                  sltiu        gp, s11, 959
                  sltiu        a7, t3, 1762
                  xor          gp, ra, s10
                  addi         a7, s3, 579
                  ori          s1, a4, 1008
9:                sra          t6, a5, zero
                  slli         t5, s6, 17
11:               sub          s7, t6, s8
                  slli         gp, t0, 30
                  slt          a6, a7, t4
                  sub          s9, s3, a0
                  add          t2, a1, s7
                  sra          a2, a7, a2
                  la x22, test_done
                  jalr x0, x22, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            addi         s5, s5, -48
                  srai         t1, s6, 22
                  xori         ra, t5, 760
                  andi         s4, a4, 474
                  lui          t0, 38937
                  srai         a6, a2, 30
                  slli         a3, ra, 30
                  sra          t2, a4, a7
                  andi         s3, s3, 1807
                  sw           s7, 4(s5)
                  addi         s10, a1, -922
                  addi         s2, zero, 10 #init loop 0 counter
                  slli         zero, tp, 23
                  sltu         s4, t4, s10
                  addi         a6, zero, 10 #init loop 0 limit
sub_4_4_0_t:      and          a4, a6, a0
                  addi         s2, s2, -7 #update loop 0 counter
                  sll          s3, s9, t2
                  bgeu         s2, a6, sub_4_4_0_t #branch for loop 0
                  addi         a3, s11, 965
                  addi         t3, zero, 8 #init loop 1 counter
                  srai         t4, t0, 9
                  addi         s11, zero, -4 #init loop 1 limit
                  or           a0, gp, zero
sub_4_5_1_t:      ori          ra, a1, -1027
                  srli         sp, t1, 7
                  addi         t3, t3, -1 #update loop 1 counter
                  addi         s4, zero, 6 #init loop 0 counter
                  srl          a0, a5, a2
                  addi         s0, zero, 17 #init loop 0 limit
                  and          a6, a0, s3
sub_4_5_0_t:      sltiu        ra, s0, 705
                  srli         s3, t0, 7
                  or           t1, sp, a2
                  xori         s7, a5, 1062
                  addi         s4, s4, 9 #update loop 0 counter
                  lui          t2, 923502
                  sub          tp, a0, s2
                  andi         a3, t1, 1506
                  bltu         s4, s0, sub_4_5_0_t #branch for loop 0
                  xor          t2, a1, sp
                  sra          a4, s9, zero
                  lui          t1, 663516
                  addi         s2, s7, -789
                  bge          t3, s11, sub_4_5_1_t #branch for loop 1
                  slti         s2, a3, 1533
                  addi         a6, zero, 6 #init loop 1 counter
                  addi         t3, zero, 5 #init loop 1 limit
                  sra          zero, a6, s7
sub_4_2_1_t:      slt          s9, t2, s7
                  addi         a6, a6, -3 #update loop 1 counter
                  addi         t1, zero, -8 #init loop 0 counter
                  addi         s3, zero, 15 #init loop 0 limit
                  srli         zero, a3, 28
sub_4_2_0_t:      nop
                  addi         t1, t1, 2 #update loop 0 counter
                  bltu         t1, s3, sub_4_2_0_t #branch for loop 0
                  bgeu         a6, t3, sub_4_2_1_t #branch for loop 1
                  sltu         gp, s1, t5
                  addi         a1, zero, 5 #init loop 0 counter
                  srli         t6, t2, 12
                  srl          a3, s6, a6
                  addi         a7, zero, 5 #init loop 0 limit
                  auipc        sp, 1025243
                  addi         s1, s10, 1915
                  addi         t0, s3, -180
                  addi         gp, sp, 668
                  sll          tp, s7, a0
sub_4_3_0_t:      xori         t3, t3, -1149
                  slt          t3, a6, a1
                  nop
                  xori         s0, s3, -1280
                  and          t1, a7, a3
                  xor          t5, t4, s5
                  addi         a1, a1, -4 #update loop 0 counter
                  sltiu        a0, a5, -974
                  add          ra, t3, t4
                  srli         t2, s3, 4
                  xori         gp, s5, -382
                  ori          t4, t5, 1697
                  srli         t2, s11, 1
                  bgeu         a1, a7, sub_4_3_0_t #branch for loop 0
                  slli         gp, s5, 18
                  addi         s1, zero, 0 #init loop 0 counter
                  addi         s8, zero, 20 #init loop 0 limit
sub_4_1_0_t:      sltu         s0, gp, s4
                  addi         s1, s1, 2 #update loop 0 counter
                  addi         s11, zero, -1119
                  or           ra, s8, gp
                  blt          s1, s8, sub_4_1_0_t #branch for loop 0
                  sra          a4, tp, t1
                  addi         t1, zero, 0 #init loop 0 counter
                  addi         s2, zero, 16 #init loop 0 limit
sub_4_6_0_t:      xor          zero, a1, a6
                  addi         t1, t1, 10 #update loop 0 counter
                  bltu         t1, s2, sub_4_6_0_t #branch for loop 0
                  addi         a2, a4, -1353
                  addi         a0, t6, -1003
                  srai         a6, s3, 27
                  slti         s10, s4, 823
                  and          t0, s3, a1
                  auipc        gp, 139221
                  add          t0, a1, a6
                  ori          t5, s5, 1630
                  slli         tp, t5, 3
                  xor          t3, s5, t2
                  xor          s9, a0, zero
                  bltu         a6, t6, 15f
                  bne          t5, t1, 28f
                  bne          ra, s9, 23f
                  nop
                  sll          s4, zero, s9
15:               slli         s8, zero, 18
                  slli         s8, s3, 17
                  srai         gp, s6, 31
                  nop
                  bltu         s11, s7, 26f
                  bge          t4, s7, 40f
                  xori         a0, s2, -239
                  xor          a0, s2, a6
23:               ori          s2, a3, 1301
                  srl          a4, a1, a4
                  sra          s9, a2, a6
26:               srli         t2, s1, 28
                  bltu         s3, a0, 44f
28:               srai         t6, a7, 22
                  lui          t2, 696668
                  sltiu        a6, s9, -38
                  bgeu         tp, t6, 41f
                  add          zero, s5, s8
                  sltu         a2, s10, s8
                  addi         s11, a3, -1271
                  addi         t1, a2, 1933
                  xori         tp, s0, 1365
                  beq          s1, s6, 45f
                  sltu         zero, t2, s2
                  ori          s10, s9, 1122
40:               bgeu         gp, a1, 58f
41:               bne          sp, t2, 57f
                  sltiu        a3, zero, 2026
                  sltiu        a7, s0, 245
44:               sub          tp, s1, a2
45:               sll          s9, t3, t2
                  slti         t6, a1, 394
                  slli         s11, s11, 28
                  sub          t5, t1, s9
                  xori         s2, a5, -518
                  beq          s3, s9, 61f
                  beq          tp, sp, 60f
                  bgeu         t1, ra, 54f
                  auipc        s9, 464641
54:               beq          a1, s5, 59f
                  bge          t5, a4, 69f
                  ori          tp, t4, 1879
57:               nop
58:               beq          a0, ra, 70f
59:               sll          s0, s3, a2
60:               slt          a6, s11, a4
61:               bge          t6, a1, 73f
                  bne          s1, s4, 69f
                  andi         s4, t4, -346
                  ori          t5, s2, -1161
                  lui          t3, 632614
                  auipc        s10, 514171
                  add          t2, t5, sp
                  srli         a7, s4, 24
69:               srl          sp, s6, tp
70:               auipc        t2, 385741
                  srli         a7, s9, 12
                  auipc        a6, 424710
73:               and          t3, a5, tp
                  sll          s11, s2, t5
                  blt          t1, s7, 90f
                  bge          t6, a1, 92f
                  srl          a2, a2, s6
                  nop
                  xori         s11, a2, 2015
                  bne          s2, t6, 84f
                  bne          ra, t6, 93f
                  addi         t5, gp, 1700
                  bne          s2, a5, 88f
84:               srl          s9, s11, s8
                  and          s8, s1, t0
                  sra          t3, t1, s4
                  sub          s7, zero, s10
88:               sltiu        a7, s10, -811
                  addi         t4, t4, -451
90:               andi         s0, a4, -911
                  ori          a1, s5, 1287
92:               slli         s0, a1, 1
93:               bgeu         sp, a7, 105f
                  blt          s7, t1, 109f
                  or           ra, a6, t6
                  slti         s2, s10, -44
                  srai         s8, t6, 30
                  sub          t4, t3, s10
                  srli         a7, s3, 30
                  bne          s8, s1, 110f
                  bne          s7, t4, 121f
                  beq          s4, a0, 116f
                  srli         s0, t0, 20
                  addi         a1, s6, 1485
105:              add          gp, tp, s9
                  auipc        zero, 563904
                  bne          a2, t5, 123f
                  or           s10, a0, a1
109:              add          a4, a4, t4
110:              beq          t4, t4, 126f
                  bge          t5, a5, 127f
                  slti         a4, ra, 642
                  nop
                  xor          a4, s8, sp
                  sra          a7, s10, t0
116:              xor          t1, tp, s10
                  xor          a6, a1, s0
                  slti         s10, t4, 1792
                  bge          t0, t3, 123f
                  slli         t2, tp, 28
121:              sltu         zero, s8, a6
                  sltiu        a3, s10, 171
123:              sll          ra, sp, s9
                  slli         t5, sp, 0
                  lui          s0, 249863
126:              lui          s7, 890394
127:              nop
                  bltu         s6, sp, 133f
                  nop
                  srl          a7, s9, sp
                  bge          a6, t3, 141f
                  and          t4, s6, s9
133:              bne          ra, s3, 148f
                  slt          t0, s6, a0
                  sub          t6, s4, s9
                  nop
                  sll          gp, t2, t6
                  blt          sp, tp, 150f
                  slli         a4, s2, 29
                  andi         s9, s1, -357
141:              blt          a2, t2, 155f
                  sub          a3, s5, t6
                  sltu         s0, tp, s2
                  sltiu        t3, t1, -1011
                  slti         s8, a7, 795
                  xori         s4, a0, -1004
                  sll          t3, t6, t0
148:              srli         t2, a1, 15
                  bge          s0, s3, 164f
150:              bltu         s10, s1, 161f
                  xor          ra, sp, tp
                  andi         s11, a4, -1098
                  sub          a4, s3, t6
                  xor          zero, s11, t1
155:              nop
                  lui          a6, 155100
                  and          a6, t6, t4
                  and          t1, s0, s3
                  addi         a1, s3, 1839
                  lui          zero, 680606
161:              srli         tp, a7, 18
                  sra          a4, s9, a1
                  sltu         t6, a1, a6
                  addi         ra, zero, 9 #init loop 0 counter
                  nop
                  sll          tp, s5, a4
                  srai         a1, t6, 14
                  addi         gp, zero, 8 #init loop 0 limit
sub_4_0_0_t:      auipc        a1, 246780
                  sra          t3, s9, a7
                  addi         ra, ra, -6 #update loop 0 counter
                  srai         s3, t6, 4
                  and          a0, a5, s2
                  or           a6, s1, s2
                  auipc        a1, 392520
                  srai         s9, s6, 8
                  lui          s3, 185611
                  ori          a7, a6, -1450
                  bgeu         ra, gp, sub_4_0_0_t #branch for loop 0
                  sra          t1, gp, a3
164:              sltiu        a1, t5, 1381
                  sub          t0, a2, s7
                  sltu         a2, a4, a1
                  slti         s10, t3, -19
                  ori          s3, ra, -446
                  sltu         t6, s10, t2
                  bge          zero, s11, 188f
                  xori         s0, t4, -1418
                  slli         s4, s11, 13
                  xori         t3, ra, 1420
                  auipc        s3, 454523
                  auipc        zero, 577729
                  sltu         t3, a2, s6
                  sra          s7, s9, s9
                  ori          t6, a0, 1634
                  slti         s7, s4, -663
                  nop
                  bgeu         s6, t2, 188f
                  sltiu        s11, a6, -1814
                  bne          t5, a1, 200f
                  sub          s3, s0, a2
                  sra          t4, t2, t5
                  or           a6, a4, s10
                  slti         a0, s4, 1333
188:              and          t6, s4, s10
                  or           s7, s6, gp
                  xori         a2, a6, 1171
                  bltu         s10, t4, 211f
                  or           s10, a1, a3
                  bltu         s7, s8, 201f
                  auipc        tp, 544711
                  or           a2, a1, s0
                  auipc        s11, 440635
                  sltu         s9, s3, t2
                  srli         t4, s2, 13
                  slli         s2, s1, 19
200:              add          tp, tp, s11
201:              srai         s4, s5, 2
                  xori         t5, s0, 1853
                  srai         a3, a0, 3
                  slti         s0, s4, 1456
                  sltu         a2, s10, s8
                  sltiu        s7, a7, 1037
                  sltu         t0, a6, ra
                  blt          t3, t3, 220f
                  slti         s4, t5, 1815
                  and          ra, s11, zero
211:              bge          tp, a5, 216f
                  sll          a2, s8, t5
                  auipc        t0, 446489
                  slli         t2, t1, 7
                  bge          zero, s7, 224f
216:              xori         sp, a6, 438
                  sll          s8, t6, s1
                  nop
                  sub          a7, a7, s0
220:              nop
                  sltu         s3, tp, s8
                  sltiu        sp, s10, 1289
                  nop
224:              lui          s7, 644291
                  srli         t3, a6, 13
                  srli         a3, s8, 28
                  addi         a1, s11, 9
                  nop
                  bge          sp, t6, 245f
                  add          a2, s6, t2
                  bltu         s8, s5, 247f
                  srl          s4, s8, gp
                  srl          a6, t3, t6
                  srli         s3, t6, 17
                  bltu         a5, a4, 242f
                  nop
                  srli         a4, t0, 17
                  sra          s8, s4, a1
                  xor          s0, gp, a5
                  sub          tp, s8, s8
                  lui          a3, 506145
242:              sll          zero, s4, t1
                  srl          tp, t4, s0
                  or           s2, s10, s4
245:              sll          s4, t1, a4
                  blt          s5, a6, 258f
247:              blt          s2, s4, 259f
                  and          tp, s0, t0
                  or           t3, s0, zero
                  slti         s7, s9, 1208
                  blt          a3, t6, 256f
                  bge          zero, s0, 263f
                  xor          s11, t0, a7
                  blt          ra, a4, 264f
                  andi         a4, t4, 1123
256:              xor          a3, s7, a0
                  srl          s7, t6, s1
258:              sra          a6, t5, s8
259:              slt          a4, s3, gp
                  lui          t1, 40393
                  bne          a6, s7, 278f
                  sra          zero, a6, t4
263:              lui          a7, 916430
264:              slt          s7, s1, t1
                  sub          a7, tp, t4
                  andi         a4, gp, -603
                  and          a0, s3, tp
                  andi         s2, t6, 1812
                  bge          s11, a3, 271f
                  andi         s0, s1, 18
271:              xor          s4, gp, t5
                  xori         s8, tp, 1375
                  lui          s4, 770998
                  lui          s4, 1037668
                  sltiu        tp, s6, -611
                  sll          s8, t6, s2
                  sra          t0, t3, s3
278:              addi         s7, t2, 1976
                  bne          t5, t2, 295f
                  bltu         t5, s1, 294f
                  xor          zero, s6, t2
                  sra          s11, tp, s0
                  nop
                  addi         s11, s2, -1263
                  slli         s2, s4, 30
                  sra          gp, zero, a4
                  xor          t6, ra, t2
                  srai         s10, t1, 18
                  lui          s4, 718462
                  sll          a3, s9, s0
                  sltiu        t0, t5, 1827
                  bltu         s6, sp, 312f
                  slt          s0, s2, t0
294:              nop
295:              sra          s9, t4, s11
                  or           s10, t6, a6
                  lui          a6, 413080
                  bgeu         s9, t2, 307f
                  beq          s2, t0, 314f
                  srli         t5, a6, 15
                  auipc        t1, 738917
                  and          sp, s1, tp
                  sltu         t6, s9, a2
                  andi         a6, s8, 951
                  sub          a3, tp, t4
                  sltu         sp, s3, t2
307:              xori         sp, t1, 1844
                  xori         a0, a5, 1788
                  sll          t6, s11, t4
                  and          a1, s8, s7
                  nop
312:              or           a2, a1, a1
                  xori         a3, s5, -49
314:              xor          t0, s7, s6
                  and          a0, tp, s5
                  bne          s3, t1, 332f
                  sll          a0, s2, gp
                  or           s11, s2, a2
                  beq          s0, a0, 326f
                  add          s2, s4, t2
                  bgeu         t0, s4, 323f
                  slti         a2, a3, 1727
323:              ori          a3, a1, -1758
                  xor          t6, s8, s0
                  addi         s7, s10, 1563
326:              xor          t3, s9, t1
                  bne          t0, t0, 344f
                  bgeu         a2, t5, 339f
                  add          s4, t1, s5
                  slti         s1, s9, 189
                  lui          t6, 361301
332:              beq          ra, gp, 342f
                  slli         a0, t1, 16
                  sll          s1, ra, a3
                  addi         a1, s10, -55
                  nop
                  blt          s9, sp, 342f
                  bltu         t5, ra, 354f
339:              beq          s0, sp, 346f
                  nop
                  nop
342:              bne          t1, s9, 354f
                  bne          t6, s1, 355f
344:              srai         gp, a3, 24
                  beq          a2, s6, 363f
346:              bltu         s1, a3, 360f
                  or           t4, t6, t1
                  bgeu         s3, a3, 363f
                  srl          a4, s1, t1
                  lui          s8, 471793
                  or           s11, s5, s6
                  slli         ra, a2, 20
                  blt          s7, t2, 358f
354:              srai         a4, s1, 7
355:              beq          ra, zero, 359f
                  xor          s2, a6, t4
                  slli         s3, t2, 6
358:              bgeu         s10, a6, 363f
359:              auipc        zero, 156686
360:              add          t5, tp, s0
                  srai         a7, gp, 0
                  slli         t0, ra, 13
363:              lui          gp, 959966
                  lw           s7, 4(s5)
                  srl          gp, s9, s1
                  addi         s5, s5, 48
                  sltiu        a3, a3, 907
                  sra          gp, s9, s10
                  lui          s3, 158867
                  sra          gp, gp, a5
485:              addi x4, x23, 0
485:              jalr x4, x4, 0
sub_3:            ori          a7, s4, -215
                  bltu         s2, s3, sub_3_stack_p
                  add          a4, s2, t4
                  add          s3, t3, t4
sub_3_stack_p:    addi         s5, s5, -36
                  sw           s7, 4(s5)
                  srai         t0, t5, 0
                  or           s10, s1, s11
                  la           t1, sub_5
                  nop
                  srli         s4, s11, 18
                  lui          t5, 53791
                  addi         t1, t1, 581
                  sub          t2, s9, s4
                  andi         s10, zero, -219
                  xori         s8, a0, -1300
                  srl          t6, a1, sp
sub_3_j7:         jalr         s7, t1, -581 #jump sub_3 -> sub_5
                  addi         a4, zero, 4 #init loop 0 counter
                  andi         a3, t2, -1731
                  slli         tp, a2, 17
                  or           s1, a5, a5
                  addi         s8, zero, 4 #init loop 0 limit
sub_3_0_0_t:      sltiu        a0, a5, 1059
                  sll          t6, t0, s6
                  slt          a0, t1, t3
                  srli         a7, sp, 17
                  addi         a4, a4, -3 #update loop 0 counter
                  auipc        a6, 80950
                  addi         s10, a5, 1018
                  auipc        a6, 562269
                  lui          a7, 1028263
                  sltiu        a6, s9, 231
                  srl          t6, s10, t0
                  slti         sp, s5, 220
                  bgeu         a4, s8, sub_3_0_0_t #branch for loop 0
                  slt          t6, s9, s7
                  addi         a2, zero, 10 #init loop 0 counter
                  ori          ra, t1, 742
                  sub          a0, gp, s4
                  addi         s8, zero, 10 #init loop 0 limit
sub_3_2_0_t:      and          t2, t1, tp
                  slt          gp, sp, s8
                  addi         a2, a2, -9 #update loop 0 counter
                  xor          t6, a4, a7
                  xor          a1, a7, t1
                  auipc        a1, 859066
                  addi         t2, a7, 866
                  nop
                  bgeu         a2, s8, sub_3_2_0_t #branch for loop 0
                  xori         t2, a2, 1278
                  addi         s7, zero, -9 #init loop 0 counter
                  ori          tp, a4, -2010
                  sltiu        s10, a3, 224
                  srl          t6, gp, s4
                  addi         s2, zero, 19 #init loop 0 limit
                  sra          s9, s4, s3
                  ori          a3, s8, 1736
sub_3_1_0_t:      add          s0, s0, a2
                  xor          a7, gp, s9
                  addi         s7, s7, 4 #update loop 0 counter
                  bltu         s7, s2, sub_3_1_0_t #branch for loop 0
                  srl          a7, s0, s3
                  bge          s4, s0, 18f
                  or           a2, tp, a0
                  xor          t2, a1, s3
                  sra          s4, s8, a1
                  srl          a6, t4, a7
                  addi         t2, a0, -486
                  xor          a6, t2, s1
                  srai         a2, a0, 14
                  lui          tp, 706498
                  ori          a7, s1, 1868
                  srai         s8, a7, 18
                  andi         s3, s0, -374
                  add          s9, s7, sp
                  nop
                  srl          a0, t4, s0
                  andi         sp, gp, -69
                  or           sp, a0, s11
                  addi         a1, a1, 857
18:               xori         zero, a7, 698
                  sub          a3, sp, a3
                  addi         s1, s3, 54
                  bltu         t6, s10, 28f
                  sub          t0, zero, t2
                  bne          t3, gp, 36f
                  bne          sp, s11, 36f
                  sra          a1, a6, s7
                  sra          s3, sp, s0
                  sll          s9, t0, s0
28:               bgeu         ra, sp, 46f
                  beq          sp, ra, 48f
                  nop
                  sub          s9, t5, gp
                  add          t6, a4, a7
                  srli         a1, s1, 13
                  beq          a4, s1, 39f
                  andi         s7, ra, 409
36:               add          a1, a7, a0
                  sltu         s10, s11, zero
                  and          s0, a2, ra
39:               ori          t1, s11, -1186
                  slt          ra, a3, a4
                  sltu         t2, zero, s0
                  and          t3, s3, tp
                  slti         s4, zero, -536
                  sll          s4, s10, s4
                  slli         s4, t4, 10
46:               slti         s3, a0, -761
                  blt          sp, t5, 60f
48:               bgeu         t1, t1, 54f
                  sra          t1, s3, t1
                  sra          s3, s0, s10
                  bgeu         a7, a5, 68f
                  sll          sp, t4, a0
                  beq          s3, a6, 67f
54:               bgeu         a1, t3, 70f
                  andi         t2, s1, 402
                  and          t1, t5, s7
                  or           s9, s7, gp
                  sra          s1, a7, tp
                  sltu         gp, a7, s8
60:               bltu         gp, t4, 61f
61:               slli         s8, s7, 6
                  add          t4, s8, t6
                  or           zero, gp, s8
                  bge          t4, tp, 83f
                  addi         s8, s8, -947
                  xori         t5, a3, -1217
67:               bne          zero, s3, 74f
68:               sltu         t0, sp, gp
                  and          a6, ra, a7
70:               addi         a6, s1, -946
                  bgeu         ra, s10, 76f
                  sra          tp, a6, s5
                  nop
74:               slli         s11, t1, 28
                  srl          sp, s1, t2
76:               sltu         s1, a6, t5
                  ori          sp, gp, -1523
                  bne          gp, a3, 84f
                  addi         s4, t6, 1690
                  slti         a1, sp, -1964
                  sra          s3, t2, a7
                  bgeu         a1, ra, 91f
83:               auipc        sp, 962593
84:               bgeu         t3, a5, 91f
                  bge          tp, s1, 94f
                  srl          s7, t5, t2
                  bltu         a2, a2, 107f
                  bltu         t4, t0, 91f
                  bgeu         s2, a6, 103f
                  addi         s1, a5, -893
91:               andi         t0, a6, -83
                  blt          a7, a1, 106f
                  sltiu        s2, a1, -580
94:               ori          s7, sp, 1845
                  sll          zero, s7, a3
                  xor          a0, a6, s11
                  sra          a7, tp, t2
                  bne          a7, s4, 114f
                  ori          a3, tp, 1846
                  srli         a4, s5, 6
                  xor          a1, s0, s5
                  bgeu         s8, t1, 113f
103:              sltu         gp, t3, t6
                  srl          zero, s4, s8
                  xor          s4, s2, a6
106:              add          a6, zero, zero
107:              sltu         t4, s4, a3
                  srli         s2, s8, 20
                  srl          a6, t1, s9
                  sltiu        t1, t1, 1581
                  bgeu         s10, a0, 118f
                  ori          tp, t2, 1040
113:              bge          t5, s2, 115f
114:              sltu         t2, s11, s2
115:              slti         t0, t1, -351
                  andi         a4, s9, -1822
                  sra          sp, a2, s2
118:              blt          s4, t2, 129f
                  lui          t6, 304077
                  slli         s8, s4, 19
                  sltu         s10, tp, a0
                  xori         zero, s3, -390
                  sltu         sp, a2, zero
                  nop
                  auipc        t4, 954079
                  srli         s3, a4, 29
                  srli         s1, s10, 21
                  sltu         a0, s4, a7
129:              xori         s2, s10, 1546
                  sub          a3, s0, sp
                  ori          t0, t0, 99
                  bne          sp, s3, 148f
                  srai         s1, a2, 26
                  auipc        tp, 655578
                  nop
                  bltu         sp, s2, 141f
                  slt          s9, a5, s6
                  sltiu        s4, sp, 595
                  ori          a4, t2, 195
                  sub          ra, s7, s10
141:              ori          s2, s7, -376
                  bge          zero, s5, 150f
                  beq          zero, t5, 150f
                  xori         sp, s2, 1647
                  slti         sp, a0, 189
                  slli         t4, t6, 21
                  ori          a2, a6, -1453
148:              xori         ra, ra, -216
                  sltu         s10, a0, a4
150:              sltu         a7, s9, gp
                  sra          a1, s1, s4
                  lw           s7, 4(s5)
                  sltu         ra, a1, a6
                  and          s2, a4, s7
                  srai         s1, t5, 23
                  and          t2, s4, t3
                  sltu         gp, s3, t4
                  addi         s5, s5, 36
                  xori         s4, s0, -572
                  and          a6, a2, t5
224:              addi x26, x23, 0
224:              jalr x26, x26, 0
sub_5:            add          t5, t3, s9
                  sra          s3, s5, ra
                  slt          a7, t5, a2
                  slti         t0, t0, 987
                  addi         s5, s5, -8
                  srl          s11, s0, gp
                  sw           s7, 4(s5)
                  srli         s10, a4, 15
                  slt          a1, s6, ra
                  sub          s3, s1, a1
                  addi         ra, zero, 1 #init loop 0 counter
                  srli         s1, sp, 31
                  sub          a3, s1, a0
                  srai         gp, s2, 11
                  addi         t1, zero, -5 #init loop 0 limit
                  sltiu        a6, t5, 518
                  srai         gp, a1, 24
sub_5_13_0_t:     and          s7, t0, t6
                  nop
                  sub          a6, s5, a5
                  or           t3, s8, a5
                  xor          t3, s4, t0
                  sltu         s1, a3, a7
                  sub          s4, s10, s6
                  auipc        t6, 754931
                  srai         a3, a5, 3
                  sra          t0, s10, s11
                  addi         ra, ra, -6 #update loop 0 counter
                  lui          sp, 455279
                  sll          a0, t5, s6
                  slli         a4, s0, 0
                  srai         a3, t2, 0
                  beq          ra, t1, sub_5_13_0_t #branch for loop 0
                  auipc        s2, 657005
                  addi         t1, zero, 8 #init loop 0 counter
                  addi         t6, zero, 8 #init loop 0 limit
sub_5_4_0_t:      auipc        t4, 798954
                  addi         t1, t1, -5 #update loop 0 counter
                  bgeu         t1, t6, sub_5_4_0_t #branch for loop 0
                  srl          s0, gp, t6
                  addi         a0, zero, 1 #init loop 1 counter
                  sll          s0, t1, a7
                  addi         a6, zero, 9 #init loop 1 limit
sub_5_12_1_t:     andi         s4, s8, -1053
                  addi         a0, a0, 8 #update loop 1 counter
                  addi         s8, zero, 3 #init loop 0 counter
                  addi         a2, zero, -4 #init loop 0 limit
                  lui          a1, 186665
sub_5_12_0_t:     nop
                  addi         s8, s8, -9 #update loop 0 counter
                  bge          s8, a2, sub_5_12_0_t #branch for loop 0
                  beq          a0, a6, sub_5_12_1_t #branch for loop 1
                  addi         s0, s0, -791
                  addi         tp, zero, 7 #init loop 0 counter
                  slti         s11, tp, 1163
                  or           a6, a4, s4
                  srli         a3, s6, 21
                  sll          t2, t6, s0
                  xori         a2, a7, -1367
                  addi         t0, zero, 6 #init loop 0 limit
sub_5_16_0_t:     auipc        a3, 1035966
                  sra          s10, t0, zero
                  auipc        s9, 81879
                  addi         tp, tp, -4 #update loop 0 counter
                  sltu         s4, a1, s2
                  add          s11, t0, tp
                  and          a1, a0, t0
                  add          sp, a4, tp
                  ori          t2, a4, -349
                  andi         t6, t6, -93
                  auipc        s2, 622798
                  bgeu         tp, t0, sub_5_16_0_t #branch for loop 0
                  srli         s11, t2, 15
                  addi         t5, zero, 10 #init loop 0 counter
                  sltiu        t3, s5, -794
                  lui          a2, 62523
                  sra          t6, s2, s6
                  sll          s0, s5, sp
                  auipc        s2, 721949
                  lui          s2, 436124
                  addi         s1, zero, 10 #init loop 0 limit
sub_5_18_0_t:     sltu         s10, t3, a7
                  sltu         t6, a0, a5
                  sltu         t2, zero, s5
                  add          a2, s4, a0
                  lui          ra, 986047
                  srli         a7, s2, 15
                  sltiu        sp, s6, 52
                  and          t2, a2, ra
                  addi         t5, t5, -9 #update loop 0 counter
                  add          t0, a4, sp
                  andi         a1, t3, 1081
                  slti         t6, t2, 1680
                  xori         a1, s2, -1281
                  nop
                  addi         a6, a7, 467
                  auipc        s4, 662901
                  srai         s8, a1, 25
                  bgeu         t5, s1, sub_5_18_0_t #branch for loop 0
                  nop
                  addi         a4, zero, 10 #init loop 1 counter
                  sltiu        s3, s9, -1558
                  slt          t1, s0, a4
                  andi         a7, zero, 1668
                  addi         s4, zero, 9 #init loop 1 limit
sub_5_14_1_t:     auipc        t1, 994580
                  addi         a4, a4, -8 #update loop 1 counter
                  addi         s2, s8, -876
                  add          t4, s8, a3
                  xor          a2, t0, s10
                  srai         a1, s9, 3
                  or           s2, s7, a6
                  sra          s0, s4, ra
                  sra          s7, s9, s11
                  andi         s3, a5, -1330
                  slt          s3, a0, a6
                  addi         s1, zero, -2 #init loop 0 counter
                  srli         s11, s0, 4
                  addi         t0, zero, 4 #init loop 0 limit
                  ori          s2, a2, -677
                  andi         t4, a5, 181
sub_5_14_0_t:     lui          a7, 1014309
                  auipc        a3, 112688
                  or           s2, a1, a4
                  sltiu        zero, s0, -939
                  addi         s1, s1, 4 #update loop 0 counter
                  bltu         s1, t0, sub_5_14_0_t #branch for loop 0
                  slli         sp, s0, 19
                  sll          s7, a5, t4
                  slti         t6, tp, -798
                  sra          a2, a2, a6
                  add          t6, s4, a1
                  bgeu         a4, s4, sub_5_14_1_t #branch for loop 1
                  nop
                  addi         a0, zero, 9 #init loop 1 counter
                  and          zero, a0, s2
                  andi         a2, sp, 1666
                  addi         ra, zero, -4 #init loop 1 limit
                  and          s3, a3, t0
sub_5_1_1_t:      sltu         a2, t3, s5
                  slti         s3, t2, 1713
                  sltu         s9, t3, s8
                  add          a3, s0, t3
                  addi         a0, a0, -9 #update loop 1 counter
                  addi         s4, zero, -4 #init loop 0 counter
                  add          tp, a1, s11
                  addi         a1, zero, 12 #init loop 0 limit
                  sub          a6, tp, t0
sub_5_1_0_t:      slt          s10, t2, s4
                  sub          s7, t1, s0
                  srai         a6, gp, 17
                  slti         a7, a7, 26
                  addi         s4, s4, 1 #update loop 0 counter
                  sra          gp, s10, t3
                  and          zero, t1, a6
                  bltu         s4, a1, sub_5_1_0_t #branch for loop 0
                  or           zero, s0, s7
                  or           s3, s3, s6
                  lui          s0, 124318
                  xor          a6, s2, s11
                  xor          s0, a7, a1
                  bge          a0, ra, sub_5_1_1_t #branch for loop 1
                  auipc        s7, 332780
                  addi         t2, zero, 8 #init loop 0 counter
                  slti         a3, a4, -1880
                  sub          s7, t2, a3
                  sub          s10, s5, t4
                  slli         a4, t4, 3
                  xori         a3, t1, 1451
                  addi         sp, zero, 11 #init loop 0 limit
                  srli         a4, t6, 29
                  nop
                  slli         t5, tp, 18
sub_5_9_0_t:      andi         a2, a2, -1388
                  srl          s0, t2, s3
                  addi         t2, t2, 10 #update loop 0 counter
                  lui          s1, 900024
                  or           a4, a0, gp
                  sub          zero, s4, s5
                  xor          s8, a4, t2
                  xor          zero, t5, s6
                  lui          zero, 1045228
                  blt          t2, sp, sub_5_9_0_t #branch for loop 0
                  sll          a7, s1, s3
                  addi         a0, zero, 10 #init loop 1 counter
                  slti         s0, s8, 264
                  xori         t2, zero, -1164
                  add          t3, s6, a2
                  lui          t1, 80009
                  srli         t2, t4, 5
                  xori         s7, a3, -64
                  addi         gp, zero, -10 #init loop 1 limit
sub_5_11_1_t:     or           t5, s9, s11
                  addi         a0, a0, -10 #update loop 1 counter
                  addi         sp, zero, 0 #init loop 0 counter
                  or           t1, ra, t6
                  addi         t4, zero, 8 #init loop 0 limit
                  sltiu        a3, a2, -853
                  srai         t6, s6, 3
sub_5_11_0_t:     slt          s1, gp, s4
                  nop
                  addi         sp, sp, 4 #update loop 0 counter
                  srai         t0, s10, 26
                  sll          s11, s5, t0
                  bltu         sp, t4, sub_5_11_0_t #branch for loop 0
                  bne          a0, gp, sub_5_11_1_t #branch for loop 1
                  add          t0, ra, gp
                  addi         tp, zero, 10 #init loop 0 counter
                  addi         s2, s5, 1215
                  addi         s4, zero, 10 #init loop 0 limit
                  slt          s7, t2, t5
                  sra          t2, s9, t2
                  xor          t6, a0, a3
sub_5_6_0_t:      slti         t5, s11, 1670
                  sub          a4, a2, s6
                  and          t4, s2, s11
                  addi         tp, tp, -9 #update loop 0 counter
                  sltiu        s11, s10, 1113
                  add          s1, a2, a4
                  ori          s0, s1, 1996
                  srai         t3, t5, 10
                  sll          a6, a2, s9
                  srl          s0, a3, s9
                  slli         s1, s11, 3
                  auipc        t5, 241137
                  xor          s0, s10, s6
                  sll          t6, zero, ra
                  sltiu        a0, s11, 199
                  srai         a3, a7, 14
                  add          t3, a0, a3
                  add          t2, a2, a5
                  bgeu         tp, s4, sub_5_6_0_t #branch for loop 0
                  srl          a3, t4, t1
                  addi         t0, zero, 9 #init loop 0 counter
                  addi         a6, zero, 8 #init loop 0 limit
sub_5_10_0_t:     add          s10, zero, tp
                  lui          ra, 174156
                  addi         t0, t0, -6 #update loop 0 counter
                  bgeu         t0, a6, sub_5_10_0_t #branch for loop 0
                  xori         ra, a4, -1164
                  addi         t5, zero, 7 #init loop 1 counter
                  sra          s11, s8, s8
                  and          s2, t2, t1
                  addi         s1, zero, 17 #init loop 1 limit
                  srai         s2, s8, 6
sub_5_3_1_t:      nop
                  sltu         s11, a6, t1
                  addi         t5, t5, 10 #update loop 1 counter
                  slli         s0, a3, 29
                  ori          a0, s9, 1797
                  addi         a7, zero, -3 #init loop 0 counter
                  slli         a1, s2, 13
                  srai         a1, tp, 31
                  auipc        a6, 539149
                  andi         t3, ra, 918
                  xor          a6, a6, a2
                  addi         s3, zero, -9 #init loop 0 limit
sub_5_3_0_t:      addi         t4, s9, 1288
                  srl          t6, t4, gp
                  xori         s9, t1, 126
                  addi         a7, a7, -5 #update loop 0 counter
                  srli         zero, s2, 10
                  nop
                  bge          a7, s3, sub_5_3_0_t #branch for loop 0
                  slli         t4, a2, 25
                  sub          t1, a1, t1
                  beq          t5, s1, sub_5_3_1_t #branch for loop 1
                  or           t4, ra, a4
                  addi         gp, zero, 8 #init loop 0 counter
                  sltu         ra, t6, s2
                  sltiu        t5, s10, -1553
                  addi         s11, t4, -536
                  nop
                  sltiu        s10, t3, 1967
                  addi         s9, zero, 12 #init loop 0 limit
                  ori          a7, a4, 625
                  srai         s10, s5, 10
                  sra          t4, a7, s6
                  xori         t3, t4, 1673
                  andi         s0, sp, 611
sub_5_0_0_t:      slti         t5, sp, -741
                  add          t0, a4, s8
                  slli         zero, a5, 24
                  srai         a7, t0, 27
                  addi         gp, gp, 10 #update loop 0 counter
                  sra          a4, a5, a0
                  blt          gp, s9, sub_5_0_0_t #branch for loop 0
                  andi         t4, tp, 291
                  addi         ra, zero, -9 #init loop 1 counter
                  addi         t2, zero, 2 #init loop 1 limit
sub_5_2_1_t:      xori         tp, tp, -521
                  or           s2, s1, zero
                  addi         ra, ra, 8 #update loop 1 counter
                  addi         s8, zero, -10 #init loop 0 counter
                  addi         a0, zero, 13 #init loop 0 limit
                  or           t4, s10, a4
sub_5_2_0_t:      xor          s4, a2, a7
                  addi         s8, s8, 8 #update loop 0 counter
                  blt          s8, a0, sub_5_2_0_t #branch for loop 0
                  blt          ra, t2, sub_5_2_1_t #branch for loop 1
                  sltu         s7, a1, t2
                  addi         a2, zero, 10 #init loop 0 counter
                  sub          t0, t3, ra
                  auipc        s4, 741652
                  addi         s7, zero, 19 #init loop 0 limit
                  add          t5, s3, a7
sub_5_5_0_t:      sub          sp, a3, gp
                  sltu         s11, t0, sp
                  addi         a2, a2, 6 #update loop 0 counter
                  blt          a2, s7, sub_5_5_0_t #branch for loop 0
                  andi         t5, t2, 287
                  addi         t0, zero, 7 #init loop 1 counter
                  xori         s0, sp, -791
                  addi         a0, zero, 4 #init loop 1 limit
                  sra          a4, s6, zero
sub_5_17_1_t:     sltiu        tp, s4, -1134
                  addi         t0, t0, -3 #update loop 1 counter
                  lui          tp, 267966
                  sub          s4, t6, t6
                  addi         ra, zero, -10 #init loop 0 counter
                  add          t4, sp, s10
                  xori         s11, t1, 1699
                  addi         a6, zero, 6 #init loop 0 limit
                  slli         s4, gp, 17
                  srai         a1, s9, 0
sub_5_17_0_t:     andi         t4, s4, -1384
                  addi         ra, ra, 5 #update loop 0 counter
                  srl          gp, s5, gp
                  bltu         ra, a6, sub_5_17_0_t #branch for loop 0
                  slt          a3, sp, s4
                  bgeu         t0, a0, sub_5_17_1_t #branch for loop 1
                  slt          t1, s11, a1
                  slt          t1, t3, s6
                  sra          s7, s11, s4
                  sub          zero, a6, gp
                  slti         a6, a7, -1828
                  bne          a1, s0, 16f
                  beq          s4, gp, 13f
                  srl          sp, a1, t3
                  ori          t2, a2, 1200
                  addi         s3, zero, 6 #init loop 1 counter
                  addi         a4, zero, -18 #init loop 1 limit
sub_5_8_1_t:      or           sp, a1, t1
                  srai         a6, a4, 10
                  addi         s3, s3, -2 #update loop 1 counter
                  nop
                  addi         t2, zero, -6 #init loop 0 counter
                  or           a6, a5, a7
                  addi         a3, zero, 9 #init loop 0 limit
                  ori          s9, t3, -1948
                  sub          s11, s10, s11
sub_5_8_0_t:      xor          t1, a6, sp
                  addi         t2, t2, 9 #update loop 0 counter
                  bltu         t2, a3, sub_5_8_0_t #branch for loop 0
                  xori         t4, s4, 764
                  beq          s3, a4, sub_5_8_1_t #branch for loop 1
                  addi         t0, a5, -1984
                  slt          ra, a6, s4
                  andi         s4, t0, -1833
                  auipc        s9, 182131
                  blt          a7, s4, 26f
                  bltu         a2, s7, 32f
13:               addi         t4, tp, 419
                  sltiu        t2, s3, -275
                  beq          ra, s7, 18f
16:               ori          zero, a0, 298
                  sub          s0, s5, s11
18:               srai         a6, s5, 1
                  addi         s2, a1, -1483
                  sltiu        a7, s6, 418
                  andi         s3, a3, 330
                  andi         t5, s3, -771
                  andi         s1, s2, -1535
                  bne          t5, a3, 35f
                  addi         sp, sp, -1140
26:               slli         s3, a0, 23
                  slt          a7, s1, t5
                  xori         t0, t6, -352
                  bltu         tp, a3, 38f
                  slt          s1, sp, s8
                  bltu         a5, a6, 32f
32:               blt          a5, ra, 48f
                  sub          a4, a2, s6
                  srai         s11, t1, 7
35:               nop
                  slti         a3, a6, 1879
                  and          a0, a0, t2
                  addi         t5, zero, 1 #init loop 0 counter
                  auipc        gp, 403065
                  xor          s11, a6, s3
                  addi         a1, zero, 17 #init loop 0 limit
sub_5_15_0_t:     add          s2, s5, s7
                  addi         t5, t5, 9 #update loop 0 counter
                  addi         s4, s3, 451
                  sub          s1, ra, t6
                  sll          a3, t3, a6
                  sra          t1, s1, s6
                  sra          s8, t5, a5
                  add          s11, s11, a7
                  bltu         t5, a1, sub_5_15_0_t #branch for loop 0
                  xori         t0, s4, -1435
38:               andi         a0, t3, -572
                  slli         t6, s4, 8
                  sll          zero, t2, t3
                  sll          t3, s3, s3
                  add          ra, s8, s4
                  sltu         s0, s2, tp
                  auipc        s4, 254041
                  slli         s10, tp, 14
                  bgeu         ra, s2, 59f
                  xor          s11, s9, s10
48:               sltu         a2, s5, s11
                  nop
                  andi         a0, s5, 1162
                  sll          t1, s4, s7
                  auipc        s3, 637926
                  or           ra, t3, s8
                  bge          a1, s1, 66f
                  slti         s7, t3, -1433
                  bltu         s10, t3, 59f
                  blt          s9, s2, 61f
                  blt          a7, s8, 75f
59:               nop
                  addi         a6, s0, -726
61:               ori          t0, s4, -1998
                  srli         a4, s10, 27
                  srai         t0, ra, 31
                  slt          s0, a4, t3
                  andi         a2, s10, -705
66:               or           a0, s3, t5
                  sub          zero, s11, t1
                  addi         t4, a2, 1704
                  slt          a7, a2, zero
                  blt          gp, s8, 75f
                  lui          t2, 876137
                  add          sp, t5, a1
                  blt          t1, gp, 79f
                  andi         t6, a3, 136
75:               add          gp, t1, zero
                  add          s2, zero, s1
                  andi         a0, s0, 1643
                  andi         t2, s3, -1844
79:               andi         a6, t2, -1296
                  xori         sp, s8, -604
                  slt          s2, tp, s10
                  bltu         a4, a1, 91f
                  sra          s9, t2, t6
                  nop
                  sltiu        s11, s10, 1370
                  xori         s0, s9, -1941
                  auipc        t0, 10020
                  addi         ra, a7, 296
                  srli         t4, a7, 4
                  srl          s2, s4, a3
91:               bne          ra, s9, 111f
                  beq          tp, a6, 103f
                  bge          a0, a5, 109f
                  sll          s11, a2, a2
                  addi         t1, zero, 1384
                  sub          s10, s9, s0
                  or           zero, ra, ra
                  slti         s1, a5, 1039
                  xor          s3, t0, s8
                  xor          t3, s2, a4
                  beq          a7, a1, 115f
                  nop
103:              bltu         t2, s0, 105f
                  xori         t4, gp, -2013
105:              xori         ra, a6, -538
                  add          t2, t4, s3
                  slt          t0, tp, s8
                  slt          a0, t4, s2
109:              or           sp, a4, s5
                  sra          tp, s3, sp
111:              sra          s1, t6, a0
                  sra          s11, s2, a5
                  srl          t3, s3, s8
                  sll          s2, t1, a0
115:              blt          t3, s2, 122f
                  bne          t4, sp, 136f
                  xor          ra, s7, sp
                  add          a7, s3, s0
                  bgeu         s1, s10, 121f
                  sra          s8, t6, a7
121:              srl          a2, a2, t6
122:              slt          s2, gp, sp
                  addi         t5, s7, 1528
                  sra          s8, sp, s0
                  and          sp, sp, zero
                  or           s4, s7, a6
                  andi         a0, t0, 2017
                  srli         t1, ra, 24
                  andi         t3, sp, -591
                  slli         s0, a6, 18
                  slti         a3, a6, -209
                  xori         a7, t3, -110
                  bltu         a4, a3, 150f
                  sltiu        t6, s0, -17
                  sltu         t2, a4, s4
136:              sltu         s9, tp, t6
                  slti         a2, s11, -307
                  or           s11, s0, s8
                  xor          zero, t0, a6
                  bge          s0, s7, 146f
                  bne          t6, sp, 147f
                  slti         s4, a0, -149
                  srai         a3, s0, 21
                  addi         s0, s7, -1721
                  bge          t4, s6, 149f
146:              bne          t2, t1, 152f
147:              xori         t3, t2, -1263
                  xor          a2, t6, s1
149:              sltiu        a4, a5, -454
150:              bltu         s5, a4, 166f
                  ori          s1, a6, -113
152:              add          tp, t0, t3
                  bge          t5, gp, 168f
                  nop
                  slti         a6, s7, 194
                  srli         s11, s3, 0
                  srai         s3, t5, 23
                  addi         t1, s9, -1449
                  ori          a6, t3, 1040
                  add          zero, s3, s5
                  addi         s9, t1, 848
                  beq          sp, t5, 165f
                  slli         ra, a0, 26
                  sltu         s0, s10, a6
165:              auipc        a3, 215189
166:              srai         a2, s5, 13
                  bltu         a6, a6, 170f
168:              nop
                  addi         a2, a4, 520
170:              slli         a3, a5, 15
                  xori         a3, s9, 400
                  auipc        tp, 881804
                  add          s1, t1, s1
                  slli         a4, t4, 11
                  bge          a4, zero, 181f
                  andi         a1, ra, -475
                  or           s1, tp, a5
                  xori         a2, s0, -1750
                  sll          a0, a1, tp
                  add          s7, s6, s0
181:              xori         t6, a0, 1990
                  and          t4, s5, sp
                  sltu         t2, sp, t1
                  and          s2, s5, s0
                  sltiu        a3, s3, -6
                  slti         ra, s8, 352
                  srai         s7, s11, 26
                  beq          s0, a6, 190f
                  srli         s4, tp, 30
190:              slt          s8, t6, s11
                  slt          a2, s5, s8
                  ori          a4, s2, 1007
                  bge          s1, sp, 213f
                  bne          s8, t6, 202f
                  and          t2, a3, a5
                  nop
                  srli         zero, tp, 16
                  bne          a2, t1, 205f
                  nop
                  blt          a4, s0, 214f
                  sra          t6, s10, a4
202:              auipc        a0, 878749
                  xor          s1, a6, s11
                  beq          s5, a3, 210f
205:              nop
                  and          s11, s11, s0
                  sra          a3, t2, a0
                  sll          t5, s4, zero
                  xor          a2, s8, t3
210:              xori         t0, a0, 1392
                  and          ra, a3, s2
                  slt          a1, t5, a6
213:              add          t2, t5, ra
214:              slt          t4, a4, t3
                  sltiu        s11, a2, 617
                  srai         a7, s6, 3
                  slli         s11, zero, 0
                  andi         a2, a1, -1713
                  bltu         s8, sp, 228f
                  auipc        a0, 949545
                  ori          s8, s2, 1325
                  slli         a1, a3, 5
                  and          zero, s8, a1
                  sub          s4, t1, s7
                  srai         t0, a6, 30
                  add          sp, s7, t1
                  and          t2, s3, s7
228:              auipc        zero, 705399
                  xori         s7, a1, 1973
                  sltiu        a7, t6, -1363
                  bne          t2, s9, 243f
                  sltu         t4, a2, s9
                  add          s4, s8, a0
                  auipc        a2, 747812
                  xori         t2, a1, -86
                  and          ra, a1, s11
                  sll          s8, t1, s1
                  sltu         s3, zero, a7
                  sub          t1, gp, s9
                  bne          a2, s2, 246f
                  xori         a1, ra, -232
                  lui          s9, 548632
243:              slti         a6, s10, -1877
                  sltu         tp, t5, s6
                  beq          gp, a4, 249f
246:              slt          s9, s1, s5
                  sra          zero, s1, s3
                  sll          t1, s1, zero
249:              auipc        s10, 546795
                  slt          a6, a0, tp
                  sra          s10, t0, t0
                  nop
                  beq          gp, s10, 257f
                  sltiu        a1, t5, -1716
                  xori         t6, s9, 853
                  auipc        s4, 992805
257:              lui          t1, 620659
                  slt          a7, a0, s1
                  blt          s3, t0, 264f
                  xor          a7, s11, ra
                  sub          a4, s9, s4
                  slt          a4, a6, a7
                  ori          a2, t6, 22
264:              nop
                  addi         t2, s5, 1918
                  slli         s0, s8, 31
                  and          t6, s1, sp
                  bgeu         s4, a2, 270f
                  slti         s1, a3, -1088
270:              beq          zero, s2, 282f
                  sra          t6, s7, zero
                  sub          s11, sp, sp
                  slli         t6, s0, 0
                  addi         zero, t1, 1605
                  beq          s3, a0, 286f
                  srl          a2, t2, s11
                  sltu         t3, s5, t4
                  bltu         s5, s0, 289f
                  bne          s4, s5, 295f
                  blt          sp, t5, 297f
                  sra          t0, s8, s1
282:              nop
                  and          s1, a5, a0
                  and          s4, s5, s10
                  addi         s3, s5, -50
286:              blt          t5, zero, 295f
                  srl          s10, s0, t6
                  bgeu         s4, a5, 305f
289:              bge          s4, s3, 309f
                  slli         zero, a2, 17
                  sltu         s11, t4, a4
                  bgeu         s7, t5, 293f
293:              and          s4, s6, sp
                  nop
295:              auipc        a7, 478923
                  bne          s1, s3, 316f
297:              slli         sp, a1, 5
                  slli         a3, sp, 29
                  nop
                  nop
                  slli         s11, a5, 22
                  beq          a2, s9, 315f
                  sltiu        s2, sp, 644
                  bgeu         s8, sp, 310f
305:              sltu         s3, s6, a6
                  add          sp, s7, t5
                  auipc        t4, 549539
                  and          a1, s4, t5
309:              blt          s0, t2, 325f
310:              auipc        t6, 396307
                  or           s8, s11, a7
                  blt          s8, sp, 332f
                  auipc        s2, 103652
                  and          t2, s6, a7
315:              ori          a0, s1, -1903
316:              auipc        ra, 218395
                  lui          t3, 250447
                  sub          t5, a6, sp
                  srai         s9, s9, 4
                  addi         t2, ra, 350
                  slli         a2, t6, 12
                  bltu         s1, s8, 323f
323:              or           t6, s6, a5
                  beq          a0, t6, 328f
325:              xori         a0, s2, 991
                  add          s2, s5, a3
                  add          t0, s10, s4
328:              andi         t0, a4, -1647
                  nop
                  or           a1, t4, s5
                  srai         t0, t0, 6
332:              bltu         t1, ra, 347f
                  sub          a0, s3, a5
                  bltu         t2, a0, 350f
                  slli         s8, s0, 10
                  auipc        ra, 240602
                  slt          t4, a7, s1
                  and          t5, s11, s9
                  add          t5, zero, t1
                  xor          s8, sp, a3
                  slt          s4, ra, a6
                  add          t6, s6, s7
                  addi         a6, s6, 207
                  bltu         s4, s0, 350f
                  bne          s3, s5, 348f
                  slti         a7, s1, -1652
347:              or           a4, zero, a7
348:              slt          a0, a4, s5
                  andi         a0, s0, 471
350:              srli         s10, s1, 14
                  or           a6, t2, s11
                  srai         s7, a2, 12
                  lui          zero, 478449
                  xor          gp, sp, s10
                  sltiu        s8, t6, 530
                  sltu         a4, sp, t2
                  blt          t5, t0, 366f
                  slli         a1, s2, 22
                  lui          gp, 62178
                  or           s11, s10, s9
                  blt          a3, t4, 364f
                  slt          t2, t3, t5
                  xori         sp, t0, -918
364:              slti         t0, s3, 678
                  or           a7, a0, t2
366:              ori          a6, t6, -886
                  sltu         a7, a5, s3
                  or           s9, t5, t3
                  srli         s9, a0, 8
                  andi         t1, a5, -1115
                  slli         s9, s9, 6
                  sub          s2, t1, s11
                  andi         sp, gp, 274
                  beq          a0, tp, 385f
                  andi         s9, t4, -966
                  add          tp, s11, a7
                  and          a7, t2, s0
                  or           a4, s2, t5
                  slti         a2, a6, 1350
                  bge          s0, t4, 384f
                  lui          s3, 807438
                  srli         a2, t0, 14
                  sll          t3, s11, t3
384:              sra          t2, a2, s0
385:              andi         s2, zero, 981
                  sub          s11, t5, tp
                  sltu         t6, t5, zero
                  bltu         s5, a1, 401f
                  nop
                  add          a3, s2, t5
                  andi         t6, t5, 1984
                  xori         s7, t3, 1858
                  and          s8, s10, a7
                  blt          a3, a0, 411f
                  bne          t1, a0, 403f
                  beq          t2, sp, 398f
                  slli         t0, t2, 29
398:              andi         ra, tp, 222
                  xor          s8, s4, t1
                  xori         a1, s3, -142
401:              slt          s3, s6, s1
                  and          tp, s10, zero
403:              slt          t0, t3, t3
                  ori          a0, a2, 1305
                  slli         s11, a2, 28
                  sltiu        t3, s11, 412
                  bltu         a7, a0, 424f
                  bge          gp, s8, 413f
                  bge          ra, a4, 415f
                  sub          s11, s0, t0
411:              sltu         zero, a4, t4
                  srl          zero, gp, s9
413:              blt          sp, t0, 420f
                  bltu         s5, t4, 416f
415:              sra          a0, a7, s3
416:              lui          s9, 79629
                  sra          s4, a1, t5
                  sra          s10, t1, a1
                  ori          s9, s6, -280
420:              nop
                  sll          s11, s1, a2
                  blt          a3, a5, 442f
                  sll          s8, s9, s4
424:              sltiu        a7, t0, 1524
                  auipc        tp, 961195
                  addi         t5, a3, 1654
                  nop
                  slti         zero, s9, 821
                  slt          a4, s6, a3
                  addi         ra, s6, -502
                  sra          s10, s6, a5
                  blt          t5, s11, 438f
                  ori          t1, a4, -4
                  slli         t0, s3, 27
                  or           sp, t1, s0
                  sltu         s1, t0, ra
                  bgeu         t6, a6, 448f
438:              sra          t5, a4, s4
                  srli         t3, a6, 11
                  bgeu         s8, a3, 449f
                  bltu         a1, t4, 455f
442:              bgeu         a0, s0, 454f
                  sub          s8, s9, a4
                  srl          s11, s6, s7
                  blt          a0, t2, 451f
                  ori          s0, a6, -342
                  add          s7, a5, s9
448:              andi         a3, s5, 1581
449:              srai         s7, a7, 9
                  bne          t2, a3, 470f
451:              bne          a6, s11, 463f
                  sll          t4, t3, a0
                  bne          t3, s11, 469f
454:              srl          s3, t1, a3
455:              ori          gp, s8, 1621
                  slli         a0, s11, 19
                  bne          s2, a2, 477f
                  sltu         a6, s2, s5
                  or           gp, t5, s2
                  slt          a3, s7, a4
                  nop
                  beq          zero, a4, 474f
463:              andi         s10, a6, -983
                  sll          a4, s10, t4
                  sltu         tp, a2, s2
                  slt          t2, gp, s1
                  and          gp, sp, a1
                  srli         a1, a0, 9
469:              and          t3, s2, t1
470:              nop
                  slti         a7, s6, -1065
                  auipc        t2, 68890
                  sub          s4, s1, s6
474:              and          t5, s3, a1
                  beq          s8, s0, 481f
                  srli         s1, s10, 12
477:              lui          ra, 883807
                  beq          sp, a5, 481f
                  sra          a2, a3, t0
                  sll          a0, s11, a0
481:              xori         s10, t0, -1238
                  lui          t3, 667225
                  slt          t6, a3, t5
                  nop
                  sll          tp, s6, t6
                  srai         s4, s0, 28
                  and          a7, s8, s2
                  lui          t4, 1044522
                  nop
                  slli         zero, s10, 29
                  add          zero, a1, a5
                  sltu         s0, s10, a3
                  or           s7, a4, zero
                  bltu         a6, s2, 514f
                  srli         t6, a2, 17
                  beq          a1, s7, 502f
                  bne          s0, t2, 511f
                  sll          s8, tp, s6
                  bgeu         s2, s1, 502f
                  slti         tp, s3, -263
                  slli         s11, zero, 8
502:              addi         s4, s6, -1647
                  bltu         s5, s0, 523f
                  sltu         t0, a1, a5
                  ori          a4, a7, -129
                  slli         t3, t2, 10
                  bge          s3, gp, 522f
                  bge          a1, t0, 513f
                  slli         s0, s0, 26
                  slti         t4, s1, 1898
511:              sltu         a6, t1, t5
                  xori         t1, gp, -2004
513:              add          s2, tp, t6
514:              slli         t1, gp, 13
                  srli         t5, ra, 30
                  bltu         t3, sp, 522f
                  bgeu         s5, t2, 526f
                  add          t3, s4, a3
                  add          t5, s4, t2
                  slli         s1, s3, 2
                  sub          s3, t4, t3
522:              bne          t1, gp, 533f
523:              sltu         a0, a4, t5
                  sltu         s11, a2, ra
                  sra          a1, s0, s7
526:              slli         t6, t6, 15
                  xor          t2, s8, t0
                  beq          t3, s4, 532f
                  sltu         a6, t4, a0
                  and          ra, s5, t5
                  sltiu        s1, sp, 1818
532:              srl          gp, s6, t2
533:              nop
                  bge          sp, a7, 540f
                  add          t2, a5, t1
                  auipc        a4, 453869
                  or           tp, s0, t0
                  sra          s8, s4, s8
                  sll          a6, s9, t6
540:              addi         s10, t2, -295
                  bgeu         a6, t3, 554f
                  or           a2, s6, s0
                  nop
                  andi         t1, s5, 765
                  srl          s8, s2, a3
                  and          t0, t0, s2
                  add          s4, s10, zero
                  srl          t5, t1, s7
                  andi         s10, s6, -1244
                  xor          t6, tp, t3
                  beq          t3, gp, 558f
                  sltu         s10, t6, t3
                  xor          t1, a4, a2
554:              bgeu         a4, t4, 555f
555:              andi         s0, s7, -1725
                  xori         ra, s11, -204
                  slli         s7, t0, 6
558:              bge          zero, a0, 575f
                  andi         gp, gp, 2042
                  andi         t6, s5, 832
                  srai         t4, s8, 28
                  sltiu        a2, s10, 1211
                  xori         s4, s11, 1358
                  ori          s11, ra, 988
                  sltu         a6, s5, sp
                  bgeu         t1, t2, 568f
                  srai         s10, s4, 18
568:              ori          sp, s0, 1307
                  srli         a6, s10, 11
                  ori          gp, a0, 1132
                  srli         t0, s11, 7
                  beq          a1, s5, 580f
                  addi         t3, s5, -523
                  xor          s4, a3, tp
575:              slt          a4, a4, s7
                  srl          t4, t6, tp
                  sltiu        ra, s4, -377
                  srl          t5, a1, a7
                  bgeu         a7, t0, 595f
580:              sltu         a3, a1, a4
                  bge          a7, s8, 598f
                  addi         s1, zero, 2 #init loop 0 counter
                  addi         gp, zero, -10 #init loop 0 limit
sub_5_7_0_t:      andi         a6, s6, -309
                  addi         s1, s1, -5 #update loop 0 counter
                  bge          s1, gp, sub_5_7_0_t #branch for loop 0
                  sltu         tp, tp, t4
                  nop
                  sltu         a2, ra, s11
                  add          t4, s11, t6
                  slt          s10, sp, t5
                  add          t2, tp, t4
                  xor          zero, gp, s3
                  slti         s11, a0, 518
                  sra          s9, s11, s1
                  andi         s9, tp, -1053
                  sub          t2, sp, a5
                  nop
                  auipc        s9, 34331
                  bne          s2, s1, 606f
595:              beq          a1, a7, 606f
                  xori         a0, t5, -1809
                  and          s4, sp, a5
598:              and          a3, zero, t4
                  srai         t1, s4, 16
                  blt          t0, s6, 609f
                  or           t6, a4, sp
                  sub          t1, s5, s7
                  addi         s9, s7, -1122
                  add          s1, gp, s3
                  xori         a0, tp, -457
606:              bne          s9, a4, 608f
                  sra          a0, a7, t1
608:              bgeu         zero, zero, 612f
609:              slti         t6, a2, -1057
                  and          gp, ra, s3
                  slti         t1, s4, -161
612:              sltiu        t2, a1, -830
                  srli         gp, s5, 22
                  sltiu        s4, s5, -2042
                  lui          ra, 585734
                  xori         t6, s10, 1678
                  srli         s4, t3, 10
                  add          s8, s9, s0
                  andi         s3, s9, -607
                  sltiu        gp, t2, 67
                  sll          s7, t4, sp
                  lui          s4, 261091
                  or           a6, s11, a2
                  ori          s0, a4, 1203
                  addi         a2, s0, 1571
                  bge          s2, a7, 632f
                  slt          zero, t6, s7
                  srai         s8, s5, 21
                  xori         s0, a3, 689
                  add          s10, a2, a7
                  srli         t1, t5, 23
632:              slt          a1, s3, s0
                  slli         a4, zero, 23
                  addi         a0, a4, 1190
                  add          a4, s9, sp
                  xori         ra, tp, -1196
                  add          s10, gp, ra
                  lui          a1, 334002
                  auipc        t0, 829515
                  add          s11, s0, t3
                  add          t5, t1, t4
                  slli         s10, zero, 10
                  sub          t6, s11, gp
                  nop
                  srl          s3, t2, zero
                  andi         t1, s6, 699
                  sra          t6, a6, t1
                  beq          s11, s7, 660f
                  lui          sp, 180142
                  sltiu        zero, t1, 1689
                  lui          s11, 765588
                  bltu         t6, t5, 655f
                  auipc        a6, 879246
                  andi         a2, a7, 1613
655:              add          a6, a5, a1
                  andi         a4, sp, -742
                  andi         t1, s5, 164
                  andi         t6, a7, 507
                  srli         a2, t0, 15
660:              beq          s10, t2, 671f
                  bge          a4, a3, 663f
                  bltu         sp, a3, 667f
663:              sltiu        t0, gp, -1628
                  sra          a3, a0, t3
                  bgeu         s7, t3, 685f
                  ori          t5, s1, 1728
667:              srli         a4, a2, 19
                  slli         s1, t2, 12
                  sltu         t0, s4, a6
                  blt          s1, s0, 674f
671:              srli         s8, t1, 3
                  slli         t4, t1, 17
                  xor          t0, s1, s9
674:              srai         s11, s1, 27
                  slt          sp, t6, s1
                  sub          ra, s0, s0
                  xor          sp, a4, s8
                  andi         s8, s7, 480
                  bgeu         sp, s2, 682f
                  bltu         a7, a5, 687f
                  xori         tp, s10, 339
682:              beq          s1, sp, 699f
                  and          s0, a0, a3
                  bgeu         a7, tp, 693f
685:              lui          a0, 607359
                  srai         a4, t5, 0
687:              sub          a7, s10, t4
                  srli         s1, s4, 19
                  blt          s3, s11, 709f
                  xori         s2, s6, 1447
                  slti         a6, a3, 1059
                  srl          sp, s5, s7
693:              slt          s9, a1, zero
                  xor          t5, s0, s3
                  beq          a4, a2, 715f
                  xor          gp, t3, t4
                  ori          t1, t6, 2005
                  slt          s7, s4, a5
699:              bge          zero, a7, 713f
                  nop
                  bltu         t3, s2, 705f
                  bge          a5, tp, 710f
                  or           s11, a1, s2
                  and          s9, t3, s4
705:              srl          a0, ra, t3
                  andi         s7, tp, -725
                  xor          t0, a0, s6
                  blt          s7, s0, 721f
709:              slli         s9, tp, 13
710:              addi         t5, a1, -2045
                  sra          tp, s9, a7
                  slli         s4, a6, 28
713:              bge          a5, a3, 719f
                  bge          a1, s3, 731f
715:              sll          s2, zero, s7
                  slli         s8, t3, 23
                  nop
                  sltiu        t0, sp, -1413
719:              sltiu        a1, a7, -734
                  and          s2, t3, s1
721:              srl          s8, s11, s8
                  and          s1, a3, s6
                  auipc        s1, 727309
                  and          tp, s9, s5
                  slli         t4, sp, 23
                  andi         t2, s10, -884
                  beq          s2, zero, 729f
                  srai         s11, a3, 29
729:              nop
                  beq          a1, a6, 736f
731:              nop
                  srli         a3, s2, 15
                  sra          a1, s2, t5
                  or           t0, s2, s10
                  sltu         sp, gp, t6
736:              slti         t4, s10, -482
                  andi         s7, gp, 305
                  add          a7, a5, a0
                  bge          a4, sp, 755f
                  addi         a2, a3, 1462
                  bne          s2, s5, 750f
                  auipc        t2, 231761
                  addi         zero, t3, 433
                  slli         s0, t6, 7
                  slt          t5, s2, a7
                  sltu         a0, t2, s9
                  bne          s2, t3, 759f
                  sltu         s7, s6, t0
                  addi         zero, s5, 1956
750:              slli         gp, s2, 23
                  bltu         zero, a3, 762f
                  bgeu         t1, t0, 758f
                  srl          a0, s7, t1
                  beq          tp, s4, 755f
755:              sub          t6, t2, t1
                  bge          a1, t2, 772f
                  slti         gp, a3, -790
758:              sltiu        s8, s6, 1981
759:              bltu         s4, s10, 774f
                  sltu         s3, a5, s10
                  bge          t3, s9, 769f
762:              slli         sp, s4, 8
                  lui          a4, 958738
                  sltiu        s9, s7, 1716
                  blt          s11, s4, 781f
                  bge          t4, s7, 768f
                  xor          t3, s7, t4
768:              sltu         s11, ra, a4
769:              srai         t5, tp, 15
                  srai         s10, t5, 11
                  bltu         s1, s1, 783f
772:              sra          t6, a7, tp
                  or           ra, s4, gp
774:              slli         a2, s2, 14
                  slli         t0, sp, 14
                  slt          a2, t2, a6
                  bne          sp, zero, 783f
                  add          t6, t0, s7
                  slli         a6, a7, 15
                  beq          s0, s8, 782f
781:              sra          s0, t5, a1
782:              sll          a6, t3, t6
783:              xor          t1, a7, t2
                  bne          s10, s9, 788f
                  add          s8, s2, sp
                  sub          sp, tp, ra
                  nop
788:              xor          s7, s3, s10
                  ori          s3, gp, 767
                  addi         s10, a6, -1771
                  sub          a1, a7, s6
                  xori         a3, t6, -1243
                  add          t5, t6, s3
                  sll          s1, a5, t1
                  srl          t1, a7, s7
                  blt          t2, s0, 805f
                  bne          s2, s10, 806f
                  srai         s11, a0, 18
                  sll          s10, a5, t5
                  lui          s7, 98348
                  sub          a4, s1, s9
                  srai         sp, s1, 5
                  add          s3, t1, s6
                  slli         t1, t6, 18
805:              beq          t6, a3, 819f
806:              ori          a4, sp, -923
                  beq          a6, s7, 812f
                  sltu         s9, ra, zero
                  andi         s0, gp, -831
                  bltu         zero, ra, 821f
                  bne          t5, s4, 828f
812:              srl          t2, s4, t3
                  sltiu        a3, a6, 574
                  addi         a6, t5, -886
                  sub          gp, t3, tp
                  andi         s0, s6, -853
                  sub          sp, s10, t3
                  lui          s10, 704626
819:              beq          s0, s8, 832f
                  blt          t6, s1, 824f
821:              sra          tp, s10, s1
                  and          s9, gp, s8
                  slli         a1, zero, 23
824:              add          a3, s10, a6
                  bge          s5, s6, 842f
                  srli         zero, s9, 14
                  nop
828:              slli         a0, zero, 18
                  slli         s8, a7, 20
                  bge          s10, s6, 833f
                  bgeu         s6, tp, 851f
832:              srl          s7, tp, s7
833:              slt          t5, a1, t3
                  srl          tp, t5, ra
                  slli         s2, a0, 8
                  blt          a0, t5, 847f
                  nop
                  blt          s2, t2, 858f
                  or           a2, s4, a0
                  beq          s8, s2, 846f
                  andi         gp, a7, 2015
842:              ori          ra, s8, 555
                  slti         t1, s3, -1361
                  add          tp, a5, t4
                  andi         t1, s1, 1531
846:              slt          s1, gp, a1
847:              lui          sp, 171878
                  auipc        s10, 20636
                  xori         a6, a7, -868
                  slli         sp, s10, 5
851:              addi         t5, s1, 238
                  srli         t2, s7, 14
                  ori          a2, a5, 1787
                  or           s2, a5, s5
                  bltu         s10, s5, 871f
                  slti         s1, t5, -114
                  sra          ra, s9, a0
858:              and          s11, gp, t1
                  or           t4, t3, s2
                  xor          ra, s5, s10
                  bne          t6, t6, 862f
862:              or           t6, s0, s11
                  nop
                  sltiu        a1, a1, -395
                  slli         zero, s5, 21
                  or           s10, sp, s7
                  sltiu        ra, s9, 66
                  xor          s1, t5, a3
                  bltu         a0, t3, 876f
                  bge          s7, s1, 873f
871:              bge          t4, a5, 877f
                  srai         t6, a2, 6
873:              andi         s9, a2, -1212
                  xori         s11, s10, 1274
                  bne          a5, t0, 890f
876:              srai         s4, s7, 23
877:              srl          t5, s0, t2
                  srl          t6, s6, s7
                  bne          a7, s6, 899f
                  auipc        zero, 680222
                  slti         gp, t6, 1296
                  lui          s4, 921294
                  sltu         s2, sp, t6
                  sltiu        t5, s1, 1687
                  bne          t1, a1, 891f
                  bgeu         ra, t0, 898f
                  srai         s4, zero, 4
                  xori         tp, a3, 483
                  xor          a4, a3, s2
890:              slli         s1, sp, 7
891:              xor          a1, t1, s10
                  sltu         zero, s3, t3
                  sll          a1, t0, t6
                  srai         a7, t3, 25
                  slti         s7, zero, -1878
                  bne          a5, sp, 907f
                  sll          s2, t6, sp
898:              bgeu         zero, s8, 907f
899:              ori          a4, ra, 459
                  bne          a3, sp, 917f
                  srai         sp, gp, 20
                  sll          t6, tp, s9
                  srl          ra, t1, s6
                  sub          s8, a0, s4
                  auipc        t2, 772
                  xor          s0, a4, t5
907:              and          s10, sp, t1
                  bge          t0, s3, 928f
                  sub          s8, t0, s3
                  bge          s8, ra, 925f
                  ori          t1, t2, 2030
                  xori         a7, ra, 572
                  sra          gp, t3, s11
                  bltu         a2, t3, 930f
                  lui          s7, 436788
                  bge          s2, s10, 922f
917:              slli         s8, a7, 26
                  xor          s0, tp, s3
                  lui          a4, 187841
                  sra          s10, a3, s10
                  bltu         a3, t5, 941f
922:              sub          a6, a1, s1
                  sltiu        s0, tp, 1741
                  add          s10, t0, ra
925:              beq          s11, t2, 933f
                  sra          s7, s8, a7
                  lui          s0, 299206
928:              sltiu        t6, s3, -1871
                  srai         sp, s2, 29
930:              add          s10, zero, gp
                  auipc        a7, 958943
                  srli         t3, a5, 25
933:              sll          t1, t1, t5
                  lui          s0, 665397
                  xori         s10, s3, -1314
                  sll          t3, t4, a0
                  sra          s9, a1, t0
                  sub          a1, a5, s11
                  lui          s8, 1039376
                  add          s9, s8, t4
941:              lui          s3, 869272
                  bgeu         a5, sp, 955f
                  sra          tp, s10, t4
                  sra          t1, t4, zero
                  sra          s2, a0, s0
                  srl          s11, t3, a3
                  blt          s7, a2, 958f
                  add          s3, sp, sp
                  bltu         gp, t1, 955f
                  sll          s0, s9, a0
                  and          s2, a7, s6
                  auipc        a4, 252270
                  lui          a3, 935791
                  bne          a6, s6, 957f
955:              xori         a3, s10, -1652
                  bltu         a4, a4, 960f
957:              and          a1, a7, t6
958:              sltu         s4, t5, t2
                  sub          s0, a1, t1
960:              ori          s9, t6, 533
                  sra          s1, s10, t3
                  slt          t0, a5, t1
                  sra          t2, s10, t5
                  beq          s5, s0, 973f
                  add          t0, a1, s4
                  xor          ra, s11, s4
                  slt          a1, t4, s1
                  srai         s3, ra, 7
                  xori         t5, a4, 1214
                  sltu         a1, gp, a5
                  bge          t5, s11, 974f
                  bne          t6, s8, 974f
973:              andi         a1, ra, -57
974:              ori          sp, zero, 494
                  or           t5, a0, t3
                  auipc        s10, 279540
                  lw           s7, 4(s5)
                  slt          a1, a0, s2
                  or           s9, a0, t1
                  addi         s5, s5, 8
                  nop
                  auipc        s1, 124256
                  xori         ra, s10, -1006
                  xor          s0, a0, gp
1354:             addi x23, x23, 1
1354:             jalr x23, x23, 0
sub_2:            nop
                  bltu         a5, sp, sub_2_stack_p
                  slt          a6, t6, s8
sub_2_stack_p:    addi         s5, s5, -36
                  xor          s8, s2, s3
                  nop
                  sw           s7, 4(s5)
                  sltiu        s1, t5, 1650
                  lui          s2, 518071
                  sub          a4, s5, s8
                  and          a0, sp, a2
                  addi         s2, zero, 7 #init loop 1 counter
                  addi         s3, zero, -1 #init loop 1 limit
                  srai         ra, tp, 20
                  lui          a7, 820897
sub_2_7_1_t:      and          a3, a7, gp
                  and          s0, a6, a1
                  addi         s2, s2, -8 #update loop 1 counter
                  sltiu        s4, gp, 1258
                  slt          s8, s0, a5
                  slt          a6, a5, t0
                  addi         s7, zero, 10 #init loop 0 counter
                  add          t0, s4, s2
                  addi         a4, zero, -2 #init loop 0 limit
sub_2_7_0_t:      ori          a0, zero, -1025
                  sra          gp, a2, a0
                  addi         s7, s7, -4 #update loop 0 counter
                  sltiu        s1, a1, -482
                  bne          s7, a4, sub_2_7_0_t #branch for loop 0
                  addi         sp, s10, -1742
                  nop
                  xori         t3, t3, 1789
                  beq          s2, s3, sub_2_7_1_t #branch for loop 1
                  sltiu        t0, s3, 385
                  addi         a6, zero, -9 #init loop 0 counter
                  ori          s8, s4, 1497
                  sltu         ra, t2, a3
                  xori         a2, s4, 230
                  addi         s7, zero, 9 #init loop 0 limit
                  sltu         t6, s4, s4
                  sltu         s3, t1, a0
                  sll          a7, a1, s4
sub_2_2_0_t:      slti         s4, s1, 798
                  ori          t5, a5, 1837
                  andi         a4, t3, 1346
                  srli         t4, gp, 10
                  srl          a1, s0, s0
                  sltiu        ra, t2, -1288
                  addi         a6, a6, 10 #update loop 0 counter
                  addi         gp, a1, 1579
                  andi         a1, tp, 1132
                  xor          t0, t0, a7
                  auipc        s1, 723966
                  xor          s1, a1, s3
                  srli         t1, s7, 29
                  add          tp, s5, a2
                  bltu         a6, s7, sub_2_2_0_t #branch for loop 0
                  srl          s9, t3, t6
                  addi         a4, zero, -3 #init loop 1 counter
                  addi         s4, zero, 7 #init loop 1 limit
sub_2_3_1_t:      slt          a7, a7, s0
                  addi         a4, a4, 9 #update loop 1 counter
                  addi         ra, zero, -4 #init loop 0 counter
                  xori         t2, t5, 1838
                  addi         s0, zero, -5 #init loop 0 limit
sub_2_3_0_t:      or           s10, ra, t2
                  nop
                  addi         ra, ra, -7 #update loop 0 counter
                  bge          ra, s0, sub_2_3_0_t #branch for loop 0
                  bltu         a4, s4, sub_2_3_1_t #branch for loop 1
                  andi         t4, s3, 1594
                  addi         s11, zero, -8 #init loop 1 counter
                  srli         t0, tp, 12
                  addi         a6, zero, 4 #init loop 1 limit
                  andi         s10, t5, 1047
                  srli         tp, s2, 4
sub_2_4_1_t:      sltiu        s3, t0, 625
                  sra          s3, s10, s1
                  addi         s11, s11, 6 #update loop 1 counter
                  addi         t6, zero, -8 #init loop 0 counter
                  addi         a3, zero, 6 #init loop 0 limit
                  add          gp, a0, a0
sub_2_4_0_t:      slt          s9, s8, a5
                  addi         t6, t6, 7 #update loop 0 counter
                  lui          t4, 717896
                  bltu         t6, a3, sub_2_4_0_t #branch for loop 0
                  bne          s11, a6, sub_2_4_1_t #branch for loop 1
                  slt          gp, s9, a4
                  addi         s0, zero, -3 #init loop 0 counter
                  auipc        gp, 540378
                  ori          s7, a2, 1399
                  addi         s9, zero, -19 #init loop 0 limit
                  slli         s10, a2, 18
                  auipc        t0, 723790
                  add          a1, s11, t1
                  andi         t5, a5, 1065
                  or           t5, a2, a4
                  ori          a2, s4, 1456
                  addi         t2, s3, 571
sub_2_0_0_t:      slt          a4, t0, s4
                  sll          a7, t5, a1
                  slli         sp, a1, 0
                  addi         s0, s0, -6 #update loop 0 counter
                  auipc        s1, 678234
                  lui          t0, 63377
                  xor          a4, a1, s2
                  auipc        s10, 400057
                  bge          s0, s9, sub_2_0_0_t #branch for loop 0
                  lui          t1, 235253
                  addi         s11, zero, 9 #init loop 1 counter
                  sll          gp, s3, gp
                  sll          t0, s0, a3
                  add          s7, a2, s4
                  addi         s8, zero, 16 #init loop 1 limit
                  sltiu        sp, s1, -1295
sub_2_1_1_t:      xori         s4, s0, 1817
                  slti         s10, a4, -1077
                  addi         s11, s11, 8 #update loop 1 counter
                  sltu         s4, s3, t5
                  addi         tp, zero, 10 #init loop 0 counter
                  xori         s7, s7, -744
                  addi         a1, zero, 9 #init loop 0 limit
sub_2_1_0_t:      slt          t5, s3, a7
                  nop
                  addi         tp, tp, -7 #update loop 0 counter
                  bgeu         tp, a1, sub_2_1_0_t #branch for loop 0
                  xor          a6, a4, gp
                  slti         a3, s8, 1057
                  blt          s11, s8, sub_2_1_1_t #branch for loop 1
                  xori         gp, t6, 554
                  addi         s3, zero, 0 #init loop 0 counter
                  slt          s0, s0, t3
                  addi         s4, zero, -10 #init loop 0 limit
sub_2_5_0_t:      sub          a2, s6, s10
                  addi         s3, s3, -7 #update loop 0 counter
                  ori          a6, s5, 1454
                  sra          s0, s3, a7
                  sltiu        t6, a6, -522
                  sll          t4, s9, s2
                  ori          gp, ra, 1970
                  ori          a3, t3, 209
                  sll          s10, tp, t2
                  sltu         a4, s0, s8
                  bge          s3, s4, sub_2_5_0_t #branch for loop 0
                  sll          s11, s2, zero
                  addi         s1, zero, -1 #init loop 0 counter
                  srl          t4, tp, a4
                  addi         s3, zero, -3 #init loop 0 limit
sub_2_6_0_t:      andi         t1, t3, 943
                  addi         s1, s1, -5 #update loop 0 counter
                  sltiu        t1, t0, -724
                  slt          s2, s6, s11
                  bge          s1, s3, sub_2_6_0_t #branch for loop 0
                  ori          s11, s0, 1571
                  addi         a3, zero, -3 #init loop 1 counter
                  addi         ra, zero, 9 #init loop 1 limit
                  sra          a6, t2, a2
                  srl          s8, s8, t1
sub_2_8_1_t:      or           a2, s5, s4
                  addi         a3, a3, 4 #update loop 1 counter
                  and          s4, s2, gp
                  addi         gp, zero, 2 #init loop 0 counter
                  addi         sp, zero, -16 #init loop 0 limit
sub_2_8_0_t:      sltiu        a4, s4, 1080
                  andi         a1, a5, 1864
                  addi         gp, gp, -9 #update loop 0 counter
                  bge          gp, sp, sub_2_8_0_t #branch for loop 0
                  beq          a3, ra, sub_2_8_1_t #branch for loop 1
                  sltu         a4, s9, a6
                  srl          t0, s8, s8
                  sub          a2, s6, t0
                  slli         s3, s9, 24
                  slli         ra, t5, 15
                  lui          a1, 759563
                  slli         s1, a0, 2
                  bgeu         a1, zero, 19f
                  sll          a6, sp, a5
                  srai         s10, s0, 29
                  bltu         a5, s4, 29f
                  sltiu        t0, s9, -531
                  bne          a6, t6, 15f
                  srai         a4, a3, 6
                  xori         zero, s1, 111
                  srai         gp, a5, 21
15:               addi         s10, sp, -292
                  sltu         s1, s1, s6
                  ori          gp, s9, 63
                  andi         t3, a0, -1585
19:               auipc        s8, 525771
                  bne          t2, t0, 26f
                  addi         a1, a0, 2039
                  bne          t0, t4, 31f
                  srli         a1, a0, 12
                  srl          s4, a5, t3
                  add          t2, s2, s6
26:               slti         ra, a3, 1312
                  beq          a6, a4, 46f
                  srl          s2, a2, a5
29:               add          s10, s8, a3
                  sra          t5, t1, sp
31:               xori         s3, t2, -586
                  bltu         s6, s4, 52f
                  or           a6, a2, zero
                  beq          t1, s9, 42f
                  and          s1, ra, gp
                  addi         a3, a0, 208
                  bge          a0, s3, 41f
                  addi         t6, a5, 571
                  xori         tp, s6, -1034
                  ori          t3, sp, -965
41:               slti         a2, t0, -1425
42:               slti         t5, gp, 722
                  xor          t4, t0, s8
                  srai         sp, a7, 31
                  beq          s8, gp, 53f
46:               xor          t5, t4, ra
                  beq          s5, t5, 67f
                  auipc        a2, 464679
                  and          s7, s7, s8
                  blt          t4, a4, 54f
                  beq          a4, s8, 60f
52:               srl          tp, s3, s1
53:               addi         t1, a7, -1875
54:               auipc        t1, 557453
                  bgeu         s4, s5, 73f
                  srli         t2, gp, 2
                  or           t1, t0, s3
                  and          s11, a4, t4
                  sra          zero, t4, t2
60:               sub          s7, a4, ra
                  sra          s4, ra, s3
                  ori          a0, t6, -136
                  andi         t4, s8, 1720
                  nop
                  bgeu         t1, zero, 67f
                  slt          s8, s8, s1
67:               sltiu        a2, t0, -770
                  beq          s11, t0, 79f
                  addi         t4, sp, -124
                  sll          a3, a0, zero
                  bge          a7, s10, 75f
                  auipc        t4, 457001
73:               sub          t6, t2, a0
                  sll          s1, a3, a1
75:               srli         ra, a3, 10
                  lui          ra, 261109
                  xori         t6, t5, 863
                  sltiu        t3, s7, 821
79:               sll          t3, t5, tp
                  bltu         tp, t0, 83f
                  slt          ra, s8, s10
                  srli         s0, t0, 10
83:               sll          s2, t6, s6
                  bltu         ra, tp, 96f
                  ori          a0, t5, 1133
                  srl          s4, a0, ra
                  slti         zero, t6, 814
                  sub          s11, t3, s5
                  ori          t0, t2, -1399
                  bne          t2, t4, 95f
                  bltu         t6, sp, 94f
                  lui          s1, 545417
                  ori          s1, a3, 1723
94:               sub          t0, a2, zero
95:               or           a1, s1, t4
96:               or           a1, gp, t3
                  and          a7, s2, s1
                  slti         s8, a4, 1183
                  srl          s4, zero, s1
                  add          t6, zero, a5
                  srli         s4, t0, 28
                  nop
                  auipc        a7, 306105
                  blt          a6, s0, 115f
                  srai         a2, s7, 3
                  srli         s8, zero, 16
                  andi         s0, a4, -128
                  beq          zero, s6, 117f
                  and          tp, t2, s2
                  srai         a2, s9, 21
                  srli         s11, a0, 19
                  nop
                  andi         t5, gp, 1146
                  sltu         s3, s6, t0
115:              andi         ra, t5, 235
                  or           t4, t6, s6
117:              sltu         sp, s0, t5
                  ori          s3, s4, 2016
                  slti         t4, s10, 791
                  blt          t0, s1, 131f
                  beq          t1, a6, 134f
                  lui          a2, 908000
                  srai         t3, t0, 30
                  lui          s10, 135342
                  sub          t6, s7, s7
                  srl          a3, s3, s11
                  addi         sp, s5, 1474
                  sltu         s7, s1, t0
                  sub          a2, tp, s9
                  sltu         t0, s0, a2
131:              sll          s7, tp, s2
                  addi         s8, a3, 1815
                  bge          a4, a3, 137f
134:              sltu         t5, a5, t5
                  bgeu         t2, a0, 146f
                  srl          a3, t2, t5
137:              lui          tp, 870637
                  ori          a1, a1, -649
                  andi         a4, a6, -520
                  and          gp, a4, a7
                  sub          a7, a5, a0
                  lui          a1, 331581
                  bge          t6, tp, 155f
                  addi         s0, s11, 1289
                  sltu         a1, a5, s9
146:              addi         s9, t1, 1204
                  srai         a7, a3, 8
                  andi         a4, a1, -559
                  auipc        zero, 819950
                  slti         t1, a6, -1297
                  srl          ra, t0, s11
                  ori          s1, s10, 133
                  and          a3, s6, a3
                  xori         s1, a7, 1178
sub_2_j6:         jal          s7, sub_5 #jump sub_2 -> sub_5
                  or           s3, a1, t3
                  xor          s9, s8, a1
                  andi         tp, ra, -525
                  beq          gp, t3, 160f
                  sll          gp, a1, s2
                  addi         s8, s3, -740
                  or           t2, a0, a0
                  sra          zero, s7, sp
155:              and          s0, t5, sp
                  slli         s10, zero, 7
                  or           a0, s8, ra
                  and          t2, s3, ra
                  or           gp, a6, a7
160:              add          sp, t0, t6
                  bge          s3, s5, 176f
                  or           a6, tp, s0
                  srai         t3, t3, 25
                  sltiu        t3, ra, -757
                  srl          t4, a0, a0
                  srai         s11, t5, 10
                  srli         s7, s1, 1
                  lui          a2, 960235
                  lui          a1, 995252
                  andi         tp, a6, -913
                  and          s3, ra, t0
                  sltu         a6, s5, t4
                  sra          a4, a3, s1
                  slti         a3, t2, 805
                  slti         gp, s0, -1617
176:              nop
                  bge          t2, a1, 192f
                  sll          t6, s5, s1
                  andi         t3, gp, 1162
                  or           a2, s7, t3
                  bge          s7, s3, 185f
                  xor          s9, s9, tp
                  beq          sp, a7, 201f
                  sra          t0, a5, a1
185:              sll          t0, s8, s9
                  bgeu         s11, s1, 199f
                  addi         s7, t4, -221
                  or           t6, a3, s7
                  slti         gp, s9, -1098
                  or           s9, s5, s4
                  nop
192:              bge          s3, s9, 195f
                  sltiu        s1, t1, 299
                  sll          s7, s11, s4
195:              xor          s8, t6, tp
                  srai         t3, s1, 19
                  slti         sp, a5, -1581
                  andi         s7, t5, 2031
199:              sltu         s2, a2, t4
                  bne          t5, zero, 211f
201:              srli         s11, s0, 20
                  xori         s3, t3, 988
                  ori          s9, s4, -1840
                  sll          s7, s4, s1
                  add          t4, t0, s3
                  srai         t2, a2, 8
                  srai         gp, s3, 21
                  ori          a7, a3, 569
                  bgeu         t0, t0, 220f
                  bgeu         a5, a4, 222f
211:              sltu         s1, s8, a3
                  or           t4, a6, s4
                  slt          a2, a7, a3
                  bne          a2, t0, 216f
                  slt          a7, t2, tp
216:              srai         a7, tp, 18
                  srl          a0, s7, s8
                  or           t5, a3, t6
                  blt          s4, s9, 227f
220:              slti         a0, a2, 401
                  slt          tp, s3, a2
222:              bltu         s11, s9, 234f
                  bltu         tp, t1, 242f
                  slli         a0, a0, 31
                  sltu         s8, zero, a2
                  and          s3, s11, s4
227:              srli         s9, a1, 12
                  bge          t1, t2, 232f
                  srli         a3, t3, 5
                  and          s7, s6, a0
                  bge          s8, t5, 240f
232:              blt          t2, t2, 245f
                  or           s9, s0, tp
234:              or           a6, s7, s5
                  addi         t1, s6, -413
                  bne          zero, t4, 240f
                  bne          s8, a4, 243f
                  add          t6, t0, gp
                  sll          a1, a0, a4
240:              andi         a7, gp, 361
                  and          s2, t2, zero
242:              sll          gp, gp, t5
243:              ori          a3, gp, 1742
                  andi         a7, s1, 1384
245:              nop
                  slti         a6, s7, 55
                  bltu         a0, tp, 252f
                  slti         s3, s9, -230
                  xori         ra, sp, -1817
                  sltiu        s2, t3, -1497
                  and          t3, s3, a0
252:              slt          tp, s10, a4
                  auipc        s8, 810785
                  slli         gp, s9, 2
                  bne          s1, s4, 266f
                  bne          sp, s6, 264f
                  slti         zero, s5, -715
                  and          a2, t4, t6
                  and          t3, sp, s0
                  lui          s10, 443908
                  sll          t4, t1, s8
                  sub          a1, gp, t3
                  sll          zero, ra, s5
264:              srai         a0, s5, 28
                  beq          s8, s7, 274f
266:              addi         sp, a6, -848
                  add          t5, t5, s2
                  slli         t4, gp, 19
                  andi         t6, t1, -409
                  sll          s8, gp, zero
                  bgeu         gp, s11, 291f
                  xori         s1, s2, 72
                  bltu         s4, t4, 284f
274:              auipc        s3, 266174
                  slti         s0, s9, 1815
                  slt          a0, a6, t3
                  beq          a6, s2, 281f
                  sra          s3, a0, s3
                  slt          s7, t0, t4
                  add          s3, sp, a3
281:              srli         a3, s1, 30
                  andi         s4, s9, 546
                  and          s7, s9, s1
284:              andi         s9, sp, -1226
                  or           a0, sp, gp
                  auipc        a0, 461104
                  blt          s10, zero, 291f
                  and          a0, a7, s6
                  slt          s2, s4, a5
                  xori         a0, s4, -1453
291:              xori         a3, t6, -47
                  nop
                  sll          s9, t4, a4
                  sltiu        s11, a1, 756
                  bne          t5, a7, 298f
                  srli         s1, a3, 8
                  srli         a3, t2, 2
298:              blt          a5, a6, 318f
                  sub          s4, a2, a7
                  sub          gp, gp, a4
                  sub          t3, ra, s7
                  srai         t0, a1, 16
                  addi         a0, s3, -855
                  bne          t6, s4, 324f
                  lui          a1, 175098
                  auipc        ra, 39345
                  add          sp, a4, s8
                  bne          t1, t2, 317f
                  lui          s0, 173035
                  slti         tp, tp, 1748
                  slti         a1, s11, 592
                  sltu         t6, s5, ra
                  sub          s4, sp, t5
                  and          s2, a6, a0
                  bltu         s5, a0, 325f
                  srai         s4, s7, 12
317:              slt          t5, s6, s9
318:              slli         s8, s4, 10
                  blt          tp, t1, 330f
                  lui          s2, 973039
                  bge          ra, t2, 332f
                  srli         sp, a3, 6
                  blt          s2, a4, 331f
324:              srl          a7, t5, s5
325:              slt          ra, gp, gp
                  srli         s3, t0, 6
                  xori         s9, t0, -74
                  srli         a7, t3, 22
                  andi         a4, t3, -973
330:              sll          t2, a4, ra
331:              sub          s1, a5, t1
332:              and          a3, t5, a6
                  andi         t0, tp, -407
                  slli         s0, a5, 27
                  lui          t4, 283642
                  sra          t2, tp, t4
                  xor          a0, a7, gp
                  nop
                  srl          s7, s8, a5
                  nop
                  bltu         zero, a3, 350f
                  and          t5, s4, s2
                  sltiu        s1, s11, 99
                  beq          t3, s3, 347f
                  bltu         a4, zero, 365f
                  beq          s5, s6, 366f
347:              xori         t1, a7, -1791
                  bgeu         s7, a4, 361f
                  bne          sp, zero, 361f
350:              srl          s1, a0, s6
                  beq          a6, ra, 354f
                  blt          s10, t2, 365f
                  xor          ra, gp, ra
354:              andi         a0, ra, 1131
                  ori          s3, t6, 309
                  slli         s3, s10, 25
                  xori         s7, t4, -84
                  blt          s11, s5, 370f
                  and          s7, a6, sp
                  srli         s9, s11, 12
361:              or           s11, a1, a1
                  srli         sp, s5, 17
                  nop
                  bgeu         a6, a0, 379f
365:              slli         a4, s3, 1
366:              sltu         a4, a6, t6
                  beq          t4, zero, 376f
                  srli         ra, a3, 6
                  or           s10, t1, a5
370:              srai         s9, t5, 2
                  andi         s1, a5, -310
                  slt          s9, s7, a4
                  add          s8, s2, t3
                  slli         s4, zero, 15
                  and          t6, a7, s7
376:              lui          t6, 605957
                  add          sp, s5, t5
                  slti         a7, a4, 42
379:              beq          s5, s10, 399f
                  bgeu         t3, sp, 384f
                  srli         t3, t3, 20
                  srl          t6, tp, a0
                  xori         a2, a0, 1081
384:              blt          s7, a4, 395f
                  sltu         s1, s8, a3
                  lui          t4, 575749
                  bne          s9, t4, 391f
                  nop
                  sub          sp, s9, a2
                  nop
391:              beq          s4, s7, 401f
                  sltu         a3, a0, s6
                  slli         t4, s2, 14
                  addi         s7, s2, -1602
395:              and          t0, a7, s9
                  bne          t1, a0, 405f
                  add          tp, a4, s0
                  sll          s0, t2, t5
399:              or           t1, t1, t3
                  slti         gp, s2, 1447
401:              bgeu         s0, t5, 409f
                  addi         t1, a1, -564
                  blt          a1, t2, 408f
                  or           t2, a6, a1
405:              andi         s1, s6, 1328
                  andi         s0, gp, -1036
                  xori         a3, s3, 2031
408:              ori          s11, ra, 510
409:              xori         s3, t5, -398
                  xori         gp, a3, 1507
                  and          s8, t0, a5
                  add          tp, s5, t2
                  auipc        a1, 657097
                  nop
                  blt          tp, t5, 433f
                  slli         s11, a5, 28
                  and          s10, a0, a2
                  lui          zero, 139835
                  or           gp, ra, s1
                  sll          t3, a2, a5
                  and          a3, s8, t6
                  xor          a3, s8, sp
                  nop
                  ori          tp, gp, 55
                  sra          ra, t1, t1
                  lui          a1, 243015
                  srai         tp, a1, 15
                  srl          t6, s6, a7
                  andi         a7, a2, -220
                  slli         a6, sp, 26
                  bne          s3, gp, 433f
                  slt          tp, zero, s7
433:              xor          s2, zero, a5
                  and          s9, t1, a4
                  sltiu        s8, ra, -1264
                  auipc        a6, 594808
                  nop
                  sltu         t3, s8, t2
                  beq          tp, s5, 450f
                  srai         sp, zero, 1
                  slt          t1, s5, s6
                  srai         s3, a6, 25
                  bne          t1, s11, 447f
                  sub          s10, s8, gp
                  slli         t3, s4, 17
                  beq          t5, a6, 450f
447:              srai         ra, s1, 13
                  slli         s10, a3, 25
                  sub          s0, t4, s1
450:              xori         a6, sp, 604
                  sltu         s4, zero, t1
                  sltu         ra, a7, t4
                  blt          a3, t2, 472f
                  slli         t2, s11, 20
                  or           s8, t4, a1
                  sll          a3, s1, s0
                  srl          t0, a4, t1
                  sub          t4, s0, s5
                  add          t6, a0, s10
                  sub          tp, sp, s0
                  bge          ra, s0, 465f
                  nop
                  sltu         t0, t2, zero
                  nop
465:              add          t0, t5, t5
                  lui          s10, 14950
                  add          s1, t6, s1
                  bgeu         a4, a1, 474f
                  slt          a3, t0, s8
                  auipc        s10, 999072
                  sltiu        s4, a3, 176
472:              slli         s3, t4, 30
                  sltu         s3, s11, a2
474:              sltiu        a6, s6, -1479
                  xor          tp, t4, a1
                  blt          s2, s10, 479f
                  andi         s10, s11, 365
                  sub          ra, s6, a5
479:              add          s3, a1, t2
                  slt          a3, a1, t3
                  sltiu        a0, s11, 1818
                  lw           s7, 4(s5)
                  srl          a4, a3, a4
                  srli         t5, t6, 29
                  sltiu        a7, ra, -1821
                  slli         a0, t4, 19
                  addi         s5, s5, 36
                  lui          s9, 371095
                  and          ra, t0, s5
668:              addi x10, x23, 0
668:              jalr x10, x10, 0
sub_1:            sra          s11, s4, ra
                  addi         s5, s5, -56
                  add          a6, sp, t3
                  sltiu        s1, t4, -1759
                  sw           s7, 4(s5)
                  xor          s4, t4, gp
                  ori          a3, t6, 1778
                  beq          t2, a1, sub_1_j3 #branch to jump instr
                  slli         s1, s10, 1
                  slli         a2, a7, 26
                  slt          s11, s1, a5
                  srai         sp, t5, 26
                  lui          a1, 98089
                  slt          s0, s3, a3
                  sra          t4, t5, s4
                  slt          ra, t5, s11
sub_1_j3:         jal          s7, sub_2 #jump sub_1 -> sub_2
                  srli         a2, t1, 11
                  lui          s7, 421437
                  blt          gp, t2, sub_1_j4 #branch to jump instr
                  or           s11, a0, s8
                  slti         t3, s8, -1245
                  slt          t5, t0, s4
                  nop
                  sra          sp, a5, tp
                  and          t0, a7, s2
                  or           s2, s3, s6
sub_1_j4:         jal          s7, sub_3 #jump sub_1 -> sub_3
                  srl          sp, s9, a7
                  srli         a1, a5, 26
                  xor          ra, t2, zero
                  lui          t6, 88659
                  sll          t1, s11, s8
                  slti         t0, sp, -1341
                  la           s0, sub_4
                  addi         s0, s0, -857
                  ori          s7, t5, 209
                  bltu         tp, s2, sub_1_j5 #branch to jump instr
                  srl          s3, t0, s6
                  xor          t4, ra, s3
sub_1_j5:         jalr         s7, s0, 858 #jump sub_1 -> sub_4
                  and          a2, t5, s7
                  add          t3, s10, t0
                  bge          s6, t5, 10f
                  xor          tp, t6, s11
                  bge          t3, s8, 6f
                  ori          t5, a1, 834
6:                addi         ra, tp, 241
                  nop
                  xori         s3, a2, -1516
                  add          s0, t0, a2
10:               srl          s0, ra, s0
                  xor          t5, s7, a4
                  ori          s4, s2, -337
                  lw           s7, 4(s5)
                  sub          t2, a3, tp
                  slti         s0, gp, 1035
                  andi         a6, s10, 1452
                  sltiu        a6, t0, 347
                  addi         s5, s5, 56
                  auipc        s11, 1030674
                  sltu         s0, t2, t2
62:               addi x5, x23, 1
62:               jalr x5, x5, 0
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
.word 0xffe1cd3f, 0x048ff2d1, 0xe7b2a84f, 0xcbc99145, 0xc362a035, 0x38de2411, 0xa414e38e, 0xe682dade
.word 0xdad17a7f, 0xdcbaf74b, 0x8f585da4, 0xab5c89cd, 0x06fd78ae, 0x6d9ff6d3, 0x67c99c2f, 0xa4e6b6c1
.word 0xc0f08329, 0xfc47cbb4, 0x7a9b2c4c, 0x9bb08872, 0x4634fbbc, 0x8ab5c4e3, 0x06c040dd, 0x19cfa234
.word 0x5de7f327, 0x99f3b169, 0x6e4b2a89, 0x136d37e8, 0xa0308e67, 0x58dc11b6, 0x4b0be3f9, 0x38a8ed81
.word 0x0f7611ca, 0xa523b83b, 0x16fd086a, 0x80e36738, 0x62d865ff, 0x8d833150, 0x4d26eb5a, 0xc9910a97
.word 0x46752aa3, 0x7139ac27, 0x3a73be5d, 0x9fe9fc3e, 0x60916ac5, 0xb249e95f, 0x14c8ffc2, 0x86aaf680
.word 0x76cef3d7, 0x41bf0fc7, 0x1ab78b7e, 0x46087f3b, 0x4322ab2f, 0x6f600c20, 0xf15cfb8f, 0x55612cb2
.word 0xa0810b9c, 0x05d7ed30, 0xb769b2be, 0x399005a6, 0x542256d3, 0x31ae6803, 0xaee44de0, 0xe7e8072b
.word 0x79de48c5, 0x761fbf58, 0xb3d13e5a, 0xbdc66f59, 0x9014c313, 0x1e48561b, 0xbcfda4be, 0x398e8ea9
.word 0xade7007a, 0x767c9786, 0xaeebe7af, 0x9f4b0114, 0x65fcfe0f, 0x95605032, 0x01c905ff, 0x7a6cff5d
.word 0x646ad936, 0xe5dff37c, 0xdb735942, 0x45cf4e88, 0xbb25e9a6, 0x6423c12d, 0x7099a35a, 0x42027dc7
.word 0xb82b3b2c, 0x1f6ce011, 0x4b659589, 0xa88e96c2, 0x382e29bf, 0xd0dbd1a4, 0x1a3e1808, 0xf6c65b95
.word 0x23d99e2e, 0xd3bdce6d, 0x168c129b, 0x7dd13062, 0x7b90c622, 0x6af2a4b3, 0x17e04056, 0x97e55f39
.word 0x15591c11, 0x39b1370b, 0x1b757a62, 0x6489ad1f, 0x084e6a65, 0xf59affb9, 0xffe87aa1, 0x9bedf399
.word 0xfeb175c3, 0x8b63dbae, 0x640147fb, 0x77c7e8b8, 0x96c5c6c9, 0xa1e596e7, 0xec5e0564, 0x7e8de819
.word 0x896561a8, 0xeafb2062, 0xaa768976, 0x5264d6f1, 0x6dd97101, 0xc0d9c645, 0x9eeb2610, 0xac70f9ab
.word 0xf843de23, 0x4d61ee44, 0x5337047f, 0x5bb76c28, 0xf2389935, 0xc2f40cec, 0xabf0bcf3, 0xc7631a75
.word 0xb3c1183f, 0x280dcd0c, 0x595df706, 0x97974c06, 0x9a55ebdf, 0x98fa7b2a, 0xa7b38111, 0x9f5065a7
.word 0xc56ede7f, 0x0617da75, 0x1e860cc4, 0xa7731210, 0x9a44f133, 0x98e4c214, 0x879869f5, 0x97341f3d
.word 0x25c361d2, 0x9813a3fe, 0xbe747a88, 0x5f2757bd, 0xe28310f0, 0x843e46d1, 0x21a64ccd, 0x86da4f52
.word 0x66b33dba, 0x3378a464, 0x2166e44e, 0xdb7f8c50, 0x98113279, 0x1e4d9c37, 0x665f36ab, 0x449bb6a3
.word 0x60f17b97, 0xd6bcc22c, 0x71d58a1d, 0x8228e2c6, 0x0d7f54ef, 0x962f517b, 0x12adce61, 0xcab8cd40
.word 0xeb01be9f, 0x6678364f, 0xcdb4cd76, 0x11b1ea52, 0x33145c75, 0xfabf8908, 0x2514ed93, 0xa369927b
.word 0xbdd1f436, 0x27f0be21, 0x03dd81a5, 0x4f97984b, 0xf5ca7169, 0x19f259ee, 0x7c985239, 0x144b4ee6
.word 0x63cd37d2, 0x7b2fa5bb, 0x2286c119, 0x29d68564, 0x833582a6, 0x9a5e0f70, 0x615ccaea, 0x3f37a7e1
.word 0x191b1b11, 0xda160406, 0xd6f0d51f, 0x9b04db0f, 0x22ad2c0b, 0x07d0c20c, 0x869778de, 0xd2391754
.word 0x42fcce59, 0xdc2ed84f, 0xe0376d00, 0x042c65bf, 0xb8754fd7, 0x6afe6a5e, 0x9778e84e, 0x3305b82a
.word 0x8d51e913, 0xcd235cfb, 0x1cb1bab1, 0x6db92766, 0x770f8bb2, 0x4ce42213, 0x63574456, 0x78d1982a
.word 0x851f3c90, 0xd07776d4, 0xb0fcf8c9, 0x97889ad7, 0x0d4d714a, 0x8cfe8940, 0x5f0f9634, 0x974f422a
.word 0x205d4bd0, 0xa6a28c50, 0x8a7f8550, 0xbcca5537, 0x7337d729, 0xec980a8a, 0x4d473f59, 0xb4a6d1cf
.word 0xc0e62c44, 0x421bdf73, 0x299c0310, 0x3958c8e0, 0xf772cc7c, 0xe683f871, 0x89476c51, 0x912fad89
.word 0x2e190ab1, 0xfe50848c, 0x45e8266e, 0x274ed8cf, 0x0577f75f, 0x764335c2, 0x784ada72, 0xa156e3b5
.word 0xf06bd6e9, 0x2054cef0, 0x4691c791, 0xcc347e4a, 0xe488d291, 0xd9a72a79, 0x2095c5b2, 0x577d3bf8
.word 0x96f065ea, 0x8080aa59, 0xaaa849a1, 0x2379456c, 0x11933cfe, 0xadeda2ba, 0x705d4374, 0x9263c90e
.word 0xfad09bb4, 0x74c72d8e, 0x3d489f1f, 0x6d734c6e, 0x7daed52f, 0x02444f56, 0xd1a67b01, 0x01926258
.word 0x64892592, 0xa76ba154, 0xe8a92b9c, 0xd500dd3d, 0x0742abbf, 0x6ca63a5d, 0x0fc955bd, 0xff466f1d
.word 0x16c79ff6, 0x342d67f6, 0x4e7af1c3, 0xaa3ab556, 0xb50a00c2, 0x793c7d9d, 0xbf89950d, 0x24f2b1c9
.word 0x59885f77, 0xe7b7807e, 0x8d887da6, 0xf704708b, 0x3c60ec4f, 0xb23cf903, 0x8866531c, 0x6185ce06
.word 0x0911ecb7, 0x54de8880, 0x05145edf, 0x833e1b62, 0x80962007, 0xb6418ef4, 0x411b8c24, 0x2c890621
.word 0xd41be937, 0xadad46dd, 0x9e2d94a5, 0x9d82e0c7, 0xb258e0d7, 0x5bd2ea47, 0xde66d69d, 0xc458c85f
.word 0x074fa04e, 0x8363b4f7, 0xf33b4e53, 0xa0cc1d43, 0x5b33855e, 0xc6500309, 0x18aaa8f6, 0x86c74e1c
.word 0xedd2c836, 0x8cc5b222, 0x35353958, 0xbcfcf8a0, 0x014c2ecd, 0x11b92234, 0x34302d66, 0xc3093f83
.word 0x99901b30, 0xe7418e40, 0x28553b06, 0xa4509726, 0x87be0299, 0xa8ba1c2b, 0x05bf091e, 0x5a7b9d74
.word 0x4ccfe3b3, 0x9b8daca1, 0xc7fcf112, 0xc585b70c, 0xf43c963a, 0xe19568e8, 0x523bc795, 0x57cec01f
.word 0x6fcf10f6, 0x14fcc5b2, 0x34ee3dcd, 0x852a73bb, 0x7d8f23a0, 0x42936890, 0x8f2a7587, 0x4eb7c27f
.word 0xfaab54f8, 0x248f2573, 0x688b68a3, 0x01ae4b37, 0x2dcf47fb, 0x8dc89401, 0x58043ff5, 0x563731a2
.word 0xeacf9b83, 0x2dd835e7, 0x27e0345f, 0xa24395ca, 0x49eefc37, 0xe185a877, 0x0599858b, 0x80328ca2
.word 0x6c7bfcf2, 0x74882e8f, 0xd0113bfa, 0x8a756cf9, 0x592fd96f, 0xd0882f4b, 0xb0a9e513, 0x155dcc33
.word 0x9acab016, 0x38344f19, 0x1f4eabf0, 0x5e53eac0, 0xed99742f, 0xc1d078c9, 0x83aee753, 0xd441cd79
.word 0xcc4d4feb, 0x3a1a4521, 0xf283b884, 0x2e5dfcbf, 0xe6a9a8d3, 0x47854ba4, 0xc717d262, 0x3bbec12f
.word 0xafcb6ed4, 0x463bd548, 0xc101e724, 0x00d8f76a, 0x6e69dbbe, 0xf6ea633c, 0xc4dbb964, 0xfd2c32f6
.word 0x323e678f, 0xabc9ba34, 0x90883417, 0x15fbe273, 0x74f66b2a, 0x76fb6ade, 0xad3a56a0, 0x84104d2c
.word 0x1584c789, 0x56c959f0, 0xe87fbc72, 0xd84b8da4, 0xd0214910, 0x1a49aeec, 0x4088da3b, 0x9e1115b7
.word 0x4339e817, 0x5c72f205, 0xec1bd843, 0xe725248c, 0xcdb74be3, 0x3888e34b, 0x3b2c43ef, 0x05905c62
.word 0x424cc81c, 0x2489e9bf, 0xa04857bf, 0x5e9881cf, 0x274c8a3b, 0x351f0ab4, 0xf945e166, 0x9577f2d9
.word 0xebb8c080, 0x2fab1f09, 0x8bc6c541, 0x9572cf37, 0x5f9e4b9c, 0x8df480d9, 0x9adc445d, 0x3dbbd4e2
.word 0xe01f5a1c, 0xee348d37, 0x7a70bc25, 0xaa37a131, 0x3fc46f0a, 0x9d89dd7f, 0x7df59b18, 0x1fa830bf
.word 0xc182d28c, 0xd79da470, 0x5c6df79c, 0xf6fc604d, 0x504bed34, 0x39b25d8f, 0x81dcc612, 0xb84ee46c
.word 0xa5ce2ca1, 0x72911b0d, 0x991f4e2b, 0xd16afc71, 0xce0715d6, 0xb9a2528c, 0x95c025c1, 0xbef8e169
.word 0x8074eaac, 0x9ac2cfa9, 0xcb2a24bf, 0xcd273e03, 0x89e7a29e, 0x6ed1bdbc, 0x42fca1b5, 0x4f368b7c
.word 0x4702c7b1, 0x02348f33, 0xe1510cd4, 0x0d8d36fc, 0x03e9f9a6, 0x03a19055, 0x20719be1, 0xa433869a
.word 0x9834585e, 0x2c23171a, 0x810490d6, 0x58091ad6, 0xf08897f1, 0xf4ebeeaa, 0x28e6a82f, 0xb1656952
.word 0xaeba93a5, 0x8111d102, 0x9983ee51, 0xfd1001d3
.section .region_1,"aw",@progbits;
region_1:
.word 0x7270002a, 0xc5ac8e1f, 0x4738e9bd, 0x6916377c, 0x5ce5318e, 0x291d36b1, 0x65853f67, 0xefddd803
.word 0x5037d96e, 0x5bd68249, 0xeac8b33f, 0x95084c9a, 0xb95fda47, 0xe9fa2dc7, 0xd17ce678, 0x6ab95cc6
.word 0x5a48d89b, 0x0cfe3c2c, 0xeab7ced9, 0xe5525f21, 0x72de7ac6, 0x77e39d96, 0x0b9ae88e, 0x6f9cdacd
.word 0x178280f6, 0x807fb2f3, 0x378f89d2, 0xb3c26f67, 0x5b701e3f, 0x3ada4028, 0xa68d4e29, 0x8fa5901c
.word 0x19b1cfc3, 0x71020001, 0x831614ee, 0xee8867d9, 0x72994c6e, 0xad68b184, 0x739d056d, 0xd7033d3a
.word 0xe81ed47b, 0x070a0548, 0xee67733f, 0xc3d02bb3, 0x81a3ffcd, 0x6c8b87f7, 0xfd3e0e9c, 0x2b0a87b0
.word 0x391fa482, 0xb1b1e801, 0x9952506c, 0x724670d8, 0xf01367fa, 0x3b4e2e32, 0xbb2fd49a, 0xaf8fec84
.word 0x58d9482e, 0xfe74b705, 0x519fe218, 0xa11ac701, 0x0f007645, 0x98467f74, 0x310642d5, 0x657e59b3
.word 0xbc063b67, 0x00bb5794, 0x435a64e8, 0x6dcb48fd, 0xf8f6704f, 0x55e98aec, 0x0db9fdda, 0x322b2a4d
.word 0x0e42ec4f, 0x0d48225a, 0x09f21a99, 0xd780dcd6, 0x705fdc6e, 0xa018c766, 0x275edfc8, 0x87d95054
.word 0x4ec48891, 0x3f51895e, 0xea1c6bfe, 0x7eaab9c4, 0xe00daa41, 0x5a9c36e8, 0x193039fc, 0xae5a3931
.word 0x95324f66, 0x9142c059, 0x79a7599a, 0xddf5a9d2, 0x91fee190, 0xdf809867, 0x3c7561a5, 0x3bd624eb
.word 0x17248abf, 0xe89408a6, 0x85825368, 0x3dc1152c, 0x842022e3, 0xde331186, 0x04148867, 0x8b6f4562
.word 0x96e7ef1e, 0xe0a9c8fa, 0x39752739, 0xe00a0337, 0x0f537dc2, 0xebb2569f, 0x849924b2, 0xa0911c19
.word 0xaca7f417, 0x7c88f138, 0x8ce65764, 0x4b950dca, 0x7f727c6c, 0x4bfd384d, 0xf20f50c1, 0xf43bdb79
.word 0xdbaf13f6, 0x4a51376c, 0xab04f792, 0x683b000e, 0xf74c0af0, 0x1f3ac19f, 0x8a7a171d, 0x051abb5e
.word 0x70b2c453, 0x8e62a55a, 0x94585596, 0xf5f7ab12, 0xe7220267, 0x592bad4c, 0xa539ba73, 0xa9f53301
.word 0x707229e7, 0x5a89ee96, 0x4bb5d74c, 0xca9a5693, 0xdd1aeac8, 0xf7ba5a7d, 0xc5c5aae4, 0x970c4e5f
.word 0x4b08a31f, 0x89a5eaa2, 0x3a204cbd, 0xad332422, 0x188c27d4, 0xfa4ad940, 0x9307e363, 0xb37c4b1b
.word 0x9a2e6200, 0x46e44e0e, 0x47b88a5f, 0x1a6381d3, 0x2a967d7b, 0x54c01ecc, 0xb2fc7c55, 0xf0f69ef2
.word 0x156a44b4, 0xd5c0b027, 0x3aa5c744, 0x48f7049a, 0xd9854ac0, 0x15bb135b, 0x4757bcdc, 0x31fd56ae
.word 0x0b108de4, 0x690e1335, 0x4627e2ef, 0x277f1890, 0x1d74224d, 0xe3fc12b4, 0xa28b055e, 0x8a07d368
.word 0x0727b906, 0x2075984f, 0x46203028, 0x8cdca3e3, 0xf159e939, 0xd0df1a25, 0x4602da3e, 0xeab048a7
.word 0x861aadb0, 0x801e9412, 0xe09237e0, 0x58b8d10b, 0xec64da04, 0x16516a54, 0x673cd943, 0x859e6adc
.word 0x8d55f332, 0x26d68cc0, 0xf525a544, 0x47f49c1d, 0xde09fd4e, 0xdba30756, 0xe951165c, 0xff05f21d
.word 0x03b34b0e, 0xb9c78e66, 0x5dacef34, 0x24d25e15, 0x640345fc, 0x56be1353, 0x1cfa0749, 0x659566c9
.word 0x08742fb1, 0x2a454fef, 0x40ceb4d3, 0x282959fb, 0xf42f650e, 0x53e4369d, 0x198b0b2b, 0x9a82646e
.word 0x1a83edf8, 0xaa03d548, 0x6d8f46b1, 0x950a825d, 0x2942bdcd, 0x450d6576, 0x882d8743, 0x6f701842
.word 0xa706197d, 0x3047e7d0, 0xb8368742, 0xc5715c1e, 0xf42f9343, 0x51e54eef, 0xb313a496, 0xf80a5356
.word 0x0aa31d74, 0xceb67f8d, 0x88218893, 0xfc3f224b, 0x1beb1383, 0xb07ca8a1, 0xc54a0c34, 0xf9cccd4f
.word 0xe7781b83, 0xe81f8e09, 0xa363ed57, 0x2cd33b10, 0xd591725a, 0xa4f4243c, 0xf7dd267f, 0x8b948e7f
.word 0xcc1c9936, 0x4804526d, 0x7bce9872, 0x6cb9394d, 0x913b9736, 0xd49868d5, 0xb28d54c0, 0xdc46c805
.word 0x517361bd, 0x1756b919, 0xcd1506c9, 0x7c1fdd96, 0xbf4e44ee, 0x4ee56541, 0xdbcc65c5, 0x13ac5227
.word 0xd9df9d13, 0x87347205, 0x2a469042, 0xd384e11b, 0x37fc4154, 0x59926b3b, 0x3a486bc4, 0x6dfb1ebe
.word 0xe614a97b, 0x07aa2da5, 0x80d57258, 0x9b5d8522, 0xc9a91789, 0x5f7d2868, 0x99eacabf, 0x22ba0017
.word 0x70e6a204, 0x381ac688, 0x28cb5c28, 0xa404d50a, 0xd060330a, 0x74104f22, 0xe888d7f8, 0xe95b17f6
.word 0x1ea9b71e, 0x6af31e8e, 0xc7a199c1, 0x7054cf5d, 0x09d82ede, 0x4443874a, 0x8aad0f5a, 0x485b81ff
.word 0xdf49e9a4, 0xa909115d, 0x9c5ed86b, 0x7d022872, 0x9e72dcbd, 0x8481c777, 0xbfbcf8e7, 0x22418e62
.word 0xc3083b22, 0x481a5f5a, 0x1035592b, 0x595978cb, 0xbc526b0b, 0x720c0804, 0x286bdf54, 0x210a3b0a
.word 0x51fa017a, 0xf019574b, 0xe3c79467, 0x46dc3226, 0xfaf593cc, 0x8ad0e45a, 0x5c697e0e, 0xc4f6b6f2
.word 0x4df1e5d3, 0x155bf669, 0xbd37388f, 0x205239fd, 0x217ac02a, 0x7bbafe5d, 0x6297f811, 0x5026c164
.word 0xf4cd5925, 0xb4c7762f, 0x130f6538, 0x05d1b5a5, 0xdbfc29d3, 0x54e58f40, 0xe7f5eea6, 0xe5ebef06
.word 0x4ceeb115, 0xdb33b978, 0x59380a99, 0xdeb94224, 0x7eeac8f1, 0x3cfd7583, 0x0ee0b5c5, 0xe8483a1c
.word 0x7aa45e83, 0xa13da42e, 0x401d6302, 0xd9906710, 0xcb3c8c87, 0x208a68ac, 0x2195df5e, 0xac9936d6
.word 0xcd7feb40, 0x5bd23409, 0x63809108, 0xf16068fb, 0xce2f60a9, 0xa4bb9896, 0xecffc040, 0xec9290c0
.word 0x0cb21e6c, 0x3f5518e6, 0xcffa4b6f, 0xf55dbe0f, 0x4ebe2678, 0x92f2a6e4, 0x9938147a, 0x959cc76e
.word 0xa01e6987, 0x6f31f0d1, 0x577bd3ac, 0x7130fbdf, 0xeb326392, 0x91c966c0, 0xb4c16101, 0x38de505c
.word 0x2933f3c2, 0x9c0c1422, 0x612ba1fd, 0x3e29e9e5, 0xec542535, 0x75db03d1, 0xeb1a6f19, 0x04dab4fc
.word 0xb622ad2e, 0xcd55c6f0, 0x910c8a1d, 0x12a7fc96, 0xe0bcf80b, 0xa7bc245c, 0x036cab98, 0x36fecad4
.word 0x27ed6fa8, 0x6ec94870, 0xd4e8d341, 0xb9845493, 0x7ef886c6, 0xdbbaa53d, 0x5819bcad, 0x60315706
.word 0x238d3c31, 0xeafe83a8, 0x8fab3799, 0xbd94a0db, 0xdaeca16e, 0xda913d51, 0xa8729606, 0x8e5a7bc7
.word 0xc2113d4e, 0x84026380, 0xbb35108f, 0x1c9f6bed, 0x397a4e07, 0xec6b5eae, 0x3f5f94f8, 0x4110063d
.word 0x70fef3a1, 0xf7ba9a95, 0xeedfbcd8, 0xeda9687a, 0xa2a3d0af, 0xbc488395, 0xff29408a, 0x3752d6d3
.word 0x82d37257, 0x472785ea, 0x6e45f89f, 0x19406c10, 0x71603272, 0x32c454b0, 0xd10d1341, 0x593a534e
.word 0xb4dd0054, 0x3817eaf4, 0xec7e8cdb, 0xc0cd6b08, 0x034a064b, 0xd6dfdf78, 0xe91f56b7, 0x604fab03
.word 0x7ff9d95a, 0x82f7fe8f, 0x32b1aea8, 0xee9cbc4c, 0x0ee70f28, 0xfcbd1e55, 0x993f737c, 0xcbd9711b
.word 0x1ae0f580, 0xb74379f3, 0xfadf9989, 0x868551d7, 0x6200a38a, 0x96ea103c, 0xc0637261, 0x63840918
.word 0x8d85ee92, 0x26d83b02, 0x2bc8fa36, 0x79f6e650, 0x6000a949, 0x511d8ebc, 0xd6856f93, 0xf22805c7
.word 0x8eb3d2cb, 0x52b9da03, 0x456b9e3e, 0xe3f8182c, 0xfba619b8, 0xbf3c1c4a, 0x3d5bb9c6, 0xb12bcd73
.word 0xb1196310, 0x5bea1b5b, 0xfbcbe1bd, 0x663f31db, 0xfa2db0d7, 0x2dd3bda1, 0xd243ec4b, 0x27586ddf
.word 0x87ff2595, 0xf226b9c6, 0x45de7d90, 0x509b200a, 0x9998cdce, 0xaf8f5e62, 0xefb56040, 0x7b7e6aba
.word 0x04e9ab59, 0xd59ea047, 0x5d690cc4, 0xd04f1489, 0x2210899f, 0xd4ceaef1, 0x4750a763, 0x96475844
.word 0xd6bafc5e, 0x2f00ec03, 0x29d13f2c, 0xa915e16c
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
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x15, x21, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_2:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x15, x21, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_3:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x15, x21, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_4:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x15, x21, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_5:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x15, x21, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_6:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x15, x21, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_7:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x15, x21, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_8:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x15, x21, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_9:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x15, x21, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_10:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x15, x21, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_11:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x15, x21, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_12:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x15, x21, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_13:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x15, x21, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_14:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x15, x21, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_15:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x15, x21, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

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
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x15, x21, zero
                  csrr x9, 0x341 # MEPC
                  csrr x9, 0x342 # MCAUSE
                  li x8, 0x3 # BREAKPOINT
                  beq x9, x8, ebreak_handler
                  li x8, 0x8 # ECALL_UMODE
                  beq x9, x8, ecall_handler
                  li x8, 0x9 # ECALL_SMODE
                  beq x9, x8, ecall_handler
                  li x8, 0xb # ECALL_MMODE
                  beq x9, x8, ecall_handler
                  li x8, 0x1
                  beq x9, x8, instr_fault_handler
                  li x8, 0x5
                  beq x9, x8, load_fault_handler
                  li x8, 0x7
                  beq x9, x8, store_fault_handler
                  li x8, 0xc
                  beq x9, x8, pt_fault_handler
                  li x8, 0xd
                  beq x9, x8, pt_fault_handler
                  li x8, 0xf
                  beq x9, x8, pt_fault_handler
                  li x8, 0x2 # ILLEGAL_INSTRUCTION
                  beq x9, x8, illegal_instr_handler
                  csrr x8, 0x343 # MTVAL
                  1: la x22, test_done
                  jalr x1, x22, 0

ecall_handler:    
                  la x9, _start
                  sw x0, 0(x9)
                  sw x1, 4(x9)
                  sw x2, 8(x9)
                  sw x3, 12(x9)
                  sw x4, 16(x9)
                  sw x5, 20(x9)
                  sw x6, 24(x9)
                  sw x7, 28(x9)
                  sw x8, 32(x9)
                  sw x9, 36(x9)
                  sw x10, 40(x9)
                  sw x11, 44(x9)
                  sw x12, 48(x9)
                  sw x13, 52(x9)
                  sw x14, 56(x9)
                  sw x15, 60(x9)
                  sw x16, 64(x9)
                  sw x17, 68(x9)
                  sw x18, 72(x9)
                  sw x19, 76(x9)
                  sw x20, 80(x9)
                  sw x21, 84(x9)
                  sw x22, 88(x9)
                  sw x23, 92(x9)
                  sw x24, 96(x9)
                  sw x25, 100(x9)
                  sw x26, 104(x9)
                  sw x27, 108(x9)
                  sw x28, 112(x9)
                  sw x29, 116(x9)
                  sw x30, 120(x9)
                  sw x31, 124(x9)
                  la x22, write_tohost
                  jalr x0, x22, 0

instr_fault_handler:
                  add x21, x15, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

load_fault_handler:
                  add x21, x15, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

store_fault_handler:
                  add x21, x15, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

ebreak_handler:   
                  csrr  x9, 0x341
                  addi  x9, x9, 4
                  csrw  0x341, x9
                  add x21, x15, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

illegal_instr_handler:
                  csrr  x9, 0x341
                  addi  x9, x9, 4
                  csrw  0x341, x9
                  add x21, x15, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x9, 0x300 # MSTATUS;
                  csrr  x9, 0x304 # MIE;
                  csrr  x9, 0x344 # MIP;
                  csrrc x9, 0x344, x9 # MIP;
                  add x21, x15, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
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
