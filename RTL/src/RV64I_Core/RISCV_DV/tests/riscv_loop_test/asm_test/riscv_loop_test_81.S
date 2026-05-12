.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x28, h0_start
jalr x0, x28, 0
h0_start:
                  li x16, 0x40000100
                  csrw 0x301, x16
kernel_sp:        
                  la x9, kernel_stack_end

trap_vec_init:    
                  la x16, mtvec_handler
                  ori x16, x16, 0
                  csrw 0x305, x16 # MTVEC

mepc_setup:       
                  la x16, init
                  csrw 0x341, x16

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x16, 0x1800
                  csrw 0x300, x16 # MSTATUS
                  mret
init:             
                  li x0, 0x154975d4
                  li x1, 0x7
                  li x2, 0x0
                  li x3, 0x0
                  li x4, 0x1
                  li x5, 0x0
                  li x7, 0x108c691f
                  li x8, 0x1
                  li x10, 0x80000000
                  li x11, 0xf
                  li x12, 0xfae8261d
                  li x13, 0x9
                  li x14, 0xfcec0f83
                  li x15, 0x0
                  li x16, 0x4
                  li x17, 0x71f4b30a
                  li x18, 0x0
                  li x19, 0x13db7473
                  li x20, 0x80000000
                  li x21, 0xf7b321b1
                  li x22, 0xf1722a87
                  li x23, 0x80000000
                  li x24, 0x46ed3cec
                  li x25, 0xfd307544
                  li x26, 0x0
                  li x27, 0xf9b9a1d2
                  li x28, 0xce857127
                  li x29, 0x0
                  li x30, 0xd
                  li x31, 0xf08cbd64
                  la x6, user_stack_end
main:             addi         s8, zero, -1 #init loop 1 counter
                  srli         s3, a1, 13
                  addi         s11, zero, 7 #init loop 1 limit
                  sltiu        gp, s2, 1087
                  xor          sp, a5, s7
main_14_1_t:      lui          t4, 940080
                  sltiu        a3, t4, -220
                  add          s9, s4, t0
                  addi         s8, s8, 2 #update loop 1 counter
                  addi         s0, zero, 10 #init loop 0 counter
                  srli         tp, t4, 9
                  sll          a4, s0, s6
                  addi         a1, zero, 5 #init loop 0 limit
main_14_0_t:      lui          a3, 152940
                  srli         s4, s0, 5
                  addi         s0, s0, -4 #update loop 0 counter
                  bgeu         s0, a1, main_14_0_t #branch for loop 0
                  slt          s6, s1, s6
                  srli         s10, s10, 19
                  sll          tp, sp, s4
                  auipc        s4, 523790
                  blt          s8, s11, main_14_1_t #branch for loop 1
                  ori          a2, t2, 78
                  addi         tp, zero, -1 #init loop 0 counter
                  addi         a0, a0, -609
                  slt          a5, s5, sp
                  or           s0, s7, a2
                  sltiu        gp, t5, 39
                  ori          s7, t1, 500
                  sltiu        s3, s1, 900
                  sltu         zero, s10, s2
                  nop
                  auipc        s4, 681642
                  addi         sp, zero, -9 #init loop 0 limit
main_6_0_t:       auipc        s7, 568402
                  addi         tp, tp, -8 #update loop 0 counter
                  xor          s11, tp, a5
                  addi         s10, a6, -199
                  xor          s10, s6, a5
                  ori          s3, a2, -49
                  andi         ra, t3, 1327
                  srai         a7, t4, 14
                  auipc        gp, 730542
                  beq          tp, sp, main_6_0_t #branch for loop 0
                  slti         s7, tp, 787
                  addi         t5, zero, 9 #init loop 0 counter
                  sltu         t0, s11, t5
                  sub          t0, a1, s7
                  addi         t2, zero, 16 #init loop 0 limit
                  sub          s10, sp, s7
                  sltu         s0, tp, t1
                  auipc        a1, 486225
                  auipc        s4, 1006227
                  slti         zero, t6, 40
                  srai         s0, t6, 5
                  andi         s4, s11, -1008
main_5_0_t:       xor          zero, a3, tp
                  sll          s2, t2, a3
                  addi         a6, a1, 156
                  auipc        sp, 256818
                  sltu         a0, s0, s8
                  slti         a6, a4, 509
                  and          a5, s4, a1
                  nop
                  addi         t5, t5, 1 #update loop 0 counter
                  sra          a6, t6, t3
                  slti         t0, s6, -874
                  blt          t5, t2, main_5_0_t #branch for loop 0
                  xori         s6, t2, 1273
                  addi         s9, zero, 7 #init loop 0 counter
                  slti         s4, a1, 578
                  sltu         a7, gp, t3
                  sra          ra, t2, a1
                  add          s5, t6, a3
                  xori         t2, a0, 472
                  xor          a4, t0, ra
                  slt          s2, s6, a3
                  addi         t4, zero, -11 #init loop 0 limit
                  slt          a5, gp, s8
                  addi         t5, a6, 533
                  sltu         s7, a5, s8
main_8_0_t:       xor          a3, gp, t0
                  slti         a0, ra, 1649
                  ori          a7, t1, 952
                  addi         tp, t2, 1473
                  and          a1, s2, s3
                  addi         s9, s9, -9 #update loop 0 counter
                  and          s10, s2, tp
                  xor          s0, t6, s5
                  sll          s3, t2, s4
                  or           a2, s0, zero
                  nop
                  bne          s9, t4, main_8_0_t #branch for loop 0
                  slli         a7, tp, 21
                  addi         s11, zero, 9 #init loop 0 counter
                  or           s2, a6, s4
                  auipc        s5, 590936
                  sltiu        s3, a1, 1093
                  srli         s2, t3, 13
                  and          s3, a0, t5
                  slt          tp, a2, s2
                  addi         s6, s2, 1107
                  xori         zero, t6, -1681
                  slti         a4, s5, -133
                  and          a3, t0, zero
                  sub          s2, ra, a6
                  lui          sp, 45119
                  auipc        a3, 370773
                  or           s5, a7, zero
                  addi         ra, zero, 9 #init loop 0 limit
                  sub          s10, s3, a0
main_12_0_t:      xor          sp, s8, s4
                  slti         s0, a5, 880
                  addi         s11, s11, -8 #update loop 0 counter
                  lui          a4, 91485
                  sltu         a5, s4, s8
                  slt          s8, ra, a6
                  srai         gp, sp, 29
                  bgeu         s11, ra, main_12_0_t #branch for loop 0
                  slli         t0, s2, 13
                  addi         s7, zero, 5 #init loop 0 counter
                  andi         s0, s4, 811
                  ori          gp, tp, -1182
                  addi         a1, zero, 15 #init loop 0 limit
                  xori         s11, a0, 1827
main_2_0_t:       sub          s6, s10, a3
                  addi         s7, s7, 5 #update loop 0 counter
                  bne          s7, a1, main_2_0_t #branch for loop 0
                  lui          s6, 280722
                  addi         ra, zero, -2 #init loop 0 counter
                  sltiu        s7, gp, -1510
                  slti         t0, t1, -1772
                  srli         s4, s7, 24
                  add          tp, s0, s4
                  addi         a3, zero, -14 #init loop 0 limit
                  and          s6, t5, s9
                  sltiu        sp, a5, -520
                  auipc        t0, 731440
main_0_0_t:       nop
                  srli         gp, zero, 3
                  addi         ra, ra, -4 #update loop 0 counter
                  sra          t4, t2, s9
                  lui          s4, 987066
                  or           a6, zero, gp
                  or           s7, t6, t6
                  addi         tp, gp, 118
                  xor          sp, s3, zero
                  beq          ra, a3, main_0_0_t #branch for loop 0
                  xori         s11, s5, 954
                  addi         a6, zero, 6 #init loop 0 counter
                  slti         a3, s4, -1940
                  xor          s3, a3, a4
                  add          a1, s6, s3
                  sll          tp, s8, sp
                  sub          a1, gp, gp
                  addi         a1, s3, 887
                  auipc        a1, 1029372
                  and          s6, ra, a3
                  srai         t6, a5, 12
                  ori          t0, s10, 1335
                  srli         s5, a0, 29
                  addi         s7, zero, -2 #init loop 0 limit
                  srl          t0, s6, t6
                  sub          a1, a1, s0
main_15_0_t:      and          t5, s7, t2
                  slli         a7, s11, 13
                  addi         a6, a6, -8 #update loop 0 counter
                  lui          s8, 978842
                  lui          s4, 843320
                  slti         a5, zero, -1685
                  andi         a1, a4, -1671
                  nop
                  xori         s9, s10, -592
                  beq          a6, s7, main_15_0_t #branch for loop 0
                  sltiu        s11, s1, 1968
                  addi         ra, zero, 8 #init loop 0 counter
                  add          s3, zero, gp
                  srli         a1, s5, 7
                  srli         s11, a0, 12
                  xori         t2, s4, 859
                  and          s4, gp, s4
                  sub          t5, a6, a4
                  sra          s2, s9, t1
                  addi         s8, zero, 8 #init loop 0 limit
                  lui          a4, 217413
main_13_0_t:      nop
                  slli         t2, a3, 27
                  addi         ra, ra, -7 #update loop 0 counter
                  lui          zero, 178210
                  srl          s2, t4, a1
                  bgeu         ra, s8, main_13_0_t #branch for loop 0
                  xor          s10, a1, t5
                  addi         s3, zero, 6 #init loop 1 counter
                  addi         t6, zero, 6 #init loop 1 limit
main_3_1_t:       sub          s9, s7, a5
                  addi         s3, s3, -5 #update loop 1 counter
                  addi         a6, zero, -7 #init loop 0 counter
                  addi         a1, zero, 10 #init loop 0 limit
                  xori         s8, s6, 1998
main_3_0_t:       lui          s9, 570642
                  addi         a6, a6, 6 #update loop 0 counter
                  bltu         a6, a1, main_3_0_t #branch for loop 0
                  bgeu         s3, t6, main_3_1_t #branch for loop 1
                  nop
                  addi         s0, zero, -3 #init loop 0 counter
                  srl          s3, t0, gp
                  addi         s6, zero, -15 #init loop 0 limit
                  sltiu        tp, a0, 1065
                  srai         a0, a0, 28
                  xor          s11, s6, s5
                  slti         s7, t5, -1868
main_7_0_t:       andi         t6, t3, 1695
                  lui          t4, 964180
                  and          a6, sp, s0
                  and          sp, a3, t1
                  slti         a4, s5, -688
                  lui          s10, 821890
                  srai         t0, t0, 29
                  sltiu        sp, s4, 1571
                  sra          tp, tp, t6
                  and          a1, a6, t4
                  addi         s0, s0, -2 #update loop 0 counter
                  srl          s10, zero, zero
                  srli         t5, t3, 20
                  beq          s0, s6, main_7_0_t #branch for loop 0
                  sll          t4, zero, s2
                  addi         t2, zero, -9 #init loop 0 counter
                  srl          s9, s10, s10
                  sub          t6, a6, t1
                  addi         a7, zero, -20 #init loop 0 limit
                  xori         tp, s1, 601
                  srli         a1, a6, 24
main_19_0_t:      andi         s5, gp, 1127
                  srli         s7, a6, 26
                  srl          s5, t2, s10
                  or           a5, s3, s3
                  srl          s7, s8, s6
                  xori         s9, s11, 119
                  xor          sp, t3, gp
                  sltiu        s7, a6, -1365
                  slt          a5, zero, tp
                  addi         t2, t2, -8 #update loop 0 counter
                  or           s9, t6, a7
                  srai         s11, s9, 3
                  auipc        tp, 29985
                  andi         a2, s5, 273
                  nop
                  auipc        a6, 194367
                  sra          s2, sp, gp
                  slti         s2, tp, -1839
                  sltu         s9, t6, t1
                  slli         s10, t4, 22
                  sra          ra, s10, s0
                  bge          t2, a7, main_19_0_t #branch for loop 0
                  nop
                  addi         a4, zero, 10 #init loop 0 counter
                  sltiu        a2, a7, 581
                  slt          tp, a6, a6
                  srl          gp, s3, s11
                  or           a3, a4, a0
                  xor          t0, t4, tp
                  lui          a3, 174555
                  and          ra, a2, a0
                  addi         s3, zero, 13 #init loop 0 limit
                  or           s9, a6, s10
                  srai         s10, a1, 24
                  xor          s5, a2, s1
                  xor          s9, s11, a3
                  xor          zero, a3, s4
main_4_0_t:       lui          s6, 325989
                  srli         a5, t5, 21
                  ori          a1, s0, 1514
                  addi         a4, a4, 5 #update loop 0 counter
                  sltu         s8, s10, t0
                  sra          s5, s9, a1
                  sltu         gp, t5, s10
                  srli         zero, s1, 25
                  bltu         a4, s3, main_4_0_t #branch for loop 0
                  xor          t6, t6, a3
                  addi         s0, zero, 9 #init loop 0 counter
                  sra          t0, sp, t0
                  addi         s5, ra, 1370
                  andi         a4, t1, -1914
                  sub          t6, a5, s0
                  xor          t2, t5, sp
                  or           t4, a3, t3
                  lui          sp, 801296
                  sltiu        a4, tp, 1704
                  addi         a2, zero, 13 #init loop 0 limit
                  ori          a5, t0, 90
                  slli         s7, sp, 6
                  sub          a4, t2, t1
main_17_0_t:      xor          s2, s10, t1
                  sra          a6, s3, sp
                  add          s4, a3, s7
                  nop
                  srl          s10, s6, a6
                  srai         s2, s4, 1
                  addi         s0, s0, 4 #update loop 0 counter
                  ori          tp, a0, 1632
                  addi         t6, s1, -1283
                  bltu         s0, a2, main_17_0_t #branch for loop 0
                  auipc        s9, 224948
                  addi         sp, zero, 10 #init loop 0 counter
                  sll          t2, zero, t4
                  slt          s0, s11, a7
                  sltu         a4, s0, a0
                  sra          ra, s11, s11
                  addi         s4, zero, 16 #init loop 0 limit
                  sra          s7, t5, a0
                  and          a6, a2, s8
                  sub          zero, t5, s9
                  slti         t6, a0, -525
main_1_0_t:       auipc        s5, 518645
                  sub          s0, sp, s11
                  andi         ra, a4, 1407
                  addi         sp, sp, 6 #update loop 0 counter
                  slt          a6, s9, s10
                  xori         s2, a5, -659
                  sltiu        s8, t2, -641
                  srl          t4, t3, t6
                  srai         a4, s8, 22
                  sra          s0, t0, t6
                  bne          sp, s4, main_1_0_t #branch for loop 0
                  addi         t6, a6, 1757
                  addi         s4, zero, -4 #init loop 0 counter
                  and          s11, s11, a2
                  slti         s2, zero, -1701
                  addi         a3, s6, -1745
                  andi         t6, zero, 121
                  andi         a3, a2, 282
                  addi         a4, zero, 12 #init loop 0 limit
                  or           tp, a3, tp
main_18_0_t:      addi         s0, a7, -1062
                  addi         s4, s4, 4 #update loop 0 counter
                  blt          s4, a4, main_18_0_t #branch for loop 0
                  slli         t0, t3, 9
                  and          s9, zero, a4
                  slli         s5, ra, 22
                  bge          s7, s6, 22f
                  slt          s5, t1, s4
                  lui          a3, 765565
                  srai         t2, s3, 26
                  or           a2, t5, a5
                  slli         ra, s3, 8
                  bgeu         a7, a2, 13f
                  sra          s6, sp, s11
                  auipc        s7, 638180
                  sltu         s2, s1, s5
                  addi         s5, s11, -1267
13:               bne          a7, s5, 29f
                  sltu         s4, sp, s7
                  auipc        a1, 622226
                  or           s11, zero, t4
                  bgeu         a1, t2, 26f
                  andi         s10, s11, -901
                  slti         zero, zero, 1859
                  bltu         s7, a0, 23f
                  xori         sp, s3, 850
22:               slt          a3, s0, s6
23:               sra          s11, s0, a2
                  nop
                  srl          t2, a6, s10
26:               slli         ra, s7, 10
                  sra          t2, s2, s7
                  slli         a1, s7, 21
29:               sltiu        a4, t4, 1978
                  lui          t4, 304575
                  sltiu        t5, s3, -164
                  srl          s11, a2, tp
                  bge          s10, s3, 36f
                  lui          a0, 488544
                  sltu         a5, s8, a2
36:               addi         a2, t4, 968
                  and          s2, s8, s9
                  nop
                  beq          s5, sp, 51f
                  xori         s9, t1, -938
                  or           a1, s9, s10
                  srai         s6, s5, 2
                  and          t0, gp, tp
                  sll          ra, t5, a7
                  addi         a5, ra, 39
                  or           a0, ra, a4
                  and          s5, t2, t1
                  slli         ra, s3, 23
                  lui          tp, 943268
                  slti         sp, ra, 524
51:               srli         s5, s5, 10
                  andi         t2, a0, -219
                  bgeu         sp, s2, 56f
                  auipc        t0, 717050
                  xor          s11, s3, t6
56:               blt          sp, t1, 66f
                  slt          s4, s9, t1
                  sll          a0, a3, s7
                  srl          a0, gp, s8
                  bne          s0, t0, 74f
                  srai         s2, a3, 6
                  bltu         s5, s1, 78f
                  add          s2, a3, a0
                  srl          a7, sp, sp
                  bgeu         s11, s3, 75f
66:               xor          sp, t3, t0
                  srai         a0, t5, 2
                  auipc        a2, 973254
                  beq          t3, t4, 82f
                  bge          s7, t5, 72f
                  ori          t5, a5, -1654
72:               slli         a7, a7, 6
                  addi         a3, t5, -1363
74:               addi         a7, gp, -1579
75:               lui          s2, 11086
                  sll          s7, s0, t4
                  slti         sp, s2, -612
78:               blt          t2, t6, 98f
                  srai         sp, t6, 27
                  bge          s4, s10, 92f
                  lui          tp, 36388
82:               sltiu        t4, s0, -135
                  slli         t6, a2, 3
                  srai         t0, t6, 3
                  auipc        s7, 377164
                  addi         t4, zero, -6 #init loop 1 counter
                  or           sp, s11, s7
                  slt          a2, t3, t5
                  srai         a4, s11, 22
                  sra          a4, s1, s7
                  addi         s7, zero, -14 #init loop 1 limit
                  andi         s9, a6, -953
main_16_1_t:      sltiu        t2, a4, 1865
                  addi         t4, t4, -8 #update loop 1 counter
                  srli         a5, ra, 8
                  addi         ra, zero, -8 #init loop 0 counter
                  addi         s6, zero, 4 #init loop 0 limit
                  auipc        t6, 634251
main_16_0_t:      xori         a2, a0, 149
                  addi         ra, ra, 8 #update loop 0 counter
                  xori         s0, t5, -803
                  blt          ra, s6, main_16_0_t #branch for loop 0
                  sltiu        s9, ra, 849
                  slli         s10, t5, 22
                  andi         s9, a6, 1689
                  slti         s2, tp, -1698
                  and          t5, t2, a4
                  bne          t4, s7, main_16_1_t #branch for loop 1
                  andi         t0, s3, -793
                  srli         t5, t3, 13
                  bne          s9, t1, 97f
                  sll          s9, t5, s5
                  xori         s0, s0, 1735
                  bne          s4, t5, 92f
                  slli         a5, s6, 2
92:               srli         a0, a3, 5
                  bne          s3, a3, 99f
                  add          s10, s9, t6
                  bgeu         t2, s10, 97f
                  slt          a7, s8, a7
97:               bge          s7, gp, 98f
98:               sra          a0, t4, a4
99:               srli         s5, a3, 6
                  slli         t6, s3, 23
                  slli         tp, t2, 9
                  addi         t6, a7, -690
                  sltu         t0, s7, t0
                  ori          a5, s3, 1811
                  bltu         a1, a6, 106f
106:              srli         s5, zero, 27
                  xor          tp, tp, t2
                  and          tp, s4, s4
                  and          s5, a4, a2
                  bne          ra, s5, 111f
111:              sltiu        tp, s8, 790
                  xori         s6, a2, -589
                  lui          t0, 762527
                  lui          a5, 74091
                  addi         a0, s10, 1929
                  srl          ra, a1, s6
                  xor          sp, t2, sp
                  srl          a4, a6, t5
                  andi         s7, gp, 296
                  add          s11, s11, s9
                  bgeu         s1, a5, 137f
                  blt          t2, a7, 123f
123:              sltu         t0, s3, s11
                  nop
                  andi         t5, t1, 185
                  slli         t5, t4, 9
                  auipc        a2, 1010392
                  slt          zero, s9, s0
                  sltu         sp, t1, s8
                  sra          ra, t3, s9
                  bgeu         t5, ra, 135f
                  bltu         a7, a6, 134f
                  blt          gp, s5, 142f
134:              srl          s9, t0, gp
135:              sra          s9, a0, t0
                  auipc        t0, 564791
137:              sltiu        s8, zero, -592
                  beq          s6, t2, 154f
                  nop
                  sll          gp, s11, a0
                  bltu         t3, s10, 146f
142:              add          s2, s10, t0
                  sll          s4, t3, a7
                  and          a0, s3, a0
                  bgeu         gp, s9, 165f
146:              sub          t4, a6, a1
                  lui          a1, 882188
                  sltiu        a5, gp, -1761
                  bgeu         gp, s3, 152f
                  sub          a0, s5, t4
                  bge          s0, a0, 167f
152:              bge          a5, s0, 168f
                  srl          s2, s3, zero
154:              and          s9, sp, s11
                  nop
                  add          t2, s10, gp
                  slti         s7, gp, 39
                  andi         a4, s0, 608
                  blt          a1, gp, 171f
                  andi         t6, gp, 484
                  xor          a5, s5, sp
                  sub          s6, a6, s4
                  bltu         s10, s10, 165f
                  bne          t5, s7, 165f
165:              srai         zero, a2, 15
                  and          a4, s4, a2
167:              slli         s8, zero, 27
168:              slti         t4, gp, -797
                  beq          s5, t3, 172f
                  ori          s7, a5, -327
171:              beq          s9, ra, 181f
172:              sll          s5, s11, t3
                  ori          t2, t4, 1491
                  andi         a1, zero, -1237
                  beq          a2, a4, 176f
176:              sub          t2, t5, tp
                  bge          gp, a2, 182f
                  sltiu        a6, sp, 866
                  slt          s8, t2, s8
                  xor          t5, a7, s8
181:              xor          a6, s4, zero
182:              auipc        s2, 921192
                  sra          s0, s4, a2
                  sra          a4, t5, t4
                  xor          t0, t3, s3
                  addi         a6, zero, 427
                  srl          s9, s2, s10
                  and          s3, s9, t5
                  or           s0, t0, s3
                  sltiu        t0, t2, 1981
                  and          s0, gp, a1
                  sll          a0, s3, a4
                  srli         s4, a4, 1
                  slti         a0, s8, -848
                  or           a5, sp, t3
                  srli         s0, s7, 25
                  slli         a2, ra, 6
                  andi         a3, a3, -1707
                  bgeu         a5, a7, 201f
                  and          a2, a6, s1
201:              beq          a3, t2, 211f
                  sra          gp, s9, t5
                  or           a5, a1, s0
                  sra          a4, a6, s4
                  bltu         t4, s1, 221f
                  and          a1, a7, t3
                  srli         t4, s3, 30
                  bge          s11, a0, 222f
                  add          a3, t6, a2
                  auipc        a0, 84912
211:              srai         a0, s4, 24
                  nop
                  blt          s11, tp, 229f
                  sub          t2, t5, a4
                  addi         s0, ra, 1875
                  slt          s3, s1, a7
                  slli         s3, s6, 14
                  srl          a0, t2, s7
                  slti         s11, t3, 1920
                  slt          s3, s2, a4
221:              and          s4, a1, s11
222:              auipc        a0, 937355
                  lui          a1, 927240
                  srl          s5, s1, s6
                  beq          t5, a5, 227f
                  add          a0, t4, t6
227:              sltiu        t2, s7, 524
                  blt          t6, a4, 232f
229:              srl          s8, s7, s3
                  add          t5, s10, a0
                  addi         t2, a3, -1605
232:              or           s9, s7, t1
                  and          zero, t4, s2
                  addi         t4, zero, -1 #init loop 1 counter
                  srl          zero, t1, a0
                  sltiu        s3, t3, -933
                  addi         a2, zero, 17 #init loop 1 limit
                  xor          t0, tp, ra
main_20_1_t:      or           s3, s2, s3
                  addi         t4, t4, 9 #update loop 1 counter
                  slli         s5, a0, 25
                  addi         a1, zero, -2 #init loop 0 counter
                  srl          s4, tp, a2
                  addi         t5, zero, -8 #init loop 0 limit
                  auipc        tp, 498534
main_20_0_t:      andi         sp, a1, 601
                  auipc        a4, 810518
                  xor          s10, gp, a6
                  slt          zero, a3, t5
                  and          t6, s4, t1
                  addi         a1, a1, -9 #update loop 0 counter
                  bge          a1, t5, main_20_0_t #branch for loop 0
                  sub          s8, gp, s2
                  sll          s7, ra, gp
                  bne          t4, a2, main_20_1_t #branch for loop 1
                  sll          t2, a1, s4
                  beq          s2, t5, 240f
                  sltiu        t4, s8, 1240
                  blt          t5, s8, 238f
                  ori          s7, s10, -1400
238:              slti         sp, t6, 1702
                  beq          t3, s4, 251f
240:              slt          a2, t3, t1
                  srli         s8, a3, 28
                  slti         t5, t3, 1075
                  sra          a2, s9, a0
                  bne          s0, s11, 249f
                  sll          zero, s2, ra
                  bltu         s10, s9, 266f
                  slti         tp, t1, -600
                  srl          s11, t4, gp
249:              auipc        a7, 271214
                  bge          a1, sp, 259f
251:              sub          s11, zero, s1
                  xor          sp, gp, a6
                  srai         t6, t3, 21
                  sub          zero, s3, t6
                  srai         a1, s3, 18
                  xor          t2, t4, s3
                  sll          zero, t1, s6
                  beq          a6, t4, 271f
259:              sra          sp, s3, s0
                  sltu         t0, tp, s6
                  add          s9, gp, s2
                  andi         ra, a7, -1134
                  bgeu         t5, a7, 266f
                  andi         t4, t3, -1012
                  sltu         t5, tp, a7
266:              bltu         s8, gp, 267f
267:              slt          a4, s11, a7
                  slti         a4, a0, 578
                  srli         sp, s9, 0
                  slt          a7, a7, tp
271:              or           a1, t3, a4
                  sra          s9, s8, s4
                  or           s0, s9, sp
                  xori         s0, a0, -16
                  sub          s11, gp, t4
                  auipc        s9, 363622
                  sub          s0, a1, s9
                  xor          a1, s7, a0
                  bltu         s10, ra, 289f
                  bne          a7, t0, 289f
                  lui          s10, 216754
                  ori          a5, s2, 1025
                  sltu         ra, t6, ra
                  sub          a0, s2, sp
                  sll          s2, a5, s5
                  or           s8, s8, s8
                  sll          s2, t1, a3
                  bge          s2, s0, 289f
289:              nop
                  slti         s4, s3, 138
                  nop
                  bne          a1, t4, 294f
                  sll          a1, a6, a0
294:              ori          a0, ra, 1749
                  sub          ra, s9, t4
                  srai         gp, t3, 23
                  lui          s4, 1014510
                  beq          s8, t6, 301f
                  bne          a5, tp, 301f
                  sub          a2, t5, a6
301:              bne          s9, a1, 317f
                  bge          a3, a4, 311f
                  xor          t2, s4, s8
                  andi         t5, zero, -1044
                  nop
                  or           a4, ra, ra
                  bge          s7, a5, 319f
                  srai         zero, s4, 0
                  sll          a7, t6, s7
                  bltu         a6, a1, 312f
311:              andi         t2, sp, 1491
312:              bge          a2, a5, 316f
                  bge          t6, s9, 325f
                  slti         t5, s10, -191
                  sll          s9, t2, a5
316:              slli         t2, a1, 20
317:              or           a7, s5, a5
                  sltu         a4, gp, s3
319:              xori         s5, a4, -431
                  sll          s8, a7, s7
                  andi         a2, a2, 1626
                  srai         s11, s9, 26
                  sltiu        a0, t2, 42
                  or           s8, a4, a6
325:              slt          s3, s4, a1
                  srl          s3, s4, s2
                  xori         s3, s9, 1306
                  slt          t5, s10, t0
                  srai         a1, s6, 16
                  sltiu        t5, s9, 841
                  and          zero, t2, t6
                  auipc        s11, 874317
                  blt          s6, a0, 338f
                  bgeu         s6, s1, 344f
                  slli         ra, gp, 28
                  addi         a3, s4, -430
                  lui          gp, 895288
338:              blt          s8, gp, 354f
                  sll          s4, ra, s10
                  sltiu        s2, s9, -686
                  blt          ra, s6, 351f
                  sltu         ra, a1, s5
                  addi         sp, t4, 1287
344:              srli         a4, s5, 1
                  slt          gp, tp, sp
                  nop
                  and          s4, t0, a0
                  or           t0, a3, t1
                  auipc        zero, 74482
                  beq          s7, a5, 360f
351:              sll          s4, s0, t4
                  add          t2, a1, t6
                  andi         gp, s1, 1702
354:              srai         a7, a3, 28
                  andi         t2, s7, 1353
                  bge          a2, t1, 362f
                  bltu         s5, t1, 373f
                  addi         s3, zero, -1435
                  slt          s3, gp, ra
360:              sll          t5, s5, s7
                  xor          t6, a2, s1
362:              andi         s5, a0, 1790
                  xori         s6, a7, -1361
                  ori          t0, t1, -1643
                  beq          t4, t3, 381f
                  xori         s11, sp, -1855
                  blt          a1, s10, 387f
                  bltu         s2, s2, 377f
                  sra          s8, t1, s10
                  srli         s11, tp, 11
                  beq          gp, s8, 384f
                  add          gp, t3, a1
373:              srai         a1, s2, 1
                  nop
                  nop
                  or           s10, s0, s6
377:              or           s7, a1, t5
                  bltu         s6, s0, 379f
379:              bgeu         s10, t1, 393f
                  slti         a7, t6, -457
381:              slti         gp, t3, 1516
                  bltu         s7, s6, 402f
                  and          t0, t1, a2
384:              blt          t1, ra, 387f
                  blt          s1, t5, 388f
                  ori          s5, s9, -1119
387:              bltu         s8, a5, 388f
388:              slti         gp, a3, 1940
                  sra          zero, s2, t2
                  srl          zero, s3, s9
                  bltu         s7, zero, 392f
392:              beq          t0, s4, 394f
393:              slli         a5, s1, 26
394:              srl          gp, s0, a5
                  sltiu        a6, t3, -1546
                  bgeu         s10, t4, 397f
397:              nop
                  andi         s6, a0, 1973
                  srl          a5, tp, t6
                  bge          s2, sp, 405f
                  or           a3, a1, s6
402:              sltu         t6, a4, s1
                  slt          s7, t6, t2
                  sll          s6, t5, s7
405:              bge          s1, s4, 406f
406:              ori          s6, s5, 1871
                  srl          a1, a7, t2
                  sltu         a3, s8, a3
                  beq          ra, a6, 425f
                  slt          zero, a5, tp
                  addi         s4, t3, 1217
                  sub          gp, s7, s1
                  auipc        t4, 863192
                  srl          t2, a2, a4
                  xori         s7, t1, 1957
                  sltiu        t4, a6, 699
                  bge          t0, s1, 426f
                  xori         t2, t5, -242
                  slti         s2, t0, 370
                  slti         zero, s5, 461
                  auipc        t2, 541007
                  andi         gp, s9, 915
                  slti         s11, t3, -1333
                  add          a0, s8, a0
425:              srai         s0, t6, 22
426:              or           t0, s0, a1
                  andi         a3, zero, 585
                  xori         s10, s8, -1152
                  slt          s8, tp, ra
                  srli         tp, gp, 6
                  bgeu         t4, s11, 432f
432:              sltiu        a5, a2, 369
                  slt          s2, s10, t3
                  beq          a4, t5, 444f
                  xori         a5, t2, 412
                  sltiu        t2, s6, -1262
                  or           tp, t1, s11
                  ori          gp, s8, 715
                  srli         a3, s3, 11
                  lui          a4, 426115
                  bne          tp, t6, 443f
                  sltu         s6, t2, t1
443:              srli         t6, s9, 1
444:              xori         s8, a0, 1150
                  srai         s5, s1, 8
                  blt          a5, t4, 448f
                  srli         a1, t1, 9
448:              xori         a1, t3, -1751
                  slli         gp, s3, 6
                  bgeu         t4, zero, 455f
                  add          a0, ra, s9
                  slli         t5, a7, 24
                  slti         a6, a5, -1887
                  sub          t4, a3, s5
455:              sub          a1, t6, gp
                  srai         ra, a6, 23
                  bne          t4, a6, 471f
                  blt          t5, a0, 461f
                  addi         gp, gp, 766
                  andi         a6, gp, -550
461:              auipc        a3, 42901
                  xori         a7, t6, 90
                  xori         a3, a3, 801
                  bge          t5, s5, 474f
                  addi         s6, s8, 630
                  xor          t5, s0, s1
                  sltu         ra, s6, tp
                  add          a2, a5, gp
                  sub          s5, t3, s0
                  sltu         a2, a0, gp
471:              bne          tp, s11, 487f
                  auipc        s9, 985810
                  bltu         s0, t5, 489f
474:              blt          s0, a3, 478f
                  andi         gp, a1, -1195
                  bltu         s1, s6, 481f
                  sltu         s5, s0, gp
478:              sll          t6, s0, s4
                  bgeu         s2, t1, 492f
                  xori         sp, t3, -1759
481:              beq          s0, a7, 482f
482:              sub          t5, s5, s3
                  sll          s5, s0, a3
                  sll          a5, s4, s5
                  srai         s11, t3, 0
                  bltu         s9, t3, 488f
487:              or           a1, s0, s6
488:              slt          s2, ra, s11
489:              sltu         s3, a7, tp
                  sltiu        t0, a2, 1868
                  bltu         s11, s0, 493f
492:              and          a6, gp, a7
493:              slt          ra, a0, a6
                  sra          s3, t3, a7
                  andi         tp, t5, 803
                  add          s4, zero, s2
                  srai         zero, sp, 5
                  addi         t5, s4, -1838
                  auipc        a1, 51114
                  bgeu         a3, a6, 512f
                  and          s7, s7, a7
                  xor          s2, a2, a4
                  sub          sp, a0, t2
                  lui          s10, 52097
                  srli         a1, s6, 12
                  blt          s7, a2, 512f
                  ori          s8, a7, -1598
                  ori          s9, t5, 492
                  slti         s11, t4, -1294
                  bne          t2, t3, 511f
511:              blt          s9, s6, 514f
512:              sub          s8, s4, t3
                  sltu         t4, s6, s6
514:              blt          a6, t2, 534f
                  sltu         s8, a2, t0
                  lui          a2, 907652
                  slti         a7, s10, -1564
                  sll          s8, t4, s8
                  nop
                  ori          s3, s4, 551
                  srai         a1, a4, 2
                  bge          s11, a0, 538f
                  lui          a2, 979774
                  bge          s10, tp, 533f
                  beq          s0, t0, 545f
                  sll          a4, s6, a0
                  bne          a0, a3, 537f
                  xor          t0, a2, a7
                  add          a3, s5, t1
                  lui          a1, 654430
                  bltu         zero, a5, 534f
                  slti         a5, sp, -37
533:              slli         a5, t0, 3
534:              slli         s8, a5, 12
                  ori          s6, t4, -681
                  auipc        zero, 560743
537:              and          a1, a0, a4
538:              auipc        s7, 28071
                  sltiu        a0, s0, 1644
                  or           s8, gp, a2
                  bge          t1, s5, 553f
                  sub          a5, s7, s3
                  sub          t6, t0, t6
                  slt          t6, s2, s4
545:              ori          s10, a3, 1777
                  sltiu        s7, s3, -363
                  xori         s2, s6, -12
                  sra          s2, a4, a2
                  slli         a6, s2, 0
                  add          a3, t3, s4
                  bltu         a1, s4, 554f
                  slt          s8, zero, a0
553:              sltiu        s5, a1, 653
554:              srli         s0, s0, 2
                  srai         zero, s7, 0
                  sltu         s10, gp, s7
                  srli         s2, t4, 31
                  srl          s2, t3, t1
                  ori          a3, t6, -1727
                  sltu         s4, t2, t3
                  addi         ra, t2, 1056
                  srai         s8, a5, 24
                  slti         s0, ra, -711
                  lui          s2, 542695
                  beq          s1, s2, 575f
                  sltu         zero, s7, a2
                  add          a5, s3, t1
                  slt          t2, s0, t1
                  andi         s4, a1, 1525
                  slli         s4, a4, 18
                  addi         s3, a7, -734
                  bgeu         s5, s7, 588f
                  bge          s4, zero, 589f
                  srli         s9, a1, 20
575:              ori          t0, s0, -1943
                  slti         s10, t0, -1001
                  lui          s4, 883146
                  sub          a3, s9, t2
                  slti         s7, s9, -1277
                  add          a7, s4, a4
                  nop
                  ori          gp, a4, -171
                  addi         s11, a7, 698
                  srli         a4, s4, 19
                  sra          a1, gp, t5
                  sub          t4, s11, t6
                  sra          s11, s9, zero
588:              beq          a1, a7, 590f
589:              lui          a1, 906894
590:              auipc        a1, 342235
                  andi         s3, zero, -65
                  auipc        t4, 211498
                  bne          a3, t2, 594f
594:              beq          t1, sp, 604f
                  blt          t2, s7, 596f
596:              slli         s6, tp, 4
                  slti         s10, a4, 1254
                  lui          s10, 332072
                  xori         a1, s4, 1438
                  addi         s7, gp, 989
                  sub          t5, a5, ra
                  slt          s9, s0, t2
                  xor          sp, a7, s5
604:              sub          gp, a6, s11
                  lui          s10, 516830
                  beq          ra, tp, 607f
607:              and          a0, zero, s1
                  slli         a5, a3, 2
                  bne          t1, s4, 612f
                  add          t0, t4, s1
                  blt          a5, s2, 615f
                  addi         a4, zero, 7 #init loop 0 counter
                  srl          sp, a4, t5
                  sll          sp, s5, s6
                  lui          t0, 622229
                  addi         gp, zero, -14 #init loop 0 limit
main_11_0_t:      or           a2, a0, ra
                  addi         t0, a2, -475
                  addi         a4, a4, -7 #update loop 0 counter
                  bne          a4, gp, main_11_0_t #branch for loop 0
                  srl          t5, zero, a4
612:              beq          a1, a1, 621f
                  slli         s0, s0, 29
                  nop
615:              sra          s10, ra, gp
                  sll          s9, s6, s9
                  add          s3, zero, s6
                  srl          s7, ra, ra
                  lui          t4, 614707
                  xor          s9, s3, a4
621:              or           s7, t5, s4
                  bltu         s8, s3, 638f
                  xor          ra, s7, a6
                  beq          s5, sp, 634f
                  bge          t2, gp, 645f
                  beq          s6, s2, 631f
                  slt          t4, s0, t3
                  bltu         t5, s0, 633f
                  xor          s5, s9, s8
                  sll          zero, t6, s6
631:              slt          sp, t2, gp
                  slli         zero, s7, 14
633:              bge          s9, t5, 636f
634:              sra          s7, s5, s3
                  andi         s10, gp, 1643
636:              bgeu         s0, tp, 648f
                  bltu         a4, s11, 657f
638:              bge          s6, t2, 650f
                  auipc        s4, 987064
                  sltu         t0, t1, t4
                  auipc        a3, 1002274
                  sll          s0, a5, a6
                  slti         t0, gp, -271
                  xor          s0, s7, t5
645:              add          a7, s3, s7
                  xori         ra, a7, -637
                  slti         s9, a1, -1939
648:              sll          s0, t4, s5
                  bge          zero, t1, 650f
650:              nop
                  sll          s11, tp, a6
                  bltu         t1, a0, 654f
                  sltu         a2, s9, s1
654:              beq          s4, t3, 667f
                  add          sp, t3, a5
                  bltu         t6, t3, 672f
657:              bge          t2, s1, 663f
                  auipc        s7, 81210
                  xor          a0, a2, sp
                  ori          a5, a1, -1738
                  slti         a6, t2, -1197
                  sll          t0, s5, s2
663:              nop
                  srai         a2, a2, 26
                  and          sp, t2, a5
                  bltu         t2, s1, 680f
667:              add          t5, t6, a5
                  sra          sp, s4, s2
                  andi         s7, t4, 879
                  xor          s8, s8, s9
                  slt          s7, t5, t6
672:              addi         gp, tp, -1803
                  sltu         s9, s2, t5
                  sll          t4, a7, ra
                  sll          gp, ra, s1
                  sll          tp, s0, a6
                  srl          a6, zero, a2
                  blt          t0, s10, 687f
                  slli         a1, s7, 9
680:              auipc        s6, 484744
                  slt          t4, a3, a1
                  lui          sp, 135520
                  andi         s10, s5, -1646
                  sltu         s6, s4, gp
                  srai         t5, s4, 23
                  or           t2, a3, s4
687:              bge          s2, s7, 689f
                  or           a7, a0, a5
689:              bne          t2, tp, 691f
                  nop
691:              sra          a1, s1, a1
                  sll          s10, a1, t0
                  bge          s4, a2, 694f
694:              sltu         s2, s4, a4
                  bgeu         s2, t5, 699f
                  and          s6, t5, a4
                  sll          a1, s10, t5
                  andi         s8, a3, 1024
699:              sll          tp, t5, a0
                  ori          t5, t5, 197
                  sub          t0, a7, s7
                  blt          s7, a4, 711f
                  sll          tp, s0, s8
                  bltu         s4, t0, 717f
                  addi         s5, t6, 816
                  bltu         s10, t5, 712f
                  beq          s8, ra, 710f
                  srli         a1, s11, 13
                  blt          s10, s11, 712f
710:              srli         sp, s1, 10
711:              sltiu        s3, ra, -1899
712:              slt          sp, gp, gp
                  andi         t0, t2, 350
                  bne          t5, t6, 724f
                  bltu         a0, t4, 735f
                  beq          s5, t4, 721f
717:              sll          s8, s10, s5
                  srli         a0, a5, 31
                  or           s3, s6, a1
                  srai         s6, a6, 26
721:              slt          t6, gp, a3
                  slti         s8, t5, 1612
                  sll          s6, a5, t1
724:              xor          t4, s2, s4
                  nop
                  sub          a0, t0, s4
                  sll          zero, a6, a5
                  lui          s5, 67866
                  la           a5, sub_1
                  sltu         a6, s3, s9
                  srli         s6, t6, 18
                  sltu         s7, t1, a7
                  sub          a2, ra, t6
                  addi         a5, a5, 610
                  bne          a1, a3, main_j2 #branch to jump instr
                  srl          a2, s4, a1
                  ori          a1, zero, 755
main_j2:          jalr         a1, a5, -609 #jump main -> sub_1
                  sra          a1, a5, a5
                  slt          zero, t1, t3
                  bgeu         s8, s9, 744f
                  sra          zero, s10, s0
                  xori         gp, s1, 114
                  slli         a0, a2, 29
                  slli         t6, s5, 1
                  addi         s7, s1, -1665
                  sll          t4, a0, s0
735:              slt          s7, t1, s7
                  and          zero, t3, ra
                  lui          a7, 564388
                  bgeu         s5, a1, 739f
739:              slti         a5, t3, -236
                  add          a3, t5, a7
                  xor          s11, s3, s8
                  sub          s11, t5, s5
                  sltu         a1, a5, sp
744:              addi         a5, s4, 1750
                  sltu         a4, a5, a3
                  srli         a1, s7, 2
                  addi         s6, zero, -1374
                  blt          ra, s2, 764f
                  andi         a7, s3, -1986
                  slt          a3, a1, s1
                  or           a2, a0, a4
                  sra          sp, s2, a6
                  slli         t6, ra, 7
                  ori          t0, s7, 1768
                  slt          a1, a3, s2
                  slli         s7, sp, 13
                  srl          a3, t6, a2
                  slli         ra, gp, 21
                  addi         zero, t1, -1560
                  and          s11, a4, t0
                  ori          s10, a4, -1583
                  sltu         s3, a0, gp
                  xor          t4, s4, s1
764:              slti         a3, s1, 1856
                  srai         a2, t5, 1
                  sltu         a5, ra, t4
                  srli         ra, s0, 8
                  bne          ra, ra, 784f
                  addi         a2, zero, 5 #init loop 1 counter
                  or           t5, t5, s2
                  addi         t6, zero, 14 #init loop 1 limit
                  xori         a5, s3, 1838
main_9_1_t:       auipc        s8, 533001
                  or           t0, s7, s1
                  addi         t5, t2, -538
                  addi         a2, a2, 1 #update loop 1 counter
                  addi         a3, zero, -10 #init loop 0 counter
                  lui          a7, 171489
                  addi         tp, zero, -20 #init loop 0 limit
                  srl          sp, s6, sp
main_9_0_t:       auipc        s11, 618817
                  addi         a3, a3, -3 #update loop 0 counter
                  and          s8, a6, s6
                  bge          a3, tp, main_9_0_t #branch for loop 0
                  ori          s10, a1, -903
                  bltu         a2, t6, main_9_1_t #branch for loop 1
                  sll          s4, s4, s5
                  srai         s5, a3, 20
                  bltu         a7, zero, 782f
                  slti         a6, s2, -1991
                  srai         s8, s8, 21
                  lui          zero, 146856
                  bne          s0, s11, 776f
                  slli         a3, tp, 6
776:              sll          a1, s6, a2
                  xor          t0, a5, s9
                  srai         gp, sp, 27
                  sll          a1, a6, a1
                  sltu         s11, t6, s0
                  xor          gp, a1, s10
782:              slt          a6, s3, t0
                  srli         s9, tp, 14
784:              andi         a6, zero, 373
                  lui          s4, 583712
                  sra          s5, ra, s5
                  slti         a4, tp, 572
                  srl          a7, s6, s4
                  addi         a1, zero, -1450
                  xor          s6, gp, a2
                  and          t5, t3, s10
                  xori         a0, ra, 209
                  andi         a1, a1, -169
                  srli         a6, a1, 20
                  srl          s6, a2, s4
                  beq          t2, a7, 798f
                  bne          t2, gp, 799f
798:              sub          s11, s1, s3
799:              xor          t6, s7, a1
                  bne          s8, t6, 805f
                  ori          s10, a2, 1966
                  sra          s6, sp, t4
                  sltiu        s4, s3, 2015
                  sll          s0, s7, s11
805:              bltu         t6, s2, 814f
                  beq          gp, t5, 807f
807:              slt          s11, s5, s3
                  sll          a6, t4, t6
                  or           a6, sp, t3
                  auipc        a1, 565507
                  auipc        s5, 637665
                  or           a1, ra, a1
                  beq          t4, s6, 816f
814:              or           a7, a0, s0
                  lui          s9, 303210
816:              ori          s0, a1, 1951
                  or           t5, t3, s11
                  or           a5, a7, s0
                  bge          gp, a1, 839f
                  andi         s5, sp, -1287
                  srl          a5, ra, s6
                  sltu         t5, t1, s9
                  xor          t0, s7, a4
                  beq          a6, a3, 834f
                  bge          t1, a7, 839f
                  sll          a5, t4, zero
                  ori          ra, t6, 502
                  slti         s7, t2, -1730
                  addi         ra, t0, 186
                  sltu         a7, s0, t0
                  sll          a2, a3, s11
                  slli         a7, gp, 18
                  and          t4, s1, s1
834:              srl          a0, s10, s2
                  ori          a0, t1, 481
                  sub          a7, s5, t4
                  blt          s0, a4, 838f
838:              srl          a3, sp, t2
839:              xori         t5, a4, 768
                  sltu         s7, t4, tp
                  slti         s0, a7, -1172
                  bne          t4, a1, 844f
                  bgeu         s1, s5, 859f
844:              sltu         t0, a5, a2
                  xor          s6, s10, a7
                  bne          t5, s1, 856f
                  auipc        a1, 794406
                  beq          gp, a1, 860f
                  sll          s2, sp, t2
                  slli         a2, s4, 11
                  bge          a0, s9, 854f
                  add          a0, s0, sp
                  bgeu         s2, s10, 866f
854:              blt          s1, s6, 855f
855:              andi         tp, t3, 1979
856:              sltiu        a2, t1, -1476
                  slli         s11, s3, 15
                  slt          a4, s7, tp
859:              blt          t2, s7, 871f
860:              srl          s0, t0, t0
                  slli         t2, zero, 29
                  bge          t5, s7, 863f
863:              sub          ra, s7, s11
                  srai         s6, t1, 21
                  addi         s5, t0, -408
866:              bne          a3, zero, 876f
                  srli         t5, t0, 14
                  sra          s8, s7, t4
                  srli         s0, t2, 27
                  addi         a3, s1, 1199
871:              xori         s5, s9, -696
                  bne          a1, a1, 882f
                  bltu         a5, t0, 876f
                  sra          s7, a2, ra
                  sub          s2, t0, t4
876:              slti         a1, t0, -1559
                  bne          s11, a0, 883f
                  nop
                  sra          s10, s2, t5
                  beq          tp, s3, 900f
                  blt          a1, t3, 886f
882:              sltu         sp, t6, t3
883:              sub          a1, t3, s3
                  blt          t4, a2, 886f
                  add          t5, s3, s11
886:              sra          s10, a5, gp
                  blt          s0, s2, 903f
                  sub          sp, s4, ra
                  sll          s3, s6, s6
                  sub          a1, ra, t5
                  auipc        zero, 80822
                  or           a5, s3, s0
                  and          zero, a2, s9
                  sll          a2, ra, a1
                  bne          a2, s11, 904f
                  sll          t2, a5, t3
                  slti         a7, s8, -1097
                  sltiu        a0, t2, -838
                  andi         s4, zero, -381
900:              beq          a1, a6, 916f
                  ori          s5, s3, -1472
                  sltu         s0, s0, s6
903:              xori         a7, a3, -162
904:              ori          t2, a1, -1938
                  ori          s6, t4, 1773
                  or           s8, a1, t2
                  addi         s7, s8, 1600
                  xori         t4, s1, 1821
                  and          zero, s11, s8
                  slti         tp, a4, -790
                  sra          s3, tp, a6
                  and          a1, s5, t3
                  ori          a5, t2, 1258
                  bgeu         zero, tp, 928f
                  sltu         s11, a4, a4
916:              sra          s2, a7, t1
                  or           s0, a4, s10
                  sltu         s8, a3, gp
                  lui          a4, 692526
                  slli         a7, s8, 16
                  andi         ra, a0, 895
                  ori          a4, a0, 148
                  bltu         t2, ra, 939f
                  nop
                  bltu         a7, a3, 928f
                  srl          a1, a0, a5
                  lui          a7, 546162
928:              beq          s11, a6, 932f
                  srl          s0, a5, t3
                  add          a3, a5, s6
                  addi         s8, s5, -1403
932:              sll          t2, sp, a2
                  andi         gp, s1, -1360
                  xori         s2, a6, -871
                  slli         a0, tp, 27
                  or           gp, t5, s0
                  srli         s5, s8, 26
                  bltu         tp, s11, 943f
939:              slli         s5, a4, 29
                  xori         zero, s7, -1996
                  sub          s7, t4, s5
                  auipc        a7, 338184
943:              srai         a3, s3, 22
                  sub          s3, a4, zero
                  sll          s2, t2, sp
                  ori          t5, s8, 1515
                  lui          zero, 975758
                  slt          t4, s5, s3
                  sra          a6, s2, t2
                  sltiu        t5, s5, 1576
                  bge          s9, a1, 953f
                  bltu         gp, a4, 968f
953:              and          t4, t5, a2
                  sltiu        a3, s9, 1723
                  bltu         s5, a5, 956f
956:              srli         t4, a3, 21
                  lui          t6, 1046310
                  addi         s6, s8, -460
                  and          s6, a7, s8
                  sub          a7, s3, t6
                  sltu         gp, gp, t2
                  bltu         a3, t4, 964f
                  sll          s6, s10, s2
964:              add          a3, a0, t5
                  addi         a7, zero, 10 #init loop 0 counter
                  and          a5, s11, t6
                  sub          t0, t4, a0
                  addi         s7, zero, 7 #init loop 0 limit
main_10_0_t:      xori         s0, s9, -53
                  xori         a6, zero, -1225
                  addi         a7, a7, -5 #update loop 0 counter
                  bge          a7, s7, main_10_0_t #branch for loop 0
                  srl          sp, a0, sp
                  srl          s3, s2, s10
                  and          s6, s3, a4
                  bge          ra, s7, 976f
968:              beq          ra, tp, 978f
                  nop
                  slli         s9, t3, 29
                  or           a1, tp, a6
                  blt          s6, gp, 984f
                  bltu         s0, tp, 993f
                  beq          s3, t6, 975f
975:              bltu         a6, a5, 977f
976:              slli         a5, s11, 5
977:              bge          s11, sp, 983f
978:              sltiu        ra, a4, -1957
                  nop
                  slli         t0, s6, 18
                  srli         ra, t0, 15
                  lui          s5, 831060
983:              blt          ra, s7, 984f
984:              and          t4, a3, ra
                  sub          t6, t5, t5
                  bltu         a4, s8, 987f
987:              nop
                  xori         s6, s10, 1577
                  and          t5, s0, s3
                  sltiu        t4, s6, -1539
                  sub          ra, a5, tp
                  bne          zero, t0, 995f
993:              sll          s0, a7, t5
                  bne          s8, zero, 1004f
995:              slli         s7, a4, 17
                  srai         sp, s6, 18
                  add          s11, s6, s2
                  nop
                  sltu         gp, a2, s3
                  sltu         s7, a4, t0
                  srai         sp, a5, 27
                  andi         ra, tp, 1498
                  srli         s8, tp, 2
1004:             sltu         s0, a1, s6
                  ori          sp, t2, -879
                  sll          s11, a4, s9
                  sub          t6, s11, a2
                  add          a4, t3, gp
                  slt          t2, zero, a7
                  srai         sp, s2, 3
                  addi         s10, t1, 1438
                  sub          s4, t4, a0
                  xori         a2, gp, -1089
                  nop
                  ori          t2, a1, -1401
                  xor          s9, s9, s7
                  sra          t0, s8, s4
                  bgeu         tp, t3, 1034f
                  srl          a0, t6, sp
                  xori         t5, s9, 1653
                  blt          tp, s2, 1034f
                  srai         s6, a4, 13
                  ori          a3, s7, 1234
                  addi         t5, t5, -1454
                  slt          t2, tp, s11
                  lui          a1, 1013590
                  or           s4, zero, s3
                  beq          s8, sp, 1048f
                  la           s6, sub_2
                  slt          t4, a4, a0
                  slti         a7, t1, -809
                  andi         t2, sp, -1751
                  or           sp, t1, a4
                  lui          t6, 340208
                  and          s2, gp, s9
                  add          a4, t2, s4
                  addi         s11, s7, -96
                  ori          t5, s0, 1989
                  addi         s6, s6, 410
                  auipc        t0, 363785
main_j1:          jalr         a1, s6, -409 #jump main -> sub_2
                  sltiu        a0, t0, 673
                  srl          t4, t1, a0
                  slt          gp, s4, s1
                  srl          a4, s2, s5
                  andi         gp, a7, -186
1034:             slti         t4, s2, -1253
                  or           a6, t1, s11
                  bgeu         t0, s6, 1041f
                  bltu         s4, a0, 1039f
                  slti         s0, t6, -758
1039:             blt          s5, a4, 1041f
                  sltu         a7, s0, s4
1041:             ori          gp, a5, 1612
                  slt          s2, s0, a2
                  addi         t2, t2, -973
                  xor          a7, s6, ra
                  sltu         ra, s1, a7
                  and          ra, a5, s1
                  nop
1048:             slti         gp, gp, -1216
                  bge          ra, s6, 1051f
                  slli         s6, t6, 23
1051:             srl          s10, t4, a4
                  bne          t6, s0, 1062f
                  and          sp, s7, s0
                  slli         a0, t1, 1
                  slli         ra, a7, 6
                  xori         s4, t4, -1335
                  auipc        a6, 636514
                  sll          s7, a2, s9
                  srai         sp, s3, 30
                  srl          s2, gp, t3
                  sltu         gp, s7, s3
1062:             sra          s3, t4, s5
                  bgeu         s4, t4, 1073f
                  slti         s5, s0, 1602
                  lui          t6, 773301
                  bne          t3, s8, 1067f
1067:             bltu         t3, s3, 1083f
                  slli         ra, s3, 18
                  bne          a6, zero, 1074f
                  srli         gp, a4, 31
                  xori         s10, s0, -1178
                  bltu         a7, a2, 1074f
1073:             sltiu        a7, sp, 384
1074:             xor          tp, zero, a1
                  auipc        gp, 967203
                  lui          s8, 150808
                  slti         a7, s2, 472
                  srai         ra, t6, 1
                  sltu         s9, gp, tp
                  bne          a3, s0, 1092f
                  slt          ra, t2, s5
                  bne          t1, s5, 1095f
1083:             srai         s2, t3, 29
                  addi         s2, t2, -1382
                  and          t6, s2, a3
                  ori          zero, t4, 1266
                  sltiu        s7, s11, 967
                  lui          a3, 781772
                  add          s4, s8, a3
                  srli         s0, a5, 17
                  slti         s8, a7, -665
1092:             sll          s11, t4, t5
                  sub          s10, t0, s10
                  add          t6, s6, s5
1095:             srli         gp, s5, 12
                  la x28, test_done
                  jalr x0, x28, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            sll          a3, s1, s4
                  srai         s2, s2, 29
                  addi         t5, t5, -596
                  slt          t4, t3, tp
                  add          t6, gp, s10
                  srl          a0, a1, s11
                  addi         t1, t1, -12
                  add          s6, s11, a3
                  addi         t6, s1, -1399
                  sw           a1, 4(t1)
                  addi         tp, zero, -1085
                  addi         a7, zero, 7 #init loop 1 counter
                  addi         s10, tp, 1708
                  addi         s9, zero, -3 #init loop 1 limit
                  sra          ra, s1, sp
                  auipc        s11, 342074
                  xor          tp, t2, s4
sub_1_11_1_t:     slti         t6, t3, -442
                  addi         a7, a7, -5 #update loop 1 counter
                  auipc        gp, 817650
                  add          gp, gp, a4
                  addi         a1, zero, -6 #init loop 0 counter
                  xor          a0, a1, t5
                  addi         a5, zero, -11 #init loop 0 limit
                  addi         s3, t5, 984
                  slt          s6, a7, ra
                  auipc        t4, 843405
sub_1_11_0_t:     and          s0, s10, ra
                  xori         ra, a1, -1282
                  add          s7, s11, t1
                  sub          a0, s11, t3
                  addi         a1, a1, -3 #update loop 0 counter
                  bge          a1, a5, sub_1_11_0_t #branch for loop 0
                  srai         tp, sp, 1
                  ori          t0, t5, -1483
                  and          t0, t4, a1
                  addi         t2, s2, 711
                  lui          s2, 764038
                  or           s6, s2, s0
                  or           s8, s3, a5
                  slti         s8, s2, 1592
                  xor          s0, a2, a6
                  slli         s0, a3, 12
                  bne          a7, s9, sub_1_11_1_t #branch for loop 1
                  srli         zero, a2, 4
                  addi         a5, zero, -2 #init loop 1 counter
                  addi         a4, zero, 1 #init loop 1 limit
                  or           t4, s3, a0
sub_1_6_1_t:      slt          a0, t5, s0
                  auipc        s7, 758003
                  addi         a5, a5, 5 #update loop 1 counter
                  addi         s10, zero, 422
                  ori          s5, s0, 576
                  add          t0, a4, t0
                  addi         ra, zero, 10 #init loop 0 counter
                  addi         s9, zero, 12 #init loop 0 limit
                  xori         s6, s1, 1159
                  or           a0, t3, s10
                  add          t2, s5, a5
                  xor          a7, tp, s11
                  nop
sub_1_6_0_t:      ori          t6, gp, 1773
                  srl          a0, t1, s3
                  srli         s11, t2, 3
                  addi         ra, ra, 10 #update loop 0 counter
                  blt          ra, s9, sub_1_6_0_t #branch for loop 0
                  nop
                  lui          t0, 215974
                  bltu         a5, a4, sub_1_6_1_t #branch for loop 1
                  sll          s11, s4, s8
                  addi         s7, zero, 5 #init loop 1 counter
                  slt          a1, zero, a3
                  add          a0, t4, t0
                  addi         s11, zero, 4 #init loop 1 limit
                  xor          s10, a3, gp
sub_1_2_1_t:      ori          zero, a7, 1034
                  ori          s6, a7, -1523
                  add          s5, s5, t1
                  and          sp, s9, t1
                  addi         s7, s7, -3 #update loop 1 counter
                  slti         s4, t0, 27
                  and          s10, t1, s0
                  addi         a2, zero, 10 #init loop 0 counter
                  sltu         s6, t2, sp
                  xori         s10, s11, 1835
                  addi         t2, zero, 17 #init loop 0 limit
                  slti         s10, a0, -1649
                  sll          t4, zero, a5
                  add          a4, s0, s1
sub_1_2_0_t:      xor          t0, s11, s6
                  sll          s9, s8, a6
                  addi         a2, a2, 7 #update loop 0 counter
                  ori          a6, a5, -1050
                  and          t6, s10, t0
                  beq          a2, t2, sub_1_2_0_t #branch for loop 0
                  bgeu         s7, s11, sub_1_2_1_t #branch for loop 1
                  slli         s4, s11, 6
                  addi         s7, zero, -5 #init loop 1 counter
                  sltiu        a5, s2, -218
                  or           gp, s1, t1
                  slti         t4, ra, 1592
                  srl          tp, s2, s7
                  lui          s5, 52327
                  sra          a4, a6, ra
                  srai         tp, a2, 17
                  addi         a0, zero, 11 #init loop 1 limit
                  slt          gp, a6, s1
sub_1_10_1_t:     ori          t2, tp, -68
                  addi         s7, s7, 2 #update loop 1 counter
                  nop
                  addi         a7, zero, 4 #init loop 0 counter
                  nop
                  addi         t5, zero, 2 #init loop 0 limit
                  sub          tp, s9, a5
sub_1_10_0_t:     or           t4, t5, s0
                  sra          s2, a3, tp
                  slt          a5, a7, s11
                  slt          t4, s9, s7
                  and          s11, t4, s2
                  auipc        tp, 487269
                  addi         a7, a7, -2 #update loop 0 counter
                  bge          a7, t5, sub_1_10_0_t #branch for loop 0
                  slt          t0, a1, t3
                  beq          s7, a0, sub_1_10_1_t #branch for loop 1
                  andi         s2, tp, -323
                  addi         a2, zero, 1 #init loop 1 counter
                  add          gp, a5, t5
                  addi         t2, zero, 20 #init loop 1 limit
                  add          s3, tp, s8
sub_1_3_1_t:      addi         t0, zero, 736
                  addi         a2, a2, 3 #update loop 1 counter
                  srai         a3, t0, 3
                  sra          ra, s5, t5
                  addi         s9, zero, -9 #init loop 0 counter
                  sltu         a4, a3, t0
                  addi         a0, zero, -11 #init loop 0 limit
                  auipc        a7, 162318
sub_1_3_0_t:      sltiu        t0, s8, 1322
                  add          a3, t4, s6
                  addi         s9, s9, -2 #update loop 0 counter
                  bge          s9, a0, sub_1_3_0_t #branch for loop 0
                  sltiu        a4, s3, -1195
                  xori         a3, sp, 1483
                  sltiu        t5, s6, 315
                  bltu         a2, t2, sub_1_3_1_t #branch for loop 1
                  srl          ra, t5, s1
                  addi         s6, zero, -6 #init loop 1 counter
                  addi         s3, zero, 12 #init loop 1 limit
sub_1_8_1_t:      xori         a2, a6, 388
                  addi         s6, s6, 6 #update loop 1 counter
                  addi         t0, zero, 8 #init loop 0 counter
                  sll          zero, tp, s4
                  addi         gp, zero, 8 #init loop 0 limit
sub_1_8_0_t:      nop
                  addi         t0, t0, -5 #update loop 0 counter
                  bgeu         t0, gp, sub_1_8_0_t #branch for loop 0
                  beq          s6, s3, sub_1_8_1_t #branch for loop 1
                  slli         t4, a0, 27
                  addi         s4, zero, -8 #init loop 1 counter
                  xori         a7, t4, -1832
                  addi         s10, zero, 9 #init loop 1 limit
                  lui          s8, 1453
                  andi         t0, s9, 775
                  xor          s2, s8, s10
sub_1_1_1_t:      nop
                  nop
                  srai         t2, s4, 14
                  xor          s6, a0, s9
                  sra          sp, a2, s4
                  addi         t0, s0, -931
                  nop
                  sltiu        t5, s4, 1027
                  addi         s4, s4, 6 #update loop 1 counter
                  andi         a5, t6, -113
                  xori         a7, s10, -716
                  slt          s8, a7, s0
                  sltu         a1, zero, zero
                  nop
                  addi         t6, zero, 5 #init loop 0 counter
                  sra          s2, a4, a0
                  slt          s2, s6, s7
                  addi         t4, zero, -3 #init loop 0 limit
sub_1_1_0_t:      sltiu        t2, a5, 1359
                  nop
                  addi         t6, t6, -7 #update loop 0 counter
                  addi         a7, s6, -178
                  andi         a6, s11, -267
                  lui          a1, 465832
                  auipc        s7, 562558
                  slt          a0, s2, s10
                  bge          t6, t4, sub_1_1_0_t #branch for loop 0
                  bltu         s4, s10, sub_1_1_1_t #branch for loop 1
                  sll          a4, s9, a1
                  addi         t0, zero, 4 #init loop 1 counter
                  ori          s10, s11, -1145
                  addi         t4, zero, 12 #init loop 1 limit
sub_1_0_1_t:      slti         t2, a0, 1187
                  addi         a6, s6, -1837
                  andi         t6, s2, -1330
                  addi         t0, t0, 8 #update loop 1 counter
                  addi         a0, zero, 7 #init loop 0 counter
                  xor          s11, t2, s1
                  sltu         s5, t5, t4
                  addi         s4, zero, -9 #init loop 0 limit
                  addi         s7, t5, 1451
sub_1_0_0_t:      auipc        a4, 18490
                  slt          s8, s5, s0
                  addi         a0, a0, -2 #update loop 0 counter
                  lui          s11, 346103
                  beq          a0, s4, sub_1_0_0_t #branch for loop 0
                  sltu         t5, s11, s0
                  srai         a5, s8, 15
                  beq          t0, t4, sub_1_0_1_t #branch for loop 1
                  ori          s11, t6, 814
                  addi         t2, zero, 1 #init loop 1 counter
                  sltiu        s11, t5, 484
                  srl          a4, t0, a3
                  and          a4, a3, a2
                  addi         t5, a2, 1800
                  slt          a4, s3, s2
                  addi         s0, zero, 10 #init loop 1 limit
                  sltu         t0, s8, t3
sub_1_9_1_t:      and          a4, gp, a6
                  addi         t2, t2, 1 #update loop 1 counter
                  sra          s10, t1, s10
                  addi         s9, zero, 9 #init loop 0 counter
                  addi         a2, zero, 9 #init loop 0 limit
                  xor          s6, s11, tp
                  lui          ra, 1020633
                  lui          a5, 448135
sub_1_9_0_t:      slti         a7, s0, 749
                  or           s4, s9, t3
                  addi         s9, s9, -4 #update loop 0 counter
                  bgeu         s9, a2, sub_1_9_0_t #branch for loop 0
                  lui          s7, 830085
                  srl          t4, s1, ra
                  blt          t2, s0, sub_1_9_1_t #branch for loop 1
                  sltu         a0, s4, s11
                  addi         s0, zero, 10 #init loop 1 counter
                  addi         s11, zero, -13 #init loop 1 limit
sub_1_7_1_t:      lui          sp, 604964
                  ori          s9, s7, 807
                  addi         s0, s0, -1 #update loop 1 counter
                  addi         s5, zero, -10 #init loop 0 counter
                  addi         s3, zero, -20 #init loop 0 limit
sub_1_7_0_t:      auipc        a3, 658090
                  addi         s5, s5, -3 #update loop 0 counter
                  bge          s5, s3, sub_1_7_0_t #branch for loop 0
                  bne          s0, s11, sub_1_7_1_t #branch for loop 1
                  xor          t4, s5, t6
                  addi         s4, zero, 4 #init loop 1 counter
                  slti         t2, s0, 172
                  addi         ra, zero, 3 #init loop 1 limit
                  add          t0, a7, s7
                  srl          a5, s3, s4
sub_1_4_1_t:      sltu         a1, zero, tp
                  addi         s4, s4, -1 #update loop 1 counter
                  nop
                  slli         s2, s1, 10
                  addi         gp, s8, 1603
                  lui          zero, 787970
                  or           gp, ra, tp
                  addi         s8, zero, -2 #init loop 0 counter
                  or           s10, t0, s0
                  addi         tp, zero, -12 #init loop 0 limit
                  srai         a3, s3, 12
                  sra          s0, tp, t3
                  sltiu        a5, ra, -41
                  slt          t6, a1, t0
                  sltu         sp, a3, s8
sub_1_4_0_t:      slti         s3, ra, 1198
                  srai         s0, sp, 3
                  addi         s8, s8, -10 #update loop 0 counter
                  bne          s8, tp, sub_1_4_0_t #branch for loop 0
                  addi         t2, s0, -1488
                  bgeu         s4, ra, sub_1_4_1_t #branch for loop 1
                  slti         s6, t0, -759
                  addi         a0, zero, -2 #init loop 1 counter
                  slt          t5, s9, a4
                  slti         a7, s3, 1814
                  addi         tp, zero, -6 #init loop 1 limit
                  sltu         s11, s11, t6
                  add          a2, a3, tp
                  nop
                  sltiu        s5, a4, 953
                  auipc        s11, 160668
                  sra          s11, a2, s1
                  srl          s4, a5, a0
sub_1_12_1_t:     ori          t6, s8, -1192
                  lui          a4, 666740
                  addi         a0, a0, -4 #update loop 1 counter
                  addi         gp, zero, 0 #init loop 0 counter
                  addi         sp, zero, 17 #init loop 0 limit
sub_1_12_0_t:     lui          t0, 261940
                  slli         a1, ra, 14
                  addi         gp, gp, 7 #update loop 0 counter
                  bltu         gp, sp, sub_1_12_0_t #branch for loop 0
                  nop
                  addi         s2, zero, -44
                  beq          a0, tp, sub_1_12_1_t #branch for loop 1
                  addi         t4, t6, -1704
                  srl          s7, gp, t3
                  slt          s10, gp, s6
                  add          a4, a3, s5
                  xori         s7, s9, -371
                  bltu         ra, t4, 12f
                  bltu         a1, t5, 25f
                  or           a3, gp, a2
                  sltu         ra, a3, s1
                  bne          a6, s9, 9f
9:                bge          s8, t1, 29f
                  xor          t2, t6, s5
                  beq          t2, tp, 19f
12:               slt          s9, t6, s1
                  nop
                  xori         s6, t1, -1861
                  andi         s11, t2, -1577
                  lui          ra, 545710
                  ori          sp, s4, -913
                  sub          ra, s8, a0
19:               ori          t2, s9, 809
                  bltu         a2, zero, 34f
                  sltiu        a1, t5, 1818
                  srai         a1, a5, 4
                  or           s11, t3, sp
                  bgeu         ra, a2, 25f
25:               blt          tp, t4, 31f
                  andi         s8, s6, 1098
                  slli         t0, s11, 24
                  sltu         s9, a7, s11
29:               blt          s3, t6, 39f
                  auipc        s4, 729640
31:               beq          ra, s7, 48f
                  srai         a7, t1, 2
                  slt          gp, a4, s5
34:               slli         a3, a1, 18
                  or           s9, t0, t0
                  and          a6, t0, a6
                  slli         s2, s6, 27
                  xori         a6, a0, 137
39:               xor          s5, s7, t3
                  addi         sp, s4, -761
                  xori         t5, s1, -293
                  add          tp, t2, s2
                  slli         t6, ra, 6
                  sll          a0, a7, s4
                  lui          sp, 1008780
                  slti         a2, tp, -1764
                  slt          t6, s0, sp
48:               ori          s2, t4, -1950
                  xori         zero, t2, -544
                  nop
                  sub          s9, s0, a4
                  slli         t5, gp, 13
                  srli         a3, s3, 4
                  bne          t6, s3, 65f
                  slli         s10, s5, 28
                  sra          a0, a7, a6
                  bltu         s7, s3, 59f
                  auipc        s2, 99430
59:               lui          s10, 891163
                  slli         t5, s9, 25
                  srai         t4, s3, 28
                  beq          a3, t3, 64f
                  blt          t5, t1, 80f
64:               sra          s4, s7, s4
65:               bltu         s0, t4, 66f
66:               slti         t2, ra, -63
                  beq          t6, s4, 84f
                  addi         a1, s3, 46
                  or           t0, t1, tp
                  srl          tp, s11, a6
                  srai         a3, sp, 14
                  andi         a6, t5, -1332
                  addi         s2, t3, 656
                  sltu         t0, a5, ra
                  xori         sp, s0, -1379
                  slli         a5, s10, 22
                  or           t0, s5, s7
                  sltiu        s8, s1, 921
                  srli         a6, ra, 19
80:               srl          s11, t1, a6
                  bgeu         s10, gp, 91f
                  xori         sp, t5, 795
                  bgeu         tp, a0, 90f
84:               srai         s8, zero, 24
                  bltu         s8, s2, 102f
                  addi         t5, t0, 1137
                  bge          t4, s6, 93f
                  sltu         s10, a1, s1
                  beq          t3, sp, 90f
90:               slt          tp, s1, s1
91:               srli         a7, s2, 4
                  andi         a0, s8, -1785
93:               nop
                  beq          zero, a1, 114f
                  xor          s0, t4, a2
                  bgeu         a4, a4, 107f
                  and          t6, a7, s2
                  ori          s8, a7, -1446
                  slli         s3, t0, 13
                  sub          s11, t0, s2
                  srl          s5, t0, s1
102:              bgeu         tp, tp, 104f
                  and          s7, a7, s1
104:              srl          t6, a3, t1
                  slli         gp, t1, 14
                  and          a0, a3, tp
107:              auipc        s10, 663646
                  slti         a6, s11, 1860
                  bgeu         t2, a6, 116f
                  blt          a3, t1, 111f
111:              andi         a6, a4, 245
                  sub          a7, a0, a7
                  bgeu         sp, t0, 132f
114:              bgeu         s5, t2, 115f
115:              bge          t0, s3, 134f
116:              bgeu         zero, t4, 126f
                  bge          s5, s10, 119f
                  xori         s3, tp, 856
119:              sub          s10, t3, a7
                  lui          s7, 823832
                  sub          t2, s8, t2
                  addi         a5, s8, -431
                  xor          a3, s11, gp
                  slt          s8, s4, t0
                  srli         s8, t2, 25
126:              xor          s3, gp, t2
                  blt          t5, a5, 135f
                  slt          a6, t2, s3
                  xori         ra, t0, 46
                  srli         s8, zero, 31
                  lui          ra, 160988
132:              bgeu         s6, t5, 134f
                  blt          s8, t6, 143f
134:              or           s2, t2, s5
135:              beq          s11, sp, 152f
                  srl          t5, t6, s11
                  sltiu        s0, s4, 781
                  slt          s6, s6, a5
                  bge          sp, s2, 153f
                  bge          a3, s9, 146f
                  slli         a3, s1, 3
                  xori         s5, s11, -666
143:              sub          t0, t3, s4
                  sra          s3, a5, s11
                  xor          a0, s5, s1
146:              sll          a4, t4, a2
                  add          a4, a3, a6
                  nop
                  or           tp, ra, t2
                  sub          t4, s7, ra
                  andi         zero, s0, 1575
152:              slt          a1, a7, a4
153:              lui          ra, 548019
                  and          sp, s8, s7
                  sltu         s5, s3, t2
                  sltu         t5, a5, t2
                  or           s7, sp, s11
                  add          t5, ra, t2
                  and          t2, gp, t2
                  blt          ra, s2, 161f
161:              or           a5, s0, t2
                  srai         a0, a2, 22
                  sub          a1, s10, t2
                  sltu         s4, s2, sp
                  bgeu         sp, s11, 166f
166:              ori          gp, t1, 225
                  slt          s5, a5, s8
                  ori          s0, t5, -506
                  andi         s6, t2, 824
                  srli         s11, s9, 18
                  auipc        t4, 558252
                  srli         t4, a2, 25
                  auipc        s3, 20528
                  sra          a0, s1, s11
                  slt          a0, s4, s5
                  srl          a5, a3, t5
                  beq          s8, a1, 183f
                  xor          a1, a5, s5
                  and          zero, s9, a2
                  lui          gp, 496290
                  slt          a6, tp, a6
                  srai         a3, a3, 21
183:              or           t4, a3, ra
                  sra          s5, a7, s7
                  bgeu         s9, t0, 204f
                  sltiu        sp, s1, 253
                  srli         t6, gp, 14
                  srli         zero, s1, 15
                  beq          t0, s10, 206f
                  ori          t0, gp, 1531
                  addi         s10, s5, 473
                  bge          s7, s11, 194f
                  slti         s0, t4, -887
194:              addi         a0, a2, -1311
                  beq          s10, s9, 212f
                  srai         zero, s11, 11
                  sub          s6, gp, s9
                  sra          t6, a3, a5
                  bgeu         s4, s5, 200f
200:              sltiu        a2, s0, 92
                  lui          a0, 787250
                  bgeu         a1, s0, 203f
203:              sltiu        t6, s8, -1660
204:              bltu         t2, s10, 212f
                  sltiu        s3, a4, 658
206:              ori          a2, sp, 201
                  bltu         t4, ra, 218f
                  srl          t6, s6, a3
                  nop
                  beq          s8, s8, 220f
                  lui          s3, 709196
212:              beq          sp, s5, 229f
                  srl          s8, t5, s5
                  beq          s7, s7, 234f
                  srl          s6, a0, a0
                  and          a4, t4, ra
                  nop
218:              andi         s8, a5, 1125
                  beq          s2, t0, 229f
220:              beq          a2, a6, 231f
                  slt          a0, s7, a1
                  bne          zero, sp, 229f
                  sltu         a1, a2, a2
                  sltu         t4, s5, zero
                  add          t5, sp, t2
                  slti         t0, t4, 1251
                  sltiu        s2, s1, -1058
                  sra          t4, s1, s6
                  bge          t0, s5, sub_1_j3 #branch to jump instr
                  xori         a3, s2, -865
                  srli         sp, a3, 16
                  slti         t6, s8, 1870
                  slt          s5, s11, s7
                  xor          ra, s11, a5
                  ori          s5, s9, -1365
                  slt          t6, s8, a3
sub_1_j3:         jal          a1, sub_4 #jump sub_1 -> sub_4
                  ori          a1, t1, 1471
                  sll          t6, a0, zero
229:              nop
                  sub          sp, s9, t4
231:              slt          s7, s8, s2
                  xor          t0, t0, sp
                  srl          a6, s6, s1
234:              ori          t6, gp, 736
                  sltiu        s7, a7, 1686
                  slli         t4, a1, 25
                  sll          t5, a5, s0
                  or           a7, t1, a0
                  bltu         t5, t0, 259f
                  xor          s11, a0, s5
                  bne          a1, a3, 248f
                  nop
                  lui          a1, 940637
                  srl          t4, t1, t2
                  blt          a3, t2, 246f
246:              bne          a3, a7, 247f
247:              slli         s3, sp, 18
248:              srli         a5, a3, 18
                  sra          s7, a0, t6
                  slti         a5, t2, -1136
                  beq          s2, s10, 271f
                  sll          gp, t1, s3
                  or           a3, s1, s0
                  lui          s2, 166997
                  sub          a5, a4, a7
                  sub          a5, s9, s6
                  slti         t4, s0, -57
                  add          s3, s2, s0
259:              sub          t6, t0, tp
                  nop
                  beq          a4, t6, 280f
                  bgeu         a0, s11, 270f
                  xori         a2, a6, 1316
                  blt          t2, s5, 284f
                  auipc        a3, 1015924
                  xori         zero, a1, 618
                  xor          s8, s9, zero
                  slti         s0, s6, 207
                  blt          gp, t0, 288f
270:              sll          s6, a1, gp
271:              bgeu         s5, s8, 282f
                  slli         s10, a5, 5
                  blt          a0, s11, 290f
                  xor          zero, s6, t5
                  andi         s4, gp, 1103
                  xor          t6, a3, s6
                  slli         a6, t5, 22
                  xori         t0, t6, -257
                  sll          t5, t4, t4
280:              bltu         a7, tp, 291f
                  and          a1, s7, s3
282:              or           s3, s1, a1
                  srai         t5, a1, 2
284:              srl          t4, s4, s3
                  xor          s8, t0, s10
                  xor          s6, s3, a4
                  xori         s5, s10, -600
288:              bltu         a7, a5, 289f
289:              bltu         s5, a5, 296f
290:              bne          a1, a5, 307f
291:              or           ra, s0, a6
                  bge          a6, s9, 293f
293:              xori         t2, s1, -376
                  blt          s10, a7, 296f
                  bltu         s5, t6, 315f
296:              slti         a7, a2, -91
                  beq          a7, s9, 298f
298:              slt          t2, a7, s7
                  and          a4, t3, a0
                  bge          a3, s2, 310f
                  bgeu         t3, gp, 302f
302:              beq          s1, gp, 310f
                  slti         t6, s10, -1264
                  sra          t4, gp, t5
                  sltu         t2, gp, a3
                  xori         a1, ra, 432
307:              xor          s10, s10, t4
                  beq          t0, t1, 325f
                  addi         a5, a6, -1394
310:              bltu         a0, tp, 330f
                  srli         s5, s0, 15
                  slt          sp, s4, s1
                  slli         s5, a2, 9
                  sll          t5, s9, t2
315:              srai         gp, ra, 4
                  nop
                  nop
                  srai         a7, a4, 1
                  andi         a4, sp, -332
                  srli         a6, tp, 25
                  bgeu         t2, a4, 327f
                  addi         tp, a0, 1504
                  lui          s9, 473527
                  ori          s7, t1, -390
325:              or           a7, t2, s0
                  bge          s3, a2, 328f
327:              sltu         s10, s3, s4
328:              xor          a7, s6, s4
                  andi         a0, a1, 1782
330:              sltiu        t5, t5, 94
                  andi         s4, tp, 1392
                  addi         s10, zero, -7 #init loop 1 counter
                  auipc        a7, 223148
                  addi         gp, zero, 17 #init loop 1 limit
                  andi         a4, s9, -1450
sub_1_5_1_t:      and          s9, t3, s8
                  addi         s10, s10, 4 #update loop 1 counter
                  addi         s0, zero, 8 #init loop 0 counter
                  slli         s8, a7, 6
                  addi         s6, zero, 7 #init loop 0 limit
sub_1_5_0_t:      slti         s11, zero, -161
                  ori          s7, s4, -2014
                  addi         s0, s0, -4 #update loop 0 counter
                  xor          t4, s3, a1
                  slti         a1, s6, -654
                  bgeu         s0, s6, sub_1_5_0_t #branch for loop 0
                  sltiu        a3, a1, 2043
                  srli         s5, t0, 3
                  or           sp, a1, s6
                  bltu         s10, gp, sub_1_5_1_t #branch for loop 1
                  or           a4, a6, s5
                  bge          a4, t3, 351f
                  blt          s6, a0, 347f
                  beq          s5, ra, 340f
                  auipc        s5, 711698
                  srli         a5, s10, 14
                  andi         t5, s8, 407
                  addi         s10, s8, 1306
                  xori         t2, a5, 1010
340:              andi         s11, t5, -1266
                  xori         a3, s7, 687
                  lui          ra, 696218
                  nop
                  auipc        a5, 302423
                  lui          t2, 1026521
                  sra          tp, zero, a1
347:              xori         s4, a6, -1426
                  or           a6, s8, a7
                  and          tp, s10, s11
                  srli         s10, ra, 22
351:              beq          s5, s0, 361f
                  srli         s10, s3, 27
                  slli         t0, t3, 24
                  sll          a5, t2, a5
                  beq          gp, t0, 356f
356:              sll          t4, s7, s3
                  srl          s7, s9, s1
                  add          s4, zero, sp
                  andi         s5, s9, 157
                  beq          s3, t4, 370f
361:              srai         t6, s0, 1
                  andi         a2, t2, -797
                  auipc        s6, 409347
                  sra          s3, s0, s6
                  bgeu         s5, s6, 372f
                  and          s5, t1, tp
                  nop
                  auipc        a6, 604995
                  andi         a2, a1, -962
370:              auipc        t0, 445014
                  blt          ra, s6, 372f
372:              blt          s9, a6, 374f
                  sra          a6, tp, t4
374:              and          s3, s1, t0
                  srai         t5, s8, 29
                  srai         t0, a1, 30
                  bge          a2, t4, 394f
                  andi         s10, s8, 2018
                  auipc        s9, 959896
                  and          a0, a3, s7
                  ori          t5, s4, -1315
                  slt          gp, tp, s1
                  add          s4, s7, a4
                  nop
                  lui          a2, 312288
                  beq          s7, t0, 403f
                  slli         t0, s9, 27
                  bne          s4, s9, 395f
                  sra          t0, a4, t0
                  sltiu        t2, s2, -1595
                  andi         a5, t0, 988
                  add          a1, a1, gp
                  xori         a2, a0, -1328
394:              bge          s6, a2, 396f
395:              nop
396:              addi         a3, a4, -704
                  sltiu        a6, a2, -732
                  slli         a5, t4, 2
                  sub          t4, t5, a7
                  sll          tp, s4, a0
                  slli         s5, s1, 20
                  bne          a5, s8, 416f
403:              sltu         t4, s6, a2
                  slt          s8, a2, s11
                  bgeu         t4, a3, 411f
                  slt          a5, ra, s5
                  slli         s8, s4, 15
                  sltu         s3, s1, s6
                  srli         s3, s5, 7
                  slti         a6, ra, 778
411:              auipc        t5, 539263
                  andi         a0, a2, 1739
                  xori         a2, s0, -1911
                  sub          s0, t3, t5
                  andi         s9, s4, -1696
416:              srai         s7, gp, 1
                  bltu         zero, s7, 424f
                  sltiu        s10, s6, 1534
                  srl          s9, gp, ra
                  add          t0, s6, s11
                  slli         s8, s11, 1
                  nop
                  addi         s10, a1, 815
424:              and          s9, a0, a7
                  srli         sp, t2, 27
                  bge          s4, sp, 436f
                  slti         a6, s3, -1147
                  sll          s7, gp, s0
                  srl          s10, s7, zero
                  blt          s3, s1, 450f
                  srl          a2, tp, s0
                  and          a0, t0, t6
                  nop
                  srai         s2, ra, 7
                  xori         a2, s1, 111
436:              bge          t1, s6, 438f
                  auipc        a4, 922214
438:              srl          s11, t2, t2
                  bltu         s11, a7, 447f
                  xori         s5, s3, -1501
                  xori         a6, s4, 430
                  srli         a0, a0, 17
                  and          a1, a0, s3
                  ori          a6, t5, -413
                  sll          s7, s1, s9
                  and          a6, t2, tp
447:              srl          a2, a7, a1
                  beq          s3, a4, 459f
                  and          sp, t3, a7
450:              beq          a6, s3, 456f
                  bne          t4, t0, 461f
                  sub          ra, a4, s3
                  slli         a7, a0, 26
                  slli         a7, a0, 15
                  ori          s11, a5, -1697
456:              slti         s10, t3, -1320
                  xor          s5, a6, s8
                  sltu         s10, t2, a3
459:              srl          a4, zero, s9
                  andi         a6, t4, 2036
461:              sltu         t0, ra, t1
                  beq          a0, s0, 481f
                  slt          a5, a1, s2
                  andi         s9, ra, 758
                  bltu         t4, zero, 466f
466:              srli         a5, t3, 12
                  nop
                  nop
                  bge          a4, a0, 477f
                  add          a0, t5, a7
                  bge          ra, gp, 491f
                  lui          s9, 461901
                  srli         a7, t3, 31
                  addi         gp, t3, -813
                  ori          s0, a4, 306
                  auipc        a5, 993553
477:              or           a1, s3, a2
                  bne          zero, t0, 495f
                  slti         t4, a5, 643
                  bge          t4, t3, 481f
481:              andi         a2, a5, 1950
                  add          a5, a6, a0
                  bgeu         s10, s7, 500f
                  sub          sp, a5, a4
                  andi         s0, a4, 1040
                  bne          s4, a4, 487f
487:              ori          a3, a1, -441
                  srai         ra, a7, 12
                  lui          gp, 953071
                  sra          s8, t5, a1
491:              bltu         sp, s1, 501f
                  andi         a6, s2, -2027
                  sltu         zero, ra, a7
                  xor          s2, t2, t0
495:              or           t5, t6, s1
                  srli         s11, s6, 22
                  sub          sp, s0, s4
                  and          ra, s2, sp
                  sltu         a1, s0, zero
500:              bgeu         a0, zero, 501f
501:              srli         t2, sp, 14
                  slti         a3, s2, 162
                  srl          s9, s11, gp
                  xori         t0, s3, -1190
                  add          gp, s6, s4
                  xor          a1, gp, s8
                  andi         s10, a5, 1556
                  addi         s4, t3, 532
                  slli         t4, gp, 23
                  xori         s10, ra, 1431
                  auipc        ra, 901700
                  srai         zero, t1, 9
                  ori          s11, a4, 1121
                  srai         a4, s4, 17
                  auipc        a1, 634217
                  slti         s9, a6, 678
                  sltiu        s5, a1, 745
                  sra          s7, zero, s1
                  bge          s11, t6, 521f
                  sll          t5, ra, a0
521:              slli         t0, t5, 18
                  sll          a6, gp, s8
                  sra          s3, s11, ra
                  sltiu        t5, t6, 1126
                  slti         s4, s6, -604
                  sll          t0, tp, s1
                  and          t2, s5, s3
                  andi         s8, a3, -2005
                  blt          t6, t3, 530f
530:              beq          s1, t3, 547f
                  sltiu        t2, s2, 1064
                  srl          s5, s7, a0
                  sltiu        a0, s10, -1876
                  xor          s9, s7, s2
                  sub          t2, t1, a2
                  bge          s2, a4, 556f
                  slli         zero, s6, 9
                  ori          tp, a6, -812
                  ori          t0, tp, 1524
                  addi         a5, s2, -1368
                  beq          a6, s2, 542f
542:              srai         s0, s10, 29
                  ori          ra, s5, -421
                  srai         s6, s4, 22
                  xor          s3, a4, t2
                  bgeu         tp, s0, 557f
547:              auipc        a4, 837142
                  sra          a4, a1, gp
                  bltu         a1, t2, 568f
                  xor          a1, a3, s6
                  sltu         a6, t4, t3
                  sltu         a4, t5, s7
                  bgeu         t6, a3, 567f
                  and          ra, a4, t3
                  xori         s9, gp, -671
556:              srai         a5, a2, 10
557:              srli         s3, s0, 13
                  srli         s9, s4, 28
                  srl          s10, s8, a0
                  sra          a2, a6, s9
                  beq          s11, t4, 571f
                  sra          ra, s3, a0
                  slt          s10, a7, ra
                  srl          s0, s3, s6
                  and          s0, s2, s4
                  slt          t2, a1, a5
567:              auipc        zero, 493781
568:              andi         a2, s4, -1892
                  bne          s0, s1, 586f
                  addi         a2, s5, 797
571:              ori          zero, ra, 698
                  beq          a3, s11, 591f
                  beq          t3, t4, 575f
                  slti         a1, t3, -1376
575:              blt          a0, s8, 585f
                  beq          a6, s11, 582f
                  bne          s6, a6, 583f
                  beq          ra, a4, 586f
                  auipc        s8, 637606
                  bge          s3, a6, 582f
                  sra          s5, s10, gp
582:              xori         t5, t1, 707
583:              bltu         a2, s6, 603f
                  xori         t6, t3, -1426
585:              sltu         s10, s2, a1
586:              addi         ra, s0, -1597
                  srai         s5, a1, 22
                  bne          t4, t0, 605f
                  bge          s2, s5, 590f
590:              sra          s3, t0, tp
591:              bgeu         a7, t1, 598f
                  add          zero, a3, s4
                  lui          s2, 114457
                  sll          s7, s9, zero
                  srl          s4, a5, t3
                  sltiu        t4, s11, 391
                  lui          s11, 1025348
598:              andi         a1, s3, 584
                  sltiu        a7, s0, -408
                  srl          a4, a4, a1
                  andi         a4, s2, -1648
                  sll          a6, s5, t5
603:              addi         a1, a1, -1975
                  add          a3, t2, gp
605:              and          zero, t5, s10
                  andi         s3, a5, 649
                  bgeu         s3, gp, 608f
608:              nop
                  xori         s9, s1, 60
                  beq          t5, t4, 611f
611:              sub          sp, s8, s1
                  andi         t2, zero, -1581
                  sra          t0, a4, a4
                  sra          a7, a3, s1
                  sub          s2, a2, s3
                  ori          tp, s11, 793
                  bne          s2, t6, 636f
                  add          gp, s6, t4
                  bgeu         sp, t0, 630f
                  slti         s5, zero, 20
                  slli         s10, t4, 2
                  slli         gp, a2, 16
                  xori         a7, s6, 244
                  andi         t5, s8, -1524
                  bgeu         s0, s11, 626f
626:              bge          t4, sp, 637f
                  slti         a4, s0, 904
                  bgeu         s5, zero, 635f
                  srl          t0, s8, a1
630:              bge          a1, zero, 638f
                  or           s5, t4, s10
                  bne          gp, a1, 649f
                  bge          a6, t2, 635f
                  sra          t0, t1, a5
635:              sub          s7, s6, a5
636:              sra          s11, a2, t1
637:              bltu         t2, s9, 638f
638:              xori         a6, s6, -1561
                  andi         a1, s3, 321
                  slli         a2, a3, 23
                  xor          a4, a6, a1
                  bltu         a1, s9, 662f
                  or           t5, t4, a4
                  andi         a2, s2, 1044
                  bge          t3, s10, 665f
                  nop
                  slt          a0, a6, t0
                  srli         tp, a6, 28
649:              xori         s0, sp, -1138
                  blt          t6, s5, 651f
651:              add          s4, t0, s8
                  slti         s11, s3, 409
                  sra          t4, s7, gp
                  bgeu         s7, t3, 664f
                  slli         t0, a2, 30
                  add          s8, a6, t4
                  sltiu        s2, a6, 1123
                  slli         s11, t3, 11
                  ori          s5, gp, 555
                  and          s5, a2, t3
                  sll          s10, a7, s10
662:              bne          tp, t3, 679f
                  srai         gp, gp, 3
664:              bne          s7, sp, 670f
665:              xori         zero, a2, -576
                  auipc        s3, 179361
                  srai         s8, a1, 8
                  lui          s2, 399665
                  lui          s4, 853296
670:              blt          s7, sp, 683f
                  bne          s3, s8, 683f
                  sra          sp, t2, t4
                  bge          s9, s2, 674f
674:              xor          a1, zero, s10
                  sltiu        s6, a3, -1422
                  xor          s4, s6, gp
                  srli         s11, t6, 28
                  srl          s7, t4, ra
679:              srai         s11, a7, 25
                  xor          a5, s11, sp
                  xor          t6, a3, s1
                  or           a3, sp, tp
683:              xori         a7, s3, -1998
                  lw           a1, 4(t1)
                  sll          ra, t2, t5
                  addi         t1, t1, 12
                  or           a5, t1, a0
                  sltu         s5, s6, sp
                  lui          s9, 281938
1022:             addi x3, x11, 1
1022:             jalr x3, x3, 0
sub_3:            sll          a7, t1, s9
                  sltiu        s0, a3, -776
                  xor          t5, s4, a0
                  beq          zero, s2, sub_3_stack_p
                  sll          a0, gp, s5
sub_3_stack_p:    addi         t1, t1, -24
                  sw           a1, 4(t1)
                  addi         s9, s9, 1473
                  add          s11, s6, ra
                  and          ra, a4, gp
                  srai         t0, s4, 8
                  slli         tp, s0, 7
                  bltu         s6, zero, 21f
                  and          a4, s11, ra
                  and          a7, a1, t2
                  sltu         a2, ra, a2
                  lui          s7, 295657
                  sll          a0, t3, s0
                  slli         s3, s6, 9
                  bltu         s2, t5, 19f
                  sra          s4, s9, s9
                  sltu         zero, t4, s0
                  srl          ra, sp, s8
                  srl          s6, a3, tp
                  auipc        t5, 191335
                  sub          a6, s10, t4
                  nop
                  ori          s4, s7, -117
                  beq          s3, t3, 33f
19:               beq          s1, sp, 28f
                  lui          t5, 402951
21:               nop
                  lui          a4, 901206
                  and          s10, s1, t6
                  sra          s11, tp, ra
                  srli         gp, t0, 1
                  addi         t4, t0, 334
                  srl          a7, t3, tp
28:               bne          s11, s1, 44f
                  slti         s5, ra, 863
                  beq          a0, s9, 43f
                  andi         zero, a4, -1113
                  bne          s1, s2, 44f
33:               slti         s3, t6, -1281
                  srl          sp, gp, s1
                  or           sp, s6, t0
                  bltu         ra, s11, 44f
                  add          a3, tp, t6
                  blt          gp, a5, 44f
                  add          a3, s0, a5
                  sltiu        t0, s10, 1614
                  sub          s5, s10, s0
                  slt          s11, a6, s4
43:               ori          a6, a6, -202
44:               nop
                  lw           a1, 4(t1)
                  add          t2, a7, sp
                  srli         tp, s9, 14
                  ori          gp, s0, -418
                  and          s3, t3, a2
                  addi         t1, t1, 24
                  sra          zero, t6, s3
                  sub          a6, sp, s9
                  addi         tp, t5, 1737
                  sltiu        ra, a4, -1154
                  xori         s9, s6, 613
66:               addi x3, x11, 1
66:               jalr x3, x3, 0
sub_2:            sltu         a5, t5, a0
                  beq          s1, a6, sub_2_stack_p
                  sll          s5, s7, s2
sub_2_stack_p:    addi         t1, t1, -52
                  and          s4, tp, s11
                  sub          s4, s11, s7
                  sw           a1, 4(t1)
                  addi         t4, t4, 472
                  ori          s10, gp, 1055
                  xor          s9, s10, t2
                  srai         zero, t1, 17
                  and          s5, a3, tp
                  srl          a0, a5, t2
                  slti         s10, a0, -157
                  lui          gp, 344368
                  sltiu        s3, s2, 126
                  srli         zero, s4, 29
                  xori         s4, s3, -1494
                  lui          a0, 895457
                  add          gp, s1, a0
                  sltu         a6, s2, s2
sub_2_j4:         jal          a1, sub_3 #jump sub_2 -> sub_3
                  bge          t4, t4, 10f
                  srli         a1, sp, 27
                  add          a6, t4, s10
                  bgeu         a5, a1, 10f
                  slt          s2, a6, t3
                  add          s7, gp, s7
                  xori         s5, s8, -1865
                  lui          tp, 924352
                  xor          t5, a0, s4
                  andi         s3, t3, 1660
10:               srl          s5, sp, s7
                  auipc        a3, 293330
                  auipc        s8, 393486
                  lw           a1, 4(t1)
                  slli         t2, t3, 16
                  addi         t1, t1, 52
                  xori         a2, s3, -805
39:               addi x16, x11, 1
39:               jalr x16, x16, 0
sub_5:            srl          s11, s1, zero
                  bge          t4, s1, sub_5_stack_p
                  andi         a6, zero, 1945
sub_5_stack_p:    addi         t1, t1, -32
                  sw           a1, 4(t1)
                  slt          sp, t5, s11
                  addi         s9, zero, 8 #init loop 0 counter
                  xori         a6, tp, -278
                  or           a5, t1, a0
                  srl          gp, s6, s3
                  addi         s7, zero, 8 #init loop 0 limit
                  addi         a3, s2, 427
                  nop
                  ori          a2, ra, -654
sub_5_0_0_t:      sltiu        s11, ra, 159
                  xori         s0, sp, 765
                  addi         s9, s9, -7 #update loop 0 counter
                  xor          t6, gp, s11
                  and          t5, a6, a5
                  srli         s2, s10, 14
                  nop
                  srai         s10, s3, 0
                  ori          s6, t0, 1431
                  slt          t4, sp, t6
                  andi         a4, s0, -1145
                  ori          a0, a3, -1329
                  and          s10, s1, zero
                  ori          t5, t4, 1190
                  bgeu         s9, s7, sub_5_0_0_t #branch for loop 0
                  addi         t6, t3, -1725
                  addi         a7, zero, 5 #init loop 0 counter
                  srl          tp, a7, s1
                  xor          gp, t0, s10
                  sra          s6, t5, s11
                  nop
                  sltiu        s3, s6, -1742
                  slti         a4, s2, -1838
                  auipc        a1, 584223
                  andi         s2, zero, 1054
                  auipc        a4, 344383
                  addi         ra, zero, 1 #init loop 0 limit
                  lui          a0, 725343
                  add          sp, t5, s11
                  slli         s7, s11, 24
sub_5_1_0_t:      sltiu        a5, a4, -951
                  lui          s9, 961456
                  add          t0, s2, s10
                  or           a2, s4, a6
                  addi         s3, s11, -670
                  addi         a7, a7, -4 #update loop 0 counter
                  xori         a6, t3, 744
                  xor          a4, t0, t3
                  andi         a6, s3, 898
                  srl          gp, a1, s3
                  srli         a5, tp, 20
                  addi         t4, s1, -598
                  bne          a7, ra, sub_5_1_0_t #branch for loop 0
                  sra          s9, s3, t5
                  srai         gp, s3, 23
                  bne          s7, a4, 7f
                  sll          t0, t5, a2
                  add          t0, a6, t4
                  blt          gp, t3, 17f
                  srai         a1, s5, 28
                  nop
7:                nop
                  add          a6, t1, s8
                  nop
                  bge          s1, a4, 20f
                  beq          t0, s6, 18f
                  sll          a4, t1, a2
                  and          a2, ra, tp
                  auipc        a7, 112104
                  bne          a2, a4, 32f
                  sra          s7, s11, t5
17:               slt          a3, a1, a3
18:               slt          t2, ra, s8
                  srai         s8, s8, 4
20:               slli         s6, s7, 7
                  sll          t4, s8, a6
                  blt          s3, a1, 37f
                  or           s5, t6, a0
                  bge          t3, gp, 38f
                  and          a5, sp, t5
                  lui          s6, 863936
                  xori         a4, a0, -1044
                  bgeu         t5, a4, 35f
                  bge          a0, a4, 39f
                  srl          zero, s5, a4
                  slli         s5, s9, 29
32:               blt          s11, ra, 43f
                  blt          zero, t1, 52f
                  sltu         a0, t2, s6
35:               blt          a7, t6, 49f
                  srl          a1, a1, s2
37:               sll          a4, a0, sp
38:               add          a3, a3, sp
39:               xori         gp, s4, -1456
                  srl          s4, tp, a0
                  bge          t0, s8, 49f
                  slti         t6, sp, 1252
43:               srli         s9, a4, 29
                  srl          a1, ra, s2
                  slli         gp, t5, 26
                  bgeu         t0, a5, 62f
                  bgeu         t2, t6, 48f
48:               nop
49:               xori         s0, s8, -858
                  srli         s4, s7, 27
                  beq          s2, s9, 64f
52:               sub          t6, s1, t0
                  blt          ra, s11, 57f
                  xori         t5, s5, 585
                  srl          a3, a4, a4
                  bne          s1, gp, 64f
57:               beq          s3, t2, 66f
                  add          s9, a7, s2
                  lui          t5, 587093
                  or           t2, a4, s8
                  add          gp, a0, a1
62:               auipc        tp, 713758
                  xori         s11, s3, -1611
64:               xor          s8, t3, tp
                  xor          ra, gp, s9
66:               slli         s10, sp, 0
                  ori          a3, s8, 128
                  bne          a1, t5, 79f
                  xori         s2, t5, -1974
                  beq          t4, s6, 74f
                  bge          s4, a0, 81f
                  bne          ra, s11, 79f
                  blt          t5, a2, 77f
74:               and          t4, s5, s8
                  sltu         t6, s1, t5
                  bge          t1, s8, 78f
77:               sll          t5, a7, a0
78:               slli         a4, a4, 20
79:               lui          a3, 1020060
                  slt          s7, a3, ra
81:               bltu         s0, a7, 95f
                  bltu         s9, t4, 98f
                  ori          a5, t6, -240
                  bgeu         s8, t2, 86f
                  xor          t0, a6, s10
86:               add          zero, tp, s2
                  slt          a4, s1, s5
                  sltiu        s4, a6, -560
                  ori          gp, a0, 734
                  slli         s6, s11, 22
                  nop
                  xori         s11, a5, 1387
                  sra          tp, s4, zero
                  bge          s7, zero, 101f
95:               slti         a5, s4, -82
                  srai         zero, s1, 13
                  sub          s3, t3, s7
98:               sra          s2, t4, s0
                  nop
                  sub          ra, t6, s11
101:              blt          t6, s6, 107f
                  beq          t6, t1, 112f
                  blt          a4, s6, 118f
                  blt          s6, s11, 120f
                  slti         s8, s2, -727
                  sra          a0, s8, s10
107:              auipc        gp, 460300
                  ori          s11, s11, -1537
                  bne          s7, s0, 119f
                  ori          s0, s1, 1362
                  srli         s3, t1, 26
112:              slli         s2, a1, 23
                  bge          a6, s1, 129f
                  blt          a5, t6, 120f
                  sub          tp, tp, s1
                  addi         s0, a6, -647
                  bne          gp, s11, 121f
118:              sltiu        t5, t6, 1696
119:              add          s7, s2, s10
120:              srl          sp, zero, s4
121:              andi         a2, s0, -772
                  auipc        tp, 806993
                  and          gp, t2, a4
                  xori         sp, ra, -622
                  xori         s9, s10, 411
                  sra          s3, t0, t3
                  and          t2, t2, ra
                  addi         tp, zero, -93
129:              slti         t5, s3, 1048
                  lui          s5, 775041
                  srai         tp, t0, 11
                  nop
                  beq          s5, sp, 144f
                  beq          a0, t2, 146f
                  blt          a5, ra, 143f
                  auipc        t2, 1012085
                  bge          s2, a0, 144f
                  xori         s4, t5, 277
                  xori         tp, a6, -490
                  lui          s5, 609436
                  bgeu         s10, s3, 146f
                  and          s4, s9, s0
143:              slt          gp, s1, zero
144:              bge          s1, s5, 146f
                  sltiu        a0, t5, -1834
146:              sltu         s0, tp, s1
                  srai         a2, t2, 18
                  and          s3, t2, s4
                  slti         a6, t1, -971
                  or           a0, s2, a0
                  slt          a4, t4, tp
                  andi         t6, t0, -1822
                  lw           a1, 4(t1)
                  addi         t1, t1, 32
                  xor          t4, sp, t5
                  srli         s11, s8, 29
                  nop
                  sltu         t4, a3, a6
217:              addi x1, x11, 1
217:              jalr x1, x1, 0
sub_4:            addi         t1, t1, -44
                  sw           a1, 4(t1)
                  andi         s8, a4, 456
                  andi         a2, s1, -257
                  sra          a7, t6, ra
                  andi         s9, a0, 584
                  xor          ra, ra, a7
                  sub          s6, gp, gp
                  sra          sp, s3, zero
                  and          a1, s6, a5
                  xor          s9, t5, s8
                  sra          s2, a3, t1
                  sll          s10, t5, tp
                  sltiu        a5, s2, -1403
                  addi         a5, a5, 1160
sub_4_j5:         jal          a1, sub_5 #jump sub_4 -> sub_5
                  slli         a2, s5, 15
                  add          a7, a7, a6
                  and          s6, gp, a6
                  xori         a3, sp, -1210
                  sub          t0, t1, s1
                  srl          ra, t2, tp
                  bge          s6, s8, 14f
                  sll          s5, s9, s1
                  bgeu         t3, s4, 14f
                  lui          s6, 494551
                  sll          t0, a5, t3
                  sub          a7, a7, a2
                  srl          ra, a2, gp
                  sll          s9, a3, s11
14:               ori          ra, tp, 1071
                  sltu         s8, t5, s7
                  lw           a1, 4(t1)
                  addi         t1, t1, 44
                  sll          t5, s11, s7
                  add          t6, zero, t1
36:               addi x18, x11, 1
36:               jalr x18, x18, 0
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
.word 0x04d2e283, 0x3bde54a2, 0xb99e9c35, 0xcb549597, 0x031a918e, 0x2a45d4f6, 0x2836f238, 0xa4c085a6
.word 0x3579eeb1, 0x86727824, 0xad763d1f, 0xc82533ff, 0x5eea8a89, 0x34c8edf1, 0x1fd1bab5, 0x02d85341
.word 0x8edb0523, 0x3ef753ad, 0xb7a9f268, 0xc5d15c47, 0x9fa423d7, 0x43cb5cdf, 0xb4b1353f, 0x61a9a303
.word 0x7ac392ef, 0x3caeb71c, 0x0979993d, 0x79cd3b3d, 0xcd894b52, 0x37db44a1, 0x17678e67, 0x6ab27924
.word 0xcebfdee7, 0x83db169c, 0xa638803c, 0x06a7e619, 0x2244a90e, 0x6f9d8e9e, 0xa1117dd3, 0x8d28980f
.word 0x0e637dbf, 0x07b73045, 0x52447510, 0x100cfbc7, 0x174878db, 0xd1cce327, 0x147dca95, 0x3d2fc220
.word 0x60201d35, 0x89085174, 0x1570e083, 0xa97ea13f, 0x07956b65, 0xfdb31a08, 0xc28549aa, 0x554ff933
.word 0x4ec94e29, 0x213a150a, 0x169d934b, 0x0fe40412, 0x7d280b06, 0xd6ea819b, 0xe2128da3, 0xb45e242c
.word 0x52643a92, 0x3a10e42a, 0x2f06ad39, 0xfe60c9cc, 0xd02873f7, 0xa4e67e5a, 0xb4a1d3fb, 0xf03aab8a
.word 0x77f722de, 0x0cbc85b4, 0xd172a8ee, 0x21e39315, 0xdd29ea78, 0x765f78b4, 0x02c52c45, 0x7f9c3e70
.word 0xc3d267c7, 0x1361f057, 0x6b7f5c01, 0x0bb1ae3e, 0xd17c5f31, 0xa164aa19, 0x92a21637, 0xea23ea36
.word 0xb2fc8a8f, 0xb5f2713f, 0xebdcbfc2, 0x108ae23a, 0x8f3a4514, 0x6c90861a, 0x01241e04, 0x2a6aa7dd
.word 0x3913603c, 0x1227d8ef, 0xcefbc439, 0xf5578930, 0xf806591d, 0xd042fe0e, 0xc7f3349e, 0xd684630d
.word 0x9ef2037d, 0x33be0193, 0x52bbcdf2, 0x4052c95d, 0xd58944d9, 0x1c6942b4, 0xea8bfd97, 0xa3b02f6c
.word 0x33a3db0c, 0x9aa77d0a, 0xc2840400, 0x001d8f60, 0x1701de80, 0x676b3194, 0xff424571, 0xd54409ea
.word 0xae113bc5, 0x5f3eec67, 0xbda05b1b, 0x30ac2a71, 0xa488030a, 0x0afba567, 0x5034151f, 0x2fa7364c
.word 0x0c8a2b14, 0xd42cf238, 0x7aed3996, 0xcc6783f2, 0xaf510283, 0x0e3be097, 0xe880317a, 0xac31c869
.word 0x0733ff32, 0x1fb673e3, 0xfa11b129, 0x5076dc1a, 0xad21a28d, 0xf8a20b1e, 0x87fd4d1f, 0xf6a16915
.word 0x7888b485, 0x035a5382, 0x09e1f680, 0x14e1ce44, 0xf7ddae1c, 0x24cc9655, 0x954a49bc, 0x577a62ed
.word 0x3c887fc7, 0x170594f9, 0x36934863, 0xd4319fdf, 0x3f7a588a, 0xc2e7c674, 0xf587072e, 0x43ab8ecf
.word 0x7aad6690, 0xe8d1aec0, 0x7b076537, 0x88acb3ac, 0x5fc12bad, 0xecbc6f60, 0xe0597187, 0xb5f65804
.word 0x4fbad569, 0x9c1c1959, 0xb6aa75af, 0x1b5d03fb, 0xdd9d5f43, 0x4f4cb7f9, 0x4a54cc4a, 0xf838df36
.word 0x73cc6d9a, 0x26b9aaa7, 0x0951c367, 0x232429e4, 0xdba8625a, 0xaad8dd6e, 0x8273a079, 0x0f3a42c8
.word 0x8d809c75, 0xdda8f9cb, 0xbf57f7f8, 0xa41c2c55, 0x99654190, 0x120d1b71, 0xd6b3d8fb, 0x123442c6
.word 0x8d70dc64, 0x0928f68a, 0xd9a4fcc7, 0x29b117ef, 0x8ad41c94, 0x6ec438fb, 0xc999dae5, 0xaab1faa4
.word 0xbb0ecb57, 0x3adb8b30, 0x28af0acd, 0x7bbd4259, 0x2783ef4a, 0x509c96d5, 0x37a488d3, 0xcdc90a33
.word 0xb128c6b1, 0x89ec9013, 0x4cd54d75, 0x6dc31e8a, 0x49062343, 0x0331aeeb, 0x0586cc71, 0x6e4dc41e
.word 0x793354a9, 0xbbe0820d, 0xb980eb04, 0xddaba0b5, 0xb25f665e, 0x9a33e31e, 0x43793250, 0x1c694a82
.word 0x49951663, 0xcf642f16, 0xde339206, 0x7e0809e5, 0x50a13164, 0xb56bb02e, 0x9cff15bc, 0x0f2512a6
.word 0xc44e4742, 0x592ce2b7, 0x8c521be7, 0x441a01ac, 0x82d88510, 0x5541469b, 0xfb777216, 0x871e9f03
.word 0x947d1c22, 0xa45a76f8, 0xe78972e3, 0x6259d196, 0xc9e5b6fa, 0xabc93f49, 0xd42a290e, 0xf3e4a563
.word 0xd18d8483, 0x43f7fe12, 0x3939b3ea, 0xe3fc1e56, 0x4b4d3af9, 0x0129f62f, 0x0c184b9b, 0x3f71a2f1
.word 0xd0eb01b6, 0xaef79bfd, 0x31a0f476, 0x14bc07c1, 0xf2b446ad, 0x6c7b7bf9, 0xe5e8b209, 0x0f346712
.word 0xee6f387f, 0x36fef6d4, 0x9a85b505, 0xe0fd7d4d, 0xb46ba31a, 0x70752129, 0xc9acc681, 0x3decb1e6
.word 0x681c9cfc, 0x1303d1eb, 0xba295443, 0x78277228, 0x7702fda0, 0x5d3158b1, 0x97e5778f, 0x5d16a329
.word 0x6abba727, 0x80ad2513, 0xb60ebec3, 0x8dd0f4f0, 0x66a3481d, 0xd87e18e7, 0xaefec02b, 0x7c8cfdec
.word 0x2eaec263, 0x68879adb, 0x32e39b4c, 0x60d0ce43, 0xa8e939a0, 0x15fead0c, 0xae51e105, 0xd7aa6d2f
.word 0x54cbc631, 0x76f45910, 0x50f12045, 0xcfeef8ad, 0xce61c437, 0x86c842ed, 0x6aca891e, 0xa9bacd70
.word 0x0274566e, 0xb9bd59cf, 0xb3244f41, 0xba22c8d0, 0xde5c38b6, 0xaa6d6f5b, 0x5c3427eb, 0x38c8e3fc
.word 0xb20fd36a, 0x6cbd06a3, 0x1651df3f, 0xf7ef3ef8, 0xf30710b9, 0x015f4f9d, 0xef93c832, 0xc2904447
.word 0xecd20906, 0x5e60f661, 0x8af89170, 0x0858ae62, 0x8b4353b8, 0x7f3e6730, 0x79447602, 0xedda3467
.word 0x19e2ae30, 0x1d67c41f, 0x686f5769, 0x240b5236, 0xb4187cff, 0xdf7179c0, 0x5d0acbcb, 0x3d9ef085
.word 0x8549540e, 0xb81d8845, 0x1693f544, 0x49bb37b0, 0xe4d7db0a, 0x906e1f4a, 0xc0ac4785, 0xbf45d4e3
.word 0x8be0a49c, 0xf3775e1c, 0x16415030, 0x380f13ba, 0xb2a0805f, 0xfcede429, 0x08959a98, 0xaf111a47
.word 0x6ee5b7ad, 0x1017a06a, 0x1efb132a, 0x100c6c16, 0xfeda7e58, 0x79eb4746, 0xad73d9cd, 0xd9d7402b
.word 0xc5686bb9, 0xa722a4ad, 0x3cff4552, 0x706cf44d, 0xe5b9b560, 0x68d2fcc2, 0xe04a2e07, 0xe4e0a9e8
.word 0x82b6e186, 0xa179c5fe, 0x2e64f478, 0x2e4cf7b1, 0xfa7591dd, 0x34f6084d, 0x6fd988e6, 0xdf712560
.word 0x6c38fa55, 0xafc184ac, 0x11f7f69a, 0xb033c762, 0xb283f37f, 0xbd20cb97, 0x4cb87443, 0x29dc5e03
.word 0xcba99ab3, 0x61e873d5, 0xa0446d7c, 0x3b568991, 0x4a8820a4, 0x4044afb5, 0x406b6c9c, 0xf83c3992
.word 0x223b103b, 0x72473c63, 0x21bb648a, 0xf75ddff4, 0x2682a621, 0xce4ad1a7, 0xdc68b8d1, 0xfc031802
.word 0x3c09896f, 0x250f2f7c, 0x55063c8f, 0x91fe02f0, 0x5125d2e2, 0x6a77e65e, 0xe3553c27, 0xf482405b
.word 0xb6a84081, 0xc4476b7e, 0x5fea6141, 0x7797fa74, 0x08c9d392, 0xba7e9ea1, 0x5aa5fc8f, 0xf3bd820e
.word 0xf76b58ad, 0xba61738e, 0x34031f8e, 0x669c4202, 0xa144cc49, 0x886e65d9, 0x91968d5e, 0x45aa0170
.word 0x5738bba1, 0xda09b45f, 0xb5cb85d4, 0xf66613ac, 0xa392b46c, 0xad4a463e, 0xb73fbe13, 0xfd937a1d
.word 0x8d14fc27, 0x52b84ee4, 0x9165b8a6, 0xb729bf39, 0x66f5404a, 0x45cd01e9, 0xae689a65, 0x0755fe95
.word 0xc1e44232, 0xda1b1044, 0x6072fbbf, 0xc7bc013f, 0xefbf084f, 0x13e16a83, 0xc0dac62c, 0x3d570005
.word 0x3fa899b7, 0x20b0b350, 0x7ca34bc3, 0x1d32f7ce, 0x2e544daa, 0x7541fa02, 0xce45ba7d, 0x806d017e
.word 0x51116267, 0xb586c468, 0x8ea3eabb, 0x972b572a, 0xca25f483, 0xf5204449, 0x61d647ba, 0x15a9653e
.word 0x305d0ae4, 0xb6d67c0e, 0x841c03f3, 0xfa63538e, 0x5a2bf68a, 0x55ce1267, 0xba81085b, 0xbfe4a0f2
.word 0x989ffb7e, 0xbfaadf89, 0xb7547af3, 0x72c2305c, 0xca85a7b9, 0x8f933bdb, 0x33f5ecf1, 0x71c2325d
.word 0xb0d27a7b, 0xe4253446, 0xcce2c0d3, 0xbf3062e7, 0x79446c99, 0xd04ec2bf, 0x13dca5bd, 0x3570497f
.word 0xb6ac242a, 0x73b49803, 0x8bdf8bcb, 0x68b408cd, 0x3804a6be, 0xc1ed937e, 0xcf048436, 0xcc266e46
.word 0x3ed66064, 0xbf702971, 0xe9eeb974, 0xfd60e664
.section .region_1,"aw",@progbits;
region_1:
.word 0xc80ccdcf, 0xce53bd95, 0x2f369008, 0x65e3f0d9, 0xfce1e5c8, 0x8d2d6d39, 0x70b8dcc9, 0x2d90b37b
.word 0xb617f4f8, 0xa54bf511, 0x9da9db47, 0xc0c7c9e6, 0x238b960b, 0x737c1183, 0xdb04bc08, 0xe2fdfa68
.word 0x86720452, 0x3d1f135d, 0xf88fcf79, 0xa6924d57, 0x07459c01, 0x9b5d49ba, 0xa17c44cb, 0x55ddf981
.word 0xa7d56200, 0x6cfb088b, 0x23fed2a6, 0x8de8c499, 0x3fd4e6bc, 0x4ccbd329, 0xb098f24b, 0x37a98bfa
.word 0x84aafef9, 0x4f8ee138, 0x29223c3d, 0x872552a6, 0x00bea982, 0x0c5457d3, 0xa94c46d9, 0x2d68e505
.word 0x1fb0842b, 0xc0144afa, 0xc5add159, 0xa581cb7f, 0x2d86c1a7, 0x3e24d6b6, 0xd6a73362, 0x028b6d3c
.word 0x368ee0b7, 0x59da035b, 0x9f1b16a1, 0x5b4b39da, 0xc50b5e84, 0x43863308, 0x3bb40f8d, 0x994b82e8
.word 0x808a73b7, 0x5e01573d, 0x163512e8, 0xff1d1e9d, 0xd7dc864f, 0x5cd5d936, 0xbf23702b, 0xd465133d
.word 0x758dd11e, 0x44aa02ff, 0xecc786e8, 0x31e3bff2, 0xd34a1974, 0xe8455175, 0x94931f82, 0xb36c30eb
.word 0x59d42d50, 0xa6e891a7, 0x606dceee, 0xdc70efb6, 0xf28992d0, 0x8452ad60, 0x50408e08, 0xcb4d4b1c
.word 0x0dd80add, 0x1a7722bb, 0x5483bc5e, 0x5ac8a38e, 0xdd151eca, 0xb709bc72, 0x52d12161, 0xdeac4dd6
.word 0x79cdb758, 0xc9e893ae, 0x759a5cd5, 0xe4bea0ad, 0x4895fff5, 0xd11f001e, 0x42179173, 0xa104b0b3
.word 0x68d2a411, 0x3b3d7a9e, 0x16e1c20c, 0x3495d52f, 0x76fc72f7, 0x73ed788e, 0x365f012f, 0x822e594e
.word 0x54e8ad22, 0x75f14fcb, 0x3292b4e7, 0x1fd6c980, 0x48e70d83, 0xbfb2f5d7, 0xae3b87dd, 0x86142ef0
.word 0xe10b491a, 0x9475ac32, 0x3846b62e, 0x87a8d2d7, 0x2a250bb1, 0x69f8f047, 0x6f376774, 0x97f3bcf4
.word 0x8ac82c05, 0xb4fd3507, 0x010abbdb, 0xae7fef29, 0xc066e444, 0xf4d4d4ab, 0x3807d4f5, 0x5a7a051c
.word 0x58b228a7, 0xd2dab3d6, 0x1276720e, 0xf86a0fdb, 0xcd5e8748, 0x5fe735b3, 0x8f406ab1, 0xaadbed10
.word 0x70f43900, 0xf68ed127, 0x996970fc, 0x7b33af75, 0xfb939331, 0x8acb9e24, 0x286b9a73, 0xce53f4a7
.word 0xc41a0719, 0x5b1907ae, 0x79e9b1b7, 0x9e6b842d, 0x3ea9745b, 0x05368dc5, 0x5f3c8d2b, 0x8e4d1c04
.word 0x0e1c7a6d, 0x6b2a73db, 0x9e94f8b2, 0x5bc1fdd1, 0x43bb149f, 0x8bd6f851, 0x1c716ce4, 0xc69e090a
.word 0x88406792, 0xf78b2aac, 0xdbce7c0e, 0xc4aeb9df, 0x522363cc, 0xbdfda89e, 0x158060e8, 0xbc14c1a5
.word 0x20626ee4, 0xee6d94cd, 0x1af7cb00, 0x76897e41, 0x197c126c, 0x2bd6e30b, 0xe9ee28c7, 0xba2ceedf
.word 0x145b186b, 0x6674c5b9, 0xdb4081d4, 0x30fe3444, 0x4da4de38, 0x716b0db0, 0x885ef76d, 0x7722746e
.word 0x42f886c1, 0x56d5d846, 0xc27bc0e5, 0xeeb8f929, 0x7d27d242, 0x5baf307a, 0x84312020, 0x0cb433dd
.word 0x1d677e89, 0x171d0f0c, 0xdb2d67ef, 0xd5948c3b, 0xd274b19a, 0x48b57495, 0xc7bc0dcb, 0x008ac293
.word 0x42adbe64, 0x2feec899, 0xf2e3a00a, 0x18e67dd5, 0xf904856e, 0x841e716a, 0x562936ed, 0xc9a20ffe
.word 0x7d3f7c0f, 0xaa7ff957, 0x55731fa3, 0x78cc2207, 0x08b316c2, 0xee9aaccb, 0x10c98997, 0x61dd6bdc
.word 0x371a812f, 0xc067e146, 0x97befd52, 0x3305c576, 0xa526772d, 0x7ee9a55b, 0xc5250c00, 0xb3904ee5
.word 0x4b881481, 0xd56368c0, 0x5b85f839, 0x57add80f, 0xdfce8392, 0xbdb31c9e, 0xdbbdabd0, 0x5286b8b1
.word 0x55f50465, 0x7bfc2671, 0x55298684, 0xeca95ed4, 0xb45c5d78, 0xdf6ca73c, 0x4d2c2f18, 0x6f873e90
.word 0x522d6ea6, 0x14f36835, 0x0a906d2b, 0x303eafaa, 0x82abb4d7, 0x37ccbfbe, 0x2e92835d, 0x4e25a320
.word 0xa55df2f7, 0xeae3863d, 0xe97c4d48, 0xd4471f29, 0xb40d4d71, 0xbd6c8a21, 0x779d778d, 0xd526c72e
.word 0x05c44c59, 0x9f76aa49, 0x90753b5f, 0x1beb4536, 0xb9d85154, 0x5f7c2d4f, 0x5573357e, 0xa72e8582
.word 0x96bb179c, 0x777ae422, 0xef13a38d, 0xa3f8886e, 0x0ec1138d, 0xc5b8570e, 0xf1e7832a, 0xdd5948c9
.word 0xb1d248e2, 0x8611987d, 0x6b5d0138, 0xff3c4cd2, 0x9bbeaa20, 0x3c862f1c, 0x15004720, 0x6f7ac7f5
.word 0x77a96e5b, 0x015b1f03, 0x70b700c3, 0x8867096d, 0x1a3c8d28, 0x500dcb56, 0x85e686aa, 0x2c0b234a
.word 0x9bc4068f, 0x0f1db695, 0x5c984fd7, 0xb07c5526, 0x5b0c5af4, 0xfd13812b, 0x598ee6d3, 0x9174464c
.word 0xac0f979e, 0xb2368202, 0x0c864164, 0x03c84ba5, 0x8d0bfd7a, 0xf07d57fc, 0x6aafdb96, 0x1cb3b5d9
.word 0xb78e90cc, 0x0aa2f74f, 0x7550ddc1, 0x6480b206, 0x3092407a, 0xa15c1cbd, 0x9d3d0ff3, 0x5c292538
.word 0xb9d75157, 0xe41d2206, 0xbbac4529, 0x13422088, 0xf75e55b1, 0x626b9d78, 0xe6fa71f4, 0xcf5d0c3c
.word 0x309d6a7e, 0x6ac881eb, 0x18ab585c, 0x1aea7b02, 0x2235fe5a, 0xf0dc51fe, 0x1d68af95, 0xcc364345
.word 0x30ba41f5, 0x146a0233, 0x1fedd4e8, 0x45dc6bb9, 0x820be603, 0xdc60e44d, 0xf9e0ec73, 0xeb8f84a6
.word 0x1da2ab8b, 0xd3cbadc8, 0xa1d1c683, 0x5b94af00, 0x7aaad924, 0x81ef0283, 0x2676fe7e, 0xdac9c126
.word 0x100f5ed8, 0x36ef3338, 0x7641206b, 0xdd52d450, 0x4a9f4964, 0x6b9e4d35, 0x7950462e, 0x647cc47c
.word 0x9e8e4066, 0xf8526e4c, 0x745bffd4, 0xbdcd67d6, 0x86b47f19, 0x85e9eca9, 0x6270ec58, 0xef840a63
.word 0x4ca80479, 0x48a91546, 0x575b79ab, 0xe1d30000, 0xeeb4ec2d, 0xe2b2581c, 0x87011138, 0xd6fa93f5
.word 0x05733b9b, 0x89925ca6, 0x42315f2f, 0x4f6e0bec, 0x50bcc16c, 0xd6969843, 0xdfe998e9, 0x11e21d89
.word 0x615cc920, 0xa85622c6, 0xd994282b, 0x0386ca15, 0xce394aa9, 0x8382103f, 0x12d160f6, 0x8bd52254
.word 0x5dea1fd2, 0x4f6552d8, 0x30f319b8, 0xdd1ac525, 0x98308cdc, 0xb41f6ac2, 0x2ab692d6, 0x23956ddb
.word 0xed4faab2, 0x367c7b12, 0xc2b958a5, 0x8dd5363f, 0x7700deb7, 0x989be124, 0x1a352ad2, 0x4876de68
.word 0xf480bed5, 0xe1b5f53f, 0x0d35b0c3, 0x30ea55ee, 0xc61c5862, 0xbe65d293, 0x1a577bff, 0x3caf2e2b
.word 0xd076e052, 0xe501e3c0, 0x1cee8aa0, 0x45895476, 0xe522097a, 0x590b27d0, 0x7e630b6c, 0x905a69fa
.word 0x4a79e296, 0xafc63b13, 0x3831605e, 0xe7e70f8e, 0x88fd8c6a, 0xd10a700a, 0x3d22e082, 0x622fad25
.word 0x778cd7b5, 0x824560bc, 0xa2794ae0, 0xda96c844, 0x9a9e7e92, 0xa4c2ac9d, 0x97bd8a1a, 0x627de2f7
.word 0x49e0e98b, 0x01438293, 0x82d62b64, 0xaecb3602, 0x9a812cf6, 0x27acb02f, 0x61dbd30e, 0xdc1a192f
.word 0xdc04eac1, 0x0a7a6ed9, 0x98d3d612, 0xcc17bbf8, 0x0338fc3c, 0x2b3e0e70, 0xa2cb3b23, 0x6ec6f143
.word 0x40a6f047, 0xa310ae83, 0xcbb0bd33, 0x6d019592, 0xd54f857a, 0x1ce3d787, 0x15d10c92, 0x9876888b
.word 0xfe2402d9, 0x3f6b9abb, 0xaa38d5c3, 0x327a0b40, 0x51aa949f, 0x5daace3b, 0x56eda396, 0x8488b9ea
.word 0x5b4d45e3, 0x3809fa3d, 0x95359980, 0xbdc2f654, 0x4421c627, 0xe5a42a9d, 0x2e2200d3, 0xb12c7f0e
.word 0xa59199e2, 0xaa992871, 0x41a0bc8c, 0x411ef564, 0x03b4a463, 0x4daf1c95, 0xbf632fc1, 0x0695db72
.word 0xff8c83df, 0x9012ce09, 0x70d465b5, 0xc322abde, 0x6f4815a9, 0x61a21ecb, 0xeb0c49da, 0x28952cbc
.word 0x44cd13c0, 0x97604a32, 0x63cc9141, 0x0ebd9fa8, 0xfeb4f77e, 0xeae8c09a, 0xeadd1f97, 0x91ef6402
.word 0x62872257, 0xf126f7f6, 0x8d5e4467, 0xf287b072
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
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x9, x6, zero
                  csrr x16, 0x300 # MSTATUS
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 31
                  bne x16, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x16, 0x341 # MEPC
                  csrr x16, 0x342 # MCAUSE
                  li x18, 0x3 # BREAKPOINT
                  beq x16, x18, ebreak_handler
                  li x18, 0x8 # ECALL_UMODE
                  beq x16, x18, ecall_handler
                  li x18, 0x9 # ECALL_SMODE
                  beq x16, x18, ecall_handler
                  li x18, 0xb # ECALL_MMODE
                  beq x16, x18, ecall_handler
                  li x18, 0x1
                  beq x16, x18, instr_fault_handler
                  li x18, 0x5
                  beq x16, x18, load_fault_handler
                  li x18, 0x7
                  beq x16, x18, store_fault_handler
                  li x18, 0xc
                  beq x16, x18, pt_fault_handler
                  li x18, 0xd
                  beq x16, x18, pt_fault_handler
                  li x18, 0xf
                  beq x16, x18, pt_fault_handler
                  li x18, 0x2 # ILLEGAL_INSTRUCTION
                  beq x16, x18, illegal_instr_handler
                  csrr x18, 0x343 # MTVAL
                  1: la x28, test_done
                  jalr x1, x28, 0

ecall_handler:    
                  la x16, _start
                  sw x0, 0(x16)
                  sw x1, 4(x16)
                  sw x2, 8(x16)
                  sw x3, 12(x16)
                  sw x4, 16(x16)
                  sw x5, 20(x16)
                  sw x6, 24(x16)
                  sw x7, 28(x16)
                  sw x8, 32(x16)
                  sw x9, 36(x16)
                  sw x10, 40(x16)
                  sw x11, 44(x16)
                  sw x12, 48(x16)
                  sw x13, 52(x16)
                  sw x14, 56(x16)
                  sw x15, 60(x16)
                  sw x16, 64(x16)
                  sw x17, 68(x16)
                  sw x18, 72(x16)
                  sw x19, 76(x16)
                  sw x20, 80(x16)
                  sw x21, 84(x16)
                  sw x22, 88(x16)
                  sw x23, 92(x16)
                  sw x24, 96(x16)
                  sw x25, 100(x16)
                  sw x26, 104(x16)
                  sw x27, 108(x16)
                  sw x28, 112(x16)
                  sw x29, 116(x16)
                  sw x30, 120(x16)
                  sw x31, 124(x16)
                  la x28, write_tohost
                  jalr x0, x28, 0

instr_fault_handler:
                  add x6, x9, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

load_fault_handler:
                  add x6, x9, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

store_fault_handler:
                  add x6, x9, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

ebreak_handler:   
                  csrr  x16, 0x341
                  addi  x16, x16, 4
                  csrw  0x341, x16
                  add x6, x9, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

illegal_instr_handler:
                  csrr  x16, 0x341
                  addi  x16, x16, 4
                  csrw  0x341, x16
                  add x6, x9, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x16, 0x300 # MSTATUS;
                  csrr  x16, 0x304 # MIE;
                  csrr  x16, 0x344 # MIP;
                  csrrc x16, 0x344, x16 # MIP;
                  add x6, x9, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
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
