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
                  li x22, 0x40000100
                  csrw 0x301, x22
kernel_sp:        
                  la x12, kernel_stack_end

trap_vec_init:    
                  la x22, mtvec_handler
                  ori x22, x22, 1
                  csrw 0x305, x22 # MTVEC

mepc_setup:       
                  la x22, init
                  csrw 0x341, x22

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x22, 0x1800
                  csrw 0x300, x22 # MSTATUS
                  mret
init:             
                  li x0, 0xf7897dec
                  li x1, 0x0
                  li x2, 0xfa15b299
                  li x3, 0x0
                  li x4, 0x80000000
                  li x5, 0xbb2d5bc4
                  li x6, 0x80000000
                  li x7, 0x80000000
                  li x8, 0x0
                  li x9, 0x0
                  li x10, 0x9
                  li x11, 0x0
                  li x13, 0xf8de6adc
                  li x14, 0xa
                  li x15, 0x80000000
                  li x16, 0x80000000
                  li x17, 0xd
                  li x18, 0xfd0b1457
                  li x19, 0xc
                  li x20, 0xfdc7a1d8
                  li x21, 0x0
                  li x22, 0x0
                  li x23, 0xfc5571af
                  li x24, 0x0
                  li x25, 0x80000000
                  li x26, 0x3
                  li x27, 0x653dfc56
                  li x28, 0x4
                  li x29, 0x80000000
                  li x31, 0xb1390165
                  la x30, user_stack_end
main:             slli         s8, s11, 6
                  andi         s3, t6, -72
                  srai         a4, tp, 5
                  ori          t1, a2, -228
                  la           a0, sub_1
                  xori         a4, a2, 1735
                  slli         s5, s6, 9
                  nop
                  lui          a7, 103820
                  addi         s11, a3, 1492
                  addi         a0, a0, 615
                  sll          s3, s5, t0
main_j2:          jalr         t1, a0, -614 #jump main -> sub_1
                  la           s4, region_1+1743 #start riscv_load_store_rand_instr_stream_0
                  addi         zero, a2, -880
                  nop
                  sb           a3, 186(s4)
                  srli         a1, s8, 31
                  sltu         s6, sp, t0
                  sub          sp, t3, s4
                  lbu          s3, 200(s4)
                  lbu          a0, 226(s4)
                  lbu          a0, -1145(s4)
                  slti         a4, t2, 468
                  or           zero, s7, a0
                  add          a0, sp, s0
                  lhu          s8, 245(s4)
                  ori          a7, s8, 1903
                  addi         s6, s10, -929
                  slti         t6, t4, -346
                  add          t2, a4, s9
                  sb           t6, -1204(s4)
                  sltiu        s6, s0, 391
                  xor          s6, gp, s10
                  lb           s1, -1467(s4)
                  lhu          s5, -493(s4)
                  addi         s7, tp, -361
                  sb           s6, -884(s4)
                  lb           s11, -546(s4)
                  sb           ra, 240(s4)
                  andi         s11, a6, 1745
                  sb           a7, -263(s4)
                  sb           s9, -471(s4)
                  lh           a3, -369(s4)
                  auipc        s3, 866538
                  slt          ra, t4, a7
                  lb           a1, -1575(s4)
                  slli         a5, t4, 12
                  sub          a3, s1, s10
                  lbu          s1, -660(s4)
                  lb           t0, -138(s4)
                  nop
                  lbu          zero, -905(s4)
                  lbu          s5, -105(s4)
                  slt          a3, s6, t2
                  lbu          s0, -149(s4)
                  and          t0, t2, s3
                  lb           a1, 6(s4)
                  sb           s8, -1030(s4)
                  sh           s5, -665(s4) #end riscv_load_store_rand_instr_stream_0
                  bge          a1, s3, 17f
                  xori         s2, a7, 1110
                  srai         a4, a0, 26
                  beq          a1, s10, 14f
                  andi         s6, t2, -331
                  sll          sp, a7, s1
                  bltu         s1, s0, 18f
                  auipc        a7, 694994
                  bne          t0, s6, 22f
                  slli         a0, t6, 30
                  sra          a0, a2, sp
                  slti         s7, s7, -1758
                  sra          a6, t4, a0
                  xori         s3, s4, 53
14:               bge          s11, a4, 23f
                  bgeu         a5, s2, 33f
                  add          s4, s11, t4
17:               addi         t0, zero, 1046
18:               sll          t4, a0, s8
                  bgeu         tp, t1, 36f
                  xori         t2, gp, 1433
                  andi         tp, gp, 246
                  xor          zero, a0, s10
                  sll          t0, a7, t5
                  la           a6, sub_1
                  or           t1, s0, t2
                  ori          sp, zero, -1924
                  xori         s3, a1, 1795
                  addi         a6, a6, -928
                  addi         a0, sp, 478
                  srl          a7, s10, a4
main_j1:          jalr         t1, a6, 929 #jump main -> sub_1
                  bne          a5, s6, 29f
22:               slli         sp, a5, 29
23:               sltu         s5, a2, a7
                  bgeu         a4, s10, 41f
                  or           s2, a0, s6
                  addi         a5, s2, 1615
                  lui          a5, 15915
                  or           s0, t2, s10
29:               lui          t1, 929904
                  beq          zero, s9, 36f
                  sra          s4, tp, s3
                  sub          t1, s7, s8
33:               andi         a6, a4, 51
                  xori         ra, t2, -1188
                  slt          a5, s1, t3
36:               sll          s10, s1, t5
                  auipc        t4, 284628
                  beq          tp, a5, 52f
                  and          s9, t4, s7
                  andi         a0, gp, -458
41:               nop
                  sll          s4, t4, s8
                  slti         sp, s11, 1350
                  lui          t2, 307507
                  andi         s2, sp, 1687
                  slli         a1, t2, 28
                  sub          s0, s5, a3
                  slt          a6, s2, a5
                  bge          s8, a2, 57f
                  srl          s7, t6, s11
                  srai         t2, a1, 21
52:               sub          tp, s1, zero
                  bltu         a2, t1, 67f
                  blt          sp, tp, 57f
                  sra          s2, s7, t5
                  bgeu         s5, a5, 62f
57:               andi         s11, s1, -1496
                  add          gp, t5, t0
                  slli         s11, s7, 2
                  add          tp, a4, a6
                  xori         s5, t4, -1356
62:               srli         s0, sp, 23
                  slti         t1, s7, -2032
                  beq          s4, a3, 76f
                  srl          s5, a3, ra
                  auipc        s2, 172651
67:               xor          a6, a7, a6
                  srl          t0, zero, s6
                  bgeu         zero, s6, 70f
70:               xor          s1, s10, s5
                  bgeu         tp, sp, 80f
                  nop
                  andi         ra, s9, 1368
                  addi         a5, s1, -1830
                  bgeu         s11, a1, 86f
76:               add          zero, a6, tp
                  and          a3, s11, s9
                  srl          a0, t2, t4
                  slli         gp, t2, 4
80:               xori         s6, a0, 1535
                  srai         tp, s0, 29
                  add          a7, tp, s8
                  srai         a7, s6, 1
                  sltiu        t6, t1, 733
                  slli         s11, a0, 11
86:               auipc        t6, 549181
                  bge          s10, a4, 91f
                  beq          zero, s0, 92f
                  srl          s5, a4, s5
                  srl          zero, s3, s11
91:               bge          a4, s11, 96f
92:               sltiu        zero, t4, -1503
                  srl          s1, zero, s10
                  sub          s3, a6, s7
                  sll          a5, t5, s1
96:               slli         t6, a1, 8
                  srli         a1, s2, 15
                  srl          tp, s7, a0
                  sltiu        a5, s4, -180
                  add          s6, s8, t4
                  and          gp, t5, s8
                  bne          s0, t0, 108f
                  auipc        s9, 627231
                  sltu         s5, sp, a5
                  nop
                  srli         a5, a2, 20
                  auipc        s1, 965546
108:              slli         s3, t1, 30
                  srli         s1, a1, 3
                  or           a1, tp, a1
                  nop
                  and          a7, t0, s6
                  lui          t6, 52582
                  sltiu        s6, a7, 1672
                  xori         a1, a5, 1158
                  lui          a6, 424536
                  sltu         a0, t4, t3
                  nop
                  nop
                  addi         t1, s3, 1347
                  beq          s10, a5, 131f
                  nop
                  bge          a7, s4, 142f
                  auipc        s4, 355405
                  addi         s8, s10, -1501
                  slt          s11, s6, s9
                  srl          ra, s10, s4
                  sltiu        a7, s4, 1333
                  ori          sp, a2, -983
                  add          s2, t1, s5
131:              bgeu         s5, gp, 136f
                  add          t2, t6, s0
                  addi         a0, t5, -1688
                  beq          s8, t3, 153f
                  slt          tp, s2, a0
136:              addi         a5, s1, 482
                  srli         s8, s4, 20
                  addi         s1, s6, -170
                  bge          s0, a5, 158f
                  bltu         a3, s5, 153f
                  slt          s7, gp, a7
142:              sub          a7, a6, s6
                  sltiu        s6, t3, -181
                  sll          s11, tp, zero
                  sll          a4, s0, zero
                  sltiu        a1, s4, 825
                  beq          t2, sp, 156f
                  slti         s9, a6, 2024
                  sra          s2, t4, s5
                  slt          ra, t6, s8
                  nop
                  xor          t0, a7, s8
153:              slli         s5, a5, 2
                  slti         ra, s8, 498
                  sltiu        s6, a0, 1189
156:              slti         a1, a4, 1744
                  bne          s5, s8, 163f
158:              srli         a7, t2, 15
                  bge          a0, a4, 176f
                  slti         a7, a2, 1523
                  auipc        s6, 873049
                  sltiu        s6, a2, 1957
163:              srl          s4, s11, s8
                  srai         a6, a0, 10
                  auipc        tp, 562698
                  sub          a3, a1, s7
                  bge          s1, s9, 176f
                  bne          s3, t0, 182f
                  beq          ra, s2, 179f
                  sltu         zero, t0, s11
                  sra          gp, s2, zero
                  beq          t1, s5, 182f
                  and          s3, s4, s0
                  ori          t6, t4, 1804
                  sltiu        s3, zero, -127
176:              addi         s1, s5, 207
                  beq          a0, s0, 182f
                  srai         s10, a1, 14
179:              bge          t0, a4, 182f
                  andi         t2, a6, 35
                  bgeu         a3, s1, 182f
182:              xori         a1, a3, -760
                  la x28, test_done
                  jalr x0, x28, 0
test_done:        
                  li gp, 1
                  ecall
sub_5:            srl          t0, a2, s6
                  srl          s6, zero, s9
                  addi         t5, t5, -20
                  nop
                  add          zero, s6, a7
                  sra          a7, t3, a3
                  andi         a6, s1, -1497
                  lui          s9, 379582
                  sw           t1, 4(t5)
                  nop
                  lui          zero, 963752
                  sub          s6, s8, gp
                  andi         t2, a5, 733
                  la           s10, sub_6
                  and          a5, s1, s4
                  add          t1, a0, a6
                  add          s8, a0, t3
                  nop
                  sra          ra, s2, a7
                  andi         s9, a2, -1295
                  addi         s10, s10, -915
                  bgeu         t2, a0, sub_5_j8 #branch to jump instr
                  slti         t4, t1, 1291
sub_5_j8:         jalr         t1, s10, 916 #jump sub_5 -> sub_6
                  srai         s5, s1, 16
                  sll          a5, t0, t0
                  srai         gp, t0, 14
                  ori          s9, s3, -87
                  srli         gp, t3, 30
                  srli         s4, t4, 29
                  andi         t2, s9, -480
                  add          t2, s0, zero
sub_5_j9:         jal          t1, sub_7 #jump sub_5 -> sub_7
                  srli         a5, s9, 10
                  auipc        s4, 400740
                  sltu         s5, t1, s9
                  slti         s2, tp, 1287
                  srai         a3, s11, 30
                  or           a5, zero, t4
                  blt          s4, gp, 7f
7:                srli         sp, s8, 6
                  sltu         t2, s11, s8
                  nop
                  slt          s6, a2, zero
                  add          s5, s9, a6
                  srl          tp, s5, s5
                  srai         ra, s1, 9
                  xori         s0, t6, 1358
                  andi         s4, tp, -1700
                  addi         s2, s4, -190
                  bge          s1, t0, 24f
                  sll          s0, s8, s9
                  slti         s5, t4, 1752
                  bne          t6, a4, 28f
                  nop
                  srai         a6, a4, 15
                  lui          t1, 290978
24:               andi         s9, t0, 804
                  sra          s11, s0, s5
                  srai         s7, tp, 19
                  sltiu        s9, s1, -1149
28:               slt          a3, s9, s4
                  blt          t2, a1, 39f
                  srl          t1, a6, a3
                  bltu         s9, s9, 43f
                  xori         s8, t1, -151
                  srli         s0, t0, 21
                  and          t1, t0, t6
                  beq          a4, s8, 43f
                  srai         a0, t3, 6
                  addi         s8, a1, -1123
                  sltiu        a7, s8, -910
39:               sub          s6, s1, tp
                  sltiu        a4, a3, -412
                  slli         s1, s3, 16
                  add          ra, s7, s3
43:               srai         s10, s9, 28
                  lw           t1, 4(t5)
                  srl          s0, a6, s0
                  lui          t4, 580482
                  lui          a3, 675891
                  sra          s3, t0, s5
                  add          t4, t2, s7
                  addi         t5, t5, 20
                  ori          s1, s0, 1464
                  xori         s3, s3, -992
86:               addi x29, x6, 0
86:               jalr x29, x29, 0
sub_8:            sll          s9, s0, s8
                  beq          s2, s2, sub_8_stack_p
                  slli         a3, zero, 14
sub_8_stack_p:    addi         t5, t5, -64
                  sltiu        t2, gp, -222
                  sw           t1, 4(t5)
                  add          a7, a1, a6
                  and          a5, s7, t4
                  bgeu         t5, t4, 8f
                  sra          s0, gp, s7
                  blt          t4, t3, 6f
                  slti         t2, t5, -1218
                  slli         a7, t5, 3
6:                bne          a1, tp, 11f
                  sub          s7, t2, a1
8:                srai         a3, s1, 0
                  or           s3, s6, t5
                  slti         s5, a3, 1233
11:               auipc        s1, 1038743
                  lw           t1, 4(t5)
                  sra          t2, s10, zero
                  addi         a1, a3, 718
                  lui          s0, 601962
                  or           gp, s11, a5
                  ori          t6, gp, 1465
                  ori          s4, s11, -1204
                  or           a3, s9, s1
                  srai         t6, s8, 8
                  auipc        ra, 806575
                  addi         t5, t5, 64
                  sll          ra, a2, gp
31:               addi x2, x6, 0
31:               jalr x2, x2, 0
sub_2:            add          s4, sp, s11
                  addi         s6, a6, 104
                  srli         s5, s2, 28
                  addi         t5, t5, -56
                  auipc        t2, 405956
                  sw           t1, 4(t5)
                  sra          a4, t6, s1
                  lui          tp, 638780
                  slt          a7, t6, a2
                  srai         t4, s4, 28
                  slti         a4, sp, 827
                  add          a6, t2, s3
                  slt          a0, s1, a2
                  slti         t1, s8, -1276
                  bge          s2, a5, 11f
                  or           s6, s7, zero
                  sltiu        s9, s11, -443
                  sub          t4, a0, tp
                  bgeu         a2, s2, 15f
                  or           s11, t0, t6
                  bgeu         s11, t6, 14f
11:               xori         s8, t4, -939
                  srl          tp, s7, s9
                  nop
14:               sub          s8, t1, t0
15:               sra          s9, s4, a0
                  srl          ra, s0, a7
                  and          a7, s6, a1
                  xori         s5, s1, 1797
                  beq          sp, s6, 21f
                  sra          s9, t6, s11
21:               ori          t4, tp, 414
                  auipc        s4, 627646
                  srai         s3, t3, 28
                  lui          s2, 91815
                  slli         sp, s8, 11
                  sltu         a1, a5, s10
                  ori          t0, s11, 418
                  slli         a1, s11, 23
                  xori         s8, s1, 1990
                  srai         s8, t5, 11
                  and          a4, a2, a6
                  sub          t2, s0, t5
                  bltu         s9, s6, 47f
                  slli         gp, t1, 22
                  beq          t6, s10, 39f
                  xor          sp, s7, s1
                  beq          a0, a7, 48f
                  slti         s9, s8, 1357
39:               or           t4, t5, t1
                  blt          t1, s11, 55f
                  slti         a6, zero, -1269
                  lui          ra, 189356
                  bne          s0, gp, 46f
                  sltu         a3, t2, sp
                  sub          s7, gp, t1
46:               andi         a5, s4, 1717
47:               xori         sp, t0, 334
48:               sltu         s7, s2, sp
                  slti         gp, t1, 1571
                  srli         t0, a0, 17
                  bgeu         s2, tp, 62f
                  xor          ra, a4, a4
                  slt          s6, s1, s10
                  srl          t0, a3, sp
55:               sltu         s2, t5, a1
                  sll          t2, t1, t3
                  addi         s9, t2, 1157
                  bltu         gp, t4, 74f
                  beq          a0, tp, 79f
                  ori          a1, s0, -1365
                  sltu         a5, s8, sp
62:               bne          t3, t0, 76f
                  xori         a0, s6, 1703
                  sub          s6, s6, s4
                  blt          t5, t0, 82f
                  lui          t1, 1047342
                  sltu         sp, t4, s10
                  xor          a3, a0, s6
                  beq          s4, t1, 71f
                  srl          gp, s1, s2
71:               slli         ra, t4, 0
                  nop
                  add          a1, sp, s4
74:               xor          t4, s3, s2
                  srai         t1, s5, 28
76:               or           zero, ra, s11
                  nop
                  xor          tp, a2, t6
79:               blt          a6, s0, 94f
                  addi         sp, t5, -809
                  add          a1, t4, a5
82:               addi         s2, a7, -309
                  nop
                  and          s0, tp, ra
                  srai         a5, s8, 6
                  and          a1, t1, a6
                  xori         s0, t1, -897
                  auipc        zero, 176631
                  slli         s2, t4, 16
                  xori         t6, t6, -184
                  bgeu         t4, s8, 94f
                  nop
                  add          a5, s9, s6
94:               ori          a0, t2, -357
                  lw           t1, 4(t5)
                  ori          sp, a0, -914
                  addi         t5, t5, 56
                  and          s7, s10, t1
                  andi         a5, a2, 623
110:              addi x10, x6, 1
110:              jalr x10, x10, 0
sub_10:           slti         gp, s7, -1127
                  addi         s5, gp, -287
                  addi         t5, t5, -56
                  sw           t1, 4(t5)
                  nop
                  lui          s5, 562829
                  la           sp, region_0+1677 #start riscv_load_store_rand_instr_stream_3
                  sltiu        s6, s3, -558
                  lb           a0, 98(sp)
                  slt          t6, zero, s2
                  xor          zero, a0, ra
                  xor          a3, s0, s3
                  addi         s7, s9, -1070
                  sltiu        s8, tp, -159
                  slli         s10, s5, 8
                  lb           s6, 53(sp)
                  sub          s8, a5, s11
                  lb           s7, -1662(sp)
                  lw           s4, 79(sp)
                  andi         t2, s4, -514
                  lb           s3, -719(sp)
                  sll          s8, s8, a6
                  sub          s2, t2, s3
                  lui          s7, 1009001
                  srl          s8, s4, ra
                  sub          a3, s7, a7
                  srai         a6, zero, 12
                  sb           s0, -607(sp)
                  lh           s9, 285(sp)
                  lbu          s1, -1290(sp)
                  auipc        s7, 507041
                  lbu          a4, 210(sp)
                  sh           s9, -1657(sp)
                  sw           zero, -1181(sp)
                  auipc        gp, 224781
                  sub          s9, t1, t4
                  lb           s5, -420(sp) #end riscv_load_store_rand_instr_stream_3
                  la           s8, region_0+1498 #start riscv_load_store_rand_instr_stream_1
                  srli         gp, s0, 27
                  slli         a1, s0, 12
                  sll          s6, s9, s7
                  add          s2, a0, sp
                  lh           ra, 422(s8)
                  sb           a3, 367(s8)
                  lhu          a3, -236(s8)
                  sb           t2, 391(s8)
                  lh           t1, -1256(s8)
                  sra          a6, tp, zero
                  lh           a3, 318(s8)
                  lhu          a0, -584(s8)
                  sb           a1, -589(s8)
                  srli         s3, t2, 22
                  lh           a5, -750(s8)
                  lbu          s7, 295(s8)
                  srl          a0, a2, a0
                  sltu         s9, a3, t0
                  addi         s0, a3, -878
                  andi         s5, gp, -1105
                  sb           t4, -599(s8)
                  lb           a0, -257(s8)
                  srl          s11, t0, ra
                  nop
                  srai         a3, t3, 31
                  slli         s6, gp, 19
                  lhu          sp, 72(s8)
                  andi         t6, s3, 1418
                  ori          a4, s10, 1216
                  auipc        s3, 394270
                  sw           s1, -442(s8)
                  lhu          ra, -874(s8) #end riscv_load_store_rand_instr_stream_1
                  la           a3, region_0+1483 #start riscv_load_store_rand_instr_stream_2
                  sh           a5, 51(a3)
                  xori         sp, s0, -798
                  xor          s7, s2, t5
                  lhu          s7, 115(a3)
                  lh           ra, -169(a3)
                  sb           t6, 250(a3)
                  lb           s1, -248(a3)
                  sh           t4, -237(a3)
                  lhu          t1, 51(a3)
                  or           a4, s0, s3
                  lbu          t2, -168(a3)
                  slt          gp, s11, a7
                  srai         a7, t2, 5
                  srai         t4, t1, 28
                  sltu         sp, s6, s7
                  lui          s2, 239088
                  lb           s10, 158(a3)
                  lbu          s10, -172(a3)
                  lhu          t4, -157(a3)
                  lb           s6, 76(a3)
                  lb           s5, -39(a3)
                  add          a7, a2, s2
                  or           ra, s2, zero
                  sh           t4, -125(a3)
                  lh           t1, -111(a3)
                  lui          a6, 621882
                  ori          t0, t3, 279
                  lb           tp, -97(a3)
                  lui          t2, 597682
                  lb           s9, 154(a3)
                  lh           s9, -121(a3)
                  lui          t4, 502693
                  lb           s5, -189(a3)
                  lh           s6, -253(a3)
                  lbu          gp, 214(a3)
                  lb           a5, -94(a3) #end riscv_load_store_rand_instr_stream_2
                  la           s7, region_0+1352 #start riscv_load_store_rand_instr_stream_0
                  lb           t6, -113(s7)
                  lb           s10, 269(s7)
                  slli         tp, a0, 19
                  srli         a3, t5, 6
                  sll          s9, tp, t2
                  and          a0, t0, ra
                  ori          gp, a7, -511
                  add          s5, a3, s1
                  add          s2, a3, s5
                  lbu          s9, -1111(s7)
                  sb           a1, -1041(s7)
                  srl          s10, s11, s4
                  sh           a7, 102(s7)
                  lbu          t4, -1256(s7)
                  nop
                  lbu          s3, -5(s7)
                  sb           a2, 384(s7)
                  lbu          s8, -1291(s7)
                  lb           a3, 328(s7)
                  add          a5, a2, t4
                  lbu          zero, -457(s7)
                  sb           s3, 643(s7)
                  lbu          t2, -953(s7)
                  xori         gp, gp, -1664
                  lb           tp, 199(s7)
                  lbu          s10, -74(s7)
                  sb           s2, -366(s7)
                  srl          a0, ra, t6
                  or           a6, s3, gp
                  ori          sp, s11, -87
                  auipc        a4, 381442
                  lb           a3, -259(s7)
                  srai         s1, t1, 18
                  sw           ra, 392(s7)
                  sra          a0, a2, gp
                  andi         a5, s2, 53
                  lh           s9, -412(s7)
                  andi         gp, t5, -1066
                  lb           sp, -563(s7)
                  lui          tp, 31486
                  xori         t4, zero, -1714
                  sb           s8, 500(s7)
                  lb           a5, -301(s7)
                  sw           zero, -1008(s7)
                  slti         a1, t3, -1889
                  lh           s8, -1170(s7) #end riscv_load_store_rand_instr_stream_0
                  and          a5, s8, a2
                  auipc        t1, 709677
                  bgeu         zero, s8, 15f
                  sub          s8, gp, a4
                  add          a3, s9, t2
                  addi         a4, t5, -1533
                  srli         s7, a0, 3
                  slti         ra, s10, 269
                  srai         ra, a0, 1
                  srl          s6, s7, t6
                  srai         s5, sp, 12
                  slli         ra, s11, 9
                  srli         t6, s2, 0
                  slti         ra, s7, -79
                  lui          a4, 598770
                  la           t6, region_0+659 #start riscv_load_store_rand_instr_stream_4
                  addi         s7, s1, 715
                  lh           tp, 83(t6)
                  slli         tp, a7, 31
                  lh           s11, 1093(t6)
                  lb           s0, 1186(t6)
                  sb           a1, -557(t6)
                  add          s8, a6, a2
                  lh           t4, 971(t6)
                  sh           ra, 1075(t6)
                  sra          t1, a3, s4
                  slli         t2, ra, 0
                  lb           s9, -396(t6)
                  lh           a0, -491(t6)
                  srai         s4, t6, 12
                  lb           s11, 237(t6)
                  auipc        s5, 947195
                  lb           s1, 1156(t6)
                  lw           a7, 513(t6)
                  lb           sp, -50(t6)
                  sb           t3, 1049(t6)
                  slti         t0, a0, 375
                  lhu          s6, 513(t6)
                  srai         tp, s2, 29
                  auipc        s10, 813428
                  and          a5, s11, s5
                  sub          t1, sp, s2
                  lb           a4, -260(t6)
                  sh           gp, 239(t6)
                  lhu          s9, 653(t6)
                  srli         sp, a7, 9
                  sltu         s10, t2, s8
                  sb           t5, -33(t6)
                  lb           t4, 751(t6)
                  add          s10, t1, s7
                  slli         gp, t0, 26
                  and          a7, s9, t4
                  lbu          s4, -628(t6)
                  lhu          s9, -203(t6)
                  lbu          t0, 116(t6)
                  lh           a6, -541(t6)
                  addi         a6, s8, 380
                  sh           s2, -653(t6)
                  slt          t0, a6, s3
                  sb           a3, 491(t6)
                  ori          t0, tp, 895
                  lbu          s9, 174(t6)
                  addi         s8, a3, 1357
                  lbu          a0, 610(t6)
                  xor          s9, s0, t1
                  lb           a0, -626(t6)
                  sb           s8, 1219(t6)
                  srli         s8, s2, 13
                  sb           t2, 948(t6) #end riscv_load_store_rand_instr_stream_4
15:               slli         a6, s3, 16
                  sll          zero, s7, gp
                  or           s10, s3, s10
                  srl          zero, ra, t0
                  bne          s1, a1, 39f
                  sra          s10, a4, s3
                  slt          s4, gp, sp
                  srl          zero, s4, a5
                  bge          t2, a4, 40f
                  slti         s5, s2, 2042
                  and          ra, t1, a2
                  sltu         tp, t0, t2
                  xor          s7, s9, t4
                  bltu         s5, s8, 45f
                  xori         t4, s7, 1480
                  bne          a3, tp, 43f
                  ori          t4, a0, 1647
                  nop
                  andi         zero, a5, 604
                  slti         a1, s2, -385
                  beq          s7, t6, 38f
                  addi         s6, s2, 201
                  and          s7, t4, a0
38:               bge          t1, s9, 53f
39:               andi         s3, s1, -1664
40:               or           s2, a6, a7
                  sltiu        a1, t2, 309
                  xor          sp, t6, tp
43:               sll          s0, s11, a1
                  blt          a5, s7, 57f
45:               or           sp, s2, s1
                  bne          s5, gp, 47f
47:               ori          s11, a0, 1942
                  blt          s5, a3, 63f
                  andi         t6, a2, -153
                  bltu         t6, sp, 70f
                  bge          t1, a3, 54f
                  slti         a6, a3, -75
53:               beq          zero, t6, 63f
54:               bne          a6, s8, 60f
                  sll          a7, gp, s11
                  beq          a0, a4, 62f
57:               bge          s0, s1, 58f
58:               beq          a0, s0, 60f
                  andi         s5, s3, 1798
60:               srl          s11, zero, s5
                  slt          ra, s7, ra
62:               slli         a1, a1, 7
63:               or           t0, tp, s7
                  or           s8, a5, s10
                  add          s0, t6, a6
                  nop
                  bgeu         a4, s8, 83f
                  blt          t1, a6, 85f
                  andi         gp, a6, -944
70:               srli         s9, a1, 21
                  lui          s7, 897407
                  sub          t6, a1, t1
                  auipc        s2, 349932
                  sll          t1, s1, a1
                  sltu         s9, a5, s2
                  xori         s0, s3, -1912
                  srai         a7, s4, 17
                  bltu         sp, t0, 96f
                  bltu         s10, s7, 89f
                  ori          sp, s7, 1194
                  lui          t1, 215474
                  addi         a5, s9, 1671
83:               nop
                  addi         t4, t2, -684
85:               sub          tp, a0, s5
                  bne          a0, s11, 87f
87:               and          t4, a5, a6
                  auipc        gp, 438130
89:               sll          s5, s6, a5
                  xor          gp, a2, a2
                  bltu         t1, t1, 106f
                  beq          t6, a1, 108f
                  ori          s0, s8, 1091
                  sra          s8, s4, t5
                  or           s5, t4, a3
96:               sub          a4, a5, a1
                  andi         s5, s9, -428
                  srli         a1, s2, 31
                  or           s11, t0, s9
                  sra          s2, t2, t3
                  or           t4, s6, s6
                  or           a5, s3, t1
                  ori          sp, t6, -486
                  nop
                  ori          s7, gp, 1492
106:              add          tp, s7, a7
                  sub          s2, tp, s9
108:              or           s1, ra, s11
                  addi         t6, t0, 965
                  add          s9, s2, s6
                  sra          s1, a3, sp
                  sltiu        t6, t1, -852
                  nop
                  slli         s8, s11, 7
                  sltiu        ra, s7, 1552
                  sltu         s10, s0, s3
                  sltu         zero, s2, t5
                  andi         s1, a1, 556
                  bne          s5, a1, 138f
                  srai         tp, t1, 11
                  xor          a1, ra, t6
                  srl          t0, t4, s10
                  xor          ra, t4, sp
                  sltiu        a6, t1, 26
                  or           a7, gp, s7
                  slti         ra, s1, -128
                  ori          ra, zero, -1304
                  sra          s6, a0, zero
                  bltu         t3, s6, 148f
                  auipc        a5, 1005610
                  sra          a5, t0, s7
                  sll          s10, s5, gp
                  xori         s8, s8, -1061
                  ori          tp, a5, 1077
                  sltiu        ra, gp, -491
                  andi         s5, a0, -1802
                  bltu         a5, a2, 143f
138:              srli         a3, s11, 10
                  and          s11, s5, s2
                  bge          s3, t0, 153f
                  bne          a7, a3, 158f
                  and          s4, t3, t6
143:              sra          a0, s0, s0
                  and          a5, gp, t0
                  blt          a3, s11, 160f
                  bltu         s6, a1, 156f
                  or           s6, gp, sp
148:              blt          s10, t6, 161f
                  xor          s8, a4, s8
                  andi         s8, s3, 696
                  sub          a7, s4, ra
                  bne          s8, a1, 168f
153:              add          s2, zero, tp
                  sra          a0, t5, a0
                  blt          a7, a5, 158f
156:              ori          s3, s6, -849
                  auipc        tp, 767226
158:              or           s7, a4, s3
                  slti         t4, s5, 1261
160:              xor          t0, s4, a6
161:              xori         a0, t2, -678
                  add          s6, a3, s3
                  or           a0, a6, a2
                  sltu         s6, a2, s1
                  addi         s5, a2, -1593
                  srl          t0, s9, t4
                  ori          sp, a3, 1031
168:              blt          s10, a3, 181f
                  nop
                  bgeu         a1, t4, 189f
                  bgeu         s3, t0, 186f
                  beq          s6, tp, 182f
                  sub          s0, s4, tp
                  bgeu         a6, s6, 175f
175:              bne          a4, s2, 190f
                  sll          a6, s1, s1
                  beq          sp, s8, 194f
                  auipc        ra, 872830
                  slt          s10, t2, t4
                  nop
181:              lui          a0, 652136
182:              addi         s8, a0, -1926
                  bltu         t4, s4, 203f
                  sltu         s11, gp, t3
                  auipc        s5, 548597
186:              sll          t2, zero, a1
                  sub          s6, t0, s5
                  sltiu        s8, a6, -735
189:              bgeu         t6, t6, 195f
190:              xor          s11, a4, t6
                  srl          ra, t2, a0
                  lui          t1, 494767
                  bne          s1, a2, 210f
194:              xor          a1, t5, s9
195:              or           a3, s5, s1
                  addi         a5, t1, 1002
                  blt          a3, zero, 215f
                  xori         gp, a0, -736
                  bne          t0, ra, 200f
200:              sltiu        s4, s7, -2020
                  bne          s6, t1, 218f
                  beq          s2, t4, 222f
203:              and          a3, a2, a7
                  slt          t2, zero, a7
                  or           s5, t3, gp
                  sll          s2, s6, t0
                  blt          s9, s7, 220f
                  or           t6, s3, s9
                  nop
210:              sltu         t1, s2, t2
                  srai         s2, s1, 9
                  sub          ra, s8, a4
                  blt          t0, zero, 228f
                  bge          s1, t5, 233f
215:              sra          t1, s9, t5
                  bgeu         s10, ra, 229f
                  slt          a7, a7, a2
218:              and          s6, s10, s7
                  srl          s8, a4, s2
220:              sub          s4, a3, a0
                  lui          s6, 24417
222:              slt          tp, a7, s2
                  srli         a6, s9, 22
                  xor          sp, s9, s3
                  sra          s5, sp, a0
                  and          s0, a1, s5
                  xor          s4, t5, a5
228:              slt          s11, s9, a4
229:              and          s2, s9, s1
                  lui          a1, 824951
                  addi         t6, s11, 2028
                  auipc        s0, 862737
233:              addi         ra, t6, -224
                  or           s7, a3, s4
                  sll          a5, tp, a1
                  sltiu        ra, ra, -1123
                  bge          t6, ra, 238f
238:              addi         s2, s6, 421
                  bgeu         t6, s6, 255f
                  lui          a5, 813235
                  auipc        t6, 813485
                  lui          s6, 140003
                  srl          a5, gp, t1
                  beq          s11, s0, 259f
                  sub          s1, sp, s11
                  nop
                  srl          s8, t0, s8
                  sra          s1, t2, gp
                  andi         t0, t2, -897
                  srl          s8, s4, t5
                  or           s11, a1, t1
                  xor          s8, t0, s6
                  slli         s1, a0, 15
                  nop
255:              srli         s5, t2, 21
                  sll          t4, s5, s8
                  addi         s9, s8, 992
                  sub          s10, s10, a2
259:              slli         s5, a0, 29
                  xori         a6, t0, -1369
                  addi         s7, a3, 126
                  or           sp, t4, t3
                  lui          a1, 242818
                  andi         tp, t4, -726
                  bgeu         s0, t1, 268f
                  blt          t1, s3, 268f
                  auipc        a3, 22737
268:              add          ra, t3, sp
                  bne          a1, a6, 275f
                  srai         t4, a1, 30
                  srai         a1, a1, 11
                  slli         a1, t5, 4
                  bgeu         t3, s11, 279f
                  srai         tp, s5, 4
275:              sra          zero, s2, a4
                  bgeu         s8, t2, 293f
                  srl          tp, t5, s10
                  slti         a3, s9, -206
279:              bne          s8, a6, 292f
                  and          s5, a7, zero
                  slti         a7, sp, -1376
                  srai         a1, a4, 2
                  sra          s9, t1, t0
                  nop
                  slti         ra, tp, -870
                  add          sp, s4, t0
                  sltiu        tp, t2, -434
                  add          a0, a7, t1
                  bltu         s1, s9, 306f
                  or           s6, s9, s5
                  xori         s8, t1, -1599
292:              beq          a0, a2, 307f
293:              bge          a5, s9, 309f
                  andi         zero, s9, 649
                  ori          s5, s7, -1668
                  or           s11, s4, s7
                  slli         s8, s8, 22
                  or           s11, a7, t1
                  bgeu         gp, a7, 315f
                  sltiu        s3, s8, -986
                  ori          a3, t4, -953
                  or           s7, a4, a6
                  bge          s1, t3, 318f
                  bgeu         a7, gp, 317f
                  slli         s5, a1, 15
306:              sll          gp, t0, t0
307:              ori          t2, gp, 81
                  andi         a3, a7, 1185
309:              srl          zero, t2, a4
                  bne          s3, t2, 316f
                  bne          s6, a2, 317f
                  slli         sp, s10, 22
                  srl          t6, ra, s6
                  slt          s1, a4, a4
315:              and          t0, s8, s0
316:              lui          t6, 459049
317:              sltiu        t6, a1, -1335
318:              lui          s6, 465674
                  sub          tp, a7, a4
                  beq          a0, a3, 330f
                  ori          s5, a6, 1468
                  nop
                  bltu         s11, a7, 326f
                  bgeu         tp, s4, 341f
                  bltu         a7, s2, 331f
326:              sub          s9, a3, t3
                  bgeu         a5, zero, 340f
                  srai         a1, a7, 23
                  blt          s7, s11, 346f
330:              or           s5, a3, t0
331:              andi         s2, s11, -561
                  andi         t0, s3, 1161
                  blt          t2, s10, 346f
                  slti         tp, a6, 1018
                  srli         a3, s0, 13
                  addi         zero, s4, -1909
                  srli         t0, ra, 23
                  andi         s1, s5, 1856
                  sll          ra, s6, zero
340:              srli         tp, s9, 18
341:              sll          t1, s11, a2
                  sll          a5, a2, t0
                  and          s5, a3, s6
                  blt          tp, a5, 347f
                  slli         s0, s4, 27
346:              sub          a6, s5, s1
347:              and          s1, t1, ra
                  sll          s4, a2, tp
                  sltiu        t2, t0, -449
                  xori         sp, a6, -1141
                  and          s2, a1, t3
                  slli         t2, a4, 21
                  ori          sp, s10, -1022
                  blt          t5, a2, 372f
                  xori         s1, t1, 1822
                  slt          a6, s0, gp
                  or           s5, s11, s7
                  sub          t2, a1, a5
                  slt          sp, t1, tp
                  blt          t3, ra, 375f
                  bltu         s7, sp, 380f
                  sra          gp, s6, t0
                  sltiu        s3, a3, -122
                  and          s11, a6, a2
                  xor          s4, t0, s10
                  blt          t6, t6, 383f
                  addi         a4, t3, -1793
                  addi         ra, t4, -707
                  nop
                  srli         s7, t1, 30
                  beq          s1, a0, 372f
372:              andi         s0, a4, -1125
                  add          s1, t5, sp
                  bltu         ra, t0, 394f
375:              bne          a4, t5, 394f
                  add          t0, s8, s8
                  bne          s4, tp, 392f
                  sll          a1, t2, s10
                  and          s0, sp, s5
380:              srli         a6, s8, 0
                  blt          t5, a1, 382f
382:              lui          t0, 856217
383:              andi         s8, zero, -710
                  xori         a0, a7, -1827
                  andi         t1, tp, 1824
                  auipc        s10, 102818
                  slli         s0, a5, 4
                  blt          s0, s4, 390f
                  lui          gp, 323525
390:              bgeu         t0, s2, 410f
                  auipc        s1, 726451
392:              sltiu        s1, a3, -789
                  xor          s7, s6, a3
394:              slli         s6, s9, 18
                  srli         a6, t6, 30
                  bne          a7, a2, 406f
                  sra          t0, s11, s1
                  nop
                  xori         a7, t6, 40
                  srli         t6, s5, 30
                  slli         a6, a0, 21
                  bne          a5, s5, 403f
403:              addi         s3, a5, -737
                  beq          a6, t0, 414f
                  sub          s8, t0, t5
406:              srli         a3, a1, 5
                  addi         t0, sp, 279
                  andi         gp, a2, -2017
                  auipc        t4, 1018986
410:              slt          s9, a1, s5
                  xori         gp, s9, 1015
                  or           s11, t2, s3
                  or           s10, a5, s9
414:              sub          t6, s11, s4
                  sra          t1, t5, a1
                  slti         s3, gp, 1577
                  bge          t4, s0, 418f
418:              sll          t2, a5, s7
                  xor          s3, a1, a4
                  sub          s5, s7, s6
                  sltiu        s10, s7, -1592
                  and          a0, a4, a6
                  blt          s5, s1, 438f
                  bltu         s9, s7, 426f
                  nop
426:              srai         a6, t1, 30
                  slt          s2, t5, s5
                  beq          s3, a3, 441f
                  add          gp, t2, s3
                  auipc        a4, 17522
                  srli         tp, t4, 6
                  srai         s4, a0, 10
                  xori         s8, s4, -901
                  andi         t6, s1, -464
                  slt          s6, a6, s5
                  bge          s7, sp, 439f
                  addi         a6, t0, 83
438:              blt          s9, s7, 451f
439:              srl          gp, a0, s2
                  slt          tp, a3, a1
441:              and          t1, a7, gp
                  sra          s5, a6, a5
                  xor          tp, ra, t0
                  auipc        zero, 615731
                  ori          sp, s5, -1971
                  sra          s0, a5, s10
                  slti         a4, s6, 377
                  nop
                  sltiu        s10, gp, 1405
                  xori         sp, s4, 1155
451:              bgeu         s7, s4, 464f
                  sub          s0, s6, s2
                  sltiu        s4, s10, 1778
                  lui          a4, 53650
                  slt          zero, t0, t6
                  sub          a7, s3, a5
                  slti         a7, t3, 401
                  ori          s7, t3, 339
                  sltu         sp, s9, t2
                  nop
                  srai         a1, s4, 26
                  ori          t4, a6, 1162
                  or           s6, t5, tp
464:              xori         s3, s1, 1826
                  sll          s0, s1, a5
                  xori         s3, t4, 505
                  lui          a0, 956231
                  ori          a5, s0, -934
                  slti         t6, gp, -297
                  auipc        s5, 434666
                  sltiu        s5, s2, 1187
                  srli         t1, s3, 31
                  addi         a4, t6, 472
                  bgeu         a6, s10, 493f
                  sltiu        t1, a0, -1638
                  srai         a5, gp, 28
                  and          s4, t4, t0
                  bgeu         zero, t3, 497f
                  sltu         gp, a6, s10
                  sub          t1, zero, t5
                  ori          s4, s11, 237
                  slt          a3, s7, a1
                  bge          s4, tp, 484f
484:              blt          a0, a7, 494f
                  addi         t2, a5, -1375
                  nop
                  slti         s8, a4, -31
                  nop
                  slli         gp, s10, 6
                  sltiu        s8, s6, -71
                  add          a1, a4, a5
                  beq          gp, a5, 512f
493:              addi         sp, a3, -2045
494:              sltu         t0, tp, a7
                  and          t2, s2, a5
                  slli         a6, s3, 7
497:              nop
                  addi         s1, t2, -112
                  andi         zero, a4, 1686
                  sra          t6, t0, sp
                  nop
                  bne          t2, a4, 519f
                  bge          a1, a3, 504f
504:              sll          s10, a7, tp
                  bgeu         a0, s5, 518f
                  addi         gp, a4, -1803
                  slli         a3, s10, 1
                  or           s7, t1, tp
                  bne          s6, a5, 524f
                  nop
                  beq          zero, a7, 528f
512:              lui          zero, 244168
                  sra          t6, a5, s1
                  add          a7, sp, t4
                  sub          s1, a1, s5
                  sub          a7, s2, a0
                  sll          s1, a7, t6
518:              sll          s3, a2, t1
519:              andi         a6, sp, -1249
                  and          ra, s1, s3
                  add          a3, sp, s8
                  sub          ra, s2, tp
                  sltu         s7, s2, tp
524:              andi         t1, a2, 334
                  xori         gp, s3, -1989
                  srli         t6, t4, 2
                  or           a5, a4, t0
528:              sra          s1, t1, a4
                  bltu         t5, s7, 535f
                  bge          t1, tp, 547f
                  beq          a3, t1, 547f
                  add          s8, s6, a6
                  srli         a6, ra, 30
                  sra          zero, s11, a2
535:              slli         t6, s2, 6
                  sll          t6, t0, a7
                  ori          s7, gp, -1291
                  sub          t4, gp, a6
                  lui          s6, 187413
                  andi         a7, tp, 525
                  slli         t4, a7, 25
                  sltu         t0, gp, s2
                  srai         a6, t5, 23
                  sll          s6, s5, s8
                  slt          a5, s10, t0
                  slt          s7, s0, s1
547:              sub          t2, zero, a1
                  ori          a5, sp, -1242
                  sltu         s11, zero, a1
                  srl          s7, ra, t6
                  sltu         s2, t3, s8
                  xori         s9, s0, -31
                  sll          t2, a7, a3
                  xori         s4, a5, -1563
                  slli         s5, t0, 30
                  beq          s3, a2, 562f
                  sll          tp, ra, s6
                  lui          t1, 942310
                  slti         a1, tp, 889
                  or           a0, t3, tp
                  sub          sp, a0, a2
562:              add          s8, a5, s5
                  blt          s2, a1, 578f
                  slti         s7, a7, -1801
                  or           a4, t3, t0
                  sll          s5, tp, t5
                  sltu         a0, s1, s5
                  srli         s8, zero, 13
                  slli         tp, s8, 15
                  sub          t4, a7, s5
                  addi         t2, a5, 870
                  sltu         s10, t0, a1
                  auipc        t1, 646151
                  xori         gp, s7, -655
                  blt          a4, s6, 578f
                  auipc        s1, 499061
                  auipc        ra, 581829
578:              beq          sp, gp, 593f
                  sra          ra, t0, sp
                  bltu         s3, s11, 600f
                  slti         t2, s8, 1275
                  add          s11, t2, zero
                  beq          s4, t4, 589f
                  and          t4, t6, gp
                  srai         t6, s2, 30
                  nop
                  slti         a1, s11, 1086
                  sra          a1, a4, s11
589:              slli         s0, gp, 6
                  sltiu        a5, a3, -1030
                  srli         s10, t6, 17
                  srl          s6, s8, ra
593:              bltu         s9, ra, 609f
                  bne          s11, t0, 611f
                  nop
                  auipc        t1, 617364
                  addi         a4, ra, -1270
                  blt          a3, sp, 616f
                  sll          t1, t0, s7
600:              srl          zero, zero, a5
                  auipc        a5, 477291
                  nop
                  sltiu        sp, a0, -1020
                  bgeu         s1, t6, 610f
                  sub          a3, s2, s9
                  srl          s11, s9, s7
                  xor          s3, s8, a6
                  sll          s3, sp, a6
609:              auipc        s6, 1038765
610:              srl          a1, s1, t2
611:              xor          a6, s9, s3
                  slti         s1, a0, -845
                  srli         t0, s10, 25
                  sub          s7, a1, tp
                  blt          s4, a7, 630f
616:              bge          a0, t0, 617f
617:              or           zero, gp, s7
                  xor          a0, a2, t0
                  slti         s2, s0, -1029
                  sltu         s6, s5, s0
                  srai         s6, t0, 16
                  bge          s3, ra, 639f
                  slli         a5, s8, 17
                  xori         s7, t3, 504
                  andi         s5, a5, 167
                  xor          s5, a3, s11
                  nop
                  and          s6, a5, s9
                  sra          tp, a5, a1
630:              bltu         a7, ra, 643f
                  beq          a0, t1, 645f
                  xori         ra, s5, 539
                  sltiu        a7, s0, -1379
                  beq          a1, s3, 645f
                  bgeu         s2, t0, 645f
                  srl          s7, t6, s5
                  nop
                  xori         s5, s9, -744
639:              add          a1, s5, s2
                  xor          a0, a1, a7
                  sub          a3, t3, s4
                  blt          zero, t6, 644f
643:              nop
644:              andi         sp, zero, -3
645:              and          t0, s4, t1
                  lw           t1, 4(t5)
                  lui          a0, 1038415
                  slt          a5, s2, a6
                  add          a0, a2, s10
                  slli         ra, t5, 17
                  addi         t5, t5, 56
                  sra          s5, t1, s0
861:              addi x16, x6, 0
861:              jalr x16, x16, 0
sub_9:            sltu         s8, s1, s7
                  auipc        a7, 791088
                  addi         t5, t5, -64
                  or           s7, a3, t3
                  ori          a7, t3, -722
                  sll          s11, t1, s5
                  sw           t1, 4(t5)
                  lui          s1, 1034113
                  sltiu        s4, t3, -1514
                  srl          s11, s7, tp
                  la           sp, region_0+1715 #start riscv_load_store_rand_instr_stream_0
                  lb           s3, -10(sp)
                  lb           t6, 112(sp)
                  lbu          a4, 229(sp)
                  srli         ra, sp, 19
                  sh           s3, -35(sp)
                  lbu          s7, -57(sp)
                  slli         a5, s11, 16
                  sb           s8, -177(sp)
                  srai         a0, s0, 25
                  sra          tp, gp, t3
                  xor          s10, s5, t0
                  lbu          t1, -21(sp)
                  lui          s7, 4942
                  slti         t0, a1, 894
                  lbu          a6, -202(sp)
                  sb           tp, -94(sp)
                  lbu          s5, 223(sp)
                  lb           s10, -222(sp)
                  xori         a4, a5, 831
                  slti         s6, s0, 1292
                  lhu          s5, 173(sp)
                  sub          t6, s1, a5
                  lui          s5, 1025789
                  lb           tp, -243(sp)
                  sb           t3, 76(sp)
                  srai         t2, t3, 14
                  sb           zero, -242(sp)
                  and          s8, s5, a4
                  lbu          s10, 168(sp)
                  slli         a5, gp, 25
                  sb           a0, 144(sp)
                  lui          s0, 821467
                  srl          a0, a5, t4
                  lhu          s3, 227(sp)
                  sll          tp, a4, t5
                  sltu         a6, a0, t3
                  lw           s8, -251(sp)
                  xori         t6, s11, 401
                  andi         a4, sp, -625
                  and          s5, s6, a1
                  lbu          s1, -9(sp)
                  sb           gp, 106(sp)
                  srli         a7, a0, 13
                  lb           t1, 80(sp)
                  lbu          s5, 160(sp)
                  lbu          gp, 169(sp)
                  srli         s8, t6, 18
                  andi         zero, s7, 2037
                  sb           ra, 244(sp)
                  ori          a1, ra, 476
                  srai         t0, s11, 17
                  lb           s11, 156(sp)
                  srli         zero, a7, 25
                  xor          a3, s10, s6
                  and          a3, s5, s5
                  sb           a2, 25(sp)
                  sb           a3, -70(sp)
                  sb           a1, 231(sp) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+543 #start riscv_load_store_rand_instr_stream_1
                  srl          s10, t2, tp
                  or           s5, a6, s1
                  nop
                  lb           s11, -212(sp)
                  lb           s7, 106(sp)
                  sw           t3, 197(sp)
                  andi         a5, s8, -217
                  sll          s7, a5, s2
                  and          s4, s9, a1
                  add          t0, t3, t2
                  sll          t2, s11, t4
                  srli         t6, a4, 21
                  and          s10, s5, a0
                  lb           s0, 66(sp)
                  lb           tp, 182(sp)
                  lb           tp, -58(sp)
                  slt          s7, s6, t4
                  lbu          tp, -97(sp)
                  auipc        s0, 779400
                  sltiu        t6, s10, -1014
                  sltiu        t4, a7, 306
                  auipc        s1, 621241
                  lbu          s10, 120(sp)
                  nop
                  lb           a3, 127(sp)
                  sltu         t0, t6, a3
                  sll          t6, s3, a6
                  add          s10, tp, a7
                  nop
                  auipc        t2, 641616
                  lui          s10, 443663
                  lh           a4, 167(sp)
                  nop
                  slt          a4, a5, zero
                  andi         s11, s8, -879
                  slt          zero, t0, ra
                  or           a5, s9, gp
                  slti         t1, s10, -1891
                  lbu          a7, -72(sp) #end riscv_load_store_rand_instr_stream_1
                  srl          a6, tp, s0
                  sltu         t2, s3, t1
                  sltiu        ra, s1, -1043
                  sub          tp, s6, s7
                  srai         s8, s11, 18
                  and          sp, s5, gp
                  lui          t2, 29984
                  srli         s4, a5, 3
                  sub          s6, a4, s4
                  nop
                  and          a0, s9, s4
                  xor          tp, s2, t3
                  bne          t1, s11, 15f
                  srai         s5, a7, 17
                  bne          tp, t4, 17f
15:               ori          t0, a0, 1589
                  add          a0, a5, t3
17:               add          a3, s10, s5
                  sltiu        s10, t1, 22
                  bge          a1, s11, 39f
                  xori         a6, sp, -1416
                  srai         s6, s2, 29
                  bne          a3, t4, 38f
                  beq          s7, a7, 38f
                  slti         sp, t4, 1816
                  add          zero, t1, gp
                  addi         s1, tp, -1927
                  sll          a5, a7, a6
                  add          s8, tp, a0
                  slt          sp, s9, a0
                  srl          a0, t1, s9
                  or           ra, a6, s8
                  andi         a3, s6, 191
                  xori         s3, a3, 167
                  addi         s5, gp, 1115
                  xor          gp, s7, t6
                  nop
                  sll          a1, s3, a7
38:               add          gp, s10, t0
39:               addi         s2, t1, 746
                  lui          t4, 875601
                  srl          s2, t5, t2
                  srl          t6, a6, ra
                  addi         t1, ra, 118
                  slli         s5, t5, 1
                  bne          s0, s10, 46f
46:               andi         s0, tp, -1714
                  addi         a0, t3, 1527
                  auipc        a0, 404224
                  slt          s11, t3, t0
                  sub          s3, gp, a4
                  bge          t3, s3, 69f
                  xori         zero, a6, -675
                  srai         t6, s6, 29
                  ori          a1, s1, 1034
                  sub          a4, t3, s5
                  nop
                  sltiu        a4, sp, 1439
                  srl          zero, s2, t0
                  sltu         sp, zero, a3
                  bltu         s0, s11, 70f
                  andi         s10, a4, 1998
                  xor          ra, a0, t4
                  slt          s6, t2, t4
                  srl          a7, t4, a7
                  ori          s8, s4, 1339
                  bne          s8, s9, 86f
                  xori         s3, a2, 1175
                  sub          s0, a0, a6
69:               slti         t6, s3, 1894
70:               bne          ra, s0, 77f
                  add          tp, s9, s10
                  sll          s5, tp, ra
                  bltu         t6, a6, 76f
                  slti         t4, s4, 1766
                  sltu         s1, a0, a3
76:               or           zero, t4, a4
77:               and          zero, s2, s9
                  sub          a1, t2, zero
                  sub          a4, s11, tp
                  sltu         s4, gp, zero
                  beq          s5, a6, 99f
                  srli         t4, t3, 20
                  sll          ra, sp, s6
                  beq          s6, a6, 85f
85:               slt          a5, t6, s11
86:               bne          s2, s8, 90f
                  sra          a3, tp, s8
                  sra          zero, tp, s0
                  lui          s7, 957549
90:               auipc        s11, 26999
                  auipc        s3, 781110
                  xori         s0, s9, -992
                  srli         s9, s9, 14
                  and          s2, t3, t4
                  srai         tp, a7, 22
                  xori         a5, a5, -103
                  sub          a3, s6, gp
                  srai         s5, t5, 13
99:               lui          s2, 778728
                  xor          gp, a6, s0
                  xor          s3, s11, a3
                  addi         a5, t1, -1931
                  srai         s5, t3, 17
                  srli         a7, s1, 2
                  sltu         gp, a1, t6
                  andi         s1, a0, -1789
                  beq          s5, a4, 122f
                  sub          a5, t6, sp
                  slli         a3, s10, 3
                  sub          s4, t0, s0
                  beq          s7, t4, 130f
                  sub          s4, s11, t4
                  srl          zero, s10, a7
                  nop
                  xori         s6, sp, -1629
                  blt          t2, a7, 120f
                  srl          a3, s10, s5
                  srl          a0, gp, a2
                  sltiu        s3, t4, -1480
120:              sltu         t0, s3, ra
                  blt          a2, s7, 124f
122:              and          s0, s1, s4
                  add          a4, a3, a2
124:              sub          sp, a6, s11
                  slli         zero, s3, 14
                  slt          t1, s0, a6
                  or           t6, s9, t3
                  bge          zero, gp, 133f
                  slli         s8, t4, 12
130:              lui          s8, 795601
                  bltu         s8, s5, 137f
                  sra          t4, sp, t3
133:              and          t0, a0, zero
                  srai         t6, s0, 21
                  addi         t6, t5, -56
                  or           s1, ra, t3
137:              ori          s5, s6, 1174
                  or           a5, s8, t0
                  nop
                  xori         s9, s6, -265
                  slti         s6, a0, 829
                  beq          s1, a1, 159f
                  auipc        gp, 406390
                  xori         t0, t5, -1854
                  bne          t0, tp, 165f
                  xor          a5, s1, a7
                  auipc        tp, 251943
                  beq          a3, s0, 163f
                  bgeu         a5, s11, 159f
                  blt          a0, a1, 165f
                  slt          s2, s0, gp
                  xori         s1, s9, -792
                  slti         s3, a1, -706
                  lui          t2, 389586
                  ori          gp, t0, -819
                  xori         s9, s8, -448
                  bgeu         s8, gp, 162f
                  add          sp, s10, t1
159:              bne          t2, a0, 161f
                  sltu         s11, s9, s8
161:              sra          s6, s7, gp
162:              lui          a3, 35819
163:              addi         s11, a6, 197
                  srli         ra, gp, 7
165:              srli         tp, tp, 7
                  sub          t1, ra, s10
                  sra          s0, zero, a0
                  slli         s7, a1, 31
                  srli         a6, a4, 4
                  auipc        s10, 361447
                  bne          t5, gp, 181f
                  sltiu        s2, a3, -849
                  ori          s1, s4, 1774
                  srli         s2, s3, 24
                  slt          s5, s3, a0
                  auipc        a1, 632215
                  sra          zero, a4, t3
                  or           s10, s0, a1
                  sltiu        t1, t5, -543
                  beq          t5, a6, 197f
181:              bge          s0, a0, 197f
                  ori          a0, gp, 1970
                  srai         s1, t3, 7
                  bltu         a5, t6, 186f
                  sltu         t0, a5, a4
186:              bge          a6, s2, 204f
                  nop
                  beq          s8, t1, 205f
                  bge          a7, a4, 208f
                  beq          t4, ra, 206f
                  slli         s2, sp, 25
                  xor          zero, t1, t3
                  sltu         a6, gp, a0
                  xor          s11, s0, t4
                  bne          s9, a6, 201f
                  bne          tp, ra, 197f
197:              xori         gp, ra, -1693
                  andi         t0, s2, -1865
                  bge          s0, t6, 209f
                  srai         s5, a5, 1
201:              srl          a1, zero, s3
                  lui          s5, 148461
                  add          s6, s10, t4
204:              sll          t6, a0, s4
205:              blt          s0, a7, 220f
206:              srai         s3, sp, 22
                  addi         s1, s3, 1460
208:              sll          s4, a7, tp
209:              bne          t1, a5, 212f
                  nop
                  nop
212:              bltu         s8, t5, 215f
                  addi         a4, s1, 499
                  srli         t6, a7, 13
215:              sltu         a6, s3, t2
                  addi         s8, sp, 654
                  bltu         ra, tp, 237f
                  sub          t4, t4, a0
                  andi         sp, s0, 529
220:              beq          a1, a1, 224f
                  bge          a2, sp, 241f
                  srli         s3, a3, 14
                  sll          s9, zero, a0
224:              xor          a5, s3, s7
                  addi         s0, zero, -370
                  sltiu        s3, s1, 1169
                  lui          s2, 198214
                  bge          t6, ra, 246f
                  or           s6, sp, s1
                  sll          t2, t2, a0
                  ori          s8, s9, 41
                  srai         a1, s5, 6
                  lui          t4, 163479
                  nop
                  sub          a4, s7, s3
                  sub          s8, a5, s7
237:              and          s10, s7, a4
                  bge          s8, s11, 253f
                  ori          sp, s5, -1631
                  srli         a1, s1, 9
241:              sltu         a1, t5, s7
                  addi         t6, s1, 1112
                  bltu         t2, s10, 246f
                  nop
                  lui          s5, 361634
246:              bge          t0, s0, 247f
247:              beq          zero, a4, 251f
                  slti         t6, tp, -281
                  slti         t0, s6, 167
                  slti         s10, s3, -684
251:              ori          gp, s1, 561
                  nop
253:              slti         zero, a1, 646
                  auipc        s7, 423245
                  sub          s0, gp, s5
                  add          t4, s9, t5
                  srli         t2, a3, 28
                  bge          a5, t3, 261f
                  bge          a4, s11, 269f
                  bge          a6, sp, 267f
261:              sra          a1, t4, sp
                  lui          s1, 833721
                  xor          s4, a2, a4
                  slt          s2, t6, s6
                  andi         a6, s1, -1123
                  and          a6, a2, s7
267:              sub          t6, s10, tp
                  beq          s6, a6, 278f
269:              slti         a4, a6, 1020
                  bgeu         t2, a1, 284f
                  srli         a5, s11, 8
                  sltu         a6, t0, s3
                  xori         s2, s1, -1993
                  lui          s11, 300745
                  sra          t6, s11, s3
                  sll          s11, s5, s6
                  srai         s7, s2, 7
278:              ori          a4, a3, -1224
                  ori          a4, t4, 812
                  slli         tp, t3, 18
                  sub          s2, t5, gp
                  sra          a1, s9, a3
                  and          zero, t2, s10
284:              srl          a0, s5, s9
                  add          t4, s7, t2
                  srai         tp, tp, 9
                  lw           t1, 4(t5)
                  andi         a0, t4, 1388
                  addi         t5, t5, 64
                  sltu         sp, s2, a1
                  ori          t6, s8, 995
                  slli         t6, s8, 25
                  xori         gp, ra, -150
                  xor          s8, a0, a4
                  or           a5, a2, s4
                  sub          s9, s1, s2
406:              addi x26, x6, 1
406:              jalr x26, x26, 0
sub_4:            addi         t5, t5, -36
                  nop
                  sub          s11, t4, a7
                  or           s11, a4, a3
                  lui          s11, 1010373
                  ori          s8, a0, -1960
                  sw           t1, 4(t5)
                  slti         s8, s5, 980
                  srli         s5, a2, 15
                  sltiu        t4, s1, -1921
                  or           ra, t1, sp
                  la           a5, sub_5
                  ori          a3, s3, -249
                  nop
                  addi         a5, a5, -198
                  add          s4, t3, t4
                  slli         sp, t4, 16
                  addi         a6, s11, 1130
                  slli         s9, s10, 7
                  addi         sp, t0, -32
                  beq          s2, zero, sub_4_j7 #branch to jump instr
                  slti         s3, s7, 944
sub_4_j7:         jalr         t1, a5, 199 #jump sub_4 -> sub_5
                  la           sp, region_1+631 #start riscv_load_store_rand_instr_stream_2
                  lbu          a6, -29(sp)
                  lui          s6, 939278
                  auipc        t0, 56979
                  lb           s11, 26(sp)
                  lbu          s0, -18(sp)
                  lh           a6, 35(sp)
                  lb           a5, -53(sp)
                  or           s2, a2, s11
                  sb           a5, 32(sp)
                  sub          gp, t3, a1
                  lbu          s10, 41(sp)
                  lbu          gp, -8(sp)
                  slli         gp, t1, 18
                  xor          s9, s2, s5
                  lh           a0, 63(sp)
                  srli         a5, s1, 18
                  sltiu        s3, t2, 623
                  lbu          a6, 58(sp)
                  sltu         a5, s5, s10
                  lbu          zero, 9(sp)
                  addi         a0, s10, 1514
                  srl          t2, t3, t6
                  sh           tp, 53(sp) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+116 #start riscv_load_store_rand_instr_stream_6
                  srai         t1, s1, 28
                  lbu          s9, 3(sp)
                  sb           a1, -5(sp)
                  xori         t6, a1, 1528
                  lhu          a0, -16(sp)
                  srl          s11, a3, s4
                  sw           t4, 0(sp)
                  and          s6, a4, s4
                  srli         s11, a2, 0
                  lbu          gp, 3(sp)
                  srl          t6, sp, s0
                  lb           a4, 16(sp)
                  lui          a1, 210215
                  lbu          a7, 16(sp)
                  sh           t1, 8(sp)
                  sltiu        s1, t3, -1913
                  sh           s10, 10(sp)
                  lh           s0, -16(sp)
                  lbu          s2, 9(sp)
                  xori         s2, s7, 160
                  lb           s2, -11(sp)
                  sub          s5, t0, a0
                  lh           s6, -4(sp)
                  auipc        ra, 983484
                  sltu         a5, tp, zero
                  lbu          s3, -10(sp)
                  andi         a1, t3, 916
                  lbu          t6, -12(sp)
                  lb           ra, -7(sp)
                  sub          s7, t0, s1
                  lbu          s8, 10(sp)
                  lb           t4, 7(sp)
                  srai         gp, s0, 30
                  lh           t0, 14(sp)
                  lbu          s6, 7(sp)
                  sh           s4, -4(sp)
                  lb           s3, 11(sp)
                  lbu          s9, -3(sp)
                  lbu          s2, -9(sp)
                  lbu          s7, -13(sp)
                  sltiu        s5, a0, -834
                  lb           a0, -1(sp) #end riscv_load_store_rand_instr_stream_6
                  la           a6, region_0+316 #start riscv_load_store_rand_instr_stream_3
                  sb           t0, -37(a6)
                  sb           s10, 63(a6)
                  lb           a7, 47(a6)
                  xori         t2, t1, 660
                  xor          s2, a1, s7
                  auipc        s8, 824721
                  sub          tp, a1, s0
                  sh           a5, -16(a6)
                  addi         t4, s8, 270
                  srai         t4, sp, 5
                  lb           s2, 2(a6)
                  lbu          sp, 54(a6)
                  nop
                  srai         s10, s4, 10
                  lb           s7, -44(a6)
                  lbu          a1, 2(a6)
                  slti         t0, t0, 536
                  lh           t6, 58(a6)
                  lb           ra, 29(a6)
                  lui          t0, 305121
                  andi         zero, s3, -86
                  sh           t6, 6(a6)
                  lb           s5, 1(a6)
                  lbu          s8, -43(a6)
                  sb           t0, -6(a6)
                  lbu          gp, -19(a6)
                  sb           a5, -43(a6)
                  or           a1, s10, t3
                  sb           s1, 38(a6)
                  sb           s7, 7(a6)
                  and          s11, t4, ra
                  sltu         ra, a5, a3
                  or           t4, tp, a6
                  sh           a4, 14(a6)
                  sh           a0, 6(a6)
                  sb           t3, 31(a6)
                  sub          s2, s1, a2
                  auipc        s8, 812521
                  ori          s5, t4, -1151
                  lb           a1, 46(a6)
                  slli         a5, s1, 23
                  sb           s8, -29(a6)
                  lbu          t6, 41(a6)
                  slli         a4, a0, 3
                  lb           t2, 47(a6)
                  lbu          s2, -57(a6) #end riscv_load_store_rand_instr_stream_3
                  la           t4, region_0+1016 #start riscv_load_store_rand_instr_stream_5
                  lh           s7, -56(t4)
                  and          a0, ra, sp
                  sra          s10, s5, s2
                  xor          zero, s0, a7
                  and          tp, s9, zero
                  lui          a4, 1045327
                  sb           a3, 37(t4)
                  sb           zero, -55(t4)
                  slt          tp, gp, s4
                  srl          s5, s6, t6
                  sra          s7, t6, a2
                  lbu          ra, 5(t4)
                  lb           s6, -31(t4)
                  sb           s10, -48(t4)
                  lh           s8, -60(t4)
                  lhu          a6, -6(t4)
                  lb           a3, 11(t4)
                  lw           s10, 36(t4)
                  lb           a5, -35(t4)
                  srl          s6, s10, a6
                  lb           zero, 53(t4)
                  sb           a4, -25(t4)
                  lw           zero, 16(t4)
                  sll          a4, s0, s3
                  srai         t6, t4, 10
                  lhu          a7, 18(t4)
                  lb           a5, -5(t4)
                  sh           s11, -12(t4)
                  sltu         s6, s5, t2
                  sub          sp, s10, a2
                  lb           gp, -30(t4)
                  ori          s4, a1, -1327
                  or           s10, a0, ra
                  nop
                  sltiu        s1, s10, -232
                  sb           s0, -23(t4)
                  lbu          sp, 7(t4)
                  auipc        ra, 764667
                  lbu          sp, 30(t4)
                  lbu          a5, 5(t4)
                  ori          s11, s9, -1229
                  lb           s4, 21(t4)
                  sh           s6, 56(t4)
                  nop
                  lui          gp, 1031944
                  sb           s6, -14(t4)
                  lui          gp, 997333
                  lui          a1, 917455
                  sb           s3, -14(t4)
                  lh           t2, 54(t4) #end riscv_load_store_rand_instr_stream_5
                  la           s8, region_1+1271 #start riscv_load_store_rand_instr_stream_4
                  sw           s0, 657(s8)
                  or           s2, a2, a1
                  lb           t1, -974(s8)
                  xor          sp, s7, s5
                  lh           tp, -319(s8)
                  sb           s11, -837(s8)
                  lbu          s7, -686(s8)
                  add          s6, s10, s5
                  lbu          a4, 385(s8)
                  lb           tp, 156(s8)
                  ori          s11, s7, -836
                  sll          s5, tp, s7
                  sw           s4, -335(s8)
                  lh           t1, -809(s8)
                  or           s1, t6, ra
                  nop
                  srli         s1, t3, 10
                  lbu          t0, -999(s8)
                  and          ra, a7, s6
                  lbu          a1, -1096(s8)
                  lbu          a6, -160(s8)
                  lhu          a7, -37(s8)
                  sb           a3, -1188(s8)
                  lhu          tp, 171(s8)
                  lbu          s6, -1194(s8)
                  lb           a1, 507(s8)
                  slti         zero, tp, 722
                  lh           sp, -125(s8)
                  slti         t4, s4, 1732
                  sh           t4, -1075(s8)
                  lbu          a5, -1063(s8)
                  srl          s4, s5, s1
                  andi         sp, t2, -1552
                  sw           t0, -155(s8) #end riscv_load_store_rand_instr_stream_4
                  la           t0, region_1+1768 #start riscv_load_store_rand_instr_stream_0
                  sb           s5, 11(t0)
                  sltiu        s4, ra, 1241
                  lb           s7, 7(t0)
                  lb           a4, -5(t0)
                  lh           a6, 6(t0)
                  sb           s1, -12(t0)
                  srl          t2, t5, a3
                  nop
                  sra          t6, t5, t0
                  lb           a7, 15(t0)
                  slti         a6, t0, -1124
                  srli         s10, s11, 0
                  sll          s2, a5, a3
                  sb           s2, -15(t0)
                  lb           a7, 9(t0)
                  lui          sp, 803267
                  lui          s7, 696008
                  andi         s8, t3, -1477
                  lbu          s4, -15(t0)
                  sh           a3, 8(t0)
                  add          a7, t5, t2
                  lbu          s10, -11(t0)
                  slti         s11, s4, 1310
                  srli         t6, s6, 29
                  sh           t0, -10(t0)
                  lb           a1, -9(t0)
                  srli         s0, a4, 10
                  lb           s0, 5(t0)
                  nop
                  sh           a4, 2(t0)
                  addi         t4, s1, -1447
                  or           sp, s8, s9
                  ori          s8, t3, -2035
                  and          s4, gp, s1
                  or           zero, s7, s5
                  lbu          s7, 5(t0)
                  lb           t2, 3(t0)
                  lb           a0, -3(t0)
                  and          a5, t6, t3
                  lb           t1, 13(t0)
                  and          s0, a3, s0
                  lhu          sp, -6(t0)
                  auipc        ra, 359464
                  slti         s4, a2, 1710
                  and          s9, a1, s10
                  sb           a0, -3(t0)
                  sw           sp, 8(t0)
                  srai         a0, s5, 10
                  sh           t2, -14(t0)
                  lh           t2, -16(t0)
                  nop
                  xori         zero, s4, -1825
                  sh           a3, 2(t0) #end riscv_load_store_rand_instr_stream_0
                  xori         s2, a7, 1385
                  bgeu         a5, ra, 5f
                  slt          a3, s3, a2
                  srai         t0, a5, 1
                  ori          ra, sp, 1551
5:                xor          s1, a5, zero
                  srl          s6, s6, t4
                  bne          s8, a3, 11f
                  sra          s5, s5, s9
                  bge          sp, a7, 22f
                  and          s7, s8, sp
11:               andi         s3, t4, 1179
                  slli         s9, t6, 18
                  xor          ra, s10, s9
                  sll          t6, s11, ra
                  srli         s8, a6, 18
                  beq          s6, t4, 23f
                  sub          s6, t5, s11
                  slti         a3, t3, -1117
                  blt          s2, t4, 23f
                  bge          zero, s8, 33f
                  and          s11, t5, t6
22:               lui          s2, 333852
23:               andi         s9, s8, -1731
                  xor          s7, sp, a0
                  sub          t2, s2, s4
                  or           s8, s11, t5
                  slt          a7, s0, a0
                  lui          s2, 97082
                  nop
                  add          t4, s8, ra
                  addi         s10, a3, 587
                  lui          s3, 613642
33:               bgeu         sp, t4, 38f
                  slt          t2, gp, a3
                  blt          t5, s2, 40f
                  or           s2, s1, t1
                  nop
38:               auipc        s9, 3193
                  srli         s3, sp, 1
40:               and          s4, a6, s9
                  sltiu        s7, t4, 1970
                  andi         ra, a6, -796
                  or           t0, t5, s6
                  bne          a5, gp, 57f
                  bne          gp, a1, 50f
                  or           s11, t6, a7
                  and          zero, t0, a4
                  addi         s9, s6, -1089
                  bne          a6, t2, 55f
50:               and          s3, a1, t2
                  sltu         s7, a6, t5
                  srli         a0, a2, 2
                  bltu         t3, a1, 68f
                  sltiu        a4, s9, 1848
55:               sub          t4, t5, a5
                  blt          s8, s4, 66f
57:               xor          t0, a2, s4
                  sltiu        a3, a7, -1625
                  slt          t1, a3, zero
                  beq          a6, a6, 67f
                  lui          a5, 674390
                  srl          zero, s8, t4
                  ori          s7, s5, -2048
                  and          s3, a6, s8
                  xor          t1, zero, s11
66:               slli         s8, s10, 13
67:               lui          s6, 822798
68:               sltu         s5, s7, s7
                  sltu         s0, a3, ra
                  addi         a5, t3, 256
                  or           s11, s2, s7
                  andi         s4, s11, -1793
                  sltiu        s10, ra, -1215
                  blt          ra, t0, 91f
                  blt          s4, t1, 84f
                  sra          s0, sp, t5
                  slli         a7, a0, 29
                  beq          t6, s8, 89f
                  bgeu         a4, s4, 84f
                  xori         s5, s9, -1393
                  sra          s7, gp, tp
                  and          a7, a6, s2
                  xori         s9, s4, -1407
84:               add          t1, t0, s8
                  bgeu         t0, a4, 90f
                  lui          a6, 580529
                  sll          tp, a0, t4
                  srli         s2, s7, 16
89:               bgeu         a6, s5, 108f
90:               ori          s2, a6, 1071
91:               ori          s5, s2, -2005
                  xor          a0, t3, tp
                  nop
                  andi         a4, t0, 485
                  srai         s8, s0, 8
                  addi         s9, a2, -1127
                  sra          ra, a3, a6
                  ori          t0, s7, 1811
                  bne          zero, a6, 111f
                  xor          s9, s7, a2
                  sltu         s10, gp, a2
                  or           s6, a4, s4
                  xori         s1, t4, -1711
                  bgeu         s11, tp, 108f
                  bne          t6, a1, 123f
                  sltiu        sp, s6, 1658
                  sub          a7, a5, s11
108:              blt          s7, sp, 126f
                  and          s2, s4, t0
                  ori          a3, s5, 187
111:              beq          s7, s2, 114f
                  srli         s7, t0, 9
                  and          s8, s4, s7
114:              srl          a4, a2, s9
                  sltu         a1, a5, s5
                  bltu         s0, s7, 121f
                  slti         a1, a0, 307
                  add          t1, s2, s4
                  srli         s10, zero, 31
                  auipc        a7, 176596
121:              or           t2, t6, s5
                  nop
123:              sltiu        t6, s11, -305
                  andi         s7, tp, 976
                  xori         t4, s9, -953
126:              sltu         a5, a1, a1
                  addi         t2, t2, -1827
                  and          s11, s0, t5
                  sltiu        s5, a0, -1345
                  sra          t4, a6, a2
                  bgeu         t0, s7, 150f
                  andi         s5, zero, -1725
                  auipc        tp, 88751
                  nop
                  srl          a0, t3, t0
                  slli         a5, s8, 27
                  beq          t6, a2, 152f
                  addi         s5, sp, 1650
                  auipc        zero, 953131
                  xor          a0, a7, a2
                  and          a5, t3, zero
                  sltiu        s5, a3, -108
                  slt          s7, a3, s10
                  ori          s8, s7, -558
                  srai         gp, t3, 26
                  slli         s8, a4, 11
                  beq          a3, s9, 165f
                  blt          ra, t1, 149f
149:              slt          s0, a4, gp
150:              sll          s4, a1, t6
                  sltu         a0, s6, t2
152:              addi         a4, s6, -829
                  sub          s1, tp, s3
                  auipc        t6, 844037
                  xori         tp, t3, -959
                  sra          gp, s7, s5
                  or           s1, s5, s3
                  slt          s7, zero, t4
                  bgeu         tp, s6, 174f
                  bltu         t3, s4, 165f
                  slt          t2, s11, s1
                  bgeu         a6, sp, 167f
                  xor          tp, t5, s2
                  slti         sp, a5, -1425
165:              sra          s9, s10, s8
                  blt          s0, s2, 173f
167:              sltiu        a5, tp, 260
                  and          a7, a3, s11
                  slli         s1, s2, 22
                  addi         tp, t0, -1547
                  xori         sp, ra, -1189
                  xor          t2, s10, a7
173:              lui          s9, 474488
174:              beq          t6, t6, 184f
                  sub          tp, gp, a5
                  sll          s9, a7, s10
                  sll          a1, a4, a4
                  srli         a4, a2, 2
                  srl          s7, s2, s3
                  bgeu         t6, zero, 184f
                  sll          t4, s1, tp
                  lui          t1, 244843
                  sltu         a1, t0, zero
184:              sub          a0, t5, zero
                  sltu         t4, s5, gp
                  slt          s6, t2, a3
                  blt          s1, s1, 196f
                  nop
                  beq          t3, gp, 194f
                  srl          ra, s8, s1
                  srai         s3, a4, 14
                  addi         a3, s0, -1025
                  addi         a3, a5, 1976
194:              lui          a5, 18049
                  and          s8, t6, t4
196:              sll          a3, s0, s11
                  and          t2, s11, a7
                  auipc        s9, 541004
                  sub          s0, t0, t2
                  add          s11, s0, a6
                  sra          t4, gp, ra
                  xori         ra, s9, 33
                  auipc        s2, 630946
                  beq          s0, s8, 215f
                  sub          s5, s10, a0
                  sltiu        s2, t1, -1918
                  xori         t6, tp, 1643
                  nop
                  blt          s11, s2, 227f
                  sll          s7, t5, s1
                  auipc        s3, 1020104
                  slti         s8, a5, 936
                  andi         a6, t0, -484
                  lui          s8, 27691
215:              add          s9, a3, t6
                  bltu         a7, s4, 235f
                  bge          a6, a5, 222f
                  sll          a1, s7, s5
                  beq          sp, s0, 224f
                  addi         s9, t5, 1310
                  lui          t0, 440929
222:              bne          a3, s9, 235f
                  slti         t4, s9, 616
224:              or           s5, s0, tp
                  xori         t4, t0, -453
                  bge          t6, s11, 241f
227:              sll          ra, s6, s0
                  srli         s5, a1, 25
                  or           a4, gp, a1
                  nop
                  slti         s2, s6, -68
                  auipc        s11, 66000
                  xor          a6, t4, t5
                  xori         s8, tp, 1649
235:              add          s11, a3, a7
                  nop
                  and          s1, t4, zero
                  bge          t6, a4, 256f
                  andi         s5, tp, -1942
                  slli         a7, sp, 28
241:              sll          a7, t1, s3
                  bge          t2, a7, 261f
                  ori          a1, sp, 1731
                  add          s11, s0, a3
                  sltu         a5, t0, s0
                  srai         sp, t2, 0
                  slti         s5, s10, -1322
                  addi         s5, tp, 2045
                  nop
                  add          a4, t4, tp
                  add          s9, s0, ra
                  srl          t6, tp, a1
                  andi         a1, s4, 1481
                  nop
                  bgeu         s7, tp, 268f
256:              ori          s3, s7, -422
                  blt          a1, tp, 261f
                  srli         gp, s5, 25
                  bgeu         t3, t1, 266f
                  blt          tp, s9, 261f
261:              or           a6, t1, s6
                  auipc        a3, 110155
                  blt          t5, sp, 276f
                  xori         s9, a3, -1224
                  bltu         zero, zero, 268f
266:              auipc        s0, 762975
                  sub          a7, s7, s10
268:              bne          a0, a7, 286f
                  sra          a5, a7, s10
                  slli         tp, gp, 18
                  srai         s11, s3, 15
                  slli         s9, s0, 23
                  addi         t6, t5, -1291
                  sub          a6, s5, s4
                  bne          t5, a7, 292f
276:              and          t4, s5, a7
                  sll          ra, a1, s2
                  slti         t6, s2, 462
                  xor          sp, t1, t4
                  ori          s8, s7, -193
                  sltiu        s5, s9, 1162
                  andi         t1, zero, 1231
                  sub          a5, a0, a6
                  sltiu        t1, sp, 1312
                  andi         t4, a5, 1241
286:              ori          a3, a7, 151
                  nop
                  beq          ra, t3, 292f
                  sltu         s1, s5, sp
                  slti         s9, t0, 1133
                  xor          a3, t6, s3
292:              sltiu        a5, a5, -1205
                  ori          t1, gp, 96
                  nop
                  sltu         s10, t4, s11
                  sra          s0, a7, s10
                  srai         tp, a5, 25
                  slli         s1, t1, 10
                  addi         ra, t6, 2000
                  slli         s4, ra, 15
                  beq          a5, s6, 313f
                  nop
                  or           s11, ra, tp
                  nop
                  bne          s7, a6, 310f
                  xor          gp, a4, s4
                  bgeu         t5, s3, 311f
                  xori         a3, s3, -1272
                  lui          a1, 311958
310:              sltu         s5, s9, s9
311:              srai         t2, t3, 28
                  xori         s9, a4, -2029
313:              srli         sp, a6, 9
                  sll          s6, a7, t5
                  addi         s0, s1, 70
                  xori         t6, t4, -1187
                  srai         a7, t5, 22
                  sra          ra, s5, a4
                  or           t0, s9, s10
                  sub          a5, tp, t6
                  auipc        tp, 300357
                  xori         s3, a4, 366
                  andi         zero, ra, 332
                  addi         a5, t1, 1538
                  add          t0, sp, s10
                  andi         zero, t0, -1092
                  slli         s4, t5, 10
                  ori          t0, a3, -1198
                  srl          s11, s2, s10
                  sltu         s0, zero, s2
                  srl          s0, tp, ra
                  blt          s0, s10, 338f
                  sll          t0, t2, t6
                  bltu         gp, s4, 339f
                  sltiu        s0, s4, -95
                  slti         t1, t6, -1042
                  blt          t2, a6, 355f
338:              xori         s4, a0, -1673
339:              or           s6, s11, s10
                  sub          t2, a5, ra
                  xori         a0, s1, -1187
                  add          a5, a4, s5
                  slti         s4, s0, 1834
                  andi         s0, tp, -600
                  xor          gp, t5, t1
                  sub          s4, s10, t6
                  addi         gp, s2, 1880
                  blt          s1, s2, 367f
                  sltu         s10, t5, t5
                  and          a5, t1, zero
                  lui          a6, 159458
                  or           a4, s9, a4
                  bne          s3, sp, 360f
                  addi         s11, s9, -645
355:              bge          a3, s7, 367f
                  sll          t6, ra, a2
                  srl          s11, t6, s9
                  and          gp, s10, a6
                  xor          s3, a7, t2
360:              ori          s0, t5, 290
                  sra          tp, t3, a6
                  srai         t2, gp, 4
                  auipc        t1, 92514
                  bltu         gp, t6, 369f
                  sll          s2, a0, t4
                  sltu         s7, zero, s0
367:              srli         a0, s1, 22
                  sll          s2, s1, t0
369:              andi         zero, a3, -1326
                  srli         s0, a0, 6
                  sra          s3, t4, t4
                  and          s8, s6, t3
                  andi         s6, t3, -2041
                  sra          s4, a6, s2
                  sll          ra, s6, t6
                  srai         s3, s4, 20
                  add          t1, a4, t5
                  lui          s5, 138940
                  xori         s7, gp, -151
                  slt          a6, a6, a1
                  blt          sp, s1, 400f
                  srl          sp, t4, t4
                  and          s9, tp, s7
                  slti         t2, s8, 1898
                  ori          t4, a1, 250
                  srl          tp, t1, t6
                  sll          ra, a6, s0
                  xori         a6, s11, -502
                  xor          a0, s4, a1
                  slli         s3, sp, 21
                  sra          s4, ra, a6
                  srli         t0, ra, 23
                  and          t0, a3, a6
                  addi         s2, ra, 339
                  srli         ra, t2, 16
                  and          s0, s8, t4
                  addi         s8, t6, 637
                  auipc        s2, 897545
                  nop
400:              srli         s3, zero, 21
                  add          s10, s3, a5
                  sltu         a3, t4, s3
                  sltiu        zero, t3, -1600
                  addi         t6, tp, 180
                  sra          a0, s11, ra
                  bge          a4, ra, 409f
                  sltiu        s5, s1, 857
                  slt          gp, gp, t1
409:              blt          s3, s7, 418f
                  bltu         s9, a6, 414f
                  sra          a0, a0, a7
                  and          a1, s5, a4
                  addi         s0, s8, -530
414:              add          s3, t0, s8
                  addi         s11, s11, 284
                  blt          s4, t0, 431f
                  beq          s3, a7, 418f
418:              add          s4, t5, s3
                  sltiu        s3, s7, 1836
                  beq          zero, s9, 425f
                  nop
                  bge          s2, t6, 429f
                  sra          s11, s6, s6
                  and          s3, s8, s10
425:              sltu         s0, t1, s10
                  bgeu         a2, t4, 444f
                  or           s5, t5, s7
                  sltiu        s5, a6, -1672
429:              sub          s11, t5, a5
                  bltu         s1, tp, 440f
431:              blt          t6, a4, 444f
                  andi         a3, s7, -1644
                  xor          s11, s6, t2
                  bge          s7, s11, 438f
                  slli         t4, gp, 4
                  add          s5, sp, s6
                  nop
438:              sll          s0, s4, ra
                  add          t1, a5, s0
440:              beq          gp, s6, 453f
                  auipc        s6, 813475
                  blt          s11, s2, 455f
                  bne          tp, s8, 458f
444:              sltiu        s1, s0, 648
                  bgeu         s1, s8, 450f
                  auipc        a5, 839299
                  sltu         s10, t3, s7
                  blt          s8, a6, 466f
                  slli         s7, s8, 16
450:              srli         a7, s0, 11
                  srai         a1, t6, 4
                  ori          t0, a1, 850
453:              auipc        s8, 412288
                  auipc        t1, 80633
455:              xori         a4, t2, -1617
                  andi         s3, a6, 1073
                  add          a6, a7, a7
458:              slli         s6, zero, 4
                  xor          t2, t4, s2
                  bge          s10, a2, 465f
                  xori         t1, tp, 314
                  auipc        zero, 302785
                  srl          s11, s4, s5
                  sra          s8, t6, t6
465:              srl          sp, a0, tp
466:              srai         s11, t2, 28
                  xor          ra, t0, s3
                  srl          sp, t5, a3
                  bge          a1, s4, 475f
                  sltiu        s5, t5, 2027
                  sll          a0, a6, s3
                  add          a1, s7, t4
                  sub          s9, a4, s6
                  sub          a4, t3, s5
475:              slti         tp, t6, 286
                  srli         s3, s2, 0
                  sra          s1, s6, s10
                  xor          gp, gp, s5
                  slli         s9, s0, 3
                  lui          s5, 988841
                  slt          s8, t3, s11
                  add          s10, a5, a1
                  sra          s11, sp, t4
                  srl          a7, s3, t2
                  srli         sp, gp, 28
                  sra          gp, gp, s2
                  add          s1, s2, a6
                  srli         t0, t2, 5
                  bgeu         s9, t5, 494f
                  addi         a3, a7, 2007
                  sub          s4, s0, s11
                  blt          s5, t5, 503f
                  srai         s10, s1, 16
494:              xor          s0, s10, s7
                  sltu         s10, s0, zero
                  sra          t1, s0, a2
                  bne          s1, a3, 514f
                  blt          a1, a7, 502f
                  slt          t6, t0, t6
                  andi         a0, s2, -941
                  srli         t4, a0, 13
502:              blt          a0, s7, 506f
503:              bltu         t0, t6, 518f
                  addi         s8, a7, -7
                  srai         a5, a7, 13
506:              slti         s5, s9, -223
                  sltiu        s10, t0, -1641
                  sll          s3, s1, t4
                  add          s1, t3, sp
                  bgeu         a4, zero, 511f
511:              bltu         s9, gp, 516f
                  bge          s9, s0, 522f
                  nop
514:              sltiu        s11, s11, 1737
                  sltiu        gp, sp, 1475
516:              slti         tp, s6, -828
                  xori         a6, s2, 1305
518:              bge          sp, s0, 529f
                  and          s1, s2, zero
                  bne          a5, s4, 535f
                  slt          s6, a4, a1
522:              beq          tp, t5, 526f
                  or           ra, tp, s6
                  bne          t1, a2, 543f
                  bge          t5, t1, 534f
526:              sltu         t0, zero, sp
                  beq          s11, s7, 539f
                  srl          gp, s3, t3
529:              lui          s4, 136461
                  beq          a1, s3, 535f
                  sra          zero, s1, a7
                  auipc        t2, 580619
                  sra          s0, a7, zero
534:              srl          t6, a0, t6
535:              beq          a0, a6, 541f
                  slt          s6, a7, s9
                  sll          s0, zero, gp
                  or           s11, s4, s2
539:              add          t2, s5, t1
                  slli         t1, t3, 8
541:              blt          s5, t3, 560f
                  sra          s2, s0, s9
543:              sltiu        t1, a6, -1901
                  xori         s10, s6, -2012
                  srl          tp, t6, gp
                  xor          a7, tp, a6
                  nop
                  beq          t6, a7, 566f
                  nop
                  ori          a7, a2, 85
                  srai         sp, t1, 14
                  beq          sp, t3, 556f
                  sub          a0, s0, tp
                  andi         zero, a5, -908
                  xor          s10, t6, s6
556:              auipc        t4, 145439
                  nop
                  lui          t6, 1000601
                  sltiu        s3, s4, -1683
560:              add          s3, zero, s9
                  andi         s3, s3, -366
                  addi         t6, a3, -1088
                  sltu         s4, zero, s6
                  sltu         s8, a2, t6
                  andi         sp, gp, 1204
566:              addi         a3, a5, 933
                  or           a1, sp, s5
                  nop
                  slt          a1, a3, t1
                  bge          a2, a6, 574f
                  bltu         a3, a1, 574f
                  sltu         gp, s4, s6
                  blt          a6, gp, 590f
574:              srl          s9, zero, s1
                  sra          sp, s2, s3
                  lui          s4, 664132
                  xori         a5, s9, -346
                  bgeu         s9, zero, 583f
                  slt          a6, t0, s7
                  sltiu        a5, t0, 420
                  la           sp, region_1+1377 #start riscv_load_store_rand_instr_stream_1
                  lhu          tp, -127(sp)
                  add          t2, s7, s11
                  lb           a6, -7(sp)
                  lb           s5, 102(sp)
                  sub          a5, t1, t5
                  srli         s10, s6, 16
                  srli         t6, s11, 25
                  auipc        s1, 630945
                  ori          s11, t4, 1599
                  sh           tp, 175(sp)
                  slt          t6, s6, s4
                  lbu          ra, 216(sp)
                  lb           t1, -158(sp)
                  lh           tp, -143(sp)
                  addi         s10, s0, -447
                  sb           s5, 192(sp)
                  lb           t2, -38(sp)
                  lb           zero, -103(sp)
                  lui          s8, 995294
                  lb           s8, -226(sp)
                  ori          t6, a6, -799
                  lhu          ra, -185(sp)
                  slli         a3, s7, 2
                  lbu          s1, 144(sp)
                  sb           s1, -184(sp)
                  lb           tp, 78(sp)
                  slt          t6, s11, a3
                  sb           gp, 180(sp)
                  slt          s0, s6, a1
                  sra          gp, s7, s5
                  lh           s3, 125(sp)
                  lbu          a4, 175(sp)
                  lbu          a7, -233(sp)
                  lb           s10, 126(sp)
                  sb           s10, -190(sp)
                  lui          a6, 482494
                  and          zero, s0, s6
                  or           zero, a4, s6
                  lb           s8, -112(sp)
                  srai         t4, t3, 20
                  lh           s5, 25(sp)
                  xori         ra, s7, 757
                  srai         s2, t1, 24
                  sb           a6, -110(sp)
                  sb           tp, 76(sp)
                  sb           s1, -12(sp)
                  lh           s3, 235(sp)
                  lb           a3, 143(sp)
                  lbu          s4, 218(sp)
                  slt          s0, s9, s9
                  lbu          s6, 2(sp) #end riscv_load_store_rand_instr_stream_1
                  srl          t6, s3, sp
                  xori         s10, s6, -1023
583:              srli         a1, s11, 21
                  sltu         s2, a7, a2
                  bge          s7, tp, 590f
                  auipc        ra, 597973
                  lui          sp, 553225
                  slt          s5, a5, t0
                  blt          s2, t4, 593f
590:              sll          a0, s7, a7
                  beq          s8, a0, 609f
                  add          s1, a0, a0
593:              lui          s1, 457707
                  xor          a4, s3, s0
                  sltu         a5, s4, s11
                  sub          s1, s6, t3
                  or           s6, a3, a6
                  bne          s2, t3, 611f
                  srai         s7, s11, 10
                  addi         s8, sp, 1018
                  slli         a6, s7, 24
                  add          t2, s3, gp
                  lui          a5, 949768
                  srai         sp, a5, 16
                  slti         t6, a7, 2002
                  srli         a6, a0, 23
                  slti         zero, t3, -347
                  nop
609:              or           s8, a2, a1
                  sltu         s3, a1, a1
611:              xor          s10, t2, s3
                  sra          a6, a1, gp
                  sra          s6, sp, a2
                  blt          s1, s9, 619f
                  srli         s2, gp, 26
                  xori         s0, t2, -696
                  beq          s9, s11, 630f
                  slli         a1, t2, 26
619:              xori         s9, t0, 449
                  sltu         t1, a2, t0
                  sub          a7, s9, s8
                  andi         a6, a4, 1976
                  srai         t6, a0, 17
                  bgeu         s9, s4, 631f
                  sltiu        t0, s5, -1896
                  andi         tp, s8, -1486
                  and          a3, t0, t2
                  sub          s3, a5, a2
                  sll          s5, t6, s4
630:              bne          t2, a0, 648f
631:              xor          s0, a2, s4
                  slli         s4, s11, 19
                  beq          t0, s2, 640f
                  sltu         s6, a5, s9
                  bge          t5, sp, 640f
                  and          a5, ra, t4
                  xor          s7, s10, s1
                  sra          s9, t3, t4
                  srai         t4, a6, 17
640:              xor          t6, a7, a2
                  slli         s9, s5, 7
                  sltu         s4, s0, s5
                  beq          s8, s7, 656f
                  slli         zero, a7, 13
                  addi         s1, tp, 638
                  bne          t4, t0, 664f
                  xor          a0, gp, ra
648:              sltu         s3, t6, s7
                  nop
                  or           t2, a2, t5
                  auipc        s1, 717427
                  blt          a7, s1, 658f
                  lui          a3, 695684
                  andi         s3, s0, -1384
                  srai         s6, t5, 30
656:              srai         a7, a7, 24
                  bltu         t2, a6, 664f
658:              xor          s8, s11, t5
                  auipc        t4, 681027
                  bne          s7, a0, 679f
                  srl          s8, s0, a5
                  slli         a6, a4, 22
                  addi         sp, s0, -138
664:              bne          a0, tp, 679f
                  ori          a1, t3, -692
                  bltu         s5, zero, 671f
                  sub          s2, s10, gp
                  sltu         t4, a6, s10
                  srli         s10, s10, 1
                  andi         a6, s1, 96
671:              beq          s9, zero, 689f
                  auipc        a3, 767405
                  blt          a5, a6, 686f
                  sltu         t4, s3, ra
                  addi         t4, gp, 1378
                  lui          a0, 604930
                  xor          a1, tp, tp
                  bgeu         t6, a2, 691f
679:              auipc        s6, 141283
                  slti         a0, s11, 812
                  ori          a3, a5, 1210
                  auipc        a4, 345666
                  or           t6, t1, s7
                  slt          a5, t5, t0
                  or           gp, a7, t5
686:              srl          t0, sp, s3
                  bltu         s11, s2, 692f
                  addi         tp, gp, 1105
689:              bne          a4, t6, 698f
                  add          a0, zero, t5
691:              bltu         t3, s10, 704f
692:              lui          a6, 106447
                  add          a6, s8, a1
                  bltu         t1, t0, 709f
                  srl          s4, t6, t3
                  add          a3, t3, s2
                  sll          s2, s4, s8
698:              bge          sp, t0, 703f
                  lui          sp, 885168
                  bne          s8, a4, 705f
                  bltu         s0, t5, 713f
                  lui          t0, 740644
703:              lui          tp, 1008770
704:              slti         t1, s11, 120
705:              sra          a3, s4, a2
                  blt          tp, a3, 710f
                  xori         s10, s5, 1817
                  srl          t4, a7, a4
709:              slli         t6, s10, 24
710:              andi         s9, s7, 737
                  sub          s8, t2, s4
                  lui          s5, 692365
713:              slli         s10, ra, 2
                  srli         t0, t2, 20
                  addi         a5, t6, -410
                  sltiu        a1, a6, 917
                  auipc        a7, 142288
                  sub          a1, s9, t4
                  auipc        a4, 559146
                  bgeu         a6, a0, 731f
                  sltu         a0, t3, a4
                  srli         s2, t0, 5
                  slt          a7, s9, a7
                  slti         sp, s2, 1688
                  ori          a5, s6, -1390
                  bgeu         gp, t4, 733f
                  bge          s4, t4, 731f
                  bltu         a2, a4, 729f
729:              sra          t1, a2, t0
                  bne          s1, s7, 749f
731:              ori          s3, t5, 533
                  srli         s6, t5, 31
733:              xor          a1, s10, s10
                  slti         s10, s5, -196
                  bgeu         a5, t4, 739f
                  srli         a1, s4, 3
                  sra          t2, sp, s6
                  bge          s4, a7, 741f
739:              beq          s9, a5, 749f
                  nop
741:              bne          t3, t1, 746f
                  slli         a3, t0, 13
                  slt          s9, s9, a7
                  bge          a2, s2, 748f
                  add          a4, a2, a6
746:              nop
                  srl          t1, s9, a3
748:              or           s7, t6, a7
749:              srli         a3, s10, 19
                  sltu         a4, zero, s6
                  addi         s2, tp, 960
                  srli         zero, t4, 18
                  xori         gp, tp, -1280
                  srli         s11, s10, 2
                  auipc        a6, 324958
                  beq          s7, t0, 774f
                  beq          a5, a2, 762f
                  bge          a7, gp, 775f
                  or           sp, s8, ra
                  sll          s0, sp, a1
                  slli         a0, a2, 26
762:              xor          s6, a4, t0
                  and          a1, t2, s3
                  xor          t4, t5, a5
                  blt          s2, a4, 769f
                  sll          s3, s10, s7
                  sll          sp, s8, a5
                  andi         s7, tp, -2029
769:              auipc        a0, 741797
                  addi         t4, sp, -473
                  xor          t2, t6, s6
                  bltu         a6, t3, 791f
                  slli         s4, t4, 25
774:              srl          a3, s6, s5
775:              sltu         a4, a5, a0
                  sltu         a6, s11, a0
                  ori          s11, a0, -1699
                  addi         s8, s8, -502
                  sub          t0, sp, s3
                  sll          s2, a1, t4
                  nop
                  beq          s5, s5, 792f
                  and          s10, t4, t0
                  slli         s4, a7, 1
                  srai         zero, gp, 12
                  nop
                  or           s2, s6, gp
                  sltiu        a7, t3, 1058
                  sub          s7, a0, s10
                  sll          s1, s0, t0
791:              slli         s6, s2, 4
792:              bgeu         t0, s0, 805f
                  slli         t4, a3, 29
                  blt          s7, t5, 797f
                  bgeu         t1, t2, 796f
796:              sltu         s0, s11, s8
797:              addi         a6, s0, -922
                  srl          a7, t6, s5
                  slt          s0, s2, gp
                  srli         a0, ra, 19
                  xori         t0, t5, 1150
                  srl          s9, a7, a0
                  ori          s7, s1, 151
                  sra          tp, a5, t6
805:              ori          a3, a1, 388
                  bge          t2, s2, 810f
                  and          s11, sp, a5
                  and          t6, s8, s0
                  sll          a4, s5, a3
810:              lui          a7, 470925
                  slt          a1, zero, zero
                  and          a5, s7, t2
                  nop
                  blt          gp, s8, 819f
                  slti         gp, a3, 1183
                  slt          s9, s2, t2
                  auipc        a4, 32668
                  sll          t0, s9, a1
819:              bne          a2, t5, 834f
                  srli         s4, t4, 10
                  srl          s3, s5, t6
                  bne          t1, t6, 841f
                  srl          s8, t5, s4
                  xori         a4, ra, -1026
                  add          s8, s7, s7
                  addi         a1, sp, 1291
                  sub          s6, s1, s2
                  or           a3, s3, a7
                  sub          s1, t4, a1
                  xori         tp, a4, -545
                  xor          a0, s5, s5
                  add          t0, t4, a2
                  and          t0, t0, s3
834:              srai         sp, s4, 12
                  add          a7, a5, ra
                  and          s0, t2, t5
                  slt          s0, t5, s7
                  sltiu        a1, zero, 458
                  bgeu         t1, s3, 852f
                  bge          a5, t6, 845f
841:              ori          s4, a6, 163
                  slti         s11, a5, -1002
                  nop
                  bge          sp, a3, 851f
845:              sub          tp, a6, a2
                  bne          s3, s1, 851f
                  bgeu         a3, sp, 864f
                  bltu         a3, s10, 857f
                  beq          s5, sp, 854f
                  bne          s11, a3, 855f
851:              beq          s2, s1, 869f
852:              andi         s5, t5, 150
                  andi         s3, a1, 1483
854:              sll          s10, s7, a4
855:              slli         gp, s5, 19
                  srli         sp, s7, 28
857:              sltiu        s11, zero, -1347
                  or           a1, a5, ra
                  bne          s11, s5, 877f
                  srai         sp, s9, 21
                  beq          ra, s9, 865f
                  lui          a6, 562560
                  lui          s4, 858041
864:              bltu         a2, t2, 875f
865:              srai         zero, s4, 2
                  blt          ra, a4, 878f
                  bltu         a1, tp, 873f
                  bltu         tp, s0, 875f
869:              srl          s6, zero, a5
                  bltu         a3, a0, 888f
                  auipc        t2, 542175
                  bne          gp, t4, 885f
873:              slli         s10, s5, 8
                  srai         s2, s4, 18
875:              addi         a3, a6, -1468
                  sub          s2, s9, a5
877:              srli         ra, gp, 30
878:              beq          ra, t6, 883f
                  slli         s1, s5, 7
                  sltiu        t1, a1, 33
                  xor          a4, s9, s7
                  andi         ra, s5, -215
883:              srai         s5, t2, 21
                  bltu         a5, a4, 888f
885:              andi         a0, a0, 241
                  auipc        s6, 430953
                  srli         s2, t4, 17
888:              and          t0, s0, s6
                  sub          t2, s6, t5
                  nop
                  srai         a4, s3, 17
                  xori         a7, zero, 349
                  auipc        zero, 589458
                  lui          s6, 486739
                  bgeu         s10, t1, 910f
                  srai         a4, t0, 29
                  xori         s11, a5, 1113
                  slli         s0, s1, 25
                  slli         s11, s11, 1
                  srl          s0, s10, t1
                  xori         a1, s7, -1444
                  srl          t4, t3, s3
                  blt          s3, gp, 916f
                  and          t0, t4, a7
                  nop
                  bgeu         t3, t0, 923f
                  slt          zero, s2, gp
                  sltu         a3, a6, s8
                  sra          s0, s8, t1
910:              srl          a7, gp, t5
                  nop
                  addi         t0, a7, -655
                  beq          s0, s4, 926f
                  srli         tp, gp, 5
                  or           s6, ra, tp
916:              bne          s2, a2, 934f
                  sltiu        zero, s0, -1408
                  slti         s1, t3, 2047
                  or           s0, t5, t5
                  nop
                  bge          s7, s3, 925f
                  sra          s8, s6, s6
923:              andi         s3, s9, 645
                  andi         s10, s2, 1409
925:              sub          s5, t2, sp
926:              add          s1, s1, s2
                  slti         a1, s1, -513
                  sub          s8, a3, t4
                  andi         s6, a2, 593
                  addi         a6, t6, 436
                  xori         s2, s7, 1173
                  and          s1, a4, zero
                  sra          a7, s4, gp
934:              srli         s5, s3, 15
                  add          s7, a7, s10
                  bgeu         s10, gp, 939f
                  slli         t0, s8, 17
                  srai         s0, tp, 5
939:              sub          gp, s6, tp
                  xori         t4, s0, -1238
                  ori          s6, sp, 583
                  lui          sp, 579104
                  or           tp, t1, t5
                  srai         ra, s0, 7
                  sltiu        a0, a5, 1312
                  xor          s9, a7, a3
                  lw           t1, 4(t5)
                  addi         t5, t5, 36
                  sra          t6, a6, a2
                  ori          s0, s7, 1582
1280:             addi x8, x6, 0
1280:             jalr x8, x8, 0
sub_3:            sltu         t4, t2, a1
                  bgeu         s5, s3, sub_3_stack_p
                  andi         a7, t4, 349
sub_3_stack_p:    addi         t5, t5, -36
                  sw           t1, 4(t5)
                  slti         a3, s0, -1830
                  la           s2, region_1+225 #start riscv_load_store_rand_instr_stream_4
                  lbu          s6, -12(s2)
                  nop
                  lb           a1, -16(s2)
                  slti         t2, s0, 81
                  slti         tp, a7, -114
                  sll          s11, a1, s4
                  sb           ra, -12(s2)
                  lhu          t0, -7(s2)
                  xori         t4, s8, 1487
                  slti         s0, a7, 1725
                  add          s7, s7, t0
                  sll          s0, a3, s4
                  lb           s3, -3(s2)
                  sltu         s11, s1, s7
                  auipc        s6, 721758
                  or           s10, a1, a5
                  lb           ra, 9(s2)
                  sw           a7, 15(s2)
                  lb           s0, -2(s2)
                  slt          t4, s5, zero
                  sb           sp, -4(s2)
                  sll          t1, s4, s5
                  sb           s0, 16(s2)
                  add          sp, s4, sp
                  lw           tp, -1(s2)
                  lb           t0, 14(s2)
                  lbu          gp, 2(s2)
                  slli         a1, t3, 12
                  auipc        tp, 919021
                  lbu          t6, -4(s2) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_0+1376 #start riscv_load_store_rand_instr_stream_5
                  sb           s1, 304(sp)
                  auipc        s2, 451653
                  sh           s4, 166(sp)
                  addi         t6, a1, 1284
                  srli         a0, a1, 9
                  sra          s3, a1, a0
                  sll          t1, ra, t0
                  xori         s4, a5, -163
                  sb           t1, 534(sp)
                  lbu          s10, -555(sp)
                  lbu          a6, -237(sp)
                  sb           s9, -722(sp)
                  lb           s8, 33(sp)
                  andi         a5, s3, -1374
                  slli         s4, s1, 7
                  lbu          s10, -1113(sp)
                  slt          ra, t4, tp
                  lbu          t6, -29(sp)
                  lhu          s10, 98(sp)
                  srl          a4, t0, ra
                  slti         s9, a6, -662
                  lh           t0, -316(sp)
                  sltu         s9, t1, t0
                  lb           a7, -271(sp)
                  srli         ra, a4, 3
                  ori          s3, s11, -66
                  sltu         t4, s1, s2
                  sb           s5, 401(sp)
                  slti         a1, t1, 1440
                  sltu         s2, s2, s2
                  sb           a2, 61(sp)
                  srl          zero, s5, t2
                  slt          a0, s8, t3
                  sll          s11, a6, a5
                  srai         zero, zero, 14
                  lbu          s10, -135(sp)
                  lh           t4, 338(sp)
                  lb           ra, 388(sp)
                  slti         s9, a0, 1110
                  nop
                  sb           s1, -323(sp)
                  sw           a6, -684(sp)
                  srai         zero, s3, 15
                  sb           s5, -887(sp)
                  slt          a6, a5, s4
                  lbu          s5, 461(sp)
                  andi         t4, a2, -860
                  lhu          t2, -726(sp) #end riscv_load_store_rand_instr_stream_5
                  la           a7, region_1+1996 #start riscv_load_store_rand_instr_stream_2
                  sub          s5, t5, s7
                  sh           s8, -38(a7)
                  sb           s8, -37(a7)
                  lbu          t2, -12(a7)
                  slti         s3, a0, -97
                  or           s3, s0, s1
                  sh           s0, -58(a7)
                  srli         a1, sp, 7
                  lb           s9, -19(a7)
                  xor          s10, a1, a1
                  sra          t4, a4, s7
                  lb           t6, -15(a7)
                  lb           s8, -35(a7)
                  lb           s3, -49(a7)
                  lh           s9, -8(a7)
                  ori          s1, s11, -1391
                  addi         ra, t6, -1021
                  sb           a2, -4(a7)
                  srl          s6, s10, zero
                  sb           s10, -9(a7)
                  srai         a6, t2, 15
                  sll          a6, s4, s7
                  lh           a1, -20(a7)
                  sb           ra, -11(a7)
                  sb           s0, -14(a7)
                  lbu          s6, -41(a7)
                  sb           s2, -43(a7)
                  ori          s10, a7, -763
                  sb           s2, -23(a7)
                  and          a0, a7, a5
                  lw           s9, -20(a7)
                  lb           t2, -45(a7)
                  slli         a1, s0, 2
                  lw           a1, -12(a7)
                  lbu          s8, -58(a7)
                  lhu          s10, -12(a7)
                  and          s7, s2, ra
                  andi         gp, s11, -868
                  sh           s2, -30(a7)
                  add          a3, s1, zero
                  sb           sp, -51(a7)
                  lb           s6, -16(a7)
                  sh           s5, -10(a7)
                  sltu         s2, a0, a7
                  lbu          a1, -45(a7)
                  sh           t4, -16(a7)
                  nop
                  lb           t4, -36(a7) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_1+928 #start riscv_load_store_rand_instr_stream_13
                  sb           s8, -627(sp)
                  sub          s9, a3, a6
                  auipc        t6, 459856
                  lh           s5, 416(sp)
                  lh           s2, -842(sp)
                  lbu          a3, -727(sp)
                  sb           tp, -607(sp)
                  lb           s6, -160(sp)
                  lbu          s8, 537(sp)
                  lui          ra, 557046
                  sb           a5, -279(sp)
                  lb           s4, 366(sp)
                  lbu          t6, 699(sp)
                  sh           a7, 118(sp)
                  lb           s4, 381(sp)
                  lh           t0, 148(sp)
                  andi         s7, a1, 1649
                  slti         ra, a5, 1804
                  lb           s6, 711(sp)
                  lb           s2, 443(sp)
                  lbu          s5, 65(sp)
                  lbu          t6, 591(sp)
                  lb           s11, 921(sp)
                  lbu          t4, 267(sp)
                  srl          t6, s2, a1
                  sb           t2, -277(sp)
                  xor          t6, s6, ra
                  lb           t6, -912(sp)
                  slli         s0, s4, 2
                  lbu          t0, 207(sp)
                  lb           t4, 207(sp)
                  lb           a7, -161(sp)
                  sltiu        s1, t6, -280
                  lbu          s0, -381(sp)
                  lbu          t1, -627(sp)
                  sb           t1, 986(sp)
                  sltu         t2, s6, gp
                  lh           t1, -478(sp)
                  sb           t5, -717(sp)
                  lb           s1, 794(sp) #end riscv_load_store_rand_instr_stream_13
                  la           s7, region_1+430 #start riscv_load_store_rand_instr_stream_12
                  lbu          t4, 878(s7)
                  sb           s8, 1189(s7)
                  add          t4, s2, a0
                  lb           t2, 407(s7)
                  sltiu        gp, a1, 256
                  srai         a7, s1, 16
                  lw           a3, -398(s7)
                  slt          s8, s10, a4
                  slli         a6, s5, 0
                  xor          ra, t4, s6
                  lb           tp, -199(s7)
                  lh           s2, 1456(s7)
                  xor          s2, s10, s2
                  slli         t6, a0, 18
                  lb           zero, -53(s7)
                  slti         sp, zero, 338
                  lb           s10, -47(s7)
                  lb           sp, 1545(s7)
                  sb           ra, 579(s7)
                  slli         a4, a3, 25
                  lhu          ra, 632(s7)
                  ori          s4, gp, -545
                  lh           a4, 816(s7)
                  sb           a0, 479(s7)
                  lb           s2, 1403(s7)
                  lh           tp, -376(s7)
                  lbu          zero, 88(s7)
                  slt          a1, s7, a6
                  sb           a7, 148(s7)
                  sb           s6, 263(s7)
                  lbu          t4, -316(s7)
                  lbu          tp, 543(s7)
                  lh           s8, -32(s7)
                  ori          t1, t6, 627
                  lhu          a3, 690(s7)
                  lb           s0, 552(s7)
                  lbu          a4, 1249(s7)
                  sll          a5, a0, t3
                  lb           s5, 1052(s7)
                  srl          s3, s9, a4
                  xor          s0, t0, a4
                  sb           t5, 1452(s7)
                  lbu          a5, 597(s7)
                  sltiu        s9, ra, 166
                  lbu          s9, -337(s7)
                  xori         s11, s9, 870
                  lbu          t4, -255(s7)
                  lbu          tp, 1066(s7) #end riscv_load_store_rand_instr_stream_12
                  la           t6, region_0+1736 #start riscv_load_store_rand_instr_stream_0
                  xori         a7, tp, -550
                  sub          s11, a4, s5
                  lb           t1, -7(t6)
                  sra          s1, a2, s0
                  lb           a1, 3(t6)
                  sub          a0, ra, t3
                  sb           s4, -13(t6)
                  lhu          a4, -14(t6)
                  lbu          t1, 13(t6)
                  lb           sp, -15(t6)
                  lbu          s3, 15(t6)
                  lbu          t1, -2(t6)
                  lw           a5, 4(t6)
                  lb           s7, -11(t6)
                  sb           s7, -9(t6)
                  lbu          s11, -9(t6)
                  addi         sp, t0, -672
                  ori          s5, s3, -1072
                  sltu         a1, s0, zero
                  sltu         s0, t3, a2
                  lbu          s1, -3(t6)
                  lb           s7, -15(t6)
                  lh           t4, 2(t6)
                  sb           s9, 13(t6)
                  sb           a1, 7(t6)
                  sra          s0, a0, s3
                  lb           ra, -12(t6)
                  sll          a1, t2, s8
                  lbu          s6, 9(t6)
                  srai         gp, s10, 26
                  sltu         a0, t1, s3
                  and          s2, a6, s9
                  lbu          a1, -12(t6)
                  sll          s8, s8, a0
                  lbu          s4, -2(t6)
                  lh           a0, -4(t6)
                  lbu          s11, 1(t6)
                  lbu          s4, 5(t6)
                  lb           t0, 3(t6)
                  sb           s9, -9(t6)
                  sb           a2, 10(t6)
                  add          ra, tp, t1
                  add          s0, t2, s9
                  lb           s10, -15(t6)
                  lbu          a0, -5(t6)
                  lb           s11, -16(t6) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+1820 #start riscv_load_store_rand_instr_stream_10
                  slt          s2, gp, s5
                  lh           s4, 8(sp)
                  xori         t0, t4, -984
                  slt          s10, a3, s10
                  addi         a7, s2, 970
                  sw           a4, 64(sp)
                  lbu          t2, 2(sp)
                  sb           s9, -16(sp)
                  addi         t0, ra, -501
                  sb           s11, -18(sp)
                  nop
                  ori          s9, a7, -1566
                  lh           a6, 50(sp)
                  sltu         a6, s0, a5
                  xor          t2, s7, s1
                  lbu          s5, -30(sp)
                  lbu          zero, 50(sp)
                  lb           a1, -28(sp)
                  nop
                  or           tp, t2, a3
                  lh           a0, -4(sp)
                  lb           zero, 54(sp)
                  sw           a4, -16(sp)
                  slli         s2, a2, 23
                  sh           a5, -4(sp)
                  nop
                  sb           a3, -20(sp)
                  lb           a6, -56(sp)
                  sb           a4, -13(sp)
                  sb           t2, -27(sp)
                  auipc        s6, 228345
                  nop
                  srli         t6, a1, 10
                  sh           s6, 0(sp)
                  and          s2, a4, a0
                  sb           a4, 60(sp)
                  lbu          s5, -61(sp)
                  lbu          t1, 19(sp)
                  lb           a4, 7(sp)
                  nop
                  slti         s7, s6, -1535
                  sltiu        s6, s9, 1619
                  add          ra, a6, a6
                  lb           a1, -28(sp)
                  lb           a5, 37(sp)
                  lbu          s9, 26(sp)
                  srai         a7, s3, 1
                  sll          zero, t4, s8
                  lb           a4, 35(sp)
                  sb           s10, 21(sp) #end riscv_load_store_rand_instr_stream_10
                  la           sp, region_1+1744 #start riscv_load_store_rand_instr_stream_9
                  and          s4, s10, a5
                  sra          s10, t1, gp
                  sb           s2, 118(sp)
                  slti         a5, s11, 815
                  lb           a6, -602(sp)
                  lbu          t6, -997(sp)
                  sh           s11, -298(sp)
                  andi         a6, s2, 1137
                  sub          s0, s1, t5
                  sll          t6, s4, s0
                  lbu          s1, -1641(sp)
                  sb           s7, -118(sp)
                  auipc        s2, 522338
                  lbu          s5, -1361(sp)
                  lbu          s10, -1155(sp)
                  sltiu        gp, t1, -1037
                  addi         a6, a3, -786
                  andi         zero, gp, 370
                  sltiu        s7, t2, -1031
                  auipc        s10, 485768
                  lb           s1, -307(sp)
                  srai         t0, t4, 27
                  xori         s3, s0, 1422
                  slt          t2, t0, s7
                  sb           s8, -1161(sp)
                  lb           s0, -1147(sp)
                  srl          a5, t1, s0
                  lbu          t4, -1065(sp)
                  srai         s1, t6, 26
                  lbu          a7, -1309(sp)
                  lb           s7, 68(sp)
                  add          s11, s2, s4
                  xori         a7, a2, 1845
                  sb           sp, -986(sp)
                  lbu          t6, -1537(sp)
                  sh           s8, -572(sp)
                  lhu          t1, -112(sp)
                  srl          a1, s4, a3
                  add          a5, s0, s10
                  lbu          s2, -917(sp)
                  lhu          a3, -242(sp)
                  xori         s0, s2, -354
                  nop
                  srl          gp, t4, s3
                  sh           t6, -510(sp)
                  sw           t4, -32(sp)
                  lbu          s9, 117(sp)
                  and          t0, t1, s6
                  lh           s2, -1412(sp)
                  lbu          gp, -1135(sp)
                  lbu          a3, -536(sp) #end riscv_load_store_rand_instr_stream_9
                  la           a4, region_0+1761 #start riscv_load_store_rand_instr_stream_14
                  ori          s2, a7, -1579
                  lb           a7, 10(a4)
                  lb           t4, -6(a4)
                  xori         t2, t6, 1901
                  srai         ra, a6, 23
                  sb           t5, 13(a4)
                  lbu          s0, 10(a4)
                  slt          s10, s8, s5
                  andi         s4, sp, 1855
                  sh           s5, 3(a4)
                  and          s4, t6, tp
                  lbu          s11, 10(a4)
                  sltu         t1, t4, gp
                  slti         s5, a6, -1707
                  sra          zero, t1, gp
                  lb           tp, 14(a4)
                  slt          s10, s0, s2
                  andi         s9, a2, 1241
                  and          a3, s7, s1
                  sll          s1, s6, t4
                  srai         a5, s1, 12
                  ori          ra, a1, -95
                  lbu          s2, -16(a4)
                  srl          s8, s3, t0
                  sh           a1, 3(a4)
                  lb           a6, -8(a4)
                  auipc        s4, 33393
                  lb           t1, -16(a4)
                  slti         a7, a1, 374
                  and          t4, t1, s6
                  lb           s2, 5(a4)
                  lb           t0, -14(a4)
                  or           a1, a6, a5
                  sra          t0, a6, a2
                  ori          s8, gp, -1596
                  sb           s2, -10(a4)
                  sltiu        s10, t3, -580
                  sltiu        s8, ra, -538
                  xor          a5, t0, s0
                  lbu          s1, -12(a4)
                  addi         ra, s9, 833
                  lbu          a0, 1(a4)
                  srli         t6, a1, 7
                  lbu          s8, -4(a4) #end riscv_load_store_rand_instr_stream_14
                  la           a3, region_0+1827 #start riscv_load_store_rand_instr_stream_1
                  slti         a4, a7, 1612
                  sb           s3, 152(a3)
                  lbu          t1, -204(a3)
                  lh           s7, 39(a3)
                  lh           s10, -187(a3)
                  addi         s9, a5, -82
                  srl          a7, t4, t2
                  lbu          s10, 49(a3)
                  sra          s6, t0, s10
                  addi         s1, t3, -1353
                  addi         ra, t3, -1958
                  and          s0, t2, s7
                  or           s5, a4, a6
                  lb           s1, -80(a3)
                  srai         s1, s0, 0
                  sub          a0, s0, t5
                  andi         a4, s6, 279
                  sra          a0, a3, t1
                  lb           a7, -54(a3)
                  lbu          s7, -103(a3)
                  sh           s6, -123(a3)
                  lb           gp, -143(a3)
                  andi         s8, s9, -709
                  lb           t6, -190(a3)
                  lw           s6, 1(a3)
                  lbu          tp, -168(a3)
                  lb           ra, 78(a3)
                  lh           s1, -5(a3) #end riscv_load_store_rand_instr_stream_1
                  ori          gp, s0, -1952
                  sub          t2, s7, s0
                  lui          s1, 298086
                  ori          s11, a2, 947
                  slt          t4, t5, s9
                  ori          a3, t5, 1439
                  sll          a6, s0, s9
                  sra          t4, s8, a7
                  nop
                  add          s5, a0, s3
                  slti         s0, t4, -1710
                  addi         s2, a5, -1404
                  ori          t2, a6, 2011
                  lui          s6, 862707
                  srai         s8, s8, 22
                  andi         s10, s4, -1052
                  and          s11, t3, s10
                  addi         a4, s11, -600
                  bgeu         ra, a2, 26f
                  lui          s10, 878833
                  sltiu        s10, t1, -1329
                  sltu         gp, s4, a5
                  sltu         s10, a2, s1
                  bltu         a4, s3, 29f
                  bltu         s3, s5, 34f
                  slt          s9, s2, s7
26:               addi         tp, s4, 1311
                  beq          s10, a4, 31f
                  srli         a6, a1, 7
29:               srli         s4, s4, 25
                  ori          a4, a6, -1327
31:               xor          t0, t1, t2
                  xori         a6, s7, -1661
                  srl          a5, ra, zero
34:               or           s3, sp, t3
                  sll          a0, tp, a1
                  auipc        s2, 102467
                  bne          a6, s4, 39f
                  beq          s8, t2, 40f
39:               xori         s11, t4, 1110
40:               lui          s3, 704216
                  srai         sp, t0, 28
                  auipc        a6, 589313
                  xor          sp, sp, a7
                  sra          s11, s10, t2
                  lui          s10, 839643
                  bge          sp, s2, 52f
                  or           a7, a2, a5
                  lui          s3, 579704
                  sra          s2, t3, s2
                  bgeu         s5, zero, 55f
                  lui          t4, 711117
52:               sra          a1, a7, t6
                  bgeu         sp, t6, 72f
                  or           ra, ra, s6
55:               slt          a3, s1, s6
                  xori         a0, s10, 1200
                  andi         s1, t3, 386
                  xori         zero, s4, -1054
                  bge          t6, s0, 75f
                  srl          s0, a1, a1
                  add          t6, sp, s7
                  sltu         s2, s10, t4
                  beq          t1, t5, 70f
                  bltu         t3, t4, 66f
                  sltu         a7, a6, s11
66:               sll          tp, tp, t6
                  and          ra, t5, t0
                  blt          a2, s5, 71f
                  sltu         sp, zero, ra
70:               srl          s0, a2, t5
71:               bge          a1, s6, 75f
72:               srli         s0, a5, 29
                  auipc        t1, 353831
                  nop
75:               addi         t0, s5, -275
                  sltiu        s1, s7, 413
                  nop
                  add          t6, s0, s8
                  blt          a0, s1, 92f
                  or           a6, s2, s8
                  auipc        t0, 551950
                  slt          sp, s8, a4
                  or           t2, zero, t1
                  sltiu        zero, gp, 672
                  sra          s9, s8, s5
                  andi         sp, zero, -1626
                  srai         s1, a0, 24
                  srli         s7, s8, 29
                  addi         s9, sp, -470
                  lui          sp, 405870
                  add          s10, zero, s1
92:               sltiu        gp, a6, 958
                  srai         t4, t3, 2
                  blt          s1, a6, 104f
                  sll          tp, s4, s11
                  slti         zero, t0, 401
                  sub          s8, s11, s2
                  or           s3, a3, t1
                  slt          a6, t2, a6
                  addi         ra, s6, -1427
                  srl          a6, s7, s5
                  sra          t2, t3, a4
                  sra          s5, a5, a7
104:              addi         t2, a5, 131
                  bge          s9, s1, 115f
                  xori         s5, s7, -504
                  sub          a0, sp, s9
                  srl          t4, t6, s0
                  bne          t4, t0, 128f
                  srai         s0, t1, 9
                  beq          a0, ra, 119f
                  xor          gp, s8, a3
                  bge          s6, a6, 123f
                  xor          t1, t0, s2
115:              beq          a2, a0, 119f
                  srli         s3, s8, 9
                  srli         t0, t1, 8
                  xori         t6, sp, 1030
119:              add          t1, s1, t5
                  sub          s6, s9, zero
                  auipc        a7, 3128
                  slti         s2, a5, -942
123:              xor          t4, a1, s4
                  slt          t1, s11, a5
                  bltu         s7, s11, 127f
                  slli         a6, s9, 28
127:              slt          a6, s3, sp
128:              xor          t1, gp, s9
                  slti         s6, s6, -1617
                  add          ra, a0, t6
                  srli         s8, tp, 15
                  srli         t2, s6, 8
                  sltu         tp, t1, zero
                  sltiu        zero, s7, 642
                  sltu         s1, tp, t2
                  sub          a5, s5, tp
                  bgeu         s6, a1, 144f
                  slli         t0, s5, 11
                  sub          a7, a5, s6
                  ori          s0, a1, 884
                  andi         t6, t2, 1175
                  ori          gp, t1, 175
                  srli         s10, a5, 5
144:              nop
                  sra          a3, tp, a4
                  xor          ra, gp, sp
                  bgeu         s7, t4, 149f
                  bgeu         sp, s9, 162f
149:              bge          sp, s1, 169f
                  sub          sp, s2, t3
                  addi         t4, a4, 1013
                  srai         ra, s1, 0
                  xori         s9, s0, 1534
                  xori         a0, ra, 2028
                  sll          s7, t6, a0
                  slti         a6, s3, 1878
                  beq          s9, t2, 176f
                  xor          a7, s1, s8
                  xor          s7, a5, s9
                  beq          t3, t3, 175f
                  bgeu         s0, s7, 165f
162:              auipc        a1, 31783
                  sll          zero, a1, tp
                  srai         a1, a1, 21
165:              lui          ra, 261376
                  or           s9, s1, a1
                  xori         a4, s11, -586
                  nop
169:              bge          a6, a5, 186f
                  add          s10, a7, s2
                  beq          a6, s8, 175f
                  blt          a2, t6, 192f
                  sll          t1, zero, s0
                  bne          a4, s6, 184f
175:              lui          t2, 732243
176:              and          s11, a5, s4
                  beq          s3, a2, 196f
                  ori          a1, s5, -1747
                  sltu         t2, s8, t3
                  auipc        s2, 408011
                  sra          zero, s3, a1
                  srai         s10, a1, 20
                  sltiu        t1, a3, -1994
184:              sll          s8, gp, s10
                  bgeu         s2, sp, 202f
186:              addi         s2, s0, -218
                  bne          s7, s4, 189f
                  beq          t5, t2, 196f
189:              xor          s0, a1, s1
                  bne          a2, s11, 194f
                  nop
192:              xor          s0, a1, s9
                  nop
194:              sub          s0, a0, s0
                  blt          t4, a7, 197f
196:              srl          tp, gp, ra
197:              auipc        s6, 575694
                  srli         s11, sp, 18
                  auipc        s1, 827566
                  and          t1, s4, a6
                  srai         t0, s9, 24
202:              xori         t6, tp, 1316
                  srl          s0, s10, s2
                  srai         tp, t5, 18
                  beq          s4, s7, 207f
                  srl          a3, a3, ra
207:              srai         s0, t3, 4
                  bge          a7, a1, 223f
                  bge          s1, s1, 211f
                  lui          s4, 533367
211:              srl          t0, s0, tp
                  addi         s0, s0, 1386
                  bgeu         s11, t2, 218f
                  slt          a7, s4, s4
                  and          s7, a2, a6
                  srli         s9, t3, 14
                  add          sp, sp, s2
218:              or           s0, tp, t2
                  bne          a0, tp, 229f
                  or           a6, s8, s6
                  and          t0, a3, s0
                  lui          a3, 436633
223:              slt          s10, s8, t2
                  nop
                  bne          s6, a4, 231f
                  slli         zero, a0, 24
                  slli         t4, zero, 21
                  beq          a0, a1, 242f
229:              slli         tp, a6, 7
                  addi         a1, t1, 336
231:              srl          s9, a3, s11
                  and          s6, t5, a5
                  sra          s0, s11, s2
                  sra          t6, a2, a6
                  sub          t6, t1, t5
                  nop
                  sltu         s6, s11, s4
                  srl          a5, t2, t2
                  srai         s1, a6, 2
                  slti         s3, s9, -2008
                  srli         s0, gp, 22
242:              slt          sp, sp, a0
                  bge          a3, t6, 256f
                  beq          s1, a0, 248f
                  bgeu         s5, a1, 247f
                  bltu         s9, t3, 262f
247:              bgeu         s5, t2, 253f
248:              xor          a5, t1, t5
                  srl          s9, s6, t1
                  xori         tp, t5, -1623
                  or           a7, tp, t0
                  srl          s11, s3, t3
253:              slt          s0, s0, a6
                  lui          a6, 333297
                  sub          s0, ra, s9
256:              and          t1, s11, s1
                  sltu         s7, tp, tp
                  ori          s8, s5, -128
                  ori          t0, s4, 1122
                  srai         t0, t4, 17
                  bgeu         s8, tp, 268f
262:              sub          tp, s6, t5
                  lui          s3, 830047
                  or           s11, s10, s9
                  srli         s7, a5, 5
                  blt          a0, s2, 285f
                  slt          a5, a2, a0
268:              sltu         s10, gp, a7
                  srli         a7, a4, 0
                  andi         s8, s10, -607
                  lui          t2, 823425
                  sltiu        a5, s10, -164
                  sra          t6, a4, s10
                  xori         s6, s4, -358
                  srli         t0, t1, 22
                  beq          t5, a4, 295f
                  sub          t4, s10, zero
                  and          sp, ra, a6
                  srl          s6, a3, s5
                  sltiu        s4, a5, -198
                  xori         gp, s7, 659
                  beq          s4, t2, 290f
                  or           a6, s1, s0
                  sra          s8, t2, t5
285:              slt          zero, ra, s6
                  ori          s0, s0, 1358
                  bltu         a1, s11, 297f
                  slli         zero, t4, 15
                  srl          s1, s8, a2
290:              srli         s6, sp, 1
                  and          a5, a5, s0
                  sltiu        s8, s4, -887
                  slli         a3, a5, 11
                  nop
295:              beq          s0, s3, 298f
                  auipc        s1, 64236
297:              srli         a1, t2, 12
298:              bltu         a4, s1, 302f
                  xor          s6, s2, s9
                  slli         s4, a1, 19
                  srli         t2, ra, 2
302:              sub          ra, a0, s1
                  addi         s6, t1, 853
                  sltiu        s8, s5, 1337
                  srli         s3, s4, 30
                  slti         s4, a5, -951
                  addi         s4, t1, 1552
                  slt          s10, a6, a1
                  blt          s5, t6, 316f
                  lui          s4, 842189
                  bgeu         s7, a0, 321f
                  beq          t5, tp, 331f
                  sub          zero, a0, a5
                  sltu         gp, a7, t2
                  lui          a7, 1016561
316:              add          gp, s1, a3
                  sra          s9, a6, a0
                  nop
                  auipc        t2, 919237
                  bgeu         s10, tp, 326f
321:              sltu         t2, ra, s9
                  slli         a1, t6, 20
                  addi         s3, t2, 705
                  bge          ra, s2, 334f
                  lui          s10, 142652
326:              sltu         s5, t0, s0
                  beq          s1, s3, 331f
                  sll          a7, t0, ra
                  slt          ra, s9, a2
                  andi         s2, sp, 286
331:              ori          t2, s10, 94
                  blt          a1, a5, 335f
                  ori          s6, s3, -95
334:              slli         a4, a5, 13
335:              and          s2, ra, t2
                  ori          a0, a2, 244
                  sltiu        gp, s6, 502
                  sltiu        a0, gp, 1882
                  srli         tp, s10, 18
                  blt          s4, t5, 350f
                  or           s7, s10, t6
                  srl          s5, s4, t5
                  sltiu        ra, s0, 938
                  bgeu         a6, zero, 363f
                  srai         a6, t1, 23
                  srl          t6, t6, a4
                  bgeu         t0, s8, 354f
                  sltu         s7, zero, s2
                  xori         s2, s5, 1949
350:              srli         t1, a6, 24
                  srai         a7, s3, 26
                  addi         t2, t5, 422
                  srl          tp, t3, s2
354:              blt          t6, t3, 356f
                  auipc        s8, 267709
356:              bne          s8, a5, 363f
                  add          tp, a0, t1
                  sltiu        a5, t0, -1765
                  bge          tp, s7, 361f
                  bge          sp, s5, 373f
361:              slt          t2, tp, s3
                  sltu         s1, sp, zero
363:              slti         t2, s1, 646
                  ori          t6, t0, -1186
                  beq          a3, t6, 380f
                  slt          gp, s9, ra
                  sub          zero, a4, s1
                  addi         s2, s1, 1471
                  xori         s4, s9, -862
                  andi         s9, s7, 893
                  bge          tp, zero, 375f
                  addi         s5, a1, -1826
373:              ori          a3, sp, 730
                  or           s5, s1, s4
375:              add          s1, s8, a2
                  ori          a1, s4, -1992
                  auipc        ra, 280770
                  beq          a5, s0, 395f
                  bge          s1, t5, 389f
380:              slt          gp, s6, zero
                  sll          a4, s11, s4
                  beq          t4, a0, 396f
                  srai         sp, s6, 28
                  addi         s5, s4, -709
                  sll          a5, s3, s11
                  andi         s3, s3, 476
                  sra          a7, a4, s7
                  sra          s10, gp, a2
389:              ori          a1, a5, 1724
                  xor          t6, s0, a7
                  sub          t0, s10, t2
                  bgeu         a2, sp, 394f
                  nop
394:              bltu         s8, s1, 404f
395:              sltu         a1, t1, s0
396:              bne          a6, a4, 398f
                  and          s3, t1, s3
398:              nop
                  srai         a3, t5, 11
                  bge          s2, t4, 416f
                  xori         t0, a1, -81
                  lui          s1, 478501
                  sra          s9, s2, t5
404:              sltiu        s7, t6, 694
                  beq          t4, s9, 410f
                  and          s2, t6, a4
                  bge          t3, t4, 411f
                  ori          s5, t3, 1887
                  sll          a1, a2, a4
410:              ori          a7, tp, 1769
411:              blt          t3, t4, 430f
                  addi         zero, t0, -436
                  sltu         s10, s9, a3
                  bge          t6, sp, 434f
                  sra          t0, a7, s7
416:              srl          a4, s1, t5
                  blt          s8, tp, 425f
                  bgeu         a4, s5, 420f
                  srli         t2, s10, 30
420:              bgeu         a3, s5, 424f
                  auipc        t0, 890297
                  srl          t1, t0, t1
                  sll          sp, t0, a1
424:              sub          t6, t0, t5
425:              srl          t4, s11, ra
                  sltu         sp, s2, s11
                  slt          s10, t4, sp
                  xori         t2, t1, -677
                  nop
430:              bgeu         a4, t1, 436f
                  slli         gp, gp, 25
                  beq          a0, a4, 440f
                  xor          s1, s8, s7
434:              blt          gp, s11, 453f
                  srli         a6, a3, 25
                  la           s3, region_0+984 #start riscv_load_store_rand_instr_stream_6
                  lh           t0, -74(s3)
                  sb           a6, 61(s3)
                  nop
                  sb           s4, 203(s3)
                  sb           s4, 215(s3)
                  lw           sp, 248(s3)
                  lb           t2, -66(s3)
                  lw           s8, -16(s3)
                  andi         t4, a3, 1965
                  lh           s10, 2(s3)
                  srl          tp, zero, s2
                  lb           s7, -149(s3)
                  sra          s6, t4, sp
                  lb           s6, -82(s3)
                  sltiu        gp, s3, -866
                  slli         a4, a0, 26
                  lb           ra, 145(s3)
                  xor          t6, s1, a3
                  or           s1, a2, a7
                  srli         a5, s6, 16
                  lbu          s8, -193(s3)
                  xori         s1, t5, -650
                  sub          gp, t2, s5
                  add          s1, s7, s0
                  slti         s0, t6, -990
                  srai         s6, t2, 30
                  nop
                  sb           t5, 104(s3)
                  ori          gp, a0, 1086
                  srai         t0, s7, 14
                  and          s5, s10, t4
                  lb           s8, -189(s3)
                  sb           s11, -183(s3)
                  lbu          tp, 186(s3)
                  lbu          s4, -41(s3)
                  lui          a0, 630631
                  lb           a7, 233(s3)
                  lbu          gp, 233(s3)
                  lhu          a3, -4(s3)
                  auipc        t4, 724194
                  lhu          a3, -130(s3)
                  lb           a1, 177(s3)
                  sltu         t2, t5, a0
                  lh           t6, 132(s3)
                  srl          s7, s4, s4
                  ori          t4, zero, 1948
                  lb           s1, 51(s3) #end riscv_load_store_rand_instr_stream_6
436:              sltu         s8, a5, zero
                  srli         s0, s10, 31
                  sltiu        a5, t2, 800
                  andi         s5, ra, 442
440:              xori         ra, s4, -1627
                  and          a1, s1, a4
                  slli         s9, a5, 7
                  beq          s5, sp, 451f
                  auipc        a0, 771796
                  la           t6, region_0+1970 #start riscv_load_store_rand_instr_stream_3
                  xori         s4, ra, 1170
                  xor          s9, a0, gp
                  lb           s6, -33(t6)
                  sll          s7, tp, a3
                  sh           t3, -62(t6)
                  lb           s3, 18(t6)
                  sub          s11, s4, s4
                  lbu          a1, 0(t6)
                  sll          t2, t0, s6
                  sb           a5, 18(t6)
                  slti         ra, tp, -17
                  sb           sp, -45(t6)
                  sh           a0, -34(t6)
                  srl          a7, gp, s7
                  sub          s11, a6, a3
                  slli         gp, s3, 16
                  lb           s1, -2(t6)
                  srli         a4, a2, 28
                  andi         s5, t4, 324
                  nop
                  sb           s9, -6(t6)
                  sll          t0, s5, t4
                  or           a7, a4, a5
                  slt          sp, a1, s11
                  andi         t0, s10, 306
                  srl          gp, s3, s9
                  lbu          s7, -43(t6)
                  sb           a3, 29(t6)
                  lbu          a1, 25(t6)
                  lw           a4, 2(t6)
                  lhu          s7, 2(t6)
                  xor          ra, s9, zero
                  sltu         s2, a6, a3
                  sub          a6, a2, a1
                  sltiu        s3, a6, -1516
                  lw           t2, 18(t6)
                  or           s0, a0, t4
                  sb           s2, 21(t6)
                  lb           s2, -31(t6)
                  lbu          a6, -26(t6)
                  xori         sp, a7, 1714
                  lbu          s11, -61(t6)
                  xor          t0, gp, t6
                  ori          t4, a1, -1188
                  sltiu        s11, tp, 1380
                  srli         s4, t1, 8
                  lw           t0, 18(t6)
                  lb           t1, 9(t6)
                  andi         t4, t1, -1060
                  lh           a0, -46(t6)
                  lbu          s0, 28(t6)
                  lbu          s6, 12(t6)
                  sw           a2, -34(t6)
                  lb           s0, -12(t6)
                  lw           a3, 14(t6) #end riscv_load_store_rand_instr_stream_3
                  andi         a4, t2, -345
                  slli         s4, a4, 25
                  and          a3, t4, a6
                  beq          ra, a1, 456f
                  srli         gp, a5, 15
                  bgeu         s5, gp, 460f
451:              srl          s1, t1, t3
                  ori          s3, s7, -92
453:              and          t0, s6, s11
                  slli         s2, s4, 20
                  bne          s8, s1, 474f
456:              sltiu        s2, a1, 1926
                  beq          s7, s4, 459f
                  bne          s0, s10, 474f
459:              slli         a4, ra, 24
460:              xor          t2, s4, a5
                  srai         s0, gp, 18
                  lui          t0, 409573
                  srl          a6, gp, t6
                  slti         s11, a2, -2005
                  srai         s2, a7, 21
                  sub          a5, a4, a7
                  blt          t2, s5, 471f
                  slli         s4, t6, 14
                  bne          a4, a0, 483f
                  sltiu        s7, ra, -1071
471:              bgeu         t1, s5, 477f
                  xor          s10, t1, s1
                  slt          a7, a1, a3
474:              bltu         t6, a0, 479f
                  slli         s9, t4, 21
                  srl          a5, a0, s6
477:              bge          tp, s6, 494f
                  bge          s7, sp, 482f
479:              slli         a6, a1, 4
                  srl          s2, s0, tp
                  srli         s4, a0, 21
482:              xori         s11, t2, 1938
483:              beq          zero, gp, 493f
                  bne          s10, t3, 486f
                  bgeu         t6, sp, 504f
486:              slti         s8, s7, -1688
                  bge          t4, s6, 494f
                  sra          s3, tp, s6
                  blt          s8, t3, 499f
                  sltu         a5, t1, s3
                  sub          a0, a7, a4
                  andi         s10, s9, -1738
493:              sltiu        t1, a1, 1204
494:              lui          s7, 231095
                  add          sp, t5, gp
                  lui          t0, 545916
                  sub          s3, a2, t6
                  slti         a6, s7, -728
499:              srli         ra, s8, 6
                  slli         s2, s9, 1
                  slti         s9, a7, 1525
                  sltu         a4, s9, s6
                  srl          ra, a0, a5
504:              addi         s1, s7, 433
                  xor          s10, a3, ra
                  sub          s2, t4, s0
                  sub          zero, a5, s7
                  slti         t0, t5, 1319
                  beq          s3, zero, 516f
                  slt          a1, a7, s1
                  ori          t0, a1, 1316
                  slli         s7, t1, 25
                  blt          s1, s6, 523f
                  addi         s7, s7, 1232
                  xori         t4, t3, -1170
516:              bltu         a4, s4, 518f
                  srli         tp, a1, 27
518:              add          a7, s0, a1
                  ori          s9, t5, 306
                  beq          s4, sp, 522f
                  auipc        tp, 477922
522:              bne          gp, s1, 526f
523:              addi         s9, a7, -1861
                  lui          tp, 238346
                  slli         a6, s8, 5
526:              bgeu         a0, a5, 539f
                  srl          a0, a7, s10
                  and          s11, s8, s10
                  and          t2, sp, t0
                  sltiu        s5, s3, 889
                  and          s4, zero, t4
                  srai         a4, sp, 1
                  sltiu        s4, s8, -1785
                  slti         zero, s1, 1934
                  bne          a6, sp, 550f
                  nop
                  bltu         s10, zero, 539f
                  xor          a5, a3, t5
539:              sltiu        a1, s11, -782
                  sltiu        sp, a3, 1909
                  sltiu        t4, s1, 1243
                  bne          t0, s10, 546f
                  bltu         s2, t6, 563f
                  slt          a5, a1, a2
                  sll          sp, s2, s9
546:              auipc        tp, 595918
                  beq          s5, gp, 553f
                  sltiu        s3, t6, 1019
                  ori          a4, sp, 1809
550:              bne          s3, t0, 553f
                  srl          ra, s9, zero
                  sub          a0, a4, a7
553:              sub          s7, gp, a1
                  bltu         s5, s8, 558f
                  nop
                  or           s0, s9, s11
                  slti         s9, a4, -974
558:              andi         tp, a2, 1050
                  auipc        a5, 184115
                  add          gp, s4, a0
                  slti         t6, a4, -144
                  nop
563:              and          a6, s10, s8
                  beq          tp, s6, 570f
                  srli         gp, a4, 24
                  add          s4, s3, ra
                  or           t0, t3, a7
                  bne          a4, s5, 570f
                  slli         a5, t1, 0
570:              auipc        a3, 705950
                  srai         s4, t6, 17
                  srli         a3, s7, 28
                  xor          a1, tp, s7
                  lui          s3, 893888
                  andi         ra, s6, 473
                  add          s4, s0, gp
                  bne          tp, t2, 579f
                  add          gp, a6, s5
579:              sub          a4, s1, s0
                  nop
                  bge          t0, t3, 594f
                  lui          s7, 239131
                  slt          t0, s6, a4
                  or           a7, s7, t0
                  slti         s3, t1, -1690
                  beq          a4, t4, 600f
                  xor          s2, t5, a3
                  beq          s4, a1, 605f
                  srli         s3, a1, 11
                  bltu         s1, s3, 598f
                  or           s11, a7, s3
                  sra          a4, a5, a1
                  srli         s5, zero, 21
594:              sub          a3, zero, a5
                  lui          zero, 576309
                  add          s11, a0, s0
                  slli         tp, a3, 14
598:              or           a4, a1, t1
                  bgeu         ra, s10, 614f
600:              or           s8, a0, s7
                  and          s11, s10, s5
                  lui          t1, 363634
                  andi         t1, s6, 236
                  andi         s6, t3, -1145
605:              beq          a5, ra, 612f
                  lui          gp, 592866
                  xor          a5, s9, a7
                  addi         s7, t1, -1235
                  xor          t2, s0, s6
                  slli         tp, s1, 11
                  slli         t4, s11, 22
612:              beq          s2, s4, 622f
                  nop
614:              add          t4, t3, s3
                  sll          a6, a7, s6
                  add          zero, s3, sp
                  slli         t6, tp, 24
                  ori          s9, s8, -99
                  lui          t1, 13993
                  xori         s0, t4, 1691
                  and          a0, s8, t5
622:              slt          sp, a6, a2
                  sub          s7, t3, s3
                  srai         tp, a6, 6
                  blt          t5, zero, 629f
                  ori          a1, s7, -1098
                  bne          a0, s3, 630f
                  xor          a7, s1, a7
629:              srai         sp, a3, 2
630:              srai         s11, a3, 15
                  beq          s3, t6, 633f
                  lui          s8, 981824
633:              srli         t1, a1, 3
                  xor          gp, s5, t4
                  sltiu        s3, a5, 1483
                  nop
                  ori          s2, zero, 707
                  lui          s0, 704799
                  blt          t4, s7, 641f
                  addi         t6, a1, -1705
641:              lui          sp, 835175
                  lui          gp, 541885
                  lui          t0, 16538
                  slli         s8, a3, 26
                  slt          s2, a4, a7
                  or           t0, t4, s0
                  bgeu         s3, a7, 651f
                  slli         a5, a2, 22
                  addi         s4, s10, 397
                  add          s9, tp, t2
651:              slt          t4, s4, t4
                  srl          tp, s3, s4
                  bge          t6, a1, 657f
                  sub          a4, a6, s3
                  srli         a1, a3, 24
                  xori         s8, t1, 205
657:              addi         s11, s5, -1568
                  slti         t1, t6, 1617
                  sra          zero, s10, t6
                  bltu         sp, s6, 670f
                  slt          sp, a2, a6
                  srai         s5, s4, 22
                  bge          t4, t4, 673f
                  add          a0, t2, s2
                  sub          s2, a5, a2
                  nop
                  ori          t1, t4, 1169
                  sll          a1, s8, t3
                  slli         a5, t6, 28
670:              nop
                  sll          ra, gp, s3
                  sll          s6, s1, t1
673:              srai         t1, s3, 20
                  addi         ra, a5, 259
                  xori         t4, s0, 1599
                  bgeu         zero, t0, 696f
                  addi         s8, tp, -260
                  add          a6, a5, t0
                  blt          t1, t3, 698f
                  sll          a7, t0, s11
                  andi         s10, a5, -440
                  or           t6, t6, t6
                  la           t2, region_1+1319 #start riscv_load_store_rand_instr_stream_7
                  lb           a7, -1(t2)
                  lb           a0, -5(t2)
                  lbu          a4, -8(t2)
                  lb           a4, -11(t2)
                  lb           s9, 15(t2)
                  sltu         s0, t0, t1
                  slli         a5, s0, 31
                  lbu          s4, 3(t2)
                  lhu          s2, 13(t2)
                  sb           s10, -16(t2)
                  slli         s10, s11, 3
                  sub          s10, s1, s0
                  lhu          gp, 15(t2)
                  srl          gp, s9, s7
                  sltiu        gp, s1, -1658
                  lw           s10, -7(t2)
                  lui          ra, 769058
                  sh           a7, -5(t2)
                  lbu          a1, 14(t2)
                  or           t1, s4, s3
                  slt          zero, t0, s4
                  andi         a5, a6, 1210
                  xor          a7, s8, s6
                  sltu         tp, t4, tp
                  slti         s5, t3, -802
                  slti         t0, a0, -1035
                  auipc        s7, 318863
                  lbu          a5, -8(t2)
                  andi         s5, t6, -1445
                  lhu          s4, 11(t2)
                  sb           s11, 9(t2)
                  add          s4, s0, a6
                  srl          ra, a2, a5
                  sltiu        a1, s6, -1344
                  lbu          s0, -6(t2)
                  lb           t0, -8(t2)
                  lbu          a1, -12(t2)
                  or           s1, a0, a1
                  lhu          s5, 13(t2)
                  sb           t2, -16(t2)
                  sra          s1, s4, s1
                  lui          s10, 81713
                  lhu          s6, -13(t2)
                  lbu          t0, 0(t2)
                  sltiu        gp, s4, -1582
                  lhu          s0, 9(t2)
                  lb           t4, -8(t2)
                  lbu          s7, 16(t2)
                  sb           gp, -11(t2)
                  lbu          gp, 7(t2)
                  lb           s7, -4(t2)
                  sb           tp, 8(t2) #end riscv_load_store_rand_instr_stream_7
                  beq          t0, a6, 693f
                  srai         zero, a5, 15
                  auipc        s10, 904307
                  bgeu         s5, t0, 691f
                  srai         sp, a0, 4
                  srli         a6, s7, 22
                  srl          a4, s2, s2
                  auipc        s4, 193520
691:              auipc        s7, 750663
                  lui          ra, 440066
693:              sll          a5, a5, s11
                  xori         sp, zero, -1060
                  bltu         s2, a1, 702f
696:              add          t2, zero, a6
                  slli         zero, tp, 25
698:              sltu         s5, a0, a1
                  srai         s0, s10, 29
                  ori          a3, t5, -506
                  bltu         zero, s10, 703f
702:              blt          s0, t1, 718f
703:              bgeu         a7, s0, 722f
                  and          s6, gp, a3
                  slt          s5, s2, a5
                  bgeu         s8, t5, 725f
                  sltiu        s10, s4, -1256
                  bgeu         a3, a0, 714f
                  and          t2, a7, t6
                  ori          t1, t0, 839
                  xor          zero, s2, t6
                  or           s2, a0, s8
                  srai         s8, t6, 31
714:              bgeu         a7, s7, 722f
                  and          t4, s10, a0
                  slli         s10, a4, 5
                  bge          a4, s9, 721f
718:              srl          a4, t4, s5
                  or           a5, a5, s11
                  add          a5, t1, a2
721:              srai         s11, t6, 12
722:              nop
                  addi         s9, s9, 367
                  bltu         a7, a6, 734f
725:              xori         t0, t4, -1830
                  slti         t0, tp, -1485
                  bgeu         a7, sp, 746f
                  slli         a6, s2, 26
                  blt          sp, t5, 735f
                  add          a3, t0, s5
                  bltu         s10, a0, 738f
                  sltiu        s3, s6, 1260
                  slti         s4, t6, 272
734:              sll          gp, s9, ra
735:              blt          a3, s8, 754f
                  auipc        s6, 517438
                  bltu         s2, s9, 744f
738:              bne          s6, a1, 751f
                  bgeu         sp, a2, 749f
                  sll          s7, t5, a3
                  bge          s2, a5, 745f
                  addi         t1, t4, 857
                  sltu         t2, a7, a5
744:              nop
745:              and          a1, a7, t0
746:              slt          a4, a3, s1
                  blt          t3, t2, 766f
                  addi         tp, a0, 1100
749:              bgeu         s4, s8, 759f
                  slli         a3, t1, 24
751:              and          s7, s11, sp
                  lui          t0, 840951
                  sltu         s4, t5, t1
754:              slt          s5, a1, s4
                  srli         a7, s9, 30
                  nop
                  nop
                  auipc        s4, 361794
                  slt          s5, t2, t2
                  nop
sub_3_j6:         jal          t1, sub_5 #jump sub_3 -> sub_5
                  andi         t1, gp, 222
                  srl          a1, a0, t4
                  and          sp, s9, s3
                  bgeu         gp, s8, 773f
759:              xor          a3, a3, s2
                  blt          tp, ra, 766f
                  blt          a7, t6, 765f
                  xori         s1, t3, -693
                  xori         s0, s0, -191
                  nop
765:              andi         s10, t4, 360
766:              srai         s8, s3, 3
                  sltiu        s9, a4, -1238
                  slti         a6, s1, -375
                  ori          sp, s9, 585
                  and          a6, a1, s10
                  sra          t2, s8, t0
                  bge          t0, s7, 780f
773:              xori         a1, sp, 209
                  sltu         s8, a0, t4
                  srai         s8, ra, 5
                  auipc        sp, 606240
                  lui          a5, 792954
                  bltu         a5, ra, 783f
                  srl          s0, t4, t5
780:              bge          zero, s4, 782f
                  auipc        sp, 625088
782:              sll          s2, t6, s0
783:              srai         t4, zero, 13
                  addi         t1, tp, 1537
                  nop
                  srai         a1, a0, 15
                  beq          s5, a2, 807f
                  ori          ra, s8, -95
                  sub          a4, s0, t3
                  sra          s6, s6, t5
                  sll          t4, t3, t3
                  andi         a4, s8, 1200
                  bge          t1, a6, 807f
                  andi         s2, s3, -1723
                  slti         s0, t3, 1356
                  lui          a4, 960740
                  and          s6, a1, ra
                  slti         a5, a3, 1298
                  nop
                  sra          s8, s1, s6
                  add          a0, zero, a1
                  ori          s3, s4, 2041
                  auipc        s3, 275989
                  auipc        t6, 339316
                  lui          a3, 73446
                  slti         t6, t5, -1738
807:              xori         ra, s9, 1616
                  ori          s6, sp, -1442
                  sra          tp, s10, t1
                  xor          a4, s5, t0
                  bge          s7, gp, 814f
                  ori          t0, sp, 1104
                  ori          s0, s9, 1762
814:              sra          s9, s5, a4
                  and          t4, s5, a0
                  bgeu         t2, tp, 818f
                  srai         s2, s8, 23
818:              sltiu        s3, a0, 1603
                  and          tp, s1, s10
                  beq          t0, t6, 837f
                  la           sp, region_0+1180 #start riscv_load_store_rand_instr_stream_8
                  and          zero, t2, s6
                  lbu          s0, -109(sp)
                  lb           a4, -59(sp)
                  lb           gp, -209(sp)
                  ori          s7, a3, -307
                  lbu          s3, -16(sp)
                  srli         s3, t0, 26
                  lui          s8, 189416
                  lb           a4, -12(sp)
                  lbu          s9, -75(sp)
                  lb           t0, -157(sp)
                  xori         s2, s5, -996
                  lw           ra, -36(sp)
                  sh           t2, -254(sp)
                  lui          s11, 612271
                  sra          s10, t4, a2
                  andi         s9, gp, -1743
                  lw           t6, -28(sp)
                  lh           a5, -244(sp)
                  sltu         a6, a1, s10
                  add          a3, t4, s9
                  slti         s3, t0, 240
                  lbu          a4, -16(sp)
                  lbu          t4, -137(sp)
                  sb           t5, -87(sp)
                  lw           a6, -72(sp)
                  and          s2, a0, t5
                  sh           s9, -156(sp)
                  lbu          s7, 95(sp)
                  sb           a7, 196(sp)
                  sh           s0, -182(sp)
                  sb           a2, -107(sp)
                  or           ra, a7, s9
                  sb           a0, -55(sp)
                  sltiu        s0, s9, 727
                  slt          t2, s4, sp
                  lhu          s11, -238(sp)
                  sra          t6, t0, zero
                  sb           s6, 181(sp)
                  lh           t2, -186(sp)
                  srai         s10, a1, 7
                  lw           s0, -76(sp)
                  auipc        tp, 50316
                  lb           s11, 4(sp)
                  lbu          a4, 239(sp) #end riscv_load_store_rand_instr_stream_8
                  slt          a5, tp, s4
                  bltu         s7, s1, 830f
                  andi         s0, s8, -1488
                  bne          s7, s6, 826f
                  sll          s0, ra, s11
826:              srli         a1, t5, 23
                  bge          s1, t2, 831f
                  slt          t0, s11, a0
                  auipc        a7, 998091
830:              auipc        t1, 1027981
831:              addi         s8, a5, 1050
                  nop
                  sltiu        a7, a1, 959
                  sub          ra, s7, t5
                  sra          t0, t5, s4
                  ori          a6, s1, -767
837:              ori          s4, s3, 1205
                  bne          a5, s6, 854f
                  sltu         ra, s11, s6
                  or           t4, a3, s8
                  bgeu         s6, s3, 843f
                  bgeu         t5, t0, 852f
843:              xori         t1, t6, -1407
                  bgeu         a4, t0, 846f
                  andi         t6, s7, 1168
846:              nop
                  slti         t6, s7, 1076
                  xori         sp, a6, -328
                  sra          s1, t0, a7
                  and          s10, s7, a2
                  sltu         tp, t5, s7
852:              bge          a1, s4, 862f
                  xor          zero, t3, tp
854:              sra          a7, s4, s9
                  ori          a5, a5, -1517
                  srai         t4, gp, 6
                  and          s0, a7, t3
                  sltiu        s6, t3, -1966
                  xori         a7, ra, -1350
                  andi         t1, t4, -185
                  slt          a1, t0, s3
862:              slti         a7, s3, 1297
                  sub          s5, s1, a1
                  sltiu        a0, s1, -1969
                  sltiu        s5, t3, -558
                  addi         a1, zero, -1856
                  bgeu         a5, t4, 882f
                  add          a5, tp, s2
                  bgeu         s4, zero, 889f
                  andi         zero, s5, 75
                  sll          s6, t2, t3
                  slli         t1, s0, 1
                  srl          sp, t6, s10
                  slt          s2, s11, a1
                  srli         a4, s8, 15
                  slli         a7, a7, 18
                  or           s10, a6, t5
                  sltu         s8, t2, s8
                  sub          s3, a5, t5
                  bgeu         s0, t1, 885f
                  srl          zero, a2, s7
882:              blt          s6, sp, 886f
                  add          s4, t1, t5
                  srl          s6, ra, s6
885:              sub          ra, s11, a6
886:              sltiu        s6, a5, 180
                  lui          t2, 659125
                  sltiu        s0, s10, -1047
889:              sltiu        s2, a0, 951
                  auipc        s0, 869748
                  bgeu         s0, s6, 901f
                  slt          a7, a1, tp
                  srai         s4, a3, 30
                  bltu         t1, t1, 901f
                  sltiu        s10, t1, -1128
                  sub          a0, t6, tp
                  slli         t4, s10, 13
                  lui          ra, 710352
                  nop
                  add          a5, ra, a2
901:              ori          t4, s3, 307
                  slt          sp, t5, a5
                  add          gp, a3, s2
                  or           ra, a7, gp
                  and          a1, t0, a6
                  xor          s2, sp, s1
                  auipc        s3, 672208
                  bne          s9, t4, 922f
                  srl          s10, s2, s1
                  auipc        tp, 1024813
                  ori          a6, s6, 1162
                  or           s11, s9, tp
                  beq          s8, tp, 923f
                  xor          t2, s3, t0
                  slli         tp, gp, 5
                  bgeu         a0, a6, 924f
                  auipc        tp, 533839
                  bne          s1, s7, 924f
                  ori          a3, t2, -1388
                  bgeu         s0, s0, 923f
                  blt          s5, s1, 940f
922:              srai         t6, s6, 25
923:              ori          s8, s0, 861
924:              add          gp, s8, s6
                  bne          a4, t4, 944f
                  or           s10, s10, s3
                  addi         a0, s6, -1901
                  add          t1, s4, s1
                  sub          tp, s9, ra
                  and          sp, s10, t6
                  sltu         t0, s2, a1
                  nop
                  sra          s0, s7, a7
                  nop
                  ori          s9, a5, -1893
                  sra          a3, s8, a5
                  blt          s3, a7, 939f
                  addi         s5, a5, -380
939:              sll          a6, a6, s10
940:              blt          ra, s4, 953f
                  sltu         a4, s7, t2
                  nop
                  auipc        s7, 584806
944:              andi         s4, t2, 939
                  sltiu        a6, s9, 568
                  bne          gp, t6, 954f
                  slt          t1, gp, s2
                  bge          tp, t2, 952f
                  auipc        s0, 599615
                  slti         t0, t6, 673
                  beq          sp, s6, 957f
952:              auipc        a5, 192486
953:              bltu         a5, t1, 955f
954:              nop
955:              sra          zero, s8, s7
                  ori          a7, t6, 1559
957:              bne          s2, s9, 959f
                  addi         a1, a6, -1284
959:              andi         t1, s10, 847
                  bge          s2, a0, 962f
                  andi         s8, s9, -515
962:              nop
                  slt          a1, t0, gp
                  sltu         a4, s9, ra
                  slt          s5, a1, s6
                  sltu         s11, t4, a6
                  beq          a4, tp, 986f
                  sub          t0, s6, a1
                  add          zero, a4, t6
                  beq          gp, a2, 987f
                  slli         s3, gp, 7
                  beq          s0, a5, 979f
                  andi         gp, s11, 1626
                  srl          s5, s3, ra
                  sub          t6, t3, ra
                  addi         s8, a3, 968
                  beq          a1, s10, 979f
                  ori          s7, t0, 1130
979:              bltu         s9, gp, 995f
                  slli         s2, a1, 1
                  xori         t2, a2, 144
                  add          tp, t4, gp
                  blt          s9, s9, 987f
                  beq          sp, t2, 994f
                  srl          s8, t5, t4
986:              lui          t1, 200815
987:              add          s4, gp, s3
                  xori         s0, gp, 276
                  xori         s4, t3, 1508
                  slti         a1, s0, -749
                  srli         a6, s10, 10
                  srai         s11, ra, 22
                  srl          t6, s0, t3
994:              srli         a3, zero, 4
995:              srai         s4, s3, 1
                  sub          s10, a4, tp
                  or           s5, s10, a0
                  add          a0, t1, s6
                  add          s6, a4, a6
                  slli         t0, s10, 13
                  bltu         tp, t4, 1005f
                  bge          s1, t1, 1006f
                  add          a5, a3, a4
                  srl          a7, a3, a7
1005:             srai         a3, zero, 25
1006:             blt          t2, a5, 1008f
                  srli         s1, zero, 11
1008:             sll          t0, tp, s5
                  srli         s8, tp, 23
                  addi         s10, a0, -1320
                  bgeu         s11, a3, 1014f
                  blt          a0, tp, 1014f
                  lui          zero, 821583
1014:             slti         t4, s5, 1958
                  ori          s8, s2, 1522
                  slli         s9, s4, 30
                  sra          s10, gp, s11
                  xori         gp, t0, -77
                  or           s6, a6, t3
                  andi         s1, a5, 539
                  sub          t1, t0, s5
                  sra          t4, s1, sp
                  add          gp, a2, a4
                  addi         a0, t5, 481
                  add          a3, t3, s3
                  sltu         s0, a0, gp
                  auipc        t6, 534086
                  lui          zero, 483780
                  and          s6, gp, a5
                  sra          s10, a1, a4
                  bge          s8, s7, 1050f
                  blt          s1, s8, 1045f
                  addi         t0, t3, 2031
                  bgeu         t1, t3, 1053f
                  srl          t2, a0, zero
                  slt          s11, gp, t6
                  blt          t6, a3, 1047f
                  srai         t4, a0, 30
                  sll          s11, s8, sp
                  or           s1, gp, sp
                  slti         s9, t1, 1447
                  bltu         s2, s0, 1044f
                  sltu         a3, s9, t0
1044:             or           s1, s9, zero
1045:             srai         s9, zero, 10
                  sub          sp, gp, sp
1047:             bltu         a6, s3, 1063f
                  bne          zero, gp, 1058f
                  or           s6, a4, gp
1050:             slt          s5, t2, s3
                  slti         t1, t6, 154
                  srli         t6, t6, 10
1053:             bgeu         a1, a6, 1061f
                  addi         t1, a5, 1562
                  bltu         t3, a7, 1075f
                  blt          a2, ra, 1063f
                  bltu         t5, s2, 1061f
1058:             lui          t1, 593346
                  lui          s2, 483752
                  slt          s3, sp, sp
1061:             srli         s8, s11, 2
                  bgeu         a1, s2, 1077f
1063:             slt          a7, s9, a7
                  and          a7, s4, t2
                  and          t2, s11, t0
                  and          sp, s11, s4
                  and          sp, zero, tp
                  xor          a5, t4, t5
                  bge          t5, s5, 1071f
                  bne          t2, a3, 1076f
1071:             sltu         s6, s1, t6
                  addi         a4, s8, -1684
                  bge          s3, t4, 1083f
                  sra          t6, s6, a3
1075:             ori          s7, gp, -2034
1076:             and          t1, tp, a2
1077:             sll          s10, s11, sp
                  bge          a1, t5, 1086f
                  andi         a0, sp, 1149
                  slli         a4, s9, 8
                  auipc        t0, 317739
                  srai         t1, t3, 18
1083:             xori         s8, a4, 1282
                  lui          t1, 831725
                  add          s3, t6, a6
1086:             bne          s3, a1, 1103f
                  lui          s10, 790359
                  blt          a6, a5, 1098f
                  lui          s5, 177091
                  sra          t1, a1, s3
                  slti         s0, t0, -173
                  srli         a5, s2, 22
                  or           gp, t5, s6
                  slli         s0, a2, 15
                  srl          s0, t3, a5
                  slti         t0, t2, -260
                  sll          a6, ra, t6
1098:             ori          s5, t1, -1203
                  sub          s4, t5, a5
                  ori          s10, t6, -1301
                  slt          a6, sp, s5
                  bgeu         t5, gp, 1108f
1103:             sub          a4, s8, sp
                  add          gp, t4, s7
                  bge          a1, s7, 1110f
                  sra          t6, s8, a4
                  ori          t0, s10, -910
1108:             slti         a4, tp, -943
                  bge          s3, s11, 1113f
1110:             ori          t4, s4, 899
                  srli         a0, t2, 15
                  srl          a4, s8, s0
1113:             srai         t4, a1, 24
                  slli         a0, t6, 17
                  srli         a5, a1, 26
                  sll          t1, a3, t3
                  add          s2, t6, s1
                  srai         s8, t3, 20
                  slti         s8, s8, 517
                  bne          s10, t0, 1134f
                  beq          s3, a4, 1128f
                  ori          t0, s11, 758
                  lui          s6, 801466
                  slti         t1, a3, -1688
                  sltiu        t1, sp, 190
                  bge          s7, s5, 1128f
                  slt          a6, t5, t2
1128:             srl          a0, t0, t6
                  bne          s2, a4, 1133f
                  sltiu        s11, a6, -1671
                  blt          t4, s2, 1150f
                  blt          sp, s5, 1145f
1133:             addi         a0, a1, -797
1134:             slt          s11, a0, s10
                  sra          s8, s7, s10
                  srl          a5, a7, s9
                  sltu         t2, t0, s3
                  sll          s3, t2, t2
                  add          a4, s1, s10
                  or           a4, s5, t6
                  blt          s7, s0, 1156f
                  srli         s5, t2, 1
                  add          s8, ra, t2
                  srai         s1, t6, 0
1145:             srli         s6, tp, 6
                  sub          a7, a1, t1
                  srli         s8, a0, 27
                  xori         a1, t6, 1071
                  nop
1150:             beq          tp, a5, 1156f
                  andi         s10, t1, 1132
                  auipc        s3, 228024
                  sltiu        a4, a3, 545
                  xori         s3, zero, 28
                  beq          s10, s10, 1165f
1156:             srai         t1, zero, 26
                  add          a4, t3, s7
                  add          s2, a3, a4
                  auipc        s7, 925151
                  bge          s6, t1, 1168f
                  and          s0, t4, a7
                  add          a3, a2, a7
                  bge          tp, a5, 1165f
                  srai         ra, a0, 1
1165:             srli         s6, a5, 6
                  srai         ra, t1, 6
                  sltu         s4, s10, a1
1168:             add          s9, t5, s8
                  sub          t1, a4, s8
                  nop
                  bltu         a1, t3, 1188f
                  auipc        s5, 647177
                  srl          s5, gp, s3
                  add          s3, s7, a2
                  sra          s0, s3, tp
                  or           s0, s5, t1
                  auipc        s10, 599825
                  sltu         a0, a6, t1
                  or           s3, zero, s6
                  bltu         s6, s7, 1183f
                  sltiu        tp, s9, -1448
                  addi         s9, s4, -1310
1183:             nop
                  andi         tp, s8, 170
                  andi         a6, s7, -951
                  srai         s9, s3, 5
                  bltu         zero, a3, 1195f
1188:             srl          t6, a0, a4
                  sll          t4, a5, a5
                  blt          a5, t4, 1194f
                  andi         a0, s1, 235
                  sltu         s11, t4, t4
                  sltiu        s0, s8, 1765
1194:             add          s9, s5, s11
1195:             xor          a7, t6, a6
                  xori         a6, zero, -324
                  nop
                  srl          s7, gp, s7
                  nop
                  sub          t2, s7, a2
                  xor          s0, a0, s1
                  sub          a4, a6, t2
                  bltu         a1, a7, 1213f
                  sltu         s4, t3, s9
                  ori          s0, t0, 313
                  sltiu        t2, s4, 143
                  xori         s9, a5, -1627
                  or           a3, t4, s11
                  sltu         s2, s6, s0
                  beq          a7, t5, 1216f
                  nop
                  bgeu         zero, s3, 1232f
1213:             andi         s5, s7, -194
                  bne          a0, t5, 1216f
                  sra          a6, s6, s4
1216:             lui          s4, 826856
                  nop
                  lui          tp, 501278
                  slli         t6, t0, 15
                  lui          s3, 152978
                  sltiu        s5, ra, 1065
                  blt          t6, s6, 1236f
                  xori         a3, a2, -1498
                  xori         a0, sp, -1489
                  sll          s2, t2, a2
                  slt          s3, t4, s2
                  nop
                  blt          a2, t2, 1235f
                  sll          a1, gp, a6
                  and          t0, zero, t0
                  xor          s0, tp, s7
1232:             andi         s4, a5, 219
                  and          s9, a7, t3
                  sll          s1, t2, s11
1235:             srli         a4, s3, 8
1236:             addi         a4, tp, -955
                  slli         t2, t4, 1
                  sll          tp, s4, a7
                  ori          s5, s2, -1169
                  blt          sp, s8, 1250f
                  or           t4, a5, a5
                  addi         s2, s7, -718
                  ori          s2, s6, -1146
                  slti         a7, s1, 1720
                  bgeu         a3, tp, 1264f
                  xori         a4, a3, -1155
                  or           t0, tp, a6
                  sltiu        t1, a5, 1335
                  or           s2, s6, sp
1250:             srli         t0, s3, 6
                  bltu         a0, t5, 1255f
                  bne          s6, s6, 1268f
                  srl          a1, a5, a0
                  srli         gp, a3, 25
1255:             slt          s2, a7, s9
                  sll          a3, s2, a1
                  srai         s5, s8, 19
                  and          a4, s3, a6
                  bgeu         s4, s5, 1261f
                  srai         a6, a4, 22
1261:             slt          s6, ra, tp
                  bgeu         zero, a3, 1266f
                  bltu         s4, a1, 1270f
1264:             bgeu         a3, s8, 1274f
                  xori         s9, sp, 1501
1266:             bgeu         s8, a1, 1285f
                  xori         t4, t3, 1332
1268:             sll          t0, a6, a2
                  add          tp, a5, s11
1270:             beq          a5, t5, 1289f
                  sub          ra, s9, s0
                  lui          tp, 508288
                  sll          t1, s7, t3
1274:             srl          a3, tp, a4
                  slti         s2, s1, 806
                  andi         s9, t2, -974
                  sltiu        t0, s0, -1706
                  addi         t6, s8, -1151
                  slti         t2, a2, 932
                  or           s3, sp, gp
                  sltiu        a0, a6, 742
                  lui          s6, 35241
                  addi         s3, t4, 562
                  blt          s6, t3, 1289f
1285:             lui          tp, 512980
                  addi         s10, s3, 674
                  bge          a7, t4, 1291f
                  bne          t4, s3, 1290f
1289:             srli         s1, a5, 29
1290:             sltiu        s0, a0, -1478
1291:             srai         ra, a3, 11
                  addi         s2, a3, -1345
                  or           s7, s6, s5
                  srli         a6, tp, 22
                  slti         s0, s9, -1619
                  sra          gp, s4, s0
                  add          s2, a6, s5
                  srl          a7, t3, t1
                  beq          ra, tp, 1301f
                  srli         s2, a7, 3
1301:             sll          a4, s3, a5
                  xor          zero, t1, a6
                  addi         tp, s1, -1593
                  slti         t4, zero, -1768
                  xori         s9, a4, 435
                  ori          s8, s1, -1694
                  add          s8, s9, t4
                  bge          gp, a2, 1322f
                  andi         s5, a4, -1162
                  sltu         t6, s0, t1
                  srl          a5, a6, gp
                  lui          a0, 740808
                  bltu         s3, s0, 1323f
                  ori          s4, t4, -36
                  lui          a5, 892136
                  xori         s6, s10, -1453
                  sltu         s3, t1, sp
                  srli         tp, a5, 20
                  sll          t0, t0, t4
                  addi         a0, s6, -761
                  lui          s10, 326358
1322:             nop
1323:             slli         t2, t5, 24
                  sltiu        s2, a1, 347
                  slti         sp, a1, -1576
                  and          s7, s3, t4
                  slt          t2, s7, s2
                  slt          s2, s1, gp
                  srai         t1, s9, 16
                  beq          s7, zero, 1334f
                  and          s4, a5, s1
                  xor          s6, a0, s9
                  andi         s10, ra, -1746
1334:             beq          sp, a1, 1344f
                  addi         a3, a3, 1008
                  sll          a0, s9, zero
                  sub          s8, s11, tp
                  or           s5, t3, t6
                  slli         s6, s0, 22
                  andi         a1, a3, -933
                  bltu         s8, gp, 1343f
                  or           a3, a4, t3
1343:             sltiu        a1, s4, -90
1344:             sltiu        a7, s2, -544
                  lui          t2, 275034
                  sltu         a6, a4, t1
                  addi         t1, s0, 295
                  blt          a7, a4, 1364f
                  and          a1, a7, s4
                  bltu         s3, s1, 1370f
                  add          ra, t4, a4
                  blt          t3, ra, 1359f
                  sra          t1, tp, a1
                  lui          s10, 318088
                  bltu         s1, s8, 1360f
                  add          t1, s6, t3
                  sub          a3, gp, a1
                  andi         s7, a3, 757
1359:             and          s4, a6, a7
1360:             srl          s4, a3, zero
                  slti         s11, s8, 1896
                  slti         s0, s0, 1592
                  bgeu         s7, a7, 1382f
1364:             slt          s9, s5, s5
                  bge          t2, s8, 1384f
                  slli         s5, t6, 17
                  blt          a5, s1, 1374f
                  srli         tp, s2, 0
                  and          s1, t3, s3
1370:             sltiu        a3, a1, 1658
                  bge          a3, a5, 1390f
                  xori         s10, zero, -1833
                  slti         s5, t3, 1356
1374:             bne          sp, s4, 1378f
                  slli         s2, t1, 14
                  sra          a5, s2, a5
                  srl          s6, a0, s11
1378:             bltu         s11, t3, 1386f
                  nop
                  beq          a7, s7, 1393f
                  sra          t6, s10, s4
1382:             xori         s0, s4, -1214
                  addi         t2, t4, -413
1384:             add          gp, a0, s9
                  xori         zero, t1, 1764
1386:             srl          a6, a5, s3
                  bne          t5, s6, 1397f
                  slli         s4, s0, 29
                  sltu         s1, s8, t0
1390:             slt          s4, a2, s9
                  or           t0, s9, t3
                  slli         s1, s3, 21
1393:             beq          s8, s6, 1408f
                  slt          s3, sp, s6
                  sltu         s5, a2, t6
                  slt          a6, ra, s6
1397:             slt          t6, a2, gp
                  addi         gp, t0, 1859
                  and          a0, zero, t0
                  sll          a7, s7, ra
                  nop
                  nop
                  blt          a0, t3, 1406f
                  bge          ra, t1, 1408f
                  srai         s1, s11, 18
1406:             lui          s11, 596060
                  add          t4, t6, s5
1408:             addi         s6, s8, -1601
                  bne          s9, a4, 1411f
                  beq          s7, a6, 1418f
1411:             or           s7, a0, s6
                  blt          t2, s11, 1414f
                  and          zero, a5, s0
1414:             beq          zero, a1, 1416f
                  xori         s8, s11, 1421
1416:             blt          a5, s2, 1418f
                  slli         a1, a0, 25
1418:             auipc        s2, 60880
                  auipc        tp, 852967
                  sll          s7, s0, s9
                  or           s11, ra, a6
                  xori         t4, s4, -1121
                  slti         t2, a3, -232
                  and          s2, t4, s9
                  sub          a3, s5, a6
                  blt          t2, s1, 1430f
                  xor          s9, gp, a5
                  bge          s6, t1, 1434f
                  slli         t2, s7, 20
1430:             addi         a4, a6, -1348
                  xori         a5, s11, 1999
                  sra          tp, t1, a7
                  slti         s2, t4, -1805
1434:             beq          s0, t4, 1440f
                  xor          ra, t1, a1
                  nop
                  or           zero, a4, a4
                  addi         s3, s2, 572
                  add          a3, t4, s7
1440:             bge          t2, a2, 1457f
                  or           a0, a7, gp
                  bge          s4, sp, 1452f
                  addi         sp, s6, -729
                  bltu         tp, a7, 1446f
                  srai         a4, s7, 10
1446:             sltu         s1, s3, a6
                  slt          s7, s10, a1
                  lui          sp, 777591
                  sll          s10, t6, t5
                  and          t4, a5, s9
                  xori         a0, t1, -1414
1452:             add          a6, a1, ra
                  slti         s9, t1, -546
                  sltiu        zero, t6, -1195
                  sltu         s0, s9, a6
                  sll          s8, a6, tp
1457:             sltiu        t1, s7, -51
                  xori         s8, s11, -874
                  srai         tp, t5, 0
                  blt          a6, a6, 1480f
                  sub          ra, ra, ra
                  srli         a4, t4, 10
                  sll          s9, t2, t1
                  slti         t2, s0, 362
                  ori          a7, s11, -1034
                  srli         t4, a0, 7
                  add          a4, s1, a0
                  or           s10, a5, t3
                  sltiu        s7, s5, 1481
                  sltu         sp, gp, ra
                  sltu         a7, gp, t0
                  sub          s3, s11, ra
                  slt          s5, s0, s3
                  slt          s0, t1, s10
                  slti         s7, zero, -1447
                  bne          t0, s5, 1480f
                  srli         tp, s0, 1
                  and          s7, a0, t0
                  add          a5, sp, s0
1480:             sub          t6, s8, a4
                  srl          s0, s4, a2
                  xor          s4, a4, gp
                  bltu         s8, a0, 1493f
                  slt          zero, a1, s5
                  srai         s9, gp, 5
                  srai         a7, s10, 12
                  slli         a7, a5, 21
                  and          a7, s11, s6
                  ori          tp, s3, -1957
                  sll          s2, a6, t3
                  bgeu         a3, tp, 1507f
                  slt          s7, gp, s3
1493:             srai         s10, s9, 1
                  addi         gp, s1, 3
                  blt          t5, s6, 1499f
                  sltu         s5, a2, s10
                  sltu         a3, s5, t3
                  slli         sp, s6, 15
1499:             auipc        a7, 1017094
                  andi         s3, s3, 745
                  srli         s9, s1, 9
                  and          s3, a5, zero
                  bge          s5, a1, 1522f
                  sub          tp, s1, tp
                  blt          s3, t0, 1512f
                  lui          zero, 53437
1507:             nop
                  sltu         a6, zero, t0
                  andi         sp, t1, -675
                  sub          t0, t0, t4
                  or           s4, a3, s1
1512:             srai         t4, t0, 3
                  addi         s5, a4, -684
                  bltu         s4, s4, 1516f
                  bgeu         zero, s11, 1517f
1516:             ori          t1, a1, 846
1517:             sltiu        tp, t6, 2011
                  slti         a7, zero, -1769
                  nop
                  nop
                  srai         s10, t2, 19
1522:             blt          a3, a1, 1539f
                  sltiu        t4, a0, 72
                  lui          t2, 665453
                  addi         a3, sp, 996
                  sll          zero, a7, t3
                  slli         s9, a6, 28
                  ori          s4, s8, 1872
                  srl          s11, s4, a0
                  srl          sp, a3, t3
                  andi         a5, t0, -603
                  xori         a7, sp, -1508
                  sltiu        t1, s6, 1908
                  auipc        a5, 696512
                  xor          s0, a5, s11
                  sub          a4, s1, a5
                  add          t6, t6, ra
                  xori         s8, t4, 621
1539:             and          s0, s4, s8
                  beq          s3, ra, 1548f
                  add          s5, a1, gp
                  srl          a7, zero, a2
                  bge          s5, t0, 1562f
                  xori         s7, s9, -810
                  ori          a4, s1, 1269
                  blt          s3, t5, 1550f
                  slti         a5, t0, -1843
1548:             sub          s6, s7, t4
                  bltu         t5, t3, 1562f
1550:             bltu         a4, t6, 1569f
                  srl          a5, s9, s0
                  and          a3, t3, t5
                  sltiu        s0, a2, -1283
                  or           ra, t5, t6
                  ori          a7, s9, -1847
                  sltiu        s3, a4, -1238
                  xori         a4, t5, -968
                  and          a4, s4, gp
                  andi         s7, s6, 929
                  srl          t6, s4, s4
                  or           s4, s8, s7
1562:             bltu         a7, a6, 1572f
                  bge          a4, a5, 1569f
                  andi         s0, a7, 2043
                  blt          s8, s9, 1567f
                  andi         s11, s3, 1704
1567:             xor          s1, s7, s3
                  srai         a5, a3, 2
1569:             blt          zero, a0, 1572f
                  sra          sp, t0, s6
                  xor          s6, a7, t3
1572:             ori          s10, t5, 1793
                  srli         a3, t1, 14
                  slti         s4, a2, 1298
                  andi         t6, s0, 1867
                  blt          s7, t0, 1584f
                  bge          s9, t0, 1591f
                  sll          s9, a0, a1
                  sltu         s4, s2, s1
                  blt          s4, t2, 1590f
                  sra          s0, sp, a4
                  add          s2, t4, ra
                  or           a4, a5, t0
1584:             bltu         t2, a6, 1588f
                  slti         s9, s9, -911
                  sltiu        s6, a7, -1729
                  bne          gp, a0, 1597f
1588:             beq          s2, s8, 1603f
                  sub          tp, a7, ra
1590:             addi         s10, tp, -75
1591:             slt          s5, a1, s5
                  bgeu         t4, gp, 1597f
                  xori         a5, t3, -1165
                  srl          s1, ra, tp
                  bgeu         s0, t0, 1602f
                  sub          a4, a5, ra
1597:             bgeu         s9, s10, 1603f
                  xor          a0, s3, a1
                  lui          a5, 774913
                  sll          s9, t5, a0
                  blt          t1, zero, 1603f
1602:             and          s8, s0, t3
1603:             auipc        zero, 370148
                  srai         s7, zero, 10
                  add          s10, ra, zero
                  srli         t6, s5, 29
                  bge          s10, t3, 1609f
                  xori         s7, t2, -805
1609:             add          gp, a5, s2
                  addi         a7, s1, -260
                  nop
                  auipc        s5, 511013
                  nop
                  sra          s7, a0, t0
                  slt          s8, zero, a4
                  addi         ra, a4, -1244
                  and          s7, t6, s0
                  srli         t0, s1, 0
                  blt          a4, a1, 1625f
                  bgeu         s2, s5, 1622f
                  slli         a0, zero, 22
1622:             srai         s9, sp, 27
                  slti         a0, a4, 1659
                  bltu         s0, a4, 1630f
1625:             and          zero, a5, s8
                  xor          t6, s0, ra
                  auipc        t2, 400567
                  addi         a3, s5, -372
                  add          a1, zero, t1
1630:             srai         s11, s0, 5
                  sra          a1, s3, s9
                  auipc        a0, 361456
                  bltu         t4, s7, 1637f
                  and          s4, t6, a3
                  xori         s6, t6, -1448
                  and          zero, a4, a3
1637:             slti         t6, a1, -1498
                  bge          gp, t2, 1653f
                  addi         t6, sp, -1915
                  sltu         t0, s5, s1
                  or           ra, t6, zero
                  srai         s2, tp, 9
                  sra          t0, s11, a1
                  slli         a6, s3, 6
                  beq          a5, s4, 1648f
                  xor          s1, a5, s3
                  add          t0, a4, t0
1648:             ori          zero, s2, -1723
                  ori          t1, s4, -1293
                  bltu         tp, tp, 1652f
                  blt          a0, a1, 1659f
1652:             lui          s8, 121858
1653:             sub          a5, a5, s11
                  or           a1, t2, tp
                  sra          a0, s9, a2
                  slli         t0, t6, 20
                  andi         s5, s7, 984
                  srl          ra, t1, s7
1659:             andi         s0, t3, 1335
                  lui          s9, 407184
                  srl          s6, a3, t4
                  bne          a7, a1, 1681f
                  bge          a0, s6, 1667f
                  blt          tp, t1, 1674f
                  bge          tp, s7, 1679f
                  srl          t0, gp, a3
1667:             sub          s5, s2, t0
                  sub          t6, s11, s8
                  xor          s11, s0, sp
                  slli         a1, s3, 28
                  slli         ra, s9, 9
                  sub          tp, tp, a3
                  sll          s5, t2, s10
1674:             bltu         t0, gp, 1684f
                  srai         t6, t5, 13
                  slli         a5, t2, 16
                  bgeu         s3, s1, 1679f
                  srl          a0, s0, s10
1679:             srai         ra, s8, 12
                  nop
1681:             auipc        s0, 498745
                  slti         s2, t6, 1762
                  lui          s0, 162134
1684:             blt          a3, t1, 1694f
                  and          gp, s0, s5
                  lui          t0, 304012
                  andi         t1, t4, -227
                  xori         tp, s4, 1710
                  and          t1, tp, zero
                  srai         s2, s2, 14
                  addi         a3, t6, -1738
                  srl          s10, s4, tp
                  beq          t2, t5, 1712f
1694:             slt          a1, s11, t5
                  and          ra, s3, a2
                  sra          t4, t1, s9
                  sll          s1, ra, t5
                  add          s9, s9, a2
                  auipc        tp, 113572
                  sra          t0, tp, s5
                  and          s10, zero, tp
                  nop
                  bgeu         t2, s9, 1707f
                  andi         a7, s4, -1602
                  beq          a5, a5, 1718f
                  nop
1707:             and          s8, t0, s11
                  addi         sp, a0, 1033
                  lui          t0, 9999
                  and          ra, sp, zero
                  slli         t2, t6, 21
1712:             andi         s2, t2, -987
                  srai         s1, s11, 18
                  or           zero, s7, s8
                  sra          s11, s3, s7
                  srai         s8, zero, 17
                  sltu         a3, a0, s8
1718:             sub          gp, a0, a0
                  bge          t6, ra, 1738f
                  slli         t4, s7, 2
                  slli         a1, a7, 30
                  sltiu        t4, s4, 1414
                  bltu         s5, t4, 1728f
                  andi         a1, t0, -981
                  addi         t6, s7, -1868
                  sub          t1, s9, a6
                  ori          ra, a1, -1702
1728:             or           t1, s4, s7
                  slt          s4, t0, t5
                  ori          a5, t4, 551
                  sll          gp, a5, a2
                  or           t1, t0, t0
                  bge          t5, t2, 1740f
                  xor          s3, a2, t5
                  bne          a5, a1, 1739f
                  nop
                  bltu         t4, a3, 1739f
1738:             andi         s0, s7, 314
1739:             sltiu        s3, s8, -1042
1740:             srai         s3, a5, 29
                  nop
                  srl          s0, t2, s6
                  lui          tp, 955229
                  srl          a7, t0, t2
                  addi         gp, s11, 1788
                  bltu         a0, s4, 1754f
                  sub          s8, a2, t3
                  and          s0, t2, t4
                  nop
                  or           ra, s8, t4
                  lui          tp, 158932
                  or           s10, t5, ra
                  beq          s9, s9, 1773f
1754:             sll          s8, s1, t3
                  blt          a4, t0, 1771f
                  bne          a1, s8, 1766f
                  addi         a4, t2, -1799
                  blt          t5, a7, 1765f
                  sra          tp, a7, s1
                  sltu         tp, s9, tp
                  bltu         s3, sp, 1778f
                  slti         s3, s0, 240
                  add          a3, a5, a1
                  ori          a0, a2, -397
1765:             lui          t6, 271505
1766:             slt          t4, s10, tp
                  bge          s9, s2, 1771f
                  sltiu        gp, s0, -1689
                  nop
                  add          a0, a5, s9
1771:             sltu         a0, a7, a5
                  addi         s1, t4, -88
1773:             add          ra, s4, a4
                  andi         a1, a6, -209
                  slli         a3, a7, 5
                  and          s7, s6, ra
                  add          t1, a6, a4
1778:             bne          t4, gp, 1782f
                  andi         s3, a5, 686
                  or           sp, gp, t6
                  srli         s3, s0, 9
1782:             xori         s1, s5, -1320
                  and          s2, ra, s7
                  la           sp, region_0+714 #start riscv_load_store_rand_instr_stream_11
                  lbu          zero, 179(sp)
                  sh           tp, 192(sp)
                  lbu          t6, -169(sp)
                  lh           t1, -178(sp)
                  ori          gp, sp, 1452
                  nop
                  sb           a4, -195(sp)
                  addi         tp, a4, -12
                  sb           s8, -145(sp)
                  lbu          s10, 233(sp)
                  srai         tp, s3, 31
                  sb           gp, 123(sp)
                  sh           tp, 114(sp)
                  slti         a4, a4, 1452
                  sb           t6, 55(sp)
                  lb           a6, -241(sp)
                  lbu          t2, -159(sp)
                  lb           s2, -213(sp)
                  sb           zero, -107(sp)
                  lb           a3, -189(sp)
                  srli         zero, s8, 11
                  xori         s11, a6, -751
                  lw           t4, -154(sp)
                  lbu          t1, 187(sp)
                  lb           tp, 20(sp)
                  slt          t2, a1, s10
                  lbu          t2, 180(sp)
                  nop
                  sw           s0, 126(sp)
                  sh           t2, 230(sp)
                  lbu          a1, -252(sp)
                  lb           a4, -174(sp)
                  sb           s11, -234(sp)
                  sb           s1, 251(sp)
                  or           a3, a3, t0
                  sll          s7, a6, t6
                  and          t4, s1, t2
                  lbu          s10, 234(sp)
                  lbu          t2, -235(sp)
                  lhu          s6, -140(sp)
                  srai         s4, t2, 7
                  sltu         a3, zero, tp
                  lbu          s4, 169(sp) #end riscv_load_store_rand_instr_stream_11
                  lui          t2, 141299
                  sra          a3, t2, a6
                  ori          s0, a4, 773
                  sll          t0, s3, a1
                  beq          a5, s5, 1790f
                  ori          s5, s4, -791
1790:             blt          s10, a5, 1809f
                  slt          a6, a2, a6
                  srl          s6, a1, s9
                  xori         s1, a1, -1429
                  add          t6, t1, s5
                  slti         t4, a4, -464
                  bge          a3, a0, 1798f
                  xori         t1, a4, -829
1798:             srli         t6, s4, 26
                  sra          t1, a4, t4
                  bge          tp, s3, 1815f
                  andi         s7, s5, -2040
                  andi         s10, s1, -408
                  bltu         t2, s11, 1809f
                  and          a4, s4, a7
                  auipc        s9, 911219
                  bgeu         t2, s2, 1808f
                  blt          s6, s11, 1813f
1808:             bgeu         t6, a3, 1812f
1809:             srli         a4, a0, 15
                  srai         a3, t4, 4
                  sra          s0, sp, a1
1812:             slli         gp, s11, 2
1813:             sub          s11, t4, gp
                  addi         s10, s3, -1797
1815:             bne          s11, a2, 1829f
                  andi         a4, t4, 1491
                  add          s6, a3, s8
                  addi         s9, t5, -450
                  andi         gp, a2, -1518
                  bltu         s11, t2, 1824f
                  srli         s2, a6, 30
                  sltiu        t4, s8, -1870
                  bne          a6, t0, 1842f
1824:             add          sp, t1, a1
                  slt          t1, a6, s0
                  slti         t6, t0, 505
                  and          a1, t2, ra
                  srai         t2, gp, 14
1829:             bge          s7, a7, 1837f
                  beq          s6, ra, 1832f
                  bne          s9, t5, 1851f
1832:             xori         a6, s10, -844
                  blt          gp, t0, 1850f
                  add          s10, ra, tp
                  addi         ra, s9, 1092
                  and          t1, a3, a4
1837:             lui          a5, 767812
                  andi         a1, s8, -1611
                  slli         s9, a7, 9
                  xor          s3, a1, t1
                  auipc        a3, 468375
1842:             addi         s9, s10, 771
                  srai         t6, sp, 4
                  srli         s10, a7, 12
                  slti         sp, s4, 1521
                  slt          t0, s8, s2
                  srai         t0, t2, 23
                  sltiu        t4, s6, 1528
                  slt          s7, s9, t6
1850:             nop
1851:             sub          t4, s4, a3
                  sltu         t1, a6, s6
                  bltu         t1, a6, 1860f
                  blt          gp, t5, 1873f
                  slt          s7, a3, t1
                  sltu         s7, s4, s3
                  andi         s2, a2, 873
                  bne          s7, s11, 1874f
                  beq          t1, s3, 1869f
1860:             addi         a7, s0, 711
                  sltiu        ra, a3, 1656
                  auipc        a5, 903491
                  bge          a3, a5, 1870f
                  srai         s4, s5, 24
                  blt          a3, t4, 1868f
                  and          t6, sp, ra
                  bne          s10, sp, 1880f
1868:             bltu         s7, a4, 1876f
1869:             and          tp, gp, s8
1870:             srl          a7, t5, s9
                  sltiu        sp, s0, 1627
                  add          s11, t0, a2
1873:             bltu         a4, t1, 1875f
1874:             sra          a6, s3, tp
1875:             bne          zero, s0, 1885f
1876:             andi         a6, s1, -521
                  slli         s5, s9, 12
                  andi         a7, s3, 1828
                  add          s9, s8, t0
1880:             srl          zero, ra, s8
                  bne          a2, s7, 1887f
                  addi         s1, s8, -872
                  bge          t6, t0, 1887f
                  bgeu         s3, s9, 1887f
1885:             andi         s5, a0, 353
                  slli         s7, a5, 22
1887:             srl          t0, a2, a1
                  xori         s5, a0, 1613
                  lw           t1, 4(t5)
                  slli         t6, a1, 29
                  sltu         a5, a2, a0
                  lui          ra, 434373
                  addi         t5, t5, 36
                  ori          a7, a6, -366
2598:             addi x6, x6, 0
2598:             jalr x6, x6, 0
sub_7:            andi         s9, t1, 22
                  blt          a6, a1, sub_7_stack_p
                  slli         s10, s7, 1
                  nop
sub_7_stack_p:    addi         t5, t5, -56
                  sw           t1, 4(t5)
                  sltu         a4, s8, a7
                  sltu         s10, s6, s8
                  and          a7, s10, t5
                  xori         s8, zero, 998
                  slt          s5, t0, a5
                  xor          a3, sp, s3
                  sltu         t1, t3, a3
                  sll          s6, s9, a0
                  lui          a1, 986345
                  sltu         gp, s5, sp
                  xor          s9, t5, t2
sub_7_j12:        jal          t1, sub_8 #jump sub_7 -> sub_8
                  la           sp, region_1+1226 #start riscv_load_store_rand_instr_stream_1
                  lb           s11, 20(sp)
                  auipc        s4, 197968
                  srai         a4, a2, 26
                  lh           s6, -46(sp)
                  lhu          tp, 4(sp)
                  sra          s5, t0, s10
                  sub          t2, s8, t5
                  add          s8, s5, tp
                  sltu         a4, t5, s9
                  sra          s1, s4, s1
                  sb           s3, -18(sp)
                  sb           a3, -9(sp)
                  lbu          a3, -3(sp)
                  slt          s10, s11, t0
                  sb           tp, -35(sp)
                  lbu          s3, 45(sp)
                  lbu          s9, -57(sp)
                  ori          a1, a3, 1920
                  and          s7, t2, a3
                  sb           ra, -41(sp)
                  sb           t4, -1(sp)
                  lhu          s7, -50(sp)
                  xor          s4, s9, a3
                  lb           s10, 11(sp)
                  xori         a3, a5, -974
                  lhu          t6, -16(sp)
                  lbu          zero, -11(sp)
                  lb           zero, 20(sp)
                  sltu         t0, a7, t4
                  sb           s2, 45(sp)
                  srl          a3, zero, ra
                  srli         s11, t6, 13
                  sh           a1, 54(sp)
                  sb           s9, 62(sp)
                  add          t0, t6, s11
                  sb           s11, -27(sp)
                  lbu          a5, 28(sp)
                  lbu          s6, 17(sp)
                  slti         a7, a5, 2033
                  lh           t6, 62(sp)
                  sb           s1, -40(sp)
                  sb           s0, -47(sp) #end riscv_load_store_rand_instr_stream_1
                  la           t4, region_1+250 #start riscv_load_store_rand_instr_stream_4
                  or           t0, s6, s5
                  sh           t3, -216(t4)
                  lh           tp, -132(t4)
                  xor          tp, a4, s1
                  xor          t6, s11, s10
                  srai         s9, gp, 14
                  lb           s6, 225(t4)
                  sra          a7, zero, s2
                  sh           tp, 108(t4)
                  slt          a4, a6, t5
                  lbu          ra, -163(t4)
                  sltu         s3, zero, t1
                  or           ra, a7, t1
                  sltiu        t1, a1, 572
                  slt          s1, s7, s2
                  srli         s1, a0, 15
                  lb           s3, 147(t4)
                  lb           s2, -157(t4)
                  lh           s4, -46(t4)
                  sb           s11, 246(t4)
                  lhu          s7, 164(t4)
                  sll          a4, tp, ra
                  lb           s6, 235(t4)
                  sll          s6, s8, a6
                  slti         a5, a0, -1077
                  addi         s7, s7, 1780
                  sll          s0, a4, zero
                  lbu          s5, 121(t4)
                  nop
                  lh           s3, 74(t4)
                  sb           sp, 184(t4) #end riscv_load_store_rand_instr_stream_4
                  la           s0, region_1+609 #start riscv_load_store_rand_instr_stream_3
                  sub          a6, a2, s9
                  lbu          t0, 181(s0)
                  ori          s8, s1, 379
                  lbu          t1, -34(s0)
                  add          a6, t5, gp
                  srli         s5, a5, 15
                  lbu          a7, -183(s0)
                  lbu          s4, 70(s0)
                  srli         s10, s11, 29
                  srli         t1, a2, 31
                  xori         t2, sp, 1690
                  lb           s2, 184(s0)
                  andi         sp, gp, 558
                  lbu          a6, 90(s0)
                  xori         ra, s10, -742
                  slli         t0, s9, 1
                  lb           zero, -210(s0)
                  sh           t4, 189(s0)
                  or           a4, a5, s1
                  slt          zero, s11, a1
                  xori         a0, s1, -637
                  sub          gp, s8, s2
                  and          s9, tp, s5
                  lh           s4, -203(s0)
                  sw           ra, -165(s0)
                  sltiu        sp, s5, -1090
                  lw           a3, -97(s0)
                  lb           s9, -120(s0)
                  lhu          s10, 81(s0) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_0+1982 #start riscv_load_store_rand_instr_stream_0
                  lbu          a4, -254(sp)
                  sb           t0, -163(sp)
                  srli         gp, sp, 22
                  xori         s9, s1, -5
                  lbu          a5, 15(sp)
                  auipc        s1, 108367
                  auipc        s0, 55364
                  sll          zero, ra, zero
                  lbu          a4, -42(sp)
                  or           a5, s1, a2
                  addi         tp, a5, 1877
                  lb           t6, -228(sp)
                  srl          a4, a2, a7
                  lh           s0, -72(sp)
                  lb           t0, -105(sp)
                  xori         s8, s7, 1504
                  lh           s6, -120(sp)
                  lbu          s1, -251(sp)
                  sh           s10, -12(sp)
                  andi         s7, a7, 950
                  addi         s3, a0, 1837
                  lb           s1, -149(sp)
                  sltiu        s3, s6, -1434
                  sw           a2, -138(sp)
                  lhu          s3, -232(sp)
                  nop
                  lbu          s10, -199(sp)
                  sw           s10, 14(sp)
                  lbu          a7, 15(sp)
                  lh           a4, -156(sp)
                  lw           s7, -190(sp)
                  srai         t2, s6, 29
                  sb           s1, 6(sp)
                  andi         s5, s8, -1452
                  sll          t6, s10, s7
                  sra          s10, t6, s8
                  auipc        s10, 370131
                  sh           t6, -162(sp)
                  add          s4, t0, a7
                  srl          a6, s4, s11
                  sh           s10, -4(sp)
                  sll          a1, t6, s5
                  or           s8, a7, a2
                  lhu          a6, -112(sp)
                  srai         t0, s10, 10
                  andi         s7, t2, -467
                  xor          s10, s9, a4
                  lbu          s11, -247(sp)
                  lbu          t6, -27(sp)
                  lh           a7, -220(sp)
                  slti         s7, a4, 1843
                  lbu          a1, -139(sp)
                  sub          a3, t4, t1
                  lb           s2, -194(sp) #end riscv_load_store_rand_instr_stream_0
                  slti         s5, a7, -1171
                  slti         a3, s0, -1491
                  xor          a4, a1, s8
                  add          a7, s10, t1
                  bne          s3, s8, 20f
                  bgeu         a0, s5, 16f
                  slt          s0, a6, t6
                  or           s7, t5, zero
                  beq          a3, tp, 15f
                  slli         t2, s6, 19
                  sub          t2, a0, sp
                  sltu         t4, s3, a4
                  xor          t6, s10, a0
                  slli         s10, s7, 9
                  sll          s11, a5, s1
15:               slti         sp, s6, -1380
16:               xor          a6, a4, s1
                  bne          tp, zero, 19f
                  bne          t3, s4, 27f
19:               blt          gp, gp, 35f
20:               sltu         s5, gp, t3
                  slli         a6, gp, 21
                  lui          a0, 432065
                  srai         s11, s11, 9
                  andi         s11, a1, 776
                  auipc        a7, 604389
                  sub          zero, tp, t2
27:               sub          s7, s2, s7
                  lui          gp, 826455
                  slli         zero, s11, 31
                  sltiu        s7, s4, -302
                  srai         gp, a1, 26
                  srli         a6, s2, 31
                  bne          s7, gp, 41f
                  sll          ra, s7, s8
35:               sltiu        a6, a2, 84
                  srli         a0, a7, 6
                  bgeu         s7, tp, 38f
38:               slti         s11, a3, -1269
                  sltu         s2, tp, sp
                  xor          s7, s6, t4
41:               nop
                  lui          a4, 58145
                  or           t1, s11, s6
                  sltiu        a1, s7, 146
                  bgeu         t3, t6, 54f
                  xori         s8, a4, -226
                  srai         a3, a3, 25
                  srl          s11, s9, t5
                  ori          a6, s5, -1792
                  srai         a5, t0, 5
                  xor          sp, s11, t1
                  bne          a0, a2, 54f
                  beq          t0, s4, 59f
54:               xor          zero, zero, s7
                  nop
                  bltu         s0, a2, 60f
                  sll          tp, s4, s3
                  nop
59:               sll          s2, t4, t3
60:               andi         s0, t0, -53
                  srai         t4, t3, 25
                  sra          a6, a0, gp
                  bge          t2, s1, 82f
                  blt          t0, s0, 77f
                  blt          s10, a6, 66f
66:               sltu         a7, a6, s6
                  bgeu         s11, a6, 85f
                  bge          s1, a5, 73f
                  auipc        s8, 988716
                  sltiu        s8, s9, -612
                  sltiu        s5, sp, 1945
                  sltu         a4, t2, a1
73:               blt          a1, s10, 92f
                  bge          s6, zero, 85f
                  srai         s5, s3, 8
                  lui          s6, 229166
77:               sltu         a0, s9, zero
                  sltiu        ra, s6, 197
                  slti         s6, tp, -1375
                  sra          a7, gp, t1
                  lui          t1, 281612
82:               addi         a3, tp, -830
                  addi         a4, a6, 1589
                  srl          t6, t2, a0
                  sub          s0, s4, a6
                  andi         sp, s7, -1983
                  ori          s9, t0, -198
                  bge          s4, a6, sub_7_j11 #branch to jump instr
                  sltu         a4, t4, a3
                  slli         ra, a2, 15
                  slt          t2, zero, a1
                  xor          a5, s3, a6
                  sub          s9, t0, s11
                  srai         tp, s3, 23
sub_7_j11:        jal          t1, sub_10 #jump sub_7 -> sub_10
85:               andi         s9, a5, -156
                  add          t1, s9, s5
                  blt          a6, t6, 106f
                  bge          t5, t4, 92f
                  sll          s5, t0, s2
                  sra          s2, t0, a7
                  srli         s10, t6, 15
92:               bltu         tp, s1, 108f
                  or           sp, t1, t6
                  bltu         zero, a3, 111f
                  bltu         s7, ra, 113f
                  srai         a1, a0, 4
                  srli         a4, a0, 16
                  slt          s0, a6, s3
                  ori          sp, t5, -1551
                  srli         s3, s8, 10
                  slti         t4, sp, -2014
                  bgeu         s1, s7, 107f
                  bne          s5, s10, 104f
104:              xor          s6, s9, ra
                  slt          t2, a3, a2
106:              srli         a7, tp, 14
107:              sra          s0, t4, a7
108:              sll          t2, s5, t2
                  xori         gp, a5, 1172
                  xor          t6, a5, t2
111:              nop
                  beq          gp, a0, 122f
113:              nop
                  slli         t0, s2, 18
                  slt          s8, s3, t3
                  auipc        a4, 697927
                  beq          a0, s9, 125f
                  add          s4, a3, s10
                  sltu         sp, s1, a1
                  bne          s4, tp, 135f
                  sltiu        s3, gp, 1114
122:              sra          s7, s5, ra
                  sra          s1, t4, a5
                  add          s0, gp, a2
125:              blt          ra, a0, 128f
                  srl          s1, a7, a3
                  sll          ra, t0, a5
128:              srl          s4, a7, ra
                  xori         s3, ra, 1304
                  bltu         s9, a2, 146f
                  lui          t4, 768142
                  xori         s9, s4, 1412
                  sll          a6, a5, s1
                  bgeu         a7, s9, 142f
135:              xori         zero, s0, 1336
                  nop
                  beq          s10, t2, 138f
138:              xor          s6, s4, s7
                  srli         t4, a2, 12
                  nop
                  bne          a7, s4, 157f
142:              add          a3, t1, s1
                  and          a3, t0, a1
                  srli         zero, t4, 3
                  slli         s8, a7, 27
146:              srli         s3, ra, 26
                  bne          sp, a7, 150f
                  sll          s2, s5, s11
                  slt          a1, a1, s1
150:              sll          ra, tp, t2
                  bge          a5, s1, 170f
                  srli         sp, s11, 7
                  and          tp, t6, t4
                  slli         a6, s2, 30
                  andi         s10, s10, 596
                  sra          a1, a1, s11
157:              andi         s3, s10, -2043
                  srli         t6, s1, 8
                  slli         t2, s7, 7
                  addi         s11, a0, -1387
                  sra          ra, a2, t1
                  xori         a3, t4, 1711
                  srli         ra, a5, 18
                  sll          s2, gp, t2
                  srli         t4, s1, 7
                  bgeu         s2, t4, 170f
                  srli         zero, a0, 11
                  ori          s10, zero, -1441
                  blt          t4, a2, 178f
170:              beq          s10, gp, 189f
                  bne          t6, a2, 182f
                  bgeu         a3, a7, 187f
                  ori          s5, t2, -1636
                  addi         tp, t6, 1660
                  sltu         s6, s11, ra
                  bgeu         s6, zero, 177f
177:              auipc        a6, 313302
178:              sll          t0, t6, s1
                  ori          t6, s5, 1233
                  sltu         t0, s11, a4
                  bne          s10, s7, 186f
182:              slt          a5, s4, a7
                  lui          sp, 93951
                  and          s7, a1, t3
                  bgeu         t4, s5, 203f
186:              bge          t0, a7, 197f
187:              srai         ra, s3, 28
                  slli         ra, t3, 27
189:              sra          a0, t1, t1
                  bge          s11, s4, 207f
                  or           t2, t0, a4
                  lui          t0, 553191
                  bne          s7, s0, 197f
                  srai         s1, a5, 12
                  slti         s2, s9, 1260
                  slti         s3, tp, 1947
197:              xori         s10, t4, -1850
                  auipc        t6, 588846
                  addi         gp, t5, -1346
                  la           t1, region_1+798 #start riscv_load_store_rand_instr_stream_2
                  and          s10, s5, t0
                  add          s4, s8, t6
                  nop
                  lb           s10, -83(t1)
                  xor          s9, a0, t4
                  sb           s11, -238(t1)
                  srl          s9, ra, t3
                  lbu          t2, 147(t1)
                  slt          s10, t6, s0
                  lh           ra, -240(t1)
                  sltu         tp, s8, ra
                  and          s9, s4, s8
                  add          s1, s7, s6
                  sltu         sp, a5, s6
                  lbu          gp, 89(t1)
                  xori         t0, s8, 1903
                  sll          sp, t1, a7
                  slli         t0, t4, 1
                  or           s6, ra, t2
                  srl          t2, zero, a1
                  lb           s2, 231(t1)
                  sltu         s4, t3, s7
                  sh           ra, 240(t1)
                  sb           zero, 43(t1)
                  sub          gp, s1, t6
                  sb           s5, 148(t1)
                  lh           s8, -148(t1)
                  slt          tp, a2, a1
                  sra          a3, s1, t2
                  or           ra, a4, gp
                  srli         s9, a5, 29
                  srli         t4, s4, 3
                  slti         s6, t2, 611
                  lb           sp, -255(t1)
                  srai         s2, t1, 17
                  and          tp, a6, a4
                  sub          tp, a5, a5
                  sub          s0, t6, a2
                  lw           t0, 62(t1) #end riscv_load_store_rand_instr_stream_2
                  beq          s7, tp, 213f
                  sll          t0, a5, a5
                  auipc        t1, 651815
203:              sub          a4, gp, tp
                  blt          s2, t0, 222f
                  sll          a3, s11, s0
                  srl          s2, s7, s9
207:              srli         zero, s2, 1
                  sltiu        t0, a0, -39
                  slt          a5, ra, a7
                  lui          s3, 763853
                  bne          s6, t0, 213f
                  sltu         s3, sp, s5
213:              sltiu        s8, a4, 1881
                  srai         t4, t6, 27
                  xor          s4, t5, a4
                  and          t4, a7, s6
                  lui          t4, 338213
                  beq          s6, a1, 227f
                  bge          t4, t3, 227f
                  sltiu        s7, t2, 390
                  xori         s2, s0, -1040
222:              bne          s8, s7, 223f
223:              sra          s3, s3, a3
                  and          zero, ra, t0
                  slti         a6, s8, 532
                  add          zero, t5, gp
227:              blt          s6, s8, 243f
                  nop
                  xor          s2, a2, a7
                  bge          s0, a3, 249f
                  auipc        a1, 758317
                  sra          a5, s8, s6
                  sltu         s2, t3, t1
                  nop
                  beq          s10, s8, 245f
                  sltiu        a5, s2, 1751
                  sra          t1, t4, a5
                  slli         tp, t0, 18
                  auipc        a0, 139286
                  slt          gp, s6, t6
                  slt          s11, t2, s6
                  bltu         s11, ra, 248f
243:              srli         a5, s4, 9
                  srl          s3, t2, a2
245:              or           t4, s6, t5
                  and          s2, s9, s0
                  addi         a6, sp, 1318
248:              slti         tp, s6, 61
249:              bgeu         a1, t0, 256f
                  bgeu         s2, s0, 252f
                  or           ra, t2, a5
252:              srl          s9, zero, a5
                  add          gp, s0, a5
                  sltu         s6, tp, s10
                  blt          t1, t6, 260f
256:              slt          s1, ra, gp
                  xor          s3, a0, s9
                  or           a5, gp, a2
                  lui          s10, 235815
260:              beq          t1, t6, 261f
261:              xori         s9, s8, 496
                  bge          t6, t3, 270f
                  xori         tp, a4, 1720
                  slti         t1, s0, -1792
                  auipc        tp, 250001
                  xor          tp, t1, s7
                  slt          a5, a5, gp
                  ori          a7, s6, 2008
                  srai         s10, s1, 15
270:              nop
                  srli         zero, t5, 14
                  add          a7, s11, s10
                  nop
                  xori         t1, a6, 332
                  slti         a6, t3, -740
                  lui          gp, 1003203
                  sltu         a1, s10, s1
                  sll          s6, a3, a1
                  or           s3, s9, t3
                  addi         a4, t4, 1369
                  sll          s0, s10, t1
                  addi         a7, s11, 647
                  sub          a3, a3, t2
                  and          a4, a2, t0
                  lui          a7, 847087
                  sll          a7, s3, a7
                  sltiu        t6, t6, -1033
                  ori          s9, a1, 29
                  sltu         tp, a1, s10
                  lui          s1, 458190
                  srl          s0, s3, ra
                  ori          s0, t3, 1037
                  lui          s0, 310846
                  bne          a2, a4, 302f
                  slt          a3, sp, a5
                  slt          a6, ra, gp
                  addi         s3, a6, -1047
                  nop
                  andi         a0, sp, 713
                  sll          s9, a5, a1
                  andi         s2, a3, 1742
302:              bltu         t2, s6, 318f
                  slt          a4, s7, t0
                  sll          t2, t4, zero
                  lui          s11, 706227
                  bne          gp, s7, 310f
                  nop
                  srl          s6, a0, s8
                  lui          zero, 880997
310:              add          s7, ra, s11
                  ori          s6, a0, 1049
                  ori          s5, s4, -985
                  beq          s8, t6, 319f
                  beq          t3, gp, 331f
                  or           a7, s11, t6
                  bltu         a2, sp, 319f
                  xori         a1, a5, -1949
318:              bgeu         t6, s2, 323f
319:              or           s9, s1, t5
                  xori         s1, tp, -708
                  sll          s7, a7, s8
                  srl          s4, s10, a6
323:              sltiu        a5, s0, 2029
                  auipc        gp, 690456
                  xor          tp, s0, a7
                  xori         s7, a5, -195
                  or           s5, ra, t0
                  bgeu         a7, s6, 337f
                  or           s10, s1, a5
                  sltiu        ra, s2, 1467
331:              xori         tp, s4, 1670
                  slt          s8, t1, s1
                  auipc        s8, 222250
                  addi         s11, gp, 549
                  bne          sp, a1, 353f
                  nop
337:              or           s10, s8, s1
                  nop
                  ori          s10, t5, 1528
                  sltiu        s9, s4, -947
                  nop
                  addi         s4, s7, -1506
                  bgeu         s1, s8, 359f
                  and          t2, t5, s9
                  andi         a3, s7, -1898
                  srli         s10, a4, 2
                  srli         t1, s7, 12
                  srli         s6, a2, 0
                  beq          s6, s10, 350f
350:              srai         t6, t5, 7
                  or           a7, gp, a1
                  bge          sp, s2, 367f
353:              blt          s4, s11, 363f
                  srl          s4, zero, s3
                  addi         gp, s10, -898
                  bge          a4, s10, 360f
                  lui          t1, 905963
                  ori          s9, t5, -315
359:              srl          s10, zero, s7
360:              xor          a1, a0, t6
                  nop
                  beq          a0, zero, 373f
363:              bltu         s5, s11, 374f
                  lui          zero, 283061
                  bltu         t0, a1, 372f
                  lui          a7, 928198
367:              slt          a5, s0, s10
                  sltiu        s0, a2, -664
                  sll          a5, t3, s6
                  ori          s0, a0, 1091
                  xori         gp, s7, 20
372:              bge          a4, a5, 373f
373:              xor          tp, s2, ra
374:              bltu         t2, s4, 376f
                  lui          a7, 990622
376:              bgeu         a1, s0, 389f
                  or           t2, t0, sp
                  nop
                  or           a7, s7, s10
                  slti         tp, s4, -1058
                  sltu         t0, s7, a0
                  lui          t4, 531287
                  slt          t0, t0, s1
                  blt          t4, t3, 386f
                  bltu         sp, s7, 404f
386:              add          s8, a5, s1
                  beq          a4, t6, 396f
                  slli         s2, t2, 6
389:              lui          s1, 308510
                  bge          s2, a4, 406f
                  andi         s7, s10, 498
                  sll          a0, s7, a6
                  sll          a4, a2, t6
                  nop
                  nop
396:              auipc        a4, 464
                  xor          t0, tp, a7
                  lui          s5, 82323
                  bgeu         ra, s1, 418f
                  blt          t2, gp, 419f
                  andi         a1, sp, 395
                  ori          t6, s11, -738
                  nop
404:              bge          t5, a3, 409f
                  auipc        ra, 303780
406:              add          s5, t5, t3
                  bne          s6, a6, 425f
                  srli         a0, t5, 25
409:              xori         t1, t5, -1912
                  slti         a1, sp, -1527
                  srli         s1, s4, 19
                  slli         t0, s8, 4
                  ori          a0, a1, -39
                  srl          s11, s1, t2
                  addi         a7, s6, 1064
                  addi         a4, s2, -73
                  nop
418:              bge          s6, s4, 419f
419:              ori          s4, sp, -1631
                  sltu         ra, s7, t0
                  lui          t2, 498698
                  addi         s4, a6, -631
                  srai         t2, t0, 17
                  sub          a1, ra, s2
425:              or           s10, a1, s1
                  ori          s9, ra, 1884
                  srai         gp, t6, 4
                  bltu         gp, s7, 446f
                  or           s4, s10, a5
                  add          s11, a4, a1
                  add          a1, a1, t5
                  or           s11, a6, a1
                  slli         s7, s4, 29
                  and          a7, t2, t2
                  srai         s8, s1, 9
                  sub          s8, s6, sp
                  slli         s9, ra, 1
                  or           gp, s4, s8
                  auipc        a0, 850979
                  bge          sp, s6, 456f
                  and          s8, t2, s8
                  bge          t3, a1, 451f
                  or           a7, t4, s10
                  xori         tp, zero, -1419
                  nop
446:              nop
                  bne          sp, a0, 449f
                  and          s0, a5, tp
449:              slli         t0, a7, 0
                  bge          s4, s2, 465f
451:              ori          s2, s10, 1726
                  sltu         t1, t0, ra
                  slt          t0, s11, a4
                  lui          s2, 318242
                  bgeu         gp, a0, 473f
456:              beq          t3, s9, 464f
                  sll          t6, a2, t2
                  add          s11, t6, gp
                  srl          zero, a7, s5
                  auipc        a3, 856350
                  bge          t3, sp, 474f
                  slli         t0, zero, 20
                  or           t6, a5, gp
464:              slli         t0, s8, 20
465:              addi         t4, a6, -1612
                  bne          s5, s9, 467f
467:              slt          a5, s11, a6
                  sra          a3, s10, s2
                  sltu         t1, a1, s1
                  sltiu        s10, t6, -87
                  nop
                  srl          t6, s7, t0
473:              ori          t0, s6, -1653
474:              srai         t2, s4, 8
                  bge          t3, zero, 480f
                  xor          t6, a6, sp
                  slli         s5, t0, 13
                  xori         t1, a6, -84
                  slt          a1, a2, t0
480:              beq          s6, s1, 496f
                  bltu         s5, s1, 486f
                  bne          a0, gp, 483f
483:              bgeu         sp, s4, 502f
                  slti         t2, a2, -944
                  bge          s8, t2, 488f
486:              xori         s7, s8, -132
                  slti         t4, s5, -909
488:              sub          s4, s3, s3
                  auipc        a5, 592702
                  slt          tp, s5, gp
                  sub          a7, zero, zero
                  xori         s1, s3, -289
                  xor          s8, a4, sp
                  nop
                  sub          s0, gp, s8
496:              sra          s2, a7, t5
                  ori          a6, t0, 1684
                  bltu         t2, tp, 500f
                  sltiu        gp, s6, -1523
500:              slt          s10, s1, s7
                  srai         a1, s8, 16
502:              nop
                  sra          t1, s0, t3
                  xor          gp, s11, s3
                  nop
                  lui          s8, 1019133
                  nop
                  bgeu         t2, s11, 525f
                  beq          a3, t0, 520f
                  ori          t1, a4, -387
                  bne          a7, t3, 530f
                  and          s8, ra, t0
                  nop
                  beq          s2, s6, 522f
                  sltiu        s8, a0, 1598
                  ori          t6, a6, 1857
                  slli         a6, s6, 26
                  nop
                  slt          gp, s8, ra
520:              sub          s3, t4, t3
                  xor          a0, s1, t6
522:              xor          s2, t0, sp
                  sra          s5, t3, gp
                  or           a6, a1, t0
525:              sub          a7, s3, s8
                  beq          ra, t2, 535f
                  and          a1, s2, t3
                  bne          a1, a0, 535f
                  auipc        a5, 739518
530:              bgeu         tp, a3, 536f
                  xor          t0, t6, s4
                  addi         s7, a7, 1918
                  blt          s11, a2, 552f
                  blt          s9, sp, 538f
535:              slt          s0, s2, a4
536:              and          t1, a7, gp
                  sra          s6, s2, a2
538:              srai         t0, ra, 15
                  xori         s1, a3, 211
                  and          a3, a7, a0
                  sltiu        s9, s0, 1088
                  xori         a1, s5, -1733
                  bgeu         t0, t2, 554f
                  bne          s3, a7, 554f
                  bltu         a2, a5, 561f
                  srai         a0, a2, 9
                  and          s8, s11, a0
                  bne          s7, ra, 552f
                  sll          a5, zero, s7
                  bltu         t0, s7, 566f
                  srl          gp, a3, s7
552:              xor          s1, sp, s1
                  add          sp, t4, s4
554:              add          a4, s7, s5
                  bge          a3, s10, 561f
                  nop
                  beq          a0, s7, 558f
558:              sll          s4, s3, s4
                  add          s0, t0, s4
                  add          gp, s11, a4
561:              addi         s6, tp, 379
                  bgeu         s5, a6, 575f
                  srai         s6, s3, 28
                  bltu         a7, tp, 566f
                  beq          s6, s6, 570f
566:              slti         s10, a5, 314
                  xor          t6, s11, s3
                  srai         s4, t1, 7
                  or           t4, t4, a0
570:              bne          t1, gp, 578f
                  sra          a0, s1, t4
                  bltu         zero, ra, 574f
                  xori         a3, s1, 83
574:              blt          a2, s7, 583f
575:              or           s11, t6, s7
                  sll          s7, s0, s9
                  srl          s2, gp, s8
578:              beq          a7, t2, 596f
                  slti         a0, ra, 380
                  and          s2, s2, s7
                  srl          s2, s5, a1
                  or           tp, t0, s7
583:              sltu         t0, t6, a3
                  slti         s9, a2, 547
                  andi         s11, s8, -309
                  add          s1, a6, a5
                  or           s11, t0, a2
                  slt          a3, s3, a7
                  bgeu         t3, s2, 604f
                  blt          s8, a7, 593f
                  lui          t6, 581111
                  sll          t2, s1, s6
593:              slt          s11, s9, a3
                  xori         a6, t1, 440
                  bgeu         a2, s6, 599f
596:              add          s8, a5, a2
                  andi         sp, ra, 742
                  bltu         t4, ra, 607f
599:              bgeu         t3, t0, 604f
                  beq          t3, t1, 604f
                  add          tp, s3, s8
                  sub          ra, s9, a2
                  slti         s10, tp, -1907
604:              sub          s1, a7, a7
                  addi         s2, s10, 1523
                  blt          a7, t3, 625f
607:              nop
                  xori         a4, a5, 18
                  bne          s2, s10, 610f
610:              blt          s1, a2, 629f
                  sltiu        t2, ra, -1446
                  slt          t6, ra, tp
                  bge          t4, s0, 614f
614:              slt          a0, s11, ra
                  slli         s11, t3, 6
                  xori         t0, s11, 458
                  sltu         a0, gp, s9
                  sra          a1, s10, zero
                  or           a1, a1, t0
                  and          s10, s10, s2
                  or           ra, t4, a1
                  or           a7, a3, a0
                  srli         a5, gp, 22
                  ori          s9, s3, 1884
625:              nop
                  sll          s8, s0, t1
                  nop
                  add          a4, zero, sp
629:              addi         s6, a4, 1507
                  sra          a5, a7, gp
                  or           a3, s0, t6
                  lui          s3, 481296
                  add          s6, a0, s3
                  sll          ra, t1, t2
                  sltu         s7, tp, a6
                  or           s5, s0, a2
                  ori          t0, a3, 469
                  ori          a0, s3, -1166
                  slt          t2, s0, ra
                  sub          s1, a4, tp
                  blt          t4, s6, 643f
                  ori          s11, a6, 1073
643:              ori          ra, a7, -266
                  lw           t1, 4(t5)
                  ori          t2, t1, -1429
                  add          a3, s0, s1
                  sll          a1, a7, a0
                  srli         s7, t2, 26
                  sltiu        s5, s6, -1221
                  sltu         a7, s10, tp
                  xor          s1, tp, s9
                  auipc        a3, 624416
                  addi         t4, s2, -191
                  addi         t5, t5, 56
                  xori         s4, s7, 1593
885:              addi x31, x6, 1
885:              jalr x31, x31, 0
sub_6:            sltu         s5, t1, s3
                  nop
                  addi         t5, t5, -24
                  sw           t1, 4(t5)
                  slli         zero, s4, 22
                  sltu         s6, t3, t0
                  slti         sp, t2, 1939
                  la           t4, sub_9
                  addi         t4, t4, 762
                  srl          t2, s9, s6
                  beq          a1, a6, sub_6_j10 #branch to jump instr
                  xor          a1, tp, t3
                  or           s4, sp, a0
                  add          s3, s1, t5
                  sltiu        s11, t4, 1179
                  and          t6, s2, a2
                  srl          s7, a5, ra
                  sub          s11, s6, s3
sub_6_j10:        jalr         t1, t4, -761 #jump sub_6 -> sub_9
                  slli         s9, s6, 23
                  sll          t1, t5, s10
                  bne          t5, t5, 15f
                  bltu         a6, s5, 9f
                  srli         t6, a2, 4
                  slli         s9, s2, 21
                  and          s2, sp, a1
                  xor          a3, a0, ra
                  srl          s5, a6, s10
9:                sltu         a6, sp, ra
                  sll          a4, s2, s7
                  bltu         s1, a6, 15f
                  slt          s7, t3, zero
                  sub          a3, sp, t6
                  bltu         ra, s9, 15f
15:               sll          s10, s4, s3
                  addi         t6, s2, 449
                  ori          a6, s6, 1395
                  lw           t1, 4(t5)
                  srli         s9, a3, 17
                  auipc        s5, 532347
                  xori         zero, s11, 2010
                  addi         t5, t5, 24
                  srli         s10, a3, 0
                  slti         a1, s2, 1517
44:               addi x2, x6, 0
44:               jalr x2, x2, 0
sub_1:            slli         a3, s11, 15
                  blt          t3, gp, sub_1_stack_p
                  sltiu        a5, s7, 1631
                  nop
sub_1_stack_p:    addi         t5, t5, -24
                  sw           t1, 4(t5)
                  sll          a5, s10, s2
                  lui          ra, 858208
                  slli         a1, s4, 27
                  sll          s2, ra, t3
                  sra          s0, zero, s8
                  srli         s4, a0, 30
                  sll          t6, t0, sp
                  xori         s4, s11, 1357
                  addi         zero, a0, -185
                  srl          s5, s6, s0
                  sra          s1, s11, s1
sub_1_j4:         jal          t1, sub_2 #jump sub_1 -> sub_2
                  sltu         a4, s2, t3
                  xori         a1, a2, -1029
                  bgeu         zero, s7, sub_1_j5 #branch to jump instr
                  ori          a7, t6, -1812
                  xori         zero, s5, 349
                  lui          a7, 739377
sub_1_j5:         jal          t1, sub_4 #jump sub_1 -> sub_4
                  la           s1, region_1+203 #start riscv_load_store_rand_instr_stream_0
                  addi         a3, a1, -361
                  sltiu        s0, a3, 1783
                  sll          gp, t3, a5
                  sub          tp, sp, gp
                  sb           s9, -15(s1)
                  srl          a3, t3, t1
                  srl          zero, a3, s8
                  lw           ra, 1(s1)
                  sltiu        t1, ra, -931
                  lbu          sp, -3(s1)
                  sb           s9, 14(s1)
                  sltiu        ra, a2, 1576
                  srli         s10, t6, 1
                  lb           a5, -2(s1)
                  lb           s8, 0(s1)
                  lbu          s2, 10(s1)
                  add          a0, a7, a7
                  lb           s7, 8(s1)
                  add          a6, s3, t5
                  or           s4, gp, s11
                  andi         a5, s0, 366
                  andi         t2, a2, 778
                  sb           zero, -10(s1)
                  auipc        s7, 839779
                  sll          s3, a2, t1
                  xor          ra, s6, s6
                  and          a5, s9, s2
                  sb           a1, 11(s1)
                  lb           zero, -3(s1)
                  lb           s7, -7(s1)
                  sll          tp, s7, s6
                  and          sp, a7, s9
                  andi         t1, a5, -683
                  slt          tp, tp, a0
                  add          t0, zero, a0
                  lb           s5, -13(s1)
                  sltu         a4, s4, s9
                  ori          s11, s5, 627
                  sb           a1, 16(s1)
                  srli         t4, a0, 24
                  sw           s0, 5(s1) #end riscv_load_store_rand_instr_stream_0
                  sltiu        a1, s0, 952
                  sltu         s2, t2, a2
                  bgeu         zero, a1, 5f
                  sub          t0, s3, s9
                  sra          a5, a4, t3
5:                xori         s1, s1, -232
                  xori         s4, t3, 685
                  addi         ra, s10, -1414
                  xor          s11, t6, a6
                  lui          s10, 185490
                  srl          a7, a7, t4
                  srai         t4, a7, 2
                  sra          a3, s0, s5
                  and          a4, s7, t2
                  nop
                  blt          a6, t5, 25f
                  sltiu        sp, t0, -503
                  and          a3, s8, s8
                  or           a3, s1, a0
                  bltu         t1, t5, 37f
                  and          a6, t4, s5
                  sra          s8, a5, s3
                  xori         s1, s3, -1601
                  bne          a0, t4, 40f
                  nop
25:               slli         gp, a2, 21
                  ori          a0, s5, -968
                  xor          gp, s8, a1
                  bne          gp, tp, 48f
                  auipc        a3, 185131
                  ori          s11, t3, 465
                  bne          s2, s1, 33f
                  or           s9, tp, s9
33:               srai         s11, s4, 11
                  and          s11, s2, a2
                  andi         a0, a2, -1652
                  lui          t1, 200506
37:               srai         a5, a6, 25
                  xori         a1, s11, 66
                  xori         t0, s0, -1352
40:               lui          s9, 323988
                  slti         t1, a7, -155
                  slli         zero, tp, 17
                  xor          t0, s2, t4
                  sltu         s0, a5, a1
                  slli         s2, a3, 23
                  bge          s11, a5, 52f
                  bge          s7, zero, 62f
48:               lui          s9, 115449
                  add          t0, s7, ra
                  bgeu         a2, a7, 52f
                  or           gp, ra, zero
52:               auipc        a1, 529891
                  bltu         s1, a0, 67f
                  bne          a0, a4, 68f
                  add          zero, zero, t5
                  nop
                  bne          a2, s6, 60f
                  sll          s2, s1, tp
                  bge          s7, gp, 64f
60:               ori          sp, s5, -658
                  slti         t6, a5, -1091
62:               lui          s2, 821361
                  bgeu         t0, s3, 76f
64:               blt          t0, a1, 67f
                  srl          gp, s11, tp
                  srai         s9, s2, 15
67:               andi         t4, ra, -261
68:               srai         s2, t5, 24
                  ori          a3, sp, -1028
                  auipc        s4, 367217
                  srai         t4, s5, 20
                  bgeu         s10, zero, 84f
                  slti         s6, t0, 907
                  bge          ra, s2, 83f
                  xori         s2, t2, 755
76:               xor          tp, s10, s3
                  lui          a5, 618463
                  sll          s0, a2, s1
                  xori         a3, zero, -599
                  bne          t5, t6, 94f
                  auipc        s3, 856423
                  ori          a5, a7, 422
83:               slli         s0, t6, 14
84:               ori          t6, a0, 874
                  auipc        a0, 44998
                  slti         s11, a2, 676
                  bge          a6, a3, 96f
                  bge          a0, s6, 107f
                  xori         t1, ra, 322
                  nop
                  addi         a4, a0, -2042
                  and          a7, sp, t0
                  srai         s3, t3, 28
94:               sra          a5, s8, a5
                  add          t6, s0, tp
96:               bgeu         s2, t0, 108f
                  nop
                  bgeu         s6, t3, 102f
                  sub          s9, t5, s4
                  bge          s7, s10, 101f
101:              xori         s1, a7, -1046
102:              nop
                  sub          a4, sp, s10
                  addi         a6, a2, -648
                  sub          t4, s7, t4
                  slt          ra, a3, s8
107:              sub          tp, s4, a3
108:              bgeu         a0, s10, 124f
                  srai         zero, sp, 11
                  or           t2, a1, s3
                  addi         s3, t2, 1770
                  srl          s10, a2, ra
                  xori         a6, t3, -1226
                  slti         ra, tp, 247
                  addi         t0, s0, 1595
                  add          s2, a1, s0
                  sra          t6, gp, s0
                  bge          a7, t4, 123f
                  slti         a1, s10, 286
                  bgeu         t4, gp, 132f
                  andi         s1, s10, -295
                  beq          a7, s0, 142f
123:              nop
124:              sltiu        s6, s1, 259
                  bgeu         a6, a0, 145f
                  bltu         s8, t4, 129f
                  blt          s7, s10, 145f
                  srli         t6, a3, 22
129:              addi         t6, s3, 1218
                  or           s8, s3, a6
                  andi         t4, s7, 1495
132:              slt          s4, zero, a7
                  auipc        s1, 698861
                  bne          s10, s4, 138f
                  lui          t1, 473355
                  sltu         a4, a5, a6
                  beq          s10, a5, 157f
138:              andi         s10, a1, 758
                  add          a7, a6, a4
                  slti         s2, s3, -1983
                  slli         sp, a1, 9
                  sra          a4, zero, s5
                  andi         a5, s5, 1487
                  bne          tp, t5, sub_1_j3 #branch to jump instr
                  srli         s1, s7, 19
                  srai         s11, ra, 18
                  auipc        a7, 920167
                  slt          t6, s0, a5
sub_1_j3:         jal          t1, sub_3 #jump sub_1 -> sub_3
                  slli         ra, t3, 2
                  add          s3, s6, gp
                  or           s10, t6, s7
142:              bge          s5, sp, 145f
                  slt          s5, s10, s4
                  sll          a5, tp, zero
145:              bge          gp, s1, 159f
                  bltu         s3, s7, 164f
                  beq          s11, a6, 166f
                  bne          s0, t3, 150f
                  sltu         a6, gp, a7
150:              bne          s8, t3, 167f
                  srl          s11, sp, zero
                  bge          s9, s7, 155f
                  or           s5, s7, s2
                  srl          s4, s8, a1
155:              bltu         a7, s10, 170f
                  slt          s6, t0, a5
157:              ori          zero, a0, -549
                  srli         tp, t4, 18
159:              sll          s4, s0, s6
                  lui          s8, 229961
                  beq          t2, tp, 174f
                  slli         s3, s6, 6
                  srai         t1, s4, 4
164:              and          s0, a3, t4
                  addi         s3, s7, -1162
166:              srli         tp, a1, 23
167:              ori          sp, t3, 236
                  bgeu         tp, t1, 173f
                  xor          s11, s5, ra
170:              srli         ra, s3, 14
                  nop
                  bgeu         s2, s8, 182f
173:              addi         a7, ra, 724
174:              sltu         a6, a0, s8
                  sltiu        a7, s4, 1156
                  ori          s5, a4, -1945
                  addi         s9, s4, -103
                  addi         s11, s8, -263
                  bne          s11, t3, 180f
180:              sll          s0, t0, s4
                  xor          s0, t5, a6
182:              srl          s3, t4, t2
                  sll          s2, s6, t6
                  bne          tp, a5, 190f
                  auipc        s6, 77667
                  ori          a3, t5, -399
                  slti         s10, a3, 611
                  slt          gp, s7, t1
                  bge          s11, s8, 192f
190:              srl          t4, a0, s5
                  bltu         s7, s3, 203f
192:              slti         a3, s1, 1784
                  and          s0, s9, s1
                  sll          t2, zero, t1
                  slti         a4, t5, -1991
                  xor          s2, a4, s8
                  bgeu         s4, s10, 209f
                  sltu         gp, t6, s10
                  slti         gp, s9, 100
                  beq          a4, gp, 214f
                  sra          t6, ra, zero
                  nop
203:              or           s5, s4, a3
                  blt          t4, zero, 218f
                  and          s6, a2, a1
                  bge          ra, s7, 215f
                  xor          t6, s3, a4
                  sltu         s10, t0, t4
209:              auipc        sp, 612995
                  beq          gp, s4, 222f
                  sltu         a3, s1, t6
                  bltu         s5, s3, 232f
                  beq          s0, t2, 222f
214:              beq          t2, s5, 232f
215:              srli         a6, t4, 4
                  ori          s9, gp, 127
                  addi         a0, s1, 290
218:              slti         gp, s10, -1080
                  sll          s7, a6, s2
                  sltu         t4, t5, t6
                  add          s7, sp, s5
222:              slt          s11, a0, s5
                  beq          t4, s6, 239f
                  sub          gp, t4, s10
                  slli         a7, a0, 26
                  slti         t6, s8, -1918
                  bge          zero, a0, 240f
                  srl          a3, t1, a6
                  or           a5, t3, s2
                  blt          sp, t5, 233f
                  srl          a7, tp, ra
232:              srai         s10, s10, 13
233:              sra          t0, zero, s5
                  ori          s0, ra, 1359
                  sll          s5, a4, a2
                  ori          a0, a7, 1526
                  xori         s1, a6, -1677
                  srl          a4, a6, s0
239:              slt          s9, a3, t4
240:              xori         gp, t4, 1031
                  srl          s9, s10, t3
                  lui          t0, 28245
                  lw           t1, 4(t5)
                  auipc        t4, 120997
                  sra          zero, a1, s10
                  addi         t5, t5, 24
                  srai         t4, t0, 8
326:              addi x27, x6, 0
326:              jalr x27, x27, 0
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
.word 0xdde6b9df, 0x83e171e6, 0xfe8a2241, 0x0d57744c, 0x2a1f1dd0, 0x431bab92, 0x1457d3d4, 0xdc13cc0d
.word 0x0d4bf455, 0x8243ab6c, 0x2e3b099c, 0x55fe30f9, 0x90921e8d, 0x9a7b811e, 0xc342d86b, 0x458290de
.word 0xf739e560, 0x0ba0b57a, 0x5c9d2810, 0x533fb5a7, 0xa1d73624, 0x85d0b369, 0xee3377a9, 0x84c75475
.word 0xdc18159b, 0x59ca1728, 0x799ab24d, 0xeff7defe, 0x0fb8aae3, 0x1438cd8f, 0x66ebc944, 0xef757d7b
.word 0xc93217fd, 0xcfc50366, 0xca9a7003, 0xfa69d398, 0x5cfe4ed4, 0x07f0b9ae, 0x4fa57be7, 0xa105916c
.word 0xfb740ed3, 0x579baf6d, 0x51813506, 0xaff4bd21, 0x984bfe0e, 0x2025a004, 0x30ead3fe, 0x23ebac9c
.word 0xb826a53b, 0xdc38840e, 0x326f6a42, 0x62e1370e, 0xef6e97b1, 0x610979a9, 0x21474e9b, 0xb62c4d88
.word 0x6ba9b19a, 0x6739dd94, 0xa0c5a3cb, 0xb1ae6e13, 0x40eca933, 0x7f44d0c3, 0x62bcf8be, 0xead55484
.word 0x2037caa9, 0x6039151a, 0xc9517c3f, 0xc90881db, 0xc1871570, 0x5d378efd, 0xcfe5cdcf, 0x20f123dc
.word 0x7d5ea858, 0x4827e6dd, 0x4bd9ec63, 0x2b84998a, 0x160e9de0, 0xca743714, 0x1a88ca99, 0x294b62d9
.word 0xe562c55a, 0x9f92ebb8, 0x1cf2413e, 0xdb3814c2, 0x217b498c, 0x25614f4d, 0x66775e14, 0x055fc2d6
.word 0xcb189d85, 0x8060c2dd, 0xea8b6453, 0x43bb2e39, 0x934682c1, 0x092d952b, 0xaf30f539, 0x45ab22cc
.word 0x6e44e8c8, 0xd3dae964, 0x05741600, 0x5eb7916f, 0x6f0f4d9e, 0x669a8c62, 0x79f9e5df, 0xb57492fa
.word 0x670efe9b, 0xb5f924ba, 0xc097ae8b, 0xda07a89a, 0xbc271e14, 0xdf0d1f08, 0xbd2a6d66, 0x70259347
.word 0xed56c936, 0xc298bec3, 0x64c0a012, 0x845a0c23, 0x0bf1d81d, 0xd09ac6f8, 0x5a76e852, 0x99888d61
.word 0x30b62e05, 0x2f88e220, 0x28ad7e01, 0x2ef904d7, 0x9afa01ac, 0x70e35d15, 0x17d8ea33, 0xcbbbe4c8
.word 0xbb0d0548, 0xdadef9f0, 0x56f00cca, 0x038a27e6, 0x751e9d68, 0x7a8988a9, 0x78400f8d, 0xfa37398e
.word 0x0f6e8fa2, 0x62acdd52, 0x1426729f, 0x6b45c945, 0xec11bee8, 0x99d98824, 0xdded9e37, 0x0790bb21
.word 0x46997e00, 0x6505128e, 0xe08812ac, 0x51f9e636, 0x0385153b, 0x420d3394, 0xdd7cdd71, 0xbcedeb6c
.word 0x59b67251, 0x53144a22, 0xfa7cca19, 0x83d11191, 0xd57a6235, 0xa725f86d, 0x00918c42, 0x2f2fd2e7
.word 0xb38cef68, 0x90fceb1a, 0x7bcf2d34, 0xef7fe5e4, 0x12d2ce86, 0x41d68280, 0x4357f53c, 0x682daf0f
.word 0x56379368, 0x23748dd5, 0x6d932142, 0x729abe24, 0x487651da, 0x0bcc8480, 0x17d577d4, 0xc3d82a8f
.word 0x8619908f, 0x4585da16, 0x3e3de583, 0x4071ec12, 0x583d37c0, 0xb074ada8, 0x5225d4e2, 0x0e465903
.word 0x04dac21d, 0xa4d031e0, 0xebe9b179, 0x5cb0a47d, 0xe4d4207f, 0x255082af, 0xea3b1bcb, 0xeeb4bd01
.word 0xd5b5c051, 0x9c857842, 0x8aedd913, 0x52c6db2a, 0x531a52aa, 0xdf1f8690, 0xe9031d4c, 0x93310d1b
.word 0x3f479c2c, 0xda853636, 0xefdee7e0, 0x03aa9877, 0x148e8b20, 0x2685190d, 0x7b523b73, 0x91d58a58
.word 0x585b5d2a, 0xce186d15, 0x011471ef, 0xd89692c2, 0x62d496d9, 0x65a2a968, 0x12434296, 0xc2dfd1c3
.word 0x272d442b, 0x3ead1a37, 0xd6eb67ad, 0xc90b159a, 0x2f2d2b8a, 0x3ccd5125, 0xa372473d, 0x4436a1b5
.word 0x7eb575f5, 0xfd2c2a41, 0xe7d553cd, 0xb8bdd881, 0x0c07ab87, 0x4f15d1d2, 0x6868dbdf, 0x06c63b55
.word 0x81a9d591, 0x1f2dc26a, 0x47a4d579, 0x77d71edf, 0xc7fd9779, 0xa6d3bc8c, 0x4c9096d1, 0xaa776108
.word 0x34f3b0a5, 0x1487a1ed, 0x5d23c0b7, 0xe466785d, 0xf75e37b0, 0xe693aa96, 0xc06cf55d, 0x887eafde
.word 0xe4ccd70f, 0x38f83a68, 0x8fa8967b, 0xdec021a9, 0x17c2b56a, 0xb992d69a, 0x09c7c847, 0x0bfa5c2c
.word 0x94102da1, 0x1e38e305, 0x1af82740, 0x6240f1f0, 0xf7196e9c, 0x470d4e67, 0x7a911db3, 0xabc55307
.word 0xb9b14cc4, 0x8dbbf9d6, 0x461986fd, 0xbc34210a, 0x563dbcc7, 0xbb0af079, 0x114c29f3, 0x520ba38a
.word 0x1a7369cd, 0xd55359e5, 0xc2eeda1c, 0x6aad83ed, 0x481954ca, 0x01570dc5, 0x82300d7e, 0x69df0e10
.word 0xb289bc4a, 0x22b74df3, 0xe58f51b7, 0x4bc16df8, 0x4d6f3333, 0xf33c65a3, 0xd64140c0, 0x2538bffc
.word 0x8f7277aa, 0xe91dab8f, 0x19ce9e4e, 0xe6436a10, 0x722d769f, 0x3dd7dc65, 0x87be5aff, 0xabcd9174
.word 0x0322b2bd, 0x7bbb683f, 0x6166645e, 0x2a7d82bf, 0xa1118cce, 0x6f2d76ce, 0x1ba34920, 0xef76bef7
.word 0xc5dff5b0, 0x2abc52bb, 0x3f8edfbd, 0x580b6b49, 0x3e937160, 0xf99dd1ba, 0x797cedef, 0x753ee78b
.word 0x991da15f, 0x3e222220, 0x249f2674, 0xd8180c30, 0x122d5550, 0x409f13ec, 0x73f64acf, 0xdf69f5bf
.word 0xbd28ed96, 0x5f332eaa, 0xc666683e, 0x9e7d8cbc, 0xeeac0eb7, 0x0283a2be, 0xfaba7223, 0x5a472a68
.word 0xdeb275dd, 0xb128b9ff, 0xce357238, 0x860f7717, 0x7c6388cc, 0x1beb47bb, 0x03932770, 0x0bcb7d09
.word 0x38ca3bfb, 0x25fdf6f8, 0xfacd9989, 0x415b122b, 0x97fa0f76, 0x928a95ce, 0x533654ee, 0xa64866fc
.word 0x11e77560, 0x9de26be2, 0x81246bba, 0x4d566beb, 0xdb847a19, 0xa607b7e4, 0x6f6c54ed, 0x46af1da7
.word 0xeb571b44, 0xc6e2bbc8, 0x15f6d041, 0x6ff2049e, 0x4b352406, 0xf8f4579f, 0x6c02bd3d, 0xc313c4fe
.word 0xc4cd1b3e, 0xf31999ef, 0x59e7efcc, 0xd2aad4a3, 0x68195c86, 0xbf6128ca, 0xed904c59, 0xa93abbdd
.word 0x06bbc752, 0x75ae5ba7, 0xb306f7df, 0xe236e766, 0xa671839f, 0xdd188bd7, 0xc80afa24, 0xf6784a2e
.word 0xe32300c1, 0xbc3a4c7d, 0xe2034227, 0xfb8e2760, 0x896c1a0b, 0x0b728c63, 0x1460e046, 0xce40c376
.word 0xf8a84f1d, 0xdbb8dc4d, 0xa519f5f6, 0x6e26b477, 0x50f2ed2b, 0xaeeda1cd, 0xa73d7490, 0x29a315b9
.word 0x5db38d41, 0x393ec140, 0x3ae4ac9f, 0x6ca4fb4b, 0x3dc2160d, 0x16ef6d0e, 0x13081b9c, 0x9666bbf6
.word 0x447c9350, 0x495176e2, 0xbace807b, 0xccb8b631, 0xc29838d4, 0xf4b35709, 0xea241a8f, 0x9db556eb
.word 0xc6f689e7, 0x0bcf31eb, 0xfedf858d, 0xedfdd59e, 0x697eb781, 0x4c37a4fc, 0xf98e6098, 0xa5c5f5d9
.word 0xbf2e0266, 0x1468d7f4, 0x5978d153, 0x6f8be609, 0xf5532e60, 0xc172b22a, 0xdda84145, 0xde1f549a
.word 0x431922cb, 0xb06c2340, 0x4baa23a1, 0xf7ae44fe, 0x1b8a398a, 0xdefd9d8b, 0x3b293b59, 0xb8850990
.word 0xb213023f, 0x8fbab469, 0x54de9852, 0x49548712, 0x839dd756, 0xfee4e285, 0x0b8aadbd, 0x4614d72e
.word 0x85d6ef2c, 0xa48268ef, 0xde43ae9c, 0x1c88feb1, 0x43539a86, 0xaa083d19, 0x3c246939, 0x16232a71
.word 0xe1557632, 0x4431d8b5, 0x57d8b2be, 0x5c9a2bf8, 0xbb4864c4, 0xbb890a7e, 0x46d5ff1b, 0xbf17ad0f
.word 0x292c9a27, 0x546d353a, 0xe9757192, 0x8ca79a7d, 0x0b2986ed, 0x94279172, 0x9b91b73b, 0x39490a46
.word 0xdad4f7cb, 0x7637843c, 0xd1b1a891, 0x75ccd5c6, 0xa5260604, 0x858f7c1a, 0x6a159c49, 0x16db80d2
.word 0x718bed58, 0x7ee95d59, 0xc46da49c, 0xf4fae23e, 0xdc57aeff, 0xa1cbe497, 0x84a7fc2b, 0x940cfd37
.word 0x87fddb8f, 0x1b455b14, 0x84de4a48, 0xbd22d057, 0xb3765e12, 0x1df71af0, 0xb8d5f63f, 0x0a2fb0fe
.word 0x1f1aa8ed, 0xa1926fa0, 0x3ed4dafc, 0xb3001827, 0x140f5d3a, 0x88b0c236, 0xca2ef3e5, 0xc1a87284
.word 0xbebc20ec, 0xdd3b1134, 0xf193d477, 0x395ade26
.section .region_1,"aw",@progbits;
region_1:
.word 0x86c8789c, 0x859a3e5a, 0xa973a098, 0xb69ce9cb, 0x556e316e, 0x919611e9, 0x468e8f47, 0x6f3d49fb
.word 0x7ed8749e, 0x39a7762a, 0x9843be87, 0x713a499c, 0x6e8ca1b0, 0x394287ce, 0xcb79330a, 0x327c4924
.word 0x7367d40b, 0xed62cf01, 0x4c62a29a, 0x4dfa621f, 0x343647ab, 0xe574fd63, 0x2b1c2ab4, 0xeead0ef3
.word 0xa86dbfce, 0xf7239503, 0xb19df28f, 0x6d093273, 0x226db3a5, 0x55211201, 0x454990e0, 0xb09d795f
.word 0xac4552ad, 0x1ab9bf7d, 0xd4b390cf, 0xfcf7f91a, 0x365ab426, 0xda32a863, 0xe5cc00ea, 0x9471f82b
.word 0xf6ac6393, 0x4448816c, 0xea907117, 0x17d1b609, 0x9547ee7d, 0xff42e8ca, 0x91c0b49b, 0x1d53573f
.word 0x023dfd62, 0xe1b58d56, 0x8246a08a, 0x63e4c4c8, 0xf3640f80, 0x93227015, 0x353fa19d, 0xb603e96f
.word 0x6c3b5e1f, 0x12a888b8, 0x547af562, 0x1a816b00, 0xa3919ffd, 0x9971fc85, 0x792bdacb, 0x1b5906b8
.word 0xef9867bd, 0xd969693e, 0x9e6f52fa, 0x1fc44836, 0xc85d56a2, 0xda6be733, 0x95a35d9c, 0xe579692a
.word 0x39118bac, 0x1b29be98, 0x1ffc254c, 0xca4f994d, 0x53746e6c, 0xdcd996ef, 0x053ccf7a, 0xed9c9360
.word 0x57dca593, 0x4c4ef39d, 0xcd1add4e, 0xebd72fd4, 0x18d4df1d, 0x492409c2, 0x4c38159d, 0x229e7d79
.word 0xbe85ba6a, 0xae123801, 0xca5d56b0, 0x9a7778e7, 0x67139254, 0xe3c2a980, 0xeca82ad3, 0xd79186b3
.word 0x94cb678d, 0xa97ff253, 0x15487c29, 0xc6ee9a3b, 0x2f0e5e94, 0x46355afb, 0x5f9bbf1d, 0x33bb6351
.word 0x64e45a11, 0x42846c90, 0x26b5002d, 0xa17f740c, 0xd4d7f187, 0x468788d1, 0x8478ac3b, 0xd019fe39
.word 0xb4b44baf, 0xd470ac6c, 0xef1b5eb6, 0x81cd1ddb, 0x9f6819f0, 0x086efe6b, 0xca545502, 0xf7ecc28d
.word 0xb43e4d88, 0x0797da3b, 0xac8ffcfa, 0x13067b0c, 0xe6c4b587, 0x68947aec, 0xa8ea9cf6, 0xaba4c254
.word 0xc96e9ef7, 0x4c43fdea, 0x0e20cfe6, 0xaf5d3b79, 0x84b94d12, 0xfc417024, 0x0d5e6289, 0x31880ce9
.word 0x80ebabfe, 0xf5fe90c0, 0x2e1898ee, 0x8e9d7d86, 0x559782c0, 0xf0c0a6ae, 0xc11c3452, 0xf76b614a
.word 0xa398d4b4, 0x47e1f706, 0x7294ebe2, 0x3bf17151, 0xf20787dc, 0x458b06cb, 0xfc5ea392, 0xbc9107f3
.word 0x0a17cc77, 0x44303548, 0x7061a8ef, 0x153d3575, 0xeeb85bd6, 0x2ae441af, 0x5c217554, 0x5e1ae30f
.word 0xf88aca90, 0x8f04ea17, 0x354b018c, 0xe0a3836b, 0xb44e2498, 0x57a99b75, 0xfb94ca9b, 0x6459768c
.word 0x76386521, 0xd2ed1bd6, 0xff94b7ad, 0xf573e462, 0xdede5909, 0xd7729e42, 0xb5b89846, 0x476bca22
.word 0x6861f2f5, 0xce04aaba, 0x0d0817f4, 0xa83d4b80, 0x52f366b3, 0x750e83d9, 0xb5ccd3b0, 0x7cc84486
.word 0x6536a963, 0xbe3835a9, 0x804360c9, 0xebe632a9, 0x5eff1c75, 0x50bee786, 0x721880f2, 0x2dcf35ea
.word 0x811f992e, 0xdd8249c4, 0x77185dee, 0x0784303c, 0xdeda3715, 0x2c7de8c8, 0x28fc2a83, 0xb4c78cc2
.word 0xa2f0f038, 0xba4935e0, 0x8ded1274, 0x27cbafab, 0x455c8d61, 0x155be935, 0x1854a975, 0xe8d811d8
.word 0xd81897cf, 0xc367eb1d, 0x7af06f57, 0x50a9c82e, 0x28b9897a, 0x6581e6ff, 0x7b91c098, 0x05be6633
.word 0x873ae2b1, 0x482006ed, 0x0ededbe9, 0x67bded21, 0x9fd318fb, 0x1bcb2c75, 0x6023e25e, 0xa9de7971
.word 0x7eff99b9, 0x561bac19, 0x1dffee16, 0x417d8b0e, 0x80363d45, 0x52589a1c, 0x11bb132a, 0xc803a950
.word 0xa8501757, 0xef99412e, 0x1d2b9be7, 0xc94be13b, 0xa9129905, 0x0c1f4129, 0x96d97653, 0xb58f7bce
.word 0xbacfb708, 0xc435af69, 0x9350b94a, 0x08a4a13a, 0x61d2c688, 0x4d238a6f, 0xb7d9ca24, 0x78f74252
.word 0xeb3cdfad, 0xbf627ab3, 0xfeba36bc, 0xa76a9a95, 0xf569064e, 0xcbc9428a, 0xe0df4897, 0xe354169a
.word 0xe6f9cb66, 0x64c005f8, 0x8549bcaa, 0x75a81f2c, 0x8b32311d, 0xfda577d2, 0xe51078f2, 0xcd2b265b
.word 0x12fbc729, 0xe5acd310, 0x870c8a20, 0x4f0d866d, 0x9491748e, 0xb475f695, 0xe0765424, 0xca201f30
.word 0x516b75c0, 0xa93dc605, 0x953ce683, 0x2a651720, 0x2ea3ef34, 0x8b0840e9, 0x42d633e6, 0x291aac9e
.word 0x6528ee85, 0x11a07712, 0x35a2f99a, 0x8b10a0ca, 0xe0e4016d, 0xa7763229, 0xd0307b57, 0xce77fe24
.word 0xfd71f0c3, 0xf83b1938, 0x15c9ff87, 0x4c86fcef, 0x8a143c5c, 0x2a9d10f7, 0xb8a26ac6, 0x28351b4d
.word 0xbdd9bbd6, 0xec33d8e5, 0x56dce898, 0x64c166ee, 0x5ef64377, 0x48071462, 0x7b1f10c4, 0x2146c1db
.word 0x08993867, 0x5dbed87d, 0xfb5b054d, 0xe917d65d, 0x2e8a8c40, 0xdaa01e11, 0x3f516450, 0x8c06af8a
.word 0x4de17439, 0x636728bd, 0xe7f989ec, 0xbf90ea1b, 0x9f26cd5a, 0x36b713f0, 0xa529dc4e, 0xd47b1b98
.word 0x2f29c41f, 0x3855e374, 0xfcf05798, 0xcf12a01d, 0x33bf048f, 0x29fb7567, 0x4f2a8108, 0x81a18c65
.word 0xc80859ec, 0xcb77531b, 0x9bf48ff8, 0x0f1667c1, 0x1b26a982, 0x7de397f8, 0xf0f88e24, 0x463e6599
.word 0x4575deeb, 0x8f0cd86c, 0x547f92f5, 0x46c34bda, 0x2bb6d6d7, 0x80cb99bd, 0x8f25e5a9, 0x9b41dccd
.word 0xd00f9f96, 0xc8cd0563, 0xd76d330d, 0x57d571ff, 0xb3483222, 0xf8db8f74, 0x825cadac, 0x534d5f3c
.word 0x22ade736, 0x4765b9b2, 0x14bde120, 0x833a3fd4, 0x936674e2, 0x49f36e2e, 0xb8b4df6d, 0xb2fadadf
.word 0x4b3df3db, 0xa8f761f9, 0x99943bd8, 0xad44ce8c, 0x6302d01e, 0xdee9bf95, 0x09a4b55a, 0xaf5feda7
.word 0xdfa08eec, 0x64037f60, 0x3a354e0e, 0x25fde261, 0x984c99db, 0xb56e1b16, 0x3cd3249d, 0x5921f719
.word 0x951dddbf, 0xd8ef5311, 0x08920cf4, 0x4b1c2f93, 0x5b6ceaf5, 0x61b02a8d, 0x2a4f5612, 0x556fb940
.word 0xf01e3c6e, 0x26424f2e, 0x814cf7aa, 0x6e415b00, 0xb6ef4303, 0xbfc2c314, 0x27263ee6, 0x33b92f13
.word 0xe8a5fd45, 0x199b66ce, 0x7e66eff2, 0x7f3d5f5c, 0xe617ee1a, 0x207aab06, 0xc4b508e3, 0xff211660
.word 0x084335fe, 0xd93d05f4, 0xabb751b3, 0x0feafafb, 0x9a273d76, 0xb4c05c3e, 0xd4da00e1, 0xb81a6dd8
.word 0x2a682b3c, 0xad77faa1, 0x4734e806, 0x63708c32, 0x89022aaf, 0xbf37c69b, 0xdc261751, 0x602fd090
.word 0x26bb69a8, 0x27a86ec8, 0x5d533521, 0xa6ec8da7, 0xeb4bd2db, 0x4facaa05, 0x440513be, 0x819f89c0
.word 0xf82db350, 0x3e5aa49f, 0xfd676db5, 0x25e58369, 0x0958b297, 0x23d27b48, 0x2976bcf5, 0xa0974e89
.word 0x7c0f0bf4, 0x0c528e4f, 0x00c6ecac, 0xaacb1371, 0xe4ebfdbf, 0x520d6c3f, 0x419c3090, 0x3c173666
.word 0x88f40d31, 0xeb6423e2, 0x6f8d51a9, 0x0f8fbb27, 0x847ac76d, 0x102895ef, 0x82a2c84c, 0xea37e3cc
.word 0x31858be7, 0x47f52238, 0x9b91423a, 0xa40cac15, 0xab0f4ab8, 0xe0d7c91a, 0xef0f36f3, 0x62c18e7e
.word 0x3ed2587e, 0x93ad153e, 0x8becc994, 0x406491ad, 0x8d91109f, 0x5adcf8dd, 0xe7124570, 0x5e7103bb
.word 0x44708d72, 0xba53e64d, 0x60712ef4, 0xef6d67c3, 0xae24b371, 0xcfd43515, 0xd356f3b5, 0x5e0591cc
.word 0xfdddbda0, 0xe7fcf33d, 0x42fb208f, 0x3baa0ad2, 0x6178303c, 0xd902a296, 0x5323cdf2, 0x064a6f04
.word 0x68257647, 0xcd0a2774, 0x16a65470, 0x1ed466a2, 0xb998d687, 0x262765e6, 0xf8ca6dfd, 0x7d96e6d1
.word 0x037975d1, 0x21112628, 0x85d8e205, 0x7b29fbf4, 0x0dd178f2, 0xaf0567d5, 0xf444b475, 0x402052b3
.word 0x2092872e, 0x3afa8420, 0x3f6aa366, 0xbc02cb34
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
                  add x12, x30, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x12, x30, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x12, x30, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x12, x30, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x12, x30, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x12, x30, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x12, x30, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x12, x30, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x12, x30, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x12, x30, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x12, x30, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x12, x30, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x12, x30, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x12, x30, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x12, x30, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x12, x30, zero
                  csrr x22, 0x341 # MEPC
                  csrr x22, 0x342 # MCAUSE
                  li x9, 0x3 # BREAKPOINT
                  beq x22, x9, ebreak_handler
                  li x9, 0x8 # ECALL_UMODE
                  beq x22, x9, ecall_handler
                  li x9, 0x9 # ECALL_SMODE
                  beq x22, x9, ecall_handler
                  li x9, 0xb # ECALL_MMODE
                  beq x22, x9, ecall_handler
                  li x9, 0x1
                  beq x22, x9, instr_fault_handler
                  li x9, 0x5
                  beq x22, x9, load_fault_handler
                  li x9, 0x7
                  beq x22, x9, store_fault_handler
                  li x9, 0xc
                  beq x22, x9, pt_fault_handler
                  li x9, 0xd
                  beq x22, x9, pt_fault_handler
                  li x9, 0xf
                  beq x22, x9, pt_fault_handler
                  li x9, 0x2 # ILLEGAL_INSTRUCTION
                  beq x22, x9, illegal_instr_handler
                  csrr x9, 0x343 # MTVAL
                  1: la x28, test_done
                  jalr x1, x28, 0

ecall_handler:    
                  la x22, _start
                  sw x0, 0(x22)
                  sw x1, 4(x22)
                  sw x2, 8(x22)
                  sw x3, 12(x22)
                  sw x4, 16(x22)
                  sw x5, 20(x22)
                  sw x6, 24(x22)
                  sw x7, 28(x22)
                  sw x8, 32(x22)
                  sw x9, 36(x22)
                  sw x10, 40(x22)
                  sw x11, 44(x22)
                  sw x12, 48(x22)
                  sw x13, 52(x22)
                  sw x14, 56(x22)
                  sw x15, 60(x22)
                  sw x16, 64(x22)
                  sw x17, 68(x22)
                  sw x18, 72(x22)
                  sw x19, 76(x22)
                  sw x20, 80(x22)
                  sw x21, 84(x22)
                  sw x22, 88(x22)
                  sw x23, 92(x22)
                  sw x24, 96(x22)
                  sw x25, 100(x22)
                  sw x26, 104(x22)
                  sw x27, 108(x22)
                  sw x28, 112(x22)
                  sw x29, 116(x22)
                  sw x30, 120(x22)
                  sw x31, 124(x22)
                  la x28, write_tohost
                  jalr x0, x28, 0

instr_fault_handler:
                  add x30, x12, zero
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
                  add x30, x12, zero
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
                  add x30, x12, zero
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
                  csrr  x22, 0x341
                  addi  x22, x22, 4
                  csrw  0x341, x22
                  add x30, x12, zero
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
                  csrr  x22, 0x341
                  addi  x22, x22, 4
                  csrw  0x341, x22
                  add x30, x12, zero
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
                  csrr  x22, 0x300 # MSTATUS;
                  csrr  x22, 0x304 # MIE;
                  csrr  x22, 0x344 # MIP;
                  csrrc x22, 0x344, x22 # MIP;
                  add x30, x12, zero
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
