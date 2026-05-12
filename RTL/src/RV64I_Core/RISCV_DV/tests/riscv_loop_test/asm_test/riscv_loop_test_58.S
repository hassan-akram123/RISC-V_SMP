.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x2, h0_start
jalr x0, x2, 0
h0_start:
                  li x17, 0x40000100
                  csrw 0x301, x17
kernel_sp:        
                  la x28, kernel_stack_end

trap_vec_init:    
                  la x17, mtvec_handler
                  ori x17, x17, 0
                  csrw 0x305, x17 # MTVEC

mepc_setup:       
                  la x17, init
                  csrw 0x341, x17

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x17, 0x1800
                  csrw 0x300, x17 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x0
                  li x2, 0x2
                  li x3, 0x97a0e75b
                  li x4, 0x0
                  li x5, 0xb
                  li x6, 0x80000000
                  li x8, 0xe050ba86
                  li x9, 0x80000000
                  li x10, 0xf7f38162
                  li x11, 0x0
                  li x12, 0x8
                  li x13, 0x80000000
                  li x14, 0x80000000
                  li x15, 0xf
                  li x16, 0x4
                  li x17, 0xfb73dce0
                  li x18, 0x1ec0940f
                  li x19, 0x30b34005
                  li x20, 0x80000000
                  li x21, 0x63542418
                  li x22, 0xf53ea236
                  li x23, 0x80000000
                  li x24, 0xf7f49b15
                  li x25, 0xf
                  li x26, 0x8
                  li x27, 0xf705771d
                  li x29, 0x0
                  li x30, 0x0
                  li x31, 0x0
                  la x7, user_stack_end
main:             la           a5, sub_2
                  or           ra, s8, sp
                  sub          s2, a3, a3
                  add          s10, zero, s7
                  or           gp, s5, t6
                  addi         a5, a5, 312
                  sra          s4, a4, a0
                  sra          tp, a7, a1
main_j2:          jalr         s1, a5, -311 #jump main -> sub_2
                  la           a6, sub_3
                  srai         s9, s8, 2
                  addi         a2, t2, 749
                  srli         s2, t0, 17
                  addi         a6, a6, 416
                  sra          a2, s7, a1
                  blt          s9, a5, main_j3 #branch to jump instr
                  and          s2, s6, s5
                  sub          a3, sp, t0
                  slli         t6, a6, 16
                  sll          t1, s10, s6
main_j3:          jalr         s1, a6, -415 #jump main -> sub_3
                  srai         gp, s0, 27
                  slt          a7, s2, t1
                  xori         t4, t4, -344
                  addi         t0, tp, -1138
                  la           a3, sub_4
                  addi         a3, a3, -619
                  nop
                  blt          sp, t1, main_j4 #branch to jump instr
                  slli         s1, s1, 20
main_j4:          jalr         s1, a3, 619 #jump main -> sub_4
                  xori         zero, zero, -103
                  and          a6, s7, a2
                  la           s6, sub_5
                  auipc        a4, 993084
                  addi         s6, s6, 878
                  auipc        s1, 1026196
                  andi         a6, tp, -302
                  addi         t5, s10, -1335
                  xori         t0, a7, 2000
                  beq          s11, a0, main_j5 #branch to jump instr
                  lui          t0, 620137
main_j5:          jalr         s1, s6, -877 #jump main -> sub_5
                  addi         s11, zero, 10 #init loop 1 counter
                  sra          gp, s11, t6
                  addi         t5, zero, 6 #init loop 1 limit
                  andi         zero, a5, 166
                  or           s10, t2, a1
                  addi         s9, s2, 11
main_0_1_t:       slt          a6, s10, a7
                  srai         a1, s1, 18
                  addi         s11, s11, -4 #update loop 1 counter
                  andi         s7, a3, 1784
                  addi         a5, zero, -8 #init loop 0 counter
                  sll          a0, a0, t6
                  addi         s4, zero, -14 #init loop 0 limit
main_0_0_t:       and          a0, t5, s10
                  add          gp, t3, t4
                  addi         a5, a5, -9 #update loop 0 counter
                  sra          a6, s10, t6
                  sra          s9, s8, sp
                  sub          s1, t4, s7
                  add          a3, s1, t6
                  bge          a5, s4, main_0_0_t #branch for loop 0
                  or           tp, t3, gp
                  addi         zero, t2, -1110
                  auipc        tp, 468348
                  srl          s10, tp, a3
                  srai         s9, s6, 15
                  bgeu         s11, t5, main_0_1_t #branch for loop 1
                  sltiu        s5, a5, -983
                  andi         t4, zero, -1945
                  srai         zero, a7, 14
                  beq          t6, s0, 20f
                  bltu         sp, t1, 7f
                  lui          s8, 457220
                  auipc        s4, 535265
                  slt          a7, zero, a5
7:                xor          s9, gp, tp
                  add          s5, zero, a5
                  lui          a6, 236733
                  nop
                  sub          s8, s1, a1
                  blt          s11, t5, 20f
                  andi         s9, s5, -39
                  slti         a5, tp, 142
                  or           tp, tp, s3
                  srai         s0, a2, 13
                  srli         s1, tp, 2
                  sltiu        s10, ra, 288
                  beq          t4, tp, 21f
20:               addi         a7, s5, 365
21:               ori          s5, t2, -1595
                  bne          t0, sp, 31f
                  ori          t5, sp, -1078
                  ori          s2, s8, -1796
                  sltu         s10, a4, s10
                  auipc        tp, 29529
                  slli         s5, a1, 5
                  xor          s8, t1, a7
                  ori          tp, t1, 1065
                  bgeu         s8, s1, 48f
31:               srai         s3, s0, 7
                  andi         a4, t3, -1001
                  bltu         s8, s11, 35f
                  bgeu         a0, s2, 54f
35:               beq          a0, sp, 51f
                  xor          a2, sp, s5
                  lui          t1, 103408
                  blt          s2, t6, 44f
                  bge          t0, gp, 50f
                  add          t6, sp, zero
                  sra          a6, zero, tp
                  srli         s4, a7, 23
                  bge          t5, t4, 51f
44:               nop
                  bltu         a4, zero, 61f
                  or           s3, s2, s2
                  srai         s0, zero, 13
48:               or           t4, s8, t4
                  srai         zero, ra, 30
50:               ori          t6, s1, 571
                  slt          s8, a0, s1
                  sub          a2, t3, s10
                  slt          tp, t5, tp
                  la           s7, sub_1
                  slti         t4, s9, -9
                  and          s9, s6, s8
                  sra          ra, a2, s9
                  addi         s7, s7, 884
                  xor          s11, a7, a0
main_j1:          jalr         s1, s7, -883 #jump main -> sub_1
51:               or           t0, tp, s8
                  bltu         s3, t6, 64f
                  sub          a7, tp, zero
54:               xor          a6, t1, gp
                  andi         t1, gp, 1446
                  or           gp, s6, a4
                  bge          s2, s2, 66f
                  slti         a6, t3, 989
                  add          s3, sp, s5
                  sltu         s2, t6, s9
61:               bne          s5, s2, 66f
                  ori          s11, ra, -1324
                  nop
64:               sub          ra, s6, zero
                  sltu         s5, a6, a4
66:               sub          s0, a0, zero
                  addi         s1, tp, 65
                  la x2, test_done
                  jalr x0, x2, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            lui          a7, 486730
                  srai         s4, a5, 7
                  and          s11, a1, a6
                  bne          s10, zero, sub_1_stack_p
sub_1_stack_p:    addi         t2, t2, -24
                  slti         t1, a6, 1267
                  sw           s1, 4(t2)
                  addi         s11, a5, -1449
                  slli         s5, t3, 2
                  slt          s4, a5, s6
                  srli         a0, t2, 3
                  xor          ra, t4, s11
                  xor          t0, a7, t3
                  slt          a4, t0, s2
                  sltiu        t1, s0, -958
                  auipc        s6, 831890
                  addi         gp, a7, 251
                  srli         gp, gp, 16
                  bltu         a2, t2, 9f
                  or           t6, a5, sp
                  xor          a5, s5, t4
9:                lui          a4, 627681
                  auipc        a0, 653471
                  lw           s1, 4(t2)
                  slli         t5, sp, 25
                  addi         t2, t2, 24
                  srl          s3, t2, a1
                  and          s8, a4, a0
                  srli         t5, s0, 9
29:               addi x24, x9, 1
29:               jalr x24, x24, 0
sub_4:            and          s0, s7, t5
                  addi         t2, t2, -56
                  sw           s1, 4(t2)
                  sltu         s4, s3, t3
                  slli         t0, t2, 7
                  addi         s9, zero, -8 #init loop 0 counter
                  srl          a5, t6, a1
                  xori         t1, s3, -458
                  sll          a2, s9, a1
                  nop
                  addi         a3, zero, -1 #init loop 0 limit
                  nop
sub_4_1_0_t:      ori          a1, s7, 915
                  and          s7, s0, a2
                  nop
                  slti         gp, a2, -1474
                  slt          a4, sp, a0
                  addi         s9, s9, 9 #update loop 0 counter
                  auipc        gp, 43676
                  blt          s9, a3, sub_4_1_0_t #branch for loop 0
                  addi         s11, t2, -370
                  addi         gp, zero, -10 #init loop 1 counter
                  addi         s8, zero, -12 #init loop 1 limit
sub_4_2_1_t:      sltiu        s7, s10, 1763
                  addi         gp, gp, -2 #update loop 1 counter
                  addi         s5, zero, -9 #init loop 0 counter
                  addi         t1, zero, 18 #init loop 0 limit
sub_4_2_0_t:      xori         ra, s8, 1436
                  addi         s5, s5, 3 #update loop 0 counter
                  blt          s5, t1, sub_4_2_0_t #branch for loop 0
                  beq          gp, s8, sub_4_2_1_t #branch for loop 1
                  sltu         s10, a6, t5
                  addi         s10, zero, 9 #init loop 0 counter
                  xor          s6, s4, t6
                  srai         t0, s7, 19
                  slli         s7, s6, 9
                  ori          tp, a3, 69
                  sra          t1, t1, sp
                  srli         gp, t5, 30
                  sltiu        t4, a6, 1220
                  sltiu        s4, s7, -392
                  slt          t1, a0, a1
                  and          s11, s6, s1
                  xori         s1, a1, -192
                  or           t6, t2, gp
                  lui          s9, 190606
                  auipc        a4, 85598
                  addi         a2, zero, 14 #init loop 0 limit
                  xor          s7, s7, t6
sub_4_0_0_t:      auipc        s7, 297839
                  slt          s6, tp, s9
                  slt          a0, t4, t1
                  nop
                  addi         s10, s10, 5 #update loop 0 counter
                  srli         s6, a0, 28
                  andi         t1, zero, 573
                  slt          s0, s4, a2
                  beq          s10, a2, sub_4_0_0_t #branch for loop 0
                  sltu         zero, a4, s7
                  sltu         t5, s1, s11
                  blt          zero, t3, 20f
                  bgeu         t5, a2, 9f
                  sltiu        zero, ra, -766
                  xori         t0, a3, 1779
                  blt          t2, t3, 24f
                  or           s7, s5, tp
                  slli         zero, a1, 17
                  addi         s2, t4, 1176
9:                lui          a3, 161745
                  beq          s9, gp, 22f
                  sll          s7, a6, sp
                  bge          s10, t1, 27f
                  lui          s6, 462021
                  sll          s9, s6, t0
                  sll          zero, t1, t4
                  ori          s10, s3, -193
                  srl          s7, sp, sp
                  ori          ra, a3, -1437
                  sll          tp, s2, a0
20:               bgeu         s11, t0, 36f
                  andi         t0, s9, 393
22:               slti         t0, zero, -983
                  xori         s11, s4, -910
24:               srl          s11, s4, s3
                  andi         a0, s10, 602
                  sltu         ra, a2, s4
27:               sltu         t4, a5, zero
                  sub          s8, tp, s10
                  slt          zero, a6, s7
                  slti         s1, s3, 782
                  and          a7, a0, s6
                  lui          t0, 950093
                  sra          s7, s0, s5
                  srai         a6, zero, 16
                  sll          s7, t0, t1
36:               slli         s1, s4, 19
                  ori          a7, s4, 838
                  sll          s0, a5, s3
                  xori         s6, t1, -244
                  sltiu        s2, a1, 2042
                  xor          t5, a1, t3
                  xori         a5, s4, 2045
                  sub          a7, a0, t0
                  or           gp, s0, s8
                  bge          t6, a3, 49f
                  xori         s6, s9, -339
                  srli         a6, tp, 26
                  blt          tp, ra, 66f
49:               sub          a7, sp, a5
                  auipc        t6, 178700
                  srai         gp, s0, 12
                  add          t6, t6, s11
                  slli         s5, t5, 21
                  sra          s8, s8, s1
                  or           a0, a1, sp
                  bgeu         s2, sp, 65f
                  or           s3, s11, t4
                  beq          t5, s9, 66f
                  xor          zero, s10, a4
                  auipc        a6, 828496
                  slli         a1, s2, 7
                  sltu         a0, s6, s7
                  srai         a6, a4, 20
                  beq          t2, s6, 74f
65:               sltu         tp, a7, s11
66:               and          zero, a4, s5
                  auipc        s7, 19818
                  and          s9, t2, a2
                  blt          gp, ra, 74f
                  slti         s2, s8, 16
                  bgeu         sp, t6, 90f
                  addi         gp, s2, 1761
                  auipc        s1, 105176
74:               slti         zero, t5, -218
                  sra          s2, s0, a1
                  andi         zero, s6, 553
                  xor          t0, ra, a2
                  xori         a6, a0, 1652
                  sub          a3, t3, t0
                  slli         a7, s7, 5
                  beq          t3, a1, 97f
                  sll          a5, s11, s11
                  sltu         a6, s7, tp
                  bne          s7, t3, 89f
                  sra          a0, s3, ra
                  slli         gp, s6, 22
                  bge          a3, s8, 97f
                  beq          s5, t5, 90f
89:               slt          a3, ra, a7
90:               srl          tp, t5, s1
                  slti         s11, s5, -120
                  beq          t5, s6, 104f
                  slt          s1, a5, t4
                  auipc        s10, 47036
                  sltu         tp, s7, sp
                  nop
97:               bne          ra, a5, 104f
                  srai         tp, t3, 9
                  or           s9, s9, s10
                  sltu         s8, t5, s7
                  sltiu        s4, a3, -1581
                  bge          t0, s0, 114f
                  slti         s5, s0, -195
104:              ori          t1, s10, -1808
                  lui          a0, 1012226
                  and          s11, s10, s5
                  andi         a7, t2, 877
                  xori         a2, a6, 229
                  and          tp, s9, s8
                  sub          ra, s8, s7
                  ori          t6, ra, 807
                  slli         t4, t5, 12
                  sltu         t0, s4, t6
114:              nop
                  ori          t0, t3, 210
                  sll          a6, t5, t6
                  srl          t0, t0, a7
                  and          s7, s10, a4
                  lui          gp, 217532
                  blt          s11, a3, 138f
                  sltiu        s0, s0, 182
                  bgeu         t2, t2, 128f
                  or           s0, t5, s1
                  xor          ra, s4, a0
                  srai         s5, s5, 18
                  ori          a0, t4, 330
                  sltiu        tp, s8, -262
128:              sra          a5, t2, a0
                  bne          s5, s6, 131f
                  ori          a1, t0, -776
131:              and          ra, a6, a3
                  bltu         t5, sp, 143f
                  bne          t3, s9, 148f
                  srl          tp, a6, a5
                  srl          ra, ra, s8
                  sra          s1, a5, s7
                  slli         s7, s8, 22
138:              slt          s8, t2, a7
                  lui          s3, 992598
                  sll          s11, t0, t5
                  xor          t6, s8, t6
                  sltiu        gp, t3, 1156
143:              xor          s2, s4, gp
                  sll          t4, s8, a5
                  srai         s2, s2, 6
                  srli         tp, tp, 15
                  srai         s10, tp, 22
148:              sub          zero, t5, a0
                  or           s8, t0, ra
                  bgeu         t5, t6, 170f
                  add          s10, s8, a4
                  bne          zero, s9, 167f
                  auipc        s1, 152885
                  sra          gp, ra, t3
                  andi         s2, t6, 469
                  sub          s8, s11, s11
                  add          s10, ra, t4
                  bge          a1, t1, 168f
                  xor          s3, t2, s4
                  slti         a4, t5, 202
                  beq          s6, t3, 162f
162:              sltiu        a5, t0, -457
                  slti         s9, s3, -294
                  andi         a5, sp, -507
                  ori          s4, a4, 624
                  lui          s1, 840175
167:              slti         t4, zero, 1711
168:              add          s10, a6, s10
                  sra          s10, s3, s2
170:              bne          s7, zero, 172f
                  beq          s7, t2, 172f
172:              bge          s7, s11, 191f
                  xori         gp, t4, -1085
                  sltiu        a5, t0, 218
                  lui          tp, 462726
                  beq          s7, s8, 187f
                  slt          s10, a6, a1
                  addi         tp, s5, -1257
                  lui          t5, 884010
                  bgeu         a5, s6, 193f
                  sub          s9, s8, t3
                  sll          s8, s0, gp
                  or           s11, tp, a3
                  beq          s3, a1, 193f
                  ori          ra, t6, -1129
                  bge          s8, t2, 193f
187:              sub          a6, t5, s4
                  slli         t4, s11, 14
                  andi         tp, s9, -1733
                  and          s8, a5, tp
191:              bgeu         s3, a3, 193f
                  lui          s5, 385006
193:              and          a3, a4, a7
                  srai         s10, s3, 21
                  lw           s1, 4(t2)
                  xori         a6, ra, 1938
                  slti         s5, a2, 1937
                  and          t6, s0, a2
                  addi         t2, t2, 56
                  xori         s6, gp, 957
                  or           tp, gp, a2
                  sll          a4, a6, s2
                  add          s7, a3, t4
                  addi         s3, s0, 1713
264:              addi x8, x9, 0
264:              jalr x8, x8, 0
sub_3:            beq          s11, s9, sub_3_stack_p
                  srai         t4, a1, 17
sub_3_stack_p:    addi         t2, t2, -16
                  ori          a7, s11, 1415
                  sw           s1, 4(t2)
                  and          s4, a4, t2
                  addi         s2, zero, 2 #init loop 0 counter
                  addi         zero, s1, 823
                  auipc        s1, 913030
                  slli         zero, s4, 8
                  lui          s6, 429083
                  auipc        s3, 778769
                  addi         ra, zero, -1 #init loop 0 limit
                  or           t6, s7, t6
                  auipc        t6, 184246
                  sltiu        a0, a0, 51
                  slt          tp, s2, s5
                  or           a5, tp, s10
                  sll          s8, a2, t6
                  srai         a1, s2, 0
                  auipc        s10, 665404
                  sra          s9, zero, t2
                  srl          t1, s9, a7
sub_3_1_0_t:      auipc        a0, 29038
                  sll          gp, tp, a3
                  slti         s5, a1, -1314
                  or           zero, gp, a5
                  slli         s9, s2, 17
                  sltu         a1, tp, t3
                  addi         s2, s2, -10 #update loop 0 counter
                  xori         s1, a7, 1281
                  add          s9, s1, s6
                  slli         gp, s1, 8
                  andi         s5, s6, -1677
                  bge          s2, ra, sub_3_1_0_t #branch for loop 0
                  andi         s10, a2, 1558
                  addi         s11, zero, -1 #init loop 0 counter
                  srl          t6, a4, s8
                  sll          a6, s8, t1
                  add          s6, s2, zero
                  slt          s1, s3, a1
                  slt          t5, gp, s0
                  addi         s9, zero, 6 #init loop 0 limit
                  auipc        a7, 385381
                  or           ra, a2, t6
sub_3_2_0_t:      xori         s6, s2, 419
                  slti         s0, s0, -1694
                  andi         tp, s10, 302
                  addi         a7, s4, -1765
                  sub          s5, s3, t5
                  sra          t5, s8, zero
                  auipc        zero, 843634
                  sub          gp, a2, a4
                  sra          a0, a7, t2
                  addi         s11, s11, 8 #update loop 0 counter
                  or           a7, gp, t5
                  slti         s6, s1, -1368
                  srl          gp, t5, s5
                  add          s5, s4, a3
                  or           a3, s2, t4
                  sltiu        a7, a3, 411
                  blt          s11, s9, sub_3_2_0_t #branch for loop 0
                  sll          a2, tp, t0
                  addi         s10, zero, -1 #init loop 1 counter
                  sltiu        t5, ra, 207
                  xor          s5, s5, s6
                  addi         a0, zero, 11 #init loop 1 limit
                  sltu         t4, a0, s0
                  add          t6, t2, t6
sub_3_10_1_t:     slti         s11, a5, 383
                  add          t5, s4, s0
                  addi         s10, s10, 4 #update loop 1 counter
                  slt          t4, a3, s6
                  sll          gp, s2, a5
                  sltu         gp, s3, a3
                  addi         a1, zero, -5 #init loop 0 counter
                  sub          gp, a6, t6
                  addi         s0, zero, -13 #init loop 0 limit
sub_3_10_0_t:     slt          s6, t3, s6
                  srli         s7, t4, 12
                  andi         a4, s11, 1013
                  xor          s7, sp, t1
                  srli         t4, t2, 3
                  nop
                  srai         t4, s4, 8
                  addi         a1, a1, -2 #update loop 0 counter
                  beq          a1, s0, sub_3_10_0_t #branch for loop 0
                  ori          gp, t3, 1396
                  sub          a7, sp, a0
                  andi         s11, s9, 0
                  bne          s10, a0, sub_3_10_1_t #branch for loop 1
                  srli         a7, s9, 10
                  addi         s8, zero, 0 #init loop 1 counter
                  add          s11, s9, s7
                  addi         s6, zero, 4 #init loop 1 limit
                  xor          t4, a5, s10
sub_3_6_1_t:      ori          s3, a7, -32
                  srli         ra, a0, 28
                  addi         s8, s8, 10 #update loop 1 counter
                  sltu         zero, s11, s7
                  or           a6, s11, a0
                  addi         a1, zero, -7 #init loop 0 counter
                  xori         gp, s5, -1647
                  addi         a3, zero, 19 #init loop 0 limit
                  ori          t4, t6, -2040
                  xori         a2, a1, 1949
                  slti         s11, s3, -375
                  lui          a6, 854101
sub_3_6_0_t:      sltiu        a6, s10, -1558
                  sltu         ra, t3, a7
                  sltu         s11, sp, t5
                  addi         a1, a1, 8 #update loop 0 counter
                  sll          a4, ra, s5
                  bltu         a1, a3, sub_3_6_0_t #branch for loop 0
                  sub          a0, a0, s7
                  srai         s10, t2, 21
                  sub          s3, sp, gp
                  sll          s3, a2, t3
                  sltiu        s5, t3, 228
                  ori          a2, a3, -620
                  and          s11, s5, s9
                  bltu         s8, s6, sub_3_6_1_t #branch for loop 1
                  and          s1, a7, s7
                  addi         s4, zero, -8 #init loop 0 counter
                  addi         a5, zero, -16 #init loop 0 limit
                  srl          ra, a5, a4
                  lui          t4, 117920
                  andi         s7, s9, 420
                  xori         s0, s10, 993
sub_3_5_0_t:      and          s11, s11, sp
                  sltiu        s3, s9, -179
                  addi         s4, s4, -6 #update loop 0 counter
                  ori          a2, a2, -824
                  slti         s7, a6, -1391
                  bge          s4, a5, sub_3_5_0_t #branch for loop 0
                  srai         a6, s7, 25
                  addi         a5, zero, -6 #init loop 0 counter
                  sub          tp, zero, a1
                  addi         a3, zero, 3 #init loop 0 limit
                  xor          t0, s3, zero
sub_3_0_0_t:      auipc        tp, 323583
                  xori         s9, tp, 1397
                  addi         a5, a5, 6 #update loop 0 counter
                  nop
                  srai         a2, t0, 25
                  blt          a5, a3, sub_3_0_0_t #branch for loop 0
                  sltu         s9, s7, sp
                  addi         s3, zero, -2 #init loop 0 counter
                  xori         s8, a0, -985
                  srai         gp, tp, 11
                  slt          a3, a5, s8
                  auipc        t0, 662669
                  ori          a2, s0, -1974
                  addi         a7, zero, 13 #init loop 0 limit
                  lui          t1, 33262
                  andi         a0, s8, 714
                  slli         a5, a0, 28
                  andi         s0, t2, 1866
sub_3_7_0_t:      or           zero, a7, s3
                  lui          t6, 737027
                  add          ra, s11, t1
                  sub          a2, s7, t6
                  srli         s11, ra, 5
                  ori          a0, t6, 636
                  addi         s3, s3, 7 #update loop 0 counter
                  and          s7, zero, s6
                  and          s9, s8, s9
                  sra          s6, a0, a0
                  auipc        t0, 260481
                  srai         s4, s11, 3
                  blt          s3, a7, sub_3_7_0_t #branch for loop 0
                  srl          a0, zero, tp
                  addi         s7, zero, -10 #init loop 0 counter
                  xor          a7, s1, s4
                  srai         a1, a3, 17
                  slti         s10, tp, -1965
                  sltu         t4, a0, tp
                  sltu         a7, a6, s10
                  addi         a3, zero, 2 #init loop 0 limit
                  srli         s1, a1, 28
                  add          s6, t1, t0
                  add          a2, gp, t3
                  andi         zero, a3, -555
                  srl          s9, t1, s5
sub_3_8_0_t:      or           s0, zero, a4
                  sll          s4, s8, a6
                  slti         a4, t4, 1927
                  andi         gp, gp, -1074
                  sub          a1, ra, a3
                  slt          s0, t3, s3
                  andi         ra, a4, -998
                  addi         s7, s7, 6 #update loop 0 counter
                  sltu         s8, s0, s5
                  andi         a2, a1, -1890
                  sra          a0, tp, s8
                  xori         a1, t1, -1931
                  auipc        s6, 448412
                  and          tp, a5, a5
                  srl          s6, t5, a7
                  bne          s7, a3, sub_3_8_0_t #branch for loop 0
                  auipc        s8, 54535
                  addi         gp, zero, -6 #init loop 0 counter
                  slti         ra, a2, -1189
                  slt          t6, s4, gp
                  or           s2, sp, a1
                  nop
                  xor          t1, s9, t1
                  xori         s7, s9, 895
                  auipc        t6, 238758
                  and          s0, t2, a5
                  addi         a2, zero, 18 #init loop 0 limit
sub_3_4_0_t:      sltu         s5, a6, t3
                  lui          a0, 877021
                  slt          t6, sp, t0
                  slli         s2, zero, 31
                  xori         t4, a2, 1841
                  addi         gp, gp, 8 #update loop 0 counter
                  ori          t1, s7, 1401
                  auipc        s0, 336916
                  xori         a6, t0, 1252
                  sltiu        s10, t2, 1495
                  auipc        a6, 858920
                  slli         a7, a0, 29
                  add          s4, s0, t5
                  nop
                  sub          s2, t1, s1
                  addi         t0, s0, -1878
                  beq          gp, a2, sub_3_4_0_t #branch for loop 0
                  xori         a0, sp, 1798
                  addi         a2, zero, 6 #init loop 0 counter
                  sltiu        t4, t4, 816
                  addi         s1, zero, -10 #init loop 0 limit
                  xor          t6, a6, s9
                  xor          gp, t5, t3
sub_3_9_0_t:      sltu         a3, a7, s2
                  xor          s8, gp, sp
                  addi         a2, a2, -3 #update loop 0 counter
                  bge          a2, s1, sub_3_9_0_t #branch for loop 0
                  add          s0, t4, s4
                  lui          a4, 724502
                  srli         t0, s7, 24
                  lui          gp, 55586
                  sra          t4, s4, s7
                  blt          s6, s1, 24f
                  lui          s9, 733604
                  nop
                  slli         t0, s4, 10
                  srli         gp, a3, 18
                  slli         s10, t2, 21
                  srl          a3, t2, a5
                  addi         a1, s4, -537
                  xor          tp, s10, t5
                  sltu         t5, a3, t4
                  beq          tp, t5, 31f
                  slt          a5, s5, a1
                  blt          s11, t6, 22f
                  blt          a5, t6, 28f
                  sll          t6, a5, a0
                  slt          s3, a0, t2
                  sltu         s5, t4, s4
                  auipc        s7, 660659
22:               slli         s6, gp, 13
                  srl          s9, s0, t3
24:               lui          s4, 785001
                  srli         s11, a0, 19
                  sll          a7, a5, sp
                  srli         s7, s2, 25
28:               nop
                  bltu         t6, s11, 36f
                  slti         s2, s1, -789
31:               add          s11, s2, sp
                  srl          ra, t3, s5
                  addi         a3, a3, -544
                  blt          sp, s11, 47f
                  sra          t1, t3, a3
36:               slti         a6, s9, -1721
                  bge          s3, s0, 38f
38:               bltu         a1, ra, 45f
                  bge          a0, sp, 46f
                  srli         s10, s5, 31
                  sll          a3, t5, s10
                  srli         a7, s3, 20
                  add          t4, t1, zero
                  sltiu        s8, s9, 687
45:               lui          a2, 71672
46:               bne          t0, ra, 57f
47:               bne          a4, s3, 66f
                  sltiu        zero, t4, 872
                  bge          s2, a3, 55f
                  addi         t1, a3, 558
                  slti         a3, s1, -392
                  srli         a1, s10, 28
                  blt          a4, s4, 71f
                  add          a4, s0, ra
55:               nop
                  bgeu         a2, s5, 60f
57:               addi         s4, sp, -1567
                  sll          t1, a3, s0
                  srai         s1, sp, 12
60:               auipc        s5, 465575
                  sra          s0, s9, gp
                  andi         s4, t5, -876
                  sub          s0, s9, t3
                  addi         a3, sp, 1361
                  srai         s1, t0, 18
66:               bltu         s8, t6, 74f
                  blt          s5, t3, 78f
                  bge          t2, t6, 83f
                  bltu         t3, s7, 78f
                  slli         a5, tp, 3
71:               sll          s4, s4, s6
                  sltiu        a0, s0, -802
                  srli         s4, s6, 13
74:               bne          zero, t2, 89f
                  add          s9, a4, t5
                  and          t6, a2, s2
                  sll          a1, t6, t1
78:               bgeu         s6, a3, 96f
                  sltu         t5, gp, s10
                  add          a3, a4, s8
                  or           a1, a0, s5
                  ori          s8, zero, -585
83:               srli         s10, a7, 13
                  bgeu         s2, a2, 99f
                  sra          gp, s2, a6
                  srl          a0, s4, s10
                  auipc        s2, 664368
                  beq          s4, s7, 95f
89:               srl          s0, s9, a4
                  and          a0, t6, t2
                  addi         s11, s2, -1213
                  sra          s7, s11, ra
                  beq          zero, sp, 100f
                  andi         s10, t4, 977
95:               blt          a4, s10, 114f
96:               srai         a4, a6, 26
                  sub          s10, t0, a0
                  bltu         tp, s0, 116f
99:               ori          a2, a4, 1780
100:              slli         s10, t2, 0
                  nop
                  nop
                  slt          s6, a0, s4
                  andi         t5, s4, 777
                  addi         s11, s11, -1717
                  xori         tp, s10, 1939
                  sra          a3, tp, s4
                  xor          a3, t0, t1
                  blt          t1, s10, 129f
                  nop
                  bgeu         t4, t1, 130f
                  bgeu         ra, a0, 114f
                  andi         t5, s3, -120
114:              sltiu        s2, t1, -242
                  sub          s1, s9, t5
116:              srli         a6, s5, 19
                  sltu         a4, t4, a2
                  sltiu        t1, ra, 1614
                  or           t4, s1, a3
                  or           s6, s6, s7
                  blt          t1, a4, 137f
                  bne          t5, zero, 123f
123:              sll          tp, s7, s1
                  or           s10, sp, a5
                  srli         tp, s4, 27
                  srli         s0, s6, 24
                  auipc        s10, 720901
                  or           a6, a5, a6
129:              bne          s0, t0, 140f
130:              andi         a1, tp, -280
                  add          t4, s11, a6
                  bgeu         a4, s2, 150f
                  blt          zero, s10, 148f
                  bge          a6, a0, 141f
                  and          s3, a4, s5
                  andi         s6, t3, 973
137:              slli         s3, s4, 31
                  addi         s2, s5, -1855
                  srl          tp, s1, a1
140:              sll          a6, t0, t4
141:              ori          t4, s9, -1436
                  srli         s9, t3, 11
                  nop
                  blt          s5, a6, 151f
                  sltu         s10, t0, s4
                  add          s11, zero, gp
                  auipc        a3, 473103
148:              slli         gp, a2, 20
                  slli         a3, s2, 14
150:              sltu         s6, a2, a3
151:              sltu         t0, a5, s5
                  blt          s8, s5, 170f
                  nop
                  bltu         s9, s3, 167f
                  slti         s2, s7, 735
                  add          t4, a6, zero
                  srli         s0, t5, 21
                  bltu         a7, s7, 178f
                  lui          t6, 13633
                  bltu         t0, s5, 175f
                  slti         t4, t1, 111
                  bgeu         t0, sp, 168f
                  srl          s8, s3, a4
                  bltu         t0, gp, 170f
                  bgeu         s10, s0, 173f
                  ori          a6, a7, 198
167:              auipc        s10, 503598
168:              lui          s2, 33448
                  bltu         t1, a7, 188f
170:              bge          s5, a1, 187f
                  ori          t0, sp, 1685
                  auipc        a4, 199766
173:              bltu         ra, a5, 175f
                  bltu         a7, s2, 185f
175:              slli         s9, t2, 28
                  srli         a5, sp, 7
                  addi         zero, zero, -1522
178:              sll          s6, t0, a1
                  and          s5, tp, s11
                  and          s6, s4, a3
                  and          s4, t4, t2
                  beq          gp, gp, 201f
                  add          s11, zero, a3
                  andi         t4, t3, 922
185:              srl          tp, t3, t2
                  and          t5, s0, s5
187:              sltu         gp, a7, s1
188:              bne          t1, s2, 195f
                  and          t1, s5, s9
                  slt          a6, s0, a0
                  auipc        a7, 238336
                  nop
                  sra          t1, a6, s9
                  add          a2, tp, ra
195:              blt          t5, s8, 211f
                  blt          a0, s1, 200f
                  srli         t0, a3, 24
                  slt          s5, s7, a1
                  andi         tp, s6, 1220
200:              srli         s1, s2, 29
201:              beq          a4, s10, 212f
                  srl          ra, a3, a0
                  auipc        t1, 409839
                  srli         s3, s0, 18
                  xori         s2, s1, -374
                  sltiu        s11, s3, -574
                  sltiu        s10, s10, -1980
                  nop
                  and          s5, t5, tp
                  bne          s6, gp, 219f
211:              blt          s10, ra, 212f
212:              lui          a1, 485747
                  bge          a5, t6, 232f
                  addi         s6, a7, 511
                  xori         s1, s10, -217
                  xori         t1, a2, -1421
                  bltu         t6, t3, 237f
                  and          a4, s8, s3
219:              slti         a4, s11, 2010
                  and          t4, s8, sp
                  slti         s3, a0, -541
                  bne          a5, t5, 229f
                  slt          s8, a7, t3
                  srl          s10, a5, t0
                  sra          s10, s8, tp
                  xori         s9, t4, -830
                  blt          sp, t3, 234f
                  srli         s2, s7, 3
229:              blt          a7, s9, 230f
230:              bltu         a2, s7, 248f
                  blt          t1, s8, 246f
232:              xor          a4, t1, s3
                  srli         s4, a3, 15
234:              nop
                  srai         a7, gp, 1
                  xor          s3, a5, t2
237:              srai         ra, zero, 7
                  slt          s7, s8, s3
                  xori         zero, s6, 942
                  addi         s6, t3, 1895
                  srl          s5, a3, s5
                  sltu         a7, s3, t4
                  and          a5, s8, gp
                  srli         t6, s7, 17
                  slli         s9, t6, 0
246:              lui          t1, 607943
                  srli         s8, tp, 1
248:              sra          s10, t5, sp
                  slli         a7, s5, 24
                  ori          zero, s4, -1728
                  srl          a1, a4, s10
                  beq          t1, a2, 263f
                  bgeu         tp, sp, 272f
                  xor          s7, s4, s5
                  sltiu        a4, s9, 156
                  beq          t4, s1, 274f
                  bne          a0, t5, 272f
                  xor          s11, t5, s8
                  srai         t1, a6, 23
                  srli         zero, tp, 26
                  slli         s10, tp, 3
                  sra          s5, zero, s2
263:              srli         zero, t6, 5
                  sll          t5, s6, a0
                  nop
                  bltu         s3, ra, 275f
                  sub          zero, t6, s3
                  xori         a1, gp, -521
                  bgeu         t4, tp, 270f
270:              beq          s2, s7, 277f
                  bltu         t2, a0, 287f
272:              auipc        tp, 194230
                  addi         s0, s11, 1427
274:              nop
275:              sub          s6, s7, tp
                  bge          a7, a0, 282f
                  addi         t5, zero, 5 #init loop 0 counter
                  sltiu        t1, ra, 1277
                  sra          a3, a7, a5
                  slli         a4, a4, 11
                  ori          s3, s3, -1123
                  addi         a6, zero, 13 #init loop 0 limit
                  xor          a2, a2, s3
                  ori          s5, a1, 150
sub_3_3_0_t:      slti         a7, s4, 1722
                  sltu         t1, zero, a4
                  lui          s9, 411273
                  addi         t5, t5, 2 #update loop 0 counter
                  nop
                  sltu         t4, t2, t0
                  sltiu        a3, s9, -435
                  bne          t5, a6, sub_3_3_0_t #branch for loop 0
                  sll          s4, s9, t6
277:              add          s3, a1, a4
                  ori          s6, s7, -22
                  xori         t4, t5, -624
                  sra          s5, a6, a5
                  slli         s4, gp, 13
282:              bne          gp, a5, 297f
                  addi         zero, a2, -723
                  slti         t1, sp, -510
                  bge          s11, s8, 287f
                  blt          t4, a6, 293f
287:              andi         s2, gp, -153
                  xori         ra, tp, -1497
                  add          t5, a1, s1
                  andi         gp, t0, -192
                  beq          t4, a0, 292f
292:              srai         s10, t2, 3
293:              beq          s3, a6, 311f
                  srai         s9, t5, 25
                  add          s5, s10, s6
                  sub          a2, s10, s7
297:              or           a5, gp, s3
                  srai         s8, s1, 26
                  bltu         zero, s3, 314f
                  slli         a4, t2, 12
                  ori          s9, a2, -1093
                  xor          zero, t6, s7
                  ori          s11, a7, 580
                  ori          s6, s3, 1612
                  srai         s9, a2, 3
                  srai         s8, t2, 20
                  auipc        s4, 213471
                  andi         a5, t5, -1653
                  andi         t4, a6, -1179
                  bge          s2, ra, 314f
311:              sub          t4, a2, s1
                  addi         a2, t3, -1014
                  slli         s2, a3, 26
314:              bne          ra, s6, 332f
                  or           t0, t6, t6
                  slti         a2, s3, -1261
                  nop
                  beq          s1, a6, 335f
                  andi         a4, t2, 621
                  or           gp, t0, s9
                  slli         s4, a1, 26
                  bne          s4, a1, 329f
                  xori         a3, a5, 341
                  srai         a3, ra, 19
                  addi         s9, s0, -123
                  add          t6, t3, s0
                  nop
                  andi         s4, a6, 1889
329:              nop
                  sub          s9, s1, t2
                  srli         s3, a4, 26
332:              slli         s5, s1, 9
                  slti         t1, zero, 1249
                  xor          a1, s5, s8
335:              blt          t4, t5, 355f
                  slli         s6, a0, 22
                  srli         gp, s7, 18
                  slti         a3, sp, -1378
                  blt          s6, t1, 358f
                  slli         s6, a7, 12
                  add          s11, s7, t0
                  sub          a3, s1, zero
                  and          s9, a5, t6
                  and          s2, a2, zero
                  srl          ra, a2, tp
                  blt          a5, t6, 353f
                  sltiu        t5, t6, 222
                  lui          tp, 869526
                  or           tp, tp, a3
                  bgeu         a4, gp, 370f
                  blt          t1, s11, 362f
                  add          ra, zero, t1
353:              xori         a2, a0, -1778
                  srli         s6, t6, 8
355:              beq          s1, s1, 366f
                  srai         a7, t3, 9
                  beq          t4, s8, 370f
358:              add          s11, t1, s1
                  bgeu         tp, ra, 378f
                  sltiu        s9, s6, 149
                  sll          a3, s10, s11
362:              srl          s10, t0, a0
                  xori         s0, a4, 342
                  sltu         t6, s0, s1
                  sub          a2, a0, t2
366:              blt          a7, a5, 373f
                  srai         t1, s3, 16
                  nop
                  sltu         ra, ra, t1
370:              andi         t0, s8, 1006
                  xor          s11, s7, t0
                  xor          gp, sp, s3
373:              bgeu         t0, s10, 379f
                  lui          t4, 377033
                  add          a7, s1, s9
                  slt          a7, ra, s9
                  xor          a4, sp, a6
378:              nop
379:              bne          s10, t5, 387f
                  sra          a3, t6, s4
                  xori         s0, sp, 1983
                  auipc        a4, 765979
                  sll          a1, t0, t4
                  beq          s7, s8, 395f
                  beq          s6, s7, 403f
                  srl          t6, a6, s9
387:              srai         t4, a1, 17
                  and          ra, sp, t3
                  and          s5, s2, t4
                  xori         s1, t0, 1723
                  nop
                  sltu         s2, s11, s7
                  srai         s1, a7, 27
                  sll          tp, t6, s3
395:              or           t5, ra, s4
                  bgeu         t5, a2, 404f
                  blt          s9, s4, 404f
                  bne          s8, s9, 415f
                  ori          s6, s4, 38
                  xor          s6, a7, s6
                  sltu         t6, s11, a1
                  xori         s6, a7, 318
403:              sltu         t1, a4, s5
404:              srl          s10, s3, t0
                  bne          t6, s5, 425f
                  ori          s10, t3, 639
                  sltiu        t6, t5, 1582
                  sll          t6, t6, a3
                  blt          t3, t5, 428f
                  andi         ra, a6, -1690
                  bne          t3, t2, 424f
                  bltu         s4, a0, 421f
                  srl          t5, a5, a2
                  slt          tp, s9, tp
415:              and          s4, a1, a4
                  slli         s9, t1, 14
                  xori         t5, a6, 649
                  xor          a1, a0, a6
                  nop
                  sltu         zero, a5, t2
421:              or           s7, s3, t4
                  srai         ra, a6, 7
                  sra          s11, t3, t5
424:              beq          t6, a3, 431f
425:              srai         t1, t5, 21
                  bgeu         gp, s8, 427f
427:              or           a0, t3, zero
428:              ori          a5, a1, 480
                  bge          s0, t0, 436f
                  ori          t4, a5, -674
431:              ori          t1, s11, -1657
                  nop
                  and          a7, s10, a1
                  bge          s6, a0, 440f
                  slti         a4, s10, 1580
436:              auipc        tp, 769369
                  sltu         a0, s9, zero
                  blt          s6, t4, 440f
                  bltu         s11, s6, 454f
440:              andi         gp, t5, 398
                  sra          s7, s0, s0
                  sll          a5, s6, s1
                  sltiu        a0, zero, -1910
                  srl          s1, a1, sp
                  bne          s5, s0, 461f
                  sra          s2, s10, a1
                  addi         t4, tp, -798
                  or           tp, a0, a6
                  lui          s0, 320908
                  and          a7, tp, t6
                  blt          sp, t4, 458f
                  sltiu        a5, tp, 241
                  ori          t0, a5, -1067
454:              sra          a3, t5, s3
                  lui          s11, 392657
                  sll          a2, a0, s0
                  nop
458:              srai         a2, ra, 13
                  slt          gp, t0, s6
                  sub          t5, a5, s1
461:              srai         a7, tp, 30
                  blt          a3, ra, 481f
                  sll          a4, a1, a2
                  bltu         a4, t4, 475f
                  nop
                  sll          a6, ra, s2
                  xori         s8, s10, 1686
                  xor          t0, t6, a1
                  xor          s4, s1, t4
                  addi         ra, s2, -1769
                  bltu         a4, a5, 489f
                  sll          a4, gp, gp
                  blt          s0, a1, 479f
                  beq          t1, a2, 489f
475:              ori          t0, a2, 1776
                  bge          s11, s9, 480f
                  or           a3, s11, t0
                  bgeu         s7, s4, 496f
479:              beq          s10, a5, 480f
480:              bge          zero, t4, 491f
481:              srai         s6, s5, 29
                  xori         t0, t1, 1997
                  slli         zero, s6, 9
                  add          t4, t1, a4
                  nop
                  slli         a7, s11, 30
                  xori         t0, s4, -796
                  srl          a0, zero, s3
489:              bltu         a7, t1, 496f
                  sub          s1, zero, t3
491:              andi         t4, a5, 1057
                  blt          s4, s3, 507f
                  or           a3, a7, t6
                  slt          s9, a1, s6
                  lui          s10, 324928
496:              andi         t4, a0, 1127
                  sll          t1, tp, t2
                  srli         t0, t0, 5
                  xori         a5, t6, 479
                  srl          a7, ra, a0
                  bltu         a5, a1, 520f
                  and          s6, s1, s8
                  srai         t6, s7, 6
                  sll          s3, s8, s1
                  sltiu        t5, s9, -1707
                  sra          s9, s4, s5
507:              slti         s8, a5, 392
                  xor          s3, s4, zero
                  srli         t0, s9, 21
                  slti         s2, s5, 1588
                  bge          s6, a4, 531f
                  auipc        s5, 873515
                  sll          a0, t6, s4
                  bgeu         s10, a2, 520f
                  sra          s11, s4, a4
                  srl          a7, sp, s1
                  slti         t6, s11, -1723
                  auipc        s7, 285718
                  bge          a0, s8, 526f
520:              sltu         a0, s11, t3
                  srl          ra, s5, zero
                  beq          s8, s0, 542f
                  addi         s5, s1, -1075
                  srli         gp, zero, 22
                  nop
526:              srai         t1, s8, 23
                  or           s3, a4, a3
                  ori          s3, zero, -1043
                  bge          a6, s0, 540f
                  bne          t0, t3, 541f
531:              nop
                  sra          s7, t4, a7
                  sub          a2, s7, t0
                  bltu         s2, gp, 535f
535:              auipc        a6, 810927
                  beq          s8, gp, 555f
                  sll          t5, a5, ra
                  ori          a7, s2, -1124
                  addi         s2, zero, -1 #init loop 1 counter
                  addi         s3, a1, 1345
                  ori          s9, a5, -1699
                  lui          s3, 510467
                  sltiu        a1, a7, -166
                  or           s10, a3, ra
                  srai         s6, a7, 15
                  srai         s5, t1, 12
                  sll          a4, s1, s8
                  xori         s0, t3, -1114
                  slt          a2, s1, s8
                  slt          tp, t0, t1
                  ori          a2, a1, 1500
                  addi         t1, zero, 2 #init loop 1 limit
sub_3_11_1_t:     xori         s9, a4, -1728
                  sltu         t6, s7, a4
                  addi         s2, s2, 2 #update loop 1 counter
                  sub          s6, t6, a3
                  addi         s1, zero, -8 #init loop 0 counter
                  nop
                  addi         a6, zero, 4 #init loop 0 limit
sub_3_11_0_t:     sltiu        s6, s0, 566
                  sra          s0, s6, s4
                  srl          a4, s2, t5
                  addi         s1, s1, 7 #update loop 0 counter
                  sltiu        a3, a2, -905
                  blt          s1, a6, sub_3_11_0_t #branch for loop 0
                  sll          a2, a0, t4
                  and          a3, t4, a6
                  slli         t6, s10, 29
                  addi         t4, t0, -1046
                  slti         ra, a4, -851
                  xori         s9, t6, 1533
                  blt          s2, t1, sub_3_11_1_t #branch for loop 1
                  sub          gp, tp, s2
                  slti         a6, s3, -1458
540:              srai         a1, a6, 5
541:              srai         s6, s4, 29
542:              lui          a1, 928693
                  auipc        zero, 198914
                  bltu         t3, s0, 559f
                  xor          a0, a4, s5
                  bge          a5, sp, 565f
                  bge          s7, t4, 554f
                  sra          t1, a3, gp
                  srl          a6, s10, t3
                  bne          s2, s9, 557f
                  sltu         s9, a4, t2
                  sltiu        s0, s2, -276
                  blt          s0, s3, 562f
554:              bne          s9, t4, 572f
555:              or           t1, ra, s0
                  slti         s10, s0, 602
557:              xori         s2, s1, 814
                  bge          tp, s1, 576f
559:              sll          a1, s5, a0
                  auipc        a1, 239263
                  addi         s10, t0, 1949
562:              bne          s8, a7, 575f
                  ori          gp, s11, 2031
                  beq          ra, s10, 575f
565:              blt          a6, s6, 572f
                  bltu         t3, s4, 586f
                  xori         a7, t3, 987
                  and          a7, t6, s10
                  blt          s5, t3, 573f
                  ori          ra, s9, -1114
                  lui          s7, 75555
572:              srli         s4, a5, 7
573:              xori         tp, s8, -1102
                  addi         a5, sp, -744
575:              sltu         t0, s5, a7
576:              nop
                  slt          s2, s2, a1
                  bgeu         t3, a2, 586f
                  slti         t0, t2, 171
                  srai         t5, t6, 1
                  slti         t6, a7, -1159
                  beq          a6, s9, 589f
                  slli         s3, t0, 14
                  bge          s9, s7, 599f
                  ori          t1, s1, 1864
586:              srai         a0, a2, 10
                  sltu         ra, s3, a4
                  xor          s11, s3, a0
589:              sltiu        s6, s10, -1088
                  xor          a4, t2, s9
                  lui          a4, 792767
                  auipc        s0, 644293
                  sra          s2, s3, s2
                  sltu         s8, a1, tp
                  beq          s7, ra, 602f
                  addi         ra, s9, 1
                  slli         a4, t6, 28
                  sub          t1, a5, a0
599:              bge          s5, s7, 602f
                  add          s9, s10, t5
                  ori          a5, a6, 1995
602:              sub          s6, s1, s2
                  andi         a2, zero, -942
                  lw           s1, 4(t2)
                  or           s0, t1, a5
                  and          t5, s4, s1
                  sra          s2, s6, s4
                  andi         s7, gp, 743
                  srai         a1, a6, 22
                  sub          zero, s2, s9
                  addi         t2, t2, 16
                  slli         t4, a5, 11
904:              addi x24, x9, 0
904:              jalr x24, x24, 0
sub_2:            bgeu         s2, t6, sub_2_stack_p
                  nop
sub_2_stack_p:    addi         t2, t2, -56
                  ori          t5, a4, -1452
                  or           a4, a7, t3
                  and          tp, s4, s6
                  sw           s1, 4(t2)
                  sra          s0, s1, a3
                  addi         a6, zero, 9 #init loop 1 counter
                  srai         s5, s4, 7
                  sll          s4, gp, s1
                  xor          a3, s3, tp
                  addi         s8, zero, -9 #init loop 1 limit
sub_2_8_1_t:      andi         a4, a4, 2008
                  slli         t0, s6, 29
                  ori          s11, t1, -826
                  addi         s2, s7, 1848
                  addi         a6, a6, -6 #update loop 1 counter
                  slli         a3, s3, 11
                  srl          tp, t0, a5
                  lui          a7, 815690
                  sra          zero, s8, ra
                  addi         t4, zero, -5 #init loop 0 counter
                  srl          zero, s9, a4
                  addi         s6, zero, 13 #init loop 0 limit
                  slti         s7, a3, 1593
sub_2_8_0_t:      slti         s9, s5, 1549
                  andi         a3, t5, -330
                  addi         t4, t4, 9 #update loop 0 counter
                  ori          s3, t5, -1636
                  srl          a7, t0, s3
                  and          a3, ra, t0
                  or           s10, s9, t0
                  slli         t0, a2, 1
                  beq          t4, s6, sub_2_8_0_t #branch for loop 0
                  ori          a3, zero, -999
                  slti         s5, a5, -1982
                  or           a7, s11, s11
                  bge          a6, s8, sub_2_8_1_t #branch for loop 1
                  or           gp, a1, s5
                  addi         s3, zero, 4 #init loop 0 counter
                  addi         a3, zero, 16 #init loop 0 limit
sub_2_18_0_t:     xor          a5, s10, a0
                  addi         s3, s3, 6 #update loop 0 counter
                  beq          s3, a3, sub_2_18_0_t #branch for loop 0
                  sltu         s6, s5, s6
                  addi         s7, zero, -2 #init loop 0 counter
                  addi         a6, zero, 20 #init loop 0 limit
sub_2_16_0_t:     or           s5, t3, zero
                  addi         s7, s7, 5 #update loop 0 counter
                  blt          s7, a6, sub_2_16_0_t #branch for loop 0
                  xori         s2, t5, 1321
                  addi         a2, zero, -1 #init loop 0 counter
                  slt          s11, zero, s2
                  or           a1, t2, s8
                  auipc        s5, 948827
                  ori          gp, a1, 1615
                  nop
                  addi         s3, zero, 5 #init loop 0 limit
sub_2_13_0_t:     slt          s6, t2, tp
                  sltu         ra, tp, a5
                  addi         a2, a2, 2 #update loop 0 counter
                  bne          a2, s3, sub_2_13_0_t #branch for loop 0
                  srai         s4, s2, 31
                  addi         a1, zero, -1 #init loop 1 counter
                  nop
                  xor          s1, t3, gp
                  sra          s0, t4, s0
                  addi         a5, zero, 1 #init loop 1 limit
sub_2_15_1_t:     xor          s4, a6, s9
                  sltiu        a2, s1, 225
                  slli         s10, t1, 3
                  addi         s3, t4, 1650
                  sltiu        a0, s9, -476
                  addi         a1, a1, 8 #update loop 1 counter
                  slti         s7, t1, -944
                  srai         a2, s11, 23
                  addi         tp, zero, -6 #init loop 0 counter
                  srl          t1, t0, t2
                  addi         t4, zero, 12 #init loop 0 limit
                  slti         t6, s6, 846
                  sll          a4, s3, a2
                  srli         t6, t6, 7
                  addi         s2, tp, -1227
                  sltiu        t5, s9, 1385
                  srai         t5, t5, 19
sub_2_15_0_t:     or           a4, zero, a7
                  addi         tp, tp, 1 #update loop 0 counter
                  slt          t6, s7, s7
                  bltu         tp, t4, sub_2_15_0_t #branch for loop 0
                  sltiu        s5, s5, 56
                  xori         a7, s2, 86
                  andi         a7, sp, 819
                  lui          a3, 969939
                  bltu         a1, a5, sub_2_15_1_t #branch for loop 1
                  ori          gp, a4, -145
                  addi         a4, zero, -1 #init loop 0 counter
                  sltiu        s7, s1, 1597
                  srl          s10, a2, sp
                  srl          gp, s9, s0
                  srl          a6, s5, t2
                  ori          t4, s6, -493
                  ori          zero, s0, 1756
                  srli         a7, s5, 11
                  addi         s6, zero, -17 #init loop 0 limit
                  or           a2, t3, tp
                  lui          t1, 557405
                  addi         s10, t5, -1777
sub_2_0_0_t:      andi         s5, a3, 1047
                  addi         a4, a4, -8 #update loop 0 counter
                  xori         s4, s4, 1189
                  andi         s2, t0, -678
                  ori          t0, s11, 1462
                  srai         t5, s9, 28
                  xori         s3, t1, 397
                  srai         s11, s11, 17
                  slti         t1, s0, -1145
                  slli         s8, s0, 21
                  sll          s2, a3, s1
                  or           s2, t5, a0
                  sltiu        s9, gp, 2002
                  slti         tp, sp, 1085
                  beq          a4, s6, sub_2_0_0_t #branch for loop 0
                  slt          a2, a3, s2
                  addi         t4, zero, -5 #init loop 1 counter
                  srl          a3, ra, s7
                  addi         s11, a4, -1890
                  addi         s5, zero, 13 #init loop 1 limit
                  slt          s4, s11, a2
sub_2_9_1_t:      sltu         s2, s5, s7
                  sltu         t1, a6, t0
                  addi         t4, t4, 9 #update loop 1 counter
                  srli         a5, a2, 6
                  slti         zero, a1, -624
                  xor          t6, a1, s9
                  srai         s6, s2, 30
                  addi         a7, zero, 10 #init loop 0 counter
                  and          zero, ra, s10
                  addi         t5, zero, 1 #init loop 0 limit
                  slti         a6, a4, -490
                  add          a0, a7, a3
sub_2_9_0_t:      andi         a1, a6, -14
                  addi         a7, a7, -9 #update loop 0 counter
                  slti         s3, t0, 1060
                  slli         gp, a5, 25
                  ori          s9, t6, -190
                  beq          a7, t5, sub_2_9_0_t #branch for loop 0
                  add          t6, ra, a4
                  sub          s7, sp, a0
                  auipc        a2, 773824
                  srli         a6, t1, 27
                  bne          t4, s5, sub_2_9_1_t #branch for loop 1
                  xor          a5, zero, t2
                  addi         a3, zero, -1 #init loop 0 counter
                  xori         s8, t4, -382
                  add          s10, tp, s2
                  andi         t5, a3, 731
                  lui          zero, 869666
                  auipc        a6, 398536
                  sra          a5, a1, t5
                  addi         gp, zero, -16 #init loop 0 limit
                  sltiu        a5, s11, 5
sub_2_11_0_t:     sltu         s9, s2, t4
                  or           s11, a7, s9
                  slt          a0, s2, t2
                  addi         a3, a3, -1 #update loop 0 counter
                  slt          s1, a3, zero
                  ori          a7, s8, -73
                  sub          t1, a6, s3
                  bge          a3, gp, sub_2_11_0_t #branch for loop 0
                  andi         t5, a1, -1606
                  addi         s9, zero, -2 #init loop 0 counter
                  auipc        t0, 697882
                  addi         t1, zero, 6 #init loop 0 limit
                  and          a7, t3, t4
sub_2_3_0_t:      andi         t5, t0, -1219
                  addi         s9, s9, 4 #update loop 0 counter
                  sra          s2, ra, zero
                  bne          s9, t1, sub_2_3_0_t #branch for loop 0
                  srai         s6, s6, 23
                  addi         tp, zero, 0 #init loop 1 counter
                  addi         s10, zero, 11 #init loop 1 limit
                  or           s6, t4, a7
sub_2_2_1_t:      ori          s9, t4, 581
                  ori          a7, s10, 1342
                  srl          t5, s11, t1
                  addi         tp, tp, 9 #update loop 1 counter
                  addi         s1, zero, 1 #init loop 0 counter
                  slli         t5, a7, 30
                  addi         t1, zero, -14 #init loop 0 limit
sub_2_2_0_t:      xor          a7, a6, a4
                  addi         s1, s1, -5 #update loop 0 counter
                  srai         s6, s11, 8
                  ori          s9, s10, -1092
                  beq          s1, t1, sub_2_2_0_t #branch for loop 0
                  srli         a3, zero, 12
                  blt          tp, s10, sub_2_2_1_t #branch for loop 1
                  sltiu        a3, t5, 1103
                  addi         t6, zero, 6 #init loop 0 counter
                  lui          s0, 241646
                  and          s10, t2, s3
                  auipc        s4, 752902
                  andi         a0, a0, -1327
                  addi         a5, zero, 11 #init loop 0 limit
                  sra          s1, sp, t1
                  sub          s6, s3, t6
                  ori          t5, t2, 363
                  slt          s11, t3, s4
                  nop
                  xori         ra, s8, 507
sub_2_10_0_t:     sub          s2, t0, s6
                  sra          s8, tp, a2
                  slti         a0, s9, 1245
                  sltu         t4, a6, s5
                  or           tp, t1, s6
                  addi         t6, t6, 9 #update loop 0 counter
                  lui          ra, 142690
                  or           s2, t1, a1
                  srai         tp, a6, 0
                  add          s5, t1, s1
                  sra          t1, s1, a1
                  slli         s2, tp, 26
                  sra          t0, s8, s2
                  blt          t6, a5, sub_2_10_0_t #branch for loop 0
                  sra          s3, s11, s8
                  addi         s2, zero, 9 #init loop 1 counter
                  addi         t6, zero, -6 #init loop 1 limit
                  and          ra, ra, t1
sub_2_4_1_t:      xori         a7, ra, -1712
                  addi         s2, s2, -3 #update loop 1 counter
                  addi         t1, zero, -5 #init loop 0 counter
                  addi         s5, zero, 15 #init loop 0 limit
                  sll          s10, a7, t3
sub_2_4_0_t:      andi         s3, a2, 374
                  slt          s7, s4, a4
                  addi         t1, t1, 5 #update loop 0 counter
                  auipc        a1, 645970
                  bne          t1, s5, sub_2_4_0_t #branch for loop 0
                  srl          a3, a1, ra
                  sltiu        t0, a5, -330
                  beq          s2, t6, sub_2_4_1_t #branch for loop 1
                  slt          zero, zero, s9
                  addi         s4, zero, 4 #init loop 0 counter
                  sra          a1, t4, ra
                  and          s11, s4, gp
                  addi         s5, zero, -11 #init loop 0 limit
                  xor          t4, ra, t3
sub_2_7_0_t:      addi         a1, s7, 750
                  ori          s6, s1, 406
                  addi         a4, s2, -1969
                  addi         s4, s4, -2 #update loop 0 counter
                  slt          tp, s11, a6
                  sll          gp, t6, s5
                  xor          ra, t5, t2
                  bge          s4, s5, sub_2_7_0_t #branch for loop 0
                  auipc        s0, 955096
                  sltiu        t6, s1, 1151
                  bltu         s2, t0, 2f
2:                blt          tp, a4, 14f
                  andi         t5, s5, 82
                  xor          s10, s8, s7
                  beq          t1, s6, 23f
                  lui          s2, 654691
                  ori          ra, t4, -1530
                  addi         s4, s3, -1525
                  xori         a7, s9, 864
                  srli         s10, s2, 18
                  and          a3, t5, s4
                  lui          a3, 990848
                  sub          t1, a0, t5
14:               blt          t0, a6, 23f
                  and          gp, s7, a2
                  auipc        ra, 800487
                  sub          tp, sp, zero
                  bne          s2, s3, 31f
                  slli         a4, a1, 25
                  beq          s2, a5, 40f
                  and          s0, s11, sp
                  bltu         a7, a1, 39f
23:               srl          s9, s2, s11
                  sltiu        t1, s4, 1675
                  srl          a2, a0, t3
                  sra          a1, tp, tp
                  srli         s1, a2, 16
                  addi         t0, tp, -1583
                  lui          t6, 479523
                  sll          a7, zero, t1
31:               sltu         a0, t5, a0
                  sltu         tp, a4, ra
                  srl          a1, s10, a6
                  srli         a1, s1, 17
                  bge          s10, s2, 36f
36:               lui          t4, 432700
                  srl          zero, t0, s9
                  sltiu        ra, t5, 993
39:               bltu         t4, a2, 53f
40:               addi         t4, a5, 307
                  and          a0, s5, a5
                  srai         ra, s8, 27
                  srli         s2, t3, 23
                  sll          t5, a7, t5
                  sll          s3, a0, t4
                  lui          a5, 1028121
                  xori         a3, s4, 745
                  sltu         s1, s6, s8
                  xori         tp, t2, 1371
                  srai         s2, sp, 3
                  bgeu         s3, t5, 59f
                  slli         s10, t0, 25
53:               blt          t2, s10, 65f
                  bge          tp, s1, 61f
                  sll          t5, s5, tp
                  sll          s1, s3, tp
                  addi         a3, s8, 656
                  srl          a5, s6, tp
59:               slti         s10, zero, 227
                  beq          a3, s3, 66f
61:               xori         tp, s10, -1283
                  sra          tp, zero, t1
                  addi         t5, a1, -402
                  add          s3, sp, a7
65:               addi         s6, s4, -55
66:               ori          a4, a3, 1528
                  srli         s7, zero, 5
                  andi         gp, gp, -495
                  xor          zero, t4, s4
                  xor          t0, s3, t4
                  addi         s6, t3, 1439
                  srl          s0, t5, s4
                  or           s5, s1, s1
                  addi         a0, s2, -1038
                  and          s1, t0, s4
                  bge          t6, s9, 88f
                  nop
                  or           t6, a2, s11
                  bne          a7, a2, 85f
                  sub          zero, s10, s8
                  sltiu        s10, a3, 1983
                  xor          a1, s1, s2
                  slli         s7, s4, 16
                  srli         t4, t6, 14
85:               addi         tp, t1, 1848
                  auipc        s6, 646139
                  srl          t4, s8, a3
88:               bgeu         s5, a5, 99f
                  andi         s3, s6, 1166
                  and          s5, s11, t4
                  sltiu        a3, s7, -938
                  lui          a2, 654674
                  sra          s0, s11, a7
                  sltu         s3, tp, a3
                  lui          a7, 354963
                  addi         a5, t4, -1226
                  xori         s3, tp, -668
                  beq          s1, a0, 117f
99:               or           tp, t5, s8
                  andi         a2, zero, 336
                  ori          s5, t3, -1280
                  or           a7, s4, a7
                  slti         s7, sp, 1444
                  xori         gp, t0, -1713
                  add          t6, a0, s9
                  add          zero, a0, s5
                  xori         a5, a2, 439
                  bge          s4, a5, 109f
109:              auipc        t1, 884361
                  srli         t4, s11, 16
                  srai         s1, t0, 14
                  blt          s6, a2, 124f
                  add          s2, t5, sp
                  addi         t5, a7, 708
                  sra          s7, s3, gp
                  sltu         ra, s7, s9
117:              bltu         s1, s1, 130f
                  srai         t0, ra, 1
                  slt          ra, gp, a1
                  addi         s4, a7, 621
                  slli         tp, t6, 8
                  slti         a7, a5, -1458
                  sltu         s11, s10, a2
124:              srli         s5, t5, 23
                  auipc        gp, 339699
                  auipc        a6, 310587
                  sltiu        s2, a6, 1103
                  addi         s7, t2, 330
                  slti         a1, s1, 1830
130:              or           t0, a3, s6
                  sltu         zero, s10, t5
                  bge          a0, t2, 143f
                  srl          t1, a4, s6
                  xor          zero, a5, t6
                  auipc        t4, 44428
                  bne          s0, t1, 155f
                  srl          a2, t2, a3
                  or           s1, ra, t3
                  sra          tp, a3, t4
                  xori         s0, s1, -97
                  addi         s0, tp, 962
                  sra          a7, gp, zero
143:              add          s8, zero, s7
                  bltu         s6, s8, 149f
                  nop
                  slti         a4, s3, -218
                  srai         t1, ra, 9
                  blt          gp, a0, 150f
149:              and          s11, gp, gp
150:              bge          s1, s4, 170f
                  sltiu        ra, s7, -1627
                  sub          tp, a2, a7
                  sra          ra, a0, t4
                  andi         s4, s10, 1185
155:              bge          t2, s6, 158f
                  xor          gp, t1, s0
                  srai         s11, a6, 2
158:              sra          a4, t1, s10
                  sltu         s4, t5, t1
                  slli         s8, t0, 18
                  sra          ra, t0, t6
                  addi         s2, s6, -1606
                  sra          t4, s4, s1
                  and          s2, s1, gp
                  xor          s7, a3, t3
                  bne          s9, s8, 184f
                  nop
                  srl          a3, a5, t5
                  xori         s10, s7, -1904
170:              srai         s0, a1, 5
                  sub          t1, gp, t5
                  andi         a0, a6, 1044
                  auipc        a1, 683781
                  beq          a0, s1, 189f
                  nop
                  bge          a3, s2, 187f
                  slli         t6, t4, 25
                  srli         s4, t0, 12
                  slt          a4, a3, s0
                  slti         t4, a0, -955
                  sll          s2, s2, s0
                  sll          s10, a6, t0
                  sub          a3, t3, a4
184:              srai         s5, a1, 0
                  andi         a6, s6, -1896
                  auipc        a5, 1023161
187:              bgeu         t6, gp, 198f
                  slt          s6, t0, s9
189:              srai         s1, a3, 11
                  andi         s6, a5, 609
                  and          s0, s3, ra
                  ori          a4, s2, 131
                  sll          a4, a3, a5
                  bltu         s10, a5, 212f
                  srl          gp, a5, s1
                  andi         t1, s6, -1248
                  sltiu        t0, zero, -933
198:              srl          s6, a2, t0
                  nop
                  addi         tp, ra, -1159
                  addi         a5, s8, -757
                  slli         t1, t1, 29
                  srai         zero, a6, 16
                  and          a4, t4, s0
                  ori          gp, t4, 431
                  srli         s9, gp, 1
                  srli         s11, s7, 2
                  bgeu         t4, zero, 227f
                  xor          t5, a4, s1
                  or           a0, a4, t5
                  lui          s0, 240104
212:              xori         s9, s2, 126
                  srli         t1, t2, 10
                  bne          s7, s8, 223f
                  addi         ra, s11, -1124
                  sltiu        t0, gp, 1682
                  sub          tp, s8, a7
                  lui          t6, 50835
                  blt          a5, s5, 230f
                  blt          s5, s6, 221f
221:              and          s8, ra, a0
                  add          t1, t6, a3
223:              or           ra, a7, t4
                  and          t5, s6, zero
                  andi         a4, t1, 381
                  or           t0, s10, s8
227:              sll          s1, a4, s4
                  bgeu         s1, zero, 247f
                  blt          a3, s9, 235f
230:              xor          gp, t1, s3
                  andi         t5, s5, 1452
                  bne          s1, a0, 239f
                  srl          tp, t2, a0
                  auipc        s6, 955800
235:              nop
                  add          s6, gp, s10
                  auipc        t1, 395505
                  lui          t0, 769310
239:              addi         a7, s11, -1296
                  sll          s11, t2, s2
                  slt          t4, t3, a2
                  slti         s1, s0, 736
                  addi         gp, gp, 218
                  srai         a7, t4, 30
                  bne          s4, s8, 246f
246:              sub          s8, s0, a7
247:              sltu         a0, a5, s1
                  sltiu        a0, s7, 1925
                  andi         zero, s8, -835
                  slti         a2, a5, 320
                  bgeu         t3, a4, 263f
                  sll          s7, s6, s1
                  bgeu         t4, s11, 258f
                  slt          t6, s7, a6
                  bge          a0, t5, 261f
                  slt          a3, a5, t4
                  bltu         s0, s2, 258f
258:              srai         t0, a5, 5
                  srai         s8, a5, 26
                  sra          s11, ra, zero
261:              lui          s6, 44946
                  sra          a7, a3, gp
263:              beq          s10, a7, 283f
                  sra          a1, a6, t3
                  bne          s10, a2, 285f
                  srli         t4, s5, 15
                  slti         a7, t2, -1316
                  add          t1, s8, a1
                  bne          s7, s8, 272f
                  auipc        a6, 946881
                  sltiu        a1, t1, -557
272:              sltu         t0, t4, s4
                  andi         a2, gp, 588
                  sub          a1, tp, t2
                  or           s2, s10, s11
                  xor          s0, s10, a7
                  sltu         zero, s6, s8
                  bge          s10, ra, 290f
                  sub          s3, s3, t4
                  add          s2, a6, t6
                  bltu         s7, a1, 293f
                  srai         tp, s2, 5
283:              slti         a1, s4, 1620
                  auipc        gp, 498099
285:              slt          s2, a6, t6
                  srl          s1, ra, gp
                  auipc        zero, 1042283
                  bne          s10, a4, 299f
                  beq          t5, a7, 307f
290:              bltu         s11, s7, 301f
                  sra          t5, sp, t3
                  addi         t4, zero, 7 #init loop 0 counter
                  xor          s11, a0, s0
                  sra          s2, t5, a2
                  srli         a5, s5, 18
                  or           s4, s4, a6
                  addi         t0, zero, 15 #init loop 0 limit
                  slli         s5, sp, 7
                  srai         a1, a1, 2
                  nop
                  lui          a4, 81033
                  andi         s5, a5, -259
                  lui          s6, 680035
sub_2_12_0_t:     sltu         s6, tp, a1
                  addi         t4, t4, 1 #update loop 0 counter
                  sltiu        gp, s11, 1953
                  sll          s11, s7, t2
                  slt          a5, a4, t2
                  addi         s6, t0, -968
                  slt          a3, s6, t1
                  srai         t5, s7, 26
                  ori          s4, a6, 1926
                  sltiu        s6, s4, -1428
                  srl          a2, t0, a5
                  bltu         t4, t0, sub_2_12_0_t #branch for loop 0
                  xor          a3, t3, a0
                  add          a4, s2, t1
293:              auipc        gp, 590587
                  bgeu         s4, a5, 309f
                  blt          s6, t3, 309f
                  sra          zero, a5, a1
                  and          s8, a4, t0
                  srai         s5, t3, 5
299:              blt          t1, a6, 312f
                  andi         s3, s5, 788
301:              slti         s11, a0, -799
                  bge          a1, s2, 304f
                  sub          a3, a0, a7
304:              srai         s1, t5, 0
                  bne          t2, sp, 313f
                  xori         tp, t5, 642
307:              andi         t5, a2, -1277
                  bge          ra, ra, 321f
309:              xori         s1, s1, -1609
                  lui          t5, 72636
                  add          a4, a3, ra
312:              xor          a2, s9, s1
313:              bge          a5, s4, 330f
                  slti         a7, a4, 1128
                  blt          s4, s5, 327f
                  srli         s10, s0, 21
                  srl          t5, a3, s0
                  auipc        t0, 27722
                  srai         s10, s0, 7
                  add          zero, t1, a4
321:              andi         a6, s10, 1930
                  slli         t4, t5, 1
                  bltu         t5, s4, 334f
                  beq          a3, s8, 331f
                  slt          a5, a1, ra
                  bgeu         s2, s9, 337f
327:              lui          a4, 1025486
                  slt          s11, a6, a0
                  addi         a0, s5, 667
330:              bne          s2, ra, 335f
331:              srai         s5, s8, 29
                  srl          t5, a3, t3
                  nop
334:              sll          s4, s11, t3
335:              beq          t4, s7, 353f
                  bltu         a0, t3, 348f
337:              sll          s6, tp, t4
                  slli         s3, t5, 19
                  add          a3, tp, s3
                  xori         t1, s0, 1191
                  add          t5, t2, a5
                  srli         a2, s5, 11
                  sub          ra, s7, t4
                  bltu         s9, a6, 358f
                  srai         t6, s6, 15
                  nop
                  sltu         a2, s1, a7
348:              bge          s11, a2, 360f
                  lui          ra, 345520
                  sra          s4, t5, t1
                  srai         zero, s1, 7
                  or           t0, t3, a6
353:              srli         s1, t1, 4
                  sltu         s8, a5, s6
                  slli         t5, t4, 11
                  slti         t6, s8, 1180
                  srli         a3, a7, 17
358:              add          s9, gp, a1
                  bne          tp, a5, 370f
360:              andi         a1, a2, 1147
                  xor          s10, s0, s2
                  auipc        a3, 15996
                  and          s5, s7, s8
                  sra          s3, t2, t5
                  addi         ra, s8, -1215
                  bne          s0, s8, 369f
                  bgeu         a0, s3, 373f
                  ori          ra, t5, -1465
369:              bge          s5, s1, 386f
370:              sra          s1, a3, s10
                  bge          t6, s5, 386f
                  bge          s2, ra, 374f
373:              xori         s3, s6, 1656
374:              sub          a2, a0, s10
                  srli         a7, ra, 16
                  beq          a7, s10, 395f
                  blt          s6, s3, 388f
                  add          t4, s11, a7
                  xor          s2, s2, a7
                  srai         t5, s0, 26
                  sub          t1, s9, sp
                  or           s4, s4, ra
                  auipc        s8, 226424
                  sltu         tp, t0, s8
                  addi         s6, a5, -59
386:              sub          a3, t6, t4
                  srl          tp, s1, a3
388:              bgeu         s10, t6, 389f
389:              beq          a6, s7, 398f
                  slti         tp, s0, -360
                  srai         a3, gp, 11
                  srl          ra, t0, zero
                  auipc        s1, 753034
                  slli         zero, s11, 18
395:              bne          s4, ra, 415f
                  slli         a5, a0, 6
                  nop
398:              ori          s0, s10, -1193
                  addi         zero, tp, -2043
                  sra          s6, s4, s3
                  sltiu        t0, a6, 1951
                  slli         t1, s6, 7
                  and          a7, t4, s2
                  bgeu         sp, t5, 410f
                  or           gp, s5, s0
                  add          s4, t2, s7
                  sra          ra, ra, s1
                  sra          a1, a0, a1
                  slti         a3, a6, -414
410:              sltu         s9, s11, s8
                  andi         s0, t3, -1391
                  beq          s9, s5, 425f
                  sll          tp, s5, tp
                  bne          t1, s9, 433f
415:              sltiu        ra, s11, 808
                  sub          s5, zero, s7
                  slli         a6, s2, 17
                  sll          s11, t2, s6
                  bltu         a2, s4, 432f
                  bne          t1, t0, 431f
                  nop
                  bgeu         s2, s8, 430f
                  sub          a4, s4, ra
                  sll          s11, a0, a2
425:              ori          s10, t0, -718
                  auipc        s10, 638249
                  srai         s10, s11, 29
                  srl          s0, a5, s0
                  slt          s8, tp, gp
430:              auipc        a0, 121817
431:              bgeu         a4, s0, 432f
432:              and          t5, s1, a2
433:              slti         s3, a6, 1425
                  slti         s5, s0, 359
                  addi         s5, zero, 10 #init loop 1 counter
                  nop
                  slti         t5, s7, -1504
                  addi         s0, zero, 9 #init loop 1 limit
                  srai         a4, a3, 3
                  sll          t4, s3, a5
                  ori          t0, t0, -764
                  srai         a2, ra, 21
sub_2_6_1_t:      xori         t0, s4, 933
                  addi         s5, s5, -8 #update loop 1 counter
                  and          s8, a5, a6
                  addi         t1, zero, 9 #init loop 0 counter
                  srl          t4, t6, s6
                  sltu         s11, t2, a2
                  addi         s6, zero, 8 #init loop 0 limit
                  slli         t4, s5, 3
sub_2_6_0_t:      xor          t4, s6, s5
                  srli         a6, t4, 0
                  srl          tp, s1, s0
                  xor          a7, gp, t4
                  sll          s9, s10, a7
                  add          s1, s0, s4
                  addi         t1, t1, -6 #update loop 0 counter
                  addi         a5, s8, 1233
                  add          a7, t5, t0
                  sltiu        s1, s2, -161
                  addi         ra, s10, 974
                  sra          ra, s10, t5
                  slt          s8, s8, s7
                  bgeu         t1, s6, sub_2_6_0_t #branch for loop 0
                  xor          s7, sp, s11
                  andi         s4, t0, 1879
                  srli         a4, t4, 16
                  bgeu         s5, s0, sub_2_6_1_t #branch for loop 1
                  or           s10, gp, tp
                  sltiu        s7, t1, 913
                  slt          ra, s0, t3
                  slti         s1, t3, 1902
                  srli         s6, s6, 28
                  beq          s8, s6, 451f
                  bgeu         s9, s6, 460f
                  sltu         gp, s2, t6
                  sub          zero, t3, s4
                  blt          s4, a4, 461f
                  xor          a3, a0, a6
                  lui          s1, 891793
                  beq          a1, sp, 447f
447:              nop
                  add          s0, s4, t4
                  sra          tp, a2, s0
                  sub          s2, t0, s5
451:              slti         t6, s10, 585
                  srai         t1, s3, 10
                  auipc        a7, 812543
                  nop
                  or           zero, s3, s4
                  sltu         a3, s11, sp
                  ori          t5, s5, 1755
                  add          s6, s8, s11
                  sll          a0, a4, t6
460:              lui          t1, 959930
461:              or           tp, s4, s3
                  bge          zero, s9, 474f
                  srai         t6, s2, 8
                  bne          s10, ra, 476f
                  sub          s6, s6, t5
                  slt          a3, t3, s3
                  slti         a5, a7, -633
                  blt          t2, t6, 469f
                  addi         ra, zero, 3 #init loop 1 counter
                  addi         a1, zero, 8 #init loop 1 limit
sub_2_1_1_t:      sltu         s11, s2, s8
                  addi         ra, ra, 1 #update loop 1 counter
                  addi         s9, zero, 3 #init loop 0 counter
                  addi         a4, zero, 19 #init loop 0 limit
                  sub          t4, t6, t6
sub_2_1_0_t:      slt          a6, s3, t6
                  sra          a6, t2, s2
                  addi         s9, s9, 8 #update loop 0 counter
                  blt          s9, a4, sub_2_1_0_t #branch for loop 0
                  srl          t4, s7, a1
                  bltu         ra, a1, sub_2_1_1_t #branch for loop 1
                  slli         t5, s6, 23
469:              srai         a5, a6, 5
                  srai         t4, t4, 4
                  srli         s1, s11, 1
                  sra          s2, t5, s1
                  slli         t6, a4, 15
474:              slti         a0, s9, -1817
                  beq          a5, s7, 486f
476:              srai         a0, a1, 2
                  sltiu        s7, s10, 58
                  sub          t6, s5, t6
                  auipc        s0, 510046
                  ori          s10, s4, 1036
                  blt          s10, s2, 490f
                  bgeu         ra, s7, 483f
483:              or           s7, a2, s7
                  slt          a7, a7, s8
                  bge          t1, tp, 504f
486:              sll          s10, s4, s11
                  bltu         a2, a0, 505f
                  blt          gp, ra, 506f
                  andi         t5, a5, -1666
490:              lui          s11, 15981
                  addi         s8, zero, 7 #init loop 1 counter
                  sltiu        a5, a3, -924
                  addi         t1, zero, -13 #init loop 1 limit
                  sub          a6, s10, sp
                  srli         s4, t2, 15
                  sra          t4, sp, s0
sub_2_5_1_t:      lui          a3, 341141
                  nop
                  addi         s8, s8, -10 #update loop 1 counter
                  addi         s6, zero, -519
                  xori         s9, a3, 1487
                  addi         s3, zero, 10 #init loop 0 counter
                  sltiu        s0, ra, 1653
                  addi         a0, zero, 12 #init loop 0 limit
                  sra          a4, s0, s3
sub_2_5_0_t:      slt          s11, t0, sp
                  add          zero, a3, t1
                  and          s11, a2, a2
                  slt          a1, ra, t4
                  or           a7, s11, s10
                  addi         a2, t4, -1903
                  addi         s3, s3, 7 #update loop 0 counter
                  slt          s11, t4, s10
                  addi         t5, a1, 1445
                  slt          s2, s10, s10
                  bltu         s3, a0, sub_2_5_0_t #branch for loop 0
                  sltu         a7, tp, a6
                  or           zero, t4, ra
                  bne          s8, t1, sub_2_5_1_t #branch for loop 1
                  auipc        s9, 693733
                  bltu         s4, s4, 499f
                  addi         a1, s7, 336
                  slti         a3, s8, -1766
                  sltiu        a0, t2, -735
                  srli         a4, zero, 4
                  sll          a0, a4, t2
                  xori         a1, s9, -195
                  srai         a7, a4, 15
499:              addi         gp, a3, 1785
                  and          ra, sp, s9
                  bgeu         a4, s0, 512f
                  slt          zero, s11, a1
                  slti         t6, s1, 1107
504:              xori         s1, s10, -1042
505:              bgeu         a2, a3, 524f
506:              srl          t0, t1, t1
                  sll          zero, a0, a5
                  sltiu        s5, a1, 713
                  addi         a6, sp, 1837
                  add          a2, a1, t2
                  sra          zero, s10, s8
512:              add          s1, a6, t1
                  ori          s0, t2, 1526
                  sra          a3, s1, t5
                  ori          s6, a1, 586
                  add          tp, t5, a6
                  bltu         tp, t1, 529f
                  slti         s1, s6, 1515
                  srai         a2, gp, 27
                  slt          tp, s1, a0
                  srl          s3, s8, gp
                  auipc        a7, 306901
                  beq          a3, a3, 538f
524:              and          s7, s7, t6
                  xori         s2, s10, -155
                  srl          s8, t0, s8
                  sll          a2, s10, a1
                  srl          zero, a3, a5
529:              slti         s5, s8, 1858
                  andi         t5, a3, 844
                  lui          t4, 867587
                  and          s2, a6, t6
                  sub          a7, t2, a4
                  bne          s9, a6, 547f
                  beq          t3, a3, 546f
                  nop
                  beq          gp, a2, 557f
538:              xori         a7, t3, -1025
                  or           a7, zero, s2
                  srl          gp, t1, s3
                  bltu         s2, s10, 561f
                  xor          s0, t1, s10
                  srli         s6, a3, 10
                  slt          s9, sp, tp
                  lui          a4, 582020
546:              sltiu        zero, zero, 1646
547:              lui          s0, 679238
                  srai         t1, t5, 31
                  lui          a7, 63153
                  add          ra, s8, s11
                  xor          s4, s9, a0
                  add          s8, a5, a2
                  xori         tp, t6, -533
                  xori         t6, t3, -941
                  nop
                  sll          s10, s2, sp
557:              auipc        s11, 386329
                  xori         s5, s10, -1142
                  beq          t2, t6, 560f
560:              srl          zero, t5, s4
561:              beq          s0, a2, 572f
                  blt          a1, sp, 574f
                  srli         tp, tp, 30
                  sra          t5, gp, t5
                  blt          s2, s3, 572f
                  srli         a2, s5, 5
                  sra          a5, a0, s9
                  xor          t5, a1, t2
                  sll          s4, t2, t6
                  srai         tp, s10, 18
                  bge          sp, zero, 577f
572:              sra          s7, a2, t5
                  sra          s9, t1, a3
574:              auipc        s3, 531611
                  sltiu        zero, t6, 1627
                  beq          s11, s7, 581f
577:              add          s10, a0, t5
                  lui          t4, 958125
                  slli         s9, a5, 2
                  auipc        s2, 1027841
581:              bgeu         zero, s2, 593f
                  blt          a4, a0, 584f
                  srai         a1, gp, 20
584:              srai         ra, t5, 9
                  sltu         tp, s10, t4
                  sltu         a5, a4, t1
                  and          t0, gp, s5
                  ori          t1, zero, 459
                  bltu         s0, zero, 606f
                  sra          s1, a6, t4
                  srai         gp, s0, 19
                  sub          a0, a0, s11
593:              lui          ra, 177175
                  slti         tp, s5, 50
                  xori         gp, t4, -481
                  xor          s1, t3, a0
                  lui          s2, 4454
                  sltu         s0, t4, s5
                  slti         s6, ra, -1295
                  lui          a6, 755765
                  and          a6, a0, a5
                  or           a4, a2, s5
                  sra          s8, s1, ra
                  bltu         ra, s2, 618f
                  sra          a7, t4, s0
606:              xori         a2, a2, -265
                  ori          a4, tp, -1554
                  blt          tp, s3, 611f
                  nop
                  auipc        a7, 806911
                  addi         s1, zero, -9 #init loop 0 counter
                  addi         a7, zero, -14 #init loop 0 limit
sub_2_14_0_t:     xori         s8, s10, -975
                  xor          s10, sp, s4
                  addi         s1, s1, -1 #update loop 0 counter
                  bge          s1, a7, sub_2_14_0_t #branch for loop 0
                  sltiu        s11, t5, -280
611:              sub          s9, a6, s7
                  xori         t4, a2, -1808
                  bge          a2, a7, 626f
                  andi         a4, t6, -550
                  slti         gp, a0, 1102
                  blt          t4, t4, 622f
                  addi         a3, s8, 974
618:              bge          s6, gp, 624f
                  nop
                  slt          t5, s10, t2
                  or           s1, s6, sp
622:              xori         a5, s1, -1821
                  slli         a1, tp, 12
624:              andi         zero, s1, -1204
                  addi         a1, zero, -4 #init loop 1 counter
                  addi         s9, zero, 6 #init loop 1 limit
sub_2_17_1_t:     and          a5, a4, a1
                  addi         a1, a1, 10 #update loop 1 counter
                  addi         gp, zero, 3 #init loop 0 counter
                  srl          a5, t6, t6
                  addi         a6, zero, -17 #init loop 0 limit
sub_2_17_0_t:     lui          s7, 274504
                  addi         gp, gp, -10 #update loop 0 counter
                  beq          gp, a6, sub_2_17_0_t #branch for loop 0
                  beq          a1, s9, sub_2_17_1_t #branch for loop 1
                  nop
                  slli         gp, t2, 23
626:              add          s3, s0, s11
                  bne          s11, a5, 640f
                  bgeu         s8, a6, 643f
                  sll          tp, s1, s1
                  sltiu        s2, s9, -1001
                  and          a2, s7, s10
                  and          s11, s1, tp
                  or           zero, s3, s2
                  beq          a6, a5, 648f
                  nop
                  ori          a0, s8, -1493
                  srli         s1, s4, 26
                  ori          zero, a1, 952
                  ori          a1, zero, -763
640:              bgeu         t5, t5, 658f
                  slli         s7, t5, 3
                  nop
643:              auipc        s7, 340128
                  slt          s10, a1, a1
                  or           a0, t2, s3
                  slti         a4, t4, -502
                  srli         s9, a1, 4
648:              bne          s11, t2, 660f
                  sub          t6, a2, a1
                  sra          s4, s9, s11
                  andi         a7, a4, 1746
                  bne          s5, a1, 654f
                  bne          s3, tp, 672f
654:              add          s0, gp, a3
                  xor          s10, s7, s11
                  bgeu         t4, s5, 673f
                  beq          gp, t4, 668f
658:              xor          t1, a2, a7
                  andi         t6, s11, 313
660:              sll          s7, s9, t0
                  bltu         s1, t6, 668f
                  addi         zero, t1, -1467
                  auipc        s10, 543295
                  slli         a3, t0, 27
                  add          a6, s10, s10
                  srl          s1, s10, zero
                  slt          s0, t1, t4
668:              slti         s4, t3, 809
                  lui          a1, 149780
                  sra          t1, s5, s6
                  lui          s8, 361403
672:              slti         t5, s1, 1749
673:              andi         s8, t6, -597
                  sub          s4, t4, t3
                  srai         s7, s5, 13
                  and          a5, t3, gp
                  xori         zero, s8, -356
                  slt          a0, a0, t6
                  sltu         s2, t2, s0
                  slli         ra, t6, 13
                  auipc        s7, 599665
                  and          a1, t1, s0
                  beq          s8, t5, 695f
                  slti         s3, s2, -213
                  and          s0, s11, s5
                  slt          t4, t0, s8
                  nop
                  lui          s7, 338901
                  add          a7, t3, s8
                  beq          a6, s11, 698f
                  and          ra, t3, s5
                  nop
                  lui          gp, 189964
                  srai         a6, zero, 26
695:              xori         s6, sp, 1317
                  and          s2, s11, t0
                  xori         s7, s6, -1486
698:              slt          t4, t2, t2
                  sltu         tp, gp, s4
                  auipc        s1, 445600
                  nop
                  srl          s4, a0, t6
                  bge          a0, s1, 704f
704:              slli         zero, t0, 3
                  srli         a6, s5, 6
                  blt          a1, a0, 711f
                  sub          s8, s11, t3
                  addi         t1, s7, 1980
                  add          t1, a4, s8
                  sltiu        t1, s2, -1788
711:              bge          s7, a7, 712f
712:              beq          t6, s11, 723f
                  slt          s2, tp, a4
                  and          t0, s4, s1
                  srai         s6, a4, 18
                  srli         a3, sp, 16
                  sll          t6, t6, ra
                  sra          t5, a5, ra
                  bgeu         a0, t2, 730f
                  andi         s2, a1, -1744
                  bne          a2, gp, 740f
                  sltu         gp, s9, s3
723:              sltu         s10, s9, t2
                  bltu         t1, t6, 725f
725:              addi         tp, a7, 332
                  blt          s10, a5, 746f
                  nop
                  bltu         gp, a1, 748f
                  andi         a5, a4, -810
730:              sub          t0, a6, t6
                  sra          t5, a0, s3
                  sltiu        s6, a2, 1724
                  xori         t0, s10, 1355
                  lui          s10, 204010
                  nop
                  sltu         s3, t1, s8
                  bne          t4, a4, 755f
                  slt          s9, a3, ra
                  sltiu        s7, a5, -1028
740:              andi         s0, t0, -87
                  srli         s1, s7, 21
                  srli         a6, s0, 19
                  bge          s6, s7, 756f
                  slli         t4, a2, 5
                  or           s9, a7, s8
746:              xori         t0, s0, -268
                  sub          a2, s8, a2
748:              srl          zero, s5, t2
                  bge          zero, tp, 760f
                  slli         s6, s5, 19
                  sll          zero, t4, a6
                  andi         a3, sp, -1646
                  ori          t5, s0, -1380
                  sll          a1, t1, zero
755:              lui          ra, 196617
756:              srli         s3, a5, 23
                  srli         s2, ra, 2
                  sub          a4, s2, a4
                  auipc        tp, 106498
760:              bge          a4, a0, 769f
                  srai         s1, s8, 4
                  sltu         a3, gp, s5
                  srai         a6, s8, 7
                  add          zero, t0, s9
                  srai         a4, s9, 8
                  auipc        gp, 421404
                  addi         s6, s8, -810
                  sltiu        t1, s0, -703
769:              beq          t6, s0, 781f
                  ori          a2, s4, 1009
                  blt          a7, tp, 777f
                  beq          gp, t4, 775f
                  and          a6, s4, t4
                  xori         t4, s4, -424
775:              add          s4, a6, s7
                  addi         s1, s11, 337
777:              lui          gp, 814248
                  sra          s11, a0, s2
                  srai         a4, ra, 15
                  beq          a1, s6, 792f
781:              sltiu        s10, gp, -1136
                  and          a1, t0, t3
                  slt          a0, s2, s9
                  sub          a1, t2, sp
                  andi         a1, s8, -679
                  xor          t1, s11, s10
                  lui          s8, 718226
                  sltu         s4, t2, s2
                  and          t1, a6, s4
                  auipc        a0, 1009726
                  sltu         s7, s2, s0
792:              bltu         a3, zero, 810f
                  sub          a7, s4, s5
                  srli         s6, s10, 21
                  andi         a1, s9, 40
                  slt          ra, t0, a4
                  slti         s1, t5, 1560
                  lui          t0, 980428
                  srl          t4, gp, s11
                  slti         a1, a4, 848
                  slt          s10, t2, zero
                  bgeu         s5, a0, 814f
                  blt          t6, a3, 815f
                  bne          ra, s11, 810f
                  blt          a5, s7, 818f
                  xori         s2, a7, -451
                  sltiu        a4, a1, 1517
                  bgeu         a2, s1, 815f
                  slli         s2, s11, 26
810:              xori         t0, t6, 1416
                  xori         a3, t1, 1847
                  srli         t0, s10, 23
                  bne          s8, ra, 822f
814:              srai         t1, s1, 17
815:              slt          a4, a3, a4
                  slli         a7, ra, 17
                  xori         a7, ra, -1689
818:              bne          a2, t2, 829f
                  bge          s11, zero, 836f
                  auipc        a7, 831148
                  sll          a2, t5, t3
822:              sltu         s5, t2, s0
                  xor          a6, s4, s2
                  bgeu         a5, a6, 825f
825:              beq          t1, a6, 845f
                  or           t1, a1, t5
                  beq          s4, s3, 832f
                  andi         t6, s10, -1591
829:              nop
                  bltu         s11, a5, 842f
                  sltu         s8, tp, s11
832:              slli         s2, t0, 25
                  sub          t0, t6, sp
                  slli         a5, s3, 2
                  sub          s4, t5, s3
836:              slt          s4, t6, s0
                  ori          a3, s7, -556
                  slti         ra, a2, 1138
                  andi         a1, t5, 108
                  sltu         a0, s11, t1
                  bltu         sp, t0, 854f
842:              sra          t0, t1, tp
                  bge          t5, sp, 861f
                  xori         s3, t5, -34
845:              sub          s9, t3, sp
                  sltu         a6, t0, a1
                  bltu         a5, t3, 858f
                  and          zero, t2, gp
                  srai         t0, t5, 14
                  slli         t6, a4, 28
                  sub          a6, t0, s11
                  blt          a4, t0, 863f
                  sra          s6, a5, a0
854:              blt          a5, t0, 869f
                  add          s11, s6, t5
                  nop
                  bne          s7, t3, 865f
858:              auipc        s1, 613230
                  xor          a1, s1, s0
                  sll          a3, a6, s8
861:              sltu         t1, t4, zero
                  sra          t5, t3, s5
863:              sub          s4, tp, t1
                  add          s0, s2, a4
865:              xor          a0, s0, s6
                  bne          ra, t4, 877f
                  slti         a2, a6, -1310
                  sltiu        a7, s11, 1864
869:              slt          s5, s10, t1
                  srai         s7, s9, 10
                  nop
                  slti         s3, a5, -232
                  sltiu        s1, s6, -357
                  bltu         t4, t0, 875f
875:              nop
                  andi         s3, a4, 1182
877:              slti         a1, a0, 193
                  andi         a7, a1, 1876
                  auipc        t6, 792659
                  sra          zero, t6, s8
                  add          s5, a1, t2
                  sra          a1, t2, s9
                  sltu         s1, s5, a4
                  xor          s7, s6, s5
                  xori         s10, t4, 1074
                  sub          a4, t0, zero
                  bgeu         t5, zero, 907f
                  sll          s11, s2, a7
                  sll          s6, t2, tp
                  nop
                  ori          s1, a7, 1202
                  sltiu        a1, a5, -6
                  srl          s8, s11, a7
                  bltu         s3, a0, 913f
                  xori         a4, a5, -1094
                  sub          t0, a6, t5
                  nop
                  bgeu         t1, a5, 912f
                  sltiu        zero, gp, -243
                  xori         tp, s0, -1919
                  or           gp, s5, a7
                  bgeu         t2, t1, 903f
903:              nop
                  sub          a0, s1, s0
                  bltu         sp, a6, 917f
                  beq          t5, a1, 908f
907:              or           s10, t6, t2
908:              add          gp, t5, a4
                  nop
                  nop
                  bltu         gp, t1, 914f
912:              addi         t1, s0, 980
913:              bge          a0, zero, 932f
914:              blt          t6, t3, 920f
                  addi         s0, t0, 777
                  and          s9, zero, t0
917:              bgeu         a3, t1, 922f
                  bne          a6, a1, 937f
                  slti         s4, a3, -57
920:              lui          s10, 1035318
                  bne          t5, a5, 932f
922:              bgeu         s7, a4, 934f
                  lui          a3, 44912
                  bgeu         s1, a7, 943f
                  addi         s11, t4, -823
                  sra          t1, s5, a0
                  sub          s10, s4, s0
                  ori          a1, s4, -1355
                  andi         t6, a3, 1816
                  sra          a2, s4, a4
                  sll          s11, t4, t5
932:              slti         t5, a5, 1715
                  bge          a5, gp, 935f
934:              nop
935:              ori          s3, a4, 314
                  or           t4, t1, s4
937:              slt          a4, gp, s0
                  bne          tp, t3, 945f
                  sra          tp, a7, t3
                  sltu         gp, s9, a4
                  sub          s11, a1, s6
                  auipc        ra, 856349
943:              bltu         s10, tp, 954f
                  sltiu        s9, s7, 1360
945:              srai         ra, s5, 20
                  srai         t0, s7, 8
                  beq          t0, s11, 959f
                  auipc        s8, 591045
                  bgeu         t1, a2, 962f
                  xor          s8, t5, s11
                  and          s1, s3, s10
                  srl          a1, a7, s7
                  blt          s6, t6, 964f
954:              slt          s1, zero, s11
                  bltu         s3, t5, 956f
956:              bge          t2, s0, 976f
                  sltiu        s5, t3, 38
                  nop
959:              beq          t0, t2, 965f
                  sltiu        a4, s4, 449
                  bge          sp, a5, 975f
962:              bne          ra, s5, 980f
                  slli         a5, a5, 15
964:              srai         t6, s3, 22
965:              slli         s4, a1, 9
                  slti         a1, a6, 1630
                  beq          s8, s9, 979f
                  bne          s10, tp, 983f
                  slti         s0, sp, 236
                  or           s9, t5, t1
                  blt          s7, a6, 974f
                  auipc        s11, 1021188
                  beq          t3, s5, 990f
974:              srl          a1, a2, s10
975:              slti         ra, t3, -1952
976:              and          zero, t1, a5
                  nop
                  add          t5, a3, gp
979:              add          s5, sp, t6
980:              blt          t5, s5, 990f
                  sltiu        s1, s10, 805
                  bgeu         s6, a3, 990f
983:              lui          a7, 129510
                  slti         zero, s5, -1225
                  sltu         a7, t6, t6
                  sltu         a3, s0, t4
                  bgeu         s9, s7, 990f
                  or           t5, s6, s9
                  bne          s9, s10, 990f
990:              srli         t5, a5, 3
                  lw           s1, 4(t2)
                  sltiu        gp, s6, -1071
                  addi         t2, t2, 56
                  addi         a0, s11, -583
                  lui          a0, 324204
                  sub          s8, a4, a6
1376:             addi x25, x9, 0
1376:             jalr x25, x25, 0
sub_5:            bge          a0, sp, sub_5_stack_p
                  slt          s10, s4, a6
                  sltiu        s2, s7, -616
                  slt          s6, a4, s1
                  srai         a6, s1, 10
sub_5_stack_p:    addi         t2, t2, -40
                  sw           s1, 4(t2)
                  lui          a1, 900879
                  slt          ra, gp, t5
                  addi         s3, zero, -8 #init loop 1 counter
                  srl          a0, tp, zero
                  addi         s6, zero, -16 #init loop 1 limit
                  slti         s5, t6, 1039
                  sub          zero, a3, a6
sub_5_1_1_t:      add          s2, a6, s3
                  srai         s0, s3, 14
                  and          a6, t6, t6
                  addi         s3, s3, -1 #update loop 1 counter
                  sub          a3, a6, t3
                  addi         s4, zero, -2 #init loop 0 counter
                  xor          gp, zero, t4
                  andi         a0, t3, -990
                  nop
                  addi         ra, zero, -6 #init loop 0 limit
sub_5_1_0_t:      andi         a6, s11, -935
                  srl          s7, a7, s6
                  sra          a4, s8, s6
                  srl          s0, a5, s7
                  addi         t5, s5, -1061
                  addi         s4, s4, -5 #update loop 0 counter
                  and          t6, s2, s8
                  nop
                  bge          s4, ra, sub_5_1_0_t #branch for loop 0
                  and          zero, a6, t4
                  beq          s3, s6, sub_5_1_1_t #branch for loop 1
                  sub          t1, gp, a2
                  addi         a2, zero, 9 #init loop 1 counter
                  ori          s8, s8, 65
                  add          a1, s8, s10
                  xori         s0, t1, -81
                  addi         s9, zero, 12 #init loop 1 limit
                  auipc        gp, 481181
                  xor          s7, s6, a3
                  slti         ra, t4, 1444
                  nop
sub_5_0_1_t:      ori          a7, s8, -260
                  lui          s3, 234229
                  and          a1, sp, s1
                  addi         a2, a2, 10 #update loop 1 counter
                  xori         t5, s4, 1679
                  and          a7, s11, s3
                  addi         s4, zero, -6 #init loop 0 counter
                  addi         a5, zero, 0 #init loop 0 limit
sub_5_0_0_t:      ori          a1, s1, 1966
                  srl          tp, t3, t5
                  slti         s3, a3, 19
                  addi         s4, s4, 8 #update loop 0 counter
                  sltiu        s7, s8, 832
                  blt          s4, a5, sub_5_0_0_t #branch for loop 0
                  sltu         zero, s4, s11
                  and          ra, s8, ra
                  sltiu        a6, t0, 88
                  and          t0, t3, s6
                  and          s11, s10, gp
                  and          gp, t3, ra
                  or           zero, s8, a7
                  slli         a3, s2, 8
                  slt          s3, a6, s10
                  blt          a2, s9, sub_5_0_1_t #branch for loop 1
                  sra          a6, s7, sp
                  slti         tp, t3, 488
                  slti         s7, t5, 1998
                  slt          s11, s4, s2
                  sra          a7, s7, s5
                  xori         s1, s5, -796
                  bne          t5, s6, 14f
                  beq          s0, ra, 14f
                  srl          a4, s3, t4
                  srl          gp, s8, ra
                  or           a6, t3, s5
                  nop
                  or           t6, t2, a0
                  beq          t0, a7, 28f
                  srai         a7, s8, 19
14:               sra          s0, s11, a4
                  slti         s5, s10, -1385
                  xori         ra, sp, -1963
                  blt          t2, t3, 23f
                  ori          s9, s5, 1199
                  slli         s1, s3, 27
                  and          a3, a0, t4
                  nop
                  or           tp, ra, s6
23:               beq          t3, s5, 32f
                  slt          t4, s9, a3
                  blt          a0, s1, 39f
                  lui          a6, 106174
                  slti         s5, s2, -981
28:               or           t5, a5, s11
                  slli         s6, gp, 8
                  xor          s9, t6, t3
                  xori         a5, ra, 2019
32:               slli         t6, s9, 12
                  slti         a1, t5, -1
                  srl          s3, zero, zero
                  or           s3, a6, t1
                  xor          t1, t2, s5
                  sub          s2, ra, s7
                  addi         s8, s2, 162
39:               beq          a6, s3, 59f
                  ori          a4, ra, -452
                  sll          tp, zero, s0
                  sll          t0, s3, s4
                  nop
                  sub          s1, s1, t2
                  or           s11, s10, s4
                  slti         s8, t1, 1535
                  bge          a3, a3, 62f
                  sra          t5, t0, s9
                  xori         a5, t5, 466
                  blt          ra, s3, 57f
                  lui          s9, 223132
                  lui          s11, 3554
                  xori         s6, a7, -434
                  xor          t4, s2, zero
                  addi         s4, a2, 1803
                  sll          t0, sp, a3
57:               bne          t3, a1, 61f
                  and          s11, t6, a3
59:               sltu         a3, sp, s0
                  nop
61:               add          ra, gp, s11
62:               sltu         s9, t2, a4
                  sra          a1, zero, s7
                  bne          ra, zero, 73f
                  nop
                  auipc        s10, 273097
                  ori          s1, a5, 236
                  sra          a1, s4, s2
                  slti         t6, tp, -1771
                  bne          a1, t1, 76f
                  add          a1, t4, s6
                  sll          t4, s4, s2
73:               srai         a7, s6, 19
                  srli         s2, a2, 4
                  sll          s4, gp, t3
76:               slti         a3, a1, 418
                  or           a5, t5, a4
                  sltu         zero, t2, ra
                  sub          s5, t0, s6
                  bltu         s10, t6, 86f
                  bgeu         sp, t1, 93f
                  or           ra, s11, s11
                  blt          s10, zero, 84f
84:               bne          s10, tp, 91f
                  add          a1, a5, s6
86:               addi         a4, t1, 597
                  bne          s6, sp, 106f
                  slt          s8, s11, t2
                  bltu         s7, t2, 101f
                  and          s4, a3, a2
91:               andi         zero, zero, 1200
                  sub          a4, sp, s3
93:               xor          a3, t1, t5
                  sltu         s5, t4, a6
                  auipc        tp, 248872
                  blt          sp, s7, 101f
                  slt          s2, s11, s7
                  ori          s3, t4, 1134
                  add          s5, t3, t3
                  bltu         s8, s11, 119f
101:              lui          s11, 51495
                  bge          zero, a4, 119f
                  slt          a5, a5, s10
                  xori         t6, a0, -115
                  or           zero, a3, t1
106:              sltu         t1, sp, t3
                  add          t0, t2, s10
                  addi         a5, a0, -976
                  nop
                  ori          s7, s8, 779
                  sltu         s3, tp, t4
                  sll          s5, a3, a6
                  addi         a3, zero, -1092
                  add          a6, t1, s2
                  slli         s1, ra, 10
                  sub          s1, t3, t5
                  bltu         a7, t4, 125f
                  sra          t6, s2, s9
119:              bne          s1, t0, 125f
                  lui          s11, 668411
                  slti         s5, sp, 887
                  sra          a7, t5, s1
                  bge          s3, gp, 125f
                  srl          a7, s2, t4
125:              ori          s6, s1, -1860
                  srli         s5, a5, 26
                  andi         a4, s7, -1800
                  lw           s1, 4(t2)
                  xor          s11, a5, s2
                  addi         t2, t2, 40
                  sra          s3, s9, ra
                  lui          s4, 327236
203:              addi x11, x9, 0
203:              jalr x11, x11, 0
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
.word 0xe431486c, 0x66ba0871, 0x6c4318f6, 0x81efead3, 0x10069c4f, 0xaf647606, 0x0ddd9af7, 0xbf573552
.word 0xa893b326, 0x68d01532, 0xa47b3bd2, 0xa4b91b81, 0xc55b3600, 0x8eb5e9a3, 0x66152758, 0x5efec5b0
.word 0xf12e6f39, 0x6034f0d0, 0x20741cf0, 0x4e2ea2ca, 0x3c13fe96, 0x007174ec, 0x06a43b95, 0x64ad5620
.word 0xdad42a02, 0xc2bf925d, 0x8a283c95, 0x64525c21, 0xad818e89, 0x6acca9e1, 0x24c6bd48, 0x0b68d10d
.word 0x5acd49fd, 0x6a5f9717, 0x9bb5f3a2, 0x13ca417a, 0x7a95b0b9, 0xa961880f, 0x6ca58b98, 0x820d2d87
.word 0x9fa5e10d, 0x261a5252, 0x0dc4c1b5, 0x9327a371, 0x97692410, 0x83d879ad, 0xc73ca487, 0xcac56508
.word 0xecdeb519, 0xddcc1179, 0x82904ea4, 0xad3f17aa, 0x8af9126c, 0xb032f2ac, 0xdba99e35, 0x16537503
.word 0x2e54a153, 0x6290bfcd, 0x5468fa66, 0x4ca7603d, 0x85c28ab3, 0x851cdd6f, 0x0ce7b51d, 0x68185771
.word 0x7b965801, 0x2d3cd0f2, 0x95e7f9d7, 0xf93003eb, 0xd92fc540, 0x756f993c, 0xae4f2889, 0x53703e27
.word 0x3f27a965, 0x57aa44fc, 0xb185dd8a, 0xc294c10b, 0xc58ff421, 0x522489a5, 0x0f502845, 0x10ea53fe
.word 0xb23d0a45, 0x3e3b57eb, 0x235d6545, 0xba632a02, 0xd934d82e, 0xc009a74b, 0x9c3e4421, 0xecfca609
.word 0x20ca90f9, 0xb34de746, 0xf980f55b, 0x07114294, 0xc45c76bf, 0x7e14ec88, 0x92794e27, 0xb3a441ef
.word 0xe6973f74, 0x9d5a8f61, 0x8461a0df, 0x06c43728, 0x8099853c, 0x5284de11, 0x6ae25e92, 0x265e70f3
.word 0x8d4198e3, 0xb6831078, 0x45ab9972, 0xeb551db0, 0xedaadb7e, 0x6f2600f4, 0x863413c1, 0x10955282
.word 0x568d2c23, 0x74db738f, 0x40db3645, 0x79feb346, 0x17b17279, 0x588602e2, 0x04d3b708, 0x2f620033
.word 0xb2f1c157, 0x305704d5, 0x76067b25, 0x5c82185e, 0xdf26682d, 0xe18a03dd, 0x8657cc0d, 0xafde7288
.word 0x28048ccb, 0xf30e66a1, 0x6af38345, 0x5e6d8003, 0x85e93f13, 0xe6c279cd, 0xc21f525f, 0xdad4b436
.word 0x7180223d, 0x144e887e, 0xfa028e1b, 0x6ab441d5, 0xa4699c15, 0xf3acb67e, 0xd1e4495d, 0x6f0c7a49
.word 0x1b8dbd8f, 0x2be10a9d, 0x0eb9c03f, 0x480853f2, 0xa532936e, 0x83fb7e5f, 0xd25e3fed, 0x0ed59527
.word 0x9a404f80, 0x36a8f77d, 0xecf0037b, 0xc20e2840, 0xdec57ece, 0x0e1ef333, 0x7006a45b, 0x2a8a32dd
.word 0xf5823051, 0x4c3268cf, 0xc9acb88d, 0x6c0391b5, 0x5d1719e0, 0xf529b2e2, 0x7cd35d6f, 0x4c176bd9
.word 0x5e6e4b33, 0x0bd1a191, 0x505316c2, 0x70b4dc20, 0x8b0bdbdb, 0x94efa89f, 0x6ea6cef8, 0xbe9f00f1
.word 0x0503efc2, 0x113949c0, 0xa146f0c4, 0x30f198bc, 0x809cdac6, 0xef178b7b, 0xfd98b676, 0x997c80d0
.word 0x164a10d2, 0xa8a7cb7a, 0xa46b9324, 0xeeb577e3, 0xcb8d3cbd, 0x95feb026, 0xb09448cf, 0xa8d60407
.word 0xdae2f436, 0x5f3758cf, 0xd6ebaa52, 0xab6bbf64, 0xf754fcc9, 0x5b2e4f8d, 0x0433ebd2, 0x7bc7d560
.word 0xe6e6f0bd, 0x904e423b, 0xcdc84f26, 0x9eabe51a, 0x312ac375, 0x4d7b6a84, 0x7d9d20f2, 0xd4883d8e
.word 0x8afa71fa, 0x6184ad1c, 0xcd7b931c, 0x4e1979b8, 0x527ecd45, 0x9c421d6b, 0x32fbb978, 0x5b76ab5a
.word 0x6afe0017, 0xdeee2ba2, 0x38e8c230, 0xb636694f, 0x3d56bc9e, 0x149d5cc5, 0xa0b37055, 0x8b12d112
.word 0x113a45c6, 0x2679da29, 0x8554973d, 0xf6a4e3dd, 0x17307ff6, 0x22af517d, 0x3e26e04d, 0xb8f4c0d0
.word 0xf88c55de, 0x87020474, 0xc73bec0a, 0xad59cfd2, 0x819db087, 0x0fb1bee4, 0x450f3417, 0x69eb2136
.word 0x98085d7f, 0x7991ffa4, 0x25aa41eb, 0x83883fd6, 0xdbe68aae, 0x5b0545e8, 0xe1a783d1, 0xd205b831
.word 0xaf49e84f, 0xaaedc0ae, 0xe5ea6b7e, 0x7971dfc5, 0x58ec867f, 0x012599bc, 0xe2d021a5, 0xf380b864
.word 0xceb453b3, 0x263de9ba, 0xae410c09, 0x997767e5, 0x26edf27b, 0x07f88c16, 0x34b53da4, 0x8e6bc12c
.word 0x4c395655, 0x333a98fe, 0xf9848269, 0x45c1fa0d, 0xaff3f8b1, 0xfe7c0c9d, 0x94c8d7e1, 0xfce68297
.word 0xe431a548, 0x3cac1955, 0x8560e429, 0xb5db3c87, 0x76fab137, 0x287292c2, 0x06f39059, 0xc2ff37ae
.word 0xd31db17b, 0xa7d92927, 0x54a83338, 0x15b5f987, 0x274e1081, 0x3e3f5907, 0x3ea8d98d, 0xa65cdf61
.word 0x2e074202, 0xc9784bf9, 0xce73d650, 0x28cea717, 0xa7cabe5d, 0xd30a41ca, 0x6d995175, 0x7bb5fd4e
.word 0xafa4554b, 0x3c1f2c73, 0x37513dcb, 0x63b6836e, 0x0d682fa7, 0x9c190073, 0xc6d6ec0e, 0xbb724ef1
.word 0x8c9ed566, 0x2e4cb157, 0xae3dffa5, 0xf3685016, 0xdbeaa565, 0x19894927, 0x0acbd55d, 0x31b92559
.word 0x6c663345, 0x1779730b, 0xdf9c77ca, 0x8f479a38, 0x9b9cc1a3, 0x0162b346, 0x262f8520, 0x975185e3
.word 0xf0e7c700, 0x02e8f5a4, 0x95c1cd76, 0x76874ec4, 0xff4c5bfe, 0x530811fc, 0xbb12bc14, 0xcec67139
.word 0xb4b6c180, 0xccca0747, 0x2cd4c1a4, 0x04a67d7b, 0x19cc4003, 0xedd03534, 0x6e30399a, 0xc12c6b32
.word 0x5019e15a, 0xb765259c, 0x40ad80e0, 0xc25dea2f, 0x38800fe0, 0xf3048911, 0x94fb3d7f, 0x7ccb5b8d
.word 0xd98714da, 0xb036a421, 0xc2aef8b3, 0xa960df56, 0x29a8ba36, 0xf39f77a5, 0x6adc0a70, 0x8e28f063
.word 0xefe1a8a7, 0x81295cde, 0x8a67a6e2, 0xc50ad267, 0xb86cf572, 0x0abc06d7, 0xc505243c, 0x21f1b649
.word 0x8ee265f9, 0x57ebe43a, 0x4798c6ae, 0xf5ed6a89, 0x35118ca4, 0x9a74b1a3, 0xf3b0803b, 0xbdb9dd40
.word 0x804e50af, 0xdd79da52, 0xa01d6fc5, 0x77e1eed6, 0xe02a1c74, 0xd41fd6d7, 0xe834a166, 0xc19e8d71
.word 0x9f39c604, 0x1e4fba13, 0x43d5356e, 0x3658fce4, 0x66e8a383, 0x28c6cdf6, 0x3d84d57f, 0x5e75d1fe
.word 0x9921a6f4, 0x7526284a, 0x8c177915, 0x47c95349, 0x7c282910, 0x9d0a5dbd, 0x79a83c30, 0xc359857b
.word 0xd567b579, 0xc2a23f13, 0x5a326cb7, 0xd231bd2e, 0xd4a67e01, 0x9ae9ffa6, 0xe4d4f6de, 0x9bc00191
.word 0x2c7dae4b, 0xbefd57af, 0x33613f31, 0xf195c605, 0x9252c1e3, 0x832b2cc3, 0x3fb3700d, 0x55582329
.word 0xd6a624fe, 0x2a695986, 0xb611b5ed, 0xcab7cf4f, 0x980e283b, 0xc6870cb2, 0x0bb20c7a, 0x49f94038
.word 0x31b52977, 0xeb0ff158, 0x6423ad30, 0x230e744d, 0xe86510f1, 0xef566a58, 0xddf0c267, 0x66ef9a3a
.word 0x9f2114f8, 0x49208b93, 0x5b0beea8, 0xfd20ac68, 0x17f62b08, 0x87a43ef3, 0x9b7d2d66, 0x920c2cb3
.word 0x702c9c79, 0x344abdb2, 0x5c414c9f, 0xff4529da, 0xce1d1cbd, 0xfa6c1da7, 0x72f11f1d, 0xd1cc5348
.word 0x4d03bd9b, 0x5f3c1a88, 0x023e4fa6, 0x9e9a65a6, 0x584d72ab, 0xe11401d1, 0x4a3d8848, 0x9b21149d
.word 0xf765997c, 0xe88c3e09, 0x155a7922, 0xea9d0d94, 0xe7774143, 0xd7ee459e, 0xe82966e6, 0x55943e9d
.word 0x2406e1ef, 0x56baf511, 0x318688a1, 0xc465aea4, 0x0553250d, 0x5af89c37, 0x6cc62cba, 0x97d192b6
.word 0x8b877c98, 0xf0807618, 0x67c907c1, 0xb06a8c4c, 0x413cce48, 0xb06ef793, 0xfd42c547, 0xc0461dbf
.word 0xcff62153, 0x9e6a9e76, 0x0a37976f, 0x179218b2, 0x71f9269e, 0x3a5fe141, 0xcacd21da, 0x2582a535
.word 0x6965ae5d, 0xd07e50a8, 0x173b6f93, 0xdbc63ff8, 0xbe8b6714, 0x3a2e2b93, 0x088952fa, 0xf0075d30
.word 0x9215441a, 0xcaaf5ea5, 0xac05845a, 0xb09b7165, 0x951e522f, 0x899e278b, 0x37c07fc9, 0x8dff23f6
.word 0xc4f5a701, 0x772df9dc, 0x8eca6901, 0x8ddec60d
.section .region_1,"aw",@progbits;
region_1:
.word 0x36c0a81e, 0xf5fb8644, 0x9fe9096d, 0x5ef6a957, 0x4244ddc9, 0x352c79f1, 0x033a59ff, 0x9a45c81a
.word 0x033bdca0, 0xf05ac65e, 0xa6a94eea, 0x0747685a, 0xd721ae3d, 0x72ba7c75, 0xbecd4c32, 0x39d18f96
.word 0x75812f41, 0x016ed7a9, 0x492313ac, 0xd0b8b923, 0x032e9222, 0x2e079f2b, 0xfef92a4c, 0x823fe630
.word 0xc9af936f, 0xb046b8af, 0xe86ad052, 0x8a9aed55, 0x1fa54062, 0x9eeb35d6, 0x51e13df6, 0x5a35b0df
.word 0x6f789b31, 0x61128654, 0x8f6af3ed, 0x12233489, 0x5dd55aac, 0x2468cbaf, 0xee0f7f81, 0xcd6be2a0
.word 0x8fb5d165, 0xdc8e3aa7, 0xb3de858b, 0x18573244, 0x0f4bed1d, 0x15e06278, 0xf7ab428e, 0xc707f028
.word 0xe9ebad24, 0x27fc1b85, 0xc28cd669, 0xb1ed7827, 0xe8b43323, 0x29d5c618, 0x16386f7d, 0xf34b17f3
.word 0x74cd3938, 0x303e5ac9, 0x604c054a, 0x303d2a56, 0x2c18988b, 0x727fa679, 0x0e49561d, 0x13438745
.word 0x26998d4b, 0x9e2c34b5, 0x4b18d480, 0x889a2758, 0x678fc7c1, 0xd07e233f, 0x3a549bfa, 0x51d3799c
.word 0xbf8876e0, 0xa73d51d8, 0x9a097847, 0x4fc817f7, 0x15982d18, 0xe20fdefb, 0x388de792, 0xe2296338
.word 0x1b045390, 0x7c49c131, 0x0c71d1ea, 0x7d39257c, 0x306de070, 0x1c27df74, 0xc9be082f, 0xafcadd5f
.word 0xbb8dd6a1, 0x2da5a00d, 0x7be31dee, 0xaa32abdc, 0xbbb95f7f, 0x36b27df4, 0xb09ed9cf, 0xf11d43c4
.word 0x73a19d64, 0xb63b53db, 0xbb39736e, 0xcb1f1060, 0xb9e5d577, 0x3aca3cfd, 0xe93e7c01, 0x3aef5495
.word 0xdf873988, 0xa7856e26, 0x155c72f8, 0x5084249a, 0xb05fecea, 0x52928d58, 0x9fa84afa, 0xd7220882
.word 0x15d6b52b, 0x43fcc329, 0x3fced6e0, 0xe6e64105, 0x0a407302, 0xbecbf2db, 0x1dc97e48, 0x5dfdb012
.word 0xecd0d8e8, 0x5ee02a1c, 0xf45178b9, 0x262deaf1, 0x8954ac1d, 0xb1c704af, 0xd310af7c, 0x9887202d
.word 0x62c18d03, 0xf473a5e1, 0xb09ef94d, 0x2214702c, 0x3ccc4e28, 0x8587ecb9, 0x663228d0, 0x5e2bf356
.word 0x3ea55eda, 0xa9024c43, 0xb5ef2b16, 0x5624401d, 0x26724703, 0x3c661c6e, 0xffbfde0a, 0xccf86d2f
.word 0x5b5758b8, 0x88f7069a, 0x69b03a33, 0xb7ecb70a, 0xb3bc3f14, 0x7ab75d30, 0xe2143939, 0x7d7221cf
.word 0xd3b8ec93, 0xe307d3a8, 0x07517452, 0xad8ee89b, 0x832fffb0, 0xecf672a4, 0x7af961a6, 0xf5c4bb15
.word 0x1db787af, 0xcf817228, 0x0b6e6408, 0x06fac5f7, 0x1456c0dc, 0x5ff57b8a, 0xa768fd33, 0x225e4a26
.word 0xd76dab7f, 0xb544f006, 0x6cbb82f1, 0x6ffb3a95, 0x6ab78da3, 0x7381252b, 0x18e86a67, 0x4e3facd1
.word 0xd725fb18, 0xc0ec070a, 0xd402d3ce, 0x73d0dc50, 0x86528cf5, 0x421f0823, 0x5394ff11, 0xfa377480
.word 0x760f2e42, 0x20c07321, 0x2af86c36, 0x354f8078, 0xfe4567fd, 0x801c5141, 0x57f0864a, 0x53b16d72
.word 0xd9d19e49, 0x0e3b2f19, 0xff400597, 0x105dc859, 0x4365e877, 0xca567798, 0x20aac63f, 0xc3a07af5
.word 0xc9bd0cff, 0x28cef96f, 0xa285698c, 0xee7045c5, 0x50336198, 0x567070fe, 0xd212aba1, 0x68cb1348
.word 0xed268c8f, 0xed922b08, 0x32592e2a, 0x85087375, 0x11eb1421, 0xdc70aa20, 0x04e7e080, 0x8aa11921
.word 0xef780ddc, 0xae5debf8, 0x6e288e7d, 0x48e1dcfb, 0x2938d5a1, 0x5a58abf2, 0x3a66680c, 0xc1eeb2ef
.word 0x2e1cce80, 0x2c1fe001, 0x1fceaa69, 0x108c8d0f, 0x6800e089, 0x7197eabf, 0x8676770a, 0x0c20fe53
.word 0x8617fe20, 0x0c558464, 0x0f4ae337, 0x86d30e9d, 0xc5f95e9b, 0x96d178f2, 0x7c784204, 0x47029097
.word 0x981703c4, 0x04475da9, 0x4847a850, 0xc4b99f73, 0x833ef97b, 0x488a4b80, 0xc6a3713f, 0x4b578f3a
.word 0x7bcb691c, 0xcfb313bd, 0x52b40b1d, 0x99d97ecd, 0x060f6d99, 0x59f5cb2d, 0x7270581b, 0xb67f618d
.word 0x6ce38f2f, 0x0f8750be, 0x5581dfd1, 0x73a52c6e, 0x8a20a10b, 0xd10dafef, 0xe1689164, 0x92a6bb02
.word 0xb7d493a6, 0x8bfd5b4e, 0xf07c50f5, 0xd57c08e5, 0x762df0fa, 0x671f3dc9, 0xea492a04, 0x3cb51669
.word 0x8ea587fe, 0xe607a44f, 0x3fd870ad, 0xc8eef431, 0xdc105be1, 0x1824613e, 0x9c8d7dac, 0xeb550bd6
.word 0x64db2190, 0xae4a8b91, 0x4f058f8a, 0x51cc87d1, 0x87f43c83, 0xc8032883, 0x0473983f, 0x9eb01034
.word 0xffdfc409, 0x0bdf077c, 0x59e88de3, 0x09c97738, 0xba6ef8ac, 0x4ae50d61, 0x8a09bab1, 0xb364803f
.word 0x7860b4b1, 0xdca8078e, 0xda2379cd, 0x2c321ff2, 0x41dce11b, 0x8ec6d245, 0x9286cfad, 0x1be28196
.word 0x3ad2ba77, 0x9e44925f, 0x3b4039a1, 0xcde2b50c, 0x8053d380, 0xa611addc, 0x0e71f3fd, 0xb130c9ca
.word 0xf46409b3, 0x9d17dd1b, 0x899f9ce2, 0x8cf58cf9, 0x07ae8511, 0xbbaac8cf, 0x7858dfdf, 0x76798353
.word 0x44909045, 0x82ce3c05, 0xc92a5c2c, 0x072ceda9, 0x4709d910, 0x4fd6b101, 0xa800c1d4, 0x71d59999
.word 0x10aff715, 0xa4347c92, 0x74fc15eb, 0x746bf063, 0x4fe73cf1, 0xfa536ebe, 0x3200a30e, 0xe058fcd8
.word 0xbbd12dfb, 0x60b899ee, 0x3deab9e4, 0xf62e6977, 0x1b0011ea, 0x2716ff61, 0xa68abd89, 0xbfda4245
.word 0x50f52a4b, 0x705707c7, 0xccfd4687, 0x31507070, 0x2a78016e, 0xe8ebc9d0, 0x38212418, 0x7f34245b
.word 0xcbd89177, 0x11eddf7a, 0x9234ca26, 0x916a6936, 0x8c9a9dd6, 0xf3ba8f47, 0x3645919b, 0x88cc7937
.word 0x2496382d, 0x159e3bec, 0xfb19787e, 0x81e9047e, 0xc1794b5f, 0x08f82bec, 0x4eac5608, 0x64a4e8f2
.word 0xd830e32c, 0x1afc85ad, 0xa1676afb, 0x465474ba, 0xd04bbb2b, 0xf7bd0465, 0xe4e0f1c7, 0xae55aff9
.word 0xacec9c71, 0x2fb76168, 0x501206e1, 0x65275316, 0xa9a07fbb, 0x7dba28bb, 0x7c395168, 0xacbc2ce1
.word 0xc2db8173, 0x22d2c415, 0x4135c454, 0x03a56cb9, 0x55def917, 0xd20045bd, 0x2bdc407f, 0x6a527b8b
.word 0x26338b9d, 0x07901c3b, 0x25a7895d, 0x038138b2, 0xa6212350, 0x6cc30fb7, 0xf5f797ca, 0x4dc133eb
.word 0xc7355e06, 0xf482f5a5, 0x75ecd10a, 0x9ee9e3e6, 0xd80affd6, 0x96d76489, 0x8cd98ce7, 0x9c0b4b7c
.word 0xbb6f0746, 0xb57fdb58, 0xfb0a5079, 0x8d30c9ee, 0x03d4e619, 0x5927998b, 0x4905a1a6, 0xeaee3b5f
.word 0x6652cffa, 0xada86c3d, 0xc271ac66, 0x641ba5c5, 0x564bb372, 0xb953c79d, 0xbcd54763, 0x047bd335
.word 0x5599bc6d, 0x2dfb75a6, 0x728b706b, 0x002ebfb7, 0x9a60de29, 0xeb8d85d1, 0x3c4a2d3e, 0x967445dd
.word 0x338ebd83, 0x1a513995, 0x07a7bbe4, 0xb99a6e21, 0x16fcffe8, 0xd8849236, 0xc76b96e2, 0xea0fe99b
.word 0x83dd8307, 0xb5082ff4, 0x52f385f2, 0x7273ac6f, 0xc7b19c98, 0x198b461b, 0x0ac70681, 0x773749ff
.word 0x869bd05d, 0x65739a7e, 0xfa4933d0, 0xf342c7fc, 0xfe33a99a, 0x80c36cb3, 0x05d1e2ed, 0xd78c4b48
.word 0xd1de57fe, 0x8bac56f6, 0x10297d89, 0xe534f49a, 0x1a93bb2e, 0x3afed22c, 0xbfde842b, 0xdf36bc93
.word 0x34c62a09, 0xc2c640f5, 0x1b76f389, 0x35e5638b, 0x9b8ff874, 0xdf8ebd5e, 0xacbf9ec8, 0x1ec9966e
.word 0xead81b18, 0xf4058788, 0x1269611f, 0x5acf52fb, 0x1fa29869, 0x497daae1, 0xc1282e5d, 0xbfc62a03
.word 0x7522aa21, 0xad73c546, 0xa16a8f38, 0x26073381, 0x00035f2e, 0xeda73700, 0x8ad306df, 0xcd79ba3d
.word 0xbc379ea3, 0x5f3cc40c, 0xfc4f9826, 0x91c784ab, 0x53ea5c68, 0xab4fa804, 0xfbc85bf2, 0x0cff0f9f
.word 0xabcd37f9, 0x78ee4946, 0x771476dd, 0x6381a269
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
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x28, x7, zero
                  csrr x17, 0x300 # MSTATUS
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 31
                  bne x17, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x17, 0x341 # MEPC
                  csrr x17, 0x342 # MCAUSE
                  li x29, 0x3 # BREAKPOINT
                  beq x17, x29, ebreak_handler
                  li x29, 0x8 # ECALL_UMODE
                  beq x17, x29, ecall_handler
                  li x29, 0x9 # ECALL_SMODE
                  beq x17, x29, ecall_handler
                  li x29, 0xb # ECALL_MMODE
                  beq x17, x29, ecall_handler
                  li x29, 0x1
                  beq x17, x29, instr_fault_handler
                  li x29, 0x5
                  beq x17, x29, load_fault_handler
                  li x29, 0x7
                  beq x17, x29, store_fault_handler
                  li x29, 0xc
                  beq x17, x29, pt_fault_handler
                  li x29, 0xd
                  beq x17, x29, pt_fault_handler
                  li x29, 0xf
                  beq x17, x29, pt_fault_handler
                  li x29, 0x2 # ILLEGAL_INSTRUCTION
                  beq x17, x29, illegal_instr_handler
                  csrr x29, 0x343 # MTVAL
                  1: la x2, test_done
                  jalr x1, x2, 0

ecall_handler:    
                  la x17, _start
                  sw x0, 0(x17)
                  sw x1, 4(x17)
                  sw x2, 8(x17)
                  sw x3, 12(x17)
                  sw x4, 16(x17)
                  sw x5, 20(x17)
                  sw x6, 24(x17)
                  sw x7, 28(x17)
                  sw x8, 32(x17)
                  sw x9, 36(x17)
                  sw x10, 40(x17)
                  sw x11, 44(x17)
                  sw x12, 48(x17)
                  sw x13, 52(x17)
                  sw x14, 56(x17)
                  sw x15, 60(x17)
                  sw x16, 64(x17)
                  sw x17, 68(x17)
                  sw x18, 72(x17)
                  sw x19, 76(x17)
                  sw x20, 80(x17)
                  sw x21, 84(x17)
                  sw x22, 88(x17)
                  sw x23, 92(x17)
                  sw x24, 96(x17)
                  sw x25, 100(x17)
                  sw x26, 104(x17)
                  sw x27, 108(x17)
                  sw x28, 112(x17)
                  sw x29, 116(x17)
                  sw x30, 120(x17)
                  sw x31, 124(x17)
                  la x2, write_tohost
                  jalr x0, x2, 0

instr_fault_handler:
                  add x7, x28, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

load_fault_handler:
                  add x7, x28, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

store_fault_handler:
                  add x7, x28, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

ebreak_handler:   
                  csrr  x17, 0x341
                  addi  x17, x17, 4
                  csrw  0x341, x17
                  add x7, x28, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

illegal_instr_handler:
                  csrr  x17, 0x341
                  addi  x17, x17, 4
                  csrw  0x341, x17
                  add x7, x28, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x17, 0x300 # MSTATUS;
                  csrr  x17, 0x304 # MIE;
                  csrr  x17, 0x344 # MIP;
                  csrrc x17, 0x344, x17 # MIP;
                  add x7, x28, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
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
