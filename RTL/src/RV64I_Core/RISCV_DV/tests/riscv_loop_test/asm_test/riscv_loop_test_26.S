.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x9, h0_start
jalr x0, x9, 0
h0_start:
                  li x4, 0x40000100
                  csrw 0x301, x4
kernel_sp:        
                  la x17, kernel_stack_end

trap_vec_init:    
                  la x4, mtvec_handler
                  ori x4, x4, 1
                  csrw 0x305, x4 # MTVEC

mepc_setup:       
                  la x4, init
                  csrw 0x341, x4

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x4, 0x1800
                  csrw 0x300, x4 # MSTATUS
                  mret
init:             
                  li x0, 0xff14826a
                  li x1, 0xf597cc8b
                  li x2, 0xf8bd137f
                  li x3, 0xf170b1c8
                  li x4, 0xf345982b
                  li x5, 0xfe952fd0
                  li x6, 0x80000000
                  li x7, 0xf180297a
                  li x8, 0xc41859f7
                  li x9, 0x66597714
                  li x10, 0x0
                  li x11, 0xcffc5ada
                  li x12, 0x80000000
                  li x13, 0x0
                  li x14, 0x9
                  li x15, 0x0
                  li x16, 0xf1f605aa
                  li x18, 0x363fb02f
                  li x19, 0x80000000
                  li x21, 0xf97d3dae
                  li x22, 0xfd50098d
                  li x23, 0x0
                  li x24, 0xfcbd2c04
                  li x25, 0x0
                  li x26, 0xba89f740
                  li x27, 0xe
                  li x28, 0xf4dab879
                  li x29, 0x9736e396
                  li x30, 0x80000000
                  li x31, 0x80000000
                  la x20, user_stack_end
main:             addi         a5, zero, 8 #init loop 0 counter
                  srai         t5, a1, 5
                  addi         s3, zero, 5 #init loop 0 limit
                  sltiu        zero, s4, -133
main_1_0_t:       addi         t5, s11, -1202
                  srai         s5, a4, 18
                  slli         a2, s1, 11
                  addi         a5, a5, -4 #update loop 0 counter
                  sltu         a6, a7, s11
                  sltiu        s0, s10, -830
                  slt          s6, a1, s10
                  srai         s7, tp, 15
                  sll          tp, t6, t1
                  auipc        gp, 1016651
                  auipc        t0, 126986
                  addi         a3, s11, 1691
                  lui          t5, 60766
                  slti         zero, s3, 176
                  slt          tp, a2, s1
                  srl          s7, s9, t1
                  srl          t6, t3, a2
                  addi         a1, a7, 1621
                  xor          t3, s3, a7
                  auipc        a2, 900045
                  xori         t4, a5, 1867
                  slt          zero, t5, s11
                  and          s6, sp, a1
                  bgeu         a5, s3, main_1_0_t #branch for loop 0
                  auipc        t3, 573429
                  addi         ra, zero, 10 #init loop 0 counter
                  sltiu        a1, t0, -1772
                  addi         s6, zero, 16 #init loop 0 limit
                  xor          t5, s4, a4
                  or           s8, t6, t6
                  auipc        s7, 656688
                  xori         a6, a5, 151
                  sltu         tp, s8, t6
main_0_0_t:       xor          a3, s4, a0
                  addi         ra, ra, 1 #update loop 0 counter
                  sll          a1, s10, t3
                  sub          a4, t2, ra
                  sub          zero, a5, a1
                  slt          t5, a0, t2
                  bltu         ra, s6, main_0_0_t #branch for loop 0
                  sra          t1, tp, t6
                  sub          s3, t0, zero
                  sub          s11, a5, gp
                  ori          t2, s7, -1115
                  xor          t2, s9, gp
                  bltu         s4, ra, 24f
                  nop
                  or           a0, s8, s1
                  sltu         s2, s7, s4
                  bge          tp, ra, 15f
                  sra          s7, a6, zero
                  sra          sp, s9, s11
                  bgeu         t5, gp, 28f
                  bgeu         s1, t0, 17f
                  srai         t1, a1, 11
                  srl          a2, s0, ra
15:               beq          t2, s3, 32f
                  slti         s5, a6, -1001
17:               or           s9, a4, a7
                  sub          ra, s11, s8
                  bne          s2, gp, 28f
                  bltu         t5, zero, 26f
                  blt          t5, s5, 30f
                  slt          t3, s4, a3
                  andi         a4, s5, -223
24:               sub          t1, a6, gp
                  bltu         a7, s9, 45f
26:               sltu         s6, t4, a7
                  lui          t2, 377988
28:               nop
                  bge          s3, a5, 35f
30:               sltiu        s5, t6, 119
                  sltu         a6, a4, s9
32:               sub          tp, a0, a6
                  and          a3, s8, s7
                  nop
35:               srli         t6, sp, 29
                  addi         zero, s0, -1409
                  xori         s6, t0, 1334
                  xor          s3, a2, s11
                  nop
                  slt          s2, s2, s11
                  sltiu        s8, t6, -1478
                  xori         t4, a6, 1425
                  srai         a2, t5, 6
                  add          a0, t6, s4
45:               bge          s11, a6, 47f
                  sltu         s6, s2, sp
47:               bltu         sp, s10, 51f
                  sltiu        t2, a7, 664
                  lui          t5, 510934
                  andi         a2, gp, -874
51:               bne          s0, a4, 57f
                  xori         a2, gp, 25
                  beq          s7, t2, 62f
                  srli         s8, a3, 18
                  bltu         a4, tp, 73f
                  sll          a2, s8, s1
57:               sll          t1, t3, t4
                  ori          tp, a3, 1134
                  sltu         s10, t2, t4
                  srl          t3, a5, s2
                  bge          ra, s7, 71f
62:               auipc        a0, 17989
                  sltu         sp, a1, a0
                  xori         t2, t3, -1185
                  bne          a0, a1, 72f
                  nop
                  slt          a3, t6, s2
                  sub          s6, ra, t5
                  addi         s11, sp, 1087
                  slli         a2, a6, 20
71:               lui          a3, 123236
72:               or           sp, t2, t6
73:               lui          sp, 477174
                  sltu         a6, t3, s4
                  srli         s5, zero, 5
                  bne          gp, sp, 77f
77:               bltu         s3, t5, 87f
                  auipc        a2, 599629
                  xori         s9, gp, -1505
                  or           a6, a6, a7
                  sltiu        gp, t6, -1356
                  srai         s3, a4, 1
                  xor          a6, s9, s8
                  sub          s7, t2, t5
                  slli         tp, sp, 8
                  and          s11, s5, s0
87:               xor          a0, s4, a4
                  addi         s10, t2, 80
                  srli         t4, tp, 11
                  beq          t5, a1, 92f
                  addi         s8, s0, 694
92:               xor          a4, s1, s6
                  srl          t2, a7, s8
                  beq          s8, s9, 101f
                  slli         t2, s3, 23
                  slli         t1, s3, 12
                  la           s2, sub_1
                  addi         s2, s2, -149
                  xori         sp, t3, 100
                  or           s6, s8, s1
                  xor          t2, s0, s10
                  nop
                  add          tp, s1, a3
                  srai         s3, a7, 11
main_j1:          jalr         s8, s2, 149 #jump main -> sub_1
                  xor          a0, s0, zero
                  sra          a1, ra, s2
                  ori          s2, s0, -1049
                  addi         t6, a2, 1069
                  or           a0, a2, s3
101:              add          a1, t3, sp
                  sltu         s3, t2, t3
                  nop
                  bgeu         s5, t4, 106f
                  sra          s8, t4, t5
106:              add          a4, zero, a7
                  addi         a3, a2, -840
                  bne          s8, s7, 114f
                  srai         t3, s8, 25
                  xor          s8, t4, a6
                  srai         s7, t6, 23
                  srli         a3, s9, 24
                  bge          a2, s2, 114f
114:              addi         a0, s2, 968
                  la x9, test_done
                  jalr x0, x9, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            sltu         ra, a7, s10
                  xor          s9, s3, s0
                  blt          s9, a2, sub_4_stack_p
                  slti         s11, a7, 678
sub_4_stack_p:    addi         s4, s4, -36
                  slli         t2, a4, 18
                  sw           s8, 4(s4)
                  sra          gp, gp, gp
                  nop
                  srli         t5, s0, 9
                  slti         s6, s4, -1135
                  sltu         s7, a7, s11
                  ori          a5, s4, 1756
                  srli         a0, tp, 7
                  addi         s6, a6, -407
                  add          gp, s4, t3
                  srai         t4, s10, 27
                  xori         s5, zero, 1220
sub_4_j7:         jal          s8, sub_5 #jump sub_4 -> sub_5
                  srli         zero, s8, 24
                  lui          a2, 555972
                  add          t5, t1, ra
                  bltu         s7, t5, 8f
                  sra          sp, t6, a0
                  bltu         a5, gp, 7f
                  sll          a5, a5, a0
7:                beq          s4, s4, 15f
8:                bne          a0, t1, 25f
                  or           s8, s10, t4
                  srl          t3, a1, s11
                  bne          a1, t1, 26f
                  bltu         a2, s8, 14f
                  slt          t2, s5, a1
14:               and          s0, a0, s0
15:               sll          s0, t3, a1
                  andi         a2, t1, 505
                  slti         t3, a2, 169
                  ori          t1, a5, 461
                  slti         a5, gp, -1576
                  slli         a2, t2, 1
                  auipc        zero, 104037
                  auipc        a6, 639751
                  andi         tp, s9, -169
                  slt          s5, s4, s2
25:               sra          s9, s8, a6
26:               and          s10, tp, s4
                  slli         ra, t3, 27
                  sltiu        gp, t2, -1945
                  sll          s7, zero, s0
                  xori         t4, s5, -983
                  ori          t3, a0, 1023
                  xor          a2, s8, t3
                  nop
                  lw           s8, 4(s4)
                  addi         s4, s4, 36
                  add          t3, s8, s9
                  xor          s5, t6, a0
57:               addi x29, x24, 0
57:               jalr x29, x29, 0
sub_2:            bge          tp, s8, sub_2_stack_p
                  srl          zero, s9, a7
sub_2_stack_p:    addi         s4, s4, -64
                  sltu         a1, a2, zero
                  sw           s8, 4(s4)
                  or           t4, sp, a4
                  sll          s10, s4, a0
                  andi         a3, s10, 958
                  xori         a1, a7, 1407
                  slli         s10, a4, 17
                  slli         sp, t0, 29
                  or           s6, s5, zero
                  or           zero, zero, t1
                  or           s9, s7, s5
sub_2_j4:         jal          s8, sub_4 #jump sub_2 -> sub_4
                  addi         s3, t4, 1557
                  andi         a2, tp, 60
                  ori          t4, a7, -1086
                  lui          s10, 611181
                  addi         s5, a7, -1370
                  sltiu        zero, t3, -67
                  srli         a4, t3, 20
                  slt          s9, s2, s3
sub_2_j5:         jal          s8, sub_4 #jump sub_2 -> sub_4
                  addi         a5, zero, 3 #init loop 1 counter
                  ori          t1, a3, 818
                  or           ra, s11, s6
                  or           t6, gp, t4
                  add          gp, a3, a4
                  add          t2, a7, s11
                  add          t1, tp, t6
                  addi         s3, zero, 2 #init loop 1 limit
sub_2_3_1_t:      or           t3, a3, s1
                  addi         a5, a5, -1 #update loop 1 counter
                  auipc        t2, 109269
                  sub          s6, a5, s10
                  nop
                  addi         a4, zero, -3 #init loop 0 counter
                  addi         ra, s9, 1778
                  addi         a6, zero, 10 #init loop 0 limit
                  sll          ra, s5, a2
                  sltu         t2, s6, t6
sub_2_3_0_t:      auipc        a2, 367723
                  and          a2, s11, gp
                  and          a1, a0, a7
                  addi         a4, a4, 2 #update loop 0 counter
                  bltu         a4, a6, sub_2_3_0_t #branch for loop 0
                  sll          s6, t2, t5
                  bgeu         a5, s3, sub_2_3_1_t #branch for loop 1
                  srai         s2, ra, 10
                  addi         t1, zero, 3 #init loop 1 counter
                  sll          s6, s7, t4
                  lui          s6, 587309
                  slt          t0, a4, a1
                  addi         a0, zero, 5 #init loop 1 limit
                  sltiu        sp, t3, -1841
                  addi         s7, zero, -1959
sub_2_4_1_t:      sltu         a5, s6, s1
                  sltu         a5, t6, a1
                  slli         s0, s0, 20
                  addi         t1, t1, 1 #update loop 1 counter
                  addi         t2, zero, 6 #init loop 0 counter
                  lui          s6, 744717
                  xor          t6, s4, s2
                  slti         a3, s6, 1702
                  addi         s10, s8, -127
                  addi         s0, tp, 534
                  or           a1, s7, t5
                  and          s5, s11, gp
                  slt          t0, a4, a0
                  sra          t6, s4, t0
                  addi         a2, zero, 20 #init loop 0 limit
                  slli         s3, t5, 15
                  and          a3, a1, a3
                  sltiu        s10, a5, -747
                  slt          a3, a0, t3
sub_2_4_0_t:      lui          s5, 371082
                  nop
                  addi         t2, t2, 7 #update loop 0 counter
                  and          zero, sp, s11
                  beq          t2, a2, sub_2_4_0_t #branch for loop 0
                  slti         s9, a4, -1657
                  or           s7, s6, s4
                  bltu         t1, a0, sub_2_4_1_t #branch for loop 1
                  xor          a6, a5, zero
                  addi         t6, zero, 9 #init loop 0 counter
                  sra          s10, t3, s9
                  auipc        zero, 604358
                  xori         s5, s4, 716
                  xor          s9, s11, s10
                  addi         a4, zero, 9 #init loop 0 limit
                  srl          sp, s8, s8
sub_2_1_0_t:      andi         tp, t6, 239
                  slti         a3, s6, -58
                  sltiu        s5, s7, 414
                  srai         sp, s8, 1
                  sub          gp, a3, t6
                  sltiu        s7, s4, -827
                  addi         t6, t6, -8 #update loop 0 counter
                  auipc        s7, 89851
                  slt          t4, t6, s9
                  addi         a2, t6, 2035
                  sltu         sp, s11, a6
                  lui          t1, 88676
                  andi         t2, s0, -273
                  bgeu         t6, a4, sub_2_1_0_t #branch for loop 0
                  slti         s0, sp, 1067
                  addi         t5, zero, 7 #init loop 1 counter
                  sll          s0, t2, t3
                  slt          a6, s11, sp
                  slti         tp, a6, 608
                  addi         a0, zero, 9 #init loop 1 limit
                  xor          s7, t0, s0
                  ori          t6, t2, 976
sub_2_0_1_t:      and          a6, s11, s8
                  slli         t0, t4, 21
                  lui          sp, 355004
                  addi         t5, t5, 10 #update loop 1 counter
                  srl          t6, s5, a6
                  addi         s8, zero, 9 #init loop 0 counter
                  sra          a2, t1, s2
                  addi         s6, zero, 8 #init loop 0 limit
sub_2_0_0_t:      xor          t4, t2, s5
                  addi         t6, t6, -1953
                  sra          t2, a3, s6
                  addi         s8, s8, -5 #update loop 0 counter
                  slli         t4, s7, 1
                  sub          s5, t2, s6
                  bgeu         s8, s6, sub_2_0_0_t #branch for loop 0
                  sltiu        s3, s7, -1213
                  addi         t4, s10, 1655
                  or           a6, s11, a6
                  lui          s10, 92988
                  addi         s5, s0, -1904
                  bltu         t5, a0, sub_2_0_1_t #branch for loop 1
                  auipc        a1, 249607
                  addi         s7, zero, -3 #init loop 1 counter
                  addi         ra, zero, 7 #init loop 1 limit
                  auipc        s11, 593784
                  slti         s2, t5, -1267
                  addi         t3, s1, 1345
                  sll          s10, s11, sp
                  addi         a3, zero, 1850
                  addi         a5, s4, 2014
                  ori          a1, s11, -589
                  xori         s6, ra, 54
sub_2_2_1_t:      nop
                  add          a0, s11, t1
                  addi         s7, s7, 10 #update loop 1 counter
                  addi         t4, ra, -551
                  addi         s8, zero, -4 #init loop 0 counter
                  sll          t6, s11, a2
                  addi         s3, zero, 9 #init loop 0 limit
                  or           t0, a6, s0
                  and          a1, s4, s9
                  sra          s5, zero, a7
sub_2_2_0_t:      sltiu        sp, s4, 1969
                  xor          t3, t0, s0
                  addi         s8, s8, 7 #update loop 0 counter
                  srli         a5, s0, 9
                  sra          t4, s2, s2
                  srli         t4, gp, 22
                  bltu         s8, s3, sub_2_2_0_t #branch for loop 0
                  xor          sp, s7, a4
                  xor          t0, a4, t3
                  xori         a1, s11, 1054
                  slli         s6, a5, 24
                  bne          s7, ra, sub_2_2_1_t #branch for loop 1
                  andi         zero, s5, -778
                  lui          t4, 481955
                  nop
                  bge          a5, s7, 12f
                  srli         t1, a6, 15
                  sltu         t5, s3, t0
                  xori         s0, s8, 2001
                  sra          zero, ra, t3
                  bne          a4, t6, 19f
                  and          tp, t5, a5
                  sll          a1, t4, s9
                  nop
                  xori         a5, t0, 1959
12:               blt          t4, a0, 27f
                  ori          sp, s5, -1196
                  srli         s10, a1, 10
                  sll          t0, gp, s1
                  addi         s8, t3, -724
                  slt          a2, s10, a7
                  sub          s11, s7, t5
19:               add          s11, ra, s10
                  bgeu         t4, t5, 32f
                  andi         s11, t2, 1765
                  xor          s2, tp, t6
                  or           t5, ra, gp
                  blt          t2, t6, 42f
                  or           sp, s0, a2
                  ori          a1, a1, 1975
27:               slt          s8, s9, a7
                  sltiu        s5, s8, -1695
                  and          s2, zero, tp
                  bne          s3, a5, 47f
                  xori         s9, a6, -1440
32:               auipc        s11, 516223
                  sltiu        a0, a5, -1185
                  bge          a5, gp, 47f
                  xori         sp, sp, -115
                  bgeu         s8, t1, 44f
                  srl          zero, t6, t0
                  addi         t6, a0, -423
                  bge          t1, t5, 45f
                  or           t2, s0, s0
                  slt          s11, a2, s9
42:               sltiu        t6, a5, -565
                  sltu         ra, s11, t6
44:               sll          a0, s9, a7
45:               xor          sp, zero, s0
                  and          zero, zero, t4
47:               sub          a4, sp, a4
                  lui          s10, 393287
                  sll          t4, t3, s9
                  sll          tp, s2, s0
                  auipc        s2, 868880
                  srai         t2, s8, 29
                  add          a3, s10, s0
                  beq          t6, t2, 67f
                  beq          s6, a7, 58f
                  slti         a3, s0, -1198
                  bltu         s10, tp, 58f
58:               bge          ra, zero, 62f
                  sra          a5, a5, t1
                  xori         t2, sp, 780
                  sll          s2, s5, a3
62:               auipc        a6, 629473
                  ori          s8, a1, -1422
                  srai         sp, s9, 25
                  srai         ra, zero, 19
                  auipc        t0, 613012
67:               auipc        s5, 531679
                  lui          ra, 704025
                  lui          a4, 338476
                  addi         ra, t4, 568
                  sub          a6, ra, gp
                  bgeu         zero, s9, 84f
                  ori          s3, t3, -1394
                  xori         t1, a4, -540
                  xori         s0, a4, -1225
                  bgeu         sp, a0, 92f
                  slli         s9, t4, 5
                  slt          s2, a4, a5
                  andi         t3, a0, -623
                  srai         s5, a1, 27
                  addi         sp, s9, 923
                  auipc        s5, 482748
                  sltu         a2, s2, s4
                  nop
                  srai         s11, a2, 13
                  sub          a2, s5, s6
sub_2_j6:         jal          s8, sub_3 #jump sub_2 -> sub_3
                  srai         s11, a2, 8
                  blt          t0, s4, 83f
                  lui          t6, 60809
                  lui          a0, 878038
83:               bgeu         a7, s6, 96f
84:               sra          t0, s10, s10
                  srli         s0, gp, 19
                  slt          a2, s4, sp
                  auipc        t4, 996874
                  auipc        a2, 479877
                  blt          sp, t5, 101f
                  and          s11, t0, t2
                  sub          s9, tp, a7
92:               bge          t4, s1, 103f
                  nop
                  nop
                  andi         s11, t6, -1944
96:               bltu         a7, s9, 102f
                  and          a3, t1, a6
                  beq          s7, t0, 109f
                  and          s6, a1, s4
                  beq          t0, a2, 114f
101:              andi         t6, gp, 1365
102:              srli         s8, zero, 14
103:              or           t0, s0, t1
                  xori         s6, s4, -236
                  ori          a5, ra, 1349
                  slli         s10, a4, 11
                  sltiu        a3, s9, 395
                  blt          s10, t0, 115f
109:              sltu         t1, sp, s8
                  srai         a0, s2, 5
                  srli         a0, s5, 5
                  or           s11, a3, s7
                  srli         zero, a5, 3
114:              beq          a1, t3, 123f
115:              nop
                  bge          s9, t0, 128f
                  slt          s2, t2, s6
                  srai         s3, s1, 13
                  bge          t5, t3, 129f
                  ori          t0, s2, -1440
                  nop
                  xor          ra, t6, a3
123:              auipc        s7, 999993
                  or           s3, t6, s10
                  andi         t2, s9, 1162
                  addi         a5, s10, 1651
                  add          ra, t6, a0
128:              bltu         a3, gp, 134f
129:              sll          s11, a0, a0
                  blt          s4, t1, 136f
                  sra          s6, tp, tp
                  ori          s7, t0, 1112
                  srai         a6, a4, 1
134:              slli         ra, t0, 28
                  ori          t4, a5, -1309
136:              sra          a6, t4, s10
                  auipc        s2, 166054
                  srai         a0, a3, 24
                  blt          s1, t1, 144f
                  blt          s1, a5, 149f
                  addi         t2, s3, -211
                  lui          t6, 571761
                  slt          a5, s10, gp
144:              bgeu         t3, t1, 161f
                  sll          a1, a2, s4
                  bgeu         t6, t3, 158f
                  bge          s11, a4, 159f
                  auipc        s7, 354591
149:              or           s9, t0, a6
                  slti         t2, t4, -1416
                  and          s10, tp, t6
                  nop
                  bgeu         s7, s3, 165f
                  sltu         s2, s6, t5
                  srli         sp, t3, 1
                  nop
                  sra          t1, a7, gp
158:              sra          s7, ra, a5
159:              xor          t1, s0, a0
                  srl          tp, a6, a4
161:              addi         ra, a2, -528
                  beq          zero, s9, 178f
                  bgeu         s0, t6, 181f
                  and          a4, s6, t6
165:              xor          a6, s1, s0
                  xori         a2, s0, -731
                  ori          t4, t1, -1450
                  slt          s11, tp, t3
                  sltu         sp, s1, a5
                  slt          ra, t3, s1
                  sub          t1, s10, s5
                  beq          t6, a3, 184f
                  xor          s11, sp, s7
                  bge          a1, a7, 187f
                  srli         s10, sp, 17
                  sub          t3, s1, s2
                  or           gp, a4, t5
178:              or           a2, s6, ra
                  beq          s7, t3, 180f
180:              nop
181:              slti         t4, gp, -1074
                  beq          t3, a0, 191f
                  slti         gp, s5, -1068
184:              srai         s7, t2, 31
                  srli         gp, s8, 25
                  srai         s3, t5, 0
187:              bne          s3, s1, 190f
                  beq          s5, s4, 198f
                  sra          s0, a7, s2
190:              nop
191:              srai         s10, a1, 30
                  andi         s11, ra, 946
                  and          sp, a7, s9
                  auipc        t2, 255623
                  beq          s10, gp, 207f
                  nop
                  sltu         t3, t6, t4
198:              bne          sp, a3, 204f
                  or           t3, s8, a0
                  bltu         s6, s2, 213f
                  sll          a5, sp, s11
                  bne          tp, a4, 205f
                  beq          s1, t1, 216f
204:              ori          a6, t6, -608
205:              slli         a3, s9, 28
                  blt          a5, t6, 217f
207:              bne          a7, a5, 222f
                  sltu         a6, t1, a3
                  sltu         gp, s11, tp
                  ori          s11, a7, -21
                  bge          a3, s1, 221f
                  slti         s2, a2, -1871
213:              srl          s10, s6, tp
                  sltu         t3, s3, a6
                  lui          s5, 700556
216:              add          tp, s4, a5
217:              andi         sp, s3, 17
                  sltu         a4, gp, sp
                  beq          t2, t5, 228f
                  srli         s7, s3, 28
221:              sll          a6, t5, s0
222:              srli         t6, s8, 10
                  sltiu        t6, s10, -1858
                  bgeu         s7, tp, 238f
                  slli         gp, a1, 30
                  srli         a4, s0, 2
                  slt          t2, tp, s9
228:              bltu         s2, t0, 234f
                  srai         t0, t6, 11
                  and          s6, s3, t6
                  sra          t5, t6, t6
                  bltu         t3, s11, 243f
                  bltu         a2, a5, 237f
234:              lui          tp, 128389
                  bltu         s5, s9, 243f
                  srli         s7, sp, 25
237:              beq          t2, s2, 242f
238:              blt          s11, s9, 244f
                  srl          a0, a7, s6
                  blt          tp, s11, 247f
                  srli         a2, gp, 5
242:              slti         a0, s4, 860
243:              srli         t2, s4, 21
244:              xori         s10, s0, -1050
                  bge          s7, a2, 251f
                  andi         s10, a4, 1741
247:              lui          t1, 777749
                  lui          ra, 322463
                  slt          zero, s6, s6
                  beq          t1, tp, 253f
251:              srai         t6, s9, 23
                  addi         a1, zero, 871
253:              sltu         a6, s1, s8
                  xor          s9, gp, a3
                  sltu         s8, s3, a6
                  sltu         t3, s9, s2
                  sra          s2, s8, s0
                  bgeu         a6, tp, 270f
                  sub          s9, t6, t2
                  nop
                  bge          s11, tp, 270f
                  srli         t1, s3, 2
                  bgeu         s1, a1, 274f
                  srai         a3, tp, 31
                  sra          a1, a6, s6
                  srl          s9, s9, a2
                  bge          s0, t5, 274f
                  add          s11, a0, zero
                  andi         t0, s0, 464
270:              sub          t6, a0, t4
                  auipc        sp, 599658
                  beq          sp, s2, 274f
                  sltu         ra, gp, gp
274:              slti         zero, a7, 302
                  sub          s10, gp, s9
                  srli         s11, s6, 25
                  slli         zero, s9, 30
                  lw           s8, 4(s4)
                  slti         t2, s11, -1566
                  addi         s4, s4, 64
                  sub          s3, t6, s0
                  addi         t6, s1, -2017
                  addi         t4, a3, 52
                  slti         zero, a0, 446
463:              addi x2, x24, 0
463:              jalr x2, x2, 0
sub_3:            auipc        s7, 962350
                  addi         s4, s4, -24
                  sw           s8, 4(s4)
                  or           a4, s5, s11
                  xor          t2, s1, sp
                  addi         a1, zero, 5 #init loop 1 counter
                  addi         t1, zero, -14 #init loop 1 limit
sub_3_21_1_t:     sltu         s10, a1, zero
                  addi         a1, a1, -1 #update loop 1 counter
                  slt          s2, a5, s4
                  addi         t6, zero, 9 #init loop 0 counter
                  addi         s9, zero, 8 #init loop 0 limit
sub_3_21_0_t:     auipc        a3, 23323
                  srai         s3, a4, 12
                  addi         t6, t6, -7 #update loop 0 counter
                  bgeu         t6, s9, sub_3_21_0_t #branch for loop 0
                  bne          a1, t1, sub_3_21_1_t #branch for loop 1
                  slt          zero, a7, a0
                  addi         s2, zero, 5 #init loop 1 counter
                  slt          t2, t6, a4
                  addi         t5, a2, 534
                  xor          t2, s0, t3
                  addi         a3, zero, 5 #init loop 1 limit
sub_3_9_1_t:      sltu         a5, s6, s1
                  nop
                  srli         s5, s6, 11
                  lui          a6, 118978
                  addi         s2, s2, -4 #update loop 1 counter
                  addi         s8, zero, 0 #init loop 0 counter
                  lui          a5, 372408
                  sltiu        t3, s5, -1395
                  srl          gp, s4, s9
                  add          t3, a3, t3
                  addi         s11, zero, 4 #init loop 0 limit
sub_3_9_0_t:      xori         t1, t6, 2034
                  addi         a0, s4, -1237
                  addi         s8, s8, 9 #update loop 0 counter
                  sltu         zero, tp, ra
                  add          t5, gp, s7
                  bltu         s8, s11, sub_3_9_0_t #branch for loop 0
                  xori         a2, gp, -413
                  bgeu         s2, a3, sub_3_9_1_t #branch for loop 1
                  auipc        sp, 507304
                  addi         a6, zero, -8 #init loop 1 counter
                  ori          s2, s0, -1975
                  and          t3, s3, a1
                  sltiu        t2, s10, -1556
                  sltiu        a1, sp, 627
                  srai         a1, s4, 8
                  srli         t2, a6, 16
                  addi         ra, zero, -4 #init loop 1 limit
                  sltu         s6, tp, t0
sub_3_8_1_t:      lui          s3, 1003883
                  srli         t2, t0, 17
                  srai         a1, a6, 11
                  and          zero, s4, tp
                  slt          s5, gp, s2
                  addi         a6, a6, 1 #update loop 1 counter
                  addi         s8, zero, -1 #init loop 0 counter
                  auipc        t4, 839743
                  sltiu        t4, s11, -1940
                  sll          sp, s6, zero
                  addi         gp, zero, -5 #init loop 0 limit
                  srli         s9, a4, 10
sub_3_8_0_t:      andi         a0, s6, 88
                  addi         s0, t1, -1924
                  addi         s8, s8, -4 #update loop 0 counter
                  sra          t6, s2, a5
                  beq          s8, gp, sub_3_8_0_t #branch for loop 0
                  sll          s5, t4, a4
                  nop
                  sltiu        t0, a1, 631
                  xori         t4, a5, -643
                  xori         t3, a7, -973
                  beq          a6, ra, sub_3_8_1_t #branch for loop 1
                  slli         t0, sp, 28
                  addi         s10, zero, 10 #init loop 0 counter
                  or           a0, s6, t0
                  srl          s2, s9, zero
                  slli         t0, a2, 17
                  sltiu        s5, a7, -713
                  nop
                  or           s3, t5, a4
                  sltiu        s11, zero, 445
                  add          t0, a6, t4
                  addi         a2, s7, 1093
                  addi         a5, zero, 10 #init loop 0 limit
                  sll          zero, s0, a0
sub_3_11_0_t:     andi         ra, s9, -978
                  nop
                  add          s11, s1, a0
                  sra          t1, s7, s4
                  addi         s10, s10, -9 #update loop 0 counter
                  auipc        t4, 39544
                  nop
                  bgeu         s10, a5, sub_3_11_0_t #branch for loop 0
                  nop
                  addi         s0, zero, 3 #init loop 0 counter
                  slt          a6, a5, zero
                  sll          s5, s9, t3
                  addi         a0, zero, -7 #init loop 0 limit
                  xor          gp, a1, s6
                  srl          s6, t2, s3
                  sltiu        s2, t2, 1607
                  add          s2, gp, t4
                  sltiu        t5, t0, -752
sub_3_14_0_t:     sltiu        t5, a4, -1046
                  slt          a6, a4, a7
                  slli         gp, a2, 20
                  sll          t1, s5, sp
                  slli         s5, a5, 17
                  sub          a6, a3, gp
                  addi         s0, s0, -10 #update loop 0 counter
                  sub          a4, ra, a7
                  beq          s0, a0, sub_3_14_0_t #branch for loop 0
                  andi         sp, tp, 1885
                  addi         ra, zero, 0 #init loop 0 counter
                  srai         a6, a5, 12
                  slti         s2, t4, 2012
                  xori         a5, a6, -1239
                  sltiu        s8, sp, -244
                  sra          a4, s0, s11
                  srli         a0, s10, 5
                  slt          t2, s11, zero
                  addi         sp, zero, -19 #init loop 0 limit
                  xori         a1, t0, 366
                  auipc        t4, 669510
sub_3_19_0_t:     add          t1, s0, s6
                  srli         a4, s8, 29
                  sra          t5, a6, s1
                  addi         ra, ra, -2 #update loop 0 counter
                  lui          t2, 938788
                  nop
                  xor          zero, t4, a1
                  or           a5, t0, s1
                  bge          ra, sp, sub_3_19_0_t #branch for loop 0
                  sltu         t1, a3, s0
                  addi         a1, zero, 8 #init loop 0 counter
                  addi         a2, zero, 4 #init loop 0 limit
sub_3_1_0_t:      sltiu        gp, s11, 582
                  addi         a1, a1, -3 #update loop 0 counter
                  lui          t6, 276312
                  bgeu         a1, a2, sub_3_1_0_t #branch for loop 0
                  srai         s8, t1, 19
                  addi         s9, zero, -1 #init loop 1 counter
                  slti         s7, ra, 132
                  lui          s0, 916762
                  addi         a3, zero, 4 #init loop 1 limit
                  andi         t0, a6, 1805
sub_3_17_1_t:     sltu         s6, s1, sp
                  lui          zero, 228990
                  addi         s9, s9, 5 #update loop 1 counter
                  ori          s6, sp, -326
                  addi         a1, zero, -5 #init loop 0 counter
                  sltu         a5, s7, zero
                  addi         t6, zero, 5 #init loop 0 limit
sub_3_17_0_t:     nop
                  auipc        t3, 790512
                  ori          a0, a3, 900
                  sll          t1, s9, a3
                  addi         a1, a1, 4 #update loop 0 counter
                  sra          a0, a2, sp
                  andi         t4, a7, -1214
                  addi         s2, a0, -1344
                  bltu         a1, t6, sub_3_17_0_t #branch for loop 0
                  srl          s0, a6, s2
                  andi         s5, sp, 189
                  nop
                  auipc        a4, 697730
                  add          s11, gp, s4
                  addi         a0, a3, 169
                  sltiu        s8, s4, 422
                  beq          s9, a3, sub_3_17_1_t #branch for loop 1
                  slt          a5, t5, t6
                  addi         sp, zero, 5 #init loop 0 counter
                  sltiu        zero, t6, 170
                  lui          a0, 703589
                  addi         t4, zero, 8 #init loop 0 limit
                  srli         s6, s10, 7
sub_3_4_0_t:      slti         t6, t6, 519
                  addi         sp, sp, 1 #update loop 0 counter
                  sltiu        a4, s3, 1646
                  xori         s10, s1, 1012
                  ori          t3, a6, 147
                  sra          s0, s11, s6
                  add          gp, t0, t3
                  bltu         sp, t4, sub_3_4_0_t #branch for loop 0
                  addi         a5, a6, -43
                  addi         t1, zero, -9 #init loop 1 counter
                  addi         s11, zero, 18 #init loop 1 limit
                  sra          sp, s1, gp
sub_3_12_1_t:     sub          tp, ra, t3
                  addi         t1, t1, 10 #update loop 1 counter
                  slti         a3, sp, 1506
                  ori          s10, sp, 1083
                  or           a6, a3, a1
                  add          s7, s1, s9
                  srl          s0, ra, s6
                  or           s8, t2, s7
                  addi         s2, zero, -1 #init loop 0 counter
                  xor          t2, s3, s3
                  addi         s5, a3, -1561
                  auipc        zero, 417073
                  and          tp, a2, s11
                  andi         s8, a5, -273
                  slt          a6, s11, t3
                  xor          t4, s4, s0
                  srl          a3, s0, tp
                  xor          s10, a2, s8
                  add          ra, zero, a6
                  srai         s10, t4, 21
                  sltiu        s5, t2, -1709
                  addi         t0, zero, 4 #init loop 0 limit
                  srl          s0, t6, s3
sub_3_12_0_t:     sltu         s9, a3, s1
                  addi         s2, s2, 5 #update loop 0 counter
                  lui          gp, 794845
                  bne          s2, t0, sub_3_12_0_t #branch for loop 0
                  srai         ra, zero, 30
                  bltu         t1, s11, sub_3_12_1_t #branch for loop 1
                  sltiu        ra, t2, -547
                  addi         s7, zero, -6 #init loop 1 counter
                  sra          a2, sp, ra
                  slti         s10, ra, -1118
                  addi         a0, zero, 12 #init loop 1 limit
                  lui          t5, 105089
sub_3_6_1_t:      and          s11, s11, a5
                  srli         t2, zero, 29
                  addi         s7, s7, 9 #update loop 1 counter
                  slti         s5, s2, -232
                  addi         s3, zero, 10 #init loop 0 counter
                  addi         a5, s7, -543
                  addi         t0, zero, 9 #init loop 0 limit
                  slti         t5, a2, 845
sub_3_6_0_t:      andi         s6, s5, 494
                  addi         s3, s3, -7 #update loop 0 counter
                  xor          s5, s3, s10
                  andi         ra, s6, -1752
                  xori         tp, t3, -513
                  auipc        sp, 546042
                  bgeu         s3, t0, sub_3_6_0_t #branch for loop 0
                  sll          t3, t4, s10
                  andi         a3, tp, -1669
                  ori          s11, a1, 333
                  slt          t6, a3, a0
                  sra          t2, a4, t1
                  auipc        a3, 763546
                  beq          s7, a0, sub_3_6_1_t #branch for loop 1
                  ori          s2, zero, -781
                  addi         t2, zero, 8 #init loop 0 counter
                  ori          a2, s1, 1463
                  lui          t0, 729601
                  addi         a5, zero, 6 #init loop 0 limit
                  sra          gp, tp, s6
                  lui          s5, 274269
                  sll          sp, t5, t0
                  lui          s9, 122917
                  srai         t0, s9, 5
sub_3_16_0_t:     nop
                  slti         sp, a3, 939
                  sll          t5, s0, ra
                  ori          t3, ra, -145
                  and          s7, s7, zero
                  addi         t2, t2, -4 #update loop 0 counter
                  nop
                  or           s11, tp, t2
                  bgeu         t2, a5, sub_3_16_0_t #branch for loop 0
                  sll          a3, s9, s1
                  addi         t2, zero, -5 #init loop 0 counter
                  xori         a2, a2, 1523
                  addi         s10, zero, 17 #init loop 0 limit
                  and          sp, t3, s4
                  addi         a2, a6, -773
                  or           a6, a7, s9
sub_3_3_0_t:      addi         t1, t6, 506
                  addi         t2, t2, 2 #update loop 0 counter
                  nop
                  and          tp, t3, a5
                  add          s7, t0, s3
                  ori          t0, a5, 772
                  bne          t2, s10, sub_3_3_0_t #branch for loop 0
                  andi         a2, s7, 2005
                  addi         s11, zero, 8 #init loop 0 counter
                  andi         t2, s8, -1526
                  addi         s2, zero, 7 #init loop 0 limit
                  xor          t2, zero, t5
                  and          a1, s5, s0
sub_3_15_0_t:     addi         s5, s8, -460
                  addi         s11, s11, -5 #update loop 0 counter
                  xori         s3, t0, 1089
                  bgeu         s11, s2, sub_3_15_0_t #branch for loop 0
                  add          a6, s11, a7
                  addi         a2, zero, 5 #init loop 1 counter
                  slt          s11, a7, t3
                  auipc        s5, 734053
                  srli         a5, s9, 12
                  sub          t1, t4, sp
                  addi         t5, zero, 2 #init loop 1 limit
                  sltu         t2, a5, a4
                  nop
sub_3_5_1_t:      sltiu        s10, s11, -1789
                  addi         a2, a2, -1 #update loop 1 counter
                  addi         a1, zero, 7 #init loop 0 counter
                  ori          a6, s0, 420
                  addi         s8, zero, -6 #init loop 0 limit
                  sub          t6, a5, s8
                  sltu         tp, t1, zero
sub_3_5_0_t:      auipc        t3, 858412
                  sra          a0, s7, s6
                  slti         s9, a1, 1166
                  addi         a1, a1, -3 #update loop 0 counter
                  auipc        s9, 985696
                  bge          a1, s8, sub_3_5_0_t #branch for loop 0
                  sltu         ra, s10, t1
                  bgeu         a2, t5, sub_3_5_1_t #branch for loop 1
                  xor          a6, zero, zero
                  addi         s0, zero, 9 #init loop 1 counter
                  and          s7, a0, t3
                  addi         s11, zero, 16 #init loop 1 limit
                  srl          t6, s9, a4
                  sub          s7, s0, t4
sub_3_2_1_t:      add          a4, s7, s10
                  sll          zero, gp, a0
                  addi         s0, s0, 4 #update loop 1 counter
                  addi         a5, zero, 9 #init loop 0 counter
                  sub          t5, t4, s0
                  addi         s8, zero, 3 #init loop 0 limit
                  lui          s9, 68071
sub_3_2_0_t:      xor          a4, a1, t5
                  and          s6, s5, a5
                  addi         a5, a5, -6 #update loop 0 counter
                  add          a0, t6, ra
                  slli         s5, a2, 8
                  bge          a5, s8, sub_3_2_0_t #branch for loop 0
                  xor          t5, s9, s3
                  auipc        sp, 668979
                  add          ra, s11, t0
                  xor          t6, t1, t1
                  blt          s0, s11, sub_3_2_1_t #branch for loop 1
                  srli         sp, sp, 18
                  addi         t0, zero, 8 #init loop 0 counter
                  auipc        a4, 804617
                  auipc        t3, 520465
                  addi         t6, zero, 20 #init loop 0 limit
                  xor          s7, s11, t4
sub_3_20_0_t:     sub          gp, s6, s3
                  or           gp, t6, gp
                  addi         t0, t0, 6 #update loop 0 counter
                  srli         s8, s0, 27
                  srli         s2, t6, 6
                  addi         a4, a6, -453
                  and          a0, s5, a1
                  slli         a5, t0, 8
                  beq          t0, t6, sub_3_20_0_t #branch for loop 0
                  xor          s0, a1, s8
                  addi         t2, zero, 3 #init loop 1 counter
                  addi         t1, zero, 19 #init loop 1 limit
                  srl          gp, s3, t2
                  auipc        s11, 739727
                  slti         s3, s8, 381
                  or           s0, s4, tp
sub_3_0_1_t:      nop
                  lui          a5, 1025830
                  and          t6, a1, gp
                  addi         t2, t2, 1 #update loop 1 counter
                  addi         s9, zero, -9 #init loop 0 counter
                  sub          sp, zero, a0
                  addi         s10, zero, 9 #init loop 0 limit
sub_3_0_0_t:      and          a4, a7, s3
                  slli         s11, a5, 19
                  addi         s9, s9, 10 #update loop 0 counter
                  slti         gp, s11, -656
                  auipc        a5, 587681
                  addi         t3, s3, 285
                  slli         s7, a7, 31
                  bltu         s9, s10, sub_3_0_0_t #branch for loop 0
                  add          a2, a4, a2
                  xor          s0, t4, gp
                  slli         a0, s1, 30
                  ori          s8, s2, 1321
                  bltu         t2, t1, sub_3_0_1_t #branch for loop 1
                  srai         t3, t5, 16
                  sra          t6, s1, t6
                  lui          t4, 88608
                  slli         t3, t3, 10
                  slli         zero, s10, 20
                  srai         a4, s4, 18
                  slli         a2, t5, 30
                  srai         s2, t5, 20
                  xor          a6, t2, t3
                  and          s6, s0, t1
                  sltu         s11, s3, s3
                  blt          ra, s10, 27f
                  srli         s5, gp, 10
                  sltu         t1, s7, s4
                  beq          s11, s5, 26f
                  auipc        t2, 511006
                  bltu         s5, t3, 28f
                  bgeu         s1, t4, 24f
                  bgeu         a3, s8, 31f
                  sub          s3, sp, s11
                  slli         s8, t2, 21
                  bgeu         ra, t1, 30f
                  ori          t2, s6, 701
                  slli         s0, s6, 12
                  sltu         s5, zero, t5
24:               beq          a7, s7, 31f
                  sltu         t0, sp, s8
26:               blt          s2, a5, 37f
27:               auipc        tp, 675096
28:               sltiu        zero, t5, -296
                  and          t0, s5, s7
30:               blt          s3, t6, 44f
31:               ori          t5, s8, 1735
                  slli         t0, a5, 15
                  bne          ra, gp, 47f
                  slli         zero, a3, 0
                  srl          s11, t4, s10
                  srli         zero, t6, 5
37:               sltu         a0, s7, t3
                  xori         a4, s11, 1061
                  srai         s5, t0, 8
                  slli         a4, tp, 26
                  addi         a4, t6, 2015
                  or           a5, a6, a4
                  srli         zero, s11, 25
44:               or           s8, t0, s9
                  blt          s3, t2, 64f
                  blt          a0, s5, 47f
47:               slti         t0, a1, -31
                  bgeu         a6, s3, 56f
                  srai         t6, a2, 20
                  add          s9, s6, a4
                  blt          a5, t2, 63f
                  bgeu         zero, t1, 66f
                  srl          s11, a2, s3
                  sll          t6, t3, t4
                  and          s11, a7, t5
56:               srai         s7, s7, 5
                  and          s5, s11, s1
                  slli         a2, tp, 18
                  srli         a0, s8, 4
                  sltiu        s7, s11, -1645
                  bne          t5, a7, 68f
                  blt          zero, s8, 69f
63:               auipc        t2, 305712
64:               lui          s0, 615236
                  sltiu        gp, zero, -651
66:               bltu         a0, t6, 77f
                  slt          s5, s0, a7
68:               andi         s6, gp, -1709
69:               blt          s11, s7, 82f
                  bge          s6, zero, 88f
                  andi         a3, s9, -614
                  xor          t6, s2, a3
                  bltu         s9, ra, 83f
                  and          t6, a7, tp
                  addi         sp, t5, -1871
                  bgeu         a2, zero, 95f
77:               or           s11, t4, sp
                  and          s0, s5, gp
                  lui          a5, 418714
                  sub          s2, a7, s10
                  slti         a3, s6, -430
82:               xor          a0, a7, s1
83:               auipc        s10, 733644
                  srai         s7, tp, 17
                  lui          s8, 174482
                  beq          a6, a0, 97f
                  andi         t2, ra, -1133
88:               bltu         a2, s4, 107f
                  beq          s10, tp, 104f
                  ori          t4, s1, 964
                  sltiu        ra, a5, 481
                  nop
                  slti         gp, a0, 1710
                  sub          t2, t5, t2
95:               sub          a4, s9, tp
                  slli         s6, a3, 19
97:               bne          a0, s4, 106f
                  bltu         t2, s4, 100f
                  bltu         t3, a3, 104f
100:              srai         s7, t2, 6
                  blt          a0, s8, 103f
                  addi         a4, a6, -1446
103:              srai         tp, t1, 25
104:              bge          t6, s8, 116f
                  andi         t2, a6, -347
106:              bgeu         t2, a6, 111f
107:              auipc        a0, 213966
                  slti         gp, tp, 5
                  blt          s10, s11, 126f
                  srai         s5, zero, 7
111:              sll          t4, a1, gp
                  xori         s11, t0, 717
                  srl          t0, a1, s4
                  andi         gp, t1, 1005
                  andi         sp, t5, -1996
116:              addi         s11, gp, 469
                  xori         s2, t3, 848
                  sltu         tp, sp, a6
                  srli         t2, tp, 13
                  or           ra, zero, a0
                  srli         t2, s2, 28
                  auipc        tp, 350790
                  slt          t4, s8, ra
                  srl          s2, ra, t0
                  lui          s9, 245640
126:              andi         s10, s7, 292
                  srl          s2, a7, s5
                  xori         t3, a5, 1090
                  or           t6, a0, s7
                  sltu         t6, s7, s7
                  slti         t2, t2, -18
                  ori          a6, s11, -414
                  sltu         t0, s8, s8
                  lui          s2, 119381
                  sltu         s5, tp, t3
                  xor          s10, s3, gp
                  addi         a3, a3, 446
                  bltu         a7, s11, 146f
                  bgeu         sp, s9, 158f
                  nop
                  auipc        s5, 47083
                  lui          zero, 791714
                  bne          a2, sp, 157f
                  beq          t6, a0, 151f
                  and          s2, a2, t0
146:              srl          t3, t4, t1
                  slli         tp, t1, 19
                  srai         s0, t1, 26
                  srai         t3, s3, 6
                  and          s11, s11, t4
151:              ori          s9, t5, -252
                  srl          s0, a1, s10
                  slti         t0, s5, -1982
                  add          s0, s11, s0
                  and          s0, s3, s5
                  sll          a6, a6, s7
157:              blt          t6, a5, 167f
158:              srai         s5, t5, 19
                  sra          s0, a6, a2
                  add          a4, t0, s9
                  beq          a0, s11, 175f
                  slt          s7, a5, sp
                  slt          ra, s8, a6
                  auipc        s8, 460477
                  addi         s8, ra, -1736
                  srai         zero, sp, 19
167:              sra          a5, t5, t2
                  lui          a6, 636544
                  sltiu        t4, s1, -179
                  auipc        s5, 285732
                  bne          gp, ra, 172f
172:              sltu         s0, ra, s6
                  addi         t6, a4, -1589
                  or           a2, s9, t2
175:              srl          s10, ra, a3
                  sra          ra, s0, a0
                  nop
                  bge          s9, a4, 197f
                  blt          a1, t5, 190f
                  andi         t2, zero, 1908
                  srai         s8, a0, 0
                  lui          s5, 366554
                  xori         s8, s6, 1536
                  srai         a6, a6, 16
                  bgeu         t4, t5, 197f
                  slti         s6, s0, 1611
                  andi         s6, t0, -905
                  bgeu         s3, s9, 201f
                  beq          s10, a7, 207f
190:              sub          s3, s6, sp
                  xor          t0, s9, s4
                  bltu         a3, a5, 201f
                  sltiu        zero, s10, 1584
                  bltu         s2, s11, 209f
                  srli         a2, t2, 14
                  sltu         t0, t4, a6
197:              srai         t4, s6, 26
                  blt          t1, s0, 212f
                  bne          s2, sp, 207f
                  srai         a1, zero, 4
201:              sra          t2, a6, sp
                  sltu         t3, s3, s1
                  bge          a7, s3, 210f
                  sltu         s6, t1, t5
                  srai         sp, s6, 11
                  nop
207:              lui          a6, 540852
                  and          s11, s7, s5
209:              bltu         a7, a5, 221f
210:              slti         s7, sp, 1058
                  sltu         a0, s6, t4
212:              bgeu         ra, s5, 223f
                  sltu         ra, s0, a7
                  and          t3, s4, s5
                  bgeu         s5, s5, 228f
                  xor          t4, s0, s0
                  or           s11, a0, s5
                  blt          a7, a6, 220f
                  sltiu        t1, ra, -725
220:              auipc        a5, 715956
221:              sltiu        s3, a6, 1584
                  sll          ra, s4, s6
223:              bge          t1, gp, 225f
                  xor          s7, s0, a4
225:              bge          a6, s0, 244f
                  bltu         s1, a1, 233f
                  sll          t1, a1, t3
228:              slt          s7, sp, s8
                  slt          a0, ra, t4
                  beq          t0, s5, 240f
                  srl          zero, s0, a2
                  bltu         t5, a3, 245f
233:              bne          t5, a0, 244f
                  bge          t2, a3, 248f
                  sltiu        a1, s11, 1824
                  ori          t4, s8, 1018
                  andi         a1, s6, 1816
                  lui          s8, 886249
                  sll          a4, a2, a1
240:              xori         t2, sp, 574
                  or           t4, t1, a7
                  bne          a1, a7, 255f
                  nop
244:              bltu         t6, t4, 245f
245:              auipc        t2, 259379
                  sll          a0, s0, t4
                  sltu         s8, t6, t4
248:              slli         a5, ra, 1
                  addi         gp, s2, -1957
                  nop
                  bgeu         a4, s10, 261f
                  srli         s9, s2, 0
                  bgeu         t4, s0, 265f
                  bge          s7, s5, 265f
255:              nop
                  sll          sp, t3, a6
                  nop
                  add          a0, a7, t6
                  sltiu        t2, a0, -1242
                  addi         a5, t4, 578
261:              sltiu        s0, t1, 1552
                  xori         t0, t0, 1199
                  slti         zero, s8, 197
                  srli         s10, t3, 15
265:              bne          a7, gp, 279f
                  sltiu        t2, a0, -924
                  bne          a0, t1, 281f
                  auipc        t2, 862226
                  nop
                  sra          s0, s4, s8
                  nop
                  ori          t0, t0, 1955
                  and          s8, s4, ra
                  nop
                  sltu         zero, gp, zero
                  bgeu         sp, ra, 290f
                  xor          s11, s8, s6
                  sub          t0, s3, s0
279:              ori          a0, s4, 424
                  blt          s0, t3, 289f
281:              slli         a5, t6, 25
                  xori         s10, s0, -1279
                  sltiu        sp, gp, 444
                  sub          sp, t3, a7
                  bge          a7, a6, 298f
                  srl          s11, sp, t0
                  xor          a5, t1, tp
                  slti         s7, a3, -1501
289:              sltu         s9, t2, a5
290:              srl          t6, s4, s11
                  bne          t6, s9, 308f
                  bltu         s2, s0, 311f
                  bltu         a6, a7, 312f
                  add          t0, t0, t2
                  sra          zero, a0, s5
                  bltu         t3, t4, 303f
                  lui          ra, 123858
298:              nop
                  sll          t1, a4, t0
                  srai         t2, s7, 29
                  slt          s6, a5, t5
                  beq          s7, s10, 310f
303:              slli         s6, s7, 15
                  sltu         t4, zero, t6
                  addi         s7, a3, 1559
                  slt          t3, s9, a4
                  add          s2, tp, s2
308:              xori         s5, a0, -1825
                  ori          gp, s7, 1082
310:              srli         s10, a6, 17
311:              blt          a4, s1, 316f
312:              srl          s2, t3, s3
                  andi         a5, gp, 1515
                  xori         t4, t1, 1992
                  bgeu         s2, a1, 325f
316:              and          a6, t3, s5
                  sub          a2, a6, t5
                  add          t5, t2, t2
                  bgeu         a4, s1, 337f
                  slli         t4, a3, 0
                  ori          a5, zero, 1305
                  lui          s6, 444830
                  sub          t0, t5, tp
                  or           s9, t2, t3
325:              sub          s9, t3, gp
                  slli         a0, t1, 15
                  beq          s0, t6, 339f
                  slli         s7, t6, 22
                  bne          s8, a5, 337f
                  beq          a6, zero, 343f
                  slli         t0, t0, 26
                  nop
                  auipc        s9, 571984
                  xori         a1, t2, 1164
                  and          a4, a2, s9
                  slli         a3, zero, 7
337:              or           a3, s3, s11
                  srli         t5, a6, 2
339:              addi         zero, s7, 1543
                  srl          tp, a2, sp
                  ori          s6, s1, 708
                  srli         tp, ra, 8
343:              andi         t6, s1, 671
                  xori         s0, a7, -1662
                  auipc        s3, 244511
                  slti         s2, s9, -683
                  and          zero, s2, s2
                  bge          s7, s3, 359f
                  sll          a2, s7, s0
                  addi         a3, s7, -223
                  or           s6, ra, tp
                  nop
                  slt          s2, s11, s1
                  srli         t1, ra, 21
                  xor          t5, a3, t4
                  addi         t3, ra, -25
                  bge          a5, a7, 359f
                  sll          t1, sp, t4
359:              nop
                  beq          a2, s4, 362f
                  or           sp, a3, t0
362:              bge          t1, zero, 369f
                  or           zero, t5, a3
                  sll          s3, gp, gp
                  bge          gp, t6, 376f
                  addi         s11, a2, -1281
                  addi         s0, a7, -1207
                  ori          s11, gp, -1080
369:              sra          a4, t6, s2
                  srl          s11, s1, zero
                  bltu         s8, a1, 390f
                  sltiu        sp, gp, -850
                  or           t1, s7, s3
                  addi         s11, zero, 9 #init loop 1 counter
                  sll          s7, s6, a4
                  addi         s9, zero, 11 #init loop 1 limit
                  ori          tp, t6, -1428
sub_3_18_1_t:     nop
                  add          t2, t1, s4
                  addi         s11, s11, 1 #update loop 1 counter
                  sltu         s0, sp, tp
                  sra          zero, s4, s6
                  andi         gp, a2, 1475
                  sub          s2, sp, t4
                  and          t2, s11, s8
                  add          a0, s7, s5
                  addi         t3, zero, 9 #init loop 0 counter
                  sltiu        a5, t6, 1161
                  addi         t1, zero, 7 #init loop 0 limit
sub_3_18_0_t:     andi         a5, ra, -1245
                  sll          gp, a0, a3
                  sra          t0, sp, t1
                  addi         t3, t3, -4 #update loop 0 counter
                  lui          a4, 445368
                  xor          s0, t4, gp
                  bgeu         t3, t1, sub_3_18_0_t #branch for loop 0
                  ori          s7, a5, -587
                  sltu         a5, t3, s11
                  sltu         sp, s4, t2
                  sra          a2, zero, s3
                  beq          s11, s9, sub_3_18_1_t #branch for loop 1
                  nop
                  slt          zero, t2, s4
                  blt          sp, t6, 390f
376:              lui          t6, 28953
                  auipc        tp, 404172
                  bltu         s1, s1, 392f
                  sub          t6, s8, t0
                  sra          t4, gp, s6
                  bge          s10, a5, 388f
                  srl          a6, t4, a3
                  bne          a2, t2, 398f
                  xori         a4, a2, 277
                  add          ra, s3, s5
                  add          s6, s6, a6
                  beq          a4, zero, 406f
388:              blt          a6, t4, 400f
                  sll          t3, s11, s10
390:              add          a3, a7, ra
                  sll          a2, a6, t0
392:              srli         a2, s3, 16
                  sub          ra, s9, s5
                  sltu         t0, t4, s7
                  addi         a4, s7, -1714
                  srli         zero, zero, 17
                  sll          s5, sp, ra
398:              xori         t0, t1, 1975
                  bgeu         a6, s6, 401f
400:              ori          t0, t6, -1668
401:              slt          s5, ra, sp
                  srai         a4, s5, 15
                  sra          sp, s8, s1
                  auipc        s8, 49246
                  addi         s10, zero, -1011
406:              sra          s11, s11, s5
                  slt          gp, gp, t6
                  blt          a2, s3, 418f
                  blt          a4, a6, 426f
                  srli         zero, s9, 8
                  and          sp, s0, s5
                  beq          t1, s2, 417f
                  add          a4, t4, a5
                  andi         t5, a3, -1723
                  beq          s3, t0, 422f
                  bge          a0, a4, 423f
417:              sltiu        t0, a7, -1520
418:              or           a0, zero, sp
                  srl          a2, sp, t5
                  bne          s9, gp, 439f
                  sub          s8, a3, t5
422:              xori         s0, s10, -524
423:              xori         gp, t6, -214
                  srai         s9, t1, 17
                  sra          a4, s2, s6
426:              slti         s9, t5, 28
                  and          t6, a7, s8
                  ori          tp, ra, -1622
                  bltu         t4, a2, 437f
                  auipc        a5, 694958
                  add          t3, a4, gp
                  beq          a7, t1, 443f
                  blt          s0, gp, 444f
                  lui          s7, 673094
                  auipc        a5, 941139
                  bgeu         a6, s0, 449f
437:              or           a1, s9, s0
                  or           a0, s8, s2
439:              sub          ra, a7, t5
                  sub          s7, s1, s5
                  sub          s0, a5, t4
                  auipc        zero, 1021646
443:              srli         ra, a3, 11
444:              xori         t1, zero, -37
                  bge          s6, s1, 455f
                  beq          s10, s3, 457f
                  bge          s2, s11, 465f
                  slti         t1, s5, 1216
449:              sub          s9, t4, t3
                  sll          t4, zero, sp
                  add          t1, a7, t4
                  slt          s11, s9, s0
                  bge          a0, t4, 461f
                  beq          tp, s0, 468f
455:              andi         t3, s11, 728
                  and          zero, tp, zero
457:              slt          zero, s5, t0
                  slli         t0, s3, 15
                  bne          a4, s7, 460f
460:              blt          s8, ra, 467f
461:              srai         a1, ra, 8
                  slt          s9, a0, s1
                  nop
                  add          t2, a7, sp
465:              beq          ra, s4, 478f
                  beq          a2, s5, 485f
467:              bge          t5, tp, 481f
468:              add          t6, t0, s9
                  bltu         a1, a7, 482f
                  srl          t3, t1, t2
                  nop
                  bne          sp, a0, 481f
                  srl          s11, tp, a4
                  slti         sp, s6, -184
                  and          a6, a7, s9
                  lui          t5, 293129
                  slt          ra, sp, t2
478:              slti         sp, a7, -1527
                  ori          a0, s8, 385
                  sll          a6, s3, s4
481:              sub          t2, a5, s4
482:              sub          s6, a5, s7
                  nop
                  bgeu         t6, a7, 486f
485:              bltu         ra, t4, 499f
486:              lui          ra, 24721
                  nop
                  srli         a3, a0, 14
                  srli         sp, tp, 7
                  srli         t2, t3, 6
                  srai         t3, t5, 11
                  or           s6, s7, tp
                  nop
                  sub          ra, s3, s9
                  ori          t4, t5, -1201
                  addi         s3, zero, 8 #init loop 1 counter
                  addi         s11, zero, 12 #init loop 1 limit
                  ori          t6, gp, 1275
sub_3_10_1_t:     sub          zero, a4, s6
                  auipc        a4, 494347
                  srli         a1, s11, 30
                  andi         s6, a5, 1110
                  auipc        a0, 165766
                  srai         s2, sp, 11
                  addi         s3, s3, 4 #update loop 1 counter
                  srli         a0, gp, 14
                  slli         s0, zero, 28
                  addi         s8, zero, 10 #init loop 0 counter
                  nop
                  slt          s10, a4, ra
                  addi         tp, zero, 0 #init loop 0 limit
                  sltu         sp, s3, a4
sub_3_10_0_t:     slti         s0, sp, 1322
                  andi         s2, t6, -1061
                  slt          t4, t0, s2
                  addi         s8, s8, -6 #update loop 0 counter
                  slt          ra, s11, s8
                  srli         t2, s5, 6
                  bge          s8, tp, sub_3_10_0_t #branch for loop 0
                  sll          a1, s9, s3
                  xori         t2, a5, 983
                  blt          s3, s11, sub_3_10_1_t #branch for loop 1
                  or           s6, a6, ra
                  sltu         a5, s10, zero
                  add          t2, s11, s8
                  addi         t1, t3, -1862
499:              ori          s3, t5, -1735
                  bne          s10, s11, 514f
                  addi         s3, a0, 1674
                  ori          a0, a0, -1493
                  slli         s11, s6, 3
                  bne          tp, s11, 516f
                  lui          s8, 567502
                  bgeu         s3, t3, 514f
                  or           t1, s6, a1
                  bltu         a5, s9, 526f
                  lui          a2, 20231
                  andi         ra, s10, 579
                  lui          t0, 271085
                  auipc        a0, 196859
                  srai         a3, a4, 8
514:              xor          tp, a3, s6
                  auipc        s7, 523833
516:              bltu         gp, s0, 529f
                  slti         zero, tp, -1773
                  ori          ra, ra, 1628
                  sltu         s2, t2, s4
                  srai         zero, s9, 10
                  slli         t6, s5, 4
                  bge          ra, a1, 541f
                  sra          t0, gp, s10
                  addi         t6, zero, 0 #init loop 1 counter
                  addi         a3, zero, 10 #init loop 1 limit
sub_3_7_1_t:      and          s3, ra, tp
                  slt          tp, s6, t1
                  addi         t6, t6, 5 #update loop 1 counter
                  addi         s5, zero, -1 #init loop 0 counter
                  addi         a0, zero, 3 #init loop 0 limit
sub_3_7_0_t:      sub          s7, a0, a4
                  addi         tp, s0, -1226
                  addi         s5, s5, 6 #update loop 0 counter
                  bltu         s5, a0, sub_3_7_0_t #branch for loop 0
                  bltu         t6, a3, sub_3_7_1_t #branch for loop 1
                  sll          a6, zero, t6
                  auipc        a5, 915454
                  sra          s2, s9, s6
526:              addi         t2, t1, 1490
                  sra          s6, sp, t0
                  srai         s5, s6, 27
529:              beq          a1, t5, 538f
                  xor          s3, s8, s11
                  and          s6, a5, a6
                  sll          t1, s4, tp
                  srai         a6, t3, 2
                  bne          s6, a5, 544f
                  sltu         s11, t2, gp
                  sra          s9, s11, zero
                  addi         tp, s7, 31
538:              sltiu        zero, s1, 47
                  add          a3, s2, t1
                  sll          a1, a1, a4
541:              auipc        t2, 628132
                  nop
                  sltiu        ra, s0, -281
544:              srai         gp, a4, 13
                  srli         s5, s2, 0
                  blt          s5, ra, 551f
                  xori         a6, s9, -907
                  sltu         s2, s6, a6
                  sltiu        t2, s3, -37
                  and          t5, tp, a6
551:              sltiu        a5, a4, 47
                  addi         a3, t3, 1915
                  andi         a0, ra, 1762
                  sltiu        t5, s4, -1649
                  auipc        gp, 725673
                  xori         s0, t1, 877
                  srl          s5, s2, a0
                  and          s11, a5, a3
                  ori          t6, a3, 1079
                  sltiu        a2, s6, -1106
                  sra          s11, sp, gp
                  bne          a7, s7, 563f
563:              beq          t0, a6, 565f
                  beq          s8, a6, 578f
565:              slt          zero, s2, s6
                  sltiu        t1, s8, -205
                  slt          s10, t3, s0
                  xor          s10, t6, t2
                  addi         t1, a1, 285
                  andi         t4, s10, 1572
                  srai         t0, s10, 13
                  addi         s11, zero, 968
                  slt          a6, t5, a3
                  beq          t5, a1, 593f
                  bgeu         s1, zero, 588f
                  srli         t1, gp, 23
                  srli         s0, s5, 20
578:              ori          t6, sp, 1043
                  srli         s8, t5, 23
                  bge          zero, a0, 594f
                  srli         t5, a7, 7
                  slti         a0, a3, 922
                  slli         s6, t1, 21
                  auipc        t6, 952571
                  slt          t5, s0, zero
                  beq          t3, s10, 594f
                  srli         t1, zero, 22
588:              addi         gp, a7, 1828
                  bne          s11, s3, 596f
                  bge          s4, a1, 601f
                  sub          t5, s4, a6
                  add          s3, t0, a4
593:              beq          t3, a6, 603f
594:              bge          gp, s0, 607f
                  beq          s8, s11, 607f
596:              srl          t6, sp, s3
                  ori          s3, a5, -1253
                  slli         s6, t1, 27
                  addi         s8, s0, -788
                  or           ra, zero, s4
601:              srli         a5, a6, 13
                  slti         a1, a1, -1077
603:              sra          s7, s5, s7
                  srli         t2, t3, 11
                  bltu         ra, a3, 607f
                  auipc        s0, 237381
607:              add          s6, s5, s10
                  bgeu         s6, a1, 625f
                  bne          s9, a2, 620f
                  or           gp, t1, zero
                  sll          t2, s5, t3
                  andi         s0, t5, 301
                  sll          a1, a6, t2
                  bgeu         s4, s0, 629f
                  sltu         a2, a3, t2
                  bgeu         s4, s9, 630f
                  sltiu        zero, t2, 1748
                  srl          a3, t2, s3
                  bgeu         sp, t0, 633f
620:              nop
                  bgeu         a7, s10, 628f
                  slti         a6, a7, 1335
                  beq          s5, s10, 634f
                  and          a4, a3, zero
625:              slli         s5, s0, 24
                  sra          zero, a1, ra
                  xor          t0, a4, a5
628:              bge          gp, s0, 635f
629:              slt          t0, t6, a2
630:              srai         s5, s1, 1
                  bge          t0, s8, 643f
                  xori         t4, s9, -459
633:              xori         s11, s3, -1499
634:              bltu         tp, s11, 653f
635:              sltiu        tp, t3, 233
                  slli         a1, s7, 21
                  bge          t5, s8, 649f
                  srai         zero, sp, 19
                  addi         s7, t5, -1968
                  nop
                  sra          ra, s7, t6
                  add          a5, s10, a4
643:              xori         t0, a7, -833
                  nop
                  auipc        a6, 546722
                  srl          t0, s5, s5
                  beq          s2, t0, 656f
                  or           s7, s5, s1
649:              sltiu        t1, t0, 364
                  xor          t0, a5, gp
                  or           t6, t0, s4
                  srai         t0, s2, 23
653:              xor          s9, gp, gp
                  slt          a4, s7, a7
                  bgeu         s1, s11, 674f
656:              srli         s11, a1, 13
                  auipc        t2, 751956
                  sll          t6, s4, s0
                  bgeu         a5, s5, 673f
                  auipc        gp, 366998
                  auipc        s5, 618452
                  xor          s7, s8, a5
                  srli         s9, tp, 0
                  bgeu         t3, t5, 674f
                  sltiu        s3, s11, -841
                  bgeu         s2, t2, 673f
                  slti         s6, ra, 1530
                  ori          gp, a7, -938
                  bgeu         a1, s0, 683f
                  xori         a3, t4, 286
                  sra          zero, t1, s1
                  xori         gp, a4, 1130
673:              auipc        zero, 679848
674:              addi         a0, t6, 809
                  slli         s9, a5, 20
                  ori          t6, ra, -967
                  auipc        zero, 788993
                  blt          s3, t1, 689f
                  srl          zero, a5, s9
                  ori          s0, a6, -276
                  bge          zero, t0, 700f
                  sll          t0, s10, t5
683:              sltiu        s5, t4, -123
                  lui          s11, 866956
                  andi         sp, a3, 212
                  bge          s3, s10, 699f
                  slti         t1, s9, -514
                  add          t5, s2, t2
689:              bgeu         s11, s4, 700f
                  add          t2, a0, a0
                  bltu         t4, tp, 701f
                  lui          a1, 164266
                  sll          t2, s11, s8
                  and          t0, a4, ra
                  sltiu        gp, t4, -1571
                  slti         a0, s7, -1775
                  srli         ra, s10, 16
                  addi         a1, a5, 1567
699:              beq          s2, t1, 714f
700:              sll          zero, t6, t6
701:              bge          s10, t5, 715f
                  sltu         t0, s8, s2
                  sltu         t1, a0, a3
                  sll          t0, sp, t3
                  srai         t6, s10, 19
                  slti         t0, t5, 1770
                  srl          t5, t3, a5
                  bne          t1, a4, 710f
                  srl          t2, tp, a0
710:              beq          a3, a3, 724f
                  or           t2, t2, a0
                  lui          s5, 135983
                  sll          a1, s2, t3
714:              xori         t2, zero, -693
715:              slli         a5, s6, 4
                  xori         s2, s2, -377
                  addi         s2, t5, -1027
                  sltiu        a2, s0, -390
                  auipc        sp, 148808
                  addi         gp, a3, 838
                  sltiu        s5, s7, 2044
                  beq          a6, t2, 727f
                  or           s3, s3, t5
724:              sub          s5, t1, s5
                  add          t0, ra, tp
                  sltu         a3, s2, s10
727:              srai         a4, t1, 22
                  slti         t6, s0, 1407
                  and          s5, t6, sp
                  bne          t0, a6, 738f
                  addi         gp, t6, 322
                  beq          s9, a1, 739f
                  blt          s2, a5, 745f
                  sll          s5, t0, s4
                  slti         s10, s9, -910
                  sltu         sp, tp, t2
                  sll          t4, t2, a5
738:              beq          s3, ra, 745f
739:              srai         t2, t3, 12
                  sll          a6, sp, s0
                  ori          s7, s6, 440
                  bne          zero, sp, 760f
                  srli         s11, s1, 20
                  slt          s7, s9, s1
745:              ori          a5, a5, 1501
                  bge          t0, a1, 754f
                  slt          gp, sp, s2
                  sra          ra, s6, s7
                  slt          s9, s1, t1
                  sltiu        s3, sp, 643
                  addi         t6, t4, 1704
                  auipc        a5, 383121
                  sll          t1, tp, s5
754:              xori         zero, s7, 1026
                  ori          a2, gp, 1625
                  bltu         s9, t4, 775f
                  blt          a5, sp, 774f
                  andi         a0, a4, 853
                  srli         t0, s10, 20
760:              slli         a1, t4, 9
                  and          t6, s11, a5
                  lui          sp, 942101
                  lui          s9, 952040
                  beq          a3, s8, 777f
                  andi         a0, a0, -822
                  sub          s2, a4, s6
                  blt          a5, a5, 778f
                  slti         s7, gp, 937
                  sltu         a0, gp, a6
                  slli         t4, s10, 15
                  ori          ra, a2, -950
                  bne          t4, a6, 774f
                  or           t6, ra, a1
774:              beq          s1, s11, 775f
775:              srli         s9, ra, 13
                  and          t2, t4, t4
777:              addi         s9, t4, -1393
778:              srl          t5, s5, a4
                  ori          s10, zero, 1652
                  and          t5, a4, s1
                  addi         a5, ra, -1194
                  slt          s3, s5, s11
                  slli         a5, a6, 3
                  xor          s6, a4, t6
                  beq          s5, s10, 798f
                  bge          tp, a6, 798f
                  nop
                  slti         t5, s0, 874
                  sltiu        tp, t5, -844
                  sra          ra, s1, s5
                  xori         a2, zero, -259
                  beq          t4, ra, 806f
                  slli         t4, s3, 13
                  or           a3, s2, t4
                  ori          gp, a5, 1125
                  andi         t2, ra, -925
                  beq          gp, a5, 809f
798:              srli         t4, t4, 8
                  lui          t2, 308037
                  auipc        s0, 458017
                  beq          t6, s6, 806f
                  sll          tp, s9, tp
                  sll          zero, a6, gp
                  bgeu         s8, t4, 806f
                  xor          a1, tp, s10
806:              beq          s4, a6, 815f
                  srli         t1, a2, 24
                  xor          gp, t2, a3
809:              xor          a6, s1, s9
                  bltu         s2, t5, 818f
                  slt          s8, s2, a4
                  xor          a4, s11, tp
                  bltu         s7, zero, 828f
                  sub          s0, a1, s5
815:              xor          a6, t6, t2
                  bgeu         t5, sp, 826f
                  addi         s8, s6, -1554
818:              bgeu         t4, t5, 832f
                  srl          t4, zero, s4
                  xori         t3, t3, -1974
                  nop
                  beq          a4, a0, 833f
                  addi         s9, s3, 881
                  xori         s10, s3, -343
                  add          sp, a6, a5
826:              or           s10, t5, a4
                  bltu         a5, s4, 840f
828:              bltu         s5, s5, 841f
                  blt          s9, s3, 843f
                  sub          t1, s11, s0
                  slti         s3, s6, -1973
832:              nop
833:              auipc        t4, 622032
                  xori         a2, a0, -1701
                  sub          a5, a5, t0
                  bge          t5, a3, 853f
                  nop
                  and          t4, a3, zero
                  andi         t0, zero, 1565
840:              xor          a6, t3, s1
841:              add          t5, a4, a1
                  slli         a4, s6, 9
843:              sra          a5, gp, s2
                  srli         a4, s1, 3
                  sltu         s3, s3, tp
                  ori          s9, t0, -1704
                  slli         s7, a0, 21
                  bge          a5, sp, 867f
                  srli         t2, t1, 31
                  sra          t3, a5, a3
                  and          a5, a1, s5
                  add          s9, sp, tp
853:              sltiu        s11, s10, 477
                  sll          a4, tp, s2
                  bltu         s5, s1, 866f
                  and          ra, s7, s1
                  srli         s11, gp, 26
                  sub          s7, s9, s6
                  slli         t1, zero, 23
                  srai         t3, s9, 27
                  xor          s2, gp, s6
                  addi         t5, s9, 1423
                  sltu         t3, s6, gp
                  slt          tp, t6, tp
                  bge          t3, a6, 879f
866:              addi         a4, s3, 1585
867:              bne          s6, s8, 869f
                  slt          s11, a7, s0
869:              auipc        s3, 1047284
                  auipc        s3, 847690
                  or           t1, a6, a0
                  sltu         t1, s6, a1
                  nop
                  srli         t3, t1, 18
                  slli         s3, gp, 22
                  bltu         s0, s1, 883f
                  andi         zero, s9, 896
                  bge          a1, t0, 888f
879:              andi         s0, a5, -44
                  slti         ra, tp, -1585
                  and          s6, t2, zero
                  slli         s2, a5, 15
883:              bne          a5, s3, 901f
                  and          t6, a0, s9
                  nop
                  sltiu        t1, s1, -42
                  sltu         t0, a1, s5
888:              beq          s9, a2, 895f
                  slt          sp, sp, t2
                  lui          t5, 88567
                  nop
                  bltu         a4, ra, 899f
                  sll          s9, ra, tp
                  sub          s6, s8, tp
895:              xor          s9, a7, s5
                  bne          a0, a1, 909f
                  beq          s7, t6, 905f
                  sltiu        s2, s1, 1113
899:              sltu         s9, a4, s9
                  blt          gp, ra, 919f
901:              srl          t4, a2, tp
                  slli         t6, a1, 21
                  srli         s0, t4, 8
                  srai         a3, zero, 25
905:              bgeu         a7, tp, 906f
906:              slli         a3, s1, 20
                  bltu         a2, t2, 918f
                  bge          s6, s2, 927f
909:              lui          s8, 164500
                  auipc        a3, 647025
                  slti         a5, a7, 1145
                  sltiu        s11, s0, 961
                  or           t6, s11, s6
                  sltiu        t1, t0, 1706
                  ori          s10, t6, 1767
                  bltu         s7, s3, 935f
                  slt          a3, a4, a2
918:              blt          a4, gp, 925f
919:              and          t4, a6, t0
                  add          gp, t4, tp
                  lui          t1, 599899
                  and          a3, s1, gp
                  ori          sp, a4, 935
                  sltu         s6, s1, s4
925:              slt          t2, a5, a1
                  bltu         t3, s2, 939f
927:              and          a3, s7, a1
                  sra          a3, s11, t5
                  and          a1, t3, t6
                  bge          s4, a6, 940f
                  ori          gp, s0, 264
                  or           t2, a1, t3
                  sra          t5, s9, a7
                  slt          gp, s9, s2
935:              bgeu         s6, s3, 943f
                  ori          t4, s7, -256
                  bltu         a5, a1, 942f
                  sub          t2, s1, sp
939:              sub          s2, ra, zero
940:              andi         a4, zero, -762
                  or           t0, t2, s0
942:              slli         gp, s8, 29
943:              sll          t1, s1, s6
                  sltu         sp, ra, a3
                  xori         t0, a3, 618
                  add          t1, t3, a0
                  addi         s8, a4, 812
                  slt          a6, sp, s1
                  sll          t4, tp, s4
                  ori          a2, a5, 1759
                  ori          t6, gp, 378
                  auipc        zero, 728657
                  andi         s11, t3, 1207
                  bne          gp, a0, 965f
                  bgeu         a6, s2, 968f
                  srli         s2, sp, 14
                  xor          s10, s7, sp
                  lui          s3, 191338
                  lui          s8, 520088
                  sra          s6, t5, a6
                  slli         s2, ra, 30
                  and          s3, a3, sp
                  sub          t2, a5, t5
                  srli         a5, ra, 8
965:              lui          t4, 6410
                  addi         a0, t0, 1428
                  sltiu        s3, s6, 483
968:              srl          s0, t4, gp
                  auipc        s3, 698686
                  bltu         s2, s4, 989f
                  bltu         t6, s9, 989f
                  beq          s3, t4, 984f
                  srai         s2, s7, 12
                  bltu         s7, s11, 988f
                  bge          s1, a1, 987f
                  bge          s1, t5, 995f
                  lui          s6, 862738
                  sll          s3, s8, s11
                  or           s0, a4, s11
                  xori         ra, gp, -700
                  slti         t0, s8, -1523
                  sra          a2, a7, ra
                  lui          ra, 360685
984:              add          a4, t5, s11
                  bne          a4, a2, 993f
                  nop
987:              andi         s3, t5, 837
988:              srai         t0, a6, 13
989:              xori         tp, s3, -1290
                  nop
                  andi         a2, t5, -872
                  bge          t4, a5, 1001f
993:              add          t1, t2, gp
                  bgeu         a2, s4, 1005f
995:              andi         s5, a6, -278
                  srl          s3, s6, s0
                  sub          t6, s7, a2
                  sltiu        a3, t6, 1400
                  sltiu        s0, s3, 1753
                  slli         gp, tp, 21
1001:             sll          s0, s1, t3
                  sltiu        a5, t0, -719
                  slti         t2, s1, -1203
                  sub          s0, s3, t2
1005:             beq          a3, a7, 1007f
                  blt          sp, a1, 1007f
1007:             sltu         s6, s3, a4
                  nop
                  slli         s3, s2, 9
                  bgeu         ra, s10, 1012f
                  slt          a5, zero, s5
1012:             ori          s10, s4, -971
                  nop
                  xor          a5, a6, a0
                  bne          a2, s11, 1029f
                  sltiu        s2, s6, 1615
                  sra          gp, s11, t5
                  sra          s9, t2, a2
                  bltu         t6, gp, 1032f
                  slt          a1, a6, t0
                  bltu         zero, a6, 1031f
                  add          tp, s9, a5
                  or           a3, ra, a3
                  or           s10, a3, tp
                  addi         t6, zero, 10 #init loop 1 counter
                  and          a0, a1, a6
                  addi         s0, zero, 15 #init loop 1 limit
sub_3_13_1_t:     xori         s6, t2, 1653
                  addi         zero, a7, 1105
                  addi         t6, t6, 10 #update loop 1 counter
                  addi         a4, zero, 4 #init loop 0 counter
                  addi         ra, zero, 18 #init loop 0 limit
sub_3_13_0_t:     nop
                  addi         a4, a4, 7 #update loop 0 counter
                  bne          a4, ra, sub_3_13_0_t #branch for loop 0
                  sltu         a3, t5, a7
                  blt          t6, s0, sub_3_13_1_t #branch for loop 1
                  sltiu        s7, t6, 1785
                  addi         s0, a0, -2048
                  slli         gp, a0, 20
                  blt          t1, t3, 1034f
                  sltiu        t1, a6, 1696
1029:             beq          t2, t1, 1040f
                  bne          t3, t2, 1037f
1031:             auipc        t1, 429181
1032:             add          a1, s10, a7
                  slli         t2, s11, 0
1034:             srai         s2, s7, 3
                  bgeu         s10, a4, 1050f
                  auipc        s5, 145358
1037:             srl          sp, zero, s6
                  sltu         s3, s1, s4
                  bne          gp, s11, 1053f
1040:             sltiu        s6, t5, 1626
                  lui          t2, 684206
                  sra          s9, t2, sp
                  andi         zero, a2, -104
                  sll          t2, a3, s11
                  lui          s5, 67892
                  ori          a1, s7, 1487
                  blt          t6, t2, 1061f
                  or           s7, a4, t5
                  srl          t3, tp, s10
1050:             add          s10, zero, t5
                  sltu         t1, s10, s1
                  srl          t3, s3, t2
1053:             blt          s8, a4, 1070f
                  srli         a1, a6, 15
                  or           t5, zero, a5
                  bgeu         s7, t2, 1075f
                  andi         zero, t6, -390
                  or           s9, s2, a2
                  blt          t5, s3, 1061f
                  sra          gp, s6, s1
1061:             or           s3, a1, s3
                  xor          s5, s9, a1
                  sra          a2, a6, s11
                  or           a6, s3, a3
                  sub          a5, s3, t4
                  srli         s2, s1, 7
                  xori         s7, tp, -753
                  beq          t3, a3, 1081f
                  and          zero, s2, s6
1070:             slt          a1, s9, ra
                  or           a3, t6, t4
                  slti         sp, t3, 652
                  bgeu         s11, t0, 1080f
                  ori          a4, t3, 795
1075:             sltiu        s7, s8, -48
                  slt          t2, a5, a1
                  blt          a7, zero, 1095f
                  and          s7, a7, t5
                  bne          sp, t3, 1088f
1080:             beq          s8, a3, 1093f
1081:             sll          a3, t1, s3
                  slti         a3, t0, 785
                  bgeu         s11, ra, 1084f
1084:             sltiu        a6, s8, -601
                  beq          s9, a5, 1095f
                  or           a3, s2, s9
                  xor          t6, a6, t4
1088:             slt          s10, zero, s1
                  auipc        s10, 826076
                  srai         a2, s6, 4
                  add          s7, s8, sp
                  xori         a0, s10, 499
1093:             bge          gp, a6, 1107f
                  bltu         t6, t4, 1105f
1095:             blt          s7, sp, 1106f
                  lui          zero, 578095
                  sltu         t0, t5, a0
                  addi         t5, tp, 1600
                  bgeu         a0, ra, 1114f
                  andi         t6, t1, -717
                  andi         t1, s9, -584
                  slt          s5, a7, s2
                  sub          a4, gp, a5
                  nop
1105:             bge          a1, t4, 1122f
1106:             auipc        t4, 176119
1107:             bltu         s3, s5, 1112f
                  nop
                  sltiu        a6, gp, 369
                  sll          s0, tp, s5
                  blt          s1, s8, 1122f
1112:             xori         s9, a6, 863
                  bltu         sp, s11, 1125f
1114:             srl          a5, s5, t0
                  srli         s0, a6, 10
                  bne          t0, zero, 1125f
                  add          s9, s5, s4
                  slli         s11, t0, 26
                  and          a4, t3, t4
                  slt          gp, t5, a1
                  bltu         t2, s11, 1125f
1122:             sll          s2, a4, zero
                  beq          s1, ra, 1125f
                  or           a6, zero, a2
1125:             lui          a0, 203708
                  xor          s9, zero, a2
                  xori         a4, s1, -1980
                  lw           s8, 4(s4)
                  lui          a2, 267716
                  xori         a3, s7, -1859
                  slt          zero, t4, s1
                  addi         s4, s4, 24
                  sll          t0, a2, t0
1600:             addi x12, x24, 0
1600:             jalr x12, x12, 0
sub_5:            blt          sp, t5, sub_5_stack_p
                  xor          sp, a3, s6
                  srl          s3, s9, zero
sub_5_stack_p:    addi         s4, s4, -36
                  slti         a2, s9, -528
                  sw           s8, 4(s4)
                  add          s10, t0, a7
                  xor          t3, s9, a3
                  srl          ra, s6, a7
                  nop
                  auipc        t0, 337187
                  addi         a3, zero, -6 #init loop 1 counter
                  srai         s9, s4, 27
                  addi         gp, zero, -13 #init loop 1 limit
                  sltu         t2, a6, s3
                  sra          t1, a1, tp
sub_5_2_1_t:      slti         a4, s1, -1862
                  ori          t1, t5, 477
                  addi         a3, a3, -1 #update loop 1 counter
                  or           t1, ra, a7
                  addi         s7, zero, 7 #init loop 0 counter
                  slli         s10, s4, 27
                  addi         s0, zero, 7 #init loop 0 limit
sub_5_2_0_t:      or           t3, sp, a3
                  slt          t3, s11, a2
                  addi         s7, s7, -6 #update loop 0 counter
                  bgeu         s7, s0, sub_5_2_0_t #branch for loop 0
                  xor          s9, s8, a4
                  sll          s6, a3, a7
                  bne          a3, gp, sub_5_2_1_t #branch for loop 1
                  slli         t2, t4, 21
                  addi         tp, zero, 6 #init loop 0 counter
                  sub          a1, a0, a5
                  addi         s3, zero, 15 #init loop 0 limit
sub_5_4_0_t:      and          s9, t2, a1
                  addi         tp, tp, 7 #update loop 0 counter
                  addi         s2, s1, 667
                  nop
                  xori         zero, s10, -1566
                  srl          s5, t3, zero
                  bltu         tp, s3, sub_5_4_0_t #branch for loop 0
                  add          a0, a6, sp
                  addi         s8, zero, -6 #init loop 1 counter
                  xori         a2, t5, -1355
                  slli         a2, a6, 7
                  ori          s11, sp, 39
                  slt          s9, s10, t3
                  sra          t6, s6, tp
                  addi         a1, zero, 12 #init loop 1 limit
sub_5_5_1_t:      and          zero, gp, t1
                  slti         s6, s7, 21
                  ori          s3, s7, 1583
                  sltiu        s6, s6, -678
                  addi         s8, s8, 4 #update loop 1 counter
                  nop
                  addi         tp, zero, 4 #init loop 0 counter
                  addi         t0, zero, 4 #init loop 0 limit
                  xori         s10, a5, -684
                  and          s9, tp, t2
sub_5_5_0_t:      add          a5, s9, a5
                  addi         tp, tp, -3 #update loop 0 counter
                  slt          s9, s8, a0
                  bgeu         tp, t0, sub_5_5_0_t #branch for loop 0
                  nop
                  bltu         s8, a1, sub_5_5_1_t #branch for loop 1
                  srli         a6, t3, 30
                  addi         gp, zero, 3 #init loop 0 counter
                  sub          a0, t4, zero
                  nop
                  auipc        t3, 360500
                  srl          t4, a5, s1
                  and          a6, sp, s8
                  lui          t6, 356592
                  nop
                  sltiu        t3, s11, 310
                  xor          s11, a0, ra
                  slli         t5, t4, 20
                  addi         s9, zero, 20 #init loop 0 limit
                  slti         t4, t5, -1009
                  slti         t0, a1, -576
                  sub          a2, tp, a1
sub_5_3_0_t:      auipc        a0, 364893
                  addi         gp, gp, 6 #update loop 0 counter
                  slt          s6, s3, a0
                  sltu         s10, t4, s5
                  sll          t5, s5, s1
                  blt          gp, s9, sub_5_3_0_t #branch for loop 0
                  srl          s0, a5, zero
                  sub          zero, t4, s6
                  slti         s7, a7, 58
                  addi         a1, a4, -1106
                  add          a5, ra, s8
                  sub          t0, a5, a3
                  ori          t4, s6, -296
                  blt          t1, a2, 17f
                  slt          a2, s6, s10
                  addi         s6, zero, -9 #init loop 0 counter
                  addi         a0, zero, -19 #init loop 0 limit
                  sltu         s0, s1, t0
sub_5_0_0_t:      nop
                  slti         zero, s2, -1296
                  addi         s6, s6, -10 #update loop 0 counter
                  sub          sp, t4, s9
                  xor          a3, t0, gp
                  or           s8, s8, a7
                  sub          a4, s9, s2
                  sra          a2, a2, a1
                  bne          s6, a0, sub_5_0_0_t #branch for loop 0
                  auipc        s0, 925639
                  ori          s5, a6, 1317
                  slli         t3, s9, 21
                  ori          ra, s10, 963
                  bne          a6, a2, 24f
                  or           a1, zero, s1
                  srl          s8, t2, t6
                  sub          s10, t0, s2
                  blt          s8, a1, 34f
                  slt          a2, s9, a7
17:               srli         s5, s7, 18
                  and          s5, sp, a6
                  bltu         t3, gp, 27f
                  ori          s11, a3, -1452
                  bne          t0, s3, 33f
                  lui          s5, 935882
                  sub          t3, s10, sp
24:               addi         s5, s11, 68
                  ori          a4, s1, 383
                  xori         s2, s11, -1167
27:               xor          a2, ra, t6
                  beq          t1, t1, 41f
                  auipc        a2, 1044261
                  auipc        s7, 986683
                  add          tp, a3, s11
                  sltu         s5, s10, s2
33:               lui          s3, 818166
34:               nop
                  auipc        ra, 176467
                  sll          zero, s6, t6
                  xor          s3, s5, t5
                  sltiu        t4, t0, -1358
                  bltu         s6, a4, 41f
                  auipc        s11, 969830
41:               xor          t0, t3, tp
                  add          s9, tp, gp
                  nop
                  xor          a1, a4, a0
                  sll          s3, tp, s8
                  nop
                  sub          s0, zero, s6
                  srli         t3, t1, 6
                  xori         s6, a0, -1768
                  xori         a6, t5, 1238
                  blt          s0, s10, 66f
                  andi         t1, t5, -955
                  srl          s6, a4, s2
                  auipc        a3, 27713
                  srli         t6, t4, 19
                  slti         a5, a0, 144
                  beq          a2, s5, 72f
                  srl          s3, s4, t0
                  blt          s2, gp, 61f
                  slli         gp, s1, 4
61:               xor          a4, s4, sp
                  or           t6, a7, s5
                  sltu         a6, a7, a3
                  or           t6, t3, t2
                  srl          t3, tp, gp
66:               sll          s8, t0, a0
                  nop
                  sltiu        s2, a0, 635
                  sub          sp, s3, a1
                  srl          t6, s6, a7
                  nop
72:               xori         t1, a5, -1796
                  addi         a4, s11, -1187
                  sub          s10, t3, s7
                  bgeu         s2, s1, 79f
                  sltu         sp, a6, a1
                  sltu         s0, t3, a0
                  sltu         tp, ra, s3
79:               xori         a3, ra, -397
                  lui          s2, 475180
                  nop
                  slli         a1, a2, 30
                  slli         t4, tp, 4
                  ori          tp, t5, 663
                  beq          s5, s5, 86f
86:               and          a3, t1, a2
                  srl          t3, a3, ra
                  blt          tp, s1, 91f
                  slt          s8, s1, a1
                  bgeu         t6, ra, 95f
91:               bge          t4, s8, 105f
                  auipc        s0, 98526
                  bgeu         t1, a6, 108f
                  slti         t1, ra, 491
95:               add          gp, s9, s8
                  beq          s5, t1, 112f
                  sra          ra, zero, s2
                  sltu         s6, s4, t4
                  srli         s9, s1, 11
                  bltu         ra, t6, 110f
                  beq          a4, s0, 115f
                  add          a2, zero, t3
                  bne          tp, s3, 111f
                  bgeu         t5, a7, 120f
105:              srli         s11, a0, 29
                  add          zero, s0, t0
                  blt          t5, a3, 116f
108:              bltu         s0, s10, 126f
                  and          s2, sp, s2
110:              beq          s7, tp, 118f
111:              addi         t6, ra, 266
112:              blt          t2, s2, 128f
                  sltu         tp, t6, a3
                  or           t4, s9, s3
115:              sltu         a3, sp, t4
116:              bltu         tp, t0, 127f
                  srl          t2, t2, s6
118:              add          s6, zero, zero
                  slti         s3, s11, -1928
120:              xor          t2, s2, sp
                  sltiu        t1, t0, -1120
                  or           a4, s2, t1
                  srai         a1, a2, 13
                  srli         t4, a3, 1
                  sltu         s3, s7, s5
126:              slt          ra, t3, tp
127:              bne          a7, gp, 139f
128:              sra          gp, tp, s8
                  sll          t0, s3, t3
                  blt          t0, a6, 132f
                  srli         a0, zero, 8
132:              add          s6, s1, s11
                  sltiu        a1, zero, 899
                  auipc        t4, 348048
                  srli         s3, s3, 0
                  xori         t4, t6, 1091
                  or           zero, s0, t4
                  and          t4, t5, a5
139:              slti         s2, s0, -1917
                  auipc        a0, 126989
                  srl          a5, s11, s6
                  srli         s8, a3, 26
                  slli         s3, s7, 18
                  nop
                  auipc        t3, 278837
                  ori          zero, gp, -1529
                  andi         a6, s2, 1635
                  slti         a4, gp, -1666
                  and          s11, a4, t2
                  lui          a0, 808257
                  xori         a0, a1, -1851
                  ori          t4, a7, 1142
                  andi         a4, s0, 2009
                  sub          a1, a2, s11
                  nop
                  addi         a5, zero, 3 #init loop 0 counter
                  addi         a3, zero, -6 #init loop 0 limit
sub_5_1_0_t:      ori          a4, a1, 621
                  addi         a5, a5, -9 #update loop 0 counter
                  or           t0, zero, s11
                  beq          a5, a3, sub_5_1_0_t #branch for loop 0
                  sra          s5, t5, s8
                  add          s8, t1, s3
                  bgeu         ra, s10, 171f
                  srl          s6, a0, s8
                  addi         tp, zero, 1324
                  addi         t2, s9, 473
                  auipc        zero, 579786
                  blt          ra, t0, 182f
                  nop
                  sra          s10, t0, t6
                  beq          s10, t2, 176f
                  slt          t2, sp, s6
                  lui          a4, 663593
                  addi         a2, zero, -1962
                  nop
                  bge          tp, s10, 186f
171:              lui          s8, 720185
                  srli         a4, t0, 17
                  auipc        s10, 309289
                  ori          s6, tp, 883
                  nop
176:              auipc        t1, 763589
                  srai         s7, t2, 0
                  addi         t0, a7, 883
                  or           t1, a1, t5
                  srl          s8, a0, a1
                  andi         zero, t0, 1637
182:              sltu         s8, t4, t5
                  slt          t3, t1, s9
                  blt          s0, s1, 198f
                  srai         tp, s10, 12
186:              bne          s4, t6, 201f
                  addi         a1, a5, -538
                  nop
                  slli         s3, a2, 6
                  lui          s5, 485136
                  srai         a2, ra, 3
                  addi         a4, s11, -600
                  nop
                  beq          s8, t4, 207f
                  beq          s4, t3, 211f
                  bge          t3, t0, 212f
                  add          a6, a5, t0
198:              slti         s0, a3, 881
                  bne          s0, sp, 201f
                  xor          tp, t0, a5
201:              addi         s5, gp, 784
                  sltu         s0, a6, s5
                  xor          a1, sp, s7
                  sub          a4, a0, sp
                  blt          s1, s7, 223f
                  slt          t6, s9, tp
207:              bge          t5, tp, 208f
208:              add          s0, s1, a2
                  xor          s11, ra, ra
                  srli         t2, t6, 12
211:              lui          s8, 289944
212:              xor          s2, s3, a4
                  lui          s11, 269053
                  srai         s0, s4, 9
                  srl          s10, t3, t5
                  bne          a5, t4, 218f
                  sub          t4, a1, a6
218:              ori          a4, ra, 703
                  sra          a2, tp, s4
                  slti         a4, s3, 484
                  and          s3, a7, t2
                  auipc        s0, 881457
223:              xor          s0, t3, s11
                  xori         s8, a0, 320
                  slli         t3, ra, 27
                  lui          t4, 405001
                  lui          t0, 30326
                  bne          s10, s10, 236f
                  bltu         s10, s7, 243f
                  add          tp, s8, s4
                  ori          t1, s3, 1381
                  beq          t2, a5, 252f
                  lui          t5, 1045242
                  sll          t5, tp, s1
                  add          gp, s7, sp
236:              bltu         a2, t3, 250f
                  sltu         a6, s10, a5
                  andi         s5, a2, -1617
                  bne          s1, gp, 251f
                  andi         s9, tp, -917
                  bge          a3, t4, 251f
                  sltu         a2, zero, zero
243:              ori          s2, a5, -59
                  nop
                  sll          sp, a6, a7
                  add          s3, s7, t5
                  ori          tp, a6, -1779
                  beq          t2, a7, 256f
                  slti         s11, a7, 184
250:              sll          a5, s10, s0
251:              and          s10, a1, t3
252:              sra          a1, zero, t3
                  slti         a2, t4, 1810
                  slti         s11, s3, 1062
                  slli         s3, zero, 15
256:              andi         a2, s7, 864
                  srai         tp, zero, 16
                  ori          s5, t6, 546
                  andi         t2, s9, -453
                  srl          s11, s7, ra
                  srl          s10, tp, t4
                  ori          a3, s11, 1865
                  bge          s0, s0, 278f
                  bne          ra, t3, 283f
                  lui          s11, 516954
                  srl          a6, t5, s2
                  sll          ra, zero, a4
                  srl          s3, a0, a0
                  ori          s10, s8, -1155
                  ori          t2, s10, -678
                  xor          t2, t1, s9
                  srai         s6, s4, 31
                  xori         s9, a5, -1409
                  slt          s7, a6, s9
                  add          s10, zero, a4
                  bge          tp, a2, 289f
                  bne          t0, a3, 281f
278:              slti         t2, a3, -1498
                  ori          gp, s6, 59
                  lui          a2, 235293
281:              bge          s8, a6, 293f
                  nop
283:              srai         s7, a5, 17
                  sra          sp, gp, zero
                  lui          t3, 810779
                  beq          a2, t4, 291f
                  slt          t0, s10, a0
                  blt          s7, s8, 291f
289:              sra          t3, s0, s7
                  bge          ra, a4, 305f
291:              bne          t2, a4, 299f
                  add          t3, s5, t4
293:              sll          a2, s11, zero
                  sltu         s5, a6, s0
                  sub          sp, s6, a3
                  srai         tp, a5, 9
                  srl          a6, s8, t6
                  srai         a6, sp, 27
299:              xori         s7, a1, -644
                  nop
                  lui          s8, 687855
                  xori         sp, a6, -197
                  bge          t6, s6, 305f
                  srli         s10, s8, 6
305:              auipc        s7, 1025728
                  sra          t4, a3, t3
                  beq          zero, s11, 316f
                  sltiu        a5, t2, -863
                  sub          a5, s0, gp
                  srl          t0, s8, a5
                  slli         t6, a1, 23
                  srai         s11, a0, 23
                  slli         s5, a7, 4
                  srli         s5, s2, 6
                  slt          a2, tp, a1
316:              ori          s9, tp, -848
                  slt          a5, zero, a7
                  add          gp, s9, s7
                  or           s5, s4, a5
                  andi         a6, s6, -1196
                  srai         tp, s0, 5
                  sra          s6, s8, a6
                  lw           s8, 4(s4)
                  addi         s4, s4, 36
                  sll          tp, s0, s4
                  or           t6, t3, a1
                  srli         a2, s4, 14
                  xori         a0, t4, 1693
                  sll          s9, a2, ra
438:              addi x23, x24, 0
438:              jalr x23, x23, 0
sub_1:            nop
                  add          sp, t1, s11
                  bltu         ra, s2, sub_1_stack_p
sub_1_stack_p:    addi         s4, s4, -60
                  sw           s8, 4(s4)
                  xori         s6, zero, -1336
                  or           t0, a4, s3
                  sltu         ra, a5, t1
                  addi         s11, zero, -802
                  or           s10, a2, tp
                  srl          ra, s3, s8
                  sra          t2, s5, a6
                  srl          t2, ra, t4
                  sltu         s9, tp, a2
                  slt          t5, t2, s3
sub_1_j2:         jal          s8, sub_2 #jump sub_1 -> sub_2
                  slt          s0, s8, t2
                  sra          t6, s2, a2
                  la           t1, sub_2
                  srl          tp, s9, zero
                  slti         s3, s3, -1635
                  sra          sp, s0, gp
                  addi         t1, t1, -888
                  sra          s9, t0, s0
sub_1_j3:         jalr         s8, t1, 888 #jump sub_1 -> sub_2
                  addi         t4, zero, -8 #init loop 1 counter
                  xori         a0, t2, -799
                  addi         a3, zero, 6 #init loop 1 limit
                  xor          a4, t1, a4
sub_1_0_1_t:      slti         t2, zero, 1088
                  addi         t4, t4, 10 #update loop 1 counter
                  sltu         t2, s8, tp
                  xori         a2, s9, 1189
                  nop
                  addi         a5, zero, 2 #init loop 0 counter
                  sltu         a4, t6, s9
                  addi         t6, zero, -13 #init loop 0 limit
                  srli         sp, tp, 7
                  addi         a6, a7, 1563
                  sltiu        s3, gp, 383
sub_1_0_0_t:      ori          s10, s10, 1646
                  srai         a4, gp, 7
                  addi         a5, a5, -3 #update loop 0 counter
                  sra          s10, gp, a3
                  slti         t1, a6, -329
                  bge          a5, t6, sub_1_0_0_t #branch for loop 0
                  srai         s0, t2, 22
                  slli         s0, tp, 11
                  add          s7, s6, t1
                  bltu         t4, a3, sub_1_0_1_t #branch for loop 1
                  add          s5, t0, s10
                  addi         sp, zero, 10 #init loop 1 counter
                  addi         a1, zero, 8 #init loop 1 limit
sub_1_1_1_t:      slti         a4, s9, 1356
                  and          s9, a1, s9
                  addi         sp, sp, -1 #update loop 1 counter
                  addi         a3, zero, -6 #init loop 0 counter
                  addi         s11, zero, -7 #init loop 0 limit
                  sll          s8, s2, t6
sub_1_1_0_t:      and          t0, zero, t0
                  addi         a3, a3, -1 #update loop 0 counter
                  slli         a5, a2, 4
                  bge          a3, s11, sub_1_1_0_t #branch for loop 0
                  bgeu         sp, a1, sub_1_1_1_t #branch for loop 1
                  addi         t0, t3, -656
                  beq          a5, s10, 3f
                  xori         s3, t5, -202
                  addi         t0, a4, -918
3:                sll          s10, s1, s9
                  nop
                  bge          s0, a2, 20f
                  sll          t5, s0, zero
                  bne          s10, t0, 24f
                  sltiu        t1, a0, 1744
                  bne          t5, t5, 27f
                  slti         a1, t5, 2038
                  sltu         a4, s0, t4
                  srai         a4, a3, 28
                  or           t5, a6, s4
                  slti         t5, s10, 1846
                  or           ra, s0, gp
                  and          s7, t1, tp
                  bltu         s5, a5, 21f
                  bge          t4, sp, 38f
                  slt          s6, s11, s4
20:               sub          a0, s4, s4
21:               and          s10, a2, a6
                  sltu         s3, t0, tp
                  bne          ra, gp, 39f
24:               andi         s7, t3, 906
                  blt          gp, gp, 32f
                  slli         zero, s0, 1
27:               and          ra, s11, t2
                  lui          s11, 804414
                  srl          s7, t4, t0
                  bge          s1, zero, 36f
                  bltu         s6, t4, 38f
32:               slli         s6, s11, 22
                  ori          t3, s3, 1591
                  srl          t2, s1, s0
                  sltiu        a3, a6, 351
36:               slti         s10, a6, -1150
                  slt          s7, sp, s5
38:               sub          s10, s9, sp
39:               bgeu         t4, s5, 46f
                  sub          ra, s1, a6
                  srai         s3, s7, 3
                  bne          s8, s5, 57f
                  xor          s10, s0, a6
                  bltu         s5, zero, 45f
45:               bltu         a7, a3, 65f
46:               srai         t2, tp, 11
                  addi         zero, s11, -1569
                  bne          s3, s10, 52f
                  xor          t1, tp, s8
                  and          a1, zero, t4
                  sltu         s6, zero, t1
52:               addi         gp, t2, 387
                  xori         a0, t4, -102
                  lui          t6, 93726
                  sub          a6, s2, s6
                  slt          s3, a1, t5
57:               bge          tp, s7, 76f
                  addi         t4, t4, -1290
                  slt          s5, t4, ra
                  and          a5, s10, ra
                  xor          s0, tp, s7
                  addi         a5, ra, 1365
                  addi         s10, t0, -715
                  slli         sp, s11, 10
65:               sltiu        gp, t3, 998
                  xor          s5, a3, a3
                  add          s10, s2, t6
                  sll          s5, s5, s2
                  bltu         a1, zero, 88f
                  or           s3, s10, a0
                  and          ra, s6, s3
                  add          s5, t0, ra
                  andi         s6, a0, -146
                  blt          s8, s9, 85f
                  blt          t5, a6, 93f
76:               auipc        s3, 990400
                  sll          s8, t2, s5
                  sltiu        s9, s4, 1080
                  blt          s7, s9, 95f
                  slt          t4, t1, s11
                  bgeu         gp, s6, 97f
                  beq          a2, s9, 92f
                  addi         t1, a0, -989
                  addi         s3, t6, 1358
85:               nop
                  sll          gp, a5, s9
                  lui          a6, 48046
88:               sltiu        s7, s10, 1536
                  andi         s10, s5, 1423
                  sra          a2, s11, sp
                  or           a4, s5, t5
92:               bgeu         t2, a7, 102f
93:               srai         s2, s7, 2
                  blt          t1, a1, 108f
95:               and          t1, s9, s3
                  sltiu        s5, t3, 510
97:               bge          a5, s0, 105f
                  add          t5, a2, t5
                  sltiu        sp, t0, -297
                  srli         ra, t6, 19
                  bne          s4, a7, 120f
102:              bltu         a2, s1, 120f
                  blt          a7, s6, 122f
                  bgeu         sp, zero, 115f
105:              andi         a0, ra, -559
                  slti         s8, ra, -159
                  ori          s3, s6, 1263
108:              sltiu        t3, t6, 987
                  xori         gp, t1, -857
                  bne          t1, zero, 123f
                  slli         t2, s11, 26
                  slti         t0, s3, -967
                  beq          t4, t4, 126f
                  add          t0, ra, t3
115:              bge          zero, a7, 119f
                  srli         t5, t5, 31
                  slt          sp, s1, a4
                  slli         a2, s5, 9
119:              lui          tp, 12965
120:              slti         t1, t6, 916
                  or           t5, zero, t0
122:              or           zero, s8, t3
123:              slli         t0, ra, 6
                  sltu         s6, t5, a5
                  addi         s3, a1, 1579
126:              and          s7, s10, s8
                  slti         a3, ra, -1451
                  srai         t1, a7, 11
                  andi         sp, t5, -167
                  ori          t3, s9, 707
                  lw           s8, 4(s4)
                  addi         s4, s4, 60
                  slt          a0, s3, s4
                  sub          s10, s3, s7
                  nop
201:              addi x25, x24, 0
201:              jalr x25, x25, 0
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
.word 0x13f4d65d, 0xc817df80, 0x591b2158, 0x3d3d6174, 0x32e47d6d, 0x43947bbb, 0xffcf434c, 0x43183bb5
.word 0xc3c8071e, 0x0962ebeb, 0xcb6fb934, 0x9bb07c8b, 0xa6824260, 0x54d20943, 0x8501357d, 0x2d345127
.word 0xf96a7298, 0xc857b423, 0x6eac0018, 0x0b51632e, 0x772d89f7, 0xda440b9b, 0x1fa693b7, 0x23174e3a
.word 0x89d110f1, 0x87a2a205, 0x930fbce6, 0xd30788c7, 0x4b680b38, 0xbf49b65a, 0x5667e2c9, 0x7e9523cc
.word 0xd6bb5528, 0xaa184c8b, 0xc2e55d07, 0x8dbc53bf, 0x9f277eab, 0x5a8707da, 0x497e6630, 0x092dba63
.word 0x08180b5c, 0x61e43767, 0x16a9f883, 0x25d62183, 0x90417078, 0xedefd3cd, 0xb6cbc356, 0x5de34626
.word 0x7a057c6e, 0xf7cf1238, 0xb7a4524f, 0x3b8e9c1f, 0x495e112d, 0x5969d9d5, 0x9e2b44e0, 0xbe803130
.word 0x6777d573, 0xfd6d0324, 0xdef7dfc4, 0xfec06e14, 0x15db6d76, 0x3a37e555, 0x7dc56965, 0x54b49ab7
.word 0xf3a0546e, 0xc0723d29, 0x00522a36, 0xb7c847b7, 0xb28d2dd4, 0x917d7f65, 0xffdf2509, 0xce17dc4a
.word 0xb97b85e1, 0xd6199319, 0x129f213b, 0x46cca07f, 0x0a9ece79, 0x9e572199, 0x05cedc4c, 0xb0099616
.word 0x3e2eb61a, 0x26652736, 0xba7eb8fd, 0xf5dc2d04, 0x5193b6d1, 0xdc718b4b, 0x5fe9b63b, 0x62c8c132
.word 0xc100994c, 0x2bd1e353, 0xca60b36f, 0xbaeeaa45, 0x50d9f1c4, 0x8268e1e2, 0xd8ade5cd, 0x19a21a19
.word 0x27524a31, 0xdd2db194, 0xeaed00d6, 0x4ab9f99d, 0xa543319c, 0x72aba3be, 0xaf14abe5, 0xc3fe5091
.word 0x7375d43b, 0x41a368bb, 0xa6091411, 0xa263e5d0, 0x55f1b63e, 0x1d96f0f7, 0xd7beef93, 0xe7594f84
.word 0x17d094dc, 0xa41235f1, 0xf803ec20, 0x9f442768, 0xa3ac620b, 0x9b6d525b, 0x170a972a, 0xd59f2e32
.word 0xe8f7ae1e, 0xcae388b6, 0xee92b230, 0xb2638925, 0x86d03d73, 0xdbb4279b, 0x08b2e374, 0xb3d980b2
.word 0xedafb1df, 0x4bafb15a, 0x12d3aaa4, 0x9765993b, 0x12adf8e6, 0x0986c761, 0x9d58c597, 0xd59a142d
.word 0xd1513bab, 0x80457a32, 0x092dd70a, 0xb064975a, 0x502c00cd, 0xd002132e, 0xe141adfc, 0x13b3c46c
.word 0x9943fbd1, 0x7b396bfc, 0xb20b8bd0, 0xe735ab5a, 0xbc5f370c, 0xb26ba913, 0x5f86ed45, 0x6582c41f
.word 0x10cd5070, 0x094f1a42, 0x9444c40d, 0xbabf3776, 0xa9c8fa1c, 0xb34d0688, 0xf8a475aa, 0x1ffc3ff1
.word 0x95ccaef0, 0xcd10c8fc, 0x098eda50, 0xa6e852cc, 0xea073a2a, 0xa76ededb, 0xbeb13183, 0xa621d104
.word 0x3d9a89a7, 0xa1e51912, 0x78cad01e, 0xe47ef51f, 0x2970a58a, 0x229c07ea, 0x9a1e0fbb, 0x59350bad
.word 0xac787d3e, 0x6625662d, 0xfda5837d, 0x29b7312c, 0xd0f13987, 0xf9b5ab78, 0x1dec9c15, 0x070e109c
.word 0x902f1578, 0x554eb05d, 0xb5edd4e4, 0x2995eb02, 0xf6db190a, 0x46a42774, 0xd0931aa5, 0x3575ffe0
.word 0xdc23edb5, 0x407779fa, 0xee22730b, 0xcb562a72, 0xa1d64a1a, 0x06395330, 0xf8857355, 0xab5642ca
.word 0xd3490b9d, 0x53354f8e, 0xa41e0cb6, 0x8394b98e, 0xbe01f089, 0x5a972484, 0x47f4e1f7, 0xbc426183
.word 0xc221f221, 0x618163c5, 0x09c5bc30, 0xfb769f25, 0x77b6b0c4, 0x54b95a79, 0x29d88e21, 0x3859d5c6
.word 0x2e418e32, 0xca0e865c, 0x139af9a4, 0x881eb95d, 0xab18f6be, 0x4f4996e9, 0xfdbae344, 0x56e6e17a
.word 0xe44f9a4c, 0x03c43900, 0xf46f3e0b, 0x46dbb88f, 0x4499f36e, 0x61dc46b3, 0xf56a9526, 0xdd5f9a17
.word 0xb31f90eb, 0x43b78c1e, 0xd64a7b3c, 0x2b1a7ac2, 0x1393199e, 0x22ea9eb2, 0xef103c1f, 0x49be144c
.word 0xb775d60e, 0x7e9304ec, 0xa2bd6d31, 0x726fbb3f, 0xf9ad5a02, 0x375be3cc, 0x2a396267, 0x4a34fd21
.word 0xf8535340, 0x5f7843bb, 0x1bfdf146, 0x3a0714da, 0x44849f06, 0xd14a6f92, 0x141ebe2a, 0xbcc6ba02
.word 0xd56c6d15, 0xdaf87d2a, 0x3ea290ab, 0x46c7ef5b, 0x66823635, 0x94e2e96d, 0xc308d1b5, 0xfee1a60d
.word 0xd4391ce8, 0x9e3fec41, 0x564d1052, 0xd8150781, 0xf39756dc, 0x31667ab0, 0x1587fc40, 0xb44c9445
.word 0x9dbac448, 0x88643d7c, 0xe1c9a295, 0xf282337c, 0x1215c094, 0x4cdc7fda, 0xb00fd8eb, 0x9ad4b031
.word 0x9fe52bfb, 0x168237a1, 0xec04cf2c, 0x035c070d, 0x32eb4135, 0xbc16f869, 0xe4a04742, 0x1fa92063
.word 0xb0375b6d, 0xa9aadca3, 0x719cc3c1, 0x595b9a56, 0x40ffa05e, 0xc96c894d, 0xc61f5a9d, 0x994630f1
.word 0xc4d88557, 0x55e48f3b, 0x2aad498e, 0x78da6abe, 0x1b7dc6a2, 0xc0eca361, 0xb263fb6b, 0xec0acfe5
.word 0x3d7b37bf, 0x07b596d1, 0x9ed15812, 0xdf9b1bed, 0x35f81f5d, 0xc0a1aabe, 0x175b7beb, 0x47f7def6
.word 0x13afcca7, 0x98bb9177, 0xbeeacc5d, 0x63299329, 0xa0679cb8, 0x8ba01a95, 0x5e7284dc, 0x5804b46d
.word 0x4308e06c, 0xa5f9a37d, 0x555aaaa6, 0x967e8b57, 0xb16181df, 0x4bef5052, 0x90fa39ce, 0xcf428111
.word 0x9cb3f345, 0x48f32a5f, 0x84b436a1, 0x534d8cb6, 0x3694e57f, 0x766e4b43, 0xb43635e9, 0x2908fb4f
.word 0xc6ee2285, 0x92b71839, 0xcf010bad, 0x88bbc0d6, 0xe1a1b286, 0x4c1b5d07, 0xd3b7662d, 0xbccb3cf8
.word 0x40414c4f, 0x31ebd42f, 0x2b21c1d5, 0x3e3a9ebf, 0x12fe4ae7, 0x35138c4c, 0x57336de6, 0x7b22c99d
.word 0x6f45ae37, 0x4eb7c7a8, 0xa43b90ee, 0xaad34aad, 0xdbd5d28c, 0x46f0ae38, 0x695c6ddf, 0x73e4452d
.word 0x2c3ee469, 0x86d7ecc1, 0xe6f239cd, 0x3908d8ce, 0xbe0ef16e, 0x499d17d8, 0x11778c8c, 0x071a8ca9
.word 0xa85e2a7f, 0xc05f15ed, 0x90d16e41, 0x4b12bc4b, 0xbeee97c2, 0x9663658f, 0xd126dca7, 0x06f51630
.word 0x6106228a, 0x7c3bb0aa, 0x9b70922f, 0xba6af65c, 0x5360dbc8, 0xb0736b7a, 0x1a6fd406, 0xb8a5686f
.word 0xaa70ab2d, 0x3a1fb128, 0xbdbdbd8e, 0x9168b3ec, 0x06e1a717, 0x12aed035, 0xe4ab208f, 0x2a4cc388
.word 0x2d644555, 0xf6700c15, 0xafd7b2ac, 0x546c544b, 0xd5e29cf4, 0xf86337d6, 0xed552227, 0xd3c526ba
.word 0xd9043544, 0x2ecf5eff, 0x004f0c8e, 0xd8450987, 0x5896bfcc, 0xa5dc768c, 0xa10f4b8d, 0x3c09ce87
.word 0x5ec2dd5e, 0x94aac506, 0xc72945bc, 0xe591010b, 0x761d1464, 0xe4b9a442, 0xbe8a406b, 0x28ac256b
.word 0x6ec7a935, 0x4e42c680, 0xcd31d763, 0xdb64db79, 0xe0504679, 0x88b63372, 0x3319fbd7, 0x77d5a1c8
.word 0x9c03ecb4, 0xa1de0f21, 0x3a737644, 0xe6dab15a, 0xfceb313a, 0xc92611d3, 0x1dc97e67, 0x189b9e40
.word 0xfcede394, 0x9c7e6ae8, 0x3fb30ca9, 0xee06ea49, 0xf1bc2eb7, 0x51b1fd41, 0xcbef1028, 0x4675745b
.word 0x13b46cd0, 0x3b25c8b5, 0xca1fb4ac, 0x2ab4917f, 0xf7991a8e, 0xe8ecd8af, 0x283631be, 0xe9a7d3ba
.word 0xbebdc24c, 0xaf0dd52a, 0xe133659f, 0xf8393b3e, 0x550bf7c8, 0x620cfe20, 0x85d8021a, 0x8eed9558
.word 0x8823bef8, 0xce1754fb, 0x717beff5, 0x5de32301, 0x8f77e834, 0x15be9fb5, 0x8c460644, 0x8928e387
.word 0x7947e425, 0x105e962e, 0x7d3120db, 0x9e039839, 0x1ce1dc31, 0xd27ba3f5, 0xd7d47ecc, 0xe7d62329
.word 0xb591277f, 0x99b1a7b0, 0xfc13b431, 0xddea6b98, 0x960e7c7f, 0x9ab0b4c4, 0xe7f7a4a6, 0x69bde402
.word 0xd04ea501, 0x906f9c0b, 0x5b827f4f, 0x30fb5944, 0x2295449e, 0x065a15de, 0xd2553128, 0x1483af16
.word 0xbeaf6062, 0x48a7a3c1, 0xd81df659, 0x7efca0e8, 0xda7bc283, 0x8492073a, 0x975673b0, 0x4dd49462
.word 0x1d3465cf, 0x3d513f3e, 0x77753950, 0xb846ac95
.section .region_1,"aw",@progbits;
region_1:
.word 0xd42bf213, 0x7ce47fd9, 0x77430827, 0x6582e3fb, 0xfd420b89, 0x96ba4ad8, 0x18223ab5, 0x85d1e8d2
.word 0x47ec453f, 0xd0e36549, 0x4e0fcc5e, 0x8adb32a8, 0x23134ec4, 0x0da35d0c, 0xce448a19, 0x03f45ca1
.word 0x350fd40d, 0xf4f8d156, 0x1e1b24e6, 0xccf1ad94, 0x95cec9fa, 0x2ea49f9f, 0xa3ea531f, 0x7309a2a3
.word 0xd65d9744, 0x54a0db25, 0xaca945a9, 0xfe080c67, 0xb5a4b9e4, 0x65914957, 0xbdd9902a, 0x51b35386
.word 0x75112c6b, 0xdef6b778, 0x3e81e166, 0xa64548f2, 0xa9e9e964, 0x2e029859, 0x3505aed1, 0x3e924d4e
.word 0x93c1e805, 0x6ed76ada, 0x5d87f864, 0x26ffb1a3, 0x28ec6ef8, 0xbab64f08, 0x603076f0, 0x4d0c23da
.word 0x7dc1c72f, 0x5d8fe7ee, 0x2b242e15, 0x9a79ee65, 0x58c9bae0, 0x01fe17d4, 0xb07f2246, 0xf7e2442d
.word 0xbc64082e, 0x4d5facbb, 0xf8cbca84, 0xb509e964, 0x22cfa3d9, 0xac2a4b24, 0xa22ad8f8, 0x49cc52e0
.word 0x3dbcb36c, 0x2d24c625, 0x895b6f81, 0x8a183a28, 0x4d2056e5, 0x343e6785, 0xb40755c3, 0xf2515458
.word 0x12dc0ee1, 0x017851a3, 0x7d75e72d, 0x5b01778e, 0xebdd5515, 0x9782a717, 0x2ae4fd51, 0x4c62270e
.word 0x1592fc19, 0x32403793, 0x359b42bf, 0x5a270349, 0x4c75c6e4, 0xe95eb91d, 0x3356b60f, 0x38fcf528
.word 0x524632da, 0xd30e4426, 0x4ab24692, 0xaf0c1760, 0x39b560df, 0xcba79ad9, 0xdc281b57, 0x5c825ccd
.word 0x3f42fc9e, 0x27849f36, 0xbd4534c9, 0x25e1bfec, 0x48950697, 0x81b9ab6a, 0x78a22c0a, 0x4bfd111a
.word 0xb2e4f28a, 0x9d322b32, 0x4db189b5, 0x1d8053d9, 0x44c3a08c, 0xdc6e9b4d, 0x375014e4, 0x90f86012
.word 0x97c86e93, 0x00ca3f46, 0xda992ebc, 0x43ba1144, 0x8adbc4be, 0xd3c5b6a2, 0x4bf76c3a, 0x161cd4ed
.word 0xe7394ebd, 0x33664d82, 0xfed827db, 0xf0dc74ec, 0x8bf1e403, 0xdd538ff4, 0x8263de4e, 0xe73ce853
.word 0x3cd7aeb1, 0x61361226, 0x24d698f5, 0x6d3bd332, 0x2a061cbf, 0xde32c8fd, 0x6abd1fa0, 0xa2a3df8e
.word 0x139c81ea, 0xfb4a4c76, 0xa86d4e21, 0xebaafb8e, 0xd8ae14d1, 0x377ff575, 0x9468dda9, 0xb70da0ec
.word 0xd8eadfd7, 0x774cd8f2, 0x39b315eb, 0xc9423dc4, 0xa4565e20, 0x4cabf185, 0xdac36dd0, 0xa8128515
.word 0x914974b2, 0x6608b0ce, 0x86b54c98, 0xc8398d27, 0xf7a1060e, 0x22e78c04, 0x4a44a2a0, 0x67bbbd3e
.word 0xd2f10085, 0x226706eb, 0x24224428, 0x957291d1, 0xffe5e155, 0x0bbd1152, 0xa04268fb, 0x1059c181
.word 0x7a71d5be, 0x9e055864, 0x0c27ddce, 0x52341c6e, 0xad6f25fe, 0x7c7382d5, 0x5a30b2b8, 0x6e747bf4
.word 0xe6a70281, 0x1429e00f, 0xc7127615, 0xbd18f2c3, 0x5110843b, 0x9ff19149, 0x9c5d5c02, 0xd0b2f082
.word 0x3cfdeb09, 0x8751eef3, 0x60360df2, 0x6de31781, 0x698f3904, 0x41fccb13, 0x370f331d, 0x24dd149f
.word 0x66c1c7f2, 0x914d2fe1, 0x023600f8, 0xe4bc7596, 0x4feb03bb, 0xeb728e3c, 0xe0c948df, 0x9bf65b59
.word 0x8cafd65d, 0x939acaf9, 0x2113c7eb, 0x7de479e7, 0x16bf1218, 0x5be9a218, 0x7c13395f, 0xe120d975
.word 0x279a5fdb, 0x90418efa, 0x765c921d, 0x9518fe3c, 0xa094daaf, 0x1318c97d, 0x7b905b66, 0xcd366978
.word 0xb3e5a9af, 0xd9aef20a, 0x25c55c29, 0xb450d128, 0x48e6c731, 0x686b47cb, 0xb9fb6c1a, 0x502d0661
.word 0x98b09aaf, 0xca58e1c6, 0x3be08888, 0x247bd1d9, 0xa2099c2a, 0x110036fe, 0x70c05090, 0x51d3e269
.word 0xcf017f26, 0xb921c1ab, 0x14ca797c, 0xcd373503, 0x85277a2b, 0x35fc60c3, 0x97cb94ed, 0xfcc1f4c0
.word 0x6636c748, 0x0299977a, 0x6f687b3b, 0xebda55e4, 0xe8ee5af2, 0x3ae2092b, 0x99e343e8, 0x07b74131
.word 0x80c22a43, 0x37c01c19, 0x857025af, 0xa589c595, 0x6af11bd0, 0xf88d4024, 0x03897ee0, 0x84936e95
.word 0xee0142f0, 0x33b903b5, 0xf573b05a, 0x4c3f0c55, 0x81bf170a, 0x4f407d93, 0xab140268, 0xadb32694
.word 0x4430fdac, 0x1d34418a, 0x76825937, 0x40b9abc3, 0x9f76ee2a, 0x1ab02699, 0x52e9c37e, 0x2dea1364
.word 0xb46ec9ee, 0x5e3328b9, 0xf0f1e024, 0xbf578805, 0x54ab9409, 0xe148c6b9, 0x9787e966, 0xc07749aa
.word 0x72dffe1f, 0xd6c28401, 0xb09e793b, 0xda05330e, 0x0a3c51bb, 0x0b246b33, 0x43f44590, 0x3afe2431
.word 0xbb328ed3, 0xc9007aac, 0xf5399759, 0xc714e32e, 0x0926f0d1, 0xdedfd75a, 0xe03a6fea, 0xa827ba28
.word 0x7fa37a00, 0x5dace86a, 0x5f871f79, 0x1f086e04, 0xc3384fae, 0xd4133f50, 0x51aaace3, 0xd0193904
.word 0xa849c432, 0x0a01ead9, 0xf317b35f, 0xedfde460, 0xde3af7d3, 0xdb5533aa, 0x5105c068, 0x20c3f887
.word 0x3a6cb435, 0x820b0f0f, 0xe9b094ad, 0xe86ddeb0, 0xfe7f7509, 0x5d306627, 0x41e91926, 0xa1a3b041
.word 0x820ae014, 0xfab1dac6, 0xfec0edd7, 0x8d05b721, 0x4f7d0a97, 0x6b7bbde7, 0x5a4612d0, 0x885d9d22
.word 0x310cc9e5, 0xfa5af0e7, 0xef5c2c20, 0x61330b91, 0x1f84beb0, 0x08e211f9, 0x15cb60f9, 0xc6ff43b6
.word 0x2502a45d, 0xfeb500cd, 0x3f48cdc1, 0x91bb30c2, 0xf6879e17, 0x2a465b8d, 0xc0f5ba25, 0x4156509f
.word 0x76c216dd, 0x93726864, 0xd8901e38, 0x65888426, 0x2f12718e, 0x027daf48, 0x0c641a7a, 0xfc5f5b83
.word 0x5ba520d5, 0x27f908f1, 0xca095dde, 0xbcd99bdd, 0xfd6419e5, 0x2d321859, 0xd212522f, 0x27d23481
.word 0xa979297f, 0x155a91e1, 0xe4ce210a, 0xf4ae3d6c, 0xb80992a0, 0xd923bd43, 0xd847dd6f, 0x67377605
.word 0x457fb20a, 0x11985bbe, 0x01c901c7, 0xc4416816, 0x720e88b0, 0x520e8d56, 0xee4939bd, 0xeff83cfd
.word 0x652ca8cd, 0x039f789f, 0x4fcb2608, 0x43e79718, 0xe9c253a4, 0x17b2c45b, 0x795fa1e3, 0x277539fd
.word 0x6afbff1b, 0x7c64640c, 0x5d099a78, 0x68b09d96, 0xfaa637a7, 0x8836fa52, 0x9e69f4a6, 0x63794572
.word 0x5363f289, 0xbaa48639, 0x2abe3f0b, 0x42ddaca3, 0x0f6dec4d, 0x1a41d54f, 0x74992d1b, 0x0f0d582f
.word 0xfcd2bfd0, 0xd5f7bda6, 0xc9aecb81, 0x337009aa, 0xe1aa2622, 0x0e86b6d5, 0xfa707e36, 0x1b8a5502
.word 0x4f157215, 0x4788c35f, 0xfd62edd4, 0xd36a402c, 0x2febbb84, 0xfa5ed6bf, 0xa911d277, 0x1ac3c065
.word 0xd87b5b01, 0x19378816, 0xca159264, 0xa291e395, 0x57a0a618, 0xe80102da, 0x1cabbe6a, 0xbb6b6792
.word 0xbb849c33, 0x43cb9e05, 0xc61495e5, 0xc88ab438, 0xf00c336c, 0xb6b9ea57, 0x644a6fc1, 0xd4d9757b
.word 0x38641295, 0xc2a182f1, 0xc8fb87cd, 0x624d2e01, 0xf7b1b925, 0x20479063, 0xb448b0fd, 0x8fee20ba
.word 0x9b79af7b, 0x2f889156, 0x8d92fed8, 0xd842d494, 0x92e2f57b, 0x061a29b6, 0xf1a7a137, 0xb800be74
.word 0xe8c31673, 0x58136bdc, 0x89730616, 0x4447f709, 0x8be83229, 0x187cce82, 0x5bf4a104, 0x96a16d5b
.word 0x7fc76cac, 0xb25aaf57, 0xc1d30b17, 0x66af830d, 0xdeb643e8, 0x5990460c, 0xf77ce9cd, 0x1f697291
.word 0x6053b03b, 0xd7e53993, 0xed2a5901, 0x8dc1ba70, 0xad0bdaeb, 0x2a808834, 0xc54d4a7f, 0x5ee22cbd
.word 0x8263be5b, 0xba7056b9, 0x5944e160, 0xd552d587, 0x664bc14b, 0xb4a6a430, 0xa55c548c, 0xf935313d
.word 0xbeb69e2b, 0x2ed59fc3, 0xc79c5370, 0xa1a9e2b0, 0xcec96c8d, 0x24e40d74, 0x8b44c436, 0x1a92aeea
.word 0x86a7c8dd, 0x6d01e49e, 0x03593c95, 0xffb7a69e, 0xc137865a, 0xff067b96, 0xeb36f61e, 0xcff2a9b4
.word 0xee3c6e7c, 0xec7bb553, 0x819493ba, 0xdfcec49c
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
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x17, x20, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_2:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x17, x20, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_3:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x17, x20, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_4:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x17, x20, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_5:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x17, x20, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_6:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x17, x20, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_7:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x17, x20, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_8:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x17, x20, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_9:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x17, x20, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_10:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x17, x20, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_11:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x17, x20, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_12:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x17, x20, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_13:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x17, x20, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_14:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x17, x20, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_15:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x17, x20, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

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
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x17, x20, zero
                  csrr x4, 0x341 # MEPC
                  csrr x4, 0x342 # MCAUSE
                  li x11, 0x3 # BREAKPOINT
                  beq x4, x11, ebreak_handler
                  li x11, 0x8 # ECALL_UMODE
                  beq x4, x11, ecall_handler
                  li x11, 0x9 # ECALL_SMODE
                  beq x4, x11, ecall_handler
                  li x11, 0xb # ECALL_MMODE
                  beq x4, x11, ecall_handler
                  li x11, 0x1
                  beq x4, x11, instr_fault_handler
                  li x11, 0x5
                  beq x4, x11, load_fault_handler
                  li x11, 0x7
                  beq x4, x11, store_fault_handler
                  li x11, 0xc
                  beq x4, x11, pt_fault_handler
                  li x11, 0xd
                  beq x4, x11, pt_fault_handler
                  li x11, 0xf
                  beq x4, x11, pt_fault_handler
                  li x11, 0x2 # ILLEGAL_INSTRUCTION
                  beq x4, x11, illegal_instr_handler
                  csrr x11, 0x343 # MTVAL
                  1: la x9, test_done
                  jalr x1, x9, 0

ecall_handler:    
                  la x4, _start
                  sw x0, 0(x4)
                  sw x1, 4(x4)
                  sw x2, 8(x4)
                  sw x3, 12(x4)
                  sw x4, 16(x4)
                  sw x5, 20(x4)
                  sw x6, 24(x4)
                  sw x7, 28(x4)
                  sw x8, 32(x4)
                  sw x9, 36(x4)
                  sw x10, 40(x4)
                  sw x11, 44(x4)
                  sw x12, 48(x4)
                  sw x13, 52(x4)
                  sw x14, 56(x4)
                  sw x15, 60(x4)
                  sw x16, 64(x4)
                  sw x17, 68(x4)
                  sw x18, 72(x4)
                  sw x19, 76(x4)
                  sw x20, 80(x4)
                  sw x21, 84(x4)
                  sw x22, 88(x4)
                  sw x23, 92(x4)
                  sw x24, 96(x4)
                  sw x25, 100(x4)
                  sw x26, 104(x4)
                  sw x27, 108(x4)
                  sw x28, 112(x4)
                  sw x29, 116(x4)
                  sw x30, 120(x4)
                  sw x31, 124(x4)
                  la x9, write_tohost
                  jalr x0, x9, 0

instr_fault_handler:
                  add x20, x17, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

load_fault_handler:
                  add x20, x17, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

store_fault_handler:
                  add x20, x17, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

ebreak_handler:   
                  csrr  x4, 0x341
                  addi  x4, x4, 4
                  csrw  0x341, x4
                  add x20, x17, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

illegal_instr_handler:
                  csrr  x4, 0x341
                  addi  x4, x4, 4
                  csrw  0x341, x4
                  add x20, x17, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x4, 0x300 # MSTATUS;
                  csrr  x4, 0x304 # MIE;
                  csrr  x4, 0x344 # MIP;
                  csrrc x4, 0x344, x4 # MIP;
                  add x20, x17, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
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
