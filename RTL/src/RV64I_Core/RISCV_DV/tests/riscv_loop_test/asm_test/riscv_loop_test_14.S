.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x8, h0_start
jalr x0, x8, 0
h0_start:
                  li x9, 0x40000100
                  csrw 0x301, x9
kernel_sp:        
                  la x24, kernel_stack_end

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
                  li x0, 0x0
                  li x1, 0xe
                  li x2, 0x80000000
                  li x3, 0xf3bd149e
                  li x4, 0x80000000
                  li x5, 0x0
                  li x6, 0xb
                  li x7, 0x0
                  li x8, 0x5
                  li x9, 0x23eb3ed
                  li x10, 0xe8d1e736
                  li x11, 0x5
                  li x12, 0x80000000
                  li x13, 0xfcf2f608
                  li x14, 0xf
                  li x15, 0x80000000
                  li x16, 0x80000000
                  li x17, 0xa83dae11
                  li x18, 0xf
                  li x19, 0x2
                  li x20, 0x7
                  li x21, 0xf9d6eb36
                  li x22, 0x80000000
                  li x23, 0x1fb11a10
                  li x25, 0x9
                  li x27, 0x6f01a7a1
                  li x28, 0x0
                  li x29, 0xea8024b4
                  li x30, 0xc
                  li x31, 0x0
                  la x26, user_stack_end
main:             addi         t3, zero, -7 #init loop 0 counter
                  auipc        tp, 722299
                  addi         s1, zero, 2 #init loop 0 limit
                  and          a4, a3, s9
main_0_0_t:       slt          t0, s7, s5
                  srai         t2, s11, 21
                  sltiu        ra, tp, -2037
                  xori         t2, a1, -1347
                  slt          s11, s6, s6
                  or           a4, a0, s1
                  nop
                  lui          a1, 874870
                  addi         t3, t3, 8 #update loop 0 counter
                  addi         t4, a4, -1722
                  srli         a4, a2, 14
                  nop
                  addi         a5, a3, -1829
                  auipc        s9, 881587
                  sltu         t0, s0, s0
                  sltiu        a6, a1, 1061
                  sll          s3, a5, a1
                  sll          t4, s6, a0
                  slli         t2, t1, 22
                  slt          sp, s6, a0
                  bltu         t3, s1, main_0_0_t #branch for loop 0
                  ori          t4, sp, -1182
                  addi         s4, a1, 544
                  bgeu         s7, s11, 20f
                  srli         s5, a0, 3
                  xor          a0, s6, ra
                  bgeu         tp, s10, 12f
                  sra          a2, a6, s0
                  or           ra, t3, t0
                  blt          a6, a4, 25f
                  srl          zero, a0, a0
                  sltiu        t0, s10, 1897
                  sltu         ra, s0, a0
                  add          s3, a5, a4
12:               bne          a2, s6, 23f
                  la           t0, sub_3
                  or           a7, ra, s10
                  and          s5, zero, s1
                  addi         t0, t0, -800
                  sltiu        s2, s9, 883
                  bge          s7, t3, main_j1 #branch to jump instr
                  sltu         a0, s9, s8
                  addi         s6, a3, 1263
                  add          sp, s3, zero
main_j1:          jalr         ra, t0, 800 #jump main -> sub_3
                  slli         sp, s4, 8
                  auipc        s7, 764677
                  bgeu         sp, s9, 34f
                  and          a2, t2, a2
                  la           a7, sub_1
                  lui          a4, 916252
                  addi         a7, a7, 257
                  sltu         a4, t1, s0
                  srai         a6, s6, 29
                  slt          s2, t6, zero
                  xor          s6, a3, s3
                  lui          t3, 816638
                  and          s6, s4, tp
                  beq          a3, s1, main_j3 #branch to jump instr
                  sltiu        a2, t4, -118
main_j3:          jalr         ra, a7, -256 #jump main -> sub_1
                  ori          t6, s6, -486
                  lui          s9, 412583
                  srai         a5, t1, 20
                  slli         s5, a7, 15
20:               srl          gp, s0, s1
                  bgeu         t6, a7, 22f
22:               addi         a4, s8, -1156
23:               srl          sp, t5, s10
                  beq          s1, s0, 28f
25:               srl          a1, t4, gp
                  bne          tp, s9, 33f
                  srai         s4, s1, 10
28:               bgeu         ra, tp, 45f
                  lui          tp, 729562
                  srl          s9, ra, s1
                  add          s9, s5, a7
                  beq          t4, t5, 48f
33:               bltu         s1, a0, 53f
34:               auipc        s9, 265380
                  sra          ra, t4, s1
                  xor          s1, sp, s7
                  bgeu         tp, t0, 53f
                  add          s11, a7, t1
                  xor          s7, s3, s2
                  auipc        t0, 620161
                  auipc        s11, 386321
                  and          s9, sp, tp
                  sub          t4, a7, a0
                  lui          a2, 65378
45:               sra          s7, s0, t2
                  sltiu        s7, t0, 151
                  srai         gp, s2, 17
48:               srl          a4, a3, a1
                  bne          a3, s5, 55f
                  bgeu         a4, s1, 55f
                  add          a4, a3, s6
                  and          t5, sp, s9
53:               blt          a4, s6, 62f
                  auipc        a5, 143597
55:               bltu         t3, s10, 73f
                  la           s7, sub_2
                  sltu         s5, a4, t2
                  sll          ra, a5, a1
                  srl          s4, zero, t2
                  ori          t3, ra, -1323
                  addi         s7, s7, 932
                  sll          sp, t1, s7
                  srl          s11, t3, t0
                  sltiu        a4, s0, 518
                  bge          t0, t6, main_j2 #branch to jump instr
                  xor          s6, a5, s11
main_j2:          jalr         ra, s7, -932 #jump main -> sub_2
                  bge          s10, s10, 73f
                  bltu         s7, a5, 73f
                  srl          s3, t6, a7
                  bne          gp, a1, 73f
                  sltu         t6, s9, a6
                  addi         a0, t1, -495
62:               blt          s11, a7, 63f
63:               or           a1, a2, s7
                  addi         a4, zero, 865
                  sll          a3, a3, s7
                  bge          a7, s6, 73f
                  sra          ra, s11, t2
                  beq          s0, t1, 73f
                  slli         s3, s8, 2
                  sub          s1, a5, a7
                  and          ra, a1, s6
                  bltu         s7, s2, 73f
73:               slti         s7, s3, 575
                  la x8, test_done
                  jalr x0, x8, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            bgeu         s5, a4, sub_2_stack_p
                  xor          s4, s9, s5
sub_2_stack_p:    addi         s10, s10, -64
                  ori          s11, t5, 1942
                  slt          a5, t5, gp
                  sw           ra, 4(s10)
                  xori         s1, s11, -173
                  sll          t5, a6, a2
                  addi         t4, zero, -5 #init loop 0 counter
                  sltiu        t0, a0, 2036
                  srai         sp, t3, 16
                  sltu         s1, a3, s3
                  srai         s4, ra, 14
                  addi         t2, zero, 7 #init loop 0 limit
                  addi         a2, t2, 678
sub_2_3_0_t:      sltiu        sp, s7, 307
                  addi         a7, sp, -58
                  or           s9, s4, s3
                  sltu         a6, a7, t6
                  addi         t4, t4, 6 #update loop 0 counter
                  beq          t4, t2, sub_2_3_0_t #branch for loop 0
                  srli         a4, a5, 9
                  addi         s11, zero, -2 #init loop 1 counter
                  addi         a0, zero, 12 #init loop 1 limit
sub_2_0_1_t:      or           zero, s11, t6
                  slti         a5, a6, -1433
                  and          t6, s7, t6
                  srai         a4, a2, 4
                  srai         t2, s3, 19
                  sltu         t5, t2, tp
                  srli         tp, s5, 10
                  addi         s11, s11, 7 #update loop 1 counter
                  lui          s6, 113483
                  addi         a7, zero, -8 #init loop 0 counter
                  or           t2, s9, s8
                  lui          a4, 495238
                  sub          t3, s8, ra
                  addi         a3, zero, 10 #init loop 0 limit
                  srai         a1, tp, 12
                  slli         s9, s11, 29
sub_2_0_0_t:      sltiu        gp, sp, -390
                  and          a4, s0, s10
                  addi         a7, a7, 7 #update loop 0 counter
                  ori          t0, t1, -328
                  nop
                  srai         t1, s7, 23
                  lui          s5, 848976
                  srai         t4, s6, 21
                  srli         t6, t2, 27
                  bltu         a7, a3, sub_2_0_0_t #branch for loop 0
                  blt          s11, a0, sub_2_0_1_t #branch for loop 1
                  srli         s6, t1, 20
                  addi         t5, zero, 2 #init loop 1 counter
                  or           s11, zero, a1
                  addi         a2, s10, -1101
                  xori         a2, ra, -223
                  addi         t1, zero, -5 #init loop 1 limit
                  sll          a4, s5, s3
                  sltiu        tp, s6, 1462
                  ori          s11, s7, -2003
                  slt          s6, s2, t2
sub_2_11_1_t:     ori          a1, s2, 836
                  srli         sp, a7, 1
                  addi         s9, s7, 1401
                  addi         t5, t5, -9 #update loop 1 counter
                  addi         a5, zero, 5 #init loop 0 counter
                  addi         a6, zero, 13 #init loop 0 limit
                  slli         tp, t4, 31
sub_2_11_0_t:     slti         zero, s0, -273
                  xor          a1, t5, tp
                  and          t4, s10, s8
                  addi         a5, a5, 8 #update loop 0 counter
                  sltiu        t4, s4, 1199
                  add          a0, t1, s11
                  beq          a5, a6, sub_2_11_0_t #branch for loop 0
                  slti         a2, s3, 1351
                  sub          a4, s10, t5
                  sltu         zero, ra, t2
                  sra          tp, a2, a3
                  andi         t3, a0, 1625
                  bge          t5, t1, sub_2_11_1_t #branch for loop 1
                  ori          s9, s6, -1310
                  addi         s3, zero, 10 #init loop 0 counter
                  lui          t1, 186113
                  and          t3, s3, sp
                  slli         a7, t4, 18
                  or           t2, s10, s11
                  sltu         s9, s10, a1
                  addi         t3, t0, 1461
                  addi         a2, zero, 9 #init loop 0 limit
sub_2_12_0_t:     ori          s11, a6, 1356
                  slt          t4, s9, t0
                  addi         s3, s3, -5 #update loop 0 counter
                  srli         a1, s0, 6
                  and          sp, a7, a6
                  sltu         t2, a6, t3
                  sltiu        t5, s0, 65
                  ori          t3, s4, -1983
                  bgeu         s3, a2, sub_2_12_0_t #branch for loop 0
                  slti         t6, tp, -1537
                  addi         s4, zero, 8 #init loop 1 counter
                  srai         s1, t5, 20
                  srai         a6, s5, 11
                  sll          t1, s5, t5
                  auipc        t5, 725241
                  slli         s9, tp, 4
                  xori         s5, s9, -510
                  sub          a0, a1, s1
                  addi         ra, zero, 7 #init loop 1 limit
sub_2_9_1_t:      add          a6, t4, s10
                  add          t3, a0, tp
                  xori         a0, s1, -1060
                  lui          t2, 210739
                  xori         a5, t4, 142
                  and          a3, a2, s4
                  nop
                  sltu         s7, a2, t5
                  addi         s4, s4, -6 #update loop 1 counter
                  slt          a0, ra, s1
                  addi         a2, zero, 5 #init loop 0 counter
                  sltiu        t2, t0, -1707
                  addi         sp, zero, 3 #init loop 0 limit
sub_2_9_0_t:      lui          s7, 72951
                  addi         a2, a2, -7 #update loop 0 counter
                  or           a5, s6, gp
                  bge          a2, sp, sub_2_9_0_t #branch for loop 0
                  or           a7, a6, sp
                  srl          a7, a6, t2
                  add          s3, s7, s2
                  bgeu         s4, ra, sub_2_9_1_t #branch for loop 1
                  nop
                  addi         s3, zero, 1 #init loop 0 counter
                  xori         a0, s8, 863
                  sra          t4, t1, s3
                  addi         ra, zero, 14 #init loop 0 limit
sub_2_10_0_t:     and          sp, a4, s0
                  andi         zero, a4, -825
                  nop
                  addi         a6, t6, -826
                  addi         s3, s3, 1 #update loop 0 counter
                  sltu         a7, s4, a2
                  and          sp, t4, t5
                  srli         a2, s2, 17
                  blt          s3, ra, sub_2_10_0_t #branch for loop 0
                  and          a3, tp, t3
                  addi         t4, zero, 6 #init loop 0 counter
                  srai         t5, t3, 2
                  add          s6, a4, s3
                  addi         s9, zero, 6 #init loop 0 limit
                  or           gp, a6, zero
                  or           s7, a3, s2
sub_2_1_0_t:      add          s1, s6, a2
                  srai         s5, t3, 19
                  sub          t3, s10, a1
                  addi         t4, t4, -4 #update loop 0 counter
                  bgeu         t4, s9, sub_2_1_0_t #branch for loop 0
                  ori          s7, zero, 1816
                  addi         s6, zero, 5 #init loop 0 counter
                  add          t5, t6, zero
                  srai         t1, s1, 12
                  ori          s7, a4, 1644
                  addi         ra, zero, 18 #init loop 0 limit
                  slti         s2, t2, 733
sub_2_8_0_t:      lui          t1, 138246
                  andi         sp, t5, 968
                  addi         s6, s6, 1 #update loop 0 counter
                  and          a2, s5, a6
                  srl          a5, s2, s5
                  srl          s2, s5, a3
                  slli         a6, a2, 9
                  bltu         s6, ra, sub_2_8_0_t #branch for loop 0
                  add          gp, s3, s11
                  addi         t6, zero, 7 #init loop 0 counter
                  slli         s9, s3, 17
                  sltu         s11, s7, a0
                  sltiu        t1, t2, -316
                  slli         t5, s5, 18
                  addi         a0, zero, 16 #init loop 0 limit
                  sltiu        s2, s2, -218
                  sll          a3, sp, s1
                  lui          a7, 92234
                  andi         s4, s10, -592
                  and          t2, a2, s1
sub_2_13_0_t:     sltu         s7, t4, s1
                  addi         t6, t6, 9 #update loop 0 counter
                  slt          gp, s0, s10
                  sra          t1, t1, s3
                  beq          t6, a0, sub_2_13_0_t #branch for loop 0
                  sra          sp, ra, t6
                  addi         a6, zero, -6 #init loop 0 counter
                  lui          zero, 257222
                  addi         t2, zero, -16 #init loop 0 limit
                  sltiu        ra, a1, 1500
sub_2_14_0_t:     or           s6, s8, s5
                  sub          s4, s3, tp
                  srai         a3, a1, 15
                  and          a7, zero, ra
                  addi         a6, a6, -2 #update loop 0 counter
                  sub          a0, t4, a3
                  bge          a6, t2, sub_2_14_0_t #branch for loop 0
                  sltu         s6, a3, t0
                  addi         s3, zero, -10 #init loop 0 counter
                  xor          t0, s1, s4
                  sltiu        sp, s0, -755
                  xor          sp, s11, s8
                  sltiu        t5, a6, -1712
                  auipc        t3, 83016
                  srli         t2, ra, 3
                  nop
                  ori          t1, s10, -1789
                  xori         t0, s5, 590
                  addi         s11, zero, 8 #init loop 0 limit
                  sltiu        t6, s1, -1407
                  ori          a5, t0, -59
                  nop
                  ori          s2, t6, -1280
sub_2_5_0_t:      addi         t2, t3, -1795
                  xor          s4, t1, a3
                  sll          s7, t3, s10
                  or           a6, t5, zero
                  sltu         ra, t2, a7
                  sll          s2, t2, ra
                  and          t0, s9, sp
                  addi         s3, s3, 3 #update loop 0 counter
                  sra          t6, t4, s3
                  add          a6, s9, sp
                  srli         t0, tp, 23
                  bltu         s3, s11, sub_2_5_0_t #branch for loop 0
                  andi         t0, s6, -1216
                  addi         s9, zero, -6 #init loop 1 counter
                  andi         tp, t5, -1315
                  addi         a4, zero, 16 #init loop 1 limit
sub_2_6_1_t:      nop
                  xor          s4, a0, gp
                  slti         a1, a2, -1326
                  sra          s1, tp, ra
                  addi         s9, s9, 2 #update loop 1 counter
                  and          t3, a6, a3
                  addi         ra, zero, -10 #init loop 0 counter
                  addi         s11, zero, -18 #init loop 0 limit
                  srai         t6, s10, 25
sub_2_6_0_t:      xor          t5, t5, s0
                  or           s1, t4, a2
                  sub          a5, t3, t5
                  addi         ra, ra, -8 #update loop 0 counter
                  ori          a3, t0, 1495
                  andi         t5, s11, -342
                  sll          a3, a2, s10
                  beq          ra, s11, sub_2_6_0_t #branch for loop 0
                  xor          a2, t0, t1
                  sltu         s7, a5, t4
                  ori          a5, s8, 1792
                  beq          s9, a4, sub_2_6_1_t #branch for loop 1
                  xor          t3, a2, t0
                  slt          s7, s6, s0
                  addi         a5, t5, -1769
                  slti         a6, a6, 1190
                  andi         zero, a3, 693
                  and          t6, s7, s0
                  slt          s7, t3, s2
                  nop
                  slt          a5, s3, a2
                  beq          a1, s4, 15f
                  xor          s2, a4, zero
                  srai         t4, a7, 9
                  sll          t2, a1, s2
                  bge          t5, ra, 28f
                  xori         s1, t4, 2007
                  sltu         a0, a7, s5
15:               blt          s7, s2, 22f
                  bge          s2, t0, 26f
                  srl          a3, a1, s1
                  andi         a7, t2, -1257
                  blt          zero, zero, 39f
                  xor          a4, s8, a6
                  slti         s6, t0, -880
22:               and          a0, a2, s3
                  blt          a6, s3, 29f
                  sltiu        s1, t5, -8
                  addi         a4, t6, -998
26:               slt          a0, s0, ra
                  beq          s10, a0, 46f
28:               bge          s3, zero, 31f
29:               blt          s9, tp, 45f
                  bge          a4, s3, 34f
31:               blt          a0, t0, 34f
                  slli         a2, t2, 7
                  bge          t3, gp, 46f
34:               xor          t1, s3, t1
                  lui          a4, 532693
                  slt          ra, t1, t0
                  addi         a7, s1, -797
                  lui          tp, 836260
39:               beq          t2, s0, 50f
                  xori         t0, t2, -762
                  slti         s2, a3, -143
                  beq          s7, t5, 54f
                  and          ra, s4, s10
                  sll          s11, s1, sp
45:               sltu         t4, s0, a7
46:               bltu         a4, gp, 61f
                  sltiu        s6, a5, -147
                  sub          s3, s0, t3
                  srl          s5, t0, a3
50:               bgeu         a3, t4, 66f
                  andi         a0, a5, -520
                  bge          a5, s5, 65f
                  sltiu        s2, sp, 1675
54:               xor          t6, a4, s11
                  add          zero, s4, ra
                  or           a7, gp, a3
                  auipc        t2, 683403
                  sltu         a7, a1, t4
                  lui          s6, 379389
                  nop
61:               beq          a0, t0, 71f
                  beq          a7, t5, 78f
                  xor          a2, sp, zero
                  slli         a4, s11, 17
65:               srli         s6, a6, 20
66:               slt          a0, s5, t0
                  bgeu         s7, t5, 73f
                  bgeu         s4, sp, 71f
                  srl          t4, t0, s2
                  ori          t6, s6, 210
71:               xor          s5, a2, s2
                  and          zero, zero, tp
73:               slli         t1, s0, 17
                  xor          s6, t1, t2
                  sra          a6, t0, t4
                  slt          t5, s11, a2
                  addi         t3, gp, 446
78:               lui          t4, 734341
                  bne          a2, a5, 92f
                  sll          sp, a4, a0
                  sltu         s2, t1, t4
                  bltu         t6, s5, 95f
                  sll          ra, s10, t3
                  beq          t3, a1, 101f
                  srl          t1, t5, a7
                  lui          a1, 251380
                  beq          t2, s4, 105f
                  add          ra, s0, t0
                  slti         t4, s4, 204
                  srl          s4, tp, ra
                  beq          s2, s8, 104f
92:               beq          a0, ra, 97f
                  auipc        s1, 499214
                  sltiu        a5, s5, -961
95:               sltu         s3, t2, gp
                  srli         t4, a6, 29
97:               xori         a1, t5, 1873
                  beq          s4, zero, 102f
                  beq          sp, s6, 113f
                  or           t0, a0, a7
101:              add          a2, zero, t0
102:              bgeu         t0, s7, 116f
                  sra          s4, a0, a7
104:              slli         s6, t6, 2
105:              srli         s4, s7, 28
                  bltu         s6, a0, 122f
                  blt          s4, t4, 111f
                  slt          a6, a6, a7
                  auipc        t2, 206314
                  ori          s3, s9, -1347
111:              and          s4, s8, s3
                  srl          gp, tp, s8
113:              ori          t2, a6, 1509
                  auipc        a4, 365314
                  bgeu         s6, s8, 125f
116:              slt          s5, a0, t2
                  and          s3, a0, s6
                  sltiu        a3, t2, -1437
                  bgeu         t0, t2, 125f
                  slti         t0, s10, 1388
                  addi         t5, s2, 1634
122:              lui          t5, 264871
                  slti         s11, s1, 297
                  ori          t5, a1, 1093
125:              sra          s3, zero, a5
                  blt          a5, s10, 144f
                  nop
                  auipc        a4, 144479
                  ori          a2, s2, 61
                  srli         a0, a2, 13
                  xori         s6, s5, 1598
                  bltu         t1, s2, 135f
                  nop
                  srli         a4, t6, 3
135:              xor          s2, s0, t2
                  srai         t5, sp, 29
                  lui          t2, 138272
                  sll          a6, zero, sp
                  slt          t2, a0, a1
                  blt          a3, s3, 143f
                  slli         t6, s2, 22
                  sra          tp, ra, s2
143:              bgeu         s0, s8, 156f
144:              blt          ra, a7, 157f
                  xor          s7, a1, t3
                  add          s6, ra, s9
                  addi         s11, zero, 6 #init loop 0 counter
                  sub          a0, t3, t1
                  srli         zero, a2, 18
                  addi         s6, zero, 13 #init loop 0 limit
                  sub          a3, a2, s2
                  srli         s5, t2, 5
sub_2_4_0_t:      and          a3, t3, t6
                  sub          t6, tp, s6
                  addi         s11, s11, 6 #update loop 0 counter
                  blt          s11, s6, sub_2_4_0_t #branch for loop 0
                  ori          a3, s4, -1540
                  srli         a5, t3, 19
                  addi         s2, s0, -451
                  addi         tp, s2, 1577
                  sll          t6, gp, s11
                  beq          a1, a3, 157f
                  bltu         a1, a0, 165f
                  srai         s11, a3, 9
                  nop
                  sll          s5, ra, a5
156:              slti         s1, s9, -872
157:              srl          t2, t1, a0
                  sub          a4, a0, t5
                  bne          a5, t4, 175f
                  add          a7, a0, s3
                  andi         t2, s4, -1919
                  slt          s4, a7, ra
                  blt          s1, a4, 168f
                  sra          ra, tp, zero
165:              lui          s5, 912427
                  sra          t5, t4, s10
                  auipc        a4, 283683
168:              slti         tp, a2, 731
                  auipc        t0, 801045
                  sll          a2, a4, a3
                  or           ra, t2, a5
                  sra          s6, a6, s6
                  bgeu         s4, t0, 188f
                  add          a7, t2, a0
175:              add          t0, s6, tp
                  sltiu        tp, s9, 1023
                  bge          t2, tp, 187f
                  auipc        t6, 521171
                  xor          tp, a7, t0
                  sll          t5, a4, t6
                  or           tp, t0, s10
                  srli         a2, a0, 30
                  sll          t2, t2, s8
                  sltu         ra, s6, gp
                  xori         s9, s0, 1090
                  slti         s7, a7, 1002
187:              sub          a6, s0, t5
188:              sltiu        t2, s11, 57
                  andi         s1, s6, 1584
                  srai         a5, s10, 14
                  slli         t2, s8, 10
                  slti         a6, s0, 228
                  bne          s6, ra, 204f
                  nop
                  and          a5, t4, a6
                  slti         sp, s6, -1452
                  bge          t4, s11, 204f
                  sltu         tp, t6, a6
                  andi         ra, s7, 1417
                  sltu         zero, s8, a2
                  beq          s9, t3, 213f
                  sltu         t5, s9, s6
                  andi         s6, zero, 1387
204:              lui          t4, 527346
                  or           a4, a1, s0
                  or           s5, a5, s11
                  bltu         s1, t3, 220f
                  sltiu        a0, s9, 46
                  bge          t4, s0, 216f
                  sltiu        s11, a6, 163
                  ori          s3, ra, 1549
                  slt          s3, a0, t3
213:              auipc        zero, 510293
                  auipc        t4, 721914
                  bgeu         a0, t1, 231f
216:              xori         t3, s5, 1439
                  nop
                  bltu         a4, s11, 237f
                  sll          sp, s0, zero
220:              srli         s1, t0, 29
                  or           a1, s6, tp
                  and          a3, s3, s10
                  bgeu         ra, t2, 226f
                  sll          ra, a1, a1
                  blt          a5, ra, 241f
226:              addi         s9, t6, -132
                  andi         t6, gp, -1494
                  bne          a3, s8, 242f
                  beq          gp, a1, 233f
                  srl          a4, s10, s6
231:              xori         a6, s10, 92
                  slli         t6, t6, 22
233:              bge          s5, sp, 250f
                  nop
                  slti         s11, ra, 1109
                  srli         zero, a7, 4
237:              srai         t1, a4, 19
                  bgeu         s10, a7, 251f
                  lui          t2, 103486
                  auipc        s7, 508521
241:              auipc        s2, 4885
242:              bgeu         t2, a6, 256f
                  xori         sp, s10, -1237
                  bltu         s6, s0, 264f
                  andi         t6, t4, -591
                  slti         t4, a4, -1143
                  srai         s3, s11, 27
                  sll          ra, s10, sp
                  sltiu        a7, s0, 924
250:              and          tp, t5, a0
251:              xor          t4, a0, s10
                  srl          s5, zero, s1
                  blt          sp, sp, 266f
                  sra          s3, s9, sp
                  add          t3, a1, sp
256:              bgeu         s6, s6, 266f
                  or           a1, s0, s2
                  and          t5, ra, s2
                  or           a6, gp, s3
                  addi         t5, s0, 1366
                  lui          ra, 382341
                  xor          t3, t0, a2
                  or           s5, s2, t5
264:              bge          s2, a3, 269f
                  sltiu        a2, t0, -1565
266:              bgeu         a0, a2, 283f
                  bgeu         s1, t0, 273f
                  nop
269:              lui          t0, 988912
                  slli         sp, a1, 16
                  add          s6, zero, a4
                  or           t1, s5, s1
273:              slti         s11, s8, 122
                  xor          s3, t4, a5
                  sltu         t3, zero, a2
                  blt          s6, s6, 295f
                  lui          a4, 721590
                  and          t1, t6, zero
                  and          t4, s4, t5
                  xori         t0, s1, 1443
                  add          sp, t6, s7
                  blt          a0, tp, 289f
283:              srai         ra, tp, 14
                  srai         sp, s11, 15
                  bne          a7, s4, 288f
                  xor          gp, s10, s7
                  blt          s8, s9, 303f
288:              sub          zero, t6, a7
289:              andi         t2, s8, 823
                  xor          t5, a6, gp
                  andi         a2, s7, 1321
                  andi         sp, s2, -860
                  and          a3, s8, a2
                  sub          s1, t0, t3
295:              add          a7, a2, a0
                  beq          a6, s9, 316f
                  slti         ra, s9, 597
                  blt          s3, a2, 314f
                  or           s7, tp, s6
                  slti         s6, s4, 1934
                  xori         t5, s8, -2023
                  bgeu         zero, t4, 312f
303:              xori         sp, a0, 865
                  ori          t6, ra, 1283
                  lui          t2, 700779
                  sll          t1, ra, t4
                  bne          sp, t5, 320f
                  andi         s11, tp, -310
                  bge          s5, t5, 323f
                  sll          sp, a0, t5
                  sll          s11, sp, a3
312:              srli         s1, a2, 6
                  blt          sp, tp, 316f
314:              sub          sp, s11, ra
                  slt          zero, s11, gp
316:              sltiu        tp, t4, 24
                  slt          s3, tp, t3
                  ori          s1, t3, -1154
                  sra          a2, s2, s4
320:              xor          a6, s9, s2
                  beq          s3, a5, 328f
                  addi         a5, a3, 1903
323:              xori         s7, tp, -143
                  addi         s5, ra, 653
                  bgeu         t6, a6, 340f
                  ori          t1, zero, -1653
                  lui          s1, 885160
328:              andi         a4, t5, 1163
                  srai         a4, s0, 3
                  bgeu         a6, s0, 343f
                  sra          sp, s2, s3
                  nop
                  slli         s7, a3, 20
                  addi         s5, t2, -448
                  slli         s7, a5, 5
                  blt          a1, ra, 349f
                  auipc        s1, 937848
                  nop
                  slli         a7, sp, 16
340:              slti         t4, tp, -1323
                  slli         s9, a6, 23
                  andi         a6, a4, 807
343:              sra          s2, t3, t0
                  slti         t2, t3, 1799
                  sltiu        s3, s1, 1914
                  srai         t3, a3, 0
                  bge          t1, sp, 365f
                  sltiu        t1, t6, -385
349:              sltu         a5, s2, s0
                  sltu         s6, s0, s9
                  slli         s2, s10, 23
                  andi         t6, s5, 359
                  andi         ra, a3, 879
                  xor          s1, zero, s10
                  srl          s11, a4, tp
                  nop
                  srl          ra, t2, s8
                  beq          a2, s3, 372f
                  ori          sp, zero, -1567
                  sub          s7, s1, s5
                  sub          t6, a2, a3
                  lui          s4, 569687
                  auipc        s3, 1003204
                  bge          s2, s1, 375f
365:              nop
                  ori          a5, s9, 50
                  xor          s7, t2, t3
                  bltu         t0, s9, 380f
                  xori         t3, zero, -1978
                  slli         s1, s0, 26
                  andi         gp, a3, 456
372:              bgeu         tp, a6, 375f
                  bltu         s11, s3, 377f
                  andi         t1, t2, 1109
375:              srl          s4, a1, t5
                  xor          t2, s3, s5
377:              andi         gp, t5, -988
                  slt          s4, s8, s10
                  or           a7, gp, s2
380:              ori          t3, a6, 1985
                  slt          t2, a7, a5
                  bltu         s5, a3, 398f
                  srl          s1, t0, a3
                  slli         s3, s10, 20
                  ori          a4, t2, 605
                  srai         zero, a7, 0
                  sra          t3, s10, a5
                  sltu         a6, a0, gp
                  sll          a4, zero, a4
                  ori          a6, a2, 135
                  add          t6, s0, s1
                  xor          s4, t0, s1
                  sra          s4, tp, a6
                  beq          a3, a2, 407f
                  addi         t6, a3, -539
                  ori          s4, tp, -965
                  addi         s11, tp, 1189
398:              ori          s9, a1, 1129
                  bne          s1, s5, 405f
                  sll          s7, tp, t5
                  bltu         s1, t5, 405f
                  sltiu        a6, a7, -1488
                  sltu         s3, ra, s3
                  lui          s5, 705386
405:              blt          t1, s4, 421f
                  beq          s4, s9, 413f
407:              nop
                  ori          gp, s4, -24
                  slt          t2, t3, a7
                  addi         a2, s6, 1783
                  bltu         s6, s4, 431f
                  bltu         a5, s7, 428f
413:              bgeu         a6, s2, 416f
                  bne          a2, ra, 417f
                  addi         a2, t6, -1593
416:              xor          t0, zero, tp
417:              slti         s7, ra, 1543
                  sltu         a1, t2, s0
                  srai         t1, t3, 30
                  srai         a2, s10, 24
421:              sub          s7, t6, s3
                  slti         sp, s0, -1170
                  or           s7, s7, s6
                  or           a3, s5, s4
                  auipc        t4, 173915
                  nop
                  nop
428:              sltu         s4, t4, a2
                  sra          t0, t6, s2
                  slti         sp, zero, -787
431:              sltu         sp, ra, s5
                  srl          sp, s0, s1
                  auipc        tp, 659082
                  bltu         a7, s7, 444f
                  xor          s7, t6, a1
                  sub          s11, a5, sp
                  slli         a4, s6, 12
                  and          gp, a6, a7
                  beq          t4, t6, 452f
                  slt          t5, s9, t3
                  srli         s9, a5, 9
                  srl          tp, a7, s6
                  nop
444:              andi         gp, t2, -1952
                  blt          s0, s6, 459f
                  slli         ra, s5, 15
                  bltu         s10, s7, 463f
                  beq          s9, a0, 464f
                  sltu         a3, a3, a0
                  srl          tp, s1, s0
                  slt          s7, s6, t3
452:              blt          s4, a7, 465f
                  andi         t1, a6, -4
                  bne          s4, gp, 470f
                  sltu         a6, s7, s3
                  sltu         a2, s1, t4
                  add          t6, s10, t5
                  addi         gp, a5, -390
459:              bne          a1, t5, 465f
                  slt          s4, a2, s2
                  srl          t0, a1, s7
                  sltu         s9, a0, tp
463:              sub          t0, s11, t2
464:              sltiu        gp, a7, 1963
465:              sll          a4, t1, s3
                  blt          ra, t4, 479f
                  slli         ra, s9, 7
                  nop
                  sra          a7, t4, t0
470:              slli         t0, a6, 30
                  srl          s11, s6, a6
                  bne          t4, gp, 484f
                  srl          a1, ra, s0
                  sra          t6, gp, a3
                  andi         t0, s5, -729
                  auipc        gp, 39310
                  sra          sp, gp, t5
                  bne          s7, t4, 491f
479:              blt          a5, a3, 498f
                  add          a3, a2, a0
                  xor          gp, s7, s9
                  sltiu        gp, a0, 673
                  nop
484:              blt          zero, a2, 488f
                  auipc        s5, 283101
                  slt          s7, tp, ra
                  xori         a7, s7, 1976
488:              add          s6, t6, s7
                  slti         a6, t6, 886
                  bge          gp, tp, 493f
491:              bltu         a5, s9, 498f
                  lui          t2, 235304
493:              slt          s2, t2, a7
                  addi         a1, s1, 320
                  beq          s6, t4, 508f
                  ori          s5, t2, 969
                  nop
498:              sub          t0, zero, s3
                  slti         t1, t5, 1608
                  or           gp, t2, s9
                  bltu         t2, s1, 512f
                  bgeu         t5, s0, 517f
                  add          t0, s6, gp
                  sub          tp, s2, s2
                  lui          t5, 1000826
                  bgeu         s7, s5, 520f
                  ori          zero, s5, -849
508:              bltu         t4, s3, 526f
                  bge          a4, s8, 526f
                  xori         tp, s4, -1145
                  sra          t4, s6, s3
512:              beq          s0, s8, 522f
                  bgeu         s2, a2, 519f
                  nop
                  slt          a1, t6, t0
                  srai         a7, s2, 15
517:              ori          tp, gp, -241
                  srl          a7, s11, a7
519:              sra          t0, a0, a4
520:              bne          s0, s7, 524f
                  slti         tp, s8, 336
522:              andi         a5, s10, 111
                  sub          s3, t6, s1
524:              sltiu        t0, a4, -1303
                  andi         s7, a5, -778
526:              sub          t5, s10, s7
                  auipc        ra, 706728
                  addi         s5, s7, -1789
                  sltiu        t6, t6, 1339
                  bgeu         t0, a2, 535f
                  slt          s6, t0, s11
                  and          s1, s3, s5
                  srl          t0, t0, s8
                  sra          s6, s10, a7
535:              ori          a0, t2, 492
                  auipc        s1, 758313
                  slt          sp, a2, a2
                  srai         s2, a7, 27
                  add          a5, t4, s6
                  or           s11, t4, a6
                  lui          a4, 851404
                  srai         t3, t4, 21
                  or           a7, s10, ra
                  or           s6, s4, t2
                  and          tp, s9, t1
                  bge          t6, s10, 566f
                  sltiu        gp, s5, 641
                  bltu         a2, a0, 555f
                  slti         s4, a2, 782
                  nop
                  addi         s2, zero, -2 #init loop 1 counter
                  sra          ra, a4, a6
                  srl          a6, a2, s4
                  addi         s5, zero, 5 #init loop 1 limit
sub_2_2_1_t:      addi         zero, a3, 1239
                  sra          a5, t6, tp
                  addi         s2, s2, 10 #update loop 1 counter
                  lui          a1, 397687
                  addi         t6, zero, 3 #init loop 0 counter
                  lui          a7, 290386
                  lui          t4, 711076
                  addi         s6, zero, 5 #init loop 0 limit
                  or           s1, a3, t1
sub_2_2_0_t:      xor          s11, t5, a7
                  sltiu        t0, t5, -923
                  addi         t6, t6, 9 #update loop 0 counter
                  andi         a4, s2, 653
                  addi         s3, ra, 856
                  bltu         t6, s6, sub_2_2_0_t #branch for loop 0
                  slli         s1, a5, 4
                  lui          s11, 74176
                  ori          s11, gp, -845
                  bltu         s2, s5, sub_2_2_1_t #branch for loop 1
                  srli         a5, t4, 14
                  srli         s2, s1, 16
                  bltu         t3, s11, 565f
                  nop
                  andi         tp, a0, 1437
555:              addi         s1, s5, -747
                  sll          zero, a6, t4
                  blt          s5, ra, 570f
                  addi         a0, tp, 41
                  sltiu        s9, s8, 1274
                  or           a5, gp, ra
                  srai         s7, s0, 28
                  nop
                  addi         s2, t4, -377
                  bne          t6, a5, 574f
565:              xor          s3, s7, t6
566:              sltiu        t4, tp, 1143
                  bge          t5, s1, 573f
                  bne          s9, gp, 579f
                  xori         t2, a5, 1181
570:              andi         a5, s9, -1230
                  srai         a1, t4, 1
                  or           gp, t5, s3
573:              slli         a4, a0, 0
574:              sra          s9, a1, a1
                  nop
                  bge          t2, s3, 589f
                  andi         a7, a2, -1713
                  bltu         s4, a5, 597f
579:              or           zero, s10, a4
                  blt          a0, a1, 593f
                  sltiu        sp, zero, 1753
                  bge          s8, a0, 596f
                  slli         t0, t4, 23
                  sra          ra, a5, a7
                  and          s7, s5, a1
                  and          zero, sp, t4
                  xor          a2, a5, t5
                  lui          t4, 844749
589:              sltiu        t1, t4, 1115
                  bltu         tp, t0, 606f
                  sra          gp, a0, a3
                  nop
593:              bltu         t3, s7, 597f
                  add          s9, a7, s10
                  blt          a2, a4, 608f
596:              addi         t5, a7, -1340
597:              addi         ra, zero, 404
                  bge          s8, s1, 614f
                  add          t2, s3, t1
                  add          t6, a1, a3
                  beq          s0, s8, 611f
                  xori         t4, a3, -1052
                  and          s1, a2, t5
                  sll          tp, s5, gp
                  srai         ra, t1, 26
606:              bge          s0, a1, 612f
                  add          t0, a2, s5
608:              bge          s7, t3, 626f
                  blt          t5, s0, 613f
                  sltu         a3, s5, s5
611:              sub          s1, s11, s10
612:              sra          t2, t4, s0
613:              beq          a0, t5, 629f
614:              bgeu         gp, tp, 626f
                  bgeu         t4, s0, 622f
                  srai         sp, s10, 2
                  and          a6, t3, t3
                  ori          tp, a0, 1681
                  addi         s9, zero, 10 #init loop 1 counter
                  or           t3, s5, a1
                  addi         a5, zero, 18 #init loop 1 limit
sub_2_7_1_t:      slti         t4, t5, -250
                  addi         gp, t0, 979
                  sll          a1, s0, s1
                  addi         s9, s9, 1 #update loop 1 counter
                  sltu         t5, s7, gp
                  addi         s5, zero, 10 #init loop 0 counter
                  slli         s3, a4, 25
                  addi         s4, zero, 9 #init loop 0 limit
                  ori          t5, t1, -1402
                  srl          s11, a7, s5
                  sltu         sp, t4, t2
                  add          a4, a7, t3
                  sltu         a2, a0, t4
                  xori         s6, a4, 309
sub_2_7_0_t:      nop
                  sub          s11, sp, a6
                  nop
                  srli         a1, a7, 7
                  addi         a2, sp, 27
                  or           a6, s8, t3
                  and          t6, a5, s1
                  addi         s5, s5, -8 #update loop 0 counter
                  andi         t4, a7, 447
                  lui          a2, 743315
                  bgeu         s5, s4, sub_2_7_0_t #branch for loop 0
                  and          ra, s2, t5
                  blt          s9, a5, sub_2_7_1_t #branch for loop 1
                  sub          tp, t0, s10
                  ori          s6, s1, -916
                  xori         t1, s9, 1483
                  sll          a0, s1, s9
622:              bne          sp, a1, 625f
                  slti         a4, s7, 357
                  sll          s6, t5, t3
625:              sra          a1, t6, s0
626:              srai         tp, gp, 18
                  xor          s1, tp, gp
                  add          s4, sp, s7
629:              blt          a4, s10, 645f
                  sra          s5, a0, a2
                  slli         t4, t5, 25
                  xori         a4, t3, 1601
                  blt          s4, zero, 648f
                  blt          s11, t2, 639f
                  and          s1, s8, s10
                  srai         t3, s7, 26
                  addi         a5, t3, -1065
                  bltu         ra, gp, 652f
639:              or           s6, a0, a1
                  sltu         tp, t6, t0
                  sub          ra, a3, s6
                  addi         a4, a3, -755
                  and          t5, t0, s2
                  slti         ra, s10, -1135
645:              bgeu         t2, a5, 648f
                  lui          s4, 967399
                  slti         t0, s1, 1163
648:              bgeu         gp, a7, 651f
                  lui          s4, 247724
                  nop
651:              and          a2, s7, t3
652:              addi         a1, a7, -1956
                  sra          s9, s1, s1
                  srai         s9, a6, 21
                  lui          s11, 185999
                  add          s2, a4, s0
                  and          a5, s0, a1
                  or           s7, s2, t2
                  blt          gp, t2, 676f
                  lui          s9, 251036
                  bne          t1, t6, 671f
                  srli         s1, s7, 7
                  bgeu         t5, t2, 669f
                  nop
                  nop
                  bltu         s7, s6, 673f
                  nop
                  auipc        a5, 155463
669:              sra          s1, a4, t6
                  sra          a2, t0, s1
671:              and          a2, a1, t0
                  bge          zero, a7, 683f
673:              addi         s2, zero, 1873
                  beq          t5, s8, 684f
                  sub          tp, tp, s4
676:              lui          s5, 618263
                  bgeu         s2, s8, 690f
                  sll          s7, s4, sp
                  lui          s2, 1008229
                  auipc        a6, 831228
                  srli         s2, t1, 3
                  xor          a4, a4, s5
683:              xor          s2, a6, sp
684:              sub          t2, a2, a0
                  sll          s5, gp, zero
                  slt          gp, a5, s2
                  bgeu         tp, a6, 693f
                  sltiu        a4, s11, -1384
                  bgeu         t0, t5, 703f
690:              add          t3, s2, s5
                  sub          s1, ra, gp
                  slt          a5, t0, s1
693:              bne          s8, s6, 706f
                  slti         s11, t6, -54
                  bgeu         a2, a4, 711f
                  nop
                  add          s5, s7, zero
                  bgeu         t0, a3, 710f
                  bgeu         a6, s4, 719f
                  bltu         t6, s2, 704f
                  sll          zero, t5, s4
                  slt          ra, a1, a2
703:              srl          s11, t5, s10
704:              sltu         a7, s7, s2
                  auipc        tp, 653669
706:              sltiu        t6, sp, 311
                  andi         t6, s2, -1674
                  ori          s5, t1, 1822
                  or           sp, t1, s11
710:              bgeu         s7, tp, 729f
711:              addi         s4, a5, 380
                  sltu         s9, s11, s7
                  beq          t3, a6, 716f
                  lui          a7, 325308
                  bne          s1, a5, 731f
716:              sll          s1, zero, s11
                  slt          a4, a1, zero
                  srl          t0, a5, a1
719:              lui          ra, 916349
                  beq          a0, s7, 733f
                  or           s4, a7, a7
                  bltu         t2, s5, 735f
                  slli         ra, s6, 16
                  slt          a0, t2, a4
                  bgeu         ra, s2, 729f
                  sltiu        sp, t0, 1473
                  sub          a0, s2, a7
                  sll          s6, t0, s1
729:              beq          s3, t2, 744f
                  lui          a6, 657372
731:              bne          s9, t1, 736f
                  and          t3, t1, ra
733:              add          s7, t5, s6
                  srai         t5, sp, 17
735:              bltu         t6, s8, 752f
736:              blt          tp, t4, 752f
                  slt          t0, zero, t4
                  bgeu         a7, s3, 751f
                  addi         t1, t1, 1212
                  addi         t6, t1, 686
                  sra          s3, s4, a3
                  and          a7, a6, s7
                  andi         s6, t6, 180
744:              auipc        t1, 655534
                  srli         s5, s7, 7
                  bge          s2, s0, 762f
                  bltu         zero, t5, 750f
                  add          a7, a0, t3
                  bge          s7, a5, 767f
750:              or           s11, a1, t2
751:              beq          zero, a2, 758f
752:              bge          gp, a3, 766f
                  srli         s11, s0, 21
                  sra          a7, s6, s2
                  blt          s9, tp, 758f
                  xor          a2, s3, s6
                  srl          s6, t6, s4
758:              add          sp, s9, s8
                  sra          t6, t0, a2
                  bltu         s9, a2, 773f
                  xori         a4, ra, 34
762:              bltu         a7, s8, 766f
                  nop
                  blt          a7, a0, 777f
                  add          a3, s3, s8
766:              andi         t1, s10, -398
767:              add          s9, t2, t6
                  addi         t3, gp, -1775
                  addi         sp, s6, -1165
                  lui          a6, 91052
                  slti         s9, a3, -465
                  or           zero, s0, s7
773:              sltiu        t4, s7, 1058
                  bgeu         a3, a0, 784f
                  beq          s10, t3, 785f
                  and          a2, a5, s2
777:              or           a6, ra, t2
                  ori          a0, s6, -795
                  sltiu        a4, t4, 398
                  slti         a1, sp, 899
                  sltu         a1, gp, a4
                  slti         s4, gp, 1497
                  addi         a0, s11, -26
784:              sltu         t2, ra, t1
785:              auipc        a2, 703638
                  slti         a7, a4, -643
                  addi         t5, s5, -1299
                  sra          a4, t5, a4
                  and          s6, s11, zero
                  slti         sp, t4, 1906
                  nop
                  srai         s5, a5, 29
                  xori         s3, t1, 45
                  bltu         s9, s5, 797f
                  sub          t0, t5, s6
                  ori          s2, s1, 379
797:              auipc        s9, 879737
                  lw           ra, 4(s10)
                  auipc        a7, 855547
                  xori         s11, t6, 1221
                  auipc        a2, 514073
                  xor          t6, t4, s9
                  srli         t6, s1, 10
                  addi         s10, s10, 64
                  sra          a3, a6, tp
                  srai         a7, a7, 11
                  xori         sp, t3, 494
1128:             addi x30, x1, 1
1128:             jalr x30, x30, 0
sub_5:            ori          s7, tp, 289
                  sltiu        a6, s10, 1749
                  bltu         s1, s4, sub_5_stack_p
                  ori          t5, t6, 1666
sub_5_stack_p:    addi         s10, s10, -40
                  sw           ra, 4(s10)
                  slt          t0, s8, a6
                  slt          a5, t3, s5
                  add          s3, a1, a5
                  slti         t4, sp, -188
                  slt          t4, s7, s7
                  srl          a2, s10, a7
                  slti         a1, s2, -117
                  addi         a2, zero, -1 #init loop 1 counter
                  sll          t1, a0, s8
                  sub          a4, gp, t3
                  sra          s9, s2, t1
                  xori         a1, a6, -1449
                  xori         a4, s8, -1390
                  andi         a4, a6, 1860
                  xor          s4, t6, t0
                  and          s4, t3, t3
                  addi         t0, zero, -11 #init loop 1 limit
sub_5_3_1_t:      sub          s2, gp, t3
                  slti         t1, t1, -460
                  add          s5, a3, t3
                  srli         a5, t0, 28
                  srai         s11, s9, 18
                  addi         a2, a2, -10 #update loop 1 counter
                  andi         zero, a3, 1909
                  addi         sp, zero, 3 #init loop 0 counter
                  slli         t6, a0, 20
                  sltiu        tp, t6, -1511
                  addi         s3, zero, 14 #init loop 0 limit
                  slt          s6, s10, a6
                  andi         t4, t3, 746
sub_5_3_0_t:      xori         s7, a0, 250
                  sra          t3, zero, a4
                  sltiu        t4, ra, -433
                  andi         a0, zero, -1647
                  nop
                  addi         sp, sp, 10 #update loop 0 counter
                  blt          sp, s3, sub_5_3_0_t #branch for loop 0
                  nop
                  bne          a2, t0, sub_5_3_1_t #branch for loop 1
                  or           a5, s10, t1
                  addi         s5, zero, -2 #init loop 0 counter
                  addi         a7, zero, -6 #init loop 0 limit
                  add          sp, s2, t0
sub_5_1_0_t:      addi         t6, s11, 682
                  addi         s5, s5, -4 #update loop 0 counter
                  bge          s5, a7, sub_5_1_0_t #branch for loop 0
                  lui          ra, 145169
                  addi         s1, zero, -4 #init loop 0 counter
                  xor          t6, s5, a4
                  or           ra, s8, t5
                  addi         t2, zero, 2 #init loop 0 limit
                  sll          zero, t5, s2
                  auipc        a2, 1010659
sub_5_2_0_t:      slt          a0, t1, s10
                  xor          s7, t3, t2
                  and          a0, a6, a0
                  or           tp, s6, s11
                  addi         t6, a5, 1859
                  addi         s1, s1, 3 #update loop 0 counter
                  srli         s9, sp, 25
                  add          s6, s3, a4
                  ori          s7, t4, -360
                  nop
                  or           tp, s0, a0
                  sra          a6, t2, a2
                  andi         s5, t5, -1299
                  beq          s1, t2, sub_5_2_0_t #branch for loop 0
                  sra          zero, s4, s9
                  addi         a0, zero, 4 #init loop 1 counter
                  addi         s5, zero, 4 #init loop 1 limit
sub_5_0_1_t:      and          s9, a3, a7
                  addi         a0, a0, -7 #update loop 1 counter
                  addi         a2, zero, -2 #init loop 0 counter
                  addi         a6, zero, 7 #init loop 0 limit
sub_5_0_0_t:      addi         s9, a6, 834
                  addi         a2, a2, 9 #update loop 0 counter
                  bne          a2, a6, sub_5_0_0_t #branch for loop 0
                  bge          a0, s5, sub_5_0_1_t #branch for loop 1
                  or           a3, s8, t0
                  bgeu         s2, t2, 15f
                  xor          tp, s8, s6
                  xor          t5, t4, a7
                  slti         a6, tp, -670
                  beq          s9, t4, 20f
                  ori          s5, s6, 489
                  sll          t5, a5, t4
                  nop
                  and          t6, t6, s11
                  add          t6, s6, a0
                  addi         a4, gp, -115
                  bne          zero, s0, 12f
12:               bgeu         a2, s1, 16f
                  sll          tp, s8, s8
                  sll          t4, a2, s0
15:               blt          t3, s10, 30f
16:               or           s9, a5, a2
                  lui          ra, 748271
                  andi         tp, t6, -2014
                  andi         t1, s10, -42
20:               and          s9, a5, s0
                  xor          t1, s6, t3
                  xori         gp, ra, -1179
                  srli         a0, s5, 28
                  andi         zero, t4, 1171
                  addi         t1, s5, 1079
                  bge          s9, s5, 33f
                  andi         a5, s11, -11
                  beq          a7, a7, 39f
                  bne          a4, gp, 37f
30:               sra          s4, s1, t4
                  andi         a4, s8, -1589
                  nop
33:               srli         a0, ra, 29
                  lui          a1, 220104
                  slli         s5, s4, 14
                  xor          s2, zero, t0
37:               sltiu        a6, t1, -255
                  andi         s3, s7, 1588
39:               slt          t2, a4, a1
                  sltiu        s3, s1, -215
                  srl          s4, t3, s3
                  slli         s3, s0, 2
                  sub          s7, t0, s6
                  bge          s7, s0, 47f
                  and          tp, t5, ra
                  lui          s5, 810448
47:               sll          t1, s10, sp
                  srai         s2, a0, 29
                  srli         t4, t5, 7
                  bne          t0, t0, 70f
                  auipc        zero, 458786
                  srai         s4, s11, 19
                  slti         a3, t0, 251
                  andi         a4, t6, 846
                  sub          t0, s8, zero
                  lui          t6, 439221
                  sll          t4, t3, t6
                  ori          s7, t2, -53
                  bltu         s4, s11, 67f
                  slli         a2, t1, 15
                  srl          s9, a5, t1
                  or           gp, s1, s9
                  bge          a7, a2, 73f
                  andi         ra, a2, -1059
                  or           s7, t3, s4
                  slli         t4, a0, 29
67:               addi         t0, s9, 1690
                  bltu         t1, a4, 74f
                  srl          s6, tp, a1
70:               nop
                  add          t0, s8, s9
                  ori          s9, s9, 1542
73:               sll          s3, t1, t6
74:               bge          a3, a1, 79f
                  sll          t0, a2, a3
                  or           s1, s7, tp
                  srai         s3, s11, 10
                  blt          a7, a6, 85f
79:               srl          a1, s0, s0
                  nop
                  srl          zero, a6, a6
                  nop
                  xor          s9, a3, s4
                  xori         a0, a6, 1597
85:               sra          t3, s2, s3
                  slt          a3, tp, a3
                  sra          zero, t2, s7
                  sll          t0, a2, sp
                  sll          t3, s2, t4
                  srli         s11, a0, 6
                  auipc        a5, 1020989
                  beq          t1, a0, 109f
                  slti         s4, s7, 1002
                  andi         a7, sp, 1371
                  xori         zero, s1, -503
                  sltiu        gp, t1, 1054
                  nop
                  and          t3, zero, a4
                  sra          s11, s4, a6
                  bgeu         s1, t5, 113f
                  and          t4, s7, a0
                  srl          s11, a6, a2
                  bgeu         a7, s1, 118f
                  srl          a0, t3, zero
                  xori         a5, t5, -1351
                  bgeu         a5, s10, 124f
                  ori          a6, s7, 2038
                  slli         a0, ra, 10
109:              xor          a1, s3, a6
                  srai         a0, a7, 30
                  sra          s11, a0, s0
                  beq          a7, s3, 113f
113:              slt          s7, s7, a4
                  srli         t4, t4, 27
                  or           s3, a4, s6
                  nop
                  addi         t0, gp, 701
118:              lui          s11, 413490
                  xor          a4, a3, sp
                  nop
                  srli         a3, t1, 31
                  slti         s5, gp, 2005
                  sltiu        s5, a5, -196
124:              bgeu         t5, t0, 126f
                  bgeu         t3, a4, 135f
126:              blt          s1, s8, 131f
                  sltu         t5, s9, sp
                  addi         t1, a7, 596
                  xor          s2, s11, s10
                  nop
131:              ori          s1, a2, 766
                  auipc        s2, 937645
                  auipc        t1, 500486
                  xori         a4, zero, 1336
135:              or           t4, s3, s3
                  sub          a5, a4, s8
                  bne          s3, t4, 149f
                  auipc        t3, 60579
                  beq          s3, t3, 145f
                  sra          ra, a1, s10
                  andi         s4, a6, 1597
                  bltu         t6, t4, 161f
                  srai         a7, s0, 13
                  srli         s5, gp, 2
145:              srl          s3, s2, t3
                  srai         s5, t2, 13
                  beq          a0, t3, 149f
                  bgeu         t5, s3, 165f
149:              addi         s1, s9, 1388
                  auipc        a6, 154273
                  or           tp, a2, a6
                  lui          zero, 969884
                  beq          a7, a4, 173f
                  srai         t5, a1, 13
                  sub          s6, a1, s10
                  slt          tp, s4, s8
                  auipc        t0, 691302
                  blt          zero, s6, 172f
                  beq          ra, s8, 161f
                  addi         s2, s2, -403
161:              beq          s1, zero, 166f
                  bltu         a2, a0, 170f
                  blt          t0, s1, 169f
                  sub          s4, a0, t4
165:              bgeu         t6, sp, 176f
166:              srli         a3, s3, 29
                  sll          a2, ra, s4
                  srl          s2, t5, s0
169:              bltu         s0, s4, 176f
170:              blt          sp, t6, 185f
                  xor          a3, t0, s4
172:              slt          s4, tp, a0
173:              auipc        tp, 767324
                  andi         t3, gp, -1366
                  sltiu        s11, a5, 1152
176:              slt          a1, t0, a0
                  add          a7, a5, t6
                  and          s9, zero, t5
                  andi         a3, s0, -101
                  nop
                  srai         t2, a1, 30
                  andi         s3, s9, 1715
                  slti         s6, s6, -1580
                  ori          t5, gp, 1638
185:              sra          ra, s2, s9
                  srli         t4, s4, 30
                  beq          s8, s10, 197f
                  slt          s2, s1, t1
                  bge          gp, a6, 190f
190:              blt          zero, t3, 200f
                  sra          t6, t5, s11
                  ori          a0, a5, -704
                  sra          a4, t0, s7
                  xor          a4, s3, s8
                  blt          sp, s2, 199f
                  nop
197:              auipc        t4, 131062
                  bltu         s8, t6, 201f
199:              lui          t1, 1006291
200:              xori         a0, t3, -1933
201:              bltu         gp, s11, 206f
                  slt          zero, s7, t1
                  srl          t1, tp, s8
                  sub          t1, t1, s10
                  xori         t3, a6, 1532
206:              lui          s1, 714697
                  xori         a0, t0, -623
                  add          a1, a3, a2
                  lw           ra, 4(s10)
                  srl          a4, a0, s2
                  and          t6, s3, s10
                  sltu         s7, s10, s6
                  sub          t4, s2, a6
                  addi         s10, s10, 40
                  srl          s9, tp, ra
                  and          s9, a3, a7
302:              addi x30, x1, 0
302:              jalr x30, x30, 0
sub_1:            srl          a3, a5, zero
                  bne          s0, a2, sub_1_stack_p
                  xor          a2, s7, t1
sub_1_stack_p:    addi         s10, s10, -44
                  slti         s1, t3, -858
                  sw           ra, 4(s10)
                  srai         a5, s6, 25
                  sra          s3, zero, a1
                  srli         t0, s9, 2
                  sra          s5, a2, s8
                  slli         s2, s0, 15
                  srl          a7, a5, a6
                  sll          a2, s4, s9
                  ori          a5, t3, -628
                  lui          gp, 54994
                  and          t6, s2, t4
                  addi         t0, zero, 7 #init loop 0 counter
                  sltu         s7, a7, s3
                  nop
                  addi         a3, zero, 15 #init loop 0 limit
                  andi         a2, sp, 462
sub_1_0_0_t:      andi         t1, s3, 1162
                  addi         t0, t0, 1 #update loop 0 counter
                  slli         sp, a0, 5
                  bltu         t0, a3, sub_1_0_0_t #branch for loop 0
                  or           t2, s11, gp
                  andi         s1, zero, -982
                  slli         t6, a2, 18
                  slli         s1, t2, 5
                  lui          s11, 577736
                  srli         s11, t2, 25
                  sltu         a2, a0, s5
                  xor          t1, s9, gp
                  srli         a7, gp, 14
                  ori          s11, a0, -652
                  add          s3, s10, a4
                  xori         a4, s0, 1371
                  srai         s6, s5, 7
                  and          a1, s7, tp
                  bgeu         s5, t2, 27f
                  xor          s9, sp, s9
                  slt          s11, a0, s11
                  sltu         t3, t0, a3
                  lui          s11, 727611
                  slti         s1, t5, -1341
27:               sub          t4, ra, a1
                  bge          a0, t6, 38f
                  srl          t5, sp, s3
                  slli         a0, a7, 19
                  lui          t2, 99193
                  bltu         s6, t4, 41f
                  auipc        gp, 322026
                  lui          t1, 598323
                  auipc        a7, 3366
                  beq          s4, zero, 49f
                  slt          t5, a3, s5
38:               sll          t0, s11, a1
                  srai         zero, t2, 30
                  srai         t4, ra, 3
41:               beq          a7, ra, 56f
                  slt          t6, s1, s8
                  nop
                  and          t1, t4, s9
                  ori          a2, t1, 1200
                  xor          a2, s6, a6
                  xori         t3, s0, 105
                  slt          t5, s10, t2
49:               or           s2, a0, s10
                  xor          zero, a2, s4
                  slli         a4, s8, 7
                  auipc        a3, 137726
                  slli         t1, tp, 23
                  lui          a0, 191040
                  srai         tp, s8, 14
56:               srl          s2, t2, s0
                  andi         t4, t5, 846
                  sltu         s4, gp, a2
                  sra          t4, t6, s4
                  slti         t1, a0, -1875
                  xori         s6, a6, -1183
                  xori         s7, t4, 827
                  sra          t1, gp, s11
                  xor          gp, a5, t5
                  sltiu        t2, a2, -642
                  srai         s6, t3, 26
                  sltiu        s2, t4, -1566
                  bgeu         t2, gp, 75f
                  auipc        s4, 1042361
                  and          a3, zero, t0
                  or           zero, s8, zero
                  srl          a2, s5, a3
                  ori          a4, a1, 420
                  or           a5, s9, a6
                  la           a7, sub_5
                  srl          s3, s9, s3
                  addi         a7, a7, 147
                  srli         t1, s10, 13
                  sra          s1, s9, t2
                  slti         s11, s3, 291
                  srai         sp, t0, 25
                  srl          a3, s0, a5
                  sra          s11, a7, a0
                  bge          t6, a6, sub_1_j4 #branch to jump instr
                  slt          t3, tp, gp
sub_1_j4:         jalr         ra, a7, -146 #jump sub_1 -> sub_5
                  sltu         a4, a6, a4
75:               srl          t1, t0, t4
                  add          a2, a1, a6
                  sltu         s11, t0, s1
                  beq          t0, s8, 79f
79:               srai         t6, s1, 30
                  auipc        sp, 198247
                  xor          a7, s10, a2
                  xori         a0, s3, 1791
                  sltiu        s5, s7, -838
                  slli         t3, a6, 7
                  or           t4, a7, ra
                  lw           ra, 4(s10)
                  slt          a1, s4, t1
                  slt          s2, s4, s4
                  slti         s9, sp, 1809
                  addi         s10, s10, 44
                  addi         t2, s2, 1492
123:              addi x16, x1, 1
123:              jalr x16, x16, 0
sub_4:            sra          t1, a5, t0
                  andi         t4, a7, 1697
                  addi         s10, s10, -40
                  sltu         s11, s9, s2
                  sw           ra, 4(s10)
                  srai         a3, t3, 9
                  slt          a2, a7, s7
                  addi         s3, zero, -1479
                  sltiu        tp, s8, -1669
                  srl          t0, s0, a1
                  addi         s2, zero, 6 #init loop 1 counter
                  xor          t0, ra, s7
                  srl          s7, t1, s3
                  nop
                  addi         t2, zero, -15 #init loop 1 limit
sub_4_6_1_t:      nop
                  srai         t4, a4, 25
                  sll          a7, a7, tp
                  sll          zero, s10, a6
                  addi         s2, s2, -7 #update loop 1 counter
                  lui          tp, 939014
                  sltu         s5, s4, a1
                  addi         t3, zero, 5 #init loop 0 counter
                  addi         t6, zero, 5 #init loop 0 limit
sub_4_6_0_t:      addi         a6, tp, -2025
                  ori          a1, zero, -916
                  auipc        a0, 934545
                  addi         t3, t3, -4 #update loop 0 counter
                  bgeu         t3, t6, sub_4_6_0_t #branch for loop 0
                  srl          a5, t6, t2
                  bne          s2, t2, sub_4_6_1_t #branch for loop 1
                  addi         s4, gp, -1621
                  addi         a0, zero, 3 #init loop 1 counter
                  slti         t1, a4, 1734
                  slli         s3, s2, 12
                  lui          a7, 214313
                  slli         s4, a4, 14
                  sltiu        s11, s7, -1450
                  addi         ra, zero, 5 #init loop 1 limit
                  slti         s5, a6, 674
sub_4_8_1_t:      slt          t4, gp, s1
                  slti         s11, tp, 1754
                  nop
                  addi         a0, a0, 1 #update loop 1 counter
                  lui          t1, 510511
                  srai         zero, t3, 22
                  sra          gp, s0, gp
                  addi         a4, zero, 1 #init loop 0 counter
                  sltu         s2, tp, s9
                  sltu         a1, t2, a6
                  srl          a2, s11, s1
                  addi         t6, zero, -5 #init loop 0 limit
                  sub          s7, s2, ra
sub_4_8_0_t:      or           s6, a4, a2
                  and          a1, sp, s11
                  addi         a4, a4, -2 #update loop 0 counter
                  nop
                  bge          a4, t6, sub_4_8_0_t #branch for loop 0
                  addi         s7, a0, -115
                  sltu         s1, s10, s4
                  slli         s2, t0, 21
                  beq          a0, ra, sub_4_8_1_t #branch for loop 1
                  or           zero, a6, t6
                  addi         a0, zero, 6 #init loop 0 counter
                  addi         s3, a5, 1525
                  andi         t4, gp, -910
                  andi         s7, a0, 1359
                  addi         s2, zero, 6 #init loop 0 limit
                  addi         s11, s10, -1162
sub_4_10_0_t:     ori          sp, t0, 1096
                  xor          a5, s7, a4
                  addi         a0, a0, -4 #update loop 0 counter
                  sltiu        s11, t3, -936
                  ori          s5, s10, 1514
                  slti         t1, s2, 674
                  andi         s11, a6, 885
                  nop
                  nop
                  sra          a1, s6, a3
                  bgeu         a0, s2, sub_4_10_0_t #branch for loop 0
                  sub          s6, t4, a5
                  addi         ra, zero, 2 #init loop 0 counter
                  auipc        t1, 293853
                  andi         zero, a0, 1388
                  addi         s11, zero, 5 #init loop 0 limit
                  addi         t0, s3, 1089
                  xor          s5, s5, t5
                  sltu         a7, s2, s5
                  ori          s6, s11, 468
                  ori          a4, s4, 555
                  ori          s2, s5, -1786
sub_4_11_0_t:     addi         s5, s6, 691
                  addi         ra, ra, 6 #update loop 0 counter
                  sra          a4, gp, s0
                  sltu         s3, a1, s1
                  srl          s1, s4, gp
                  add          a6, s9, ra
                  bltu         ra, s11, sub_4_11_0_t #branch for loop 0
                  sub          tp, sp, t0
                  addi         a3, zero, -5 #init loop 0 counter
                  sltiu        s6, t6, 676
                  srli         a5, a5, 14
                  sub          zero, s5, zero
                  xor          t0, a0, s9
                  xori         a4, s3, 1034
                  srai         s9, s0, 25
                  addi         t5, zero, 0 #init loop 0 limit
                  andi         gp, s3, -358
                  auipc        gp, 716049
                  ori          s11, s0, -310
sub_4_4_0_t:      or           s11, sp, s10
                  addi         a3, a3, 10 #update loop 0 counter
                  nop
                  slti         a4, s11, 1509
                  sra          t4, s6, t6
                  slli         s4, ra, 25
                  sltiu        gp, a7, 760
                  sltiu        s5, t5, -418
                  sra          t4, sp, t1
                  srl          t2, s10, s9
                  andi         sp, s9, -1064
                  slt          zero, ra, s8
                  xori         ra, a7, 275
                  ori          tp, t2, 1612
                  blt          a3, t5, sub_4_4_0_t #branch for loop 0
                  sltiu        t0, zero, 1486
                  addi         s3, zero, 1 #init loop 0 counter
                  andi         gp, s11, -135
                  addi         a4, zero, 10 #init loop 0 limit
                  srl          a1, s3, t5
                  slti         s9, a0, 941
                  sltu         t0, t2, t5
                  srai         s11, t0, 3
                  auipc        s9, 188601
                  and          a0, t0, a6
sub_4_0_0_t:      add          t5, s0, t1
                  srli         a6, s11, 14
                  addi         s3, s3, 8 #update loop 0 counter
                  ori          t4, a2, 844
                  xor          t6, s8, sp
                  xori         t4, s3, 1868
                  sra          a3, a4, t1
                  ori          s6, ra, 933
                  blt          s3, a4, sub_4_0_0_t #branch for loop 0
                  srl          t0, s6, t2
                  addi         t4, zero, 1 #init loop 1 counter
                  addi         s7, zero, 16 #init loop 1 limit
sub_4_7_1_t:      and          s9, s5, a2
                  srl          zero, a3, s3
                  addi         t4, t4, 7 #update loop 1 counter
                  addi         a2, zero, 7 #init loop 0 counter
                  addi         s1, zero, -3 #init loop 0 limit
                  sra          a0, s7, a0
                  sra          t5, s5, s3
sub_4_7_0_t:      auipc        gp, 866449
                  auipc        t5, 814036
                  addi         a2, a2, -5 #update loop 0 counter
                  beq          a2, s1, sub_4_7_0_t #branch for loop 0
                  bltu         t4, s7, sub_4_7_1_t #branch for loop 1
                  sub          t6, s10, tp
                  addi         s5, zero, 6 #init loop 0 counter
                  addi         a1, zero, 11 #init loop 0 limit
                  ori          a3, a1, -1980
sub_4_3_0_t:      andi         t2, t2, 1995
                  and          s6, tp, s0
                  addi         s5, s5, 7 #update loop 0 counter
                  blt          s5, a1, sub_4_3_0_t #branch for loop 0
                  sub          t3, t3, s10
                  bge          a1, zero, 5f
                  beq          t0, a2, 13f
                  addi         gp, a3, 1658
                  slli         s4, s8, 28
                  slti         a7, s3, -1430
5:                blt          s7, a2, 20f
                  bgeu         s0, t4, 9f
                  beq          a1, a0, 13f
                  sub          s6, t0, a6
9:                bne          tp, t1, 18f
                  andi         t0, t5, 405
                  bge          ra, a0, 27f
                  xori         zero, a5, -1651
13:               beq          t6, t5, 16f
                  sll          zero, zero, t6
                  xori         s11, s11, 1661
16:               and          t2, t2, a2
                  or           ra, tp, t2
18:               sltiu        s6, s1, 1353
                  slti         zero, s7, 443
20:               sll          s5, a1, a6
                  sra          s3, t0, s5
                  slli         s5, s6, 17
                  blt          s1, sp, 28f
                  blt          s6, a2, 39f
                  xori         a1, s10, 1693
                  blt          t2, sp, 34f
27:               andi         t3, sp, 1391
28:               slli         zero, s2, 28
                  beq          t5, gp, 43f
                  slli         s1, a1, 7
                  sltiu        s1, s11, -953
                  bge          zero, gp, 40f
                  sltu         s7, t4, s4
34:               lui          gp, 18413
                  ori          a1, s7, -358
                  srli         zero, zero, 6
                  bltu         t3, zero, 47f
                  ori          a1, s11, -682
39:               xor          a5, a1, a0
40:               add          a0, t0, s4
                  bne          a1, s3, 57f
                  nop
43:               lui          a2, 280556
                  slli         a3, s0, 18
                  lui          a0, 946715
                  slti         t5, s10, -1974
47:               addi         a0, s4, -801
                  xor          a2, t0, ra
                  and          s2, gp, s11
                  srli         a4, s0, 11
                  and          t0, s9, a1
                  srai         t6, a0, 26
                  lui          s11, 43949
                  xor          s6, a3, t2
                  auipc        t2, 57100
                  addi         a5, t6, 1678
57:               addi         s7, a5, 566
                  beq          s2, s9, 73f
                  bltu         t3, t6, 69f
                  andi         s6, a3, -1458
                  sltu         ra, t1, t4
                  srl          a0, s2, t6
                  xor          zero, s1, s8
                  srli         s1, s7, 17
                  lui          ra, 550083
                  andi         a3, sp, -1931
                  slli         t6, s8, 16
                  sltiu        tp, zero, 1728
69:               addi         a0, s10, 247
                  slti         s6, s3, 263
                  srli         s2, s8, 31
                  lui          s9, 861392
73:               sll          s9, s5, zero
                  bge          s8, a4, 89f
                  slti         tp, s0, 135
                  and          a1, a2, t5
                  xori         s11, s9, 1372
                  sub          s1, t1, t4
                  xor          s6, t4, sp
                  bne          t3, s0, 85f
                  slt          s6, zero, t1
                  sll          a4, t4, t3
                  slt          zero, s11, zero
                  slti         tp, a3, 1481
85:               sub          zero, a5, s2
                  srl          tp, a7, a0
                  slt          a0, s8, t6
                  srl          a1, a4, a5
89:               bne          t3, a3, 109f
                  andi         t4, a1, 1368
                  auipc        s7, 857090
                  srli         s4, a0, 17
                  sub          s7, t0, a2
                  and          a0, s11, s0
                  andi         s7, t5, 138
                  bltu         s1, gp, 98f
                  srai         t3, s11, 5
98:               lui          s1, 930433
                  srli         t0, s11, 3
                  slli         s4, s3, 27
                  slli         tp, t4, 10
                  slt          t0, s11, s2
                  auipc        a7, 243182
                  slti         a3, s6, -291
                  sra          t0, a7, a3
                  add          a6, t4, a5
                  slli         zero, s0, 15
                  sltiu        s2, a1, -981
109:              or           s1, t6, a2
                  bge          s4, gp, 113f
                  slt          ra, ra, t1
                  bltu         s9, s4, 115f
113:              sltiu        tp, gp, -1224
                  srl          s1, a0, s0
115:              slt          s9, s9, s5
                  slt          s11, zero, a5
                  bltu         t1, a7, 122f
                  lui          t2, 420908
                  bltu         t2, tp, 137f
                  and          s4, s1, t4
                  ori          a7, a5, 1416
122:              addi         a6, s10, 1109
                  slt          s6, gp, s10
                  slti         a3, gp, 590
                  sra          sp, s8, s3
                  sub          s1, s11, a6
                  lui          a0, 896373
                  sltiu        t3, t4, 2019
                  lui          s9, 909597
                  nop
                  bge          ra, tp, 141f
                  bltu         t6, a7, 150f
                  slt          s3, tp, a0
                  sltiu        s2, s7, 1952
                  slt          a0, s6, t0
                  beq          s6, s6, 143f
137:              srai         s4, s10, 4
                  beq          a4, t3, 144f
                  bltu         zero, sp, 154f
                  srl          a6, a3, t0
141:              sra          s11, t6, s6
                  xori         a2, s6, 1159
143:              sltu         s9, t3, tp
144:              andi         t1, a3, 1473
                  lui          s5, 543154
                  slt          s7, tp, a6
                  sub          a4, t1, t0
                  xori         a7, s9, -770
                  slti         zero, s1, 981
150:              sub          s5, tp, zero
                  slt          a1, a6, a7
                  bge          t5, s9, 155f
                  bne          zero, s5, 168f
154:              slt          t2, s6, a3
155:              srli         s6, s6, 29
                  beq          a3, s0, 162f
                  lui          s2, 649621
                  xor          sp, a4, s3
                  addi         t2, a4, -1074
                  bge          s9, sp, 178f
                  sltu         t0, s8, s6
162:              sub          a0, t5, s0
                  slti         a0, a2, 319
                  bltu         s3, ra, 166f
                  slti         a6, s1, 775
166:              ori          s2, s3, -1307
                  xor          zero, s5, t2
168:              sll          a5, tp, a3
                  slli         s3, zero, 21
                  auipc        ra, 697801
                  auipc        s9, 939479
                  bgeu         a1, a2, 187f
                  bge          t5, s10, 176f
                  xor          a6, s2, s10
                  srl          a6, sp, t2
176:              xori         a2, s9, 609
                  beq          sp, a3, 182f
178:              or           a4, gp, s10
                  sltiu        a5, a6, -1388
                  nop
                  add          a5, t1, a4
182:              auipc        t0, 77160
                  slti         t6, s11, -437
                  sra          t4, gp, t1
                  blt          sp, gp, 194f
                  sll          tp, s7, s2
187:              ori          t0, a5, -2035
                  xori         s11, s9, 1681
                  add          s2, a7, t0
                  auipc        sp, 728076
                  sltu         s7, s1, t2
                  slt          t4, s0, zero
                  ori          t1, a7, 469
194:              slti         sp, t5, 601
                  addi         a1, s11, -647
                  or           t5, a0, s11
                  slti         t5, a0, -1204
                  andi         t3, s4, -72
                  srl          a5, t4, gp
                  srl          a1, s6, t3
                  srl          s4, s3, gp
                  sra          t5, s3, t1
                  sltiu        a6, t5, -1034
                  nop
                  sub          t3, s6, sp
                  bltu         t5, s3, 211f
                  bge          a0, s10, 212f
                  sltu         t0, s11, s2
                  bne          a1, s2, 217f
                  sltiu        t6, a1, -1974
211:              xor          s7, t5, ra
212:              slli         a0, s8, 4
                  xor          t4, s6, s4
                  sltiu        s2, t1, -677
                  bltu         zero, s8, 221f
                  sltiu        t2, s0, -863
217:              bgeu         s3, a5, 220f
                  blt          t5, a5, 236f
                  sub          ra, s7, s8
220:              add          sp, a3, t2
221:              srli         s11, a5, 6
                  srl          a2, zero, a7
                  lui          gp, 368901
                  slt          s11, a2, t5
                  blt          a4, tp, 245f
                  sra          t2, zero, sp
                  addi         zero, a2, -1170
                  nop
                  add          a6, s0, s1
                  srli         a6, t0, 26
                  sltu         ra, a0, s6
                  and          tp, t5, a3
                  add          a2, s10, ra
                  addi         a2, zero, 9 #init loop 1 counter
                  and          t1, s8, s7
                  and          s6, gp, a3
                  xori         t4, s11, 1272
                  lui          a1, 116520
                  nop
                  addi         a0, zero, 8 #init loop 1 limit
                  auipc        tp, 684334
sub_4_5_1_t:      sltiu        t0, s11, 710
                  slli         a1, a0, 28
                  addi         a2, a2, -7 #update loop 1 counter
                  addi         a4, zero, 3 #init loop 0 counter
                  slli         t0, s4, 21
                  ori          gp, a3, -401
                  slt          a3, s9, s2
                  addi         s11, zero, -10 #init loop 0 limit
                  slli         a6, a6, 12
sub_4_5_0_t:      and          zero, a0, s0
                  sltiu        s1, a2, 110
                  lui          t1, 37622
                  addi         a4, a4, -1 #update loop 0 counter
                  bge          a4, s11, sub_4_5_0_t #branch for loop 0
                  xori         a7, a6, -1501
                  bgeu         a2, a0, sub_4_5_1_t #branch for loop 1
                  xori         tp, s1, 1177
                  addi         a6, a5, 1635
                  sub          s2, s2, s0
236:              sll          s5, s3, s0
                  slli         gp, t5, 8
                  sll          t5, s1, s5
                  srli         a6, a2, 2
                  sll          s4, s1, s6
                  bne          s7, a0, 253f
                  bne          a7, s8, 245f
                  xor          a1, a2, s5
                  and          t5, a3, s0
245:              slt          a7, s5, sp
                  auipc        tp, 871638
                  slti         a6, a0, 1609
                  bne          s5, sp, 264f
                  andi         a6, s10, -1371
                  lui          s5, 38193
                  ori          a4, s3, 1441
                  slli         s9, s2, 31
253:              auipc        ra, 431282
                  addi         a1, s9, 1838
                  sub          a4, s3, t4
                  srl          t1, t4, t3
                  slti         a7, a6, 1776
                  blt          s8, t0, 268f
                  and          t5, a7, t5
                  srl          t0, t5, s2
                  xor          tp, a0, t3
                  and          sp, s11, a4
                  blt          s1, s3, 279f
264:              blt          tp, a6, 279f
                  bge          a1, a6, 280f
                  sltu         s4, a1, s0
                  xori         s4, s0, -1750
268:              or           s1, a4, s9
                  add          s9, s7, s4
                  lui          a6, 342010
                  andi         a7, s1, 64
                  and          tp, t5, s5
                  sltiu        t0, a6, -568
                  srli         a1, s7, 16
                  and          zero, t4, s5
                  sra          tp, t0, t6
                  srai         s5, a7, 10
                  sub          t3, gp, s7
279:              beq          a2, a4, 287f
280:              auipc        t0, 989858
                  slli         s3, t1, 25
                  slli         gp, a7, 13
                  bne          s5, t6, 293f
                  and          s9, s1, s5
                  bgeu         s1, a3, 292f
                  xor          t6, t6, s0
287:              slti         s6, tp, -708
                  addi         t0, zero, 4 #init loop 0 counter
                  slt          s3, t5, t6
                  srl          t3, a3, s6
                  srai         s11, s8, 16
                  addi         t2, zero, -12 #init loop 0 limit
sub_4_9_0_t:      ori          a7, gp, -1097
                  andi         sp, s8, 273
                  addi         t0, t0, -8 #update loop 0 counter
                  sltu         s11, a6, s7
                  auipc        a2, 852408
                  nop
                  xori         s4, s0, 1635
                  and          s6, s4, t5
                  beq          t0, t2, sub_4_9_0_t #branch for loop 0
                  andi         ra, s3, -1608
                  slti         t6, t0, 1652
                  blt          a1, ra, 304f
                  sltu         a0, t5, a5
                  blt          a2, t5, 296f
292:              ori          gp, s4, -1845
293:              beq          t6, a0, 303f
                  beq          s5, t1, 308f
                  sltiu        s4, s0, 121
296:              beq          tp, a4, 301f
                  and          s2, a1, t6
                  sub          s11, t0, s9
                  srli         s11, sp, 22
                  sub          sp, t5, s11
301:              ori          a3, s5, 965
                  add          t6, s5, s2
303:              xori         a2, s9, 854
304:              nop
                  blt          s0, a1, 312f
                  andi         s3, s7, 987
                  ori          t5, t6, 1967
308:              slli         gp, gp, 27
                  sltu         s5, a1, s0
                  blt          s0, t6, 320f
                  auipc        a6, 872011
312:              sra          s3, a4, gp
                  bltu         sp, ra, 318f
                  srl          t5, t4, zero
                  bge          s9, s1, 318f
                  or           s3, a0, a1
                  srai         t0, s6, 2
318:              addi         s6, sp, 328
                  slli         zero, a5, 31
320:              slti         t5, sp, -478
                  slt          zero, a7, ra
                  lui          t4, 300152
                  ori          t5, a2, -1548
                  or           t3, gp, tp
                  auipc        a3, 628273
                  ori          a1, a7, -606
                  slt          s3, a2, s10
                  sltiu        sp, zero, -1382
                  lui          s2, 893650
                  srl          a1, s3, a5
                  beq          a7, ra, 349f
                  slt          zero, ra, a1
                  nop
                  or           t0, zero, s11
                  sub          t6, a6, s8
                  ori          s5, s6, -1986
                  bne          s10, s2, 340f
                  beq          t1, s4, 353f
                  bltu         a0, s9, 354f
340:              slt          tp, a7, t5
                  blt          s5, gp, 344f
                  sltu         t1, gp, a4
                  slli         tp, a2, 0
344:              srai         s6, t6, 31
                  srai         a6, a4, 13
                  slt          tp, a0, t6
                  xori         a1, t4, -1146
                  sll          tp, s11, s8
349:              auipc        sp, 965706
                  sub          s2, a5, s2
                  and          t0, s9, s2
                  auipc        s4, 864820
353:              xori         s1, s3, -1367
354:              sltiu        s1, s8, -91
                  bne          t3, t1, 365f
                  or           t5, s3, ra
                  bgeu         s11, t6, 360f
                  slt          zero, tp, a4
                  sll          tp, t1, s4
360:              sltu         a6, s3, gp
                  bltu         s2, s7, 369f
                  sub          t0, a0, a2
                  sltu         s2, t2, s0
                  srli         s9, a4, 1
365:              sra          a1, s5, s11
                  srai         s4, s0, 24
                  sra          s7, s8, a7
                  bgeu         s11, s4, 388f
369:              srl          a6, a6, s3
                  andi         tp, zero, 532
                  slli         s5, a2, 16
                  slli         s5, a7, 5
                  sltiu        t0, s10, 580
                  sll          a7, s4, sp
                  sltu         a4, gp, sp
                  lui          sp, 417316
                  addi         t2, zero, 0 #init loop 1 counter
                  andi         a0, gp, -504
                  add          s2, s5, s9
                  xor          zero, t0, a5
                  xori         tp, a2, 1232
                  xori         a4, t6, -440
                  addi         s11, zero, -8 #init loop 1 limit
                  sltu         s3, s11, a6
                  auipc        a1, 502305
sub_4_2_1_t:      nop
                  nop
                  addi         t2, t2, -3 #update loop 1 counter
                  slt          s7, s4, s6
                  srli         a7, s4, 10
                  lui          a1, 404316
                  addi         a3, zero, 1 #init loop 0 counter
                  addi         s4, zero, -1 #init loop 0 limit
                  andi         s1, s3, -1103
                  add          a4, a7, s8
                  srli         s2, a7, 13
sub_4_2_0_t:      slt          t6, tp, s8
                  addi         a3, a3, -5 #update loop 0 counter
                  add          zero, tp, t5
                  bge          a3, s4, sub_4_2_0_t #branch for loop 0
                  xor          t6, s10, t3
                  srl          tp, t1, a4
                  srai         a0, a3, 12
                  slli         a4, t3, 17
                  bge          t2, s11, sub_4_2_1_t #branch for loop 1
                  addi         a1, t4, 805
                  sltu         s11, s2, s5
                  andi         t5, a4, 1666
                  slli         s3, s6, 28
                  srl          t6, a3, t0
                  andi         zero, t2, 907
                  srl          zero, t1, zero
                  andi         s1, s9, -142
                  xor          ra, t3, t5
                  add          a0, s6, a3
                  bne          t4, s0, 391f
                  or           gp, gp, a0
388:              nop
                  bgeu         a3, s3, 404f
                  or           ra, s1, t6
391:              slt          a0, a7, a0
                  andi         a3, s1, -1873
                  add          ra, a3, t5
                  slti         a1, a0, 551
                  or           t2, s10, t5
                  bltu         t3, tp, 412f
                  bne          a6, s11, 403f
                  lui          t3, 702713
                  blt          t0, s4, 413f
                  slli         s3, s2, 7
                  srai         sp, ra, 3
                  srl          a7, t3, sp
                  addi         a7, zero, -8 #init loop 0 counter
                  auipc        t6, 894124
                  addi         t5, zero, 14 #init loop 0 limit
sub_4_1_0_t:      sltu         sp, s3, a5
                  addi         a7, a7, 8 #update loop 0 counter
                  bltu         a7, t5, sub_4_1_0_t #branch for loop 0
                  srl          t1, t4, s10
403:              andi         a3, s8, 1787
404:              slt          gp, t6, t5
                  slt          s4, t0, a0
                  xor          a7, s10, s7
                  beq          zero, a5, 412f
                  sltu         t5, t0, t4
                  bne          t0, t1, 411f
                  ori          a7, s7, 1091
411:              andi         s5, tp, 413
412:              sll          t5, s11, a6
413:              bltu         s5, ra, 423f
                  bge          t6, a1, 426f
                  sra          ra, t1, ra
                  nop
                  lui          a4, 887824
                  ori          t1, s9, 1640
                  xori         a7, s2, 449
                  lui          t3, 842766
                  slt          gp, t2, s0
                  bge          t3, a0, 440f
423:              srl          s5, s2, ra
                  sltiu        zero, ra, -2005
                  bgeu         s5, a1, 440f
426:              srai         s11, tp, 22
                  srai         gp, s9, 12
                  sub          t4, a0, s5
                  and          s11, a0, s7
                  addi         a3, s4, -228
                  or           s7, zero, s1
                  add          a4, a5, gp
                  beq          t3, a0, 439f
                  slli         a5, tp, 3
                  srai         t0, tp, 9
                  ori          a7, t5, 738
                  ori          s4, t2, 1921
                  nop
439:              sub          s3, a6, s8
440:              and          a4, s8, s8
                  sltiu        s5, s5, 1992
                  bne          s1, s11, 457f
                  sra          t3, t6, a7
                  slti         s9, a6, 1573
                  bgeu         a7, s1, 453f
                  sll          s5, t4, s6
                  sub          t4, a5, s2
                  xor          zero, a5, ra
                  sra          t5, s11, a0
                  sra          a2, t0, t4
                  sltu         tp, s5, a0
                  ori          s3, a2, -242
453:              or           s2, t1, s6
                  or           s5, s1, t4
                  sll          t2, s2, a6
                  bgeu         s5, gp, 472f
457:              sub          s11, a0, t3
                  slli         a7, t3, 20
                  beq          t6, sp, 468f
                  and          t1, s0, a5
                  and          t0, s6, t5
                  and          t5, t1, t1
                  sltu         a0, a5, tp
                  sltiu        a1, s2, -1147
                  slt          t4, s4, s11
                  or           t0, tp, a7
                  sll          t1, s7, t1
468:              andi         a4, s7, -1157
                  nop
                  beq          s0, s10, 485f
                  auipc        t4, 899269
472:              sll          a3, ra, a6
                  add          t5, a3, a2
                  slti         s2, s3, -61
                  slti         t4, a2, 1343
                  and          s6, a7, a7
                  srl          s9, s8, t3
                  xori         s9, t2, -1568
                  sltiu        t3, s6, -1964
                  andi         s7, t6, -228
                  bgeu         ra, a4, 488f
                  slt          s2, s3, s10
                  sra          t2, t5, a0
                  bltu         s7, gp, 499f
485:              sltu         a2, t6, a1
                  xori         s6, zero, 1101
                  srai         t6, a7, 20
488:              addi         a6, s5, -1998
                  srai         t6, t4, 26
                  beq          t0, s8, 510f
                  slli         sp, s6, 11
                  slti         s3, a5, -472
                  xor          zero, a4, a5
                  bge          a6, sp, 509f
                  sll          s6, s1, t6
                  bltu         a7, a0, 511f
                  xor          t1, a2, gp
                  srli         s5, t5, 18
499:              srli         s4, t5, 2
                  add          s1, t3, t1
                  sltiu        s6, s1, 1532
                  add          t6, t1, a5
                  andi         s3, t4, -57
                  blt          s2, s5, 520f
                  andi         gp, s4, 1620
                  bgeu         s5, a5, 509f
                  auipc        s4, 350854
                  add          t0, s10, s4
509:              sll          s5, s3, t0
510:              sltu         s11, t1, s3
511:              sltu         t3, ra, s2
                  xori         s5, a2, 1990
                  slti         t0, s8, -1439
                  lui          t5, 992901
                  andi         a3, s8, -1142
                  and          a1, a6, t0
                  blt          t4, t1, 529f
                  bge          s10, t0, 523f
                  sll          t0, t1, a4
520:              addi         a5, t1, 398
                  slt          a1, s3, a2
                  bgeu         a4, t4, 540f
523:              sll          s7, s5, a6
                  xor          t0, s3, sp
                  sltu         a6, s1, s5
                  bgeu         s9, a7, 542f
                  blt          a0, s9, 535f
                  xor          s4, t4, t5
529:              beq          a0, sp, 538f
                  srli         a6, t3, 2
                  srai         s6, t1, 20
                  addi         s9, t5, -986
                  sll          sp, gp, tp
                  nop
535:              sub          t3, t0, s9
                  sra          a3, a3, a4
                  beq          s0, s9, 540f
538:              add          t4, t6, s3
                  bltu         s10, a7, 541f
540:              slti         s6, a4, -307
541:              sltiu        t5, s0, -385
542:              add          t0, s3, s8
                  sltiu        a3, a6, -1418
                  bge          t2, a3, 552f
                  slli         t5, ra, 17
                  lui          s1, 138786
                  slt          gp, sp, a7
                  sub          a5, s7, s3
                  slti         zero, a0, -1757
                  slt          s1, gp, t2
                  sltu         gp, t5, s9
552:              or           sp, t2, s1
                  lui          a6, 474731
                  or           a3, a5, s3
                  sltiu        t3, a6, -1844
                  sltiu        t4, t4, -1659
                  sltiu        ra, t3, 632
                  slt          s2, s5, s0
                  beq          tp, s3, 564f
                  xori         tp, a1, 947
                  slt          a0, a0, a4
                  xor          t1, t0, s10
                  and          t1, sp, t0
564:              slti         s9, tp, -1451
                  addi         t0, t3, -316
                  sll          a3, s7, t2
                  add          tp, t3, s8
                  srl          t4, tp, s10
                  xor          a5, s0, t2
                  sll          s4, a2, a4
                  andi         s3, ra, -1225
                  xori         a2, a7, -332
                  auipc        t4, 683728
                  slli         t1, t1, 21
                  bge          a3, t3, 580f
                  xori         a2, a4, 1563
                  addi         t2, a3, 1697
                  bgeu         ra, t4, 593f
                  lui          t4, 18047
580:              sll          ra, a3, s9
                  sub          a2, s7, gp
                  bne          s3, t6, 588f
                  slti         a6, s8, 688
                  nop
                  auipc        s3, 231951
                  add          s5, s4, t4
                  srl          tp, s2, a4
588:              bgeu         s5, s9, 594f
                  srl          tp, s10, s9
                  slt          a7, t6, t2
                  srl          a3, a3, s1
                  xor          t6, a7, s0
593:              lui          s4, 369173
594:              and          s5, a0, a2
                  ori          t0, t4, -2032
                  xor          s7, s5, s6
                  bltu         s11, a4, 600f
                  xor          sp, t1, a0
                  lui          t5, 949161
600:              xor          s7, s0, s3
                  srai         s3, a1, 7
                  add          s5, a0, a2
                  sub          a3, s8, a7
                  lui          s4, 512392
                  beq          a4, t4, 610f
                  or           t6, t0, t3
                  slt          s2, t6, s7
                  slli         s5, a6, 8
                  sltiu        a1, gp, -235
610:              lui          a4, 944196
                  beq          t3, zero, 625f
                  bne          s8, s5, 630f
                  bltu         t1, s2, 616f
                  slti         a6, t3, -1088
                  sra          t4, ra, s4
616:              nop
                  bgeu         t5, s10, 627f
                  beq          s8, a6, 628f
                  xori         t6, s7, 902
                  bge          a2, s2, 630f
                  srai         ra, s3, 0
                  or           s11, gp, sp
                  xor          a3, t2, a2
                  auipc        a7, 439363
625:              blt          s5, s2, 634f
                  or           s7, tp, ra
627:              auipc        s4, 765246
628:              srl          s6, s11, s8
                  beq          s4, s6, 636f
630:              bgeu         t2, s7, 637f
                  add          t5, s4, a6
                  blt          s6, a2, 637f
                  or           t3, t4, s11
634:              slli         s9, a2, 10
                  blt          s0, s9, 637f
636:              auipc        t5, 958692
637:              sll          tp, a2, s7
                  slli         t6, s7, 5
                  srli         s5, s7, 4
                  xor          tp, s4, s11
                  slti         s9, s6, 986
                  lw           ra, 4(s10)
                  lui          a2, 264754
                  andi         a4, sp, 1744
                  slli         s7, a4, 6
                  xor          t2, s0, t2
                  addi         s10, s10, 40
                  sub          a1, a1, a7
                  add          t6, s11, s11
895:              addi x22, x1, 1
895:              jalr x22, x22, 0
sub_3:            xori         sp, s3, 27
                  slti         t6, sp, 233
                  blt          a1, t5, sub_3_stack_p
                  sra          a1, a3, a4
sub_3_stack_p:    addi         s10, s10, -44
                  srai         s5, s3, 27
                  sw           ra, 4(s10)
                  sll          a3, tp, s0
                  srai         a4, s3, 0
                  slt          s4, t1, s3
                  addi         t2, zero, -3 #init loop 0 counter
                  srai         t0, s0, 4
                  srli         gp, s1, 6
                  nop
                  srai         s2, ra, 27
                  sub          a4, s5, ra
                  sll          a3, s5, a7
                  addi         t3, zero, -7 #init loop 0 limit
                  nop
sub_3_1_0_t:      and          s11, t5, gp
                  srl          a4, a3, t0
                  andi         tp, s8, -162
                  addi         t2, t2, -1 #update loop 0 counter
                  slt          s7, s1, s0
                  sltiu        a7, a4, 586
                  srl          s3, a4, s4
                  bne          t2, t3, sub_3_1_0_t #branch for loop 0
                  auipc        s11, 819510
                  addi         s1, zero, -9 #init loop 0 counter
                  addi         t3, zero, -12 #init loop 0 limit
sub_3_0_0_t:      lui          a1, 619867
                  and          t1, s2, t2
                  srai         a1, s8, 26
                  addi         s1, s1, -3 #update loop 0 counter
                  bne          s1, t3, sub_3_0_0_t #branch for loop 0
                  nop
                  addi         gp, zero, 8 #init loop 0 counter
                  addi         a2, zero, -5 #init loop 0 limit
                  srai         t0, s4, 25
                  nop
sub_3_2_0_t:      add          s3, t4, s0
                  srai         a6, s2, 5
                  xor          a6, zero, a0
                  sll          sp, t1, tp
                  nop
                  ori          t0, zero, -561
                  auipc        t2, 854016
                  sra          s7, a1, t6
                  nop
                  slti         s2, gp, 540
                  ori          s6, a2, 184
                  addi         gp, gp, -1 #update loop 0 counter
                  srai         a1, s4, 25
                  sltiu        a1, s2, 562
                  addi         sp, a5, 1670
                  srl          sp, s8, t6
                  sll          a6, a3, t1
                  slti         a1, a0, 1430
                  bge          gp, a2, sub_3_2_0_t #branch for loop 0
                  srl          t6, t1, s1
                  srli         t3, s11, 10
                  add          t4, tp, t6
                  sltu         t3, a5, t6
                  or           a3, s2, s4
                  bltu         t6, a6, 19f
                  slti         t4, a1, -250
                  addi         t4, s11, 480
                  bge          t3, t4, 9f
                  slli         t2, t2, 1
9:                slti         ra, a4, 1943
                  xori         t2, s10, 1005
                  sll          tp, s11, s5
                  xor          s2, a0, zero
                  or           t2, t1, s3
                  xor          t0, s6, gp
                  auipc        s1, 543630
                  sltu         s9, t0, a4
                  bne          zero, t4, 33f
                  srl          t3, s7, tp
19:               srai         s4, a3, 23
                  ori          s4, s7, -29
                  beq          a6, s2, 32f
                  ori          t1, s2, -1228
                  slti         sp, s3, 290
                  sltu         t1, t4, t4
                  bne          s2, t4, 41f
                  sltu         sp, s8, s5
                  addi         s9, t0, 803
                  srai         s3, a6, 2
                  bne          t6, s11, 37f
                  beq          s3, t5, 38f
                  sltu         s2, a4, s11
32:               sltu         a4, s8, a1
33:               xori         tp, ra, -526
                  add          a2, gp, s11
                  ori          s4, t6, -1372
                  sltiu        a5, t6, 140
37:               and          a2, tp, t6
38:               andi         zero, sp, -482
                  srl          t5, s0, s11
                  sltu         s9, s7, a5
41:               srli         s6, s5, 22
                  srl          s3, tp, s8
                  ori          s4, t6, -807
                  la           s9, sub_4
                  srli         s4, a2, 0
                  xor          s4, s7, t4
                  addi         s9, s9, -54
                  sra          s1, s9, a6
                  and          a4, zero, s7
                  auipc        t4, 163916
                  bltu         a0, s11, sub_3_j5 #branch to jump instr
                  andi         s4, s11, 1257
sub_3_j5:         jalr         ra, s9, 55 #jump sub_3 -> sub_4
                  sltiu        s11, a6, 1995
                  add          s5, a7, s4
                  slt          zero, s9, gp
                  blt          s4, s10, 67f
                  addi         sp, s7, -728
                  and          s11, a1, a7
                  lui          t1, 760141
                  slli         t6, zero, 11
                  xori         a7, tp, 177
                  srli         a2, a7, 4
                  bltu         s10, s3, 65f
                  bge          s11, s4, 73f
                  srl          t5, t3, t6
                  sra          t3, t2, a2
                  ori          gp, s6, -1329
                  blt          a3, a1, 67f
                  sra          t3, t0, s0
                  or           t0, a7, t1
                  bltu         t5, gp, 65f
                  slti         t3, a7, -1161
                  sll          s5, s2, t3
65:               ori          a2, s2, -1216
                  beq          s9, t1, 73f
67:               auipc        s3, 265330
                  ori          s4, zero, -1755
                  nop
                  addi         t0, s3, 1528
                  slli         zero, s7, 25
                  srl          t6, t4, a7
73:               srli         t3, s3, 30
                  andi         t4, tp, 588
                  andi         sp, s6, 977
                  srai         a0, zero, 2
                  sra          s11, a7, s11
                  srl          s2, s3, s1
                  srl          zero, a3, zero
                  xor          gp, t1, s5
                  ori          t4, a0, -653
                  auipc        gp, 932351
                  or           t4, s9, s11
                  andi         gp, a4, -1457
                  xori         s6, ra, -306
                  nop
                  lui          a4, 1040511
                  slli         s4, t2, 12
                  srai         s1, s5, 17
                  and          s11, t1, t4
                  srl          t0, a3, a5
                  slti         s3, t5, 971
                  or           sp, ra, a6
                  addi         s11, s7, -1212
                  nop
                  xori         a6, s2, 1265
                  auipc        ra, 867554
                  srai         a0, s6, 6
                  addi         s3, a5, 91
                  srli         sp, tp, 29
                  blt          s0, a4, 119f
                  auipc        t2, 123856
                  bgeu         t0, s9, 114f
                  bgeu         t0, t0, 112f
                  lui          a6, 225664
                  sra          a3, t0, s1
                  xor          t0, t3, s9
                  slli         s2, t0, 1
                  bgeu         s4, t3, 117f
                  slt          a7, a5, s5
                  or           a2, s6, s10
112:              slti         t1, a7, -362
                  srli         s9, a7, 3
114:              bgeu         s6, s6, 125f
                  srai         t1, s3, 0
                  slli         s11, s2, 29
117:              lui          a6, 874977
                  bne          tp, t0, 136f
119:              sub          a4, s7, a2
                  srl          t2, s6, t5
                  lui          a1, 840187
                  xori         s7, s5, -1650
                  slli         tp, t3, 26
                  slti         a5, t5, 234
125:              xori         a1, s2, 120
                  slli         t4, a5, 17
                  lui          s7, 168522
                  and          a2, s10, t2
                  sub          s9, sp, t2
                  auipc        sp, 837262
                  andi         t1, t6, -618
                  andi         t2, a1, 1201
                  lui          t2, 740017
                  ori          t2, s4, -460
                  srai         t2, a5, 13
136:              sra          a2, a4, s5
                  andi         a1, a7, -2040
                  nop
                  beq          s3, a4, 143f
                  nop
                  srli         s4, a6, 19
                  srli         a5, tp, 0
143:              bne          a6, a6, 152f
                  bltu         a5, s2, 163f
                  srli         sp, t6, 1
                  lui          a6, 390351
                  bne          s3, s6, 162f
                  or           s2, t0, t6
                  auipc        t5, 520812
                  xor          a6, t6, s9
                  ori          s5, t5, -1578
152:              bltu         t5, s0, 158f
                  add          s4, ra, a4
                  bge          s5, a4, 166f
                  andi         sp, t0, 1154
                  or           a3, s2, s4
                  xor          s7, a0, s5
158:              xor          gp, t5, a6
                  nop
                  bgeu         s5, s6, 178f
                  beq          ra, s0, 177f
162:              blt          sp, t5, 171f
163:              xor          a7, t2, s4
                  bne          s6, s8, 169f
                  bgeu         s5, a4, 169f
166:              xori         s3, t6, 1135
                  xor          t3, sp, a3
                  ori          tp, zero, -282
169:              srai         a0, s10, 28
                  srl          s5, gp, zero
171:              add          zero, t2, a7
                  auipc        a5, 789398
                  srl          ra, a7, s0
                  or           a1, s5, sp
                  xori         s11, gp, -1525
                  bne          t0, s7, 183f
177:              auipc        gp, 988936
178:              srli         tp, a4, 27
                  srli         gp, t3, 18
                  sub          a1, a3, t0
                  add          a1, a5, t2
                  slli         zero, s1, 8
183:              xor          s9, t6, a1
                  lui          s1, 523385
                  bgeu         t0, t0, 195f
                  ori          t6, gp, 1404
                  sltiu        t0, t3, 684
                  sra          t0, zero, t5
                  add          s6, t5, t3
                  or           t5, t5, t4
                  bne          t2, gp, 195f
                  sll          gp, t2, a1
                  srli         t3, s1, 5
                  bgeu         s5, t1, 195f
195:              addi         a1, a0, 2042
                  auipc        a6, 435639
                  xor          a2, t5, s8
                  sra          a7, a7, tp
                  andi         s7, s0, -916
                  lw           ra, 4(s10)
                  ori          tp, t1, -900
                  auipc        t1, 243079
                  sra          a1, a6, s11
                  auipc        s3, 140033
                  addi         s10, s10, 44
                  add          t4, s0, s9
                  sll          t3, s0, s7
278:              addi x17, x1, 0
278:              jalr x17, x17, 0
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
mmode_intr_vector_1:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x24, x26, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_2:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x24, x26, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_3:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x24, x26, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_4:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x24, x26, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_5:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x24, x26, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_6:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x24, x26, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_7:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x24, x26, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_8:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x24, x26, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_9:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x24, x26, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_10:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x24, x26, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_11:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x24, x26, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_12:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x24, x26, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_13:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x24, x26, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_14:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x24, x26, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_15:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x24, x26, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

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
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x24, x26, zero
                  csrr x9, 0x341 # MEPC
                  csrr x9, 0x342 # MCAUSE
                  li x22, 0x3 # BREAKPOINT
                  beq x9, x22, ebreak_handler
                  li x22, 0x8 # ECALL_UMODE
                  beq x9, x22, ecall_handler
                  li x22, 0x9 # ECALL_SMODE
                  beq x9, x22, ecall_handler
                  li x22, 0xb # ECALL_MMODE
                  beq x9, x22, ecall_handler
                  li x22, 0x1
                  beq x9, x22, instr_fault_handler
                  li x22, 0x5
                  beq x9, x22, load_fault_handler
                  li x22, 0x7
                  beq x9, x22, store_fault_handler
                  li x22, 0xc
                  beq x9, x22, pt_fault_handler
                  li x22, 0xd
                  beq x9, x22, pt_fault_handler
                  li x22, 0xf
                  beq x9, x22, pt_fault_handler
                  li x22, 0x2 # ILLEGAL_INSTRUCTION
                  beq x9, x22, illegal_instr_handler
                  csrr x22, 0x343 # MTVAL
                  1: la x8, test_done
                  jalr x1, x8, 0

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
                  la x8, write_tohost
                  jalr x0, x8, 0

instr_fault_handler:
                  add x26, x24, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

load_fault_handler:
                  add x26, x24, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

store_fault_handler:
                  add x26, x24, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

ebreak_handler:   
                  csrr  x9, 0x341
                  addi  x9, x9, 4
                  csrw  0x341, x9
                  add x26, x24, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

illegal_instr_handler:
                  csrr  x9, 0x341
                  addi  x9, x9, 4
                  csrw  0x341, x9
                  add x26, x24, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x9, 0x300 # MSTATUS;
                  csrr  x9, 0x304 # MIE;
                  csrr  x9, 0x344 # MIP;
                  csrrc x9, 0x344, x9 # MIP;
                  add x26, x24, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
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
