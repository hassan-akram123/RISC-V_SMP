.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x25, h0_start
jalr x0, x25, 0
h0_start:
                  li x21, 0x40000100
                  csrw 0x301, x21
kernel_sp:        
                  la x7, kernel_stack_end

trap_vec_init:    
                  la x21, mtvec_handler
                  ori x21, x21, 1
                  csrw 0x305, x21 # MTVEC

mepc_setup:       
                  la x21, init
                  csrw 0x341, x21

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x21, 0x1800
                  csrw 0x300, x21 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0xf97802a9
                  li x2, 0x0
                  li x3, 0x0
                  li x5, 0x9d9cae0f
                  li x6, 0x0
                  li x8, 0x80000000
                  li x9, 0xe40775b5
                  li x10, 0x0
                  li x11, 0x5f40230b
                  li x12, 0xf
                  li x13, 0x80000000
                  li x14, 0x1f342c37
                  li x15, 0x80000000
                  li x16, 0x0
                  li x17, 0xe
                  li x18, 0x7
                  li x19, 0x80000000
                  li x20, 0xf6502bcd
                  li x21, 0xe
                  li x22, 0xfed85741
                  li x23, 0x80000000
                  li x24, 0x0
                  li x25, 0x2e790c74
                  li x26, 0xdf8e92f8
                  li x27, 0x80000000
                  li x28, 0x903656dd
                  li x29, 0x0
                  li x30, 0xfd6e2634
                  li x31, 0xffe29977
                  la x4, user_stack_end
main:             sltiu        s5, t5, 1282
                  la           a5, sub_2
                  addi         a5, a5, -81
                  slti         t4, gp, -1596
                  or           t1, s8, a5
                  add          a1, t0, a6
                  blt          a1, t4, main_j2 #branch to jump instr
                  srai         gp, sp, 19
main_j2:          jalr         t1, a5, 81 #jump main -> sub_2
                  auipc        a7, 918292
                  sub          t3, s0, s2
                  slli         a1, a2, 25
                  la           s0, sub_3
                  addi         s0, s0, 922
                  sltiu        a1, s7, 378
                  bgeu         t2, s5, main_j3 #branch to jump instr
                  srli         t6, s4, 12
                  and          t0, a4, s3
                  add          a1, s0, s1
                  srai         a2, s7, 7
main_j3:          jalr         t1, s0, -922 #jump main -> sub_3
                  la           a5, region_1+1557 #start riscv_load_store_rand_instr_stream_0
                  lb           t6, 58(a5)
                  srl          s10, t3, sp
                  and          sp, s7, a2
                  srli         s8, s1, 17
                  sltu         s1, a6, s1
                  slti         s0, a5, -524
                  sll          s6, a1, t6
                  ori          s11, a3, -1070
                  auipc        a6, 882497
                  sb           sp, -64(a5)
                  srl          t0, t5, s6
                  sb           t3, -14(a5)
                  lbu          s1, 20(a5)
                  srli         s4, s8, 8
                  or           sp, a5, t1
                  sltiu        s10, t4, -1294
                  sb           a3, 12(a5)
                  slli         a1, ra, 23
                  slt          s3, s0, t5
                  sb           t0, 44(a5)
                  slli         s4, t6, 13
                  xor          zero, s0, a2
                  srai         t0, a0, 17
                  sb           a5, 32(a5)
                  slti         a0, a6, 350
                  sll          t3, t4, s2
                  sltu         s1, s10, sp
                  slti         s5, ra, 172
                  lhu          s1, 45(a5)
                  lb           a7, -10(a5)
                  sb           a3, -50(a5)
                  and          s8, sp, a4
                  srl          t6, t6, s9
                  lb           a6, 29(a5)
                  sltiu        a6, s8, 111
                  lbu          s7, 8(a5) #end riscv_load_store_rand_instr_stream_0
                  sltu         t6, a2, t3
                  addi         t3, s1, -351
                  auipc        s8, 242624
                  sra          a3, zero, s3
                  sra          a6, t5, t5
                  la           gp, sub_1
                  xori         s10, t0, -71
                  addi         gp, gp, 4
                  srli         s1, t6, 16
                  srai         a6, a5, 7
                  sltu         zero, s5, s9
main_j1:          jalr         t1, gp, -4 #jump main -> sub_1
                  ori          s7, s10, 1205
                  beq          s9, s11, 8f
                  ori          a3, t2, -1034
                  sll          a1, zero, t3
                  srli         a1, tp, 24
                  beq          tp, s7, 8f
8:                ori          s1, t4, -478
                  la x25, test_done
                  jalr x0, x25, 0
test_done:        
                  li gp, 1
                  ecall
sub_7:            addi         tp, tp, -44
                  and          a5, a1, s8
                  sll          a7, a3, a7
                  addi         s2, a7, -325
                  sw           t1, 4(tp)
                  sltiu        t5, t2, 102
                  sra          s6, a5, s11
                  sltiu        s0, t2, -977
                  bne          t0, s11, 12f
                  sll          a6, s10, a6
                  sltu         t5, a1, a0
                  slli         s6, a1, 31
                  nop
                  beq          s1, t1, 18f
                  auipc        t5, 138600
                  sub          s3, s2, t2
                  and          a5, s11, s4
                  bgeu         a5, s0, 24f
                  slti         s2, a0, -1162
12:               beq          t5, a2, 30f
                  bgeu         s1, t5, 20f
                  srai         s5, s3, 11
                  slt          s0, sp, t3
                  nop
                  bltu         t6, t3, 29f
18:               andi         ra, s10, 1236
                  or           t3, t3, s9
20:               ori          s7, s2, -1342
                  srai         s3, s7, 21
                  srl          a2, t2, a7
                  bgeu         s9, sp, 34f
24:               lui          zero, 411231
                  bne          s6, t0, 36f
                  bge          a4, ra, 44f
                  xori         t0, s8, 1562
                  add          t5, t3, t5
29:               bge          t2, s1, 46f
30:               blt          s3, s2, 48f
                  xori         s8, s10, -1869
                  addi         t3, a6, -1224
                  and          s6, a6, a4
34:               sll          s2, t1, s4
                  bltu         s2, s0, 43f
36:               and          a7, s7, t5
                  andi         s3, t2, -117
                  sub          s11, s3, s7
                  add          a2, s6, s0
                  xor          a5, s10, s1
                  sltiu        s3, a1, -703
                  xori         s7, s7, -241
43:               bne          a6, s10, 45f
44:               beq          zero, ra, 48f
45:               addi         t6, ra, -1765
46:               sra          a6, s8, t1
                  or           s3, a4, s4
48:               srli         t1, t5, 23
                  lw           t1, 4(tp)
                  sub          a6, s4, ra
                  addi         tp, tp, 44
                  add          s8, t5, s6
                  slli         a5, tp, 9
61:               addi x5, x6, 0
61:               jalr x5, x5, 0
sub_9:            addi         tp, tp, -24
                  slli         s5, s0, 20
                  sw           t1, 4(tp)
                  addi         s0, tp, -1807
                  nop
                  blt          t6, s8, 5f
                  and          a6, s10, t2
                  slti         a3, s3, -1373
                  add          t3, t2, s2
                  sll          zero, s8, s7
5:                add          ra, s6, t5
                  bne          s5, t2, 16f
                  lui          s8, 840880
                  or           s6, s3, t1
                  lui          a0, 18159
                  ori          ra, zero, 1887
                  sub          a7, a5, s11
                  sra          a2, s7, a0
                  bne          sp, s8, 27f
                  sra          a7, t2, s8
                  or           t0, t2, s9
16:               bgeu         t0, tp, 32f
                  and          s11, s9, t1
                  beq          a1, t6, 34f
                  and          sp, gp, t6
                  bge          a1, t3, 21f
21:               nop
                  sra          s6, a4, s1
                  nop
                  sltu         ra, s5, a3
                  sra          t0, t2, tp
                  xori         zero, s10, 1873
27:               sub          s10, s8, ra
                  and          a0, s7, s7
                  srai         gp, s7, 20
                  ori          a3, s8, -1102
                  bltu         s1, s9, 51f
32:               xor          a3, s9, a1
                  sll          s4, a1, a2
34:               andi         s2, a4, 1697
                  xor          s6, s10, s1
                  sltiu        sp, a7, 718
                  slti         a4, a7, -1188
                  sll          ra, a6, s3
                  bne          s3, s7, 59f
                  bgeu         zero, a0, 44f
                  and          t5, sp, t2
                  bgeu         a5, gp, 57f
                  bltu         t2, s2, 58f
44:               srli         a4, a5, 5
                  bne          a6, t1, 59f
                  srli         a4, s5, 26
                  xori         s4, gp, -754
                  xor          s6, s5, t3
                  sra          a2, a4, t4
                  bne          t5, s0, 70f
51:               nop
                  andi         s3, gp, -369
                  xor          a3, s8, ra
                  andi         s3, t2, -1817
                  xor          a0, t0, a5
                  ori          gp, a0, -2043
57:               auipc        s3, 83987
58:               addi         s10, ra, 1835
59:               and          a7, a4, s5
                  andi         t0, s6, 1722
                  auipc        s6, 515864
                  addi         s1, t1, 921
                  nop
                  ori          s8, gp, 690
                  or           s1, a0, s10
                  sll          s6, s10, t3
                  nop
                  bge          s11, s2, 72f
                  xor          s4, ra, a2
70:               srli         a1, s9, 30
                  xor          zero, s6, s0
72:               add          s4, gp, t6
                  bgeu         tp, s3, 81f
                  slli         s10, t4, 8
                  sub          a6, t3, s10
                  sltu         s1, sp, sp
                  andi         a4, s4, -819
                  add          s7, t1, a7
                  add          s6, s9, s11
                  xor          t6, s10, t1
81:               sltiu        s4, s1, -860
                  slli         s1, t5, 4
                  auipc        t5, 524922
                  sltu         a1, s4, s6
                  slli         s4, s6, 19
                  and          t6, a5, a0
                  slt          a4, a3, s7
                  slti         s8, s10, 2017
                  xori         sp, t6, -1609
                  and          t3, s11, s2
                  bge          t2, a1, 98f
                  ori          s0, ra, -33
                  lui          s10, 1040525
                  sltiu        t3, s5, 92
                  slli         gp, s6, 25
                  lui          t0, 9872
                  lui          zero, 337471
98:               add          s3, tp, s7
                  lui          t5, 26322
                  lui          t4, 62011
                  sltiu        t3, a2, 1431
                  xor          a5, t0, t1
                  blt          t3, a1, 107f
                  addi         s0, s5, 1681
                  sll          s3, s7, t1
                  andi         t4, s10, -886
107:              and          s7, s2, a5
                  slli         a6, s3, 7
                  lw           t1, 4(tp)
                  slt          ra, a0, s8
                  srli         ra, s0, 25
                  addi         tp, tp, 24
                  lui          s6, 1017509
                  sra          s11, s2, a1
120:              addi x26, x6, 0
120:              jalr x26, x26, 0
sub_4:            xor          a0, a2, t6
                  or           s6, s4, s6
                  slti         t6, a3, -696
                  addi         tp, tp, -36
                  sw           t1, 4(tp)
                  auipc        sp, 429392
                  slli         a2, a3, 14
                  la           a7, sub_6
                  addi         a7, a7, 191
                  addi         s0, tp, -1108
                  bltu         s6, a7, sub_4_j10 #branch to jump instr
                  addi         a6, sp, -1963
                  sra          t3, s4, zero
                  auipc        s8, 631055
sub_4_j10:        jalr         t1, a7, -191 #jump sub_4 -> sub_6
                  la           t1, region_1+517 #start riscv_load_store_rand_instr_stream_0
                  lw           s8, -37(t1)
                  lh           sp, 1(t1)
                  lhu          a2, 43(t1)
                  slli         t3, a7, 7
                  auipc        s3, 1034155
                  slli         s5, s0, 31
                  srl          s11, a3, s6
                  lbu          a1, 34(t1)
                  add          t3, a2, s2
                  lbu          a0, -19(t1)
                  lh           a0, 39(t1)
                  sb           gp, -15(t1)
                  addi         zero, s6, -1962
                  lhu          gp, 49(t1)
                  xori         a7, a7, -354
                  sub          s11, a0, t0
                  sb           t0, -50(t1)
                  lb           s10, -30(t1)
                  lbu          t6, -9(t1)
                  lh           s6, -47(t1)
                  sb           sp, 45(t1)
                  add          s3, t0, s5
                  xori         s8, s8, -1263
                  sltiu        gp, a1, -57
                  lh           t5, 31(t1)
                  nop
                  lbu          ra, 49(t1)
                  lb           s8, -50(t1)
                  sh           ra, -11(t1)
                  sra          a3, a0, a5
                  addi         s8, s7, -1960
                  lui          a3, 20304
                  lbu          gp, 42(t1) #end riscv_load_store_rand_instr_stream_0
                  or           a7, a4, s0
                  or           a5, tp, s9
                  and          gp, ra, s0
                  slt          s7, a2, t5
                  xori         a7, zero, -1642
                  add          t4, t2, gp
                  nop
                  xori         s10, sp, -1576
                  beq          a2, tp, 16f
                  beq          a3, zero, 26f
                  sltu         s1, a0, zero
                  nop
                  srli         a3, s3, 1
                  sltu         a0, a6, t3
                  srl          s0, a6, a5
                  xor          a4, s8, s4
16:               sltiu        a4, ra, 832
                  sub          s6, t6, a6
                  add          t0, a2, s2
                  bne          t3, s11, 28f
                  bltu         t4, t4, 23f
                  srai         s7, zero, 27
                  beq          t6, s10, 25f
                  sll          t5, s2, s10
                  srai         s11, s8, 16
                  slt          s3, a2, s6
                  xori         s2, t0, 96
                  add          s2, s10, s9
                  or           sp, t4, t3
                  add          t6, t1, t6
                  xor          s3, t1, s1
                  sub          s7, a0, sp
sub_4_j9:         jal          t1, sub_8 #jump sub_4 -> sub_8
23:               xori         a0, t3, -452
                  addi         s2, s6, -1646
25:               and          t0, s8, t6
26:               and          s6, s0, s4
                  and          t6, sp, s1
28:               add          s5, s8, a5
                  or           a6, zero, t0
                  sll          s10, t0, a0
                  sra          s2, t4, t1
                  nop
                  sltu         a6, t4, t5
                  or           t1, sp, s9
                  srli         sp, a3, 2
                  bne          s0, t4, 46f
                  sltiu        t0, gp, -653
                  auipc        s2, 309123
                  srai         t3, s6, 3
                  bne          s8, a7, 52f
                  sub          a1, s9, s9
                  xor          s6, t1, s8
                  auipc        a3, 208830
                  srli         s4, s9, 1
                  slli         s4, s5, 28
46:               nop
                  ori          s6, s0, -1906
                  andi         gp, t5, 1127
                  slti         a3, s10, -351
                  bge          t6, a5, 64f
                  bge          s6, s0, 69f
52:               sub          zero, tp, a3
                  srai         s8, s2, 1
                  auipc        gp, 828870
                  nop
                  slti         s10, a4, -1395
                  auipc        s1, 891790
                  beq          s6, a2, 65f
                  xori         gp, s8, 1417
                  and          s7, t1, ra
                  xori         s1, a5, -1839
                  srli         a1, tp, 2
                  nop
64:               lui          s4, 180361
65:               blt          t3, t6, 83f
                  add          t0, a2, a2
                  xor          a3, s1, s6
                  xori         ra, s6, 1093
69:               bne          s9, t0, 86f
                  and          ra, a6, tp
                  sra          t0, s1, s10
                  lui          s11, 565657
                  srl          s0, s5, zero
                  slli         t1, s0, 6
                  and          t0, t4, t2
                  andi         a0, a1, 1450
                  sltiu        a5, t2, 494
                  ori          t6, t1, -1397
                  sub          s10, a6, gp
                  ori          t4, s7, 1836
                  or           s3, a5, a4
                  beq          s7, zero, 86f
83:               or           s0, t4, s2
                  bgeu         s7, s9, 94f
                  sll          s4, ra, a5
86:               blt          s11, a7, 91f
                  nop
                  sra          ra, a3, sp
                  bgeu         t4, a2, 108f
                  sltiu        s0, gp, 154
91:               nop
                  srl          t1, a0, a7
                  sll          a7, t0, ra
94:               nop
                  bltu         ra, tp, 114f
                  blt          ra, t4, 111f
                  sltu         s2, a3, s5
                  bltu         t0, s2, 107f
                  sltu         a0, s8, a5
                  slti         t3, a1, -388
                  slti         a0, a3, -71
                  sll          t5, a1, t2
                  bge          a3, t0, 121f
                  beq          s10, a6, 116f
                  sll          a3, s4, s8
                  addi         ra, s7, 658
107:              or           a1, s9, t4
108:              bne          t5, zero, 110f
                  auipc        a3, 680347
110:              lui          ra, 88283
111:              slt          s10, s3, s3
                  la           sp, sub_9
                  xor          s3, t6, s7
                  srl          a5, s9, s4
                  sub          s7, s5, s2
                  srai         gp, t2, 11
                  or           a2, s1, a5
                  addi         sp, sp, -335
                  and          s1, s6, s11
                  bne          s11, t4, sub_4_j8 #branch to jump instr
                  lui          t3, 705925
                  srl          t0, a5, gp
                  auipc        s7, 369923
sub_4_j8:         jalr         t1, sp, 335 #jump sub_4 -> sub_9
                  bge          a6, s5, 119f
                  beq          gp, s5, 124f
114:              xor          t6, t5, s1
                  sltiu        a6, gp, 444
116:              bgeu         t5, s2, 124f
                  srli         a1, s9, 23
                  blt          s2, t0, 132f
119:              andi         a2, s7, 1135
                  la           sp, region_1+1100 #start riscv_load_store_rand_instr_stream_2
                  sb           zero, -61(sp)
                  lh           s0, -62(sp)
                  slt          a2, gp, a5
                  srai         a5, t1, 22
                  xori         t6, t0, 1871
                  sll          s8, a6, t5
                  lui          s0, 208951
                  sll          t6, gp, zero
                  lb           s1, 63(sp)
                  lb           a4, 42(sp)
                  lh           t6, 20(sp)
                  auipc        t0, 537755
                  andi         t5, t5, 1271
                  nop
                  lb           s8, -51(sp)
                  sra          a2, tp, t4
                  lbu          ra, 37(sp)
                  srli         s2, s4, 28
                  sb           a4, -32(sp)
                  sh           sp, -16(sp)
                  sra          a5, s10, s7
                  lb           s4, 5(sp)
                  lbu          a3, -31(sp)
                  srli         t5, a7, 2
                  lbu          a2, 42(sp)
                  sb           s2, 22(sp)
                  lh           s0, -56(sp)
                  srl          zero, s4, t0
                  lbu          t4, -24(sp)
                  lh           s4, 32(sp)
                  srai         s2, a2, 7
                  auipc        s11, 535987
                  srai         t5, s8, 21
                  lb           s1, 45(sp)
                  srli         t1, a1, 13
                  lb           a5, 59(sp)
                  sb           a1, 36(sp)
                  xori         s5, zero, -546
                  slt          s0, s6, s9
                  add          s0, s10, tp
                  sra          a3, a6, t5
                  sb           t5, 40(sp)
                  sb           t5, -12(sp)
                  sltu         a5, a2, s9
                  sltu         ra, t0, s5
                  lbu          gp, -55(sp)
                  xor          s4, t5, a7
                  lh           ra, -32(sp)
                  sb           zero, 19(sp) #end riscv_load_store_rand_instr_stream_2
                  nop
121:              lui          t3, 643809
                  sltu         t6, a5, a4
                  sub          t5, a7, sp
124:              addi         a1, t4, 111
                  sll          t0, zero, t6
                  and          s5, t2, a4
                  srai         s6, s7, 2
                  or           s5, a4, a2
                  beq          zero, zero, 140f
                  sll          a5, a6, t6
                  bgeu         s0, s6, 141f
132:              xor          s3, s7, t3
                  bltu         s11, s2, 139f
                  auipc        t0, 1025430
                  srai         a5, a3, 27
                  bgeu         t0, s10, 149f
                  ori          a0, t3, -2019
                  bltu         s0, s9, 145f
139:              srli         a4, ra, 11
140:              sltiu        s4, t5, -1271
141:              andi         a0, t4, 1184
                  srl          t4, s2, ra
                  ori          t4, gp, -710
                  xori         a3, a3, 999
145:              auipc        a1, 13338
                  sra          sp, a2, s5
                  ori          s1, ra, -1365
                  srl          t4, zero, t0
149:              sltiu        ra, a1, -1638
                  bne          a0, t0, 169f
                  beq          s1, s2, 159f
                  slli         a6, t4, 10
                  auipc        t0, 526215
                  srli         s11, a1, 8
                  bne          a1, s0, 163f
                  bge          a2, sp, 173f
                  srli         a6, s3, 10
                  srai         s0, ra, 20
159:              and          t6, a5, s8
                  sub          a6, t6, s10
                  sltiu        sp, s9, -1669
                  slt          s0, t6, s1
163:              addi         a7, tp, -914
                  and          s3, s10, s5
                  sra          t5, s2, a7
                  add          s5, sp, s6
                  srli         ra, t3, 24
                  sll          s7, s1, s8
169:              nop
                  sltiu        a5, a3, -1100
                  slt          gp, s7, s11
                  slt          s3, s1, gp
173:              sltu         a3, s4, zero
                  nop
                  blt          s9, s10, 178f
                  ori          s1, a6, -163
                  sll          a0, s7, a5
178:              bge          a5, s7, 189f
                  sll          t5, a6, s8
                  slt          s8, t4, zero
                  sltu         a3, t1, gp
                  sra          a4, t6, s2
                  lui          a1, 776036
                  blt          a3, ra, 202f
                  bge          t5, s3, 194f
                  sll          s2, s1, tp
                  srli         t4, s7, 5
                  and          s4, gp, t4
189:              sltiu        s0, s3, 1448
                  bgeu         s6, a6, 200f
                  la           t4, region_1+1924 #start riscv_load_store_rand_instr_stream_1
                  sb           s10, -31(t4)
                  sb           a0, -114(t4)
                  addi         t6, ra, 1124
                  srl          s1, s1, a5
                  lhu          t3, 50(t4)
                  add          t3, a2, t1
                  xor          s4, t3, t2
                  sltu         a6, a0, t2
                  lh           s2, 44(t4)
                  slti         gp, tp, 445
                  auipc        s1, 678740
                  lbu          s1, 52(t4)
                  sb           t5, -253(t4)
                  sb           s6, -83(t4)
                  ori          ra, s10, 605
                  lh           s8, -140(t4)
                  lbu          s0, 0(t4)
                  sra          s0, s8, t3
                  andi         s1, t2, -310
                  srl          s0, s0, s0
                  lh           a2, 40(t4)
                  lui          s2, 423166
                  lb           s8, 15(t4)
                  lb           gp, -55(t4)
                  lhu          s6, 56(t4)
                  lb           sp, -256(t4)
                  sb           s6, -44(t4)
                  lb           s7, 13(t4)
                  lb           zero, -231(t4)
                  ori          sp, s11, 414
                  lbu          s5, -227(t4)
                  xori         zero, s0, 1618
                  lb           a3, 67(t4)
                  and          t1, s2, s9
                  lbu          a7, -126(t4) #end riscv_load_store_rand_instr_stream_1
                  beq          a4, s9, 204f
                  and          a4, s6, a4
                  sltu         s0, s8, s5
194:              sra          a5, a5, gp
                  sltiu        s4, s5, 722
                  srli         zero, gp, 27
                  bge          a0, zero, 209f
                  sltiu        s1, s4, 1081
                  andi         t1, s0, 1903
200:              or           s11, s0, tp
                  or           t3, s8, s10
202:              sltu         s6, s6, s9
                  and          s5, zero, t3
204:              lui          s4, 180952
                  beq          s11, gp, 223f
                  auipc        s4, 916301
                  lui          a2, 483402
                  addi         s8, sp, -657
209:              or           s3, t1, t4
                  slti         t4, t1, -785
                  sub          zero, tp, t4
                  sltiu        s7, t1, -1431
                  xori         a5, s8, -515
                  bltu         a2, gp, 223f
                  and          s0, s3, s1
                  bltu         a6, s1, 218f
                  srl          a5, a0, a5
218:              blt          a6, zero, 222f
                  srli         s8, a1, 17
                  beq          s6, zero, 231f
                  bne          sp, ra, 233f
222:              sub          a3, t1, t6
223:              and          s8, t2, s2
                  lui          a5, 396719
                  addi         s8, t4, 1355
                  sra          sp, tp, s5
                  bne          a7, a6, 234f
                  srli         s8, s9, 19
                  blt          s3, sp, 247f
                  lui          a3, 661962
231:              or           s11, a3, a1
                  bne          zero, a3, 246f
233:              bgeu         t5, zero, 238f
234:              ori          s6, t0, 1684
                  sll          a1, a1, s4
                  blt          a0, a4, 246f
                  nop
238:              bgeu         s11, s9, 248f
                  sltu         a2, s2, t0
                  sltiu        sp, t5, -489
                  srl          s1, s10, tp
                  sra          a3, s10, s9
                  auipc        t6, 512431
                  slti         a4, s3, -1341
                  add          a3, t6, s9
246:              addi         s4, gp, 1661
247:              sltiu        a2, a7, 76
248:              ori          s6, ra, -610
                  blt          a1, s11, 264f
                  srli         s0, t1, 0
                  bltu         a2, a5, 265f
                  lui          ra, 1034774
                  bltu         a3, a4, 256f
                  bne          a5, s3, 260f
                  blt          s9, s2, 272f
256:              and          t6, t1, t5
                  add          sp, sp, s9
                  bltu         a4, s0, 277f
                  sll          s1, a3, s5
260:              and          sp, t1, s9
                  srai         sp, a5, 11
                  and          s1, t0, t3
                  sra          a7, s6, sp
                  la           gp, sub_7
                  slli         t0, t1, 29
                  srai         t4, s10, 29
                  sra          a4, tp, s2
                  addi         gp, gp, 197
                  sra          a6, s11, a4
sub_4_j7:         jalr         t1, gp, -196 #jump sub_4 -> sub_7
                  or           sp, gp, s8
                  blt          t4, gp, 281f
264:              slt          s0, t5, s7
265:              bne          s7, a1, 273f
                  ori          a5, s2, 1456
                  addi         a0, s9, -731
                  srai         sp, s6, 7
                  srli         s4, a6, 26
                  srl          s5, a3, t5
                  sltu         s8, s6, s2
272:              and          t4, t5, t6
273:              auipc        sp, 450340
                  srl          s10, gp, a6
                  xori         s5, s4, -1673
                  bgeu         t2, a2, 294f
277:              sll          a6, t1, a2
                  xori         s5, s7, 539
                  slli         sp, s6, 16
                  xor          t3, ra, s1
281:              nop
                  sll          s3, a1, s0
                  slli         t1, s6, 14
                  slti         a1, t6, 1261
                  ori          ra, a0, 87
                  ori          s4, s10, 1188
                  bne          s8, s2, 292f
                  nop
                  bgeu         s5, a3, 296f
                  xor          s8, zero, s1
                  or           gp, t3, tp
292:              beq          s2, a3, 303f
                  srl          gp, tp, s0
294:              or           t6, tp, s3
                  sra          s1, a7, s11
296:              bne          s1, s4, 299f
                  slli         gp, a1, 10
                  addi         s0, s2, -673
299:              lui          s8, 291352
                  lui          a5, 886772
                  xori         t1, s0, 1292
                  addi         t5, s7, -849
303:              xori         s6, sp, -1892
                  andi         ra, s7, -898
                  srl          a1, s10, s4
                  bgeu         s0, t1, 321f
                  addi         s10, a2, -468
                  slt          a4, s6, sp
                  bge          s4, s9, 320f
                  andi         ra, a4, -1150
                  slt          s4, s1, t3
                  slli         s6, a3, 26
                  srli         t1, a7, 31
                  addi         t4, s5, 2022
                  slt          t4, a7, s9
                  lui          s0, 860949
                  blt          s2, t6, 336f
                  or           s1, tp, s3
                  slt          a3, t3, t3
320:              xori         sp, s11, 1860
321:              sll          a7, tp, s0
                  bgeu         a5, s1, 331f
                  bne          s9, s1, 333f
                  sub          a5, s4, s6
                  or           sp, a4, t4
                  add          a6, a1, a4
                  sra          gp, s1, gp
                  sra          a5, t6, a3
                  srai         a6, sp, 15
                  bne          a4, tp, 339f
331:              lui          a1, 579830
                  addi         a2, a3, -1661
333:              sltu         t5, ra, s1
                  bge          t1, ra, 348f
                  srli         t6, s6, 26
336:              blt          ra, zero, 339f
                  sltiu        t5, t6, 571
                  beq          s6, t3, 350f
339:              beq          zero, s5, 356f
                  sltiu        zero, s7, 91
                  addi         s7, s9, 1809
                  auipc        s0, 221344
                  or           s8, tp, s6
                  bgeu         s3, s7, 356f
                  andi         s2, a5, -2039
                  bne          sp, a0, 360f
                  sltu         s3, s1, a2
348:              slt          sp, a0, a5
                  beq          a7, a0, 368f
350:              or           sp, s4, a1
                  srai         a0, a0, 21
                  sub          gp, zero, s8
                  beq          sp, a5, 355f
                  bltu         t6, s0, 364f
355:              or           s0, s8, t1
356:              srai         t4, t3, 24
                  bltu         s5, s1, 361f
                  beq          ra, s9, 371f
                  bge          gp, t2, 367f
360:              bge          s10, s8, 366f
361:              andi         s11, t4, -229
                  add          s4, s11, a6
                  ori          t0, s8, -1024
364:              srl          a7, s4, s11
                  add          s5, s1, zero
366:              srli         s6, a6, 20
367:              bltu         a6, s1, 384f
368:              auipc        zero, 295611
                  lui          a5, 854932
                  lui          a4, 414317
371:              slt          s5, s10, s1
                  ori          t3, s4, 1980
                  slti         sp, s6, 272
                  sltu         s1, a3, s10
                  sub          s10, s2, a1
                  and          a4, t3, s2
                  andi         t0, s8, 76
                  bge          sp, t5, 388f
                  nop
                  sltiu        s6, t3, -1501
                  sltiu        t5, s10, 1544
                  xori         a5, zero, -1130
                  xor          zero, tp, s3
384:              srai         s5, s11, 21
                  bltu         a4, a3, 392f
                  nop
                  add          t4, t6, s10
388:              srai         t4, ra, 10
                  beq          a6, s4, 407f
                  slli         a3, t2, 0
                  and          s3, s8, s1
392:              srli         s4, s1, 13
                  andi         a0, s6, 704
                  srl          zero, s0, s6
                  beq          a4, ra, 405f
                  srli         s0, a3, 25
                  slt          s10, t1, zero
                  sltu         gp, gp, a0
                  bgeu         ra, t2, 410f
                  or           a6, t1, t0
                  auipc        t4, 516535
                  addi         t6, s0, 1599
                  andi         s4, a6, 109
                  sub          zero, s7, s11
405:              srai         s6, s0, 19
                  slli         s6, t6, 20
407:              sub          s2, gp, t3
                  xor          s4, s10, t3
                  sltiu        t0, t1, 388
410:              sra          t5, s6, sp
                  sltu         t4, s1, ra
                  slti         s7, s10, 1458
                  bne          sp, t0, 415f
                  addi         s8, s2, -598
415:              nop
                  slti         s3, t6, -1618
                  ori          t1, s2, 891
                  sltiu        a7, s9, 1471
                  xor          s8, s11, a2
                  bge          a6, s9, 427f
                  sll          zero, t2, ra
                  or           s8, a1, s4
                  slt          t5, s8, a2
                  auipc        s8, 791225
                  bltu         t3, t2, 427f
                  sub          s6, a5, t5
427:              and          a2, a3, t3
                  slti         s2, a2, 108
                  or           a1, sp, sp
                  sltiu        t0, t2, 227
                  lw           t1, 4(tp)
                  slli         t0, s4, 8
                  sub          s4, sp, a0
                  and          s7, s11, s0
                  srai         t5, a7, 5
                  srli         s8, a4, 12
                  and          gp, a4, a6
                  addi         tp, tp, 36
                  slti         t3, s4, -139
607:              addi x18, x6, 1
607:              jalr x18, x18, 0
sub_10:           srl          t4, tp, a7
                  addi         tp, tp, -64
                  or           gp, a5, t1
                  sw           t1, 4(tp)
                  srli         s2, s7, 19
                  sltu         a7, a7, a1
                  or           zero, s10, t0
                  sltu         a1, zero, s4
                  sltiu        a4, t3, 1031
                  sra          sp, s0, s0
                  blt          zero, gp, 11f
                  bge          zero, s1, 4f
                  and          a2, sp, a1
4:                sll          gp, t2, s9
                  sltu         a3, s2, s10
                  sll          t0, t2, s3
                  add          s4, tp, a3
                  srai         a1, s8, 24
                  beq          t1, t4, 11f
                  add          s7, s3, s9
11:               sltiu        ra, s1, 335
                  nop
                  lw           t1, 4(tp)
                  lui          t3, 640960
                  or           a2, s0, a2
                  addi         tp, tp, 64
                  auipc        t3, 599744
                  andi         a6, zero, -595
                  lui          ra, 652975
                  slli         t3, t5, 20
                  nop
                  lui          a4, 656859
32:               addi x28, x6, 1
32:               jalr x28, x28, 0
sub_3:            beq          a2, gp, sub_3_stack_p
                  sub          t5, t5, a7
sub_3_stack_p:    addi         tp, tp, -52
                  sw           t1, 4(tp)
                  xor          a6, s5, t5
                  sll          sp, zero, s1
                  srli         ra, a5, 31
                  srl          a6, s5, t6
                  la           s8, sub_5
                  sltiu        a2, t6, -1215
                  sltiu        s7, a6, 775
                  slt          sp, s4, a7
                  lui          t0, 594135
                  addi         s8, s8, 318
                  nop
                  srai         a4, s6, 14
sub_3_j5:         jalr         t1, s8, -318 #jump sub_3 -> sub_5
                  sra          s10, s0, ra
                  slt          s11, a5, s2
                  slli         s5, zero, 9
                  sltiu        t6, s7, 1166
                  add          s11, t0, t6
                  ori          a1, ra, -1056
sub_3_j6:         jal          t1, sub_4 #jump sub_3 -> sub_4
                  xor          s10, s3, s10
                  srli         a0, s2, 7
                  srli         ra, gp, 30
                  sll          t3, gp, t3
                  xor          a4, zero, a4
                  bge          s7, t0, 9f
                  or           t4, s2, tp
                  slli         t5, s3, 18
                  bltu         s10, a6, 9f
9:                and          s11, s11, gp
                  sltu         a6, s0, s11
                  nop
                  lw           t1, 4(tp)
                  xor          t0, ra, sp
                  addi         tp, tp, 52
                  xor          s10, t4, s2
                  and          s2, t6, gp
                  auipc        a1, 749128
                  srl          s7, a3, a5
43:               addi x10, x6, 0
43:               jalr x10, x10, 0
sub_8:            slli         s2, t1, 22
                  sll          s11, s4, t5
                  srai         sp, a2, 28
                  addi         tp, tp, -28
                  xor          zero, a3, s1
                  sw           t1, 4(tp)
                  or           t4, t2, a5
                  la           s8, region_1+1280 #start riscv_load_store_rand_instr_stream_15
                  slt          t5, tp, s6
                  lbu          zero, -578(s8)
                  lhu          sp, 388(s8)
                  lw           t4, -572(s8)
                  lhu          s5, -764(s8)
                  sltiu        s11, a0, 658
                  lbu          s0, 402(s8)
                  sb           a7, -1051(s8)
                  andi         t3, sp, -1964
                  slt          a6, s11, t0
                  auipc        zero, 923466
                  sb           a5, 269(s8)
                  lb           a3, -1051(s8)
                  sll          gp, s7, a4
                  andi         s10, s2, -1283
                  lhu          s3, -766(s8)
                  or           a1, t0, s7
                  sub          gp, t4, s11
                  lb           s3, -1122(s8)
                  sb           t4, 281(s8)
                  sb           t5, -371(s8)
                  lbu          t4, -171(s8)
                  sb           a5, 447(s8)
                  sub          s6, t3, s10
                  lbu          s5, -853(s8)
                  xor          s4, a5, t1
                  lb           a2, -957(s8)
                  lb           a6, -514(s8)
                  lw           t5, -84(s8)
                  srli         s7, a6, 22
                  sw           s4, 172(s8)
                  sb           s7, 123(s8)
                  auipc        a0, 779580
                  xor          a6, t0, s6
                  lbu          s0, -381(s8)
                  lbu          ra, 202(s8)
                  lbu          s0, -160(s8)
                  sltiu        s2, a5, -1183
                  slt          s1, gp, a7
                  sb           s11, -705(s8) #end riscv_load_store_rand_instr_stream_15
                  la           sp, region_0+1132 #start riscv_load_store_rand_instr_stream_4
                  lbu          t0, -208(sp)
                  xori         s6, s10, 873
                  xor          a3, t0, s2
                  srli         t0, t3, 7
                  srl          s3, t3, a5
                  add          a7, s11, sp
                  sub          t6, ra, s4
                  auipc        t4, 879541
                  sb           t6, 39(sp)
                  sltu         t0, s11, t5
                  srai         t5, s6, 26
                  srli         a2, s4, 7
                  slli         s8, t4, 21
                  slt          s8, a3, s2
                  slli         t6, s2, 18
                  lb           a0, 125(sp)
                  or           s3, t4, t4
                  sb           s2, 131(sp)
                  slli         a6, s7, 19
                  andi         zero, t3, -504
                  lb           s5, 78(sp)
                  sltiu        t5, t6, -1560
                  lbu          a5, -121(sp)
                  xori         a1, s5, -920
                  slli         t1, t2, 4
                  srl          s1, t0, s8
                  sb           s4, 217(sp)
                  lb           t0, 249(sp)
                  addi         a1, ra, 719
                  sb           s2, 126(sp)
                  lb           a5, -150(sp)
                  sll          t3, t0, a5
                  slt          a7, s4, a0
                  lb           s6, 59(sp)
                  sb           sp, 256(sp)
                  srl          s7, a1, s11
                  sub          gp, a6, t4
                  lb           s5, -170(sp)
                  srai         a2, t6, 20
                  lbu          s10, 144(sp) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_0+1623 #start riscv_load_store_rand_instr_stream_10
                  lb           t1, -27(sp)
                  and          s7, a6, s3
                  sb           s4, 47(sp)
                  addi         s10, a5, 429
                  addi         ra, t5, -246
                  lb           s10, 22(sp)
                  slli         a7, a2, 23
                  sb           t2, 10(sp)
                  sltu         s11, s9, s3
                  auipc        s7, 685817
                  lhu          s6, -17(sp)
                  lb           t5, -23(sp)
                  lb           s4, -48(sp)
                  auipc        t1, 729305
                  lbu          t6, -3(sp)
                  lbu          s6, 33(sp)
                  slt          s11, t6, s10
                  lb           gp, -49(sp)
                  sw           a3, -51(sp)
                  sb           s2, 40(sp)
                  lw           t6, -63(sp)
                  lb           s6, 5(sp)
                  or           gp, a0, s5
                  slti         a3, s3, 1343
                  srli         a4, s3, 25
                  srli         a5, s6, 7
                  sb           t3, 22(sp)
                  slt          s7, s4, s2
                  ori          s3, t4, -476
                  or           s2, s10, s1
                  lui          t0, 593205
                  lb           a2, -14(sp)
                  or           s1, s0, a4
                  slt          t5, a4, s4
                  lhu          ra, -7(sp)
                  lb           a0, -46(sp)
                  slt          s7, s3, sp
                  sw           t0, -43(sp)
                  xori         a1, s8, 69
                  addi         a0, sp, -324
                  slti         a7, t4, 986
                  sb           s4, 55(sp)
                  nop
                  lhu          a0, 57(sp)
                  auipc        s11, 242431
                  lbu          gp, -38(sp)
                  sh           s4, -55(sp)
                  sb           sp, 52(sp)
                  sb           a7, 20(sp)
                  lbu          zero, 16(sp)
                  sb           s9, -44(sp) #end riscv_load_store_rand_instr_stream_10
                  la           sp, region_0+447 #start riscv_load_store_rand_instr_stream_22
                  lb           s1, -437(sp)
                  lbu          s0, 1521(sp)
                  auipc        t4, 92305
                  ori          t5, sp, -1167
                  sb           s8, 41(sp)
                  sb           a1, 106(sp)
                  lhu          a7, 1191(sp)
                  lb           a2, -186(sp)
                  lh           t4, 509(sp)
                  xor          ra, t6, t2
                  slt          s2, a1, t5
                  lbu          t5, 1494(sp)
                  slti         a5, a5, -651
                  sb           s6, -297(sp)
                  lhu          t6, 1489(sp)
                  sb           t5, 951(sp)
                  and          a4, t5, s1
                  andi         s3, s5, -1522
                  sh           t1, 221(sp)
                  lw           a7, 473(sp)
                  lui          s0, 636590
                  lhu          a0, -315(sp)
                  lbu          t6, -424(sp)
                  lb           s7, 621(sp)
                  sb           s8, 1522(sp)
                  xor          a4, s11, s9
                  sub          s8, s7, s9
                  sh           s4, 191(sp)
                  lb           t1, 1548(sp)
                  ori          s6, s5, 1703
                  lb           a5, 980(sp)
                  lbu          s0, 1225(sp)
                  lbu          s7, 1163(sp)
                  sb           t3, 892(sp)
                  slti         gp, t3, 1029
                  sra          s11, tp, s10
                  lbu          t4, 614(sp)
                  sub          s3, s3, t5
                  srai         s4, s11, 6
                  lbu          t6, -92(sp)
                  ori          t0, s2, 1282
                  lb           a4, 1092(sp) #end riscv_load_store_rand_instr_stream_22
                  la           sp, region_1+1257 #start riscv_load_store_rand_instr_stream_7
                  xor          a7, s0, a5
                  nop
                  sh           s0, 89(sp)
                  or           a2, a1, t3
                  and          a0, s0, a5
                  sltiu        s2, t0, 1798
                  lhu          s8, -865(sp)
                  srl          ra, s1, s10
                  srai         a7, s3, 28
                  lb           a3, -320(sp)
                  lb           s1, -480(sp)
                  sltu         t1, s11, a0
                  auipc        s1, 628104
                  sltiu        zero, t4, 875
                  xor          ra, zero, s9
                  slli         s11, a0, 5
                  sb           ra, -122(sp)
                  slli         zero, s3, 2
                  lb           a0, 96(sp)
                  slli         s0, s11, 2
                  lb           s10, -122(sp)
                  lb           a2, -206(sp)
                  andi         t4, a6, 573
                  ori          t1, t3, 461
                  ori          t6, a1, -24
                  lhu          t6, -629(sp)
                  sb           t2, -652(sp)
                  ori          s0, s5, -1232
                  sra          a2, s10, t1
                  sh           t1, -479(sp)
                  sb           a6, -911(sp)
                  slti         s4, s0, 1251
                  srl          gp, a1, s10
                  sltiu        t5, a2, 33
                  or           a6, a7, s1
                  xor          t1, t2, s9
                  andi         t1, zero, -2015
                  lb           ra, 350(sp)
                  sll          s0, s3, s6
                  slli         s10, s0, 29
                  lbu          t5, -36(sp)
                  srai         a4, s8, 17
                  ori          a1, s5, -1138
                  sb           t4, 256(sp) #end riscv_load_store_rand_instr_stream_7
                  la           sp, region_0+22 #start riscv_load_store_rand_instr_stream_0
                  add          a1, s9, s0
                  srl          s11, t3, t4
                  sra          t5, s6, a2
                  lh           a1, 6(sp)
                  lui          t5, 335138
                  lb           t5, 39(sp)
                  slt          ra, s3, a4
                  sw           t6, -10(sp)
                  or           ra, t5, a4
                  lhu          a0, 6(sp)
                  sw           t6, -14(sp)
                  sb           s2, 27(sp)
                  slli         t3, t0, 25
                  and          a2, a1, gp
                  sb           s11, 28(sp)
                  lbu          s11, 21(sp)
                  srli         a2, a1, 26
                  lhu          s10, 38(sp)
                  sltu         s6, t5, t5
                  srl          a5, s7, s5
                  lh           a7, 60(sp)
                  sb           s3, 43(sp)
                  lui          s11, 456720
                  sub          a2, s6, t1
                  ori          s5, s1, 629
                  lbu          s8, -12(sp)
                  ori          t0, s9, 84
                  lui          a3, 85074
                  sra          s0, s11, s1
                  lbu          t0, 54(sp)
                  andi         s0, t1, -204
                  and          s3, a0, s0
                  sub          t6, a2, a2
                  sb           ra, 1(sp)
                  sltu         s10, a3, a5
                  srai         a3, s10, 4
                  auipc        t3, 131409
                  sb           t1, 16(sp) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+896 #start riscv_load_store_rand_instr_stream_11
                  srli         s6, a3, 17
                  lbu          a2, -42(sp)
                  lw           t4, -24(sp)
                  andi         s4, a7, 1719
                  lw           s5, 52(sp)
                  sltiu        s4, zero, 2030
                  nop
                  xori         s5, t5, -496
                  sb           a2, 26(sp)
                  lw           gp, 44(sp)
                  sh           s7, 36(sp)
                  lb           zero, 45(sp)
                  nop
                  lbu          a0, 47(sp)
                  nop
                  lbu          t5, -63(sp)
                  sltu         s10, s8, s10
                  slt          t3, s5, s1
                  lhu          s11, 46(sp)
                  lbu          ra, 60(sp)
                  slti         a0, a1, 243
                  sw           a6, 60(sp)
                  sltiu        s11, s7, 1929
                  lb           a0, 2(sp)
                  sra          gp, s5, zero
                  sltiu        a4, t0, 1654
                  srai         t5, s4, 26
                  sb           a4, 39(sp) #end riscv_load_store_rand_instr_stream_11
                  la           sp, region_0+12 #start riscv_load_store_rand_instr_stream_14
                  xor          s3, s6, a6
                  lb           t6, 21(sp)
                  auipc        s6, 541951
                  lb           a5, -1(sp)
                  sh           s10, 8(sp)
                  sltu         zero, sp, s2
                  lb           t5, 22(sp)
                  sb           a6, 19(sp)
                  sb           tp, 55(sp)
                  lhu          a3, 8(sp)
                  lh           a2, 40(sp)
                  sub          t0, t2, s10
                  lb           s8, 11(sp)
                  lb           a2, 36(sp)
                  sub          s8, s9, t5
                  sb           a5, 30(sp)
                  sb           t6, -1(sp)
                  lbu          a4, -9(sp)
                  lbu          s5, -11(sp)
                  lb           a1, -2(sp)
                  lbu          s2, 45(sp)
                  lh           a2, 14(sp)
                  xori         t3, t1, -159
                  lh           t4, 32(sp)
                  sh           t1, 46(sp)
                  srl          t0, t0, s7
                  sll          a2, t5, s10
                  sb           s3, 57(sp)
                  sltu         s7, t4, ra
                  xor          s11, gp, s1
                  lhu          a1, 24(sp)
                  lbu          a1, 21(sp)
                  lb           a4, 27(sp)
                  xor          s11, t2, s3
                  sra          a4, s10, s2
                  lui          t4, 100524
                  sb           s6, 51(sp)
                  sb           sp, -11(sp)
                  lbu          t1, 25(sp)
                  lb           t0, 41(sp)
                  auipc        t1, 945306
                  sltiu        t0, s7, -732
                  lhu          s7, 56(sp)
                  lbu          a1, 46(sp)
                  lbu          t6, 19(sp) #end riscv_load_store_rand_instr_stream_14
                  la           sp, region_0+160 #start riscv_load_store_rand_instr_stream_24
                  lb           a1, 3(sp)
                  sb           t3, 1(sp)
                  sra          s0, s9, s0
                  lbu          a6, -5(sp)
                  lbu          ra, 5(sp)
                  sb           s5, -16(sp)
                  lb           t5, -15(sp)
                  lh           a0, 12(sp)
                  sll          a6, t2, a0
                  andi         gp, sp, -262
                  lbu          s11, 15(sp)
                  srl          s5, s3, s4
                  lw           t0, 8(sp)
                  lb           zero, 7(sp)
                  sb           s4, -11(sp)
                  lb           a1, -7(sp)
                  lbu          s11, 5(sp)
                  lb           s3, -13(sp)
                  or           a1, ra, s8
                  lb           t1, 13(sp)
                  nop
                  slt          t6, s8, t2
                  lbu          t1, -3(sp)
                  and          a7, zero, t5
                  lbu          s7, 8(sp)
                  lbu          t4, 13(sp)
                  lb           s2, 13(sp)
                  xori         s11, s10, 1849
                  sltu         s2, t1, s4
                  slt          t4, a5, zero
                  sb           s1, -13(sp)
                  sh           sp, -12(sp)
                  lbu          a2, 10(sp)
                  lhu          s4, 6(sp)
                  lb           t4, 1(sp) #end riscv_load_store_rand_instr_stream_24
                  la           sp, region_1+1205 #start riscv_load_store_rand_instr_stream_3
                  lb           zero, -38(sp)
                  xori         s3, a7, -1396
                  xori         s2, s1, 473
                  andi         s4, a5, -168
                  sb           t4, -16(sp)
                  lb           gp, -30(sp)
                  lb           a5, 63(sp)
                  lui          zero, 623170
                  srai         s3, t3, 16
                  slli         gp, t0, 9
                  lh           s10, 35(sp)
                  slti         t1, a7, 1572
                  lb           a5, 13(sp)
                  xor          ra, a5, sp
                  lb           s8, 46(sp)
                  lbu          s10, 36(sp)
                  sb           s2, 34(sp)
                  or           t0, s1, s8
                  lb           s11, 14(sp)
                  sb           s2, 27(sp)
                  and          zero, sp, t4
                  lbu          a7, -4(sp)
                  xor          s8, a3, tp
                  lbu          s7, 18(sp)
                  ori          a3, a0, -552
                  sb           t0, 14(sp)
                  or           s1, sp, tp
                  slt          gp, sp, a4
                  sub          t3, t2, t0
                  srli         t3, a7, 24
                  srai         a7, tp, 16
                  auipc        gp, 840180
                  sb           s1, -23(sp)
                  xori         a2, s2, -1544
                  lbu          t1, 46(sp) #end riscv_load_store_rand_instr_stream_3
                  la           a3, region_0+973 #start riscv_load_store_rand_instr_stream_19
                  lui          t1, 367032
                  srli         t0, a3, 28
                  sb           a2, 426(a3)
                  srl          a5, zero, t5
                  slt          s5, a1, ra
                  sb           s8, -19(a3)
                  xori         a2, s6, 1417
                  sh           a4, 945(a3)
                  or           s8, gp, s1
                  lbu          s0, -970(a3)
                  sll          s2, s5, t4
                  sra          s2, a6, a7
                  lbu          a6, 354(a3)
                  or           t0, s6, s8
                  sb           ra, -48(a3)
                  lb           t0, 951(a3)
                  or           gp, s11, t1
                  slt          t6, s10, tp
                  lui          sp, 759612
                  sb           s4, 532(a3)
                  and          a6, gp, a4
                  lbu          t4, -620(a3)
                  lb           s0, -378(a3)
                  addi         s5, s7, -1134
                  slli         ra, s8, 12
                  slli         s10, s2, 22
                  srai         a6, t4, 17
                  sh           s2, -425(a3)
                  lb           a0, -215(a3)
                  sub          s6, s10, a0
                  slt          a5, a0, t5
                  lh           s6, 361(a3)
                  sll          t3, a6, s0
                  addi         t6, s4, -1505
                  lb           s11, 899(a3)
                  srli         a5, a0, 26
                  srli         a2, s0, 25
                  nop
                  sltu         s7, gp, s4
                  lb           s7, 640(a3)
                  or           a0, t6, t6
                  sb           s3, 761(a3)
                  lb           t6, -868(a3)
                  lb           s10, -821(a3)
                  sb           s0, -344(a3)
                  or           s10, a1, s6
                  ori          a5, s8, 1513
                  sb           zero, -935(a3) #end riscv_load_store_rand_instr_stream_19
                  la           t1, region_0+1754 #start riscv_load_store_rand_instr_stream_26
                  sltiu        t4, zero, 1844
                  sb           a2, -183(t1)
                  lui          s2, 834815
                  sltiu        a4, t4, 1882
                  xor          zero, a3, s0
                  lbu          s11, -168(t1)
                  sub          t6, a4, s8
                  srai         s3, t0, 24
                  slti         a0, a0, -925
                  lh           t5, 132(t1)
                  sb           a7, -190(t1)
                  lh           t3, 188(t1)
                  xor          s4, t2, t5
                  sra          a3, s8, t3
                  ori          a0, s7, -877
                  xori         a6, s10, -1564
                  lbu          a3, -180(t1)
                  sra          t0, s1, s1
                  addi         a6, sp, -998
                  sub          s4, t2, s4
                  sw           s7, 170(t1)
                  addi         a5, s2, 833
                  sb           t4, -29(t1)
                  addi         s3, t3, 769
                  sub          sp, s3, sp
                  lbu          a3, -101(t1)
                  auipc        s2, 697237
                  andi         s3, ra, -637
                  srli         a7, s3, 21
                  xor          t6, s5, a4
                  sra          a5, gp, s8
                  sb           tp, -9(t1)
                  andi         s3, s10, -1236
                  or           a3, ra, tp
                  xor          s0, a1, s6
                  sb           t2, 93(t1)
                  ori          a4, ra, 987
                  or           s1, a7, a7
                  andi         t0, s11, 867
                  lbu          t5, 91(t1)
                  lhu          a7, 26(t1) #end riscv_load_store_rand_instr_stream_26
                  la           sp, region_0+1612 #start riscv_load_store_rand_instr_stream_6
                  sb           s4, 138(sp)
                  auipc        a0, 351057
                  lhu          a4, -138(sp)
                  lb           a3, -230(sp)
                  addi         zero, t6, 113
                  sb           s4, 242(sp)
                  and          a5, s11, s7
                  lh           s3, -154(sp)
                  nop
                  lbu          s11, -254(sp)
                  slli         a4, tp, 11
                  slt          t3, zero, s11
                  lw           a4, 44(sp)
                  sh           s3, -528(sp)
                  lhu          a7, 336(sp)
                  sra          s10, a2, ra
                  lb           s6, -374(sp)
                  sll          a7, a1, ra
                  sb           a3, 260(sp)
                  lb           s0, -616(sp)
                  sb           s6, -808(sp)
                  nop
                  sub          s6, sp, zero
                  srl          a7, a5, a4
                  sb           s6, -407(sp)
                  sh           a2, -1182(sp)
                  ori          a3, t5, 1991
                  slti         t0, sp, 974
                  sb           ra, -923(sp)
                  lb           s7, 383(sp)
                  lb           s1, 30(sp)
                  lb           s11, -297(sp)
                  lh           t1, -464(sp)
                  lhu          a5, -960(sp)
                  xor          t4, a3, s2
                  sb           s11, -245(sp) #end riscv_load_store_rand_instr_stream_6
                  la           a1, region_1+265 #start riscv_load_store_rand_instr_stream_18
                  lbu          a2, -12(a1)
                  lb           sp, 5(a1)
                  add          s5, a1, s0
                  lh           a2, -3(a1)
                  xor          ra, t6, s11
                  sub          t6, t3, ra
                  auipc        t6, 177316
                  slti         a7, s4, -816
                  add          t6, s5, s2
                  lb           s3, -4(a1)
                  lui          s8, 171586
                  sh           s7, 9(a1)
                  andi         s3, a3, 1294
                  sra          t4, t3, s7
                  or           a2, s1, s4
                  slt          ra, a7, a0
                  lh           gp, -1(a1)
                  add          s5, a4, sp
                  andi         a6, s8, 1481
                  lb           a7, -2(a1)
                  srai         t3, s4, 25
                  lh           sp, -11(a1)
                  sb           s8, 11(a1)
                  sb           a7, -8(a1)
                  lbu          a5, 4(a1)
                  slli         a2, a0, 12
                  slti         s11, s11, -207
                  sb           s8, 15(a1)
                  sra          s8, s6, ra
                  slli         t1, s6, 25
                  lb           t6, 9(a1) #end riscv_load_store_rand_instr_stream_18
                  la           a6, region_1+528 #start riscv_load_store_rand_instr_stream_5
                  sb           s3, 212(a6)
                  xor          s0, s2, a7
                  lui          s8, 1025058
                  sb           ra, -91(a6)
                  srai         a1, s0, 17
                  slti         t3, t4, -1073
                  lb           t6, -196(a6)
                  srli         s2, zero, 4
                  auipc        t0, 600203
                  sra          s6, zero, t6
                  xor          s6, a5, zero
                  sb           a5, 227(a6)
                  srl          s10, t3, a2
                  sltu         a5, ra, s9
                  lui          a0, 114029
                  lb           ra, 159(a6)
                  lbu          a4, 135(a6)
                  addi         s7, a6, 1292
                  lb           s1, -214(a6)
                  lb           a5, 255(a6)
                  ori          a4, a5, 682
                  sb           s9, -194(a6)
                  slli         s6, a5, 20
                  lbu          s2, -117(a6)
                  lbu          s5, 102(a6)
                  xori         t1, zero, 1379
                  lbu          t0, 205(a6)
                  lb           s7, 77(a6)
                  srl          s2, t3, s2
                  lh           s3, -30(a6)
                  sb           s0, 15(a6)
                  srli         s3, sp, 21
                  lhu          a0, 226(a6)
                  sb           a0, -122(a6)
                  xori         a2, s11, -453
                  lbu          s11, 79(a6)
                  sub          t0, tp, s7
                  lbu          s0, 49(a6)
                  lh           a1, 98(a6)
                  slt          s5, s6, s9
                  sb           zero, 11(a6)
                  lbu          s5, 120(a6)
                  lb           a4, 129(a6)
                  xor          sp, s9, a7
                  add          a4, s6, s4
                  andi         s1, t2, -1255
                  sw           gp, -68(a6)
                  lhu          s4, -178(a6)
                  lb           s0, -33(a6)
                  sb           a2, -149(a6)
                  xor          s8, s6, zero
                  addi         s7, s2, -931
                  auipc        a3, 808534
                  srli         s11, s4, 10
                  add          s11, a5, a6
                  sub          sp, s3, s1
                  sb           ra, -203(a6) #end riscv_load_store_rand_instr_stream_5
                  la           s8, region_0+921 #start riscv_load_store_rand_instr_stream_2
                  lhu          s4, 59(s8)
                  sll          a7, a6, s0
                  lb           a4, -5(s8)
                  nop
                  lhu          s4, -29(s8)
                  lb           t1, 46(s8)
                  andi         a4, s5, 700
                  and          a5, a7, s11
                  addi         a4, s5, -5
                  auipc        s7, 970964
                  lw           a2, 55(s8)
                  slti         s1, s8, 297
                  slt          a7, s10, s8
                  add          gp, s6, a2
                  srli         s3, s0, 10
                  lw           a5, 55(s8)
                  sw           a2, 59(s8)
                  lb           a1, 43(s8)
                  slt          ra, s7, a6
                  andi         a6, s5, 538
                  lb           ra, -28(s8)
                  lb           ra, 8(s8)
                  srl          a4, s11, s11
                  srli         a7, t1, 3
                  or           t3, t2, t1
                  or           gp, s5, a4
                  lb           s11, -18(s8)
                  lbu          a1, -42(s8)
                  lui          zero, 776639
                  srl          s11, a4, a6
                  nop
                  sltiu        s6, a2, -24
                  slti         gp, t4, -611
                  srli         zero, s2, 15
                  sb           t0, 2(s8)
                  sb           sp, -56(s8)
                  slt          s11, s11, a6
                  lb           t3, 57(s8)
                  lhu          a1, -43(s8) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+1245 #start riscv_load_store_rand_instr_stream_23
                  lb           s5, -13(sp)
                  sw           t1, -1(sp)
                  slti         s5, s7, 674
                  andi         a7, a0, 409
                  sb           s2, 42(sp)
                  sltiu        gp, s7, 867
                  sub          t0, s1, a4
                  sb           a4, 40(sp)
                  lb           t0, -10(sp)
                  lb           s6, -19(sp)
                  sb           sp, 42(sp)
                  slt          s2, a1, a2
                  slli         s6, s4, 4
                  lh           a6, 63(sp)
                  lbu          t0, -31(sp)
                  lbu          s10, 45(sp)
                  lb           a7, 16(sp)
                  ori          s8, a3, 556
                  xori         s1, s2, -1881
                  lbu          a1, -3(sp)
                  lh           a5, 53(sp)
                  sb           sp, 44(sp)
                  addi         a6, s1, -1471
                  sltu         s11, t1, t6
                  lbu          s7, 0(sp)
                  sltiu        s10, a4, -1530
                  lbu          s3, -6(sp) #end riscv_load_store_rand_instr_stream_23
                  la           sp, region_1+82 #start riscv_load_store_rand_instr_stream_17
                  sub          a4, t4, t5
                  ori          s5, t0, -625
                  lb           s6, 1161(sp)
                  lb           a6, 957(sp)
                  srl          a7, a3, a1
                  auipc        s2, 143190
                  slli         a7, gp, 30
                  add          s10, a2, s6
                  lbu          ra, 583(sp)
                  auipc        s8, 876060
                  sb           tp, 547(sp)
                  lb           s3, 1112(sp)
                  sh           s6, 714(sp)
                  sltu         t4, s5, a5
                  sh           s11, 654(sp)
                  lbu          t1, 1763(sp)
                  sb           s1, 785(sp)
                  lui          s7, 528134
                  andi         s7, a5, -1829
                  sll          t0, s9, ra
                  lui          a0, 824721
                  lui          a0, 175230
                  sb           ra, 136(sp)
                  lbu          a5, 196(sp)
                  sb           t3, 714(sp)
                  lbu          a6, 549(sp)
                  slt          s4, zero, s10
                  sh           gp, 454(sp) #end riscv_load_store_rand_instr_stream_17
                  la           a3, region_1+669 #start riscv_load_store_rand_instr_stream_13
                  lw           zero, 491(a3)
                  xori         a0, s8, 530
                  sltiu        t5, s1, 856
                  and          t1, s8, s9
                  sb           a0, -470(a3)
                  lbu          a0, 573(a3)
                  sra          ra, sp, tp
                  sb           s4, -505(a3)
                  lb           s3, -14(a3)
                  lb           s6, -421(a3)
                  slli         s2, a1, 12
                  sh           s4, 285(a3)
                  srai         s1, t0, 27
                  sra          a0, sp, s11
                  sh           sp, 601(a3)
                  sra          a5, s10, a6
                  add          a0, s3, t5
                  xori         gp, s4, -1770
                  slli         a4, t0, 10
                  sltiu        s3, t6, 123
                  addi         sp, a0, 58
                  srli         t0, s0, 26
                  sltiu        s5, sp, 1009
                  addi         t5, t1, 1804
                  lh           a6, -257(a3)
                  lhu          s1, 165(a3)
                  add          s7, tp, s2
                  lui          t3, 1000361
                  andi         a2, a3, 229
                  sw           t2, -381(a3)
                  lbu          t5, -104(a3)
                  add          s3, s5, s6
                  sub          s10, t6, tp
                  slt          s2, sp, s1
                  xori         sp, s8, -1690
                  lb           t3, 60(a3)
                  lh           a7, 175(a3)
                  and          a1, a6, s2
                  lb           s11, -622(a3)
                  sub          sp, s2, t3
                  sll          a1, s3, t1
                  xori         s6, t0, 1743
                  lw           gp, 915(a3)
                  sltu         s6, a1, ra
                  lhu          t5, 611(a3)
                  lh           a0, 317(a3)
                  sb           s9, -560(a3)
                  sh           a0, -173(a3)
                  sb           s10, 170(a3) #end riscv_load_store_rand_instr_stream_13
                  addi         s8, a5, 185
                  bltu         sp, s6, 5f
                  slli         s1, t2, 17
                  slti         a5, a0, 325
                  slli         s6, t1, 0
5:                and          s2, a3, sp
                  blt          s7, s1, 9f
                  sub          t0, t5, s5
                  nop
9:                or           s8, s8, t1
                  slt          s2, s4, a3
                  srai         a3, ra, 29
                  lui          s8, 749236
                  slli         t6, s8, 23
                  bltu         a2, t0, 27f
                  ori          a6, t4, -1981
                  sra          s8, s7, a1
                  lui          a7, 295123
                  bge          ra, s5, 21f
                  slt          s7, t0, a2
                  sltu         t5, t3, tp
21:               bgeu         s9, s7, 41f
                  auipc        s0, 308160
                  and          t3, t4, t3
                  andi         t4, a2, -711
                  beq          t6, s0, 38f
                  bne          a6, t4, 35f
27:               sll          a6, s4, tp
                  srli         a7, t4, 16
                  addi         s5, a6, 356
                  srli         s10, s1, 1
                  bne          a0, t2, 48f
                  add          a6, a7, tp
                  xor          a3, a5, s9
                  ori          s3, s9, -1617
35:               addi         s6, s1, -824
                  xor          a2, s3, tp
                  blt          a4, sp, 50f
38:               add          a5, s10, t5
                  auipc        s2, 601709
                  lui          a7, 94834
41:               bltu         a7, s5, 47f
                  slti         s0, ra, -320
                  sub          sp, sp, gp
                  add          s8, s6, zero
                  sra          a2, s1, t0
                  beq          a0, s8, 52f
47:               slt          a4, a3, s1
48:               andi         s0, s9, -333
                  sub          a2, s7, a3
50:               xor          s1, s3, t0
                  srli         s7, a0, 27
52:               xor          t6, s11, a5
                  ori          t3, s3, -1937
                  andi         t0, t2, -1503
                  or           s6, s0, zero
                  blt          t6, t1, 57f
57:               or           a1, t3, a6
                  sub          t4, a1, a4
                  nop
                  andi         s6, s0, 937
                  sltiu        s1, s4, -1980
                  andi         t1, t0, 635
                  add          a6, s5, t2
                  slt          a5, s2, s7
                  blt          a7, zero, 73f
                  sltu         t1, s0, s0
                  sltu         s5, s3, gp
                  nop
                  xori         ra, t4, -1067
                  sltu         a1, a5, s1
                  srai         t6, a3, 6
                  and          t0, s9, s9
73:               slt          s7, a1, t4
                  blt          t6, a4, 92f
                  srli         zero, s7, 16
                  beq          tp, t4, 85f
                  sub          s11, s0, s2
                  bgeu         s7, t3, 90f
                  slli         a1, s10, 23
                  sltiu        a1, a4, 564
                  and          s1, t1, t0
                  sll          s2, t5, a2
                  bge          a4, a4, 100f
                  bge          a0, s7, 88f
85:               andi         t6, t2, -973
                  nop
                  add          s0, s0, t5
88:               andi         zero, a4, -1058
                  bgeu         tp, sp, 106f
90:               bne          s7, s11, 108f
                  srai         s5, sp, 10
92:               nop
                  slli         a6, zero, 11
                  and          s10, a0, a0
                  beq          s10, t0, 113f
                  addi         ra, t2, -187
                  slti         s10, t4, 1385
                  lui          s3, 485216
                  auipc        a4, 552858
100:              bge          s2, a5, 116f
                  sra          a1, a4, s8
                  sltu         sp, tp, a3
                  sltu         ra, t5, a6
                  ori          a4, a4, -1211
                  srli         zero, a3, 13
106:              bne          a2, a4, 120f
                  andi         s3, t6, -1885
108:              blt          s8, ra, 115f
                  bgeu         s5, t6, 120f
                  slt          a4, t2, s10
                  sltiu        a2, t3, 1838
                  lui          zero, 978256
113:              slt          s6, s1, s5
                  andi         s6, a7, 1637
115:              bge          a7, tp, 123f
116:              sll          zero, t2, a2
                  srl          gp, s6, zero
                  srai         t6, tp, 23
                  xori         s8, t3, -899
120:              or           gp, gp, s1
                  srai         t5, a7, 24
                  add          a2, t1, t2
123:              nop
                  bge          s4, a5, 133f
                  srl          t4, s0, s5
                  nop
                  nop
                  sll          s1, a5, s11
                  sltiu        s2, s3, -1183
                  slt          a4, a0, s3
                  bgeu         s9, a1, 151f
                  bne          s5, t6, 142f
133:              or           s10, a7, s9
                  sltiu        t3, gp, 1211
                  slti         a4, zero, -1112
                  andi         s2, a7, -1304
                  srl          a4, zero, s1
                  auipc        zero, 236804
                  srl          sp, t0, s3
                  blt          s2, s10, 147f
                  auipc        t4, 973592
142:              ori          s0, s0, 980
                  nop
                  slli         t4, ra, 7
                  sra          t0, s7, t6
                  bltu         a6, a1, 166f
147:              add          a2, gp, t2
                  bgeu         s3, t6, 152f
                  srai         s1, s9, 0
                  sub          t6, s4, a3
151:              slt          a5, a1, s1
152:              xor          ra, s6, a6
                  or           a0, t0, zero
                  andi         s10, s6, 1462
                  bne          a2, zero, 163f
                  srai         gp, a3, 15
                  blt          a1, a6, 173f
                  ori          a5, s0, 177
                  xori         t3, s4, -954
                  addi         a1, tp, -646
                  sltu         s4, s10, s11
                  slt          s11, s1, s10
163:              blt          s6, t6, 169f
                  sltiu        s10, s11, -1303
                  slt          s10, t6, t2
166:              sltiu        t5, a3, -601
                  srl          s5, a3, a7
                  sltu         s10, a5, t0
169:              slt          a6, t3, s7
                  nop
                  add          a0, t6, a7
                  bne          s0, a6, 190f
173:              beq          a2, s0, 183f
                  bgeu         a6, a2, 191f
                  slli         t3, a5, 23
                  and          a0, a6, t6
                  addi         s8, t1, -1431
                  blt          t1, s9, 187f
                  srl          s3, t1, zero
                  srl          s8, t3, t2
                  bne          gp, gp, 190f
                  lui          a3, 365118
183:              sra          s1, s9, tp
                  sra          s1, a5, t6
                  slti         a1, a5, -55
                  bgeu         s6, s5, 192f
187:              beq          a3, s0, 188f
188:              srai         s3, s9, 30
                  addi         a1, t0, -1827
190:              blt          tp, a5, 193f
191:              bne          t1, a0, 202f
192:              addi         s10, s5, -1063
193:              xori         t6, s5, -152
                  blt          gp, s5, 211f
                  auipc        t6, 158830
                  blt          t5, t4, 210f
                  sra          s5, a4, t5
                  bgeu         t3, s7, 201f
                  and          s0, gp, a5
                  nop
201:              sra          s2, s2, s5
202:              sub          ra, t0, s11
                  srai         t6, ra, 25
                  bgeu         s11, s8, 213f
                  sra          t6, a6, t2
                  or           s5, tp, s10
                  srli         a4, zero, 16
                  sltiu        s5, t2, -1975
                  auipc        s4, 665440
210:              slt          gp, s3, t1
211:              sltu         a2, a0, s10
                  lui          s1, 320039
213:              andi         s0, s3, 1279
                  blt          t4, sp, 226f
                  ori          s7, s2, 384
                  slti         a7, s10, -1566
                  bne          a2, ra, 224f
                  blt          sp, s5, 225f
                  bge          t1, a2, 223f
                  bltu         s10, a0, 240f
                  srai         t4, tp, 21
                  sra          ra, ra, a7
223:              lui          sp, 1009030
224:              srai         a4, a6, 31
225:              andi         s4, s3, -1394
226:              blt          a7, t5, 239f
                  sll          s4, s1, t3
                  sltiu        t0, t0, 1123
                  sll          s0, a6, gp
                  sub          s4, t0, s11
                  srai         t3, a7, 10
                  srai         s10, tp, 0
                  xor          s0, t4, a6
                  slli         a2, sp, 8
                  slli         t0, a7, 16
                  bge          a3, a1, 249f
                  or           t0, s6, zero
                  and          t3, s9, tp
239:              or           a4, s0, a1
240:              bge          a6, t3, 253f
                  sra          s7, zero, s0
                  add          a3, s9, a1
                  bgeu         t2, s2, 251f
                  ori          a2, tp, 12
                  sltu         s7, s9, s3
                  auipc        s10, 506219
                  srli         t1, s6, 27
                  sltu         a7, a3, s11
249:              sub          s4, a1, a5
                  slli         t0, s1, 22
251:              and          s0, zero, a2
                  or           t1, a0, s3
253:              ori          s10, s11, -1196
                  slt          t0, ra, s1
                  sra          a5, a2, t1
                  bge          gp, a3, 274f
                  sltu         s1, s3, gp
                  addi         a3, t0, -380
                  srai         t3, a1, 31
                  sll          s8, tp, t5
                  xori         a7, t1, -595
                  bltu         t6, s7, 280f
                  bne          t0, s0, 280f
                  sll          s7, a4, a4
                  lui          s6, 536533
                  slti         s6, gp, 39
                  add          s1, a1, t6
                  sltiu        s0, s8, -834
                  andi         sp, t6, 1923
                  ori          s3, t5, 2004
                  bne          a3, t4, 275f
                  and          s0, a6, a4
                  addi         a6, s9, -1327
274:              ori          gp, s5, -681
275:              sltu         t3, a7, s3
                  slt          s3, s10, s1
                  lui          s11, 361136
                  nop
                  sll          zero, a0, t4
280:              bltu         t6, ra, 298f
                  nop
                  slti         a0, t0, -1853
                  add          a2, s3, s10
                  slti         t5, a3, 963
                  nop
                  sltiu        a1, s5, -748
                  add          t1, a7, s10
                  sltu         t3, ra, t5
                  srli         s7, tp, 12
                  bltu         t6, a6, 296f
                  srl          a0, a3, t5
                  xor          t3, s5, s10
                  slli         a5, t1, 27
                  andi         s5, sp, -234
                  srl          t3, gp, a3
296:              or           sp, s7, s8
                  xori         a1, a7, 642
298:              or           a3, t0, t3
                  beq          a1, t1, 305f
                  and          s3, tp, t0
                  xori         a2, t5, 1043
                  andi         sp, sp, -1906
                  and          sp, a7, a4
                  addi         s3, ra, 570
305:              slt          zero, s2, s6
                  srli         s0, s6, 21
                  bge          a2, t6, 327f
                  andi         t3, a5, 1485
                  beq          s7, s6, 316f
                  srli         s4, a2, 14
                  bgeu         s1, s7, 322f
                  sltiu        s2, s11, -159
                  lui          s3, 113905
                  sra          a5, t6, s7
                  sltu         s2, s9, t0
316:              sub          a6, s6, s11
                  bgeu         sp, a2, 335f
                  ori          s5, s9, 874
                  sltiu        a3, t0, -1600
                  nop
                  bgeu         t1, a2, 322f
322:              beq          s0, s3, 339f
                  slli         sp, t0, 15
                  sltu         a2, s3, t4
                  add          a2, ra, gp
                  srai         s6, s3, 3
327:              slli         s11, t5, 21
                  auipc        sp, 317450
                  bne          t6, tp, 339f
                  sltu         ra, s9, ra
                  slti         zero, s8, -1178
                  bgeu         gp, t5, 349f
                  slti         s10, a4, -268
                  ori          s11, s0, 9
335:              xori         t6, s8, -957
                  blt          a2, t6, 344f
                  xori         t4, a1, -510
                  sltu         t0, zero, t3
339:              sltu         zero, ra, t5
                  srai         s1, zero, 9
                  beq          ra, s11, 348f
                  beq          sp, a1, 355f
                  srl          s8, s10, s8
344:              nop
                  sll          a6, t5, a2
                  xori         zero, s2, -396
                  beq          a4, s6, 355f
348:              or           s2, s10, s11
349:              bne          s9, s3, 353f
                  lui          t3, 157738
                  add          t1, t0, s0
                  auipc        s7, 345564
353:              blt          a0, t6, 366f
                  sra          a2, s1, s1
355:              srl          s5, s4, s9
                  add          a2, t3, t1
                  sltiu        a1, a6, 1037
                  bgeu         s6, s4, 378f
                  srai         gp, a0, 30
                  bne          t4, s8, 369f
                  sltu         t5, s4, a5
                  sltiu        t0, s2, 531
                  xori         s5, t1, 1967
                  srai         a4, t2, 15
                  xori         t4, t6, 1244
366:              beq          s5, s3, 384f
                  slti         s8, s5, -1911
                  srli         a4, sp, 24
369:              bgeu         a4, t6, 378f
                  add          s3, s10, a4
                  srl          s5, s11, t2
                  slti         s6, gp, 142
                  auipc        ra, 383397
                  bgeu         s1, t4, 390f
                  sub          sp, s5, a4
                  sll          ra, sp, s11
                  auipc        s7, 964332
378:              srai         t4, t6, 29
                  bge          a6, a6, 382f
                  add          sp, sp, s10
                  slti         ra, t1, 1676
382:              beq          t1, s6, 385f
                  and          t6, s10, t6
384:              xor          a3, a0, a7
385:              and          gp, s1, s6
                  lui          s1, 774842
                  beq          s2, a2, 401f
                  slti         a4, s4, -1066
                  blt          a1, s1, 406f
390:              blt          s7, s5, 403f
                  slti         s4, a2, 1005
                  add          sp, zero, a5
                  xor          a5, t6, t0
                  lui          t4, 242452
                  bne          s0, a5, 404f
                  or           sp, ra, s2
                  bge          s11, s0, 409f
                  xor          a1, s5, s7
                  bgeu         a2, s9, 403f
                  and          ra, s2, s5
401:              addi         gp, zero, 208
                  srl          zero, t3, s11
403:              slt          t0, t4, t0
404:              nop
                  bgeu         s9, t6, 422f
406:              addi         t6, s10, -487
                  xor          a6, s6, t1
                  xori         s3, t2, 1446
409:              sltu         sp, s0, s2
                  bltu         t4, s0, 420f
                  sub          s11, gp, s10
                  sub          a5, a6, s7
                  sra          a5, a2, zero
                  sll          t4, gp, a7
                  beq          s10, s10, 423f
                  auipc        s0, 944620
                  bltu         s10, a1, 423f
                  lui          a4, 337510
                  auipc        t1, 164172
420:              slt          a2, a6, a3
                  auipc        s3, 82149
422:              sltu         a5, a2, s10
423:              sra          s2, t0, sp
                  bne          a5, s10, 442f
                  slt          t6, a7, a0
                  ori          s5, s7, 1969
                  srli         t5, a5, 16
                  sra          s4, t2, a1
                  srli         sp, ra, 22
                  andi         gp, s7, 1246
                  bltu         a0, ra, 444f
                  addi         s4, a1, -1473
                  slt          gp, t3, a2
                  slti         s10, a0, -1946
                  srai         s5, s8, 2
                  slti         t6, t3, -1750
                  bltu         a3, s8, 445f
                  blt          a4, t2, 441f
                  and          s7, s8, a4
                  bge          s5, sp, 458f
441:              xori         sp, t3, -1990
442:              sub          a2, a5, a4
                  lui          t6, 167695
444:              sltiu        s0, t0, -1309
445:              xor          t6, a6, s3
                  bge          s1, s2, 453f
                  sra          a4, s4, a5
                  srl          s2, t3, t5
                  slt          s3, s5, a6
                  sltiu        a0, a0, -699
                  sltu         t6, a0, s11
                  or           gp, s4, s7
453:              bne          t3, a2, 471f
                  and          a7, a2, s0
                  ori          t5, a3, 1570
                  ori          gp, a0, -286
                  slli         a2, t4, 31
458:              and          s0, zero, t0
                  andi         s10, t5, -1983
                  sub          t3, a1, gp
                  add          t1, s2, a1
                  beq          t4, s11, 475f
                  bne          s8, t2, 466f
                  sra          ra, zero, s3
                  blt          s4, t4, 485f
466:              xor          s7, tp, t3
                  bltu         a2, t1, 468f
468:              and          t3, s8, t0
                  bgeu         a1, s7, 489f
                  bgeu         tp, s9, 474f
471:              bltu         tp, t1, 477f
                  sltiu        gp, t6, 581
                  srl          s5, t5, a3
474:              add          s8, s9, s2
475:              xori         a1, s2, -1057
                  la           s5, region_1+1409 #start riscv_load_store_rand_instr_stream_8
                  lb           s6, -28(s5)
                  sltiu        a6, s0, 899
                  slli         s3, s11, 13
                  and          s6, a1, s0
                  sb           t4, -223(s5)
                  sltiu        t1, s4, 1269
                  sub          t0, ra, s9
                  srl          ra, s11, s8
                  lhu          t0, -69(s5)
                  sw           s2, 151(s5)
                  lh           a3, -87(s5)
                  lbu          t5, 165(s5)
                  lb           t5, -232(s5)
                  addi         a6, a6, -1859
                  lbu          a5, 30(s5)
                  add          t4, gp, t4
                  sb           a0, 88(s5)
                  addi         a3, t1, -1503
                  lbu          a0, -236(s5)
                  lbu          sp, 239(s5)
                  or           a3, s9, t2
                  slt          gp, s11, a1
                  sb           a5, -153(s5)
                  lb           s1, -143(s5)
                  lbu          t6, 218(s5)
                  lh           zero, 57(s5)
                  lh           zero, 91(s5)
                  sb           a1, -228(s5) #end riscv_load_store_rand_instr_stream_8
                  blt          ra, s0, 485f
477:              beq          a2, tp, 494f
                  srli         sp, a1, 15
                  beq          a0, s5, 496f
                  beq          s8, t2, 491f
                  slli         s2, a7, 28
                  bge          t2, gp, 491f
                  srl          a7, a3, a0
                  xori         a4, a7, -1136
485:              addi         sp, t2, 398
                  add          a4, zero, t6
                  slli         s11, t0, 30
                  nop
489:              blt          zero, a0, 501f
                  andi         s0, sp, 825
491:              sub          a1, t5, t2
                  bge          s1, a7, 501f
                  lui          s1, 124074
494:              slt          gp, t2, a1
                  xori         s7, tp, -324
496:              or           a5, ra, s1
                  add          gp, a2, a2
                  ori          t1, a5, 602
                  srai         s4, a4, 15
                  srai         s1, a0, 4
501:              slli         t4, sp, 5
                  bgeu         gp, gp, 515f
                  bge          t0, s7, 517f
                  sltu         s1, s10, t6
                  sra          s10, t4, s1
                  srai         a1, zero, 23
                  sltu         s6, s7, t6
                  srl          s4, s6, t6
                  add          t0, a2, tp
                  srl          a7, s9, s6
                  sll          s11, s9, t2
                  ori          t5, s7, 103
                  nop
                  add          t6, t2, a5
515:              srai         t0, ra, 31
                  srai         s7, a7, 18
517:              nop
                  add          s5, t3, t4
                  srli         t3, s9, 25
                  sra          a0, s6, t1
                  and          a0, t0, s8
                  andi         t5, zero, -738
                  xor          s5, t2, s11
                  bgeu         s6, t4, 531f
                  slli         s2, a5, 30
                  slti         sp, s8, 1999
                  blt          t5, s7, 543f
                  srai         s4, s6, 11
                  bne          sp, a1, 533f
                  sltiu        a1, tp, 1647
531:              sltu         a2, t5, a4
                  xor          s11, a7, zero
533:              addi         a2, gp, -1750
                  srli         a7, s9, 29
                  slt          s6, a6, s4
                  xori         t5, a2, -1911
                  blt          t1, ra, 550f
                  slt          a2, t4, s3
                  slti         a6, t6, -1323
                  sub          t1, s3, a5
                  add          s7, t3, gp
                  srli         s5, s5, 17
543:              slti         t6, t0, 1255
                  auipc        sp, 223727
                  xori         a6, t1, 426
                  sltu         s11, a7, a2
                  lui          a2, 504826
                  blt          t0, s8, 560f
                  or           zero, t1, s5
550:              or           t4, gp, ra
                  addi         s5, t4, -1847
                  slti         s1, s7, 824
                  bne          a4, t2, 562f
                  xori         s0, s5, 602
                  lui          a1, 514307
                  and          s1, s2, s7
                  ori          a3, s9, -768
                  sub          a4, s3, t2
                  xori         t1, s6, 832
560:              auipc        s0, 554376
                  sltiu        a0, tp, -225
562:              slli         s8, a7, 9
                  srli         a2, sp, 5
                  srl          zero, zero, t1
                  xor          t4, tp, s6
                  auipc        s5, 698195
                  add          s10, s10, tp
                  beq          s5, s11, 576f
                  srl          s6, s0, s9
                  ori          s11, s4, 712
                  ori          ra, t3, -1370
                  lui          a7, 518655
                  auipc        t0, 228416
                  sub          t6, t4, t0
                  lui          a1, 279629
576:              sll          sp, s10, t6
                  and          a1, s11, s0
                  srl          ra, t5, s9
                  srli         gp, s11, 22
                  blt          s10, a4, 588f
                  xor          s8, s7, t6
                  ori          t1, s3, -581
                  bge          s8, a1, 600f
                  addi         t0, s8, 1112
                  ori          s10, a2, -1842
                  or           s8, a4, a0
                  or           s10, s6, a7
588:              sltu         s4, t1, a0
                  sltu         t1, a2, a3
                  add          a3, a0, s6
                  nop
                  bne          t3, t2, 599f
                  sra          sp, s6, t4
                  bgeu         sp, s1, 607f
                  ori          s1, s7, 1577
                  bge          s8, s9, 616f
                  addi         a7, s11, -163
                  slti         a1, a3, -1345
599:              sub          a1, s6, a1
600:              or           zero, t0, zero
                  srl          s7, t2, s8
                  nop
                  andi         a4, a5, 1862
                  slt          s11, s11, s2
                  bgeu         a3, a6, 622f
                  srai         t1, ra, 6
607:              bne          a0, s3, 627f
                  sltu         t5, s7, s8
                  slli         s10, s1, 28
                  slli         s6, t6, 29
                  andi         s5, s3, 406
                  bltu         s2, a4, 619f
                  bgeu         a6, tp, 629f
                  srai         gp, t4, 25
                  addi         s11, a4, 1747
616:              xor          a5, t3, a5
                  xor          gp, a0, s10
                  bne          t0, t2, 619f
619:              bge          t5, s11, 622f
                  lui          s2, 596576
                  sll          a3, s6, zero
622:              auipc        sp, 525737
                  srli         a5, s4, 6
                  srli         s5, s2, 11
                  andi         t1, a7, -1112
                  sub          s8, ra, s3
627:              addi         s4, s10, -1949
                  srai         ra, s10, 27
629:              slli         ra, t5, 17
                  sltu         s7, a5, ra
                  addi         a2, s10, 477
                  and          t4, tp, ra
                  and          a1, s1, t1
                  ori          t5, s8, -1496
                  add          t0, s5, ra
                  sra          t0, a7, s10
                  addi         a3, s11, 1361
                  or           ra, a5, s1
                  blt          sp, tp, 645f
                  sub          a4, s1, s11
                  srl          t0, t2, t2
                  addi         s3, a3, -214
                  xori         t3, s1, 1371
                  nop
645:              lui          a5, 941025
                  sub          ra, gp, ra
                  srli         s4, s2, 27
                  blt          t4, a3, 651f
                  sltu         t4, a1, s9
                  sub          a7, a0, zero
651:              lui          zero, 610634
                  sltu         t3, gp, ra
                  beq          s6, a6, 671f
                  srl          sp, t4, s10
                  xor          a1, s3, s8
                  and          a2, t0, s0
                  sltiu        t6, a2, -297
                  sll          gp, s1, s3
                  blt          t5, s3, 672f
                  bge          t5, a2, 670f
                  addi         zero, a3, -789
                  bgeu         a2, s1, 671f
                  sra          a0, zero, a7
                  nop
                  or           t3, ra, s0
                  beq          s11, a4, 684f
                  add          s2, t3, a7
                  sub          sp, s8, s7
                  sub          t3, t3, t5
670:              xor          s10, t3, s9
671:              sub          s10, zero, s7
672:              bne          s1, tp, 681f
                  and          a0, a4, s4
                  bltu         a6, t6, 688f
                  srai         s0, a0, 11
                  xor          s3, s3, s0
                  sll          s5, a2, t3
                  slt          s2, s4, a2
                  sra          s10, s9, t5
                  blt          s0, a3, 698f
681:              ori          a3, a2, 716
                  sra          t0, s8, s5
                  beq          t5, a2, 687f
684:              bne          tp, t0, 695f
                  nop
                  xori         s6, a3, -1836
687:              nop
688:              auipc        sp, 489649
                  nop
                  xor          ra, s7, a4
                  bne          ra, t2, 697f
                  ori          s7, s11, 1652
                  slti         t6, t3, -375
                  bne          t4, s8, 711f
695:              auipc        a3, 128350
                  nop
697:              nop
698:              blt          t1, s7, 715f
                  sub          t3, t2, t0
                  sltu         sp, a6, a5
                  nop
                  auipc        a7, 925083
                  ori          ra, s6, 1499
                  or           a3, a2, s2
                  sub          s11, ra, t5
                  andi         a3, sp, 1423
                  xori         s4, a4, -1557
                  ori          s8, s6, -1915
                  blt          t3, t1, 712f
                  add          gp, s11, s11
711:              slt          a5, a4, s3
712:              xor          s7, a2, s3
                  slli         t4, a2, 2
                  bne          s0, a4, 717f
715:              ori          s8, ra, 608
                  bgeu         t5, a3, 722f
717:              slti         zero, a5, 570
                  ori          s0, t5, 1369
                  andi         a7, a4, 1329
                  bgeu         s0, s8, 726f
                  bge          t1, t3, 730f
722:              addi         ra, s3, -719
                  and          a4, t3, a2
                  srl          a7, t2, s0
                  auipc        s4, 755146
726:              bge          a6, s9, 733f
                  slt          ra, s1, s1
                  nop
                  and          zero, s2, a7
730:              sltu         a1, a6, s6
                  slti         a4, s0, -917
                  sub          t0, s11, s7
733:              addi         a2, t6, -1175
                  or           s0, t0, s6
                  or           t4, a5, t6
                  bgeu         s5, a5, 756f
                  ori          s6, a4, -16
                  or           s5, t3, a7
                  bge          a5, s2, 743f
                  or           sp, s11, s2
                  addi         sp, s8, 1566
                  slti         s11, t4, -581
743:              add          t0, t4, a3
                  nop
                  bgeu         a6, s1, 759f
                  ori          a4, s10, -1524
                  srli         s10, t1, 6
                  blt          s5, s0, 761f
                  bne          s2, s3, 766f
                  ori          t3, s8, -1220
                  beq          t2, t1, 758f
                  lui          s3, 669049
                  add          s5, s7, a7
                  slli         s4, a7, 10
                  sra          s2, s3, a7
756:              sub          a6, a2, a2
                  sltu         a1, t1, tp
758:              auipc        s6, 870617
759:              slli         s7, a7, 21
                  sub          sp, a1, s8
761:              xori         s8, t0, 382
                  slti         a1, a5, 521
                  auipc        t5, 535223
                  sltiu        gp, s10, 309
                  bne          s0, a6, 778f
766:              slti         s1, s2, 746
                  sll          s5, t1, s8
                  sltiu        s3, a3, -266
                  sltiu        t4, s0, -1177
                  sra          sp, s11, a5
                  or           t1, s5, ra
                  sll          s6, gp, s0
                  xori         s0, s6, 265
                  xor          zero, s9, s5
                  slli         s4, a7, 20
                  slli         t4, t5, 29
                  slli         s1, t2, 6
778:              srli         s1, tp, 23
                  or           s3, s4, a2
                  andi         s0, t2, 627
                  andi         a0, a5, 1142
                  srai         t1, s0, 0
                  sra          s7, sp, a3
                  ori          gp, a5, -1848
                  sltiu        s7, t5, 1013
                  sll          s1, s8, s9
                  srai         s6, s2, 10
                  ori          s7, t3, 309
                  bltu         tp, t5, 793f
                  ori          a3, t2, 1999
                  bgeu         s11, ra, 809f
                  beq          a4, s9, 812f
793:              bltu         sp, t3, 811f
                  sll          t4, a7, s0
                  sltiu        t4, s0, 517
                  addi         t1, s1, -325
                  sub          t3, a5, a1
                  or           a0, s11, a6
                  add          s3, s11, t6
                  and          s3, s1, tp
                  sltiu        zero, s1, -1771
                  nop
                  slli         s8, s10, 6
                  beq          s1, t3, 812f
                  sub          s10, s11, a0
                  and          s8, s11, s1
                  andi         ra, s3, 1948
                  bgeu         s8, s10, 825f
809:              sub          a7, ra, a6
                  andi         a6, t6, -95
811:              xori         a5, s4, 320
812:              slt          gp, sp, t5
                  beq          t4, a7, 822f
                  bltu         a4, s4, 824f
                  sltu         s7, s7, sp
                  slli         a7, s1, 13
                  bgeu         s7, zero, 825f
                  srli         a0, s10, 28
                  sub          s4, ra, t3
                  slt          s6, t0, a3
                  nop
822:              sll          a5, t2, t2
                  sltu         s1, t5, t2
824:              xori         t5, s9, -602
825:              srl          a3, a5, a4
                  lui          s3, 784546
                  and          a0, a5, t2
                  nop
                  andi         a4, tp, -84
                  lui          gp, 261310
                  slt          a1, ra, a3
                  beq          t3, s8, 844f
                  bne          s5, t1, 849f
                  srl          s11, s9, s0
                  bge          t2, t6, 853f
                  srai         s3, a0, 23
                  bge          t6, zero, 838f
838:              addi         a5, a6, -1775
                  sltiu        ra, gp, -1028
                  beq          a2, a0, 851f
                  bgeu         s2, s2, 854f
                  sltu         sp, s4, a3
                  ori          t4, gp, -1811
844:              xori         ra, tp, -1518
                  srl          s10, t1, s3
                  slti         s7, s9, -308
                  xori         t1, a0, 1540
                  bne          a6, a3, 857f
849:              addi         a3, a3, -1822
                  slti         s6, t1, 90
851:              blt          t0, s6, 871f
                  addi         zero, t0, 1090
853:              bne          t0, a7, 865f
854:              srli         a0, a7, 25
                  sll          s2, s0, s1
                  srai         s4, s3, 12
857:              sra          gp, ra, gp
                  andi         s5, a2, 284
                  auipc        a6, 738409
                  sll          zero, s4, t3
                  ori          a6, s3, -1079
                  nop
                  and          a5, t3, a7
                  ori          a5, a4, 1970
865:              sltu         s4, s5, s9
                  slli         t6, t0, 17
                  auipc        a6, 360191
                  srl          a3, tp, t2
                  auipc        zero, 30759
                  nop
871:              andi         s0, s11, -355
                  andi         gp, a6, -1452
                  sra          s1, s8, s8
                  bne          s5, t4, 878f
                  srai         a0, s0, 12
                  blt          s1, a3, 890f
                  andi         s1, gp, -1458
878:              sll          ra, t6, a1
                  beq          s10, s2, 892f
                  sra          a5, ra, s6
                  sltu         sp, s6, t3
                  sub          a5, ra, t6
                  andi         t1, a6, -778
                  slli         ra, t0, 23
                  bltu         s9, sp, 898f
                  srl          s3, t1, a4
                  nop
                  bltu         t5, a3, 895f
                  ori          s6, s0, 329
890:              add          t0, s4, a7
                  nop
892:              srli         t0, s2, 12
                  bne          t1, t1, 901f
                  slt          s3, t3, ra
895:              andi         s6, a2, -1807
                  srli         s0, a7, 11
                  or           sp, a6, s11
898:              beq          a4, s0, 918f
                  bgeu         s6, s8, 908f
                  sll          s3, a2, t6
901:              lui          ra, 488617
                  blt          s2, t4, 909f
                  blt          s11, t5, 913f
                  slt          a4, a2, s10
                  andi         t6, t5, 91
                  bgeu         t5, s7, 910f
                  beq          s1, zero, 920f
908:              auipc        s11, 892499
909:              sub          t3, sp, s6
910:              sltiu        gp, gp, -127
                  slli         t3, gp, 13
                  blt          a5, s1, 918f
913:              srli         s0, a2, 15
                  auipc        s3, 852089
                  beq          a4, s1, 923f
                  or           s4, t5, a7
                  slti         t4, t3, 1683
918:              and          s6, a3, s9
                  bge          a4, a2, 936f
920:              ori          s10, s5, -115
                  sltiu        zero, t5, 1056
                  beq          s2, t2, 928f
923:              bge          zero, s10, 939f
                  bne          s5, t2, 942f
                  beq          t3, a4, 928f
                  and          gp, t5, t3
                  addi         a4, s4, 872
928:              nop
                  add          a6, tp, s1
                  slti         s4, t4, -1671
                  add          s0, a6, a4
                  sll          s1, gp, s2
                  xor          a4, s8, a5
                  lui          s5, 2509
                  bltu         s4, t6, 952f
936:              addi         s0, s10, -478
                  add          a1, a1, tp
                  sra          t6, s8, a1
939:              sub          s1, s2, s11
                  bne          zero, t1, 949f
                  slti         s7, a2, -1345
942:              xori         s4, s3, -2025
                  lui          a0, 214223
                  add          s8, s11, s3
                  add          s0, s2, s2
                  beq          t5, a0, 947f
947:              addi         s0, s5, 686
                  and          zero, s7, t4
949:              add          s4, t5, t3
                  sll          t6, s5, a5
                  and          a1, a4, a3
952:              slti         a1, s7, 1277
                  sltiu        t6, t3, 1620
                  srl          t0, gp, s0
                  addi         s10, t0, 23
                  and          a2, t1, s7
                  lui          s8, 88698
                  slti         t0, s4, 587
                  slti         a6, t5, -1935
                  addi         a7, s2, -298
                  addi         t5, a0, -409
                  sll          a0, tp, sp
                  xor          a0, ra, s11
                  lui          s10, 540870
                  ori          t1, a7, -664
                  bne          s7, ra, 984f
                  bgeu         s3, t0, 976f
                  srai         t4, tp, 31
                  and          s5, s4, t6
                  sltiu        sp, t6, 2004
                  ori          gp, sp, -677
                  sltu         s8, s11, a0
                  and          t0, s2, s10
                  sra          a7, a3, s1
                  slti         t1, s9, 724
976:              bgeu         t5, a2, 993f
                  slli         s5, a2, 17
                  auipc        a0, 601489
                  bltu         s1, a1, 990f
                  slli         t5, t2, 4
                  lui          s0, 230942
                  bltu         t1, a2, 985f
                  xori         s10, gp, -1970
984:              and          s1, s10, s5
985:              add          s2, t2, s10
                  and          t5, s0, a2
                  or           s4, zero, a1
                  xori         t4, s10, -1692
                  bgeu         t3, a0, 1007f
990:              addi         t5, s10, 280
                  blt          t3, a6, 1002f
                  or           zero, t3, s0
993:              andi         t6, zero, 36
                  slli         s2, a7, 2
                  slti         a7, gp, 977
                  blt          a6, s4, 1004f
                  andi         t3, a1, 904
                  srai         s2, a1, 4
                  blt          s6, t3, 1002f
                  bgeu         a4, t4, 1013f
                  sll          s1, zero, t1
1002:             sub          zero, s11, a1
                  slli         a5, s11, 8
1004:             sll          sp, t1, a7
                  srli         s8, t5, 27
                  srai         s3, a1, 27
1007:             ori          s5, t5, 1758
                  sll          s4, zero, a1
                  srli         s0, ra, 15
                  auipc        s11, 826851
                  lui          s8, 154581
                  lui          t0, 560336
1013:             bgeu         s5, s7, 1014f
1014:             andi         a6, t4, 269
                  xori         s5, tp, -920
                  lui          s6, 314659
                  sltiu        t0, s11, -1085
                  srai         s2, s2, 23
                  sra          a2, s8, t0
                  srai         sp, s6, 3
                  xori         sp, tp, -1725
                  and          s11, s8, t0
                  lui          s3, 396763
                  and          s6, a6, t3
                  bgeu         t1, gp, 1043f
                  bltu         a5, a7, 1032f
                  auipc        s0, 384257
                  sub          s4, a1, s6
                  auipc        zero, 464372
                  xori         sp, s10, 1932
                  bltu         a3, gp, 1040f
1032:             and          t1, s11, a0
                  auipc        a4, 535340
                  addi         a6, a0, -60
                  slti         a1, a4, -1365
                  srl          a2, a2, t6
                  auipc        a4, 525086
                  bge          t4, sp, 1047f
                  andi         a1, sp, 1723
1040:             srli         t1, gp, 28
                  or           gp, s9, a1
                  srli         s0, t6, 28
1043:             blt          t6, s8, 1055f
                  sltu         s10, s0, a6
                  xori         s11, tp, 42
                  and          s2, s0, t4
1047:             ori          a4, t5, -411
                  srl          a1, s1, t2
                  beq          t2, t5, 1066f
                  slli         sp, t0, 1
                  blt          sp, s10, 1071f
                  slti         a3, t4, -901
                  srli         s2, s0, 6
                  bne          s4, a7, 1067f
1055:             sub          gp, a7, t3
                  and          a4, a1, t0
                  xori         t4, s0, -1671
                  sra          a3, t0, a6
                  bltu         a5, s6, 1076f
                  slt          sp, t2, a4
                  srl          t0, s5, s1
                  srai         s1, s6, 1
                  srl          a3, t0, a0
                  lui          s8, 416460
                  ori          a6, tp, -969
1066:             ori          a4, s1, 1593
1067:             nop
                  slli         s8, ra, 17
                  or           t1, a5, s7
                  sltiu        a3, zero, 207
1071:             sra          a7, t0, s7
                  xori         s6, s5, -963
                  xor          t3, s2, t4
                  blt          s3, t3, 1088f
                  sltiu        s8, a2, 1180
1076:             bge          gp, a0, 1083f
                  xori         t6, s11, 1299
                  or           s5, s8, a4
                  and          a5, a3, t3
                  add          s2, s3, s3
                  bne          a3, s11, 1098f
                  sltiu        s7, t1, -1100
1083:             or           t5, t2, a7
                  bge          ra, a6, 1091f
                  and          s10, s0, t2
                  sltu         s3, tp, sp
                  addi         s4, t3, -264
1088:             and          s2, a7, t1
                  auipc        t4, 628433
                  and          s1, gp, a5
1091:             bltu         s4, s5, 1104f
                  srai         s7, tp, 5
                  bgeu         s1, s1, 1113f
                  add          t6, gp, a1
                  sltiu        s0, sp, -1638
                  slli         s5, a5, 13
                  sltu         sp, t1, s7
1098:             srli         s0, s7, 29
                  addi         t5, tp, -845
                  xor          a7, a4, t5
                  auipc        t3, 106707
                  srai         s1, s6, 18
                  bgeu         t2, a5, 1106f
1104:             sltu         s8, zero, t1
                  srl          a1, sp, s5
1106:             srai         a6, s11, 27
                  sltu         a7, t4, t0
                  lui          t5, 635587
                  slt          a3, t6, sp
                  blt          s4, s4, 1114f
                  nop
                  srai         gp, s4, 12
1113:             srai         a1, s9, 5
1114:             add          t5, s7, s4
                  bne          a7, t2, 1133f
                  addi         gp, a0, -1612
                  ori          a1, t6, 671
                  slli         s10, a1, 22
                  sltu         gp, s11, t6
                  xori         ra, a6, -114
                  lui          a2, 559595
                  bge          tp, zero, 1128f
                  bge          a2, a5, 1141f
                  and          t6, a2, a3
                  sub          a3, t0, t1
                  addi         s1, tp, -1874
                  sra          s8, t3, a4
1128:             beq          a7, s5, 1136f
                  sll          t6, tp, s3
                  add          s7, t5, a1
                  auipc        t6, 973798
                  srl          s1, s2, t6
1133:             addi         s0, t4, -1890
                  slli         t5, t2, 16
                  bne          a3, t3, 1144f
1136:             sra          a2, a2, t0
                  srli         a3, s11, 19
                  bge          a7, a4, 1148f
                  ori          t3, zero, -1872
                  sll          gp, sp, s6
1141:             or           t1, t1, s2
                  auipc        zero, 457104
                  or           s3, tp, t4
1144:             bge          a5, s7, 1160f
                  or           s11, s5, s8
                  beq          t1, t5, 1150f
                  srai         s7, s10, 16
1148:             srl          s11, s10, s2
                  add          a5, s1, sp
1150:             or           t5, a2, a2
                  srai         t6, a7, 25
                  sra          s7, t3, s10
                  add          a6, t2, t4
                  andi         a6, s9, -1122
                  slli         a1, s9, 8
                  xor          s1, s7, a4
                  addi         s10, s5, -894
                  sub          gp, sp, t4
                  sub          t5, s11, zero
1160:             addi         s0, a0, 1070
                  srai         a4, t1, 29
                  lui          a2, 913554
                  lui          t0, 126556
                  sll          s5, s4, s3
                  srli         a7, s9, 5
                  slli         s8, t2, 28
                  xor          zero, t0, s6
                  xori         t3, s10, 863
                  addi         t1, t4, 1220
                  slti         s8, t4, -1095
                  sub          s1, s0, s2
                  add          a5, s8, s3
                  slli         a2, s1, 12
                  bge          t2, a6, 1181f
                  srl          s8, s1, s8
                  sra          t0, gp, t3
                  srli         s2, a6, 13
                  xori         s4, a0, 833
                  lui          a0, 640606
                  xor          s3, s7, a1
1181:             sub          t5, zero, a5
                  srl          s0, s2, s1
                  lui          s11, 59618
                  srli         sp, a6, 4
                  addi         t1, a1, 867
                  sltu         s0, s9, s9
                  sra          gp, a0, t6
                  srl          s1, a0, a4
                  sra          s5, t1, a2
                  slti         a3, s6, -194
                  sltiu        t5, a1, 408
                  nop
                  srl          gp, s0, t5
                  and          s6, s4, s2
                  andi         t0, s5, 1982
                  lui          a2, 700769
                  bge          s1, s4, 1214f
                  nop
                  ori          s8, gp, -1716
                  bge          t1, t0, 1210f
                  ori          t1, a7, -1312
                  andi         s0, a2, -845
                  nop
                  bge          s0, a0, 1208f
                  auipc        ra, 389549
                  or           s8, tp, a0
                  bltu         s7, a0, 1216f
1208:             beq          tp, t1, 1212f
                  slli         a4, s3, 1
1210:             andi         t4, s5, -898
                  sub          a5, a4, s1
1212:             ori          s3, s7, 192
                  bne          t1, ra, 1226f
1214:             xor          gp, a1, zero
                  beq          s11, s6, 1232f
1216:             srl          ra, s2, s9
                  and          a0, s11, gp
                  bne          gp, t4, 1238f
                  andi         t4, a5, -286
                  bne          a1, a5, 1229f
                  or           s3, tp, t3
                  addi         s8, t2, 1869
                  srl          t5, t6, t1
                  or           t3, t5, a6
                  sltu         a6, t3, s11
1226:             blt          a4, s3, 1234f
                  slli         s3, s4, 28
                  xor          a7, s5, s7
1229:             sub          ra, s7, s0
                  slt          s4, s6, t4
                  srl          a4, t4, a6
1232:             lui          s3, 487066
                  sltu         s3, ra, s11
1234:             bge          ra, t4, 1235f
1235:             or           t4, s0, a6
                  bge          a7, a6, 1239f
                  sub          a6, s8, zero
1238:             bgeu         a7, s8, 1252f
1239:             sub          gp, a6, s11
                  andi         a0, a2, -207
                  beq          t3, a4, 1259f
                  auipc        t0, 534240
                  bge          a5, a4, 1261f
                  lui          s7, 118864
                  bltu         t1, a1, 1251f
                  ori          s11, a2, -1635
                  bltu         ra, t3, 1263f
                  andi         t3, s5, 1850
                  bge          a4, a1, 1260f
                  srli         s0, t0, 21
1251:             sll          a3, s8, s11
1252:             bltu         ra, a0, 1265f
                  sra          a4, s6, t5
                  srl          s3, t3, t3
                  bltu         sp, s5, 1262f
                  xor          t5, a2, s11
                  slti         s8, s8, -724
                  lui          s7, 685055
1259:             nop
1260:             srl          s7, s11, s0
1261:             addi         a5, s3, -431
1262:             and          a1, s1, a7
1263:             or           t4, t1, s0
                  sltu         a3, s2, s11
1265:             sltu         zero, t1, sp
                  bne          t6, a2, 1274f
                  auipc        s7, 627156
                  andi         s4, t4, 961
                  slt          zero, s5, a5
                  bne          t5, t2, 1288f
                  bltu         t2, t1, 1280f
                  andi         a1, s5, 1507
                  slli         a5, t3, 21
1274:             slt          s2, zero, s6
                  sltiu        a2, sp, 407
                  or           zero, s8, t2
                  srli         sp, s7, 9
                  add          sp, a7, s11
                  slli         s1, t2, 12
1280:             xor          s6, tp, a5
                  beq          a1, s11, 1298f
                  slt          s5, t0, t2
                  sll          a3, a5, a0
                  add          t0, a7, tp
                  srl          sp, s11, s6
                  sll          s10, s3, a6
                  xori         t6, a6, 562
1288:             auipc        a0, 655985
                  auipc        a0, 467438
                  add          a0, s4, a3
                  add          gp, s3, t0
                  nop
                  beq          a7, s3, 1306f
                  bge          a5, s9, 1306f
                  and          a1, a6, sp
                  sltiu        t6, s6, 1875
                  andi         t1, s2, 597
1298:             xori         a5, a3, -1771
                  add          s11, gp, a5
                  sll          s7, s6, s11
                  add          a6, s2, sp
                  srli         s3, s8, 28
                  addi         gp, t2, -1184
                  ori          s5, t0, -141
                  or           a6, a5, a1
1306:             bltu         a1, s7, 1312f
                  lui          s7, 187666
                  or           s6, a1, zero
                  or           s10, s1, a6
                  sltiu        s5, a4, -949
                  sltiu        gp, s9, -1919
1312:             srai         a7, s1, 2
                  srai         zero, s9, 20
                  srl          s0, s10, a1
                  blt          ra, t5, 1318f
                  nop
                  srl          sp, zero, gp
1318:             bgeu         a5, s3, 1338f
                  xor          sp, a6, t6
                  bge          t1, s3, 1324f
                  beq          a5, s9, 1339f
                  ori          t3, t2, 635
                  blt          s11, a2, 1340f
1324:             sub          a0, s5, s6
                  slt          t1, t4, t1
                  or           gp, a3, t0
                  auipc        s11, 513674
                  sll          s2, a5, s4
                  add          s0, s5, t3
                  or           gp, a1, s8
                  xor          a3, t1, t5
                  or           s4, sp, a1
                  or           t3, a0, t3
                  xor          a3, a6, s2
                  or           t3, t0, s1
                  slti         t1, a6, -1493
                  bne          t3, a0, 1355f
1338:             auipc        t0, 204705
1339:             blt          a2, t1, 1355f
1340:             add          s1, s10, ra
                  sltu         a1, s8, s9
                  add          sp, a2, t5
                  bge          s1, s0, 1349f
                  and          zero, s7, s11
                  sll          s2, t4, zero
                  xori         s3, t2, 299
                  sltu         s11, gp, a0
                  bge          t0, tp, 1365f
1349:             xori         a4, s9, -948
                  and          t1, s4, t1
                  andi         sp, s3, 1943
                  and          a2, t6, a3
                  bltu         a2, a7, 1362f
                  addi         t5, s0, 1856
1355:             ori          a5, s11, -1652
                  srli         a6, s7, 28
                  xor          t5, t4, a6
                  xori         a1, a1, -1830
                  or           t3, t1, a6
                  nop
                  srai         sp, tp, 31
1362:             nop
                  sltiu        a6, a4, -95
                  beq          a3, s5, 1377f
1365:             xor          t0, s3, zero
                  sra          s0, gp, s7
                  bgeu         a2, s11, 1370f
                  auipc        s11, 526026
                  beq          s1, s7, 1387f
1370:             srli         t3, s0, 9
                  nop
                  or           t1, t6, a3
                  bgeu         a7, a7, 1374f
1374:             srai         gp, s10, 3
                  srai         t4, s2, 3
                  sra          s11, t1, s5
1377:             add          a1, a6, t3
                  sll          sp, sp, t5
                  slti         t0, s1, 1751
                  bltu         a7, t0, 1384f
                  sub          s1, a7, a7
                  slli         s3, t2, 13
                  bne          a3, a2, 1396f
1384:             xori         s2, a5, -330
                  slli         a3, t0, 21
                  xor          s11, a4, s10
1387:             slti         sp, s7, 839
                  srai         t4, a5, 11
                  bne          t0, a5, 1397f
                  sub          sp, s11, sp
                  lui          a1, 707257
                  bltu         t2, t4, 1400f
                  xor          t3, s8, s9
                  blt          a0, a3, 1405f
                  sra          s0, s4, t0
1396:             bne          t2, gp, 1399f
1397:             add          t6, tp, a7
                  sra          a6, sp, t6
1399:             ori          a0, zero, 1660
1400:             blt          a3, a6, 1409f
                  bne          tp, sp, 1413f
                  la           s6, region_1+823 #start riscv_load_store_rand_instr_stream_9
                  sltu         s1, t4, s4
                  lbu          s11, 16(s6)
                  or           s8, a7, gp
                  lbu          a1, 11(s6)
                  sra          t5, t1, a3
                  sub          s5, s10, a1
                  sb           a7, 2(s6)
                  lhu          gp, -3(s6)
                  slti         s2, s8, 524
                  lbu          s8, 13(s6)
                  lbu          t3, 14(s6)
                  sb           tp, 14(s6)
                  slt          a6, a3, a4
                  lb           t3, -1(s6)
                  sll          a4, a5, tp
                  sw           a1, 9(s6)
                  sb           s4, -12(s6)
                  sh           s1, -7(s6)
                  lh           sp, -1(s6)
                  slli         s8, s5, 21
                  xor          s7, t2, a0
                  sra          t0, a5, t1
                  lw           t0, -15(s6)
                  sll          zero, s4, a6
                  sh           a0, 15(s6)
                  andi         a0, t0, 1252
                  lh           s10, -9(s6)
                  addi         zero, t5, -1753
                  lui          s1, 182888
                  lw           t3, -15(s6)
                  lui          t3, 874403
                  ori          s11, s1, -1836
                  lw           s1, 9(s6) #end riscv_load_store_rand_instr_stream_9
                  slti         ra, s9, 1602
                  ori          zero, s9, 1488
                  bltu         a3, sp, 1424f
1405:             blt          gp, s3, 1411f
                  slti         s10, a7, 640
                  nop
                  lui          s1, 351435
1409:             or           t4, s1, a4
                  bltu         sp, a2, 1423f
1411:             sub          a7, s2, ra
                  blt          s0, s4, 1432f
1413:             andi         s7, s4, 483
                  nop
                  slli         a5, s0, 12
                  and          s11, s9, a4
                  sub          s6, a0, t3
                  sltiu        a2, s5, 1928
                  bge          a6, s7, 1429f
                  slti         a5, s11, 538
                  auipc        t0, 397321
                  andi         t4, t0, 1510
1423:             xor          zero, s9, tp
1424:             addi         t0, s8, -508
                  xori         ra, s2, 2003
                  ori          s1, a2, -1370
                  slt          a6, a6, ra
                  slt          s4, ra, sp
1429:             bne          s3, s3, 1438f
                  or           a3, s3, sp
                  add          a2, tp, ra
1432:             sra          s3, s0, s11
                  blt          s3, a4, 1447f
                  xori         s4, s5, 1266
                  add          t3, s0, sp
                  slt          s0, a6, s7
                  la           s10, region_0+1863 #start riscv_load_store_rand_instr_stream_16
                  addi         t4, s2, 1634
                  andi         t0, t3, 706
                  nop
                  xori         t4, t0, 1785
                  sra          s6, a7, s7
                  add          s4, a1, s8
                  add          a7, sp, s2
                  xor          a6, s3, s1
                  xor          t4, tp, t4
                  lh           a1, -37(s10)
                  srli         s0, a4, 10
                  lb           t3, 59(s10)
                  or           a3, t2, t4
                  lbu          t1, 54(s10)
                  sub          a6, s6, t5
                  sltu         a7, a6, a4
                  sra          a3, a7, a6
                  lb           s2, 60(s10)
                  lbu          t6, -53(s10)
                  sb           a0, 18(s10)
                  slli         a1, a3, 25
                  lhu          s7, -31(s10)
                  sltiu        s0, s9, -1025
                  lb           t1, -16(s10)
                  lbu          t6, 50(s10)
                  slt          s0, s11, ra
                  srai         s1, s5, 16
                  sll          a4, a0, a0
                  sll          t1, s5, a4
                  lb           s1, -45(s10)
                  lb           s8, 10(s10)
                  sltu         s3, t4, t0
                  slli         s1, t1, 8
                  lb           t3, -32(s10)
                  lhu          s8, -47(s10)
                  lui          ra, 633256
                  auipc        s6, 201877
                  lui          a5, 382450
                  sll          a5, a5, sp
                  srli         a5, s1, 28
                  srai         s5, a1, 1
                  xor          s2, s3, s4
                  lui          s1, 393591
                  sb           a3, -50(s10) #end riscv_load_store_rand_instr_stream_16
                  la           s4, region_0+1592 #start riscv_load_store_rand_instr_stream_12
                  lhu          a6, -214(s4)
                  slt          s6, t5, s7
                  nop
                  lw           s2, 180(s4)
                  sh           a7, 242(s4)
                  sh           t5, 106(s4)
                  sltu         s0, s11, a4
                  lbu          s0, -173(s4)
                  sb           t1, -67(s4)
                  slli         sp, gp, 17
                  addi         a6, s5, 864
                  xori         s5, a3, -184
                  sh           s3, -22(s4)
                  sltiu        t5, s6, -1796
                  sh           t1, 36(s4)
                  addi         t5, t5, -322
                  sh           gp, 44(s4)
                  sub          a6, s2, t1
                  srli         s1, s6, 12
                  slli         a0, a0, 17
                  slt          s11, s7, a2
                  lhu          s1, 98(s4)
                  add          s7, a3, s11
                  srli         s2, a0, 26
                  lb           s8, 149(s4)
                  lbu          t3, -109(s4)
                  lh           zero, 180(s4)
                  ori          t3, s8, 1502
                  slt          a7, s9, ra
                  lbu          a3, -191(s4)
                  auipc        ra, 417351
                  sh           a7, 10(s4)
                  add          t3, s8, s1
                  nop
                  sb           a2, 163(s4)
                  ori          ra, a5, -550
                  sb           t0, -51(s4)
                  and          s3, t5, s1
                  slli         s2, s2, 28
                  lh           s3, 28(s4)
                  sb           s4, 217(s4)
                  xori         s0, s10, 1546
                  lh           gp, 208(s4)
                  sh           a4, 124(s4) #end riscv_load_store_rand_instr_stream_12
                  beq          ra, t3, 1444f
1438:             addi         t6, a3, -993
                  slti         s1, s5, -1394
                  and          sp, s2, a2
                  and          sp, ra, s6
                  slli         a0, s6, 20
                  beq          t3, s2, 1450f
1444:             blt          s4, ra, 1461f
                  beq          a7, s1, 1454f
                  beq          s3, s10, 1456f
1447:             bgeu         t2, t3, 1455f
                  bgeu         s4, s9, 1459f
                  bge          a2, a1, 1469f
1450:             bltu         a6, s8, 1458f
                  ori          a5, s11, -148
                  nop
                  srl          s8, a3, zero
1454:             sltu         a0, a6, s7
1455:             sll          s10, s4, a1
1456:             andi         s1, t4, -1472
                  nop
1458:             auipc        s5, 953685
1459:             xor          a5, s6, a6
                  bne          s3, a4, 1478f
1461:             srli         a1, s2, 5
                  slt          zero, s3, a7
                  srli         s0, s4, 15
                  slti         a2, s9, 2008
                  sltiu        a4, a6, -237
                  srai         sp, t2, 19
                  bgeu         sp, a1, 1471f
                  addi         zero, s9, -410
1469:             bge          t3, s8, 1482f
                  sltu         zero, s5, s9
1471:             xor          a1, a3, a4
                  slt          ra, a2, gp
                  or           s5, t1, s10
                  srl          s2, a0, s6
                  slti         t4, t3, 1494
                  blt          s11, s4, 1496f
                  bgeu         s1, s6, 1481f
1478:             xor          s6, a3, t3
                  add          a5, tp, t2
                  auipc        s7, 439868
1481:             slli         zero, s1, 17
1482:             ori          s1, a0, -551
                  slti         a4, t2, -377
                  ori          gp, s0, 1962
                  nop
                  sub          t0, a4, a2
                  slt          t4, s6, t2
                  andi         zero, s5, -1839
                  andi         s7, s5, 1121
                  sltiu        s0, s6, -299
                  bgeu         tp, gp, 1498f
                  and          s2, s1, s3
                  xori         s4, a6, 706
                  bge          s8, s0, 1497f
                  lui          a4, 508705
1496:             srl          s11, s0, s8
1497:             or           t3, a3, a4
1498:             add          ra, s9, t6
                  add          a7, s7, s9
                  slt          t6, ra, s8
                  nop
                  xori         a3, ra, -1381
                  and          s3, t5, s0
                  bge          t3, s3, 1517f
                  sltiu        s3, t4, 758
                  bne          gp, tp, 1518f
                  srai         zero, a7, 23
                  sub          s0, a2, a4
                  sra          a1, tp, t3
                  nop
                  add          s0, s10, a0
                  ori          a5, a5, -1030
                  bne          s0, s1, 1514f
1514:             and          t4, a1, s7
                  xori         a3, a2, -161
                  bge          t3, s7, 1533f
1517:             nop
1518:             xori         a7, sp, 179
                  beq          zero, a4, 1533f
                  sltiu        s6, s1, 325
                  lui          sp, 963350
                  xori         a7, s1, 1557
                  addi         a6, gp, -248
                  srai         s1, s2, 21
                  xori         sp, s2, 1112
                  and          a1, s9, sp
                  bne          t6, t1, 1533f
                  srai         t4, s3, 13
                  xori         s5, a3, -456
                  auipc        t1, 961974
                  bne          tp, s7, 1547f
                  bgeu         a1, s5, 1550f
1533:             bgeu         s6, t3, 1542f
                  slt          zero, a1, s4
                  lui          t1, 97961
                  bltu         a6, s7, 1542f
                  sltiu        s6, a0, -1253
                  auipc        s2, 519685
                  sub          s0, t2, a4
                  bne          t4, sp, 1553f
                  srl          s10, a0, gp
1542:             srl          s0, ra, t6
                  ori          t3, ra, 1353
                  sll          s1, t1, s10
                  lui          a0, 244469
                  add          a4, zero, t6
1547:             auipc        s6, 822024
                  addi         a6, a1, 316
                  addi         s10, t1, -629
1550:             nop
                  bgeu         zero, a4, 1560f
                  slti         t6, sp, -1665
1553:             and          s2, a3, s1
                  srli         s5, a6, 18
                  addi         s4, t2, -1255
                  andi         s6, s5, 606
                  bgeu         tp, a7, 1575f
                  srl          sp, gp, gp
                  add          a6, a7, t4
1560:             lui          t3, 347558
                  ori          t6, a6, -637
                  nop
                  or           a1, t0, s8
                  bne          t3, t0, 1567f
                  bne          ra, s3, 1582f
                  bgeu         a4, zero, 1573f
1567:             slli         a5, s1, 11
                  beq          s0, t5, 1585f
                  slli         zero, t2, 22
                  slli         t3, s2, 24
                  srl          t0, s5, s8
                  auipc        t1, 1018687
1573:             sub          t6, s1, a4
                  sub          ra, s2, t5
1575:             andi         a7, ra, 279
                  srai         s2, ra, 26
                  slt          a4, t1, a2
                  slli         a5, a1, 4
                  bgeu         a3, sp, 1582f
                  ori          a3, s2, -1923
                  bltu         a5, s10, 1599f
1582:             srl          t5, s8, s1
                  add          s0, t2, a3
                  bne          a4, s10, 1597f
1585:             bgeu         a4, s5, 1594f
                  sra          s4, a2, s11
                  bltu         tp, t3, 1604f
                  xor          s0, s3, s9
                  auipc        a5, 307336
                  lui          s8, 732077
                  xori         s5, s4, 37
                  sltu         s1, t4, t2
                  srl          s11, a5, s10
1594:             bne          t1, s1, 1602f
                  blt          t4, s5, 1599f
                  andi         s8, t5, -282
1597:             srl          s11, s1, s11
                  ori          a2, a7, 1214
1599:             srai         s2, t2, 13
                  bne          ra, zero, 1601f
1601:             and          s0, a0, gp
1602:             beq          t1, s1, 1611f
                  sll          t5, tp, sp
1604:             or           t4, t2, a7
                  bltu         t3, s11, 1622f
                  bltu         t5, t6, 1622f
                  auipc        a1, 257653
                  lui          s5, 770200
                  sub          t5, s2, a3
                  or           a6, s5, s10
1611:             lui          s2, 928997
                  srl          s11, s7, t0
                  sub          t0, s11, t3
                  srai         a0, t2, 8
                  xor          s8, t3, a3
                  blt          s1, t3, 1629f
                  andi         t4, a4, -871
                  or           s5, s4, a0
                  sub          zero, s4, a6
                  sltiu        s10, s6, 732
                  slt          ra, a4, a0
1622:             xori         s1, s8, -1826
                  slti         s4, s8, 2021
                  srli         a0, s0, 16
                  andi         s4, s7, 713
                  sll          s8, a2, s6
                  xori         s10, sp, 626
                  srl          s7, t4, tp
1629:             bltu         s3, s4, 1639f
                  sltiu        gp, s7, -1976
                  srl          a6, s0, t1
                  bgeu         ra, s0, 1639f
                  lui          a5, 741228
                  addi         s8, s0, 1097
                  blt          a7, s5, 1638f
                  or           a3, a6, a6
                  beq          s8, a0, 1643f
1638:             bge          s10, a3, 1647f
1639:             blt          tp, s6, 1656f
                  beq          a0, s5, 1658f
                  sll          s10, s7, s6
                  sub          a0, s10, gp
1643:             xori         s8, s2, -1368
                  xori         gp, zero, -1216
                  slli         a1, t0, 10
                  srl          a1, t4, ra
1647:             or           s0, s0, t3
                  xori         s6, a2, 1024
                  sll          sp, a1, zero
                  slli         s0, s2, 24
                  bgeu         s7, s11, 1671f
                  bge          s0, s2, 1672f
                  or           s7, s9, s5
                  bne          t0, t6, 1660f
                  beq          s7, t4, 1659f
1656:             xori         s8, a1, 373
                  srli         sp, s7, 21
1658:             srl          ra, t2, s4
1659:             srl          a4, s7, s2
1660:             srli         a5, t0, 14
                  slti         ra, s6, -373
                  beq          s10, tp, 1673f
                  bne          a5, a2, 1671f
                  slti         s2, gp, 85
                  srai         a4, a3, 30
                  andi         s10, t0, 624
                  srai         t1, tp, 12
                  or           t0, t2, t4
                  auipc        sp, 63020
                  slti         s3, tp, -534
1671:             add          s11, t4, gp
1672:             bgeu         t2, s4, 1690f
1673:             sub          zero, s8, a6
                  xor          a5, s7, a0
                  slli         zero, s10, 29
                  and          s1, a0, t0
                  sltiu        t1, s0, -105
                  srli         a2, a5, 17
                  and          sp, s2, s9
                  sub          a3, a4, s8
                  xori         t3, t2, 769
                  xor          sp, a7, a4
                  sll          s11, a0, a7
                  bltu         s1, a7, 1698f
                  srl          a0, s10, t3
                  sltu         t3, tp, s11
                  xori         t1, s3, 469
                  slti         s3, t0, -422
                  beq          t4, a2, 1702f
1690:             add          zero, t3, t1
                  bge          gp, zero, 1703f
                  add          s4, s2, s0
                  addi         a5, t1, -236
                  sll          gp, ra, s7
                  add          a0, s3, s1
                  auipc        t1, 143978
                  xori         s8, s0, 504
1698:             xor          zero, s3, gp
                  ori          t5, a6, -1137
                  srai         a1, a2, 16
                  bgeu         a1, s6, 1708f
1702:             srl          s3, a0, s2
1703:             sltu         t1, ra, s5
                  and          t3, a0, t4
                  add          gp, gp, s2
                  nop
                  srai         s6, s0, 18
1708:             blt          s8, t2, 1722f
                  add          a0, sp, a1
                  nop
                  srai         a6, s1, 31
                  srai         s6, a6, 22
                  add          zero, t5, t1
                  addi         ra, t3, 1739
                  sra          a7, s3, s1
                  beq          sp, a2, 1720f
                  slt          a3, a1, a2
                  bge          a7, s4, 1727f
                  and          a1, t6, t5
1720:             srli         a7, a4, 28
                  slti         s8, s4, 473
1722:             sub          a3, s8, s7
                  bgeu         s8, sp, 1731f
                  la           s4, region_1+1538 #start riscv_load_store_rand_instr_stream_20
                  sub          t3, t0, tp
                  sll          ra, s6, a4
                  sh           s0, 76(s4)
                  sb           s7, 204(s4)
                  srai         s11, t2, 25
                  lbu          t5, -99(s4)
                  addi         s7, s0, -1118
                  slli         s0, a2, 11
                  andi         s7, t1, -1173
                  lbu          s0, 219(s4)
                  sw           ra, -58(s4)
                  lbu          zero, 228(s4)
                  lb           a6, 153(s4)
                  or           a1, s6, s11
                  sb           s4, 71(s4)
                  lbu          t1, -203(s4)
                  lb           s10, 27(s4)
                  lbu          s0, 84(s4)
                  sltiu        a6, a7, 1280
                  lb           a1, 225(s4)
                  srli         a2, a1, 9
                  sll          s2, s3, tp
                  slti         s3, a0, 430
                  lbu          s6, 192(s4)
                  sb           s4, -131(s4)
                  sb           a6, -41(s4)
                  xori         a3, s8, -338
                  sh           t2, -22(s4)
                  sb           gp, 154(s4)
                  sltu         s5, s11, s1
                  sb           tp, -54(s4)
                  lbu          t3, 147(s4)
                  lhu          s8, 84(s4)
                  lb           s1, 187(s4)
                  lh           s11, -182(s4)
                  slli         s2, s11, 14
                  lw           t4, 234(s4) #end riscv_load_store_rand_instr_stream_20
                  srli         t3, s3, 29
                  add          t5, tp, t6
                  slli         s10, gp, 27
1727:             ori          s5, a3, -1259
                  addi         s11, a4, 1506
                  blt          s2, t1, 1749f
                  srai         t5, sp, 30
1731:             bltu         a1, ra, 1739f
                  beq          zero, a5, 1743f
                  slt          a1, s1, a3
                  srli         s6, ra, 2
                  srli         s1, a5, 14
                  xor          a7, s1, t2
                  bltu         s11, s11, 1749f
                  add          t6, a4, s2
1739:             bge          s8, s8, 1757f
                  bge          s11, t3, 1743f
                  add          gp, sp, a7
                  slti         a1, a7, 1228
1743:             bgeu         a6, t2, 1752f
                  and          t5, a6, t1
                  beq          s8, s9, 1754f
                  bltu         sp, s9, 1766f
                  addi         s6, t0, 309
                  srl          sp, s11, tp
1749:             srli         t6, a7, 27
                  sra          a3, a0, tp
                  auipc        s11, 345405
1752:             bne          ra, s8, 1753f
1753:             bge          s3, s11, 1771f
1754:             ori          s0, gp, 629
                  sltu         s0, s1, t2
                  bge          zero, a2, 1769f
1757:             srli         s4, t6, 31
                  lui          t0, 523681
                  or           s8, a7, s10
                  blt          a4, tp, 1767f
                  auipc        a5, 281806
                  sub          a7, t5, zero
                  addi         s10, s7, 654
                  bne          s11, s9, 1781f
                  bne          s6, t6, 1772f
1766:             xor          s10, a5, zero
1767:             and          sp, tp, t2
                  slti         zero, a2, 199
1769:             sll          t1, s4, a3
                  andi         s5, a7, -1831
1771:             slti         t3, a3, 348
1772:             and          sp, t1, s3
                  xor          s4, tp, s1
                  lui          a2, 1034334
                  sltu         t0, a7, s10
                  addi         s7, a7, 1299
                  or           s10, s4, s7
                  addi         s6, t0, -1253
                  slt          a0, s7, s3
                  blt          s8, zero, 1793f
1781:             auipc        s1, 715413
                  bge          s5, t4, 1792f
                  slli         a7, t3, 10
                  slli         s4, a0, 24
                  bgeu         s0, t6, 1801f
                  or           t0, t1, a1
                  sll          gp, sp, s7
                  srli         s1, s8, 9
                  xor          t4, s11, tp
                  blt          t2, t4, 1807f
                  andi         gp, s11, -1781
1792:             add          s4, t6, s3
1793:             lui          s4, 623798
                  ori          a2, a4, -665
                  sltiu        s3, s8, 1842
                  or           a1, t2, s3
                  ori          t3, gp, -1432
                  bgeu         a7, t1, 1801f
                  bge          s1, gp, 1805f
                  sub          s8, t6, t0
1801:             srli         a5, a6, 27
                  auipc        s4, 718064
                  sra          s8, t2, zero
                  bne          s7, a1, 1817f
1805:             srli         t3, zero, 15
                  sll          s3, tp, a0
1807:             xori         t0, t6, -644
                  lui          t0, 289252
                  nop
                  srl          s1, s4, s2
                  auipc        t5, 682726
                  slt          t6, sp, a3
                  sra          s0, s9, t5
                  sltu         a5, tp, s2
                  blt          s5, t1, 1832f
                  addi         s0, a1, -394
1817:             bne          sp, a1, 1821f
                  and          t6, s5, s5
                  beq          t5, gp, 1825f
                  bne          tp, s10, 1838f
1821:             slli         t3, sp, 22
                  srai         ra, a7, 30
                  slti         s3, a5, -891
                  sltu         gp, t2, t0
1825:             bgeu         s4, s4, 1832f
                  bge          s9, t2, 1834f
                  bge          s10, s10, 1831f
                  lui          s0, 359492
                  slli         a6, s3, 21
                  lui          t6, 51693
1831:             nop
1832:             add          s1, s0, t0
                  sltiu        s11, t3, -896
1834:             slt          a6, a1, s7
                  nop
                  slt          s0, s1, t3
                  bge          a4, a2, 1841f
1838:             add          a4, s1, a6
                  srai         s6, ra, 29
                  sltiu        s7, s10, 1869
1841:             srli         s7, s9, 16
                  slt          t5, gp, s9
                  bltu         a7, s10, 1856f
                  or           t0, gp, s0
                  nop
                  and          s10, t1, s10
                  beq          s1, a0, 1864f
                  beq          t1, s0, 1858f
                  bge          sp, a5, 1855f
                  sll          t6, a0, t5
                  sra          a0, a1, a0
                  srli         a3, t4, 25
                  srli         s1, s9, 13
                  sub          t3, s5, a0
1855:             nop
1856:             sll          t5, s6, t1
                  auipc        s6, 888020
1858:             nop
                  and          a4, s8, t0
                  slti         zero, s7, -586
                  xor          s7, t2, s0
                  srai         a4, t5, 18
                  sltu         ra, sp, a5
1864:             bne          s1, gp, 1882f
                  sltiu        a7, s9, -1942
                  nop
                  ori          t0, sp, 950
                  bgeu         t3, t0, 1874f
                  srli         gp, t4, 2
                  slt          t5, t2, sp
                  srl          s11, s6, t0
                  sltu         a6, s3, s6
                  slti         t1, s5, -259
1874:             add          s10, s0, t4
                  lui          ra, 64052
                  nop
                  andi         a3, s0, -896
                  srli         s11, a1, 21
                  andi         s4, s4, 716
                  ori          s10, s11, 1750
                  xori         t0, t5, -1427
1882:             slti         t5, t6, -1375
                  blt          t3, t2, 1894f
                  srli         s7, t6, 13
                  sll          a6, t4, a2
                  srli         s5, s10, 24
                  sltiu        s5, t0, -1290
                  add          s0, a4, s2
                  bltu         t2, gp, 1902f
                  lui          a6, 844002
                  blt          s1, t0, 1894f
                  bne          s9, s9, 1899f
                  slti         t4, t1, 76
1894:             srl          s11, t4, ra
                  auipc        a5, 189016
                  nop
                  srl          t4, s3, t2
                  slli         s2, t4, 25
1899:             bltu         s10, s0, 1908f
                  beq          s6, ra, 1914f
                  srl          a7, a6, t2
1902:             nop
                  and          sp, t1, a3
                  slti         s6, s11, 1033
                  auipc        s11, 234548
                  sra          s8, s3, gp
                  or           s10, tp, a0
1908:             ori          s3, a3, -849
                  andi         s0, ra, -728
                  slli         a5, s4, 20
                  blt          s2, t4, 1929f
                  sltiu        s1, a5, 1202
                  bltu         s7, t5, 1929f
1914:             slt          a4, s5, s10
                  srli         t4, a3, 20
                  sll          s0, t1, sp
                  lui          s3, 719752
                  slti         a2, a2, 851
                  slti         t3, s11, 41
                  srli         t6, s8, 17
                  auipc        a1, 754425
                  sll          gp, s1, a4
                  bltu         sp, a4, 1943f
                  bltu         s0, a5, 1932f
                  bge          sp, t5, 1934f
                  ori          a7, ra, -689
                  bne          s11, s10, 1936f
                  sub          a2, s11, s8
1929:             bgeu         zero, a5, 1942f
                  xori         gp, s11, 196
                  beq          a7, s11, 1934f
1932:             lui          t3, 567777
                  addi         a4, zero, 2017
1934:             nop
                  sltu         a4, s1, s0
1936:             slti         ra, s2, 1609
                  sll          s6, t6, sp
                  ori          s1, a7, 640
                  auipc        a5, 315080
                  slli         a6, s9, 31
                  srai         s3, t0, 25
1942:             slt          a4, tp, t6
1943:             nop
                  slli         a0, t2, 29
                  or           s5, s0, s10
                  xor          s4, t5, s3
                  sra          s8, t4, s11
                  add          s4, s4, s8
                  srl          a5, t0, s9
                  sub          t0, a7, t1
                  or           a4, s0, t0
                  sltiu        s10, a4, 508
                  lui          t3, 1039751
                  sltu         s11, s6, zero
                  sll          a4, s11, ra
                  bne          s8, s0, 1968f
                  nop
                  or           gp, t3, gp
                  lui          t3, 127455
                  xori         a1, a3, 826
                  slti         t4, s6, 1061
                  addi         a5, s10, -1686
                  xor          gp, zero, s3
                  addi         a5, s9, -332
                  lui          a4, 772116
                  srli         s3, a2, 14
                  addi         a0, a3, -1853
1968:             add          a0, a0, t0
                  srli         gp, a3, 3
                  bltu         s3, s7, 1988f
                  blt          ra, s11, 1972f
1972:             and          s11, s11, t5
                  bne          a7, t3, 1990f
                  bge          ra, a4, 1994f
                  andi         t4, s1, -1994
                  bltu         t4, s2, 1993f
                  bge          a6, ra, 1997f
                  bgeu         t4, a2, 1985f
                  auipc        a4, 603933
                  srai         sp, a5, 10
                  ori          s5, t3, 1790
                  bne          a5, t1, 1983f
1983:             srl          a7, gp, t1
                  slti         t1, t5, 1177
1985:             auipc        a0, 787808
                  addi         t5, s10, -1022
                  slt          s6, s4, t5
1988:             sltu         s6, s10, sp
                  sub          a0, a2, t5
1990:             sltu         a0, s0, s3
                  xor          t6, ra, t4
                  srli         sp, s2, 17
1993:             or           t4, t3, s2
1994:             srli         s1, tp, 31
                  bltu         s7, a3, 2004f
                  slti         t0, s3, 1908
1997:             auipc        a4, 586005
                  blt          t3, t3, 2018f
                  bgeu         s11, s10, 2016f
                  srai         s6, a4, 8
                  srli         t6, s10, 2
                  nop
                  slli         a4, ra, 21
2004:             xor          s8, t2, t2
                  auipc        t4, 460831
                  bge          s2, s5, 2016f
                  srli         a5, tp, 15
                  slli         a4, a2, 2
                  auipc        zero, 220682
                  bltu         s1, s7, 2023f
                  slt          a6, t6, t3
                  addi         t0, a7, -1202
                  srai         gp, s6, 17
                  lui          t4, 412720
                  nop
2016:             ori          gp, sp, -298
                  sra          a2, a5, zero
2018:             bge          s9, zero, 2025f
                  srl          a6, s2, a6
                  andi         s5, s0, 1181
                  sra          s8, s7, a1
                  ori          zero, s10, -1218
2023:             slt          t0, s4, s0
                  sltu         s0, t4, t4
2025:             sll          zero, a5, t2
                  xor          t3, s6, s2
                  bne          a4, t1, 2030f
                  srai         sp, a5, 28
                  nop
2030:             auipc        s0, 758771
                  srai         t4, s3, 9
                  addi         s1, a7, -1481
                  srai         s7, t6, 24
                  slli         zero, t4, 11
                  sub          t4, s8, s3
                  or           a1, t6, s0
                  addi         t6, a5, 51
                  xori         a7, a7, -1920
                  sll          a1, t2, a6
                  sra          s3, s0, a7
                  blt          s8, a0, 2050f
                  auipc        s8, 528163
                  bgeu         a7, s11, 2051f
                  bne          s9, s2, 2047f
                  blt          s11, gp, 2051f
                  xori         s4, s11, -814
2047:             beq          t1, s9, 2053f
                  and          t4, t3, s5
                  addi         gp, gp, 1701
2050:             nop
2051:             srli         t0, a0, 29
                  sltu         s7, a5, t5
2053:             sll          a2, gp, a1
                  or           s0, t6, sp
                  bne          a3, a3, 2073f
                  blt          s5, s11, 2073f
                  bltu         s8, t2, 2066f
                  and          a0, sp, gp
                  ori          a3, tp, -1111
                  and          a4, s7, s10
                  addi         t0, t1, -1985
                  srai         s7, a4, 12
                  sltiu        t6, s3, 1218
                  nop
                  auipc        s8, 635321
2066:             or           s3, s9, a7
                  addi         s10, t1, -935
                  sub          s6, a5, a7
                  lui          t4, 456000
                  lui          zero, 1036424
                  srl          t5, t6, s11
                  sltiu        ra, a4, 919
2073:             auipc        s7, 553762
                  bne          t2, a3, 2078f
                  bne          s10, s5, 2092f
                  andi         a3, t6, 984
                  blt          a1, a4, 2095f
2078:             sltiu        s3, t5, -585
                  and          t4, sp, a7
                  bge          a2, tp, 2094f
                  slli         s3, s1, 5
                  or           t5, t4, s2
                  slli         s3, a0, 27
                  beq          a4, a3, 2092f
                  or           zero, sp, s1
                  blt          t0, ra, 2090f
                  sra          a3, sp, s3
                  slti         t0, s1, 968
                  blt          a7, sp, 2101f
2090:             sltiu        a3, t3, -52
                  sll          s7, t6, ra
2092:             srai         t6, t2, 9
                  srli         s2, a7, 7
2094:             and          s11, ra, a1
2095:             sub          a4, s6, a5
                  sub          s2, s11, s10
                  bne          a1, t2, 2115f
                  ori          s1, zero, -1265
                  andi         t6, ra, 697
                  sltu         a5, t6, a2
2101:             slt          zero, t5, s8
                  or           sp, s1, s7
                  andi         t1, s4, 1741
                  bltu         s9, a1, 2117f
                  srl          t1, a7, t0
                  sra          a6, t2, s8
                  srai         s1, s8, 13
                  srai         a1, tp, 11
                  and          s11, s8, t4
                  slti         t1, t3, 466
                  slt          a5, s11, a0
                  lui          s10, 855014
                  slt          t4, a0, t4
                  slli         s8, s0, 18
2115:             sub          a4, a2, zero
                  sra          a3, s2, t6
2117:             beq          a7, t5, 2130f
                  bltu         a4, sp, 2134f
                  srai         a7, s7, 12
                  xor          t3, s2, s1
                  addi         t5, s6, 1466
                  and          s5, a1, s4
                  bne          s2, a7, 2134f
                  addi         s11, s9, -1516
                  sltiu        ra, t2, 644
                  slt          ra, s6, s7
                  and          sp, s9, a5
                  nop
                  andi         a4, a4, -59
2130:             xor          a6, s8, sp
                  beq          t2, zero, 2151f
                  and          a6, s11, s6
                  srai         s2, gp, 26
2134:             srli         s3, s8, 26
                  sltiu        s5, t2, -872
                  bne          a5, t1, 2153f
                  srl          a3, t1, a4
                  bgeu         gp, a0, 2151f
                  sltu         s3, s10, gp
                  ori          s6, tp, 206
                  sltiu        t6, tp, -1590
                  sub          gp, t6, t1
                  lui          s3, 34849
                  sra          t0, t5, a4
                  slli         s4, s3, 10
                  slt          s11, a6, s5
                  slti         t6, s11, -1541
                  addi         gp, s6, 961
                  bne          a6, s4, 2158f
                  slti         sp, s6, -1714
2151:             srl          a4, s1, t3
                  sub          t3, t0, s1
2153:             ori          t3, gp, 66
                  ori          s4, s3, -1060
                  ori          s8, s8, 14
                  add          gp, a3, a5
                  lui          a0, 605437
2158:             xor          t6, tp, gp
                  sra          s4, s1, s6
                  xori         s4, s1, 1798
                  lui          a7, 454367
                  or           s5, t1, a6
                  add          a0, t1, a3
                  ori          s4, t2, -135
                  bgeu         sp, sp, 2166f
2166:             nop
                  slli         s6, s9, 20
                  xor          a7, a3, tp
                  andi         s0, s8, 441
                  or           a4, t5, t0
                  slt          s0, a1, s3
                  beq          t6, s9, 2175f
                  blt          a3, t3, 2186f
                  bltu         s6, s7, 2190f
2175:             slti         s2, t5, -561
                  and          a3, s11, s2
                  addi         s10, t4, -2001
                  add          sp, s4, sp
                  addi         s5, s10, -1111
                  bltu         s7, t5, 2200f
                  nop
                  slli         a5, a6, 19
                  blt          t1, sp, 2187f
                  srli         t6, ra, 11
                  slt          s11, s9, t5
2186:             sltiu        t0, a1, 128
2187:             srl          t5, a3, s10
                  or           zero, s1, ra
                  add          a2, s6, a7
2190:             blt          s7, a0, 2203f
                  xor          t6, t0, s0
                  sltu         zero, s11, t1
                  slt          s0, sp, s4
                  srl          a2, t1, t3
                  sltu         s1, a4, s4
                  auipc        s8, 223130
                  srai         s3, s3, 20
                  andi         a3, ra, -105
                  nop
2200:             beq          s11, s0, 2207f
                  auipc        a4, 835024
                  auipc        a7, 490108
2203:             and          t4, s4, a3
                  andi         a0, t6, 1960
                  srai         s2, s4, 0
                  beq          a0, a5, 2212f
2207:             sra          sp, s3, s2
                  srl          t0, s8, sp
                  slli         a2, zero, 28
                  sra          a6, s2, t4
                  bne          a3, s5, 2229f
2212:             and          a4, t0, zero
                  slli         t6, t2, 27
                  slt          s1, s11, sp
                  sub          s3, a3, s9
                  add          t5, s0, t0
                  srai         s1, tp, 9
                  blt          s3, s5, 2228f
                  sra          a7, s3, s8
                  srli         s10, t0, 10
                  sll          t5, s1, s10
                  lui          s7, 317958
                  bgeu         a3, tp, 2227f
                  bltu         s6, a7, 2233f
                  slli         a7, s4, 0
                  ori          a4, a0, 1
2227:             bge          t3, tp, 2235f
2228:             slt          a3, t2, a2
2229:             beq          s4, a4, 2246f
                  slt          s8, s11, t6
                  beq          s2, t0, 2249f
                  slt          a7, t0, s9
2233:             addi         a3, t6, -1955
                  andi         a5, t1, -1359
2235:             slti         s3, a5, -110
                  slli         a0, s1, 0
                  srai         a5, a1, 7
                  slt          s1, t5, a4
                  bgeu         t1, a4, 2250f
                  xor          gp, s9, s11
                  slti         s7, sp, -330
                  bne          s0, a7, 2249f
                  ori          s7, t5, 364
                  sra          s11, t3, a2
                  la           ra, region_0+1893 #start riscv_load_store_rand_instr_stream_25
                  sll          gp, s9, t3
                  nop
                  srai         t5, s3, 8
                  sw           zero, -1425(ra)
                  xori         gp, a5, -1149
                  lb           a7, -1172(ra)
                  slt          a6, t5, a7
                  slt          s2, tp, a0
                  lbu          s7, -172(ra)
                  sltiu        a1, a2, -901
                  slt          s1, a5, gp
                  lhu          s1, -1139(ra)
                  sra          gp, a4, a1
                  lhu          s1, -227(ra)
                  sw           t5, -169(ra)
                  srai         gp, tp, 12
                  nop
                  sub          gp, sp, s7
                  sltiu        a0, s3, -1188
                  srli         a3, a0, 29
                  sh           s7, -447(ra)
                  xori         s7, t5, 917
                  or           s4, t4, t0
                  sltu         t5, s1, a7
                  ori          s0, a0, 8
                  sra          s4, gp, t1
                  sltiu        a7, a3, 1227
                  add          t1, t4, tp
                  and          gp, s11, t4
                  lw           a3, -1313(ra)
                  sltiu        s7, s9, 194
                  srai         s6, t6, 8
                  lbu          t3, -1784(ra)
                  lb           zero, -200(ra) #end riscv_load_store_rand_instr_stream_25
                  add          t4, a3, s3
2246:             srli         a0, t3, 31
                  bge          s11, s3, 2265f
                  sltu         a3, a2, s11
2249:             sltiu        s1, t3, 1722
2250:             andi         t6, a4, 1770
                  xor          s4, t4, s9
                  ori          t0, t2, 1485
                  add          t4, s5, t2
                  add          s0, a6, a4
                  slli         a4, t5, 10
                  xor          a3, t4, s1
                  auipc        s3, 934276
                  sltiu        s11, s10, -1208
                  bne          a4, t1, 2265f
                  sra          s7, ra, a2
                  and          ra, a0, t6
                  andi         s6, a5, 137
                  blt          s6, a4, 2272f
                  andi         ra, a0, 1167
2265:             srli         a5, t0, 12
                  srli         t5, a7, 25
                  addi         a4, a3, -132
                  lui          s8, 34361
                  bgeu         s8, zero, 2277f
                  sub          s7, t6, s0
                  bltu         s7, s11, 2283f
2272:             lui          gp, 350975
                  sltiu        s10, zero, -1242
                  lui          zero, 178719
                  bltu         a2, a4, 2278f
                  bge          t5, t0, 2290f
2277:             srai         a5, a4, 17
2278:             auipc        sp, 107416
                  slt          s11, a6, s4
                  slli         s0, s4, 16
                  auipc        s2, 182773
                  sra          a1, a7, s11
2283:             and          s2, sp, t5
                  nop
                  sra          t6, s9, s4
                  srai         t1, s4, 29
                  bge          s5, s7, 2304f
                  slti         gp, a5, 1268
                  or           s4, s3, a0
2290:             sll          a0, t4, s8
                  ori          t6, sp, -640
                  ori          s2, sp, -874
                  blt          s1, t3, 2302f
                  slli         a5, s1, 4
                  and          sp, t0, s5
                  bge          t2, a6, 2310f
                  xor          s0, s9, a7
                  bgeu         t4, s6, 2316f
                  blt          s5, t4, 2307f
                  or           t6, a5, a6
                  or           s8, s2, s3
2302:             bltu         s3, s7, 2315f
                  sltu         s1, a2, a1
2304:             sltu         s0, s7, a5
                  srai         s6, t2, 5
                  bge          s4, s0, 2310f
2307:             slt          s11, a7, ra
                  bge          s0, s3, 2321f
                  xori         s11, s3, 7
2310:             auipc        gp, 435428
                  beq          ra, zero, 2320f
                  beq          ra, t4, 2329f
                  andi         t3, s1, -1348
                  sub          a1, a5, t2
2315:             slti         s11, t4, 677
2316:             add          t6, t1, s5
                  ori          a6, t6, 448
                  beq          a2, s6, 2324f
                  auipc        s11, 284617
2320:             sra          a7, t3, s8
2321:             slt          t5, a2, t0
                  slti         gp, sp, 1613
                  srli         t5, t1, 16
2324:             sll          s0, sp, s9
                  or           sp, zero, a6
                  srl          a5, tp, zero
                  beq          a6, s9, 2338f
                  bgeu         s8, a0, 2340f
2329:             sra          s8, tp, ra
                  bge          a1, a1, 2331f
2331:             srl          t1, sp, s9
                  addi         a5, a3, -70
                  sll          a0, tp, sp
                  andi         t4, s7, -1885
                  sll          s4, t2, a7
                  xor          a0, s3, t2
                  blt          s5, s8, 2347f
2338:             sra          t4, s3, t6
                  slti         t6, a3, 329
2340:             nop
                  sll          s7, a4, s9
                  srl          t3, a4, s8
                  bltu         s7, t3, 2352f
                  bne          a2, t2, 2351f
                  auipc        s0, 390088
                  beq          s5, a3, 2353f
2347:             sltu         s2, t6, s6
                  ori          t3, s9, 487
                  andi         t0, s0, 1452
                  ori          s5, t3, -431
2351:             srli         a6, s6, 30
2352:             and          s4, s6, s11
2353:             srl          t1, gp, t4
                  auipc        s2, 598605
                  nop
                  andi         s7, gp, 1453
                  xor          s10, s7, a6
                  srl          a1, s9, s8
                  xor          a1, a3, a0
                  bgeu         tp, s3, 2364f
                  or           a7, t0, t0
                  beq          s3, s7, 2380f
                  and          s1, t2, a6
2364:             bne          s5, a4, 2381f
                  sll          s3, s8, s7
                  bgeu         gp, s7, 2386f
                  bltu         s7, ra, 2380f
                  sub          t6, a3, t3
                  ori          s5, a1, 1276
                  sltu         a4, s9, t5
                  beq          s5, t0, 2379f
                  nop
                  ori          a5, s9, 364
                  andi         s10, tp, -1853
                  andi         s2, a0, -1586
                  add          a0, a7, tp
                  bne          a7, a1, 2395f
                  srli         a6, t2, 3
2379:             slt          t1, s6, s2
2380:             add          s3, t3, s6
2381:             slt          s4, a7, s0
                  bltu         s5, s7, 2402f
                  srli         a5, a0, 11
                  sra          s10, sp, a4
                  blt          s6, s5, 2391f
2386:             xor          s5, s6, s10
                  and          t4, s7, s5
                  nop
                  slti         a5, t6, 1700
                  and          t3, a4, t3
2391:             or           s11, s9, tp
                  bge          a4, a6, 2409f
                  xor          s3, a7, sp
                  andi         a7, s0, -642
2395:             or           zero, a0, t0
                  nop
                  and          a7, s5, sp
                  slt          s4, a5, gp
                  slti         s5, s7, 1731
                  or           s6, gp, ra
                  slt          a3, a1, a6
2402:             slli         s7, s11, 7
                  nop
                  sll          a2, a4, s4
                  bge          zero, gp, 2408f
                  xori         a5, s11, -1051
                  and          s1, tp, a2
2408:             beq          a5, a5, 2424f
2409:             srl          gp, sp, t5
                  bne          s5, s9, 2413f
                  slti         a7, s10, 444
                  srai         a6, t1, 25
2413:             bltu         t5, t1, 2425f
                  bltu         t6, s1, 2417f
                  bge          s2, a3, 2423f
                  addi         s8, ra, 1509
2417:             slt          s1, a6, s6
                  bge          s5, a2, 2428f
                  slt          a2, s9, sp
                  blt          t6, a2, 2440f
                  and          a4, a3, t0
                  blt          gp, t6, 2440f
2423:             bge          t2, a3, 2430f
2424:             sltiu        s7, a0, -571
2425:             sltiu        s11, a7, -808
                  addi         t4, t3, -2005
                  slli         t0, s2, 30
2428:             nop
                  addi         t4, s5, -596
2430:             slti         a6, a3, 1
                  srai         s2, s7, 21
                  blt          a6, s11, 2438f
                  srai         gp, a0, 22
                  blt          a0, a0, 2448f
                  bltu         s4, s6, 2452f
                  andi         a4, gp, -1142
                  lui          a4, 66319
2438:             and          a1, t0, t6
                  srai         t0, s9, 18
2440:             bge          s0, s3, 2458f
                  lui          t0, 239336
                  blt          a2, a5, 2453f
                  sltu         gp, t4, s9
                  sra          t3, a0, t6
                  sra          t1, a4, s11
                  bltu         t4, a2, 2452f
                  slli         sp, s11, 26
2448:             srl          s2, a3, s10
                  sltu         a2, gp, zero
                  beq          t3, s11, 2466f
                  beq          t1, s11, 2458f
2452:             sll          sp, a6, s5
2453:             lui          s4, 146295
                  la           s4, region_0+1054 #start riscv_load_store_rand_instr_stream_1
                  lb           ra, 10(s4)
                  andi         t5, sp, -1122
                  sb           t0, -14(s4)
                  slt          t5, gp, s3
                  sll          s3, a7, s3
                  lh           s7, -14(s4)
                  sb           a7, 7(s4)
                  lh           t5, 6(s4)
                  sltiu        a6, s9, -549
                  add          t0, t2, s4
                  lh           s1, 8(s4)
                  srai         s2, a5, 21
                  lbu          a5, 12(s4)
                  auipc        t1, 145133
                  sb           s3, 11(s4)
                  auipc        s3, 737246
                  lh           s3, 8(s4)
                  sltu         sp, a2, sp
                  xor          s0, t0, s4
                  lhu          s2, 14(s4)
                  sltiu        s3, s2, -1442
                  sh           a5, 8(s4)
                  lh           s10, 12(s4)
                  sb           s4, -3(s4)
                  lb           a5, -8(s4)
                  sh           t6, -2(s4)
                  slt          sp, t1, s1
                  slli         ra, a3, 23
                  sb           sp, 13(s4)
                  slti         a3, t5, -1909
                  lbu          a4, 13(s4)
                  srli         sp, a0, 29
                  lui          t1, 626225
                  lb           t6, -4(s4)
                  slli         a7, t5, 5
                  sb           t2, 6(s4)
                  lbu          s5, 3(s4)
                  sll          a0, t0, a6
                  sb           a2, 3(s4)
                  sb           a6, -13(s4)
                  sb           s1, -3(s4)
                  sh           zero, -4(s4)
                  sb           s7, -4(s4)
                  lbu          t1, -14(s4) #end riscv_load_store_rand_instr_stream_1
                  lui          a0, 423162
                  slli         s10, t3, 0
                  nop
                  auipc        s5, 537541
2458:             sub          a3, a4, t0
                  addi         s10, a6, 1887
                  sltiu        a4, t6, -262
                  beq          a5, sp, 2478f
                  slti         gp, ra, 1157
                  slt          a2, s11, s0
                  beq          a6, gp, 2481f
                  andi         t3, s8, -144
2466:             srli         s6, gp, 8
                  bge          t0, t6, 2487f
                  srai         t6, s5, 21
                  xor          t5, t1, a7
                  or           a2, tp, a6
                  srl          s11, a4, t1
                  sltiu        t4, a3, -1352
                  srli         a0, t5, 10
                  bne          s10, s3, 2478f
                  sub          a5, a0, a6
                  bge          a2, a2, 2494f
                  srl          s5, t5, s4
2478:             sub          s10, t1, s0
                  srai         a2, s2, 15
                  sltiu        a1, t6, -553
2481:             add          t0, s9, a3
                  xori         s10, s10, -1325
                  and          s11, sp, t6
                  add          s10, s3, a7
                  beq          s10, t2, 2498f
                  slt          s1, t5, t6
2487:             or           t0, s1, s5
                  andi         a1, a6, 1811
                  bne          s9, s9, 2498f
                  bltu         a7, a4, 2503f
                  ori          a3, a1, 1003
                  and          a2, sp, gp
                  and          t6, a1, s6
2494:             bgeu         ra, ra, 2507f
                  sub          s6, a1, s8
                  ori          a7, s0, 1905
                  nop
2498:             sltiu        t6, s10, 1147
                  ori          a6, t2, -1231
                  bge          s2, a3, 2504f
                  slt          s4, t2, s8
                  bltu         gp, s6, 2503f
2503:             andi         s4, t4, -1765
2504:             blt          gp, s1, 2507f
                  srl          s11, t6, s10
                  srli         gp, t1, 19
2507:             and          a4, a1, s5
                  bltu         s8, s8, 2517f
                  or           ra, gp, s9
                  addi         t6, tp, -1518
                  srl          s0, t2, t2
                  slti         s5, t3, -1529
                  srli         a4, s5, 27
                  sub          s2, s4, s11
                  nop
                  andi         t3, s7, 1524
2517:             xor          s4, a3, a3
                  bge          s1, s3, 2527f
                  bne          a3, t3, 2527f
                  and          s11, ra, s6
                  sltu         s2, a7, s1
                  add          zero, t5, s1
                  bne          t5, a7, 2530f
                  bne          s1, t4, 2542f
                  bltu         s3, gp, 2529f
                  srai         a1, a1, 5
2527:             sll          ra, s6, s3
                  beq          s11, s2, 2537f
2529:             add          s3, t4, s3
2530:             bgeu         t3, t6, 2540f
                  auipc        s11, 246432
                  or           s2, s2, a3
                  bne          a1, sp, 2545f
                  sra          t3, sp, a6
                  srli         t5, s7, 3
                  nop
2537:             add          s2, t6, a3
                  srli         a3, tp, 5
                  slt          t3, zero, s10
2540:             xori         t0, t1, 1172
                  and          s1, zero, s3
2542:             bgeu         s5, a5, 2550f
                  xor          s5, a5, t2
                  sll          a2, a3, zero
2545:             sll          ra, t5, t1
                  slli         t3, gp, 14
                  sltiu        t1, gp, 1537
                  sll          s3, t0, s2
                  xor          sp, a4, a0
2550:             auipc        a5, 561158
                  addi         s2, gp, -771
                  blt          s3, s11, 2570f
                  andi         s0, zero, 1036
                  srl          gp, tp, t6
                  bgeu         zero, s0, 2562f
                  sub          a1, a6, t5
                  sub          a6, sp, s1
                  sub          a4, s7, t5
                  bne          s8, s10, 2579f
                  sub          ra, t1, s11
                  sll          a7, s5, a3
2562:             and          s5, s5, s5
                  bne          t2, s11, 2566f
                  and          a2, s6, t2
                  lui          a3, 157801
2566:             slt          a6, s2, t5
                  sltiu        t1, s11, 1078
                  sltiu        t3, t0, 866
                  srli         a4, s8, 2
2570:             srai         a2, a5, 20
                  slt          a4, s10, t6
                  srl          a1, s3, s7
                  srli         gp, t5, 12
                  slti         s8, t5, -1831
                  sub          s11, t5, s6
                  xori         t0, s4, 1705
                  and          sp, s3, s3
                  xor          s5, t6, s11
2579:             sll          s7, s6, gp
                  bgeu         t2, zero, 2597f
                  ori          a6, s10, -1245
                  andi         s10, a5, -1188
                  bgeu         s5, sp, 2587f
                  bltu         tp, t1, 2598f
                  bgeu         t4, s6, 2591f
                  add          s2, t5, gp
2587:             slti         s1, s0, -637
                  srl          t1, a7, a6
                  bgeu         s11, s0, 2590f
2590:             sltu         s2, t4, ra
2591:             lui          t3, 705167
                  bne          s11, s6, 2605f
                  and          a3, tp, s2
                  sltu         a6, a2, t4
                  sltiu        a1, s2, -598
                  slli         a6, t0, 1
2597:             sltu         t1, s9, t4
2598:             nop
                  lui          a6, 192846
                  addi         s7, a6, 1010
                  sltiu        a2, t2, 1374
                  auipc        a7, 999915
                  bne          a2, s8, 2611f
                  slt          sp, a7, a0
2605:             blt          a2, t4, 2618f
                  blt          a5, a0, 2619f
                  bgeu         a2, a5, 2627f
                  blt          a1, a3, 2617f
                  beq          a5, a2, 2615f
                  or           sp, a4, s8
2611:             sra          ra, a5, s9
                  xori         a0, a7, -937
                  ori          s2, s4, -1861
                  lui          a1, 12567
2615:             slli         s3, s1, 27
                  bltu         t5, a6, 2633f
2617:             lui          sp, 898184
2618:             bge          sp, t2, 2636f
2619:             bne          t5, t3, 2622f
                  xori         t1, a3, -1850
                  beq          s6, s0, 2638f
2622:             bge          s1, s8, 2638f
                  lui          t6, 389667
                  xori         t5, t6, 1064
                  bne          a4, sp, 2636f
                  srli         s11, a1, 30
2627:             and          t1, ra, a4
                  slli         zero, a1, 6
                  slli         s5, t3, 4
                  slt          a6, s9, ra
                  xor          s10, t2, a1
                  and          a0, s2, t1
2633:             addi         s0, a2, -431
                  beq          a0, s7, 2643f
                  srai         a0, s8, 8
2636:             xor          s2, zero, s9
                  addi         t1, a2, 1971
2638:             addi         s7, a1, -650
                  srl          s5, t5, tp
                  sub          zero, a2, t2
                  nop
                  nop
2643:             blt          a0, a1, 2649f
                  srl          a3, s5, zero
                  bge          s4, s2, 2658f
                  sub          s4, a3, t4
                  xor          a7, s10, a2
                  or           s5, ra, t5
2649:             sltu         t5, s7, s2
                  sltu         s7, s11, s11
                  sra          a5, a6, s2
                  sra          t5, s1, s9
                  slli         s0, s3, 4
                  bne          s6, s4, 2661f
                  xor          a7, t6, s0
                  andi         s10, a3, 378
                  xori         a3, s7, 46
2658:             bgeu         t6, a5, 2675f
                  sra          a4, a3, a4
                  slt          a5, zero, a5
2661:             andi         t6, s0, -1719
                  srl          t5, s6, a4
                  ori          s6, gp, 201
                  slli         a1, a3, 31
                  srli         s6, a4, 16
                  bne          t0, t4, 2680f
                  sltu         t3, t0, ra
                  slti         s2, t6, 599
                  bltu         s11, s5, 2685f
                  slli         a6, t4, 9
                  add          a1, a1, t3
                  sltiu        s7, s5, 279
                  slli         a2, a4, 26
                  slli         a2, s0, 1
2675:             bne          t0, s10, 2687f
                  auipc        a5, 1022744
                  andi         t5, tp, 1211
                  xor          t1, t5, a7
                  sra          sp, tp, t0
2680:             sltiu        a0, s7, -351
                  blt          a7, s6, 2699f
                  auipc        a1, 377626
                  auipc        a3, 815932
                  slli         s5, s0, 24
2685:             sltu         s3, tp, gp
                  blt          t1, a0, 2703f
2687:             and          a5, t6, zero
                  lui          t5, 604447
                  lui          a1, 235779
                  xori         s11, s9, 459
                  slti         s7, tp, -456
                  slti         s3, s1, 978
                  sll          t5, ra, gp
                  lui          a5, 397313
                  add          a7, s0, t5
                  add          s5, a7, t5
                  bltu         a6, s1, 2715f
                  srai         t1, s0, 20
2699:             slti         a2, s11, -465
                  srl          t0, s1, t4
                  sltiu        s2, t4, -1146
                  xori         s3, s7, 2033
2703:             ori          a2, a4, 315
                  sub          t6, s5, a0
                  srli         a5, a4, 19
                  or           a3, t5, s6
                  addi         t5, t3, -1578
                  or           a4, zero, s8
                  sra          a1, ra, t1
                  bge          a4, s3, 2721f
                  slli         t6, s8, 16
                  and          ra, t2, s0
                  bge          a1, s2, 2717f
                  andi         a3, t6, -1468
2715:             srl          a1, t5, a1
                  sll          s2, s4, ra
2717:             auipc        t4, 382961
                  slli         s3, s9, 23
                  add          a3, ra, s9
                  lui          s1, 245339
2721:             nop
                  or           sp, s11, t0
                  srli         s8, a0, 28
                  lui          a4, 1030234
                  andi         t0, a7, -65
                  slti         s1, s2, -1305
                  srli         s0, a7, 29
                  xori         a1, sp, -1617
                  xor          a0, t1, a0
                  and          sp, ra, s3
                  lui          a7, 469181
                  sra          t1, a6, t6
                  srai         t6, a3, 21
                  blt          s5, ra, 2754f
                  bge          t3, a5, 2742f
                  blt          ra, t3, 2739f
                  add          ra, s0, s2
                  sra          s3, gp, s11
2739:             or           s10, sp, s8
                  sub          a1, s3, s7
                  srli         a2, t5, 28
2742:             sltiu        a5, s6, 1459
                  auipc        t1, 709861
                  sll          s4, a3, t4
                  srli         t6, t5, 13
                  andi         s4, s7, -855
                  slli         s1, a3, 17
                  or           s1, tp, s5
                  sub          s1, a2, s2
                  sub          s7, s4, a2
                  beq          zero, t2, 2755f
                  sltu         s2, s2, gp
                  srai         s10, a2, 15
2754:             srai         s5, t1, 10
2755:             auipc        a6, 100670
                  sra          a3, s5, tp
                  or           a2, zero, sp
                  ori          a6, t4, -884
                  and          s0, t0, s7
                  sra          s3, a5, t5
                  sll          zero, s11, s9
                  bne          s5, s6, 2771f
                  sltu         a4, s7, s4
                  addi         a7, tp, -729
                  addi         gp, a6, 113
                  and          s1, s9, t4
                  srli         t1, s9, 29
                  slti         a7, a6, -325
                  sll          s0, a2, s2
                  srai         t5, a6, 30
2771:             lui          a4, 34834
                  beq          t6, s2, 2781f
                  sra          a7, s8, t0
                  srai         s11, s3, 22
                  srl          t5, a1, s5
                  slti         s4, t5, -133
                  add          t6, s5, s6
                  and          s6, t1, s9
                  srli         s11, tp, 17
                  nop
2781:             sub          t1, a4, t3
                  nop
                  slti         a0, t5, 1488
                  bltu         t6, s3, 2787f
                  bne          t0, a4, 2803f
                  slli         ra, t4, 10
2787:             auipc        gp, 994315
                  lui          s10, 560070
                  sra          sp, s4, t6
                  slli         s11, a1, 31
                  blt          a1, s3, 2799f
                  auipc        s6, 53371
                  or           a1, t0, t3
                  sub          s2, gp, s3
                  sltiu        gp, t1, -955
                  auipc        s0, 742387
                  nop
                  add          a3, t1, a7
2799:             sltiu        ra, t0, 1347
                  slti         a4, s5, -285
                  ori          a4, s0, -1920
                  auipc        s10, 137776
2803:             xori         s3, a2, -914
                  addi         a1, s5, 1098
                  bltu         a1, s8, 2811f
                  sltu         s1, s9, s3
                  nop
                  blt          s2, a0, 2821f
                  addi         ra, a1, -589
                  slt          s10, ra, s8
2811:             bne          s4, a0, 2812f
2812:             sll          s4, t0, a7
                  or           t3, s3, t6
                  sub          s10, gp, t2
                  blt          a3, t6, 2835f
                  andi         a3, a0, 1523
                  bltu         a1, t0, 2830f
                  srai         a6, a6, 23
                  or           s5, s5, a1
                  or           s1, s8, t6
2821:             sltiu        gp, s4, 535
                  sra          s10, gp, t4
                  xori         s1, zero, 1931
                  bne          a7, a0, 2832f
                  slli         s3, s6, 11
                  srl          s11, ra, t4
                  ori          t3, a7, -670
                  addi         s6, t0, -1485
                  add          s5, s5, s1
2830:             addi         t4, a5, 584
                  auipc        t3, 826825
2832:             or           a2, s9, s11
                  addi         t3, t2, -200
                  srli         s5, a0, 10
2835:             srl          s8, s10, s10
                  bltu         t3, a7, 2853f
                  bltu         s5, s8, 2847f
                  beq          a4, s0, 2847f
                  sra          s3, s2, t2
                  slli         a0, zero, 28
                  addi         s2, s8, 1966
                  bgeu         a0, t3, 2850f
                  auipc        t1, 667777
                  add          a7, ra, t6
                  slli         t5, a6, 3
                  lui          a3, 732771
2847:             blt          s7, t3, 2860f
                  andi         a3, t2, -152
                  sub          sp, s5, t2
2850:             sub          s5, s8, s7
                  srl          t6, tp, gp
                  add          a4, t1, s6
2853:             sub          s8, ra, s10
                  ori          a1, s10, -1074
                  srli         a7, s3, 11
                  andi         s0, t0, -170
                  srai         a5, sp, 16
                  blt          a4, s10, 2875f
                  xor          sp, t6, s8
2860:             nop
                  ori          a6, a4, 1051
                  bgeu         a3, a6, 2868f
                  slti         t1, t4, -752
                  slti         s7, a7, 866
                  sll          ra, t5, sp
                  or           s8, a2, t2
                  xor          s3, s4, s9
2868:             sltiu        a4, t4, 1922
                  add          s6, s0, a3
                  srai         a7, a2, 13
                  andi         sp, t2, -675
                  sub          t1, sp, sp
                  srli         s8, t2, 7
                  bgeu         a5, t5, 2886f
2875:             srai         s3, s4, 19
                  beq          s5, a0, 2892f
                  slti         s7, a7, 1930
                  xor          a1, s5, s5
                  sub          a3, s8, a1
                  beq          tp, s11, 2884f
                  ori          sp, a2, -127
                  slti         s6, a6, -305
                  srl          s5, a6, a6
2884:             xori         s3, a0, -849
                  add          s10, a4, s3
2886:             srl          s0, sp, t2
                  or           t0, s0, a2
                  or           a1, zero, t4
                  ori          t3, s1, -1584
                  sub          gp, a3, t6
                  bgeu         s4, s2, 2911f
2892:             sub          gp, s3, sp
                  addi         a7, a3, 1523
                  slli         t6, s7, 27
                  sub          s11, s10, a5
                  slli         s0, zero, 7
                  andi         s10, s5, 1563
                  sltiu        s7, t2, 763
                  sltu         s4, gp, a1
                  ori          t6, sp, -58
                  sra          a4, s4, s5
                  or           s1, s6, s9
                  bgeu         s2, t1, 2920f
                  slt          s0, zero, zero
                  addi         s2, t0, -1068
                  srai         sp, s3, 10
                  add          a6, t0, s10
                  bne          zero, a5, 2911f
                  and          t0, a5, a1
                  sra          s6, ra, t5
2911:             nop
                  auipc        s11, 898939
                  bltu         zero, a0, 2920f
                  beq          s3, s9, 2915f
2915:             slti         s0, t1, -1244
                  sll          s1, a1, s3
                  nop
                  slti         t3, t6, 1190
                  sll          a0, s9, s3
2920:             or           t3, t1, t6
                  sltu         s3, t5, s1
                  sltiu        s8, a1, -1466
                  addi         sp, t5, 0
                  bgeu         s10, s1, 2933f
                  slli         a4, s2, 28
                  blt          s7, s11, 2930f
                  sub          t4, a2, s0
                  addi         a1, t6, 969
                  xor          a0, s10, s11
2930:             bne          t1, t3, 2936f
                  slt          t1, a1, s9
                  sra          s6, gp, sp
2933:             xori         s10, s5, 1130
                  addi         s1, a7, -694
                  andi         s4, t0, 695
2936:             sub          sp, a1, s4
                  beq          t2, s7, 2950f
                  andi         t1, t4, 625
                  slti         sp, t0, -1895
                  bne          ra, s9, 2949f
                  xor          s1, sp, s7
                  ori          t1, ra, 746
                  blt          a1, s0, 2961f
                  sub          t1, s2, a6
                  slli         t5, s4, 31
                  bltu         t1, s6, 2955f
                  sra          s1, a4, t3
                  addi         a7, a0, -1800
2949:             slli         zero, a3, 2
2950:             slli         a0, s0, 21
                  add          zero, a0, s0
                  or           t0, a1, s10
                  auipc        s2, 860296
                  xori         a4, a0, 1015
2955:             and          a3, s2, t1
                  srli         s5, t5, 20
                  slt          s1, s4, s8
                  sra          zero, ra, a7
                  nop
                  sltu         sp, sp, s5
2961:             bne          zero, ra, 2979f
                  slt          t6, s0, a7
                  slti         sp, a4, -389
                  and          a7, s10, s4
                  sltu         a7, tp, s10
                  lui          zero, 648563
                  sltiu        ra, ra, -934
                  sra          a0, a1, a4
                  ori          a7, t4, 627
                  xor          s6, s10, t6
                  bne          a0, s4, 2979f
                  xor          a7, s6, t0
                  sltiu        s8, s2, -372
                  bltu         t5, t1, 2994f
                  slti         s5, zero, 934
                  bltu         s3, t0, 2986f
                  bgeu         tp, tp, 2994f
                  or           t0, s3, tp
2979:             or           t3, t6, a2
                  srl          s8, t2, gp
                  sra          a0, sp, s6
                  beq          ra, s6, 3000f
                  xori         zero, t6, -709
                  blt          a0, s10, 2997f
                  sltu         t5, a7, t0
2986:             sub          a2, s8, s11
                  srai         a7, s4, 28
                  bgeu         s11, s1, 2999f
                  sub          sp, s6, s2
                  andi         s3, tp, 2015
                  bltu         s6, t6, 2998f
                  or           sp, a6, ra
                  blt          t3, ra, 3007f
2994:             auipc        s2, 889386
                  xori         gp, t5, -198
                  add          s5, s5, t5
2997:             xori         t6, s11, -402
2998:             xori         s6, s4, -1638
2999:             slli         s10, a3, 12
3000:             slli         s6, s11, 10
                  xori         t1, a5, -391
                  slli         gp, gp, 2
                  sll          a5, t2, sp
                  sltiu        zero, s0, -1006
                  sub          a5, a7, s4
                  sra          s5, t2, s0
3007:             andi         a2, s9, -1224
                  bltu         t0, ra, 3011f
                  or           t0, s11, zero
                  bltu         t1, t4, 3023f
3011:             nop
                  sltiu        a7, a0, -46
                  slli         t4, s2, 0
                  srl          s4, tp, s9
                  addi         a5, s9, 1389
                  nop
                  blt          t2, a1, 3030f
                  sltiu        zero, ra, -596
                  slt          s11, s7, s2
                  beq          s0, ra, 3029f
                  bge          gp, s7, 3039f
                  slli         s10, s6, 28
3023:             srli         a6, t6, 29
                  blt          a3, ra, 3036f
                  sltiu        t6, a7, 396
                  lui          a3, 995941
                  bltu         sp, t0, 3043f
                  add          a5, s8, s0
3029:             slti         s3, t3, 1931
3030:             addi         gp, s3, -213
                  slti         s3, a0, 499
                  srai         s3, t6, 0
                  srli         s4, gp, 25
                  slli         s5, s7, 31
                  bne          s6, tp, 3039f
3036:             slt          t4, a5, s11
                  sltiu        a7, s5, -945
                  bgeu         a0, s4, 3046f
3039:             xori         t1, s5, 668
                  srl          t0, t6, a6
                  bne          t3, s1, 3050f
                  bltu         s11, t0, 3062f
3043:             sub          a4, s8, a4
                  ori          ra, ra, 1206
                  xori         s6, s0, -1896
3046:             sltiu        a1, ra, 961
                  srai         s4, s0, 14
                  slt          s3, t1, t0
                  add          t5, t2, t3
3050:             sltiu        s10, a7, -979
                  sll          s3, a5, s7
                  sub          gp, t6, t0
                  lui          t1, 528285
                  sltu         s4, a2, s10
                  slli         a2, a1, 6
                  slti         a1, a6, 585
                  addi         a2, s7, 1202
                  addi         s2, t2, 1061
                  bgeu         s5, s1, 3060f
3060:             sltiu        s1, t0, 1628
                  xor          t4, a2, s6
3062:             xor          ra, a2, t1
                  lui          s10, 337059
                  beq          s2, s2, 3082f
                  bne          t0, s0, 3074f
                  lui          a0, 683877
                  bne          t5, s7, 3084f
                  slti         ra, t5, 950
                  xor          t4, t1, t6
                  sltu         t3, s6, s11
                  lui          a0, 1007417
                  sra          s7, s7, a5
                  xori         t6, t4, -188
3074:             sltiu        a4, a0, 894
                  beq          a1, t3, 3092f
                  lui          t0, 165482
                  and          s10, s2, s0
                  srai         s2, s5, 6
                  srl          a4, a0, t4
                  sub          t5, t1, s11
                  lui          s7, 94662
3082:             blt          a2, t0, 3099f
                  bgeu         t5, s6, 3086f
3084:             sub          t5, s10, s11
                  ori          s6, s9, -2025
3086:             bltu         s2, gp, 3092f
                  sll          a1, s3, s6
                  sll          a0, t2, ra
                  srai         a6, t0, 6
                  nop
                  srli         s5, t6, 6
3092:             bne          t6, t4, 3103f
                  slli         a5, s4, 17
                  xor          a2, t4, s5
                  bgeu         s10, zero, 3105f
                  ori          sp, sp, 487
                  and          t0, s3, a4
                  sub          t5, s5, s5
3099:             xori         t0, s10, -1716
                  beq          gp, s0, 3120f
                  xor          t0, a6, s0
                  bne          s7, tp, 3115f
3103:             srai         a3, t6, 21
                  sltiu        s3, t0, 1060
3105:             sub          a5, s2, s6
                  or           s0, s2, t5
                  bltu         s6, s6, 3125f
                  sltu         gp, t2, t6
                  sub          s0, s4, t6
                  sll          s6, a6, s10
                  xori         s6, ra, 1311
                  ori          a5, gp, 522
                  add          ra, s8, t6
                  bne          a3, s4, 3117f
3115:             srli         zero, zero, 17
                  sltiu        gp, s2, -951
3117:             addi         s1, a6, -1959
                  ori          s3, a5, -1352
                  srli         s5, t3, 17
3120:             xor          t5, a6, ra
                  addi         s0, a7, 1126
                  bltu         a2, s7, 3128f
                  srl          a0, t2, a6
                  srai         s8, a5, 12
3125:             slt          s6, s1, sp
                  sub          s8, a1, t3
                  srl          a3, a5, s0
3128:             xor          t4, s8, s10
                  bltu         s2, ra, 3143f
                  auipc        s0, 115387
                  srli         s8, zero, 12
                  add          s1, a5, s4
                  nop
                  srli         ra, a7, 24
                  nop
                  sltu         sp, s2, s1
                  srai         s5, s7, 15
                  ori          a4, a1, -1310
                  bgeu         sp, t4, 3146f
                  srai         s10, s8, 25
                  xor          s0, s10, s4
                  srai         ra, s5, 6
3143:             andi         s4, a3, 1066
                  or           a4, s3, sp
                  auipc        s4, 377184
3146:             beq          a4, s11, 3153f
                  bge          s0, ra, 3155f
                  bltu         t1, a3, 3152f
                  auipc        s8, 854647
                  sub          s8, s5, t6
                  slt          t1, a3, s8
3152:             bne          t5, t5, 3163f
3153:             sltu         a5, s10, a3
                  slt          s2, t5, zero
3155:             bne          s10, t3, 3164f
                  srl          ra, t2, t0
                  beq          a3, a0, 3158f
3158:             srli         s2, s7, 8
                  slti         s8, t1, 348
                  blt          s1, a5, 3177f
                  or           s2, s10, t2
                  auipc        s11, 399255
3163:             bgeu         t5, t4, 3169f
3164:             bge          s1, s9, 3174f
                  nop
                  srl          s7, s5, t6
                  nop
                  sltu         s3, t0, s8
3169:             bgeu         tp, a1, 3172f
                  or           s7, gp, t0
                  sltu         sp, t0, a1
3172:             andi         s3, a7, -608
                  and          ra, a1, s10
3174:             slti         gp, s9, 1602
                  sll          zero, tp, a7
                  sltiu        a0, s11, -1348
3177:             sll          s11, a7, t4
                  nop
                  sra          s3, s4, s10
                  xor          a2, t2, t2
                  sra          t6, s6, s8
                  andi         s5, a7, -1880
                  or           t5, tp, a2
                  srli         a1, s9, 14
                  blt          a2, s9, 3202f
                  auipc        s2, 234987
                  sub          s3, s9, tp
                  sltu         s11, gp, a7
                  bne          s9, a5, 3198f
                  srli         t0, a1, 31
                  bltu         tp, s6, 3199f
                  blt          t3, t1, 3198f
                  addi         s1, t0, 320
                  sltiu        t5, t5, 1116
                  and          a4, a0, t0
                  addi         a6, a6, -1771
                  bne          s0, s7, 3206f
3198:             srai         s1, t6, 26
3199:             bge          t1, a4, 3216f
                  andi         zero, a1, 1224
                  srl          s7, a1, sp
3202:             srli         zero, t1, 5
                  add          s1, s5, s1
                  add          s10, s2, a2
                  beq          a3, s10, 3221f
3206:             lui          s8, 79728
                  xori         s5, gp, -1976
                  addi         t3, gp, -1123
                  srli         a4, t5, 21
                  addi         s10, sp, -336
                  srli         a1, a0, 12
                  sltu         s11, a3, sp
                  sltiu        s3, a3, 2011
                  srai         s5, s2, 20
                  addi         t6, s3, 335
3216:             sra          s3, a3, sp
                  srl          s7, s8, s10
                  bge          a2, s2, 3225f
                  sra          t0, zero, a4
                  sltu         t0, a5, t4
3221:             sll          s6, s9, t2
                  sll          t3, tp, a1
                  slt          a0, a6, s11
                  lui          t6, 147756
3225:             slli         s2, a2, 27
                  srai         t0, t5, 11
                  xori         a2, a0, -382
                  blt          s7, s8, 3246f
                  slti         t5, zero, 487
                  ori          ra, t3, 1072
                  beq          t0, t0, 3244f
                  bgeu         s11, t6, 3246f
                  slli         a1, a5, 9
                  srl          s3, a6, gp
                  andi         s2, s4, 1133
                  sltiu        a6, zero, -925
                  and          s2, s4, t0
                  bgeu         s1, a4, 3245f
                  sra          ra, zero, t3
                  and          a6, t2, s5
                  xori         gp, ra, -453
                  srl          s1, s8, ra
                  sll          s7, t3, a1
3244:             slti         a2, t6, -1289
3245:             slti         t0, s4, -111
3246:             xor          a4, a0, s6
                  bne          a2, s11, 3251f
                  srai         a3, a7, 28
                  and          t0, s5, a6
                  add          a7, s6, a1
3251:             srl          gp, tp, s1
                  bltu         t2, s9, 3265f
                  and          zero, a5, s4
                  bne          t3, sp, 3274f
                  xori         t3, s4, -1616
                  nop
                  nop
                  slti         gp, tp, -1654
                  srli         s6, s9, 13
                  sll          a2, s4, t0
                  nop
                  auipc        sp, 201179
                  beq          a0, a3, 3281f
                  sub          s0, s1, s10
3265:             andi         a6, s2, 1893
                  sltiu        a3, s8, -344
                  xori         a1, s11, -451
                  beq          s1, s1, 3272f
                  sltiu        t3, s11, -719
                  bne          zero, a5, 3273f
                  xori         s3, t2, -1867
3272:             bltu         s1, t6, 3292f
3273:             beq          sp, s0, 3281f
3274:             bltu         s0, s8, 3292f
                  srli         t1, s4, 9
                  lui          s1, 856965
                  sub          s10, a2, a2
                  srli         sp, t3, 28
                  nop
                  bne          tp, t1, 3292f
3281:             srl          s8, s10, t0
                  nop
                  sll          s7, a2, ra
                  ori          a0, s3, 1727
                  addi         a6, a4, -1109
                  sra          t4, s7, s8
                  slti         a2, t5, -1484
                  beq          a2, t0, 3301f
                  addi         a3, s5, 1211
                  srl          s3, t0, s4
                  srli         s3, ra, 10
3292:             lui          s1, 988382
                  srli         a4, t3, 2
                  or           a6, ra, zero
                  nop
                  andi         t0, s8, 1698
                  beq          a1, s10, 3315f
                  xor          gp, a2, t3
                  srli         zero, s9, 2
                  bltu         s1, ra, 3313f
3301:             sltu         t1, s4, t1
                  nop
                  add          a7, a6, a2
                  xor          s7, gp, a3
                  andi         a6, s2, -1726
                  bge          ra, a6, 3313f
                  xor          a1, a4, gp
                  add          a0, sp, a4
                  srl          t1, zero, s2
                  auipc        s4, 168506
                  nop
                  sub          a6, s5, t1
3313:             addi         s7, ra, 763
                  andi         t3, a1, -1329
3315:             srli         t5, zero, 24
                  srl          s0, s2, t1
                  nop
                  slt          t0, a5, t6
                  sltu         gp, s2, ra
                  sra          s3, zero, s6
                  slt          gp, t4, ra
                  srl          t0, t0, s1
                  add          a3, s10, t0
                  nop
                  slli         t3, a7, 26
                  xori         s0, sp, 1260
                  beq          s9, s5, 3328f
3328:             bltu         zero, t3, 3344f
                  sltiu        s7, s7, -254
                  add          s5, a7, s11
                  auipc        s5, 559437
                  nop
                  slli         a7, s1, 30
                  srli         t3, a4, 31
                  addi         s1, t6, 1741
                  sltiu        a0, s4, 294
                  bge          a4, a7, 3341f
                  bltu         s11, zero, 3344f
                  slli         t0, a1, 19
                  andi         s3, s9, -365
3341:             bltu         s11, s10, 3349f
                  lui          sp, 889675
                  bne          a3, s1, 3356f
3344:             srli         a1, zero, 10
                  sltiu        s4, s7, -282
                  bgeu         a6, t4, 3363f
                  andi         s2, t2, -1685
                  beq          s4, sp, 3357f
3349:             xori         a4, a0, -266
                  addi         s4, s6, 98
                  auipc        a0, 411844
                  sll          s5, a7, t3
                  lui          t5, 426555
                  sub          s7, t1, s7
                  or           t3, s3, s10
3356:             lui          a0, 987608
3357:             or           s10, a7, s1
                  sltu         a1, s1, s6
                  lui          s11, 166087
                  sll          a6, s11, ra
                  slti         s8, a4, -984
                  srai         t3, tp, 11
3363:             bge          a1, s10, 3372f
                  ori          t0, tp, 1293
                  lui          gp, 444814
                  or           a1, s0, gp
                  sltu         s11, a3, s4
                  auipc        s11, 854129
                  and          a1, ra, t2
                  auipc        sp, 1008511
                  xor          t3, s10, s5
3372:             lui          a1, 723161
                  srl          t5, t3, s10
                  bge          zero, a0, 3392f
                  sra          s3, s1, a1
                  slli         a7, s2, 7
                  srli         a6, s6, 23
                  ori          s7, a3, -1675
                  lui          gp, 381589
                  lui          s6, 607856
                  srl          s0, t4, s6
                  sra          s3, s0, gp
                  bge          s8, t1, 3403f
                  lui          s0, 185393
                  slli         t5, s9, 8
                  slt          t4, s7, t2
                  addi         a3, s4, -152
                  bge          zero, a2, 3394f
                  bltu         a4, s7, 3399f
                  srli         s6, s2, 28
                  add          s8, t4, s7
3392:             auipc        a7, 352768
                  slli         s6, t0, 11
3394:             xor          ra, s6, a0
                  srl          t3, a4, a6
                  slt          t6, zero, t6
                  add          t3, a6, a6
                  slti         s3, s5, 1441
3399:             srai         s8, t1, 28
                  or           sp, t6, sp
                  blt          t6, t3, 3418f
                  andi         ra, a6, -1643
3403:             xor          sp, s10, a6
                  xori         a1, s4, -167
                  add          gp, s6, tp
                  add          s10, s3, a0
                  and          a2, t2, s9
                  and          zero, s8, a0
                  sltu         s5, t0, a2
                  slli         s7, t5, 21
                  ori          a3, s5, 1175
                  auipc        a4, 944939
                  sra          s2, t5, a2
                  andi         t6, t1, -1866
                  slt          gp, a7, s6
                  sltiu        a4, t3, 1772
                  bne          a3, s9, 3420f
3418:             slli         t3, a2, 21
                  add          s5, s3, t4
3420:             slti         s7, s6, 1716
                  auipc        a4, 98296
                  slli         a6, s4, 9
                  sra          sp, a7, s5
                  andi         s1, s3, 848
                  sra          t5, a3, s11
                  bgeu         zero, s5, 3430f
                  andi         a2, s4, -1301
                  sub          s7, s1, s8
                  sub          t1, t0, s10
3430:             sub          t5, s6, s11
                  bgeu         a6, s3, 3444f
                  auipc        a6, 769948
                  andi         t3, t5, -388
                  slli         s10, s6, 24
                  xor          t5, t4, s4
                  srl          a1, a6, a3
                  and          a1, a6, a3
                  nop
                  andi         t6, zero, 177
                  bne          t1, s7, 3460f
                  sltiu        gp, s0, -1542
                  andi         t5, s8, -152
                  blt          a0, s4, 3457f
3444:             add          s6, s8, s11
                  bgeu         gp, a2, 3462f
                  bgeu         t4, a1, 3457f
                  auipc        s5, 747694
                  andi         sp, s10, 900
                  srli         a2, a7, 30
                  srai         s11, s3, 9
                  slli         a1, sp, 25
                  auipc        t5, 552630
                  sltiu        zero, a1, 1923
                  srl          s4, tp, t2
                  sltu         t5, t0, tp
                  sub          a4, s11, a3
3457:             nop
                  blt          t6, s11, 3476f
                  addi         t1, s7, 112
3460:             ori          a6, tp, -1760
                  andi         a4, s10, 1051
3462:             lui          t4, 318833
                  bgeu         t1, s6, 3470f
                  beq          s8, a1, 3476f
                  ori          t4, a2, -693
                  lui          s11, 240448
                  bne          a7, s10, 3476f
                  sub          a6, t4, s2
                  sub          s3, s5, a6
3470:             sltu         s8, s9, a3
                  nop
                  la           s4, region_0+1739 #start riscv_load_store_rand_instr_stream_21
                  lbu          s8, -37(s4)
                  lbu          a4, 56(s4)
                  sltu         s11, t3, s9
                  sb           a0, -6(s4)
                  lbu          s5, -43(s4)
                  lh           a1, -29(s4)
                  sb           t5, -61(s4)
                  sh           zero, -47(s4)
                  lhu          ra, -45(s4)
                  lb           s6, -62(s4)
                  sb           s4, 52(s4)
                  sb           s1, -31(s4)
                  lbu          t6, -12(s4)
                  add          t6, a5, s0
                  slli         t1, a7, 30
                  and          t6, a6, t1
                  sb           gp, -13(s4)
                  srli         t6, s8, 12
                  slti         t5, s11, -673
                  lb           t3, -34(s4)
                  srl          a5, s1, s6
                  lb           s0, -14(s4)
                  lbu          gp, -41(s4)
                  lbu          ra, -63(s4)
                  lh           a3, 45(s4)
                  sb           s5, -29(s4)
                  lbu          gp, -54(s4)
                  sb           zero, 30(s4)
                  andi         s1, t4, 1493
                  nop
                  sltiu        s2, t3, -950
                  lbu          s11, -23(s4)
                  lw           a5, -7(s4) #end riscv_load_store_rand_instr_stream_21
                  beq          t6, t0, 3480f
                  auipc        a6, 918419
                  andi         t5, t6, -1936
                  bne          s8, s11, 3478f
3476:             addi         t5, s5, -887
                  bge          a3, a4, 3481f
3478:             or           t3, t2, t1
                  sra          t1, t1, ra
3480:             blt          t6, s10, 3481f
3481:             sltiu        t0, s6, -1870
                  lui          a4, 577396
                  sll          zero, s4, a2
                  sll          a0, sp, s0
                  lw           t1, 4(tp)
                  sra          s7, tp, a7
                  slli         a2, t6, 29
                  slli         s5, s4, 26
                  addi         tp, tp, 28
                  or           s11, s2, a4
                  lui          t6, 300816
                  sltiu        t5, s10, 1776
                  srli         s8, a4, 7
4579:             addi x24, x6, 1
4579:             jalr x24, x24, 0
sub_5:            and          s11, t0, s4
                  xori         s8, t3, 620
                  addi         tp, tp, -16
                  sw           t1, 4(tp)
                  addi         a5, s5, 1650
                  and          s6, gp, gp
                  sub          s4, gp, t6
                  xor          a2, s0, s9
                  sltu         gp, s11, t2
                  srai         t6, a2, 21
                  nop
                  and          a4, s2, t3
                  la           s3, sub_10
                  addi         s3, s3, -636
                  sub          s8, s2, a7
                  sra          a3, s0, t6
sub_5_j11:        jalr         t1, s3, 636 #jump sub_5 -> sub_10
                  sll          s3, s3, s0
                  ori          s10, ra, 2013
                  slt          s10, t3, s0
                  addi         s10, a2, -1933
                  sra          a6, s0, gp
                  beq          t2, t6, 21f
                  auipc        s2, 828783
                  xori         s5, s11, -1432
                  sll          t5, t6, s7
                  srai         s8, t1, 3
                  srl          a4, t2, zero
                  srai         t4, a6, 5
                  sltu         gp, s5, s10
                  andi         s1, a5, 1662
                  sra          t1, t3, s0
                  sll          a2, zero, s9
                  xor          gp, s2, s6
                  xor          zero, s5, s6
                  slt          zero, sp, s5
                  nop
                  srl          a1, s8, t3
21:               auipc        s3, 289929
                  bgeu         gp, s10, 25f
                  sll          sp, tp, a1
                  sltiu        a5, a4, 1521
25:               andi         s8, gp, 18
                  xori         a6, s9, 720
                  sltiu        t0, s4, 868
                  or           s6, a7, a3
                  srl          a2, ra, t4
                  auipc        t5, 563295
                  auipc        a6, 125237
                  srai         sp, t0, 28
                  srli         a3, a3, 29
                  ori          a4, a4, 237
                  andi         s1, a3, 1475
                  and          s4, t3, a6
                  xori         t6, gp, -1412
                  andi         s5, tp, 1030
                  slli         a1, zero, 30
                  ori          a7, sp, 931
                  sll          s10, a2, t4
                  sltiu        a5, a5, 411
                  sra          a3, a2, a0
                  bne          tp, t0, 52f
                  bltu         ra, s4, 52f
                  sll          s11, a1, s4
                  sltu         zero, a3, s4
                  srli         t4, s1, 28
                  blt          s11, tp, 52f
                  and          t0, s5, s3
                  sll          s11, a4, a3
52:               slt          s4, s3, s8
                  sra          a2, a3, zero
                  lw           t1, 4(tp)
                  addi         tp, tp, 16
                  auipc        t6, 552602
                  and          t3, a0, tp
75:               addi x2, x6, 0
75:               jalr x2, x2, 0
sub_2:            srai         s2, a7, 12
                  srli         s11, t5, 16
                  blt          s6, s5, sub_2_stack_p
                  slli         s3, t4, 25
sub_2_stack_p:    addi         tp, tp, -8
                  sltiu        a4, a0, 2035
                  sw           t1, 4(tp)
                  lui          zero, 983331
                  sltu         t3, s3, t6
                  lui          a0, 304278
                  bne          a4, zero, sub_2_j4 #branch to jump instr
                  sll          zero, gp, t4
                  add          a0, zero, t0
                  xor          s0, sp, s1
                  sub          s1, t2, tp
                  sra          ra, sp, s3
                  or           t1, zero, a2
sub_2_j4:         jal          t1, sub_4 #jump sub_2 -> sub_4
                  beq          t3, a1, 1f
1:                bne          t3, s11, 2f
2:                add          s11, t2, s5
                  bltu         s0, ra, 18f
                  beq          s4, s0, 17f
                  srli         t3, a4, 17
                  andi         a2, a2, -1774
                  sra          s10, s6, s7
                  sra          s2, t2, t3
                  sub          t0, s9, t4
                  sltiu        gp, s7, 280
                  xori         gp, s7, -1939
                  beq          a0, s9, 15f
                  bgeu         s2, s8, 33f
                  or           a4, a3, t2
15:               andi         a5, ra, 1567
                  srli         t4, s5, 6
17:               add          s0, t3, t0
18:               slti         s6, a3, -84
                  bne          t2, ra, 20f
20:               bltu         t1, t4, 24f
                  xori         t0, a1, 1653
                  beq          s0, a7, 34f
                  or           gp, s2, s11
24:               addi         sp, t3, -1929
                  bne          t5, s11, 34f
                  bgeu         a1, t5, 37f
                  or           a1, s1, t2
                  andi         s11, s8, -432
                  slti         s8, s1, -680
                  beq          s5, a6, 41f
                  addi         s4, a4, -238
                  xori         s0, s0, -1116
33:               bgeu         zero, a6, 47f
34:               auipc        t5, 792428
                  add          a4, zero, a0
                  auipc        ra, 450061
37:               and          sp, t3, s8
                  blt          a0, a2, 54f
                  add          a4, sp, s10
                  srai         s4, zero, 11
41:               sltiu        a3, t2, -228
                  sltiu        a6, s0, -2027
                  ori          s8, t5, 1872
                  ori          s1, s9, -915
                  sltiu        t5, s2, -802
                  bltu         a0, s3, 48f
47:               nop
48:               bgeu         t3, t5, 56f
                  slli         a7, t4, 25
                  auipc        s0, 359699
                  slt          a5, s4, a7
                  nop
                  beq          s5, a6, 63f
54:               blt          a1, a3, 60f
                  xori         a0, t4, -1832
56:               srai         s3, tp, 26
                  sub          s3, a2, gp
                  sltiu        t4, s5, -660
                  xor          t4, s6, t2
60:               xor          t6, sp, s5
                  sra          s6, s9, gp
                  slt          a7, s7, gp
63:               sltu         s5, t1, tp
                  srli         t1, a3, 7
                  sltu         t4, s1, t1
                  slt          ra, s11, a2
                  add          s10, t1, s7
                  auipc        t5, 22726
                  beq          tp, a5, 72f
                  sub          a4, s1, t6
                  bne          s6, a3, 83f
72:               sltu         s4, a4, t6
                  sra          t0, s0, s4
                  srl          a2, a7, s2
                  ori          t5, s9, -267
                  sra          t3, t3, s9
                  sltiu        a2, gp, -1980
                  srli         sp, s3, 15
                  sltu         t6, a3, a7
                  slli         sp, t5, 6
                  srli         s10, t0, 23
                  ori          t5, s10, 1591
83:               bltu         tp, a6, 101f
                  srai         s7, s7, 23
                  slli         s1, a1, 28
                  srai         a4, t6, 22
                  bge          t1, tp, 95f
                  sltiu        t3, t0, 37
                  ori          a1, tp, -1179
                  addi         t1, a0, 585
                  addi         s6, ra, -213
                  sll          t6, t5, ra
                  bge          a6, s8, 94f
94:               sltu         s11, a1, gp
95:               lui          s1, 235433
                  and          s0, s10, t5
                  xor          s3, ra, t2
                  ori          t5, a7, -1623
                  sub          zero, zero, a0
                  xor          a4, a2, s1
101:              srli         sp, t5, 3
                  lui          t4, 590313
                  addi         a1, t1, 1117
                  add          s3, t5, s1
                  sltiu        ra, s2, -1070
                  lui          a6, 264592
                  srl          a1, t6, s5
                  bne          t4, a0, 110f
                  srl          s1, t2, a2
110:              addi         t0, s3, 79
                  and          ra, s6, s1
                  addi         gp, t2, -649
                  lw           t1, 4(tp)
                  sltiu        s6, s10, -45
                  addi         tp, tp, 8
                  xori         s5, a6, 1928
                  srl          s0, s5, s6
                  xori         a0, t3, -1951
137:              addi x12, x6, 0
137:              jalr x12, x12, 0
sub_6:            sra          t4, t4, a5
                  slt          ra, t2, s0
                  addi         tp, tp, -36
                  srai         s6, a7, 16
                  sltiu        a4, t2, -48
                  ori          s3, s7, 313
                  ori          t6, a4, -395
                  slli         sp, a3, 15
                  sltiu        s8, s9, -544
                  sw           t1, 4(tp)
                  srli         s8, a6, 0
                  slli         t6, s2, 5
                  ori          a6, s11, -302
                  sra          s11, sp, a6
                  bne          t6, t1, 8f
                  sll          s10, t4, t5
                  and          s8, a6, sp
                  xori         s1, s0, -771
                  sltu         s8, gp, ra
                  xor          t0, s10, t6
8:                bge          a4, t1, 12f
                  bgeu         zero, t2, 10f
10:               andi         a3, a2, 958
                  lui          s8, 832056
12:               andi         a7, t6, -386
                  slli         s7, zero, 7
                  slti         t5, s9, -1035
                  sra          a3, ra, t6
                  slli         s2, s1, 22
                  srai         t0, zero, 30
                  nop
                  andi         s8, t1, 607
                  xori         zero, t5, -1145
                  bge          s4, s11, 32f
                  sll          s6, s2, a2
                  slt          a7, s1, a3
                  ori          zero, a7, -1859
                  sltiu        t4, a1, 258
                  srli         a5, s5, 31
                  lui          t4, 574238
                  addi         ra, s4, 894
                  bge          a3, t3, 46f
                  or           a4, t0, s10
                  sra          s5, t6, s0
32:               beq          a1, a6, 48f
                  bne          s7, s10, 48f
                  slli         a5, t1, 0
                  srai         s3, t6, 16
                  and          s8, t2, sp
                  xori         t3, a6, -656
                  sll          s1, t4, t0
                  addi         s3, t1, 1595
                  beq          s11, s6, 48f
                  auipc        a7, 369060
                  sltu         s1, a1, t5
                  slli         zero, s6, 1
                  bge          s5, s1, 47f
                  slli         s3, a2, 13
46:               srli         zero, s8, 15
47:               sltu         t4, t4, s8
48:               auipc        t3, 182744
                  lw           t1, 4(tp)
                  and          s5, s7, s8
                  xori         a5, t5, 366
                  addi         tp, tp, 36
                  sub          t0, a2, s10
                  slli         a0, a6, 25
                  slti         t6, s4, 71
                  sltu         s4, t2, s0
                  lui          a4, 94367
70:               addi x24, x6, 1
70:               jalr x24, x24, 0
sub_1:            sll          s7, s0, a2
                  sltiu        t6, t6, -724
                  slli         sp, t3, 7
                  bltu         s6, s1, sub_1_stack_p
sub_1_stack_p:    addi         tp, tp, -20
                  or           zero, s9, sp
                  sw           t1, 4(tp)
                  addi         a0, s9, -810
                  sltiu        t5, t3, 381
                  andi         gp, tp, 1915
                  srl          s8, t5, tp
                  la           s1, region_0+371 #start riscv_load_store_rand_instr_stream_4
                  sra          s11, t3, gp
                  lb           s2, 12(s1)
                  nop
                  sra          a4, s2, a7
                  xori         s3, s8, -212
                  ori          t1, s1, -417
                  lhu          s5, -11(s1)
                  sb           t2, -2(s1)
                  ori          zero, a3, 2025
                  slt          a1, a6, a1
                  xor          s7, ra, s11
                  lbu          s6, 8(s1)
                  sra          s11, ra, ra
                  lhu          a1, -15(s1)
                  lbu          t0, 2(s1)
                  lhu          t6, -1(s1)
                  lh           a4, 1(s1)
                  lbu          t3, -5(s1)
                  lb           t3, 10(s1)
                  lbu          sp, 4(s1)
                  lh           s5, 13(s1)
                  sb           s1, -8(s1)
                  xor          a7, s9, s2
                  nop
                  lbu          s10, 8(s1)
                  lh           zero, -5(s1)
                  lb           a6, -5(s1)
                  lbu          gp, -6(s1)
                  ori          a2, a2, 1387
                  ori          a7, a0, 1513
                  sb           sp, -12(s1)
                  lbu          a0, -2(s1)
                  addi         a1, a4, 1206
                  sb           t3, -9(s1)
                  lui          s5, 690522
                  lbu          a7, -1(s1)
                  lw           a0, 9(s1) #end riscv_load_store_rand_instr_stream_4
                  la           a1, region_1+1817 #start riscv_load_store_rand_instr_stream_2
                  lbu          s3, 2(a1)
                  sub          s0, t4, a5
                  auipc        gp, 664138
                  nop
                  lbu          zero, -4(a1)
                  sb           s7, 0(a1)
                  addi         a0, t4, -1198
                  lbu          a4, -7(a1)
                  sb           t3, 16(a1)
                  lbu          s5, -3(a1)
                  lbu          s11, -14(a1)
                  sh           a4, 3(a1)
                  sb           s1, 1(a1)
                  sh           s2, 15(a1)
                  lbu          a4, -8(a1)
                  lb           ra, 13(a1)
                  lbu          s3, 4(a1)
                  lbu          s2, -8(a1)
                  auipc        s7, 486002
                  srl          s8, t0, s9
                  auipc        zero, 227068
                  lbu          t1, -2(a1)
                  lbu          s4, 14(a1)
                  xori         s7, s3, 1228
                  nop
                  lui          a2, 758876
                  srli         a7, a0, 27
                  add          s3, zero, s0
                  lbu          t5, 10(a1)
                  lh           t5, 11(a1)
                  sb           t4, 0(a1)
                  sh           t3, -11(a1)
                  lhu          t5, 11(a1)
                  sb           ra, 2(a1)
                  sb           s10, -10(a1)
                  lh           zero, 1(a1)
                  lbu          t5, 5(a1)
                  xori         a2, s7, -2039
                  auipc        gp, 550830
                  slli         gp, sp, 26
                  sh           s11, 5(a1)
                  slt          t5, s9, tp
                  lhu          a0, -15(a1)
                  lhu          s4, 15(a1)
                  lbu          a4, -2(a1)
                  lb           a0, 3(a1) #end riscv_load_store_rand_instr_stream_2
                  la           s4, region_0+782 #start riscv_load_store_rand_instr_stream_0
                  lbu          t5, -181(s4)
                  nop
                  sh           s11, 236(s4)
                  sra          t5, a2, a1
                  and          a3, s2, a5
                  lb           t3, -219(s4)
                  sb           ra, -63(s4)
                  slli         ra, a5, 31
                  addi         zero, t5, -2043
                  lb           a2, -253(s4)
                  sll          s8, s3, s9
                  xor          a2, a0, s4
                  lhu          s2, -200(s4)
                  or           a2, t0, s6
                  srli         s3, s10, 3
                  lbu          a5, 209(s4)
                  lb           s6, -33(s4)
                  srl          a6, gp, t3
                  lb           s6, -65(s4)
                  xor          t1, a7, t4
                  sll          ra, ra, s1
                  ori          s10, a5, -1922
                  lhu          s3, -96(s4)
                  and          s10, a6, a4
                  slt          t1, t2, s5
                  slti         gp, s6, 667
                  and          sp, s8, t3
                  xori         t1, t6, -1761
                  xor          t1, a4, a3
                  sb           zero, 85(s4) #end riscv_load_store_rand_instr_stream_0
                  slti         s4, s9, 18
                  beq          sp, s9, 19f
                  beq          s4, s4, 14f
                  addi         s1, s6, -61
                  slli         a1, s10, 5
                  sltiu        s10, t1, -1051
                  srai         s0, a2, 26
                  bge          sp, a4, 15f
                  beq          s5, a2, 14f
                  xor          s7, gp, t3
                  sub          t0, t1, s11
                  sltu         a4, s4, a6
                  nop
                  nop
14:               bltu         a5, t2, 32f
15:               addi         a0, a6, 360
                  srl          a6, s3, s11
                  blt          gp, a5, 34f
                  auipc        s7, 682958
19:               auipc        sp, 488734
                  sltu         t4, t5, s11
                  and          t3, s1, t2
                  sltiu        s0, gp, 378
                  sltiu        a4, t6, -1661
                  blt          s6, t3, 26f
                  srl          t0, a1, a6
26:               or           sp, s0, s1
                  nop
                  auipc        s3, 693410
                  xori         s11, s6, -1578
                  sll          a2, t1, a2
                  bltu         a2, a2, 34f
32:               bne          a4, a4, 33f
33:               auipc        a4, 913622
34:               add          a2, t6, a1
                  andi         a2, gp, -1497
                  and          s0, s7, s10
                  bltu         a3, t3, 47f
                  sltu         t4, s11, s2
                  blt          s9, s9, 59f
                  xori         s1, s6, -1446
                  sub          s4, t1, t6
                  sll          t1, s2, t1
                  bltu         a1, t1, 51f
                  xor          s5, a0, a4
                  la           sp, region_1+391 #start riscv_load_store_rand_instr_stream_3
                  add          s2, s2, s11
                  sh           s7, 131(sp)
                  lbu          a2, -54(sp)
                  sll          ra, a1, s4
                  lb           s8, -164(sp)
                  lbu          a6, -53(sp)
                  and          s11, a2, a6
                  lhu          t4, 229(sp)
                  lb           s7, -186(sp)
                  ori          s10, t0, 1520
                  lh           s6, 135(sp)
                  lbu          a4, -169(sp)
                  lb           a6, -53(sp)
                  slt          a7, s3, t2
                  add          a6, a1, tp
                  lbu          a0, 204(sp)
                  slli         s5, s10, 28
                  lb           s3, 36(sp)
                  or           s6, a0, s2
                  addi         zero, a5, -1237
                  addi         a2, a0, -1566
                  srai         a5, zero, 14
                  nop
                  lh           s7, -71(sp)
                  lb           s11, 218(sp)
                  lbu          s8, -181(sp)
                  slt          s5, s1, s1
                  sb           s2, 28(sp)
                  lhu          a1, -173(sp)
                  srl          s10, t0, s0
                  lb           a3, 2(sp)
                  lb           a3, 66(sp)
                  sb           t4, 112(sp)
                  xor          t4, a0, s10
                  xori         s3, a0, -161
                  srl          s8, a7, a7
                  sh           s8, 31(sp) #end riscv_load_store_rand_instr_stream_3
                  sub          a0, a2, a0
                  andi         sp, a7, -676
47:               xor          a5, s3, t6
                  xor          gp, s9, s0
                  sll          a4, t6, s0
                  sub          a2, s4, s8
51:               add          sp, t2, t4
                  or           sp, s9, s4
                  sltiu        t0, a4, 371
                  or           t5, s10, t4
                  sub          s6, s7, ra
                  and          s10, a3, s5
                  xor          zero, s0, gp
                  lui          a4, 997674
59:               srl          s5, a3, t3
                  bge          t6, s4, 65f
                  slti         a1, t4, -1921
                  slt          s11, s7, a3
                  slt          a0, a0, a1
                  srai         a2, a7, 19
65:               nop
                  srai         gp, s0, 25
                  sra          zero, t6, s1
                  bltu         s5, t6, 82f
                  bge          t1, a4, 83f
                  addi         s8, a6, 360
                  xor          a7, t5, a5
                  sll          s0, s4, a6
                  blt          s6, t4, 81f
                  bge          ra, s2, 75f
75:               lui          t5, 882472
                  sra          s4, zero, s5
                  bltu         a6, s9, 88f
                  and          t1, gp, sp
                  nop
                  nop
81:               slli         zero, s4, 29
82:               srai         s7, s2, 17
83:               add          a4, ra, s4
                  sra          t5, tp, s8
                  andi         s0, s10, 1306
                  bltu         a5, s8, 88f
                  slt          s1, gp, s5
88:               sll          t3, s0, t1
                  sra          s10, s2, t6
                  bge          s3, s2, 94f
                  auipc        s1, 697445
                  andi         s0, t3, -1636
                  ori          s0, a7, -510
94:               srai         a7, a6, 29
                  xori         a3, s7, -584
                  bne          a0, t5, 103f
                  auipc        t4, 786068
                  sra          a6, tp, a7
                  andi         a7, gp, -1707
                  sra          s7, gp, s4
                  sub          zero, t6, t2
                  or           t5, s0, s11
103:              srai         zero, a0, 27
                  srai         gp, a4, 9
                  xor          a7, a5, t1
                  sub          t6, tp, a5
                  bltu         s4, ra, 114f
                  ori          ra, s11, 128
                  beq          a3, t5, 120f
                  bge          s2, a7, 115f
                  xor          s0, s8, s2
                  nop
                  xori         s0, a4, -1387
114:              bge          s11, ra, 125f
115:              srl          s4, zero, a6
                  sub          s7, t1, s4
                  andi         a5, a4, 1384
                  sll          t6, a1, sp
                  nop
120:              slt          s6, s1, a7
                  srai         zero, t3, 8
                  slt          a2, s10, t2
                  or           s4, s0, t6
                  slli         sp, s0, 30
125:              sll          s11, t1, ra
                  xor          s6, s0, s5
                  sltiu        s3, tp, -128
                  sub          t0, s11, t2
                  srli         a7, a3, 0
                  slt          a2, t6, a0
                  slt          t0, t3, a3
                  and          s2, t4, s8
                  auipc        a5, 59798
                  sltiu        a7, s7, 372
                  srli         zero, s7, 5
                  bne          t0, s0, 152f
                  beq          t0, s0, 149f
                  xor          s6, t4, zero
                  bge          a6, s1, 155f
                  auipc        s5, 474089
                  sltiu        s0, t6, -1018
                  or           t4, gp, ra
                  slt          a2, s10, s10
                  bge          s1, a4, 145f
145:              sltiu        s11, sp, -336
                  addi         a7, s7, -1895
                  ori          t4, s2, 1619
                  xor          s8, sp, s3
149:              srl          a0, t6, ra
                  sltu         a3, t2, zero
                  bgeu         a1, zero, 171f
152:              sll          a3, a1, sp
                  add          t6, tp, t4
                  ori          t0, s1, 1593
155:              sra          s10, a0, s0
                  add          t0, s9, s1
                  andi         s1, ra, 1798
                  slt          t6, t3, s7
                  lui          s11, 477915
                  sll          gp, t1, s3
                  srl          gp, t6, gp
                  sub          a0, s4, s2
                  andi         zero, t0, -272
                  addi         a6, t1, -1698
                  beq          a3, a5, 179f
                  sltu         t4, tp, s8
                  bltu         a3, t4, 172f
                  slli         a4, s9, 31
                  and          a0, a0, a0
                  ori          s11, a1, 562
171:              xor          s8, sp, a7
172:              lui          a6, 277683
                  sltiu        a6, s11, -1388
                  bgeu         sp, s6, 182f
                  srai         a7, a2, 28
                  andi         a2, s10, 1008
                  ori          t1, s1, -1694
                  srli         sp, s11, 22
179:              bgeu         t3, zero, 187f
                  andi         s3, s7, -450
                  auipc        s2, 959278
182:              srli         a4, s10, 0
                  bgeu         a0, s11, 194f
                  or           a4, t6, s0
                  xor          s6, s5, a2
                  nop
187:              srli         s11, a2, 9
                  ori          a7, s1, -1514
                  auipc        s2, 306631
                  xor          ra, s11, a5
                  bgeu         a1, s0, 202f
                  sub          a6, a3, ra
                  sltiu        a1, a6, -1127
194:              slti         a2, t0, 1389
                  andi         t3, a1, -859
                  slti         s6, s10, 1343
                  lui          a6, 864963
                  add          a0, a4, t5
                  sll          a5, s4, s8
                  ori          a1, a7, -893
                  lui          s10, 618294
202:              srli         s3, a4, 11
                  slli         sp, s4, 30
                  srai         t3, gp, 14
                  beq          a1, s0, 206f
206:              beq          a5, a5, 226f
                  add          gp, s3, sp
                  slli         a2, s0, 10
                  sub          a1, s4, a5
                  and          s5, sp, ra
                  bgeu         s0, a1, 225f
                  sub          s10, zero, s0
                  sltiu        s5, t4, -23
                  addi         a5, s1, 1732
                  srl          sp, sp, s4
                  xori         s10, a3, -622
                  bne          t2, sp, 219f
                  bltu         a4, s1, 224f
219:              blt          a3, sp, 220f
220:              slti         t3, a2, 1226
                  bltu         s4, s7, 226f
                  nop
                  srai         s1, s0, 29
224:              bltu         t4, a4, 226f
225:              ori          s7, t1, -1248
226:              blt          s0, t0, 233f
                  ori          s2, t5, 1148
                  blt          tp, s9, 246f
                  xori         a0, a5, -1371
                  blt          s7, s7, 237f
                  bgeu         t5, s10, 247f
                  sltiu        t0, a6, -1899
233:              add          a4, s3, s10
                  bltu         s1, a6, 246f
                  srai         s11, gp, 21
                  srli         a5, s9, 25
237:              sll          s5, t3, s0
                  sll          a5, a0, s6
                  beq          a2, tp, 256f
                  slti         a6, t1, -374
                  lui          sp, 681294
                  sll          t5, t0, a4
                  slti         sp, s10, -86
                  srli         zero, s10, 28
                  ori          s1, s9, 1864
246:              bgeu         t5, s2, 247f
247:              sub          s0, s1, s8
                  xori         s0, t4, -1289
                  add          t1, a2, s6
                  auipc        t4, 21649
                  lui          s3, 115913
                  addi         a3, a5, -465
                  beq          s11, t6, 263f
                  srl          t5, t5, s10
                  addi         ra, s5, -928
256:              srai         t5, s9, 1
                  sra          a3, t2, t4
                  sub          s2, a6, sp
                  sra          t1, s10, s0
                  slti         a2, gp, 645
                  sll          s5, a4, t4
                  sra          s1, a4, s5
263:              andi         s8, s0, -1234
                  slti         s11, a3, 1448
                  slti         s8, a4, -525
                  sll          s7, s3, sp
                  bltu         s10, t2, 275f
                  xori         s8, zero, 845
                  slt          a0, a1, s6
                  sltiu        ra, s2, 1866
                  auipc        t5, 348006
                  srai         s11, gp, 29
                  sub          t0, a5, t6
                  sll          a6, s2, a6
275:              slt          t1, a5, t0
                  nop
                  add          a6, t6, s11
                  sra          s10, tp, s9
                  addi         a3, s10, -987
                  bne          s7, tp, 291f
                  blt          t4, t0, 284f
                  slti         t1, s7, 1150
                  srl          s1, t0, t1
284:              lui          a0, 180505
                  bltu         s11, s9, 301f
                  sub          gp, tp, sp
                  bge          s6, s11, 291f
                  and          s2, s7, a2
                  bltu         s0, a5, 307f
                  addi         s3, s5, -1431
291:              beq          t2, t4, 311f
                  beq          a3, t5, 304f
                  bltu         a7, tp, 305f
                  sll          s2, t3, s3
                  add          t4, t5, s6
                  addi         gp, t4, 1386
                  and          a5, s10, a7
                  lui          t5, 798312
                  srai         t3, s11, 9
                  sltu         s10, zero, s2
301:              add          s4, s9, a5
                  slti         sp, ra, 1140
                  auipc        s0, 100908
304:              or           s6, s2, a1
305:              nop
                  or           a5, s8, s0
307:              auipc        a6, 612175
                  slti         a6, t2, -1954
                  srli         gp, s10, 16
                  add          a2, s9, s10
311:              slt          t6, a2, ra
                  sltu         s8, ra, a0
                  slt          s6, ra, a4
                  beq          a5, s7, 322f
                  xor          s0, s8, a4
                  bgeu         gp, gp, 327f
                  sra          s2, t6, t5
                  and          a0, a1, a6
                  ori          s6, a3, -834
                  srl          a4, s1, a6
                  andi         sp, s7, -1753
322:              auipc        ra, 1034789
                  and          a6, tp, t6
                  bltu         s3, a5, 331f
                  sll          s8, s2, s3
                  bltu         s1, t1, 343f
327:              xori         s11, t2, 235
                  slti         s5, s5, 675
                  bltu         t0, s9, 349f
                  sub          t1, s7, ra
331:              bge          s5, t3, 345f
                  srai         s10, s9, 7
                  xori         s6, a5, 1810
                  auipc        s3, 248804
                  or           a1, t3, a5
                  xor          a2, sp, gp
                  srli         s3, s4, 19
                  addi         t3, a0, -219
                  addi         s6, s6, 800
                  slli         s4, s0, 14
                  lui          s5, 934473
                  nop
343:              nop
                  xori         a2, a0, 1780
345:              xori         a0, t3, -1667
                  sra          s1, s11, gp
                  bge          s2, t5, 367f
                  bgeu         s9, tp, 356f
349:              bltu         sp, t1, 350f
350:              sll          ra, s11, a3
                  slti         ra, gp, 550
                  sltiu        a0, t3, -1327
                  auipc        a0, 606413
                  and          zero, sp, t0
                  slti         s1, s10, -949
356:              sra          a6, s6, s8
                  sltu         a2, t5, t0
                  bge          a2, s10, 376f
                  xori         s6, s1, -551
                  sra          s4, t3, s4
                  sltiu        s10, s5, 88
                  slti         a1, a6, -660
                  and          t5, a1, a6
                  add          t1, tp, gp
                  bltu         s0, t5, 366f
366:              addi         s11, sp, 1110
367:              beq          t1, s10, 368f
368:              auipc        s1, 373785
                  ori          a3, s6, -899
                  and          ra, a0, a6
                  lui          t1, 791777
                  srl          s3, a1, s10
                  sltu         s6, zero, a5
                  beq          a5, s2, 380f
                  nop
376:              add          t5, s5, t2
                  addi         ra, sp, -500
                  bge          s1, s1, 386f
                  srai         t0, t2, 2
380:              or           t4, ra, gp
                  blt          s9, zero, 397f
                  sltu         t0, t1, s2
                  sltu         s4, s1, a1
                  bge          t6, t5, 386f
                  addi         t5, s0, -1801
386:              sll          s7, zero, s1
                  xor          gp, s10, t6
                  slt          t1, s3, t2
                  nop
                  sra          s6, s4, t1
                  lui          a6, 217779
                  or           s2, a4, zero
                  bne          s1, s2, 407f
                  bltu         ra, ra, 399f
                  srl          a7, s2, a7
                  ori          s5, s7, 12
397:              or           s2, a2, a4
                  lui          gp, 486958
399:              bltu         s2, s5, 403f
                  sll          a1, s8, sp
                  add          s11, t0, s1
                  srli         ra, a3, 16
403:              andi         s11, s10, -198
                  sltiu        t6, t1, -319
                  nop
                  add          s3, a6, s4
407:              srai         s1, tp, 12
                  sub          a6, s9, s5
                  ori          a0, sp, 1090
                  srli         s6, s0, 28
                  add          s5, s4, s1
                  lui          t3, 187518
                  sra          a2, a2, a2
                  andi         s6, sp, -940
                  addi         t3, ra, 262
                  srai         s5, ra, 1
                  or           s3, a5, s4
                  xori         s1, t2, -1206
                  slli         a3, s9, 29
                  xori         s5, tp, 1384
                  xori         s7, s9, -382
                  bgeu         a1, ra, 424f
                  slli         a4, s6, 10
424:              xori         s1, s0, 661
                  slli         a6, ra, 23
                  lui          s0, 52500
                  lui          s2, 756909
                  andi         s1, s2, -1881
                  and          s8, t1, a6
                  nop
                  bltu         t0, t3, 442f
                  slt          s0, s4, s5
                  srli         t1, a1, 4
                  sub          s2, s4, a2
                  ori          s0, s7, -1750
                  sltu         sp, t2, gp
                  bge          t4, t2, 442f
                  slti         t6, tp, -159
                  xori         ra, t6, -378
                  slt          s4, t4, s10
                  sll          gp, a2, sp
442:              addi         a4, a6, 754
                  sltu         s1, a7, t5
                  xori         t5, s8, -1069
                  xori         a1, t5, 1293
                  auipc        a0, 208446
                  blt          t5, a1, 463f
                  sub          a5, t5, zero
                  xori         gp, s1, -120
                  srai         a2, a3, 12
                  andi         zero, a1, 1196
                  sra          a2, a6, s10
                  slli         a2, s7, 5
                  nop
                  add          a0, t5, t0
                  bltu         t1, s0, 467f
                  sll          a6, s4, s11
                  slt          sp, s2, t5
                  srli         a6, zero, 17
                  slti         a7, t4, -228
                  sltu         t0, s4, s11
                  auipc        gp, 689600
463:              auipc        s3, 33737
                  andi         a2, ra, -550
                  sra          t1, s3, a5
                  auipc        t5, 643217
467:              ori          a7, a5, -1141
                  srli         s5, s5, 11
                  ori          a5, zero, 360
                  or           t3, t5, t0
                  bgeu         gp, s7, 474f
                  sltiu        sp, s9, 640
                  slt          s0, t6, s9
474:              sub          t6, sp, s1
                  slt          s2, s4, t2
                  auipc        zero, 105806
                  add          sp, s8, t0
                  blt          a5, s8, 488f
                  sra          t3, s7, s5
                  slli         ra, s3, 11
                  addi         t4, a3, 1047
                  andi         zero, s5, -1332
                  add          s1, s6, ra
                  lui          s10, 819376
                  nop
                  nop
                  srl          sp, a5, t2
488:              bne          t5, t3, 500f
                  andi         a3, a1, -1495
                  slt          t1, a3, s6
                  slt          zero, t0, s7
                  andi         sp, s3, 2016
                  slti         t5, s11, -1552
                  bne          s2, gp, 501f
                  bltu         a6, s1, 513f
                  blt          s1, tp, 503f
                  nop
                  srai         t3, a1, 25
                  auipc        s0, 799728
                  la           s6, region_1+545 #start riscv_load_store_rand_instr_stream_1
                  lbu          a3, 188(s6)
                  ori          s1, s4, 813
                  sh           s0, 203(s6)
                  lhu          a1, -103(s6)
                  srai         a2, s7, 23
                  sh           t6, -113(s6)
                  or           t4, gp, s6
                  lui          s10, 851980
                  lui          t5, 160895
                  lb           a3, 249(s6)
                  sh           s7, -233(s6)
                  xor          s5, t3, gp
                  lbu          s4, -184(s6)
                  sb           s7, 78(s6)
                  sb           t2, -19(s6)
                  sltu         a7, ra, sp
                  lhu          s7, -99(s6)
                  lw           s8, 47(s6)
                  lb           a7, -120(s6)
                  lh           a4, 95(s6)
                  lh           s1, -199(s6)
                  sub          ra, a3, ra
                  lhu          a6, -169(s6)
                  sb           a4, 94(s6)
                  lb           t4, -158(s6)
                  sh           s11, -133(s6)
                  lw           a6, -169(s6)
                  sh           t4, 101(s6)
                  srai         s5, a4, 9
                  lb           t3, -140(s6)
                  sb           t0, -150(s6)
                  slti         s1, t0, 1419
                  lw           s3, -21(s6)
                  lbu          a1, -154(s6)
                  lbu          t4, 112(s6)
                  andi         s5, s10, 1106
                  lbu          gp, 112(s6) #end riscv_load_store_rand_instr_stream_1
500:              slti         a0, a2, 1931
501:              or           a6, a4, s7
                  srl          s1, s6, s9
503:              srli         s1, a1, 2
                  sltiu        a6, t1, 1262
                  srl          a0, t1, a7
                  and          a7, t1, s6
                  and          zero, s0, a2
                  srli         t6, s0, 23
                  slti         t0, s3, 1338
                  or           a1, a3, s6
                  beq          s9, a0, 522f
                  ori          s3, t3, 1926
513:              slt          s11, gp, a0
                  xori         t5, sp, -1963
                  beq          a4, s3, 535f
                  sltiu        t4, a7, 794
                  slt          s11, s9, ra
                  addi         s7, tp, -326
                  srl          t4, a5, a5
                  slt          t1, s3, s9
                  xor          s3, t0, s2
522:              auipc        t4, 447917
                  bne          t0, s8, 537f
                  nop
                  ori          t6, tp, -680
                  srl          ra, a0, s7
                  bltu         s8, s2, 528f
528:              auipc        s0, 23348
                  sra          s4, a3, a5
                  nop
                  add          ra, tp, t0
                  slti         a5, t6, 1246
                  xori         a1, s9, 524
                  sltiu        a1, ra, 1125
535:              xor          s3, ra, s11
                  srai         t1, s4, 26
537:              and          gp, t4, s8
                  sub          a7, a5, s8
                  sub          s11, s7, tp
                  slti         t4, gp, 1243
                  slt          t5, a4, s5
                  slli         s11, a4, 12
                  bgeu         t4, s8, 550f
                  add          s1, s9, a3
                  ori          a0, a6, 164
                  or           s5, s9, a3
                  addi         ra, t4, 978
                  bgeu         s10, s1, 558f
                  or           s1, a0, t0
550:              sub          s3, ra, s8
                  slli         s5, t5, 22
                  srai         s7, t3, 14
                  bltu         t6, a4, 561f
                  srli         s2, s6, 22
                  bgeu         a0, s10, 557f
                  srai         gp, s5, 9
557:              lui          sp, 778391
558:              blt          gp, t2, 570f
                  blt          a6, t1, 571f
                  ori          t0, s7, 1880
561:              andi         gp, s5, 1830
                  auipc        s1, 273752
                  lui          t6, 417262
                  slti         t6, s10, -486
                  lui          a1, 288082
                  lui          gp, 488012
                  andi         a2, s3, -1116
                  sub          s8, tp, ra
                  sltu         a4, t5, s0
570:              andi         zero, s7, 1007
571:              nop
                  nop
                  add          s11, a7, t6
                  bltu         s7, t1, 590f
                  srl          a6, t2, t0
                  andi         s2, a5, 1168
                  nop
                  bne          t3, s10, 586f
                  bge          t0, a5, 590f
                  sltu         s8, a0, a5
                  add          sp, a7, s11
                  xor          a3, t5, s3
                  or           a0, t1, s1
                  lui          s7, 158613
                  add          a7, s7, sp
586:              beq          s1, ra, 587f
587:              sll          a5, a3, ra
                  auipc        t6, 173063
                  sltiu        a1, a5, -1408
590:              addi         t3, gp, -478
                  add          a7, s8, a4
                  addi         zero, a4, -765
                  slti         t5, s7, 1120
                  nop
                  add          a4, a4, t4
                  bne          s3, s1, 602f
                  ori          s1, sp, -1138
                  srai         t0, gp, 16
                  slt          s6, s2, tp
                  bge          a5, t1, 618f
                  auipc        a0, 437808
602:              bne          t0, s3, 607f
                  lui          a5, 126737
                  bltu         tp, a1, 607f
                  bgeu         t6, a7, 609f
                  slti         t6, a2, -1251
607:              srai         sp, s10, 5
                  nop
609:              ori          t0, zero, 1326
                  nop
                  bge          s9, a1, 619f
                  addi         s0, t6, -1396
                  and          a5, t3, s9
                  blt          s11, a5, 630f
                  sub          t5, t2, a7
                  bge          zero, a2, 621f
                  add          s3, s4, s5
618:              sra          t5, s7, a7
619:              add          ra, s2, ra
                  add          a1, t5, a3
621:              sll          t4, t2, t0
                  addi         a1, s1, 1845
                  sltiu        s10, t1, -614
                  bne          t5, a7, 638f
                  xori         a1, s2, 1241
                  srli         zero, s7, 3
                  bltu         t4, tp, 645f
                  lui          s11, 375622
                  sll          t4, s10, t6
630:              bne          s2, a6, 632f
                  and          a7, t2, a2
632:              addi         ra, s8, -1366
                  bne          s9, s8, 644f
                  auipc        t4, 460971
                  or           s3, s6, t3
                  sltiu        s5, a2, -1214
                  srl          s1, s1, a4
638:              addi         t1, a5, 944
                  bgeu         s5, sp, 640f
640:              ori          t5, s1, -629
                  and          a5, a4, a1
                  xori         a7, s11, -1976
                  add          s2, s10, s8
644:              srl          s5, s7, s2
645:              slli         s11, zero, 30
                  blt          zero, s2, 663f
                  andi         s10, s1, 250
                  slti         s6, s4, -585
                  srai         a2, s11, 23
                  bge          s6, a3, 670f
                  ori          s1, s6, -1074
                  or           sp, a5, a4
                  and          s0, gp, t2
                  nop
                  bne          a1, sp, 657f
                  or           s5, ra, a4
657:              beq          t4, s8, 659f
                  sltiu        a0, t1, -1324
659:              xori         s8, s10, -1740
                  sra          a3, s5, a2
                  ori          s7, a3, 632
                  bne          s4, s11, 669f
663:              xori         s8, a2, -631
                  and          s3, s9, a6
                  sltu         s3, a7, s7
                  lui          sp, 490383
                  slti         t3, tp, -990
                  andi         s11, t3, 1735
669:              sub          t6, a3, s4
670:              add          t4, s11, a1
                  ori          t6, t6, 996
                  sra          t0, t1, tp
                  sltiu        s7, a1, 1517
                  beq          tp, s5, 679f
                  bgeu         s6, a6, 681f
                  slt          t1, t4, s11
                  xori         s11, s2, -1114
                  bne          t0, a4, 681f
679:              sltu         s0, s2, s6
                  bge          s3, a3, 681f
681:              srai         s0, t4, 7
                  lw           t1, 4(tp)
                  sra          t4, t6, t3
                  ori          s5, a6, 1078
                  addi         tp, tp, 20
                  or           a5, s9, s1
                  xori         s5, s2, 768
                  andi         t4, a2, -1346
892:              addi x19, x6, 1
892:              jalr x19, x19, 0
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
.word 0xee190184, 0x6e02ef9b, 0x0be3dc08, 0xe24bd637, 0x05e4dc44, 0x11bb76f8, 0x76d0d368, 0x9122e068
.word 0x8753c3e3, 0x0bf8b01a, 0x15018792, 0x14161e7d, 0xec6c51f9, 0x8de369f5, 0xda35f995, 0x163b223c
.word 0x86ecb85c, 0x34ff6658, 0x2d3fc93d, 0xb2766083, 0x009b1f9f, 0xbb4b1804, 0x1be69368, 0xda92e28a
.word 0x890d0e99, 0x0b2c2d9d, 0xebb1274b, 0x66e7e4d6, 0x137c95df, 0x96ae8a4f, 0x12bdfe11, 0x11f96206
.word 0x7b66d6ec, 0xb4cd5ffc, 0x45ea0083, 0x65d1e10b, 0xef5e29d7, 0xa52758e6, 0xcb653ca6, 0x2f959086
.word 0x6f79bc23, 0x139d0f85, 0x73570602, 0xec3f5eae, 0x8452c7ce, 0x4b0bff2a, 0x07fe4acc, 0x2c76902f
.word 0x5aec2404, 0x4eb691c1, 0xc92f443f, 0xb0ae86f7, 0x4285d473, 0xed6b48c5, 0xe98c76c2, 0xefdab853
.word 0xfbd3bae6, 0x7f0cd379, 0x6fc9dbeb, 0x559d2f55, 0x2c943b1c, 0xf48938a1, 0xadfc6544, 0xd014e240
.word 0x9859e7a3, 0x9d725818, 0xf95759cc, 0x4d2a64bb, 0x3d61ad4c, 0x1c7174a2, 0x1d324df5, 0x953ddaea
.word 0x50dd951f, 0x4e49e10a, 0xd7894180, 0xf86374a6, 0xdd16b93c, 0x4b2a2dfa, 0x64c449de, 0x39790aba
.word 0xeff87047, 0x14d9f6d1, 0x4c1ccb32, 0xf9ff4c62, 0x343062a5, 0xad8b9c5b, 0xa7ab2adb, 0xcc9ceaa8
.word 0x10eb1d74, 0x7f77cba2, 0xcafd51b0, 0x39dadfd6, 0x5edfda21, 0xdd52afa2, 0x35b8e0eb, 0xefdaae63
.word 0xc0b4693e, 0xad5da90a, 0x153fd672, 0x1e49a5c3, 0x19400805, 0x0b1a8f86, 0xc2eef5c5, 0x86604f0a
.word 0x766372f3, 0x4f2434f7, 0x0b175884, 0x66df0196, 0x582a2a55, 0xd30e0c9a, 0x5aceab8e, 0xd4f1459c
.word 0x00d77f2e, 0x7d5f5f92, 0x93f379cf, 0x6eddfcf0, 0x4ac4b2c1, 0x5998d130, 0x5f2b54c4, 0xa2b810a1
.word 0xabe480cd, 0xbb63155f, 0xb26f2fd7, 0x4c3dfef7, 0x717f8545, 0x68054059, 0xe308768b, 0xb6537724
.word 0x58262361, 0x5885dbb3, 0x151b340d, 0x5e42bc74, 0xcd872926, 0x34929491, 0x2ec5ecb5, 0x2af5487d
.word 0x78c6320f, 0x3b611419, 0xb7747f77, 0x746b6de9, 0xab170fa9, 0x565e6d42, 0xd098187d, 0xd7c6263d
.word 0x19aaba3e, 0x2c2313a3, 0x9297ad1b, 0x36bdb4a8, 0xc5542c63, 0x62843ae4, 0x068d82bf, 0x8c28e970
.word 0x2de29569, 0xba0feb4a, 0xb0f6ca6a, 0x4fe3653f, 0x9a48710d, 0xd00267cd, 0x89788ce1, 0xcc73a3b6
.word 0xaff2469a, 0xe07f5c75, 0x8063fdd3, 0xc57f82ae, 0x6d830e66, 0x8b28fffa, 0x741a1594, 0xe33381eb
.word 0xa6c53fce, 0x04c13fb5, 0xd4c166eb, 0x0fbf52b4, 0xda336e7d, 0xbe03746f, 0x3b493adb, 0x0508e9dd
.word 0xa6f332a7, 0x9de245a3, 0xf9f45bc3, 0x33e879d4, 0xc8efb2f0, 0xbbf52eeb, 0x09346954, 0x618dda35
.word 0xa3dec760, 0x16335c66, 0x82bb7139, 0x755f686f, 0x1fe30b52, 0x4fdae1aa, 0x138b9888, 0x3d179708
.word 0x6d4ed18f, 0x31441ed0, 0x70b22f6c, 0xd2d8bec3, 0xbf99a456, 0xf3e811eb, 0x6f08f3b9, 0xbf1328a5
.word 0x134c76b1, 0xfab7c773, 0x0fbe465f, 0x2f67cbf4, 0x59bc25e9, 0x09d5d3c6, 0x894ba43b, 0x75b92006
.word 0x5f05c8e8, 0x2ca6bc06, 0xae4fcc4f, 0x95b3a635, 0x02456d42, 0x023d9642, 0x6fc3038b, 0xbd433927
.word 0xb9d6da7c, 0x22ab31af, 0x56864d62, 0x3e5b39ca, 0x0629cd25, 0xc07e11f2, 0x5d344a68, 0xddb4dc27
.word 0x6e06db6a, 0xadb20325, 0x89fc2f38, 0xe95c1b5f, 0x5e680ab6, 0x9548acfe, 0x30bf99ed, 0xb195ebdb
.word 0x9676585b, 0xf0e70bb2, 0x75982859, 0xc291bffa, 0x34f4193d, 0xe663905d, 0xd11dd738, 0xcb2050db
.word 0xdfbce079, 0x7c0d0fa5, 0xbe6bdbdd, 0x297caa4f, 0xb69f53d4, 0xcd3e3100, 0x990e9578, 0x8fa355f4
.word 0x78910c27, 0x4abdf182, 0x284aeb4d, 0xf8ddb67e, 0x26ba0446, 0x1867ed84, 0x1f3ac5cb, 0xac16725c
.word 0x1dc05f90, 0xd2d19c17, 0x736e064b, 0xb0c0b941, 0xdf57712d, 0x2d9a23e7, 0x6ea92afe, 0xa7accd6e
.word 0x53d65f7e, 0x1a9d8e89, 0xbe5ae424, 0x5cb1f8c5, 0xa08a87cb, 0xaea5478a, 0x45851e5a, 0x9f890227
.word 0x5446d785, 0xe970011b, 0x52a5f9c0, 0x3e2d4a16, 0x1890c1e9, 0x4a6ef509, 0x4c7df515, 0xd5a3f6cd
.word 0x928de332, 0x9e53a0d0, 0xc300cf5f, 0x1acc1ba1, 0xf1d15073, 0xec1a9b03, 0xcbc38155, 0x230a8305
.word 0xc6cb2b2f, 0xb6c03580, 0xe6a3ca3a, 0xbc8938e8, 0x91a65491, 0xefb38581, 0x99b00607, 0x8ad2d385
.word 0xa5498c03, 0x84775475, 0x45e17aa8, 0xa016bc47, 0x7c18f82b, 0x53d2048b, 0x935f9fe8, 0x26b4c905
.word 0x63331a85, 0x34eb42e3, 0x11e09b0b, 0x08fcc55d, 0xbc379eed, 0xebea533b, 0xca16a7f2, 0xa5b6130c
.word 0xac82ebc7, 0x0e2178ee, 0x59394e0b, 0x8a0a8766, 0x7e6d4730, 0xb140e8a2, 0xcb1b7c88, 0xe7f0f758
.word 0x56b62aee, 0x742ff142, 0xbff88b40, 0x0c313ec9, 0xf16797bc, 0xb1fe05f4, 0x1e58e513, 0x920639c5
.word 0x0d6bb187, 0x329486e5, 0x97d257a6, 0xa2656417, 0xcdff2d92, 0x96b0f884, 0xe87eeb43, 0x0caee5a8
.word 0xfb2fc218, 0x73b0ec50, 0xcea146ec, 0x6af198a6, 0xbe26665b, 0x655dd960, 0xb869440d, 0x236dfb08
.word 0x856e2c7f, 0xc988d001, 0x95db16b6, 0x9c0f05d2, 0x7d6c1c58, 0x141168d1, 0xc69c41bf, 0xf73ac3fd
.word 0x15819729, 0xdc4c1a61, 0xc0a2985a, 0xeed8e600, 0xda8b6c25, 0xc96b48fc, 0x1aa6800c, 0x36d5d19d
.word 0x2cddb8a8, 0x13c78031, 0xe7cb96a1, 0x74810ad5, 0x39e81119, 0x8ecc6bf2, 0xb5094d62, 0x24a00947
.word 0x7578c171, 0x7c0fa2fe, 0x47d9c362, 0x372b9741, 0x8d580665, 0xb363d293, 0x231dbc5e, 0x2d24ca4c
.word 0x97b5ffee, 0x60c8bb80, 0xa37b7243, 0x5855bdf8, 0xc4074285, 0x12374c3d, 0x940fd597, 0xdedace8b
.word 0x9ebe649f, 0xf5fd4bef, 0x56ab176e, 0xe0e0d961, 0x9780573f, 0x9fe7e98b, 0x8a5fb3e9, 0x8a6656a8
.word 0xe1dc7a99, 0x987751b2, 0x64cf3d7e, 0x9dab8fe5, 0x45fbffc6, 0x8a557c4a, 0xa93dc16e, 0x4f48c9d4
.word 0x47a920f0, 0xe8601faa, 0x22a914b3, 0x3808fb82, 0xea0bf84c, 0x248f9bb5, 0x9d0e7f40, 0x768dca47
.word 0x02b35c59, 0x6d521eba, 0x7e0ad687, 0x23b8ff3a, 0xe0415ea4, 0xc8b54b96, 0x6d979e31, 0xea996b70
.word 0x4f66656e, 0x567d9c82, 0x3913a63b, 0xbc786ac0, 0x2198a18f, 0x85722547, 0x887ca111, 0xde1f596d
.word 0x2a7bbde3, 0x4dd61d5a, 0x2d68ae73, 0xf2c1dea8, 0x142f61ad, 0xdff39620, 0x693bf072, 0xbc2f798f
.word 0x3201c743, 0x412745d2, 0xd2fc0277, 0xdda8a162, 0xb16126a9, 0x918cc190, 0x68a6e17b, 0xe039380b
.word 0x9a294348, 0x6d7f5309, 0x26b732c4, 0xe935f689, 0x54b2bb76, 0xefa841a2, 0xcc2bcac5, 0x62d519a2
.word 0xb605e874, 0x45354628, 0xad058333, 0x34804de3, 0x3af646b2, 0xd88e80af, 0xa07aa9b0, 0x3d31518b
.word 0x747ca3c2, 0xdc9729f1, 0xd54a8741, 0xb42d3b3f, 0xfb7c42f0, 0xa9a53a7f, 0x611b91e0, 0xc0f33153
.word 0xad878c7b, 0x0463bb66, 0x44b5da49, 0x7e412c33, 0xd9fcaa74, 0x3f8ff011, 0x586a5c47, 0x26029308
.word 0xc8f07815, 0x5bd8153c, 0x4dcadf9a, 0xabbf85b9, 0xf0117839, 0x0a625399, 0x61b2ddf7, 0xeddf3b5d
.word 0xa885215e, 0x7d0db9ba, 0xac32a8b5, 0x497f0245, 0xa998ad5b, 0xf7e23b59, 0x2f36c711, 0x60d5af3b
.word 0x46325568, 0x556d35d6, 0xdf09d5ff, 0x15cf507d, 0xbff804cc, 0xb1bed852, 0x28dc99d0, 0xf8bd874a
.word 0x51f513dc, 0x9ba0c13c, 0x667f8b2f, 0xfe0e7461
.section .region_1,"aw",@progbits;
region_1:
.word 0xf75738a0, 0x02155272, 0xc8f18ed6, 0x818758e5, 0xffbfdf99, 0x19e6fb91, 0x01729756, 0x80e58902
.word 0x38c66c6f, 0x43f69f83, 0x6853638b, 0xfe6ce9fc, 0xd07369b4, 0xe064d29c, 0x05a9a48f, 0x5ddb2b55
.word 0x37d16e0f, 0x0fde785f, 0x7bbab801, 0xb57aeabe, 0xeff7902a, 0xee8b9215, 0x4acb54c8, 0xc53b0c95
.word 0x1984d5e8, 0xe7e98839, 0x3682cd6d, 0xe56d5049, 0x4b23789e, 0x58e1b0e8, 0xc7672fd3, 0xa2b6841b
.word 0x33f19725, 0x775cb58b, 0x5cdd44f2, 0x502fc2e4, 0x35181ca0, 0x39101361, 0x5291635c, 0x10fd2aa4
.word 0xac557863, 0x45d274be, 0x095d5f42, 0x2e69cf6b, 0x348262f3, 0x137e425c, 0x91c79d7f, 0x8f9fd006
.word 0x7b732703, 0x997e93ad, 0x173b03ff, 0xc4a5af9c, 0x731c6767, 0x08f028e3, 0xcc4e8e6b, 0x52734766
.word 0x36b16e83, 0xbfde22b9, 0x0fde7602, 0x6a8aa3d2, 0xf8709a50, 0xa332f7bd, 0x05447ebf, 0x5ee556fa
.word 0x5c2c2d2b, 0x52f7aa92, 0x339484e8, 0x847a5b4f, 0xf5046dea, 0x0f86905c, 0x7c7b48a1, 0x0f676b5d
.word 0xcc21652b, 0x8620805c, 0x61f3d0cc, 0xbf5bd802, 0x81c3707c, 0x6eaff9e6, 0x43c96207, 0x9186c9d9
.word 0x498d8725, 0x8c2b8b14, 0xc124080e, 0x00a4be00, 0xfa53a49f, 0x8b570692, 0xdb3ea598, 0xe98b6e96
.word 0x10deb7ef, 0x1fddb55c, 0x366836c3, 0x35d8a6b1, 0x302dff40, 0xa6bf35f7, 0x4f58c753, 0xc2ea8ef2
.word 0x49080e97, 0x912636c7, 0x59d9624b, 0x2e7317ec, 0x97f3b9cf, 0x9bf004f7, 0xf28b3b24, 0xb7968546
.word 0x07b28dd7, 0x226624bd, 0x306d1eda, 0x44ffe044, 0x41b5efc1, 0x070ba232, 0xb6ca47ea, 0xc1663971
.word 0x050d0c38, 0xc1cd5cc8, 0x0180aeff, 0x66cb8449, 0xb663070e, 0x9e0cd678, 0x865aad55, 0x59abf9ef
.word 0x593a281d, 0x1c67722f, 0x541d9d6e, 0x5e5b4a5b, 0x03403c37, 0xc22128d7, 0xd4a1ede3, 0xedf6ebc3
.word 0x2a476e40, 0x9064c04d, 0x978ddbd3, 0x055e78bf, 0x32116621, 0x406c4aef, 0xb7520de7, 0xa724c78e
.word 0xbd889af1, 0xb71018e3, 0x7b9f77ce, 0xeadab6d3, 0x8f73f3c8, 0x2ac8bdf1, 0x615cb69d, 0x49f9d361
.word 0x7e2ec824, 0x8f7213a1, 0x36562141, 0x84f0a7b5, 0x56816d14, 0x768a390d, 0x4e2346dc, 0xccb1ff42
.word 0xefe7104b, 0x2eb1d7f2, 0x0f692f0f, 0x76d9dbd9, 0x5436c88a, 0x7195e153, 0x9062472b, 0xa820a13b
.word 0xb55def1b, 0x07a5ec2b, 0x85faace7, 0xd4849cd4, 0xed04831c, 0x98151743, 0x083a7e54, 0x430e4741
.word 0xa669b194, 0x0a23e163, 0x886070b8, 0x3de0bc7a, 0xf6011819, 0xaece0042, 0x1dde7c3b, 0x8291c071
.word 0xdea9142c, 0x2e68a579, 0xb451c75f, 0xce5ed90d, 0x2bfe278c, 0x4f710ec5, 0x50d55ac6, 0x97dcc962
.word 0xc02707fc, 0x889296cb, 0x827192e8, 0x78027fc5, 0x248fe830, 0xdd39335d, 0x553f466c, 0x6977b90d
.word 0x56145559, 0xe3a3a3ae, 0xd481b244, 0x6328e479, 0x0709dd6e, 0xb2c8eb72, 0x70fce3eb, 0xd6dd80d8
.word 0x3f0d9ea1, 0xf911f20c, 0x9cac0cfb, 0x151039af, 0x84235685, 0x1d18068c, 0x02c7e65d, 0x5a26eb0d
.word 0x370e77a4, 0xd976c973, 0xcd980221, 0x3b0a1507, 0x45f78164, 0xec8bd181, 0xc32a101a, 0x9a783198
.word 0xf44aad6d, 0x1783931d, 0xcd099009, 0xe666dcea, 0xc5604524, 0xa3f11249, 0x61bce32b, 0xa9f6e67a
.word 0x312e4570, 0xca400cee, 0xc50faf55, 0x8fc6d2d8, 0x64635323, 0x19b68a80, 0x39636bf1, 0xf539884f
.word 0x800677ef, 0xb70b63b2, 0xa619371d, 0xf225e8fa, 0x4faeff5c, 0x52804259, 0xa041a4f1, 0xf6eca6ab
.word 0x96254fd1, 0x008ab6b7, 0x9425e305, 0x37ecbac2, 0x6417e5e2, 0xdfb3a039, 0x1a8209a8, 0x7f765263
.word 0x7628e8f4, 0x0084c25f, 0xa6b57867, 0xbcd635fc, 0x041f6deb, 0x182d3845, 0xb19e64f6, 0xd9f2db09
.word 0x19a77c09, 0x8fc71a3e, 0x5aba1964, 0x10b3b4ac, 0x44acd205, 0x90d1895b, 0xf1dae1b3, 0x6687d7dd
.word 0xd93c1672, 0x2bc0ea38, 0x20aba3a5, 0x4c6605e0, 0xb7af5fa0, 0xb78bc6e6, 0x0fbfe890, 0x35705eb9
.word 0xb793c1a8, 0xbdbf8e17, 0x6f7d0db4, 0x938ec671, 0xdb857c6a, 0x288c3064, 0xf66e1e8c, 0x2a61fb95
.word 0x74e3d012, 0xb8528667, 0x2f47eef3, 0x42ae98b7, 0xa26235f9, 0x4315cfe3, 0xa03c7bf2, 0xc1195e5f
.word 0x33df1a0e, 0xafc7df3d, 0x0f19dacc, 0xb954184a, 0x1cc9eb3c, 0x79520c7c, 0x29eaf77d, 0xf7451864
.word 0x08b56df5, 0x535d349f, 0x0933d522, 0x398f8d59, 0x161a3981, 0xf32e341b, 0x0a887dec, 0x51647245
.word 0x8df7d0bb, 0xb7a364a6, 0xd6ceb190, 0x67465e25, 0x2d04e9ec, 0xc9280f6a, 0xb3fca218, 0xdbc4bf77
.word 0x13427531, 0xe48fcb24, 0x00e592bf, 0x76eb84f7, 0x90b75c82, 0x78416ae5, 0x8403cb3d, 0x92a1c6c7
.word 0xe4ae1ddf, 0x7e78de99, 0x735177c7, 0x0cc6de56, 0xf5fe2f05, 0x7e2cf81b, 0x9f22b9f8, 0x21aee666
.word 0x04e735cf, 0x91acd9e9, 0x0fc4eb68, 0x69a6b443, 0x56c13832, 0x07606894, 0x6f133dde, 0xb126cff7
.word 0x77a06619, 0x8ee973cb, 0xf4cd65a5, 0x712561a6, 0xba715a7f, 0xddcffed0, 0x1ec543ee, 0x3f175968
.word 0xe4d59672, 0xdba9f9a8, 0x3cf762a2, 0xaf0fedbd, 0xa6510cc9, 0xe2734bb1, 0xd9ec4306, 0xd210ef49
.word 0x2f4368e4, 0xb7b8fdf9, 0xf8c7c076, 0xa7205a5e, 0x4890b8c8, 0xfc4c5d56, 0xec35ba40, 0x387b5c8c
.word 0x38b1a93c, 0xc2ab0a68, 0x1e5a2526, 0x65b06281, 0xc306f9cb, 0x8a0ec9f2, 0xe7b89df7, 0x919ef73b
.word 0xc1f62559, 0x602e0657, 0x119549b8, 0x731ab383, 0xc0500554, 0xd1c91e55, 0xaaaaa674, 0xdf34263e
.word 0x73a1920d, 0xeebf5c4a, 0xe8d810dc, 0xda15efe0, 0xc0cf604a, 0x7cd6d0ad, 0x7a3a951b, 0xb3d1a36b
.word 0xec651ebc, 0x20b5fab9, 0x5c12a968, 0x263a7f29, 0x9e4cab66, 0xf39fea02, 0x582f7c1b, 0x2c5d7165
.word 0xe7daddab, 0x09f95c5c, 0x78994f19, 0xac15c9ed, 0x0b692c42, 0xec5632a8, 0x9656e2cd, 0x998842f7
.word 0xa98ff11e, 0x7543602b, 0x6316ce3d, 0x6b5dab18, 0xf1928135, 0x38c2cbf9, 0x238bc6ff, 0x90070dae
.word 0x60994500, 0x2ba87687, 0xbfd33c60, 0xb4958861, 0x37973004, 0x18bb1db0, 0xbc6e62d4, 0xc530e731
.word 0x0ccd73ae, 0xa235a2d1, 0xbdb10d49, 0xefefddb0, 0xb14ad609, 0xc572f7db, 0x2ededc23, 0x7e2cdcd9
.word 0x74ab33cb, 0x59ca086a, 0x87342385, 0xaf761633, 0x60755039, 0x0f68a4eb, 0xf11327a7, 0x9ac483c0
.word 0xcc03e13b, 0x95bb2548, 0x82290282, 0x5109cf82, 0xad020071, 0x5d072220, 0x567e319c, 0x6db27069
.word 0x6596cff0, 0xec35d10c, 0x723362bb, 0x91dc61a6, 0x9fd79f8d, 0xc3a61e73, 0x073862cf, 0xb0ba5de9
.word 0x28390782, 0xf3b22f5b, 0x622c2b31, 0xb74c358b, 0xfc881be5, 0x896db9ae, 0x58dba328, 0x1c4e6390
.word 0x7d1b22aa, 0xf660997e, 0x63548c78, 0x5f3414c4, 0x3393efd9, 0xc3b21375, 0xfb4e9954, 0xd34aacc1
.word 0x87a27f1f, 0x6ea9f58e, 0xefed3cc3, 0x8057885b, 0x062a4546, 0xd8387425, 0xf76e26d7, 0xfbeb30f0
.word 0x315dfe40, 0x69dd557e, 0x8abb7e59, 0x33c4b28c, 0x0251f864, 0x133c83ff, 0xbb5fcad0, 0xe88a6da8
.word 0xc8973cbc, 0x75785a57, 0xf7473694, 0xdf2f4da0, 0xa41a1617, 0x2958be74, 0xf58cd433, 0x16c50927
.word 0xe043a58c, 0x22c69285, 0x1505e998, 0xda20f169, 0x39ae819c, 0x1eecf72c, 0x6ff517b0, 0xc78123f1
.word 0x9f12bcd7, 0xbd42834b, 0x00015670, 0xb0288ce1
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
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x7, x4, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_2:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x7, x4, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_3:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x7, x4, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_4:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x7, x4, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_5:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x7, x4, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_6:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x7, x4, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_7:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x7, x4, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_8:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x7, x4, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_9:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x7, x4, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_10:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x7, x4, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_11:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x7, x4, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_12:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x7, x4, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_13:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x7, x4, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_14:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x7, x4, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_15:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x7, x4, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x7, x4, zero
                  csrr x21, 0x341 # MEPC
                  csrr x21, 0x342 # MCAUSE
                  li x15, 0x3 # BREAKPOINT
                  beq x21, x15, ebreak_handler
                  li x15, 0x8 # ECALL_UMODE
                  beq x21, x15, ecall_handler
                  li x15, 0x9 # ECALL_SMODE
                  beq x21, x15, ecall_handler
                  li x15, 0xb # ECALL_MMODE
                  beq x21, x15, ecall_handler
                  li x15, 0x1
                  beq x21, x15, instr_fault_handler
                  li x15, 0x5
                  beq x21, x15, load_fault_handler
                  li x15, 0x7
                  beq x21, x15, store_fault_handler
                  li x15, 0xc
                  beq x21, x15, pt_fault_handler
                  li x15, 0xd
                  beq x21, x15, pt_fault_handler
                  li x15, 0xf
                  beq x21, x15, pt_fault_handler
                  li x15, 0x2 # ILLEGAL_INSTRUCTION
                  beq x21, x15, illegal_instr_handler
                  csrr x15, 0x343 # MTVAL
                  1: la x25, test_done
                  jalr x1, x25, 0

ecall_handler:    
                  la x21, _start
                  sw x0, 0(x21)
                  sw x1, 4(x21)
                  sw x2, 8(x21)
                  sw x3, 12(x21)
                  sw x4, 16(x21)
                  sw x5, 20(x21)
                  sw x6, 24(x21)
                  sw x7, 28(x21)
                  sw x8, 32(x21)
                  sw x9, 36(x21)
                  sw x10, 40(x21)
                  sw x11, 44(x21)
                  sw x12, 48(x21)
                  sw x13, 52(x21)
                  sw x14, 56(x21)
                  sw x15, 60(x21)
                  sw x16, 64(x21)
                  sw x17, 68(x21)
                  sw x18, 72(x21)
                  sw x19, 76(x21)
                  sw x20, 80(x21)
                  sw x21, 84(x21)
                  sw x22, 88(x21)
                  sw x23, 92(x21)
                  sw x24, 96(x21)
                  sw x25, 100(x21)
                  sw x26, 104(x21)
                  sw x27, 108(x21)
                  sw x28, 112(x21)
                  sw x29, 116(x21)
                  sw x30, 120(x21)
                  sw x31, 124(x21)
                  la x25, write_tohost
                  jalr x0, x25, 0

instr_fault_handler:
                  add x4, x7, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

load_fault_handler:
                  add x4, x7, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

store_fault_handler:
                  add x4, x7, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

ebreak_handler:   
                  csrr  x21, 0x341
                  addi  x21, x21, 4
                  csrw  0x341, x21
                  add x4, x7, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

illegal_instr_handler:
                  csrr  x21, 0x341
                  addi  x21, x21, 4
                  csrw  0x341, x21
                  add x4, x7, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x21, 0x300 # MSTATUS;
                  csrr  x21, 0x304 # MIE;
                  csrr  x21, 0x344 # MIP;
                  csrrc x21, 0x344, x21 # MIP;
                  add x4, x7, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
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
