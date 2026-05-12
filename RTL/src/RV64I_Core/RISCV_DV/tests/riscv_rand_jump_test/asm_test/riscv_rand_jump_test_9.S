.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x30, h0_start
jalr x0, x30, 0
h0_start:
                  li x29, 0x40000100
                  csrw 0x301, x29
kernel_sp:        
                  la x12, kernel_stack_end

trap_vec_init:    
                  la x29, mtvec_handler
                  ori x29, x29, 0
                  csrw 0x305, x29 # MTVEC

mepc_setup:       
                  la x29, init
                  csrw 0x341, x29

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x29, 0x1800
                  csrw 0x300, x29 # MSTATUS
                  mret
init:             
                  li x0, 0xfaf915a5
                  li x1, 0x66746590
                  li x2, 0x0
                  li x3, 0x0
                  li x4, 0x800eae33
                  li x5, 0xfb9fdd9e
                  li x6, 0x80000000
                  li x7, 0xb420b423
                  li x8, 0x65e2fe70
                  li x9, 0xfbee2741
                  li x10, 0x80000000
                  li x11, 0x36213fd3
                  li x13, 0x94f5a1bf
                  li x14, 0xd
                  li x15, 0x0
                  li x16, 0x2
                  li x17, 0xe
                  li x19, 0x5
                  li x20, 0xfa9702d1
                  li x21, 0xfd05bbc5
                  li x22, 0xf081ba8b
                  li x23, 0x83665a40
                  li x24, 0x95f690b1
                  li x25, 0xf3bcfead
                  li x26, 0x80000000
                  li x27, 0xee7368d8
                  li x28, 0x80000000
                  li x29, 0xe91d5ef5
                  li x30, 0xf2903d81
                  li x31, 0x3
                  la x18, user_stack_end
main:             lui          t2, 595987
                  sll          a4, s1, a2
                  srl          s6, s2, s0
                  add          a0, gp, s2
                  srl          s1, zero, s10
                  la           s3, sub_1
                  addi         s3, s3, 154
                  sltiu        sp, a0, 358
                  srli         s7, a7, 18
main_j2:          jalr         t1, s3, -154 #jump main -> sub_1
                  la           a6, region_0+691 #start riscv_load_store_rand_instr_stream_0
                  lbu          s5, 60(a6)
                  lb           s3, -38(a6)
                  sh           a2, 51(a6)
                  sltiu        s11, a5, -2013
                  auipc        tp, 45131
                  lb           s5, -52(a6)
                  srai         a3, s11, 25
                  lbu          s0, 64(a6)
                  lh           ra, 31(a6)
                  lbu          s6, -45(a6)
                  lb           sp, -54(a6)
                  sll          a0, s10, s1
                  sb           s8, 4(a6)
                  addi         s9, s2, -1958
                  slli         s4, s7, 31
                  srli         t3, t3, 9
                  auipc        t4, 212082
                  lb           gp, 60(a6)
                  lui          t6, 396910
                  lhu          s1, 31(a6)
                  lbu          a3, 62(a6)
                  lbu          s7, -38(a6)
                  nop
                  lhu          s6, -31(a6)
                  sb           a4, 4(a6)
                  lh           zero, 61(a6)
                  lb           t3, -60(a6)
                  sb           s2, 11(a6)
                  sb           s6, -44(a6)
                  lbu          ra, -17(a6) #end riscv_load_store_rand_instr_stream_0
                  xori         a1, sp, 746
                  srl          s6, a7, a7
                  lui          s8, 471217
                  sra          s4, a7, a2
                  sra          a3, a0, s2
                  auipc        a4, 287734
                  srli         zero, s2, 2
                  lui          s4, 76711
                  ori          s9, a5, 1628
                  bge          a6, s0, 26f
                  and          s0, s1, gp
                  blt          t4, a0, 14f
                  bltu         zero, ra, 16f
                  bltu         t3, a7, 14f
14:               bltu         s5, s7, 15f
15:               srl          t0, a6, s0
16:               srai         a0, t3, 11
                  srli         ra, t1, 17
                  ori          s1, s8, 645
                  sltu         zero, a5, a5
                  lui          t4, 114459
                  or           s10, t1, s11
                  nop
                  bne          ra, t1, 25f
                  sltu         s0, s1, gp
25:               nop
26:               sub          t6, s5, a1
                  srai         s0, s5, 6
                  xori         a1, t2, 1295
                  auipc        sp, 285538
                  sltiu        a0, a4, -1019
                  xor          s11, s4, t1
                  addi         s3, a7, 1206
                  slt          t2, s5, t1
                  nop
                  add          t1, s2, zero
                  srai         t3, a7, 31
                  srli         s6, s4, 13
                  sltiu        s4, s0, 2017
                  bltu         tp, s5, 43f
                  sltiu        s3, t2, 26
                  slt          t6, s0, sp
                  add          a7, s3, t5
43:               srai         a7, ra, 10
                  srli         s9, s6, 7
                  srai         t1, s7, 21
                  sll          t1, a2, t3
                  bge          a1, tp, 54f
                  slli         sp, t1, 0
                  add          t2, a1, s8
                  ori          s9, a1, 2039
                  lui          s0, 545853
                  and          s5, s1, a7
                  srai         s8, s9, 26
54:               xori         t2, a0, 742
                  beq          t5, t2, 68f
                  lui          a4, 689692
                  sll          tp, t2, tp
                  srli         t6, a1, 4
                  or           s6, t1, ra
                  add          tp, a4, a4
                  blt          s4, s6, 67f
                  slli         sp, s9, 24
                  slt          a4, t5, s4
                  sltu         s9, s9, a7
                  slli         a3, a0, 2
                  sra          s6, t5, a1
67:               blt          s3, gp, 85f
68:               bne          s11, ra, 79f
                  xori         a3, a2, -1076
                  or           t1, zero, t2
                  la           t3, sub_1
                  xori         t2, t3, 716
                  addi         t3, t3, 676
                  ori          t6, t0, -1377
                  or           s0, s8, a1
                  slt          s5, s8, s1
                  beq          t3, s9, main_j1 #branch to jump instr
                  srl          s0, s0, s6
                  sub          a0, a5, a0
                  or           s5, s10, s2
                  or           s5, s10, s8
main_j1:          jalr         t1, t3, -675 #jump main -> sub_1
                  xori         a4, t0, -873
                  slt          a7, t6, a2
                  and          s10, a6, a4
                  xor          a1, ra, s3
                  or           a7, a3, t3
                  blt          s2, ra, 93f
                  sltu         s11, a4, t6
                  sra          sp, tp, t6
79:               slt          a6, t0, s4
                  ori          a4, s8, -1593
                  bgeu         a1, s4, 90f
                  srai         t0, ra, 15
                  sltu         zero, t5, t2
                  blt          a0, t6, 86f
85:               or           s3, s10, a4
86:               bne          s7, a5, 103f
                  sll          s0, s6, a6
                  and          s11, s4, a3
                  lui          s6, 457408
90:               or           ra, a2, a6
                  sltu         s4, a7, s11
                  beq          a0, a6, 97f
93:               blt          t6, ra, 95f
                  lui          zero, 734239
95:               and          ra, s6, s11
                  sub          a3, a3, s2
97:               or           s11, t2, s10
                  srai         t2, s11, 22
                  slt          t6, s5, s1
                  auipc        a0, 435832
                  srli         s7, s5, 12
                  slt          s1, s8, a0
103:              bgeu         s0, s4, 110f
                  srai         a5, s6, 22
                  bgeu         t5, a3, 110f
                  slli         s3, tp, 7
                  bgeu         tp, t1, 110f
                  sll          s9, s2, a5
                  srl          s6, sp, t6
110:              ori          gp, t5, -495
                  la x30, test_done
                  jalr x0, x30, 0
test_done:        
                  li gp, 1
                  ecall
sub_8:            addi         s2, s2, -20
                  sltu         a0, t2, a0
                  sub          gp, s7, a2
                  srai         s8, a2, 18
                  sw           t1, 4(s2)
                  add          t3, s8, a0
                  srai         gp, t1, 12
                  srai         t4, s1, 19
                  lui          tp, 255432
                  slti         a6, a0, 1965
                  srli         tp, t6, 20
                  sub          ra, a5, tp
                  sub          gp, s5, ra
                  xor          s7, ra, s11
                  xor          s5, zero, t3
                  srli         sp, s5, 8
                  slti         t6, t6, 1746
                  la           a0, sub_10
                  addi         a0, a0, 585
                  xor          s3, s6, s3
sub_8_j14:        jalr         t1, a0, -585 #jump sub_8 -> sub_10
                  lui          a1, 598421
                  slli         t3, s9, 31
                  ori          t4, s3, 1748
                  and          a3, a1, s4
                  sll          a4, t6, a6
                  srai         a0, s9, 24
                  slti         t1, a5, -954
                  srai         a0, t2, 31
                  auipc        a5, 458380
                  slti         gp, ra, -1961
                  bne          s10, a4, 19f
                  addi         a5, a3, 792
                  srai         s8, tp, 2
                  slli         s4, s3, 2
                  sra          s7, t4, t3
                  sub          s8, a1, a5
                  slt          a4, t4, s1
                  srl          zero, zero, s10
                  add          t4, gp, a1
19:               auipc        s6, 451878
                  srai         t4, s1, 23
                  or           s1, ra, s0
                  lw           t1, 4(s2)
                  or           s1, a1, t0
                  addi         s2, s2, 20
                  auipc        a0, 268334
                  add          s0, a2, sp
                  or           t3, a7, a7
                  ori          s10, s11, -1100
50:               addi x8, x6, 0
50:               jalr x8, x8, 0
sub_6:            nop
                  sra          s11, a2, a1
                  ori          gp, s11, 616
                  or           s8, gp, a1
                  slli         sp, a0, 22
                  slli         ra, a2, 23
                  addi         s2, s2, -44
                  sltiu        a6, s10, 1249
                  ori          s10, tp, 634
                  sw           t1, 4(s2)
                  sra          t2, s8, t2
                  sltu         s10, tp, a7
                  srl          zero, s0, a1
                  ori          gp, a5, -122
                  andi         s4, t6, 955
                  la           s8, sub_7
                  xor          s1, a1, s5
                  addi         s8, s8, -49
                  nop
                  xor          s1, s6, s7
sub_6_j10:        jalr         t1, s8, 50 #jump sub_6 -> sub_7
                  sub          a0, s2, t3
                  slti         a1, a4, -302
                  sra          tp, s9, s10
                  sll          s11, s8, s1
                  bgeu         a4, a2, 5f
5:                sltu         s1, a2, s11
                  lui          a0, 36092
                  or           s9, t0, s2
                  or           t3, tp, s8
                  srl          s8, s9, sp
                  lui          a0, 481162
                  sll          a4, a7, tp
                  blt          t6, t2, 14f
                  nop
14:               srai         s11, s2, 23
                  or           gp, a6, a6
                  srl          ra, s11, t6
                  lw           t1, 4(s2)
                  or           zero, t5, t3
                  addi         s2, s2, 44
                  xori         s7, a0, -1520
                  and          t0, zero, a3
                  sltiu        a6, s7, 632
44:               addi x26, x6, 1
44:               jalr x26, x26, 0
sub_1:            nop
                  xor          a7, t0, ra
                  and          zero, s6, a6
                  add          s3, a2, t3
                  addi         s2, s2, -44
                  auipc        ra, 210428
                  ori          s4, t6, -1677
                  sw           t1, 4(s2)
                  add          ra, s4, gp
                  slt          s5, a4, gp
                  bgeu         s3, s2, sub_1_j3 #branch to jump instr
                  sub          t3, s2, s3
                  nop
                  slli         a0, a0, 8
                  andi         a1, t2, -2023
                  slti         tp, sp, 826
                  sub          t1, t2, t3
                  sub          s5, t5, t0
                  slti         t3, t1, -853
                  sub          s3, t6, t5
sub_1_j3:         jal          t1, sub_2 #jump sub_1 -> sub_2
                  and          s11, a4, a6
                  xori         s3, s9, 1927
                  nop
                  slti         s6, s7, 616
                  lui          s4, 955741
                  blt          ra, s10, 11f
                  auipc        t3, 144540
                  addi         gp, s9, 1888
                  bne          s3, s3, 13f
                  bne          sp, s3, 10f
10:               or           s4, a5, a1
11:               blt          s5, a1, 23f
                  sltu         s1, s9, t6
13:               auipc        ra, 743916
                  sub          t3, s11, sp
                  add          a5, tp, a3
                  lui          s8, 36329
                  sltu         a6, s5, s1
                  andi         s7, gp, -1557
                  andi         s1, s10, -1757
                  srai         sp, a3, 25
                  xori         s9, t5, 1313
                  sra          a5, s1, s5
23:               add          a3, a1, s6
                  xori         zero, s8, 227
                  auipc        t4, 936001
                  xori         a4, a6, -1235
                  lui          s0, 286246
                  blt          t6, a2, 40f
                  bgeu         tp, tp, 40f
                  ori          a3, tp, -1626
                  sltiu        s3, sp, -511
                  sll          a4, s6, a3
                  andi         t6, gp, 1656
                  and          a5, gp, a0
                  ori          s0, t1, 1537
                  slli         s4, s11, 5
                  sltu         s5, a5, t0
                  srl          a6, t0, t2
                  ori          s4, a4, -394
40:               nop
                  bge          ra, t5, 56f
                  slt          t4, s8, s5
                  slt          a1, t4, t3
                  ori          s1, s1, -1375
                  slli         a4, t3, 12
                  srai         s0, sp, 28
                  auipc        t0, 834987
                  addi         s9, s2, -1112
                  and          ra, t4, s9
                  lui          t4, 752582
                  sltiu        t4, a4, 1205
                  slti         tp, s8, 1411
                  srli         s6, a2, 3
                  bne          s9, a5, 66f
                  sltiu        s11, a4, 1233
56:               bge          s4, gp, 63f
                  srl          s11, s8, s9
                  andi         t3, s6, 1460
                  srl          s9, s6, t2
                  srai         s9, t6, 9
                  and          t6, ra, t5
                  blt          tp, s3, 66f
63:               sra          ra, sp, gp
                  auipc        a4, 328739
                  sltiu        s4, t1, -699
66:               sltiu        a5, gp, -1315
                  and          s10, s3, t2
                  xori         a6, t4, 1098
                  nop
                  auipc        s5, 501227
                  srli         gp, t3, 15
                  sltu         t3, s6, gp
                  lui          gp, 987976
                  add          gp, s3, tp
                  sltu         s1, a4, t3
                  or           s7, s10, zero
                  xori         a4, s7, -1352
                  sll          a1, a6, t2
                  xor          t3, s3, t5
                  xori         sp, a0, -1981
                  slt          sp, s0, a2
                  sltiu        s11, s7, 1619
                  ori          s8, t6, 991
                  bne          t0, s4, 97f
                  bgeu         s8, gp, 99f
                  xori         a3, s3, 789
                  bne          a2, a1, 100f
                  andi         gp, t3, 561
                  and          t0, t4, s1
                  srli         t6, t6, 16
                  slli         s3, s3, 22
                  blt          s9, a3, 100f
                  sra          s3, a0, t4
                  or           s7, sp, t4
                  blt          s6, t2, 110f
                  sll          a7, a3, s6
97:               sltu         s10, tp, t2
                  addi         s0, s5, 1993
99:               sltu         a5, s4, a6
100:              srl          a0, a6, tp
                  addi         s9, t1, -1645
                  nop
                  or           a3, a6, t1
                  auipc        ra, 63262
                  xori         s6, s1, -243
                  blt          s2, s5, 122f
                  bne          t6, s9, 122f
                  and          gp, s0, s0
                  bge          sp, a6, 110f
110:              sub          s1, t5, s0
                  srl          a6, s8, s4
                  or           s9, a4, s1
                  srli         s7, t4, 30
                  bne          a0, s6, 122f
                  slti         t4, s9, 1979
                  slti         s3, s4, -230
                  bgeu         s10, a3, 122f
                  ori          a5, a6, -20
                  xor          a4, s11, t2
                  xori         a7, a5, -976
                  bne          s2, s4, 122f
122:              srai         s4, t0, 15
                  slti         s7, s8, 1285
                  andi         t6, t2, 1192
                  or           a1, t1, s10
                  lw           t1, 4(s2)
                  ori          ra, s5, 1560
                  addi         s2, s2, 44
                  sll          s8, s5, s9
151:              addi x2, x6, 1
151:              jalr x2, x2, 0
sub_5:            and          a3, t4, s2
                  addi         s2, s2, -36
                  or           zero, s6, s0
                  xor          s5, s4, gp
                  or           t4, a4, a1
                  ori          s8, s0, -177
                  sw           t1, 4(s2)
                  sltiu        t6, sp, -1074
                  sra          s1, tp, a3
                  sra          s9, t1, t2
                  sub          a3, s6, s1
                  bge          a1, t5, 9f
                  srl          ra, a5, t2
                  bltu         s3, t6, 21f
                  bne          s1, s8, 8f
                  bltu         s1, s4, 18f
                  auipc        sp, 835353
8:                add          t6, t1, s4
9:                xori         t0, gp, -1256
                  or           sp, t2, s3
                  blt          s2, s11, 28f
                  srl          s1, a1, a2
                  andi         s5, t6, -1333
                  sra          s0, a0, s2
                  srli         a0, a2, 20
                  srai         tp, a3, 23
                  nop
18:               srli         s3, a1, 13
                  srl          a6, t2, a1
                  sub          s1, a3, t5
21:               bgeu         t5, a6, 29f
                  srl          a7, t3, s8
                  ori          a0, s8, 93
                  beq          ra, s10, 34f
                  slti         t3, t1, -1592
                  ori          ra, ra, 1985
                  slli         s0, s0, 29
28:               and          s8, t5, a6
29:               sltu         s0, t1, t3
                  and          s11, t1, t0
                  slli         zero, a1, 25
                  slt          s3, t5, zero
                  slti         s11, a0, -1150
                  ori          s7, t4, -1157
                  sra          t3, s4, zero
                  sltiu        s3, a2, 1328
                  sub          t1, a5, s9
                  ori          t6, t2, 1626
                  sltiu        a5, t6, -1192
sub_5_j9:         jal          t1, sub_7 #jump sub_5 -> sub_7
                  srl          s1, s3, s1
                  slt          sp, s1, a2
                  and          a1, ra, a3
                  xori         a0, t6, -271
34:               srli         sp, a7, 21
                  slt          s7, s1, ra
                  andi         t0, a5, -1594
                  bltu         a6, s0, 55f
                  bgeu         t2, t3, 42f
                  beq          s6, a1, 44f
                  srai         a6, tp, 30
                  bgeu         tp, s3, 53f
42:               xori         a6, s1, 804
                  andi         s4, sp, 192
44:               and          gp, t6, a7
                  sll          ra, ra, a1
                  srai         a6, a2, 6
                  slli         a6, a1, 16
                  sltiu        a3, s4, -707
                  and          zero, s10, a3
                  sub          s8, a5, s4
                  xori         s3, a4, -1670
                  addi         t2, gp, 1729
53:               slli         t1, s10, 8
                  sra          a0, a2, s7
55:               add          a3, ra, s4
                  or           t2, s0, a6
                  sra          t2, tp, a2
                  srl          zero, s3, a3
                  xor          tp, t2, zero
                  xor          tp, s11, s10
                  bne          s1, t1, 67f
                  sub          ra, zero, t6
                  sltiu        s7, a6, -511
                  add          ra, sp, s6
                  lui          ra, 577778
                  nop
67:               or           tp, a5, a6
                  lw           t1, 4(s2)
                  xori         t2, t0, 1125
                  and          a5, a4, s3
                  lui          a6, 192440
                  srli         s9, s8, 19
                  addi         s2, s2, 36
                  add          t2, a0, zero
                  sub          s8, s5, s5
96:               addi x13, x6, 1
96:               jalr x13, x13, 0
sub_2:            addi         s2, s2, -32
                  sub          sp, s7, gp
                  sub          s7, s8, t0
                  or           s5, gp, t3
                  nop
                  auipc        a5, 808372
                  add          t0, s8, s1
                  sub          s11, s6, t4
                  sw           t1, 4(s2)
                  slli         ra, s1, 7
                  add          t6, t1, s11
                  addi         t0, s0, -520
                  slli         s10, s3, 10
                  sra          sp, tp, t2
                  sltiu        a4, a7, -326
                  bge          a0, a3, sub_2_j4 #branch to jump instr
                  sub          a4, a1, t4
sub_2_j4:         jal          t1, sub_6 #jump sub_2 -> sub_6
                  la           a4, sub_5
                  srai         tp, gp, 12
                  sltu         a3, s8, s9
                  slt          a0, s8, a4
                  addi         a4, a4, -749
                  or           tp, a4, t6
                  sltu         t1, s10, s0
                  xori         s5, s7, -1321
sub_2_j5:         jalr         t1, a4, 750 #jump sub_2 -> sub_5
                  or           t0, a4, a7
                  la           s11, sub_3
                  sltiu        t3, t2, 1803
                  addi         s9, a3, -805
                  addi         s11, s11, 618
                  auipc        s4, 827330
                  auipc        t1, 863608
                  auipc        t0, 440012
                  xor          s8, a5, s6
                  bne          a1, sp, sub_2_j6 #branch to jump instr
                  ori          a4, a7, 2015
                  lui          tp, 575155
sub_2_j6:         jalr         t1, s11, -617 #jump sub_2 -> sub_3
                  andi         a5, s2, 578
                  sll          t4, a0, a2
                  sub          a5, t5, a3
                  sra          s11, s6, t1
                  add          t4, s8, a5
                  beq          t4, a3, sub_2_j7 #branch to jump instr
                  slti         s0, t5, 1568
sub_2_j7:         jal          t1, sub_4 #jump sub_2 -> sub_4
                  la           a3, sub_6
                  sub          t2, a6, s3
                  slli         gp, t2, 11
                  auipc        s8, 486070
                  and          s4, a6, t6
                  addi         a3, a3, 748
                  sub          a7, sp, sp
                  sltiu        zero, s5, 906
                  xor          s0, s10, t5
                  slt          a5, a4, s11
                  srli         s0, t6, 11
                  sra          a6, zero, s0
sub_2_j8:         jalr         t1, a3, -748 #jump sub_2 -> sub_6
                  bgeu         zero, s2, 9f
                  srli         s7, ra, 24
                  beq          s9, tp, 9f
                  xor          s0, a5, t3
                  sltiu        a7, s0, -440
                  xori         t2, t4, 1177
                  bne          a5, s6, 7f
7:                auipc        tp, 642090
                  slti         s5, t2, -1356
9:                andi         s8, t6, -304
                  addi         s9, t1, 26
                  addi         s1, s11, -356
                  slti         sp, zero, 585
                  slti         t4, a3, 1939
                  nop
                  sll          a4, sp, t4
                  lw           t1, 4(s2)
                  addi         s2, s2, 32
                  srli         a4, s7, 30
                  and          t4, s5, s5
                  sltiu        a5, s3, 1644
                  nop
83:               addi x27, x6, 1
83:               jalr x27, x27, 0
sub_3:            sltiu        s10, s11, -1980
                  andi         t0, a3, -1050
                  auipc        ra, 599060
                  addi         s2, s2, -40
                  sltu         s0, s11, t4
                  sw           t1, 4(s2)
                  sub          s10, a3, a3
                  xori         s6, t6, 444
                  nop
                  ori          s11, tp, 1183
                  la           sp, region_1+1908 #start riscv_load_store_rand_instr_stream_21
                  srl          t4, s7, zero
                  lbu          s11, -983(sp)
                  add          t2, t6, sp
                  sll          t0, t1, t6
                  lbu          gp, -1586(sp)
                  lb           s5, -976(sp)
                  xor          s8, t3, s0
                  lbu          t2, 18(sp)
                  lbu          s1, -1049(sp)
                  or           t4, s8, ra
                  sra          a3, a5, gp
                  sh           s6, -472(sp)
                  slt          t2, sp, s6
                  sh           a1, -1636(sp)
                  lhu          s7, -886(sp)
                  srai         s9, gp, 5
                  sltiu        s3, a3, -1330
                  lhu          t2, -570(sp)
                  add          s11, t6, s2
                  lb           a7, -640(sp)
                  lbu          gp, -1767(sp)
                  sb           s8, -1563(sp)
                  lhu          t2, -554(sp)
                  lhu          a0, -34(sp)
                  lbu          s0, -1155(sp)
                  lh           s5, -1452(sp)
                  sb           s6, -951(sp)
                  lbu          tp, -399(sp)
                  sb           s8, -689(sp)
                  lb           t6, 45(sp)
                  lb           a5, -1057(sp)
                  and          s9, s2, s9
                  addi         s0, zero, -1304
                  lh           t3, -64(sp)
                  srli         t4, s1, 30
                  lbu          tp, -51(sp) #end riscv_load_store_rand_instr_stream_21
                  la           a3, region_0+1093 #start riscv_load_store_rand_instr_stream_7
                  slt          s11, s11, s0
                  sra          s9, gp, s0
                  sb           a6, -12(a3)
                  lb           sp, 0(a3)
                  sb           a5, -10(a3)
                  sb           a4, -2(a3)
                  ori          t6, t2, -1322
                  lb           ra, -14(a3)
                  slti         a1, s11, 1603
                  sw           s8, 7(a3)
                  slt          t3, a3, a6
                  or           s4, a5, s8
                  sh           a3, -11(a3)
                  srl          t3, sp, a6
                  sra          t0, tp, s2
                  sltiu        s5, s5, 262
                  lb           s9, 16(a3)
                  lb           s1, -2(a3)
                  lb           t3, -2(a3)
                  sb           s5, 6(a3)
                  srli         s5, t1, 30
                  slti         t2, zero, -1947
                  lbu          a5, -11(a3)
                  slt          s7, t3, t4
                  sltiu        t2, ra, -373
                  lhu          a5, -15(a3)
                  xori         t2, t5, 349
                  sub          t4, s0, a2
                  xori         a7, ra, 1576
                  lb           s10, 4(a3)
                  add          t6, t4, ra
                  slti         a7, s7, 572
                  or           gp, t0, t4
                  lui          t0, 653323
                  slt          gp, s0, a2
                  auipc        t1, 216345
                  sb           s8, 8(a3)
                  auipc        ra, 956254
                  nop
                  lb           t6, 5(a3) #end riscv_load_store_rand_instr_stream_7
                  la           tp, region_1+1346 #start riscv_load_store_rand_instr_stream_14
                  ori          zero, a5, 1776
                  xori         t3, gp, 196
                  lbu          s9, -1344(tp)
                  slli         gp, a6, 21
                  sb           s9, -477(tp)
                  lh           a6, 116(tp)
                  xori         s1, s8, -925
                  sltiu        s7, a5, 997
                  slt          t0, t2, t0
                  slli         a5, a0, 31
                  ori          s4, t2, -1062
                  slti         t1, t5, -406
                  sw           s5, -990(tp)
                  lui          t6, 812807
                  sra          s3, s10, tp
                  nop
                  slt          t3, s10, a2
                  lui          a1, 266834
                  add          t2, s8, a5
                  lb           s5, 16(tp)
                  slti         s4, zero, -1798
                  sll          s0, s11, t2
                  slti         t2, t4, 868
                  lbu          gp, -1196(tp)
                  xori         a1, a3, 1297
                  ori          s10, gp, -1890
                  lw           s6, 422(tp)
                  lbu          s8, -567(tp)
                  add          s1, a4, a0
                  sh           s1, -676(tp)
                  srai         t2, a5, 1
                  and          t4, a5, a7
                  sb           s10, -823(tp)
                  nop
                  ori          s0, s10, 391
                  slli         a5, a7, 11
                  lw           s3, -446(tp)
                  slt          a6, s11, s11
                  sb           s10, 601(tp)
                  sll          s4, a2, t3
                  lbu          s8, -661(tp)
                  lb           s1, -1197(tp)
                  sh           ra, -958(tp)
                  xori         gp, a6, 112
                  xor          s9, a4, s7
                  sh           s9, -294(tp) #end riscv_load_store_rand_instr_stream_14
                  la           a7, region_0+248 #start riscv_load_store_rand_instr_stream_3
                  add          s1, s9, s9
                  sub          t4, t4, t5
                  andi         t6, zero, 1281
                  lbu          sp, 33(a7)
                  sub          a4, s2, s6
                  lb           s10, 239(a7)
                  lbu          s9, 128(a7)
                  ori          s0, s8, -416
                  sll          s1, s6, s9
                  lb           s3, -136(a7)
                  lb           t3, -175(a7)
                  xor          t4, zero, a1
                  sra          s6, gp, a7
                  lb           s10, -207(a7)
                  or           s0, gp, sp
                  slli         s1, s5, 3
                  lb           s11, 247(a7)
                  srl          s3, s2, t6
                  ori          t0, t4, 278
                  lb           t6, -157(a7)
                  lbu          t3, -35(a7)
                  lbu          s7, 55(a7)
                  and          s7, t4, t0
                  sb           ra, -115(a7)
                  slt          a5, zero, t3
                  add          t2, a1, s6
                  slt          zero, a5, a5
                  lb           s1, -247(a7)
                  sltiu        t6, a7, -45
                  nop
                  lb           t0, 184(a7)
                  sub          t4, t4, a0
                  lb           zero, -126(a7)
                  lb           zero, 25(a7)
                  sub          a3, a3, s3
                  sw           t2, 28(a7)
                  lbu          a1, -225(a7)
                  slli         sp, t5, 8
                  lh           s0, 172(a7)
                  and          a1, s5, a1
                  and          t2, t3, a5
                  slt          a1, a4, a7
                  slt          a4, t6, a7
                  addi         s8, s5, 1116
                  sltiu        a3, t5, -1219
                  sh           s11, -122(a7)
                  ori          s0, ra, 1997
                  or           t2, t0, s7
                  lb           s11, -246(a7)
                  lh           s0, -90(a7)
                  slli         gp, a7, 26
                  lb           s5, 215(a7) #end riscv_load_store_rand_instr_stream_3
                  la           a5, region_1+1916 #start riscv_load_store_rand_instr_stream_29
                  sw           t3, 12(a5)
                  lui          s7, 694914
                  srai         t6, s11, 12
                  lbu          zero, 29(a5)
                  lb           a7, -58(a5)
                  lbu          s5, -50(a5)
                  srai         t3, sp, 19
                  lb           zero, 15(a5)
                  lb           s3, 19(a5)
                  lbu          s1, 18(a5)
                  sra          s3, s6, s2
                  or           t0, s2, s5
                  lb           tp, -5(a5)
                  lb           s8, -42(a5)
                  xori         s5, s3, 604
                  sll          gp, t5, a6
                  sb           a4, -20(a5)
                  lbu          s8, 44(a5)
                  lb           t6, -47(a5)
                  lbu          a1, -19(a5)
                  sh           tp, -30(a5)
                  sub          tp, a4, a6
                  lb           t2, -5(a5)
                  xor          s9, a3, a5
                  lbu          ra, -26(a5)
                  lbu          t4, -29(a5)
                  lbu          t4, 43(a5)
                  sll          s4, s0, a1
                  lbu          a1, 1(a5)
                  lb           s10, -47(a5)
                  lb           s1, -14(a5)
                  srl          s1, s10, t5
                  add          s1, t1, t6
                  srai         tp, s6, 10
                  nop
                  sb           a6, 16(a5)
                  xori         a4, s10, -690
                  nop
                  ori          a7, a3, 246
                  lb           gp, 26(a5)
                  lb           zero, -47(a5)
                  lb           s8, 40(a5)
                  lh           t3, 40(a5)
                  lbu          s9, 5(a5) #end riscv_load_store_rand_instr_stream_29
                  la           t2, region_0+311 #start riscv_load_store_rand_instr_stream_13
                  or           a5, a7, s4
                  addi         a4, a0, 1260
                  slti         s5, s9, 102
                  sub          a3, s5, a5
                  sb           s0, 216(t2)
                  lh           t4, -161(t2)
                  lb           a4, 92(t2)
                  addi         a6, s3, 1437
                  lw           s6, -27(t2)
                  lhu          s10, 157(t2)
                  lb           ra, -53(t2)
                  sub          zero, a7, s1
                  lui          zero, 775351
                  slti         s0, s6, 836
                  srl          ra, a4, t5
                  lb           t0, -180(t2)
                  or           a6, a4, t5
                  sltu         t4, a3, a2
                  lui          s5, 348513
                  srl          s6, gp, a5
                  sub          t6, a3, s0
                  sb           t1, 222(t2)
                  sll          ra, s6, a0
                  addi         zero, sp, -1392
                  srai         s6, tp, 10
                  and          s0, t3, s2
                  slti         s1, t5, 1091
                  srl          s6, s0, s9
                  lui          s11, 947042
                  sltu         t4, a1, a7
                  sb           s6, 144(t2)
                  lh           s11, -227(t2) #end riscv_load_store_rand_instr_stream_13
                  la           t0, region_1+1468 #start riscv_load_store_rand_instr_stream_22
                  lw           s7, 380(t0)
                  ori          t1, t3, 1648
                  srli         t3, t3, 31
                  srl          a0, s10, s9
                  auipc        s1, 370297
                  sltu         s6, s10, t6
                  ori          gp, a3, 185
                  lbu          s6, -788(t0)
                  slli         s0, tp, 17
                  sll          s8, a2, a7
                  add          s9, sp, s11
                  andi         a6, a7, 1613
                  srai         s8, gp, 20
                  sltu         a3, t4, s4
                  lhu          s1, 442(t0)
                  xori         s11, s9, -979
                  lui          s6, 598308
                  srai         ra, a5, 13
                  sb           a1, 162(t0)
                  sll          s6, a0, s1
                  xori         s7, zero, 1518
                  sh           a6, -956(t0)
                  lbu          s7, 98(t0)
                  addi         a5, a7, 574
                  srli         t3, s4, 7
                  lb           a4, 394(t0)
                  ori          a4, s2, -1860
                  lb           s11, -723(t0)
                  lui          s6, 501048
                  sb           s8, -1049(t0)
                  or           s3, t2, t6
                  lbu          a7, 416(t0)
                  nop
                  lui          t3, 997098
                  add          s7, tp, a3
                  sb           ra, -1351(t0)
                  add          t1, a2, a4
                  srli         t4, s2, 7
                  lbu          s10, -1345(t0)
                  lui          t3, 210164
                  lb           ra, -1311(t0)
                  sltiu        a4, gp, -389
                  xori         s4, s7, -16
                  sh           s9, -1150(t0) #end riscv_load_store_rand_instr_stream_22
                  la           gp, region_0+384 #start riscv_load_store_rand_instr_stream_1
                  lbu          s5, -15(gp)
                  lui          s10, 733369
                  lb           t3, 40(gp)
                  sh           ra, 10(gp)
                  and          a1, s4, s7
                  sb           s6, -59(gp)
                  lb           t1, -7(gp)
                  add          a5, sp, s2
                  and          sp, s1, s0
                  lb           a0, 53(gp)
                  xor          t2, a6, sp
                  lb           a5, -18(gp)
                  slt          a3, s11, a0
                  sb           s8, 45(gp)
                  lb           s1, 1(gp)
                  sra          s8, tp, s11
                  sltiu        t1, s11, 1974
                  addi         a6, a6, -435
                  sll          a7, a6, a0
                  ori          t6, t4, 1425
                  and          zero, s11, s3
                  xori         a7, t4, 641
                  lbu          tp, 39(gp)
                  xor          t3, t3, gp
                  slti         a5, s7, -2021
                  andi         s7, s1, 384
                  xori         s3, a1, 923
                  lbu          s1, -25(gp)
                  auipc        s8, 464279
                  and          t1, t6, a6
                  lui          s11, 70471
                  lbu          t3, 55(gp)
                  lb           ra, -57(gp)
                  srl          s3, a5, t5
                  sw           a1, 44(gp)
                  lb           s8, 42(gp)
                  andi         t2, t3, 209
                  lbu          t3, 17(gp)
                  add          zero, a3, t5
                  xori         s10, s6, -732
                  lb           s4, -61(gp) #end riscv_load_store_rand_instr_stream_1
                  la           a7, region_1+1779 #start riscv_load_store_rand_instr_stream_33
                  auipc        s5, 8858
                  lbu          gp, -1596(a7)
                  lb           s6, 6(a7)
                  lbu          ra, -156(a7)
                  sub          t0, s1, s11
                  slli         t6, s3, 28
                  sb           s7, -192(a7)
                  ori          ra, s11, -781
                  slli         s5, s10, 30
                  xori         a0, sp, -729
                  sb           s2, -1524(a7)
                  ori          a6, s1, 776
                  srai         s1, a1, 1
                  srl          s8, s8, t3
                  slti         s10, t2, 1011
                  lh           tp, -1173(a7)
                  lb           s1, 220(a7)
                  lbu          a0, -1487(a7)
                  lui          t6, 716916
                  lw           a4, 13(a7)
                  slt          a5, s9, a6
                  lbu          t2, 70(a7)
                  lhu          a0, -819(a7)
                  xori         a4, a1, -1975
                  slti         a0, a6, -1590
                  sra          t4, s8, gp
                  lbu          s1, -1520(a7)
                  sltu         zero, s11, s0
                  or           s9, a5, a1
                  srai         a4, a4, 19
                  sb           zero, -1066(a7) #end riscv_load_store_rand_instr_stream_33
                  la           t6, region_0+1740 #start riscv_load_store_rand_instr_stream_11
                  sh           a6, -12(t6)
                  lbu          s1, 3(t6)
                  sb           zero, -9(t6)
                  sh           a1, -12(t6)
                  lb           a1, -1(t6)
                  sw           ra, -16(t6)
                  lb           t4, -11(t6)
                  auipc        s0, 1028491
                  or           a4, s8, a7
                  sb           a2, 16(t6)
                  sb           a7, 1(t6)
                  xori         t0, ra, 253
                  slli         t1, a5, 0
                  lb           a0, -9(t6)
                  slti         a1, t1, -1640
                  lbu          s3, -15(t6)
                  slli         sp, a1, 6
                  lb           ra, 3(t6)
                  srai         s3, t3, 26
                  xori         t2, s3, -918
                  sll          ra, t4, a0
                  lb           s7, 14(t6)
                  slti         gp, s0, 1164
                  addi         s0, s2, 1458
                  add          a7, a6, a1
                  and          t3, a6, s10
                  auipc        a4, 831093
                  srai         s6, tp, 3
                  slti         a7, t6, -1815
                  auipc        a6, 135378
                  and          a3, t1, t4
                  lbu          s3, -13(t6)
                  ori          a7, t4, -574
                  xor          a7, s4, zero
                  lw           zero, 0(t6)
                  addi         t1, s6, -1768
                  or           s8, a6, t6
                  sb           s4, 7(t6)
                  sh           t4, -16(t6)
                  sltu         t1, a0, gp
                  nop
                  lb           a6, -16(t6)
                  xori         s4, ra, -1266
                  lh           t2, -14(t6)
                  sb           s4, -3(t6)
                  sltu         t1, a5, s11
                  lh           t0, -14(t6)
                  sub          s5, s8, s1
                  lbu          s4, -1(t6)
                  auipc        s9, 260419
                  sltu         t4, ra, s10
                  srli         a7, a3, 8
                  lb           t3, 14(t6) #end riscv_load_store_rand_instr_stream_11
                  la           a6, region_0+1700 #start riscv_load_store_rand_instr_stream_6
                  lb           s7, 3(a6)
                  lb           t3, 4(a6)
                  lbu          s10, 2(a6)
                  slti         a0, tp, 1550
                  andi         zero, t0, 167
                  srli         ra, t3, 20
                  lb           a0, 15(a6)
                  andi         t6, a2, 471
                  sub          s0, t2, t4
                  lbu          s3, 9(a6)
                  sb           a6, -16(a6)
                  lh           s3, 2(a6)
                  lb           tp, 16(a6)
                  and          gp, ra, a5
                  lbu          s6, 11(a6)
                  xori         a5, t5, -1881
                  lbu          t1, 12(a6)
                  sra          s11, ra, s2
                  sb           a4, 11(a6)
                  srli         sp, s3, 14
                  and          a0, s4, s2
                  and          t3, gp, a2
                  sw           a4, -8(a6)
                  lbu          s5, -3(a6)
                  lui          s6, 850339
                  add          t0, s9, t3
                  lh           t0, -6(a6)
                  xori         s11, s6, -587
                  lh           gp, -14(a6)
                  sb           s2, 0(a6)
                  lb           t1, 11(a6)
                  sb           s7, 10(a6)
                  lb           a7, -16(a6) #end riscv_load_store_rand_instr_stream_6
                  la           ra, region_0+845 #start riscv_load_store_rand_instr_stream_4
                  sra          a5, s6, t4
                  sb           s10, 341(ra)
                  lbu          t3, 759(ra)
                  addi         a1, t5, 1570
                  sb           tp, 18(ra)
                  lbu          s10, 988(ra)
                  sb           gp, 5(ra)
                  lb           sp, -666(ra)
                  sltiu        s4, s1, 336
                  lhu          s9, -245(ra)
                  xor          gp, tp, t6
                  sltiu        s5, s11, 900
                  sh           zero, 79(ra)
                  lbu          sp, -632(ra)
                  srai         s7, s10, 25
                  addi         s3, s1, -997
                  sltu         tp, a7, a7
                  sb           a7, 1073(ra)
                  srl          s0, t4, s3
                  srli         a7, s11, 30
                  sb           a0, 998(ra)
                  nop
                  sb           a2, -778(ra)
                  sll          t1, s0, sp
                  lbu          t1, 377(ra)
                  add          sp, gp, a5
                  sh           a0, -219(ra)
                  lbu          zero, 476(ra) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_0+1340 #start riscv_load_store_rand_instr_stream_5
                  sra          ra, s4, sp
                  lbu          s6, -151(sp)
                  xori         s6, a0, 1093
                  xori         t0, t3, -1292
                  sra          a6, zero, a4
                  xori         t4, tp, 1492
                  sw           s4, -144(sp)
                  slti         t3, s6, -2027
                  slt          s9, t2, t6
                  lbu          s9, 9(sp)
                  xor          a6, t6, s0
                  lb           zero, -161(sp)
                  xor          zero, s7, sp
                  slli         ra, s3, 4
                  add          a5, sp, gp
                  srli         s9, s6, 31
                  sll          s11, t6, a3
                  lbu          t3, -127(sp)
                  xor          s5, a5, s4
                  add          a0, a4, s6
                  lhu          s10, -154(sp)
                  srai         t0, t4, 28
                  srli         s6, t3, 14
                  lb           a4, -195(sp)
                  lb           a7, -138(sp)
                  sw           s2, 160(sp)
                  xor          zero, s8, a4
                  srli         t3, a3, 5
                  slt          t3, t1, t5
                  lbu          s6, -131(sp)
                  lh           s11, -176(sp)
                  sll          s3, a0, ra
                  xori         s4, a2, 913
                  xor          s5, t1, a2
                  srl          zero, t0, s3
                  srli         s8, ra, 2
                  lbu          s6, -38(sp)
                  slt          s3, ra, s4
                  lb           gp, -79(sp)
                  sb           s11, -67(sp)
                  sb           s2, 193(sp) #end riscv_load_store_rand_instr_stream_5
                  la           ra, region_0+725 #start riscv_load_store_rand_instr_stream_30
                  sh           s4, -3(ra)
                  xor          s1, a1, t0
                  xor          t3, s11, t2
                  lb           s10, -4(ra)
                  xor          t4, a4, t5
                  add          s7, s9, a6
                  auipc        a4, 391742
                  and          t0, a0, s4
                  auipc        s8, 232471
                  slt          a6, s9, a4
                  lhu          s5, 9(ra)
                  lh           a6, -13(ra)
                  lb           t4, -15(ra)
                  sh           s6, -7(ra)
                  sll          s10, sp, a7
                  lbu          s10, 7(ra)
                  andi         t2, s2, 1579
                  lbu          t6, 9(ra)
                  and          s8, a7, s0
                  lhu          t1, -7(ra)
                  slli         a5, s5, 27
                  lbu          a0, 8(ra)
                  slt          t1, a1, sp
                  lb           a1, -12(ra)
                  add          tp, t2, a0
                  lbu          s0, -8(ra)
                  sltiu        gp, t4, -1666
                  lb           t1, 16(ra)
                  lb           a1, -3(ra)
                  lhu          tp, -13(ra)
                  ori          zero, a7, -1552
                  xor          s0, ra, a2
                  sb           t1, 1(ra)
                  addi         s7, s1, 614
                  lw           s9, 15(ra) #end riscv_load_store_rand_instr_stream_30
                  la           sp, region_0+1716 #start riscv_load_store_rand_instr_stream_9
                  or           a0, t6, a2
                  sub          s8, s1, a7
                  lbu          tp, 5(sp)
                  lui          zero, 770010
                  sb           a3, -16(sp)
                  sb           a5, 11(sp)
                  srl          a5, a6, s7
                  slti         s9, s7, -1673
                  lbu          s11, 7(sp)
                  lhu          a5, -8(sp)
                  auipc        a5, 251261
                  slti         ra, s3, 1301
                  addi         s9, s5, 260
                  sb           t4, 13(sp)
                  lbu          a4, 3(sp)
                  sltiu        s8, a0, 1599
                  srai         gp, s10, 25
                  lb           s8, -9(sp)
                  or           t4, s9, t0
                  lw           gp, 4(sp)
                  nop
                  lb           s10, -10(sp)
                  lbu          t1, 3(sp)
                  sll          zero, t0, t2
                  lbu          s4, 7(sp)
                  sltiu        t4, gp, -1878
                  lbu          t2, 15(sp)
                  lb           t2, -2(sp)
                  ori          s11, s6, -1467
                  xori         s1, s4, 388
                  xori         a1, t5, -485
                  lbu          a3, 1(sp)
                  sh           s9, 2(sp)
                  lb           t4, 16(sp)
                  sltiu        s6, s0, 893
                  lb           s3, 1(sp)
                  sb           a6, 14(sp)
                  srli         t1, ra, 28
                  lbu          t1, 15(sp)
                  lbu          t0, 14(sp)
                  sb           t4, 15(sp)
                  sll          tp, s10, a1
                  xori         t0, s6, 1057
                  xor          s10, s11, t1
                  ori          a1, t3, 249
                  lh           a1, 14(sp)
                  sll          t1, a7, s9
                  srl          s0, s11, s7
                  srli         s9, s3, 15
                  slti         s6, t0, 813
                  slt          a0, t0, t6
                  lhu          s4, 2(sp)
                  lb           a7, 1(sp) #end riscv_load_store_rand_instr_stream_9
                  la           s8, region_0+892 #start riscv_load_store_rand_instr_stream_17
                  xor          gp, ra, t6
                  lbu          t4, 60(s8)
                  srli         a4, sp, 24
                  lbu          s3, -35(s8)
                  sh           s5, -34(s8)
                  srli         a3, t4, 20
                  slli         s11, s4, 21
                  xor          sp, a1, t0
                  lb           s1, 51(s8)
                  xori         t6, s4, 160
                  lb           tp, 60(s8)
                  nop
                  sltu         s11, s2, a7
                  sltiu        gp, t5, 478
                  slti         s1, s0, -80
                  lbu          s0, 25(s8)
                  sll          a6, t4, t4
                  ori          s3, a4, 1753
                  lh           a7, -32(s8)
                  auipc        a5, 339247
                  srl          a6, s3, s10
                  sb           a5, -49(s8)
                  lbu          t4, 57(s8)
                  sltu         ra, a7, t3
                  sh           s2, -30(s8)
                  sb           t1, 28(s8) #end riscv_load_store_rand_instr_stream_17
                  la           sp, region_0+706 #start riscv_load_store_rand_instr_stream_27
                  slti         s7, s4, 56
                  lb           ra, -24(sp)
                  slti         t3, t4, -1139
                  andi         s11, s5, -312
                  sb           t2, -51(sp)
                  lhu          t3, -50(sp)
                  sb           s7, 59(sp)
                  xor          a3, t1, s9
                  srai         s7, gp, 31
                  lh           tp, -48(sp)
                  srai         t3, t3, 15
                  lb           s11, -46(sp)
                  sltu         t0, s5, s8
                  srai         s4, t2, 7
                  lui          t4, 259615
                  ori          a1, zero, -1314
                  sb           a0, -1(sp)
                  lhu          gp, -48(sp)
                  sb           s5, -61(sp)
                  lui          a3, 54619
                  auipc        t1, 741504
                  lb           a5, -49(sp)
                  lb           t2, -7(sp)
                  sb           ra, 11(sp)
                  lw           s1, -30(sp)
                  lb           t3, -21(sp)
                  nop
                  srli         s7, sp, 25
                  srli         a5, ra, 20
                  sltu         t6, t2, t6
                  srl          t2, t2, a2
                  ori          t0, s11, 1585
                  addi         a6, s0, -1048
                  sb           a0, -5(sp)
                  sltiu        t6, t6, 217
                  sub          t3, ra, s7
                  sb           t5, 57(sp)
                  sb           a1, 27(sp)
                  addi         s9, t4, 276
                  xor          a5, a7, s0
                  lb           t0, 39(sp)
                  slt          tp, a0, ra
                  or           s11, s6, a2
                  lhu          a1, 58(sp)
                  nop
                  andi         a3, a3, 1483
                  lb           s1, 54(sp)
                  lb           s9, -28(sp)
                  sb           a7, -33(sp)
                  add          t6, t3, s1
                  sh           s9, 0(sp)
                  lui          a4, 546706
                  lb           s3, 43(sp) #end riscv_load_store_rand_instr_stream_27
                  la           sp, region_0+620 #start riscv_load_store_rand_instr_stream_19
                  auipc        a6, 931402
                  lbu          s4, -5(sp)
                  xori         t6, t3, -752
                  xor          ra, zero, s3
                  lbu          a3, -2(sp)
                  lhu          s9, 6(sp)
                  auipc        ra, 601540
                  xor          t0, a2, s6
                  xor          a0, s3, t6
                  andi         a7, s0, -1196
                  srli         t3, gp, 12
                  slti         a3, a2, 1224
                  sb           s9, -6(sp)
                  lbu          a7, 15(sp)
                  add          ra, t5, t2
                  lb           s6, -11(sp)
                  slt          t1, gp, s7
                  auipc        a1, 594090
                  lbu          gp, -7(sp)
                  add          s10, a3, s8
                  xori         s5, a0, -2036
                  slli         s7, s4, 13
                  slli         zero, zero, 9
                  nop
                  sub          s7, a5, s4
                  or           zero, s11, s3
                  srl          t6, s2, sp
                  sltu         s11, t3, a2
                  sb           s8, -8(sp)
                  slli         s4, t6, 7
                  sb           a2, -15(sp)
                  nop
                  sll          a4, a2, a3
                  ori          s0, gp, -844
                  lh           gp, 12(sp)
                  sra          s8, t4, a0
                  sb           t0, -3(sp)
                  sw           t5, 16(sp)
                  srai         t4, zero, 10
                  xori         t0, a7, 1513
                  addi         s4, t3, -1838
                  or           s4, s10, t3
                  sb           a6, -8(sp)
                  lb           s7, -12(sp) #end riscv_load_store_rand_instr_stream_19
                  la           t2, region_1+111 #start riscv_load_store_rand_instr_stream_31
                  sb           s2, 150(t2)
                  ori          s11, s0, -1883
                  sb           t3, 749(t2)
                  lb           s7, 1013(t2)
                  lbu          t4, 1818(t2)
                  lbu          s0, 1587(t2)
                  lhu          s11, 1199(t2)
                  slti         s5, a7, -562
                  lh           a7, 1613(t2)
                  lbu          a7, 355(t2)
                  lbu          s6, 1438(t2)
                  srli         ra, s2, 5
                  lbu          s7, 220(t2)
                  auipc        s5, 913959
                  lb           tp, 960(t2)
                  sb           s0, 1886(t2)
                  lb           t3, 88(t2)
                  lbu          s7, 294(t2)
                  lw           s8, 1601(t2)
                  slli         s5, t5, 5
                  sb           t4, 1822(t2)
                  sb           s7, 1195(t2)
                  sra          s1, s9, gp
                  xori         s5, t1, -1024
                  sb           s10, 714(t2)
                  auipc        t4, 221581
                  sh           a3, 831(t2)
                  andi         a6, a7, -1916
                  lbu          s9, 570(t2)
                  lb           gp, 199(t2)
                  sb           s2, 494(t2)
                  slli         s10, s1, 5
                  lb           s8, 321(t2)
                  sw           tp, 829(t2)
                  sb           s0, 232(t2)
                  sltiu        s9, s8, -260
                  lbu          s9, 635(t2)
                  sb           s3, 220(t2)
                  lbu          a5, 1020(t2)
                  or           t0, s0, t2
                  lb           s9, 1356(t2) #end riscv_load_store_rand_instr_stream_31
                  la           s6, region_1+1675 #start riscv_load_store_rand_instr_stream_20
                  add          tp, a2, s6
                  sub          s4, a1, a5
                  lb           a0, -6(s6)
                  andi         zero, s0, 1869
                  srai         t4, a7, 29
                  lbu          s11, 2(s6)
                  srai         s5, a3, 24
                  ori          sp, tp, -1749
                  srli         s5, a2, 27
                  lbu          a7, -6(s6)
                  lh           t3, -9(s6)
                  sltu         t4, s3, t6
                  lbu          t3, -16(s6)
                  sb           a2, 6(s6)
                  lh           a5, -9(s6)
                  auipc        tp, 527706
                  auipc        ra, 79205
                  srl          a4, zero, s1
                  lbu          sp, -2(s6)
                  srai         t6, s6, 4
                  lh           s9, -1(s6)
                  sb           t5, -8(s6)
                  slti         a4, t2, -1586
                  sltiu        s7, s3, 331
                  xori         t6, a5, 757
                  sltiu        gp, s0, 2034
                  lb           a0, -6(s6)
                  lw           s0, -11(s6) #end riscv_load_store_rand_instr_stream_20
                  la           sp, region_0+1082 #start riscv_load_store_rand_instr_stream_2
                  ori          s6, a4, 1030
                  addi         gp, s4, -631
                  sra          ra, a5, t6
                  lh           a1, 224(sp)
                  srl          a1, t6, a3
                  slli         a0, tp, 21
                  lw           tp, -162(sp)
                  lh           ra, 166(sp)
                  add          s11, a2, zero
                  lbu          a4, 123(sp)
                  addi         tp, a1, 437
                  and          s5, s6, s9
                  add          s11, s2, a4
                  slti         a0, a2, 335
                  lbu          s4, -118(sp)
                  sb           zero, 246(sp)
                  add          s11, s10, s2
                  lbu          t4, -240(sp)
                  lbu          s0, 181(sp)
                  lb           a5, -46(sp)
                  xori         t1, t5, 378
                  xor          s0, a5, s4
                  slt          s1, a2, s7
                  or           zero, tp, a3
                  lb           t6, -173(sp)
                  xori         s11, s3, -1122
                  slli         t1, s10, 21
                  srli         t3, s3, 27
                  sub          t0, a7, s9
                  sb           s6, -105(sp)
                  srli         t6, s0, 22
                  lh           s4, -16(sp)
                  sltiu        t6, sp, 1421
                  sltu         t2, s8, s8
                  lui          a5, 458486
                  slti         s7, a4, -944
                  lb           t3, 217(sp)
                  lb           s1, -21(sp)
                  lhu          s9, 204(sp)
                  lw           s10, -182(sp)
                  sra          s0, a1, sp
                  sh           t6, -104(sp)
                  sltiu        s10, s7, -1778
                  lui          ra, 538211
                  auipc        a0, 643842
                  sb           s9, -1(sp) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+1411 #start riscv_load_store_rand_instr_stream_8
                  lb           t6, -250(sp)
                  slt          s0, t1, t6
                  addi         gp, s1, 1701
                  lh           s7, -79(sp)
                  add          a0, s4, t4
                  add          a4, s8, a7
                  lb           s0, -149(sp)
                  lh           s1, -13(sp)
                  lhu          s1, -209(sp)
                  lui          gp, 490033
                  xori         s0, gp, 496
                  xori         a6, a6, -827
                  lui          t6, 31141
                  lbu          t3, -238(sp)
                  andi         a3, zero, -986
                  lui          s4, 104256
                  lhu          gp, -75(sp)
                  sh           t6, 199(sp)
                  lb           s8, 48(sp)
                  sb           s5, 132(sp)
                  sb           s11, 49(sp)
                  sb           s8, -67(sp)
                  ori          s7, s11, -1387
                  sb           s5, -222(sp)
                  srl          t0, s11, tp
                  sltu         t1, tp, zero
                  xori         s1, t0, -1132
                  sb           s7, 90(sp)
                  or           s6, s5, t2
                  sb           s1, 20(sp)
                  lhu          s7, 23(sp) #end riscv_load_store_rand_instr_stream_8
                  la           s5, region_1+5 #start riscv_load_store_rand_instr_stream_15
                  slti         t4, a4, -1043
                  addi         t0, s4, 751
                  xor          s10, gp, a3
                  sb           a6, 158(s5)
                  sb           t5, 237(s5)
                  lbu          t4, 2(s5)
                  or           gp, t2, a3
                  lb           t6, 157(s5)
                  lw           s11, 119(s5)
                  srli         a4, a3, 30
                  sb           a4, 145(s5)
                  sltu         s6, t4, t0
                  sb           t1, 78(s5)
                  lb           a7, 6(s5)
                  sltiu        s11, s9, -1795
                  slt          a0, t1, sp
                  lb           s4, -4(s5)
                  sh           gp, 219(s5)
                  add          t2, zero, s6
                  sra          gp, s11, s6
                  add          ra, s10, a5
                  lhu          sp, 1(s5)
                  sw           t6, 11(s5)
                  srli         a1, s5, 20
                  sb           a5, 96(s5)
                  lb           a1, 160(s5)
                  sb           a0, 196(s5)
                  addi         a3, s10, -451
                  slli         a6, s6, 31
                  or           s11, a4, s0
                  srai         s4, gp, 6
                  xor          s8, s10, a3
                  lbu          s4, 179(s5)
                  nop
                  and          ra, s10, s4
                  sb           t3, 89(s5)
                  sb           s0, 209(s5)
                  lui          tp, 919054
                  add          t6, t2, s2
                  andi         s4, t0, -392
                  nop
                  lbu          s9, 114(s5)
                  auipc        t4, 772123
                  slt          s6, s2, a1
                  lbu          s1, 108(s5) #end riscv_load_store_rand_instr_stream_15
                  la           s11, region_1+93 #start riscv_load_store_rand_instr_stream_0
                  sltu         gp, a4, t5
                  sra          s3, t2, s5
                  lhu          gp, -15(s11)
                  lbu          s5, 6(s11)
                  srai         s4, tp, 24
                  sll          sp, a4, a0
                  sb           a2, 1(s11)
                  sb           tp, -8(s11)
                  addi         t1, sp, 12
                  lb           a5, -12(s11)
                  sltu         s9, t2, t4
                  sub          t3, s0, a5
                  srli         t0, s7, 20
                  lb           zero, -16(s11)
                  sltu         gp, s3, t3
                  srai         gp, s8, 10
                  sb           t6, -4(s11)
                  lbu          t4, 7(s11)
                  nop
                  sub          a5, a2, zero
                  sb           t5, 10(s11)
                  sw           s8, 3(s11)
                  lbu          a6, 12(s11)
                  sll          zero, s4, a6
                  auipc        s1, 315450
                  lhu          s5, -9(s11)
                  sb           ra, -15(s11)
                  sb           s5, 15(s11)
                  sb           t1, 14(s11)
                  lbu          s10, -14(s11)
                  auipc        t6, 137579
                  lb           s3, -8(s11) #end riscv_load_store_rand_instr_stream_0
                  la           gp, region_1+68 #start riscv_load_store_rand_instr_stream_16
                  xor          s6, s4, a0
                  sb           s5, 15(gp)
                  sh           gp, 2(gp)
                  srl          s10, zero, a6
                  lbu          s1, -4(gp)
                  sb           t2, -9(gp)
                  lbu          t3, 7(gp)
                  slli         t3, a7, 25
                  ori          a6, zero, 1480
                  sltiu        a7, gp, 129
                  sh           s1, 8(gp)
                  lbu          a4, 10(gp)
                  addi         zero, t0, 494
                  lb           a6, -2(gp)
                  lbu          t0, 15(gp)
                  xori         t1, t6, 2010
                  lb           t0, -5(gp)
                  lbu          t6, -11(gp)
                  lhu          s0, 14(gp)
                  sb           s1, -12(gp)
                  lbu          s3, 1(gp)
                  lhu          a1, 14(gp)
                  sb           a2, 13(gp)
                  sub          s4, t3, a0
                  and          s6, s11, s1
                  lb           s0, 15(gp)
                  sh           s4, -6(gp)
                  lhu          t0, 10(gp)
                  lbu          s3, -8(gp)
                  lb           s10, -15(gp)
                  sh           sp, -8(gp)
                  srai         a1, zero, 31
                  lbu          t2, 5(gp)
                  andi         sp, s6, 1159
                  sb           a5, -5(gp)
                  sh           s1, 0(gp)
                  slli         a4, t2, 8
                  srl          t2, s3, a5
                  sb           a7, -4(gp)
                  sb           a6, -15(gp)
                  lh           a7, 12(gp) #end riscv_load_store_rand_instr_stream_16
                  bgeu         s9, zero, 20f
                  add          s9, s2, s2
                  bge          tp, t0, 11f
                  lui          s6, 644626
                  addi         s9, s11, 1604
                  nop
                  srl          a1, t4, s7
                  or           gp, t4, gp
                  bge          t0, gp, 13f
                  andi         a6, t6, 1206
                  slt          t4, t1, ra
11:               sub          t2, a6, a3
                  sra          a0, s0, sp
13:               or           s5, s6, s2
                  xori         s3, a6, 1074
                  srai         t0, s5, 5
                  srli         a3, t5, 7
                  addi         s4, s9, -950
                  auipc        s5, 428524
                  ori          a3, zero, -738
20:               srai         s10, s9, 24
                  slli         t1, s0, 17
                  sub          s3, a0, a0
                  lui          t1, 345583
                  blt          t6, s0, 33f
                  sll          tp, gp, s1
                  bge          t6, t6, 45f
                  lui          s4, 998897
                  sll          tp, ra, s8
                  beq          s6, s3, 30f
30:               bgeu         t5, a5, 35f
                  add          s8, a3, s0
                  and          s10, t6, s6
33:               add          t6, zero, s3
                  nop
35:               srai         a5, zero, 4
                  slt          ra, s10, s1
                  srli         t6, a3, 16
                  xori         zero, tp, -949
                  srl          s7, s6, s3
                  slti         ra, a0, -652
                  slti         s3, t4, 206
                  auipc        s1, 53839
                  auipc        a6, 283327
                  srl          s11, a1, a2
45:               slli         t6, ra, 21
                  bne          s11, gp, 58f
                  srai         a6, tp, 3
                  srl          s9, t5, a5
                  sltiu        s9, zero, -1902
                  bltu         a3, t5, 58f
                  andi         a3, s10, -770
                  sub          t2, s2, a1
                  bltu         t3, ra, 66f
                  beq          s3, s7, 69f
                  sub          a5, t6, t4
                  sll          gp, s10, s0
                  bne          s11, s5, 66f
58:               bne          a5, sp, 66f
                  sub          s1, a6, s0
                  srli         t3, a7, 2
                  slli         t2, t3, 20
                  sltu         s5, gp, s1
                  blt          s1, s1, 65f
                  bgeu         sp, a6, 79f
65:               sltu         zero, s6, a2
66:               xori         s11, t6, 1801
                  bne          a2, t0, 78f
                  bltu         t6, s2, 82f
69:               slti         t3, ra, 66
                  bgeu         t3, t4, 78f
                  slli         a0, t2, 14
                  or           s10, s0, sp
                  sub          s11, s0, a3
                  xor          t1, s3, zero
                  xori         s6, zero, -66
                  lui          zero, 530968
                  sub          a3, t2, tp
78:               slli         sp, a4, 18
79:               and          ra, a5, t3
                  add          s6, zero, s10
                  or           a4, s4, a1
82:               nop
                  and          a1, t3, a3
                  bltu         a5, s8, 95f
                  sltiu        sp, a7, -1789
                  sll          s3, zero, tp
                  srai         t4, gp, 24
                  add          t2, t1, tp
                  slti         t6, ra, -41
                  srl          t4, t2, ra
                  slli         s6, t3, 23
                  addi         s4, t4, 521
                  xor          t3, t1, t2
                  beq          t0, t1, 106f
95:               bge          a1, s2, 98f
                  lui          a6, 270529
                  srai         ra, a2, 1
98:               blt          t3, a3, 113f
                  add          t2, t1, s4
                  nop
                  nop
                  slti         s4, a0, -1061
                  bge          t3, s5, 109f
                  sub          gp, zero, t3
                  sra          gp, s9, s2
106:              beq          a3, t1, 111f
                  add          t4, s10, s8
                  beq          s6, s2, 111f
109:              xor          a6, zero, s8
                  bne          t3, a4, 113f
111:              sll          sp, sp, s2
                  ori          sp, s10, -740
113:              srli         s3, sp, 15
                  auipc        s4, 1032389
                  slt          a7, tp, a2
                  slti         t6, t4, 1414
                  auipc        s9, 33894
                  srli         sp, ra, 7
                  bne          s5, s3, 127f
                  bgeu         a5, t6, 139f
                  srli         zero, a4, 9
                  bne          s11, a0, 127f
                  sub          t1, t2, s10
                  xor          a4, a1, s8
                  addi         t2, a0, 1242
                  bge          s11, s1, 135f
127:              xori         s10, tp, -972
                  addi         a7, s11, 566
                  sra          ra, s2, a3
                  nop
                  blt          a7, gp, 139f
                  slli         t0, s9, 19
                  srl          zero, s11, s3
                  xor          s5, t6, t0
135:              srai         sp, s3, 19
                  bltu         s8, s9, 141f
                  bgeu         a0, t5, 140f
                  beq          s1, s4, 146f
139:              srli         a3, s9, 5
140:              bltu         s6, a4, 145f
141:              sltu         s5, t1, a5
                  sub          s10, a3, t0
                  lui          a0, 708592
                  add          tp, tp, a0
145:              srai         s4, s1, 21
146:              sll          s5, t0, ra
                  slt          s6, t0, a7
                  sltu         s5, s8, gp
                  nop
                  srl          gp, gp, a6
                  xori         t3, s6, -708
                  slli         a6, sp, 31
                  blt          a5, zero, 159f
                  and          s6, a5, t4
                  bltu         gp, a2, 169f
                  xor          t4, a2, s5
                  slli         s0, s10, 9
                  sra          s1, s3, t0
159:              srai         a5, t3, 31
                  bgeu         t5, a1, 163f
                  sub          a6, a2, t5
                  slt          a0, s8, t5
163:              xor          s10, t0, sp
                  sub          gp, s3, s8
                  add          zero, s11, s6
                  sub          a6, t0, sp
                  blt          a1, s7, 172f
                  lui          a7, 927160
169:              slli         s8, t5, 14
                  slti         s0, a2, 972
                  andi         s5, sp, 1294
172:              sub          sp, s5, a1
                  blt          a0, s3, 186f
                  xor          a1, a7, a7
                  sub          a7, t2, s4
                  srai         s10, t4, 12
                  bltu         t4, s8, 179f
                  bge          s2, a0, 190f
179:              beq          a1, t5, 188f
                  sll          t1, t6, gp
                  srli         gp, s5, 25
                  and          sp, s3, gp
                  xor          a6, s6, t1
                  blt          s7, t3, 199f
                  beq          s0, s11, 188f
186:              sub          zero, s10, s10
                  bge          t2, ra, 206f
188:              auipc        zero, 787118
                  and          s1, t0, s2
190:              or           t1, a4, tp
                  srli         t4, s2, 11
                  and          s1, a6, t5
                  sra          t6, s9, a6
                  slt          a3, s8, s3
                  sltiu        a4, ra, 997
                  andi         s6, t1, -1364
                  auipc        a0, 154528
                  nop
199:              andi         t4, s11, 1205
                  slti         s3, s7, 596
                  ori          s5, s4, 1630
                  and          s1, s11, t6
                  or           s10, a0, s1
                  bltu         s0, ra, 209f
                  ori          s8, zero, -707
206:              beq          t5, s8, 215f
                  slt          a7, s10, s3
                  addi         tp, s6, 763
209:              sltiu        s6, s2, 1577
                  auipc        a3, 322213
                  nop
                  or           t3, a0, s8
                  auipc        s7, 440854
                  lui          s4, 751459
215:              and          t0, t2, a2
                  srai         a7, ra, 13
                  addi         a6, a1, -794
                  lui          s9, 278504
                  sll          s7, zero, t1
                  sll          ra, a1, t0
                  lui          t3, 35227
                  srl          a3, zero, s0
                  slt          s7, s4, tp
                  srl          ra, s3, s11
                  and          zero, s2, gp
                  sltiu        t4, a4, 1119
                  slt          t2, s4, tp
                  bge          s7, a2, 236f
                  ori          t1, t6, 1996
                  sra          t3, a3, s7
                  auipc        a1, 185567
                  beq          a3, s3, 243f
                  srli         gp, t0, 6
                  slti         sp, a6, -918
                  beq          zero, s8, 255f
236:              auipc        gp, 318912
                  srl          s11, t2, t2
                  sll          sp, a5, a3
                  blt          gp, t0, 258f
                  xor          t3, s4, t5
                  sll          a5, s0, s10
                  slt          t0, t6, zero
243:              addi         s11, s4, 799
                  srl          a4, s0, s9
                  ori          a1, s10, -791
                  auipc        a1, 122931
                  auipc        a3, 430496
                  sub          s7, a5, t3
                  andi         a7, tp, 1108
                  lui          a6, 35181
                  srl          tp, s10, s2
                  xor          gp, s4, t3
                  slti         t6, t1, -663
                  slt          a7, s6, t1
255:              xor          s5, s1, a2
                  or           sp, s2, a5
                  slt          zero, a7, zero
258:              sra          a1, s5, t3
                  addi         s5, t4, -2004
                  lui          s9, 201889
                  slt          t3, gp, s7
                  sltiu        s11, s8, 1684
                  bge          t2, t6, 278f
                  sltiu        s6, t3, -1234
                  nop
                  sll          sp, s9, s11
                  andi         a1, t4, 262
                  sltiu        s6, gp, -1836
                  sra          a3, s5, t6
                  bge          t5, s8, 271f
271:              slt          ra, s2, s11
                  and          t6, s7, s7
                  srl          t1, ra, t1
                  sll          t4, s3, s0
                  lui          gp, 857789
                  slt          t6, a2, s6
                  nop
278:              sll          t1, tp, t0
                  nop
                  blt          s3, s4, 295f
                  auipc        a0, 893109
                  or           s1, s4, sp
                  slli         t6, s9, 16
                  lui          t6, 210861
                  and          s4, a6, s3
                  srli         tp, s4, 26
                  add          s7, ra, s11
                  and          t4, s2, a7
                  slli         t4, s9, 19
                  blt          t6, a0, 302f
                  or           t1, gp, t5
                  or           t3, s11, s1
                  addi         sp, t5, -1158
                  addi         s10, a7, -429
295:              bltu         a5, s10, 306f
                  slti         t4, a2, -1864
                  sra          a3, t2, s11
                  sra          s0, a2, s7
                  srai         t2, s5, 25
                  bge          s7, s9, 308f
                  srai         s8, t6, 13
302:              add          s7, t3, a4
                  srai         a7, sp, 28
                  xori         tp, ra, -1871
                  slt          s1, s7, a6
306:              slti         a3, a4, -1801
                  slt          a5, t4, a4
308:              add          gp, a0, sp
                  bgeu         s2, a0, 318f
                  sltu         s10, s6, t5
                  add          a3, t1, sp
                  and          s6, s8, s9
                  sltu         a0, a0, s1
                  slt          a5, s2, t1
                  sra          t1, s9, a0
                  srl          s0, gp, s1
                  nop
318:              addi         gp, a7, 1618
                  and          s1, a4, s6
                  bltu         a5, t5, 329f
                  auipc        a1, 289844
                  addi         a6, t2, 1877
                  auipc        zero, 145055
                  slt          ra, t0, s11
                  beq          a0, s7, 330f
                  xori         a5, t0, -1673
                  sra          t3, a2, gp
                  sub          s4, s1, s5
329:              and          t1, a4, s10
330:              sub          gp, t0, s9
                  xori         a6, gp, 1618
                  beq          s3, t2, 335f
                  ori          s5, s8, -810
                  srli         tp, s8, 14
335:              beq          s11, s6, 348f
                  and          s9, a4, a3
                  srai         s7, t5, 24
                  slt          a1, s8, t1
                  slt          t2, ra, a4
                  srli         s0, t2, 23
                  add          a1, t2, s11
                  addi         s3, a2, 1330
                  srli         t1, sp, 30
                  beq          s2, a7, 359f
                  bgeu         s4, zero, 354f
                  add          a1, t4, s10
                  xor          s6, sp, gp
348:              sub          s7, a6, a1
                  and          t6, zero, a3
                  and          t1, s10, tp
                  addi         s11, gp, 2046
                  srli         t6, s8, 26
                  sltiu        s4, t6, -670
354:              xor          s1, zero, t4
                  sll          a5, ra, s0
                  or           t1, s6, s1
                  bge          a4, t0, 366f
                  blt          tp, s4, 363f
359:              sub          tp, s10, a7
                  srli         s9, s7, 14
                  addi         s11, t3, -782
                  ori          s3, t5, -1621
363:              srai         a5, a6, 26
                  xori         ra, tp, -45
                  blt          tp, t5, 380f
366:              addi         a1, zero, 942
                  slti         s4, tp, 1905
                  nop
                  slt          a3, gp, a7
                  xori         s4, s2, -313
                  srl          a0, s7, t4
                  srai         gp, s10, 12
                  xor          s0, s6, a7
                  lui          a5, 1002375
                  srai         t3, t1, 25
                  nop
                  nop
                  sub          gp, a7, s2
                  sub          s11, s8, s3
380:              or           s7, t0, t2
                  beq          s11, s5, 392f
                  bne          gp, a2, 390f
                  bgeu         s11, a2, 384f
384:              andi         s4, gp, 1385
                  and          t0, a3, s2
                  andi         s6, s0, -753
                  nop
                  bgeu         a0, t5, 403f
                  andi         a6, a2, 223
390:              srai         a3, a4, 22
                  slt          s10, t0, t0
392:              bne          sp, gp, 403f
                  addi         t4, t1, -2037
                  slti         a6, a1, -612
                  xori         s4, t5, -1798
                  auipc        s1, 684479
                  addi         s9, t1, 1143
                  xori         a6, a1, -64
                  slti         s4, zero, -875
                  add          t1, zero, tp
                  or           s4, t1, t4
                  lui          s9, 274246
403:              srai         s3, s9, 26
                  auipc        zero, 661581
                  srai         tp, sp, 25
                  srli         s0, s1, 18
                  srai         s11, a0, 15
                  and          s1, t2, s0
                  add          t3, a6, a5
                  srai         t0, a6, 28
                  slt          a7, s9, s3
                  bltu         a0, t1, 415f
                  srl          t0, s9, t4
                  andi         zero, a6, 1129
415:              sltiu        ra, sp, 1841
                  lui          sp, 766798
                  and          t6, s11, t2
                  srli         t1, s7, 9
                  auipc        s4, 910585
                  sltiu        zero, a7, 522
                  lui          a6, 284047
                  xori         s9, t1, -1650
                  add          a7, s9, t2
                  sll          s11, t0, t1
                  and          s6, tp, s4
                  add          a1, a5, s7
                  sub          sp, s5, s7
                  srl          s6, s7, a2
                  nop
                  bltu         s7, a0, 432f
                  add          s3, sp, a2
432:              sra          a6, s9, a4
                  slti         s5, a4, -1428
                  sltu         t1, t2, a5
                  beq          s4, t5, 443f
                  andi         s3, s7, 1548
                  srl          s11, gp, ra
                  or           s8, a4, s9
                  xor          t2, s2, zero
                  andi         s4, s11, -1442
                  slti         t4, a2, -1709
                  srai         t6, t0, 21
443:              nop
                  srl          a5, a0, s10
                  sub          s9, t5, s3
                  slti         a5, s8, 1894
                  sltu         s9, a2, s11
                  and          t0, s0, ra
                  ori          s10, s4, -401
                  beq          s7, s4, 455f
                  lui          t0, 145097
                  nop
                  nop
                  slti         s11, t0, 344
455:              sub          a5, s10, s6
                  srai         a0, a6, 14
                  srl          tp, t4, a5
                  and          s0, s3, t5
                  nop
                  bltu         t0, a3, 479f
                  auipc        a0, 713755
                  nop
                  slti         s7, s6, -1180
                  nop
                  addi         s4, s11, -74
                  andi         t6, s7, -1723
                  srli         t4, a1, 21
                  blt          a0, a3, 480f
                  or           s0, s4, a3
                  bgeu         s11, t4, 490f
                  bgeu         s11, s6, 479f
                  bge          s5, gp, 481f
                  srl          sp, a1, zero
                  sltu         t4, zero, s5
                  xor          s6, s4, t3
                  xor          s11, t6, s9
                  xor          a3, a7, a2
                  srl          gp, a2, s6
479:              bne          t1, s10, 491f
480:              srai         t4, t5, 31
481:              lui          t0, 438087
                  xor          t2, a7, s10
                  lui          a5, 785260
                  or           s4, t5, sp
                  bgeu         a5, t2, 499f
                  srli         ra, s11, 23
                  sll          s9, s10, s11
                  addi         s10, a0, 1781
                  srl          s3, ra, s4
490:              bne          s2, a3, 498f
491:              addi         gp, tp, -1774
                  bge          s1, zero, 497f
                  and          zero, sp, s5
                  or           tp, s4, tp
                  sltiu        ra, s4, 1460
                  xor          s7, a4, s1
497:              srl          a6, tp, t4
498:              ori          ra, a2, 1284
499:              nop
                  ori          ra, s1, -1188
                  addi         s0, s0, 48
                  sltu         s11, s3, gp
                  nop
                  la           sp, region_0+1253 #start riscv_load_store_rand_instr_stream_24
                  lhu          t2, -863(sp)
                  lbu          ra, -19(sp)
                  and          t1, s7, s8
                  sb           a7, -31(sp)
                  lh           gp, 521(sp)
                  lb           gp, -1085(sp)
                  lui          a4, 998371
                  xori         t0, a7, 213
                  slti         zero, s5, 187
                  lbu          a5, 146(sp)
                  lbu          s3, -15(sp)
                  slt          s4, t5, s1
                  lb           s10, -15(sp)
                  lbu          s11, -428(sp)
                  srli         s10, s9, 14
                  sltu         s8, t6, a0
                  lb           zero, -160(sp)
                  lb           t4, -208(sp)
                  sb           ra, -823(sp)
                  slti         s11, ra, 567
                  xori         a7, a4, -1198
                  lb           s11, -1169(sp)
                  sltu         s10, t0, a4
                  auipc        ra, 452997
                  lbu          s8, -390(sp)
                  lb           t0, -530(sp)
                  lb           t6, 262(sp)
                  lbu          s7, -1250(sp)
                  lbu          t1, -346(sp)
                  sb           a7, -28(sp)
                  lh           s1, 473(sp)
                  sb           a6, 672(sp)
                  sw           t5, -845(sp) #end riscv_load_store_rand_instr_stream_24
                  bgeu         t0, a4, 510f
                  and          tp, s1, a4
                  sub          t4, sp, sp
                  xor          sp, s1, s4
                  bge          t2, s9, 511f
                  addi         sp, t5, -719
                  la           a4, region_0+641 #start riscv_load_store_rand_instr_stream_23
                  lb           s6, 1262(a4)
                  lhu          t6, -437(a4)
                  sll          ra, a2, t1
                  auipc        a5, 590707
                  xori         a0, a5, 1065
                  lbu          a0, 234(a4)
                  add          s5, s9, t3
                  lb           s7, -536(a4)
                  lh           gp, -507(a4)
                  and          t2, a5, s10
                  slti         t0, s6, 1620
                  slli         zero, t1, 18
                  sra          s5, s2, a6
                  sltu         a0, t1, a3
                  lw           s1, -337(a4)
                  add          s9, tp, a5
                  add          ra, a3, s11
                  srli         s9, s8, 28
                  sub          s4, s6, s10
                  sltiu        a7, s4, -1340
                  lh           sp, -147(a4)
                  slli         gp, s1, 30
                  sw           sp, 1031(a4)
                  ori          a5, t5, -832
                  and          a7, s4, s10
                  lb           a0, 1213(a4)
                  sra          a5, s0, t2
                  and          t2, s6, a0
                  lh           a1, 505(a4)
                  lb           s4, 1262(a4)
                  lbu          s5, 1166(a4)
                  lbu          a7, 1010(a4)
                  sb           s1, -107(a4)
                  slt          t6, sp, a1
                  slti         t2, a7, 1356
                  add          t3, a4, s4
                  lh           a7, 1309(a4)
                  lbu          s1, -206(a4)
                  sltu         a6, s3, a4
                  lbu          s9, 159(a4)
                  add          a6, a7, s4
                  sll          tp, s9, a2
                  lbu          s10, 880(a4) #end riscv_load_store_rand_instr_stream_23
510:              sltu         t2, s11, t3
511:              srl          a5, a3, a3
                  xori         t3, s11, 724
                  blt          s0, s2, 532f
                  addi         zero, a7, -667
                  slt          a4, s2, t1
                  auipc        t1, 843218
                  sll          s1, s3, a2
                  slli         t4, ra, 28
                  blt          s1, s7, 528f
                  addi         s8, s6, 2044
                  sll          s1, sp, tp
                  srli         zero, s5, 25
                  slt          a7, sp, a3
                  bgeu         t6, t5, 529f
                  srai         zero, t3, 27
                  slli         a4, s2, 25
                  xori         gp, t6, 1725
528:              srl          a5, sp, a6
529:              slt          s1, a5, s9
                  bge          gp, s9, 542f
                  xori         s7, s2, -1494
532:              xori         s11, zero, 1496
                  lui          a5, 127316
                  slli         s11, a0, 8
                  xori         s8, zero, 1866
                  andi         s11, t6, 1038
                  bltu         a1, tp, 552f
                  xor          ra, a3, a1
                  beq          a3, s8, 547f
                  bgeu         a6, t0, 543f
                  and          t3, a3, ra
542:              beq          s6, s9, 544f
543:              andi         s7, gp, -2012
544:              xor          a1, s4, ra
                  slti         t4, s10, 1255
                  andi         t2, s1, 393
547:              add          s9, s10, a5
                  slli         zero, s5, 10
                  nop
                  sltu         t4, s2, t6
                  nop
552:              bne          t0, a5, 564f
                  sltiu        t2, ra, 48
                  sub          t2, ra, s6
                  addi         s10, a3, -1946
                  sra          s9, a7, t0
                  andi         s1, s11, -768
                  bgeu         s9, ra, 559f
559:              srli         s10, a4, 10
                  lui          s10, 520980
                  auipc        a0, 185321
                  slli         ra, gp, 9
                  lui          sp, 107815
564:              sltiu        s4, a2, 1343
                  nop
                  srli         s9, a3, 5
                  ori          tp, t4, -976
                  or           a0, t1, a6
                  or           a3, s6, gp
                  slt          zero, s0, a3
                  andi         t1, t5, -2007
                  srl          t6, t3, a0
                  andi         a4, t1, -1561
                  xori         s8, t5, -939
                  srli         t0, s6, 16
                  slti         t2, zero, 903
                  slti         s4, zero, 1008
                  sll          s8, s7, t0
                  and          a7, t6, a3
                  ori          a1, a4, -655
                  ori          sp, a0, -2018
                  add          t2, s5, sp
                  slli         s10, a1, 23
                  ori          a7, s0, -339
                  la           sp, region_0+281 #start riscv_load_store_rand_instr_stream_28
                  lbu          t0, 225(sp)
                  ori          t0, ra, 1643
                  sra          gp, s3, a3
                  sltu         zero, t0, t1
                  lh           t0, 941(sp)
                  lbu          s5, 322(sp)
                  srli         s3, s6, 23
                  lb           t2, 1412(sp)
                  lhu          t4, 781(sp)
                  lbu          s8, 538(sp)
                  lw           t3, 1079(sp)
                  lh           s9, 1375(sp)
                  lui          a6, 778717
                  sb           a7, 181(sp)
                  slt          a7, t6, s6
                  lb           tp, 640(sp)
                  sb           sp, 870(sp)
                  add          s8, a7, s0
                  sb           t1, -234(sp)
                  lh           a3, 797(sp)
                  sb           a5, -266(sp)
                  sll          zero, s7, s1
                  ori          s10, t4, -1042
                  lhu          a3, 611(sp)
                  sb           a7, -96(sp)
                  ori          a1, s7, -1562
                  sh           a6, 391(sp)
                  sh           t2, 151(sp) #end riscv_load_store_rand_instr_stream_28
                  or           s8, t1, s7
                  and          a6, s8, a7
                  slt          a0, s8, t2
                  lui          t0, 19681
                  srli         zero, zero, 30
                  xori         a7, a5, -1000
                  srl          zero, s9, s10
                  sltiu        a0, t0, -414
                  xori         t2, s5, -1180
                  bltu         ra, s1, 599f
                  slti         a0, s1, 1694
                  bgeu         t3, s3, 605f
                  sltu         s8, s0, s0
                  sra          t0, sp, s8
599:              slli         a4, t1, 17
                  bltu         ra, sp, 608f
                  add          s3, a6, t6
                  add          s10, s6, ra
                  beq          t5, s9, 622f
                  sra          sp, s11, zero
605:              slti         t6, s11, 46
                  slti         t1, t3, -1880
                  sltiu        s10, gp, 362
608:              auipc        sp, 24818
                  xori         t0, a1, -1134
                  andi         gp, s7, 715
                  sub          t6, zero, sp
                  bge          t3, ra, 615f
                  xori         sp, ra, -1342
                  addi         a1, a3, -1945
615:              bltu         s2, s5, 634f
                  and          s8, a0, s1
                  blt          a2, a7, 628f
                  beq          gp, s0, 626f
                  bne          t6, tp, 630f
                  sltu         s5, s5, s3
                  bne          s11, s7, 634f
622:              xori         t6, s6, -763
                  xor          s4, a7, a2
                  add          a1, a6, s9
                  bltu         a3, t1, 630f
626:              xor          a0, t0, ra
                  srl          zero, t0, s11
628:              slt          ra, a4, sp
                  or           s8, a6, zero
630:              sll          t2, gp, tp
                  srai         s10, a6, 30
                  lui          sp, 777711
                  slti         sp, t2, -174
634:              slli         s9, t6, 31
                  sub          s0, t2, a5
                  bge          gp, a2, 644f
                  ori          t3, ra, 179
                  slli         sp, s8, 30
                  andi         a5, t3, -1505
                  srli         t6, s9, 29
                  srl          a5, t6, s2
                  or           s11, s11, zero
                  and          a7, t3, t1
644:              bltu         a6, s9, 653f
                  and          s0, a0, t1
                  xori         a7, s3, -319
                  xor          a0, t1, s7
                  bltu         zero, a3, 651f
                  bne          s4, a7, 655f
                  srai         sp, t4, 9
651:              sltu         s10, s3, a1
                  sll          t4, s9, s6
653:              sltu         s9, s11, a7
                  addi         s0, ra, 763
655:              slt          s0, s7, ra
                  sub          s6, a6, s6
                  nop
                  lui          a0, 985404
                  bne          a7, a6, 679f
                  srai         s3, s8, 2
                  xori         a7, zero, 1036
                  sll          tp, s3, a2
                  bltu         s11, s4, 672f
                  add          a1, zero, s11
                  andi         s9, s10, 1423
                  slti         s10, a4, 1625
                  ori          tp, a2, -1517
                  sltiu        a3, t0, -1135
                  sll          gp, a5, s7
                  sra          gp, a7, s8
                  sltiu        s7, tp, -875
672:              bne          t3, s10, 681f
                  sra          t6, t2, a1
                  blt          s7, zero, 688f
                  beq          s1, s2, 680f
                  xor          t1, a6, s3
                  addi         s1, s4, 1360
                  lui          gp, 395172
679:              sra          zero, a7, t3
680:              xori         a5, s5, -1127
681:              slt          s6, a2, s6
                  auipc        t6, 462604
                  sra          a5, s5, a5
                  slt          sp, zero, a7
                  lui          s7, 366336
                  bgeu         a5, ra, 701f
                  srli         s8, ra, 19
688:              sltiu        a1, t4, 1437
                  and          zero, zero, s10
                  sra          t4, s3, a0
                  xor          s9, a3, a1
                  bgeu         t3, s1, 707f
                  slt          s0, s1, s2
                  srl          a4, t2, s8
                  sub          s11, a5, s10
                  andi         s11, s6, -998
                  lui          gp, 336345
                  slt          s1, s2, gp
                  slt          s4, t1, a1
                  slt          s1, zero, t3
701:              ori          t6, s8, -1938
                  srai         a0, a4, 1
                  srai         zero, a2, 31
                  xor          a0, s8, ra
                  lui          a0, 130687
                  bne          s6, zero, 718f
707:              sll          tp, t4, a6
                  srli         s10, s1, 2
                  slt          s9, ra, s2
                  andi         t3, s6, -1920
                  bne          ra, a7, 726f
                  sltu         a1, ra, t0
                  lui          s9, 398656
                  srl          a6, sp, s10
                  bge          s6, s9, 720f
                  or           s4, a0, s4
                  sltiu        s7, s4, 435
718:              srli         t1, ra, 13
                  srli         tp, s2, 13
720:              addi         t3, zero, 118
                  andi         a7, t4, -601
                  or           sp, t3, t5
                  beq          a3, s9, 738f
                  sltiu        s0, s10, 907
                  andi         gp, s2, 163
726:              beq          s5, s2, 735f
                  blt          s3, s0, 732f
                  or           a3, zero, s6
                  andi         a1, s1, -547
                  sll          a5, t2, a5
                  sub          s5, s2, t2
732:              bge          gp, a6, 741f
                  blt          t3, t5, 738f
                  bgeu         a2, a0, 748f
735:              bltu         ra, s11, 743f
                  slti         s10, a2, 1734
                  sll          gp, a0, s8
738:              sll          s4, s10, s7
                  bgeu         s8, a7, 748f
                  slli         s11, a6, 20
741:              bltu         s10, a7, 753f
                  beq          s6, t5, 761f
743:              srl          a4, a6, s8
                  bgeu         t0, s4, 745f
745:              andi         s0, a1, -14
                  add          s1, s4, a3
                  auipc        s8, 761332
748:              xor          sp, t1, s0
                  bge          t5, a2, 751f
                  add          a5, a6, s7
751:              bltu         s6, t5, 771f
                  lui          a5, 228932
753:              bne          t5, t1, 766f
                  addi         t1, a0, -258
                  sll          t1, s6, s3
                  srai         zero, t3, 20
                  and          t6, ra, s9
                  nop
                  bne          t2, s11, 768f
                  sll          ra, a0, t3
761:              sltu         s1, tp, s6
                  beq          zero, t6, 767f
                  slti         t0, t3, 1088
                  sll          s6, gp, a3
                  xor          s9, zero, a7
766:              and          t3, t1, s10
767:              bne          a2, a4, 786f
768:              sltiu        zero, s5, 730
                  sll          t2, s2, a5
                  add          a3, s0, t1
771:              lui          s3, 976186
                  sra          s11, t4, s4
                  bltu         a7, t4, 776f
                  xori         s9, s11, -1820
                  srli         s1, s11, 9
776:              ori          a0, sp, -1151
                  bgeu         t3, a7, 785f
                  andi         a4, t4, 1457
                  srl          a6, t5, a4
                  add          s6, t3, sp
                  srl          t6, ra, s8
                  srai         t1, s10, 14
                  auipc        tp, 871240
                  slli         a0, s4, 9
785:              slti         t2, a3, 342
786:              andi         t2, a6, -949
                  beq          t4, s5, 802f
                  sltiu        s6, s6, -589
                  and          gp, t5, a2
                  add          s0, ra, s7
                  addi         s3, s9, -1086
                  and          a4, s10, a6
                  blt          a1, s3, 804f
                  or           t0, s7, s10
                  lui          s4, 603140
                  sll          t6, tp, zero
                  blt          s11, sp, 800f
                  addi         s6, s5, -780
                  auipc        gp, 105191
800:              sub          a5, a6, s8
                  xor          a6, a5, s11
802:              addi         s7, t0, 1164
                  blt          s7, s1, 811f
804:              srli         t3, gp, 10
                  sltu         a7, t3, t2
                  blt          a7, zero, 809f
                  sltu         t6, a0, s11
                  bge          s3, s4, 819f
809:              sra          a3, a4, a3
                  blt          gp, t1, 818f
811:              sra          t6, a4, sp
                  slli         t3, s3, 6
                  sub          gp, a1, t1
                  sll          s11, s4, gp
                  andi         a5, t5, -28
                  blt          s0, s9, 822f
                  blt          a5, gp, 832f
818:              bge          s10, s1, 830f
819:              beq          s10, t3, 832f
                  andi         tp, s8, 196
                  auipc        gp, 173306
822:              xori         s10, s5, 694
                  sub          a6, t5, s2
                  beq          t3, t5, 839f
                  sltiu        s3, s4, -696
                  or           s11, a0, a0
                  auipc        a5, 832255
                  auipc        a4, 946928
                  slli         tp, s1, 22
830:              sltiu        a5, t6, 1221
                  andi         t1, t4, -1434
832:              nop
                  or           a3, s0, s7
                  srai         ra, zero, 4
                  beq          ra, a5, 843f
                  or           s1, t4, gp
                  nop
                  auipc        a5, 117704
839:              blt          s4, s5, 847f
                  slli         a4, t0, 8
                  add          a3, s3, gp
                  xori         s9, s6, 91
843:              blt          a6, a3, 862f
                  auipc        t4, 775956
                  slt          t6, zero, s11
                  sub          a4, t4, gp
847:              bltu         a3, s1, 850f
                  add          a0, sp, t2
                  lui          t4, 13913
850:              blt          ra, s6, 864f
                  bne          t2, zero, 871f
                  bltu         t3, a4, 853f
853:              bltu         t3, s9, 859f
                  andi         a6, a7, 1118
                  and          s4, t3, t2
                  srli         sp, s8, 12
                  nop
                  slt          s3, t0, s3
859:              sra          ra, s8, a6
                  add          s0, a6, s11
                  slt          t2, a1, a2
862:              bltu         zero, s4, 871f
                  bgeu         a0, t3, 874f
864:              slti         t6, s6, -1758
                  or           a3, s0, a2
                  addi         t6, sp, 1125
                  addi         t3, t2, -1479
                  lui          s3, 491411
                  lui          tp, 111626
                  andi         s11, s8, 1025
871:              bne          a6, s0, 879f
                  beq          a4, s7, 875f
                  add          t1, s9, t4
874:              and          sp, s9, tp
875:              bne          a2, s8, 884f
                  srl          s7, sp, ra
                  xori         s3, a6, -301
                  srai         s5, gp, 1
879:              blt          a5, t3, 882f
                  slli         s7, s11, 9
                  srai         t6, s7, 2
882:              nop
                  add          s6, zero, a6
884:              xor          s3, s6, t5
                  addi         s8, s9, 1748
                  beq          t2, s5, 891f
                  bltu         s5, s0, 892f
                  add          s10, s5, a1
                  sub          t4, t5, a1
                  lui          ra, 397275
891:              srai         ra, s7, 31
892:              add          s4, ra, s9
                  sll          a4, t6, a3
                  slli         a7, gp, 30
                  lui          a3, 369839
                  sltu         t6, a2, a3
                  beq          t4, t6, 905f
                  xor          s5, s4, a7
                  bgeu         t0, a5, 910f
                  blt          t2, s0, 909f
                  bne          t0, t2, 906f
                  srl          s11, s1, a6
                  andi         t2, t3, 572
                  bge          t0, s6, 923f
905:              xor          sp, a3, s9
906:              sra          a1, s1, t2
                  slli         t1, t4, 1
                  andi         s10, sp, -1985
909:              add          a6, t5, a0
910:              beq          s6, a6, 919f
                  sltiu        tp, t2, -1912
                  or           t1, sp, a6
                  xori         a6, s1, -1760
                  sll          s9, s2, s7
                  blt          s10, s5, 917f
                  add          a5, a4, a6
917:              or           t6, tp, zero
                  sltu         s10, a1, t6
919:              addi         t2, gp, -328
                  sra          sp, a4, t3
                  xori         t6, t1, -463
                  add          a7, ra, a3
923:              sra          a7, tp, tp
                  slli         zero, s4, 31
                  srai         t0, tp, 29
                  sra          sp, a3, s0
                  sll          s6, s4, a7
                  slti         t6, s7, 1959
                  ori          a4, ra, 1883
                  sll          tp, s2, gp
                  bltu         t2, t4, 946f
                  xori         a0, t2, -1190
                  bgeu         s10, gp, 938f
                  nop
                  xor          a7, t0, s8
                  blt          t5, a4, 948f
                  beq          a2, a0, 939f
938:              xori         s1, a7, 798
939:              srl          s9, a6, t3
                  auipc        sp, 253724
                  andi         a3, a3, -1560
                  slli         s0, a0, 2
                  srai         s1, t5, 10
                  srai         s5, s6, 0
                  sltiu        s6, t6, 1843
946:              sltu         a0, t4, s6
                  beq          t2, t1, 958f
948:              lui          a4, 594089
                  nop
                  sltu         s7, gp, s7
                  slt          s3, sp, s5
                  sra          s8, t1, a2
                  andi         a3, t6, 1087
                  sltu         s3, gp, a7
                  nop
                  and          tp, a4, a0
                  sltiu        t0, s11, -515
958:              andi         sp, tp, -1088
                  sll          s9, a5, t6
                  or           ra, a5, a4
                  xori         a6, a4, -761
                  bltu         t3, s2, 977f
                  sra          tp, s9, t4
                  or           s9, s1, a4
                  bne          s10, s9, 974f
                  slli         s1, zero, 29
                  srli         a7, s9, 20
                  beq          a6, ra, 980f
                  andi         s1, gp, -762
                  sra          s8, s11, s7
                  lui          zero, 489694
                  slti         a6, a3, 1015
                  addi         s7, sp, 1157
974:              bne          t0, a6, 983f
                  add          t0, tp, a4
                  nop
977:              andi         tp, t6, 452
                  auipc        sp, 682992
                  sltiu        a1, s1, 522
980:              beq          t0, ra, 995f
                  ori          s6, t6, -535
                  sub          a7, s0, s3
983:              sub          ra, a5, t2
                  bgeu         tp, t4, 987f
                  sltu         t4, ra, gp
                  xor          t2, tp, a0
987:              slti         t4, a2, -726
                  and          gp, s4, s10
                  sll          tp, s11, s5
                  sltu         s4, t4, t3
                  slli         s1, t5, 26
                  and          s6, t1, a2
                  slli         a3, a2, 24
                  xori         s5, a5, -869
995:              slt          tp, s1, s3
                  auipc        a5, 846384
                  xor          s1, zero, a7
                  sltu         s0, a7, a4
                  ori          a4, s11, -1689
                  srai         t1, zero, 12
                  bltu         s1, s9, 1004f
                  sll          sp, a2, s4
                  and          ra, t4, s0
1004:             srl          t3, a4, ra
                  andi         s0, s0, -259
                  beq          a5, s4, 1014f
                  bne          s4, t1, 1008f
1008:             beq          a0, zero, 1013f
                  ori          t1, s0, -1680
                  slli         sp, a2, 31
                  blt          t1, s9, 1026f
                  sltiu        a6, a6, -2014
1013:             sll          t1, a6, t5
1014:             xor          t2, s10, t0
                  srai         t6, t4, 5
                  sll          a4, s9, t4
                  slli         t6, a2, 21
                  lui          a0, 49568
                  lui          s6, 293829
                  ori          t1, t6, 1665
                  srai         s6, s8, 12
                  srli         tp, s6, 14
                  xori         t6, a3, -310
                  slli         a4, sp, 13
                  xori         a6, s7, -1024
1026:             sll          t4, t2, a1
                  auipc        s11, 60780
                  sra          t0, a3, a1
                  bltu         s7, s3, 1037f
                  sltu         s6, a7, s4
                  add          s11, a6, ra
                  bgeu         s9, t1, 1041f
                  srai         t4, t3, 8
                  bne          s9, s5, 1053f
                  sll          tp, s7, s3
                  bne          a5, s7, 1049f
1037:             slli         zero, s7, 21
                  nop
                  add          s3, a7, t0
                  blt          t1, a4, 1043f
1041:             sll          a7, s11, a6
                  or           s11, t1, s5
1043:             sub          zero, s5, a5
                  blt          t2, s7, 1058f
                  lui          t4, 240660
                  bgeu         a3, sp, 1055f
                  or           t0, t5, s9
                  xori         t1, t4, 872
1049:             ori          s5, s11, 660
                  sltiu        s11, t2, -92
                  sra          s8, s9, t5
                  or           s0, t2, s2
1053:             srai         a6, sp, 9
                  sub          s4, a7, t3
1055:             slti         t3, t4, -206
                  slti         s1, a1, 840
                  bge          t3, s7, 1062f
1058:             or           a4, s3, a2
                  blt          a3, s9, 1067f
                  and          a6, gp, s7
                  srl          a6, a0, s3
1062:             sra          t3, a3, a6
                  ori          t6, a5, -931
                  xori         s4, t4, -559
                  blt          t5, tp, 1085f
                  srli         a4, s2, 29
1067:             sra          s8, s3, a5
                  lui          t4, 395173
                  sltu         s3, t6, a6
                  addi         s9, s0, -451
                  xori         s7, a6, -764
                  or           s9, ra, s4
                  sra          s10, ra, ra
                  srai         t2, sp, 3
                  lui          a4, 335328
                  lui          s4, 25269
                  nop
                  blt          a5, t6, 1089f
                  and          sp, s7, tp
                  sltiu        t6, a3, -1440
                  srai         tp, tp, 7
                  slt          t0, a4, zero
                  bgeu         a7, t0, 1102f
                  auipc        a7, 953696
1085:             srli         s9, t1, 24
                  sltu         a6, s9, ra
                  xori         s7, s3, -1649
                  bne          s9, s8, 1093f
1089:             xori         s8, gp, -337
                  auipc        a1, 659806
                  sub          s1, s9, a5
                  srli         t0, t5, 18
1093:             beq          t1, s4, 1098f
                  add          s9, t0, s8
                  auipc        sp, 29222
                  xori         s5, t2, 621
                  bltu         s5, tp, 1103f
1098:             auipc        a1, 370083
                  ori          s1, s4, 1236
                  addi         t2, a3, 611
                  auipc        zero, 582678
1102:             nop
1103:             sltu         t3, s0, a4
                  sltiu        t0, a7, 1883
                  bgeu         t0, t0, 1113f
                  sra          t0, a7, s6
                  and          t2, gp, s0
                  sltiu        s10, s3, -1256
                  beq          s6, ra, 1121f
                  sltu         t1, s0, gp
                  add          s3, s3, gp
                  xor          t1, t1, a4
1113:             sub          s11, s4, a6
                  slt          s4, t6, s4
                  ori          t0, s7, 1048
                  bne          a6, s10, 1121f
                  bgeu         s3, a0, 1129f
                  sltiu        s5, s6, -296
                  xor          a1, s0, s1
                  addi         t6, a2, 675
1121:             ori          gp, t6, 163
                  sub          a4, a5, s7
                  ori          a6, t2, 1404
                  auipc        t2, 551915
                  andi         s3, s6, 393
                  auipc        s8, 341342
                  lui          t1, 684572
                  xor          t2, a2, s4
1129:             bne          zero, t5, 1137f
                  lui          a4, 177636
                  and          t6, s11, a2
                  bge          a6, a2, 1135f
                  sra          tp, t6, gp
                  sub          t6, t3, t2
1135:             lui          s11, 210233
                  add          tp, s10, s1
1137:             add          s9, t0, zero
                  beq          s8, sp, 1157f
                  sltiu        a6, s5, -704
                  ori          t1, s3, -667
                  xor          a4, s7, a3
                  lui          s7, 658812
                  sub          a4, a5, s5
                  sll          t0, s0, s7
                  slti         a4, s7, -2042
                  bge          tp, a2, 1161f
                  srli         t4, a5, 30
                  srai         tp, s3, 8
                  bge          a3, t6, 1158f
                  bltu         a4, a0, 1155f
                  sltiu        s5, s4, 508
                  andi         a4, t0, 66
                  addi         s1, tp, -1165
                  srl          a5, a6, a0
1155:             ori          s8, t4, 1115
                  sub          s0, s8, t3
1157:             srli         s3, t4, 10
1158:             or           t2, a3, a1
                  slt          a1, s2, a6
                  andi         sp, s4, -468
1161:             nop
                  bne          a0, a5, 1168f
                  slt          t3, a6, t0
                  sll          s9, s6, a3
                  andi         a1, a5, 1665
                  or           t0, sp, s3
                  ori          a7, t6, -1076
1168:             sra          s3, t4, t4
                  beq          a6, s4, 1171f
                  andi         s10, zero, -1012
1171:             or           a5, s3, a1
                  nop
                  slti         tp, t1, 755
                  srl          t2, s11, a3
                  srl          tp, a7, a4
                  sra          a6, a6, a0
                  andi         gp, s5, -1476
                  bge          s6, t6, 1187f
                  beq          a6, gp, 1194f
                  lui          t1, 1010541
                  sll          a7, a4, s1
                  bne          ra, t6, 1190f
                  bltu         gp, s5, 1198f
                  bge          ra, s1, 1185f
1185:             nop
                  sub          s8, a5, t4
1187:             add          a7, t4, tp
                  addi         a0, s9, -1519
                  bge          t4, s9, 1197f
1190:             bgeu         s10, s7, 1193f
                  bltu         s5, tp, 1203f
                  srl          a5, s7, a6
1193:             bne          a5, s9, 1198f
1194:             bgeu         a0, s4, 1213f
                  auipc        s6, 583635
                  addi         t6, a5, 981
1197:             slti         t3, s6, 535
1198:             bge          a3, t2, 1218f
                  bne          s7, t4, 1210f
                  addi         s6, ra, -1896
                  bne          a7, s3, 1215f
                  auipc        t3, 630627
1203:             sll          t2, s0, a4
                  sltu         a0, t2, t5
                  lui          t3, 757074
                  srli         t0, s0, 22
                  lui          a0, 802279
                  srl          s4, a0, a7
                  sub          a0, a0, ra
1210:             xor          s7, a6, s4
                  sra          tp, sp, t4
                  slt          sp, a4, s11
1213:             add          tp, a2, a0
                  sll          t2, a7, t0
1215:             or           a4, a3, a4
                  lui          t2, 58667
                  blt          s3, t2, 1228f
1218:             bne          ra, s3, 1223f
                  sra          a7, a1, t0
                  andi         s6, s3, -791
                  sltiu        a6, t3, 462
                  bne          a0, a3, 1225f
1223:             beq          t1, a7, 1231f
                  andi         t1, a6, 545
1225:             slt          s10, a0, s0
                  ori          s11, sp, 1644
                  srai         t4, t2, 16
1228:             beq          sp, t1, 1237f
                  slt          ra, t0, s6
                  nop
1231:             slti         t4, a7, 1832
                  sll          s1, s1, s3
                  ori          gp, s3, 1865
                  srai         ra, s6, 6
                  bltu         zero, s7, 1248f
                  blt          ra, t5, 1245f
1237:             beq          a4, s8, 1252f
                  srai         t1, a4, 11
                  bge          s9, t3, 1245f
                  lui          tp, 959335
                  sltu         sp, s4, a4
                  slli         a3, s5, 31
                  srai         t1, tp, 2
                  auipc        tp, 863519
1245:             srai         t3, s11, 23
                  sltu         s8, t5, ra
                  bgeu         s9, t3, 1262f
1248:             auipc        s6, 360073
                  srli         a4, tp, 7
                  ori          t4, s6, -1297
                  nop
1252:             bne          s0, s8, 1255f
                  beq          s11, t3, 1262f
                  xori         a7, a7, 1797
1255:             xor          sp, t2, t0
                  sltu         a3, a7, ra
                  andi         a4, t5, -1231
                  slti         tp, t5, 511
                  lui          tp, 289236
                  andi         a3, s4, -1833
                  bgeu         s11, a0, 1269f
1262:             auipc        s3, 941883
                  srai         s7, s4, 14
                  ori          s11, a1, 1963
                  xor          s8, t5, a1
                  bltu         a2, t6, 1269f
                  xor          a0, a0, a1
                  srai         a7, s9, 29
1269:             slli         a0, a7, 22
                  ori          t3, a4, 1369
                  srl          t0, t2, t5
                  beq          t2, sp, 1291f
                  sll          t4, a6, s1
                  blt          tp, s8, 1286f
                  slti         a3, t3, 1336
                  and          t0, a5, t2
                  bge          a2, sp, 1285f
                  srli         sp, s9, 3
                  beq          gp, s3, 1288f
                  add          zero, a0, s10
                  slti         a7, a3, -395
                  add          s4, zero, s1
                  bge          t2, a0, 1292f
                  sltu         a7, t6, tp
1285:             sra          t2, t5, s4
1286:             srl          a0, a0, s2
                  slli         s9, ra, 21
1288:             nop
                  bne          t4, s5, 1290f
1290:             andi         s3, a3, 1982
1291:             sltiu        t3, gp, -807
1292:             bne          s4, a7, 1297f
                  xori         s11, s10, 610
                  bgeu         s3, s3, 1308f
                  ori          a0, t3, 1989
                  bgeu         s2, s1, 1311f
1297:             sltiu        sp, t5, -1076
                  beq          t2, s2, 1318f
                  and          s8, a7, s3
                  xor          t2, s4, a7
                  sll          s9, s8, s1
                  bne          a5, t4, 1310f
                  slt          s4, a2, a7
                  srai         a1, t2, 31
                  sltiu        t6, t6, -1646
                  sra          a7, s8, s11
                  bge          s10, a7, 1312f
1308:             ori          a5, t0, -1825
                  xor          a5, s4, t0
1310:             srai         a7, s0, 7
1311:             srli         zero, a1, 9
1312:             lui          sp, 805843
                  sltu         a4, a6, s1
                  slli         s8, a5, 18
                  lui          a5, 763270
                  sub          a4, t4, tp
                  srai         t0, s8, 15
1318:             srai         sp, s10, 31
                  srai         a0, s10, 16
                  nop
                  and          s10, a1, a1
                  srli         s10, t3, 26
                  xori         a6, t0, 231
                  sll          s10, t3, s3
                  bltu         gp, a1, 1330f
                  sltu         tp, t4, t5
                  addi         a1, t6, -1652
                  bge          t0, t2, 1331f
                  xori         ra, a4, 922
1330:             sltiu        s6, t3, 551
1331:             bltu         t1, a5, 1350f
                  andi         a0, a5, -670
                  slli         t4, s6, 15
                  sub          sp, t5, a2
                  andi         t0, t0, -1157
                  bge          t2, t1, 1347f
                  addi         a1, a4, -1456
                  nop
                  bltu         zero, gp, 1348f
                  xori         a4, a2, 1109
                  beq          a1, a0, 1346f
                  nop
                  slli         t2, t2, 27
                  or           a7, s7, t1
                  or           s3, a7, s10
1346:             or           s5, a0, a1
1347:             bltu         a6, s6, 1355f
1348:             bgeu         a0, s3, 1360f
                  or           s7, t1, a0
1350:             blt          t3, a5, 1363f
                  srli         s10, a6, 1
                  bne          a0, a1, 1354f
                  bne          t6, t6, 1364f
1354:             or           a6, a7, t6
1355:             sll          s9, s2, s9
                  bne          s3, s1, 1359f
                  xori         t0, a1, 1654
                  sll          s6, s2, s2
1359:             ori          s3, t2, -827
1360:             or           a7, ra, a3
                  sra          a4, t2, s5
                  beq          ra, s9, 1367f
1363:             lui          s1, 73588
1364:             sub          a7, a7, s7
                  addi         t4, sp, -57
                  sltiu        a4, t1, -183
1367:             sltiu        a0, a6, 20
                  ori          t4, ra, 266
                  srai         tp, t0, 15
                  bltu         s8, a5, 1383f
                  beq          t2, a5, 1383f
                  sltu         ra, t2, s0
                  sub          zero, s8, sp
                  sltu         s4, t3, sp
                  blt          a7, s11, 1389f
                  ori          s4, t5, -1845
                  slt          s9, gp, a0
                  and          a7, s11, gp
                  slli         s10, zero, 19
                  sltiu        a6, a6, 1777
                  la           s6, region_0+581 #start riscv_load_store_rand_instr_stream_25
                  lh           sp, 19(s6)
                  sb           t0, -36(s6)
                  lh           t4, -13(s6)
                  lhu          zero, 27(s6)
                  sra          s3, zero, a0
                  nop
                  sb           a7, -60(s6)
                  auipc        a4, 254998
                  lb           a5, 38(s6)
                  lb           s7, -28(s6)
                  slt          s3, gp, a2
                  sb           t0, 18(s6)
                  addi         s4, s9, 1840
                  sh           a2, -41(s6)
                  sw           t6, -45(s6)
                  sw           t6, 15(s6)
                  lb           s11, -20(s6)
                  sb           s10, -19(s6)
                  lb           a7, -49(s6)
                  lbu          s8, -52(s6)
                  lui          s8, 651056
                  lbu          a1, -33(s6)
                  sltu         s5, t4, s0
                  lb           a6, -58(s6)
                  auipc        a7, 472043
                  slt          s5, s0, s7
                  sb           ra, -46(s6)
                  lbu          s10, -11(s6)
                  sb           a1, -24(s6)
                  lbu          s8, -46(s6)
                  lbu          s8, -6(s6)
                  sh           s7, -49(s6)
                  slt          gp, tp, s6
                  lbu          tp, -27(s6)
                  lhu          s8, 31(s6)
                  sll          tp, a2, t4
                  sb           s3, -1(s6)
                  sb           a5, -55(s6)
                  ori          t6, zero, 22
                  sb           s1, -1(s6) #end riscv_load_store_rand_instr_stream_25
                  beq          s10, t5, 1392f
                  srl          t6, s0, a3
1383:             and          t4, a5, a2
                  nop
                  and          s7, s6, s10
                  xori         s7, a4, -1567
                  ori          a7, s7, 655
                  sltu         a4, t0, t6
1389:             srl          s4, s7, s1
                  nop
                  xori         t0, s3, 853
1392:             bltu         s8, s6, 1401f
                  sltu         tp, s5, s2
                  sll          t6, s5, s11
                  blt          t1, s3, 1403f
                  lui          s6, 770325
                  nop
                  srai         gp, a4, 20
                  bne          s5, gp, 1404f
                  slt          zero, a2, a0
1401:             add          s5, a2, s7
                  xori         s6, a3, 1797
1403:             and          gp, t2, s6
1404:             slli         a3, a5, 18
                  sra          s11, t1, s1
                  sub          s7, a3, a7
                  bltu         sp, a7, 1412f
                  lui          a7, 845310
                  srl          a3, tp, s3
                  and          ra, t5, tp
                  beq          a6, s1, 1416f
1412:             nop
                  andi         t2, a1, -401
                  slli         tp, t3, 2
                  bge          s2, s3, 1417f
1416:             ori          s9, t3, 1050
1417:             addi         t0, a2, -731
                  ori          s11, s7, 1747
                  slt          a7, a2, s11
                  beq          t6, t5, 1435f
                  and          gp, s5, s8
                  andi         s6, t0, -1460
                  xori         s10, t1, 581
                  bne          s6, a1, 1432f
                  slt          t4, a1, a6
                  srl          t1, t4, sp
                  and          s1, t6, s0
                  addi         a0, ra, -985
                  addi         t1, s10, 240
                  xori         a0, s11, -1259
                  and          t4, a7, a0
1432:             blt          t6, s3, 1435f
                  srai         t3, s0, 28
                  sll          s8, tp, a0
1435:             sltu         s6, a7, s10
                  auipc        a3, 133594
                  andi         t0, s5, -726
                  ori          t0, s1, -31
                  xori         a0, s1, 1508
                  slti         s0, a6, -1829
                  or           t1, t5, t3
                  and          t6, s8, a5
                  sltiu        sp, t0, 1116
                  andi         a6, t0, 737
                  lui          a4, 517927
                  srl          s3, s9, sp
                  sltiu        gp, a6, 1136
                  bltu         a3, a5, 1463f
                  and          a5, t2, s11
                  xor          sp, tp, s2
                  sll          sp, a3, a6
                  nop
                  sub          a0, s0, a4
                  slti         ra, t5, -1400
                  bltu         a3, t3, 1463f
                  bgeu         t3, a3, 1471f
                  sra          s0, a4, t2
                  slli         t2, sp, 13
                  bgeu         s7, a6, 1478f
                  slti         a5, s9, -1644
                  addi         s0, s8, 1051
                  and          a4, a7, t1
1463:             srai         t2, s1, 10
                  srai         s1, s3, 2
                  slti         a3, s2, 460
                  sll          s1, s0, a2
                  srl          s10, a6, t4
                  xor          t1, ra, s9
                  bne          a7, a6, 1470f
1470:             xor          a0, t4, a3
1471:             auipc        t0, 268181
                  sra          a6, a4, t0
                  or           a3, gp, a3
                  andi         ra, a2, 1358
                  slli         a5, a3, 9
                  slti         t3, t0, -347
                  and          a6, a5, t4
1478:             add          t1, t3, s9
                  sll          a3, a5, a6
                  beq          a4, s7, 1499f
                  sub          s5, s6, sp
                  bltu         s2, t2, 1491f
                  sra          a6, t4, s0
                  srli         a5, a0, 6
                  slt          s1, t4, s11
                  sra          ra, t4, s6
                  sltiu        s9, s8, -1970
                  sll          a7, a2, s4
                  xor          t0, t0, t3
                  bge          s7, s1, 1502f
1491:             andi         a4, a4, 277
                  sll          gp, s4, s2
                  ori          gp, s5, -278
                  sltiu        t6, a3, -1069
                  sltiu        gp, t1, 929
                  lui          a3, 286278
                  srai         s11, a4, 2
                  xori         s7, s4, -1560
1499:             add          s6, t5, s1
                  xor          s3, s3, s9
                  lui          s1, 329287
1502:             auipc        a0, 663201
                  slti         ra, a3, 597
                  srli         sp, a2, 31
                  bne          s10, a1, 1516f
                  xor          a7, sp, s5
                  sub          ra, t2, a5
                  auipc        s4, 162956
                  srli         t2, s9, 27
                  bgeu         s10, a1, 1516f
                  bgeu         s4, s1, 1514f
                  ori          a6, a0, -2019
                  slli         s9, s8, 15
1514:             beq          sp, a2, 1523f
                  addi         a3, sp, -1809
1516:             bltu         s11, s7, 1525f
                  ori          s11, s4, 46
                  slt          t1, s6, a0
                  andi         ra, s11, 1572
                  or           s0, s4, s9
                  bge          s8, t4, 1541f
                  bltu         a4, a0, 1530f
1523:             or           s1, a2, a2
                  and          ra, a6, t2
1525:             auipc        sp, 293596
                  nop
                  blt          tp, ra, 1541f
                  ori          a6, a6, -855
                  slt          s1, s5, a1
1530:             slti         s5, tp, 470
                  and          ra, s6, a3
                  sub          s9, s2, ra
                  bge          a6, a6, 1539f
                  xori         tp, s3, -1886
                  xori         t3, s7, 743
                  bgeu         s1, sp, 1537f
1537:             bgeu         a7, t4, 1550f
                  or           s1, s1, ra
1539:             xori         s8, s3, 1974
                  or           s5, s6, s6
1541:             slli         gp, t1, 7
                  slti         t6, t3, -159
                  nop
                  xori         s4, zero, 2024
                  blt          a7, s2, 1554f
                  slt          zero, t6, a1
                  srli         a3, s0, 4
                  sra          s1, s6, sp
                  and          a7, a4, zero
1550:             bltu         a6, a6, 1565f
                  slli         a3, s11, 14
                  lui          a6, 293354
                  bltu         s11, sp, 1568f
1554:             auipc        t6, 1043379
                  slti         a7, sp, -94
                  bltu         s9, a5, 1565f
                  bne          a1, t3, 1562f
                  sltu         a1, ra, t1
                  or           gp, a4, t1
                  addi         a6, s0, 77
                  ori          t0, s1, 992
1562:             sll          s0, a4, ra
                  slli         a4, a3, 2
                  or           s11, tp, a2
1565:             bltu         s11, s4, 1570f
                  srai         a0, ra, 25
                  bne          t6, a4, 1575f
1568:             bge          s0, t2, 1579f
                  sub          a7, a4, t1
1570:             blt          s8, s10, 1579f
                  srai         a4, t2, 22
                  srai         a0, s10, 7
                  ori          sp, a2, 1914
                  and          a4, a7, gp
1575:             srl          t4, a3, t3
                  nop
                  srli         a3, ra, 14
                  xor          s8, ra, t2
1579:             slli         s9, s1, 12
                  and          tp, a4, s4
                  beq          sp, s11, 1593f
                  srl          s9, t5, tp
                  bne          t0, a5, 1591f
                  srai         t3, a4, 5
                  srl          t4, s5, t4
                  ori          s9, a2, 443
                  slti         t0, ra, -249
                  sra          s3, a3, sp
                  and          a6, gp, a6
                  slt          s1, a6, t0
1591:             bne          t0, a1, 1610f
                  andi         s11, s6, 1331
1593:             bge          t2, s2, 1595f
                  blt          a3, s7, 1605f
1595:             lui          t0, 583178
                  nop
                  sra          zero, t5, s7
                  sltiu        s1, s11, 1975
                  xori         a3, a3, -1398
                  srl          sp, t0, s0
                  xori         s1, a1, -1079
                  slt          s3, s0, t3
                  ori          s7, t0, -1
                  lui          zero, 936355
1605:             and          a3, a1, a2
                  xor          a5, s7, tp
                  xori         a0, t3, 414
                  andi         s7, zero, -584
                  sub          a1, s11, s4
1610:             srl          tp, t6, a2
                  slt          a1, s6, a4
                  slti         zero, a3, 836
                  bgeu         a2, a2, 1621f
                  sltiu        s5, sp, -1878
                  lui          s1, 195378
                  sltu         a4, t4, gp
                  slti         sp, s10, -172
                  nop
                  nop
                  and          a7, s2, zero
1621:             slt          s4, s3, s2
                  add          a3, a6, zero
                  add          s9, s7, s8
                  slt          t6, s0, t5
                  or           s6, s11, tp
                  sub          a7, s10, s7
                  srli         a6, a0, 6
                  lui          s8, 986966
                  slt          a5, a5, s11
                  slti         s5, t2, 744
                  addi         s6, a3, -1262
                  nop
                  and          a3, gp, sp
                  addi         s4, t1, 792
                  ori          t0, s1, 612
                  sltiu        a7, s8, 1853
                  bltu         a4, s11, 1657f
                  slli         t4, a5, 21
                  auipc        a0, 70977
                  add          gp, gp, s6
                  bge          a2, s5, 1660f
                  bltu         t5, a3, 1645f
                  bltu         s4, s6, 1651f
                  nop
1645:             or           s7, a4, t3
                  srli         zero, t2, 22
                  bgeu         t2, t2, 1662f
                  slt          t4, s0, a4
                  bgeu         a6, s1, 1661f
                  sltu         s0, a4, s7
1651:             sra          s11, a6, s3
                  slti         a7, t3, -139
                  srl          t2, s6, s1
                  add          t6, t3, t0
                  sra          a7, s2, s3
                  slti         gp, a2, -22
1657:             bge          s6, t0, 1660f
                  ori          a1, a3, 386
                  blt          s4, gp, 1664f
1660:             lui          a1, 145381
1661:             srl          a7, a7, s6
1662:             beq          s4, t5, 1667f
                  bltu         t1, a7, 1666f
1664:             bge          zero, t0, 1673f
                  sll          s7, s8, sp
1666:             blt          a4, a0, 1668f
1667:             srl          a0, a4, t0
1668:             addi         a0, a4, -1532
                  slt          t2, s5, t4
                  auipc        s4, 883912
                  slli         a4, s1, 22
                  srai         a6, a3, 3
1673:             andi         t3, t2, 601
                  bltu         a3, gp, 1683f
                  blt          t5, s0, 1687f
                  and          t1, t5, t6
                  srl          a3, a4, s4
                  sll          a1, tp, s2
                  slli         s10, a5, 20
                  srli         a4, s10, 4
                  sltiu        gp, t6, -1008
                  xori         s8, s8, -87
1683:             srai         ra, t1, 12
                  slti         t1, s1, -1415
                  sltiu        a1, t0, 585
                  bne          s7, zero, 1694f
1687:             sub          t4, a7, zero
                  add          gp, a7, a2
                  slti         t2, a6, 654
                  srai         t3, sp, 19
                  sltiu        a1, s7, -311
                  srli         s11, zero, 4
                  bgeu         t5, tp, 1699f
1694:             bge          s8, s6, 1695f
1695:             andi         sp, a6, 1974
                  ori          zero, a7, 946
                  ori          t1, s3, -94
                  sub          sp, sp, sp
1699:             sub          s3, s9, t1
                  srl          t0, s5, t3
                  la           s10, region_1+1219 #start riscv_load_store_rand_instr_stream_12
                  sb           tp, -254(s10)
                  srl          gp, zero, t6
                  sb           tp, 158(s10)
                  sltu         tp, s0, ra
                  lb           s9, 215(s10)
                  lb           s1, -224(s10)
                  ori          sp, t1, 105
                  or           a6, tp, s8
                  srl          a6, s0, s5
                  lb           t1, -224(s10)
                  sub          a3, s8, s10
                  srl          t4, s2, sp
                  slli         tp, a0, 1
                  sb           a5, -197(s10)
                  slt          a0, a5, a0
                  sltu         s9, a6, s10
                  lb           a0, -57(s10)
                  lb           s11, 76(s10)
                  or           t0, gp, t4
                  lb           s11, -33(s10)
                  addi         gp, s10, -1157
                  slt          a0, s2, s1
                  lhu          s1, 207(s10)
                  xor          gp, t6, s0
                  lb           a0, -130(s10)
                  andi         t3, s0, 1185
                  sltu         a0, gp, s10
                  sltu         t6, sp, a2
                  sll          sp, s1, s1
                  sb           a3, -236(s10)
                  xori         zero, sp, -1357
                  lh           t1, -215(s10)
                  lb           s3, 112(s10)
                  lhu          gp, -101(s10)
                  lhu          s11, -45(s10)
                  slt          a3, s3, s5
                  sb           sp, 162(s10)
                  lbu          t3, -92(s10)
                  or           t2, s5, t3
                  lh           a3, 191(s10)
                  sb           a6, 3(s10)
                  nop
                  lb           a4, -122(s10)
                  lbu          t2, 214(s10)
                  lui          s0, 570169
                  slti         s6, tp, 2004
                  add          a3, a5, a4
                  slt          a6, a2, tp
                  xori         t3, s2, 606
                  lb           a1, 54(s10)
                  sb           t4, 42(s10) #end riscv_load_store_rand_instr_stream_12
                  bltu         t5, t5, 1721f
                  bne          ra, a7, 1710f
                  lui          s9, 833744
                  xori         s1, t1, 1254
                  slt          t2, sp, t0
                  ori          t0, a5, 1756
                  nop
                  lui          t6, 743447
                  sub          t2, zero, s1
1710:             srli         s7, a6, 19
                  srai         s0, s9, 0
                  srai         a1, sp, 10
                  srli         s10, t0, 2
                  sub          s5, a2, t0
                  beq          s11, s5, 1718f
                  srli         t2, s0, 17
                  auipc        tp, 298313
1718:             nop
                  srl          s6, a6, gp
                  xor          s11, a2, s6
1721:             blt          tp, t5, 1726f
                  bge          s0, s10, 1741f
                  and          a3, s9, a6
                  nop
                  srli         a5, s6, 22
1726:             blt          s2, a6, 1740f
                  auipc        a3, 974489
                  xori         s4, s5, 1229
                  nop
                  slli         ra, s11, 31
                  or           tp, s4, s4
                  lui          t1, 570471
                  addi         a1, t6, -1396
                  srli         s4, t3, 22
                  addi         gp, a3, -1633
                  srli         ra, a3, 31
                  slti         zero, ra, -109
                  add          t1, gp, s5
                  sub          s3, t4, a7
1740:             bgeu         gp, s11, 1745f
1741:             ori          s3, t3, 1061
                  srai         t6, t4, 14
                  auipc        t1, 788395
                  or           a6, zero, zero
1745:             nop
                  sub          t6, s1, t5
                  sub          a1, t6, a0
                  auipc        t6, 66442
                  xor          sp, s2, s2
                  blt          tp, t5, 1758f
                  nop
                  lui          ra, 67896
                  srl          a4, tp, s7
                  xor          a3, t5, s11
                  slli         s1, t6, 10
                  sltu         a7, a2, s11
                  addi         zero, a3, 1743
1758:             sra          t2, s8, s0
                  bgeu         s3, a2, 1770f
                  srl          s9, a2, ra
                  sll          a5, ra, s6
                  sltu         t4, sp, s8
                  and          a5, t4, a6
                  addi         s6, a7, -1823
                  sub          s6, ra, s3
                  nop
                  bgeu         ra, s10, 1782f
                  lui          s10, 794628
                  slli         t0, ra, 20
1770:             sltu         t4, a7, s8
                  bne          t5, t2, 1786f
                  auipc        t4, 314707
                  bne          s8, s1, 1788f
                  bne          s7, a6, 1777f
                  blt          a4, tp, 1778f
                  auipc        s8, 970203
1777:             xor          s0, a1, a4
1778:             sltiu        ra, s8, 228
                  nop
                  sltu         a4, a1, s6
                  bge          a3, s5, 1786f
1782:             sra          a5, zero, s5
                  bne          sp, s6, 1791f
                  beq          t6, t5, 1793f
                  sub          s4, s6, a4
1786:             ori          t2, t0, -377
                  srli         s0, a2, 5
1788:             lui          t4, 179602
                  blt          s1, a4, 1808f
                  xori         a7, t4, -931
1791:             sub          t3, s5, a4
                  xori         a1, t2, 1814
1793:             xor          s3, t6, t3
                  slt          gp, t2, sp
                  bne          t1, a1, 1804f
                  auipc        tp, 670439
                  or           ra, t1, s2
                  and          t2, s2, t6
                  xor          a4, zero, zero
                  and          t3, a1, t5
                  srl          a1, a7, sp
                  bgeu         tp, t4, 1814f
                  srl          s11, t0, s0
1804:             sltiu        t3, s1, -815
                  bne          s10, t1, 1816f
                  bne          gp, a1, 1815f
                  xor          t1, a7, ra
1808:             srl          ra, tp, a3
                  slti         s9, t3, 440
                  bne          a3, tp, 1823f
                  beq          t0, s4, 1816f
                  bltu         t6, a7, 1827f
                  or           a3, s1, s2
1814:             slti         gp, s3, 1933
1815:             blt          s7, s7, 1820f
1816:             srai         ra, a6, 27
                  slti         s7, s8, -1514
                  sra          s10, a3, s5
                  addi         gp, tp, 4
1820:             sub          s5, tp, t6
                  srai         a7, s7, 4
                  xori         s4, zero, 786
1823:             addi         s5, s7, 1642
                  addi         s9, s6, 605
                  andi         a0, s9, -1443
                  or           s3, a7, t3
1827:             slt          s8, s7, s0
                  or           a3, s6, a1
                  slt          a0, t3, s11
                  sra          s10, s11, s5
                  sra          s11, a0, t3
                  or           a5, s0, t3
                  srl          s10, zero, t3
                  xor          a3, s0, s9
                  srai         s0, s5, 21
                  srli         t1, a0, 27
                  sub          a6, sp, sp
                  sltiu        a0, ra, -1440
                  nop
                  sltiu        zero, t6, -1947
                  auipc        s1, 447563
                  sll          s5, t4, t3
                  slli         a5, s5, 23
                  or           t6, s11, s6
                  andi         s7, s0, 1778
                  bltu         s7, s3, 1852f
                  srli         s0, s0, 12
                  srli         sp, t4, 0
                  srai         a5, s10, 6
                  add          gp, tp, s9
                  sra          t2, a6, s4
1852:             bgeu         a1, a1, 1861f
                  blt          gp, a0, 1867f
                  sltiu        zero, t3, 80
                  srai         t0, s4, 4
                  lui          gp, 117722
                  slt          a4, ra, ra
                  addi         t2, s1, -232
                  sltu         s5, t3, s4
                  srli         t3, s2, 23
1861:             auipc        s0, 318647
                  sra          gp, s5, tp
                  slt          zero, s11, a1
                  slti         t2, gp, -1164
                  blt          t0, zero, 1874f
                  srli         s10, a0, 1
1867:             blt          a5, s2, 1875f
                  srai         a3, ra, 12
                  slli         zero, gp, 3
                  andi         t1, s5, 657
                  bne          t5, a4, 1886f
                  xor          s9, s7, tp
                  srl          t0, s1, tp
1874:             ori          s1, t1, -48
1875:             sltu         t6, a6, tp
                  sll          sp, t0, s11
                  nop
                  bgeu         s7, t1, 1891f
                  xori         s4, t3, -553
                  srli         sp, a7, 10
                  srai         s9, a5, 0
                  sub          tp, s4, tp
                  auipc        t4, 755588
                  sltu         zero, a4, t6
                  srli         t6, s1, 4
1886:             slli         sp, s3, 28
                  or           s10, s4, a7
                  bne          sp, s4, 1897f
                  bgeu         a4, s8, 1909f
                  blt          s9, a5, 1905f
1891:             addi         s5, a0, 846
                  srl          gp, s0, gp
                  lui          t0, 567239
                  add          s11, a1, a5
                  or           s4, gp, s8
                  blt          s3, a1, 1899f
1897:             bne          zero, s9, 1905f
                  sra          s4, s7, sp
1899:             nop
                  auipc        t3, 423188
                  addi         a5, zero, -883
                  xor          s0, t3, t5
                  beq          a2, t2, 1908f
                  srli         s4, a5, 26
1905:             sll          s5, s6, s2
                  slti         tp, s0, 458
                  sub          s4, a3, s10
1908:             sra          t0, a3, t6
1909:             or           t4, s11, t0
                  slli         s7, tp, 7
                  add          s0, s6, t5
                  blt          s11, a5, 1914f
                  sltiu        s6, s11, 1506
1914:             beq          a3, a1, 1933f
                  addi         gp, s5, -283
                  sub          s7, s0, sp
                  or           s4, a0, t3
                  xori         a4, t6, -1354
                  xori         a5, s8, 996
                  sltiu        s9, s6, -1231
                  xor          zero, s6, s10
                  sll          s3, a7, a2
                  andi         a0, a7, -1014
                  sltu         a4, s9, ra
                  bgeu         t2, a3, 1944f
                  sltu         sp, t6, s9
                  lui          s8, 102226
                  xori         s7, a0, 1784
                  sub          s0, a5, a5
                  xori         s6, a1, -1548
                  or           a0, a1, zero
                  or           s5, s9, a1
1933:             or           t4, zero, s2
                  srl          sp, s7, tp
                  slti         a7, t1, 1455
                  xori         zero, t6, 1172
                  ori          s6, s8, 1107
                  sub          s8, a1, t1
                  lui          s9, 439090
                  srl          a7, a2, a6
                  addi         s9, a0, -35
                  nop
                  sll          a6, t2, a4
1944:             bgeu         ra, s5, 1945f
1945:             xor          a5, s0, s11
                  or           a6, sp, a1
                  nop
                  sltu         gp, s0, s9
                  auipc        s6, 482488
                  or           s10, a4, s8
                  lui          s5, 549320
                  ori          t6, t2, 663
                  beq          s4, s10, 1962f
                  sltu         gp, s0, s11
                  addi         t4, a7, 1855
                  sltu         s7, s10, s1
                  beq          a0, t0, 1960f
                  add          s5, s5, a1
                  sll          tp, t2, a5
1960:             or           a5, s1, tp
                  xori         zero, s0, 563
1962:             bltu         a3, t4, 1967f
                  bgeu         gp, gp, 1968f
                  bltu         s9, s3, 1975f
                  srl          ra, a5, tp
                  bne          tp, a1, 1974f
1967:             bne          a5, s1, 1975f
1968:             sltu         s6, s6, tp
                  sltiu        t3, s3, 1026
                  sltu         s1, sp, t1
                  and          a6, s6, s11
                  bltu         t4, gp, 1984f
                  xor          t3, sp, tp
1974:             and          tp, s2, a5
1975:             add          s11, s3, s3
                  add          a3, s6, s5
                  slti         a6, s5, 708
                  add          a7, t6, a3
                  sra          s6, zero, s6
                  sltiu        s6, t5, 1337
                  nop
                  andi         tp, a1, 494
                  bge          s10, tp, 1995f
1984:             sltu         gp, t0, a4
                  sra          s4, s0, s11
                  addi         s9, s6, -959
                  bgeu         t5, a0, 1998f
                  and          t0, s11, t0
                  or           a4, s11, a0
                  srli         a6, a3, 29
                  sra          tp, ra, s9
                  andi         t3, t3, -177
                  and          a6, s3, s6
                  srli         t2, s0, 7
1995:             sltu         s0, a2, gp
                  sltu         s9, ra, a5
                  andi         s11, t4, 1039
1998:             bltu         s0, s2, 2001f
                  sltu         s1, a4, zero
                  andi         a0, s8, -1378
2001:             addi         s3, t4, -1221
                  srai         s5, t1, 20
                  beq          s2, s11, 2006f
                  andi         a0, t2, 291
                  srl          zero, tp, s11
2006:             sll          a7, s10, s6
                  sltu         zero, a4, s7
                  andi         s6, s8, 902
                  auipc        a7, 308940
                  bge          t3, s9, 2015f
                  srai         s3, s2, 4
                  andi         s6, t1, 1522
                  bgeu         t2, s3, 2028f
                  blt          s7, s1, 2019f
2015:             add          s1, s0, s6
                  addi         t1, s5, -1328
                  sltu         s4, s2, t4
                  sub          s3, t1, a6
2019:             addi         tp, s0, -1586
                  slti         s6, s8, -1933
                  sub          s0, a6, s2
                  add          t1, zero, s10
                  sltu         a3, a6, s11
                  auipc        tp, 372991
                  lui          s11, 682547
                  bge          s3, a6, 2029f
                  sltu         s6, a0, a6
2028:             sll          gp, s11, s3
2029:             beq          s9, a4, 2038f
                  xori         t6, t0, 272
                  sra          t4, s7, t1
                  sll          t6, s2, s10
                  bne          a3, ra, 2048f
                  add          t0, s3, s8
                  sra          s5, a3, a6
                  bne          s7, t5, 2039f
                  xor          s7, sp, t6
2038:             sltu         a4, t4, zero
2039:             bne          s9, t4, 2047f
                  sltiu        a6, a7, -1055
                  and          zero, a6, zero
                  andi         a7, a5, 2043
                  andi         a3, a4, -880
                  add          tp, t3, s1
                  srl          ra, a6, a7
                  sltu         a3, s4, s10
2047:             sltu         ra, s6, t2
2048:             srli         s4, s0, 20
                  andi         t6, zero, 828
                  lui          a5, 494960
                  lui          t6, 838976
                  sra          t6, a7, a7
                  srli         s8, t5, 2
                  bne          zero, a0, 2060f
                  bne          s3, t4, 2069f
                  nop
                  add          s8, a1, t3
                  bne          a5, s7, 2067f
                  slti         s11, a1, -858
2060:             lui          s10, 981281
                  bgeu         s10, s11, 2062f
2062:             andi         s0, s3, -535
                  bge          t0, zero, 2072f
                  or           s11, s11, t6
                  xor          t3, t3, s0
                  xori         s0, ra, -2024
2067:             slli         t1, s8, 19
                  beq          s3, a2, 2088f
2069:             bgeu         a3, t5, 2088f
                  nop
                  sltu         s3, a3, ra
2072:             andi         s11, s8, -1087
                  and          zero, s7, ra
                  bltu         t2, t4, 2076f
                  slt          a0, s7, s8
2076:             lui          a6, 116557
                  auipc        s4, 949600
                  sra          s7, t5, a7
                  bltu         s2, tp, 2088f
                  sltiu        sp, s7, -82
                  xor          tp, a5, a1
                  ori          a0, s11, 1749
                  and          s7, t1, s10
                  lui          a7, 640851
                  slli         a1, a1, 24
                  slli         ra, a0, 19
                  ori          s6, a5, -769
2088:             or           a6, s1, a1
                  srl          a3, a6, s0
                  lui          s11, 950713
                  bne          s11, a4, 2103f
                  blt          t1, a2, 2103f
                  and          a7, t5, t2
                  bgeu         s1, s3, 2106f
                  bltu         s0, t4, 2114f
                  bge          ra, t6, 2101f
                  srai         s11, s7, 4
                  xori         s5, a5, 133
                  nop
                  sra          a1, a5, s6
2101:             sll          s5, s9, t6
                  sltu         tp, s4, a1
2103:             andi         a4, s9, -1566
                  sltiu        sp, t6, 1653
                  and          gp, gp, s5
2106:             add          s5, t2, tp
                  bgeu         t0, t1, 2112f
                  andi         a3, s8, 1295
                  or           t4, t0, s4
                  srai         s0, s8, 18
                  beq          gp, s9, 2124f
2112:             srli         a0, a5, 22
                  beq          t2, t3, 2124f
2114:             nop
                  srai         s0, s2, 13
                  nop
                  bgeu         a2, t3, 2125f
                  slt          a7, a5, s4
                  add          a5, s3, t4
                  sub          s8, sp, s10
                  lui          s10, 731073
                  blt          a5, a5, 2130f
                  blt          sp, a6, 2131f
2124:             bne          s0, t6, 2139f
2125:             lui          a5, 970
                  beq          t1, tp, 2141f
                  sltiu        t0, sp, 1130
                  xori         s7, zero, 1145
                  or           zero, s10, t5
2130:             slti         tp, a0, 450
2131:             srl          s7, zero, s0
                  lui          t4, 338596
                  srai         s0, s6, 1
                  xor          tp, a7, a2
                  slt          s9, a2, s3
                  blt          s2, a7, 2144f
                  ori          s5, a1, 1215
                  slli         ra, a2, 6
2139:             add          tp, t6, a7
                  auipc        s6, 451106
2141:             ori          t3, a2, 1786
                  srli         sp, t4, 18
                  srai         t0, a0, 29
2144:             bgeu         ra, zero, 2147f
                  auipc        s10, 47392
                  sll          t1, t5, a3
2147:             auipc        a3, 489477
                  srai         t0, a1, 21
                  lui          s10, 984704
                  beq          s8, t5, 2156f
                  xori         s3, a4, -394
                  sltiu        gp, t5, 1198
                  slt          s10, s10, sp
                  auipc        s10, 992261
                  addi         tp, zero, 1127
2156:             slli         t4, t2, 10
                  xori         a4, t3, -1203
                  slli         t1, s2, 15
                  blt          s5, a4, 2164f
                  sltiu        a5, s9, 1115
                  srli         s3, a0, 3
                  sll          s3, a7, s0
                  sll          t1, gp, s3
2164:             slti         t1, a1, -1932
                  srai         a1, a6, 8
                  sll          sp, s1, a0
                  sltiu        s1, s7, 946
                  nop
                  nop
                  beq          a1, t5, 2179f
                  slti         t3, t5, -1056
                  xor          a5, t5, s1
                  sub          s0, sp, s3
                  sub          a1, a3, a3
                  bgeu         a3, s7, 2190f
                  bge          sp, a6, 2184f
                  bgeu         a0, t6, 2185f
                  srai         sp, sp, 5
2179:             bne          s7, t5, 2193f
                  andi         s7, a3, 104
                  ori          s10, a1, 1462
                  sltu         a0, zero, t3
                  bge          t0, a6, 2202f
2184:             srl          a1, t2, t3
2185:             ori          s6, a7, 586
                  sltu         s4, a1, zero
                  sltiu        ra, a6, -118
                  sltiu        s3, s9, -314
                  srli         gp, a6, 25
2190:             xori         s11, s11, -2000
                  slli         t2, s9, 19
                  srli         a7, s1, 26
2193:             or           s8, t6, tp
                  slti         t6, s5, -1326
                  or           a4, zero, t5
                  sltu         t6, s7, s3
                  add          s0, s7, t2
                  sra          zero, t1, t6
                  srl          s6, a5, t2
                  auipc        zero, 785148
                  ori          a1, a7, -413
2202:             add          s8, a0, a6
                  nop
                  srl          a4, s0, s8
                  add          s5, s6, s3
                  blt          s0, tp, 2208f
                  bgeu         gp, s9, 2216f
2208:             sub          a1, a7, tp
                  beq          s5, s11, 2210f
2210:             sltu         s6, t4, s4
                  sra          s3, a7, s0
                  lui          s0, 778870
                  srli         s7, sp, 28
                  add          a0, s9, s5
                  or           gp, t4, t4
2216:             or           zero, zero, s4
                  sltiu        a7, gp, -1345
                  sltiu        a5, s11, -351
                  beq          ra, t4, 2234f
                  sub          a4, s10, t2
                  auipc        s8, 828129
                  and          s8, t3, t1
                  slti         a1, t0, -2005
                  bltu         gp, s2, 2237f
                  bne          a5, t3, 2228f
                  bne          s7, sp, 2238f
                  beq          a1, zero, 2230f
2228:             addi         a0, s6, 531
                  sll          s7, gp, t1
2230:             sub          t6, t2, t3
                  bltu         a0, t2, 2242f
                  bgeu         s1, ra, 2243f
                  lui          t4, 395463
2234:             sll          s10, t3, sp
                  sltu         s9, s0, s7
                  auipc        a3, 626491
2237:             or           zero, ra, t5
2238:             nop
                  lui          a4, 444012
                  sub          tp, a1, t1
                  srl          t1, ra, t2
2242:             srai         t3, t5, 24
                  la           a5, region_0+1862 #start riscv_load_store_rand_instr_stream_26
                  sb           t4, 1(a5)
                  sw           a6, -14(a5)
                  or           s9, s11, t0
                  nop
                  srli         s0, t4, 16
                  lbu          s5, -15(a5)
                  lhu          t0, 8(a5)
                  srl          a1, a2, a1
                  sll          a7, a4, a5
                  lbu          a3, 15(a5)
                  sra          a0, t3, s0
                  addi         zero, s4, -1227
                  sll          a3, a5, t6
                  lui          a0, 799658
                  sb           t2, -14(a5)
                  xori         s1, s1, 443
                  sh           s7, -14(a5)
                  sra          t3, a1, s6
                  sll          a1, s5, t5
                  lbu          a6, 5(a5)
                  lw           s10, -14(a5)
                  slti         s6, t3, 1670
                  slti         s4, a5, -805
                  srl          t1, t1, sp
                  sltiu        a3, s7, -993
                  lh           ra, -4(a5)
                  srai         a7, a6, 5
                  lb           a6, -8(a5)
                  lbu          s4, -11(a5)
                  slli         t4, a3, 7
                  sltiu        zero, t6, -733
                  or           a0, s5, ra
                  sltu         ra, a0, t2
                  lb           t6, 7(a5)
                  lh           t2, 2(a5)
                  andi         s9, s8, -331
                  slli         sp, t0, 17
                  or           t1, t0, t0
                  srai         t2, s9, 21
                  slli         sp, s1, 6
                  lbu          a4, 1(a5)
                  xori         s4, ra, 1355
                  lbu          s7, -7(a5)
                  and          a4, s2, t5
                  lb           tp, -5(a5)
                  lhu          s3, -8(a5)
                  sb           t6, 5(a5)
                  lbu          s4, 2(a5) #end riscv_load_store_rand_instr_stream_26
2243:             srl          a6, s10, a4
                  or           a1, gp, a5
                  sub          a0, a3, a3
                  add          a4, zero, t1
                  srai         s4, t2, 15
                  sltu         t4, a1, a7
                  bgeu         t2, s5, 2261f
                  slti         s3, t4, -549
                  sltu         t6, a5, s10
                  beq          t0, sp, 2260f
                  bge          t1, sp, 2262f
                  andi         s9, s6, 65
                  addi         s10, s7, 89
                  xor          t3, s3, t2
                  and          s9, a6, t2
                  sra          s4, a7, s5
                  srli         s0, s10, 25
2260:             sub          a7, s11, t4
2261:             blt          s3, ra, 2280f
2262:             sltu         s6, s10, a3
                  sra          t1, s9, a2
                  srl          a4, sp, s5
                  srli         a3, ra, 14
                  sll          t0, s9, a5
                  bge          s9, s2, 2272f
                  xori         a7, t1, 266
                  slt          a5, a0, zero
                  add          s7, a1, s8
                  addi         a5, ra, 975
2272:             sll          s0, s7, s10
                  bge          t6, zero, 2282f
                  srli         s0, t1, 29
                  ori          s8, a4, 1410
                  add          sp, a4, s11
                  bgeu         s0, s9, 2297f
                  bne          a6, t6, 2283f
                  bge          a0, s7, 2284f
2280:             sub          t4, t3, a1
                  sltu         a5, s11, a1
2282:             xori         a3, s0, -1773
2283:             sub          s6, t5, s0
2284:             xori         a7, s6, -1864
                  bge          s8, tp, 2294f
                  auipc        t6, 289440
                  sltu         s0, a3, a4
                  and          s8, s8, ra
                  beq          a0, s3, 2303f
                  blt          s6, s5, 2293f
                  sltu         zero, s9, a4
                  sub          t2, s9, t0
2293:             andi         s10, t5, -1243
2294:             lui          s9, 545788
                  slti         a3, a1, 1795
                  slli         a1, s4, 13
2297:             andi         s0, zero, 829
                  srl          t3, s2, s10
                  sub          s9, ra, t3
                  sltu         s9, zero, a7
                  beq          a7, s6, 2309f
                  bge          s0, s8, 2322f
2303:             and          t0, t1, t1
                  beq          a5, t4, 2312f
                  nop
                  slt          s0, t2, t3
                  or           s7, t2, s10
                  and          t6, t5, a0
2309:             sltu         s1, t4, s4
                  and          ra, tp, a3
                  srai         s7, zero, 0
2312:             bgeu         s4, gp, 2325f
                  srai         tp, s4, 14
                  beq          a1, a6, 2325f
                  sra          t6, a2, a6
                  bltu         a7, s3, 2331f
                  bge          gp, s2, 2332f
                  blt          t2, s0, 2321f
                  bgeu         s2, s10, 2320f
2320:             sub          s8, ra, s3
2321:             beq          s7, a6, 2336f
2322:             andi         s9, t2, 715
                  bne          a2, a4, 2325f
                  andi         a7, s3, -1291
2325:             srl          ra, s3, s7
                  bne          s8, a7, 2345f
                  slti         a0, a0, -1697
                  add          t1, zero, t2
                  slli         t3, s5, 18
                  blt          gp, a4, 2342f
2331:             bge          s5, sp, 2336f
2332:             and          s11, s2, zero
                  srli         t3, t1, 15
                  sltu         t3, s0, sp
                  bgeu         s7, a0, 2340f
2336:             bne          s10, t4, 2348f
                  bgeu         ra, t0, 2356f
                  and          a5, s4, a6
                  lui          gp, 319016
2340:             auipc        gp, 733519
                  slt          t1, s8, s11
2342:             bne          s0, s1, 2351f
                  blt          s5, a4, 2354f
                  add          a7, ra, s10
2345:             srl          s11, s6, ra
                  bltu         s5, t4, 2354f
                  addi         t1, a6, -210
2348:             bgeu         zero, zero, 2357f
                  andi         s11, s0, -747
                  sra          s10, ra, a0
2351:             andi         s6, a4, 257
                  nop
                  bge          ra, s2, 2358f
2354:             slli         a4, s6, 7
                  beq          a2, gp, 2364f
2356:             or           t4, s0, s11
2357:             sub          s7, s5, a4
2358:             blt          s6, s11, 2364f
                  bgeu         a1, gp, 2364f
                  srl          s7, s9, a4
                  slli         s6, sp, 19
                  nop
                  srl          a6, ra, a4
2364:             sub          t0, tp, s2
                  slt          s8, t0, a2
                  ori          ra, sp, -412
                  sltiu        ra, a4, 598
                  andi         s8, a3, 1978
                  srl          s11, s7, s2
                  ori          s3, t1, -1434
                  srli         t1, a2, 23
                  auipc        s3, 801161
                  blt          s10, s11, 2376f
                  slti         s0, t5, 1745
                  srli         zero, a7, 3
2376:             bne          a4, gp, 2384f
                  bge          a4, a1, 2379f
                  bge          t5, s0, 2390f
2379:             add          s11, t3, s10
                  srl          tp, t1, s6
                  blt          a1, s7, 2389f
                  beq          t1, s7, 2385f
                  slti         s5, t3, 1399
2384:             bltu         a4, s8, 2404f
2385:             blt          s9, s4, 2398f
                  bltu         s7, a1, 2401f
                  add          s10, s3, a5
                  blt          a6, a3, 2397f
2389:             sra          s0, t4, s2
2390:             srl          s9, zero, s6
                  sra          t3, a0, a3
                  or           a3, a0, t1
                  beq          s10, a7, 2402f
                  sub          s11, t5, zero
                  and          s8, t0, s7
                  slti         s11, s5, -781
2397:             add          a0, t5, t6
2398:             sra          zero, gp, s10
                  andi         s11, s7, -88
                  xor          zero, zero, zero
2401:             bne          s2, s3, 2407f
2402:             or           a5, s3, a7
                  srai         s10, s11, 5
2404:             blt          sp, t5, 2412f
                  sltiu        t4, s3, 524
                  andi         s0, sp, -1196
2407:             beq          s2, s5, 2415f
                  blt          t4, a6, 2409f
2409:             bgeu         a3, s10, 2421f
                  bne          t5, a7, 2415f
                  srl          a4, s3, sp
2412:             xori         a1, a2, -1839
                  nop
                  andi         zero, s11, 1824
2415:             auipc        t0, 823019
                  srai         tp, a4, 30
                  srli         t4, s10, 14
                  andi         t0, t5, -760
                  srli         t4, a7, 24
                  add          t6, tp, sp
2421:             bge          s8, a4, 2426f
                  bgeu         a2, zero, 2431f
                  auipc        sp, 194847
                  auipc        a3, 387311
                  and          t1, s10, a4
2426:             nop
                  nop
                  lui          t3, 958843
                  xori         s4, s3, -1110
                  bge          tp, s2, 2435f
2431:             slli         s11, s9, 29
                  ori          a7, a6, 775
                  and          s11, s10, s8
                  xori         s6, tp, 1411
2435:             auipc        zero, 223421
                  bge          a7, s0, 2451f
                  bne          s10, s7, 2446f
                  srli         s9, tp, 16
                  add          s9, sp, s9
                  ori          a6, a1, -478
                  andi         s10, s3, -539
                  sub          t1, a0, s1
                  addi         a6, a2, -1642
                  bne          s2, t6, 2463f
                  bne          gp, t4, 2459f
2446:             bge          a6, s10, 2449f
                  auipc        t0, 372497
                  beq          t2, a1, 2467f
2449:             srl          s11, s4, ra
                  sltiu        gp, s7, -810
2451:             or           t1, t0, t1
                  srl          s10, sp, t5
                  blt          s4, s0, 2468f
                  xor          t3, s3, ra
                  srl          a6, t2, sp
                  slli         tp, s7, 25
                  sltu         t0, gp, t4
                  blt          sp, t6, 2463f
2459:             addi         t4, a3, -1071
                  sra          s0, t0, s7
                  srl          s6, s3, tp
                  sll          a1, a5, zero
2463:             slli         s8, s3, 7
                  ori          s11, t1, 1005
                  add          ra, t0, s11
                  sltu         ra, s1, s8
2467:             xori         tp, a7, 1617
2468:             bgeu         a2, s3, 2476f
                  bne          s4, t1, 2480f
                  bltu         s0, t6, 2473f
                  sltiu        a7, t1, -411
                  sltu         tp, s10, a7
2473:             addi         t6, s8, 673
                  add          t2, t0, s10
                  slti         t2, s10, -115
2476:             bne          s10, gp, 2487f
                  slt          t3, a3, s9
                  slti         s10, a3, 1084
                  xor          s8, t6, t5
2480:             bgeu         t3, s3, 2491f
                  add          s11, s8, s3
                  srl          s3, s6, gp
                  xori         a7, s3, 412
                  xor          s11, a5, s4
                  sub          t3, ra, t2
                  addi         t0, tp, -1228
2487:             sltu         tp, t5, t5
                  bne          s3, a3, 2490f
                  beq          s3, t0, 2495f
2490:             bgeu         a7, s5, 2498f
2491:             add          a1, s0, s1
                  andi         t1, s10, 1817
                  xori         a0, s6, -281
                  xor          a5, s9, a0
2495:             bltu         s5, a6, 2504f
                  addi         a4, s3, -659
                  bgeu         t3, a0, 2516f
2498:             lui          zero, 630429
                  and          s5, a6, t0
                  nop
                  sltu         s0, s2, a6
                  add          gp, t4, s3
                  bltu         t0, s4, 2512f
2504:             sltu         a7, s8, s2
                  srai         s4, s2, 18
                  auipc        s9, 741415
                  srl          a5, tp, s9
                  sll          gp, t3, s0
                  ori          s8, a1, -1927
                  srl          a5, s10, a5
                  lui          a6, 985447
2512:             bgeu         s8, t1, 2527f
                  slli         s4, t0, 21
                  sra          a1, a1, a7
                  or           t0, t1, t6
2516:             slt          a5, t2, a3
                  srai         s9, s1, 9
                  sra          zero, a5, t6
                  beq          t0, s4, 2528f
                  sltu         s1, s7, t4
                  sltiu        s7, a7, -349
                  blt          s3, a7, 2527f
                  xori         sp, s6, 1415
                  andi         zero, a6, -1643
                  sra          t6, s11, s2
                  andi         s11, t3, -343
2527:             sll          t0, t1, a4
2528:             xor          t6, ra, t2
                  xor          a4, zero, s5
                  srli         t4, t5, 23
                  bne          tp, a0, 2539f
                  sub          tp, t6, s1
                  sltiu        zero, s10, 1558
                  beq          gp, a1, 2537f
                  sub          a0, tp, s9
                  xor          sp, a5, s4
2537:             bne          t6, s11, 2551f
                  ori          s5, s11, -1772
2539:             slti         t4, a1, 414
                  auipc        a0, 384830
                  auipc        s7, 335184
                  slti         s7, a2, 1831
                  lui          s7, 855394
                  sltiu        s6, zero, -401
                  slti         t6, a2, -1671
                  addi         zero, t3, 479
                  srl          s10, s9, s7
                  add          t3, s4, a0
                  srl          t4, t5, s5
                  auipc        a4, 712703
2551:             sll          a0, s0, t1
                  andi         t4, a3, -1347
                  sll          a3, a2, a2
                  srai         a7, s6, 26
                  blt          a7, t2, 2560f
                  bltu         tp, t0, 2564f
                  addi         s1, s7, -1253
                  srli         a3, tp, 17
                  srli         a3, s6, 28
2560:             or           sp, ra, a5
                  slti         s8, tp, -283
                  sltu         s7, sp, s8
                  lui          a6, 589887
2564:             srli         s7, ra, 30
                  and          s9, t5, s11
                  add          t0, s8, s2
                  sll          s10, a4, t6
                  andi         a0, s6, 215
                  addi         t3, s4, 296
                  beq          s10, t1, 2579f
                  sra          sp, a6, s1
                  auipc        a4, 3652
                  sll          s0, a4, t4
                  addi         a0, s9, 667
                  lui          t6, 1035848
                  sltu         s3, t2, s5
                  and          t2, a5, a6
                  add          t2, a5, s10
2579:             blt          t0, a3, 2590f
                  auipc        s7, 986245
                  xori         s4, s9, 1224
                  addi         t6, ra, 684
                  slt          s4, s7, a0
                  sra          ra, t0, gp
                  xori         s7, s4, 1717
                  srli         s11, a6, 27
                  sltu         s11, tp, s1
                  srai         s9, ra, 21
                  lui          s4, 36499
2590:             sltu         t1, s7, s1
                  andi         s1, t4, 1176
                  srl          s3, a7, sp
                  or           s9, a1, a5
                  srli         s1, s4, 22
                  nop
                  and          tp, t1, s7
                  addi         s3, sp, -1455
                  xor          sp, a3, t4
                  blt          a2, gp, 2611f
                  slti         t2, s5, 968
                  srli         t3, s6, 25
                  xor          a4, a1, s3
                  or           sp, gp, s1
                  bge          t5, a2, 2619f
                  auipc        s10, 216065
                  bge          a6, t6, 2614f
                  blt          t6, gp, 2610f
                  srl          s1, s4, a5
                  bne          zero, s11, 2629f
2610:             blt          t1, a7, 2613f
2611:             beq          s3, ra, 2626f
                  slt          s3, s6, tp
2613:             sltu         a0, s9, s0
2614:             sltiu        a5, zero, -1013
                  slli         t6, t3, 22
                  slli         s6, a4, 6
                  sltu         t3, s9, s3
                  or           a0, s8, a0
2619:             sub          s4, a0, a4
                  blt          s7, zero, 2621f
2621:             srl          s9, a5, a0
                  lui          a5, 336911
                  auipc        ra, 526118
                  sll          s11, zero, tp
                  xor          a0, a0, sp
2626:             sub          s5, s10, s3
                  bltu         s5, t5, 2640f
                  or           s6, s2, s1
2629:             sub          gp, a1, a0
                  slt          zero, s6, a0
                  bgeu         a4, t3, 2636f
                  xori         s1, t2, -1047
                  ori          t3, s3, 850
                  lui          a0, 915412
                  sra          s4, t1, a1
2636:             andi         s9, t1, 534
                  andi         a1, s1, -1377
                  slt          gp, a0, tp
                  bge          s9, ra, 2658f
2640:             slli         a4, s2, 19
                  bgeu         s9, gp, 2653f
                  add          a5, t4, a2
                  sltu         s7, a4, t2
                  bne          t1, a3, 2649f
                  slti         a1, t3, 1373
                  xori         t1, t6, 112
                  bltu         s4, ra, 2649f
                  xori         t2, zero, -1899
2649:             xor          s7, a0, s5
                  bne          s5, t5, 2655f
                  nop
                  srl          s9, a5, t0
2653:             or           tp, t1, sp
                  xori         a5, a3, 1395
2655:             xor          t2, s4, tp
                  and          s0, s7, s4
                  auipc        a1, 759308
2658:             nop
                  slt          s4, s2, s7
                  and          tp, a4, t3
                  srli         t1, t4, 28
                  sub          s11, s4, a0
                  addi         t0, sp, 1765
                  slti         s8, t5, -868
                  bge          s7, s10, 2671f
                  slt          gp, t5, s8
                  sltiu        sp, t6, -1239
                  addi         a1, tp, 910
                  bgeu         sp, s9, 2684f
                  add          s11, a5, s10
2671:             sll          a6, gp, a5
                  blt          s6, ra, 2686f
                  sltiu        s9, s11, 1851
                  lui          t2, 751901
                  sub          a5, t3, t5
                  srai         t2, s8, 31
                  sltiu        a1, s8, 504
                  beq          s5, s9, 2689f
                  srli         ra, gp, 13
                  sll          a5, s4, s1
                  bne          s1, t2, 2689f
                  sll          ra, s10, zero
                  srli         s6, s8, 0
2684:             addi         s7, a7, 1882
                  xori         t4, s6, -275
2686:             sltiu        a3, s10, -69
                  beq          s1, a4, 2706f
                  sll          a0, s0, t2
2689:             srli         a1, a0, 13
                  xor          a1, a1, s6
                  sltu         s6, zero, a2
                  srai         sp, t5, 19
                  or           a5, s11, s6
                  and          zero, s7, t6
                  xori         s9, gp, -254
                  sltu         a4, s5, a7
                  sra          t2, tp, gp
                  and          s9, a3, s8
                  nop
                  blt          a1, a7, 2709f
                  slli         zero, s0, 13
                  or           t0, a5, a3
                  sra          tp, a7, a3
                  auipc        t4, 805223
                  lui          a0, 924444
2706:             slt          sp, t1, t4
                  blt          a7, a2, 2719f
                  xori         s5, t0, -1770
2709:             xori         gp, s1, 1683
                  bge          t4, s3, 2711f
2711:             bge          t0, s3, 2730f
                  bge          s3, s4, 2715f
                  addi         ra, sp, 1440
                  bne          gp, t4, 2729f
2715:             or           sp, a5, s9
                  add          zero, s1, s8
                  slt          s7, tp, s10
                  sltiu        t2, a2, 1238
2719:             nop
                  slt          a4, s9, s8
                  bne          t5, s6, 2736f
                  ori          gp, t5, 1282
                  xori         a5, t4, -1563
                  nop
                  add          a0, a5, a1
                  slti         t4, ra, 1135
                  ori          s7, t1, -462
                  add          a1, a1, ra
2729:             sltiu        a7, s6, 1135
2730:             lui          s3, 881150
                  sub          sp, a5, t5
                  slli         a5, t6, 31
                  andi         s8, a4, -1449
                  add          t0, t1, s8
                  srai         t1, a4, 2
2736:             sltiu        a5, t5, -1295
                  ori          s0, a0, -2001
                  sltiu        zero, s7, 366
                  sra          a7, s8, s3
                  sltiu        sp, s4, -1612
                  srli         a1, ra, 11
                  slt          s6, a5, t4
                  bne          s1, s2, 2754f
                  slt          t6, a3, a3
                  sltiu        a1, ra, -553
                  sltiu        s10, gp, 1906
                  slli         s3, s10, 30
                  slti         s9, a6, 274
                  nop
                  or           a0, sp, s2
                  slti         a6, a5, 1590
                  auipc        sp, 95346
                  bge          a2, s9, 2758f
2754:             bne          s1, t3, 2763f
                  srai         s9, a6, 11
                  srli         a4, a4, 22
                  bge          s0, tp, 2765f
2758:             bgeu         a6, tp, 2771f
                  slti         s0, sp, -1696
                  or           s8, a2, s9
                  beq          s2, a0, 2770f
                  bne          a3, t5, 2765f
2763:             xori         s1, t2, 875
                  srai         s1, zero, 29
2765:             srl          a6, gp, gp
                  slli         a3, a0, 18
                  andi         a0, gp, 1700
                  sll          s5, s7, s10
                  xor          s8, s9, s5
2770:             sll          tp, s5, t2
2771:             slli         t1, t3, 21
                  beq          a6, s6, 2780f
                  beq          s2, a6, 2778f
                  and          s3, s1, s1
                  auipc        zero, 217331
                  ori          t3, s5, 1505
                  sltu         s10, tp, s10
2778:             slti         s11, a1, 1082
                  beq          t1, zero, 2791f
2780:             sltiu        zero, a2, -975
                  or           t3, a7, s10
                  bge          tp, zero, 2787f
                  andi         s7, sp, 543
                  sltu         s9, s1, s0
                  ori          sp, s2, -1147
                  ori          t3, s9, 801
2787:             and          a6, a2, s10
                  ori          s9, t6, -1527
                  bltu         sp, a2, 2809f
                  srai         sp, a3, 4
2791:             beq          t0, s5, 2794f
                  srli         t3, s10, 27
                  nop
2794:             auipc        s8, 1032676
                  bge          t1, t2, 2804f
                  sltu         s9, a1, a2
                  ori          tp, s11, -1520
                  slli         tp, s8, 25
                  add          s10, a7, t3
                  and          a6, s9, a5
                  sub          a6, a0, s4
                  srl          gp, s5, s5
                  sub          s10, a3, s4
2804:             sub          sp, t0, t4
                  bge          s9, s11, 2813f
                  add          a3, s10, sp
                  bltu         s1, t0, 2815f
                  ori          t3, t0, -1811
2809:             sltu         zero, a2, t3
                  sll          t3, s9, s6
                  or           t3, s6, s11
                  sub          s11, a0, t5
2813:             xor          s8, t1, s1
                  xori         a5, s11, -662
2815:             and          s4, t2, t4
                  lui          t2, 199882
                  nop
                  and          s8, s9, t4
                  srl          s10, zero, gp
                  lui          a7, 561965
                  bgeu         a6, a7, 2829f
                  xori         a1, t2, -1005
                  bne          a3, tp, 2835f
                  srli         gp, tp, 5
                  sll          zero, gp, t4
                  or           s10, s3, a3
                  slt          gp, s10, s8
                  bltu         a3, a7, 2833f
2829:             bne          ra, s6, 2848f
                  beq          t2, s11, 2838f
                  ori          ra, s5, -24
                  xori         sp, s9, -280
2833:             and          a7, a2, s10
                  auipc        a6, 285335
2835:             lui          t2, 734443
                  beq          s6, s4, 2851f
                  slti         tp, zero, -337
2838:             sub          t0, a1, a3
                  beq          s4, s0, 2858f
                  bge          a4, ra, 2851f
                  srli         t2, t5, 0
                  srl          t6, t2, s0
                  and          a6, s2, s5
                  nop
                  xori         s0, tp, -930
                  or           a5, t2, s10
                  sll          t6, a5, s5
2848:             nop
                  srli         s0, t2, 22
                  nop
2851:             blt          s8, a3, 2856f
                  bne          t6, a6, 2867f
                  and          s8, s0, s8
                  slti         s5, a2, -816
                  bne          ra, a3, 2870f
2856:             and          t0, s10, t5
                  nop
2858:             sra          s7, s5, s7
                  beq          t2, a1, 2864f
                  ori          s8, t1, 158
                  or           s4, s3, a2
                  srl          s3, s7, s2
                  bgeu         t4, t3, 2864f
2864:             blt          gp, t4, 2869f
                  blt          s6, a1, 2876f
                  and          s6, t6, s5
2867:             add          s9, tp, sp
                  blt          s6, t3, 2882f
2869:             nop
2870:             addi         tp, a7, 180
                  bge          t0, s7, 2880f
                  lui          a1, 102972
                  blt          s8, s1, 2882f
                  lui          s11, 427184
                  bne          gp, ra, 2881f
2876:             xor          a5, a6, a0
                  add          s1, t0, sp
                  add          a4, ra, a1
                  add          t1, t1, ra
2880:             srl          s1, gp, s5
2881:             ori          a1, sp, 1811
2882:             sltiu        s11, ra, 1225
                  bgeu         s10, s10, 2891f
                  ori          a0, t0, 1888
                  bne          s8, s11, 2887f
                  xori         s8, t4, -1034
2887:             srli         t1, sp, 12
                  slt          t1, s9, t3
                  bne          gp, t1, 2892f
                  addi         t6, t4, -250
2891:             slti         tp, s5, 1442
2892:             srai         s6, s7, 20
                  bne          s9, s10, 2906f
                  bne          s9, a2, 2914f
                  andi         a6, s9, 891
                  srai         sp, tp, 15
                  add          zero, tp, t0
                  sltu         ra, a3, sp
                  auipc        s6, 229769
                  beq          s0, t3, 2903f
                  nop
                  andi         s0, t2, 1560
2903:             sub          t3, sp, sp
                  nop
                  sll          a0, s11, t2
2906:             andi         s8, gp, -1425
                  nop
                  andi         s7, t4, 331
                  sub          s7, zero, s6
                  add          a7, t3, a6
                  nop
                  andi         ra, ra, 1603
                  bltu         s6, s0, 2916f
2914:             blt          s2, gp, 2926f
                  ori          s8, t2, 548
2916:             sll          s5, s3, t2
                  auipc        a0, 157260
                  ori          a5, zero, -1075
                  and          t2, ra, s3
                  addi         a3, a0, -1857
                  sltiu        tp, a4, 1664
                  lui          a5, 1013115
                  slti         a3, s9, -1531
                  xor          a4, s6, s3
                  xori         a3, t2, 1710
2926:             srai         s1, s11, 8
                  xori         s3, s11, -1403
                  srai         s11, a1, 23
                  sltu         s1, a3, a3
                  lui          s11, 801952
                  sltu         s10, t2, zero
                  slli         s0, a5, 29
                  sltu         sp, ra, a4
                  or           tp, s5, s1
                  addi         sp, a3, -1010
                  bge          t6, sp, 2945f
                  ori          a6, s5, -669
                  bgeu         sp, s9, 2947f
                  sub          t1, ra, gp
                  srl          t6, s5, a3
                  srai         s1, t3, 16
                  sub          t6, s5, t1
                  sltu         zero, s0, a5
                  add          a6, s9, s11
2945:             addi         s10, sp, -1222
                  sltiu        s8, s10, -688
2947:             bgeu         zero, s11, 2962f
                  beq          s1, sp, 2957f
                  ori          t3, a7, 162
                  sra          t2, a2, ra
                  xor          s8, t5, s11
                  blt          s4, ra, 2963f
                  sltu         t0, a6, t3
                  xori         a3, a7, 920
                  nop
                  sltiu        zero, s1, 274
2957:             addi         t4, a5, 839
                  add          a3, a6, s0
                  blt          a3, tp, 2964f
                  xori         a1, sp, 970
                  xor          s7, t1, a1
2962:             bge          sp, s11, 2970f
2963:             slti         s8, s10, 2013
2964:             andi         sp, a7, -787
                  slt          ra, zero, a1
                  sltu         s11, s4, zero
                  nop
                  or           t2, a6, t5
                  srl          s7, sp, t0
2970:             srl          a7, s8, s8
                  and          s4, a5, a4
                  slti         a1, t3, 1432
                  srai         t1, zero, 2
                  blt          s7, zero, 2993f
                  auipc        t3, 531785
                  bltu         s4, s5, 2985f
                  bltu         t5, s6, 2988f
                  bgeu         t5, a0, 2998f
                  beq          s7, a3, 2987f
                  xori         t2, s5, -1123
                  srli         s7, gp, 1
                  and          gp, ra, t4
                  ori          gp, zero, 1933
                  blt          s3, gp, 2989f
2985:             andi         a6, a2, 75
                  sub          s7, a3, a0
2987:             andi         s1, t6, -1798
2988:             slti         ra, a7, 1360
2989:             auipc        ra, 444759
                  bge          s2, s4, 2993f
                  nop
                  or           gp, a0, s4
2993:             srli         s8, tp, 23
                  bne          t2, t3, 3003f
                  lui          s6, 262766
                  ori          a5, s3, -434
                  slli         s5, t3, 16
2998:             sra          tp, a7, a1
                  bge          t3, s4, 3001f
                  xor          s4, a6, t5
3001:             sra          s3, t1, t4
                  andi         a7, a3, -279
3003:             addi         t2, s5, -1764
                  bge          t6, s8, 3023f
                  addi         sp, ra, 739
                  ori          t1, s1, 247
                  beq          s10, t2, 3012f
                  srli         tp, a5, 6
                  sra          s11, t4, a1
                  srai         tp, t2, 14
                  nop
3012:             nop
                  srl          s6, s0, s5
                  slt          sp, s10, t0
                  add          t2, s3, sp
                  auipc        s10, 214254
                  slt          s6, t4, ra
                  auipc        a1, 350902
                  add          t1, gp, s4
                  srli         gp, a4, 7
                  sub          t2, s8, s4
                  bltu         t6, a0, 3030f
3023:             auipc        s0, 142557
                  auipc        gp, 364241
                  beq          sp, tp, 3038f
                  ori          a1, s3, 1746
                  bgeu         s1, a7, 3042f
                  sltu         sp, s8, s5
                  sltu         a5, s5, t3
3030:             slt          a0, s7, s2
                  sltiu        a7, t2, 1640
                  bgeu         s3, t1, 3035f
                  auipc        t3, 214911
                  sra          s7, a6, t3
3035:             andi         sp, sp, -1560
                  and          t6, t3, t1
                  and          a3, zero, a0
3038:             srai         s1, ra, 29
                  addi         s7, s9, 1276
                  slti         s5, a4, -1890
                  nop
3042:             srli         s11, a1, 15
                  slt          s11, a7, t4
                  srai         a5, s9, 17
                  bgeu         a6, tp, 3050f
                  and          a4, s6, s10
                  bne          t2, t4, 3056f
                  slti         s11, t3, 106
                  bge          a6, s11, 3052f
3050:             sll          a3, a5, s10
                  ori          sp, s11, 1901
3052:             sltiu        a1, a0, -1639
                  beq          a7, t6, 3065f
                  slt          s8, t4, s9
                  srli         s1, s3, 13
3056:             sltu         gp, ra, t2
                  ori          ra, a6, -1971
                  sltu         sp, t4, s10
                  addi         a0, s11, 702
                  lui          t3, 139027
                  sltiu        s6, a2, 705
                  srli         a7, s8, 4
                  srli         s0, t4, 20
                  and          a4, a5, ra
3065:             srli         s9, t1, 1
                  xor          s8, t1, t6
                  auipc        t3, 593109
                  sltiu        gp, gp, -234
                  bltu         s0, a1, 3077f
                  beq          s1, s1, 3076f
                  sra          t2, a3, s2
                  or           s9, a6, s4
                  add          a6, s9, s6
                  xori         s0, a6, -53
                  auipc        s7, 1036013
3076:             nop
3077:             slli         t1, s4, 27
                  ori          t3, t2, -1034
                  bltu         s1, sp, 3091f
                  beq          gp, s8, 3095f
                  xori         a0, a1, 569
                  add          a3, a5, t4
                  srl          a1, s1, s0
                  bltu         s6, ra, 3085f
3085:             nop
                  srli         a6, t6, 27
                  ori          t4, a3, 723
                  bne          t3, t5, 3102f
                  blt          a1, s0, 3097f
                  add          s0, s4, t2
3091:             slli         a4, a3, 30
                  slti         a1, s8, 1709
                  blt          gp, s1, 3113f
                  sltiu        gp, t3, 112
3095:             addi         a3, a1, -1791
                  lui          s11, 259408
3097:             sub          s11, tp, s2
                  beq          a5, t5, 3107f
                  xor          a5, t1, t2
                  slt          t0, zero, s5
                  lui          s6, 749020
3102:             auipc        s7, 780282
                  bgeu         s7, a5, 3111f
                  xor          t2, s11, s9
                  slli         t6, t6, 19
                  slli         a5, zero, 18
3107:             bge          t5, a3, 3112f
                  slli         s3, gp, 20
                  slli         a7, s9, 31
                  srli         gp, a1, 14
3111:             sll          s11, a5, s8
3112:             bge          s0, s3, 3125f
3113:             nop
                  bge          t5, s10, 3119f
                  sltu         t6, a4, s8
                  and          a0, a5, a6
                  sll          s1, t2, s2
                  slli         a0, ra, 5
3119:             slti         s9, s8, 1754
                  addi         a7, a7, 1561
                  srl          s6, s5, t6
                  bgeu         sp, zero, 3133f
                  lui          s9, 437555
                  sll          s3, a7, s1
3125:             or           s10, a5, a1
                  blt          gp, ra, 3128f
                  nop
3128:             and          t4, t3, a3
                  sll          zero, a4, s4
                  sra          t6, s1, sp
                  srai         a0, sp, 5
                  or           s8, s5, s4
3133:             ori          s7, s8, -58
                  and          s5, gp, a0
                  slt          s0, s9, a1
                  xor          t2, s0, s9
                  ori          t3, t3, 2042
                  sltu         a7, s4, t0
                  auipc        t0, 379247
                  sub          s10, a1, s2
                  ori          a5, s9, 1634
                  srai         a1, s7, 19
                  sll          a3, a4, t3
                  sra          a6, sp, zero
                  slti         s0, a4, -93
                  andi         a1, a1, -1286
                  bge          t1, t2, 3156f
                  blt          s0, s7, 3151f
                  slt          a4, ra, t6
                  srli         s0, s2, 7
3151:             bltu         s9, s10, 3166f
                  xori         t3, t0, 1692
                  bne          t3, a2, 3154f
3154:             xori         s7, t1, 758
                  bge          s8, a4, 3164f
3156:             srl          s7, a6, a0
                  add          gp, tp, sp
                  xor          sp, s10, s8
                  slt          t2, a0, a1
                  sltiu        s5, t6, -296
                  ori          tp, a2, 1607
                  slli         a3, sp, 28
                  add          a1, zero, s5
3164:             bgeu         ra, a4, 3183f
                  add          a3, t6, s11
3166:             andi         s0, t1, 493
                  and          a6, a6, tp
                  bltu         ra, s7, 3173f
                  slti         t0, t6, 521
                  auipc        sp, 460390
                  sltu         s7, tp, s7
                  bne          s6, t4, 3175f
3173:             or           s6, a2, t0
                  bne          sp, a1, 3189f
3175:             nop
                  sub          a6, s10, ra
                  beq          t2, t5, 3180f
                  sll          t3, a2, s6
                  xori         t0, s5, -935
3180:             beq          a2, t2, 3189f
                  or           s3, t0, a4
                  sra          a6, t4, ra
3183:             beq          a4, a4, 3189f
                  bne          s9, t3, 3192f
                  srai         t0, t2, 6
                  srli         s10, t1, 26
                  xor          gp, t0, a7
                  andi         ra, a5, 464
3189:             sub          a3, s1, t5
                  add          tp, s9, a6
                  bge          ra, s10, 3205f
3192:             xor          s0, gp, sp
                  srl          a0, ra, a3
                  sra          s6, s10, zero
                  andi         t1, s9, -1015
                  xor          s5, t1, zero
                  sra          a0, s6, t4
                  srai         t6, a3, 15
                  slt          t3, s10, a4
                  srl          t4, a4, tp
                  add          a3, t4, s0
                  beq          a2, a5, 3207f
                  slli         a6, t2, 7
                  blt          a0, s11, 3215f
3205:             auipc        a6, 354046
                  bne          tp, a2, 3225f
3207:             or           t0, t0, s8
                  sub          t6, s8, a4
                  addi         a5, a1, 342
                  and          a4, a0, a2
                  bgeu         t4, s9, 3223f
                  slt          t6, t3, a4
                  xori         a4, t2, 247
                  and          s6, s4, s11
3215:             srl          s11, s3, s0
                  nop
                  add          t2, t2, ra
                  srli         a3, s9, 28
                  srli         s5, s4, 8
                  addi         ra, s11, -1470
                  nop
                  beq          a3, a6, 3234f
3223:             ori          zero, s3, -134
                  beq          t6, s4, 3239f
                  la           s6, region_1+579 #start riscv_load_store_rand_instr_stream_32
                  sb           s6, 190(s6)
                  lui          s5, 480423
                  sb           a6, -174(s6)
                  ori          s0, s11, 1004
                  lb           gp, -17(s6)
                  lh           t0, -19(s6)
                  sra          tp, s11, a6
                  lb           ra, 56(s6)
                  slli         s11, t6, 7
                  auipc        t2, 793222
                  lb           tp, -39(s6)
                  sltiu        a0, s3, -985
                  lbu          s5, 130(s6)
                  sb           t3, 152(s6)
                  lui          t1, 729285
                  lhu          t1, 223(s6)
                  lbu          a1, 28(s6)
                  sb           a7, -50(s6)
                  srli         a6, ra, 21
                  srai         t1, a0, 8
                  sh           s4, -237(s6)
                  lh           tp, -189(s6)
                  and          a1, s1, a7
                  sub          s9, s3, s1
                  and          a0, t6, t4
                  lw           a3, -199(s6)
                  sb           s3, -252(s6)
                  slt          a7, a2, s6
                  sb           s2, -160(s6)
                  sh           s2, -197(s6)
                  nop
                  sb           s5, 41(s6)
                  lb           gp, 86(s6)
                  srli         a7, t5, 26
                  slti         a5, t6, -1624
                  lh           sp, -29(s6)
                  sltu         gp, a6, a1
                  lh           s4, 243(s6) #end riscv_load_store_rand_instr_stream_32
3225:             srai         s1, tp, 6
                  ori          t2, a3, -172
                  srl          s4, s4, t4
                  addi         s10, t6, 675
                  ori          t0, s7, -516
                  ori          a1, s0, -857
                  srl          a5, s7, a0
                  beq          s3, s6, 3240f
                  lui          sp, 773197
3234:             sltu         t1, s11, s0
                  xori         s10, s11, 1096
                  slt          s7, a5, s11
                  bgeu         a1, a0, 3252f
                  bge          t0, s4, 3257f
3239:             xori         a3, s2, 1532
3240:             sub          s9, a7, s11
                  bne          s4, s6, 3249f
                  bne          t5, sp, 3251f
                  blt          s5, a7, 3254f
                  sltiu        a5, s3, -293
                  andi         t3, sp, 412
                  slli         a5, t0, 6
                  srl          a4, zero, s10
                  srli         a6, t4, 3
3249:             srai         a5, ra, 11
                  xori         s5, a5, 797
3251:             or           zero, s3, ra
3252:             sra          gp, ra, s2
                  bltu         s8, s3, 3272f
3254:             auipc        t0, 208118
                  andi         sp, s7, -1797
                  bne          s6, s9, 3276f
3257:             ori          t6, a5, 345
                  add          s9, s1, gp
                  add          s6, t3, s11
                  auipc        a5, 915719
                  and          t1, t4, t3
                  andi         zero, t5, -1119
                  beq          tp, s9, 3266f
                  sltiu        a0, s2, -995
                  sll          gp, t5, a0
3266:             blt          t4, s0, 3281f
                  xori         t1, s4, 508
                  bne          s10, s8, 3277f
                  sltiu        s11, gp, -2024
                  sltiu        t1, s1, -1982
                  sltiu        t4, t4, -1937
3272:             slli         s3, s3, 17
                  blt          a6, s8, 3279f
                  sltiu        a0, ra, 1896
                  sltiu        t6, a6, 370
3276:             srl          s10, t3, zero
3277:             beq          s8, a3, 3282f
                  auipc        t2, 361009
3279:             xori         a5, s4, -1869
                  lui          s0, 928203
3281:             addi         t6, t4, -1580
3282:             slli         ra, a3, 23
                  xori         zero, a2, 559
                  slli         a1, s3, 24
                  and          a1, s4, s9
                  bne          s5, a3, 3298f
                  beq          s8, s5, 3295f
                  slli         a5, t3, 15
                  bge          a4, s9, 3304f
                  slt          s5, s7, s4
                  sub          s9, t1, s11
                  or           a1, a2, t5
                  srl          s11, a1, t6
                  sltu         t2, t6, s7
3295:             bge          t1, t4, 3303f
                  bltu         a3, s11, 3297f
3297:             add          s10, tp, s2
3298:             sltiu        t6, gp, -375
                  bne          t1, s11, 3310f
                  srli         s8, a7, 18
                  lui          a1, 52629
                  bge          s4, s9, 3305f
3303:             lui          s8, 393240
3304:             nop
3305:             slt          a4, s8, s6
                  nop
                  add          s3, s4, a1
                  bne          s6, t4, 3317f
                  xori         ra, s11, 1120
3310:             srl          s5, t6, s1
                  add          s0, a4, zero
                  sll          ra, a2, a5
                  bge          t6, s11, 3322f
                  xor          a1, s10, s4
                  addi         ra, t0, 1651
                  andi         a1, a0, -1220
3317:             blt          a2, t6, 3331f
                  srli         a7, a0, 0
                  andi         s4, s3, -1627
                  sub          a4, a3, t1
                  sltu         tp, t1, s11
3322:             srli         a7, s11, 2
                  sub          zero, s3, a6
                  lui          s9, 1038928
                  sub          s5, tp, s1
                  srai         s9, a6, 5
                  srli         t4, t5, 2
                  sltu         a7, sp, t0
                  nop
                  sra          t4, s1, a0
3331:             or           s9, s6, gp
                  slli         s10, a1, 14
                  xori         a1, ra, 2038
                  or           t1, t1, s10
                  sra          t3, a1, s6
                  blt          tp, t3, 3338f
                  xor          a1, t1, a4
3338:             bltu         gp, t4, 3350f
                  sltiu        s1, s9, 346
                  bne          s3, gp, 3353f
                  srl          a7, a6, t2
                  srl          s1, s7, t6
                  ori          zero, a3, 659
                  bgeu         a4, s1, 3349f
                  ori          a0, a1, 1298
                  bgeu         t3, s8, 3354f
                  slt          gp, s8, gp
                  xori         a1, a3, 471
3349:             slli         s5, a4, 23
3350:             slt          s8, s4, s1
                  beq          s3, s2, 3356f
                  auipc        gp, 483276
3353:             srl          gp, a4, ra
3354:             bge          t6, a3, 3357f
                  slli         s3, t6, 20
3356:             slt          s0, s2, gp
3357:             slt          tp, a1, s2
                  srai         s4, s5, 23
                  slti         t4, t2, -1161
                  sll          s11, t0, a7
                  sltiu        t6, s3, 1888
                  auipc        a3, 477811
                  bltu         a3, s4, 3368f
                  andi         ra, s10, 1095
                  xori         a5, s1, 384
                  blt          zero, s1, 3371f
                  and          s1, a7, tp
3368:             auipc        s7, 43814
                  and          a7, a7, t0
                  nop
3371:             sll          t3, gp, a2
                  sltiu        a6, s3, -1665
                  lui          t4, 241700
                  slli         s0, tp, 27
                  sll          a5, t2, a6
                  bltu         a4, s3, 3385f
                  srli         a5, a5, 1
                  srli         a7, a0, 6
                  sra          t1, s9, t0
                  nop
                  sltu         a5, a3, t5
                  xori         tp, t6, -9
                  and          s9, s6, zero
                  beq          t4, a3, 3393f
3385:             lui          s10, 478151
                  and          t3, s4, s3
                  sra          t1, a4, sp
                  sra          t2, a0, a6
                  or           tp, a0, zero
                  srai         s5, s10, 2
                  srl          tp, s10, sp
                  sltu         gp, s5, t5
3393:             lui          zero, 973223
                  blt          a7, t6, 3405f
                  nop
                  sra          tp, t6, zero
                  slli         s10, a7, 11
                  bge          t0, a4, 3401f
                  slt          s3, t4, t1
                  sub          ra, s0, a2
3401:             xor          s8, a1, sp
                  srai         sp, s3, 3
                  or           t3, ra, s11
                  xor          s5, s3, t2
3405:             slti         a3, s1, -246
                  beq          a0, s10, 3418f
                  ori          a5, a5, -1217
                  sll          t2, gp, a3
                  nop
                  bne          sp, s2, 3423f
                  addi         t6, s10, -944
                  auipc        a3, 195253
                  add          gp, a7, t3
                  lui          sp, 119986
                  blt          s2, zero, 3420f
                  srai         t4, t6, 2
                  sltiu        tp, t2, 862
3418:             bge          tp, ra, 3426f
                  srai         a6, a4, 23
3420:             slti         tp, s0, -964
                  beq          s11, s10, 3424f
                  sltu         tp, a6, s1
3423:             addi         s0, a6, -320
3424:             xori         s5, s5, -1029
                  sltu         s5, tp, a4
3426:             srl          a7, s8, s10
                  ori          a5, s6, 444
                  slli         t1, s2, 21
                  lui          ra, 421745
                  blt          a6, gp, 3444f
                  slt          s11, a4, ra
                  and          s9, s9, a0
                  andi         s10, t3, 60
                  srl          s11, t0, s7
                  sra          t0, a4, a4
                  beq          s3, s11, 3445f
                  auipc        sp, 587092
                  slt          a5, sp, a0
                  blt          a1, t4, 3447f
                  blt          t5, s5, 3455f
                  sltiu        a3, s8, 1093
                  auipc        s5, 732734
                  auipc        s10, 90
3444:             lui          a5, 816583
3445:             slt          t0, s0, s6
                  auipc        ra, 484453
3447:             srai         zero, t6, 10
                  srli         a3, s10, 23
                  bltu         a4, s7, 3457f
                  srl          tp, s1, s3
                  nop
                  nop
                  srl          t6, s8, a0
                  sub          s6, s4, s2
3455:             blt          s8, s3, 3456f
3456:             auipc        s1, 853555
3457:             bltu         a3, s1, 3468f
                  srai         a4, a1, 19
                  lui          s8, 1033289
                  srai         a7, s8, 20
                  bge          tp, a3, 3481f
                  bltu         s1, a1, 3470f
                  bge          s5, a5, 3465f
                  bgeu         s5, a6, 3479f
3465:             add          s3, t1, a2
                  srli         t0, sp, 29
                  srai         t1, t6, 23
3468:             sra          s7, zero, t2
                  xor          s5, s10, a6
3470:             bgeu         tp, t4, 3479f
                  sra          gp, zero, s9
                  or           a5, s5, a0
                  bltu         zero, t1, 3492f
                  addi         t3, zero, -864
                  nop
                  or           s9, t2, s10
                  add          s1, s7, t6
                  andi         a6, s10, -559
3479:             auipc        a4, 548315
                  sub          s6, t4, a1
3481:             slti         sp, s8, 528
                  ori          s10, s2, 1448
                  beq          tp, s7, 3502f
                  srl          sp, s5, tp
                  auipc        tp, 992927
                  or           t4, a7, ra
                  srli         a1, s1, 0
                  srai         a7, zero, 31
                  bltu         a4, s11, 3495f
                  addi         t6, a4, -335
                  slt          t4, s10, a0
3492:             srl          a3, a6, a6
                  bne          t2, t4, 3498f
                  bne          a6, s9, 3509f
3495:             beq          s10, a4, 3507f
                  srli         t1, a7, 18
                  beq          s6, a4, 3502f
3498:             slli         s11, a3, 26
                  slti         zero, s7, -1958
                  bge          s5, ra, 3503f
                  beq          s3, a4, 3520f
3502:             bge          s4, tp, 3507f
3503:             xor          s7, tp, s5
                  addi         a0, t6, 560
                  srli         s3, s10, 19
                  slli         t2, s5, 16
3507:             addi         s11, s2, -2040
                  slli         tp, a2, 5
3509:             sra          a5, s9, a6
                  add          s0, s0, s0
                  andi         t4, ra, 1750
                  bgeu         s5, s7, 3513f
3513:             sltiu        gp, gp, -438
                  ori          a6, sp, -1550
                  and          a3, a5, s0
                  bne          t3, gp, 3521f
                  sra          s4, t2, a5
                  sltu         sp, s8, s8
                  nop
3520:             beq          t2, a0, 3535f
3521:             slt          a7, t0, ra
                  slti         sp, s9, 276
                  xori         t0, a0, -25
                  srl          s5, t3, a6
                  or           s11, s1, s5
                  andi         s10, s9, -979
                  bltu         a0, s6, 3529f
                  sltu         s3, ra, tp
3529:             sltiu        tp, ra, 536
                  xori         s8, tp, 1712
                  xori         t0, t6, -928
                  andi         s11, a0, 1296
                  sll          s7, t5, t0
                  sra          a7, sp, a3
3535:             xori         s1, a2, 1336
                  bge          a7, t1, 3548f
                  beq          ra, s3, 3545f
                  bgeu         zero, gp, 3547f
                  blt          a6, gp, 3542f
                  xori         s1, ra, -960
                  bge          zero, s8, 3561f
3542:             beq          t0, t5, 3551f
                  bgeu         a1, a3, 3554f
                  sra          a1, sp, t1
3545:             sltu         s7, s7, s2
                  sub          t2, a0, t1
3547:             ori          s11, gp, 584
3548:             blt          s3, tp, 3553f
                  beq          zero, a7, 3554f
                  blt          sp, gp, 3559f
3551:             ori          s6, a5, -1287
                  and          t0, zero, t3
3553:             sub          s4, s4, sp
3554:             andi         s6, t1, -1051
                  xor          a6, t0, s5
                  bne          s1, a1, 3569f
                  or           s8, t0, a3
                  and          t6, s7, t1
3559:             xori         a7, t2, -1826
                  and          zero, s1, a5
3561:             xori         s8, t3, -1031
                  srai         a7, t3, 31
                  and          t0, sp, s4
                  sll          t1, s4, s6
                  bne          a5, s10, 3579f
                  slt          s6, s6, s4
                  bge          a4, t3, 3578f
                  or           t3, s6, sp
3569:             sltu         tp, s1, s10
                  beq          sp, s3, 3578f
                  slt          s7, s1, s7
                  slt          t4, t0, t3
                  bne          s0, t2, 3581f
                  slti         a0, s3, 1318
                  blt          a7, sp, 3578f
                  bltu         s3, s3, 3595f
                  slt          s7, a2, s4
3578:             srai         s7, s8, 15
3579:             srai         gp, t5, 27
                  srli         s8, s1, 4
3581:             sltu         s5, gp, s0
                  sltiu        a3, ra, -973
                  srai         t4, a1, 4
                  bne          s3, s0, 3592f
                  slli         sp, a7, 7
                  andi         zero, a2, 1477
                  sltu         s9, s8, a3
                  ori          s5, a6, 1207
                  ori          a0, t3, 225
                  addi         t1, s1, 987
                  xor          s8, s5, t3
3592:             addi         a1, t5, -1421
                  bne          s4, s0, 3602f
                  srai         s5, t4, 6
3595:             add          gp, s9, t1
                  lui          s5, 542611
                  sll          t2, ra, s8
                  sltu         s10, t6, s1
                  auipc        a1, 550602
                  bltu         zero, a7, 3615f
                  nop
3602:             srli         zero, s8, 8
                  bne          s10, a5, 3609f
                  sll          gp, gp, a5
                  lui          sp, 795091
                  srai         s10, a0, 9
                  bge          ra, a4, 3619f
                  slt          s7, t5, s10
3609:             bne          s4, t5, 3624f
                  addi         t1, s6, 1941
                  srai         t3, t3, 28
                  lui          tp, 714468
                  and          a6, s8, s0
                  or           a7, sp, s2
3615:             auipc        s0, 54478
                  srai         sp, s3, 0
                  srli         s0, s1, 22
                  slti         zero, a1, -1187
3619:             addi         s4, a7, -271
                  bne          s5, a2, 3623f
                  srl          a6, s9, s11
                  sltiu        a0, a3, 1662
3623:             and          a4, gp, a4
3624:             beq          t0, s3, 3632f
                  slli         tp, s6, 22
                  srli         t2, t5, 28
                  sll          t4, s4, s7
                  xor          s1, s5, t0
                  srli         t0, t2, 4
                  ori          s9, s7, -104
                  beq          s10, ra, 3642f
3632:             sll          sp, s5, s8
                  slti         a3, a6, -72
                  slt          a4, a7, s3
                  ori          tp, a7, 123
                  bgeu         t5, t5, 3641f
                  ori          t4, a3, 24
                  bge          t0, t1, 3644f
                  sll          t4, t0, s0
                  and          ra, zero, a0
3641:             ori          t0, t1, 120
3642:             xor          a5, s3, s7
                  srl          s10, t5, s0
3644:             and          s8, s6, s1
                  nop
                  auipc        gp, 435198
                  nop
                  bge          t6, t6, 3656f
                  srl          a1, s1, t5
                  bgeu         sp, ra, 3653f
                  ori          a6, a2, -1084
                  xor          zero, tp, sp
3653:             lui          s10, 306649
                  xor          a1, a4, t4
                  auipc        s3, 814888
3656:             slt          sp, a1, a0
                  bltu         s2, t3, 3672f
                  bgeu         s3, s0, 3663f
                  add          s9, s10, t1
                  nop
                  srl          s5, s0, s4
                  ori          zero, t1, -1161
3663:             ori          a0, sp, -1430
                  sltu         a4, s4, s6
                  bne          zero, zero, 3674f
                  or           s5, a0, s1
                  andi         a5, a1, 1709
                  srai         s1, a5, 0
                  auipc        a6, 859193
                  and          a7, sp, s7
                  xori         a0, t2, 1650
3672:             sub          ra, t2, a7
                  auipc        s5, 81047
3674:             sub          t2, a1, s10
                  sltu         gp, a5, t6
                  lui          t3, 575217
                  andi         sp, s10, -1344
                  srl          ra, s7, t5
                  srli         t0, s4, 6
                  xori         a0, s0, 1321
                  xor          a7, s1, t3
                  ori          s1, s5, 222
                  nop
                  sub          t2, s1, a6
                  and          s0, sp, t0
                  srli         s9, t2, 3
                  andi         a6, s4, -1667
                  sll          a0, a7, s6
                  sltu         a3, s3, sp
                  bgeu         s8, s6, 3699f
                  or           s1, tp, s8
                  slt          a1, a0, s6
                  bltu         s10, s8, 3712f
                  bgeu         a5, t1, 3702f
                  blt          a4, a2, 3697f
                  srli         s11, a2, 28
3697:             nop
                  bgeu         a2, a4, 3713f
3699:             lui          t4, 60391
                  srl          a7, gp, a6
                  xor          s3, a1, s3
3702:             or           s5, t0, a6
                  nop
                  slti         a1, t0, -2035
                  and          t4, t0, s0
                  nop
                  addi         s8, s6, 589
                  bltu         s5, a5, 3728f
                  add          a7, a1, s7
                  bgeu         a3, a3, 3715f
                  bltu         s3, s10, 3719f
3712:             nop
3713:             andi         a5, t0, 1740
                  la           sp, region_1+1502 #start riscv_load_store_rand_instr_stream_10
                  srli         t0, gp, 12
                  lhu          a5, 166(sp)
                  ori          a6, a1, 1922
                  xor          gp, t0, s0
                  lui          t3, 47109
                  lbu          s1, 71(sp)
                  slti         s7, t4, -7
                  sh           s8, -198(sp)
                  srli         a7, s8, 7
                  and          s8, t1, s0
                  lw           t3, 66(sp)
                  lbu          ra, -156(sp)
                  srli         s1, sp, 29
                  sh           t6, 92(sp)
                  sb           t1, 185(sp)
                  auipc        s4, 361280
                  nop
                  srli         s9, a5, 17
                  xori         zero, a7, -1757
                  and          s9, a4, t6
                  andi         s1, s5, 80
                  slli         a3, ra, 12
                  and          t4, a6, a6
                  auipc        s10, 275755
                  lb           s6, 85(sp)
                  lbu          s1, -201(sp)
                  sb           s0, 178(sp)
                  srl          s6, s7, a5
                  lui          a1, 993333
                  slt          s8, t3, t1
                  lbu          t0, 27(sp)
                  sra          t2, a0, a3
                  lhu          s3, 70(sp)
                  lb           a1, 255(sp)
                  lb           zero, 131(sp)
                  sb           ra, -63(sp) #end riscv_load_store_rand_instr_stream_10
                  sra          t4, s10, a5
3715:             sll          a1, a4, s0
                  bgeu         sp, zero, 3728f
                  blt          s10, t3, 3728f
                  srli         t6, s3, 11
3719:             addi         t3, s10, 1705
                  sub          t4, s2, s0
                  addi         a4, a3, 831
                  addi         tp, ra, -551
                  bne          s7, gp, 3732f
                  and          tp, zero, a7
                  beq          s4, t2, 3734f
                  addi         t0, t1, 57
                  srai         a7, a5, 28
3728:             ori          a1, s5, -1436
                  sltu         t2, s5, t3
                  addi         s10, t0, -1371
                  sltiu        s5, s7, -1846
3732:             ori          t6, zero, 1887
                  nop
3734:             nop
                  slt          t4, a2, t3
                  srl          a0, a4, t3
                  sll          a7, s4, s0
                  sub          s7, a7, t5
                  bgeu         tp, a1, 3740f
3740:             blt          s7, s10, 3754f
                  auipc        a7, 589117
                  sltiu        s11, s5, 424
                  add          t6, s6, s7
                  or           s3, s11, t4
                  sll          sp, t3, t3
                  sltu         s0, gp, s4
                  bne          s0, s1, 3750f
                  ori          s9, s3, -1534
                  slli         t4, a0, 6
3750:             nop
                  srl          a1, tp, s7
                  auipc        zero, 97513
                  or           sp, t6, t6
3754:             srl          t1, a4, s7
                  or           s1, a5, s10
                  add          s3, s5, t2
                  xor          s1, a5, s7
                  bltu         a6, s11, 3777f
                  srl          a4, zero, a0
                  auipc        zero, 794722
                  sra          s1, s11, ra
                  srli         s1, sp, 31
                  bltu         s8, s6, 3778f
                  beq          t6, t2, 3767f
                  slti         a0, sp, -298
                  auipc        a1, 481212
3767:             auipc        s6, 963417
                  srai         s7, t5, 10
                  slt          s11, t4, t5
                  bltu         s6, t4, 3775f
                  nop
                  bltu         t4, a0, 3785f
                  bltu         s1, a0, 3785f
                  slli         a3, t6, 7
3775:             bgeu         s8, t0, 3794f
                  bge          s7, ra, 3779f
3777:             slti         s7, a1, -960
3778:             slli         a7, ra, 2
3779:             andi         a4, t5, 1561
                  nop
                  and          t1, a2, s11
                  slti         s5, t5, 1140
                  slt          s11, a0, t2
                  srai         s11, s2, 9
3785:             srli         a6, t0, 1
                  sltu         a4, a4, t3
                  or           t0, a4, a0
                  lui          s8, 233807
                  sll          a6, s7, a7
                  bne          a6, t6, 3803f
                  bltu         tp, a1, 3800f
                  srli         t6, a5, 17
                  bgeu         s11, zero, 3813f
3794:             srai         t3, a5, 2
                  nop
                  sltiu        t3, a7, 1419
                  sra          s3, s3, s2
                  srli         t4, s6, 11
                  slli         t0, a2, 16
3800:             srl          s9, a6, s3
                  nop
                  slli         a0, s7, 11
3803:             slt          a0, a5, sp
                  bgeu         t2, s9, 3807f
                  srl          sp, t0, s1
                  srai         gp, s4, 9
3807:             nop
                  sra          a5, sp, t5
                  and          s8, s0, a2
                  slti         s0, a4, -1048
                  srl          sp, s1, t2
                  add          a4, t6, s10
3813:             bltu         s2, t5, 3827f
                  addi         t2, t3, -788
                  xori         s11, sp, -646
                  sltu         a7, a6, t0
                  auipc        s7, 271379
                  slti         zero, zero, 192
                  lui          s8, 504603
                  bge          t1, s2, 3826f
                  srai         s3, s11, 19
                  slli         s10, a6, 18
                  addi         t2, zero, -693
                  sub          a4, a4, t3
                  add          s3, sp, s0
3826:             addi         a1, a5, 1780
3827:             sra          s6, s8, ra
                  slli         s0, zero, 4
                  or           s11, t2, sp
                  lui          t4, 18522
                  slli         zero, s6, 26
                  sltu         tp, t5, sp
                  sll          s4, sp, t2
                  srli         t3, s8, 2
                  nop
                  slli         t3, a6, 24
                  xor          a5, s2, s3
                  bge          s1, zero, 3857f
                  bltu         a3, t3, 3844f
                  or           t2, s2, sp
                  bne          a6, sp, 3850f
                  addi         s5, s10, -1537
                  add          t3, t3, s3
3844:             sltu         t1, a1, a4
                  bltu         a4, s4, 3856f
                  srai         ra, gp, 29
                  beq          sp, t1, 3852f
                  or           gp, zero, t6
                  sub          t6, a2, t3
3850:             srl          t4, a0, s10
                  or           t6, tp, a3
3852:             lui          a4, 230445
                  ori          gp, s2, -129
                  sra          s3, s11, s5
                  srl          s0, sp, t4
3856:             nop
3857:             srai         a6, tp, 12
                  slti         t0, t1, -1549
                  slli         t3, s0, 12
                  blt          gp, s3, 3863f
                  blt          s10, s1, 3876f
                  xor          gp, ra, t5
3863:             xor          s10, s1, gp
                  addi         a5, gp, 1815
                  andi         s3, s6, 871
                  blt          a0, a3, 3874f
                  or           zero, s4, s6
                  slti         s9, s2, 1131
                  sltiu        s8, s4, 14
                  xori         t1, gp, 1923
                  sra          sp, t6, s11
                  addi         s9, s6, 1865
                  srl          t4, zero, a1
3874:             xor          a5, a6, t4
                  srl          t3, t3, t0
3876:             sll          s8, a1, s5
                  ori          s4, a1, 481
                  or           s11, s9, gp
                  xori         a1, t0, -257
                  sll          s0, a5, s10
                  slli         s5, t6, 26
                  lui          t1, 448894
                  xori         s5, s3, -393
                  add          a1, s4, a1
                  beq          t2, t0, 3900f
                  and          t0, s7, a5
                  addi         a7, s1, -1049
                  slti         a3, sp, -527
                  sltiu        s5, a7, -1339
                  andi         s3, t0, -817
                  beq          t4, s2, 3903f
                  bltu         a4, t3, 3893f
3893:             lui          s9, 335521
                  add          s3, a1, t6
                  bgeu         zero, a1, 3910f
                  bne          a5, s0, 3904f
                  sll          sp, a5, zero
                  slt          s6, ra, a1
                  srli         t2, t3, 0
3900:             bgeu         a5, a6, 3909f
                  bne          t5, s1, 3909f
                  srai         s9, t4, 29
3903:             sltiu        s11, a6, 1403
3904:             ori          a7, s7, -1798
                  and          s11, s8, s1
                  beq          t0, s2, 3915f
                  and          zero, a1, gp
                  bge          a7, a7, 3919f
3909:             slti         a4, a7, 133
3910:             srl          a6, t1, a6
                  bge          s0, s0, 3916f
                  slt          s1, a7, s7
                  slt          t6, t1, s6
                  auipc        t4, 666185
3915:             bne          t5, s11, 3917f
3916:             sltiu        a3, t3, 953
3917:             bge          zero, s8, 3922f
                  srli         a4, t5, 28
3919:             sub          a3, a4, a6
                  slt          s4, t6, s6
                  blt          sp, a0, 3933f
3922:             sltu         a6, t5, t1
                  sub          sp, tp, t5
                  bge          s9, a7, 3932f
                  sltiu        a4, s6, -1370
                  bgeu         t5, a7, 3931f
                  and          ra, t2, t1
                  srli         a7, s9, 5
                  or           t2, s11, a2
                  blt          s6, s4, 3949f
3931:             bltu         t2, s6, 3942f
3932:             xori         zero, a0, -504
3933:             add          a1, ra, s3
                  beq          a5, t5, 3947f
                  bltu         s3, tp, 3944f
                  sltiu        t1, t2, 1437
                  bge          a5, a7, 3945f
                  addi         s4, tp, -592
                  andi         s4, s0, -172
                  srli         t3, s2, 23
                  bltu         t6, s4, 3944f
3942:             lui          s10, 556635
                  slt          s3, zero, t5
3944:             addi         a3, gp, -1129
3945:             and          zero, a1, a5
                  xor          s7, a7, s3
3947:             srli         ra, s7, 21
                  srl          a0, t5, s1
3949:             lui          a1, 139398
                  beq          s6, a0, 3953f
                  bge          tp, ra, 3965f
                  sub          t0, s11, s11
3953:             bne          t6, a0, 3964f
                  blt          ra, tp, 3959f
                  addi         s1, s4, -1484
                  nop
                  nop
                  srl          s9, s6, a0
3959:             andi         a7, zero, -2024
                  xor          s0, a7, a4
                  andi         s7, s0, 357
                  srai         t2, s5, 8
                  sll          gp, tp, t6
3964:             srli         a3, sp, 7
3965:             sub          a0, s0, a7
                  and          s0, t5, t0
                  blt          a7, s11, 3975f
                  bltu         a0, a1, 3970f
                  beq          t2, ra, 3972f
3970:             srl          s1, gp, tp
                  andi         sp, t1, -764
3972:             sub          t1, ra, t6
                  sltu         t0, t3, s8
                  xori         t3, a2, 956
3975:             srai         a4, sp, 23
                  srli         s8, tp, 7
                  sltu         s9, t5, a1
                  or           t4, a5, s10
                  blt          t0, tp, 3991f
                  nop
                  sltiu        s0, t2, 1672
                  srli         t4, s1, 17
                  bne          t1, tp, 3991f
                  andi         s7, a2, 1737
                  xori         tp, s2, 587
                  srl          ra, a3, ra
                  nop
                  bne          t0, t4, 4003f
                  bltu         gp, s5, 4004f
                  slti         s11, sp, -144
3991:             or           t0, a2, s4
                  andi         t0, s2, -1287
                  srai         t4, a4, 26
                  auipc        t6, 1021086
                  beq          s5, t5, 4010f
                  sltu         t6, a3, s8
                  bge          t5, s8, 4006f
                  lui          t1, 691951
                  or           gp, t4, a7
                  xor          s6, t6, s7
                  bgeu         a7, a0, 4007f
                  xori         s7, s8, -1950
4003:             nop
4004:             slti         gp, a7, -311
                  nop
4006:             beq          zero, s1, 4015f
4007:             slti         s11, s0, 1261
                  sltiu        a0, t3, 772
                  xori         tp, zero, 1109
4010:             andi         t4, a3, 572
                  add          a7, a3, s6
                  and          a5, s3, t6
                  sub          a5, a1, s0
                  sltiu        t4, t2, -738
4015:             bne          a1, s6, 4023f
                  srai         t3, s8, 6
                  la           a5, region_1+5 #start riscv_load_store_rand_instr_stream_18
                  lbu          t6, 21(a5)
                  xor          s6, s2, s2
                  andi         a7, s7, 769
                  lb           t4, 8(a5)
                  sll          gp, ra, s4
                  sb           t2, 12(a5)
                  lbu          a7, 52(a5)
                  sltu         t0, t1, a4
                  or           gp, s8, t4
                  srai         s8, s11, 1
                  nop
                  xor          s0, s4, t5
                  sh           sp, 17(a5)
                  sb           a2, 34(a5)
                  sh           s5, 47(a5)
                  sb           sp, 62(a5)
                  lhu          gp, 7(a5)
                  lhu          sp, 49(a5)
                  xori         a3, t3, 1561
                  sra          sp, s2, t1
                  and          gp, t1, s7
                  lb           s7, 2(a5)
                  sll          tp, sp, t5
                  srl          a4, s1, a1
                  lb           s9, 32(a5)
                  addi         t6, s1, -778
                  addi         s7, a0, 1998
                  lbu          s9, 50(a5)
                  sb           t2, 13(a5)
                  sltu         a7, sp, s3
                  lb           t0, 21(a5)
                  add          t2, s1, t6
                  sb           a6, 29(a5)
                  xori         t1, t3, -1331
                  lbu          a1, 55(a5)
                  andi         sp, t1, 124
                  slti         zero, s10, -100
                  srl          s9, a6, s6
                  sb           t5, 40(a5)
                  lui          a3, 699671
                  lui          s5, 318951
                  lb           s3, 4(a5)
                  lbu          a6, 22(a5)
                  sb           t3, 30(a5)
                  lhu          a4, 57(a5)
                  lh           a6, -1(a5)
                  auipc        s0, 775497
                  sb           t4, 2(a5)
                  auipc        s10, 914174
                  sra          a7, t5, t4
                  sltiu        t6, a0, -1668
                  lbu          s9, 51(a5)
                  sh           t2, 33(a5)
                  or           s11, a3, a3
                  lbu          s10, 44(a5) #end riscv_load_store_rand_instr_stream_18
                  srai         a6, t4, 21
                  or           t1, s5, a2
                  xori         ra, a3, -16
                  lui          a0, 250444
                  xor          s6, s6, s4
                  bltu         t0, s9, 4027f
4023:             addi         a6, s9, 939
                  blt          s7, s6, 4044f
                  beq          s9, s2, 4037f
                  slti         a5, a1, 2019
4027:             srli         a6, t0, 24
                  add          a5, s6, t1
                  add          a0, a4, t2
                  sra          a5, ra, gp
                  srli         t0, s9, 3
                  sll          s3, t3, t0
                  xor          s1, a5, a4
                  add          a1, s9, t0
                  addi         s11, s7, 371
                  srl          tp, s7, gp
4037:             addi         t3, zero, -1819
                  srl          a3, s7, s3
                  bge          s8, a3, 4040f
4040:             sub          t1, t6, zero
                  xor          s4, s2, t3
                  xor          t1, a2, sp
                  bge          a4, ra, 4062f
4044:             sra          a1, s8, gp
                  sra          t4, t1, s8
                  andi         sp, a3, 292
                  xor          t2, t0, a0
                  slli         a1, s5, 23
                  xor          gp, s7, s0
                  srli         t0, s9, 15
                  sll          t4, a3, s6
                  bgeu         a7, a7, 4057f
                  beq          t3, s11, 4062f
                  add          s7, s6, a3
                  slti         a5, s5, 736
                  xori         t4, t5, -14
4057:             blt          s1, a4, 4065f
                  bge          t3, t0, 4067f
                  bge          tp, zero, 4074f
                  or           a6, a3, t5
                  srli         t6, tp, 7
4062:             andi         gp, a0, -260
                  bltu         ra, zero, 4066f
                  bne          t3, a1, 4073f
4065:             addi         a1, a5, -1887
4066:             bltu         s2, t3, 4071f
4067:             sltu         t0, s9, t5
                  sll          a1, t1, a6
                  bgeu         ra, s4, 4082f
                  sltu         s1, s6, ra
4071:             lui          a7, 27687
                  slli         t2, t0, 24
4073:             bne          t1, s8, 4085f
4074:             xor          t0, s5, sp
                  ori          a3, t4, 1999
                  bltu         a0, a5, 4081f
                  xor          s0, t2, a3
                  nop
                  sltu         s5, s8, a5
                  blt          a4, s8, 4100f
4081:             sll          sp, s11, s11
4082:             lui          a5, 587249
                  bgeu         s8, t0, 4102f
                  andi         s6, tp, -223
4085:             nop
                  slli         t3, zero, 20
                  ori          t6, s10, 50
                  andi         a4, s9, 1427
                  auipc        t4, 109884
                  slli         t1, a3, 17
                  slt          s7, a3, zero
                  bltu         s5, a0, 4107f
                  srli         t6, t6, 13
                  ori          s8, s11, 936
                  beq          s7, s0, 4098f
                  beq          s7, s5, 4101f
                  lui          zero, 541871
4098:             beq          t1, s6, 4107f
                  lui          a1, 672267
4100:             sub          a4, s2, s6
4101:             addi         tp, tp, -704
4102:             bgeu         a2, tp, 4107f
                  bgeu         a5, a4, 4122f
                  nop
                  sll          zero, a7, tp
                  add          s5, a0, s4
4107:             and          s10, t3, a3
                  srai         a6, s3, 18
                  add          t3, ra, s4
                  sltiu        sp, zero, 901
                  addi         a6, s10, -731
                  slli         a5, t5, 20
                  slt          t0, t6, s3
                  srai         s3, s3, 20
                  addi         s4, s8, -694
                  slli         zero, s5, 12
                  srai         s1, t2, 15
                  slti         t2, a2, -968
                  xor          a6, a3, t4
                  nop
                  srl          t3, t1, t6
4122:             bgeu         ra, t0, 4134f
                  bgeu         s6, s10, 4131f
                  bgeu         s7, t1, 4127f
                  nop
                  beq          s4, s11, 4128f
4127:             sltiu        a5, s8, -781
4128:             sltu         tp, s4, t6
                  sll          gp, s9, t6
                  srli         a6, a0, 4
4131:             addi         zero, s6, 476
                  slli         s5, zero, 15
                  add          s5, zero, ra
4134:             or           s7, tp, s4
                  add          t0, s5, a7
                  auipc        s3, 408397
                  sra          s5, s11, s9
                  xor          a6, t6, a6
                  slt          a1, t4, s11
                  srl          gp, t1, t2
                  sra          s0, ra, s6
                  ori          a5, s3, -618
                  bgeu         t1, a3, 4152f
                  xori         s8, zero, 863
                  bne          sp, s3, 4146f
4146:             and          a0, s4, a3
                  ori          s0, s1, -1466
                  slti         s11, a1, -923
                  and          s0, a2, s9
                  addi         a0, t5, -187
                  xori         tp, s0, 970
4152:             lui          s6, 192314
                  beq          a5, a1, 4164f
                  and          zero, a6, a2
                  beq          s6, a1, 4170f
                  andi         s4, ra, -1481
                  srai         a4, s1, 22
                  auipc        t2, 208464
                  srli         s3, a4, 3
                  sltu         a4, t1, t5
                  and          a0, s5, t6
                  srl          s10, gp, s10
                  add          a4, t4, s7
4164:             xor          a4, t3, s4
                  slti         a5, s11, -1640
                  slti         s10, t2, -626
                  or           a5, t0, s8
                  ori          s9, a3, -128
                  bne          t5, s7, 4180f
4170:             addi         zero, s8, 178
                  sra          t6, s3, s8
                  bne          t4, t1, 4180f
                  slti         s5, tp, -1809
                  nop
                  bge          s0, zero, 4189f
                  xori         s1, tp, 1470
                  lui          s0, 56134
                  sra          s11, t1, zero
                  bge          ra, a0, 4185f
4180:             bne          tp, a3, 4188f
                  srli         sp, t2, 27
                  andi         ra, tp, 872
                  sll          a1, t2, tp
                  sltiu        t1, t0, -1063
4185:             ori          t1, a4, 737
                  slt          a5, s4, a0
                  and          a4, a2, s11
4188:             sra          a6, zero, s6
4189:             srli         s8, s11, 23
                  bgeu         t0, t1, 4199f
                  sltiu        a4, a3, -1599
                  sltu         t3, a2, s4
                  xori         zero, t2, -605
                  slli         s3, a2, 2
                  auipc        s0, 1098
                  andi         s10, t2, -423
                  beq          s5, s4, 4198f
4198:             srai         a0, s8, 3
4199:             sub          a6, sp, s3
                  andi         zero, t0, -1887
                  bltu         s6, s2, 4214f
                  sra          t4, a1, t2
                  slti         s0, t4, 866
                  beq          sp, ra, 4215f
                  slli         tp, a5, 12
                  slt          zero, a4, gp
                  srai         t6, sp, 5
                  bltu         a7, s8, 4220f
                  sltu         tp, s5, a7
                  bltu         a4, zero, 4213f
                  sltu         t3, s7, tp
                  sra          s7, a4, a6
4213:             slt          a4, s11, s1
4214:             ori          s6, s1, -989
4215:             srai         ra, t1, 19
                  sltu         a0, sp, s6
                  bge          s11, s2, 4236f
                  auipc        a5, 1002014
                  add          s6, s10, t3
4220:             sub          t3, s8, s8
                  and          s11, t4, s2
                  xori         s1, s5, -777
                  bgeu         s11, s5, 4237f
                  ori          sp, a7, -916
                  srl          t6, t0, a5
                  sltiu        gp, t3, 1987
                  beq          s6, s4, 4235f
                  nop
                  srai         s11, s7, 14
                  and          s7, s11, zero
                  beq          a6, t6, 4240f
                  lui          s0, 259826
                  xor          s1, s3, s10
                  andi         t0, a0, -1933
4235:             ori          zero, t1, -1888
4236:             or           a7, ra, t0
4237:             slt          s4, s4, s0
                  add          s3, s3, s8
                  add          t6, s4, t6
4240:             ori          gp, s7, 1200
                  srli         s7, sp, 18
                  add          ra, s2, t4
                  xor          t6, zero, t0
                  xor          t6, s8, a7
                  bgeu         s8, tp, 4250f
                  andi         s6, a4, -1671
                  lui          t0, 297276
                  slt          a5, s9, s9
                  slt          t1, s6, s3
4250:             lui          sp, 943030
                  xor          t2, a6, a5
                  bltu         ra, s8, 4267f
                  sltu         s3, gp, t3
                  bltu         t3, s5, 4260f
                  bge          a2, a2, 4257f
                  bne          t0, t3, 4261f
4257:             srli         s3, s1, 3
                  sll          a3, s4, t1
                  lui          a7, 376763
4260:             xori         s4, s0, -1071
4261:             sltu         t1, s5, ra
                  bgeu         t0, s3, 4267f
                  srai         s9, s5, 12
                  and          s10, t6, zero
                  andi         a0, tp, -1268
                  sltu         s11, a3, s0
4267:             slt          s0, s6, s8
                  srl          s4, s2, a0
                  srli         s10, s9, 11
                  addi         t6, t1, 134
                  sll          t6, s4, s7
                  slti         s5, s11, 280
                  slli         s0, a1, 22
                  bltu         tp, a6, 4293f
                  slti         t0, t4, 1171
                  sll          tp, s6, t2
                  srai         s9, s5, 16
                  xori         t0, s3, 1936
                  slti         t6, s6, 1896
                  bge          t5, a5, 4295f
                  bne          s1, sp, 4296f
                  sub          a3, a6, t5
                  ori          s7, a7, 401
                  xori         s4, s4, -1993
                  sub          a6, s3, s6
                  sltu         s4, tp, gp
                  sra          s11, a0, s3
                  addi         a5, sp, 1058
                  or           s0, tp, gp
                  srai         s11, t1, 6
                  srai         s9, s11, 13
                  lui          t0, 519160
4293:             add          t4, s6, s10
                  xori         t4, s4, -1552
4295:             ori          t4, s9, -1018
4296:             xori         t6, a4, -1539
                  auipc        a6, 66675
                  srai         t2, s0, 28
                  srai         t4, t2, 20
                  bge          a4, ra, 4308f
                  xori         a1, s4, -1599
                  addi         t1, s4, 1633
                  nop
                  sltiu        t4, gp, 1082
                  srl          tp, s4, s4
                  xor          tp, zero, a7
                  add          a7, gp, s2
4308:             slti         s3, s11, 727
                  lui          t3, 1043396
                  bne          t2, s0, 4313f
                  slti         s5, s5, -1299
                  bltu         t3, a2, 4313f
4313:             lui          t2, 111214
                  lw           t1, 4(s2)
                  srli         s0, ra, 30
                  addi         s2, s2, 40
                  slt          s9, a2, a5
                  xor          zero, s0, s10
5731:             addi x28, x6, 0
5731:             jalr x28, x28, 0
sub_4:            nop
                  addi         s2, s2, -40
                  ori          s6, t3, -285
                  slt          s4, s1, s5
                  andi         a5, s0, 359
                  lui          s9, 526367
                  sw           t1, 4(s2)
                  and          s10, t6, a1
                  xor          a5, t6, t2
                  slli         a1, t1, 6
                  ori          s11, s4, -440
                  ori          a6, a4, -1758
                  blt          s1, s9, 8f
                  sltiu        s10, s3, -15
                  sub          a3, t2, a4
                  sll          a6, a3, s10
                  xori         s11, s1, -1990
                  srl          zero, a3, s3
                  andi         a4, t6, 32
                  or           t2, s10, a6
8:                ori          t6, s10, 852
                  ori          tp, s0, 999
                  sra          a1, a6, s8
                  and          zero, s1, s4
                  xor          s5, tp, t5
                  bne          s3, a6, 28f
                  bne          t6, s7, 27f
                  srli         t3, tp, 20
                  slli         t6, a1, 10
                  nop
                  sra          t3, a5, sp
                  bge          t4, t1, 36f
                  bge          s2, a7, 22f
                  beq          a4, a7, 35f
22:               xori         a3, zero, -639
                  xor          ra, s8, a6
                  bgeu         s3, tp, 26f
                  srai         ra, t1, 25
26:               bne          t0, a5, 33f
27:               sltu         t1, t4, a7
28:               bltu         zero, s8, 31f
                  ori          zero, a5, -146
                  lui          s9, 618195
31:               srli         t6, zero, 20
                  slt          t3, a6, gp
33:               bge          s10, t2, 44f
                  bgeu         sp, t6, 35f
35:               srai         a4, s6, 26
36:               sltiu        a5, s0, 1021
                  bne          a4, s2, 39f
                  xori         s5, t6, 430
39:               auipc        a4, 365072
                  srai         a6, s3, 21
                  bne          s10, a6, 51f
                  lui          tp, 302846
                  slli         t3, s11, 31
44:               sltu         s7, ra, a7
                  and          s0, s4, s0
                  and          t6, s7, zero
                  xor          t6, a6, a6
                  or           a6, s9, tp
                  slt          t4, t4, s7
                  slti         s1, ra, -891
51:               sra          gp, t5, s8
                  andi         sp, ra, 717
                  sltiu        a3, a4, -89
                  srai         a0, s7, 1
                  slti         t2, ra, -1120
                  or           t4, a4, t4
                  srli         s8, t6, 14
                  sltiu        t0, ra, -57
                  blt          s4, s7, 60f
60:               sltu         tp, s8, s9
                  bgeu         sp, a5, 69f
                  sub          t1, a6, a2
                  sra          a4, zero, t4
                  srl          t6, s2, a7
                  nop
                  auipc        a7, 958119
                  bgeu         a1, t0, 73f
                  bge          t5, s8, 75f
69:               srai         s0, s9, 25
                  addi         s9, s0, 1417
                  addi         zero, s10, -1952
                  bne          sp, a0, 83f
73:               sltiu        a5, s9, -384
                  addi         s7, ra, 1644
75:               bgeu         s6, a3, 85f
                  addi         sp, gp, -88
                  sra          s11, s11, t1
                  blt          s2, t3, 82f
                  sub          t4, t2, s9
                  slli         t4, s3, 6
                  sltu         t2, s11, s2
82:               andi         s5, s5, -1758
83:               or           tp, tp, s3
                  bgeu         t6, s9, 92f
85:               sra          s5, a0, zero
                  add          s10, s3, s4
                  sra          s5, a5, t0
                  ori          sp, a2, -597
                  auipc        t6, 863149
                  srai         t1, a1, 11
                  auipc        s0, 532999
92:               xori         ra, t5, 813
                  xori         t2, tp, 171
                  lw           t1, 4(s2)
                  addi         s2, s2, 40
                  srl          s8, s2, s6
                  auipc        tp, 995417
110:              addi x13, x6, 1
110:              jalr x13, x13, 0
sub_10:           auipc        gp, 42342
                  addi         s2, s2, -24
                  srl          a1, tp, a0
                  lui          t0, 300826
                  ori          t2, s5, -2018
                  sw           t1, 4(s2)
                  ori          t6, a5, -918
                  sll          gp, s4, a0
                  or           a7, t3, s2
                  add          s10, a6, a7
                  sub          a1, ra, s3
                  beq          s4, ra, 4f
                  add          s9, t5, a1
4:                bgeu         s3, s8, 16f
                  srl          s4, t1, s7
                  bne          t4, s1, 24f
                  addi         a3, a1, 1810
                  auipc        s10, 514036
                  sll          t4, s6, a3
                  slti         t3, a6, 1764
                  beq          a5, s0, 14f
                  blt          a5, s11, 13f
13:               sra          a3, s1, s7
14:               bne          tp, t0, 23f
                  srli         s0, a0, 12
16:               slti         gp, a4, 737
                  bgeu         sp, a5, 27f
                  srl          s3, s8, t5
                  bge          t1, a1, 27f
                  xor          s0, s6, s0
                  sub          t2, s6, s10
                  lui          a4, 899869
23:               blt          ra, zero, 27f
24:               and          s9, ra, a6
                  slti         s8, s1, -1260
                  xor          ra, t6, sp
27:               ori          s6, t5, -803
                  lw           t1, 4(s2)
                  sll          t3, s8, s9
                  srai         s10, s6, 0
                  addi         s2, s2, 24
                  and          gp, t4, a2
                  slt          a3, a1, gp
                  ori          s1, t0, -2014
                  srli         s8, a2, 11
                  srl          a5, s0, a6
                  sll          s5, a4, s7
47:               addi x23, x6, 0
47:               jalr x23, x23, 0
sub_9:            bge          s10, a7, sub_9_stack_p
                  add          s5, a0, a4
sub_9_stack_p:    addi         s2, s2, -40
                  xor          t0, s4, s2
                  or           s1, t5, a7
                  and          t0, tp, a1
                  ori          s5, sp, 982
                  slti         a5, a0, -131
                  xori         sp, t2, 1319
                  sw           t1, 4(s2)
                  xor          s9, s7, s11
                  xor          t0, a0, a1
                  or           a6, s8, a2
                  srli         a0, t2, 7
                  la           s0, sub_10
                  slli         s11, zero, 11
                  and          s7, a6, a4
                  addi         s0, s0, -894
                  srai         t1, a4, 26
sub_9_j15:        jalr         t1, s0, 895 #jump sub_9 -> sub_10
                  bgeu         s8, zero, 5f
                  slti         s3, s2, 319
                  beq          s4, t3, 14f
                  bne          t4, a7, 18f
                  lui          a4, 498344
5:                slli         t0, t2, 2
                  lui          s4, 544535
                  blt          s9, a2, 23f
                  andi         a7, a1, 83
                  xori         s9, t2, -759
                  bltu         a7, s9, 26f
                  addi         zero, s8, 14
                  xori         a3, s5, -1490
                  ori          a7, s6, 377
14:               xor          s7, a1, a5
                  andi         t6, s4, 427
                  addi         s1, t1, -276
                  slli         s0, a5, 2
18:               slt          a5, a5, s11
                  nop
                  bne          t0, s4, 26f
                  bge          s8, s7, 26f
                  slti         ra, a5, -1882
23:               slli         t0, tp, 11
                  or           s4, s10, a2
                  lui          s6, 291039
26:               xor          tp, a0, a1
                  lw           t1, 4(s2)
                  nop
                  addi         s2, s2, 40
                  slt          zero, s7, a6
                  slli         s11, a0, 5
                  addi         t6, s6, -246
                  and          s1, s8, s4
54:               addi x3, x6, 1
54:               jalr x3, x3, 0
sub_7:            slli         a3, a6, 4
                  sltu         s5, s8, a3
                  nop
                  addi         s2, s2, -12
                  sw           t1, 4(s2)
                  and          s11, a2, s3
                  sll          t1, t3, s3
                  sub          s5, a6, s3
                  slt          s7, a7, a4
                  lui          s1, 1030419
                  or           t4, a2, s1
                  blt          a5, s4, sub_7_j11 #branch to jump instr
                  slt          a4, t2, t2
                  slt          t2, a0, s4
                  ori          s1, s3, 1617
                  slt          a5, t5, s3
                  srl          a6, a1, tp
sub_7_j11:        jal          t1, sub_9 #jump sub_7 -> sub_9
                  xor          s6, s4, t4
                  slli         a3, a5, 6
                  la           t6, sub_8
                  xori         s8, a4, -426
                  sltiu        s6, a5, 320
                  addi         t6, t6, -428
                  add          a3, s7, s8
                  auipc        s8, 1011053
                  addi         s5, a1, -1589
                  sltiu        s8, s2, -309
sub_7_j12:        jalr         t1, t6, 429 #jump sub_7 -> sub_8
                  addi         sp, a2, -879
                  sra          s4, s10, a4
                  lui          s4, 797446
                  or           t6, zero, sp
                  sub          s5, zero, s2
                  addi         zero, s2, 80
                  blt          s1, s8, sub_7_j13 #branch to jump instr
                  lui          a0, 321159
                  addi         s3, gp, 820
                  nop
sub_7_j13:        jal          t1, sub_8 #jump sub_7 -> sub_8
                  la           sp, region_1+730 #start riscv_load_store_rand_instr_stream_0
                  lb           a4, 125(sp)
                  xori         a4, s6, -478
                  slli         s4, s10, 31
                  sh           s0, 112(sp)
                  lw           s11, 10(sp)
                  ori          tp, t1, 1699
                  sw           t1, 58(sp)
                  sb           a3, -59(sp)
                  srai         a1, t4, 30
                  lhu          s8, -48(sp)
                  xor          t0, a2, t4
                  nop
                  lb           t4, 25(sp)
                  lw           gp, 2(sp)
                  slti         s4, ra, -1617
                  lw           zero, -46(sp)
                  sb           s3, -47(sp)
                  sra          s5, a5, s11
                  lb           s11, 167(sp)
                  srai         s5, s6, 25
                  sb           t0, 111(sp)
                  sra          s4, s4, s3
                  srl          t2, t4, s4
                  addi         s4, a6, -1074
                  sh           s7, 32(sp)
                  lb           a3, -22(sp)
                  lb           tp, 26(sp)
                  sw           s3, 70(sp)
                  lb           s8, 129(sp) #end riscv_load_store_rand_instr_stream_0
                  sll          t4, zero, a3
                  srl          t6, s5, s8
                  lui          a4, 457389
                  beq          s7, s6, 6f
                  sra          s11, gp, t6
                  auipc        a5, 53068
6:                slti         s5, s7, -1967
                  sll          s0, s3, a7
                  nop
                  sll          zero, a6, tp
                  srli         s5, t5, 4
                  bne          s3, a0, 20f
                  bltu         a0, a1, 17f
                  andi         a7, s7, -188
                  add          t0, s8, a5
                  lui          s0, 894393
                  or           t0, gp, gp
17:               srl          a0, a0, tp
                  or           a4, s7, t0
                  srai         s9, a2, 5
20:               bgeu         a1, sp, 28f
                  bltu         t4, a5, 28f
                  lui          t6, 534424
                  beq          a4, a7, 29f
                  blt          s6, s10, 36f
                  slli         s9, s2, 24
                  and          s7, gp, a3
                  bge          s10, a1, 33f
28:               bgeu         gp, s3, 36f
29:               sltiu        a0, ra, -336
                  xori         ra, s5, -1146
                  addi         sp, a4, -1234
                  slt          a0, zero, t1
33:               xori         a3, s6, -1270
                  xori         s10, zero, 1685
                  xori         s4, ra, -765
36:               sltiu        a6, ra, 1911
                  nop
                  slli         t3, s3, 15
                  add          a0, gp, s5
                  srl          s8, t5, a4
                  lui          s9, 58671
                  auipc        s9, 742913
                  srl          s10, a0, s7
                  sll          a0, ra, s8
                  ori          s9, s9, 149
                  ori          s6, t5, -145
                  or           s5, s10, s2
                  bgeu         a7, a4, 54f
                  sltu         s9, ra, s2
                  lui          s1, 197798
                  lui          s10, 677734
                  xori         s4, a4, 507
                  sll          zero, t0, t6
54:               slti         t3, a5, -2018
                  ori          s5, sp, -1522
                  bltu         s4, t5, 64f
                  xor          s8, ra, a4
                  ori          a5, t3, -1928
                  slt          ra, a0, t3
                  bgeu         ra, s8, 74f
                  sltu         a7, t4, t6
                  add          ra, s5, s3
                  and          a0, t3, a5
64:               slti         a5, zero, -911
                  srai         a1, zero, 9
                  bne          s1, s3, 70f
                  auipc        s9, 358128
                  sltu         t2, tp, a1
                  sra          t1, s8, a1
70:               sltu         s9, zero, s4
                  sra          s7, a5, s1
                  or           a6, t5, s3
                  addi         a3, s0, -121
74:               srl          a7, t6, a2
                  bltu         s3, s4, 84f
                  bne          s10, s0, 96f
                  nop
                  xori         s3, s5, 806
                  sltu         s9, t0, a6
                  srai         s10, s1, 19
                  and          s7, s11, s5
                  sltiu        zero, s9, -527
                  slli         s8, a5, 22
84:               bne          s5, zero, 100f
                  srai         s8, s3, 26
                  bltu         a0, s2, 105f
                  srl          a0, t4, s0
                  bgeu         s8, t6, 95f
                  add          s10, t4, s8
                  slti         s3, zero, 1015
                  lui          s1, 223070
                  sltiu        t2, s4, -964
                  ori          tp, zero, 335
                  lui          t6, 491488
95:               srai         zero, s6, 27
96:               xor          a4, s6, s4
                  srli         a4, sp, 26
                  bgeu         t1, t3, 115f
                  xor          s0, s11, ra
100:              sltu         a7, s3, t0
                  bgeu         sp, s3, 111f
                  srli         a0, a1, 15
                  sub          a7, s8, t1
                  or           s3, s3, a2
105:              nop
                  add          a1, s7, t3
                  addi         a0, a5, -621
                  xor          tp, s7, t3
                  xor          s10, s0, s7
                  blt          zero, a5, 121f
111:              add          tp, s0, a4
                  beq          t4, ra, 132f
                  and          gp, t3, s4
                  blt          a4, gp, 126f
115:              lui          a6, 115007
                  blt          zero, s11, 120f
                  slti         zero, t0, 360
                  slti         s1, t6, 1238
                  xor          gp, t2, s9
120:              slti         s9, sp, 203
121:              sltu         s5, a7, t0
                  sll          t3, s2, ra
                  blt          s9, s7, 131f
                  xori         s11, t2, 1537
                  add          t1, a1, t3
126:              slli         a0, s8, 1
                  bge          a7, a5, 136f
                  srl          a1, sp, a2
                  srl          zero, s5, s9
                  add          s4, t6, t0
131:              srl          t3, t2, s6
132:              sll          t2, s10, t2
                  xor          a0, a6, t2
                  xor          sp, ra, s9
                  xor          s10, t6, s7
136:              sltu         a1, t2, t3
                  andi         s9, s2, 662
                  srl          t4, t1, a5
                  bne          t1, t3, 155f
                  xor          a3, t0, ra
                  nop
                  slt          s10, a4, a1
                  blt          a5, t0, 144f
144:              sltiu        s5, a3, 487
                  srl          sp, s10, t3
                  slli         a5, tp, 2
                  ori          s6, s6, -1537
                  addi         s7, gp, 1581
                  ori          s3, tp, -1715
                  bge          t3, a7, 151f
151:              beq          sp, zero, 170f
                  ori          ra, sp, 1345
                  bltu         a4, a7, 163f
                  slt          s11, s1, t3
155:              auipc        zero, 754977
                  lui          s5, 118100
                  bltu         a6, s4, 174f
                  xori         s9, a4, -1091
                  sll          a5, a6, s0
                  srai         a4, s8, 25
                  sltu         t2, t6, t1
                  lui          s7, 727676
163:              lui          s11, 114564
                  sltu         s3, t5, a7
                  sltiu        s8, t6, -1261
                  sll          a7, s11, t0
                  andi         s5, zero, 995
                  lui          s4, 656284
                  blt          s4, a5, 177f
170:              or           gp, sp, s6
                  sra          s5, a6, a4
                  beq          zero, s6, 179f
                  auipc        ra, 658861
174:              bne          a0, s10, 181f
                  xor          a4, sp, a0
                  srli         t6, a1, 2
177:              xori         s8, s8, 2037
                  sub          t3, gp, zero
179:              sltiu        s7, tp, -1476
                  sll          t6, s3, s11
181:              and          t2, a0, t4
                  blt          s2, s6, 186f
                  sra          s10, t4, tp
                  slli         s5, a1, 20
                  bltu         t3, s11, 190f
186:              slti         t1, s2, -318
                  slli         ra, a2, 14
                  and          s11, t5, gp
                  lui          s6, 1047366
190:              slti         t1, tp, 937
                  xor          s5, t4, sp
                  andi         t4, gp, 1513
                  lw           t1, 4(s2)
                  xori         a1, t3, -1454
                  or           s7, t3, s0
                  sltu         t4, s0, a7
                  srl          s4, a7, a1
                  addi         s2, s2, 12
                  slli         s6, a3, 25
                  ori          zero, a6, 1060
271:              addi x15, x6, 0
271:              jalr x15, x15, 0
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
.word 0xa2aec739, 0x677be99a, 0x6edfc6a8, 0x194b9ec0, 0xd8663bcb, 0x4a436c60, 0x205c6070, 0x31b1dddf
.word 0xbcc0161f, 0x03633241, 0xf39a34d0, 0x8c3d1e2c, 0xb587d45b, 0x456498b0, 0x9b26837f, 0xa2ffdb6e
.word 0x6aa7aa4f, 0xd305b907, 0xb0f3bd74, 0x38c5569a, 0xb3160547, 0xd644c83c, 0x803fca64, 0xac3a09e0
.word 0x8f18ba1d, 0x1c0683f7, 0x7df5553b, 0x4b75673c, 0xa58c9ace, 0xabb340f7, 0xf3fa1bf4, 0x2f466b48
.word 0xb90f73ff, 0x58d6c949, 0xe70d587b, 0x2daec8a4, 0x3df279fa, 0xec7c7e0c, 0x160d3bfa, 0xdb1f9f83
.word 0xcf98345b, 0x6d581ffd, 0x52100559, 0xa286b9cc, 0x98e36ac0, 0x8e9443fe, 0x3c518a46, 0x46a2499d
.word 0xd33e05bb, 0x127c2650, 0x46f6b5d2, 0xfa286af3, 0x36059649, 0x3fc14194, 0x0cf7904f, 0xc3a75fc6
.word 0xb193a42f, 0x33193e31, 0xb9713044, 0x27f52c97, 0xc19b495b, 0x841217a6, 0xeb8dd918, 0xec9fda52
.word 0xc05c4eb2, 0x58e2520e, 0xead43e85, 0x885debd8, 0x258bac3d, 0x6f84f241, 0x30186c2b, 0x47bec59b
.word 0xe80f6d3c, 0xebaf5544, 0xb5a0e152, 0xf29066a3, 0xe47a7729, 0x9c6276cf, 0x7a5941e6, 0x220f4bcf
.word 0x5fa6e355, 0x0029387c, 0x4d0de000, 0x02170332, 0xdab7f712, 0x19ebb113, 0xda869fc9, 0x82fe0752
.word 0xac0e22b4, 0xb3e59772, 0x1bfe83f9, 0x8e0fb7c0, 0x49d4e639, 0xc5b95690, 0xfa63274c, 0x4e8fb9f7
.word 0xd9873b13, 0x00b18fa4, 0xcb9ec8ce, 0x81b67dc4, 0xb4f42b22, 0x958d85ab, 0x97ba2311, 0xc338b1fa
.word 0xf69a3e75, 0xfa411bdd, 0x0e973854, 0xd11ff665, 0x036b8e2e, 0xb141f134, 0xed95a42f, 0x9e6530aa
.word 0xa9411480, 0x69a11470, 0x3beb2b12, 0x82eae267, 0x8e379b4b, 0x20750fac, 0x03c7fa3c, 0xdddaff09
.word 0x417bd3a7, 0x0aab1784, 0x6ce18a6e, 0x7c29caa6, 0x511302bf, 0x9c71c158, 0x49d6c8ec, 0xd1dfd11a
.word 0x6a05bf12, 0xf2c2dcaa, 0xd95aca4d, 0x5538b946, 0xe4fb590d, 0x268a44c5, 0x418ede6c, 0xb0290e04
.word 0x5ed2a0c3, 0x497280c2, 0x8a186011, 0x19fae9a3, 0x207f6858, 0xe5ebf22d, 0x7e39af70, 0x1b3ca8cd
.word 0xf2f40eae, 0x08cd021b, 0x49ce0d90, 0xb5950d30, 0xe8fb3ed4, 0xbc7259eb, 0x6db90ffa, 0xba138685
.word 0xbf3981fc, 0x5d324597, 0xa44fc8f4, 0xa2ec7a23, 0x1f450362, 0xd4109fda, 0x7fa264a9, 0xfd32a399
.word 0x178eae21, 0x28ed2b42, 0x2f4c7f34, 0xc1c6352a, 0xad198b41, 0xa8b57079, 0x3390e37b, 0xc5e3bddf
.word 0xb09b3d77, 0x51b48421, 0x64a5a02c, 0xf0661f76, 0x2d62f301, 0x5aef8518, 0x9efffdc7, 0x04633488
.word 0xbc957ae6, 0x5f0fd78b, 0xc46aa768, 0x42400b32, 0x6e95693e, 0x31123f7a, 0x7ed32817, 0x2a1fc382
.word 0xa148d20a, 0x2dd7c215, 0x5835df05, 0xc55096f6, 0xad9fd8c7, 0x26770004, 0xf68b1ddc, 0xb908bc37
.word 0x8f72b64b, 0x29c3753a, 0x3e7a4169, 0x446a61d3, 0xd5c3b742, 0x7a3fb7cb, 0x1bc310e6, 0x7164bdd8
.word 0xab0ec24d, 0xbb8add1e, 0x6637a98e, 0x498d5d30, 0x08002ea5, 0x8aeb2312, 0xe3f1d23b, 0x9b420589
.word 0xe69a6612, 0xc05a0265, 0x59b0afd2, 0xff1b8dd2, 0xe217b4b4, 0xc1346ddf, 0x92de49f4, 0x65eaa7ed
.word 0x4f9ddc84, 0x114adf23, 0xf9c2eeb4, 0x925143a8, 0x8efd7fab, 0x4b32af1e, 0x01124045, 0xd2bd9d58
.word 0x019ca3e9, 0xe8b3002d, 0x7e20a0ee, 0xf3138504, 0x8db83645, 0x387ed14d, 0xe3400f13, 0x44af4ada
.word 0x087884e9, 0x9d90bb7f, 0xfccfa9da, 0xdeb396c8, 0xc54ef6ea, 0xb277ab2b, 0xa565e64f, 0xbdcffa74
.word 0xacacef33, 0xa3e6b1a0, 0xa6c7f059, 0xbd4c3752, 0x99ea9032, 0xe095c00a, 0x0bb8b627, 0x038f6bbd
.word 0x4b4acf25, 0x27e3b677, 0xcbbe05bf, 0x25e6d4e4, 0x920308fa, 0xe5de26d6, 0x894f33c9, 0x8e14d585
.word 0xc7ba46b7, 0x62ee7db1, 0xc2a842d4, 0x61729e4c, 0x26ced3f2, 0x90457cf7, 0x36942d98, 0xaa0589f6
.word 0x4c309ca9, 0x70a99b03, 0x1ed79f39, 0x7948e74e, 0x657330de, 0x8be5e905, 0x20d6435c, 0x20ac8e9a
.word 0xcfe34e79, 0x4818181b, 0x5f767bf4, 0x1a378c6e, 0x8e252458, 0x8077fd2a, 0xdcf07b66, 0xa4132785
.word 0x114cbd2c, 0xd47cd586, 0x922382e5, 0x230e5c6c, 0xfd7b498c, 0x960f5768, 0xc4d90d00, 0x8afa1775
.word 0xf907881c, 0x17ecf2fc, 0x49d3ae52, 0x3bddc882, 0xa34c9b3e, 0x47d5e005, 0x840f5372, 0x63cf1af0
.word 0x3e9a0c90, 0x176abcbe, 0x67818ad2, 0xbbdac92c, 0x784822c3, 0xc90dc744, 0x81e0b4c3, 0xd3661270
.word 0x673d6a8f, 0xf0a065e4, 0x84114a8f, 0xa819af04, 0x9db9c8c8, 0xac04ddf8, 0xc802ce7d, 0x5e073c58
.word 0x2a6049bc, 0xcbf885a0, 0xf7acf27e, 0x250a1e0e, 0x908bff49, 0x9a9c26e6, 0x30fa9058, 0x09ace737
.word 0xd4ed18aa, 0x4ee0a517, 0xf3bdaf4d, 0x304e3c12, 0x187bbab1, 0x3f2c0d5b, 0xa99ff01c, 0xb61eb009
.word 0x5f1eff91, 0x72506584, 0x698b6c7a, 0xafef58b8, 0xaae5f2ab, 0x3efdd918, 0xec4549bb, 0x1f830987
.word 0x52dd7221, 0xc5b9d6b8, 0x00271653, 0x7e4fa7c3, 0x81fda37b, 0x4051afe1, 0x040e964e, 0x589dee90
.word 0x66084f5e, 0x190f21a0, 0xbae7c602, 0x73689731, 0xdee1b067, 0xac7981ed, 0x226b9396, 0xb07c73b1
.word 0x1be2bcf4, 0xfd4e1b1d, 0x692f4c09, 0x6f91370d, 0x4de4aa78, 0x7db93e50, 0x43757aa3, 0x4e97336c
.word 0x5494c139, 0xc28e10c4, 0x3a8e93af, 0xce591ac8, 0x44fc1445, 0xf53dab0e, 0x75896b83, 0x81f24c05
.word 0xee2b782e, 0x1c3546f0, 0x2413a672, 0x2c1c8c47, 0xb3fc546c, 0xe4f507c2, 0x423352e7, 0xd248a936
.word 0xa17746d1, 0x2d9412c3, 0xb3828297, 0xfc278c37, 0x106dfa25, 0x4cfbd3e6, 0x06895eb8, 0x1addfc87
.word 0x896d3a86, 0x65f1e502, 0x65c8d18f, 0x9006c4f0, 0x4241d944, 0x2eb9d98e, 0xd9d08642, 0xb4715559
.word 0x4e2005c9, 0x560bcc55, 0x3714a9b3, 0xdfb584a9, 0x360d3ac1, 0x32eda573, 0x60b4718d, 0x19a6054b
.word 0x28ad6972, 0x7b64de71, 0xe7dd1f5a, 0x7db79e96, 0xc5d15f2e, 0xf5eb556a, 0xb25752a8, 0xdc097730
.word 0xf7a6f496, 0x4367e77d, 0x61cb4ff3, 0x66b8feda, 0x0094d4c8, 0x053b2e76, 0x614fc721, 0x1de0572f
.word 0x0036b991, 0x2ca92768, 0x3b9f61bf, 0x0d305b43, 0x5990587d, 0x69c7c2fb, 0x32bf6c77, 0x481b4f4d
.word 0x019e1401, 0x0108d95c, 0xa3574310, 0x137b4005, 0xfe830284, 0x3486a160, 0x237cc7b5, 0x65257f8e
.word 0x74562b6b, 0xcd2b7247, 0x8d9b1e93, 0x6e62a150, 0xd8987125, 0x8e160c5b, 0x590a34c2, 0x07466fc9
.word 0x5244c763, 0x4b462c06, 0xbda4a751, 0x562e146f, 0x3a8cc46d, 0x6810497b, 0x95800457, 0xeb55a4a4
.word 0x497f4d9b, 0xfc7c1e7e, 0x2653a647, 0xcf4922f5, 0xee950bfd, 0x48b51f4c, 0x6b865806, 0x26300199
.word 0x00469b88, 0x8e43bbf9, 0xfb98ceba, 0xfd4821a6, 0x1e39ba9f, 0x9fe9a172, 0xff638f93, 0x0c738614
.word 0x8b8602e1, 0xc8a61f85, 0x095b2949, 0x43495a99, 0xa4b86c45, 0x0f8e9619, 0x6cb13431, 0xee92cc99
.word 0x6fc43649, 0x84b161e5, 0xaf911c93, 0xe1be1169, 0x858d901a, 0x84cf2b01, 0xe2dc24ee, 0x5f30bcfe
.word 0x34d3f43f, 0x80bda07e, 0xb66ae13c, 0xcbb3f0b7, 0x511088cc, 0x95d14a94, 0xb5664884, 0x54622b9a
.word 0x9b8027e2, 0x097e4e72, 0xc8a204ed, 0xb67231a4, 0xfb281a3f, 0xab9415a4, 0xc5ceecbb, 0xccf78630
.word 0xf5324c09, 0xddfa2cb7, 0xf663747b, 0xa9b77bb7
.section .region_1,"aw",@progbits;
region_1:
.word 0x52446d36, 0xa37beb1c, 0x1caa84b1, 0x170280f6, 0x7ae004eb, 0x79a20d38, 0xaf9ca0ac, 0x79332b72
.word 0xadc85f73, 0xd4e81690, 0x6a66162d, 0x44cfff60, 0x90cf096e, 0x58d16fcb, 0xef7e0298, 0x1d850ff3
.word 0xa8cd0243, 0xcdd98ef7, 0x58abf009, 0xc980e044, 0x086350b2, 0x1cb5bd81, 0x55c00cdb, 0x6d92d253
.word 0x5c9645e2, 0xb8f17133, 0x77e760de, 0x6ab2ede0, 0x20473a6a, 0x19c20e50, 0xa01fdd29, 0x4daad0bf
.word 0x264615b6, 0xcacd302d, 0xf73a4e40, 0x653daba1, 0xd4e917fe, 0xcda1a807, 0xb96a1566, 0x11bcf4a3
.word 0x54e5b509, 0x62201e49, 0x0faab2dd, 0x882c68dc, 0x883918b4, 0x52d053b0, 0x1a35636a, 0x13e4e320
.word 0x21131605, 0x6b9b7da0, 0xa965b915, 0x5c05a46b, 0xa70e3cb5, 0x18d3eac3, 0x084ba23c, 0x80282c61
.word 0x146adaa7, 0x95a8ac0e, 0x81abce20, 0x71997632, 0xd899210f, 0xac95660f, 0xe2a5a0c6, 0x7ae44e5b
.word 0xcdbc396f, 0xa4249ba9, 0x9a51b9c0, 0xffe20532, 0x637ac761, 0xfc0f1407, 0x15d46af8, 0x6ba2005e
.word 0xb3314041, 0x31214222, 0x93723446, 0x17db7616, 0xde2a048c, 0x61f2161f, 0x528b2bbc, 0x1960d890
.word 0x18e67aa5, 0x9c8ce1be, 0x49d17047, 0x811ce3b1, 0xc3bdfbbb, 0x41afaedd, 0x57df700b, 0x53cd238d
.word 0xf8e42fca, 0x662e28eb, 0x8b1e28d5, 0xd885becf, 0x041f8d7f, 0x3399da16, 0x2b1012bd, 0x71e35548
.word 0x14cd5746, 0xf972b240, 0x3c1a0f3e, 0xa14c14fb, 0x152f38d0, 0x46c4888c, 0xa2d12dd9, 0x3c9e4ae7
.word 0x7b92334d, 0xee6657aa, 0x27c1cc2b, 0xaf80fe86, 0xa2c2d543, 0x27d21baf, 0x7b9b4291, 0x057be4e2
.word 0xce45c739, 0x1ca9b49d, 0xb97ee659, 0x7f2f55be, 0x9df833f0, 0xd6155af6, 0xcbeb02d5, 0xa8744c7b
.word 0xe0f3c13f, 0x6990a5d7, 0x378376d7, 0x1682233d, 0xe69f17fa, 0xf6747b90, 0xcf93640d, 0x4adf5c28
.word 0xb217b68b, 0x68cf5fd8, 0x469c9d26, 0x1aae8c45, 0x4f64a8ac, 0xdd876596, 0x8d0a0508, 0xb3a1371e
.word 0x2d960687, 0x64de2dc7, 0xd1d052e4, 0xb6d079fa, 0xa7c900c1, 0x72dae28b, 0x80057390, 0xe55b890e
.word 0xa88491e8, 0xb7c3790c, 0xf06faaf5, 0xc5749b04, 0xeaf44fed, 0xd70b0ed8, 0xe9edafd3, 0x7813654e
.word 0xf465980f, 0x43d6f428, 0x100e7b28, 0xa47e5077, 0xe37446b9, 0x0e2570c8, 0x9d339f86, 0x0ed1435f
.word 0x70677c54, 0x5ab2048b, 0x6b41a41e, 0x6bb9d179, 0x1b6d2475, 0x1bdfe276, 0xec637092, 0x777815bb
.word 0xe65f5404, 0x0cdcc7d0, 0xd0f85c6e, 0xba41f8d9, 0x3ccfe6ca, 0x257bb92a, 0xca8af061, 0xdf746c4c
.word 0xd686aa5e, 0xb747acea, 0x11041d2e, 0xd2e25558, 0x18b5e57d, 0x05a6edf4, 0x44c8aff9, 0x3c7e4f6c
.word 0x605e5992, 0x13ffd239, 0x4ce6a70e, 0xda79e6cd, 0x135df3a8, 0xe2de1f97, 0x90241647, 0xf6719608
.word 0x2cdcb11c, 0x34744cc9, 0x4465c899, 0x681f0884, 0xbcf60647, 0x1e7d2750, 0x6d81dd53, 0x8dd269fa
.word 0x2ed50c2f, 0x26ed6fe1, 0x068432bf, 0xe4402b64, 0x8447cb66, 0x0014e80b, 0xe5d9ee69, 0xc6d5bd73
.word 0x7b9e7777, 0x5e48a866, 0xa806e209, 0x3d12e1a8, 0xb2f4099f, 0x8d669a64, 0x40aaf452, 0x32348188
.word 0x0d2cec74, 0xf4a0fc35, 0x1cac5219, 0x49d975d1, 0xa9299fdc, 0xb5ac2243, 0x65ad37fb, 0xbf3734e8
.word 0xb9f35afe, 0x1ff4bcd3, 0x151e9c96, 0x743b41fe, 0x46e4e0b2, 0x6c92abfa, 0x245fbbdc, 0x9682222f
.word 0xabe3d844, 0x45bb4ba1, 0x9304d7e2, 0x83082e87, 0x92f0dcca, 0x506cfe9a, 0xafd16110, 0xca6e24f2
.word 0xedc97dc7, 0xe749f53d, 0xb7e367a5, 0xeb91c92d, 0x723817f2, 0x5c336a0a, 0x0f02cfc4, 0xb4f22036
.word 0x1af1af27, 0x7dfb3744, 0x4dfa261e, 0xb31a6c3d, 0x9b8f3d60, 0xa00bcf88, 0x61a29077, 0xaffc5864
.word 0xbad4e0cb, 0xeba2bab3, 0x0dc28fa8, 0x4d43f5fa, 0x6f837d03, 0x437de57a, 0x4af57c75, 0xfa00d1d9
.word 0x7122cb74, 0xa51055f3, 0x3aa5161a, 0x83154c61, 0x9be30a90, 0x6c6140b3, 0x02849781, 0x6c5e6ce2
.word 0x698dc7aa, 0x194b868c, 0x57182625, 0x8fca337a, 0xe3de023d, 0xc24133b5, 0x235d6929, 0xdd59fca2
.word 0x8f1a526c, 0x493720c2, 0xd08742cc, 0x7e15bb1b, 0x6c178211, 0x9de98409, 0xaf75a8fa, 0xf793521c
.word 0xc9479bdf, 0xfa8006d3, 0x14b6927a, 0x55e8408e, 0xd1b0f1a9, 0x88a8e1a3, 0x11126b36, 0x025615fa
.word 0xd8185454, 0x18909282, 0xfa4c463f, 0xc57efda3, 0x6d5823cc, 0x5a59439c, 0x82a59f76, 0xb09857e0
.word 0x191e0eda, 0x2892da25, 0x87d4d2a9, 0x101ddea1, 0x473d73f5, 0xda636f98, 0x0398f3c1, 0x850f1318
.word 0x5563c529, 0x8f13b21f, 0x6f8a2809, 0x01abcef6, 0x4a3ec736, 0x5cfb705c, 0x1dd7d80b, 0xdae00704
.word 0xa0889ea3, 0xa29531cc, 0xdacd8764, 0xe7ad71a7, 0xd8a0fb29, 0x1c561264, 0x3098d1fa, 0x2433b515
.word 0xcf9b662b, 0xfd955e1a, 0x8c4a03aa, 0x491cc32e, 0xc2ea2869, 0x07dc8062, 0xc5dfeb90, 0xaab2853a
.word 0x2f986630, 0x5dce7750, 0x87c736e9, 0x374594e3, 0x1308d043, 0xa8a7d8bb, 0x78732d5f, 0x277f3139
.word 0x3e72f0ad, 0xf6c1c457, 0xb9199b55, 0x415d4506, 0x779a31e2, 0x23974b42, 0xddc0a2de, 0x5954ddf0
.word 0x837149de, 0x8f7179c6, 0x2cfb8b55, 0x6574f936, 0xec1c5ae1, 0xf8a3f46c, 0x90184f31, 0xfbccff28
.word 0xa4a5dffd, 0xa7a89e72, 0xddb027f8, 0x2f4a10a6, 0x79d051b3, 0x424a4553, 0x44076c4f, 0x2df14028
.word 0x75efdfe8, 0xaf3691e7, 0x569ca0c5, 0x06deff6f, 0x5f6ce8c6, 0x765883e6, 0xb38056d9, 0x895dcf27
.word 0x9eaa34fe, 0x66d84842, 0x101d77c6, 0x15e21465, 0x4a50ba16, 0x2a18545e, 0xc08262ce, 0x2ba81def
.word 0x204d200c, 0x48d18fce, 0x23581b4c, 0xa4641412, 0xb3c57be4, 0x22ad39f0, 0x611f7030, 0x95708aa9
.word 0xae3cd503, 0x4a395d4c, 0xfb158852, 0x2b0b40f6, 0x05a8f647, 0xd2cf7a90, 0x0c95292c, 0x28b60e71
.word 0x9be86c1e, 0x0721ff60, 0x6599fa80, 0xffc92379, 0x64487c61, 0x580be71b, 0xaa6c46fc, 0xd3c5c5a9
.word 0x73a58bb5, 0xfa6816b0, 0xa3f68964, 0xec7ef9e9, 0xd793d41a, 0x3e6bfdca, 0x11fcc169, 0x1ede890b
.word 0x09447c8b, 0x54598f34, 0x686ac48c, 0xef416fb3, 0x31d7d8d0, 0xddf95b89, 0x9531436c, 0x29cd59d2
.word 0xe1985008, 0x0fdc202f, 0x183a7517, 0x7b6f58d3, 0xa697f2fc, 0x014c1d76, 0x5bab8c1a, 0xa0e68f6a
.word 0x0492ba84, 0xb4ca8db0, 0x3b768ad4, 0xd1bc0afb, 0xd65127f1, 0x1f5863f9, 0x923150d4, 0xd07278f5
.word 0xef24a1f5, 0x7e655a74, 0x45459c14, 0x92536d27, 0xbd695f57, 0x0b6e98d1, 0x60d58174, 0x342a746e
.word 0xb0809b4d, 0x57e4b20e, 0x710500d5, 0x54e48e3d, 0x09d8f0a3, 0xbd69047d, 0xd037584f, 0x3251fdd6
.word 0x9cf8c764, 0x6d27fdc6, 0xb56a0ae1, 0x67846333, 0xde3556bc, 0x7b8a069a, 0xb106f55f, 0x1616ff0e
.word 0x8f354af8, 0x784dc27f, 0xbc3d9a8e, 0x1710bcff, 0xa1976c9d, 0x2e156980, 0x78879f5c, 0xc2fddbfc
.word 0x808f004e, 0x8bf815e9, 0x3f91511c, 0x4a360079, 0xe12c294b, 0xb33c10d8, 0x7bb84236, 0xeeabc3cb
.word 0x0bd40c64, 0x1a72794e, 0x0a2b7014, 0x697db530, 0x46a46ed9, 0x31630822, 0x09a36151, 0xfa118c58
.word 0x298ec5c8, 0x31b95be6, 0x60f00037, 0x19d716da, 0x4ea3c64d, 0x2378a3d5, 0xb966fece, 0x274af322
.word 0x57773e39, 0x1eff8c03, 0x6b5ea514, 0x09f75ae2
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
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x12, x18, zero
                  csrr x29, 0x300 # MSTATUS
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 31
                  bne x29, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x29, 0x341 # MEPC
                  csrr x29, 0x342 # MCAUSE
                  li x13, 0x3 # BREAKPOINT
                  beq x29, x13, ebreak_handler
                  li x13, 0x8 # ECALL_UMODE
                  beq x29, x13, ecall_handler
                  li x13, 0x9 # ECALL_SMODE
                  beq x29, x13, ecall_handler
                  li x13, 0xb # ECALL_MMODE
                  beq x29, x13, ecall_handler
                  li x13, 0x1
                  beq x29, x13, instr_fault_handler
                  li x13, 0x5
                  beq x29, x13, load_fault_handler
                  li x13, 0x7
                  beq x29, x13, store_fault_handler
                  li x13, 0xc
                  beq x29, x13, pt_fault_handler
                  li x13, 0xd
                  beq x29, x13, pt_fault_handler
                  li x13, 0xf
                  beq x29, x13, pt_fault_handler
                  li x13, 0x2 # ILLEGAL_INSTRUCTION
                  beq x29, x13, illegal_instr_handler
                  csrr x13, 0x343 # MTVAL
                  1: la x30, test_done
                  jalr x1, x30, 0

ecall_handler:    
                  la x29, _start
                  sw x0, 0(x29)
                  sw x1, 4(x29)
                  sw x2, 8(x29)
                  sw x3, 12(x29)
                  sw x4, 16(x29)
                  sw x5, 20(x29)
                  sw x6, 24(x29)
                  sw x7, 28(x29)
                  sw x8, 32(x29)
                  sw x9, 36(x29)
                  sw x10, 40(x29)
                  sw x11, 44(x29)
                  sw x12, 48(x29)
                  sw x13, 52(x29)
                  sw x14, 56(x29)
                  sw x15, 60(x29)
                  sw x16, 64(x29)
                  sw x17, 68(x29)
                  sw x18, 72(x29)
                  sw x19, 76(x29)
                  sw x20, 80(x29)
                  sw x21, 84(x29)
                  sw x22, 88(x29)
                  sw x23, 92(x29)
                  sw x24, 96(x29)
                  sw x25, 100(x29)
                  sw x26, 104(x29)
                  sw x27, 108(x29)
                  sw x28, 112(x29)
                  sw x29, 116(x29)
                  sw x30, 120(x29)
                  sw x31, 124(x29)
                  la x30, write_tohost
                  jalr x0, x30, 0

instr_fault_handler:
                  add x18, x12, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

load_fault_handler:
                  add x18, x12, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

store_fault_handler:
                  add x18, x12, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

ebreak_handler:   
                  csrr  x29, 0x341
                  addi  x29, x29, 4
                  csrw  0x341, x29
                  add x18, x12, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

illegal_instr_handler:
                  csrr  x29, 0x341
                  addi  x29, x29, 4
                  csrw  0x341, x29
                  add x18, x12, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x29, 0x300 # MSTATUS;
                  csrr  x29, 0x304 # MIE;
                  csrr  x29, 0x344 # MIP;
                  csrrc x29, 0x344, x29 # MIP;
                  add x18, x12, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
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
