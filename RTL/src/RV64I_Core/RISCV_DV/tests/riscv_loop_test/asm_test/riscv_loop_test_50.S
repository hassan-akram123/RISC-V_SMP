.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x12, h0_start
jalr x0, x12, 0
h0_start:
                  li x15, 0x40000100
                  csrw 0x301, x15
kernel_sp:        
                  la x13, kernel_stack_end

trap_vec_init:    
                  la x15, mtvec_handler
                  ori x15, x15, 0
                  csrw 0x305, x15 # MTVEC

mepc_setup:       
                  la x15, init
                  csrw 0x341, x15

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x15, 0x1800
                  csrw 0x300, x15 # MSTATUS
                  mret
init:             
                  li x0, 0x8940e44a
                  li x1, 0x7
                  li x2, 0xa
                  li x3, 0x76d5c083
                  li x4, 0xe
                  li x6, 0xe
                  li x7, 0x2dc924d4
                  li x8, 0xd
                  li x9, 0xf75742b8
                  li x10, 0xd27629c6
                  li x11, 0xa
                  li x12, 0x80000000
                  li x14, 0xc284dbae
                  li x15, 0xe
                  li x16, 0x5f4eb08c
                  li x17, 0x804e8c19
                  li x18, 0x80000000
                  li x19, 0xf3592047
                  li x20, 0x80000000
                  li x21, 0x80000000
                  li x22, 0xfba28273
                  li x23, 0x0
                  li x24, 0xf6128f99
                  li x25, 0xf9b21b55
                  li x26, 0x0
                  li x27, 0x6f6a2307
                  li x28, 0xf2f24cf5
                  li x29, 0x80000000
                  li x30, 0xfa664f78
                  li x31, 0xe
                  la x5, user_stack_end
main:             addi         t5, zero, 9 #init loop 1 counter
                  ori          s9, s3, -1686
                  addi         gp, zero, -19 #init loop 1 limit
                  sltiu        a4, ra, -1120
main_3_1_t:       auipc        a7, 879706
                  addi         t5, t5, -4 #update loop 1 counter
                  add          ra, s7, ra
                  lui          s11, 174617
                  addi         s0, zero, -10 #init loop 0 counter
                  addi         t4, zero, 10 #init loop 0 limit
main_3_0_t:       sltu         a4, s7, s5
                  ori          s6, a6, -368
                  srai         s9, s9, 31
                  addi         s0, s0, 2 #update loop 0 counter
                  sltu         zero, s0, t2
                  bltu         s0, t4, main_3_0_t #branch for loop 0
                  add          t6, a1, s4
                  sltiu        s3, s3, 145
                  srl          a6, s11, s3
                  auipc        s3, 417873
                  bne          t5, gp, main_3_1_t #branch for loop 1
                  sra          s5, t6, a2
                  addi         a1, zero, -4 #init loop 1 counter
                  sll          s6, s6, a4
                  srl          t6, s4, zero
                  sra          s0, s11, s8
                  lui          s11, 522572
                  auipc        a5, 1025039
                  andi         t3, a7, 168
                  slli         s11, s5, 10
                  add          a5, s11, s8
                  addi         t5, zero, 12 #init loop 1 limit
                  ori          tp, gp, 1264
                  sll          s9, s2, s1
                  srl          tp, a6, tp
main_18_1_t:      sltu         tp, s7, sp
                  addi         a1, a1, 8 #update loop 1 counter
                  addi         ra, s6, -1439
                  addi         s1, zero, 10 #init loop 0 counter
                  nop
                  addi         a0, zero, -14 #init loop 0 limit
main_18_0_t:      ori          s6, t0, 1120
                  sltu         sp, tp, a1
                  sll          s4, a6, s8
                  addi         s1, s1, -6 #update loop 0 counter
                  slli         t3, s8, 6
                  nop
                  andi         s3, a4, -1626
                  add          t2, t2, a7
                  beq          s1, a0, main_18_0_t #branch for loop 0
                  beq          a1, t5, main_18_1_t #branch for loop 1
                  addi         sp, t2, -1018
                  addi         s5, zero, -8 #init loop 1 counter
                  or           s2, tp, s7
                  xor          s8, s9, t0
                  addi         t1, zero, 14 #init loop 1 limit
                  sltiu        t3, a5, -1530
main_11_1_t:      addi         a1, t2, -1131
                  sub          t5, s8, s5
                  addi         s5, s5, 5 #update loop 1 counter
                  sra          a6, s9, s3
                  sub          a7, s10, s2
                  auipc        t5, 276245
                  addi         s1, zero, 10 #init loop 0 counter
                  slti         t3, s3, -985
                  auipc        s8, 806992
                  addi         s0, zero, 7 #init loop 0 limit
main_11_0_t:      lui          a7, 547053
                  sll          t2, t4, s9
                  nop
                  addi         s1, s1, -5 #update loop 0 counter
                  srl          s6, ra, s4
                  bgeu         s1, s0, main_11_0_t #branch for loop 0
                  andi         tp, s3, 1070
                  srai         t4, s7, 15
                  bltu         s5, t1, main_11_1_t #branch for loop 1
                  or           a0, t0, s9
                  addi         s5, zero, -7 #init loop 0 counter
                  auipc        a5, 597817
                  slt          s4, a6, s10
                  addi         s6, zero, -17 #init loop 0 limit
                  sub          s1, a4, t2
                  slli         s3, s2, 13
                  sltu         t5, s5, ra
main_13_0_t:      slti         s8, t5, 1102
                  add          a7, ra, sp
                  xori         s10, ra, 924
                  srli         s11, s8, 31
                  slt          zero, s11, s4
                  ori          a5, t4, -886
                  ori          ra, s1, -674
                  addi         s5, s5, -10 #update loop 0 counter
                  and          t1, a1, sp
                  sltiu        ra, a3, -894
                  ori          s2, t1, 350
                  slti         gp, a5, 1772
                  and          s11, t6, a5
                  add          tp, t2, s5
                  srli         a7, s5, 4
                  sltu         s8, t4, a5
                  or           s7, gp, a5
                  addi         t5, s10, 815
                  bne          s5, s6, main_13_0_t #branch for loop 0
                  xor          a0, s3, a6
                  addi         a7, zero, -6 #init loop 0 counter
                  ori          a1, a0, 100
                  sub          s5, s5, s10
                  auipc        t3, 205456
                  addi         sp, zero, 10 #init loop 0 limit
main_1_0_t:       sltiu        s5, s10, -1089
                  sltu         a5, t3, s6
                  addi         a7, a7, 4 #update loop 0 counter
                  sltu         t6, t6, tp
                  slli         t1, s2, 24
                  nop
                  bne          a7, sp, main_1_0_t #branch for loop 0
                  add          s7, a2, t0
                  addi         t3, zero, 7 #init loop 1 counter
                  slti         s10, t4, -728
                  add          s9, s3, s0
                  addi         a4, zero, 7 #init loop 1 limit
                  xori         s3, zero, -1966
main_7_1_t:       sub          t4, a6, a3
                  srai         a6, a7, 8
                  lui          s9, 241945
                  sltiu        s8, a2, 146
                  slt          s6, s0, a6
                  srl          t6, gp, s5
                  nop
                  srai         s4, s1, 29
                  and          t4, t5, t4
                  addi         t3, t3, -6 #update loop 1 counter
                  srli         s6, t0, 1
                  sll          s1, t5, t5
                  addi         a0, zero, 8 #init loop 0 counter
                  sltu         s2, a0, a6
                  sra          s7, t6, s3
                  addi         a5, zero, 19 #init loop 0 limit
                  sltu         s4, a7, gp
main_7_0_t:       slt          a7, s11, s10
                  sltu         ra, s0, t3
                  addi         a0, a0, 3 #update loop 0 counter
                  and          s6, t3, a1
                  srli         a1, t0, 29
                  blt          a0, a5, main_7_0_t #branch for loop 0
                  auipc        t5, 107869
                  sub          t6, sp, t5
                  sub          sp, t1, s7
                  srli         s6, s4, 12
                  srl          s3, a2, s0
                  bgeu         t3, a4, main_7_1_t #branch for loop 1
                  slti         s9, s4, -82
                  addi         a5, zero, 10 #init loop 1 counter
                  add          s7, s8, s10
                  addi         sp, zero, -10 #init loop 1 limit
main_2_1_t:       slti         s1, s5, -1943
                  slti         a0, ra, 629
                  addi         a5, a5, -1 #update loop 1 counter
                  addi         s6, zero, -10 #init loop 0 counter
                  sub          s11, s5, s3
                  addi         s10, zero, -15 #init loop 0 limit
                  sltiu        a0, a7, -1801
main_2_0_t:       or           tp, tp, t3
                  addi         s6, s6, -7 #update loop 0 counter
                  slli         t2, a6, 30
                  xor          s9, s4, s4
                  bge          s6, s10, main_2_0_t #branch for loop 0
                  and          a6, t0, ra
                  beq          a5, sp, main_2_1_t #branch for loop 1
                  sub          s5, s0, s7
                  addi         t4, zero, -9 #init loop 0 counter
                  add          sp, s0, s7
                  srli         a4, a4, 0
                  addi         t3, zero, 11 #init loop 0 limit
                  sra          s6, s9, s9
main_8_0_t:       xor          s5, ra, t4
                  add          s0, a4, a1
                  slli         s3, t5, 0
                  addi         t4, t4, 2 #update loop 0 counter
                  or           ra, s10, zero
                  bltu         t4, t3, main_8_0_t #branch for loop 0
                  add          s3, s9, s7
                  addi         a5, zero, -8 #init loop 1 counter
                  addi         s7, zero, 13 #init loop 1 limit
main_12_1_t:      add          a4, a5, s10
                  nop
                  addi         a5, a5, 10 #update loop 1 counter
                  addi         s2, zero, -9 #init loop 0 counter
                  nop
                  addi         ra, zero, 2 #init loop 0 limit
main_12_0_t:      xori         a4, sp, 1533
                  addi         a7, s1, -1089
                  addi         s2, s2, 4 #update loop 0 counter
                  bltu         s2, ra, main_12_0_t #branch for loop 0
                  xori         gp, t5, -1461
                  blt          a5, s7, main_12_1_t #branch for loop 1
                  ori          sp, t6, -80
                  addi         a4, zero, 1 #init loop 0 counter
                  nop
                  add          s0, zero, t5
                  or           a7, t3, tp
                  sltu         t6, s6, s5
                  sub          s9, s2, a4
                  xor          a6, s6, a3
                  xori         t4, t0, -1569
                  xori         a6, s6, 1775
                  slli         t5, t6, 29
                  slti         s8, s2, 1882
                  andi         t5, t5, -142
                  sltu         t6, a7, a1
                  addi         t3, zero, 9 #init loop 0 limit
                  slt          s1, tp, t4
                  lui          t2, 741589
                  or           t4, s2, ra
                  slli         s0, zero, 16
                  slt          s2, t0, t3
main_0_0_t:       addi         sp, a3, 65
                  addi         a4, a4, 2 #update loop 0 counter
                  sub          a6, a3, s4
                  add          zero, t3, a3
                  sltu         a1, a0, s5
                  sltiu        a0, t3, 990
                  addi         a5, ra, -1353
                  sub          s4, s11, sp
                  bne          a4, t3, main_0_0_t #branch for loop 0
                  lui          a5, 962231
                  addi         s4, zero, -1 #init loop 1 counter
                  srai         a1, a6, 4
                  auipc        s2, 80989
                  sll          a5, t1, a3
                  addi         s0, zero, 16 #init loop 1 limit
                  sltiu        a0, a1, 1277
main_6_1_t:       xor          s6, a5, s6
                  ori          a5, s1, 1174
                  addi         s4, s4, 2 #update loop 1 counter
                  xori         s11, a0, -188
                  sll          s6, t2, a3
                  auipc        gp, 858130
                  auipc        tp, 687647
                  and          t3, a0, ra
                  or           sp, t4, t3
                  auipc        a4, 275023
                  ori          s1, s5, -1064
                  addi         ra, zero, 0 #init loop 0 counter
                  addi         sp, gp, 710
                  lui          t5, 788364
                  addi         t1, zero, -19 #init loop 0 limit
                  slli         s9, a1, 21
                  or           a1, s0, a3
                  sltu         s7, a4, s5
                  xori         zero, s11, -845
main_6_0_t:       ori          sp, a7, -1263
                  srai         s6, t1, 14
                  addi         ra, ra, -2 #update loop 0 counter
                  xor          a6, a7, s10
                  bge          ra, t1, main_6_0_t #branch for loop 0
                  slt          tp, a6, sp
                  bltu         s4, s0, main_6_1_t #branch for loop 1
                  sll          a0, a3, t3
                  addi         sp, zero, 8 #init loop 1 counter
                  addi         gp, t0, 854
                  addi         a1, zero, -3 #init loop 1 limit
main_5_1_t:       add          gp, s6, t0
                  addi         sp, sp, -5 #update loop 1 counter
                  addi         a0, zero, 3 #init loop 0 counter
                  srli         s2, s2, 16
                  addi         s0, zero, 18 #init loop 0 limit
main_5_0_t:       auipc        s9, 350412
                  auipc        a6, 167
                  addi         a0, a0, 5 #update loop 0 counter
                  bne          a0, s0, main_5_0_t #branch for loop 0
                  bge          sp, a1, main_5_1_t #branch for loop 1
                  slli         zero, a1, 8
                  addi         s7, zero, 10 #init loop 0 counter
                  or           zero, t3, a1
                  addi         a4, zero, 18 #init loop 0 limit
main_9_0_t:       andi         a0, s2, 1557
                  addi         s7, s7, 8 #update loop 0 counter
                  beq          s7, a4, main_9_0_t #branch for loop 0
                  sub          s8, t1, t1
                  addi         a5, zero, 5 #init loop 0 counter
                  addi         a7, zero, -15 #init loop 0 limit
main_10_0_t:      slt          s1, t5, s0
                  addi         a5, a5, -9 #update loop 0 counter
                  bge          a5, a7, main_10_0_t #branch for loop 0
                  addi         s1, t5, -1831
                  addi         s1, zero, 8 #init loop 1 counter
                  addi         s9, zero, 20 #init loop 1 limit
main_16_1_t:      nop
                  slli         t5, s4, 26
                  addi         s1, s1, 10 #update loop 1 counter
                  addi         sp, zero, -4 #init loop 0 counter
                  addi         s7, zero, 4 #init loop 0 limit
                  xor          t3, t4, a4
                  andi         s11, s8, 1418
main_16_0_t:      andi         gp, s10, 1728
                  addi         sp, sp, 8 #update loop 0 counter
                  lui          a5, 146234
                  beq          sp, s7, main_16_0_t #branch for loop 0
                  slti         a0, a2, 1846
                  srl          t6, t4, a6
                  blt          s1, s9, main_16_1_t #branch for loop 1
                  sub          a1, t3, sp
                  addi         a4, zero, 1 #init loop 1 counter
                  xor          s6, s7, a3
                  addi         a0, zero, -6 #init loop 1 limit
                  xori         t4, s1, -1678
                  slt          zero, s3, zero
main_4_1_t:       sltu         s11, s4, s1
                  or           s4, a3, a4
                  addi         a4, a4, -7 #update loop 1 counter
                  and          sp, tp, s0
                  xori         sp, tp, -1886
                  add          t3, t3, s6
                  addi         s9, zero, 2 #init loop 0 counter
                  srai         gp, sp, 10
                  addi         s0, zero, 9 #init loop 0 limit
                  xor          s5, a0, s0
                  or           t6, tp, s11
                  add          a5, s7, t0
main_4_0_t:       xor          a1, s5, a1
                  add          t4, a0, s3
                  addi         s9, s9, 9 #update loop 0 counter
                  sra          a7, s6, t0
                  blt          s9, s0, main_4_0_t #branch for loop 0
                  srai         s8, a6, 7
                  slli         t1, t1, 12
                  beq          a4, a0, main_4_1_t #branch for loop 1
                  addi         s2, s4, -1339
                  addi         s10, zero, 5 #init loop 1 counter
                  srli         t4, s4, 22
                  addi         s5, a7, 1311
                  or           t6, a7, gp
                  addi         s4, zero, 9 #init loop 1 limit
main_15_1_t:      or           s1, a1, s5
                  add          ra, zero, a3
                  addi         s10, s10, 8 #update loop 1 counter
                  sra          zero, s8, s2
                  sltiu        a4, a0, 1944
                  addi         sp, zero, -5 #init loop 0 counter
                  sltu         s0, sp, s7
                  addi         a5, zero, 19 #init loop 0 limit
main_15_0_t:      sltu         gp, s8, a6
                  sltu         a1, s6, s8
                  addi         sp, sp, 8 #update loop 0 counter
                  beq          sp, a5, main_15_0_t #branch for loop 0
                  add          t6, gp, t1
                  sltiu        gp, t1, 1862
                  bltu         s10, s4, main_15_1_t #branch for loop 1
                  addi         t1, t2, 1578
                  addi         t1, zero, -1 #init loop 0 counter
                  slt          t2, a7, a6
                  srl          ra, zero, s2
                  or           a5, a5, t6
                  addi         a7, a0, 1988
                  sltiu        a7, s1, -1061
                  xori         a0, a0, 419
                  add          s5, ra, s3
                  srl          s7, s8, gp
                  addi         a6, zero, 7 #init loop 0 limit
                  slti         a7, a3, 1982
main_19_0_t:      add          a0, t3, tp
                  slli         a5, a7, 1
                  slli         s8, sp, 17
                  slt          ra, s10, s2
                  or           s2, tp, s11
                  sltiu        a5, t3, -1987
                  addi         t1, t1, 4 #update loop 0 counter
                  bltu         t1, a6, main_19_0_t #branch for loop 0
                  slli         tp, t0, 14
                  slti         a7, a2, -553
                  and          zero, a3, s0
                  and          s7, a4, t4
                  xori         s9, s9, -826
                  bne          s9, tp, 7f
                  ori          a1, t1, -491
                  and          s3, a2, a2
7:                sltiu        sp, s1, 380
                  slli         s3, a4, 5
                  add          a7, a2, tp
                  srli         s1, t4, 2
                  bge          a3, ra, 31f
                  slli         s5, t2, 13
                  sltiu        s7, t2, -317
                  nop
                  sltiu        t1, t2, 1272
                  xori         a7, a1, -1518
                  sll          a6, t1, s2
                  bltu         t3, zero, 26f
                  bge          s0, ra, 39f
                  ori          s9, t0, 632
                  xori         s11, a4, 320
                  bltu         a3, s6, 31f
                  andi         s3, s4, -1712
                  beq          s0, a0, 31f
                  bne          s10, t2, 26f
26:               slti         t2, t5, -1695
                  bgeu         s10, t5, 34f
                  slt          a6, t4, a4
                  xor          a7, a3, s6
                  bne          t1, s11, 39f
31:               srl          s6, s0, t3
                  add          a0, s9, t1
                  bltu         t5, gp, 37f
34:               slli         zero, s6, 15
                  srai         zero, t6, 15
                  sll          s2, t6, t5
37:               srai         a7, a3, 9
                  bgeu         s11, a6, 49f
39:               slt          a6, s10, a5
                  bgeu         a5, ra, 49f
                  lui          zero, 295913
                  srl          s7, t5, t2
                  andi         s11, s8, -428
                  sltiu        a4, s6, -1797
                  add          s5, s3, sp
                  beq          t1, zero, 61f
                  beq          a3, t2, 51f
                  sltu         a0, ra, t2
49:               slli         t6, s10, 4
                  ori          a6, s6, -1419
51:               srli         s9, s0, 16
                  auipc        s2, 249495
                  auipc        s7, 252428
                  slt          s0, a0, gp
                  and          a7, a7, a4
                  lui          s7, 710748
                  ori          t3, a4, 1346
                  andi         a6, tp, -69
                  bge          a5, s1, 74f
                  ori          tp, t2, -568
61:               slli         s4, t5, 5
                  bne          t5, t6, 77f
                  and          t6, a6, a7
                  addi         a4, s10, 1289
                  ori          t6, sp, 1366
                  bne          s9, ra, 73f
                  nop
                  ori          t4, s4, 1646
                  nop
                  sll          s11, t6, a0
                  or           gp, a6, zero
                  la           s1, sub_2
                  and          s2, t2, gp
                  srai         t1, s4, 5
                  auipc        t4, 472192
                  addi         s1, s1, -845
                  addi         zero, t5, 1576
main_j2:          jalr         s3, s1, 845 #jump main -> sub_2
                  xori         s0, t4, -961
                  xori         t5, t5, 1305
73:               sll          s7, s5, s4
74:               bltu         s9, s5, 94f
                  srl          a4, t1, t6
                  srl          s11, s5, a5
77:               xor          s6, s1, a0
                  sra          s2, t0, s4
                  sll          zero, s9, s9
                  and          s8, a5, s11
                  bne          s6, s6, 87f
                  and          t6, a2, s0
                  sub          tp, a6, t0
                  nop
                  blt          gp, s1, 105f
                  bge          s3, a0, 100f
87:               addi         s11, s11, -599
                  slli         a1, a2, 31
                  lui          a7, 172921
                  nop
                  srli         s9, a3, 20
                  xori         zero, a4, 1114
                  slli         a4, a1, 18
94:               nop
                  sub          s9, s6, s1
                  sltiu        t2, a5, -1309
                  blt          t1, s2, 100f
                  srli         a6, a3, 23
                  srli         t1, ra, 11
100:              addi         t6, gp, -1598
                  and          s10, s10, a3
                  sltu         s0, a1, a2
                  ori          s2, a0, 484
                  sltu         t2, sp, t4
105:              bgeu         s5, a5, 108f
                  nop
                  bgeu         a3, a7, 111f
108:              bge          a1, ra, 119f
                  xori         s8, s2, 1332
                  xor          t5, t2, s5
111:              sltiu        t2, t3, -1680
                  xor          a6, ra, a3
                  sll          t2, t6, tp
                  xor          s7, t2, t0
                  slti         s3, s2, -1863
                  ori          t6, s7, 1647
                  sra          t3, t5, a3
                  srli         t6, zero, 28
119:              nop
                  xor          s9, a6, a6
                  andi         s1, s10, -1581
                  xori         s9, a1, 578
                  blt          zero, s2, 140f
                  slti         a4, s0, 1151
                  slt          gp, s9, t1
                  add          a7, s11, a4
                  bltu         a3, gp, 136f
                  bge          a4, s6, 133f
                  sll          s6, gp, s9
                  slli         s2, tp, 30
                  slti         s11, s4, -1398
                  addi         a7, a0, 163
133:              sra          t3, zero, s7
                  slt          s3, t5, a2
                  bltu         s11, a7, 145f
136:              sltu         t5, a1, a3
                  ori          t1, s7, -1486
                  sub          a6, s8, t6
                  slt          s2, t2, t2
140:              ori          a5, s2, 98
                  lui          t3, 347755
                  bltu         t1, t1, 158f
                  auipc        s9, 829352
                  sltiu        s4, s8, -13
145:              srli         s1, t6, 0
                  add          s9, a3, t5
                  xori         zero, tp, 586
                  ori          a4, s8, 734
                  lui          s1, 506243
                  andi         tp, s0, 1596
                  srli         zero, s0, 14
                  and          s11, t5, t2
                  andi         s4, s1, 269
                  add          s9, t2, s0
                  sra          s5, a2, a7
                  blt          s2, s2, 167f
                  add          zero, s8, s10
158:              addi         zero, t4, 1341
                  xor          tp, t4, ra
                  auipc        a7, 548256
                  slt          zero, s10, a5
                  andi         sp, s7, 615
                  sub          a5, t2, s1
                  bge          a1, t4, 167f
                  srli         s4, s8, 13
                  lui          gp, 85031
167:              bgeu         t1, s1, 176f
                  slt          a0, t4, s0
                  slti         s10, s10, 264
                  sub          gp, s7, a7
                  srl          s6, s3, sp
                  auipc        s8, 698881
                  xor          s8, gp, s3
                  slti         a0, a0, -176
                  andi         a5, ra, 1816
176:              addi         sp, s3, 557
                  blt          tp, t0, 193f
                  bge          t0, a4, 187f
                  sll          a6, a7, a0
                  and          s4, t0, t2
                  srl          gp, s11, gp
                  slti         a6, s6, 954
                  or           a4, t6, t6
                  or           s0, gp, a5
                  addi         s0, t4, -1456
                  lui          a0, 313673
187:              bltu         a0, ra, 202f
                  xori         t1, s8, 1646
                  auipc        a1, 784908
                  nop
                  xori         zero, a5, -592
                  sub          t1, t0, a2
193:              bne          s0, t4, 213f
                  lui          s8, 882910
                  slti         s4, s11, 597
                  nop
                  or           s10, a4, t1
                  sltu         a4, s6, ra
                  srli         a5, a0, 25
                  ori          t5, s10, -936
                  slti         s10, zero, -418
202:              slti         s10, a5, 1810
                  addi         t4, s3, -500
                  addi         t4, a5, 706
                  sub          s8, s5, s4
                  srli         a0, s0, 7
                  and          a0, s10, a4
                  slti         s1, gp, 20
                  xori         t3, s3, 446
                  auipc        s7, 221034
                  and          t5, t6, a3
                  srl          t2, a3, t2
213:              sub          s5, s7, s4
                  sltu         a4, a3, ra
                  srai         a1, s2, 13
                  sra          t4, s8, t3
                  beq          s11, a2, 231f
                  beq          zero, ra, 238f
                  slti         ra, gp, 1081
                  srai         gp, s1, 6
                  nop
                  lui          a5, 865367
                  sub          s0, a2, s4
                  auipc        a4, 72756
                  or           a6, a0, s2
                  slti         sp, t1, 173
                  xori         t4, a5, -253
                  add          s3, s8, a6
                  bge          s0, a3, 244f
                  bge          a3, tp, 237f
231:              ori          s8, ra, -1432
                  add          s11, s10, s0
                  srl          t1, t0, t3
                  xor          s3, s2, s8
                  bgeu         s3, s7, 236f
236:              ori          t5, a3, -349
237:              andi         s0, t4, 753
238:              nop
                  slti         t3, s4, -1184
                  bgeu         s3, t4, 245f
                  lui          t4, 460811
                  add          t2, t6, a6
                  slti         s1, ra, 21
244:              srl          tp, a2, s3
245:              beq          a3, t6, 265f
                  ori          s5, t5, -1228
                  slli         a0, s3, 30
                  bltu         s4, s6, 252f
                  nop
                  srli         ra, s4, 14
                  sll          s6, a4, s9
252:              auipc        s1, 90976
                  sra          tp, s8, t4
                  nop
                  sub          gp, t6, a6
                  slli         s11, t3, 19
                  bge          a4, t6, 261f
                  beq          a4, t3, 264f
                  or           sp, gp, s11
                  xor          tp, s6, a6
261:              and          t6, s1, t3
                  xor          s7, sp, t5
                  xori         sp, s2, 476
264:              sltu         gp, t4, s0
265:              srl          s6, s6, gp
                  bgeu         sp, s5, 281f
                  bge          a1, a0, 270f
                  bltu         a3, s10, 275f
                  bgeu         a7, t1, 279f
270:              srl          t1, s2, t0
                  auipc        s8, 342264
                  nop
                  blt          s7, s10, 281f
                  bne          s6, ra, 281f
275:              sub          s6, s7, a4
                  ori          a0, s0, 913
                  beq          zero, t2, 297f
                  xor          s10, t2, s11
279:              bge          a2, a0, 282f
                  sltiu        s5, gp, -1819
281:              auipc        s7, 744257
282:              auipc        sp, 736374
                  sltu         zero, t0, a3
                  and          a1, a5, s2
                  sub          t1, a0, s4
                  lui          ra, 975286
                  slli         s4, s4, 27
                  bge          s1, t5, 297f
                  bltu         a4, a0, 306f
                  blt          s8, t0, 294f
                  sltiu        s0, zero, -1822
                  slli         s7, t4, 11
                  slt          a7, tp, t0
294:              srai         a4, s5, 30
                  slli         a4, s8, 31
                  la           a5, sub_3
                  auipc        t5, 729751
                  slt          a4, s4, a4
                  lui          s8, 455434
                  addi         a5, a5, 268
                  add          s10, s9, s1
main_j4:          jalr         s3, a5, -267 #jump main -> sub_3
                  sub          t6, tp, s2
                  bltu         s7, s10, 305f
297:              ori          ra, gp, -1419
                  sub          s8, t6, a1
                  bne          t2, s2, 310f
                  andi         s5, a6, 542
                  sltiu        s11, tp, -1400
                  sll          zero, t4, a0
                  addi         s8, a7, -59
                  srli         s9, t5, 30
305:              lui          s5, 850440
306:              beq          a4, s3, 313f
                  sll          a5, t4, a5
                  sltu         t1, a2, s11
                  nop
310:              slli         t5, s0, 20
                  sltu         s7, a1, t3
                  xori         s10, s8, 480
313:              sltu         gp, s9, s2
                  nop
                  srai         t2, s8, 21
                  lui          a4, 1014051
                  srl          t4, sp, a3
                  sltu         s1, sp, s6
                  sra          t4, t4, a6
                  srli         a7, s4, 11
                  slt          s1, a7, gp
                  or           a7, s9, s10
                  and          s10, zero, s0
                  addi         t6, a6, -2000
                  bne          t3, t6, 334f
                  add          gp, gp, s6
                  andi         gp, t0, 1707
                  blt          t2, s3, 348f
                  ori          s4, a5, -1116
                  addi         ra, s9, 282
                  slli         a0, s7, 27
                  add          zero, a6, t1
                  sltu         s5, a4, sp
334:              auipc        gp, 45251
                  slt          ra, s8, s5
                  sub          sp, s8, a2
                  add          s4, t4, sp
                  beq          s0, gp, 349f
                  sltiu        s6, t5, 481
                  andi         s3, s10, 1807
                  andi         s3, s5, 598
                  xor          t1, a4, t2
                  sltiu        s4, s5, -754
                  sltiu        a7, t1, -61
                  and          s2, t6, a3
                  xor          s3, t1, s6
                  slti         sp, t6, -1864
348:              bgeu         ra, s11, 351f
349:              ori          a4, t1, 841
                  slt          s0, ra, t0
351:              srl          a6, sp, s4
                  sltu         s6, s8, a4
                  slli         t5, gp, 7
                  add          a1, t0, t5
                  beq          ra, a1, 371f
                  blt          s6, s5, 363f
                  slti         a7, t3, 772
                  andi         gp, a3, 983
                  sll          t6, t1, s9
                  lui          t4, 182954
                  nop
                  add          s11, a3, s9
363:              and          a4, a3, t6
                  andi         t2, a6, -880
                  bne          a3, s1, 374f
                  sltu         t2, s0, ra
                  srli         a4, zero, 20
                  srl          s8, zero, t1
                  sll          t1, t4, a3
                  sltu         t1, zero, s2
371:              addi         s7, t6, 2030
                  or           s8, s6, a7
                  ori          ra, s11, 1996
374:              sra          gp, s8, s8
                  nop
                  sra          s8, a7, t0
                  and          t4, sp, s0
                  auipc        a5, 674286
                  blt          t2, a0, 388f
                  xor          a1, zero, s6
                  andi         t4, tp, -962
                  srl          t4, t5, a0
                  bge          t1, s6, 394f
                  bltu         s0, s11, 399f
                  srli         a7, s2, 26
                  sltiu        t6, s3, -1710
                  lui          s3, 966787
388:              bge          t1, a5, 392f
                  srl          s3, t6, sp
                  ori          a7, t2, -802
                  sub          t4, t2, t1
392:              sll          s10, s3, s4
                  sra          s8, s5, t1
394:              srl          s0, a0, s8
                  sltiu        a1, s0, -201
                  srli         s4, s4, 27
                  lui          zero, 513282
                  sra          s10, tp, t2
399:              srai         a5, s11, 11
                  bge          s4, t5, 403f
                  bne          s6, ra, 409f
                  bge          tp, a3, 406f
403:              bge          s3, a5, 406f
                  slt          s6, s9, t3
                  sltiu        a7, a0, -993
406:              addi         s8, t5, -748
                  srli         s6, t2, 15
                  nop
409:              slti         s7, s3, 1419
                  beq          a3, s11, 430f
                  sub          s3, s2, s0
                  xor          tp, s11, s2
                  blt          s4, s10, 418f
                  sltiu        s8, s9, -1568
                  addi         s0, s6, -1156
                  sltiu        ra, s3, 105
                  nop
418:              sll          s8, t2, s2
                  srai         a1, s1, 5
                  bgeu         t0, s10, 440f
                  and          s10, s2, s6
                  bltu         t5, a4, 429f
                  nop
                  sub          s6, s1, s8
                  slli         s6, sp, 12
                  xori         s5, s11, 1706
                  bne          a7, s11, 437f
                  sra          ra, a0, s2
429:              or           s6, s10, zero
430:              srai         s1, a1, 13
                  sub          t1, s0, s4
                  beq          s10, s7, 452f
                  blt          gp, s5, 442f
                  bltu         a2, zero, 435f
435:              andi         t3, t4, -1294
                  slli         a5, s2, 21
437:              blt          a7, a5, 451f
                  slti         ra, sp, -382
                  bne          t1, s6, 443f
440:              and          s1, a4, t6
                  sra          s9, s11, s11
442:              auipc        s9, 764831
443:              ori          a0, t3, 123
                  ori          s1, t2, -1388
                  srai         t3, a6, 16
                  bne          s4, tp, 461f
                  addi         s2, s8, 305
                  add          t1, a7, t3
                  sltu         s1, zero, t6
                  andi         s10, s4, 12
451:              add          gp, s3, a1
452:              nop
                  sub          s11, a1, a2
                  slti         sp, s2, 1199
                  or           s4, s1, a4
                  srli         s0, a7, 6
                  sub          tp, t5, a0
                  lui          a4, 199959
                  srli         tp, s7, 22
                  srl          a5, s8, s2
461:              lui          s3, 816439
                  srai         t5, a4, 11
                  slt          gp, s3, gp
                  beq          t0, s6, 470f
                  srli         a6, a2, 24
                  xor          s2, a5, ra
                  bge          gp, t4, 484f
                  sltu         tp, s3, a0
                  sub          t1, s2, s4
470:              xor          t4, a3, s7
                  bltu         sp, a6, 486f
                  sltu         s11, a3, t2
                  xor          a6, t5, a1
                  bgeu         t4, a4, 485f
                  ori          s1, t0, -1172
                  auipc        sp, 835601
                  sltiu        s7, a7, 1199
                  nop
                  add          a4, a2, a4
                  sltiu        a7, a1, -1550
                  bge          a6, a0, 490f
                  xor          s5, tp, s8
                  xori         s8, s10, 1909
484:              srl          s8, a3, s7
485:              bgeu         t4, s3, 489f
486:              srli         s4, zero, 20
                  sra          s9, t1, s10
                  bgeu         s1, a2, 508f
489:              addi         t6, a1, -21
490:              sra          s4, t6, a3
                  lui          a1, 762
                  sub          a0, a5, t2
                  beq          a7, s2, 509f
                  add          a6, s10, a7
                  blt          a4, a0, 510f
                  addi         s8, tp, 1320
                  sltiu        s5, s3, -1432
                  ori          s6, s6, 1321
                  sub          s3, s5, s9
                  sub          gp, t4, a3
                  srli         s8, t5, 0
                  addi         s11, zero, -6 #init loop 1 counter
                  xor          a6, a7, t1
                  srl          s0, t5, a3
                  xori         s9, t5, 1217
                  andi         s10, t3, -1364
                  slli         gp, a5, 19
                  addi         s4, zero, -15 #init loop 1 limit
                  nop
                  srl          ra, a2, gp
                  or           a5, a3, a6
                  and          a6, t0, ra
                  add          a1, a4, tp
main_20_1_t:      and          sp, zero, t2
                  addi         s11, s11, -10 #update loop 1 counter
                  or           a1, ra, a5
                  addi         t5, zero, -1 #init loop 0 counter
                  sll          a5, gp, s10
                  addi         s8, zero, -19 #init loop 0 limit
main_20_0_t:      lui          ra, 316363
                  add          a6, ra, s3
                  or           a6, a6, a2
                  addi         t5, t5, -5 #update loop 0 counter
                  bge          t5, s8, main_20_0_t #branch for loop 0
                  bge          s11, s4, main_20_1_t #branch for loop 1
                  srai         s5, a3, 17
                  srl          a7, s1, a3
                  slt          s11, t3, t6
                  and          a1, s1, a6
                  srai         a4, a1, 21
                  sub          s9, s3, s2
                  sra          s9, s1, s11
508:              srai         s2, a0, 0
509:              slti         sp, a4, 1749
510:              srl          a5, a6, a2
                  bltu         s0, zero, 521f
                  srli         s2, s3, 8
                  slti         a5, a5, 1442
                  beq          a2, a6, 520f
                  srai         t5, sp, 5
                  nop
                  bltu         s3, a0, 532f
                  xori         s5, s11, 1907
                  srli         a1, t0, 30
520:              auipc        a0, 833492
521:              slti         a6, t1, -1953
                  or           t6, tp, sp
                  bgeu         a0, a3, 530f
                  srli         sp, t3, 12
                  xor          t3, a7, a6
                  xori         t1, t5, -1430
                  sll          s2, a0, sp
                  bne          s0, s3, 532f
                  slli         a1, a0, 2
530:              blt          a6, a3, 539f
                  sltiu        zero, t5, 772
532:              and          t4, sp, ra
                  lui          t3, 262692
                  slt          t1, s4, a6
                  and          t2, s6, s10
                  bge          t5, zero, 539f
                  sll          s1, t3, t0
                  and          a7, a4, s8
539:              sltu         tp, a1, ra
                  addi         s4, a7, 2003
                  ori          ra, s7, -960
                  addi         s11, gp, -1532
                  bgeu         t5, s3, 546f
                  bltu         s2, t5, 551f
                  auipc        t5, 474025
546:              bne          s4, t5, 563f
                  xor          s4, gp, a5
                  sltu         a0, a6, t2
                  srai         s1, s1, 23
                  slli         a5, t6, 19
551:              slli         sp, s0, 18
                  xori         t4, a4, -513
                  bltu         s10, gp, 573f
                  sltu         s5, s11, a1
                  srl          t1, s11, a4
                  bgeu         s8, t2, 559f
                  bne          t2, s0, 565f
                  andi         t4, gp, 1469
559:              sltiu        gp, t5, 1223
                  slli         s8, t2, 3
                  slti         a4, t2, -588
                  srli         a5, a3, 26
563:              srai         t1, s1, 31
                  srli         a6, t6, 30
565:              sll          s0, t3, s11
                  nop
                  nop
                  blt          a2, s3, 579f
                  bgeu         s11, gp, 576f
                  sra          a1, s10, sp
                  bge          s6, s11, 576f
                  srli         ra, t3, 11
573:              slli         zero, s4, 11
                  srl          s0, s10, s2
                  srai         a7, t0, 15
576:              beq          gp, t5, 577f
577:              sll          a4, s10, t2
                  slli         a1, t3, 28
579:              nop
                  and          t1, t4, a1
                  andi         s7, ra, -968
                  andi         a0, t2, -444
                  srai         s3, zero, 31
                  sltu         a6, zero, s1
                  sltiu        t5, s8, 1553
                  sll          a4, zero, s2
                  slt          s3, s9, zero
                  bgeu         s8, t3, 608f
                  or           s11, a5, s8
                  srli         s9, s7, 27
                  ori          sp, s8, 764
                  slti         t5, s9, 558
                  ori          a7, s8, 556
                  add          s2, s5, tp
                  bltu         a4, a3, 610f
                  srl          t6, s7, s2
                  lui          s7, 849868
                  sltu         ra, s10, t6
                  sltu         t4, t0, s0
                  xor          ra, a4, s7
                  beq          s3, t1, 610f
                  lui          s2, 73382
                  slti         a7, t6, 27
                  nop
                  beq          t5, a0, 609f
                  andi         s2, a6, 342
                  add          s6, sp, s1
608:              auipc        t4, 795267
609:              xori         s11, zero, 799
610:              blt          t5, t4, 630f
                  sra          t6, sp, s10
                  andi         t4, s10, -1379
                  blt          t4, s6, 627f
                  bltu         s6, s3, 623f
                  beq          a7, s0, 618f
                  bgeu         a1, t1, 636f
                  nop
618:              srli         t4, t5, 10
                  andi         tp, a2, 904
                  sub          s7, s11, ra
                  sll          s6, t4, s7
                  slti         s5, a0, 105
623:              xor          a7, s6, s11
                  and          t6, s11, tp
                  auipc        s0, 384422
                  nop
627:              srli         sp, t2, 3
                  slt          s5, a1, s3
                  slt          s2, a6, t6
630:              addi         a7, a0, -2042
                  bne          a3, t4, 646f
                  ori          t1, a5, -297
                  blt          a1, s10, 638f
                  slt          a0, s11, s0
                  srl          s11, a0, zero
636:              sra          t1, a0, sp
                  beq          a3, s2, 641f
638:              bne          a6, s8, 644f
                  sub          s11, t0, gp
                  sltu         a0, t6, a4
641:              beq          s5, t3, 642f
642:              andi         t6, s8, 1983
                  auipc        t2, 571290
644:              bltu         t4, t2, 651f
                  slt          s0, ra, t0
646:              srl          tp, gp, a5
                  or           s1, a1, a0
                  bgeu         gp, a3, 668f
                  sltu         s1, s4, t2
                  bltu         zero, s3, 654f
651:              bgeu         s10, s6, 665f
                  andi         t2, s7, -51
                  slli         t6, s2, 15
654:              srai         sp, a7, 20
                  srai         t1, zero, 5
                  or           tp, s4, s2
                  lui          sp, 600984
                  srli         s5, t1, 15
                  bgeu         t3, tp, 668f
                  bne          sp, zero, 664f
                  sll          s9, t0, t6
                  sra          s7, s6, s5
                  or           a6, a4, t3
664:              lui          t2, 135136
665:              or           a0, gp, s10
                  srl          s1, zero, zero
                  or           t3, sp, t0
668:              srai         t6, a1, 0
                  andi         t3, t5, -1150
                  addi         s10, s0, 1169
                  sra          t2, a0, t0
                  bgeu         t1, a4, 688f
                  slli         s11, a1, 23
                  bltu         a1, a2, 684f
                  blt          s3, t4, 690f
                  bge          s7, t0, 683f
                  lui          a6, 898038
                  addi         s6, s1, 1419
                  ori          sp, gp, -2015
                  auipc        zero, 664951
                  srl          s7, t4, t5
                  or           a5, t4, s0
683:              auipc        zero, 898538
684:              bltu         a2, s2, 687f
                  or           t3, s8, t0
                  srai         s9, a5, 29
687:              or           t3, s2, t2
688:              sltiu        s4, t3, -286
                  blt          s7, s11, 692f
690:              addi         a5, s8, 1306
                  sra          a4, t5, a4
692:              xori         t6, s10, -493
                  bge          s2, a7, 704f
                  auipc        t3, 880622
                  blt          s6, t3, 715f
                  bge          ra, a4, 713f
                  srl          a6, s6, a0
                  add          s1, t5, s8
                  ori          t4, s11, 1428
                  slli         s3, s4, 26
                  bgeu         s11, sp, 709f
                  sra          gp, a2, a5
                  slti         s1, s8, -443
704:              addi         a5, ra, 1372
                  slti         sp, sp, 496
                  slli         t5, s7, 24
                  auipc        s6, 58496
                  sltiu        t2, s2, -1117
709:              bltu         s9, zero, 720f
                  and          gp, t5, s8
                  lui          tp, 216357
                  beq          s11, s1, 732f
713:              lui          s11, 885103
                  sll          s10, s6, t1
715:              sll          s1, a2, s7
                  slli         s6, s0, 23
                  beq          ra, a5, 726f
                  auipc        s11, 147659
                  sltiu        s1, t2, 1181
720:              nop
                  sltiu        a6, a4, -1571
                  srli         gp, a1, 30
                  addi         a5, a7, 1152
                  addi         s9, zero, 9 #init loop 0 counter
                  sltiu        a7, t2, 827
                  and          ra, s11, s3
                  andi         t3, t1, -199
                  xor          s10, s1, s8
                  addi         s1, zero, 10 #init loop 0 limit
                  add          t3, t1, a6
main_14_0_t:      addi         t5, a6, 1915
                  or           s2, t1, s2
                  slli         a0, s4, 12
                  addi         s9, s9, 9 #update loop 0 counter
                  slt          a7, t0, ra
                  nop
                  lui          t4, 670603
                  blt          s9, s1, main_14_0_t #branch for loop 0
                  sra          gp, s7, s0
                  slt          a5, s10, a0
                  sub          s4, a7, a5
726:              srai         a7, a1, 6
                  sub          a4, a2, s11
                  srli         s11, s4, 11
                  slti         t1, a4, -1001
                  bgeu         s5, s2, 745f
                  sub          s0, sp, s6
732:              bgeu         a2, a3, 741f
                  blt          t2, s2, 740f
                  srai         s10, s9, 9
                  sll          s5, a2, s9
                  sra          a4, a7, s7
                  srai         s11, sp, 22
                  bgeu         a4, t2, 747f
                  sltiu        gp, s1, -1129
740:              slt          s10, t2, ra
741:              and          t4, t2, s7
                  xori         gp, a6, 1610
                  srl          ra, a0, a3
                  beq          a0, s6, 754f
745:              andi         gp, s11, -1799
                  auipc        s1, 227649
747:              xori         t5, s8, -452
                  bgeu         t4, s4, 757f
                  beq          s0, sp, 752f
                  xori         gp, s6, 527
                  blt          t1, t5, 767f
752:              sltiu        zero, gp, 1570
                  sltu         a7, t2, a5
754:              slti         s8, t6, -1371
                  beq          s0, a3, 775f
                  addi         tp, zero, 492
757:              slt          t5, zero, t5
                  bgeu         s7, t5, 761f
                  slt          t1, s6, s4
                  add          ra, s0, s6
761:              srl          a6, s9, t4
                  bltu         s6, t6, 763f
763:              bltu         s11, zero, 772f
                  lui          a5, 127818
                  xori         a7, a7, -1220
                  srai         a7, a2, 3
767:              sra          s6, s0, t1
                  ori          t3, s2, 931
                  and          zero, a4, t3
                  bge          s1, s9, 774f
                  bge          zero, t2, 780f
772:              srli         gp, a6, 12
                  ori          s0, s0, 381
774:              lui          ra, 1029321
775:              bge          sp, s10, 795f
                  nop
                  or           a7, a6, t3
                  blt          gp, a6, 798f
                  slli         s1, t0, 15
780:              slti         s7, s9, 1874
                  sub          s4, t1, s0
                  or           zero, s11, a5
                  sltiu        sp, s7, -506
                  bgeu         t5, s0, 788f
                  nop
                  sub          t1, zero, s5
                  slli         a5, zero, 3
788:              srli         a7, s3, 5
                  bne          a6, a2, 804f
                  xor          s5, s9, t1
                  addi         zero, a1, -1871
                  sub          t2, s10, a3
                  xor          s0, s11, s3
                  lui          s10, 1020286
795:              srli         s8, s7, 18
                  beq          s9, s8, 800f
                  sub          gp, a1, s4
798:              add          a0, a0, tp
                  xor          s7, t2, a7
800:              sub          t1, gp, s1
                  bltu         s6, a5, 812f
                  bge          t4, a4, 817f
                  sltiu        s4, zero, -1036
804:              lui          s7, 67235
                  auipc        a7, 532736
                  lui          t4, 404762
                  bltu         a1, t2, 818f
                  sltu         a6, gp, sp
                  addi         a0, sp, 1342
                  srli         sp, s3, 1
                  la           a4, sub_1
                  slt          a5, s7, s6
                  addi         a4, a4, 355
                  nop
                  sll          t6, a6, s0
                  slli         t2, s9, 8
                  andi         a1, s1, -1920
                  srli         a6, a1, 20
                  sra          s6, s3, a6
                  bltu         t3, tp, main_j3 #branch to jump instr
                  xor          ra, a0, s6
                  slli         a1, s8, 1
main_j3:          jalr         s3, a4, -355 #jump main -> sub_1
                  srl          zero, t4, s9
                  srai         s9, gp, 11
812:              ori          s1, a5, -714
                  sll          s0, s10, s7
                  nop
                  sltu         a1, a3, s10
                  srl          t5, a6, s6
817:              or           s9, s2, s6
818:              bgeu         zero, t5, 835f
                  bge          a4, t2, 839f
                  ori          gp, t1, 353
                  sub          tp, a1, a1
                  slli         s7, s11, 25
                  or           s2, sp, a4
                  bgeu         s7, s4, 833f
                  sra          s8, s6, s4
                  sltiu        t4, s0, -33
                  auipc        t5, 905664
                  xori         s11, a5, -1030
                  sll          tp, a4, s7
                  bgeu         ra, s8, 837f
                  ori          t3, t6, 1066
                  sltu         zero, s11, t4
833:              sll          t5, gp, s7
                  andi         t5, t1, 1882
835:              slti         s1, s6, 888
                  sub          s11, sp, s3
837:              add          t1, a6, a5
                  sra          tp, t3, a3
839:              xor          a0, t5, a2
                  xori         a6, t3, 904
                  sltiu        a1, s1, -1539
                  slti         s7, a6, -339
                  add          a1, a2, s11
                  beq          a5, t1, 859f
                  sub          t5, s8, a2
                  sra          s4, ra, s3
                  and          s6, s10, a5
                  slt          sp, s3, s4
                  sub          t1, t3, t2
                  la           s8, sub_4
                  nop
                  sltu         a7, s5, a1
                  xori         a0, t6, -1255
                  xor          s2, tp, a7
                  slti         s1, sp, 204
                  addi         s8, s8, 917
                  slt          t4, zero, a4
                  bltu         a6, a6, main_j1 #branch to jump instr
                  slli         tp, t5, 31
main_j1:          jalr         s3, s8, -916 #jump main -> sub_4
                  slt          s2, s5, a3
                  sll          s7, t4, ra
                  lui          a7, 108193
                  auipc        t2, 638741
                  addi         t5, t1, 287
                  sra          s11, a0, a0
                  add          s4, s8, s8
                  xori         t2, a5, -811
                  sub          t6, a7, s7
                  sltiu        s9, t0, 1970
859:              sll          a6, zero, ra
                  blt          t2, t0, 867f
                  srai         sp, s11, 14
                  sra          t6, a7, t5
                  bgeu         a3, zero, 871f
                  sub          s4, zero, s6
                  sra          s4, s9, zero
                  bltu         s8, tp, 869f
867:              bge          zero, a1, 872f
                  sra          a5, tp, t0
869:              srli         s2, t6, 11
                  or           s7, ra, s10
871:              srl          zero, a4, a3
872:              slli         s1, t1, 2
                  beq          a6, t2, 880f
                  slt          s8, s4, a4
                  slt          tp, zero, s5
                  bltu         t3, t1, 890f
                  srli         t3, a3, 31
                  slli         t5, a7, 9
                  sltiu        a6, a6, 787
880:              bgeu         t0, gp, 886f
                  sra          t4, a0, s1
                  lui          sp, 575844
                  add          a5, a2, t4
                  add          tp, a2, t5
                  add          a1, t3, a4
886:              bne          s9, t4, 900f
                  slti         t2, s2, 1569
                  slt          t2, t2, s1
                  blt          s6, s10, 900f
890:              slt          s6, s11, a0
                  nop
                  addi         a4, a3, 358
                  or           s2, gp, s6
                  xor          s8, s1, sp
                  bne          s7, s3, 904f
                  beq          a6, a1, 904f
                  bne          s3, zero, 907f
                  xori         s5, s8, 1789
                  auipc        a6, 769668
900:              lui          s6, 566718
                  andi         s0, a6, -1242
                  addi         a0, s6, -1303
                  bltu         t5, ra, 923f
904:              bne          s2, a2, 911f
                  sra          a4, gp, s10
                  nop
907:              xor          s8, s1, t4
                  slti         t3, s8, -1885
                  srai         t4, s10, 25
                  nop
911:              or           a7, t0, t0
                  srli         s4, s3, 12
                  addi         s6, zero, 0 #init loop 1 counter
                  ori          ra, s4, 173
                  addi         s0, zero, 13 #init loop 1 limit
                  slt          zero, t3, a5
main_17_1_t:      sltiu        gp, a2, 1868
                  addi         s6, s6, 9 #update loop 1 counter
                  addi         tp, zero, -3 #init loop 0 counter
                  sltu         ra, gp, s9
                  addi         s7, zero, -13 #init loop 0 limit
                  ori          s4, a6, 263
                  slti         s10, t0, 111
                  xor          s4, s5, t1
main_17_0_t:      sltu         a0, t1, a0
                  addi         tp, tp, -10 #update loop 0 counter
                  beq          tp, s7, main_17_0_t #branch for loop 0
                  sll          t5, t3, s11
                  sub          s8, a3, s1
                  srli         t4, s0, 16
                  blt          s6, s0, main_17_1_t #branch for loop 1
                  and          a0, t5, s4
                  and          s2, a2, t0
                  andi         t4, t4, 2043
                  lui          t1, 885659
                  bgeu         s11, a3, 931f
                  nop
                  sltiu        s0, a1, -1518
                  sub          s1, a0, a2
                  sltiu        a7, a5, -1989
                  sra          a4, a4, s4
                  sll          a6, s6, zero
923:              srai         gp, s11, 23
                  sub          a0, a2, a6
                  srl          a4, s8, a5
                  srli         s5, t0, 17
                  blt          s0, s7, 930f
                  beq          s10, a1, 937f
                  bltu         t4, s2, 940f
930:              sra          ra, a2, sp
931:              add          a5, s9, s2
                  or           tp, t0, zero
                  beq          s4, s0, 937f
                  sub          s10, tp, t3
                  bgeu         ra, a1, 936f
936:              bgeu         t2, a1, 952f
937:              bltu         a5, a7, 957f
                  slli         t5, s8, 20
                  addi         s0, t5, -1263
940:              or           gp, a7, s9
                  bge          sp, s1, 945f
                  auipc        t5, 614641
                  and          tp, a2, a3
                  sub          t1, t6, s8
945:              srai         s3, t6, 28
                  blt          a4, s0, 966f
                  or           t2, a0, sp
                  lui          sp, 971424
                  lui          t5, 438571
                  xor          t2, a5, a7
                  ori          ra, s3, -891
952:              sltiu        s1, a3, -1799
                  sub          s3, t2, a6
                  ori          s6, s3, 466
                  sub          sp, s7, zero
                  bltu         ra, s6, 973f
957:              auipc        s2, 818754
                  and          a1, a4, s11
                  slt          t2, a6, s3
                  lui          s1, 796348
                  bne          t6, s5, 965f
                  ori          t2, s10, 1578
                  nop
                  slti         s8, s3, 185
965:              blt          a6, a0, 968f
966:              sltiu        sp, s3, 1898
                  bne          s5, tp, 974f
968:              sll          t4, t5, t3
                  and          s7, s3, a3
                  slt          s7, a7, s7
                  bge          s8, a7, 980f
                  nop
973:              bgeu         s1, s0, 976f
974:              nop
                  xor          s9, s10, s4
976:              srli         gp, a5, 5
                  xor          a1, a0, s1
                  srli         s1, s0, 1
                  bne          t0, s2, 984f
980:              bge          s11, s8, 995f
                  ori          s4, sp, -400
                  auipc        t4, 494255
                  sltiu        a0, a3, -1596
984:              srli         zero, a3, 11
                  beq          t4, t3, 992f
                  bgeu         s10, s7, 1006f
                  addi         ra, t6, -1711
                  beq          s0, s10, 997f
                  blt          a7, a1, 1004f
                  beq          zero, t5, 996f
                  add          t2, s7, t5
992:              sra          s4, a2, s5
                  bne          a3, s5, 996f
                  sra          s1, s5, s11
995:              auipc        s0, 542997
996:              sll          s6, a5, t3
997:              bge          ra, s7, 1013f
                  beq          a2, t2, 1003f
                  bne          t6, s6, 1006f
                  xor          s10, s8, a6
                  sltu         t5, a7, t1
                  blt          s10, t6, 1009f
1003:             and          a0, t3, t5
1004:             bne          t3, s4, 1007f
                  auipc        a0, 798238
1006:             lui          s8, 40255
1007:             srai         zero, a6, 13
                  addi         s7, t4, -397
1009:             blt          s5, sp, 1029f
                  srli         a6, s4, 16
                  sltu         t4, sp, sp
                  srli         s4, a5, 13
1013:             and          t3, t2, a4
                  ori          a7, zero, 1032
                  sltiu        s10, a0, -1566
                  srai         tp, t1, 11
                  lui          t2, 158379
                  bltu         gp, zero, 1033f
                  bne          s0, s0, 1023f
                  sra          a0, s3, t3
                  sra          s11, a3, a4
                  beq          s11, t0, 1031f
1023:             sub          s10, s9, sp
                  srli         t2, ra, 13
                  xor          s3, t3, a3
                  bltu         t1, s1, 1033f
                  ori          a4, t5, 891
                  ori          t2, s1, 386
1029:             sub          s4, s6, s6
                  or           t3, tp, t6
1031:             xori         t2, t6, 1081
                  sub          s2, a6, s11
1033:             srl          s6, a1, s6
                  srai         s1, a3, 20
                  auipc        a6, 862963
                  bne          s10, s1, 1056f
                  addi         s9, a3, -561
                  beq          a3, s8, 1053f
                  xor          tp, sp, sp
                  auipc        zero, 1318
                  srli         s3, a5, 13
                  slti         s5, zero, 817
                  or           a0, s2, s3
                  sltu         t2, a6, t6
                  bne          s8, t6, 1056f
                  sra          t6, zero, zero
                  bgeu         t0, s8, 1061f
                  srli         s7, s0, 5
                  bge          a0, s0, 1058f
                  sra          s2, a2, t2
                  srli         a7, sp, 16
                  sub          tp, s7, a7
1053:             beq          s5, sp, 1061f
                  ori          s8, a4, 1331
                  bltu         tp, a2, 1061f
1056:             andi         s2, a7, -570
                  andi         s6, a1, -677
1058:             ori          ra, t6, -430
                  nop
                  srai         a7, s7, 14
1061:             or           s1, a7, s2
                  la x12, test_done
                  jalr x0, x12, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            srl          ra, s10, ra
                  addi         t0, t0, -20
                  sw           s3, 4(t0)
                  auipc        t3, 61105
                  srli         a4, tp, 16
                  lui          a6, 445192
                  srl          sp, a4, s1
                  srai         a1, t5, 21
                  addi         t6, zero, -5 #init loop 1 counter
                  srai         s8, a7, 20
                  addi         s6, zero, 15 #init loop 1 limit
                  auipc        s4, 740086
                  lui          tp, 144558
sub_2_1_1_t:      sub          t2, s10, sp
                  addi         t6, t6, 3 #update loop 1 counter
                  xor          s0, s7, a7
                  addi         s10, zero, 1 #init loop 0 counter
                  sll          sp, a2, s6
                  addi         gp, zero, 20 #init loop 0 limit
sub_2_1_0_t:      sltu         ra, sp, t0
                  slti         s5, t3, -263
                  addi         s10, s10, 10 #update loop 0 counter
                  sra          t5, s6, zero
                  slti         t1, s6, -846
                  and          s0, a0, a7
                  slti         a7, gp, 664
                  bltu         s10, gp, sub_2_1_0_t #branch for loop 0
                  sltiu        t1, s8, -971
                  srli         t2, s10, 1
                  bltu         t6, s6, sub_2_1_1_t #branch for loop 1
                  or           s8, a5, s0
                  srai         s6, s10, 1
                  slt          tp, a6, s11
                  srl          a0, zero, s1
                  srl          s6, zero, s5
                  sll          gp, a7, t5
                  slti         s10, t2, 532
                  bge          s4, t6, 26f
                  slli         t3, t1, 30
                  ori          zero, a4, 374
                  andi         t6, a2, -888
                  sltu         s11, a5, t3
                  or           t4, s10, s7
                  xor          t5, s0, t4
                  bgeu         s3, s11, 17f
                  sll          t3, s1, s8
                  slti         a7, s2, 5
                  slt          t6, s0, a0
17:               sltiu        s9, s2, -1984
                  ori          t2, s3, -1828
                  xor          s7, s8, t6
                  blt          a5, a0, 38f
                  bltu         a0, a6, 31f
                  sltiu        s7, t5, -559
                  bgeu         t6, tp, 36f
                  bltu         ra, t1, 32f
                  bltu         tp, t3, 44f
26:               or           t2, t3, a7
                  srai         t1, t1, 16
                  sra          a4, zero, s2
                  slti         t2, a4, 1426
                  srai         s1, t5, 21
31:               bgeu         t1, a3, 32f
32:               slti         s8, t1, -1146
                  slt          a5, t1, a0
                  srl          s10, s0, s11
                  nop
36:               sub          a6, a3, t3
                  sltiu        s5, a3, -221
38:               ori          tp, a0, -2029
                  sra          a6, t3, s5
                  add          s3, a0, s7
                  slt          a5, s8, s11
                  bgeu         s7, a3, 43f
43:               bgeu         t2, tp, 61f
44:               nop
                  beq          a1, t5, 56f
                  addi         t6, s5, -1691
                  lui          a7, 174402
                  sltu         s6, a6, t5
                  slt          a6, gp, t1
                  srai         a0, s11, 20
                  bltu         s9, s10, 62f
                  nop
                  beq          s7, a7, 66f
                  or           s7, s0, a5
                  and          tp, t5, gp
56:               bne          a5, sp, 60f
                  lui          t4, 732559
                  bgeu         a0, a6, 78f
                  sll          s4, s9, s3
60:               lui          s9, 286517
61:               slli         s4, t2, 15
62:               blt          ra, t1, 63f
63:               add          sp, s2, s9
                  auipc        sp, 764328
                  xori         s4, t1, -457
66:               xor          s11, a7, sp
                  xori         t3, s9, -242
                  nop
                  sltu         s11, s1, s9
                  nop
                  lui          t5, 118216
                  lui          s8, 536291
                  sub          t3, a3, t6
                  sub          a6, s0, a2
                  or           s0, s3, s6
                  nop
                  bge          s4, a2, 78f
78:               addi         zero, a7, 213
                  bltu         ra, tp, 99f
                  add          s11, sp, ra
                  auipc        t2, 819234
                  srl          ra, s1, t4
                  slli         s7, s8, 8
                  sltu         a7, gp, ra
                  bltu         a0, s2, 99f
                  auipc        a7, 255757
                  xor          a4, t2, t2
                  sra          s5, a5, s8
                  lui          s1, 59121
                  auipc        t5, 586276
                  sltiu        a4, t3, 686
                  srli         s9, tp, 11
                  add          s11, sp, a0
                  xor          s7, s4, s11
                  blt          zero, t0, 104f
                  srli         s9, a1, 18
                  srl          a7, s0, s8
                  lui          s10, 642167
99:               sltiu        s11, t4, -1094
                  bne          t2, s11, 101f
101:              srli         zero, a1, 9
                  sra          s8, s4, t5
                  nop
104:              sltu         a5, zero, a5
                  slti         a0, s2, -389
                  sra          t5, s4, gp
                  sltiu        s1, s10, 1619
                  sll          t4, s2, s2
                  srl          s10, sp, a3
                  lui          s4, 130514
                  lui          t2, 445546
                  sub          s11, zero, t5
                  srai         s2, a0, 27
                  bge          a7, t3, 122f
                  slt          tp, t6, t0
                  slt          a7, a5, s10
                  addi         t6, zero, 0 #init loop 1 counter
                  addi         t3, zero, 1 #init loop 1 limit
sub_2_0_1_t:      addi         s6, t4, -1931
                  addi         t6, t6, 8 #update loop 1 counter
                  auipc        s2, 551422
                  addi         s3, zero, -8 #init loop 0 counter
                  addi         t2, zero, 4 #init loop 0 limit
sub_2_0_0_t:      or           ra, t2, a6
                  addi         s3, s3, 10 #update loop 0 counter
                  blt          s3, t2, sub_2_0_0_t #branch for loop 0
                  bltu         t6, t3, sub_2_0_1_t #branch for loop 1
                  sub          a0, gp, a2
                  slli         t3, s11, 26
                  srl          s6, s9, s1
                  sub          s10, s2, s1
                  beq          s3, t3, 125f
                  nop
122:              and          s0, a5, a4
                  bge          s10, a5, 125f
                  srli         zero, s6, 26
125:              sra          a4, s11, a4
                  slti         t4, sp, -1797
                  srl          ra, t6, gp
                  lui          s1, 878250
                  srli         a0, s0, 5
                  add          a7, s1, t3
                  sra          sp, a2, tp
                  lw           s3, 4(t0)
                  addi         t0, t0, 20
                  xori         s2, s5, 176
178:              addi x4, x19, 0
178:              jalr x4, x4, 0
sub_3:            auipc        s10, 199428
                  and          s5, s10, a6
                  srai         a1, s11, 24
                  addi         t0, t0, -40
                  sw           s3, 4(t0)
                  sltiu        tp, t6, -11
                  slli         s7, s7, 10
                  auipc        s1, 138670
                  and          s7, t6, s11
                  srli         a5, a4, 12
                  slti         a0, s11, 584
                  addi         s0, zero, -3 #init loop 1 counter
                  andi         t6, s5, 1419
                  nop
                  addi         t4, zero, 19 #init loop 1 limit
                  srai         tp, a4, 7
                  srl          a6, s1, tp
sub_3_5_1_t:      lui          zero, 661743
                  addi         s0, s0, 5 #update loop 1 counter
                  addi         a7, zero, 3 #init loop 0 counter
                  addi         s6, zero, 14 #init loop 0 limit
                  auipc        s3, 968249
sub_3_5_0_t:      andi         t6, a0, -1340
                  addi         a7, a7, 6 #update loop 0 counter
                  xori         s5, s10, 1813
                  blt          a7, s6, sub_3_5_0_t #branch for loop 0
                  xori         a0, s6, 166
                  lui          t1, 143797
                  auipc        s11, 864906
                  slti         s10, tp, -1643
                  blt          s0, t4, sub_3_5_1_t #branch for loop 1
                  andi         s3, t4, 167
                  addi         s4, zero, -4 #init loop 0 counter
                  sltu         a4, s9, s0
                  addi         s0, a0, 1278
                  sub          t3, a7, a6
                  addi         ra, zero, 7 #init loop 0 limit
                  srai         a6, tp, 0
                  srai         s11, s10, 24
                  slt          t1, zero, a6
                  slli         s10, s4, 22
sub_3_2_0_t:      xori         t5, zero, -1109
                  srai         a0, s5, 10
                  lui          zero, 830510
                  nop
                  or           a4, s11, ra
                  sltiu        s8, s0, 1561
                  srl          tp, t4, t6
                  addi         s4, s4, 7 #update loop 0 counter
                  slti         tp, t3, -465
                  sub          s2, sp, s7
                  sll          a1, a2, s3
                  nop
                  andi         sp, zero, 1809
                  ori          s11, ra, 2035
                  and          t3, t2, s6
                  bltu         s4, ra, sub_3_2_0_t #branch for loop 0
                  xor          a7, s11, s5
                  addi         s4, zero, -4 #init loop 0 counter
                  sltu         a1, a5, t2
                  and          t2, a3, a7
                  sub          s5, s6, gp
                  and          t5, a4, s3
                  ori          s10, s9, 1286
                  srai         a4, zero, 12
                  auipc        t5, 927396
                  add          s6, s5, t1
                  addi         t3, zero, 8 #init loop 0 limit
                  ori          tp, t2, -873
                  nop
sub_3_0_0_t:      slti         gp, gp, 201
                  addi         s4, s4, 6 #update loop 0 counter
                  slli         s0, s7, 9
                  slli         a7, s11, 29
                  nop
                  srli         s8, t0, 13
                  srli         t5, s1, 12
                  sra          a6, s7, zero
                  andi         s7, t3, 776
                  srai         a5, s2, 2
                  bltu         s4, t3, sub_3_0_0_t #branch for loop 0
                  add          s7, s1, a2
                  addi         sp, zero, 6 #init loop 1 counter
                  andi         a5, s8, 849
                  sra          s4, t0, s5
                  sltu         tp, s5, s0
                  addi         t4, zero, 10 #init loop 1 limit
                  ori          t2, s5, 648
sub_3_8_1_t:      sltu         tp, a5, s8
                  nop
                  and          t2, s2, s10
                  and          s1, s1, s4
                  srli         t6, s4, 26
                  slti         t6, s6, -573
                  addi         sp, sp, 8 #update loop 1 counter
                  xori         s4, s0, 1716
                  addi         a0, zero, 6 #init loop 0 counter
                  addi         s3, s6, 761
                  addi         s0, zero, 5 #init loop 0 limit
sub_3_8_0_t:      andi         a6, s5, -406
                  addi         a0, a0, -5 #update loop 0 counter
                  bge          a0, s0, sub_3_8_0_t #branch for loop 0
                  sll          s7, ra, a2
                  bltu         sp, t4, sub_3_8_1_t #branch for loop 1
                  auipc        a1, 861827
                  addi         s6, zero, -9 #init loop 0 counter
                  slti         a4, sp, 1573
                  addi         a0, a4, -1808
                  xor          s3, sp, s0
                  addi         t4, zero, 15 #init loop 0 limit
                  slli         t5, t2, 9
sub_3_1_0_t:      sub          s7, a4, t5
                  addi         s6, s6, 6 #update loop 0 counter
                  addi         t3, gp, -259
                  srai         t3, s9, 5
                  slli         s2, sp, 1
                  blt          s6, t4, sub_3_1_0_t #branch for loop 0
                  lui          s9, 351304
                  addi         tp, zero, -6 #init loop 0 counter
                  srli         s6, s2, 26
                  sub          s3, t5, a1
                  addi         s4, zero, 18 #init loop 0 limit
                  sub          s0, a2, t1
                  slt          gp, s1, a3
                  lui          s1, 352152
                  srl          a6, gp, t4
sub_3_7_0_t:      lui          t1, 823349
                  addi         tp, tp, 3 #update loop 0 counter
                  auipc        a5, 389241
                  lui          ra, 556396
                  beq          tp, s4, sub_3_7_0_t #branch for loop 0
                  sub          s0, s8, s3
                  addi         s11, zero, -5 #init loop 0 counter
                  andi         a6, a7, -1246
                  andi         s3, a3, -1014
                  addi         a0, zero, -17 #init loop 0 limit
sub_3_6_0_t:      sltiu        s0, tp, 910
                  addi         s11, s11, -1 #update loop 0 counter
                  lui          s10, 308283
                  beq          s11, a0, sub_3_6_0_t #branch for loop 0
                  auipc        a1, 777656
                  slli         gp, a7, 14
                  ori          t5, a5, -720
                  bgeu         s9, a4, 19f
                  bltu         t6, sp, 5f
                  bgeu         a7, t4, 12f
5:                beq          t0, t6, 16f
                  and          t3, s4, t4
                  srl          a5, t5, a3
                  sub          t4, t4, t6
                  blt          s4, s2, 12f
                  srli         tp, s1, 18
                  add          gp, a0, t5
12:               slti         zero, a1, -1626
                  ori          s5, s0, 1596
                  sll          tp, s5, s2
                  andi         sp, t6, 760
16:               lui          s6, 1042709
                  auipc        s8, 940070
                  xori         s5, a0, 903
19:               sra          t6, t3, s9
                  auipc        t2, 629790
                  beq          s9, tp, 29f
                  sub          a6, t4, a1
                  addi         gp, s3, 315
                  sll          s0, a4, s9
                  andi         s1, zero, 1590
                  xori         tp, a0, -1434
                  slt          sp, s10, s1
                  sll          s8, t2, a0
29:               ori          s2, t0, 138
                  sll          a1, s0, t6
                  sra          a0, s5, a6
                  xor          s9, s3, gp
                  auipc        a5, 611148
                  xori         s3, t2, 41
                  lui          s0, 587904
                  and          s1, t3, t5
                  beq          s2, a1, 53f
                  bge          s5, a0, 53f
                  bne          a7, t4, 50f
                  slt          s7, s0, a7
                  srai         s6, t4, 7
                  sub          zero, a1, s0
                  auipc        a6, 903507
                  beq          t5, s10, 48f
                  beq          t0, s11, 65f
                  srai         a0, ra, 17
                  beq          s10, t6, 61f
48:               xor          sp, a6, a0
                  slti         zero, t5, -890
50:               sltiu        s7, sp, -1434
                  addi         tp, a1, 1207
                  sll          t5, t0, t0
53:               slt          s0, t4, s6
                  ori          s2, t2, 40
                  sra          s3, a4, t5
                  andi         sp, s6, 1510
                  andi         s11, a5, 248
                  xori         s10, s9, 454
                  and          s4, s2, s6
                  blt          ra, a4, 79f
61:               sll          a4, s10, s0
                  srai         s9, tp, 25
                  srli         a7, s0, 25
                  bltu         a5, s11, 72f
65:               ori          a5, s7, 1302
                  and          s5, tp, tp
                  xori         s9, zero, 1531
                  bltu         t0, s7, 73f
                  lui          s6, 353704
                  bge          a2, s5, 89f
                  addi         s11, a0, -1702
72:               sub          s1, a7, t3
73:               sltiu        s10, a4, -1693
                  and          s5, s10, gp
                  srai         s9, ra, 24
                  slt          t4, s6, a5
                  bge          a2, t4, 84f
                  slt          s6, s10, sp
79:               andi         s2, a1, -1324
                  bne          zero, a2, 85f
                  slti         s3, ra, 1917
                  addi         s2, s10, -332
                  slti         sp, a7, -1936
84:               bne          s6, t4, 86f
85:               sltiu        s9, a5, -1172
86:               addi         tp, a1, -754
                  andi         s1, t5, 1761
                  srl          gp, tp, s10
89:               or           t4, a0, a5
                  slti         ra, s7, -2045
                  srli         gp, ra, 30
                  xor          s3, s9, s1
                  sll          a5, t5, s9
                  sltu         a6, s9, s2
                  andi         s4, a4, 116
                  srl          sp, ra, a1
                  sra          s2, ra, s5
                  lui          s11, 692054
                  bltu         s8, s2, 117f
                  or           t1, s2, s11
                  bgeu         sp, t0, 118f
                  addi         gp, s11, -1072
                  addi         t1, t3, 1831
                  bltu         s4, a5, 105f
105:              or           ra, tp, t4
                  xori         ra, s1, 541
                  addi         t6, a4, 1480
                  slli         zero, s7, 24
                  add          tp, t2, sp
                  auipc        s8, 99972
                  sub          t3, s5, a0
                  srl          gp, a4, t0
                  sub          s3, s9, ra
                  nop
                  nop
                  blt          tp, a6, 127f
117:              andi         a6, a4, -1654
118:              sll          a5, tp, tp
                  and          s9, s0, s7
                  sltiu        a0, s9, -1451
                  addi         t3, t4, -1201
                  sll          a7, tp, s3
                  beq          gp, a6, 133f
                  add          t6, s2, s9
                  slli         a6, t3, 7
                  bltu         s5, s4, 135f
127:              lui          t2, 101263
                  slt          s6, s10, t5
                  and          gp, s8, s6
                  slti         s8, s1, 2046
                  bgeu         s7, s8, 141f
                  srli         s6, tp, 29
133:              lui          gp, 648172
                  bltu         t2, gp, 137f
135:              bge          gp, s1, 140f
                  bne          t6, t0, 156f
137:              addi         s2, s4, 370
                  lui          s6, 634654
                  bne          a7, t4, 145f
140:              add          s1, s10, s1
141:              srli         gp, s4, 6
                  sltiu        s6, a4, -633
                  xori         t5, a4, -588
                  beq          tp, a3, 151f
145:              or           s0, s6, s11
                  sub          t3, t5, s10
                  slt          t5, a5, s5
                  sll          a6, s2, s2
                  or           s8, a2, s11
                  or           s1, ra, t2
151:              bltu         s0, s7, 159f
                  bne          a2, tp, 162f
                  bgeu         s8, s5, 156f
                  andi         tp, s7, -949
                  add          s1, s4, t2
156:              auipc        tp, 429991
                  srli         s9, a2, 27
                  lui          s4, 167261
159:              slli         t2, a7, 22
                  bgeu         a7, a3, 162f
                  slt          s7, t5, tp
162:              blt          tp, t2, 181f
                  slli         ra, a0, 8
                  sltiu        a5, s2, 1717
                  bne          a0, a0, 182f
                  xori         s3, s11, 575
                  xor          a4, s7, tp
                  sltiu        a7, t6, 1970
                  srl          t5, s6, t6
                  bne          zero, a5, 181f
                  add          s5, t2, a4
                  slti         s6, tp, -972
                  add          s1, t0, t0
                  xor          s4, ra, a5
                  auipc        a4, 15800
                  bltu         t2, a6, 196f
                  and          tp, a4, t3
                  srli         t3, t3, 10
                  addi         s5, zero, 8 #init loop 0 counter
                  srl          s0, a4, s4
                  srai         a4, s3, 10
                  nop
                  nop
                  srai         s1, a0, 20
                  sll          ra, s3, s3
                  slli         a4, s2, 6
                  addi         s10, zero, 4 #init loop 0 limit
                  xori         a5, s9, -1393
sub_3_4_0_t:      sub          s9, s1, t4
                  addi         s5, s5, -1 #update loop 0 counter
                  bgeu         s5, s10, sub_3_4_0_t #branch for loop 0
                  add          a1, s6, s4
                  slti         s2, sp, 511
                  srl          s1, s2, t3
181:              nop
182:              and          gp, a3, s11
                  lui          sp, 479632
                  slti         s5, t4, 1370
                  bgeu         a6, a1, 196f
                  slli         s5, s5, 28
                  xor          s3, a3, s11
                  sltu         a6, s3, a5
                  bge          s11, s1, 195f
                  bltu         s0, t1, 191f
191:              add          gp, a1, s11
                  slli         t3, a1, 12
                  srl          a1, t5, a5
                  slt          t5, tp, t5
195:              ori          a4, t5, -127
196:              slti         t1, t4, 905
                  bltu         a1, s6, 202f
                  sra          t2, s2, s3
                  xor          tp, a6, gp
                  beq          s4, gp, 211f
                  xori         gp, a3, 267
202:              add          zero, a1, t3
                  sltu         s9, zero, t6
                  sub          t4, s5, s11
                  or           s3, t5, s5
                  bne          a4, a1, 221f
                  slt          a6, t1, s6
                  blt          s11, s5, 224f
                  lui          s6, 263684
                  slti         sp, a3, -356
211:              auipc        t6, 221105
                  sltiu        s11, a3, -1266
                  bltu         t3, t5, 233f
                  bgeu         s0, a1, 216f
                  add          s11, s8, a2
216:              bge          a4, s1, 235f
                  nop
                  srai         s11, s1, 2
                  and          s4, s8, t4
                  nop
221:              slli         s2, sp, 25
                  sltu         s9, s2, t1
                  sltu         a0, s9, s7
224:              sra          t2, ra, zero
                  beq          ra, s11, 230f
                  slli         a0, s1, 29
                  add          s11, s7, s3
                  or           gp, t4, s7
                  bge          t3, s5, 238f
230:              sra          tp, t3, s5
                  xor          a1, s4, a0
                  beq          s9, s2, 246f
233:              addi         s3, t1, -340
                  sll          a6, sp, s8
235:              slli         t3, t5, 29
                  sll          s1, t3, t0
                  sltiu        a4, t6, -835
238:              nop
                  sra          ra, a0, a4
                  xor          t1, a1, s8
                  bne          s4, t3, 258f
                  addi         gp, s2, 29
                  srl          s9, a7, a0
                  sltu         s2, t6, s2
                  xori         a7, tp, -830
246:              bge          a1, s5, 256f
                  sra          sp, s2, s10
                  bne          t2, t4, 251f
                  or           a0, sp, t4
                  slt          s1, s1, s2
251:              xori         s6, s4, -815
                  slli         s1, t0, 10
                  bgeu         t2, t1, 271f
                  srai         a7, zero, 12
                  bne          sp, ra, 259f
256:              srai         gp, s6, 4
                  beq          a6, a5, 265f
258:              lui          a1, 598070
259:              srai         s11, s2, 4
                  nop
                  sra          s1, t5, s1
                  srli         s1, t4, 28
                  nop
                  andi         a4, gp, 854
265:              sltu         t3, t3, t3
                  andi         t1, t3, -1715
                  ori          a7, a5, -1057
                  xor          s9, t2, t6
                  or           sp, s5, a1
                  ori          a7, t4, 255
271:              bge          s4, a2, 279f
                  bgeu         s2, t1, 277f
                  slli         a4, t6, 10
                  bgeu         t5, t4, 290f
                  sub          gp, a6, t6
                  nop
277:              sll          s10, a5, tp
                  blt          a4, a6, 281f
279:              auipc        s10, 450294
                  add          gp, s0, s11
281:              bltu         a0, t3, 287f
                  bne          s9, ra, 283f
283:              srai         s9, a2, 7
                  srl          s11, gp, s2
                  bgeu         s6, t2, 287f
                  sll          zero, sp, s3
287:              andi         s5, a6, 1573
                  nop
                  addi         s6, zero, 4 #init loop 1 counter
                  xor          tp, a6, a0
                  add          s1, s3, a1
                  slti         tp, a5, -1338
                  srai         s10, t1, 6
                  sltiu        a0, s9, 2
                  addi         a7, zero, -15 #init loop 1 limit
                  sltu         a5, s4, a7
                  xor          a5, a1, ra
sub_3_3_1_t:      xori         a6, a0, -553
                  xor          s1, ra, gp
                  slli         s9, a1, 6
                  slli         t5, a3, 5
                  addi         s6, s6, -1 #update loop 1 counter
                  sltu         t4, s3, s10
                  addi         a1, zero, 4 #init loop 0 counter
                  sll          s1, a7, a6
                  xori         ra, t2, 1693
                  sltu         a6, a4, s10
                  andi         s4, tp, -2018
                  addi         t6, zero, -14 #init loop 0 limit
sub_3_3_0_t:      and          gp, t2, s3
                  srl          zero, zero, s2
                  addi         a1, a1, -2 #update loop 0 counter
                  nop
                  bne          a1, t6, sub_3_3_0_t #branch for loop 0
                  or           s7, s8, a7
                  sub          s7, s1, a5
                  bne          s6, a7, sub_3_3_1_t #branch for loop 1
                  slt          a6, t2, a2
                  add          s4, t6, s3
290:              slt          a5, s8, s4
                  add          a1, s0, t4
                  bne          s8, s11, 310f
                  addi         a7, s11, 1529
                  nop
                  slt          ra, t5, t3
                  slti         t6, s3, 1950
                  sra          t5, s6, t4
                  bne          s4, tp, 303f
                  and          s8, s5, gp
                  sra          a6, sp, zero
                  slti         s4, s9, 474
                  srai         a0, a0, 28
303:              slti         s6, s3, 697
                  lui          s3, 884057
                  or           a4, s0, s1
                  sra          s2, s5, sp
                  slti         a5, s2, 945
                  bge          t3, s6, 317f
                  sltu         a1, s10, sp
310:              sll          s1, t2, t0
                  auipc        t4, 585251
                  lui          s8, 836809
                  sra          s6, s2, sp
                  ori          s8, s7, -1655
                  nop
                  addi         s8, s4, 209
317:              add          a4, s4, a4
                  srai         s4, a7, 21
                  auipc        a7, 460071
                  blt          t4, a2, 324f
                  srl          t1, t1, a2
                  auipc        zero, 792917
                  auipc        a4, 111742
324:              nop
                  xori         s2, s3, 1275
                  andi         a1, s11, -617
                  bge          s9, s11, 335f
                  sll          s9, s10, s6
                  srli         t3, t3, 18
                  slli         t2, s1, 30
                  bge          t2, zero, 351f
                  auipc        a4, 268222
                  slti         a5, t1, 170
                  ori          a6, a5, 1699
335:              beq          s5, sp, 345f
                  or           t2, t3, t4
                  bne          a2, s1, 352f
                  srl          s8, s3, t2
                  sub          s4, s9, s9
                  srai         s3, t5, 15
                  or           s3, t0, t0
                  sub          t5, tp, s10
                  auipc        s6, 808603
                  sll          t2, t1, a5
345:              addi         s11, a7, -953
                  xor          s0, t1, gp
                  beq          a6, t5, 354f
                  blt          s1, s10, 353f
                  srli         a5, t0, 25
                  sra          sp, t4, a6
351:              andi         s10, s8, 370
352:              bne          tp, t2, 371f
353:              sltu         s1, s1, t1
354:              xori         s8, s6, -1810
                  bge          t5, gp, 363f
                  sltiu        t6, a6, -2008
                  xor          s8, a6, t0
                  sltu         a0, s1, t0
                  xor          s7, s2, s9
                  bltu         tp, t2, 377f
                  ori          s7, t2, 783
                  lui          a0, 791765
363:              slt          t6, s0, gp
                  srl          s0, s11, t5
                  nop
                  andi         s7, t0, -1142
                  addi         s7, s6, 853
                  srai         a4, s9, 23
                  sll          t3, a4, a1
                  ori          tp, sp, 444
371:              and          sp, s3, t2
                  nop
                  lui          s8, 506631
                  bltu         s4, t3, 379f
                  or           sp, s6, s6
                  slti         a0, s3, 588
377:              slt          t4, t3, t4
                  bge          t6, s0, 389f
379:              sltiu        sp, s2, 303
                  or           s7, s6, s10
                  beq          s4, a3, 392f
                  bltu         s9, s7, 390f
                  srli         a1, zero, 11
                  add          t4, t0, gp
                  auipc        a6, 746382
                  srl          gp, a4, t5
                  sub          s9, a1, t1
                  blt          s2, a1, 398f
389:              srl          t2, s3, t0
390:              and          a5, t2, s10
                  auipc        t2, 33946
392:              slt          a7, zero, a2
                  and          s2, a6, tp
                  bne          a3, s2, 396f
                  andi         s9, a7, 975
396:              xori         gp, t0, 420
                  auipc        s4, 210182
398:              addi         t3, a6, 1335
                  slti         s5, a6, 1625
                  andi         t1, t3, 953
                  srli         sp, s2, 28
                  slli         s6, t0, 6
                  lui          s11, 181473
                  slti         s8, s1, -614
                  ori          tp, t6, -31
                  bgeu         s0, t5, 423f
                  bge          s5, s3, 427f
                  xor          s3, s4, a0
                  sltu         t5, a5, s6
                  bgeu         s9, a4, 421f
                  sltiu        t3, a4, -1298
                  beq          gp, t6, 415f
                  xor          tp, t1, s6
                  or           s2, s10, a0
415:              srli         s7, sp, 29
                  srai         s4, ra, 9
                  slli         t3, gp, 29
                  ori          s0, s2, -1747
                  and          t5, t2, s7
                  bge          t6, sp, 439f
421:              sra          s5, zero, a5
                  srai         t4, zero, 6
423:              ori          s3, a3, -2019
                  nop
                  ori          s10, s7, -34
                  beq          s9, a2, 440f
427:              sltiu        tp, tp, -792
                  andi         t2, s3, 1313
                  slti         s9, s6, 1851
                  sltiu        s5, a4, -547
                  xori         t6, s2, 584
                  bltu         s2, a1, 439f
                  bltu         a3, s7, 451f
                  or           s2, tp, sp
                  auipc        s2, 167551
                  bge          tp, s6, 446f
                  srai         tp, s11, 9
                  srl          zero, s3, s7
439:              sll          t5, tp, a6
440:              nop
                  bge          t1, t5, 452f
                  slli         a6, tp, 15
                  lui          s3, 907179
                  beq          a2, a4, 455f
                  slti         s5, t6, 685
446:              auipc        ra, 883265
                  or           ra, t1, s4
                  bltu         t3, t0, 452f
                  blt          s4, ra, 457f
                  bge          a3, a1, 451f
451:              slti         a7, s9, -1417
452:              srai         t5, a5, 4
                  xor          tp, t0, a0
                  add          t2, t5, s0
455:              bgeu         s0, s1, 457f
                  slt          s5, s0, t3
457:              and          t3, s5, tp
                  and          tp, s6, a6
                  sll          a4, t0, gp
                  srai         s6, s6, 30
                  add          s8, s2, t5
                  sll          s11, a2, s3
                  xori         s7, s7, -1238
                  sub          a6, zero, sp
                  addi         a4, s4, -1456
                  nop
                  lw           s3, 4(t0)
                  addi         t0, t0, 40
                  add          t1, a5, t2
                  addi         a6, a1, -1277
                  xori         t4, s8, 240
                  andi         s11, t2, 1622
658:              addi x30, x19, 1
658:              jalr x30, x30, 0
sub_1:            slti         s4, a1, 437
                  xori         t3, s9, -528
                  nop
                  addi         t0, t0, -28
                  lui          s5, 455725
                  sw           s3, 4(t0)
                  add          t1, a4, t6
                  slti         t1, s5, -594
                  srl          t1, t6, s1
                  and          s2, a5, a1
                  andi         s10, a7, 1981
                  addi         s11, zero, -3 #init loop 0 counter
                  srl          a7, a5, a5
                  or           tp, a7, a1
                  addi         s8, zero, 11 #init loop 0 limit
                  sltiu        s5, s5, 868
                  sub          s4, t2, a3
                  srl          zero, t6, s8
sub_1_1_0_t:      xori         a0, a6, -908
                  ori          t2, s5, 388
                  ori          s2, s6, 661
                  lui          a6, 707885
                  addi         s11, s11, 2 #update loop 0 counter
                  srai         t3, a7, 31
                  and          tp, a6, a5
                  andi         gp, tp, -965
                  srli         gp, a5, 16
                  slti         a4, s11, 194
                  sub          s0, s8, s3
                  blt          s11, s8, sub_1_1_0_t #branch for loop 0
                  addi         a0, a4, 783
                  addi         s11, zero, -8 #init loop 0 counter
                  sltiu        s6, a3, 1446
                  nop
                  addi         s8, zero, -18 #init loop 0 limit
                  ori          sp, a1, -953
                  sub          t1, zero, s5
                  srai         s5, s1, 4
                  add          a4, a7, sp
                  srl          a6, zero, a3
                  sll          ra, s10, a2
                  srli         s0, t5, 11
                  sub          a1, s5, t2
sub_1_2_0_t:      auipc        s2, 264624
                  auipc        a0, 260535
                  addi         s11, s11, -1 #update loop 0 counter
                  or           s6, a0, a1
                  andi         t1, a3, -1057
                  and          s2, a4, a1
                  sltiu        s9, t4, 654
                  nop
                  srl          t3, a4, s10
                  xor          a7, s11, a6
                  ori          a6, t1, 539
                  sll          s7, t0, s11
                  srl          s7, s10, s1
                  addi         a4, s5, 1321
                  slt          sp, s10, s1
                  bge          s11, s8, sub_1_2_0_t #branch for loop 0
                  srli         t5, s10, 24
                  addi         t1, zero, -2 #init loop 0 counter
                  srl          a4, ra, s3
                  addi         gp, s11, 1779
                  addi         tp, zero, 13 #init loop 0 limit
                  sltiu        t2, gp, -1287
sub_1_3_0_t:      slti         s4, tp, 105
                  addi         t1, t1, 3 #update loop 0 counter
                  nop
                  bne          t1, tp, sub_1_3_0_t #branch for loop 0
                  slt          s6, s7, tp
                  sltu         gp, a2, a6
                  and          s2, ra, s9
                  beq          t0, t5, 22f
                  xor          s8, a1, t4
                  srl          t4, t4, s0
                  slli         a4, s1, 15
                  slti         t3, t6, 1818
                  bne          a1, t3, 14f
                  nop
                  addi         s0, s5, 1982
                  addi         s7, s6, -1684
                  slti         a4, s5, 598
                  addi         s1, ra, 831
                  nop
14:               or           t6, t3, s6
                  addi         t1, zero, 7 #init loop 0 counter
                  sll          s1, zero, t5
                  srli         s7, s0, 18
                  or           a4, s6, a1
                  nop
                  srli         a7, s9, 13
                  sra          s5, s6, s6
                  addi         a0, zero, 6 #init loop 0 limit
                  sub          s8, s8, t1
                  xor          s9, a4, t5
                  andi         a7, s5, 1359
sub_1_0_0_t:      sltu         s0, tp, s1
                  auipc        gp, 166872
                  slli         sp, a5, 22
                  andi         a4, s0, 1086
                  andi         ra, s11, -1500
                  addi         t1, t1, -3 #update loop 0 counter
                  xor          s0, a6, a2
                  or           t6, a0, a5
                  bgeu         t1, a0, sub_1_0_0_t #branch for loop 0
                  srai         s8, a7, 26
                  srl          s9, a6, a6
                  sub          s5, t1, t2
                  beq          t1, s3, 35f
                  sltu         gp, s5, s6
                  slti         ra, s0, -1123
                  lui          zero, 265057
                  slt          s0, t0, a7
22:               bge          tp, t0, 31f
                  addi         s7, a3, -1026
                  ori          s6, zero, 734
                  slt          tp, s10, s5
                  sub          t3, s2, s0
                  bne          s5, t4, 36f
                  addi         s2, sp, -1283
                  sra          sp, s8, s1
                  sltiu        sp, a4, 85
31:               sub          tp, t1, s0
                  lui          s1, 654358
                  sltiu        ra, a5, 1189
                  sltu         sp, s2, s3
35:               and          s1, s8, s8
36:               sll          s3, s4, a0
                  sra          a4, t5, s4
                  srai         t3, a0, 3
                  addi         s3, zero, 0 #init loop 1 counter
                  addi         t2, zero, -16 #init loop 1 limit
sub_1_4_1_t:      sltu         t5, s4, t6
                  addi         s3, s3, -1 #update loop 1 counter
                  slti         s4, s6, 429
                  addi         a7, zero, 1 #init loop 0 counter
                  addi         sp, zero, -6 #init loop 0 limit
sub_1_4_0_t:      nop
                  addi         a7, a7, -10 #update loop 0 counter
                  andi         a6, sp, -540
                  bge          a7, sp, sub_1_4_0_t #branch for loop 0
                  bge          s3, t2, sub_1_4_1_t #branch for loop 1
                  sub          tp, a2, zero
                  addi         t6, s0, -539
                  bltu         a4, gp, 46f
                  srli         s0, sp, 2
                  sll          t5, s2, t1
                  bltu         t2, zero, 63f
                  sll          a7, a4, s9
                  xor          gp, s9, s8
46:               blt          t2, t2, 52f
                  lui          s9, 530240
                  sra          t6, s11, tp
                  sll          ra, s6, s9
                  slti         a5, s11, -144
                  sll          a0, a7, s3
52:               srai         s2, a3, 15
                  bge          a6, t2, 57f
                  blt          s3, t1, 68f
                  srli         t1, gp, 26
                  bgeu         s7, a7, 60f
57:               add          s10, s1, tp
                  nop
                  slti         t5, t5, -1546
60:               sltiu        s11, s1, -1446
                  lui          s11, 185962
                  xori         a5, a2, 1127
63:               ori          a4, s7, -966
                  or           s3, t2, ra
                  bltu         a7, a7, 67f
                  auipc        zero, 765568
67:               sra          s3, zero, tp
68:               nop
                  srl          s2, s6, s1
                  blt          a5, s2, 72f
                  slt          s9, s2, s6
72:               xori         s11, t6, -1299
                  xor          s6, tp, s11
                  lui          a6, 423223
                  sub          s0, t1, s9
                  nop
                  lui          t4, 601352
                  sra          zero, gp, ra
                  sll          ra, a4, a4
                  sltiu        a6, a5, 408
                  nop
                  auipc        a7, 348517
                  slt          t2, s0, t3
                  sltiu        a0, a7, -1530
                  beq          a0, t0, 88f
                  srai         t4, s10, 30
                  xor          s4, s0, ra
88:               sltu         s6, t3, s11
                  lui          s5, 363585
                  srl          t1, t6, s7
                  xor          a6, s6, a2
                  xor          sp, a6, s7
                  xori         a7, a1, -1322
                  bltu         t1, s4, 112f
                  slli         ra, s8, 30
                  slli         s10, a5, 6
                  slli         s11, s4, 17
                  andi         s2, s11, -1875
                  srl          t5, s6, t6
                  addi         a4, zero, 868
                  xori         t4, t6, -1512
                  slt          s10, sp, t2
                  beq          s2, t5, 109f
                  sltiu        ra, a3, -486
                  sll          s11, t1, t0
                  andi         zero, a3, -1332
                  sub          t3, s4, s9
                  or           a7, s6, s10
109:              srl          t1, s3, s7
                  blt          gp, s2, 111f
111:              slt          t4, ra, t2
112:              sll          t5, s10, t4
                  and          t1, gp, s6
                  lui          s2, 1028538
                  ori          t1, gp, -578
                  sltu         a5, t1, s4
                  sltu         s11, a1, s4
                  bge          a2, t0, 127f
                  sub          s11, t0, t4
                  blt          s5, gp, 133f
                  lui          s6, 433548
                  srl          sp, a6, s6
                  sltu         tp, tp, s8
                  slti         s10, zero, 246
                  auipc        a0, 1033996
                  auipc        s2, 268494
127:              srl          zero, a5, s10
                  or           s0, s2, s3
                  andi         t2, t2, -1093
                  bne          a1, t5, 138f
                  auipc        s10, 29067
                  andi         s9, a1, -728
133:              addi         a0, s2, 899
                  slti         s5, a5, 507
                  blt          a1, t5, 145f
                  sll          a6, a6, tp
                  srl          a7, sp, s3
138:              bltu         t3, a0, 155f
                  and          a7, tp, t6
                  sra          t6, a5, s1
                  srli         s4, t2, 10
                  bltu         t1, gp, 159f
                  xori         s10, t5, -378
                  srai         a7, t1, 7
145:              srli         gp, a7, 9
                  slti         t5, s0, -235
                  sra          t6, s2, s8
                  nop
                  bgeu         a5, s1, 165f
                  bgeu         ra, s8, 156f
                  and          a7, s8, tp
                  lui          t3, 786548
                  slt          ra, t0, a7
                  and          s2, zero, a6
155:              srai         s7, s11, 25
156:              sltiu        t3, ra, -754
                  ori          s9, s7, -1355
                  lui          gp, 488609
159:              srl          a0, sp, t0
                  sltiu        a6, t1, 1640
                  nop
                  srli         s2, t0, 27
                  and          t4, t3, s5
                  sra          s5, t1, s2
165:              nop
                  xori         s0, t2, 1467
                  bne          ra, s11, 168f
168:              addi         s2, t5, 860
                  blt          zero, s2, 172f
                  slt          gp, s1, t1
                  slti         s11, a1, 1811
172:              add          a1, a0, a3
                  lui          s1, 877423
                  andi         a6, tp, -648
                  slli         s0, t1, 26
                  lui          s10, 868600
                  slli         a1, s7, 10
                  sltiu        a1, tp, 969
                  slti         s3, s11, -25
                  addi         t4, t6, -1874
                  or           t5, gp, s0
                  slli         s10, t4, 8
                  ori          s2, tp, 1447
                  lui          s3, 627069
                  and          s9, t3, s10
                  auipc        a1, 286321
                  beq          s4, t6, 188f
188:              srai         s5, ra, 24
                  add          s2, s7, s2
                  srli         gp, s2, 27
                  nop
                  nop
                  slti         t4, a5, -1711
                  bge          sp, a0, 197f
                  sll          ra, s3, gp
                  bge          a6, gp, 206f
197:              sltu         t2, a3, s3
                  bltu         t4, s5, 201f
                  andi         a6, gp, 1210
                  or           s8, ra, t1
201:              blt          s8, tp, 207f
                  lui          a4, 635420
                  add          t4, zero, t6
                  or           t2, t4, tp
                  lui          sp, 225440
206:              sub          t4, a4, s5
207:              or           t1, s7, a2
                  srl          t6, t3, a6
                  add          s7, a0, s6
                  xor          t1, t5, t4
                  bne          s10, s9, 212f
212:              sll          s8, ra, a0
                  beq          t6, t3, 216f
                  bge          t3, sp, 231f
                  xori         t4, t3, -1566
216:              slt          s10, s1, s7
                  bge          a0, a2, 223f
                  xor          s9, t1, s4
                  blt          s6, t6, 223f
                  sra          s7, s3, s11
                  sll          a0, s6, a2
                  or           tp, s4, s9
223:              srai         s8, t4, 23
                  add          gp, s11, t6
                  sltiu        a0, ra, -483
                  slti         sp, t0, 1330
                  beq          a2, gp, 233f
                  bltu         t1, a4, 242f
                  blt          s2, t4, 238f
                  srai         a1, s8, 15
231:              nop
                  slti         s11, a0, 1941
233:              auipc        sp, 340992
                  sll          t6, t0, s9
                  bne          ra, a1, 236f
236:              srl          s7, t6, s8
                  sra          s6, s2, t4
238:              xor          t4, a2, t1
                  lui          a1, 389240
                  nop
                  add          s5, a6, a0
242:              addi         tp, a1, 1846
                  andi         ra, s4, -93
                  or           s9, tp, a0
                  xori         s5, a1, 368
                  beq          s10, s11, 249f
                  srai         sp, a2, 16
                  nop
249:              auipc        t3, 502717
                  sra          s1, s11, ra
                  sub          ra, s10, tp
                  sltiu        s2, s2, 1859
                  lw           s3, 4(t0)
                  addi         t3, s11, -870
                  auipc        s1, 1014589
                  sll          s2, s9, t4
                  addi         s11, a2, -1791
                  addi         t0, t0, 28
                  and          s6, t1, zero
                  and          t3, s6, a7
365:              addi x4, x19, 1
365:              jalr x4, x4, 0
sub_5:            blt          a5, s0, sub_5_stack_p
                  slli         t5, t0, 10
                  ori          a0, a5, 1019
                  slti         s1, sp, -95
                  slli         a6, s6, 10
sub_5_stack_p:    addi         t0, t0, -28
                  or           s7, a7, a7
                  ori          t1, zero, -585
                  sw           s3, 4(t0)
                  slt          a4, a5, tp
                  addi         s10, sp, -1037
                  addi         s2, zero, 10 #init loop 0 counter
                  xor          a0, s1, zero
                  addi         s7, zero, 6 #init loop 0 limit
                  auipc        s11, 635647
sub_5_0_0_t:      add          ra, t3, s1
                  addi         s2, s2, -5 #update loop 0 counter
                  sltu         t2, tp, a7
                  nop
                  bgeu         s2, s7, sub_5_0_0_t #branch for loop 0
                  slli         s4, s5, 3
                  xor          a4, t5, a7
                  sltu         ra, ra, t3
                  slti         s7, a7, -832
                  xori         s5, a0, 1583
                  bltu         a7, gp, 22f
                  lui          a5, 669684
                  slt          t3, a0, s7
                  bge          t4, s10, 21f
                  ori          t2, t6, 590
                  srli         tp, t1, 9
                  ori          gp, s8, 178
                  slli         t3, t0, 16
                  slli         s9, a3, 28
                  and          zero, a4, s6
                  sll          zero, s8, t0
                  and          a4, sp, t4
                  sll          t3, t3, ra
                  xor          s0, a6, gp
                  sltiu        a0, tp, 549
                  xor          s2, t0, a2
                  sub          t1, t5, a6
21:               slt          tp, a3, s0
22:               bgeu         zero, s5, 23f
23:               slli         s11, s9, 6
                  bltu         s9, s4, 27f
                  bge          ra, t6, 27f
                  auipc        t6, 987689
27:               slti         s3, t1, -437
                  srli         sp, gp, 3
                  xori         a0, s1, 1356
                  sra          s5, a1, s6
                  blt          s0, t5, 34f
                  slt          tp, zero, t3
                  sll          s10, ra, s6
34:               nop
                  or           t6, a1, a4
                  srai         s11, a2, 14
                  ori          t4, s10, 1705
                  andi         t6, t0, 1742
                  add          s5, s4, a1
                  sra          sp, s5, s5
                  sltu         s5, s4, s11
                  ori          t1, gp, -612
                  lui          zero, 165502
                  beq          zero, t1, 45f
45:               lui          a0, 988481
                  sltu         s10, t6, s1
                  andi         a4, t6, -1020
                  and          s6, s0, s4
                  slt          t2, s7, s5
                  nop
                  slli         tp, s7, 9
                  srai         s10, a4, 22
                  ori          s0, s0, -910
                  and          zero, t3, s10
                  sra          a1, s6, sp
                  srai         a5, s10, 22
                  sltu         s10, s1, s5
                  blt          s0, a3, 70f
                  xor          s1, s0, s11
                  srl          sp, a5, s6
                  srl          ra, s3, t6
                  srli         s6, a4, 6
                  srl          s2, s2, t5
                  addi         t5, a1, -1159
                  srli         a5, s10, 8
                  slt          t1, s9, s3
                  nop
                  bge          t0, s5, 69f
69:               xor          s11, s8, a2
70:               sll          s4, s6, a2
                  lw           s3, 4(t0)
                  slli         s2, s1, 25
                  lui          s11, 650219
                  addi         t0, t0, 28
                  sltu         a4, a6, t3
                  andi         gp, s1, 1062
                  sra          s2, a6, s0
                  slt          a5, s6, s6
100:              addi x3, x19, 0
100:              jalr x3, x3, 0
sub_4:            beq          s9, s6, sub_4_stack_p
                  srl          t2, s1, s5
sub_4_stack_p:    addi         t0, t0, -64
                  lui          sp, 469467
                  add          a5, s11, s3
                  xori         s1, s5, 1612
                  sll          s7, a0, a0
                  sw           s3, 4(t0)
                  sra          s7, a0, s11
                  srl          a0, s1, t0
                  add          t4, t6, s3
                  add          s4, t5, t3
                  or           a1, s5, s3
                  auipc        s5, 1011927
                  bgeu         zero, zero, sub_4_j5 #branch to jump instr
                  xor          s0, s8, s8
                  sltiu        tp, a1, -1162
                  and          a0, a5, s11
                  srai         a5, a1, 24
                  srli         s1, t1, 2
                  srl          s7, a5, zero
sub_4_j5:         jal          s3, sub_5 #jump sub_4 -> sub_5
                  xori         sp, s8, -141
                  sltu         a1, t1, s8
                  beq          s6, gp, 10f
                  sra          t5, tp, ra
                  sll          sp, t2, t3
                  nop
                  bltu         s0, s10, 15f
                  blt          t0, s7, 15f
                  sltiu        t2, gp, 882
                  and          gp, t6, ra
10:               nop
                  andi         s3, a7, -919
                  or           sp, s8, sp
                  bge          t0, t5, 15f
                  xor          gp, s1, s7
15:               sra          s3, s0, t3
                  slti         s8, s7, -1421
                  sltu         s8, s4, a1
                  or           t3, s2, s4
                  add          sp, s5, t3
                  lw           s3, 4(t0)
                  andi         ra, t5, 952
                  sll          s0, s4, s6
                  addi         t0, t0, 64
                  srli         s8, a6, 25
                  slti         a1, s2, -851
48:               addi x6, x19, 0
48:               jalr x6, x6, 0
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
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x13, x5, zero
                  csrr x15, 0x300 # MSTATUS
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 31
                  bne x15, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x15, 0x341 # MEPC
                  csrr x15, 0x342 # MCAUSE
                  li x25, 0x3 # BREAKPOINT
                  beq x15, x25, ebreak_handler
                  li x25, 0x8 # ECALL_UMODE
                  beq x15, x25, ecall_handler
                  li x25, 0x9 # ECALL_SMODE
                  beq x15, x25, ecall_handler
                  li x25, 0xb # ECALL_MMODE
                  beq x15, x25, ecall_handler
                  li x25, 0x1
                  beq x15, x25, instr_fault_handler
                  li x25, 0x5
                  beq x15, x25, load_fault_handler
                  li x25, 0x7
                  beq x15, x25, store_fault_handler
                  li x25, 0xc
                  beq x15, x25, pt_fault_handler
                  li x25, 0xd
                  beq x15, x25, pt_fault_handler
                  li x25, 0xf
                  beq x15, x25, pt_fault_handler
                  li x25, 0x2 # ILLEGAL_INSTRUCTION
                  beq x15, x25, illegal_instr_handler
                  csrr x25, 0x343 # MTVAL
                  1: la x12, test_done
                  jalr x1, x12, 0

ecall_handler:    
                  la x15, _start
                  sw x0, 0(x15)
                  sw x1, 4(x15)
                  sw x2, 8(x15)
                  sw x3, 12(x15)
                  sw x4, 16(x15)
                  sw x5, 20(x15)
                  sw x6, 24(x15)
                  sw x7, 28(x15)
                  sw x8, 32(x15)
                  sw x9, 36(x15)
                  sw x10, 40(x15)
                  sw x11, 44(x15)
                  sw x12, 48(x15)
                  sw x13, 52(x15)
                  sw x14, 56(x15)
                  sw x15, 60(x15)
                  sw x16, 64(x15)
                  sw x17, 68(x15)
                  sw x18, 72(x15)
                  sw x19, 76(x15)
                  sw x20, 80(x15)
                  sw x21, 84(x15)
                  sw x22, 88(x15)
                  sw x23, 92(x15)
                  sw x24, 96(x15)
                  sw x25, 100(x15)
                  sw x26, 104(x15)
                  sw x27, 108(x15)
                  sw x28, 112(x15)
                  sw x29, 116(x15)
                  sw x30, 120(x15)
                  sw x31, 124(x15)
                  la x12, write_tohost
                  jalr x0, x12, 0

instr_fault_handler:
                  add x5, x13, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

load_fault_handler:
                  add x5, x13, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

store_fault_handler:
                  add x5, x13, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

ebreak_handler:   
                  csrr  x15, 0x341
                  addi  x15, x15, 4
                  csrw  0x341, x15
                  add x5, x13, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

illegal_instr_handler:
                  csrr  x15, 0x341
                  addi  x15, x15, 4
                  csrw  0x341, x15
                  add x5, x13, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x15, 0x300 # MSTATUS;
                  csrr  x15, 0x304 # MIE;
                  csrr  x15, 0x344 # MIP;
                  csrrc x15, 0x344, x15 # MIP;
                  add x5, x13, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
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
