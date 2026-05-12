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
                  li x24, 0x40000100
                  csrw 0x301, x24
kernel_sp:        
                  la x27, kernel_stack_end

trap_vec_init:    
                  la x24, mtvec_handler
                  ori x24, x24, 0
                  csrw 0x305, x24 # MTVEC

mepc_setup:       
                  la x24, init
                  csrw 0x341, x24

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x24, 0x1800
                  csrw 0x300, x24 # MSTATUS
                  mret
init:             
                  li x0, 0xfa529695
                  li x1, 0x6
                  li x2, 0x0
                  li x3, 0x0
                  li x4, 0x1c7d9318
                  li x5, 0x80000000
                  li x6, 0x80000000
                  li x7, 0x851c5751
                  li x8, 0x0
                  li x9, 0x80000000
                  li x10, 0xfb0771dd
                  li x11, 0x0
                  li x12, 0x8
                  li x13, 0x80000000
                  li x14, 0xfff90f08
                  li x15, 0xfa51ed70
                  li x16, 0xb
                  li x17, 0xfa343f5b
                  li x18, 0x7
                  li x19, 0x80000000
                  li x20, 0xa6e22d10
                  li x21, 0x2
                  li x22, 0x0
                  li x23, 0x80000000
                  li x24, 0xf6fd1c4f
                  li x25, 0xfe7ba238
                  li x28, 0x450e1834
                  li x29, 0xc47c17bc
                  li x30, 0x0
                  li x31, 0x0
                  la x26, user_stack_end
main:             la           s5, sub_2
                  addi         s5, s5, -664
                  sra          a5, s0, s10
                  sll          zero, ra, t3
                  slt          zero, s4, a4
                  bge          t4, a5, main_j2 #branch to jump instr
                  andi         a3, a6, 935
                  sub          a1, a1, a1
                  sll          s3, tp, a0
                  sra          a7, a4, s9
main_j2:          jalr         t1, s5, 664 #jump main -> sub_2
                  addi         s1, zero, 10 #init loop 1 counter
                  or           s0, s0, gp
                  xori         tp, a0, -1607
                  slti         ra, t5, 1220
                  nop
                  addi         t6, gp, -828
                  addi         a7, zero, 1 #init loop 1 limit
                  xor          t0, t6, s6
main_20_1_t:      ori          s3, a2, 1837
                  addi         s1, s1, -3 #update loop 1 counter
                  sltiu        t6, gp, 970
                  sltu         zero, a4, a1
                  addi         gp, zero, 2 #init loop 0 counter
                  sra          s0, a3, ra
                  nop
                  addi         t3, zero, 4 #init loop 0 limit
                  sub          t1, ra, s9
                  sltiu        t0, s7, 1678
                  sub          a5, s0, t4
main_20_0_t:      andi         sp, a4, -2034
                  addi         gp, gp, 1 #update loop 0 counter
                  bltu         gp, t3, main_20_0_t #branch for loop 0
                  srli         s7, a7, 17
                  beq          s1, a7, main_20_1_t #branch for loop 1
                  nop
                  addi         s0, zero, -6 #init loop 1 counter
                  or           a3, t6, t3
                  addi         a0, zero, 7 #init loop 1 limit
main_11_1_t:      slti         gp, zero, -1759
                  srai         t0, s5, 11
                  addi         a3, a6, -90
                  xori         t0, a6, -156
                  addi         s0, s0, 5 #update loop 1 counter
                  and          t1, s10, a2
                  addi         s1, zero, 7 #init loop 0 counter
                  lui          t3, 418353
                  addi         a2, zero, 8 #init loop 0 limit
                  xori         tp, a3, 1727
                  sll          tp, t4, gp
                  add          s8, a5, sp
main_11_0_t:      ori          t1, t4, 265
                  sll          t4, s6, a7
                  addi         a4, t4, -1641
                  addi         s1, s1, 3 #update loop 0 counter
                  srl          t0, s10, t3
                  sub          s4, s3, gp
                  blt          s1, a2, main_11_0_t #branch for loop 0
                  srai         t2, s3, 7
                  blt          s0, a0, main_11_1_t #branch for loop 1
                  slli         gp, s6, 1
                  addi         a4, zero, 7 #init loop 1 counter
                  sltu         a5, s6, a3
                  slt          t3, s9, a3
                  ori          tp, a6, 697
                  and          t4, t4, s1
                  addi         a2, ra, 1280
                  addi         ra, zero, 7 #init loop 1 limit
main_1_1_t:       addi         s4, t0, -569
                  xor          s6, a7, s10
                  addi         a4, a4, -5 #update loop 1 counter
                  addi         t2, zero, 8 #init loop 0 counter
                  add          a6, s0, gp
                  sltiu        s7, sp, 677
                  addi         s5, sp, -1014
                  addi         t6, zero, -12 #init loop 0 limit
                  slli         sp, t0, 1
main_1_0_t:       sub          s5, s5, tp
                  slt          tp, gp, a5
                  lui          t0, 569317
                  addi         t2, t2, -4 #update loop 0 counter
                  beq          t2, t6, main_1_0_t #branch for loop 0
                  srl          s5, t5, s1
                  bgeu         a4, ra, main_1_1_t #branch for loop 1
                  xor          t4, zero, t4
                  addi         s4, zero, 10 #init loop 0 counter
                  addi         t0, zero, 10 #init loop 0 limit
main_9_0_t:       xor          t6, a5, zero
                  xor          a6, a6, t0
                  addi         s4, s4, -9 #update loop 0 counter
                  sltu         ra, t4, a6
                  sltu         ra, s7, s5
                  bgeu         s4, t0, main_9_0_t #branch for loop 0
                  sltiu        t4, ra, 969
                  addi         t0, zero, -1 #init loop 0 counter
                  add          s1, s2, t2
                  ori          t3, s5, -876
                  or           t6, s0, a0
                  addi         t1, zero, 9 #init loop 0 limit
                  add          t2, a0, t0
main_27_0_t:      xori         s8, a4, 1278
                  add          s0, zero, a7
                  nop
                  andi         t2, t6, 680
                  addi         t0, t0, 8 #update loop 0 counter
                  and          a3, s10, s11
                  blt          t0, t1, main_27_0_t #branch for loop 0
                  ori          a6, t3, 740
                  addi         a1, zero, 0 #init loop 1 counter
                  xor          zero, t0, tp
                  sltu         a2, s10, s7
                  addi         t1, zero, 18 #init loop 1 limit
main_23_1_t:      slt          a2, a7, a5
                  addi         a1, a1, 2 #update loop 1 counter
                  sll          a5, a6, t2
                  addi         s8, zero, -5 #init loop 0 counter
                  srl          t0, s8, s0
                  addi         t3, zero, -13 #init loop 0 limit
                  sub          zero, s1, a3
main_23_0_t:      or           gp, gp, s1
                  addi         s0, s4, -1913
                  addi         s8, s8, -1 #update loop 0 counter
                  slt          s1, a5, s5
                  bge          s8, t3, main_23_0_t #branch for loop 0
                  bne          a1, t1, main_23_1_t #branch for loop 1
                  ori          s3, gp, 1768
                  addi         a6, zero, 3 #init loop 1 counter
                  addi         gp, zero, 2 #init loop 1 limit
main_28_1_t:      xor          s0, t5, zero
                  sltiu        t2, a6, -2037
                  ori          t3, t3, -1586
                  andi         s9, t5, -986
                  or           a4, s1, s6
                  andi         t4, s10, -1049
                  addi         a7, s10, 614
                  nop
                  or           a3, s4, s11
                  addi         a6, a6, -3 #update loop 1 counter
                  add          s7, t5, s2
                  slli         ra, a1, 20
                  addi         t0, zero, 5 #init loop 0 counter
                  addi         a1, zero, 18 #init loop 0 limit
                  slt          s5, a3, gp
                  xor          a7, s7, t5
main_28_0_t:      slti         s7, s4, 1948
                  xori         s4, s3, 1724
                  addi         t0, t0, 7 #update loop 0 counter
                  sltu         s2, gp, s2
                  srai         s6, s6, 14
                  blt          t0, a1, main_28_0_t #branch for loop 0
                  bge          a6, gp, main_28_1_t #branch for loop 1
                  lui          tp, 787135
                  addi         sp, zero, 5 #init loop 0 counter
                  sra          t6, a7, zero
                  slli         s8, t4, 10
                  sltiu        s1, a4, 262
                  addi         a6, zero, -8 #init loop 0 limit
main_13_0_t:      xor          s9, t1, t3
                  ori          s8, a6, -196
                  addi         sp, sp, -8 #update loop 0 counter
                  sll          s6, t5, s4
                  bge          sp, a6, main_13_0_t #branch for loop 0
                  xor          a7, s2, s11
                  addi         tp, zero, -2 #init loop 0 counter
                  add          a2, s9, gp
                  lui          a3, 6648
                  addi         sp, zero, -11 #init loop 0 limit
                  and          s1, a1, s8
main_30_0_t:      xori         s9, a6, -773
                  lui          a1, 758436
                  addi         tp, tp, -3 #update loop 0 counter
                  bge          tp, sp, main_30_0_t #branch for loop 0
                  andi         ra, a3, -609
                  addi         s3, zero, 9 #init loop 1 counter
                  lui          s8, 703805
                  addi         s2, zero, 8 #init loop 1 limit
main_19_1_t:      add          s9, s3, s7
                  or           a1, a7, a0
                  lui          t1, 130634
                  or           a4, a0, gp
                  lui          s7, 709368
                  addi         s3, s3, -7 #update loop 1 counter
                  nop
                  nop
                  addi         s8, s0, -1505
                  or           t4, a2, sp
                  addi         a0, zero, 7 #init loop 0 counter
                  auipc        s4, 688683
                  addi         s5, zero, 15 #init loop 0 limit
                  lui          tp, 804714
main_19_0_t:      nop
                  nop
                  addi         a0, a0, 6 #update loop 0 counter
                  sub          a3, t3, a5
                  bltu         a0, s5, main_19_0_t #branch for loop 0
                  slt          a1, t2, zero
                  bgeu         s3, s2, main_19_1_t #branch for loop 1
                  andi         zero, a1, -1858
                  addi         a3, zero, 1 #init loop 0 counter
                  sltu         a7, s0, s9
                  addi         s1, zero, -8 #init loop 0 limit
main_24_0_t:      xori         tp, a2, 1786
                  or           tp, t3, a1
                  addi         a3, a3, -3 #update loop 0 counter
                  beq          a3, s1, main_24_0_t #branch for loop 0
                  add          t0, sp, a0
                  addi         s7, zero, 9 #init loop 0 counter
                  slt          a0, gp, s4
                  xor          a0, sp, a6
                  addi         a6, s6, -76
                  or           a6, t4, t4
                  addi         a2, zero, 6 #init loop 0 limit
                  nop
main_16_0_t:      nop
                  sltu         s4, s1, s1
                  sll          tp, a2, t4
                  lui          a3, 591151
                  nop
                  ori          s5, sp, 1763
                  sltiu        s1, s9, -1300
                  and          ra, s7, t1
                  addi         s7, s7, -4 #update loop 0 counter
                  xori         s2, a4, 60
                  slti         a6, s10, -617
                  sub          a6, a6, t6
                  xor          a4, s4, s0
                  xor          a0, zero, a3
                  srai         t0, s8, 23
                  bgeu         s7, a2, main_16_0_t #branch for loop 0
                  or           a7, a3, s6
                  addi         ra, zero, 9 #init loop 1 counter
                  xori         s8, a3, 734
                  addi         gp, zero, 7 #init loop 1 limit
main_21_1_t:      and          t1, t1, a2
                  slli         s8, a4, 18
                  xori         sp, a2, -1201
                  nop
                  addi         ra, ra, -6 #update loop 1 counter
                  addi         t2, sp, -1310
                  addi         t0, zero, -1 #init loop 0 counter
                  add          s5, s10, s4
                  auipc        s1, 437497
                  lui          s4, 290944
                  sll          t3, t5, a7
                  sub          zero, sp, t0
                  sra          s4, s8, s8
                  or           s1, zero, s5
                  addi         s3, zero, 6 #init loop 0 limit
main_21_0_t:      lui          a7, 516254
                  ori          s0, s8, 1069
                  addi         t0, t0, 7 #update loop 0 counter
                  beq          t0, s3, main_21_0_t #branch for loop 0
                  and          a5, t3, zero
                  xori         t1, t6, -1310
                  bge          ra, gp, main_21_1_t #branch for loop 1
                  or           zero, t1, sp
                  addi         t2, zero, 7 #init loop 1 counter
                  or           s6, gp, s5
                  sll          s6, a1, s7
                  slti         s4, t6, 1118
                  sub          a7, gp, ra
                  addi         s5, zero, -1 #init loop 1 limit
                  slt          ra, zero, t5
                  and          s9, t3, s2
                  sll          s0, s2, ra
                  sll          s6, s0, s10
main_5_1_t:       lui          t1, 982266
                  srli         a4, s2, 18
                  lui          a0, 344531
                  addi         t2, t2, -7 #update loop 1 counter
                  and          a4, a3, a2
                  addi         a6, zero, 7 #init loop 0 counter
                  ori          s3, ra, -1094
                  addi         s2, zero, -5 #init loop 0 limit
                  sra          t3, t2, t1
main_5_0_t:       slt          s1, s6, s3
                  addi         a6, a6, -2 #update loop 0 counter
                  sltiu        a4, a5, 1017
                  bge          a6, s2, main_5_0_t #branch for loop 0
                  and          tp, tp, gp
                  nop
                  bge          t2, s5, main_5_1_t #branch for loop 1
                  sltu         a1, sp, a1
                  addi         s8, zero, -7 #init loop 0 counter
                  or           t4, s11, s2
                  addi         a0, zero, -19 #init loop 0 limit
                  addi         t0, s9, -959
main_29_0_t:      sltu         a3, t6, a4
                  slt          s0, a0, a4
                  addi         s8, s8, -6 #update loop 0 counter
                  lui          a4, 345975
                  bne          s8, a0, main_29_0_t #branch for loop 0
                  sltiu        s0, gp, -168
                  addi         a2, zero, 9 #init loop 1 counter
                  or           s4, s3, a2
                  add          s4, s0, s0
                  addi         t2, zero, 9 #init loop 1 limit
                  sltu         s4, a1, s3
main_2_1_t:       or           a1, a2, s10
                  xor          t3, a5, a5
                  slti         sp, s9, 1669
                  and          t4, a4, t5
                  addi         s5, s0, 1897
                  addi         a2, a2, -7 #update loop 1 counter
                  sltiu        a1, t3, -1772
                  auipc        s5, 369436
                  srli         s4, a4, 12
                  addi         t0, zero, 9 #init loop 0 counter
                  sra          s0, zero, s0
                  srai         a3, t5, 3
                  addi         a5, zero, 8 #init loop 0 limit
                  slt          a6, s6, t6
main_2_0_t:       nop
                  ori          ra, ra, -1825
                  addi         t0, t0, -4 #update loop 0 counter
                  sub          s6, a7, s2
                  bge          t0, a5, main_2_0_t #branch for loop 0
                  sub          a4, tp, s2
                  bgeu         a2, t2, main_2_1_t #branch for loop 1
                  add          s7, a5, a3
                  addi         s0, zero, 10 #init loop 1 counter
                  slli         a5, a5, 29
                  and          s2, tp, t3
                  addi         a7, zero, 10 #init loop 1 limit
main_15_1_t:      sub          a3, s9, sp
                  andi         t6, t6, 769
                  addi         s0, s0, -1 #update loop 1 counter
                  addi         s8, zero, -6 #init loop 0 counter
                  sltiu        s3, s8, 795
                  addi         s5, zero, 6 #init loop 0 limit
                  srl          a0, t1, s3
main_15_0_t:      sub          zero, a2, a4
                  sltiu        t1, zero, -1860
                  addi         s8, s8, 6 #update loop 0 counter
                  srai         s4, tp, 24
                  bne          s8, s5, main_15_0_t #branch for loop 0
                  ori          a6, t3, -654
                  xor          t6, s0, s0
                  bgeu         s0, a7, main_15_1_t #branch for loop 1
                  add          s4, a5, a6
                  addi         ra, zero, -4 #init loop 0 counter
                  sltu         s1, ra, s8
                  xori         a6, t6, -367
                  auipc        t6, 495427
                  add          t6, s10, a5
                  addi         a4, zero, 19 #init loop 0 limit
                  srli         a1, s10, 3
main_25_0_t:      lui          s4, 593514
                  addi         ra, ra, 2 #update loop 0 counter
                  add          tp, t4, s11
                  or           t3, a0, a7
                  andi         a0, s3, -1286
                  srai         a3, t3, 6
                  slt          s2, t4, tp
                  auipc        t4, 889713
                  blt          ra, a4, main_25_0_t #branch for loop 0
                  lui          t2, 776261
                  addi         s1, zero, 1 #init loop 1 counter
                  addi         s7, zero, 16 #init loop 1 limit
                  sltiu        zero, a4, -648
main_10_1_t:      xor          t1, s7, gp
                  addi         s1, s1, 1 #update loop 1 counter
                  addi         a5, zero, 10 #init loop 0 counter
                  sub          s9, s6, a3
                  addi         s8, zero, 10 #init loop 0 limit
main_10_0_t:      xori         a7, s9, 214
                  addi         a5, a5, -6 #update loop 0 counter
                  lui          t3, 966553
                  bgeu         a5, s8, main_10_0_t #branch for loop 0
                  bltu         s1, s7, main_10_1_t #branch for loop 1
                  srl          t6, s8, s4
                  addi         a5, zero, -5 #init loop 0 counter
                  sll          a3, s11, t3
                  nop
                  xor          s7, tp, s0
                  sltu         ra, s5, t2
                  addi         s6, zero, 4 #init loop 0 limit
                  sltu         t6, s0, t0
                  srai         a0, s4, 11
                  addi         s8, s2, 876
                  and          a3, s5, t6
                  lui          s2, 627414
                  and          t4, a4, s0
                  lui          s0, 946317
                  sra          s5, s7, a0
                  xor          s3, s10, a3
                  srli         s4, a6, 27
                  addi         s0, a2, 1986
                  auipc        t2, 824278
main_31_0_t:      addi         t6, a4, 1091
                  addi         a5, a5, 5 #update loop 0 counter
                  andi         s7, a0, -1276
                  sub          a4, zero, tp
                  andi         a6, tp, 1813
                  add          s4, t2, s5
                  sub          sp, t6, s0
                  sra          zero, t1, s1
                  slt          a3, gp, t0
                  nop
                  blt          a5, s6, main_31_0_t #branch for loop 0
                  srli         t1, a4, 9
                  addi         s3, zero, -4 #init loop 1 counter
                  addi         gp, zero, -13 #init loop 1 limit
main_6_1_t:       xori         s6, t5, -1898
                  nop
                  addi         s3, s3, -1 #update loop 1 counter
                  xor          a5, t3, tp
                  addi         s5, zero, -3 #init loop 0 counter
                  srai         s7, s2, 20
                  slli         s0, s1, 13
                  srl          t2, zero, s1
                  addi         s8, zero, -13 #init loop 0 limit
main_6_0_t:       auipc        t0, 487358
                  nop
                  sltiu        ra, s5, -441
                  addi         s5, s5, -10 #update loop 0 counter
                  slt          a0, t6, t6
                  bne          s5, s8, main_6_0_t #branch for loop 0
                  lui          ra, 238109
                  bge          s3, gp, main_6_1_t #branch for loop 1
                  sltiu        t1, a7, 1241
                  addi         t1, zero, 10 #init loop 1 counter
                  ori          s0, a1, 469
                  sub          a5, zero, t5
                  addi         s7, zero, 20 #init loop 1 limit
                  and          a6, a1, a1
                  slti         a7, t6, 1115
                  slti         a4, a1, 925
                  slli         a7, s2, 14
                  srli         a1, t1, 12
main_7_1_t:       slt          t4, t5, gp
                  addi         t1, t1, 7 #update loop 1 counter
                  andi         a6, s5, 1586
                  slli         a0, a2, 22
                  slli         a0, a4, 8
                  addi         s1, zero, -8 #init loop 0 counter
                  addi         tp, zero, 12 #init loop 0 limit
                  srai         s2, gp, 3
main_7_0_t:       auipc        s4, 578324
                  sra          a6, a4, s8
                  addi         s1, s1, 8 #update loop 0 counter
                  addi         a7, s7, 835
                  blt          s1, tp, main_7_0_t #branch for loop 0
                  slt          a5, s4, ra
                  blt          t1, s7, main_7_1_t #branch for loop 1
                  or           a4, tp, tp
                  addi         a7, zero, -1 #init loop 1 counter
                  nop
                  addi         s3, zero, 8 #init loop 1 limit
                  srai         s1, tp, 29
main_4_1_t:       add          s7, a4, t4
                  addi         a7, a7, 8 #update loop 1 counter
                  addi         gp, zero, 9 #init loop 0 counter
                  addi         sp, zero, 15 #init loop 0 limit
                  add          s1, s11, sp
main_4_0_t:       and          s0, tp, a2
                  addi         gp, gp, 6 #update loop 0 counter
                  srli         a6, t1, 10
                  bne          gp, sp, main_4_0_t #branch for loop 0
                  srli         a4, ra, 22
                  bltu         a7, s3, main_4_1_t #branch for loop 1
                  add          a2, t1, t4
                  addi         s9, zero, 9 #init loop 1 counter
                  ori          a6, a7, -1462
                  slti         t0, zero, -873
                  addi         s1, zero, 9 #init loop 1 limit
main_3_1_t:       nop
                  andi         s8, t0, -2019
                  addi         s9, s9, -6 #update loop 1 counter
                  sltiu        ra, a7, -1457
                  addi         s7, zero, 5 #init loop 0 counter
                  addi         a6, a6, -1712
                  addi         s4, zero, 5 #init loop 0 limit
                  sltiu        s3, t6, 488
main_3_0_t:       slti         t0, tp, 1667
                  srl          t6, s3, s11
                  addi         s7, s7, -4 #update loop 0 counter
                  sub          tp, s2, a6
                  srl          t1, t3, s2
                  bgeu         s7, s4, main_3_0_t #branch for loop 0
                  sltiu        t3, s6, -1611
                  srli         a6, s8, 24
                  slti         sp, t0, -648
                  bgeu         s9, s1, main_3_1_t #branch for loop 1
                  sra          t1, t0, a3
                  addi         a1, zero, -3 #init loop 1 counter
                  addi         a5, zero, -14 #init loop 1 limit
                  slli         s7, sp, 19
main_22_1_t:      xor          s1, a4, s1
                  addi         a1, a1, -4 #update loop 1 counter
                  addi         s4, zero, 4 #init loop 0 counter
                  sltiu        s3, t1, 1390
                  andi         a3, s7, -1957
                  addi         a7, zero, -18 #init loop 0 limit
                  srli         s3, s0, 26
main_22_0_t:      nop
                  addi         s4, s4, -1 #update loop 0 counter
                  nop
                  bge          s4, a7, main_22_0_t #branch for loop 0
                  andi         s2, a5, 1969
                  xor          zero, s2, a2
                  bge          a1, a5, main_22_1_t #branch for loop 1
                  sll          t6, a2, sp
                  addi         a4, zero, -4 #init loop 1 counter
                  xor          tp, t1, s5
                  sub          s3, s0, t4
                  xor          s9, a1, t4
                  addi         t3, zero, -7 #init loop 1 limit
                  sra          t1, t2, tp
main_17_1_t:      slt          t4, t5, t4
                  addi         a4, a4, -6 #update loop 1 counter
                  addi         s6, zero, 3 #init loop 0 counter
                  slt          t6, a3, tp
                  addi         sp, zero, 1 #init loop 0 limit
                  nop
                  add          ra, s7, t4
                  and          ra, a5, zero
main_17_0_t:      sltu         s4, t5, s4
                  sll          t4, s0, t2
                  srai         a7, s3, 15
                  addi         s6, s6, -10 #update loop 0 counter
                  addi         a3, s6, 1786
                  lui          s0, 712894
                  bge          s6, sp, main_17_0_t #branch for loop 0
                  srai         a1, a5, 3
                  bge          a4, t3, main_17_1_t #branch for loop 1
                  and          ra, gp, a4
                  addi         ra, zero, 8 #init loop 1 counter
                  xor          a5, t3, s6
                  and          t3, s9, s6
                  addi         s5, zero, 20 #init loop 1 limit
main_0_1_t:       lui          t2, 549404
                  nop
                  sltu         t3, s1, sp
                  addi         ra, ra, 7 #update loop 1 counter
                  addi         t4, zero, -4 #init loop 0 counter
                  or           a7, s4, s0
                  addi         s4, zero, 19 #init loop 0 limit
                  ori          a7, t1, 1808
                  srli         t3, tp, 19
                  andi         gp, s11, 2045
main_0_0_t:       lui          s8, 116352
                  addi         t4, t4, 5 #update loop 0 counter
                  srli         tp, s9, 24
                  srl          sp, t0, t3
                  xori         a6, s5, 85
                  blt          t4, s4, main_0_0_t #branch for loop 0
                  lui          s6, 919555
                  blt          ra, s5, main_0_1_t #branch for loop 1
                  xor          t6, s2, t4
                  add          t2, zero, t6
                  nop
                  or           t1, a1, s4
                  nop
                  sltu         s1, t1, tp
                  bgeu         s1, s3, 21f
                  sub          a6, t4, a0
                  addi         a4, s4, -1593
                  srli         s0, t3, 22
                  slli         a7, a7, 4
                  srai         tp, s8, 11
                  bltu         s6, a2, 25f
                  andi         t3, t0, 909
                  addi         t6, s6, 490
                  srai         s1, s9, 0
                  slt          a3, a2, t2
                  andi         a5, sp, 242
                  ori          s5, s6, -124
                  lui          s9, 1146
                  beq          a4, s6, 21f
                  lui          s9, 180494
21:               srli         t1, s8, 20
                  sltu         a1, s8, s5
                  sub          s4, gp, a5
                  sll          a0, t2, a1
25:               lui          a6, 1026622
                  beq          s3, s2, 40f
                  bltu         a1, t4, 37f
                  bne          t3, a5, 47f
                  slt          a5, s6, t1
                  bne          a3, s9, 44f
                  nop
                  or           s6, s10, s10
                  xor          s1, a1, sp
                  slti         a5, t6, 1390
                  and          ra, s4, a3
                  add          t6, a3, s0
37:               lui          s3, 369801
                  blt          s1, s1, 57f
                  sub          zero, a0, sp
40:               or           t6, a3, a2
                  and          s6, s6, a5
                  bgeu         a6, a1, 60f
                  bgeu         s1, gp, 44f
44:               srai         a5, gp, 28
                  srli         t1, t5, 7
                  xor          a6, t6, t6
47:               xori         t4, s1, -866
                  add          t3, s3, s2
                  ori          tp, t3, 1397
                  beq          s7, ra, 70f
                  bge          s10, a4, 61f
                  slti         s7, t3, 1561
                  bge          a6, a3, 60f
                  blt          a2, s8, 58f
                  srai         s8, s3, 30
                  sra          s1, a7, tp
57:               sltiu        s7, a7, -2001
58:               bne          s1, s1, 77f
                  srai         a7, t1, 5
60:               add          s8, t1, s5
61:               sll          a2, a4, s7
                  sra          s0, t0, ra
                  andi         ra, tp, -1163
                  beq          s4, a1, 71f
                  ori          t4, t3, 564
                  srli         t3, t0, 9
                  xor          t1, s11, t1
                  xor          a0, s1, s9
                  sll          gp, t6, a5
70:               ori          s7, sp, -1767
71:               ori          s8, a0, 1364
                  add          s8, s6, s2
                  ori          s4, t3, -193
                  ori          t0, s10, -1155
                  bgeu         gp, a1, 93f
                  srli         s6, s6, 12
77:               ori          ra, a0, -1257
                  or           t1, s5, s4
                  bge          a5, s3, 80f
80:               slli         a7, a6, 8
                  xor          t0, a1, s10
                  addi         t6, ra, -73
                  andi         a5, a7, 1756
                  nop
                  and          s5, s8, a1
                  lui          s3, 665722
                  beq          t0, s3, 98f
                  auipc        s0, 704373
                  bltu         s6, a6, 98f
                  sub          a5, s10, zero
                  sra          sp, sp, t5
                  bgeu         t4, s1, 106f
93:               lui          s6, 396721
                  bltu         s7, s5, 112f
                  or           sp, s3, t4
                  srli         t4, a0, 15
                  sra          a6, s10, s9
98:               auipc        gp, 4488
                  auipc        s2, 579197
                  addi         t3, s1, -441
                  nop
                  xori         s3, a3, -544
                  ori          s8, tp, -500
                  addi         sp, t3, 458
                  beq          a7, sp, 107f
106:              srl          s9, gp, sp
107:              sll          a7, s5, t3
                  srai         s7, a1, 29
                  sra          t4, s10, zero
                  ori          s6, a4, 1274
                  auipc        s1, 867899
112:              slti         s5, a3, 1199
                  sra          s5, t3, s9
                  sra          a5, s5, a3
                  bltu         s5, zero, 134f
                  nop
                  or           t0, gp, s9
                  addi         sp, s8, 1716
                  bltu         t0, s11, 131f
                  slt          s5, s3, a7
                  blt          s8, t3, 123f
                  bgeu         tp, s2, 125f
123:              xori         a0, a1, -1383
                  xor          t4, s2, t0
125:              sll          tp, s5, a0
                  add          t2, a7, a4
                  blt          t0, t6, 145f
                  lui          t2, 855726
                  sltu         s0, t0, s8
                  sub          s8, s0, s10
131:              sltu         a7, s6, s9
                  or           t4, gp, t6
                  srli         a2, s3, 15
134:              lui          a6, 428067
                  slli         s0, s11, 2
                  addi         a3, ra, 391
                  ori          s4, a2, 1405
                  add          t1, s5, a2
                  bge          a5, a2, 144f
                  nop
                  and          a3, s1, a1
                  nop
                  srl          s4, a6, s10
144:              and          s5, a5, s2
145:              sltiu        a6, t6, 71
                  sltu         sp, s8, s1
                  sub          s1, ra, t4
                  xor          t3, s8, a1
                  add          s4, a5, s10
                  and          zero, s10, zero
                  auipc        s3, 642692
                  srl          t4, s3, t4
                  srai         t3, t0, 2
                  and          sp, s10, sp
                  addi         a1, a0, 1155
                  addi         t3, a1, -955
                  ori          a0, t3, 1315
                  nop
                  xor          t6, s1, sp
                  sra          gp, gp, a5
                  or           sp, t2, t5
                  slli         a2, t0, 19
                  andi         gp, s10, 1910
                  andi         gp, s5, 1085
                  slt          t2, a7, t2
                  slli         s7, a2, 2
                  slli         t1, t4, 4
                  slt          t0, t2, a6
                  lui          a5, 953432
                  lui          sp, 528240
                  beq          tp, a2, 180f
                  beq          s8, t1, 182f
                  sub          s1, s6, t6
                  slti         t1, s9, 764
                  bge          s9, sp, 180f
                  addi         s9, t5, 852
                  bne          t4, a7, 179f
                  sub          a6, a3, s7
179:              bgeu         a7, s4, 197f
180:              slt          t6, tp, s6
                  bne          t0, a6, 199f
182:              bne          s8, t1, 196f
                  blt          a7, a2, 190f
                  sltiu        t0, s11, -1950
                  sltiu        tp, t3, 912
                  bltu         s10, s11, 198f
                  srl          sp, s7, gp
                  blt          t4, a3, 190f
                  lui          t2, 388645
190:              and          t0, tp, a5
                  bgeu         t2, s11, 205f
                  slti         a0, s0, 1637
                  xori         s5, s6, -1676
                  bge          s0, s9, 197f
                  beq          s7, a2, 215f
196:              xor          s0, t0, s7
197:              addi         a0, t4, -637
198:              bge          t1, sp, 208f
199:              slt          a0, tp, s4
                  blt          a0, s8, 202f
                  addi         sp, a3, 1157
202:              sub          s5, t6, s8
                  or           s9, s2, s6
                  blt          s2, s0, 208f
205:              or           t4, sp, s8
                  xor          a3, t4, zero
                  srli         t4, s7, 11
208:              add          t0, t2, s5
                  sll          t6, s0, s2
                  xor          a5, s8, sp
                  or           t2, s10, s0
                  sra          zero, s8, tp
                  srli         gp, t6, 27
                  slti         gp, s3, -1941
215:              andi         gp, t5, -642
                  bge          zero, a7, 225f
                  bgeu         a6, zero, 235f
                  andi         a0, s1, 2000
                  sltu         gp, ra, a1
                  srli         s3, s11, 20
                  auipc        s3, 33677
                  beq          s10, t5, 241f
                  sltiu        t6, s11, 308
                  sll          t2, s3, t0
225:              sub          s3, s3, s10
                  xori         gp, s8, -2019
                  ori          a4, a3, -1854
                  sub          s6, t4, a7
                  lui          t4, 113173
                  bne          ra, s4, 244f
                  beq          t3, a3, 250f
                  sltiu        t6, t2, 561
                  bne          t3, s9, 251f
                  or           a7, s0, a5
235:              sll          t4, t6, ra
                  sll          s3, t1, t5
                  bne          t2, a4, 253f
                  ori          a0, s2, -1583
                  andi         s5, s8, 1407
                  lui          s0, 271718
241:              bltu         s0, t3, 255f
                  sltu         s0, zero, t3
                  srai         s6, s10, 25
244:              bge          a4, s9, 255f
                  srl          t1, t2, s9
                  slt          t1, t0, t3
                  sra          a2, s9, s3
                  bgeu         zero, s4, 267f
                  xori         t0, t3, -73
250:              sra          a2, t6, gp
251:              sltiu        a6, t6, -235
                  beq          s9, a3, 271f
253:              and          t0, a0, s0
                  beq          s11, zero, 255f
255:              xor          a4, t0, t4
                  srli         a0, s4, 7
                  srli         sp, t5, 28
                  srli         s8, t4, 10
                  slt          a4, s5, gp
                  andi         t6, sp, 620
                  sra          gp, s9, t5
                  ori          s1, s5, -1714
                  srli         s0, t6, 26
                  or           s9, s9, s11
                  ori          sp, a0, -295
                  slti         s0, t0, 8
267:              and          ra, t0, s10
                  sra          t2, t2, a4
                  srai         s4, ra, 31
                  slt          s5, s4, s5
271:              addi         gp, a7, 823
                  and          a6, s1, t6
                  bge          zero, sp, 280f
                  bge          gp, s0, 275f
275:              srli         t4, a7, 14
                  add          a0, a3, a2
                  srl          s3, s5, t2
                  ori          s0, zero, 1730
                  and          s2, t6, s0
280:              srl          a5, t4, t3
                  beq          t0, t2, 290f
                  ori          gp, t1, 1232
                  andi         t6, t4, -1807
                  or           a6, a1, sp
                  bgeu         t6, s2, 303f
                  or           gp, tp, zero
                  addi         s6, s0, 1818
                  sll          t3, s7, a4
                  beq          s7, t1, 296f
290:              srl          s1, s1, tp
                  auipc        t1, 281741
                  addi         a5, t2, 1344
                  sub          a6, t5, s9
                  add          a0, ra, s8
                  bgeu         t4, a1, 309f
296:              sll          a6, s10, tp
                  addi         a3, zero, 0 #init loop 1 counter
                  sltiu        s0, s3, -287
                  auipc        a0, 120543
                  addi         a4, zero, 7 #init loop 1 limit
                  srai         s2, a5, 16
                  sra          s5, s4, tp
                  addi         s2, s1, 1793
main_18_1_t:      add          ra, zero, t0
                  xori         s1, a3, -1100
                  addi         a3, a3, 9 #update loop 1 counter
                  slli         a6, a7, 28
                  xori         a2, tp, -1762
                  ori          t2, t1, 1420
                  addi         s3, zero, -6 #init loop 0 counter
                  slli         a6, a6, 15
                  addi         a7, zero, 20 #init loop 0 limit
                  xor          a5, a4, zero
main_18_0_t:      slt          t6, s4, t5
                  slli         ra, s4, 9
                  addi         s3, s3, 4 #update loop 0 counter
                  blt          s3, a7, main_18_0_t #branch for loop 0
                  slli         t1, a3, 5
                  or           ra, a4, s1
                  srai         t3, s9, 27
                  sltu         s8, ra, s8
                  xori         s7, gp, -775
                  xori         s4, s6, -1058
                  srl          s1, t6, s8
                  blt          a3, a4, main_18_1_t #branch for loop 1
                  sltiu        s7, t4, -1968
                  ori          s9, s3, -224
                  sll          t0, s9, ra
                  sll          t1, a2, zero
                  addi         zero, s2, 257
                  xor          s9, tp, t1
                  andi         a4, tp, -889
303:              sltiu        s6, a0, 1230
                  srli         zero, tp, 23
                  nop
                  andi         a1, s8, 591
                  bne          a6, s9, 326f
                  slt          a3, tp, t4
309:              andi         a6, t5, 1411
                  auipc        s8, 111753
                  add          t6, tp, a4
                  blt          t6, a2, 319f
                  bne          a5, s1, 322f
                  or           s9, s9, zero
                  slt          s7, s2, a5
                  blt          a2, s10, 336f
                  add          s1, a4, s8
                  srl          a6, a1, s9
319:              auipc        t4, 29940
                  slt          a5, a4, t1
                  add          s9, a1, t3
322:              sltu         a5, a1, s10
                  xor          a4, zero, s10
                  or           tp, s9, a5
                  xori         a3, gp, 1322
326:              and          t0, s6, a4
                  srli         s2, a5, 5
                  sltiu        s8, s10, -815
                  sra          sp, s2, a3
                  bgeu         a2, a4, 331f
331:              bne          t2, a5, 345f
                  slti         t6, t4, 1397
                  xor          a3, s0, a4
                  ori          s4, s5, 1004
                  bge          t5, s0, 353f
336:              srli         t1, t6, 8
                  xor          s6, s3, s8
                  sltu         s9, ra, t4
                  add          zero, a0, t0
                  add          a3, tp, t5
                  nop
                  or           s1, ra, s3
                  bne          gp, s11, 353f
                  addi         s5, s2, -1385
345:              sub          s5, a5, t1
                  xor          s9, tp, a5
                  srl          a4, a5, ra
                  xori         tp, t2, -381
                  sll          a7, s6, t0
                  and          zero, a7, s7
                  nop
                  sra          t6, s11, s1
353:              and          gp, s4, gp
                  and          s7, s9, s3
                  srai         s9, a1, 20
                  sltu         t3, s6, a5
                  bgeu         s9, tp, 371f
                  sltu         t1, t2, sp
                  xor          s6, t6, s6
                  srai         s6, a3, 1
                  sll          s1, s10, s6
                  add          s7, s2, ra
                  srai         t6, s7, 27
                  bgeu         t2, a0, 380f
                  add          t6, s7, a3
                  beq          t3, zero, 370f
                  bne          s8, s0, 368f
368:              srl          a7, ra, t5
                  blt          s11, s11, 388f
370:              xor          s1, s0, t5
371:              sltu         a4, s1, gp
                  srli         t1, t6, 3
                  slti         a3, t0, 1626
                  sra          t6, a5, a7
                  lui          t0, 1034943
                  bgeu         a0, a6, 378f
                  srl          tp, t4, a6
378:              slli         ra, a2, 16
                  srai         zero, a1, 4
380:              and          ra, t2, t0
                  ori          sp, s8, -1858
                  sltu         a6, t2, a4
                  bgeu         gp, s10, 394f
                  slt          t1, s1, t6
                  blt          s1, a7, 395f
                  srl          a0, zero, sp
                  srl          a2, a3, zero
388:              sltiu        s7, s7, -773
                  srli         s0, ra, 0
                  bne          sp, t0, 392f
                  nop
392:              sll          a1, a3, sp
                  srl          s6, a7, a0
394:              sll          a0, s9, a2
395:              bge          s7, t4, 407f
                  bgeu         t5, a1, 401f
                  blt          a5, ra, 416f
                  sra          sp, sp, t1
                  bne          t0, a4, 401f
                  srai         sp, s8, 8
401:              sltu         a5, t5, t1
                  sub          zero, s3, s11
                  xor          gp, a7, zero
                  xor          t0, a3, ra
                  xor          s2, t1, tp
                  srai         s0, s4, 23
407:              sll          s0, s9, s9
                  lui          s6, 878019
                  bne          tp, gp, 428f
                  nop
                  nop
                  sub          gp, gp, s9
                  slti         s0, t1, -1836
                  slt          s5, a3, s10
                  xori         t2, t0, -451
416:              lui          ra, 371224
                  sltu         s8, a4, t3
                  ori          s6, s5, 929
                  ori          a5, t3, -1206
                  and          s9, t2, t3
                  bgeu         ra, t6, 430f
                  sub          s8, s5, t2
                  bgeu         gp, a3, 437f
                  srl          zero, s3, sp
                  slli         a3, s11, 4
                  sub          gp, a0, s4
                  sltiu        s6, sp, 1976
428:              sra          a1, t3, s2
                  slli         s0, sp, 5
430:              srli         gp, t2, 12
                  bltu         t3, t5, 449f
                  sll          s6, a2, t6
                  xor          t0, t4, s9
                  sra          s3, s0, t5
                  xor          a1, a4, a6
                  sll          s2, t6, sp
437:              srai         s7, ra, 13
                  srli         s8, s9, 16
                  sltiu        t6, t3, 647
                  ori          a2, t0, 309
                  add          t3, a7, a7
                  slti         gp, s5, -1696
                  bge          t4, s3, 461f
                  xor          t1, t4, s6
                  andi         a4, s5, -19
                  andi         t0, t2, 798
                  ori          gp, a5, 1368
                  xori         t6, s8, 1958
449:              lui          t6, 748171
                  sltiu        a7, s10, 1904
                  slli         s5, tp, 5
                  and          zero, a1, sp
                  bge          t3, sp, 456f
                  ori          s6, s4, 1183
                  and          t3, t2, a5
456:              sra          s4, a7, a5
                  xor          sp, a6, s8
                  slt          s1, s2, s2
                  bne          s5, t5, 463f
                  ori          t6, s4, 217
461:              andi         t1, s5, 652
                  slti         t0, zero, 1887
463:              lui          gp, 106481
                  xori         zero, s1, -212
                  sltiu        t4, a6, 1079
                  sra          t2, a3, s5
                  sltu         a6, s10, t0
                  or           s4, t2, s10
                  sltiu        s9, a4, 249
                  blt          gp, a4, 472f
                  or           s0, ra, s6
472:              ori          s7, a7, -1399
                  sub          tp, s9, a1
                  bltu         t1, t6, 484f
                  slt          t0, a4, a3
                  bltu         s2, a3, 479f
                  bgeu         s2, a6, 478f
478:              sub          a1, a1, s9
479:              addi         t0, t5, -1288
                  beq          s8, a6, 499f
                  xori         gp, t6, 477
                  andi         s8, s1, -538
                  srli         ra, s2, 8
484:              slti         s5, s5, 1901
                  sra          a4, t1, s4
                  slt          tp, s5, a4
                  srl          t0, s11, a3
                  slti         s9, gp, 117
                  slt          a2, s8, t5
                  srai         s7, t6, 29
                  or           a2, a0, s10
                  bne          s8, s5, 511f
                  nop
                  auipc        t1, 79999
                  slt          s8, t1, zero
                  bge          gp, a6, 501f
                  blt          t0, t5, 515f
                  sltu         a6, a7, s3
499:              xori         a6, s10, 835
                  andi         a3, s4, -1324
501:              sltiu        t2, sp, -1551
                  srli         t6, a6, 6
                  srl          s5, s3, t0
                  slti         tp, s9, -1489
                  slti         s6, s0, -943
                  sltu         tp, tp, a5
                  slli         s9, tp, 25
                  sltiu        tp, a0, -954
                  and          s8, s11, t0
                  sra          s9, t5, t3
511:              slti         s4, a0, -2003
                  slti         s7, s9, -1781
                  add          a3, s8, t0
                  bge          t6, s1, 530f
515:              beq          sp, t3, 524f
                  bgeu         a1, t3, 536f
                  blt          t5, tp, 518f
518:              andi         a4, zero, -1285
                  sltiu        s0, t5, 496
                  beq          s10, t6, 534f
                  sltu         t1, s3, a2
                  sll          a2, s8, s4
                  srai         t0, a3, 26
524:              lui          a3, 711265
                  or           a0, a0, t0
                  add          zero, t5, t2
                  xor          a6, s3, tp
                  addi         ra, s4, -1979
                  xori         s6, t6, 1616
530:              sra          t6, a6, s1
                  sll          tp, s3, s8
                  bltu         s0, t3, 544f
                  sltiu        a6, s1, -1786
534:              nop
                  andi         s9, sp, -961
536:              bne          t5, s4, 555f
                  auipc        a4, 979871
                  nop
                  bgeu         s5, zero, 546f
                  slt          s0, s0, ra
                  xori         s5, s0, 1518
                  blt          a5, s7, 556f
                  or           a5, t4, a5
544:              sub          s6, s5, s6
                  andi         ra, s4, 642
                  addi         sp, zero, 10 #init loop 1 counter
                  sub          s8, t2, a0
                  sltiu        s0, t0, 492
                  addi         s4, zero, 7 #init loop 1 limit
main_12_1_t:      xor          t2, s6, s7
                  slt          a4, s3, a4
                  addi         sp, sp, -6 #update loop 1 counter
                  auipc        a4, 33874
                  slli         t1, a0, 0
                  addi         a7, zero, 2 #init loop 0 counter
                  addi         s3, t0, -1977
                  addi         a4, t0, 972
                  addi         a2, zero, 2 #init loop 0 limit
main_12_0_t:      xori         ra, t6, 417
                  xori         t1, s0, -277
                  slti         t3, t5, -1057
                  xor          s7, tp, t5
                  addi         a7, a7, -1 #update loop 0 counter
                  bgeu         a7, a2, main_12_0_t #branch for loop 0
                  and          s2, s5, a4
                  srli         a6, s3, 4
                  sub          t4, s10, a2
                  sra          s2, s9, t6
                  bgeu         sp, s4, main_12_1_t #branch for loop 1
                  add          a1, t5, ra
546:              lui          s6, 896665
                  sll          a2, a4, t5
                  sll          sp, t6, gp
                  slti         tp, sp, -1284
                  xori         sp, t5, -1775
                  add          s8, t5, a2
                  slli         s6, s3, 14
                  srai         zero, a0, 26
                  lui          s6, 457615
555:              or           tp, zero, zero
556:              nop
                  and          a2, a5, a5
                  xor          t6, sp, s11
                  srli         s0, t0, 2
                  la           s6, sub_5
                  ori          a5, a3, 1757
                  slt          a3, sp, tp
                  addi         s6, s6, -162
                  slt          s5, s6, ra
                  beq          t3, s11, main_j1 #branch to jump instr
                  addi         t4, a7, -661
main_j1:          jalr         t1, s6, 163 #jump main -> sub_5
                  sltu         s2, gp, s8
                  blt          s6, t4, 562f
                  ori          s2, t4, -1700
562:              nop
                  sltiu        t4, s11, -566
                  srli         a2, a3, 19
                  sltu         s0, t2, t4
                  srl          s9, s3, zero
                  sltu         zero, s10, t6
                  ori          gp, t2, 1493
                  sltu         gp, a7, t5
                  lui          t1, 664086
                  auipc        a6, 830214
                  blt          t0, s11, 590f
                  beq          s1, t5, 592f
                  andi         a3, s5, 707
                  add          a7, s11, a6
                  beq          s6, t2, 578f
                  bltu         t2, a3, 595f
578:              add          gp, zero, a0
                  add          t6, s9, s7
                  or           t6, s4, a0
                  or           gp, s7, s11
                  srl          s2, sp, ra
                  slt          a0, t2, tp
                  andi         t1, zero, 1973
                  nop
                  sub          a7, a7, s4
                  and          s1, s3, sp
                  bltu         s1, s0, 598f
                  bgeu         a3, s7, 596f
590:              andi         t1, t3, -768
                  srli         s8, t2, 10
592:              add          t4, t6, t1
                  sltiu        zero, zero, 1091
                  blt          t4, a0, 603f
595:              srli         s0, a5, 26
596:              or           s7, t1, s10
                  or           s6, s2, s2
598:              andi         s8, s2, 1510
                  srli         s9, s11, 18
                  slt          t6, s8, a1
                  slt          a7, a4, s4
                  xor          a0, a0, s11
603:              lui          s3, 931263
                  addi         a3, a4, 674
                  xori         t2, s4, -910
                  srai         s4, a0, 1
                  beq          a0, t5, 618f
                  sltiu        a4, a7, 1963
                  ori          gp, t3, -1584
                  nop
                  blt          s5, s6, 625f
                  bgeu         s6, s7, 626f
                  srli         zero, t5, 26
                  xori         a7, a1, 1070
                  xori         a3, a3, 453
                  slli         t2, s10, 28
                  ori          s3, s3, -927
618:              slli         sp, tp, 31
                  lui          t3, 171729
                  sltu         s7, zero, gp
                  and          a5, a3, zero
                  srli         s0, t4, 2
                  slti         s2, a5, 1591
                  ori          ra, s7, 311
625:              bgeu         zero, ra, 643f
626:              or           a1, gp, t5
                  sltu         s1, t5, t6
                  xori         s1, a3, -2044
                  nop
                  lui          zero, 951280
                  auipc        a4, 258716
                  sub          t4, s5, a3
                  bne          t1, a5, 638f
                  xor          s7, s2, a3
                  sub          gp, t2, ra
                  slt          a2, s9, a3
                  slti         a1, s6, -798
638:              and          a7, tp, t2
                  add          a5, s6, s6
                  lui          ra, 841843
                  blt          zero, s9, 657f
                  slli         a5, a5, 31
643:              srl          t0, s9, s7
                  srai         s7, s10, 26
                  blt          ra, s6, 659f
                  nop
                  sub          s4, gp, a6
                  andi         t2, zero, -1808
                  sll          s7, s2, t5
                  srli         ra, zero, 27
                  ori          s9, t4, 1001
                  sltiu        s9, a0, 2008
                  slli         a4, s3, 20
                  auipc        t3, 517972
                  srai         s9, s6, 20
                  bltu         s7, t5, 668f
657:              slli         t4, a4, 14
                  xor          t0, a0, a5
659:              slti         s9, t5, -1272
                  srai         s7, sp, 5
                  auipc        t4, 423144
                  or           s5, s11, s9
                  sltu         s0, s7, s0
                  srli         s4, s6, 11
                  and          t2, t6, a7
                  sltiu        a4, t0, 504
                  or           s6, t0, t4
668:              nop
                  bne          a2, t3, 671f
                  sltiu        s0, t0, 351
671:              nop
                  sltu         s4, a4, a7
                  beq          t6, a2, 687f
                  or           s7, s11, s7
                  auipc        a3, 684768
                  bltu         t2, t6, 683f
                  bne          ra, a4, 696f
                  lui          gp, 120874
                  beq          zero, a6, 698f
                  bne          t6, tp, 694f
                  lui          s5, 896573
                  bne          s10, a3, 700f
683:              bne          s2, t3, 692f
                  srl          sp, a5, a7
                  beq          t5, s7, 705f
                  xor          tp, s0, t0
687:              xor          tp, t6, t5
                  bne          s11, s7, 690f
                  add          s1, s9, s10
690:              slli         t6, a3, 21
                  bltu         s5, a6, 694f
692:              slli         s8, s7, 0
                  bltu         t3, s8, 697f
694:              addi         s1, s0, 1905
                  and          t1, zero, t6
696:              bltu         a5, s8, 697f
697:              srli         t6, s9, 3
698:              lui          s6, 183027
                  slt          s4, gp, zero
700:              slti         s9, t1, -1872
                  srai         s3, t2, 26
                  bltu         s2, s11, 721f
                  srli         a6, s6, 23
                  sub          s0, a5, ra
705:              and          tp, s10, s11
                  beq          a0, s2, 717f
                  add          s3, sp, s1
                  beq          s10, a6, 715f
                  bltu         a6, a5, 727f
                  bne          a7, s1, 720f
                  bge          s0, s10, 730f
                  srli         s7, s5, 3
                  bge          s3, tp, 731f
                  lui          t1, 174297
715:              xor          a2, s3, sp
                  auipc        t2, 489576
717:              bltu         t4, a5, 735f
                  and          a4, t0, a1
                  andi         t0, sp, 349
720:              sll          tp, t3, s5
721:              sltiu        a3, t3, 296
                  ori          s7, a6, -1397
                  sltu         ra, s6, s0
                  xor          t0, t0, sp
                  bne          s3, s6, 734f
                  sra          s8, t3, ra
727:              srli         t2, t2, 4
                  xori         a0, s11, -1339
                  srl          s7, a0, s9
730:              addi         t0, a7, -690
731:              bge          a3, s10, 732f
732:              lui          sp, 924593
                  bne          s1, s3, 743f
734:              bge          s9, s6, 748f
735:              srai         s9, zero, 8
                  auipc        a3, 357880
                  sub          a3, s11, a5
                  beq          s5, a2, 740f
                  ori          t3, s6, -167
740:              srli         gp, t1, 17
                  sll          s0, tp, a1
                  bltu         t4, t3, 747f
743:              auipc        a4, 211624
                  or           a2, a7, s4
                  slt          s7, s7, t5
                  bgeu         t0, a5, 748f
747:              bgeu         t5, t2, 751f
748:              add          a6, a1, a6
                  lui          ra, 522864
                  sub          s7, s11, t3
751:              blt          a2, a7, 769f
                  sub          a3, ra, s6
                  lui          s1, 401690
                  or           a0, t2, s6
                  slti         t0, s8, 1795
                  auipc        s8, 829692
                  sll          a1, s8, t3
                  bgeu         t1, zero, 772f
                  sltu         s2, s9, ra
                  srli         s0, a5, 30
                  slli         a2, t5, 0
                  sra          t6, zero, s8
                  bgeu         a4, sp, 772f
                  sub          s9, s0, t0
                  ori          t1, a6, 1528
                  nop
                  sltu         a6, s11, tp
                  sltiu        sp, t6, -489
769:              sub          t1, a0, t1
                  lui          sp, 286592
                  slli         a4, s5, 19
772:              slti         sp, sp, -1600
                  slt          t0, s0, gp
                  auipc        t3, 989688
                  srl          t6, t5, t4
                  bge          s3, t0, 794f
                  lui          a4, 719084
                  ori          s9, t4, -518
                  sub          gp, s11, s5
                  andi         t2, s4, 1064
                  addi         s1, s0, -563
                  slti         t4, gp, -1700
                  sub          t1, s1, t6
                  xor          gp, s9, a5
                  nop
                  bgeu         t6, t3, 800f
                  srl          s5, zero, a1
                  slli         a3, s9, 4
                  andi         a0, sp, 461
                  bltu         s5, ra, 791f
791:              beq          t5, s1, 801f
                  xor          ra, a0, s1
                  sll          a6, a7, s8
794:              ori          s3, s1, -206
                  lui          a3, 363583
                  slti         a1, a4, -1466
                  addi         sp, s3, -1968
                  addi         t1, t4, 1989
                  xor          s6, s7, s0
800:              ori          s2, a0, -1774
801:              sub          s3, s10, a2
                  ori          t3, t1, -7
                  xor          t6, t2, sp
                  srai         sp, s2, 26
                  sll          s3, t2, a5
                  nop
                  beq          a3, sp, 826f
                  bgeu         a3, a6, 822f
                  sub          a3, s5, t1
                  and          s0, a7, t3
                  bge          s1, a3, 814f
                  blt          s4, s6, 824f
                  xor          a4, ra, s4
814:              srli         s3, t5, 17
                  nop
                  beq          s1, t1, 823f
                  or           gp, s2, s3
                  add          sp, t1, s11
                  blt          t4, tp, 837f
                  srai         s2, a3, 3
                  bne          s8, s9, 832f
822:              slli         a5, t5, 27
823:              addi         a1, s5, 631
824:              srl          a2, a0, t0
                  sub          a7, s11, t4
826:              sra          a7, a6, a0
                  beq          s6, t3, 829f
                  bltu         t3, a1, 842f
829:              slt          a6, t4, a3
                  xori         s9, a1, 33
                  beq          a3, gp, 850f
832:              sub          zero, a3, s0
                  xori         a2, ra, 1727
                  bne          zero, sp, 841f
                  bgeu         s6, a0, 837f
                  srai         s8, s7, 30
837:              and          s7, s1, s9
                  xor          a0, s11, sp
                  beq          s11, s8, 840f
840:              ori          a7, s3, 1900
841:              ori          a4, s9, 1949
842:              and          a7, t5, s0
                  add          s2, t3, s9
                  beq          s2, t0, 864f
                  bgeu         s9, sp, 855f
                  srli         a6, a1, 6
                  blt          t4, zero, 856f
                  bgeu         s7, a2, 867f
                  sltiu        gp, a0, 1047
850:              sll          s3, t3, s0
                  lui          s3, 994569
                  nop
                  slt          ra, t5, ra
                  auipc        s7, 1028605
855:              srl          a2, s8, s0
856:              xori         t1, s6, 1920
                  addi         s9, s7, -1341
                  bne          tp, t6, 874f
                  auipc        tp, 485125
                  sll          a3, t6, s0
                  slti         tp, tp, 306
                  la           s2, sub_3
                  slt          s6, t0, s3
                  addi         s2, s2, -912
                  srai         a4, t2, 11
                  slli         a1, t4, 5
                  bge          s10, a1, main_j4 #branch to jump instr
                  sll          t2, t2, t3
                  slt          tp, a3, s8
main_j4:          jalr         t1, s2, 913 #jump main -> sub_3
                  or           a2, a4, s0
                  xori         tp, a1, 991
                  srli         a1, s9, 19
                  sltiu        a7, a2, 736
                  sub          s8, s6, a6
864:              bgeu         t3, s2, 883f
                  bltu         a0, s4, 883f
                  auipc        s2, 645625
867:              srai         zero, s4, 25
                  or           a4, s6, t6
                  andi         s4, a2, -417
                  addi         s6, sp, 331
                  slti         s6, t6, 1929
                  srl          s6, s3, a7
                  auipc        sp, 226939
874:              and          t2, s9, tp
                  beq          ra, s4, 886f
                  slli         ra, a7, 25
                  add          s3, s6, t2
                  nop
                  lui          s5, 601235
                  slt          tp, a2, s2
                  beq          t4, gp, 891f
                  add          a2, s5, s1
883:              xori         t0, s8, 1963
                  andi         t1, a1, -1184
                  xori         sp, s5, -2026
886:              xor          a1, sp, s11
                  beq          a5, s10, 891f
                  srai         a6, a6, 13
                  bltu         s3, t4, 898f
                  sra          a3, s5, t0
891:              slli         s1, a7, 21
                  xor          t2, s3, a7
                  or           t2, s10, a2
                  nop
                  and          a5, s7, t1
                  bgeu         s1, s8, 901f
                  lui          a2, 1045186
898:              srai         s5, t5, 17
                  or           sp, s10, a4
                  bge          t0, t6, 918f
901:              slt          s5, a6, a2
                  bne          a2, ra, 921f
                  bgeu         s2, tp, 922f
                  sltiu        t1, tp, -583
                  sra          s0, a3, s3
                  bgeu         s7, s1, 926f
                  blt          a1, s4, 909f
                  lui          a4, 142224
909:              xor          s2, t6, zero
                  slt          a0, s8, sp
                  blt          s1, t6, 918f
                  sltu         s1, a6, s3
                  slli         a2, a7, 0
                  lui          s1, 1000528
                  srli         s2, s8, 21
                  beq          s4, t6, 918f
                  sll          s3, s11, s11
918:              srli         a0, s10, 22
                  or           s2, a6, s4
                  add          t4, a7, sp
921:              sltiu        t3, zero, 1391
922:              sltiu        a5, tp, 1060
                  addi         s8, t4, 536
                  blt          t4, a1, 927f
                  blt          t1, sp, 943f
926:              ori          gp, s9, 245
927:              nop
                  sltiu        t3, gp, 584
                  srai         s3, t0, 9
                  blt          a4, s1, 940f
                  sll          tp, t6, a1
                  sra          t3, a2, s9
                  slti         a2, s1, -1420
                  blt          t0, a0, 950f
                  add          sp, t3, a5
                  add          t0, t2, s0
                  bgeu         s1, s11, 951f
                  slli         s5, a4, 29
                  sra          s4, t5, a2
940:              add          s3, s9, t3
                  srli         s4, sp, 30
                  bge          s10, s4, 960f
943:              beq          s7, s8, 944f
944:              bltu         t0, t3, 962f
                  lui          s1, 495792
                  andi         a6, t0, 173
                  slt          zero, sp, t4
                  blt          zero, s11, 949f
949:              bge          s4, s0, 963f
950:              add          s2, a1, a1
951:              andi         a7, s1, -984
                  sub          a5, a4, s6
                  sltiu        t6, tp, 1664
                  sub          t4, t6, sp
                  sll          a3, s11, a1
                  sll          t1, s2, s7
                  sra          s6, s8, s3
                  add          a1, s4, s8
                  and          t2, s4, a7
960:              slli         s3, s4, 19
                  xor          s7, t4, ra
962:              slti         a4, s1, -1694
963:              bgeu         sp, t6, 965f
                  lui          t0, 593122
965:              add          s0, s2, s7
                  slti         t2, t0, -2039
                  bltu         s5, s2, 974f
                  slt          t4, a0, s4
                  slt          t2, t0, t1
                  or           a0, t1, s2
                  slt          ra, t5, t2
                  xor          s5, s8, a4
                  slt          s8, s7, s7
974:              srl          s1, s4, a0
                  srli         s2, s5, 7
                  sra          s7, s11, a6
                  nop
                  slti         a7, s4, 252
                  andi         t2, ra, 206
                  slli         s3, gp, 6
                  bge          s0, s3, 1000f
                  sltu         t0, a2, s3
                  sub          s2, s9, a6
                  auipc        a2, 907644
                  lui          a7, 679723
                  slt          s4, s2, ra
                  srai         s2, t4, 6
                  bltu         a3, s11, 997f
                  beq          s11, s0, 1003f
                  nop
                  blt          t2, t0, 1003f
                  sltiu        s2, s2, -1719
                  lui          a6, 928988
                  nop
                  srli         s9, zero, 22
                  blt          t0, s0, 1010f
997:              ori          a4, s3, 1490
                  srai         a4, a1, 9
                  srl          sp, t4, s3
1000:             sltu         t2, s5, s1
                  srai         a7, s5, 23
                  nop
1003:             and          t6, t2, t3
                  slti         a5, s11, -44
                  srl          a3, s7, t3
                  srai         t6, s11, 13
                  srl          t6, ra, t6
                  bne          s10, a2, 1027f
                  ori          s4, a2, -805
1010:             sltu         t1, a3, s9
                  slt          sp, a1, s5
                  nop
                  andi         s1, a0, -895
                  and          s5, a6, tp
                  slti         a3, a0, -698
                  bne          a2, s7, 1035f
                  nop
                  auipc        zero, 172667
                  and          tp, a2, t2
                  sltu         gp, s4, t6
                  xor          a1, a2, t6
                  andi         a2, s5, -1113
                  la           t2, sub_4
                  srli         s2, t3, 28
                  srl          t3, s10, t6
                  addi         t2, t2, 1004
                  sltiu        a0, t0, 939
                  and          s5, s1, t2
                  blt          s2, s2, main_j5 #branch to jump instr
                  andi         a2, a1, -1951
main_j5:          jalr         t1, t2, -1003 #jump main -> sub_4
                  slt          a3, s8, zero
                  srli         s0, a2, 13
                  and          a7, ra, a4
                  andi         tp, t2, 910
                  beq          sp, s1, 1040f
                  sltu         t4, s9, a4
                  andi         s6, s2, -934
                  srl          a5, s5, t3
                  srli         s6, s5, 14
1027:             sltu         a7, s2, a3
                  beq          sp, s1, 1048f
                  bgeu         s10, s4, 1038f
                  add          s0, a6, a7
                  sub          s0, s6, a5
                  or           s8, a4, s3
                  auipc        t1, 111566
                  slt          gp, s5, a6
1035:             auipc        a3, 254236
                  srl          zero, gp, zero
                  and          gp, t2, a6
1038:             add          s5, t5, s8
                  sra          t2, a1, t0
1040:             beq          tp, t5, 1042f
                  slt          t2, a3, s10
1042:             srl          s4, a5, a4
                  xori         s3, t5, -762
                  lui          s7, 384526
                  sra          s7, a7, tp
                  andi         a0, s4, -2021
                  andi         s8, s1, 435
1048:             bltu         sp, a0, 1067f
                  xor          t4, a3, gp
                  xori         a5, s10, 505
                  andi         t1, a3, 1036
                  slli         t1, a6, 11
                  slt          s1, a7, t5
                  auipc        s0, 931136
                  or           s5, a1, s4
                  lui          s7, 605366
                  auipc        t4, 52619
                  srai         s6, a7, 7
                  srli         s9, t2, 11
                  srli         s4, a0, 3
                  sltu         a3, t6, a2
                  bge          t4, sp, 1069f
                  add          a7, t3, a3
                  lui          a0, 320079
                  bne          t5, s7, 1083f
                  slt          s7, s5, a6
1067:             sltu         a4, tp, a3
                  or           s4, a0, gp
1069:             slti         s3, s5, 1472
                  srl          s7, gp, s2
                  slli         s8, s1, 27
                  auipc        zero, 782156
                  lui          s8, 560244
                  slli         a2, s8, 19
                  bne          s0, s8, 1093f
                  xori         s7, t0, -321
                  xori         t2, s4, -1327
                  beq          s6, a1, 1092f
                  sll          t4, s7, t2
                  sltu         s8, s8, tp
                  srl          a6, s0, s10
                  sll          s4, t4, t1
1083:             nop
                  slti         zero, s7, 1663
                  srl          zero, zero, tp
                  or           tp, sp, a3
                  bne          s9, s0, 1101f
                  sub          t1, sp, t1
                  slti         sp, a2, -1100
                  or           zero, s7, t2
                  lui          sp, 788109
1092:             slt          tp, s8, a1
1093:             ori          ra, ra, 1258
                  ori          tp, a0, 359
                  addi         gp, zero, 5 #init loop 0 counter
                  nop
                  addi         s7, zero, 4 #init loop 0 limit
                  sltiu        a7, a3, -466
                  srli         t3, s0, 15
                  sub          a2, s7, sp
main_8_0_t:       ori          s5, t4, 1074
                  auipc        a7, 1006135
                  srli         t4, a3, 30
                  sltu         zero, tp, a7
                  addi         gp, gp, -3 #update loop 0 counter
                  add          a2, a1, t1
                  bgeu         gp, s7, main_8_0_t #branch for loop 0
                  slt          s6, a3, a0
                  beq          a1, s7, 1113f
                  bltu         s6, s8, 1101f
                  add          t2, t6, ra
                  xori         s7, s8, -1568
                  lui          sp, 292662
                  sll          s6, t5, s3
1101:             add          s6, s10, s11
                  bltu         a0, s11, 1103f
1103:             bgeu         s8, t2, 1115f
                  slt          ra, s6, a7
                  and          gp, t4, tp
                  srai         s0, s3, 27
                  auipc        s8, 733328
                  srli         s6, t1, 25
                  bgeu         s1, a2, 1112f
                  nop
                  auipc        s7, 827043
1112:             nop
1113:             sra          tp, a4, s10
                  sltu         s7, s0, s8
1115:             sub          s0, t3, s4
                  and          s3, s1, t1
                  and          t2, s5, a2
                  add          s0, s7, tp
                  xori         t2, s5, 1823
                  ori          a0, t0, 692
                  sltiu        s5, t0, -1417
                  blt          t2, s1, 1141f
                  sltu         s6, s0, s4
                  bne          a4, zero, 1133f
                  bge          t3, s5, 1132f
                  and          t1, s8, s3
                  xor          s5, s10, a0
                  slt          t2, a1, s5
                  beq          t4, a3, 1131f
                  sub          ra, a0, ra
1131:             blt          sp, s0, 1132f
1132:             ori          s6, s9, 1082
1133:             nop
                  xori         a1, t0, 1199
                  ori          s4, t3, -948
                  bltu         zero, s1, 1146f
                  slti         t1, t3, 24
                  sub          s3, t5, ra
                  sltiu        s1, gp, 960
                  addi         a5, t2, 97
1141:             and          a6, sp, a4
                  srai         t6, tp, 22
                  sub          t1, s8, a5
                  xor          a1, a3, s0
                  sll          zero, t1, zero
1146:             srli         s8, t0, 10
                  sra          gp, a5, s2
                  blt          s5, t1, 1162f
                  srl          a1, s5, s3
                  bltu         t3, s9, 1154f
                  srl          t2, s5, a3
                  and          s0, s7, gp
                  sltu         a7, s7, t4
1154:             lui          zero, 376283
                  srl          a0, s11, a4
                  sra          gp, sp, a0
                  xori         t6, t0, 1016
                  bgeu         t3, tp, 1177f
                  andi         a6, a1, 1537
                  or           a5, t1, s3
                  addi         gp, t6, 666
1162:             blt          a3, t1, 1164f
                  lui          s9, 943468
1164:             add          a5, a4, a1
                  srai         s2, a7, 24
                  ori          s5, s3, -1032
                  or           t6, a0, a0
                  bne          zero, t3, 1179f
                  srl          t2, gp, s6
                  bne          ra, s6, 1180f
                  slt          s8, tp, t6
                  bne          zero, sp, 1186f
                  bge          t1, a5, 1189f
                  srl          s4, zero, s2
                  and          s6, a2, s8
                  slt          a7, t3, a0
1177:             blt          s3, t5, 1191f
                  bltu         a3, a7, 1185f
1179:             srai         t2, t1, 25
1180:             bgeu         a4, t0, 1200f
                  slli         t6, t3, 0
                  slti         a4, a7, 787
                  blt          a7, t3, 1201f
                  lui          s2, 428289
1185:             srl          a2, s7, t3
1186:             srli         ra, s11, 31
                  blt          t4, t5, 1188f
1188:             xori         ra, a0, -1016
1189:             sll          a5, a1, tp
                  sltiu        ra, t4, -1053
1191:             blt          ra, a5, 1205f
                  blt          gp, a1, 1202f
                  slt          t6, s4, s9
                  bge          t0, s9, 1195f
1195:             andi         s8, s3, 1494
                  or           a4, t0, a3
                  xori         a1, t0, -508
                  sra          s6, t6, s11
                  xor          a4, s3, s1
1200:             nop
1201:             sra          a5, s11, t0
1202:             srli         gp, s11, 4
                  xor          s3, s9, s4
                  sltu         s2, s0, gp
1205:             bgeu         a5, sp, 1215f
                  nop
                  sll          a3, t4, s6
                  sltiu        sp, a0, 1952
                  ori          a6, t1, -1693
                  lui          t1, 382967
                  slli         a5, s0, 11
                  la           a1, sub_4
                  slli         s8, s0, 12
                  slti         a4, a1, 1743
                  xori         a7, s10, 1498
                  addi         a1, a1, 20
                  and          a5, t3, a3
                  blt          tp, tp, main_j6 #branch to jump instr
                  or           tp, a0, s8
                  sltu         t1, a0, s8
main_j6:          jalr         t1, a1, -20 #jump main -> sub_4
                  add          zero, a0, a0
                  srl          tp, t0, a3
                  or           s7, s3, a3
                  sub          s7, a7, s4
1215:             sub          gp, s10, s0
                  lui          s1, 1043279
                  nop
                  sra          a7, a5, s4
                  srai         t3, a3, 31
                  lui          t4, 732940
                  bgeu         a5, s8, 1240f
                  blt          ra, a2, 1225f
                  or           a3, s3, t0
                  addi         tp, t3, -1955
1225:             beq          t6, t5, 1229f
                  or           s0, s10, zero
                  addi         sp, s3, 1612
                  slti         a4, a4, 1711
1229:             srl          a5, s7, t1
                  nop
                  ori          s4, s11, -1087
                  srli         t3, zero, 17
                  nop
                  xori         a7, t5, 1004
                  or           s8, a3, t0
                  auipc        sp, 45541
                  add          zero, s11, t4
                  srl          t2, sp, a3
                  or           s8, ra, t3
1240:             sltiu        ra, t6, 863
                  auipc        sp, 203831
                  slt          a4, a4, t1
                  xor          s4, a4, gp
                  sub          s6, t0, ra
                  slt          a6, t3, ra
                  or           s7, a4, a3
                  beq          a0, t4, 1249f
                  beq          a6, t2, 1262f
1249:             nop
                  or           a6, s4, t0
                  beq          t2, s1, 1270f
                  bltu         t5, tp, 1261f
                  bltu         a5, a0, 1255f
                  sltiu        s0, ra, 1233
1255:             slti         sp, s11, 1088
                  andi         t0, s8, 451
                  bltu         a6, s2, 1275f
                  lui          s8, 6916
                  bltu         s8, s6, 1278f
                  lui          s9, 132209
1261:             addi         s3, s11, 343
1262:             blt          s3, s5, 1278f
                  andi         a7, s3, -1858
                  bltu         s11, t3, 1283f
                  lui          ra, 643460
                  addi         t0, zero, 0 #init loop 0 counter
                  slti         a6, ra, -645
                  slti         s1, t4, 432
                  auipc        s2, 749849
                  add          s8, gp, s6
                  srli         t2, a1, 2
                  addi         s3, s9, 1136
                  or           sp, s9, s1
                  addi         s5, zero, 17 #init loop 0 limit
                  sub          s2, s7, ra
                  srl          ra, s0, t0
                  slti         gp, a2, 681
                  xor          s1, a4, t6
main_26_0_t:      nop
                  lui          s1, 1011640
                  addi         t0, t0, 9 #update loop 0 counter
                  slt          s1, t1, ra
                  slt          sp, sp, s2
                  srli         a3, t5, 4
                  andi         a7, s2, -967
                  srl          a2, s9, s11
                  add          s9, t3, a1
                  sltu         a4, a7, t2
                  blt          t0, s5, main_26_0_t #branch for loop 0
                  nop
                  ori          tp, tp, -592
                  auipc        s8, 201390
                  xori         zero, gp, -1859
                  sub          s2, a4, s5
1270:             bltu         s1, a2, 1284f
                  xor          t6, s6, a1
                  srl          a3, zero, t2
                  add          s8, s7, t3
                  srli         t2, s8, 26
1275:             and          s7, s4, s0
                  beq          a1, t0, 1283f
                  addi         s9, zero, 8 #init loop 1 counter
                  addi         s6, zero, 8 #init loop 1 limit
main_14_1_t:      nop
                  addi         s9, s9, -7 #update loop 1 counter
                  addi         a3, zero, 2 #init loop 0 counter
                  addi         a0, zero, 17 #init loop 0 limit
main_14_0_t:      sltu         s5, zero, ra
                  addi         a3, a3, 2 #update loop 0 counter
                  blt          a3, a0, main_14_0_t #branch for loop 0
                  bgeu         s9, s6, main_14_1_t #branch for loop 1
                  slt          t2, s4, t5
                  srai         a3, a6, 11
1278:             auipc        s5, 646139
                  ori          a0, a1, -423
                  ori          tp, t6, -768
                  bltu         t2, zero, 1299f
                  bge          s7, a2, 1287f
1283:             and          gp, t5, a7
1284:             sll          t4, t4, s2
                  sub          a6, s8, a6
                  slt          t1, a7, a3
1287:             srl          a5, s11, a3
                  sltiu        s8, sp, -1114
                  slli         a4, a6, 19
                  xori         s6, s7, 1954
                  and          a4, a6, s4
                  bne          s11, zero, 1303f
                  sll          a5, t0, t4
                  xori         zero, a4, 1939
                  ori          a5, t2, -1699
                  blt          a5, sp, 1308f
                  blt          a0, t3, 1306f
                  bge          s6, t1, 1300f
1299:             sra          s2, s7, t4
1300:             bgeu         t2, t6, 1318f
                  addi         s4, tp, 1958
                  sltu         a2, a4, a2
1303:             srai         t6, t5, 28
                  slli         s4, a4, 31
                  srai         sp, s4, 19
1306:             add          a0, gp, s6
                  bgeu         t5, a4, 1314f
1308:             slli         s4, s9, 1
                  nop
                  bltu         t4, sp, 1324f
                  sra          ra, t0, s10
                  blt          a0, t1, 1313f
1313:             andi         s0, s1, -1450
1314:             sub          t2, a4, t1
                  sltiu        t3, ra, -1358
                  sltu         t3, zero, a7
                  ori          a2, gp, 633
1318:             bgeu         s1, zero, 1321f
                  addi         a0, s9, 345
                  addi         s1, s1, -1333
1321:             bge          s8, s2, 1340f
                  auipc        s3, 795419
                  sll          t6, s1, s0
1324:             add          a3, t3, a4
                  bge          t1, a2, 1339f
                  sub          a1, s9, a3
                  bltu         s0, a1, 1341f
                  ori          s5, t5, 1692
                  ori          a6, a7, -1847
                  bne          s3, zero, 1349f
                  addi         s2, s0, -819
                  slli         ra, tp, 6
                  slt          ra, t2, a1
                  ori          a2, s2, -695
                  auipc        ra, 573658
                  slli         a3, s10, 27
                  add          a7, sp, s11
                  andi         t6, s3, -174
1339:             sub          t2, t3, s10
1340:             sll          a2, s2, a4
1341:             srai         a1, s7, 30
                  blt          s2, s11, 1356f
                  slt          t4, t6, a6
                  blt          a6, s2, 1356f
                  addi         t2, s3, 1016
                  srli         a6, t3, 5
                  ori          a1, s7, 1260
                  bgeu         a4, s10, 1352f
1349:             bgeu         ra, a6, 1359f
                  or           a1, t2, t5
                  xor          t6, a3, a0
1352:             lui          s8, 801549
                  sll          a1, t2, a6
                  sltu         s5, s2, gp
                  sll          s5, sp, s11
1356:             sltiu        s3, s5, 105
                  sub          s7, t3, t6
                  or           a6, t6, a2
1359:             bgeu         s10, s3, 1377f
                  sub          s6, t5, t5
                  srli         a2, t6, 23
                  or           t2, a4, t3
                  bge          s0, a6, 1372f
                  xori         s8, a4, 1502
                  ori          t6, s2, 1389
                  sltiu        a7, s11, -479
                  beq          t3, s4, 1385f
                  or           a0, s9, sp
                  slli         a4, t4, 1
                  xor          zero, s0, t3
                  bne          tp, sp, 1380f
1372:             addi         s4, t1, 1509
                  bltu         t6, a4, 1375f
                  or           s5, gp, gp
1375:             slli         a2, t1, 6
                  bne          a5, s9, 1381f
1377:             blt          ra, s10, 1388f
                  slli         t6, a0, 0
                  srli         s1, s1, 8
1380:             blt          a0, t3, 1387f
1381:             addi         t0, t2, 976
                  slt          s5, t6, t0
                  blt          a1, s4, 1403f
                  lui          t6, 989606
1385:             srl          s5, s0, a7
                  beq          a0, t1, 1387f
1387:             bge          a6, t3, 1405f
1388:             srl          s0, s10, a2
                  srai         a4, s4, 20
                  sub          tp, a4, gp
                  ori          gp, a5, 121
                  slt          tp, a5, t1
                  sltiu        ra, t2, -113
                  andi         s5, s11, -1555
                  bgeu         s6, s6, 1405f
                  sll          a6, s6, t6
                  srli         ra, a5, 17
                  sltiu        t1, a1, 1019
                  sra          a0, a2, t2
                  sub          t4, t5, s5
                  add          t3, a3, a5
                  sra          s0, a5, t3
1403:             or           t2, a2, s10
                  bne          t0, s8, 1406f
1405:             srl          s2, s11, s0
1406:             sltu         s4, a4, a0
                  sub          s1, a4, a3
                  sll          tp, s6, t1
                  bgeu         a5, a3, 1425f
                  and          sp, a6, t2
                  sll          a6, s7, s10
                  add          s7, s6, t1
                  add          t6, a7, a4
                  nop
                  auipc        s9, 907141
                  bge          ra, a2, 1418f
                  add          t2, s0, gp
1418:             andi         s1, ra, 1280
                  lui          a0, 779729
                  sll          s5, s9, a7
                  add          t1, s4, a4
                  srai         s3, ra, 1
                  slt          s3, t1, s6
                  auipc        t1, 82796
1425:             srai         s8, a6, 25
                  xori         s3, s8, 842
                  lui          t4, 277688
                  slt          t0, ra, t4
                  sltu         t1, gp, a3
                  bne          a3, s0, 1449f
                  xori         s2, s8, 1071
                  slt          t0, sp, tp
                  or           s2, s10, s7
                  bltu         s11, s6, 1453f
                  slli         a3, s4, 4
                  sll          t4, t3, s2
                  andi         s5, ra, 849
                  auipc        a3, 186820
                  add          a6, gp, s0
                  blt          s1, a2, 1458f
                  auipc        t2, 200625
                  sra          s2, a6, t6
                  bgeu         a0, s5, 1461f
                  beq          s2, ra, 1451f
                  bltu         a0, a2, 1456f
                  ori          a7, t6, -1496
                  srl          s4, s5, s5
                  sub          a6, tp, t1
1449:             auipc        sp, 318038
                  and          s9, s0, t4
1451:             bltu         s7, s5, 1455f
                  blt          s6, a2, 1472f
1453:             slti         a6, s10, -703
                  bge          s2, a3, 1456f
1455:             and          t3, s10, s3
1456:             blt          s2, s6, 1459f
                  sltiu        a5, a5, -1487
1458:             beq          t5, s0, 1460f
1459:             sltu         s5, a7, ra
1460:             or           s1, s8, t3
1461:             slti         a7, a4, 604
                  add          s5, a3, a0
                  beq          s5, a4, 1472f
                  sra          a6, a6, gp
                  srli         a5, a5, 31
                  add          s0, s8, a6
                  srai         t1, s3, 10
                  ori          sp, a2, -1848
                  bltu         a7, t4, 1483f
                  and          t4, s9, a6
                  sll          s6, s5, gp
1472:             bgeu         s2, s3, 1474f
                  slli         s6, a6, 9
1474:             bgeu         s11, a3, 1488f
                  andi         s9, zero, -1554
                  srli         t1, a4, 20
                  or           a7, a3, a7
                  nop
                  nop
                  add          s6, s6, a4
                  add          s7, t1, a5
                  bltu         zero, t0, 1500f
1483:             xor          a7, a2, tp
                  nop
                  srl          s9, ra, t6
                  bne          t5, s9, 1496f
                  bgeu         a1, s1, 1497f
1488:             srli         s7, a0, 29
                  and          a4, t5, zero
                  bge          tp, s9, 1491f
1491:             blt          a1, ra, 1503f
                  srli         a1, a6, 12
                  bltu         s1, t0, 1511f
                  slti         s5, s1, -943
                  ori          t4, s1, 1350
1496:             xor          s0, s1, s11
1497:             xor          t6, s3, t3
                  auipc        s5, 638089
                  add          s6, t0, s1
1500:             sub          a0, t6, s7
                  nop
                  slli         t1, zero, 23
1503:             and          a3, tp, s7
                  srai         zero, a4, 1
                  beq          s10, gp, 1523f
                  and          s6, s11, a0
                  auipc        t3, 442423
                  sltu         a4, s8, a7
                  slti         tp, s5, -1192
                  bgeu         a4, s3, 1517f
1511:             andi         s4, s7, 1287
                  sltiu        a6, s4, 1778
                  andi         s5, a0, -946
                  and          s1, s6, sp
                  sub          gp, ra, s11
                  slli         tp, s3, 31
1517:             or           s2, tp, ra
                  beq          s3, s11, 1532f
                  xor          a6, tp, ra
                  sltiu        a3, ra, -1057
                  andi         a5, s8, -1708
                  slli         s5, ra, 20
1523:             slt          a4, ra, s3
                  xori         s2, s8, 1009
                  bge          a1, t6, 1541f
                  addi         t3, s10, 1047
                  xor          ra, s6, gp
                  lui          t2, 345903
                  bgeu         t5, s10, 1530f
1530:             slti         s8, a4, 1127
                  sltiu        s0, s10, 1157
1532:             bge          s4, t2, 1546f
                  beq          s7, s10, 1552f
                  lui          t2, 819623
                  slti         s5, a7, -842
                  beq          a3, s4, 1555f
                  sra          a3, s0, t5
                  xori         t6, t1, 906
                  and          a2, t5, s5
                  xori         s3, t3, -1867
1541:             beq          s6, s11, 1550f
                  xori         a3, s2, -1061
                  bgeu         s10, t3, 1562f
                  lui          a1, 981129
                  slti         s6, a5, 1641
1546:             sll          s5, a6, s5
                  bge          t6, s0, 1566f
                  and          t6, a1, s5
                  and          t2, s4, s3
                  andi         t2, t0, -979
                  slt          t1, s4, s9
                  la           a4, sub_1
                  add          s4, s6, t6
                  slt          zero, gp, t4
                  addi         a4, a4, 748
                  srli         s3, s8, 21
                  blt          t3, a3, main_j3 #branch to jump instr
                  add          t4, s6, a1
                  srli         a1, gp, 21
main_j3:          jalr         t1, a4, -748 #jump main -> sub_1
1550:             addi         t3, s8, 399
                  blt          s11, s6, 1556f
1552:             srli         t4, a6, 30
                  slt          a4, tp, a7
                  srli         a0, zero, 30
1555:             slli         a4, zero, 0
1556:             xor          t1, s8, a0
                  srai         a6, a6, 14
                  xor          t2, ra, tp
                  or           t3, a0, t3
                  xor          t6, s2, s5
                  srai         t1, a6, 14
1562:             xor          s5, a4, a6
                  bgeu         zero, a4, 1564f
1564:             and          t4, a4, t4
                  sub          a5, a7, t3
1566:             nop
                  sub          t1, s5, s2
                  sltu         s9, s3, s9
                  slli         a0, s10, 3
                  sra          s9, s8, ra
                  ori          a7, a1, 1895
                  lui          a7, 486191
                  auipc        a7, 220206
                  xori         s5, s5, 516
                  bne          a3, a0, 1594f
                  bne          zero, t5, 1583f
                  srl          t1, a6, gp
                  slti         a5, ra, -229
                  slli         s1, a7, 8
                  bne          s11, s5, 1585f
                  slt          s6, t2, s8
                  bgeu         a0, a3, 1598f
1583:             lui          s3, 862028
                  xor          t2, a1, s2
1585:             sll          tp, a7, t0
                  sltu         s2, s10, t0
                  blt          s4, a3, 1599f
                  srli         t4, s10, 2
                  sra          s0, t5, s11
                  auipc        s4, 154904
                  bge          a0, a4, 1593f
                  andi         s3, s5, -1315
1593:             or           a3, s8, sp
1594:             andi         t1, a6, 421
                  addi         a2, t4, 1762
                  beq          t4, s5, 1599f
                  andi         ra, s9, 1264
1598:             slt          s4, s6, s7
1599:             addi         s6, a1, 1985
                  la x30, test_done
                  jalr x0, x30, 0
test_done:        
                  li gp, 1
                  ecall
sub_3:            bne          s8, a3, sub_3_stack_p
                  lui          ra, 29844
sub_3_stack_p:    addi         s10, s10, -24
                  xor          a0, gp, s11
                  sw           t1, 4(s10)
                  slt          sp, a7, s7
                  sub          tp, a2, a4
                  sltiu        gp, t0, -162
                  sub          a5, zero, s9
                  lui          ra, 250667
                  or           a3, a2, t0
                  sltiu        a4, t1, -1704
                  andi         a6, s8, 258
                  beq          s0, t5, 9f
                  sub          a5, s11, s1
                  lui          a7, 1001802
                  bge          t4, a1, 9f
                  and          a5, s10, a4
9:                auipc        s5, 1048183
                  lw           t1, 4(s10)
                  slti         s7, a7, 1482
                  lui          a7, 792373
                  and          a7, s3, s6
                  or           s4, a6, ra
                  andi         t2, a1, -1811
                  nop
                  addi         s10, s10, 24
                  or           gp, a6, a7
                  auipc        a3, 932014
29:               addi x18, x6, 1
29:               jalr x18, x18, 0
sub_4:            slti         a3, a5, -369
                  srl          s5, a1, s4
                  xor          s5, a1, a4
                  ori          a0, t2, -1330
                  sll          s7, a3, t5
                  srl          s1, t2, s1
                  addi         s10, s10, -32
                  srli         s8, a1, 10
                  sw           t1, 4(s10)
                  sra          s5, ra, a2
                  xori         sp, a5, -958
                  slt          t2, t6, s1
                  addi         a2, zero, -2 #init loop 0 counter
                  sub          zero, ra, tp
                  addi         ra, zero, -14 #init loop 0 limit
                  srai         a3, t3, 24
sub_4_0_0_t:      lui          a7, 925515
                  srai         a7, a6, 29
                  sltu         a4, zero, ra
                  addi         a2, a2, -2 #update loop 0 counter
                  and          tp, a5, a4
                  addi         a6, s5, -1481
                  bne          a2, ra, sub_4_0_0_t #branch for loop 0
                  auipc        a5, 353510
                  sub          t1, a3, t1
                  slli         t0, s5, 17
                  xor          s7, s7, s3
                  add          a6, a7, a1
                  add          s4, a0, t3
                  sub          a2, a5, s10
                  srli         s6, t6, 13
                  sra          sp, a0, t2
                  slti         s3, zero, -1663
                  add          a4, t1, s11
                  sll          gp, a7, a7
                  sltiu        s7, t4, -1441
                  srli         a5, a6, 3
                  sll          s3, a5, s4
                  bge          s0, s0, 21f
                  xor          a6, t3, ra
                  srai         s1, s1, 25
                  andi         a6, a7, 966
                  andi         s9, s8, -1510
                  ori          t2, a4, 1406
                  sltiu        sp, t1, -207
21:               or           a6, gp, sp
                  sltiu        t1, s0, 349
                  sub          s4, a7, t5
                  ori          gp, sp, 1182
                  auipc        a6, 904475
                  sll          s2, sp, s7
                  blt          s4, s8, 29f
                  sub          a5, a0, t5
29:               blt          s0, a6, 42f
                  bgeu         s1, t6, 46f
                  xori         s5, tp, -1460
                  or           s2, a0, s2
                  srl          a3, t0, a3
                  addi         s6, a2, -999
                  slt          t2, t1, a1
                  lui          t1, 608173
                  lui          ra, 605593
                  or           a2, zero, a6
                  auipc        a5, 98566
                  bne          t5, zero, 55f
                  sll          t4, a0, a5
42:               blt          a7, sp, 53f
                  auipc        zero, 479350
                  slt          a0, s7, s11
                  andi         s0, a1, -586
46:               auipc        a7, 773432
                  sltu         s4, t1, a6
                  bne          a3, s6, 55f
                  sra          t1, s8, a3
                  xor          t3, t0, a4
                  or           t3, s10, s8
                  nop
53:               ori          zero, a6, 1722
                  srl          tp, ra, a0
55:               srl          a3, s5, a7
                  ori          zero, t5, 1055
                  slti         s6, a6, -695
                  addi         tp, ra, -269
                  sll          t4, a7, sp
                  auipc        s9, 875475
                  sltiu        t6, a5, 597
                  lw           t1, 4(s10)
                  xori         s8, t2, -1120
                  addi         s10, s10, 32
                  srl          t0, s9, tp
                  or           a6, t5, a4
                  auipc        ra, 414158
92:               addi x10, x6, 0
92:               jalr x10, x10, 0
sub_2:            addi         s10, s10, -16
                  xor          s4, s1, s5
                  xori         s3, s3, -1383
                  sw           t1, 4(s10)
                  andi         t2, s1, 1875
                  sra          s6, a7, a1
                  nop
                  sll          t2, s3, a2
                  andi         zero, a2, -890
                  lui          tp, 810495
                  addi         s6, zero, 8 #init loop 1 counter
                  lui          zero, 607260
                  addi         t4, a4, -1790
                  slt          s0, s6, s10
                  and          s5, a6, tp
                  srli         s1, a3, 11
                  addi         s7, zero, 8 #init loop 1 limit
                  or           a0, a1, t1
                  slt          t3, ra, gp
                  srli         tp, zero, 27
                  andi         s9, s0, -523
                  or           s0, s7, t3
sub_2_0_1_t:      slt          t0, t1, a0
                  xor          s0, a5, s7
                  auipc        gp, 100497
                  addi         s6, s6, -5 #update loop 1 counter
                  sub          t3, s0, s10
                  addi         s4, gp, -1134
                  addi         s3, zero, -2 #init loop 0 counter
                  or           a2, tp, a3
                  and          s9, sp, t6
                  sll          a4, t6, a5
                  add          t4, a6, a2
                  xori         t0, a2, 705
                  addi         a3, zero, 14 #init loop 0 limit
sub_2_0_0_t:      ori          s1, gp, 1523
                  sltiu        s5, s8, 866
                  addi         s3, s3, 4 #update loop 0 counter
                  beq          s3, a3, sub_2_0_0_t #branch for loop 0
                  or           s2, a3, a3
                  bgeu         s6, s7, sub_2_0_1_t #branch for loop 1
                  and          tp, t4, sp
                  xori         s2, a6, 1357
                  or           zero, s9, a1
                  bgeu         t3, s4, 3f
3:                ori          s5, sp, -1594
                  sltiu        ra, s2, -1474
                  ori          t3, t5, 569
                  sub          t0, gp, s5
                  srai         a2, t5, 25
                  ori          zero, s2, -813
                  auipc        ra, 327927
                  sltu         t6, a3, t4
                  bge          a6, a1, 20f
                  lui          t4, 941709
                  beq          tp, t0, 26f
                  xori         t3, sp, 667
                  sltu         s8, s1, a4
                  sra          s3, a4, ra
                  add          s6, s5, s6
                  xori         s0, a1, -545
                  srli         a5, s11, 10
20:               nop
                  and          a7, a1, t2
                  nop
                  bltu         t4, t6, 37f
                  bltu         s8, a7, 29f
                  ori          a6, zero, 587
26:               beq          s10, s5, 33f
                  add          s2, t4, a5
                  bltu         a5, gp, 38f
29:               sltiu        t4, a3, 567
                  addi         s8, t1, -1699
                  or           a3, gp, t4
                  sll          t4, s7, s0
33:               lui          s9, 557076
                  and          a1, gp, t6
                  slti         t2, t1, -1545
                  lui          s6, 564620
37:               bgeu         s9, s9, 45f
38:               slt          t1, s11, t5
                  addi         t3, t2, 1560
                  beq          zero, s3, 46f
                  add          sp, t3, s1
                  sltiu        t6, a0, 601
                  srl          s0, t0, s9
                  xor          a4, s7, a3
45:               add          s0, a6, gp
46:               sltu         zero, gp, t4
                  andi         a4, t0, 1508
                  slt          a1, a2, t3
                  xori         t4, s11, -800
                  xor          t6, sp, s1
                  sub          s3, t4, s5
                  srli         t0, a5, 16
                  sra          gp, t4, s1
                  andi         a4, t4, -676
                  srl          s6, t6, t4
                  srl          t2, a6, sp
                  lui          t6, 541017
                  bltu         s5, sp, 60f
                  lui          a5, 159788
60:               auipc        a7, 292689
                  lw           t1, 4(s10)
                  or           a3, zero, s2
                  srl          s9, t4, t5
                  add          t3, a2, t1
                  sra          ra, a7, s11
                  srai         a3, a7, 9
                  ori          s7, a7, -1751
                  xor          s2, t6, a7
                  addi         s10, s10, 16
                  or           s4, s0, a3
113:              addi x31, x6, 0
113:              jalr x31, x31, 0
sub_5:            addi         s10, s10, -40
                  and          t4, a5, zero
                  add          sp, t0, t5
                  or           a1, tp, s7
                  srli         gp, s3, 15
                  andi         a2, zero, -141
                  lui          zero, 693178
                  sw           t1, 4(s10)
                  sltu         a1, s5, sp
                  addi         a3, zero, 10 #init loop 1 counter
                  andi         sp, s1, 1858
                  addi         a7, zero, -16 #init loop 1 limit
sub_5_0_1_t:      add          t3, s0, s5
                  addi         a3, a3, -8 #update loop 1 counter
                  sll          s3, s4, gp
                  addi         s2, zero, 7 #init loop 0 counter
                  addi         t6, zero, 17 #init loop 0 limit
                  slli         a1, t2, 28
                  and          gp, s1, s4
sub_5_0_0_t:      xori         s7, t3, -189
                  and          s9, t3, a4
                  lui          s9, 698798
                  addi         s2, s2, 5 #update loop 0 counter
                  lui          tp, 808116
                  sll          tp, sp, s4
                  sub          zero, a6, a6
                  beq          s2, t6, sub_5_0_0_t #branch for loop 0
                  srl          a4, zero, a2
                  lui          sp, 699504
                  bge          a3, a7, sub_5_0_1_t #branch for loop 1
                  nop
                  addi         a1, zero, 6 #init loop 0 counter
                  sra          t1, a4, t1
                  auipc        s3, 1045346
                  sltiu        t4, s9, -1036
                  add          s1, s6, s8
                  sub          sp, zero, a7
                  addi         t3, zero, -10 #init loop 0 limit
sub_5_3_0_t:      ori          s8, sp, 622
                  add          s7, t3, s9
                  xori         gp, t1, -1754
                  sub          sp, a1, tp
                  addi         a1, a1, -8 #update loop 0 counter
                  nop
                  lui          a0, 100348
                  bne          a1, t3, sub_5_3_0_t #branch for loop 0
                  sub          sp, t3, a7
                  addi         a1, zero, -6 #init loop 1 counter
                  addi         s6, zero, 7 #init loop 1 limit
                  sltiu        a0, a3, -879
                  sll          gp, a5, gp
sub_5_1_1_t:      nop
                  addi         a1, a1, 9 #update loop 1 counter
                  addi         s1, zero, -10 #init loop 0 counter
                  and          s7, s2, zero
                  addi         t0, zero, 3 #init loop 0 limit
sub_5_1_0_t:      and          ra, s3, t4
                  nop
                  xor          sp, a3, s7
                  addi         s1, s1, 6 #update loop 0 counter
                  bltu         s1, t0, sub_5_1_0_t #branch for loop 0
                  bltu         a1, s6, sub_5_1_1_t #branch for loop 1
                  slli         a7, a6, 12
                  addi         tp, zero, 8 #init loop 1 counter
                  addi         s5, zero, 19 #init loop 1 limit
                  nop
sub_5_2_1_t:      slt          a1, s8, t5
                  ori          s1, gp, -444
                  addi         tp, tp, 5 #update loop 1 counter
                  addi         a2, zero, -9 #init loop 0 counter
                  slli         t2, s2, 21
                  addi         s0, zero, 7 #init loop 0 limit
                  or           a4, s7, s0
sub_5_2_0_t:      sub          ra, t2, t0
                  addi         a2, a2, 4 #update loop 0 counter
                  beq          a2, s0, sub_5_2_0_t #branch for loop 0
                  blt          tp, s5, sub_5_2_1_t #branch for loop 1
                  sltu         t6, s5, a3
                  addi         a2, zero, 0 #init loop 0 counter
                  addi         gp, zero, -9 #init loop 0 limit
                  srai         sp, gp, 4
                  sub          s3, t3, a7
sub_5_4_0_t:      sub          t1, t5, a5
                  addi         a2, a2, -9 #update loop 0 counter
                  slt          a6, a0, t6
                  beq          a2, gp, sub_5_4_0_t #branch for loop 0
                  sltu         s5, s8, s7
                  sll          a0, s2, t0
                  srai         t3, a5, 27
                  lui          sp, 325068
                  slti         sp, s10, -1175
                  add          zero, t6, a3
                  andi         s2, t5, 369
                  andi         s0, s3, 1591
                  blt          gp, s0, 20f
                  srai         sp, s2, 23
                  bge          a5, s1, 10f
10:               sll          a7, t0, t3
                  slti         gp, ra, -1947
                  bne          s4, s11, 14f
                  srli         s8, a7, 31
14:               and          s2, tp, a4
                  auipc        t0, 608017
                  sltiu        s9, zero, 1898
                  sll          gp, s3, t0
                  andi         t6, s1, 1250
                  or           t0, a5, gp
20:               sll          a7, t4, a2
                  lui          s7, 217506
                  sub          t4, a3, t4
                  sll          s7, a7, gp
                  sltu         s4, s1, a3
                  beq          s9, a0, 36f
                  bge          s0, a3, 39f
                  or           a4, s0, zero
                  slti         a2, tp, 1213
                  bge          s2, t3, 47f
                  nop
                  or           s7, a2, a5
                  andi         a1, ra, -821
                  nop
                  and          a2, t5, a1
                  slt          t4, t2, t2
36:               blt          sp, t5, 50f
                  slti         t0, a6, 1098
                  lui          a1, 824420
39:               nop
                  xor          zero, a6, sp
                  slli         s4, s2, 3
                  auipc        t2, 234272
                  srli         a4, s7, 4
                  addi         s0, s8, 924
                  beq          ra, a6, 58f
                  srai         s5, t1, 28
47:               ori          s5, s4, 1466
                  srl          t2, a3, a3
                  srai         a5, gp, 0
50:               auipc        s7, 573524
                  sltu         s8, t1, s0
                  blt          t0, s1, 69f
                  srli         t6, ra, 15
                  slti         a1, s5, -1086
                  slti         s4, s11, 564
                  slti         s8, t4, -820
                  auipc        s5, 290609
58:               srli         s6, s4, 28
                  auipc        t3, 458087
                  srli         s8, s3, 27
                  and          s2, s1, s2
                  srli         s7, a4, 15
                  auipc        a7, 76466
                  xor          s2, s4, t0
                  sra          a6, s9, t2
                  lui          s6, 277479
                  sltiu        sp, t5, 443
                  bne          t3, s4, 74f
69:               sll          a0, a1, t5
                  srli         a6, s4, 6
                  addi         a4, a0, -1537
                  beq          ra, a5, 84f
                  ori          t6, s6, 1175
74:               srli         s8, a4, 3
                  srai         s4, s3, 9
                  slli         t0, s0, 21
                  srl          t4, a4, ra
                  andi         t6, s9, 1647
                  blt          s3, a4, 97f
                  nop
                  bge          a6, t4, 92f
                  bne          s11, a6, 85f
                  nop
84:               sra          a5, s0, s11
85:               sltiu        t3, a5, 616
                  andi         t2, t1, 1661
                  and          s8, s11, a4
                  srl          s0, s0, t2
                  sltu         tp, s11, a7
                  sub          a7, s6, s5
                  sltu         t6, t5, s4
92:               slti         a7, a1, 729
                  xor          s1, s1, s6
                  beq          zero, s10, 106f
                  bltu         s0, t4, 113f
                  beq          a2, a0, 108f
97:               srai         s9, s7, 18
                  and          s3, s8, s3
                  or           s7, t6, t4
                  ori          s9, ra, 1525
                  slli         a6, a1, 10
                  or           tp, gp, t3
                  bne          a2, a1, 115f
                  and          a1, t0, s10
                  nop
106:              xori         s4, a3, -92
                  xor          s1, a5, gp
108:              sra          a7, a3, s1
                  blt          a1, s11, 114f
                  or           ra, t3, t2
                  sub          a4, s7, t0
                  sra          a4, a7, s5
113:              auipc        s2, 37572
114:              xor          a3, s1, s1
115:              auipc        a6, 688125
                  beq          s1, t4, 124f
                  slt          a2, s1, t5
                  sltiu        s7, s1, -170
                  bltu         a6, a5, 130f
                  or           t3, t3, s7
                  and          s0, s10, t2
                  add          a5, s10, s10
                  slti         s7, a5, 512
124:              or           a3, tp, a1
                  srai         a5, a4, 14
                  bge          t2, t0, 138f
                  bne          a0, zero, 145f
                  sra          s9, t6, sp
                  sra          s7, s0, zero
130:              andi         a3, s10, -2002
                  auipc        gp, 502770
                  slli         a4, a6, 3
                  add          s5, a7, a2
                  addi         a3, s11, 1104
                  srli         s2, t6, 31
                  slt          a0, a3, s5
                  and          s8, t4, s9
138:              sltiu        s0, s8, -857
                  sll          a3, s1, t6
                  sll          sp, s3, a0
                  blt          t6, a1, 158f
                  or           ra, a4, t1
                  or           ra, a0, a1
                  auipc        sp, 549558
145:              and          a5, s5, a7
                  sll          t3, sp, t2
                  blt          s7, s2, 158f
                  srai         a6, s5, 22
                  sltiu        s3, tp, -781
                  xori         ra, zero, 1161
                  nop
                  xori         t1, a0, 2019
                  srl          s5, s11, a0
                  nop
                  beq          a5, t3, 169f
                  srai         s5, t1, 3
                  sll          a5, a5, tp
158:              bne          s0, sp, 170f
                  srai         gp, s1, 21
                  xor          t0, t0, sp
                  nop
                  slli         s4, t2, 30
                  or           s0, gp, s8
                  blt          ra, a3, 176f
                  or           s7, sp, s1
                  slti         s8, s0, 881
                  sub          s5, t4, a4
                  andi         s3, a5, 607
169:              lui          s1, 618999
170:              srli         t2, tp, 30
                  xor          a2, s5, a6
                  slli         a6, tp, 12
                  add          t6, a0, s11
                  blt          t4, a7, 177f
                  bge          t6, t2, 183f
176:              slti         s9, t2, 101
177:              lui          a3, 584666
                  add          a4, s1, s8
                  xor          a7, a0, s10
                  blt          t0, a5, 191f
                  addi         s0, a0, 67
                  addi         s1, zero, -1870
183:              blt          s7, t1, 195f
                  xor          s1, a7, t1
                  bne          zero, s11, 199f
                  sltiu        s8, a3, -1269
                  slt          a3, a3, sp
                  sltiu        s6, s1, -1148
                  bltu         t2, a7, 206f
                  bltu         tp, s8, 196f
191:              bne          s6, ra, 209f
                  add          a2, a0, s4
                  sll          t3, t2, s7
                  bne          t0, t1, 212f
195:              srai         s9, s4, 4
196:              sub          a6, a2, s9
                  xori         t2, t5, -690
                  slli         tp, a5, 13
199:              bltu         sp, s0, 216f
                  srli         zero, s9, 9
                  or           ra, s3, a4
                  srl          s1, s7, s11
                  srl          gp, s8, t4
                  xori         s6, zero, -1989
                  slli         a4, a4, 10
206:              and          t4, t1, s8
                  add          a0, gp, zero
                  xori         zero, t5, 124
209:              slt          sp, sp, a2
                  sltiu        s4, s4, 170
                  sub          gp, t5, s4
212:              and          s4, t5, s8
                  slli         t3, s6, 9
                  bltu         a4, t0, 222f
                  add          a6, zero, tp
216:              xori         t2, s5, 1552
                  and          s7, gp, s4
                  srai         a5, s5, 26
                  slt          s4, t4, s6
                  nop
                  srai         s8, s6, 31
222:              srli         a0, s4, 31
                  slli         a0, t6, 23
                  lui          ra, 339413
                  srai         s5, t1, 12
                  bne          s6, s3, 229f
                  ori          s2, a6, -90
                  or           s6, gp, a6
229:              slli         s9, t5, 2
                  or           a5, tp, s10
                  sra          gp, t2, s10
                  slti         a0, s8, -1288
                  beq          s7, t6, 245f
                  slli         s0, a7, 5
                  addi         a6, zero, -440
                  srli         gp, s5, 5
                  bgeu         s11, s2, 249f
                  andi         s9, a3, 1221
                  srli         s6, gp, 30
                  or           a3, t1, a1
                  sub          a2, a7, s0
                  slli         s6, t3, 22
                  srai         s9, s8, 25
                  sltiu        a5, a7, 264
245:              srai         t2, a6, 23
                  nop
                  sltu         a5, s10, a5
                  sll          t6, s1, a7
249:              auipc        t4, 459411
                  slt          a7, t4, ra
                  add          t3, tp, tp
                  slli         s3, a6, 25
                  sub          t4, a4, a1
                  lw           t1, 4(s10)
                  srl          ra, t6, a6
                  sltu         t6, sp, a5
                  lui          a0, 450869
                  srl          s8, zero, a6
                  addi         s10, s10, 40
                  auipc        a1, 272852
348:              addi x22, x6, 1
348:              jalr x22, x22, 0
sub_1:            ori          a4, a3, -1842
                  bltu         t2, a7, sub_1_stack_p
                  srai         gp, a3, 16
                  lui          a7, 873110
sub_1_stack_p:    addi         s10, s10, -28
                  sw           t1, 4(s10)
                  srai         t4, s9, 14
                  slli         a2, t4, 24
                  sub          s8, a3, s5
                  slti         s0, a4, 689
                  srl          a6, s8, s0
                  slt          s9, zero, t1
                  andi         s8, a2, 854
                  blt          s0, s3, 15f
                  add          ra, s7, t5
                  blt          t1, a3, 15f
                  sra          ra, t2, s0
                  sra          sp, s7, t0
                  srli         t4, zero, 17
                  lui          t4, 489632
                  slli         tp, t0, 21
                  bgeu         t5, s3, 15f
15:               sra          s0, zero, s3
                  sltiu        s8, s11, -1645
                  slti         a0, a3, -2
                  lw           t1, 4(s10)
                  addi         s10, s10, 28
                  and          s1, zero, ra
28:               addi x24, x6, 1
28:               jalr x24, x24, 0
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
                  add x27, x26, zero
                  csrr x24, 0x300 # MSTATUS
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 31
                  bne x24, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x24, 0x341 # MEPC
                  csrr x24, 0x342 # MCAUSE
                  li x29, 0x3 # BREAKPOINT
                  beq x24, x29, ebreak_handler
                  li x29, 0x8 # ECALL_UMODE
                  beq x24, x29, ecall_handler
                  li x29, 0x9 # ECALL_SMODE
                  beq x24, x29, ecall_handler
                  li x29, 0xb # ECALL_MMODE
                  beq x24, x29, ecall_handler
                  li x29, 0x1
                  beq x24, x29, instr_fault_handler
                  li x29, 0x5
                  beq x24, x29, load_fault_handler
                  li x29, 0x7
                  beq x24, x29, store_fault_handler
                  li x29, 0xc
                  beq x24, x29, pt_fault_handler
                  li x29, 0xd
                  beq x24, x29, pt_fault_handler
                  li x29, 0xf
                  beq x24, x29, pt_fault_handler
                  li x29, 0x2 # ILLEGAL_INSTRUCTION
                  beq x24, x29, illegal_instr_handler
                  csrr x29, 0x343 # MTVAL
                  1: la x30, test_done
                  jalr x1, x30, 0

ecall_handler:    
                  la x24, _start
                  sw x0, 0(x24)
                  sw x1, 4(x24)
                  sw x2, 8(x24)
                  sw x3, 12(x24)
                  sw x4, 16(x24)
                  sw x5, 20(x24)
                  sw x6, 24(x24)
                  sw x7, 28(x24)
                  sw x8, 32(x24)
                  sw x9, 36(x24)
                  sw x10, 40(x24)
                  sw x11, 44(x24)
                  sw x12, 48(x24)
                  sw x13, 52(x24)
                  sw x14, 56(x24)
                  sw x15, 60(x24)
                  sw x16, 64(x24)
                  sw x17, 68(x24)
                  sw x18, 72(x24)
                  sw x19, 76(x24)
                  sw x20, 80(x24)
                  sw x21, 84(x24)
                  sw x22, 88(x24)
                  sw x23, 92(x24)
                  sw x24, 96(x24)
                  sw x25, 100(x24)
                  sw x26, 104(x24)
                  sw x27, 108(x24)
                  sw x28, 112(x24)
                  sw x29, 116(x24)
                  sw x30, 120(x24)
                  sw x31, 124(x24)
                  la x30, write_tohost
                  jalr x0, x30, 0

instr_fault_handler:
                  add x26, x27, zero
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
                  add x26, x27, zero
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
                  add x26, x27, zero
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
                  csrr  x24, 0x341
                  addi  x24, x24, 4
                  csrw  0x341, x24
                  add x26, x27, zero
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
                  csrr  x24, 0x341
                  addi  x24, x24, 4
                  csrw  0x341, x24
                  add x26, x27, zero
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
                  csrr  x24, 0x300 # MSTATUS;
                  csrr  x24, 0x304 # MIE;
                  csrr  x24, 0x344 # MIP;
                  csrrc x24, 0x344, x24 # MIP;
                  add x26, x27, zero
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
