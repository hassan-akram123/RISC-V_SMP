.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x24, h0_start
jalr x0, x24, 0
h0_start:
                  li x2, 0x40000100
                  csrw 0x301, x2
kernel_sp:        
                  la x25, kernel_stack_end

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
                  li x0, 0x0
                  li x1, 0x0
                  li x2, 0x0
                  li x3, 0x80000000
                  li x4, 0x3
                  li x5, 0x80000000
                  li x6, 0x0
                  li x7, 0x0
                  li x8, 0x0
                  li x9, 0x80000000
                  li x10, 0xe7882e3c
                  li x11, 0xf11bc6e5
                  li x12, 0x80000000
                  li x13, 0x41ad3e7f
                  li x15, 0xee13c1e6
                  li x16, 0x80000000
                  li x17, 0x5
                  li x18, 0x6b35496e
                  li x19, 0xfd08c43f
                  li x20, 0x7
                  li x21, 0x80000000
                  li x22, 0xe
                  li x23, 0x80000000
                  li x24, 0x80000000
                  li x26, 0x27917bf7
                  li x27, 0x0
                  li x28, 0x80000000
                  li x29, 0xfff6eba7
                  li x30, 0x9
                  li x31, 0x4bf2239e
                  la x14, user_stack_end
main:             la           a0, sub_3
                  srl          s1, t6, s7
                  lui          a2, 977483
                  sub          t6, s8, a3
                  sub          s5, t5, s5
                  sltu         ra, t1, s3
                  xori         s1, s0, 642
                  addi         a0, a0, 449
                  srai         s7, a6, 10
                  lui          s1, 242347
main_j2:          jalr         s2, a0, -448 #jump main -> sub_3
                  la           s1, region_1+1604 #start riscv_load_store_rand_instr_stream_0
                  lb           a7, 41(s1)
                  srl          t1, s10, a4
                  sra          a2, t2, s4
                  xori         a0, s0, 2042
                  lbu          a3, -11(s1)
                  lh           t2, 20(s1)
                  lw           ra, 12(s1)
                  lb           sp, 54(s1)
                  addi         s6, t2, 558
                  addi         t3, zero, 1801
                  lhu          t3, 46(s1)
                  ori          s10, s0, 300
                  sb           s8, -29(s1)
                  lbu          t4, -56(s1)
                  lui          tp, 992506
                  ori          t6, s0, 1478
                  lb           t4, -5(s1)
                  slli         t2, a1, 2
                  lhu          s3, -6(s1)
                  sb           s7, 39(s1)
                  lhu          t6, 30(s1)
                  lb           t5, 28(s1)
                  srli         s7, ra, 2
                  sub          t5, sp, zero
                  or           a7, s8, tp
                  sb           s1, -55(s1)
                  sb           t5, -17(s1)
                  sltu         a0, zero, t3
                  sh           s8, -64(s1) #end riscv_load_store_rand_instr_stream_0
                  slti         t1, s2, -778
                  ori          s2, s0, 920
                  slti         a7, a6, 1992
                  sub          s5, s11, s9
                  sltu         s5, a0, a0
                  sltiu        s11, t4, 691
                  bge          s9, s3, 8f
                  srl          tp, a4, s7
8:                add          ra, a4, t2
                  sltu         s5, t1, a1
                  or           s0, a1, s7
                  andi         s3, s3, -1478
                  slt          t6, s0, gp
                  or           a7, sp, t0
                  addi         s1, a0, 614
                  and          s11, t2, s9
                  sltu         a7, t5, tp
                  sltiu        s2, a3, -545
                  andi         s3, s5, -513
                  and          t6, a6, t0
                  sltiu        a0, a5, 1001
                  andi         a7, s9, 267
                  bltu         a0, t6, 24f
                  and          s0, s9, s4
24:               sra          a0, a1, s6
                  blt          t0, s2, 33f
                  bge          t3, t0, 36f
                  xor          t6, t2, t0
                  slt          t0, a3, t6
                  blt          gp, sp, 46f
                  slt          s11, t4, s8
                  lui          tp, 561280
                  srai         zero, t4, 6
33:               add          s11, zero, a7
                  slli         a3, s5, 19
                  srli         t0, ra, 16
36:               srai         a7, s5, 6
                  slti         a0, zero, 945
                  beq          s3, a3, 51f
                  srli         s4, t3, 11
                  blt          t1, s1, 59f
                  srl          s2, sp, t2
                  auipc        t6, 80014
                  sltiu        s5, t1, -1211
                  bne          s1, a4, 55f
                  srli         a7, t4, 11
46:               or           tp, a5, s11
                  add          t4, s7, zero
                  bgeu         a0, a5, 66f
                  lui          zero, 323530
                  sll          t6, s1, a5
51:               srai         s1, a3, 25
                  bltu         a3, ra, 71f
                  bgeu         ra, t5, 57f
                  andi         a5, a3, -1615
55:               add          t5, s11, s6
                  slti         zero, t0, 502
57:               slti         gp, s0, -1869
                  nop
59:               sra          ra, s1, s1
                  blt          s11, tp, 79f
                  add          a3, s10, s3
                  sub          a5, t5, t2
                  lui          a3, 245949
                  bge          s1, s9, 73f
                  srl          a6, t3, a0
                  and          a6, t1, t5
                  la           tp, sub_2
                  addi         tp, tp, 910
                  slli         gp, s10, 21
                  and          ra, t5, a5
                  slt          a3, tp, s5
                  xor          zero, s2, a7
                  srl          s7, s1, a4
main_j4:          jalr         s2, tp, -909 #jump main -> sub_2
                  lui          s4, 817092
66:               bltu         s4, a3, 81f
                  bgeu         s11, zero, 83f
                  sub          s11, s10, zero
                  blt          s6, ra, 87f
                  lui          s0, 1014527
71:               sub          s11, a2, a5
                  slti         a2, ra, -159
73:               slli         a7, s4, 7
                  addi         t2, ra, -1189
                  blt          t5, a2, 83f
                  sll          sp, s1, t0
                  slt          s3, s10, a0
                  sltiu        t5, s2, 1120
79:               bne          s9, zero, 94f
                  sltu         a6, t0, t5
81:               bge          gp, s10, 101f
                  bgeu         s4, t2, 92f
83:               slti         a7, s9, -1634
                  srai         ra, s7, 30
                  bne          s4, s8, 102f
                  xor          s1, a1, s8
87:               bgeu         t1, s2, 101f
                  or           a2, a5, t2
                  or           a3, ra, zero
                  addi         s7, s7, 1388
                  slt          a1, s8, s1
92:               bge          a6, s10, 107f
                  auipc        t0, 864390
94:               srl          s2, a1, s0
                  bgeu         ra, s0, 100f
                  xori         t2, gp, 650
                  bne          zero, a1, 108f
                  slt          t5, s3, s1
                  andi         t4, s0, 24
100:              srli         sp, a6, 7
101:              addi         a0, s10, 822
102:              srai         t0, s5, 3
                  slli         s2, t1, 19
                  xori         t1, s9, -576
                  and          t4, s3, a7
                  bltu         ra, s10, 114f
107:              bltu         s8, a7, 119f
108:              bge          a0, t3, 119f
                  bgeu         ra, s10, 110f
110:              bgeu         s10, ra, 125f
                  bne          t4, t5, 116f
                  bgeu         s0, ra, 127f
                  nop
114:              slti         s1, t0, -963
                  lui          a3, 308864
116:              nop
                  sltiu        s0, s10, 1614
                  srli         t5, a5, 13
119:              sltiu        s7, s3, 125
                  add          a5, gp, s10
                  sltu         t2, ra, t0
                  addi         a3, s7, -1291
                  sll          a6, a7, t5
                  sltiu        a3, s11, -1658
125:              or           s11, gp, ra
                  nop
127:              bltu         s9, t4, 129f
                  ori          s11, a7, -1158
129:              slti         tp, t4, -46
                  sub          t1, s7, a3
                  ori          ra, ra, 1300
                  la           s4, sub_2
                  or           t5, s1, gp
                  slli         ra, tp, 15
                  slli         sp, s2, 6
                  addi         s4, s4, -972
                  sltiu        a6, t1, -1596
                  srl          a5, t3, a4
main_j1:          jalr         s2, s4, 972 #jump main -> sub_2
                  sltu         sp, ra, t4
                  bge          a0, a6, 139f
                  add          a5, a7, s9
                  sub          s1, gp, t0
                  or           ra, s1, t6
                  sltu         s4, s9, sp
                  slt          gp, t3, s2
                  la           s5, sub_1
                  sll          s4, t3, t1
                  srai         gp, t4, 4
                  sltiu        t1, s2, 144
                  addi         s5, s5, -691
                  and          a0, gp, s0
                  slti         t4, a5, -1430
                  addi         s3, a7, -438
                  and          a2, s5, s10
main_j3:          jalr         s2, s5, 691 #jump main -> sub_1
                  slti         gp, t3, -1223
                  srai         t4, a3, 8
                  slli         s10, a1, 20
139:              slti         t0, a5, 369
                  ori          s10, a4, -5
                  add          a2, t3, s4
                  ori          t1, s6, -1680
                  bne          sp, a6, 158f
                  addi         a2, s6, -631
                  beq          s0, tp, 156f
                  xori         t3, s0, 1485
                  slt          t6, s9, a6
                  srli         s3, s2, 9
                  bne          s1, s2, 158f
                  blt          s6, s11, 163f
                  addi         a1, s11, 1850
                  bne          a1, a7, 167f
                  sub          t2, s11, s0
                  nop
                  ori          s10, s0, 189
156:              slli         ra, s10, 24
                  blt          gp, ra, 165f
158:              ori          s10, a3, 48
                  sltu         t4, s2, t1
                  sltu         s7, s4, t6
                  ori          s1, t0, -1245
                  ori          a0, t6, 1890
163:              xori         a7, a1, -418
                  lui          a7, 892310
165:              sll          t5, a3, zero
                  slti         s5, s2, 904
167:              srai         a6, zero, 17
                  ori          s4, s7, 1115
                  bge          a6, tp, 171f
                  bne          s0, a2, 171f
171:              sltiu        s7, t1, 1079
                  andi         a7, sp, 1255
                  sra          a1, t0, s3
                  sll          gp, ra, s3
                  and          s5, a7, gp
                  slti         a1, t4, 232
                  la x24, test_done
                  jalr x0, x24, 0
test_done:        
                  li gp, 1
                  ecall
sub_9:            bge          t0, ra, sub_9_stack_p
sub_9_stack_p:    addi         a4, a4, -20
                  xori         t6, s10, -947
                  xori         tp, s11, 1487
                  sw           s2, 4(a4)
                  addi         sp, s9, 759
                  andi         t3, s6, -1590
                  slt          t5, tp, a5
                  la           s10, sub_10
                  xor          s1, s1, t0
                  sll          t3, a7, a1
                  addi         s10, s10, 193
                  slti         a2, t5, -2032
                  addi         t0, s10, 1804
                  sra          t5, s3, t0
                  srai         t1, ra, 15
                  and          t4, s7, t3
                  bne          a5, s2, sub_9_j15 #branch to jump instr
                  lui          a0, 435198
sub_9_j15:        jalr         s2, s10, -193 #jump sub_9 -> sub_10
                  bne          s9, a5, 7f
                  sltu         s3, a3, a2
                  sra          a3, s7, t3
                  sltu         t3, t6, s2
                  srl          s5, a6, s9
                  bge          a3, s4, 12f
                  bge          t4, s5, 20f
7:                srli         s2, tp, 10
                  sra          t0, gp, t2
                  andi         a2, a1, -174
                  srl          ra, s9, t2
                  addi         gp, t2, 1399
12:               sub          s4, a4, t1
                  andi         s1, t6, 1961
                  xori         t3, s10, 1542
                  sltu         a7, a2, s3
                  sra          s2, t2, s10
                  bgeu         sp, s1, 21f
                  bgeu         a1, s2, 28f
                  xori         tp, s8, -1048
20:               sltu         tp, s7, zero
21:               srai         zero, a0, 13
                  srai         a1, a4, 18
                  srl          s6, s3, s1
                  auipc        t0, 1006557
                  bge          t3, a4, 35f
                  srli         zero, s11, 2
                  ori          s5, t0, -1568
28:               sltu         a6, s11, a6
                  blt          s1, a3, 37f
                  xori         s10, a3, 1200
                  or           s3, tp, a2
                  addi         s3, s7, -955
                  bgeu         ra, t6, 37f
                  lui          t0, 58866
35:               nop
                  blt          tp, t4, 37f
37:               auipc        s0, 904863
                  xori         sp, a7, -535
                  sltiu        ra, s4, -1751
                  xori         gp, a0, 1448
                  lw           s2, 4(a4)
                  srli         s11, zero, 15
                  srai         s10, s9, 24
                  add          a3, t2, ra
                  addi         a4, a4, 20
                  slli         a2, s2, 7
                  sub          t6, sp, sp
68:               addi x28, x18, 1
68:               jalr x28, x28, 0
sub_7:            add          a1, tp, a5
                  slt          s1, s10, s0
                  addi         a4, a4, -12
                  addi         a6, tp, 1277
                  slli         s0, s4, 10
                  sra          t0, a4, a6
                  sw           s2, 4(a4)
                  andi         a2, s1, 1166
                  auipc        s0, 764310
                  slt          t0, sp, s10
                  la           ra, sub_9
                  slli         s7, t1, 4
                  addi         ra, ra, -418
                  beq          a4, t3, sub_7_j11 #branch to jump instr
                  sub          gp, a1, s8
                  xor          sp, s4, a6
                  slti         t3, s10, -1789
sub_7_j11:        jalr         s2, ra, 418 #jump sub_7 -> sub_9
                  slli         sp, t2, 14
                  sltiu        t1, ra, 1013
                  sltiu        t1, s8, -318
                  srl          t4, s1, a5
                  srai         t4, s8, 1
                  bgeu         s1, a7, sub_7_j12 #branch to jump instr
                  srli         s7, s10, 27
sub_7_j12:        jal          s2, sub_8 #jump sub_7 -> sub_8
                  slti         ra, s6, -5
                  sub          a3, gp, s9
                  slt          t4, s8, s5
                  sltu         sp, s2, s6
                  nop
                  andi         s10, a3, -819
                  auipc        s10, 159038
                  addi         s6, s6, 1862
                  lui          t4, 984066
sub_7_j13:        jal          s2, sub_8 #jump sub_7 -> sub_8
                  bge          s1, a3, 16f
                  slti         t4, a5, 1287
                  slt          t4, a1, s8
                  sll          a2, a0, s4
                  xori         t2, a7, -1732
                  ori          s6, zero, -1668
                  bgeu         s3, s4, 16f
                  slt          gp, t5, a0
                  srl          tp, s9, s0
                  slt          s10, t5, zero
                  xori         zero, s0, 1530
                  sub          s2, a3, tp
                  slt          s10, s11, a4
                  lui          s11, 785771
                  bltu         s10, a2, 16f
                  auipc        t6, 217743
16:               sra          t3, sp, s1
                  lw           s2, 4(a4)
                  addi         a4, a4, 12
                  sltiu        t0, tp, -1855
                  addi         zero, a0, 978
                  nop
58:               addi x10, x18, 1
58:               jalr x10, x10, 0
sub_4:            addi         a4, a4, -48
                  sw           s2, 4(a4)
                  srli         a0, sp, 7
                  srl          s3, tp, sp
                  or           a6, s11, s8
                  bne          t0, s3, sub_4_j8 #branch to jump instr
                  and          s2, zero, a4
                  slti         a3, s0, -1950
                  or           s4, s9, s0
                  srli         a5, t1, 25
                  or           s11, s3, t5
sub_4_j8:         jal          s2, sub_6 #jump sub_4 -> sub_6
                  sltiu        a1, tp, 1865
                  and          a0, a5, tp
                  slt          t6, a5, t1
                  blt          tp, a2, 18f
                  sra          t4, t0, s6
                  srli         t5, a2, 5
                  bge          s0, sp, 9f
                  sub          a7, s5, s8
                  addi         zero, a5, -1125
9:                auipc        s11, 486441
                  bltu         a1, gp, 20f
                  beq          s8, s6, 21f
                  xori         t2, s7, 873
                  srl          a7, sp, s9
                  sltiu        a3, s6, 1980
                  nop
                  or           s7, s4, a7
                  nop
18:               beq          s9, a2, 28f
                  bltu         s11, a1, 28f
20:               andi         tp, a6, 1649
21:               xor          t1, s10, zero
                  bne          sp, s2, 28f
                  nop
                  bne          a3, s0, 28f
                  sub          tp, a5, s1
                  sub          a7, s3, s7
                  blt          s9, s2, 28f
28:               slti         s6, t4, 1477
                  auipc        a5, 756828
                  lw           s2, 4(a4)
                  slli         sp, gp, 11
                  ori          s3, s7, 1442
                  sltu         a1, ra, s5
                  ori          t4, a3, 1573
                  sltu         a5, t3, t5
                  slt          gp, s10, a4
                  addi         a4, a4, 48
                  add          a3, zero, s1
                  lui          ra, 16545
52:               addi x16, x18, 0
52:               jalr x16, x16, 0
sub_2:            beq          gp, a3, sub_2_stack_p
sub_2_stack_p:    addi         a4, a4, -60
                  slti         a1, a7, 177
                  sltiu        t3, a3, -589
                  sll          tp, gp, a4
                  sw           s2, 4(a4)
                  slt          s6, a3, a6
                  xori         t1, s11, 1365
                  andi         s11, s0, -1824
                  and          t6, a3, t0
                  and          a1, s1, s5
                  nop
                  srai         s6, s11, 12
                  la           gp, sub_5
                  or           s10, gp, s8
                  addi         gp, gp, -812
                  slli         a5, a2, 4
                  sub          a5, t6, a3
                  sltu         a7, s1, s2
sub_2_j6:         jalr         s2, gp, 813 #jump sub_2 -> sub_5
                  and          t3, t5, s2
                  nop
                  auipc        t0, 751342
                  xori         t4, s1, -381
                  bgeu         tp, t6, 13f
                  srai         s10, s3, 5
                  or           t6, s2, t5
                  sub          sp, s3, s11
                  or           s4, s3, s1
                  slti         a0, t2, 1505
                  srl          t4, s8, a2
                  slti         t2, a1, -1314
                  bgeu         s11, tp, 15f
13:               and          s0, a6, a6
                  sll          a2, a5, t3
15:               sll          s2, t0, a4
                  sltiu        s5, s5, -1284
                  xor          a0, a5, tp
                  lui          a0, 682314
                  lui          s11, 924088
                  auipc        s11, 91126
                  xor          s1, sp, s1
                  lw           s2, 4(a4)
                  slti         s6, a4, -897
                  addi         a4, a4, 60
                  srl          t0, s1, t3
                  nop
47:               addi x22, x18, 0
47:               jalr x22, x22, 0
sub_1:            nop
                  addi         a4, a4, -12
                  add          s7, ra, a5
                  sw           s2, 4(a4)
                  srli         sp, s10, 12
                  slli         zero, s0, 18
                  sltiu        sp, gp, -2009
                  addi         ra, sp, -974
                  la           gp, region_1+1990 #start riscv_load_store_rand_instr_stream_10
                  xori         a7, a6, 169
                  sltu         t0, s11, t6
                  sb           t3, -41(gp)
                  slli         ra, t6, 12
                  lhu          s4, -562(gp)
                  slt          a1, a1, a7
                  srai         zero, a6, 22
                  sltiu        s7, t3, -250
                  lb           s5, -1685(gp)
                  sltiu        t5, s8, -736
                  sra          s6, t6, a1
                  lh           s2, -1536(gp)
                  lb           a3, -1203(gp)
                  sub          ra, zero, s4
                  lbu          a3, -1822(gp)
                  srl          a7, a5, a7
                  sltiu        s10, t0, 834
                  sltu         a0, t1, sp
                  and          a7, s11, t0
                  or           a7, t2, tp
                  lui          s11, 286458
                  sh           zero, -54(gp)
                  lbu          t0, -42(gp)
                  or           t6, s9, t0
                  lb           a0, -1847(gp)
                  and          s4, s11, sp
                  lbu          t2, -440(gp)
                  sb           s11, -1817(gp)
                  sw           s11, -1378(gp)
                  xori         zero, s7, 1587
                  andi         a2, a7, 699
                  xor          s3, a1, s11
                  lbu          s7, -31(gp)
                  sh           s6, -396(gp)
                  andi         a0, s1, -869
                  lb           s6, -129(gp)
                  srl          s10, a7, s5
                  xor          s10, t4, t5
                  srli         t4, s6, 29
                  sb           s4, -281(gp)
                  lbu          t3, -1701(gp)
                  lh           zero, -590(gp)
                  slt          t0, s8, ra
                  lb           a2, -1017(gp)
                  lbu          a0, -831(gp)
                  sb           s11, -369(gp)
                  slli         a3, s2, 29
                  sw           t0, -826(gp) #end riscv_load_store_rand_instr_stream_10
                  la           sp, region_1+726 #start riscv_load_store_rand_instr_stream_15
                  srai         s7, a1, 20
                  add          ra, gp, s5
                  srai         a1, s1, 20
                  sltu         a7, s4, t2
                  xori         t1, a2, -1090
                  sub          a3, tp, a4
                  andi         s11, zero, -1640
                  sltu         a5, zero, s10
                  lb           tp, 994(sp)
                  sub          ra, s4, tp
                  lb           a2, 727(sp)
                  xori         s2, s4, 461
                  and          gp, a2, tp
                  srli         t4, t0, 22
                  lh           t2, 200(sp)
                  sub          t1, t3, a7
                  slti         s1, gp, -1157
                  sub          t0, s5, s8
                  srli         s10, s5, 21
                  sb           s9, -73(sp)
                  lbu          s1, 1235(sp)
                  sltu         s6, s5, s1
                  andi         t4, s2, 864
                  and          t6, a1, a3
                  or           s3, s8, zero
                  sub          a3, s2, a6
                  ori          a3, t5, 1558
                  andi         tp, t3, 332
                  sb           a5, -47(sp)
                  lbu          a2, 1259(sp)
                  lbu          a5, -15(sp)
                  and          a7, s7, s8
                  lb           a6, 1181(sp)
                  sb           t1, -599(sp)
                  andi         a2, a6, 132
                  lw           t6, 190(sp)
                  nop
                  lbu          s4, 659(sp)
                  lbu          t5, -49(sp)
                  lb           t3, 1166(sp)
                  lh           a2, -668(sp)
                  sh           a2, -490(sp) #end riscv_load_store_rand_instr_stream_15
                  la           t2, region_0+143 #start riscv_load_store_rand_instr_stream_7
                  add          t1, s10, s7
                  lb           a6, 1320(t2)
                  lbu          s6, 1560(t2)
                  lb           s5, 180(t2)
                  sh           a2, 593(t2)
                  ori          s5, t5, -1128
                  or           t4, t2, t3
                  andi         t5, s10, -1765
                  andi         t4, sp, 1301
                  sb           s3, 781(t2)
                  lbu          sp, 444(t2)
                  sltiu        s11, s11, 734
                  sw           t0, 845(t2)
                  slli         a1, s5, 30
                  sll          gp, gp, s11
                  slli         sp, t0, 27
                  srl          s11, a0, t5
                  andi         s1, zero, 994
                  and          a0, t0, tp
                  lbu          s4, -6(t2)
                  add          a5, s0, s3
                  srli         s2, t2, 17
                  slli         a3, sp, 28
                  sub          a6, t3, gp
                  sll          a3, a1, a7
                  lui          a1, 68930
                  and          gp, s7, s0
                  sltiu        s3, s7, 947
                  sra          s10, tp, t6
                  srli         a6, s6, 6
                  slti         s11, a5, -45
                  sb           s8, 86(t2)
                  lbu          s7, 633(t2) #end riscv_load_store_rand_instr_stream_7
                  la           sp, region_0+911 #start riscv_load_store_rand_instr_stream_3
                  sh           a1, 51(sp)
                  srl          s6, s11, tp
                  lbu          a2, 204(sp)
                  auipc        s3, 892798
                  lbu          gp, 222(sp)
                  lui          a2, 345963
                  lh           ra, 211(sp)
                  lhu          t6, 159(sp)
                  ori          s3, a1, 120
                  sb           s2, 100(sp)
                  sb           s9, -76(sp)
                  srl          t2, t1, tp
                  sltiu        a1, ra, 1911
                  slti         s7, a4, -572
                  sb           s9, -120(sp)
                  lb           t2, -230(sp)
                  srl          a1, s9, t5
                  slti         ra, s10, -1625
                  lbu          a1, 109(sp)
                  sltu         s10, tp, a4
                  lb           a3, 106(sp)
                  sh           s6, 117(sp)
                  sltiu        a1, a4, 1793
                  sb           a0, 183(sp)
                  lb           s5, 203(sp)
                  lb           s10, 124(sp)
                  lbu          s4, 221(sp)
                  sub          s2, zero, tp
                  lbu          a3, 138(sp)
                  sb           s9, 135(sp)
                  sb           s10, 168(sp)
                  sb           tp, 145(sp)
                  srli         s10, s11, 21
                  lb           t6, -224(sp)
                  lui          s7, 669069
                  lbu          a5, -12(sp)
                  lbu          t3, 36(sp)
                  lb           ra, 2(sp)
                  and          t3, a2, s9
                  xori         s4, s9, 490
                  lb           gp, -242(sp)
                  and          s1, a1, zero
                  slti         ra, a3, 318
                  or           a5, a0, zero
                  srai         s5, s1, 22
                  sb           s11, 105(sp)
                  lh           a5, -145(sp) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_0+1583 #start riscv_load_store_rand_instr_stream_1
                  sb           s1, 38(sp)
                  sb           a6, -58(sp)
                  lhu          a3, -37(sp)
                  sh           sp, 59(sp)
                  slt          s7, a0, sp
                  slli         a3, t1, 11
                  sra          s11, s8, s2
                  lhu          t1, 63(sp)
                  lbu          a7, 24(sp)
                  auipc        a5, 9190
                  xor          a6, tp, s0
                  sb           a4, 38(sp)
                  addi         s1, a4, -514
                  lhu          a3, 59(sp)
                  lh           t6, -17(sp)
                  srli         s11, t4, 16
                  sw           s6, -15(sp)
                  slti         zero, a1, 1372
                  srli         a1, a1, 20
                  lh           tp, 29(sp)
                  sb           a2, 62(sp)
                  slt          t0, a4, t4
                  sb           s4, 30(sp)
                  srai         s5, sp, 21
                  sh           a6, -51(sp)
                  lb           s11, 20(sp)
                  sltiu        s5, t4, -980
                  sb           s6, -24(sp)
                  lbu          s5, -12(sp)
                  lh           a2, 51(sp)
                  sh           a2, -27(sp)
                  nop
                  lbu          gp, 32(sp)
                  lbu          a0, 38(sp)
                  lb           t1, -60(sp)
                  sb           a5, 46(sp)
                  nop
                  lhu          zero, 11(sp)
                  slli         gp, s2, 4
                  sb           zero, -38(sp)
                  and          a3, s8, s7
                  lh           s0, -19(sp)
                  andi         a3, sp, 919
                  sub          t4, t2, t2
                  sb           zero, 54(sp)
                  and          s11, s0, a6
                  sb           a3, -51(sp)
                  lw           s4, -15(sp) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+588 #start riscv_load_store_rand_instr_stream_13
                  or           s6, s7, zero
                  sh           s3, 46(sp)
                  srai         ra, s11, 28
                  sb           s10, -63(sp)
                  sub          a5, s10, tp
                  lb           s4, 50(sp)
                  lb           s2, 45(sp)
                  lb           s7, 7(sp)
                  addi         zero, t3, 1226
                  sh           t4, 46(sp)
                  sh           s0, 56(sp)
                  add          a6, t3, a1
                  sb           a0, -53(sp)
                  lb           s3, -44(sp)
                  srl          s0, s2, s3
                  lbu          s1, -35(sp)
                  sra          t0, a6, t5
                  sub          tp, ra, a1
                  andi         a0, a6, 1037
                  and          tp, a3, gp
                  lb           s6, 9(sp) #end riscv_load_store_rand_instr_stream_13
                  la           t5, region_1+1940 #start riscv_load_store_rand_instr_stream_2
                  or           a2, a2, t2
                  sub          a5, a3, a6
                  sh           t3, 2(t5)
                  lbu          s7, -13(t5)
                  lb           zero, 8(t5)
                  sub          s11, s4, t5
                  sltu         s10, s0, s0
                  xor          a2, t0, t3
                  lb           sp, -7(t5)
                  sb           sp, 3(t5)
                  lbu          s0, 7(t5)
                  sll          s5, t5, a3
                  lh           t2, -2(t5)
                  lb           tp, 13(t5)
                  lb           s4, 12(t5)
                  auipc        ra, 565273
                  lb           s5, -7(t5)
                  sb           a3, -4(t5)
                  sra          a7, s2, a1
                  sh           s10, 12(t5)
                  xori         s0, ra, 1217
                  lbu          t6, -13(t5)
                  sra          a0, a4, s2
                  xori         a7, s5, -1244
                  lbu          tp, -3(t5)
                  andi         t0, a0, 1957
                  lhu          s0, -6(t5)
                  lb           t4, 5(t5)
                  lb           a0, 5(t5)
                  xori         tp, t2, 200
                  sra          tp, s10, t6
                  sub          s5, t5, sp
                  lhu          s10, 6(t5)
                  ori          ra, a0, -310
                  sb           tp, -4(t5)
                  lbu          a0, 10(t5)
                  lbu          a2, 9(t5)
                  nop
                  lbu          t2, -5(t5)
                  lbu          s3, 3(t5)
                  lbu          a0, 10(t5)
                  add          sp, gp, s5
                  or           t0, s6, a5
                  lb           a7, -13(t5)
                  addi         t3, t5, 1466
                  xori         s4, s6, 1332
                  and          t6, a2, s2
                  ori          s10, s6, -636
                  lb           a7, 5(t5) #end riscv_load_store_rand_instr_stream_2
                  la           a6, region_1+1475 #start riscv_load_store_rand_instr_stream_18
                  lhu          s6, -7(a6)
                  sltu         a1, s3, t2
                  sltu         t2, a3, a0
                  lb           sp, -1(a6)
                  nop
                  srli         zero, t4, 0
                  lb           t6, -4(a6)
                  srai         a3, sp, 18
                  lhu          sp, -5(a6)
                  sb           a7, -2(a6)
                  sll          a7, t3, s10
                  auipc        zero, 205389
                  auipc        t4, 337191
                  lb           t0, 2(a6)
                  lbu          s0, -11(a6)
                  auipc        a2, 714880
                  nop
                  sub          t5, t1, t0
                  lb           a7, 10(a6)
                  srli         s2, a6, 28
                  sltiu        s2, tp, -178
                  lb           s10, 16(a6)
                  and          s3, t1, s8
                  sb           s11, 3(a6)
                  lb           t5, 0(a6)
                  sltu         a7, s8, s10
                  addi         s7, a4, -829
                  lw           t1, -7(a6)
                  slt          s4, s0, a5
                  sra          ra, s1, t3
                  sb           s10, 7(a6)
                  andi         s10, a4, 145
                  slti         t4, t6, 1874
                  lbu          s2, -3(a6)
                  lh           t5, -9(a6)
                  sh           gp, 7(a6)
                  sh           s3, -7(a6)
                  lb           zero, 8(a6)
                  add          tp, t4, gp
                  sb           t4, -14(a6)
                  lbu          t2, 6(a6)
                  lb           s4, -14(a6) #end riscv_load_store_rand_instr_stream_18
                  la           t3, region_1+1338 #start riscv_load_store_rand_instr_stream_0
                  and          a0, t2, a0
                  lb           t6, -43(t3)
                  xori         a6, t3, -971
                  sltu         ra, s11, s7
                  sb           a5, 32(t3)
                  slli         s6, a7, 13
                  lb           t5, 13(t3)
                  lbu          a3, -2(t3)
                  slt          gp, s11, s10
                  nop
                  add          t1, s8, a7
                  sb           s2, 23(t3)
                  sb           a6, 61(t3)
                  srai         s10, t3, 6
                  lh           a0, -50(t3)
                  sh           zero, 64(t3)
                  lb           s2, -9(t3)
                  addi         gp, zero, -1781
                  sra          gp, s4, t2
                  sub          t0, s11, s4
                  lbu          a5, -53(t3)
                  lhu          t0, 52(t3)
                  sh           s4, -4(t3)
                  lbu          gp, 35(t3) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+1180 #start riscv_load_store_rand_instr_stream_9
                  sub          s1, s6, t0
                  andi         t1, s7, 1392
                  sltu         t0, s2, ra
                  lbu          t0, -7(sp)
                  lbu          s4, -12(sp)
                  lb           s2, 15(sp)
                  lhu          ra, 8(sp)
                  srli         a1, s2, 26
                  sb           t3, -7(sp)
                  sra          a0, sp, t6
                  sb           gp, -11(sp)
                  lbu          s3, 10(sp)
                  lhu          a1, 8(sp)
                  ori          s11, t0, -160
                  slt          a5, s9, gp
                  lbu          ra, 13(sp)
                  lb           t5, 11(sp)
                  srli         a2, s10, 0
                  srli         s2, t5, 6
                  lh           t4, 0(sp)
                  sb           a5, -3(sp)
                  lb           tp, 15(sp)
                  lhu          t4, -14(sp)
                  sb           t5, 3(sp)
                  and          a2, tp, a2
                  lb           s5, -5(sp)
                  lb           a7, -3(sp)
                  sw           t6, 12(sp)
                  add          s11, s5, s10
                  lb           a7, 5(sp)
                  lw           s4, -12(sp) #end riscv_load_store_rand_instr_stream_9
                  la           s1, region_1+1751 #start riscv_load_store_rand_instr_stream_11
                  andi         t0, a2, -626
                  auipc        sp, 745958
                  slti         s6, a1, -1550
                  lh           s7, -465(s1)
                  lb           t4, -814(s1)
                  lb           s10, -467(s1)
                  lbu          s11, -856(s1)
                  or           zero, a7, a6
                  ori          a2, s8, -1782
                  lhu          t5, 89(s1)
                  auipc        t2, 314712
                  lbu          tp, -293(s1)
                  sb           s9, 180(s1)
                  sh           s5, -1219(s1)
                  sb           a1, -270(s1)
                  addi         ra, a5, 2035
                  lbu          a5, -1018(s1)
                  addi         a7, s6, -1325
                  sb           s6, -214(s1)
                  srli         t5, s10, 1
                  and          t4, tp, s6
                  sra          a0, tp, t1
                  lb           s2, -648(s1)
                  lb           sp, 201(s1)
                  sb           sp, -608(s1)
                  lb           tp, -823(s1)
                  lb           t3, -106(s1)
                  sh           s3, -1141(s1)
                  add          s3, t5, s2
                  sw           s2, -959(s1)
                  sb           t3, -341(s1)
                  slti         a0, sp, 76
                  lbu          a7, -494(s1)
                  sra          a7, s3, t6
                  ori          a1, a3, 239
                  lb           s0, 2(s1)
                  add          t6, s1, s5
                  lbu          ra, -776(s1) #end riscv_load_store_rand_instr_stream_11
                  la           t1, region_0+1914 #start riscv_load_store_rand_instr_stream_5
                  lhu          a0, 18(t1)
                  sll          a3, a7, t4
                  or           s3, ra, a3
                  lhu          s4, -52(t1)
                  add          a2, s1, s3
                  lb           a7, 8(t1)
                  sb           s10, -26(t1)
                  lbu          zero, -48(t1)
                  auipc        a5, 166441
                  sh           a3, 8(t1)
                  lh           gp, 46(t1)
                  lw           s0, 30(t1)
                  lbu          t4, -61(t1)
                  sb           s10, -60(t1)
                  sltu         s3, s1, s1
                  lbu          s10, 13(t1)
                  sb           s10, -34(t1)
                  lb           gp, 4(t1)
                  ori          t6, a1, -1497
                  xori         s10, s7, -1598
                  andi         a2, a3, 1680
                  sb           t2, -53(t1)
                  sb           s11, 18(t1)
                  slt          s3, a1, t0
                  sw           s3, 62(t1)
                  srl          s4, ra, a4
                  lh           t2, -64(t1)
                  slli         a1, t0, 15
                  sltiu        s6, t3, 632
                  lbu          s5, 16(t1)
                  lhu          t4, 2(t1)
                  slt          tp, ra, s0
                  slti         ra, s4, 1543
                  slt          tp, zero, s5
                  lw           a6, -22(t1) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_0+244 #start riscv_load_store_rand_instr_stream_12
                  add          a0, a3, t5
                  and          tp, a6, a3
                  slt          s7, t0, s8
                  sb           a0, -169(sp)
                  and          a2, s10, a4
                  sra          a0, s2, s2
                  sw           tp, -176(sp)
                  lb           a5, 198(sp)
                  srai         t3, s11, 19
                  add          a7, s11, t0
                  srli         zero, t5, 4
                  lbu          s2, 215(sp)
                  sub          zero, a4, t4
                  and          s1, tp, s2
                  auipc        zero, 940033
                  ori          s0, s9, -458
                  lb           s5, 143(sp)
                  sub          s6, s10, s8
                  lui          s7, 694358
                  lbu          s1, -16(sp)
                  lui          s2, 336896
                  sh           s5, 230(sp)
                  lbu          t3, -82(sp)
                  auipc        gp, 221630
                  lb           a7, 41(sp)
                  addi         s0, t6, 947
                  nop
                  lbu          s1, 211(sp)
                  add          s6, s7, s5
                  sb           ra, -232(sp)
                  sb           s1, -7(sp)
                  andi         a5, t4, -986
                  sb           t5, 219(sp) #end riscv_load_store_rand_instr_stream_12
                  la           a5, region_0+1583 #start riscv_load_store_rand_instr_stream_16
                  lhu          s5, 9(a5)
                  lbu          s10, -4(a5)
                  srai         sp, a0, 12
                  sb           s7, 16(a5)
                  or           t6, a6, s10
                  ori          t1, t1, -830
                  slli         s4, a6, 0
                  lw           a7, 5(a5)
                  sw           tp, 5(a5)
                  lbu          s6, 14(a5)
                  auipc        s5, 87349
                  lb           a2, -9(a5)
                  andi         tp, a4, -908
                  sb           a2, -10(a5)
                  auipc        t2, 209482
                  and          t2, zero, t6
                  sll          s6, t2, a2
                  lbu          t5, -2(a5)
                  lbu          zero, -2(a5)
                  add          t0, s9, s1
                  lb           s1, 6(a5)
                  lb           t4, -6(a5)
                  sh           s11, -9(a5)
                  ori          s2, s5, 437
                  and          s1, t0, a5
                  sw           sp, 1(a5)
                  add          s2, sp, sp
                  add          s4, t5, ra
                  sb           sp, -9(a5)
                  sb           s9, -1(a5)
                  addi         gp, s8, 1367
                  lh           t3, -13(a5)
                  addi         a0, sp, -216
                  sb           t1, -2(a5)
                  slt          s0, t0, t6
                  sb           a5, -16(a5)
                  sb           zero, -3(a5)
                  lb           t3, 15(a5)
                  lh           s4, -3(a5)
                  sub          s1, zero, a0
                  srl          s6, s1, s6
                  lbu          s1, -16(a5)
                  lbu          s2, -1(a5)
                  sb           s3, 3(a5)
                  xor          s1, sp, s2
                  srai         s4, a0, 1
                  or           zero, a2, tp
                  sll          t5, zero, t0
                  auipc        a6, 230160
                  lb           t0, 14(a5)
                  lhu          s6, -11(a5)
                  sll          s11, s1, t6
                  xori         s0, a3, -93
                  slti         s10, a1, -1277
                  lb           s1, -8(a5)
                  sh           sp, 11(a5) #end riscv_load_store_rand_instr_stream_16
                  la           a3, region_0+1122 #start riscv_load_store_rand_instr_stream_17
                  lh           s0, 10(a3)
                  xor          s2, ra, t5
                  and          a1, t1, t2
                  srli         t5, s3, 29
                  addi         zero, zero, -2017
                  sra          t4, a5, s2
                  lb           t0, -10(a3)
                  sb           s6, -14(a3)
                  srl          t5, s0, s3
                  lhu          a1, 4(a3)
                  sb           s9, -12(a3)
                  lb           a5, -3(a3)
                  sltiu        t5, tp, -1177
                  lw           a5, 6(a3)
                  ori          s4, a5, -1272
                  sb           a2, -7(a3)
                  lbu          s1, -4(a3)
                  lbu          t3, -11(a3)
                  sub          t6, s10, t1
                  sb           ra, 9(a3)
                  sb           s11, -13(a3)
                  lh           s3, 8(a3)
                  slt          s3, s11, s1
                  addi         s10, s10, 1082
                  lbu          t3, -7(a3)
                  lui          t3, 107295
                  sw           t4, -2(a3)
                  lb           t3, -3(a3)
                  lbu          ra, 10(a3)
                  sb           t5, 16(a3)
                  sw           s11, 10(a3)
                  lb           ra, -7(a3)
                  slt          s2, a5, a4
                  sub          t5, a1, ra
                  sll          a2, s2, t4
                  lbu          a5, 11(a3)
                  lw           s1, -2(a3)
                  lbu          s6, 12(a3) #end riscv_load_store_rand_instr_stream_17
                  and          a5, a7, s5
                  andi         t2, t0, -1643
                  bltu         t5, s3, 17f
                  bge          a6, t3, 6f
                  addi         t2, s11, -672
                  slt          a7, zero, s4
6:                add          gp, a7, gp
                  add          a1, s2, a5
                  and          t1, s2, t5
                  add          a6, ra, s4
                  or           zero, t5, s11
                  slt          s5, t6, tp
                  bltu         a0, t3, 24f
                  ori          s1, s1, 1064
                  sltiu        a7, tp, -456
                  bltu         a3, t0, 34f
                  lui          s5, 191091
17:               ori          s6, s7, 1469
                  sltu         sp, s3, s0
                  or           s7, gp, s6
                  bne          a1, s6, 31f
                  blt          t5, a6, 28f
                  nop
                  xor          zero, t4, zero
24:               nop
                  sltu         s1, s9, a6
                  beq          a7, s11, 37f
                  lui          a0, 37166
28:               xori         a0, s10, -1958
                  srli         a7, t5, 18
                  lui          s3, 983033
31:               beq          ra, a7, 33f
                  and          t5, ra, t2
33:               andi         t5, a5, -113
34:               sra          t2, zero, ra
                  sltu         sp, t5, a1
                  addi         t1, t0, 1024
37:               lui          s4, 751342
                  bne          s1, s9, 43f
                  bgeu         ra, t2, 45f
                  add          t2, s2, ra
                  auipc        s3, 970147
                  srli         a6, a3, 6
43:               xor          sp, a2, s0
                  sltu         a1, a4, a4
45:               add          s4, a0, gp
                  sub          t1, a2, t4
                  sltiu        t3, a3, 208
                  beq          a3, t3, 58f
                  auipc        s4, 819042
                  andi         t5, zero, 2024
                  add          a5, s9, a1
                  slt          s0, a5, s10
                  auipc        s0, 743569
                  auipc        t5, 820509
                  add          gp, s7, t5
                  slli         t3, a7, 8
                  slli         s6, s7, 14
58:               slt          s7, t6, gp
                  xori         t4, s3, -2011
                  sll          s3, a2, ra
                  add          sp, tp, s10
                  srl          s7, a0, ra
                  andi         a6, s8, -1480
                  sltu         ra, a1, t4
                  and          a6, ra, a7
                  or           t5, t3, tp
                  srli         s11, tp, 18
                  blt          a5, t2, 75f
                  slli         s6, s9, 15
                  bgeu         a1, a0, 80f
                  bltu         a6, a4, 88f
                  srl          s3, a6, a7
                  slli         t2, t3, 7
                  sra          t1, s0, a7
75:               and          a6, t2, t5
                  bge          a2, a1, 96f
                  sra          s1, a7, ra
                  and          s7, ra, a2
                  sltiu        s4, a0, -120
80:               and          t2, zero, t4
                  sltu         t4, t2, a7
                  bgeu         a6, a2, 101f
                  xori         t2, tp, 1594
                  add          tp, s8, a6
                  slt          s11, a6, a3
                  add          a2, t4, s2
                  blt          s6, a2, 101f
88:               srli         t6, s0, 8
                  nop
                  sra          gp, t2, zero
                  srli         a7, s1, 15
                  addi         s6, s9, 1334
                  ori          t3, s1, 632
                  srli         a2, gp, 8
                  slli         ra, s6, 25
96:               srli         t1, tp, 6
                  xor          s1, s11, s7
                  auipc        s2, 376870
                  add          s10, a0, t6
                  srl          s11, a2, s10
101:              bltu         t5, a4, 102f
102:              sltiu        t1, a1, -220
                  sub          s3, a2, a5
                  bge          t0, t6, 123f
                  srl          s2, a3, t0
                  nop
                  and          s4, t5, s10
                  sub          a7, a0, s11
                  slli         a5, gp, 29
                  bltu         a2, t1, 112f
                  bgeu         a2, s2, 119f
112:              add          a2, t1, s11
                  slt          t0, zero, a5
                  slli         s10, zero, 7
                  bne          s7, s7, 130f
                  xori         t3, t0, 1978
                  bne          s3, t0, 129f
                  xori         t3, a2, 1693
119:              sll          t2, zero, gp
                  srai         ra, s5, 0
                  srai         s7, s7, 22
                  lui          t0, 331060
123:              lui          s6, 693012
                  sll          a2, a3, t6
                  srai         a7, t4, 28
                  bne          a4, s0, 128f
                  slli         t1, tp, 10
128:              xori         t5, a1, 105
129:              xori         s4, s3, -823
130:              sll          a6, s5, a7
                  slti         t6, s5, -1999
                  andi         s7, s3, -406
                  addi         t5, a5, -1167
                  sltiu        s11, s1, 1117
                  slti         s0, tp, -1723
                  slti         zero, s11, 1171
                  bne          s0, gp, 154f
                  sltiu        t5, tp, -758
                  bge          a3, zero, 144f
                  beq          t3, s2, 159f
                  srli         t4, a3, 24
                  and          t1, s4, t1
                  sub          sp, t4, s0
144:              or           a1, s4, a2
                  and          s11, s6, a6
                  nop
                  srai         a6, s3, 28
                  slt          a3, a6, gp
                  slli         s10, gp, 9
                  and          s11, sp, sp
                  srli         s0, zero, 9
                  bgeu         s0, tp, 161f
                  or           s6, s6, a0
154:              slli         t0, s10, 29
                  srai         a0, sp, 30
                  sll          t3, s10, zero
                  sub          t1, t1, s6
                  addi         t2, a4, -898
159:              addi         sp, t3, -1323
                  srli         t2, a4, 23
161:              nop
                  ori          s2, t1, 1782
                  sll          s2, t5, s5
                  sra          t5, a6, a2
                  sub          t1, t6, sp
                  and          t2, a2, t3
                  slli         t1, a5, 17
                  sub          t4, t0, s8
                  xor          s4, t4, t4
                  sltiu        a3, s1, 1603
                  bgeu         s7, t4, 178f
                  andi         a3, s11, 1832
                  and          t0, t4, sp
                  sub          a5, s10, a5
                  sltu         a0, a4, s3
                  srai         a6, s10, 13
                  slli         a1, s4, 8
178:              slti         sp, a3, -491
                  bne          s4, s11, 192f
                  xor          s11, a0, a2
                  slt          s0, s10, a2
                  lui          tp, 344180
                  xori         s11, s5, -1794
                  slti         a1, s11, 181
                  add          sp, s1, s6
                  xori         t5, s2, 1787
                  and          t1, a6, t4
                  sltu         sp, t0, s1
                  and          a1, t3, a4
                  srai         t3, s1, 2
                  ori          a5, t6, -432
192:              sub          t2, a2, gp
                  sub          s11, s10, a6
                  sra          a6, s4, t1
                  or           t2, s1, a0
                  srai         t3, s11, 11
                  auipc        zero, 477082
                  beq          s9, t1, 212f
                  slti         a5, s3, 497
                  or           zero, s1, a5
                  slt          s6, s4, t2
                  andi         s3, t0, 1969
                  sra          a7, t5, s10
                  ori          gp, s7, -1765
                  bge          a2, s3, 212f
                  bgeu         a3, t0, 216f
                  bgeu         ra, a1, 227f
                  xor          ra, s3, a7
                  srai         t2, t3, 0
                  addi         s7, s5, -547
                  bgeu         a1, s8, 213f
212:              slt          s7, s7, a4
213:              or           s0, a0, tp
                  srai         a2, a2, 16
                  nop
216:              srl          s7, s1, s2
                  slli         s0, s7, 22
                  add          a6, s9, a5
                  srli         a0, tp, 11
                  sll          t4, t0, tp
                  lui          s5, 385367
                  blt          s1, s2, 237f
                  sltiu        a5, s8, -88
                  srai         t6, ra, 3
                  lui          t0, 911635
                  addi         t3, s0, 1143
227:              slt          gp, s4, s4
                  bne          t2, t0, 233f
                  auipc        t4, 81428
                  srli         t1, s8, 10
                  slt          s5, a0, t2
                  nop
233:              blt          a4, s8, 245f
                  srli         s6, a7, 3
                  bgeu         a1, gp, 240f
                  slt          s3, t5, s6
237:              srai         s6, zero, 9
                  xori         gp, s1, -1292
                  sra          s2, a5, a4
240:              xori         s11, s10, -1719
                  bge          s2, t5, 250f
                  beq          s11, s7, 243f
243:              and          zero, a6, ra
                  xori         zero, t3, -305
245:              addi         a5, t1, 871
                  add          a7, t3, t0
                  nop
                  andi         t3, t5, -535
                  bgeu         s5, sp, 251f
250:              slli         s5, a4, 18
251:              sltiu        tp, t0, 379
                  addi         t2, s9, 1679
                  sub          s0, gp, t5
                  blt          a6, s1, 256f
                  bge          s7, a5, 261f
256:              srli         t5, s7, 14
                  bne          t6, s9, 268f
                  sub          s2, t2, a2
                  add          a2, sp, a1
                  nop
261:              beq          t2, a6, 280f
                  slti         t1, t4, -1949
                  sltiu        s4, ra, 1200
                  slti         ra, t4, -495
                  slti         t2, s7, -343
                  xor          t3, tp, zero
                  sll          s2, t5, t1
268:              ori          zero, a7, -1959
                  sra          zero, s6, tp
                  andi         t4, s10, 83
                  bgeu         s9, t4, 278f
                  add          sp, gp, gp
                  srl          s5, s10, t2
                  bltu         a3, t5, 284f
                  xor          a0, t6, t4
                  or           s11, s4, t6
                  or           a2, t5, a3
278:              addi         a5, zero, 1943
                  sra          tp, t6, t4
280:              beq          a5, a6, 292f
                  and          t0, s5, t2
                  and          s2, s9, zero
                  or           zero, a4, zero
284:              srl          s2, s8, s5
                  blt          s0, s2, 300f
                  slli         t6, s11, 21
                  srai         a1, a4, 2
                  blt          a5, s6, 295f
                  blt          t6, zero, 297f
                  srli         s4, a7, 17
                  bgeu         t6, s3, 310f
292:              bge          s10, t2, 309f
                  and          s2, s3, s9
                  lui          t5, 813014
295:              bgeu         s1, t5, 306f
                  ori          a5, t0, 1789
297:              bge          t2, s3, 300f
                  auipc        t0, 636650
                  bge          a0, a2, 312f
300:              ori          t5, t1, -89
                  bne          s7, s11, 318f
                  sub          gp, s8, s6
                  add          a6, t4, a1
                  srli         s2, s11, 21
                  bne          s10, s2, 324f
306:              slti         ra, tp, 1935
                  nop
                  bge          t2, s0, 327f
309:              or           a6, a0, s10
310:              srai         t0, ra, 14
                  bgeu         s7, a7, 321f
312:              auipc        tp, 774495
                  or           a6, sp, a2
                  srli         s0, s11, 16
                  slt          s5, t2, zero
                  sra          s2, s11, s10
                  xori         tp, t6, 1879
318:              sll          sp, a5, t2
                  bgeu         a1, a1, 325f
                  sub          s11, a0, s0
321:              nop
                  bgeu         sp, s4, 342f
                  sltiu        s7, s8, 628
324:              bge          t4, t4, 343f
325:              xor          s3, a0, s2
                  auipc        t1, 956333
327:              nop
                  sltiu        s7, s3, 443
                  srli         s4, tp, 23
                  beq          s9, t5, 338f
                  xori         s3, a5, 1747
                  auipc        s0, 478285
                  srli         s0, s8, 0
                  add          tp, a0, t3
                  andi         sp, s7, -485
                  bltu         s7, t6, 347f
                  blt          t5, tp, 342f
338:              xori         ra, s3, 312
                  or           a2, t4, a4
                  bgeu         zero, s10, 353f
                  slli         zero, s0, 29
342:              srli         a6, a4, 31
343:              ori          t1, s4, -364
                  slli         s6, a5, 29
                  slli         s5, ra, 9
                  bltu         t5, s7, 360f
347:              andi         t0, a6, -1691
                  sltiu        t2, a4, -1355
                  bltu         zero, s0, 368f
                  and          a2, s5, t6
                  sub          s0, s2, s8
                  nop
                  la           sp, region_1+361 #start riscv_load_store_rand_instr_stream_6
                  addi         t1, ra, 77
                  slli         s10, s5, 18
                  sw           s3, 3(sp)
                  sltiu        s10, t4, 1636
                  lbu          s5, 6(sp)
                  sh           a5, -15(sp)
                  lb           a2, 0(sp)
                  sb           s7, -12(sp)
                  slt          t6, a0, t0
                  lhu          t5, -13(sp)
                  lbu          s7, -7(sp)
                  sb           a6, 14(sp)
                  lw           s10, 3(sp)
                  or           s3, t6, ra
                  sll          t1, s10, s0
                  sb           gp, -10(sp)
                  or           a2, a2, ra
                  slli         s1, a4, 19
                  lb           t5, -14(sp)
                  sb           s2, 12(sp)
                  lb           a3, 5(sp)
                  lbu          s1, -6(sp)
                  sb           s10, 16(sp)
                  lbu          t2, 2(sp)
                  and          a1, a7, tp
                  srai         s2, s10, 23
                  lb           s11, -2(sp)
                  lb           s5, 2(sp)
                  or           s10, t2, ra
                  slti         tp, sp, -800
                  addi         s3, gp, 224
                  sll          a5, a0, s4
                  sub          a1, a0, s8
                  lb           a0, -4(sp)
                  sh           s2, 5(sp)
                  sltu         t2, t3, gp
                  lhu          s10, 9(sp)
                  and          t1, t3, t4
                  sb           t6, 9(sp)
                  nop
                  lb           a7, -14(sp)
                  sb           s6, -1(sp)
                  addi         tp, t0, -1039
                  lb           s3, -4(sp)
                  sltu         a0, t3, a6
                  nop
                  slt          ra, s2, t1
                  lb           tp, 8(sp) #end riscv_load_store_rand_instr_stream_6
353:              ori          s2, a3, 694
                  auipc        zero, 195767
                  bgeu         s4, ra, 358f
                  sub          a1, s8, a5
                  andi         ra, a0, 237
358:              slli         s7, a5, 1
                  beq          s7, sp, 366f
360:              srli         gp, t5, 29
                  sltu         ra, t0, a2
                  slti         a0, s4, 1007
                  slt          t4, t0, s11
                  bne          sp, s2, 366f
                  lui          s10, 232406
366:              bltu         t6, s1, 383f
                  sra          a1, s3, a2
368:              slli         s4, t0, 18
                  bne          s10, s6, 376f
                  or           s2, s8, a5
                  slti         a5, t6, -1741
                  srai         s1, a1, 4
                  sra          t4, a6, t2
                  srl          zero, s10, t2
                  slti         s3, gp, -582
376:              bgeu         s6, s8, 388f
                  beq          s8, t0, 387f
                  auipc        s0, 920099
                  bltu         s8, s6, 398f
                  sltu         t4, a0, t6
                  sll          t1, t4, s7
                  auipc        a6, 51023
383:              slli         t5, s10, 11
                  or           a0, s6, a3
                  bge          a6, a4, 394f
                  addi         t1, a2, -1304
387:              lui          t0, 619119
388:              sub          s7, a3, t6
                  ori          a6, s0, 546
                  srai         a6, s2, 13
                  slt          s6, a2, s7
                  slt          ra, s3, a0
                  xor          s0, zero, t5
394:              srai         t5, zero, 16
                  sra          t4, s4, s11
                  and          tp, s5, s5
                  srl          t2, a6, a5
398:              srl          t4, t5, a4
                  srl          a3, t0, s1
                  sub          t0, a6, zero
                  or           t4, s5, tp
                  srl          s2, s4, ra
                  bgeu         a1, s3, 408f
                  srli         a0, a5, 7
                  sub          t5, t0, s0
                  beq          a3, s9, 425f
                  andi         s1, t0, -141
408:              slli         a1, a1, 25
                  srli         t3, t2, 6
                  add          t0, t6, sp
                  slti         gp, a7, 540
                  auipc        sp, 4347
                  xor          sp, a1, t4
                  beq          a0, ra, 429f
                  sub          t0, s5, s9
                  sltiu        s11, s1, -109
                  srai         s2, a4, 28
                  lui          t6, 43278
                  nop
                  bge          s11, t0, 421f
421:              and          s11, s5, s11
                  blt          t6, s1, 439f
                  slt          s3, s0, a4
                  slt          s0, a4, a6
425:              bge          s10, t6, 427f
                  ori          t2, s1, 1434
427:              slli         s6, s7, 1
                  sra          t2, t0, tp
429:              andi         s6, s1, -25
                  beq          t6, ra, 442f
                  xori         a2, s6, -916
                  sll          a0, a7, a3
                  slli         t6, s7, 27
                  srai         a2, s7, 11
                  bgeu         a4, s6, 442f
                  bgeu         s9, zero, 447f
                  beq          t6, zero, 439f
                  auipc        a2, 736893
439:              xori         s4, t0, 1852
                  slt          s2, a1, s8
                  xori         t0, t4, -1172
442:              andi         a7, a4, -395
                  srli         s7, t4, 28
                  auipc        gp, 848918
                  ori          a7, a2, 1660
                  sub          s4, t3, sp
447:              bltu         a0, sp, 462f
                  bgeu         s5, gp, 468f
                  bne          a5, a7, 457f
                  or           s1, t4, zero
                  or           a7, a2, a4
                  add          s7, s10, gp
                  slt          t1, zero, s3
                  xori         a5, zero, -1583
                  auipc        t2, 574887
                  xor          gp, t4, s4
457:              beq          gp, s7, 476f
                  blt          a5, t2, 467f
                  andi         sp, s9, 1162
                  sll          t0, a6, s11
                  beq          a1, s1, 468f
462:              beq          t4, sp, 474f
                  sub          a5, a6, a4
                  xor          s6, a5, t1
                  sltiu        a0, a7, 1864
                  bltu         a7, a6, 479f
467:              xor          zero, a2, s3
468:              sra          t5, s8, s5
                  sra          s6, s4, t0
                  blt          s5, gp, 482f
                  slti         a1, t3, -1289
                  ori          a2, a4, -1460
                  bne          s7, a1, 479f
474:              slli         a1, ra, 14
                  bge          s1, t2, 477f
476:              sra          s11, s9, tp
477:              bge          t1, a5, 496f
                  lui          s2, 767932
479:              bgeu         s5, t1, 496f
                  slt          t4, a0, zero
                  auipc        s11, 374519
482:              sub          s10, ra, sp
                  addi         tp, a7, -1958
                  bgeu         gp, t5, 486f
                  srl          ra, zero, sp
486:              srai         a2, s5, 19
                  slti         a3, a2, 1934
                  srli         tp, s9, 10
                  ori          sp, t3, 277
                  lui          s4, 596265
                  blt          a3, s4, 498f
                  slti         sp, t3, -223
                  add          s3, a7, a4
                  or           a7, sp, s10
                  ori          a0, a3, 1318
496:              ori          t0, a1, -1538
                  add          t6, t5, s1
498:              ori          s6, gp, -905
                  slti         gp, s1, -1362
                  slt          t5, s10, a2
                  slti         t3, s1, -16
                  lui          sp, 823071
                  or           sp, t2, t3
                  bne          a3, t3, 518f
                  xori         t2, s7, -1218
                  andi         s1, a7, -1006
                  xor          s6, sp, t2
                  srli         s2, s9, 24
                  bltu         s6, s9, 516f
                  bgeu         a7, a1, 529f
                  slti         a6, tp, -1069
                  slti         a7, t4, -16
                  auipc        a5, 632897
                  sll          zero, sp, s2
                  andi         gp, s6, 1239
516:              bgeu         t6, s0, 526f
                  slti         t4, t5, -1914
518:              sll          s7, a4, a6
                  slt          t0, t3, s1
                  bgeu         sp, a0, 522f
                  lui          s6, 340366
522:              sra          a1, s11, a6
                  sltu         t0, s4, t5
                  sltu         zero, a1, s6
                  sra          s4, s0, a6
526:              or           s11, ra, t3
                  slli         gp, a0, 10
                  lui          s5, 120074
529:              sub          s11, a0, a3
                  slli         s11, tp, 26
                  or           t0, s0, t1
                  slt          sp, s2, t4
                  xori         s4, t2, 1890
                  bgeu         t1, a4, 549f
                  slti         s6, s6, -949
                  sltu         s11, s10, s5
                  nop
                  sltiu        t6, t4, -449
                  srai         t4, a2, 3
                  slti         s10, s0, 1390
                  slli         s1, s11, 2
                  slti         a1, tp, -1514
                  srl          zero, t3, s10
                  blt          t0, a5, 554f
                  sltiu        sp, s3, -1453
                  bgeu         a4, s2, 563f
                  sra          s7, a7, a7
                  slti         t0, s2, 1523
549:              addi         ra, a2, -164
                  nop
                  sra          a0, t5, s7
                  xori         t0, a0, -1744
                  la           s2, region_1+466 #start riscv_load_store_rand_instr_stream_14
                  srli         a5, a4, 18
                  sltu         s1, s11, s3
                  and          a7, a5, gp
                  sb           s11, 179(s2)
                  sltiu        zero, s5, -1902
                  lhu          zero, -108(s2)
                  or           a6, ra, s1
                  and          a6, t4, s3
                  andi         s0, a7, -848
                  sb           zero, -127(s2)
                  lhu          zero, -230(s2)
                  lbu          t2, 47(s2)
                  slt          s11, t2, s10
                  xori         s4, a1, 369
                  lbu          a3, -63(s2)
                  lbu          s3, 240(s2)
                  lb           t6, -156(s2)
                  lb           s3, -32(s2)
                  sh           s11, -240(s2)
                  sb           s10, 229(s2)
                  sb           tp, -83(s2)
                  lhu          t4, 18(s2)
                  lb           s4, -203(s2)
                  sb           t5, -164(s2)
                  slti         t3, s11, 132
                  sw           zero, -70(s2)
                  addi         a1, s10, -695
                  sb           sp, 183(s2)
                  xori         s0, gp, -122
                  lbu          a1, 240(s2)
                  lb           t5, 16(s2)
                  lbu          t2, -207(s2)
                  lbu          s7, -107(s2)
                  lb           s4, 197(s2)
                  lbu          a7, -31(s2) #end riscv_load_store_rand_instr_stream_14
                  slti         a2, s1, -1349
554:              srli         s3, tp, 16
                  nop
                  srai         t6, t4, 19
                  srai         s3, a5, 25
                  srli         s1, gp, 19
                  sub          a3, tp, t3
                  beq          s1, sp, 565f
                  lui          t6, 30162
                  ori          s11, a2, -1128
563:              srai         s7, t5, 2
                  bge          t2, s8, 575f
565:              blt          s1, a1, 570f
                  sra          gp, s8, t0
                  lui          zero, 332513
                  or           t6, a0, t5
                  bgeu         t5, s10, 584f
570:              bne          s2, a6, 589f
                  bge          s11, a2, 574f
                  sll          a1, a1, s5
                  bltu         s2, t3, 584f
574:              lui          a1, 58313
575:              auipc        t1, 878661
                  and          s3, a2, t4
                  xor          t0, t4, s1
                  bge          t0, zero, 579f
579:              slli         t1, tp, 15
                  sltiu        a0, s5, 1189
                  sltiu        t3, zero, 428
                  add          a7, zero, a1
                  bltu         s11, s5, 602f
584:              ori          s4, s1, 1435
                  xori         t6, s5, -341
                  ori          s4, t5, -429
                  bne          s1, s3, 600f
                  sltiu        sp, t3, 1410
589:              or           zero, s11, s3
                  ori          t0, t0, -805
                  andi         s6, s8, 1392
                  addi         s7, s1, 1958
                  or           s2, t0, t5
                  slt          tp, s1, s10
                  or           s6, s11, s11
                  bne          tp, a0, 615f
                  srl          t6, t0, s1
                  sub          s11, s7, t5
                  srli         t3, a0, 0
600:              sltu         t3, s1, t6
                  and          a7, t5, s11
602:              srli         a7, s5, 0
                  sub          ra, t6, t1
                  bge          s5, s6, 609f
                  ori          sp, t1, -900
                  sltu         zero, s11, s9
                  nop
                  sra          s0, s8, s9
609:              xor          t5, a2, a4
                  blt          zero, t5, 620f
                  sra          ra, s9, s7
                  slt          s10, t3, s11
                  lui          ra, 447915
                  slt          t5, s10, s11
615:              sll          sp, s8, a6
                  sll          a0, t5, a2
                  lui          tp, 89488
                  sltu         sp, a3, s3
                  andi         gp, gp, 358
620:              srli         a6, s8, 21
                  sra          s6, a7, t6
                  bltu         a2, s9, 641f
                  slt          s6, s1, s10
                  bge          s4, a6, 627f
                  srl          t0, a2, ra
                  andi         t1, a6, 304
627:              slt          t0, t6, t1
                  xori         t2, a0, -1728
                  bne          t2, s3, 646f
                  sub          s1, t3, a5
                  ori          s1, a5, 987
                  bgeu         s1, s3, 640f
                  nop
                  beq          s9, t4, 641f
                  lui          ra, 389097
                  slli         s2, s2, 12
                  bge          a6, a3, 649f
                  andi         s2, t1, 92
                  bne          s3, a0, 659f
640:              srli         t6, a6, 31
641:              add          a2, a6, sp
                  slt          a3, t2, sp
                  slli         s3, a6, 13
                  ori          s1, zero, -1309
                  sll          t1, t4, s4
646:              beq          t3, t5, 655f
                  blt          t4, zero, 664f
                  sra          a1, s5, s4
649:              and          s6, a3, gp
                  nop
                  andi         s3, s2, -1276
                  bgeu         a0, s10, 654f
                  bge          s7, t0, 660f
654:              sub          s4, a7, t1
655:              beq          a5, t0, 667f
                  and          t0, s5, a0
                  slti         t6, sp, -1048
                  slli         a6, a2, 16
659:              sll          a5, s6, s9
660:              lui          a0, 713367
                  xori         a7, a3, 545
                  sll          s1, s3, a6
                  bgeu         s8, a2, 668f
664:              ori          s11, a6, -627
                  bltu         t6, t5, 680f
                  srai         gp, a1, 30
667:              and          a2, s3, a1
668:              srli         a5, tp, 6
                  and          t5, a6, s5
                  ori          s0, s7, 1396
                  sra          t6, t1, tp
                  andi         gp, a5, -593
                  bltu         t4, tp, 688f
                  xori         tp, gp, 1240
                  addi         s6, a1, -937
                  srl          ra, s9, a3
                  addi         t5, gp, -1944
                  addi         s7, t6, 1214
                  or           a1, gp, a5
680:              and          a6, a6, a4
                  blt          t5, a0, 687f
                  xor          t4, sp, a7
                  or           t1, s8, a0
                  slli         t6, s0, 5
                  bltu         t6, a0, 687f
                  slti         s1, s5, -1556
687:              xori         ra, s2, -260
688:              srl          a0, s11, s5
                  bne          ra, a3, 700f
                  lui          s0, 958673
                  srai         a2, tp, 13
                  nop
                  ori          s1, gp, 1853
                  slt          s3, sp, a2
                  srli         s7, s1, 8
                  bltu         t2, tp, 703f
                  sub          s2, s1, t2
                  bne          tp, t3, 708f
                  lui          s1, 973131
700:              sltu         t2, s3, s6
                  xori         a5, s5, -336
                  bge          t6, s6, 713f
703:              and          t6, s0, t6
                  bne          a0, s1, 723f
                  nop
                  blt          t4, a6, 720f
                  addi         a6, a7, -232
708:              srli         t1, t0, 10
                  ori          s10, t2, 40
                  andi         a0, a0, -975
                  sra          a6, a6, s2
                  nop
713:              lui          a5, 376699
                  bgeu         a7, sp, 715f
715:              xori         a0, s2, -1246
                  xor          zero, a3, t0
                  sra          s2, a4, gp
                  slti         a3, a6, -1763
                  and          t6, s2, s4
720:              sll          s7, t0, t5
                  and          s3, a5, s0
                  blt          s3, s3, 724f
723:              bge          tp, a0, 725f
724:              srl          t0, s1, a1
725:              bltu         t1, gp, 732f
                  xor          s6, t1, ra
                  lui          a1, 839497
                  beq          t1, tp, 733f
                  bge          a5, s3, 739f
                  add          t4, s4, sp
                  bltu         a7, gp, 751f
732:              auipc        gp, 570588
733:              ori          s0, a4, -1979
                  slti         t6, tp, 920
                  slli         t1, s2, 20
                  lui          zero, 842265
                  andi         gp, tp, 416
                  sltiu        gp, s4, -669
739:              ori          s0, a3, -1939
                  nop
                  sra          s10, a4, gp
                  bge          a3, t2, 756f
                  srl          s3, s10, a3
                  or           s1, a4, s5
                  slt          a7, t6, a5
                  blt          s3, ra, 756f
                  nop
                  bge          s1, s7, 750f
                  xori         zero, ra, -510
750:              srai         a5, a2, 7
751:              andi         t3, a2, 1498
                  add          gp, tp, t3
                  srl          s4, s5, s7
                  nop
                  blt          a0, a1, 763f
756:              auipc        t3, 693855
                  slt          sp, a2, s10
                  xor          s1, s7, t1
                  slt          a5, s10, s7
                  auipc        s11, 779022
                  add          a6, sp, s0
                  xor          a5, a2, tp
763:              xor          s4, zero, t6
                  sltu         s0, ra, a5
                  srli         s6, zero, 10
                  sub          t6, s0, a2
                  bltu         s7, s11, 778f
                  srai         s7, s1, 15
                  xor          zero, s4, t1
                  nop
                  ori          tp, a6, 66
                  ori          zero, gp, 1077
                  or           s11, s7, t1
                  bgeu         s11, t0, 793f
                  blt          a3, tp, 792f
                  sra          s2, s5, a3
                  blt          t6, s4, 784f
778:              bne          sp, sp, 779f
779:              beq          s7, s5, 786f
                  addi         s5, ra, 1442
                  sll          a5, t3, a0
                  beq          t2, a5, 801f
                  and          gp, s1, s9
784:              sub          s4, t4, zero
                  slli         s4, gp, 18
786:              sra          t2, s11, a5
                  sltiu        t5, a5, -1211
                  slli         s4, s0, 12
                  sll          s1, a2, a1
                  xori         s11, s0, 426
                  slt          zero, a6, a0
792:              slti         t0, s1, -1535
793:              sub          t0, s6, t0
                  slli         s6, tp, 28
                  addi         s10, gp, 1150
                  or           tp, a3, s7
                  bgeu         a2, t1, 802f
                  bltu         s3, zero, 801f
                  ori          tp, a2, -804
                  xor          s7, a7, t2
801:              beq          s7, s8, 803f
802:              bge          t5, a6, 817f
803:              xori         s4, s9, -423
                  addi         zero, t6, 1076
                  srli         s4, s10, 14
                  bgeu         a7, s4, 825f
                  beq          t2, s6, 820f
                  srl          s7, t3, a3
                  slti         s4, s3, -216
                  add          t1, t4, sp
                  slt          gp, t0, t5
                  xori         a3, t4, 1567
                  srli         a3, s3, 16
                  srl          s0, t4, ra
                  sll          s4, a5, a2
                  sltiu        a2, a4, -306
817:              bge          s0, s11, 832f
                  sra          s4, s2, t1
                  slli         tp, t0, 18
820:              nop
                  srli         a5, s8, 10
                  beq          s6, a3, 839f
                  lui          s5, 892966
                  bge          s2, t3, 843f
825:              ori          s3, a3, -1715
                  bgeu         a6, t3, 832f
                  andi         s6, a5, -383
                  bgeu         a3, a1, 840f
                  lui          a0, 818526
                  andi         t6, s1, -47
                  sll          a5, s9, t5
832:              sll          a2, sp, s0
                  nop
                  ori          t5, a2, -1599
                  sra          a5, s7, s4
                  slli         t6, gp, 26
                  andi         s6, a5, -605
                  andi         a3, s2, -6
839:              srai         s4, s1, 13
840:              andi         s1, a1, 1340
                  bgeu         t2, t2, 850f
                  slt          a6, s3, t5
843:              xor          t4, s4, t1
                  ori          t4, a7, -1805
                  lui          t0, 796960
                  bge          a1, s3, 858f
                  bltu         s5, s1, 858f
                  bgeu         gp, a1, 850f
                  xor          t0, a7, a7
850:              bltu         s11, s8, 869f
                  slt          s1, a1, t1
                  sltu         s1, a6, s4
                  sub          ra, tp, t5
                  or           s0, tp, s3
                  bltu         a1, t5, 874f
                  or           s10, t3, a4
                  lui          t1, 149728
858:              ori          s3, t1, -1184
                  srl          s1, s3, s5
                  sra          s3, t2, s9
                  ori          a2, a0, -31
                  sra          a7, a5, s0
                  srl          s10, gp, a4
                  add          t5, ra, s4
                  beq          t3, a7, 876f
                  srli         s5, s6, 13
                  bge          a5, s8, 875f
                  lui          a0, 30971
869:              slli         zero, t2, 13
                  xori         t6, a4, -1360
                  sll          t4, t0, s0
                  nop
                  xor          a5, a5, s7
874:              srli         t2, s0, 10
875:              bgeu         a7, t1, 882f
876:              or           a6, s5, sp
                  addi         a6, tp, -428
                  bne          t6, s3, 883f
                  bltu         s9, a2, 891f
                  ori          t3, a0, 759
                  ori          s1, s2, -1283
882:              beq          t2, a2, 889f
883:              slli         a2, zero, 6
                  add          t6, a7, a1
                  sub          s3, t6, a6
                  sltu         zero, s4, a1
                  add          s0, tp, s1
                  ori          a7, s0, 869
889:              blt          t3, t3, 906f
                  blt          a0, s1, 892f
891:              ori          t4, ra, -1322
892:              bgeu         t5, ra, 902f
                  bltu         t4, s8, 906f
                  nop
                  sltu         a3, s6, a6
                  auipc        s7, 3510
                  sll          s3, t4, t4
                  lui          a2, 118220
                  srli         a5, a1, 15
                  bge          t0, zero, 909f
                  bgeu         s9, s0, 920f
902:              sltu         gp, s4, s10
                  slli         s1, a2, 14
                  nop
                  sltiu        a1, s1, -4
906:              lui          gp, 654934
                  srai         t4, t6, 3
                  xori         s7, s7, 861
909:              xor          t4, a2, a2
                  andi         s4, tp, -84
                  sra          s11, s3, a3
                  bne          s5, a0, 923f
                  slt          t6, t3, s5
                  srai         a3, s11, 14
                  slli         a7, s1, 7
                  auipc        t5, 653488
                  blt          t6, a6, 927f
                  add          s4, a7, s9
                  sub          t5, zero, s9
920:              lui          s1, 811344
                  lui          t6, 874983
                  srl          tp, a7, s8
923:              bge          s6, t3, 938f
                  slli         s5, gp, 9
                  slt          t3, a7, gp
                  sub          s10, t1, s9
927:              ori          s2, s11, 378
                  slt          s4, a4, t3
                  nop
                  sll          s2, a0, t6
                  bgeu         s3, t2, 937f
                  srai         s5, ra, 4
                  sub          zero, s5, t0
                  slli         s4, t1, 27
                  slli         a7, s11, 5
                  srli         a3, t6, 4
937:              sll          a1, zero, s8
938:              sub          s6, s11, s1
                  bge          s9, t5, 941f
                  add          zero, a1, gp
941:              beq          s9, a3, 958f
                  sltu         t2, s10, tp
                  bne          s1, s7, 955f
                  andi         a6, ra, 21
                  lui          t2, 972336
                  bne          s10, zero, 960f
                  nop
                  bgeu         s11, s11, 967f
                  slli         a5, s1, 13
                  lui          t1, 119063
                  sll          t4, s6, s6
                  sltu         t2, s5, sp
                  slt          t1, gp, t4
                  beq          s9, t6, 969f
955:              xori         zero, s1, 441
                  sra          a5, a4, ra
                  sll          zero, a4, ra
958:              beq          s10, s1, 965f
                  bge          s1, s3, 979f
960:              ori          zero, a1, 184
                  sra          s10, s8, s4
                  srl          a1, s7, sp
                  bne          s1, a5, 968f
                  slti         a1, s10, 1745
965:              sltu         a0, a5, s0
                  lui          s4, 855247
967:              add          t1, s2, s1
968:              sltu         s7, ra, a3
969:              auipc        s7, 198807
                  xori         s1, t2, -1137
                  xor          a3, t6, a7
                  sra          s5, s11, s0
                  srl          tp, t1, s7
                  slti         s6, t6, -1055
                  nop
                  ori          zero, gp, -1015
                  sltiu        a2, a0, -1031
                  bgeu         s2, s6, 979f
979:              or           s4, a5, a7
                  xori         s5, t1, 190
                  srai         s10, a4, 3
                  srli         s5, s6, 26
                  addi         a7, s0, 1928
                  slli         a7, ra, 27
                  ori          s0, t5, -1224
                  srl          s3, s0, ra
                  add          t5, a0, a4
                  slti         t3, a2, 1132
                  sra          s1, s11, t5
                  bltu         s6, s8, 993f
                  bltu         s0, gp, 1011f
                  or           t6, s10, a6
993:              andi         zero, s1, 1391
                  blt          a0, ra, 1004f
                  sltiu        s2, a2, -1670
                  andi         s5, s8, -333
                  ori          zero, a4, 140
                  slli         t0, t0, 8
                  bge          s0, a3, 1018f
                  beq          s7, s1, 1005f
                  sra          tp, sp, s4
                  sll          t5, ra, s9
                  srl          s0, t0, s7
1004:             nop
1005:             addi         t0, s10, -1071
                  bne          zero, t6, 1015f
                  slt          s5, t0, s8
                  andi         s2, s11, 2015
                  xor          t0, a7, ra
                  sltu         a6, a4, t6
1011:             srai         a7, sp, 9
                  slt          a2, s8, s1
                  sra          a0, s0, gp
                  xori         s1, s4, 509
1015:             xori         sp, s10, -712
                  slli         s11, s8, 5
                  or           s6, s2, s2
1018:             slti         t3, s3, -99
                  sltu         zero, a4, tp
                  slt          a0, s3, t4
                  lui          s5, 807377
                  bge          a1, t6, 1025f
                  xor          ra, s10, gp
                  bge          s10, t0, 1043f
1025:             andi         s4, s11, 730
                  beq          s0, a5, 1041f
                  bltu         s11, a0, 1044f
                  auipc        a0, 93796
                  andi         t5, t4, 1200
                  lui          s4, 302133
                  blt          s5, s4, 1033f
                  bge          s1, a1, 1038f
1033:             add          sp, a5, s0
                  andi         t3, sp, 1905
                  andi         s10, a7, 1699
                  slti         s10, s9, 426
                  bltu         s6, ra, 1054f
1038:             slli         a6, t3, 5
                  srl          zero, s6, t0
                  add          s7, s5, s10
                  slti         a3, t5, 531
                  slti         t5, a5, -1347
                  addi         t3, s9, 336
                  or           t4, s9, a0
                  srl          s0, ra, ra
                  add          s6, s11, s11
                  add          ra, sp, s8
sub_1_j5:         jal          s2, sub_5 #jump sub_1 -> sub_5
                  add          t2, s6, s11
1041:             nop
                  sll          tp, a1, s7
1043:             sltiu        a5, ra, -47
1044:             ori          s10, zero, 755
                  add          a3, tp, t4
                  sub          tp, a5, s10
                  blt          a4, s2, 1066f
                  sltu         ra, a5, s1
                  sltiu        a6, a5, 1222
                  bne          a4, a5, 1063f
                  andi         a5, t6, 1423
                  bgeu         s9, t0, 1053f
1053:             slli         gp, s1, 13
1054:             add          s7, s11, s9
                  bltu         sp, t2, 1057f
                  auipc        a2, 10607
1057:             bltu         t0, s11, 1071f
                  ori          tp, s7, -50
                  sra          a7, t2, gp
                  bltu         s6, t4, 1072f
                  xor          a2, zero, t4
                  sltiu        t5, ra, 499
1063:             slti         ra, t2, 184
                  addi         s1, a2, 947
                  auipc        sp, 829779
1066:             addi         s1, s6, -1526
                  srl          a7, s8, a6
                  sra          t6, a5, tp
                  slt          a1, s1, zero
                  sltiu        zero, a5, 1939
1071:             sltiu        t6, s2, -697
1072:             srai         a6, s0, 8
                  or           zero, a7, s8
                  addi         s11, t0, -1599
                  xor          s0, t3, s7
                  lui          s11, 911764
                  sltiu        s5, t3, 793
                  srli         sp, s10, 10
                  sra          gp, s0, t5
                  xor          gp, a1, s11
                  blt          s11, s0, 1092f
                  srli         s11, a4, 11
                  slti         a5, sp, 2001
                  or           s4, t3, s10
                  and          s11, s10, s3
                  andi         tp, a1, -413
                  addi         a0, t4, -913
                  ori          a2, t0, -1770
                  lui          t4, 10118
                  xori         ra, a7, 14
                  beq          a3, t5, 1103f
1092:             and          s3, a0, s0
                  bge          s6, a4, 1095f
                  or           t6, a4, a4
1095:             blt          a6, a7, 1102f
                  xori         a0, s0, -1206
                  or           a2, t2, a7
                  sub          a2, a4, s11
                  bltu         ra, s4, 1114f
                  nop
                  sltu         t3, a0, a2
1102:             or           a5, s5, gp
1103:             slt          t0, s5, a7
                  slt          s0, s8, s1
                  xori         zero, s2, 318
                  ori          t3, s4, -59
                  ori          t4, s0, -296
                  or           s6, t3, zero
                  bne          a0, a4, 1128f
                  sra          s4, a7, a2
                  ori          t1, s0, 502
                  beq          s9, ra, 1119f
                  sltu         s6, s0, a5
1114:             slli         s0, s9, 0
                  bge          t4, s11, 1126f
                  slli         t5, s7, 16
                  andi         s1, s11, 2024
                  sub          t5, t5, s0
1119:             bge          t6, s6, 1129f
                  sra          zero, s4, s4
                  sltiu        gp, s4, -594
                  sltu         s3, s3, a1
                  bltu         a5, s3, 1131f
                  sub          s0, a1, tp
                  xori         t5, a6, 1475
1126:             nop
                  srl          a7, a7, a4
1128:             bge          s5, t1, 1133f
1129:             ori          tp, a0, 723
                  sltu         a0, ra, s2
1131:             sltiu        a7, a2, 78
                  beq          a4, a4, 1139f
1133:             sltiu        a1, s7, -1313
                  xor          gp, t4, t1
                  xori         sp, a2, -118
                  sltiu        s3, s7, -1423
                  nop
                  bgeu         gp, s1, 1152f
1139:             slt          sp, a5, gp
                  sra          t0, a3, sp
                  bgeu         a3, a5, 1147f
                  or           t1, s11, t2
                  andi         s7, s2, -309
                  or           s5, t4, s3
                  slli         a5, s3, 17
                  sll          a0, ra, a3
1147:             sll          s10, tp, s4
                  bge          s8, gp, 1155f
                  srli         a5, s6, 24
                  sltu         ra, s10, s6
                  bge          s4, a4, 1163f
1152:             slt          tp, s2, a6
                  addi         a1, t4, -1075
                  srl          s10, s4, s7
1155:             bne          sp, a6, 1166f
                  srl          t0, a2, a4
                  xori         ra, t0, 889
                  xori         t2, ra, 2021
                  slti         tp, s2, -1591
                  sll          tp, s0, s6
                  srai         s7, t6, 27
                  blt          a2, s6, 1163f
1163:             srl          a5, s6, s4
                  sltiu        t3, s6, 135
                  bne          s9, t0, 1170f
1166:             blt          s3, a4, 1186f
                  and          sp, ra, s6
                  or           a0, a0, a5
                  bgeu         s6, t4, 1179f
1170:             slti         tp, t6, 247
                  auipc        a6, 39764
                  slti         sp, a2, 737
                  nop
                  slti         zero, s4, 653
                  slti         a0, t5, -592
                  bge          s8, a1, 1181f
                  sltiu        s1, t2, -401
                  srl          t4, gp, tp
1179:             slti         t6, s8, -631
                  sltiu        tp, a4, -1635
1181:             xor          s3, a2, gp
                  auipc        t3, 724990
                  bltu         s8, ra, 1190f
                  slti         sp, zero, -291
                  xor          zero, s0, t6
1186:             auipc        t4, 684585
                  ori          t1, s3, 1892
                  nop
                  slt          t2, a2, sp
1190:             sub          t6, s2, t5
                  sra          tp, a0, t6
                  nop
                  sltu         t2, a5, t5
                  srai         s2, s10, 5
                  or           sp, s4, t1
                  bltu         a7, t5, 1198f
                  bgeu         ra, ra, 1216f
1198:             slli         s7, t0, 27
                  bltu         s3, gp, 1209f
                  and          ra, a7, ra
                  bne          s1, a4, 1203f
                  addi         a3, s0, -40
1203:             nop
                  srli         a1, a0, 22
                  xori         a2, t0, 724
                  lui          s4, 984881
                  ori          a7, s4, 1291
                  addi         tp, a6, 1799
1209:             xor          t1, gp, t1
                  ori          t2, s7, -174
                  lui          a6, 715927
                  andi         t5, s4, 1832
                  sll          a7, s1, t2
                  slt          a2, sp, a3
                  ori          t1, t6, 681
1216:             nop
                  slli         t5, sp, 3
                  lui          t3, 436660
                  slt          a5, ra, a3
                  slli         gp, s5, 24
                  sll          tp, s7, s3
                  bge          s10, gp, 1233f
                  nop
                  and          a7, t6, s4
                  xor          a0, tp, s0
                  xori         a2, t6, 1125
                  srai         zero, t2, 1
                  xori         t3, tp, 965
                  bge          s8, a1, 1236f
                  slli         t5, a4, 1
                  bne          a2, a2, 1240f
                  slli         s3, a3, 2
1233:             bltu         t5, sp, 1241f
                  sll          s4, t4, sp
                  slt          ra, s7, s2
1236:             sra          a0, t6, t4
                  lui          s5, 74656
                  add          t5, s10, s0
                  sra          gp, tp, a1
1240:             lui          s0, 925794
1241:             nop
                  auipc        s4, 461622
                  slt          tp, s7, s11
                  beq          ra, gp, 1263f
                  srli         a1, t2, 29
                  auipc        a2, 36177
                  and          a7, t2, s9
                  beq          s7, t5, 1263f
                  ori          t0, a2, 378
                  beq          s7, a6, 1252f
                  srl          a0, tp, t4
1252:             slli         sp, s7, 18
                  andi         t2, a3, 1324
                  andi         s0, zero, -1367
                  blt          ra, sp, 1270f
                  sltu         t0, a7, s7
                  or           s5, ra, s3
                  bgeu         s5, s9, 1275f
                  ori          s11, s6, 1679
                  xor          s11, zero, a7
                  ori          s1, a6, -593
                  lui          t0, 446131
1263:             ori          gp, s8, 1323
                  beq          zero, t5, 1281f
                  beq          zero, t6, 1284f
                  sra          t5, s2, s2
                  sub          a5, zero, a5
                  xori         s2, gp, -1853
                  ori          s11, s4, -134
1270:             xor          s2, t0, s1
                  lui          a1, 300460
                  xori         t4, zero, -1937
                  sll          ra, t2, a6
                  slt          gp, t5, s11
1275:             nop
                  sll          s10, s0, s1
                  addi         s4, gp, -1205
                  beq          a5, s11, 1290f
                  and          t2, tp, s6
                  sra          a2, t0, zero
1281:             lui          s3, 606311
                  slti         s1, s9, -1130
                  sub          ra, t3, a6
1284:             sra          t4, s8, a1
                  or           a1, t0, a1
                  sltu         s5, s4, a1
                  sll          t6, a1, s10
                  slti         a2, a5, -1293
                  beq          zero, sp, 1292f
1290:             srl          s5, a1, sp
                  addi         a5, t1, -406
1292:             and          s6, t4, a3
                  slli         ra, t3, 28
                  bgeu         s6, a3, 1313f
                  blt          s2, s1, 1308f
                  bge          s9, t3, 1298f
                  bgeu         zero, a7, 1304f
1298:             bltu         s8, t6, 1315f
                  addi         t3, a1, 1509
                  lui          s5, 333401
                  slli         zero, s3, 26
                  lui          t1, 35649
                  lui          t1, 276065
1304:             srl          s10, s6, tp
                  slli         s7, a0, 11
                  bgeu         a1, a6, 1325f
                  beq          a5, s7, 1314f
1308:             auipc        t3, 157346
                  bne          zero, t6, 1328f
                  slt          s5, s6, gp
                  lui          zero, 124312
                  sltiu        s10, t6, 1432
1313:             nop
1314:             xori         s2, a2, 1752
1315:             sltu         s1, a0, s0
                  xor          gp, s10, t0
                  bge          a0, a7, 1324f
                  lui          tp, 341400
                  sub          s4, s6, t3
                  add          s1, s6, t2
                  add          a7, t1, s9
                  sltiu        a6, a0, -1073
                  sra          a1, gp, s8
1324:             bne          ra, tp, 1344f
1325:             slli         s1, s6, 2
                  bne          a5, a7, 1335f
                  addi         s11, s11, 1562
1328:             xor          a2, zero, tp
                  sub          s7, s0, a3
                  andi         s10, a0, -1499
                  bne          a7, s2, 1346f
                  or           tp, a5, s7
                  sub          gp, s3, t5
                  auipc        s4, 992078
1335:             beq          a2, a3, 1337f
                  and          t2, a3, t1
1337:             sub          a3, sp, a4
                  bge          s3, t2, 1351f
                  blt          s5, s4, 1344f
                  beq          a1, a4, 1352f
                  bltu         t5, a2, 1351f
                  add          s11, s1, s8
                  srli         s3, s5, 30
1344:             andi         s7, a7, 974
                  bltu         s6, t0, 1347f
1346:             ori          s5, s10, -735
1347:             xor          a3, a2, t3
                  add          t2, s7, s2
                  sltu         s6, t3, s10
                  bne          a1, t0, 1367f
1351:             lui          t2, 582793
1352:             and          a1, s3, tp
                  sltu         ra, t6, t1
                  xori         t6, a1, 1055
                  bne          a5, s10, 1374f
                  or           t1, t0, t6
                  andi         a3, gp, 1257
                  bgeu         s6, t0, 1377f
                  auipc        s4, 1021883
                  bgeu         a2, s6, 1374f
                  bge          t6, a6, 1376f
                  xori         a5, s0, 1291
                  slli         t6, t0, 26
                  addi         t4, ra, 1244
                  sub          s3, s6, ra
                  xori         sp, t5, 1175
1367:             lui          a3, 318900
                  xor          s3, s1, s11
                  sub          s4, ra, s9
                  auipc        t6, 885119
                  add          tp, s1, s4
                  sltu         s10, t4, s9
                  srl          sp, t3, zero
1374:             blt          t6, s4, 1377f
                  sll          s4, a6, a7
1376:             addi         zero, gp, -698
1377:             slt          s2, tp, s7
                  or           a6, a7, a2
                  or           a7, s9, t6
                  sra          s0, s7, t2
                  sll          t3, a6, tp
                  slt          ra, s4, a1
                  slti         zero, s9, 1858
                  la           sp, region_0+599 #start riscv_load_store_rand_instr_stream_8
                  lb           a2, -172(sp)
                  sh           t4, 189(sp)
                  lh           s2, 985(sp)
                  slti         t3, s7, 763
                  lbu          t2, 642(sp)
                  and          t4, t5, s10
                  sltiu        a2, a3, -1098
                  sh           t2, 625(sp)
                  nop
                  lb           t0, -50(sp)
                  lhu          s2, 509(sp)
                  sltu         s0, zero, s3
                  sltu         t1, a5, s2
                  sb           gp, 766(sp)
                  sra          a1, t1, tp
                  sw           t1, -311(sp)
                  sll          a2, s6, a0
                  slli         zero, t5, 16
                  lbu          t4, -143(sp)
                  lb           s10, 596(sp)
                  and          a5, s8, gp
                  lb           s3, 266(sp)
                  lb           s6, 919(sp)
                  lui          s0, 977264
                  sw           s8, 201(sp) #end riscv_load_store_rand_instr_stream_8
                  andi         t5, s8, -1646
                  addi         s7, a4, 73
                  lui          zero, 273364
                  add          t5, s10, gp
                  ori          t2, s4, 600
                  auipc        t3, 968444
                  xori         ra, t6, -1663
                  ori          ra, s8, 739
                  srai         s11, a3, 17
                  sltu         s3, tp, t5
                  slli         zero, a0, 7
                  nop
                  sltu         s10, t5, a0
                  bltu         sp, s4, 1398f
1398:             xor          t5, s1, s5
                  sub          s11, a5, t4
                  andi         s5, zero, -566
                  add          t1, s7, sp
                  addi         tp, a2, -1958
                  slt          s1, s1, zero
                  and          t6, t2, a0
                  auipc        gp, 690958
                  lui          t5, 391448
                  slli         s0, tp, 20
                  bltu         s7, t5, 1418f
                  slti         zero, s6, -971
                  beq          s4, t3, 1416f
                  bne          a6, s10, 1422f
                  sltu         s2, s3, s1
                  add          t5, s10, zero
                  blt          s7, ra, 1419f
                  slli         s5, s3, 12
1416:             srli         tp, s5, 27
                  auipc        a6, 136203
1418:             bne          a5, t3, 1426f
1419:             slt          zero, s2, s3
                  sltiu        s3, a0, 1946
                  srai         a6, s11, 10
1422:             sltiu        t5, zero, -1058
                  beq          a3, zero, 1434f
                  xori         s5, a5, 1380
                  srl          t0, s0, t3
1426:             srl          a2, a5, ra
                  add          t0, t5, a0
                  sub          s11, s9, t3
                  and          t6, s11, s1
                  bgeu         zero, s11, 1442f
                  xor          t1, a5, a2
                  sra          tp, t2, a1
                  addi         a5, a3, -1263
1434:             add          t1, t1, a6
                  nop
                  and          s10, t1, gp
                  sltiu        gp, s5, -1689
                  bne          s2, s2, 1457f
                  slt          s1, s9, t5
                  or           s1, t2, sp
                  bltu         a2, s0, 1452f
1442:             lui          a6, 233047
                  or           t2, ra, s0
                  add          t0, t1, t4
                  slt          a2, a3, s10
                  bne          a7, s5, 1460f
                  slli         s3, a4, 30
                  slt          t5, zero, t6
                  sltu         s6, s1, s1
                  and          s11, a5, s0
                  srli         s7, a6, 18
1452:             sll          t4, s10, s6
                  sltiu        gp, t1, 1749
                  ori          s10, a3, -467
                  xori         t0, t5, -1636
                  srli         a1, a2, 18
1457:             slt          t5, s8, gp
                  ori          t5, s5, 1160
                  addi         t5, t0, -1882
1460:             addi         s5, a4, 270
                  srl          t2, gp, a6
                  srai         t6, a4, 12
                  slli         s4, s11, 18
                  ori          zero, s3, 915
                  bgeu         s7, t1, 1473f
                  bltu         gp, t1, 1486f
                  bgeu         a7, a5, 1474f
                  srai         s3, t3, 16
                  srai         s6, s0, 19
                  bltu         s8, a6, 1479f
                  sltiu        t4, a5, -1877
                  blt          s8, s7, 1491f
1473:             and          gp, tp, a7
1474:             bgeu         s11, a2, 1485f
                  bgeu         a3, s4, 1482f
                  add          s6, s2, s0
                  slti         s1, t4, 790
                  xori         s2, t4, 545
1479:             addi         sp, t1, -799
                  bne          zero, t1, 1485f
                  slt          t6, s1, ra
1482:             ori          tp, t4, -995
                  slt          a0, s4, t1
                  lui          s11, 414835
1485:             srli         s1, sp, 10
1486:             srai         a3, a2, 3
                  sll          a2, s1, a5
                  nop
                  bgeu         s10, a1, 1499f
                  addi         t1, zero, -1539
1491:             or           a2, a6, s8
                  and          t6, t4, t1
                  slli         s4, t3, 23
                  blt          zero, s11, 1504f
                  sll          zero, a2, a2
                  srl          t2, s2, t4
                  bge          gp, t1, 1509f
                  srli         a2, t0, 30
1499:             srai         s11, s5, 1
                  xori         t3, zero, 817
                  lui          t6, 533104
                  lui          t6, 146039
                  addi         s7, s5, -1807
1504:             bltu         a0, s8, 1519f
                  sra          s5, a3, s10
                  andi         a7, gp, -1490
                  srai         t6, t2, 16
                  bne          t3, t4, 1511f
1509:             sltiu        t6, tp, -1488
                  srl          ra, a3, s11
1511:             bltu         s5, a2, 1523f
                  bltu         s11, t2, 1514f
                  blt          a2, a2, 1532f
1514:             bgeu         s11, s5, 1516f
                  sltu         a1, a6, s9
1516:             auipc        sp, 919723
                  srl          s1, s10, s7
                  addi         s11, s9, -1578
1519:             srli         s4, s5, 8
                  slti         gp, a6, -1450
                  ori          t4, t2, -804
                  sltiu        s7, s11, 2002
1523:             bne          a1, t0, 1530f
                  add          s4, s0, gp
                  slti         tp, a5, -1779
                  add          a3, a7, a6
                  sltiu        s4, s10, 774
                  beq          ra, t3, 1530f
                  slt          sp, s6, s10
1530:             beq          gp, t5, 1535f
                  and          t3, a2, a1
1532:             add          s4, t3, s4
                  srai         s4, gp, 14
                  ori          s4, t2, 41
1535:             nop
                  xori         zero, s0, -1423
                  bltu         s6, s10, 1543f
                  sub          s11, s8, s5
                  ori          sp, t4, 1077
                  ori          a2, a2, -1871
                  and          zero, s0, t0
                  lui          t3, 1035351
1543:             bne          zero, a6, 1558f
                  auipc        a7, 435208
                  slti         t4, a5, 1070
                  xori         t5, t1, 481
                  sra          t6, t3, gp
                  lui          s5, 84447
                  srai         zero, a0, 20
                  srai         s11, s10, 31
                  sll          s7, a6, a1
                  srl          sp, gp, s1
                  xor          t3, s10, a1
                  andi         a6, s5, 1243
                  bge          t3, a2, 1572f
                  sra          s1, s7, a3
                  sltiu        sp, t1, 726
1558:             srl          t2, a5, t3
                  slli         sp, t1, 15
                  bne          t1, a5, 1577f
                  slt          a7, a1, a1
                  slt          t5, s4, s1
                  slli         s11, s3, 3
                  sub          a5, t6, s7
                  slt          ra, t0, a6
                  sltiu        t6, ra, -1658
                  blt          t4, s4, 1568f
1568:             bne          s3, a4, 1587f
                  sltiu        a3, t2, 950
                  ori          a3, s1, -307
                  bne          a0, s4, 1584f
1572:             sltiu        t5, t1, 1195
                  bltu         a2, s10, 1593f
                  slt          ra, gp, s3
                  sll          s0, s10, a5
                  slt          s1, a5, a5
1577:             blt          s8, a3, 1578f
1578:             andi         a6, a5, -1511
                  lui          s1, 643084
                  bne          s8, s11, 1597f
                  xori         gp, a7, 1800
                  andi         t1, t5, 1399
                  xor          t2, s5, t1
1584:             bne          s1, s7, 1591f
                  xori         tp, s0, -914
                  ori          s5, s1, -2026
1587:             xor          a0, s4, s9
                  sub          s7, a0, s5
                  srl          a1, t0, t0
                  slt          t3, t0, s0
1591:             andi         t2, a3, -2007
                  srai         s6, s2, 31
1593:             srl          s11, s0, a1
                  auipc        ra, 72786
                  sll          a5, a2, a6
                  srl          s2, s0, zero
1597:             sltu         s3, t1, zero
                  andi         tp, t1, -1019
                  sltiu        s10, t3, -1781
                  sra          sp, a4, sp
                  lui          s6, 375186
                  ori          s4, t0, -947
                  xor          t0, tp, s9
                  or           t1, a6, t3
                  bltu         a3, s2, 1617f
                  sltiu        t4, a6, 217
                  add          gp, t6, s10
                  xor          t3, zero, s6
                  xor          sp, t0, zero
                  and          t4, s0, s7
                  or           a1, s5, s6
                  andi         a7, a6, 958
                  beq          t4, s6, 1632f
                  beq          s10, s1, 1620f
                  srai         t1, ra, 1
                  srl          t1, ra, s6
1617:             sra          t6, a5, t1
                  or           s0, a1, s5
                  sltiu        s3, t5, -1096
1620:             lui          a0, 422859
                  beq          a5, t0, 1632f
                  sltiu        gp, s6, -1552
                  srai         a3, a0, 17
                  slti         t4, t4, 1689
                  or           a6, s8, s3
                  xor          a6, s5, gp
                  bge          t0, a5, 1635f
                  blt          a0, t4, 1641f
                  blt          a5, a2, 1648f
                  sltiu        a7, s4, 1322
                  bne          t3, s2, 1650f
1632:             and          s2, t0, s11
                  srai         s3, t2, 3
                  lui          a7, 363703
1635:             sll          s7, a7, s9
                  lui          a2, 308400
                  srai         ra, a6, 23
                  beq          s1, t6, 1640f
                  lui          s11, 295121
1640:             add          a6, s6, s6
1641:             or           a1, a1, a7
                  ori          a6, a6, -442
                  xori         sp, s11, -1779
                  addi         sp, a1, 114
                  beq          s11, t4, 1656f
                  bge          s0, s6, 1648f
                  slli         t1, a6, 26
1648:             bge          sp, t4, 1653f
                  bgeu         a5, s1, 1664f
1650:             addi         t0, a2, 1969
                  xor          s11, t5, t0
                  nop
1653:             sltu         ra, a7, a0
                  lui          a2, 449962
                  slti         s7, sp, -1271
1656:             bgeu         a7, t3, 1666f
                  andi         s4, a4, -676
                  beq          t6, s4, 1672f
                  sll          s4, a5, s0
                  blt          tp, sp, 1677f
                  or           a6, sp, a2
                  srli         a2, t4, 2
                  bge          zero, t1, 1673f
1664:             xori         zero, s9, -1682
                  slli         gp, s7, 16
1666:             srai         gp, s10, 11
                  sll          a0, t1, t3
                  xori         a5, tp, 2006
                  beq          s3, s5, 1676f
                  blt          ra, gp, 1685f
                  auipc        s5, 786675
1672:             blt          sp, s7, 1691f
1673:             sll          t0, ra, s9
                  andi         a3, a2, -1244
                  bgeu         a7, gp, 1678f
1676:             and          sp, t1, s10
1677:             ori          s6, t6, 1658
1678:             or           s5, a4, s10
                  slti         s1, t0, 1045
                  bgeu         s11, t1, 1692f
                  bgeu         t1, gp, 1686f
                  lui          s3, 7106
                  lui          t3, 650529
                  ori          s11, t6, 171
1685:             bge          s1, gp, 1687f
1686:             andi         t3, s7, 344
1687:             or           s10, a2, s0
                  addi         s10, s5, 927
                  or           a3, a3, sp
                  and          s0, t5, s8
1691:             addi         s4, a0, 1821
1692:             or           s10, s0, s7
                  srli         t5, t5, 12
                  srl          sp, s4, s10
                  bge          a7, t4, 1704f
                  srai         s10, t1, 25
                  srai         zero, t6, 2
                  beq          a6, tp, 1705f
                  sub          a1, a7, t0
                  auipc        t1, 172076
                  bgeu         tp, a5, 1721f
                  addi         s1, s2, 1948
                  srli         s3, s4, 15
1704:             slli         t0, a3, 13
1705:             or           a7, t0, a5
                  auipc        s2, 794836
                  sltu         s11, s5, s3
                  xor          s1, sp, t5
                  add          t4, a6, a5
                  nop
                  bltu         a7, t0, 1726f
                  andi         sp, s8, -234
                  la           s0, region_0+910 #start riscv_load_store_rand_instr_stream_4
                  nop
                  lb           t6, 171(s0)
                  andi         s4, a6, 729
                  srli         t1, s3, 10
                  slt          t5, s9, ra
                  and          s6, t6, s11
                  sb           t4, 123(s0)
                  slt          s11, tp, s8
                  lui          a6, 555322
                  lui          sp, 868201
                  lbu          s2, 62(s0)
                  sb           s10, -218(s0)
                  nop
                  lhu          ra, -200(s0)
                  lbu          a1, 185(s0)
                  lh           t0, -30(s0)
                  or           s1, s10, a0
                  srai         a7, gp, 3
                  sb           s10, -247(s0)
                  sub          t3, a1, gp
                  andi         a2, s0, 1401
                  sb           t5, -85(s0)
                  sb           s2, -95(s0)
                  sw           a0, -126(s0)
                  auipc        ra, 245066
                  nop
                  lb           a0, 141(s0)
                  lui          zero, 936468
                  auipc        t4, 582041
                  sll          a3, s0, t5
                  srl          a6, a5, s7
                  xori         s3, a0, 950
                  addi         a5, t0, 800
                  lb           a0, 122(s0)
                  lbu          gp, -141(s0)
                  slli         s6, a3, 8
                  lb           t1, 79(s0)
                  lb           s11, -229(s0)
                  and          s4, t3, a5
                  lb           s2, 203(s0) #end riscv_load_store_rand_instr_stream_4
                  bltu         s9, s3, 1721f
                  add          s4, s5, t2
                  andi         a7, s0, 687
                  bne          a6, a7, 1728f
                  add          s10, a2, s6
                  or           s2, s11, t0
                  xor          t2, t1, s6
                  slti         t0, s9, -840
1721:             sra          ra, t5, zero
                  slti         t3, t2, -2028
                  sltiu        a1, s11, 799
                  and          s1, t0, t2
                  slli         t2, a1, 27
1726:             sub          ra, t1, tp
                  ori          s11, a0, 1046
1728:             nop
                  sra          sp, t4, t4
                  sll          t2, t6, s2
                  srl          s5, s9, zero
                  sub          zero, a6, s5
                  nop
                  andi         a2, s4, -1190
                  bge          a5, s0, 1737f
                  slti         s11, a6, 885
1737:             bge          s3, s10, 1756f
                  bltu         t5, a1, 1744f
                  srli         s1, a4, 18
                  xori         t5, a0, 1049
                  srli         s6, a2, 28
                  auipc        ra, 155261
                  andi         ra, s9, -1153
1744:             xori         s0, s3, -1250
                  slti         a3, t4, 1452
                  sra          s10, s1, t3
                  slt          a3, tp, s0
                  andi         s5, s9, 295
                  bltu         a0, s4, 1754f
                  add          s4, a2, s11
                  slti         t3, s6, -877
                  xor          tp, a6, a5
                  and          s1, ra, s6
1754:             auipc        t2, 784520
                  bltu         t2, t2, 1766f
1756:             addi         tp, s6, 710
                  bne          zero, a3, 1764f
                  and          t3, a2, s6
                  ori          tp, s11, 940
                  sll          t4, t6, s6
                  auipc        s6, 835196
                  xor          t0, a2, t3
                  srai         t5, a2, 11
1764:             srl          t1, sp, t4
                  bltu         a6, s6, 1784f
1766:             sll          t3, s3, s10
                  srai         a1, s6, 6
                  lui          a2, 890357
                  blt          a7, gp, 1780f
                  slli         t5, s11, 0
                  auipc        zero, 220158
                  addi         s1, s9, 459
                  auipc        a3, 583478
                  slt          t3, a1, gp
                  auipc        a0, 924599
                  add          s4, s11, s0
                  bgeu         t2, s8, 1779f
                  slt          t2, a0, s8
1779:             xor          gp, a3, t5
1780:             sltu         t4, s7, a5
                  nop
                  bne          a4, t4, 1792f
                  beq          t6, a5, 1788f
1784:             sll          a0, s8, t2
                  nop
                  bne          a4, gp, 1788f
                  beq          t1, zero, 1804f
1788:             lui          t4, 747670
                  slti         s3, s3, 949
                  lui          s0, 921414
                  bne          t4, s7, 1808f
1792:             bge          sp, t6, 1799f
                  auipc        a7, 502911
                  bge          ra, a2, 1803f
                  ori          a3, s2, 534
                  nop
                  bltu         tp, t3, 1807f
                  slt          a7, a0, s8
1799:             bne          t3, s6, 1802f
                  bne          s5, s10, 1819f
                  nop
1802:             sll          a1, t4, a0
1803:             slti         s3, sp, 1686
1804:             xori         sp, a1, 1465
                  srai         a0, s1, 4
                  slti         t4, s2, 1284
1807:             blt          ra, a0, 1820f
1808:             beq          t0, zero, 1820f
                  xor          s11, t0, t6
                  lui          s7, 384848
                  or           s3, a3, s9
                  slt          a0, a4, a4
                  bne          s2, a3, 1832f
                  add          s4, s7, a7
                  sltiu        s3, ra, -1068
                  addi         t3, a6, 1297
                  bgeu         a4, s11, 1818f
1818:             sltu         t0, s6, s3
1819:             sra          t1, s7, t0
1820:             slti         s5, a7, -1724
                  sub          sp, s1, t5
                  sub          s7, s11, s6
                  bgeu         a1, t6, 1838f
                  sltiu        a2, a7, 2040
                  bltu         tp, t2, 1839f
                  sra          t5, tp, tp
                  sub          s10, gp, t6
                  bgeu         s5, s10, 1835f
                  blt          a3, t6, 1830f
1830:             bltu         zero, a4, 1841f
                  sub          a3, a3, a0
1832:             srl          s5, tp, t1
                  sltiu        t0, s9, 457
                  sub          t4, s1, a4
1835:             slli         gp, s11, 27
                  beq          s3, sp, 1846f
                  or           t4, a5, a6
1838:             addi         sp, s10, -23
1839:             andi         t4, a0, -691
                  add          t3, t6, a1
1841:             sltu         gp, a7, a3
                  srli         a7, t2, 24
                  and          s5, t3, t2
                  srli         s1, zero, 22
                  slt          s5, s2, a7
1846:             bgeu         a3, t4, 1858f
                  slti         a3, s4, 1035
                  beq          tp, s0, 1850f
                  bge          s9, a5, 1854f
1850:             lui          t4, 128569
                  srai         s7, t5, 20
                  xori         t2, s5, 2044
                  slt          s4, s2, a3
1854:             sll          a3, s6, s11
                  bge          s11, sp, 1858f
                  srl          ra, a3, tp
                  bge          gp, s0, 1863f
1858:             sll          t6, gp, t0
                  ori          s7, s11, -94
                  slti         t3, t1, -336
                  slt          s0, a3, a7
                  addi         s5, a2, -110
1863:             sll          s7, t6, a2
                  blt          t0, t6, 1871f
                  sll          a2, t0, s4
                  bltu         ra, a5, 1868f
                  nop
1868:             bge          t3, a7, 1887f
                  sra          ra, a1, a1
                  blt          s3, a7, 1889f
1871:             sltiu        a0, a5, 524
                  beq          t1, a3, 1891f
                  srl          t4, s10, a1
                  nop
                  beq          s11, gp, 1895f
                  lui          t2, 664095
                  bge          t2, ra, 1892f
                  slt          s4, a7, s1
                  xori         t5, tp, 165
                  andi         a5, s0, 1192
                  auipc        s11, 135711
                  sltiu        a6, t2, -792
                  xori         t6, a5, 1340
                  bgeu         s5, t6, 1893f
                  sra          gp, gp, sp
                  or           t1, t3, gp
1887:             srli         s1, ra, 10
                  xori         s10, s2, 1976
1889:             slli         zero, s5, 26
                  sra          t6, s4, s4
1891:             sltu         t1, t4, a6
1892:             sra          s7, s4, t2
1893:             ori          a0, s0, 2022
                  srl          a7, s9, t6
1895:             beq          t6, s10, 1912f
                  srai         a3, sp, 30
                  srai         t6, s8, 16
                  bgeu         a7, a2, 1913f
                  sll          s5, t0, a7
                  slli         a1, s10, 10
                  andi         t1, s3, 47
                  auipc        s7, 283287
                  srli         s0, t2, 9
                  bge          a2, s7, 1917f
                  sra          s1, s11, a5
                  srai         s6, s7, 29
                  and          s10, s11, s5
                  slli         a6, ra, 14
                  bltu         zero, t3, 1914f
                  blt          s11, t1, 1929f
                  bltu         s9, s2, 1919f
1912:             bgeu         t6, s6, 1926f
1913:             lui          zero, 398880
1914:             srl          s3, tp, s9
                  bne          a5, s3, 1917f
                  ori          s7, a2, -1101
1917:             auipc        t3, 279914
                  sub          s2, t6, s3
1919:             xor          ra, t4, t4
                  or           s10, s6, a6
                  ori          t2, a1, -448
                  sltu         t5, t3, gp
                  slti         s2, s3, 330
                  addi         gp, a6, -169
                  sll          t6, t2, a4
1926:             andi         a0, s10, 1357
                  sltiu        s1, s11, 1601
                  lui          a5, 64817
1929:             slli         a6, s2, 20
                  srl          s11, s10, s7
                  nop
                  srli         s5, s11, 11
                  srai         a7, t2, 15
                  auipc        a1, 67035
                  blt          ra, s10, 1942f
                  blt          s9, tp, 1948f
                  andi         a3, s2, 752
                  srli         s7, gp, 16
                  lui          a2, 461616
                  bge          s8, a2, 1951f
                  auipc        a2, 739286
1942:             addi         s3, a5, 1797
                  blt          gp, s9, 1953f
                  and          t1, s4, t1
                  auipc        t3, 716860
                  srai         a2, s8, 20
                  auipc        a6, 389825
1948:             blt          t3, s9, 1955f
                  auipc        t4, 575402
                  and          s3, a3, sp
1951:             sltiu        s10, s6, -642
                  xor          a7, a5, s3
1953:             bltu         a6, t3, 1970f
                  sltiu        t2, t4, -94
1955:             slti         s0, gp, -1068
                  bgeu         a0, s10, 1975f
                  auipc        t6, 368977
                  blt          s8, s9, 1975f
                  beq          s6, s0, 1964f
                  srai         t0, t1, 11
                  blt          a2, a1, 1970f
                  slli         s0, s9, 17
                  sub          a5, s8, s2
1964:             or           a2, a5, a0
                  sltu         t1, a3, s10
                  xor          s4, a3, a0
                  ori          a6, t0, -1286
                  srli         s6, s5, 22
                  srli         a1, tp, 11
1970:             andi         s4, s6, 1153
                  sra          tp, t2, sp
                  srai         a1, s11, 29
                  bgeu         s0, gp, 1979f
                  sltu         a3, a1, ra
1975:             sltiu        a2, t5, -2036
                  blt          t5, sp, 1986f
                  slli         s7, s1, 19
                  srli         a6, t5, 8
1979:             slli         t6, s7, 24
                  bge          a4, a1, 2000f
                  ori          a0, s8, 1010
                  sub          s7, a5, ra
                  sltu         sp, ra, a7
                  srl          a0, t6, tp
                  slli         a1, a6, 23
1986:             andi         a2, s11, -1210
                  slti         t5, a2, 1229
                  slt          s6, t4, a1
                  xori         s3, a0, 1885
                  ori          a3, a2, -1407
                  nop
                  auipc        a5, 394126
                  addi         t2, a2, 1538
                  nop
                  bne          s1, s6, 1997f
                  srai         s11, t5, 1
1997:             or           t1, t0, zero
                  addi         a3, t6, 341
                  or           a7, gp, s9
2000:             sll          a6, a2, a1
                  blt          t3, sp, 2009f
                  or           s5, s8, a0
                  ori          s7, s10, 1886
                  slli         sp, t0, 3
                  slt          a0, t4, s1
                  lui          a0, 997242
                  slli         a6, s10, 21
                  srli         tp, a1, 1
2009:             srli         s5, a1, 0
                  sll          t2, t4, s5
                  add          a2, s8, t2
                  ori          s2, t4, 1208
                  auipc        s4, 216905
                  xori         t5, s11, 769
                  sub          tp, s10, s9
                  srl          s11, a1, zero
                  xori         s2, t6, -679
                  bgeu         a4, s6, 2032f
                  sltiu        t1, a6, 1412
                  xori         a3, s3, -789
                  sll          s1, tp, s4
                  slti         s1, t1, 866
                  sub          a5, sp, zero
                  srl          sp, t2, s10
                  addi         s4, t2, -275
                  add          a6, ra, t1
                  bge          s8, tp, 2039f
                  sltiu        t0, a2, -1514
                  slli         s0, t6, 18
                  nop
                  bgeu         s9, gp, 2038f
2032:             srli         t6, s10, 7
                  slli         gp, s11, 7
                  auipc        tp, 868704
                  beq          a1, a4, 2040f
                  xori         gp, gp, 349
                  ori          a6, a7, -158
2038:             srl          s0, a7, ra
2039:             slti         a3, a5, -765
2040:             and          s1, s4, tp
                  or           s5, a2, ra
                  lui          a1, 149971
                  nop
                  xori         s6, t5, -1360
                  sltiu        s3, gp, -1551
                  ori          t2, s6, 1313
                  lui          t2, 567412
                  sll          s10, s11, t4
                  bne          s11, t0, 2068f
                  nop
                  blt          t6, t3, 2062f
                  slti         s6, a1, -825
                  addi         t1, zero, -1489
                  sub          zero, ra, sp
                  auipc        zero, 1048198
                  addi         s0, s3, -1165
                  bne          a1, a3, 2074f
                  srl          a7, t2, s5
                  blt          s1, a4, 2061f
                  xor          a5, s3, gp
2061:             bltu         s2, a4, 2064f
2062:             sltu         a5, t3, s0
                  andi         s5, a7, -735
2064:             slt          sp, sp, sp
                  add          a0, t5, s6
                  sra          s1, t6, gp
                  andi         s7, s10, 1069
2068:             sltiu        tp, a2, 500
                  sltiu        a3, a0, 1170
                  add          t5, s3, s9
                  bgeu         tp, a4, 2086f
                  andi         s1, s5, 968
                  sltu         a1, a0, s5
2074:             xor          t5, a0, s10
                  sub          a2, a0, s11
                  srl          t2, s8, t1
                  bltu         t6, a2, 2092f
                  beq          s3, s7, 2085f
                  blt          a6, a4, 2098f
                  sltu         s1, t6, s2
                  xori         t4, s11, 1981
                  srai         t0, tp, 31
                  addi         sp, sp, -1580
                  blt          gp, sp, 2094f
2085:             srl          a1, t0, s7
2086:             srl          gp, a2, a5
                  bgeu         t6, zero, 2094f
                  or           a7, s1, s10
                  xori         a5, s2, -1787
                  slli         a6, zero, 31
                  sltu         a0, t5, a3
2092:             blt          s2, s3, 2094f
                  add          s4, a3, tp
2094:             srai         a1, sp, 24
                  nop
                  nop
                  bge          a4, s8, 2116f
2098:             xori         gp, s0, 1398
                  srai         s7, gp, 0
                  bgeu         s8, a6, 2113f
                  xori         t5, a7, -1177
                  add          s4, a2, a0
                  beq          t4, s6, 2104f
2104:             sll          s10, zero, t2
                  slt          t5, t0, sp
                  sltiu        s7, s2, 147
                  lui          a5, 543136
                  blt          t5, s9, 2120f
                  addi         s3, s8, 963
                  ori          s4, s7, 875
                  andi         zero, a3, 1846
                  ori          s1, t0, 80
2113:             xor          a1, a3, a7
                  xori         a5, a6, 1760
                  bne          s9, a0, 2126f
2116:             bge          s6, a6, 2122f
                  slli         s0, a3, 12
                  auipc        t3, 985670
                  sub          t2, a4, s7
2120:             and          s6, s0, a5
                  srl          a2, t1, s6
2122:             bgeu         gp, s9, 2141f
                  slt          a6, s0, a0
                  sltu         s0, s9, a6
                  beq          t6, a6, 2136f
2126:             bne          t3, a7, 2127f
2127:             sll          a7, s0, s5
                  bgeu         t2, t1, 2142f
                  sltiu        s3, ra, 1186
                  lui          a2, 200938
                  lui          a0, 335429
                  andi         t2, a6, -1172
                  slli         sp, s5, 11
                  auipc        s6, 614968
                  beq          s6, a5, 2142f
2136:             sll          t2, t1, s2
                  slti         sp, s3, 1332
                  bgeu         t4, s3, 2140f
                  bgeu         a5, s0, 2154f
2140:             auipc        s3, 238465
2141:             bge          s11, s1, 2160f
2142:             bltu         t2, s3, 2159f
                  addi         t4, gp, -1812
                  sltiu        a3, s7, -1596
                  addi         a3, sp, 81
                  blt          a4, t4, 2159f
                  srl          t6, s0, s8
                  srai         s7, a3, 26
                  slti         a3, s3, -2005
                  slli         a0, s3, 8
                  sltiu        a2, s8, 1512
                  sltiu        a6, s10, -1138
                  bge          s2, s4, 2162f
2154:             ori          t1, s10, -1598
                  bgeu         ra, t3, 2157f
                  sltiu        s7, s2, -75
2157:             slti         s4, ra, -483
                  sra          t6, s1, t6
2159:             sub          a3, a3, s9
2160:             lui          ra, 66138
                  and          a1, t0, t5
2162:             sub          t3, a7, ra
                  sll          s2, s5, a7
                  or           t0, t2, s3
                  bgeu         s11, tp, 2185f
                  xori         a7, s4, -1742
                  sra          t0, s5, s1
                  sltiu        a0, s1, -1018
                  bge          t6, a5, 2181f
                  add          s11, ra, zero
                  andi         t3, sp, -1077
                  sub          s6, a1, t6
                  srai         sp, s4, 29
                  andi         s1, t0, 1980
                  sll          s10, s7, a0
                  nop
                  xor          s1, s0, tp
                  sub          t1, s6, sp
                  auipc        s0, 176707
                  ori          s10, s3, 1306
2181:             srli         a6, gp, 18
                  beq          zero, s1, 2197f
                  srli         s3, sp, 12
                  sub          s11, a5, t4
2185:             and          zero, a2, a4
                  slli         s7, a7, 23
                  or           s6, a1, s3
                  xori         s5, s4, -111
                  andi         s7, t1, -1366
                  and          s2, t5, a6
                  ori          s3, t6, 1894
                  or           s3, a0, s3
                  addi         t0, a3, 184
                  xor          zero, a1, a7
                  sltu         t5, s10, a5
                  add          a0, s10, s3
2197:             blt          a7, tp, 2204f
                  addi         s4, a5, 1338
                  blt          t2, s5, 2204f
                  bne          s2, t1, 2219f
                  srl          t1, a4, t2
                  bne          s4, a6, 2205f
                  sll          t2, zero, a7
2204:             srai         ra, s4, 5
2205:             bgeu         s10, s3, 2212f
                  andi         s7, s1, -1746
                  auipc        a0, 791805
                  xor          t4, a0, t5
                  bne          s8, a6, 2221f
                  addi         t1, s9, 783
                  bgeu         a5, s1, 2216f
2212:             andi         s0, s10, 338
                  sub          t1, gp, s6
                  slli         tp, a6, 15
                  sra          gp, tp, a2
2216:             and          s3, a6, a2
                  bltu         ra, t4, 2227f
                  and          s11, s8, a7
2219:             ori          a0, a2, 792
                  auipc        t0, 673904
2221:             ori          t4, t6, -539
                  auipc        s1, 522413
                  auipc        s10, 43547
                  srai         a2, a7, 10
                  auipc        s0, 324836
                  andi         a0, s0, -1552
2227:             nop
                  sltiu        a0, s3, -2043
                  slti         t6, a4, 768
                  beq          ra, ra, 2238f
                  sub          a2, a6, t2
                  bge          s4, s2, 2234f
                  or           s5, t5, t0
2234:             addi         t1, gp, -1313
                  xor          s0, s0, a4
                  lui          sp, 641530
                  lui          t6, 333184
2238:             sltu         t3, s1, sp
                  andi         s6, s5, 1978
                  sra          a7, t2, sp
                  sltiu        t1, tp, -1255
                  srl          t6, s8, s11
                  sub          s3, t1, s1
                  or           t2, s7, a7
                  slli         s6, s0, 9
                  sltu         t4, t1, gp
                  lui          a7, 135375
                  slt          a2, a3, tp
                  sub          s11, tp, t6
                  lui          t0, 651005
                  add          s6, a6, s6
                  srai         s1, s8, 26
                  sub          t3, a4, s9
                  sub          a3, s3, s5
                  xor          t6, zero, a3
                  blt          s7, s7, 2267f
                  slt          s1, t3, t6
                  bne          t5, a6, 2268f
                  srai         tp, s4, 13
                  or           s10, tp, tp
                  andi         a1, zero, -1174
                  blt          ra, s7, 2279f
                  beq          t3, ra, 2282f
                  ori          s0, t3, 386
                  beq          s10, sp, 2276f
                  addi         s7, t3, 977
2267:             lui          s2, 857300
2268:             srai         a1, t1, 13
                  andi         t3, a2, -161
                  srai         ra, a3, 22
                  xori         zero, s6, 1030
                  add          s10, a0, s7
                  sub          a2, ra, s1
                  bltu         s9, t2, 2293f
                  xor          a7, s5, a1
2276:             bltu         s7, a7, 2287f
                  slt          s7, a0, s11
                  srai         s3, zero, 15
2279:             sltiu        t6, s1, 650
                  sltiu        s1, s5, 1829
                  bgeu         s6, a5, 2295f
2282:             or           s0, a0, a6
                  xor          s4, s10, a6
                  slti         t3, s0, 12
                  bge          ra, t6, 2292f
                  bgeu         a5, gp, 2288f
2287:             bne          s7, a0, 2290f
2288:             blt          s10, a2, 2290f
                  bne          s9, t3, 2290f
2290:             slt          a7, s10, t4
                  xor          gp, a2, zero
2292:             bgeu         s3, t6, 2305f
2293:             slt          s0, t6, s3
                  lui          t0, 412521
2295:             lui          t2, 451333
                  beq          t3, t0, 2308f
                  lui          s4, 35846
                  bgeu         s0, t4, 2308f
                  xori         a2, t3, 144
                  auipc        a7, 461963
                  sll          sp, s4, s3
                  sll          t5, s11, s2
                  slli         s5, sp, 19
                  add          s5, zero, s7
2305:             srli         zero, a7, 6
                  xori         a5, t3, 1020
                  ori          t5, s10, 771
2308:             srli         s1, a4, 16
                  sll          a3, a1, s7
                  bltu         s3, s1, 2315f
                  sub          a2, s4, t1
                  andi         t4, tp, 1655
                  srl          tp, gp, s2
                  ori          a3, a3, 1404
2315:             srli         a6, t0, 21
                  sltu         a7, a7, s6
                  andi         t0, s6, 1522
                  auipc        s6, 493224
                  andi         tp, s1, -1204
                  auipc        s7, 383300
                  and          t6, ra, tp
                  nop
                  auipc        s5, 462784
                  slt          s6, a4, sp
                  bgeu         t1, s6, 2335f
                  or           s4, s0, t1
                  or           t0, zero, a4
                  sltu         t6, t3, s2
                  slli         s0, s1, 29
                  addi         ra, ra, 987
                  slt          s2, a4, s10
                  andi         a2, s9, 1833
                  lui          t2, 816021
                  slti         s1, s3, -1874
2335:             sltu         gp, s8, s5
                  nop
                  sub          t5, a2, t1
                  sltiu        s11, a7, -197
                  or           s7, s3, a2
                  slli         s2, zero, 22
                  bge          s9, s6, 2361f
                  xor          gp, sp, t4
                  auipc        a7, 403893
                  and          s10, s8, a4
                  bge          a2, s7, 2350f
                  xori         a0, ra, 1834
                  xori         s4, t3, -1608
                  sub          t3, s8, s4
                  slti         a7, s8, 1514
2350:             sra          s11, zero, s0
                  bne          s6, a6, 2358f
                  and          t2, tp, s4
                  slli         s5, a5, 13
                  blt          a4, s6, 2361f
                  beq          a6, a7, 2374f
                  blt          a0, a7, 2365f
                  ori          s1, t5, -346
2358:             nop
                  slti         t1, s5, -524
                  andi         s6, s3, -1015
2361:             lui          a3, 569804
                  lui          gp, 218420
                  slli         a6, gp, 22
                  xor          a2, a7, gp
2365:             sll          s1, gp, t3
                  sra          t3, s9, t1
                  ori          t5, a1, 461
                  xori         t0, t3, -1202
                  bne          t0, t5, 2371f
                  bne          zero, a0, 2382f
2371:             beq          s0, s5, 2386f
                  srai         a6, t3, 19
                  sltiu        s11, s5, -993
2374:             nop
                  slti         t1, a3, -146
                  nop
                  sra          t0, t3, a2
                  sub          a3, t1, t4
                  srl          t4, s0, ra
                  xor          ra, s5, ra
                  slli         a7, s9, 19
2382:             xori         s4, t0, 561
                  or           s3, t1, s11
                  blt          ra, s10, 2392f
                  bgeu         tp, a1, 2402f
2386:             lui          a0, 843592
                  beq          gp, ra, 2393f
                  beq          s11, t6, 2407f
                  bne          a7, a0, 2406f
                  add          s4, t5, t5
                  or           s4, s5, sp
2392:             or           t5, ra, tp
2393:             add          t6, t6, t5
                  srl          a2, a6, s11
                  andi         zero, t3, -436
                  sub          t5, s6, t6
                  nop
                  xori         t5, t1, 692
                  andi         s7, t1, 547
                  sub          sp, t6, s5
                  lui          ra, 1017741
2402:             bne          a1, t2, 2421f
                  addi         s11, a1, 1451
                  sll          ra, a7, a6
                  xori         t3, t3, -819
2406:             andi         s0, a7, 13
2407:             auipc        s5, 15972
                  addi         s3, tp, -1548
                  or           a6, s3, s5
                  sra          s10, a6, a4
                  sll          s10, t4, s5
                  sltu         a5, ra, t3
                  slt          s5, t3, tp
                  sltu         tp, a5, gp
                  bltu         t3, gp, 2430f
                  xor          s4, s11, sp
                  xor          s10, t2, ra
                  auipc        t3, 16332
                  sltu         zero, sp, a3
                  srai         s10, a1, 23
2421:             bgeu         tp, a2, 2430f
                  slli         s10, t2, 14
                  srl          zero, t3, s4
                  add          a1, s8, s4
                  slt          a6, a4, t4
                  srli         a7, a2, 8
                  sltiu        ra, s9, 1412
                  srai         s0, s3, 21
                  or           s11, t5, s1
2430:             slti         gp, a1, -1071
                  nop
                  lw           s2, 4(a4)
                  and          t4, t4, t2
                  slt          s11, t0, a4
                  addi         a4, a4, 12
                  sra          s7, sp, s10
                  sub          t2, s9, t3
3207:             addi x5, x18, 1
3207:             jalr x5, x5, 0
sub_3:            bgeu         a2, s8, sub_3_stack_p
sub_3_stack_p:    addi         a4, a4, -40
                  lui          a6, 516941
                  sra          gp, zero, t1
                  addi         a7, a3, -1433
                  xor          tp, s1, t2
                  sw           s2, 4(a4)
                  srl          t6, s0, t5
                  sltiu        a2, a7, -2022
                  nop
                  sub          a3, t5, ra
                  and          t4, a3, t3
                  slli         sp, a4, 6
                  srai         s11, a0, 6
                  xor          s11, a7, s8
                  add          a0, a5, s4
                  slli         s1, a4, 31
                  sra          s6, a0, t0
sub_3_j7:         jal          s2, sub_4 #jump sub_3 -> sub_4
                  la           t1, region_0+1794 #start riscv_load_store_rand_instr_stream_1
                  lui          s5, 47161
                  sub          zero, sp, s3
                  or           s11, gp, s9
                  lb           s4, 0(t1)
                  srl          a2, s7, a3
                  lhu          s7, -10(t1)
                  lb           ra, 3(t1)
                  xori         s10, s1, 70
                  lui          s3, 372713
                  sra          s11, sp, s1
                  add          s7, s1, a6
                  lb           a0, 15(t1)
                  xori         a6, a6, -1689
                  lhu          s4, -16(t1)
                  and          t3, s1, a4
                  srli         s11, a7, 11
                  sub          s3, t1, t5
                  and          a0, tp, s5
                  lb           s11, 14(t1)
                  lbu          s3, 13(t1)
                  sb           s3, 0(t1)
                  sra          a2, a6, t2
                  sw           t1, -10(t1)
                  sb           s8, -14(t1)
                  sll          ra, s2, t2
                  or           a5, gp, a5
                  sb           t3, 15(t1)
                  slt          t5, a1, t1
                  sb           gp, -5(t1)
                  sb           t3, -6(t1)
                  lhu          s3, -4(t1)
                  andi         s2, s3, -116
                  lhu          gp, 12(t1)
                  sb           t6, -9(t1)
                  lbu          s2, -15(t1)
                  sub          ra, t0, zero
                  ori          s4, a0, 728
                  sb           sp, 5(t1)
                  or           s7, s8, a3
                  lb           zero, 7(t1)
                  srai         gp, a4, 9
                  lb           a6, -11(t1)
                  auipc        gp, 160173
                  sltiu        s5, zero, 253
                  lbu          gp, 15(t1)
                  xor          t6, t6, s11
                  lb           a1, 13(t1)
                  lhu          s3, 0(t1)
                  sb           s1, 9(t1)
                  lb           s11, -11(t1)
                  add          t0, a6, s0
                  lhu          s3, 0(t1) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+442 #start riscv_load_store_rand_instr_stream_2
                  xor          t2, s0, a2
                  sh           s7, -166(sp)
                  add          a1, ra, t2
                  srli         a0, s5, 10
                  nop
                  nop
                  lw           t6, 142(sp)
                  xor          tp, t1, s10
                  sh           t4, 146(sp)
                  or           a1, s0, a7
                  auipc        t3, 677618
                  sh           a2, -256(sp)
                  lhu          a7, -214(sp)
                  addi         tp, t5, 1104
                  lb           ra, -57(sp)
                  lbu          s10, 34(sp)
                  sltiu        t0, t3, -377
                  slt          ra, tp, s1
                  or           s6, a6, s4
                  or           s10, t4, a3
                  xori         t4, sp, -1410
                  and          s3, a2, a7
                  lbu          t4, -163(sp)
                  sb           a2, -170(sp)
                  xor          s11, s4, a5
                  sub          a6, tp, a3
                  add          s0, s6, s6
                  xori         t3, a5, 898
                  sub          s6, s5, t0
                  srli         a3, s10, 1
                  sltu         t3, a5, t0
                  lb           a2, -79(sp)
                  sh           a3, 10(sp)
                  slt          zero, t6, t0
                  srl          a2, s9, t1
                  slli         tp, a7, 3
                  lbu          t5, -148(sp)
                  nop
                  lb           s1, 7(sp)
                  lb           s2, 194(sp)
                  sb           t6, 179(sp)
                  lhu          t5, 28(sp)
                  slti         s1, s3, 1021
                  lbu          a5, 41(sp)
                  sb           t5, -247(sp)
                  lhu          a3, -88(sp) #end riscv_load_store_rand_instr_stream_2
                  xori         tp, ra, 1611
                  bge          ra, sp, 20f
                  sll          s0, s7, zero
                  and          s0, t6, a0
                  sra          a0, sp, t5
                  and          a0, a7, s2
                  sra          s6, a3, t4
                  sltu         a5, s10, s2
                  slli         t2, s4, 27
                  slti         s5, a0, 239
                  srl          s1, s1, s8
                  sll          s11, a4, t4
                  addi         a3, zero, 1468
                  blt          s4, s4, 32f
                  bge          a4, a2, 26f
                  or           t3, s1, s10
                  sltiu        s0, s10, -781
                  bge          s9, a6, 24f
                  srli         a7, t0, 4
                  or           t2, t4, s4
20:               sltu         t6, t3, s10
                  sll          t2, t1, t2
                  xori         a6, s10, 1066
                  andi         a0, tp, -700
24:               srli         a1, a4, 13
                  sll          a2, t4, a1
26:               and          a1, sp, t4
                  ori          t5, a7, 357
                  bne          a0, s8, 33f
                  lui          a0, 643199
                  xor          sp, s9, s5
                  sub          s6, s6, t4
32:               bge          s4, gp, 43f
33:               sll          zero, s8, s4
                  sll          t5, t3, s5
                  xori         s2, a0, -1553
                  sll          s5, a5, a7
                  slli         s6, s2, 10
                  slt          t5, s4, t5
                  auipc        a2, 829659
                  xor          s0, t1, a7
                  sra          s1, s2, s7
                  sub          s0, s6, t1
43:               nop
                  bge          a5, s3, 53f
                  add          s0, a5, zero
                  and          a7, t5, t2
                  nop
                  srli         t2, s7, 16
                  or           sp, s7, s11
                  bgeu         t6, a3, 62f
                  add          t2, s1, t5
                  sltiu        t6, a6, -1840
53:               lui          t0, 462457
                  add          a7, s1, a3
                  srai         a7, tp, 28
                  bgeu         s4, s9, 62f
                  sll          t1, s11, a2
                  or           s4, t4, a0
                  andi         a1, a1, -1768
                  slli         t2, a5, 18
                  lui          a3, 534382
62:               bne          t0, a5, 79f
                  auipc        a1, 749850
                  sll          a5, tp, t2
                  sra          a3, a2, s8
                  srai         a0, t2, 4
                  xori         s6, sp, 28
                  or           a0, a5, s3
                  slli         ra, s8, 8
                  blt          gp, a0, 86f
                  beq          s4, sp, 80f
                  bne          s4, ra, 88f
                  and          ra, t4, s5
                  beq          sp, t0, 78f
                  nop
                  ori          s1, ra, 1321
                  bgeu         t5, sp, 87f
78:               sltu         s0, gp, tp
79:               slli         tp, t0, 12
80:               sltu         a0, zero, s9
                  bne          a6, s7, 93f
                  srl          gp, s4, a3
                  sub          s10, tp, t1
                  addi         t5, t4, -594
                  auipc        a6, 73895
86:               sub          a1, t5, tp
87:               auipc        s3, 755810
88:               srl          a7, s4, s8
                  xori         t3, s7, -1586
                  nop
                  beq          a5, t5, 93f
                  sub          a0, a1, a1
93:               or           t6, s6, gp
                  sra          t0, sp, t3
                  xori         s1, ra, 1513
                  addi         t1, a3, -820
                  ori          t6, gp, 2005
                  ori          t1, ra, 168
                  bltu         zero, a1, 101f
                  sra          t5, s2, ra
101:              addi         s1, gp, -1945
                  srai         s5, s6, 15
                  lui          a5, 328716
                  beq          s8, a2, 123f
                  add          a2, s0, a5
                  beq          tp, t5, 120f
                  or           s5, a6, s6
                  bltu         s11, a5, 127f
                  bgeu         ra, tp, 111f
                  xor          s3, sp, ra
111:              lui          s6, 852205
                  ori          s3, t5, 1863
                  addi         t2, ra, 396
                  srli         a6, s3, 7
                  sll          s4, a2, s10
                  slli         s3, a4, 2
                  or           a5, s8, t1
                  sll          s1, s2, t6
                  srl          s11, a6, a6
120:              srai         s7, s2, 2
                  add          sp, s10, a3
                  bgeu         gp, s2, 134f
123:              xori         t3, zero, -1660
                  slt          s2, t5, s3
                  or           a7, a3, s3
                  sltu         t4, s8, s10
127:              beq          t6, a7, 132f
                  sub          t0, t0, a3
                  sltiu        sp, t2, 1376
                  la           a6, region_0+367 #start riscv_load_store_rand_instr_stream_0
                  xor          a2, s2, a2
                  sb           ra, 6(a6)
                  and          t0, t6, sp
                  addi         s0, t4, -1578
                  lhu          s1, 13(a6)
                  nop
                  lbu          a2, 16(a6)
                  lh           s6, -33(a6)
                  sb           ra, 25(a6)
                  xor          ra, s2, a2
                  lhu          t4, -59(a6)
                  lbu          zero, 30(a6)
                  lbu          sp, -63(a6)
                  slt          t0, t6, t1
                  lui          t6, 156177
                  lb           tp, -58(a6)
                  lb           s7, 37(a6)
                  lh           ra, 23(a6)
                  lb           s1, 6(a6)
                  sra          gp, s4, s4
                  sb           t2, -30(a6)
                  sb           a1, -42(a6)
                  slli         s0, ra, 15
                  sltiu        a7, a2, 824
                  lb           t0, 43(a6)
                  andi         a7, t5, 1350
                  sh           a6, -29(a6) #end riscv_load_store_rand_instr_stream_0
                  lui          a5, 328279
                  xori         s5, ra, 1506
132:              andi         s3, sp, 1459
                  sra          s3, t6, s11
134:              bge          a0, s1, 136f
                  blt          ra, s8, 148f
136:              bne          s0, s10, 137f
137:              slli         s7, ra, 3
                  sltiu        s4, a1, 1175
                  addi         t3, s1, 1998
                  srl          tp, a2, gp
                  beq          t6, ra, 158f
                  sub          gp, zero, t3
                  xor          s4, gp, t1
                  ori          t1, sp, 308
                  sltu         a7, s2, s9
                  slt          s0, s10, t6
                  srai         s2, s7, 15
148:              srl          s4, s3, tp
                  xori         s5, zero, 1589
                  slti         ra, a3, 87
                  srai         t1, a2, 27
                  slti         s4, s6, -1029
                  and          s4, t5, s6
                  blt          s2, zero, 171f
                  ori          t1, t5, 473
                  auipc        a7, 699942
                  or           t1, s11, s2
158:              slti         ra, a2, -723
                  srai         ra, a4, 6
                  nop
                  sra          t2, a7, gp
                  sltu         a3, a5, a3
                  or           s7, s2, a2
                  srai         s4, s8, 20
                  sltu         a2, s5, t6
                  xori         a2, a5, -306
                  slti         sp, t0, -1504
                  slt          s6, tp, a6
                  addi         s0, s1, 1574
                  ori          t6, s6, 481
171:              xori         t3, tp, -566
                  slli         t1, s6, 15
                  srl          t2, tp, sp
                  bne          s4, a1, 181f
                  auipc        s1, 684767
                  nop
                  beq          a1, t0, 188f
                  srli         s1, a1, 25
                  sub          t3, a4, s1
                  srli         a3, gp, 2
181:              xor          a3, s6, t2
                  srai         ra, s4, 6
                  slli         t2, t0, 26
                  or           s0, a3, t2
                  bne          sp, sp, 189f
                  andi         a2, a1, -837
                  sra          s4, s2, s8
188:              add          t4, a1, tp
189:              sll          a0, gp, a7
                  lui          a3, 1025954
                  lui          t1, 36950
                  lui          t1, 62184
                  slt          t0, a6, s1
                  slt          t3, s2, a0
                  xor          s6, a2, s7
                  or           a0, t3, tp
                  bltu         ra, zero, 214f
                  bgeu         s1, a6, 210f
                  lui          s10, 107932
                  bltu         s10, a1, 212f
                  xor          a7, s2, ra
                  sra          t5, t1, s0
                  sub          gp, t6, sp
                  srai         t6, s11, 21
                  sll          t0, t4, s9
                  slli         a0, t3, 0
                  srl          s0, a7, sp
                  slli         t2, a0, 28
                  blt          s1, t4, 211f
210:              xor          s3, t0, a5
211:              sub          s1, s1, s0
212:              sltu         s0, s7, a2
                  auipc        s3, 789619
214:              bne          sp, ra, 215f
215:              srai         s7, zero, 0
                  andi         a6, gp, -1350
                  and          s7, t3, gp
                  ori          a0, s4, 164
                  ori          ra, sp, 773
                  slti         tp, ra, -623
                  bgeu         s3, zero, 228f
                  sub          t4, t0, s0
                  sll          zero, a5, s0
                  sltiu        s1, gp, -511
                  bgeu         t4, a5, 244f
                  blt          t1, tp, 243f
                  bgeu         gp, s8, 246f
228:              slli         s2, a1, 15
                  srai         s10, s2, 24
                  bge          s9, s7, 239f
                  add          a5, a1, s1
                  xori         a0, s5, -643
                  sltu         t6, a2, s6
                  srli         s7, s3, 20
                  xor          t3, a0, gp
                  andi         t4, t3, 1712
                  beq          s6, a4, 249f
                  beq          a6, t2, 254f
239:              auipc        s6, 417829
                  or           s0, s8, s1
                  slti         t3, t1, 298
                  sra          sp, sp, a2
243:              addi         t5, s1, -1617
244:              xori         s10, s1, -894
                  slti         gp, s7, 1641
246:              beq          s3, s7, 251f
                  sub          s7, a7, t3
                  bne          a4, s11, 267f
249:              slti         s10, s11, -1574
                  sltu         s11, s3, t3
251:              addi         t6, t1, -494
                  addi         s4, ra, -378
                  blt          t5, s9, 270f
254:              sll          s3, a2, a5
                  srl          a2, s6, s4
                  sltu         s2, t3, t2
                  xori         t6, a1, -354
                  blt          a7, a0, 263f
                  addi         s2, s9, 524
                  bne          t2, ra, 276f
                  xor          s7, s6, t4
                  slt          s6, a1, a6
263:              xori         a1, tp, -2030
                  slt          s4, s2, zero
                  srli         tp, a4, 6
                  and          a0, tp, s5
267:              sub          s11, s6, s9
                  slti         a5, a2, 987
                  srli         t3, t3, 2
270:              addi         a0, s3, -670
                  sub          tp, t5, t3
                  lui          s2, 314021
                  bge          s0, sp, 283f
                  slli         ra, s7, 6
                  slti         a7, t0, 1317
276:              or           a6, a6, ra
                  nop
                  sltu         t5, s0, s10
                  bne          s9, t4, 281f
                  addi         t0, a7, 275
281:              and          sp, s4, a4
                  xor          a5, zero, a5
283:              sll          s4, a2, t3
                  xori         sp, t1, 1489
                  ori          sp, a1, -1843
                  and          gp, t2, s3
                  slli         t6, ra, 11
                  bge          tp, s5, 294f
                  bltu         s6, s1, 291f
                  addi         t5, s0, -632
291:              srai         s6, t0, 18
                  nop
                  nop
294:              bne          a1, tp, 308f
                  ori          zero, s3, 140
                  slt          s11, ra, s2
                  slt          t5, s3, s6
                  sll          s5, t5, s5
                  addi         a6, s9, 246
                  xor          gp, a0, ra
                  andi         t0, s2, 335
                  ori          s10, t4, -90
                  srl          a2, a0, s3
                  srl          t5, s9, s10
                  bltu         a5, s6, 318f
                  blt          a6, t6, 318f
                  beq          a1, s9, 316f
308:              or           a7, s10, a6
                  sll          a1, s3, a7
                  bgeu         s11, t4, 312f
                  bltu         gp, s11, 318f
312:              add          t2, a1, a2
                  slti         a0, t1, -285
                  sra          t5, t4, s3
                  srli         ra, s3, 4
316:              addi         s6, t0, -2035
                  srli         a6, a4, 22
318:              sub          s5, a4, a5
                  bgeu         s3, t3, 338f
                  srai         s2, s10, 28
                  bltu         s0, t1, 338f
                  srl          a2, t1, a0
                  bgeu         s9, a4, 325f
                  ori          a5, gp, 810
325:              sltiu        a5, tp, 1821
                  beq          t6, s11, 345f
                  beq          t2, sp, 329f
                  blt          zero, sp, 333f
329:              lui          a5, 965761
                  lui          t4, 895558
                  bne          s6, s0, 340f
                  auipc        s7, 499304
333:              slt          gp, a1, t6
                  bltu         s0, a0, 336f
                  slti         s0, a6, 307
336:              add          a0, s2, s11
                  bne          a7, s1, 344f
338:              srli         tp, zero, 9
                  sltiu        s4, s11, 1080
340:              or           s5, gp, s7
                  sltiu        s2, s2, 221
                  sltu         a2, s1, a0
                  auipc        ra, 538101
344:              blt          sp, s2, 360f
345:              bne          a7, a0, 359f
                  bne          t5, a6, 358f
                  xori         s7, a7, -974
                  nop
                  addi         a1, s7, 1820
                  sltu         s6, t1, a0
                  sll          s5, s5, s0
                  sub          t1, s5, s9
                  xori         t2, zero, 179
                  addi         s2, s3, -429
                  or           t3, a5, a0
                  beq          ra, s3, 373f
                  lui          s0, 214053
358:              srai         t3, s5, 26
359:              beq          a2, s0, 364f
360:              sll          gp, ra, s3
                  slt          a7, t6, a2
                  lui          a7, 669732
                  lui          t2, 692786
364:              srl          a3, s6, s9
                  sltu         zero, s10, ra
                  bltu         t0, ra, 367f
367:              nop
                  srai         t1, s8, 31
                  slti         t1, a7, -1872
                  sltu         t2, s3, s0
                  lui          s0, 122709
                  srai         zero, a0, 23
373:              bltu         a4, a0, 389f
                  bne          s8, t5, 383f
                  lui          ra, 727054
                  beq          t0, s7, 388f
                  bge          a7, a1, 389f
                  sub          a2, t2, t4
                  bgeu         sp, a2, 386f
                  blt          a1, t3, 399f
                  sub          s6, s5, s2
                  bgeu         s6, ra, 386f
383:              and          a1, s6, ra
                  srai         s0, t3, 26
                  srai         sp, s8, 21
386:              nop
                  blt          s1, a3, 406f
388:              xori         t3, s9, -1670
389:              bgeu         a1, a5, 408f
                  ori          t2, t0, 1218
                  and          s3, s7, sp
                  add          s6, s3, t5
                  ori          s4, a6, -2034
                  srli         t1, a3, 5
                  blt          a4, a1, 412f
                  srli         s6, s1, 19
                  blt          ra, a4, 407f
                  bgeu         ra, s7, 404f
399:              sll          a1, a5, sp
                  nop
                  bge          t3, tp, 403f
                  beq          s0, ra, 413f
403:              sub          gp, a0, s6
404:              ori          tp, t2, 1879
                  sltu         s11, s8, s8
406:              sll          zero, t3, a4
407:              lui          s10, 834448
408:              nop
                  sltiu        ra, a1, 142
                  addi         s5, a6, 261
                  sltu         a6, s10, t2
412:              sll          s2, s4, s5
413:              srl          s4, s2, t3
                  srli         t0, gp, 6
                  beq          t2, s3, 423f
                  xori         t3, a7, 1079
                  srli         t5, s9, 10
                  sra          t0, a7, sp
                  nop
                  bltu         a0, t1, 423f
                  bne          tp, s3, 423f
                  slt          t3, a4, zero
423:              add          t2, a0, s0
                  slli         s11, a0, 9
                  slt          a0, t6, zero
                  lw           s2, 4(a4)
                  sltu         t3, t0, s7
                  sltu         s5, a1, sp
                  addi         a4, a4, 40
                  andi         s6, s6, 217
                  or           a3, a5, s6
                  or           s10, a3, t0
                  and          t6, t4, a2
                  andi         a5, t5, -678
                  srli         gp, s1, 18
583:              addi x28, x18, 1
583:              jalr x28, x28, 0
sub_6:            or           s0, a3, gp
                  add          a6, a5, s11
                  or           t2, s3, a4
                  addi         a4, a4, -60
                  xori         s3, s3, -1997
                  xor          t1, s9, t2
                  srai         t3, a3, 25
                  sw           s2, 4(a4)
                  ori          gp, a0, -123
                  sub          a0, tp, gp
                  xor          s3, a7, zero
                  la           t0, sub_7
                  add          a2, s7, s4
                  lui          t2, 728092
                  sll          a0, gp, t4
                  addi         t0, t0, 593
                  sll          a5, a6, t2
                  bltu         t5, s6, sub_6_j9 #branch to jump instr
                  xor          a2, s10, a3
sub_6_j9:         jalr         s2, t0, -592 #jump sub_6 -> sub_7
                  nop
                  srli         s10, t0, 26
                  la           t1, sub_7
                  sra          a2, s5, a4
                  lui          s4, 246647
                  or           a5, a2, s4
                  srai         a0, tp, 10
                  sll          s1, t6, a5
                  sltiu        a2, a7, 105
                  addi         t1, t1, -81
                  ori          t0, a3, -27
sub_6_j10:        jalr         s2, t1, 81 #jump sub_6 -> sub_7
                  ori          s11, s7, -1712
                  addi         s10, s2, 1047
                  beq          t6, ra, 9f
                  sra          s11, s0, a7
                  bne          t2, t3, 8f
                  sltu         s1, s5, a3
                  sll          a3, t6, s7
                  addi         s2, a7, 439
8:                sltiu        a3, s7, -1474
9:                blt          t1, s3, 10f
10:               andi         s11, sp, -1888
                  ori          t0, a3, -1610
                  lui          a5, 811263
                  addi         t2, s10, -646
                  ori          ra, s4, 1184
                  lw           s2, 4(a4)
                  addi         a4, a4, 60
                  slt          gp, a1, ra
                  xori         t1, t1, 262
                  xori         a3, a0, 834
52:               addi x11, x18, 1
52:               jalr x11, x11, 0
sub_8:            addi         a4, a4, -12
                  andi         s5, t6, -1780
                  add          s5, t4, s9
                  slti         s4, s6, -1308
                  sw           s2, 4(a4)
                  xor          s1, ra, gp
                  la           s4, region_0+1870 #start riscv_load_store_rand_instr_stream_2
                  nop
                  and          a7, s3, tp
                  lb           sp, -3(s4)
                  lhu          s7, -16(s4)
                  srli         t1, a1, 13
                  lb           s7, -6(s4)
                  lbu          a3, -1(s4)
                  sb           t0, 13(s4)
                  add          a7, sp, ra
                  srai         s7, a5, 4
                  xor          s10, s10, zero
                  sw           tp, 6(s4)
                  lbu          a5, -13(s4)
                  auipc        s0, 216777
                  addi         s0, s7, 590
                  ori          a3, t1, 702
                  lbu          s7, 0(s4)
                  sh           a0, 14(s4)
                  lb           a6, -11(s4)
                  lh           t2, -16(s4)
                  xori         t6, zero, 299
                  lbu          sp, 1(s4)
                  sb           s8, -13(s4)
                  sw           s6, -14(s4)
                  sub          t2, a2, t3
                  sw           s4, 2(s4)
                  lb           zero, -15(s4)
                  sb           s2, 6(s4)
                  sb           s0, 1(s4)
                  sb           s8, 5(s4)
                  lh           a7, -8(s4)
                  add          a1, sp, a7
                  lb           a5, -4(s4)
                  lbu          s0, -12(s4)
                  lbu          s0, 5(s4)
                  lhu          t2, 2(s4)
                  lb           t0, -13(s4)
                  sb           a0, -13(s4)
                  srli         s1, t4, 18
                  lb           tp, 2(s4) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_1+509 #start riscv_load_store_rand_instr_stream_3
                  sltiu        tp, a7, -1628
                  lb           s11, -141(sp)
                  srai         s10, s2, 8
                  lb           s11, 172(sp)
                  andi         a6, t5, 1156
                  sra          t4, a5, s0
                  srli         t0, a7, 19
                  lb           s5, -154(sp)
                  sw           a6, 131(sp)
                  sh           t1, -165(sp)
                  lbu          ra, 175(sp)
                  lbu          s0, 100(sp)
                  xori         s4, a0, -2003
                  xori         a7, s2, -549
                  srli         a1, s1, 3
                  lb           a2, -231(sp)
                  lbu          s4, -81(sp)
                  lui          tp, 753527
                  andi         s6, s6, 259
                  xor          s4, s7, t1
                  lbu          t2, 174(sp)
                  srai         s5, t4, 0
                  sb           s4, -6(sp)
                  srai         s11, s4, 31
                  slti         a6, s2, -1848
                  or           t5, s2, gp
                  lui          s11, 147913
                  lb           a0, -95(sp)
                  lb           s4, -23(sp)
                  sra          a6, s9, t5
                  lbu          a1, 143(sp) #end riscv_load_store_rand_instr_stream_3
                  la           t5, region_0+990 #start riscv_load_store_rand_instr_stream_1
                  lb           a0, -21(t5)
                  lb           s10, 31(t5)
                  sb           a2, -42(t5)
                  lbu          gp, -28(t5)
                  lw           s4, 58(t5)
                  sltu         zero, t4, a2
                  sb           a7, 60(t5)
                  lbu          tp, 26(t5)
                  xori         a6, t3, -1873
                  lbu          t3, 19(t5)
                  addi         a1, t0, 1090
                  lb           a1, 44(t5)
                  ori          s1, zero, -415
                  addi         s3, s5, 811
                  sb           a4, 17(t5)
                  andi         a6, a1, 1468
                  lbu          a7, 51(t5)
                  sltu         s6, a4, a4
                  lb           ra, -49(t5)
                  sw           t1, 10(t5)
                  lbu          a5, 53(t5)
                  sra          s11, gp, a2
                  lbu          a5, 24(t5)
                  sb           a5, 61(t5)
                  add          t6, t1, s10
                  auipc        a5, 419648
                  andi         a7, a0, -1765
                  srl          s2, sp, tp
                  lhu          s2, -50(t5)
                  ori          sp, s1, 1179
                  lhu          zero, -40(t5)
                  lh           a7, -56(t5)
                  sh           a5, 48(t5)
                  add          a7, s2, s10
                  or           a3, s2, tp
                  andi         t6, s6, -1510
                  xori         a2, a7, -364
                  sb           s7, -20(t5) #end riscv_load_store_rand_instr_stream_1
                  la           s7, region_1+186 #start riscv_load_store_rand_instr_stream_4
                  lbu          s11, 8(s7)
                  srli         s6, s5, 26
                  lbu          t3, 13(s7)
                  lbu          a1, 3(s7)
                  lh           a1, -10(s7)
                  lh           t4, 8(s7)
                  lhu          s1, -10(s7)
                  and          s10, s11, s5
                  lbu          gp, 6(s7)
                  or           t0, t6, a5
                  slt          tp, a0, s1
                  or           a0, a4, s10
                  auipc        a2, 92596
                  nop
                  sb           a7, 5(s7)
                  lui          sp, 956870
                  or           sp, s8, s1
                  sb           a5, -16(s7)
                  sh           t2, -14(s7)
                  ori          s2, t0, -1078
                  sub          a2, a1, a5
                  nop
                  lb           t2, -9(s7)
                  sltu         t6, t0, ra
                  slt          a2, ra, s0
                  ori          s0, s0, -552
                  lb           gp, -5(s7)
                  or           s2, a3, s10
                  lh           s0, 4(s7) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_0+1630 #start riscv_load_store_rand_instr_stream_0
                  lb           a6, -1625(sp)
                  lb           s11, -245(sp)
                  sb           t6, -198(sp)
                  sll          t6, s6, s6
                  nop
                  slli         t1, t0, 10
                  sb           ra, -1387(sp)
                  lbu          s11, -458(sp)
                  sub          a1, ra, a4
                  lbu          gp, -585(sp)
                  srli         a7, a6, 5
                  sw           s11, 310(sp)
                  slt          s11, s10, a2
                  sb           a6, -571(sp)
                  slli         ra, s8, 7
                  lb           a5, 317(sp)
                  lhu          s6, 200(sp)
                  lbu          ra, -1209(sp)
                  xori         zero, s10, 819
                  lbu          a7, -667(sp)
                  srl          gp, t3, a0
                  slt          s2, t1, t3
                  sll          s0, sp, t4
                  sll          s4, tp, s7
                  lbu          a7, -580(sp)
                  sw           t4, -1526(sp)
                  lhu          s1, 206(sp)
                  slli         gp, a5, 30
                  sub          a1, s2, t4
                  sb           t6, 207(sp)
                  sb           s0, -308(sp) #end riscv_load_store_rand_instr_stream_0
                  ori          ra, s0, -1930
                  and          a5, a0, tp
                  xori         tp, t2, -506
                  slt          t4, gp, s0
                  or           s5, sp, s5
                  sltu         s3, s8, t6
                  srai         sp, sp, 2
                  andi         zero, t1, -307
                  bgeu         a1, s8, 27f
                  bgeu         s0, a4, 12f
                  xori         t5, s11, -859
                  srl          t1, a6, gp
12:               srli         s1, sp, 0
                  slli         s7, a6, 26
                  bltu         a5, a2, 34f
                  and          s11, s11, zero
                  sra          s1, s7, s8
                  and          s11, t6, s6
                  lui          t3, 794595
                  xori         t3, zero, 1212
                  srli         t3, t3, 12
                  lui          s5, 1020177
                  slti         t0, a7, -174
                  blt          s7, gp, 30f
                  bgeu         ra, s3, 33f
                  srai         t1, gp, 8
                  lui          s4, 345683
27:               add          t2, s0, s8
                  nop
                  nop
30:               addi         a1, a2, -783
                  bge          t4, s10, 35f
                  srli         s2, t5, 2
33:               bge          s10, t0, 45f
34:               auipc        t6, 254543
35:               and          s6, s2, s3
                  xori         s4, s11, -1027
                  andi         a1, zero, -525
                  sltu         t4, t2, s1
                  ori          a0, a0, 515
                  blt          s5, zero, 47f
                  bgeu         s8, ra, 55f
                  or           t0, a5, t6
                  slli         s3, s10, 12
                  bne          s7, a2, 61f
45:               slt          a6, zero, t0
                  srli         s7, t2, 16
47:               srai         a6, s7, 31
                  slli         ra, sp, 28
                  auipc        gp, 704539
                  ori          t1, s5, -399
                  slt          s2, gp, s11
                  nop
                  srl          s10, s5, t5
                  srli         t2, s0, 30
55:               bge          a0, s11, 60f
                  and          a1, t3, s10
                  sra          t6, s10, s10
                  sub          t6, t2, s8
                  srai         t6, gp, 7
60:               nop
61:               xor          s1, s6, s9
                  lui          t2, 880271
                  add          ra, gp, s2
                  sub          s4, t5, t3
                  andi         a3, t5, 627
                  add          s4, a2, a3
                  srli         ra, s11, 11
                  xor          t1, a1, sp
                  bne          s10, zero, 77f
                  ori          a3, t2, 1304
                  sll          a1, a5, gp
                  blt          a6, s4, 90f
                  xori         s11, t2, 840
                  lui          a2, 884119
                  sltiu        s10, s5, 1970
                  slti         t1, t2, 1739
77:               blt          ra, s2, 97f
                  or           t5, t1, s11
                  sub          t2, a5, a7
                  andi         zero, a7, 1321
                  sub          s5, s4, a1
                  slti         s11, s10, 1446
                  sll          ra, ra, s10
                  and          s0, s7, s5
                  xori         t5, a1, 1291
                  srai         gp, t1, 2
                  add          t4, ra, t1
                  lui          zero, 878083
                  sltu         tp, s0, a0
90:               srli         a2, s8, 5
                  bne          s8, s0, 104f
                  nop
                  blt          s7, ra, 103f
                  srai         t2, a0, 26
                  sra          s6, zero, s9
                  slt          a5, s7, s4
97:               add          s7, ra, s1
                  add          t2, a4, sp
                  sra          s10, s11, t6
                  xor          s10, t3, sp
                  sltu         s5, s9, zero
                  sub          t0, t2, t0
103:              slli         s2, a0, 30
104:              beq          zero, t2, 121f
                  xori         s0, sp, -1917
                  addi         a2, t1, 1285
                  and          a7, s4, t4
                  srli         t1, t1, 29
                  sltu         s5, s7, t4
                  lui          zero, 115134
                  bge          s3, gp, 118f
                  sltiu        s0, a3, -981
                  or           tp, sp, t0
                  andi         s5, a4, 187
                  sll          t3, tp, a7
                  addi         t6, t6, -820
                  blt          a3, s2, 131f
118:              beq          gp, s1, 137f
                  sltu         t6, ra, a5
                  lui          a5, 541887
121:              lui          a2, 760066
                  xori         t1, a0, 399
                  slt          s3, a3, s2
                  xori         t2, s11, 1167
                  blt          a7, s2, 137f
                  xor          t1, s9, t2
                  xori         s0, ra, 264
                  add          s6, s8, s10
                  sll          t4, gp, s3
                  srai         t1, s2, 6
131:              blt          s10, s9, 145f
                  beq          gp, a6, 150f
                  sub          s1, s10, a6
                  sub          a2, a0, a4
                  sra          gp, a5, t4
                  addi         t2, a1, -156
137:              lui          ra, 1027956
                  xori         s6, tp, -1310
                  bge          s9, a7, 145f
                  xori         t2, gp, 137
                  slt          s2, s11, gp
                  xor          s6, a2, t2
                  bgeu         a3, a2, 154f
                  bgeu         a7, zero, 147f
145:              slti         s6, a6, -1955
                  bltu         s11, a7, 158f
147:              addi         s4, s3, 1196
                  bne          t3, zero, 151f
                  sltu         a2, a5, t0
150:              andi         s6, s0, 1327
151:              beq          a1, s10, 165f
                  srai         t0, tp, 31
                  andi         s4, s0, 1419
154:              bltu         t1, a7, 164f
                  add          zero, a7, t0
                  bne          a3, t3, 159f
                  slli         t6, zero, 15
158:              slti         t6, zero, 1575
159:              and          s1, s1, a6
                  srai         a6, t6, 27
                  slti         t1, sp, -998
                  addi         a2, t1, -1885
                  auipc        s5, 913575
164:              and          s11, s11, a5
165:              sub          s10, s9, s3
                  bltu         s4, gp, 186f
                  srli         a0, a3, 8
                  xori         s0, t5, 1295
                  blt          ra, s8, 179f
                  beq          s7, t5, 173f
                  bltu         zero, a4, 188f
                  slti         a6, a1, 1977
173:              sltu         t2, a1, a2
                  bgeu         a0, t6, 179f
                  slli         s11, a6, 29
                  slti         s11, t1, -594
                  ori          gp, s11, -806
                  bge          s11, t2, 191f
179:              nop
                  add          gp, a0, a5
                  bne          s5, t6, 190f
                  andi         ra, s0, 93
                  srl          gp, s5, t0
                  xor          t4, ra, t3
                  or           s1, t3, s7
186:              bgeu         a0, t1, 192f
                  nop
188:              auipc        a6, 876946
                  srai         a5, t0, 7
190:              sll          a5, s2, t6
191:              andi         t5, s4, 256
192:              beq          t0, sp, 199f
                  addi         s5, a4, -598
                  bge          a2, gp, 212f
                  bgeu         s8, s2, 198f
                  and          s0, s9, a7
                  andi         a0, sp, 356
198:              nop
199:              auipc        s6, 335710
                  slti         s5, s7, 63
                  bge          s7, s5, 211f
                  lui          s1, 617695
                  sltu         a0, ra, sp
                  srli         t1, s2, 12
                  sltu         a0, s5, t3
                  bge          a0, s5, 218f
                  auipc        t2, 508521
                  bne          s4, a1, 219f
                  xori         t1, s0, -596
                  addi         t1, t0, 551
211:              auipc        a3, 801363
212:              bltu         s8, t2, 226f
                  auipc        a3, 488595
                  auipc        a1, 398913
                  slt          t3, s4, s6
                  andi         s4, s7, -750
                  ori          t4, a2, 1013
218:              auipc        s5, 561540
219:              addi         tp, s1, -942
                  sra          t0, s3, s0
                  or           s1, t5, tp
                  nop
                  sll          s7, s10, t4
                  add          t6, s7, ra
                  bge          t4, ra, 237f
226:              xor          t2, a2, a3
                  sll          a0, s8, s7
                  addi         s4, s2, -1854
                  lui          t0, 397878
                  auipc        sp, 284383
                  sltu         t1, s5, a4
                  slli         t4, t0, 23
                  slt          s2, a7, tp
                  slt          s3, s1, s2
                  beq          gp, t4, 239f
                  beq          s9, s6, 255f
237:              beq          s4, s1, 251f
                  xori         s1, t0, 2040
239:              slti         t2, s11, 212
                  slti         a3, a3, 172
                  slt          t1, s4, t5
                  bgeu         ra, a2, 262f
                  nop
                  bltu         s6, zero, 251f
                  xor          s1, t0, s0
                  and          a5, t5, s0
                  or           gp, t1, a4
                  srl          t4, s11, s3
                  bge          s7, s1, 263f
                  xori         zero, t4, -535
251:              addi         s4, t2, 1667
                  slti         s2, s2, -321
                  bgeu         t3, ra, 270f
                  auipc        a2, 357992
255:              addi         a5, t1, -104
                  xori         t3, s2, 1294
                  xor          t3, a1, s11
                  blt          a4, sp, 276f
                  srai         a3, s2, 8
                  srli         s0, zero, 5
                  slli         s2, s6, 14
262:              sll          s1, s9, t3
263:              or           s2, ra, s6
                  sll          zero, s0, s9
                  or           gp, s5, t2
                  bgeu         t2, s0, 280f
                  sub          s7, a5, t1
                  bge          tp, t2, 287f
                  slli         s3, s5, 30
270:              slt          s2, sp, s11
                  slti         s2, s8, 956
                  add          t6, s7, s2
                  srl          s7, t5, a6
                  sltu         s4, t4, s3
                  addi         t1, s0, 734
276:              bne          t0, a2, 284f
                  or           ra, a1, s7
                  srli         s4, s7, 18
                  or           s6, sp, t5
280:              sub          ra, t3, a7
                  nop
                  ori          s3, s0, -195
                  ori          ra, a0, -1459
284:              sra          zero, a5, t3
                  srli         t3, s5, 13
                  auipc        s4, 167936
287:              slli         gp, t4, 24
                  bne          t2, s2, 300f
                  blt          t4, s6, 296f
                  sltiu        t5, t5, -1114
                  xori         s10, s0, -752
                  bne          s7, s2, 298f
                  sub          s1, s9, s9
                  slli         a6, tp, 8
                  sll          t1, t3, a0
296:              bgeu         a3, t4, 308f
                  xori         t5, s3, 1268
298:              add          a5, t3, t3
                  srai         ra, gp, 26
300:              andi         t2, a1, 1704
                  nop
                  sltu         t1, a4, s9
                  srai         a6, t6, 9
                  bne          a2, t1, 322f
                  auipc        ra, 1006414
                  beq          s4, s10, 311f
                  srl          a7, s3, sp
308:              sra          ra, s9, s3
                  slli         s2, s3, 13
                  srl          t1, s1, s10
311:              beq          t0, s6, 325f
                  and          a6, a7, s11
                  bltu         a0, s3, 323f
                  srli         a7, t0, 14
                  auipc        t1, 208364
                  add          t4, s9, a5
                  srl          t4, a4, a5
                  slti         s3, s1, 652
                  auipc        s6, 265408
                  bne          a0, sp, 339f
                  slt          a6, a6, s11
322:              bne          s9, t1, 326f
323:              add          a1, a1, t1
                  bge          tp, s0, 336f
325:              sltu         t3, sp, s11
326:              bne          s9, a7, 343f
                  slt          tp, s9, s10
                  lui          s10, 312664
                  srai         ra, s6, 27
                  andi         t6, t2, -1919
                  sll          s3, s2, sp
                  andi         s4, s4, 1497
                  auipc        a5, 656451
                  bltu         t3, t3, 348f
                  bltu         s10, s10, 342f
336:              add          t0, t5, a3
                  xori         sp, t5, -1378
                  and          t3, t4, sp
339:              srai         sp, s4, 24
                  xor          sp, s6, ra
                  slli         s7, s1, 22
342:              add          a2, t5, s2
343:              bltu         a5, a7, 355f
                  sll          s10, s5, zero
                  slt          s10, sp, sp
                  slli         s11, a7, 24
                  sub          s5, a5, s8
348:              sltiu        s0, s8, 281
                  bne          tp, t6, 366f
                  lui          s2, 699452
                  sub          t0, a3, t6
                  lui          tp, 155208
                  sub          a5, t4, a1
                  srai         zero, s1, 2
355:              add          tp, s0, a3
                  sll          a7, s5, a2
                  sub          s5, t1, s0
                  srai         a1, t0, 23
                  ori          a6, a0, 281
                  sra          t2, s5, a6
                  srli         s6, t3, 0
                  sll          a5, s5, s2
                  slli         t1, a0, 19
                  sll          s0, s6, sp
                  bltu         t1, a3, 372f
366:              addi         zero, t6, -828
                  slti         t5, s5, -1334
                  blt          ra, sp, 381f
                  xor          a1, s3, a5
                  or           s5, s11, gp
                  srli         tp, sp, 9
372:              nop
                  srli         t1, s3, 11
                  slli         s4, s6, 26
                  blt          tp, zero, 395f
                  beq          ra, a3, 385f
                  sub          a6, t3, t2
                  slli         t6, a7, 29
                  nop
                  xor          s1, a5, a5
381:              srli         sp, zero, 30
                  bgeu         s8, s6, 393f
                  sltu         a6, a1, s6
                  bgeu         t3, s0, 392f
385:              srl          a7, a4, t1
                  slt          s0, tp, t5
                  add          a6, t0, gp
                  bne          a4, t4, 408f
                  slli         s2, s5, 26
                  blt          s5, s5, 404f
                  srai         s10, a7, 16
392:              and          t1, s6, a0
393:              blt          s1, t3, 411f
                  bgeu         s4, t5, 401f
395:              srl          a1, s6, a3
                  slli         t0, a6, 24
                  sub          zero, s0, a6
                  lui          s4, 552771
                  bgeu         t1, t6, 418f
                  addi         t0, t6, -427
401:              xor          tp, tp, s8
                  or           a3, s9, tp
                  sltu         gp, s10, s2
404:              slti         a5, a1, -1182
                  slt          zero, s7, a3
                  blt          a4, s0, 416f
                  auipc        s10, 695741
408:              srl          s0, s6, tp
                  add          a1, t6, t0
                  bne          t0, s10, 413f
411:              and          s7, a6, a4
                  srli         tp, s4, 0
413:              sub          t2, a3, s7
                  xor          t5, a2, t5
                  srli         a1, a7, 18
416:              srl          a6, t3, ra
                  bgeu         t1, s3, 420f
418:              sra          gp, a4, s10
                  slli         t5, sp, 3
420:              add          t0, gp, t2
                  slt          s1, s11, s5
                  sltu         s5, zero, a0
                  bge          a6, t3, 426f
                  and          t0, s4, t5
                  addi         t5, s1, 74
426:              sra          s7, s2, s10
                  sll          s10, t6, gp
                  ori          a3, t0, -1239
                  auipc        t0, 298025
                  xori         s1, t0, 1518
                  auipc        ra, 722157
                  srl          ra, zero, tp
                  slli         s5, gp, 7
                  addi         t2, tp, 1186
                  add          s11, t4, s8
                  slt          zero, a3, t4
                  nop
                  srl          s2, t4, s8
                  srli         gp, s7, 8
                  auipc        s2, 568907
                  srai         zero, s9, 28
                  bge          gp, sp, 456f
                  bne          s7, t2, 457f
                  srli         t1, s2, 11
                  srl          a7, t6, s6
                  sltiu        s1, s7, 1382
                  lui          zero, 193163
                  sltiu        sp, tp, 1591
                  bge          s10, t1, 458f
                  slli         s11, a6, 1
                  sltu         s3, t4, s7
                  bgeu         a1, t4, 457f
                  xori         s10, t6, 1079
                  blt          s6, a0, 474f
                  bne          t3, t0, 467f
456:              bgeu         t4, s10, 463f
457:              sll          s0, zero, s11
458:              andi         t0, s1, -1912
                  slli         ra, ra, 25
                  sltu         ra, t1, s2
                  sltiu        t0, tp, 1404
                  xor          zero, s5, a5
463:              bge          a0, s8, 466f
                  sra          s7, zero, t2
                  xori         s7, a4, -225
466:              slti         a3, t3, 1149
467:              sltiu        t3, s6, -1655
                  auipc        t0, 922594
                  add          t0, a1, s5
                  srai         tp, s4, 26
                  srli         s4, a6, 24
                  slti         t6, s0, 932
                  slli         s4, a5, 23
474:              srli         t6, s2, 21
                  blt          s10, s7, 478f
                  srai         s3, a3, 30
                  slli         s6, s3, 27
478:              add          a0, t2, t1
                  ori          s4, a3, -1870
                  and          a0, s5, a6
                  sub          a1, a6, a6
                  add          s6, sp, a4
                  and          t5, a0, t2
                  lui          s3, 813033
                  srai         a1, s9, 23
                  srai         a6, ra, 28
                  srl          t0, tp, s1
                  sltiu        s7, s2, -1621
                  addi         t5, t1, -254
                  andi         a2, s10, 1603
                  or           s2, a0, a3
                  xori         a5, t2, -364
                  sll          a1, s10, s4
                  ori          s2, zero, 1059
                  sll          s3, sp, a7
                  add          t3, s5, t6
                  or           s6, t4, s3
                  sltiu        t2, t4, -1168
                  or           a6, t5, s1
                  blt          s0, a2, 520f
                  sltu         sp, gp, a7
                  xor          sp, t2, ra
                  xor          tp, t2, t2
                  ori          tp, a3, 1920
                  sltu         s0, s8, s4
                  or           s4, a7, t6
                  slli         a0, tp, 3
                  sltu         t4, s2, t0
                  addi         gp, t2, -304
                  nop
                  blt          a3, s1, 528f
                  sll          gp, a5, ra
                  slti         a3, a4, 1549
                  ori          a0, s3, -1175
                  add          tp, gp, t5
                  sra          s2, t0, tp
                  and          tp, s5, s4
                  addi         gp, s7, -1712
                  sub          s10, s5, t4
520:              bge          s3, a6, 533f
                  sltiu        t3, tp, 26
                  bge          s7, s9, 526f
                  auipc        s0, 197923
                  slli         ra, t1, 14
                  slti         sp, s8, 503
526:              add          s7, s4, a6
                  or           ra, s6, a5
528:              addi         sp, t3, -1276
                  and          s7, a7, s4
                  slt          s4, s1, t6
                  blt          s4, t2, 549f
                  andi         s4, a5, -1324
533:              beq          s2, t6, 552f
                  bne          a1, s8, 537f
                  srl          a1, a3, t3
                  auipc        tp, 893125
537:              blt          a0, t3, 549f
                  or           a1, s9, a0
                  ori          s10, ra, 1415
                  add          s0, t2, t4
                  add          s1, a5, t2
                  slli         a2, gp, 5
                  lui          t0, 1006027
                  lui          s7, 803980
                  ori          a7, t6, -77
                  bne          tp, t3, 560f
                  slt          s0, sp, a6
                  and          t4, t5, a2
549:              slli         s3, s4, 23
                  slti         s1, s8, -1547
                  srai         t3, a4, 27
552:              slt          a5, zero, s0
                  sll          a0, s7, a3
                  bge          s6, a2, 566f
                  nop
                  sltu         s3, a2, t1
                  bltu         s11, t0, 568f
                  nop
                  or           s3, s9, t0
560:              addi         s7, t4, 181
                  xori         s6, s11, -1337
                  bne          s10, t3, 581f
                  ori          s5, s1, 1022
                  lui          gp, 410040
                  sltu         s4, a1, a5
566:              auipc        s5, 597054
                  slti         sp, t3, -260
568:              auipc        s10, 453172
                  and          s2, zero, s2
                  xor          s4, ra, sp
                  and          s11, t2, s5
                  lui          gp, 995982
                  ori          t0, s2, 218
                  ori          s2, s8, 1929
                  bne          t6, t6, 592f
                  xori         s2, t5, 933
                  auipc        s6, 246855
                  sub          s11, s5, a6
                  bge          tp, a6, 586f
                  and          a6, s11, t1
581:              lui          a0, 774698
                  xor          s11, t5, sp
                  blt          sp, s11, 589f
                  xori         t0, s2, -155
                  add          t2, a1, s9
586:              nop
                  sltiu        s0, a6, -936
                  slti         ra, s11, -1942
589:              slli         s2, s8, 20
                  nop
                  sll          s4, s11, s4
592:              sll          s7, s3, s9
                  xori         s7, t2, 1895
                  auipc        a6, 223143
                  blt          t6, a4, 603f
                  srl          t3, a7, s10
                  and          sp, s2, a2
                  ori          s0, a4, -2010
                  srl          ra, a3, t6
                  lui          s7, 827098
                  beq          t3, sp, 608f
                  addi         s5, a6, -901
603:              srli         s6, a5, 16
                  sll          sp, s6, s1
                  srli         s2, sp, 3
                  srli         tp, s9, 10
                  bgeu         t5, s3, 625f
608:              blt          a3, s2, 618f
                  ori          ra, a0, 1364
                  sltiu        s10, s1, 697
                  beq          a2, t2, sub_8_j14 #branch to jump instr
                  slti         a1, gp, -1723
                  nop
                  xor          s1, ra, ra
                  sra          ra, s10, s7
                  srli         t4, t1, 27
                  xor          ra, tp, t3
                  srai         s0, t2, 25
                  slti         tp, a3, -137
sub_8_j14:        jal          s2, sub_10 #jump sub_8 -> sub_10
                  bne          a2, s3, 619f
                  bge          a5, s9, 624f
                  bltu         tp, a6, 625f
                  bltu         zero, a0, 619f
                  bgeu         s3, a0, 618f
                  or           t2, s0, s5
                  addi         gp, t0, -194
                  srai         a5, s4, 16
                  add          tp, s4, a3
618:              srai         t2, t5, 9
619:              ori          a2, s2, -703
                  srai         a0, zero, 5
                  srai         gp, s2, 14
                  add          s2, sp, s6
                  nop
624:              xori         s3, s1, -157
625:              auipc        a2, 358169
                  xori         s1, t0, 1145
                  srl          t4, zero, t5
                  addi         s3, a6, -1409
                  addi         s0, a7, -1724
                  lui          zero, 556955
                  beq          s0, t4, 644f
                  sltu         a3, s6, s10
                  sra          t4, sp, a3
                  slli         a0, a1, 9
                  bgeu         t0, tp, 642f
                  bltu         a7, t3, 645f
                  bgeu         a5, s8, 647f
                  bgeu         t5, s4, 652f
                  slti         zero, s5, -1637
                  srli         t4, s9, 5
                  andi         a2, a2, -157
642:              srai         a1, t5, 10
                  bgeu         tp, s4, 655f
644:              xori         s4, a1, 1278
645:              xor          a7, s7, a6
                  xor          s6, s6, sp
647:              xor          t1, t3, s10
                  add          a7, a5, s8
                  srli         t4, a3, 5
                  or           t6, t3, s3
                  blt          a7, gp, 654f
652:              beq          s1, t1, 655f
                  sltiu        s0, t4, 42
654:              xor          ra, a1, a0
655:              lui          a0, 276309
                  ori          t1, s7, -1446
                  srai         t2, t6, 0
                  nop
                  slt          t2, t6, gp
                  or           t6, s9, s0
                  xor          t3, s3, a2
                  add          gp, s7, s5
                  lw           s2, 4(a4)
                  slli         a7, s7, 30
                  lui          s4, 826380
                  ori          a0, s6, 701
                  srl          a6, s5, a7
                  and          t2, t4, s7
                  sltu         t5, s8, t6
                  addi         a4, a4, 12
                  or           s3, s0, zero
                  nop
865:              addi x6, x18, 0
865:              jalr x6, x6, 0
sub_5:            addi         a4, a4, -60
                  ori          gp, s5, 1179
                  ori          a7, sp, -106
                  sw           s2, 4(a4)
                  ori          s10, t2, -1458
                  andi         tp, s7, 1951
                  bltu         zero, t3, 20f
                  bge          t4, t4, 10f
                  slti         a2, s7, 723
                  srl          ra, gp, s6
                  addi         t6, a2, -1926
                  lui          zero, 630543
                  srai         s4, s2, 12
                  sltu         a3, s2, s4
                  sltiu        t3, a5, -1279
10:               beq          s8, s2, 19f
                  beq          t6, sp, 28f
                  bne          tp, a5, 20f
                  or           t5, s9, a7
                  auipc        s11, 35324
                  srai         t1, t6, 26
                  sltu         s3, a6, tp
                  ori          t3, s3, 816
                  xori         sp, s10, 1588
19:               and          s11, a1, a3
20:               addi         a2, s0, -1664
                  add          a1, s9, s5
                  bne          ra, a2, 34f
                  slti         t0, tp, -675
                  sll          a2, a7, s1
                  andi         ra, a4, 598
                  sub          a1, s11, a2
                  sra          a5, s5, s11
28:               slt          tp, s1, s4
                  slt          s5, t2, s7
                  or           t5, gp, s0
                  addi         t0, zero, 1312
                  sltu         s1, s8, a0
                  bge          a7, a2, 34f
34:               slt          t6, a5, ra
                  nop
                  ori          t5, s10, 2006
                  lw           s2, 4(a4)
                  lui          s3, 820188
                  ori          t1, s3, -1123
                  add          s10, a7, zero
                  andi         a6, a6, 230
                  sltiu        tp, ra, -1897
                  sltiu        t6, s6, -175
                  ori          a1, t2, -643
                  addi         a4, a4, 60
                  sub          s5, t5, s1
52:               addi x16, x18, 1
52:               jalr x16, x16, 0
sub_10:           auipc        a0, 134263
                  srl          s11, a1, s4
                  addi         a4, a4, -56
                  xor          a2, t5, ra
                  nop
                  sw           s2, 4(a4)
                  srai         t6, a5, 5
                  sra          a5, zero, sp
                  la           tp, region_0+543 #start riscv_load_store_rand_instr_stream_2
                  srli         sp, a2, 2
                  sb           gp, -178(tp)
                  sll          s10, ra, a1
                  or           s7, ra, s3
                  sub          a7, t5, tp
                  sb           a7, 4(tp)
                  xori         s0, s7, -42
                  ori          s4, s7, 1052
                  xori         s6, s3, 653
                  sltiu        a5, t1, 1254
                  lh           a3, 57(tp)
                  sb           s6, -160(tp)
                  xor          s0, a7, ra
                  lui          s7, 340578
                  lhu          s11, 151(tp)
                  srl          a2, a7, t3
                  nop
                  srai         gp, s0, 3
                  slli         ra, a1, 8
                  sub          a3, s11, s10
                  andi         a3, a6, 1079
                  andi         a1, zero, 1143
                  lhu          gp, 93(tp)
                  auipc        s7, 380051
                  and          a6, a3, s6
                  lbu          sp, 242(tp)
                  lbu          s10, 50(tp)
                  lb           t2, 137(tp)
                  xor          gp, s8, t2
                  sb           t3, -148(tp) #end riscv_load_store_rand_instr_stream_2
                  la           a7, region_0+1472 #start riscv_load_store_rand_instr_stream_3
                  sltu         s2, s6, gp
                  lh           s10, 2(a7)
                  auipc        ra, 369989
                  lb           sp, 9(a7)
                  lbu          ra, -16(a7)
                  sltu         s6, a2, s4
                  srl          a1, s10, t5
                  sra          a1, t2, t0
                  srai         t6, s7, 5
                  sb           sp, -3(a7)
                  slti         a6, a5, 1399
                  sra          s10, a7, s10
                  lbu          s11, 11(a7)
                  srai         s7, s11, 6
                  sb           ra, -14(a7)
                  lbu          t1, -9(a7)
                  lh           a1, 6(a7)
                  srli         a6, s0, 27
                  sltiu        t4, t3, 1093
                  sltiu        s5, s5, 1850
                  sra          a3, ra, s8
                  lui          t2, 1019883
                  add          s3, a5, s8
                  sh           s9, -10(a7)
                  slt          a5, s6, t2
                  sb           a1, 15(a7)
                  sb           s5, 3(a7)
                  lb           t4, 13(a7)
                  sltu         t4, s2, t4
                  sb           a4, -14(a7)
                  srai         tp, a3, 26
                  lh           a0, 14(a7)
                  lh           s5, -2(a7)
                  sltiu        sp, s10, -1423
                  lbu          s10, 5(a7)
                  auipc        s6, 707657
                  sb           s10, 5(a7)
                  srai         t3, s3, 11
                  slli         s5, ra, 6
                  lbu          s7, -14(a7)
                  or           s11, a4, s2
                  srli         s4, a4, 27
                  lbu          t2, -11(a7)
                  lbu          s11, -15(a7)
                  nop
                  lb           t6, 7(a7)
                  sb           s2, -7(a7)
                  sub          s3, a0, t5
                  add          s3, a0, t2
                  sra          t6, t6, sp
                  lbu          a3, 14(a7) #end riscv_load_store_rand_instr_stream_3
                  la           a6, region_0+182 #start riscv_load_store_rand_instr_stream_0
                  lh           a1, 248(a6)
                  lbu          s11, 215(a6)
                  sh           s1, 124(a6)
                  slt          a7, a4, t0
                  sb           s10, 209(a6)
                  sltiu        sp, s2, 1989
                  sll          a3, a6, a5
                  lbu          t2, -62(a6)
                  sb           s4, -157(a6)
                  xori         t3, s5, 1708
                  sh           a5, -132(a6)
                  srai         s3, s6, 19
                  sw           s0, 226(a6)
                  srli         s0, a1, 16
                  nop
                  lb           a0, -77(a6)
                  srl          ra, s6, a5
                  lw           zero, 50(a6)
                  srai         t0, t0, 28
                  sb           gp, 253(a6)
                  srai         a7, ra, 10
                  sb           s5, 77(a6) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+1869 #start riscv_load_store_rand_instr_stream_6
                  srai         s11, t5, 9
                  sb           gp, 0(sp)
                  auipc        s7, 346342
                  srl          a5, s1, s8
                  lh           zero, -9(sp)
                  or           t1, s7, s6
                  slli         s10, s0, 14
                  lb           s0, 0(sp)
                  sra          s3, a3, t5
                  lb           s5, 14(sp)
                  ori          s10, gp, -910
                  auipc        s0, 628683
                  lb           a5, 10(sp)
                  srl          zero, tp, t6
                  sltu         s5, s3, a3
                  sb           a5, -4(sp)
                  lb           s3, 11(sp)
                  lbu          a7, -6(sp)
                  lhu          gp, -3(sp)
                  srli         zero, s3, 19
                  lb           s4, 8(sp)
                  srli         t5, s5, 28
                  srl          a5, t4, a2
                  sb           ra, 4(sp)
                  lb           t3, -7(sp)
                  sh           s5, 13(sp)
                  addi         tp, t0, 552
                  lb           s11, 11(sp)
                  xor          a6, s5, s4
                  and          s4, a3, s8
                  addi         t1, s3, -929
                  slt          s1, a6, t5
                  sltu         s11, s1, a3
                  lb           a3, 2(sp)
                  andi         s10, s4, 789
                  sltiu        s7, a2, -1225
                  nop
                  sltiu        ra, gp, 983
                  xori         a0, t1, -589
                  auipc        a6, 582645
                  xori         s11, a0, -2029
                  sltu         s2, t1, s3
                  slti         t6, t3, -977
                  sub          tp, a3, sp
                  slti         s7, a1, -1698
                  sb           a7, -12(sp) #end riscv_load_store_rand_instr_stream_6
                  la           sp, region_0+1437 #start riscv_load_store_rand_instr_stream_1
                  auipc        a7, 752519
                  lui          t0, 538080
                  lbu          s0, 365(sp)
                  slt          a0, s8, a7
                  andi         zero, a2, -271
                  lbu          a2, -290(sp)
                  sra          s11, s3, gp
                  xori         s1, a6, -445
                  lb           s4, 562(sp)
                  lbu          s3, -271(sp)
                  and          tp, t6, s0
                  lb           s7, 550(sp)
                  andi         ra, s7, 356
                  lbu          a2, -832(sp)
                  xori         a6, a6, -830
                  slli         s7, t3, 4
                  lui          s5, 734238
                  sb           t6, 34(sp)
                  addi         s7, a1, -499
                  srl          ra, s4, t2
                  auipc        s6, 24178
                  sra          t2, a0, s8
                  xori         zero, t5, 705
                  lh           s3, -1155(sp)
                  slt          s2, a3, s0
                  sra          s10, s9, t5
                  or           t5, s1, a6
                  nop
                  sltu         zero, s4, gp
                  srl          t3, sp, a1
                  lh           t2, -451(sp)
                  xori         s0, gp, 1772
                  sltu         t1, s4, t5
                  auipc        t0, 365973
                  addi         s2, a1, -176
                  sra          a1, s4, s2
                  sra          s3, t5, s2
                  lb           a6, 248(sp)
                  xori         t2, ra, -220
                  lhu          s11, -871(sp)
                  sltiu        a6, s8, -823
                  sb           a4, -1349(sp) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+1458 #start riscv_load_store_rand_instr_stream_5
                  lb           s7, -22(sp)
                  lui          a0, 1028768
                  ori          s0, a7, -1449
                  lb           s11, 40(sp)
                  sltiu        t6, t3, -687
                  lh           a1, 134(sp)
                  sb           s4, 21(sp)
                  lbu          s7, -103(sp)
                  slt          t5, t0, sp
                  srai         zero, s9, 8
                  sra          t3, s10, gp
                  auipc        a0, 276659
                  sra          a6, t2, sp
                  sh           t0, -160(sp)
                  lbu          s6, -227(sp)
                  sltu         s3, t0, t5
                  sb           s11, -100(sp)
                  lbu          ra, -113(sp)
                  lhu          a6, 182(sp)
                  xori         t2, s10, -409
                  sb           tp, -245(sp)
                  lb           t3, -16(sp)
                  sb           s6, 188(sp)
                  slt          a3, a2, zero
                  lb           t2, -56(sp)
                  or           s1, a4, a1
                  lb           s11, -81(sp)
                  srl          s4, s5, s2
                  auipc        a6, 907486
                  lbu          s1, 125(sp)
                  lbu          s0, 23(sp)
                  lbu          t1, 237(sp)
                  sltiu        s1, a0, 159
                  xori         s11, a0, 482
                  lw           s10, -254(sp)
                  lbu          a3, 39(sp)
                  sra          t3, t4, s3
                  sb           ra, -45(sp)
                  lb           s4, -238(sp)
                  nop
                  sll          t0, a4, tp
                  auipc        a1, 603690
                  lh           t6, 48(sp)
                  lb           t0, 25(sp)
                  lhu          s4, 94(sp)
                  slti         t5, s0, -1771
                  add          s1, s4, t2
                  sb           s0, -175(sp)
                  sh           gp, 2(sp)
                  lhu          t0, 174(sp) #end riscv_load_store_rand_instr_stream_5
                  la           s1, region_0+1536 #start riscv_load_store_rand_instr_stream_7
                  lbu          s7, -48(s1)
                  add          ra, a7, a6
                  sll          t2, ra, a5
                  lb           s2, -56(s1)
                  sh           a2, 130(s1)
                  srl          a3, t3, t6
                  sh           zero, -128(s1)
                  lb           t2, 137(s1)
                  sll          a3, s6, s9
                  add          a7, s10, a3
                  addi         a3, s10, 951
                  addi         a6, a3, 1742
                  slli         s6, s2, 14
                  lbu          t2, -221(s1)
                  sra          t1, t5, t0
                  auipc        a3, 875016
                  addi         t1, tp, 758
                  sra          a1, sp, t1
                  lbu          a2, -205(s1)
                  sb           s9, 225(s1)
                  xori         t5, a7, -1377
                  lb           a0, -101(s1)
                  slti         tp, t1, 1798
                  sll          t3, gp, t5
                  sll          sp, a0, tp
                  addi         t6, a2, -1545
                  lb           zero, 53(s1)
                  sltu         s4, s7, s8
                  sll          s11, s10, sp
                  lb           a3, -145(s1)
                  lbu          zero, 161(s1)
                  andi         a5, s10, -1558
                  xori         s3, tp, -1433
                  sra          s11, s4, s0
                  sll          sp, s0, t5
                  sll          s3, s0, sp
                  ori          t0, ra, 662
                  add          t6, sp, sp
                  lb           t1, 45(s1)
                  or           s3, a2, t6
                  sll          a2, s0, a0
                  lbu          s11, 36(s1) #end riscv_load_store_rand_instr_stream_7
                  sra          a5, tp, a7
                  xor          a3, s0, s5
                  srai         zero, s9, 21
                  andi         s3, ra, -66
                  sltiu        s10, s5, 751
                  srli         t6, t1, 12
                  auipc        a7, 949743
                  bne          s11, t3, 21f
                  sub          gp, a1, s4
                  xori         t1, a0, -2041
                  bltu         t1, gp, 15f
                  andi         t3, a6, 1631
                  nop
                  blt          s8, s6, 16f
                  xori         a7, s0, -1141
15:               slti         t1, s10, -1344
16:               bge          s2, s0, 34f
                  auipc        t4, 642369
                  bgeu         s7, sp, 35f
                  xori         a5, s5, 1378
                  srai         a7, a5, 28
21:               lui          s7, 929770
                  sltiu        s6, s1, 851
                  nop
                  bge          a6, s9, 27f
                  auipc        s10, 55945
                  sra          s1, s2, t3
27:               sltiu        a0, s9, -1174
                  srli         gp, s10, 6
                  blt          sp, t6, 44f
                  ori          a7, s6, -1049
                  xor          sp, s6, s4
                  addi         t5, a3, -73
                  bltu         t1, s11, 40f
34:               xori         a3, t5, 266
35:               slti         a7, gp, -1853
                  xor          s3, t6, a5
                  bltu         a2, s10, 39f
                  srai         a2, s5, 26
39:               nop
40:               bne          t1, s3, 56f
                  srl          tp, s8, t2
                  slli         t1, a4, 7
                  addi         a7, t1, 396
44:               bgeu         a6, a4, 57f
                  bgeu         tp, s9, 54f
                  xori         s6, zero, -1318
                  srli         s11, t2, 19
                  sub          s7, s9, s11
                  bge          a1, a6, 63f
                  auipc        t6, 395068
                  auipc        a0, 633119
                  auipc        t1, 614883
                  bge          s10, s6, 64f
54:               ori          sp, a4, 1507
                  bgeu         t2, a3, 66f
56:               bgeu         t2, s5, 61f
57:               andi         s1, a0, 334
                  blt          t1, a3, 76f
                  bge          sp, s0, 64f
                  srai         a0, t6, 5
61:               lui          a6, 856501
                  bge          t1, t3, 64f
63:               ori          t0, s11, -795
64:               addi         gp, s0, 1744
                  xor          s0, a5, a0
66:               lui          a2, 563737
                  xor          t2, a5, s1
                  and          s11, t2, a2
                  nop
                  bgeu         t4, t2, 89f
                  ori          a3, s1, 1692
                  sra          t5, s8, gp
                  bne          a0, s11, 86f
                  srai         a1, s1, 29
                  srli         a6, s4, 3
76:               xor          s3, sp, a5
                  beq          tp, zero, 79f
                  or           gp, ra, a3
79:               sub          s0, t0, a5
                  srli         s7, s4, 7
                  or           ra, a7, ra
                  sub          t1, a0, s3
                  sltiu        ra, t3, 1541
                  blt          ra, t1, 88f
                  srl          s4, a6, a4
86:               add          s4, tp, s9
                  srai         s3, a4, 19
88:               slti         s10, t6, -1727
89:               xor          s3, tp, t1
                  bge          s9, t0, 104f
                  srai         s5, t0, 7
                  blt          t0, s3, 105f
                  xori         zero, zero, 320
                  srl          s3, s11, a6
                  ori          s2, gp, -635
                  bge          s6, t3, 107f
                  srli         t2, s6, 21
                  add          t0, a6, s3
                  srai         s2, s9, 21
                  slti         s2, gp, -1970
                  sltiu        ra, a2, 1254
                  add          tp, t5, s2
                  slli         s1, s7, 0
104:              beq          a7, s2, 116f
105:              slt          s7, a3, s7
                  sll          a1, ra, s5
107:              xor          tp, s4, s1
                  beq          t1, tp, 123f
                  slti         s6, s9, -847
                  sltiu        t2, s3, 314
                  lui          t0, 760426
                  ori          s2, a5, -1265
                  slli         tp, t5, 30
                  xor          tp, s8, t6
                  slli         a1, s3, 1
116:              add          s6, a1, s9
                  nop
                  sltiu        zero, t5, 560
                  sub          t2, s7, s7
                  xor          a6, gp, s3
                  srli         t1, gp, 22
                  add          s0, s3, zero
123:              srai         s11, t2, 21
                  bne          a4, s2, 139f
                  bltu         a0, s5, 136f
                  beq          ra, t4, 137f
                  xor          zero, s10, t6
                  sub          t3, a3, t0
                  add          a6, t3, t3
                  addi         s3, s3, 1082
                  sub          a5, a1, a6
                  sub          t5, a6, a0
                  sltu         t1, zero, a6
                  nop
                  add          s6, t6, s5
136:              slli         gp, t5, 10
137:              slli         s4, sp, 11
                  addi         s2, a5, 133
139:              xori         t2, s2, -832
                  blt          s2, t5, 155f
                  srai         s3, a5, 10
                  srl          s3, a6, t6
                  sub          s10, s1, sp
                  auipc        s5, 834088
                  bgeu         t6, gp, 158f
                  slti         s2, a7, 92
                  xor          a5, a0, s6
                  addi         sp, s11, -508
                  sll          a2, s1, gp
                  nop
                  srli         a0, a3, 26
                  bgeu         s3, s6, 166f
                  slt          s7, t4, s6
                  add          s2, t4, gp
155:              bltu         s3, s11, 174f
                  slli         t0, ra, 26
                  slti         s2, t1, -1939
158:              bgeu         t2, t5, 163f
                  bne          t1, s10, 171f
                  srli         sp, s2, 30
                  slt          s11, a5, s6
                  sltu         gp, s6, gp
163:              add          a0, t6, s4
                  blt          a6, t4, 168f
                  add          zero, s1, t6
166:              bge          t6, s8, 177f
                  beq          t2, gp, 176f
168:              add          a6, s1, tp
                  sll          ra, t5, ra
                  nop
171:              sra          t6, a5, t4
                  bne          s0, s7, 183f
                  andi         a5, zero, -1196
174:              ori          t3, a3, 2019
                  slli         a5, a0, 13
176:              or           sp, a7, s8
177:              lui          s5, 273266
                  srai         zero, t6, 31
                  sll          s6, zero, s8
                  lui          s4, 629677
                  bgeu         a6, zero, 183f
                  addi         a7, tp, 1017
183:              srai         s10, sp, 15
                  lui          ra, 206555
                  auipc        t4, 852822
                  nop
                  auipc        a7, 213955
                  and          s5, a4, t0
                  bltu         a5, s2, 191f
                  bne          s0, t6, 193f
191:              bne          t2, tp, 205f
                  xor          s1, sp, t2
193:              xori         t2, a4, -1937
                  slti         ra, a1, 599
                  and          t6, gp, zero
                  sll          a3, sp, ra
                  la           a7, region_1+18 #start riscv_load_store_rand_instr_stream_8
                  lbu          s3, 4(a7)
                  slti         s4, zero, -1371
                  xor          t2, sp, s4
                  lhu          a0, 120(a7)
                  slli         t1, s0, 29
                  lbu          s5, 142(a7)
                  sltiu        a5, a2, 117
                  sra          s5, a5, t6
                  auipc        t4, 299274
                  sltu         a5, a6, gp
                  lhu          t4, 204(a7)
                  sb           t2, 206(a7)
                  sb           a3, 250(a7)
                  nop
                  sb           a6, -3(a7)
                  sb           a0, -16(a7)
                  lh           s0, 110(a7)
                  lbu          a6, 249(a7)
                  sltu         s0, a4, s2
                  lb           s0, 4(a7)
                  srl          ra, s2, t2
                  lbu          a5, 123(a7)
                  xori         t5, ra, 899
                  lw           sp, 6(a7)
                  or           sp, s1, sp
                  auipc        a2, 592032
                  lbu          s10, 253(a7)
                  lb           t5, 65(a7)
                  sltiu        a5, s8, -117
                  sh           zero, 148(a7)
                  lb           sp, 220(a7)
                  lb           s10, 87(a7)
                  addi         a3, a0, 1870
                  srl          t3, a1, t0
                  or           s5, t0, s8
                  lb           t3, 225(a7)
                  sll          a0, s1, s7
                  lw           s3, 50(a7)
                  lb           t0, 161(a7)
                  andi         a3, t6, 1310
                  lbu          t2, 251(a7)
                  auipc        tp, 152013
                  srai         tp, a4, 18
                  sh           a5, 10(a7)
                  sra          sp, s5, s5
                  andi         s4, s2, 991
                  lbu          a2, 205(a7)
                  srl          s7, s7, a6
                  and          s2, ra, tp
                  or           t4, t1, t6
                  addi         gp, s8, -1461
                  lb           a3, 29(a7) #end riscv_load_store_rand_instr_stream_8
                  sltu         s3, a2, t5
                  auipc        a3, 206878
                  bne          sp, t3, 217f
                  lui          s5, 551047
                  auipc        ra, 912527
                  ori          s7, s11, 2018
                  srli         s7, a3, 30
                  xori         s7, s9, 994
205:              lui          t0, 100773
                  andi         s2, t0, 434
                  lui          s6, 845276
                  bltu         s9, sp, 225f
                  bge          s5, t2, 222f
                  lui          s7, 131373
                  bgeu         a3, tp, 218f
                  sltu         a5, t3, a2
                  lui          a5, 670691
                  beq          s10, s11, 225f
                  andi         zero, zero, 19
                  slti         a3, s5, -87
217:              and          zero, s10, a1
218:              ori          t3, s4, 267
                  sltu         gp, t3, a6
                  sltiu        s3, s3, 1836
                  sltu         t5, zero, a0
222:              sra          zero, gp, s8
                  srai         s0, a5, 5
                  blt          a4, s6, 227f
225:              xori         zero, s9, -1746
                  addi         a7, a0, -323
227:              lui          a3, 718940
                  sltu         t2, t4, s7
                  lui          t0, 698490
                  sub          s0, s5, s11
                  bgeu         a2, t6, 236f
                  bltu         s4, sp, 248f
                  add          s7, gp, sp
                  addi         sp, s5, 967
                  addi         s0, t0, -1098
236:              sltiu        a5, s0, 1954
                  bltu         t3, s0, 252f
                  sub          gp, t6, s6
                  srl          tp, s4, t2
                  xori         zero, s5, -195
                  slt          s7, a1, t4
                  sll          a2, s2, zero
                  xor          a6, sp, t2
                  slti         zero, t3, 36
                  add          s0, s5, s7
                  sltu         a5, a0, a3
                  lui          s1, 648426
248:              bgeu         t1, a0, 253f
                  sltu         s4, t6, zero
                  sub          s1, a1, s4
                  bge          a0, s10, 264f
252:              slt          t3, s7, a7
253:              slt          a0, sp, s7
                  nop
                  xori         s3, ra, -1317
                  beq          s10, sp, 270f
                  srli         a7, ra, 16
                  sltu         ra, a4, a2
                  slli         s3, a3, 26
                  bne          a7, s5, 278f
                  or           t3, t5, t5
                  slti         s4, sp, -1484
                  xor          a5, s1, a2
264:              sltiu        s3, t4, -510
                  ori          s11, a7, -1025
                  slti         s5, zero, 543
                  add          t3, t3, gp
                  add          s0, sp, sp
                  srl          s6, ra, t0
270:              lui          ra, 84918
                  add          a0, s8, s7
                  srai         s10, t2, 26
                  nop
                  slli         s11, s8, 15
                  slt          tp, t3, t5
                  sra          s5, t2, a4
                  or           s2, t2, a3
278:              and          a0, a0, sp
                  xori         s0, a4, -1975
                  sra          a0, a4, t2
                  sltiu        a6, s6, 543
                  addi         s3, a3, 28
                  addi         tp, a1, -789
                  srli         s6, a2, 20
                  srl          s10, t6, a3
                  lui          a1, 343175
                  slti         t5, a5, 1858
                  slti         s2, s3, -1996
                  beq          s6, s11, 291f
                  srl          a5, a3, a0
291:              add          s7, s2, s4
                  slti         t6, a6, -692
                  beq          a4, a7, 308f
                  nop
                  lui          s1, 1020677
                  sub          ra, a6, s2
                  sltu         s6, s9, s6
                  bge          sp, s1, 313f
                  add          a1, s5, sp
                  sltiu        t0, a4, -1725
                  blt          a2, s1, 306f
                  srli         s11, s8, 24
                  sub          gp, a0, gp
                  or           sp, gp, a6
                  srai         t0, t1, 19
306:              blt          a2, t6, 308f
                  andi         a7, s10, 1068
308:              bgeu         s9, t5, 326f
                  bgeu         t6, s7, 318f
                  srl          a3, s6, ra
                  or           ra, zero, t4
                  xori         t0, s6, -188
313:              blt          a4, s5, 315f
                  slt          t3, a2, t2
315:              sltiu        ra, s8, 1359
                  auipc        tp, 114260
                  slt          s0, s8, a4
318:              nop
                  sltu         a0, t1, s11
                  sll          ra, zero, s9
                  sra          a6, s1, a4
                  blt          gp, t4, 335f
                  beq          t5, ra, 340f
                  ori          s3, a0, 1385
                  xori         s1, t5, 1114
326:              sltu         t6, s10, t5
                  xori         a6, t2, -1109
                  beq          s11, a1, 341f
                  bgeu         tp, tp, 336f
                  lui          a6, 662247
                  srai         a7, a6, 12
                  andi         s11, s7, -879
                  addi         t6, s8, 431
                  slt          sp, s1, t4
335:              srai         zero, a0, 17
336:              srli         s7, a0, 7
                  srli         sp, a4, 26
                  or           a3, a0, s11
                  sra          ra, s8, t5
340:              slt          gp, t5, s7
341:              srl          t5, s6, s6
                  bne          ra, s5, 357f
                  sltiu        sp, a7, -955
                  bge          t2, t3, 357f
                  sltu         a2, t0, tp
                  sltu         t5, t5, s2
                  srai         a5, t2, 8
                  bge          s8, s9, 353f
                  andi         s4, s3, 1386
                  slt          s7, sp, sp
                  srli         a7, a2, 25
                  xori         t1, s4, 1151
353:              xor          s0, s7, gp
                  ori          a7, t6, 707
                  or           t0, s5, t0
                  bgeu         gp, a5, 370f
357:              slti         s2, a4, -1004
                  bltu         zero, s7, 374f
                  andi         s6, s10, 1721
                  slti         t1, t0, -2037
                  add          t5, t4, a7
                  andi         a0, sp, 97
                  slt          s10, t5, ra
                  beq          s4, s5, 369f
                  beq          a7, t6, 384f
                  ori          a6, t5, 1771
                  xori         s2, t1, -1323
                  beq          t5, a3, 379f
369:              slti         t3, s9, 858
370:              bgeu         a3, t4, 373f
                  sub          sp, gp, tp
                  bne          s6, a2, 375f
373:              bne          s5, gp, 384f
374:              and          a7, s4, s8
375:              sll          s0, t1, sp
                  andi         a0, t1, 1943
                  slti         s1, a7, -1849
                  addi         t6, s9, 390
379:              nop
                  lui          tp, 317014
                  slli         t2, a4, 14
                  srl          s11, t5, t4
                  beq          tp, s8, 395f
384:              slli         s11, t0, 26
                  slti         a5, s4, 1654
                  bge          s5, t2, 400f
                  srl          a1, s7, t3
                  srli         a3, s9, 18
                  srai         s5, gp, 1
                  sll          s5, s3, a1
                  slli         t5, a0, 2
                  andi         zero, ra, -1749
                  sra          t6, s1, s8
                  beq          s9, sp, 412f
395:              beq          a1, a3, 399f
                  slli         a1, t5, 4
                  nop
                  slt          gp, t1, s3
399:              add          s6, sp, s3
400:              and          ra, a1, tp
                  add          s0, a2, a3
                  sll          t4, a4, a7
                  andi         s1, a6, 1158
                  addi         t0, sp, -755
                  andi         a3, sp, -257
                  bge          a3, a0, 417f
                  andi         s3, s2, -389
                  bge          a7, t0, 423f
                  or           a1, zero, t2
                  sltiu        s3, s10, 2013
                  slti         s7, s9, 1966
412:              add          t5, s1, a1
                  srl          ra, s4, s8
                  bne          a3, s11, 416f
                  sub          a7, s1, s2
416:              lui          s4, 79763
417:              bge          s1, s1, 428f
                  slli         sp, s3, 29
                  nop
                  sltu         t3, t6, s0
                  sltu         s3, a2, s1
                  xori         s0, s3, -1288
423:              slli         gp, a1, 14
                  beq          s11, a7, 438f
                  sltiu        s4, t6, 582
                  blt          tp, s1, 431f
                  xor          t0, t0, t1
428:              slt          a1, t6, t5
                  slti         a0, t1, 44
                  srai         a7, s4, 26
431:              beq          a3, zero, 446f
                  srai         zero, s11, 24
                  ori          a3, a3, -1745
                  ori          t2, a3, 1690
                  bne          a7, s6, 449f
                  sltu         t5, s0, t3
                  addi         s1, s4, 1354
438:              bltu         s4, s7, 443f
                  auipc        a0, 477961
                  beq          a3, s8, 451f
                  nop
                  sltu         s6, s9, t6
443:              slli         s4, s3, 2
                  nop
                  and          t0, s3, a7
446:              auipc        s5, 689447
                  sltiu        a5, t6, 1086
                  auipc        a2, 375273
449:              sltu         zero, a2, t6
                  sra          a5, a3, s5
451:              srai         s6, t6, 0
                  auipc        zero, 619694
                  bgeu         a3, s8, 466f
                  sra          s2, t3, zero
                  add          ra, s11, t5
                  add          s4, ra, a1
                  bge          t0, ra, 460f
                  sltu         a5, s9, s7
                  addi         s0, s4, 880
460:              xori         a0, a6, 1808
                  slti         s5, s3, -797
                  srl          t1, a3, a0
                  slli         s2, s5, 26
                  auipc        a1, 282204
                  sltiu        t6, s2, -1878
466:              slli         a3, s6, 9
                  slt          a7, sp, t4
                  lui          a5, 99338
                  sll          s5, a3, s11
                  blt          s0, a7, 487f
                  bne          a0, t3, 476f
                  blt          a7, a6, 483f
                  srli         t6, s4, 14
                  slt          s2, s7, s10
                  beq          s11, gp, 477f
476:              and          s5, s11, a4
477:              sltiu        tp, s10, -527
                  slti         a3, t2, -336
                  blt          a1, s1, 481f
                  blt          s9, s10, 493f
481:              blt          t5, t4, 495f
                  ori          tp, sp, -1235
483:              sltiu        tp, tp, -1248
                  beq          s9, t5, 495f
                  bltu         t3, s6, 504f
                  bne          a1, s2, 493f
487:              lui          a5, 326426
                  slli         t3, a7, 28
                  xori         t0, a1, 759
                  blt          a7, t2, 494f
                  and          s0, sp, s1
                  xor          sp, a3, a3
493:              addi         s10, a0, 957
494:              sll          a3, a6, ra
495:              add          s6, s2, s2
                  andi         t5, a2, 914
                  xor          a0, t1, s9
                  sll          t5, s6, s4
                  or           a2, s3, s10
                  srl          t0, a4, s6
                  or           a3, a4, t2
                  slt          t5, a7, a6
                  add          s5, t5, s5
504:              srl          s11, s7, s9
                  beq          s6, s7, 514f
                  add          t1, t1, a7
                  sub          t6, tp, a1
                  sltu         t6, a6, s3
                  or           s0, t4, s1
                  srli         s3, a3, 8
                  ori          a2, a0, -1253
                  sll          a1, s3, s0
                  blt          s3, s6, 531f
514:              sub          tp, tp, s11
                  addi         ra, a0, -1933
                  sll          s7, t2, s11
                  auipc        t1, 243642
                  add          s0, a4, a4
                  srli         a0, a7, 10
                  sltiu        s4, a4, -518
                  add          t4, a5, a6
                  bltu         a6, ra, 525f
                  blt          sp, t3, 536f
                  xor          s4, s1, sp
525:              srl          a3, t3, s3
                  sub          s6, a2, a6
                  sltu         a7, ra, a4
                  and          s4, s9, a3
                  addi         t1, s7, -707
                  add          s7, a4, gp
531:              srli         a3, a2, 7
                  slti         a2, a0, -644
                  beq          t5, s9, 544f
                  bge          a5, s10, 552f
                  la           sp, region_0+27 #start riscv_load_store_rand_instr_stream_4
                  lh           s10, 91(sp)
                  andi         s2, a3, 1513
                  lb           a6, 216(sp)
                  add          s6, t4, a2
                  slt          a5, t5, a2
                  lb           a1, 148(sp)
                  sw           s7, 105(sp)
                  sb           s2, 101(sp)
                  sw           s6, 201(sp)
                  lbu          s10, 190(sp)
                  ori          s11, t4, 277
                  lb           t6, 251(sp)
                  sltu         a6, a4, a2
                  lh           t0, 67(sp)
                  sub          t0, gp, t1
                  lbu          s7, 169(sp)
                  slli         t0, s5, 29
                  xori         t6, t0, -1801
                  add          s5, ra, a3
                  lbu          s0, 120(sp)
                  srli         s4, a5, 21
                  lhu          a0, 187(sp)
                  lhu          zero, -11(sp)
                  sh           a4, 59(sp)
                  lui          a2, 923530
                  lb           s4, 152(sp)
                  lb           a6, 149(sp)
                  addi         a5, t1, 820
                  slti         a3, s6, -1739
                  lh           s7, 225(sp)
                  or           t2, gp, s1
                  lw           a6, 81(sp)
                  sb           tp, 218(sp)
                  lb           s1, 23(sp)
                  lw           t4, 1(sp)
                  sra          zero, s2, zero
                  lb           s5, 98(sp)
                  sb           s1, 21(sp)
                  lb           t1, 77(sp)
                  lbu          a2, 173(sp)
                  lbu          t4, 108(sp)
                  lh           t6, 199(sp)
                  addi         t0, ra, 152
                  slti         t4, s3, 374
                  xor          s7, t5, a3
                  lh           a5, 231(sp)
                  xor          s4, s6, t5
                  lb           a3, 53(sp)
                  lh           a1, 249(sp) #end riscv_load_store_rand_instr_stream_4
                  sll          a5, s9, a4
536:              sra          t0, s9, s2
                  sll          t6, s8, s9
                  xori         t5, s8, 1697
                  srai         a0, t1, 5
                  addi         t4, t1, 206
                  srli         s1, a6, 20
                  and          a3, s11, s5
                  slli         t4, a5, 31
544:              sltu         a1, s6, t2
                  slt          s2, ra, t3
                  sltiu        a6, s10, -260
                  slt          s0, a3, t5
                  auipc        t0, 622509
                  andi         t6, s0, 1862
                  slli         t2, a5, 15
                  blt          ra, s0, 553f
552:              add          t2, s0, s3
553:              slli         a5, a4, 16
                  auipc        s5, 84785
                  xori         a7, t2, -1057
                  addi         s1, t3, 1368
                  andi         zero, t3, -390
                  slt          sp, sp, sp
                  and          a3, t2, a5
                  sltu         t5, a7, s1
                  srai         a7, s9, 19
                  addi         s7, zero, 408
                  sll          s2, t2, s9
                  bne          t6, sp, 578f
                  add          s4, t2, zero
                  srli         gp, gp, 15
                  sra          s7, s5, s6
                  slti         s2, s3, -88
                  slti         a2, a2, 1096
                  bne          a6, t4, 586f
                  sltu         t5, a4, s9
                  sltu         gp, a3, s5
                  auipc        s11, 116374
                  bge          s3, s5, 586f
                  and          s5, s8, t0
                  srli         t3, a0, 10
                  xor          a0, a1, t6
578:              sltu         s4, t6, t3
                  bltu         a5, t0, 594f
                  slli         zero, s3, 22
                  xori         s11, t6, -1649
                  slti         s11, a1, 1404
                  xor          tp, a7, s0
                  srai         s5, s1, 9
                  lui          a1, 999984
586:              lui          tp, 792898
                  srai         t0, t0, 19
                  srai         a1, tp, 5
                  andi         s6, t5, -1355
                  ori          zero, s10, -1892
                  andi         a6, gp, -1796
                  beq          gp, t0, 607f
                  sltu         sp, ra, t3
594:              bne          s8, a3, 599f
                  slti         sp, zero, -1578
                  nop
                  addi         gp, tp, 771
                  sltu         s5, s2, t5
599:              andi         a3, t1, -357
                  sltu         s5, s7, ra
                  sltiu        s7, a2, 1665
                  srai         ra, zero, 31
                  beq          gp, s11, 617f
                  sltu         a3, a6, s10
                  slli         s0, a6, 25
                  srai         a1, a3, 16
607:              srl          gp, t1, a0
                  blt          t6, t0, 623f
                  andi         s11, s2, 1019
                  slt          gp, t2, s10
                  xori         tp, gp, -813
                  sub          zero, sp, s4
                  bltu         s11, t1, 632f
                  slti         zero, t6, -841
                  bltu         t5, a1, 617f
                  bltu         gp, t5, 623f
617:              add          s1, a1, t6
                  bne          a0, t1, 630f
                  bge          a2, t4, 635f
                  andi         a7, s0, 1874
                  beq          s3, s10, 632f
                  srai         t2, sp, 29
623:              add          t6, s10, gp
                  bgeu         a0, s10, 639f
                  slli         s2, zero, 3
                  and          t6, a2, t5
                  bge          s10, t3, 642f
                  auipc        t6, 290078
                  andi         s11, s5, -1702
630:              sub          a5, tp, t0
                  srl          sp, s1, zero
632:              andi         tp, s2, -876
                  xori         s7, a5, -1011
                  auipc        a7, 202051
635:              slli         s0, t3, 23
                  bne          a6, t3, 645f
                  bgeu         s11, sp, 642f
                  add          s5, t4, s10
639:              auipc        s2, 498736
                  slti         a3, t6, 1673
                  nop
642:              addi         t4, a3, -521
                  sub          s7, s5, ra
                  blt          s6, a0, 647f
645:              slti         t3, s1, -1911
                  or           s5, gp, s1
647:              add          t2, a0, s6
                  nop
                  beq          s9, a4, 651f
                  add          t5, s9, s9
651:              add          s7, s9, s0
                  bltu         a2, s1, 663f
                  slti         ra, ra, 127
                  sltu         s0, s0, s11
                  xor          t0, s4, s6
                  bgeu         s7, a0, 667f
                  slti         t2, s11, 374
                  sra          a6, gp, zero
                  sub          s1, tp, s9
                  sll          t2, t6, sp
                  add          a1, s10, gp
                  auipc        t3, 497895
663:              sltiu        t0, t6, -1156
                  ori          s5, tp, 205
                  srl          s7, t4, t4
                  sll          s5, s2, gp
667:              sub          s10, s10, s9
                  bne          sp, s3, 682f
                  slt          s10, s11, a6
                  beq          s5, t1, 684f
                  xor          t5, t2, a4
                  add          a1, s8, s4
                  bge          s7, a2, 686f
                  slt          a0, t6, gp
                  sltiu        a2, s11, -1028
                  srl          t3, a0, a4
                  bne          s10, s10, 682f
                  lui          gp, 785532
                  srl          s2, tp, t4
                  bne          s1, a7, 691f
                  slli         gp, s1, 18
682:              add          a6, t1, sp
                  sll          sp, gp, s8
684:              slli         s6, s10, 12
                  bne          s5, s6, 698f
686:              lui          s3, 182684
                  bltu         t4, s7, 705f
                  slti         tp, t3, 1580
                  xor          a2, a5, a1
                  xori         t1, s5, -726
691:              nop
                  bltu         sp, s1, 705f
                  blt          a5, gp, 695f
                  srli         s7, s7, 22
695:              bgeu         s5, zero, 698f
                  slli         gp, s11, 28
                  srl          zero, sp, s7
698:              add          t3, t3, t1
                  or           s1, s5, s11
                  and          gp, t2, s4
                  auipc        t5, 838319
                  sub          s0, t1, s4
                  lui          s11, 782309
                  sltu         t2, gp, s7
705:              bne          t5, a7, 709f
                  slti         s3, t4, 1406
                  addi         a5, s7, -209
                  blt          s6, s4, 725f
709:              or           sp, a5, s11
                  bltu         t6, tp, 728f
                  slti         t0, a2, -1728
                  lui          gp, 678162
                  or           s5, a3, t2
                  auipc        s3, 423876
                  nop
                  xor          s4, s11, zero
                  slt          t3, s1, t4
                  or           s11, a7, s11
                  nop
                  andi         s11, a7, -1383
                  beq          a0, a1, 723f
                  auipc        s1, 441910
723:              ori          s5, a3, -1623
                  add          s6, sp, t1
725:              ori          s2, a6, 678
                  xor          zero, t4, s4
                  xor          s10, t5, tp
728:              ori          gp, t1, 220
                  bge          t1, a4, 736f
                  nop
                  beq          s6, sp, 744f
                  auipc        s7, 244135
                  srl          s0, a6, s6
                  slt          sp, tp, t2
                  sub          t4, t6, s0
736:              nop
                  sll          t3, t5, zero
                  sra          s6, s7, s2
                  srai         gp, sp, 31
                  ori          t1, t1, 1449
                  sltiu        a0, zero, -1353
                  nop
                  add          a3, a0, ra
744:              sltu         gp, t3, a6
                  slt          sp, gp, s9
                  srai         tp, s0, 20
                  xor          t0, s4, s1
                  blt          t4, gp, 751f
                  lui          ra, 962935
                  bltu         s5, t5, 755f
751:              nop
                  slli         a1, t4, 3
                  bne          gp, s1, 766f
                  sltu         t3, s7, sp
755:              srai         t2, s2, 26
                  andi         s0, s8, -1190
                  nop
                  srli         s0, tp, 13
                  slti         t2, a1, 405
                  sltiu        s4, gp, 13
                  bgeu         s4, s0, 778f
                  auipc        s1, 155820
                  sltu         ra, s1, s4
                  nop
                  sltu         s5, a3, t3
766:              slli         t0, t6, 28
                  add          t2, a1, a3
                  add          ra, t0, a0
                  blt          a2, s2, 780f
                  bne          s1, s2, 788f
                  blt          t5, t3, 773f
                  bltu         t1, t3, 777f
773:              bgeu         s1, s2, 785f
                  beq          s10, s2, 788f
                  xori         a3, s5, -1608
                  beq          s5, t0, 792f
777:              lui          t3, 260371
778:              xor          sp, s8, gp
                  and          a6, s9, s6
780:              srl          s3, s3, sp
                  slt          s1, a0, zero
                  bgeu         s5, zero, 800f
                  slt          s7, a0, s10
                  srli         a2, gp, 28
785:              xor          s6, s0, s7
                  xor          t4, zero, s6
                  bgeu         s10, s2, 806f
788:              xori         s10, t0, 719
                  slli         ra, tp, 6
                  lui          s2, 865927
                  bgeu         t3, t2, 802f
792:              bne          s3, t5, 801f
                  sll          a5, a5, t2
                  srl          s5, s9, s4
                  nop
                  ori          s2, a6, -645
                  bgeu         a2, a5, 802f
                  or           a3, s5, a1
                  addi         zero, a1, -583
800:              bge          sp, tp, 814f
801:              xor          s4, t5, t4
802:              or           s5, a1, tp
                  slt          t4, a6, t3
                  blt          a5, t1, 807f
                  auipc        s10, 240285
806:              sub          s2, t3, t5
807:              bltu         t4, t5, 820f
                  bltu         a5, gp, 819f
                  and          ra, t4, t2
                  bgeu         a7, a5, 814f
                  bne          t1, s11, 826f
                  sra          s4, t0, s5
                  slti         a1, s6, 1823
814:              sll          s6, s9, s4
                  srli         ra, a0, 10
                  sll          a0, zero, a5
                  sra          ra, s1, t4
                  xor          sp, t1, s0
819:              xori         t0, a6, 1439
820:              or           a6, a7, a2
                  xor          a6, tp, a1
                  xor          s7, tp, a0
                  slt          zero, s9, t6
                  nop
                  slt          t6, sp, t6
826:              bltu         s11, t0, 837f
                  andi         t4, zero, -1067
                  slt          s7, s0, s3
                  slt          a2, a2, t4
                  xor          s0, a1, a7
                  srai         t3, gp, 1
                  nop
                  and          a0, s7, sp
                  sltu         a7, a6, t1
                  sub          zero, t3, s6
                  bge          s2, gp, 851f
837:              or           s4, a2, t1
                  bgeu         t6, t0, 852f
                  xor          a3, a7, t6
                  slti         a6, s6, 1833
                  lui          t6, 210520
                  bge          t0, t3, 857f
                  lui          s1, 606002
                  bne          s0, t1, 846f
                  auipc        a1, 121931
846:              andi         a1, s0, 926
                  lui          sp, 351728
                  srl          a2, t2, s6
                  srl          gp, a5, s2
                  sub          t4, t2, t2
851:              or           t4, t4, t5
852:              sra          a7, t5, zero
                  srai         zero, a2, 21
                  nop
                  nop
                  slti         sp, a0, -1405
857:              or           s1, ra, a3
                  sll          a2, s10, a1
                  slli         zero, s3, 12
                  srai         s4, t5, 4
                  slt          t1, a3, t0
                  or           a3, s1, t2
                  slt          s0, a7, s1
                  sltu         s7, t0, ra
                  sltu         t0, a1, t2
                  and          a0, a0, t3
                  bne          s5, s4, 871f
                  nop
                  sll          a5, a4, s2
                  xori         s1, t6, 686
871:              andi         t3, s2, 2012
                  sra          t5, s5, t3
                  beq          t0, s9, 878f
                  add          s6, s2, gp
                  slt          a0, s0, s3
                  sltu         s2, s11, a1
                  beq          s4, a5, 880f
878:              sll          s6, t2, a4
                  addi         s4, a7, 1720
880:              srli         s1, s7, 15
                  andi         t6, t5, -222
                  lui          s11, 5216
                  bltu         zero, a6, 896f
                  or           a6, s11, s10
                  slt          a5, a7, s9
                  bge          t5, sp, 901f
                  srl          s1, t2, zero
                  blt          gp, s6, 899f
                  slt          t6, s7, a1
                  slti         s3, s11, 568
                  slti         s2, a1, 1554
                  ori          gp, ra, -1826
                  srai         zero, t4, 5
                  beq          ra, t6, 905f
                  bne          s2, s4, 910f
896:              auipc        a5, 869214
                  ori          a6, t4, 1392
                  bgeu         s11, a4, 900f
899:              bgeu         t0, sp, 904f
900:              lui          t4, 763339
901:              nop
                  xori         t2, a4, -1640
                  or           a5, s10, s10
904:              slti         s1, t1, 1086
905:              sra          sp, a1, tp
                  sltiu        a7, gp, -930
                  or           a2, s8, a1
                  blt          a7, s10, 919f
                  auipc        a2, 232692
910:              bgeu         s1, a0, 924f
                  and          s11, s8, t1
                  blt          t6, t6, 927f
                  bge          sp, t4, 924f
                  sra          a0, s4, a0
                  auipc        s10, 280221
                  xor          a5, t2, a4
                  beq          a5, t3, 930f
                  blt          a7, s0, 931f
919:              bne          a1, s2, 936f
                  andi         t0, a3, -1674
                  bge          s3, sp, 930f
                  sub          t1, t5, a5
                  bltu         t4, t0, 935f
924:              srl          a0, s4, t6
                  bne          t0, a2, 928f
                  slli         s3, t3, 8
927:              srai         a6, a4, 14
928:              sub          a3, s5, a1
                  add          s0, t1, a1
930:              sltu         s6, a4, a6
931:              beq          s3, a1, 949f
                  addi         a2, a0, -1204
                  slti         s6, t6, 90
                  bgeu         s9, t3, 953f
935:              sltu         sp, s7, t2
936:              auipc        t6, 767777
                  sltiu        s1, s5, 1173
                  bne          s11, a7, 954f
                  or           t0, tp, t2
                  slti         t1, sp, 1690
                  xor          gp, s7, s2
                  lui          s3, 1028632
                  xor          sp, t0, a5
                  xori         s5, zero, 964
                  bne          t4, s11, 947f
                  srl          a1, s0, s5
947:              beq          t2, a7, 949f
                  ori          s7, tp, 2022
949:              xori         s11, t0, -1391
                  slli         a5, s10, 5
                  sll          t1, sp, t0
                  bne          a5, s3, 966f
953:              xor          t2, s6, a5
954:              andi         tp, a6, 1437
                  sltiu        a2, sp, -321
                  bgeu         t5, a5, 963f
                  bltu         t4, gp, 971f
                  auipc        s6, 747525
                  andi         ra, s7, -992
                  bne          s10, a4, 978f
                  sra          t3, tp, t4
                  addi         a5, a1, 1811
963:              lui          t1, 112727
                  add          t0, t3, s6
                  xori         s3, s2, -384
966:              auipc        sp, 686907
                  srli         s11, s6, 31
                  srli         a0, s6, 30
                  sub          a7, s11, a0
                  ori          s1, s5, -1491
971:              xor          t2, sp, gp
                  andi         t0, a0, 132
                  sltiu        a6, zero, 316
                  sub          t2, s7, s0
                  sub          a2, gp, t6
                  bgeu         s5, gp, 981f
                  and          s4, sp, s1
978:              bge          t6, t4, 991f
                  xori         t3, a7, 511
                  slli         t5, a5, 29
981:              and          s5, t5, a1
                  and          tp, a4, t2
                  srli         a5, a6, 2
                  blt          t3, t0, 995f
                  beq          s11, s4, 1001f
                  bne          s7, s3, 989f
                  srl          a0, s4, s7
                  lui          t4, 650276
989:              xori         sp, s5, 1882
                  ori          t5, t1, -374
991:              nop
                  sll          s1, s8, s2
                  sub          s6, t3, s1
                  sra          t3, a7, t6
995:              slti         a5, t1, 1390
                  sltiu        t6, s10, 640
                  nop
                  nop
                  srl          s7, a5, sp
                  bltu         ra, a4, 1014f
1001:             beq          s10, a0, 1003f
                  sra          t4, gp, t1
1003:             andi         a5, a1, 1715
                  bltu         ra, t2, 1019f
                  sra          t0, zero, a3
                  bgeu         s0, a6, 1024f
                  slti         a5, s1, -54
                  bgeu         a0, a5, 1017f
                  sltiu        t5, s4, -1330
                  srai         t3, a2, 5
                  addi         tp, a6, -1528
                  auipc        t2, 488689
                  bge          ra, a2, 1016f
1014:             xor          a6, a6, a4
                  xor          s7, a7, tp
1016:             slli         t4, t1, 29
1017:             srai         t2, sp, 9
                  auipc        t5, 200966
1019:             sra          a7, a4, s11
                  bgeu         tp, s10, 1033f
                  andi         s0, tp, -1155
                  slli         a1, a0, 7
                  auipc        t4, 59641
1024:             ori          s1, s11, -93
                  slti         t3, s5, 1088
                  slli         s7, tp, 23
                  nop
                  sra          s2, a6, t0
                  auipc        t6, 297781
                  sll          s0, t5, gp
                  sub          gp, a3, s9
                  bge          t1, a1, 1044f
1033:             slt          s0, s8, s0
                  lui          a5, 666811
                  sltiu        s1, a2, 643
                  ori          t1, t2, 1268
                  srai         t5, a7, 2
                  beq          s5, tp, 1056f
                  srai         a5, t0, 19
                  sltiu        s2, s3, 1267
                  srl          a2, s3, s9
                  bge          t4, a1, 1044f
                  bge          s9, t2, 1058f
1044:             sltu         gp, gp, t5
                  beq          s3, s4, 1050f
                  xori         t5, a2, -1635
                  sltu         s7, t4, t6
                  and          a2, a2, tp
                  bltu         t3, t1, 1060f
1050:             bgeu         a5, t2, 1054f
                  bge          zero, a7, 1066f
                  srai         s0, a5, 22
                  slt          t2, t6, s5
1054:             or           gp, t5, s11
                  srai         a1, t3, 29
1056:             auipc        s11, 1044951
                  xori         s11, a3, 918
1058:             sra          a7, sp, t2
                  or           t3, t2, s5
1060:             nop
                  and          s7, a0, a6
                  xori         tp, sp, 672
                  addi         a1, a5, -1799
                  slti         t3, s2, -99
                  add          t2, a6, zero
1066:             addi         sp, t3, 410
                  slt          gp, t2, ra
                  addi         s7, s1, 1044
                  srai         t3, s8, 24
                  andi         t6, s1, 151
                  slli         a1, t1, 30
                  sll          s1, tp, s6
                  ori          zero, t0, 1493
                  sll          s7, tp, gp
                  bge          t1, t2, 1077f
                  and          s2, s8, s1
1077:             slli         s1, s1, 18
                  bltu         s3, s8, 1085f
                  auipc        s5, 723639
                  sltu         a3, t2, zero
                  ori          ra, t6, 146
                  sll          t1, s9, s4
                  slt          a1, s0, s10
                  srai         tp, a6, 5
1085:             xor          s10, a0, t6
                  bgeu         t2, a3, 1091f
                  slti         a3, s2, 1975
                  sltu         t4, s4, s8
                  bne          a5, a6, 1102f
                  add          zero, zero, s3
1091:             xor          s7, a6, s9
                  nop
                  or           t6, s8, sp
                  and          s10, s10, tp
                  srl          s11, s7, s5
                  bne          sp, gp, 1113f
                  ori          t2, t6, 1725
                  slt          s3, s5, gp
                  andi         t3, a1, -1149
                  sra          s4, s2, s3
                  blt          tp, a6, 1112f
1102:             auipc        s2, 676352
                  srli         gp, t2, 30
                  sltu         t6, tp, zero
                  sltu         s11, s0, a3
                  nop
                  add          a2, s9, t2
                  nop
                  bltu         s2, s10, 1123f
                  sll          s1, ra, a7
                  add          s2, t2, s6
1112:             ori          t5, ra, -1894
1113:             andi         sp, s9, -839
                  beq          a6, s4, 1133f
                  andi         tp, zero, -1579
                  auipc        t1, 813886
                  xor          s4, t3, s4
                  or           gp, a2, zero
                  sub          s6, sp, ra
                  addi         s1, t4, 58
                  nop
                  auipc        a1, 791019
1123:             sra          s5, t5, t1
                  blt          t4, s3, 1135f
                  bne          s6, a4, 1139f
                  srai         t6, tp, 11
                  beq          t3, t6, 1132f
                  srli         s11, tp, 27
                  sltiu        a6, s1, 442
                  srli         s6, a3, 18
                  blt          t1, a5, 1149f
1132:             andi         a0, t4, 1530
1133:             auipc        s11, 139595
                  add          a0, tp, s5
1135:             xor          s2, s6, t6
                  ori          a0, a6, -993
                  sll          t5, a2, a2
                  blt          s6, s7, 1140f
1139:             xori         s10, t2, -1124
1140:             bge          t4, s3, 1147f
                  sub          a3, s6, s1
                  nop
                  add          a3, a7, s9
                  bgeu         zero, ra, 1157f
                  sltiu        ra, t4, -1014
                  sub          s11, a4, s7
1147:             slti         t0, t1, -30
                  slt          tp, s6, s4
1149:             slli         tp, a5, 19
                  srl          s0, a7, s4
                  bne          s10, t2, 1157f
                  or           a2, t0, s7
                  srli         s4, s10, 25
                  srai         s4, s8, 27
                  sra          sp, tp, t4
                  lui          a7, 509750
1157:             sltu         s4, s1, a1
                  lui          t6, 752343
                  xor          s6, s3, t2
                  lw           s2, 4(a4)
                  addi         a4, a4, 56
                  sra          gp, ra, a6
                  addi         t2, gp, 482
1565:             addi x10, x18, 0
1565:             jalr x10, x10, 0
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
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x25, x14, zero
                  csrr x2, 0x300 # MSTATUS
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 31
                  bne x2, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x2, 0x341 # MEPC
                  csrr x2, 0x342 # MCAUSE
                  li x22, 0x3 # BREAKPOINT
                  beq x2, x22, ebreak_handler
                  li x22, 0x8 # ECALL_UMODE
                  beq x2, x22, ecall_handler
                  li x22, 0x9 # ECALL_SMODE
                  beq x2, x22, ecall_handler
                  li x22, 0xb # ECALL_MMODE
                  beq x2, x22, ecall_handler
                  li x22, 0x1
                  beq x2, x22, instr_fault_handler
                  li x22, 0x5
                  beq x2, x22, load_fault_handler
                  li x22, 0x7
                  beq x2, x22, store_fault_handler
                  li x22, 0xc
                  beq x2, x22, pt_fault_handler
                  li x22, 0xd
                  beq x2, x22, pt_fault_handler
                  li x22, 0xf
                  beq x2, x22, pt_fault_handler
                  li x22, 0x2 # ILLEGAL_INSTRUCTION
                  beq x2, x22, illegal_instr_handler
                  csrr x22, 0x343 # MTVAL
                  1: la x24, test_done
                  jalr x1, x24, 0

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
                  la x24, write_tohost
                  jalr x0, x24, 0

instr_fault_handler:
                  add x14, x25, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

load_fault_handler:
                  add x14, x25, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

store_fault_handler:
                  add x14, x25, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

ebreak_handler:   
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x14, x25, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

illegal_instr_handler:
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x14, x25, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x2, 0x300 # MSTATUS;
                  csrr  x2, 0x304 # MIE;
                  csrr  x2, 0x344 # MIP;
                  csrrc x2, 0x344, x2 # MIP;
                  add x14, x25, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
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
