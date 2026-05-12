.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x31, h0_start
jalr x0, x31, 0
h0_start:
                  li x23, 0x40000100
                  csrw 0x301, x23
kernel_sp:        
                  la x2, kernel_stack_end

trap_vec_init:    
                  la x23, mtvec_handler
                  ori x23, x23, 1
                  csrw 0x305, x23 # MTVEC

mepc_setup:       
                  la x23, init
                  csrw 0x341, x23

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x23, 0x1800
                  csrw 0x300, x23 # MSTATUS
                  mret
init:             
                  li x0, 0x4
                  li x1, 0x80000000
                  li x3, 0x2f20e8e2
                  li x4, 0x0
                  li x5, 0xfcacea4e
                  li x6, 0x0
                  li x7, 0xfa494c8d
                  li x8, 0xdd78ba7
                  li x9, 0x9
                  li x10, 0x32265223
                  li x11, 0xf06e9a23
                  li x12, 0x0
                  li x13, 0x80000000
                  li x14, 0x0
                  li x15, 0x0
                  li x16, 0xf203e437
                  li x17, 0x80000000
                  li x18, 0xf60632b1
                  li x19, 0x7b4966d6
                  li x20, 0x0
                  li x22, 0x0
                  li x23, 0xf429bebd
                  li x24, 0xc
                  li x25, 0x80000000
                  li x26, 0x80000000
                  li x27, 0x9326fb9c
                  li x28, 0x0
                  li x29, 0xf04f9c53
                  li x30, 0xff4331f7
                  li x31, 0x0
                  la x21, user_stack_end
main:             bltu         s11, t1, 10f
                  sltu         tp, t5, s7
                  sltu         t3, t0, t3
                  srli         a3, a1, 30
                  and          s1, s10, s9
                  la           tp, sub_1
                  add          s4, tp, t4
                  sll          ra, s11, s3
                  addi         tp, tp, -999
                  sltu         s7, s0, a1
                  or           gp, t6, a3
main_j1:          jalr         t1, tp, 1000 #jump main -> sub_1
                  ori          a3, s11, -1688
                  bge          s9, s0, 20f
                  or           tp, s9, a6
                  bge          t3, gp, 18f
                  ori          s2, s1, 1621
                  bgeu         a0, tp, 10f
                  slli         t2, s9, 13
10:               sra          zero, a4, a6
                  ori          s10, s4, 344
                  bne          t6, a3, 13f
13:               auipc        s3, 999242
                  bltu         a6, t0, 26f
                  ori          gp, s6, 1994
                  sltiu        s0, a1, -1486
                  sll          s9, a1, s1
18:               slt          s4, t0, s6
                  sll          s11, s11, s6
20:               and          s8, s5, s7
                  auipc        a4, 591586
                  lui          s7, 835894
                  or           a3, t5, s7
                  xor          s6, s8, ra
                  nop
26:               sub          s7, sp, s4
                  sltiu        a2, s9, -1772
                  sltu         ra, sp, t3
                  bge          s0, tp, 36f
                  or           tp, zero, t5
                  slt          t2, s8, s9
                  slti         s0, t3, -1933
                  srl          s8, gp, a2
                  nop
                  bltu         s9, a5, 52f
36:               sltu         t5, t2, zero
                  beq          s11, s3, 41f
                  srli         ra, s10, 4
                  lui          t1, 543619
                  bltu         a7, t5, 52f
41:               sll          zero, s11, s11
                  bge          t4, tp, 51f
                  srl          a1, s9, a3
                  add          s8, ra, a3
                  or           gp, sp, s5
                  blt          t6, a6, 52f
                  slti         t3, s11, -1370
                  addi         a4, zero, 10 #init loop 1 counter
                  nop
                  add          a7, gp, s10
                  and          s4, t2, a1
                  addi         a3, zero, 10 #init loop 1 limit
main_0_1_t:       xor          s10, s9, a6
                  addi         a4, a4, -6 #update loop 1 counter
                  sltiu        s0, s5, -1502
                  slt          s10, s0, s8
                  or           a5, s6, a0
                  nop
                  addi         t3, zero, -1 #init loop 0 counter
                  addi         t0, zero, 19 #init loop 0 limit
                  sll          s9, gp, a0
main_0_0_t:       and          s3, s2, t6
                  addi         t3, t3, 5 #update loop 0 counter
                  xori         tp, a3, -2027
                  srli         s4, a0, 21
                  blt          t3, t0, main_0_0_t #branch for loop 0
                  nop
                  sltu         a5, s10, gp
                  nop
                  slt          s6, s9, a1
                  srai         t4, s11, 1
                  bgeu         a4, a3, main_0_1_t #branch for loop 1
                  lui          s8, 448083
                  and          gp, a1, s9
                  addi         gp, s8, 1751
                  lui          s4, 101933
51:               bge          t0, tp, 52f
52:               andi         a4, t4, -1944
                  la x31, test_done
                  jalr x0, x31, 0
test_done:        
                  li gp, 1
                  ecall
sub_5:            xor          gp, t3, tp
                  addi         s5, s5, -32
                  sll          a4, s2, s0
                  sub          a3, gp, s7
                  sw           t1, 4(s5)
                  xor          s4, s6, s1
                  addi         s11, zero, -5 #init loop 0 counter
                  slti         a7, s7, -2044
                  andi         a3, tp, -453
                  sll          a3, s8, s6
                  xor          s10, a1, a7
                  slti         s1, t1, -1863
                  auipc        ra, 347734
                  sra          a7, s0, s5
                  addi         gp, zero, 5 #init loop 0 limit
                  sub          tp, t6, t2
sub_5_6_0_t:      addi         s1, a3, -1348
                  lui          t0, 1033306
                  sltu         s10, s7, tp
                  srl          t2, a2, a6
                  addi         s11, s11, 5 #update loop 0 counter
                  or           ra, zero, s3
                  beq          s11, gp, sub_5_6_0_t #branch for loop 0
                  and          a5, t0, s11
                  addi         a6, zero, 9 #init loop 0 counter
                  srl          t1, s0, gp
                  lui          s4, 941169
                  sltu         s10, s9, s11
                  nop
                  slt          s10, t4, s10
                  slli         s4, a1, 18
                  srl          a2, a6, a6
                  xori         a4, t6, 582
                  addi         s11, zero, 16 #init loop 0 limit
                  lui          s3, 82705
sub_5_3_0_t:      sub          s4, s11, t1
                  addi         a6, a6, 3 #update loop 0 counter
                  sltu         s8, a2, s9
                  blt          a6, s11, sub_5_3_0_t #branch for loop 0
                  nop
                  addi         a6, zero, 8 #init loop 1 counter
                  sltiu        zero, ra, -1972
                  add          a1, t3, t4
                  andi         s9, zero, -87
                  addi         gp, zero, 17 #init loop 1 limit
sub_5_7_1_t:      sltiu        a0, s0, -1843
                  addi         a6, a6, 9 #update loop 1 counter
                  addi         s6, zero, -2 #init loop 0 counter
                  addi         s1, gp, 801
                  srli         t0, a7, 28
                  sll          t5, t1, s3
                  ori          a0, s8, -1287
                  addi         s11, zero, 12 #init loop 0 limit
sub_5_7_0_t:      or           a0, a7, a0
                  nop
                  addi         s6, s6, 4 #update loop 0 counter
                  srai         a3, a0, 12
                  slt          s1, s0, s6
                  slli         t5, s0, 28
                  add          a1, t3, gp
                  auipc        zero, 633234
                  add          s8, t5, a2
                  or           a2, tp, s10
                  sltu         s3, t1, t6
                  blt          s6, s11, sub_5_7_0_t #branch for loop 0
                  bltu         a6, gp, sub_5_7_1_t #branch for loop 1
                  slli         s10, a2, 8
                  addi         t1, zero, 4 #init loop 1 counter
                  xori         a2, a4, -1196
                  andi         s9, s1, 1265
                  addi         s8, zero, 20 #init loop 1 limit
sub_5_0_1_t:      sltu         s4, s2, a5
                  addi         s9, a7, 1471
                  addi         t1, t1, 8 #update loop 1 counter
                  slt          tp, s8, t5
                  lui          s0, 962534
                  srl          s9, zero, a6
                  ori          zero, ra, 729
                  srai         t0, s11, 3
                  addi         s3, zero, -4 #init loop 0 counter
                  addi         t5, zero, 3 #init loop 0 limit
                  slti         s9, ra, 681
                  srli         s6, s3, 23
                  srl          t4, s1, t2
                  addi         s6, s7, 1144
sub_5_0_0_t:      or           s6, ra, s6
                  srl          s4, a5, t5
                  add          ra, a1, a1
                  srli         s6, s8, 29
                  addi         s3, s3, 7 #update loop 0 counter
                  nop
                  sub          t0, t3, s0
                  addi         s9, s3, 1226
                  slli         s11, a4, 16
                  bne          s3, t5, sub_5_0_0_t #branch for loop 0
                  add          t4, t1, a1
                  srai         s9, t4, 28
                  andi         s4, t2, 655
                  srl          s11, ra, s2
                  and          s9, a4, t4
                  bne          t1, s8, sub_5_0_1_t #branch for loop 1
                  xor          a5, s9, a1
                  addi         t4, zero, 9 #init loop 1 counter
                  and          tp, s9, t5
                  sltu         t2, a7, t6
                  sltu         s1, a0, t2
                  addi         a2, zero, 9 #init loop 1 limit
sub_5_13_1_t:     xor          t0, tp, t3
                  andi         a6, tp, 1050
                  addi         t4, t4, -7 #update loop 1 counter
                  sub          a7, t2, t2
                  srai         a4, s3, 20
                  sltu         a3, t6, s1
                  sub          t0, s10, s7
                  sra          s11, s2, t2
                  addi         s0, zero, -2 #init loop 0 counter
                  addi         s4, zero, -20 #init loop 0 limit
                  ori          s1, zero, 1513
                  andi         s8, a0, -112
                  srai         t2, gp, 18
                  ori          s3, a6, 617
sub_5_13_0_t:     ori          s3, s10, 1344
                  addi         s0, s0, -9 #update loop 0 counter
                  slli         s8, a1, 26
                  srai         t3, t0, 18
                  beq          s0, s4, sub_5_13_0_t #branch for loop 0
                  srai         a3, zero, 15
                  sra          t0, t5, s3
                  bgeu         t4, a2, sub_5_13_1_t #branch for loop 1
                  srai         s9, s0, 2
                  addi         s3, zero, 9 #init loop 0 counter
                  nop
                  sltu         a0, a5, s7
                  addi         s7, zero, 9 #init loop 0 limit
                  srli         a6, t5, 0
sub_5_9_0_t:      lui          s2, 807492
                  sltu         s4, s5, a2
                  slt          t4, a2, s10
                  addi         s3, s3, -8 #update loop 0 counter
                  srl          zero, s5, s10
                  slli         a4, s1, 17
                  xori         t4, s11, 343
                  andi         s4, s8, 173
                  bgeu         s3, s7, sub_5_9_0_t #branch for loop 0
                  nop
                  addi         s0, zero, 9 #init loop 1 counter
                  sltiu        s2, t5, 23
                  add          s1, t2, ra
                  slli         s7, s5, 6
                  addi         s11, zero, 14 #init loop 1 limit
                  slli         a6, ra, 16
                  sra          a4, s1, s10
sub_5_8_1_t:      slti         zero, s9, 1404
                  addi         t4, s0, 659
                  xor          t3, s5, t2
                  lui          gp, 773310
                  addi         s0, s0, 5 #update loop 1 counter
                  add          t1, a2, a7
                  lui          s10, 727542
                  addi         a7, zero, 0 #init loop 0 counter
                  srli         ra, s10, 0
                  srl          s1, a7, s8
                  addi         tp, zero, -14 #init loop 0 limit
                  sub          gp, a6, ra
                  srl          a5, s11, t6
                  xor          t0, t4, s10
                  sll          s7, a7, s3
sub_5_8_0_t:      add          a4, t1, a2
                  andi         zero, s4, 1700
                  and          t0, s8, a1
                  addi         a7, a7, -7 #update loop 0 counter
                  slt          a2, zero, t5
                  and          t5, a1, s2
                  and          t4, s8, s0
                  sll          a6, s4, zero
                  bge          a7, tp, sub_5_8_0_t #branch for loop 0
                  andi         a5, s7, 144
                  nop
                  beq          s0, s11, sub_5_8_1_t #branch for loop 1
                  nop
                  addi         a4, zero, 4 #init loop 0 counter
                  xor          ra, a7, a0
                  addi         s10, zero, 17 #init loop 0 limit
                  add          s7, a0, s5
                  add          a5, a6, t6
                  slt          t3, a5, sp
sub_5_5_0_t:      addi         tp, s7, -970
                  nop
                  addi         a4, a4, 10 #update loop 0 counter
                  sra          s4, gp, s1
                  srli         s6, s2, 15
                  blt          a4, s10, sub_5_5_0_t #branch for loop 0
                  slt          gp, a1, s10
                  addi         a2, zero, 9 #init loop 0 counter
                  or           s1, a0, s9
                  sll          t1, tp, tp
                  slti         s7, a4, 1754
                  lui          gp, 906406
                  lui          s7, 356749
                  addi         t0, zero, 9 #init loop 0 limit
                  auipc        s6, 454992
sub_5_10_0_t:     auipc        s9, 971772
                  sltiu        t4, a7, 1500
                  or           a1, t6, s8
                  auipc        s10, 148032
                  sltiu        a3, s5, 1079
                  addi         a2, a2, -8 #update loop 0 counter
                  bgeu         a2, t0, sub_5_10_0_t #branch for loop 0
                  sra          t2, zero, zero
                  addi         t5, zero, 6 #init loop 1 counter
                  auipc        a3, 105259
                  slt          t0, t4, a0
                  xor          a0, s9, ra
                  sra          a3, s9, a3
                  lui          a6, 481424
                  or           a0, s11, s8
                  addi         s11, zero, 16 #init loop 1 limit
                  sltu         a6, a2, s5
                  auipc        t4, 655793
sub_5_12_1_t:     lui          a5, 640040
                  sra          a4, zero, s0
                  addi         t5, t5, 7 #update loop 1 counter
                  ori          s7, s3, -2046
                  slt          a3, s3, t0
                  andi         t2, s4, 725
                  addi         a7, zero, 5 #init loop 0 counter
                  sltiu        s3, a4, -1954
                  sltiu        s6, zero, 1850
                  sltiu        s1, t4, 1845
                  addi         s0, zero, 9 #init loop 0 limit
                  addi         s3, a5, -139
                  add          gp, t4, zero
                  srli         gp, t5, 7
                  and          ra, s6, t3
sub_5_12_0_t:     slt          a1, s0, t0
                  srai         t4, s10, 24
                  ori          a1, t4, -306
                  addi         a7, a7, 1 #update loop 0 counter
                  sltu         s4, t2, zero
                  beq          a7, s0, sub_5_12_0_t #branch for loop 0
                  sll          t4, s11, ra
                  bltu         t5, s11, sub_5_12_1_t #branch for loop 1
                  nop
                  addi         a4, zero, 10 #init loop 1 counter
                  lui          t0, 981641
                  xori         a2, s0, 64
                  sltu         s7, s6, t2
                  add          a6, a1, a0
                  addi         a3, zero, 16 #init loop 1 limit
                  ori          a1, a1, -1453
                  nop
                  slti         t4, t5, 965
sub_5_14_1_t:     nop
                  addi         a4, a4, 6 #update loop 1 counter
                  addi         s1, zero, 6 #init loop 0 counter
                  slt          s10, s3, a1
                  addi         a7, zero, 5 #init loop 0 limit
                  slti         s0, gp, 644
                  or           s3, t1, t1
sub_5_14_0_t:     or           t1, s11, s2
                  ori          a1, s2, 577
                  add          a5, a6, s9
                  nop
                  addi         s1, s1, -3 #update loop 0 counter
                  add          t0, a2, t6
                  slti         t4, ra, 1459
                  bgeu         s1, a7, sub_5_14_0_t #branch for loop 0
                  srai         tp, ra, 31
                  xori         s9, a0, -978
                  slt          s7, s0, a4
                  andi         t4, a1, 318
                  sll          t3, s3, s2
                  andi         a0, s4, -1844
                  or           gp, t2, sp
                  xor          tp, s11, s11
                  sra          gp, s5, a0
                  bne          a4, a3, sub_5_14_1_t #branch for loop 1
                  sltu         s4, s5, a2
                  addi         t4, zero, -1 #init loop 0 counter
                  auipc        s10, 566538
                  addi         a3, zero, 12 #init loop 0 limit
                  nop
                  srai         ra, t3, 9
sub_5_15_0_t:     ori          t5, t1, -423
                  auipc        a2, 161364
                  addi         t4, t4, 10 #update loop 0 counter
                  sra          ra, a7, a6
                  srl          a7, s4, s10
                  add          s3, zero, s11
                  sltiu        t0, t2, -511
                  auipc        t3, 744126
                  andi         s10, gp, -949
                  ori          s7, s2, 1956
                  and          s8, t2, a3
                  slli         tp, s3, 29
                  auipc        s7, 42060
                  auipc        s8, 69460
                  blt          t4, a3, sub_5_15_0_t #branch for loop 0
                  andi         s6, t2, -789
                  addi         t3, zero, 5 #init loop 0 counter
                  and          t2, sp, sp
                  and          t0, zero, s10
                  sltiu        s1, zero, -1036
                  and          s1, a4, a4
                  sub          a6, gp, s11
                  sltu         s6, ra, a3
                  srai         s7, a7, 9
                  slli         zero, a4, 9
                  sll          s0, t0, s0
                  addi         t5, zero, -14 #init loop 0 limit
                  slli         s11, s9, 8
                  addi         t1, s10, 827
                  sll          ra, a3, t4
                  srl          t1, s9, sp
                  srai         s8, t0, 14
                  and          ra, s5, s9
                  sra          s7, sp, a0
sub_5_2_0_t:      sltu         a0, s10, s7
                  sll          a3, t1, tp
                  nop
                  addi         t3, t3, -5 #update loop 0 counter
                  nop
                  sltiu        ra, s1, -219
                  sltiu        tp, s5, -1738
                  slt          t1, t2, t2
                  and          t2, t0, s8
                  slti         t4, s5, 907
                  bge          t3, t5, sub_5_2_0_t #branch for loop 0
                  srli         s6, s0, 20
                  addi         s8, zero, 1 #init loop 1 counter
                  addi         a7, zero, -19 #init loop 1 limit
                  or           s11, s6, s11
                  sltu         s2, gp, t6
                  srl          s2, a6, t2
sub_5_4_1_t:      slti         s11, s0, 238
                  addi         s8, s8, -10 #update loop 1 counter
                  addi         a4, zero, 9 #init loop 0 counter
                  add          s9, s4, a1
                  srl          gp, s10, sp
                  lui          a0, 318025
                  sltiu        s2, s5, 1751
                  lui          s11, 574015
                  auipc        t4, 783480
                  srai         a3, sp, 9
                  sll          s4, s9, a2
                  addi         a5, zero, -1 #init loop 0 limit
                  xor          s7, s5, s3
                  ori          a6, s1, 269
                  xor          gp, s3, a6
                  srai         s11, s3, 25
                  add          s4, t0, a4
                  addi         s11, s3, 582
sub_5_4_0_t:      sltiu        zero, t5, 1181
                  addi         a4, a4, -5 #update loop 0 counter
                  nop
                  slt          s7, s11, t5
                  slli         s4, zero, 12
                  bge          a4, a5, sub_5_4_0_t #branch for loop 0
                  add          s2, a1, s8
                  xori         t1, s8, -1072
                  slti         s7, s11, 943
                  slt          a1, t2, zero
                  bne          s8, a7, sub_5_4_1_t #branch for loop 1
                  srli         s10, s3, 6
                  addi         t2, zero, -3 #init loop 1 counter
                  addi         tp, zero, 3 #init loop 1 limit
                  srli         t3, zero, 19
sub_5_16_1_t:     nop
                  slti         a4, s9, 323
                  add          a1, t4, s2
                  addi         t2, t2, 6 #update loop 1 counter
                  slli         t3, t6, 3
                  addi         t0, zero, 1 #init loop 0 counter
                  addi         gp, zero, 1 #init loop 0 limit
sub_5_16_0_t:     ori          a4, gp, -1996
                  addi         t0, t0, -7 #update loop 0 counter
                  auipc        a3, 638613
                  bge          t0, gp, sub_5_16_0_t #branch for loop 0
                  ori          s0, s2, 1323
                  ori          s9, t4, -1841
                  srai         s8, s6, 18
                  slt          s4, s2, t6
                  srli         s6, t2, 5
                  beq          t2, tp, sub_5_16_1_t #branch for loop 1
                  and          s0, s4, t0
                  addi         a3, zero, -3 #init loop 0 counter
                  srai         t3, s5, 16
                  or           a1, s11, s8
                  xori         a5, a7, -456
                  addi         t1, zero, 6 #init loop 0 limit
                  srli         s2, s9, 29
sub_5_1_0_t:      ori          s7, s1, -574
                  addi         a3, a3, 2 #update loop 0 counter
                  slli         a7, a3, 14
                  sll          a5, a1, s5
                  addi         t0, t6, -1520
                  srl          a2, s2, ra
                  addi         s3, tp, 54
                  sltiu        tp, s6, -81
                  ori          s4, t4, -486
                  bltu         a3, t1, sub_5_1_0_t #branch for loop 0
                  sll          s0, t6, s6
                  ori          s9, s11, -470
                  nop
                  sub          a3, s3, ra
                  sltu         t3, s6, s7
                  sll          s11, zero, s0
                  srli         tp, gp, 23
                  sra          a2, zero, a0
                  sltiu        s11, a7, -511
                  slt          ra, s1, a1
                  sltiu        a4, a0, 1299
                  srai         ra, a4, 14
                  sltiu        s4, s1, -813
                  and          t5, s8, s11
                  blt          gp, ra, 32f
                  blt          ra, t3, 30f
                  lui          s1, 189846
                  bltu         gp, tp, 19f
                  sub          t0, s11, a1
                  sltu         t5, s10, t4
19:               nop
                  beq          s5, a6, 31f
                  add          t5, tp, s11
                  srai         ra, ra, 29
                  bgeu         s7, a5, 41f
                  xor          s9, tp, s2
                  sub          gp, t5, t1
                  beq          s0, t4, 44f
                  sltu         tp, s8, t2
                  srai         t3, a2, 31
                  xori         s2, a0, -935
30:               lui          a3, 224066
31:               sltiu        t3, s11, -1707
32:               addi         s4, s7, 650
                  nop
                  beq          a0, s9, 37f
                  ori          s10, s6, 97
                  slli         t3, s11, 23
37:               slti         s11, a3, -310
                  xori         s9, sp, -621
                  slt          a5, a6, t5
                  beq          t0, s8, 50f
41:               addi         t0, s8, 818
                  nop
                  bge          t2, t3, 47f
44:               andi         s11, s11, 2012
                  sltiu        a5, t6, 310
                  bltu         a0, t5, 65f
47:               slti         t2, s5, 741
                  beq          t5, t2, 51f
                  xor          a0, a0, a1
50:               sub          t1, a4, sp
51:               bne          a4, s4, 60f
                  slli         a3, s10, 13
                  slti         t4, s10, -41
                  slt          ra, s9, tp
                  xori         t1, s7, 40
                  add          a2, t3, s0
                  bltu         s0, a1, 70f
                  or           t1, t3, a3
                  sub          s1, s7, a3
60:               add          s8, s1, t1
                  bltu         s8, a7, 64f
                  sub          a5, zero, s9
                  add          a0, s3, gp
64:               addi         gp, t6, -1014
65:               ori          a0, zero, 1922
                  add          a5, a6, s7
                  sra          a7, a7, t3
                  bne          a0, a4, 82f
                  bgeu         s10, s3, 89f
70:               ori          t5, s8, 411
                  or           a2, s0, s5
                  sltiu        s11, a3, -298
                  srai         a4, t5, 17
                  xori         a6, s10, -326
                  nop
                  slli         a3, a4, 6
                  slti         a7, s0, -1865
                  sub          a6, s9, a2
                  and          s3, a0, t6
                  slt          s2, a7, t3
                  lui          a5, 301027
82:               slli         tp, t4, 1
                  lui          s9, 777064
                  sra          tp, a1, t2
                  add          s9, s8, zero
                  bne          a7, t4, 91f
                  srli         a1, sp, 30
                  srl          s1, s9, a5
89:               and          tp, zero, t5
                  blt          a0, tp, 95f
91:               bne          gp, s5, 96f
                  sll          s2, s8, s11
                  sltu         ra, s2, s1
                  or           s2, s0, s11
95:               addi         s10, t4, -507
96:               bltu         s6, s3, 100f
                  and          s2, t5, s11
                  sub          s9, s6, tp
                  bge          a3, a1, 100f
100:              andi         s11, a0, 150
                  srli         t2, a2, 6
                  srai         t2, t2, 20
                  add          t5, s5, a1
                  and          s8, a0, t3
                  sltiu        a4, s2, -49
                  sub          s11, s7, t0
                  nop
                  bne          s4, a4, 119f
                  srli         t5, a5, 24
                  blt          a1, a6, 112f
                  slti         s10, a1, 833
112:              bge          zero, s0, 121f
                  srai         s6, t4, 18
                  slli         s9, t4, 4
                  slt          t0, s9, a7
                  sltiu        t0, s0, -716
                  sltiu        t0, s5, 1790
                  auipc        gp, 763329
119:              srai         s6, t6, 20
                  or           a5, tp, s11
                  addi         s1, zero, -6 #init loop 0 counter
                  lui          a3, 831039
                  srli         s3, s6, 3
                  sll          s0, a3, s0
                  sll          t0, s10, a7
                  addi         tp, zero, -13 #init loop 0 limit
                  slt          s9, t1, a3
                  lui          s0, 900765
                  sra          s6, s11, s4
                  sra          a3, t6, s8
                  xor          a3, a2, s9
                  sll          s7, a3, zero
                  xori         t2, a3, -1871
                  lui          a1, 750933
                  xori         s4, s10, 1746
                  xori         s6, a2, 518
sub_5_18_0_t:     xor          s8, t0, s3
                  slli         a3, t0, 21
                  ori          a3, s2, 909
                  lui          s7, 299693
                  slli         t2, s9, 20
                  add          a0, s0, t3
                  auipc        zero, 83081
                  addi         s1, s1, -7 #update loop 0 counter
                  srl          a5, tp, s9
                  lui          a3, 94935
                  or           a6, s0, t1
                  bne          s1, tp, sub_5_18_0_t #branch for loop 0
                  slti         gp, s10, -76
121:              bge          t1, t2, 124f
                  add          s4, t5, a2
                  sll          a2, t5, t0
124:              lui          s0, 760840
                  sltu         a0, gp, s4
                  or           a6, s10, s6
                  nop
                  xor          t1, a3, a4
                  bne          a4, a6, 148f
                  auipc        t4, 658975
                  andi         a7, s8, -1438
                  nop
                  srl          a2, s11, a7
                  slt          t4, s2, t5
                  srli         a2, s8, 27
                  bgeu         a1, t4, 147f
                  sra          s3, s11, a4
                  or           s3, s9, s2
                  sll          tp, t5, a1
                  xori         s8, t4, -731
                  sub          a5, a6, s7
                  bne          s2, s1, 160f
                  auipc        a6, 969577
                  blt          tp, t0, 161f
                  and          zero, a5, a1
                  add          a5, t0, s8
147:              bltu         s4, t6, 165f
148:              srl          t5, t1, sp
                  auipc        a3, 260807
                  auipc        a1, 674126
                  auipc        a2, 27807
                  auipc        s4, 441785
                  slt          s11, a7, t2
                  and          s4, t1, a1
                  bne          s11, t0, 159f
                  addi         s4, s4, -1598
                  srai         a0, s4, 28
                  addi         a1, a2, 1055
159:              ori          t1, a2, 1908
160:              srl          s9, s11, s11
161:              sll          s11, a6, s1
                  bne          t4, s2, 176f
                  slli         s0, zero, 20
                  xori         s8, s10, 881
165:              add          a5, s11, s5
                  blt          a3, s1, 175f
                  srli         s10, a1, 5
                  lui          s2, 229450
                  xor          s0, s0, a7
                  srl          s2, a7, s4
                  andi         t1, t1, 1209
                  xor          s11, a4, a2
                  srai         s7, t6, 16
                  addi         a2, t1, 208
175:              sll          t3, a4, zero
176:              beq          t5, t2, 195f
                  srai         s4, t1, 27
                  xori         a4, s3, -1173
                  sltiu        s6, gp, 1632
                  add          a2, ra, t1
                  slti         t3, a1, 112
                  xori         gp, s5, 809
                  srli         s4, a6, 27
                  xori         s10, s11, -1928
                  lui          s9, 628858
                  bgeu         s1, s3, 190f
                  slli         a7, tp, 14
                  sra          s9, s4, s8
                  blt          s9, s7, 209f
190:              blt          tp, a5, 208f
                  sra          a6, s10, s8
                  bgeu         t5, s1, 197f
                  nop
                  srai         a0, t0, 25
195:              sra          ra, s0, s2
                  srai         a1, t0, 0
197:              beq          zero, s0, 216f
                  slt          zero, a7, s5
                  andi         a2, ra, 1164
                  add          s6, t3, s5
                  slli         s11, t0, 16
                  and          s1, a7, a0
                  andi         ra, a1, 528
                  addi         s8, a7, -893
                  andi         a4, zero, -133
                  sra          a2, t0, t5
                  srl          t5, s5, s7
208:              bltu         s6, s10, 226f
209:              blt          s6, s6, 211f
                  addi         s7, a4, -1757
211:              addi         zero, s0, 1743
                  blt          sp, s8, 215f
                  and          t0, s1, t2
                  add          ra, s11, sp
215:              beq          s8, s8, 226f
216:              ori          t1, a4, 510
                  auipc        a3, 931050
                  slti         t3, s0, 1339
                  blt          t1, a5, 228f
                  bltu         s1, sp, 230f
                  srl          t5, s1, s7
                  sltiu        s6, tp, -1936
                  add          a1, t5, tp
                  andi         t1, a7, -527
                  auipc        s1, 469584
226:              srai         s11, t3, 0
                  add          t1, s5, s8
228:              addi         t2, s3, 1527
                  srl          zero, a4, t3
230:              slt          a5, s5, s10
                  auipc        a4, 347188
                  srai         t2, s1, 21
                  bltu         s5, a0, 251f
                  sltiu        t3, a0, 1355
                  sltiu        a6, t1, 1270
                  xori         a4, a6, 128
                  and          s4, a7, a7
                  bltu         a7, t2, 251f
                  bltu         s0, t2, 242f
                  bgeu         a6, a1, 258f
                  nop
242:              xori         s9, tp, 783
                  bltu         zero, s10, 246f
                  sltiu        s3, t2, -557
                  beq          s6, s11, 256f
246:              sltu         s2, s7, s7
                  add          t3, t1, s2
                  ori          a6, s4, -1188
                  slt          s8, s3, ra
                  bgeu         ra, a7, 266f
251:              and          s4, a0, t4
                  and          a5, s5, s0
                  or           s6, t4, s4
                  bge          t2, s8, 259f
                  sra          a0, t1, a6
256:              bne          a7, a5, 275f
                  slti         s11, a4, -1558
258:              srai         t5, s5, 3
259:              slt          a4, zero, t5
                  or           s2, s5, a4
                  blt          a1, s8, 262f
262:              ori          s7, s6, 551
                  sra          s2, a4, t5
                  sll          s6, s3, s2
                  ori          ra, a7, 542
266:              andi         s9, a1, -1077
                  bge          s7, s4, 270f
                  blt          t5, s5, 271f
                  srl          t3, t5, a2
270:              lui          t5, 795812
271:              auipc        a5, 379441
                  sltiu        a5, s0, 219
                  xori         a4, s8, -304
                  slti         a7, gp, 1398
275:              slli         a6, s4, 6
                  bge          a0, s0, 287f
                  sub          t5, s4, s10
                  srai         a3, gp, 14
                  srli         s8, s2, 30
                  bgeu         ra, s10, 297f
                  and          t5, a0, s10
                  sra          s6, t4, sp
                  auipc        a0, 760945
                  sltu         s7, t5, zero
                  sltiu        s7, a2, -957
                  bne          s11, s9, 291f
287:              bltu         t1, a2, 290f
                  bge          t3, s2, 302f
                  lui          s3, 847301
290:              bltu         sp, t0, 308f
291:              slti         gp, s11, 777
                  slli         s11, zero, 11
                  srl          s9, t5, a4
                  andi         ra, a3, -273
                  beq          ra, s7, 299f
                  xori         tp, t3, 1416
297:              lui          s10, 112491
                  lui          a0, 941315
299:              lui          s1, 803604
                  bltu         t6, s0, 303f
                  slli         a6, s9, 20
302:              sub          t3, a3, gp
303:              blt          s10, s6, 308f
                  srl          s9, a4, a5
                  srl          t4, s0, gp
                  bge          s3, s4, 324f
                  srl          a5, s1, t6
308:              andi         s1, a5, 1747
                  beq          s0, t6, 318f
                  xori         s11, a2, 1994
                  bgeu         t3, gp, 324f
                  or           s2, sp, t3
                  sll          s3, gp, a7
                  auipc        s2, 738533
                  add          t4, s3, s2
                  sltu         t1, s4, s0
                  lui          a2, 912973
318:              bge          s7, t1, 320f
                  and          s0, ra, t3
320:              lui          s9, 959885
                  slt          a0, a7, a6
                  bgeu         a2, t3, 332f
                  ori          t2, a2, -514
324:              sub          ra, t1, s1
                  sltiu        s8, s7, -887
                  blt          a5, s1, 327f
327:              andi         s2, s3, -383
                  bgeu         t2, t4, 344f
                  ori          a0, s2, -508
                  or           s6, s6, ra
                  sra          t3, s10, s4
332:              beq          tp, s1, 336f
                  sub          t0, s3, s8
                  nop
                  blt          s6, s9, 354f
336:              bne          t5, s10, 341f
                  bge          s9, zero, 348f
                  srai         s8, gp, 13
                  slti         a0, t6, -1924
                  sltu         s0, s6, a1
341:              sra          gp, sp, s4
                  and          a2, t0, a0
                  slli         a1, t4, 22
344:              sll          t1, t5, t6
                  addi         t5, zero, 1623
                  sra          s8, t0, s1
                  beq          s4, s4, 358f
348:              slt          s11, a0, zero
                  bltu         a5, t3, 369f
                  blt          s2, s4, 369f
                  bltu         s10, sp, 354f
                  addi         a5, s11, -972
                  slti         a6, t3, -121
354:              slt          ra, t4, a1
                  sub          a6, a0, a7
                  add          a1, s7, t3
                  sub          t5, a5, t6
358:              and          t1, s5, s5
                  bgeu         zero, s8, 378f
                  addi         s9, s11, -2019
                  beq          s8, a5, 364f
                  srai         s3, s11, 22
                  srai         tp, t6, 7
364:              srli         a6, a6, 1
                  xor          a1, zero, a1
                  addi         t2, zero, 2 #init loop 0 counter
                  xor          s11, sp, tp
                  sltu         a1, tp, s10
                  addi         s6, zero, 1 #init loop 0 limit
                  add          ra, t2, t4
                  and          s8, a6, s11
sub_5_17_0_t:     addi         zero, a3, 1455
                  xori         a4, a6, -1399
                  xor          t4, a5, s7
                  nop
                  srl          s9, t2, s8
                  srli         a4, s3, 30
                  nop
                  slti         t1, gp, 600
                  nop
                  addi         t2, t2, -4 #update loop 0 counter
                  andi         s7, t2, 1929
                  sll          s7, s10, s1
                  and          a6, t5, s6
                  nop
                  or           zero, s6, t6
                  sltiu        a2, t6, -1938
                  lui          t3, 622783
                  sltiu        a3, s4, 1737
                  bge          t2, s6, sub_5_17_0_t #branch for loop 0
                  xor          a0, a1, s9
                  xor          t2, s9, a2
                  slli         a6, a3, 27
                  nop
369:              srl          s11, a2, s2
                  lui          s10, 515321
                  xori         s3, a1, -1872
                  or           s0, gp, t6
                  sltiu        t1, s6, 703
                  auipc        t0, 174370
                  bne          t5, s9, 386f
                  sra          a2, gp, t5
                  srli         s8, a5, 0
378:              sltu         s3, a0, t0
                  bne          gp, a1, 396f
                  bne          zero, t5, 398f
                  ori          t0, t6, 1251
                  srli         t4, s5, 0
                  ori          s11, s9, -482
                  or           s10, s5, a2
                  sub          t0, s10, a6
386:              slli         gp, s10, 31
                  ori          gp, a4, -1314
                  addi         t1, s8, 1004
                  xori         a1, s4, 721
                  slti         t3, s5, 1414
                  lui          s10, 87586
                  and          s1, t0, a0
                  slt          a4, tp, a3
                  beq          s7, t3, 403f
                  slt          s4, s1, s1
396:              srl          s4, s5, a7
                  auipc        a6, 712387
398:              andi         s8, a5, -491
                  and          s4, ra, t5
                  bltu         s1, s10, 405f
                  srli         zero, sp, 23
                  ori          a3, t4, 776
403:              slti         t5, s9, 1220
                  blt          a5, s2, 422f
405:              bge          zero, s4, 408f
                  srl          s3, a6, tp
                  sltiu        t4, t2, -505
408:              xori         t2, s7, 809
                  sra          t3, t3, s2
                  sra          a2, sp, s3
                  auipc        t3, 1038556
                  xor          t2, s1, t5
                  slt          s3, s1, s6
                  and          t4, s11, a2
                  add          a0, s0, t2
                  andi         zero, s2, -1072
                  bge          a3, t1, 422f
                  auipc        a6, 740354
                  slli         a5, sp, 13
                  slli         s11, a3, 14
                  auipc        s3, 288510
422:              xori         s3, s5, 1607
                  srl          zero, s8, s0
                  sll          t1, t3, t0
                  bltu         t6, s8, 428f
                  srai         t4, t1, 26
                  beq          s5, t0, 432f
428:              blt          s7, s11, 446f
                  slli         s6, tp, 30
                  slli         a1, a1, 31
                  srl          t5, tp, a5
432:              add          gp, a5, s6
                  addi         s9, a1, -1373
                  and          a7, sp, zero
                  sltiu        t4, t3, -1662
                  andi         t3, s4, 225
                  bltu         t5, t1, 448f
                  auipc        tp, 187622
                  bne          t2, tp, 459f
                  ori          s11, t2, -1487
                  addi         s0, t3, -678
                  or           gp, s9, a2
                  lui          zero, 456370
                  srl          a6, t6, s10
                  xori         t5, ra, 1706
446:              sub          a6, t2, t5
                  blt          ra, s5, 457f
448:              addi         t0, s11, -579
                  slti         zero, t5, 104
                  or           a5, a3, a2
                  sltiu        a0, a1, 361
                  sra          a1, a5, s4
                  andi         t4, t6, 1731
                  xori         s1, s2, -1507
                  slt          s11, a1, s5
                  lui          gp, 292864
457:              srl          a3, a7, a5
                  beq          s11, t4, 475f
459:              slt          a3, t0, t2
                  beq          s9, s9, 478f
                  sll          t4, s8, a7
                  srli         a5, a7, 30
                  andi         zero, gp, -812
                  bne          s10, a2, 468f
                  sra          gp, a3, s4
                  blt          a3, a7, 480f
                  ori          s1, s11, -759
468:              sra          s4, t6, s3
                  nop
                  lui          s7, 657274
                  bne          s2, s2, 490f
                  ori          ra, s0, 541
                  and          s7, s4, s0
                  auipc        t4, 1039344
475:              sra          s0, s6, s8
                  sll          s4, t6, sp
                  bgeu         a7, ra, 480f
478:              srai         s2, t5, 17
                  and          a2, s8, s7
480:              addi         t2, tp, -1033
                  bltu         s4, sp, 486f
                  blt          s5, s11, 495f
                  srai         a3, a2, 29
                  sra          a0, t1, a2
                  auipc        t5, 262712
486:              andi         s4, t4, 704
                  add          a7, s11, sp
                  srai         a7, s4, 23
                  sll          s11, s3, s7
490:              srl          a1, a3, a5
                  srai         s11, t5, 14
                  srli         tp, a4, 28
                  slti         a4, zero, 1098
                  bgeu         a4, t4, 497f
495:              slt          ra, a7, t3
                  lui          a3, 1037165
497:              and          s6, a0, s6
                  add          a0, t0, a3
                  or           t5, s10, t2
                  auipc        t5, 807409
                  bne          s4, a7, 505f
                  ori          t5, gp, -1414
                  lui          a7, 555200
                  ori          a5, s7, 909
505:              sltiu        s8, a7, 650
                  beq          ra, a7, 515f
                  blt          s8, sp, 508f
508:              add          a3, s10, t2
                  bge          s11, t1, 525f
                  sltiu        t3, a0, -822
                  srl          t5, s4, a5
                  sltu         a5, a6, s1
                  nop
                  xor          zero, ra, s2
515:              lui          a2, 768886
                  nop
                  srai         t4, ra, 23
                  add          a1, tp, t2
                  srai         a7, t3, 2
                  slli         t0, ra, 13
                  srai         s0, a3, 11
                  blt          a0, s10, 541f
                  sltu         t0, s5, s8
                  sltu         s4, s6, a6
525:              sra          a2, a4, gp
                  bne          t6, s0, 535f
                  auipc        ra, 666548
                  xori         a5, s1, 976
                  srai         s3, a3, 8
                  add          s4, s3, a6
                  bltu         s2, sp, 533f
                  sub          s6, a6, a3
533:              sll          a4, a1, t1
                  sltu         a5, ra, a6
535:              ori          zero, s7, 398
                  or           s2, s8, s7
                  srai         a0, s6, 24
                  sltu         t5, t4, a0
                  andi         a6, ra, 1889
                  xori         a7, a3, -1924
541:              lui          s0, 577777
                  srai         a1, t5, 0
                  ori          t0, t2, 1412
                  srli         zero, t1, 28
                  xor          gp, gp, s4
                  or           a2, s7, t5
                  bge          t0, t6, 550f
                  bltu         t6, t0, 566f
                  and          a5, s1, t5
550:              beq          t4, s5, 569f
                  bge          s9, a3, 562f
                  bge          gp, a4, 563f
                  addi         t4, s1, -725
                  nop
                  add          gp, a2, s6
                  bgeu         t2, s3, 559f
                  xori         s9, t4, 1495
                  slli         t3, a3, 6
559:              and          a0, a2, a5
                  sltiu        s4, a4, -696
                  ori          ra, s0, 1716
562:              xor          a2, s11, t3
563:              srl          a4, gp, a6
                  blt          a3, t6, 582f
                  bne          s11, t3, 568f
566:              slti         s10, s1, -1796
                  sll          a1, t6, a6
568:              xor          s11, a3, ra
569:              nop
                  beq          a1, s8, 571f
571:              auipc        s9, 519583
                  andi         a7, s7, 1188
                  slt          gp, a1, zero
                  sub          a2, s0, tp
                  lui          a4, 864278
                  bgeu         s0, zero, 595f
                  bge          a2, a7, 595f
                  nop
                  blt          t2, a3, 595f
                  sra          s11, s11, a2
                  sltu         s11, t4, s7
582:              slti         s10, sp, -1621
                  sltu         a0, s4, t4
                  slti         gp, t0, -794
                  auipc        t4, 878573
                  srl          zero, s1, s8
                  sub          s9, ra, tp
                  nop
                  sll          tp, s7, zero
                  ori          s0, a2, -1533
                  bltu         s6, s8, 604f
                  slti         zero, s11, -424
                  bne          a5, s1, 597f
                  bne          s9, t0, 605f
595:              bge          t1, s5, 615f
                  bne          a3, t1, 599f
597:              sll          a6, s11, a4
                  nop
599:              nop
                  sra          zero, s6, t5
                  slti         s11, t1, -629
                  bgeu         s5, ra, 611f
                  bge          a6, s2, 621f
604:              bne          s0, a2, 622f
605:              xor          a5, a7, gp
                  sra          a3, s8, t1
                  slti         t4, s9, 1772
                  slt          s4, s3, a0
                  addi         s11, s6, -457
                  slt          a3, a5, tp
611:              ori          t0, a6, -1735
                  addi         s6, zero, 819
                  srai         zero, t6, 31
                  add          zero, t5, a4
615:              bne          t6, t3, 617f
                  sltu         t3, t1, t2
617:              bne          s5, zero, 635f
                  beq          a3, a0, 623f
                  add          zero, t2, sp
                  nop
621:              bltu         t3, ra, 632f
622:              slti         s1, a4, -1731
623:              slt          s4, a6, t2
                  or           a0, s11, t6
                  sltu         t4, t1, a6
                  bgeu         s7, s3, 637f
                  xor          a5, tp, s8
                  srli         gp, t1, 4
                  nop
                  beq          t5, s7, 649f
                  beq          s10, t4, 641f
632:              beq          s8, s5, 635f
                  bge          a7, a5, 636f
                  beq          s8, a2, 639f
635:              addi         tp, t4, 1141
636:              auipc        s10, 88651
637:              or           s9, zero, a5
                  sltu         a5, sp, t1
639:              srli         a0, t0, 28
                  and          a3, zero, t0
641:              andi         a7, s10, 394
                  slt          s6, s5, s10
                  add          a7, s10, s8
                  slti         a2, s10, -188
                  lui          a0, 894035
                  sra          tp, a6, t0
                  sltiu        t1, s2, -1170
                  and          s1, s0, s9
649:              addi         tp, t0, 608
                  bltu         t2, a7, 659f
                  nop
                  sub          a2, t0, s11
                  slli         s1, t2, 11
                  slli         a2, s6, 12
                  blt          t0, s3, 672f
                  auipc        tp, 62500
                  srli         t1, s2, 12
                  srli         gp, t2, 26
659:              bltu         a1, a5, 673f
                  ori          s4, a2, -1245
                  ori          s11, a1, 528
                  addi         ra, t6, 1491
                  ori          s8, t6, -1267
                  bge          gp, sp, 667f
                  sub          a1, a1, s5
                  bge          t0, a7, 685f
667:              andi         s6, a5, -416
                  srli         t3, s9, 5
                  lui          t2, 205385
                  bltu         t2, s4, 675f
                  slti         s6, s6, 611
672:              sltu         s6, s5, gp
673:              slt          t5, ra, s3
                  slli         a0, s8, 4
675:              slti         t2, s4, -1620
                  sltu         s7, gp, t2
                  sltu         t5, a2, s10
                  lui          a2, 447644
                  sltiu        s3, s6, 2046
                  bltu         a7, s10, 684f
                  addi         a5, s6, 2019
                  slt          s10, a4, s11
                  or           a2, s1, sp
684:              slti         t0, t0, 366
685:              and          s9, t4, s3
                  xori         s2, t1, 764
                  ori          s10, s2, -1936
                  sltu         a6, a2, s0
                  slli         s1, s4, 6
                  xor          a0, a1, zero
                  lui          s10, 468651
                  bltu         s1, a1, 710f
                  sll          t0, zero, s5
                  slt          t3, s3, ra
                  sll          a5, t0, t1
                  andi         s6, tp, -1580
                  bge          t4, s1, 716f
                  sltiu        a1, s5, 1459
                  srai         s9, a4, 26
                  sltu         tp, sp, t3
                  sub          t3, s1, t4
                  slti         a0, a7, 1453
                  auipc        s6, 474841
                  lui          a6, 182699
                  nop
                  bge          s10, ra, 717f
                  nop
                  srli         a4, s3, 10
                  auipc        s8, 51909
710:              sra          zero, a2, s7
                  sll          s4, t2, t5
                  addi         t2, a4, -978
                  xori         a2, s1, 129
                  slli         s0, ra, 1
                  auipc        a7, 790963
716:              srl          t5, s2, s5
717:              xori         s10, ra, -1921
                  nop
                  and          a0, a7, a1
                  nop
                  sub          a2, s7, a6
                  or           gp, s7, t5
                  and          a1, a2, s0
                  sltu         s7, a6, s7
                  nop
                  and          s4, a2, s3
                  bne          gp, a6, 732f
                  bgeu         a4, a5, 748f
                  ori          tp, a0, 104
                  bge          t6, a6, 740f
                  sltu         s7, s7, s2
732:              blt          t3, sp, 735f
                  bne          s6, t2, 752f
                  sra          a2, s4, t1
735:              sra          s3, t4, s0
                  xor          s4, s6, a6
                  and          a4, tp, a4
                  addi         ra, s5, -790
                  addi         t4, s5, -1261
740:              lui          gp, 1015403
                  blt          a4, a5, 752f
                  srai         a7, s7, 6
                  srli         s10, a4, 19
                  sub          a4, s4, zero
                  ori          s11, t0, -169
                  addi         a6, s6, -943
                  sltu         s11, s6, a0
748:              ori          s10, t0, 842
                  xor          t3, zero, t0
                  beq          s11, t6, 761f
                  srli         s3, s6, 29
752:              bgeu         t3, s11, 761f
                  bltu         a5, a2, 757f
                  addi         t2, a3, 436
                  ori          tp, s0, 108
                  blt          t6, ra, 774f
757:              bgeu         t2, s2, 770f
                  beq          a7, t0, 763f
                  slt          a6, s2, s11
                  slli         a1, zero, 21
761:              ori          t2, zero, 1091
                  bgeu         s5, t5, 767f
763:              bltu         tp, a3, 764f
764:              slli         s4, s4, 11
                  srl          tp, s3, a1
                  andi         zero, t4, 1507
767:              addi         s11, t4, -472
                  addi         s8, a7, -1466
                  ori          ra, s2, 531
770:              srai         s11, s3, 27
                  and          s6, a7, a6
                  bltu         s2, s4, 788f
                  blt          t6, t4, 792f
774:              xor          t0, ra, a7
                  sub          gp, a3, gp
                  ori          s4, s1, -1450
                  bne          gp, s5, 781f
                  srl          t1, s9, ra
                  srai         t3, sp, 2
                  sub          a4, s0, t4
781:              bgeu         s7, s5, 784f
                  addi         t1, s4, -836
                  bgeu         s7, t1, 801f
784:              slt          tp, s9, s10
                  andi         a5, s1, 1448
                  bge          t0, a5, 800f
                  auipc        t0, 187901
788:              slt          s3, s3, a4
                  bltu         ra, t4, 792f
                  slti         a4, s11, 1811
                  sra          s4, s9, t4
792:              sub          s6, a7, s11
                  srai         s9, t4, 21
                  bltu         a1, a0, 803f
                  sll          t5, sp, a1
                  bgeu         s3, zero, 798f
                  andi         a0, zero, 729
798:              lui          t5, 54827
                  srli         s11, s11, 9
800:              addi         a2, t6, -418
801:              sltiu        s7, ra, 318
                  bne          a2, sp, 805f
803:              slli         a2, a7, 24
                  blt          t5, s7, 807f
805:              bne          tp, a1, 823f
                  andi         a3, a1, 1867
807:              beq          t3, a6, 824f
                  andi         s1, a7, 89
                  lui          a2, 1048337
                  and          s7, t5, s1
                  sltiu        t5, a5, 958
                  slt          t0, a0, t5
                  sub          a5, s10, s6
                  beq          s2, a7, 819f
                  andi         s6, s8, 1630
                  auipc        t4, 942726
                  srai         zero, s5, 9
                  and          gp, s2, t3
819:              srl          s9, s11, tp
                  srl          t3, a5, t6
                  srl          t0, t6, zero
                  and          t5, s3, s9
823:              add          s8, a1, ra
824:              slti         a1, s8, 1160
                  andi         tp, t4, 1580
                  slti         t5, s2, 873
                  slti         a2, sp, -62
                  sra          s9, s2, a1
                  xor          s1, s0, s8
                  bltu         sp, a2, 849f
                  blt          s6, s10, 834f
                  sltu         t2, s7, s2
                  beq          a6, sp, 842f
834:              bgeu         t5, a3, 845f
                  and          s9, s6, a6
                  add          t1, s1, t4
                  blt          s4, t0, 838f
838:              and          s6, t4, zero
                  slti         a2, a0, -1055
                  bge          sp, t5, 858f
                  srl          t2, zero, t2
842:              sll          t3, a6, gp
                  beq          tp, tp, 848f
                  slti         s11, s1, 1399
845:              sra          ra, s2, t3
                  sltiu        a2, a1, -954
                  srli         t2, s4, 1
848:              bgeu         tp, s5, 868f
849:              srl          t1, s6, s0
                  or           s4, s0, s0
                  xori         a7, tp, -310
                  and          a1, gp, t6
                  srl          a1, s0, t4
                  slti         t1, t5, -1981
                  or           t1, s3, a4
                  add          a7, tp, s2
                  nop
858:              blt          s11, gp, 876f
                  lui          s11, 524769
                  bltu         s5, s1, 863f
                  sltiu        tp, s1, -256
                  lui          zero, 89626
863:              auipc        s8, 691137
                  beq          t4, s7, 869f
                  addi         s10, sp, -1910
                  and          t4, s7, s0
                  ori          a0, t3, -1655
868:              sltiu        a6, a7, -386
869:              andi         s11, s8, -1995
                  srl          s2, a1, ra
                  slt          s2, t5, s6
                  sub          a3, s2, ra
                  xori         s11, zero, 22
                  bge          t0, ra, 891f
                  srli         a2, tp, 0
876:              srli         a1, a4, 20
                  or           t4, a2, s3
                  beq          t2, s4, 892f
                  bne          s0, a7, 890f
                  and          a6, s11, t2
                  srl          t4, s9, t6
                  addi         t2, a5, -1042
                  sra          s7, t6, a4
                  sltu         t4, a3, tp
                  bgeu         ra, ra, 904f
                  xori         s8, s10, 693
                  addi         gp, t3, 1204
                  bltu         s11, t0, 892f
                  xori         zero, s9, 717
890:              sll          a4, a1, a7
891:              bltu         t2, tp, 894f
892:              sltu         s3, t6, a4
                  auipc        s11, 263068
894:              lui          a4, 859171
                  beq          s1, s4, 908f
                  bge          a2, a4, 900f
                  addi         s9, zero, 8 #init loop 0 counter
                  srl          t1, s6, ra
                  add          s10, t6, s0
                  sub          s8, s11, tp
                  or           a1, tp, s6
                  or           a1, t0, ra
                  add          s4, s0, gp
                  xori         s11, a4, -942
                  sll          ra, s10, t1
                  sltu         s7, t0, t0
                  addi         t1, t5, -133
                  nop
                  addi         s0, zero, 7 #init loop 0 limit
                  xor          s6, t4, s1
                  srl          s4, tp, zero
                  sll          s6, zero, s10
sub_5_11_0_t:     xor          s4, s2, a7
                  addi         s9, s9, -5 #update loop 0 counter
                  slli         a5, t0, 0
                  andi         t1, a3, -1980
                  sra          s8, s8, t0
                  sltiu        t5, t0, 523
                  slti         s2, a7, 342
                  srl          t1, t2, ra
                  srli         a5, s9, 15
                  addi         t2, t4, -1017
                  or           a7, a0, sp
                  bgeu         s9, s0, sub_5_11_0_t #branch for loop 0
                  sltiu        a1, s5, -1347
                  sub          s6, t0, t4
                  sltiu        a4, sp, -722
                  and          s0, t4, t2
900:              srl          zero, a1, a6
                  lui          tp, 664273
                  bgeu         s0, a7, 920f
                  sra          s8, a3, s9
904:              sra          s4, a0, s3
                  sra          t2, s6, t6
                  sltiu        s10, s3, -848
                  sra          s10, t1, a0
908:              nop
                  srl          ra, a6, a3
                  srli         a4, s5, 29
                  bge          a1, a4, 927f
                  bltu         s3, t0, 915f
                  nop
                  xori         s9, s2, -1130
915:              slt          t1, a7, s3
                  sltu         s0, tp, a2
                  srl          a2, s5, s6
                  xor          a2, a4, t6
                  srli         t3, sp, 29
920:              bgeu         t5, t6, 930f
                  srli         a6, t3, 4
                  bltu         s0, t0, 933f
                  slti         a3, s4, -1791
                  or           zero, a2, s5
                  lui          gp, 215460
                  xori         t4, a1, -1188
927:              sub          t2, tp, s3
                  bne          s0, tp, 930f
                  slti         s1, a5, -1736
930:              andi         s2, s5, 1714
                  sltu         s3, s4, ra
                  srl          s8, a2, a1
933:              addi         s0, a7, 1027
                  bne          a7, a7, 943f
                  or           tp, s5, s9
                  auipc        a3, 167677
                  add          a7, s1, s9
                  sub          t0, t4, s11
                  srl          t3, s2, a5
                  sra          t5, sp, zero
                  add          s4, t4, a5
                  or           s7, a6, a2
943:              nop
                  nop
                  bgeu         s9, s1, 950f
                  or           a6, s6, ra
                  lui          s2, 919883
                  ori          s11, a1, 1431
                  xor          a0, gp, t0
950:              add          s4, tp, t1
                  lw           t1, 4(s5)
                  addi         s5, s5, 32
                  sltiu        gp, sp, 1696
                  srl          zero, t5, a1
                  or           s10, a2, t2
1442:             addi x5, x6, 0
1442:             jalr x5, x5, 0
sub_1:            srli         s9, s6, 18
                  slti         t5, a2, 826
                  addi         s5, s5, -52
                  slti         tp, a6, 1960
                  and          s6, s0, s0
                  sw           t1, 4(s5)
                  sra          a3, s5, s7
                  srli         zero, a7, 4
                  sub          s4, s9, t1
                  nop
                  sra          ra, s1, s6
                  sra          a1, s6, gp
                  sll          a5, s8, s10
                  bltu         a0, a7, sub_1_j2 #branch to jump instr
                  slt          zero, s7, s1
                  nop
sub_1_j2:         jal          t1, sub_5 #jump sub_1 -> sub_5
                  srli         t4, t0, 9
                  nop
                  nop
                  nop
                  andi         s4, a5, -1241
sub_1_j3:         jal          t1, sub_2 #jump sub_1 -> sub_2
                  srl          s7, t6, a7
                  la           a1, sub_3
                  srl          s11, zero, s9
                  addi         a5, a3, 252
                  addi         a1, a1, -682
                  slt          gp, gp, a3
                  addi         s1, t4, 1216
                  nop
                  srl          t2, a0, a4
                  sra          s6, gp, a2
sub_1_j4:         jalr         t1, a1, 683 #jump sub_1 -> sub_3
                  srai         t1, s5, 13
                  sub          tp, s6, a0
                  auipc        s7, 456804
                  xori         t4, a6, 1656
                  srli         t1, t3, 24
                  auipc        a1, 292113
                  nop
sub_1_j5:         jal          t1, sub_4 #jump sub_1 -> sub_4
                  addi         s8, zero, -5 #init loop 0 counter
                  xori         s3, a2, -1033
                  slli         s6, s4, 0
                  addi         a5, t1, 1343
                  slli         tp, s7, 18
                  srli         s9, t0, 10
                  ori          a4, a4, 788
                  andi         s9, s6, -484
                  srl          s9, zero, a0
                  addi         a2, zero, 4 #init loop 0 limit
                  auipc        t5, 290944
                  ori          a3, ra, 786
sub_1_1_0_t:      lui          t0, 1015385
                  sub          t2, t3, a4
                  or           s3, t5, gp
                  sub          a3, t5, t4
                  srai         a7, s3, 26
                  sll          gp, s7, s1
                  add          gp, t3, a7
                  ori          t0, a3, -1015
                  addi         a4, t4, -147
                  srli         a3, a6, 7
                  addi         a6, sp, -2015
                  addi         s8, s8, 4 #update loop 0 counter
                  or           t0, s5, s6
                  sltu         a4, s8, t0
                  srli         s11, s2, 7
                  bltu         s8, a2, sub_1_1_0_t #branch for loop 0
                  sll          gp, t0, s1
                  addi         a7, zero, -10 #init loop 0 counter
                  slt          a4, s8, a0
                  and          s4, s8, t3
                  addi         s0, zero, 14 #init loop 0 limit
sub_1_0_0_t:      lui          tp, 35227
                  addi         a7, a7, 6 #update loop 0 counter
                  bne          a7, s0, sub_1_0_0_t #branch for loop 0
                  add          s4, s10, a1
                  addi         t4, a6, -161
                  sltu         s2, gp, t1
                  sll          t0, s5, zero
                  auipc        s7, 34495
                  auipc        s6, 578878
                  add          a5, ra, t5
                  or           s10, s6, s7
                  bge          t3, s11, 25f
                  slti         a3, s0, -77
                  and          a7, s3, sp
                  andi         s11, sp, -1716
                  bne          s4, s10, 24f
                  bgeu         tp, a5, 14f
                  add          s6, a7, a7
14:               ori          t0, a4, -1310
                  xori         s11, gp, 198
                  andi         a7, s8, 1984
                  bge          zero, s8, 19f
                  ori          s4, t0, -1390
19:               sltiu        a5, gp, 1917
                  or           a4, s10, s3
                  sra          a3, s0, s8
                  sltiu        t2, s1, 389
                  sub          ra, a0, s11
24:               sltiu        s9, a4, 1364
25:               blt          a0, a3, 40f
                  srai         s6, s7, 25
                  sltiu        a1, s9, 140
                  bgeu         s10, s11, 44f
                  bne          a7, s2, 41f
                  add          a7, s1, tp
                  sra          s3, t3, s0
                  bne          a3, a6, 42f
                  sltiu        zero, t5, 1682
                  bltu         a7, t3, 45f
                  srl          t5, t6, s1
                  ori          tp, a2, 1885
                  sltiu        s11, t5, 1568
                  add          s9, a3, zero
                  ori          t1, ra, -407
40:               bne          gp, s7, 55f
41:               nop
42:               xori         s6, s0, 777
                  bltu         t2, s8, 46f
44:               ori          a3, sp, -220
45:               and          s7, s11, t5
46:               add          t4, s4, t1
                  nop
                  bge          tp, s10, 49f
49:               bgeu         s7, s2, 62f
                  srai         t1, sp, 27
                  beq          s3, s7, 53f
                  slli         s11, s2, 5
53:               bge          t3, t3, 68f
                  lui          a6, 725696
55:               andi         zero, t1, 8
                  or           a3, s4, t5
                  addi         zero, t1, -1760
                  srl          s9, s11, t0
                  slt          gp, a1, a0
                  bge          s10, a1, 73f
                  xor          s2, s3, zero
62:               auipc        a6, 923003
                  bne          s3, t2, 82f
                  srli         a0, a2, 0
                  beq          a4, t0, 81f
                  sll          s4, s6, t2
                  lui          a0, 339247
68:               slti         s7, s0, 36
                  beq          a6, sp, 71f
                  addi         tp, t3, 939
71:               srli         s2, a5, 1
                  bge          t3, t0, 86f
73:               bgeu         s3, s6, 92f
                  nop
                  andi         gp, s10, -1695
                  xori         s10, tp, 1153
                  blt          a6, t2, 79f
                  bge          a4, t3, 79f
79:               srl          s0, a5, t3
                  sra          t0, t5, ra
81:               slt          s8, t0, s11
82:               slli         a5, a7, 5
                  xor          s3, s5, s0
                  lui          gp, 424077
                  or           s9, a7, s4
86:               srl          t4, s9, s3
                  bge          s1, a6, 95f
                  bgeu         a7, a3, 92f
                  slli         s11, s7, 2
                  add          a5, t3, t3
                  sltu         gp, a2, gp
92:               srl          a0, s10, t2
                  addi         t3, t1, -1840
                  bgeu         s5, s9, 108f
95:               bne          a2, a6, 115f
                  sltu         s6, t2, t1
                  sub          s2, a5, s4
                  bgeu         a6, s7, 105f
                  blt          s9, s11, 115f
                  slli         t0, s11, 31
                  sltu         a5, a3, a4
                  lui          s10, 367946
                  beq          a4, s10, 116f
                  beq          t3, t5, 106f
105:              xori         a4, a7, -1589
106:              slti         s0, a0, -1913
                  add          a0, t5, s8
108:              andi         s4, zero, 1468
                  andi         gp, s4, -861
                  add          a6, s3, t6
                  sll          t4, t4, s11
                  beq          s7, a1, 123f
                  srl          s0, a2, a2
                  sltu         s11, s7, sp
115:              sll          t3, s7, a6
116:              sra          a6, zero, a6
                  srl          a2, a7, gp
                  srai         t2, s5, 5
                  lui          t0, 58731
                  xor          a6, a2, t4
                  sltu         s1, sp, t2
                  auipc        a7, 776486
123:              sub          s6, s7, s3
                  srli         a5, s2, 8
                  lw           t1, 4(s5)
                  or           s11, a2, s10
                  or           s1, s10, a1
                  andi         a2, t2, -199
                  sll          t0, s1, s3
                  addi         s5, s5, 52
                  and          gp, s8, t5
                  and          a0, sp, s3
                  sltu         s3, s0, gp
                  add          s7, t2, t1
214:              addi x1, x6, 0
214:              jalr x1, x1, 0
sub_4:            addi         s5, s5, -52
                  sw           t1, 4(s5)
                  nop
                  lui          t3, 108196
                  lui          s10, 733694
                  addi         s6, zero, 10 #init loop 1 counter
                  srai         a7, s7, 17
                  nop
                  addi         s10, zero, 10 #init loop 1 limit
                  addi         s3, gp, -709
                  auipc        s3, 344978
sub_4_0_1_t:      sub          s1, sp, s11
                  auipc        a2, 708424
                  addi         s6, s6, -6 #update loop 1 counter
                  add          a5, t6, s5
                  addi         s11, zero, -6 #init loop 0 counter
                  srl          a3, s0, t6
                  andi         s3, s1, -64
                  sll          a6, s10, t3
                  slti         s8, s4, 1740
                  andi         a4, t5, 837
                  andi         a0, a2, 843
                  slli         a1, a4, 18
                  andi         s3, a6, 315
                  and          t2, t3, s3
                  addi         t3, zero, -11 #init loop 0 limit
sub_4_0_0_t:      slti         s4, s10, 392
                  srl          a6, s5, s4
                  srl          a6, s8, t0
                  addi         s11, s11, -6 #update loop 0 counter
                  and          s7, t1, t5
                  andi         s4, s9, 336
                  bge          s11, t3, sub_4_0_0_t #branch for loop 0
                  sltiu        t4, s8, -1323
                  bgeu         s6, s10, sub_4_0_1_t #branch for loop 1
                  and          ra, s10, t2
                  nop
                  addi         s4, s0, -393
                  sll          tp, a7, s5
                  andi         s4, a4, 1600
                  sra          t4, a7, t6
                  xor          s8, s10, s2
                  srai         s0, s9, 27
                  add          s7, s10, s11
                  srli         a5, a5, 14
                  srl          a0, zero, t4
                  addi         t0, s10, -1789
                  beq          s5, tp, 29f
                  and          s8, tp, gp
                  slti         s11, s7, 1437
                  bne          s3, s2, 27f
                  sll          a4, s11, a7
                  srai         s2, a7, 30
                  sll          s6, t2, s8
                  slli         zero, t5, 12
                  bltu         t0, s9, 26f
                  sra          a6, s7, a1
                  beq          s9, t2, 23f
                  lui          a3, 575832
23:               xori         s9, s5, 975
                  bne          s8, s4, 27f
                  bltu         gp, t3, 26f
26:               bge          a0, a2, 36f
27:               lui          a2, 867176
                  add          a1, s5, zero
29:               or           a6, s9, s11
                  sltiu        s1, s8, -1407
                  and          s10, t6, t4
                  auipc        ra, 983085
                  sltu         a6, s3, a1
                  auipc        t4, 384777
                  sra          t3, a5, a5
36:               sub          s6, s1, sp
                  sra          s9, s3, t0
                  and          a7, s8, s3
                  auipc        t1, 672440
                  bltu         zero, s2, 46f
                  lui          t5, 177901
                  nop
                  or           s7, a1, s2
                  andi         s9, s9, -523
                  slt          s8, s1, a5
46:               andi         a0, a4, 1659
                  beq          a5, t0, 50f
                  beq          s2, s10, 54f
                  blt          ra, s4, 69f
50:               addi         s4, t1, -1425
                  srl          t3, gp, t0
                  xor          a4, s0, t4
                  sltiu        s1, s5, 174
54:               add          s0, s4, s10
                  sll          tp, s4, a0
                  slli         s3, s0, 2
                  sltiu        s3, s9, -1501
                  sra          t0, a6, s11
                  srli         s1, s7, 28
                  ori          t0, a1, 55
                  sltiu        a3, s6, -1648
                  slli         ra, a6, 15
                  xori         s0, ra, 1011
                  or           t2, t1, t4
                  and          s2, s9, a6
                  bge          zero, s7, 72f
                  addi         s4, t5, -1365
                  xor          t1, t5, a4
69:               bge          t1, t0, 72f
                  sltiu        s4, a3, -380
                  addi         s4, a4, -96
72:               and          s3, s11, s2
                  srli         s4, t5, 2
                  slti         s8, t1, -1293
                  lw           t1, 4(s5)
                  lui          t0, 159524
                  auipc        a3, 148720
                  sub          t2, s10, t6
                  and          a1, t2, s5
                  addi         s5, s5, 52
                  slli         s9, t2, 24
                  srai         s2, zero, 0
                  nop
                  sltiu        s3, s10, 673
121:              addi x1, x6, 0
121:              jalr x1, x1, 0
sub_2:            bgeu         a2, s1, sub_2_stack_p
                  xor          s1, s11, t6
sub_2_stack_p:    addi         s5, s5, -36
                  add          s8, s4, s11
                  sw           t1, 4(s5)
                  and          s2, t3, t0
                  sll          t4, t4, s7
                  auipc        s8, 47055
                  add          tp, s4, t0
                  addi         a4, zero, 10 #init loop 1 counter
                  srli         s3, a1, 30
                  srli         gp, t1, 24
                  srl          a7, zero, t0
                  addi         t2, zero, 10 #init loop 1 limit
                  sra          a7, a0, s6
sub_2_11_1_t:     slti         s3, s1, 1630
                  sll          zero, s10, a0
                  addi         a4, a4, -8 #update loop 1 counter
                  or           s11, s3, s11
                  addi         t3, zero, -10 #init loop 0 counter
                  andi         s2, s3, 1256
                  addi         s6, zero, -18 #init loop 0 limit
                  sltu         s7, a4, t1
sub_2_11_0_t:     xori         s10, s1, -393
                  sltu         s9, a0, a0
                  addi         t3, t3, -1 #update loop 0 counter
                  srai         t0, tp, 19
                  bge          t3, s6, sub_2_11_0_t #branch for loop 0
                  sll          a5, s0, t5
                  auipc        s10, 514916
                  srl          a7, s3, a3
                  nop
                  bgeu         a4, t2, sub_2_11_1_t #branch for loop 1
                  slti         s2, t3, 2036
                  addi         s0, zero, 10 #init loop 1 counter
                  srai         a2, t4, 27
                  sra          a3, a7, a5
                  sub          s10, a5, s9
                  sltiu        zero, s2, -404
                  srli         s10, s7, 10
                  srli         s2, s7, 7
                  srli         s3, t2, 9
                  addi         t2, zero, 14 #init loop 1 limit
                  sltu         s2, s8, a3
                  auipc        s1, 431258
                  sra          t3, a0, a5
sub_2_8_1_t:      lui          s7, 764525
                  andi         a1, a1, -1062
                  xor          s6, s7, a3
                  addi         s0, s0, 8 #update loop 1 counter
                  addi         s4, zero, -1 #init loop 0 counter
                  sltiu        s11, a3, 528
                  xori         s7, tp, 1601
                  addi         gp, zero, -7 #init loop 0 limit
                  sub          t5, s4, s8
                  add          a6, t6, t3
sub_2_8_0_t:      sltiu        zero, ra, 862
                  slt          a4, s5, s8
                  sltiu        s11, s1, -1537
                  addi         s4, s4, -6 #update loop 0 counter
                  add          a0, a2, ra
                  beq          s4, gp, sub_2_8_0_t #branch for loop 0
                  xori         s8, s10, 493
                  sltu         t0, s11, a2
                  blt          s0, t2, sub_2_8_1_t #branch for loop 1
                  srl          a4, tp, s8
                  addi         a3, zero, 7 #init loop 1 counter
                  addi         s0, zero, 15 #init loop 1 limit
sub_2_9_1_t:      add          zero, s0, t5
                  addi         a3, a3, 4 #update loop 1 counter
                  add          t4, s11, a2
                  addi         s6, zero, 6 #init loop 0 counter
                  srli         a7, s10, 11
                  sra          s10, a6, tp
                  srai         a6, zero, 28
                  addi         a1, zero, -1 #init loop 0 limit
sub_2_9_0_t:      xori         a7, ra, 362
                  addi         s6, s6, -10 #update loop 0 counter
                  bge          s6, a1, sub_2_9_0_t #branch for loop 0
                  beq          a3, s0, sub_2_9_1_t #branch for loop 1
                  srli         t4, s8, 9
                  addi         s7, zero, -3 #init loop 1 counter
                  slt          a4, t5, t2
                  addi         s8, zero, -17 #init loop 1 limit
sub_2_13_1_t:     or           a2, s6, a1
                  addi         s7, s7, -3 #update loop 1 counter
                  srl          a2, s6, t0
                  addi         tp, zero, -5 #init loop 0 counter
                  addi         t2, zero, 4 #init loop 0 limit
                  or           a5, a5, t0
sub_2_13_0_t:     auipc        t0, 490647
                  addi         tp, tp, 2 #update loop 0 counter
                  slti         s0, t6, -720
                  blt          tp, t2, sub_2_13_0_t #branch for loop 0
                  bge          s7, s8, sub_2_13_1_t #branch for loop 1
                  or           s1, s10, a0
                  addi         s6, zero, 7 #init loop 1 counter
                  sltu         s4, t5, zero
                  addi         t0, zero, -17 #init loop 1 limit
                  sub          tp, s4, s3
                  add          a6, s0, t6
                  sltiu        a6, s8, 44
                  addi         a1, a7, -834
                  srl          s11, t5, s4
sub_2_3_1_t:      andi         s4, t0, 928
                  addi         s6, s6, -2 #update loop 1 counter
                  slt          tp, s4, a1
                  srli         t2, t0, 19
                  srli         a4, t4, 12
                  addi         t3, zero, 6 #init loop 0 counter
                  sub          s2, t6, a6
                  add          a4, a4, s10
                  addi         s0, t3, 867
                  addi         a3, zero, 5 #init loop 0 limit
                  slli         gp, s2, 7
sub_2_3_0_t:      addi         ra, t5, -366
                  slti         zero, gp, 1955
                  slli         gp, a2, 9
                  addi         t3, t3, -4 #update loop 0 counter
                  bgeu         t3, a3, sub_2_3_0_t #branch for loop 0
                  slt          zero, a5, t0
                  sltu         t4, zero, tp
                  beq          s6, t0, sub_2_3_1_t #branch for loop 1
                  and          a1, a7, gp
                  addi         t2, zero, -3 #init loop 1 counter
                  slli         a5, a0, 18
                  addi         s1, zero, 6 #init loop 1 limit
                  sll          s4, sp, t3
sub_2_5_1_t:      xori         tp, ra, 836
                  sra          s6, a4, t3
                  addi         t2, t2, 9 #update loop 1 counter
                  nop
                  sltiu        a3, t5, -1218
                  slt          a3, s11, a0
                  addi         t4, zero, 6 #init loop 0 counter
                  addi         s11, a4, 118
                  addi         a4, zero, -19 #init loop 0 limit
                  lui          t1, 98683
sub_2_5_0_t:      sub          gp, s5, a7
                  addi         t4, t4, -6 #update loop 0 counter
                  addi         s2, a2, -810
                  bge          t4, a4, sub_2_5_0_t #branch for loop 0
                  beq          t2, s1, sub_2_5_1_t #branch for loop 1
                  srli         a0, a2, 10
                  addi         a2, zero, 10 #init loop 1 counter
                  addi         t3, zero, -17 #init loop 1 limit
sub_2_2_1_t:      nop
                  addi         a2, a2, -8 #update loop 1 counter
                  nop
                  addi         s2, zero, 9 #init loop 0 counter
                  add          ra, s3, tp
                  addi         t1, zero, 19 #init loop 0 limit
                  auipc        s4, 36520
sub_2_2_0_t:      xor          s10, a0, t1
                  addi         s2, s2, 3 #update loop 0 counter
                  bltu         s2, t1, sub_2_2_0_t #branch for loop 0
                  bge          a2, t3, sub_2_2_1_t #branch for loop 1
                  sltu         s11, a1, s1
                  addi         t1, zero, 7 #init loop 1 counter
                  slti         a6, s5, 1709
                  auipc        t0, 975708
                  srli         a4, a2, 11
                  auipc        t5, 791064
                  addi         gp, zero, 15 #init loop 1 limit
                  and          s6, tp, ra
sub_2_6_1_t:      ori          t2, t1, 1612
                  addi         t1, t1, 8 #update loop 1 counter
                  or           a4, zero, s10
                  slti         t0, a6, 1743
                  addi         s0, zero, 10 #init loop 0 counter
                  xori         a2, s0, -1862
                  addi         a1, s3, -1910
                  addi         a0, zero, 10 #init loop 0 limit
                  srai         ra, s3, 7
                  slli         s11, s3, 20
                  auipc        s4, 313395
sub_2_6_0_t:      slt          a3, s8, s11
                  sltiu        a6, t3, 1975
                  addi         s0, s0, -9 #update loop 0 counter
                  slt          t4, a6, s7
                  bgeu         s0, a0, sub_2_6_0_t #branch for loop 0
                  or           ra, a3, a5
                  beq          t1, gp, sub_2_6_1_t #branch for loop 1
                  sub          a7, s6, s9
                  addi         a5, zero, 8 #init loop 1 counter
                  addi         s11, zero, -6 #init loop 1 limit
                  slt          zero, t6, s6
sub_2_4_1_t:      add          a1, s10, a2
                  srl          t4, s11, t2
                  addi         a5, a5, -7 #update loop 1 counter
                  xori         t5, s10, 389
                  addi         s3, zero, -8 #init loop 0 counter
                  srli         a6, a3, 5
                  addi         a7, zero, -17 #init loop 0 limit
                  sll          s8, t5, sp
sub_2_4_0_t:      ori          s0, a1, 636
                  addi         s3, s3, -5 #update loop 0 counter
                  bge          s3, a7, sub_2_4_0_t #branch for loop 0
                  bne          a5, s11, sub_2_4_1_t #branch for loop 1
                  slt          s1, t1, a2
                  or           s6, t3, t0
                  slli         gp, tp, 24
                  nop
                  addi         tp, t0, 886
                  xor          s6, tp, t4
                  or           a4, s7, s4
                  srl          zero, t1, s2
                  addi         s4, zero, 3 #init loop 1 counter
                  addi         s0, zero, 8 #init loop 1 limit
                  slti         a3, t1, -1581
sub_2_12_1_t:     sltiu        a2, t5, -301
                  addi         s4, s4, 8 #update loop 1 counter
                  addi         s11, zero, -10 #init loop 0 counter
                  sll          t2, zero, a2
                  addi         s9, zero, -11 #init loop 0 limit
sub_2_12_0_t:     sltiu        s8, gp, 1409
                  auipc        s8, 1041284
                  addi         s11, s11, -6 #update loop 0 counter
                  nop
                  bge          s11, s9, sub_2_12_0_t #branch for loop 0
                  sltiu        t2, s6, 232
                  bltu         s4, s0, sub_2_12_1_t #branch for loop 1
                  sltiu        zero, t4, 1546
                  xor          t1, s11, a6
                  auipc        a3, 588713
                  lui          s9, 948799
                  srai         s10, t6, 14
                  slt          s3, s8, sp
                  srli         t4, a0, 3
                  auipc        s1, 471750
                  sll          a3, s3, t4
                  srl          a4, s0, s4
                  bne          s10, a4, 28f
                  xor          s0, a0, s1
                  auipc        s10, 512536
                  andi         a5, s9, 468
                  slti         a3, s11, 170
                  and          t1, zero, gp
                  lui          s9, 353577
                  xori         a0, s11, 533
                  blt          ra, a0, 39f
                  bltu         gp, s4, 43f
                  andi         s10, s7, 150
                  blt          t0, a7, 42f
28:               sltiu        s0, t3, 1891
                  ori          a7, t6, -1781
                  lui          a1, 763372
                  slt          s10, s6, t2
                  xori         a1, s7, -997
                  and          s1, a5, s3
                  bge          t5, s0, 37f
                  slt          a0, a6, s5
                  sltu         zero, t5, t4
37:               srai         t5, a2, 2
                  sll          tp, s11, t4
39:               auipc        t1, 583403
                  srl          a7, t3, s2
                  xor          t2, ra, ra
42:               srai         a0, t0, 7
43:               sltiu        gp, sp, 1349
                  sub          a4, t6, sp
                  xori         gp, t3, -1614
                  add          s7, a1, zero
                  slti         t3, s10, 1145
                  add          a5, t3, s6
                  sltu         t2, t3, s10
                  xor          s10, a2, t3
                  addi         t0, s7, 409
                  andi         s2, a7, 882
                  xori         s11, s0, 1940
                  or           t1, s11, ra
                  slti         t4, a7, -1862
                  slli         s10, s7, 0
                  xor          t4, s1, s5
                  srl          a6, s10, a5
                  addi         t0, s6, 1095
                  slli         s3, t3, 18
                  or           s1, sp, s11
                  xori         t2, s1, -699
                  srai         s4, zero, 25
                  and          t1, a0, zero
                  bgeu         t3, s0, 84f
                  addi         a5, t6, 1738
                  ori          s3, s8, -1146
                  blt          s8, a3, 81f
                  blt          t5, zero, 78f
                  nop
                  bne          t6, s9, 72f
72:               blt          t5, tp, 83f
                  xori         a4, s2, 1833
                  or           a6, t0, a2
                  srl          s11, s7, t5
                  sra          s11, a1, s1
                  bge          s11, t3, 81f
78:               ori          s1, s2, -84
                  bgeu         s2, a4, 83f
                  andi         t1, s0, -1189
81:               ori          t4, s0, -1888
                  srai         s2, s8, 23
83:               slli         gp, t3, 13
84:               slt          t5, s10, a0
                  slti         s6, sp, 1989
                  nop
                  xori         s10, s11, -1543
                  sll          t4, s9, a4
                  beq          a5, s9, 91f
                  andi         s4, a5, 1130
91:               sra          a0, a0, s8
                  sll          a5, a4, gp
                  bltu         a1, a6, 95f
                  sltiu        s6, s5, 45
95:               srl          a2, s10, ra
                  slt          a5, zero, t6
                  ori          t4, s3, 942
                  beq          t1, s10, 117f
                  bge          zero, gp, 116f
                  beq          s5, s2, 118f
                  srl          a6, zero, s4
                  addi         a0, zero, 9 #init loop 1 counter
                  addi         s7, zero, 7 #init loop 1 limit
sub_2_1_1_t:      slt          s8, a7, s4
                  addi         a0, a0, -1 #update loop 1 counter
                  addi         a3, zero, -4 #init loop 0 counter
                  addi         s6, zero, -6 #init loop 0 limit
sub_2_1_0_t:      auipc        t2, 349230
                  addi         a3, a3, -3 #update loop 0 counter
                  bge          a3, s6, sub_2_1_0_t #branch for loop 0
                  bgeu         a0, s7, sub_2_1_1_t #branch for loop 1
                  slli         s8, s9, 15
                  bltu         s11, sp, 115f
                  bltu         a7, t4, 111f
                  bge          t0, s1, 107f
                  blt          s6, gp, 108f
                  sltiu        a1, s5, 782
107:              bge          t0, s10, 123f
108:              ori          s1, t0, -1380
                  srl          t0, s3, s0
                  bge          s6, a0, 128f
111:              srl          a1, s7, a0
                  or           s8, s2, a7
                  ori          t1, t2, -1188
                  auipc        s4, 129482
115:              sub          zero, s8, s1
116:              or           s9, a0, t0
117:              bge          a4, s11, 130f
118:              srai         s8, s7, 31
                  add          gp, s5, a4
                  sra          a7, zero, ra
                  sra          s3, sp, tp
                  or           a5, t2, s11
123:              slli         t4, t3, 22
                  srli         s6, a3, 15
                  addi         a3, s5, 485
                  srli         gp, t2, 19
                  auipc        s3, 494477
128:              lui          tp, 435806
                  or           tp, t1, a0
130:              slli         tp, s10, 4
                  bgeu         s3, ra, 147f
                  auipc        s1, 866404
                  or           s11, s3, s2
                  slt          s11, s1, sp
                  bgeu         zero, zero, 147f
                  slti         t1, s7, 1667
                  addi         a7, a3, -1290
                  lui          a7, 297418
                  bltu         t6, a5, 144f
                  sra          s10, t6, a7
                  slli         t4, sp, 11
                  or           t2, s11, s2
                  andi         tp, t0, -105
144:              auipc        s7, 58029
                  sub          s4, t3, s11
                  or           t1, s0, a2
147:              andi         s9, sp, 121
                  beq          s6, tp, 150f
                  bne          s8, tp, 160f
150:              andi         a1, a3, 1958
                  or           s8, t4, zero
                  slt          a4, s7, s7
                  slt          a3, a3, zero
                  bge          s3, s7, 165f
                  bltu         s11, s8, 168f
                  beq          s0, t2, 159f
                  blt          s1, s3, 169f
                  sll          s11, a7, s6
159:              ori          a6, s7, -826
160:              auipc        s4, 970628
                  xori         a0, ra, -1507
                  bltu         tp, gp, 180f
                  xor          a1, a0, s2
                  bltu         t0, s2, 176f
165:              srli         t2, s4, 14
                  and          s6, s2, t5
                  add          t3, s11, s11
168:              xor          zero, t1, t3
169:              nop
                  sltiu        s3, a7, -1679
                  lui          s6, 966364
                  srai         s0, s3, 31
                  ori          a0, ra, -1167
                  sub          zero, a6, sp
                  sll          a3, a1, a4
176:              srai         s7, t6, 1
                  sra          t1, s2, t4
                  sll          t3, t1, s8
                  sra          a3, a2, t2
180:              sltiu        t4, sp, -1104
                  bge          t1, ra, 182f
182:              auipc        s4, 347898
                  xor          a5, a2, t6
                  ori          s8, s2, -1919
                  auipc        a5, 176952
                  srai         s8, t2, 6
                  sra          s9, a7, sp
                  srli         s0, a5, 21
                  sltiu        s4, a7, 586
                  sltiu        s10, ra, -599
                  or           a5, s3, tp
                  nop
                  andi         gp, a3, 1689
                  xor          a0, gp, ra
                  sll          gp, gp, s8
                  sub          s1, a2, s4
                  nop
                  and          s8, a4, t1
                  nop
                  bne          sp, a0, 204f
                  srai         zero, sp, 17
                  addi         s8, t1, -567
                  and          a6, s8, t4
204:              auipc        a7, 1015686
                  nop
                  bne          tp, s8, 221f
                  sra          a0, t1, s1
                  bne          t4, a6, 225f
                  slt          a6, ra, s1
                  beq          a7, s9, 219f
                  srl          a5, t1, t3
                  andi         gp, tp, -1154
                  slli         s9, s11, 19
                  srai         a0, a0, 28
                  sll          a5, t6, a3
                  andi         a6, a4, 1808
                  ori          gp, s1, -1614
                  auipc        a4, 741701
219:              bltu         a0, s0, 234f
                  lui          s3, 248829
221:              sra          s0, t6, ra
                  srl          s11, a3, a4
                  bltu         t1, ra, 225f
                  sll          a4, s6, s4
225:              xori         s7, sp, 136
                  bge          sp, s6, 231f
                  bne          s3, sp, 229f
                  blt          t5, a5, 239f
229:              slt          a2, a4, s9
                  srl          a7, s4, t2
231:              andi         ra, zero, -50
                  nop
                  srl          t1, a6, t3
234:              blt          t5, s4, 252f
                  add          ra, s3, a0
                  sll          a5, a5, t5
                  add          a6, a5, t1
                  sltu         s0, s7, s3
239:              addi         s0, s9, 1191
                  ori          s3, t1, 318
                  beq          s5, t4, 257f
                  andi         s4, a5, -790
                  and          a7, gp, ra
                  add          ra, tp, s9
                  sll          a2, a6, a5
                  sll          s8, tp, a2
                  addi         a1, s3, -758
                  slli         gp, s2, 23
                  bltu         s11, a6, 267f
                  addi         a6, s2, 1130
                  sll          gp, sp, a0
252:              ori          a4, tp, -995
                  sltiu        s10, a0, 664
                  srl          s7, zero, a3
                  nop
                  lui          a6, 262869
257:              andi         s1, a1, 1344
                  beq          a4, a6, 271f
                  slt          s10, a2, s8
                  xor          a5, a4, s5
                  srl          s8, tp, a4
                  srl          a3, a2, s5
                  slti         s2, tp, 749
                  sub          s0, a2, a7
                  sltu         t2, a7, s5
                  bgeu         a0, a2, 282f
267:              sll          a0, s4, a5
                  bltu         s3, s10, 281f
                  auipc        t1, 1003002
                  sra          a0, gp, t1
271:              bgeu         a3, s9, 282f
                  sub          tp, t0, zero
                  sll          a0, t6, s11
                  ori          s10, a6, -194
                  slt          tp, a0, a6
                  bgeu         a4, t4, 279f
                  lui          a0, 179738
                  sll          s6, s5, s11
279:              xori         zero, s7, -156
                  auipc        s3, 843842
281:              nop
282:              sub          s3, ra, t2
                  andi         gp, a2, 1775
                  slt          s6, gp, tp
                  srli         t5, s7, 11
                  sra          a1, a7, a7
                  srl          s3, s10, t2
                  nop
                  srli         s11, a5, 11
                  sll          a1, ra, s8
                  srli         a4, s3, 20
                  blt          a4, s11, 311f
                  srl          a1, a4, s4
                  bne          s0, a1, 305f
                  auipc        a3, 776801
                  ori          s3, s5, 1318
                  sll          a6, s11, s4
                  blt          a6, t6, 317f
                  sltiu        s3, t3, -1348
                  slt          a6, t1, s7
                  auipc        a0, 156907
                  sltiu        s8, tp, -114
                  andi         ra, s10, 1022
                  sra          t0, a1, t0
305:              nop
                  sub          s10, s8, a0
                  lui          s2, 909326
                  auipc        ra, 958019
                  addi         a0, t3, -1810
                  lui          s1, 557260
311:              bne          t6, t3, 314f
                  beq          ra, s1, 316f
                  slt          a2, s6, gp
314:              or           s3, t1, zero
                  xor          a5, s7, s4
316:              bge          s9, s2, 318f
317:              beq          s4, sp, 325f
                  addi         s0, zero, -10 #init loop 0 counter
                  slti         ra, ra, 1519
                  srli         s7, t5, 26
                  addi         a2, zero, -7 #init loop 0 limit
                  and          a6, a2, s0
sub_2_0_0_t:      and          s4, a3, a7
                  sltu         s1, a5, s9
                  srai         a1, a2, 2
                  slti         a0, s10, -1512
                  sltiu        s1, a3, -821
                  srli         a1, t1, 22
                  slli         tp, a5, 30
                  srai         a3, sp, 2
                  addi         s0, s0, 3 #update loop 0 counter
                  or           t5, s9, s10
                  bne          s0, a2, sub_2_0_0_t #branch for loop 0
                  srai         s8, a3, 19
318:              lui          s9, 685421
                  and          s10, t6, t4
                  sltu         t4, ra, s2
                  sltu         a2, t1, t0
                  bne          a3, t2, 341f
                  srl          s6, a6, sp
                  sll          s2, ra, t0
325:              nop
                  xor          s6, a5, t6
                  xori         s2, s3, -1737
                  or           s0, zero, s7
                  sub          s4, sp, s3
                  add          t1, s8, t6
                  and          a1, s4, s11
                  slli         zero, a3, 26
                  blt          t1, tp, 351f
                  sra          t1, t4, t0
                  sub          t5, s1, sp
                  and          s7, s5, s5
                  xori         t5, tp, 1781
                  nop
                  beq          a0, s10, 350f
                  and          s8, tp, gp
341:              sll          s11, a7, a0
                  sra          ra, a3, tp
                  blt          a6, a4, 358f
                  sra          ra, t4, s6
                  bge          s9, a2, 346f
346:              bgeu         tp, gp, 362f
                  lui          s3, 474049
                  slt          s9, a5, s1
                  andi         t5, a6, 1055
350:              sltu         s4, s1, t0
351:              sltu         s1, s6, tp
                  addi         a2, a0, -1761
                  xori         zero, s1, -1901
                  addi         a4, s3, 696
                  auipc        t0, 390025
                  andi         s2, a0, 1122
                  lui          s2, 315608
358:              bltu         s7, a6, 375f
                  beq          s9, sp, 372f
                  srl          a7, a3, t1
                  add          a3, t4, s10
362:              bne          ra, a1, 371f
                  sub          zero, t3, a1
                  blt          s7, s9, 382f
                  bne          sp, sp, 376f
                  srli         s9, s5, 25
                  slti         t2, a7, 2038
                  srl          tp, t5, a4
                  sltiu        tp, s3, 1791
                  bltu         s11, t1, 372f
371:              xori         gp, a2, -26
372:              ori          s3, s9, 1877
                  sll          s2, s0, s1
                  auipc        t3, 655998
375:              or           a3, s3, a1
376:              bltu         zero, zero, 388f
                  add          t0, a1, a5
                  srli         a4, s5, 15
                  slt          s1, s6, s4
                  xori         s6, s8, 1746
                  or           a3, gp, zero
382:              add          t2, a1, sp
                  bne          t4, s2, 396f
                  andi         t0, t0, -1310
                  bge          s11, a0, 389f
                  auipc        zero, 579756
                  srli         a0, t0, 29
388:              srl          zero, ra, a1
389:              bgeu         s2, s7, 391f
                  add          ra, a6, t0
391:              slti         s4, s11, -687
                  blt          t3, s1, 396f
                  sra          a6, zero, s4
                  sll          s1, s1, s4
                  ori          t2, t6, -1980
396:              bge          sp, s7, 415f
                  andi         s7, s9, 1755
                  add          a2, s11, s10
                  xori         s9, t5, -1441
                  srai         a7, a1, 18
                  beq          t6, s1, 419f
                  sltiu        a5, ra, 878
                  bge          t6, a4, 406f
                  and          t5, t2, s4
                  bge          t1, s11, 408f
406:              add          a2, s2, s9
                  or           s1, a3, a5
408:              auipc        s0, 313518
                  nop
                  sra          a7, s4, s9
                  ori          ra, a6, 14
                  or           t1, a2, a3
                  bge          s5, s1, 415f
                  slli         t0, a7, 26
415:              sll          s7, zero, s8
                  sltu         a0, s2, a3
                  xori         ra, a6, 1678
                  sra          s3, s3, a4
419:              slti         tp, s8, 1050
                  slt          zero, a2, gp
                  sra          a2, s11, s9
                  and          t2, a5, s2
                  srli         s11, a5, 26
                  nop
                  bne          a3, a7, 437f
                  nop
                  sll          a5, sp, s10
                  slt          tp, a3, s5
                  ori          s8, a0, -434
                  blt          t5, t5, 433f
                  srai         s2, t6, 6
                  bne          s8, a1, 443f
433:              slli         a7, a2, 18
                  bge          s3, a5, 449f
                  sltu         a2, t1, t2
                  addi         s9, a7, -843
437:              sra          s3, s5, a0
                  and          a7, t5, s1
                  srai         s8, a4, 21
                  bne          a5, s0, 453f
                  beq          s0, s10, 446f
                  slt          s4, sp, s10
443:              slti         s8, t6, 706
                  xori         a2, s0, 1044
                  and          t5, s0, s10
446:              add          a2, a2, s8
                  blt          s3, s11, 463f
                  slli         gp, s8, 27
449:              slti         s2, a6, 1367
                  xori         t0, s11, 1276
                  nop
                  sra          a6, s6, t4
453:              slli         t3, a1, 11
                  auipc        a7, 46995
                  srai         s0, tp, 6
                  beq          a0, s9, 464f
                  sub          a3, t0, t5
                  slli         a3, s4, 12
                  beq          t2, s7, 478f
                  addi         s9, a0, -1071
                  srl          t3, t5, s5
                  beq          t4, a1, 465f
463:              or           t0, s11, a7
464:              add          s7, ra, a2
465:              sll          a7, a5, s3
                  sltiu        s6, a5, 869
                  xori         s9, a0, 1080
                  sltu         a3, a6, t2
                  ori          s0, t6, -571
                  sra          s7, s6, s9
                  slli         a6, s0, 20
                  auipc        t0, 178693
                  sub          t3, s11, ra
                  srli         t0, tp, 18
                  bne          ra, s4, 486f
                  sra          t4, t3, t0
                  xor          s3, t0, s1
478:              xor          s1, s3, s3
                  bne          ra, a4, 491f
                  add          t1, s9, s9
                  or           s6, s4, a5
                  xori         t0, a0, -392
                  sltiu        t5, t3, -1626
                  slti         s2, s6, 1011
                  sltu         t4, s2, sp
486:              ori          s11, s5, 799
                  blt          s1, a4, 505f
                  sub          a5, s9, t2
                  ori          a7, s3, -1204
                  slti         s0, a6, 1261
491:              or           s1, s4, s7
                  auipc        s1, 459266
                  sll          tp, a7, a2
                  ori          t2, t2, 1015
                  bltu         sp, t0, 513f
                  addi         s1, s0, -1585
                  and          s10, a2, s6
                  slli         a0, t5, 6
                  bge          s10, a3, 501f
                  xori         a5, t3, -1792
501:              xori         a1, sp, -284
                  andi         s8, s10, -66
                  srli         t0, s7, 15
                  add          t1, s5, t3
505:              bgeu         t1, s6, 509f
                  srai         a0, s10, 13
                  xor          s9, s1, t4
                  nop
509:              add          s4, a1, a2
                  bgeu         tp, t4, 512f
                  bge          s5, t2, 512f
512:              or           s4, s8, s2
513:              slli         s4, a7, 17
                  xori         s10, s6, 1628
                  sll          s7, s4, tp
                  or           a4, t4, s3
                  nop
                  bge          s3, a3, 537f
                  nop
                  slt          s11, t0, t1
                  add          t0, a2, sp
                  beq          s3, a0, 537f
                  sra          a4, t6, t0
                  slli         s8, a7, 19
                  ori          a0, s6, -447
                  sub          s6, t4, a4
                  addi         s8, zero, 1 #init loop 1 counter
                  slti         tp, a7, -916
                  srli         gp, a1, 4
                  addi         s7, zero, -17 #init loop 1 limit
                  sra          tp, ra, s8
sub_2_7_1_t:      or           s4, tp, a4
                  lui          s0, 197256
                  andi         t5, t0, -1081
                  addi         s8, s8, -3 #update loop 1 counter
                  sltu         a4, gp, t6
                  addi         s2, zero, 5 #init loop 0 counter
                  addi         a5, zero, 20 #init loop 0 limit
sub_2_7_0_t:      nop
                  add          s1, t0, a1
                  srl          a2, t2, s11
                  auipc        a4, 916480
                  nop
                  sub          ra, s2, a0
                  addi         s2, s2, 3 #update loop 0 counter
                  beq          s2, a5, sub_2_7_0_t #branch for loop 0
                  addi         a4, s6, 1338
                  bge          s8, s7, sub_2_7_1_t #branch for loop 1
                  andi         t1, s4, 273
                  ori          s9, s7, -237
                  addi         a4, a1, -609
                  sltiu        a2, s10, -2037
                  sltu         s4, a5, s6
                  srli         ra, s0, 15
                  ori          a2, a5, -353
                  lui          s6, 184458
                  or           s9, s1, s10
                  beq          sp, a5, 543f
                  bltu         t2, s6, 554f
537:              srli         zero, s1, 6
                  srli         s3, a3, 31
                  blt          s4, s7, 550f
                  nop
                  and          s4, a5, t4
                  nop
543:              sltiu        t2, a3, 1468
                  or           a1, s4, t6
                  add          t4, ra, a1
                  add          a1, s10, s5
                  srai         t4, t1, 31
                  bge          a0, s8, 553f
                  bge          t1, s11, 564f
550:              nop
                  ori          a6, s9, -1806
                  nop
553:              slt          zero, t2, t2
554:              addi         a7, a0, -554
                  srl          tp, s11, tp
                  slti         t4, s7, -532
                  andi         t0, s3, -955
                  xor          s4, s0, zero
                  nop
                  and          t4, s10, s0
                  sll          a0, t2, sp
                  bne          s7, s4, 578f
                  and          zero, a0, s8
564:              srai         tp, gp, 10
                  bne          s10, tp, 568f
                  xori         t0, t0, -2017
                  sub          s1, a6, t3
568:              bne          a4, a5, 579f
                  lui          t4, 6586
                  lui          t0, 787865
                  blt          s0, a5, 574f
                  lui          a0, 867161
                  sra          s7, a4, sp
574:              srl          t1, tp, s1
                  add          s8, t5, s10
                  slti         a2, ra, -29
                  ori          s0, s9, 1947
578:              slti         s4, s7, 1186
579:              sub          s9, a1, t6
                  add          a3, a6, a7
                  ori          s10, s6, -908
                  ori          s10, t6, -570
                  ori          t0, s4, 1513
                  xori         s3, s5, -689
                  add          a0, a3, zero
                  slt          zero, tp, s4
                  sltu         s3, s3, sp
                  srli         t1, a3, 0
                  ori          t3, ra, 1689
                  ori          a0, s6, -1052
                  xor          s11, s1, a0
                  nop
                  nop
                  xori         s11, a2, 211
                  bne          s9, t1, 608f
                  sltu         a5, a4, a4
                  sll          t5, s4, a5
                  lui          t4, 428238
                  bge          s5, a6, 612f
                  slli         s1, a3, 30
                  slt          s11, tp, s4
                  or           s4, s10, s10
                  slli         t0, a4, 7
                  or           s8, s8, t5
                  auipc        a2, 862352
                  bltu         t4, s0, 622f
                  addi         s8, a5, 586
608:              bgeu         s0, a2, 612f
                  and          s10, t6, a6
                  add          a7, t0, a6
                  bgeu         a5, t1, 624f
612:              xori         t5, s10, 705
                  bne          s0, s4, 630f
                  addi         s6, s5, -1537
                  lui          ra, 1031897
                  sltiu        s10, t1, 1450
                  auipc        s9, 130442
                  ori          a0, t0, -1077
                  addi         a0, zero, 10 #init loop 0 counter
                  sltu         t5, a1, gp
                  srl          t3, s10, a1
                  slti         zero, s11, 920
                  addi         s2, zero, 10 #init loop 0 limit
                  slti         a2, t2, 1274
                  xor          t1, s9, a4
sub_2_10_0_t:     sltu         a4, sp, s3
                  xori         s9, t4, -13
                  addi         a0, a0, -7 #update loop 0 counter
                  xor          t2, s7, sp
                  xori         ra, zero, 328
                  bgeu         a0, s2, sub_2_10_0_t #branch for loop 0
                  sub          s0, a2, s5
                  bne          s8, s0, 621f
                  ori          a6, s0, -682
621:              beq          t5, s8, 633f
622:              sub          s0, t1, s4
                  bge          s3, s7, 632f
624:              bne          s5, s4, 637f
                  xori         a5, t5, 453
                  auipc        s0, 365730
                  srl          a0, a0, sp
                  blt          s9, s3, 637f
                  addi         s3, t6, -1884
630:              beq          a2, s3, 632f
                  lui          a6, 226474
632:              bge          a6, t5, 647f
633:              add          tp, zero, a3
                  srai         s7, s8, 6
                  slti         s0, s2, -96
                  bne          a7, gp, 653f
637:              bgeu         sp, a1, 655f
                  bltu         s2, s4, 642f
                  lui          t4, 214801
                  sll          a1, t6, s8
                  srai         tp, t3, 4
642:              xori         s10, gp, -201
                  xor          t1, s7, t1
                  addi         t2, s11, -124
                  blt          s1, s9, 648f
                  srl          ra, s7, gp
647:              slti         t5, a4, -780
648:              slti         a5, sp, -1844
                  sltu         t4, sp, s10
                  addi         t5, a3, 1890
                  add          a2, tp, s9
                  slt          a0, s0, s6
653:              xor          t2, a2, s9
                  slt          tp, a6, tp
655:              slt          a0, s7, a3
                  sltiu        a0, tp, -237
                  bltu         a4, s2, 669f
                  sub          a3, ra, t0
                  add          t4, t6, a1
                  srli         s6, zero, 9
                  blt          ra, sp, 673f
                  bge          t2, t4, 664f
                  addi         t4, t4, 1787
664:              sll          s9, a7, ra
                  ori          s11, t4, -1024
                  sltiu        tp, a1, 1974
                  sra          t2, a4, a4
                  srl          a0, s10, s3
669:              sra          ra, t1, tp
                  bne          a6, t2, 683f
                  sll          s9, t0, zero
                  ori          s7, gp, -1715
673:              and          t1, tp, a6
                  bne          t0, t6, 685f
                  bgeu         s2, a1, 693f
                  sltu         s7, t6, s0
                  bge          ra, zero, 692f
                  slt          s7, s1, t5
                  slli         a4, a7, 2
                  beq          s3, s4, 693f
                  sll          s0, s8, sp
                  addi         a4, s3, -880
683:              xori         s9, tp, -1904
                  addi         s1, t2, -1251
685:              xori         a3, s5, -215
                  andi         t1, a6, -733
                  lui          s3, 696241
                  srl          s11, t6, a7
                  slti         t4, s5, 1107
                  bgeu         s10, t4, 701f
                  xor          t0, a5, a4
692:              bge          gp, s4, 693f
693:              slti         s9, gp, 1643
                  sll          s6, a4, s7
                  srli         t5, s10, 29
                  add          s4, t5, s5
                  xori         t0, a7, -1163
                  beq          t0, t6, 716f
                  srli         s7, s9, 2
                  and          a4, t1, zero
701:              xori         t0, s1, 1519
                  add          s2, s10, s6
                  sltiu        zero, t2, 179
                  bltu         gp, t1, 715f
                  slt          s11, a3, s5
                  addi         s10, zero, 1213
                  blt          s6, s4, 715f
                  xor          s6, t2, gp
                  or           t4, a1, a1
                  bne          s10, a3, 722f
                  andi         s1, a6, 331
                  bne          s9, tp, 714f
                  lui          t0, 840001
714:              blt          s7, s5, 719f
715:              xori         s1, a2, 364
716:              slt          s6, a7, t2
                  lui          a4, 576349
                  srli         t3, t3, 26
719:              beq          a2, s6, 722f
                  slti         s1, s2, -534
                  srl          s7, t3, a2
722:              sub          a6, t3, t6
                  andi         gp, t1, -463
                  xori         a0, a5, -1614
                  lw           t1, 4(s5)
                  slt          s3, a0, t0
                  addi         s5, s5, 36
                  sltiu        t5, sp, 54
                  nop
                  sra          t3, zero, tp
                  slli         a5, a5, 12
                  sub          a0, t0, a6
1014:             addi x8, x6, 0
1014:             jalr x8, x8, 0
sub_3:            addi         s5, s5, -20
                  nop
                  srl          s1, s4, t6
                  sw           t1, 4(s5)
                  srl          a4, s2, s0
                  sltu         s3, t3, t4
                  sltiu        s8, s9, -653
                  slt          a5, s11, sp
                  addi         gp, zero, -2 #init loop 0 counter
                  auipc        s9, 726112
                  lui          s4, 931814
                  sltiu        t5, a4, -318
                  sltu         a1, s3, t2
                  sll          s10, a0, a0
                  ori          s6, s10, 1418
                  xor          s7, zero, s6
                  auipc        a2, 73739
                  slti         a6, t3, -1926
                  sltu         s10, zero, gp
                  slti         t5, t4, -1933
                  addi         a5, zero, -6 #init loop 0 limit
                  sub          s7, s9, a2
                  addi         a7, a2, -975
                  auipc        t5, 188716
sub_3_0_0_t:      auipc        s4, 1070
                  xori         s0, s2, 1643
                  addi         gp, gp, -2 #update loop 0 counter
                  or           s11, t4, a3
                  bne          gp, a5, sub_3_0_0_t #branch for loop 0
                  ori          t4, a6, -1733
                  xori         a6, a6, 1480
                  slti         t0, a1, -981
                  nop
                  addi         s6, s9, -1579
                  andi         t1, zero, -68
                  or           a2, a7, s0
                  xori         s6, a5, 1720
                  xor          t2, a3, a3
                  bge          ra, a6, 22f
                  auipc        s6, 515866
                  bltu         s0, s5, 21f
                  or           s7, zero, t4
                  nop
                  blt          s11, a6, 30f
                  andi         t0, s8, -731
                  nop
                  bltu         s11, t4, 32f
                  sra          tp, a2, a4
                  bltu         a5, s9, 29f
                  slti         zero, s5, 1778
                  srli         gp, a2, 10
21:               blt          s2, sp, 36f
22:               slli         t0, s8, 12
                  ori          s3, zero, 111
                  ori          a7, a1, 275
                  sltu         s8, a0, s1
                  beq          s3, tp, 36f
                  ori          ra, s9, -1123
                  nop
29:               sub          a1, t6, s4
30:               or           a0, a6, zero
                  and          t5, t3, s11
32:               sll          a3, a5, a2
                  blt          s4, s4, 47f
                  ori          a7, a3, -802
                  lui          s1, 48476
36:               slti         s3, s5, -1972
                  slli         t0, a4, 19
                  xor          t3, tp, a6
                  slti         a0, s1, 1772
                  ori          a7, s0, 1088
                  sub          s7, a7, s0
                  slti         ra, s7, -44
                  srli         a6, s9, 5
                  addi         s7, t0, -637
                  srli         a3, t0, 22
                  bne          tp, a5, 64f
47:               lui          s2, 598873
                  sltu         a6, t3, a3
                  ori          a5, t1, 723
                  sll          s2, s5, gp
                  lui          s9, 678617
                  ori          s3, s9, -677
                  sub          a1, a1, a4
                  xor          s1, a2, t4
                  srai         s11, a4, 24
                  lui          a6, 821950
                  beq          s0, a4, 72f
                  auipc        t4, 362810
                  bne          s3, s0, 61f
                  bgeu         t6, s2, 68f
61:               bge          tp, a2, 71f
                  lui          a6, 845116
                  srli         zero, t2, 22
64:               xori         s9, s9, -961
                  bge          ra, a3, 70f
                  lui          a6, 729911
                  blt          s0, s7, 72f
68:               sub          s1, ra, gp
                  sltu         s0, s10, t1
70:               auipc        ra, 151069
71:               and          t1, s11, a7
72:               auipc        s7, 652205
                  lw           t1, 4(s5)
                  addi         s5, s5, 20
                  add          a1, s0, zero
                  sra          a4, a3, s5
                  and          s10, t2, a2
108:              addi x16, x6, 1
108:              jalr x16, x16, 0
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
                  add x2, x21, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x2, x21, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x2, x21, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x2, x21, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x2, x21, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x2, x21, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x2, x21, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x2, x21, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x2, x21, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x2, x21, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x2, x21, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x2, x21, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x2, x21, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x2, x21, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x2, x21, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x2, x21, zero
                  csrr x23, 0x341 # MEPC
                  csrr x23, 0x342 # MCAUSE
                  li x6, 0x3 # BREAKPOINT
                  beq x23, x6, ebreak_handler
                  li x6, 0x8 # ECALL_UMODE
                  beq x23, x6, ecall_handler
                  li x6, 0x9 # ECALL_SMODE
                  beq x23, x6, ecall_handler
                  li x6, 0xb # ECALL_MMODE
                  beq x23, x6, ecall_handler
                  li x6, 0x1
                  beq x23, x6, instr_fault_handler
                  li x6, 0x5
                  beq x23, x6, load_fault_handler
                  li x6, 0x7
                  beq x23, x6, store_fault_handler
                  li x6, 0xc
                  beq x23, x6, pt_fault_handler
                  li x6, 0xd
                  beq x23, x6, pt_fault_handler
                  li x6, 0xf
                  beq x23, x6, pt_fault_handler
                  li x6, 0x2 # ILLEGAL_INSTRUCTION
                  beq x23, x6, illegal_instr_handler
                  csrr x6, 0x343 # MTVAL
                  1: la x31, test_done
                  jalr x1, x31, 0

ecall_handler:    
                  la x23, _start
                  sw x0, 0(x23)
                  sw x1, 4(x23)
                  sw x2, 8(x23)
                  sw x3, 12(x23)
                  sw x4, 16(x23)
                  sw x5, 20(x23)
                  sw x6, 24(x23)
                  sw x7, 28(x23)
                  sw x8, 32(x23)
                  sw x9, 36(x23)
                  sw x10, 40(x23)
                  sw x11, 44(x23)
                  sw x12, 48(x23)
                  sw x13, 52(x23)
                  sw x14, 56(x23)
                  sw x15, 60(x23)
                  sw x16, 64(x23)
                  sw x17, 68(x23)
                  sw x18, 72(x23)
                  sw x19, 76(x23)
                  sw x20, 80(x23)
                  sw x21, 84(x23)
                  sw x22, 88(x23)
                  sw x23, 92(x23)
                  sw x24, 96(x23)
                  sw x25, 100(x23)
                  sw x26, 104(x23)
                  sw x27, 108(x23)
                  sw x28, 112(x23)
                  sw x29, 116(x23)
                  sw x30, 120(x23)
                  sw x31, 124(x23)
                  la x31, write_tohost
                  jalr x0, x31, 0

instr_fault_handler:
                  add x21, x2, zero
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
                  add x21, x2, zero
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
                  add x21, x2, zero
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
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x21, x2, zero
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
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x21, x2, zero
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
                  csrr  x23, 0x300 # MSTATUS;
                  csrr  x23, 0x304 # MIE;
                  csrr  x23, 0x344 # MIP;
                  csrrc x23, 0x344, x23 # MIP;
                  add x21, x2, zero
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
