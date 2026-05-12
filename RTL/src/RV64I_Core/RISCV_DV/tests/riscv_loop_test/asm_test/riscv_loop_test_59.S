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
                  li x2, 0x40000100
                  csrw 0x301, x2
kernel_sp:        
                  la x30, kernel_stack_end

trap_vec_init:    
                  la x2, mtvec_handler
                  ori x2, x2, 0
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
                  li x0, 0x7
                  li x1, 0x5
                  li x2, 0xd
                  li x3, 0xc105c2da
                  li x4, 0x0
                  li x5, 0x3
                  li x6, 0x80000000
                  li x7, 0x80000000
                  li x8, 0xd1b657dc
                  li x9, 0x0
                  li x10, 0x80000000
                  li x11, 0x0
                  li x12, 0x32832a8e
                  li x13, 0x80000000
                  li x14, 0x80000000
                  li x15, 0x80000000
                  li x16, 0xf8233269
                  li x17, 0xfea75232
                  li x18, 0x9438f1cb
                  li x19, 0x0
                  li x20, 0x80000000
                  li x21, 0x80000000
                  li x22, 0x80000000
                  li x23, 0x80000000
                  li x24, 0x0
                  li x26, 0x0
                  li x27, 0xfdd8682a
                  li x28, 0x80000000
                  li x29, 0x5a8ff641
                  li x31, 0xf7f4676c
                  la x25, user_stack_end
main:             addi         a7, zero, 4 #init loop 0 counter
                  ori          s6, a5, -1311
                  slti         s3, s10, 1839
                  addi         tp, zero, 5 #init loop 0 limit
main_13_0_t:      auipc        a2, 236983
                  sub          s10, t5, a6
                  addi         a7, a7, 1 #update loop 0 counter
                  sub          s1, s0, t6
                  bne          a7, tp, main_13_0_t #branch for loop 0
                  andi         t2, t1, 1349
                  addi         gp, zero, 7 #init loop 0 counter
                  nop
                  addi         a6, zero, 7 #init loop 0 limit
main_20_0_t:      and          s6, s4, t5
                  srai         t4, ra, 23
                  addi         gp, gp, -5 #update loop 0 counter
                  bgeu         gp, a6, main_20_0_t #branch for loop 0
                  slli         s4, s3, 11
                  addi         s11, zero, 9 #init loop 1 counter
                  addi         s4, zero, 9 #init loop 1 limit
                  ori          t0, t4, -1545
main_22_1_t:      and          a4, a6, s7
                  srli         s2, s2, 14
                  addi         s11, s11, -8 #update loop 1 counter
                  addi         s10, zero, 3 #init loop 0 counter
                  addi         t3, zero, 5 #init loop 0 limit
                  xor          a7, a3, s10
main_22_0_t:      slt          s5, s7, t0
                  slti         tp, s6, 1943
                  addi         s10, s10, 1 #update loop 0 counter
                  lui          a3, 428967
                  beq          s10, t3, main_22_0_t #branch for loop 0
                  sra          s2, t6, t2
                  bgeu         s11, s4, main_22_1_t #branch for loop 1
                  sltu         s3, s4, a3
                  addi         s8, zero, -9 #init loop 0 counter
                  ori          zero, a2, 1867
                  addi         s6, a7, 1154
                  addi         a7, zero, 2 #init loop 0 limit
                  addi         t2, s7, -1790
                  xori         gp, a1, 1102
                  and          s5, a0, s4
                  slt          t1, t2, s10
                  srai         t0, ra, 8
main_23_0_t:      sltiu        s0, s6, -1856
                  srai         tp, sp, 10
                  addi         s8, s8, 6 #update loop 0 counter
                  slli         a4, s2, 25
                  auipc        s11, 345638
                  auipc        a5, 815783
                  srli         t0, ra, 4
                  xori         s7, t1, -1679
                  xor          s11, a0, gp
                  slt          a1, a2, s0
                  or           s10, ra, t5
                  slli         a0, t1, 22
                  blt          s8, a7, main_23_0_t #branch for loop 0
                  srai         s6, s3, 2
                  addi         s4, zero, -4 #init loop 0 counter
                  or           a7, s3, a7
                  and          a7, s8, s4
                  addi         s8, zero, 8 #init loop 0 limit
main_11_0_t:      andi         s1, a2, 318
                  addi         s4, s4, 4 #update loop 0 counter
                  slt          ra, a2, a4
                  sll          gp, t1, s11
                  bne          s4, s8, main_11_0_t #branch for loop 0
                  auipc        s11, 212205
                  addi         a5, zero, 10 #init loop 1 counter
                  sra          t2, t0, s11
                  addi         a3, zero, -10 #init loop 1 limit
                  addi         sp, s0, -2023
                  auipc        t4, 450143
main_1_1_t:       auipc        zero, 762709
                  slli         s4, s1, 29
                  addi         a5, a5, -5 #update loop 1 counter
                  auipc        s3, 829804
                  add          zero, s0, s10
                  xor          tp, gp, t0
                  addi         t3, zero, -9 #init loop 0 counter
                  addi         tp, zero, -1085
                  addi         s0, zero, 9 #init loop 0 limit
                  auipc        s6, 375566
                  slti         s1, s2, 1779
main_1_0_t:       add          t4, s11, s5
                  sub          t2, a0, s2
                  addi         s1, s0, -1779
                  slt          s6, s10, t1
                  sltu         s3, s8, a7
                  addi         t3, t3, 9 #update loop 0 counter
                  nop
                  add          t4, a0, a6
                  beq          t3, s0, main_1_0_t #branch for loop 0
                  sltu         a6, t6, a2
                  sltiu        t1, s1, -2006
                  auipc        s2, 824890
                  bge          a5, a3, main_1_1_t #branch for loop 1
                  slt          t1, s0, a0
                  addi         s10, zero, -3 #init loop 0 counter
                  xori         a0, zero, -486
                  slt          a6, a5, s0
                  addi         a2, zero, -13 #init loop 0 limit
                  lui          s3, 418471
                  xor          a6, a3, s8
main_26_0_t:      xor          t1, s3, s3
                  addi         s10, s10, -10 #update loop 0 counter
                  xori         a4, t6, -834
                  bne          s10, a2, main_26_0_t #branch for loop 0
                  sll          s1, t5, s8
                  addi         s8, zero, 5 #init loop 1 counter
                  sltiu        a3, t6, 321
                  slti         sp, t0, -89
                  addi         t0, zero, 5 #init loop 1 limit
                  ori          gp, s2, 1951
main_17_1_t:      add          zero, s8, sp
                  addi         s1, gp, 890
                  slt          s11, a5, s9
                  xor          a0, s3, a2
                  addi         s8, s8, -4 #update loop 1 counter
                  addi         s0, zero, 9 #init loop 0 counter
                  addi         s5, zero, 14 #init loop 0 limit
                  or           a1, s6, a2
main_17_0_t:      or           s1, a1, s3
                  addi         t2, s9, -1262
                  addi         s0, s0, 2 #update loop 0 counter
                  blt          s0, s5, main_17_0_t #branch for loop 0
                  bge          s8, t0, main_17_1_t #branch for loop 1
                  ori          a4, t3, -704
                  addi         t4, zero, -4 #init loop 1 counter
                  sltu         sp, sp, a2
                  nop
                  auipc        gp, 798355
                  sll          s4, zero, a1
                  slti         s6, gp, 1466
                  srli         zero, a6, 27
                  addi         a6, zero, 5 #init loop 1 limit
                  srl          s1, s9, t4
main_3_1_t:       nop
                  addi         t4, t4, 5 #update loop 1 counter
                  addi         s3, zero, 2 #init loop 0 counter
                  sll          t1, ra, a6
                  addi         s8, zero, 10 #init loop 0 limit
                  add          s0, sp, tp
main_3_0_t:       and          t0, s5, s4
                  sra          s2, a1, a7
                  addi         s3, s3, 1 #update loop 0 counter
                  xori         a0, sp, 734
                  bltu         s3, s8, main_3_0_t #branch for loop 0
                  bltu         t4, a6, main_3_1_t #branch for loop 1
                  lui          a3, 17476
                  addi         a4, zero, 10 #init loop 1 counter
                  addi         a5, zero, 8 #init loop 1 limit
main_6_1_t:       add          sp, s7, sp
                  addi         a4, a4, -7 #update loop 1 counter
                  srli         t3, s10, 26
                  addi         t4, zero, 1 #init loop 0 counter
                  addi         a6, zero, -7 #init loop 0 limit
main_6_0_t:       auipc        t3, 6305
                  addi         t4, t4, -8 #update loop 0 counter
                  bne          t4, a6, main_6_0_t #branch for loop 0
                  bgeu         a4, a5, main_6_1_t #branch for loop 1
                  addi         s5, s7, 1050
                  addi         s3, zero, -10 #init loop 0 counter
                  srai         s2, a1, 2
                  andi         zero, ra, 758
                  ori          t4, a5, -1812
                  sltu         ra, t5, s11
                  and          s8, sp, t5
                  addi         s4, zero, 16 #init loop 0 limit
                  auipc        t1, 828780
                  slti         gp, s3, -981
main_15_0_t:      auipc        sp, 75557
                  or           gp, s11, s5
                  addi         s3, s3, 6 #update loop 0 counter
                  add          sp, s2, s9
                  sll          a1, t4, s11
                  slt          s8, t4, s5
                  srl          s10, t1, s8
                  bltu         s3, s4, main_15_0_t #branch for loop 0
                  lui          t4, 844654
                  addi         tp, zero, 4 #init loop 1 counter
                  addi         s7, zero, 20 #init loop 1 limit
main_4_1_t:       ori          a0, t3, -1771
                  addi         tp, tp, 6 #update loop 1 counter
                  addi         s6, zero, 4 #init loop 0 counter
                  ori          a2, t2, 914
                  addi         ra, zero, 14 #init loop 0 limit
main_4_0_t:       auipc        a7, 676760
                  addi         s6, s6, 5 #update loop 0 counter
                  bne          s6, ra, main_4_0_t #branch for loop 0
                  bltu         tp, s7, main_4_1_t #branch for loop 1
                  sub          s1, t6, t5
                  addi         s8, zero, 8 #init loop 1 counter
                  addi         sp, zero, 16 #init loop 1 limit
                  sub          a4, a6, s5
main_8_1_t:       auipc        t1, 463024
                  srai         s2, s11, 24
                  addi         s8, s8, 8 #update loop 1 counter
                  addi         t2, zero, -6 #init loop 0 counter
                  sub          s10, ra, s6
                  addi         a6, zero, -17 #init loop 0 limit
main_8_0_t:       add          s4, s8, t1
                  slli         tp, a7, 19
                  addi         t2, t2, -2 #update loop 0 counter
                  bge          t2, a6, main_8_0_t #branch for loop 0
                  bne          s8, sp, main_8_1_t #branch for loop 1
                  sltu         tp, s0, tp
                  addi         a5, zero, 0 #init loop 0 counter
                  add          t4, s7, s4
                  addi         t3, t3, -1489
                  auipc        a3, 236278
                  addi         a2, zero, 16 #init loop 0 limit
main_0_0_t:       sltu         s0, zero, s7
                  addi         a5, a5, 9 #update loop 0 counter
                  srli         zero, s6, 9
                  auipc        s2, 619839
                  ori          t2, ra, 1181
                  sub          a6, s1, a1
                  sll          a6, a0, s10
                  auipc        s8, 935894
                  slli         t3, a1, 21
                  addi         s10, a5, -1650
                  srl          s1, zero, s2
                  addi         t3, a6, -840
                  sltu         gp, s3, a5
                  addi         a6, tp, -1024
                  slti         zero, t2, 285
                  srai         s0, s9, 14
                  add          s1, tp, t5
                  sra          s1, a5, a6
                  nop
                  sltu         ra, a0, t5
                  blt          a5, a2, main_0_0_t #branch for loop 0
                  xori         s10, s0, -567
                  addi         a6, zero, 4 #init loop 0 counter
                  auipc        gp, 214097
                  addi         tp, zero, -17 #init loop 0 limit
                  srli         t0, s6, 14
                  xor          t0, s6, t1
                  ori          gp, t4, 68
                  xori         gp, ra, 402
                  slli         ra, a4, 6
main_24_0_t:      xori         a3, s8, 1384
                  addi         s0, s0, 726
                  sra          t0, t6, a5
                  addi         a6, a6, -3 #update loop 0 counter
                  slt          zero, t6, t5
                  bne          a6, tp, main_24_0_t #branch for loop 0
                  slt          a4, s1, s7
                  addi         a1, zero, 5 #init loop 1 counter
                  srli         ra, s3, 24
                  sll          t4, a1, s10
                  or           a0, s5, t0
                  or           t3, s0, zero
                  addi         s3, zero, 16 #init loop 1 limit
main_16_1_t:      sub          s8, sp, s3
                  addi         a1, a1, 1 #update loop 1 counter
                  srl          a6, s11, tp
                  addi         sp, zero, -3 #init loop 0 counter
                  srl          gp, t4, t3
                  addi         s5, zero, -9 #init loop 0 limit
                  sra          tp, s11, s1
main_16_0_t:      addi         s11, a2, 1803
                  xori         s0, t4, 1430
                  sltu         s4, a0, s7
                  sra          a4, t3, s1
                  sltiu        t0, s6, 2016
                  xor          a7, s0, gp
                  addi         sp, sp, -6 #update loop 0 counter
                  bne          sp, s5, main_16_0_t #branch for loop 0
                  slli         a7, s6, 29
                  sltiu        s6, gp, 1245
                  addi         a3, s2, 43
                  or           s8, s7, s0
                  ori          t3, s6, 1949
                  lui          gp, 354526
                  srai         a3, a6, 20
                  srai         s8, a0, 9
                  sub          s7, s10, s11
                  srl          a5, t3, s6
                  bltu         a1, s3, main_16_1_t #branch for loop 1
                  or           s2, t6, a0
                  addi         s11, zero, -9 #init loop 1 counter
                  xori         s10, t6, -1845
                  or           gp, t6, a0
                  addi         s2, zero, -9 #init loop 1 limit
                  or           a5, t2, s0
main_10_1_t:      sltiu        s0, s0, 664
                  addi         ra, s1, 1030
                  addi         s11, s11, -9 #update loop 1 counter
                  xor          s8, t4, sp
                  addi         a2, zero, 6 #init loop 0 counter
                  slli         a5, t4, 5
                  addi         tp, zero, 6 #init loop 0 limit
main_10_0_t:      sltiu        s7, a0, -544
                  nop
                  sltu         gp, s6, a0
                  addi         a2, a2, -6 #update loop 0 counter
                  bge          a2, tp, main_10_0_t #branch for loop 0
                  slli         s6, a5, 30
                  srli         s7, t1, 0
                  slti         a4, s10, 260
                  auipc        s7, 6348
                  nop
                  addi         s8, t4, 801
                  sltiu        sp, a7, -331
                  bge          s11, s2, main_10_1_t #branch for loop 1
                  xori         t1, s8, 1343
                  addi         s11, zero, 7 #init loop 0 counter
                  and          a3, t2, a1
                  addi         a5, zero, 10 #init loop 0 limit
                  or           gp, t2, a4
main_18_0_t:      slti         s0, a2, -106
                  sltiu        s6, t3, 1027
                  addi         s11, s11, 9 #update loop 0 counter
                  nop
                  srl          tp, zero, ra
                  bltu         s11, a5, main_18_0_t #branch for loop 0
                  auipc        a3, 346652
                  addi         s10, zero, 10 #init loop 1 counter
                  srl          s2, s2, a4
                  addi         sp, zero, 10 #init loop 1 limit
                  srai         a4, s7, 6
                  sra          s1, t6, a7
                  sltu         t0, s1, t2
                  sra          zero, s10, tp
                  and          a5, a6, a0
                  nop
                  slli         t2, s6, 7
main_21_1_t:      sltu         t4, t6, s1
                  srl          s5, s7, s6
                  addi         s10, s10, -9 #update loop 1 counter
                  and          t2, t5, s4
                  addi         a2, zero, 5 #init loop 0 counter
                  srl          a4, a6, t6
                  xori         s8, s0, 815
                  sub          s4, t2, s9
                  slti         s3, tp, 426
                  addi         s0, zero, 10 #init loop 0 limit
                  addi         gp, t4, 548
                  sltiu        tp, t5, -1079
                  sub          s7, t6, s10
main_21_0_t:      sltu         t3, s9, a0
                  addi         a2, a2, 5 #update loop 0 counter
                  addi         s8, a6, 1726
                  sltiu        tp, t1, -343
                  xori         gp, t2, 666
                  bne          a2, s0, main_21_0_t #branch for loop 0
                  srli         s1, ra, 19
                  xori         a3, s5, 296
                  bgeu         s10, sp, main_21_1_t #branch for loop 1
                  sub          s2, s6, a3
                  addi         s2, zero, -4 #init loop 0 counter
                  add          s6, sp, a6
                  srl          t0, s6, gp
                  sub          s8, zero, s1
                  addi         a6, zero, 19 #init loop 0 limit
main_25_0_t:      sub          s10, a0, a6
                  sub          s6, s1, t4
                  addi         s2, s2, 6 #update loop 0 counter
                  or           a3, t4, s6
                  bltu         s2, a6, main_25_0_t #branch for loop 0
                  srl          s0, gp, t1
                  addi         a1, zero, 10 #init loop 1 counter
                  sltu         s1, s8, a0
                  srai         t0, t2, 21
                  srai         s8, t3, 26
                  sub          tp, a5, tp
                  addi         s3, zero, 17 #init loop 1 limit
                  nop
                  auipc        t0, 784530
                  sltiu        s6, t1, 1902
main_12_1_t:      and          a5, t3, s7
                  slti         a4, a5, -1756
                  sra          a0, t1, a3
                  slli         s1, t4, 8
                  addi         a1, a1, 7 #update loop 1 counter
                  add          a5, a6, t2
                  addi         a6, zero, -5 #init loop 0 counter
                  addi         sp, zero, -13 #init loop 0 limit
                  sll          zero, t6, s9
main_12_0_t:      andi         s5, s0, 801
                  sll          t4, t4, s11
                  addi         a6, a6, -9 #update loop 0 counter
                  bge          a6, sp, main_12_0_t #branch for loop 0
                  srli         s4, s9, 20
                  sltu         t0, s1, a0
                  andi         s11, s8, 2021
                  bne          a1, s3, main_12_1_t #branch for loop 1
                  xori         s10, s8, -1520
                  sll          s4, s8, t0
                  bltu         s9, s9, 8f
                  sll          a4, t3, a3
                  lui          s0, 641558
                  bne          a4, t2, 18f
                  auipc        s0, 531323
                  srai         a6, a3, 26
                  lui          t4, 5588
8:                slli         zero, tp, 24
                  xori         s3, t4, -1444
                  beq          a2, a3, 14f
                  add          s5, t4, t5
                  bge          sp, s5, 14f
                  nop
14:               bltu         s10, s8, 16f
                  beq          zero, s3, 34f
16:               bne          s0, a6, 36f
                  sltu         a7, s0, zero
18:               add          s5, t2, s9
                  slt          s11, s4, s5
                  ori          a2, s9, 2046
                  xor          s1, t5, t6
                  or           t0, s1, gp
                  ori          s11, s10, -1566
                  bltu         t1, s8, 40f
                  sra          a7, s0, s3
                  sltu         s11, s10, t1
                  ori          s10, s11, -1754
                  srli         a5, a3, 30
                  sra          sp, s8, a4
                  beq          s5, t5, 38f
                  and          s3, s9, s8
                  srli         a2, s3, 5
                  ori          s0, s4, -111
34:               lui          a1, 188716
                  lui          a1, 742632
36:               sub          zero, t6, tp
                  auipc        t4, 581828
38:               lui          a1, 21476
                  andi         s6, a0, -1507
40:               slli         s11, s3, 13
                  ori          s1, t1, -1306
                  auipc        a1, 912012
                  and          s7, t6, sp
                  sll          s4, s10, a6
                  sra          a3, tp, s5
                  ori          s4, s7, 2003
                  srai         a2, s11, 17
                  slti         s8, zero, 1765
                  nop
                  sltu         s8, a7, t5
                  auipc        s8, 578736
                  auipc        s10, 806864
                  srai         s10, s4, 6
                  andi         s3, t1, 1414
                  sltu         s1, tp, zero
                  bgeu         s7, a0, 68f
                  andi         t0, gp, -19
                  beq          a6, tp, 77f
                  slt          s8, a0, s6
                  beq          s11, t4, 64f
                  xor          s0, tp, a0
                  srai         zero, a6, 4
                  bne          s2, s7, 79f
64:               slti         s6, s8, 1877
                  sra          s0, s2, s6
                  bne          a6, t1, 84f
                  sra          s2, s11, tp
68:               bne          s11, a3, 77f
                  slti         ra, t1, 290
                  bge          s1, s3, 83f
                  auipc        sp, 46467
                  and          s6, s3, s9
                  ori          gp, s10, 933
                  and          s7, s7, t5
                  slti         a5, a6, 368
                  slt          t1, a5, s7
77:               sltiu        a1, s7, 1691
                  addi         t2, a3, -537
79:               bltu         t3, t5, 81f
                  auipc        tp, 831408
81:               and          s5, sp, a0
                  slt          s4, sp, a5
83:               slt          s8, sp, a5
84:               add          a6, t0, t2
                  nop
                  addi         s10, s4, 1761
                  sll          t1, s1, s0
                  addi         a0, t0, -1453
                  sll          s3, s9, s0
                  and          sp, s7, ra
                  add          s3, s8, t6
                  bltu         t5, s4, 102f
                  lui          s8, 1012439
                  sltiu        t3, t4, -1450
                  srai         a0, sp, 17
                  andi         tp, t4, 424
                  blt          gp, a4, 108f
                  or           s3, a4, a6
                  bgeu         a1, a3, 118f
                  addi         s5, t4, 1476
                  sra          a7, gp, s7
102:              sltiu        s4, t2, -109
                  bgeu         t2, a7, 116f
                  slti         a5, a7, -339
                  sub          a0, s2, s3
                  sll          s5, t6, t5
                  srli         a2, tp, 28
108:              or           s0, sp, t3
                  ori          a2, t6, -623
                  add          t1, t0, t0
                  slti         s3, a2, 1891
                  srai         a2, s3, 28
                  add          sp, s2, t2
                  bltu         zero, s7, 121f
                  andi         s3, s0, 77
116:              sll          s10, s1, s9
                  sll          s1, tp, zero
118:              bgeu         t4, a5, 121f
                  sltiu        a4, sp, 566
                  sra          s6, a3, s0
121:              blt          ra, a6, 134f
                  and          s3, s10, a0
                  sub          s0, s6, a0
                  beq          tp, a6, 127f
                  bltu         t2, t0, 143f
                  srai         a7, s11, 18
127:              xor          s10, s0, ra
                  lui          a4, 373027
                  sra          a4, s6, a4
                  and          t0, s10, a2
                  ori          ra, s3, -861
                  ori          s5, a5, -530
                  bltu         s4, t5, 144f
134:              srl          s10, t6, a5
                  or           a6, s0, a3
                  srai         a5, a7, 8
                  slti         a2, ra, -584
                  slt          t0, s1, tp
                  add          a7, a4, t6
                  add          s5, s11, s0
                  and          s0, t6, s7
                  addi         zero, t6, -13
143:              slt          gp, t6, s7
144:              add          gp, t2, s0
                  slli         s3, s10, 2
                  lui          tp, 367233
                  srl          t3, a5, s3
                  add          s2, sp, sp
                  xor          s2, a4, a4
                  sll          t2, t2, a1
                  sub          a3, a6, gp
                  auipc        s0, 378588
                  bne          t1, s11, 159f
                  lui          s4, 202633
                  auipc        s4, 815936
                  bge          t3, s0, 170f
                  or           s2, s2, s6
                  srai         gp, a3, 4
159:              bge          t6, s7, 175f
                  xor          s6, s11, ra
                  sll          t4, gp, t3
                  slt          a6, t4, a0
                  xor          zero, t6, s7
                  slli         s5, s7, 16
                  auipc        s11, 608737
                  bne          t0, s3, 184f
                  sltiu        s2, a1, -926
                  sub          t3, s10, a6
                  auipc        gp, 419749
170:              xori         s5, s7, 1193
                  sub          s5, s4, t1
                  sll          s5, a2, a3
                  srai         t3, ra, 17
                  or           s7, s2, tp
175:              sltiu        sp, zero, -145
                  sub          a2, s2, t0
                  andi         a6, zero, 1265
                  andi         tp, t1, -1462
                  beq          t2, s5, 182f
                  sub          t0, s11, s4
                  srl          a1, s8, a5
182:              bne          s9, s2, 185f
                  srai         s7, s11, 9
184:              sltiu        t1, a4, 684
185:              sltiu        s3, tp, -165
                  slti         t4, t3, 541
                  addi         s11, s4, 532
                  sll          a6, a3, sp
                  srl          a2, zero, tp
                  sub          t1, s1, s2
                  ori          ra, gp, 864
                  slli         sp, a5, 19
                  sltu         t3, t4, s11
                  bgeu         t0, a4, 207f
                  nop
                  blt          a3, s3, 212f
                  bltu         s1, s7, 204f
                  auipc        s7, 356786
                  nop
                  bltu         a7, s9, 219f
                  lui          a4, 966536
                  sltu         a7, a7, sp
                  bltu         s10, t2, 207f
204:              sltiu        t4, s11, -479
                  sltu         s4, s2, sp
                  srai         t1, s9, 27
207:              bgeu         t0, s9, 218f
                  nop
                  and          a5, s0, t0
                  sltu         s8, t2, sp
                  slli         t4, s6, 16
212:              srl          t3, t2, tp
                  srai         s7, s7, 19
                  beq          s5, s0, 228f
                  slti         ra, s1, 1066
                  srl          a2, s3, a1
                  and          t2, s0, ra
218:              bne          gp, s1, 224f
219:              beq          s10, gp, 238f
                  sltiu        s6, a3, -334
                  xor          a5, s4, s10
                  srli         gp, s4, 9
                  srai         tp, t5, 20
224:              andi         s4, s1, -1514
                  bgeu         s7, s3, 244f
                  sra          a6, t2, s6
                  sltiu        s6, tp, 1871
228:              srli         s10, t2, 6
                  sll          a7, a7, a5
                  bltu         a5, s11, 232f
                  slti         s6, s7, 818
232:              bne          zero, s8, 246f
                  sltiu        s7, gp, 762
                  slli         s8, s9, 23
                  nop
                  bne          a7, t4, 245f
                  nop
238:              sra          a6, a7, s8
                  srli         sp, a6, 9
                  slli         s4, s1, 7
                  sll          a1, tp, a5
                  bge          a0, s5, 252f
                  bne          t2, t2, 251f
244:              blt          ra, s10, 260f
245:              srl          t3, t1, s8
246:              slti         tp, a7, 1067
                  auipc        s7, 175753
                  slli         s10, s5, 7
                  bge          zero, s10, 261f
                  srai         a7, tp, 2
251:              bge          sp, tp, 258f
252:              beq          a0, t2, 268f
                  srl          gp, a0, s1
                  addi         s3, zero, -7 #init loop 1 counter
                  addi         s0, zero, 0 #init loop 1 limit
                  sltiu        s6, a3, -734
main_9_1_t:       andi         s11, t2, -1889
                  addi         s3, s3, 7 #update loop 1 counter
                  sll          a6, a2, a6
                  addi         s5, zero, -6 #init loop 0 counter
                  xor          t3, tp, s1
                  addi         s4, zero, -13 #init loop 0 limit
                  nop
main_9_0_t:       add          a4, tp, s1
                  addi         s5, s5, -7 #update loop 0 counter
                  and          a7, s3, zero
                  bne          s5, s4, main_9_0_t #branch for loop 0
                  bne          s3, s0, main_9_1_t #branch for loop 1
                  xori         s6, s0, 1853
                  addi         s1, t5, -2015
                  bgeu         t1, sp, 268f
                  sltu         t2, tp, t1
                  bltu         a3, s8, 277f
258:              slti         s4, t5, -1309
                  addi         s2, s5, -776
260:              slti         a2, s4, 933
261:              xori         t3, a0, 793
                  bltu         zero, s11, 266f
                  blt          s4, a7, 265f
                  sra          t0, t6, a4
265:              bltu         s3, s8, 278f
266:              xori         s5, s8, -1453
                  sra          a5, s4, t3
268:              sra          s7, s2, a2
                  andi         a7, s6, -1803
                  auipc        a7, 959665
                  or           a6, a5, sp
                  bltu         a4, a6, 290f
                  sll          t4, s0, gp
                  bge          ra, s10, 276f
                  slti         a6, s2, -622
276:              blt          a0, s0, 287f
277:              ori          s1, s7, -842
278:              and          a3, ra, t3
                  sltu         zero, t4, s7
                  srai         a3, t2, 14
                  and          s3, a2, s8
                  bgeu         ra, s8, 295f
                  sra          s0, s2, zero
                  slti         s6, s9, -1573
                  sltiu        a5, t0, 118
                  sltu         s10, a7, t0
287:              nop
                  ori          s0, gp, -1008
                  sub          t4, s11, t0
290:              nop
                  beq          sp, s6, 311f
                  nop
                  slt          s4, a6, s3
                  blt          a0, s7, 298f
295:              sub          s1, a1, s5
                  add          s4, s4, a2
                  lui          a1, 673402
298:              andi         s2, s9, 1600
                  srli         a6, s8, 24
                  and          s3, sp, s8
                  addi         s6, s10, -67
                  addi         t0, t3, -881
                  sra          s5, t4, a6
                  bltu         t4, s10, 318f
                  ori          a4, t2, 640
                  slli         s6, s0, 10
                  add          s10, zero, sp
                  auipc        s4, 946551
                  sltiu        tp, s1, 1443
                  add          tp, s6, s7
311:              srl          ra, zero, s9
                  nop
                  addi         ra, t2, 1087
                  andi         ra, a7, 758
                  slt          t0, s11, a6
                  bgeu         t3, tp, 335f
                  beq          s6, sp, 319f
318:              srai         s0, t5, 16
319:              beq          s3, a1, 335f
                  addi         gp, a2, -770
                  slt          a0, gp, tp
                  andi         ra, s2, -2000
                  add          a2, gp, t6
                  nop
                  and          a3, t0, a6
                  or           zero, tp, a4
                  sltu         a2, sp, a7
                  ori          sp, s2, -366
                  lui          t4, 628934
                  bgeu         a4, s5, 334f
                  add          s1, s2, s1
                  ori          s3, tp, 11
                  slt          a1, t3, s11
334:              bge          a1, a4, 350f
335:              bne          t0, a3, 338f
                  bge          s7, s11, 342f
                  sub          t0, t4, s10
338:              slt          s11, s8, s1
                  or           zero, tp, s8
                  sltiu        a5, sp, 1331
                  xori         ra, gp, 1802
342:              lui          s4, 525563
                  slli         s4, t4, 30
                  sll          s10, a1, a1
                  add          a3, sp, s1
                  sll          t0, s4, tp
                  blt          s4, s3, 354f
                  srl          sp, a1, t2
                  sltiu        t4, s11, 143
350:              or           s7, s8, a3
                  slti         t3, ra, 1917
                  or           s2, t6, ra
                  beq          t0, a5, 360f
354:              sub          s4, t4, t2
                  sltu         s7, t4, s9
                  srl          a1, s3, ra
                  srai         zero, t4, 13
                  sll          a5, t1, s1
                  bgeu         gp, s5, 378f
360:              lui          a7, 414594
                  srai         s4, s0, 4
                  sub          a6, s8, zero
                  andi         t2, a6, 676
                  sltiu        t0, a6, 1470
                  bge          s7, t0, 381f
                  slti         s7, s2, -84
                  sltiu        s1, t0, -1648
                  or           t2, a7, a6
                  bne          s9, t4, 372f
                  slt          s4, ra, s3
                  srl          s11, gp, t2
372:              bgeu         t5, s4, 381f
                  add          t4, s7, t6
                  addi         a7, tp, -1273
                  slli         s4, s11, 26
                  sltu         gp, a1, a3
                  andi         zero, t5, 318
378:              sltu         s7, s7, a0
                  sltu         s10, zero, sp
                  or           s8, s2, a6
381:              add          s0, s0, ra
                  sll          s2, s7, a2
                  bge          s2, a4, 396f
                  xori         s6, a6, -1290
                  addi         a6, zero, 2 #init loop 1 counter
                  addi         a5, zero, 8 #init loop 1 limit
                  srli         s3, t3, 2
main_7_1_t:       lui          s3, 366379
                  xor          s0, s7, a0
                  addi         a6, a6, 1 #update loop 1 counter
                  addi         a7, zero, 2 #init loop 0 counter
                  addi         a2, zero, -2 #init loop 0 limit
main_7_0_t:       sub          gp, s11, s3
                  or           s3, a0, a3
                  addi         a7, a7, -4 #update loop 0 counter
                  bne          a7, a2, main_7_0_t #branch for loop 0
                  blt          a6, a5, main_7_1_t #branch for loop 1
                  ori          s4, zero, -1170
                  sub          a4, a0, t3
                  srai         s6, a5, 31
                  addi         s10, tp, 1997
                  slt          t2, s3, a3
                  sll          s2, a1, t3
                  slli         a2, tp, 15
                  bne          a6, t6, 401f
                  srl          t2, t2, s2
                  sltiu        s3, s11, -645
                  xor          t1, a4, s7
                  sltiu        a3, t2, 667
396:              srl          s1, gp, zero
                  bge          s6, a1, 409f
                  add          s3, t4, zero
                  bne          a3, a1, 412f
                  sub          s11, t1, a6
401:              sltu         ra, s8, a3
                  xori         s8, s0, -960
                  addi         a1, a7, -2000
                  slt          zero, t5, t6
                  beq          s2, s4, 423f
                  sll          s3, s4, t0
                  addi         t2, s0, -1814
                  and          a7, a7, s0
409:              srl          s2, s0, a0
                  beq          s4, t0, 421f
                  xor          a7, s8, s11
412:              slti         tp, a3, -1098
                  andi         t4, s2, 1031
                  srli         s5, t3, 27
                  slti         a3, t6, 275
                  nop
                  sltiu        a1, s2, -582
                  bltu         a1, s1, 437f
                  srai         a1, s3, 8
                  add          s6, s4, s4
421:              slti         tp, s8, 975
                  sltu         s3, sp, s4
423:              srai         a4, a2, 22
                  xor          s7, s3, s10
                  slli         a5, s3, 16
                  bne          s6, a5, 428f
                  lui          sp, 378826
428:              ori          a4, tp, -1102
                  sra          a7, s8, s2
                  sub          a3, tp, a3
                  bge          a4, s10, 442f
                  sra          a7, s0, s2
                  add          gp, s9, s3
                  srai         tp, t4, 29
                  bgeu         t2, sp, 449f
                  srai         s7, s7, 21
437:              slti         s11, t1, -1205
                  andi         t4, s0, 1463
                  bne          ra, t1, 457f
                  nop
                  andi         s7, s8, 1129
442:              sltu         a3, t0, a4
                  bge          sp, s7, 445f
                  or           s6, s4, s1
445:              blt          t3, s0, 453f
                  slt          a2, gp, tp
                  blt          zero, s3, 454f
                  ori          zero, a1, -1952
449:              sltiu        s2, t6, 882
                  sra          t3, sp, s8
                  ori          t2, a0, 677
                  add          t4, ra, s1
453:              srl          t0, s2, sp
454:              sltiu        s5, a6, -817
                  slt          a5, s9, s10
                  sll          a5, ra, s1
457:              bge          a0, tp, 475f
                  beq          s7, t6, 465f
                  andi         s10, a0, 217
                  bgeu         s7, s7, 472f
                  sll          ra, a3, zero
                  blt          a0, t3, 464f
                  blt          s3, s10, 483f
464:              sll          a7, s6, t5
465:              slti         s10, s10, 112
                  ori          a2, t3, -28
                  sub          ra, gp, a4
                  bltu         t0, s7, 487f
                  auipc        a3, 675617
                  andi         t0, t3, -1625
                  slli         a5, s5, 10
472:              slli         ra, t5, 16
                  bltu         s6, s6, 484f
                  sltu         a0, tp, t0
475:              or           gp, a6, a6
                  srli         t4, tp, 7
                  bne          zero, s4, 481f
                  slt          t2, a6, a0
                  xor          s3, a6, gp
                  bltu         a7, s3, 494f
481:              lui          ra, 482051
                  slli         s0, s9, 7
483:              sra          s10, s10, s6
484:              ori          a1, a7, 521
                  sltu         s0, s0, a2
                  sltiu        s8, tp, -349
487:              blt          a3, s4, 500f
                  beq          s2, s9, 498f
                  ori          a6, zero, 1238
                  xor          s0, s1, s9
                  beq          s9, a3, 504f
                  slt          s11, zero, s5
                  xor          t2, a4, a3
494:              auipc        s2, 859938
                  sltu         s4, a2, gp
                  srli         s1, a5, 17
                  xor          s5, s8, t2
498:              sll          a5, s11, s6
                  srai         s1, a2, 27
500:              srli         s0, s0, 17
                  bgeu         s0, s8, 520f
                  lui          s10, 910236
                  sltu         t2, s8, a1
504:              or           s10, s2, s7
                  slti         s2, s7, -1512
                  sll          t2, s10, a5
                  slti         gp, s2, -2001
                  sra          a6, tp, ra
                  sra          s7, s2, s11
                  sra          s11, t1, t1
                  xor          t2, a0, a4
                  sra          s4, t3, s0
                  srli         a1, s7, 17
                  blt          a4, a2, 520f
                  and          a2, a2, t2
                  sll          a6, a4, t2
                  bltu         t4, tp, 525f
                  srl          s1, t4, a1
                  slti         a2, a0, 219
520:              slti         s2, a2, -394
                  srai         s4, ra, 5
                  slli         sp, a5, 10
                  auipc        s0, 611751
                  addi         a5, zero, -6 #init loop 0 counter
                  srli         tp, s10, 5
                  auipc        zero, 422417
                  sll          t4, t0, t1
                  lui          t4, 646549
                  srl          a7, a3, sp
                  addi         t2, zero, 18 #init loop 0 limit
main_14_0_t:      sltu         s4, s3, s4
                  slli         s8, t6, 12
                  addi         a5, a5, 4 #update loop 0 counter
                  sub          a0, gp, tp
                  sltu         t0, sp, s9
                  srli         s4, a0, 13
                  slti         ra, a1, 974
                  and          s0, t3, t1
                  or           s8, s2, s10
                  xori         gp, t4, -872
                  auipc        t1, 610622
                  slt          a1, a6, a1
                  slti         t1, sp, 1803
                  addi         gp, a7, 23
                  sra          t4, a3, s6
                  slt          s5, t4, a3
                  beq          a5, t2, main_14_0_t #branch for loop 0
                  sll          s0, s1, s10
                  slti         a5, s6, -76
525:              blt          s5, zero, 544f
                  sltiu        s10, s10, -1912
                  slli         t2, s5, 28
                  blt          zero, s0, 541f
                  nop
                  sltiu        a5, s5, -2027
                  andi         a4, ra, -1357
                  srai         t1, s8, 21
                  bgeu         s9, gp, 542f
                  addi         t3, a7, -535
                  andi         t1, s6, -808
                  sll          s8, s8, t3
                  bne          s10, s6, 555f
                  auipc        zero, 513079
                  auipc        s5, 389753
                  ori          s3, s3, 630
541:              bge          t3, t1, 557f
542:              andi         a4, s1, -1742
                  auipc        a4, 453193
544:              sub          s4, a3, gp
                  bge          a1, s2, 548f
                  bgeu         s6, s7, 557f
                  sll          s1, t6, s7
548:              srai         tp, a2, 17
                  srl          s11, a6, t6
                  ori          gp, s7, -202
                  slt          a7, a4, gp
                  or           t4, s11, s6
                  ori          s4, a5, 1090
                  blt          s1, s2, 568f
555:              bge          t4, t2, 557f
                  bge          s9, s11, 572f
557:              blt          gp, s5, 561f
                  beq          s0, t0, 574f
                  slti         s5, s11, -756
                  slti         a1, s7, 1575
561:              srl          a3, t3, tp
                  beq          zero, s6, 564f
                  blt          t1, a6, 566f
564:              andi         t3, s7, -120
                  andi         a6, s6, 1260
566:              xori         t1, s7, 1685
                  and          s2, s7, t5
568:              sra          a3, a7, gp
                  sra          zero, s7, tp
                  sltiu        s8, t3, 1958
                  srli         s4, a5, 25
572:              bne          s0, a7, 591f
                  auipc        a6, 562993
574:              sra          s0, a2, a1
                  bne          s1, s6, 594f
                  srli         a4, t5, 29
                  slli         s11, a5, 31
                  add          t0, s5, s4
                  bltu         s2, a1, 585f
                  sltu         s4, s1, s6
                  auipc        s6, 899457
                  nop
                  slt          s8, s9, t3
                  slt          t2, s6, gp
585:              add          s8, t1, s3
                  bge          s11, sp, 597f
                  andi         a1, a4, 406
                  srl          gp, s4, a3
                  sub          s0, tp, a6
                  sltiu        t0, a4, 1999
591:              srl          s1, s7, t2
                  addi         a1, t3, -1911
                  bge          s4, s4, 611f
594:              sltiu        a0, s8, 468
                  and          zero, a0, t1
                  or           t2, a4, t2
597:              bge          t2, s7, 613f
                  auipc        a5, 451805
                  and          sp, s2, a7
                  add          s5, s4, s11
                  xor          s6, a4, s3
                  sub          s2, t4, tp
                  slti         s0, t0, 1363
                  slti         s2, gp, 76
                  blt          s0, s5, 621f
                  slt          a3, s11, t0
                  xori         t1, gp, 1186
                  blt          tp, a1, 618f
                  sub          a7, sp, s6
                  slt          t4, a3, t2
611:              bne          t6, t0, 618f
                  xori         a5, a3, -472
613:              lui          s0, 219469
                  slli         s1, s4, 17
                  srli         t4, s5, 1
                  lui          a5, 141823
                  xor          s5, t5, t2
618:              ori          a5, a3, -1415
                  sltiu        t2, t6, 1326
                  sll          t4, s1, s11
621:              ori          t0, a0, -231
                  sltu         zero, s4, a6
                  sll          t2, s4, s10
                  srl          zero, a5, zero
                  lui          s3, 429537
                  nop
                  slli         t4, s9, 30
                  bge          a1, t1, 636f
                  auipc        tp, 273832
                  slli         a2, s8, 14
                  or           s6, a6, s2
                  slt          t1, a1, t1
                  sltu         a4, s8, t5
                  add          a3, a6, sp
                  lui          s3, 166020
636:              and          t1, a6, s1
                  lui          a7, 900567
                  slt          s6, s10, s6
                  srl          a4, s11, s1
                  beq          s9, a5, 654f
                  srl          t2, s7, s0
                  nop
                  bltu         t1, s1, 662f
                  slt          a4, s11, t1
                  srai         a7, a7, 3
                  bne          ra, s0, 660f
                  srli         a3, a4, 28
                  bltu         t2, a2, 659f
                  auipc        a1, 56240
                  or           s5, a0, sp
                  addi         t1, s8, 341
                  bltu         t0, a3, 664f
                  slt          a0, t3, a2
654:              srli         s2, zero, 11
                  ori          ra, t4, -862
                  bne          s9, a7, 660f
                  srli         t1, a1, 5
                  ori          a4, zero, -1485
659:              nop
660:              sra          a4, tp, s6
                  blt          s6, s6, 663f
662:              sltiu        a2, t3, 799
663:              auipc        s6, 914830
664:              beq          s6, s7, 682f
                  ori          s11, t0, 2002
                  bne          s3, s11, 679f
                  bgeu         s3, s9, 669f
                  andi         s7, s0, -1353
669:              srai         a7, s6, 9
                  bltu         s10, a6, 679f
                  slt          s6, s11, zero
                  andi         s0, s8, -1339
                  nop
                  addi         a6, s9, -277
                  or           a6, a2, gp
                  srai         t4, t4, 8
                  sltu         t0, s4, s8
                  sltiu        a0, s8, -1762
679:              or           a3, s11, a3
                  srai         zero, s9, 6
                  xor          t0, gp, s11
682:              slti         tp, ra, 1586
                  bne          t3, s8, 699f
                  xor          t2, a3, s0
                  slti         gp, s2, 1635
                  add          gp, zero, a0
                  beq          s11, s9, 694f
                  slli         s7, s5, 0
                  xor          s4, s6, s8
                  bgeu         t5, a6, 692f
                  sltu         s0, sp, a3
692:              sub          ra, a5, a2
                  and          s2, s4, t4
694:              sltiu        a1, a7, 444
                  add          a7, s6, s5
                  slt          s11, a5, a0
                  srai         s10, a5, 19
                  sltiu        a0, s0, 346
699:              xori         tp, s2, 488
                  nop
                  slti         s1, t0, 470
                  xori         a1, a6, -1382
                  bge          t4, ra, 706f
                  sltiu        tp, gp, -1983
                  ori          a6, a3, -1060
706:              nop
                  slti         a2, s2, -318
                  sltiu        s2, sp, -785
                  xori         a3, zero, -1432
                  slt          gp, a3, a5
                  lui          a3, 958141
                  sltu         s6, s3, a7
                  sra          a4, a6, t2
                  sltu         s11, s2, a0
                  lui          a1, 612222
                  sra          a7, t2, s6
                  sltu         a1, a7, sp
                  andi         s0, a5, -2003
                  sra          a6, a4, s3
                  srai         s2, s5, 10
                  sltu         s10, t2, ra
                  bltu         s8, ra, 726f
                  beq          a2, tp, 736f
                  andi         s7, sp, -579
                  andi         a5, t5, -129
726:              sll          ra, a7, gp
                  sltu         s4, gp, a1
                  srli         a7, zero, 0
                  or           a2, ra, tp
                  sub          gp, t3, a4
                  sltu         s7, zero, s3
                  sltu         sp, s0, a5
                  add          t4, t2, t1
                  srl          s0, s8, gp
                  slli         s1, a2, 2
736:              lui          t3, 326711
                  sltu         a6, s6, t0
                  ori          sp, s10, 699
                  beq          s1, a1, 752f
                  blt          s0, zero, 743f
                  slt          ra, s11, a7
                  bgeu         a1, t0, 762f
743:              blt          s6, s9, 762f
                  sltiu        s10, t5, 341
                  xori         a3, sp, 1988
                  srl          sp, s8, t0
                  and          a4, sp, s5
                  bltu         t0, tp, 761f
                  xor          sp, s10, t1
                  slli         sp, t2, 24
                  auipc        s5, 491298
752:              nop
                  srai         s0, t1, 23
                  bltu         t5, t4, 774f
                  sltiu        gp, ra, -1660
                  bltu         ra, zero, 772f
                  addi         s8, a2, -99
                  andi         ra, t6, 1828
                  srai         s6, gp, 28
                  blt          tp, s3, 773f
761:              sltu         s0, a3, s11
762:              sll          t0, s2, a4
                  slt          s3, t3, t0
                  sll          a5, a5, s3
                  andi         s2, a1, 1573
                  slt          a7, a5, a6
                  and          t1, s1, s5
                  xori         s2, s1, -1784
                  bgeu         s6, tp, 771f
                  sltiu        s0, s9, -1523
771:              bge          ra, t4, 782f
772:              or           s11, t2, t6
773:              andi         s6, a0, 1243
774:              nop
                  sra          s1, tp, sp
                  slli         a6, t3, 8
                  sltiu        s6, s2, 722
                  slt          s2, zero, gp
                  blt          s5, a0, 789f
                  slt          s11, s11, a4
                  slti         s7, a2, -1067
782:              auipc        s11, 408059
                  bgeu         tp, s1, 786f
                  srl          ra, gp, s3
                  addi         zero, s5, -1816
786:              srl          s2, a4, t3
                  srai         s5, a7, 25
                  xor          s0, s0, t6
789:              and          s8, tp, s1
                  blt          a3, t4, 796f
                  andi         zero, a4, -997
                  ori          a0, a6, 1608
                  slti         s2, s10, 955
                  or           s0, sp, tp
                  blt          t4, ra, 814f
796:              bltu         a6, s8, 805f
                  addi         s8, s11, -1491
                  bne          s10, s2, 802f
                  bgeu         s7, s3, 813f
                  andi         gp, zero, 1097
                  blt          a2, s11, 808f
802:              slt          s2, s2, gp
                  srl          s4, tp, a0
                  auipc        s4, 284721
805:              add          ra, s8, a5
                  srai         a4, s6, 22
                  andi         s3, s3, -1184
808:              xori         s1, a0, 1458
                  bne          s7, gp, 816f
                  ori          t0, tp, -313
                  andi         a1, s1, -1442
                  slli         zero, s3, 26
813:              ori          gp, a4, 1647
814:              or           a3, s1, s6
                  addi         s5, t2, -390
816:              add          s6, t4, sp
                  srai         s1, ra, 0
                  slli         t0, t3, 29
                  sub          ra, tp, a0
                  bltu         s3, t4, 822f
                  slti         tp, gp, -1078
822:              srl          s5, s2, s1
                  slti         gp, zero, -558
                  blt          t1, t1, 842f
                  and          a4, t6, gp
                  and          s2, s1, a0
                  bltu         s4, s11, 843f
                  lui          gp, 837785
                  or           a6, gp, s4
                  slti         ra, s9, -1320
                  slli         a4, s3, 8
                  lui          zero, 900371
                  xor          tp, s11, zero
                  srl          t3, tp, s1
                  and          s4, a2, s0
                  sub          s7, t1, s11
                  slt          s0, s10, a6
                  bne          tp, s9, 842f
                  lui          s5, 959647
                  sltiu        s10, s0, 843
                  bltu         s4, t6, 860f
842:              sub          a0, s10, s9
843:              sltiu        tp, a1, 1330
                  srli         a2, ra, 28
                  xor          a2, t5, a3
                  srli         a6, a4, 13
                  srl          s5, s11, a5
                  sra          s3, a4, zero
                  slti         s11, s1, 918
                  bge          s6, s8, 861f
                  ori          s0, sp, -602
                  sra          s1, t1, t3
                  add          s3, s6, t3
                  srl          s0, t4, a3
                  sub          s0, t5, s8
                  bltu         s7, s11, 868f
                  andi         t4, t0, 212
                  sll          gp, t3, gp
                  bne          a4, t4, 862f
860:              bltu         a3, t4, 878f
861:              lui          a5, 217077
862:              andi         s11, tp, 1963
                  beq          tp, s4, 871f
                  addi         gp, s3, -1717
                  ori          a2, t6, -2023
                  bltu         s11, t4, 880f
                  and          tp, s2, s9
868:              slt          a7, tp, a5
                  bgeu         t5, t4, 871f
                  addi         s6, a6, 268
871:              auipc        t2, 982007
                  sra          a7, a5, s0
                  srai         t0, t2, 15
                  slti         a5, t2, 1891
                  slt          s7, s8, t3
                  sltiu        s5, zero, 1142
                  add          s5, s4, t1
878:              nop
                  lui          s5, 507349
880:              bne          s11, a2, 896f
                  srai         s10, t2, 28
                  srli         s1, a7, 11
                  nop
                  srl          a7, a0, t4
                  slli         s6, a5, 11
                  blt          a1, t3, 899f
                  srai         zero, a1, 6
                  beq          tp, a7, 891f
                  auipc        s1, 411647
                  blt          a4, a1, 908f
891:              slti         tp, s7, -1134
                  bne          ra, a0, 899f
                  bltu         s5, a4, 912f
                  sltiu        s1, a6, -49
                  add          t2, s3, sp
896:              srli         a2, a0, 30
                  bge          a3, a3, 916f
                  bltu         s7, s11, 912f
899:              addi         a3, t4, -1473
                  andi         s5, s4, -122
                  and          t3, s6, s11
                  slti         a1, s9, 123
                  nop
                  sltiu        a1, t6, -100
                  sltu         s0, s2, s6
                  bge          sp, t2, 914f
                  auipc        t2, 472513
908:              beq          t1, t5, 912f
                  sra          s5, s4, s6
                  andi         t1, s3, 1186
                  addi         zero, t6, -777
912:              andi         t0, s8, 7
                  slt          zero, tp, s0
914:              addi         s11, t2, 199
                  and          s2, a7, s6
916:              sra          s3, s5, t5
                  bgeu         t1, s0, 924f
                  add          s11, t3, s5
                  addi         s5, zero, 10 #init loop 0 counter
                  sub          s1, tp, a1
                  auipc        a4, 604684
                  sltiu        s6, s1, -34
                  addi         a6, zero, 10 #init loop 0 limit
                  sltu         a1, s1, a6
main_2_0_t:       add          s1, s11, sp
                  addi         s5, s5, -5 #update loop 0 counter
                  slti         s8, ra, 1460
                  add          s7, s6, a7
                  slt          ra, s0, t4
                  nop
                  srl          t4, a2, a7
                  bgeu         s5, a6, main_2_0_t #branch for loop 0
                  srl          zero, t5, a4
                  lui          s6, 78991
                  beq          s7, gp, 931f
                  bne          s2, s3, 923f
                  slti         s5, a4, 780
923:              bltu         s10, a2, 929f
924:              bne          zero, tp, 944f
                  sra          s7, t4, zero
                  srli         a4, gp, 9
                  bge          sp, zero, 936f
                  addi         s6, ra, -1418
929:              andi         ra, a4, 1388
                  slt          a4, ra, s7
931:              bgeu         a7, s5, 949f
                  srai         t2, s7, 27
                  add          s5, a7, s7
                  slli         s3, t5, 17
                  bgeu         a3, t4, 939f
936:              bgeu         s0, tp, 955f
                  sub          s1, t5, s8
                  slt          s1, a7, zero
939:              srli         a4, a1, 29
                  blt          a4, a7, 956f
                  and          s5, t0, ra
                  or           t1, s11, a5
                  sub          a3, t5, s2
944:              sltu         s4, s6, a7
                  addi         s10, zero, 4 #init loop 1 counter
                  sltu         s2, gp, a5
                  addi         a6, zero, 4 #init loop 1 limit
main_19_1_t:      slt          t0, a2, t0
                  xor          a0, s2, sp
                  sltiu        s7, s3, -1540
                  addi         s6, a4, -1219
                  addi         s10, s10, -1 #update loop 1 counter
                  xori         a3, a4, -1896
                  addi         s8, zero, 6 #init loop 0 counter
                  addi         sp, zero, -20 #init loop 0 limit
                  xor          a1, t2, s5
                  sll          a5, s3, t3
main_19_0_t:      add          s2, s10, a0
                  addi         s8, s8, -1 #update loop 0 counter
                  bne          s8, sp, main_19_0_t #branch for loop 0
                  slli         a7, zero, 5
                  bgeu         s10, a6, main_19_1_t #branch for loop 1
                  and          s11, s4, s7
                  bge          t5, tp, 961f
                  slti         a2, a3, -2003
                  sub          a0, s7, a6
                  xori         a7, t4, -1809
949:              srl          s3, gp, t1
                  addi         t1, s6, 1443
                  or           a7, s10, s0
                  slt          gp, t2, s0
                  ori          t0, s10, -1074
                  sltiu        zero, a2, 670
955:              sltu         s4, t6, a3
956:              sll          a3, t3, tp
                  sltu         a4, s3, a0
                  sub          a2, s2, a1
                  slti         sp, s11, 894
                  sltiu        a3, s1, -1849
961:              lui          s3, 265014
                  lui          zero, 812002
                  bge          t1, a1, 965f
                  bne          gp, ra, 978f
965:              sll          gp, s3, s4
                  bge          s6, ra, 979f
                  sltiu        a4, s0, -1816
                  and          s4, s5, gp
                  xori         t3, s9, 399
                  slli         s3, a2, 18
                  or           t2, a1, ra
                  sll          s1, a0, a1
                  sltiu        a4, t3, -1526
                  sra          s5, s11, tp
                  slt          s2, t1, s10
                  slli         s4, s3, 10
                  xor          s10, t5, s10
978:              ori          t4, t4, 1596
979:              srai         s10, s5, 13
                  andi         s1, s7, -1654
                  sltiu        s8, s2, 1798
                  or           s0, zero, s3
                  srl          a3, s7, t5
                  srli         a0, a6, 16
                  la           s3, sub_1
                  slti         a1, sp, 372
                  slt          t3, tp, a1
                  addi         s3, s3, -763
                  ori          t0, t0, 1526
                  srai         s5, a3, 10
                  ori          s2, s1, 1576
                  xori         s0, t3, -1349
                  bge          t3, t6, main_j1 #branch to jump instr
                  slti         s10, s7, 1370
main_j1:          jalr         t1, s3, 763 #jump main -> sub_1
                  xor          t2, t0, t0
                  or           ra, s4, s11
                  addi         t1, t6, 1738
                  sltu         a0, s1, s1
                  auipc        sp, 1030599
                  add          tp, a2, t2
                  ori          a3, s2, -509
                  and          s0, a2, s1
                  sltu         s4, s9, t5
                  nop
                  srl          t0, s3, a5
                  xor          s11, s4, a1
                  slli         s3, t4, 23
                  srai         s5, t2, 4
                  sltiu        a5, tp, 1523
                  andi         s8, s5, 497
                  slti         s0, a6, 959
                  ori          s1, a1, -708
                  ori          a1, s0, 471
                  bgeu         s9, a3, 1005f
                  xor          s4, zero, s7
                  sub          gp, a3, t5
1005:             bne          s10, s11, 1021f
                  sll          t4, sp, a1
                  bge          a7, sp, 1018f
                  bge          s4, s2, 1021f
                  and          a5, t5, t2
                  sub          t2, gp, a5
                  slti         t0, s7, -963
                  ori          s2, s0, 841
                  addi         s0, s2, -901
                  auipc        s11, 788515
                  bge          t5, s8, 1028f
                  andi         t1, a1, -1912
                  auipc        s2, 53964
1018:             ori          t1, t0, 1888
                  sll          sp, a1, s7
                  sra          s8, t5, t4
1021:             beq          a2, a1, 1031f
                  beq          t2, sp, 1034f
                  slli         s8, s1, 4
                  bgeu         s8, t1, 1026f
                  bne          zero, sp, 1034f
1026:             sra          s10, s2, s3
                  bgeu         zero, s5, 1030f
1028:             lui          s6, 1025119
                  xori         a6, gp, -1803
1030:             srai         s0, a6, 29
1031:             bltu         t5, s3, 1034f
                  bne          a4, a6, 1039f
                  addi         t4, a1, -994
1034:             and          s7, a1, s1
                  lui          s0, 678288
                  andi         s5, s4, 1645
                  and          s6, t0, sp
                  andi         tp, zero, 670
1039:             bne          t5, t5, 1055f
                  bgeu         a4, s5, 1053f
                  xor          ra, t4, a2
                  or           s0, s3, t2
                  srl          s11, s7, s5
                  slli         tp, zero, 3
                  bgeu         t3, s2, 1064f
                  bge          t0, s4, 1062f
                  auipc        s3, 581085
                  slti         sp, t6, 2
                  slti         s5, a1, 1543
                  slti         a3, t0, -152
                  slt          zero, a4, t0
                  andi         a4, a4, -1381
1053:             sll          a7, s9, s9
                  nop
1055:             slti         a1, a7, -1582
                  bltu         t5, s11, 1075f
                  or           a0, s3, s5
                  ori          a5, t1, -488
                  sltu         sp, a6, t2
                  nop
                  and          a4, a0, a5
1062:             slti         s3, sp, -1309
                  sltiu        s3, sp, 681
1064:             sltiu        t0, ra, -69
                  auipc        a3, 837691
                  addi         s3, a1, 1429
                  andi         s5, t3, -1465
                  xor          s7, a5, s9
                  sub          ra, t0, gp
                  lui          s3, 987397
                  add          s2, tp, a6
                  sltu         a4, a3, s5
                  slt          a0, t6, t3
                  slt          ra, s2, t5
1075:             slt          zero, t3, a1
                  sll          a4, a5, s2
                  sltiu        t2, t6, 451
                  bltu         t4, t2, 1094f
                  andi         s5, s11, -587
                  nop
                  blt          s6, sp, 1085f
                  xor          s4, a4, s2
                  slti         s4, s8, 1824
                  srai         ra, t1, 4
1085:             bge          a4, a1, 1105f
                  bltu         a3, zero, 1098f
                  bltu         a7, t5, 1100f
                  add          a3, s11, s2
                  ori          t2, s1, -1016
                  addi         sp, tp, 160
                  srai         gp, t2, 3
                  nop
                  xori         a3, tp, 904
1094:             xori         a3, a6, -173
                  srai         gp, a4, 24
                  srli         t0, gp, 30
                  addi         t4, s2, -1502
1098:             lui          s1, 531795
                  srl          s3, gp, a2
1100:             xor          s5, t1, a7
                  sltiu        s3, t1, -1129
                  sub          t4, t5, s8
                  beq          t1, a0, 1111f
                  auipc        a7, 769714
1105:             ori          a7, zero, -1688
                  srai         t0, tp, 4
                  bltu         s0, s0, 1109f
                  auipc        s3, 897351
1109:             blt          a4, s1, 1111f
                  beq          s5, s0, 1128f
1111:             andi         a2, a1, -1708
                  or           s8, a1, a4
                  lui          s3, 1003522
                  or           s5, s0, s7
                  slli         a4, s1, 12
                  xori         a6, ra, -555
                  sub          a0, tp, t4
                  bne          zero, t0, 1122f
                  sll          tp, s4, zero
                  or           a2, gp, t5
                  sll          s7, t3, a1
1122:             bgeu         s8, zero, 1140f
                  xori         a3, s8, -1
                  nop
                  sltu         t3, a5, s4
                  bgeu         a5, s5, 1133f
                  sll          a5, s1, s7
1128:             sra          a6, a6, s10
                  bltu         t0, a5, 1140f
                  sll          t2, s9, a6
                  xori         a0, gp, -969
                  ori          t4, gp, 1037
1133:             bltu         s1, a4, 1143f
                  slti         sp, a3, 757
                  srl          t2, s11, t4
                  and          s2, ra, s0
                  nop
                  auipc        a7, 994095
                  auipc        s5, 231407
1140:             sub          ra, s10, s1
                  xori         t4, a7, -1016
                  xor          s5, a4, s10
1143:             or           a0, s3, s8
                  or           s8, t0, tp
                  xori         s3, t5, -1918
                  slti         s3, s1, 24
                  sra          s2, a0, sp
                  blt          s11, zero, 1154f
                  beq          sp, a7, 1162f
                  addi         s5, a2, 1292
                  ori          s7, a0, 420
                  bltu         a6, s7, 1154f
                  srl          s7, s2, s1
1154:             slti         a3, s11, 1145
                  ori          s4, a7, -510
                  srai         a1, a1, 16
                  bgeu         t2, t0, 1176f
                  beq          t0, s7, 1172f
                  srl          s5, a4, s7
                  lui          s1, 161758
                  srai         a0, s11, 17
1162:             ori          a5, a3, -564
                  addi         s4, a6, -957
                  srai         zero, a0, 25
                  slli         s11, a4, 30
                  andi         a1, s9, 1043
                  sra          s11, s2, s5
                  xor          a2, a6, a3
                  blt          a6, s6, 1183f
                  sll          a0, t1, s9
                  xori         s11, t0, -44
1172:             slt          gp, s3, s8
                  andi         t0, t3, -1283
                  auipc        ra, 574143
                  slti         s2, a7, -1497
1176:             auipc        s7, 695655
                  slt          s1, a4, t3
                  sltiu        a2, s7, 1680
                  beq          gp, s8, 1190f
                  bltu         gp, zero, 1192f
                  or           sp, t4, t4
                  addi         s5, zero, 10 #init loop 1 counter
                  addi         s3, zero, 2 #init loop 1 limit
                  sll          a3, t0, s5
                  srl          s4, s1, ra
main_5_1_t:       and          zero, a6, s0
                  andi         a7, a0, -2016
                  xor          s4, s0, s3
                  addi         s5, s5, -9 #update loop 1 counter
                  addi         a0, zero, 4 #init loop 0 counter
                  slli         a2, t1, 9
                  addi         s1, zero, 19 #init loop 0 limit
main_5_0_t:       nop
                  and          a5, t5, a6
                  addi         a0, a0, 8 #update loop 0 counter
                  bltu         a0, s1, main_5_0_t #branch for loop 0
                  bge          s5, s3, main_5_1_t #branch for loop 1
                  xor          t2, a2, s3
                  or           s1, a5, s3
1183:             slli         s1, tp, 30
                  bne          a5, t6, 1202f
                  slti         t0, s6, -1216
                  auipc        a3, 717912
                  sub          s4, a7, t5
                  srai         s7, sp, 1
                  andi         s8, t1, -1578
1190:             sll          s7, s4, s6
                  lui          s0, 251694
1192:             sra          s10, t4, a0
                  sra          t4, s4, t1
                  or           s3, s3, s7
                  beq          s6, sp, 1197f
                  sra          s7, s10, t6
1197:             sll          t1, tp, s0
                  add          s5, s11, s10
                  sub          s11, s6, ra
                  add          t0, s5, gp
                  bltu         a2, ra, 1217f
1202:             ori          zero, s2, 501
                  andi         s6, a1, 1957
                  slti         t4, s6, 1394
                  srl          a0, s2, sp
                  sltiu        sp, a7, 268
                  beq          s3, a7, 1223f
                  slti         s7, s11, 13
                  slti         s5, s7, -1422
                  and          tp, t6, s7
                  nop
                  ori          s3, t1, 1945
                  ori          s4, a2, 1764
                  nop
                  lui          t2, 329136
                  beq          a3, a7, 1223f
1217:             beq          t0, a3, 1236f
                  addi         a6, a0, 114
                  ori          a0, s6, -1755
                  bgeu         a6, t0, 1229f
                  and          a0, s0, t3
                  beq          s6, s1, 1235f
1223:             sub          a2, t5, s4
                  sra          s1, t1, s3
                  beq          s10, t0, 1245f
                  blt          t1, s4, 1228f
                  beq          a7, s2, 1229f
1228:             slt          s4, t3, sp
1229:             xori         s2, a5, 1468
                  sub          s11, tp, s3
                  xor          s5, a6, gp
                  or           s2, a4, a6
                  srai         s4, s1, 4
                  sll          t2, s6, s1
1235:             sub          s6, s5, t1
1236:             xor          a4, s0, t2
                  blt          t0, a3, 1241f
                  xori         t1, a6, 1208
                  sltiu        s4, t0, 1043
                  blt          s5, a4, 1246f
1241:             blt          t1, s2, 1245f
                  xor          s4, t4, t0
                  andi         tp, a7, -746
                  ori          a0, t6, 240
1245:             slti         s7, a0, -752
1246:             srai         a5, t6, 16
                  xori         s8, s8, 1401
                  slt          s7, sp, t4
                  sll          t2, a0, t0
                  slti         s7, s10, 1789
                  bge          a3, sp, 1269f
                  sra          a6, t0, sp
                  and          s7, s0, s9
                  slti         a5, s3, 1019
                  slt          a5, a1, gp
                  beq          t2, t0, 1269f
                  sra          t0, a2, s3
                  sra          s10, a4, a7
                  addi         t3, tp, -62
                  srli         a3, s4, 2
                  sltiu        a2, t5, 1146
                  srli         s4, s1, 21
                  sra          s3, t3, ra
                  slti         s4, t4, 1778
                  bne          t3, t3, 1281f
                  slt          s1, sp, t4
                  add          sp, s11, a5
                  bge          t5, a2, 1282f
1269:             bne          a1, a0, 1280f
                  beq          s6, s3, 1277f
                  nop
                  slt          s2, s3, s7
                  nop
                  bltu         t3, a6, 1282f
                  sra          t2, t5, t5
                  auipc        a3, 192957
1277:             xori         a5, s3, 267
                  bltu         ra, s4, 1291f
                  sub          gp, t4, s7
1280:             bge          t0, s11, 1283f
1281:             sltu         s8, tp, s5
1282:             bne          s9, a3, 1292f
1283:             sra          a7, ra, zero
                  nop
                  slli         a7, t1, 4
                  or           s1, t3, s0
                  bne          t5, s6, 1298f
                  add          zero, t3, a6
                  sltiu        s5, s4, -674
                  ori          zero, ra, 1820
1291:             sra          t2, s10, s6
1292:             bgeu         s8, t6, 1295f
                  xori         t4, s2, -1979
                  auipc        s10, 378927
1295:             lui          s6, 772275
                  bgeu         a2, s3, 1310f
                  sll          s1, a5, s4
1298:             slt          s2, t4, a2
                  srl          s7, s10, t4
                  nop
                  bltu         t2, s0, 1320f
                  bltu         tp, a4, 1321f
                  bltu         t4, a1, 1312f
                  sll          a4, zero, s10
                  bltu         s3, s3, 1324f
                  auipc        a5, 208748
                  srl          gp, t1, a7
                  slti         t0, s2, -1840
                  xori         a2, zero, 1441
1310:             ori          s11, s8, -913
                  nop
1312:             bltu         t4, t5, 1316f
                  sll          t0, s3, a5
                  slti         gp, a2, -838
                  bgeu         sp, t0, 1318f
1316:             and          s11, t3, t2
                  xori         s6, a6, 1078
1318:             ori          a4, a1, 467
                  xori         s5, ra, -1963
1320:             xori         t4, t3, 435
1321:             auipc        t2, 195522
                  ori          s11, s11, 1598
                  and          t4, a4, s9
1324:             or           s7, t1, a5
                  bne          zero, s7, 1341f
                  and          a1, s10, t4
                  sltu         a3, a1, a1
                  or           t1, s3, t1
                  srai         s6, s3, 9
                  slli         a3, t1, 27
                  bge          zero, a2, 1333f
                  beq          s5, a3, 1346f
1333:             lui          s1, 304074
                  sra          a4, a0, gp
                  beq          t1, a0, 1346f
                  xor          t3, t3, a0
                  bge          a2, t2, 1356f
                  blt          a2, sp, 1356f
                  xori         s6, s11, -431
                  sltu         s1, ra, t1
1341:             nop
                  andi         a4, t5, 234
                  bge          a2, ra, 1359f
                  nop
                  lui          s5, 912130
1346:             srai         ra, s3, 24
                  bltu         s8, a0, 1350f
                  bne          s2, ra, 1359f
                  xori         s8, s4, 603
1350:             andi         a2, s11, 432
                  xori         s6, gp, 1476
                  add          s7, s6, t2
                  sll          a6, s7, s2
                  or           a7, s7, zero
                  bne          a3, t0, 1359f
1356:             slli         s5, tp, 22
                  srai         t1, zero, 16
                  nop
1359:             sub          t4, t4, a7
                  la x31, test_done
                  jalr x0, x31, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            bgeu         sp, s7, sub_4_stack_p
                  xori         s4, tp, 587
sub_4_stack_p:    addi         s9, s9, -44
                  andi         zero, a0, 194
                  sw           t1, 4(s9)
                  addi         gp, s5, -995
                  bltu         tp, a4, sub_4_j5 #branch to jump instr
                  xori         s2, s5, -1645
                  srli         a2, t6, 4
                  srl          t3, s5, ra
                  auipc        t2, 585847
                  add          s2, t3, a3
                  sll          s5, s5, s10
                  add          a3, a1, a7
                  slti         a5, a1, 1791
sub_4_j5:         jal          t1, sub_5 #jump sub_4 -> sub_5
                  blt          a2, a5, sub_4_j6 #branch to jump instr
                  srl          zero, s5, s4
                  and          gp, t4, tp
                  lui          t4, 444457
                  slli         s3, t6, 26
                  sra          s1, t6, a7
                  srli         s7, s11, 7
                  nop
                  xori         s10, s11, -1045
sub_4_j6:         jal          t1, sub_5 #jump sub_4 -> sub_5
                  and          ra, t2, s7
                  sub          t0, s1, s7
                  ori          a6, s7, 236
                  slt          a5, a4, a0
                  bgeu         gp, t0, 10f
                  xor          s1, s7, a7
                  sltu         s5, t2, t2
                  slli         a5, t2, 28
                  sltiu        a3, t1, -1152
                  bgeu         sp, s0, 14f
10:               bge          sp, s5, 14f
                  auipc        s6, 243939
                  or           tp, s5, s7
                  bltu         t2, zero, 14f
14:               slt          zero, t1, t4
                  lw           t1, 4(s9)
                  lui          a6, 527742
                  sltu         gp, a6, s6
                  addi         s9, s9, 44
                  or           s3, s10, s1
46:               addi x11, x6, 0
46:               jalr x11, x11, 0
sub_3:            sltiu        tp, t3, 1041
                  sll          t2, t2, s6
                  slti         a1, a7, -2048
                  sra          t0, a4, zero
                  addi         s9, s9, -12
                  xor          s4, s7, a2
                  auipc        gp, 141379
                  lui          t4, 633639
                  sw           t1, 4(s9)
                  sra          ra, s2, t2
                  andi         t4, sp, 295
                  or           a6, t5, zero
                  xor          s0, a6, a6
                  or           t1, s8, a7
                  nop
sub_3_j4:         jal          t1, sub_4 #jump sub_3 -> sub_4
                  auipc        s7, 484638
                  sltiu        a1, s2, 323
                  or           s7, gp, t1
                  sltu         s6, t5, a1
                  addi         a2, a1, 1272
                  srai         s3, a2, 3
                  srl          t3, a6, zero
                  auipc        t2, 690047
                  nop
                  bgeu         s11, s4, 29f
                  slli         a5, t1, 18
                  lui          tp, 220326
                  slt          s3, zero, ra
                  slti         t4, s4, -201
                  or           s5, a1, s10
                  slti         tp, a5, -357
                  lui          a1, 327389
                  bne          s10, a0, 20f
                  sll          a1, s7, s9
                  sll          s11, s0, t3
20:               sltu         s6, t1, a0
                  nop
                  xori         s3, t4, -71
                  beq          gp, s1, 28f
                  bltu         s3, t3, 44f
                  srl          a2, s8, a3
                  srai         t1, s3, 12
                  bgeu         t2, tp, 35f
28:               sltu         s0, s0, a0
29:               srli         s11, a0, 18
                  bne          gp, a1, 35f
                  slti         a5, s6, 407
                  sub          tp, s11, a7
                  bge          s10, s1, 41f
                  sra          s2, gp, s7
35:               blt          t1, s4, 43f
                  slti         s5, sp, -820
                  ori          a0, a7, 1118
                  srai         ra, s6, 1
                  srai         a5, s1, 31
                  sub          s7, a1, t0
41:               xori         a7, tp, 1988
                  srl          a7, s3, s2
43:               or           t2, t4, s7
44:               sra          s11, tp, gp
                  lw           t1, 4(s9)
                  auipc        s2, 361704
                  sra          s3, a2, s0
                  srl          s2, t2, t0
                  addi         s9, s9, 12
                  and          s5, t6, s1
67:               addi x29, x6, 1
67:               jalr x29, x29, 0
sub_2:            bge          s6, a6, sub_2_stack_p
                  slt          ra, s5, s5
sub_2_stack_p:    addi         s9, s9, -24
                  sub          t3, s1, s2
                  sw           t1, 4(s9)
                  srl          ra, zero, a6
                  or           a5, a3, s8
                  sra          s8, sp, s8
                  auipc        s5, 627851
                  xori         s6, ra, 866
                  and          a3, a3, t1
                  addi         s7, zero, -5 #init loop 1 counter
                  srai         tp, s10, 30
                  slti         a5, t6, -1774
                  xori         a5, t4, -693
                  addi         a3, ra, -224
                  addi         s8, zero, 8 #init loop 1 limit
                  srl          t2, s5, a0
                  sub          a3, s11, s10
                  slt          a4, s11, s10
                  srai         s10, ra, 24
sub_2_1_1_t:      and          s5, s11, a2
                  slli         sp, ra, 31
                  auipc        a4, 1039984
                  addi         s7, s7, 7 #update loop 1 counter
                  sra          s10, zero, zero
                  addi         a2, zero, -9 #init loop 0 counter
                  sltiu        a1, a6, 314
                  addi         gp, zero, -19 #init loop 0 limit
                  auipc        s6, 902541
                  slli         s3, ra, 10
sub_2_1_0_t:      slti         a3, s3, 1663
                  andi         t3, t1, 799
                  addi         a2, a2, -5 #update loop 0 counter
                  srl          s10, t1, s8
                  andi         t0, s6, 525
                  bne          a2, gp, sub_2_1_0_t #branch for loop 0
                  slt          tp, a0, s11
                  bltu         s7, s8, sub_2_1_1_t #branch for loop 1
                  addi         t2, a3, 1621
                  addi         a4, zero, 7 #init loop 1 counter
                  addi         s10, zero, -1 #init loop 1 limit
sub_2_0_1_t:      ori          tp, t2, -903
                  addi         a4, a4, -4 #update loop 1 counter
                  addi         a0, zero, 7 #init loop 0 counter
                  addi         s1, zero, 13 #init loop 0 limit
sub_2_0_0_t:      slti         s3, s10, -1631
                  addi         a0, a0, 9 #update loop 0 counter
                  bltu         a0, s1, sub_2_0_0_t #branch for loop 0
                  beq          a4, s10, sub_2_0_1_t #branch for loop 1
                  srli         ra, t6, 8
                  slti         s7, a1, 1757
                  sub          a4, s1, s9
                  or           t3, a1, s3
                  xori         a2, s0, 720
                  xori         s0, s11, -1549
                  bltu         s0, s8, 17f
                  or           a4, s0, a6
                  bge          s4, s10, 13f
                  beq          s3, s1, 10f
                  slti         s11, a1, 1463
10:               sll          s10, s3, a6
                  bge          t3, a1, 14f
                  and          s11, s2, a4
13:               blt          t2, t1, 22f
14:               bgeu         s0, t1, 27f
                  xor          t1, a6, a0
                  sll          s10, ra, t3
17:               auipc        tp, 699347
                  bgeu         ra, a3, 34f
                  sll          s5, s6, s1
                  add          s0, t4, t5
                  or           a6, t5, a5
22:               sra          s7, s11, t1
                  auipc        s7, 632181
                  slti         s1, s1, 1173
                  sll          t3, s9, a5
                  sltu         t3, s3, a2
27:               srli         ra, t0, 29
                  bge          t1, t0, 30f
                  slt          tp, s11, ra
30:               slti         s3, tp, 816
                  sub          s8, gp, t6
                  lui          a0, 753521
                  lui          s0, 894516
34:               ori          a2, t6, 1014
                  srl          t1, s4, s4
                  sll          s3, s7, s6
                  srl          t2, s0, sp
                  bne          a0, s10, 56f
                  sra          t2, s0, s10
                  sltiu        a2, a2, -1754
                  sll          s10, s1, a3
                  slli         a3, a3, 9
                  xori         s7, t5, -1757
                  sra          s6, a4, sp
                  bgeu         t1, t5, 50f
                  sub          a4, s4, t0
                  sltu         s8, gp, a4
                  slt          sp, s9, s1
                  slti         tp, s1, 1359
50:               auipc        t0, 716377
                  srli         a6, t2, 8
                  beq          s1, t3, 54f
                  slti         a2, s7, 1308
54:               add          a1, a3, t0
                  sll          t4, s2, s8
56:               and          a2, s5, t1
                  bgeu         t6, t2, 58f
58:               sll          s7, s0, s8
                  sra          t2, s7, s11
                  sll          t0, s3, a2
                  bne          a5, s6, 78f
                  srli         s7, a1, 23
                  bne          s11, s7, 73f
                  sll          t4, s7, tp
                  blt          a4, a0, 73f
                  add          s6, a4, t1
                  auipc        s8, 167054
                  sll          gp, s8, tp
                  bgeu         s1, t0, 71f
                  slt          gp, s6, s11
71:               auipc        a5, 127941
                  blt          t2, t3, 82f
73:               or           s6, t4, ra
                  slt          gp, t4, a1
                  blt          ra, s6, 77f
                  beq          s6, a7, 82f
77:               sub          a6, t2, s5
78:               srli         t3, s1, 2
                  andi         zero, a5, 1644
                  lui          a4, 414003
                  bge          a0, a3, 101f
82:               andi         s5, t2, -1349
                  add          sp, a5, s0
                  addi         a2, a1, -1267
                  srai         s6, s2, 28
                  xori         t2, a5, 1245
                  add          t4, a2, s9
                  srai         s7, a5, 23
                  sltiu        s11, t4, -1857
                  sra          a0, s4, s9
                  addi         a5, s1, 759
                  blt          s5, t4, 99f
                  sltu         s4, a5, s11
                  ori          sp, s7, 880
                  beq          s10, s7, 104f
                  slli         t2, a6, 11
                  auipc        a5, 359111
                  andi         s7, zero, -1275
99:               bne          gp, s0, 109f
                  sra          s0, t3, s10
101:              slt          a5, tp, t5
                  sltu         t1, s10, t5
                  sll          sp, a3, s7
104:              sra          t1, tp, s7
                  andi         a1, t1, 1553
                  srai         t2, t5, 19
                  xor          s11, gp, ra
                  andi         t1, s2, -1919
109:              and          a4, s8, a7
                  slti         t0, a2, 1318
                  srai         a3, s3, 14
                  slt          a6, s7, s7
                  bltu         t4, tp, 118f
                  bltu         sp, t1, 130f
                  sltu         s0, a3, a1
                  lui          a6, 151730
                  sltu         t3, t3, t3
118:              srli         tp, s3, 4
                  nop
                  xor          s11, gp, s2
                  bge          t1, tp, 137f
                  sub          t0, gp, s5
                  slti         zero, a3, 6
                  sra          a6, a1, s3
                  slt          a2, a7, t0
                  slli         zero, ra, 7
                  bne          t1, a4, 146f
                  bgeu         s9, s2, 138f
                  slti         s4, t4, 82
130:              sltu         a4, s7, sp
                  bne          zero, a1, 141f
                  xor          a6, s1, t4
                  srl          s7, s8, sp
                  xori         a2, a2, -1775
                  or           ra, t5, a4
                  and          s11, t2, zero
137:              or           t3, s3, zero
138:              blt          s0, t6, 152f
                  slt          a6, a6, a6
                  xor          s1, zero, a4
141:              add          a2, zero, s5
                  srai         s2, t1, 27
                  addi         s10, zero, 9 #init loop 0 counter
                  and          zero, s3, sp
                  addi         a6, zero, 6 #init loop 0 limit
sub_2_2_0_t:      xori         s8, s4, 1781
                  xor          a2, t4, zero
                  auipc        t2, 233526
                  addi         s10, s10, -3 #update loop 0 counter
                  and          t4, a1, gp
                  bgeu         s10, a6, sub_2_2_0_t #branch for loop 0
                  add          s7, t0, a5
                  srli         t0, a6, 9
                  andi         s3, s11, -224
                  slli         s1, sp, 28
146:              slli         t1, s1, 31
                  andi         sp, sp, 1887
                  or           a5, s6, gp
                  srai         a1, s3, 30
                  nop
                  sll          t1, tp, s5
152:              blt          s11, t6, 154f
                  sub          s2, a1, gp
154:              xor          a5, t5, t6
                  blt          a0, t5, 162f
                  and          s8, s7, s3
                  sub          zero, t6, a4
                  bne          ra, tp, 163f
                  bltu         s8, t1, 169f
                  auipc        a6, 1019167
                  nop
162:              bltu         a3, s2, 164f
163:              ori          t4, s6, -1025
164:              nop
                  slt          t3, a0, s0
                  bne          zero, t6, 176f
                  sltu         s8, tp, t0
                  slli         zero, a2, 14
169:              andi         s0, zero, -1027
                  bne          a2, ra, 178f
                  sltiu        a2, a7, 1679
                  srai         gp, tp, 15
                  ori          s6, t1, 1456
                  blt          s3, s1, 176f
                  slti         a0, s7, 342
176:              add          s8, t5, a4
                  bgeu         a3, t2, 187f
178:              bgeu         s10, a5, 181f
                  slli         a5, t2, 13
                  lui          tp, 642833
181:              slti         s3, s11, 1334
                  xori         sp, s7, -535
                  bltu         s9, a1, 196f
                  sra          s6, s8, t2
                  xor          a7, s0, s1
                  and          a7, gp, a2
187:              ori          a6, t3, 631
                  andi         t1, gp, -890
                  slt          zero, t3, s10
                  srai         s7, s11, 16
                  slli         s11, sp, 1
                  add          gp, sp, s1
                  blt          t5, s6, 196f
                  sll          a6, t1, gp
                  beq          a5, t5, 196f
196:              xori         s11, a2, 1611
                  lui          s1, 92573
                  add          a2, s7, t3
                  lw           t1, 4(s9)
                  addi         s9, s9, 24
                  sltu         t3, ra, a4
                  lui          a7, 606278
                  ori          s2, s9, -1159
265:              addi x29, x6, 1
265:              jalr x29, x29, 0
sub_5:            auipc        s5, 445995
                  addi         s9, s9, -12
                  addi         s2, t2, -1753
                  sw           t1, 4(s9)
                  srli         t2, s0, 1
                  addi         s0, zero, -7 #init loop 0 counter
                  addi         s7, zero, 9 #init loop 0 limit
sub_5_0_0_t:      and          a6, a4, s1
                  addi         s0, s0, 10 #update loop 0 counter
                  sll          gp, a0, a7
                  bltu         s0, s7, sub_5_0_0_t #branch for loop 0
                  sltiu        s8, s11, -1079
                  addi         s5, zero, 0 #init loop 0 counter
                  addi         gp, s11, -581
                  or           s6, s1, a0
                  xor          t1, ra, t2
                  addi         s3, zero, 15 #init loop 0 limit
                  xori         t4, t3, 1072
sub_5_1_0_t:      sub          s1, ra, t6
                  srli         s4, sp, 22
                  addi         s5, s5, 3 #update loop 0 counter
                  blt          s5, s3, sub_5_1_0_t #branch for loop 0
                  addi         tp, s2, 28
                  addi         s2, zero, 4 #init loop 1 counter
                  slli         s3, s8, 2
                  addi         s1, zero, 18 #init loop 1 limit
sub_5_2_1_t:      and          zero, s6, s7
                  and          t4, s1, a7
                  and          zero, s11, a5
                  addi         s2, s2, 4 #update loop 1 counter
                  addi         a5, zero, 9 #init loop 0 counter
                  addi         a3, zero, -3 #init loop 0 limit
                  sub          t1, s7, s4
sub_5_2_0_t:      addi         s11, s3, 67
                  addi         a5, a5, -3 #update loop 0 counter
                  and          s8, a3, gp
                  beq          a5, a3, sub_5_2_0_t #branch for loop 0
                  sltu         s3, a7, s5
                  blt          s2, s1, sub_5_2_1_t #branch for loop 1
                  slti         s5, s5, -949
                  xor          a5, a5, sp
                  add          a3, a3, t3
                  slti         t4, a2, -667
                  and          s5, a5, s5
                  bne          s11, a2, 22f
                  xor          s10, s2, s7
                  xor          t3, t3, a6
                  sub          gp, gp, a5
                  sltu         a1, s9, s7
                  add          s1, t0, a2
                  slti         t1, tp, -1158
                  srl          a7, s1, a4
                  srl          t3, t1, s7
                  sltiu        s1, a3, 405
                  sll          zero, tp, t5
                  xor          s10, s2, t1
                  addi         s2, s4, -1077
                  xori         s10, s9, 487
                  andi         a6, t5, -22
                  ori          s1, a4, 595
                  bltu         s7, t5, 35f
                  xor          s1, t2, gp
22:               nop
                  bltu         s11, t0, 24f
24:               add          s11, s0, s9
                  srli         s7, a7, 30
                  or           t2, a6, s3
                  slli         s0, t3, 21
                  blt          sp, a0, 33f
                  slt          s4, t2, t0
                  srai         zero, gp, 4
                  sub          s5, a7, t5
                  slti         a0, s6, -614
33:               bne          a7, s3, 38f
                  slt          t3, s8, s11
35:               srl          a1, s10, s4
                  and          t1, s1, s9
                  slti         a0, s4, 1141
38:               srli         a6, sp, 15
                  sltiu        zero, gp, 1657
                  xori         s4, s11, -2020
                  bne          a5, s7, 46f
                  lui          s3, 573110
                  sll          s5, t3, s2
                  addi         a2, a3, -1083
                  slt          s4, s2, t4
46:               xori         s3, a6, 151
                  sltu         a5, s1, gp
                  blt          a6, t3, 60f
                  beq          s0, a6, 58f
                  addi         t2, s9, -1690
                  slti         a6, s8, -33
                  xor          a3, s5, s10
                  sltiu        s6, a4, 188
                  xori         s4, gp, -143
                  srl          s0, t3, s5
                  or           t4, s11, s4
                  srl          s3, a4, s0
58:               sra          a2, zero, t2
                  sub          s8, s10, zero
60:               sll          t1, t2, s4
                  bltu         s11, zero, 79f
                  auipc        s11, 887450
                  xor          s11, t4, a2
                  slt          s6, a1, s9
                  xor          a1, ra, sp
                  srl          a6, gp, s1
                  slt          s7, t3, s5
                  bltu         ra, gp, 87f
                  xor          s10, tp, ra
                  slli         s10, sp, 29
                  blt          a1, s4, 83f
                  sltu         t0, s5, t1
                  srli         s6, s1, 27
                  ori          s0, s0, -1114
                  sltu         s7, sp, s3
                  xori         t4, t4, -903
                  and          gp, a6, s11
                  slti         s4, t0, 2024
79:               sltu         tp, a3, s4
                  nop
                  xori         t4, tp, 241
                  bgeu         s4, s9, 91f
83:               slli         sp, t1, 21
                  sltu         s0, s1, s7
                  or           ra, s9, s3
                  xori         a6, a6, -2005
87:               bltu         a2, s8, 96f
                  andi         t3, a0, 971
                  bne          sp, t6, 100f
                  srai         a2, s8, 21
91:               xor          s1, t3, t0
                  nop
                  slti         sp, s7, 139
                  bgeu         t5, t5, 106f
                  auipc        a7, 83686
96:               bge          zero, a0, 102f
                  bne          s7, a0, 98f
98:               beq          a2, s6, 111f
                  beq          s3, s4, 113f
100:              or           a7, s1, t0
                  sltiu        t3, sp, 1447
102:              add          sp, a7, t3
                  sll          gp, s11, a3
                  srli         a0, a1, 14
                  ori          sp, s6, 1
106:              blt          a3, s0, 118f
                  sub          s4, a7, s5
                  sub          t4, s4, t6
                  srl          ra, ra, s5
                  slti         t3, t4, 1
111:              bgeu         a3, tp, 124f
                  auipc        s2, 384817
113:              bltu         t3, a4, 132f
                  add          a2, s6, t3
                  sub          a7, s2, a5
                  bltu         t2, s7, 133f
                  slti         s8, sp, 810
118:              or           t3, s10, s8
                  srai         a3, t3, 6
                  sltiu        s11, a2, 668
                  sltu         t1, s1, a1
                  slli         ra, s0, 23
                  srai         s1, s10, 14
124:              bgeu         t6, t2, 142f
                  beq          gp, t6, 131f
                  ori          tp, s4, -330
                  bge          a3, ra, 135f
                  bge          a4, a4, 132f
                  blt          s8, a6, 133f
                  bltu         gp, s11, 139f
131:              srl          t4, s3, s11
132:              lui          tp, 574907
133:              nop
                  bltu         zero, tp, 138f
135:              slt          s3, t3, a3
                  xori         s1, zero, 1348
                  nop
138:              nop
139:              or           t4, gp, a1
                  and          s10, t4, s0
                  addi         s8, t6, -1319
142:              blt          a1, s11, 146f
                  sll          t0, s4, a6
                  or           ra, zero, s10
                  lui          a7, 89917
146:              slt          a4, t3, t2
                  sltiu        a2, tp, -632
                  bltu         zero, s0, 153f
                  slli         t2, a7, 31
                  srai         a6, sp, 11
                  bge          s10, sp, 163f
                  bge          t1, s11, 161f
153:              add          sp, a4, a7
                  slti         ra, a5, -2041
                  sltu         s6, s11, s8
                  sra          s7, s0, zero
                  sub          a5, s9, s8
                  sra          a5, ra, s11
                  bgeu         t6, s3, 164f
                  bne          s2, a2, 168f
161:              sub          zero, s11, s3
                  blt          t6, s3, 163f
163:              srl          t4, a4, tp
164:              srai         s6, a1, 23
                  sltu         t3, s10, a4
                  bge          t2, t6, 172f
                  bge          s3, s4, 182f
168:              nop
                  srai         a3, s5, 25
                  and          a6, a1, s0
                  bgeu         s2, t4, 188f
172:              and          t4, s7, t5
                  auipc        t2, 247414
                  sub          a6, s10, a1
                  bgeu         s4, a5, 187f
                  bge          s0, t0, 180f
                  add          t4, t1, t6
                  auipc        a3, 691533
                  bgeu         s2, s10, 184f
180:              andi         tp, t0, 346
                  srl          t4, a2, s7
182:              bge          a6, s11, 188f
                  addi         t3, a0, 779
184:              addi         s3, t1, 1433
                  beq          a3, a3, 188f
                  andi         s11, a1, 1116
187:              nop
188:              slli         s2, s3, 21
                  xori         t2, t0, 1335
                  srl          s10, s1, s1
                  lw           t1, 4(s9)
                  or           gp, a3, t4
                  add          zero, s10, a6
                  addi         gp, a2, -1115
                  xor          a4, t0, s3
                  ori          t3, t4, -1925
                  addi         s9, s9, 12
                  add          s1, a4, t4
                  slti         a5, s1, 1091
240:              addi x15, x6, 0
240:              jalr x15, x15, 0
sub_1:            sll          a4, a4, a3
                  and          tp, a3, t5
                  blt          gp, s3, sub_1_stack_p
sub_1_stack_p:    addi         s9, s9, -20
                  srl          a7, t2, t2
                  sw           t1, 4(s9)
                  ori          t2, s0, -748
                  add          s8, s4, t6
                  ori          s6, a2, 1815
                  lui          s2, 418887
                  and          s10, a7, s9
                  sltu         s2, a6, s5
                  lui          a1, 375120
                  lui          s7, 131518
                  la           sp, sub_3
                  addi         sp, sp, 79
                  and          s2, t3, t6
                  auipc        s6, 569393
sub_1_j2:         jalr         t1, sp, -78 #jump sub_1 -> sub_3
                  la           s1, sub_2
                  addi         s1, s1, 925
                  srl          a3, a0, a5
                  slli         a1, tp, 0
                  slli         s11, zero, 28
                  sltiu        tp, s7, -1725
                  bne          a5, a2, sub_1_j3 #branch to jump instr
                  slli         t3, a1, 24
                  srai         s0, zero, 14
sub_1_j3:         jalr         t1, s1, -925 #jump sub_1 -> sub_2
                  addi         gp, zero, 1 #init loop 1 counter
                  srli         tp, t1, 25
                  slli         s6, s9, 6
                  slt          t2, a7, s4
                  sltu         t3, a1, s5
                  slti         t2, ra, -358
                  srai         s8, zero, 7
                  xori         s6, s2, -408
                  srai         a7, s10, 23
                  addi         s10, zero, 12 #init loop 1 limit
                  srai         a6, a3, 0
sub_1_0_1_t:      sltiu        s4, s8, -1146
                  addi         gp, gp, 5 #update loop 1 counter
                  nop
                  add          a0, ra, a7
                  addi         a5, zero, 0 #init loop 0 counter
                  addi         sp, zero, 8 #init loop 0 limit
                  sltiu        t2, a2, 1232
                  addi         s7, t2, -407
sub_1_0_0_t:      sub          s6, a5, s11
                  xor          t2, ra, zero
                  sub          a2, ra, t4
                  slti         s5, a5, 1114
                  sub          s8, t4, a4
                  xori         a2, a2, 1610
                  srai         t1, s3, 24
                  addi         a5, a5, 9 #update loop 0 counter
                  nop
                  sub          t1, ra, t5
                  blt          a5, sp, sub_1_0_0_t #branch for loop 0
                  sra          s0, s8, a0
                  srl          s0, t0, s4
                  blt          gp, s10, sub_1_0_1_t #branch for loop 1
                  sra          ra, t5, s0
                  addi         a0, zero, 10 #init loop 0 counter
                  nop
                  addi         a4, zero, 19 #init loop 0 limit
sub_1_2_0_t:      ori          a5, t3, -295
                  sra          a2, s6, s6
                  add          a1, s4, s0
                  addi         a0, a0, 1 #update loop 0 counter
                  beq          a0, a4, sub_1_2_0_t #branch for loop 0
                  slt          a3, s3, t3
                  addi         s1, zero, 8 #init loop 0 counter
                  or           t0, t6, a4
                  ori          t2, s11, 1678
                  slli         s11, a6, 10
                  addi         t4, zero, 5 #init loop 0 limit
                  or           a5, a2, a1
                  auipc        a2, 472882
                  slt          gp, s8, t6
                  slli         s4, tp, 17
                  add          gp, t4, t5
sub_1_1_0_t:      addi         tp, a2, -1496
                  nop
                  addi         s1, s1, -4 #update loop 0 counter
                  nop
                  slli         s11, s3, 19
                  sll          a7, s2, s0
                  or           ra, s8, zero
                  bgeu         s1, t4, sub_1_1_0_t #branch for loop 0
                  sltu         s4, s7, t5
                  ori          a6, a3, -340
                  slt          a0, ra, s6
                  and          sp, t6, t6
                  slli         s4, t4, 7
                  addi         s5, zero, 1787
                  sra          a2, s5, t0
                  auipc        s3, 384489
                  slli         a0, a0, 2
                  xori         s0, s8, 1919
                  bne          s6, s4, 21f
                  srli         a1, a5, 3
                  nop
                  srai         s10, s4, 29
                  xor          t0, t3, a0
                  bltu         t0, sp, 32f
                  slti         s2, a6, -1878
                  srli         a7, s3, 10
                  xor          a5, a5, s3
                  ori          s0, a1, -2002
                  sltu         a6, a1, a6
                  sltiu        t0, s11, -1338
21:               and          s4, a4, s7
                  blt          a1, sp, 26f
                  bgeu         sp, t6, 38f
                  ori          ra, a3, 1410
                  bne          tp, t4, 42f
26:               lui          a4, 266472
                  sll          a0, s9, tp
                  bltu         s1, t3, 45f
                  xor          a6, s0, a4
                  slli         s11, a0, 1
                  sltu         s8, t3, t2
32:               sll          s11, sp, s6
                  srli         s5, s1, 0
                  sub          s6, s7, a7
                  bne          a1, s5, 54f
                  slt          a1, a6, a6
                  auipc        a0, 667843
38:               and          t4, s9, t0
                  slti         a4, a1, -146
                  nop
                  beq          s2, a4, 42f
42:               slti         a5, s9, -1914
                  bge          a4, a6, 60f
                  addi         t4, t1, -58
45:               sltiu        s11, s0, 203
                  srli         s10, s1, 17
                  add          t0, s2, t6
                  add          a5, t1, t1
                  srai         s6, a7, 1
                  bgeu         a1, tp, 58f
                  beq          s6, t4, 62f
                  srai         t3, s3, 18
                  srl          a3, a1, tp
54:               andi         a5, a3, 2017
                  slli         a1, sp, 28
                  sltu         a6, a6, s10
                  srai         s7, a0, 6
58:               sra          sp, a4, a6
                  sltu         s10, t2, ra
60:               sltiu        gp, a5, -111
                  bge          s5, a6, 70f
62:               and          a4, s3, zero
                  bltu         s4, ra, 83f
                  add          sp, a5, s6
                  lui          s4, 859382
                  auipc        t1, 976218
                  blt          t5, s2, 73f
                  add          a1, s6, ra
                  or           t3, s9, t6
70:               lui          s3, 712126
                  sltu         s11, s3, a6
                  sll          t1, t3, gp
73:               slt          a5, s9, t5
                  addi         s3, s0, -1399
                  slti         a6, sp, 1793
                  sll          a3, t4, a6
                  sll          t4, a4, a2
                  bltu         gp, t5, 98f
                  bgeu         s8, t3, 88f
                  sra          a4, gp, t4
                  srai         s1, s11, 7
                  srl          ra, a0, a4
83:               ori          s8, s4, -1350
                  slli         t1, s10, 27
                  lui          tp, 933592
                  bne          t0, a5, 106f
                  srai         gp, gp, 12
88:               srli         sp, s11, 29
                  xori         t3, a0, -75
                  ori          a7, t4, -1588
                  xor          a7, s5, sp
                  or           t0, s1, s4
                  srai         zero, sp, 0
                  srai         t4, zero, 15
                  andi         s5, a2, 2034
                  ori          zero, a6, -1720
                  srli         a0, tp, 28
98:               sub          s0, a3, a5
                  beq          t4, a1, 112f
                  sub          ra, gp, t3
                  ori          t1, gp, 1025
                  srai         a7, a6, 12
                  andi         s5, s2, 1627
                  auipc        tp, 762176
                  bne          t0, t4, 116f
106:              auipc        t0, 957014
                  auipc        s1, 317754
                  add          s3, s7, s8
                  bltu         s10, s4, 123f
                  bne          s11, s8, 115f
                  sll          a1, s8, a0
112:              ori          a3, s7, 660
                  blt          t5, s8, 119f
                  slt          s3, a7, a2
115:              sltu         a2, gp, s11
116:              bltu         a1, s3, 124f
                  andi         t1, a0, -625
                  auipc        t3, 301479
119:              xori         a3, sp, 727
                  auipc        s1, 809422
                  or           t2, a4, a3
                  sra          s10, s1, s2
123:              and          s11, s9, t3
124:              addi         a6, s11, 1876
                  srai         tp, a5, 3
                  and          sp, a6, t2
                  sub          t4, s4, tp
                  sub          s2, s5, s7
                  srl          s3, tp, t6
                  bltu         ra, s3, 137f
                  addi         s2, s0, 127
                  add          s8, a4, t3
                  blt          t2, tp, 152f
                  and          a5, s6, zero
                  sltu         s11, gp, ra
                  sll          a3, t0, t5
137:              addi         a4, s10, -1989
                  sub          s10, zero, s5
                  srli         t3, tp, 21
                  sra          s5, t2, s2
                  xori         a4, gp, 1451
                  beq          ra, t5, 159f
                  slti         ra, t0, 1708
                  slti         s11, s9, 267
                  sltu         t4, s6, t3
                  bltu         s8, t3, 159f
                  blt          sp, sp, 149f
                  lui          a2, 1020355
149:              bltu         s4, t2, 168f
                  slli         a6, s9, 12
                  lui          a3, 10026
152:              add          s11, s2, a3
                  and          s1, t2, s4
                  slti         tp, t1, -734
                  and          a3, s8, s5
                  addi         a5, s9, 251
                  add          s1, s4, t0
                  slti         t4, s11, 1130
159:              sub          t4, zero, s6
                  or           s5, s5, s10
                  sra          s7, gp, zero
                  and          a0, t5, a4
                  srli         s11, a1, 4
                  srl          t2, s5, t3
                  addi         t3, s1, 1559
                  sra          a2, s3, s11
                  blt          t1, zero, 182f
168:              bltu         t5, s1, 185f
                  add          t0, s0, a3
                  sltu         tp, s10, s5
                  srai         tp, tp, 15
                  sll          a3, s9, s9
                  slt          a0, ra, s8
                  nop
                  sll          s3, s10, a4
                  bne          a3, a6, 182f
                  or           a2, s0, a2
                  bltu         a6, t3, 191f
                  slti         gp, a4, -1573
                  blt          a3, s6, 192f
                  addi         a1, ra, 294
182:              srli         s8, a6, 17
                  xor          t4, a1, s10
                  bltu         s4, a0, 192f
185:              sll          ra, a1, a3
                  blt          t4, t4, 192f
                  xor          s3, a2, a5
                  bne          a0, t1, 190f
                  auipc        s0, 905245
190:              xori         t3, s4, 420
191:              andi         zero, s0, -686
192:              and          s3, s6, s11
                  lw           t1, 4(s9)
                  andi         s6, s4, 1730
                  and          s11, a3, a0
                  andi         a3, t3, -464
                  sra          s1, s1, a5
                  srli         tp, a6, 28
                  sub          ra, s3, a7
                  addi         s9, s9, 20
                  srli         a0, a0, 27
                  srai         t4, sp, 7
                  srli         tp, sp, 16
                  addi         a6, s10, -1208
296:              addi x20, x6, 1
296:              jalr x20, x20, 0
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
.word 0x2d6067b5, 0xee582a89, 0xe83dae36, 0x8e1d305a, 0x1b8d9773, 0x84f9d615, 0xaac0fd55, 0xb309d20d
.word 0x1ea49997, 0x84430321, 0xb999aa30, 0xcb829272, 0x5d51e9dc, 0x8fc9e016, 0xd6acd3e7, 0x8c68ec4b
.word 0xa4c0b144, 0xd780e226, 0xb35b0521, 0x2bdc6a47, 0x06d02ae6, 0x5c1439ce, 0x8e85d6b5, 0xf227540a
.word 0x47c5a559, 0x98848191, 0x8999ace1, 0xb2769716, 0xa586255e, 0x1825e128, 0xac3895a4, 0xbe48c858
.word 0x08bb37fb, 0xac421ed1, 0x9cb19fa5, 0xd7a8c563, 0x7fcefc8d, 0x63a9fa17, 0x0fb0030d, 0xa20f0942
.word 0x39bd3497, 0x44b14617, 0x2cd32b36, 0x7980ee24, 0x14c96e1c, 0x351cb8d0, 0x78d2f7f4, 0x74734361
.word 0xcb68bd7e, 0xfbe6b6a3, 0xc185f2f3, 0xed9db316, 0x3c1e302f, 0xa82dda74, 0x8366173f, 0x22867725
.word 0xaacb724f, 0xaa07be59, 0x318f11e3, 0x60a94281, 0x6500b22a, 0xc401d4c7, 0x5e2cc8eb, 0xbd8784b0
.word 0x539dcc20, 0xbf6549c4, 0x155748f2, 0xc2272cf4, 0xafdea04b, 0xe3d425ce, 0xa58e9d0a, 0xd88054f8
.word 0x803466d9, 0x72e4647d, 0xa7ef6530, 0x4c4cc955, 0xee61adef, 0x20cfc139, 0x422b4088, 0xf3b37beb
.word 0xa92fb974, 0x7f75b468, 0xf8b3e150, 0x997ca105, 0xf80b0905, 0x08c21642, 0x3909e6e7, 0x0da6ed9f
.word 0xff10ec41, 0xca0c94ed, 0x567e417d, 0xa21e32bb, 0x7e934bb3, 0xccef1224, 0x57e930cf, 0xc2a45ed5
.word 0xc55ae996, 0x83cd84c2, 0x96f9e929, 0x3ffbb931, 0x9521980d, 0xb0cd0d7d, 0x1880aaf0, 0x5bcb857d
.word 0xc51633f4, 0x69326be6, 0x6e95ceb1, 0x15782a70, 0x47b66879, 0xa23b93a2, 0x74b0dcdc, 0xde45760d
.word 0xd400d4f6, 0xa8ff1c7b, 0xec979edf, 0xa179cb95, 0x02ec414e, 0xe8e12449, 0xc0f2a0cd, 0xd99c3445
.word 0x509e4ab2, 0x7c5f55f1, 0x5713c6ab, 0x9b44a2b9, 0xd3e554dd, 0x735adaea, 0x160d6056, 0xe256c489
.word 0x63918f0d, 0xc818d5d1, 0xc6371858, 0x06d20cb1, 0xea55b2fd, 0x4899149b, 0x900c0c5f, 0x58e3a4af
.word 0x29e8ab53, 0x5da660cb, 0x0cf5737e, 0x2cbab222, 0x302f1ca8, 0x52ba9014, 0x2c9dabb0, 0x0bcd35b5
.word 0xa83aaabe, 0x668d39a2, 0x562dcbe5, 0xf8318466, 0x7850b05d, 0x07417e97, 0x913663c3, 0x85d40f97
.word 0x5ec199e7, 0x600363bb, 0x0543dda8, 0xacc4cf18, 0xb14a8b74, 0x723d714e, 0xacb81d95, 0xd1aa4d77
.word 0x90872bb4, 0xacdc985a, 0x655ea79c, 0xebd17bf7, 0x133303a1, 0x9e9d539c, 0x74290e19, 0x2cf40598
.word 0xf128e4f9, 0x4b8b4283, 0xc4a8b034, 0x0b4bdb1a, 0xb581a9bf, 0x122d3a90, 0x2e2d7759, 0xc1ff9660
.word 0xdb63be03, 0x58a65f8d, 0x75f4ef22, 0x7e591a3b, 0x40158d80, 0x10dec84b, 0x0fe9df45, 0xaba345ea
.word 0x1773cb9b, 0xc7219871, 0x86d45fcd, 0x1b050ba8, 0xa87d3d28, 0x45c701e1, 0xc7a0239b, 0x632f5ec5
.word 0x8a0398ec, 0xf8145037, 0xe95d3fd1, 0x7ab63c66, 0x774cb4dc, 0x9a13f402, 0x7f4b4e06, 0xc5a2adce
.word 0xb16988a7, 0x25527ca1, 0x4366aa69, 0xe9906de6, 0xde60690d, 0x2a6ed9b6, 0x183a385f, 0xd5ee6f6a
.word 0xc31aa694, 0x86339974, 0xcc8f9576, 0x9ac9cd6b, 0xc2c99a0d, 0x0f5fdf65, 0x4f2c7d76, 0x42ee4c1c
.word 0x2fe55802, 0x89b94d65, 0xf716f239, 0x5748ca36, 0xcb181389, 0x748f4735, 0x70817479, 0xd25be852
.word 0x9916dcae, 0xbff4db05, 0x3baf7942, 0x805f9ad7, 0xdfbe7016, 0x33da95d6, 0xa6de5e7b, 0x90c4ba98
.word 0xc3203942, 0x144c63ce, 0x13db9de8, 0xd394115f, 0xf9e50469, 0x91998476, 0x45b71940, 0x2e4a9ffd
.word 0x6a1196a3, 0x4062f7d1, 0xdd95dc6a, 0x9b835b0d, 0x564333f9, 0x0d4f24e4, 0xa3483cd1, 0xe733a8cf
.word 0xe6082dee, 0xfb92c90a, 0xb3820b04, 0x43a320ff, 0x2419c11a, 0xed68d8d3, 0x991ad341, 0x07f21438
.word 0x276d5f26, 0x5d81975f, 0xdac820e9, 0xbab3e29f, 0x51a3659a, 0xafbf5655, 0x956bfeab, 0x887291e6
.word 0xb3dea551, 0x2b4f04f2, 0x629e72a6, 0xae1a54ed, 0x9969a82a, 0xbd12ec5b, 0xee654371, 0x134acf82
.word 0xc1cab7c8, 0xb56e8490, 0xcd48038d, 0xdbf7e47a, 0x840ca821, 0x2f714fde, 0xe101b936, 0x28e0d892
.word 0x36fc7be4, 0xc6900a8b, 0x77ff363e, 0xf0008400, 0x85df2d76, 0x0855b070, 0x860a4ce9, 0x81b7538e
.word 0xfef73643, 0x50d13811, 0xd6bf20a9, 0x7b748608, 0x90c18f83, 0x74f130e9, 0x1393828c, 0x5b725dec
.word 0x5a20af98, 0x8cb6aa0a, 0xa8fe0049, 0x55155744, 0x37345a47, 0xa3ebf837, 0xb58b25d4, 0x5df40c50
.word 0xf5afd53d, 0x58303ab4, 0xaf4799af, 0x9b0cf711, 0x4840b930, 0xeeff2c05, 0x7666e0b1, 0x14de2188
.word 0xb060d490, 0x60923ec2, 0x68aa7921, 0xcbe291e5, 0x30c95338, 0x9a190255, 0xf9d8e945, 0x4e6f7ad8
.word 0xa85f9043, 0xa3643a9e, 0x3b78e8c4, 0x62cdd693, 0xe2447ae5, 0xf538659f, 0x77c772ce, 0xd96567a6
.word 0x2d3b0e6d, 0x7f1bb043, 0x0ec71784, 0x3ee90c6c, 0xf6aa76c6, 0xe6b2a553, 0xc5c78505, 0xcad00fe2
.word 0xc4f6350a, 0xf0308c7b, 0x4d2ba9fb, 0x83e9db30, 0x08e2f5bf, 0x82436e6e, 0xf3e9a18b, 0x1c0d840e
.word 0xf6ec7f09, 0x02e70e78, 0xd6952f83, 0x332a34e9, 0x08a38930, 0x7f87eaaa, 0x06cbfd5f, 0xd2434646
.word 0x41df4d12, 0x89bc8d77, 0x7b302918, 0x05987429, 0x770dca28, 0x3c5c977f, 0x3940ad87, 0xca0336a2
.word 0x674a2670, 0xd7b5cf44, 0x7564aeeb, 0xfad0b35e, 0x5ce4cef8, 0xcc97e6d9, 0x26f9736b, 0xf547fa94
.word 0x27fbdfba, 0xaac8c429, 0x431df2c0, 0xad8825c8, 0x7f066900, 0x09b0fa05, 0x37be6b7c, 0xc5f7073a
.word 0x06d1e2d3, 0x31490772, 0x07cd426b, 0x56274eff, 0x11f6d589, 0xce4a0c28, 0x9067c846, 0x9cfca59e
.word 0xe548cde8, 0x2e6fbd97, 0x0ce383d8, 0xf766a192, 0x21f975e9, 0xa839451e, 0xf0792ec3, 0xc4ee6e44
.word 0x631b37ab, 0xcd75bf2c, 0xd1583bbd, 0xc7cdc968, 0x08171baa, 0x41999367, 0x8f314621, 0x0bebdee4
.word 0x9a7cca11, 0x0d4a5383, 0xfc4b990d, 0x4f1e5c9b, 0xe84797bd, 0x0972f26f, 0xd2ef7717, 0xaf17c85b
.word 0x11ded5ab, 0x844af922, 0xfc1fc8a1, 0x988cf157, 0x81b8ed2e, 0x74398825, 0x63c9eab6, 0x63784610
.word 0x0ec09e0f, 0x11e57984, 0x4d7d4015, 0x31c56c8b, 0x8d3cd205, 0xde7d9567, 0xd74dd08b, 0x832115e3
.word 0x285a803a, 0x1ee31a7e, 0x8b7eedf0, 0x78225e5a, 0x38e25b25, 0x650a98dc, 0x2438871e, 0xb6dceb47
.word 0xd0ab3544, 0x403b0c5d, 0x43fe937a, 0x3de3dab2, 0xed8bacc2, 0x8d7b1696, 0x624e47a6, 0x28673474
.word 0x59e15b75, 0x5e76508f, 0x5d61b72a, 0x9e16856f, 0x394f3a2b, 0xdcb7a411, 0x4c8b991e, 0x406c8796
.word 0xb7d4f9ac, 0x5d116034, 0xc8a5a646, 0xbc91d89c, 0x7aa3a27e, 0x0049c78d, 0x23bd1acb, 0xe101a84e
.word 0x8a36b063, 0xa54c567a, 0xd87a8af5, 0xa9802fa6, 0xa0ca7ce9, 0x10ffff6a, 0x34f413db, 0x611bef12
.word 0x472d3145, 0xaa31d2ce, 0x226e1e59, 0xed2398a1, 0x505f71ea, 0xb0aeaf05, 0x8d143eba, 0xc5344c03
.word 0x73bd5965, 0xd3e86d23, 0x443fdc43, 0x5e8fa572, 0xd829e9e5, 0xbea57d4a, 0x7954c093, 0x6cf1bb94
.word 0x37560d95, 0x296fbb87, 0xaf62f5fb, 0xa4a70439, 0xed3e46e9, 0xe236320d, 0x8fe95afb, 0x6f342503
.word 0x404a1889, 0xc03cc1bd, 0x652e10bc, 0x23feb3c3, 0x439aeba4, 0xd70dd02c, 0x501ab2e9, 0xc3d4af27
.word 0xb0b5caf0, 0x6935fc0a, 0xd4f821b3, 0x5c583513
.section .region_1,"aw",@progbits;
region_1:
.word 0x2da53902, 0xe0a28c7a, 0x3301423f, 0xd888e13a, 0x14784a45, 0x646af304, 0xf8cfac15, 0x3f7ef36b
.word 0x5f97f852, 0xbe961594, 0xce23f269, 0x3784051b, 0xbdad060b, 0xa3a875b4, 0x81b1b1b9, 0x2d689b3c
.word 0x13846c2d, 0x61729a88, 0xfe2f13b1, 0x071f40fd, 0xa3acb742, 0x8617223c, 0xe207908d, 0xa9a42769
.word 0x7659eb09, 0x14339119, 0xd7c4c8a9, 0x27e03681, 0xbe495e75, 0xbc535f4b, 0x82c2ad27, 0x89b22f77
.word 0xb2a8ae25, 0xff0e6377, 0x8b0f38e7, 0x95900e9f, 0x3fca43f6, 0xe89e6cf6, 0x01660606, 0x507d66cc
.word 0x2c8217cb, 0x8e0b4d3b, 0x82c057f0, 0x19092f02, 0xf6c32371, 0xb1a9fe74, 0xc0f6c20d, 0x7e20eaf8
.word 0x363731c1, 0x785e7980, 0xc4e5f646, 0x300b3acf, 0x594566d7, 0x634e6b51, 0x0cc46cf0, 0x73269019
.word 0x2897203a, 0xa9b2de50, 0xcd638a94, 0x5da0e701, 0x121252d8, 0xab33e912, 0xb10cc34b, 0xcf521eaf
.word 0x97f9ec2a, 0xe894a4f8, 0xd3eaa5b1, 0x34374e36, 0xbcdf5ee1, 0x3721f039, 0xe7a554f4, 0x2194db78
.word 0x34b1cf22, 0x988a4d69, 0x9475a48a, 0x74c460e0, 0xc2e14622, 0xd3257511, 0x3c41b176, 0x00c12fd3
.word 0x464f57c3, 0x624b5c42, 0x2b20cc11, 0xec0952da, 0x297fb973, 0x1a259399, 0x8a750882, 0x365c5726
.word 0x21bbd837, 0x7a207db5, 0x303f0372, 0xe7e6c628, 0xc3a16a26, 0x05495889, 0x87c0d453, 0xc1a36d6e
.word 0x49e472ae, 0x48008bcf, 0x5cb92c22, 0xf2cb22cc, 0xa4e9c637, 0xb5827aee, 0x038735d1, 0xd8fd3b81
.word 0x6122a921, 0xc6bbb27e, 0x54535ccc, 0xd1fe12a6, 0xa1feee1d, 0xd1717a11, 0x5c7ba337, 0xefc55614
.word 0x3d1a80bd, 0x9973c7cf, 0x53168cf0, 0x48b052a1, 0x7bd5b3a2, 0xa57980bf, 0xeb73414e, 0x75e2520f
.word 0x965d65c7, 0x7864c1c1, 0xf08f6a96, 0x12e7a5e7, 0x37d54282, 0x6138be18, 0xe21945ac, 0xab1fd025
.word 0x86b11d37, 0x1317092f, 0xf4ba6858, 0xe6fc6d97, 0xc57bdc0d, 0xabd892aa, 0x122c9ca1, 0x08c12a42
.word 0xdc965855, 0xb0d6aba3, 0x625b6f36, 0x77bb58cb, 0x1c677e9d, 0xcf9ab0ce, 0x0b5d38f0, 0x70952157
.word 0xc76028bb, 0xbc9255c6, 0x566dda9d, 0xa6e5fc1a, 0x6bca256c, 0xd3bcfda0, 0x1c55b6e7, 0x5754d805
.word 0x60b147cf, 0x09aff987, 0xcb26bc54, 0x3fdd4975, 0x6f5d81bd, 0x14e99f9a, 0x145dfe8f, 0xdf101fd2
.word 0x933f0ec9, 0xc90f42b1, 0xd5fcef83, 0x8dbb95f4, 0x9047316a, 0xdccc9aad, 0x26a2eb34, 0x71a67646
.word 0x081f74c6, 0xef9dbbd6, 0x29f53ac4, 0x7f38e88a, 0x6282ff33, 0x796fa263, 0x3d89d5ac, 0xff24abe7
.word 0x9e0e2735, 0x38edcf0a, 0x693e4271, 0x440cef5b, 0xc22f491f, 0xfd84d531, 0x5c94f948, 0xcceafc1c
.word 0xcc4998ac, 0xb0fb0ca6, 0xa892b0c8, 0xc54360f7, 0xb4203347, 0x390e1715, 0x7507627e, 0x3f4a8775
.word 0x64e8321b, 0x621db823, 0xb8345b75, 0xf9370076, 0x4d8d3141, 0x55c59f1a, 0xf22504ee, 0xbc5a8565
.word 0x7a1b4498, 0x9d3d9f98, 0x2bf11b98, 0xc3e180f2, 0x98b04ca3, 0xf37edf8e, 0x144bb0b7, 0xeed75e94
.word 0x5272cf1c, 0x4969b358, 0x525fd1bd, 0x5137f8a9, 0xf4e2baef, 0x8145ebbd, 0x1eff0c93, 0xa0638dfe
.word 0x40e3c83a, 0x630351f0, 0xe9064311, 0x4087b2f0, 0x3cda7d4a, 0xaee35f28, 0x27167e7a, 0x93d064e6
.word 0x17d982f6, 0x23aa46ef, 0xed3bfbf3, 0x32e47198, 0xb0ed2a71, 0xa6857e80, 0x2d8091a7, 0xfebeb9cb
.word 0xdfc502be, 0x5ad34c19, 0xd9abd6a6, 0x9bd8f738, 0x0ed4e8cf, 0xa3f3add4, 0x88f1793e, 0xdb41b2cf
.word 0xe64c0ddc, 0xe1928baf, 0x80e29c85, 0x47b9a222, 0x4618e4f3, 0x22ef50b7, 0xf2e03e58, 0x47f346a6
.word 0x9f6b0ce1, 0xb3938fb3, 0x77878bf3, 0x12cd46df, 0x4436c73c, 0x436d1f3e, 0x8366237b, 0x954dac28
.word 0x00fb3712, 0x4a9f042f, 0x2d76f58a, 0xb3f87fe8, 0xa63de866, 0x8d47cac2, 0xace2b213, 0x9daea103
.word 0x6b7dda96, 0x63950f46, 0xcbff4509, 0xcd0962d1, 0x2c2f3343, 0x126f609b, 0xc3b47b36, 0x132fba67
.word 0x2dbc3348, 0xde9935ec, 0xde74a48e, 0xb1c3b51b, 0xa4d402cf, 0xc1d44ecf, 0x6d0af0f1, 0xbd40a799
.word 0x01681300, 0x32aa10cc, 0x2e724579, 0x61b5f018, 0x935d9cfa, 0x842a4956, 0xbb9ff558, 0x3666daf9
.word 0x5e3e349c, 0x7be1a8ed, 0xa3b50206, 0x711f6ce4, 0xedf4bf71, 0xee6663b1, 0x59079532, 0x7e314e82
.word 0xd1cf716f, 0xa0f806bf, 0xce5b6738, 0x36dca1c0, 0x91153844, 0x2eb91ce9, 0x48564db2, 0xa5aac3f0
.word 0x66d2fde3, 0x6de3df1a, 0xfb9c5b6e, 0x4325cbd8, 0x4cf31beb, 0x222f0f86, 0x71912779, 0xf1cd29b2
.word 0xd2a93e43, 0x981ba5e6, 0x9b16f6c5, 0x74a92d61, 0xe9831a46, 0xa9636597, 0x51769729, 0x8b2461da
.word 0x5d37ae95, 0x2ce4999a, 0x0cb1a02f, 0xcf1a1e8b, 0x3f563508, 0x2da153b8, 0x8fb346ac, 0x07cc8602
.word 0x59b48d3a, 0x3bda6c9c, 0x6c05c0d7, 0xad3687cb, 0xcf40d5d5, 0x17de43eb, 0xc2ab4c10, 0xd33e313b
.word 0x228a733e, 0x87968615, 0xd9753f59, 0x0c05c6cd, 0xd9a9c6be, 0x937b70d4, 0x2de33416, 0xf2897fe2
.word 0x51e14844, 0x9afb0caa, 0x48d945d0, 0x7e655e2b, 0xb47de726, 0x633729c4, 0x9cf71f16, 0x60df75fd
.word 0x9eeb879a, 0x38071d86, 0x29ccd6e2, 0x5890afa0, 0xf6f0e831, 0x630fbafa, 0x4227bd15, 0xe608b4f8
.word 0xe82c0ca8, 0xf8aaaca4, 0xa3c2b9fe, 0x1fc4b63c, 0xdf1ef0b6, 0x08d05e0c, 0x0bbb7c50, 0x13aab2a4
.word 0x2ffa178d, 0xc454fdfa, 0x09beadf4, 0x6cb262f5, 0xa0225b87, 0x2777f537, 0x6e187b7f, 0x865a8404
.word 0x9c193d15, 0x77b2c7f4, 0xf88d8f31, 0x261c2cd6, 0x030b6487, 0x983f46ad, 0x67441877, 0x9a5081f9
.word 0x0901a20f, 0xa715f8f0, 0x6d1038be, 0x39759d18, 0x3daae4bc, 0x0876a68a, 0x1bb914c1, 0xed48a365
.word 0x52cfcbe2, 0xfd2918fd, 0xe0bea54c, 0x99e21e8d, 0x9dd0bc47, 0xb67e84c3, 0x0e5d33d0, 0xa021cebb
.word 0x97219e8d, 0xd612d9c9, 0xcc020671, 0xbb2c5d65, 0x9c59cffe, 0xbe1ee058, 0xcef25e8e, 0x1f02fa8e
.word 0x5b2a62bf, 0x6a392cb1, 0x09aea65c, 0xae80b743, 0xe0d2110f, 0x5f1cf517, 0x7c958ae8, 0x8b8a0921
.word 0xd04f7c7c, 0x7d938c6f, 0x0391c9f5, 0xcca23a74, 0xffeddf45, 0xb2785bc4, 0x910f7d90, 0xec1f5c4a
.word 0xf9aa301d, 0xccf9824c, 0xa1ee3f5d, 0x8299c826, 0x7e33b6fb, 0x794fbbb8, 0xd3c9271c, 0x4b2672f3
.word 0xa9a5c13e, 0xd98a3a14, 0x608a97a3, 0x0840e6ca, 0x61c35499, 0x54e54566, 0x7478a3b8, 0x48ef9bf0
.word 0xaef52acf, 0xb0966d09, 0x9278db14, 0xe45f5298, 0xc17673a0, 0x9b68b2f0, 0x4697bd87, 0x7dfb2453
.word 0xd67ae3e2, 0xe8b5e61e, 0x4ec317ad, 0xb62ba841, 0xed520d30, 0x86289de1, 0x61ac5218, 0x887433a3
.word 0x0d8da589, 0x940d00c5, 0x72ed26d1, 0x43fb2697, 0x6a06737c, 0x1eadf6d9, 0xfe391d68, 0x98718b2c
.word 0x6cb6fbaf, 0xf3d60da9, 0x3c9179aa, 0x997af7b3, 0xcaf14569, 0x154887c9, 0xa419461d, 0x4b4b25e3
.word 0xa8217ea8, 0x4b801ec3, 0x44a74435, 0xfb5121dc, 0x0cb7f0a1, 0x7d134a3d, 0x993419b1, 0xd560fbc3
.word 0x227074b3, 0x772ec4e5, 0x93e4deda, 0xe9db3e74, 0xd143575d, 0x23622dbd, 0x7e09b6f6, 0xa8088cd4
.word 0x7eb1dc71, 0xb4cc37ce, 0x890efa1b, 0xd4547146, 0x983ef52e, 0x96207233, 0x2509089c, 0x2f2e8307
.word 0xac2b4b6c, 0x173c570f, 0x8b385d08, 0x0f27e2f7
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
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x30, x25, zero
                  csrr x2, 0x300 # MSTATUS
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 31
                  bne x2, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x2, 0x341 # MEPC
                  csrr x2, 0x342 # MCAUSE
                  li x29, 0x3 # BREAKPOINT
                  beq x2, x29, ebreak_handler
                  li x29, 0x8 # ECALL_UMODE
                  beq x2, x29, ecall_handler
                  li x29, 0x9 # ECALL_SMODE
                  beq x2, x29, ecall_handler
                  li x29, 0xb # ECALL_MMODE
                  beq x2, x29, ecall_handler
                  li x29, 0x1
                  beq x2, x29, instr_fault_handler
                  li x29, 0x5
                  beq x2, x29, load_fault_handler
                  li x29, 0x7
                  beq x2, x29, store_fault_handler
                  li x29, 0xc
                  beq x2, x29, pt_fault_handler
                  li x29, 0xd
                  beq x2, x29, pt_fault_handler
                  li x29, 0xf
                  beq x2, x29, pt_fault_handler
                  li x29, 0x2 # ILLEGAL_INSTRUCTION
                  beq x2, x29, illegal_instr_handler
                  csrr x29, 0x343 # MTVAL
                  1: la x31, test_done
                  jalr x1, x31, 0

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
                  la x31, write_tohost
                  jalr x0, x31, 0

instr_fault_handler:
                  add x25, x30, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

load_fault_handler:
                  add x25, x30, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

store_fault_handler:
                  add x25, x30, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

ebreak_handler:   
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x25, x30, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

illegal_instr_handler:
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x25, x30, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x2, 0x300 # MSTATUS;
                  csrr  x2, 0x304 # MIE;
                  csrr  x2, 0x344 # MIP;
                  csrrc x2, 0x344, x2 # MIP;
                  add x25, x30, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
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
