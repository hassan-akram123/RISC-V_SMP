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
                  li x16, 0x40000100
                  csrw 0x301, x16
kernel_sp:        
                  la x15, kernel_stack_end

trap_vec_init:    
                  la x16, mtvec_handler
                  ori x16, x16, 1
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
                  li x0, 0xc7944fad
                  li x1, 0x0
                  li x2, 0xaa8dd69f
                  li x3, 0xff9f694e
                  li x4, 0x33e6eadc
                  li x5, 0x80000000
                  li x6, 0xf6a1e7e8
                  li x7, 0x80000000
                  li x8, 0x2
                  li x9, 0x80000000
                  li x10, 0x3
                  li x11, 0x7a58c408
                  li x12, 0x80000000
                  li x13, 0xee6ef4d0
                  li x14, 0xf4453f51
                  li x16, 0xc
                  li x17, 0xfeebdb36
                  li x18, 0x8
                  li x19, 0xf
                  li x20, 0xa
                  li x21, 0xf377a095
                  li x22, 0x0
                  li x23, 0x80000000
                  li x24, 0x80000000
                  li x26, 0x0
                  li x27, 0x80000000
                  li x28, 0xf41cc5ce
                  li x29, 0x80000000
                  li x30, 0xf38390fe
                  li x31, 0xecb8e74
                  la x25, user_stack_end
main:             sltu         t6, s10, s9
                  sra          s2, t1, s1
                  la           s11, sub_1
                  xor          s2, a5, s2
                  or           t0, a5, a6
                  addi         s11, s11, 77
                  andi         t0, s3, -1417
main_j2:          jalr         t6, s11, -77 #jump main -> sub_1
                  la           a6, region_0+1815 #start riscv_load_store_rand_instr_stream_0
                  lb           t3, 16(a6)
                  lbu          t4, 9(a6)
                  lbu          s5, -5(a6)
                  lb           t1, 13(a6)
                  lb           t5, -15(a6)
                  andi         a4, tp, 61
                  sh           s5, 1(a6)
                  sb           t5, -10(a6)
                  lbu          t1, 6(a6)
                  sh           t6, 5(a6)
                  slli         a4, s5, 23
                  lhu          t2, 13(a6)
                  sb           t1, -4(a6)
                  srl          t5, s0, t5
                  lb           s0, 16(a6)
                  sb           s9, -8(a6)
                  slli         s5, s11, 23
                  lb           s7, 1(a6)
                  sb           a3, -10(a6)
                  lb           a0, -16(a6)
                  sb           s1, 14(a6)
                  ori          a1, t6, 1654
                  ori          s5, gp, -286
                  ori          t6, s7, -176
                  nop
                  lb           s2, -9(a6)
                  lbu          s0, -15(a6)
                  or           s6, t0, zero
                  lui          s7, 186894
                  sltiu        s1, s11, 1679
                  sb           t4, 11(a6)
                  sb           s4, 8(a6)
                  lbu          t1, -13(a6)
                  andi         s2, s9, -1954
                  sh           s1, 7(a6)
                  sb           s8, 16(a6)
                  lbu          tp, 8(a6)
                  lbu          s11, 12(a6) #end riscv_load_store_rand_instr_stream_0
                  srli         s5, gp, 31
                  nop
                  lui          s11, 912262
                  addi         s7, s10, 1293
                  la           t5, sub_1
                  addi         tp, s1, -519
                  xori         s3, a5, -768
                  sltu         s2, s11, a6
                  srl          s7, s0, s3
                  and          ra, a7, s9
                  sra          s11, tp, s8
                  addi         t5, t5, 853
                  and          s11, t1, s10
main_j1:          jalr         t6, t5, -853 #jump main -> sub_1
                  bltu         gp, zero, 11f
                  lui          a3, 890284
                  srai         s6, a6, 27
                  sra          a1, a5, s8
                  nop
                  slli         t6, a6, 11
                  andi         a7, tp, 651
                  sltiu        s10, s4, 1479
                  bge          ra, sp, 16f
11:               beq          t4, t6, 26f
                  xori         zero, s2, 395
                  lui          t5, 208286
                  slli         t3, a3, 19
                  bltu         tp, a1, 29f
16:               sltu         t4, ra, a7
                  xori         s2, t1, 1948
                  srai         t2, a1, 6
                  srl          s3, a5, a7
                  and          zero, s9, s2
                  slti         s2, a1, 1366
                  sra          s2, a5, s2
                  sltiu        s10, s0, -1120
                  bltu         s7, t1, 34f
                  and          t5, s0, ra
26:               lui          s11, 238849
                  and          t5, s8, gp
                  addi         t5, t1, 632
29:               sll          s11, gp, s1
                  bltu         t6, a1, 38f
                  bgeu         t0, t5, 47f
                  lui          a1, 1018949
                  slli         s0, s11, 15
34:               nop
                  bge          gp, s0, 47f
                  sltiu        t1, s11, -708
                  or           a1, s11, t4
38:               beq          t4, s7, 39f
39:               bltu         a3, a5, 40f
40:               sltu         a3, ra, t0
                  xor          s11, a2, t6
                  bne          s0, t4, 56f
                  sltu         tp, t3, t3
                  sra          ra, t6, t4
                  andi         tp, s2, -34
                  sub          s11, t2, s4
47:               srai         s11, t5, 30
                  slti         s4, s9, 450
                  slt          t0, s3, s0
                  xori         t3, tp, -371
                  sltu         zero, s3, a3
                  sltiu        tp, ra, 753
                  sra          s4, s6, s8
                  xor          s10, gp, s5
                  blt          a3, t2, 70f
56:               slt          ra, t6, s9
                  ori          ra, s4, -1527
                  andi         a1, t0, -1878
                  nop
                  slli         t4, s8, 18
                  add          t6, s8, s2
                  nop
                  and          t2, s6, a0
                  xor          s11, s11, s3
                  bne          a6, s10, 76f
                  srai         s6, a4, 2
                  sltiu        a6, a0, 1194
                  sub          ra, a4, t0
                  sll          t3, a5, s2
70:               sll          a1, s6, a6
                  lui          s1, 567937
                  or           s8, s5, t3
                  andi         s11, s0, 438
                  srli         s10, gp, 28
                  sub          s5, gp, t5
76:               nop
                  sltiu        t2, s6, 1328
                  xori         s8, s1, 568
                  beq          a2, a6, 84f
                  auipc        s10, 200597
                  and          t3, tp, a2
                  and          s2, s2, s8
                  bge          a7, sp, 84f
84:               lui          a4, 570202
                  bltu         t0, s0, 87f
                  blt          a1, t2, 106f
87:               bltu         t3, t2, 96f
                  ori          t2, s6, 1614
                  bltu         a1, t6, 93f
                  blt          tp, a7, 91f
91:               srai         a2, a5, 17
                  nop
93:               srai         a4, sp, 21
                  lui          a6, 894149
                  andi         s1, s2, 513
96:               sltu         a1, s1, gp
                  bgeu         zero, t0, 109f
                  lui          s0, 887730
                  add          a7, gp, s8
                  sltu         t3, t0, s11
                  addi         tp, s2, -936
                  srai         a4, s0, 7
                  add          s5, a2, s9
                  and          s7, a4, s11
                  slli         zero, tp, 2
106:              nop
                  andi         s3, s5, -490
                  ori          t0, gp, 95
109:              bge          a4, s11, 128f
                  andi         s4, a1, 1781
                  xori         s10, t5, 269
                  and          a6, gp, t4
                  bne          t2, t6, 125f
                  and          a6, t6, s1
                  sll          s1, s2, a7
                  xor          t3, s6, s11
                  xor          s10, a7, s7
                  srai         s2, s8, 1
                  or           s1, sp, t6
                  bne          t3, a0, 128f
                  xor          t2, gp, s1
                  andi         s6, t2, 1790
                  sub          s3, t4, t4
                  or           a6, t6, s10
125:              slti         t6, t1, -1742
                  and          s6, zero, t1
                  ori          t3, s10, 1722
128:              sub          t5, t1, a6
                  blt          ra, t2, 142f
                  sltu         a6, zero, a7
                  and          s1, s11, s8
                  bne          a3, a2, 137f
                  andi         s5, t0, 380
                  lui          s10, 713045
                  nop
                  auipc        t3, 801693
137:              add          gp, s5, t3
                  lui          s6, 1001647
                  and          s11, t1, t1
                  lui          a2, 151751
                  slti         a1, a1, -268
142:              bge          s3, s7, 155f
                  or           s4, s5, t1
                  slli         t6, a0, 15
                  and          zero, t0, t4
                  sra          s0, s9, a0
                  lui          s1, 268972
                  bne          s7, s5, 155f
                  ori          s7, a6, -1110
                  srli         s7, zero, 8
                  blt          t4, ra, 160f
                  bgeu         s11, a7, 172f
                  sll          t1, s11, t6
                  bgeu         t0, a2, 158f
155:              slli         t4, a7, 13
                  addi         s6, tp, -2016
                  srl          a4, a7, a2
158:              sltiu        s7, s3, -1443
                  sll          s11, t2, s4
160:              add          a0, t4, sp
                  or           t1, t1, gp
                  slt          s1, s11, a1
                  sll          s6, a5, a5
                  blt          t2, s6, 165f
165:              xori         a4, s3, 781
                  beq          s11, t6, 177f
                  auipc        t0, 746289
                  sub          s5, s10, s6
                  beq          a4, t6, 185f
                  add          s8, ra, s5
                  and          a3, t0, t1
172:              srli         t2, a4, 30
                  bge          s2, s3, 181f
                  sltiu        t4, s9, 1428
                  xor          t5, a1, zero
                  or           s6, gp, sp
177:              srai         zero, s7, 10
                  sub          a0, tp, a3
                  bge          t5, s10, 181f
                  slt          t4, s1, s4
181:              blt          s11, s5, 190f
                  srli         s6, a1, 0
                  xori         a7, t0, -1264
                  srai         a2, s8, 11
185:              sra          s8, a5, s4
                  sub          s0, s6, s1
                  slt          t4, s5, s8
                  or           tp, gp, t1
                  xori         t2, t0, -193
190:              andi         s0, a3, -1543
                  and          s11, s11, gp
                  nop
                  srli         t4, a7, 15
                  nop
                  add          t4, s6, t3
                  beq          a6, a5, 210f
                  sub          s1, s2, a6
                  bge          s8, s2, 212f
                  srl          zero, t6, a7
                  add          t2, s9, ra
                  slt          s8, s0, a0
                  add          s0, a5, s4
                  beq          s10, t0, 212f
                  bne          s1, a4, 212f
                  bge          tp, a6, 214f
                  bgeu         t4, s10, 214f
                  srli         t6, a1, 1
                  sltu         a7, ra, a6
                  auipc        s4, 932512
210:              slli         s11, s6, 3
                  bne          a3, t1, 214f
212:              nop
                  sub          s0, t0, t2
214:              sltu         s10, s1, a6
                  la x2, test_done
                  jalr x0, x2, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            bne          s11, a2, sub_4_stack_p
sub_4_stack_p:    addi         s9, s9, -20
                  sub          a1, s11, sp
                  sw           t6, 4(s9)
                  srli         a4, a0, 16
                  auipc        a6, 253882
                  slli         a1, t2, 16
                  sll          s11, s11, s9
                  la           s1, region_0+1109 #start riscv_load_store_rand_instr_stream_1
                  nop
                  sb           t2, 753(s1)
                  xor          t5, s5, a3
                  ori          s5, s1, 594
                  addi         t1, s1, -490
                  or           a2, tp, a7
                  xor          t5, a6, s7
                  xor          s5, a1, s0
                  sb           a4, 549(s1)
                  sw           zero, -801(s1)
                  auipc        s0, 698190
                  sb           a1, -572(s1)
                  lbu          ra, -416(s1)
                  lh           ra, -759(s1)
                  sltiu        a0, s2, -1744
                  lb           s5, -4(s1)
                  lb           tp, -450(s1)
                  slli         t5, a0, 17
                  lb           t1, 439(s1)
                  lw           t1, -453(s1)
                  lw           s10, -317(s1)
                  sltu         a0, s5, a3
                  lh           a3, -539(s1)
                  lh           s5, -575(s1)
                  lh           s11, 485(s1)
                  lh           t2, 669(s1)
                  sb           a2, 730(s1)
                  lb           ra, 863(s1)
                  slti         a4, s5, 288
                  slt          s2, a4, t2
                  sb           s3, -560(s1)
                  lb           s6, 329(s1)
                  lui          a1, 23438
                  lbu          s8, -953(s1)
                  sra          zero, s6, tp
                  sw           s7, 791(s1)
                  sb           a0, -772(s1)
                  auipc        a0, 776940
                  sb           s0, 10(s1)
                  auipc        s2, 804296
                  sb           s8, -917(s1)
                  sb           s6, -954(s1)
                  srai         t2, s9, 11
                  auipc        a6, 338890
                  lb           s4, -800(s1)
                  srai         s3, s2, 19
                  sltu         s2, t1, a7
                  lbu          s5, -359(s1)
                  andi         s5, a7, -662
                  sub          s4, s6, a7
                  sb           a5, -280(s1)
                  srli         a6, s9, 22
                  sub          t5, tp, a0
                  sb           s5, -1073(s1) #end riscv_load_store_rand_instr_stream_1
                  auipc        s4, 375095
                  sltu         s8, s5, s3
                  andi         tp, a6, -1582
                  nop
                  bge          s9, s9, 8f
                  xor          a0, t5, a3
                  slti         a0, a7, 69
                  lui          s5, 287174
8:                slli         s3, t3, 10
                  bltu         a5, s4, 28f
                  srl          t6, s7, s1
                  bgeu         s6, s1, 27f
                  srl          s7, s0, sp
                  addi         a0, t2, 1435
                  addi         s0, s9, 1297
                  andi         s2, zero, 1617
                  sub          s10, t2, s8
                  srli         t3, s0, 30
                  bge          a0, a0, 28f
                  xor          t4, s9, gp
                  srli         t3, s11, 21
                  beq          a7, a5, 36f
                  or           s7, s5, s11
                  addi         t6, t0, 1087
                  bge          s0, s3, 43f
                  ori          s5, t3, -851
                  and          s7, t3, ra
27:               sll          s4, t4, s1
28:               or           t0, s10, a0
                  slti         t4, s11, -299
                  nop
                  sll          a0, ra, a4
                  sub          s5, tp, s5
                  slt          s3, s1, t2
                  auipc        s7, 327900
                  or           s3, s1, t5
36:               xor          ra, a2, a6
                  bgeu         ra, a0, 41f
                  bltu         s10, t6, 51f
                  sltu         a6, s9, s10
                  slli         gp, t4, 4
41:               ori          a3, t1, -1004
                  slt          zero, a2, ra
43:               blt          s1, a7, 48f
                  blt          a7, s1, 60f
                  and          t0, t6, s5
                  sra          s1, zero, s0
                  beq          t4, t6, 54f
48:               srai         t3, ra, 17
                  nop
                  slti         s6, a5, -365
51:               lui          tp, 1023090
                  xori         gp, a1, -1704
                  lui          zero, 11433
54:               slli         a7, s0, 11
                  nop
                  slli         s1, t1, 30
                  nop
                  or           zero, t2, s3
                  add          a0, t6, s8
60:               addi         tp, s10, 1525
                  slli         s2, s8, 2
                  slli         zero, s8, 7
                  srli         s3, ra, 8
                  andi         zero, a4, -425
                  bne          s2, sp, 80f
                  ori          a7, sp, -888
                  slt          s8, a1, a4
                  lui          a4, 112549
                  auipc        t3, 888183
                  add          s10, s6, a7
                  bge          a4, t3, 81f
                  and          a7, a2, s1
                  andi         ra, a2, 692
                  slli         s0, t4, 9
                  and          a1, s0, s10
                  srl          a2, s1, s8
                  sltiu        s5, s8, -821
                  bltu         gp, s3, 79f
79:               xori         s6, sp, 334
80:               slt          s7, zero, t5
81:               sll          s11, a3, ra
                  andi         s10, s11, 819
                  srai         s1, a3, 29
                  sltu         s0, zero, a1
                  andi         a1, a6, -866
                  sltu         a2, t1, gp
                  sub          s10, s11, s7
                  bltu         s2, t0, 97f
                  sltu         s10, t3, t2
                  slti         a3, s8, 1839
                  and          t6, s8, a3
                  srl          gp, t4, t6
                  slti         t5, s9, 1350
                  lui          tp, 23695
                  sltiu        t5, t6, -248
                  or           t5, a2, a0
97:               sltiu        s6, s6, 1350
                  srl          s7, a4, a1
                  or           s6, a3, s3
                  sub          t4, s8, a2
                  or           a6, a5, a3
                  auipc        s6, 163069
                  nop
                  bne          a6, t2, 108f
                  blt          s2, t3, 109f
                  slli         s11, s10, 17
                  lui          a2, 679962
108:              slli         t4, a5, 18
109:              srli         s5, a2, 0
                  srl          s5, s3, a3
                  slti         s7, s5, -1457
                  or           zero, a5, t3
                  add          a0, t6, s4
                  bge          s10, s3, 122f
                  sra          zero, s9, s3
                  sra          s4, s8, ra
                  bge          s4, s5, 121f
                  srai         s2, a0, 13
                  xor          s1, a5, sp
                  xori         t1, s0, 443
121:              sub          s8, a0, a7
122:              addi         zero, ra, 1656
                  nop
                  sltiu        t1, t1, 1592
                  sltiu        s2, zero, -691
                  andi         t4, s7, -1327
                  auipc        a3, 712135
                  sub          s8, t2, t2
                  sll          ra, t2, a4
                  srl          s0, a7, s5
                  and          a1, t2, t1
                  srli         tp, sp, 30
                  xori         a1, t6, 290
                  andi         a3, s8, 756
                  and          ra, a0, s7
                  sub          s6, a1, s1
                  bltu         t4, s9, 143f
                  bgeu         zero, a5, 153f
                  beq          sp, s10, 143f
                  auipc        s6, 494989
                  bne          s8, t5, 161f
                  slli         s7, a4, 31
                  sltiu        s2, a1, 2024
                  sub          a6, s6, a5
                  ori          s7, a6, 131
                  add          s11, sp, s6
                  sltiu        a1, s1, 695
                  auipc        s3, 147132
sub_4_j12:        jal          t6, sub_8 #jump sub_4 -> sub_8
                  bltu         s10, t1, 159f
143:              slt          s0, t1, s11
                  ori          s11, s0, -151
                  sra          s6, t4, t0
                  sll          t6, a4, a7
                  slli         a6, s7, 16
                  srli         gp, s0, 1
                  sub          t0, zero, a7
                  bne          s6, s9, 165f
                  slli         t2, a5, 15
                  or           a1, t2, a2
153:              bge          a0, a5, 158f
                  sltiu        s5, a4, 633
                  slti         tp, a4, -1031
                  srl          s8, t5, s11
                  sub          a7, s4, a3
158:              sltiu        s11, t0, -585
159:              sub          t1, t0, a2
                  auipc        s11, 268205
161:              srl          t3, t3, s1
                  beq          ra, ra, 172f
                  nop
                  sltu         t1, a3, sp
165:              auipc        s2, 218045
                  sltu         t6, sp, t1
                  blt          s3, t0, 170f
                  slti         ra, t0, -1754
                  add          s3, s11, a1
170:              beq          s1, s8, 174f
                  sub          a4, tp, t3
172:              slti         s0, zero, -19
                  xor          t0, a1, s2
174:              slt          ra, t5, s5
                  ori          a7, s10, 733
                  xor          s10, s4, a0
                  beq          s7, s4, 196f
                  ori          a7, s7, -985
                  sra          s5, s8, t1
                  la           a2, region_1+1632 #start riscv_load_store_rand_instr_stream_0
                  lui          s4, 377782
                  lb           s11, -1060(a2)
                  sb           s9, -1594(a2)
                  sb           s4, -1273(a2)
                  slti         t1, t1, -597
                  lhu          a6, -448(a2)
                  lh           a0, -632(a2)
                  sltu         s6, s2, s10
                  slt          s5, s4, s6
                  or           t3, a6, a2
                  srli         t4, a1, 13
                  auipc        t3, 713058
                  sb           t5, -909(a2)
                  lhu          a1, -1306(a2)
                  sra          a6, s6, t2
                  lbu          a0, -1103(a2)
                  ori          s7, zero, -1449
                  srl          a6, a0, s3
                  auipc        s3, 492372
                  and          t5, s6, s0
                  sra          a4, a7, tp
                  sb           t6, -303(a2)
                  lbu          s8, -334(a2)
                  sh           t3, -930(a2)
                  slli         s2, zero, 21
                  sra          ra, s8, a5
                  lh           t5, -814(a2)
                  or           s6, t6, tp
                  lb           s10, -413(a2)
                  sb           t5, -548(a2)
                  sltiu        s5, s11, -1639
                  sb           s11, -927(a2)
                  lb           t2, 308(a2)
                  sltiu        a0, a1, 446
                  and          s11, a6, t5
                  sb           t6, 255(a2)
                  lw           gp, -52(a2)
                  lhu          tp, -818(a2) #end riscv_load_store_rand_instr_stream_0
                  sltu         a4, sp, a7
                  bge          gp, ra, 200f
                  xori         s3, sp, -791
                  and          s5, s3, a4
                  andi         s4, t1, -1883
                  sltu         s6, a4, a7
                  and          t3, a0, a7
                  or           s7, s1, a6
                  bge          t6, t5, 208f
                  xori         s0, t4, 315
                  srai         s6, s10, 18
                  sub          s7, t4, s7
                  or           s8, s3, a4
                  or           gp, gp, t1
                  add          a0, a6, s4
                  beq          t3, sp, 208f
196:              sltiu        a0, t3, 1524
                  andi         s3, t2, -1806
                  lui          s11, 663413
                  srl          s4, s9, s6
200:              and          t4, zero, t5
                  srai         s7, tp, 6
                  xor          a1, s3, a1
                  nop
                  xori         a7, a6, -1395
                  xor          s8, zero, a4
                  slt          s1, s9, s8
                  xori         ra, t6, -41
208:              bge          tp, s5, 214f
                  beq          a6, a2, 225f
                  slt          t5, t5, s9
                  and          gp, s7, t3
                  bge          t2, s5, 216f
                  srl          t6, sp, tp
214:              or           s2, t2, tp
                  slli         s6, a6, 24
216:              nop
                  ori          a1, t1, -281
                  ori          t4, a6, -2024
                  slli         t1, s5, 22
                  xori         s1, s3, -831
                  andi         a4, a6, -402
                  sra          a1, tp, s5
                  bltu         s8, s3, 233f
                  auipc        t4, 156377
225:              blt          s8, s1, 229f
                  sll          a4, s5, a3
                  srai         tp, s9, 10
                  and          t5, a1, s11
229:              slli         s5, s1, 1
                  srl          t2, tp, a5
                  bne          t5, t5, 235f
                  bne          s5, a1, 240f
233:              beq          a4, a0, 243f
                  bne          a5, a4, 238f
235:              add          s4, a7, s5
                  and          s4, s3, gp
                  sll          s4, s0, s4
238:              nop
                  bne          t0, t1, 254f
240:              beq          s11, s10, 255f
                  and          t0, t5, a7
                  bgeu         t5, s0, 247f
243:              beq          s8, a5, 262f
                  auipc        t4, 824012
                  lui          t1, 895016
                  sra          t2, s5, zero
247:              sub          a1, t3, t5
                  nop
                  sra          a1, a7, zero
                  xor          s5, t5, s0
                  sub          t6, t1, t0
                  slti         s0, zero, -564
                  srli         a7, gp, 9
254:              slti         s2, s8, 813
255:              add          a1, t4, s10
                  ori          t5, a1, -1099
                  auipc        s6, 382991
                  beq          s5, a3, 265f
                  or           a2, s6, s5
                  slt          t2, s0, s7
                  sra          t2, s7, s8
262:              slti         tp, a4, -1047
                  lui          s7, 716082
                  addi         s7, s6, 1000
265:              bltu         s3, a4, 269f
                  addi         s1, ra, 67
                  xor          t1, sp, s6
                  sub          a7, s10, a1
269:              sub          s6, t5, a4
                  slli         a1, a1, 1
                  bltu         t1, t2, 274f
                  xor          s2, s3, t0
                  sltiu        t2, s2, -1093
274:              sltu         s7, a6, zero
                  auipc        s3, 918298
                  lw           t6, 4(s9)
                  ori          t3, s5, 379
                  auipc        s8, 647765
                  addi         t4, s6, 2041
                  addi         s9, s9, 20
                  srli         a7, t3, 31
                  srl          a7, s8, a7
                  sub          tp, zero, ra
394:              addi x5, x31, 1
394:              jalr x5, x5, 0
sub_9:            sra          s11, t0, a5
                  sub          s10, s0, t0
                  auipc        a7, 60196
                  bge          a1, s9, sub_9_stack_p
sub_9_stack_p:    addi         s9, s9, -12
                  xori         gp, s8, 1858
                  sw           t6, 4(s9)
                  ori          s0, s8, 463
                  bgeu         t4, a3, 8f
                  auipc        a3, 659898
                  bgeu         a0, s8, 17f
                  add          t5, gp, s11
                  bgeu         t6, a3, 17f
                  sltu         s7, s4, s1
                  sll          a2, tp, a6
                  ori          s3, t4, 667
8:                xor          gp, a1, t1
                  xori         s0, a2, 1627
                  sltiu        s4, s11, 575
                  sll          a0, s3, t3
                  srli         s7, a1, 25
                  sltiu        s4, s2, 85
                  auipc        t6, 322444
                  srli         s10, a1, 15
                  sltiu        s6, t4, -224
17:               xor          s1, s9, t3
                  nop
                  srl          s0, a1, s5
                  addi         s10, s11, 1449
                  lw           t6, 4(s9)
                  xori         s3, tp, -1035
                  sltiu        t0, sp, -334
                  and          s1, s0, sp
                  addi         s9, s9, 12
                  xori         t3, s9, -363
                  sltiu        zero, t6, -843
36:               addi x9, x31, 0
36:               jalr x9, x9, 0
sub_3:            bne          s11, s3, sub_3_stack_p
                  slti         a3, t4, -519
                  slti         s11, a7, -1448
                  add          t5, ra, t5
                  sub          s2, gp, s9
                  sltiu        s3, a3, -1483
                  or           t0, s10, a6
sub_3_stack_p:    addi         s9, s9, -64
                  and          s10, t5, s8
                  sra          s4, t6, t0
                  sw           t6, 4(s9)
                  sltiu        a0, s4, 950
                  slli         a0, t1, 31
                  la           s10, region_1+885 #start riscv_load_store_rand_instr_stream_2
                  sra          gp, ra, a1
                  lhu          a7, 283(s10)
                  ori          a1, s4, 616
                  slti         s6, t0, 1660
                  sw           t6, -5(s10)
                  lb           a3, 632(s10)
                  sh           a0, 885(s10)
                  sh           sp, -279(s10)
                  sb           s6, 71(s10)
                  lb           gp, -88(s10)
                  lb           t3, -342(s10)
                  srli         t5, s7, 13
                  auipc        t3, 1034546
                  lbu          t6, 564(s10)
                  andi         t0, zero, 701
                  lb           a0, 503(s10)
                  sh           t6, -315(s10)
                  sltiu        t5, a2, -54
                  slt          a7, sp, t1
                  lbu          a7, -284(s10)
                  sll          t6, a2, s8
                  lb           s4, 308(s10)
                  sh           t6, 213(s10)
                  nop
                  and          zero, t0, s6
                  sra          gp, a5, s3
                  sh           gp, 149(s10) #end riscv_load_store_rand_instr_stream_2
                  la           a0, region_1+1260 #start riscv_load_store_rand_instr_stream_7
                  and          zero, a5, s1
                  lbu          s7, 59(a0)
                  lb           s7, -193(a0)
                  nop
                  sb           s0, 233(a0)
                  lbu          s5, 251(a0)
                  lh           t2, 180(a0)
                  sltiu        t2, s10, -491
                  addi         ra, sp, 1746
                  lb           a6, 81(a0)
                  slti         s0, sp, -1456
                  lbu          s3, -109(a0)
                  and          s6, t5, s3
                  sb           s0, 61(a0)
                  xor          a4, t5, a1
                  sh           a7, -118(a0)
                  and          t1, s8, a2
                  sub          s11, t4, sp
                  lbu          zero, -92(a0)
                  sra          gp, t1, t5
                  auipc        s7, 252880
                  lbu          s10, 156(a0)
                  lbu          t6, 99(a0)
                  lb           s7, 84(a0)
                  ori          zero, t3, 1163
                  sb           zero, -11(a0)
                  sb           t2, 160(a0)
                  lh           s5, 168(a0)
                  sra          t0, zero, a7
                  sh           t1, -90(a0)
                  slt          s5, a6, s7
                  lbu          ra, 163(a0)
                  add          s8, s2, t2
                  lhu          a7, 176(a0)
                  sb           t5, 187(a0)
                  lb           s8, 15(a0)
                  sltu         t6, s0, s5
                  srl          t3, a4, zero
                  srai         s6, a1, 14
                  lb           a7, 129(a0)
                  lbu          ra, 30(a0) #end riscv_load_store_rand_instr_stream_7
                  la           s8, region_0+1854 #start riscv_load_store_rand_instr_stream_4
                  lb           a1, 39(s8)
                  nop
                  lb           tp, -5(s8)
                  srai         a3, zero, 29
                  srli         tp, t0, 23
                  xor          t5, s0, tp
                  sb           s0, -37(s8)
                  xor          a2, a7, a2
                  andi         s5, s3, -1910
                  sw           s8, 10(s8)
                  xor          t2, s8, ra
                  sb           t4, -44(s8)
                  slli         t0, t4, 0
                  lbu          s11, -51(s8)
                  lbu          s4, -57(s8)
                  and          t4, t0, t2
                  sh           s2, -42(s8)
                  lui          t5, 510125
                  slli         t0, s0, 13
                  lbu          s6, 17(s8)
                  lbu          s4, -58(s8)
                  sra          t0, s5, zero
                  lb           a1, -50(s8)
                  srli         t4, gp, 0
                  lhu          s5, -62(s8)
                  sb           t1, 45(s8)
                  srai         a3, s5, 3
                  addi         s5, s0, -997
                  sh           a2, -32(s8)
                  and          s3, a2, ra
                  lh           s10, -8(s8)
                  lhu          s4, -12(s8)
                  sb           a2, 29(s8)
                  ori          a0, s8, 165
                  slt          a2, a1, zero
                  lb           a4, 29(s8)
                  lbu          s3, 23(s8)
                  lb           s3, -17(s8)
                  sub          ra, a5, s8
                  sltiu        t5, a4, -1039
                  lb           s2, 51(s8)
                  and          t4, s3, s11
                  sh           sp, 12(s8)
                  lb           s6, 59(s8)
                  lb           ra, -55(s8)
                  lui          zero, 66946
                  sb           s5, 32(s8)
                  lui          t6, 143277
                  lui          t5, 810238
                  nop
                  sltu         zero, t4, s5
                  sb           a3, 44(s8) #end riscv_load_store_rand_instr_stream_4
                  la           s1, region_1+1545 #start riscv_load_store_rand_instr_stream_5
                  and          zero, a4, t1
                  sb           zero, -42(s1)
                  slti         a6, s9, 1841
                  lbu          s5, -23(s1)
                  add          tp, t5, a3
                  srli         zero, sp, 28
                  sra          s3, a0, tp
                  sb           a0, -12(s1)
                  sw           s9, -17(s1)
                  add          s2, s11, t6
                  slti         t4, t2, 994
                  lbu          s0, -38(s1)
                  sra          s3, zero, s3
                  or           s7, s3, t4
                  sb           s0, -27(s1)
                  sb           a3, -45(s1)
                  sh           s7, 45(s1)
                  addi         zero, s7, -1073
                  sb           t3, -4(s1)
                  xor          s7, gp, s5
                  sub          s5, t5, t5
                  lbu          t0, -48(s1)
                  sb           t4, -40(s1)
                  slt          a4, ra, s11
                  lb           t3, 4(s1)
                  lb           t2, 10(s1) #end riscv_load_store_rand_instr_stream_5
                  la           s1, region_0+1156 #start riscv_load_store_rand_instr_stream_9
                  xor          a1, zero, s3
                  sb           a1, -9(s1)
                  lb           zero, -5(s1)
                  lhu          s5, 16(s1)
                  srli         s11, a0, 14
                  lb           s10, -1(s1)
                  lbu          gp, 1(s1)
                  lbu          s10, 5(s1)
                  sub          a2, s11, t2
                  sb           s5, 8(s1)
                  lb           s11, 4(s1)
                  xor          s3, sp, s6
                  slli         s8, s4, 31
                  nop
                  sub          t0, s0, a3
                  lb           s7, 6(s1)
                  lbu          t0, 9(s1)
                  and          t3, s0, a2
                  sh           s0, -4(s1)
                  nop
                  lb           ra, -16(s1)
                  or           s4, s2, zero
                  srl          gp, a4, a3
                  lhu          s4, 0(s1)
                  sb           a4, -1(s1)
                  andi         t1, s3, 1366
                  add          t2, s6, ra
                  addi         t5, s9, 1307
                  auipc        s3, 860184
                  lw           a4, -4(s1)
                  sw           a3, 4(s1)
                  slli         t1, s5, 12
                  add          t2, t0, a6
                  sb           s6, 10(s1)
                  sltu         a4, s7, a1
                  lbu          t5, -7(s1)
                  lb           t4, -4(s1)
                  lbu          ra, -4(s1)
                  sub          t5, t2, sp
                  lb           zero, 1(s1)
                  and          ra, s11, s10
                  add          gp, ra, s10
                  slt          s10, s2, a5
                  lhu          s2, -16(s1)
                  sb           a1, -9(s1) #end riscv_load_store_rand_instr_stream_9
                  la           s2, region_0+1215 #start riscv_load_store_rand_instr_stream_6
                  auipc        t5, 35731
                  sltu         s3, t5, a4
                  or           s0, t0, s11
                  lb           a4, -136(s2)
                  slli         t1, t5, 20
                  andi         a3, tp, 1775
                  lbu          t3, -130(s2)
                  srai         t2, gp, 1
                  sb           sp, 26(s2)
                  lb           t2, -35(s2)
                  sb           s11, -48(s2)
                  lb           ra, 98(s2)
                  sh           s11, 33(s2)
                  lui          tp, 676834
                  lbu          ra, 24(s2)
                  lbu          a2, -106(s2)
                  lw           s7, -51(s2)
                  lui          t2, 850094
                  lb           gp, 88(s2)
                  slti         s7, s7, 1632
                  slti         s7, a5, -942
                  sub          t0, s11, s0
                  lbu          a4, 120(s2)
                  xor          s8, a4, s3
                  slli         a3, ra, 25
                  sltiu        t1, s4, -650
                  lb           s8, -131(s2)
                  sra          s10, a6, tp
                  lui          ra, 926093
                  sll          s0, s8, a6
                  lb           s1, 172(s2) #end riscv_load_store_rand_instr_stream_6
                  la           ra, region_0+1266 #start riscv_load_store_rand_instr_stream_3
                  sltiu        a4, s6, -1764
                  sb           gp, -999(ra)
                  lhu          a1, 728(ra)
                  andi         s3, s9, 556
                  sb           t0, -121(ra)
                  lbu          s2, -348(ra)
                  lb           s2, 279(ra)
                  ori          s7, a5, -327
                  sh           s9, -616(ra)
                  auipc        t1, 632304
                  sll          a2, s10, sp
                  sltu         s3, sp, s11
                  lbu          a3, -475(ra)
                  and          s3, a4, t3
                  srli         a0, s1, 6
                  lbu          a6, -201(ra)
                  sltiu        s11, a0, -587
                  sh           s1, 282(ra)
                  andi         s8, t3, 135
                  lb           s5, 132(ra)
                  lhu          gp, -428(ra)
                  lbu          a6, 67(ra)
                  sub          a7, s8, t1
                  sb           s0, -831(ra)
                  lbu          a3, 38(ra)
                  lhu          s10, 288(ra)
                  lbu          a0, -765(ra)
                  srai         t3, s2, 22
                  ori          s3, t3, 14
                  slli         s4, t3, 24
                  ori          t3, s0, -784
                  lb           a0, -125(ra)
                  lbu          s1, -1025(ra) #end riscv_load_store_rand_instr_stream_3
                  la           a0, region_1+1326 #start riscv_load_store_rand_instr_stream_8
                  sltu         s11, a1, s10
                  lb           a2, -43(a0)
                  sb           t2, -43(a0)
                  lhu          s11, -38(a0)
                  addi         t3, s7, -1972
                  slt          zero, s11, s1
                  lbu          t2, -25(a0)
                  slt          s2, a1, a6
                  sb           t6, -4(a0)
                  sh           s2, 62(a0)
                  lb           a6, 51(a0)
                  addi         s1, tp, -1107
                  lbu          s5, -53(a0)
                  sra          t1, s0, s6
                  xor          s3, a1, tp
                  addi         s5, a1, 596
                  add          gp, s9, a7
                  sltiu        t4, t3, -90
                  srai         s10, a2, 5
                  nop
                  sb           s6, 15(a0)
                  lh           ra, -14(a0)
                  addi         t2, s9, -179
                  sb           tp, 21(a0)
                  lbu          a7, -25(a0)
                  auipc        t2, 566697
                  sb           t5, 4(a0)
                  lb           zero, 33(a0)
                  sw           t5, 42(a0)
                  sltiu        t6, s5, 129
                  sb           s8, 54(a0)
                  add          t1, s5, zero
                  lhu          t0, -32(a0)
                  sb           a6, -53(a0)
                  lbu          t6, -7(a0)
                  slti         s10, a3, -1037
                  ori          s2, tp, -763
                  sll          t5, sp, t0
                  lb           tp, 11(a0)
                  lb           a4, 22(a0)
                  ori          a7, s11, -1151
                  sb           t0, 61(a0)
                  lbu          ra, 8(a0) #end riscv_load_store_rand_instr_stream_8
                  auipc        a2, 6776
                  and          t1, s8, t3
                  bgeu         t5, a4, 11f
                  sltu         s4, s10, ra
                  bge          s2, s10, 21f
                  andi         t1, a3, 766
                  auipc        a0, 872829
                  or           s4, zero, gp
                  sltu         a4, s7, zero
                  bne          zero, a3, 18f
                  andi         s11, a4, -691
11:               andi         s6, s2, -1987
                  or           s7, s9, s6
                  ori          s2, ra, -72
                  sltu         t4, s11, a1
                  or           s2, t2, a5
                  sltu         zero, s0, t0
                  and          s11, s5, a3
18:               bgeu         t2, t1, 27f
                  xor          ra, a2, a2
                  or           t5, t4, sp
21:               bgeu         sp, s2, 28f
                  sub          s8, a1, zero
                  and          zero, s2, a6
                  nop
                  bne          t2, s11, 34f
                  lui          zero, 1008024
27:               add          s1, s3, s3
28:               xori         ra, a2, -352
                  xori         s5, s4, 1206
                  sub          s4, t2, t0
                  lui          t6, 440190
                  bge          tp, a5, 50f
                  bgeu         t6, s10, 41f
34:               sra          a1, s4, s0
                  sltu         tp, a4, s10
                  slt          a4, s4, s4
                  sra          t0, s2, t0
                  slti         a1, s6, 1868
                  and          t1, sp, s10
                  xor          a4, a7, a7
41:               bgeu         a3, a2, 59f
                  xori         t0, t0, 1462
                  srai         s11, s6, 19
                  lui          t4, 670943
                  slt          ra, a5, s4
                  sll          s1, t4, a7
                  beq          s9, a2, 63f
                  bltu         a1, tp, 68f
                  xor          a6, a3, s6
50:               bge          t6, s4, 69f
                  bltu         gp, s11, 65f
                  bne          t6, t3, 59f
                  slt          t2, s11, t6
                  beq          tp, a1, 66f
                  slli         s11, a4, 20
                  andi         a3, s9, -303
                  sltiu        t3, a1, 1473
                  xori         tp, s2, -1733
59:               nop
                  sra          s5, t5, t4
                  sra          s5, a5, a5
                  and          gp, s7, t4
63:               bltu         zero, gp, 79f
                  sub          s11, zero, s3
65:               bge          a5, s9, 71f
66:               addi         s7, a3, 1539
                  srl          a0, t5, t2
68:               xor          s8, t3, s2
69:               sltu         s11, s9, s2
                  sll          a2, a5, t4
71:               blt          t2, s6, 89f
                  sltu         t0, sp, s6
                  srl          tp, gp, t1
                  sll          t3, gp, s5
                  blt          sp, a6, 79f
                  nop
                  blt          s0, s2, 88f
                  bgeu         zero, s6, 94f
79:               xor          s8, t5, gp
                  srli         ra, s5, 0
                  srli         a3, a7, 19
                  beq          t4, t5, 89f
                  bgeu         a6, s7, 86f
                  sltu         s3, s2, s7
                  bge          a0, sp, 93f
86:               bltu         t4, t4, 88f
                  slli         s7, s4, 17
88:               xor          t0, a4, s4
89:               lui          a0, 519606
                  sltu         a1, s10, s11
                  slt          t0, t3, s7
                  lui          s11, 909418
93:               xor          a0, a3, s9
94:               or           s6, a5, s8
                  beq          t5, sp, 99f
                  bne          t4, s1, 100f
                  sub          t3, a2, a2
                  slt          a1, a2, s3
99:               beq          sp, s8, 119f
100:              srai         s0, a5, 22
                  ori          a4, gp, 1551
                  addi         s3, s5, -300
                  nop
                  and          a4, a6, s7
                  beq          s10, s3, 119f
                  srli         gp, t1, 20
                  ori          tp, t3, 1536
                  srai         ra, s7, 13
                  addi         t2, gp, 951
                  sltu         a6, s6, t1
                  slti         s5, s4, 746
                  sltu         gp, s5, s2
                  slti         s10, a7, 860
                  xori         s8, s9, -1938
                  srl          s6, a2, s6
                  auipc        s0, 718536
                  addi         s3, sp, -1883
                  xori         s2, a1, -1909
119:              ori          s10, a5, 1931
                  lui          t1, 51776
                  blt          t6, s6, 129f
                  la           gp, region_1+798 #start riscv_load_store_rand_instr_stream_0
                  lbu          t3, 871(gp)
                  addi         s11, s9, -597
                  nop
                  slti         t0, t6, -1676
                  lb           s4, 473(gp)
                  nop
                  srli         t2, s2, 19
                  sw           t6, -110(gp)
                  slt          s7, tp, sp
                  sh           a4, -8(gp)
                  addi         s4, t6, 1440
                  sh           t6, 1192(gp)
                  ori          s0, a4, -1933
                  lh           a6, 1016(gp)
                  lui          zero, 456021
                  sh           s2, 524(gp)
                  lb           s0, 709(gp)
                  and          a7, s4, gp
                  sub          t4, t0, s11
                  add          s7, a7, a0
                  lb           a6, -41(gp)
                  xor          a1, gp, t4
                  sltu         tp, t0, t1
                  lui          ra, 92605
                  lb           s0, -336(gp)
                  lb           t0, 767(gp)
                  sb           t6, 988(gp)
                  lh           s8, 538(gp)
                  xor          ra, s2, a1
                  lb           s5, 655(gp)
                  lbu          tp, -647(gp)
                  lbu          t4, -87(gp)
                  lui          t4, 631217
                  sb           s4, 755(gp)
                  srai         s2, a3, 18
                  sb           t1, 733(gp) #end riscv_load_store_rand_instr_stream_0
                  ori          s7, a1, 133
                  bge          t1, s5, 141f
                  bne          s0, s0, 144f
                  slt          zero, a3, s6
                  bgeu         s5, t4, 137f
                  bgeu         tp, a3, 134f
                  xori         s1, a7, -1820
129:              bge          s11, s9, 148f
                  sltiu        tp, t6, 1729
                  srl          t2, s7, t5
                  andi         s2, s1, -1273
                  xori         t0, a6, -1649
134:              andi         a6, a7, -1601
                  blt          zero, a1, 139f
                  srai         s2, t5, 20
137:              sub          s3, s9, t0
                  slti         s6, s0, -1591
139:              srai         s3, s4, 31
                  bge          a1, s3, 144f
141:              ori          zero, s2, 1699
                  blt          sp, a1, 156f
                  lui          a1, 340103
144:              ori          t4, s7, 331
                  bltu         zero, s7, 149f
                  sltu         a7, gp, t4
                  andi         t0, t1, 2010
148:              add          s10, s8, t5
149:              beq          t0, ra, 156f
                  bgeu         a1, a0, 166f
                  blt          t0, s4, 160f
                  srai         s11, t5, 22
                  bne          a5, t2, 169f
                  srl          s10, s6, t0
                  slti         a3, a6, -1639
156:              sra          t6, a1, t2
                  srli         a2, zero, 2
                  ori          s5, s8, -669
                  or           a2, s3, s6
160:              and          s6, s0, t3
                  slli         t3, sp, 10
                  bge          s3, a5, 168f
                  srai         t3, a7, 4
                  auipc        s8, 411273
                  ori          t0, t4, 1246
166:              bne          zero, t6, 175f
                  xor          t3, a3, s4
168:              beq          a1, a4, 176f
169:              andi         s8, tp, -909
                  and          s10, a7, s9
                  sra          t0, t1, tp
                  addi         t4, a4, 1656
                  add          zero, s5, s3
                  sltiu        a4, t0, -1338
175:              srli         zero, a1, 28
176:              sltu         t2, s8, a4
                  and          a3, t4, gp
                  bge          zero, a3, 196f
                  beq          gp, s4, 187f
                  srl          s3, t3, s1
                  sltiu        a1, s4, -70
                  slti         a6, a7, -846
                  bge          sp, s6, 197f
                  beq          s11, a5, 204f
                  addi         t2, a0, -2027
                  sll          a4, t3, s1
187:              nop
                  and          s3, s10, a1
                  bge          gp, sp, 198f
                  lui          gp, 458473
                  srl          t0, s0, t6
                  nop
                  srl          s3, s0, t5
                  sub          t3, s4, s3
                  bge          t6, t6, 198f
196:              nop
197:              bltu         a7, ra, 213f
198:              bne          s7, a3, 207f
                  bne          t4, t4, 217f
                  bne          s6, s2, 208f
                  bgeu         t3, t5, 203f
                  xor          a6, a1, tp
203:              slti         t1, s9, 639
204:              sll          s3, sp, s5
                  bne          gp, a2, 222f
                  andi         a1, s1, 655
207:              xor          a3, a4, s6
208:              srli         s3, t2, 26
                  blt          s0, t4, 221f
                  addi         s8, s10, -499
                  andi         a2, t6, 1671
                  beq          s11, sp, 219f
213:              or           zero, s11, s6
                  srli         s1, t5, 28
                  xori         s7, a5, -478
                  srli         s11, a1, 16
217:              srai         s0, t6, 3
                  andi         a3, s8, -236
219:              addi         a6, t0, -1551
                  slti         t6, s7, 1189
221:              blt          a0, a3, 238f
222:              add          s11, s6, s5
                  blt          a2, a2, 227f
                  sltiu        tp, a3, -1215
                  slli         a3, s0, 24
                  slt          a0, a0, t3
227:              srai         s6, s5, 12
                  sub          a3, a3, a0
                  andi         zero, a7, 36
                  xori         gp, a6, 1863
                  ori          a0, s6, 957
                  bne          ra, a0, 239f
                  and          a0, s7, t6
                  andi         s10, t3, 1414
                  sltu         t4, s2, zero
                  sub          t6, s5, s3
                  sll          a1, ra, s6
238:              bge          s0, s5, 249f
239:              slli         s1, s10, 17
                  srai         t5, gp, 12
                  bgeu         a1, s3, 248f
                  slti         s10, a6, -1577
                  blt          t0, s8, 251f
                  nop
                  bgeu         t1, s6, 249f
                  xor          t5, a4, t0
                  bne          s3, s10, 256f
248:              lui          a0, 39874
249:              srli         a6, s2, 7
                  sll          gp, a6, a5
251:              sra          s11, gp, a1
                  andi         t5, t6, -488
                  srl          s1, s5, t3
                  auipc        a1, 740961
                  nop
256:              or           s7, a2, s7
                  slli         s7, s6, 10
                  or           s11, s3, ra
                  bgeu         s9, ra, 279f
                  auipc        s7, 15699
                  add          t4, s4, s10
                  add          t6, a7, t6
                  addi         s8, a2, 512
                  nop
                  bltu         a6, gp, 267f
                  sltu         a6, t2, ra
267:              bgeu         s5, s9, 276f
                  slti         s6, zero, -133
                  srai         t1, a0, 27
                  sltu         a4, a3, t1
                  xor          t2, s1, t5
                  and          t2, zero, gp
                  sra          a0, s1, a4
                  sub          a4, s6, s1
                  auipc        s8, 603331
276:              xori         s1, ra, 1977
                  beq          s0, s8, 286f
                  ori          a0, t1, 760
279:              bgeu         s1, gp, 293f
                  sltiu        s2, a0, 1464
                  and          s10, s11, a2
                  srai         s4, t4, 21
                  sll          ra, t0, t3
                  sll          t3, s5, s1
                  bge          a5, s5, 293f
286:              xor          t6, sp, tp
                  add          t3, s2, t1
                  sltu         tp, t5, t1
                  andi         t1, s11, 265
                  beq          t2, t2, 308f
                  andi         s5, tp, 842
                  nop
293:              addi         t0, a1, -1225
                  xor          a7, t0, gp
                  and          s2, s0, t2
                  srl          gp, s10, s10
                  and          t3, a6, sp
                  and          s5, s0, a3
                  xor          s6, s11, s9
                  nop
                  sltu         s11, a7, a6
                  sll          t1, a5, t5
                  slt          ra, gp, a6
                  or           a7, tp, t5
                  bge          t5, tp, 312f
                  slt          a3, a7, s6
                  sra          a0, s10, s4
308:              sra          t3, ra, t5
                  bge          a2, a7, 325f
                  sra          s1, t3, s5
                  auipc        t0, 1032726
312:              lui          s11, 157939
                  auipc        s10, 177889
                  sltiu        s2, t4, 1533
                  srl          t6, a1, s7
                  slt          zero, a3, a4
                  bltu         s11, s1, 336f
                  lui          t1, 962273
                  bgeu         t4, s9, 322f
                  ori          s10, s8, -1963
                  andi         t5, t4, 662
322:              bgeu         s2, a1, 338f
                  andi         t6, t0, -1358
                  sra          t1, t2, zero
325:              srl          s2, s8, s7
                  ori          s5, s4, -1651
                  blt          a7, t6, 331f
                  bgeu         a6, tp, 348f
                  auipc        t4, 719529
                  bltu         gp, a0, 348f
331:              addi         t6, a4, -66
                  beq          t0, t2, 348f
                  lui          t6, 634644
                  beq          a1, t6, 340f
                  sra          s11, s6, s0
336:              and          t0, t1, s5
                  addi         a2, s1, -1322
338:              bltu         s8, t1, 350f
                  srl          tp, s5, t2
340:              lui          t2, 105561
                  slli         t3, s5, 28
                  add          a0, ra, a6
                  bne          t5, s1, 361f
                  sltu         s0, s2, t4
                  or           a3, t3, s11
                  sltu         t2, s11, gp
                  slt          a3, t1, a6
348:              add          a1, t6, s4
                  slti         s3, s0, -916
350:              srli         s2, a4, 29
                  add          a0, s10, t4
                  and          a0, s6, a7
                  xori         t1, t6, 638
                  ori          s0, s1, 1591
                  sltu         s4, sp, t6
                  slli         t4, zero, 13
                  bge          a1, ra, 371f
                  bltu         t0, t5, 366f
                  xori         t1, s7, -265
                  lui          tp, 355894
361:              sub          s10, s3, s0
                  srl          s10, a6, t4
                  add          a6, s2, s8
                  lui          s11, 646233
                  slti         a0, s1, -1923
366:              and          a1, s7, a1
                  blt          s3, s3, 376f
                  sltiu        a4, t2, -501
                  lui          s8, 129664
                  sll          a2, a0, zero
371:              srl          t0, a1, a7
                  sub          t3, s7, s3
                  and          s1, gp, ra
                  lui          a3, 304303
                  srl          t2, zero, ra
376:              slt          tp, a6, a5
                  addi         s10, s6, -1115
                  blt          s2, a1, 387f
                  sltu         s6, s1, s7
                  bne          s6, a7, 389f
                  bltu         ra, s8, 397f
                  bge          s4, gp, 401f
                  add          s8, gp, s2
                  lui          a1, 971582
                  bltu         s2, s5, 401f
                  xori         t4, zero, 905
387:              bge          a7, a6, 404f
                  addi         s6, s1, -1219
389:              bne          a1, tp, 395f
                  addi         a6, s11, -1414
                  ori          s2, zero, 498
                  xori         s5, sp, 1801
                  sub          t3, sp, a7
                  bgeu         tp, s1, 405f
395:              slt          a0, a3, sp
                  srli         t2, a4, 21
397:              lui          s0, 912132
                  srl          t6, t5, t2
                  or           s1, t4, s1
                  sub          a7, t3, s1
401:              sub          ra, zero, a3
                  slti         s7, s0, -636
                  addi         a1, a1, 1996
404:              and          a4, s10, zero
405:              bne          s7, a4, 421f
                  xori         a4, s6, -446
                  beq          t1, t5, 421f
                  sltiu        t2, t5, -1613
                  andi         t0, a7, -287
                  and          t0, s7, a0
                  sra          s1, a1, t4
                  and          a3, a5, t6
                  slt          s2, s2, a7
                  ori          s7, t4, 1829
                  andi         a1, s8, 1775
                  sltiu        t2, a7, -27
                  bgeu         t0, s3, 426f
                  andi         t6, t5, 1496
                  ori          gp, t0, 550
                  sub          s6, s3, t6
421:              srai         s10, s1, 9
                  bge          s1, s4, 429f
                  sub          s0, t1, s4
                  bgeu         t0, s10, 428f
                  add          gp, ra, a7
426:              srli         s5, t2, 21
                  bne          s6, a3, 435f
428:              addi         s8, a0, -1844
429:              sltiu        t4, s7, 1787
                  slt          ra, a6, ra
                  slt          s1, s11, gp
                  and          t0, s1, t4
                  sra          s11, s8, s7
                  addi         s1, s2, -1283
435:              slti         zero, t6, 673
                  sub          tp, s11, t4
                  bge          a6, t6, 441f
                  addi         a6, t5, 1923
                  xor          t4, a1, t4
                  sub          a4, gp, s0
441:              ori          a3, a4, 56
                  nop
                  srl          s3, tp, a6
                  xor          a6, tp, t5
                  beq          t3, zero, 448f
                  andi         s1, t1, -1260
                  and          s0, s9, s1
448:              slli         ra, a6, 6
                  sltu         a4, a2, tp
                  or           s0, a7, t6
                  add          s8, s0, s4
                  bgeu         sp, t3, 470f
                  bne          a1, s7, 473f
                  blt          s1, s11, 468f
                  sltiu        s8, s6, -2034
                  blt          t2, tp, 464f
                  bne          a5, a6, 469f
                  bge          a6, a0, 476f
                  bgeu         t1, t3, 479f
                  andi         t6, s11, 1045
                  bgeu         a0, t2, 463f
                  and          s11, s6, a3
463:              nop
464:              sltiu        s5, s2, 1519
                  lui          tp, 469723
                  sub          s1, a1, s1
                  beq          s5, t6, 474f
468:              ori          t1, ra, -708
469:              sra          t0, s4, s0
470:              slti         s10, tp, 1257
                  sra          s5, a3, a7
                  andi         s2, s11, 669
473:              bge          ra, tp, 480f
474:              bltu         t6, t4, 478f
                  addi         gp, a0, -1099
476:              bgeu         s4, t3, 485f
                  auipc        s7, 961106
478:              addi         t2, s3, -1529
479:              ori          a6, s10, -1033
480:              ori          a3, a7, 321
                  nop
                  nop
                  and          a3, s4, s9
                  sll          s2, a3, s3
485:              blt          t0, gp, 493f
                  sll          s3, t3, s7
                  beq          s7, s8, 505f
                  andi         a0, a0, -135
                  slli         t1, a5, 30
                  or           s11, s4, gp
                  srai         t2, s5, 17
                  blt          t3, s2, 510f
493:              bgeu         gp, a3, 501f
                  auipc        a3, 789036
                  or           a7, gp, tp
                  sltiu        s3, t2, -1030
                  andi         s2, a5, 1884
                  blt          t0, t2, 512f
                  xor          s4, a5, tp
                  addi         s4, tp, 1709
501:              add          s3, t4, a5
                  bltu         s8, a2, 514f
                  addi         t5, sp, 392
                  nop
505:              sra          s11, a6, t4
                  blt          a1, s3, 522f
                  nop
                  addi         t1, a7, 1061
                  ori          t2, s10, -1285
510:              sra          s10, t0, a1
                  auipc        t4, 41432
512:              andi         tp, zero, -2044
                  bgeu         s6, s11, 530f
514:              bne          a6, a5, 522f
                  sra          s3, t6, s5
                  bltu         s10, ra, 527f
                  sltu         s5, t0, s11
                  or           t4, s7, gp
                  ori          s4, a7, 76
                  bgeu         s3, s11, 524f
                  sub          a1, t0, s5
522:              srl          t5, s7, a3
                  srl          tp, s2, a5
524:              slti         t0, s1, 1302
                  bne          s8, t5, 543f
                  lui          s6, 1014080
527:              addi         s8, zero, -1441
                  sll          s2, sp, t4
                  nop
530:              or           ra, s0, s0
                  slli         ra, s4, 6
                  slti         s7, ra, -1931
                  addi         s0, tp, -1864
                  bltu         t1, a2, 543f
                  xor          s1, ra, a2
                  xor          a0, t2, ra
                  xori         s0, t5, -1885
                  auipc        s10, 911429
                  srl          s5, a5, s1
                  bgeu         gp, ra, 559f
                  sltu         t0, s2, a1
                  lui          zero, 1007827
543:              sll          s11, a2, s5
                  nop
                  add          s3, a5, a7
                  xor          a1, s4, s2
                  la           a0, region_0+1453 #start riscv_load_store_rand_instr_stream_1
                  sb           t6, 54(a0)
                  sltu         a7, s7, s4
                  srai         tp, tp, 18
                  lhu          a3, 11(a0)
                  xori         gp, s10, -8
                  add          s8, t3, t4
                  srai         s1, s0, 14
                  slti         s7, s1, 1230
                  add          s6, sp, s5
                  lh           t2, 53(a0)
                  sra          t1, t5, zero
                  ori          s1, zero, -498
                  lbu          a3, 44(a0)
                  sb           a5, 58(a0)
                  lb           t0, 9(a0)
                  lbu          s8, 40(a0)
                  lbu          s10, 28(a0)
                  ori          s5, a5, 1410
                  lbu          s7, 64(a0)
                  slt          t0, a5, a7
                  lh           s3, -15(a0)
                  lbu          zero, 53(a0)
                  lw           s0, 11(a0)
                  lb           t3, 18(a0)
                  sub          t3, s8, a6
                  sll          s2, s8, t4
                  lbu          t3, 30(a0)
                  lb           t6, 53(a0)
                  sb           s2, 2(a0)
                  srl          tp, t5, t2
                  lw           t3, -25(a0)
                  slt          a3, t1, s8
                  lbu          a1, -4(a0)
                  lbu          a7, -38(a0)
                  sb           tp, -2(a0)
                  auipc        zero, 461363
                  or           t3, t4, s8
                  nop
                  lhu          s4, 55(a0)
                  lui          s6, 539810
                  srai         a3, a1, 30
                  sll          t1, a7, s0
                  sh           t4, -11(a0)
                  auipc        t1, 158179
                  sra          gp, a7, a4
                  slti         t0, ra, -761
                  sll          ra, a1, t5
                  addi         gp, s2, 323
                  lui          t4, 48886
                  lbu          t6, 45(a0)
                  lbu          a1, 60(a0)
                  lb           gp, 41(a0) #end riscv_load_store_rand_instr_stream_1
                  srl          t4, zero, tp
                  beq          gp, t4, 557f
                  xor          t5, a3, a0
                  sltiu        a0, t6, 2046
                  sll          a3, s7, a6
                  addi         s5, s6, -231
                  andi         s3, a4, 1145
                  or           a1, s10, s5
                  srl          t5, s9, a1
                  ori          tp, s9, 1153
557:              ori          s3, s1, -1637
                  sub          a0, t4, a6
559:              bne          t6, a6, 568f
                  lui          t6, 347647
                  slti         s3, s10, 235
                  bge          a3, tp, 571f
                  and          t1, a1, t2
                  slti         s8, a1, 1368
                  sra          a6, t1, tp
                  srl          s5, a3, a5
                  bltu         t3, s10, 583f
568:              sra          s11, t3, a2
                  srli         a3, s7, 14
                  bge          gp, tp, 577f
571:              or           s6, a0, a2
                  bltu         s8, a6, 592f
                  sltu         tp, t6, a1
                  nop
                  sub          s2, ra, tp
                  beq          s7, s1, 580f
577:              sltiu        a3, s7, 118
                  slli         s0, a5, 17
                  sltiu        s8, a5, 836
580:              blt          sp, t1, 586f
                  bgeu         a4, ra, 589f
                  sltu         a1, s11, a7
583:              srli         s0, a1, 27
                  sub          a4, a3, t2
                  blt          t1, s5, 605f
586:              or           a3, a5, s3
                  bltu         s10, t6, 590f
                  slti         s2, a0, 1504
589:              bltu         t1, s1, 591f
590:              srli         t1, s9, 6
591:              sra          s4, a3, a3
592:              sll          a2, a3, a0
                  srl          s8, s2, t6
                  sra          s6, a7, a3
                  sltiu        s4, t0, -1681
                  nop
                  ori          a0, s11, 432
                  bltu         t1, s9, 605f
                  slti         s7, s3, -887
                  auipc        a1, 113506
                  andi         zero, t3, -14
                  sltu         t5, t1, s7
                  srl          a1, a7, tp
                  bltu         s6, tp, 620f
605:              sub          gp, t0, s9
                  slti         s10, a2, -1100
                  bgeu         a6, tp, 621f
                  bltu         s1, a3, 612f
                  add          a1, t4, s4
                  or           t6, t3, t3
                  beq          s7, zero, 618f
612:              sub          t4, a2, s3
                  xori         s4, a4, -546
                  auipc        t5, 390673
                  slli         t3, a1, 12
                  nop
                  or           t5, t0, s8
618:              bne          t1, a7, 636f
                  sub          t2, a3, s4
620:              xori         s5, s7, 1603
621:              auipc        t6, 809281
                  and          s2, s3, a4
                  sra          t0, sp, s4
                  slti         a3, t3, -1426
                  xor          t5, tp, t4
                  xor          s7, a5, ra
                  sra          t3, sp, zero
                  sub          a4, a4, t1
                  slli         s8, sp, 19
                  xor          ra, ra, s9
                  la           s11, sub_8
                  ori          a1, s2, 596
                  and          s1, t3, t1
                  xor          t0, s6, t0
                  sll          a4, tp, gp
                  addi         s11, s11, -532
                  bge          sp, s5, sub_3_j10 #branch to jump instr
                  srli         s4, s9, 27
                  sub          t4, s9, a0
sub_3_j10:        jalr         t6, s11, 532 #jump sub_3 -> sub_8
                  slt          tp, a1, s11
                  lui          s1, 289805
                  andi         t0, ra, 72
                  lui          s8, 360988
                  nop
                  slt          s1, a2, a1
636:              bge          s0, a7, 640f
                  bne          t6, t5, 646f
                  addi         a1, s8, 538
                  sll          t5, gp, t5
640:              slt          a1, s0, t4
                  bge          s8, t1, 650f
                  bltu         s0, tp, 662f
                  nop
                  slli         a0, t5, 23
                  xor          tp, sp, s11
646:              add          s0, s1, a5
                  srl          s3, s2, tp
                  nop
                  xor          t0, t4, s5
650:              addi         a6, s10, -152
                  ori          s4, a1, 1669
                  slt          tp, s6, s1
                  bne          t2, t5, 662f
                  srai         s5, t1, 8
                  beq          t4, a5, 657f
                  andi         s8, s5, 698
657:              lui          a2, 120898
                  nop
                  or           t3, gp, t2
                  addi         gp, s0, -300
                  add          t0, a0, s8
662:              bge          s7, s4, 673f
                  slti         a1, t2, -582
                  sll          a4, gp, t5
                  srai         t4, s7, 18
                  bge          s10, sp, 673f
                  bltu         s10, s7, 673f
                  sub          s8, a4, s11
                  lui          s0, 398241
                  srl          s7, t4, s0
                  bge          s2, t6, 683f
                  add          t4, t1, s10
673:              sub          a3, tp, s5
                  bgeu         s1, t1, 690f
                  and          a6, a0, a5
                  sltiu        s6, t5, -1317
                  slt          s2, s11, s6
                  xor          a6, gp, ra
                  auipc        s3, 949974
                  bge          sp, s9, 689f
                  beq          ra, t5, 689f
                  sra          t4, s4, a6
683:              bne          t4, tp, 687f
                  slt          t5, gp, s1
                  and          s4, s7, t4
                  or           gp, t5, t5
687:              srli         s4, s1, 10
                  xori         a1, s6, 1911
689:              slli         zero, a6, 15
690:              sra          s4, s9, t2
                  bltu         t5, a3, 707f
                  slt          ra, a1, a5
                  blt          a7, a2, 700f
                  xori         t1, s3, -740
                  xor          s8, t0, a2
                  add          s0, t3, t2
                  or           s8, sp, t2
                  lui          s6, 398536
                  andi         a6, s6, 1210
700:              bge          sp, s3, 714f
                  nop
                  srli         a4, a5, 17
                  auipc        a6, 363460
                  sll          s7, s10, t0
                  sltu         s3, a0, s6
                  andi         gp, t5, 2026
707:              slti         s4, t5, 1706
                  bge          a7, s8, 727f
                  bne          s2, a2, 713f
                  sltiu        ra, s7, -1687
                  xori         s10, sp, -1693
                  slti         s10, t2, -48
713:              slli         ra, s6, 19
714:              blt          t4, s11, 734f
                  sltu         t4, s10, s11
                  or           zero, s0, a6
                  blt          s4, ra, 735f
                  bge          a2, a6, 736f
                  sra          ra, a3, t0
                  bgeu         s9, t5, 738f
                  xor          s5, t3, sp
                  xori         tp, t1, 1565
                  blt          t1, s0, 726f
                  srl          zero, s8, sp
                  srai         s7, a3, 18
726:              bge          s7, a6, 743f
727:              blt          a3, s2, 735f
                  xori         a7, t0, -951
                  or           a0, zero, a7
                  ori          t4, s10, 1735
                  add          s6, tp, s11
                  slt          s4, a2, t1
                  srl          gp, s11, t6
734:              auipc        s6, 59736
735:              lui          ra, 847320
736:              xori         s0, a1, -1436
                  srli         a6, a0, 5
738:              slt          a3, s2, s3
                  andi         s0, s11, 1774
                  sltu         s4, t3, s11
                  addi         s8, a3, -1198
                  nop
743:              slli         a0, t3, 31
                  slti         s10, s4, -1990
                  sra          s0, t0, s3
                  auipc        t6, 668916
                  blt          s7, a4, 755f
                  blt          s9, t5, 755f
                  auipc        s5, 504233
                  srai         a3, t0, 9
                  bgeu         s2, t6, 765f
                  xori         s5, gp, -631
                  bne          a2, s9, 769f
                  and          s4, t5, zero
755:              blt          s6, a1, 763f
                  sll          gp, t4, a0
                  sub          s10, zero, s9
                  lui          a4, 430761
                  slti         t2, a1, -423
                  bgeu         a3, s1, 767f
                  srl          a6, ra, s4
                  xor          a6, t6, s0
763:              bltu         a7, zero, 779f
                  srli         a1, t0, 14
765:              sll          a3, s10, t3
                  bgeu         s7, a6, 775f
767:              slt          gp, ra, t6
                  auipc        s4, 1041810
769:              andi         tp, s1, 1592
                  add          s2, t5, t1
                  bne          t4, t1, 775f
                  sra          ra, s10, s4
                  nop
                  andi         s5, s3, 701
775:              nop
                  bgeu         t2, a4, 794f
                  sub          t1, sp, tp
                  beq          s7, s3, 797f
779:              andi         t5, sp, 1219
                  nop
                  sltiu        t0, s5, 949
                  and          s2, s3, t3
                  bltu         a7, s11, 801f
                  add          a6, a0, a0
                  bne          t1, t1, 802f
                  sltu         gp, s11, t5
                  srli         t1, s4, 17
                  slti         a1, a1, -1072
                  srai         gp, t2, 1
                  xor          s1, s0, a5
                  and          s10, a0, a7
                  sltu         t6, a7, s2
                  sll          s10, zero, t4
794:              or           t6, s7, t0
                  srai         t3, s4, 0
                  slli         s2, t1, 1
797:              addi         t1, t2, 1381
                  slli         t1, t0, 28
                  slti         s5, s9, -1720
                  slti         gp, t1, 788
801:              srai         a4, a7, 10
802:              and          a3, a1, s4
                  srl          s3, t5, a5
                  bltu         ra, t2, 820f
                  sltu         zero, tp, a1
                  auipc        s5, 814107
                  srl          s7, ra, s5
                  lui          t1, 164898
                  add          s11, a3, ra
                  beq          s5, ra, 818f
                  blt          t6, sp, 820f
                  auipc        s5, 543829
                  add          s10, s10, s5
                  ori          s5, a5, -51
                  slt          s5, t5, s5
                  sltu         t5, t0, sp
                  slti         a6, a6, -1001
818:              xori         s7, s0, -767
                  bltu         t3, a4, 831f
820:              or           a2, t6, ra
                  blt          s9, ra, 841f
                  blt          a1, s7, 826f
                  srli         s6, a1, 20
                  bgeu         s3, a5, 831f
                  bltu         s2, zero, 843f
826:              auipc        zero, 647499
                  auipc        s1, 517349
                  srai         s7, t4, 16
                  or           s2, tp, s11
                  auipc        zero, 472771
831:              sltu         a3, a5, s2
                  bge          t5, t0, 846f
                  sltu         s1, s10, a0
                  blt          s3, s5, 840f
                  slti         s10, s2, -1105
                  srl          s10, a5, s1
                  or           tp, t1, zero
                  lui          s11, 219897
                  blt          s9, t4, 850f
840:              srai         a7, ra, 20
841:              bgeu         s8, zero, 850f
                  slti         t0, a5, -602
843:              ori          s11, s1, 9
                  sltiu        s5, t0, -821
                  andi         a7, t5, -820
846:              ori          t3, s10, -1828
                  bne          ra, t6, 856f
                  auipc        a7, 989672
                  add          t0, a3, tp
850:              bgeu         a5, t3, 857f
                  or           s1, gp, gp
                  blt          gp, s5, 860f
                  and          s4, a6, s7
                  slt          t4, s6, a4
                  slti         a1, s3, -478
856:              lui          s11, 456668
857:              slti         a0, zero, -1748
                  sltu         s1, a7, s9
                  bne          a5, s11, 873f
860:              and          t2, gp, s3
                  beq          a0, t0, 863f
                  sub          s1, t4, a7
863:              sltiu        s2, s5, -869
                  srli         a1, a6, 24
                  andi         t2, t6, 168
                  slli         t1, t4, 25
                  or           t0, s10, a5
                  ori          gp, s6, -1390
                  andi         s11, s11, 409
                  slti         a2, s6, -422
                  sltu         s5, s5, s3
                  add          t2, ra, s2
873:              srl          t2, zero, s10
                  ori          t5, sp, -1501
                  bge          s10, s4, 879f
                  bltu         gp, a2, 892f
                  lui          t3, 185948
                  or           ra, a3, a7
879:              beq          s5, t0, 882f
                  sra          s5, sp, a2
                  and          tp, a3, ra
882:              bltu         t5, s7, 902f
                  xori         s4, s2, 441
                  lui          s2, 373038
                  blt          gp, t2, 894f
                  xori         t3, t6, -1463
                  xori         t4, t2, 1450
                  bge          a4, s9, 899f
                  nop
                  lui          s5, 847315
                  ori          t3, s7, 1163
892:              nop
                  sll          s7, s2, t1
894:              sub          s0, t0, tp
                  auipc        a2, 1023094
                  and          s1, s11, s2
                  bgeu         a1, t6, 901f
                  andi         a4, s11, 902
899:              bne          t6, s11, 907f
                  bgeu         ra, a2, 920f
901:              srai         t0, t6, 3
902:              or           a4, t6, s3
                  xori         a7, s10, 963
                  bne          tp, tp, 920f
                  xori         t6, s2, -24
                  slt          s7, a6, gp
907:              slt          ra, t2, s3
                  xori         s4, a4, -1358
                  sra          a2, t5, s8
                  bge          s9, a6, 918f
                  blt          t3, a3, 931f
                  and          s4, t4, a1
                  and          s10, tp, s8
                  slti         a4, s0, 1222
                  sll          s0, a0, gp
                  slti         s2, t6, 191
                  auipc        s4, 415209
918:              sltiu        zero, a2, 1496
                  or           tp, s9, s7
920:              srli         ra, s5, 9
                  auipc        a3, 746836
                  bge          t0, tp, 931f
                  slli         a0, a6, 5
                  auipc        s11, 872644
                  or           a1, sp, s6
                  add          t5, tp, s1
                  bltu         a1, t3, 946f
                  add          s8, s1, a6
                  sltiu        a2, a2, 1126
                  bltu         s0, ra, 942f
931:              sltiu        t6, s0, -967
                  xori         s7, t4, 208
                  and          a3, s8, t6
                  bgeu         gp, t5, 948f
                  bge          t5, a6, 942f
                  add          t4, s6, gp
                  xor          s7, s7, t0
                  slli         a7, t1, 12
                  xori         s3, t2, 1845
                  bltu         s2, s1, 958f
                  slti         s1, s11, -1763
942:              ori          a1, s1, 137
                  sra          t5, a4, t2
                  srl          a3, t5, s8
                  sll          a6, t0, s10
946:              lui          a2, 961743
                  and          s8, a7, tp
948:              addi         s11, t6, 1405
                  add          s2, s3, a3
                  bge          t1, sp, 968f
                  bltu         t5, a6, 969f
                  slli         s7, a5, 12
                  xori         gp, s2, -728
                  srl          t3, s4, a1
                  srli         s11, zero, 7
                  bltu         s9, a7, 965f
                  andi         ra, s0, -1234
958:              auipc        a0, 860875
                  auipc        s3, 858268
                  srai         s11, a5, 17
                  beq          tp, s2, 965f
                  bge          s10, ra, 965f
                  slt          a0, s8, s7
                  add          s7, a4, t2
965:              andi         s3, t4, -648
                  and          a6, s0, s2
                  blt          s10, s10, 983f
968:              sltu         s1, t4, t2
969:              or           s10, s3, s3
                  sltiu        gp, a4, 1874
                  xori         a3, t0, 1003
                  add          t5, s1, tp
                  and          tp, s3, t5
                  blt          t5, a4, 991f
                  xori         a7, t6, -1707
                  addi         t0, s6, -114
                  sra          a4, s7, ra
                  srl          s4, t6, a5
                  auipc        s6, 897813
                  srai         t0, a6, 7
                  xor          s5, s1, a0
                  sltiu        a7, a4, -1886
983:              andi         gp, a7, -896
                  bge          s6, s1, 1000f
                  sll          s10, tp, s2
                  blt          s2, s1, 990f
                  sub          a6, a6, t3
                  xori         s2, s11, -920
                  sltiu        s2, zero, -1515
990:              srli         gp, s5, 17
991:              auipc        ra, 457274
                  xori         a0, a6, -1291
                  bltu         a4, zero, 1007f
                  slt          t6, zero, t2
                  srli         tp, t0, 14
                  ori          ra, a6, 1412
                  xor          t3, gp, s4
                  xor          tp, t4, s7
                  srai         s2, ra, 30
1000:             slt          s2, s1, a4
                  sltiu        tp, a5, -1375
                  sltiu        t4, t6, 1747
                  and          a4, s6, a6
                  lui          t5, 690011
                  sltiu        s8, t1, 1239
                  nop
1007:             xori         t2, a6, 2034
                  nop
                  sub          s5, a6, s2
                  slti         a7, a0, 1624
                  and          t4, a4, s9
                  slti         tp, s0, 1382
                  and          s8, s4, t1
                  slli         t2, s5, 3
                  xori         s3, t0, 685
                  sra          gp, s0, t3
                  srai         t5, a4, 11
                  nop
                  bne          t3, a4, sub_3_j11 #branch to jump instr
                  sub          s1, s2, t1
                  andi         s1, tp, -477
                  or           s8, t3, a4
                  srai         t4, zero, 18
                  add          s0, t4, a1
sub_3_j11:        jal          t6, sub_7 #jump sub_3 -> sub_7
                  and          a1, t1, a5
                  bltu         s0, s7, 1021f
                  slt          a7, a6, a7
                  and          t3, s5, ra
                  andi         a7, a3, 1168
                  slt          s3, a3, t1
                  lui          t2, 313438
1021:             ori          t3, s6, -2025
                  slti         t1, s3, 692
                  bge          s11, s5, 1025f
                  blt          a2, t4, 1031f
1025:             srli         zero, a7, 28
                  add          t2, t6, s3
                  sll          ra, t0, t5
                  or           s4, zero, t2
                  addi         t1, gp, -206
                  addi         gp, s8, -1951
1031:             slli         t0, s1, 27
                  sra          t0, a2, a3
                  and          a3, a2, a2
                  xori         a2, s9, -431
                  ori          s2, s10, -1347
                  xor          zero, a3, a5
                  and          s6, a5, t3
                  sll          s11, t1, s1
                  srai         s10, gp, 27
                  srli         t1, gp, 3
                  sltu         s7, s9, s1
                  nop
                  ori          s10, s0, 118
                  ori          s8, t0, -836
                  add          s8, s3, zero
                  sltiu        t5, s8, 1746
                  slli         a3, s2, 9
                  sll          s4, s9, t5
                  sra          t4, t3, s9
                  xori         a1, a7, 529
                  blt          s0, a2, 1060f
                  srai         gp, s1, 19
                  bge          a3, s6, 1060f
                  bltu         tp, s6, 1062f
                  nop
                  slti         s10, s9, 400
                  bne          t6, tp, 1060f
                  nop
                  andi         s7, s9, -721
1060:             blt          s11, a1, 1078f
                  nop
1062:             auipc        a4, 66301
                  ori          t3, a1, 195
                  xor          gp, t0, t6
                  srli         t0, s5, 17
                  ori          t4, t4, 1415
                  bge          t0, t4, 1069f
                  slti         a0, s9, -510
1069:             bgeu         zero, s11, 1078f
                  slt          a1, sp, s3
                  or           s11, t4, a7
                  and          t0, s0, a2
                  srli         s7, sp, 26
                  or           s8, tp, s10
                  slti         a1, t0, -507
                  sltiu        gp, ra, -1625
                  sra          t4, a3, zero
1078:             xor          tp, t6, s9
                  addi         t0, s9, 399
                  sltiu        a6, gp, 1703
                  sra          a4, t2, a4
                  slt          a1, t1, s4
                  slti         gp, a0, -587
                  or           s11, s6, a6
                  or           t4, s10, ra
                  srai         a2, t4, 24
                  sra          s0, t2, tp
                  addi         s10, t5, 1123
                  or           s7, a3, t6
                  sll          t0, zero, tp
                  bgeu         a1, s8, 1108f
                  srai         a1, a3, 29
                  addi         a1, ra, -1461
                  srl          s1, t2, tp
                  lui          t1, 824760
                  or           t5, a4, t3
                  sra          a7, s8, s10
                  srl          s7, a2, zero
                  srl          tp, gp, s3
                  beq          s7, s2, 1116f
                  bge          a5, t2, 1108f
                  sub          s2, a3, t5
                  bne          zero, a6, 1115f
                  slti         a1, ra, 509
                  blt          s8, s6, 1111f
                  bltu         a2, a5, 1113f
                  slli         a7, s5, 9
1108:             nop
                  addi         s8, t4, -85
                  add          t4, a4, s8
1111:             xor          zero, s5, t2
                  or           ra, a3, a6
1113:             sub          s3, s9, s2
                  addi         s7, t6, -1133
1115:             blt          s1, t4, 1123f
1116:             xor          a0, s7, s1
                  bne          s9, s6, 1126f
                  add          t2, s2, s0
                  or           t0, a7, t2
                  ori          s2, a3, 1939
                  sll          tp, s10, s11
                  and          s4, s6, s2
1123:             or           t2, s10, s11
                  addi         a3, a5, 993
                  xor          ra, a0, a2
1126:             slti         s11, s3, 986
                  xori         t3, s7, 1703
                  sltu         s5, a3, s8
                  add          gp, t6, s1
                  or           s10, sp, t5
                  srai         s8, t4, 11
                  auipc        tp, 996295
                  blt          s6, a3, 1137f
                  blt          s6, s11, 1150f
                  sub          gp, t5, s10
                  srli         t0, t2, 1
1137:             bltu         t0, t6, 1151f
                  bltu         s2, a5, 1156f
                  blt          s10, t0, 1159f
                  slli         t3, t0, 22
                  andi         t4, a1, -1255
                  slli         s4, t6, 8
                  blt          a1, a7, 1150f
                  xori         ra, s4, -813
                  and          a2, t4, a7
                  bltu         s10, a7, 1166f
                  slti         s6, a3, 553
                  ori          t5, t1, -309
                  xori         a7, t6, 1877
1150:             srl          s4, t4, a3
1151:             xor          zero, t4, t3
                  ori          s10, t2, 1310
                  andi         a3, a0, -280
                  add          a3, s0, s10
                  bge          tp, s6, 1163f
1156:             slt          s10, s6, ra
                  blt          a7, t3, 1161f
                  sltiu        s1, t6, 1633
1159:             bgeu         s5, a2, 1167f
                  srl          s8, s7, t0
1161:             sltiu        zero, t0, -1892
                  nop
1163:             bltu         t3, t2, 1179f
                  bne          ra, s7, 1183f
                  bltu         s11, t2, 1174f
1166:             and          a2, s6, ra
1167:             bne          s7, ra, 1176f
                  blt          t2, sp, 1186f
                  slti         t3, s1, -671
                  bne          t5, s6, 1181f
                  addi         t6, gp, 119
                  lui          a1, 510416
                  beq          a5, a1, 1177f
1174:             auipc        s11, 584342
                  blt          zero, s10, 1189f
1176:             bltu         a5, s2, 1185f
1177:             bltu         zero, a6, 1195f
                  sltu         s7, a3, a0
1179:             sltiu        gp, a5, 1852
                  nop
1181:             bne          s1, s10, 1193f
                  slti         a1, s2, -1488
1183:             add          ra, sp, s11
                  srli         gp, s1, 14
1185:             ori          s5, a7, 586
1186:             addi         s0, s3, 338
                  addi         t5, s9, 520
                  add          gp, s10, t2
1189:             sub          s5, t2, tp
                  beq          s5, s2, 1194f
                  slli         s11, t0, 10
                  sub          zero, gp, a4
1193:             sltu         t2, a0, a2
1194:             srli         s3, t0, 14
1195:             lui          t3, 316117
                  bgeu         s10, s11, 1205f
                  beq          t3, s5, 1201f
                  bge          gp, ra, 1212f
                  slt          t5, zero, s3
                  sltiu        s8, s7, -2002
1201:             sra          gp, a7, a0
                  bltu         t4, s7, 1210f
                  sub          zero, t3, t0
                  ori          s7, s9, 667
1205:             lui          s2, 381549
                  sltiu        t3, a0, -299
                  bgeu         a3, a6, 1214f
                  ori          t1, s7, 288
                  andi         s8, sp, -1571
1210:             add          s10, s6, t5
                  xori         t6, s3, 1197
1212:             sll          s5, t3, zero
                  sltu         t1, t4, zero
1214:             slt          s10, s6, a0
                  beq          s0, s7, 1231f
                  sltiu        a7, t0, 980
                  add          s0, t4, t1
                  slti         s8, zero, 548
                  andi         ra, s2, -1283
                  beq          s11, a1, 1227f
                  slti         s11, s8, -305
                  xori         a0, a6, -759
                  sub          s5, a3, s2
                  bne          s6, s6, 1233f
                  bgeu         t5, ra, 1245f
                  xori         t4, a1, 1357
1227:             bne          s11, s9, 1230f
                  sltu         a2, a4, t6
                  sra          s5, s5, t0
1230:             lui          t3, 1005562
1231:             addi         s11, t5, -1923
                  slli         t6, t6, 7
1233:             blt          s4, a0, 1247f
                  bne          s6, a3, 1253f
                  slti         zero, s7, 48
                  srai         t3, t4, 29
                  sltu         s10, s10, ra
                  nop
                  xori         a4, a1, -1379
                  srai         t4, tp, 10
                  ori          t6, s2, -989
                  andi         s6, zero, 964
                  andi         a3, s1, 824
                  slli         t4, a2, 22
1245:             xori         s6, t2, -627
                  or           t0, a0, a4
1247:             bltu         s4, sp, 1249f
                  slt          s7, s8, sp
1249:             srai         t5, a0, 10
                  srai         t4, s5, 30
                  bgeu         ra, s6, 1257f
                  addi         s7, t0, 314
1253:             xori         t0, s11, 1075
                  slti         s10, s0, -1573
                  sltiu        a0, s2, -241
                  or           zero, a6, a5
1257:             bltu         s2, s0, 1268f
                  add          a3, ra, t0
                  srl          s3, a5, t4
                  xori         s2, a5, 777
                  blt          a2, a4, 1265f
                  bltu         t5, a2, 1268f
                  bne          t6, sp, 1268f
                  sra          tp, t6, s11
1265:             sltu         t5, s6, t3
                  and          zero, a3, s9
                  srl          t1, s5, gp
1268:             and          t3, t3, s10
                  slti         t5, t6, 1906
                  auipc        t3, 631572
                  lw           t6, 4(s9)
                  sll          tp, t5, t1
                  addi         s9, s9, 64
                  sltiu        ra, tp, 654
                  slti         s5, s11, 719
                  sltiu        s7, a5, -1009
                  slli         a2, s6, 16
1710:             addi x17, x31, 1
1710:             jalr x17, x17, 0
sub_8:            bne          s3, s10, sub_8_stack_p
                  xori         t4, a1, 555
                  slti         tp, t0, -1074
                  auipc        t4, 39819
sub_8_stack_p:    addi         s9, s9, -32
                  sw           t6, 4(s9)
                  xor          a4, zero, s9
                  la           a4, sub_10
                  addi         s3, t6, 483
                  addi         a4, a4, -739
                  auipc        t3, 91487
                  xor          t5, s0, a4
                  andi         t2, a2, 73
                  sra          t0, s1, a6
sub_8_j13:        jalr         t6, a4, 740 #jump sub_8 -> sub_10
                  xori         s5, t5, -1262
                  nop
                  srli         a7, s8, 27
                  and          t6, t2, s1
                  auipc        t1, 549745
                  sll          gp, t2, s2
sub_8_j14:        jal          t6, sub_9 #jump sub_8 -> sub_9
                  slti         t6, a0, -1800
                  or           a4, s4, a2
                  sltu         t3, ra, s9
                  srl          t6, zero, a7
                  blt          s5, s2, sub_8_j15 #branch to jump instr
                  slt          zero, t4, ra
                  auipc        t6, 243516
                  sra          a2, a5, s9
                  sra          s5, s11, s3
sub_8_j15:        jal          t6, sub_9 #jump sub_8 -> sub_9
                  xori         s5, t1, 811
                  or           zero, t6, s10
                  ori          s3, a0, -1177
                  bgeu         t0, s3, 13f
                  add          s4, s1, a3
                  slt          t2, a0, s3
                  add          a7, s0, a1
                  sltiu        s11, s4, 198
                  sltiu        s0, a7, -1457
                  bgeu         t5, s7, 22f
                  sub          a1, a7, s10
                  auipc        tp, 750674
                  xor          s2, a7, s8
13:               srl          a7, gp, a1
                  srl          a2, t5, zero
                  bne          t5, t1, 29f
                  lui          a2, 968510
                  add          t3, s2, s11
                  sll          s2, t6, a3
                  xor          a2, t6, t2
                  sra          s5, ra, tp
                  sltiu        zero, s0, 243
22:               sll          s8, s1, s6
                  srai         gp, s9, 29
                  ori          a7, a0, 1059
                  lui          a3, 63310
                  sltu         t2, a6, a2
                  addi         a6, tp, 323
                  and          t5, s2, tp
29:               slli         tp, s4, 29
                  ori          gp, s1, 871
                  bltu         t2, t6, 37f
                  add          t3, s7, zero
                  addi         s8, s8, -163
                  lui          s8, 853555
                  srli         s4, s3, 4
                  blt          s7, s7, 37f
37:               xor          gp, a0, a0
                  slli         s1, s9, 13
                  slti         tp, s6, -1391
                  add          s11, t4, t6
                  andi         a3, a4, -1285
                  lw           t6, 4(s9)
                  srli         t1, s11, 28
                  addi         s9, s9, 32
                  sltiu        t5, a5, 104
78:               addi x23, x31, 1
78:               jalr x23, x23, 0
sub_6:            slli         a3, t4, 29
                  addi         s9, s9, -36
                  sw           t6, 4(s9)
                  xori         t3, s4, -611
                  addi         t3, a6, 1114
                  srl          tp, s3, s8
                  lui          s3, 290066
                  sra          tp, s10, gp
                  sra          t1, zero, s3
                  slli         s7, s2, 21
                  srl          a4, s4, s0
                  la           s8, region_0+1349 #start riscv_load_store_rand_instr_stream_6
                  sb           a7, -1171(s8)
                  and          s5, s10, t1
                  sb           s2, 346(s8)
                  sb           a2, -130(s8)
                  lhu          s7, 377(s8)
                  lui          a6, 211327
                  lh           a6, 217(s8)
                  add          a3, t2, a3
                  sb           sp, -182(s8)
                  xori         ra, sp, -739
                  sltiu        zero, t3, -1302
                  sb           t5, -1090(s8)
                  lw           tp, 327(s8)
                  lhu          a7, -1233(s8)
                  ori          a3, s10, 708
                  nop
                  lb           s6, -450(s8)
                  lhu          t4, 441(s8)
                  add          s11, s0, s5
                  xor          a7, s8, s5
                  lhu          s1, -1273(s8)
                  lb           ra, -58(s8)
                  xori         tp, tp, -1692
                  sh           s7, -1055(s8)
                  sb           ra, -534(s8)
                  sub          s6, s2, a1
                  ori          t6, s0, -264
                  sll          s3, s2, s3
                  xori         a3, s1, -525
                  sltu         a3, t4, t4
                  sb           s8, -942(s8)
                  sltiu        a1, a0, -470
                  srli         a6, t0, 2
                  sb           t0, 473(s8)
                  lbu          t5, 478(s8)
                  sw           s7, -329(s8)
                  sb           s7, -1340(s8)
                  addi         s0, t4, 1207
                  lw           t4, -737(s8)
                  sw           s5, 379(s8)
                  lh           t4, 289(s8)
                  xori         s10, s2, -152
                  sub          a2, s4, a6
                  lb           s10, -56(s8)
                  andi         s10, sp, 1705
                  slli         gp, sp, 23
                  srl          ra, tp, s6
                  lhu          a0, -913(s8)
                  auipc        zero, 356319
                  lui          a3, 916178
                  slt          s4, a4, s3
                  sb           a1, -1061(s8) #end riscv_load_store_rand_instr_stream_6
                  la           tp, region_1+589 #start riscv_load_store_rand_instr_stream_0
                  lw           s1, 467(tp)
                  lbu          s3, 82(tp)
                  sw           t3, 395(tp)
                  lbu          s11, 114(tp)
                  slti         s7, t2, -1906
                  or           a1, s0, s6
                  sb           tp, 662(tp)
                  or           t2, t3, s6
                  lb           s0, 21(tp)
                  lb           zero, 413(tp)
                  lh           a4, 945(tp)
                  auipc        a2, 630380
                  lbu          t3, 1401(tp)
                  sh           t5, 1209(tp)
                  and          a4, s5, s3
                  sb           s2, 1135(tp)
                  or           ra, a5, ra
                  or           t4, t5, tp
                  lbu          gp, 396(tp)
                  lbu          t0, 842(tp)
                  sb           s0, 830(tp)
                  lbu          s1, 1329(tp)
                  sltiu        a1, t6, -952
                  nop
                  sb           s3, -150(tp)
                  slli         a1, t6, 18
                  sra          gp, t1, t5
                  lhu          s4, 15(tp)
                  lbu          s1, 604(tp)
                  sll          s7, t3, s7
                  srai         ra, sp, 21
                  sh           a0, 245(tp)
                  andi         s5, s7, 538
                  and          s11, a6, t6
                  lhu          t5, 433(tp)
                  lb           s8, -389(tp)
                  and          zero, s11, tp
                  sra          zero, t3, s9
                  sb           s2, -469(tp)
                  srli         a6, a5, 28
                  sra          s11, ra, a2
                  and          t5, s0, s2
                  lbu          a4, 716(tp)
                  xor          s0, t0, s6
                  slt          s10, s6, s5
                  sltu         s2, t4, s11
                  sb           s5, 706(tp)
                  sltiu        t3, a3, 778
                  or           zero, t6, t6
                  sb           s9, 506(tp)
                  sltu         a3, tp, zero
                  lbu          s8, 1114(tp) #end riscv_load_store_rand_instr_stream_0
                  la           s0, region_1+1523 #start riscv_load_store_rand_instr_stream_14
                  sw           t0, 33(s0)
                  srl          t6, t4, zero
                  sb           t5, -68(s0)
                  sb           t6, 102(s0)
                  lh           gp, -233(s0)
                  sb           t4, -151(s0)
                  andi         a3, s5, 43
                  sh           s6, -169(s0)
                  xori         s8, s10, -856
                  lbu          t2, 236(s0)
                  ori          a3, ra, 700
                  lbu          s4, 66(s0)
                  ori          s1, t3, -742
                  lh           s1, -213(s0)
                  sb           s3, -123(s0)
                  ori          t6, t1, 799
                  lh           t0, -199(s0)
                  slt          s10, s3, s1
                  srl          s7, s0, s10
                  sh           s5, 95(s0)
                  lui          s5, 452877
                  sh           t4, 97(s0)
                  and          s5, s8, zero
                  lb           a7, 67(s0)
                  lbu          t2, 227(s0)
                  sb           s3, 245(s0)
                  lb           t2, 18(s0)
                  lb           a7, -172(s0)
                  andi         a0, s6, 765
                  sll          s10, ra, t6
                  lhu          t3, 117(s0)
                  add          a4, s4, s7
                  lui          ra, 955961
                  lbu          s7, 138(s0)
                  addi         t5, t0, -18
                  lb           s5, 212(s0)
                  sb           a6, -244(s0)
                  or           s6, s6, s7
                  nop
                  sltu         a2, t1, t2
                  lbu          s11, -93(s0)
                  sb           gp, -223(s0)
                  lbu          s3, 148(s0)
                  lbu          a3, 216(s0)
                  lui          s5, 70863
                  lb           t6, 81(s0) #end riscv_load_store_rand_instr_stream_14
                  la           a0, region_1+1562 #start riscv_load_store_rand_instr_stream_5
                  lbu          s0, 93(a0)
                  sub          s5, sp, t0
                  or           tp, s3, a0
                  sltu         s4, a0, a5
                  slli         s1, a5, 17
                  lb           t3, -1457(a0)
                  sb           sp, -239(a0)
                  sra          a2, s5, s11
                  andi         a3, gp, 761
                  xori         gp, s1, -395
                  nop
                  srli         a3, s11, 0
                  lh           a7, -1512(a0)
                  and          t2, s9, a3
                  lb           s3, -613(a0)
                  sltiu        s6, t0, -685
                  lui          s1, 952042
                  xor          a3, s7, t5
                  sub          a4, s3, s4
                  xor          t5, ra, t6
                  nop
                  xor          s5, t5, a1
                  sub          tp, a3, t5
                  sb           s9, -499(a0)
                  sub          tp, t0, t2
                  and          s1, s7, s0
                  andi         t2, s0, -1315
                  slti         s6, sp, 521
                  auipc        s2, 402189
                  sltiu        t0, a7, -1225
                  sb           a0, -993(a0)
                  sra          s7, s5, a6
                  lbu          t3, 113(a0)
                  sh           s7, -1350(a0)
                  sb           s11, -753(a0)
                  lb           a6, -408(a0)
                  slti         t4, a4, -1858
                  lbu          s11, -1(a0) #end riscv_load_store_rand_instr_stream_5
                  la           s5, region_0+1933 #start riscv_load_store_rand_instr_stream_9
                  auipc        a7, 956860
                  sb           t1, 25(s5)
                  lbu          t1, 36(s5)
                  sb           tp, -131(s5)
                  lb           t2, -94(s5)
                  sltiu        t0, a5, 110
                  sh           a6, -217(s5)
                  slli         a4, sp, 15
                  lw           t0, 43(s5)
                  lbu          s3, 33(s5)
                  lhu          s3, -187(s5)
                  sb           s6, -239(s5)
                  lbu          t0, 32(s5)
                  sb           s5, -157(s5)
                  sb           a6, -59(s5)
                  lb           a1, -136(s5)
                  lb           a6, -242(s5)
                  sb           s4, -1(s5)
                  lbu          tp, -28(s5)
                  srl          ra, t0, s5
                  and          a0, s7, s2
                  sb           s8, -215(s5)
                  lb           a4, -126(s5)
                  lb           a7, -63(s5)
                  sb           t4, -207(s5)
                  add          s0, a5, s1
                  lb           t6, 16(s5)
                  sh           a2, -51(s5)
                  sh           a0, 53(s5)
                  lbu          s8, -65(s5)
                  lui          t4, 1026120
                  or           gp, s11, t3
                  lbu          a4, -66(s5)
                  srai         a3, s3, 24
                  lb           tp, 55(s5)
                  sll          a0, s7, t1
                  sltiu        a0, zero, -547
                  lbu          t1, 66(s5)
                  lbu          s10, -62(s5)
                  lbu          tp, -41(s5) #end riscv_load_store_rand_instr_stream_9
                  la           ra, region_0+865 #start riscv_load_store_rand_instr_stream_11
                  sltiu        tp, t2, -1296
                  srli         zero, t0, 1
                  sra          a4, ra, s6
                  lbu          tp, 92(ra)
                  srli         t6, a2, 22
                  srli         a7, t0, 5
                  and          t6, s0, a2
                  sll          a7, a1, s1
                  lh           s1, -23(ra)
                  sb           sp, -18(ra)
                  sb           tp, -73(ra)
                  add          a1, t4, a7
                  lb           s4, 229(ra)
                  lbu          a0, 196(ra)
                  slti         a6, a7, 763
                  lw           t3, 83(ra)
                  lbu          a1, 214(ra)
                  lh           a3, -239(ra)
                  sw           a3, -25(ra)
                  lbu          t4, 230(ra)
                  lh           t2, -27(ra)
                  lbu          s2, 242(ra)
                  lh           a6, 59(ra)
                  sb           s0, 194(ra)
                  lh           s1, 219(ra)
                  lh           s5, 239(ra)
                  auipc        s5, 29980
                  lb           s0, 47(ra)
                  or           t2, s3, s9
                  lbu          s0, -57(ra)
                  lb           s3, -54(ra)
                  sra          a0, t6, s6
                  sb           s9, -164(ra)
                  lb           t5, -182(ra)
                  lbu          s2, 64(ra)
                  sb           s10, 172(ra)
                  sw           s0, -245(ra)
                  lb           a1, 7(ra)
                  or           t3, s7, zero
                  nop
                  lb           t5, -168(ra) #end riscv_load_store_rand_instr_stream_11
                  la           t1, region_0+124 #start riscv_load_store_rand_instr_stream_16
                  lb           t4, 6(t1)
                  lb           ra, -33(t1)
                  sll          gp, t0, s8
                  sb           s9, 175(t1)
                  sb           s7, 187(t1)
                  lbu          a6, -73(t1)
                  lhu          s4, 216(t1)
                  lb           a0, -63(t1)
                  xor          s2, ra, s8
                  sltiu        s4, a4, -1461
                  sb           s11, 237(t1)
                  lw           s4, -80(t1)
                  lh           zero, 172(t1)
                  add          t2, s8, s3
                  lbu          a0, -47(t1)
                  xori         t0, s0, 30
                  sra          zero, zero, s10
                  srai         s3, t4, 8
                  andi         t3, tp, -1122
                  lh           a7, 246(t1)
                  sb           s4, -61(t1)
                  sb           a3, 22(t1)
                  and          a6, s9, s11
                  lw           s2, -84(t1)
                  nop
                  lb           a1, 233(t1)
                  lh           a4, 158(t1)
                  xor          s5, s5, s7
                  xori         t0, a4, -252
                  auipc        a6, 46970
                  sw           zero, 68(t1)
                  lbu          a6, 15(t1)
                  sll          gp, s2, a6
                  lb           a7, 65(t1)
                  sltu         a3, t3, ra
                  xor          t3, ra, a0
                  lh           a0, 142(t1)
                  lhu          t0, -106(t1)
                  lh           a7, -2(t1)
                  lbu          t6, -5(t1)
                  xori         t0, s10, -1716
                  lb           a6, 121(t1)
                  sb           sp, 132(t1) #end riscv_load_store_rand_instr_stream_16
                  la           s8, region_1+1654 #start riscv_load_store_rand_instr_stream_18
                  sra          t6, s4, s7
                  sw           tp, 6(s8)
                  lbu          a1, -7(s8)
                  addi         s5, ra, -524
                  lb           gp, 5(s8)
                  addi         s1, t5, 1453
                  addi         t0, t6, 983
                  lb           a4, -10(s8)
                  sra          s7, a4, t2
                  slt          a4, gp, gp
                  sra          t4, s3, s4
                  slti         a0, a7, 677
                  or           s2, s11, s4
                  lb           ra, 2(s8)
                  add          a7, s9, t0
                  lh           s0, -14(s8)
                  lb           s1, 1(s8)
                  lb           s1, 4(s8)
                  lb           s0, -11(s8)
                  sb           s1, 5(s8)
                  lhu          s0, -8(s8)
                  srl          zero, a3, a5
                  srl          a7, s2, s10
                  sub          a3, s3, zero
                  sh           s5, 16(s8)
                  lbu          a1, 1(s8)
                  lb           t3, -2(s8)
                  lb           s5, 3(s8)
                  lb           a2, 4(s8)
                  sll          a1, zero, t2
                  nop
                  sb           s0, -10(s8)
                  lh           a0, 16(s8)
                  sb           a4, 7(s8)
                  lhu          gp, -6(s8)
                  auipc        t4, 804361
                  sb           a7, -3(s8)
                  lbu          s5, 11(s8)
                  lb           gp, -5(s8)
                  sra          s7, t4, t3
                  sb           s1, -15(s8)
                  srl          s4, t2, s5
                  xori         t3, s8, 565
                  lh           t3, 4(s8)
                  sltu         s5, s10, sp
                  sb           sp, -7(s8)
                  sh           zero, 14(s8)
                  srai         t4, s1, 28
                  lbu          tp, 16(s8)
                  slli         zero, a2, 29
                  sb           a7, -5(s8)
                  xori         s7, a0, -958
                  sltu         s11, s11, ra
                  sh           s9, 14(s8) #end riscv_load_store_rand_instr_stream_18
                  la           s3, region_1+284 #start riscv_load_store_rand_instr_stream_17
                  xori         a7, s4, 1996
                  lh           s5, -8(s3)
                  lbu          a1, 17(s3)
                  sra          s0, a6, s10
                  lw           t1, 12(s3)
                  or           s6, s11, a4
                  lb           a1, 37(s3)
                  addi         s7, s3, -284
                  andi         a1, t5, -836
                  ori          s8, t2, 1032
                  lbu          s0, -5(s3)
                  lui          s10, 197328
                  lb           a3, -3(s3)
                  sb           s10, 63(s3)
                  sb           s11, -30(s3)
                  lbu          tp, -37(s3)
                  nop
                  lhu          a1, 44(s3)
                  slli         tp, a3, 26
                  sh           t5, 22(s3)
                  or           s7, s9, a7
                  andi         s5, a4, -361
                  sb           a7, 3(s3)
                  lui          t3, 475740
                  andi         t4, s2, -558
                  lbu          s8, -19(s3)
                  ori          t4, s5, -791
                  sh           a6, 50(s3)
                  lb           s10, 27(s3)
                  lbu          s6, 62(s3)
                  sb           t6, -47(s3) #end riscv_load_store_rand_instr_stream_17
                  la           s8, region_1+677 #start riscv_load_store_rand_instr_stream_1
                  srai         s2, t2, 18
                  srai         t4, s0, 0
                  nop
                  andi         ra, a2, -1080
                  lh           s2, -51(s8)
                  lb           a2, 40(s8)
                  lb           s3, -2(s8)
                  sltu         s6, s5, t2
                  srai         s0, a1, 9
                  slt          s1, t5, s5
                  sra          s1, s10, a1
                  and          a6, ra, t6
                  slli         s7, s6, 20
                  slli         a7, t2, 10
                  srl          ra, s10, gp
                  sb           a2, 38(s8)
                  lui          t0, 700402
                  lb           t2, 46(s8)
                  auipc        t6, 267266
                  xori         a4, a4, 1440
                  lb           a4, 43(s8)
                  sll          s3, s11, s7
                  slti         s2, s7, 1407
                  sra          s6, s11, s10
                  sw           a3, -33(s8)
                  add          zero, tp, a5
                  lhu          a3, -29(s8)
                  lhu          a3, -9(s8)
                  or           a0, s8, t3
                  srl          s3, s2, s1
                  slt          a7, s3, zero
                  auipc        s11, 657531
                  addi         t2, tp, -1558
                  srli         ra, s7, 16
                  sb           t5, 0(s8) #end riscv_load_store_rand_instr_stream_1
                  la           s6, region_1+549 #start riscv_load_store_rand_instr_stream_3
                  srli         tp, gp, 22
                  lb           a7, -223(s6)
                  lhu          t2, -49(s6)
                  xori         t4, a5, 1712
                  auipc        a0, 786777
                  lh           t5, 37(s6)
                  sb           s0, 194(s6)
                  sltiu        s2, s0, -167
                  sra          s10, t4, s11
                  lui          s3, 908482
                  lb           ra, -134(s6)
                  lhu          t1, -45(s6)
                  lb           a4, 140(s6)
                  lb           t5, -42(s6)
                  sub          s7, s2, s9
                  lbu          a2, -104(s6)
                  lbu          a7, 108(s6)
                  addi         a1, t0, 892
                  lb           t2, -43(s6)
                  xor          s4, s7, s3
                  and          s5, a5, a7
                  lui          a0, 574857
                  sb           a5, -239(s6)
                  lb           t4, -137(s6)
                  lb           s10, 209(s6)
                  or           t6, ra, s8
                  srl          t6, t6, t4
                  lbu          s0, -216(s6)
                  sb           s8, 224(s6)
                  lb           s11, 210(s6)
                  lh           a4, -35(s6)
                  lbu          t2, 256(s6)
                  lbu          s3, -68(s6)
                  sltu         a6, s3, t6
                  add          t4, a6, a5
                  xor          t1, tp, a5
                  add          a2, s5, s1
                  lb           a6, 8(s6)
                  add          a1, a2, t1
                  lb           t1, -214(s6)
                  lb           a4, -224(s6)
                  and          s7, t4, t6
                  addi         s0, s8, 651
                  xor          s8, a1, s6
                  lh           s5, 37(s6)
                  lb           s1, 252(s6)
                  slli         a7, a7, 19
                  slti         s11, s9, -1761
                  lb           s0, 14(s6)
                  sll          a4, tp, t0
                  lb           s4, 46(s6) #end riscv_load_store_rand_instr_stream_3
                  la           s2, region_1+773 #start riscv_load_store_rand_instr_stream_12
                  slti         zero, a0, -244
                  and          a4, t0, a1
                  and          s3, s3, t6
                  srli         tp, t1, 10
                  lb           s7, -32(s2)
                  lbu          t2, 11(s2)
                  sb           s2, 16(s2)
                  lh           s8, 7(s2)
                  lb           t4, -4(s2)
                  lb           a4, 28(s2)
                  andi         t2, t5, -1308
                  auipc        t3, 360895
                  sltu         a4, t1, t6
                  sh           t2, -47(s2)
                  sltu         s6, s0, a2
                  lbu          s10, 40(s2)
                  andi         zero, s11, -1238
                  lb           tp, -20(s2)
                  lbu          tp, -55(s2)
                  lh           t6, 55(s2)
                  sb           t3, 29(s2)
                  srli         s4, s10, 15
                  nop
                  or           a3, a6, t3
                  srli         tp, t3, 5
                  srai         t2, a3, 18
                  sb           s7, -36(s2)
                  lb           s6, -55(s2)
                  and          s8, a5, a4
                  lb           s11, -52(s2) #end riscv_load_store_rand_instr_stream_12
                  la           s4, region_1+12 #start riscv_load_store_rand_instr_stream_4
                  andi         ra, s2, -1065
                  lui          s10, 178415
                  lb           t4, 15(s4)
                  lh           t3, -2(s4)
                  lb           s7, 11(s4)
                  add          a2, s1, t1
                  sb           s10, 6(s4)
                  lbu          s1, 3(s4)
                  auipc        s3, 184564
                  lbu          s2, 15(s4)
                  lh           s3, 10(s4)
                  lb           s6, 14(s4)
                  sb           s9, 11(s4)
                  lb           s0, -5(s4)
                  lb           s0, 5(s4)
                  add          a7, a2, s10
                  sh           a0, -10(s4)
                  sub          t6, a0, s4
                  andi         zero, t1, 1757
                  xori         a3, s1, -983
                  lb           t6, -9(s4)
                  slli         s1, a3, 23
                  lbu          t5, 7(s4)
                  lbu          t5, 13(s4)
                  auipc        s10, 658011
                  sh           s2, -8(s4)
                  lb           a3, -4(s4)
                  slli         a6, a5, 14
                  sh           a2, -10(s4)
                  lbu          t2, -11(s4)
                  lw           s11, -12(s4)
                  lbu          t1, 5(s4) #end riscv_load_store_rand_instr_stream_4
                  la           a1, region_1+1407 #start riscv_load_store_rand_instr_stream_13
                  lb           s7, 159(a1)
                  nop
                  xori         s4, t0, -1922
                  lbu          t4, 98(a1)
                  sltiu        s5, sp, 592
                  addi         t0, t3, 1412
                  lb           gp, -87(a1)
                  sra          t0, a7, t3
                  lb           t3, -174(a1)
                  lhu          s0, 111(a1)
                  xori         t1, t3, 1407
                  sltu         t2, a0, a6
                  andi         ra, a3, 1004
                  sll          s7, s1, s11
                  slt          s3, sp, t3
                  slt          s5, a5, s6
                  auipc        a3, 451208
                  sltu         zero, tp, t5
                  or           a4, sp, a3
                  auipc        ra, 755835
                  lhu          s8, -77(a1)
                  sb           s9, 10(a1)
                  srl          s3, sp, t4
                  sll          s2, t5, s3
                  lw           tp, -23(a1)
                  sll          s3, a0, s5
                  sh           gp, 135(a1)
                  lb           s3, 80(a1)
                  sra          t4, a4, tp
                  lw           t1, 121(a1)
                  sltiu        s11, s5, 802
                  srl          s4, zero, a6
                  and          t0, a4, gp
                  sll          s0, gp, t6
                  lui          s1, 224856
                  and          a2, ra, a3
                  sltiu        s8, s1, 2002
                  lbu          s11, 247(a1)
                  slti         zero, s11, 684
                  add          ra, s0, t2
                  lh           s0, 39(a1)
                  lb           s2, 183(a1)
                  sb           a3, 190(a1)
                  and          s2, s5, s1
                  lh           a3, -121(a1) #end riscv_load_store_rand_instr_stream_13
                  la           t3, region_1+1718 #start riscv_load_store_rand_instr_stream_2
                  sub          tp, t2, s4
                  sb           t6, 89(t3)
                  lhu          a2, -116(t3)
                  sw           gp, 194(t3)
                  lb           tp, 211(t3)
                  sh           t5, 196(t3)
                  slti         s10, t6, -1290
                  slti         s1, tp, -1129
                  lbu          tp, -49(t3)
                  sb           s11, 100(t3)
                  xori         s7, a4, 1672
                  lh           a6, 22(t3)
                  auipc        s1, 436328
                  srli         a2, a2, 13
                  sh           s4, -8(t3)
                  lb           t1, -222(t3)
                  lw           s3, 94(t3)
                  sb           s9, -194(t3)
                  lb           a2, -187(t3)
                  sltu         t6, s0, a7
                  sb           a3, 154(t3)
                  ori          t1, a1, 351
                  sh           tp, 200(t3)
                  sh           a4, 200(t3)
                  nop
                  lh           t0, -4(t3)
                  sb           sp, -29(t3)
                  and          s4, s9, s4
                  lhu          s8, 244(t3)
                  lb           t5, -57(t3)
                  lbu          a3, 3(t3)
                  lhu          gp, 92(t3)
                  sb           s8, -203(t3)
                  srai         gp, a7, 7
                  sltu         t1, a5, t6
                  addi         t5, s1, 1688
                  lbu          gp, 163(t3)
                  sb           t2, -193(t3)
                  or           s2, a6, t0
                  auipc        a7, 424843
                  sb           s5, 131(t3)
                  sb           t4, 49(t3)
                  sh           zero, 46(t3) #end riscv_load_store_rand_instr_stream_2
                  sltiu        s6, gp, -708
                  srl          s7, zero, s5
                  sltiu        t0, s3, 683
                  srl          s4, t3, s1
                  srli         t4, t0, 19
                  and          t2, t1, s10
                  sltu         s3, t6, a7
                  auipc        zero, 656021
                  addi         t6, t4, 60
                  xor          ra, s2, a4
                  slt          s6, s8, ra
                  sltiu        s0, t0, 576
                  slli         a1, a5, 21
                  lui          t6, 270912
                  srl          s4, a5, s2
                  bgeu         t0, a7, 22f
                  add          t6, s1, s7
                  nop
                  and          s10, s3, s4
                  srai         s5, s10, 4
                  slt          t1, a2, ra
                  sltiu        t2, t3, -1349
22:               slli         s10, a2, 31
                  ori          tp, s9, -1784
                  nop
                  srli         a2, s2, 10
                  bgeu         t3, t3, 31f
                  nop
                  sub          t2, s0, t1
                  nop
                  add          s0, ra, zero
31:               xori         s6, s6, -623
                  bne          s6, s5, 36f
                  srai         a6, t3, 13
                  bne          a4, a5, 40f
                  xor          t6, a6, a5
36:               xori         a4, s8, 367
                  sltiu        s4, t6, 23
                  blt          t3, s0, 49f
                  addi         t4, zero, 1305
40:               srli         t5, s9, 1
                  srl          s1, s11, a2
                  slti         a7, a7, 387
                  beq          a7, zero, 49f
                  and          s5, s11, s8
                  and          s1, s7, t6
                  addi         t1, gp, 1904
                  sltiu        s3, s9, -1174
                  xor          s4, a4, sp
49:               srl          a7, s9, a7
                  srai         a2, gp, 2
                  xor          s4, a6, s4
                  slti         t1, t1, 236
                  slli         s10, s7, 22
                  addi         t0, s9, 585
                  xori         s4, s8, -254
                  beq          a1, a3, 70f
                  or           s1, a1, s9
                  sub          a0, s2, a4
                  blt          zero, a0, 61f
                  or           a2, s0, s0
61:               sub          ra, s7, sp
                  beq          t0, a2, 81f
                  add          a2, t3, t3
                  sltiu        tp, s4, -245
                  nop
                  andi         t1, s6, 2004
                  blt          a2, gp, 72f
                  auipc        t4, 940404
                  auipc        s3, 408087
70:               slt          ra, s5, sp
                  andi         zero, t2, 1153
72:               slti         a7, s0, -1387
                  srai         t1, s7, 17
                  srli         s11, ra, 10
                  slli         gp, s4, 7
                  sub          s0, s2, s11
                  ori          t6, ra, -1666
                  slli         t4, t0, 16
                  slt          s3, t6, s3
                  or           t2, s10, sp
81:               bge          s5, s0, 100f
                  auipc        a6, 232210
                  andi         s2, a4, 2027
                  beq          s11, s5, 87f
                  bgeu         a2, s7, 94f
                  sltu         s1, tp, s9
87:               srli         s8, gp, 4
                  and          t0, a0, s1
                  blt          s2, s5, 91f
                  beq          s11, ra, 102f
91:               nop
                  srai         s4, zero, 16
                  ori          s2, s2, 1413
94:               slt          s2, s1, ra
                  ori          s7, tp, 897
                  sll          t5, t2, s6
                  blt          s11, a2, 113f
                  xor          a1, s3, s10
                  bge          s1, a4, 110f
100:              sltiu        a7, a7, -306
                  xori         s0, tp, 1
102:              addi         s1, s10, 1494
                  bge          t4, s2, 105f
                  sltiu        zero, t5, -1807
105:              andi         s4, t6, 1462
                  nop
                  bge          s3, a0, 118f
                  srl          a7, s6, t1
                  add          a1, tp, t6
110:              sll          a4, t1, ra
                  beq          a3, t3, 131f
                  andi         zero, a4, -607
113:              xor          a7, s0, s1
                  xor          s6, s5, s5
                  slt          a1, t5, sp
                  xor          a2, a1, t4
                  ori          s6, s0, 1360
118:              xori         s3, s2, -279
                  srli         s10, t2, 12
                  lui          a6, 860454
                  sra          s10, sp, ra
                  andi         s1, t5, 1399
                  addi         a3, t2, -1359
                  ori          gp, a0, -1783
                  auipc        a0, 116889
                  bge          t1, a7, 146f
                  slt          s0, zero, a7
                  add          t1, a2, t6
                  sll          s8, s5, t1
                  add          t3, tp, s1
131:              srl          s11, gp, s1
                  bne          s5, a1, 137f
                  and          zero, ra, s1
                  addi         a0, sp, 534
                  ori          a6, s7, -724
                  blt          s8, s2, 155f
137:              bgeu         t2, s6, 153f
                  auipc        t3, 1010905
                  xor          s4, s9, s7
                  bgeu         a4, s1, 158f
                  add          s10, t3, a1
                  andi         ra, s4, 1415
                  srai         a7, s11, 10
                  sra          a1, t6, s6
                  srl          a7, s10, sp
146:              xor          s5, s6, s8
                  srli         tp, zero, 0
                  xori         t5, s9, 1253
                  bgeu         s11, a0, 152f
                  sll          gp, s5, s0
                  bgeu         ra, a1, 156f
152:              nop
153:              or           a2, t6, a2
                  srai         s4, a6, 9
155:              srl          s6, t4, a1
156:              srli         s7, s4, 29
                  xori         t2, s10, 1884
158:              slli         s7, s8, 6
                  bltu         a2, s7, 174f
                  beq          t0, a2, 171f
                  sltiu        gp, a4, -123
                  slti         s8, t0, 93
                  nop
                  xori         a2, a4, -1065
                  bge          a5, s7, 175f
                  slt          s6, t5, ra
                  beq          s8, a0, 173f
                  srli         s7, t6, 26
                  beq          sp, t4, 180f
                  andi         s2, t3, 884
171:              bltu         t3, gp, 173f
                  beq          s7, s10, 177f
173:              addi         gp, t5, 1864
174:              or           a1, a1, s6
175:              bgeu         s4, s1, 191f
                  sub          a3, s0, s1
177:              sltu         gp, s1, ra
                  add          t1, a2, s2
                  addi         s4, s5, 521
180:              srl          s5, s5, sp
                  andi         a7, s2, 652
                  srl          a6, tp, a3
                  bltu         a0, a2, 194f
                  nop
                  lui          tp, 667988
                  slti         s0, a4, -664
                  xori         a6, s9, -350
                  slli         s4, s7, 13
                  xori         a7, t5, -409
                  slt          s8, t1, s8
191:              ori          s11, s11, -1726
                  bgeu         a3, a6, 203f
                  nop
194:              bge          t6, s2, 208f
                  or           s3, gp, s9
                  and          t6, s7, a7
                  sltiu        s8, a3, 1723
                  bgeu         s5, s8, 204f
                  add          s10, s10, s0
                  auipc        tp, 860759
                  beq          a3, s1, 221f
                  or           tp, sp, t3
203:              and          s8, tp, t5
204:              sub          s10, a5, s7
                  srl          t4, a6, t4
                  lui          gp, 872033
                  andi         s0, tp, 1481
208:              sltu         a2, s0, a3
                  sltu         t0, gp, gp
                  addi         s10, t0, 36
                  srli         gp, s0, 15
                  andi         s8, t4, 446
                  slli         a2, gp, 8
                  addi         a1, sp, 804
                  srai         t3, s1, 13
                  nop
                  slt          s7, gp, ra
                  srl          s0, s5, s6
                  ori          a6, a5, 1173
                  bne          t6, sp, 222f
221:              bge          t0, s6, 226f
222:              bne          s6, t2, 240f
                  ori          a0, ra, 1656
                  srl          s2, s1, a2
                  blt          s4, s3, 234f
226:              sltu         t2, a5, a4
                  bne          a0, t2, 242f
                  auipc        s4, 632983
                  beq          s11, t5, 240f
                  slti         a4, t2, -1369
                  nop
                  bne          zero, s2, 237f
                  sltu         a1, s6, gp
234:              sra          t0, a3, s11
                  slli         a1, t1, 9
                  beq          s1, t0, 246f
237:              xori         t6, s8, 1877
                  slli         ra, a1, 8
                  slt          s2, s5, a0
240:              addi         s5, s11, 1425
                  add          t2, t6, a7
242:              srli         a0, s3, 13
                  bge          t0, t4, 263f
                  srai         t1, tp, 26
                  and          s4, s11, a5
246:              bltu         tp, t1, 265f
                  ori          s10, s8, 1905
                  slti         a4, s8, 873
                  bge          t3, tp, 268f
                  xori         s2, s0, -1229
                  sra          s4, t4, t4
                  sltiu        tp, s6, -371
                  bgeu         s3, s7, 258f
                  slli         tp, t2, 11
                  bne          t6, a0, 257f
                  sra          zero, t4, s6
257:              and          a0, s2, a4
258:              beq          s0, sp, 265f
                  nop
                  sra          a2, s3, s11
                  srl          t2, s3, t4
                  bltu         s0, sp, 274f
263:              srai         s3, s5, 7
                  sub          ra, zero, t3
265:              xori         s4, s7, 329
                  beq          a0, s5, 270f
                  xor          t1, gp, s7
268:              sub          t3, t2, s4
                  beq          t0, s3, 272f
270:              sub          s2, s7, gp
                  srai         tp, t1, 14
272:              srli         a3, s10, 4
                  srli         t4, a4, 16
274:              xor          s3, ra, s3
                  ori          s7, a0, 146
                  xor          a7, t3, s2
                  srl          t1, a3, a4
                  srai         zero, s11, 18
                  sra          ra, gp, a5
                  blt          s4, s5, 283f
                  srai         a7, t5, 17
                  sltiu        t0, s9, -151
283:              blt          s6, t6, 302f
                  sltu         s1, s5, t1
                  beq          t6, a4, 301f
                  xor          t0, t1, tp
                  sll          t4, s0, t4
                  and          a4, s4, s2
                  bltu         s0, zero, 294f
                  srl          a1, tp, a1
                  sub          t0, t0, s2
                  srai         s1, t5, 7
                  bge          s3, s2, 307f
294:              slli         a7, a7, 14
                  sltu         s1, a0, s2
                  blt          gp, s1, 312f
                  and          gp, a6, a0
                  bge          s9, a2, 304f
                  slt          a7, s8, s6
                  bne          s10, t5, 320f
301:              slli         zero, t5, 27
302:              blt          t2, sp, 322f
                  bgeu         t1, t2, 312f
304:              srl          s1, s10, s2
                  bgeu         t4, a3, 310f
                  srli         a6, gp, 2
307:              srai         a4, t5, 5
                  srl          s7, a0, gp
                  slli         s1, s10, 25
310:              bgeu         s8, s3, 313f
                  lui          t2, 858797
312:              bge          t6, zero, 314f
313:              nop
314:              nop
                  sub          a0, s7, a0
                  srl          tp, t2, gp
                  ori          s0, s11, -1704
                  nop
                  lui          s2, 1013520
320:              bne          gp, sp, 339f
                  or           a2, a3, ra
322:              srl          s2, ra, s8
                  bge          s0, a0, 339f
                  slt          s1, s9, s4
                  sll          zero, a7, s4
                  and          s6, s11, a1
                  slt          a3, tp, s0
                  addi         gp, s8, 266
                  add          a7, a4, s11
                  ori          s5, s8, 1619
                  srl          s10, t3, s3
                  blt          zero, s2, 342f
                  and          a4, t0, a2
                  sll          s10, t6, t4
                  srl          s0, s9, a7
                  add          s10, a6, s6
                  xori         a6, a3, -838
                  lui          ra, 470492
339:              bltu         sp, t2, 350f
                  sltiu        a3, t1, 193
                  or           gp, a2, s4
342:              sll          s3, s10, zero
                  ori          s11, t1, 575
                  add          t6, s10, s9
                  sub          s8, a5, s7
                  slti         a0, t5, -1787
                  sra          zero, a5, s1
                  auipc        tp, 545336
                  beq          t3, a7, 360f
350:              ori          a6, s0, -911
                  sra          a7, s11, ra
                  srai         a6, s3, 12
                  srl          a6, s6, tp
                  auipc        s1, 976363
                  srli         s1, s3, 14
                  srai         a6, sp, 23
                  beq          s10, sp, 368f
                  ori          s3, a5, -982
                  sub          s3, tp, t1
360:              nop
                  andi         s3, t6, -1131
                  srli         zero, a0, 30
                  srli         s0, zero, 18
                  beq          s7, a4, 369f
                  sll          s1, a4, t6
                  addi         gp, a3, -1186
                  sltiu        gp, a1, -1978
368:              auipc        s7, 672990
369:              sltu         gp, s4, s10
                  lui          a3, 395766
                  xor          a6, a4, s2
                  add          a1, a5, s8
                  blt          t5, ra, 375f
                  ori          t6, t2, -1574
375:              ori          s3, s2, -1421
                  bltu         tp, s11, 387f
                  sltiu        t4, t6, -2047
                  bne          s3, t6, 393f
                  bltu         t0, a6, 385f
                  slli         a6, s1, 10
                  or           a4, a0, a3
                  xor          s5, s7, t3
                  sll          t0, a3, s0
                  slli         s11, s10, 3
385:              sltiu        gp, tp, 926
                  slti         ra, zero, -465
387:              blt          a0, t0, 392f
                  nop
                  slt          s4, s2, zero
                  or           a7, a5, a0
                  slt          ra, s8, ra
392:              srai         s6, a6, 1
393:              xori         a4, t0, -1651
                  andi         s7, t6, 2042
                  auipc        t5, 712109
                  sll          a0, tp, tp
                  beq          s5, s5, 399f
                  slli         s3, gp, 19
399:              andi         t6, sp, 1690
                  blt          t2, s9, 419f
                  or           t6, t5, t6
                  nop
                  ori          a4, a3, 92
                  or           a1, a6, s1
                  sra          s7, a4, a6
                  and          a4, s5, a4
                  srai         s2, sp, 8
                  xor          s5, t2, tp
                  and          s0, sp, t2
                  and          a7, s4, a6
                  sra          t6, s4, t2
                  bgeu         s10, a5, 431f
                  bne          a7, tp, 416f
                  sltiu        s4, s4, 398
                  slt          gp, a5, s0
416:              sra          s8, s7, s6
                  srai         a2, t6, 14
                  srli         a7, a4, 20
419:              ori          a3, t2, -1552
                  sll          t6, a0, s4
                  srl          s6, ra, s7
                  srl          t3, s4, s7
                  andi         s11, s8, 564
                  bltu         t2, s0, 436f
                  or           t0, s6, a5
                  ori          t3, s0, 653
                  addi         s8, t5, -262
                  addi         s7, zero, 1828
                  srli         tp, zero, 10
                  or           a7, t5, a6
431:              sub          s3, t1, s7
                  sltu         ra, tp, zero
                  slli         s6, a7, 10
                  blt          a6, tp, 441f
                  sub          s2, t6, gp
436:              nop
                  sll          t3, sp, s9
                  xori         s8, s6, 130
                  bgeu         s5, ra, 443f
                  srli         a1, sp, 5
441:              srl          a2, a0, a4
                  add          s2, t5, t2
443:              bne          s3, a1, 461f
                  bgeu         zero, t0, 454f
                  addi         t4, s9, 936
                  sltiu        a2, s0, 1684
                  xor          a3, a2, s11
                  bgeu         t1, t0, 452f
                  sub          a2, a4, s4
                  xori         a7, sp, -779
                  sub          gp, s7, t3
452:              or           a6, a3, s6
                  bltu         a6, t4, 472f
454:              lui          s8, 1026674
                  bltu         t1, sp, 474f
                  srli         a7, s11, 23
                  andi         t5, t4, 1530
                  sll          t3, s1, a6
                  auipc        tp, 334788
                  sub          t3, t0, a7
461:              srli         s5, t6, 19
                  andi         s11, t2, 1993
                  srl          s5, s1, a4
                  add          s10, tp, s7
                  lui          t0, 140293
                  andi         s2, s3, -1229
                  ori          s8, s3, -1881
                  beq          t0, s0, 477f
                  sltu         tp, a2, a2
                  add          t1, a3, a0
                  nop
472:              nop
                  slli         tp, s5, 13
474:              sub          s8, a7, t6
                  srli         a4, a0, 7
                  addi         s10, t4, 497
477:              slti         t4, t1, -1826
                  add          zero, a5, s7
                  xori         a2, zero, 1654
                  add          s7, t1, sp
                  sltu         t2, a2, a0
                  sltu         s5, a6, t6
                  sub          s5, s2, t6
                  slt          s8, s5, s2
                  sltu         t5, s5, t0
                  bgeu         s3, s4, 497f
                  sll          s0, a1, s3
                  andi         s5, s7, 1323
                  or           t1, a7, s7
                  sltu         a0, a4, s6
                  slti         a2, zero, -927
                  addi         a3, ra, -808
                  sltiu        s10, t1, 1559
                  nop
                  beq          t6, t4, 498f
                  slt          s0, s5, t5
497:              auipc        s3, 34306
498:              blt          sp, t5, 503f
                  bgeu         a7, a0, 510f
                  bge          a5, s9, 507f
                  addi         s10, s4, -2013
                  auipc        s10, 1008751
503:              bne          s8, s8, 518f
                  bne          a5, zero, 523f
                  andi         a0, a5, -723
                  lui          s8, 320552
507:              srai         t5, ra, 15
                  sra          s3, s6, t1
                  or           s8, gp, s11
510:              blt          s6, zero, 522f
                  sltiu        s8, a7, 715
                  sltu         t3, s4, s1
                  srl          ra, a6, s9
                  srl          s3, a5, s6
                  bgeu         s3, a1, 533f
                  sltu         a2, a2, a4
                  beq          t0, t0, 523f
518:              bge          ra, a2, 534f
                  sub          s4, a6, s3
                  srli         s4, a5, 6
                  xor          a2, t0, s0
522:              xor          a4, s2, a4
523:              srai         a1, a4, 24
                  bgeu         s2, s4, 535f
                  add          t3, t4, gp
                  auipc        t5, 893326
                  and          s5, s9, a3
                  sltu         t4, t0, t2
                  nop
                  slti         a4, t3, 164
                  nop
                  bne          a6, zero, 548f
533:              sll          s2, ra, gp
534:              or           s8, gp, t1
535:              beq          s7, s9, 546f
                  sub          s1, s11, s4
                  ori          s11, t4, -95
                  sll          s7, a5, s6
                  bltu         zero, s8, 541f
                  bltu         a7, t0, 545f
541:              or           t3, s9, s2
                  beq          s0, zero, 548f
                  slti         a2, a5, -461
                  add          zero, s3, t0
545:              bne          s10, gp, 565f
546:              bltu         t3, t5, 549f
                  srai         gp, s10, 21
548:              sltiu        t6, t0, -1570
549:              srai         t2, a4, 12
                  bge          a2, a2, 570f
                  xor          a6, s8, s11
                  slti         s7, s10, 1912
                  lui          s1, 546443
                  sra          t5, s4, s5
                  srai         tp, s10, 13
                  blt          s10, t6, 570f
                  bgeu         s10, t6, 562f
                  sltu         a2, s11, a2
                  slt          s8, s8, zero
                  sub          t2, a0, s3
                  lui          t6, 480215
562:              and          s1, a4, s7
                  srl          s10, a0, t5
                  sub          s3, s4, t3
565:              slli         t2, a7, 10
                  slti         s5, a3, 211
                  srli         s11, a0, 21
                  ori          tp, s4, -486
                  srli         a0, s9, 24
570:              srai         s11, s6, 19
                  bne          s8, s3, 573f
                  sltu         t4, a3, a5
573:              srl          t1, a2, s5
                  xor          a4, a2, s9
                  ori          a1, t6, 1812
                  nop
                  bne          s1, s4, 579f
                  xori         s5, ra, 1340
579:              sll          s4, t5, a3
                  bltu         zero, a1, 585f
                  xor          s5, a7, a6
                  auipc        s10, 662967
                  slt          a3, gp, t2
                  bge          t3, s5, 586f
585:              blt          a2, t1, 588f
586:              bge          s0, s0, 606f
                  sltiu        s10, a4, -674
588:              sltu         a3, sp, s11
                  beq          s9, a5, 594f
                  bne          a1, s5, 593f
                  blt          ra, s8, 610f
                  srli         s7, s10, 5
593:              bne          a4, a0, 598f
594:              srli         tp, t5, 27
                  auipc        a0, 512478
                  or           s0, a5, sp
                  srli         a7, a4, 22
598:              xor          a2, s1, a3
                  srli         s4, t6, 10
                  srai         s8, a4, 28
                  xor          a2, ra, ra
                  sltu         a2, a3, zero
                  add          s6, a2, sp
                  sub          gp, a6, a0
                  sra          s5, s2, sp
606:              lui          a2, 1025
                  sltiu        s6, a1, 179
                  or           s3, s0, zero
                  beq          s9, t1, 625f
610:              sll          a7, t2, s1
                  beq          t0, ra, 616f
                  sll          gp, t3, a7
                  srli         s2, a7, 25
                  sltiu        a1, a5, -1228
                  srli         t6, s10, 17
616:              bge          gp, ra, 622f
                  sll          a1, a4, s9
                  srl          s8, t1, s9
                  srai         s8, s9, 18
                  sll          gp, t0, t5
                  sltu         t0, t3, s1
622:              lui          gp, 873312
                  slt          a2, t0, s5
                  addi         a2, gp, 1847
625:              slti         a0, t3, 1891
                  slli         t4, s6, 2
                  and          tp, sp, s9
                  add          s6, s3, s5
                  sltiu        a2, t6, -768
                  xori         s0, a5, 240
                  auipc        s3, 420982
                  lui          t2, 110185
                  bltu         a3, a3, 635f
                  auipc        s5, 254304
635:              beq          ra, a1, 646f
                  slt          t4, gp, t1
                  nop
                  and          a7, t3, a2
                  add          a6, s2, s4
                  andi         s11, s5, -1558
                  beq          a3, gp, 647f
                  slt          t4, tp, t6
                  lui          s5, 214376
                  slti         t5, s2, 776
                  add          s1, a4, s0
646:              bgeu         s5, s1, 650f
647:              blt          t5, a6, 658f
                  auipc        t5, 184718
                  add          s10, s4, a6
650:              nop
                  srl          s0, t3, s2
                  bne          s10, sp, 664f
                  and          t6, t3, t0
                  sltiu        a1, s11, -921
                  and          a4, s8, a1
                  beq          zero, s7, 674f
                  slti         gp, t3, 1194
658:              slt          a2, t5, s0
                  slti         t3, s1, -1077
                  beq          s10, a6, 679f
                  sltu         a1, a7, a4
                  xor          s3, tp, s2
                  bne          s4, a5, 683f
664:              addi         a7, s9, 1481
                  and          t0, sp, s2
                  and          gp, a2, s0
                  bne          a1, a6, 681f
                  and          a1, s10, s6
                  ori          s6, t4, -131
                  slt          s0, t2, sp
                  slli         t0, s1, 14
                  srai         a4, a1, 12
                  andi         s7, ra, 91
674:              addi         s8, t4, 1749
                  sub          s5, s1, a6
                  xori         s6, s10, -1038
                  sub          t1, s10, s6
                  blt          a2, a3, 689f
679:              nop
                  or           a0, ra, a0
681:              srli         tp, t0, 20
                  bltu         s1, s10, 697f
683:              sub          s11, t4, t6
                  and          s7, s8, t4
                  bgeu         zero, tp, 701f
                  slti         a4, a3, 1057
                  sltu         s1, gp, tp
                  srai         s6, s7, 6
689:              nop
                  xori         s1, s4, -1654
                  srl          t3, ra, zero
                  xor          zero, t1, s0
                  bne          a1, sp, 703f
                  xori         ra, t4, 152
                  andi         tp, t5, 239
                  bge          t2, zero, 705f
697:              xori         t0, a4, 1213
                  ori          t2, s10, 433
                  xori         a0, s1, 725
                  lui          s10, 198894
701:              nop
                  sltu         s11, a1, s6
703:              and          a3, gp, s3
                  srai         a4, s2, 18
705:              srl          a2, s0, s1
                  or           s6, sp, a3
                  sra          s11, a7, t6
                  bne          a1, tp, 719f
                  addi         a0, ra, 398
                  addi         a2, a1, 1071
                  bne          s9, s7, 716f
                  xori         s0, s6, 886
                  and          s1, t6, a0
                  slt          t2, s2, a3
                  sltiu        a0, zero, -981
716:              srl          a7, t0, s1
                  bltu         s10, a6, 724f
                  sltiu        s5, t0, 644
719:              add          s5, s0, t4
                  lui          s1, 789340
                  srai         t4, sp, 23
                  or           a4, a6, a3
                  ori          s5, gp, -78
724:              srli         t6, s7, 17
                  bge          s8, a4, 727f
                  beq          tp, a3, 745f
727:              sra          s3, zero, s2
                  auipc        s3, 902874
                  lui          t3, 266121
                  srli         s6, zero, 16
                  xori         ra, a6, 1148
                  blt          a1, t1, 744f
                  srl          a6, t2, s1
                  srai         s2, s8, 22
                  lui          a7, 852714
                  nop
                  sltu         t6, a5, t4
                  and          a7, s6, a3
                  sra          s0, t2, t0
                  sub          t5, gp, s0
                  slt          t2, s2, a3
                  addi         a4, a7, -1455
                  srli         s7, a7, 19
744:              sll          s10, t6, a1
745:              nop
                  xori         t2, t5, 1266
                  xor          t0, t5, s1
                  blt          s10, a4, 762f
                  slti         t0, t4, 1859
                  sra          t5, s3, s3
                  add          a3, t0, t5
                  xori         a2, ra, 488
                  sra          tp, s5, s6
                  sra          a1, s6, a4
                  andi         t0, s5, -891
                  xori         s5, t2, 1365
                  xori         t4, gp, -536
                  srl          t0, t5, t3
                  ori          s6, s3, 1427
                  slli         t2, a1, 17
                  sll          t0, t5, a3
762:              sra          t1, t0, s9
                  addi         s2, gp, -89
                  slli         a1, a1, 1
                  bgeu         a2, t5, 784f
                  auipc        a7, 776829
                  sub          a1, gp, s11
                  sltiu        s6, a3, -1829
                  blt          t5, a0, 775f
                  sltu         s7, s3, t3
                  srli         t6, a1, 26
                  sll          ra, a0, tp
                  beq          t3, s5, 793f
                  xori         t2, a4, 437
775:              srai         a0, a0, 13
                  sll          s7, gp, sp
                  xor          ra, s11, s11
                  sll          s7, a3, s4
                  srai         s0, t3, 22
                  slli         s8, a4, 2
                  nop
                  sltiu        s3, s6, -1627
                  srai         a7, t1, 0
784:              auipc        a2, 224954
                  auipc        s6, 531090
                  srl          ra, t1, sp
                  xor          a7, s0, ra
                  andi         a1, t0, -1672
                  and          gp, t6, s4
                  sltiu        s7, a1, -1921
                  bgeu         s3, zero, 807f
                  xor          a4, tp, zero
793:              srai         a7, a3, 23
                  sltu         s10, s1, s10
                  slli         a7, a2, 30
                  slti         a7, t0, 949
                  sll          a1, s7, t3
                  xori         t0, s6, 1928
                  blt          s1, a3, 815f
                  sltu         s3, a5, gp
                  blt          s2, s10, 803f
                  add          tp, a0, a6
803:              addi         tp, s1, -294
                  srai         gp, a7, 16
                  srli         s7, t3, 8
                  lui          s5, 355303
807:              addi         s11, t2, 1393
                  slt          a1, s3, s6
                  srai         s8, s6, 8
                  srli         t5, sp, 18
                  sltu         s11, s2, a7
                  srl          s0, a3, t0
                  auipc        a0, 633041
                  bgeu         tp, s3, 824f
815:              sub          zero, s6, s8
                  add          tp, s0, s10
                  addi         a4, s10, 1689
                  blt          a3, sp, 823f
                  sll          a0, t3, s5
                  andi         a7, a4, -433
                  bge          a4, s11, 826f
                  la           a6, region_1+269 #start riscv_load_store_rand_instr_stream_7
                  sb           a5, 25(a6)
                  sh           t6, -25(a6)
                  lui          tp, 697113
                  add          t4, t6, s8
                  sb           s8, 56(a6)
                  sb           a4, -12(a6)
                  sb           t0, 0(a6)
                  sb           s11, 37(a6)
                  sltiu        s0, zero, -1710
                  xori         a0, s0, -1351
                  ori          s0, a1, 456
                  nop
                  lb           a4, 54(a6)
                  sh           s0, -21(a6)
                  lb           zero, 54(a6)
                  sw           tp, 15(a6)
                  slli         s0, a0, 31
                  sb           t6, -24(a6)
                  srai         a4, a7, 14
                  lb           s3, 32(a6)
                  or           t2, s8, s2
                  lbu          t1, 11(a6)
                  sb           t6, -58(a6)
                  slt          s3, s6, s11
                  lbu          a3, -20(a6)
                  srli         t2, a5, 19
                  lbu          a1, 58(a6)
                  lb           s11, -8(a6)
                  sb           ra, 20(a6)
                  lbu          s2, -36(a6)
                  nop
                  lhu          zero, 5(a6)
                  auipc        a0, 609961
                  sll          s0, zero, ra
                  srai         t2, a4, 3
                  srl          s4, a0, s10
                  ori          tp, a4, 1608
                  and          t5, a3, s3
                  sb           a2, -19(a6)
                  lb           t0, 38(a6)
                  nop
                  slli         t6, s3, 4
                  sll          s1, a6, s5
                  lb           tp, 10(a6)
                  xori         s6, s8, -650
                  lb           s8, -53(a6)
                  lb           zero, 53(a6) #end riscv_load_store_rand_instr_stream_7
                  sltiu        s6, a7, 210
823:              sll          t1, zero, a1
824:              bltu         zero, gp, 839f
                  lui          ra, 413665
826:              srai         t5, a2, 23
                  xor          s6, a5, a0
                  addi         s5, t5, 195
                  srai         t6, t5, 20
                  bne          t1, t1, 837f
                  slti         t1, zero, 1238
                  or           a0, a2, tp
                  bgeu         s6, a3, 836f
                  bge          t4, t6, 845f
                  srli         s2, s8, 3
836:              slli         tp, ra, 16
837:              or           a2, s5, sp
                  sltiu        s2, s1, -474
839:              ori          t4, s8, 699
                  sub          t1, t4, t1
                  or           a6, s6, a0
                  ori          t2, s1, 621
                  bne          s11, s3, 845f
                  bltu         t3, sp, 853f
845:              xori         a7, a4, -965
                  bltu         s0, s10, 857f
                  xor          t3, a3, t1
                  bge          a4, s7, 854f
                  or           s3, t4, t5
                  beq          t6, a0, 854f
                  xor          zero, ra, s4
                  slti         a7, a7, -1982
853:              sltu         a0, a3, zero
854:              nop
                  xor          a7, t2, t6
                  bge          s10, s11, 858f
857:              or           a0, t5, t5
858:              slli         a1, a2, 15
                  slt          a2, s2, tp
                  sltiu        s0, t2, -1216
                  bgeu         s11, s7, 879f
                  blt          s11, a2, 882f
                  sll          s10, zero, a3
                  srai         t3, s1, 0
                  addi         a2, t5, 205
                  beq          tp, t1, 885f
                  slli         s4, a1, 6
                  blt          s10, s6, 873f
                  sll          t2, a1, sp
                  and          t5, s4, s6
                  auipc        s0, 30896
                  nop
873:              sra          s3, t0, t1
                  srl          s5, tp, s4
                  sltu         t1, s10, sp
                  lui          s4, 539494
                  addi         a0, s3, 1998
                  sltiu        t0, t5, -1966
879:              ori          a3, s5, -878
                  bne          a3, s9, 899f
                  lui          a2, 542859
882:              slti         s6, s10, 191
                  sub          a6, a3, a6
                  bne          s2, s6, 889f
885:              slli         s4, a7, 9
                  slli         t6, s5, 3
                  sub          t0, t3, t1
                  auipc        s2, 178236
889:              or           s0, s0, a4
                  srai         ra, s9, 14
                  xor          s5, a0, s9
                  beq          a0, s11, 903f
                  beq          a2, s2, 896f
                  srli         s2, a7, 8
                  slti         a4, a1, 1585
896:              bgeu         s2, zero, 907f
                  slt          t6, s1, s2
                  xor          t1, s6, s8
899:              slti         tp, zero, 736
                  sll          t4, t0, s9
                  blt          t3, t1, 906f
                  bge          t0, s9, 921f
903:              slt          a4, zero, a2
                  slti         s4, a2, 1977
                  xori         s2, a0, 1991
906:              add          a2, t6, a1
907:              or           s0, a1, s11
                  slli         s4, s9, 26
                  bgeu         a6, t4, 925f
                  blt          s7, s5, 919f
                  srl          s6, s6, a2
                  srai         a6, sp, 2
                  auipc        t6, 27644
                  srli         s6, a3, 21
                  sra          a7, s10, t1
                  sub          a4, s6, a6
                  andi         t2, s3, -612
                  xor          zero, s7, s11
919:              srai         s7, a1, 11
                  slli         tp, a3, 14
921:              slt          a0, s6, s2
                  xori         a2, s2, -99
                  lui          s4, 770580
                  lui          a1, 937154
925:              sltiu        s11, s4, -254
                  slli         zero, tp, 24
                  sll          t5, a1, t2
                  srai         a1, tp, 31
                  lui          s11, 452979
                  nop
                  sltu         a3, s8, t4
                  slli         s11, sp, 5
                  lui          s2, 933845
                  and          t4, t4, a3
                  slti         t4, t5, 780
                  lui          a3, 668256
                  srli         a3, s4, 12
                  srai         t5, s7, 23
                  andi         gp, a3, -1660
                  sub          t4, t2, t5
                  xor          ra, t5, a2
                  add          a6, s2, t4
                  srai         s0, t0, 31
                  slt          t1, s10, a0
                  slt          a3, t1, t5
                  beq          s4, t0, 948f
                  andi         s11, ra, 1647
948:              bgeu         s8, a4, 954f
                  sltiu        t3, s8, -1958
                  nop
                  or           a1, a0, s4
                  srai         s5, t4, 26
                  sll          zero, a2, a2
954:              addi         s8, sp, -1812
                  add          s5, a7, s10
                  bne          sp, s11, 967f
                  bltu         a7, s9, 967f
                  and          a6, t6, a7
                  bgeu         s4, s9, 973f
                  bge          a2, s8, 962f
                  add          a7, a3, tp
962:              and          s10, t6, zero
                  bge          gp, s2, 966f
                  slti         t3, t1, 981
                  sltiu        t4, t1, 637
966:              bne          s3, t1, 978f
967:              sltiu        s11, ra, 230
                  sltiu        s6, s1, -1594
                  andi         t4, a2, -662
                  slli         a2, gp, 31
                  sll          t1, tp, t1
                  sub          s2, t4, t5
973:              blt          s11, t4, 993f
                  auipc        s8, 909800
                  beq          t4, s9, 980f
                  sub          s4, t0, t6
                  bltu         a1, t6, 988f
978:              addi         s4, a1, -955
                  sltu         t5, tp, s7
980:              xori         a2, a5, -131
                  andi         a2, tp, -392
                  bgeu         a2, a1, 984f
                  bgeu         s9, t3, 986f
984:              addi         s4, a5, 887
                  srl          ra, s7, s4
986:              and          a6, a0, s9
                  xori         t3, s7, 1886
988:              bltu         tp, gp, 1006f
                  srai         s7, t2, 27
                  xor          a3, s7, t5
                  lui          t0, 339030
                  slti         t0, t0, -1611
993:              beq          s7, s10, 1009f
                  bgeu         s0, s5, 1013f
                  srai         t1, t4, 0
                  addi         a3, sp, 948
                  sra          s5, a4, a7
                  blt          s9, s6, 1009f
                  bgeu         s11, s0, 1006f
                  add          t0, s4, tp
                  bne          s9, t5, 1020f
                  bge          t0, a3, 1022f
                  beq          a4, sp, 1008f
                  xor          s6, s5, a5
                  bltu         s9, a1, 1009f
1006:             or           t5, s5, t2
                  and          t4, a3, s11
1008:             xor          s8, t4, t2
1009:             ori          s1, tp, 642
                  slt          zero, a4, s1
                  xori         a4, s7, 1898
                  srli         s8, s9, 11
1013:             blt          a4, s6, 1024f
                  bge          s11, s0, 1029f
                  addi         ra, s8, -52
                  bltu         s6, a4, 1021f
                  bltu         a2, s0, 1023f
                  nop
                  add          a1, s6, s8
1020:             srl          s8, t3, zero
1021:             slti         ra, t6, -1689
1022:             srli         s0, a4, 18
1023:             sub          s2, a5, a3
1024:             srai         a1, s9, 1
                  srli         t3, a7, 15
                  and          tp, a2, a6
                  and          t5, a3, s2
                  slt          t4, s9, tp
1029:             xori         s0, s2, 183
                  sll          t5, t2, s11
                  bgeu         s7, a7, 1041f
                  slt          s11, s0, gp
                  srli         t3, s5, 28
                  slti         a0, t4, -326
                  sltiu        ra, a4, 1744
                  slt          t4, s7, s8
                  sub          s3, zero, s6
                  sll          t4, s4, t6
                  auipc        t0, 711049
                  or           s3, s1, s2
1041:             sltiu        t1, t3, -2019
                  bgeu         s6, a4, 1048f
                  beq          s1, t1, 1063f
                  srai         a6, t2, 30
                  or           s4, a3, s9
                  auipc        t4, 386221
                  sub          t2, s8, s3
1048:             auipc        a4, 499780
                  addi         s8, sp, 794
                  sll          zero, sp, s0
                  slt          t2, s2, a3
                  sltu         s11, a7, s9
                  xori         s5, ra, -608
                  srl          t6, s2, t0
                  add          t5, s8, s5
                  slti         t3, a7, -810
                  andi         a7, s7, 659
                  sll          a7, a7, t0
                  sltiu        s0, s3, 2014
                  srl          a4, t4, s7
                  auipc        tp, 107405
                  bltu         s2, s0, 1067f
1063:             beq          s11, zero, 1072f
                  addi         s8, a4, -1504
                  bgeu         a2, t1, 1084f
                  bltu         a4, s8, 1068f
1067:             bltu         s11, s1, 1082f
1068:             sltiu        t5, t3, 1702
                  srai         t6, s2, 20
                  srl          a0, s6, t5
                  add          t2, s4, a2
1072:             srli         a0, s5, 14
                  addi         s8, t3, -301
                  srli         a1, s9, 10
                  slli         tp, a5, 10
                  xor          a6, a1, s1
                  addi         t4, gp, 1461
                  and          gp, s4, tp
                  sub          s11, t4, gp
                  sltu         a3, t3, s1
                  nop
1082:             srai         a7, s8, 23
                  xori         zero, a0, 20
1084:             srl          tp, a6, t0
                  sltu         tp, a3, t3
                  sra          s8, t6, tp
                  addi         s4, s11, -748
                  bgeu         zero, s11, 1100f
                  ori          ra, a3, -1647
                  lui          s6, 1010099
                  add          s7, t2, a5
                  srli         zero, a4, 11
                  xor          s6, t0, a5
                  sub          s1, tp, ra
                  xor          a0, s9, s5
                  lui          s6, 206320
                  nop
                  bge          tp, s7, 1105f
                  xori         a4, s2, 921
1100:             srli         t6, s4, 15
                  sltiu        s3, s0, 2034
                  slt          s11, t6, s5
                  slli         s10, t4, 10
                  xori         a2, t5, -1938
1105:             srai         a6, ra, 9
                  blt          s2, t1, 1124f
                  beq          s3, s6, 1127f
                  sub          s5, a2, zero
                  slt          s10, s6, ra
                  sub          s1, zero, s8
                  sra          s5, a7, a3
                  lui          s4, 110594
                  beq          tp, s10, 1124f
                  xori         t3, t2, 1969
                  bne          a1, a3, 1120f
                  srl          a4, s11, ra
                  auipc        s2, 862106
                  slt          zero, s3, s11
                  sra          ra, s4, tp
1120:             nop
                  and          s8, s0, sp
                  and          t5, sp, a1
                  andi         t4, s5, -863
1124:             or           s1, s4, s2
                  srli         t5, t2, 25
                  bge          s11, s2, 1137f
1127:             and          s10, a5, s8
                  sra          t0, s7, s4
                  nop
                  andi         s4, a1, 1070
                  addi         s8, s9, -1436
                  srl          s3, a3, t3
                  ori          t2, t1, -829
                  slti         s2, s9, -544
                  auipc        t6, 769194
                  bltu         a0, s4, 1155f
1137:             beq          a1, ra, 1148f
                  bgeu         s6, t4, 1144f
                  bltu         s8, a5, 1155f
                  srai         t5, a7, 3
                  blt          a2, t2, 1146f
                  addi         a4, s0, 146
                  blt          t4, t3, 1146f
1144:             xor          s3, s4, t1
                  beq          s1, a1, 1164f
1146:             or           s10, s4, gp
                  sll          zero, a0, a5
1148:             srli         s8, t6, 14
                  srli         gp, s8, 6
                  bne          s2, tp, 1155f
                  blt          sp, s9, 1155f
                  xori         gp, t1, -287
                  sltiu        s0, s11, 1448
                  addi         gp, a3, -274
1155:             sll          a7, s4, t5
                  addi         a1, t6, -1848
                  and          s11, a1, a2
                  bgeu         a6, s6, 1172f
                  srli         s11, a4, 24
                  srai         s10, a7, 20
                  lui          t1, 920465
                  srli         a4, a0, 3
                  bne          a6, t2, 1179f
1164:             nop
                  ori          t6, t2, -1161
                  auipc        t0, 740229
                  srl          s6, s3, s9
                  or           s1, t3, a6
                  bgeu         t1, a3, 1171f
                  add          s4, a7, s8
1171:             bge          a2, a6, 1173f
1172:             sub          s4, s8, a7
1173:             beq          s8, s4, 1176f
                  auipc        s3, 809031
                  addi         t2, gp, 170
1176:             srli         zero, s8, 19
                  bne          s6, s8, 1188f
                  slli         a6, s10, 4
1179:             and          t3, tp, s0
                  blt          a0, t2, 1191f
                  xor          s11, tp, a1
                  sltiu        s5, t1, -165
                  sra          s6, s5, s3
                  and          s1, gp, a2
                  xor          s10, s4, sp
                  sll          s2, a5, t2
                  sltiu        a2, a3, -556
1188:             bgeu         t1, tp, 1194f
                  bltu         a7, s5, 1209f
                  bne          sp, s4, 1205f
1191:             bne          t3, ra, 1194f
                  add          a7, t0, gp
                  xor          t5, s3, s0
1194:             sltu         t2, a7, t2
                  or           s2, a7, s4
                  bltu         s6, s6, 1203f
                  add          t4, a2, sp
                  srl          zero, s6, s2
                  andi         t1, tp, -2040
                  bgeu         tp, s8, 1211f
                  addi         t4, s6, -153
                  beq          t4, s3, 1212f
1203:             slli         t3, t0, 20
                  sltiu        a6, ra, -1112
1205:             slli         zero, s10, 2
                  add          s7, s10, s1
                  lui          t1, 188068
                  bge          s6, ra, 1217f
1209:             xor          t0, a6, s2
                  sltiu        gp, s0, 481
1211:             xor          t6, a6, s6
1212:             bge          tp, zero, 1232f
                  beq          a0, a0, 1217f
                  sll          s10, s4, a2
                  auipc        s10, 456178
                  add          t4, t6, t0
1217:             beq          sp, a6, 1231f
                  bgeu         tp, s2, 1221f
                  slti         s10, s11, -1976
                  and          t6, t2, sp
1221:             srli         t0, tp, 5
                  xori         s4, s10, -957
                  srl          t0, s7, s4
                  slt          s11, s4, s9
                  bne          s0, t6, 1230f
                  srai         a6, s1, 11
                  bltu         a7, a4, 1245f
                  sra          a0, t2, s5
                  sltu         t1, zero, s1
1230:             and          tp, s7, a4
1231:             srai         s1, t0, 28
1232:             bge          s10, t0, 1244f
                  sra          s4, a2, a5
                  addi         t2, ra, -1509
                  addi         t2, s10, 978
                  sub          tp, s1, s0
                  sll          t6, t4, s11
                  or           s4, tp, s3
                  beq          t6, t1, 1255f
                  srli         zero, ra, 23
                  xori         a6, a5, 1881
                  sltu         s6, s3, a3
                  srli         s11, zero, 2
1244:             bge          tp, s3, 1246f
1245:             and          a3, t2, t3
1246:             beq          zero, s7, 1251f
                  sltiu        a0, t4, -988
                  sub          a3, t0, zero
                  sltu         s1, s4, a5
                  srai         t6, s7, 15
1251:             bltu         t6, a2, 1270f
                  bgeu         s11, s10, 1271f
                  bgeu         a6, s7, 1255f
                  slt          a7, t0, t0
1255:             bltu         s9, s10, 1260f
                  sltu         a0, s2, a0
                  bge          t6, s3, 1263f
                  sll          gp, t6, s8
                  and          t6, a6, a4
1260:             bne          gp, sp, 1271f
                  bne          s6, t2, 1272f
                  srai         s4, t3, 1
1263:             auipc        s1, 484450
                  srai         zero, tp, 25
                  slt          a0, a1, s1
                  addi         a3, zero, 1195
                  srl          t1, a3, s9
                  bltu         s11, a2, 1270f
                  lui          t1, 863768
1270:             or           s0, s4, a6
1271:             sltu         t3, s3, s4
1272:             addi         a2, t5, 1274
                  andi         s1, s10, -983
                  xor          s6, s7, zero
                  and          tp, a2, a1
                  andi         a1, a4, 1028
                  or           s3, s2, a3
                  bltu         t5, t6, 1283f
                  srli         gp, a0, 24
                  auipc        zero, 78367
                  sll          a7, s6, a5
                  sub          zero, s1, a0
1283:             add          zero, s6, tp
                  auipc        s0, 702468
                  or           s6, t1, s10
                  sltu         s11, a7, a6
                  bltu         a1, s0, 1303f
                  nop
                  xori         t0, a0, -394
                  sra          s1, a3, s6
                  bltu         s4, t4, 1310f
                  add          s7, gp, a7
                  beq          s11, s11, 1298f
                  sub          a3, t4, ra
                  slti         s1, t0, 825
                  xor          t1, t2, tp
                  andi         t6, s3, 1298
1298:             and          a3, s6, t1
                  bltu         t3, a4, 1301f
                  and          a3, a7, a4
1301:             bne          s0, a0, 1304f
                  sra          s7, s9, a1
1303:             slti         s3, tp, 33
1304:             nop
                  beq          gp, a0, 1311f
                  sub          t5, s2, a1
                  beq          a4, s0, 1309f
                  sub          t3, ra, sp
1309:             bge          s7, ra, 1313f
1310:             srai         a2, tp, 10
1311:             add          t3, s7, t2
                  sltiu        s11, t2, -1524
1313:             bne          s6, gp, 1329f
                  slt          s11, t4, t4
                  bgeu         s6, a4, 1326f
                  slli         t3, a4, 9
                  sltu         t1, a0, sp
                  blt          s6, s6, 1323f
                  srai         s11, sp, 20
                  addi         t3, s7, 697
                  sub          a4, a3, tp
                  sltu         s10, a5, s1
                  la           t0, region_0+872 #start riscv_load_store_rand_instr_stream_8
                  lbu          s0, -149(t0)
                  nop
                  sb           s11, -186(t0)
                  lb           t2, 149(t0)
                  or           s5, s11, t5
                  lb           s11, -237(t0)
                  add          s10, s9, t4
                  slti         zero, t3, 778
                  xori         a7, s6, -1791
                  lb           a6, 141(t0)
                  lbu          gp, 159(t0)
                  sb           t1, -235(t0)
                  sh           tp, -70(t0)
                  lbu          t2, -25(t0)
                  xori         s7, t6, 22
                  and          s0, a5, s10
                  ori          s1, t1, 971
                  lb           a0, 115(t0)
                  lb           a3, 88(t0)
                  sb           a2, 213(t0)
                  ori          tp, t5, -1554
                  lhu          a0, -204(t0)
                  lh           s6, 98(t0)
                  lbu          s2, -51(t0)
                  andi         a0, t2, -552
                  nop
                  slti         s8, sp, -1472
                  sll          s6, a7, t6
                  sb           tp, -219(t0)
                  lbu          gp, -199(t0)
                  sh           s9, 82(t0)
                  slti         a0, t1, 1645
                  lhu          zero, 64(t0)
                  lh           a4, 112(t0)
                  lb           a7, 80(t0)
                  xor          ra, t1, s8
                  sltiu        t1, a4, 1240
                  addi         tp, a7, 1982
                  auipc        s3, 935990
                  and          t6, s2, a6
                  sb           s3, 189(t0)
                  lb           a2, -29(t0)
                  lb           a0, -220(t0) #end riscv_load_store_rand_instr_stream_8
1323:             xori         s4, sp, -2026
                  nop
                  srai         t3, a5, 19
1326:             and          s5, a3, zero
                  and          s2, s7, a5
                  nop
1329:             beq          t2, t5, 1332f
                  sub          a1, s7, s11
                  add          s10, s10, tp
1332:             srli         zero, a2, 4
                  sll          zero, s10, tp
                  ori          s6, a4, 1598
                  xori         t2, t0, -1021
                  lui          s4, 175767
                  srai         s1, tp, 31
                  addi         a4, a2, 1501
                  ori          gp, s2, 319
                  nop
                  lui          t1, 186533
                  or           a3, s9, t3
                  bgeu         t0, s3, 1362f
                  slti         t1, s10, -558
                  slt          zero, a4, t4
                  bne          a4, t0, 1365f
                  add          a7, a2, s2
                  sub          s7, s11, a6
                  srli         s1, a2, 10
                  sub          ra, a0, zero
                  srai         gp, t5, 4
                  srai         s5, tp, 21
                  bne          s2, s6, 1368f
                  sltiu        s4, s1, 571
                  lui          t0, 224291
                  sltu         t5, a6, s6
                  sra          s2, s1, s10
                  sub          zero, t3, t6
                  srl          t1, t1, s0
                  slti         s4, s8, -111
                  srai         s5, a7, 12
1362:             slli         t6, s8, 6
                  sll          a7, a3, t3
                  sltu         a1, s1, a7
1365:             sltu         t2, s10, s11
                  sll          s4, t1, tp
                  beq          gp, tp, 1376f
1368:             bge          s1, s8, 1388f
                  sltiu        t5, t4, -1492
                  srli         s7, s5, 12
                  sll          s6, s7, s5
                  and          t1, a2, s1
                  srl          gp, a4, tp
                  sltiu        ra, a6, -365
                  sltiu        s10, s9, 110
1376:             slt          a3, s5, s8
                  slli         s8, ra, 23
                  xor          t4, a7, t0
                  ori          s4, s6, -344
                  srl          a6, s5, a2
                  sra          a2, s8, t4
                  srl          a0, s5, t0
                  bgeu         t1, s8, 1394f
                  ori          a0, s3, 508
                  ori          s2, a5, -888
                  addi         s6, s11, -428
                  blt          a6, s1, 1399f
1388:             auipc        a6, 596903
                  bge          t6, t2, 1408f
                  and          a7, t0, s8
                  sltu         a4, s7, a5
                  beq          a5, tp, 1408f
                  lui          t2, 708473
1394:             ori          t0, s2, -1837
                  ori          a2, a6, 1168
                  and          t2, a3, t6
                  lui          t1, 1043702
                  sll          a7, a6, a6
1399:             bltu         a5, t4, 1413f
                  addi         s3, s3, -350
                  sltiu        a3, ra, 489
                  andi         s2, s5, -1438
                  slli         s6, s8, 11
                  slt          s4, zero, s1
                  sll          s1, a2, t4
                  xor          s10, gp, s7
                  slti         gp, t0, -1389
1408:             sra          t6, t6, t6
                  xor          a6, t0, s9
                  xori         s8, t2, 1639
                  or           t1, a1, a0
                  srl          a6, s8, a6
1413:             slli         s0, a2, 31
                  sltiu        s8, t3, -883
                  bne          t4, a3, 1417f
                  sltu         t6, t0, s0
1417:             lui          t2, 230243
                  xor          ra, sp, ra
                  lui          tp, 645963
                  slli         a6, a4, 25
                  bge          t4, tp, 1439f
                  bltu         s4, t3, 1428f
                  add          t1, t0, t1
                  bltu         s11, a1, 1429f
                  xor          gp, t4, s4
                  slt          a2, s10, a4
                  slti         a0, t5, 1329
1428:             ori          tp, a6, -1262
1429:             slt          gp, s7, s10
                  slli         s2, t0, 8
                  bltu         s10, s4, 1436f
                  sltu         t5, s6, s10
                  slli         t3, s10, 17
                  srai         s6, a3, 27
                  bgeu         gp, a3, 1446f
1436:             addi         a7, a0, -147
                  slli         s10, sp, 23
                  slt          zero, t3, s11
1439:             slti         t1, t4, 737
                  sltiu        s10, ra, -1572
                  slt          s2, s2, sp
                  sltiu        a0, t4, -907
                  xori         s7, a4, -706
                  sltiu        tp, a4, -407
                  srl          s3, zero, s9
1446:             sub          s11, a2, t3
                  srl          a2, s10, a1
                  andi         s0, a1, 709
                  auipc        t2, 82871
                  xor          s0, a3, tp
                  slti         ra, zero, 1237
                  andi         s8, a7, 1878
                  sll          a2, t1, s1
                  xori         a7, s1, 191
                  auipc        a7, 981479
                  add          tp, a7, gp
                  sll          s4, t1, sp
                  ori          t3, a2, 286
                  bltu         t1, gp, 1466f
                  srl          s5, tp, a7
                  bne          s9, ra, 1481f
                  slti         s10, t6, -1105
                  slti         s5, a5, -720
                  sra          ra, s0, t0
                  slt          s5, t5, t0
1466:             sll          s11, t0, a0
                  sll          s10, t1, t1
                  slt          s10, a4, s5
                  sltu         ra, tp, s4
                  srl          s5, a2, s2
                  auipc        s5, 934502
                  add          s8, t4, ra
                  xori         t3, sp, -1106
                  xor          s11, a4, t3
                  sra          t1, s1, t6
                  sll          s0, s11, ra
                  slti         s3, s3, -764
                  sub          t6, sp, a3
                  slli         t4, t0, 11
                  bge          s11, a5, 1490f
1481:             slli         a6, a2, 6
                  sltu         a1, t0, s4
                  bgeu         a7, a7, 1494f
                  srai         s11, a5, 20
                  slli         t6, a0, 16
                  bne          s8, s6, 1500f
                  xori         s8, s0, -1386
                  srli         s0, t6, 3
                  blt          s3, s1, 1508f
1490:             bne          ra, s8, 1506f
                  sll          a4, a3, s3
                  andi         tp, a6, -626
                  srai         t6, s0, 4
1494:             slli         t6, s4, 7
                  add          s10, t3, t6
                  slti         s1, sp, 755
                  or           a4, a1, s1
                  and          t2, a7, t3
                  lui          s8, 67617
1500:             srai         t0, s5, 2
                  sll          s8, s3, a5
                  blt          s6, a3, 1508f
                  or           a0, s11, s0
                  xori         s6, s1, 1606
                  add          a4, a6, a6
1506:             beq          t2, t6, 1508f
                  nop
1508:             sltiu        s7, t5, 1771
                  sll          t2, a7, a2
                  addi         s2, ra, 2047
                  srl          s4, s9, t5
                  lui          t3, 629626
                  la           t6, region_1+1355 #start riscv_load_store_rand_instr_stream_10
                  lb           a6, 221(t6)
                  sw           s1, 129(t6)
                  lw           a1, -119(t6)
                  slti         s2, a3, -1841
                  auipc        t4, 15033
                  lb           t1, 220(t6)
                  lbu          s6, 98(t6)
                  lbu          s11, -194(t6)
                  sh           s0, 49(t6)
                  slt          s4, s4, a1
                  auipc        a2, 298826
                  slti         t1, t2, -1748
                  sh           ra, 49(t6)
                  lh           t3, 221(t6)
                  lb           t1, 135(t6)
                  srl          a7, s4, s8
                  lb           s10, -12(t6)
                  sltiu        zero, a4, -190
                  lhu          t5, -29(t6)
                  sw           zero, -159(t6)
                  lbu          a4, 68(t6)
                  lb           t2, -138(t6)
                  srai         a1, gp, 21
                  lb           a7, -204(t6)
                  lh           a1, -53(t6)
                  lb           s1, -164(t6)
                  lhu          t2, 95(t6)
                  andi         a3, a4, 496
                  xori         a0, t4, 75
                  lb           s0, 126(t6)
                  sw           t1, 205(t6)
                  lb           s5, 178(t6)
                  lh           a6, 195(t6)
                  sb           s7, -183(t6)
                  lbu          s7, 64(t6)
                  lb           s8, -212(t6)
                  sb           a2, -198(t6)
                  srai         t5, t6, 25
                  lbu          t2, -100(t6)
                  sb           s4, -26(t6)
                  srai         s8, a5, 12
                  slti         s1, sp, 332
                  addi         ra, a6, -1097
                  lb           t2, 202(t6) #end riscv_load_store_rand_instr_stream_10
                  blt          s10, t5, 1518f
                  xor          a4, t6, t2
                  add          a0, s4, ra
                  ori          s3, tp, 1414
                  lui          s3, 312117
1518:             sub          t1, t5, a7
                  srli         zero, zero, 31
                  slli         t6, t3, 16
                  srli         t5, zero, 5
                  add          t2, tp, a1
                  xori         s11, s2, -1709
                  lui          s4, 515698
                  sub          a3, s0, a2
                  sra          a6, a2, t2
                  beq          a0, a1, 1531f
                  ori          s7, s2, -967
                  add          t6, s9, sp
                  srai         s0, s9, 0
1531:             or           t3, t5, s1
                  ori          s4, s5, -1994
                  add          a2, ra, a2
                  srl          a3, s11, a7
                  slli         t5, s4, 3
                  slti         s11, t0, 599
                  auipc        a0, 572571
                  ori          t0, s1, 1377
                  blt          s5, s2, 1544f
                  andi         t4, t5, -1949
                  or           s3, a6, s8
                  auipc        a7, 212530
                  auipc        tp, 247384
1544:             sra          a4, t1, s11
                  and          zero, s4, a7
                  bge          s2, a5, 1552f
                  auipc        zero, 315419
                  xori         a4, tp, -867
                  slti         zero, s11, 1262
                  srai         a4, s3, 20
                  slli         a4, sp, 17
1552:             slti         gp, a5, -886
                  ori          zero, s9, -248
                  blt          a6, zero, 1574f
                  srl          a0, zero, s10
                  bne          a2, a3, 1567f
                  xori         s8, s0, -1586
                  slti         tp, t5, -1161
                  blt          tp, s7, 1564f
                  nop
                  bne          a5, t2, 1573f
                  slt          tp, s4, s5
                  addi         zero, s5, 635
1564:             blt          a5, s3, 1583f
                  sub          s4, s0, a0
                  ori          a2, t4, 103
1567:             slt          t3, a6, a2
                  add          a2, a1, s6
                  bltu         a6, gp, 1572f
                  addi         a4, s7, 523
                  bne          t2, s3, 1573f
1572:             slt          t6, a6, a5
1573:             addi         s6, s10, -1341
1574:             nop
                  auipc        t2, 774462
                  sra          a7, t0, a5
                  auipc        s1, 157325
                  srl          s2, sp, s11
                  srl          s6, s5, a7
                  srai         s11, a3, 31
                  bgeu         s11, s2, 1592f
                  add          t5, sp, s0
1583:             sub          s5, s10, s3
                  add          tp, ra, s6
                  ori          t0, t0, 1729
                  xori         t1, a4, 1561
                  ori          s5, s11, -1386
                  xori         a1, ra, 520
                  lui          s4, 406448
                  slt          a0, t1, t2
                  lui          t1, 53116
1592:             and          a0, s9, s1
                  andi         a7, a2, 645
                  blt          ra, s4, 1603f
                  xori         s6, s6, -281
                  bne          s9, s9, 1611f
                  beq          a3, s4, 1616f
                  sltu         s2, t2, t1
                  add          s5, t6, s1
                  sll          s7, a0, s1
                  bltu         s1, t1, 1603f
                  xori         t2, tp, 727
1603:             xori         s8, a5, -1811
                  blt          t3, s9, 1615f
                  andi         a2, a0, 381
                  beq          a4, s8, 1609f
                  xori         s3, s8, 1347
                  and          t0, s4, s2
1609:             sltiu        s3, t4, -1106
                  srai         s5, a1, 7
1611:             and          s1, sp, a5
                  xor          s4, a3, zero
                  beq          s9, t2, 1624f
                  beq          s11, s5, 1619f
1615:             ori          s8, a6, 1709
1616:             sltiu        a7, a5, -1771
                  xori         t4, zero, 57
                  slt          tp, t6, s10
1619:             beq          s5, t0, 1635f
                  nop
                  blt          a4, a2, 1631f
                  bge          s3, a6, 1642f
                  and          a4, t1, s4
1624:             ori          s8, gp, -1441
                  bltu         t1, a0, 1632f
                  or           t4, s5, s3
                  slli         a1, s0, 7
                  srai         a3, gp, 25
                  add          a3, t3, a4
                  sltiu        s0, ra, 201
1631:             bgeu         ra, t3, 1649f
1632:             sltu         t2, t0, a2
                  srl          s1, s0, a2
                  xori         a1, s2, -1649
1635:             srai         s8, s6, 30
                  ori          s11, sp, -333
                  auipc        a3, 66133
                  xor          a1, s1, s9
                  sltiu        t2, a3, 1854
                  blt          t4, s3, 1645f
                  slli         t4, s9, 25
1642:             sra          s8, s3, s9
                  slli         gp, t5, 31
                  or           s5, s11, a5
1645:             or           a2, s1, t3
                  sll          s7, a5, ra
                  sra          ra, t4, a2
                  andi         t4, s1, 177
1649:             nop
                  slli         s1, s0, 28
                  beq          a7, s5, 1670f
                  slt          s10, sp, t1
                  bge          a7, s7, 1655f
                  add          s1, t4, s11
1655:             bne          a7, a5, 1660f
                  srli         zero, sp, 26
                  sra          s7, s2, sp
                  sra          s11, a3, a7
                  bne          a6, s0, 1670f
1660:             addi         t3, s9, 1657
                  lui          a0, 688852
                  blt          a4, a5, 1667f
                  or           s6, a0, s4
                  beq          a4, s4, 1666f
                  sltu         a2, s10, a5
1666:             lui          a6, 981745
1667:             slli         s7, t6, 27
                  lui          t0, 475263
                  slli         t4, gp, 11
1670:             auipc        a7, 311721
                  andi         a3, s2, -1866
                  xor          s11, s10, t5
                  sub          s5, s3, t0
                  and          tp, t2, t4
                  sub          s4, s2, s7
                  srli         s4, t2, 21
                  addi         s11, t3, 1928
                  srai         t5, t6, 22
                  sra          s7, t1, s11
                  beq          s3, t0, 1696f
                  sll          a1, t3, a3
                  bne          t5, s5, 1702f
                  bgeu         s9, ra, 1692f
                  or           a7, t0, t1
                  xori         s8, s5, -943
                  ori          s8, a5, -403
                  slli         a6, s4, 22
                  addi         s3, t5, 1561
                  ori          s1, s9, -579
                  bltu         s10, t5, 1695f
                  and          s7, a7, a0
1692:             auipc        a6, 981371
                  blt          ra, s10, 1703f
                  slti         t0, s7, 1774
1695:             sub          a4, s3, ra
1696:             sub          a7, t5, t5
                  srli         tp, s7, 23
                  ori          t3, a4, -913
                  beq          gp, ra, 1701f
                  bge          a1, a7, 1706f
1701:             srai         zero, a6, 22
1702:             slti         a4, s3, -385
1703:             lui          s5, 272807
                  add          t4, s1, s10
                  lui          s0, 476607
1706:             srai         t6, s0, 2
                  slti         t3, a7, 484
                  lui          a7, 246076
                  sra          a1, t6, ra
                  sub          s0, s3, s10
                  add          zero, a7, t0
                  slti         s5, a6, 1165
                  beq          a0, s1, 1728f
                  ori          s11, t2, -477
                  or           s1, ra, t4
                  sra          t3, gp, ra
                  andi         a6, a5, -1210
                  sltu         a6, t4, zero
                  andi         s2, s9, 1427
                  lui          s3, 91657
                  nop
                  lui          s1, 965745
                  bltu         a5, a3, 1726f
                  xori         a0, s9, -824
                  and          s6, s3, a1
1726:             sub          a1, tp, a3
                  bgeu         a1, a5, 1747f
1728:             bne          a4, a0, 1739f
                  sub          zero, t4, s9
                  bne          s2, a0, 1742f
                  xori         t5, a5, 1875
                  bge          s8, s2, 1751f
                  xor          t6, a0, t6
                  ori          a7, s9, 502
                  bgeu         t4, s7, 1749f
                  srl          t0, s9, t5
                  sltu         s8, ra, a7
                  srai         t1, t2, 2
1739:             slt          tp, a7, sp
                  addi         t1, a3, -1654
                  nop
1742:             sub          ra, a7, t4
                  lui          a4, 418768
                  blt          t4, a3, 1748f
                  add          t3, s11, a4
                  sltu         a4, s2, t0
1747:             srai         a4, a3, 20
1748:             slli         s1, a2, 17
1749:             bge          s5, s6, 1752f
                  nop
1751:             srli         a1, tp, 5
1752:             srli         s7, s7, 9
                  srai         a4, sp, 28
                  blt          s9, s10, 1761f
                  add          t6, s4, a5
                  or           a7, s3, sp
                  auipc        t3, 949990
                  bltu         a1, s2, 1764f
                  addi         s2, s4, -1325
                  sra          s8, s11, sp
1761:             slt          s10, t1, s5
                  beq          s2, s6, 1781f
                  addi         gp, s4, -323
1764:             slli         s2, tp, 30
                  la           s2, region_1+1971 #start riscv_load_store_rand_instr_stream_15
                  sub          s7, s1, a1
                  sll          s6, s4, t6
                  lhu          a1, -47(s2)
                  sb           s1, -10(s2)
                  nop
                  srai         s11, t2, 18
                  xor          s1, s5, s8
                  or           a4, t4, s6
                  sb           t2, -183(s2)
                  sltu         tp, t3, a3
                  srli         s6, a2, 4
                  sh           a0, -45(s2)
                  lbu          t1, 23(s2)
                  slli         s6, s0, 18
                  srl          a4, t3, s5
                  lw           s7, -67(s2)
                  sb           sp, -56(s2)
                  lb           a1, -8(s2)
                  sb           s0, -125(s2)
                  lh           s6, -13(s2)
                  slt          s5, s0, gp
                  lbu          s1, -115(s2)
                  sh           a6, -175(s2)
                  nop
                  lb           s10, 16(s2)
                  sll          t5, s9, sp
                  lb           a1, -96(s2)
                  sb           a6, -43(s2)
                  lb           s1, -182(s2)
                  lbu          s4, -164(s2)
                  slli         t3, s3, 15
                  lb           s0, -181(s2)
                  lb           tp, -164(s2)
                  lhu          tp, -131(s2)
                  sw           a5, -67(s2)
                  sh           a3, -95(s2)
                  lw           a0, -195(s2)
                  sh           s10, -251(s2)
                  lb           gp, 16(s2)
                  lbu          s11, -122(s2) #end riscv_load_store_rand_instr_stream_15
                  auipc        s1, 125910
                  srai         t3, s10, 20
                  beq          t5, s4, 1778f
                  bne          a3, a0, 1786f
                  blt          t3, a5, 1785f
                  bltu         s0, t2, 1781f
                  srl          a1, a2, s1
                  slti         t4, s6, -1586
                  slt          t3, s6, t6
                  andi         a6, a3, -1299
                  sra          s8, a5, s9
                  slli         a6, t3, 5
                  and          t5, zero, a7
1778:             bne          s2, sp, 1792f
                  addi         s3, a4, 496
                  lui          zero, 135149
1781:             sltiu        a6, zero, 747
                  bgeu         t6, a4, 1787f
                  bltu         sp, s0, 1788f
                  sll          a4, gp, s8
1785:             nop
1786:             bltu         a4, a4, 1806f
1787:             beq          ra, a0, 1793f
1788:             nop
                  xori         s3, sp, -509
                  and          a0, s10, t3
                  addi         s11, a0, 1087
1792:             addi         s6, t2, 1892
1793:             sub          s8, t0, t0
                  sub          s4, s8, s5
                  bgeu         s1, a0, 1804f
                  sra          s2, s3, s11
                  bgeu         zero, s2, 1813f
                  sra          a1, s7, s3
                  sra          ra, s5, zero
                  sub          s10, zero, zero
                  xor          t1, s0, s11
                  srl          s4, t2, a6
                  blt          s1, t3, 1810f
1804:             sub          t3, t2, s3
                  nop
1806:             add          s11, s2, t3
                  srai         a2, s7, 20
                  nop
                  bge          s9, s0, 1828f
1810:             slti         s3, t1, -938
                  srl          a4, s11, a6
                  sll          s1, ra, t5
1813:             ori          t2, s6, 314
                  and          s1, a5, t3
                  nop
                  bltu         a5, t1, 1822f
                  lui          t6, 433596
                  srai         t4, a0, 31
                  sltu         tp, s9, s2
                  nop
                  slli         gp, t5, 3
1822:             sra          a1, s11, s7
                  beq          s8, zero, 1827f
                  ori          s3, t4, 854
                  slli         ra, a2, 1
                  srli         a4, s5, 18
1827:             or           a3, t2, s11
1828:             bne          a0, ra, 1830f
                  addi         a2, t1, -1864
1830:             sll          s2, s9, t0
                  and          t0, s2, a0
                  nop
                  srl          a1, a3, t5
                  srli         s6, s1, 13
                  sll          a4, a1, a5
                  beq          a1, s10, 1847f
                  and          s4, s11, t1
                  blt          t2, s1, 1850f
                  sltu         s7, t4, s11
                  xori         t0, s11, 38
                  beq          t3, ra, 1861f
                  sltiu        s10, a3, 1415
                  xori         t0, t5, 22
                  sub          s2, a4, a5
                  lui          a4, 996167
                  srai         s2, s6, 12
1847:             blt          a6, s9, 1863f
                  or           s6, ra, s11
                  slti         a6, s3, -1863
1850:             bgeu         t2, s1, 1853f
                  bgeu         s1, a7, 1866f
                  sltiu        s5, a1, 1027
1853:             bne          s11, s6, 1855f
                  sll          s4, a5, s10
1855:             auipc        zero, 973029
                  sra          s4, t6, s5
                  add          s6, t3, a0
                  bgeu         s3, a0, 1877f
                  slt          a7, s7, s3
                  bge          s1, a4, 1865f
1861:             blt          a7, a2, 1872f
                  addi         a3, s4, -871
1863:             sll          s1, ra, t0
                  slli         t0, s9, 3
1865:             bne          a1, s1, 1883f
1866:             beq          t6, t1, 1877f
                  lui          t3, 267666
                  nop
                  and          s6, s6, s4
                  bgeu         s0, a4, 1881f
                  slt          a7, s3, s2
1872:             sltu         t4, s4, a7
                  lui          t1, 272717
                  srai         a2, a4, 2
                  bgeu         s10, s3, 1894f
                  slti         s3, gp, -1759
1877:             slti         zero, t0, 285
                  sltiu        s3, s3, -2001
                  ori          s5, s8, 1616
                  xor          t6, s3, s11
1881:             andi         s8, a0, -1408
                  slt          t6, tp, s6
1883:             sll          ra, t1, ra
                  sub          s11, a1, a2
                  nop
                  and          s10, s8, gp
                  srl          a4, s10, s6
                  bgeu         s11, t3, 1898f
                  or           gp, s11, tp
                  sll          gp, a1, sp
                  blt          s3, ra, 1893f
                  sra          a7, t5, zero
1893:             srl          t4, a6, ra
1894:             and          gp, t4, s11
                  xor          a6, t5, s8
                  srl          t2, s2, t4
                  addi         t0, a6, 1266
1898:             srl          gp, a5, zero
                  lui          t6, 210788
                  bgeu         s0, s9, 1903f
                  or           t1, a2, a3
                  slli         a4, a3, 3
1903:             lui          a7, 339531
                  addi         s10, s3, -1898
                  sll          s10, t0, a1
                  slt          s3, a7, s8
                  ori          t0, s6, -1170
                  add          s4, s5, tp
                  xori         t1, s2, 124
                  andi         s8, a0, 2036
                  slti         s3, a3, 1006
                  srai         t0, a4, 10
                  slti         s3, s1, 911
                  or           t3, t4, t3
                  slti         t3, s0, -162
                  slli         t4, a4, 17
                  nop
                  sra          s3, t1, a3
                  slti         a1, s10, 665
                  sltiu        s6, s4, -1702
                  sll          tp, sp, t6
                  bne          s2, t3, 1927f
                  bltu         a0, t0, 1927f
                  sll          t3, t6, t4
                  sltiu        t5, s0, 1678
                  blt          t0, gp, 1931f
1927:             sub          zero, s10, s4
                  sll          a3, ra, s11
                  srl          t1, s8, a4
                  bge          s2, s8, 1933f
1931:             slli         s10, s1, 16
                  sra          s6, a0, s8
1933:             and          a7, a5, t5
                  srl          s1, a2, a5
                  bltu         t2, a1, 1951f
                  auipc        a1, 726411
                  andi         gp, s11, 1243
                  blt          a4, s7, 1944f
                  add          a4, s2, s3
                  sra          a3, s0, tp
                  bge          t6, a4, 1946f
                  bgeu         s10, t5, 1956f
                  sltu         s2, s7, a0
1944:             xori         s5, s9, 1237
                  sra          s5, a4, s5
1946:             xor          s3, t3, tp
                  srai         a7, s8, 28
                  addi         t5, t5, 39
                  slli         s0, sp, 29
                  blt          s11, s2, 1952f
1951:             nop
1952:             beq          t6, a3, 1968f
                  bge          s3, s10, 1956f
                  bgeu         t3, s11, 1969f
                  andi         zero, s10, 1550
1956:             slti         t2, t0, 322
                  sltu         a0, s10, a5
                  bge          a7, t6, 1963f
                  addi         s10, t1, 1891
                  srai         a0, s10, 1
                  andi         a1, gp, 440
                  xori         s4, a2, 1909
1963:             and          a2, t0, t2
                  xori         s5, s1, -400
                  sll          s8, ra, zero
                  sll          s3, a6, t0
                  addi         tp, s11, 1717
1968:             srli         s4, a7, 25
1969:             addi         s3, a1, -223
                  srai         s8, t3, 12
                  srai         s2, a1, 3
                  sltiu        t3, a0, -385
                  bgeu         t5, a7, 1993f
                  or           tp, t4, s7
                  sub          s7, s1, s5
                  slt          t5, s0, t5
                  bne          a4, s4, 1982f
                  bne          gp, sp, 1987f
                  sra          tp, t5, t2
                  bltu         s3, a3, 1986f
                  sltiu        s3, t3, -1484
1982:             sltiu        s2, a2, 2007
                  srl          s1, s3, tp
                  addi         s5, a4, -524
                  bltu         s4, s4, 1995f
1986:             bge          a6, s10, 1997f
1987:             slli         s4, a0, 27
                  andi         s2, s5, -632
                  srli         s4, a2, 13
                  slti         ra, s8, -1058
                  sltu         s11, a0, s11
                  slt          s4, s8, ra
1993:             slt          a7, t6, s9
                  srl          a4, a6, a2
1995:             bne          s10, s4, 2006f
                  sub          a1, s6, sp
1997:             add          a0, s9, t1
                  sll          t3, a4, s7
                  lui          a0, 560036
                  lui          a6, 322520
                  auipc        a1, 21767
                  sub          a0, a5, tp
                  auipc        t4, 462157
                  slti         s5, zero, 1223
                  ori          a4, s1, 1012
2006:             xor          s5, a0, tp
                  sll          a3, t3, s3
                  sltu         s1, s6, a1
                  slt          s6, a4, s1
                  sltu         a2, t0, ra
                  bgeu         t5, a3, 2030f
                  addi         t3, t0, -389
                  ori          s8, s3, 257
                  add          t5, sp, t3
                  srl          t0, t3, t5
                  sra          s5, a1, a3
                  sra          a3, s5, sp
                  bne          t0, s11, 2020f
                  and          s8, a3, s3
2020:             srai         t3, a6, 15
                  andi         t3, s1, -1122
                  ori          s11, s3, -1534
                  srli         s1, ra, 28
                  sltu         s3, a1, s9
                  srai         a1, s1, 12
                  slt          s10, s5, tp
                  add          a4, t1, a7
                  slt          a0, a1, t1
                  auipc        t5, 591939
2030:             sltiu        a6, s8, -535
                  sll          t2, a5, s9
                  srl          s7, t5, s4
                  sll          t6, s6, s4
                  sltu         t2, a7, a2
                  beq          t0, s0, 2046f
                  bge          t0, t4, 2043f
                  slli         tp, a7, 15
                  lui          ra, 152800
                  bgeu         t1, s9, 2059f
                  srli         zero, s11, 14
                  addi         a7, s9, 1241
                  sll          t5, gp, t1
2043:             slti         s4, t5, 307
                  ori          gp, s8, 400
                  and          a0, a7, a4
2046:             and          s8, s11, s4
                  and          ra, s4, a0
                  xor          gp, s5, s5
                  bltu         s1, t3, 2068f
                  or           s4, s4, ra
                  sub          t6, ra, s7
                  auipc        t6, 583112
                  sltu         s6, s10, t6
                  bgeu         a2, a6, 2066f
                  and          a7, t2, zero
                  bltu         s11, ra, 2074f
                  slti         a4, a5, 1823
                  lui          s7, 230104
2059:             sub          t4, zero, s11
                  srl          t4, s11, s9
                  srai         a4, tp, 26
                  xor          a0, t2, a3
                  ori          ra, a0, -1104
                  slli         a7, t4, 14
                  lui          t3, 589178
2066:             bgeu         s4, s1, 2085f
                  srai         t1, zero, 7
2068:             ori          s7, s11, 915
                  slti         s1, s9, 1963
                  srl          a0, s10, a7
                  andi         s11, a2, 1418
                  bltu         s3, zero, 2083f
                  bne          s0, zero, 2075f
2074:             srli         t2, s8, 5
2075:             bne          a4, a7, 2080f
                  srli         s4, a1, 16
                  beq          s4, tp, 2081f
                  sltiu        t1, s6, -433
                  and          a3, sp, s5
2080:             auipc        s10, 641804
2081:             srl          ra, t0, s10
                  sra          s10, s3, a2
2083:             slti         ra, s6, -1852
                  slt          a3, t1, s9
2085:             srl          t6, zero, a7
                  srai         t5, a7, 30
                  srli         s7, s8, 29
                  bne          t5, a5, 2102f
                  srai         s3, s0, 19
                  nop
                  sltu         t4, a1, s6
                  or           a6, t2, tp
                  sltiu        t1, t2, -522
                  nop
                  add          a7, tp, s8
                  xor          t1, s2, s11
                  auipc        a4, 317472
                  srl          s7, zero, t4
                  slli         t6, tp, 9
                  bltu         s9, s9, 2105f
                  sub          t3, zero, s0
2102:             sub          t0, a7, s5
                  bge          s10, s11, 2110f
                  or           t5, a3, s2
2105:             bgeu         gp, t0, 2116f
                  bgeu         s11, s9, 2122f
                  andi         s2, t2, 809
                  srai         t0, s11, 8
                  srl          t5, s3, a3
2110:             xor          t4, a6, a0
                  xori         a1, s11, 1288
                  addi         s1, tp, -1371
                  andi         ra, t2, -99
                  nop
                  beq          s2, t0, 2131f
2116:             ori          s8, a6, -1775
                  srl          s11, t0, t6
                  and          t1, s9, s11
                  blt          t5, s3, 2121f
                  and          zero, t6, s5
2121:             auipc        a7, 645760
2122:             add          a2, s5, s5
                  auipc        tp, 800791
                  bltu         a3, t3, 2129f
                  srai         gp, gp, 11
                  bge          s7, a5, 2145f
                  andi         ra, ra, 1558
                  bne          t3, s0, 2148f
2129:             auipc        s0, 1039266
                  and          s1, a7, gp
2131:             auipc        s5, 559015
                  bne          s4, a6, 2143f
                  sub          tp, ra, a6
                  sra          a3, t3, s7
                  and          s7, s3, s4
                  sub          gp, s9, t5
                  auipc        s3, 47908
                  sltiu        t5, a6, -1237
                  srli         t4, a3, 6
                  ori          s10, a7, -1280
                  blt          sp, s3, 2152f
                  or           a1, s11, s6
2143:             sub          tp, a7, gp
                  sltu         t6, a4, s4
2145:             add          t3, a3, a2
                  slt          s8, s2, t2
                  blt          t5, s0, 2159f
2148:             xor          tp, t4, gp
                  blt          t2, sp, 2159f
                  slti         t4, a4, 1637
                  lui          a6, 783808
2152:             sll          s2, s0, a1
                  bne          s11, s2, 2158f
                  or           s10, a6, s7
                  blt          a6, a5, 2173f
                  and          s11, t3, s10
                  bltu         t2, a5, 2168f
2158:             nop
2159:             sltiu        a3, s11, -837
                  srai         s6, s8, 24
                  blt          a3, t6, 2181f
                  srli         s7, a1, 30
                  slti         s8, a7, -472
                  sra          s5, s5, gp
                  slli         a4, s11, 15
                  xori         t3, s10, -1955
                  and          gp, a5, a3
2168:             srl          s4, t1, s0
                  xor          t4, s4, a2
                  ori          s3, a6, -1785
                  sltu         s0, t4, s11
                  addi         s10, a3, -512
2173:             xori         s4, t5, -959
                  slli         ra, t2, 4
                  bgeu         t2, a6, 2184f
                  slt          ra, t6, s7
                  slt          t5, s8, a2
                  bne          t2, s4, 2181f
                  sra          a2, t2, s2
                  and          s11, t4, t3
2181:             auipc        a4, 866945
                  bgeu         zero, a2, 2201f
                  srl          s0, gp, s5
2184:             xori         s6, a6, 297
                  bne          a7, a1, 2191f
                  sltiu        t5, a1, -395
                  bgeu         t5, a7, 2206f
                  addi         t4, a2, 728
                  auipc        t3, 546484
                  lui          s11, 12561
2191:             slt          s2, a4, t3
                  bne          gp, s11, 2198f
                  sub          s3, a6, a5
                  sra          a7, a5, sp
                  slt          t1, sp, a0
                  blt          a2, ra, 2198f
                  and          s2, s3, a3
2198:             auipc        s4, 746045
                  xori         t3, t1, -35
                  sltu         a3, ra, t3
2201:             sll          a1, ra, t2
                  bgeu         t1, a1, 2217f
                  sll          zero, a4, s1
                  and          gp, ra, a0
                  xori         a4, tp, -1449
2206:             slt          s1, t2, ra
                  slti         t4, s10, -655
                  srai         t3, sp, 13
                  srai         t0, s11, 6
                  ori          s8, a4, 1576
                  nop
                  bltu         gp, s5, 2214f
                  andi         t1, t5, -1799
2214:             auipc        tp, 507186
                  add          zero, s2, a7
                  bne          s6, zero, 2219f
2217:             and          t2, gp, s4
                  slt          a6, a1, a2
2219:             bne          s1, t3, 2224f
                  xori         s2, t4, -1248
                  sltu         s5, t6, t2
                  sltiu        ra, t0, -1794
                  srli         s7, s8, 28
2224:             sltiu        t3, s10, -1931
                  bltu         s8, s4, 2239f
                  beq          s0, s7, 2228f
                  srl          s8, zero, t1
2228:             sltu         t4, a6, s1
                  addi         a1, sp, 519
                  sra          a6, s0, a5
                  sltu         t6, a0, a2
                  slt          gp, s6, t4
                  slli         t6, s10, 26
                  blt          t0, s5, 2250f
                  srai         t4, a3, 4
                  xor          s10, a6, s10
                  srli         tp, t1, 22
                  sra          s1, a0, s8
2239:             auipc        a2, 351665
                  add          s10, s5, ra
                  sll          t3, ra, s7
                  sra          a3, a3, t0
                  ori          s7, a0, -943
                  xor          t2, a3, t0
                  xori         t6, t6, 1206
                  or           s4, s6, s11
                  or           s0, t3, a5
                  sltu         a3, s6, s5
                  addi         s5, a2, 1506
2250:             srl          s0, s6, a6
                  bgeu         t0, a3, 2261f
                  addi         t6, zero, 1902
                  bgeu         tp, a5, 2255f
                  slti         a3, s3, -1874
2255:             lui          s8, 932577
                  sll          gp, t6, a3
                  and          s1, t4, s6
                  sll          s10, tp, s5
                  srai         s4, s2, 17
                  bltu         s9, sp, 2276f
2261:             nop
                  blt          tp, s7, 2273f
                  lui          s11, 25055
                  add          s2, t6, a1
                  xor          a4, a4, a1
                  sra          s4, t6, a5
                  sltiu        s3, s9, -705
                  sub          a1, t5, s4
                  lui          a2, 198866
                  sub          a6, a0, s3
                  bge          s6, a4, 2291f
                  bne          a5, s4, 2290f
2273:             bltu         ra, a4, 2280f
                  slli         s11, t4, 18
                  srli         a4, s6, 18
2276:             sltu         t4, s7, a6
                  blt          a6, s11, 2286f
                  srai         s5, s7, 26
                  xor          s6, t0, s11
2280:             sltu         t1, a7, s4
                  bgeu         zero, s4, 2292f
                  addi         a1, a1, 1795
                  sll          s11, t4, s10
                  sltu         a7, a7, t5
                  andi         s6, ra, 475
2286:             sub          s8, s3, s0
                  sra          s2, a5, s11
                  sltiu        s0, a2, -490
                  lui          s2, 815908
2290:             add          s0, s0, tp
2291:             nop
2292:             srai         s6, tp, 24
                  srai         s7, t0, 30
                  sltu         s6, gp, a7
                  sltiu        a6, t4, 790
                  or           tp, s8, s4
                  or           a2, a3, sp
                  blt          s9, s8, 2317f
                  beq          a6, s10, 2302f
                  andi         s2, s3, 914
                  and          s8, s9, t6
2302:             srli         t6, s0, 17
                  add          s2, s11, a0
                  nop
                  srl          a2, s0, a2
                  bge          sp, s11, 2311f
                  bge          a4, s8, 2312f
                  lui          a3, 631890
                  and          s0, a0, s11
                  or           s7, ra, a3
2311:             lui          s10, 657441
2312:             bge          a1, s5, 2327f
                  bgeu         s0, t0, 2316f
                  srai         ra, s6, 7
                  slli         t5, a1, 8
2316:             addi         t6, s1, -585
2317:             ori          a0, s2, 1324
                  or           t3, sp, s1
                  beq          a6, s5, 2330f
                  addi         gp, s1, 1957
                  or           ra, t3, t4
                  addi         t3, t3, 166
                  addi         a6, a4, -1673
                  xori         t5, a2, 1968
                  sra          s6, a4, s1
                  sra          a7, t5, ra
2327:             srai         a1, zero, 11
                  auipc        s5, 316480
                  andi         s11, a4, 1128
2330:             sltu         s0, s0, s9
                  or           t2, s9, a1
                  add          tp, t6, s4
                  bltu         a7, a2, 2335f
                  lui          t3, 161768
2335:             slti         s6, s10, 990
                  xori         a0, a7, -1733
                  lui          s2, 986370
                  xor          a1, s11, t6
                  lui          t6, 171752
                  xor          ra, s7, a4
                  sra          s10, s4, tp
                  sll          t4, a6, a5
                  sub          s2, s5, a4
                  sll          a1, a0, a0
                  sra          t0, s6, a1
                  xor          t0, a5, sp
                  auipc        s7, 539053
                  bgeu         s7, a6, 2367f
                  auipc        a6, 731719
                  auipc        a1, 602218
                  bge          tp, a1, 2357f
                  lui          a1, 845093
                  blt          t0, s7, 2364f
                  sltiu        t4, a4, -1113
                  xor          s8, ra, s2
                  sltiu        s8, s11, 1296
2357:             lui          ra, 55807
                  sra          t0, sp, sp
                  bgeu         s7, s2, 2363f
                  sra          a6, t0, t6
                  nop
                  sll          a3, s7, sp
2363:             auipc        t2, 725341
2364:             sltiu        s4, s9, 1733
                  xori         a1, a0, 125
                  slti         ra, t2, 1132
2367:             srai         a4, a6, 30
                  sra          t0, s8, ra
                  bgeu         t3, a0, 2381f
                  srl          t3, s11, tp
                  andi         a3, t3, 1415
                  sll          s5, s4, t0
                  and          s0, s4, zero
                  xor          s3, a4, a7
                  andi         t3, s8, 851
                  sll          tp, s6, t0
                  and          t4, t2, a0
                  srl          t0, s7, a5
                  srai         a3, s1, 24
                  andi         s2, s5, -1927
2381:             bltu         s5, s4, 2386f
                  and          s6, a6, t0
                  bge          a4, s0, 2387f
                  or           gp, s3, a0
                  sltiu        ra, s5, 234
2386:             andi         t5, sp, -256
2387:             sra          a3, t4, gp
                  lw           t6, 4(s9)
                  ori          t0, t4, -722
                  slli         gp, s11, 3
                  xor          s4, s7, t1
                  lui          s4, 686561
                  addi         s9, s9, 36
                  sll          s8, s6, s1
                  nop
                  srl          t4, a1, tp
3234:             addi x7, x31, 0
3234:             jalr x7, x7, 0
sub_1:            sltiu        t4, a6, 410
                  and          zero, t4, zero
                  beq          a2, s11, sub_1_stack_p
sub_1_stack_p:    addi         s9, s9, -64
                  addi         s10, s4, -253
                  sw           t6, 4(s9)
                  srl          a3, s8, s1
                  nop
                  slli         gp, a3, 11
                  sra          s0, t5, t6
                  bgeu         s6, s10, sub_1_j4 #branch to jump instr
                  andi         s11, gp, 341
                  andi         a3, a7, -531
                  slli         t6, t1, 28
                  and          t2, a6, a6
                  auipc        a1, 415480
                  sub          s6, a7, a2
sub_1_j4:         jal          t6, sub_2 #jump sub_1 -> sub_2
                  la           gp, region_1+1819 #start riscv_load_store_rand_instr_stream_0
                  sb           sp, -145(gp)
                  lbu          t4, -148(gp)
                  ori          t4, t5, 860
                  sh           s11, -167(gp)
                  xori         a0, a4, 234
                  lbu          s4, -199(gp)
                  lb           t5, -183(gp)
                  xor          s8, ra, a1
                  lhu          s8, -125(gp)
                  sb           s9, -244(gp)
                  nop
                  slti         s11, zero, -108
                  xori         s5, s0, 826
                  lb           s5, -164(gp)
                  lbu          tp, -26(gp)
                  sb           a0, 138(gp)
                  addi         a3, a3, -1735
                  lbu          t6, -193(gp)
                  lb           s4, -71(gp)
                  ori          t0, t1, 701
                  sh           a5, -129(gp)
                  lb           s11, -194(gp)
                  lhu          s4, 59(gp)
                  and          s1, gp, a3
                  lb           t5, 110(gp)
                  ori          a7, t2, -1422
                  slti         s6, s7, -1372
                  sh           s2, -135(gp)
                  lb           t1, 56(gp)
                  andi         a2, a6, 440
                  sh           t1, -231(gp)
                  sb           s4, 54(gp)
                  and          ra, t6, t5
                  lb           t2, -26(gp)
                  addi         t3, s5, -629
                  slt          a6, gp, a7
                  srl          a2, s1, a6
                  andi         s0, s5, 117
                  lb           t1, -236(gp)
                  srai         t1, a5, 25
                  sh           s4, -15(gp)
                  lbu          a4, -188(gp)
                  slt          a4, sp, s3
                  addi         a3, zero, -1996
                  lb           t0, -244(gp)
                  lb           ra, 160(gp)
                  lh           ra, 121(gp)
                  lh           a1, 163(gp)
                  sb           t2, 160(gp) #end riscv_load_store_rand_instr_stream_0
                  la           t5, region_0+1380 #start riscv_load_store_rand_instr_stream_1
                  sltu         t4, t0, s0
                  lb           tp, 26(t5)
                  sltu         s0, s10, s4
                  and          t0, s1, a2
                  lb           t1, -50(t5)
                  srl          a6, a1, a3
                  and          s5, s8, ra
                  srl          gp, s1, s10
                  lbu          s1, 56(t5)
                  srli         a4, a3, 29
                  sub          s2, t1, t0
                  xor          a7, s5, a3
                  slti         a3, t2, -575
                  sltu         t0, t3, s9
                  or           a1, t1, a1
                  sra          a4, a3, t6
                  sub          s5, a2, gp
                  lui          a7, 119185
                  lb           s4, 10(t5)
                  lw           ra, 0(t5)
                  lbu          t4, 22(t5)
                  lh           s11, -24(t5)
                  srl          tp, s10, zero
                  lbu          t3, -64(t5)
                  sll          s5, a3, a1
                  lbu          s8, 42(t5)
                  lbu          s7, 22(t5)
                  sra          s7, s9, ra
                  lbu          ra, -36(t5)
                  and          s5, t0, s6
                  slti         s1, a7, -246
                  and          t4, s9, s10
                  sltiu        s6, t2, 775
                  or           s2, a2, t1
                  andi         a0, gp, -423
                  sb           t4, -4(t5)
                  sb           t2, -8(t5)
                  sll          s7, s11, t0
                  slt          s4, t5, gp
                  addi         a2, t0, 959
                  lb           a2, -45(t5)
                  and          a4, t1, a1
                  slli         a4, ra, 2
                  sll          a1, ra, sp
                  lh           a1, 2(t5) #end riscv_load_store_rand_instr_stream_1
                  la           a4, region_1+388 #start riscv_load_store_rand_instr_stream_2
                  sw           ra, 60(a4)
                  lbu          gp, 3(a4)
                  sw           t0, 44(a4)
                  auipc        a0, 364783
                  sltiu        a6, ra, -1938
                  lh           s3, 6(a4)
                  lb           s11, -61(a4)
                  sh           s5, -60(a4)
                  slt          s6, gp, s3
                  lh           a7, -22(a4)
                  lbu          t5, -17(a4)
                  sb           s1, -3(a4)
                  lbu          a7, 52(a4)
                  srai         t3, a5, 24
                  addi         t2, a4, -1970
                  sub          s10, s11, s9
                  and          a0, a4, a2
                  lb           zero, 45(a4)
                  lbu          t4, -59(a4)
                  andi         s4, s8, -1495
                  lh           zero, 18(a4)
                  sb           s2, 47(a4)
                  lb           t6, -44(a4)
                  sb           a5, -42(a4)
                  lb           zero, -51(a4)
                  sw           s1, -52(a4)
                  sh           ra, 26(a4)
                  lh           s0, -28(a4)
                  lhu          s8, -22(a4)
                  lb           tp, -9(a4)
                  lui          s4, 264210
                  lb           s8, 49(a4)
                  sh           ra, -58(a4)
                  slt          s7, t4, a6
                  lh           a1, 62(a4)
                  sra          a3, t3, a6
                  sw           zero, -20(a4)
                  sb           s9, -57(a4)
                  lb           s7, -44(a4) #end riscv_load_store_rand_instr_stream_2
                  ori          ra, a1, 862
                  andi         s7, a0, -961
                  sub          a1, s9, t6
                  xori         s8, a0, -1180
                  sub          a7, a7, t1
                  sub          t1, t3, t3
                  andi         tp, a7, 346
                  bgeu         tp, s4, 17f
                  sub          t3, t6, sp
                  bgeu         ra, a7, 14f
                  sltiu        gp, s10, 944
                  srl          a4, t6, a5
                  ori          t1, s3, -480
                  andi         s2, t0, -1809
14:               slti         t0, a0, -1957
                  srli         s1, s0, 12
                  or           s0, s7, t4
17:               andi         t3, sp, -433
                  sub          s4, gp, t4
                  sltiu        a1, tp, 1422
                  auipc        t1, 219805
                  ori          s11, t1, -1774
                  addi         s3, t1, -989
                  blt          s10, t0, 25f
                  sra          s5, t6, t1
25:               sltiu        s0, gp, 1513
                  bltu         t6, ra, 44f
                  bne          t4, s1, 29f
                  beq          a2, gp, 36f
29:               bltu         t0, s3, 44f
                  slt          tp, a5, s1
                  or           t0, s8, a3
                  addi         s4, s4, -99
                  bgeu         a5, a6, 34f
34:               sltu         ra, sp, a1
                  bgeu         s6, tp, 36f
36:               andi         t2, a6, 795
                  sra          s5, s3, gp
                  auipc        t5, 780358
                  xor          s4, sp, t3
                  nop
                  beq          ra, t5, 57f
                  auipc        t3, 595751
                  sll          tp, t1, s7
44:               slti         s10, a6, 78
                  bne          s8, s2, 60f
                  nop
                  andi         s11, s10, -447
                  add          a7, a6, a5
                  addi         s6, s4, 979
                  nop
                  sra          a2, t1, t2
                  auipc        tp, 540519
                  bltu         a1, t1, 66f
                  sra          gp, t4, a6
                  sra          s6, gp, t0
                  bge          s2, s9, 64f
57:               or           a3, s6, a2
                  and          s1, s11, t0
                  nop
60:               addi         a7, s4, -1688
                  sll          s5, a3, s9
                  bne          a7, ra, 76f
                  srl          t0, tp, a7
64:               slli         s1, t4, 7
                  srai         s7, s2, 28
66:               sll          s11, t5, a6
                  slli         gp, t5, 30
                  nop
                  andi         t6, t6, 1044
                  beq          a7, s9, 76f
                  and          s4, s11, s10
                  slt          a1, sp, s0
                  sltu         t0, s10, s4
                  sll          t5, a4, s8
                  srl          s8, s5, s2
76:               beq          t1, s6, 82f
                  slli         t3, t6, 31
                  andi         s8, s1, -1281
                  ori          a0, sp, 615
                  srai         ra, s6, 23
                  bge          s3, a6, 90f
82:               nop
                  add          t0, a2, sp
                  nop
                  sltiu        t6, ra, 772
                  nop
                  slli         s5, s1, 23
                  andi         s1, a1, -252
                  sra          tp, a1, s3
90:               sll          s2, gp, a7
                  addi         s2, zero, 549
                  andi         tp, a4, -425
                  beq          sp, s11, 99f
                  ori          s7, s7, 803
                  andi         a7, a7, -167
                  add          t6, s8, s0
                  bltu         s9, t6, 108f
                  andi         s2, ra, 1046
99:               sra          t6, a0, s4
                  andi         a4, a0, -1916
                  bge          s1, zero, 113f
                  srai         t1, s11, 4
                  nop
                  and          a6, s1, a7
                  lui          a7, 359321
                  sra          zero, s6, t3
                  sub          t3, t1, sp
108:              lui          a3, 430685
                  and          a2, a3, s5
                  xori         ra, s6, -10
                  srai         s5, zero, 7
                  blt          a1, a2, 116f
113:              add          a3, s1, ra
                  srli         a6, s10, 18
                  srl          a2, a2, s1
116:              bgeu         t5, t5, 122f
                  nop
                  sub          s2, s10, tp
                  srli         s11, ra, 1
                  slti         t5, s5, 1166
                  blt          a6, zero, 126f
122:              lui          s7, 50374
                  sltu         a1, s2, t3
                  sra          s6, s9, gp
                  beq          t3, s9, 145f
126:              sll          a3, s1, tp
                  slt          t2, s7, a0
                  bgeu         a7, tp, 138f
                  bne          s8, t4, 136f
                  add          a7, t4, s10
                  ori          s11, s0, 1849
                  ori          a7, a2, -1339
                  nop
                  srli         s0, t4, 19
                  xori         s3, a7, 46
136:              or           s10, a4, t5
                  bltu         s6, ra, 154f
138:              andi         t4, sp, 559
                  bltu         a5, t6, 142f
                  srl          t1, t4, sp
                  blt          s6, a3, 154f
142:              xor          s4, t0, s2
                  sltiu        ra, t6, -330
                  beq          t5, a0, 158f
145:              slt          a6, s5, s9
                  slti         zero, s0, -149
                  sltu         a7, a7, a7
                  bne          a6, ra, 157f
                  or           a0, sp, s11
                  ori          tp, s11, 636
                  beq          a5, s8, 168f
                  and          gp, a3, a1
                  andi         t3, s7, -1236
154:              bgeu         a5, a5, 160f
                  andi         t2, a6, -478
                  and          gp, a3, s1
157:              sra          s8, s8, t0
158:              xori         ra, t5, -682
                  auipc        ra, 655229
160:              sra          zero, t5, t3
                  slti         zero, t5, 1123
                  sltiu        t2, ra, 1990
                  srl          a2, a1, s7
                  sub          a3, t1, a1
                  blt          t3, t2, 175f
                  sltu         a1, a0, s5
                  xor          s6, s11, a0
168:              nop
                  xori         t1, t6, -647
                  sra          tp, t4, t2
                  xor          s7, ra, s4
                  and          s6, a1, a6
                  addi         s6, a1, -138
                  bge          s6, s6, 179f
175:              sub          s4, s10, t3
                  bne          ra, gp, 179f
                  srai         t5, t4, 28
                  ori          s10, s9, -482
179:              slti         s3, t2, -864
                  auipc        s11, 951680
                  srli         t5, t5, 24
                  srli         s3, s10, 15
                  sub          t6, a2, s2
                  nop
                  or           a1, s3, t6
                  bgeu         a1, s5, 190f
                  bge          t2, zero, 189f
                  sltiu        s6, a3, -1336
189:              bne          s6, a2, 209f
190:              ori          t3, a2, 1959
                  sltu         t4, t4, tp
                  addi         t3, t1, 1265
                  bgeu         s2, s0, 208f
                  xori         s11, sp, 1
                  srl          a0, gp, tp
                  and          t5, a4, t4
                  srl          s11, a3, t6
                  bge          s2, s9, 200f
                  add          a0, s4, a4
200:              add          s10, a1, s11
                  lui          s6, 280624
                  nop
                  bgeu         s1, tp, 204f
204:              blt          a4, t4, 205f
205:              nop
                  or           a7, s1, gp
                  slt          s0, a0, gp
208:              andi         s10, a2, 625
209:              sub          s0, gp, zero
                  slli         s0, s2, 2
                  bltu         t0, t4, 216f
                  andi         a7, tp, 835
                  xori         s7, ra, 1261
                  sll          s7, a0, ra
                  sub          a0, s4, a2
216:              beq          t1, zero, 226f
                  sltiu        a6, gp, 491
                  bgeu         a4, s10, 232f
                  andi         s10, s11, -720
                  srli         s3, s9, 8
                  sltu         t2, s7, t1
                  ori          a6, s4, 1052
                  srai         a1, tp, 23
                  slt          t1, s4, s10
                  bltu         gp, a0, 231f
226:              addi         zero, tp, -478
                  xor          s4, a6, sp
                  slli         s0, a1, 1
                  sll          a3, t0, s0
                  bne          t1, s9, 236f
231:              sltu         s3, gp, t6
232:              srli         t0, t2, 17
                  bge          s4, t0, 251f
                  sltu         a7, zero, s1
                  xor          s3, a2, t1
236:              slt          s1, a1, s9
                  srli         s3, a5, 29
                  slti         t1, zero, -797
                  bltu         s11, a0, 252f
                  bge          t5, s3, 246f
                  auipc        tp, 690524
                  bne          t5, s0, 249f
                  bne          s11, a1, 257f
                  slli         a1, a2, 11
                  sll          t1, s5, t0
246:              sub          s3, a4, a6
                  srl          s4, t4, t2
                  slti         a0, t3, -353
249:              sltiu        a1, s6, 1792
                  slti         a7, a7, 1750
251:              beq          a0, s2, 263f
252:              sltu         t3, a3, s10
                  add          t1, t6, s8
                  xor          s6, s5, a4
                  bge          a0, sp, 270f
                  add          a7, a2, tp
257:              sub          t0, t2, a7
                  slli         t4, zero, 10
                  sltiu        t3, a1, -18
                  addi         s8, a6, -664
                  sub          gp, tp, tp
                  beq          a4, a1, 278f
263:              slti         s4, sp, -899
                  srli         t6, s6, 20
                  ori          gp, zero, -1668
                  ori          s11, s8, -791
                  sltu         s2, s3, a2
                  sra          a3, s5, zero
                  bgeu         a1, zero, 277f
270:              auipc        a2, 403900
                  bltu         sp, a1, 284f
                  beq          s6, s5, 283f
                  bgeu         t6, a6, 281f
                  lui          a0, 301184
                  srl          s3, t0, a5
                  beq          a7, a5, 280f
277:              slti         zero, tp, -276
278:              sll          s7, t5, a1
                  sra          a7, s2, s1
280:              andi         s0, s9, -1061
281:              srl          a3, s0, s7
                  nop
283:              sll          s7, a5, a6
284:              xor          zero, tp, t6
                  sltu         t5, s3, s4
                  lui          s10, 991415
                  slli         t0, t1, 2
                  beq          t4, a6, 293f
                  bne          a0, a4, 295f
                  bgeu         s6, t2, 305f
                  srli         s6, tp, 6
                  sll          a1, s10, zero
293:              slli         zero, t0, 18
                  srli         ra, s4, 25
295:              and          s2, t1, s11
                  nop
                  slti         t5, t6, -916
                  bge          t0, tp, 300f
                  bne          s11, a4, 309f
300:              sltiu        a7, s8, -1239
                  slt          a3, s2, t4
                  nop
                  lui          t2, 441165
                  sll          s5, s1, t3
305:              and          a7, s5, s3
                  and          a7, s11, s11
                  srai         zero, gp, 30
                  sra          a3, a0, s11
                  sra          s8, tp, a0
                  nop
                  xor          s8, s5, t5
                  nop
                  ori          s3, a1, -1010
                  xori         t0, s2, 1509
                  srli         a7, gp, 0
                  slti         t5, s9, 818
sub_1_j3:         jal          t6, sub_2 #jump sub_1 -> sub_2
                  addi         s5, sp, -356
                  sltu         a4, tp, t4
309:              bltu         a3, t6, 315f
                  bgeu         t1, t4, 326f
                  srli         s2, s6, 15
                  lui          s1, 428038
                  xori         s10, gp, 1150
                  sub          s2, a2, s10
315:              addi         tp, t0, 1761
                  bgeu         s0, s1, 324f
                  srl          s5, t3, s8
                  srai         a6, t0, 22
                  lui          t0, 908450
                  bltu         a6, tp, 326f
                  addi         t5, s10, -1966
                  bltu         a5, ra, 323f
323:              bltu         gp, s6, 331f
324:              addi         s0, s10, 631
                  bltu         t6, a0, 343f
326:              sll          t5, gp, s6
                  bge          s5, s5, 338f
                  bgeu         t3, a0, 342f
                  xor          a7, s3, t4
                  sra          t0, t5, ra
331:              bgeu         s4, t1, 344f
                  slt          ra, a1, t1
                  ori          s0, a3, 743
                  blt          sp, t5, 340f
                  auipc        a1, 251530
                  bgeu         tp, s3, 350f
                  or           t4, s11, s10
338:              xor          s1, s4, zero
                  slli         s6, a3, 14
340:              srai         a0, ra, 24
                  andi         s10, s0, 247
342:              sltiu        s10, a1, 527
343:              srli         a0, s8, 9
344:              ori          s6, zero, 739
                  beq          s10, t5, 352f
                  xor          s5, s4, a6
                  srai         t2, t5, 20
                  sub          s11, t2, s5
                  srl          s6, a4, gp
350:              slti         s0, t6, -1360
                  sra          s11, s4, a0
352:              auipc        a7, 467179
                  addi         s4, s2, -534
                  sra          a1, a2, t1
                  slti         t3, a6, 230
                  srl          a3, s11, t1
                  slli         tp, sp, 31
                  slti         s3, t6, -1157
                  sra          zero, s7, tp
                  nop
                  slt          ra, s8, t4
                  srl          t6, t4, t3
                  slli         s11, s5, 6
                  add          a6, t0, s9
                  bge          s3, s9, 367f
                  sll          a4, s9, t2
367:              nop
                  sll          gp, t6, sp
                  andi         a3, t4, 1866
                  sltu         a7, s10, s1
                  nop
                  xor          a1, s1, s8
                  bgeu         sp, s10, 382f
                  slt          a2, sp, a0
                  slti         t3, a0, -1316
                  srl          s3, s8, t3
                  sub          s10, t4, ra
                  bne          t6, s11, 393f
                  srli         s5, tp, 7
                  xori         a6, s4, -1316
                  nop
382:              sub          s2, a7, t2
                  sltu         t5, t5, tp
                  blt          s6, t2, 389f
                  xor          s4, sp, ra
                  add          a6, s7, a6
                  blt          gp, ra, 390f
                  bne          s8, t0, 400f
389:              sltiu        t3, a0, 1345
390:              sub          s6, a1, a2
                  or           s3, a3, a4
                  auipc        a7, 691615
393:              nop
                  addi         s7, t6, -126
                  addi         a1, s11, 1501
                  bltu         t4, t0, 413f
                  andi         s11, a0, 131
                  sltu         t6, a7, a6
                  bge          s10, s11, 400f
400:              bgeu         sp, a4, 410f
                  sltu         a7, s3, t4
                  sll          s5, s7, a0
                  slli         s7, s0, 10
                  slti         t0, a0, 1192
                  xor          t1, s5, tp
                  bgeu         s4, s1, 426f
                  bltu         s1, s6, 420f
                  slti         s2, s11, -1781
                  bltu         tp, a0, 410f
410:              sra          gp, t3, s7
                  sltu         t5, t3, t6
                  andi         a7, t5, -317
413:              bgeu         t1, sp, 419f
                  bgeu         s9, s1, 430f
                  xori         s5, a5, -343
                  xori         a2, t0, -1698
                  sra          t5, a0, t5
                  xor          s1, a7, t1
419:              slti         t5, t3, 1529
420:              or           s6, s4, gp
                  auipc        s1, 764749
                  nop
                  add          s1, sp, a7
                  sltu         s3, s6, s10
                  and          t3, a6, t6
426:              slt          t6, a5, t1
                  sltiu        s4, a2, -290
                  add          t0, t3, a4
                  sltu         s4, a4, s10
430:              and          zero, s7, a1
                  bgeu         t1, t1, 439f
                  and          t4, s7, s4
                  sltu         ra, t1, t4
                  bltu         t3, t4, 443f
                  andi         s3, s5, 189
                  srli         ra, s2, 12
                  lui          s0, 271379
                  and          s1, zero, a7
439:              blt          s9, gp, 452f
                  sra          a2, a2, a4
                  sltu         s4, a3, s9
                  sub          t6, zero, s11
443:              srli         s5, zero, 4
                  blt          s9, s2, 457f
                  bgeu         s1, a3, 451f
                  bge          t2, a1, 452f
                  sll          s7, s0, s4
                  and          t0, a6, zero
                  auipc        s6, 87686
                  addi         s8, zero, 259
451:              andi         ra, s3, -1940
452:              sltu         a1, t1, t1
                  addi         s4, t3, -796
                  slli         s4, t0, 15
                  srl          a1, s10, s9
                  nop
457:              xor          a4, gp, ra
                  sll          t1, zero, s1
                  sltu         a4, t4, t0
                  xori         s5, a0, 1705
                  andi         t5, a2, -120
                  auipc        a2, 931558
                  srli         a4, t0, 4
                  sra          a1, s0, s5
                  sltiu        s4, s6, 63
                  sra          t4, s11, s0
                  blt          s11, a2, 471f
                  slli         s6, t6, 13
                  or           a0, a6, s8
                  slli         a4, t5, 11
471:              ori          s0, t2, -1622
                  slli         a6, s9, 3
                  sub          t4, s6, a0
                  andi         a0, a3, 1595
                  sll          t4, tp, t0
                  lui          t1, 777140
                  lw           t6, 4(s9)
                  slli         s5, zero, 29
                  add          ra, t2, t4
                  addi         s9, s9, 64
                  sll          t3, a5, t5
647:              addi x18, x31, 1
647:              jalr x18, x18, 0
sub_10:           addi         s9, s9, -56
                  slt          a7, t5, s5
                  sw           t6, 4(s9)
                  sra          t2, a3, t5
                  slli         a0, a2, 27
                  sub          a6, s9, gp
                  srl          t5, t6, t5
                  xor          s4, s2, s11
                  lui          s11, 916168
                  sltiu        s0, s5, 463
                  auipc        s5, 41633
                  sltiu        s2, a4, -181
                  xori         s3, sp, 9
                  sltu         a6, t6, t2
                  blt          t5, t0, 13f
                  auipc        a0, 540703
                  sltu         a6, a7, s6
                  add          a7, a1, s7
                  bge          s11, s6, 13f
                  andi         a2, s7, 1844
                  bgeu         a2, s6, 13f
                  nop
                  sltu         t0, ra, a1
13:               slt          t2, s6, a5
                  lw           t6, 4(s9)
                  sra          s10, zero, t2
                  addi         s9, s9, 56
                  slt          s8, a6, t0
                  nop
                  add          zero, s4, sp
                  slti         a0, s6, 1289
31:               addi x29, x31, 1
31:               jalr x29, x29, 0
sub_2:            slt          t1, tp, s9
                  bgeu         a0, gp, sub_2_stack_p
                  sltiu        s3, t0, -1150
                  auipc        a6, 419901
sub_2_stack_p:    addi         s9, s9, -40
                  slli         tp, a5, 1
                  nop
                  sw           t6, 4(s9)
                  add          a4, a1, s0
                  sltiu        gp, a3, 1177
                  xori         s0, s9, 1503
                  la           a7, sub_3
                  add          s2, s5, ra
                  addi         a7, a7, -756
                  or           s4, s7, s11
                  xori         t5, t2, -1876
                  lui          a4, 658769
sub_2_j5:         jalr         t6, a7, 757 #jump sub_2 -> sub_3
                  lui          t4, 494837
                  xori         zero, s4, -345
                  ori          s5, a6, -1945
                  or           gp, s11, s0
                  srl          t2, s3, s11
                  ori          s3, a2, -486
                  ori          a7, s1, -1887
                  sra          s1, t4, s5
                  or           t3, t4, a0
                  blt          a7, s9, sub_2_j6 #branch to jump instr
                  slli         tp, s4, 13
sub_2_j6:         jal          t6, sub_4 #jump sub_2 -> sub_4
                  sub          a1, t2, a1
                  sltu         s7, a5, s9
                  slt          s3, a2, s11
                  srai         ra, s8, 20
                  add          gp, t6, a4
sub_2_j7:         jal          t6, sub_5 #jump sub_2 -> sub_5
                  la           a1, sub_6
                  or           ra, s2, s10
                  xori         s7, ra, -1626
                  addi         a1, a1, 222
                  sll          gp, s2, s3
                  slli         zero, t2, 13
                  xori         t3, t1, -1639
                  xor          tp, t6, s10
                  or           s0, s2, s5
sub_2_j8:         jalr         t6, a1, -221 #jump sub_2 -> sub_6
                  bge          t1, a4, sub_2_j9 #branch to jump instr
                  auipc        t3, 429
                  andi         t2, s4, -656
                  sra          zero, a0, t5
                  slt          a1, s7, s7
                  auipc        s3, 631142
sub_2_j9:         jal          t6, sub_5 #jump sub_2 -> sub_5
                  bne          zero, a1, 12f
                  bltu         s8, a0, 16f
                  xor          t2, s4, s9
                  sll          t6, t4, t4
                  srai         a3, a0, 7
                  srl          s2, tp, a7
                  sltiu        t6, s1, -544
                  sltu         t1, s1, t4
                  bge          s6, s0, 16f
                  slli         tp, s10, 22
                  lui          s5, 885202
                  bgeu         s9, tp, 16f
12:               auipc        ra, 907045
                  bne          t4, a6, 16f
                  ori          a1, a7, -170
                  nop
16:               lui          tp, 795767
                  lw           t6, 4(s9)
                  addi         s9, s9, 40
                  slli         ra, zero, 15
                  slt          s3, t6, s5
                  addi         s2, t3, -2008
                  srl          a1, a4, t2
                  and          gp, ra, s6
                  slti         s8, s3, -1778
78:               addi x26, x31, 0
78:               jalr x26, x26, 0
sub_5:            sra          s4, s1, a6
                  sub          a1, t4, a0
                  andi         tp, gp, -1036
                  srl          a1, s3, gp
                  or           a6, s0, t5
                  add          s6, a6, s3
                  xor          s10, a4, tp
                  add          s2, t3, a0
                  slt          s11, a5, a4
                  addi         s9, s9, -32
                  sw           t6, 4(s9)
                  ori          t3, s1, -1249
                  blt          t0, s7, 19f
                  bge          a1, tp, 14f
                  auipc        s2, 964438
                  ori          s6, ra, -1906
                  and          a1, sp, a6
                  addi         a4, a0, 1935
                  blt          t3, s7, 10f
                  sltu         s0, a4, tp
                  bltu         a6, t1, 9f
9:                slt          ra, t2, s5
10:               slt          t2, s6, s0
                  bne          t4, a5, 28f
                  ori          s6, a0, 395
                  nop
14:               beq          a1, a5, 25f
                  and          a3, t2, sp
                  xori         t6, s11, 403
                  lui          a3, 762252
                  srl          a6, t6, t2
19:               sra          a7, zero, zero
                  slt          s10, s1, sp
                  nop
                  add          a0, a6, s0
                  sltu         tp, s2, t1
                  xor          s10, s11, a2
25:               ori          s5, a2, -1695
                  sltu         s0, a6, s6
                  slti         t1, a2, -568
28:               add          t5, a6, tp
                  sub          a0, s2, s10
                  xori         s6, a3, 130
                  sltu         s10, t5, s7
                  xori         t6, ra, -1713
                  andi         s1, s10, 1653
                  add          s8, t0, s7
                  xori         ra, s6, 1256
                  sll          s7, s10, s0
                  addi         t0, t2, 638
                  blt          a3, ra, 53f
                  add          s6, t2, s6
                  bne          s4, a2, 57f
                  andi         a7, t2, -1123
                  andi         s6, t6, 1522
                  bgeu         a6, s0, 60f
                  nop
                  sltiu        s11, s6, 1930
                  sltu         s0, t6, zero
                  ori          a2, a7, -373
                  andi         s10, a0, 1747
                  add          s0, zero, s5
                  sub          s5, gp, s6
                  xor          s0, a1, t5
                  blt          t5, s1, 57f
53:               and          a0, s7, s11
                  ori          t6, s6, 104
                  beq          a0, a2, 74f
                  srai         s8, a4, 25
57:               add          a7, a5, a5
                  slti         s4, t3, -362
                  slti         s11, sp, -726
60:               bne          s3, s0, 64f
                  nop
                  xori         s1, s9, 1920
                  slti         s0, zero, -499
64:               sra          zero, sp, a1
                  andi         a6, s6, 1578
                  beq          t5, t3, 68f
                  bge          s9, t0, 83f
68:               lui          t3, 175991
                  auipc        ra, 946270
                  sltiu        a2, s0, 1144
                  ori          a2, s5, 1730
                  xori         t6, s3, -370
                  bne          t1, s7, 79f
74:               bne          s4, zero, 84f
                  xori         tp, t1, -1583
                  slt          a3, a7, t1
                  slt          s11, t1, a2
                  blt          t1, tp, 84f
79:               slli         a0, a4, 13
                  ori          t0, ra, -1514
                  slli         tp, sp, 21
                  sltu         s3, s8, a0
83:               sltiu        a0, s6, 1600
84:               sra          zero, t2, t0
                  lw           t6, 4(s9)
                  sltu         a7, sp, gp
                  srli         s8, a7, 15
                  addi         s9, s9, 32
                  srli         ra, s2, 31
102:              addi x16, x31, 1
102:              jalr x16, x16, 0
sub_7:            blt          ra, gp, sub_7_stack_p
                  sll          s10, gp, s7
                  or           s6, s1, s6
sub_7_stack_p:    addi         s9, s9, -28
                  lui          t3, 548440
                  add          s4, a4, s9
                  srai         a3, s3, 24
                  srl          t5, t3, t0
                  sw           t6, 4(s9)
                  slli         a2, t0, 4
                  addi         t4, a5, -89
                  la           tp, region_1+226 #start riscv_load_store_rand_instr_stream_0
                  srli         a3, a4, 26
                  sb           a4, 1643(tp)
                  nop
                  lb           s10, 858(tp)
                  sb           t6, 1763(tp)
                  sb           t3, 1249(tp)
                  lbu          s4, 692(tp)
                  sra          t0, s1, t4
                  sltu         s0, t4, s10
                  sra          t2, a7, t5
                  sb           s3, 45(tp)
                  ori          t2, a3, -686
                  lw           zero, 674(tp)
                  lb           a3, 1712(tp)
                  addi         a7, s8, 862
                  xori         t2, t0, -513
                  slli         s8, a1, 7
                  xor          s1, s7, gp
                  slli         t4, ra, 10
                  sub          a6, s3, t4
                  lw           t1, 1594(tp)
                  slti         a2, a2, 542
                  xori         s5, s0, -1053
                  lbu          a2, 1385(tp)
                  lhu          s6, 168(tp)
                  sb           a4, 31(tp)
                  sb           gp, 1483(tp)
                  slt          s1, s2, s5
                  lb           s3, -151(tp) #end riscv_load_store_rand_instr_stream_0
                  sltu         gp, tp, s10
                  addi         t4, s3, 803
                  slti         a4, t3, 39
                  srai         s5, a0, 1
                  blt          a6, sp, 9f
                  xor          a7, s9, a3
                  ori          a1, s9, 1038
                  auipc        a4, 749200
                  sll          s10, t2, s11
9:                add          t2, s7, a1
                  sub          ra, s1, gp
                  ori          s7, s5, -1350
                  lui          a4, 822949
                  add          s10, s6, s3
                  sll          s4, t6, s11
                  and          t6, s9, a1
                  bge          s0, s9, 31f
                  xor          s7, s2, s5
                  bne          t5, s7, 32f
                  slti         s1, s6, 1887
                  blt          a1, a4, 35f
                  xori         s10, s11, 1240
                  lui          zero, 214074
                  srai         s5, t6, 16
                  bgeu         t4, a1, 40f
                  srai         t6, zero, 23
                  sltu         s6, t0, t5
                  srl          gp, s11, s5
                  add          s11, s6, t4
                  ori          t6, s7, 413
                  sub          s0, t6, sp
31:               bge          s3, a0, 38f
32:               xor          t2, s9, a3
                  bne          ra, s9, 43f
                  bgeu         s2, s8, 50f
35:               srli         s2, tp, 1
                  xori         t5, s1, -374
                  lui          a7, 629925
38:               xor          a6, s9, s11
                  sltu         s8, s7, sp
40:               bgeu         a3, t6, 56f
                  auipc        s5, 905718
                  sltiu        s11, a5, 341
43:               xori         t2, tp, 1576
                  add          s2, a1, t1
                  bne          s6, t1, 54f
                  slli         a3, s2, 3
                  xor          t0, t0, ra
                  slt          a2, gp, a2
                  addi         s8, s6, 635
50:               or           zero, t1, a2
                  auipc        s11, 1035896
                  slli         s0, a3, 3
                  add          t2, a3, s8
54:               beq          gp, s9, 73f
                  and          a1, a1, a7
56:               nop
                  srai         a7, t5, 20
                  auipc        zero, 419535
                  add          s7, t4, s5
                  slli         t2, t4, 4
                  add          s11, t5, s1
                  beq          a0, s11, 72f
                  srai         ra, a2, 0
                  bge          s8, s10, 79f
                  srai         t1, s2, 11
                  slli         s3, t4, 25
                  auipc        zero, 1036182
                  and          t1, s1, s6
                  slti         t6, t4, 1782
                  sra          s2, s11, s4
                  bltu         t5, sp, 75f
72:               srli         t3, s10, 27
73:               bne          s7, a1, 86f
                  bne          t6, s11, 86f
75:               bgeu         s9, t6, 92f
                  andi         t3, s11, -397
                  slt          a3, s4, s11
                  slli         s10, s7, 12
79:               addi         t6, t6, -49
                  ori          zero, t1, 1687
                  sltu         s2, sp, a1
                  srl          s4, a6, zero
                  sltu         s3, t1, s10
                  slt          s7, t0, t6
                  sltu         t5, t4, s5
86:               nop
                  sltu         s1, s10, t2
                  slti         a7, a7, -223
                  bge          s0, a2, 108f
                  sltu         t4, s1, s10
                  srai         t3, s8, 6
92:               or           s10, s3, s3
                  lui          gp, 324849
                  srl          a6, a0, a4
                  lui          t1, 560911
                  or           a2, gp, t3
                  bltu         s2, t1, 111f
                  or           t2, s0, t0
                  slti         s7, zero, 1815
                  nop
                  srli         gp, s2, 20
                  xor          t1, a7, ra
                  xori         a6, ra, 702
                  sra          s8, t4, a4
                  bne          a5, sp, 122f
                  srli         s10, t1, 4
                  srai         t0, s10, 5
108:              srli         s2, s11, 15
                  blt          t3, t6, 114f
                  beq          s6, gp, 125f
111:              andi         s10, a4, -128
                  auipc        s4, 226447
                  auipc        s6, 854589
114:              lui          t3, 348499
                  sltu         t4, a0, a5
                  sra          t0, s4, gp
                  add          s5, tp, s11
                  bne          t0, s7, 120f
                  beq          s11, a7, 132f
120:              and          zero, t1, a0
                  bltu         a5, gp, 140f
122:              xori         a7, s4, 672
                  andi         zero, t0, 238
                  srl          t3, a5, s8
125:              sltu         a0, s11, s11
                  lui          a2, 845917
                  xori         s4, t5, 380
                  sub          a3, s2, a2
                  slti         tp, s5, -375
                  srli         s2, a3, 16
                  sltu         a2, a7, a4
132:              or           ra, s5, s9
                  or           s4, t5, s1
                  slti         s0, s11, 417
                  slti         s8, a5, 1847
                  and          a2, s5, a7
                  slt          s10, s4, s10
                  xor          s2, gp, a7
                  bgeu         s2, a6, 147f
140:              andi         a4, s8, 1919
                  srli         a2, a1, 7
                  sra          t2, t2, s8
                  srai         a1, t0, 7
                  andi         s1, gp, 545
                  sltiu        t4, tp, 439
                  addi         gp, s6, 73
147:              sub          t2, s5, t3
                  nop
                  blt          s5, a3, 154f
                  sll          gp, sp, s8
                  bge          s5, s8, 155f
                  nop
                  slli         tp, s7, 16
154:              beq          a2, s7, 163f
155:              bge          s10, zero, 157f
                  addi         t5, a0, -1909
157:              nop
                  srai         s11, s2, 8
                  xor          s11, a7, s7
                  srai         a3, a6, 24
                  sll          zero, tp, a3
                  addi         s8, a2, 1514
163:              and          s10, s1, a1
                  slti         a0, s11, -791
                  add          s7, zero, s8
                  xori         s0, a7, -761
                  sltu         a4, s1, sp
                  bltu         t5, a7, 183f
                  bltu         a6, a1, 178f
                  addi         s8, s3, 1940
                  sltiu        s0, s8, 1581
                  sltiu        a0, a4, 668
                  slli         a2, s11, 23
                  lui          s7, 558610
                  addi         t4, s7, 518
                  beq          a5, t0, 191f
                  sltu         ra, s10, a6
178:              blt          a1, s9, 188f
                  and          a3, a2, ra
                  srl          t6, a7, s8
                  addi         a0, a4, 906
                  xori         ra, s5, -126
183:              and          s3, s8, a1
                  srai         t1, zero, 26
                  nop
                  xori         t4, t6, -385
                  andi         a7, gp, 569
188:              sll          a0, zero, a0
                  sltiu        s8, t0, -1557
                  sltiu        s5, t0, -1365
191:              sltu         s5, a1, s5
                  srai         t6, s5, 17
                  slli         a2, s10, 15
                  auipc        t2, 400379
                  ori          zero, s1, -534
                  xori         s11, sp, 699
                  xori         s6, a4, 1248
                  add          t0, t5, ra
                  beq          a3, t4, 205f
                  slti         t0, a1, -1924
                  addi         s1, a6, -80
                  srai         s7, tp, 16
                  bltu         t6, sp, 205f
                  or           s3, gp, s9
205:              nop
                  and          a3, a0, s3
                  lw           t6, 4(s9)
                  sll          s4, s0, t0
                  slti         s11, zero, 1264
                  srai         s1, zero, 12
                  ori          t3, t3, -1161
                  addi         s9, s9, 28
                  sltu         s0, a4, s6
                  slti         t5, s2, 2009
                  add          gp, a7, s10
                  addi         s7, gp, 1462
                  andi         t4, s11, -504
259:              addi x10, x31, 0
259:              jalr x10, x10, 0
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
.word 0x6fe963ce, 0xe2c3dc85, 0x24591c57, 0x987d6760, 0x40f8ad8b, 0xd98c7aad, 0xd357e6ba, 0x42b25255
.word 0xa7906838, 0x620ef897, 0xe2b92ce3, 0xaf115471, 0xd7f2fda4, 0xb8c7f052, 0x12cb4095, 0xf70c8a36
.word 0x473fbdb7, 0x8644b808, 0x1d64b016, 0xa9ab0e48, 0x218b96ab, 0xadc9b5de, 0xb7a57d4b, 0x14bcdbed
.word 0x54842bdf, 0x1c4c97ba, 0xd9753b6a, 0xbdf50db9, 0xf48fcb11, 0x4748622b, 0x9ef087b2, 0x5f325aca
.word 0x915f1af4, 0x4b3bfb90, 0xf02ff980, 0xb0e8e7aa, 0x1beb5c23, 0xf6ca9e77, 0x37f0bbac, 0x9198982d
.word 0x7515d84e, 0x25039aab, 0xa1e02f77, 0xf1ee8ab5, 0x078bbf01, 0xfec54440, 0x9f1b2ab9, 0xc1eb1613
.word 0xae307e38, 0x7a1f7a6c, 0x860b606c, 0xaf837290, 0x739582ce, 0x3fd61aa6, 0x0b73875a, 0x4f664690
.word 0xa9e226ac, 0x5c032097, 0x24451446, 0xfdfa6a23, 0x99c17ddc, 0x152ae1cc, 0xb6f0af94, 0x8b1313f1
.word 0x9be76ead, 0x5b9d933a, 0x1af8a747, 0xd4c3ef49, 0x23a5566e, 0x25f23263, 0xb193c5a1, 0x798b9989
.word 0x65613284, 0xda5f4b47, 0x469696f7, 0x094aa3c5, 0x11818223, 0x2d1b5b0c, 0xc1d4aadd, 0x813eda07
.word 0x1accf540, 0x152b39bf, 0x22baadd2, 0x09ecd2e7, 0x171540a5, 0x8876ca18, 0x8444d3e1, 0x2e12c46a
.word 0x71d31f26, 0x657a3181, 0x9aa01148, 0x410ef398, 0xf45557fc, 0xc53ba664, 0x36ef2ec6, 0xa290f0e3
.word 0x59aceffb, 0xdc03ddc7, 0x7abaff67, 0x54c56bda, 0x6e5eb806, 0x3a91fbde, 0x126071f9, 0xaa4d3324
.word 0x08938e3a, 0xa7bfdee7, 0x3d8a28d9, 0xd6372b10, 0x4785e19e, 0x47ea8d30, 0x9b99dd37, 0xa0f70b88
.word 0x892e6a0f, 0x79d554c6, 0x6a433891, 0xe3529459, 0xf618155c, 0xa45f7007, 0x457c8ad9, 0x8a21cf8b
.word 0x8290e81e, 0x3db7d13d, 0xdf6c5a66, 0xe180f407, 0x66036e01, 0xfb56fd2d, 0x9b421281, 0x4a7f120c
.word 0x628a15c5, 0x03766cd2, 0x1b14c2a9, 0x6b5cfff9, 0xd0e2f978, 0xb60387ad, 0xdc9a588e, 0xfa1ac862
.word 0x8108be3c, 0xf27f8e3a, 0xd4ada31f, 0x7422b0ae, 0x15497a3e, 0xeb18b171, 0xcb8997e3, 0x195e0d64
.word 0x34fa3307, 0x6530e61e, 0x1569dcac, 0x8b2a67dd, 0x0d5b7f99, 0xbe9dd495, 0x04ef3202, 0x088c1eb7
.word 0x6d2b8d7a, 0x221956af, 0x7f5c2904, 0x2e5bb61c, 0x0a3e4e49, 0x567acdc1, 0x2e42f273, 0xca71c196
.word 0x66aec004, 0xd2893063, 0x8503cb0b, 0xd8b142bc, 0x25943251, 0xe40a0530, 0x793fbcc1, 0x16cee220
.word 0x365635b4, 0xa63dc561, 0x9e5e7ea7, 0x1a55b329, 0x55473e90, 0xf8a474f9, 0xba14aa24, 0xf47e0990
.word 0x62396fe1, 0x3d5ad7c2, 0x99b0df60, 0x2a965073, 0x1a975ce4, 0x0d8bdb58, 0x003a8e66, 0x2dfdd2de
.word 0x3067141c, 0xa716d7aa, 0x50c02126, 0x4c935194, 0x22a5179c, 0xe7dddd70, 0x39b168b2, 0x3dfe67fc
.word 0x47f082ee, 0x081dd374, 0xb34aac57, 0xe660c8f4, 0xc0977aef, 0x328c14ae, 0x713907d4, 0x342be2b3
.word 0x1f50e232, 0xaf7dd2ce, 0x1691f090, 0x54593a15, 0xb032f422, 0x31b61b8b, 0x3d97ee7f, 0x7cdad491
.word 0xbb40af2f, 0x9e276cff, 0x94d4593b, 0x33a74f5d, 0xc8e15b21, 0x6ffcfb6b, 0xf2d4dfee, 0xa9c8ab17
.word 0xd7d70e12, 0xd66c1788, 0xd30c5761, 0x523a8edc, 0xc3ffa95f, 0xc212d7b0, 0xd8138ea7, 0xa28e12ef
.word 0xa10fe216, 0x56fe8ace, 0x7bd1f703, 0x0dfe6738, 0xbbf71f85, 0x2e632f83, 0x954cc459, 0xd185eb4f
.word 0x2bd7da9a, 0x889ca94a, 0x4b2dee44, 0x073997b3, 0x8cd1c910, 0x05c7cfa5, 0x33909e14, 0xef9a0b68
.word 0x2e3f218d, 0xf91f3e01, 0x5dfcbd36, 0xaddd9fde, 0x78c35502, 0x6d594956, 0xb3df6667, 0x1de8f920
.word 0x38494bf9, 0x93caf543, 0x8b0588f5, 0x8bf2397f, 0x06cd531b, 0x7cfc9556, 0x139c8c79, 0xa78850bd
.word 0xbb53332b, 0x2637373a, 0x24a612e6, 0x69da2518, 0x118bcd64, 0xe6d3d7c3, 0x0e392335, 0xffe1473f
.word 0xc4fa59c3, 0x1eb25bee, 0x93a8aa82, 0xb0ae248e, 0x04322e94, 0x5304973b, 0x3e810941, 0x4bc294c1
.word 0x1603c0f7, 0xdc1a6e51, 0xd8a8307a, 0x41528694, 0x32c7ae15, 0x3d954e16, 0x5ae8ff4d, 0xef7f2be1
.word 0x1d763ad1, 0xf101d250, 0x78363344, 0x632c97cc, 0xe2da6c08, 0x198da35f, 0x9f200bea, 0xfea92e7e
.word 0xdc387d4d, 0xcb671da3, 0x6f5333e6, 0xcfd138c3, 0xe068cbcd, 0x72d0021e, 0x5ad13c18, 0xd8e6d908
.word 0xbcceaab9, 0xcbef626c, 0x99b572ab, 0x4baedeac, 0x1e2a86c9, 0xa7ef292a, 0x2174ca34, 0xf353ad04
.word 0x24c7bef6, 0x6ccb6555, 0x1e6231c0, 0x21623ca6, 0xcd74777d, 0xabfacfd9, 0xd1b3ed15, 0x70d5fdd2
.word 0xd42d1300, 0x024c8ae3, 0x29300976, 0xafd8570a, 0x3806ba6e, 0x151a73e8, 0x8e8be703, 0xfd712176
.word 0xf5d9618a, 0x15c9cd9a, 0x4b61fdcf, 0xbde666f4, 0x5fa1b892, 0x1370fe73, 0xa0079464, 0xef81d52a
.word 0x4037443c, 0x90e2e201, 0xecc8973a, 0x0a2a0f33, 0x650e4851, 0x2fc54736, 0x6b1dc8a1, 0x39bb701d
.word 0x288a0d28, 0x4eca87dc, 0x68cbbb56, 0x32fabdaa, 0xd48b20dc, 0x085ee02e, 0xb1872024, 0xb3528bef
.word 0x99cd77ff, 0xc3887708, 0x9a3379ce, 0x90d7fcd1, 0xd8f5e3e9, 0xd221f59c, 0x07ac8c26, 0x8819e3e2
.word 0x936318bd, 0x974768db, 0x13259e61, 0x2122dc8d, 0xe64a1003, 0x46b05d67, 0x18ab880b, 0x0d06c605
.word 0xf52e2bb0, 0x3daafc9b, 0x394a271c, 0xa8eff01d, 0x05e16087, 0xbcff8f28, 0x126844b2, 0x73f37b61
.word 0x46bf05f6, 0x2610982d, 0x7e0b9b99, 0xf90802d2, 0xc51f12e5, 0x3c7246f2, 0xb8685505, 0xcc94ca5a
.word 0x404335ba, 0x93edb69c, 0x911ec407, 0xb2d4d9a6, 0xa08a56be, 0x106ff1f0, 0x41524317, 0xcbbfd60a
.word 0x4b88d43e, 0xcce28a8d, 0xa7c91a70, 0x952b8094, 0x37cb8d08, 0xa0543dfd, 0x50e9c4da, 0x1f97cf2e
.word 0xf7f52e0b, 0x423391e9, 0xe1586056, 0x1a5bb689, 0x89afea2f, 0xb2a01540, 0xd267ffcb, 0x6dee1600
.word 0x6c0d28d0, 0x0b5f9f0c, 0x8a0c6cff, 0x8b27403a, 0xd9efe8e4, 0xc44c77a7, 0xd126c1bf, 0xcc06a0c4
.word 0x2dd3f864, 0x4e0d9095, 0x4c17cf8b, 0x9b033c9e, 0xe9b48f56, 0x6419d078, 0xcce0871f, 0x06b85712
.word 0x139255f1, 0xb325aacb, 0x63396653, 0x349c9a11, 0x2548f62f, 0x54cb9c7e, 0x18768f36, 0xd181b401
.word 0x8d6dff9b, 0xe53d0e98, 0x9b06b1bc, 0x0eee3fe5, 0x06383fd4, 0x44df2f6e, 0xd38bb1a9, 0x66a4f505
.word 0x6716de9c, 0xe3f8163e, 0x94acc0e7, 0x7d713311, 0xee1d615d, 0x62f27103, 0x91b64a6e, 0x4900b4a0
.word 0x9201397f, 0x17bd575d, 0x8b173206, 0x6f14214b, 0x8f93e520, 0x3fcf8ca1, 0xaa4fb894, 0x36d320fc
.word 0xef90dec6, 0x7b1bd17e, 0xd40ceaf2, 0x2b18e775, 0x8524fa1b, 0x4550b3fa, 0xd6d04ff2, 0x51d96714
.word 0xdc874766, 0xbfdbf0d5, 0x17042e6d, 0x09908771, 0x776026d6, 0x9cf2eadc, 0xbc27a9be, 0x23abdff9
.word 0xacc744df, 0xef3dce32, 0x81dbabbe, 0x60b1be05, 0x32c695b3, 0xbcaab023, 0xab95e5a4, 0x81e89bd0
.word 0x0ec8e5c4, 0xe671744d, 0x80de7c70, 0x0cf3ec30, 0x3480c437, 0x78b281c4, 0xce897b48, 0x06aad5d1
.word 0x931d0eca, 0x5a2c58a1, 0x4655966e, 0xd0289b50, 0xed58edbc, 0x20dfe8e6, 0x2f159c2a, 0x51e495b5
.word 0x60eb67c0, 0x02c1ffcf, 0xeadd0cf5, 0x2afc516f, 0x29d5d254, 0xe9ff4734, 0x8324face, 0x27941a3b
.word 0x2c08169b, 0x56e998e2, 0x5e1ee58b, 0x91e62436
.section .region_1,"aw",@progbits;
region_1:
.word 0x551b5c1e, 0xca923381, 0xe8acec93, 0xdaaa4ef7, 0xec337aad, 0x8870e36a, 0x7e1a4116, 0xfca30b2e
.word 0x35117a87, 0x60e33216, 0xcb5c66ec, 0x45c205fd, 0x247e1b07, 0xb3e5e51b, 0x6aef797b, 0xf3f29c42
.word 0x20ce3209, 0xe05b3d6e, 0x9cf85348, 0x1cc0a64d, 0x84f5bb37, 0x5b6fad25, 0xb126912e, 0xde222f4c
.word 0x700748b9, 0x0c4fee27, 0x3c283a08, 0xf56d8d63, 0xe041ef02, 0xa8dd346c, 0xc2f6b20d, 0xa2aecc43
.word 0x404da101, 0x9bd50fe1, 0xc689578a, 0xca022542, 0x84195779, 0xcccabf6d, 0x9d98194f, 0x9fbda44e
.word 0x78b8e316, 0x2db30d32, 0xc4355603, 0x826b7e75, 0x90663d41, 0xbc712073, 0xdcb624bd, 0xd027bdfc
.word 0x2fd2ac70, 0x960bcfb1, 0xcfb490d7, 0xb025bace, 0x01cb993f, 0x2e2ae46a, 0x61c881e3, 0x47769d52
.word 0x8c0282cb, 0x9a1ef3cb, 0xf739af7c, 0xd96c70bd, 0x9f71661b, 0x54d82fd1, 0x23b92339, 0x9c2ca027
.word 0xd07c9ac0, 0x977633d5, 0x3761ad69, 0x1d307a6e, 0x7ca49b90, 0xf864291a, 0xc26b1cc8, 0x47db03f4
.word 0x79cdcbe4, 0x5ad66959, 0xe78322ff, 0x6c0efe85, 0x6bc0c0ac, 0x694ec556, 0xfe3c3047, 0x21928ffd
.word 0x175888f2, 0x9f655f2d, 0xefadd971, 0xfcc2a40f, 0xc47370f1, 0xb3a9813e, 0x072220ee, 0x7bf455b8
.word 0xbcf46e75, 0x8f2dfc92, 0x97d4f3dc, 0x5631d13f, 0x0ef4041d, 0xe895c464, 0xc70c6e7d, 0xcc6ed3a0
.word 0xdb52d7ee, 0x21cc25d6, 0xcfaebf42, 0x9fb0e9e6, 0x6647ef30, 0x8fb4e37a, 0x0cf0e033, 0x612a9a33
.word 0xab4f8411, 0x923e8343, 0x03716ca2, 0xb22660b7, 0x10ff4bb7, 0x49615a2d, 0xd40a6a3e, 0x8aea40a3
.word 0xfabd9bb9, 0x04915a74, 0x5b1150e6, 0xaad13d21, 0x34bfa20c, 0xc1686031, 0xfd50a51f, 0x1e8aee71
.word 0xbeae2553, 0xeaee5142, 0xa0c9dde2, 0x3a0f90fb, 0xe2d471f0, 0xcb4129b3, 0xafd2afe0, 0xc644fce2
.word 0x044931e8, 0x9be457f7, 0x4b95eea1, 0xb70ff3c7, 0xd39036c8, 0x779f1f6d, 0x71da031a, 0xea1071f1
.word 0x5d8fc3fc, 0xcd99bd95, 0xc8cc2bc5, 0xcfe43c6d, 0x378ff132, 0xbe041d80, 0x387b984c, 0x529f393b
.word 0x32f2ca48, 0xe26c6032, 0x15a0a195, 0xa1a62461, 0x40e7d7d3, 0xdb44d996, 0xf17871d2, 0x1d1c9e93
.word 0x33e068b6, 0x89bd91d7, 0xbd91e9a9, 0x6106c836, 0xaedff884, 0x2771ee23, 0xec9621ae, 0x5aea2c72
.word 0xdb484898, 0x5c797711, 0x288b55fc, 0xfeab3e61, 0xe1471f52, 0x4bee0cfc, 0xd1b12408, 0xbec82efa
.word 0x608f6a0d, 0x7fa8e045, 0x0dfea83f, 0x3e647cdb, 0xd376c7ac, 0xe0e7783a, 0x3379b221, 0x68eb1a4b
.word 0xfab41d36, 0xc6a09d99, 0xb52def6d, 0x8551f9cc, 0xc8ce05ef, 0xfa575c5f, 0x1eee3682, 0x2d1ec6de
.word 0x4d4b4255, 0xa10ca359, 0xe8054012, 0x028c2953, 0xe2d0f287, 0xe51b2d03, 0xfc686a4e, 0x687c71ab
.word 0x227738b3, 0x3c0c196a, 0x1bc985fb, 0x03ed7b34, 0xf14e5753, 0x6e160d91, 0x38ed6018, 0xa7361589
.word 0x46a6f9ec, 0xf1e0ae4d, 0x77a3fe4f, 0x46ec9663, 0x42e14479, 0x3c30fb76, 0xf2de6607, 0xf296cd02
.word 0x04979207, 0x26f88471, 0xb57870a5, 0xd5ced262, 0xf1102804, 0x11b7f7ea, 0xadc990dd, 0x3c1b1b58
.word 0xcd628352, 0xaa2c9694, 0x7b639482, 0x634b7586, 0x275ff04e, 0xe8bfb6c0, 0xc64e49ae, 0xfca63c55
.word 0xdedd3ce3, 0x9d45727c, 0x7358a6f1, 0x84da172f, 0xbccb263c, 0xd1b4584c, 0xda49668c, 0xc368ecea
.word 0x94d22f0e, 0x79b3729a, 0xc9210f6e, 0xb3270f0d, 0xed7be00c, 0xf5e3080f, 0xdbf0217f, 0xdbb7aa3f
.word 0xadb5902a, 0x43ef19ed, 0x12b1dac3, 0xb14436e4, 0x1fa366c0, 0x8eb840c1, 0x838f5c84, 0xf416d5f7
.word 0x382a5070, 0x27ee47eb, 0x5637f30b, 0xbfc86807, 0x60e2d2f8, 0x50812d5d, 0x8555e18d, 0x0e4e1753
.word 0x870b66aa, 0x66f1707d, 0xf9aad814, 0x7c5fde3a, 0x71f93249, 0x39b00f5a, 0x05ff7b48, 0x9a7c8fe5
.word 0xffc266ae, 0x22d9bf8d, 0x4b0f95f8, 0xf65b00a1, 0x0db975d5, 0x59bd7627, 0xac272dd6, 0xb45dce6d
.word 0x3968e33b, 0x16d81f55, 0x0bc61c4d, 0xff5b2dd9, 0x77c35afc, 0x01345e29, 0xe9298de5, 0xfb7eeaf4
.word 0x23749462, 0xb7880e6b, 0x2892179e, 0x098a92db, 0x79ffac64, 0x90dacfe0, 0x21fab479, 0x289fb7c8
.word 0x1acbfcc0, 0xe4c24822, 0xed9c1d7b, 0x90705194, 0x6bb82e5d, 0x1d39acde, 0x89bab1a8, 0xa8f13664
.word 0x5eff946c, 0x7dd38c01, 0x78ee2d6e, 0x7539805b, 0x7b40a0b4, 0x93c6863f, 0x8542c89a, 0xf087cbcb
.word 0x3d3abd17, 0xde80e5d7, 0xd57cdc84, 0x4a2fccb9, 0xfd6f375c, 0xc7aa7bf1, 0x5889ef2e, 0x02f24c46
.word 0xc2ef8567, 0xe21c253e, 0x33d2d9bb, 0xe71c9367, 0xcf07e8be, 0xf9f10d4f, 0x82e913ab, 0xc04ba472
.word 0xb7695ddc, 0xe93e5192, 0x14f45e08, 0x6dd198b4, 0xa94ef324, 0xdf536d46, 0xca990bd8, 0x3eafa2a6
.word 0x79c69a5c, 0x841ed97a, 0x565de87e, 0x94d94642, 0xb3fbd15a, 0x124c0618, 0x133c44f1, 0x8275600d
.word 0xc95477b7, 0x0a6b8ed8, 0xacb1b6e8, 0x99cd9ca0, 0x9da26d97, 0xe4c47e11, 0x7118843d, 0x1c70853d
.word 0x4c7ef69f, 0xf5022a10, 0x25413550, 0x5bc988bd, 0xa6a38570, 0x8a6306f1, 0x4fb06b29, 0x8334c59b
.word 0x2d9e67fd, 0x24504538, 0x51359517, 0x98e7e719, 0x65bfc5af, 0x45988a09, 0x1872b2e0, 0x6b9261aa
.word 0xb8caa87d, 0x9c11e7f7, 0x5b9cf8e9, 0xc05a67bb, 0xcc5363b1, 0xcfeb0c7f, 0x5520c156, 0xeaa2c97f
.word 0x2b0513f3, 0x2e27a220, 0x05328632, 0xeaee65f3, 0x2e2fda0c, 0x2ed7ed58, 0xbf05545d, 0x751c0a0a
.word 0x53cc5770, 0x3357a467, 0xec14c8a9, 0x8c04e5b2, 0x0875476f, 0x0b25a5cb, 0x15a8c7c8, 0x0658c5b0
.word 0x9ee65e08, 0xd32b1bef, 0xb9404625, 0xf4e1758b, 0x7c94ca6a, 0xdf766b95, 0x717747bf, 0x748776eb
.word 0xeca53d80, 0xb532f0e8, 0x963392c2, 0x37a4db5b, 0x898d9bdc, 0x3bc6a155, 0x2e813f3b, 0x86dea642
.word 0x05feb338, 0x95662d2b, 0xfff38ab2, 0x7ab3e489, 0x754f9b17, 0x07be5186, 0x2c6b237b, 0x6f27ed83
.word 0xced5a5ec, 0x94e5d0f4, 0xb0727861, 0xd7785716, 0xab01591f, 0x62cce7da, 0x7ed2c842, 0x2cf59f9e
.word 0xebbcab72, 0xe87c7970, 0x081cc6bd, 0x4abf546d, 0xb4751973, 0x2c518f87, 0x13164713, 0xdcab25b5
.word 0xf7140b6a, 0x7e5d9984, 0xd7b328fa, 0x902d4f2a, 0x702a614a, 0x00a47043, 0x8b2107aa, 0x248de3a9
.word 0x396eeb44, 0xf2be0e20, 0xe5ed6bb1, 0x70372104, 0x0c86d6b4, 0xdc2302eb, 0x6647348b, 0x4f18de54
.word 0x3c591141, 0x33927c08, 0x31c5ef4c, 0x3ecedb25, 0x8dc2bd4d, 0x5d61c937, 0x13941b5a, 0x7f06a739
.word 0xcfbb8c12, 0x8073266f, 0x7cab1fc3, 0xa0f518ef, 0x42d32600, 0xb9af6b6a, 0x6659386b, 0xde1e530c
.word 0x35656d56, 0x5fe75528, 0x69dd4d48, 0x749460d1, 0x090c9a37, 0x024a20b6, 0xcbe0b182, 0x4e0897fd
.word 0xb6b4e2ba, 0x1b263e50, 0x27883dc9, 0x25838b70, 0x44be93be, 0x4e90e521, 0x1d93d1bc, 0xd12ea2b8
.word 0x6dd836a5, 0x7c017351, 0x0c48527a, 0xbb0857cd, 0x3de4a1d0, 0x7be77624, 0xe5431e20, 0x3fed06fd
.word 0xa032b212, 0x1f2eb052, 0xd3aa1d09, 0xac96d5f6, 0x50bbe16c, 0xd6457e40, 0x7a8a78c0, 0xed3e13ca
.word 0xb109e498, 0xd1a7220a, 0xf93b0e46, 0x0641a70c, 0xa73dfaf0, 0xe6ca5110, 0x01ac748b, 0xdc5bb4bb
.word 0x3e23e35d, 0xc01551d6, 0x69e07224, 0x3db2ad88
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
                  add x15, x25, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_2:
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
                  add x15, x25, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_3:
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
                  add x15, x25, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_4:
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
                  add x15, x25, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_5:
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
                  add x15, x25, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_6:
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
                  add x15, x25, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_7:
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
                  add x15, x25, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_8:
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
                  add x15, x25, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_9:
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
                  add x15, x25, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_10:
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
                  add x15, x25, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_11:
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
                  add x15, x25, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_12:
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
                  add x15, x25, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_13:
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
                  add x15, x25, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_14:
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
                  add x15, x25, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_15:
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
                  add x15, x25, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

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
                  add x15, x25, zero
                  csrr x16, 0x341 # MEPC
                  csrr x16, 0x342 # MCAUSE
                  li x14, 0x3 # BREAKPOINT
                  beq x16, x14, ebreak_handler
                  li x14, 0x8 # ECALL_UMODE
                  beq x16, x14, ecall_handler
                  li x14, 0x9 # ECALL_SMODE
                  beq x16, x14, ecall_handler
                  li x14, 0xb # ECALL_MMODE
                  beq x16, x14, ecall_handler
                  li x14, 0x1
                  beq x16, x14, instr_fault_handler
                  li x14, 0x5
                  beq x16, x14, load_fault_handler
                  li x14, 0x7
                  beq x16, x14, store_fault_handler
                  li x14, 0xc
                  beq x16, x14, pt_fault_handler
                  li x14, 0xd
                  beq x16, x14, pt_fault_handler
                  li x14, 0xf
                  beq x16, x14, pt_fault_handler
                  li x14, 0x2 # ILLEGAL_INSTRUCTION
                  beq x16, x14, illegal_instr_handler
                  csrr x14, 0x343 # MTVAL
                  1: la x2, test_done
                  jalr x1, x2, 0

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
                  la x2, write_tohost
                  jalr x0, x2, 0

instr_fault_handler:
                  add x25, x15, zero
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
                  add x25, x15, zero
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
                  add x25, x15, zero
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
                  csrr  x16, 0x341
                  addi  x16, x16, 4
                  csrw  0x341, x16
                  add x25, x15, zero
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
                  csrr  x16, 0x341
                  addi  x16, x16, 4
                  csrw  0x341, x16
                  add x25, x15, zero
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
                  csrr  x16, 0x300 # MSTATUS;
                  csrr  x16, 0x304 # MIE;
                  csrr  x16, 0x344 # MIP;
                  csrrc x16, 0x344, x16 # MIP;
                  add x25, x15, zero
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
