.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x25, h0_start
jalr x0, x25, 0
h0_start:
                  li x12, 0x40000100
                  csrw 0x301, x12
kernel_sp:        
                  la x9, kernel_stack_end

trap_vec_init:    
                  la x12, mtvec_handler
                  ori x12, x12, 0
                  csrw 0x305, x12 # MTVEC

mepc_setup:       
                  la x12, init
                  csrw 0x341, x12

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x12, 0x1800
                  csrw 0x300, x12 # MSTATUS
                  mret
init:             
                  li x0, 0xf539cdc2
                  li x1, 0x0
                  li x2, 0x9
                  li x3, 0xfc6196ad
                  li x4, 0x80000000
                  li x5, 0xf51fdff8
                  li x6, 0xf41d8d41
                  li x7, 0xf43eaa55
                  li x8, 0x0
                  li x10, 0x80000000
                  li x11, 0x0
                  li x12, 0x80000000
                  li x13, 0x0
                  li x14, 0xf9e80788
                  li x15, 0x6
                  li x16, 0xf420c263
                  li x17, 0x80000000
                  li x18, 0x0
                  li x19, 0x80000000
                  li x20, 0x5d205c76
                  li x21, 0x0
                  li x22, 0x80000000
                  li x23, 0x0
                  li x24, 0x49c1cb27
                  li x25, 0x0
                  li x26, 0x1ad9d0ab
                  li x28, 0x0
                  li x29, 0x80000000
                  li x30, 0x0
                  li x31, 0xf1c216ec
                  la x27, user_stack_end
main:             addi         a0, zero, 4 #init loop 1 counter
                  addi         s2, zero, 10 #init loop 1 limit
main_0_1_t:       nop
                  srai         s7, t4, 7
                  addi         a0, a0, 2 #update loop 1 counter
                  addi         s0, zero, 0 #init loop 0 counter
                  addi         s3, zero, -6 #init loop 0 limit
                  srli         s8, sp, 4
main_0_0_t:       nop
                  addi         s0, s0, -6 #update loop 0 counter
                  bne          s0, s3, main_0_0_t #branch for loop 0
                  blt          a0, s2, main_0_1_t #branch for loop 1
                  andi         s10, zero, 531
                  bne          t6, s8, 19f
                  bne          a5, a3, 7f
                  srai         s5, zero, 0
                  ori          a4, s4, 1129
                  xor          a4, zero, t6
                  beq          a7, gp, 13f
                  nop
7:                or           t5, s4, s2
                  sltu         a3, t6, t5
                  xori         t1, s8, -972
                  la           a0, sub_1
                  srai         t4, a5, 14
                  auipc        a1, 808892
                  addi         t3, tp, -817
                  addi         a0, a0, 746
                  slti         a1, s9, 1864
                  slti         zero, s4, 1401
main_j1:          jalr         t1, a0, -746 #jump main -> sub_1
                  andi         gp, sp, -120
                  addi         a5, t6, 1705
                  slli         a2, a3, 19
                  sltiu        s5, s5, 1339
                  xor          s10, s6, s3
13:               sltu         t1, s8, t0
                  bltu         t1, gp, 19f
                  bne          s1, s5, 34f
                  srai         s4, t3, 10
                  addi         zero, a1, -1896
                  ori          a3, t6, -1423
19:               beq          s10, a1, 27f
                  or           a1, s1, a4
                  bgeu         s10, s1, 24f
                  bltu         s1, s8, 32f
                  bge          s10, s9, 27f
24:               srli         ra, a1, 17
                  or           t4, s2, a1
                  xori         s0, s7, -1266
27:               srli         ra, s5, 30
                  lui          t6, 469479
                  sra          a4, a5, t0
                  srai         a7, a5, 3
                  slli         a5, s8, 31
32:               sltu         t2, t1, s8
                  andi         s7, a1, 1376
34:               add          tp, t3, s1
                  slli         t3, ra, 16
                  sll          a5, t6, s0
                  lui          t5, 825938
                  sltu         s8, s1, a1
                  srli         t1, s10, 18
                  srli         a7, t4, 15
                  add          a4, s10, s6
                  la x25, test_done
                  jalr x0, x25, 0
test_done:        
                  li gp, 1
                  ecall
sub_5:            sra          s4, t4, a4
                  slti         t0, s4, -1862
                  sltu         gp, s4, s3
                  addi         s11, s11, -40
                  sra          a6, a2, t2
                  srai         ra, t1, 7
                  xor          a6, s7, ra
                  andi         tp, t1, 1508
                  andi         a6, s11, -519
                  lui          tp, 116073
                  sw           t1, 4(s11)
                  or           tp, s6, sp
                  beq          s2, a7, 11f
                  nop
                  srl          a2, gp, t6
                  sltu         s8, s4, t4
                  srai         s2, ra, 18
                  bge          t4, a4, 17f
                  beq          s9, a5, 17f
                  beq          a2, a2, 17f
                  blt          zero, sp, 9f
9:                xor          s5, s0, t3
                  xori         s2, a5, -1918
11:               nop
                  slti         s2, a5, 1509
                  sub          s2, s8, s3
                  sll          s6, s11, a4
                  addi         s5, gp, -982
                  bne          a3, a6, 17f
17:               slt          s2, a5, sp
                  lw           t1, 4(s11)
                  sll          ra, ra, s3
                  and          s4, s2, s3
                  addi         s11, s11, 40
                  sub          s0, s0, a5
                  srl          s5, a6, t5
                  xor          a7, ra, t4
                  lui          t4, 496007
                  addi         a2, gp, 1942
                  xori         ra, a6, -1943
                  sub          tp, zero, t4
                  sltu         s3, t1, a5
42:               addi x26, x6, 1
42:               jalr x26, x26, 0
sub_3:            bltu         a7, s2, sub_3_stack_p
                  addi         t0, s9, 1836
                  srl          a1, s3, s8
                  srl          a2, a2, s4
sub_3_stack_p:    addi         s11, s11, -52
                  slli         gp, gp, 2
                  slt          s5, a5, t5
                  sw           t1, 4(s11)
                  andi         s0, s9, 1207
                  sll          a2, a3, ra
                  srl          t4, t2, s11
                  sll          tp, sp, tp
                  lui          a2, 684798
                  addi         s6, zero, -1 #init loop 0 counter
                  xor          s0, a3, a4
                  addi         s5, zero, 19 #init loop 0 limit
                  nop
                  xori         a2, tp, -415
sub_3_1_0_t:      slti         a0, t0, -1075
                  addi         s6, s6, 4 #update loop 0 counter
                  bne          s6, s5, sub_3_1_0_t #branch for loop 0
                  add          a7, s11, a1
                  addi         t4, zero, -3 #init loop 0 counter
                  addi         s2, zero, 13 #init loop 0 limit
sub_3_0_0_t:      slti         s4, a4, -2026
                  addi         t4, t4, 8 #update loop 0 counter
                  sub          a0, s9, s3
                  beq          t4, s2, sub_3_0_0_t #branch for loop 0
                  and          s6, a5, t2
                  bge          a7, gp, 16f
                  lui          a3, 1017408
                  srai         s0, t3, 0
                  srl          s10, t5, t2
                  slli         a6, s3, 23
                  add          a3, t3, a3
                  or           s7, sp, t4
                  srl          a1, gp, a2
                  ori          t3, a4, 1277
                  ori          a2, t4, -1207
                  bltu         t1, s11, 17f
                  srl          s5, a6, a5
                  sll          zero, a1, a7
                  or           t2, a2, a5
                  sll          sp, a3, a2
                  slti         s3, a7, -472
16:               lui          s7, 989545
17:               xor          tp, s11, s1
                  and          s3, s8, a5
                  or           a3, s8, ra
                  srai         s7, t2, 18
                  sll          a2, tp, sp
                  lui          a0, 743874
                  srai         t4, s0, 8
                  slli         t4, gp, 17
                  srli         a2, t1, 31
                  bne          zero, s9, 36f
                  blt          a5, s1, 36f
                  xori         a5, a4, 1183
                  slt          s5, s6, s11
                  srai         s5, s11, 8
                  bge          t6, a5, 44f
                  sub          s2, t2, s11
                  blt          a0, gp, 50f
                  auipc        s0, 845813
                  srai         a1, s5, 17
36:               sltu         a5, s4, a3
                  auipc        t4, 215009
                  ori          a5, t3, 1274
                  slt          sp, zero, t6
                  and          a1, s8, s10
                  sltu         a5, s2, t3
                  sub          tp, a2, tp
                  xor          t4, a6, t6
44:               bne          s9, s10, 59f
                  xor          a3, ra, zero
                  bne          s5, sp, 50f
                  srai         zero, a4, 11
                  blt          a3, a0, 58f
                  sra          t2, s6, s7
50:               auipc        t2, 397497
                  beq          t6, s4, 54f
                  sltiu        gp, a2, 1802
                  sltu         t6, t3, s4
54:               auipc        s2, 350618
                  slt          t0, t2, s0
                  ori          a1, sp, 709
                  sub          s6, s2, s9
58:               and          t5, s1, t6
59:               or           tp, s5, a7
                  bge          s3, t3, 62f
                  lui          gp, 902134
62:               bne          t4, s4, 79f
                  sll          a7, s7, a6
                  blt          s2, s10, 78f
                  sra          t1, s9, s7
                  sra          t4, a2, t2
                  xor          a7, a5, ra
                  slli         a5, s10, 24
                  sub          s2, s0, tp
                  srli         gp, t1, 6
                  srl          s5, s11, a0
                  add          t6, ra, t6
                  srl          t1, t0, a2
                  beq          a0, a3, 86f
                  sltu         a6, a1, t0
                  bgeu         t5, s9, 94f
                  blt          t3, ra, 94f
78:               xori         s2, s5, 411
79:               slt          s10, t0, a6
                  lui          a5, 238698
                  auipc        a7, 131447
                  sub          t4, s4, tp
                  auipc        t6, 1024850
                  or           a0, ra, a6
                  bgeu         s10, zero, 102f
86:               nop
                  and          a4, sp, s11
                  andi         a6, s11, 1965
                  slt          ra, a6, a3
                  nop
                  andi         t2, s3, -1245
                  addi         a2, ra, -1465
                  or           s8, t0, t0
94:               sub          a3, s7, s9
                  srli         a2, t2, 3
                  add          ra, a6, s11
                  blt          s9, a4, 100f
                  srli         ra, t5, 2
                  and          sp, a1, ra
100:              sra          t4, t3, s11
                  xor          a7, t2, a4
102:              and          a5, t5, s6
                  sltu         zero, a3, t2
                  sltu         s3, t1, s8
                  lw           t1, 4(s11)
                  sub          a4, a4, s11
                  addi         s11, s11, 52
                  or           t3, t4, s6
138:              addi x24, x6, 1
138:              jalr x24, x24, 0
sub_2:            sub          a4, t2, a3
                  bge          s0, s6, sub_2_stack_p
                  slt          zero, zero, a6
sub_2_stack_p:    addi         s11, s11, -44
                  sw           t1, 4(s11)
                  xor          sp, s6, s0
                  auipc        s2, 508470
                  srli         ra, a7, 27
                  srai         t2, zero, 23
                  bne          t3, s1, sub_2_j4 #branch to jump instr
                  and          s6, s3, a4
                  lui          s8, 535760
                  ori          s6, t2, 280
                  ori          ra, a3, -1849
                  addi         t3, a3, -1060
sub_2_j4:         jal          t1, sub_5 #jump sub_2 -> sub_5
                  auipc        a3, 453438
                  blt          sp, t5, sub_2_j5 #branch to jump instr
                  and          t1, s5, t6
                  xori         t6, s10, 1960
                  and          a0, t6, s1
                  slli         a6, a7, 2
sub_2_j5:         jal          t1, sub_4 #jump sub_2 -> sub_4
                  la           t5, sub_4
                  addi         t5, t5, -583
                  srai         zero, t2, 26
                  bltu         s2, t3, sub_2_j7 #branch to jump instr
                  xori         s6, t3, -1369
                  srl          s5, ra, a4
                  sltu         s3, t1, s3
                  or           zero, a3, a7
                  ori          t0, s9, -1125
                  slt          s4, t5, zero
                  srai         a3, s1, 24
sub_2_j7:         jalr         t1, t5, 584 #jump sub_2 -> sub_4
                  addi         s6, zero, -8 #init loop 1 counter
                  sltiu        a2, t1, -560
                  addi         t6, zero, 16 #init loop 1 limit
sub_2_1_1_t:      add          t4, s10, gp
                  addi         s6, s6, 6 #update loop 1 counter
                  or           gp, s9, s7
                  addi         t2, zero, -7 #init loop 0 counter
                  xori         s10, a1, -1015
                  addi         a4, zero, -16 #init loop 0 limit
                  sltiu        s2, t6, -362
                  slli         s0, gp, 30
                  srli         t1, t3, 11
                  nop
                  srli         a7, s11, 9
sub_2_1_0_t:      sltiu        s5, ra, -1078
                  and          t0, t2, a5
                  xor          s10, t3, a1
                  addi         t2, t2, -9 #update loop 0 counter
                  beq          t2, a4, sub_2_1_0_t #branch for loop 0
                  sltiu        a1, s9, -1439
                  sltu         s0, gp, s6
                  sltiu        a1, a0, 222
                  sra          t0, a3, s3
                  sltu         a3, s2, a5
                  bne          s6, t6, sub_2_1_1_t #branch for loop 1
                  xori         t5, a2, -407
                  addi         a5, zero, -8 #init loop 1 counter
                  addi         s7, zero, 20 #init loop 1 limit
sub_2_0_1_t:      add          a3, a1, a2
                  addi         a5, a5, 1 #update loop 1 counter
                  addi         gp, zero, -7 #init loop 0 counter
                  xori         s3, s11, -1408
                  addi         a6, zero, -3 #init loop 0 limit
sub_2_0_0_t:      xor          a3, sp, tp
                  addi         gp, gp, 2 #update loop 0 counter
                  beq          gp, a6, sub_2_0_0_t #branch for loop 0
                  bltu         a5, s7, sub_2_0_1_t #branch for loop 1
                  andi         t4, s8, -973
                  bge          s9, s2, 16f
                  xori         a4, a3, 1286
                  add          ra, a4, a3
                  sll          a7, t4, t4
                  or           tp, sp, s2
                  add          s0, s2, t5
                  andi         ra, tp, -386
                  ori          s7, t0, 1158
                  add          s8, sp, s7
                  sltu         a2, s7, t6
                  slti         s5, a3, 1131
                  sltu         a1, t4, s0
                  bne          a2, gp, 22f
                  srl          a4, a4, a6
                  sub          a7, s0, t4
                  srl          s6, t3, s11
16:               lui          s8, 549121
                  blt          a0, s8, 37f
                  blt          a1, t0, 23f
                  andi         a2, sp, 1968
                  xori         tp, s2, -35
                  lui          s0, 339516
22:               sub          s8, s1, s8
23:               bne          tp, a3, 29f
                  blt          t3, s6, 27f
                  srli         t4, a3, 26
                  sub          t4, s11, t3
27:               and          gp, a4, a2
                  slt          a6, s4, s1
29:               sub          a3, a0, s4
                  ori          t6, gp, -1267
                  and          a2, s2, t2
                  add          t0, a1, a4
                  bne          a1, s6, 39f
                  srai         s3, a4, 5
                  xori         zero, a5, 846
                  nop
37:               sltu         a2, s7, sp
                  and          s6, zero, s10
39:               slt          s0, s9, a7
                  addi         t1, s11, 513
                  sra          t0, s11, s4
                  sll          a3, t0, s4
                  slt          s7, t1, s7
                  bne          t2, gp, 56f
                  add          s7, tp, t2
                  lui          zero, 524898
                  and          s2, s4, a4
                  bge          t1, t0, 56f
                  andi         a4, s11, 262
                  srl          tp, s4, s4
                  srli         t1, t2, 27
                  bge          ra, s6, 55f
                  blt          a7, a6, 73f
                  slli         a4, t1, 10
55:               sub          sp, sp, gp
56:               bltu         t4, a7, 62f
                  srl          t2, s0, a5
                  slli         a4, a7, 15
                  xor          a0, a2, t3
                  sra          t5, t2, s5
                  slli         t4, t1, 8
62:               ori          a6, s9, 5
                  bltu         a0, s7, 66f
                  sltu         t6, gp, s11
                  bne          s2, a4, 66f
66:               sltiu        t0, s0, -1675
                  blt          s9, gp, 70f
                  or           t5, t3, s0
                  add          zero, a4, s3
70:               sll          a0, ra, s2
                  srli         sp, tp, 5
                  sltu         t2, s7, t6
73:               slli         t3, s6, 3
                  bltu         s0, a5, 78f
                  sltiu        s6, t3, -599
                  add          a7, t1, a1
                  sub          a4, a2, gp
78:               sra          t6, sp, s2
                  slli         s2, zero, 27
                  bne          sp, a2, 93f
                  srli         t6, t5, 6
                  xor          s4, s11, s2
                  la           s0, sub_3
                  slt          a0, s11, gp
                  ori          s2, s6, 1751
                  addi         s0, s0, -172
                  and          t6, t4, s8
                  bne          a2, s7, sub_2_j6 #branch to jump instr
                  slli         s6, s7, 3
                  add          a4, a4, t6
                  add          a2, t5, s7
                  xor          t6, t6, a4
sub_2_j6:         jalr         t1, s0, 173 #jump sub_2 -> sub_3
                  lui          a2, 201215
                  srai         t1, s0, 13
                  beq          t1, s4, 101f
                  auipc        a1, 928554
                  slli         ra, gp, 19
                  lui          tp, 1005831
                  sltu         t4, a2, ra
                  srl          t4, t4, gp
                  auipc        s7, 580282
                  xor          s2, t4, tp
                  andi         s10, s10, -1595
93:               and          a5, s0, sp
                  bge          t6, a2, 97f
                  sltiu        a0, a2, -1132
                  sll          s6, t6, t6
97:               lui          zero, 713543
                  sll          sp, s9, a6
                  slti         s6, a1, -2033
                  xori         a4, s2, -574
101:              add          zero, s2, s5
                  slti         gp, s11, 1281
                  sltiu        sp, s2, 1795
                  auipc        tp, 914817
                  addi         ra, sp, -1813
                  sub          s2, s3, a3
                  beq          a7, zero, 112f
                  addi         s0, a1, -633
                  bge          a2, s3, 110f
110:              slli         t0, tp, 7
                  blt          sp, gp, 118f
112:              bge          t4, t3, 118f
                  sltu         a6, s4, a5
                  ori          t1, s10, -1193
                  add          s3, t4, t4
                  nop
                  srli         s4, a5, 20
118:              sltu         a3, a4, s3
                  add          s8, s5, s9
                  sltu         a5, a6, s8
                  srai         a5, s9, 10
                  sll          s0, t2, t3
                  sub          a7, s6, a5
                  sub          t2, s4, s2
                  bne          s6, s5, 132f
                  and          s4, s4, s4
                  blt          s9, a1, 130f
                  bge          s0, t0, 132f
                  bge          s8, s8, 132f
130:              sub          a3, s11, a4
                  slli         t0, tp, 21
132:              sll          ra, a6, t2
                  lui          s0, 6240
                  slt          a5, t5, s6
                  slt          s4, t3, s9
                  lw           t1, 4(s11)
                  sltu         sp, s3, a6
                  xor          s0, a0, s4
                  addi         s11, s11, 44
                  sltiu        t0, s7, 891
                  ori          s5, t6, 1103
227:              addi x11, x6, 1
227:              jalr x11, x11, 0
sub_1:            xori         s10, a2, 1177
                  ori          zero, a2, -1829
                  srai         a3, t1, 30
                  blt          t0, t0, sub_1_stack_p
                  auipc        ra, 737111
                  addi         a3, s8, -669
sub_1_stack_p:    addi         s11, s11, -52
                  or           s6, s1, t6
                  srli         s7, t0, 29
                  sw           t1, 4(s11)
                  sll          s8, a2, t4
                  addi         a7, zero, 8 #init loop 0 counter
                  ori          s2, a7, 76
                  addi         a5, zero, 16 #init loop 0 limit
                  xori         s8, tp, 1036
                  sub          sp, a5, s11
sub_1_7_0_t:      sltu         t6, s8, s3
                  xori         t2, tp, -1639
                  addi         a7, a7, 8 #update loop 0 counter
                  bne          a7, a5, sub_1_7_0_t #branch for loop 0
                  nop
                  addi         s6, zero, -5 #init loop 1 counter
                  slti         tp, a0, 904
                  lui          a2, 721681
                  addi         a5, zero, 5 #init loop 1 limit
                  lui          t2, 386270
                  ori          t5, a6, 1936
sub_1_12_1_t:     sub          s5, t3, t1
                  ori          s2, s4, 39
                  slli         a3, s1, 11
                  xori         t4, s10, 1268
                  addi         s6, s6, 9 #update loop 1 counter
                  addi         ra, zero, 2 #init loop 0 counter
                  xori         a2, s5, -1492
                  addi         s4, zero, 12 #init loop 0 limit
                  xori         a6, tp, -1210
sub_1_12_0_t:     andi         s10, ra, -64
                  lui          t1, 349599
                  slli         s8, a2, 16
                  slt          a6, t5, s3
                  slli         a7, t6, 7
                  addi         ra, ra, 9 #update loop 0 counter
                  srli         s2, a6, 28
                  xori         t6, tp, -1420
                  blt          ra, s4, sub_1_12_0_t #branch for loop 0
                  auipc        a2, 21587
                  sub          s8, s6, a3
                  add          a6, a7, a3
                  xor          s10, s2, s11
                  srai         sp, a1, 31
                  xori         s7, a6, 858
                  andi         t3, s10, -1334
                  ori          a0, a4, -1724
                  slt          t2, a0, t6
                  blt          s6, a5, sub_1_12_1_t #branch for loop 1
                  sll          s2, s1, a7
                  addi         s10, zero, 1 #init loop 1 counter
                  add          a0, t5, s1
                  andi         s7, s2, 353
                  andi         s3, t1, 347
                  addi         t1, zero, -11 #init loop 1 limit
                  slli         a0, s5, 24
                  xor          s7, t4, a2
                  srli         a7, s0, 27
                  xor          s8, tp, s10
                  xor          sp, gp, t4
sub_1_3_1_t:      sltu         s3, s1, t4
                  srl          s8, s1, t4
                  addi         s3, s6, 366
                  sltiu        t0, s7, 581
                  or           s4, gp, s7
                  addi         s10, s10, -10 #update loop 1 counter
                  auipc        s4, 269686
                  sll          gp, a7, a7
                  addi         t6, s11, -1668
                  slt          a1, a5, s0
                  addi         tp, zero, -9 #init loop 0 counter
                  addi         s0, zero, 9 #init loop 0 limit
                  slti         a7, s0, -370
                  or           t4, a4, t0
                  sltiu        t2, a3, -254
                  sra          s6, s10, t3
sub_1_3_0_t:      add          gp, a0, t6
                  addi         tp, tp, 6 #update loop 0 counter
                  bne          tp, s0, sub_1_3_0_t #branch for loop 0
                  slt          gp, a4, s5
                  sltiu        sp, zero, 1975
                  srli         s4, s6, 16
                  ori          gp, s5, 1118
                  bge          s10, t1, sub_1_3_1_t #branch for loop 1
                  xori         a7, s0, -1012
                  addi         a2, zero, -4 #init loop 0 counter
                  slti         a4, a2, -1834
                  addi         a3, zero, -13 #init loop 0 limit
sub_1_8_0_t:      auipc        a4, 746202
                  addi         a2, a2, -7 #update loop 0 counter
                  bge          a2, a3, sub_1_8_0_t #branch for loop 0
                  slli         t1, a2, 15
                  addi         a7, zero, 9 #init loop 1 counter
                  xori         s10, sp, -1297
                  addi         s3, zero, 8 #init loop 1 limit
                  sra          a5, s2, a3
sub_1_5_1_t:      slti         a2, s8, 1647
                  addi         a7, a7, -7 #update loop 1 counter
                  srli         t5, s4, 31
                  addi         t2, zero, -4 #init loop 0 counter
                  lui          a1, 582913
                  xor          tp, t6, t0
                  xor          gp, t0, s5
                  sub          a2, s11, s7
                  addi         t3, zero, 12 #init loop 0 limit
sub_1_5_0_t:      lui          a4, 29228
                  addi         t2, t2, 10 #update loop 0 counter
                  slt          s10, ra, ra
                  bltu         t2, t3, sub_1_5_0_t #branch for loop 0
                  ori          t5, zero, 960
                  bgeu         a7, s3, sub_1_5_1_t #branch for loop 1
                  srai         gp, t4, 9
                  addi         t6, zero, 2 #init loop 1 counter
                  addi         a0, a3, -619
                  addi         a1, zero, 18 #init loop 1 limit
                  slt          s2, s7, s2
                  xori         tp, t6, -1440
                  lui          s7, 181435
sub_1_15_1_t:     nop
                  slti         a7, a4, 230
                  addi         t6, t6, 4 #update loop 1 counter
                  addi         t1, zero, -1 #init loop 0 counter
                  addi         t2, zero, 16 #init loop 0 limit
                  sltu         a7, s4, s8
                  andi         t3, a3, -1662
                  xori         gp, gp, -1506
sub_1_15_0_t:     ori          s10, s3, -1252
                  sra          t4, zero, a0
                  sltiu        s7, t3, -946
                  andi         t0, s9, -1151
                  add          a7, s3, a6
                  srli         a4, zero, 0
                  addi         t1, t1, 2 #update loop 0 counter
                  sll          s2, s10, a2
                  blt          t1, t2, sub_1_15_0_t #branch for loop 0
                  sll          s3, t1, t3
                  sltiu        tp, gp, -1075
                  bltu         t6, a1, sub_1_15_1_t #branch for loop 1
                  slli         s10, t6, 3
                  addi         ra, zero, -6 #init loop 1 counter
                  addi         a1, zero, 17 #init loop 1 limit
                  srli         t5, t1, 20
sub_1_11_1_t:     slti         s5, zero, 614
                  addi         ra, ra, 3 #update loop 1 counter
                  addi         s6, zero, 9 #init loop 0 counter
                  addi         t4, zero, 13 #init loop 0 limit
                  ori          s5, s6, -511
sub_1_11_0_t:     sltu         s0, t2, s6
                  addi         s6, s6, 8 #update loop 0 counter
                  addi         zero, s7, -1772
                  blt          s6, t4, sub_1_11_0_t #branch for loop 0
                  bltu         ra, a1, sub_1_11_1_t #branch for loop 1
                  srai         s7, a1, 11
                  addi         a4, zero, 10 #init loop 1 counter
                  slli         s8, s7, 24
                  lui          s6, 789686
                  addi         s3, zero, 8 #init loop 1 limit
sub_1_21_1_t:     auipc        s7, 463623
                  ori          t2, s10, 1457
                  addi         a4, a4, -4 #update loop 1 counter
                  addi         a6, zero, -3 #init loop 0 counter
                  addi         s0, zero, 2 #init loop 0 limit
                  srai         s8, s7, 25
sub_1_21_0_t:     andi         sp, s6, 92
                  addi         a6, a6, 4 #update loop 0 counter
                  sll          a3, a7, a5
                  sltu         t4, a2, gp
                  lui          tp, 382450
                  blt          a6, s0, sub_1_21_0_t #branch for loop 0
                  sltiu        t5, s1, -226
                  sll          gp, s7, s4
                  ori          s6, s10, 443
                  sll          zero, ra, tp
                  srl          t4, a2, tp
                  bgeu         a4, s3, sub_1_21_1_t #branch for loop 1
                  slli         s5, a6, 13
                  addi         gp, zero, -3 #init loop 1 counter
                  addi         t4, zero, 11 #init loop 1 limit
                  xori         a1, t6, -514
sub_1_19_1_t:     add          t5, sp, s6
                  srli         a0, a6, 29
                  addi         gp, gp, 4 #update loop 1 counter
                  addi         tp, zero, 4 #init loop 0 counter
                  lui          ra, 25142
                  addi         a3, zero, 19 #init loop 0 limit
sub_1_19_0_t:     sltiu        s0, s10, 213
                  addi         zero, s8, 1099
                  sll          t2, s1, a3
                  addi         tp, tp, 1 #update loop 0 counter
                  xori         s4, a2, -1747
                  bne          tp, a3, sub_1_19_0_t #branch for loop 0
                  bltu         gp, t4, sub_1_19_1_t #branch for loop 1
                  srl          t2, s7, a1
                  addi         ra, zero, -3 #init loop 1 counter
                  addi         gp, zero, 7 #init loop 1 limit
sub_1_18_1_t:     sltiu        s2, t5, -965
                  addi         ra, ra, 10 #update loop 1 counter
                  slt          a1, t2, s10
                  slti         t1, tp, -175
                  nop
                  sub          t6, a5, a4
                  slti         s6, gp, -1800
                  addi         s5, zero, 0 #init loop 0 counter
                  addi         a6, zero, -19 #init loop 0 limit
                  srli         zero, a5, 13
sub_1_18_0_t:     and          s8, a7, a2
                  addi         s5, s5, -6 #update loop 0 counter
                  bge          s5, a6, sub_1_18_0_t #branch for loop 0
                  nop
                  lui          s2, 850716
                  slti         sp, ra, -230
                  nop
                  beq          ra, gp, sub_1_18_1_t #branch for loop 1
                  sll          tp, a1, s4
                  addi         s3, zero, 6 #init loop 0 counter
                  srl          zero, tp, a5
                  auipc        s6, 473086
                  srl          t4, s9, gp
                  nop
                  addi         ra, zero, -8 #init loop 0 limit
                  add          t3, a6, a2
                  slli         t0, t0, 5
sub_1_16_0_t:     xor          s2, t1, s4
                  auipc        s0, 566577
                  ori          s10, a1, -154
                  add          a7, t2, t5
                  addi         s3, s3, -2 #update loop 0 counter
                  slli         s4, a1, 17
                  slti         a1, s4, 340
                  addi         s6, zero, -488
                  bne          s3, ra, sub_1_16_0_t #branch for loop 0
                  slli         sp, t6, 5
                  addi         s8, zero, 1 #init loop 1 counter
                  srli         t4, a0, 13
                  addi         s3, zero, 7 #init loop 1 limit
                  and          a4, s7, t0
sub_1_13_1_t:     sltu         s2, s4, t5
                  addi         s8, s8, 5 #update loop 1 counter
                  auipc        s4, 327092
                  addi         t6, zero, 7 #init loop 0 counter
                  addi         t3, zero, 14 #init loop 0 limit
sub_1_13_0_t:     lui          t1, 352997
                  sltiu        s2, zero, 1605
                  addi         t6, t6, 7 #update loop 0 counter
                  bne          t6, t3, sub_1_13_0_t #branch for loop 0
                  nop
                  addi         s10, s8, 488
                  blt          s8, s3, sub_1_13_1_t #branch for loop 1
                  sltiu        zero, s7, -1073
                  addi         tp, zero, 9 #init loop 1 counter
                  sra          t2, s6, s9
                  addi         s3, zero, 9 #init loop 1 limit
sub_1_9_1_t:      slti         s0, s6, -1554
                  sll          t4, s3, a0
                  addi         tp, tp, -7 #update loop 1 counter
                  addi         ra, zero, -8 #init loop 0 counter
                  addi         a4, zero, 20 #init loop 0 limit
sub_1_9_0_t:      sltiu        gp, gp, 1196
                  srli         a3, gp, 31
                  slt          s6, sp, t4
                  sra          t5, t0, zero
                  or           s2, gp, s6
                  addi         ra, ra, 7 #update loop 0 counter
                  blt          ra, a4, sub_1_9_0_t #branch for loop 0
                  slli         a5, t3, 3
                  bgeu         tp, s3, sub_1_9_1_t #branch for loop 1
                  sltiu        s6, t2, -1273
                  addi         t2, zero, 6 #init loop 0 counter
                  srl          a4, zero, t2
                  auipc        ra, 708683
                  sltiu        s5, a2, 1480
                  add          t4, a2, s10
                  xor          s3, a5, s7
                  and          t5, a3, s1
                  add          a1, s0, a0
                  xori         zero, s1, 1638
                  srli         a2, a3, 7
                  and          tp, s4, a6
                  slti         a3, t1, 99
                  and          a4, s3, a0
                  addi         s0, zero, 14 #init loop 0 limit
                  xor          s5, s7, s3
sub_1_1_0_t:      slt          s2, ra, s8
                  addi         t2, t2, 3 #update loop 0 counter
                  slt          sp, t0, s6
                  lui          a0, 135280
                  add          a6, a2, a7
                  blt          t2, s0, sub_1_1_0_t #branch for loop 0
                  andi         zero, a3, -1695
                  addi         t4, zero, -7 #init loop 0 counter
                  slli         s6, t0, 29
                  sltu         t6, t2, a4
                  addi         s3, zero, -12 #init loop 0 limit
sub_1_0_0_t:      sltu         a4, sp, s9
                  and          ra, s1, s5
                  lui          a3, 26843
                  andi         s6, tp, -141
                  addi         a0, s3, 1494
                  sltu         s6, tp, s4
                  andi         t0, ra, 1357
                  auipc        s5, 753439
                  slti         a6, t4, 1148
                  addi         t4, t4, -5 #update loop 0 counter
                  and          sp, t0, t1
                  sub          t0, t1, tp
                  auipc        s6, 725324
                  sra          t6, tp, s10
                  sltu         s6, s6, zero
                  srai         s4, ra, 8
                  bge          t4, s3, sub_1_0_0_t #branch for loop 0
                  lui          s10, 84569
                  addi         s4, zero, -3 #init loop 0 counter
                  or           a0, s1, a3
                  and          a2, t2, s2
                  slti         t1, a7, 1975
                  addi         s8, zero, 7 #init loop 0 limit
                  andi         s2, s5, 597
sub_1_2_0_t:      add          t6, s8, s11
                  sltiu        sp, s2, -101
                  slt          t4, s3, a4
                  addi         s4, s4, 10 #update loop 0 counter
                  auipc        s6, 850794
                  srli         s2, s8, 6
                  slli         t0, tp, 13
                  slli         a0, s4, 29
                  and          t0, a6, s3
                  ori          a5, s0, -1758
                  srl          a3, a0, t1
                  bne          s4, s8, sub_1_2_0_t #branch for loop 0
                  xori         a1, a1, 288
                  addi         s0, zero, -10 #init loop 1 counter
                  xor          t2, s2, s8
                  addi         s4, zero, 6 #init loop 1 limit
                  sub          a5, s1, s1
                  srl          t6, t1, a2
sub_1_14_1_t:     xor          s7, a2, a5
                  addi         s0, s0, 4 #update loop 1 counter
                  addi         t1, zero, 10 #init loop 0 counter
                  slti         t2, t5, 1002
                  slt          t2, s9, s1
                  sra          a4, t4, s4
                  xor          s8, a6, s5
                  sra          ra, ra, ra
                  addi         t5, zero, -13 #init loop 0 limit
                  and          t4, t5, a6
sub_1_14_0_t:     add          a7, s6, ra
                  sltu         t4, s10, a3
                  ori          a3, s11, 1102
                  sra          ra, t3, a2
                  nop
                  auipc        zero, 972866
                  nop
                  slli         a4, t5, 12
                  addi         t1, t1, -5 #update loop 0 counter
                  sll          s5, s11, a4
                  bge          t1, t5, sub_1_14_0_t #branch for loop 0
                  slli         t6, s1, 3
                  sll          a5, a6, t3
                  nop
                  srli         t4, s8, 18
                  beq          s0, s4, sub_1_14_1_t #branch for loop 1
                  addi         a4, a5, 492
                  slti         a0, a6, 1752
                  sll          s5, a2, a7
                  sltiu        a4, zero, 666
                  sltu         s8, a1, t1
                  slt          s4, zero, s5
                  bge          s8, t0, 9f
                  slti         s8, t6, 2010
                  slt          a2, s7, s2
                  add          ra, sp, s1
9:                srai         s10, a5, 21
                  sltiu        a7, a5, -2036
                  beq          a0, s11, 15f
                  srai         s6, s3, 4
                  ori          a4, a0, 849
                  addi         s5, s3, 639
15:               beq          s10, zero, 22f
                  slt          t2, sp, s3
                  srai         t5, s0, 30
                  slli         a6, s2, 12
                  blt          a4, ra, 38f
                  andi         t6, t2, 1848
                  bne          t1, s9, 23f
22:               sltu         t4, s0, s8
23:               nop
                  sra          a6, ra, a2
                  bltu         tp, a7, 26f
26:               slli         a6, t0, 19
                  sltu         tp, a6, t0
                  srai         s0, s8, 19
                  sltiu        sp, t0, -324
                  srai         t1, s0, 13
                  or           t0, s3, t0
                  sltu         t6, s2, t0
                  bltu         s3, s10, 50f
                  lui          gp, 729830
                  sltiu        a7, s0, -551
                  auipc        a6, 626150
                  xor          s3, tp, t3
38:               slti         s5, s6, -1067
                  blt          gp, a2, 48f
                  nop
                  bgeu         s3, t2, 53f
                  lui          s5, 976374
                  slti         a3, t5, 579
                  xor          t0, s0, s5
                  xor          s3, s3, a7
                  sra          t3, tp, s1
                  slli         s7, a7, 3
48:               auipc        s10, 948234
                  nop
50:               bltu         t0, s10, 66f
                  bne          s11, s8, 66f
                  sll          t2, a4, s1
53:               xori         a3, zero, 98
                  auipc        t1, 681892
                  bge          a3, t3, 63f
                  and          a0, tp, a0
                  beq          t1, a0, 69f
                  srai         t4, s2, 12
                  lui          t6, 1044457
                  slti         t4, t3, 124
                  sub          a6, a2, a2
                  beq          s0, t2, 78f
63:               auipc        a2, 139597
                  xor          a5, t1, t2
                  bge          s1, t3, 83f
66:               slt          a3, sp, gp
                  sltu         t4, a4, sp
                  nop
69:               slt          t0, s3, ra
                  sll          a0, t3, a5
                  sub          a6, t4, a0
                  bne          s11, a2, 92f
                  sra          t3, s6, s2
                  srai         s4, t0, 28
                  auipc        ra, 512144
                  sll          a1, a3, zero
                  beq          sp, t0, 81f
78:               and          t2, tp, gp
                  sltiu        zero, t1, 1228
                  srai         t2, s7, 23
81:               ori          t3, s8, -384
                  bltu         a0, s2, 91f
83:               srai         sp, t4, 16
                  sltiu        a6, s4, 296
                  slli         t1, ra, 15
                  xori         s0, a1, -1435
                  nop
                  srai         s0, s0, 0
                  sra          ra, ra, s3
                  xor          a2, t1, t0
91:               xori         a4, t0, -1444
92:               xor          t1, a7, a7
                  add          t4, a2, t4
                  sra          ra, a7, a3
                  bgeu         t6, a7, 101f
                  sltu         a2, a7, a3
                  addi         s4, s9, 1592
                  beq          t6, s8, 110f
                  ori          t0, s7, 1127
                  bgeu         a2, t6, 102f
101:              and          s7, a6, s6
102:              beq          t3, t6, 112f
                  bgeu         a3, a3, 112f
                  slt          a2, a4, t5
                  xori         a0, s3, -807
                  nop
                  sra          t5, a0, a1
                  bne          t4, a3, 125f
                  addi         t1, a6, -1770
110:              bne          a7, s1, 115f
                  slli         t1, a6, 9
112:              add          a3, s3, s9
                  sra          zero, s5, s0
                  bge          a3, t0, 134f
115:              srai         a6, zero, 22
                  beq          s0, tp, 126f
                  auipc        s0, 174628
                  add          a5, a1, s7
                  bne          t5, zero, 138f
                  add          t3, s3, s6
                  beq          a6, sp, 138f
                  bltu         s4, s4, 130f
                  sub          a2, s11, a4
                  nop
125:              sll          s2, a6, s1
126:              sub          a6, s10, s7
                  slli         a1, t4, 8
                  sltiu        s4, t0, -271
                  andi         t1, s3, 2025
130:              sra          s6, s9, t1
                  sll          s0, a6, a1
                  slt          s0, a2, a1
                  addi         a2, a4, -1189
134:              sltu         s6, s9, s3
                  sltu         a7, a2, t1
                  bgeu         s10, zero, 153f
                  sltu         s6, s10, t4
138:              auipc        t3, 938465
                  sub          a4, a7, a5
                  sltiu        t3, s2, 492
                  addi         t3, t0, -1281
                  auipc        a4, 189628
                  addi         s4, sp, -221
                  xori         a7, t5, 1797
                  auipc        t3, 15802
                  ori          a1, s0, 1025
                  slt          t2, zero, s0
                  sub          t0, a3, ra
                  xor          ra, a4, a2
                  slli         t0, tp, 21
                  andi         tp, t4, 1223
                  sll          a2, s9, zero
153:              lui          s5, 690581
                  xori         s3, a1, 1321
                  bltu         tp, t3, 167f
                  srl          s7, t6, a1
                  sub          a1, s5, s3
                  sll          s0, a2, s0
                  ori          s4, tp, 747
                  or           ra, s2, tp
                  or           t3, s8, zero
                  or           a2, a5, t0
                  bltu         a4, s6, 170f
                  or           t1, t2, a6
                  sll          tp, s10, a6
                  beq          s0, a4, 174f
167:              bltu         a0, s6, 187f
                  bltu         t1, s11, 180f
                  blt          s2, s3, 188f
170:              bgeu         a1, s7, 179f
                  srli         s10, t6, 21
                  or           t6, s6, s6
                  bne          s1, a6, 190f
174:              xor          s10, t3, gp
                  ori          s2, s10, 1242
                  srl          s4, t5, s7
                  beq          t6, s3, 181f
                  bne          a3, s7, 196f
179:              sltiu        s7, a6, 1826
180:              lui          sp, 277195
181:              ori          a7, t0, 905
                  sltiu        a0, t0, -278
                  sltiu        s2, a1, -660
                  addi         zero, s0, 428
                  slti         a7, ra, -71
                  sltiu        a1, a3, 483
187:              add          sp, t1, a0
188:              srl          sp, a3, ra
                  auipc        s5, 301623
190:              xori         sp, s5, 1546
                  bge          sp, s2, 199f
                  slli         a5, s6, 26
                  lui          a4, 81790
                  xor          a3, s5, s5
                  add          s0, t2, a4
196:              ori          t4, t5, 439
                  auipc        s2, 484399
                  xori         t6, s0, -413
199:              ori          t6, a4, -870
                  ori          t6, t4, 282
                  sll          a2, sp, s7
                  sra          ra, tp, s8
                  slti         t5, t3, 894
                  xori         s5, s10, -802
                  sltiu        a6, s7, -1034
                  sltiu        s10, zero, -1758
                  xor          a3, a4, t6
                  sltu         t5, a4, zero
                  srl          gp, s11, t1
                  sll          a5, s7, a6
                  or           sp, a6, a3
                  srai         s6, s9, 30
                  add          a0, a3, s2
                  xori         a1, t3, -908
                  nop
                  addi         s7, s8, 1992
                  ori          a1, t4, -1731
                  ori          a1, s10, -1183
                  bltu         a7, a3, 239f
                  sub          tp, s4, s4
                  srl          s8, a0, t5
                  xori         gp, a4, 751
                  beq          t3, zero, 227f
                  srli         a7, s0, 14
                  bge          sp, s8, 242f
                  auipc        a2, 221805
227:              add          s6, a3, s11
                  blt          a2, s6, 237f
                  slti         ra, t6, -1710
                  xori         tp, a3, -1477
                  and          t0, a2, s6
                  addi         s3, t6, 2033
                  andi         t6, t4, 524
                  slti         a0, s6, 203
                  slti         s10, ra, 438
                  addi         s7, tp, 1339
237:              nop
                  slli         a4, s3, 14
239:              slti         s2, s4, -347
                  sub          a7, s11, s7
                  sltiu        t3, s5, 233
242:              blt          s8, s7, 258f
                  slli         t6, s7, 7
                  sra          t0, a0, tp
                  addi         tp, s1, 1090
                  sub          a7, t3, a3
                  srai         s3, s8, 8
                  sltu         a3, s8, zero
                  bge          s0, a6, 251f
                  lui          sp, 1003985
251:              sltiu        a4, a7, 97
                  xor          zero, a7, s4
                  bgeu         a5, a1, 265f
                  bltu         s1, t3, 270f
                  sltu         s10, tp, t3
                  bltu         s3, s1, 275f
                  andi         s10, s3, 787
258:              addi         a7, a2, -1876
                  slti         a7, s3, -658
                  lui          t5, 19709
                  slt          s8, a7, s4
                  lui          t3, 805197
                  sltu         a5, s9, s1
                  slti         sp, a0, -371
265:              bge          a0, s3, 280f
                  blt          a6, a0, 275f
                  blt          gp, a4, 272f
                  auipc        a2, 156880
                  sltiu        s4, s9, 1899
270:              addi         s6, a5, 959
                  andi         t3, a2, -68
272:              xori         t3, t6, 980
                  lui          zero, 154940
                  xor          s8, t6, t4
275:              bge          tp, t3, 285f
                  slti         a4, a0, -682
                  nop
                  add          sp, s2, s9
                  add          a2, t4, gp
280:              sltu         s10, a4, gp
                  sll          s8, a1, t2
                  srli         t6, tp, 30
                  bgeu         a6, gp, 293f
                  srli         a2, zero, 19
285:              addi         a2, gp, -411
                  sub          sp, s9, gp
                  sll          a6, t6, a0
                  and          ra, s3, t4
                  blt          t5, s7, 293f
                  and          gp, s4, s4
                  sll          a1, t1, s9
                  lui          a5, 621948
293:              bne          a3, s11, 299f
                  srl          tp, s5, s10
                  srl          zero, s9, sp
                  addi         t2, s10, 536
                  slt          s6, t3, a5
                  add          a3, t2, s9
299:              bge          t5, s8, 300f
300:              sltiu        a2, tp, -1355
                  and          a1, t3, tp
                  sltu         t6, s1, a0
                  bltu         s0, s1, 305f
                  srai         a4, a7, 3
305:              add          s3, a7, a3
                  sltu         s2, s4, s0
                  nop
                  srli         s8, t5, 13
                  srli         t5, s7, 13
                  and          s5, s9, s6
                  sra          a0, zero, t4
                  xor          a6, s1, ra
                  xori         s2, s8, -2019
                  nop
                  and          s4, s3, ra
                  auipc        s4, 88609
                  xor          t5, s10, s10
                  bne          a0, s3, sub_1_j2 #branch to jump instr
                  auipc        t6, 473787
                  slt          t2, tp, s8
                  sra          t3, a1, t2
sub_1_j2:         jal          t1, sub_2 #jump sub_1 -> sub_2
                  srai         s7, t2, 28
                  nop
                  srl          s7, s8, s0
                  blt          s1, s1, 331f
                  sra          a6, a5, t1
                  lui          s3, 1047663
                  bltu         gp, s0, 321f
                  ori          s3, s10, 992
                  add          s5, s10, a2
                  slt          t4, s11, s6
321:              srai         t1, t0, 30
                  bne          a4, a1, 342f
                  beq          t0, s9, 324f
324:              sll          a6, s4, t2
                  lui          a3, 261411
                  beq          t1, s4, 342f
                  sub          s2, t5, s7
                  and          a5, t5, zero
                  slli         gp, s6, 22
                  bgeu         t4, gp, 345f
331:              slt          s7, gp, s4
                  nop
                  bltu         t1, ra, 341f
                  bge          ra, s6, 344f
                  srl          s10, t4, ra
                  beq          s2, a6, 343f
                  sltu         a3, t5, ra
                  and          a3, t0, a6
                  bltu         t0, t5, 343f
                  xor          s4, a6, t3
341:              beq          s3, a5, 347f
342:              bgeu         a4, a1, 361f
343:              slti         gp, t3, -46
344:              sltu         s4, s3, a5
345:              lui          t4, 171345
                  add          s5, a0, a7
347:              beq          t0, t3, 364f
                  xori         tp, t5, -788
                  auipc        a4, 45445
                  blt          s5, ra, 359f
                  slt          sp, zero, s6
                  blt          s3, s9, 370f
                  slt          s8, a0, a6
                  srai         tp, a4, 15
                  blt          s10, s0, 363f
                  blt          t4, s3, 365f
                  addi         a1, s7, 1074
                  nop
359:              xor          t2, s11, t3
                  sltiu        a5, a0, -743
361:              nop
                  bne          a5, t2, 381f
363:              xori         s6, s9, -1459
364:              slt          t1, ra, a6
365:              add          a3, s2, s6
                  andi         gp, s5, 1657
                  sub          a0, sp, t5
                  bne          s0, s10, 380f
                  srai         s4, ra, 6
370:              bltu         s11, s0, 387f
                  sltiu        s8, a3, -1851
                  sra          t4, a6, sp
                  auipc        zero, 733955
                  xor          a0, s4, a2
                  srai         s0, s3, 19
                  beq          a6, t1, 396f
                  bne          a4, s6, 389f
                  sub          s6, t3, a5
                  and          s3, t4, t5
380:              xori         s2, s1, -852
381:              ori          tp, s11, 554
                  bne          a0, tp, 384f
                  slli         t0, a3, 2
384:              bltu         s5, t0, 393f
                  sll          s10, a5, t3
                  srai         a7, ra, 0
387:              bltu         s5, sp, 399f
                  srl          t6, a2, a3
389:              bltu         gp, tp, 399f
                  sub          a0, t2, ra
                  lui          s10, 898033
                  addi         t4, a7, -2002
393:              xori         s4, ra, -1979
                  andi         s6, s9, -485
                  and          s4, a0, s6
396:              ori          a7, s9, 157
                  srli         t4, a2, 7
                  slt          t2, t5, t4
399:              add          s0, s4, tp
                  lui          s4, 950973
                  auipc        t0, 708355
                  sll          s0, a3, s5
                  slt          a7, s3, a5
                  bltu         a1, s11, 406f
                  xori         a1, s9, -1063
406:              ori          s5, ra, 124
                  bgeu         a4, s11, 412f
                  sub          a4, s8, sp
                  sra          t6, a0, s5
                  blt          sp, t1, 426f
                  auipc        s7, 263101
412:              srl          ra, s2, t6
                  bne          s8, s0, 417f
                  add          s10, zero, a1
                  sltiu        a0, tp, -1733
                  bgeu         t2, s3, 428f
417:              nop
                  bgeu         s5, t2, 435f
                  bge          t0, s3, 423f
                  addi         t6, zero, 1 #init loop 0 counter
                  or           a4, tp, ra
                  lui          s4, 888545
                  sub          a1, a3, t4
                  sub          s2, t1, s9
                  srli         tp, s4, 18
                  sll          tp, t0, a6
                  sltiu        tp, a4, -1265
                  srl          a6, s8, t1
                  sltiu        s8, s7, 47
                  addi         t5, zero, 17 #init loop 0 limit
                  ori          a6, s7, 632
                  srai         t1, s3, 23
sub_1_6_0_t:      slt          ra, t2, t2
                  xor          t1, ra, t5
                  xor          a5, a0, a4
                  nop
                  add          a5, ra, s8
                  sub          s6, a5, s7
                  auipc        a3, 30535
                  sra          a3, t2, a6
                  addi         t6, t6, 9 #update loop 0 counter
                  or           s3, t2, s4
                  xori         a2, t6, 821
                  ori          zero, a6, -942
                  bltu         t6, t5, sub_1_6_0_t #branch for loop 0
                  sra          t1, t6, a4
                  andi         t3, zero, -1958
                  slt          s3, s5, s10
                  add          t4, tp, a7
423:              srli         t1, t4, 14
                  sll          t2, s11, a3
                  bne          s6, s6, 445f
426:              addi         t5, ra, 902
                  slt          s6, s9, sp
428:              sub          s5, tp, a3
                  or           ra, s10, t5
                  sltu         t1, s6, tp
                  srl          s0, s6, a5
                  bgeu         a4, t6, 438f
                  bge          tp, t0, 434f
434:              sra          t0, gp, s5
435:              bne          s3, sp, 455f
                  andi         t3, s7, -1558
                  lui          a7, 845629
438:              xori         a4, s10, 1173
                  xor          ra, s10, a7
                  lui          sp, 213030
                  slli         sp, t0, 10
                  and          a5, s10, ra
                  xor          t1, a4, s1
                  slti         a2, s1, 843
445:              sltiu        t1, s6, -880
                  blt          s1, t2, 465f
                  sub          zero, t2, a6
                  srli         s6, t6, 9
                  slt          a7, s10, t1
                  sub          t3, s5, s11
                  addi         a6, tp, 3
                  sub          s0, t4, s4
                  sll          a4, sp, s5
                  bgeu         s10, t6, 462f
455:              slt          s5, a4, a7
                  srl          zero, s4, a7
                  or           s4, a4, zero
                  srai         a6, a7, 25
                  andi         tp, a4, -888
                  xori         s7, sp, 1120
                  sra          a7, t0, t4
                  sltu         a1, a2, s8
                  lui          s7, 516781
                  la           t2, sub_2
                  slli         a0, a4, 10
                  sub          t6, a4, t5
                  auipc        t4, 269359
                  addi         t2, t2, -686
                  sub          tp, s8, s2
                  or           a7, t1, s7
sub_1_j3:         jalr         t1, t2, 687 #jump sub_1 -> sub_2
462:              auipc        t0, 753693
                  sltiu        s8, s2, -1577
                  lui          s2, 443518
465:              lui          a5, 894775
                  nop
                  slli         t2, t3, 31
                  slt          t5, s5, t1
                  beq          s10, s1, 479f
                  auipc        tp, 938425
                  bge          a1, t1, 481f
                  auipc        s7, 664926
                  srl          s8, s3, t6
                  bgeu         s0, a0, 478f
                  lui          s8, 180275
                  slti         a3, s2, -2000
                  srli         a7, a0, 14
478:              bge          s3, a1, 494f
479:              lui          t4, 507243
                  sltiu        t5, a6, -904
481:              sra          t4, s6, s0
                  bne          s0, s6, 486f
                  bne          a6, a4, 490f
                  andi         a3, a3, -1028
                  srli         ra, a5, 3
486:              addi         s2, s1, -195
                  xori         t6, s2, 400
                  blt          s7, a7, 500f
                  nop
490:              sltu         s8, t3, gp
                  andi         s8, t5, -1258
                  auipc        tp, 407557
                  slti         t3, a6, 1849
494:              andi         zero, t2, -975
                  lui          a1, 716914
                  nop
                  bge          a6, s2, 512f
                  blt          t3, a6, 515f
                  sub          s3, s11, s10
500:              srl          s8, s3, t0
                  bgeu         t2, sp, 517f
                  slli         s4, s9, 25
                  bltu         ra, t4, 512f
                  bge          s0, a1, 509f
                  ori          a3, s11, 324
                  sltu         s7, t4, t4
                  srli         a2, a5, 5
                  bgeu         s1, gp, 510f
509:              sub          s0, t1, s8
510:              or           a2, s8, a2
                  ori          a3, s3, 1103
512:              beq          gp, s4, 524f
                  bne          a0, gp, 515f
                  srai         a4, s0, 28
515:              ori          t5, s5, -229
                  bne          t1, s11, 524f
517:              bne          a3, zero, 535f
                  addi         t1, a3, -561
                  sltiu        s3, sp, 1148
                  bge          s3, a4, 537f
                  srl          a4, sp, t1
                  and          sp, gp, t2
                  sltu         s4, s4, ra
524:              sll          s5, s3, a5
                  add          a7, t5, ra
                  sra          tp, sp, a7
                  sltiu        s8, s7, -1387
                  beq          t1, zero, 537f
                  slt          s6, s3, sp
                  slti         s0, a4, -1917
                  sll          s5, s3, a2
                  sra          ra, ra, s4
                  srl          s2, gp, t6
                  sltiu        s0, s6, -1457
535:              srai         t6, a6, 2
                  andi         zero, a1, 1475
537:              srli         a4, s3, 7
                  sra          t2, s9, t6
                  addi         s7, zero, -8 #init loop 1 counter
                  addi         a6, t2, 1812
                  sltiu        sp, s7, 274
                  addi         t1, zero, -11 #init loop 1 limit
                  nop
                  slli         a1, t5, 14
sub_1_20_1_t:     xori         s5, t5, 878
                  addi         s7, s7, -4 #update loop 1 counter
                  addi         ra, zero, -10 #init loop 0 counter
                  add          a5, a7, a6
                  ori          t0, a1, 260
                  or           a6, s2, s0
                  addi         s2, zero, 1 #init loop 0 limit
sub_1_20_0_t:     auipc        a1, 595296
                  add          t3, gp, a6
                  addi         ra, ra, 3 #update loop 0 counter
                  slti         t4, s10, -285
                  andi         t0, a3, 1296
                  blt          ra, s2, sub_1_20_0_t #branch for loop 0
                  lui          t4, 39165
                  bge          s7, t1, sub_1_20_1_t #branch for loop 1
                  xor          gp, s5, s1
                  lui          s7, 1032410
                  slli         s10, s10, 30
                  slt          s10, t6, s4
                  and          s8, s0, a3
                  xor          a1, a6, s0
                  sltu         a4, t3, tp
                  addi         t3, t0, 1932
                  nop
                  add          a4, s9, ra
                  andi         a4, a1, -445
                  lui          a3, 984312
                  slti         zero, zero, 1299
                  addi         a6, zero, 4 #init loop 1 counter
                  slti         sp, s4, -452
                  slti         a3, a1, 532
                  srli         a1, a2, 22
                  sltu         s8, a5, tp
                  addi         ra, zero, -11 #init loop 1 limit
sub_1_4_1_t:      addi         a3, a1, 2016
                  addi         a6, a6, -9 #update loop 1 counter
                  sub          s8, a6, t2
                  addi         t0, zero, 10 #init loop 0 counter
                  addi         a0, zero, -4 #init loop 0 limit
                  slli         s0, t5, 7
sub_1_4_0_t:      lui          a5, 98026
                  addi         s3, a0, -1295
                  addi         t0, t0, -7 #update loop 0 counter
                  bne          t0, a0, sub_1_4_0_t #branch for loop 0
                  slli         a7, a1, 1
                  bge          a6, ra, sub_1_4_1_t #branch for loop 1
                  auipc        t3, 146136
                  slti         a4, a1, 1383
                  slt          s6, a6, a3
                  srli         a6, s6, 26
                  lui          t3, 301546
                  srli         t6, s9, 18
                  bge          t2, s7, 575f
                  slli         a0, a7, 2
                  bne          s9, a6, 567f
                  and          gp, t6, t1
                  blt          a2, t5, 576f
                  ori          s10, a5, -258
                  srl          s10, a3, s9
                  add          gp, t3, s1
                  slti         t2, zero, 392
                  srli         t5, s1, 1
                  bne          t2, tp, 584f
567:              sltiu        s3, s7, 992
                  ori          a1, s3, -1610
                  lui          a0, 907105
                  srl          s4, t6, s7
                  srl          t3, s8, ra
                  bgeu         t3, s11, 581f
                  blt          t6, a6, 583f
                  bge          t2, s2, 586f
575:              xori         a4, t0, 696
576:              nop
                  bgeu         gp, a2, 596f
                  ori          t2, a7, -133
                  srai         t4, t1, 22
                  or           t5, s1, t6
                  addi         s3, zero, 2 #init loop 0 counter
                  lui          s8, 833966
                  lui          a2, 565018
                  sll          s4, t5, tp
                  sll          s7, s8, t3
                  sltiu        a5, a5, -583
                  sll          t1, s6, a4
                  addi         s10, zero, 7 #init loop 0 limit
                  sra          a0, t6, a6
                  sll          t0, s3, gp
sub_1_17_0_t:     and          t1, s5, t3
                  addi         s3, s3, 5 #update loop 0 counter
                  nop
                  ori          s2, s2, 1258
                  sra          t4, s1, a3
                  slti         zero, t2, -593
                  andi         tp, t2, 1324
                  sltiu        a6, s6, 1804
                  addi         t0, s6, -1169
                  slt          a3, a1, t3
                  bne          s3, s10, sub_1_17_0_t #branch for loop 0
                  srai         t1, tp, 6
581:              nop
                  sll          t6, tp, gp
583:              sltiu        s8, s2, 97
584:              sltiu        a5, a5, 1386
                  bltu         s0, t3, 601f
586:              sltu         a7, t6, gp
                  xor          a6, s9, s6
                  add          s2, a6, t3
                  slli         a1, s11, 24
                  srai         t4, gp, 20
                  addi         t6, s4, 86
                  xori         a0, sp, 1626
                  slt          ra, a0, a4
                  lui          sp, 1022518
                  bltu         s8, s1, 599f
596:              or           tp, s1, a1
                  srl          s4, s8, s8
                  auipc        s3, 934549
599:              bltu         ra, s3, 614f
                  xori         s5, s1, -1845
601:              slti         t1, t2, 636
                  sub          a1, a1, s6
                  nop
                  slt          a4, s8, s7
                  xori         s2, a5, 579
                  slt          t0, s2, t4
                  ori          t5, t6, 1103
                  ori          s7, t5, 523
                  slli         a4, a6, 22
                  or           a6, t3, s11
                  slli         s5, t2, 22
                  slt          s8, a0, s9
                  sub          s5, s0, s5
614:              bne          t5, s5, 633f
                  beq          t4, s4, 619f
                  slti         s7, s2, 938
                  sltiu        zero, s2, 697
                  srli         s10, t1, 8
619:              srl          a4, a4, s1
                  srai         s6, a0, 3
                  lui          a7, 586249
                  sub          gp, s7, s7
                  srai         s3, tp, 11
                  srli         s7, t5, 20
                  blt          a3, s2, 635f
                  srli         s6, sp, 3
                  addi         a1, t0, 1679
                  addi         t4, a7, 695
                  auipc        a5, 820439
                  bgeu         s3, sp, 639f
                  sub          zero, gp, t5
                  srli         gp, a6, 26
633:              srl          a5, s6, s5
                  srli         s0, s0, 7
635:              ori          a7, t2, 1559
                  bltu         s7, a2, 637f
637:              sltu         ra, a2, s8
                  or           a5, a0, a0
639:              andi         a4, ra, 2047
                  srli         s0, s9, 10
                  sltu         a4, t4, s4
                  slt          tp, t4, sp
                  or           s3, t2, t2
                  sub          a5, t2, s8
                  nop
                  bge          s0, s11, 648f
                  auipc        zero, 476765
648:              sltiu        a2, s3, 972
                  bgeu         s0, s1, 655f
                  lui          t4, 713959
                  and          a7, gp, s4
                  add          gp, t3, s3
                  auipc        ra, 43179
                  bltu         a2, tp, 661f
655:              nop
                  ori          a6, tp, -127
                  srai         ra, s7, 18
                  add          s3, t0, s0
                  srl          s10, a4, a1
                  sra          s6, gp, a3
661:              sltiu        t0, s4, -1860
                  ori          a3, s1, 854
                  srl          t6, s3, s11
                  xor          s2, t5, t0
                  bge          s3, a6, 674f
                  sra          t5, ra, t3
                  ori          s7, a5, -565
                  slti         a5, s4, -2043
                  sll          s6, a0, a7
                  srai         a7, s8, 25
                  sra          s7, zero, a2
                  blt          t3, s9, 680f
                  lui          gp, 701852
674:              and          t5, s6, t3
                  srli         gp, a3, 29
                  sltiu        s3, a7, 1606
                  auipc        sp, 448380
                  andi         ra, a5, 2012
                  beq          a0, a1, 699f
680:              nop
                  slti         t0, s5, -1641
                  addi         s3, s4, -1888
                  and          t2, s6, zero
                  sub          s10, s5, gp
                  bne          s1, t4, 689f
                  srli         t1, s9, 28
                  ori          t0, a6, 2035
                  sltu         t3, a4, t5
689:              beq          a2, tp, 701f
                  addi         a5, t4, -247
                  sltiu        a5, s2, 1040
                  beq          t5, t6, 697f
                  nop
                  srli         a0, t6, 23
                  srai         s2, tp, 9
                  sltiu        a4, zero, 1442
697:              xor          s4, gp, s1
                  sub          a0, a6, zero
699:              andi         s2, s9, -1814
                  sltiu        s3, t5, -1814
701:              srl          t5, s3, ra
                  sub          ra, s10, s2
                  sra          tp, tp, a4
                  lui          a0, 3012
                  xori         a7, t2, 599
                  srai         a3, zero, 17
                  andi         a4, a1, -436
                  sub          a6, gp, s9
                  add          t0, a1, gp
                  and          a0, s8, t4
                  srli         s6, s9, 9
                  auipc        tp, 814526
                  auipc        a7, 845064
                  sltiu        a1, s1, 62
                  sll          s6, s5, a5
                  blt          s7, a3, 728f
                  sub          tp, t0, s11
                  slt          s3, t4, a1
                  xor          t2, s4, tp
                  ori          gp, s9, -1001
                  srai         t2, a2, 24
                  srl          a1, t2, zero
                  sltiu        t3, a6, -1946
                  xor          s3, t2, s11
                  sll          s2, a7, a2
                  blt          s11, a7, 746f
                  lui          a4, 86716
728:              addi         tp, s4, -1663
                  bltu         a6, tp, 731f
                  sll          t5, s10, s11
731:              sll          a4, s6, ra
                  andi         t5, s0, -1013
                  sltu         s5, a3, t3
                  slt          s3, s4, a3
                  andi         t4, a0, -1515
                  srli         tp, s4, 31
                  xor          a2, s6, zero
                  sll          s5, sp, s4
                  beq          t3, a3, 756f
                  bne          t3, a4, 757f
                  ori          s4, zero, -1129
                  andi         a6, s4, -618
                  bltu         a3, a2, 760f
                  addi         s5, t1, -1731
                  slli         a6, t0, 15
746:              slli         ra, sp, 9
                  bge          s1, s7, 755f
                  or           s8, a2, a3
                  slli         s10, t4, 21
                  beq          t2, s6, 754f
                  slti         a3, a0, 760
                  srli         tp, a1, 22
                  sra          t2, a3, a2
754:              addi         s0, tp, 1278
755:              slt          a2, s1, a3
756:              srli         s7, a7, 18
757:              xor          gp, a7, s2
                  sll          sp, s10, a4
                  or           t3, t5, s10
760:              andi         t5, t2, 441
                  and          ra, s2, gp
                  lui          s4, 378379
                  blt          a5, a6, 783f
                  and          s4, t3, t0
                  or           a7, a0, t4
                  nop
                  sltiu        gp, t2, 748
                  lui          gp, 874076
                  and          s6, a5, zero
                  xor          zero, s7, a1
                  sltu         s4, s5, s3
                  or           tp, a2, s3
                  beq          a2, s9, 774f
774:              sltu         s8, a1, s8
                  blt          s3, a0, 794f
                  auipc        a5, 238523
                  ori          s7, a2, -25
                  sll          ra, s2, a6
                  slt          t0, s7, a4
                  bge          sp, s2, 790f
                  sltu         s5, a5, s0
                  nop
783:              add          sp, a0, s7
                  blt          s9, t6, 791f
                  blt          tp, s0, 787f
                  xor          a4, s11, t4
787:              sltu         a3, a3, s0
                  auipc        t4, 820111
                  ori          tp, t1, -1654
790:              bne          t1, t4, 805f
791:              slt          t0, s10, a0
                  bne          t2, t1, 801f
                  slt          a3, t1, s6
794:              and          a3, t2, s8
                  slt          a2, s2, t1
                  slli         s4, a5, 2
                  blt          s3, s0, 806f
                  add          t5, a2, t2
                  and          s4, zero, a0
                  sltiu        t0, s0, 1539
801:              ori          t2, s0, -1418
                  bgeu         s2, t2, 818f
                  srl          s5, s10, a4
                  slti         a0, tp, 669
805:              slt          a7, a1, s4
806:              bltu         a6, a4, 810f
                  sll          s8, t4, s11
                  sltu         s5, sp, s8
                  andi         sp, t1, 197
810:              andi         t1, zero, 1532
                  slt          a4, s11, s1
                  ori          s4, tp, -1608
                  or           zero, tp, t4
                  slti         s6, s2, 711
                  lui          t4, 74946
                  lui          s5, 726088
                  or           s2, a5, ra
818:              xori         s4, gp, 823
                  srai         s8, t1, 22
                  slti         t0, s6, -390
                  srai         t4, t6, 14
                  xori         s4, zero, -1587
                  srli         s10, t1, 25
                  lui          a3, 397545
                  bgeu         s4, t6, 833f
                  auipc        gp, 369807
                  and          t6, s1, a6
                  blt          s8, a6, 834f
                  addi         s6, a7, -1999
                  slt          s8, t4, ra
                  beq          s1, a4, 848f
                  blt          s6, t5, 844f
833:              sra          t0, s10, a3
834:              blt          s8, a4, 853f
                  lui          s2, 298037
                  bge          s1, a5, 854f
                  auipc        a3, 684766
                  xor          gp, ra, s5
                  add          a0, s11, t6
                  sll          a2, s11, t1
                  sll          t6, s7, a5
                  sltiu        a0, s11, -1553
                  andi         t2, ra, 2005
844:              sltiu        s7, s5, 2011
                  beq          t5, s8, 853f
                  sltu         t1, ra, s6
                  srai         s10, t1, 6
848:              add          gp, s8, a7
                  auipc        s0, 635546
                  andi         s3, t0, 1499
                  bgeu         ra, a3, 867f
                  sra          a6, a6, s6
853:              srl          t5, s11, a5
854:              sra          tp, t5, s10
                  sltiu        tp, t6, 1952
                  auipc        t1, 454770
                  bne          a0, s6, 862f
                  sll          t6, a7, ra
                  nop
                  ori          t3, sp, -2034
                  lui          tp, 581856
862:              sll          s4, s4, s3
                  add          s8, a2, tp
                  beq          t0, s5, 881f
                  srli         a5, s8, 29
                  bne          s1, a3, 868f
867:              slli         t3, s1, 28
868:              slli         a4, s0, 14
                  or           s0, s8, a0
                  slt          s6, t3, s9
                  bne          t1, a2, 875f
                  auipc        s10, 149240
                  andi         s6, a5, -333
                  lui          gp, 1032833
875:              xor          a4, s3, t0
                  ori          s3, a2, -262
                  sll          tp, s3, s1
                  sltu         tp, s0, s7
                  bltu         sp, s10, 896f
                  ori          s3, zero, -1757
881:              sub          a4, t0, gp
                  bne          a2, s3, 891f
                  xori         a0, s8, -1598
                  andi         a5, s7, -1376
                  srai         ra, t1, 26
                  beq          a0, a3, 896f
                  and          a3, t0, t5
                  slli         tp, a5, 9
                  blt          t2, t1, 901f
                  addi         s5, a4, -1753
891:              sra          a1, s10, a4
                  add          s3, s4, s0
                  nop
                  bne          s7, s5, 914f
                  srai         t5, t4, 24
896:              sltu         ra, t6, a0
                  sltiu        s0, t0, 216
                  addi         a2, zero, -10 #init loop 0 counter
                  add          a4, s11, sp
                  addi         t2, zero, -19 #init loop 0 limit
                  sltu         s4, tp, s11
                  srai         tp, t0, 24
                  slt          s6, a4, t4
sub_1_10_0_t:     xori         s2, zero, 1025
                  srai         t5, gp, 18
                  addi         a2, a2, -9 #update loop 0 counter
                  or           a4, s0, a7
                  sub          s3, gp, s9
                  slt          s3, t5, s9
                  slli         t0, s7, 0
                  add          zero, t2, t0
                  beq          a2, t2, sub_1_10_0_t #branch for loop 0
                  slli         a7, s2, 3
                  beq          a7, a3, 910f
                  sltiu        t0, s1, 2017
                  ori          a2, t4, -928
901:              srli         a0, a3, 0
                  bge          t0, s6, 907f
                  bne          s7, a6, 911f
                  slti         a7, a7, 43
                  sltiu        a4, s1, -626
                  bne          tp, zero, 910f
907:              ori          t5, s4, -1609
                  ori          t1, a4, 283
                  add          t0, sp, tp
910:              or           a0, a5, s3
911:              bge          s4, s4, 930f
                  addi         s3, s2, -1818
                  or           a4, sp, a2
914:              and          t4, s2, s6
                  andi         s3, t4, 1194
                  bgeu         s6, a1, 918f
                  ori          t6, s3, 1119
918:              bge          a0, t6, 938f
                  slti         s6, s10, 899
                  srl          t5, a4, s3
                  sltiu        s4, a7, 1428
                  beq          zero, t3, 937f
                  auipc        t6, 527104
                  blt          s9, s10, 936f
                  add          t6, s2, a7
                  lui          a0, 1039539
                  ori          a5, s11, 507
                  bltu         t0, t4, 932f
                  auipc        t5, 333640
930:              bgeu         a5, s5, 947f
                  sub          sp, s2, s6
932:              bne          s7, s3, 948f
                  sltiu        zero, a4, -1293
                  sltiu        gp, sp, -1054
                  sltu         gp, a3, s8
936:              xori         a1, sp, -452
937:              bge          t3, t1, 956f
938:              slt          t4, t2, a7
                  srai         t4, a0, 8
                  nop
                  sltiu        a3, s7, -838
                  or           a6, s6, sp
                  andi         a7, s3, -32
                  bne          a5, gp, 946f
                  bne          a5, a1, 955f
946:              bgeu         a3, gp, 952f
947:              xor          s2, s8, s11
948:              add          a4, s7, ra
                  blt          s10, a1, 958f
                  blt          a6, s9, 962f
                  nop
952:              xori         s2, s11, 1859
                  auipc        t6, 243853
                  blt          s5, ra, 966f
955:              srli         t0, s3, 16
956:              srai         t2, t3, 28
                  sub          s8, s2, t6
958:              sltu         t2, s5, t0
                  andi         t5, a5, -407
                  slt          t5, s2, s10
                  xor          sp, gp, s10
962:              xori         tp, a0, -882
                  srai         t3, s10, 26
                  auipc        t4, 944754
                  bge          a4, s0, 974f
966:              slti         t3, s10, 1654
                  bgeu         t3, a2, 984f
                  slti         s3, s4, 946
                  bge          a5, a5, 977f
                  bne          a1, t2, 974f
                  bne          a4, a6, 989f
                  xor          s4, t2, gp
                  add          t6, s2, a6
974:              or           a1, t3, s9
                  beq          a4, s4, 982f
                  sub          t0, a6, a1
977:              nop
                  xori         t4, t3, -1906
                  nop
                  lui          t1, 244876
                  addi         tp, t0, 1036
982:              lui          gp, 264814
                  slli         a3, t2, 26
984:              srl          zero, a3, t2
                  srl          s8, t6, a7
                  srli         a1, s2, 19
                  sltu         t4, a1, tp
                  sltu         a3, a1, a0
989:              xori         zero, t0, -717
                  sub          s5, s11, a0
                  xor          t1, ra, t1
                  bltu         a7, t4, 1012f
                  sltu         a0, ra, a2
                  sltu         a1, s2, a3
                  sra          a7, a2, s4
                  sub          a3, s10, s11
                  bgeu         a7, gp, 1006f
                  auipc        s4, 198804
                  sll          s0, a6, s6
                  lui          zero, 417806
                  sub          gp, s3, t0
                  sltiu        t4, t3, -779
                  addi         tp, s1, -1643
                  sub          ra, a0, s4
                  ori          t5, a0, -1911
1006:             sll          t3, s4, sp
                  nop
                  slti         t3, s1, 1534
                  bgeu         s3, s9, 1026f
                  blt          ra, zero, 1020f
                  xor          a6, s3, gp
1012:             xori         s6, t3, 28
                  bne          zero, a5, 1029f
                  sra          a5, sp, s0
                  sll          s2, s4, a6
                  andi         a4, t5, -448
                  bgeu         gp, s2, 1018f
1018:             bne          tp, t4, 1036f
                  blt          a4, t0, 1034f
1020:             sll          a5, t1, s6
                  sltu         t2, s3, s0
                  slli         a4, s1, 13
                  ori          t5, s10, -1734
                  bne          a5, t4, 1030f
                  bne          zero, ra, 1044f
1026:             or           a7, s3, gp
                  bge          s4, s8, 1036f
                  sra          t3, t6, tp
1029:             auipc        t2, 734161
1030:             slti         tp, s9, -1613
                  or           a5, a6, t2
                  bge          a0, a2, 1041f
                  slti         t2, sp, -1013
1034:             sltu         s7, t6, ra
                  beq          t3, a0, 1045f
1036:             or           s5, a5, t2
                  lui          s2, 545998
                  and          s10, s8, t5
                  beq          t4, a1, 1040f
1040:             srl          s6, a5, t3
1041:             blt          t3, a4, 1048f
                  slt          s4, a6, s3
                  and          zero, s8, a0
1044:             lui          a6, 657032
1045:             and          s8, t6, s5
                  slti         t2, s10, 1191
                  and          s5, s6, t6
1048:             sra          t1, a6, s1
                  xori         a5, a2, -1180
                  andi         tp, t3, 386
                  andi         s8, a6, 1538
                  beq          s3, a4, 1061f
                  sra          sp, s6, a4
                  addi         a2, a2, -349
                  sll          sp, t0, t2
                  andi         s7, a2, -59
                  xor          sp, s1, a5
                  bne          t4, s4, 1068f
                  andi         a5, t3, -1584
                  slti         a5, a2, 1269
1061:             sra          gp, tp, tp
                  blt          s3, t1, 1066f
                  sltiu        zero, s0, 1670
                  srl          t4, a5, t2
                  andi         s6, a5, -1575
1066:             bne          gp, s7, 1068f
                  slti         t6, s1, 1487
1068:             sltiu        t5, s3, 1475
                  and          t6, a4, a5
                  add          t6, a6, a2
                  bltu         s5, s6, 1075f
                  sltu         s2, a2, s1
                  sltiu        a0, s6, -1160
                  sub          a0, t3, a4
1075:             slti         s2, a7, -901
                  sub          a6, a4, s10
                  sltiu        s8, tp, 562
                  slli         s3, a4, 21
                  xor          a5, s7, t1
                  sltu         zero, s5, s7
                  beq          t0, a0, 1083f
                  srai         a0, tp, 25
1083:             sll          t3, t0, a4
                  xor          s4, s4, s7
                  bgeu         s2, s6, 1093f
                  addi         s8, zero, 384
                  auipc        t5, 380022
                  sltiu        t5, a4, 1286
                  bgeu         s6, t2, 1106f
                  ori          a5, s3, 1487
                  blt          a7, s10, 1108f
                  ori          t1, sp, 509
1093:             xor          s4, a3, t2
                  blt          a7, s7, 1106f
                  xor          s0, a4, a1
                  or           s5, tp, s3
                  slli         gp, s0, 10
                  nop
                  sra          t2, t6, ra
                  bne          a1, a3, 1108f
                  sra          a7, s3, t0
                  sltu         s0, s5, a5
                  xor          s0, s10, tp
                  sra          a1, tp, s9
                  auipc        s8, 842940
1106:             srai         a6, s6, 23
                  beq          s2, sp, 1119f
1108:             lui          a1, 307787
                  beq          ra, sp, 1119f
                  lui          t0, 562275
                  sll          s5, s2, s1
                  xor          zero, s3, t6
                  slli         a4, a2, 5
                  and          s4, a7, t4
                  sll          s6, a4, t2
                  sra          a1, t1, s8
                  beq          tp, s4, 1119f
                  addi         ra, t5, -1162
1119:             sltu         t0, s7, t6
                  xor          tp, t0, zero
                  slt          s10, t0, s7
                  sltu         a6, zero, s0
                  xor          s2, s8, tp
                  or           gp, s1, tp
                  lw           t1, 4(s11)
                  or           s6, s1, t3
                  srai         t5, s7, 8
                  addi         s11, s11, 52
                  addi         t2, s5, 1078
                  andi         t5, t3, 404
                  andi         s0, t0, -1049
1628:             addi x23, x6, 1
1628:             jalr x23, x23, 0
sub_4:            sltu         s5, s6, zero
                  srai         a1, s9, 15
                  slti         s0, s0, 1728
                  or           s0, t3, zero
                  addi         s11, s11, -32
                  sltiu        s7, s5, 728
                  sw           t1, 4(s11)
                  sltu         a4, a4, s1
                  xori         ra, a6, 889
                  srai         t5, a4, 12
                  xor          s8, a0, a7
                  addi         tp, zero, 10 #init loop 0 counter
                  addi         s0, s8, -1959
                  addi         a4, zero, 10 #init loop 0 limit
                  or           s6, a2, s7
sub_4_10_0_t:     xor          t6, a4, zero
                  sub          s7, t1, s5
                  addi         tp, tp, -7 #update loop 0 counter
                  bgeu         tp, a4, sub_4_10_0_t #branch for loop 0
                  sub          a6, s0, s3
                  addi         a1, zero, -1 #init loop 0 counter
                  addi         a7, t0, -1868
                  slti         t0, s9, 847
                  xori         a3, t3, 1551
                  srai         a3, s3, 9
                  srli         t4, t0, 14
                  and          s5, a3, a6
                  slli         sp, s5, 31
                  or           s8, s2, a0
                  addi         a0, zero, 4 #init loop 0 limit
                  slti         tp, t6, 1777
                  slt          s0, t6, s8
                  srai         t1, t5, 23
sub_4_5_0_t:      nop
                  srai         t0, a4, 19
                  addi         a1, a1, 1 #update loop 0 counter
                  sltiu        s0, a3, 1067
                  srl          s4, t1, s10
                  sra          a7, s8, a1
                  sltu         s3, t1, a7
                  bltu         a1, a0, sub_4_5_0_t #branch for loop 0
                  auipc        s7, 261221
                  addi         t5, zero, -7 #init loop 1 counter
                  addi         s8, zero, 19 #init loop 1 limit
                  sub          ra, sp, a1
sub_4_4_1_t:      xori         a5, t1, 2028
                  sub          a6, a4, t2
                  or           gp, a0, a6
                  addi         t5, t5, 4 #update loop 1 counter
                  addi         a2, zero, 7 #init loop 0 counter
                  sltu         t2, t3, gp
                  addi         t4, zero, 5 #init loop 0 limit
                  slti         s3, t3, -398
sub_4_4_0_t:      ori          zero, gp, -603
                  addi         a2, a2, -3 #update loop 0 counter
                  bgeu         a2, t4, sub_4_4_0_t #branch for loop 0
                  auipc        s0, 981712
                  xori         a5, s10, 1763
                  sltiu        a5, t5, 472
                  or           a5, s10, s6
                  sub          gp, a0, a5
                  bltu         t5, s8, sub_4_4_1_t #branch for loop 1
                  lui          t3, 682239
                  addi         s10, zero, 2 #init loop 1 counter
                  addi         s8, zero, -3 #init loop 1 limit
sub_4_6_1_t:      auipc        a0, 337177
                  xori         a5, s10, -56
                  addi         s10, s10, -5 #update loop 1 counter
                  addi         t6, zero, -6 #init loop 0 counter
                  addi         tp, zero, 2 #init loop 0 limit
sub_4_6_0_t:      slt          a1, tp, t0
                  addi         t6, t6, 6 #update loop 0 counter
                  bltu         t6, tp, sub_4_6_0_t #branch for loop 0
                  bge          s10, s8, sub_4_6_1_t #branch for loop 1
                  add          a0, t6, s4
                  addi         t5, zero, 7 #init loop 1 counter
                  addi         a4, zero, -7 #init loop 1 limit
sub_4_0_1_t:      xor          s4, tp, s4
                  addi         t5, t5, -2 #update loop 1 counter
                  addi         s7, zero, -2 #init loop 0 counter
                  addi         t2, zero, 8 #init loop 0 limit
sub_4_0_0_t:      slti         a5, s9, 892
                  addi         s7, s7, 5 #update loop 0 counter
                  bltu         s7, t2, sub_4_0_0_t #branch for loop 0
                  beq          t5, a4, sub_4_0_1_t #branch for loop 1
                  addi         s4, s4, 561
                  addi         a2, zero, -10 #init loop 0 counter
                  and          s8, s3, a2
                  sra          t0, a1, s2
                  srli         a3, s11, 3
                  andi         t6, ra, 280
                  and          a6, sp, s6
                  addi         ra, zero, 15 #init loop 0 limit
                  nop
                  slt          s2, gp, t5
                  xor          t6, tp, s8
                  srai         s6, s3, 20
                  addi         s2, s0, -1834
sub_4_3_0_t:      xori         tp, a3, 1919
                  srl          a0, s8, a4
                  xor          t5, zero, s0
                  sltiu        a7, s8, -18
                  nop
                  sub          a4, s10, s5
                  srl          t6, gp, zero
                  srl          s5, t2, s11
                  sll          s2, a1, a4
                  ori          s8, t0, -1871
                  addi         a2, a2, 6 #update loop 0 counter
                  slti         sp, s10, -1703
                  andi         tp, a0, 131
                  bltu         a2, ra, sub_4_3_0_t #branch for loop 0
                  or           s5, t1, gp
                  addi         t6, zero, 7 #init loop 0 counter
                  or           a7, s10, a4
                  ori          a6, tp, -494
                  sra          s8, s10, s4
                  addi         t4, zero, -1022
                  xori         s0, s0, 1664
                  slt          t1, t4, t3
                  and          gp, s3, a4
                  and          zero, a5, s1
                  addi         t0, a3, -1303
                  and          ra, t5, s6
                  addi         t5, zero, 9 #init loop 0 limit
                  add          sp, tp, s7
                  or           s10, s2, t0
sub_4_8_0_t:      slti         s8, s9, 1142
                  slt          t3, t4, a4
                  sltu         a0, s4, ra
                  sra          a2, tp, t2
                  addi         t6, t6, 4 #update loop 0 counter
                  auipc        s3, 468100
                  slti         sp, s2, -1890
                  bltu         t6, t5, sub_4_8_0_t #branch for loop 0
                  andi         s2, s7, -1958
                  addi         s2, zero, -4 #init loop 1 counter
                  srl          t0, t5, t3
                  sll          sp, a6, t2
                  addi         gp, zero, -11 #init loop 1 limit
                  or           a6, s1, ra
sub_4_1_1_t:      slti         s4, s9, -974
                  add          a6, sp, a3
                  addi         s2, s2, -7 #update loop 1 counter
                  slti         a1, s3, -1331
                  slt          a0, t2, s1
                  sra          a5, a4, a2
                  sra          s5, t1, a2
                  addi         s8, zero, 2 #init loop 0 counter
                  andi         a5, s2, 1529
                  addi         a1, t0, -1183
                  sltiu        a0, s3, 1105
                  sra          a6, a4, a5
                  auipc        t4, 251721
                  addi         t1, zero, 8 #init loop 0 limit
sub_4_1_0_t:      sub          t5, t6, gp
                  xor          t0, t2, s11
                  addi         s8, s8, 10 #update loop 0 counter
                  slti         ra, s0, 1711
                  bltu         s8, t1, sub_4_1_0_t #branch for loop 0
                  xor          a6, t4, a5
                  sll          a1, s8, gp
                  beq          s2, gp, sub_4_1_1_t #branch for loop 1
                  auipc        t3, 579870
                  and          t2, s4, t6
                  slt          t2, a3, t2
                  bne          s3, t5, 21f
                  nop
                  sra          a3, s4, s10
                  or           t3, t2, s6
                  bge          s11, a5, 24f
                  andi         a3, t4, -496
                  bltu         ra, t2, 14f
                  slt          a7, s6, t1
                  sra          s6, t4, s7
                  nop
                  lui          t6, 216549
                  addi         t1, t1, -376
14:               srl          ra, sp, a4
                  sra          a3, tp, a5
                  bne          t5, zero, 27f
                  xori         a1, t3, -1543
                  lui          zero, 965968
                  sltu         a2, s4, a0
                  slt          s2, tp, s8
21:               sltu         t0, a6, s9
                  and          zero, a6, tp
                  bltu         gp, a6, 39f
24:               and          a5, t1, t2
                  xori         a0, t0, -1793
                  sll          t4, gp, gp
27:               sltu         a5, s11, s6
                  srl          t3, s9, t2
                  auipc        tp, 615789
                  srai         s6, t0, 24
                  bge          ra, s6, 38f
                  addi         s6, s4, 1979
                  xori         a0, s0, -1440
                  sub          gp, t2, t2
                  lui          tp, 352069
                  bltu         s10, s6, 48f
                  xor          gp, a0, t5
38:               bgeu         sp, s9, 42f
39:               xori         s10, tp, 2029
                  andi         ra, t0, 1400
                  bne          gp, a2, 42f
42:               slt          a1, t0, s9
                  slti         a5, t6, -384
                  xori         t5, s5, -1828
                  bgeu         s10, a7, 60f
                  or           a2, s4, a4
                  slti         s8, ra, 1130
48:               srai         s4, a3, 13
                  xori         t2, t6, 1324
                  sra          s6, a3, s6
                  slti         a2, s8, -1694
                  bgeu         tp, s2, 64f
                  bge          s9, gp, 72f
                  slt          a7, s11, t5
                  beq          t2, s9, 65f
                  sub          s8, tp, zero
                  bne          a4, a0, 76f
                  blt          a5, zero, 67f
                  sub          t5, a4, s0
60:               xor          tp, a1, a4
                  slti         a2, a0, 1053
                  lui          gp, 878095
                  bgeu         zero, t5, 71f
64:               sra          s0, s11, s5
65:               sll          a7, tp, s2
                  slli         a3, a7, 24
67:               lui          t1, 775414
                  addi         tp, a7, 1532
                  slt          s2, a7, s8
                  srai         tp, a4, 8
71:               xori         t2, t6, -591
72:               sll          s4, s10, s6
                  bltu         sp, s9, 85f
                  sltu         a5, s8, a5
                  bne          a0, s0, 94f
76:               beq          sp, s10, 91f
                  bgeu         a6, a1, 80f
                  bgeu         t2, sp, 82f
                  bgeu         a1, a2, 98f
80:               bge          t0, ra, 93f
                  add          a3, t1, s10
82:               slt          s10, a3, s1
                  bgeu         a3, t6, 90f
                  xor          s6, tp, a5
85:               add          s5, tp, s5
                  auipc        t0, 893588
                  bgeu         t1, s1, 91f
                  slli         s6, tp, 26
                  auipc        sp, 372171
90:               slt          t2, s11, a5
91:               srli         a6, s1, 12
                  addi         a5, zero, 10 #init loop 1 counter
                  addi         s0, zero, 9 #init loop 1 limit
sub_4_9_1_t:      add          t6, a4, a6
                  addi         a5, a5, -7 #update loop 1 counter
                  srl          s10, s7, a4
                  addi         s2, zero, 9 #init loop 0 counter
                  addi         a2, zero, -4 #init loop 0 limit
sub_4_9_0_t:      andi         s3, s11, -1864
                  srai         s10, t4, 25
                  addi         s2, s2, -10 #update loop 0 counter
                  bge          s2, a2, sub_4_9_0_t #branch for loop 0
                  bgeu         a5, s0, sub_4_9_1_t #branch for loop 1
                  andi         gp, t6, 345
                  xor          t3, zero, zero
93:               lui          t1, 4338
94:               and          s2, t0, a2
                  slti         s7, t6, 336
                  ori          s7, s7, 628
                  srl          zero, s1, zero
98:               slt          t2, zero, s7
                  srl          a4, ra, s10
                  sub          t1, s4, a1
                  or           zero, s10, a4
                  nop
                  srai         t1, t6, 4
                  add          a2, a1, sp
                  sra          gp, s8, s7
                  bne          t2, a1, 116f
                  or           s7, t1, a2
                  auipc        s6, 257361
                  sltu         a3, a3, s3
                  or           ra, a0, t4
                  bgeu         s7, s9, 120f
                  slti         a3, a0, -486
                  auipc        s2, 429430
                  auipc        s5, 859588
                  sltu         a5, sp, t4
116:              bne          s9, gp, 136f
                  lui          s7, 182154
                  lui          t3, 142176
                  bgeu         tp, tp, 132f
120:              nop
                  slt          s3, s11, s7
                  add          gp, ra, t2
                  bne          s6, s10, 131f
                  nop
                  bge          a4, a3, 135f
                  xori         s4, s5, -1266
                  lui          a7, 95301
                  bne          t4, t3, 135f
                  beq          t1, zero, 148f
                  bltu         a1, a2, 133f
131:              sll          zero, t6, s10
132:              or           s8, s5, sp
133:              beq          a6, ra, 134f
134:              bgeu         t0, t6, 138f
135:              ori          s5, t6, 1008
136:              bgeu         s0, s7, 155f
                  lui          a5, 399290
138:              slti         a2, sp, -1895
                  srli         s6, a2, 23
                  and          s8, a3, s0
                  blt          ra, a1, 154f
                  xori         s4, zero, -950
                  andi         tp, t2, 933
                  nop
                  ori          s3, t1, 633
                  sltiu        a0, t0, -1572
                  srai         gp, t1, 18
148:              bgeu         s0, s3, 168f
                  add          a7, t3, a6
                  xor          a5, t0, s11
                  ori          t2, s2, 1429
                  bgeu         s3, s10, 156f
                  bltu         a4, s3, 165f
154:              slli         a1, t5, 14
155:              nop
156:              nop
                  bge          gp, s4, 176f
                  sll          gp, s7, s0
                  slli         a5, a6, 19
                  sra          s6, s9, s2
                  srl          zero, a5, a1
                  xori         a4, s11, -1418
                  bge          s7, t6, 178f
                  bgeu         a5, s10, 179f
165:              add          s3, t0, t4
                  bgeu         zero, zero, 185f
                  slti         s6, t6, 832
168:              lui          a3, 379829
                  bge          t6, s6, 181f
                  bge          s10, a4, 176f
                  or           s0, t6, s10
                  addi         t1, s11, -996
                  slt          a4, a0, t2
                  and          a4, s0, s3
                  and          zero, t6, s4
176:              bgeu         s2, a2, 192f
                  bltu         t6, s5, 185f
178:              addi         s0, a0, 1376
179:              srl          a5, s10, t1
                  slli         ra, s1, 1
181:              srli         s4, zero, 18
                  srai         s2, s4, 21
                  auipc        s5, 581260
                  auipc        a3, 295993
185:              nop
                  add          s3, s8, s6
                  ori          s3, a0, -1401
                  slt          sp, a1, sp
                  and          s10, a2, t6
                  ori          s7, gp, 1553
                  bltu         s0, s5, 199f
192:              lui          a1, 126869
                  bne          a4, t4, 197f
                  slt          tp, s11, a6
                  srai         s7, a4, 10
                  sltiu        t0, t4, -1473
197:              slt          s6, a0, s4
                  addi         a7, zero, 4 #init loop 0 counter
                  sltu         a0, t6, t1
                  addi         t2, zero, 20 #init loop 0 limit
                  andi         t5, ra, 1302
                  auipc        a4, 511203
                  xori         s4, s10, 1545
                  addi         s4, a3, -681
                  slli         s4, s0, 25
                  slti         a0, t2, 1190
sub_4_7_0_t:      nop
                  sra          sp, a0, a4
                  sra          s3, a5, s10
                  srli         s3, s9, 18
                  addi         a7, a7, 8 #update loop 0 counter
                  bne          a7, t2, sub_4_7_0_t #branch for loop 0
                  ori          t6, s9, -389
                  srli         a7, s9, 17
199:              xor          tp, a0, t5
                  bgeu         s1, t0, 211f
                  lui          a5, 57786
                  srl          t6, ra, t0
                  nop
                  addi         a2, tp, 1638
                  ori          a2, s10, -1053
                  xori         s6, a6, 1941
                  and          t1, a6, t5
                  sub          a0, t2, t4
                  sll          a4, s9, s3
                  sll          t3, s4, s9
211:              sltu         s7, a4, t1
                  xori         zero, t1, -1402
                  or           ra, s5, s6
                  lui          s8, 143431
                  auipc        t0, 254289
                  lui          s3, 62230
                  or           gp, s11, sp
                  andi         sp, s10, -40
                  bge          t2, s8, 237f
                  auipc        s8, 528174
                  blt          t3, s2, 231f
                  srli         s4, t6, 28
                  ori          t4, s1, 183
                  srl          zero, s11, t3
                  slti         s3, s0, -1692
                  sra          a3, s9, s1
                  beq          s9, gp, 236f
                  bltu         s11, t2, 241f
                  addi         s6, s0, 2041
                  bgeu         a1, t4, 249f
231:              srli         tp, a6, 24
                  srli         a2, sp, 21
                  sra          s5, gp, s11
                  sll          t6, t3, a1
                  blt          s8, a5, 247f
236:              addi         tp, s6, 560
237:              sra          s2, s11, s5
                  slt          t2, s0, a5
                  slli         t5, s4, 24
                  nop
241:              srai         a0, t5, 12
                  bge          gp, sp, 251f
                  and          a2, tp, s3
                  srai         s3, s9, 27
                  bge          t6, gp, 252f
                  nop
247:              bge          a3, t4, 262f
                  slt          s10, t1, t6
249:              nop
                  bge          a6, s9, 254f
251:              srai         a7, a3, 18
252:              slt          t4, t1, a5
                  nop
254:              xori         s3, t3, 1741
                  or           s3, s5, s2
                  addi         s5, s9, 1757
                  slti         ra, gp, -1243
                  bne          t0, s0, 267f
                  bne          s2, a2, 267f
                  xor          s0, a1, s0
                  andi         t6, s4, -1228
262:              bge          s7, s1, 274f
                  sltiu        s6, s5, -1911
                  addi         s7, ra, 1495
                  srai         a6, s5, 31
                  sll          t6, tp, t2
267:              srai         s10, a0, 21
                  sub          a0, s0, s7
                  xori         t0, a2, -248
                  lui          t1, 899913
                  add          t1, gp, s1
                  beq          sp, s3, 291f
                  andi         a3, t3, 1332
274:              add          s7, t2, t1
                  sra          s6, s6, a1
                  slli         s10, a2, 29
                  slt          ra, a3, t2
                  auipc        s8, 169513
                  blt          s7, s10, 291f
                  slti         gp, tp, 959
                  ori          s0, a7, 685
                  slti         ra, a0, -1046
                  lui          s5, 855320
                  beq          t5, s0, 288f
                  srl          s10, t0, s0
                  add          s3, t4, gp
                  srl          sp, s10, s7
288:              sltu         t5, s0, s3
                  sub          s3, sp, t5
                  sll          tp, t3, s6
291:              xori         t3, a2, -320
                  addi         a2, tp, -1392
                  srli         a1, s4, 31
                  srl          s10, s7, t5
                  addi         a2, t6, -1486
                  ori          t2, sp, 1862
                  bne          a1, s2, 310f
                  slti         a0, tp, 446
                  bne          t6, t6, 302f
                  sltu         tp, t4, t3
                  sub          tp, a4, s1
302:              auipc        a5, 304883
                  srli         t2, s0, 27
                  slti         s3, s4, 265
                  sub          t0, tp, s10
                  srai         s8, ra, 4
                  add          t4, s11, s4
                  add          a3, gp, a2
                  sra          zero, ra, t3
310:              or           a7, s9, s0
                  slti         sp, s6, 1556
                  and          s0, zero, s2
                  blt          s2, s5, 331f
                  add          a0, t1, s8
                  ori          t3, t5, 1929
                  slli         tp, t6, 28
                  lui          s2, 894281
                  lui          t0, 945485
                  xori         t4, a1, -4
                  andi         t2, s9, 1939
                  auipc        a7, 802554
                  bgeu         t4, gp, 341f
                  ori          a0, s7, 1564
                  slli         a5, a3, 12
                  srli         a2, a4, 21
                  srai         a7, t3, 14
                  slti         zero, s10, 1420
                  xor          tp, s1, a6
                  add          t1, tp, s5
                  slti         sp, a3, -1666
331:              sub          s7, a1, zero
                  ori          t4, t2, -1056
                  sltu         a5, s6, s0
                  xor          t1, s4, s4
                  ori          s5, s10, 615
                  sltiu        a5, s7, 1688
                  lui          zero, 584445
                  beq          t5, t4, 344f
                  bge          s3, t6, 348f
                  srl          t5, t5, s0
341:              and          s6, t4, tp
                  ori          gp, t5, -891
                  addi         s3, s3, -462
344:              srai         t6, s7, 16
                  srai         gp, s3, 18
                  srai         zero, ra, 28
                  sll          s2, t0, a2
348:              bge          s3, sp, 349f
349:              slli         s7, s6, 30
                  lui          s3, 703145
                  bltu         a2, zero, 359f
                  sra          t6, zero, t5
                  nop
                  bltu         s8, a4, 361f
                  srl          s5, s10, ra
                  beq          a3, s1, 360f
                  bgeu         s3, t3, 367f
                  and          s7, a1, a7
359:              ori          t1, t4, -1538
360:              nop
361:              srl          t1, s3, s6
                  slti         t0, a6, -1123
                  add          a6, t3, t0
                  auipc        t1, 672409
                  slli         t1, s3, 3
                  blt          sp, t5, 385f
367:              beq          gp, s11, 386f
                  bgeu         t5, s8, 375f
                  bgeu         s7, a1, 389f
                  sll          t5, t2, a1
                  ori          t1, s8, -236
                  beq          s8, s5, 383f
                  slti         s10, t2, -29
                  sltu         t0, a6, t2
375:              xori         a2, gp, 260
                  srli         a4, a0, 30
                  xori         t4, s2, -659
                  bltu         ra, sp, 394f
                  slti         t2, zero, 1418
                  bne          s11, a4, 390f
                  addi         s6, s11, -147
                  or           a2, s5, t6
383:              sltu         a6, a5, t6
                  lui          s4, 122555
385:              slti         a3, t0, -333
386:              sra          t4, s7, s2
                  slti         t1, t6, 911
                  srl          a2, tp, s5
389:              xori         s8, a7, 798
390:              lui          ra, 686107
                  xori         s7, s7, -354
                  auipc        a3, 534155
                  xori         t6, a3, 102
394:              andi         t4, a3, 1307
                  addi         s2, sp, -1501
                  bgeu         tp, t2, 409f
                  slti         sp, s2, 2021
                  bge          a1, a6, 410f
                  bltu         s8, a2, 414f
                  nop
                  srl          t0, gp, a7
                  bge          t3, t4, 421f
                  sll          ra, t1, s11
                  sub          s0, a7, s3
                  sub          s3, t5, s4
                  bgeu         s0, t2, 413f
                  or           a3, s2, s0
                  slli         a2, gp, 1
409:              sub          s0, tp, s11
410:              lui          t4, 167574
                  srai         t0, s1, 5
                  xori         a4, t2, -580
413:              add          t5, t3, t5
414:              addi         a0, a3, 463
                  srli         a2, t2, 21
                  add          t6, t6, t5
                  srl          t5, s9, t2
                  bge          ra, a7, 437f
                  or           a2, t2, s9
                  srli         sp, a0, 6
421:              sub          zero, s6, gp
                  auipc        a4, 91264
                  sltu         s6, s4, a3
                  xor          t3, s9, sp
                  or           s10, s0, a1
                  bge          a1, s1, 441f
                  slt          zero, t6, sp
                  auipc        zero, 321132
                  sra          ra, zero, t5
                  bltu         s4, a3, 442f
                  beq          tp, t3, 444f
                  sltu         ra, zero, s6
                  add          t1, s3, s5
                  xor          s4, a2, s4
                  srli         t6, ra, 17
                  add          s6, t3, sp
437:              nop
                  addi         gp, s8, -1519
                  srli         a3, s1, 0
                  addi         t5, s9, 335
441:              slt          a6, s1, a0
442:              bltu         s3, s10, 446f
                  andi         s2, zero, 76
444:              bgeu         s11, a3, 463f
                  bgeu         s2, a3, 461f
446:              sltiu        t5, zero, -1473
                  bne          s9, t4, 451f
                  sltiu        a2, t3, 1226
                  nop
                  slti         ra, s8, 1291
451:              srl          s8, s5, a3
                  sll          tp, sp, a1
                  beq          t1, s8, 473f
                  sra          t4, zero, a2
                  bge          s11, zero, 473f
                  beq          s9, a2, 457f
457:              beq          a0, a5, 460f
                  ori          s0, s7, 68
                  sra          gp, a7, a7
460:              slt          a0, tp, s8
461:              add          t2, t1, s7
                  xor          s8, s8, t1
463:              auipc        t3, 295071
                  slli         s5, s10, 12
                  beq          t6, s6, 484f
                  bltu         s10, a1, 472f
                  sltu         s6, s9, a4
                  bltu         ra, s3, 477f
                  sltiu        s5, s9, 1224
                  xor          s7, t0, s10
                  or           s10, ra, gp
472:              sub          zero, s10, ra
473:              sub          a1, a3, t3
                  sll          s3, t1, t1
                  nop
                  xori         a3, ra, -773
477:              bltu         s2, t6, 484f
                  auipc        s4, 8818
                  srli         gp, a4, 29
                  bgeu         s4, t2, 490f
                  slti         t2, a4, 1297
                  xor          s2, t0, s5
                  bgeu         a7, s2, 495f
484:              bgeu         a4, s9, 492f
                  bgeu         s1, a0, 495f
                  xor          zero, sp, s3
                  auipc        tp, 364094
                  bge          t5, s8, 496f
                  sub          s4, s1, s10
490:              sub          a7, s3, s6
                  xori         t3, t0, -413
492:              blt          s7, a5, 505f
                  srli         t4, ra, 29
                  lui          tp, 29331
495:              sltiu        tp, a4, -304
496:              xor          gp, a2, t6
                  beq          s10, s3, 501f
                  sltiu        s8, t2, -1098
                  srl          a7, s4, zero
                  bgeu         t5, s3, 519f
501:              bne          s2, s6, 513f
                  bltu         a1, s8, 513f
                  srli         a7, gp, 24
                  bne          s6, sp, 523f
505:              and          t6, t3, t1
                  bge          s1, s9, 515f
                  bge          s3, s6, 522f
                  lui          a3, 1043598
                  sub          s3, s10, sp
                  ori          sp, s3, 663
                  or           a7, a3, ra
                  sltiu        t6, s9, 223
513:              ori          ra, s0, 1943
                  blt          a6, s8, 518f
515:              add          sp, s7, s1
                  addi         s3, zero, 0 #init loop 0 counter
                  sltu         zero, t1, t4
                  addi         t0, zero, 9 #init loop 0 limit
                  xori         s6, s3, 62
sub_4_2_0_t:      add          a6, s9, s8
                  addi         s3, s3, 9 #update loop 0 counter
                  bltu         s3, t0, sub_4_2_0_t #branch for loop 0
                  andi         t1, s3, -376
                  srai         s2, t4, 19
                  slti         s10, t2, -567
518:              srai         t5, t5, 7
519:              srli         a1, ra, 18
                  beq          t0, a3, 532f
                  ori          s4, a3, 364
522:              sub          s2, s11, a5
523:              xori         t4, s6, 458
                  slli         a5, a0, 31
                  sub          t1, s4, a4
                  sltu         t4, t5, a1
                  sll          s5, s9, s7
                  or           gp, zero, t5
                  nop
                  and          zero, t2, a1
                  srli         t5, zero, 13
532:              bge          s7, t5, 551f
                  andi         a4, t4, 377
                  bge          a4, s8, 553f
                  srli         tp, s6, 18
                  xor          t4, s11, ra
                  sub          a0, t1, a6
                  andi         t4, t0, -269
                  xor          a0, s2, sp
                  xori         a4, s4, -332
                  srli         gp, t0, 30
                  srai         s5, ra, 23
                  sub          t2, a5, t0
                  addi         gp, s4, 178
                  bgeu         s7, t1, 563f
                  bge          s2, ra, 549f
                  bltu         t5, zero, 556f
                  nop
549:              ori          tp, t3, 1596
                  blt          s10, sp, 566f
551:              and          s8, a1, zero
                  sub          ra, ra, s3
553:              bltu         a7, s6, 572f
                  sll          a4, t5, a6
                  andi         s4, s8, 1766
556:              auipc        s2, 529322
                  blt          s6, s8, 572f
                  srai         s6, sp, 24
                  beq          zero, t6, 572f
                  and          s7, a4, s2
                  and          gp, s9, s9
                  bge          a5, s1, 570f
563:              bgeu         t0, s5, 569f
                  bltu         s11, a3, 574f
                  nop
566:              and          t2, a5, s2
                  slti         a1, t2, 1955
                  auipc        s5, 759336
569:              bne          s6, tp, 576f
570:              bge          a6, s8, 583f
                  beq          tp, t4, 583f
572:              bne          s3, s1, 583f
                  sltiu        t2, ra, 1719
574:              sll          a5, t5, t0
                  blt          zero, a1, 583f
576:              andi         a2, t4, 253
                  blt          s8, s6, 581f
                  sll          t6, s3, gp
                  nop
                  sub          gp, a1, a1
581:              sltiu        a7, t3, -1036
                  srli         s6, tp, 2
583:              addi         t2, t6, 1020
                  and          t6, s7, sp
                  lw           t1, 4(s11)
                  and          s6, t0, a6
                  srli         gp, a6, 22
                  srai         a0, s11, 25
                  srli         a0, zero, 25
                  lui          s5, 981853
                  sltiu        a4, s1, -1412
                  addi         s11, s11, 32
                  sltiu        s4, s11, -672
795:              addi x3, x6, 0
795:              jalr x3, x3, 0
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
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x9, x27, zero
                  csrr x12, 0x300 # MSTATUS
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 31
                  bne x12, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x12, 0x341 # MEPC
                  csrr x12, 0x342 # MCAUSE
                  li x2, 0x3 # BREAKPOINT
                  beq x12, x2, ebreak_handler
                  li x2, 0x8 # ECALL_UMODE
                  beq x12, x2, ecall_handler
                  li x2, 0x9 # ECALL_SMODE
                  beq x12, x2, ecall_handler
                  li x2, 0xb # ECALL_MMODE
                  beq x12, x2, ecall_handler
                  li x2, 0x1
                  beq x12, x2, instr_fault_handler
                  li x2, 0x5
                  beq x12, x2, load_fault_handler
                  li x2, 0x7
                  beq x12, x2, store_fault_handler
                  li x2, 0xc
                  beq x12, x2, pt_fault_handler
                  li x2, 0xd
                  beq x12, x2, pt_fault_handler
                  li x2, 0xf
                  beq x12, x2, pt_fault_handler
                  li x2, 0x2 # ILLEGAL_INSTRUCTION
                  beq x12, x2, illegal_instr_handler
                  csrr x2, 0x343 # MTVAL
                  1: la x25, test_done
                  jalr x1, x25, 0

ecall_handler:    
                  la x12, _start
                  sw x0, 0(x12)
                  sw x1, 4(x12)
                  sw x2, 8(x12)
                  sw x3, 12(x12)
                  sw x4, 16(x12)
                  sw x5, 20(x12)
                  sw x6, 24(x12)
                  sw x7, 28(x12)
                  sw x8, 32(x12)
                  sw x9, 36(x12)
                  sw x10, 40(x12)
                  sw x11, 44(x12)
                  sw x12, 48(x12)
                  sw x13, 52(x12)
                  sw x14, 56(x12)
                  sw x15, 60(x12)
                  sw x16, 64(x12)
                  sw x17, 68(x12)
                  sw x18, 72(x12)
                  sw x19, 76(x12)
                  sw x20, 80(x12)
                  sw x21, 84(x12)
                  sw x22, 88(x12)
                  sw x23, 92(x12)
                  sw x24, 96(x12)
                  sw x25, 100(x12)
                  sw x26, 104(x12)
                  sw x27, 108(x12)
                  sw x28, 112(x12)
                  sw x29, 116(x12)
                  sw x30, 120(x12)
                  sw x31, 124(x12)
                  la x25, write_tohost
                  jalr x0, x25, 0

instr_fault_handler:
                  add x27, x9, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

load_fault_handler:
                  add x27, x9, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

store_fault_handler:
                  add x27, x9, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

ebreak_handler:   
                  csrr  x12, 0x341
                  addi  x12, x12, 4
                  csrw  0x341, x12
                  add x27, x9, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

illegal_instr_handler:
                  csrr  x12, 0x341
                  addi  x12, x12, 4
                  csrw  0x341, x12
                  add x27, x9, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x12, 0x300 # MSTATUS;
                  csrr  x12, 0x304 # MIE;
                  csrr  x12, 0x344 # MIP;
                  csrrc x12, 0x344, x12 # MIP;
                  add x27, x9, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
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
