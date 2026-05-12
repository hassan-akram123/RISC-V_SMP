.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x16, h0_start
jalr x0, x16, 0
h0_start:
                  li x26, 0x40000100
                  csrw 0x301, x26
kernel_sp:        
                  la x17, kernel_stack_end

trap_vec_init:    
                  la x26, mtvec_handler
                  ori x26, x26, 0
                  csrw 0x305, x26 # MTVEC

mepc_setup:       
                  la x26, init
                  csrw 0x341, x26

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x26, 0x1800
                  csrw 0x300, x26 # MSTATUS
                  mret
init:             
                  li x0, 0xb189ef27
                  li x1, 0xfda68536
                  li x2, 0xa9a8ec66
                  li x3, 0x80000000
                  li x4, 0x756bb8ff
                  li x5, 0xf6278e63
                  li x6, 0x80000000
                  li x7, 0x0
                  li x8, 0xdb5de23d
                  li x9, 0xc
                  li x10, 0x90599809
                  li x11, 0x20ac596f
                  li x12, 0xfd42deb7
                  li x14, 0xc7d731b2
                  li x15, 0x1d03e171
                  li x16, 0x0
                  li x18, 0x0
                  li x19, 0x0
                  li x20, 0x80000000
                  li x21, 0xfbe3c74d
                  li x22, 0xc199120b
                  li x23, 0x0
                  li x24, 0xc10881c8
                  li x25, 0x0
                  li x26, 0x7
                  li x27, 0xcea8ac4f
                  li x28, 0x80000000
                  li x29, 0x0
                  li x30, 0x39aa9080
                  li x31, 0x80000000
                  la x13, user_stack_end
main:             la           t5, sub_1
                  sub          s4, gp, s5
                  nop
                  addi         t5, t5, 611
                  addi         s10, a7, -1200
                  sltiu        s10, s11, -1985
                  slt          a2, s8, a3
main_j2:          jalr         s4, t5, -611 #jump main -> sub_1
                  addi         a4, zero, 9 #init loop 1 counter
                  auipc        t1, 795686
                  addi         tp, zero, 9 #init loop 1 limit
                  add          gp, a4, a4
main_1_1_t:       and          t5, t4, s4
                  sub          s3, a7, s8
                  ori          s5, a1, 124
                  sll          s9, t6, s9
                  ori          t2, t3, -1523
                  addi         a4, a4, -7 #update loop 1 counter
                  addi         t6, zero, 0 #init loop 0 counter
                  andi         s8, t6, -1742
                  addi         s7, zero, 12 #init loop 0 limit
                  sll          ra, t1, a0
                  or           t3, s10, s4
                  auipc        t0, 735553
                  sub          t4, s2, s3
                  addi         t2, s5, -228
main_1_0_t:       ori          gp, s1, -1418
                  slt          ra, a7, a3
                  addi         t6, t6, 9 #update loop 0 counter
                  slli         zero, s9, 29
                  and          s6, ra, zero
                  or           t0, t4, s5
                  bltu         t6, s7, main_1_0_t #branch for loop 0
                  add          t0, s2, s9
                  bgeu         a4, tp, main_1_1_t #branch for loop 1
                  xori         a5, t4, -441
                  addi         s6, zero, -8 #init loop 0 counter
                  andi         s9, t4, 1909
                  sltu         a2, a3, s2
                  slti         a4, t6, -589
                  addi         tp, zero, 20 #init loop 0 limit
                  slli         t6, a3, 22
                  or           s4, s1, tp
main_2_0_t:       xor          t4, tp, sp
                  slli         a5, ra, 7
                  srai         a0, s0, 19
                  addi         gp, s0, 403
                  srl          s8, sp, t0
                  sltiu        t5, s11, -787
                  addi         s6, s6, 7 #update loop 0 counter
                  add          ra, sp, s9
                  auipc        t3, 633372
                  sub          s10, s11, t0
                  and          a2, a0, t4
                  srl          gp, a4, t4
                  sll          s10, s8, s3
                  ori          s7, t0, 994
                  auipc        s4, 719543
                  and          s7, t3, a6
                  nop
                  sub          s9, gp, a7
                  and          t5, gp, a0
                  beq          s6, tp, main_2_0_t #branch for loop 0
                  or           s3, a4, t0
                  sub          ra, a0, a5
                  bge          t2, s2, 6f
                  sra          t6, a2, s0
                  bgeu         a7, s1, 11f
                  slt          s10, s1, a5
                  ori          s9, gp, -953
6:                lui          t6, 301663
                  srli         s2, a7, 29
                  bne          s3, a0, 15f
                  ori          t3, ra, -1750
                  blt          s1, s0, 29f
11:               slt          s11, s3, s2
                  slti         t5, s9, -1330
                  sub          gp, t3, a1
                  slti         a5, t6, -782
15:               sra          t6, s10, s9
                  ori          a4, s4, -1175
                  srai         a2, s2, 22
                  xor          s7, t4, tp
                  blt          s9, s8, 27f
                  bgeu         a4, a7, 39f
                  auipc        t0, 301203
                  sll          s4, s11, s5
                  bge          a1, s10, 29f
                  addi         a4, ra, 515
                  sub          s7, a5, t4
                  bge          t4, tp, 27f
27:               xori         s2, zero, 1189
                  beq          s8, s7, 43f
29:               lui          s4, 277088
                  lui          s11, 710137
                  sltiu        s8, a7, 1637
                  bltu         zero, t0, 46f
                  srli         a4, zero, 4
                  xori         gp, t0, -730
                  bltu         s5, a0, 43f
                  srai         s8, s5, 11
                  bltu         s3, a0, 50f
                  slli         s0, s5, 30
39:               slti         s0, t3, -524
                  slti         s4, a4, 1041
                  srai         s3, s8, 19
                  srai         s9, a6, 0
43:               bltu         s2, a0, 50f
                  srl          s0, gp, s2
                  addi         s9, zero, 10 #init loop 0 counter
                  addi         s1, zero, 10 #init loop 0 limit
main_0_0_t:       addi         s7, s4, -1013
                  addi         s9, s9, -9 #update loop 0 counter
                  bgeu         s9, s1, main_0_0_t #branch for loop 0
                  andi         ra, gp, -1075
                  beq          s11, s1, 54f
46:               xori         gp, s6, 1701
                  sltu         sp, t6, t4
                  sltiu        s6, t6, 1954
                  addi         s0, s6, -1770
50:               addi         sp, t0, -1498
                  sub          zero, a2, a1
                  srli         s1, s8, 21
                  bge          s4, s1, 73f
54:               sltu         t1, t2, a7
                  bgeu         a7, gp, 68f
                  srl          s4, s6, tp
                  sra          tp, s7, t4
                  slli         a4, s6, 6
                  slli         s0, a6, 13
                  andi         s6, a2, 1558
                  and          sp, t4, s10
                  srai         s1, s11, 2
                  sltiu        a0, a0, 1308
                  sll          t5, t5, ra
                  auipc        s4, 829557
                  srl          s8, s7, s11
                  slt          s5, t3, t5
68:               slli         a1, a6, 26
                  blt          a7, s6, 81f
                  sra          tp, a5, a6
                  andi         a2, zero, 1306
                  slt          t5, a5, t2
73:               xor          a5, s7, s6
                  sra          s8, tp, a2
                  bne          a7, a2, 94f
                  and          s10, a3, s10
                  slti         gp, a4, 686
                  srli         t1, t5, 31
                  srl          s6, t3, a0
                  sub          s3, a1, a5
81:               slli         s11, s7, 17
                  sra          t6, a0, a0
                  srl          a1, t2, s1
                  xori         s8, s2, -563
                  srli         gp, sp, 12
                  xor          s0, s4, a3
                  srl          t4, gp, s6
                  nop
                  bltu         a7, a4, 98f
                  ori          zero, t3, -877
                  addi         t2, s8, 50
                  beq          t4, a4, 94f
                  lui          t3, 344187
94:               nop
                  la           s3, sub_1
                  slti         s2, s6, 626
                  slli         a2, a4, 26
                  addi         a5, a7, -180
                  sll          s10, sp, zero
                  addi         s3, s3, 77
                  add          s5, t6, t3
                  ori          s5, t3, 1335
                  lui          t0, 550869
                  addi         s4, t3, 986
main_j1:          jalr         s4, s3, -76 #jump main -> sub_1
                  beq          a4, t4, 113f
                  xori         s0, s0, 1812
                  sltu         t6, t6, t3
98:               lui          t0, 494751
                  xor          t1, s0, t5
                  srli         s6, gp, 12
                  sra          s8, t6, a1
                  or           s3, s9, tp
                  slli         s4, gp, 16
                  bltu         s1, t0, 112f
                  addi         t4, a0, -909
                  sll          s7, t2, t2
                  beq          s8, t6, 109f
                  auipc        s3, 862702
109:              sltiu        s7, t2, -1394
                  lui          s8, 813179
                  sltu         s0, s3, zero
112:              xor          a4, tp, s4
113:              sltu         s0, s5, s2
                  or           sp, s7, a3
                  lui          s7, 566801
                  bltu         s10, a6, 134f
                  auipc        sp, 207544
                  sra          a2, s11, s9
                  auipc        s5, 716110
                  slti         a1, a2, 579
                  bgeu         a4, s5, 134f
                  bge          s0, a1, 130f
                  srl          gp, a4, gp
                  add          s3, s3, a4
                  sltu         s8, zero, s10
                  srai         a1, s0, 16
                  auipc        s5, 934697
                  slli         a2, s11, 11
                  slti         s7, s2, -519
130:              sltiu        t2, t3, -1152
                  slt          t5, s3, tp
                  blt          s7, a0, 151f
                  andi         t3, t2, 688
134:              srli         a0, a0, 12
                  sub          s11, s0, s0
                  slti         s5, a2, 755
                  sltu         tp, a0, t3
                  srli         t4, t4, 3
                  or           s1, a5, a1
                  bge          ra, t3, 160f
                  auipc        a0, 63900
                  blt          a2, zero, 153f
                  bne          s11, s8, 147f
                  lui          a4, 99691
                  sra          a0, s7, t6
                  beq          s10, a0, 154f
147:              lui          t1, 74333
                  srai         a5, a1, 8
                  auipc        a4, 738482
                  slti         a2, s10, 656
151:              srli         sp, t2, 11
                  slti         s9, sp, -193
153:              or           s9, s4, s8
154:              and          s5, ra, s0
                  andi         tp, s7, -1027
                  bne          a0, t5, 158f
                  lui          a1, 1025242
158:              xor          t6, s10, a3
                  bgeu         t2, t0, 166f
160:              add          t1, ra, a0
                  srli         a4, s0, 31
                  bge          t3, a4, 164f
                  srl          t1, s9, s2
164:              beq          s7, t5, 170f
                  and          zero, t4, a0
166:              addi         a5, s11, -1580
                  bltu         t2, s2, 175f
                  xor          a5, t0, s1
                  xor          s0, s11, a4
170:              srli         t4, tp, 23
                  or           t4, s10, s0
                  addi         s0, s3, 1257
                  slli         a2, gp, 7
                  srl          s1, gp, sp
175:              slli         s9, s8, 9
                  bgeu         s3, t0, 184f
                  srl          a5, t5, gp
                  xori         t5, s9, -959
                  bltu         a7, s9, 184f
                  blt          gp, a6, 184f
                  andi         s5, gp, 1353
                  sra          s9, a3, t1
                  sltu         s9, a2, a3
184:              sltu         t2, ra, s10
                  la x16, test_done
                  jalr x0, x16, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            sra          ra, a1, s3
                  sltiu        t1, s10, 1321
                  add          s5, s1, sp
                  or           t1, t4, t0
                  addi         a3, a3, -52
                  addi         t0, sp, -1115
                  nop
                  sltu         t1, zero, a5
                  add          gp, s5, t6
                  sw           s4, 4(a3)
                  add          a4, a2, a7
                  la           t6, sub_2
                  addi         t6, t6, -999
                  sub          t4, a0, tp
                  auipc        a2, 179829
                  sra          s7, s1, s1
                  slli         s9, a7, 2
                  bgeu         a7, s3, sub_1_j4 #branch to jump instr
                  nop
                  srai         s0, t0, 31
sub_1_j4:         jalr         s4, t6, 999 #jump sub_1 -> sub_2
                  addi         t5, zero, -4 #init loop 0 counter
                  sltu         sp, t3, t5
                  addi         t3, zero, -8 #init loop 0 limit
                  srl          t1, t0, s4
sub_1_10_0_t:     ori          s4, s10, 1293
                  addi         t5, t5, -10 #update loop 0 counter
                  and          t0, s11, a6
                  bge          t5, t3, sub_1_10_0_t #branch for loop 0
                  srl          tp, s7, sp
                  addi         a2, zero, 2 #init loop 0 counter
                  sltu         s11, t3, s6
                  addi         a4, zero, -7 #init loop 0 limit
sub_1_15_0_t:     sltu         s3, s8, zero
                  andi         s4, s4, 1404
                  addi         a2, a2, -1 #update loop 0 counter
                  slti         t6, t1, 215
                  bge          a2, a4, sub_1_15_0_t #branch for loop 0
                  ori          t0, t1, -1920
                  addi         s6, zero, -1 #init loop 0 counter
                  addi         ra, zero, 11 #init loop 0 limit
                  sltiu        s10, t5, 1466
sub_1_14_0_t:     add          s10, s0, ra
                  ori          a2, a6, -970
                  srai         a4, a1, 17
                  srl          s1, t6, s10
                  addi         s11, s3, 1409
                  and          a1, s10, a3
                  sub          s2, gp, t3
                  addi         s6, s6, 6 #update loop 0 counter
                  xori         s8, a6, 235
                  srli         sp, a2, 17
                  sltiu        s9, a5, 670
                  beq          s6, ra, sub_1_14_0_t #branch for loop 0
                  lui          t0, 943268
                  addi         t0, zero, -4 #init loop 1 counter
                  andi         zero, a5, -999
                  sltu         s2, s1, t2
                  addi         a2, zero, 11 #init loop 1 limit
                  slt          tp, s8, a7
                  xor          t5, gp, ra
                  srai         a4, s9, 7
                  sltiu        s7, a7, 1266
                  add          a1, s3, s1
sub_1_5_1_t:      and          s6, a2, t1
                  addi         t0, t0, 4 #update loop 1 counter
                  and          s8, s5, s9
                  addi         t1, zero, 5 #init loop 0 counter
                  addi         a5, zero, -4 #init loop 0 limit
                  sll          tp, s5, a2
sub_1_5_0_t:      and          sp, s2, s0
                  addi         t1, t1, -9 #update loop 0 counter
                  xori         s11, t2, 1589
                  bge          t1, a5, sub_1_5_0_t #branch for loop 0
                  sra          s2, t0, ra
                  bltu         t0, a2, sub_1_5_1_t #branch for loop 1
                  nop
                  addi         s0, zero, -7 #init loop 0 counter
                  nop
                  slt          a1, ra, gp
                  addi         s9, zero, -10 #init loop 0 limit
sub_1_3_0_t:      add          t6, a6, t5
                  slli         s8, a4, 16
                  srl          a5, s2, a0
                  addi         s0, s0, -3 #update loop 0 counter
                  lui          s1, 784208
                  auipc        s10, 189460
                  xor          a5, sp, t2
                  beq          s0, s9, sub_1_3_0_t #branch for loop 0
                  addi         s11, s9, -1379
                  addi         a4, zero, -7 #init loop 0 counter
                  slli         s4, s0, 27
                  lui          a5, 758015
                  andi         s7, s3, 1100
                  add          tp, zero, s0
                  nop
                  xor          t0, s7, s7
                  nop
                  addi         sp, zero, -16 #init loop 0 limit
                  slli         s8, s5, 24
                  add          ra, s7, s9
                  srai         s10, s7, 16
                  and          ra, gp, zero
sub_1_1_0_t:      xori         s1, zero, 501
                  slt          s11, s9, s4
                  addi         a4, a4, -4 #update loop 0 counter
                  xori         ra, a2, -397
                  auipc        s4, 1016523
                  srli         s3, t1, 7
                  srli         s9, t5, 13
                  xor          t5, ra, sp
                  bge          a4, sp, sub_1_1_0_t #branch for loop 0
                  or           s5, a1, t2
                  addi         t0, zero, -5 #init loop 1 counter
                  or           s1, gp, a5
                  srai         s3, s5, 16
                  sltu         a0, t0, s6
                  addi         s8, zero, 16 #init loop 1 limit
sub_1_12_1_t:     addi         s11, a1, -460
                  addi         t0, t0, 9 #update loop 1 counter
                  xor          s6, a5, a0
                  addi         gp, zero, -5 #init loop 0 counter
                  sltu         s10, s11, s1
                  xori         t3, a5, 1155
                  sltu         t5, sp, s9
                  srl          s7, sp, t3
                  add          sp, s10, a0
                  xor          t1, s4, t4
                  srli         t1, s2, 13
                  addi         t6, zero, 1 #init loop 0 limit
                  xor          a4, t2, a1
sub_1_12_0_t:     sub          a0, a5, a1
                  sra          a5, s10, s5
                  addi         gp, gp, 1 #update loop 0 counter
                  srli         sp, a6, 28
                  bltu         gp, t6, sub_1_12_0_t #branch for loop 0
                  slli         tp, s0, 16
                  and          a1, s7, s9
                  srli         s11, s5, 6
                  sll          a5, a2, t4
                  blt          t0, s8, sub_1_12_1_t #branch for loop 1
                  addi         s0, a6, -799
                  addi         s8, zero, 5 #init loop 1 counter
                  xori         gp, tp, 534
                  addi         a1, zero, 10 #init loop 1 limit
                  sll          s0, sp, s1
sub_1_7_1_t:      andi         s0, a4, 1646
                  addi         s8, s8, 6 #update loop 1 counter
                  xori         gp, t3, 381
                  auipc        s10, 109331
                  addi         t6, zero, 6 #init loop 0 counter
                  srai         s3, a5, 17
                  nop
                  addi         s7, zero, 4 #init loop 0 limit
                  sltu         a2, a5, sp
sub_1_7_0_t:      nop
                  addi         t6, t6, -1 #update loop 0 counter
                  and          t0, s7, t0
                  beq          t6, s7, sub_1_7_0_t #branch for loop 0
                  addi         s11, t6, 591
                  bltu         s8, a1, sub_1_7_1_t #branch for loop 1
                  srli         s4, a2, 22
                  addi         a4, zero, 10 #init loop 1 counter
                  addi         s2, zero, 8 #init loop 1 limit
                  add          t6, a3, t6
sub_1_13_1_t:     xori         ra, t4, 383
                  addi         a4, a4, -6 #update loop 1 counter
                  addi         a0, zero, -6 #init loop 0 counter
                  addi         t3, zero, -13 #init loop 0 limit
sub_1_13_0_t:     sltu         a2, t2, t1
                  addi         a0, a0, -3 #update loop 0 counter
                  bge          a0, t3, sub_1_13_0_t #branch for loop 0
                  bgeu         a4, s2, sub_1_13_1_t #branch for loop 1
                  xor          s1, s10, s0
                  addi         s9, zero, 10 #init loop 1 counter
                  sltiu        s6, a5, -771
                  andi         tp, zero, -1332
                  nop
                  addi         a1, zero, 8 #init loop 1 limit
                  sub          s4, s10, s3
sub_1_11_1_t:     nop
                  lui          t6, 738108
                  addi         s9, s9, -7 #update loop 1 counter
                  addi         s5, zero, -4 #init loop 0 counter
                  auipc        a4, 299985
                  or           s11, t0, s6
                  slli         tp, s3, 14
                  addi         s0, zero, 16 #init loop 0 limit
                  slt          s7, s3, s11
                  sltu         s1, s9, s9
                  slli         t2, s7, 27
                  ori          s1, s8, 204
sub_1_11_0_t:     lui          ra, 277924
                  sra          t3, s5, tp
                  xori         s6, s1, -512
                  addi         s5, s5, 5 #update loop 0 counter
                  blt          s5, s0, sub_1_11_0_t #branch for loop 0
                  sltu         t6, ra, zero
                  nop
                  andi         a2, a2, -966
                  slti         s10, t5, -763
                  bgeu         s9, a1, sub_1_11_1_t #branch for loop 1
                  srl          s11, a5, s5
                  addi         tp, zero, 9 #init loop 1 counter
                  addi         t3, zero, 8 #init loop 1 limit
sub_1_9_1_t:      xor          s0, a2, zero
                  sll          a1, s10, a2
                  addi         tp, tp, -7 #update loop 1 counter
                  addi         s11, zero, 6 #init loop 0 counter
                  nop
                  and          s5, s4, a0
                  addi         t1, zero, -4 #init loop 0 limit
                  or           a2, a6, a5
sub_1_9_0_t:      andi         t2, a2, -1607
                  slt          s2, s2, s2
                  addi         s11, s11, -10 #update loop 0 counter
                  xor          s3, s4, zero
                  beq          s11, t1, sub_1_9_0_t #branch for loop 0
                  nop
                  slt          a1, t1, a5
                  bgeu         tp, t3, sub_1_9_1_t #branch for loop 1
                  add          gp, s5, s2
                  addi         s0, zero, -7 #init loop 0 counter
                  addi         t3, s1, -1122
                  xori         s5, tp, 1369
                  addi         ra, zero, 11 #init loop 0 limit
                  slti         s10, s9, 986
                  sltu         s4, s10, a4
                  nop
                  auipc        sp, 311062
                  auipc        t5, 802739
                  sra          s2, s3, ra
                  slli         s7, a6, 5
                  andi         s6, a0, -723
                  slt          a1, s7, a1
                  sll          s6, t1, s1
                  sub          s10, a5, s4
                  lui          a1, 989651
                  addi         t0, t4, -281
                  sra          s10, t5, s3
sub_1_8_0_t:      andi         s10, t1, -1752
                  xor          a1, s2, s11
                  addi         s6, a0, -719
                  addi         s0, s0, 5 #update loop 0 counter
                  sra          t4, a6, s9
                  bltu         s0, ra, sub_1_8_0_t #branch for loop 0
                  auipc        a5, 737470
                  addi         s11, zero, -9 #init loop 1 counter
                  slli         t0, s0, 28
                  addi         gp, zero, -8 #init loop 1 limit
                  sltiu        sp, s3, 209
sub_1_16_1_t:     xori         t6, s7, -1717
                  addi         s11, s11, 1 #update loop 1 counter
                  sub          t4, a3, a7
                  srai         s9, s3, 23
                  sll          s4, sp, a5
                  sll          ra, a7, a7
                  addi         t5, a7, -888
                  addi         a5, zero, 10 #init loop 0 counter
                  addi         t3, zero, 16 #init loop 0 limit
                  sub          s2, t2, t0
                  slt          tp, t4, a6
                  add          s7, gp, t4
sub_1_16_0_t:     sub          a2, a6, s9
                  srl          t1, s10, sp
                  sltu         t2, s0, a0
                  addi         s6, t4, -1202
                  addi         a5, a5, 1 #update loop 0 counter
                  ori          s0, t1, -392
                  addi         s4, s4, -1565
                  srl          s4, t3, s8
                  blt          a5, t3, sub_1_16_0_t #branch for loop 0
                  and          a4, t1, s3
                  and          a0, s1, ra
                  nop
                  sltiu        a0, s2, 141
                  srli         s4, t2, 16
                  sltiu        t4, s9, -1720
                  bne          s11, gp, sub_1_16_1_t #branch for loop 1
                  srli         a2, s3, 24
                  addi         s11, zero, -6 #init loop 1 counter
                  addi         s8, zero, 12 #init loop 1 limit
sub_1_18_1_t:     xori         s7, t3, 979
                  slt          t0, gp, a1
                  addi         s11, s11, 7 #update loop 1 counter
                  srl          a0, s1, s6
                  addi         ra, zero, -5 #init loop 0 counter
                  ori          s5, t1, 1789
                  addi         t4, zero, -15 #init loop 0 limit
sub_1_18_0_t:     nop
                  sltiu        a1, s5, -1907
                  addi         ra, ra, -6 #update loop 0 counter
                  auipc        t3, 784774
                  bge          ra, t4, sub_1_18_0_t #branch for loop 0
                  sltiu        t6, s5, 1749
                  bltu         s11, s8, sub_1_18_1_t #branch for loop 1
                  lui          tp, 416889
                  addi         a5, zero, 9 #init loop 0 counter
                  srai         t3, t1, 26
                  andi         s1, s3, 538
                  sltiu        ra, s6, -1423
                  lui          t5, 558244
                  sltiu        t3, a3, -1072
                  and          t2, s9, s2
                  addi         t1, zero, 9 #init loop 0 limit
                  ori          s2, s0, -1694
                  srli         zero, t3, 28
                  sltu         t5, a3, a7
                  xor          s6, s4, tp
sub_1_4_0_t:      slt          t2, a2, s8
                  and          t5, t5, s8
                  sltu         s6, s3, s7
                  and          s9, a7, a3
                  sll          t2, zero, s8
                  auipc        s7, 854205
                  addi         a5, a5, -8 #update loop 0 counter
                  sltu         s1, t2, s0
                  slti         t6, a1, -1800
                  slt          t0, s8, a1
                  sltu         a1, s8, a1
                  bgeu         a5, t1, sub_1_4_0_t #branch for loop 0
                  and          s8, a5, s9
                  srl          s0, s5, a4
                  slti         a5, t5, -1415
                  slt          a1, a0, t6
                  slt          s9, t2, gp
                  slti         a5, sp, -954
                  xor          s2, a4, s9
                  sub          s2, a7, s4
                  srl          s8, s0, t1
                  sub          zero, a4, ra
                  lui          s2, 125876
                  bltu         zero, s8, 15f
                  add          a4, a0, s11
                  andi         s10, a3, -1018
                  nop
                  beq          sp, a7, 17f
15:               auipc        a2, 243487
                  bgeu         a6, zero, 18f
17:               slli         zero, a0, 1
18:               sra          s3, s10, s9
                  bltu         t5, gp, 32f
                  bge          s9, a1, 32f
                  add          s7, s6, s2
                  srai         s4, s9, 21
                  or           sp, ra, t6
                  sra          a2, s7, s1
                  addi         t0, zero, 6 #init loop 1 counter
                  addi         a1, zero, 6 #init loop 1 limit
sub_1_2_1_t:      andi         s2, t4, -286
                  addi         t0, t0, -5 #update loop 1 counter
                  addi         s4, zero, 9 #init loop 0 counter
                  addi         t5, zero, -16 #init loop 0 limit
sub_1_2_0_t:      lui          s3, 656084
                  addi         s4, s4, -2 #update loop 0 counter
                  bge          s4, t5, sub_1_2_0_t #branch for loop 0
                  bgeu         t0, a1, sub_1_2_1_t #branch for loop 1
                  sra          zero, a5, t6
                  bne          s6, zero, 36f
                  bltu         t3, s6, 29f
                  sll          s0, a7, s1
                  blt          gp, sp, 29f
29:               sltiu        s0, s0, -33
                  sub          s10, s0, s0
                  srl          s9, t2, s3
32:               addi         ra, t3, 1028
                  sltiu        a0, s8, -661
                  sub          a0, s0, s3
                  srli         s5, a4, 15
36:               xori         t2, a5, -806
                  beq          a5, t1, 41f
                  addi         s11, a1, 1020
                  or           t6, gp, gp
                  bltu         t5, zero, 53f
41:               sll          ra, s7, zero
                  sub          t6, s6, tp
                  lui          s1, 537827
                  bltu         s1, t6, 62f
                  nop
                  addi         s6, ra, -99
                  sltiu        s9, sp, -1496
                  ori          t0, a4, 1041
                  beq          a2, s1, 63f
                  blt          t4, s3, 70f
                  sltiu        a0, t1, 1058
                  sub          a2, s6, ra
53:               sll          s3, s9, a7
                  sltu         s2, a7, s1
                  xori         a0, t1, 165
                  bgeu         s11, a0, 60f
                  srai         a4, s5, 6
                  bgeu         ra, t3, 70f
                  slli         s1, t1, 15
60:               addi         a2, zero, -505
                  blt          a2, tp, 71f
62:               srli         s8, s1, 18
63:               xori         s6, a4, -1532
                  bltu         a6, s6, 79f
                  or           ra, zero, s7
                  slti         s9, t6, -651
                  bgeu         a7, ra, 80f
                  xor          ra, a7, t1
                  auipc        s5, 401349
70:               xori         t1, t2, 1897
71:               xori         s0, sp, -1506
                  sra          ra, s5, s6
                  nop
                  srli         t5, t6, 24
                  and          s1, t3, s5
                  add          s7, s6, t2
                  blt          zero, t3, 91f
                  and          sp, s9, t0
79:               sub          a5, gp, a3
80:               beq          a2, s8, 91f
                  or           t5, a2, s1
                  addi         a0, s4, 1230
                  sra          t6, zero, s9
                  bgeu         a1, s3, 96f
                  srli         zero, a6, 13
                  bltu         gp, t1, 102f
                  blt          s9, zero, 95f
                  xori         s11, a4, -854
                  blt          sp, t4, 96f
                  slt          t5, gp, a5
91:               bgeu         s3, s7, 93f
                  xori         t5, t6, 351
93:               bgeu         t6, a7, 100f
                  sub          a5, s4, s11
95:               lui          a0, 999583
96:               blt          s9, s6, 107f
                  sltu         zero, a5, a2
                  add          sp, a3, s0
                  slti         s2, s5, -189
100:              andi         zero, ra, 1141
                  blt          s0, t4, 118f
102:              sltu         t5, t5, s5
                  nop
                  nop
                  bge          gp, t0, 125f
                  add          a0, s4, s5
107:              sub          t3, t0, s10
                  srli         gp, s11, 17
                  sra          s4, s1, a1
                  sll          t0, s0, s6
                  lui          t3, 482292
                  xor          s0, a7, a7
                  sltiu        sp, s1, 1292
                  bge          a0, gp, 121f
                  lui          s10, 156032
                  blt          t1, s7, 129f
                  or           t5, a5, s10
118:              srl          s5, a6, s4
                  sltiu        s2, t1, -1918
                  add          zero, a2, s3
121:              beq          zero, t1, 131f
                  sra          a4, a7, a2
                  slt          a0, a6, tp
                  blt          t4, t2, 129f
125:              sll          s9, s8, t5
                  or           a5, a4, t6
                  sub          s1, a4, t1
                  sltu         s9, t4, s9
129:              slli         t6, t0, 21
                  lui          s5, 615571
131:              blt          tp, gp, 145f
                  andi         s9, a7, 558
                  auipc        s11, 823611
                  beq          t1, a0, 152f
                  sltu         s11, t0, s9
                  auipc        s9, 93512
                  slt          t5, s8, t5
                  sub          ra, gp, a6
                  bltu         s8, a7, 146f
                  andi         s6, ra, 571
                  sltu         tp, s0, s8
                  bne          a1, s8, 149f
                  slli         s0, a6, 14
                  sll          s9, s4, t2
145:              srai         s2, sp, 26
146:              or           a5, s7, s3
                  slti         a1, t6, -1596
                  andi         s4, s4, -801
149:              bge          t6, t4, 161f
                  lui          ra, 451611
                  andi         s5, s3, 604
152:              and          ra, a7, a1
                  nop
                  beq          s3, s0, 162f
                  andi         s1, s3, 770
                  xor          s9, gp, s1
                  bgeu         t0, t4, 170f
                  srl          gp, s7, s2
                  blt          t4, gp, 170f
                  andi         t4, gp, 2043
161:              beq          zero, a2, 165f
162:              bltu         t0, t0, 177f
                  bgeu         s1, s5, 174f
                  srai         sp, a3, 27
165:              auipc        a0, 885964
                  slti         s11, s9, 1535
                  sub          a1, s6, s8
                  xori         s1, tp, -1932
                  blt          s5, t1, 189f
170:              add          t4, sp, s6
                  srl          s3, s1, tp
                  bltu         a6, t3, 179f
                  blt          s4, ra, 176f
174:              bltu         s11, sp, 187f
                  ori          t3, a0, -1193
176:              xor          gp, t1, t2
177:              sltiu        t6, s0, 1807
                  addi         s2, ra, -1767
179:              sltu         t6, s8, t1
                  slt          ra, s10, s11
                  bge          s5, a2, 185f
                  slt          tp, a7, s10
                  sltiu        a1, sp, 972
                  andi         s8, a0, 1638
185:              sltiu        ra, a3, -207
                  sltu         s0, s8, ra
187:              srai         s7, t4, 31
                  blt          t2, a0, 189f
189:              blt          t6, s4, 200f
                  blt          a1, ra, 207f
                  lui          t3, 617235
                  and          s3, t4, ra
                  srl          a0, a5, ra
                  beq          a3, a3, 197f
                  nop
                  add          s0, a6, s0
                  sltu         t6, s9, s2
                  blt          t1, s10, sub_1_j3 #branch to jump instr
                  nop
                  sltu         t1, tp, s11
                  xor          s7, s2, t1
                  addi         s5, a5, -1028
sub_1_j3:         jal          s4, sub_2 #jump sub_1 -> sub_2
                  addi         a1, t6, 802
197:              sra          s8, t5, s5
                  slli         s10, a5, 29
                  or           t6, t6, a0
200:              lui          s9, 887357
                  bltu         gp, s0, 213f
                  bne          s0, t0, 222f
                  slti         tp, s6, -601
                  or           t5, s4, gp
                  slti         gp, tp, -992
                  addi         s2, zero, -3 #init loop 0 counter
                  xori         a5, t4, -1813
                  sra          t0, tp, s10
                  slti         zero, s10, -1386
                  sll          s7, s0, s2
                  srai         t1, a4, 22
                  sltu         a5, s11, a7
                  addi         s10, zero, -9 #init loop 0 limit
                  sra          sp, s9, s2
sub_1_6_0_t:      add          a4, a5, t2
                  or           t5, ra, ra
                  sll          a0, a4, a2
                  auipc        a2, 977580
                  addi         s2, s2, -2 #update loop 0 counter
                  sll          s1, s1, s6
                  slt          tp, s4, s1
                  xor          a4, s3, s2
                  ori          s4, a6, 1740
                  srai         s5, t3, 31
                  sll          s8, a4, a1
                  xori         gp, s8, -43
                  sltiu        s4, gp, 1727
                  bge          s2, s10, sub_1_6_0_t #branch for loop 0
                  srli         zero, s5, 1
                  beq          t0, a4, 208f
207:              or           t1, s8, s7
208:              sub          a2, s8, s2
                  nop
                  auipc        t5, 353003
                  xori         t0, gp, 1349
                  sltu         a2, t4, t5
213:              sra          zero, a7, a7
                  add          t5, s0, s4
                  andi         t0, a5, 172
                  and          sp, gp, a3
                  srl          s1, s2, a0
                  sll          s2, s0, a1
                  nop
                  xori         a2, a5, 1941
                  auipc        s5, 335169
222:              nop
                  slli         s4, zero, 4
                  srai         t4, t2, 16
                  sub          t6, a3, s7
                  slti         a5, s10, 82
                  lui          s10, 414084
                  beq          s6, s1, 240f
                  bge          s8, s0, 243f
                  ori          s4, t6, -1652
                  bge          t6, a0, 247f
                  blt          t0, t4, 234f
                  srli         t6, s8, 24
234:              bltu         s1, a3, 247f
                  slt          s10, t0, tp
                  bltu         s0, a4, 241f
                  and          t5, s10, s4
                  sltu         t6, t6, s2
                  blt          a1, s1, 241f
240:              srl          s7, s1, a0
241:              xori         a2, s10, -1236
                  and          t2, a5, a5
243:              sltiu        s9, a5, 243
                  auipc        a5, 973578
                  lui          ra, 947412
                  and          t0, a3, s10
247:              srai         a4, s2, 2
                  sltiu        s9, s4, 581
                  blt          s4, a5, 252f
                  sub          s1, sp, t0
                  srai         a5, t0, 26
252:              sra          s10, s9, t6
                  andi         s2, a1, 1225
                  bge          s5, a4, 266f
                  andi         tp, s2, -2022
                  auipc        s3, 748679
                  xori         t1, s7, 1540
                  sra          s3, gp, t6
                  srai         a5, a3, 31
                  and          t0, a2, s5
                  nop
                  add          sp, tp, s7
                  addi         ra, s7, 810
                  sltiu        a2, t6, -1171
                  bgeu         a7, ra, 278f
266:              sltiu        t0, t5, -1020
                  or           t0, gp, s9
                  srai         a0, a3, 6
                  bltu         s2, t0, 272f
                  xori         a5, a6, -964
                  bgeu         t4, s8, 281f
272:              lui          sp, 425138
                  addi         s11, a3, 1882
                  bge          a3, t4, 281f
                  slti         s8, a2, 1749
                  srli         t0, s10, 22
                  bne          s5, s0, 281f
278:              xori         s10, s8, 1811
                  slti         t6, s0, 1282
                  beq          gp, a5, 287f
281:              srl          t1, tp, t6
                  sltu         a0, ra, s8
                  lui          gp, 496356
                  bne          a3, s5, 298f
                  bne          t3, a4, 287f
                  or           zero, s3, tp
287:              bltu         t4, t5, 299f
                  xor          s9, s5, a2
                  lui          t2, 296459
                  sltu         t3, s7, sp
                  slti         a1, s10, -317
                  addi         s10, a3, -1609
                  sll          s6, a2, a0
                  srai         sp, t5, 13
                  srai         a5, a7, 0
                  srl          s2, a7, zero
                  ori          s1, gp, 508
298:              sll          s10, s8, t1
299:              beq          ra, s5, 319f
                  auipc        s5, 988490
                  xor          s6, ra, a1
                  nop
                  andi         t4, zero, 157
                  slti         s5, a3, -163
                  bge          t3, s8, 313f
                  slt          s4, a2, t5
                  slti         gp, t6, -1234
                  slli         t4, s7, 13
                  lui          s8, 463850
                  slli         gp, s6, 29
                  sltu         s10, t6, t4
                  bgeu         s3, t4, 329f
313:              bltu         s4, a7, 328f
                  blt          s11, a6, 328f
                  bne          s11, s8, 316f
316:              slli         s11, a4, 23
                  or           s10, t1, s4
                  slli         s9, t4, 19
319:              slli         t2, t3, 15
                  add          gp, t4, zero
                  slti         a5, a3, -273
                  bne          t6, a0, 333f
                  srli         t3, t1, 30
                  slli         s8, s4, 7
                  slt          tp, a6, s4
                  andi         s8, t0, 557
                  lui          t2, 858200
328:              lui          s4, 282375
329:              addi         s4, t6, -1991
                  srl          s10, a6, a7
                  slli         s3, a7, 0
                  sub          sp, s11, t4
333:              and          t4, t5, s10
                  sltiu        t4, s4, 84
                  lui          s1, 76101
                  auipc        t3, 176371
                  sltu         s7, t0, s4
                  andi         tp, t6, -503
                  sub          t2, s9, s3
                  sra          s2, a0, a4
                  beq          a0, s5, 359f
                  bgeu         t0, sp, 346f
                  xor          gp, t1, t0
                  slti         t4, t0, 1919
                  bne          s4, a3, 365f
346:              sra          s1, s0, a4
                  xor          ra, s10, t5
                  bltu         t2, t3, 364f
                  xor          s1, a6, a6
                  sll          t5, s8, a1
                  xor          s0, s1, a7
                  slt          tp, tp, a2
                  auipc        gp, 591952
                  nop
                  sll          t4, t4, s11
                  or           t6, tp, s6
                  auipc        s10, 981639
                  bne          t6, t0, 365f
359:              sltu         t3, t3, a5
                  xor          t6, a7, s1
                  addi         s6, t2, 1259
                  sub          tp, a7, t5
                  blt          a6, a3, 374f
364:              sra          s5, t3, s5
365:              bge          zero, s7, 378f
                  sll          t6, tp, t4
                  beq          s5, s0, 379f
                  and          s11, t5, s5
                  slt          t4, s8, a1
                  beq          t4, a6, 381f
                  xori         t2, sp, 1567
                  add          a4, gp, t3
                  ori          gp, a2, 1459
374:              addi         s7, a4, 160
                  beq          a5, s2, 385f
                  slt          s8, zero, a1
                  srai         s5, s8, 12
378:              andi         zero, s0, 1049
379:              beq          s11, s2, 390f
                  sltu         zero, a0, s6
381:              bne          sp, a7, 393f
                  beq          s6, zero, 390f
                  xor          a1, t0, s1
                  add          tp, a7, ra
385:              addi         a5, a4, -342
                  bgeu         s4, a5, 389f
                  slli         s8, ra, 30
                  bne          gp, s11, 400f
389:              sub          ra, tp, s2
390:              xori         s0, s6, 1858
                  beq          a5, t6, 406f
                  slti         s10, a4, -1497
393:              srai         s8, s1, 19
                  ori          s1, a5, 1176
                  slli         s5, s6, 5
                  add          s11, a3, a3
                  bne          a2, a3, 404f
                  srai         t4, t5, 18
                  nop
400:              or           ra, a0, t5
                  sll          s9, a6, gp
                  lui          s11, 804463
                  sltu         t1, ra, s10
404:              add          zero, t3, s11
                  auipc        tp, 885393
406:              andi         s2, s2, -592
                  xor          s0, sp, s11
                  and          a2, a0, a1
                  sra          a4, zero, s9
                  bgeu         s0, s2, 426f
                  bne          s8, a4, 415f
                  srai         a5, t0, 10
                  blt          s11, t5, 417f
                  sltu         a0, t1, a3
415:              xori         t4, t3, -595
                  sll          t0, s1, s8
417:              add          s11, sp, gp
                  lui          t6, 689114
                  sltiu        s8, s3, 1647
                  andi         s2, s11, -1307
                  xori         s6, ra, -15
                  bgeu         s2, gp, 434f
                  nop
                  add          s9, s4, a5
                  sra          s10, t4, gp
426:              srai         gp, s9, 19
                  nop
                  sra          t0, t0, a3
                  srl          a1, s8, s1
                  bgeu         s1, t5, 443f
                  xori         s1, t5, -225
                  lui          t3, 243404
                  xori         s3, s5, 629
434:              sltu         a2, s11, a1
                  srli         sp, gp, 25
                  bge          t2, a7, 456f
                  xor          t5, t2, a0
                  srai         t6, t5, 4
                  srl          a5, t4, tp
                  bne          a2, s8, 457f
                  slti         a5, s10, 1689
                  nop
443:              slti         s11, s5, 781
                  bgeu         s6, ra, 449f
                  srai         a4, s7, 15
                  srli         t4, a7, 13
                  addi         a1, s10, 2028
                  srli         s4, s6, 20
449:              add          a5, s2, s8
                  xori         s4, sp, -677
                  sltiu        s1, s5, 446
                  and          a2, tp, s6
                  andi         sp, s7, -1474
                  lui          s11, 726094
                  sll          s10, s9, s7
456:              addi         s8, zero, -1128
457:              bltu         s9, sp, 459f
                  sltiu        s7, zero, -206
459:              lui          s9, 774727
                  slt          s6, s5, a5
                  auipc        s6, 671709
                  sltu         s11, s5, a7
                  slti         t4, s8, 862
                  auipc        s9, 476739
                  bltu         a4, a5, 479f
                  auipc        s0, 804863
                  slti         s8, a7, -1119
                  and          tp, tp, s4
                  bltu         a4, a4, 471f
                  bge          a7, s9, 477f
471:              auipc        s8, 728317
                  slti         s9, zero, -338
                  slli         s9, a1, 24
                  sltu         s9, s9, a0
                  slli         t3, t6, 4
                  bne          s10, gp, 487f
477:              sra          gp, s4, s6
                  bge          t5, s6, 489f
479:              ori          t2, s3, 1756
                  bgeu         tp, zero, 481f
481:              andi         s8, a5, 1583
                  bgeu         a0, s7, 495f
                  bge          a4, t1, 501f
                  slli         a2, s5, 12
                  slt          zero, t5, s10
                  nop
487:              andi         gp, s2, -323
                  blt          a3, s1, 502f
489:              xor          s9, s2, s7
                  bltu         a4, s10, 493f
                  srl          s11, ra, gp
                  slti         zero, a0, 778
493:              slli         t0, s9, 11
                  sll          s10, s0, t3
495:              auipc        s6, 1027484
                  slt          s4, t4, t2
                  andi         s4, s4, 430
                  sll          s11, s8, gp
                  addi         s8, s7, 1398
                  xori         s7, tp, -6
501:              sra          t2, t1, s3
502:              sltiu        s8, s1, -31
                  slti         zero, s0, -2001
                  bltu         a0, s2, 511f
                  bgeu         tp, tp, 518f
                  bgeu         s0, t2, 526f
                  blt          gp, gp, 518f
                  srli         s6, a7, 20
                  bgeu         s6, s7, 527f
                  bltu         gp, s10, 512f
511:              bltu         zero, s8, 522f
512:              or           tp, t3, s10
                  slli         s0, t3, 15
                  lui          t6, 1034161
                  slti         a2, ra, -1351
                  nop
                  sltiu        s9, t6, -559
518:              sltiu        t2, a0, 1256
                  nop
                  srai         t1, a2, 14
                  xor          t2, a4, a4
522:              or           t4, t6, s0
                  slli         ra, a6, 18
                  ori          s11, ra, -593
                  addi         s4, t0, 1437
526:              sltiu        a5, gp, 1186
527:              bge          s7, a1, 547f
                  slli         s1, s6, 10
                  sub          t4, a1, a0
                  bne          gp, s8, 537f
                  bltu         s5, s11, 545f
                  xor          s3, s9, a7
                  lui          sp, 904424
                  slli         s7, s8, 6
                  bgeu         t0, a6, 537f
                  srli         a4, a4, 3
537:              srl          s11, s6, t4
                  sll          a1, s8, s1
                  auipc        s10, 874044
                  slli         a2, s7, 0
                  xor          t3, a6, s11
                  srai         s11, s4, 25
                  addi         s0, s1, -1212
                  bge          t0, s10, 559f
545:              blt          ra, s10, 558f
                  add          zero, t0, s2
547:              bltu         a5, tp, 559f
                  nop
                  bge          a0, s7, 569f
                  add          zero, a1, t3
                  or           s2, s4, t6
                  sll          s5, s7, t3
                  slti         t4, t4, 609
                  or           a5, s8, s0
                  srli         t0, s11, 24
                  xor          tp, s6, s5
                  ori          s9, zero, -538
558:              nop
559:              bne          sp, s5, 570f
                  sltiu        a1, tp, 1149
                  nop
                  andi         a2, ra, -1560
                  sltiu        a1, a5, -27
                  andi         gp, a7, 13
                  srl          t5, s11, tp
                  auipc        s6, 393540
                  sltiu        a5, s8, -1821
                  auipc        s3, 244784
569:              xori         zero, a0, -898
570:              addi         s5, a0, -1695
                  slti         t4, t0, 1237
                  or           s10, s9, s7
                  add          t1, s10, a5
                  bge          s0, tp, 590f
                  sra          tp, t2, s0
                  sra          t5, s11, s11
                  blt          a6, a3, 580f
                  add          a5, t2, zero
                  sll          s4, s9, t0
580:              addi         s9, t1, -955
                  xori         t3, a4, 180
                  sub          s10, t3, gp
                  sll          t2, sp, s6
                  slt          s11, s7, s5
                  blt          s2, s10, 592f
                  addi         s8, t4, -1410
                  and          s4, s0, t6
                  sltu         t0, s1, s10
                  bge          a0, a7, 592f
590:              sll          t6, t0, zero
                  and          s4, s6, s3
592:              sub          a4, a3, a6
                  sltu         a2, s2, t2
                  srai         s9, t1, 19
                  srl          t0, a4, s0
                  srl          a0, a2, tp
                  slt          zero, t5, a4
                  nop
                  lui          t6, 810579
                  sra          s11, t2, ra
                  auipc        s10, 508452
                  sra          t0, s5, t1
                  addi         s10, tp, 899
                  bgeu         s9, t5, 612f
                  srai         sp, gp, 14
                  bne          a2, s1, 618f
                  beq          t4, s10, 617f
                  bge          t0, a3, 613f
                  slti         zero, a4, -322
                  add          sp, s7, s5
                  bltu         a4, s3, 623f
612:              bne          s9, s9, 616f
613:              or           zero, gp, t6
                  sra          s3, a1, s3
                  xori         s9, t4, 760
616:              srai         a0, gp, 0
617:              ori          s3, zero, 259
618:              sll          t1, tp, s5
                  sll          s2, s0, gp
                  addi         a2, s8, 197
                  blt          t1, a4, 634f
                  sub          s8, a1, t2
623:              srl          a1, sp, s7
                  bne          t2, sp, 641f
                  xori         s4, zero, -542
                  bgeu         a7, gp, 633f
                  sltu         t2, t1, a3
                  sll          t4, s3, t6
                  bgeu         t0, s2, 633f
                  andi         s1, s7, -1484
                  add          s10, t0, tp
                  sra          a4, a6, s6
633:              or           a1, t2, s7
634:              and          s2, sp, a2
                  blt          sp, a3, 648f
                  sltu         s3, t0, a6
                  sltiu        s0, t5, -742
                  sra          a5, s7, a6
                  blt          t2, t0, 640f
640:              sub          s3, ra, a7
641:              bne          ra, t6, 655f
                  slti         a0, s6, 1862
                  sll          s0, t5, t5
                  sra          t2, sp, sp
                  nop
                  nop
                  and          sp, a1, t1
648:              sll          a5, a5, t5
                  andi         s1, s0, 962
                  nop
                  andi         zero, tp, 574
                  auipc        s0, 370523
                  srai         s0, s7, 21
                  xori         t2, t1, -709
655:              lui          t1, 714585
                  slli         s5, t2, 30
                  slt          gp, t4, a3
                  and          s3, s8, t6
                  add          t3, a0, t6
                  xori         s10, ra, -1318
                  sra          a5, s10, t0
                  xori         s9, t4, -40
                  sll          t0, a3, zero
                  addi         zero, gp, 1660
                  sub          a1, zero, a3
                  bltu         a5, sp, 676f
                  lui          s5, 297349
                  xor          s11, s7, s9
                  sll          s0, ra, tp
                  andi         s1, s11, 1792
                  or           t1, t2, s5
                  blt          a0, s11, 675f
                  xori         t2, a0, -543
                  andi         t2, s2, 1939
675:              add          s10, a4, s0
676:              slti         s4, a5, 1834
                  and          a4, a4, s5
                  sltu         s4, s8, a6
                  bltu         s5, s4, 691f
                  srl          s9, s11, tp
                  blt          s5, s11, 689f
                  slt          tp, s2, tp
                  sub          a2, s6, s7
                  beq          gp, a1, 691f
                  andi         s4, a3, -22
                  xor          a0, tp, a0
                  srli         s9, s11, 8
                  bltu         s5, t1, 699f
689:              nop
                  xori         t5, s4, 1382
691:              sra          a1, s6, t2
                  sra          t5, gp, gp
                  slli         s2, s3, 17
                  slli         ra, s8, 5
                  sra          t4, a7, s7
                  addi         ra, ra, -252
                  xori         sp, s0, 550
                  slli         t1, ra, 1
699:              ori          a4, s4, 1207
                  xor          t2, t4, s2
                  sltu         a4, t5, a2
                  srl          zero, t0, a1
                  nop
                  beq          ra, a6, 711f
                  or           gp, a7, s8
                  xori         t1, zero, -1506
                  and          s1, tp, t4
                  nop
                  andi         ra, ra, -337
                  andi         ra, s4, -109
711:              sltu         t3, s4, t4
                  bge          a4, a3, 725f
                  blt          s0, t0, 726f
                  bge          s2, s6, 719f
                  addi         t6, s3, -1965
                  and          a1, t0, s5
                  lui          s0, 770519
                  blt          s7, s10, 719f
719:              slli         t2, tp, 4
                  sra          s2, a2, t1
                  srli         ra, s6, 7
                  srli         t3, s11, 22
                  bge          tp, t0, 743f
                  srli         a0, s1, 22
725:              bgeu         t4, sp, 739f
726:              sra          s1, a6, s8
                  auipc        t1, 857180
                  or           a2, ra, s3
                  blt          s3, sp, 746f
                  beq          s3, t4, 742f
                  auipc        ra, 421536
                  and          s3, a6, t0
                  or           s11, a4, s11
                  xor          s2, a5, a3
                  xor          a1, s7, a2
                  blt          a6, a1, 754f
                  bge          s8, s6, 752f
                  sltu         tp, ra, s10
739:              addi         s4, t6, -960
                  ori          a4, t1, -1606
                  sra          s1, t3, s9
742:              bne          a0, t0, 749f
743:              xori         a4, a0, -78
                  srl          a5, t2, s7
                  bne          zero, t6, 758f
746:              sltiu        s3, a2, 87
                  slti         t3, s1, -302
                  andi         s8, s6, 1547
749:              sll          s7, a6, a6
                  slli         s8, t0, 29
                  and          ra, s1, s0
752:              slt          a2, t6, s3
                  addi         a0, s6, -680
754:              add          zero, s10, s11
                  bltu         a5, s4, 758f
                  add          s7, s10, s9
                  srl          t2, s3, a3
758:              slt          s11, t2, t5
                  ori          s4, a4, 180
                  xor          a1, s11, a5
                  slt          a4, s7, s5
                  bge          s4, t0, 776f
                  sltiu        s4, t0, 17
                  xor          t3, t6, a6
                  or           t2, a2, s1
                  slt          s11, s4, sp
                  slti         t6, a5, 1214
                  bltu         s7, s7, 784f
                  bgeu         s10, a6, 773f
                  add          sp, t1, gp
                  sltiu        t6, s2, -777
                  slt          t1, a7, s4
773:              sltiu        a0, s1, -1096
                  slt          s1, sp, s11
                  bltu         ra, t4, 777f
776:              sub          t1, ra, a1
777:              blt          a1, s7, 779f
                  add          s6, s9, a2
779:              sll          tp, sp, tp
                  bgeu         a2, s4, 792f
                  add          ra, zero, s2
                  bgeu         a5, t2, 793f
                  addi         t5, t1, 467
784:              auipc        sp, 259358
                  andi         tp, s3, -365
                  or           gp, a4, s10
                  xor          a5, t5, t4
                  and          t0, s5, a3
                  srli         a1, a6, 10
                  and          s0, t5, t5
                  sra          s8, a2, s11
792:              lui          a2, 728113
793:              bltu         a0, a4, 797f
                  srli         s0, gp, 8
                  srai         a4, s11, 16
                  sltu         a0, a4, t4
797:              slli         s3, gp, 6
                  lui          tp, 204244
                  bne          t6, s4, 819f
                  or           a5, s9, a1
                  bgeu         sp, tp, 812f
                  xor          s3, s11, tp
                  slti         t6, a6, 1766
                  slti         ra, s0, -2038
                  slli         tp, s3, 12
                  xor          s0, s10, a2
                  bltu         t4, s2, 815f
                  or           t3, a2, ra
                  nop
                  slt          s2, zero, s7
                  blt          s1, t5, 818f
812:              bgeu         tp, s1, 814f
                  srli         a1, a1, 17
814:              addi         a4, tp, -1968
815:              bge          t3, t6, 822f
                  srli         a4, a6, 15
                  andi         t1, s8, 1400
818:              add          t3, a5, ra
819:              slli         t0, a3, 0
                  sll          s2, s8, t3
                  or           zero, t3, s0
822:              xor          s5, a6, t6
                  slt          t4, t2, a0
                  beq          a1, s5, 837f
                  slli         s3, t6, 18
                  blt          t1, s3, 838f
                  blt          s7, ra, 841f
                  srl          a5, gp, a4
                  ori          s11, a2, 19
                  ori          s8, s7, 336
                  sub          a0, t4, s7
                  beq          a5, a2, 839f
                  bltu         t6, a7, 849f
                  xori         s11, a0, 246
                  slt          a5, zero, zero
                  andi         a5, a7, -218
837:              nop
838:              xor          s1, s11, zero
839:              or           gp, sp, s5
                  beq          s2, a0, 844f
841:              lui          tp, 676239
                  sltiu        t2, s1, -218
                  slti         s3, s5, 1760
844:              sltiu        s1, s10, -890
                  bge          s6, gp, 865f
                  nop
                  srl          a5, s7, a2
                  addi         s0, a7, 325
849:              sra          a1, s4, a1
                  addi         gp, a1, -1268
                  add          t6, s2, t3
                  nop
                  lui          sp, 699459
                  slti         gp, t6, 9
                  bltu         tp, s8, 858f
                  xori         s3, s4, 95
                  ori          zero, t2, 462
858:              bne          a1, s11, 861f
                  auipc        sp, 1047899
                  sll          t5, a4, t1
861:              xor          s3, a6, s9
                  bltu         s5, gp, 863f
863:              srli         t2, s3, 8
                  bltu         a6, s11, 881f
865:              nop
                  slt          s5, s4, s1
                  slt          t6, s0, t3
                  sub          t2, a7, s9
                  sub          ra, t6, s6
                  xor          t5, s11, s3
                  bgeu         t5, s9, 875f
                  ori          t5, tp, 2013
                  addi         gp, tp, -235
                  sltu         t1, t1, t6
875:              sll          s4, s11, s2
                  bgeu         a5, a4, 886f
                  ori          s5, s9, 171
                  xori         t1, a4, -775
                  andi         zero, s9, 608
                  srl          s2, sp, tp
881:              nop
                  slti         gp, t0, -1943
                  beq          t1, s9, 895f
                  srl          a4, a6, t3
                  nop
886:              xor          s2, a4, s0
                  sltu         t4, s5, s9
                  addi         t3, t2, -329
                  sltu         s9, t1, a0
                  slti         s4, a4, 744
                  slti         s1, a3, 1408
                  or           gp, a6, a3
                  add          t2, s9, a5
                  addi         t0, a4, -1532
895:              slt          t6, s5, s2
                  xor          a5, t1, a0
                  srai         a5, t3, 11
                  xori         t6, t4, 235
                  beq          s11, t4, 919f
                  xor          s0, s2, gp
                  slt          s0, a3, s9
                  lui          s4, 769570
                  addi         s1, zero, 7 #init loop 1 counter
                  nop
                  sra          t6, a1, a0
                  slt          t5, s0, a0
                  andi         s10, zero, 1475
                  andi         s7, a2, -1265
                  addi         s3, zero, 7 #init loop 1 limit
                  slli         s9, t5, 24
sub_1_0_1_t:      sub          s11, a7, a2
                  addi         s1, s1, -2 #update loop 1 counter
                  addi         t0, zero, 1 #init loop 0 counter
                  addi         t1, t0, -1149
                  addi         s5, zero, 3 #init loop 0 limit
sub_1_0_0_t:      add          s9, a1, t6
                  and          s2, s7, a6
                  addi         t0, t0, 10 #update loop 0 counter
                  bltu         t0, s5, sub_1_0_0_t #branch for loop 0
                  srl          a1, s8, t0
                  slli         zero, s5, 21
                  nop
                  xor          a1, s1, ra
                  bgeu         s1, s3, sub_1_0_1_t #branch for loop 1
                  sltu         a1, s1, t6
                  or           a0, gp, t5
                  slli         t5, s3, 14
                  srl          t5, a5, t5
                  xori         s7, s9, -1965
                  bge          s8, sp, 925f
                  xor          s7, s4, s3
                  sltu         s4, a3, t6
                  sltiu        t3, t4, 1124
                  addi         gp, zero, -4 #init loop 0 counter
                  sra          t1, s11, s6
                  slt          s4, a0, tp
                  xor          zero, s7, s3
                  srai         s10, t5, 16
                  addi         a5, zero, 18 #init loop 0 limit
                  ori          s4, a0, -234
sub_1_17_0_t:     lui          s2, 414958
                  sltiu        s6, s4, -1286
                  addi         gp, gp, 5 #update loop 0 counter
                  sltu         s10, tp, t3
                  nop
                  xori         t6, a6, 1822
                  srl          ra, a6, t1
                  sub          t5, a1, gp
                  srl          s4, s6, a4
                  lui          tp, 432008
                  sub          s11, a6, t1
                  slt          t6, sp, a0
                  lui          s3, 515526
                  or           t2, t5, t6
                  or           s7, a0, a7
                  sra          t2, sp, s5
                  srl          s5, t1, t5
                  lui          s1, 474910
                  blt          gp, a5, sub_1_17_0_t #branch for loop 0
                  sltu         t5, t4, a4
                  srl          t5, a5, s6
                  bge          s4, a7, 923f
                  beq          s9, t1, 924f
                  add          t4, t4, a3
                  nop
                  bltu         tp, s9, 929f
                  blt          t0, s4, 929f
                  auipc        a1, 513282
919:              add          t6, s6, a3
                  slt          sp, s1, a1
                  and          zero, s0, s0
                  add          t6, s11, s0
923:              beq          a2, a6, 936f
924:              srai         a5, t1, 28
925:              andi         s7, t5, -1198
                  sll          s10, s2, s11
                  or           a4, gp, sp
                  or           sp, s4, a1
929:              nop
                  sra          s10, s9, s1
                  srl          a2, s2, t5
                  lui          t1, 80522
                  xor          s1, sp, s1
                  blt          a1, a3, 939f
                  lui          s4, 330648
936:              addi         s0, a6, -1249
                  slli         s5, a3, 31
                  srli         t5, zero, 7
939:              srl          s1, a2, s0
                  bge          sp, t2, 942f
                  slt          a1, sp, s0
942:              sub          s10, ra, tp
                  bne          t5, s4, 958f
                  and          zero, t0, s4
                  beq          s8, t0, 959f
                  xori         tp, gp, -946
                  srl          s7, a7, t2
                  sltu         s10, zero, s9
                  or           a2, a7, zero
                  sltiu        a2, s6, 1783
                  sub          s4, s7, sp
                  and          s11, s10, t6
                  bge          a7, s6, 964f
                  sll          s4, s0, s10
                  sltu         tp, a1, a2
                  andi         tp, a5, -1902
                  and          t2, t4, a5
958:              bge          a0, a3, 965f
959:              blt          a3, t2, 962f
                  slt          t4, a5, t6
                  sll          t1, a1, s11
962:              andi         s8, sp, 1094
                  srai         s8, t0, 30
964:              xor          sp, gp, t4
965:              auipc        s1, 519049
                  auipc        s0, 858894
                  blt          a5, t2, 980f
                  bltu         s6, t5, 988f
                  ori          sp, t2, 655
                  nop
                  bltu         gp, a0, 984f
                  auipc        s1, 538084
                  bne          s10, t0, 987f
                  slti         t2, t4, -257
                  bgeu         zero, a2, 990f
                  sltu         a0, a0, sp
                  nop
                  sra          tp, s9, t1
                  sra          a2, s9, a4
980:              ori          t5, t5, -353
                  slli         t4, a5, 3
                  addi         s5, s2, 886
                  nop
984:              andi         a0, t3, -626
                  lui          s3, 989555
                  andi         s6, a2, -558
987:              xori         t6, s11, -458
988:              srl          s7, t3, t4
                  bgeu         a0, s11, 991f
990:              bltu         s7, s6, 991f
991:              slli         t6, s9, 23
                  nop
                  xor          t5, t1, a4
                  srli         t2, a0, 11
                  lw           s4, 4(a3)
                  sll          gp, s9, a3
                  addi         a2, t1, 1552
                  and          a4, a2, s3
                  addi         a3, a3, 52
                  sll          t3, s1, gp
                  srai         s6, a0, 7
                  slt          s2, a1, s1
                  xor          t1, s0, a5
1419:             addi x10, x20, 1
1419:             jalr x10, x10, 0
sub_2:            srli         s3, a2, 14
                  bne          s5, s1, sub_2_stack_p
                  nop
                  slti         s11, s7, 1055
                  andi         s11, t0, 162
                  srl          a5, a1, s2
sub_2_stack_p:    addi         a3, a3, -36
                  nop
                  sw           s4, 4(a3)
                  auipc        s11, 304500
                  sll          s1, a4, s1
                  sub          ra, a1, a2
                  or           s9, a0, s7
                  slti         a5, t0, -770
                  andi         s6, tp, 692
                  bne          gp, t2, sub_2_j5 #branch to jump instr
                  slli         t0, a4, 25
                  add          t0, t4, s2
                  or           s9, s7, a0
                  xor          t2, t6, s8
                  srli         ra, s8, 24
sub_2_j5:         jal          s4, sub_5 #jump sub_2 -> sub_5
                  lui          t4, 414462
                  slli         s11, s9, 5
                  ori          a0, s6, -983
                  sra          s4, a0, t0
                  slli         s0, a5, 26
                  and          t2, s7, s2
                  sra          s9, s4, s10
                  and          s9, gp, tp
                  xor          gp, s10, ra
sub_2_j6:         jal          s4, sub_3 #jump sub_2 -> sub_3
                  lui          t4, 463834
                  xori         s9, a2, 959
                  la           s8, sub_5
                  srli         a4, t6, 14
                  auipc        s6, 187929
                  addi         s9, a4, 1366
                  addi         s8, s8, -605
                  sub          sp, a4, zero
                  srai         a1, s5, 16
                  bge          a1, s0, sub_2_j7 #branch to jump instr
                  sltiu        gp, a7, -888
sub_2_j7:         jalr         s4, s8, 606 #jump sub_2 -> sub_5
                  srl          a0, s0, s3
                  la           s7, sub_4
                  srl          t6, a6, gp
                  addi         s7, s7, -110
                  xor          a4, s3, a7
                  bge          t1, t6, sub_2_j8 #branch to jump instr
                  or           t6, ra, t4
                  slt          a4, s5, a5
sub_2_j8:         jalr         s4, s7, 111 #jump sub_2 -> sub_4
                  srli         s8, s0, 9
                  andi         gp, a1, -470
                  sll          a5, tp, s8
                  srl          a1, zero, a6
                  bne          s3, ra, 5f
5:                or           zero, t3, sp
                  bltu         t2, s9, 9f
                  or           t1, zero, s0
                  lui          s3, 8884
9:                ori          s3, tp, 1474
                  lw           s4, 4(a3)
                  addi         a3, a3, 36
                  sll          a5, a1, ra
                  slti         s0, s0, 1802
                  ori          s5, ra, 1851
68:               addi x31, x20, 0
68:               jalr x31, x31, 0
sub_4:            bge          a2, t3, sub_4_stack_p
                  slt          sp, a6, s2
                  sltu         s11, a1, t3
                  sub          t2, s3, t6
                  addi         t1, s9, 391
                  srl          t1, t2, tp
sub_4_stack_p:    addi         a3, a3, -52
                  sw           s4, 4(a3)
                  sub          s6, t2, s11
                  or           s8, zero, t6
                  addi         s11, s1, -1790
                  addi         t1, zero, 7 #init loop 1 counter
                  addi         t3, zero, 6 #init loop 1 limit
sub_4_5_1_t:      lui          s7, 796567
                  addi         t1, t1, -2 #update loop 1 counter
                  addi         s6, zero, 1 #init loop 0 counter
                  addi         ra, zero, 3 #init loop 0 limit
sub_4_5_0_t:      addi         t0, s4, -1554
                  addi         s6, s6, 10 #update loop 0 counter
                  blt          s6, ra, sub_4_5_0_t #branch for loop 0
                  bgeu         t1, t3, sub_4_5_1_t #branch for loop 1
                  sub          a2, s8, a0
                  addi         s6, zero, 8 #init loop 0 counter
                  or           s5, s6, s3
                  add          t4, a4, a3
                  sra          a4, t1, t0
                  slli         s3, a3, 28
                  auipc        s1, 170354
                  addi         s8, zero, 8 #init loop 0 limit
                  sltiu        t0, t4, 580
                  lui          zero, 211384
                  xor          t6, t0, a1
                  sltiu        a4, gp, -658
                  sltu         s11, a5, a7
                  sub          s11, s11, s9
                  sltiu        a1, a2, -596
                  srl          t2, s4, a4
                  slti         t2, t0, 367
sub_4_1_0_t:      auipc        s7, 867800
                  addi         s6, s6, -7 #update loop 0 counter
                  srl          s3, t2, a0
                  addi         tp, t3, -754
                  ori          t0, t3, -1704
                  sll          a4, t1, s3
                  xor          s10, s11, s3
                  add          t0, a6, t5
                  sub          s11, t4, a3
                  bgeu         s6, s8, sub_4_1_0_t #branch for loop 0
                  sll          a1, s5, ra
                  addi         s1, zero, 6 #init loop 0 counter
                  sub          zero, s6, t5
                  addi         s4, zero, 10 #init loop 0 limit
                  sltiu        ra, s6, -1385
sub_4_3_0_t:      add          s2, s9, a4
                  slt          a1, t5, t1
                  addi         s1, s1, 2 #update loop 0 counter
                  and          s11, a0, s1
                  addi         gp, s7, 330
                  bltu         s1, s4, sub_4_3_0_t #branch for loop 0
                  addi         t6, a2, -1125
                  addi         a0, zero, 10 #init loop 1 counter
                  addi         s8, zero, 10 #init loop 1 limit
                  xor          a4, a5, t1
sub_4_4_1_t:      sltiu        a2, ra, 197
                  srai         t5, a0, 1
                  sra          t5, t6, s4
                  addi         a0, a0, -8 #update loop 1 counter
                  addi         gp, zero, 10 #init loop 0 counter
                  ori          a4, gp, 848
                  addi         t0, zero, 10 #init loop 0 limit
sub_4_4_0_t:      slt          t3, s10, a1
                  addi         gp, gp, -8 #update loop 0 counter
                  bgeu         gp, t0, sub_4_4_0_t #branch for loop 0
                  bgeu         a0, s8, sub_4_4_1_t #branch for loop 1
                  sll          a5, a2, t4
                  addi         gp, zero, 7 #init loop 0 counter
                  srli         s8, gp, 13
                  andi         t5, a2, 1918
                  or           s10, t6, zero
                  addi         t4, zero, 5 #init loop 0 limit
                  slli         a2, ra, 13
sub_4_0_0_t:      sltiu        s8, a4, 1305
                  add          t1, t3, s7
                  add          s4, t3, a3
                  addi         gp, gp, -3 #update loop 0 counter
                  sltiu        t2, s5, 759
                  xor          s6, s4, s3
                  auipc        s4, 115902
                  srai         a0, t6, 12
                  sub          a1, t3, t0
                  sub          s4, s4, a5
                  nop
                  bgeu         gp, t4, sub_4_0_0_t #branch for loop 0
                  nop
                  addi         s4, zero, 3 #init loop 0 counter
                  andi         t5, s7, 173
                  addi         s1, zero, 3 #init loop 0 limit
sub_4_2_0_t:      sltiu        s8, t0, 64
                  addi         s4, s4, -2 #update loop 0 counter
                  andi         t5, a6, 1462
                  bgeu         s4, s1, sub_4_2_0_t #branch for loop 0
                  nop
                  bge          a3, a5, 13f
                  add          t2, a2, t1
                  slt          ra, ra, t0
                  lui          s4, 921545
                  bltu         a3, s0, 16f
                  slti         gp, s5, 1356
                  lui          t3, 799934
                  slti         t6, t3, -1622
                  bgeu         s0, s5, 12f
                  bge          s7, s10, 19f
                  auipc        s2, 931522
                  bltu         a1, gp, 23f
12:               lui          a2, 168504
13:               beq          t4, t4, 28f
                  beq          gp, s0, 23f
                  addi         t4, t6, 920
16:               bgeu         ra, a3, 35f
                  sltiu        s2, s10, -1343
                  slli         ra, t5, 15
19:               srai         t0, t3, 19
                  nop
                  slti         s3, s10, 286
                  sll          sp, a6, s7
23:               blt          s6, gp, 29f
                  bne          s6, s11, 27f
                  sra          s1, t0, gp
                  srl          tp, a6, t3
27:               sltiu        s1, a6, 130
28:               sll          zero, s3, tp
29:               sll          s0, s7, s2
                  sub          s3, zero, gp
                  addi         a2, t1, 1472
                  beq          a4, s11, 35f
                  addi         zero, s1, 1967
                  ori          t2, ra, -2047
35:               add          t3, a2, sp
                  add          a0, a7, a3
                  bgeu         zero, a0, 50f
                  bltu         s7, a7, 53f
                  srai         a2, t6, 2
                  or           s2, s5, t0
                  auipc        s2, 324228
                  nop
                  bltu         s5, s2, 62f
                  xor          t1, s7, a5
                  lui          t5, 1028705
                  slti         a2, a2, -1180
                  bgeu         s3, t6, 51f
                  slt          s9, t2, a1
                  sltu         t3, s4, s4
50:               bltu         s7, a6, 55f
51:               andi         s10, t2, 983
                  add          s6, a5, a0
53:               blt          s2, s10, 55f
                  andi         s6, t1, -2024
55:               blt          a6, a5, 69f
                  bne          ra, a2, 65f
                  auipc        zero, 301255
                  or           s2, s10, s11
                  xor          sp, sp, s5
                  slli         zero, s1, 5
                  ori          s11, t3, -1855
62:               sll          s7, t3, s6
                  blt          s0, t2, 73f
                  srai         s6, t1, 17
65:               sltiu        a4, s2, -376
                  add          s10, a5, s6
                  xori         s9, t6, -1860
                  slti         s6, s2, -1658
69:               and          a0, a7, ra
                  blt          ra, a6, 72f
                  slt          s6, a4, t2
72:               sub          s4, s1, a2
73:               srl          s11, a3, s1
                  addi         s6, s5, -161
                  srai         a4, zero, 4
                  beq          s8, sp, 92f
                  bne          a6, s7, 85f
                  andi         s10, s6, -953
                  xori         s9, ra, -1956
                  slti         a5, a4, -375
                  ori          s2, a5, 946
                  and          t6, s7, s8
                  srai         s6, a6, 24
                  sltiu        gp, s8, -1970
85:               andi         tp, t2, 1345
                  slt          t1, s6, s11
                  bgeu         a1, t0, 98f
                  ori          t3, ra, 521
                  lui          t0, 508358
                  slt          t0, s7, a2
                  xori         ra, s7, 857
92:               srli         gp, t4, 9
                  sll          sp, s7, a3
                  slti         s11, t2, -1691
                  xor          t2, s3, t4
                  and          s2, s11, ra
                  sltu         t6, t5, s7
98:               add          s4, a0, t6
                  sll          a0, t1, s9
                  xor          t2, gp, a1
                  blt          s5, s5, 105f
                  srli         s11, t6, 0
                  xor          t3, s10, t3
                  and          a4, a4, a6
105:              and          s10, a0, a7
                  and          t3, s3, s4
                  sltu         a0, t0, s1
                  xor          a1, s4, s10
                  bgeu         a7, s10, 113f
                  xor          s4, s6, t5
                  auipc        a5, 144251
                  nop
113:              auipc        s9, 911084
                  add          sp, gp, a7
                  auipc        s5, 839041
                  sltu         t2, s3, t2
                  slti         s1, t2, -1843
                  xori         s0, a6, 829
                  sra          t1, s2, s5
                  and          s4, a5, s5
                  sll          a4, a3, a3
                  lui          s11, 1020607
                  blt          a1, s3, 136f
                  blt          s4, ra, 133f
                  and          s9, a6, a4
                  xor          s4, t5, t6
                  slli         s4, t1, 3
                  bltu         s11, sp, 148f
                  slti         s10, s7, -1396
                  srai         t5, tp, 15
                  bge          a6, a6, 136f
                  bltu         s7, t4, 134f
133:              bgeu         s6, a3, 137f
134:              xor          a4, s3, s10
                  slli         s1, sp, 16
136:              sra          s6, t6, s8
137:              srl          t3, a0, t4
                  auipc        s11, 469991
                  slt          s3, t0, s10
                  sltu         t2, s7, t4
                  srl          s0, s10, a7
                  ori          tp, s3, -64
                  bltu         s0, t2, 147f
                  slti         s8, a4, -1293
                  and          s7, s8, s8
                  slli         s3, a1, 4
147:              sll          s0, s6, s8
148:              blt          a3, t4, 160f
                  xor          t0, s6, s0
                  xor          a2, t5, a6
                  blt          a0, tp, 165f
                  bgeu         s2, a5, 163f
                  xor          s6, a6, a2
                  sll          s10, s4, t4
                  srai         a1, s5, 9
                  add          s8, t5, a6
                  slli         t1, s8, 3
                  sll          t3, s5, t1
                  beq          s11, gp, 164f
160:              slli         s11, s7, 5
                  bne          t1, tp, 170f
                  addi         s8, a2, -457
163:              bge          a5, t1, 176f
164:              bge          tp, s5, 168f
165:              sub          s1, zero, a1
                  blt          tp, a1, 176f
                  srli         ra, t5, 0
168:              ori          a2, a5, -660
                  sltiu        a4, t0, -1390
170:              srai         a0, t0, 29
                  or           s10, s7, a3
                  sltu         a4, t6, s0
                  andi         s10, t3, 1299
                  sra          a2, s4, t2
                  srai         s2, a2, 30
176:              addi         t5, t3, 1988
                  srai         a4, a3, 21
                  blt          a5, s4, 187f
                  andi         t5, ra, 1838
                  sltiu        t5, s11, -1921
                  xor          s8, s2, ra
                  addi         s8, s2, 765
                  lui          s7, 912625
                  or           a0, s5, sp
                  auipc        tp, 432895
                  bne          a4, t3, 201f
187:              sll          t5, ra, a6
                  slli         t2, s3, 21
                  lui          t3, 104196
                  auipc        s3, 17345
                  bltu         t1, a1, 203f
                  lui          zero, 984620
                  sra          t6, gp, a6
                  andi         s0, t6, 2036
                  sra          t6, t1, s10
                  andi         t4, a5, -770
                  sra          ra, t3, t6
                  bgeu         gp, a5, 211f
                  or           s1, a5, s0
                  bge          a2, zero, 205f
201:              ori          a4, s7, -1147
                  slt          s1, t1, s5
203:              slli         sp, s11, 0
                  sra          t5, s10, t2
205:              add          t5, zero, a2
                  sltu         t1, a0, a6
                  add          s0, s3, s1
                  bne          a3, sp, 216f
                  bne          a3, s6, 225f
                  srli         s4, zero, 18
211:              addi         a1, s3, -954
                  or           a5, t3, gp
                  andi         a0, ra, -108
                  slti         t3, a1, -168
                  bltu         a0, t3, 228f
216:              ori          s5, t4, -1449
                  nop
                  bltu         s10, s3, 228f
                  add          t5, s1, a3
                  bne          t0, t2, 240f
                  lui          a1, 390088
                  xori         s4, s3, -377
                  lui          s0, 307472
                  add          a2, s6, a3
225:              andi         s2, zero, -1648
                  sll          a1, s8, ra
                  slli         t5, s9, 9
228:              auipc        t6, 633429
                  beq          t4, t0, 232f
                  xori         a2, s4, 522
                  sll          ra, s6, t0
232:              slt          s5, a5, s4
                  srai         t6, a0, 2
                  auipc        gp, 46605
                  add          t0, s7, t2
                  slli         s5, a3, 8
                  blt          a5, a6, 243f
                  and          tp, t1, s0
                  sub          a5, t0, s2
240:              sub          a4, sp, s2
                  sub          t6, s4, t6
                  sra          s8, a7, s9
243:              srli         t6, s3, 2
                  slli         s10, tp, 26
                  lui          t4, 281094
                  nop
                  srli         zero, a2, 15
                  bgeu         a1, gp, 252f
                  addi         a4, a3, 373
                  ori          s1, s5, -1686
                  xor          s4, tp, gp
252:              bge          t5, a1, 271f
                  srai         s11, s11, 13
                  nop
                  srl          s8, t2, a3
                  sltiu        t0, s1, 530
                  ori          s7, gp, -13
                  nop
                  sub          t3, s7, a5
                  xori         s11, t5, -1219
                  and          t6, tp, a7
                  sra          s1, s1, s2
                  ori          t0, t0, -944
                  bge          a0, sp, 279f
                  sra          s6, s2, a6
                  auipc        s10, 315756
                  sltu         s10, t0, s8
                  beq          t3, s11, 277f
                  or           t4, sp, a3
                  or           t4, a5, zero
271:              ori          t2, tp, 970
                  sltu         s7, t6, a2
                  sltiu        sp, s8, -596
                  blt          t2, t2, 276f
                  srai         s7, t0, 25
276:              or           s6, a2, ra
277:              sltiu        a4, s1, -630
                  and          sp, s5, a0
279:              addi         s0, s10, 995
                  xor          s7, a0, gp
                  ori          s9, a5, 1228
                  blt          a0, s1, 285f
                  bge          t2, s1, 302f
                  xori         zero, ra, -1403
285:              or           s6, t5, t0
                  sra          gp, t3, s4
                  or           a2, t1, t6
                  bne          sp, ra, 294f
                  nop
                  srli         a0, s7, 18
                  bltu         a7, ra, 296f
                  sra          s5, a3, t2
                  andi         t5, t5, 67
294:              nop
                  beq          s1, zero, 299f
296:              sub          t5, s7, t2
                  or           s1, t6, a5
                  sltiu        sp, a3, 1452
299:              bltu         s5, s1, 319f
                  bltu         s0, s6, 315f
                  sll          s9, a0, s1
302:              or           a1, ra, t4
                  slti         s11, t5, 1943
                  slli         a0, a2, 30
                  xori         s4, gp, -2027
                  sll          t1, s6, ra
                  lui          a0, 447332
                  slli         s1, s10, 20
                  sub          t1, a5, zero
                  srl          a1, s9, t0
                  slti         s11, t1, 372
                  xori         s6, s10, -1273
                  and          s10, tp, t0
                  bne          ra, a6, 323f
315:              beq          s11, s2, 324f
                  blt          s4, t6, 328f
                  sra          t5, s8, s5
                  bgeu         s6, zero, 330f
319:              sltiu        t4, ra, -129
                  addi         s0, s5, -1956
                  bge          a7, a2, 329f
                  slt          s0, t3, a2
323:              xori         ra, a1, -1595
324:              beq          s1, s7, 332f
                  ori          gp, a5, 1127
                  slt          zero, t1, tp
                  blt          s0, s10, 331f
328:              auipc        s5, 1035639
329:              or           a4, t1, zero
330:              bltu         a0, a6, 332f
331:              xor          s4, s8, ra
332:              and          a4, gp, s10
                  srl          s8, sp, s11
                  lw           s4, 4(a3)
                  auipc        a2, 824181
                  andi         s5, s2, 467
                  addi         a3, a3, 52
                  sltiu        s8, s5, -415
                  and          t6, s5, s11
                  sub          s5, a1, t6
443:              addi x10, x20, 1
443:              jalr x10, x10, 0
sub_3:            xor          s2, t3, a1
                  add          s6, t0, s3
                  or           s5, s5, a5
                  sltiu        gp, s11, 1092
                  add          t2, s10, t2
                  bne          s6, s10, sub_3_stack_p
                  ori          a2, t0, -304
                  sub          tp, t3, a5
sub_3_stack_p:    addi         a3, a3, -56
                  sll          t6, a3, s10
                  sw           s4, 4(a3)
                  andi         s11, gp, 1586
                  addi         s9, zero, -3 #init loop 1 counter
                  sltu         s7, t4, a2
                  addi         gp, zero, 15 #init loop 1 limit
sub_3_1_1_t:      sltiu        t2, s5, 1347
                  xor          s1, sp, s2
                  slti         s6, t6, -1704
                  or           t6, t5, t6
                  sub          zero, s8, a3
                  addi         s9, s9, 3 #update loop 1 counter
                  xori         s6, s8, -1475
                  addi         a1, zero, 10 #init loop 0 counter
                  andi         s2, a2, 684
                  addi         s11, zero, 10 #init loop 0 limit
                  lui          s6, 646296
                  lui          a5, 787148
                  slti         sp, s10, 1771
sub_3_1_0_t:      xor          s10, zero, s5
                  xor          ra, a2, zero
                  srl          t3, t2, s7
                  addi         a1, a1, -6 #update loop 0 counter
                  sub          s0, a4, a2
                  nop
                  slt          t2, s4, sp
                  srai         a4, t2, 5
                  and          tp, a3, t1
                  bgeu         a1, s11, sub_3_1_0_t #branch for loop 0
                  or           t1, s0, tp
                  srai         s7, t4, 2
                  xor          t4, a2, a2
                  slt          zero, sp, a3
                  blt          s9, gp, sub_3_1_1_t #branch for loop 1
                  add          s2, a7, s0
                  addi         s0, zero, -8 #init loop 1 counter
                  addi         ra, zero, 4 #init loop 1 limit
                  sll          s6, s0, t5
sub_3_3_1_t:      ori          a2, a1, 16
                  addi         s0, s0, 6 #update loop 1 counter
                  addi         s3, a3, -288
                  xor          s1, a7, gp
                  addi         t3, s0, 400
                  ori          zero, a6, -1127
                  addi         t1, zero, -2 #init loop 0 counter
                  slt          s2, t5, s5
                  xori         t2, s7, 1199
                  add          s2, t6, s2
                  addi         t4, zero, -6 #init loop 0 limit
                  ori          s11, t3, 380
                  sub          s11, t6, a6
sub_3_3_0_t:      slti         s10, a6, -299
                  and          s6, t5, s10
                  addi         t1, t1, -4 #update loop 0 counter
                  bne          t1, t4, sub_3_3_0_t #branch for loop 0
                  and          a4, t3, t0
                  ori          s8, s6, -1937
                  beq          s0, ra, sub_3_3_1_t #branch for loop 1
                  and          s6, t0, s5
                  addi         s6, zero, 3 #init loop 1 counter
                  addi         a1, s8, 1036
                  addi         t1, zero, 6 #init loop 1 limit
                  ori          t6, s0, -1922
sub_3_2_1_t:      nop
                  sra          ra, t6, s0
                  addi         s6, s6, 10 #update loop 1 counter
                  auipc        a2, 666674
                  addi         t0, zero, -3 #init loop 0 counter
                  addi         s4, zero, -16 #init loop 0 limit
sub_3_2_0_t:      lui          s2, 43294
                  lui          a1, 370036
                  addi         t0, t0, -6 #update loop 0 counter
                  sub          s5, s5, s11
                  bge          t0, s4, sub_3_2_0_t #branch for loop 0
                  xor          s1, a2, s3
                  blt          s6, t1, sub_3_2_1_t #branch for loop 1
                  andi         t3, a7, 1190
                  addi         t3, zero, 7 #init loop 0 counter
                  auipc        a0, 452622
                  add          s1, a5, t2
                  addi         t5, zero, 1887
                  and          sp, t0, s9
                  nop
                  sub          a0, t4, t4
                  nop
                  addi         s4, zero, 17 #init loop 0 limit
                  addi         t0, s2, -1674
                  add          tp, a3, zero
                  auipc        s1, 89278
                  nop
sub_3_7_0_t:      auipc        t2, 394585
                  addi         t3, t3, 10 #update loop 0 counter
                  and          s11, s11, t2
                  auipc        s6, 905258
                  sll          s0, t6, a1
                  sub          zero, s11, a4
                  srai         tp, s6, 3
                  bne          t3, s4, sub_3_7_0_t #branch for loop 0
                  lui          s5, 654328
                  addi         s11, zero, 10 #init loop 1 counter
                  srai         s0, t0, 3
                  add          t6, s9, a6
                  xor          t0, a6, s0
                  sub          sp, a7, t4
                  sll          gp, s3, gp
                  addi         s5, zero, 10 #init loop 1 limit
                  nop
sub_3_6_1_t:      xori         ra, tp, 1610
                  addi         s11, s11, -5 #update loop 1 counter
                  and          a0, a5, s3
                  xori         t0, t6, -1040
                  addi         t1, zero, 0 #init loop 0 counter
                  addi         s6, zero, -18 #init loop 0 limit
                  add          t4, s2, tp
sub_3_6_0_t:      sltiu        s1, s3, -1221
                  ori          t5, sp, 1028
                  nop
                  ori          s1, t4, 1680
                  addi         t1, t1, -6 #update loop 0 counter
                  sltiu        s3, a4, -1227
                  lui          sp, 218984
                  addi         tp, s1, 460
                  slli         zero, t1, 3
                  beq          t1, s6, sub_3_6_0_t #branch for loop 0
                  sltu         a1, s0, a3
                  lui          t5, 240290
                  lui          t0, 884539
                  and          s4, a2, s0
                  ori          t3, gp, -1703
                  xor          a5, t1, tp
                  bgeu         s11, s5, sub_3_6_1_t #branch for loop 1
                  xori         t4, zero, 1099
                  addi         t4, zero, 8 #init loop 0 counter
                  addi         t1, zero, 0 #init loop 0 limit
                  srai         sp, t0, 4
sub_3_4_0_t:      xori         a4, s6, -696
                  auipc        t2, 228030
                  sltu         a4, a6, tp
                  sltiu        t3, a2, 1051
                  sub          s8, a0, a6
                  ori          a4, a6, 211
                  slti         a4, a4, 2029
                  auipc        t5, 338374
                  sll          s7, a5, s0
                  addi         t4, t4, -8 #update loop 0 counter
                  ori          s7, s4, -1098
                  ori          s10, a4, 1588
                  sltu         a5, s2, s11
                  slti         gp, a4, 272
                  ori          a5, t2, -809
                  ori          a2, a4, -614
                  bne          t4, t1, sub_3_4_0_t #branch for loop 0
                  srai         t6, s3, 12
                  addi         a5, zero, 1 #init loop 0 counter
                  and          ra, a2, t1
                  auipc        a4, 756303
                  srai         a4, s3, 7
                  xor          t1, s7, a5
                  addi         s5, zero, -19 #init loop 0 limit
                  sltiu        t0, s1, 652
sub_3_5_0_t:      ori          t2, s4, 824
                  or           s11, t1, s1
                  addi         a5, a5, -5 #update loop 0 counter
                  slti         t6, s0, 1047
                  auipc        a0, 813378
                  beq          a5, s5, sub_3_5_0_t #branch for loop 0
                  sub          t2, t2, t4
                  addi         ra, zero, -8 #init loop 1 counter
                  addi         s6, zero, 2 #init loop 1 limit
sub_3_0_1_t:      nop
                  addi         ra, ra, 5 #update loop 1 counter
                  addi         a2, zero, 2 #init loop 0 counter
                  sub          a1, a4, s2
                  addi         t0, zero, -10 #init loop 0 limit
sub_3_0_0_t:      sub          tp, s5, zero
                  addi         a2, a2, -4 #update loop 0 counter
                  bge          a2, t0, sub_3_0_0_t #branch for loop 0
                  beq          ra, s6, sub_3_0_1_t #branch for loop 1
                  srai         t4, a5, 10
                  nop
                  xori         gp, a5, 1300
                  xori         zero, a3, 1847
                  srai         t5, tp, 25
                  andi         s7, a6, 975
                  sub          t3, t4, a7
                  srai         zero, s5, 25
                  bgeu         a2, s2, 21f
                  srl          s10, t3, a2
                  xori         ra, t2, 1117
                  sltu         t2, s3, a4
                  blt          s9, s7, 15f
                  add          s4, s0, sp
                  srl          s8, s9, tp
                  add          s5, a6, s4
15:               andi         a4, a2, -1076
                  sub          t5, t5, t0
                  sll          a4, s3, a0
                  beq          gp, s1, 22f
                  addi         a1, t6, -1949
                  sra          sp, a1, tp
21:               sra          zero, s1, s11
22:               bltu         t0, tp, 32f
                  slt          s5, s10, s8
                  xori         s8, a3, 1611
                  add          t3, a7, a0
                  beq          t0, zero, 46f
                  sltiu        t5, a4, -955
                  ori          a5, t2, 340
                  sltu         t0, tp, t6
                  and          s0, a2, t2
                  nop
32:               sub          s3, s11, gp
                  bne          a6, zero, 36f
                  slti         gp, a5, 1867
                  add          s8, ra, tp
36:               sltu         tp, t4, a2
                  xori         t5, a6, 558
                  srai         s1, s5, 6
                  slti         a1, s3, -1342
                  slt          s9, a7, t1
                  srl          ra, t4, a7
                  or           s4, a1, t6
                  add          s0, a4, s2
                  bge          s6, t1, 45f
45:               xor          t3, s10, a6
46:               bne          a1, gp, 59f
                  sra          zero, s3, s4
                  srai         s6, s2, 27
                  or           ra, t5, t1
                  add          t6, s10, a1
                  or           s3, a2, sp
                  sltiu        t1, a4, -162
                  add          t6, sp, s0
                  slti         sp, sp, 712
                  slli         s9, s10, 0
                  sltiu        t5, sp, -1330
                  slli         t0, sp, 16
                  blt          s9, t6, 68f
59:               sltiu        s6, s2, -138
                  auipc        s11, 392958
                  sra          t0, gp, t1
                  sll          t0, s7, s7
                  or           t6, t1, gp
                  lui          s10, 270108
                  lui          t3, 61871
                  srai         tp, a5, 2
                  srli         s11, s8, 4
68:               blt          s6, zero, 76f
                  xor          t2, a6, s1
                  srai         s0, s2, 6
                  or           s2, t4, t0
                  or           t4, t3, a7
                  addi         s9, a7, -168
                  xor          ra, s2, s7
                  sltu         t2, s11, s8
76:               beq          t5, s4, 80f
                  xor          s2, s0, t6
                  addi         s5, s5, 1520
                  and          tp, t3, s3
80:               beq          a0, s7, 96f
                  sltu         zero, zero, tp
                  bne          t5, s6, 92f
                  slt          sp, t5, s4
                  sra          t2, a4, t2
                  sra          t0, a5, s9
                  bltu         a2, a4, 98f
                  sltiu        s7, a4, 275
                  slli         zero, s11, 3
                  lui          zero, 399367
                  andi         t1, s5, 1056
                  beq          a4, s4, 100f
92:               bne          s8, gp, 100f
                  xor          t4, s1, t2
                  sltiu        t0, gp, 57
                  slli         a5, t6, 26
96:               or           ra, tp, a6
                  xori         s1, s2, -1167
98:               sll          t6, t4, s6
                  bltu         s6, s2, 100f
100:              srai         s4, s8, 17
                  sub          t1, t2, t0
                  slli         t6, s1, 16
                  srl          a4, s5, s3
                  auipc        s3, 323719
                  and          s0, s10, s5
                  sll          t4, a3, t4
                  slti         t2, s3, 1488
                  nop
                  sltiu        gp, gp, -519
                  addi         t1, a3, -878
                  bgeu         t6, s8, 128f
                  or           t2, s3, a3
                  bne          a4, t3, 132f
                  sra          sp, a6, s8
                  or           s9, a6, s0
                  bgeu         a6, s4, 134f
                  sll          s9, a5, a7
                  bltu         t2, s9, 134f
                  slli         a5, a3, 22
                  ori          s2, s6, 658
                  ori          sp, t2, 358
                  or           t5, a7, s6
                  nop
                  srli         s11, a4, 23
                  xori         s11, s10, 878
                  xor          t5, s4, a2
                  srli         s6, ra, 13
128:              slti         s3, s11, 345
                  add          sp, gp, s11
                  blt          s8, tp, 137f
                  bge          s6, t1, 149f
132:              ori          s3, s0, 85
                  sll          s8, a6, ra
134:              or           s3, s11, gp
                  nop
                  ori          t1, t1, -688
137:              sll          a2, t0, gp
                  sra          t5, t3, s0
                  bltu         s2, s2, 150f
                  srai         s2, s3, 12
                  xori         a1, t0, 25
                  bltu         t5, t3, 156f
                  ori          t2, ra, -974
                  sll          t3, sp, a1
                  sltu         t5, zero, a3
                  andi         ra, sp, 1171
                  srli         s7, t1, 15
                  bge          t4, s8, 162f
149:              slti         s11, t2, 1584
150:              xor          s11, a4, s2
                  slli         t5, a1, 15
                  xor          s10, t6, s4
                  bne          ra, s3, 154f
154:              addi         a5, a2, 1159
                  bne          t1, s6, 168f
156:              or           s5, t0, a6
                  auipc        zero, 997777
                  srai         s7, gp, 18
                  sltu         s2, t5, a6
                  bge          a0, s2, 163f
                  slli         s4, t4, 31
162:              bge          s9, t1, 174f
163:              andi         s1, sp, 1208
                  bne          a4, s1, 180f
                  slt          s5, a5, s0
                  bltu         a0, t6, 167f
167:              bne          s5, s10, 181f
168:              bge          t4, s9, 172f
                  lui          t6, 855739
                  lui          a4, 285866
                  bltu         a1, t2, 189f
172:              bltu         s6, t5, 182f
                  slt          s6, t3, a7
174:              nop
                  sra          t0, a0, s0
                  xori         s11, a6, 1749
                  or           a1, t1, t5
                  auipc        s11, 847551
                  add          s10, t4, s3
180:              slt          s0, s10, s3
181:              sltu         s6, t2, gp
182:              srai         a4, s3, 1
                  ori          s4, gp, 1750
                  sub          s9, s9, a5
                  sub          a0, t2, a0
                  bltu         s5, s3, 196f
                  slt          s4, a7, s0
                  bltu         s4, s8, 198f
189:              beq          s10, zero, 192f
                  srai         t5, s11, 16
                  bne          s11, sp, 199f
192:              and          a0, t4, a6
                  or           sp, t2, s7
                  srli         s10, ra, 8
                  or           s2, a2, sp
196:              beq          t0, ra, 210f
                  auipc        s4, 930954
198:              bge          a4, t4, 212f
199:              srai         a4, a1, 23
                  sltiu        s6, a3, 1674
                  slli         t2, a2, 27
                  sll          s3, a6, a5
                  srai         s4, a2, 15
                  bltu         a5, s5, 205f
205:              slli         gp, ra, 24
                  sltu         ra, s10, s3
                  srai         zero, a6, 6
                  ori          a0, s10, 377
                  sub          t6, a6, s1
210:              srl          t5, s7, s1
                  add          t1, s11, t4
212:              andi         s0, s6, -440
                  andi         t2, sp, 886
                  or           s7, a4, zero
                  sltu         t6, s7, s10
                  bge          t1, a0, 219f
                  or           s4, s5, a6
                  srli         s7, a7, 11
219:              bge          t2, s5, 223f
                  xori         s7, t0, -530
                  nop
                  bge          gp, t1, 240f
223:              blt          a3, s1, 239f
                  andi         zero, s8, 1690
                  addi         sp, zero, 377
                  bltu         t3, s6, 233f
                  srl          t6, s1, s6
                  sltu         s6, a6, a2
                  srli         t4, zero, 22
                  lui          t5, 858312
                  slti         a4, s4, -1421
                  slt          s7, gp, s2
233:              blt          s5, a7, 241f
                  bne          sp, s5, 238f
                  xori         gp, t4, -539
                  auipc        ra, 646032
                  sra          s0, s7, a0
238:              xor          tp, t6, s5
239:              sll          a1, s9, a4
240:              lui          s1, 401584
241:              auipc        gp, 1005299
                  srli         a0, s1, 0
                  blt          s10, t1, 263f
                  sub          t4, s11, a7
                  ori          s3, a5, -730
                  bge          s1, s5, 259f
                  addi         s2, zero, 5 #init loop 0 counter
                  sra          s11, s3, t2
                  nop
                  slli         s1, tp, 1
                  lui          a4, 666416
                  xori         t2, t5, -1323
                  sltiu        a1, a1, 1851
                  slti         tp, s9, 862
                  srli         a5, s5, 22
                  sub          t6, s7, t1
                  slti         s0, a4, 545
                  slt          s4, s3, s0
                  addi         t0, zero, 17 #init loop 0 limit
                  sra          s1, a7, zero
sub_3_8_0_t:      auipc        s6, 127668
                  srl          t1, t0, s5
                  addi         s2, s2, 8 #update loop 0 counter
                  and          t1, s1, s4
                  srli         zero, a3, 6
                  xori         sp, s3, 236
                  sltu         a0, s6, a7
                  xori         t4, a2, 790
                  xori         a2, a7, 536
                  bltu         s2, t0, sub_3_8_0_t #branch for loop 0
                  or           s5, a3, tp
                  xor          a4, t4, t1
                  lui          s8, 86712
                  ori          tp, t0, -1968
                  lui          a2, 958295
                  beq          a2, tp, 252f
252:              sll          s2, s4, t4
                  xor          a1, s7, ra
                  sra          s0, a6, s11
                  blt          s7, s1, 266f
                  lui          a0, 41949
                  auipc        s1, 304926
                  sub          t3, t3, t1
259:              or           s11, s3, s4
                  ori          s7, a0, -28
                  bge          a7, a2, 280f
                  slt          s3, s9, s11
263:              sll          s8, gp, s1
                  slli         t3, s1, 30
                  xori         a0, sp, -953
266:              bne          t3, s5, 279f
                  slti         t4, s0, -837
                  bge          a6, a7, 277f
                  slli         s11, s6, 24
                  srli         t1, a6, 23
                  nop
                  add          s6, s5, s9
                  ori          s0, t2, -1945
                  bge          tp, a1, 286f
                  nop
                  nop
277:              nop
                  sra          s6, ra, a3
279:              bgeu         a6, t1, 296f
280:              or           a1, ra, zero
                  slti         a1, s0, -1243
                  and          sp, t0, s0
                  bgeu         t5, s11, 295f
                  and          s6, t1, zero
                  or           ra, s11, t5
286:              slt          s2, zero, s1
                  sltiu        t0, a0, 291
                  andi         s0, s1, -580
                  xori         s1, s8, -1821
                  blt          a7, a4, 308f
                  slt          sp, s1, s0
                  sub          s0, s8, a0
                  slli         s6, tp, 0
                  sltiu        s4, a7, 1307
295:              srai         gp, t1, 6
296:              nop
                  add          s3, s11, s1
                  sltiu        s3, s2, -1328
                  sra          s8, t5, s4
                  bgeu         t2, sp, 317f
                  sltu         s6, t3, a7
                  srai         s0, a7, 2
                  addi         s1, a1, 122
                  srl          s11, t3, a2
                  auipc        s4, 1001326
                  ori          s10, a6, -1431
                  sra          s5, tp, zero
308:              beq          a0, s4, 312f
                  bge          t6, tp, 316f
                  addi         s4, a7, -1712
                  addi         t3, zero, -401
312:              auipc        t5, 225671
                  ori          t4, s6, 1719
                  bgeu         a6, s4, 322f
                  slti         s11, t5, -1404
316:              auipc        t5, 773311
317:              bltu         t0, s3, 320f
                  addi         s0, a3, -1339
                  bge          t5, t3, 333f
320:              bltu         s1, zero, 329f
                  lui          t6, 377533
322:              slti         a1, t3, 899
                  andi         s3, t5, 1845
                  srai         t1, a7, 2
                  sltu         a4, s2, s4
                  xor          s1, sp, a0
                  srl          s6, zero, s4
                  bgeu         a5, s11, 336f
329:              srl          t5, s3, a6
                  bgeu         a7, ra, 346f
                  sltiu        t2, t2, -1127
                  slt          s11, s9, a6
333:              ori          s5, s5, -986
                  bge          s10, s10, 344f
                  lui          a0, 954918
336:              slt          tp, s2, a0
                  addi         ra, s10, 1364
                  slt          tp, t5, a5
                  sll          s11, sp, a5
                  srli         a4, tp, 13
                  add          a0, s6, t4
                  bge          t3, s6, 361f
                  sltiu        a0, s7, 729
344:              sltu         tp, t4, a1
                  beq          s5, a6, 363f
346:              and          zero, s6, t0
                  nop
                  sub          s0, s1, s5
                  nop
                  bne          a4, s11, 360f
                  beq          s6, s4, 362f
                  ori          s1, a5, 363
                  auipc        s9, 133802
                  sltu         s1, t3, s11
                  slli         gp, s4, 15
                  blt          t6, s1, 376f
                  nop
                  bge          a4, s6, 371f
                  bne          s1, a1, 373f
360:              bgeu         s8, a4, 361f
361:              bne          a3, t5, 365f
362:              and          s10, ra, s0
363:              beq          t5, s9, 375f
                  nop
365:              lui          s5, 542234
                  and          s11, s5, ra
                  srl          t1, s8, gp
                  and          a2, t5, t5
                  srai         s1, t1, 29
                  slli         zero, t1, 25
371:              beq          s0, t0, 385f
                  sub          t5, a0, t4
373:              andi         gp, s4, 16
                  sll          s4, s5, a5
375:              ori          t1, a2, -49
376:              andi         s7, a1, 450
                  sltiu        s6, a0, -1835
                  srai         t0, a3, 19
                  sub          t0, s0, s4
                  sll          s5, a7, a0
                  ori          s2, s7, -641
                  or           t3, s2, t1
                  sll          sp, a5, a4
                  slt          a5, a5, a5
385:              slli         a2, sp, 10
                  sll          t4, sp, zero
                  xori         s11, t2, -848
                  bne          t0, a5, 391f
                  srli         s2, s10, 16
                  bltu         a0, t6, 391f
391:              xor          tp, t1, gp
                  and          t1, a1, s5
                  bge          a5, s2, 397f
                  bne          s2, s0, 410f
                  xori         a2, s3, 538
                  bgeu         a5, a7, 408f
397:              xori         s1, zero, -97
                  sub          t1, s10, a2
                  sub          zero, s10, t6
                  beq          s1, a2, 410f
                  auipc        s3, 378740
                  xor          gp, gp, t1
                  auipc        t4, 930782
                  ori          t6, ra, -1161
                  blt          a4, t0, 418f
                  bne          a6, s2, 407f
407:              ori          tp, t1, 317
408:              srli         tp, s2, 30
                  srl          a1, s10, gp
410:              ori          s3, s8, -995
                  nop
                  ori          s3, a4, -414
                  bltu         a4, t3, 429f
                  sll          s8, a3, a1
                  bltu         t6, s9, 425f
                  sra          s0, gp, s6
                  nop
418:              add          a4, a4, s8
                  sltiu        tp, s2, 390
                  bge          a3, t1, 428f
                  slt          a1, s10, t6
                  nop
                  bgeu         a5, a7, 430f
                  or           s7, t5, t5
425:              slt          s3, s1, s11
                  auipc        s11, 958560
                  addi         a4, a1, -400
428:              auipc        a4, 217866
429:              and          a0, t4, a4
430:              or           s0, t6, s3
                  srl          s11, t3, a6
                  beq          tp, a2, 444f
                  bge          zero, s8, 434f
434:              srai         t5, a7, 29
                  or           s2, s7, t3
                  slli         s10, tp, 10
                  sltiu        t6, a1, -1449
                  xori         ra, t4, -1942
                  nop
                  slti         s8, ra, 2033
                  or           s11, s8, s6
                  auipc        sp, 174566
                  sra          t2, zero, a1
444:              addi         t4, s8, 481
                  srl          t2, s5, s7
                  sltiu        t2, t0, -1184
                  nop
                  lui          gp, 950348
                  sra          s1, s3, t6
                  addi         s0, a3, -686
                  or           t6, t2, a6
                  slti         zero, a0, -20
                  beq          t0, a2, 455f
                  xor          zero, s11, t4
455:              slli         a0, t2, 27
                  slli         s3, s1, 15
                  srl          s2, sp, gp
                  lw           s4, 4(a3)
                  sll          s7, s1, t1
                  sub          ra, t5, t4
                  addi         a3, a3, 56
                  srai         s0, a0, 21
                  srl          t4, t6, s5
                  xor          t6, a3, t5
                  addi         t0, t3, 924
679:              addi x28, x20, 1
679:              jalr x28, x28, 0
sub_5:            add          t4, t2, s0
                  addi         a3, a3, -16
                  sw           s4, 4(a3)
                  nop
                  sll          t5, gp, a0
                  bgeu         s3, sp, 3f
                  srl          a0, t5, s6
                  add          s4, a6, s1
3:                slti         t6, s1, -746
                  slt          t2, s11, a2
                  sll          ra, a6, a6
                  bgeu         t5, tp, 11f
                  bge          s0, s0, 23f
                  xor          s3, a6, a3
                  and          gp, t2, t3
                  blt          a4, s11, 23f
11:               srai         t1, s1, 30
                  sra          s8, s4, s1
                  beq          t1, tp, 23f
                  xori         s4, sp, -413
                  add          sp, t0, t2
                  sltu         t5, s9, s2
                  srli         a5, t4, 18
                  nop
                  and          sp, a7, a1
                  slt          s10, a3, t1
                  andi         ra, t5, -443
                  sub          s7, a0, a6
23:               ori          t5, s11, -856
                  lw           s4, 4(a3)
                  srl          s11, s10, zero
                  andi         s1, a3, 50
                  sltiu        t6, s9, -1705
                  sltu         s9, t6, a6
                  or           zero, s3, s10
                  addi         a3, a3, 16
                  auipc        a2, 301702
37:               addi x10, x20, 0
37:               jalr x10, x10, 0
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
                  add x17, x13, zero
                  csrr x26, 0x300 # MSTATUS
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 31
                  bne x26, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x26, 0x341 # MEPC
                  csrr x26, 0x342 # MCAUSE
                  li x24, 0x3 # BREAKPOINT
                  beq x26, x24, ebreak_handler
                  li x24, 0x8 # ECALL_UMODE
                  beq x26, x24, ecall_handler
                  li x24, 0x9 # ECALL_SMODE
                  beq x26, x24, ecall_handler
                  li x24, 0xb # ECALL_MMODE
                  beq x26, x24, ecall_handler
                  li x24, 0x1
                  beq x26, x24, instr_fault_handler
                  li x24, 0x5
                  beq x26, x24, load_fault_handler
                  li x24, 0x7
                  beq x26, x24, store_fault_handler
                  li x24, 0xc
                  beq x26, x24, pt_fault_handler
                  li x24, 0xd
                  beq x26, x24, pt_fault_handler
                  li x24, 0xf
                  beq x26, x24, pt_fault_handler
                  li x24, 0x2 # ILLEGAL_INSTRUCTION
                  beq x26, x24, illegal_instr_handler
                  csrr x24, 0x343 # MTVAL
                  1: la x16, test_done
                  jalr x1, x16, 0

ecall_handler:    
                  la x26, _start
                  sw x0, 0(x26)
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  la x16, write_tohost
                  jalr x0, x16, 0

instr_fault_handler:
                  add x13, x17, zero
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
                  add x13, x17, zero
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
                  add x13, x17, zero
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
                  csrr  x26, 0x341
                  addi  x26, x26, 4
                  csrw  0x341, x26
                  add x13, x17, zero
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
                  csrr  x26, 0x341
                  addi  x26, x26, 4
                  csrw  0x341, x26
                  add x13, x17, zero
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
                  csrr  x26, 0x300 # MSTATUS;
                  csrr  x26, 0x304 # MIE;
                  csrr  x26, 0x344 # MIP;
                  csrrc x26, 0x344, x26 # MIP;
                  add x13, x17, zero
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
