.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x20, h0_start
jalr x0, x20, 0
h0_start:
                  li x2, 0x40000100
                  csrw 0x301, x2
kernel_sp:        
                  la x13, kernel_stack_end

trap_vec_init:    
                  la x2, mtvec_handler
                  ori x2, x2, 1
                  csrw 0x305, x2 # MTVEC

mepc_setup:       
                  la x2, init
                  csrw 0x341, x2

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x2, 0x1800
                  csrw 0x300, x2 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x80000000
                  li x2, 0x941fa764
                  li x3, 0xc158feda
                  li x4, 0xa075a0b5
                  li x5, 0x80000000
                  li x6, 0x3
                  li x7, 0xfecdd3a1
                  li x8, 0xfaa30fc1
                  li x9, 0x0
                  li x10, 0xfd103b09
                  li x11, 0x0
                  li x12, 0xffb31321
                  li x14, 0x80000000
                  li x15, 0x80000000
                  li x16, 0xb
                  li x17, 0xd14f3545
                  li x18, 0x9
                  li x19, 0x0
                  li x20, 0x80000000
                  li x21, 0xcaedbc4d
                  li x22, 0xaecac99a
                  li x23, 0x4cbfaeb0
                  li x24, 0xfcd19318
                  li x25, 0xdee7bd26
                  li x26, 0x80000000
                  li x27, 0x80000000
                  li x28, 0xe6365ba2
                  li x30, 0x0
                  li x31, 0xb096d032
                  la x29, user_stack_end
main:             sltu         s9, zero, s8
                  la           s1, sub_1
                  sltu         t5, t1, t6
                  sll          s5, a1, t0
                  addi         s1, s1, 649
                  bne          gp, zero, main_j2 #branch to jump instr
                  addi         s10, tp, -1243
                  sltu         t6, sp, a1
main_j2:          jalr         t1, s1, -649 #jump main -> sub_1
                  srli         s5, s10, 11
                  auipc        a5, 121486
                  srai         s5, t0, 18
                  la           a0, sub_2
                  xor          s3, s11, t6
                  srli         s8, a3, 4
                  ori          a5, sp, 1352
                  add          t6, s9, a2
                  addi         a0, a0, 653
                  addi         s1, t1, 1335
                  bgeu         ra, s2, main_j3 #branch to jump instr
                  xori         tp, t6, -17
main_j3:          jalr         t1, a0, -653 #jump main -> sub_2
                  la           t2, region_1+220 #start riscv_load_store_rand_instr_stream_0
                  or           s3, s6, t0
                  lb           s6, -105(t2)
                  sb           t6, -203(t2)
                  slli         s1, s4, 3
                  lhu          s5, -192(t2)
                  lbu          a5, 90(t2)
                  nop
                  lw           t1, 96(t2)
                  xori         s5, s0, 1626
                  and          s10, a6, gp
                  lb           t5, -189(t2)
                  or           s2, gp, t0
                  srli         ra, t0, 22
                  add          a4, a6, s2
                  sw           s1, -152(t2)
                  lb           a4, -74(t2)
                  srli         a2, t5, 26
                  sw           a0, 172(t2)
                  sra          gp, s7, gp
                  lh           s1, 46(t2)
                  sb           s7, -53(t2)
                  andi         s6, t6, -1643
                  sll          s8, a6, t0
                  xor          t1, s1, s7
                  sltiu        t3, s5, -1932
                  ori          t1, s6, -894
                  lbu          s9, 47(t2)
                  lb           s11, -132(t2)
                  lbu          a7, -196(t2)
                  sb           s6, 40(t2)
                  lw           t0, 120(t2)
                  sll          s10, s7, sp
                  sltu         s10, s3, ra
                  addi         t0, a7, 1041
                  xor          s3, s1, t2
                  lbu          s10, -17(t2)
                  sb           s1, 191(t2)
                  sra          a1, s8, s4
                  lb           a6, 133(t2)
                  sb           t5, -148(t2)
                  sltu         s5, s10, a2
                  nop
                  lb           a0, 236(t2)
                  lbu          tp, -152(t2)
                  lb           s11, -7(t2)
                  sub          s5, a7, t0
                  slli         s8, s4, 11
                  lbu          a0, 69(t2)
                  xor          zero, t1, s1
                  add          s8, s7, s3
                  lb           a0, -9(t2)
                  andi         s8, s3, 606
                  sh           gp, 86(t2)
                  addi         s0, t3, -435
                  lb           s11, -81(t2) #end riscv_load_store_rand_instr_stream_0
                  ori          s7, s10, -1975
                  sra          s1, t0, t2
                  or           s7, ra, ra
                  bltu         t5, s6, 11f
                  add          gp, s5, t4
                  lui          s0, 773297
                  sll          gp, a2, s1
                  slti         t1, s11, -968
                  bge          s2, a5, 9f
9:                bgeu         s11, a1, 25f
                  nop
11:               addi         a7, tp, 425
                  sub          s5, ra, s7
                  bne          a1, s9, 28f
                  slt          s1, t4, a4
                  auipc        t1, 957004
                  nop
                  bge          s2, s3, 27f
                  ori          s11, a0, 1324
                  srl          t0, s2, s6
                  beq          a6, s2, 33f
                  srl          tp, s8, a4
                  bne          zero, a4, 23f
23:               sra          a4, gp, s0
                  srai         a0, t5, 10
25:               blt          s3, a3, 40f
                  slti         t5, a5, 416
27:               auipc        sp, 113784
28:               nop
                  lui          s8, 962607
                  bltu         t1, sp, 49f
                  srai         tp, a6, 29
                  slli         t1, a2, 4
33:               slt          a5, t3, a0
                  sra          a4, s2, tp
                  xor          s5, s4, s11
                  addi         s8, t5, 1264
                  srl          s7, s0, t0
                  nop
                  and          s11, s2, s6
40:               addi         a0, s8, 289
                  slt          a5, s9, s9
                  addi         a2, ra, 1011
                  beq          s3, a0, 62f
                  bltu         s8, t5, 52f
                  sub          t2, t1, zero
                  sltiu        s1, a4, -1778
                  sra          a2, t4, s0
                  auipc        t6, 683173
49:               sltu         t1, s7, zero
                  auipc        a6, 241638
                  addi         s9, sp, -62
52:               auipc        s3, 25385
                  nop
                  slti         ra, s2, 820
                  xor          t6, s6, gp
                  auipc        s7, 822577
                  srli         a5, t5, 30
                  bgeu         a4, s9, 73f
                  slli         s11, s6, 19
                  slt          s3, a3, s7
                  xor          s10, s10, s5
62:               addi         s6, sp, -1594
                  or           t0, a5, t2
                  xori         s3, zero, -2
                  nop
                  lui          s7, 1042343
                  bne          s5, tp, 75f
                  beq          t4, s4, 86f
                  bgeu         t6, sp, 73f
                  srai         s5, s11, 30
                  add          gp, s3, t1
                  slli         tp, t4, 1
73:               srl          s1, s10, t0
                  auipc        zero, 132656
75:               blt          a2, s10, 91f
                  bne          a4, a7, 91f
                  slti         t2, t2, 1771
                  slli         s6, t6, 22
                  srli         t2, ra, 4
                  addi         s11, t2, -1204
                  nop
                  srl          s2, s3, s6
                  bgeu         t6, s11, 88f
                  nop
                  slt          t1, s6, s1
86:               and          a7, t3, t0
                  srl          tp, s5, a0
88:               add          s11, s9, a5
                  slli         t1, s10, 20
                  sltiu        a1, a5, -347
91:               srl          sp, a5, t2
                  blt          s2, s6, 109f
                  slt          a1, gp, a2
                  addi         gp, s9, -1999
                  blt          tp, s10, 110f
                  slli         s11, t5, 16
                  lui          t0, 168311
                  bltu         a2, a0, 99f
99:               auipc        zero, 737478
                  srai         ra, s3, 29
                  slt          t2, tp, t5
                  lui          s10, 54305
                  xori         a4, t6, 1623
                  sub          a1, a2, t5
                  auipc        t6, 971006
                  bgeu         t3, s3, 112f
                  bgeu         a0, a6, 118f
                  bne          s6, t0, 124f
109:              slt          s10, s4, s11
110:              add          s5, a7, a5
                  nop
112:              slt          s10, t2, a3
                  xor          a6, s9, a0
                  xor          ra, t4, tp
                  beq          a1, s6, 131f
                  srai         ra, s10, 1
                  auipc        s1, 926979
                  la           s0, sub_1
                  sltiu        t3, zero, 904
                  lui          t3, 787521
                  addi         s0, s0, -986
                  slli         s9, a5, 31
                  sra          zero, s7, s9
                  add          sp, ra, a0
                  add          t2, ra, a0
                  bne          t4, a3, main_j1 #branch to jump instr
                  srli         gp, s3, 13
main_j1:          jalr         t1, s0, 986 #jump main -> sub_1
                  bge          s1, tp, 125f
                  sll          a1, s5, a6
118:              sltu         s2, t3, t4
                  or           s8, s2, s9
                  srli         a4, s9, 1
                  sub          s6, t4, s3
                  sub          t1, a3, s2
                  sll          s6, t0, a5
124:              beq          s8, t5, 127f
125:              srli         s5, a0, 9
                  beq          a1, a3, 129f
127:              sltiu        tp, a5, 254
                  slt          s3, s10, t1
129:              xor          sp, s7, s8
                  bltu         ra, t2, 138f
131:              lui          a0, 26345
                  ori          s5, t0, -459
                  slli         s1, t0, 4
                  sub          sp, a3, s6
                  add          zero, t3, ra
                  beq          s1, s8, 147f
                  nop
138:              and          t5, t5, t1
                  bge          a6, s11, 142f
                  addi         a4, t2, -1036
                  slli         t3, a4, 9
142:              or           a7, s7, a0
                  sll          s6, s2, t3
                  sltiu        t5, ra, -1080
                  beq          s2, s4, 147f
                  bgeu         a1, a1, 147f
147:              or           a6, t2, t4
                  la x20, test_done
                  jalr x0, x20, 0
test_done:        
                  li gp, 1
                  ecall
sub_7:            sll          t2, s10, s7
                  srli         s1, a6, 30
                  xori         a4, s0, 1770
                  sltu         sp, sp, t5
                  sll          gp, a5, s4
                  andi         t3, s1, -565
                  and          s8, a0, s6
                  addi         t4, t4, -24
                  slt          a4, a1, a1
                  sw           t1, 4(t4)
                  sra          t2, sp, a7
                  ori          t1, gp, -60
                  blt          ra, a4, sub_7_j11 #branch to jump instr
                  add          s0, a0, t5
                  sra          s10, s2, s0
                  xor          s7, a1, a6
                  xor          tp, t2, s11
                  auipc        s1, 402368
                  sra          a5, t6, tp
                  sra          s6, gp, a7
sub_7_j11:        jal          t1, sub_8 #jump sub_7 -> sub_8
                  sltiu        zero, t6, 1212
                  addi         t5, s7, 1140
                  la           t2, sub_8
                  addi         t2, t2, 1013
                  ori          s3, s7, 538
                  andi         a7, s7, -870
                  blt          s3, t2, sub_7_j12 #branch to jump instr
                  sra          a5, s5, s6
                  and          s8, t6, ra
                  addi         sp, s0, -1851
sub_7_j12:        jalr         t1, t2, -1013 #jump sub_7 -> sub_8
                  sltiu        s3, t0, 138
                  bge          s9, a5, 4f
                  sltu         zero, a3, s7
                  blt          a3, a2, 8f
4:                bltu         s6, a7, 24f
                  slti         s11, s3, 1320
                  and          t6, s4, a7
                  srl          t3, a5, s0
8:                bgeu         s10, s5, 28f
                  srli         s7, t2, 29
                  sltiu        a6, s0, -476
                  add          t2, tp, s5
                  slli         a5, ra, 29
                  blt          t4, s11, 21f
                  blt          s3, gp, 33f
                  beq          s0, s3, 19f
                  slt          sp, t3, a7
                  beq          t5, s7, 28f
                  andi         a7, s1, -26
19:               blt          gp, s9, 20f
20:               slti         sp, t1, 1385
21:               sll          sp, tp, s7
                  srli         gp, t3, 8
                  auipc        a2, 786191
24:               sltiu        a0, gp, -1711
                  nop
                  slti         s9, s3, -730
                  srai         a6, sp, 10
28:               blt          a1, s11, 38f
                  ori          t3, a6, -1074
                  srl          gp, t6, ra
                  sub          s9, a6, s10
                  and          s9, s8, a6
33:               or           t1, gp, t2
                  xor          t0, s5, ra
                  srli         zero, s7, 12
                  nop
                  andi         s6, s2, 47
38:               sltiu        s8, tp, 623
                  bgeu         ra, s8, 43f
                  sltu         t5, t5, t3
                  bge          a4, sp, 43f
                  auipc        sp, 1042147
43:               sra          a5, t4, s8
                  lw           t1, 4(t4)
                  sra          t5, s1, s5
                  srli         s7, s10, 23
                  srl          gp, s1, s4
                  addi         t4, t4, 24
                  srli         t3, t0, 16
                  sll          s3, t6, ra
                  slti         gp, s11, -828
                  sub          a0, t0, a1
                  srai         tp, t5, 8
                  xori         s11, gp, 542
87:               addi x4, x6, 1
87:               jalr x4, x4, 0
sub_6:            ori          a7, t3, -1102
                  nop
                  add          s9, gp, zero
                  xori         s8, s2, 1782
                  bltu         sp, s10, sub_6_stack_p
                  add          zero, a6, s6
sub_6_stack_p:    addi         t4, t4, -16
                  sw           t1, 4(t4)
                  srli         sp, tp, 17
                  sll          a1, s7, t5
                  auipc        a5, 190903
                  srli         s3, t6, 26
                  add          a5, s11, ra
                  add          s9, t3, s11
                  srl          a4, t1, a6
                  xori         a5, ra, 1908
                  sll          s10, s1, t6
                  sub          s5, zero, gp
                  slt          s7, s9, s7
                  nop
sub_6_j9:         jal          t1, sub_7 #jump sub_6 -> sub_7
                  or           tp, t5, s8
                  la           s7, sub_7
                  addi         s7, s7, -1006
                  add          sp, t0, t5
                  blt          s8, a7, sub_6_j10 #branch to jump instr
                  sltu         tp, s1, t5
                  sll          a2, a0, a5
                  srli         s10, t4, 19
                  slti         tp, s6, 1946
                  xori         a1, zero, 375
                  andi         a2, t4, -1514
                  sltiu        a1, a6, -1343
                  srli         zero, s11, 29
sub_6_j10:        jalr         t1, s7, 1006 #jump sub_6 -> sub_7
                  lui          ra, 891630
                  bne          a1, s1, 3f
                  andi         s1, a2, -1731
3:                srl          s11, s11, a6
                  bltu         s7, s6, 11f
                  srli         s8, tp, 9
                  bne          s1, s8, 25f
                  or           t6, s7, s10
                  srli         t1, a2, 30
                  sub          t3, tp, a0
                  nop
11:               slt          s6, s11, s8
                  xori         t0, t3, -966
                  addi         sp, s4, 836
                  sltiu        t0, a4, -1564
                  bge          a7, gp, 25f
                  blt          a7, s8, 32f
                  slli         tp, s3, 17
                  nop
                  and          s8, t4, s6
                  beq          s3, t3, 26f
                  add          t1, tp, t3
                  bltu         s6, s3, 32f
                  bne          a3, s1, 32f
                  srli         t5, t5, 9
25:               srl          s5, t5, s8
26:               srl          sp, s11, t1
                  or           t1, t3, ra
                  or           s0, a0, t4
                  sltu         s11, a7, ra
                  or           a7, s8, a3
                  sub          s9, ra, s0
32:               slt          s7, t3, a7
                  slli         sp, s6, 18
                  lui          t5, 604302
                  slt          gp, t6, a3
                  lw           t1, 4(t4)
                  sub          s0, s3, ra
                  sub          s9, s2, t5
                  addi         t4, t4, 16
                  and          gp, sp, gp
76:               addi x8, x6, 1
76:               jalr x8, x8, 0
sub_8:            bne          s11, a3, sub_8_stack_p
                  slti         gp, sp, 2007
                  xor          a1, a4, s9
sub_8_stack_p:    addi         t4, t4, -60
                  sltiu        s1, s8, 313
                  sw           t1, 4(t4)
                  srli         t6, s3, 13
                  addi         a0, ra, 448
                  nop
                  auipc        s3, 844481
                  xor          s7, zero, s8
                  sra          t0, a0, a5
                  sub          t3, a1, t4
                  sub          zero, s4, s10
sub_8_j13:        jal          t1, sub_10 #jump sub_8 -> sub_10
                  srli         t3, s3, 20
                  sra          s3, tp, t5
                  nop
                  auipc        t6, 329062
                  sra          s9, t6, sp
                  slt          tp, s10, a7
                  addi         s6, a5, -840
                  and          s2, s0, s1
                  addi         a1, t0, 1061
                  or           a5, gp, t5
sub_8_j14:        jal          t1, sub_9 #jump sub_8 -> sub_9
                  bge          a3, sp, 19f
                  srl          t5, a0, t1
                  sltu         s9, t0, a2
                  andi         a1, t5, -1251
                  ori          t0, s10, -1362
                  add          zero, t0, t0
                  srl          s6, tp, t3
                  ori          s1, s6, 1260
                  srli         a1, s4, 18
                  srai         s10, s10, 21
                  or           s2, s5, sp
                  addi         a1, a7, -961
                  bge          sp, t4, 17f
                  slt          a6, t6, s5
                  bge          a7, t0, 21f
                  slt          ra, s9, s7
                  and          s7, s10, gp
17:               sll          gp, s5, s3
                  xor          s7, t0, s2
19:               lui          sp, 783769
                  sll          a2, t2, t1
21:               srai         tp, a0, 13
                  addi         a4, s0, 1349
                  ori          s3, sp, -643
                  slti         a7, t2, 883
                  or           t5, s11, s2
                  or           s5, a3, s6
                  bge          s11, a7, 35f
                  blt          tp, a7, 37f
                  xori         a1, sp, 1412
                  slti         t6, a2, -183
                  slti         s7, t3, 1696
                  lui          t3, 1037620
                  xori         a2, t1, -1669
                  add          s1, a6, s6
35:               sltiu        a5, tp, 1114
                  and          s0, t2, s5
37:               srl          t0, s3, t6
                  lui          s10, 653578
                  bltu         t3, tp, 41f
                  ori          s6, s2, 1017
41:               slli         t2, s10, 16
                  sltu         s1, t6, a7
                  sub          tp, s10, s4
                  bne          a2, gp, 49f
                  xori         s5, s1, -1379
                  nop
                  ori          s5, s1, 2001
                  nop
49:               slti         t5, t6, -1112
                  auipc        s7, 1025587
                  bltu         a3, a7, 64f
                  sltiu        s9, s0, -819
                  sll          a7, a4, s7
                  lui          s1, 813539
                  xori         a5, a6, -1104
                  slti         sp, t1, 2011
                  and          s6, a3, s4
                  bgeu         s4, zero, 59f
59:               sub          t1, a0, tp
                  bltu         s2, s1, 75f
                  blt          s9, a3, 66f
                  slli         s6, t0, 14
                  bgeu         a3, zero, 70f
64:               slt          gp, a2, s9
                  srai         a5, t1, 26
66:               sltu         s2, a2, s8
                  srli         a5, t4, 27
                  sub          s3, a6, s9
                  nop
70:               sltu         s11, s4, t4
                  sub          s11, s0, s11
                  slli         s10, s10, 26
                  sltu         t3, s0, a0
                  bltu         a6, sp, 81f
75:               nop
                  srl          s0, t3, t6
                  bgeu         s9, a0, 81f
                  addi         ra, a7, -520
                  srai         a4, t3, 4
                  srl          s1, s5, tp
81:               andi         a0, s0, -272
                  sltiu        a5, t2, -523
                  ori          gp, t3, -1621
                  lw           t1, 4(t4)
                  srli         t6, a4, 28
                  add          a6, s3, t1
                  sub          s5, s4, t3
                  addi         t4, t4, 60
                  auipc        sp, 15862
                  ori          t2, s2, -408
117:              addi x7, x6, 1
117:              jalr x7, x7, 0
sub_2:            sra          a4, a4, t5
                  and          sp, t5, s2
                  addi         s7, s1, -73
                  sltiu        sp, tp, 324
                  sltiu        s6, a6, 1115
                  bltu         s9, ra, sub_2_stack_p
                  add          a6, t4, a5
sub_2_stack_p:    addi         t4, t4, -8
                  sw           t1, 4(t4)
                  slli         s11, s10, 15
                  andi         a0, t2, -339
                  xor          s5, s5, tp
                  nop
                  sltu         t3, a4, s8
                  srl          s9, a3, s1
                  srai         s8, a1, 22
                  bge          s0, a0, sub_2_j4 #branch to jump instr
                  sra          a1, t6, s0
                  sra          a4, s0, s9
                  sltiu        a4, s3, 1363
sub_2_j4:         jal          t1, sub_3 #jump sub_2 -> sub_3
                  and          s0, a1, t3
                  sltiu        t3, s1, 1049
                  slti         t0, t1, -1015
                  slt          s7, zero, s11
                  auipc        s6, 893543
                  sub          a0, s0, gp
                  bge          s5, s7, 7f
7:                and          a7, t1, s3
                  srli         t0, s9, 0
                  lw           t1, 4(t4)
                  addi         t4, t4, 8
                  auipc        a6, 419144
                  addi         ra, t5, 34
                  slti         s11, t6, -1449
                  slti         t2, tp, 1712
36:               addi x11, x6, 1
36:               jalr x11, x11, 0
sub_3:            bne          s8, s4, sub_3_stack_p
sub_3_stack_p:    addi         t4, t4, -20
                  srai         a0, s11, 1
                  and          s6, t1, s8
                  sll          gp, a1, ra
                  sw           t1, 4(t4)
                  sltu         s10, a5, tp
                  srai         gp, a2, 6
                  slti         s0, s6, -576
                  blt          a2, s3, 12f
                  lui          a5, 303583
                  auipc        ra, 1013527
                  slti         zero, t4, 1374
                  nop
                  sll          a5, s4, s0
                  or           gp, a6, t0
                  beq          a2, gp, 28f
                  or           s8, s3, s9
                  slli         s0, s11, 1
                  andi         s1, s10, 404
12:               andi         t5, s8, 1245
                  srl          s11, zero, s7
                  slti         gp, s8, -330
                  sltu         s1, a3, a5
                  bltu         s6, s7, 27f
                  xori         t2, s5, -2011
                  sub          t3, s7, t5
                  sltu         s9, s5, a6
                  sra          s11, t4, t1
                  bltu         t4, s9, 34f
                  blt          s7, s2, 27f
                  nop
                  sll          s3, t0, a2
                  beq          a1, t0, 45f
                  ori          s10, t4, -1139
27:               srai         s2, a4, 0
28:               nop
                  bltu         t3, t4, 31f
                  bgeu         gp, tp, 32f
31:               nop
32:               bge          s10, s5, 36f
                  add          a7, t0, tp
34:               lui          s0, 385528
                  add          s7, gp, t6
36:               slti         a2, t1, 1187
                  srl          s8, s3, a3
                  slli         s3, ra, 28
                  sll          s11, sp, a3
                  sub          a0, t4, s5
                  ori          gp, a1, 1575
                  xor          s6, s3, a5
                  srai         s0, s2, 31
                  andi         s11, a6, -39
45:               xor          s8, s10, sp
                  bgeu         t4, s4, 58f
                  slti         zero, s4, 1183
                  bgeu         t6, s2, 65f
                  xor          s11, a6, t3
                  or           t2, s10, t2
                  slti         s2, a7, 430
                  bge          t2, s1, 60f
                  bltu         a7, t6, 64f
                  sltu         t1, t6, s1
                  or           a0, s1, s4
                  or           t1, a1, s5
                  sub          gp, ra, s10
58:               addi         ra, s7, -1709
                  sltiu        s2, gp, -213
60:               ori          ra, s2, -1758
                  ori          s8, s5, -244
                  srli         s6, s5, 5
                  bltu         s0, a1, 70f
64:               andi         t5, s7, -1055
65:               sub          a0, zero, s2
                  slti         a0, s2, -1726
                  auipc        a4, 181063
                  bne          a4, t2, 87f
                  slti         a6, a5, 23
70:               beq          t6, a0, 77f
                  slt          a5, s8, t4
                  bge          t2, a3, 75f
                  bne          s5, s3, 93f
                  bne          s7, s10, 76f
75:               bge          s4, a4, 92f
76:               and          s1, gp, t6
77:               lui          ra, 837129
                  srli         t3, t2, 7
                  ori          a0, s5, 1845
                  srai         t6, a5, 27
                  and          t2, a4, zero
                  sra          s9, sp, tp
                  bgeu         s3, sp, 97f
                  or           t3, s5, a2
                  bgeu         sp, a2, 99f
                  sltu         tp, s10, a7
87:               nop
                  add          a4, s4, s0
                  or           s3, zero, sp
                  slti         a0, s5, 513
                  slli         s3, t0, 19
92:               sltu         s3, s1, a5
93:               xori         t0, t2, -1401
                  sub          t1, t3, tp
                  slt          a4, s11, a4
                  slti         gp, s2, 2013
97:               and          a2, s8, sp
                  srl          tp, a1, s11
99:               ori          sp, t0, -113
                  srl          s6, ra, a6
                  sltu         s9, s7, sp
                  addi         tp, t3, 1636
                  lui          s6, 496866
                  blt          s9, gp, 110f
                  auipc        t6, 583701
                  bne          t4, t4, 120f
                  bgeu         t0, t2, 123f
                  blt          s0, zero, 118f
                  sub          s11, t5, a4
110:              slli         sp, t3, 1
                  beq          t3, tp, 131f
                  beq          t3, t1, 126f
                  sra          t3, s8, a4
                  bgeu         a5, zero, 119f
                  slti         sp, s11, -851
                  and          a1, s8, gp
                  addi         t5, a1, 695
118:              xor          zero, s10, s8
119:              ori          t6, s8, 2001
120:              ori          s8, t4, -445
                  bgeu         a2, t1, 136f
                  lui          a4, 585176
123:              bgeu         s10, a7, 134f
                  srli         t2, s4, 13
                  sub          a4, s2, s6
126:              sltiu        s8, t6, -883
                  sll          a0, s5, t6
                  srl          t2, s11, t2
                  bltu         s0, s1, 139f
                  sll          a5, tp, a3
131:              sltiu        s8, tp, 769
                  slti         s5, s11, -742
                  slli         s6, s1, 27
134:              bltu         s11, gp, 151f
                  sltiu        t6, s7, 1881
136:              sra          a6, a5, a6
                  blt          a4, ra, 151f
                  bltu         a3, a0, 145f
                  la           t1, region_0+101 #start riscv_load_store_rand_instr_stream_0
                  sltiu        gp, s8, 1896
                  srl          s7, t2, a6
                  lh           a7, 9(t1)
                  sb           t1, 16(t1)
                  lbu          s11, 7(t1)
                  lbu          s5, 3(t1)
                  sra          a6, tp, tp
                  sb           a2, 0(t1)
                  lb           tp, 8(t1)
                  lb           s9, 6(t1)
                  lb           a0, -12(t1)
                  lb           gp, -10(t1)
                  slti         s10, s7, 893
                  lh           s11, -11(t1)
                  srl          s2, ra, a5
                  sub          ra, s3, ra
                  lb           a0, 5(t1)
                  sb           t6, 14(t1)
                  lhu          s3, -7(t1)
                  srl          a5, t1, a4
                  slt          t5, t3, s5
                  lh           s3, 5(t1)
                  auipc        s6, 813996
                  lui          s8, 756797
                  lb           s8, -16(t1)
                  auipc        s1, 701569
                  sb           tp, 0(t1) #end riscv_load_store_rand_instr_stream_0
139:              ori          s6, a1, 1618
                  addi         ra, t4, 1583
                  bgeu         s1, s9, 155f
                  xor          s10, sp, s5
                  slli         t6, t6, 0
                  sltu         gp, s11, a5
145:              xori         s8, s3, 522
                  sll          s11, s3, a4
                  add          s2, t0, s5
                  slti         gp, s1, 638
                  auipc        t2, 162195
                  bltu         t4, sp, 161f
151:              srli         s3, ra, 25
                  srl          a1, s2, s5
                  sub          sp, gp, s0
                  beq          s9, s8, 166f
155:              or           zero, a2, a3
                  addi         s6, t3, 1867
                  sub          t5, t1, t6
                  auipc        t0, 440774
                  xori         gp, t5, 989
                  srai         s1, s9, 9
161:              nop
                  slli         zero, t0, 5
                  sra          s8, t0, s10
                  slli         a7, s1, 4
                  sltu         s11, a7, t2
166:              slti         s10, s7, 1090
                  addi         tp, a5, -462
                  sltiu        a0, s4, 221
                  slt          tp, a1, sp
                  lui          gp, 323841
                  lui          sp, 119995
                  sub          t3, zero, tp
                  sra          s11, s10, a4
                  or           s8, s6, s6
                  sltu         zero, t2, s10
                  sltu         a4, s2, t0
                  xori         s8, s1, -1367
                  slli         s7, s8, 7
                  sltiu        t1, s7, 1562
                  slt          a2, t4, t2
                  bne          a2, a2, 189f
                  andi         a0, a0, -1289
                  bgeu         a5, a0, 185f
                  bge          t2, s0, 188f
185:              auipc        tp, 752143
                  lui          s11, 840403
                  bltu         s6, sp, 198f
188:              andi         a6, t1, 656
189:              xori         a6, t6, 1949
                  sll          a2, a4, t1
                  sltiu        s1, a7, -118
                  srai         s3, t3, 0
                  srai         a2, a0, 24
                  sub          t5, t6, t5
                  slt          sp, a1, a2
                  srai         s8, a0, 3
                  srai         t5, s0, 9
                  la           a4, sub_4
                  addi         a4, a4, -967
                  sub          a1, t2, s0
                  sll          t5, s7, s11
                  andi         t3, t4, 650
                  slt          zero, s5, a4
                  beq          t5, s1, sub_3_j5 #branch to jump instr
                  lui          t0, 9191
sub_3_j5:         jalr         t1, a4, 967 #jump sub_3 -> sub_4
                  slti         t2, sp, 579
                  srai         a2, s2, 20
                  and          s8, s8, s11
                  auipc        s1, 918318
198:              addi         zero, t1, -1401
                  slli         gp, s2, 12
                  xor          s2, a6, t6
                  auipc        t1, 128272
                  xor          t5, a0, a4
                  bgeu         sp, t1, 205f
                  srl          a2, t6, s0
205:              addi         a1, t5, -2040
                  sra          t3, t0, s10
                  bltu         t1, s1, 216f
                  beq          t4, s4, 213f
                  or           sp, t1, a0
                  bge          s5, s8, 216f
                  srl          s7, s4, s5
                  beq          a3, a7, 216f
213:              sub          t0, a4, t2
                  sltu         a2, sp, t2
                  bne          t0, a1, 216f
216:              xori         s2, t0, 1448
                  slti         s7, s6, -1093
                  sll          t3, s11, a6
                  lw           t1, 4(t4)
                  addi         t4, t4, 20
                  nop
271:              addi x30, x6, 1
271:              jalr x30, x30, 0
sub_4:            bltu         s1, a6, sub_4_stack_p
sub_4_stack_p:    addi         t4, t4, -12
                  srai         sp, ra, 7
                  ori          t3, s7, -1930
                  sw           t1, 4(t4)
                  slti         s11, s3, 304
                  addi         a6, sp, -1622
                  nop
                  nop
                  sra          a0, t5, a2
                  sll          s2, s10, a0
                  sltiu        a5, a7, 628
                  lui          s3, 623367
                  la           t3, region_0+517 #start riscv_load_store_rand_instr_stream_1
                  slt          a5, t0, s3
                  or           t1, a2, zero
                  slli         a2, t2, 19
                  lbu          a7, 46(t3)
                  lb           a2, 10(t3)
                  nop
                  lbu          a6, -55(t3)
                  sb           a0, 22(t3)
                  and          a0, s4, s0
                  add          s2, sp, t4
                  lbu          s10, -42(t3)
                  or           t0, zero, tp
                  sb           a7, 25(t3)
                  ori          t5, t0, -1933
                  ori          a0, t2, -99
                  sltu         s2, t5, a1
                  sh           t1, 39(t3)
                  auipc        a0, 149209
                  srl          a6, s1, sp
                  nop
                  ori          sp, a3, 1231
                  slli         ra, s5, 30
                  lb           s7, 24(t3)
                  srl          s3, tp, a4
                  add          s8, ra, s7
                  sh           a2, 51(t3)
                  lb           a1, 16(t3)
                  xori         gp, s2, -1211
                  lw           ra, -17(t3)
                  lb           t0, -36(t3)
                  slli         s6, s6, 9
                  ori          t6, a2, -487
                  slti         s7, a4, 281
                  sub          s3, s5, t3
                  slti         s1, a0, 1298
                  xori         t1, a5, -103
                  slli         t5, s0, 31
                  srli         t0, s7, 4
                  lhu          t5, -27(t3)
                  sra          tp, s6, s1
                  ori          s1, t4, -1732
                  sb           zero, -58(t3)
                  andi         a7, s2, 1448
                  sltu         gp, s3, s11
                  lbu          a0, -44(t3)
                  lb           a1, -20(t3)
                  sb           s11, -48(t3)
                  lhu          s8, -5(t3) #end riscv_load_store_rand_instr_stream_1
                  la           ra, region_1+1013 #start riscv_load_store_rand_instr_stream_0
                  lb           s6, 195(ra)
                  lb           s9, 170(ra)
                  sub          s9, a2, s5
                  lw           s5, -77(ra)
                  sh           a6, 161(ra)
                  sltiu        a7, s11, -857
                  sb           sp, 81(ra)
                  auipc        s7, 542507
                  slt          s1, s4, a7
                  sb           a6, 149(ra)
                  sb           s6, 96(ra)
                  lh           s2, -67(ra)
                  lh           t6, 163(ra)
                  sh           t1, -203(ra)
                  add          a5, zero, t4
                  lh           zero, -115(ra)
                  lbu          sp, -198(ra)
                  ori          tp, s6, 929
                  auipc        gp, 101294
                  sh           s0, -233(ra)
                  nop
                  lbu          s9, -202(ra)
                  or           s6, a3, sp
                  lbu          t6, -92(ra)
                  slli         sp, s2, 31
                  lh           zero, -205(ra)
                  lhu          a6, 23(ra)
                  slt          a2, a3, t2
                  sll          a6, s6, s11
                  lb           s6, 227(ra)
                  slti         a1, gp, -1782
                  lb           s11, 56(ra)
                  lui          a2, 977167
                  xor          gp, t4, a6
                  lbu          s11, 136(ra)
                  lb           t0, -210(ra)
                  lhu          a4, 27(ra)
                  sll          zero, t1, a5
                  sb           a3, -16(ra)
                  sw           t2, 47(ra)
                  add          t2, a4, a7
                  slt          s9, s9, a7
                  sb           t3, -106(ra)
                  sb           t4, 17(ra)
                  srai         t0, s3, 19
                  lb           a1, 212(ra)
                  lbu          s7, -130(ra) #end riscv_load_store_rand_instr_stream_0
                  la           a1, region_0+184 #start riscv_load_store_rand_instr_stream_2
                  lbu          a2, 3(a1)
                  or           gp, s5, sp
                  sra          s7, s11, tp
                  slti         s7, t0, -938
                  sh           s1, -48(a1)
                  or           t6, s1, s3
                  and          s9, s8, a4
                  sb           s7, 40(a1)
                  xori         s8, s6, -1869
                  addi         t3, s9, -952
                  sra          s10, a2, a0
                  lb           t6, 48(a1)
                  sb           s1, 17(a1)
                  slli         s10, s3, 31
                  sb           s1, -13(a1)
                  lw           s3, 52(a1)
                  lbu          s1, 31(a1)
                  ori          t5, s4, 1871
                  lb           zero, 25(a1)
                  lb           s10, -53(a1)
                  ori          s7, a7, -1656
                  or           s8, t1, a5
                  sh           s1, 62(a1)
                  sra          s3, t1, a1
                  srai         s3, s1, 22
                  ori          gp, a0, -1708
                  lb           a7, 25(a1)
                  lw           s8, -24(a1)
                  sh           t1, -10(a1)
                  ori          t5, s4, 781
                  sltu         s6, t3, sp
                  sra          gp, a6, a4
                  lbu          s6, -61(a1)
                  sb           a1, -34(a1)
                  sw           t2, -8(a1)
                  and          t0, a1, gp
                  sb           tp, -57(a1)
                  sltiu        s11, t0, 1626
                  lb           a5, -39(a1)
                  ori          t1, s7, 1018
                  sh           s8, -18(a1)
                  sra          ra, s7, t3
                  sra          a0, a0, a6
                  sb           t0, -5(a1)
                  sw           t5, 20(a1)
                  lh           a4, 18(a1)
                  sb           t1, -47(a1)
                  lb           s9, 49(a1)
                  sb           ra, -41(a1)
                  auipc        s5, 270166
                  lh           s5, 30(a1)
                  lui          a5, 842226
                  addi         t1, t1, 159
                  lbu          s2, -55(a1)
                  sb           t3, -3(a1) #end riscv_load_store_rand_instr_stream_2
                  add          ra, s2, s9
                  addi         s10, s8, 847
                  or           tp, s7, s1
                  nop
                  bltu         tp, a2, 13f
                  xor          s1, sp, a4
                  ori          s2, t2, 274
                  addi         s6, t6, -351
                  srli         sp, s7, 13
                  bge          a7, t1, 25f
                  ori          tp, t5, 741
                  slli         zero, s9, 12
                  and          s10, sp, t1
13:               sll          ra, a1, t1
                  bne          t4, s1, 19f
                  blt          s3, s9, 20f
                  bltu         s7, gp, 28f
                  sltiu        s5, a3, 1693
                  slti         a2, t4, 14
19:               xor          s10, a5, s9
20:               blt          ra, s2, 36f
                  bne          a0, a2, 22f
22:               srl          gp, a4, t4
                  bge          a0, tp, 32f
                  sltiu        a0, t5, 1620
25:               slli         t1, s4, 30
                  slt          s7, a6, s1
                  auipc        a2, 983854
28:               or           s10, t1, ra
                  addi         sp, a1, 192
                  and          s11, s3, tp
                  auipc        t2, 835631
32:               beq          a6, s5, 44f
                  srl          zero, a7, t3
                  auipc        t6, 360960
                  blt          a4, a4, 46f
36:               lui          s8, 966723
                  slti         s2, t4, 1078
                  sub          t5, a3, a5
                  sltu         s9, a7, a4
                  slti         t5, s7, -809
                  slti         gp, s4, -1063
                  sll          s5, a0, s9
                  sltiu        t5, a3, -1172
44:               slti         s8, s0, 282
                  auipc        s11, 278086
46:               srli         ra, s4, 31
                  srai         t1, t0, 4
                  ori          a5, t6, 1060
                  slli         s0, s8, 31
                  srl          a4, s8, a1
                  sll          gp, a6, t6
                  slli         s1, a2, 5
                  lui          s0, 608731
                  srai         t0, ra, 30
                  slti         s11, s1, -1609
                  sll          s6, a7, t6
                  slt          s0, sp, a2
                  xor          t1, t1, s6
                  nop
                  xor          s7, ra, gp
                  addi         gp, a1, -1731
                  add          a5, s11, s1
                  slti         s3, s2, 1496
                  bltu         sp, s8, 71f
                  xori         a7, t5, -153
                  bgeu         s6, t6, 75f
                  bne          t6, s7, 74f
                  bgeu         a0, s8, 82f
                  addi         s11, s1, -901
                  slli         s7, s7, 13
71:               bltu         t6, t1, 74f
                  auipc        s11, 175919
                  srl          a6, s4, t2
74:               ori          ra, s7, 1235
75:               bgeu         a0, t0, 82f
                  bne          s10, tp, 93f
                  srl          t6, t2, zero
                  bge          tp, a4, 80f
                  sltiu        t6, gp, -2008
80:               slt          t5, a7, s11
                  bgeu         s0, t6, 100f
82:               addi         s2, s8, -1569
                  beq          s9, s1, 84f
84:               slti         t1, a4, 1615
                  bgeu         s10, a7, 101f
                  ori          a4, s0, -1650
                  sll          ra, t6, zero
                  auipc        a1, 960465
                  sub          sp, s10, a5
                  sll          a4, s4, ra
                  srl          a6, s6, a7
                  sll          t3, a0, s1
93:               xori         a2, a0, -1001
                  srai         zero, t1, 22
                  srli         s0, a7, 2
                  slli         a5, s2, 27
                  bne          t0, t2, 109f
                  addi         s0, sp, 1507
                  srai         a0, a2, 16
100:              andi         a0, t4, 376
101:              ori          a7, s5, -948
                  and          t6, s9, t4
                  sra          sp, t1, a6
                  nop
                  bge          a1, ra, 122f
                  slti         s6, s11, 136
                  auipc        s1, 719129
                  beq          s0, s9, 122f
109:              sltiu        t5, t0, -841
                  auipc        s10, 544907
                  or           a1, s0, s7
                  slli         s5, gp, 11
                  sra          a2, a7, s5
                  lui          t6, 463656
                  sltiu        a5, t5, 510
                  slti         s9, s3, 39
                  xor          a6, s4, s6
                  auipc        a5, 132595
                  addi         t5, a4, 121
                  sltu         t1, a7, s11
                  blt          s6, s4, 138f
122:              srai         s11, t6, 11
                  lui          sp, 597107
                  slli         ra, ra, 13
                  bne          s6, a1, 142f
                  add          s5, t0, a7
                  slti         s6, a6, 1010
                  slt          s5, a2, gp
                  andi         a5, a2, -1774
                  beq          a1, a2, 135f
                  auipc        a4, 432486
                  bge          s6, sp, 145f
                  srl          zero, s8, s0
                  bgeu         t6, a2, 152f
135:              xori         t1, s7, 1505
                  beq          a1, ra, 147f
                  slti         sp, a1, -1741
138:              lui          a0, 41539
                  srli         t3, sp, 19
                  ori          s8, s9, 1824
                  auipc        t3, 225391
142:              sra          gp, s6, a5
                  srl          s0, s6, zero
                  sll          s1, s7, sp
145:              lui          zero, 313947
                  srai         a6, s1, 11
147:              srl          s5, s10, ra
                  andi         s8, t4, 1860
                  srli         s6, t0, 8
                  beq          gp, gp, 161f
                  srli         ra, s11, 10
152:              addi         t5, s9, 1297
                  blt          t3, s0, 160f
                  xori         a5, t4, -307
                  lui          s9, 735916
                  or           s9, sp, t4
                  slt          ra, a4, sp
                  andi         a7, t2, 1001
                  and          s1, s8, zero
160:              beq          a7, t4, 165f
161:              sltu         gp, a1, s3
                  slti         a6, s3, 708
                  slti         s2, a7, 296
                  sltu         t0, a1, t5
165:              slli         a2, s3, 18
                  srl          a2, s10, a5
                  ori          t3, a2, 609
                  blt          s11, s7, 177f
                  sra          t5, t1, s5
                  ori          a6, s0, -1920
                  srai         tp, t2, 29
                  blt          a1, zero, 189f
                  lui          a7, 49042
                  beq          s6, a2, 186f
                  srli         gp, tp, 31
                  addi         s0, t4, 702
177:              blt          a0, a1, 188f
                  srli         s2, a6, 11
                  slli         a2, s3, 3
                  srli         a0, gp, 12
                  sub          t5, s8, s8
                  or           s11, s11, a6
                  sll          sp, a7, t4
                  or           a5, a5, a4
                  srli         a0, s9, 10
186:              andi         s9, s3, 1915
                  or           a1, s6, sp
188:              xori         gp, s3, 407
189:              ori          tp, gp, 842
                  slti         s11, s11, -495
                  sltu         s2, a1, s6
                  blt          gp, t2, 208f
                  xori         s1, a5, -1849
                  nop
                  bge          zero, s5, 202f
                  srli         s1, s6, 23
                  sub          gp, t4, s1
                  nop
                  srl          a1, a6, a0
                  sll          s2, s6, s2
                  addi         t2, a1, -1918
202:              sltiu        s7, a5, -1890
                  andi         s0, t2, -1504
                  xori         s8, t2, 7
                  sltu         s6, a1, s7
                  auipc        ra, 654597
                  nop
208:              srl          s2, s11, a4
                  blt          s5, a5, 212f
                  srai         s8, a0, 3
                  sltiu        s3, gp, 1775
212:              bltu         a7, s1, 229f
                  lui          s6, 275620
                  xor          sp, t4, t0
                  sub          zero, s5, s11
                  bge          t4, a4, 233f
                  nop
                  or           s10, s0, s8
                  bne          t6, zero, 220f
220:              nop
                  or           s3, t5, tp
                  slti         s10, t4, 131
                  sltu         s1, s11, t2
                  and          gp, s0, a5
                  slli         t1, a6, 2
                  or           s8, a1, s6
                  xori         sp, t4, -1974
                  andi         a6, s7, 784
229:              srl          t2, t5, t2
                  bge          t3, s9, 232f
                  sll          t5, gp, a0
232:              sll          a5, t1, t6
233:              add          t3, a7, ra
                  xori         t3, t4, -1566
                  sll          a5, s9, s7
                  sltu         ra, s8, t3
                  blt          s10, t6, 246f
                  sub          s10, a3, s7
                  bne          gp, s7, 244f
                  slt          s7, a3, a5
                  slli         ra, sp, 9
                  srl          s5, s1, s5
                  sll          gp, t2, s2
                  nop
                  slti         s2, s1, -483
                  srli         a2, gp, 23
                  sll          s5, t5, s3
                  sll          t1, t3, s7
                  srl          ra, t4, tp
                  andi         s10, a6, 902
sub_4_j6:         jal          t1, sub_5 #jump sub_4 -> sub_5
                  xori         zero, a6, -1571
244:              bne          s6, sp, 256f
                  add          sp, zero, s1
246:              srl          s2, s2, a1
                  bne          zero, s8, 260f
                  slli         t5, s5, 23
                  slt          t6, zero, zero
                  or           zero, a3, s8
                  sltu         a4, t6, s4
                  nop
                  andi         a6, s4, 837
                  blt          s3, a6, 263f
                  slli         s10, ra, 2
256:              addi         s1, s8, 366
                  sra          s9, a6, t5
                  slti         s0, tp, -515
                  lui          gp, 111995
260:              bltu         a0, t1, 278f
                  or           t3, a5, t6
                  addi         t5, s3, 1672
263:              auipc        a2, 218195
                  bne          a2, t6, 281f
                  slli         a7, s0, 5
                  bgeu         a0, s8, 282f
                  nop
                  sltu         s5, s4, ra
                  addi         s10, s4, -1594
                  nop
                  lui          a7, 408470
                  nop
                  sltu         s5, s1, a0
                  or           s7, s7, s2
                  sub          tp, t0, a4
                  sll          tp, a4, s4
                  addi         a0, t5, 871
278:              sub          s7, t0, a6
                  ori          t6, t0, 1431
                  bltu         s2, a0, 287f
281:              sltiu        a1, t0, -1841
282:              bne          a7, s7, 283f
283:              sra          a2, a3, s11
                  srli         zero, s2, 14
                  sltu         a7, zero, a0
                  lui          zero, 857142
287:              srl          t2, s7, s1
                  add          a6, t2, t6
                  bne          a7, t4, 303f
                  lui          ra, 670633
                  srli         a2, a7, 5
                  srli         t5, s10, 9
                  srai         a4, s4, 25
                  sltiu        a2, s0, -820
                  bge          t3, a7, 311f
                  lui          t1, 328293
                  xor          a0, s1, a1
                  bgeu         ra, t5, 312f
                  slt          s8, t1, a0
                  or           a6, t4, s3
                  bgeu         ra, s7, 320f
                  bge          s10, s0, 307f
303:              bltu         tp, ra, 315f
                  srai         s10, a6, 1
                  srl          s7, a1, a6
                  auipc        s11, 81177
307:              srai         t0, t6, 10
                  addi         s10, s1, 1562
                  slti         t6, tp, 1685
                  bge          zero, t1, 322f
311:              sll          a6, zero, s8
312:              srl          s0, s6, t1
                  slli         a6, s2, 21
                  sra          a7, a3, a5
315:              srli         a4, s3, 6
                  slt          a6, t3, s7
                  sll          t5, a7, a5
                  slt          s8, s6, t2
                  srai         tp, a7, 28
320:              srai         tp, a5, 4
                  lui          t2, 549438
322:              or           a1, a2, ra
                  srai         s0, t4, 29
                  or           t6, s6, s0
                  srai         a0, zero, 30
                  sltiu        s11, a0, 1945
                  slti         t5, tp, -545
                  add          a0, a2, tp
                  sltiu        zero, zero, -1691
                  ori          a6, t0, -846
                  srl          a0, s8, a0
                  beq          t1, t2, 348f
                  andi         s10, s1, -1642
                  sltiu        t0, t0, 1141
                  sltu         zero, t2, s0
                  srl          s3, s10, s11
                  srl          a6, s2, t2
                  bgeu         s2, t3, 355f
                  bge          a4, t0, 355f
                  sll          s10, t4, a2
                  andi         s8, s3, 1329
                  sll          sp, a6, a6
                  srai         t1, a2, 8
                  slli         tp, sp, 6
                  srai         s6, zero, 29
                  sra          s7, t5, a7
                  and          s7, s0, gp
348:              sltiu        a0, t5, 1754
                  beq          sp, t4, 356f
                  bne          ra, a0, 351f
351:              sub          zero, a7, a5
                  sll          t2, s9, a0
                  sll          gp, s2, s10
                  sub          s5, s1, s6
355:              add          sp, a7, s11
356:              andi         a2, t0, 145
                  srli         a2, s11, 30
                  slt          t0, a4, s10
                  xor          t0, a3, t3
                  bge          s9, s8, 362f
                  bltu         a7, s3, 378f
362:              sltiu        sp, t4, 769
                  add          s6, s9, t2
                  sub          a4, a3, t1
                  xori         t6, s1, 797
                  srli         a6, t5, 3
                  bgeu         a5, a7, 378f
                  add          zero, a3, s11
                  xori         s5, s9, -37
                  andi         s11, t2, -1627
                  bgeu         a4, t5, 388f
                  bgeu         t2, s1, 389f
                  srl          s3, s8, a3
                  sub          s10, s1, t1
                  slli         s11, s1, 12
                  srai         t5, s11, 29
                  srai         a4, s9, 18
378:              lui          s9, 48132
                  bge          t2, sp, 380f
380:              slli         a6, a2, 5
                  bge          s1, t2, 386f
                  addi         t1, a3, 1125
                  or           t1, s9, zero
                  xori         s2, s1, -707
                  sltu         a1, a5, t2
386:              srai         t6, s1, 8
                  ori          t0, t0, -1668
388:              bge          t0, s9, 401f
389:              sra          a2, s0, s1
                  and          a6, a6, tp
                  bne          s6, s2, 394f
                  bge          t6, s0, 401f
                  nop
394:              bge          a3, s7, 401f
                  sub          a1, s4, a1
                  lui          s10, 278131
                  slti         t2, s0, 1741
                  bne          tp, gp, 401f
                  bne          s0, a7, 401f
                  beq          sp, a1, 401f
401:              add          s2, gp, sp
                  nop
                  srai         s6, t5, 8
                  lw           t1, 4(t4)
                  slli         s3, t2, 0
                  addi         t4, t4, 12
                  sltu         a0, sp, a7
583:              addi x31, x6, 0
583:              jalr x31, x31, 0
sub_1:            addi         t4, t4, -12
                  srl          a6, s6, s9
                  sll          s5, s2, s3
                  sw           t1, 4(t4)
                  lui          a6, 882169
                  auipc        s9, 549584
                  la           a7, region_1+1846 #start riscv_load_store_rand_instr_stream_14
                  sb           s9, 150(a7)
                  lbu          s9, 113(a7)
                  sb           tp, -31(a7)
                  lhu          s3, -226(a7)
                  and          t1, a1, sp
                  lbu          t2, -207(a7)
                  lui          a5, 433087
                  lh           t2, -82(a7)
                  srli         s11, s10, 4
                  and          a0, s9, t1
                  lb           s9, -149(a7)
                  ori          a4, s11, -32
                  lb           s7, -233(a7)
                  lhu          a1, 148(a7)
                  lbu          s10, 87(a7)
                  andi         a1, a1, -616
                  lb           s10, -132(a7)
                  slt          s0, s7, s10
                  sra          s8, a0, t0
                  lbu          t6, -12(a7)
                  sh           a6, 0(a7)
                  lhu          a2, -62(a7)
                  xori         s3, s6, -451
                  slti         s2, s2, 958
                  sh           s10, 46(a7)
                  lbu          a4, -223(a7)
                  srai         ra, a6, 18
                  sb           t5, 143(a7)
                  auipc        tp, 784032
                  and          a6, gp, s7
                  xori         a6, s7, -448
                  lb           s6, 27(a7)
                  lhu          t1, 84(a7)
                  xor          a0, t5, a5
                  auipc        t0, 610356
                  auipc        t3, 141849
                  sw           s7, 102(a7)
                  lhu          s10, -78(a7)
                  slli         t2, s10, 20
                  slli         s2, s3, 27
                  andi         a2, s4, 882
                  lhu          s8, 78(a7)
                  sh           s9, -182(a7)
                  ori          s11, a2, 1353
                  sltu         t6, t5, a7
                  sll          s3, s11, s0
                  lui          s7, 636918
                  sra          a6, s3, s8
                  srli         t2, a3, 9
                  lhu          s2, -30(a7)
                  sltiu        s7, a3, 1456
                  add          a5, a0, t1
                  sltu         t2, t4, tp
                  lbu          t2, 29(a7)
                  sltiu        ra, a0, -741
                  sb           ra, -30(a7) #end riscv_load_store_rand_instr_stream_14
                  la           s5, region_1+213 #start riscv_load_store_rand_instr_stream_27
                  ori          s2, sp, 62
                  srai         t6, s1, 13
                  sb           a3, 14(s5)
                  sb           s3, 6(s5)
                  sltu         s10, s8, s8
                  xor          a4, s8, a0
                  sb           a4, 9(s5)
                  lbu          s7, -3(s5)
                  auipc        s2, 794997
                  lhu          a1, 5(s5)
                  sra          a7, s8, s4
                  lbu          a5, 0(s5)
                  slt          ra, tp, t0
                  lh           a2, -13(s5)
                  lh           t5, 3(s5)
                  sb           s1, -8(s5)
                  slli         t6, s2, 19
                  srli         s8, t6, 27
                  lb           t1, 6(s5)
                  lbu          t0, -6(s5)
                  xor          s3, s9, a2
                  sll          t3, t2, s8
                  andi         t0, a5, 1487
                  ori          t3, s10, -806
                  lbu          a1, -1(s5)
                  lh           s11, 9(s5)
                  lbu          s8, -15(s5)
                  sb           t4, 4(s5)
                  sb           s7, 8(s5)
                  and          sp, s5, s6
                  lb           t2, -4(s5)
                  ori          gp, t6, 1335
                  sltu         zero, s8, zero
                  lbu          a6, 0(s5)
                  sh           a4, 5(s5)
                  sb           a5, 4(s5)
                  lbu          s6, 1(s5)
                  lb           t6, 8(s5)
                  srai         s10, ra, 6
                  slti         a7, t2, -599
                  sra          a4, a5, a2
                  sb           t2, -16(s5)
                  sra          t0, s0, a6
                  sltu         a7, s8, a3
                  lw           s9, 3(s5)
                  sb           t0, 14(s5)
                  sltiu        t2, ra, -1467
                  sltu         s7, s11, a0
                  sh           s3, 3(s5) #end riscv_load_store_rand_instr_stream_27
                  la           sp, region_1+1666 #start riscv_load_store_rand_instr_stream_12
                  lbu          s11, 60(sp)
                  ori          s0, t5, 926
                  sb           s10, -27(sp)
                  lb           a2, -45(sp)
                  lw           s6, 54(sp)
                  or           a6, a5, a7
                  lh           t6, -10(sp)
                  sb           a1, 36(sp)
                  sltu         t5, s0, t3
                  auipc        a1, 896277
                  slti         tp, a2, 1779
                  lb           s2, 7(sp)
                  lb           zero, -48(sp)
                  sltiu        s3, a6, -572
                  or           s8, s1, a5
                  nop
                  srai         s1, s9, 28
                  sw           s9, -58(sp)
                  lbu          s6, 10(sp)
                  ori          t3, s5, 969
                  lbu          a7, -3(sp)
                  slt          t6, t3, s8
                  or           s1, s9, s9
                  sb           s8, -35(sp)
                  sb           s0, 56(sp)
                  srl          t3, ra, s9
                  or           s3, s4, t1
                  slli         t5, tp, 17
                  sb           s0, 61(sp)
                  or           t2, s6, tp
                  sh           t4, -40(sp)
                  sltiu        gp, t5, -1410
                  sltu         s10, s11, s4
                  sb           t5, -51(sp)
                  auipc        gp, 140091
                  andi         t2, a2, 452
                  sb           a2, 53(sp)
                  auipc        s6, 195862
                  lbu          a6, -33(sp)
                  ori          s2, a1, 18
                  add          s9, a6, s2
                  andi         a7, s1, -1439
                  sb           s1, -38(sp)
                  nop
                  lh           t6, -58(sp)
                  sltiu        s7, s1, -1600
                  lb           a0, -11(sp)
                  lhu          tp, 42(sp)
                  lb           zero, 37(sp)
                  lw           a5, 14(sp)
                  lbu          s2, 55(sp)
                  sh           a6, -60(sp)
                  sh           sp, -48(sp) #end riscv_load_store_rand_instr_stream_12
                  la           a4, region_1+1795 #start riscv_load_store_rand_instr_stream_18
                  lb           s3, -3(a4)
                  lbu          a7, -125(a4)
                  ori          zero, t1, -1962
                  auipc        s7, 523389
                  lbu          tp, -401(a4)
                  sh           gp, -459(a4)
                  slti         a5, sp, 914
                  slt          t2, zero, t4
                  add          gp, s2, s4
                  xori         t5, s8, 387
                  lb           a6, -166(a4)
                  lbu          a2, -598(a4)
                  sh           a7, -821(a4)
                  or           s5, t5, s9
                  xori         s1, s6, -1283
                  slli         s1, s4, 21
                  xori         a6, s6, -1173
                  andi         tp, s5, -1794
                  lbu          t2, -174(a4)
                  lh           sp, 23(a4)
                  sh           t5, -1291(a4)
                  lbu          s6, -1528(a4)
                  andi         s11, s3, -34
                  sb           s11, 138(a4)
                  lb           s9, -1708(a4)
                  nop
                  andi         s5, s10, 457
                  lbu          t3, 141(a4)
                  lb           s5, -814(a4)
                  sh           s7, -841(a4)
                  sb           s10, -1792(a4)
                  sh           zero, -1457(a4)
                  sw           a0, -1339(a4)
                  nop
                  lui          ra, 57338
                  lbu          s3, -438(a4)
                  lui          a1, 334323
                  sltiu        ra, tp, -196
                  sw           a6, -1707(a4)
                  slti         s0, a7, 445
                  lh           gp, -1171(a4)
                  lbu          s6, -1398(a4)
                  sra          ra, s8, t1
                  add          s7, tp, sp
                  sb           sp, -1444(a4)
                  lb           s6, -1174(a4)
                  srli         s5, t2, 21
                  lbu          t2, 52(a4)
                  auipc        t1, 714916
                  and          s2, sp, s7
                  sb           s4, -252(a4) #end riscv_load_store_rand_instr_stream_18
                  la           sp, region_1+1438 #start riscv_load_store_rand_instr_stream_11
                  or           t1, gp, ra
                  lbu          s9, -239(sp)
                  lb           s10, -101(sp)
                  sh           s2, 78(sp)
                  sb           a0, -10(sp)
                  lhu          a0, -254(sp)
                  slt          s5, a7, t6
                  add          s1, a3, s7
                  slt          s8, a2, s6
                  auipc        s6, 324009
                  slli         a2, a4, 20
                  sltu         s10, s8, a7
                  andi         s5, sp, -169
                  add          s10, a7, t4
                  slti         t0, t1, 1451
                  srl          a2, a1, s7
                  sb           a6, -241(sp)
                  srai         s8, a6, 24
                  addi         t2, s10, 788
                  slli         t3, s5, 16
                  lui          t1, 468673
                  sltu         t0, a7, a4
                  andi         a7, s1, -1455
                  srli         t3, t0, 22
                  lbu          s10, 29(sp)
                  sw           sp, -6(sp)
                  lb           s1, 7(sp)
                  lb           gp, 209(sp)
                  sh           a2, -60(sp)
                  lbu          s10, -125(sp)
                  sub          t5, s2, gp
                  sra          t2, t4, ra
                  sltiu        a2, s5, 981
                  and          t3, s8, s4
                  addi         s5, t5, -1148
                  lb           s10, 195(sp)
                  srli         t5, a2, 0
                  lb           a5, 224(sp) #end riscv_load_store_rand_instr_stream_11
                  la           t0, region_1+1484 #start riscv_load_store_rand_instr_stream_10
                  lh           t5, -1338(t0)
                  lbu          sp, -1156(t0)
                  lb           s11, 333(t0)
                  nop
                  sll          t2, sp, zero
                  add          s11, s4, a2
                  sb           s1, -945(t0)
                  lbu          s6, -662(t0)
                  lhu          s8, -688(t0)
                  xor          t2, a0, zero
                  lb           t6, -1267(t0)
                  addi         a7, a0, -169
                  lbu          a2, -935(t0)
                  sh           s3, -1274(t0)
                  lb           s6, 49(t0)
                  sltu         s6, t3, s11
                  sw           t2, -288(t0)
                  sltu         a5, s5, tp
                  sub          s2, a2, s10
                  sll          ra, a1, s4
                  srai         a2, a2, 3
                  add          s3, t3, ra
                  lh           tp, 266(t0)
                  lui          t5, 1018918
                  nop
                  nop
                  srai         t5, s4, 27
                  sll          s10, s5, s5
                  sb           s2, -1363(t0)
                  lui          ra, 556586
                  auipc        ra, 87797
                  sb           s11, -793(t0)
                  lbu          s3, -573(t0)
                  slti         s3, t6, 557
                  srli         gp, s5, 7
                  sb           a1, -209(t0)
                  lb           s7, -1113(t0)
                  lbu          t5, -773(t0)
                  lhu          sp, 496(t0)
                  lhu          zero, -570(t0)
                  sltiu        s9, s1, -310
                  srai         s1, s5, 3
                  lbu          s7, -285(t0)
                  lh           s1, 126(t0)
                  or           s11, t2, tp
                  auipc        a5, 65983
                  lhu          a7, 362(t0)
                  sra          t6, t4, gp
                  lb           sp, -1255(t0)
                  add          zero, tp, a7
                  xori         s3, tp, 326
                  add          a1, s1, ra
                  lb           a4, 106(t0)
                  addi         t2, a7, 1632
                  lbu          s2, -1009(t0)
                  lb           a1, -743(t0)
                  lw           s1, -444(t0)
                  lb           a1, -1469(t0)
                  sb           sp, -1290(t0) #end riscv_load_store_rand_instr_stream_10
                  la           s8, region_0+1456 #start riscv_load_store_rand_instr_stream_29
                  lh           a0, -14(s8)
                  sh           s4, 10(s8)
                  add          s5, a0, a2
                  lw           zero, -4(s8)
                  lbu          a7, 4(s8)
                  sh           ra, -4(s8)
                  xori         t0, a4, 424
                  sw           s8, -16(s8)
                  lhu          s0, -16(s8)
                  lh           zero, 14(s8)
                  andi         s0, a4, 1635
                  lb           sp, -7(s8)
                  sb           s10, 1(s8)
                  addi         t3, t4, 1733
                  sll          a0, a1, t0
                  sb           s2, 13(s8)
                  sh           s4, 12(s8)
                  lb           s10, -1(s8)
                  sltiu        t6, t5, -1544
                  lw           ra, -12(s8)
                  andi         tp, s3, -637
                  lb           t1, -3(s8)
                  lbu          zero, -9(s8)
                  lbu          s5, -1(s8)
                  sltiu        s2, s0, 1922
                  sb           s0, -11(s8)
                  addi         ra, a3, 435
                  sw           s6, 8(s8)
                  lb           t0, -4(s8)
                  sh           t0, 8(s8)
                  srli         a2, s10, 8
                  lbu          t6, -11(s8)
                  sll          t1, s3, tp
                  lb           s1, 11(s8)
                  lb           ra, -11(s8)
                  lhu          s5, -2(s8)
                  lb           a5, 10(s8)
                  xori         t0, s8, -503
                  srl          s7, s10, t0
                  sb           a6, -7(s8)
                  lbu          t0, 1(s8)
                  lbu          s11, -7(s8)
                  sb           s8, -11(s8) #end riscv_load_store_rand_instr_stream_29
                  la           s9, region_1+73 #start riscv_load_store_rand_instr_stream_7
                  add          s7, s6, s3
                  sh           zero, 903(s9)
                  sb           t4, 492(s9)
                  slt          s7, ra, gp
                  lb           a4, 1188(s9)
                  sb           a5, 1426(s9)
                  sb           s4, 1380(s9)
                  xori         tp, s5, 218
                  lb           t6, 271(s9)
                  lhu          sp, 781(s9)
                  sb           s7, -32(s9)
                  lw           t2, -13(s9)
                  sh           ra, 107(s9)
                  lui          a0, 841040
                  lbu          a4, 1881(s9)
                  nop
                  sb           t2, 962(s9)
                  sh           zero, 329(s9)
                  lbu          gp, 429(s9)
                  sra          t2, t5, s1
                  sh           t0, 785(s9)
                  sb           s10, 767(s9)
                  lb           t3, 1496(s9)
                  sub          t0, t3, t2
                  xor          ra, s4, s1
                  xor          a2, tp, a6
                  lw           a5, 1219(s9)
                  sw           t5, 751(s9)
                  auipc        t2, 422631
                  sra          ra, zero, s7
                  lh           a0, 1157(s9)
                  lbu          t5, 1741(s9)
                  srai         sp, s1, 22
                  lb           a4, 242(s9)
                  xori         a7, a7, 499
                  lb           ra, 316(s9)
                  or           t1, tp, s8
                  lbu          t5, 986(s9)
                  lbu          s11, 1759(s9)
                  and          s0, t2, t6
                  addi         gp, a1, 1689
                  lb           s2, 1018(s9)
                  lbu          s6, 1668(s9)
                  sb           sp, 1495(s9)
                  sb           gp, 1686(s9)
                  srai         tp, a6, 9
                  or           s10, s6, a0
                  lbu          s2, 1786(s9) #end riscv_load_store_rand_instr_stream_7
                  la           sp, region_0+1019 #start riscv_load_store_rand_instr_stream_6
                  slt          t3, tp, a0
                  srl          t0, s7, s7
                  sltu         a7, zero, t2
                  lw           t2, 13(sp)
                  sw           t6, -51(sp)
                  lbu          a5, -64(sp)
                  sb           t2, -30(sp)
                  sltu         t6, t6, a3
                  slt          gp, t4, s5
                  lbu          s8, -13(sp)
                  sb           t0, 38(sp)
                  lb           t1, -26(sp)
                  lhu          s9, -49(sp)
                  sub          gp, s8, t4
                  ori          a6, s4, 805
                  sltiu        a5, s6, 1190
                  sltiu        s0, zero, 732
                  xor          a6, t1, t6
                  xor          a2, t2, s6
                  xor          s5, s0, t2
                  xori         t0, s1, -1238
                  slt          a7, t2, a7
                  lbu          s7, -12(sp)
                  lb           s1, -48(sp) #end riscv_load_store_rand_instr_stream_6
                  la           sp, region_1+1409 #start riscv_load_store_rand_instr_stream_21
                  sub          tp, a0, ra
                  sub          s0, t4, s1
                  sh           s5, -59(sp)
                  xori         gp, t5, 1157
                  xor          s11, zero, a4
                  srl          a4, ra, a2
                  ori          s0, a7, 1476
                  sb           t4, -55(sp)
                  lbu          s10, 53(sp)
                  addi         s11, a2, 568
                  lbu          a2, -53(sp)
                  sll          t6, s6, ra
                  lb           t0, -6(sp)
                  xori         a5, a0, -1217
                  add          t5, ra, t4
                  lbu          s11, 38(sp)
                  sh           s2, 53(sp)
                  auipc        t2, 362104
                  or           t2, s6, t6
                  sb           zero, -6(sp)
                  lb           s0, -53(sp)
                  sub          tp, a5, sp
                  sw           t0, 11(sp)
                  sh           s6, 9(sp)
                  lbu          s3, 1(sp)
                  sltiu        zero, t6, -1027
                  lbu          s7, -42(sp)
                  andi         s0, s11, 1907
                  xori         s1, a1, 150
                  lbu          gp, 25(sp)
                  lbu          ra, -43(sp)
                  lb           a6, 42(sp)
                  slt          tp, s0, tp
                  lb           a0, -55(sp)
                  lbu          s9, 41(sp)
                  andi         ra, a4, -1835
                  slt          t1, tp, s3
                  sub          s2, t4, gp
                  lh           a4, -25(sp)
                  lh           s7, -31(sp)
                  lh           a4, -35(sp)
                  lbu          s6, 19(sp)
                  sh           t3, -13(sp)
                  lh           s0, 41(sp)
                  sb           s8, 50(sp)
                  srl          a5, t0, s9
                  srl          a6, a5, s11
                  lbu          t5, -16(sp)
                  sh           s7, -55(sp)
                  srai         t1, zero, 7
                  and          t1, t5, t5
                  slti         t1, tp, 1268
                  lbu          s0, 0(sp) #end riscv_load_store_rand_instr_stream_21
                  la           sp, region_1+770 #start riscv_load_store_rand_instr_stream_22
                  lbu          t1, 1033(sp)
                  lb           gp, -436(sp)
                  srl          ra, t4, s3
                  lhu          s10, 206(sp)
                  sh           s7, 432(sp)
                  sll          t0, a2, a0
                  addi         a1, a4, 2009
                  nop
                  lbu          zero, 957(sp)
                  lb           t1, -370(sp)
                  lbu          a6, -315(sp)
                  nop
                  and          s7, s9, gp
                  slli         s11, s5, 31
                  lb           s10, -493(sp)
                  lb           gp, 118(sp)
                  andi         s7, s7, -38
                  srai         a2, t6, 26
                  lbu          s9, 615(sp)
                  lb           ra, 621(sp)
                  lbu          zero, 545(sp)
                  sh           sp, -184(sp)
                  sub          s7, zero, a2
                  sw           t1, 1034(sp)
                  add          s10, s5, t5
                  lh           gp, -284(sp)
                  lbu          s6, 200(sp)
                  lbu          a6, -212(sp)
                  sh           zero, -614(sp)
                  slli         s2, s8, 12
                  lhu          t3, 496(sp) #end riscv_load_store_rand_instr_stream_22
                  la           s7, region_1+1481 #start riscv_load_store_rand_instr_stream_25
                  lb           a2, -1315(s7)
                  slt          s9, gp, a2
                  sb           t3, 189(s7)
                  lb           ra, 260(s7)
                  xori         a0, s6, 557
                  lb           t3, -374(s7)
                  sra          t1, zero, a3
                  lb           s2, 95(s7)
                  add          a4, s11, t3
                  ori          t5, t0, 1186
                  lb           s1, -1270(s7)
                  lui          s5, 318725
                  srl          s11, s10, ra
                  or           s5, a6, a3
                  lbu          s6, -1419(s7)
                  sh           s2, 451(s7)
                  addi         t1, a6, -1428
                  add          s8, s2, a2
                  lb           s9, -464(s7)
                  addi         s8, a3, 598
                  sltu         s1, s7, t6
                  lb           s5, -644(s7)
                  ori          a7, s7, 1589
                  xor          s9, s3, s2
                  sh           t0, -545(s7)
                  andi         s1, gp, 1947
                  sra          a5, t3, t6
                  sb           tp, -253(s7)
                  lbu          ra, -688(s7)
                  lbu          s0, -360(s7)
                  srli         a6, t3, 3
                  sub          s3, a2, t3
                  slt          s3, s10, a3
                  lui          a1, 441977
                  srl          s2, s2, t4
                  lh           s5, -1155(s7)
                  addi         ra, s0, 1954
                  sb           t4, 508(s7)
                  ori          sp, t1, -1446
                  add          s3, gp, t0
                  sb           s11, -598(s7) #end riscv_load_store_rand_instr_stream_25
                  la           sp, region_1+1754 #start riscv_load_store_rand_instr_stream_3
                  sltiu        s5, t1, 310
                  addi         a0, a5, 1153
                  sra          s2, t1, t6
                  srli         s0, t6, 24
                  addi         s2, s11, -608
                  sltiu        s2, t4, -6
                  lb           s9, -8(sp)
                  slli         t2, sp, 6
                  xor          t6, t2, s3
                  lb           s2, 1(sp)
                  sll          t3, t6, sp
                  slt          t1, t6, s11
                  xor          a4, s5, t6
                  add          tp, t5, t1
                  srl          s6, gp, a0
                  sub          s10, t1, a0
                  xor          s0, a5, t3
                  sw           s1, 14(sp)
                  and          t1, s6, t5
                  sh           s4, 16(sp)
                  addi         a5, a5, 1927
                  lhu          ra, 6(sp)
                  sb           s6, 13(sp)
                  lhu          s10, -2(sp)
                  xori         s6, t5, 1618
                  lb           s5, 7(sp)
                  xori         a1, a5, 1286
                  lui          a0, 435328
                  slti         t2, s9, 1323
                  srai         a6, s4, 3
                  lbu          a7, 1(sp)
                  andi         s1, s11, -1311
                  sltu         s0, s4, s10
                  lw           s1, -6(sp)
                  lbu          s2, 3(sp) #end riscv_load_store_rand_instr_stream_3
                  la           s8, region_0+1618 #start riscv_load_store_rand_instr_stream_24
                  sll          a6, a3, t2
                  add          t6, s1, tp
                  lbu          tp, -11(s8)
                  sra          ra, s2, t0
                  sb           t3, 13(s8)
                  lhu          s0, 16(s8)
                  srl          s9, t5, t4
                  slli         sp, tp, 10
                  sb           s1, -15(s8)
                  sb           a1, -8(s8)
                  lhu          t2, -16(s8)
                  slli         s10, s6, 26
                  lbu          a1, 9(s8)
                  sh           zero, 8(s8)
                  slt          t5, a6, a3
                  andi         ra, zero, -1313
                  lbu          s5, 4(s8)
                  slti         sp, s8, 312
                  sb           s1, -13(s8)
                  add          a2, gp, s8
                  sh           a2, 4(s8)
                  lui          s0, 494085
                  or           s5, zero, s8
                  sw           a5, 14(s8)
                  lb           s7, 4(s8)
                  sub          zero, s1, s10
                  add          a6, s10, s8
                  andi         s10, t1, 800
                  xor          s0, s11, s9
                  lhu          s9, 4(s8)
                  lb           s10, 7(s8) #end riscv_load_store_rand_instr_stream_24
                  la           sp, region_1+1704 #start riscv_load_store_rand_instr_stream_19
                  lui          a1, 445556
                  srli         s8, a5, 15
                  or           s7, a6, t2
                  sltiu        a4, s9, -119
                  nop
                  lh           t2, 54(sp)
                  sra          a7, s10, s10
                  lb           t1, 243(sp)
                  or           zero, tp, t6
                  lbu          zero, -125(sp)
                  sb           a2, 19(sp)
                  sb           a7, -57(sp)
                  srli         zero, a2, 12
                  xori         a2, s6, -129
                  xor          s6, s2, tp
                  slli         s1, s5, 9
                  srl          t0, t6, s1
                  sh           ra, 80(sp)
                  sra          t0, s5, t5
                  lbu          s1, 206(sp)
                  lb           ra, 253(sp)
                  lbu          a4, -122(sp)
                  srli         t0, gp, 20
                  and          gp, s4, a6
                  sh           a4, -154(sp)
                  lbu          s3, -55(sp)
                  lh           a1, -234(sp)
                  srli         s11, s3, 30
                  lb           t3, 119(sp)
                  lb           s11, 83(sp)
                  auipc        tp, 1030020
                  sh           t5, -108(sp)
                  sb           t2, 99(sp)
                  srl          s8, a3, t5
                  lb           t1, -215(sp)
                  xor          a0, sp, ra
                  sb           a5, 95(sp)
                  sh           a4, -38(sp)
                  srli         s1, t3, 31
                  lb           s9, -255(sp)
                  sub          t3, t5, t5
                  auipc        a5, 8166
                  lb           s6, 84(sp)
                  sb           s3, 41(sp)
                  lb           a2, -67(sp)
                  lbu          s6, 162(sp)
                  sub          s7, s3, s6
                  lh           t6, -34(sp)
                  lhu          s6, 48(sp)
                  lb           a6, -235(sp)
                  auipc        t2, 170498
                  add          t6, s8, s6
                  srai         t1, s1, 30
                  srl          ra, a0, t6
                  srai         t1, s9, 24
                  sw           s8, 64(sp)
                  lb           t1, 205(sp)
                  sb           a2, -65(sp) #end riscv_load_store_rand_instr_stream_19
                  la           s3, region_1+1858 #start riscv_load_store_rand_instr_stream_9
                  lbu          ra, 78(s3)
                  sb           a6, -2(s3)
                  sb           t0, -222(s3)
                  lb           t2, -133(s3)
                  lw           s6, 2(s3)
                  slti         a0, t0, -705
                  sltiu        s6, a1, -668
                  sub          s11, s8, t0
                  sll          a1, gp, a2
                  lbu          s8, -122(s3)
                  auipc        t6, 534196
                  lb           a2, -111(s3)
                  lh           s1, 78(s3)
                  addi         s8, gp, 465
                  lb           t1, -153(s3)
                  srli         a1, t3, 9
                  sub          t3, t3, s3
                  lbu          a5, -83(s3)
                  lhu          a4, -250(s3)
                  sra          a4, s4, ra
                  slti         a1, s10, 2031
                  sra          t1, a4, s5
                  sh           s8, -56(s3)
                  sltiu        zero, gp, -793
                  add          sp, s9, s3
                  lui          a7, 832623
                  ori          tp, tp, 515
                  lbu          a6, -243(s3)
                  lbu          s11, 56(s3)
                  sb           s1, -215(s3)
                  lbu          a7, -56(s3)
                  nop
                  lb           a1, -129(s3)
                  srl          s9, ra, ra
                  sltu         s11, t2, a1
                  sb           t5, 70(s3)
                  sb           a4, 135(s3)
                  lb           sp, -137(s3)
                  lbu          a0, 9(s3)
                  andi         s9, s6, -2027
                  sb           tp, -201(s3)
                  lh           s9, 122(s3)
                  or           ra, t1, t1
                  slti         a6, sp, -1943
                  lhu          t5, -48(s3)
                  sub          t6, sp, s4
                  or           t2, zero, a0
                  sb           t5, -115(s3) #end riscv_load_store_rand_instr_stream_9
                  la           s2, region_0+1330 #start riscv_load_store_rand_instr_stream_16
                  lui          t6, 871927
                  and          tp, s4, s2
                  nop
                  nop
                  lb           s6, 220(s2)
                  srli         t5, t6, 0
                  lb           gp, -1193(s2)
                  slt          a4, t6, a7
                  or           a1, s2, a3
                  lbu          ra, -1261(s2)
                  sh           t0, -1026(s2)
                  sb           s2, -279(s2)
                  lb           s0, -1328(s2)
                  or           t2, s5, s6
                  and          s6, t3, sp
                  auipc        s5, 931234
                  andi         s7, s6, -293
                  slli         t1, s11, 12
                  lb           t6, -648(s2)
                  sltiu        tp, s8, -68
                  lbu          a5, -1282(s2)
                  sb           tp, 459(s2)
                  xori         tp, ra, 1584
                  lhu          ra, -1042(s2)
                  nop
                  lb           s3, -1071(s2)
                  slli         a0, zero, 16
                  sb           a2, -913(s2) #end riscv_load_store_rand_instr_stream_16
                  ori          gp, s4, 244
                  sub          a7, t6, t6
                  slt          a2, zero, t3
                  sll          gp, t3, t3
                  srli         s10, t4, 23
                  sra          tp, a7, a3
                  ori          a0, s1, -117
                  beq          s10, t1, 9f
                  bge          s9, s8, 9f
9:                bgeu         a2, t0, 28f
                  sll          a2, t3, s4
                  sub          a2, a5, t6
                  slt          s9, s3, gp
                  and          a7, s6, s11
                  and          s2, zero, s8
                  xori         a5, zero, -359
                  srli         a1, a3, 29
                  srl          sp, tp, t0
                  slli         s6, t4, 23
                  slti         tp, s11, 1125
                  srli         s6, s3, 7
                  xori         s1, s5, 1881
                  addi         s3, s5, 455
                  bgeu         gp, ra, 24f
24:               andi         tp, t3, -867
                  beq          s8, t4, 37f
                  ori          t1, t1, 1102
                  slt          a0, s3, s3
28:               andi         sp, t3, 1966
                  slli         s6, a1, 11
                  bge          s2, a4, 44f
                  bge          a6, s0, 37f
                  bge          s0, s11, 38f
                  srli         a6, gp, 9
                  srl          s0, s4, zero
                  blt          s7, t5, 53f
                  addi         t5, s3, -9
37:               and          s3, s3, t3
38:               slt          t3, zero, sp
                  bltu         s7, s0, 55f
                  auipc        s10, 441790
                  bltu         t3, s7, 53f
                  auipc        s2, 567168
                  sltiu        s9, a5, 891
44:               sll          a4, s0, a0
                  sltu         t5, t1, s0
                  slli         a2, zero, 22
                  xor          sp, s10, a5
                  sll          s9, a6, a3
                  lui          s5, 171326
                  sra          t0, s4, s7
                  add          t3, a3, s7
                  slt          t1, zero, a5
53:               blt          s9, t3, 59f
                  auipc        t6, 630642
55:               slti         s1, s3, 587
                  bge          s4, a7, 71f
                  beq          s4, s7, 65f
                  blt          a5, ra, 68f
59:               bgeu         s1, tp, 74f
                  andi         a0, t0, -549
                  srli         a5, a6, 24
                  blt          a1, s0, 66f
                  slli         t6, gp, 24
                  andi         t5, sp, -913
65:               srli         s6, s9, 3
66:               sltu         a1, s10, t0
                  bltu         t4, tp, 84f
68:               sll          ra, a7, a3
                  xori         s0, s8, 999
                  bge          s2, s5, 84f
71:               slli         s10, a1, 11
                  sltiu        t6, s4, -272
                  auipc        a6, 897301
74:               srl          a4, s11, a5
                  lui          a4, 88778
                  xor          s1, s0, t0
                  slli         t5, ra, 7
                  sltu         a1, a5, s7
                  srli         s1, t1, 19
                  srli         s3, a4, 20
                  or           a6, t2, s8
                  andi         s5, s5, -1368
                  sltiu        t6, a5, -179
84:               bne          t2, s0, 100f
                  and          s3, s4, a3
                  beq          t0, t2, 90f
                  srli         s8, s5, 13
                  nop
                  sltu         sp, a0, s2
90:               addi         a5, s1, 1306
                  blt          t6, a1, 102f
                  add          s0, s10, s9
                  bge          a6, a6, 112f
                  srli         t0, s8, 10
                  slti         s5, s0, -1096
                  sub          t2, t5, s11
                  slli         s6, a6, 23
                  sltiu        t1, t6, 446
                  auipc        a6, 563854
100:              slt          s10, s1, s5
                  srai         s11, sp, 25
102:              andi         a1, s6, 676
                  srl          tp, s6, t2
                  auipc        t1, 453036
                  nop
                  beq          ra, t0, 109f
                  slti         s6, zero, 1051
                  sll          a5, t6, a7
109:              addi         a7, gp, 1889
                  addi         s10, a6, 1719
                  or           s1, gp, t4
112:              bne          a6, tp, 121f
                  sll          s1, s0, s3
                  sub          s9, sp, s11
                  sra          s3, t1, ra
                  sub          s11, s8, sp
                  xor          s7, s10, s5
                  blt          s0, s2, 122f
                  beq          a4, s2, 121f
                  and          t3, s0, s6
121:              xori         a4, s3, 1904
122:              andi         a4, tp, -1635
                  blt          t1, s2, 138f
                  auipc        s2, 1031493
                  nop
                  xori         s11, t6, 1962
                  sltu         s3, t2, t0
                  nop
                  andi         s6, t4, 96
                  bgeu         a7, s1, 138f
                  srli         s6, a4, 19
                  or           s7, s5, s0
                  sub          gp, s4, s3
                  sll          sp, a3, a4
                  ori          s1, sp, 385
                  andi         t3, t4, -804
                  bge          s0, a4, 144f
138:              lui          s3, 876790
                  srli         s6, ra, 10
                  srai         a5, s8, 5
                  addi         s0, sp, -1253
                  bgeu         s0, a7, 148f
                  sltu         a0, s1, s0
144:              ori          s2, s2, 2026
                  auipc        t1, 47591
                  slti         a0, s11, -129
                  bge          s9, a2, 159f
148:              auipc        gp, 468215
                  and          s10, s5, tp
                  beq          t5, t6, 151f
151:              sub          a1, sp, zero
                  xori         sp, s0, -1472
                  xor          s0, a6, t0
                  srli         t3, s2, 16
                  bge          ra, s7, 171f
                  xori         s1, s4, 341
                  lui          s2, 977502
                  srl          t6, s1, gp
159:              sltiu        a1, a3, 1841
                  and          zero, t4, t2
                  xor          s9, a5, a5
                  slti         a7, gp, 1708
                  srli         s5, a7, 26
                  slti         s6, s2, -47
                  beq          s0, zero, 181f
                  bne          t0, t1, 170f
                  slti         a6, s10, 225
                  sltu         a5, t6, s7
                  sltiu        tp, ra, -1647
170:              sub          s6, t5, s10
171:              bge          s11, a5, 190f
                  slli         s5, t5, 5
                  bge          tp, t2, 188f
                  srl          t6, t0, a5
                  sra          s10, a0, a6
                  bne          ra, t4, 177f
177:              ori          s10, t5, -716
                  blt          tp, s1, 181f
                  bne          t2, s5, 185f
                  sra          sp, t4, s0
181:              sltu         s1, t3, t6
                  sltu         t6, gp, t0
                  bne          t6, s4, 187f
                  slt          s2, s1, t4
185:              srl          sp, a1, s2
                  andi         tp, s6, -672
187:              or           a2, s4, s10
188:              ori          s7, s1, -389
                  sll          a0, s6, ra
190:              or           s7, gp, s0
                  addi         s6, a6, 1290
                  sll          s10, s4, s9
                  or           s9, gp, t5
                  lui          s2, 415727
                  nop
                  bgeu         gp, a7, 210f
                  or           a2, s0, t5
                  auipc        sp, 151184
                  sltu         a4, s7, a4
                  or           a7, s2, s8
                  srli         s0, s3, 20
                  and          s1, s9, tp
                  auipc        a7, 707727
                  or           t5, t2, a5
                  srli         s2, s8, 27
                  slt          s3, a6, t1
                  srli         t2, a5, 22
                  slli         s7, s1, 13
                  blt          a3, a1, 219f
210:              ori          s5, t0, -2048
                  addi         a2, a1, -1003
                  srli         s7, s5, 19
                  slt          s1, a0, a3
                  srai         t3, s1, 31
                  sra          s9, s7, s3
                  lui          t3, 357221
                  slli         a2, s10, 28
                  srai         a0, s0, 22
219:              xor          s1, zero, a3
                  srli         sp, a7, 19
                  sltiu        s2, s11, 1988
                  bgeu         ra, s9, 233f
                  add          s5, s2, t4
                  blt          s8, t5, 231f
                  bltu         s1, gp, 240f
                  slt          s0, a0, t2
                  bne          sp, s6, 246f
                  sll          a5, s7, a7
                  srli         s3, s1, 17
                  slt          s1, t5, t5
231:              sra          s11, t6, s2
                  bne          t1, s4, 234f
233:              srl          t5, a2, t1
234:              auipc        s11, 133750
                  srai         t0, sp, 17
                  add          s11, s2, s10
                  andi         t2, t0, -1092
                  nop
                  sll          s9, a5, s0
240:              blt          gp, sp, 252f
                  sll          t6, a6, s8
                  andi         t1, a0, -596
                  sra          a1, t6, s2
                  slli         s11, t3, 19
                  srl          s0, s7, t3
246:              sll          s5, t4, gp
                  srl          zero, s3, s4
                  sll          gp, a2, s1
                  blt          a4, a4, 257f
                  bgeu         a7, t5, 259f
                  bge          gp, s8, 255f
252:              lui          s0, 91087
                  nop
                  sltu         t1, a5, t1
255:              srli         a0, s5, 3
                  addi         s10, t2, -959
257:              ori          t1, a3, -131
                  bge          s6, a7, 276f
259:              and          s7, a2, t3
                  ori          a0, a6, 921
                  auipc        t3, 372941
                  bne          a2, a2, 270f
                  auipc        s3, 822767
                  sra          a2, a1, t5
                  sub          a0, ra, t0
                  ori          s3, s9, 31
                  slti         s10, a1, 459
                  sub          a4, a2, t1
                  slli         tp, s5, 29
270:              bltu         a6, s6, 272f
                  srai         s5, a7, 15
272:              slt          a1, a2, a2
                  sra          t1, ra, s9
                  srai         t2, s3, 20
                  srl          s6, s3, a7
276:              beq          gp, t1, 291f
                  addi         tp, t0, -1513
                  nop
                  bltu         a6, a1, 293f
                  slt          s0, a6, t0
                  slt          a1, a7, s4
                  xor          t3, t3, s1
                  bgeu         t4, s11, 300f
                  slt          s6, s0, a5
                  sra          tp, a7, s8
                  and          a2, s9, s7
                  slt          a4, gp, a3
                  sra          a7, s4, t2
                  addi         a6, gp, -900
                  sltiu        s7, s0, 594
291:              sll          a4, t0, t1
                  xor          t5, t0, a1
293:              srai         s11, s1, 23
                  andi         ra, a1, -369
                  slli         s0, s0, 10
                  sra          t3, a6, t6
                  bge          t1, t1, 303f
                  srli         s10, a0, 2
                  bge          a1, s7, 313f
300:              or           a6, s10, t4
                  srli         a1, t5, 9
                  nop
303:              sll          s0, s2, t6
                  auipc        s6, 931575
                  blt          s10, ra, 324f
                  sll          zero, a6, zero
                  ori          a7, a6, 988
                  xori         a1, s7, 644
                  sltiu        t2, t2, 1037
                  auipc        s9, 273795
                  lui          gp, 997534
                  slt          t2, a2, s8
313:              bgeu         t1, t3, 320f
                  xori         s6, t5, -263
                  ori          s0, a3, 1163
                  andi         s7, s5, 1080
                  bge          a3, t4, 332f
                  sltiu        ra, s8, 1124
                  bltu         a5, sp, 327f
320:              bltu         s9, s5, 332f
                  sub          gp, t0, zero
                  sltiu        zero, t0, -24
                  lui          s0, 396900
324:              sltu         a7, a1, zero
                  sltu         a6, t1, s11
                  sll          a7, t4, a1
327:              nop
                  srli         t6, gp, 8
                  sltiu        a1, s1, -1769
                  lui          a0, 1036944
                  slt          a5, a5, s0
332:              or           tp, a1, a1
                  sub          a2, t2, s8
                  srai         a5, tp, 15
                  srl          a0, t6, sp
                  nop
                  sltu         t2, s6, t3
                  bge          a4, t6, 346f
                  add          s8, s5, a2
                  xori         s2, a7, 1334
                  xor          s5, t6, a5
                  srai         s8, s5, 27
                  blt          s5, a2, 353f
                  sltiu        s1, t4, -875
                  srli         a2, s7, 1
346:              auipc        a1, 214357
                  xori         a0, tp, 788
                  bne          s7, t5, 363f
                  slt          a1, sp, a2
                  xor          ra, s3, s10
                  xor          s1, s5, s9
                  beq          gp, sp, 364f
353:              slli         a4, s9, 4
                  la           sp, region_1+1784 #start riscv_load_store_rand_instr_stream_0
                  sra          s5, s9, a1
                  lbu          a1, -1341(sp)
                  lh           t2, -1736(sp)
                  sb           sp, -1546(sp)
                  xori         gp, a4, 541
                  sh           a6, -1098(sp)
                  or           t3, ra, a0
                  lbu          t6, -1495(sp)
                  sb           s8, -16(sp)
                  lbu          a4, -1375(sp)
                  lbu          t1, -1152(sp)
                  lb           a0, 28(sp)
                  lb           gp, -569(sp)
                  srli         t0, s10, 26
                  lui          t1, 701366
                  lb           t2, -257(sp)
                  sb           zero, -1597(sp)
                  lbu          s5, -462(sp)
                  sb           a1, -869(sp)
                  srl          a7, s8, t4
                  sub          s6, s10, t4
                  sh           s11, -708(sp)
                  sra          s2, t1, s11
                  lbu          s1, 200(sp)
                  sb           s5, -708(sp)
                  lw           s2, -108(sp)
                  lw           s8, -1192(sp)
                  lb           s5, -461(sp)
                  lb           s0, 31(sp)
                  sb           s5, -1689(sp)
                  sh           a7, -1754(sp)
                  srl          s9, t1, t3
                  auipc        a0, 837386
                  sb           a7, -1684(sp)
                  sll          s2, s5, a6
                  lb           s7, -1199(sp) #end riscv_load_store_rand_instr_stream_0
                  bltu         gp, t1, 358f
                  lui          sp, 398165
                  srli         s7, a5, 0
                  sltiu        s3, a0, 1655
358:              sub          s7, s2, s10
                  xori         a2, s1, -1935
                  ori          t3, s10, 1410
                  bne          a2, sp, 362f
362:              bgeu         s11, a4, 364f
363:              slt          s7, s10, a0
364:              slti         a1, s4, -988
                  bltu         t3, a1, 371f
                  andi         s0, zero, -820
                  srl          s11, t2, s9
                  sltiu        t6, s11, -1600
                  nop
                  srl          t5, s8, t1
371:              srai         zero, s6, 7
                  xor          s6, gp, t1
                  nop
                  bne          a1, s4, 378f
                  lui          tp, 578205
                  slti         s8, s4, -1967
                  slt          s3, tp, t3
378:              bge          s11, t0, 397f
                  auipc        s0, 758942
                  beq          s0, s8, 383f
                  xori         s2, a6, -954
                  sltiu        gp, s3, -123
383:              addi         s1, s4, -1935
                  xori         a7, t2, -1673
                  sra          s6, s3, s0
                  srai         gp, a1, 11
                  add          ra, s9, s8
                  and          tp, s4, tp
                  blt          a6, a2, 403f
                  and          zero, s9, gp
                  xor          t5, s6, s0
                  srl          s10, s4, s0
                  add          s2, t0, s8
                  sltiu        a6, t5, 756
                  sub          sp, s5, t2
                  slli         a7, sp, 31
397:              bgeu         gp, ra, 414f
                  sltiu        s1, s9, -1014
                  sra          t5, a7, s5
                  add          s9, zero, a0
                  bge          a3, s4, 407f
                  nop
403:              sltu         s1, tp, s11
                  nop
                  sub          gp, ra, a7
                  xor          a0, s6, s10
407:              bgeu         ra, s8, 422f
                  andi         tp, a3, 1582
                  bltu         t2, a6, 413f
                  and          s10, s5, t0
                  srl          s2, t1, s4
                  blt          gp, t6, 418f
413:              nop
414:              lui          a6, 956600
                  slli         s6, a0, 17
                  sub          a7, s2, a1
                  slt          a1, ra, s7
418:              srai         s0, t1, 12
                  sra          zero, a6, t0
                  sltu         a5, zero, t1
                  xori         a4, s11, 638
422:              xori         t2, t3, 1365
                  lui          sp, 959055
                  blt          a6, t6, 426f
                  lui          s1, 394868
426:              blt          a5, tp, 442f
                  lui          t5, 975706
                  addi         t6, zero, -1489
                  slli         a2, a2, 14
                  bne          s10, a2, 446f
                  addi         s6, a0, -1477
                  addi         s10, s1, -313
                  xor          t5, s7, a7
                  sltiu        a5, s11, 1322
                  or           a1, ra, a5
                  xori         s0, ra, 1749
                  lui          a6, 751384
                  slli         a1, a1, 26
                  sltiu        s1, a5, 1496
                  auipc        a0, 165905
                  srai         a7, a1, 2
442:              auipc        s10, 954353
                  blt          s7, a6, 454f
                  addi         s7, s0, -1480
                  ori          s6, a4, 508
446:              or           t6, a0, s2
                  addi         a5, a4, -1845
                  bge          s10, s10, 466f
                  xori         s0, a6, 1814
                  or           sp, t5, a3
                  bgeu         a6, a2, 460f
                  lui          s3, 770490
                  sub          t0, s1, gp
454:              slli         s8, t3, 30
                  blt          s8, s7, 456f
456:              or           s5, t5, s6
                  sub          s5, t0, s9
                  beq          t5, a6, 460f
                  bgeu         s0, tp, 460f
460:              sltiu        a0, s4, 1468
                  and          ra, t1, t2
                  slt          zero, zero, a5
                  blt          zero, a2, 479f
                  sub          t1, s8, a6
                  and          s10, s2, s1
466:              xori         s3, a3, -678
                  srl          s9, s11, s2
                  blt          s3, a3, 485f
                  or           a4, a5, t5
                  bltu         a2, s10, 476f
                  srli         s6, t2, 8
                  or           a1, s7, s1
                  xori         s1, a7, -653
                  srai         t0, a2, 31
                  sltiu        t5, a0, -1175
476:              bgeu         a2, s10, 478f
                  srli         a2, s8, 24
478:              sll          a4, t2, gp
479:              andi         s8, s11, 1864
                  nop
                  auipc        a2, 194867
                  ori          s5, t4, -1544
                  add          s8, s11, a7
                  addi         t5, s6, 759
485:              blt          s6, s7, 489f
                  or           s0, ra, s2
                  nop
                  xori         s3, sp, 768
489:              srai         s11, t1, 0
                  sltiu        t1, tp, -1078
                  bge          zero, a1, 495f
                  lui          s6, 601730
                  blt          s2, a6, 508f
                  sll          a0, t6, a5
495:              sltu         sp, t2, a0
                  sll          a0, a1, s1
                  nop
                  add          s11, a4, t4
                  andi         t3, t0, -24
                  nop
                  slt          t2, s2, gp
                  xori         t3, s6, 867
                  sltu         a7, a2, s11
                  or           tp, s8, a7
                  and          s1, a4, sp
                  bne          a2, a6, 512f
                  beq          s0, a0, 518f
508:              sub          s0, a6, s8
                  srl          sp, s9, s4
                  add          t3, a1, ra
                  addi         s10, s7, 1447
512:              sub          t2, s0, t1
                  xori         s10, a2, -621
                  blt          s10, a1, 518f
                  slli         sp, t0, 4
                  ori          a6, t0, 774
                  lui          t1, 395457
518:              beq          s8, t1, 521f
                  xori         t5, t0, 1521
                  beq          s7, a6, 532f
521:              slti         gp, gp, -502
                  or           a5, s10, s0
                  sltu         t5, a1, a2
                  lui          a1, 481456
                  add          s3, s10, a7
                  xori         a5, a1, -1240
                  nop
                  bgeu         sp, s2, 534f
                  bne          s7, a4, 548f
                  or           s0, s10, t5
                  sltu         a2, a2, tp
532:              srl          a2, s3, s7
                  bge          s7, s10, 549f
534:              srli         s11, sp, 15
                  slt          s5, t2, gp
                  sltu         a5, t6, s2
                  and          t5, a1, t1
                  addi         t6, a1, 1790
                  lui          zero, 773277
                  blt          s5, t1, 550f
                  sll          s5, a0, s5
                  sltiu        t0, s3, -1174
                  srai         a1, s11, 25
                  or           tp, gp, gp
                  bgeu         a2, a5, 560f
                  bltu         a5, t4, 565f
                  xori         t0, a0, -872
548:              sltiu        ra, s0, 1225
549:              auipc        s5, 169253
550:              srli         sp, t6, 12
                  sub          s8, a2, s5
                  srl          s11, s2, sp
                  sltu         a1, t5, s5
                  or           a6, s10, t6
                  xori         tp, s8, 1151
                  or           t3, t0, s6
                  slt          gp, tp, s11
                  bgeu         s2, gp, 566f
                  bgeu         t3, s4, 568f
560:              bltu         ra, s6, 575f
                  xori         s7, a6, 973
                  slli         a6, zero, 21
                  srl          a4, a5, t3
                  slli         ra, t4, 26
565:              slt          s0, s11, t1
566:              ori          t6, a0, -427
                  srl          t1, t3, a4
568:              beq          s5, zero, 586f
                  or           a4, t3, a3
                  srl          s3, t2, s10
                  slli         tp, s3, 18
                  sltiu        t2, ra, 764
                  or           s5, t2, s11
                  nop
575:              bne          a0, t5, 582f
                  blt          a4, t1, 590f
                  sltiu        tp, t2, 444
                  sltiu        a4, t6, 346
                  and          zero, a2, s1
                  sub          tp, t5, s6
                  ori          s6, s11, 424
582:              add          s3, t1, sp
                  ori          a1, s8, 1530
                  add          a4, zero, t1
                  xor          tp, a4, s6
586:              andi         a2, s10, 1148
                  slt          a2, s10, zero
                  bne          gp, a3, 602f
                  sub          s10, t6, s0
590:              xori         t2, a2, 1260
                  xori         t5, t2, -906
                  sub          zero, a5, s10
                  blt          s5, s9, 605f
                  or           a4, t3, s3
                  srai         t0, zero, 6
                  blt          a1, gp, 597f
597:              srl          a4, s6, a1
                  xor          s6, t5, s1
                  addi         s10, t6, 281
                  xor          a6, zero, gp
                  blt          s2, a6, 609f
602:              blt          t2, t3, 606f
                  sll          s2, t1, s7
                  auipc        t5, 1004866
605:              bge          t6, s3, 613f
606:              slli         s5, t6, 8
                  slti         s7, ra, 2042
                  andi         a4, s7, 1532
609:              sra          zero, t1, s5
                  auipc        sp, 59070
                  bgeu         s0, s11, 615f
                  sub          t2, a6, s1
613:              add          a2, s10, t3
                  and          gp, a0, t3
615:              slt          t2, t4, tp
                  addi         s3, s2, -1820
                  beq          a0, s5, 632f
                  sltu         s7, a2, t3
                  and          a4, s3, s5
                  andi         s3, s3, 1953
                  bge          sp, s5, 630f
                  slt          t0, s3, gp
                  xori         a0, t3, 370
                  slli         t3, a5, 22
                  lui          s5, 130551
                  slli         s9, t2, 13
                  slti         a5, a4, -184
                  bltu         t5, t1, 639f
                  lui          t0, 710385
630:              xori         s10, gp, 783
                  slti         s1, gp, -1489
632:              srai         a6, s5, 31
                  sltu         s11, s11, tp
                  slli         s7, t5, 9
                  srl          s1, gp, a0
                  sub          t1, a7, s5
                  blt          s0, s10, 652f
                  auipc        a5, 769710
639:              xor          s3, a2, s11
                  srai         a5, t2, 28
                  addi         s2, s0, 1589
                  sltiu        sp, a7, -327
                  andi         s2, s2, -435
                  slt          t2, s9, s3
                  addi         zero, a3, -1154
                  xori         a6, s8, -1576
                  slli         t2, t2, 26
                  sub          s11, a5, s4
                  andi         sp, t4, -693
                  sltiu        a0, a2, 1030
                  srl          t2, t5, gp
652:              xori         zero, s11, -1940
                  slt          s0, t4, ra
                  slt          a5, s4, a6
                  auipc        s0, 418075
                  nop
                  xori         a6, s11, 1715
                  auipc        gp, 919672
                  xor          a4, t1, a6
                  srli         s7, s7, 11
                  bgeu         t0, s11, 667f
                  srl          t5, t2, t2
                  xori         s8, a6, 1055
                  andi         s1, zero, -621
                  beq          s0, a2, 666f
666:              srli         t6, s9, 17
667:              andi         a1, t1, 1835
                  sub          t5, t1, s3
                  andi         a0, a1, 1805
                  sub          t1, zero, a4
                  sra          a5, t4, s4
                  xor          a0, a4, tp
                  slti         ra, s1, 993
                  ori          s0, ra, 475
                  or           a7, s0, s4
                  slli         a6, a3, 19
                  xori         a0, a1, -1668
                  sltu         s6, s7, s0
                  la           ra, region_1+1848 #start riscv_load_store_rand_instr_stream_8
                  and          sp, s3, a0
                  and          t2, t4, s11
                  sub          a7, tp, a0
                  lbu          tp, -54(ra)
                  slti         s7, a7, 1738
                  or           s6, t3, s4
                  sub          a6, s0, t3
                  nop
                  sll          a6, sp, a3
                  srai         s11, s3, 26
                  slli         t6, s8, 19
                  sra          s1, t0, a0
                  sra          s10, a1, s8
                  sb           a7, -468(ra)
                  lhu          s7, -66(ra)
                  lhu          s9, -612(ra)
                  lbu          s6, -1579(ra)
                  sra          t5, t0, t4
                  sltu         s11, s4, s9
                  lbu          s1, -1039(ra)
                  lbu          tp, 39(ra)
                  sltu         s0, s11, a1
                  lbu          s8, 97(ra)
                  lb           a6, -1123(ra)
                  lb           sp, -460(ra)
                  lb           s5, -1197(ra)
                  sw           a2, -32(ra)
                  lbu          s0, -1740(ra)
                  andi         s3, a0, -1161
                  or           a0, s3, a3
                  nop
                  lbu          s6, -151(ra)
                  lb           t5, -509(ra)
                  sra          s6, a3, t1
                  slti         s1, t5, 1085
                  sb           ra, -352(ra)
                  lbu          s7, -1655(ra)
                  sb           s7, -1112(ra)
                  slti         tp, a6, -793
                  lui          s6, 24441
                  sb           s1, -457(ra)
                  lui          t1, 14779
                  and          s8, t0, a5
                  and          t6, t0, ra
                  srai         s10, s8, 30
                  srai         t5, s11, 6
                  lbu          s3, -1354(ra) #end riscv_load_store_rand_instr_stream_8
                  auipc        ra, 599949
                  sll          gp, t0, tp
                  andi         ra, a6, -390
                  blt          a3, s0, 696f
                  sra          a0, s4, t2
                  xori         s2, s3, -1141
                  slti         s6, a2, -343
                  andi         a6, s0, 1849
                  xori         s6, sp, -134
                  blt          s5, zero, 706f
                  xor          t1, a7, a0
                  sltu         zero, s4, sp
                  sub          a5, a7, a0
                  add          zero, s8, s5
                  bge          t6, a4, 694f
                  la           a2, region_0+923 #start riscv_load_store_rand_instr_stream_23
                  srli         a4, a3, 9
                  nop
                  ori          a6, s9, 1223
                  lh           a4, -91(a2)
                  slt          t1, sp, a6
                  lbu          gp, 948(a2)
                  slli         a7, s4, 20
                  xor          s6, s5, s8
                  andi         s5, a6, -1867
                  andi         gp, s7, -2
                  addi         tp, t1, -796
                  slt          s8, a2, a1
                  and          s0, t6, s7
                  lbu          s11, 1018(a2)
                  lbu          t0, -282(a2)
                  sb           a1, 176(a2)
                  auipc        a1, 722912
                  slti         t3, t3, -976
                  xori         s10, s6, -1218
                  lb           s6, -832(a2)
                  add          zero, s6, s9
                  lb           t2, -158(a2)
                  ori          t3, s2, 1060
                  addi         a1, a7, 1741
                  lb           tp, -145(a2)
                  sltiu        ra, s5, -90
                  sw           tp, 53(a2)
                  addi         t2, s6, 580
                  lb           a0, -919(a2)
                  xor          s8, zero, s1
                  xor          s6, s7, t3
                  xori         s0, s2, -534
                  add          tp, a4, a4
                  andi         s6, s2, -1880
                  slti         s6, s8, -62
                  sra          tp, a4, a3
                  sub          s10, s11, a7
                  and          s8, t2, s8
                  sltu         s0, a4, a4
                  lb           a1, -438(a2)
                  xori         s6, zero, -1447
                  lb           tp, -862(a2) #end riscv_load_store_rand_instr_stream_23
694:              ori          a6, t4, -1185
                  auipc        a4, 794162
696:              add          t6, a7, a4
                  beq          s6, a3, 701f
                  xori         t6, t0, 343
                  auipc        s6, 544477
                  addi         s1, t5, -493
701:              srai         a2, a1, 16
                  auipc        s0, 153745
                  srli         s6, s3, 22
                  srai         sp, t6, 9
                  ori          s9, a5, -500
706:              xor          sp, t5, t2
                  blt          t1, a1, 719f
                  bltu         s6, t0, 715f
                  add          t1, s9, a6
                  bgeu         t2, zero, 725f
                  beq          a2, t5, 727f
                  add          ra, a3, t0
                  slli         s6, s5, 2
                  slli         a0, t0, 8
715:              slli         s2, a7, 22
                  srl          t6, s4, t1
                  or           sp, t6, s2
                  slt          t5, s11, a0
719:              sra          t5, sp, sp
                  xor          ra, s0, t3
                  blt          a1, a1, 737f
                  add          t5, s9, s4
                  slli         s8, t1, 21
                  or           a4, t2, t4
725:              srai         s10, s3, 13
                  or           a1, t2, a1
727:              srai         t5, t6, 1
                  ori          sp, s5, -399
                  or           a2, s6, s11
                  nop
                  beq          s2, t5, 733f
                  lui          a0, 235083
733:              ori          s7, a1, 1686
                  sltu         a7, a5, s3
                  xor          s11, a3, a5
                  auipc        sp, 480899
737:              beq          t2, t5, 740f
                  or           zero, s7, a2
                  bltu         s4, sp, 747f
740:              nop
                  slt          t3, a1, gp
                  srai         zero, s6, 19
                  andi         zero, s8, 837
                  xori         a4, s7, 1808
                  bne          a0, tp, 755f
                  bne          s1, s8, 758f
747:              ori          s3, s11, -390
                  bge          t3, a6, 762f
                  addi         t3, s4, -1566
                  sra          t5, s9, s1
                  lui          s7, 323915
                  slli         s10, a5, 7
                  nop
                  lui          a4, 147260
755:              addi         t0, s6, 570
                  slti         t3, s7, 1275
                  or           t5, s11, s9
758:              or           sp, gp, a1
                  sll          s5, t2, t2
                  beq          a2, a1, 779f
                  or           s8, a4, tp
762:              slti         a4, t1, 406
                  and          s1, s6, s0
                  slti         s9, gp, -1056
                  xor          tp, t6, t5
                  sra          s3, s10, s0
                  sll          s6, a0, s11
                  lui          a7, 243445
                  andi         ra, gp, 794
                  srl          s10, s4, t6
                  lui          a7, 472425
                  blt          ra, gp, 774f
                  bltu         a3, s0, 779f
774:              sll          a4, t0, a0
                  slt          s5, s2, a3
                  or           a4, a5, t0
                  slti         sp, s1, 1726
                  or           s6, t4, t6
779:              andi         s7, a6, 526
                  add          a1, s7, s4
                  sub          gp, a1, a7
                  blt          t3, a4, 799f
                  slli         a5, s9, 13
                  srl          s7, s4, s11
                  slli         a4, gp, 21
                  bltu         a3, s0, 792f
                  bgeu         a4, a6, 806f
                  xori         a7, a0, -41
                  and          t1, ra, s4
                  srl          t1, s10, s1
                  srl          sp, s5, s9
792:              bltu         t6, ra, 793f
793:              bge          s1, t2, 796f
                  xori         s1, t1, -1639
                  and          t5, s7, s7
796:              sltu         tp, t3, s6
                  slti         a0, t5, -184
                  andi         s7, t1, -1659
799:              addi         s11, a5, 271
                  bne          t2, ra, 812f
                  srli         t0, t6, 29
                  slt          s5, gp, gp
                  bgeu         s2, t3, 814f
                  lui          sp, 680536
                  srl          a6, a6, sp
806:              addi         t1, s1, 1778
                  slti         a7, tp, -457
                  lui          t3, 865140
                  slt          s1, s2, gp
                  lui          s10, 108575
                  ori          s2, zero, -275
812:              slti         s1, a5, 1021
                  bne          a3, s4, 832f
814:              slt          sp, tp, t2
                  blt          t5, a2, 823f
                  and          zero, s10, s5
                  sltu         a5, s4, t3
                  andi         s7, zero, -715
                  slli         a5, s3, 29
                  sll          s0, zero, tp
                  xor          t0, t6, s5
                  add          s3, ra, s0
823:              sub          sp, gp, a5
                  sltiu        tp, s9, 1399
                  bge          t5, t3, 837f
                  ori          a0, s9, 1427
                  bltu         s5, a0, 833f
                  sltiu        a7, s10, -269
                  slli         tp, s1, 18
                  bge          s6, tp, 844f
                  or           s0, a3, a0
832:              sll          s1, t6, a5
833:              sltiu        t3, t2, 1005
                  addi         s5, ra, 1947
                  and          t5, s6, sp
                  sltiu        t5, a6, -3
837:              slli         zero, t4, 17
                  or           s1, gp, s7
                  andi         a2, s2, 344
                  ori          s2, t5, -1714
                  or           a4, s7, s0
                  xor          t2, a5, t0
                  xor          tp, t0, s3
844:              sub          s7, t3, ra
                  sra          a2, t6, t0
                  addi         s5, s5, -1291
                  or           a7, t1, s2
                  lui          tp, 89264
                  slti         sp, s2, -2003
                  lui          a5, 97284
                  slt          ra, s8, gp
                  xori         t3, s11, -535
                  slti         a1, s11, -125
                  ori          gp, s11, -937
                  bgeu         s10, gp, 870f
                  bne          s8, s10, 864f
                  lui          s8, 851323
                  sltiu        ra, t1, 469
                  slli         a6, a3, 22
                  sltu         s7, zero, gp
                  sltiu        ra, t3, -1619
                  xori         s6, a5, 2017
                  slli         s9, sp, 31
864:              slt          a2, sp, a5
                  and          s2, t4, a5
                  slli         t6, t2, 15
                  blt          s6, s9, 871f
                  slt          gp, a6, t6
                  sltiu        t0, t0, -356
870:              blt          a4, t3, 880f
871:              xor          s2, gp, s7
                  blt          a4, s0, 886f
                  bge          s11, a4, 875f
                  auipc        t0, 710971
875:              nop
                  slt          t6, a4, a2
                  or           a7, s6, tp
                  lui          s1, 962407
                  xor          s1, a0, a0
880:              sra          t0, a1, a3
                  and          s10, a3, s1
                  ori          s5, a6, -667
                  beq          t1, a6, 890f
                  andi         s1, a7, -1091
                  and          t6, t5, s6
886:              or           gp, a2, sp
                  slli         tp, s2, 15
                  bgeu         a7, s5, 903f
                  sra          t3, s3, t1
890:              bltu         s1, s6, 906f
                  auipc        s1, 503272
                  lui          t0, 488307
                  or           a4, s0, a2
                  sll          zero, s4, s1
                  addi         t3, t5, 217
                  srai         s0, a3, 9
                  sltiu        s8, a2, -853
                  addi         a5, a1, 386
                  bne          s0, s7, 916f
                  xor          s2, s3, a0
                  or           a7, s10, gp
                  blt          s7, t1, 918f
903:              sltu         s6, s5, t4
                  ori          a7, t5, 123
                  nop
906:              bgeu         s2, s3, 908f
                  andi         a1, a3, -1137
908:              bltu         tp, a1, 917f
                  sltiu        s7, s3, -426
                  andi         sp, ra, -1182
                  sltiu        s8, tp, -846
                  sll          s9, a5, s5
                  srl          sp, s1, a0
                  slli         s3, tp, 6
                  xori         s11, s5, 1706
916:              sra          a6, s11, t4
917:              addi         t5, t6, -1815
918:              beq          zero, zero, 922f
                  xor          s10, sp, s5
                  bltu         sp, t3, 924f
                  sltu         a7, a6, s8
922:              andi         s5, tp, 1980
                  addi         zero, s4, 545
924:              blt          s5, tp, 942f
                  add          s0, sp, s8
                  xori         ra, s3, 1233
                  slti         a4, a2, -922
                  srl          s3, s7, a6
                  blt          sp, a2, 935f
                  or           tp, t6, s8
                  srli         a0, t2, 0
                  srai         s3, t5, 6
                  srai         a2, s11, 26
                  srai         sp, s10, 19
935:              srl          a1, t1, gp
                  beq          zero, t2, 955f
                  andi         sp, tp, -897
                  xori         tp, t2, -221
                  sll          s7, a3, s1
                  slli         a5, t1, 26
                  sra          s11, t5, a4
942:              and          s2, ra, s0
                  xori         gp, s1, -1480
                  sra          t2, s1, t3
                  srl          sp, s4, t5
                  bne          s1, a4, 961f
                  srl          a0, ra, s8
                  bltu         t6, s11, 949f
949:              or           s3, a7, gp
                  bltu         t2, zero, 956f
                  xori         sp, t1, -1779
                  slli         a5, s4, 27
                  ori          s8, s9, 1300
                  srai         s3, a1, 29
955:              sltiu        s5, sp, -1800
956:              xor          a4, tp, t4
                  sub          s11, s0, s1
                  addi         s11, a1, 111
                  or           s5, zero, sp
                  sub          s3, a7, t1
961:              beq          gp, t1, 976f
                  sltiu        s10, s3, -1863
                  sub          t3, s7, s5
                  addi         s1, t0, 835
                  bltu         t5, a6, 973f
                  add          tp, s8, t3
                  sll          zero, sp, a4
                  slt          a0, s8, a5
                  bltu         a3, a7, 988f
                  lui          s9, 989968
                  srl          t0, t5, t3
                  xori         t3, tp, 1850
973:              bge          s1, s5, 988f
                  nop
                  bge          s9, s2, 982f
976:              sub          a1, a2, tp
                  bgeu         s5, s6, 981f
                  bne          s9, t4, 990f
                  ori          a1, s2, 1054
                  sra          a7, s1, a5
981:              lui          t0, 884466
982:              ori          a1, t1, 914
                  xor          a5, a7, s4
                  sub          s11, t4, s0
                  auipc        a4, 321877
                  sll          gp, a4, tp
                  xor          a4, s7, s8
988:              sltiu        a4, a4, 1931
                  bge          t2, gp, 990f
990:              and          t3, a2, s11
                  bne          s5, t1, 1007f
                  srai         zero, s11, 16
                  srai         a5, s0, 14
                  auipc        t5, 945212
                  srl          a5, s3, s7
                  bgeu         t3, a4, 1007f
                  bltu         a6, sp, 1005f
                  nop
                  addi         s3, zero, -445
                  xori         t5, a1, -901
                  sltu         s1, a5, t6
                  sll          a4, s6, s3
                  sltu         t6, s2, a3
                  or           s11, t0, s2
1005:             blt          a4, s3, 1008f
                  andi         s7, ra, -1345
1007:             bltu         s9, t3, 1009f
1008:             sra          a7, t4, t3
1009:             bltu         a7, gp, 1023f
                  slti         a7, a7, 487
                  bge          t5, t0, 1025f
                  add          t1, ra, a7
                  srl          a2, a0, s1
                  bltu         s9, s8, 1023f
                  nop
                  bgeu         s0, ra, 1022f
                  and          s1, s8, a6
                  andi         a6, tp, -1027
                  slt          t3, t0, t5
                  slti         t6, a3, 582
                  auipc        gp, 666531
1022:             ori          s5, t2, 1162
1023:             andi         t3, s6, 841
                  blt          s7, s11, 1026f
1025:             andi         s9, s11, -1543
1026:             bgeu         s11, s5, 1041f
                  sra          s2, s11, a7
                  srai         tp, t0, 31
                  nop
                  addi         a1, s6, 1710
                  addi         s0, tp, 1943
                  bltu         s9, s11, 1049f
                  sltiu        t1, s2, 925
                  andi         ra, s7, -729
                  sltiu        t1, s1, -756
                  srai         a2, s3, 3
                  andi         s1, t5, -748
                  beq          a5, t6, 1042f
                  ori          a0, ra, 928
                  sra          a5, s5, s1
1041:             bne          s0, t5, 1047f
1042:             srli         a7, s9, 30
                  add          s10, a1, t2
                  srli         a4, s9, 6
                  slti         t3, a6, 1489
                  srli         s9, s3, 19
1047:             srli         s10, s8, 29
                  xori         ra, a2, 526
1049:             bge          ra, a1, 1068f
                  slti         s5, t5, 692
                  andi         a7, a1, 1173
                  sll          a5, t4, gp
                  or           s8, s0, sp
                  and          sp, t1, a4
                  sltiu        a2, tp, 984
                  slt          s3, a2, t2
                  sll          s5, s2, s6
                  xori         s7, s7, -57
                  andi         s8, ra, 1873
                  bne          s11, s6, 1078f
                  bne          a2, s7, 1071f
                  blt          ra, sp, 1066f
                  slli         sp, t1, 4
                  slti         a2, a7, -452
                  srl          s1, a0, s7
1066:             slli         zero, s7, 17
                  sub          s9, a6, a7
1068:             srl          a2, t3, t0
                  srai         a1, t3, 16
                  bne          s7, t5, 1076f
1071:             xor          gp, a7, a0
                  srli         sp, s9, 0
                  and          s3, a0, s11
                  srl          a5, t5, s2
                  andi         t3, s4, 307
1076:             andi         s1, t2, -336
                  slli         sp, a3, 24
1078:             sll          a1, ra, gp
                  srai         sp, s4, 18
                  lui          a4, 496879
                  and          t6, t6, s3
                  bne          a0, t3, 1083f
1083:             add          s2, ra, zero
                  bne          a7, s7, 1096f
                  xor          s3, s10, a1
                  sltu         a5, ra, a0
                  blt          s6, a7, 1103f
                  xori         s10, s5, -1576
                  add          s3, t5, a0
                  sra          a0, a3, gp
                  sll          sp, s8, s0
                  bne          a3, s0, 1110f
                  auipc        a1, 642006
                  andi         a0, s10, -1999
                  bge          a0, a6, 1097f
1096:             nop
1097:             srai         tp, a3, 18
                  add          s9, a1, s7
                  andi         s10, tp, 1258
                  andi         a4, a7, 270
                  add          a6, ra, a3
                  or           s9, t4, tp
1103:             srli         t6, s10, 28
                  bgeu         t0, zero, 1121f
                  slti         t5, a6, -224
                  sltiu        tp, a2, -1606
                  srl          t2, s0, gp
                  bne          s8, s6, 1114f
                  addi         a0, a7, -123
1110:             xor          s3, t4, t3
                  or           a5, s1, s7
                  slti         a7, zero, -952
                  addi         s0, s3, 1411
1114:             slt          sp, s6, a3
                  beq          s7, s6, 1130f
                  bge          a7, a2, 1123f
                  xori         sp, t5, 1724
                  xor          zero, t5, a5
                  sltu         s10, zero, s7
                  or           a5, s6, a7
1121:             add          a0, t0, t4
                  ori          s7, t0, 1094
1123:             xori         t3, t2, -91
                  sltiu        s5, a0, -255
                  sll          s9, zero, s6
                  bge          t2, a4, 1145f
                  xori         a2, tp, 1118
                  addi         s6, s4, -942
                  nop
1130:             addi         t2, a6, 1259
                  and          s10, s2, s1
                  beq          a6, t0, 1144f
                  bgeu         a3, a0, 1134f
1134:             sltu         s0, a2, s7
                  lui          s8, 578385
                  ori          s3, s3, 1383
                  and          a1, t5, s9
                  slti         s3, t1, 940
                  sltiu        a0, t5, -1509
                  lui          s3, 892588
                  lui          s6, 90863
                  sll          s2, s0, s8
                  srli         s2, a6, 13
1144:             sub          tp, s7, a6
1145:             srl          s0, t1, s11
                  nop
                  sub          s6, t3, gp
                  and          a0, ra, s6
                  add          s9, t3, a5
                  xor          t5, s6, t3
                  sltu         t0, tp, s0
                  slli         ra, s0, 7
                  sltiu        ra, t4, 945
                  sll          s11, s11, ra
                  sltu         s0, a0, t2
                  nop
                  sltu         t6, t2, t0
                  xori         t2, gp, 513
                  sltiu        s1, s11, 1255
                  bge          t2, s3, 1171f
                  blt          gp, a1, 1180f
                  srli         ra, a7, 8
                  slt          t6, t5, s1
                  sub          a6, t4, ra
                  bltu         t4, s7, 1169f
                  sltiu        zero, t1, -516
                  sltiu        a4, a3, 926
                  sltu         s7, s10, a1
1169:             srli         s0, s0, 1
                  xori         s1, s9, -1169
1171:             sll          a7, s6, a5
                  srl          a5, a0, s5
                  sltiu        t1, s10, -1958
                  auipc        s8, 807086
                  nop
                  beq          s10, s9, 1184f
                  srl          s0, a5, s1
                  srl          s2, t2, s8
                  sub          a1, s9, zero
1180:             addi         a1, s1, 1269
                  sll          tp, t5, s2
                  bge          zero, s1, 1188f
                  sra          t2, t1, t0
1184:             auipc        a0, 253570
                  sra          t5, s10, s0
                  sra          s11, t6, s1
                  slti         gp, t3, 1088
1188:             blt          s0, s1, 1190f
                  andi         s6, t2, 323
1190:             slti         s3, s3, -1469
                  bne          a1, a7, 1194f
                  bltu         s6, ra, 1202f
                  sltu         sp, a4, a5
1194:             blt          sp, a3, 1209f
                  slti         t6, s3, 1671
                  srli         s6, t3, 0
                  andi         s9, t1, -87
                  slt          zero, s7, a5
                  nop
                  sll          t2, s8, t6
                  sltiu        a7, a0, 1336
1202:             blt          s3, ra, 1206f
                  srai         a7, a2, 15
                  slli         s5, t0, 5
                  ori          s0, s4, 1279
1206:             sub          a5, t4, ra
                  add          s8, s9, sp
                  sltu         a6, t6, s6
1209:             lui          s6, 76317
                  xori         t1, t4, -869
                  slli         s8, sp, 23
                  or           sp, s3, s10
                  xor          a5, s1, t4
                  andi         a7, sp, 1770
                  addi         a4, t1, -1791
                  sub          s1, s3, a3
                  slt          a0, a2, t2
                  auipc        a6, 679889
                  bgeu         a4, zero, 1225f
                  sltiu        a6, ra, 1811
                  blt          a5, s2, 1229f
                  or           s8, s0, t3
                  lui          s1, 1018768
                  bgeu         ra, a6, 1240f
1225:             auipc        a2, 941816
                  sra          s11, t0, a2
                  nop
                  srli         s2, t2, 18
1229:             xori         t2, a1, -1911
                  lui          t6, 911402
                  slti         t6, tp, 1270
                  add          a2, t3, s6
                  slli         s9, s11, 30
                  sltiu        gp, s6, -2005
                  slli         s5, s0, 8
                  sra          t1, t5, s8
                  bltu         s2, a7, 1253f
                  xor          gp, a0, a1
                  sub          a7, s3, a0
1240:             nop
                  slli         s5, s4, 4
                  and          t1, a0, t2
                  bge          s1, s4, 1258f
                  sra          a4, a7, s8
                  sltiu        t2, t1, 536
                  andi         t2, sp, -389
                  xor          a0, tp, a1
                  ori          zero, a0, 263
                  add          s1, t0, gp
                  addi         s10, s10, 128
                  slli         s8, t3, 18
                  srli         s8, s0, 28
1253:             srli         s10, a7, 21
                  sra          a6, s4, a4
                  add          sp, t3, s1
                  bne          gp, s0, 1257f
1257:             auipc        t1, 89653
1258:             slli         s1, a7, 14
                  sra          tp, s8, a4
                  sub          s10, s8, t6
                  nop
                  ori          a0, s1, -476
                  nop
                  srli         sp, t5, 3
                  lui          a4, 483633
                  bge          s6, t3, 1280f
                  auipc        zero, 35734
                  add          t5, zero, s2
                  ori          s1, t3, 813
                  and          t0, s0, t6
                  sltu         ra, s11, t6
                  bltu         s2, t0, 1284f
                  bgeu         t2, t5, 1282f
                  add          s10, a4, s0
                  slti         tp, ra, 123
                  srai         tp, a3, 14
                  addi         t2, t1, 319
                  andi         s7, s1, 1738
                  ori          zero, a2, 1800
1280:             beq          s7, s7, 1294f
                  blt          s9, a4, 1285f
1282:             srai         t0, s11, 21
                  srai         s10, t0, 29
1284:             auipc        t6, 30933
1285:             nop
                  andi         a6, a4, -174
                  slt          s7, a3, s8
                  bgeu         a5, s8, 1303f
                  beq          s4, sp, 1292f
                  blt          s6, a5, 1302f
                  andi         s7, a6, 2024
1292:             slti         s2, s10, -410
                  bge          a4, sp, 1307f
1294:             sltiu        s0, tp, -1561
                  bgeu         a0, a6, 1297f
                  sra          s2, t2, a0
1297:             slli         a0, t6, 5
                  bne          zero, a5, 1317f
                  sltu         t1, a6, s6
                  blt          t4, s11, 1315f
                  srai         s6, t4, 11
1302:             slli         t6, t5, 20
1303:             sub          sp, t5, a3
                  sltiu        gp, t6, 1705
                  xori         t0, ra, 271
                  slt          s9, s8, s9
1307:             xori         gp, t1, 1832
                  auipc        a2, 1013798
                  bltu         t0, s0, 1310f
1310:             andi         zero, s2, 118
                  and          s8, gp, s5
                  lui          a5, 592790
                  sltu         s1, sp, s1
                  beq          s4, t5, 1320f
1315:             beq          t3, s11, 1334f
                  srli         a1, s2, 20
1317:             nop
                  srli         s1, t5, 19
                  srai         s5, sp, 25
1320:             xor          s6, s8, t1
                  or           zero, s3, a1
                  xor          s0, a0, a6
                  sltiu        s2, s11, -1661
                  addi         a6, a3, -1357
                  sll          t3, t0, t6
                  and          a6, t3, tp
                  slti         zero, zero, -847
                  sll          a5, s5, s8
                  and          t5, s4, a4
                  slt          gp, a2, s10
                  sra          s6, zero, s11
                  bltu         s10, s2, 1339f
                  add          a6, s7, t3
1334:             sub          a5, s1, s0
                  xori         s3, s8, -938
                  and          zero, t2, t3
                  ori          a0, a7, -1687
                  or           s11, a0, s1
1339:             xor          t1, a0, a6
                  and          s5, a6, a7
                  addi         a4, t1, -765
                  add          t6, sp, s1
                  auipc        t2, 660780
                  bltu         tp, s1, 1360f
                  xori         a1, s3, -611
                  nop
                  srl          ra, a5, t3
                  sll          s11, t6, t1
                  addi         tp, s0, 2043
                  or           t5, s5, a2
                  bge          s4, a6, 1355f
                  add          t0, s2, a5
                  nop
                  lui          a0, 300083
1355:             ori          s8, a2, 1056
                  sltu         s9, s7, a0
                  sll          s7, ra, s6
                  slt          s0, s2, gp
                  lui          s8, 205067
1360:             or           t0, a0, a3
                  sra          s0, s0, s0
                  add          a6, t1, t6
                  blt          ra, a2, 1381f
                  addi         tp, a7, -2030
                  beq          ra, a2, 1367f
                  slli         sp, a3, 14
1367:             ori          tp, s6, 485
                  xori         t6, a7, 1394
                  bne          a3, t4, 1379f
                  add          a2, gp, a7
                  xor          zero, a0, s7
                  add          a1, sp, s1
                  sltu         s2, s1, s0
                  sll          t2, t0, a7
                  xori         t0, s2, 1343
                  auipc        s5, 196067
                  bltu         t4, t2, 1393f
                  xor          ra, s2, t0
1379:             sltu         a1, s6, t3
                  andi         sp, t5, 1481
1381:             sltiu        t5, s3, -1115
                  bne          t4, t2, 1388f
                  add          t2, a5, t3
                  and          s2, a0, t6
                  auipc        ra, 806655
                  auipc        s5, 871304
                  sltu         zero, tp, s9
1388:             lui          sp, 846305
                  addi         s7, a3, 1712
                  bge          tp, a7, 1398f
                  slti         t3, tp, -1747
                  ori          a0, s5, -2012
1393:             slt          s10, gp, a3
                  sll          a1, a4, a2
                  bne          s9, ra, 1403f
                  sltu         a2, s10, s10
                  srl          s0, t3, s10
1398:             blt          s8, ra, 1412f
                  addi         s5, t6, -1467
                  sltiu        s3, s9, -377
                  auipc        t3, 657661
                  lui          ra, 685957
1403:             xor          a4, sp, t1
                  ori          zero, s1, -1890
                  sltu         a4, a5, a4
                  add          ra, t5, a3
                  beq          t1, ra, 1408f
1408:             sltiu        t5, a4, 894
                  blt          s9, ra, 1418f
                  andi         a6, tp, 820
                  srli         a6, sp, 28
1412:             slli         t1, s3, 0
                  xori         t2, s0, -1928
                  addi         a4, gp, -1713
                  slt          gp, t4, s6
                  sltiu        a0, sp, 795
                  bge          s11, a7, 1421f
                  la           s10, region_0+993 #start riscv_load_store_rand_instr_stream_17
                  lbu          t3, 434(s10)
                  lbu          t3, 776(s10)
                  lh           s0, 355(s10)
                  sh           s8, -979(s10)
                  ori          a7, s1, -818
                  lb           sp, -332(s10)
                  lb           a6, 766(s10)
                  sra          tp, tp, t2
                  auipc        a1, 696369
                  slli         ra, zero, 15
                  sh           ra, 373(s10)
                  sb           s3, -954(s10)
                  lb           tp, -322(s10)
                  xori         tp, s9, -695
                  lb           a4, 666(s10)
                  lbu          t2, -24(s10)
                  sb           s5, 260(s10)
                  addi         a0, a4, 350
                  lb           t3, -497(s10)
                  lhu          a1, -905(s10)
                  lbu          s7, 862(s10)
                  sh           s0, -863(s10)
                  lbu          s2, 564(s10)
                  ori          t5, t0, -115
                  sltiu        a0, zero, 625
                  lb           zero, 21(s10)
                  sb           s3, 654(s10)
                  sh           a4, -161(s10)
                  xori         t2, t4, 742
                  sb           t1, 980(s10)
                  sb           t3, 893(s10)
                  lh           zero, 833(s10)
                  lb           a4, -317(s10)
                  sb           a3, -322(s10)
                  sub          a7, s8, a5
                  lb           s9, 413(s10)
                  sb           a6, 488(s10)
                  slti         a0, s4, -1758
                  lbu          s7, -252(s10)
                  srli         gp, s5, 3
                  lb           t0, 419(s10) #end riscv_load_store_rand_instr_stream_17
1418:             lui          sp, 985911
                  beq          s3, a2, 1425f
                  sra          ra, s6, a1
1421:             auipc        t5, 154336
                  addi         s6, t5, 44
                  sub          s6, s1, sp
                  ori          s0, s1, -324
1425:             bge          s9, a6, 1442f
                  addi         t2, t5, 859
                  blt          t3, s10, 1438f
                  add          s9, s7, tp
                  addi         a6, t4, 260
                  slli         s11, s5, 15
                  sra          t3, t1, gp
                  slti         t2, s0, -27
                  srai         s0, a0, 6
                  sll          s5, t5, s9
                  auipc        s9, 367923
                  bne          a7, s10, 1448f
                  bgeu         s3, a4, 1452f
1438:             add          ra, t2, t0
                  bne          t0, s11, 1443f
                  sll          a5, s11, t4
                  sub          s8, a0, a3
1442:             sra          a1, s7, s8
1443:             sltiu        a4, s11, -222
                  bge          s3, s8, 1459f
                  srl          s8, t4, t5
                  and          a4, t0, s1
                  srai         s10, s1, 26
1448:             sltu         a5, s1, s1
                  srl          s7, a3, a2
                  sll          s9, s4, t2
                  srai         ra, s6, 26
1452:             bltu         tp, a2, 1470f
                  sll          a4, s10, a5
                  add          s1, s9, s7
                  sltiu        zero, a3, 1966
                  auipc        s11, 97092
                  sll          s0, gp, s8
                  slti         a4, zero, -1682
1459:             bne          s10, a0, 1478f
                  ori          s11, s9, 277
                  sltiu        s8, tp, 1741
                  srl          s2, s0, zero
                  or           a1, t5, gp
                  addi         t6, a6, -1868
                  srl          a1, t0, gp
                  bltu         a3, t1, 1468f
                  nop
1468:             bge          s11, a7, 1474f
                  xori         s2, a6, -265
1470:             slti         zero, a1, -1490
                  bltu         a5, s10, 1490f
                  andi         s8, s5, -787
                  xor          s3, t6, s7
1474:             xori         ra, a5, 371
                  xor          s6, t2, a7
                  sltiu        a4, s0, 127
                  bltu         s11, a2, 1492f
1478:             slli         a7, a5, 19
                  nop
                  srl          s9, t3, t2
                  srai         t5, a5, 9
                  blt          a4, s0, 1491f
                  beq          t5, s11, 1489f
                  sltiu        s7, s5, -742
                  slti         a6, s1, -587
                  slli         a6, t6, 15
                  blt          s8, s2, 1499f
                  sll          s5, s4, s1
1489:             slti         t2, s3, -1831
1490:             or           t6, zero, zero
1491:             srli         s9, ra, 16
1492:             lui          a1, 767699
                  sltu         zero, tp, a2
                  bltu         t6, a5, 1497f
                  lui          sp, 473916
                  xori         sp, a3, -1991
1497:             xor          a1, a2, s2
                  andi         a2, sp, -654
1499:             bltu         ra, gp, 1515f
                  sltu         t3, a1, a3
                  andi         s3, t4, -1630
                  and          s6, t2, sp
                  ori          a1, t3, 331
                  slli         zero, t4, 6
                  sll          t6, a7, s0
                  auipc        s9, 802271
                  sltu         a1, s10, tp
                  xor          ra, a6, s2
                  sub          a5, t4, sp
                  bne          t5, ra, 1511f
1511:             bne          sp, t1, 1512f
1512:             srli         a2, s0, 31
                  or           t6, ra, s0
                  beq          s0, t3, 1531f
1515:             beq          t3, a1, 1527f
                  add          t2, s1, t0
                  slli         s11, ra, 0
                  auipc        s10, 780111
                  nop
                  and          s0, t2, tp
                  slt          a2, s8, a3
                  srli         t6, t5, 17
                  bge          ra, s11, 1531f
                  and          t3, s3, s11
                  sll          sp, t0, s8
                  bne          s9, s6, 1534f
1527:             blt          gp, tp, 1531f
                  bge          t1, a0, 1539f
                  and          t2, s11, s5
                  nop
1531:             xor          s3, t5, s5
                  srai         t6, t6, 3
                  addi         a7, s11, 1245
1534:             srli         t3, a7, 15
                  auipc        tp, 659629
                  addi         t1, s6, -1413
                  and          tp, a6, t5
                  xor          zero, a1, a6
1539:             slli         s8, s7, 25
                  sltu         s8, a3, s2
                  bgeu         a2, s0, 1555f
                  bne          t3, a3, 1544f
                  bne          s11, a6, 1553f
1544:             sll          t5, s2, t0
                  blt          a7, zero, 1561f
                  addi         ra, a7, -821
                  bgeu         a0, s9, 1562f
                  srai         a0, t2, 31
                  andi         a2, a4, -881
                  and          s1, s10, s3
                  slli         s3, t5, 10
                  addi         t1, t4, 173
1553:             nop
                  addi         s8, a1, -1939
1555:             sltiu        s11, s4, 378
                  slli         s3, a2, 7
                  slt          s3, s8, s8
                  xori         t5, s5, 163
                  bgeu         a0, tp, 1563f
                  bge          t3, t0, 1564f
1561:             bge          s9, a5, 1568f
1562:             beq          s4, tp, 1568f
1563:             slt          s1, s4, ra
1564:             srl          s6, a5, t2
                  blt          t0, zero, 1579f
                  sltu         t5, zero, s9
                  auipc        s6, 358287
1568:             sub          s11, t1, a6
                  bgeu         t4, s10, 1588f
                  slti         s9, s3, -157
                  srai         a4, a3, 28
                  xori         a1, t4, -1818
                  and          s5, s8, s3
                  or           s5, t3, s3
                  sra          s8, s6, t2
                  addi         t3, t4, -478
                  blt          a5, s1, 1578f
                  la           a4, region_0+274 #start riscv_load_store_rand_instr_stream_28
                  lbu          s8, -84(a4)
                  sb           sp, 123(a4)
                  lh           a5, -212(a4)
                  or           a5, t2, t0
                  lbu          s9, -9(a4)
                  sb           zero, -191(a4)
                  lb           t5, 86(a4)
                  and          s7, a0, t1
                  sltiu        a0, a5, -214
                  slt          a0, s0, a5
                  sb           ra, 22(a4)
                  sb           tp, 235(a4)
                  lb           a7, 183(a4)
                  sltu         t3, sp, s4
                  add          s6, zero, a4
                  slt          a6, t4, a3
                  slti         s3, a7, -913
                  sb           gp, -72(a4)
                  or           s6, s5, sp
                  andi         s7, t1, -1048
                  sh           s3, 56(a4)
                  sb           a0, -151(a4)
                  sb           a1, -15(a4)
                  addi         t5, a6, 1306
                  lb           t2, -153(a4)
                  lbu          t2, 101(a4)
                  lui          s2, 213737
                  sb           s7, -62(a4)
                  lbu          t2, -59(a4)
                  lbu          a2, 236(a4)
                  srai         t2, s4, 14
                  lb           s8, -27(a4)
                  or           s8, t4, t4
                  lb           a5, -10(a4)
                  sh           t3, 256(a4)
                  srli         t6, a7, 15
                  sb           s6, -61(a4)
                  lbu          zero, 189(a4)
                  or           s5, ra, t4
                  lbu          a6, 31(a4)
                  lbu          s3, -76(a4)
                  or           t6, a4, s6
                  lw           a0, -138(a4)
                  and          s7, s6, s0
                  lb           a0, 41(a4) #end riscv_load_store_rand_instr_stream_28
1578:             sll          s0, s0, a6
1579:             ori          s9, a1, -211
                  srli         a2, a5, 30
                  add          s0, a3, a4
                  andi         zero, s11, 182
                  and          s5, zero, t3
                  bne          s9, t2, 1601f
                  xori         s5, s7, 1435
                  sltu         s0, ra, s10
                  beq          a4, t0, 1598f
1588:             bge          s7, s7, 1606f
                  bgeu         s11, s3, 1604f
                  sltu         s1, s6, s3
                  bltu         gp, s3, 1607f
                  addi         s7, s2, 1979
                  sltiu        a7, s4, 881
                  bge          t5, t2, 1600f
                  sltiu        s8, a2, 138
                  sll          s6, t3, s10
                  srai         s10, t6, 7
1598:             addi         a1, s11, -1181
                  lui          t5, 127387
1600:             blt          a4, s0, 1606f
1601:             nop
                  sltu         zero, a5, t2
                  bne          t1, s10, 1615f
1604:             bltu         t4, s6, 1620f
                  andi         zero, t0, 536
1606:             auipc        s3, 630919
1607:             add          s11, gp, s5
                  xori         gp, t2, -1382
                  lui          a6, 488457
                  srl          a0, gp, a6
                  auipc        a2, 21543
                  slti         tp, s5, 418
                  beq          a3, s4, 1620f
                  sltu         a1, t3, a3
1615:             srai         a0, a5, 18
                  srl          t3, a7, a7
                  nop
                  slli         s10, t2, 21
                  sltu         t0, a4, s1
1620:             lui          s7, 712324
                  bne          s6, s0, 1636f
                  add          s1, a7, sp
                  xori         a7, s3, 698
                  bgeu         ra, s7, 1630f
                  and          t3, s4, s4
                  srl          t3, sp, s1
                  beq          t2, s11, 1636f
                  andi         t1, s9, -1103
                  bgeu         t1, t1, 1643f
1630:             beq          ra, s3, 1638f
                  bge          s1, t5, 1639f
                  sltiu        a7, a2, -918
                  srai         a6, s4, 29
                  bge          a7, s2, 1648f
                  sub          s3, a5, tp
1636:             srai         s2, s2, 23
                  bge          s1, s0, 1641f
1638:             nop
1639:             bgeu         s11, s2, 1649f
                  sll          s0, tp, t4
1641:             beq          a2, gp, 1645f
                  slt          a6, t4, zero
1643:             sll          s0, s4, a6
                  blt          s4, t5, 1663f
1645:             xor          a0, s1, a3
                  xor          a6, ra, a7
                  auipc        t6, 116438
1648:             xori         zero, s7, -1512
1649:             beq          t5, s5, 1664f
                  auipc        sp, 836671
                  sltu         a7, s3, sp
                  addi         zero, gp, -1144
                  la           s2, region_1+898 #start riscv_load_store_rand_instr_stream_1
                  srli         a4, gp, 5
                  nop
                  lh           s11, 526(s2)
                  lbu          s8, -221(s2)
                  sltu         tp, s7, t1
                  sb           s3, -149(s2)
                  lhu          tp, 908(s2)
                  slti         a7, t1, -1097
                  sh           s1, -838(s2)
                  sb           t2, -203(s2)
                  lh           s11, 508(s2)
                  lhu          s1, 1002(s2)
                  sh           a6, 138(s2)
                  sw           t3, -178(s2)
                  sub          s3, a7, t3
                  xori         t5, a1, -1239
                  lbu          s6, 369(s2)
                  sltu         s0, s11, tp
                  auipc        ra, 834611
                  lbu          s10, 333(s2)
                  slli         s1, s5, 6
                  ori          s6, a1, -116
                  lbu          s10, 239(s2)
                  sb           a5, -579(s2)
                  nop
                  lb           s5, 311(s2)
                  lb           zero, 195(s2)
                  sll          t6, t6, s9
                  srli         zero, s7, 17
                  or           s11, s5, sp
                  lb           s9, -663(s2)
                  nop
                  lb           s5, -213(s2)
                  ori          s8, s0, -784
                  sb           t5, 656(s2)
                  sra          gp, sp, a0
                  lw           t3, 186(s2)
                  lbu          a2, 353(s2)
                  sb           a0, 690(s2)
                  lb           s9, -17(s2)
                  lw           sp, -362(s2)
                  and          sp, s7, t5
                  sub          a1, s6, s8
                  lbu          s9, -421(s2)
                  srai         tp, a7, 3
                  ori          ra, a6, 332
                  lb           t5, 663(s2)
                  sw           s11, 982(s2)
                  lhu          a2, 144(s2)
                  sh           a4, 652(s2) #end riscv_load_store_rand_instr_stream_1
                  sub          s0, sp, s2
                  bne          s7, t0, 1666f
                  bge          s4, s6, 1656f
1656:             xori         a2, sp, -939
                  sll          s7, tp, s7
                  addi         s5, sp, 988
                  slti         s9, t0, -1456
                  xori         gp, t1, -1468
                  bgeu         s0, t1, 1664f
                  ori          s1, s5, 995
1663:             srai         tp, s6, 12
1664:             sra          a5, s9, a4
                  sltiu        s3, a1, -11
1666:             lui          t5, 1043505
                  srli         s7, s2, 26
                  srli         tp, t1, 28
                  sltiu        a6, a7, 660
                  auipc        a2, 519038
                  slli         t0, a1, 23
                  auipc        a4, 973251
                  add          s5, s7, zero
                  xor          tp, a2, t2
                  sltu         s9, sp, a2
                  bge          gp, t4, 1680f
                  add          sp, a0, s8
                  srl          tp, s1, sp
                  srl          t2, t1, s3
1680:             xor          a2, t6, s2
                  bge          a4, s6, 1683f
                  xor          zero, a0, s8
1683:             bgeu         s4, s5, 1685f
                  sra          s6, a1, t5
1685:             sub          ra, t4, ra
                  sltiu        a5, s3, 1675
                  beq          s11, ra, 1694f
                  bltu         a4, t5, 1702f
                  xori         s7, ra, -896
                  beq          gp, a3, 1694f
                  bgeu         tp, s8, 1700f
                  add          s5, ra, s8
                  or           a6, a6, t3
1694:             blt          gp, s4, 1706f
                  xori         s7, a3, 1027
                  srli         t6, t4, 23
                  xori         t6, t6, -1779
                  slli         t1, t3, 10
                  sltu         t0, a5, t3
1700:             sra          s11, s10, t1
                  sub          t1, s10, s9
1702:             andi         a0, a6, -1622
                  sltiu        a7, a6, -116
                  sltiu        s9, s6, -801
                  addi         a5, sp, -192
1706:             blt          t5, a1, 1712f
                  sltiu        s5, s7, 106
                  ori          a7, t3, 1064
                  slti         t5, s10, 1780
                  blt          t2, a4, 1727f
                  bge          s0, s9, 1715f
1712:             sltu         a1, t3, t2
                  add          s1, s0, s8
                  nop
1715:             bge          t3, s0, 1723f
                  auipc        tp, 473626
                  srli         s3, s10, 19
                  sll          t0, s5, t0
                  nop
                  sra          s6, a3, s7
                  andi         a5, sp, -668
                  sll          s9, s11, s9
1723:             srai         sp, s5, 31
                  ori          t0, s8, 406
                  slli         t3, t0, 31
                  srl          sp, t0, t6
1727:             ori          a0, s9, 1364
                  bgeu         a7, tp, 1734f
                  andi         gp, t5, 781
                  sub          s8, a6, a5
                  or           s0, t6, s3
                  ori          s1, s2, 65
                  sll          t5, zero, s4
1734:             slt          a7, sp, s5
                  xor          ra, t6, s0
                  xori         t1, t3, 26
                  andi         t6, t1, -1326
                  sub          s2, s11, s7
                  bne          a6, t4, 1750f
                  beq          t4, a4, 1758f
                  srai         s5, s3, 9
                  sll          sp, s11, sp
                  slti         a7, t0, 1870
                  sub          s7, t3, s4
                  srli         ra, t4, 25
                  bge          s8, a5, 1752f
                  slt          t1, a2, s5
                  sub          a1, a1, t5
                  srli         a6, a7, 6
1750:             sra          a2, a0, s1
                  ori          s8, s2, 1284
1752:             or           a5, s1, s7
                  auipc        s2, 632465
                  slli         s6, zero, 22
                  auipc        s10, 730723
                  bgeu         gp, s0, 1771f
                  add          a2, ra, s1
1758:             lui          t2, 24354
                  blt          a7, a1, 1778f
                  auipc        t1, 18942
                  lui          zero, 578264
                  add          t5, t5, s5
                  lui          s7, 393977
                  andi         t1, s6, -1375
                  sltiu        t6, s10, 1300
                  blt          s1, s2, 1769f
                  bge          s9, s3, 1768f
1768:             auipc        a4, 855126
1769:             bne          s8, s0, 1785f
                  slli         s2, s9, 23
1771:             beq          zero, a3, 1787f
                  ori          a2, tp, 303
                  srli         a6, a3, 21
                  srl          t2, t6, s4
                  sub          t6, tp, a6
                  and          sp, a2, t0
                  and          sp, a2, a2
1778:             bne          ra, t4, 1788f
                  and          s1, zero, t1
                  sltiu        s6, s10, 1025
                  or           s5, t6, a0
                  bgeu         s5, t2, 1786f
                  sra          sp, t1, s10
                  blt          s9, a1, 1798f
1785:             bne          a4, t0, 1800f
1786:             beq          s8, a3, 1787f
1787:             slt          s1, s7, tp
1788:             srai         s0, s9, 3
                  bge          s6, a5, 1797f
                  srl          tp, s2, s3
                  srli         a1, a2, 5
                  beq          t1, s0, 1794f
                  bltu         t6, t5, 1808f
1794:             sltu         a6, t3, a5
                  bne          s8, s2, 1797f
                  srli         ra, t4, 12
1797:             add          s10, t6, sp
1798:             sltiu        a2, a7, 866
                  srai         t5, t5, 0
1800:             bge          s0, t4, 1812f
                  bge          a2, t5, 1820f
                  xori         a2, s2, 1522
                  and          s10, t0, t0
                  add          a5, t5, s5
                  andi         s9, a5, 718
                  bne          t4, tp, 1810f
                  slt          s2, ra, s2
1808:             beq          t4, s6, 1824f
                  sub          t3, t6, a1
1810:             auipc        s9, 640400
                  andi         ra, s11, -1534
1812:             slli         s2, s9, 16
                  add          a4, s11, t2
                  slti         s2, a2, 149
                  srai         sp, a2, 15
                  blt          a6, t2, 1834f
                  slti         s9, s11, -1688
                  lui          sp, 694287
                  and          s8, zero, t1
1820:             srai         t3, s7, 5
                  sltu         a0, s2, t5
                  blt          s8, s2, 1829f
                  srl          a0, a3, s5
1824:             sltu         t3, t1, t2
                  srl          t5, t4, s9
                  add          s7, t6, a4
                  or           t6, t3, s2
                  add          t1, a7, a4
1829:             auipc        s5, 403577
                  lui          t0, 1020786
                  and          ra, s0, s6
                  slti         s7, a3, -602
                  slli         a4, a6, 14
1834:             bne          zero, s5, 1840f
                  blt          t6, a7, 1837f
                  andi         sp, s2, 1296
1837:             sub          t0, a0, t2
                  lui          s1, 407834
                  xor          tp, t5, a4
1840:             sltiu        tp, s5, 1243
                  sltiu        s9, ra, 1060
                  lui          s7, 1032348
                  ori          t6, t5, 688
                  beq          sp, t1, 1845f
1845:             xor          a1, a5, s9
                  beq          a3, tp, 1854f
                  nop
                  srai         s11, s6, 14
                  blt          t2, a4, 1851f
                  srli         a1, s8, 2
1851:             lui          ra, 675392
                  addi         gp, t4, -1329
                  srai         zero, s8, 26
1854:             sltu         a2, s5, t6
                  beq          a4, a1, 1859f
                  beq          tp, t0, 1871f
                  addi         s11, t4, 27
                  blt          t1, a3, 1877f
1859:             xori         t3, a7, 2030
                  srl          a4, a5, t3
                  sra          a5, a3, tp
                  sltiu        zero, tp, 1017
                  bne          t5, t2, 1867f
                  srai         tp, a7, 26
                  bne          s8, t3, 1877f
                  bne          a4, t1, 1883f
1867:             ori          s11, s1, -1115
                  addi         a1, a7, 272
                  sll          s6, zero, a6
                  slti         a2, s5, -635
1871:             and          t6, t6, a1
                  blt          t1, s6, 1886f
                  addi         s1, gp, -938
                  sra          a2, s2, a7
                  addi         t6, a6, 599
                  slli         t0, a7, 2
1877:             sltiu        t1, a5, -2030
                  bne          s11, s0, 1892f
                  slli         s8, t6, 16
                  addi         a0, s1, 552
                  sltiu        t6, t3, 2015
                  sll          a5, s11, s1
1883:             bge          zero, s6, 1884f
1884:             lui          s6, 234228
                  srli         s11, s8, 27
1886:             auipc        s8, 808415
                  or           a2, a4, a1
                  sltiu        a0, s8, 1443
                  auipc        a5, 152123
                  add          s11, s1, sp
                  xor          t5, s2, s7
1892:             srli         tp, s2, 10
                  bne          a4, t6, 1902f
                  slli         s2, a6, 13
                  sra          s3, s10, t2
                  sltu         s2, a1, s9
                  sll          sp, gp, zero
                  xor          s0, ra, tp
                  and          t3, a3, zero
                  ori          t6, s10, 450
                  beq          s11, t0, 1917f
1902:             beq          a1, t6, 1912f
                  beq          s3, s11, 1922f
                  sra          s0, s4, s0
                  bge          a2, s4, 1920f
                  srl          t3, a7, a6
                  srai         a5, t4, 0
                  lui          a7, 510596
                  sltiu        a7, a6, 637
                  sll          s5, s3, zero
                  bltu         a7, s0, 1919f
1912:             srai         s11, t2, 22
                  sll          zero, ra, s4
                  sub          tp, zero, a3
                  bgeu         s8, a7, 1918f
                  bne          s2, t4, 1922f
1917:             bltu         s11, s2, 1928f
1918:             bltu         zero, s5, 1933f
1919:             srl          sp, s4, ra
1920:             auipc        a6, 945839
                  add          zero, a7, s4
1922:             or           s7, gp, zero
                  sub          t5, s6, a6
                  sltu         tp, s7, t5
                  sra          a2, s11, s11
                  auipc        zero, 681403
                  sltu         s9, tp, a0
1928:             sltu         s0, a7, s6
                  auipc        gp, 1042520
                  bltu         t0, s9, 1936f
                  srli         t0, t1, 0
                  sltu         s6, t3, a3
1933:             sub          s10, gp, a1
                  bne          a6, t2, 1946f
                  xori         t3, a5, 1597
1936:             sra          gp, s11, sp
                  blt          a1, zero, 1941f
                  xori         a7, t1, -592
                  andi         s6, t5, 343
                  sra          s0, s2, a6
1941:             lui          s2, 867971
                  and          s0, sp, s5
                  xori         t0, t5, -1661
                  add          sp, a1, s1
                  sll          t6, t5, s2
1946:             nop
                  bltu         s5, s4, 1951f
                  bne          zero, a7, 1960f
                  or           s6, sp, a3
                  srl          t3, a5, s1
1951:             addi         s9, s1, -1005
                  sll          a6, a1, s9
                  and          s9, tp, a7
                  srli         t5, tp, 28
                  bgeu         a7, s1, 1961f
                  sltiu        t1, s8, -1852
                  srl          t6, t4, s2
                  or           s6, zero, gp
                  srai         s7, a0, 10
1960:             beq          gp, s3, 1970f
1961:             sltu         a7, s10, t1
                  slti         zero, sp, -434
                  srl          t3, s11, t1
                  sll          t6, s5, s1
                  bge          s3, gp, 1982f
                  addi         s6, s3, 96
                  nop
                  ori          a4, s2, 1565
                  slt          t6, t1, t6
1970:             srl          a6, t1, t5
                  ori          a7, a5, 1262
                  sub          gp, s4, a3
                  andi         gp, s7, -432
                  slt          s7, s6, t1
                  or           gp, s9, t4
                  sltu         s5, s5, a3
                  bne          s1, s6, 1992f
                  srai         a1, sp, 6
                  xor          t6, t2, t5
                  sub          s9, a6, gp
                  sub          s1, t2, t3
1982:             and          s5, s6, t1
                  lui          s3, 954569
                  sra          s1, t4, ra
                  srl          t5, t0, s0
                  sltu         t2, gp, s4
                  bge          s2, s3, 2001f
                  or           s11, s8, ra
                  bne          t5, a2, 2008f
                  auipc        a7, 652118
                  sll          gp, t1, a7
1992:             andi         s11, a7, -1090
                  lui          a6, 927026
                  sra          a7, s0, sp
                  lui          t1, 97287
                  or           s10, s11, a3
                  slli         t0, a6, 9
                  addi         s8, t5, -1694
                  bltu         a2, sp, 2000f
2000:             add          a6, s4, s0
2001:             sltu         a7, a2, t2
                  bge          s3, t4, 2013f
                  sll          a2, a7, s3
                  slli         s9, s3, 7
                  bne          t1, ra, 2020f
                  ori          s9, gp, 87
                  sltu         a4, ra, s2
2008:             bgeu         t0, s9, 2020f
                  andi         a7, s6, 578
                  beq          gp, t3, 2012f
                  slt          s9, t3, a3
2012:             slt          a0, s9, s4
2013:             bne          zero, a1, 2021f
                  add          tp, sp, s8
                  and          s8, sp, ra
                  srai         t0, a0, 4
                  or           t2, s5, t5
                  sll          t2, t2, tp
                  srl          t0, t6, t3
2020:             bne          zero, t6, 2027f
2021:             sltiu        s1, sp, -558
                  srl          t2, t5, sp
                  and          tp, s7, sp
                  slli         t2, s1, 1
                  sra          t2, s3, sp
                  lui          a5, 932087
2027:             bge          a7, tp, 2041f
                  blt          s7, s2, 2047f
                  sll          tp, s4, tp
                  sra          s10, s1, a1
                  bltu         a7, tp, 2049f
                  beq          t2, t3, 2048f
                  andi         a0, a2, 1062
                  bgeu         s8, s8, 2050f
                  nop
                  slli         a1, t2, 8
                  bltu         t2, a0, 2039f
                  slti         a1, a3, 751
2039:             srl          t1, s8, a1
                  nop
2041:             nop
                  ori          a5, t0, -736
                  beq          s6, a7, 2051f
                  and          a5, s1, s11
                  xor          a6, s10, zero
                  lui          t5, 779884
2047:             add          s8, sp, t3
2048:             bne          t1, s3, 2052f
2049:             slli         s2, t0, 30
2050:             nop
2051:             sltu         a7, zero, zero
2052:             srai         a6, a1, 31
                  xori         t2, gp, 1866
                  bgeu         a7, a2, 2055f
2055:             auipc        gp, 234225
                  and          s10, s0, t5
                  srl          zero, a5, s4
                  bne          a4, t4, 2064f
                  lui          s11, 436652
                  sub          t1, a3, a3
                  blt          t1, t5, 2070f
                  bgeu         a5, s3, 2077f
                  or           zero, s6, zero
2064:             addi         s8, t3, -1222
                  bltu         t2, t2, 2071f
                  sra          a0, a4, s9
                  srli         s1, s7, 12
                  bgeu         t3, s10, 2071f
                  add          t6, a2, sp
2070:             srai         a6, t5, 25
2071:             bne          s6, gp, 2083f
                  and          gp, s7, s6
                  beq          t4, s7, 2088f
                  slt          a2, gp, t0
                  lui          t6, 806847
                  xori         gp, a4, 1243
2077:             sltu         sp, t4, s2
                  auipc        s9, 96763
                  xor          ra, a7, s3
                  sll          t1, s6, a7
                  sltu         t0, s10, s3
                  slti         tp, a2, -502
2083:             sub          s8, a3, s2
                  lui          t5, 341426
                  srai         a2, t4, 23
                  sll          sp, s2, a7
                  nop
2088:             bgeu         a5, t1, 2092f
                  bne          t2, s2, 2093f
                  addi         a6, t5, 1125
                  sll          s1, a4, a5
2092:             xor          tp, t5, s7
2093:             addi         t3, t5, 1246
                  slli         t5, t3, 3
                  sub          a0, a3, t4
                  ori          s3, t0, 1996
                  srli         s5, s3, 21
                  sltiu        s9, tp, 1784
                  slti         t3, tp, 1607
                  bltu         ra, t2, 2101f
2101:             and          t3, t1, s9
                  srli         s3, a4, 6
                  add          s1, a3, t5
                  bltu         a1, t3, 2113f
                  slti         s9, t3, 1478
                  add          zero, a4, a1
                  beq          s1, t2, 2109f
                  andi         s6, s4, -197
2109:             slt          s0, s3, s7
                  add          s9, s6, sp
                  sra          a0, sp, a2
                  sltu         s11, s11, s5
2113:             bgeu         t0, t5, 2128f
                  bltu         s3, a6, 2128f
                  sltu         t6, a1, t5
                  srli         s3, s3, 18
                  slli         t0, s3, 14
                  srli         a5, a5, 24
                  sra          gp, tp, a3
                  sltu         s2, s3, s2
                  bge          a6, s2, 2125f
                  sra          gp, s2, s0
                  bne          sp, s5, 2126f
                  beq          s4, t4, 2125f
2125:             sltu         s8, t2, tp
2126:             and          s0, t3, tp
                  sub          tp, s4, t2
2128:             xor          a2, s5, s6
                  sltiu        a6, s0, 1278
                  lui          s6, 544338
                  xori         a0, s1, 1530
                  bne          ra, s5, 2148f
                  bge          zero, t5, 2141f
                  bge          s11, s5, 2140f
                  beq          a0, t5, 2137f
                  blt          ra, t2, 2142f
2137:             nop
                  auipc        a5, 1028931
                  sub          s8, t6, s9
2140:             ori          s6, s8, 16
2141:             lui          t0, 620754
2142:             sra          tp, s9, t3
                  sltu         t3, gp, t2
                  sub          t2, s7, a1
                  sub          tp, gp, s4
                  sltu         s0, s2, t0
                  slli         tp, a7, 23
2148:             nop
                  bltu         sp, a1, 2161f
                  srai         s11, s6, 17
                  bne          s11, s8, 2162f
                  addi         t0, s8, 933
                  bltu         a2, t4, 2159f
                  beq          s0, s4, 2171f
                  sll          s1, ra, t1
                  slli         tp, a2, 8
                  auipc        t0, 934512
                  sltiu        ra, t3, 488
2159:             bge          t2, a3, 2169f
                  srl          zero, t1, t4
2161:             lui          a7, 838419
2162:             srli         s7, s3, 27
                  xor          zero, s4, a0
                  nop
                  add          t6, zero, a3
                  bne          a0, zero, 2173f
                  and          zero, s10, ra
                  bne          s5, t0, 2187f
2169:             blt          t2, a5, 2184f
                  nop
2171:             addi         s1, s6, -1730
                  slli         s2, a6, 30
2173:             auipc        t0, 1024647
                  xori         sp, s2, 183
                  sub          a2, s11, a3
                  sll          s11, a1, t3
                  beq          zero, t1, 2196f
                  sltiu        s1, a4, 200
                  addi         t1, t0, 431
                  ori          s3, a5, 1911
                  and          s3, a7, t5
                  sub          a4, zero, a2
                  sll          t1, t2, sp
2184:             sltu         s10, s1, a7
                  srai         s3, s7, 19
                  add          s8, t5, s11
2187:             srai         a1, s8, 26
                  sll          s6, ra, t1
                  srl          a4, s0, s9
                  bne          a0, s2, 2198f
                  slt          s1, s4, s6
                  sll          a2, s9, a1
                  bltu         t2, t1, 2209f
                  lui          a1, 110697
                  slli         t2, a2, 2
2196:             bltu         s6, a3, 2210f
                  sltiu        a6, t3, -61
2198:             srl          tp, s7, gp
                  la           sp, region_0+1803 #start riscv_load_store_rand_instr_stream_5
                  lb           t2, -161(sp)
                  lbu          s5, -73(sp)
                  lb           a4, -588(sp)
                  sb           a5, -1299(sp)
                  lb           t3, -1700(sp)
                  lb           s9, 106(sp)
                  lhu          a6, -545(sp)
                  auipc        s5, 626015
                  lhu          a4, -1663(sp)
                  lbu          s9, -168(sp)
                  addi         s10, a7, -1732
                  auipc        ra, 301905
                  sh           s9, 75(sp)
                  lh           t3, -769(sp)
                  and          s8, s7, a1
                  lhu          gp, -141(sp)
                  lbu          s0, -274(sp)
                  lh           a5, -263(sp)
                  lbu          s0, -230(sp)
                  lb           s1, 69(sp)
                  sra          s1, s1, a1
                  lh           t3, -237(sp)
                  sb           t0, -196(sp)
                  sb           s6, -852(sp)
                  lbu          s0, -684(sp)
                  xor          t0, t1, s5
                  sltu         t3, t2, zero
                  xori         a5, s1, 159
                  lbu          s9, -904(sp)
                  lbu          s9, -1698(sp)
                  addi         s2, s7, -2004
                  lbu          t0, -865(sp)
                  slt          a7, t0, s11
                  sb           ra, -160(sp)
                  sra          tp, a4, s3
                  lw           t0, -1399(sp)
                  sltu         s6, a6, s11
                  slti         s8, s10, 164
                  srai         a2, zero, 25
                  sh           a6, -49(sp)
                  lw           s11, -1279(sp)
                  lh           s6, 99(sp) #end riscv_load_store_rand_instr_stream_5
                  srl          a6, ra, zero
                  or           s11, t2, s2
                  lui          s10, 552527
                  add          sp, s2, t4
                  sltiu        t3, t4, -91
                  sll          s1, a6, a5
                  nop
                  sra          sp, s7, a7
                  ori          s2, s0, -1942
                  bne          s5, a1, 2226f
2209:             xor          t0, t6, gp
2210:             beq          tp, a5, 2226f
                  xori         t1, gp, 247
                  sub          a0, t2, tp
                  add          s1, a7, a6
                  sll          t1, s6, s1
                  auipc        s9, 328042
                  beq          t1, t2, 2235f
                  beq          s9, s7, 2220f
                  sltiu        sp, t4, 1101
                  srl          a5, zero, s2
2220:             or           t3, s11, s11
                  slt          zero, s7, s8
                  sll          t0, t2, tp
                  sltu         s3, t5, t5
                  sll          zero, s11, s2
                  sra          a1, t4, a1
2226:             lui          a4, 482978
                  addi         s9, t0, 1061
                  sltu         s9, t6, s8
                  xori         s1, s4, -568
                  xor          a2, s5, s7
                  slli         a1, s9, 17
                  auipc        s8, 864303
                  nop
                  andi         ra, t1, -394
2235:             auipc        t1, 770770
                  and          s3, s2, tp
                  lui          a6, 881214
                  blt          s10, ra, 2239f
2239:             and          s1, a3, a1
                  add          a4, t3, s2
                  and          a1, s2, a5
                  xor          s0, tp, gp
                  sll          a7, ra, a7
                  andi         s10, s7, 1201
                  srli         t0, s5, 22
                  srli         a7, zero, 7
                  xori         a6, a6, -215
                  bgeu         zero, tp, 2259f
                  sra          s5, a7, a5
                  xor          s1, t4, a1
                  or           s6, s6, t1
                  srl          s1, s10, s4
                  sub          s6, s10, zero
                  andi         s10, s8, 9
                  lui          a5, 84231
                  bne          s11, tp, 2272f
                  and          s2, a7, t5
                  nop
2259:             sub          t6, s4, s9
                  slli         sp, s6, 23
                  addi         a1, sp, -834
                  auipc        t5, 768383
                  slli         s5, a4, 26
                  slt          zero, t2, t2
                  slt          t1, tp, t1
                  srli         a2, a0, 0
                  ori          a0, sp, -1314
                  xor          s1, t4, s0
                  xori         s9, a3, -1894
                  sltu         s6, s6, s0
                  srai         s6, s11, 23
2272:             nop
                  auipc        s3, 629261
                  slli         t2, gp, 27
                  sll          t6, s11, a5
                  addi         t6, a4, -1161
                  slli         t6, t2, 15
                  xor          a7, ra, a2
                  nop
                  srai         s8, s3, 10
                  xor          a2, s11, tp
                  sra          s0, t6, t5
                  srl          s8, t0, zero
                  auipc        s7, 82611
                  xor          zero, a3, a4
                  bge          t1, tp, 2293f
                  ori          t0, s8, -271
                  xori         s6, a0, 1520
                  auipc        gp, 660022
                  bltu         a0, t5, 2305f
                  sll          s7, a3, a1
                  srli         s2, a7, 18
2293:             addi         ra, a6, 475
                  addi         a1, a3, -857
                  srli         s8, t2, 22
                  xori         s10, s0, 1303
                  srli         t6, t0, 16
                  bltu         s8, t6, 2315f
                  ori          s7, s10, 529
                  bne          t5, a6, 2314f
                  addi         a0, a1, 141
                  sltiu        a5, s5, 200
                  slli         s8, tp, 14
                  bgeu         t1, s4, 2308f
2305:             bne          t0, a2, 2320f
                  xor          tp, s0, a7
                  srli         s11, a6, 22
2308:             sltiu        a1, t4, 1501
                  bltu         s10, s9, 2324f
                  sra          s0, a6, gp
                  sra          t3, t5, a2
                  sll          a6, t6, s4
                  auipc        a5, 619682
2314:             ori          sp, a0, -47
2315:             blt          s4, a2, 2323f
                  blt          a1, s10, 2320f
                  bgeu         s11, t4, 2325f
                  lui          s5, 709423
                  bgeu         a3, t1, 2321f
2320:             slt          t0, a5, s8
2321:             sltu         s0, tp, a3
                  bne          zero, a5, 2334f
2323:             blt          s0, tp, 2329f
2324:             bne          s2, t3, 2330f
2325:             lui          s1, 472511
                  xor          s0, a0, s6
                  addi         a7, t2, -923
                  sltiu        sp, s8, 1563
2329:             bgeu         a2, a5, 2330f
2330:             sltiu        s5, a3, 1536
                  bgeu         s6, s8, 2335f
                  slli         s10, ra, 4
                  slt          t1, zero, sp
2334:             sltiu        s8, s2, 1637
2335:             andi         tp, a6, 1649
                  sub          a7, s7, s6
                  bge          t6, a5, 2339f
                  nop
2339:             sub          s10, s7, a6
                  sltu         t1, gp, t6
                  bgeu         t6, a6, 2347f
                  xori         t5, t5, 1552
                  srl          tp, s3, a4
                  srli         a6, ra, 5
                  sltiu        t1, s3, -1588
                  ori          t3, t5, -256
2347:             slti         t2, s1, 1301
                  sll          sp, s5, s11
                  andi         s7, a2, 449
                  bltu         s7, sp, 2362f
                  ori          s0, a2, -1671
                  ori          gp, s2, 1638
                  bne          s2, s3, 2367f
                  blt          s3, a4, 2363f
                  ori          t1, s9, 678
                  blt          zero, a1, 2366f
                  bge          a2, t5, 2376f
                  srai         a2, s11, 31
                  sub          tp, s10, s10
                  sra          t5, a2, s8
                  srli         a1, s11, 23
2362:             slt          s8, s6, a7
2363:             srai         tp, a5, 10
                  addi         s11, s9, -484
                  auipc        s2, 249784
2366:             sltu         sp, s11, a1
2367:             slt          s0, s3, s8
                  bgeu         tp, s3, 2386f
                  srai         s2, s8, 9
                  beq          s6, t1, 2387f
                  slt          a5, tp, t6
                  beq          t3, zero, 2391f
                  sra          s10, a4, sp
                  slti         t5, t1, -134
                  andi         a1, s6, -655
2376:             bgeu         a2, a5, 2382f
                  srai         ra, s2, 10
                  and          ra, t1, t6
                  or           s1, s7, s5
                  lui          a5, 977226
                  srli         s3, s3, 13
2382:             slt          t0, a3, t3
                  sll          a7, a3, a4
                  sll          tp, s8, a1
                  xor          a5, a2, t5
2386:             slli         s3, t5, 4
2387:             xori         a1, a2, 1496
                  bne          a3, s7, 2392f
                  slt          a6, a5, t2
                  beq          s10, ra, 2408f
2391:             srl          s5, t3, s6
2392:             bltu         a2, t3, 2407f
                  bne          t0, s2, 2401f
                  auipc        t2, 147075
                  ori          s8, gp, 1881
                  or           s5, s3, a1
                  sub          s0, a6, a0
                  blt          s6, s5, 2417f
                  srai         s10, a6, 10
                  add          tp, a0, s8
2401:             ori          s3, t4, 1550
                  slti         a6, t0, 1083
                  sra          s11, s6, a1
                  sll          s1, zero, s11
                  bgeu         s2, s5, 2412f
                  srli         a6, t3, 2
2407:             slti         t1, t2, 122
2408:             or           s8, s6, tp
                  srai         tp, t6, 10
                  slli         s9, a3, 6
                  lui          t2, 194485
2412:             nop
                  srai         t0, s10, 28
                  or           s10, s6, s4
                  sra          a7, t0, a1
                  auipc        t3, 191973
2417:             sltu         t0, s6, s0
                  ori          gp, a5, -528
                  nop
                  xor          tp, zero, s3
                  and          gp, t4, s7
                  ori          a6, zero, -366
                  xor          a1, s0, s7
                  slt          a0, ra, t0
                  add          s1, gp, a6
                  sub          s3, a5, tp
                  blt          t3, s4, 2431f
                  add          a0, s2, t5
                  andi         a0, s2, -605
                  slti         t5, a3, 1337
2431:             sltiu        s2, a1, 377
                  nop
                  srli         a2, t5, 6
                  beq          s0, ra, 2446f
                  nop
                  slti         a0, t1, -1027
                  srai         t2, a4, 7
                  auipc        s0, 847809
                  ori          s9, s7, -1316
                  nop
                  bne          s11, t6, 2455f
                  bne          t5, zero, 2454f
                  srl          s7, zero, s5
                  srai         a6, s8, 28
                  srli         s10, s0, 25
2446:             slti         a5, s0, -1411
                  sra          s7, s2, t2
                  or           t3, t5, s3
                  bne          s4, t2, 2459f
                  ori          t5, t5, 176
                  slt          s10, s6, s7
                  srli         s9, s9, 22
                  sltu         s9, s3, t1
2454:             and          a7, t5, a4
2455:             bgeu         s3, s10, 2466f
                  xori         zero, s3, -547
                  bne          t6, s6, 2472f
                  sltiu        s11, a2, 497
2459:             slt          t3, a6, s5
                  sra          s2, s0, t4
                  bltu         s4, s10, 2477f
                  auipc        s8, 131346
                  srli         a6, a4, 8
                  xor          s3, a2, gp
                  srai         ra, t0, 3
2466:             addi         gp, a4, 1084
                  bgeu         t0, a4, 2470f
                  slli         a7, a4, 6
                  srai         a7, a5, 2
2470:             srl          sp, s3, t6
                  bne          gp, t5, 2479f
2472:             bgeu         t6, tp, 2478f
                  ori          sp, s11, 365
                  ori          gp, a6, -1841
                  blt          a4, a7, 2490f
                  srl          s6, a7, t4
2477:             andi         ra, ra, 245
2478:             slti         s2, zero, -73
2479:             bltu         tp, s3, 2485f
                  bgeu         s7, s8, 2482f
                  slli         t1, s10, 17
2482:             xor          a1, a1, t5
                  nop
                  blt          a3, s8, 2498f
2485:             or           a2, s9, s0
                  bgeu         t5, s1, 2487f
2487:             ori          a6, t6, -504
                  bgeu         zero, t6, 2504f
                  sub          t3, s10, t0
2490:             beq          ra, a5, 2499f
                  lui          a2, 369811
                  sltu         s7, s0, t5
                  bne          ra, a4, 2494f
2494:             bge          tp, a2, 2496f
                  slli         a4, gp, 17
2496:             bltu         sp, a1, 2500f
                  beq          t0, s10, 2501f
2498:             auipc        a2, 462810
2499:             lui          a6, 217661
2500:             addi         a7, t0, 1973
2501:             ori          s1, t6, -756
                  srli         t0, t4, 23
                  xor          s11, a2, tp
2504:             slli         zero, s6, 10
                  ori          s5, a0, -1391
                  ori          s7, a6, 211
                  addi         s3, t0, -463
                  add          s9, a7, a0
                  addi         t2, s3, 1494
                  sltiu        a4, a3, -357
                  sub          t0, s6, s6
                  bltu         s2, t4, 2521f
                  slti         s7, t1, 231
                  sltu         a7, s9, a0
                  sub          t2, ra, a7
                  slti         s0, t4, -431
                  bltu         s0, s2, 2527f
                  xor          t1, s9, t3
                  sra          s3, s1, ra
                  sll          t6, ra, sp
2521:             bge          s4, s8, 2527f
                  slli         t6, a0, 9
                  srai         sp, a3, 25
                  srli         sp, sp, 22
                  slt          gp, t0, s2
                  sll          s9, ra, t2
2527:             addi         t1, s5, -1802
                  lui          sp, 820731
                  slti         sp, t2, -1359
                  and          s7, s3, t3
                  srai         zero, a2, 25
                  sltiu        s3, s2, 1425
                  sltiu        a7, t4, -1237
                  or           s8, a1, s1
                  lui          s11, 985341
                  add          a4, gp, t6
                  srai         t5, sp, 7
                  bltu         s11, s0, 2549f
                  bne          a5, a7, 2543f
                  bgeu         s2, t5, 2544f
                  slti         a0, s0, -457
                  sub          sp, a5, s0
2543:             auipc        t0, 786090
2544:             bgeu         a4, sp, 2552f
                  blt          a3, t1, 2551f
                  srai         tp, s5, 2
                  srai         s3, t1, 9
                  slti         t2, a7, 111
2549:             ori          a1, s3, -984
                  srli         a2, tp, 23
2551:             andi         a5, t2, -493
2552:             srli         a4, sp, 0
                  and          t1, ra, s8
                  auipc        s3, 289856
                  bne          s7, s1, 2571f
                  or           s8, s2, a2
                  auipc        s11, 704047
                  slti         t6, s9, 1295
                  ori          s5, s2, 1643
                  add          a4, a3, s10
                  srai         t0, t6, 7
                  andi         s8, s9, 1094
                  srl          s9, a4, a0
                  xor          s11, s1, tp
                  slli         t1, zero, 19
                  srai         s1, a6, 26
                  bltu         a5, a0, 2582f
                  bne          s10, s7, 2586f
                  slt          t2, s7, t6
                  sub          a7, t1, s5
2571:             slt          s0, t1, a2
                  beq          a1, a5, 2573f
2573:             beq          gp, s5, 2576f
                  and          t0, sp, t3
                  addi         t0, s3, -889
2576:             srli         t6, t4, 29
                  sltu         a5, t6, gp
                  bgeu         a7, s10, 2593f
                  srai         a2, gp, 30
                  blt          t5, s1, 2586f
                  slti         s10, ra, -256
2582:             sltiu        s9, s5, -506
                  ori          s1, s0, 1902
                  bge          a1, a0, 2603f
                  andi         t5, t3, 1048
2586:             slli         s2, a7, 13
                  ori          s7, t1, -1301
                  sltu         s2, a2, s8
                  add          gp, t6, t6
                  bgeu         s3, s6, 2592f
                  nop
2592:             or           s3, t5, t1
2593:             bgeu         s2, s7, 2605f
                  nop
                  andi         tp, a3, -1384
                  bne          a4, s0, 2610f
                  andi         a6, a4, -152
                  sll          t5, s4, s1
                  srl          a7, a0, ra
                  ori          a1, s9, -178
                  xor          s6, ra, a4
                  nop
2603:             bltu         gp, a2, 2618f
                  sltiu        t6, s8, -1697
2605:             and          tp, s2, a6
                  bge          a2, s6, 2620f
                  ori          s7, s4, 299
                  sra          t5, a5, s8
                  lui          s5, 405829
2610:             slti         t1, a4, -1237
                  slt          a1, t1, sp
                  sll          s11, s6, a2
                  sll          t0, s10, a0
                  andi         s2, t6, -897
                  srai         s1, s5, 17
                  or           tp, a3, a1
                  srl          s3, t3, s0
2618:             lui          s1, 539863
                  sub          s0, s2, t6
2620:             addi         t3, a6, 886
                  and          s0, s5, zero
                  sll          t2, zero, s4
                  addi         s10, t6, -100
                  slti         a5, t5, 2029
                  bgeu         t0, a7, 2627f
                  bne          t3, t2, 2643f
2627:             xor          s1, s8, a7
                  slt          t1, s9, a5
                  lui          a2, 372662
                  sra          gp, t0, s6
                  blt          sp, s5, 2632f
2632:             bne          s3, gp, 2644f
                  slt          a0, tp, a6
                  slti         s3, a1, -1423
                  ori          a2, ra, 953
                  nop
                  auipc        sp, 221369
                  sub          a1, t6, a6
                  slt          a5, s11, t1
                  ori          a1, a1, -745
                  slt          t0, t5, sp
                  xori         t2, a3, -521
2643:             lui          t6, 342773
2644:             ori          s11, a3, 1719
                  xor          sp, t4, s3
                  slti         s9, s9, 688
                  sub          gp, s4, s6
                  bgeu         s8, ra, 2656f
                  slli         t2, s5, 28
                  lui          a1, 42763
                  sltiu        zero, a6, -1857
                  bge          ra, sp, 2668f
                  blt          a0, s1, 2672f
                  slti         t0, t6, -1701
                  ori          tp, t6, -1878
2656:             bne          s5, t3, 2663f
                  add          gp, s4, s11
                  andi         t0, s9, -1857
                  sll          t6, a3, t3
                  srai         s10, s0, 2
                  auipc        s9, 347783
                  nop
2663:             srli         t3, a0, 5
                  xori         a0, s1, -62
                  auipc        s7, 752060
                  xori         s7, s11, 1124
                  sll          s5, gp, s6
2668:             bltu         s2, a7, 2669f
2669:             blt          tp, tp, 2686f
                  add          t1, a1, t4
                  or           t3, a3, a1
2672:             bne          s5, a3, 2688f
                  bne          t2, s4, 2688f
                  andi         s1, a2, 1984
                  and          zero, a5, s6
                  srai         t1, tp, 10
                  la           sp, region_0+747 #start riscv_load_store_rand_instr_stream_26
                  xori         t2, t0, -1212
                  lb           t2, 4(sp)
                  lh           tp, 43(sp)
                  sltiu        a6, s0, -753
                  lbu          s3, -56(sp)
                  lh           tp, 57(sp)
                  sb           t3, 15(sp)
                  auipc        zero, 317423
                  lui          a6, 117793
                  auipc        s5, 313361
                  sb           a0, -39(sp)
                  ori          t2, a7, 283
                  sub          a4, tp, s9
                  lb           a6, 34(sp)
                  sb           gp, -8(sp)
                  lb           ra, -41(sp)
                  sltiu        ra, a0, -198
                  sb           tp, 42(sp)
                  sll          zero, t3, s4
                  nop
                  sltu         s0, s7, s3
                  lbu          s7, 35(sp)
                  lb           s10, -60(sp)
                  lhu          s2, 17(sp)
                  srai         s7, s5, 27
                  sh           tp, 19(sp)
                  lh           gp, 15(sp)
                  lb           s3, -60(sp)
                  or           s8, sp, a7
                  lbu          a7, -10(sp)
                  lui          s6, 363528
                  lb           t6, -64(sp)
                  lb           s7, 39(sp)
                  lb           s8, -46(sp)
                  slli         t5, s10, 17
                  or           s6, a5, t0
                  srai         tp, s8, 4
                  srl          gp, a7, a0
                  lb           gp, 19(sp)
                  sub          s8, a5, a5
                  sb           a5, 39(sp)
                  sb           sp, -46(sp)
                  sltiu        a7, s9, 271
                  lbu          a4, -8(sp)
                  sw           t4, 29(sp)
                  lui          s7, 188961
                  and          t1, t1, a5
                  ori          s5, a4, -2029
                  lh           a0, 33(sp)
                  xor          s6, t1, zero
                  lbu          zero, -23(sp)
                  sb           a6, 60(sp)
                  sb           a1, -6(sp) #end riscv_load_store_rand_instr_stream_26
                  slt          a0, a0, s0
                  lui          ra, 527979
                  srl          sp, a0, sp
                  sltiu        s9, s10, 601
                  bltu         gp, sp, 2684f
                  xor          ra, s5, a1
                  srl          tp, sp, s9
2684:             bgeu         a7, t4, 2688f
                  srli         a0, s11, 27
2686:             add          s6, s0, s5
                  bne          t6, a7, 2689f
2688:             auipc        ra, 437874
2689:             bltu         s2, s2, 2695f
                  bge          t1, a1, 2701f
                  slti         a2, s1, 1281
                  bgeu         zero, s1, 2698f
                  srai         a6, a2, 31
                  sub          a6, t3, zero
2695:             addi         a6, a3, 1568
                  xori         s10, t4, 2020
                  xor          t3, t4, ra
2698:             sll          s8, ra, s10
                  and          s2, a7, a1
                  lui          zero, 452967
2701:             andi         s5, s8, -1766
                  or           s5, s3, a7
                  blt          t2, s1, 2711f
                  sltiu        t0, t1, 1613
                  bne          s6, tp, 2724f
                  sltu         a5, t2, s11
                  srli         a4, a1, 10
                  srl          s0, t6, s5
                  xor          sp, t0, s9
                  beq          sp, t6, 2717f
2711:             slli         s11, a4, 20
                  sub          a0, a0, t1
                  srl          t3, a0, t0
                  sub          s7, s7, a5
                  beq          s3, s2, 2727f
                  bge          t3, ra, 2725f
2717:             and          s7, a7, s11
                  sltiu        a0, t3, 1946
                  nop
                  bltu         s2, a3, 2736f
                  xori         s3, zero, 909
                  sltiu        a0, a5, -156
                  nop
2724:             andi         ra, s4, -1151
2725:             nop
                  srli         s2, t3, 13
2727:             slli         t3, s4, 17
                  xor          s6, ra, s7
                  xori         t0, t4, 59
                  sub          a6, s10, s11
                  bne          a7, s3, 2749f
                  lui          t5, 155434
                  sub          zero, t4, t6
                  and          s0, t0, s2
                  and          a2, a5, s1
2736:             sll          s7, sp, s3
                  lui          s11, 760382
                  bgeu         t0, s3, 2746f
                  slt          s3, a1, a7
                  xor          a6, s3, sp
                  slli         t5, a5, 9
                  add          a7, a5, s4
                  blt          a6, a2, 2747f
                  auipc        t6, 988847
                  slli         s5, s2, 10
2746:             srai         a4, a1, 19
2747:             bne          a4, a3, 2749f
                  srai         a6, t6, 16
2749:             sub          t6, a3, zero
                  sltu         s9, a3, a1
                  bge          t0, a5, 2765f
                  la           sp, region_0+561 #start riscv_load_store_rand_instr_stream_15
                  or           s9, t5, s6
                  sb           s11, 1(sp)
                  slt          s3, t4, s0
                  srai         a0, s6, 8
                  nop
                  or           a5, gp, s10
                  sb           s11, -8(sp)
                  slt          s0, s2, t6
                  lbu          t3, 4(sp)
                  srl          zero, gp, t2
                  xor          a0, t1, s0
                  addi         t3, s6, -1246
                  nop
                  sltu         a2, s5, ra
                  auipc        t2, 597846
                  lui          s0, 370577
                  lh           tp, 7(sp)
                  sb           s9, -16(sp)
                  sb           t3, -6(sp)
                  lbu          t1, -4(sp)
                  lhu          tp, 5(sp)
                  add          t6, zero, a2
                  andi         s2, a2, -1663
                  nop
                  slt          ra, t2, a4
                  lbu          t1, 8(sp)
                  lbu          zero, 0(sp)
                  lh           a1, 13(sp)
                  lbu          s10, -3(sp)
                  sb           t2, 9(sp)
                  auipc        s1, 645932
                  lb           s1, -15(sp)
                  xori         t1, a2, 600
                  slli         t5, s1, 4
                  slli         a7, a6, 27
                  srli         t3, s11, 26
                  srli         a7, t2, 7
                  sltu         a2, t5, zero
                  slt          s8, a4, s9
                  slli         s1, t1, 25
                  lb           s6, 8(sp)
                  lbu          s0, 4(sp)
                  lh           s10, 15(sp)
                  andi         t0, zero, 330
                  lb           s0, -8(sp)
                  slti         s9, s10, -796
                  add          s11, zero, s9
                  lbu          a7, -10(sp) #end riscv_load_store_rand_instr_stream_15
                  auipc        gp, 579047
                  bge          t4, tp, 2768f
                  add          t6, t5, s10
                  sltiu        s9, s6, -15
                  srai         s10, t2, 13
                  slti         a0, sp, 1595
                  sltiu        a4, a2, 394
                  sll          t1, s7, gp
                  srl          s10, t0, t4
                  addi         zero, sp, -472
                  ori          s2, s10, -219
                  addi         t2, a3, -749
                  addi         a1, t0, 1558
2765:             slti         a2, t0, 363
                  sub          zero, s2, ra
                  bgeu         s10, s8, 2786f
2768:             slt          a4, t5, s0
                  andi         s8, t6, 307
                  ori          t1, t2, 1031
                  auipc        s8, 886199
                  andi         sp, s2, -2026
                  and          zero, a1, a5
                  sll          t2, a1, a3
                  sll          s10, zero, a7
                  ori          a4, s6, 887
                  sltu         gp, s10, s6
                  addi         s3, t5, 1520
                  sll          a4, t3, gp
                  sll          t3, zero, s6
                  sltiu        t6, a7, -1401
                  auipc        s9, 411322
                  bge          t2, t6, 2793f
                  and          a7, a3, s0
                  slli         a7, s0, 25
2786:             sll          gp, t0, s4
                  sub          s7, t2, t2
                  slli         ra, t2, 25
                  srai         s10, t0, 21
                  srli         t1, s9, 22
                  srai         sp, s0, 25
                  ori          s1, sp, 312
2793:             srli         a5, s11, 19
                  srai         s10, ra, 21
                  srli         s9, t3, 30
                  srai         t0, a5, 4
                  beq          sp, a2, 2803f
                  lui          a7, 168173
                  sll          s8, s0, s4
                  sll          s9, s3, s6
                  or           t3, s10, s10
                  sll          s2, s0, t6
2803:             ori          sp, a0, 1752
                  andi         s5, s7, -257
                  auipc        gp, 38566
                  addi         s5, sp, -1196
                  beq          s8, sp, 2811f
                  bne          a7, sp, 2820f
                  nop
                  sub          t0, a2, s11
2811:             sltu         s11, s1, gp
                  bgeu         s10, s3, 2827f
                  srli         a1, s5, 9
                  auipc        a0, 896699
                  andi         a2, t2, 1918
                  srai         s8, gp, 8
                  sll          tp, zero, a2
                  addi         ra, a0, 1409
                  sub          a7, s11, ra
2820:             xori         ra, t6, -1446
                  srai         tp, a1, 23
                  addi         a4, s1, -1076
                  sll          a6, s6, a6
                  slti         zero, sp, 1810
                  srli         s3, a3, 30
                  add          a5, sp, ra
2827:             auipc        a0, 556759
                  addi         a5, t0, 784
                  auipc        t0, 981644
                  ori          a5, t6, 393
                  srl          a2, t1, a6
                  addi         s8, s5, 1285
                  srl          a4, t3, s6
                  sltu         s6, t2, s5
                  beq          s2, t5, 2836f
2836:             ori          a4, tp, 583
                  srai         sp, s1, 16
                  slt          s6, s6, a7
                  srai         s11, t0, 13
                  srai         t5, s6, 30
                  bgeu         t1, sp, 2855f
                  srl          s11, zero, zero
                  srl          t6, s2, s0
                  bge          zero, s9, 2862f
                  sra          t3, s1, s11
                  lui          tp, 848805
                  srai         s11, a3, 26
                  xori         a0, t3, -1776
                  lui          t1, 509221
                  and          zero, t5, a3
                  slti         s11, s8, 806
                  srai         a6, s8, 24
                  andi         a4, s6, -65
                  sra          s7, t1, t1
2855:             xori         gp, t0, 24
                  lui          a6, 689433
                  and          s6, s7, t2
                  nop
                  slt          t0, s3, t5
                  sra          s7, ra, t2
                  la           a1, region_0+1501 #start riscv_load_store_rand_instr_stream_2
                  sb           a5, -10(a1)
                  lbu          t5, -50(a1)
                  lh           s9, 15(a1)
                  lbu          t5, 59(a1)
                  sb           s2, 24(a1)
                  sra          sp, a6, s0
                  sh           s7, 29(a1)
                  lbu          s6, -2(a1)
                  lui          a5, 957576
                  xori         s9, a4, 1312
                  lbu          a5, -30(a1)
                  srl          a7, gp, s2
                  lbu          s10, 15(a1)
                  lb           t2, 45(a1)
                  sb           s6, 30(a1)
                  lhu          s9, -13(a1)
                  sb           s5, -58(a1)
                  slti         t3, s11, 912
                  srl          s6, t0, t0
                  lh           t1, -1(a1)
                  lb           a4, -12(a1)
                  lw           t1, 59(a1)
                  sub          a6, s0, t1
                  nop
                  lhu          a5, 17(a1)
                  slti         s8, t1, 1017
                  slt          s5, gp, s0
                  andi         a4, a3, 316
                  xor          s5, tp, a6
                  or           a2, s2, s8
                  lbu          zero, 63(a1)
                  sltu         zero, t2, gp
                  andi         s8, sp, 1462
                  slt          s6, s1, s0
                  auipc        s9, 362228
                  srli         gp, a1, 7
                  sh           t0, 3(a1)
                  lhu          a4, -13(a1)
                  srli         tp, s5, 22
                  lb           s8, 18(a1)
                  srl          a7, a5, s11
                  lbu          s5, 45(a1)
                  srl          s3, s3, s6
                  lh           t3, 27(a1)
                  ori          gp, s8, -1727
                  auipc        a5, 798728
                  sb           s0, -16(a1) #end riscv_load_store_rand_instr_stream_2
                  slli         a6, a6, 7
2862:             bne          t3, a7, 2879f
                  and          tp, t3, a3
                  nop
                  slt          s5, a2, a7
                  beq          a3, a5, 2882f
                  sll          s2, ra, sp
                  bge          t1, t4, 2874f
                  or           s6, ra, a5
                  slt          s10, t2, a6
                  sltiu        s1, a1, 243
                  sltiu        a1, s8, -1919
                  nop
2874:             sltiu        s5, s1, -1178
                  xor          t0, s10, a2
                  sltu         t3, gp, a6
                  add          a6, s9, gp
                  lui          zero, 689623
2879:             bge          t5, a0, 2894f
                  srai         gp, a2, 11
                  sltu         t1, t5, a5
2882:             auipc        gp, 367362
                  sll          t6, a1, ra
                  addi         s8, a6, -915
                  sll          s11, a6, s11
                  sltiu        a0, s0, 292
                  and          tp, s7, s9
                  addi         a0, t3, 96
                  add          s3, a2, a7
                  or           s3, a0, t5
                  slt          s8, s3, s9
                  blt          s0, t3, 2901f
                  addi         t5, tp, 68
2894:             srl          a5, sp, s0
                  andi         s8, s3, 1040
                  slli         a0, t1, 30
                  bltu         s6, s7, 2916f
                  sltiu        gp, s6, -65
                  addi         t2, t1, -804
                  or           s3, zero, t6
2901:             slli         a6, a3, 9
                  auipc        a2, 689799
                  sub          t2, tp, t1
                  bge          t0, s9, 2911f
                  sra          s6, a7, s4
                  nop
                  addi         s10, a3, 1539
                  blt          zero, a0, 2922f
                  xori         s11, s0, 1478
                  lui          s3, 850822
2911:             beq          s8, a7, 2923f
                  xor          t1, ra, s3
                  addi         s11, t1, 1931
                  blt          a6, s11, 2925f
                  sub          t3, s5, s9
2916:             xor          s0, a1, sp
                  xori         a5, gp, 678
                  sll          a1, a1, zero
                  or           s6, a6, ra
                  bne          a0, t5, 2928f
                  srl          ra, s9, s10
2922:             sltu         s8, sp, s6
2923:             xor          t5, s0, s7
                  and          gp, a7, t1
2925:             srl          s6, s10, t1
                  sra          a7, s1, ra
                  andi         s7, gp, 737
2928:             slt          s1, a3, s1
                  and          s10, s10, tp
                  slli         s7, s10, 19
                  bgeu         gp, s9, 2947f
                  lui          gp, 1001691
                  srli         s9, s2, 16
                  sra          s2, s11, s6
                  sltu         s11, t5, tp
                  lui          t1, 181139
                  bltu         a0, a1, 2956f
                  xor          s8, a4, s9
                  nop
                  srl          a0, s3, gp
                  slt          a6, s2, a0
                  andi         s8, s2, -2045
                  xor          sp, s11, a0
                  nop
                  bne          s4, t3, 2951f
                  lui          sp, 637369
2947:             sltiu        zero, sp, -174
                  slt          a1, a3, a7
                  and          a2, a3, sp
                  add          gp, s1, s6
2951:             blt          sp, a5, 2966f
                  blt          s0, s2, 2954f
                  xor          s10, t0, t4
2954:             sra          t1, a3, s2
                  sltu         a5, t5, s6
2956:             andi         a2, s8, 1646
                  xori         a7, a2, -978
                  and          a4, ra, tp
                  bgeu         s10, a2, 2969f
                  beq          s8, s4, 2964f
                  andi         s0, a6, -1867
                  ori          a6, a0, -1433
                  xor          t2, ra, tp
2964:             bgeu         a0, s11, 2967f
                  slti         s5, gp, 1990
2966:             bne          s10, t3, 2980f
2967:             sltu         a0, a5, s4
                  xori         a2, t1, -257
2969:             srli         s0, s0, 16
                  sub          t0, s5, a7
                  bgeu         gp, s11, 2983f
                  srl          t3, s3, s3
                  la           sp, region_1+486 #start riscv_load_store_rand_instr_stream_20
                  sh           s7, -64(sp)
                  lbu          s6, 60(sp)
                  lbu          t2, -58(sp)
                  lbu          t1, -7(sp)
                  sra          a1, s3, t5
                  lbu          gp, -31(sp)
                  ori          s2, s11, 1149
                  sra          s2, a3, s6
                  andi         s2, s8, -1555
                  sb           t6, -25(sp)
                  lb           a6, 11(sp)
                  lhu          s7, 32(sp)
                  add          ra, t6, a4
                  lbu          t0, -22(sp)
                  sh           t3, -58(sp)
                  xori         s7, zero, 1900
                  lb           a0, 2(sp)
                  slli         s5, a7, 30
                  sra          a4, zero, s10
                  nop
                  sltiu        s7, s6, -672
                  srl          s2, t0, gp
                  lb           s9, -7(sp)
                  lb           s6, -19(sp)
                  lb           gp, 9(sp)
                  srl          s1, sp, s0
                  andi         s10, s8, -1959
                  xor          s0, s8, s2
                  lb           s11, 15(sp)
                  nop
                  or           s1, a0, a3
                  xor          a5, a7, s5
                  lbu          a2, -4(sp)
                  sb           s7, -25(sp)
                  sb           s4, -43(sp)
                  lbu          t3, 1(sp)
                  sb           sp, -12(sp)
                  lb           t5, 35(sp)
                  lhu          a6, 34(sp)
                  xori         a6, t5, -1620
                  sb           zero, -52(sp) #end riscv_load_store_rand_instr_stream_20
                  sra          t2, a1, s5
                  sltu         ra, sp, a1
                  srl          zero, t3, a0
                  slli         t3, s11, 2
                  sub          s2, a4, s11
                  srli         a0, ra, 7
                  blt          s4, t1, 2994f
2980:             andi         ra, s2, 516
                  beq          a1, t6, 2982f
2982:             sra          a2, s4, s3
2983:             lui          a6, 374546
                  xori         a5, s10, -1201
                  sltu         s10, gp, s0
                  andi         zero, a3, 1807
                  slt          s10, s9, s5
                  sll          s11, a7, s5
                  sll          s3, sp, s5
                  xori         a2, s5, 1991
                  bgeu         s0, s8, 2997f
                  slti         t3, s3, 830
                  andi         t5, s3, 1410
2994:             bne          zero, tp, 2996f
                  beq          tp, sp, 3003f
2996:             add          t2, a7, t0
2997:             sltu         t5, s10, s4
                  lui          a5, 272911
                  auipc        t6, 52663
                  slli         a1, t5, 29
                  lui          t6, 30288
                  bne          gp, t1, 3006f
3003:             andi         a1, s7, 443
                  andi         s3, s5, 1012
                  slt          t6, t4, ra
3006:             auipc        s3, 660226
                  slli         s7, s9, 1
                  add          s1, a6, s11
                  xor          gp, t3, t0
                  xori         a0, s10, -1353
                  srl          t0, s3, t0
                  sub          t3, t4, t4
                  andi         a1, s4, 815
                  sll          a7, a4, s7
                  xori         s3, tp, -938
                  andi         tp, a4, -14
                  sra          s5, t1, s8
                  beq          tp, a2, 3019f
3019:             lui          a2, 439887
                  and          s3, s5, t6
                  slli         t6, s1, 9
                  ori          zero, s8, 1034
                  blt          s0, gp, 3027f
                  beq          s2, tp, 3026f
                  andi         t1, s7, 1378
3026:             add          s3, a1, s10
3027:             bltu         s0, gp, 3042f
                  and          sp, t0, t4
                  bgeu         s11, sp, 3037f
                  add          s8, a6, s3
                  xori         s3, t0, -53
                  xori         a2, sp, 165
                  sll          a5, s10, t0
                  lui          s11, 256887
                  ori          ra, s11, 2032
                  andi         s6, t3, 105
3037:             bge          s10, a1, 3052f
                  beq          s8, s1, 3049f
                  xor          a2, zero, t4
                  auipc        tp, 239472
                  add          s1, t1, s1
3042:             sltu         tp, s3, s5
                  sub          s10, s10, t4
                  slli         a4, t6, 17
                  xor          a7, t5, t5
                  bne          s0, t1, 3065f
                  auipc        a1, 197700
                  blt          a2, s4, 3057f
3049:             slt          s6, a4, a2
                  srai         a4, a1, 16
                  bltu         s8, s1, 3057f
3052:             srai         a6, t2, 31
                  or           a0, t1, t5
                  xori         t2, a1, 471
                  sltu         gp, s5, zero
                  ori          s7, s7, 1453
3057:             and          t3, a7, sp
                  slli         ra, s11, 15
                  srl          a5, a1, t0
                  auipc        t5, 864473
                  sub          s5, a3, t5
                  bge          ra, t2, 3078f
                  nop
                  bne          s9, s11, 3080f
3065:             sltu         zero, s7, s9
                  srai         s7, s9, 14
                  sltiu        sp, s8, 2011
                  sub          a0, a3, a5
                  and          s9, t4, a6
                  bne          s11, a1, 3071f
3071:             srai         s2, s6, 27
                  sra          s2, s2, s2
                  addi         t2, s2, 1667
                  xori         a1, s8, 1268
                  sll          a2, ra, t0
                  auipc        a1, 737416
                  and          t2, s6, s3
3078:             sra          t2, s9, s6
                  slti         s5, t6, 299
3080:             xor          zero, zero, s9
                  la           s2, region_1+1774 #start riscv_load_store_rand_instr_stream_4
                  sll          s9, a7, t4
                  sra          a7, s3, t6
                  sb           a7, -3(s2)
                  lhu          zero, -8(s2)
                  sb           s3, 13(s2)
                  sw           s6, -2(s2)
                  xor          a4, a0, s3
                  srli         a6, a0, 28
                  xori         a6, t5, 1385
                  srli         t1, s5, 24
                  auipc        s6, 894654
                  slt          a5, s1, s6
                  lb           t3, 7(s2)
                  sw           s7, -10(s2)
                  sll          s9, tp, a0
                  sw           t5, 2(s2)
                  lbu          a4, 10(s2)
                  lhu          t2, 4(s2)
                  andi         a2, a2, -1567
                  lbu          a1, -7(s2)
                  lb           a7, 9(s2)
                  lh           t3, -2(s2)
                  sb           a2, -16(s2)
                  sb           a7, -8(s2)
                  lbu          t1, -12(s2)
                  lhu          a7, 12(s2)
                  lh           zero, 0(s2)
                  lb           s8, -10(s2)
                  lh           zero, 6(s2)
                  lhu          ra, -4(s2)
                  lbu          t3, -16(s2) #end riscv_load_store_rand_instr_stream_4
                  sra          a6, a3, zero
                  bne          s6, t2, 3090f
                  sltiu        a6, s8, 1189
                  bge          t5, t3, 3088f
                  bne          s1, zero, 3100f
                  sltu         tp, a3, a6
                  bne          a0, s7, 3099f
3088:             beq          s11, gp, 3094f
                  srli         t3, a3, 17
3090:             and          s0, s8, s8
                  xori         t6, t2, -1900
                  srl          t3, a4, s0
                  sltu         tp, a3, s9
3094:             slti         s11, s6, -531
                  add          s3, t3, t5
                  and          t6, s8, a1
                  blt          s3, a4, 3115f
                  sub          s9, a6, a0
3099:             andi         ra, t5, -885
3100:             sltiu        s7, t0, 1441
                  slt          a5, s7, s7
                  sltu         t2, s8, a2
                  addi         s10, s1, -1732
                  andi         t3, t3, 1607
                  srl          a1, s3, t1
                  auipc        s7, 1043059
                  auipc        sp, 191044
                  sltiu        s8, s7, -348
                  sltu         ra, a0, t1
                  srai         zero, s6, 9
                  beq          s0, s9, 3113f
                  bge          s0, a1, 3115f
3113:             nop
                  blt          a1, s6, 3124f
3115:             bge          t6, a5, 3129f
                  sltiu        t2, t6, -301
                  and          t5, a2, s7
                  nop
                  srai         s3, s3, 23
                  andi         s6, s1, -776
                  auipc        s2, 1009685
                  slli         t1, t1, 18
                  slli         s2, s0, 7
3124:             addi         tp, s7, -620
                  slt          s1, sp, s9
                  sll          a2, t0, s1
                  slti         a1, s7, -97
                  bne          s7, s5, 3145f
3129:             slti         t3, s0, -1391
                  sll          t6, a4, s9
                  srli         a7, a3, 5
                  sub          t6, a2, tp
                  sltu         ra, s6, t5
                  srai         a6, t3, 29
                  beq          s11, s10, 3147f
                  xori         s3, a0, -601
                  srli         t0, s4, 3
                  slt          s2, ra, tp
                  sll          t3, a0, a6
                  bne          a2, s2, 3154f
                  lui          zero, 77941
                  srli         s2, a0, 8
                  blt          s11, s1, 3144f
3144:             slti         a5, s8, 1838
3145:             add          a0, t2, s1
                  slti         t3, s6, 1336
3147:             add          zero, s0, a6
                  or           t0, zero, t6
                  addi         t6, sp, 106
                  bltu         sp, s3, 3154f
                  lui          sp, 574848
                  slli         s11, t4, 18
                  and          s11, s9, s3
3154:             and          tp, ra, a0
                  slt          t2, a0, a2
                  sub          s11, a6, s8
                  sll          s7, t3, gp
                  srli         t2, s8, 31
                  addi         a0, t4, 765
                  sltu         t1, s5, t5
                  srli         a2, a5, 29
                  slt          s10, t2, s1
                  sra          t0, s10, s5
                  bge          t2, tp, 3168f
                  blt          s10, sp, 3172f
                  srai         s2, t4, 16
                  bge          s8, a6, 3186f
3168:             beq          t1, s6, 3174f
                  srl          sp, t6, ra
                  sll          s0, s5, t4
                  bltu         a7, sp, 3178f
3172:             sub          s1, s9, t5
                  sub          t5, s6, s0
3174:             lui          t5, 714443
                  addi         tp, a6, 1786
                  auipc        a6, 821876
                  xor          s3, t0, a0
3178:             srai         s1, s3, 6
                  slli         tp, s1, 23
                  srai         t6, sp, 13
                  bge          s0, gp, 3192f
                  lui          a1, 117672
                  and          a6, t1, t4
                  add          s2, a1, a1
                  xor          a7, s2, s4
3186:             srl          a1, t5, gp
                  beq          s9, tp, 3190f
                  sll          ra, s1, a1
                  addi         a2, s3, -1476
3190:             slti         s8, s11, -1519
                  or           s8, t6, s11
3192:             nop
                  beq          s3, a7, 3209f
                  bge          a2, sp, 3209f
                  xor          s10, a3, a4
                  and          a5, s5, s8
                  lui          a0, 46661
                  beq          s4, s10, 3204f
                  slti         t1, t1, -1685
                  sltiu        s0, a1, -1493
                  auipc        s11, 315504
                  sll          a7, a6, t4
                  srai         s0, t2, 12
3204:             or           t3, s8, t2
                  sra          s0, t3, s7
                  bltu         s8, s5, 3208f
                  add          a4, s8, s5
3208:             srli         s11, a4, 16
3209:             srl          a1, a1, s5
                  sub          s7, a5, s10
                  srli         t0, a3, 25
                  and          s6, s11, t6
                  or           a4, t0, a4
                  slli         s6, t5, 10
                  lui          s1, 265394
                  srl          s0, zero, s2
                  and          s5, ra, s4
                  bge          ra, ra, 3232f
                  add          s11, zero, t2
                  bne          s3, a0, 3224f
                  slt          t0, s6, a1
                  or           t3, t1, a6
                  nop
3224:             sltu         s3, a5, t2
                  slt          s2, s7, a5
                  bne          a2, t5, 3245f
                  sll          t3, s6, s1
                  slti         tp, a6, 1647
                  nop
                  addi         s11, s8, -1213
                  auipc        s2, 545290
3232:             slli         t2, a1, 22
                  sltiu        s9, t0, 1861
                  lui          a7, 928607
                  beq          s10, s6, 3236f
3236:             bltu         a3, a6, 3246f
                  sltu         s1, s9, zero
                  sra          ra, a5, a1
                  nop
                  bltu         t1, a3, 3246f
                  ori          s6, a3, -1684
                  bge          s9, a6, 3254f
                  beq          sp, gp, 3249f
                  nop
3245:             sltiu        t6, s2, -254
3246:             xor          gp, zero, a2
                  add          ra, a7, s6
                  xor          s2, s6, s8
3249:             and          t2, gp, t1
                  bltu         s3, a6, 3264f
                  srl          s0, s4, t2
                  bgeu         ra, s3, 3271f
                  slt          t6, a5, s5
3254:             andi         a6, sp, 1495
                  xor          t0, s2, s11
                  xori         s3, a2, -606
                  bne          t3, a0, 3275f
                  xori         tp, a7, -814
                  bge          zero, a5, 3260f
3260:             sll          a0, gp, a5
                  ori          a0, s7, 1505
                  add          a1, t1, t0
                  andi         t0, s9, -850
3264:             bltu         zero, s11, 3273f
                  srai         t0, s6, 21
                  sltu         a6, a1, t4
                  ori          gp, t2, -8
                  bge          s2, tp, 3280f
                  nop
                  add          t6, a5, a4
3271:             slti         s9, tp, -1495
                  xori         t3, sp, -1508
3273:             sra          s8, s0, s9
                  and          a5, t0, t6
3275:             bge          zero, a0, 3279f
                  bne          t0, s6, 3293f
                  xori         s8, s5, -596
                  sra          zero, zero, a2
3279:             and          tp, s9, s1
3280:             xori         t1, gp, -1227
                  sltiu        gp, s4, 233
                  blt          ra, t4, 3290f
                  nop
                  srai         a1, s11, 17
                  bge          s5, t4, 3300f
                  xori         s6, t4, 1348
                  srli         a2, sp, 12
                  slti         a1, a7, 846
                  sltiu        a6, a4, -825
3290:             blt          s8, t6, 3294f
                  bne          s11, tp, 3306f
                  xor          sp, a5, sp
3293:             andi         t3, a7, 25
3294:             sll          t0, a5, s3
                  xori         tp, a4, -1337
                  bne          t3, tp, 3312f
                  lui          a0, 253684
                  xor          s5, tp, a2
                  auipc        t5, 412373
3300:             and          t6, a0, s5
                  slli         s7, t1, 7
                  blt          a3, s5, 3310f
                  and          a7, t6, a1
                  blt          s11, s7, 3306f
                  andi         a1, t0, 2019
3306:             xor          ra, a4, s7
                  slli         a2, ra, 4
                  srli         s5, a5, 5
                  sltiu        a0, gp, -1095
3310:             blt          s3, s7, 3327f
                  blt          s4, a1, 3330f
3312:             or           s10, s8, s11
                  srli         s1, ra, 11
                  sltiu        a0, a4, 1099
                  sltiu        a1, a0, -956
                  sltiu        t5, s1, -171
                  bne          a1, s9, 3336f
                  blt          t1, zero, 3320f
                  add          t2, a0, s1
3320:             bge          s9, t4, 3335f
                  slti         sp, t3, 343
                  xori         s8, s8, 1036
                  slli         t2, a5, 28
                  addi         t2, a3, -854
                  bgeu         a7, a6, 3335f
                  add          sp, a5, s6
3327:             bgeu         ra, t1, 3331f
                  andi         s7, zero, 1349
                  slt          a1, gp, t6
3330:             slti         a1, a0, -1696
3331:             sltu         a7, s8, a3
                  or           a7, gp, ra
                  sra          sp, a5, s1
                  bltu         t5, s11, 3337f
3335:             add          a5, a5, s1
3336:             slt          a7, gp, gp
3337:             bge          s10, t6, 3345f
                  xori         s5, sp, 942
                  bge          s8, tp, 3343f
                  auipc        t6, 300189
                  slli         a7, s9, 16
                  ori          s6, sp, 1288
3343:             addi         t3, t3, -1109
                  andi         s2, a5, 1744
3345:             and          t2, t0, t0
                  slti         t2, tp, -128
                  ori          s7, a3, 914
                  blt          s7, s0, 3354f
                  bgeu         tp, t6, 3355f
                  ori          a0, a3, -1445
                  srai         t0, tp, 29
                  sub          tp, gp, s8
                  auipc        a7, 190874
3354:             sub          sp, t2, sp
3355:             blt          s5, sp, 3356f
3356:             add          a6, a1, zero
                  beq          t4, t3, 3373f
                  bne          sp, s6, 3374f
                  add          s6, s5, t6
                  bne          s0, t0, 3367f
                  blt          a3, a2, 3363f
                  slt          s11, ra, s10
3363:             bgeu         t2, s1, 3372f
                  xori         t1, a5, -1021
                  ori          t0, a1, -1273
                  xor          a5, s10, t3
3367:             slt          tp, zero, gp
                  bne          s3, s4, 3374f
                  srl          s0, a3, s2
                  auipc        t2, 42974
                  srli         t1, a3, 15
3372:             srai         t0, t5, 9
3373:             blt          s4, a0, 3381f
3374:             slti         ra, a7, 1758
                  sll          a4, gp, t4
                  bltu         s9, a3, 3391f
                  slli         gp, tp, 21
                  slt          t0, s11, t6
                  srl          a7, s0, s2
                  sra          ra, s9, gp
3381:             andi         s10, t1, 864
                  nop
                  bge          t6, t5, 3397f
                  srai         gp, ra, 0
                  srl          a5, a2, s11
                  or           s3, s4, s3
                  add          a0, s7, a4
                  nop
                  sltu         a0, s2, s11
                  xor          a4, ra, tp
3391:             slli         a6, s11, 20
                  and          tp, a2, t3
                  auipc        a0, 785033
                  addi         s9, t2, -1721
                  bge          s5, t0, 3399f
                  bge          a4, s5, 3410f
3397:             xor          t2, gp, zero
                  slti         t3, sp, 1297
                  la           sp, region_1+1139 #start riscv_load_store_rand_instr_stream_13
                  srli         s0, s3, 31
                  addi         zero, tp, -1506
                  sll          a0, tp, a7
                  sh           s6, 519(sp)
                  slli         ra, s8, 22
                  sb           t6, -638(sp)
                  sb           s3, -220(sp)
                  sb           s10, -223(sp)
                  sb           s10, -18(sp)
                  lb           s10, -254(sp)
                  lbu          s10, 838(sp)
                  lbu          gp, -149(sp)
                  lbu          t6, -229(sp)
                  sh           gp, 455(sp)
                  and          gp, t3, a6
                  sltu         s5, s11, s9
                  sb           zero, -130(sp)
                  lhu          a4, -549(sp)
                  slli         a1, t1, 17
                  ori          s6, s11, 248
                  slli         s9, t6, 8
                  lbu          t3, 49(sp)
                  sh           s5, -345(sp)
                  slti         tp, s6, 980
                  auipc        t5, 360282
                  slli         zero, gp, 2
                  srl          s11, s0, t0
                  slti         ra, ra, -1550
                  slti         a6, t1, 1363
                  sb           s3, 789(sp)
                  add          a4, s9, s5
                  or           a2, s5, t4
                  or           t1, t0, a0
                  srli         a2, a3, 22
                  lb           a6, -112(sp)
                  sub          s10, a3, t1
                  xori         s0, a3, -146
                  and          ra, ra, gp
                  xor          s6, a1, ra
                  sra          s11, s8, a5
                  lbu          s5, -104(sp) #end riscv_load_store_rand_instr_stream_13
3399:             auipc        t5, 712569
                  slli         a5, a3, 18
                  or           a0, s0, a7
                  slt          a2, a2, s3
                  sll          gp, t4, s11
                  ori          s0, ra, 1419
                  bge          t3, s11, 3416f
                  bne          s9, a1, 3424f
                  bgeu         sp, a6, 3422f
                  srl          a4, t6, gp
                  auipc        s2, 394926
3410:             bgeu         s2, s9, 3411f
3411:             slti         a2, a1, 83
                  beq          a7, a7, 3424f
                  auipc        t5, 794243
                  srli         s0, t1, 4
                  lui          s6, 412533
3416:             auipc        a2, 326357
                  sra          t5, s10, s5
                  blt          sp, t5, 3430f
                  beq          s6, t4, 3425f
                  bge          a6, sp, 3436f
                  and          t2, s6, t0
3422:             addi         ra, t0, -580
                  bgeu         ra, s4, 3438f
3424:             add          s1, t0, s4
3425:             nop
                  ori          a4, t4, -1353
                  sltiu        gp, a2, 1049
                  slli         t0, a4, 2
                  bltu         a3, s9, 3444f
3430:             slti         s8, gp, 592
                  bgeu         t0, t6, 3443f
                  or           t6, tp, t2
                  sra          zero, a6, a2
                  sltu         s9, ra, t1
                  auipc        s3, 901598
3436:             nop
                  or           a2, a5, gp
3438:             add          ra, a7, t6
                  auipc        t0, 758524
                  bne          a4, zero, 3442f
                  sub          zero, t5, s4
3442:             add          s9, a5, t0
3443:             srli         sp, a2, 16
3444:             bgeu         s3, sp, 3454f
                  auipc        s9, 708441
                  sra          t6, a5, t6
                  bge          t1, sp, 3459f
                  auipc        s3, 508073
                  srl          s11, s6, a2
                  sub          a7, t1, sp
                  srli         s2, t6, 29
                  xor          a2, sp, a7
                  slli         sp, ra, 14
3454:             auipc        s10, 85330
                  nop
                  slli         s6, a5, 8
                  lui          s3, 996582
                  srl          t2, s2, t2
3459:             xor          s6, s7, t1
                  nop
                  srai         sp, s6, 9
                  sll          s2, a5, a6
                  xor          a0, a7, zero
                  sltu         s11, gp, s5
                  auipc        gp, 151343
                  auipc        s8, 670493
                  slti         a2, a2, -482
                  nop
                  or           tp, a0, s4
                  srl          a0, a4, a7
                  slt          ra, s5, t0
                  slli         s3, s6, 16
                  srl          t3, zero, s0
                  xori         a4, t1, -1218
                  srl          s10, tp, s10
                  add          gp, s11, a6
                  ori          t1, s2, -1942
                  sltu         t3, s10, a7
                  sra          a0, s9, s11
                  srai         s5, s5, 27
                  beq          t0, a4, 3497f
                  xor          s2, t3, t3
                  ori          a1, s6, 5
                  xori         t2, s0, -869
                  sltiu        s10, gp, -1010
                  bne          s11, s11, 3500f
                  xor          s8, t1, tp
                  blt          t3, s6, 3506f
                  lui          a1, 901065
                  ori          s7, a5, -69
                  add          s7, s3, s3
                  sub          zero, s5, s8
                  lui          s7, 443132
                  sll          s7, t2, s0
                  srli         a5, s5, 7
                  ori          a6, s4, 1148
3497:             bgeu         s1, a6, 3500f
                  add          tp, a7, s0
                  blt          s9, tp, 3507f
3500:             xor          a4, t1, t3
                  add          zero, a2, s8
                  lui          a2, 71601
                  slti         tp, t6, 945
                  nop
                  srai         s6, s5, 26
3506:             andi         zero, a5, 1949
3507:             blt          gp, t1, 3511f
                  slt          s7, s0, t5
                  slli         t6, sp, 13
                  srli         a6, s6, 22
3511:             ori          s5, s11, -1114
                  beq          s3, t5, 3518f
                  bltu         ra, t5, 3519f
                  sltu         s5, t4, t3
                  srl          s8, sp, s4
                  addi         ra, s4, 2037
                  add          t5, s6, zero
3518:             sub          t0, t4, zero
3519:             sll          zero, s8, s4
                  srli         s6, s5, 12
                  or           a5, a4, a0
                  nop
                  ori          sp, a3, -1865
                  bne          t3, ra, 3533f
                  bge          a3, t4, 3529f
                  sub          t1, t4, a2
                  or           t2, s8, s10
                  srl          tp, a5, s6
3529:             sltiu        a6, t1, 50
                  sltiu        gp, s2, -89
                  lui          s9, 116347
                  bltu         gp, gp, 3534f
3533:             sltiu        s11, t5, -644
3534:             addi         s10, a0, -1629
                  srai         s7, s7, 6
                  sltiu        s3, a2, 40
                  blt          a2, a4, 3538f
3538:             add          ra, a2, s10
                  ori          t5, t5, -464
                  xor          sp, s9, t6
                  and          a2, gp, a2
                  bltu         s10, s9, 3553f
                  and          gp, ra, s7
                  sltiu        a5, s1, 1746
                  sltiu        ra, ra, -539
                  xori         t5, s0, -1784
                  sltiu        ra, s2, 1489
                  srli         a6, s8, 0
                  srli         tp, a6, 18
                  bgeu         sp, a1, 3554f
                  srli         t5, zero, 22
                  lui          s7, 764054
3553:             nop
3554:             auipc        t3, 969266
                  bltu         t6, a4, 3562f
                  auipc        s8, 817308
                  sltiu        a1, a2, -879
                  andi         t1, a6, 423
                  slli         a6, s3, 21
                  sltu         sp, s8, s9
                  blt          s6, t5, 3580f
3562:             bgeu         t4, tp, 3579f
                  sltiu        s7, t0, 1346
                  bne          s3, s1, 3572f
                  blt          a7, s4, 3580f
                  ori          ra, s11, -1975
                  bne          t6, s7, 3586f
                  slli         s11, t5, 31
                  xor          s10, t2, sp
                  slt          a7, s3, a5
                  sra          sp, ra, t1
3572:             slt          tp, t3, s7
                  slt          tp, t6, s11
                  bgeu         zero, a1, 3588f
                  slli         a4, s1, 6
                  sltiu        s7, a4, 1477
                  srl          gp, a1, a3
                  xor          s8, t1, s8
3579:             slli         s6, s8, 14
3580:             sltu         a7, sp, gp
                  and          a5, s6, a2
                  bltu         a5, a0, 3583f
3583:             srl          t2, s0, s4
                  nop
                  srli         s6, s0, 27
3586:             andi         tp, a5, 1195
                  srai         s2, a7, 12
3588:             srl          a4, s6, s0
                  slli         a2, s0, 12
                  bge          a4, t3, 3601f
                  slti         s5, t0, -645
                  addi         a6, t6, 365
                  xor          s10, ra, s1
                  srli         ra, s0, 15
                  bgeu         a1, sp, 3609f
                  slti         s10, zero, 697
                  sltiu        t1, s1, -1615
                  srli         s5, a0, 31
                  ori          a6, s9, 1019
                  lui          s2, 1009544
3601:             sll          s5, s8, s2
                  sub          a0, t1, t2
                  or           t6, t6, a4
                  ori          a5, s0, -296
                  srl          s1, a4, sp
                  bltu         t4, s10, 3609f
                  bge          s2, sp, 3617f
                  sltiu        s9, s6, -538
3609:             ori          s3, a3, 1666
                  xori         s7, t4, -76
                  bgeu         t2, t1, 3612f
3612:             sub          s9, s1, t3
                  bltu         sp, a5, 3615f
                  sll          t6, a4, gp
3615:             beq          s7, a0, 3624f
                  sltiu        t3, s8, -425
3617:             bge          ra, a4, 3631f
                  ori          t0, t2, -1606
                  xor          t3, t4, s11
                  slli         s6, s7, 15
                  bgeu         tp, s10, 3629f
                  nop
                  auipc        ra, 556206
3624:             auipc        s5, 959743
                  sll          t6, s7, t5
                  add          ra, a2, a0
                  sub          a2, a1, s8
                  bge          t1, s11, 3647f
3629:             sll          tp, s7, t5
                  slt          zero, s1, a1
3631:             or           s1, t5, s3
                  auipc        s3, 811092
                  bge          s9, s6, 3640f
                  and          a5, a6, t1
                  sltu         sp, a2, t2
                  srli         a2, ra, 8
                  ori          t5, t5, -280
                  addi         gp, gp, -1612
                  bne          t5, a0, 3651f
3640:             srai         s9, t2, 7
                  bne          gp, s8, 3647f
                  sub          a6, s2, t5
                  addi         s3, t4, 41
                  slli         t3, s2, 21
                  bne          a7, s8, 3660f
                  blt          t6, a5, 3652f
3647:             xori         a4, zero, 1363
                  slli         s0, ra, 1
                  sltiu        gp, s7, 368
                  add          a2, a5, t3
3651:             srli         a0, s10, 12
3652:             srai         ra, t6, 4
                  bne          t0, t0, 3668f
                  sltiu        t2, s7, 768
                  bltu         a6, s7, 3667f
                  xor          s9, zero, a1
                  bge          s5, tp, 3673f
                  sra          s2, a7, s8
                  bne          zero, s2, 3678f
3660:             slt          tp, s10, t2
                  xori         sp, s1, 176
                  bne          t2, a2, 3664f
                  andi         a2, ra, 1142
3664:             nop
                  lui          s8, 951431
                  slti         s11, s6, 200
3667:             bltu         s1, a6, 3684f
3668:             bgeu         s6, t1, 3672f
                  beq          s1, a2, 3685f
                  srl          s5, a0, s0
                  srli         s2, s4, 11
3672:             srl          s10, zero, s9
3673:             or           t1, sp, gp
                  sltiu        a1, s6, 1389
                  andi         s7, t1, 1822
                  add          zero, a0, s5
                  srli         a7, a1, 7
3678:             sra          s11, s10, s2
                  sltu         a1, s1, s2
                  add          s5, sp, s2
                  xori         s6, a2, 227
                  srli         a4, s0, 3
                  bltu         s10, s8, 3701f
3684:             xor          s5, s5, s8
3685:             sub          s0, s7, a0
                  bltu         t2, t3, 3701f
                  sll          ra, t2, s8
                  addi         a2, s5, 221
                  slt          a0, t2, a7
                  sltu         s9, a2, s11
                  xor          s1, s10, gp
                  sra          t0, s3, s8
                  bltu         s6, a6, 3694f
3694:             sll          zero, s1, a6
                  slli         a4, a5, 19
                  bltu         s6, t5, 3700f
                  and          a2, s5, a4
                  xor          t2, ra, t1
                  beq          s0, a1, 3703f
3700:             slt          t1, s3, t3
3701:             auipc        t5, 724213
                  andi         a4, t6, -1007
3703:             lui          a2, 34462
                  or           a7, s4, s10
                  beq          gp, tp, 3713f
                  or           s11, s8, s0
                  bltu         sp, s3, 3713f
                  slli         a4, s1, 3
                  blt          s11, a5, 3728f
                  sltiu        s2, s9, -37
                  lui          s5, 634323
                  srai         a5, s7, 16
3713:             ori          ra, a2, 267
                  ori          t0, s8, 432
                  sll          s1, a7, s5
                  sltiu        s3, t4, 2001
                  sub          t1, a4, s2
                  auipc        s7, 886633
                  andi         s9, s11, 158
                  slli         t3, s6, 9
                  blt          s2, zero, 3727f
                  add          a6, s9, a2
                  blt          s7, s4, 3724f
3724:             sltiu        t0, a6, 95
                  sra          s6, a1, sp
                  sra          s5, sp, t4
3727:             sll          s3, s6, a4
3728:             nop
                  sra          t2, t3, s1
                  sltiu        t2, s5, -1417
                  addi         a6, t5, 251
                  lui          s5, 497267
                  srli         t6, tp, 4
                  sltu         a0, s2, a0
                  bge          t1, a5, 3749f
                  beq          gp, t4, 3744f
                  slti         a1, a3, -1859
                  addi         s10, s1, 613
                  sll          s7, t5, a5
                  bltu         t1, t4, 3758f
                  beq          ra, ra, 3760f
                  srl          s2, s8, a4
                  srl          a4, a7, tp
3744:             sub          t3, a2, a2
                  auipc        a7, 1025431
                  blt          s0, t2, 3749f
                  slli         a1, s9, 14
                  or           a6, s8, t3
3749:             srl          s5, tp, s1
                  slti         a0, a5, -1361
                  nop
                  srai         a2, s10, 27
                  srai         t3, a7, 20
                  blt          a5, a0, 3766f
                  ori          a7, s4, 1330
                  slt          gp, s1, t1
                  bgeu         sp, tp, 3772f
3758:             nop
                  bge          s8, t2, 3774f
3760:             and          s11, t5, gp
                  sub          a4, a3, t1
                  bltu         s10, a1, 3770f
                  sltu         s9, s8, t4
                  bltu         s7, t5, 3766f
                  xori         s5, s3, 117
3766:             ori          a6, s1, 1455
                  srai         s3, a0, 8
                  xori         s8, s4, -609
                  srli         a4, t5, 15
3770:             and          t5, s10, t4
                  bgeu         s3, s4, 3777f
3772:             blt          t1, ra, 3782f
                  sll          zero, a7, a6
3774:             addi         s5, a0, 264
                  srl          t0, s5, a1
                  blt          t6, t6, 3785f
3777:             and          s3, a3, t4
                  sll          t1, t0, t0
                  sra          zero, ra, a5
                  srai         t2, t4, 22
                  sra          a1, sp, s1
3782:             and          a0, s6, s11
                  auipc        t1, 345675
                  xori         t5, t4, 1667
3785:             or           a4, s11, s10
                  srli         zero, a2, 27
                  andi         a2, a4, 1601
                  slt          t6, s1, s0
                  bgeu         tp, s11, 3800f
                  bge          s8, s11, 3791f
3791:             xori         tp, tp, -909
                  srai         t5, t4, 7
                  slti         s11, t1, 547
                  and          t5, a3, s11
                  bgeu         a5, s8, 3801f
                  xor          s0, a0, a5
                  bgeu         a4, a2, 3812f
                  slt          s2, a0, s11
                  srai         s8, s7, 0
3800:             sltiu        s2, tp, 1407
3801:             sra          a1, t3, s9
                  andi         a7, s1, 343
                  slli         s1, a5, 11
                  andi         gp, tp, -1901
                  sub          a2, s9, t1
                  bltu         s10, s1, 3818f
                  add          ra, s11, s8
                  beq          t5, s8, 3822f
                  or           s1, s7, a0
                  nop
                  ori          t1, a4, -699
3812:             srai         t2, sp, 12
                  addi         s1, s11, -495
                  xor          a6, a1, a3
                  add          a1, s11, ra
                  nop
                  sra          t2, a0, ra
3818:             xor          s3, s0, a6
                  add          a4, t4, s3
                  sra          s5, s3, s9
                  and          sp, a6, s4
3822:             addi         s10, sp, 304
                  sltiu        s9, s4, 330
                  slli         a5, t6, 11
                  xori         s8, s8, -1401
                  lw           t1, 4(t4)
                  slli         t6, a6, 30
                  addi         t4, t4, 12
                  slli         zero, s2, 2
                  sra          ra, gp, t5
                  sltiu        a7, s8, -302
                  sub          a5, t0, t2
                  nop
5180:             addi x18, x6, 1
5180:             jalr x18, x18, 0
sub_9:            bgeu         s2, t5, sub_9_stack_p
sub_9_stack_p:    addi         t4, t4, -60
                  slt          a6, s8, t3
                  sw           t1, 4(t4)
                  nop
                  slli         zero, sp, 18
                  slti         s7, t1, 1529
                  nop
                  or           t3, s4, s10
                  srai         tp, t2, 23
                  andi         t5, s11, -134
                  xori         a4, tp, 1505
                  sub          ra, a5, s6
                  xor          s2, a2, s11
                  sll          s2, a2, sp
                  sll          t1, a4, s0
                  add          a7, t2, s0
                  xori         s9, s2, 659
                  slti         s8, a2, -1179
                  srli         tp, a0, 0
                  xori         a5, s1, -1284
                  addi         s2, a7, 1812
                  bge          a6, s9, 24f
                  addi         t5, s9, 541
                  xor          s8, s7, s11
                  slt          t2, t1, s5
                  ori          s5, zero, -1278
                  blt          zero, s2, 34f
                  srli         gp, t0, 3
                  xor          t5, s2, gp
24:               sltiu        a6, s5, 1715
                  or           t1, zero, s3
                  lui          a2, 415682
                  sub          sp, s5, s2
                  lui          sp, 697710
                  slli         a4, s8, 12
                  or           a1, s1, a6
                  xor          a7, a2, t5
                  bge          s5, t2, 46f
                  srl          t6, s5, ra
34:               ori          t1, a7, -1784
                  srli         s8, t5, 8
                  srai         a4, tp, 21
                  nop
                  srl          a1, t0, a5
                  or           s10, a4, s3
                  bne          a7, s8, 47f
                  sll          t2, zero, s9
                  or           t1, a5, s0
                  sll          sp, t5, a0
                  nop
                  or           a6, s0, s3
46:               sltu         ra, t5, a2
47:               slti         t2, ra, -221
                  sltiu        s10, a3, 661
                  srai         s7, zero, 27
                  addi         s7, tp, 866
                  xor          s0, s11, sp
                  srli         s0, a3, 29
                  lw           t1, 4(t4)
                  slt          s3, a6, s2
                  sltiu        s6, t4, 1565
                  sltiu        s5, a1, -1646
                  addi         t4, t4, 60
                  srai         s11, a2, 0
65:               addi x16, x6, 0
65:               jalr x16, x16, 0
sub_10:           srai         s9, s7, 1
                  and          s11, a5, s11
                  or           zero, sp, t2
                  srai         s3, a1, 9
                  and          s11, a6, t6
                  bne          a4, s7, sub_10_stack_p
                  or           s3, a6, t0
                  sub          a2, s5, a6
sub_10_stack_p:   addi         t4, t4, -48
                  sw           t1, 4(t4)
                  addi         s9, t5, 393
                  sll          s1, a7, t2
                  addi         ra, a2, 1970
                  srl          tp, a5, a4
                  add          t2, a0, s9
                  sll          t0, t3, s1
                  srli         tp, a7, 14
                  or           s2, a7, s9
                  addi         s7, t4, 1658
                  andi         a7, t4, 1446
                  add          a0, s6, t0
                  bne          t2, s6, 9f
9:                xori         t1, a1, -1298
                  bgeu         zero, s11, 14f
                  bgeu         a6, ra, 21f
                  xor          gp, tp, a5
                  bltu         t6, s6, 14f
14:               blt          a4, s6, 17f
                  sra          a7, s7, s0
                  and          s0, s9, a5
17:               bgeu         a7, t4, 31f
                  bne          a4, s2, 32f
                  bltu         ra, a6, 36f
                  or           a4, s5, s9
21:               sll          a2, s7, a5
                  xori         tp, a4, 888
                  add          s9, sp, t3
                  sub          gp, s1, s11
                  xori         t2, s6, 27
                  sra          s2, gp, s10
                  sll          s1, s1, t3
                  slli         a2, a7, 1
                  blt          s3, s6, 40f
                  beq          t4, a4, 45f
31:               srli         t0, s0, 21
32:               sltu         s9, s11, t0
                  slli         s7, t4, 20
                  lui          t1, 710792
                  sub          t3, t6, t0
36:               lui          zero, 817355
                  bgeu         t0, a7, 50f
                  bge          t6, a4, 50f
                  srl          s0, a6, a5
40:               or           s0, s10, a4
                  sltu         a7, s2, a5
                  auipc        a5, 789129
                  auipc        s11, 193119
                  add          zero, sp, a7
45:               blt          a5, a3, 65f
                  blt          s5, t1, 54f
                  sub          a6, t5, a4
                  xor          s7, s4, s4
                  sra          tp, gp, a2
50:               sll          a1, s0, s9
                  lui          s7, 430533
                  bne          a2, a7, 72f
                  srl          t6, s7, sp
54:               sltiu        a4, s0, 119
                  or           s9, a4, a7
                  sll          s10, s1, a2
                  sltu         a0, s3, tp
                  sub          t6, gp, a4
                  addi         a0, s8, -1891
                  sltu         s11, t5, t4
                  lui          a1, 252882
                  slti         a7, a6, -796
                  sub          s7, s7, a6
                  sltiu        t5, a3, -44
65:               bge          s5, s9, 77f
                  xori         t2, t6, 612
                  xori         s8, s8, -1002
                  ori          a2, t6, -1899
                  ori          t3, s3, 228
                  addi         s10, s5, -1004
                  slti         s11, a0, 870
72:               sub          sp, s1, s4
                  la           tp, region_1+1378 #start riscv_load_store_rand_instr_stream_0
                  lb           s7, -976(tp)
                  lbu          s11, -917(tp)
                  srl          t3, t2, s5
                  xori         s8, s10, -866
                  sh           a7, 384(tp)
                  sub          ra, s0, a2
                  sll          ra, s9, s6
                  sb           s7, -1273(tp)
                  sh           a3, -904(tp)
                  srai         s0, s5, 24
                  slt          sp, s10, tp
                  lb           s10, 121(tp)
                  nop
                  lb           sp, -368(tp)
                  lhu          s8, -328(tp)
                  andi         sp, a7, -1905
                  lui          a6, 60124
                  auipc        s6, 910616
                  lb           a7, -1084(tp)
                  sw           s3, -770(tp)
                  sra          t3, sp, s0
                  sra          s0, s8, s4
                  xori         t6, tp, -1978
                  nop
                  srai         s6, s8, 29
                  lb           zero, 321(tp)
                  add          s3, t5, t0
                  srl          a6, a0, sp
                  sltu         t2, a2, s4
                  lhu          a6, -864(tp) #end riscv_load_store_rand_instr_stream_0
                  nop
                  sltiu        t0, a0, -903
                  blt          a4, a0, 78f
                  blt          tp, s11, 90f
77:               srl          t3, tp, s7
78:               srl          t5, tp, sp
                  slli         gp, t2, 4
                  auipc        t5, 961036
                  andi         a4, a7, 1455
                  blt          a4, t0, 94f
                  bge          s10, t0, 103f
                  and          s2, zero, a1
                  add          gp, s5, zero
                  add          s10, tp, s5
                  xor          s5, a7, t6
                  beq          s11, s5, 96f
                  or           s11, s4, t6
90:               auipc        s11, 752243
                  bltu         a2, a0, 100f
                  xori         zero, a4, 288
                  xor          s6, a1, s5
94:               add          a7, t6, s7
                  and          a0, s9, a5
96:               srli         t3, t4, 13
                  sra          t6, t0, t0
                  addi         s3, a4, 1530
                  beq          a2, s4, 104f
100:              bne          s1, gp, 113f
                  srl          a1, ra, ra
                  bne          a0, s5, 103f
103:              or           s11, s1, s6
104:              slti         s2, s9, 520
                  sll          t1, ra, s4
                  add          zero, a6, s2
                  srl          a0, s10, a3
                  auipc        sp, 990905
                  xor          a1, a1, a7
                  slt          a4, s5, gp
                  nop
                  srl          s3, sp, t2
113:              slti         t2, a6, -529
                  bltu         a6, t6, 117f
                  beq          gp, a3, 130f
                  slt          t1, a1, a0
117:              sub          zero, s7, a6
                  and          ra, s11, ra
                  xori         t3, tp, 1834
                  lui          s6, 703118
                  srai         s0, s7, 25
                  bgeu         s3, a7, 142f
                  lui          s0, 571943
                  sll          gp, tp, gp
                  srai         a6, s11, 9
                  sub          a4, t1, tp
                  ori          t2, s4, 352
                  auipc        s1, 771369
                  slti         t1, sp, 891
130:              add          t5, t5, tp
                  srl          t1, a2, s11
                  add          s2, ra, ra
                  sll          a0, a3, t6
                  andi         t5, t1, -2039
                  auipc        a2, 512625
                  blt          s8, gp, 151f
                  sub          a5, t5, s9
                  slli         t0, t0, 20
                  sub          t1, s9, t2
                  or           s0, tp, a4
                  bgeu         a1, s4, 158f
142:              xor          gp, t2, s0
                  xor          a2, s11, s0
                  add          a2, tp, a2
                  nop
                  srli         s3, tp, 17
                  nop
                  auipc        s6, 123308
                  xori         s0, zero, 1674
                  srli         s6, s6, 0
151:              xor          a6, s5, t6
                  sra          t1, s10, a0
                  slli         t6, s8, 29
                  srai         a6, s4, 28
                  sub          s3, a0, ra
                  nop
                  or           a5, sp, s5
158:              sub          s2, gp, s9
                  sub          t1, a4, t5
                  bne          a1, a2, 161f
161:              bgeu         s10, t4, 176f
                  sll          s7, sp, a4
                  bltu         a5, t5, 171f
                  sra          t6, s10, zero
                  beq          a3, gp, 177f
                  bne          sp, s5, 174f
                  add          t2, sp, t5
                  blt          ra, s8, 171f
                  sltu         gp, s8, s1
                  andi         t0, s11, 1491
171:              addi         t6, t5, 1583
                  andi         a2, tp, -148
                  sltu         s11, a4, a7
174:              sltu         s5, t0, s0
                  lui          s6, 356992
176:              bgeu         s2, t6, 177f
177:              sltu         a0, s4, t6
                  ori          a1, s7, 1443
                  lw           t1, 4(t4)
                  srai         s3, a6, 25
                  addi         t4, t4, 48
                  sra          sp, ra, a6
227:              addi x9, x6, 1
227:              jalr x9, x9, 0
sub_5:            srai         s0, s5, 17
                  bgeu         a2, s0, sub_5_stack_p
                  srl          a0, a4, t2
                  or           s9, t4, t1
sub_5_stack_p:    addi         t4, t4, -16
                  sw           t1, 4(t4)
                  ori          s9, s5, 1133
                  ori          a2, sp, -1008
                  sltiu        s10, s6, -577
                  auipc        s3, 727622
                  sltiu        s7, s7, -591
                  sltiu        s2, s9, 760
                  sra          zero, s1, a7
                  bge          t0, s2, sub_5_j7 #branch to jump instr
                  sll          tp, s10, a2
                  srli         gp, s6, 6
                  or           ra, ra, t3
sub_5_j7:         jal          t1, sub_6 #jump sub_5 -> sub_6
                  la           gp, sub_6
                  srli         a5, s1, 16
                  srli         t0, s1, 14
                  addi         gp, gp, -607
                  addi         s8, s0, -586
                  xori         t0, s6, 1956
                  bltu         t0, t0, sub_5_j8 #branch to jump instr
                  srai         sp, s8, 17
sub_5_j8:         jalr         t1, gp, 607 #jump sub_5 -> sub_6
                  ori          s0, s3, -1473
                  srli         s6, t4, 9
                  srli         zero, t6, 22
                  addi         t3, t5, -1220
                  sll          s3, s3, ra
                  ori          s0, a0, -833
                  auipc        t3, 566129
                  blt          s7, t1, 10f
                  lui          s2, 613200
                  nop
10:               sub          a1, t6, s5
                  srai         s5, t2, 21
                  srai         gp, t6, 1
                  lw           t1, 4(t4)
                  slti         sp, s9, -874
                  addi         t4, t4, 16
                  slti         ra, s8, 637
                  ori          t0, ra, -1380
                  auipc        a7, 1023261
                  sra          a5, s0, sp
47:               addi x28, x6, 0
47:               jalr x28, x28, 0
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
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x13, x29, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_2:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x13, x29, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_3:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x13, x29, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_4:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x13, x29, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_5:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x13, x29, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_6:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x13, x29, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_7:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x13, x29, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_8:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x13, x29, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_9:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x13, x29, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_10:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x13, x29, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_11:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x13, x29, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_12:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x13, x29, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_13:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x13, x29, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_14:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x13, x29, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_15:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x13, x29, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

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
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x13, x29, zero
                  csrr x2, 0x341 # MEPC
                  csrr x2, 0x342 # MCAUSE
                  li x19, 0x3 # BREAKPOINT
                  beq x2, x19, ebreak_handler
                  li x19, 0x8 # ECALL_UMODE
                  beq x2, x19, ecall_handler
                  li x19, 0x9 # ECALL_SMODE
                  beq x2, x19, ecall_handler
                  li x19, 0xb # ECALL_MMODE
                  beq x2, x19, ecall_handler
                  li x19, 0x1
                  beq x2, x19, instr_fault_handler
                  li x19, 0x5
                  beq x2, x19, load_fault_handler
                  li x19, 0x7
                  beq x2, x19, store_fault_handler
                  li x19, 0xc
                  beq x2, x19, pt_fault_handler
                  li x19, 0xd
                  beq x2, x19, pt_fault_handler
                  li x19, 0xf
                  beq x2, x19, pt_fault_handler
                  li x19, 0x2 # ILLEGAL_INSTRUCTION
                  beq x2, x19, illegal_instr_handler
                  csrr x19, 0x343 # MTVAL
                  1: la x20, test_done
                  jalr x1, x20, 0

ecall_handler:    
                  la x2, _start
                  sw x0, 0(x2)
                  sw x1, 4(x2)
                  sw x2, 8(x2)
                  sw x3, 12(x2)
                  sw x4, 16(x2)
                  sw x5, 20(x2)
                  sw x6, 24(x2)
                  sw x7, 28(x2)
                  sw x8, 32(x2)
                  sw x9, 36(x2)
                  sw x10, 40(x2)
                  sw x11, 44(x2)
                  sw x12, 48(x2)
                  sw x13, 52(x2)
                  sw x14, 56(x2)
                  sw x15, 60(x2)
                  sw x16, 64(x2)
                  sw x17, 68(x2)
                  sw x18, 72(x2)
                  sw x19, 76(x2)
                  sw x20, 80(x2)
                  sw x21, 84(x2)
                  sw x22, 88(x2)
                  sw x23, 92(x2)
                  sw x24, 96(x2)
                  sw x25, 100(x2)
                  sw x26, 104(x2)
                  sw x27, 108(x2)
                  sw x28, 112(x2)
                  sw x29, 116(x2)
                  sw x30, 120(x2)
                  sw x31, 124(x2)
                  la x20, write_tohost
                  jalr x0, x20, 0

instr_fault_handler:
                  add x29, x13, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

load_fault_handler:
                  add x29, x13, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

store_fault_handler:
                  add x29, x13, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

ebreak_handler:   
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x29, x13, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

illegal_instr_handler:
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x29, x13, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x2, 0x300 # MSTATUS;
                  csrr  x2, 0x304 # MIE;
                  csrr  x2, 0x344 # MIP;
                  csrrc x2, 0x344, x2 # MIP;
                  add x29, x13, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
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
