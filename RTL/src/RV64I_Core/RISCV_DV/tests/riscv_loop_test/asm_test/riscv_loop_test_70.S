.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x5, h0_start
jalr x0, x5, 0
h0_start:
                  li x6, 0x40000100
                  csrw 0x301, x6
kernel_sp:        
                  la x16, kernel_stack_end

trap_vec_init:    
                  la x6, mtvec_handler
                  ori x6, x6, 0
                  csrw 0x305, x6 # MTVEC

mepc_setup:       
                  la x6, init
                  csrw 0x341, x6

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x6, 0x1800
                  csrw 0x300, x6 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x6
                  li x2, 0x7e0c4777
                  li x3, 0x68cdea64
                  li x4, 0x0
                  li x5, 0x80000000
                  li x6, 0xf6313b40
                  li x7, 0x0
                  li x8, 0x0
                  li x9, 0xfc3deea6
                  li x10, 0x80000000
                  li x11, 0x80000000
                  li x12, 0x0
                  li x13, 0x0
                  li x14, 0xf1c2ce16
                  li x17, 0x0
                  li x18, 0x5
                  li x19, 0x0
                  li x20, 0x0
                  li x21, 0xf0a04d0e
                  li x22, 0x0
                  li x23, 0x4049a7d
                  li x24, 0x8
                  li x25, 0x7
                  li x26, 0x0
                  li x27, 0x0
                  li x28, 0x0
                  li x29, 0x5
                  li x30, 0xd
                  li x31, 0x0
                  la x15, user_stack_end
main:             addi         a1, zero, 9 #init loop 1 counter
                  add          a0, s3, a4
                  nop
                  srli         s2, a7, 8
                  lui          s8, 738349
                  andi         tp, a3, 1233
                  addi         s7, zero, 16 #init loop 1 limit
                  ori          t1, a4, 1140
                  andi         s10, zero, -161
main_1_1_t:       addi         t2, a1, -1130
                  xori         s8, gp, -1912
                  slli         zero, t6, 6
                  addi         a1, a1, 7 #update loop 1 counter
                  srai         ra, s11, 27
                  slti         s5, a7, -415
                  sltiu        s3, s8, 222
                  addi         t3, zero, 9 #init loop 0 counter
                  slli         s2, zero, 20
                  add          s5, gp, a4
                  srli         s10, t4, 11
                  addi         s9, zero, 19 #init loop 0 limit
                  sub          t5, s9, t3
main_1_0_t:       andi         tp, a7, -397
                  auipc        t6, 989993
                  addi         t3, t3, 9 #update loop 0 counter
                  ori          s10, a5, -763
                  nop
                  slli         s2, a4, 28
                  bltu         t3, s9, main_1_0_t #branch for loop 0
                  slti         s4, s6, -1511
                  sub          a2, s7, s7
                  sltiu        s6, s0, -29
                  beq          a1, s7, main_1_1_t #branch for loop 1
                  sltiu        s3, a6, 136
                  addi         t1, zero, 6 #init loop 1 counter
                  slti         t5, t4, -589
                  addi         s4, zero, -9 #init loop 1 limit
main_5_1_t:       nop
                  srai         zero, s2, 0
                  addi         t1, t1, -7 #update loop 1 counter
                  addi         s0, zero, 5 #init loop 0 counter
                  addi         t4, zero, 4 #init loop 0 limit
main_5_0_t:       slt          a0, a1, s2
                  slt          a2, s2, s11
                  addi         s0, s0, -3 #update loop 0 counter
                  bgeu         s0, t4, main_5_0_t #branch for loop 0
                  slli         a3, s5, 26
                  bge          t1, s4, main_5_1_t #branch for loop 1
                  sub          s7, a6, tp
                  addi         s0, zero, 7 #init loop 0 counter
                  xor          t4, s4, s10
                  sltiu        gp, s11, 921
                  slti         a3, t5, 805
                  srli         s11, s7, 0
                  addi         a1, zero, 19 #init loop 0 limit
main_15_0_t:      slti         s9, a6, -100
                  sltu         a4, a4, a6
                  addi         s0, s0, 8 #update loop 0 counter
                  sra          s11, s4, s3
                  xor          ra, s1, s7
                  lui          s9, 411594
                  bltu         s0, a1, main_15_0_t #branch for loop 0
                  auipc        ra, 928315
                  addi         sp, zero, 3 #init loop 1 counter
                  addi         s11, zero, 17 #init loop 1 limit
main_0_1_t:       xor          a2, t5, t0
                  slt          a3, ra, t2
                  nop
                  and          t5, a0, a4
                  addi         sp, sp, 1 #update loop 1 counter
                  addi         s8, zero, 2 #init loop 0 counter
                  addi         t1, zero, 12 #init loop 0 limit
                  or           t3, s7, a3
                  xor          a1, a1, t6
main_0_0_t:       sltiu        t6, s7, 537
                  addi         a1, sp, 1014
                  andi         s10, s5, 2022
                  addi         s8, s8, 10 #update loop 0 counter
                  bne          s8, t1, main_0_0_t #branch for loop 0
                  sub          s2, s0, a7
                  sll          t6, s11, t2
                  sltu         a7, s5, a4
                  bltu         sp, s11, main_0_1_t #branch for loop 1
                  lui          s1, 169300
                  addi         ra, zero, 3 #init loop 1 counter
                  sll          zero, s9, a7
                  sltu         t3, s10, t0
                  addi         gp, zero, -5 #init loop 1 limit
main_10_1_t:      slt          s4, tp, t1
                  sltiu        t6, s9, 495
                  addi         ra, ra, -8 #update loop 1 counter
                  slli         s11, zero, 21
                  sub          s11, t0, t1
                  xori         s3, t1, 430
                  xor          t3, s10, s6
                  slli         s3, ra, 14
                  addi         s7, zero, 10 #init loop 0 counter
                  addi         t1, zero, 10 #init loop 0 limit
                  srli         s0, t6, 31
                  auipc        s8, 125726
                  sltiu        s2, t2, -586
                  srl          s4, s4, s2
                  slt          a0, s3, t0
main_10_0_t:      ori          sp, s0, 1160
                  xor          s0, s0, sp
                  addi         s7, s7, -9 #update loop 0 counter
                  srli         s11, a6, 26
                  bgeu         s7, t1, main_10_0_t #branch for loop 0
                  sub          t6, a2, a7
                  sra          t4, t1, s8
                  sra          a0, t2, t3
                  addi         s0, s5, -1441
                  auipc        a7, 707142
                  beq          ra, gp, main_10_1_t #branch for loop 1
                  srai         a7, t0, 6
                  addi         t2, zero, -2 #init loop 0 counter
                  xor          t6, a1, t1
                  srl          ra, s3, s5
                  slt          s2, s2, a5
                  sub          s7, a7, s6
                  srai         s5, t5, 28
                  slt          s8, a5, s0
                  slti         s6, s8, 1829
                  nop
                  sltu         s7, s9, t4
                  addi         a4, zero, 1 #init loop 0 limit
main_8_0_t:       slt          sp, s5, t1
                  slt          s7, s11, ra
                  add          t3, s2, s3
                  srl          s7, t1, zero
                  xor          s9, s4, zero
                  sub          a0, a0, s5
                  addi         t2, t2, 7 #update loop 0 counter
                  lui          a2, 427999
                  xor          s4, s10, s3
                  xor          gp, s3, s4
                  blt          t2, a4, main_8_0_t #branch for loop 0
                  srai         t4, a5, 5
                  addi         t2, zero, 6 #init loop 0 counter
                  xor          t1, s11, a1
                  addi         a4, a1, -1889
                  xori         s6, a5, 1133
                  srl          t1, tp, ra
                  addi         t4, s1, -1349
                  sub          a3, s10, s6
                  auipc        s8, 912726
                  addi         s5, zero, 3 #init loop 0 limit
main_14_0_t:      xori         t4, a5, -124
                  xor          a1, s4, zero
                  auipc        s6, 258786
                  sra          a2, t5, s3
                  addi         t2, t2, -1 #update loop 0 counter
                  auipc        a3, 777689
                  srli         s7, a1, 23
                  bgeu         t2, s5, main_14_0_t #branch for loop 0
                  sub          t5, a0, t5
                  addi         s11, zero, -6 #init loop 0 counter
                  slt          s9, s6, t2
                  sltu         a4, sp, s11
                  sltiu        s7, t6, 712
                  slli         s9, a3, 19
                  addi         t5, zero, -13 #init loop 0 limit
                  or           a1, s0, s8
                  slli         s4, t4, 15
main_12_0_t:      ori          s6, a0, 1091
                  slli         s9, s1, 23
                  addi         s11, s11, -9 #update loop 0 counter
                  lui          gp, 723256
                  auipc        gp, 712506
                  sub          s0, s7, ra
                  slti         a4, s1, -611
                  srli         a1, ra, 11
                  sltu         s6, s4, s11
                  ori          gp, a2, -1256
                  sra          a2, ra, t3
                  srai         t6, s8, 10
                  bge          s11, t5, main_12_0_t #branch for loop 0
                  slli         t2, t4, 27
                  addi         ra, zero, 1 #init loop 0 counter
                  srai         s5, a7, 30
                  srl          a2, s7, s4
                  sub          s0, s6, s11
                  slt          s0, t1, t4
                  xor          s1, t5, s8
                  sltiu        s5, ra, 1881
                  srli         s4, s6, 17
                  addi         sp, zero, -6 #init loop 0 limit
                  srai         t5, ra, 27
                  slti         s6, gp, -1770
                  lui          a0, 433643
main_4_0_t:       sltu         a4, tp, a7
                  sltu         t4, s0, s10
                  sub          s11, s10, sp
                  addi         ra, ra, -6 #update loop 0 counter
                  srl          s1, s4, s6
                  xor          a3, a6, s3
                  add          s7, a5, s11
                  srli         s10, a3, 16
                  bge          ra, sp, main_4_0_t #branch for loop 0
                  ori          zero, a1, -193
                  addi         s5, zero, -3 #init loop 1 counter
                  andi         a2, s11, 211
                  sltu         s3, ra, s5
                  addi         s8, zero, 9 #init loop 1 limit
                  slli         s2, tp, 15
                  or           t3, a1, t5
main_3_1_t:       xor          a3, t1, tp
                  nop
                  addi         t6, gp, -10
                  addi         s5, s5, 6 #update loop 1 counter
                  sltiu        t6, s7, -89
                  ori          a3, t1, -1900
                  add          a2, s2, a3
                  addi         a7, zero, 6 #init loop 0 counter
                  slt          a4, a0, t4
                  slli         ra, zero, 15
                  addi         t4, zero, 7 #init loop 0 limit
                  and          s4, zero, a0
                  sra          t1, a6, sp
main_3_0_t:       or           a3, t3, t4
                  addi         a7, a7, 9 #update loop 0 counter
                  bltu         a7, t4, main_3_0_t #branch for loop 0
                  sltu         a2, t1, gp
                  bltu         s5, s8, main_3_1_t #branch for loop 1
                  addi         a2, t1, 700
                  addi         s8, zero, -10 #init loop 1 counter
                  addi         t2, s10, -1540
                  xori         s5, t3, -1047
                  add          s0, t4, a3
                  addi         ra, zero, 12 #init loop 1 limit
                  or           s1, gp, a2
                  sub          a4, s3, t1
main_2_1_t:       or           tp, sp, a0
                  addi         s8, s8, 6 #update loop 1 counter
                  xor          s5, t1, sp
                  addi         t4, zero, 4 #init loop 0 counter
                  addi         s2, zero, 15 #init loop 0 limit
                  xori         a1, ra, 236
                  add          a4, s9, a4
                  slli         sp, tp, 29
                  xori         sp, s2, -293
main_2_0_t:       and          t2, t4, s6
                  addi         t4, t4, 5 #update loop 0 counter
                  nop
                  bltu         t4, s2, main_2_0_t #branch for loop 0
                  srai         s5, s0, 26
                  blt          s8, ra, main_2_1_t #branch for loop 1
                  srli         s4, s8, 1
                  addi         a2, zero, 9 #init loop 1 counter
                  lui          s4, 594568
                  addi         s5, zero, 8 #init loop 1 limit
                  ori          s1, a0, 704
main_11_1_t:      or           tp, tp, s0
                  addi         a2, a2, -7 #update loop 1 counter
                  nop
                  addi         ra, zero, -8 #init loop 0 counter
                  addi         s6, zero, -3 #init loop 0 limit
main_11_0_t:      ori          a0, s0, -173
                  addi         ra, ra, 5 #update loop 0 counter
                  xori         s3, s8, -1509
                  beq          ra, s6, main_11_0_t #branch for loop 0
                  bgeu         a2, s5, main_11_1_t #branch for loop 1
                  ori          a7, a7, -1187
                  addi         s11, zero, 8 #init loop 1 counter
                  slt          t1, s7, t3
                  srli         s10, zero, 8
                  addi         t3, zero, -10 #init loop 1 limit
                  srl          t6, s7, t3
main_6_1_t:       sltiu        s8, a0, -181
                  xori         s6, t5, -1875
                  sltiu        s2, s3, 1385
                  ori          s6, a5, 1070
                  lui          s3, 152238
                  addi         s11, s11, -9 #update loop 1 counter
                  addi         s5, zero, 2 #init loop 0 counter
                  add          s2, ra, s9
                  slli         s7, a0, 26
                  and          s8, t5, s0
                  sub          s8, a7, t1
                  addi         a3, zero, 17 #init loop 0 limit
main_6_0_t:       and          s4, a1, sp
                  xor          a1, t4, t1
                  addi         s5, s5, 8 #update loop 0 counter
                  srai         t1, s6, 22
                  nop
                  xor          s3, a4, s4
                  srl          s10, gp, a6
                  slli         zero, a5, 7
                  bltu         s5, a3, main_6_0_t #branch for loop 0
                  srl          s4, tp, s7
                  slti         s6, s8, -282
                  add          t6, t6, a5
                  ori          t2, a5, -1716
                  bne          s11, t3, main_6_1_t #branch for loop 1
                  sub          t2, a3, s7
                  addi         s4, zero, -7 #init loop 0 counter
                  add          gp, a6, tp
                  nop
                  addi         s1, zero, 16 #init loop 0 limit
                  nop
                  slli         t4, s4, 1
main_7_0_t:       andi         s7, s3, -1253
                  addi         s4, s4, 7 #update loop 0 counter
                  bltu         s4, s1, main_7_0_t #branch for loop 0
                  sra          t5, a5, s4
                  addi         s8, zero, 2 #init loop 0 counter
                  slt          s5, a7, t2
                  srai         zero, a0, 24
                  srli         a2, sp, 31
                  addi         s3, t2, 1529
                  srl          sp, t2, s6
                  auipc        s5, 894937
                  lui          s1, 103275
                  sltiu        s11, gp, 1609
                  sub          tp, a5, a1
                  sltu         a7, a2, s7
                  slti         sp, zero, 736
                  srai         a1, a2, 8
                  addi         a4, zero, -1 #init loop 0 limit
                  and          s11, t1, s4
main_9_0_t:       sltiu        s2, s3, 70
                  slt          t4, sp, t4
                  sltiu        s2, a2, 1564
                  sltiu        gp, s5, 16
                  sub          s1, a3, s4
                  sub          t4, s6, a0
                  addi         s8, s8, -6 #update loop 0 counter
                  add          t1, sp, s8
                  auipc        t4, 915232
                  bge          s8, a4, main_9_0_t #branch for loop 0
                  add          s1, sp, a6
                  bltu         s5, t3, 8f
                  add          t6, zero, s0
                  sub          t5, gp, s1
                  sra          s5, s0, s3
                  auipc        tp, 582474
                  blt          s3, s11, 19f
                  sltiu        a4, s10, -1284
                  and          s8, a0, ra
8:                nop
                  add          t6, t0, s0
                  ori          zero, t2, 301
                  or           a0, gp, s1
                  lui          s3, 335978
                  ori          t1, a1, -997
                  lui          s11, 25225
                  srli         t3, s10, 18
                  slt          ra, t3, t2
                  bne          a2, s8, 21f
                  slti         s8, a3, 1773
19:               sltu         gp, s4, t3
                  xor          t4, a0, zero
21:               beq          ra, t0, 37f
                  blt          sp, a0, 29f
                  slli         s6, s11, 9
                  auipc        a1, 483607
                  addi         t6, t3, -1109
                  srai         s8, t2, 31
                  srli         t4, t2, 27
                  andi         s10, s1, -832
29:               add          a2, s4, s11
                  slt          tp, s3, a7
                  xori         s10, a4, -910
                  add          a7, s3, a0
                  la           s10, sub_1
                  xor          a3, a0, a6
                  srai         a3, a4, 2
                  slli         s8, s0, 30
                  sll          a1, a3, a7
                  or           s5, ra, gp
                  slti         a4, s8, 1137
                  addi         s10, s10, -381
                  sll          gp, t3, s11
main_j2:          jalr         ra, s10, 381 #jump main -> sub_1
                  sll          tp, s11, a2
                  sra          s9, s8, a5
                  sll          s5, sp, s4
                  sll          s11, a5, t3
                  addi         a2, s11, 1661
37:               sub          a1, t5, t0
                  slli         s10, a3, 22
                  slti         s3, t6, -1238
                  sltu         t3, sp, s11
                  blt          a2, s10, 59f
                  srl          ra, zero, t0
                  bltu         t6, s1, 51f
                  srai         s4, t5, 20
                  addi         t6, t2, -11
                  beq          s4, a6, 56f
                  sll          s0, t2, t1
                  sra          t3, a4, t3
                  sub          a4, a6, a6
                  sub          s9, s10, s4
51:               sltu         sp, s3, s1
                  srl          t5, t4, t3
                  lui          a0, 957507
                  slli         a7, t0, 14
                  xor          s6, s5, a6
56:               sra          s8, sp, sp
                  and          s10, s2, t0
                  and          a4, s8, t5
59:               slli         t3, s11, 4
                  beq          a2, t6, 77f
                  srl          t5, t2, a7
                  srai         a2, s11, 14
                  slti         t6, t6, -1830
                  bge          ra, s8, 79f
                  xor          a7, t1, s7
                  sub          s9, s7, a5
                  lui          s7, 581073
                  sra          s11, s10, gp
                  blt          s9, s9, 74f
                  srli         t2, a3, 30
                  beq          ra, a7, 84f
                  ori          t3, a0, -32
                  srl          s8, s6, a6
74:               add          s8, s8, t5
                  srl          a0, a6, t1
                  bgeu         a7, ra, 78f
77:               bge          t0, s3, 79f
78:               sll          s9, a1, t1
79:               lui          ra, 755319
                  auipc        t3, 6698
                  sub          s9, a2, s9
                  sra          s6, a7, a6
                  lui          a4, 523798
84:               addi         a2, zero, 1610
                  ori          t5, t2, -1681
                  xor          s1, sp, a4
                  auipc        a1, 909698
                  xor          s3, t2, a3
                  nop
                  sra          s7, gp, a3
                  xori         t4, s8, -307
                  or           sp, a1, tp
                  lui          a4, 925593
                  sub          gp, t4, s3
                  auipc        sp, 921267
                  bgeu         t4, a5, 103f
                  srl          s6, s5, s9
                  or           a3, sp, s4
                  blt          a5, s11, 100f
100:              and          s9, s11, s5
                  srai         s4, s7, 28
                  bltu         zero, zero, 117f
103:              srl          s3, a0, t4
                  beq          t1, a6, 107f
                  andi         a0, a0, 55
                  srli         s0, a1, 9
107:              bgeu         t1, zero, 124f
                  blt          s9, a0, 113f
                  xor          s6, s7, a7
                  sltu         a7, a6, t4
                  auipc        s6, 798358
                  lui          s5, 630042
113:              addi         s9, s4, 1408
                  srl          t1, zero, s10
                  add          s7, t3, a1
                  bne          t4, t0, 122f
117:              sub          s2, s3, t2
                  xor          s5, t2, zero
                  beq          s5, tp, 136f
                  or           s0, t3, s11
                  sll          t2, s8, a7
122:              xori         s6, t4, -2004
                  andi         a4, t2, -188
124:              auipc        a3, 227821
                  xor          s0, s0, s7
                  sltu         s9, s9, t4
                  nop
                  add          a4, tp, t4
                  bltu         s4, a3, 137f
                  srli         t4, t2, 9
                  nop
                  lui          sp, 308826
                  ori          zero, a7, 411
                  nop
                  srli         t3, t5, 27
136:              bge          a6, a2, 150f
137:              sub          a1, s1, t4
                  sltu         s5, a3, t2
                  andi         t5, s4, -138
                  lui          t4, 470808
                  srl          s4, t1, s7
                  slt          a4, t5, a3
                  slli         a7, a5, 25
                  ori          s3, t1, 1792
                  addi         a2, a2, 592
                  srl          s6, ra, s4
                  slt          s1, t2, t5
                  bge          t1, ra, 168f
                  blt          a2, t2, 155f
150:              sll          gp, s10, t0
                  ori          ra, sp, -1615
                  beq          t1, t4, 165f
                  bge          t5, t6, 156f
                  auipc        s2, 154691
155:              addi         ra, s3, -941
156:              srl          s10, s2, s4
                  sra          t4, a0, s11
                  sra          s7, s3, a5
                  and          s1, tp, s5
                  ori          s10, gp, 1398
                  slt          s3, tp, t2
                  or           t2, s10, s11
                  sra          zero, a5, s4
                  sltiu        t4, t2, -1478
165:              sra          ra, s11, s11
                  sub          a3, t2, sp
                  sll          a7, a4, gp
168:              srai         t1, s7, 12
                  add          s11, s5, s9
                  slti         s11, a6, -908
                  sub          tp, t4, s8
                  xor          s9, a0, s1
                  slti         s2, gp, 565
                  bltu         s8, t4, 179f
                  and          s1, a2, s4
                  ori          t6, t4, 1144
                  bne          a4, t6, 187f
                  sll          s7, s8, a1
179:              bne          s7, t6, 187f
                  srli         a1, a0, 18
                  slt          s0, s11, a1
                  add          tp, a6, a6
                  sltiu        s1, a4, 656
                  xori         s2, t3, 844
                  sll          ra, s2, s3
                  sub          t1, t2, t4
187:              slli         s1, t6, 2
                  and          t1, gp, s9
                  slti         a3, a3, -999
                  addi         t5, s3, 1907
                  srl          a2, s1, s3
                  or           a7, a7, a5
                  xor          s9, s7, s1
                  bne          s1, t5, 196f
                  auipc        t2, 67846
196:              auipc        a4, 110942
                  xor          s7, tp, s7
                  srai         s5, a1, 18
                  srli         s1, a4, 12
                  srli         a3, a4, 18
                  sra          t5, a1, a3
                  srl          tp, zero, sp
                  or           s7, a4, a0
                  sll          s1, s10, t2
                  sub          s7, t5, s6
                  xori         t4, tp, 1595
                  bne          s3, s5, 212f
                  ori          a2, t3, 823
                  srl          sp, s11, a1
                  blt          a5, a2, 223f
                  srli         s4, s7, 6
212:              bge          s2, t6, 216f
                  slli         t4, a1, 2
                  bgeu         s1, t0, 222f
                  andi         a7, a1, -643
216:              bltu         s1, t0, 230f
                  lui          s8, 411580
                  andi         a2, a1, -240
                  and          a3, s3, s4
                  sub          s11, s6, gp
                  blt          s9, s9, 236f
222:              bltu         s0, s11, 240f
223:              srli         t2, s5, 22
                  slti         zero, s9, 1327
                  bne          s4, a5, 235f
                  add          t6, a5, s10
                  or           s11, a5, t4
                  or           a3, s0, s5
                  sub          gp, s4, a7
230:              add          a3, ra, s8
                  slt          t2, s9, a7
                  srl          t4, t3, s7
                  xor          t2, s3, s2
                  bne          t4, a7, 250f
235:              srli         a7, s11, 22
236:              addi         s4, tp, -1934
                  add          t1, ra, a7
                  lui          a0, 106183
                  bgeu         t4, a0, 246f
240:              bge          t2, s0, 257f
                  xor          t5, a4, gp
                  slli         a4, s9, 18
                  ori          s9, s3, 298
                  slti         a1, s6, -1758
                  sra          t2, a3, s8
246:              lui          s7, 414642
                  sub          a3, t3, gp
                  sltu         a7, t3, s3
                  addi         a4, s5, 1621
250:              slti         s8, s9, 168
                  srli         a7, sp, 30
                  or           t3, s5, s11
                  sll          s10, a5, t1
                  xor          sp, tp, a3
                  ori          t6, s9, 23
                  bge          a1, a2, 259f
257:              bge          s8, a3, 263f
                  bge          s3, gp, 263f
259:              bge          a4, gp, 264f
                  srl          t2, t3, a3
                  bge          t6, s7, 269f
                  srai         a1, t2, 29
263:              srl          t1, t6, a7
264:              lui          s8, 838133
                  sltiu        zero, s0, 342
                  and          a0, t5, zero
                  slti         a1, s8, -1292
                  addi         a4, a2, 1570
269:              bgeu         s9, gp, 284f
                  andi         t5, t5, 1833
                  auipc        s8, 562714
                  slli         a0, s11, 22
                  sltiu        s11, s6, -487
                  or           s4, tp, a1
                  sra          s4, s11, s11
                  add          s3, a2, gp
                  bne          a0, a0, 290f
                  bltu         a3, a6, 298f
                  lui          tp, 856245
                  addi         s5, s11, -1796
                  sltu         t1, s9, zero
                  bge          ra, sp, 283f
283:              nop
284:              bge          a5, t4, 301f
                  srli         a7, a7, 30
                  sub          t1, gp, ra
                  or           s4, tp, a5
                  sltiu        s6, s7, 1233
                  nop
290:              sltiu        a0, s5, 543
                  auipc        s9, 842711
                  or           ra, s5, a6
                  sltu         s9, t0, s2
                  slti         t6, s6, 1585
                  sltiu        s4, s7, -851
                  or           s5, a5, a1
                  ori          zero, s8, -1584
298:              sltiu        s6, a3, -478
                  bltu         a0, t1, 302f
                  sll          s1, zero, zero
301:              or           t1, sp, tp
302:              addi         tp, s5, 1999
                  sra          a2, sp, s2
                  slt          a7, t1, a4
                  ori          t1, tp, -1763
                  and          a4, a5, s7
                  srl          a2, a0, a4
                  sltiu        s3, t3, 439
                  bne          t2, a0, 319f
                  ori          t2, t3, -841
                  lui          zero, 1035395
                  bne          zero, a4, 318f
                  slti         a2, s9, -1393
                  bltu         a2, a2, 316f
                  ori          a0, s2, -1235
316:              slti         s8, ra, -289
                  slti         s8, a7, 949
318:              sltu         a3, t1, a5
319:              srl          s6, s10, s9
                  xori         s7, gp, 938
                  andi         s3, s2, -77
                  sub          s7, tp, t4
                  bgeu         a6, a2, 330f
                  slti         s5, t4, 1346
                  bltu         gp, a7, 339f
                  ori          t3, tp, -302
                  addi         t6, zero, -10 #init loop 1 counter
                  or           a0, s3, s4
                  lui          a7, 374389
                  sra          t4, s9, s3
                  addi         a3, zero, 2 #init loop 1 limit
                  sll          s6, t6, gp
                  andi         t2, tp, -339
                  slli         s9, s3, 1
main_13_1_t:      lui          s9, 989877
                  and          s2, sp, s0
                  addi         t6, t6, 8 #update loop 1 counter
                  slti         t2, t3, 23
                  addi         s8, zero, 10 #init loop 0 counter
                  or           ra, a3, zero
                  addi         a1, t2, -669
                  addi         s5, zero, 6 #init loop 0 limit
main_13_0_t:      and          t5, t2, s11
                  xori         tp, ra, 1091
                  or           s0, s1, t0
                  nop
                  addi         s8, s8, -2 #update loop 0 counter
                  srl          a1, s1, t6
                  nop
                  sra          tp, gp, s6
                  bgeu         s8, s5, main_13_0_t #branch for loop 0
                  add          s7, s6, ra
                  srai         a2, a3, 25
                  sra          t2, s11, t5
                  ori          s11, s9, 1800
                  lui          s2, 693900
                  sltiu        s0, a2, -157
                  ori          t3, sp, 685
                  sub          a4, s7, s7
                  blt          t6, a3, main_13_1_t #branch for loop 1
                  xori         a0, s1, 463
                  bgeu         s10, tp, 344f
                  andi         s8, a7, -448
                  add          t5, a1, s0
330:              slt          a4, s9, t0
                  bltu         t3, s1, 336f
                  or           ra, s10, s9
                  slti         gp, t4, -270
                  srai         t1, sp, 19
                  add          a4, sp, t2
336:              addi         sp, t2, -1596
                  add          s7, s10, t1
                  add          s5, t3, s1
339:              addi         a3, a5, 106
                  slt          s0, t0, t1
                  beq          s5, ra, 346f
                  srl          s10, s1, a1
                  and          s6, t3, a4
344:              bge          a2, a4, 357f
                  sltiu        s5, t6, -1683
346:              xor          t2, s2, tp
                  ori          s4, a0, -130
                  sra          t3, gp, a7
                  bge          sp, zero, 362f
                  addi         t5, t0, 594
                  sub          t2, a2, s4
                  sltu         t6, s9, s9
                  bge          s11, zero, 367f
                  slli         tp, a0, 23
                  srai         s6, t4, 19
                  slli         gp, s9, 15
357:              srl          s11, s7, t1
                  add          ra, tp, sp
                  sub          s4, t6, a5
                  auipc        t4, 585659
                  xor          a3, s2, a2
362:              sltu         t2, s7, ra
                  sltiu        s6, tp, -694
                  auipc        zero, 623740
                  slt          s3, s6, s3
                  auipc        a0, 618351
367:              blt          s1, a0, 382f
                  bne          t3, s9, 385f
                  srai         t3, a4, 12
                  sltu         a7, t0, t3
                  srai         a2, t4, 12
                  sltiu        s8, t3, -527
                  srli         a1, s7, 14
                  blt          ra, s9, 377f
                  slli         tp, s10, 16
                  bgeu         s5, ra, 384f
377:              beq          t6, a2, 378f
378:              sll          s5, s5, s5
                  xori         tp, a7, 261
                  ori          s7, s9, -1455
                  and          a1, s0, s4
382:              xor          a0, s1, tp
                  add          s4, sp, t1
384:              sltiu        s0, t0, 1383
385:              srl          s2, s0, tp
                  bne          a2, a2, 400f
                  lui          t3, 580486
                  sltu         s10, t4, s0
                  sltiu        tp, s6, -1728
                  xori         s3, t4, -2
                  sll          a7, a7, t6
                  bgeu         s8, t3, 399f
                  xor          t5, a0, t5
                  bne          t1, t6, 404f
                  and          gp, sp, t0
                  sltu         t6, s0, a5
                  srl          t1, tp, ra
                  nop
399:              sll          gp, s11, t1
400:              lui          t3, 160595
                  addi         a2, zero, 1940
                  blt          sp, s11, 405f
                  xor          t3, t2, s3
404:              xori         t4, s3, 1240
405:              nop
                  andi         s4, t1, -1988
                  sra          a1, tp, t6
                  or           s10, s8, s1
                  xori         zero, s8, -1739
                  bltu         a7, zero, 428f
                  srli         a0, tp, 9
                  xor          s11, a2, s4
                  slt          s5, zero, a5
                  sltiu        s7, t6, 1294
                  blt          ra, t4, 425f
                  slt          s7, a7, gp
                  add          ra, a2, s8
                  xori         s9, a2, 967
                  nop
                  add          a3, t2, s5
                  xor          a7, a2, t2
                  or           a7, sp, t3
                  nop
                  add          t6, s0, a4
425:              xori         a7, t4, -112
                  ori          a2, t2, 1882
                  sltiu        s8, a4, 1760
428:              addi         s8, s4, -37
                  add          s8, s8, tp
                  sra          s2, ra, a5
                  sltiu        s4, t5, 1357
                  xori         a7, t0, -1747
                  sltiu        t5, a2, 1618
                  srai         t6, a6, 26
                  slli         s2, t5, 26
                  sltiu        a7, t2, -972
                  xori         t6, a3, 1401
                  addi         t2, t2, -883
                  slti         s7, t6, 756
                  and          s7, a6, s9
                  addi         gp, tp, -273
                  slt          sp, s6, s4
                  sltu         s6, t4, s5
                  nop
                  sra          a1, a3, s11
                  srli         sp, s9, 19
                  slt          s6, t4, a4
                  srl          s5, t5, s5
                  srl          sp, sp, a2
                  or           s9, a5, a4
                  or           s10, s4, a2
                  xori         a4, s0, 1016
                  slt          sp, t0, t1
                  bge          gp, a7, 462f
                  sltu         s9, t3, t2
                  sra          tp, t3, s11
                  srai         a0, sp, 15
                  slli         a0, t1, 13
                  xori         zero, s7, -972
                  beq          t2, s8, 477f
                  xori         s3, s5, -381
462:              nop
                  ori          s8, a5, -89
                  xor          s7, s8, t0
                  nop
                  bgeu         t4, tp, 482f
                  addi         a3, s9, 1374
                  xor          t1, s11, s9
                  bge          s3, a5, 486f
                  sltu         s0, s10, a0
                  srli         sp, s1, 26
                  slti         s7, tp, -1860
                  auipc        zero, 433393
                  blt          s2, t3, 480f
                  beq          a0, s8, 495f
                  andi         zero, t1, -659
477:              bgeu         s2, a6, 484f
                  sll          t3, t4, a0
                  beq          s1, s9, 484f
480:              xori         a0, s7, 1209
                  beq          a4, t1, 496f
482:              sltu         ra, s11, a7
                  sra          a4, sp, a3
484:              xori         a4, t5, 941
                  srl          a4, zero, t5
486:              sra          t3, t6, t3
                  or           s10, s10, t5
                  blt          s2, a7, 490f
                  slt          t2, s8, a0
490:              or           ra, s4, t3
                  xor          s2, a3, a4
                  sub          t5, a1, s7
                  sltu         a7, t3, tp
                  andi         s6, a4, -1796
495:              bgeu         a6, a2, 497f
496:              auipc        t5, 39387
497:              bne          s1, t3, 505f
                  beq          s1, t0, 502f
                  srli         a2, s2, 31
                  ori          a3, s1, 1490
                  auipc        t1, 209873
502:              sub          t4, t1, a2
                  and          s0, s11, s8
                  lui          t5, 355840
                  sltu         s8, a6, s3
                  la           s0, sub_1
                  sltu         s8, s9, t1
                  srli         s2, a5, 14
                  sll          s8, t5, t4
                  addi         s0, s0, -125
                  srli         sp, t1, 13
                  slti         ra, t3, 1319
                  slli         s4, a2, 27
                  sltu         a1, s1, s0
main_j1:          jalr         ra, s0, 126 #jump main -> sub_1
                  addi         sp, s10, -1485
505:              add          s4, t3, t4
                  or           a0, s3, a3
                  addi         tp, gp, -1964
                  addi         s5, s1, -1060
                  srl          s3, t4, gp
                  addi         s2, t4, -1132
                  or           s0, a1, s5
                  sub          s11, s8, ra
                  nop
                  srai         t1, tp, 1
                  srai         s2, s5, 13
                  srai         a1, t4, 12
                  lui          a7, 409165
                  ori          s7, s5, 1164
                  srai         ra, a7, 0
                  slt          t2, a4, sp
                  slt          t4, s5, a2
                  or           t1, t5, t1
                  xori         s5, a1, -178
                  slti         a3, s10, 1144
                  sub          s10, a6, s10
                  sltu         s2, s3, gp
                  blt          zero, a1, 533f
                  bltu         t6, zero, 536f
                  andi         a7, s6, -820
                  sra          t4, s0, t5
                  slt          sp, ra, t4
                  nop
533:              sll          s11, t3, s5
                  sltiu        a7, s5, -1429
                  auipc        s10, 983719
536:              sra          s0, a3, a7
                  slt          s11, t2, a7
                  sll          gp, s3, tp
                  bgeu         t1, a2, 556f
                  sub          a1, s6, a1
                  srl          t3, t4, a3
                  sll          s8, t5, gp
                  sltiu        tp, s6, -261
                  beq          t5, ra, 562f
                  nop
                  andi         s8, s10, 397
                  sll          s7, s1, t3
                  andi         a4, t3, 1600
                  sltu         t6, s7, t1
                  sra          s2, t0, a5
                  bne          a1, s3, 567f
                  blt          a4, s8, 572f
                  bltu         s8, t3, 566f
                  bltu         s2, t2, 560f
                  add          t1, t3, t4
556:              slti         a0, t4, -171
                  beq          s5, s11, 562f
                  bltu         a6, gp, 563f
                  bgeu         s7, s6, 569f
560:              addi         s8, tp, 95
                  auipc        s3, 854630
562:              slt          t5, s4, t4
563:              lui          s4, 857449
                  ori          s9, zero, -776
                  andi         a1, s0, -56
566:              slti         t3, a2, 159
567:              or           gp, a6, ra
                  sll          s6, a7, s3
569:              lui          t4, 636827
                  blt          s0, s6, 580f
                  bne          ra, s8, 574f
572:              sltu         s10, t0, t6
                  slti         a2, s5, -601
574:              andi         ra, gp, 1800
                  sub          ra, sp, a7
                  blt          t1, s9, 582f
                  bne          t0, s2, 592f
                  beq          a0, s8, 581f
                  slli         s6, s6, 27
580:              sra          s10, a0, t4
581:              slli         s11, s4, 15
582:              addi         s7, t5, -1489
                  andi         ra, t4, -1117
                  addi         s0, sp, -432
                  or           t4, s3, gp
                  blt          t5, zero, 593f
                  srli         t6, a3, 7
                  addi         t2, zero, -1318
                  xori         t3, s6, -1449
                  beq          s9, s10, 598f
                  or           s9, ra, a4
592:              bltu         s11, t5, 594f
593:              slt          a3, s4, s0
594:              bge          t4, gp, 608f
                  xori         a3, tp, -1264
                  srai         t4, ra, 12
                  bge          t1, a1, 614f
598:              slli         s3, ra, 6
                  or           s10, s0, t5
                  bne          s8, gp, 605f
                  addi         a7, a6, 80
                  sltu         a2, s5, s4
                  bltu         gp, t5, 611f
                  lui          a7, 808756
605:              or           s8, a2, s8
                  bgeu         gp, s3, 608f
                  slti         t6, s2, 295
608:              andi         s7, s7, 1172
                  bne          t3, ra, 626f
                  slt          s7, s0, t6
611:              blt          t5, t1, 624f
                  srai         sp, s4, 21
                  blt          a3, ra, 617f
614:              slli         s10, s0, 16
                  nop
                  addi         s5, a2, -1503
617:              and          s1, t5, sp
                  sll          ra, t5, s9
                  ori          tp, a4, 1446
                  bne          a1, s10, 635f
                  sltu         s7, s3, t5
                  bgeu         s5, t3, 623f
623:              bgeu         s11, t5, 637f
624:              bge          s10, t4, 631f
                  add          a1, s2, a4
626:              auipc        t1, 881626
                  addi         t3, a6, 1954
                  or           s1, s6, zero
                  add          t6, a1, s8
                  or           s4, s2, a7
631:              bgeu         s10, a1, 638f
                  bne          t4, a1, 635f
                  and          s0, a5, s9
                  sltiu        s4, s1, -1440
635:              srli         ra, s11, 20
                  blt          a1, s7, 640f
637:              slt          a4, t3, s2
638:              auipc        s9, 398955
                  sra          ra, a5, a5
640:              srai         zero, a7, 21
                  beq          a2, tp, 661f
                  sll          s11, a4, zero
                  xor          s7, s1, s1
                  blt          s3, t1, 654f
                  bge          s5, t3, 662f
                  bge          a3, t3, 649f
                  slti         s10, t6, 1836
                  srl          ra, tp, tp
649:              addi         a7, t2, 42
                  nop
                  bltu         t2, t4, 653f
                  sra          s1, s9, s4
653:              bltu         t0, s0, 671f
654:              srl          s9, s0, t5
                  sltiu        s3, s6, -959
                  slt          s11, a0, s10
                  bgeu         t4, s3, 674f
                  sra          s9, a2, t6
                  bltu         s1, s3, 672f
                  srl          t4, ra, a2
661:              add          s6, t0, tp
662:              and          s4, t0, t0
                  sltiu        sp, t4, 1125
                  bne          a5, a6, 672f
                  sll          t4, zero, a5
                  sra          s0, t5, tp
                  xor          sp, a4, tp
                  sltiu        tp, s6, -1133
                  bne          a7, t4, 677f
                  sltu         t3, ra, s8
671:              srl          s4, a4, ra
672:              sltu         s6, a1, s4
                  beq          t1, a1, 678f
674:              auipc        t1, 557652
                  srli         ra, tp, 14
                  blt          t1, t2, 682f
677:              slti         t3, s3, 427
678:              blt          s9, a1, 692f
                  addi         s10, a0, 1153
                  bne          s2, s8, 690f
                  bltu         a6, s5, 686f
682:              sub          sp, s10, s8
                  xori         s9, t6, 835
                  srl          zero, a4, t1
                  srl          s0, a1, s2
686:              xor          t4, t1, s8
                  ori          a3, t6, 1219
                  auipc        s1, 679648
                  nop
690:              xor          a7, s10, s0
                  srl          s6, t3, t2
692:              xor          zero, s0, a0
                  or           s5, a4, t2
                  sll          s10, a1, t5
                  blt          s4, gp, 708f
                  bge          a0, a0, 702f
                  and          t5, t5, a4
                  and          s4, t2, s7
                  beq          s11, zero, 701f
                  sltu         a3, t2, a6
701:              auipc        t5, 32257
702:              slli         s0, s0, 18
                  nop
                  srl          ra, s3, a4
                  slli         t5, a5, 20
                  sltiu        gp, s8, 185
                  bgeu         t5, a4, 721f
708:              slti         t3, s2, 134
                  nop
                  beq          t6, s3, 725f
                  lui          s5, 681003
                  addi         a7, a6, 1941
                  sll          s5, s10, a7
                  blt          a4, t2, 722f
                  auipc        s2, 937600
                  ori          a7, s11, -472
                  blt          t1, t1, 734f
                  bltu         s1, sp, 725f
                  auipc        t5, 812130
                  sltu         sp, t0, s6
721:              add          a3, a0, s10
722:              slli         tp, t6, 9
                  lui          s3, 54699
                  addi         s6, s7, 1481
725:              lui          t1, 234464
                  xori         a7, s0, 135
                  add          t5, s8, s6
                  andi         ra, s11, -786
                  xor          a4, a1, s8
                  andi         t4, s7, -1687
                  sra          sp, sp, s11
                  sltiu        t6, a6, -1529
                  xor          t1, a1, a1
734:              xori         s9, a0, -24
                  bltu         zero, t4, 736f
736:              srai         sp, s4, 12
                  srl          gp, s7, a2
                  sltu         s2, a2, s2
                  sra          s9, s9, a6
                  andi         a4, s6, 553
                  blt          s11, t0, 746f
                  xori         s9, s10, 1977
                  add          t4, t3, gp
                  addi         a3, ra, -1306
                  and          zero, s3, s3
746:              sll          gp, a7, t2
                  bne          t6, gp, 762f
                  sltiu        s7, a7, -1302
                  xori         a1, a0, -1666
                  andi         s2, gp, 1897
                  bltu         t6, s6, 767f
                  srli         s5, t5, 2
                  xor          s0, s4, tp
                  bgeu         s1, t6, 769f
                  beq          s1, a2, 758f
                  bgeu         a0, gp, 758f
                  sltu         s0, a0, a7
758:              srl          a4, s7, s7
                  sltu         s6, a4, a7
                  slli         s3, s0, 31
                  lui          a4, 639914
762:              bgeu         s1, s0, 772f
                  blt          s1, s10, 780f
                  sll          t5, a6, t6
                  bne          zero, a7, 785f
                  bgeu         s4, s9, 779f
767:              and          ra, s4, a3
                  addi         s11, a1, 101
769:              or           t1, s0, s2
                  andi         a1, t0, 1943
                  sltiu        s6, t4, -1991
772:              bge          t2, s10, 785f
                  bne          a4, s6, 776f
                  xori         a1, gp, 374
                  ori          tp, s8, -1192
776:              lui          s8, 193414
                  srai         t5, a7, 20
                  sltu         ra, a3, tp
779:              xori         t1, s10, -630
780:              bgeu         s9, gp, 790f
                  slli         zero, a2, 10
                  sll          t1, s0, t4
                  xori         t5, s5, -1412
                  and          zero, a7, gp
785:              bne          a1, s3, 800f
                  slti         ra, t0, -1216
                  blt          t4, tp, 800f
                  andi         t3, t2, -866
                  lui          t1, 307209
790:              sltu         ra, s11, tp
                  sltiu        s9, gp, -321
                  xori         a2, a3, 448
                  bltu         s0, t3, 800f
                  slli         t4, s2, 12
                  sltiu        s3, a0, -990
                  sll          t5, s8, s7
                  and          sp, tp, s9
                  add          s10, a2, a3
                  xori         gp, t6, 123
800:              srli         s2, a7, 26
                  la x5, test_done
                  jalr x0, x5, 0
test_done:        
                  li gp, 1
                  ecall
sub_3:            bgeu         zero, s10, sub_3_stack_p
                  sub          t4, a1, t4
                  addi         t5, a7, 1422
sub_3_stack_p:    addi         a5, a5, -60
                  sw           ra, 4(a5)
                  sltiu        s3, gp, -1013
                  ori          s3, a2, -1261
                  sltu         s1, t5, zero
                  srai         a0, s4, 3
                  addi         a7, a7, -1737
                  srli         t1, s9, 1
                  andi         s9, s8, -1817
                  slt          a7, s9, gp
                  bltu         tp, a2, 13f
                  srai         a2, t3, 14
                  sra          s3, t4, a1
                  sub          s11, s10, tp
                  bgeu         t3, a3, 17f
                  sltu         s9, a4, a1
                  beq          gp, t1, 13f
                  srai         s6, a5, 31
13:               auipc        s8, 710537
                  sltu         t2, s4, s0
                  sltiu        s8, s3, -1755
                  slt          tp, s0, sp
17:               sltiu        tp, a0, 1788
                  add          s5, zero, s4
                  or           s6, s0, a6
                  slt          s1, t5, s6
                  srai         s10, t1, 2
                  lw           ra, 4(a5)
                  auipc        a2, 514041
                  addi         a5, a5, 60
                  sll          a2, s7, tp
34:               addi x11, x1, 1
34:               jalr x11, x11, 0
sub_5:            sra          t5, s8, t4
                  or           tp, a3, s2
                  ori          t6, t5, 1502
                  andi         sp, a3, -529
                  addi         a5, a5, -32
                  sw           ra, 4(a5)
                  slt          t5, s7, zero
                  nop
                  addi         t1, zero, -8 #init loop 1 counter
                  addi         a0, zero, 16 #init loop 1 limit
sub_5_3_1_t:      and          sp, a2, zero
                  addi         t1, t1, 8 #update loop 1 counter
                  addi         s11, zero, -2 #init loop 0 counter
                  addi         t6, zero, 8 #init loop 0 limit
sub_5_3_0_t:      sltu         ra, a0, gp
                  addi         s11, s11, 10 #update loop 0 counter
                  beq          s11, t6, sub_5_3_0_t #branch for loop 0
                  bne          t1, a0, sub_5_3_1_t #branch for loop 1
                  nop
                  addi         a4, zero, -8 #init loop 0 counter
                  srli         a7, t2, 19
                  addi         s7, zero, -14 #init loop 0 limit
sub_5_8_0_t:      xor          s10, s1, s4
                  addi         a4, a4, -6 #update loop 0 counter
                  sra          s8, a2, s11
                  bne          a4, s7, sub_5_8_0_t #branch for loop 0
                  srl          a2, a6, t3
                  addi         t5, zero, 6 #init loop 0 counter
                  ori          a2, s8, -1454
                  sltiu        s4, s6, 1436
                  or           s1, t2, t0
                  addi         a0, zero, -14 #init loop 0 limit
sub_5_1_0_t:      ori          s8, s2, -1323
                  sra          a2, s3, t5
                  addi         t5, t5, -4 #update loop 0 counter
                  bne          t5, a0, sub_5_1_0_t #branch for loop 0
                  sub          t4, s2, t0
                  addi         s0, zero, -10 #init loop 1 counter
                  sub          zero, s1, a3
                  andi         s2, sp, -1304
                  addi         ra, zero, 3 #init loop 1 limit
                  nop
                  auipc        s11, 287010
                  srai         a7, a3, 23
sub_5_7_1_t:      sltiu        s7, s6, 618
                  addi         s0, s0, 3 #update loop 1 counter
                  sltiu        s7, sp, -1624
                  srli         gp, s0, 0
                  or           s6, t5, sp
                  addi         a1, zero, 5 #init loop 0 counter
                  sltu         t1, s5, s9
                  addi         a3, zero, 3 #init loop 0 limit
                  ori          a0, s6, -1236
sub_5_7_0_t:      sltiu        t2, s4, -828
                  lui          gp, 614036
                  addi         a1, a1, -1 #update loop 0 counter
                  srli         tp, s0, 13
                  sra          a0, tp, a0
                  xori         t2, s11, 1755
                  bgeu         a1, a3, sub_5_7_0_t #branch for loop 0
                  slti         a0, a1, -1910
                  nop
                  sub          s5, tp, s11
                  lui          s4, 872698
                  bltu         s0, ra, sub_5_7_1_t #branch for loop 1
                  sra          t6, s5, t2
                  addi         a2, zero, 1 #init loop 1 counter
                  sub          zero, a1, t1
                  sltiu        a0, a2, 1735
                  addi         s8, zero, -12 #init loop 1 limit
                  srai         s9, zero, 19
                  slti         s7, a7, 39
sub_5_0_1_t:      sub          s10, s4, s11
                  srl          s1, s0, sp
                  xori         zero, s6, 1927
                  addi         a2, a2, -1 #update loop 1 counter
                  addi         a7, zero, -7 #init loop 0 counter
                  sll          s6, gp, a0
                  slti         s0, s5, 1193
                  sltiu        s7, a2, -1047
                  srl          t3, zero, s5
                  addi         t5, zero, 19 #init loop 0 limit
                  sltiu        zero, s6, -1288
                  add          a0, s9, a0
sub_5_0_0_t:      slti         tp, t4, -713
                  addi         a7, a7, 4 #update loop 0 counter
                  slt          s3, zero, s11
                  blt          a7, t5, sub_5_0_0_t #branch for loop 0
                  and          t1, gp, t2
                  bne          a2, s8, sub_5_0_1_t #branch for loop 1
                  slli         ra, s2, 26
                  addi         ra, zero, -6 #init loop 1 counter
                  addi         sp, zero, 11 #init loop 1 limit
                  xor          s1, gp, t3
sub_5_5_1_t:      and          a4, t2, s1
                  addi         ra, ra, 8 #update loop 1 counter
                  addi         a2, zero, -3 #init loop 0 counter
                  sltiu        t3, s10, -672
                  addi         s0, zero, 2 #init loop 0 limit
sub_5_5_0_t:      auipc        t5, 740787
                  addi         a2, a2, 6 #update loop 0 counter
                  srai         s1, a3, 1
                  bltu         a2, s0, sub_5_5_0_t #branch for loop 0
                  lui          gp, 301507
                  bltu         ra, sp, sub_5_5_1_t #branch for loop 1
                  sll          a1, s7, s10
                  addi         t2, zero, 4 #init loop 1 counter
                  addi         tp, zero, -12 #init loop 1 limit
sub_5_2_1_t:      sltu         t3, s9, s3
                  addi         t2, t2, -8 #update loop 1 counter
                  srli         zero, a5, 5
                  sltu         s6, sp, t6
                  addi         s2, zero, -5 #init loop 0 counter
                  srli         t5, t3, 2
                  addi         t4, zero, 13 #init loop 0 limit
                  sra          s3, t3, t2
sub_5_2_0_t:      nop
                  addi         s2, s2, 10 #update loop 0 counter
                  slti         s7, t2, 1442
                  bltu         s2, t4, sub_5_2_0_t #branch for loop 0
                  srl          a7, zero, t6
                  bne          t2, tp, sub_5_2_1_t #branch for loop 1
                  sub          s11, gp, a6
                  addi         a3, zero, 4 #init loop 1 counter
                  addi         s3, zero, 17 #init loop 1 limit
sub_5_4_1_t:      sltu         a2, gp, a2
                  addi         a3, a3, 6 #update loop 1 counter
                  addi         a7, zero, 10 #init loop 0 counter
                  addi         s8, zero, -4 #init loop 0 limit
sub_5_4_0_t:      and          s6, s3, sp
                  addi         a7, a7, -7 #update loop 0 counter
                  beq          a7, s8, sub_5_4_0_t #branch for loop 0
                  blt          a3, s3, sub_5_4_1_t #branch for loop 1
                  slli         s5, tp, 23
                  addi         ra, zero, 0 #init loop 1 counter
                  srli         s7, t1, 10
                  addi         s3, zero, -20 #init loop 1 limit
                  slt          a0, s9, s7
sub_5_6_1_t:      or           s9, s8, s11
                  addi         t4, s0, 425
                  srl          s9, a7, a3
                  addi         ra, ra, -10 #update loop 1 counter
                  add          s0, ra, s9
                  addi         s1, zero, 7 #init loop 0 counter
                  slli         s7, tp, 0
                  and          t4, tp, s11
                  addi         s5, zero, 8 #init loop 0 limit
                  slti         zero, a5, -1420
                  xori         t2, s6, -1649
sub_5_6_0_t:      sltiu        s9, s11, -712
                  addi         s1, s1, 1 #update loop 0 counter
                  srai         s9, a3, 18
                  blt          s1, s5, sub_5_6_0_t #branch for loop 0
                  add          s11, a1, tp
                  add          a7, a2, ra
                  srli         a0, t5, 2
                  xor          tp, t5, s9
                  add          t1, a5, s0
                  slti         t6, s4, -918
                  srai         a2, t1, 15
                  slti         a2, a3, -1684
                  srl          t2, tp, a4
                  bne          ra, s3, sub_5_6_1_t #branch for loop 1
                  andi         s0, a1, 1125
                  slti         s4, s5, 1605
                  ori          a2, s1, -1056
                  ori          s11, t3, 1325
                  bne          t6, t6, 15f
                  addi         tp, s6, 472
                  sltiu        s4, a7, 1961
                  addi         s5, s9, -678
                  sra          t2, s11, t3
                  srl          a0, s5, a7
                  slti         s3, s7, -621
                  srai         a0, s1, 27
                  and          s4, t2, s5
                  auipc        t4, 258768
                  blt          a7, s3, 21f
                  srl          t1, s7, s10
15:               srai         tp, a5, 6
                  slt          t1, t5, s8
                  blt          a4, t0, 35f
                  srli         gp, a5, 18
                  slli         s11, s11, 29
                  sra          t6, s0, zero
21:               bgeu         s1, s11, 23f
                  bge          s9, s10, 31f
23:               srl          tp, s9, s7
                  sltiu        t2, s7, 1718
                  auipc        t6, 1047257
                  bgeu         s8, s4, 41f
                  or           tp, t6, s10
                  or           s0, a4, a4
                  bge          s0, a7, 47f
                  addi         a2, s7, 872
31:               sltiu        t4, a7, 1842
                  ori          s11, s9, 1764
                  andi         a3, s11, -993
                  slti         s2, tp, -1676
35:               auipc        s0, 556819
                  bltu         sp, t6, 52f
                  xor          s4, s1, t6
                  addi         a3, s9, -1959
                  srai         t4, t6, 11
                  slti         a1, s9, 425
41:               bge          t1, a6, 57f
                  auipc        s3, 941723
                  blt          s10, t3, 59f
                  or           a4, s2, s7
                  sltu         t1, t1, t5
                  and          s6, t4, a1
47:               slti         s2, s3, 2042
                  and          t3, t1, t5
                  blt          a3, a2, 66f
                  sll          sp, s5, s11
                  bge          sp, t3, 60f
52:               xor          t1, t1, t3
                  sub          ra, t2, s0
                  slt          a2, s8, t4
                  auipc        s5, 1005667
                  bge          t6, t2, 58f
57:               addi         t1, a0, 1412
58:               nop
59:               slli         t4, s9, 2
60:               blt          a1, a2, 77f
                  auipc        t4, 595283
                  srl          s7, a0, gp
                  auipc        s10, 632188
                  xor          s10, t0, s3
                  andi         t1, a4, -1841
66:               srli         zero, a6, 25
                  slt          s3, a0, a2
                  and          s7, a0, s9
                  auipc        a2, 137715
                  auipc        s4, 903146
                  xori         t5, t5, -374
                  slli         t3, a0, 31
                  sll          a3, s11, s2
                  xor          s2, s11, gp
                  bltu         s6, t3, 87f
                  nop
77:               xori         gp, a3, -378
                  add          tp, a2, a7
                  xori         a4, a6, -1098
                  bne          zero, t6, 85f
                  bgeu         s7, t6, 91f
                  auipc        s6, 784401
                  slti         a4, t0, 395
                  lui          t3, 846043
85:               xor          gp, s10, a3
                  add          s8, a3, a7
87:               sltiu        t1, sp, 889
                  nop
                  and          s2, t2, s4
                  sll          a2, zero, t5
91:               lui          s6, 579766
                  lui          s6, 419541
                  nop
                  and          t6, t2, t3
                  andi         a1, t3, 874
                  srai         zero, s5, 28
                  andi         a3, t4, 1192
                  beq          s0, ra, 112f
                  bgeu         ra, ra, 108f
                  ori          t6, s10, 1404
                  srli         a3, zero, 17
                  slli         s1, a5, 24
                  bge          s5, tp, 115f
                  blt          t3, s5, 117f
                  sll          t6, s3, t3
                  sra          t1, ra, t5
                  nop
108:              sra          s5, s10, a3
                  nop
                  xori         a1, ra, 1138
                  auipc        s9, 1006226
112:              beq          s1, gp, 131f
                  srai         s11, a0, 9
                  addi         s10, s4, -617
115:              nop
                  lui          t6, 659737
117:              sra          a2, t6, t4
                  add          t4, gp, a6
                  sra          s11, s8, s9
                  auipc        s9, 549416
                  bge          t5, s0, 136f
                  lui          t1, 922827
                  sra          t5, t1, s9
                  sltu         a3, a7, s5
                  srli         t5, s4, 17
                  slt          ra, s11, a5
                  nop
                  blt          a4, tp, 145f
                  blt          s7, s11, 137f
                  ori          t3, s9, 420
131:              slti         t3, a5, 1282
                  xori         s2, ra, 685
                  addi         a0, s2, -309
                  ori          zero, a5, 69
                  srl          t1, s0, tp
136:              slt          s0, t0, t2
137:              lui          t1, 45170
                  srli         a4, s3, 17
                  add          sp, s9, a2
                  sltu         t4, t0, t3
                  slt          s5, t3, gp
                  slt          a7, s4, a2
                  ori          t2, t2, -1575
                  auipc        t4, 673334
145:              xor          t5, a1, s4
                  slt          t1, s7, sp
                  slt          gp, s0, sp
                  srai         s6, t5, 0
                  slt          s4, a5, s8
                  sltu         s10, s4, t3
                  sub          a1, zero, s3
                  sltiu        t6, s1, 549
                  xor          a1, t4, a4
                  bgeu         a5, t2, 158f
                  or           s7, gp, t3
                  and          s7, a2, t2
                  and          t4, a2, s5
158:              andi         gp, s11, -11
                  blt          t1, tp, 171f
                  xori         sp, t3, 2031
                  slli         a1, t6, 25
                  bne          s3, a3, 182f
                  auipc        s7, 811323
                  sltu         gp, a3, a0
                  srai         a3, s6, 1
                  bgeu         t6, s8, 171f
                  sll          a0, zero, s8
                  sltu         t2, s0, t6
                  and          s0, s10, s7
                  sub          t4, s8, t3
171:              slti         s9, s2, 673
                  xor          t6, s2, t6
                  sub          a3, t2, s7
                  sll          s10, a7, a2
                  sltiu        s0, s8, 544
                  bne          t6, a0, 177f
177:              bltu         t4, s0, 179f
                  or           a4, s11, tp
179:              addi         s11, sp, 1847
                  bgeu         a5, a5, 196f
                  lui          t5, 372100
182:              bge          s9, s3, 198f
                  ori          gp, s8, 841
                  sltiu        a0, s2, 1398
                  slti         gp, zero, 1168
                  bgeu         s2, s9, 198f
                  or           s11, s9, t2
                  bne          s0, a7, 193f
                  blt          s8, s10, 201f
                  blt          t0, s4, 191f
191:              slti         a0, a5, -1115
                  bge          a2, s6, 201f
193:              xor          s4, t0, t0
                  add          s5, a0, a0
                  andi         a0, s0, 124
196:              and          s2, a2, zero
                  slt          gp, sp, t3
198:              bltu         a1, t5, 215f
                  ori          a1, a1, 1363
                  ori          t6, s6, 1404
201:              nop
                  ori          a1, tp, -1027
                  beq          sp, t2, 220f
                  and          a1, a0, t1
                  sll          t3, s9, a2
                  bge          t3, t2, 219f
                  beq          t3, t2, 223f
                  or           s7, sp, s8
                  xor          zero, a1, s8
                  andi         t6, zero, -184
                  addi         tp, t3, 552
                  or           t5, s11, gp
                  and          t6, a7, t0
                  sltu         t4, a6, s9
215:              blt          a4, a1, 233f
                  sra          t6, a6, s10
                  blt          a3, t0, 232f
                  xori         s3, s11, 1306
219:              sll          t2, t4, a3
220:              slt          s3, s4, s0
                  srl          a2, a0, s4
                  slti         ra, sp, 1191
223:              sub          s2, t1, s2
                  slli         s7, s9, 3
                  ori          s9, sp, -725
                  sub          a3, t2, zero
                  sub          s6, s8, s1
                  ori          s8, t3, -1947
                  slli         s5, a0, 29
                  and          s4, a0, a2
                  srl          s5, tp, t1
232:              sra          s5, a1, s8
233:              ori          s8, t6, 13
                  sltiu        a3, a0, 1770
                  bge          a3, s2, 243f
                  sra          s0, s2, a3
                  or           s0, a0, s2
                  beq          tp, t1, 252f
                  sra          a3, s9, t5
                  srli         s5, s5, 8
                  slti         t5, s5, 1950
                  nop
243:              nop
                  and          a2, t1, tp
                  srl          zero, a3, t4
                  srai         t1, s1, 4
                  lui          gp, 265862
                  or           s6, ra, gp
                  add          a1, s5, s4
                  auipc        a1, 605468
                  sltu         s6, t1, a4
252:              andi         t1, s11, 639
                  lui          a0, 361331
                  and          gp, sp, ra
                  srl          a2, s11, s10
                  auipc        sp, 585372
                  lui          s10, 475045
                  bltu         a1, t6, 260f
                  auipc        s10, 506843
260:              srli         s1, s6, 17
                  andi         gp, s1, 1781
                  auipc        s6, 818668
                  sltu         a4, t2, s3
                  bgeu         gp, s4, 273f
                  bltu         t1, s2, 269f
                  xori         tp, s3, 188
                  and          s9, s11, sp
                  bltu         s6, s10, 287f
269:              slli         s10, a1, 21
                  srl          zero, t0, s7
                  sra          t2, t1, t4
                  srai         s7, s8, 28
273:              ori          s8, zero, 1594
                  beq          s11, sp, 286f
                  srai         tp, a5, 10
                  bltu         s4, t4, 286f
                  bne          sp, t4, 285f
                  bge          a4, a7, 290f
                  or           tp, a5, zero
                  ori          a4, a3, -731
                  srl          s4, tp, s10
                  sll          s2, gp, s1
                  sub          t1, a0, t4
                  xor          tp, a0, a4
285:              and          s6, t4, a4
286:              srl          s7, a4, s7
287:              slti         t1, s4, 497
                  auipc        a2, 211414
                  addi         s9, t0, -347
290:              srl          s1, s9, s8
                  lui          s10, 459739
                  slti         t3, ra, -747
                  slti         a2, s8, -643
                  blt          s11, t6, 314f
                  andi         gp, ra, 924
                  bne          gp, ra, 311f
                  sra          s9, t3, a7
                  srli         sp, s7, 5
                  slti         ra, a7, 170
                  and          a4, a1, t4
                  beq          s7, a4, 319f
                  slli         s11, t3, 20
                  xori         s1, sp, 57
                  sll          tp, gp, t0
                  or           tp, a5, t2
                  slt          zero, a6, gp
                  slti         s4, zero, -1206
                  bge          s4, a4, 313f
                  add          t2, s6, t3
                  beq          a0, s3, 327f
311:              bge          s5, t2, 320f
                  ori          s9, t1, 891
313:              bgeu         s1, a2, 330f
314:              srl          s7, a1, zero
                  auipc        s4, 278328
                  xor          sp, t4, t6
                  sub          s8, a2, a2
                  srl          sp, t2, a1
319:              srli         s6, zero, 17
320:              srai         s0, s2, 17
                  sltu         gp, a0, a1
                  sub          gp, s11, s8
                  auipc        gp, 683190
                  and          t4, t1, ra
                  xor          s11, ra, a4
                  blt          t0, a6, 328f
327:              bltu         t6, a2, 337f
328:              blt          s5, a4, 337f
                  xor          a3, zero, s0
330:              slt          t4, t3, a3
                  sltiu        s5, s10, 856
                  srli         a3, tp, 19
                  addi         s7, gp, 1257
                  sltiu        s7, a1, -2043
                  sltu         a1, a1, zero
                  xor          t2, a4, s3
337:              sll          s3, a4, s10
                  sub          a7, s11, s11
                  ori          t3, a2, -912
                  ori          s1, t5, 927
                  bltu         s5, a3, 355f
                  sub          s11, s8, a4
                  auipc        t2, 982293
                  sll          t1, t4, t5
                  srli         a1, t2, 8
                  srli         sp, t3, 17
                  add          t6, a2, s11
                  bne          a0, t4, 365f
                  slti         a1, a0, 1950
                  blt          s1, tp, 355f
                  bne          a3, s9, 369f
                  sra          a7, t4, s4
                  srl          s8, s2, s1
                  sra          s3, t4, t1
355:              auipc        a4, 68660
                  ori          t3, s6, 1744
                  sltiu        s6, a2, -2020
                  bge          t2, t2, 367f
                  srai         t2, t3, 12
                  auipc        s3, 872143
                  sub          s4, t0, s2
                  addi         t1, s10, 1834
                  slt          t5, tp, s5
                  sra          a4, zero, a3
365:              slti         s1, s10, 991
                  sltiu        a1, s6, -701
367:              andi         s5, t2, -1924
                  andi         a1, t0, 728
369:              bne          a0, s7, 381f
                  sub          tp, t0, tp
                  addi         zero, a5, 130
                  bge          a4, gp, 392f
                  auipc        s4, 766720
                  xor          t1, s6, t1
                  lui          s2, 416443
                  andi         a4, t2, -477
                  xori         a2, t0, 1465
                  xor          t1, tp, t4
                  blt          a7, t3, 395f
                  srai         a2, s0, 15
381:              srai         t6, a0, 28
                  beq          a3, s9, 390f
                  addi         t3, s7, -1492
                  sltiu        s8, s8, 235
                  slli         t6, tp, 13
                  srai         a1, t0, 26
                  srl          zero, t6, t1
                  sra          s10, a7, t5
                  bgeu         t1, s3, 401f
390:              srai         tp, s6, 12
                  xor          s1, a0, s7
392:              blt          ra, s3, 393f
393:              bltu         s1, a4, 409f
                  beq          a6, s11, 412f
395:              bltu         a6, a2, 408f
                  sltu         s9, a2, t0
                  bltu         s11, ra, 401f
                  addi         a2, s3, 766
                  xori         t6, s9, 795
                  addi         a3, tp, 1393
401:              bge          s6, s6, 410f
                  xori         s9, a5, 1148
                  addi         a7, a3, -1154
                  sltu         s9, gp, a0
                  sltiu        a2, a0, -1596
                  sub          s0, gp, sp
                  nop
408:              sll          t6, tp, t0
409:              srai         a4, a6, 17
410:              bge          a7, s0, 418f
                  add          s11, s0, t3
412:              sltu         s9, a6, s5
                  srli         ra, s10, 13
                  sra          s8, s4, s0
                  xor          tp, tp, s1
                  andi         s9, tp, -222
                  nop
418:              blt          t3, s2, 435f
                  blt          t3, s5, 434f
                  slt          a1, s6, s7
                  beq          t6, a3, 433f
                  add          a2, t5, s9
                  slt          a7, s6, a5
                  sltu         s6, a6, tp
                  slti         t2, gp, 1146
                  addi         s1, a3, -1646
                  addi         s9, s10, -1667
                  blt          t2, a7, 444f
                  slti         t5, s1, 629
                  sltu         a0, t0, s4
                  sltu         a2, t2, s4
                  or           a7, t0, a6
433:              slli         s11, a6, 24
434:              bne          a3, t5, 446f
435:              or           t2, t3, t0
                  slti         zero, s9, 125
                  beq          a5, s5, 439f
                  bge          s2, s3, 450f
439:              beq          s5, zero, 444f
                  addi         s8, s9, 114
                  srl          a3, s5, a1
                  sltu         s7, s10, a2
                  nop
444:              or           a2, s1, a1
                  lui          s0, 988513
446:              blt          s9, s8, 450f
                  add          t5, t0, s1
                  addi         t1, s4, -825
                  sub          a7, s5, s2
450:              lui          a2, 503225
                  lw           ra, 4(a5)
                  xor          s2, s8, a7
                  slti         t6, a2, 74
                  addi         a5, a5, 32
                  sra          sp, a1, s3
620:              addi x1, x1, 1
620:              jalr x1, x1, 0
sub_4:            bge          a6, t3, sub_4_stack_p
                  andi         a3, s2, -1604
sub_4_stack_p:    addi         a5, a5, -36
                  and          s3, s10, t5
                  sltiu        sp, s11, 1167
                  sw           ra, 4(a5)
                  slt          t5, a1, a5
                  lui          s10, 724234
                  nop
                  srai         s10, gp, 8
                  addi         s7, zero, -8 #init loop 1 counter
                  srl          ra, zero, a6
                  addi         zero, s6, 1724
                  slti         t4, s9, -590
                  ori          a4, gp, -183
                  sub          zero, s0, a0
                  sll          s4, s8, t4
                  lui          s8, 735730
                  addi         t1, zero, 14 #init loop 1 limit
                  slli         a1, t5, 13
sub_4_6_1_t:      xor          zero, t1, ra
                  andi         s11, s3, 1123
                  andi         s6, ra, 2032
                  addi         a3, s9, 1140
                  ori          s6, s11, 233
                  addi         s7, s7, 3 #update loop 1 counter
                  addi         s2, zero, 4 #init loop 0 counter
                  sll          t4, s9, a4
                  addi         s3, zero, 9 #init loop 0 limit
                  and          s5, t4, s7
                  andi         s4, s11, 943
sub_4_6_0_t:      add          s4, s0, a5
                  andi         a3, a3, 1436
                  addi         s2, s2, 4 #update loop 0 counter
                  and          s4, s9, s4
                  bltu         s2, s3, sub_4_6_0_t #branch for loop 0
                  andi         a0, t1, 850
                  xor          s4, s3, a4
                  sra          a1, t3, s11
                  addi         s8, a2, 1885
                  bltu         s7, t1, sub_4_6_1_t #branch for loop 1
                  xori         s4, t0, 724
                  addi         s5, zero, -3 #init loop 0 counter
                  xori         s2, s7, -390
                  lui          sp, 887383
                  or           s3, s0, ra
                  srai         s4, a6, 9
                  nop
                  sll          s11, a1, a2
                  sltu         a0, zero, a5
                  sub          s9, gp, s8
                  or           sp, s4, t2
                  auipc        ra, 855488
                  srl          s2, a0, s3
                  addi         t3, zero, 13 #init loop 0 limit
                  xor          zero, tp, a0
                  auipc        t5, 440700
                  or           a0, t2, a2
                  and          a7, zero, a0
                  srli         gp, t2, 16
                  srai         s7, s6, 19
sub_4_4_0_t:      slt          s6, t5, t1
                  sltiu        zero, a6, -1894
                  sub          s2, s11, t5
                  srli         t2, s2, 25
                  addi         s5, s5, 2 #update loop 0 counter
                  sll          s3, a4, a1
                  xori         s8, s8, -374
                  blt          s5, t3, sub_4_4_0_t #branch for loop 0
                  and          zero, t6, t6
                  addi         s9, zero, -7 #init loop 0 counter
                  xor          t6, t5, s0
                  sra          tp, a1, s10
                  sub          gp, s5, s9
                  sub          s1, a6, t4
                  add          t1, s3, s6
                  sra          t4, a1, ra
                  srli         t3, zero, 11
                  xor          t2, s4, a7
                  or           s11, a0, zero
                  addi         sp, zero, -8 #init loop 0 limit
                  srai         t5, s7, 19
                  andi         s4, a6, -1478
                  sll          s3, sp, t2
sub_4_0_0_t:      sltu         t6, a6, s10
                  addi         a7, a6, -255
                  addi         s9, s9, -8 #update loop 0 counter
                  nop
                  add          a3, t2, a6
                  bge          s9, sp, sub_4_0_0_t #branch for loop 0
                  xor          s3, a2, t6
                  addi         a4, zero, 10 #init loop 0 counter
                  lui          s0, 728229
                  and          s0, s6, a7
                  sll          s6, s6, a1
                  lui          a2, 840635
                  addi         s10, zero, 8 #init loop 0 limit
                  xor          s1, s1, gp
                  andi         s3, s8, 340
                  slti         t4, s3, -522
                  lui          s11, 762179
                  srai         t1, a1, 8
                  lui          t3, 263838
sub_4_3_0_t:      and          ra, s5, s1
                  and          t5, a0, sp
                  addi         a4, a4, -7 #update loop 0 counter
                  add          t5, a7, t6
                  xor          s3, t0, a2
                  andi         s3, s11, -1318
                  lui          s5, 816978
                  sltiu        s5, a5, -1970
                  srl          a2, a1, s2
                  xor          t4, ra, a3
                  slli         s5, t2, 16
                  sltu         t1, sp, t5
                  bgeu         a4, s10, sub_4_3_0_t #branch for loop 0
                  nop
                  addi         s2, zero, -9 #init loop 1 counter
                  and          s4, tp, s5
                  addi         a7, zero, -18 #init loop 1 limit
sub_4_1_1_t:      sltu         s4, a0, a4
                  addi         s2, s2, -9 #update loop 1 counter
                  srli         ra, s1, 24
                  auipc        t6, 421082
                  addi         t5, zero, 6 #init loop 0 counter
                  lui          s9, 569381
                  addi         t2, zero, 9 #init loop 0 limit
sub_4_1_0_t:      or           s9, a5, s1
                  slli         a2, a5, 8
                  addi         t5, t5, 3 #update loop 0 counter
                  srai         s7, s2, 10
                  bltu         t5, t2, sub_4_1_0_t #branch for loop 0
                  srli         s7, t6, 31
                  sltu         s7, sp, ra
                  beq          s2, a7, sub_4_1_1_t #branch for loop 1
                  or           s6, t5, s10
                  addi         s10, zero, 10 #init loop 1 counter
                  xori         a4, a4, 732
                  addi         ra, s9, 2018
                  auipc        s0, 451151
                  auipc        sp, 639436
                  srl          a2, s5, t2
                  addi         s5, zero, 9 #init loop 1 limit
sub_4_2_1_t:      ori          a2, a0, 1
                  slli         a7, t4, 3
                  addi         s10, s10, -8 #update loop 1 counter
                  srl          s2, zero, s3
                  addi         s1, zero, -8 #init loop 0 counter
                  sltu         t6, tp, a6
                  addi         t1, zero, 7 #init loop 0 limit
                  and          zero, tp, s7
sub_4_2_0_t:      andi         t3, s0, 1305
                  addi         s1, s1, 5 #update loop 0 counter
                  slti         s11, s3, -1644
                  beq          s1, t1, sub_4_2_0_t #branch for loop 0
                  slli         s2, a0, 28
                  andi         s7, s9, 1647
                  auipc        s6, 181904
                  lui          t5, 606056
                  slt          s11, sp, t4
                  bgeu         s10, s5, sub_4_2_1_t #branch for loop 1
                  lui          a7, 791028
                  bge          gp, s7, 8f
                  sra          s5, s11, s3
                  bge          s5, t1, 8f
                  bgeu         s5, s0, 11f
                  sltiu        ra, a6, -499
                  bge          s4, s9, 6f
6:                sltiu        s2, s3, -1876
                  bge          a4, t5, 20f
8:                xori         ra, a4, -1979
                  bgeu         t2, ra, 23f
                  slli         s5, tp, 29
11:               slti         ra, t2, -1428
                  lui          s11, 194701
                  xori         a0, s11, 897
                  add          t2, t5, t1
                  slli         zero, ra, 11
                  sub          s0, a3, s10
                  sub          s8, a3, tp
                  auipc        t1, 825493
                  add          t6, ra, s7
20:               lui          s9, 1025708
                  slti         s1, s9, -1298
                  bge          t5, a4, 34f
23:               nop
                  bgeu         gp, t5, 25f
25:               sub          s2, a6, a3
                  bgeu         s5, t1, 30f
                  sltu         ra, t5, s9
                  beq          gp, zero, 35f
                  sltu         s0, s1, a6
30:               srli         t4, a6, 25
                  ori          s10, s5, -1257
                  and          gp, a7, t2
                  andi         zero, tp, -648
34:               slt          s0, zero, zero
35:               sll          t1, s9, a6
                  add          zero, s0, t0
                  blt          tp, a0, 53f
                  and          tp, s0, a1
                  addi         s10, a1, -455
                  andi         s8, t6, -1904
                  blt          a1, ra, 42f
42:               ori          a0, gp, 461
                  ori          a1, s3, 225
                  bgeu         s11, s7, 61f
                  or           t6, sp, tp
                  slli         t2, ra, 14
                  slli         t4, zero, 30
                  lui          tp, 853598
                  add          a3, a2, s9
                  bge          s3, ra, 62f
                  bge          a3, a4, 70f
                  bgeu         t0, t2, 56f
53:               andi         s0, a0, 2006
                  sltu         t6, s10, t5
                  or           s6, t3, s8
56:               slli         s0, sp, 19
                  xori         gp, s11, -1187
                  andi         t2, gp, 1963
                  sub          a7, s2, s6
                  xor          t6, s7, t0
61:               srl          s6, zero, sp
62:               sltiu        s4, a2, 1695
                  xori         t6, s3, -1021
                  bltu         s8, s11, 71f
                  addi         s7, s3, 1214
                  sltu         a7, zero, sp
                  beq          t4, s5, 73f
                  slti         s9, t5, 1721
                  blt          sp, s4, 89f
70:               auipc        s4, 449450
71:               beq          t0, s6, 77f
                  sltiu        s8, gp, -1668
73:               add          sp, t1, s9
                  slli         a7, a1, 26
                  beq          s11, t6, 94f
                  addi         t1, t6, -833
77:               beq          s9, a7, 93f
                  lui          s0, 995494
                  srli         s8, s3, 22
                  sub          s6, gp, gp
                  xori         s8, s9, 1977
                  sltiu        t5, s5, -1013
                  ori          sp, a4, -1222
                  beq          a0, a5, 95f
                  xor          s3, tp, s3
                  slt          s0, t4, s5
                  srai         t1, s8, 25
                  srl          s11, ra, s6
89:               sra          tp, t4, zero
                  nop
                  lui          s3, 523387
                  addi         a2, s10, 1333
93:               auipc        s2, 938578
94:               slti         s0, zero, -1321
95:               lui          t5, 69648
                  addi         zero, t5, -98
                  xor          s11, s11, t3
                  blt          s4, s6, 99f
99:               nop
                  or           a7, sp, a5
                  xor          s1, s3, zero
                  xor          s11, s0, t0
                  sltiu        s11, a0, -803
                  nop
                  xori         a0, s10, 1664
                  sub          s5, a1, gp
                  andi         zero, gp, -1972
                  slli         t2, t4, 19
                  srl          s5, a5, s6
                  blt          tp, s1, 116f
                  blt          s8, s0, 119f
                  slti         gp, a2, -277
                  addi         s6, a0, 1160
                  sra          t1, sp, a3
                  beq          s10, s10, 128f
116:              bltu         s9, t0, 127f
                  beq          t1, t3, 125f
                  andi         t6, t2, 1073
119:              blt          s8, a1, 120f
120:              srl          t3, s4, tp
                  slt          s5, t2, s1
                  nop
                  sub          t5, s5, a4
                  slti         s8, a6, 669
125:              sll          s4, t6, a6
                  auipc        t3, 288895
127:              lui          s0, 795109
128:              srl          s10, s3, s8
                  or           a2, t1, s10
                  bne          a6, s5, 149f
                  slli         s8, zero, 22
                  sltu         s4, s5, t0
                  srai         zero, a2, 14
                  bge          a2, ra, 142f
                  sub          a2, t3, a1
                  srai         s3, s11, 27
                  srli         s5, s11, 26
                  xori         t5, t4, 1373
                  blt          a1, s6, 147f
                  xori         s6, gp, 1903
                  or           zero, s7, a0
142:              xori         s1, a2, -272
                  srai         sp, a2, 31
                  nop
                  bgeu         t3, s1, 153f
                  blt          s5, a1, 150f
147:              sub          a3, a0, t6
                  slt          a0, s2, s9
149:              sll          tp, t1, a3
150:              srl          s9, s8, zero
                  sll          a0, t4, a3
                  sra          s4, s10, t2
153:              andi         tp, a1, 1858
                  sltu         s11, s3, s2
                  bne          t4, s3, 162f
                  slli         s6, a0, 12
                  and          s7, s10, a7
                  xori         a3, s4, 1800
                  nop
                  bge          s11, tp, 180f
                  ori          sp, a2, -94
162:              ori          a0, sp, 300
                  and          s6, tp, a4
                  bgeu         a7, gp, 176f
                  blt          s11, tp, 171f
                  sub          s6, a1, a2
                  slli         a0, s8, 6
                  bne          a5, s3, 181f
                  slti         a3, s11, 531
                  addi         a4, s10, 1154
171:              slt          a3, s7, a1
                  bne          a5, tp, 173f
173:              bltu         t1, s8, 179f
                  lui          a1, 1028975
                  srai         a4, t3, 29
176:              beq          tp, t5, 193f
                  add          a3, t5, s0
                  bne          t5, a6, 192f
179:              srai         s1, s4, 30
180:              bltu         t0, tp, 191f
181:              and          t6, a1, ra
                  slt          sp, a2, a6
                  sltiu        t5, a0, -1462
                  srai         s8, t3, 21
                  slt          s7, a2, s3
                  slt          t2, s8, s10
                  slli         s3, s6, 12
                  or           sp, gp, gp
                  slti         s7, s11, 774
                  bgeu         t3, gp, 191f
191:              slli         a7, a5, 11
192:              xori         zero, t5, -1630
193:              lui          s11, 746994
                  bgeu         t5, s1, 210f
                  sub          s4, s7, t3
                  sra          t3, a7, s0
                  auipc        t1, 103609
                  bgeu         t0, a6, 206f
                  slli         s3, a5, 8
                  slt          t3, s1, tp
                  sltiu        a7, a1, 1384
                  srai         a7, s2, 18
                  beq          s1, a2, 219f
                  bltu         t1, s3, 205f
205:              sll          s7, a1, a2
206:              srli         t5, s9, 21
                  srl          a2, zero, t0
                  nop
                  slti         s2, t4, -208
210:              srli         t1, zero, 2
                  srl          ra, t0, s10
                  bne          s11, t3, 216f
                  and          a1, t1, s2
                  srai         zero, a1, 15
                  sltiu        t4, ra, 1674
216:              beq          t5, a5, 223f
                  beq          s11, a3, 228f
                  and          t3, a2, a0
219:              sll          a7, tp, t1
                  blt          sp, s0, 239f
                  nop
                  andi         t1, a6, -4
223:              slti         a0, a4, -1311
                  lui          s9, 1044473
                  bge          t0, a1, 238f
                  or           zero, s0, ra
                  and          s10, s9, t1
228:              srl          t3, s0, t1
                  slt          ra, t5, s11
                  slt          s3, s9, s2
                  andi         s1, s11, -902
                  or           s4, s9, s10
                  sll          t2, t2, t5
                  lui          s5, 141067
                  bltu         t1, s1, 241f
                  sltiu        s1, t0, -95
                  bne          a1, a1, 238f
238:              and          a7, a7, s1
239:              lui          zero, 49201
                  add          a7, t2, t6
241:              lui          t4, 655645
                  sltiu        s1, s0, 636
                  bgeu         gp, a3, 244f
244:              bne          zero, s2, 256f
                  auipc        ra, 813738
                  slt          a0, a0, t3
                  lui          s5, 844204
                  srai         s10, zero, 14
                  xori         t5, t2, 458
                  slt          s3, s2, s7
                  bge          a7, s7, 257f
                  bgeu         t2, s1, 260f
                  addi         a2, s11, 969
                  bgeu         a4, s10, 258f
                  slti         t3, s9, -1030
256:              xor          a1, tp, s2
257:              blt          s6, s11, 258f
258:              and          s2, a2, s6
                  bne          t6, s11, 265f
260:              sra          s4, s10, s3
                  and          t4, a5, tp
                  beq          a4, s5, 268f
                  bge          zero, a7, 275f
                  nop
265:              srl          s9, s0, ra
                  sltu         a3, gp, s0
                  auipc        s8, 178307
268:              slti         t3, s10, -101
                  nop
                  auipc        a1, 968348
                  auipc        t6, 323351
                  bge          s5, zero, 283f
                  blt          s1, s4, 289f
                  auipc        s10, 679306
275:              addi         s8, s7, -1583
                  slli         s2, s6, 3
                  andi         s5, a6, 890
                  andi         t5, a3, 618
                  srai         s9, tp, 17
                  bltu         t1, s7, 281f
281:              ori          t3, s7, -1599
                  sub          s9, a1, s1
283:              andi         s10, sp, -1567
                  ori          a4, tp, 1080
                  add          s9, a3, t0
                  slt          a7, a4, t5
                  sll          a2, s4, s6
                  slli         t4, a5, 9
289:              bgeu         s11, ra, 301f
                  bge          s2, s11, 291f
291:              nop
                  add          gp, s10, a4
                  ori          t4, a5, -469
                  bne          a0, a1, 310f
                  sltiu        s2, s2, 1738
                  ori          a1, t4, 313
                  bge          s1, s0, 308f
                  slti         a4, s6, -548
                  or           s3, s6, s2
                  beq          gp, s1, 307f
301:              and          t6, tp, a5
                  slli         s3, gp, 23
                  srl          s3, s1, a4
                  beq          s2, a0, 312f
                  blt          s11, ra, 313f
                  addi         s0, s1, -2009
307:              sltu         s4, s6, s7
308:              sra          s7, s1, zero
                  addi         s1, a7, -1763
310:              blt          a4, tp, 327f
                  srai         s8, s10, 14
312:              sltiu        tp, s4, 567
313:              blt          a3, s0, 319f
                  slli         t4, s5, 26
                  bge          a6, s3, 335f
                  addi         s7, s11, -365
                  sll          s3, t0, t0
                  srl          s2, s10, s2
319:              bltu         a1, t0, 332f
                  srli         s9, t3, 28
                  sll          s7, a5, t5
                  srli         t3, t6, 21
                  slli         sp, s3, 6
                  and          s4, s11, s7
                  addi         a1, s5, -559
                  slli         s7, a0, 3
327:              xori         s5, s7, -1150
                  bgeu         s1, t4, 341f
                  and          s4, a5, t5
                  bne          a7, tp, 337f
                  sltu         s4, s7, t3
332:              srli         ra, t3, 18
                  xor          zero, ra, t4
                  slli         a3, a4, 7
335:              nop
                  auipc        t4, 892285
337:              lui          gp, 867300
                  andi         s8, gp, -1083
                  bge          t1, tp, 347f
                  nop
                  addi         t2, zero, -3 #init loop 1 counter
                  addi         s6, zero, -1 #init loop 1 limit
sub_4_5_1_t:      slt          s8, s6, s8
                  addi         t2, t2, 5 #update loop 1 counter
                  sltiu        t6, s10, -1886
                  addi         t4, zero, -3 #init loop 0 counter
                  addi         a3, zero, 7 #init loop 0 limit
sub_4_5_0_t:      ori          a1, a7, -1352
                  addi         t4, t4, 9 #update loop 0 counter
                  bltu         t4, a3, sub_4_5_0_t #branch for loop 0
                  blt          t2, s6, sub_4_5_1_t #branch for loop 1
                  and          t6, s5, t2
341:              addi         t3, a4, -258
                  beq          s0, zero, 343f
343:              ori          a0, s9, 1532
                  sub          sp, t4, a6
                  bgeu         sp, a6, 349f
                  andi         s10, s10, -291
347:              sltu         t1, s5, t6
                  bgeu         s11, t4, 367f
349:              and          t3, s4, s7
                  add          gp, a5, a7
                  slli         a4, a5, 26
                  addi         a0, ra, 231
                  bne          t4, a3, 367f
                  bge          gp, a1, 355f
355:              sltu         s11, a7, s0
                  blt          a0, t4, 373f
                  nop
                  sub          s3, zero, s7
                  ori          sp, a1, -873
                  sll          zero, a7, s5
                  sub          s1, t5, a3
                  or           t3, s5, a2
                  bltu         a1, s10, 369f
                  beq          tp, s4, 371f
                  nop
                  srl          ra, a3, a4
367:              bne          s6, a0, 373f
                  bne          t5, a5, 373f
369:              slt          gp, a5, s7
                  and          s11, a2, a6
371:              or           t6, s2, tp
                  bgeu         a3, s11, 373f
373:              xor          zero, a2, a6
                  lw           ra, 4(a5)
                  slli         t6, a1, 20
                  lui          a7, 114272
                  addi         s4, a2, -978
                  or           s9, t6, t0
                  slti         t3, s3, -560
                  andi         s4, s4, -1778
                  slli         s0, s7, 4
                  ori          s11, s7, -1143
                  addi         a5, a5, 36
                  sltu         t3, a5, s11
559:              addi x18, x1, 1
559:              jalr x18, x18, 0
sub_1:            sltiu        s11, t5, 1474
                  beq          a6, t1, sub_1_stack_p
                  srl          t6, s11, ra
sub_1_stack_p:    addi         a5, a5, -16
                  sw           ra, 4(a5)
                  auipc        t3, 35988
                  or           s10, a4, sp
                  srai         t4, s4, 9
                  la           a1, sub_5
                  ori          tp, s1, -141
                  srl          gp, t1, s11
                  add          s8, s3, s4
                  sra          s4, tp, t1
                  srli         s4, t5, 9
                  slti         t3, s5, -986
                  sltiu        s4, s4, 439
                  addi         a1, a1, 265
                  and          ra, a6, a3
sub_1_j3:         jalr         ra, a1, -264 #jump sub_1 -> sub_5
                  slt          tp, s11, s3
                  la           a2, sub_2
                  or           gp, s5, tp
                  xori         s8, a4, -1363
                  addi         a2, a2, -609
                  srl          s10, s1, s1
                  srli         s5, a0, 12
                  bgeu         s9, t0, sub_1_j4 #branch to jump instr
                  ori          s0, t5, 1914
                  andi         t1, s7, 1865
                  sra          a3, t4, s1
sub_1_j4:         jalr         ra, a2, 609 #jump sub_1 -> sub_2
                  or           s7, s0, s4
                  lui          t4, 126276
                  auipc        t6, 417055
                  and          s10, t1, a7
                  add          s0, ra, t0
                  add          s5, a2, s10
                  bgeu         s8, gp, sub_1_j6 #branch to jump instr
                  slti         zero, t4, 1919
                  slt          s10, s1, a3
                  sra          gp, a1, t5
sub_1_j6:         jal          ra, sub_4 #jump sub_1 -> sub_4
                  addi         s0, zero, -6 #init loop 1 counter
                  slli         t1, s2, 29
                  srai         a7, a6, 28
                  xori         s9, s4, -726
                  addi         a2, zero, 15 #init loop 1 limit
                  andi         a0, t4, 1621
sub_1_3_1_t:      slt          t3, s9, s11
                  addi         tp, s6, 373
                  slt          s1, t4, sp
                  auipc        s9, 121388
                  addi         s0, s0, 7 #update loop 1 counter
                  addi         s4, zero, -3 #init loop 0 counter
                  xori         gp, s4, 1858
                  addi         s11, zero, 17 #init loop 0 limit
                  slt          t3, s1, t2
sub_1_3_0_t:      slt          s3, s1, t4
                  srl          s3, sp, s4
                  addi         s4, s4, 10 #update loop 0 counter
                  addi         s6, s3, 831
                  xor          t6, ra, s8
                  beq          s4, s11, sub_1_3_0_t #branch for loop 0
                  sll          s10, s4, t6
                  and          gp, zero, t6
                  blt          s0, a2, sub_1_3_1_t #branch for loop 1
                  and          t1, s7, s9
                  addi         t6, zero, 6 #init loop 0 counter
                  ori          s4, a5, 628
                  ori          t1, tp, 1701
                  srli         t4, sp, 14
                  srai         t1, s5, 26
                  srli         t4, gp, 13
                  srai         t2, gp, 27
                  add          a3, t3, s11
                  or           s1, a2, a4
                  srl          gp, s11, a7
                  addi         tp, zero, 2 #init loop 0 limit
                  or           s0, a1, s10
                  add          s0, a3, a0
                  or           s0, t1, gp
sub_1_4_0_t:      nop
                  xori         a0, s11, -1131
                  addi         t6, t6, -4 #update loop 0 counter
                  srli         s3, t5, 17
                  slt          a7, a4, s8
                  or           s2, t3, gp
                  auipc        s2, 868499
                  ori          s10, s4, 1294
                  ori          s0, a0, 1020
                  bne          t6, tp, sub_1_4_0_t #branch for loop 0
                  or           s4, t6, a4
                  addi         t4, zero, -6 #init loop 0 counter
                  addi         s0, t2, -1286
                  addi         s10, zero, 8 #init loop 0 limit
                  srl          gp, a3, tp
sub_1_0_0_t:      nop
                  auipc        s9, 124623
                  sltiu        s3, s10, 943
                  addi         t4, t4, 1 #update loop 0 counter
                  sub          s2, t4, t1
                  xor          sp, s11, s1
                  blt          t4, s10, sub_1_0_0_t #branch for loop 0
                  sra          s11, a6, t4
                  addi         s11, zero, -5 #init loop 0 counter
                  and          t1, a5, t2
                  addi         s7, zero, -12 #init loop 0 limit
                  sub          gp, a6, a2
                  slt          gp, a0, a1
                  srai         s4, a1, 25
                  slti         s2, a5, -263
                  nop
                  sra          t4, a4, a1
sub_1_1_0_t:      add          sp, gp, a7
                  addi         s11, s11, -9 #update loop 0 counter
                  sltu         a7, t1, tp
                  srl          s2, s7, s11
                  ori          a1, tp, 858
                  lui          sp, 659942
                  or           s5, a4, a5
                  auipc        gp, 774102
                  sltiu        s0, tp, -1265
                  sltu         a3, s6, t2
                  bge          s11, s7, sub_1_1_0_t #branch for loop 0
                  sll          s5, t4, a7
                  addi         s8, zero, 4 #init loop 1 counter
                  sll          s0, a2, s4
                  addi         t3, zero, 4 #init loop 1 limit
sub_1_2_1_t:      ori          t5, t3, 2042
                  addi         s8, s8, -3 #update loop 1 counter
                  addi         t4, zero, 9 #init loop 0 counter
                  srai         sp, a4, 26
                  addi         s11, zero, 15 #init loop 0 limit
                  srai         s9, a6, 22
                  auipc        t2, 769980
                  or           t2, a7, t0
sub_1_2_0_t:      sltu         s2, t4, t3
                  addi         t4, t4, 6 #update loop 0 counter
                  srl          sp, tp, a2
                  bne          t4, s11, sub_1_2_0_t #branch for loop 0
                  srl          zero, s3, a4
                  sltu         tp, s6, s2
                  slt          ra, s9, tp
                  sra          s10, s5, s3
                  bgeu         s8, t3, sub_1_2_1_t #branch for loop 1
                  srli         a4, t1, 17
                  blt          a0, s0, 11f
                  xor          s1, a7, s9
                  slti         s8, t2, -1926
                  ori          s6, s2, 1362
                  srl          a7, s7, a3
                  andi         a7, tp, 556
                  bge          a0, a3, 26f
                  sub          s1, s6, a5
                  sra          s2, s5, s6
                  beq          a1, t5, 22f
                  and          tp, s7, a6
11:               and          a7, t6, a0
                  lui          s10, 709901
                  slt          s0, s11, tp
                  ori          s1, ra, 905
                  bgeu         s0, s10, 21f
                  srli         a7, a4, 23
                  srli         ra, zero, 10
                  xori         a0, tp, 1008
                  bltu         a4, sp, 22f
                  addi         t3, t1, 1659
21:               bgeu         a7, s1, 38f
22:               sra          s2, s8, sp
                  slti         t2, a7, 952
                  xori         s1, s8, 1525
                  srai         t5, tp, 30
26:               auipc        s8, 690985
                  nop
                  andi         s4, t3, 123
                  slt          a3, s0, t3
                  srai         zero, s6, 1
                  srl          s11, t5, t4
                  bgeu         s8, s5, 44f
                  srl          a1, tp, gp
                  lui          s9, 909568
                  andi         t4, s9, 645
                  beq          a6, tp, 44f
                  ori          t6, a2, 148
38:               sra          s8, tp, s11
                  bge          t0, t2, 59f
                  lui          t5, 981085
                  slt          s11, t2, ra
                  sll          a3, gp, s11
                  sub          s11, t1, s2
44:               lui          t1, 130625
                  lui          s10, 128572
                  srai         s1, s4, 27
                  auipc        a7, 307248
                  srai         t1, t3, 21
                  xor          s8, a6, s4
                  sub          ra, s5, ra
                  la           s9, sub_3
                  sll          s3, ra, s5
                  addi         s9, s9, -173
                  and          a7, s11, ra
                  xori         zero, s2, -336
sub_1_j5:         jalr         ra, s9, 173 #jump sub_1 -> sub_3
                  addi         t3, tp, 304
                  andi         t2, a4, -1074
                  srl          s5, a2, gp
                  nop
                  xor          a1, a2, ra
                  blt          t1, s5, 67f
                  andi         t2, a0, -1397
                  ori          s3, s7, -869
                  beq          t5, a2, 74f
                  xori         a4, t6, -1175
                  xor          tp, ra, s8
                  and          s0, t3, a4
                  sll          ra, s0, t6
59:               nop
                  bge          t0, t3, 64f
                  slt          t1, a0, a2
                  lui          s6, 496416
                  bge          s3, t2, 75f
64:               sub          gp, zero, s0
                  xori         s5, a5, -1187
                  blt          s6, zero, 73f
67:               andi         s4, s2, -1489
                  bltu         s7, s6, 78f
                  srai         t3, s1, 31
                  ori          a3, s5, -1380
                  bne          ra, ra, 74f
                  add          s11, s9, s7
73:               and          a7, t5, s7
74:               or           t6, t3, s3
75:               sll          s4, gp, t1
                  sltu         a4, zero, s2
                  ori          s2, a0, -2016
78:               xor          s9, a7, a6
                  slt          gp, a0, s0
                  sltu         s5, a4, ra
                  nop
                  sra          a1, a7, t4
                  srli         s1, a7, 16
                  nop
                  sltu         a2, t6, s4
                  sll          a4, zero, a2
                  bge          sp, a0, 91f
                  bgeu         t6, t4, 99f
                  andi         tp, sp, 1748
                  addi         a7, s11, 1391
91:               addi         t1, t0, -1560
                  sra          t3, a2, s4
                  beq          a5, a1, 110f
                  slt          t3, ra, t5
                  and          t6, a3, t4
                  addi         a7, zero, 1856
                  lui          s8, 312591
                  lui          tp, 343403
99:               sra          s8, gp, s7
                  auipc        s8, 247821
                  blt          t4, tp, 119f
                  ori          s3, s6, 1365
                  lui          s6, 832454
                  srl          s11, ra, t3
                  slti         sp, s8, -1406
                  srai         t3, s1, 29
                  beq          s9, ra, 126f
                  srli         sp, s4, 30
                  bne          t3, t1, 110f
110:              addi         ra, s7, -1335
                  slt          gp, t3, s3
                  lui          sp, 137942
                  bgeu         t4, t3, 116f
                  lui          s10, 962964
                  and          s0, a5, tp
116:              bltu         t5, a5, 117f
117:              addi         s5, s0, 421
                  beq          s5, t4, 123f
119:              xor          s11, s3, zero
                  andi         s9, zero, -38
                  lui          t1, 894196
                  xori         s10, a2, -394
123:              or           s3, a6, t2
                  lui          t4, 392411
                  slti         sp, a6, -559
126:              slt          tp, sp, a7
                  blt          s4, zero, 128f
128:              bltu         a7, s1, 145f
                  nop
                  slti         s4, s4, -1603
                  and          s1, s2, a3
                  blt          gp, a6, 140f
                  slli         s2, t2, 29
                  add          sp, s5, t5
                  add          s11, s6, a6
                  sltu         s10, a7, a0
                  sll          t6, t4, s4
                  sll          ra, a4, a7
                  xor          a0, s0, s2
140:              nop
                  blt          a3, t5, 146f
                  sltiu        s1, s2, -1080
                  ori          a2, t4, -1319
                  sltiu        tp, s5, 1495
145:              xori         a3, gp, -959
146:              nop
                  slti         s0, t6, -1492
                  bltu         gp, a0, 168f
                  auipc        ra, 403432
                  blt          t3, s4, 160f
                  and          s5, t4, s8
                  lui          a0, 232248
                  or           t2, a2, zero
                  addi         t6, a5, -1164
                  sub          s3, s9, a1
                  slti         s5, gp, 889
                  nop
                  lui          s0, 223395
                  bltu         tp, a6, 178f
160:              bltu         s6, t4, 180f
                  bgeu         a2, s3, 162f
162:              srai         gp, a1, 28
                  auipc        a1, 538652
                  beq          zero, a3, 168f
                  sltiu        s7, t1, 1324
                  bne          t3, s5, 171f
                  srli         a3, t2, 28
168:              sltiu        tp, s6, -163
                  sll          a0, sp, s7
                  slli         s6, t5, 2
171:              sltiu        a7, a6, 1854
                  lui          t5, 148580
                  beq          s11, zero, 184f
                  bgeu         a0, s6, 177f
                  or           s7, t4, s9
                  sll          t2, s7, a1
177:              nop
178:              bgeu         s2, t5, 182f
                  or           t4, t1, s8
180:              slti         t6, s9, 287
                  sra          a2, t1, a7
182:              ori          s4, s2, 1524
                  blt          tp, s7, 184f
184:              xori         t6, a3, -1023
                  and          a2, ra, a3
                  bge          t6, t0, 189f
                  andi         s8, t1, 211
                  sra          t4, t5, s9
189:              slti         t6, t0, 820
                  bgeu         a4, t6, 196f
                  and          s0, s3, s9
                  addi         sp, zero, -930
                  bgeu         s8, t2, 210f
                  slli         a2, s5, 31
                  auipc        a7, 277315
196:              sra          gp, ra, zero
                  blt          a6, sp, 209f
                  slti         a4, ra, -980
                  sra          t1, t0, s0
                  slli         t6, s8, 5
                  beq          s3, t2, 213f
                  srl          s7, a3, a5
                  sltu         gp, t6, t0
                  sra          t6, t5, s11
                  sltiu        s7, s10, 999
                  and          ra, a2, zero
                  sltiu        t4, t2, -521
                  slti         s5, a5, 1605
209:              and          a4, s7, t2
210:              or           a3, s0, a4
                  add          tp, a6, a7
                  ori          t1, t3, -1938
213:              xor          s2, a4, t4
                  slli         t4, s11, 31
                  slt          s7, s2, t6
                  andi         s8, a3, 561
                  auipc        s9, 212330
                  bltu         tp, s3, 226f
                  lui          a2, 419640
                  sll          a0, a6, s6
                  beq          gp, s3, 226f
                  xori         gp, a1, 20
                  sltu         a2, s0, tp
                  slt          s8, t1, ra
                  sra          a1, t2, s11
226:              or           s2, s9, s1
                  addi         ra, ra, -885
                  slli         sp, a7, 20
                  and          s9, t0, t0
                  andi         s4, ra, -687
                  bne          s4, t3, 232f
232:              or           tp, a7, a6
                  beq          s6, s7, 253f
                  bge          t2, t2, 250f
                  bgeu         t0, s2, 255f
                  ori          sp, s6, -624
                  nop
                  xor          s7, a6, t6
                  bltu         s10, t6, 247f
                  sltiu        t6, s6, -1007
                  slt          s4, s0, sp
                  sra          t4, s3, s2
                  auipc        s1, 249465
                  sub          t1, a6, t6
                  ori          t5, s4, -1527
                  addi         gp, t3, 996
247:              and          a0, a6, a5
                  sll          s0, s3, s9
                  srl          s2, s2, s8
250:              and          tp, t2, s7
                  andi         a1, t3, 2029
                  and          a0, s11, a7
253:              sltiu        a4, s9, 997
                  srl          s0, s4, t2
255:              nop
                  bgeu         t5, t1, 260f
                  andi         a3, s2, 1169
                  sub          a3, a1, s10
                  slt          a3, a7, s9
260:              or           t3, s1, t1
                  lw           ra, 4(a5)
                  slli         s6, a2, 19
                  add          s5, a2, a3
                  andi         s3, sp, -1646
                  ori          t3, s3, 300
                  lui          sp, 852872
                  slti         gp, s1, 1504
                  addi         a5, a5, 16
                  xori         s7, a2, 1969
                  sltiu        t6, s11, 635
                  slli         tp, a6, 13
                  srli         gp, t0, 2
430:              addi x12, x1, 0
430:              jalr x12, x12, 0
sub_2:            lui          s3, 712072
                  slti         a2, s4, 614
                  addi         a5, a5, -48
                  srl          t3, a4, a3
                  sw           ra, 4(a5)
                  ori          sp, t3, -1235
                  sltu         s7, a4, t3
                  srai         s10, s10, 22
                  addi         tp, zero, -5 #init loop 0 counter
                  sll          s1, tp, s1
                  add          zero, t3, a2
                  srl          t1, t2, t3
                  slti         s4, s3, -294
                  xori         t2, ra, 1489
                  slli         s0, a1, 9
                  sltiu        t1, zero, 433
                  addi         a3, zero, -13 #init loop 0 limit
sub_2_0_0_t:      nop
                  slt          s9, t5, t4
                  and          a1, t6, a0
                  sra          gp, s3, t1
                  sra          s5, gp, t4
                  srl          s3, s7, a5
                  addi         tp, tp, -1 #update loop 0 counter
                  or           t3, s2, a2
                  and          s8, sp, t3
                  bne          tp, a3, sub_2_0_0_t #branch for loop 0
                  ori          sp, t4, -632
                  nop
                  bgeu         t1, s5, 17f
                  sra          s8, a5, a4
                  auipc        s5, 555255
                  addi         s4, tp, 429
                  srl          s6, t4, a5
                  xor          s1, t1, a6
                  slt          s11, a7, s0
                  bne          a3, a3, 28f
                  blt          a5, s10, 19f
                  addi         s1, t4, -1607
                  sltiu        tp, s9, 1069
                  sub          s3, s8, a0
                  sltiu        s3, t1, -212
                  addi         s10, t1, 358
                  auipc        t4, 330090
                  xori         s5, ra, 453
17:               bge          s6, t4, 26f
                  andi         s3, s6, 1331
19:               slli         t2, s5, 15
                  bge          t1, zero, 28f
                  sub          a2, s2, t2
                  auipc        s9, 649636
                  bltu         t4, s5, 27f
                  xor          s0, s8, ra
                  blt          gp, s3, 29f
26:               bgeu         a6, t5, 38f
27:               add          s6, t1, s9
28:               srai         s9, sp, 4
29:               and          s4, s2, ra
                  sub          t1, sp, t4
                  sra          t6, s2, s3
                  ori          t4, s8, 1326
                  slti         s10, s6, 624
                  or           s8, s5, s1
                  srli         a3, s6, 7
                  lui          ra, 1036201
                  add          zero, sp, zero
38:               ori          tp, t5, -1490
                  sra          s11, s6, s0
                  xori         s7, s1, 1757
                  srl          t2, s8, t3
                  srl          t2, s2, a7
                  bne          t6, s6, 45f
                  ori          s9, s5, -485
45:               sra          gp, a0, a3
                  xor          s4, sp, a3
                  add          t6, a7, s2
                  xor          t5, t3, s3
                  srai         a1, zero, 18
                  srai         t1, a6, 6
                  bne          s9, s2, 52f
52:               beq          a1, s5, 57f
                  ori          s2, s6, -1749
                  slli         s3, a0, 7
                  srli         zero, t5, 30
                  bne          a4, a5, 58f
57:               sll          t6, t4, tp
58:               bge          s7, t2, 71f
                  auipc        s7, 434384
                  srl          t5, s10, t0
                  sltiu        t2, gp, 390
                  bgeu         a6, s10, 76f
                  srli         a2, t4, 20
                  sltu         t4, a2, t5
                  bltu         t6, t2, 71f
                  sra          a3, zero, s7
                  bgeu         t2, sp, 68f
68:               and          s0, s10, a6
                  slt          a1, s5, s5
                  sltu         a1, t3, s1
71:               srl          s3, t4, s11
                  bge          a4, sp, 91f
                  bgeu         a3, s1, 92f
                  beq          s8, s7, 85f
                  slti         s1, s3, -1133
76:               sltiu        zero, t3, 1926
                  blt          s6, t5, 87f
                  sra          t1, a2, s11
                  sltiu        s5, a0, -614
                  xor          sp, t5, s11
                  sltiu        t1, gp, 305
                  bge          a5, a7, 83f
83:               xori         s10, a2, -134
                  bgeu         t5, s9, 92f
85:               srai         t2, s1, 8
                  sltiu        s11, t4, 1855
87:               xor          tp, s9, s3
                  xor          s7, a6, t1
                  add          t6, gp, s10
                  blt          s9, sp, 92f
91:               srli         t2, s7, 7
92:               nop
                  lui          tp, 379129
                  add          sp, a2, s1
                  lw           ra, 4(a5)
                  slli         s5, a1, 18
                  addi         a5, a5, 48
                  sltu         zero, sp, t3
                  sra          s9, gp, t0
                  slli         s1, a0, 4
                  slt          s4, s8, s0
                  auipc        a7, 754962
131:              addi x2, x1, 1
131:              jalr x2, x2, 0
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
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x16, x15, zero
                  csrr x6, 0x300 # MSTATUS
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 31
                  bne x6, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x6, 0x341 # MEPC
                  csrr x6, 0x342 # MCAUSE
                  li x10, 0x3 # BREAKPOINT
                  beq x6, x10, ebreak_handler
                  li x10, 0x8 # ECALL_UMODE
                  beq x6, x10, ecall_handler
                  li x10, 0x9 # ECALL_SMODE
                  beq x6, x10, ecall_handler
                  li x10, 0xb # ECALL_MMODE
                  beq x6, x10, ecall_handler
                  li x10, 0x1
                  beq x6, x10, instr_fault_handler
                  li x10, 0x5
                  beq x6, x10, load_fault_handler
                  li x10, 0x7
                  beq x6, x10, store_fault_handler
                  li x10, 0xc
                  beq x6, x10, pt_fault_handler
                  li x10, 0xd
                  beq x6, x10, pt_fault_handler
                  li x10, 0xf
                  beq x6, x10, pt_fault_handler
                  li x10, 0x2 # ILLEGAL_INSTRUCTION
                  beq x6, x10, illegal_instr_handler
                  csrr x10, 0x343 # MTVAL
                  1: la x5, test_done
                  jalr x1, x5, 0

ecall_handler:    
                  la x6, _start
                  sw x0, 0(x6)
                  sw x1, 4(x6)
                  sw x2, 8(x6)
                  sw x3, 12(x6)
                  sw x4, 16(x6)
                  sw x5, 20(x6)
                  sw x6, 24(x6)
                  sw x7, 28(x6)
                  sw x8, 32(x6)
                  sw x9, 36(x6)
                  sw x10, 40(x6)
                  sw x11, 44(x6)
                  sw x12, 48(x6)
                  sw x13, 52(x6)
                  sw x14, 56(x6)
                  sw x15, 60(x6)
                  sw x16, 64(x6)
                  sw x17, 68(x6)
                  sw x18, 72(x6)
                  sw x19, 76(x6)
                  sw x20, 80(x6)
                  sw x21, 84(x6)
                  sw x22, 88(x6)
                  sw x23, 92(x6)
                  sw x24, 96(x6)
                  sw x25, 100(x6)
                  sw x26, 104(x6)
                  sw x27, 108(x6)
                  sw x28, 112(x6)
                  sw x29, 116(x6)
                  sw x30, 120(x6)
                  sw x31, 124(x6)
                  la x5, write_tohost
                  jalr x0, x5, 0

instr_fault_handler:
                  add x15, x16, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

load_fault_handler:
                  add x15, x16, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

store_fault_handler:
                  add x15, x16, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

ebreak_handler:   
                  csrr  x6, 0x341
                  addi  x6, x6, 4
                  csrw  0x341, x6
                  add x15, x16, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

illegal_instr_handler:
                  csrr  x6, 0x341
                  addi  x6, x6, 4
                  csrw  0x341, x6
                  add x15, x16, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x6, 0x300 # MSTATUS;
                  csrr  x6, 0x304 # MIE;
                  csrr  x6, 0x344 # MIP;
                  csrrc x6, 0x344, x6 # MIP;
                  add x15, x16, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
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
