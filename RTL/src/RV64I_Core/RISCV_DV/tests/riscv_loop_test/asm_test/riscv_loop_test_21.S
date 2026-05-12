.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x17, h0_start
jalr x0, x17, 0
h0_start:
                  li x2, 0x40000100
                  csrw 0x301, x2
kernel_sp:        
                  la x23, kernel_stack_end

trap_vec_init:    
                  la x2, mtvec_handler
                  ori x2, x2, 1
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
                  li x0, 0x80000000
                  li x1, 0x80000000
                  li x2, 0x0
                  li x3, 0x0
                  li x4, 0x0
                  li x5, 0x80000000
                  li x6, 0x2
                  li x7, 0xf9cbc270
                  li x8, 0xf7720294
                  li x9, 0xe
                  li x10, 0x0
                  li x11, 0xf7e22d56
                  li x12, 0x80000000
                  li x13, 0x80000000
                  li x14, 0x3d91d1f7
                  li x15, 0x80000000
                  li x16, 0x80000000
                  li x17, 0xf0ed7661
                  li x18, 0xa
                  li x19, 0x0
                  li x20, 0x5
                  li x21, 0x0
                  li x22, 0xf92afd28
                  li x24, 0x80000000
                  li x25, 0x9d02af3d
                  li x26, 0x166e5410
                  li x27, 0x3
                  li x28, 0x80000000
                  li x29, 0x80000000
                  li x31, 0x0
                  la x30, user_stack_end
main:             addi         s6, s6, 490
                  la           s2, sub_1
                  addi         s2, s2, 26
                  ori          s11, a6, -1385
                  slt          a4, ra, s10
                  andi         ra, s0, 24
                  nop
                  bge          a1, s2, main_j2 #branch to jump instr
                  or           s3, tp, s10
                  sltiu        t2, s7, -1790
main_j2:          jalr         s4, s2, -26 #jump main -> sub_1
                  addi         s4, zero, -8 #init loop 1 counter
                  xor          s6, s10, s5
                  sra          a2, t2, sp
                  addi         a1, s4, -321
                  and          tp, t1, t0
                  addi         a5, zero, 19 #init loop 1 limit
main_0_1_t:       sltiu        a2, a3, 24
                  auipc        zero, 474696
                  sltiu        s8, tp, 1916
                  sra          s1, t5, t4
                  addi         s4, s4, 1 #update loop 1 counter
                  addi         ra, zero, -1 #init loop 0 counter
                  or           a2, s10, s11
                  srli         zero, sp, 5
                  addi         s5, zero, 14 #init loop 0 limit
                  xori         gp, s11, 200
                  sub          t2, a6, t1
                  srai         s8, s5, 7
                  addi         zero, zero, -1440
                  srl          s1, s1, a2
main_0_0_t:       ori          a0, t0, 791
                  xori         tp, a2, -957
                  slti         sp, s3, -686
                  lui          a0, 745489
                  xor          a0, s1, a6
                  addi         ra, ra, 10 #update loop 0 counter
                  sra          t3, s0, t1
                  blt          ra, s5, main_0_0_t #branch for loop 0
                  sltiu        s1, t3, 163
                  srl          a2, ra, a0
                  srai         t1, s9, 16
                  xor          a1, a5, t2
                  sub          t4, t3, t6
                  blt          s4, a5, main_0_1_t #branch for loop 1
                  srl          t4, s8, gp
                  auipc        t0, 396464
                  bgeu         s9, t3, 3f
                  bge          s4, s1, 13f
3:                blt          s8, t1, 18f
                  slt          s10, t2, ra
                  srai         a6, sp, 5
                  blt          t4, s8, 20f
                  ori          a1, s6, -1286
                  andi         a5, s8, 1518
                  or           s11, s2, a1
                  xori         tp, s2, 1276
                  beq          a6, s8, 20f
                  srai         s8, zero, 30
13:               add          t3, ra, a7
                  xori         s9, s3, 801
                  addi         s1, t4, 466
                  sll          t1, a4, t3
                  sltu         a4, s4, s1
18:               bne          s11, a3, 20f
                  srli         s0, tp, 19
                  slli         tp, s5, 0
                  srl          ra, a6, s7
                  xor          t2, s0, a2
                  slli         a0, s0, 15
                  ori          zero, sp, -1007
                  xori         t3, s3, -27
                  la           a5, sub_1
                  nop
                  lui          t0, 981057
                  addi         a5, a5, -511
                  auipc        sp, 980348
main_j1:          jalr         s4, a5, 511 #jump main -> sub_1
                  sltu         s6, s8, t3
20:               slt          s8, s6, t1
                  la x17, test_done
                  jalr x0, x17, 0
test_done:        
                  li gp, 1
                  ecall
sub_5:            sltu         s10, s11, s10
                  or           a3, sp, a4
                  blt          s4, a1, sub_5_stack_p
sub_5_stack_p:    addi         t5, t5, -40
                  sw           s4, 4(t5)
                  srl          gp, a7, s6
                  bne          s4, a2, 4f
                  bge          a1, t0, 21f
                  slt          t1, t1, sp
                  auipc        tp, 758441
4:                xori         s2, a0, -1949
                  beq          t2, s9, 11f
                  add          a1, a6, t6
                  srl          t3, zero, s11
                  srai         s0, s1, 0
                  xor          t2, t3, s10
                  sltu         s6, a1, s4
11:               nop
                  srl          s2, a2, gp
                  auipc        t3, 374131
                  lui          s4, 428581
                  nop
                  add          a0, gp, a2
                  lui          t0, 973464
                  lui          a1, 105035
                  sltiu        a4, gp, -861
                  auipc        s0, 389806
21:               bltu         s6, s1, 33f
                  xori         a6, t2, 46
                  slt          s0, ra, a4
                  sltu         a4, s0, a7
                  slli         tp, s4, 5
                  xor          a2, s11, s0
                  slli         s3, s5, 29
                  sltu         a4, s4, a0
                  bltu         gp, s1, 42f
                  srl          t3, t2, zero
                  xor          a3, t4, s11
                  bge          zero, t4, 46f
33:               sub          gp, sp, t5
                  srli         a1, s1, 4
                  srai         t6, a7, 22
                  or           a6, s1, s10
                  sltu         a4, sp, zero
                  sll          zero, a0, ra
                  and          s3, t6, a3
                  sltiu        a5, gp, 2033
                  andi         s0, s0, -1345
42:               sra          a3, a2, s8
                  addi         s8, s11, 449
                  bne          a2, a2, 47f
                  nop
46:               blt          s2, a0, 47f
47:               sltu         zero, t3, s3
                  sra          gp, s4, t5
                  srl          t1, t2, t1
                  lw           s4, 4(t5)
                  srl          a0, t0, s0
                  addi         t5, t5, 40
                  andi         s1, ra, 811
                  sltiu        s0, a1, -1031
61:               addi x31, x20, 0
61:               jalr x31, x31, 0
sub_2:            beq          t3, s5, sub_2_stack_p
                  sra          s9, a7, t3
sub_2_stack_p:    addi         t5, t5, -32
                  ori          s5, s4, -1028
                  xor          gp, a7, s10
                  sw           s4, 4(t5)
                  sltu         s10, s3, sp
                  addi         sp, zero, 10 #init loop 0 counter
                  srai         s2, s2, 22
                  lui          s11, 27937
                  auipc        s9, 16536
                  slti         t0, t2, -501
                  and          a5, s0, s10
                  addi         gp, zero, -20 #init loop 0 limit
                  sltu         s8, s9, zero
sub_2_0_0_t:      sltiu        a4, sp, -1955
                  slti         s0, s5, -1741
                  addi         sp, sp, -5 #update loop 0 counter
                  sltiu        s3, gp, -201
                  sltu         s11, zero, a5
                  or           s0, t0, s8
                  lui          a3, 336248
                  beq          sp, gp, sub_2_0_0_t #branch for loop 0
                  sltiu        s11, a3, -1347
                  addi         a2, zero, 9 #init loop 1 counter
                  xor          s2, s11, a1
                  addi         s10, zero, 9 #init loop 1 limit
sub_2_1_1_t:      andi         zero, t3, -881
                  addi         a2, a2, -6 #update loop 1 counter
                  xor          t2, a5, s0
                  addi         s4, zero, 6 #init loop 0 counter
                  addi         a0, zero, 18 #init loop 0 limit
sub_2_1_0_t:      sub          t3, s7, s8
                  sub          t2, s1, sp
                  addi         s4, s4, 3 #update loop 0 counter
                  slt          s9, tp, a3
                  blt          s4, a0, sub_2_1_0_t #branch for loop 0
                  bgeu         a2, s10, sub_2_1_1_t #branch for loop 1
                  sltu         t0, s2, t1
                  sll          a4, s6, a1
                  xori         s3, tp, -913
                  xori         t3, a7, -613
                  srai         s8, a6, 2
                  blt          s9, s9, 22f
                  or           s10, a7, t0
                  srl          s8, ra, zero
                  sltiu        a4, a5, 514
                  nop
                  sra          s1, a4, s11
                  andi         s11, t2, 82
                  xori         s10, s3, -772
                  sltiu        s9, t6, 1859
                  lui          a0, 10574
                  sltu         s1, t0, t5
                  blt          t2, a6, 21f
                  sra          s2, a3, t5
                  srai         s5, s7, 29
                  sub          t3, t4, t1
                  slli         ra, s4, 21
                  srai         ra, s1, 28
21:               andi         a2, ra, 1938
22:               and          s2, a4, s11
                  slli         s0, s3, 16
                  slli         a6, t1, 8
                  auipc        s2, 536277
                  addi         s6, tp, -1989
                  nop
                  nop
                  bge          s6, t2, 36f
                  bne          sp, a0, 40f
                  or           t2, t6, t1
                  sltiu        s2, t2, 374
                  sltiu        a6, t3, 884
                  srai         a6, s1, 13
                  ori          s9, zero, 376
36:               sltu         a2, a5, a7
                  slti         a5, a0, -967
                  sltu         tp, a5, a6
                  and          t3, a5, s9
40:               or           a5, s10, s9
                  bgeu         s6, a6, 61f
                  slti         a6, a7, -146
                  andi         tp, s9, -1025
                  slt          ra, a3, gp
                  bne          s5, s7, 47f
                  srai         a2, t2, 13
47:               and          zero, s7, t1
                  slt          a6, tp, a2
                  ori          s9, t4, 487
                  xori         t2, s6, -926
                  or           s10, s8, ra
                  sll          zero, t1, ra
                  beq          a5, a3, 55f
                  sub          t0, zero, t0
55:               srl          sp, a0, t0
                  auipc        sp, 1026626
                  sll          t1, sp, s5
                  slti         s1, a7, -642
                  nop
                  xori         a5, s3, -1644
61:               auipc        a3, 628037
                  slti         a3, a5, -768
                  andi         s0, a6, -898
                  bge          s5, s9, 80f
                  bne          a3, t4, 74f
                  nop
                  blt          gp, s4, 72f
                  sub          s4, t2, tp
                  sub          sp, s5, s7
                  beq          t3, sp, 81f
                  addi         s0, s7, 1892
72:               andi         s1, s7, -1164
                  srai         t2, a2, 20
74:               sll          s11, a4, a5
                  slti         t3, a7, 1611
                  beq          a2, s5, 85f
                  ori          t6, s0, -1039
                  or           s10, t1, s11
                  auipc        a1, 857700
80:               nop
81:               xori         a5, s3, 1011
                  sra          s1, s5, a0
                  sub          t2, a1, a7
                  sltu         t1, t6, t4
85:               sub          tp, t1, t6
                  slt          t4, t0, t2
                  srli         t0, s4, 23
                  lui          zero, 603704
                  xori         t6, gp, 1235
                  addi         s0, s4, 1323
                  sub          s9, s5, a2
                  bge          t5, a4, 94f
                  blt          ra, t0, 107f
94:               add          zero, t4, a3
                  or           t2, t4, ra
                  bge          a0, a1, 98f
                  xor          t0, s3, s0
98:               sll          s6, gp, t0
                  nop
                  srai         s11, t1, 20
                  sltiu        s6, t6, -1253
                  auipc        s3, 794524
                  andi         zero, ra, 279
                  bne          t2, t6, 124f
                  bge          a4, a3, 115f
                  ori          t0, a1, 1013
107:              slli         s2, t3, 26
                  xor          a3, a4, s11
                  sll          tp, s11, a6
                  slti         t3, ra, -1991
                  ori          s0, a5, 1152
                  bgeu         s9, t6, 126f
                  nop
                  bge          s7, s10, 121f
115:              nop
                  nop
                  nop
                  add          a0, t0, t2
                  bgeu         t0, a7, 130f
                  bne          a5, s8, 125f
121:              bne          t1, t3, 130f
                  addi         s11, t4, 1182
                  lui          sp, 177594
124:              bge          a6, ra, 129f
125:              ori          s2, s4, 557
126:              nop
                  andi         s1, s6, -1115
                  ori          tp, a2, 73
129:              auipc        s10, 871970
130:              add          s2, t4, s10
                  slli         t6, s7, 13
                  slli         s6, s10, 3
                  slti         gp, a2, -1870
                  beq          s8, s2, 142f
                  xor          gp, t4, t3
                  bgeu         a7, a1, 142f
                  or           zero, sp, a0
                  sltu         a6, a7, s2
                  lui          ra, 926627
                  auipc        t1, 28647
                  lui          s2, 149333
142:              sll          t2, s0, t2
                  lw           s4, 4(t5)
                  or           t3, s7, a0
                  srl          t1, s5, a6
                  addi         t5, t5, 32
                  sltiu        t6, s3, 861
                  sltu         t2, a7, t5
                  slli         a1, a5, 11
189:              addi x8, x20, 1
189:              jalr x8, x8, 0
sub_3:            xori         t1, sp, 127
                  bge          ra, s1, sub_3_stack_p
                  slli         tp, t6, 18
sub_3_stack_p:    addi         t5, t5, -64
                  sltu         ra, a5, s4
                  add          ra, t0, t1
                  auipc        s8, 916705
                  sltu         t0, a0, t2
                  sub          a0, t6, s10
                  sw           s4, 4(t5)
                  srl          t6, s11, tp
                  slli         gp, a1, 26
                  sra          t1, s4, tp
                  bltu         a1, s8, 12f
                  xori         a0, a0, 536
                  andi         t2, t4, 1933
                  bge          s4, s9, 12f
                  lui          zero, 753597
                  sll          s5, a3, s8
                  add          ra, a5, s6
                  andi         a6, s8, -878
                  sltiu        a0, a2, -304
                  sltiu        s10, s10, -429
12:               slli         t0, a3, 5
                  lw           s4, 4(t5)
                  srli         t1, a2, 7
                  ori          s3, s3, 1101
                  add          zero, ra, a0
                  srli         a5, s9, 3
                  addi         t5, t5, 64
                  auipc        s6, 321748
                  nop
32:               addi x21, x20, 1
32:               jalr x21, x21, 0
sub_1:            sub          t2, a7, a5
                  addi         t5, t5, -52
                  auipc        a2, 312353
                  andi         s6, s1, -945
                  sw           s4, 4(t5)
                  andi         t1, t0, -1589
                  auipc        t4, 973414
                  bne          s10, t4, sub_1_j4 #branch to jump instr
                  xor          s0, sp, a0
                  xor          a3, s10, a5
                  sltu         s1, s11, s10
                  sra          a1, s6, a7
                  ori          t0, t1, 1855
sub_1_j4:         jal          s4, sub_4 #jump sub_1 -> sub_4
                  addi         a2, zero, -8 #init loop 0 counter
                  slti         s9, ra, 1459
                  xori         sp, sp, -1826
                  nop
                  ori          zero, s6, 912
                  or           a4, tp, ra
                  addi         a0, zero, -14 #init loop 0 limit
                  sltu         gp, s3, a6
sub_1_4_0_t:      and          ra, s1, t1
                  slli         s6, gp, 27
                  sltu         a3, gp, s9
                  srli         t6, a5, 3
                  or           s8, ra, s10
                  add          s1, a6, t1
                  srl          s2, t1, s7
                  or           t2, a5, t6
                  addi         a2, a2, -3 #update loop 0 counter
                  srl          t6, t0, a6
                  srai         s4, t2, 10
                  beq          a2, a0, sub_1_4_0_t #branch for loop 0
                  sra          sp, s3, zero
                  addi         a4, zero, -8 #init loop 0 counter
                  addi         t6, zero, 5 #init loop 0 limit
sub_1_9_0_t:      xori         s5, s8, 1420
                  addi         a4, a4, 1 #update loop 0 counter
                  blt          a4, t6, sub_1_9_0_t #branch for loop 0
                  sll          t1, a1, a5
                  addi         s3, zero, 9 #init loop 0 counter
                  sltu         s11, s3, a1
                  srai         s11, s6, 10
                  sltiu        t6, t5, 1094
                  srai         a1, a6, 2
                  sltu         s1, t3, s3
                  sll          a4, a0, s1
                  sll          zero, a4, t3
                  addi         a2, zero, 12 #init loop 0 limit
                  slli         sp, t3, 8
                  nop
                  sra          zero, a6, t1
                  add          s11, t3, a6
                  slli         tp, zero, 3
sub_1_8_0_t:      lui          s5, 728766
                  auipc        a0, 497180
                  sra          s1, t1, t4
                  addi         t1, t4, -2047
                  lui          gp, 473879
                  srai         t6, a2, 13
                  xori         a1, s8, 1690
                  addi         s3, s3, 3 #update loop 0 counter
                  auipc        a3, 165818
                  bltu         s3, a2, sub_1_8_0_t #branch for loop 0
                  xori         s11, t3, -1284
                  addi         s11, zero, 0 #init loop 0 counter
                  sub          t6, s2, s3
                  sltiu        zero, s4, -362
                  srl          zero, s3, t3
                  andi         s1, sp, -78
                  lui          s6, 306618
                  slli         t3, sp, 11
                  addi         s0, zero, 18 #init loop 0 limit
                  sll          t6, a2, a4
                  auipc        a2, 331697
sub_1_1_0_t:      lui          s5, 323236
                  addi         s11, s11, 3 #update loop 0 counter
                  xori         s8, s4, -1162
                  and          a2, s3, s9
                  or           tp, s8, t3
                  xor          s1, a4, t6
                  lui          tp, 27020
                  andi         a1, sp, -378
                  slti         tp, s2, -531
                  slli         zero, t6, 31
                  beq          s11, s0, sub_1_1_0_t #branch for loop 0
                  sub          gp, s8, gp
                  addi         gp, zero, 0 #init loop 0 counter
                  srli         a5, s11, 21
                  addi         a6, s9, -535
                  srl          a1, s2, a1
                  lui          t0, 641485
                  ori          s6, s11, -1947
                  addi         a3, zero, -2 #init loop 0 limit
                  auipc        t2, 134017
                  sltiu        s10, s9, 2026
                  srai         s10, s11, 23
sub_1_7_0_t:      xori         a4, s5, 1554
                  and          t0, s2, tp
                  sltiu        s10, t4, -919
                  slti         sp, t0, -1051
                  addi         gp, gp, -2 #update loop 0 counter
                  add          a4, s7, sp
                  nop
                  add          s8, t3, s9
                  addi         s6, s2, -718
                  slt          t1, zero, t4
                  bge          gp, a3, sub_1_7_0_t #branch for loop 0
                  ori          s0, a6, 1571
                  addi         a2, zero, 7 #init loop 1 counter
                  sll          s6, s10, a5
                  xori         sp, t3, 1691
                  slli         ra, gp, 23
                  addi         s9, zero, 8 #init loop 1 limit
sub_1_2_1_t:      auipc        t3, 92175
                  addi         a2, a2, 6 #update loop 1 counter
                  addi         tp, zero, 10 #init loop 0 counter
                  or           t4, a2, s4
                  sll          s1, s11, s3
                  or           s8, t4, ra
                  addi         s5, zero, 17 #init loop 0 limit
sub_1_2_0_t:      xori         t2, s9, -862
                  addi         tp, tp, 10 #update loop 0 counter
                  and          s4, zero, s5
                  auipc        t0, 528337
                  sltiu        a3, t3, -713
                  slt          a1, s3, s6
                  auipc        t6, 414567
                  bltu         tp, s5, sub_1_2_0_t #branch for loop 0
                  slli         ra, a6, 8
                  blt          a2, s9, sub_1_2_1_t #branch for loop 1
                  sra          sp, sp, s3
                  addi         t4, zero, 10 #init loop 0 counter
                  addi         sp, zero, 13 #init loop 0 limit
                  and          ra, a6, a2
                  slli         a5, s6, 7
                  slti         a6, a4, 384
sub_1_6_0_t:      sltiu        a0, s11, -841
                  srli         zero, a1, 20
                  add          t2, tp, t5
                  srli         a6, s3, 28
                  addi         t4, t4, 1 #update loop 0 counter
                  slti         t1, s3, -613
                  slli         s8, a1, 3
                  sra          a6, t5, s0
                  sltiu        gp, t6, -1917
                  beq          t4, sp, sub_1_6_0_t #branch for loop 0
                  lui          zero, 903465
                  addi         gp, zero, 5 #init loop 0 counter
                  ori          s9, t3, -458
                  nop
                  slt          s8, s1, s8
                  sub          a3, s4, a7
                  auipc        a6, 64838
                  sub          s9, t3, s2
                  lui          a0, 1023080
                  and          t6, s8, s9
                  sll          s2, s11, s0
                  slt          sp, t6, s1
                  or           sp, t6, a7
                  slti         a1, s11, -325
                  addi         s0, zero, 15 #init loop 0 limit
                  auipc        sp, 860587
sub_1_3_0_t:      auipc        a2, 689400
                  add          t6, s4, t3
                  slt          sp, s0, t0
                  addi         s1, tp, -1466
                  xori         s5, s11, -98
                  lui          ra, 723232
                  auipc        a4, 566896
                  addi         gp, gp, 10 #update loop 0 counter
                  lui          s5, 1011099
                  slli         a0, ra, 14
                  slli         s10, s6, 6
                  blt          gp, s0, sub_1_3_0_t #branch for loop 0
                  or           tp, ra, s9
                  addi         sp, zero, 0 #init loop 1 counter
                  andi         s0, a3, -1392
                  xori         a0, zero, -420
                  addi         s3, zero, 9 #init loop 1 limit
sub_1_10_1_t:     slt          s2, a4, t6
                  addi         sp, sp, 9 #update loop 1 counter
                  sltu         t6, a7, s9
                  andi         gp, t2, 558
                  slli         s5, a3, 12
                  addi         t4, zero, -7 #init loop 0 counter
                  addi         s4, zero, -17 #init loop 0 limit
sub_1_10_0_t:     xori         s5, s11, -11
                  sll          s6, t6, tp
                  addi         t4, t4, -10 #update loop 0 counter
                  bne          t4, s4, sub_1_10_0_t #branch for loop 0
                  nop
                  srl          t6, a4, s2
                  and          a1, a0, a3
                  bne          sp, s3, sub_1_10_1_t #branch for loop 1
                  or           a3, sp, s0
                  and          s3, a4, t5
                  slli         a4, s2, 30
                  and          s11, t1, a2
                  nop
                  andi         a0, sp, 1898
                  and          t4, s11, t5
                  slt          s10, ra, t1
                  sra          s11, t4, s9
                  slli         t0, a3, 16
                  add          s3, a7, s7
                  add          t4, t4, s1
                  bltu         s10, s5, 17f
                  or           a2, s10, t1
                  slt          s1, a5, a4
                  slt          a6, s9, s1
                  sltu         s3, s2, t1
                  xor          tp, t1, tp
17:               sll          s11, a3, t5
                  xori         s4, t6, 1477
                  auipc        t4, 467917
                  auipc        sp, 960972
                  ori          zero, a5, 1159
                  ori          a2, ra, 8
                  bge          s0, s2, 34f
                  xori         a0, a2, 472
                  and          t3, s7, s6
                  andi         tp, t1, 219
                  bge          a2, s9, 37f
                  and          s4, s0, s1
                  srai         t4, t2, 3
                  sltu         a6, a2, s11
                  bgeu         a5, ra, 38f
                  addi         a5, ra, -1031
                  nop
34:               slli         a5, t2, 7
                  sll          t4, s6, gp
                  sltu         s2, t3, s4
37:               lui          s6, 314212
38:               lui          s9, 637440
                  srl          t0, s0, zero
                  addi         ra, zero, 152
                  slt          s6, s0, ra
                  bne          sp, s8, 54f
                  andi         ra, s8, -1632
                  nop
                  blt          s3, a7, 65f
                  srl          a5, t4, s8
                  slt          gp, t4, t4
                  bgeu         a2, s5, 62f
                  andi         s4, s0, -1731
                  or           t4, s10, t2
                  sra          s9, t4, a2
                  slti         s10, t0, -117
                  and          a4, s11, tp
54:               xor          t0, s10, a7
                  ori          s2, s4, -1532
                  sra          a2, t0, s9
                  xori         a3, a5, 986
                  xori         s1, t5, -1794
                  nop
                  xori         a3, t2, -1888
                  bge          a0, zero, 81f
62:               bge          zero, s3, 74f
                  auipc        a5, 633227
                  slli         a2, sp, 2
65:               sub          s5, ra, t2
                  xor          ra, t1, s3
                  bgeu         gp, a3, 87f
                  lui          ra, 910961
                  sub          a4, a7, a1
                  and          ra, s6, s7
                  andi         t0, tp, -1551
                  xor          t3, s6, sp
                  add          s0, t6, t3
74:               bne          s2, ra, 94f
                  slt          s10, t5, s9
                  nop
                  blt          s9, t1, 82f
                  sll          tp, a7, s11
                  sll          s5, s10, s2
                  addi         s3, zero, 4 #init loop 0 counter
                  sltiu        a1, a0, 1799
                  xori         sp, sp, -1716
                  sll          t4, a4, s8
                  addi         s11, a5, 1788
                  srl          s5, a1, sp
                  xori         zero, s6, 4
                  addi         s9, a0, -474
                  sltu         t1, s2, tp
                  auipc        t4, 347521
                  xor          s9, t5, t4
                  sll          s6, s8, a6
                  and          a2, s6, s5
                  addi         gp, zero, -2 #init loop 0 limit
                  auipc        s2, 923338
                  andi         zero, s10, -399
                  sltu         t1, t6, s10
                  slt          a0, a2, t6
                  auipc        a4, 1037112
sub_1_0_0_t:      xori         ra, s10, 29
                  xori         t3, s2, 1022
                  addi         s3, s3, -3 #update loop 0 counter
                  auipc        t3, 995279
                  bge          s3, gp, sub_1_0_0_t #branch for loop 0
                  or           a3, s0, s2
                  srli         s8, tp, 8
81:               srl          s5, a3, s0
82:               addi         a6, a0, -1600
                  srl          tp, a4, a0
                  ori          sp, s4, 1317
                  bge          s5, tp, 99f
                  blt          s3, a0, 95f
87:               sra          s3, zero, a4
                  beq          gp, a1, 102f
                  xor          t4, s4, a2
                  sll          t6, s10, sp
                  xor          s10, a4, s4
                  and          tp, sp, s2
                  sltiu        gp, a1, -66
94:               blt          s11, t3, 112f
95:               bne          a1, s10, 109f
                  srai         t3, sp, 0
                  xor          a4, t6, s8
                  sltiu        t6, t3, -1776
99:               bgeu         s8, s6, 108f
                  sll          s10, a2, s7
                  sltu         t4, t4, s6
102:              xori         sp, t5, -591
                  sll          s1, s9, s2
                  bgeu         s10, s4, 116f
                  bgeu         ra, tp, 111f
                  bne          zero, t4, 125f
                  srai         s1, zero, 11
108:              auipc        a1, 204428
109:              slli         s6, s5, 10
                  bne          a1, sp, 130f
111:              sltu         a4, a1, a6
112:              srl          ra, t1, s4
                  xori         tp, gp, 1108
                  or           sp, s11, s10
                  blt          t0, s1, 123f
116:              andi         gp, t0, 136
                  ori          s3, a1, 1285
                  sll          s0, t5, sp
                  sra          t2, t5, a1
                  bne          a4, a5, 140f
                  bge          t6, t2, 133f
                  ori          gp, t5, 1563
123:              srl          a1, s7, a0
                  or           s6, zero, s11
125:              and          s8, s8, s11
                  bne          a1, s8, 128f
                  slti         a4, s10, 1193
128:              nop
                  or           s2, a7, s0
130:              sll          s5, t0, t5
                  sub          s0, t3, s10
                  la           s2, sub_2
                  auipc        a3, 80030
                  sra          t3, s7, s4
                  sll          s10, a0, gp
                  addi         s2, s2, 542
                  nop
                  slt          t6, s4, s5
                  auipc        t1, 322750
                  auipc        s5, 190773
                  lui          ra, 307591
sub_1_j3:         jalr         s4, s2, -541 #jump sub_1 -> sub_2
                  add          a4, t0, s5
                  xor          s8, s4, t1
133:              auipc        t1, 195220
                  and          s8, a7, t6
                  or           tp, s7, zero
                  sltu         s0, s4, a1
                  bne          t1, t3, 154f
                  nop
                  slli         t6, a1, 23
140:              sltu         gp, t5, t2
                  srai         a5, zero, 7
                  lui          a4, 300159
                  srli         gp, sp, 5
                  xori         s8, s3, 1037
                  add          t6, s7, a2
                  slti         t2, s2, -1051
                  ori          s1, s9, 1027
                  or           s4, t3, s5
                  sra          t0, s9, s10
                  ori          s0, s5, 1022
                  bltu         a6, s0, 154f
                  add          s8, a4, t5
                  slti         s0, zero, 1354
154:              bltu         tp, t4, 156f
                  sub          sp, t4, s1
156:              nop
                  blt          s7, t5, 163f
                  slli         s10, a1, 23
                  beq          s5, t5, 171f
                  bltu         tp, a0, 169f
                  bne          gp, a4, 178f
                  srl          s0, a1, s2
163:              or           a3, t6, s5
                  srli         s11, gp, 14
                  srl          a2, s3, s10
                  and          a5, a4, s3
                  beq          t3, a3, 169f
                  slt          ra, ra, a1
169:              or           s2, gp, a2
                  add          a4, s7, a6
171:              sub          s5, s2, a0
                  xori         s2, t0, -665
                  nop
                  slti         gp, s10, 974
                  sra          s10, t2, t1
                  sub          zero, zero, a0
                  sra          sp, ra, gp
178:              ori          t3, a7, -842
                  sub          a1, gp, a3
                  sltu         t4, s7, s4
                  beq          gp, a6, 195f
                  nop
                  slt          s3, t3, a0
                  bgeu         t4, s4, 190f
                  auipc        s6, 485251
                  slt          t2, ra, s11
                  sltu         s6, a0, s6
                  auipc        s9, 408912
                  auipc        a3, 462024
190:              beq          tp, s10, 210f
                  srli         a2, s5, 15
                  sra          tp, s7, s9
                  ori          s9, t2, -540
                  and          t4, zero, a3
195:              add          zero, t1, t2
                  blt          s1, s0, 207f
                  srl          s4, t4, a7
                  sltu         s2, a4, a7
                  bne          t0, sp, 201f
                  sltiu        t1, s9, -741
201:              auipc        s3, 231842
                  srl          a3, a5, sp
                  sltu         s4, s6, s11
                  srl          s10, a0, s0
                  sltiu        t1, s11, 1454
                  auipc        a3, 144425
207:              sltiu        s6, s11, 421
                  blt          s4, t0, 222f
                  andi         s11, t4, 577
210:              bne          s1, s5, 230f
                  andi         gp, s2, -1774
                  sra          s1, s8, a3
                  and          zero, a4, s5
                  slt          t6, s6, zero
                  bne          a5, s3, 223f
                  or           a1, zero, a3
                  and          s1, a7, ra
                  bgeu         zero, s7, 237f
                  xor          t3, s1, ra
                  or           s11, s9, gp
                  sub          s6, a6, s11
222:              bne          a6, tp, 227f
223:              add          s6, s5, a0
                  sra          a6, s7, s11
                  sub          t0, s8, s9
                  xori         zero, a0, 1571
227:              sll          s4, s9, sp
                  bltu         a5, s3, 240f
                  slti         s10, a3, -30
230:              add          t1, t0, sp
                  xor          zero, t6, t2
                  bne          sp, a5, 238f
                  sub          a6, s3, s4
                  auipc        t4, 429345
                  lui          t3, 935788
                  bge          t6, s6, 254f
237:              or           a3, s8, ra
238:              blt          s1, t0, 247f
                  xori         a2, s8, -1186
240:              sub          t3, s4, ra
                  auipc        t2, 166361
                  and          t4, tp, zero
                  bge          s10, t1, 257f
                  nop
                  beq          ra, t2, 265f
                  srli         a1, a0, 17
247:              blt          zero, s9, 253f
                  sll          sp, s9, a4
                  and          sp, tp, t2
                  lui          s6, 354763
                  bne          t6, a1, 263f
                  sll          s10, s0, s2
                  sltiu        s4, s8, 891
                  xori         t6, t6, -1019
                  nop
                  slti         tp, ra, -150
                  slt          a0, s7, s10
                  sub          s11, a3, s1
                  sltu         a3, s10, t3
sub_1_j5:         jal          s4, sub_3 #jump sub_1 -> sub_3
                  andi         t0, s8, -1271
253:              sra          s9, s4, a6
254:              bne          a3, t0, 257f
                  slti         s11, s7, 440
                  sra          t6, a5, a7
257:              nop
                  sra          s8, a2, a1
                  srl          a4, s2, s9
                  slti         t0, a3, 554
                  sll          zero, sp, zero
                  auipc        gp, 402358
263:              sll          t1, s9, a1
                  nop
265:              srai         a2, sp, 24
                  bltu         a0, s10, 276f
                  xor          s11, s0, ra
                  sra          s9, ra, s8
                  ori          s10, s9, 151
                  add          t6, a2, t3
                  srai         t6, s1, 28
                  sll          a0, s3, a4
                  sll          s0, a2, s11
                  beq          s8, tp, 288f
                  or           t1, tp, t1
276:              andi         a6, s10, -511
                  slt          t4, a2, tp
                  srli         t1, a0, 1
                  srai         a3, s8, 4
                  slli         t6, t3, 10
                  nop
                  xor          ra, s4, s0
                  or           a3, s1, gp
                  or           a1, s2, a1
                  addi         s11, s0, 732
                  add          s5, a4, s11
                  srli         t3, t4, 13
288:              bne          zero, gp, 308f
                  bgeu         t6, a5, 296f
                  xor          t6, zero, s2
                  xor          a6, s4, s10
                  sra          t1, a3, s10
                  sltiu        a2, a6, 1257
                  or           t0, t4, tp
                  srli         a3, s0, 24
296:              bltu         t4, s4, 316f
                  ori          s10, s7, 631
                  sub          s8, s6, s8
                  lui          s0, 532564
                  xori         s2, a6, 82
                  bltu         t5, s11, 321f
                  srai         a1, a3, 19
                  bge          t3, t2, 315f
                  slt          s3, s2, a6
                  bge          s7, a1, 319f
                  sra          s6, gp, s9
                  blt          s1, t5, 327f
308:              nop
                  xor          s8, t6, t3
                  bgeu         s0, t3, 330f
                  add          zero, s0, s4
                  slti         s0, s9, 1172
                  xor          a2, a3, zero
                  srli         a3, a4, 21
315:              srl          zero, t5, a6
316:              addi         s2, s6, 1796
                  sltiu        a3, s9, 306
                  srai         a1, s7, 7
319:              srai         s4, tp, 25
                  sltu         gp, a2, a5
321:              blt          a5, t6, 323f
                  beq          t0, s0, 327f
323:              or           t6, zero, s10
                  xori         s11, ra, -747
                  sra          a2, a7, t4
                  srli         tp, t6, 17
327:              srl          sp, a7, s10
                  ori          t6, sp, -104
                  bge          s1, t3, 341f
330:              srai         gp, t5, 29
                  bne          s3, s11, 338f
                  addi         a5, t1, -1144
                  addi         a4, t0, -253
                  xori         tp, t0, -1369
                  slti         s8, zero, -1169
                  srai         s8, t2, 28
                  bne          t5, s7, 349f
338:              beq          s10, a6, 352f
                  srai         s3, t4, 17
                  and          a1, t6, t2
341:              srai         a1, s11, 4
                  blt          a4, a6, 351f
                  lui          s8, 1041366
                  bltu         a7, t1, 362f
                  or           t0, t4, s4
                  srli         a5, t5, 16
                  blt          tp, a0, 367f
                  sra          t3, s6, s3
349:              andi         s2, s10, 1508
                  nop
351:              andi         t0, t4, -280
352:              srai         s2, a4, 0
                  sltu         t3, a1, a7
                  bltu         s7, s4, 356f
                  slli         s2, a4, 14
356:              slt          s11, a2, a7
                  addi         a4, a3, -1957
                  slt          tp, s1, t6
                  or           t3, s2, a0
                  sltu         s9, gp, a3
                  slt          s3, t4, t4
362:              blt          s4, t0, 374f
                  bgeu         s6, s5, 369f
                  srai         s10, a3, 20
                  bgeu         s11, s6, 385f
                  bne          t3, s3, 369f
367:              bne          s10, s4, 373f
                  slli         a0, a5, 14
369:              andi         s1, a4, 261
                  sub          s6, a5, t0
                  bgeu         s3, sp, 388f
                  sltiu        a1, s6, -1447
373:              auipc        s10, 48861
374:              srai         ra, gp, 5
                  andi         t0, s9, 1153
                  xori         s0, a7, -1830
                  add          s0, t5, t1
                  srl          t2, t1, gp
                  andi         t2, t3, -1041
                  srli         a5, s10, 28
                  slt          s9, a4, a3
                  slli         t0, a7, 31
                  sltiu        s3, t6, -871
                  beq          t6, t6, 404f
385:              srli         t4, a0, 24
                  nop
                  beq          a3, s11, 401f
388:              slti         t6, s8, 1122
                  ori          a3, a2, -958
                  bltu         t6, s2, 400f
                  srl          zero, t2, ra
                  add          sp, t6, s11
                  sltiu        s11, a6, -1389
                  sll          tp, s7, sp
                  or           t1, gp, s0
                  sltiu        a2, tp, -1744
                  add          a3, a3, t2
                  ori          t4, a0, -1543
                  sra          tp, a7, s4
400:              addi         gp, t4, -1761
401:              srai         s11, ra, 21
                  nop
                  bne          s3, a5, 414f
404:              xori         a2, s9, -31
                  addi         a0, s10, 189
                  sltu         tp, t3, s6
                  auipc        s3, 871624
                  bgeu         a2, s2, 420f
                  slli         s3, a3, 10
                  addi         a2, zero, -3 #init loop 0 counter
                  slti         t3, a7, -2005
                  sltu         s0, t5, tp
                  addi         s11, zero, 14 #init loop 0 limit
                  srli         s6, s1, 21
sub_1_5_0_t:      and          s3, s0, a5
                  or           tp, a3, t1
                  addi         a2, a2, 1 #update loop 0 counter
                  andi         a4, s10, 794
                  and          s4, a4, t1
                  addi         a3, zero, 1900
                  sltu         t6, s11, gp
                  beq          a2, s11, sub_1_5_0_t #branch for loop 0
                  srli         a3, ra, 5
                  sra          t4, a3, t4
                  andi         s0, s0, 1981
                  nop
                  addi         t2, a3, -784
414:              sltu         zero, t1, t1
                  blt          s2, s1, 434f
                  srli         sp, t5, 12
                  andi         s6, gp, 1932
                  add          s1, s4, a2
                  andi         s8, s3, 1217
420:              beq          t4, s1, 428f
                  srai         a5, t2, 1
                  nop
                  add          t0, a1, s8
                  lui          t3, 137793
                  or           t1, t2, s5
                  xori         t0, a3, -303
                  sltu         s1, t6, a1
428:              srli         t3, a6, 31
                  xori         t6, s4, 475
                  bltu         t2, s5, 450f
                  ori          a5, s0, 1772
                  bgeu         s2, s5, 438f
                  ori          sp, ra, 1771
434:              bltu         a5, s11, 443f
                  lui          s4, 693101
                  beq          s4, t1, 450f
                  sra          s3, gp, a7
438:              bne          a5, s8, 455f
                  sll          s9, gp, s5
                  srli         a2, a5, 10
                  bne          a5, a2, 455f
                  sra          tp, s3, a0
443:              sra          t2, a0, a2
                  bgeu         s0, t0, 458f
                  slt          ra, a4, a6
                  lui          s6, 849738
                  ori          zero, tp, 1527
                  and          t0, s7, sp
                  srli         a6, a5, 24
450:              beq          a1, s7, 470f
                  and          s3, tp, s7
                  bne          a1, tp, 461f
                  andi         a4, t1, -1437
                  and          s0, t4, s1
455:              sub          s8, t2, s5
                  srai         ra, a2, 18
                  nop
458:              sltu         t6, s4, s8
                  sra          s3, t0, a0
                  slt          ra, s11, a7
461:              addi         s3, tp, 1107
                  srl          s3, zero, a4
                  ori          zero, s4, -1819
                  sub          gp, a5, t4
                  or           s2, t3, s8
                  xori         s10, s1, 1887
                  addi         s9, s11, 372
                  ori          a1, s2, -754
                  srli         t2, t0, 2
470:              addi         s1, ra, -1824
                  srai         t6, a4, 23
                  sub          t4, t2, s1
                  bne          t6, a1, 475f
                  sll          s8, s3, t2
475:              lui          tp, 325220
                  slti         a6, s5, -495
                  srl          s5, s3, s1
                  bgeu         zero, s3, 488f
                  sltiu        s8, t3, -600
                  blt          a5, t3, 498f
                  slt          tp, a6, s4
                  beq          tp, s10, 494f
                  bne          s3, zero, 495f
                  srli         s2, t3, 30
                  bge          t2, a1, 488f
                  addi         a2, s1, 1894
                  auipc        s8, 169845
488:              beq          tp, s2, 494f
                  lui          t4, 234157
                  bgeu         s4, t1, 504f
                  slti         ra, t4, 946
                  bltu         t6, a0, 511f
                  blt          s6, a0, 513f
494:              or           sp, t1, s1
495:              beq          t3, s1, 515f
                  sltu         t1, s0, t3
                  srl          zero, t0, t0
498:              slt          s5, a2, t2
                  srai         sp, a1, 27
                  or           s0, ra, zero
                  or           a0, s6, s10
                  lui          a6, 788815
                  lui          s3, 662541
504:              srai         s3, s11, 4
                  beq          a7, s11, 511f
                  beq          s9, tp, 513f
                  bltu         s6, s2, 518f
                  and          a4, t2, s2
                  xori         t2, a3, 1156
                  andi         s1, s8, -584
511:              slti         ra, s11, -424
                  beq          a1, t4, 532f
513:              sll          a1, ra, s7
                  sll          tp, gp, tp
515:              sub          t6, s3, a5
                  addi         a1, s3, 249
                  sltu         zero, s7, a4
518:              add          gp, ra, t5
                  or           s2, s0, t3
                  ori          tp, gp, -550
                  xor          s11, s1, a1
                  sra          t6, a6, t4
                  sra          a6, t2, a7
                  xor          s11, sp, a0
                  ori          t1, t6, -1144
                  lui          gp, 930079
                  xor          t3, tp, a7
                  beq          a5, t6, 548f
                  beq          s2, s9, 537f
                  beq          a6, s0, 542f
                  sltiu        s9, a3, 524
532:              slti         zero, a7, -55
                  and          a3, s4, s4
                  srai         a3, s7, 9
                  slli         a6, s7, 1
                  and          zero, a4, tp
537:              or           a4, a3, t4
                  srl          sp, t2, t5
                  beq          a5, s11, 559f
                  xor          t3, s3, s10
                  nop
542:              sub          a2, a7, s4
                  sub          s4, a4, a6
                  add          s0, t6, s2
                  beq          tp, a7, 551f
                  bne          tp, s2, 560f
                  slli         ra, s2, 17
548:              xor          s11, gp, a5
                  beq          s1, a5, 561f
                  auipc        s0, 38433
551:              xori         s10, s2, -653
                  sub          s4, a7, t3
                  slli         a2, a1, 18
                  auipc        t3, 37835
                  and          a5, a2, zero
                  bge          t1, s2, 561f
                  auipc        a3, 891830
                  srl          s0, ra, a6
559:              and          s6, a6, s6
560:              slli         t6, s0, 22
561:              xori         s6, s11, -324
                  sltiu        s8, s11, 210
                  lui          s3, 455207
                  sra          s3, a2, a7
                  ori          a4, a5, -1635
                  lw           s4, 4(t5)
                  lui          a3, 607616
                  addi         t5, t5, 52
                  addi         t3, t5, -1189
                  slt          t1, t5, t4
                  srli         s6, s9, 31
                  and          t6, s0, a3
                  nop
831:              addi x24, x20, 1
831:              jalr x24, x24, 0
sub_4:            slti         t1, a3, -835
                  addi         t5, t5, -52
                  slt          s0, s11, a2
                  sw           s4, 4(t5)
                  ori          s5, s8, 366
                  addi         s9, zero, -6 #init loop 0 counter
                  ori          gp, a2, -1691
                  slli         a4, t0, 14
                  addi         a1, zero, 15 #init loop 0 limit
                  addi         a6, a0, 144
                  slt          s3, a7, t0
                  sltiu        s6, s1, -42
sub_4_12_0_t:     andi         t0, a6, 1918
                  addi         s9, s9, 8 #update loop 0 counter
                  add          s2, tp, a7
                  sltu         s8, t6, s0
                  and          a2, a5, s0
                  blt          s9, a1, sub_4_12_0_t #branch for loop 0
                  sub          sp, gp, s9
                  addi         a0, zero, -4 #init loop 0 counter
                  andi         a2, s7, -628
                  sltu         s8, a6, a3
                  and          s0, t4, gp
                  nop
                  nop
                  addi         a1, zero, -14 #init loop 0 limit
                  slt          s6, s6, t5
                  sll          sp, s3, s10
                  add          t0, t0, t6
                  ori          a6, ra, -456
                  auipc        a3, 978180
                  slti         s11, t3, 1315
sub_4_15_0_t:     andi         s5, s0, 1370
                  srai         s6, gp, 21
                  addi         a0, a0, -10 #update loop 0 counter
                  nop
                  and          a6, a3, t5
                  ori          sp, sp, -806
                  bge          a0, a1, sub_4_15_0_t #branch for loop 0
                  srl          s11, t2, s9
                  addi         s5, zero, 0 #init loop 1 counter
                  lui          s2, 373352
                  add          a6, s11, t3
                  slt          t1, t6, sp
                  slt          gp, t3, s4
                  xor          t1, t2, s1
                  add          s1, t1, a5
                  addi         s6, s5, -1035
                  addi         a2, zero, 7 #init loop 1 limit
sub_4_5_1_t:      addi         s4, a2, -1793
                  addi         s5, s5, 7 #update loop 1 counter
                  slti         gp, tp, -839
                  addi         ra, zero, 6 #init loop 0 counter
                  ori          gp, a7, 838
                  andi         s2, s11, 881
                  sll          a4, s9, t0
                  and          t0, t5, tp
                  sltiu        s3, s8, -1651
                  sltu         a6, t6, a1
                  addi         s9, zero, 18 #init loop 0 limit
sub_4_5_0_t:      add          s3, t3, t3
                  ori          a4, a0, -451
                  andi         a3, s10, -814
                  andi         a5, s7, 489
                  slt          a5, s2, s2
                  addi         ra, ra, 4 #update loop 0 counter
                  sub          zero, t4, t1
                  and          a5, s5, s9
                  blt          ra, s9, sub_4_5_0_t #branch for loop 0
                  sra          sp, s10, a5
                  sltu         tp, s8, s10
                  bne          s5, a2, sub_4_5_1_t #branch for loop 1
                  srl          a3, s9, a2
                  addi         a0, zero, -6 #init loop 0 counter
                  nop
                  srai         t0, a7, 10
                  addi         a2, zero, -4 #init loop 0 limit
                  sra          a5, s8, s1
sub_4_20_0_t:     slt          s4, s8, s9
                  addi         a0, a0, 1 #update loop 0 counter
                  sll          a4, a3, t2
                  xor          s10, a7, s9
                  srli         t2, s1, 12
                  beq          a0, a2, sub_4_20_0_t #branch for loop 0
                  xor          s8, s0, gp
                  addi         t2, zero, -1 #init loop 0 counter
                  addi         s0, sp, -1966
                  slli         s1, s8, 10
                  auipc        a1, 407885
                  auipc        s9, 128365
                  sltu         t4, a6, a5
                  sltu         ra, s1, a6
                  addi         s4, zero, -16 #init loop 0 limit
                  sub          gp, a1, t0
sub_4_10_0_t:     lui          tp, 620120
                  xor          a2, gp, s9
                  srli         s10, a3, 28
                  addi         t2, t2, -3 #update loop 0 counter
                  ori          s1, s6, 1821
                  and          s11, s8, t4
                  sltiu        s0, a0, 1046
                  srai         s1, s0, 15
                  srli         zero, s5, 31
                  and          sp, a4, s3
                  srli         s9, s8, 9
                  slti         s9, a3, -1412
                  beq          t2, s4, sub_4_10_0_t #branch for loop 0
                  sub          s0, a3, t1
                  addi         s8, zero, 8 #init loop 1 counter
                  addi         a1, zero, 8 #init loop 1 limit
                  addi         a5, t2, -618
sub_4_22_1_t:     or           a6, t1, t6
                  addi         s8, s8, -6 #update loop 1 counter
                  auipc        t0, 286867
                  addi         a4, zero, -6 #init loop 0 counter
                  srli         s0, a4, 13
                  slli         tp, s7, 12
                  sra          t4, tp, zero
                  sll          s4, s9, s0
                  addi         a2, zero, 15 #init loop 0 limit
                  ori          ra, s5, 1615
                  slt          a6, gp, t1
sub_4_22_0_t:     slt          s5, s9, t2
                  slt          s11, a2, a3
                  addi         a4, a4, 5 #update loop 0 counter
                  blt          a4, a2, sub_4_22_0_t #branch for loop 0
                  slt          s4, t5, s11
                  sra          s3, gp, a0
                  auipc        sp, 920345
                  srli         t0, s5, 31
                  add          a0, a6, a1
                  srl          sp, t3, s10
                  bgeu         s8, a1, sub_4_22_1_t #branch for loop 1
                  sra          zero, tp, s10
                  addi         sp, zero, 5 #init loop 0 counter
                  sltiu        s4, gp, 1467
                  auipc        s11, 193539
                  slti         s11, a7, -1954
                  addi         t1, zero, -17 #init loop 0 limit
                  srl          a3, s10, sp
sub_4_21_0_t:     nop
                  sll          s8, s9, t0
                  addi         sp, sp, -7 #update loop 0 counter
                  sltiu        t6, a0, -2039
                  slt          t2, t4, t3
                  bge          sp, t1, sub_4_21_0_t #branch for loop 0
                  xor          s2, t2, zero
                  addi         s1, zero, -2 #init loop 0 counter
                  slt          s4, ra, tp
                  xor          a2, t5, s0
                  slli         a1, tp, 16
                  lui          s3, 77141
                  addi         t2, zero, -13 #init loop 0 limit
                  xori         a1, s3, -1861
                  andi         t4, t2, -1728
sub_4_4_0_t:      sltu         s11, s6, a6
                  srai         s8, s5, 0
                  addi         s1, s1, -2 #update loop 0 counter
                  slti         s11, a4, -1557
                  sltiu        a5, s4, -1632
                  sltu         s0, zero, a0
                  slli         a1, s11, 23
                  add          s4, gp, s8
                  sltu         t6, ra, s7
                  srl          t4, s6, s8
                  addi         s10, zero, -1480
                  nop
                  andi         a3, zero, -781
                  addi         zero, sp, 318
                  and          s9, a3, a3
                  bge          s1, t2, sub_4_4_0_t #branch for loop 0
                  or           s6, s1, s7
                  addi         t4, zero, -2 #init loop 0 counter
                  srl          zero, gp, s6
                  slti         s5, t6, -533
                  slt          tp, a2, s0
                  srai         s4, s6, 4
                  nop
                  addi         t0, zero, -16 #init loop 0 limit
                  addi         s1, s7, 1147
                  srai         a1, s11, 27
                  slli         s5, s3, 18
                  xor          s10, t3, ra
                  add          s11, s1, t0
                  srli         tp, t1, 13
                  srai         sp, a2, 13
                  auipc        s8, 188779
                  sltu         t6, t5, gp
                  addi         a5, a1, 760
sub_4_13_0_t:     slti         t2, t6, 514
                  sra          a1, t6, s9
                  addi         t1, s6, 586
                  ori          a4, s4, -1904
                  slli         gp, a1, 18
                  addi         t4, t4, -7 #update loop 0 counter
                  srli         t3, gp, 20
                  xori         s0, s2, 683
                  beq          t4, t0, sub_4_13_0_t #branch for loop 0
                  sub          s4, s6, t5
                  addi         s6, zero, 6 #init loop 0 counter
                  sub          s9, s5, s5
                  slt          zero, s10, a6
                  addi         tp, zero, 6 #init loop 0 limit
                  srl          t1, s4, zero
                  addi         a5, s5, -145
sub_4_7_0_t:      nop
                  auipc        s5, 187517
                  srai         t0, s8, 20
                  sltiu        s9, s4, -1569
                  addi         s6, s6, -2 #update loop 0 counter
                  add          s2, s3, sp
                  addi         a1, s10, 1765
                  nop
                  bgeu         s6, tp, sub_4_7_0_t #branch for loop 0
                  sltiu        a1, s0, -185
                  addi         s6, zero, -5 #init loop 1 counter
                  addi         s9, zero, -13 #init loop 1 limit
                  add          s8, t0, a3
                  slti         a4, t4, 1729
                  add          sp, s3, s11
                  addi         a1, a5, 1257
sub_4_11_1_t:     nop
                  addi         s8, gp, 1601
                  xor          a4, s11, t5
                  addi         s6, s6, -8 #update loop 1 counter
                  xori         s8, s3, 1788
                  and          gp, s11, t0
                  xor          t4, zero, gp
                  addi         t0, zero, 0 #init loop 0 counter
                  slt          t1, ra, a4
                  xor          a2, t1, ra
                  srl          s10, a3, a5
                  addi         a3, zero, 16 #init loop 0 limit
                  slli         s11, s10, 1
                  auipc        s3, 542956
                  auipc        ra, 502022
                  srli         tp, s2, 17
                  xor          t4, s4, a4
                  lui          t2, 505461
sub_4_11_0_t:     sltiu        s10, sp, 956
                  xor          s10, s0, s1
                  sub          a2, zero, s10
                  addi         t0, t0, 4 #update loop 0 counter
                  blt          t0, a3, sub_4_11_0_t #branch for loop 0
                  srli         s3, a6, 5
                  auipc        s10, 2000
                  beq          s6, s9, sub_4_11_1_t #branch for loop 1
                  srl          a0, s7, a7
                  addi         a6, zero, 7 #init loop 0 counter
                  xor          t4, a0, a6
                  slt          s5, gp, s9
                  sra          s4, sp, t4
                  lui          s5, 327959
                  or           t2, a1, s11
                  addi         s10, a2, 1473
                  addi         a5, zero, 7 #init loop 0 limit
                  srli         s3, s4, 4
                  slt          gp, a6, a0
                  sub          t1, zero, s4
                  nop
                  xor          a2, a5, s8
sub_4_18_0_t:     sub          s0, zero, tp
                  sra          s0, s0, s2
                  nop
                  srl          s6, zero, gp
                  slli         gp, zero, 0
                  srl          t2, t2, gp
                  addi         a1, t6, 1226
                  slli         s1, a6, 27
                  addi         a6, a6, -6 #update loop 0 counter
                  add          a2, t4, t4
                  or           zero, s9, t5
                  sra          s6, s7, t2
                  slti         s1, s0, -2032
                  bgeu         a6, a5, sub_4_18_0_t #branch for loop 0
                  nop
                  addi         s9, zero, -1 #init loop 1 counter
                  or           s5, tp, ra
                  ori          s10, s4, 2012
                  addi         a2, zero, 14 #init loop 1 limit
                  xor          t1, s5, a6
                  slli         a5, t1, 5
sub_4_3_1_t:      sltu         s11, s8, a6
                  srl          t4, a2, sp
                  addi         s9, s9, 1 #update loop 1 counter
                  sra          t6, zero, s9
                  sub          s2, t4, t0
                  addi         tp, zero, 5 #init loop 0 counter
                  addi         a0, zero, 19 #init loop 0 limit
                  addi         s8, s11, -1768
                  addi         s10, tp, -1635
                  slt          s2, s1, t3
                  srai         ra, s1, 4
                  sltiu        s6, a3, -905
                  sll          a1, ra, t6
sub_4_3_0_t:      sltu         t1, a1, t0
                  slt          t6, t5, t6
                  slli         s3, s8, 8
                  sll          s5, t2, s6
                  addi         tp, tp, 9 #update loop 0 counter
                  auipc        a5, 345265
                  blt          tp, a0, sub_4_3_0_t #branch for loop 0
                  sll          s5, s2, s11
                  lui          t2, 650730
                  sltu         t1, s1, a2
                  bltu         s9, a2, sub_4_3_1_t #branch for loop 1
                  slli         t2, s2, 9
                  addi         a6, zero, 9 #init loop 0 counter
                  add          tp, t3, s6
                  srl          s3, s10, ra
                  xori         gp, zero, 279
                  sll          gp, a0, a7
                  and          t0, a0, t5
                  sra          s3, sp, t3
                  slt          s8, s8, s3
                  sll          s8, tp, a0
                  slli         zero, s7, 27
                  sltu         s9, t5, a6
                  slli         s10, a0, 30
                  addi         t1, zero, 9 #init loop 0 limit
                  auipc        gp, 564174
                  xor          t2, t4, a7
                  sra          t0, s5, s0
sub_4_2_0_t:      auipc        t0, 596222
                  nop
                  addi         a6, a6, -8 #update loop 0 counter
                  srli         a3, s2, 27
                  lui          a1, 16702
                  bgeu         a6, t1, sub_4_2_0_t #branch for loop 0
                  ori          t2, a3, 1590
                  addi         t6, zero, -4 #init loop 1 counter
                  andi         zero, t5, -50
                  addi         gp, zero, 8 #init loop 1 limit
                  ori          tp, t6, 1843
sub_4_0_1_t:      and          s2, a3, a1
                  addi         t6, t6, 1 #update loop 1 counter
                  addi         s10, zero, -10 #init loop 0 counter
                  addi         a4, zero, -20 #init loop 0 limit
                  sub          tp, a3, tp
sub_4_0_0_t:      lui          s11, 45774
                  sub          t1, a1, s6
                  addi         s10, s10, -10 #update loop 0 counter
                  andi         ra, t0, 1510
                  srl          s5, s0, t1
                  bne          s10, a4, sub_4_0_0_t #branch for loop 0
                  sll          a5, t1, a7
                  andi         s0, s0, 29
                  bne          t6, gp, sub_4_0_1_t #branch for loop 1
                  lui          s1, 423715
                  addi         a3, zero, 10 #init loop 0 counter
                  slti         s3, s9, -81
                  addi         a0, zero, 9 #init loop 0 limit
sub_4_16_0_t:     addi         a4, a2, -1485
                  addi         a3, a3, -8 #update loop 0 counter
                  or           sp, s9, a5
                  bgeu         a3, a0, sub_4_16_0_t #branch for loop 0
                  or           s2, a3, t6
                  addi         a1, zero, -6 #init loop 1 counter
                  auipc        s1, 789914
                  lui          s3, 423007
                  addi         s5, zero, -13 #init loop 1 limit
                  srli         s3, gp, 19
sub_4_1_1_t:      andi         ra, zero, 1582
                  sltu         a6, tp, s5
                  addi         a1, a1, -1 #update loop 1 counter
                  addi         a0, zero, -9 #init loop 0 counter
                  addi         gp, zero, -17 #init loop 0 limit
                  sra          s9, a4, tp
sub_4_1_0_t:      xor          t3, t2, s5
                  sub          tp, s1, s5
                  addi         a0, a0, -8 #update loop 0 counter
                  xori         t0, s1, -199
                  xor          ra, s9, s8
                  and          a3, s2, sp
                  addi         a6, t4, -1729
                  addi         sp, zero, -128
                  sll          a3, s8, s1
                  beq          a0, gp, sub_4_1_0_t #branch for loop 0
                  beq          a1, s5, sub_4_1_1_t #branch for loop 1
                  xori         s4, s11, 885
                  addi         s0, zero, 7 #init loop 0 counter
                  auipc        gp, 226546
                  add          sp, s11, s6
                  slt          ra, a7, s1
                  lui          s3, 701095
                  ori          a5, s11, -115
                  sub          s5, s3, t1
                  addi         a0, zero, 2 #init loop 0 limit
sub_4_19_0_t:     add          t2, s5, sp
                  addi         s0, s0, -1 #update loop 0 counter
                  add          s6, t1, s9
                  and          zero, t5, s1
                  nop
                  bgeu         s0, a0, sub_4_19_0_t #branch for loop 0
                  nop
                  addi         s8, zero, -7 #init loop 1 counter
                  auipc        t2, 965432
                  sra          t3, a1, a4
                  slt          zero, s8, a3
                  lui          s4, 814747
                  andi         a3, a5, 766
                  addi         s11, zero, -10 #init loop 1 limit
                  or           a5, zero, s9
                  sra          s5, sp, s11
                  sltu         a6, s10, t2
sub_4_17_1_t:     lui          a5, 463117
                  sub          s2, s3, s0
                  addi         s8, s8, -4 #update loop 1 counter
                  srai         ra, t0, 14
                  addi         t6, zero, 2 #init loop 0 counter
                  addi         tp, zero, -19 #init loop 0 limit
                  lui          t0, 43541
sub_4_17_0_t:     add          a0, a5, s11
                  ori          a4, t2, 1938
                  slt          s2, t6, a4
                  addi         t6, t6, -7 #update loop 0 counter
                  bne          t6, tp, sub_4_17_0_t #branch for loop 0
                  add          a6, t3, a1
                  bge          s8, s11, sub_4_17_1_t #branch for loop 1
                  srai         t2, t4, 20
                  addi         sp, zero, 2 #init loop 1 counter
                  addi         a6, zero, 2 #init loop 1 limit
                  or           t1, zero, a0
sub_4_6_1_t:      or           s4, t4, tp
                  srli         s11, s4, 28
                  addi         sp, sp, -1 #update loop 1 counter
                  addi         s1, zero, 10 #init loop 0 counter
                  addi         s2, zero, 9 #init loop 0 limit
                  add          s0, t3, s9
sub_4_6_0_t:      nop
                  addi         s1, s1, -8 #update loop 0 counter
                  bgeu         s1, s2, sub_4_6_0_t #branch for loop 0
                  sltu         t1, zero, s6
                  bgeu         sp, a6, sub_4_6_1_t #branch for loop 1
                  andi         gp, a2, 117
                  add          a1, zero, s5
                  sra          s10, tp, t3
                  bgeu         s0, tp, 7f
                  sltu         s6, t1, s10
                  srli         sp, s5, 10
                  lui          s1, 295009
                  auipc        s3, 302990
7:                and          sp, a0, s0
                  beq          s1, t6, 11f
                  ori          s5, t0, 1820
                  addi         s0, zero, -9 #init loop 1 counter
                  auipc        s10, 990550
                  add          t6, a0, t3
                  srl          a3, a4, s6
                  addi         s8, zero, 6 #init loop 1 limit
sub_4_14_1_t:     addi         s3, a6, -1785
                  slt          t0, a2, t1
                  srl          a5, s7, ra
                  addi         s0, s0, 3 #update loop 1 counter
                  addi         a2, zero, 3 #init loop 0 counter
                  sub          s3, t3, a5
                  xor          t0, s11, s7
                  andi         s1, t6, 771
                  sltu         a3, s3, s11
                  sll          t2, s1, gp
                  sltiu        t4, t3, 1721
                  addi         s6, zero, 10 #init loop 0 limit
sub_4_14_0_t:     addi         a5, s1, -1973
                  sll          zero, a7, t6
                  slli         zero, t3, 2
                  addi         a2, a2, 3 #update loop 0 counter
                  bltu         a2, s6, sub_4_14_0_t #branch for loop 0
                  srl          s5, s2, s2
                  bne          s0, s8, sub_4_14_1_t #branch for loop 1
                  xor          t0, t5, sp
                  bne          t5, s9, 17f
11:               bgeu         s6, t0, 25f
                  bltu         s10, s4, 20f
                  or           a2, sp, a2
                  ori          s0, s7, -1728
                  sltiu        gp, t5, 833
                  bgeu         a5, s11, 26f
17:               auipc        s4, 538231
                  srai         gp, tp, 2
                  nop
20:               andi         s4, a4, -1591
                  bge          a4, a2, 23f
                  slt          ra, a2, ra
23:               sltiu        t4, s1, -1933
                  nop
25:               beq          s3, a3, 36f
26:               bge          t0, a5, 29f
                  sltiu        s9, a4, 1769
                  bne          s8, s5, 45f
29:               srli         s2, a4, 5
                  nop
                  xor          s0, zero, t6
                  nop
                  or           s8, a6, a5
                  lui          sp, 516998
                  or           s2, ra, zero
36:               and          gp, s4, a7
                  xor          a1, s5, s6
                  sra          gp, s11, s7
                  slli         t0, s10, 15
                  addi         gp, ra, -1328
                  auipc        s5, 474084
                  lui          ra, 451974
                  blt          t5, tp, 46f
                  blt          s9, a6, 58f
45:               sltu         a3, s9, s2
46:               and          sp, s7, zero
                  sll          t1, s4, a5
                  sltu         t1, tp, t5
                  lui          s10, 802460
                  sll          s3, s3, zero
                  slli         a6, sp, 11
                  nop
                  bge          s6, gp, 63f
                  slti         t6, a7, -174
                  sltu         t6, t5, s1
                  auipc        zero, 315235
                  bge          a6, s0, 76f
58:               sra          a2, a7, s3
                  sltu         a0, s4, t1
                  add          sp, s9, t5
                  bgeu         a1, a4, 63f
                  blt          t3, tp, 65f
63:               or           t0, s6, s7
                  slti         s2, s5, 51
65:               slli         a2, a7, 7
                  bge          s5, t6, 74f
                  andi         s9, a4, 1348
                  slt          gp, t3, sp
                  slli         a5, t1, 18
                  srli         gp, a7, 18
                  srli         s2, tp, 7
                  andi         s10, a5, -1706
                  srai         a1, t4, 3
74:               addi         s0, s0, 439
                  beq          ra, ra, 79f
76:               auipc        a3, 909162
                  slti         sp, s4, 1994
                  beq          t1, zero, 81f
79:               blt          a5, s0, 97f
                  xori         t1, s6, -217
81:               ori          zero, s11, 302
                  slti         t4, t2, 375
                  or           s5, s9, s5
                  sub          t1, s4, tp
                  sltu         t0, sp, a7
                  addi         ra, s11, 934
                  sll          a2, s7, a5
                  xor          s3, tp, a3
                  and          a6, a4, a6
                  blt          a1, s11, 104f
                  or           t2, t1, tp
                  sub          t1, a3, t4
                  addi         t6, s4, 269
                  xori         a3, a2, -429
                  bge          zero, zero, 114f
                  sll          s2, a3, s0
97:               sub          a6, s1, t6
                  sll          s2, t0, a3
                  nop
                  bne          s3, a3, 105f
                  andi         s9, t5, -2040
                  bgeu         zero, sp, 120f
                  and          gp, gp, s9
104:              bge          s8, a5, 123f
105:              slt          t1, a0, ra
                  sra          ra, a1, s2
                  or           s1, s8, t5
                  xor          t2, t6, a2
                  or           a5, s4, s6
                  and          a4, a1, a3
                  lui          s0, 168464
                  srli         sp, s0, 14
                  sll          a4, tp, s8
114:              auipc        s10, 24627
                  or           s0, s4, t5
                  sra          sp, zero, s0
                  slti         s5, a5, 1933
                  lui          a2, 992194
                  ori          t2, s11, -1258
120:              ori          t1, sp, -513
                  bne          a0, s4, 139f
                  bge          a1, t6, 127f
123:              sra          s9, s2, s7
                  sltu         t2, t0, a5
                  bne          t0, sp, 143f
                  srli         s4, a5, 17
127:              xor          a6, s11, t3
                  auipc        t4, 351281
                  bge          t0, gp, 144f
                  xor          a0, s2, s10
                  sltiu        t1, a7, -137
                  andi         s2, t1, 1584
                  and          s0, tp, a0
                  sll          s8, a3, a4
                  and          a2, a0, a6
                  and          tp, a6, s8
                  bgeu         gp, s2, 139f
                  slt          s3, gp, s5
139:              nop
                  srai         ra, s9, 30
                  bge          a1, s5, 143f
                  andi         zero, t5, -1525
143:              xori         s10, s1, -1996
144:              lui          t2, 715976
                  bne          s3, zero, 163f
                  bltu         tp, zero, 149f
                  srli         gp, s2, 15
                  bltu         a6, t6, 155f
149:              sub          t1, a4, s2
                  sltiu        s10, t4, -1781
                  bge          s0, s3, 159f
                  andi         s9, s6, -1091
                  xor          s11, s7, a1
                  xori         t6, t2, -201
155:              addi         ra, s6, 1097
                  beq          t0, s2, 158f
                  or           s4, s2, t6
158:              blt          ra, t1, 177f
159:              blt          s11, s3, 161f
                  lui          t6, 723519
161:              addi         s2, gp, 1171
                  srai         t4, a7, 18
163:              xor          s6, s3, a7
                  sltiu        s9, a2, -570
                  or           s2, a5, a2
                  add          s1, t2, t5
                  add          zero, gp, s8
                  xori         t1, s7, -1919
                  add          zero, t1, a6
                  xori         a3, a4, -265
                  srai         s1, s5, 17
                  sra          s0, s0, t3
                  andi         s0, t0, 1669
                  xori         sp, t0, -138
                  or           s3, t2, a7
                  andi         a2, tp, 177
177:              sub          s4, a3, a5
                  bltu         tp, a4, 192f
                  andi         a5, s10, 1585
                  srai         a0, s5, 29
                  srl          s6, s0, s6
                  lui          t1, 595719
                  sub          t4, s4, s6
                  sub          t3, s5, t2
                  addi         t1, ra, 1744
                  bltu         t4, t3, 201f
                  xor          t4, tp, s9
                  blt          a2, gp, 206f
                  srai         ra, s1, 7
                  slt          a4, a7, ra
                  xori         s9, s6, -1971
192:              sltu         a1, a3, s10
                  andi         a2, s6, 493
                  srli         t6, s5, 3
                  bge          t0, t2, 198f
                  slli         sp, s8, 15
                  and          a1, t2, t4
198:              sub          t0, s9, t1
                  xori         t2, a5, 1322
                  xori         s9, s8, -1398
201:              slli         s9, t3, 31
                  sll          s1, t6, s11
                  or           s10, tp, t1
                  nop
                  or           s4, s4, a0
206:              addi         t6, s7, 853
                  srl          t2, t3, a1
                  sltu         s2, a3, s4
                  blt          a0, t3, 227f
                  bge          t4, t3, 215f
                  ori          zero, tp, -1602
                  xor          a0, a7, gp
                  bge          s10, t6, 230f
                  and          a3, a5, s5
215:              bltu         a2, s5, 218f
                  sra          t6, s7, a6
                  bltu         zero, a3, 222f
218:              srli         s1, s8, 27
                  and          s8, s10, t0
                  xor          t3, a2, s4
                  xori         s0, a4, 1310
222:              slli         t3, s10, 24
                  auipc        s8, 939400
                  sltiu        s6, gp, -801
                  ori          s6, a2, -1062
                  add          a1, t2, s5
227:              add          gp, sp, s7
                  beq          t6, s5, 242f
                  bltu         s10, a1, 234f
230:              andi         t2, a5, -2020
                  slli         s11, a2, 24
                  beq          s7, tp, 242f
                  addi         s1, a2, -1199
234:              slli         t0, s8, 10
                  beq          s0, a3, 254f
                  bne          t3, a0, 250f
                  slli         s8, t6, 21
                  slt          ra, ra, a2
                  slli         a4, s2, 2
                  addi         a0, a2, -36
                  slti         s5, s5, -909
242:              sra          s0, s1, s3
                  bltu         a4, t3, 246f
                  slli         t0, a1, 29
                  and          t0, t6, gp
246:              auipc        s5, 571789
                  srai         s9, ra, 26
                  bgeu         s6, s8, 258f
                  bltu         t0, t2, 257f
250:              ori          a2, a5, -585
                  sltu         sp, s7, a0
                  xor          t1, s1, a3
                  nop
254:              blt          a5, gp, 258f
                  slli         a4, a5, 16
                  lui          sp, 810959
257:              sltiu        t4, s4, -1510
258:              xori         s2, s2, -489
                  sll          s1, a5, s4
                  auipc        t1, 541668
                  srli         a3, t6, 7
                  add          s5, t3, a4
                  slli         s10, gp, 13
                  bltu         s10, s10, 282f
                  srli         s0, t1, 21
                  xor          a4, a0, s0
                  srl          t6, gp, a5
                  xori         s6, s9, 1176
                  bge          s4, a0, 280f
                  srai         t3, a1, 13
                  ori          t4, t4, -829
                  sra          t6, t2, s6
                  sll          a0, s6, gp
                  addi         a1, a0, 1505
                  srli         tp, a0, 16
                  beq          a6, a1, 279f
                  sra          s3, t1, t4
                  lui          a3, 717991
279:              bne          s8, s1, 298f
280:              sltiu        a4, ra, -605
                  slti         s4, s10, -707
282:              srl          t3, s9, gp
                  andi         s0, t3, -1318
                  sltu         a6, s4, t2
                  blt          s9, t3, 287f
                  sltiu        s4, t2, -1738
287:              sra          s9, zero, a3
                  slli         a0, a3, 5
                  bgeu         a0, zero, 294f
                  slli         s9, t5, 27
                  bltu         a7, a2, 305f
                  nop
                  ori          a6, s6, 1149
294:              sub          a4, sp, s0
                  sltu         tp, t6, a2
                  andi         t3, a0, -1799
                  andi         a6, sp, -1668
298:              beq          a4, a0, 317f
                  bne          s10, s5, 304f
                  beq          s7, t0, 318f
                  and          s11, s3, s5
                  nop
                  sltu         s1, sp, t2
304:              lui          ra, 898898
305:              srai         s9, a3, 2
                  sltiu        s8, s7, 214
                  and          s8, t3, s11
                  sra          a4, s9, s9
                  sll          s2, s0, a0
                  sltu         s8, a1, a0
                  and          t4, s5, t5
                  bne          a2, t2, 331f
                  lui          a5, 182558
                  srai         s1, a0, 27
                  sll          a6, s2, a6
                  or           a2, t0, a1
317:              bge          s11, s5, 320f
318:              bge          a1, a1, 336f
                  sra          gp, zero, s4
320:              and          s5, s3, t1
                  sub          ra, zero, t1
                  sll          s8, t0, s10
                  sra          s5, gp, s10
                  slt          tp, a2, s6
                  beq          t6, a6, 328f
                  bltu         a7, s5, 329f
                  auipc        s5, 737790
328:              ori          s10, ra, -2000
329:              and          t4, t4, s1
                  beq          s0, tp, 347f
331:              bgeu         gp, a0, 335f
                  slti         a3, s10, -990
                  sltu         sp, a6, sp
                  addi         s2, zero, -5 #init loop 1 counter
                  sltu         a1, tp, s9
                  sra          t3, s3, s1
                  auipc        s8, 453114
                  and          s11, t2, s5
                  or           s4, zero, s7
                  addi         s1, zero, 1 #init loop 1 limit
                  slt          s0, gp, s4
                  add          s9, a0, s10
sub_4_8_1_t:      slti         s3, s11, -1465
                  andi         s3, t5, -1200
                  xor          s8, a0, a7
                  addi         s2, s2, 2 #update loop 1 counter
                  sll          s4, s9, ra
                  add          s3, s4, gp
                  addi         t2, zero, 7 #init loop 0 counter
                  addi         s10, zero, -2 #init loop 0 limit
                  or           a1, a6, s6
                  srai         zero, s7, 12
sub_4_8_0_t:      nop
                  sltu         s6, a3, a4
                  addi         t2, t2, -3 #update loop 0 counter
                  beq          t2, s10, sub_4_8_0_t #branch for loop 0
                  xor          a0, a7, a5
                  blt          s2, s1, sub_4_8_1_t #branch for loop 1
                  srli         a0, s7, 0
                  bge          a1, gp, 336f
335:              sltu         s0, t2, s3
336:              bne          a4, s4, 355f
                  slli         t6, tp, 26
                  sra          s2, tp, s5
                  bgeu         a3, s9, 341f
                  sltu         s8, t6, s6
341:              bgeu         sp, s9, 359f
                  srai         t0, a4, 29
                  andi         s9, s3, -1831
                  sra          s1, s8, a7
                  slt          s8, s3, t5
                  lui          sp, 872103
347:              slti         s10, s9, 204
                  sll          s9, a6, s8
                  andi         tp, t3, 1879
                  or           t0, s0, a3
                  srli         a5, a6, 31
                  srl          a1, ra, s8
                  sltiu        a1, tp, 52
                  beq          tp, t6, 357f
355:              nop
                  slti         t3, a2, 1000
357:              bne          t2, t4, 365f
                  and          s10, s11, t1
359:              srl          gp, s9, tp
                  or           s3, a5, s9
                  addi         a6, a0, 461
                  bge          gp, s3, 376f
                  beq          a2, s11, 373f
                  bgeu         t0, tp, 371f
365:              srai         a2, t4, 12
                  xor          t0, sp, zero
                  sra          s1, s1, a3
                  bge          t4, a0, 383f
                  sra          s8, s2, a2
                  sub          a6, t1, a5
371:              sltu         s4, t0, t1
                  bltu         t5, gp, 377f
373:              or           t1, s6, t4
                  srli         s9, s2, 5
                  srai         zero, t2, 16
376:              srli         tp, s4, 6
377:              sll          gp, s8, s0
                  srai         s1, a3, 17
                  sltu         s11, s3, t5
                  bge          t3, t4, 390f
                  sltiu        sp, a6, -629
                  slli         s4, t5, 15
383:              or           s6, t4, t2
                  srl          t6, s4, s9
                  add          sp, t1, t6
                  bge          s7, a2, 394f
                  bne          s7, a3, 401f
                  ori          tp, a0, 1052
                  srai         zero, a1, 11
390:              srai         t4, s2, 23
                  sltiu        t4, a5, -1414
                  srli         t2, tp, 2
                  srli         t6, a2, 31
394:              blt          s3, t6, 412f
                  blt          a0, s8, 398f
                  slli         zero, t2, 13
                  slti         gp, sp, -130
398:              slli         s2, zero, 18
                  and          s9, t5, s10
                  nop
401:              addi         s3, t5, -1822
                  addi         s11, s4, -1994
                  sub          t3, t5, a7
                  nop
                  bgeu         t4, s10, 416f
                  blt          gp, a7, 416f
                  srai         sp, t0, 7
                  auipc        a6, 75664
                  bgeu         s8, s1, 411f
                  srai         t1, a7, 16
411:              beq          sp, t1, 414f
412:              auipc        s10, 50497
                  sub          t1, s1, s3
414:              bltu         a2, s11, 433f
                  addi         s2, s3, 1776
416:              slli         a2, s11, 19
                  andi         a0, t1, -1021
                  srli         s1, s5, 7
                  slt          a2, s3, t0
                  sra          s9, s7, a3
                  sltu         s5, sp, s11
                  slli         t0, sp, 10
                  andi         t1, s7, 1906
                  slt          s3, t0, a1
                  ori          t4, a2, -516
                  slt          a3, s11, s1
                  sltiu        a5, s2, 916
                  xor          s6, s9, s6
                  sll          s9, t1, s2
                  addi         s9, t2, -1235
sub_4_j6:         jal          s4, sub_5 #jump sub_4 -> sub_5
                  nop
                  bne          t4, s1, 443f
                  slt          s0, s0, tp
                  srai         s5, a4, 16
                  bge          a1, s4, 446f
                  nop
                  or           t4, a1, sp
                  sltiu        t3, t5, 398
                  sub          t3, s4, a5
                  auipc        a3, 261551
433:              lui          a3, 8168
                  ori          zero, a1, 284
                  or           a5, s6, s4
                  or           a5, t1, t3
                  blt          s10, s11, 455f
                  sub          a3, s7, sp
                  lui          s6, 611642
                  sra          a4, gp, s3
                  srli         s0, s4, 27
                  addi         a5, s9, -1433
443:              bgeu         a4, t4, 461f
                  bne          a3, s0, 447f
                  andi         t0, t0, 545
446:              slli         t0, t4, 9
447:              bltu         s2, a4, 454f
                  or           t4, s6, t3
                  sra          a3, a6, a0
                  srai         s2, s11, 28
                  lui          s6, 83459
                  lui          a2, 573884
                  ori          s5, s2, 501
454:              blt          s4, t5, 459f
455:              andi         s4, a0, -958
                  slli         ra, t3, 4
                  auipc        t0, 873039
                  bne          t5, a7, 473f
459:              srli         s5, a0, 13
                  slt          s5, s2, s11
461:              srl          s2, gp, t0
                  xor          a3, sp, a1
                  sltu         s8, a2, s8
                  slli         a3, s7, 5
                  addi         a3, gp, -1141
                  or           ra, t1, t2
                  and          s10, s6, t0
                  lui          sp, 369280
                  slli         t4, a2, 1
                  slti         t4, s1, -1119
                  ori          a5, ra, -1605
                  sub          s5, t2, s10
473:              auipc        s1, 31296
                  slli         a0, a0, 26
                  xor          s3, a0, t3
                  sub          a2, a0, s8
                  srl          s9, t2, s10
                  srl          s5, t5, s9
                  slti         t4, s7, -3
                  slli         t4, s5, 18
                  blt          t4, s5, 491f
                  xori         s11, t6, 1723
                  slt          a2, t2, a7
                  addi         s11, t3, 1441
                  auipc        gp, 64598
                  ori          s2, a2, 1965
                  blt          zero, s6, 498f
                  lui          t0, 237180
                  srli         t4, s6, 11
                  add          t0, t5, sp
491:              xor          s10, a4, t1
                  addi         t1, s3, 1096
                  xor          s6, a4, ra
                  srl          s4, s0, s1
                  and          ra, s11, s10
                  lui          s1, 829659
                  xori         s2, sp, -1237
498:              xori         s8, s9, 1302
                  xor          s1, a0, a7
                  srai         t1, t5, 2
                  slt          s11, s9, tp
                  nop
                  slti         sp, s3, -457
                  slli         s8, a0, 2
                  bge          s1, t6, 519f
                  beq          a4, a0, 514f
                  add          zero, sp, t4
                  srai         s9, a1, 1
                  lui          ra, 646604
                  srai         s3, a5, 25
                  bltu         s11, a5, 514f
                  sltiu        t3, t5, -1050
                  add          s0, s1, a4
514:              blt          t5, sp, 516f
                  nop
516:              xor          s4, zero, s8
                  blt          s7, t1, 520f
                  bgeu         s2, t6, 536f
519:              addi         s2, s10, -1934
520:              bne          sp, s7, 538f
                  nop
                  slti         s0, t1, -1139
                  or           s1, a0, s10
                  lui          tp, 396498
                  srli         a0, s6, 21
                  add          ra, a6, s9
                  andi         s1, ra, -1026
                  bge          t5, t3, 536f
                  xor          a6, s8, s2
                  auipc        a4, 580401
                  and          s0, ra, t2
                  blt          s4, ra, 549f
                  sltu         s5, t5, s6
                  add          s1, sp, t2
                  bgeu         t4, s10, 540f
536:              srl          a5, t6, t4
                  blt          sp, a5, 551f
538:              bne          t4, s9, 542f
                  sll          s11, s8, s10
540:              lui          t6, 524518
                  srli         a3, a5, 4
542:              srli         sp, t2, 24
                  xori         s5, t4, -6
                  lui          s6, 698897
                  bltu         s6, a0, 559f
                  bgeu         s9, a3, 551f
                  lui          s10, 595031
                  beq          s2, a0, 551f
549:              and          a0, s0, t6
                  sll          s9, s2, a6
551:              bge          s0, a4, 553f
                  sltu         a6, t2, ra
553:              srai         ra, a6, 8
                  andi         t4, a1, 1595
                  bgeu         s8, a5, 573f
                  sub          t2, a0, s10
                  lui          t1, 468878
                  addi         s5, t1, 1255
559:              xor          s0, t6, s9
                  slti         zero, s11, -2031
                  slli         s5, a6, 9
                  addi         a3, a3, -1308
                  nop
                  add          a2, zero, a1
                  sub          gp, a5, s7
                  auipc        s0, 28476
                  sra          gp, ra, s10
                  xor          sp, t6, sp
                  srai         s2, s10, 13
                  bne          a3, a0, 584f
                  sub          a5, a4, t0
                  and          s5, t1, zero
573:              sll          s5, s10, t5
                  bltu         sp, s1, 589f
                  sub          s6, s6, s10
                  auipc        a0, 485491
                  srai         t3, t3, 19
                  bne          t1, s7, 580f
                  nop
580:              and          s4, s9, s2
                  nop
                  srai         s6, t3, 29
                  bne          t6, a5, 586f
584:              or           gp, t4, t2
                  bne          s1, a0, 588f
586:              beq          s11, s1, 594f
                  sra          s8, t4, s5
588:              lui          a1, 447578
589:              ori          s5, s5, -1669
                  bltu         s2, a4, 608f
                  beq          s8, tp, 596f
                  and          s11, t4, gp
                  sub          t0, s6, t6
594:              lui          t3, 797566
                  bge          s4, s6, 600f
596:              srli         s8, gp, 14
                  bne          s3, s0, 604f
                  sub          a3, t0, t1
                  sll          s9, s3, sp
600:              bltu         s1, a6, 603f
                  sltiu        t1, s11, 1035
                  bge          s4, s2, 619f
603:              srai         t6, zero, 9
604:              srai         t3, s1, 5
                  bge          a4, t2, 608f
                  xori         t2, s2, -35
                  slt          s0, a2, s2
608:              nop
                  addi         a1, s1, 1759
                  beq          a2, s8, 621f
                  srli         t4, t5, 13
                  slt          t6, t6, a3
                  sll          t6, tp, ra
                  or           t2, gp, s0
                  sltu         zero, a4, s5
                  sub          a6, tp, a7
                  bge          a3, a7, 627f
                  ori          s10, s9, -1946
619:              sll          s6, t1, a6
                  auipc        s9, 975362
621:              slt          s2, a5, s3
                  xori         s0, gp, -1196
                  bge          s4, t0, 631f
                  xori         a3, t5, 491
                  slt          s10, s1, s4
                  sltiu        t6, a0, 1722
627:              or           s5, a6, a4
                  ori          t4, a3, 1087
                  slt          a1, t0, s5
                  sll          gp, a0, s8
631:              srli         tp, s8, 11
                  slti         s6, s9, -990
                  srai         t0, s6, 16
                  slti         s8, s7, 902
                  srai         s4, s1, 14
                  slti         gp, a2, -1248
                  sltu         s11, a1, gp
                  slli         t4, s4, 30
                  bltu         t5, s11, 641f
                  slt          s6, t1, a1
641:              auipc        t4, 753030
                  sll          s6, a3, a0
                  xori         a2, s2, 642
                  andi         a2, s1, 1841
                  sltiu        zero, t2, 1612
                  sll          s10, s11, zero
                  ori          s1, s2, -469
                  add          a0, a6, sp
                  ori          s5, t6, -1260
                  bltu         a0, gp, 660f
                  lui          sp, 150393
                  sra          gp, s10, a4
                  lui          s6, 106993
                  sltu         ra, t5, s4
                  xor          t6, tp, s3
                  and          t4, zero, a0
                  bne          a7, s5, 676f
                  bne          s10, t5, 677f
                  andi         t4, zero, -544
660:              srli         a6, a7, 27
                  slli         a6, t5, 22
                  ori          tp, gp, -378
                  or           s6, s1, s1
                  lui          a2, 965981
                  slt          a3, a6, s3
                  beq          gp, s5, 684f
                  bne          a5, s7, 669f
                  srl          gp, s0, s9
669:              slti         s11, s0, 1788
                  sltiu        s9, a2, -1008
                  blt          a1, a2, 676f
                  sll          gp, t2, s2
                  slti         a5, tp, -1394
                  sll          ra, a4, t5
                  andi         a2, gp, -331
676:              slti         a4, s1, 1784
677:              sltu         s1, zero, s8
                  sub          s10, t1, s2
                  slti         s10, t3, 243
                  bge          s8, a7, 698f
                  sra          s5, s4, a4
                  sltu         t0, a5, a6
                  addi         gp, a0, 126
684:              sub          s8, s10, a7
                  slli         t2, s7, 22
                  bge          a5, t4, 690f
                  sra          ra, a1, a3
                  bne          ra, s3, 702f
                  srli         sp, t5, 28
690:              and          s9, t5, a5
                  sltiu        s8, tp, 283
                  and          t2, s9, s7
                  bltu         s1, a3, 712f
                  addi         t2, s11, -532
                  bgeu         s8, s6, 698f
                  sra          a2, t2, a2
                  or           t3, t6, t3
698:              blt          s0, s8, 712f
                  bgeu         s7, t0, 704f
                  addi         s6, a4, 1527
                  bgeu         s5, t3, 704f
702:              or           s6, s6, t3
                  bge          zero, a1, 721f
704:              and          s3, sp, t1
                  nop
                  sra          t2, a2, t1
                  blt          zero, s8, 710f
                  xor          s1, s1, s9
                  auipc        a2, 210672
710:              srai         a5, s3, 21
                  slli         zero, t6, 23
712:              beq          a5, a3, 726f
                  addi         a3, s5, 1548
                  slli         a2, sp, 18
                  srli         t0, a5, 16
                  srai         s0, gp, 8
                  slt          a4, s2, s8
                  blt          s3, s3, 735f
                  sltu         t3, a0, zero
                  bne          t6, tp, 730f
721:              add          gp, t3, t3
                  bgeu         s0, t0, 727f
                  addi         a4, a3, -532
                  sll          s8, a4, t5
                  slt          s10, a5, t3
726:              srli         s6, s1, 25
727:              bne          a1, s4, 746f
                  slt          s3, s4, s9
                  beq          s2, s9, 740f
730:              bge          s0, s1, 745f
                  slt          s8, s6, a4
                  xori         s10, s5, 48
                  xor          s0, ra, s3
                  slli         a4, s4, 28
735:              xor          s1, t3, s8
                  sra          t1, t6, zero
                  add          gp, s8, a1
                  slti         sp, a6, -326
                  sll          a1, t2, s1
740:              bne          t3, s2, 743f
                  bltu         s1, t5, 745f
                  add          a5, a1, tp
743:              lui          s1, 625002
                  slli         a2, s2, 10
745:              bltu         ra, s8, 747f
746:              addi         s2, a1, -333
747:              ori          s2, a4, -628
                  srl          a5, gp, tp
                  sub          s6, gp, a6
                  and          s11, s4, s8
                  xor          s2, tp, s1
                  sra          a3, s11, s10
                  ori          t6, a7, -583
                  sra          t2, a2, a6
                  bgeu         a4, t1, 763f
                  blt          t6, t3, 770f
                  slt          s8, s2, sp
                  xori         zero, s9, 231
                  srl          t1, s3, a7
                  sltiu        s11, s1, -1027
                  bgeu         t5, t5, 779f
                  ori          s10, s9, -1336
763:              sra          a4, s4, a4
                  bgeu         s4, t4, 778f
                  and          s4, a4, t4
                  blt          a4, ra, 776f
                  srl          s2, a0, t6
                  beq          s10, s7, 771f
                  sltu         tp, s10, s1
770:              bltu         a6, ra, 773f
771:              and          a1, zero, a0
                  xori         sp, tp, -1869
773:              auipc        a1, 597675
                  add          a2, s9, gp
                  srai         s11, s1, 19
776:              ori          ra, s0, 157
                  sltu         zero, a2, t4
778:              ori          a5, a6, 185
779:              bge          s1, a7, 787f
                  xori         a6, a5, 909
                  bne          zero, a2, 799f
                  bltu         t4, t1, 801f
                  slt          s0, s10, t4
                  srl          a5, s10, t6
                  xori         s8, s10, -1413
                  xori         a4, a6, 1916
787:              bne          t3, s10, 792f
                  xor          s1, t1, s8
                  ori          gp, t6, 1600
                  lui          t1, 89320
                  sltu         tp, s7, s1
792:              blt          t1, s10, 799f
                  sll          s5, ra, s0
                  bgeu         s9, s11, 813f
                  lui          sp, 640848
                  andi         a4, t4, -1135
                  xori         s2, t2, -1845
                  lui          tp, 146539
799:              sltu         s4, a7, a7
                  sltiu        s1, s0, 1344
801:              beq          a0, gp, 819f
                  andi         a5, tp, 389
                  andi         a5, s0, -1303
                  slt          a5, s3, t5
                  sll          t6, s7, t3
                  bne          a0, s0, 808f
                  and          ra, tp, s7
808:              sltu         s11, s6, a6
                  slli         tp, t1, 31
                  srl          tp, s7, a7
                  or           s10, s1, sp
                  addi         a4, gp, 2045
813:              bgeu         s5, gp, 815f
                  slli         s9, t5, 13
815:              sub          s6, t5, a6
                  sub          a4, a6, s11
                  andi         ra, s11, -548
                  beq          t1, ra, 821f
819:              sub          s6, tp, ra
                  add          t2, a4, a7
821:              beq          s10, s9, 823f
                  ori          s1, a5, -1008
823:              sltu         t3, s0, s5
                  blt          t4, t6, 842f
                  ori          a0, s5, 1183
                  lui          t0, 129303
                  add          s11, t3, s0
                  slli         t3, a3, 0
                  srli         t1, t5, 24
                  sra          s8, a0, s4
                  sltiu        t3, a3, 446
                  bgeu         gp, s0, 850f
                  srai         a4, t2, 1
                  andi         a4, t6, 513
                  and          a1, s1, s7
                  ori          s11, a7, -1724
                  nop
                  sra          t1, t1, t0
                  srli         a5, t1, 13
                  sra          s2, t2, t0
                  srai         a1, s3, 28
842:              and          t1, gp, a3
                  andi         gp, a4, 635
                  add          a1, s4, sp
                  bne          a2, t1, 853f
                  addi         a6, zero, -8 #init loop 1 counter
                  add          s2, a3, s2
                  addi         s1, zero, 1 #init loop 1 limit
                  sltu         s10, s1, s3
sub_4_23_1_t:     andi         t4, s2, 667
                  xor          t3, gp, s2
                  addi         a6, a6, 5 #update loop 1 counter
                  and          a0, s8, t0
                  addi         s9, zero, 0 #init loop 0 counter
                  nop
                  sub          a0, s5, t5
                  addi         t6, zero, 20 #init loop 0 limit
sub_4_23_0_t:     or           a4, tp, a3
                  and          t4, s2, a7
                  slli         zero, s5, 18
                  addi         s9, s9, 4 #update loop 0 counter
                  srai         gp, s9, 4
                  andi         zero, s0, -817
                  bne          s9, t6, sub_4_23_0_t #branch for loop 0
                  srl          t1, s11, s0
                  sltu         s5, a4, ra
                  bltu         a6, s1, sub_4_23_1_t #branch for loop 1
                  addi         s5, s5, -801
                  slli         t3, ra, 7
                  andi         s4, s10, -1964
                  srai         sp, t1, 29
                  sra          a4, s11, s7
850:              beq          a5, a0, 861f
                  nop
                  srl          a5, a0, s7
853:              bltu         s3, ra, 867f
                  sltu         a0, s8, s11
                  sll          s2, s9, a5
                  slt          zero, a0, t2
                  bltu         s0, s9, 875f
                  sltiu        t2, s9, -559
                  auipc        t1, 631647
                  andi         t6, a0, -332
861:              auipc        t3, 291494
                  nop
                  sltiu        s11, a7, 1717
                  beq          t0, s2, 867f
                  sub          t1, s10, gp
                  sltu         s9, s2, ra
867:              auipc        s4, 688157
                  srai         s10, s10, 16
                  bgeu         a3, t5, 888f
                  srai         t2, s5, 5
                  and          s8, s1, s9
                  lui          t4, 273901
                  beq          s9, t3, 892f
                  sub          s11, a7, a4
875:              srli         s11, s6, 14
                  bge          t0, t5, 879f
                  slli         t0, zero, 17
                  addi         t0, ra, 1929
879:              srl          t4, t6, zero
                  sub          a2, s0, a4
                  sra          s9, a0, a2
                  addi         t2, t1, -377
                  blt          s0, a0, 901f
                  sltu         s9, s8, s2
                  slt          a2, s3, gp
                  srl          a3, s3, s9
                  xor          a0, s1, a1
888:              bgeu         s3, t0, 895f
                  srl          s5, zero, s5
                  xori         s1, tp, -1335
                  srli         s1, t6, 29
892:              slti         t4, gp, -1988
                  slli         a0, s5, 10
                  add          zero, t6, gp
895:              srai         s10, tp, 30
                  andi         a0, a0, 37
                  sll          t4, a3, gp
                  bge          t4, s10, 903f
                  bltu         t3, s5, 914f
                  beq          s9, a3, 910f
901:              ori          s6, sp, 1339
                  bne          a2, a1, 906f
903:              bge          t2, s0, 920f
                  bne          a6, a1, 906f
                  sll          s1, a3, a7
906:              add          s1, s9, t4
                  sub          s10, a7, s10
                  bge          sp, a6, 911f
                  addi         t6, t6, -688
910:              slt          t0, a5, a5
911:              lui          t3, 279886
                  blt          t0, s2, 926f
                  srl          s5, gp, t1
914:              sll          a6, t4, s3
                  lui          s6, 323389
                  add          s8, sp, t5
                  srli         t4, a0, 1
                  sll          t6, s9, s2
                  lui          t3, 92773
920:              lui          sp, 926277
                  nop
                  bltu         ra, t5, 925f
                  xori         gp, t3, -1612
                  andi         ra, t2, -1885
925:              ori          t3, s9, 380
926:              or           a4, s9, a6
                  slli         s4, s2, 30
                  ori          t6, a1, -442
                  slt          s11, s0, tp
                  bltu         a3, s3, 949f
                  nop
                  srli         a3, s7, 25
                  beq          t3, t6, 947f
                  blt          t3, a7, 944f
                  addi         a4, zero, 59
                  beq          zero, t6, 941f
                  srl          s2, s1, s3
                  addi         s9, a4, 1891
                  slti         sp, tp, -1259
                  addi         t0, a6, -1690
941:              or           gp, a4, t4
                  srl          s5, gp, a3
                  slli         s5, s6, 22
944:              xor          s2, ra, gp
                  bge          s9, a5, 953f
                  slt          a6, s7, t1
947:              slli         zero, a6, 25
                  nop
949:              and          s5, s3, t1
                  add          s1, a5, a0
                  xor          tp, a3, a1
                  addi         s2, zero, 8 #init loop 0 counter
                  addi         s9, zero, 8 #init loop 0 limit
                  srli         a1, zero, 25
sub_4_9_0_t:      sltu         t4, t3, a2
                  addi         s2, s2, -7 #update loop 0 counter
                  bgeu         s2, s9, sub_4_9_0_t #branch for loop 0
                  xori         s6, gp, 29
                  slti         a1, t0, -1265
953:              sub          t2, t5, s7
                  andi         zero, s8, -695
                  slti         s10, s9, -498
                  srli         a0, a4, 25
                  or           s1, s1, t4
                  auipc        s2, 291259
                  beq          s8, ra, 961f
                  andi         t0, t4, -956
961:              add          s11, s6, s1
                  xor          s9, t1, s3
                  srl          s0, a3, t6
                  and          tp, t4, s10
                  bne          s7, s11, 970f
                  bge          s5, gp, 969f
                  srl          a0, t2, t0
                  auipc        a6, 979133
969:              blt          s9, tp, 972f
970:              auipc        a3, 380603
                  sub          t2, t1, s1
972:              slli         t6, s3, 27
                  nop
                  srai         a1, a3, 25
                  xori         t1, ra, -404
                  sll          a1, a4, a6
                  xori         t1, a4, -720
                  slt          a1, s8, s4
                  blt          a0, s3, 982f
                  bne          s3, t6, 999f
                  sltiu        a3, t3, 1102
982:              andi         s5, t6, -1182
                  and          a1, a1, sp
                  sra          gp, a0, t0
                  srl          t4, s4, t4
                  bne          s5, a7, 990f
                  nop
                  slli         s10, gp, 22
                  sra          s8, sp, s0
990:              slti         zero, a1, -1412
                  sltu         ra, s5, s6
                  xori         sp, a1, -1826
                  slli         s8, s7, 0
                  beq          s6, a7, 1001f
                  nop
                  ori          s2, s0, 191
                  lui          a5, 113788
                  beq          gp, gp, 1003f
999:              bltu         s0, t3, 1002f
                  sub          t6, s5, s1
1001:             lui          a4, 624057
1002:             or           a2, s10, s11
1003:             or           a4, s8, gp
                  nop
                  bne          t1, a6, 1019f
                  slli         a3, a3, 29
                  sltu         a6, s4, s7
                  addi         s11, s4, -829
                  slt          s1, s0, t4
                  bne          a0, t0, 1024f
                  and          a5, a5, s10
                  srai         t4, s6, 2
                  ori          a5, t3, 648
                  bltu         a6, gp, 1016f
                  bltu         s10, t2, 1020f
1016:             slt          t6, s3, s9
                  and          s1, t0, a3
                  xor          t0, s5, a6
1019:             sltu         a0, a6, a4
1020:             xor          s10, a0, s5
                  xor          a3, a0, a1
                  sll          a3, a2, s0
                  slt          t3, ra, t4
1024:             or           a5, gp, ra
                  and          s1, a6, t4
                  addi         gp, t0, 66
                  addi         a4, s0, -1633
                  bltu         s9, s2, 1039f
                  andi         s8, a5, 1875
                  add          s0, a3, a7
                  bgeu         a0, s10, 1041f
                  sltu         s0, a1, a1
                  add          a2, s4, s4
                  add          a3, s8, a6
                  sll          a3, gp, s3
                  blt          s9, ra, 1038f
                  blt          a1, a1, 1054f
1038:             bgeu         t1, s3, 1057f
1039:             sltiu        gp, t5, -1148
                  srli         t3, s0, 22
1041:             blt          t1, t6, 1049f
                  sltiu        s2, t3, -1551
                  bltu         s7, t3, 1051f
                  xori         s9, ra, -1647
                  xor          t2, a1, t4
                  and          s4, a7, sp
                  srli         a4, a0, 10
                  xori         s0, a7, -882
1049:             bne          s0, a2, 1068f
                  sll          t6, s11, s11
1051:             sltiu        t1, a1, 321
                  auipc        a4, 154571
                  sltu         s9, a7, s9
1054:             andi         sp, s11, 1464
                  or           a1, s8, a5
                  and          a6, t0, gp
1057:             sub          a0, a6, s7
                  bgeu         a0, t3, 1068f
                  xori         a4, s4, 1083
                  or           s6, s8, s1
                  or           s8, a0, s7
                  ori          a3, a3, -385
                  nop
                  and          ra, tp, s9
                  blt          t1, a5, 1083f
                  bgeu         t1, s3, 1080f
                  bge          a1, s11, 1082f
1068:             blt          a2, a1, 1086f
                  sra          s5, a1, t3
                  srai         s8, s7, 23
                  auipc        s5, 319125
                  slti         t2, t5, 1591
                  lui          s0, 761693
                  lui          gp, 938095
                  sltiu        s9, zero, -1653
                  sub          a1, a7, a1
                  or           a5, a4, t1
                  sltu         s10, s1, s7
                  and          tp, t1, s2
1080:             slli         t3, a1, 20
                  nop
1082:             andi         s4, s4, -673
1083:             sub          s1, t0, ra
                  addi         t0, s5, -587
                  sltu         a2, a6, a3
1086:             xor          s8, tp, t2
                  srl          zero, s2, gp
                  srl          t2, a6, s6
                  sll          a4, a6, a1
                  addi         a5, s8, -843
                  sltiu        s4, gp, 1195
                  blt          s5, s1, 1094f
                  bltu         s11, t6, 1111f
1094:             xor          t0, t4, gp
                  and          s0, s8, a7
                  sll          s10, t1, t0
                  xor          zero, sp, t4
                  xori         s8, s9, -311
                  bgeu         a6, t6, 1117f
                  bltu         s4, s9, 1103f
                  sll          a2, tp, a4
                  bne          a2, t1, 1107f
1103:             bgeu         t1, s5, 1106f
                  srli         a5, s5, 5
                  nop
1106:             slli         zero, ra, 10
1107:             addi         a0, zero, 1046
                  addi         a2, t5, 2013
                  bltu         s7, t6, 1111f
                  bgeu         a4, a3, 1114f
1111:             sltu         t3, t1, s8
                  xor          s5, s1, s11
                  or           s3, t0, t1
1114:             slti         a1, t4, -460
                  srai         s8, s6, 11
                  lui          t0, 459880
1117:             lui          s3, 814080
                  bge          s7, s0, 1121f
                  ori          t2, t1, -893
                  sub          t1, a4, a4
1121:             bne          a7, t5, 1140f
                  addi         t4, s0, 574
                  lui          a3, 591823
                  auipc        t0, 152758
                  bltu         s1, t3, 1144f
                  srai         t3, a1, 19
                  sub          tp, t4, a6
                  sra          a5, a0, t0
                  xori         t2, s4, -123
                  bge          sp, s0, 1133f
                  srai         s3, a1, 9
                  slli         s10, zero, 13
1133:             lui          t2, 294009
                  sltu         ra, s6, gp
                  blt          s10, s9, 1140f
                  ori          a0, sp, 656
                  slt          a2, a3, a2
                  srli         sp, s1, 17
                  blt          a2, s3, 1147f
1140:             slli         t1, sp, 3
                  bltu         t0, ra, 1158f
                  xor          t6, t5, t6
                  slli         s8, t6, 1
1144:             sll          s11, t5, zero
                  sltu         zero, s10, s5
                  auipc        a4, 950698
1147:             srai         s6, t2, 17
                  slt          s0, t2, zero
                  bne          sp, s8, 1167f
                  add          s2, s11, s0
                  add          s3, s7, a7
                  sltiu        s8, t2, -1769
                  sltu         s4, t4, ra
                  bge          s0, a6, 1156f
                  addi         s5, s2, 1932
1156:             bltu         a4, t6, 1158f
                  bge          a7, s6, 1167f
1158:             nop
                  blt          t5, ra, 1177f
                  and          t0, t6, a1
                  bgeu         s0, a3, 1166f
                  blt          a1, a3, 1172f
                  sltu         tp, s10, t5
                  sll          s8, t1, gp
                  sll          a0, a6, s2
1166:             slti         s2, gp, 887
1167:             bge          s1, s2, 1185f
                  xor          a3, s5, s0
                  slli         t3, a2, 17
                  bne          t0, a2, 1189f
                  lui          a4, 944344
1172:             sra          s4, tp, s9
                  andi         s8, sp, -1442
                  sll          t0, a0, s1
                  xor          a6, sp, s11
                  add          tp, s4, a6
1177:             andi         s5, sp, 1471
                  srai         t2, s6, 9
                  slli         t0, sp, 26
                  lui          zero, 920278
                  slti         a3, a6, -689
                  ori          t0, sp, 478
                  slt          s1, s7, zero
                  slt          s6, t0, t2
1185:             auipc        a0, 390083
                  lui          s3, 689208
                  srli         a3, a3, 10
                  nop
1189:             blt          t0, t0, 1197f
                  or           sp, a7, a4
                  lui          t4, 217522
                  xor          t6, a3, s7
                  or           s6, s7, s0
                  xor          s1, zero, t2
                  sub          zero, t2, zero
                  blt          a3, s10, 1199f
1197:             slt          t3, s5, s11
                  sltu         t0, s10, a3
1199:             and          s1, s2, t4
                  beq          t5, t1, 1205f
                  sltiu        s9, s11, -1068
                  nop
                  sra          s4, t4, s10
                  srli         s10, a6, 20
1205:             srl          t2, s0, s10
                  blt          ra, a2, 1207f
1207:             srai         s0, t3, 13
                  add          a4, ra, t1
                  lw           s4, 4(t5)
                  xor          a1, s10, gp
                  auipc        s0, 196673
                  slt          s0, a0, s2
                  and          zero, s5, ra
                  addi         a5, t5, -173
                  auipc        s0, 710928
                  addi         t5, t5, 52
                  andi         s11, s7, -220
1743:             addi x28, x20, 1
1743:             jalr x28, x28, 0
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
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x23, x30, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_2:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x23, x30, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_3:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x23, x30, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_4:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x23, x30, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_5:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x23, x30, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_6:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x23, x30, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_7:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x23, x30, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_8:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x23, x30, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_9:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x23, x30, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_10:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x23, x30, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_11:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x23, x30, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_12:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x23, x30, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_13:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x23, x30, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_14:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x23, x30, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_15:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x23, x30, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

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
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x23, x30, zero
                  csrr x2, 0x341 # MEPC
                  csrr x2, 0x342 # MCAUSE
                  li x21, 0x3 # BREAKPOINT
                  beq x2, x21, ebreak_handler
                  li x21, 0x8 # ECALL_UMODE
                  beq x2, x21, ecall_handler
                  li x21, 0x9 # ECALL_SMODE
                  beq x2, x21, ecall_handler
                  li x21, 0xb # ECALL_MMODE
                  beq x2, x21, ecall_handler
                  li x21, 0x1
                  beq x2, x21, instr_fault_handler
                  li x21, 0x5
                  beq x2, x21, load_fault_handler
                  li x21, 0x7
                  beq x2, x21, store_fault_handler
                  li x21, 0xc
                  beq x2, x21, pt_fault_handler
                  li x21, 0xd
                  beq x2, x21, pt_fault_handler
                  li x21, 0xf
                  beq x2, x21, pt_fault_handler
                  li x21, 0x2 # ILLEGAL_INSTRUCTION
                  beq x2, x21, illegal_instr_handler
                  csrr x21, 0x343 # MTVAL
                  1: la x17, test_done
                  jalr x1, x17, 0

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
                  la x17, write_tohost
                  jalr x0, x17, 0

instr_fault_handler:
                  add x30, x23, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

load_fault_handler:
                  add x30, x23, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

store_fault_handler:
                  add x30, x23, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

ebreak_handler:   
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x30, x23, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

illegal_instr_handler:
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x30, x23, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x2, 0x300 # MSTATUS;
                  csrr  x2, 0x304 # MIE;
                  csrr  x2, 0x344 # MIP;
                  csrrc x2, 0x344, x2 # MIP;
                  add x30, x23, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
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
