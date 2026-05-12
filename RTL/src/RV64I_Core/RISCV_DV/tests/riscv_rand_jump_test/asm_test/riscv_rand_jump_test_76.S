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
                  li x14, 0x40000100
                  csrw 0x301, x14
kernel_sp:        
                  la x6, kernel_stack_end

trap_vec_init:    
                  la x14, mtvec_handler
                  ori x14, x14, 0
                  csrw 0x305, x14 # MTVEC

mepc_setup:       
                  la x14, init
                  csrw 0x341, x14

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x14, 0x1800
                  csrw 0x300, x14 # MSTATUS
                  mret
init:             
                  li x0, 0x19383f72
                  li x1, 0x8
                  li x2, 0x3
                  li x3, 0x80000000
                  li x4, 0xe
                  li x5, 0x3
                  li x7, 0x80000000
                  li x8, 0x0
                  li x9, 0xf039af9b
                  li x10, 0xfa631ded
                  li x11, 0xb138defe
                  li x12, 0x80000000
                  li x13, 0x0
                  li x14, 0x3b82f859
                  li x15, 0x0
                  li x16, 0x0
                  li x17, 0xd3147f3c
                  li x19, 0x6
                  li x20, 0x3
                  li x21, 0x80000000
                  li x22, 0xfaf104f7
                  li x23, 0xf3ee6a97
                  li x24, 0x6
                  li x25, 0x0
                  li x26, 0x0
                  li x27, 0xef0817de
                  li x28, 0x80000000
                  li x29, 0xf947bf75
                  li x30, 0x80000000
                  li x31, 0xf1aba32a
                  la x18, user_stack_end
main:             andi         a1, t4, -1248
                  xori         t2, s3, -1427
                  lui          a6, 343686
                  sltiu        s1, s10, -1223
                  la           t5, sub_2
                  slt          a4, t0, s1
                  srai         s3, t3, 14
                  addi         t5, t5, -45
                  ori          s6, s5, -355
                  srai         a4, t6, 12
                  sltiu        a7, t1, -1869
                  bge          t5, t1, main_j2 #branch to jump instr
                  xor          a4, a0, a0
main_j2:          jalr         t6, t5, 46 #jump main -> sub_2
                  sltiu        s6, s7, 1796
                  srl          s10, t0, tp
                  la           t5, sub_4
                  sll          s0, t6, s4
                  slli         t6, zero, 13
                  or           s0, a3, a5
                  addi         t5, t5, -198
                  bltu         s10, a0, main_j3 #branch to jump instr
                  ori          a6, s7, -731
                  lui          a5, 958314
main_j3:          jalr         t6, t5, 199 #jump main -> sub_4
                  la           s4, region_0+613 #start riscv_load_store_rand_instr_stream_0
                  sll          ra, s11, zero
                  lbu          s9, -4(s4)
                  add          s1, s6, s9
                  lbu          t6, 10(s4)
                  lbu          s8, -12(s4)
                  sw           gp, 15(s4)
                  sb           s9, 10(s4)
                  lb           a3, -10(s4)
                  sll          s11, gp, t4
                  lb           gp, -10(s4)
                  sh           a7, 7(s4)
                  lbu          s6, -8(s4)
                  lw           ra, -1(s4)
                  sw           a2, 15(s4)
                  srai         zero, zero, 16
                  srai         s9, a3, 0
                  sub          a0, s6, t1
                  xor          gp, t1, gp
                  sltu         a2, s5, t4
                  lb           s1, 10(s4)
                  sub          a0, s9, zero
                  sb           t5, -8(s4)
                  and          t5, s4, s5
                  srai         s8, a4, 26
                  lb           s3, -11(s4)
                  sb           a5, 6(s4)
                  sb           a2, -16(s4)
                  sb           t5, -10(s4)
                  xori         s0, gp, 1012
                  sb           s8, -8(s4)
                  sb           s9, 11(s4)
                  sh           a2, -3(s4)
                  sb           a0, -11(s4)
                  sb           a2, 14(s4)
                  sb           a1, -8(s4)
                  or           zero, a3, zero
                  sb           a5, 2(s4)
                  lb           t5, 12(s4)
                  lbu          a6, -6(s4)
                  ori          t4, a4, -1472
                  lb           a5, -10(s4)
                  sb           a3, 8(s4)
                  sb           a3, 10(s4)
                  sb           ra, 4(s4) #end riscv_load_store_rand_instr_stream_0
                  addi         a1, a5, -11
                  slli         s11, a4, 13
                  or           t6, a3, a7
                  or           tp, zero, t1
                  andi         s4, s8, 1108
                  xor          s3, a3, a4
                  bltu         t1, a4, 17f
                  srli         t2, t1, 13
                  bge          s2, a1, 27f
                  auipc        s6, 763662
                  srai         t4, t6, 30
                  and          t0, a1, s3
                  sub          t0, s6, t4
                  xor          ra, t4, a0
                  and          s10, a3, t6
                  or           t4, t0, a0
                  add          ra, s5, a2
17:               bltu         gp, t2, 29f
                  xor          s5, s4, ra
                  sltu         a2, s10, s2
                  bge          gp, s7, 35f
                  bge          t0, s8, 35f
                  sltu         s0, t4, a7
                  bltu         s5, s6, 30f
                  bltu         s5, s11, 33f
                  bgeu         a2, s9, 38f
                  slti         s8, a1, 544
27:               nop
                  sltu         tp, s6, s3
29:               addi         t2, t2, 791
30:               slti         s6, s1, 555
                  nop
                  bgeu         t1, s8, 42f
33:               xori         a0, a6, 740
                  blt          a4, s2, 51f
35:               addi         ra, a0, 450
                  addi         tp, s5, 1755
                  srli         s10, a7, 27
38:               slti         a4, t2, 813
                  lui          a1, 118986
                  sra          a0, s4, a5
                  sra          s3, s2, t6
42:               blt          s3, a2, 59f
                  xor          zero, t4, s4
                  sltiu        s5, a6, 1851
                  auipc        t3, 598659
                  bltu         t2, s5, 65f
                  slti         t0, s4, 747
                  and          a1, t4, t0
                  slti         a1, a5, -544
                  bgeu         gp, t4, 62f
51:               lui          s7, 727417
                  bgeu         s5, a5, 59f
                  and          t0, t5, ra
                  sub          s4, zero, t0
                  sra          s9, a2, s7
                  bltu         s5, a3, 61f
                  beq          t5, s8, 75f
                  xor          s8, a4, zero
59:               ori          t5, a6, -1146
                  beq          sp, a5, 72f
61:               xori         a3, t4, 572
62:               ori          a6, s1, -56
                  srai         a1, zero, 11
                  andi         s8, t0, 138
65:               xor          a3, t6, t1
                  slti         t0, a4, -791
                  srai         t2, t2, 23
                  ori          gp, t6, -1842
                  xori         s11, a2, 1866
                  slti         a2, a7, -1781
                  srl          s9, a6, t5
72:               srai         s11, s2, 31
                  xori         t4, s8, 1307
                  srl          a6, s1, t6
75:               beq          a5, a6, 95f
                  xori         s1, a7, 1065
                  srl          a7, s10, s7
                  lui          s1, 482562
                  bge          a1, ra, 93f
                  slt          a7, a4, sp
                  sll          t5, s10, t2
                  slti         ra, t6, 452
                  srai         s1, t4, 23
                  sra          a4, gp, t5
                  slli         t2, s6, 22
                  or           a5, s1, a3
                  la           s6, sub_1
                  sll          a0, t3, a2
                  addi         s6, s6, 22
                  srai         gp, t4, 1
                  bltu         t1, s8, main_j4 #branch to jump instr
                  xor          a3, a5, t4
                  srli         ra, t6, 30
                  srai         a5, s10, 0
                  sra          s10, s11, a0
main_j4:          jalr         t6, s6, -22 #jump main -> sub_1
                  ori          a7, a2, 45
                  srai         t3, sp, 30
                  auipc        s6, 297357
                  sub          t2, ra, t0
                  srl          s3, s2, a6
                  andi         a4, zero, -1587
                  sltu         a7, s11, t0
93:               sra          s1, t3, s10
                  bge          s9, a7, 96f
                  la           s5, sub_1
                  lui          a3, 307212
                  ori          zero, s6, -1341
                  addi         s5, s5, 658
                  srai         s0, zero, 4
                  bgeu         ra, a6, main_j1 #branch to jump instr
                  sll          s1, gp, ra
                  slt          s7, s9, a6
                  and          t4, a0, t3
                  xor          a6, s4, a3
                  sub          a7, s5, a1
main_j1:          jalr         t6, s5, -657 #jump main -> sub_1
95:               slt          s0, t4, a2
96:               srai         a6, s4, 3
                  sub          a5, t6, t2
                  bne          sp, a7, 104f
                  blt          s1, t1, 101f
                  srl          gp, s10, s0
101:              slli         s4, a0, 20
                  sra          s11, a7, s9
                  auipc        gp, 925930
104:              and          a4, s8, zero
                  srli         a3, a4, 18
                  xor          t3, a2, t5
                  bgeu         s0, s0, 110f
                  add          a1, t2, s2
                  srl          s5, a5, s11
110:              lui          s3, 361910
                  bgeu         tp, s7, 127f
                  nop
                  blt          a3, ra, 117f
                  auipc        a0, 420610
                  and          s3, s4, gp
                  slt          a5, a6, a7
117:              blt          s7, a4, 132f
                  and          gp, s3, a0
                  slli         s7, a0, 22
                  srai         a3, a1, 7
                  bgeu         s5, a4, 140f
                  add          t0, s7, s2
                  sll          s11, tp, t4
                  bge          gp, gp, 126f
                  add          t5, s6, s0
126:              nop
127:              nop
                  nop
                  sltiu        s6, s1, -1833
                  bltu         a3, s3, 148f
                  beq          s11, gp, 150f
132:              beq          s11, t3, 150f
                  bne          s3, t4, 148f
                  and          a4, gp, s9
                  nop
                  bgeu         t2, a3, 155f
                  la           s4, region_0+1721 #start riscv_load_store_rand_instr_stream_1
                  xor          zero, gp, a5
                  slti         a7, s7, 993
                  lw           ra, 107(s4)
                  lh           a5, -163(s4)
                  lb           t2, -160(s4)
                  slt          a2, t2, s4
                  or           gp, a2, a1
                  addi         t3, s2, -961
                  sra          a5, t3, s1
                  sltiu        a6, a0, -1035
                  xori         t5, a2, -1426
                  sltu         t4, a6, a5
                  srl          tp, a2, s6
                  sb           t3, -62(s4)
                  srai         s7, a0, 16
                  addi         t2, t1, 635
                  sb           a2, 32(s4)
                  sb           gp, 244(s4)
                  ori          s1, t4, 922
                  sll          s0, sp, t1
                  sb           a4, 41(s4)
                  slti         s11, t5, 1587
                  sb           s4, 73(s4)
                  lbu          t2, 158(s4)
                  sh           sp, 1(s4)
                  lbu          s10, 132(s4)
                  and          a7, s10, s7
                  lh           t4, -171(s4)
                  xor          t0, s2, ra
                  lh           a2, 183(s4)
                  ori          gp, t3, 1139
                  sltiu        zero, gp, 834
                  nop
                  sb           a3, 176(s4)
                  sra          a5, ra, ra
                  sb           t4, -46(s4)
                  lbu          a1, -226(s4)
                  lh           a6, -195(s4)
                  andi         t3, tp, 133
                  add          s9, s4, zero
                  sb           a2, -106(s4)
                  and          a6, s6, s9
                  slti         gp, a2, 116
                  sra          a0, a1, s8
                  slt          gp, t0, t3
                  lb           s8, -4(s4)
                  lb           t6, 165(s4)
                  lb           a4, 245(s4) #end riscv_load_store_rand_instr_stream_1
                  sltiu        a5, a0, -1081
                  nop
                  beq          t6, t5, 145f
140:              and          a2, t3, zero
                  and          t4, s6, zero
                  add          gp, a7, s1
                  bne          tp, t0, 158f
                  nop
145:              sltiu        s9, s4, -1204
                  or           s9, t0, a7
                  addi         ra, t1, -1075
148:              beq          a1, a3, 165f
                  sra          a4, s4, zero
150:              sltiu        t2, s11, -601
                  srai         a7, s2, 26
                  lui          a6, 484408
                  sltiu        a4, s11, -293
                  andi         s1, t3, 65
155:              xor          t4, a7, s9
                  sltu         gp, t3, s8
                  lui          s11, 644824
158:              ori          a7, a0, -1844
                  sltiu        s3, s0, 809
                  bltu         a6, s3, 174f
                  sltu         a3, gp, s0
                  beq          a4, tp, 176f
                  nop
                  sra          a2, t6, s0
165:              srl          a7, s2, t4
                  beq          s9, t6, 173f
                  add          t0, s1, tp
                  ori          s11, a3, -103
                  bne          s8, sp, 182f
                  srli         s11, a6, 14
                  slt          gp, s11, a6
                  nop
173:              sub          s0, s11, s9
174:              add          t4, t3, a3
                  nop
176:              sll          a2, s0, t3
                  or           s11, t1, ra
                  slli         a0, ra, 0
                  and          t6, s7, ra
                  slt          ra, ra, s1
                  xori         a2, gp, -480
182:              sll          a3, tp, tp
                  and          a1, s0, s11
                  sub          t4, a4, a3
                  ori          zero, gp, 1664
                  ori          a1, s3, -1822
                  xor          s3, a3, s8
                  addi         t2, sp, 535
                  ori          t0, s11, -935
                  bltu         s11, s7, 209f
                  lui          s8, 787453
                  add          zero, s6, ra
                  xor          zero, t0, t1
                  sub          s0, zero, t4
                  sra          gp, s9, s0
                  srai         s11, tp, 17
                  sub          s8, a0, s3
                  andi         a3, a7, 1579
                  xor          t6, a1, s0
                  slt          s6, a7, t6
                  bltu         t2, zero, 217f
                  slt          a1, s6, a1
                  slli         a2, tp, 15
                  ori          s7, zero, 1875
                  sra          a6, a0, t0
                  ori          a3, s10, -1590
                  slli         a2, s1, 20
                  la           s7, sub_3
                  sra          s11, s6, s1
                  auipc        tp, 606460
                  sltu         s6, a0, a7
                  or           a0, a4, zero
                  addi         s7, s7, 786
                  andi         ra, s1, 1952
                  add          a6, a3, s1
main_j5:          jalr         t6, s7, -786 #jump main -> sub_3
                  bltu         a6, s3, 219f
                  auipc        s0, 407073
209:              beq          zero, sp, 216f
                  bne          zero, s4, 221f
                  slli         s8, a4, 30
                  sub          s10, gp, s1
                  bge          s11, s1, 225f
                  andi         t6, s1, 197
                  blt          s11, s8, 218f
216:              bne          a6, sp, 218f
217:              nop
218:              ori          s0, s3, 1958
219:              srai         s5, t4, 30
                  nop
221:              and          t3, a1, a7
                  beq          s6, a1, 241f
                  sltu         s7, a7, a5
                  bge          t4, gp, 241f
225:              srli         t6, t4, 19
                  srl          s8, t4, s0
                  bgeu         s7, a7, 247f
                  bgeu         t3, s2, 230f
                  sra          a4, s7, s0
230:              srli         a4, s0, 26
                  sltiu        t6, a3, 85
                  sra          t0, s5, s8
                  addi         a0, a2, 887
                  slti         s6, zero, 1671
                  ori          s6, a4, -953
                  and          t4, a6, a2
                  bne          a5, s4, 256f
                  srai         s8, s6, 17
                  srli         s5, tp, 4
                  bgeu         s8, s2, 244f
241:              nop
                  ori          s3, t2, -435
                  srai         s6, gp, 13
244:              sltu         s4, s1, a7
                  ori          s8, t3, 891
                  bne          a4, t1, 258f
247:              slti         s10, s9, -435
                  xori         a1, s1, -1682
                  and          s10, a1, t3
                  and          a6, s5, a5
                  slli         a3, zero, 10
                  bne          s1, a0, 257f
                  srl          tp, gp, s3
                  beq          s2, ra, 263f
                  auipc        s1, 442661
256:              srl          tp, s10, t2
257:              sra          s1, zero, t6
258:              bltu         t4, sp, 276f
                  add          s7, a3, t0
                  sll          s1, ra, s3
                  bgeu         a5, t3, 271f
                  slt          t3, sp, a7
263:              srai         a4, t4, 30
                  sra          a0, t2, s11
                  beq          a2, a7, 267f
                  add          t2, t0, a3
267:              slt          ra, s11, tp
                  sltu         t6, t3, t4
                  or           t2, a6, s5
                  lui          a7, 452131
271:              bltu         s4, s6, 273f
                  blt          s1, s7, 274f
273:              blt          s9, a3, 282f
274:              sltu         ra, a6, a6
                  slti         s6, a4, -1198
276:              addi         t3, t1, 1642
                  andi         s3, sp, 149
                  add          t6, ra, tp
                  and          s6, t6, s2
                  and          s3, a4, tp
                  addi         s9, tp, -746
282:              sltiu        s10, a5, -1174
                  beq          t1, s4, 297f
                  srai         tp, s9, 27
                  sub          t6, gp, a5
                  nop
                  srai         a7, s6, 26
                  bge          s9, zero, 302f
                  slli         zero, s0, 24
                  beq          a1, t6, 300f
                  blt          a3, ra, 310f
                  sll          s6, zero, gp
                  or           a0, tp, t0
                  addi         s0, s7, -1742
                  sll          s11, t0, t3
                  sra          a2, a6, t4
297:              bgeu         a7, a6, 310f
                  slti         t4, t0, -865
                  sltu         s7, t4, s6
300:              xori         s0, a0, 1319
                  andi         a6, t6, -424
302:              sltu         gp, ra, a5
                  sltu         s3, s1, s1
                  or           a4, s4, sp
                  slt          t4, s9, s8
                  srl          gp, s11, ra
                  bgeu         a2, a7, 319f
                  bltu         t1, t5, 327f
                  sub          zero, a6, a5
310:              sltu         t5, t2, tp
                  srai         tp, s0, 16
                  blt          s1, a1, 324f
                  or           s0, tp, gp
                  srai         s1, sp, 12
                  xori         s0, a2, 1550
                  bgeu         t0, a7, 323f
                  or           zero, s10, zero
                  lui          ra, 358728
319:              nop
                  ori          t4, a7, -627
                  sub          a6, a6, s9
                  sub          s8, s9, s4
323:              blt          a1, a6, 335f
324:              sra          a4, s10, zero
                  slti         s10, gp, 759
                  or           zero, s0, sp
327:              slli         a2, tp, 8
                  nop
                  bltu         tp, t2, 335f
                  sra          a7, s10, a6
                  lui          a6, 281383
                  srai         s7, a7, 5
                  sltiu        s1, a1, 1396
                  bgeu         a2, s3, 335f
335:              and          zero, s6, a2
                  la x2, test_done
                  jalr x0, x2, 0
test_done:        
                  li gp, 1
                  ecall
sub_7:            srai         a2, s3, 28
                  blt          gp, tp, sub_7_stack_p
sub_7_stack_p:    addi         s2, s2, -24
                  andi         s0, s7, -1832
                  sra          t3, tp, s4
                  sub          s0, tp, t5
                  add          a0, t4, gp
                  sra          s3, s5, a0
                  xori         t5, s3, 148
                  srli         a6, t1, 15
                  slti         a2, a7, 1464
                  sw           t6, 4(s2)
                  srl          s10, t4, a3
                  srli         t0, s2, 30
                  addi         t0, s4, -1577
                  slli         s9, a5, 24
                  srai         gp, a6, 24
                  addi         zero, a5, -1045
                  ori          s0, t6, 1207
                  or           a1, t3, s5
                  sltu         s4, s0, sp
                  xor          zero, t1, t0
sub_7_j12:        jal          t6, sub_8 #jump sub_7 -> sub_8
                  sltu         s1, s11, a1
                  andi         a2, a5, -875
                  nop
                  slt          a7, t3, s2
                  sub          s9, ra, s1
                  blt          t0, s7, 15f
                  beq          t3, sp, 25f
                  bltu         s7, s8, 15f
                  sra          t3, t2, a7
                  add          s7, a0, s4
                  bge          a2, tp, 11f
11:               sltu         s6, s1, gp
                  slti         a1, s10, 151
                  addi         tp, s7, -1075
                  xor          t5, s8, s9
15:               bgeu         t6, a6, 25f
                  ori          s11, t3, 388
                  auipc        s8, 627535
                  bne          s4, a7, 29f
                  slli         t5, t5, 19
                  slli         s8, t3, 28
                  slli         s11, t2, 29
                  sltiu        a4, zero, -1924
                  srl          t2, gp, s7
                  andi         t3, t4, 1114
25:               add          a0, t1, s5
                  lui          s7, 829386
                  slli         a4, sp, 21
                  blt          s11, a3, 38f
29:               xor          s7, s8, t3
                  add          s10, s1, a6
                  and          a5, s7, a0
                  bltu         a3, t2, 41f
                  bge          t1, t6, 34f
34:               sub          gp, s7, a6
                  bgeu         a4, s4, 40f
                  sra          gp, a6, s0
                  srli         s5, t2, 14
38:               srai         t3, sp, 23
                  andi         t5, a3, 212
40:               auipc        a3, 1025871
41:               addi         s11, t5, 425
                  sra          t3, t0, t1
                  nop
                  bgeu         t6, s11, 54f
                  slti         s7, t2, -1536
                  beq          s3, s11, 60f
                  bgeu         ra, s5, 59f
                  add          s4, s5, s7
                  sltiu        a0, zero, -1601
                  lui          a7, 786736
                  and          s0, s11, t5
                  slti         s3, s5, 1306
                  add          gp, t3, t1
54:               lui          tp, 170005
                  bne          sp, sp, 58f
                  nop
                  andi         t3, gp, 237
58:               slli         s4, a4, 5
59:               sll          a2, zero, s11
60:               sub          a1, t2, s6
                  xori         s3, s5, -506
                  addi         s6, s10, 1882
                  bgeu         gp, ra, 68f
                  slli         s9, a7, 4
                  sra          t5, t4, s5
                  beq          s1, t6, 68f
                  and          s4, a0, a4
68:               nop
                  srl          t0, t4, s0
                  sra          s4, s5, a6
                  slti         a1, a1, 1842
                  lw           t6, 4(s2)
                  nop
                  auipc        s4, 6673
                  xori         s9, a2, -1279
                  addi         s2, s2, 24
                  slli         a7, a6, 7
101:              addi x23, x31, 0
101:              jalr x23, x23, 0
sub_1:            slt          gp, s10, s0
                  andi         a5, tp, 295
                  addi         s2, s2, -16
                  srl          s0, a6, s2
                  lui          gp, 633836
                  add          a4, a5, t3
                  sw           t6, 4(s2)
                  sltu         s1, s11, t1
                  bne          t1, s11, 8f
                  and          a5, a6, a7
                  add          s8, s3, s2
                  sub          s0, s3, a3
                  and          t4, a2, s5
                  sra          s10, s0, s0
                  add          s4, s9, gp
                  bne          s10, t4, 16f
8:                andi         a5, s11, -488
                  sub          a7, s1, a2
                  blt          ra, s1, 22f
                  or           a1, t3, t2
                  bltu         t6, t6, 27f
                  bge          s2, a4, 28f
                  slti         a4, a7, 13
                  bgeu         zero, t0, 34f
16:               slli         s6, ra, 10
                  bne          s7, s4, 20f
                  sub          s9, ra, s11
                  bltu         s8, s0, 38f
20:               bgeu         a6, s4, 33f
                  bne          s10, s5, 36f
22:               andi         a5, s11, 1819
                  sltiu        a7, a6, -1710
                  bgeu         t6, t6, 37f
                  addi         a6, a5, -360
                  sra          a6, a1, t6
27:               nop
28:               xor          s8, s8, t3
                  andi         a0, s9, 797
                  beq          s8, s9, 32f
                  andi         ra, gp, 1096
32:               srl          s7, s4, a7
33:               bge          s0, s1, 36f
34:               xor          a4, t0, t5
                  bge          s3, a4, 40f
36:               and          s4, s4, s2
37:               slt          s5, a5, s0
38:               auipc        tp, 695787
                  auipc        s1, 1011087
40:               ori          s3, gp, 1609
                  lui          gp, 872830
                  lw           t6, 4(s2)
                  xor          a0, s11, s2
                  sltiu        s10, t3, 1302
                  addi         s2, s2, 16
                  slti         t5, tp, 1112
55:               addi x7, x31, 0
55:               jalr x7, x7, 0
sub_3:            or           s0, s2, a2
                  srl          a5, a6, ra
                  addi         s2, s2, -12
                  lui          s5, 764471
                  auipc        ra, 264270
                  sw           t6, 4(s2)
                  slti         gp, ra, -1795
                  and          s6, t5, s10
                  or           a1, s11, s6
                  la           a3, sub_5
                  xori         s8, a0, -1778
                  srli         s7, zero, 1
                  slti         gp, s3, -488
                  addi         a3, a3, -1000
                  add          t2, s3, a1
                  slli         a5, a3, 13
                  auipc        s11, 767653
                  xor          t2, t0, zero
sub_3_j6:         jalr         t6, a3, 1000 #jump sub_3 -> sub_5
                  la           t2, region_0+124 #start riscv_load_store_rand_instr_stream_1
                  nop
                  auipc        ra, 413153
                  sb           tp, 6(t2)
                  addi         s0, s5, 984
                  auipc        s10, 778936
                  sll          t4, ra, tp
                  sub          s8, zero, s8
                  sb           s6, -43(t2)
                  slli         tp, s3, 5
                  srai         s0, t2, 9
                  sb           s8, -60(t2)
                  lb           a1, 59(t2)
                  sll          a6, s10, t3
                  xori         a0, t6, 324
                  nop
                  lbu          t0, -18(t2)
                  sb           s0, -12(t2)
                  lbu          tp, -17(t2)
                  sw           ra, -60(t2)
                  lh           tp, -46(t2)
                  auipc        t3, 867802
                  srl          a2, zero, s3
                  lw           a2, -20(t2)
                  slti         a2, s2, -1011
                  and          a5, t6, a5
                  lh           a1, 40(t2)
                  xori         a4, a5, 201
                  sll          ra, tp, s1
                  sltiu        a0, sp, -1472
                  and          t5, a7, s6
                  andi         t6, s8, -121
                  lbu          s0, 41(t2)
                  and          s7, s1, s4
                  slt          t5, s6, s10
                  nop
                  sub          a3, gp, gp
                  slt          ra, t3, ra
                  auipc        t0, 41504
                  lui          s0, 139551
                  slti         s9, t6, -524
                  lb           a5, -57(t2) #end riscv_load_store_rand_instr_stream_1
                  la           s5, region_1+1452 #start riscv_load_store_rand_instr_stream_3
                  sw           a7, 40(s5)
                  sra          a2, a4, s1
                  lw           a0, 152(s5)
                  lhu          t0, -220(s5)
                  sra          tp, a3, ra
                  sll          ra, t0, t3
                  and          a6, s4, s3
                  sb           a2, 169(s5)
                  sra          s0, s1, tp
                  sw           a7, 60(s5)
                  lbu          gp, -58(s5)
                  lbu          a5, -207(s5)
                  addi         a0, s6, 192
                  and          s7, s2, a7
                  lui          a2, 266871
                  lbu          t2, 218(s5)
                  andi         ra, s9, -1151
                  sll          s8, t3, a2
                  lhu          a3, -44(s5)
                  sub          a4, a0, a4
                  add          tp, t1, s1
                  and          zero, a3, s5
                  andi         t0, s0, 1571
                  xori         s4, zero, 435
                  lh           s0, 140(s5)
                  srli         t3, t2, 27
                  lhu          ra, 218(s5)
                  sltiu        t6, t5, -785
                  lui          t3, 1004413
                  nop
                  lhu          gp, 2(s5)
                  lbu          a6, 150(s5)
                  slt          t2, a1, s1
                  nop
                  lb           a7, -178(s5)
                  sub          s4, t3, a4
                  lh           ra, 66(s5)
                  lb           zero, -33(s5)
                  sb           s9, -85(s5)
                  srl          t0, a2, s8
                  lbu          s11, 15(s5)
                  sb           s7, 29(s5)
                  lb           s6, -216(s5)
                  sw           tp, -184(s5)
                  sll          zero, s0, a6
                  sb           t5, 149(s5)
                  sb           s0, -173(s5)
                  lb           s6, -105(s5)
                  nop
                  sb           t6, -217(s5)
                  lui          s11, 940863
                  srai         a3, t3, 19
                  lb           t4, 165(s5)
                  lbu          gp, -29(s5) #end riscv_load_store_rand_instr_stream_3
                  la           a4, region_1+1565 #start riscv_load_store_rand_instr_stream_0
                  sw           t4, -5(a4)
                  or           t0, a0, s9
                  slti         a6, t0, 264
                  or           a7, a1, ra
                  slt          t4, s7, gp
                  lbu          a0, 56(a4)
                  auipc        t6, 886938
                  sb           s1, 30(a4)
                  sub          s6, a2, a7
                  sb           s2, 62(a4)
                  lh           t6, -45(a4)
                  sub          t0, s0, s6
                  sb           t6, -20(a4)
                  or           a1, s1, sp
                  lbu          ra, -47(a4)
                  sll          t5, t1, s6
                  srl          s11, ra, a6
                  slli         s11, s4, 14
                  sltiu        s4, a7, 404
                  slt          a3, a1, s7
                  sltiu        a1, a6, 561
                  lh           tp, -9(a4)
                  srai         t4, s10, 22
                  ori          s4, ra, -2045
                  lhu          s6, -55(a4)
                  sub          s4, a0, s7
                  srli         a0, a3, 4
                  lbu          s4, -60(a4)
                  lbu          s0, -44(a4)
                  sra          s11, s10, gp
                  lui          a0, 629819
                  lb           t4, 2(a4)
                  sb           ra, 50(a4)
                  lb           tp, 52(a4) #end riscv_load_store_rand_instr_stream_0
                  la           ra, region_1+468 #start riscv_load_store_rand_instr_stream_5
                  lbu          a7, -5(ra)
                  lh           t6, 16(ra)
                  sltiu        tp, s1, -1791
                  lb           a5, 4(ra)
                  slt          a2, s10, a2
                  lb           a0, -7(ra)
                  sw           tp, 12(ra)
                  or           s3, s1, s3
                  sh           t0, 2(ra)
                  sltiu        t4, a4, 988
                  sh           s0, -2(ra)
                  nop
                  nop
                  slt          s4, s9, t1
                  sra          s11, s5, s7
                  sub          s10, gp, a4
                  lbu          s4, -11(ra)
                  lbu          s7, -10(ra)
                  and          gp, a1, s7
                  sb           t2, 8(ra)
                  lb           s7, 1(ra)
                  xori         t0, s8, 1731
                  add          s1, a3, ra
                  sh           tp, 6(ra)
                  lbu          a0, 14(ra)
                  lbu          t5, 4(ra)
                  ori          s4, s7, -1897
                  lw           zero, -16(ra)
                  xori         s5, a7, -1850
                  lui          a4, 932576
                  lb           t2, 14(ra)
                  srl          s3, s2, zero
                  lbu          s10, -8(ra)
                  and          a2, a5, s0
                  sll          s0, s5, ra
                  addi         s11, s0, -1441
                  add          s0, s2, t4
                  lbu          gp, 1(ra)
                  sb           s10, 9(ra)
                  sb           s7, 9(ra)
                  sw           s10, 8(ra)
                  xor          a1, zero, s6
                  sw           a5, 0(ra)
                  slt          s9, t0, a0
                  sb           a1, -15(ra) #end riscv_load_store_rand_instr_stream_5
                  la           a2, region_0+696 #start riscv_load_store_rand_instr_stream_2
                  lbu          a7, 1(a2)
                  lbu          s4, 1(a2)
                  lh           s11, 8(a2)
                  andi         ra, zero, -1927
                  srai         t5, s8, 14
                  addi         ra, a2, -1892
                  andi         s10, ra, -1804
                  sltiu        tp, a4, -850
                  srai         a0, s9, 16
                  slti         t4, s0, -240
                  sh           s5, -12(a2)
                  ori          s3, zero, -736
                  add          s10, s2, gp
                  andi         a0, t0, 1407
                  or           gp, s11, s11
                  addi         s9, s9, 985
                  sltu         s3, s5, s9
                  lbu          ra, -1(a2)
                  lh           s1, 8(a2)
                  ori          t2, ra, 1977
                  lh           s4, -4(a2)
                  or           s3, t0, s11
                  or           ra, a1, a7
                  ori          tp, a7, 692
                  andi         s9, t3, 1092
                  lb           t3, 11(a2)
                  lb           gp, 13(a2)
                  sll          a4, gp, a0
                  sltiu        s11, s9, -32
                  sb           s5, 8(a2)
                  lbu          a1, 15(a2) #end riscv_load_store_rand_instr_stream_2
                  la           a6, region_0+1537 #start riscv_load_store_rand_instr_stream_4
                  andi         s3, s9, 976
                  lb           t5, 138(a6)
                  lb           a2, 224(a6)
                  sll          a0, t6, s1
                  lbu          s7, -163(a6)
                  addi         s10, a7, 653
                  auipc        a7, 424014
                  lh           t2, -129(a6)
                  lb           a1, 72(a6)
                  xor          s9, a5, s8
                  addi         s5, s10, -316
                  sll          s6, t3, s3
                  sll          ra, s11, t2
                  lb           s0, -256(a6)
                  lb           s4, -232(a6)
                  lbu          s9, 184(a6)
                  srl          s4, a7, a3
                  lb           a0, -190(a6)
                  lb           t5, 83(a6)
                  xor          t5, sp, a1
                  lb           a0, -94(a6)
                  lbu          a4, -90(a6)
                  sb           s7, 238(a6)
                  srai         s4, a3, 7
                  sb           t6, -118(a6)
                  lhu          s8, -193(a6)
                  addi         s1, a7, -1697
                  lbu          zero, 39(a6)
                  srl          s7, a5, s7
                  lbu          a7, 100(a6)
                  sh           a1, 221(a6)
                  lb           s5, 122(a6)
                  xori         a7, gp, 744
                  lb           s1, 240(a6)
                  slti         s0, t2, 1041
                  nop
                  sw           t4, -117(a6)
                  lbu          s3, -55(a6)
                  lb           s1, -114(a6)
                  sb           t0, -204(a6)
                  sll          s5, a2, t1
                  addi         s1, s6, 614
                  lb           zero, 48(a6)
                  sh           a6, 25(a6)
                  sb           t1, -127(a6)
                  lui          s11, 689866
                  srai         ra, s6, 6
                  lb           s9, -8(a6) #end riscv_load_store_rand_instr_stream_4
                  sra          s9, t2, s2
                  sra          a3, a1, s7
                  bltu         a1, s5, 14f
                  slt          s5, a0, t2
                  srai         t2, s5, 9
                  srl          s6, gp, t5
                  bne          s2, t4, 15f
                  sltiu        s7, a6, 854
                  addi         s5, t3, 389
                  andi         zero, s9, 418
                  sltu         t6, s0, s6
                  nop
                  srai         s1, t5, 10
                  add          a6, s3, a4
14:               xor          a4, t5, s4
15:               slti         a3, tp, -355
                  add          a7, t5, a0
                  bgeu         s1, s8, 31f
                  and          s0, a5, s7
                  bgeu         s1, t0, 27f
                  sub          s5, a5, a2
                  ori          t0, a6, 757
                  srli         t5, s9, 13
                  sltiu        a4, t6, -195
                  bge          zero, s6, 26f
                  sltu         ra, a2, a2
26:               nop
27:               nop
                  bgeu         a6, gp, 31f
                  sll          a2, t1, t0
                  bgeu         t2, s11, 45f
31:               sra          s11, s3, s2
                  sra          a2, t6, gp
                  sltiu        s9, s4, 1811
                  sltiu        zero, a7, 683
                  or           s10, ra, t0
                  or           a2, s9, a0
                  sll          tp, t6, a3
                  srl          a4, s1, sp
                  xori         a3, gp, -1010
                  slt          t3, a5, a5
                  xor          t5, ra, gp
                  srai         zero, a6, 25
                  xori         a7, zero, -1955
                  addi         t4, s7, -1702
45:               sra          s6, s8, a4
                  auipc        s3, 734396
                  auipc        t2, 294574
                  sll          s7, s7, gp
                  srl          a6, t1, gp
                  blt          t3, a4, 58f
                  sltiu        t2, s2, 1978
                  sub          s9, a6, a7
                  sltiu        a3, s9, 553
                  xori         t0, s0, -742
                  sub          a6, t6, t2
                  xor          t0, s5, a4
                  nop
58:               sltiu        a4, a5, 940
                  sltu         s5, a3, t5
                  bge          t3, a6, 72f
                  sltu         s5, s1, s1
                  sll          zero, ra, s3
                  blt          t6, a4, 67f
                  sra          zero, a1, sp
                  nop
                  srai         s6, s4, 1
67:               or           a0, tp, zero
                  sltu         t6, t4, s1
                  slli         a3, a6, 13
                  bltu         s3, a5, 80f
                  or           s5, a5, sp
72:               bne          t1, t3, 74f
                  bltu         s7, ra, 83f
74:               andi         tp, t5, -1024
                  add          s6, ra, s8
                  beq          a7, gp, 79f
                  slli         a1, a4, 15
                  or           t3, s3, zero
79:               sra          s0, t6, t3
80:               addi         t3, s0, 918
                  andi         s8, sp, -142
                  bne          t5, s5, 92f
83:               and          t3, s4, zero
                  srl          a0, a2, s5
                  nop
                  bge          sp, sp, 102f
                  beq          t5, a0, 99f
                  and          s3, t0, s5
                  sltu         gp, gp, sp
                  add          a5, t1, a2
                  bne          t4, t2, 101f
92:               slti         s0, a7, -696
                  bne          t4, a3, 108f
                  bne          t3, ra, 97f
                  lui          s0, 634123
                  xori         s11, tp, -2002
97:               slli         s5, s8, 13
                  blt          s6, t6, 116f
99:               or           t3, ra, a5
                  blt          s6, t3, 106f
101:              beq          a3, t6, 119f
102:              slt          s5, t0, a0
                  bltu         t4, a7, 120f
                  sll          a6, s7, s10
                  sltu         t3, a5, gp
106:              slli         a4, s9, 30
                  bne          ra, a4, 119f
108:              slli         a1, gp, 30
                  slti         a1, ra, 1825
                  ori          a2, a6, -1807
                  sltiu        t4, tp, 1237
                  or           ra, s2, s6
                  srli         t6, t0, 26
                  srli         s5, ra, 0
                  lui          ra, 539355
116:              blt          s0, s0, 119f
                  andi         s1, zero, -568
                  blt          s1, t6, 132f
119:              xori         s3, sp, -1893
120:              and          s6, gp, s5
                  srai         gp, a1, 1
                  sll          t0, sp, s3
                  slti         a1, s10, -1962
                  beq          s0, t1, 134f
                  sltiu        t0, t5, 598
                  and          s0, s3, s5
                  or           ra, a0, a7
                  beq          s10, gp, 136f
                  nop
                  bge          t1, s9, 147f
                  bltu         ra, t0, 139f
132:              srai         t5, gp, 26
                  addi         a7, a3, -1287
134:              xor          t5, a1, t5
                  sub          t6, a0, s11
136:              bne          a7, gp, 138f
                  sltu         a1, s2, a0
138:              sltu         s10, s2, s6
139:              bge          s3, t5, 149f
                  sltiu        a0, s5, -175
                  sub          s5, zero, s0
                  andi         a7, a0, -1751
                  bne          s11, a3, 146f
                  auipc        s10, 204476
                  slli         a4, s2, 5
146:              bltu         t2, s5, 150f
147:              beq          s1, zero, 149f
                  andi         s6, t4, -1132
149:              nop
150:              auipc        a1, 100442
                  slti         a6, a7, -487
                  srl          s1, a0, t4
                  slti         s10, s0, 1061
                  srai         s9, t6, 25
                  slt          tp, s9, t2
                  blt          a6, s4, 172f
                  xor          s10, a6, t1
                  srai         t3, s7, 12
                  srli         a0, ra, 25
                  nop
                  ori          s0, a3, 586
                  andi         a5, t5, -363
                  lui          t0, 833512
                  or           s3, a6, a3
                  or           t4, a4, a6
                  andi         t4, t4, -1796
                  sra          a2, s3, s10
                  xori         t5, s10, 189
                  slt          s5, gp, s3
                  srli         a5, sp, 28
                  xori         a2, a4, 1636
172:              sltu         a2, t5, a5
                  beq          t4, t3, 183f
                  slti         s4, a3, -905
                  auipc        a1, 855325
                  sll          a0, a7, s0
                  xor          a6, a5, t4
                  bge          a6, s3, 187f
                  nop
                  xor          ra, t6, a0
                  bge          tp, a5, 195f
                  addi         a5, a6, 1699
183:              sltu         a0, a0, s2
                  sltiu        s4, s3, -261
                  ori          tp, a6, -1484
                  sub          s0, s6, t6
187:              lui          s8, 424576
                  lui          s8, 940404
                  add          t5, s11, t2
                  sll          a3, s3, s1
                  and          s9, s9, t0
                  bge          s6, t3, 207f
                  slli         s5, s0, 27
                  or           s7, s6, a6
195:              sra          s7, a7, t1
                  slti         s11, s7, -2013
                  blt          t2, s8, 200f
                  lui          t3, 607371
                  sub          a4, s2, t1
200:              xori         ra, a0, -14
                  bge          s7, a1, 213f
                  slti         a1, t3, -1418
                  xor          s3, s3, a6
                  lui          zero, 126995
                  ori          t2, gp, 1579
                  slli         s0, a2, 8
207:              addi         s3, a7, 1522
                  slti         s5, t0, -954
                  addi         s4, sp, -1247
                  auipc        a5, 474908
                  sub          s0, t0, s5
                  bne          s1, ra, 220f
213:              auipc        s7, 860829
                  nop
                  auipc        s1, 437101
                  sltiu        s9, t2, -851
                  srai         t4, a3, 27
                  srl          t4, s5, t1
                  xori         a3, t2, 1835
220:              sltu         t0, t0, s8
                  xori         s4, s3, 1325
                  sra          s10, t5, t3
                  slt          a0, a4, tp
                  srli         a7, s6, 18
                  slt          a1, a2, t0
                  bgeu         s5, s11, 238f
                  and          s8, s1, gp
                  slli         s5, s10, 23
                  or           s8, a5, zero
                  sltiu        t6, s1, -108
                  slli         tp, s11, 3
                  addi         s9, t2, -521
                  beq          s8, t1, 251f
                  addi         s11, s8, 864
                  add          t4, t6, a2
                  sll          t2, t5, s4
                  blt          s9, a2, 243f
238:              sub          t6, ra, sp
                  sltiu        a5, a4, -568
                  slli         a1, s0, 26
                  lui          a3, 370744
                  add          t0, s7, sp
243:              sltu         gp, zero, s4
                  lui          a5, 592110
                  slt          ra, s11, a7
                  srl          a0, t1, s11
                  sra          s1, s0, a4
                  slli         t2, s0, 22
                  srli         a4, a6, 12
                  sll          gp, t4, t1
251:              beq          s7, a6, 269f
                  auipc        a4, 317555
                  bgeu         zero, ra, 265f
                  or           s10, ra, a4
                  add          a5, s7, s0
                  slli         s9, s9, 19
                  slt          s9, s2, sp
                  add          s11, s7, gp
                  and          t3, a2, tp
                  sll          s6, s7, t2
                  sra          s1, sp, s8
                  bne          t1, tp, 279f
                  srl          s7, t1, s8
                  addi         a3, t2, 1610
265:              srl          tp, a4, t4
                  bgeu         a4, a7, 280f
                  ori          s5, t0, 1490
                  slt          a0, a5, t4
269:              add          s8, s8, t1
                  beq          s10, s10, 280f
                  nop
                  ori          s9, a0, -1509
                  slti         s11, s9, 749
                  lui          s10, 857559
                  auipc        a2, 937588
                  slt          a1, a5, tp
                  lui          s0, 685811
                  addi         s4, t3, 696
279:              bge          t2, a3, 291f
280:              sll          t6, zero, t6
                  andi         a4, t6, 933
                  bltu         t2, a6, 292f
                  bgeu         gp, s4, 300f
                  slli         a6, zero, 14
                  bne          a4, t5, 288f
                  srl          s11, s11, s11
                  andi         a0, t6, -1409
288:              lui          s5, 503855
                  add          tp, s4, t3
                  lui          s1, 935816
291:              xor          t2, s3, s6
292:              and          s11, a5, s3
                  srli         s4, s4, 12
                  beq          s2, a7, 309f
                  sltiu        a6, sp, -1689
                  bne          s6, t4, 299f
                  beq          s2, a6, 305f
                  sra          s3, zero, ra
299:              ori          t4, s9, -695
300:              sltiu        s7, t1, 474
                  xor          s11, s6, tp
                  sltiu        a1, a4, 1468
                  lui          s1, 621994
                  sll          s10, s5, s10
305:              sltu         s0, t0, s3
                  slti         ra, sp, 1725
                  bgeu         s11, a5, 317f
                  srl          t0, t4, zero
309:              sll          s10, t0, t2
                  xori         s6, zero, -122
                  xori         t6, a1, -1217
                  blt          s2, t3, 322f
                  srai         t3, a2, 7
                  add          a3, t0, a4
                  auipc        tp, 39016
                  sltu         t5, t5, s10
317:              add          s7, s6, a7
                  add          s4, t5, a6
                  or           t5, t3, a7
                  slli         t5, s7, 27
                  srl          a2, s2, s8
322:              bge          s9, a7, 326f
                  addi         t4, ra, -1315
                  lui          t3, 963495
                  or           ra, t6, gp
326:              ori          t2, a0, -879
                  sll          t3, a5, a1
                  xori         t3, s1, -657
                  slli         s9, t6, 31
                  bne          s10, s4, 342f
                  auipc        s11, 268239
                  auipc        s4, 395287
                  blt          a5, t3, 343f
                  ori          ra, t4, -1034
                  slt          t5, a5, s3
                  sll          a1, s7, s9
                  add          s3, a7, ra
                  sltu         s0, a5, zero
                  add          s8, s2, s9
                  srai         a5, zero, 11
                  nop
342:              xor          s9, a4, a2
343:              addi         t5, t5, 1585
                  add          a1, ra, s4
                  bge          s10, t5, 353f
                  ori          a1, t2, 168
                  bge          a0, s6, 361f
                  nop
                  ori          a1, s9, -1418
                  auipc        s7, 275157
                  blt          t3, t2, 359f
                  srai         t6, s0, 9
353:              xor          a0, s1, t0
                  srli         s4, t6, 13
                  add          t5, tp, s0
                  sub          a6, a5, s2
                  slti         s0, s8, 2006
                  xori         t5, s3, 1753
359:              addi         s6, s0, 1249
                  or           a0, s5, s9
361:              blt          t2, tp, 371f
                  nop
                  bgeu         a5, t3, 381f
                  xor          s11, t5, s9
                  sltiu        a0, s5, -717
                  bge          ra, t2, 375f
                  slti         zero, s8, 1504
                  or           a2, s8, s10
                  add          s9, a3, t2
                  addi         s3, s11, -512
371:              bne          t2, zero, 381f
                  ori          t6, zero, -1686
                  blt          s8, s0, 381f
                  or           t0, s5, s0
375:              sltu         s6, t4, t4
                  sltiu        t5, s1, -697
                  xor          s6, t6, a6
                  blt          s3, s2, 380f
                  auipc        t5, 166367
380:              add          ra, s0, a7
381:              sltu         s0, s0, tp
                  and          a6, s9, s7
                  xor          t6, s9, s10
                  bne          s1, s1, 386f
                  and          zero, sp, gp
386:              xor          a1, s1, s7
                  ori          s1, t0, 1722
                  beq          s11, t0, 404f
                  sltiu        s4, a6, 110
                  xori         a3, a1, 339
                  slli         t5, a6, 25
                  slti         t6, a1, 1007
                  xor          a2, s4, t5
                  lui          s1, 883841
                  or           s8, t6, t2
                  slli         s6, s11, 31
                  add          t0, a1, s0
                  xori         t3, s8, 1183
                  nop
                  andi         gp, s0, -89
                  slti         s9, a5, 1211
                  sltu         s11, s3, s2
                  auipc        t3, 101830
404:              and          t2, tp, t4
                  add          a3, s0, a1
                  sub          t5, a7, t6
                  beq          s1, t0, 419f
                  add          gp, gp, s0
                  lui          s3, 722021
                  auipc        ra, 25662
                  sll          zero, a1, s11
                  xori         s9, s5, -1785
                  sll          tp, tp, t4
                  and          zero, s2, ra
                  andi         a3, s4, -185
                  beq          a5, ra, 433f
                  beq          t3, s8, 427f
                  bltu         t3, a6, 421f
419:              andi         a4, t1, -882
                  slti         s9, s7, 1607
421:              sltiu        a2, sp, -1163
                  bne          a6, gp, 436f
                  srai         zero, t5, 29
                  sltiu        s5, s0, -839
                  and          t2, t6, a1
                  bne          s1, s9, 438f
427:              lui          a3, 10675
                  bge          gp, s5, 445f
                  xor          a7, zero, a3
                  slti         zero, zero, 667
                  bne          t3, a2, 434f
                  sra          s5, ra, sp
433:              sltiu        t5, t2, -1221
434:              srl          a6, s11, s8
                  srai         s9, s4, 9
436:              srli         s0, s7, 30
                  slli         t6, s2, 3
438:              srai         a6, s11, 22
                  sub          a4, t2, s9
                  ori          t2, s5, -1979
                  addi         ra, a3, -1099
                  auipc        s4, 430035
                  beq          t2, zero, 446f
                  sll          t3, a6, a6
445:              and          t2, a7, s8
446:              auipc        s1, 57919
                  srli         zero, s3, 9
                  addi         zero, s10, 716
                  addi         s3, ra, -919
                  slt          s7, ra, t1
                  blt          s7, s1, 469f
                  srai         t6, t1, 30
                  sltu         tp, a5, a1
                  srai         s3, s8, 25
                  sra          s7, a1, s2
                  andi         zero, t2, -789
                  andi         s7, a4, -944
                  lui          s7, 970278
                  bltu         s9, s1, 471f
                  bne          s3, s3, 466f
                  add          s5, s8, a2
                  slti         s5, t1, 1651
                  sub          s0, a6, s11
                  srl          zero, gp, a4
                  sra          a3, s5, a7
466:              add          ra, a6, t6
                  bltu         s6, t3, 470f
                  bltu         s3, a7, 483f
469:              sll          a1, a1, s9
470:              slli         t3, tp, 10
471:              slli         s4, s7, 26
                  srli         t4, t3, 26
                  auipc        s3, 232049
                  slli         s7, s6, 10
                  xori         s10, s3, 434
                  bne          s6, a3, 491f
                  slti         s4, s0, 1186
                  bltu         ra, a0, 486f
                  nop
                  sub          s6, s5, s9
                  slt          s0, a7, t3
                  slt          s11, a7, s10
483:              sub          a6, t3, a7
                  bgeu         t5, t0, 492f
                  bltu         s9, t5, 499f
486:              slti         t6, gp, -638
                  slti         t3, t4, 1221
                  sub          s4, a7, s8
                  and          ra, s0, sp
                  slli         s9, s7, 28
491:              bne          s4, gp, 506f
492:              srai         t2, s11, 6
                  auipc        t2, 343376
                  ori          s1, s9, -921
                  slti         t2, t2, -175
                  slli         t5, t6, 9
                  srai         s7, s11, 12
                  sltiu        a0, t0, 1926
499:              sub          t5, s3, gp
                  bltu         s6, t0, 503f
                  sltu         t5, s9, s0
                  nop
503:              addi         t0, gp, 970
                  xori         s11, t1, 1926
                  bne          a0, t2, 511f
506:              sltiu        s11, s0, 1744
                  slti         t5, a3, -8
                  slli         a3, a3, 22
                  blt          a6, s5, 512f
                  lui          s1, 756001
511:              srli         a1, t6, 20
512:              beq          s4, ra, 529f
                  beq          zero, t0, 523f
                  bgeu         s7, a4, 518f
                  auipc        zero, 273365
                  ori          a1, s10, 1870
                  addi         a6, s11, 850
518:              sra          s11, a2, s1
                  srai         t3, s10, 6
                  slli         a1, t3, 12
                  xor          ra, s4, tp
                  slti         s6, a1, -1535
523:              slti         a5, s10, 1302
                  xori         a2, gp, -167
                  auipc        t2, 980341
                  and          t4, a5, s2
                  bge          a5, s2, 545f
                  ori          t3, tp, 1795
529:              xor          a3, a1, t4
                  ori          s5, zero, 237
                  srl          gp, s1, s11
                  bge          s4, s8, 535f
                  slti         t6, s7, -1987
                  sltiu        a1, a7, -1441
535:              srai         a3, s4, 25
                  srli         tp, s7, 10
                  slt          a4, a4, zero
                  or           s5, s6, tp
                  lui          t4, 991400
                  addi         s1, a1, -1763
                  bge          t4, a2, 551f
                  blt          s6, s4, 559f
                  nop
                  xor          gp, s10, t6
545:              or           s10, a0, s3
                  andi         s9, a2, 510
                  slti         s8, a1, -1589
                  xor          s5, a2, t1
                  srli         zero, t0, 17
                  sub          a2, a2, gp
551:              sltu         a0, s1, s2
                  xor          t3, s11, ra
                  addi         s9, t6, -930
                  bge          s3, a4, 556f
                  bge          a2, a6, 564f
556:              slti         t2, s5, -1587
                  sltu         t3, sp, s11
                  sll          s7, s8, t3
559:              sltu         a5, s11, t6
                  andi         t6, a5, 837
                  sub          a6, s4, t3
                  srli         t0, t0, 0
                  slti         a6, s10, -139
564:              bgeu         ra, s8, 576f
                  sub          s5, s7, s4
                  xori         t2, s9, 1816
                  slt          zero, s9, a1
                  xor          a1, s4, tp
                  bgeu         t6, a5, 579f
                  xori         s5, ra, -1778
                  srli         t3, s10, 12
                  auipc        a5, 865251
                  ori          a2, a1, 1140
                  slti         s4, a3, -1535
                  andi         s3, s6, 742
576:              sra          s1, a3, s5
                  or           a0, a7, t5
                  nop
579:              ori          s10, s4, -649
                  sub          t5, s0, tp
                  nop
                  addi         s7, s6, -1708
                  nop
                  sra          s5, zero, sp
                  sltu         a0, t5, s9
                  sub          s9, t1, s10
                  sra          ra, a3, a3
                  sltu         a6, t6, gp
                  or           s3, t4, s6
                  auipc        s11, 90559
                  sub          s8, zero, s8
                  ori          tp, s3, 947
                  sub          tp, zero, a4
                  addi         s5, s6, -741
                  sltu         s4, t5, s6
                  sll          s4, s7, a1
                  or           a0, a6, t2
                  lui          s7, 516887
                  or           s8, a4, s6
                  slt          s11, s6, t0
                  xori         a1, s3, 1569
                  sub          s3, s9, a3
                  and          tp, a7, t1
                  beq          s10, s3, 616f
                  srl          a3, s5, t0
                  xori         a2, s10, 1751
                  bgeu         t1, s0, 621f
                  beq          s7, t4, 623f
                  sll          t4, s9, a4
                  sltiu        a1, ra, -40
                  lui          a6, 650776
                  nop
                  sub          a1, a0, a3
                  xori         t5, t3, 151
                  bltu         t6, a2, 618f
616:              add          gp, a2, s10
                  bne          s5, a7, 625f
618:              addi         a5, a3, 59
                  bge          a1, s2, 631f
                  xori         s3, a3, 841
621:              nop
                  lui          a7, 990787
623:              srli         a0, a5, 6
                  xor          s1, a7, s6
625:              slli         zero, a5, 2
                  or           s5, tp, a3
                  lui          a2, 330039
                  srai         s6, t3, 1
                  srl          t4, s3, a2
                  srli         t2, s0, 14
631:              auipc        zero, 717737
                  sub          s10, s5, a4
                  addi         s8, sp, 331
                  slt          gp, t3, s5
                  slt          t4, t4, t0
                  bge          a0, s11, 648f
                  or           ra, a3, t5
                  or           s1, s11, t4
                  slti         a5, s10, 1221
                  beq          a7, s8, 650f
                  slti         s4, t2, 1219
                  beq          s8, s7, 644f
                  add          tp, s9, s5
644:              slt          a5, s4, s4
                  sra          t2, a3, gp
                  bltu         s11, zero, 656f
                  slti         t2, gp, -198
648:              sltiu        s10, t3, -311
                  or           zero, s4, t1
650:              sra          zero, zero, s11
                  xor          a6, t2, t1
                  sll          t4, a7, a1
                  and          t5, t1, s9
                  xori         s5, t4, -1348
                  bne          s0, t1, 671f
656:              bltu         t4, t5, 674f
                  srli         t2, a0, 6
                  sub          t2, s0, s8
                  bge          a0, a7, 677f
                  beq          s11, s5, 677f
                  xori         ra, a7, -1354
                  slli         a4, t5, 22
                  auipc        zero, 726255
                  addi         t0, s2, -520
                  sll          a3, s4, t3
                  slt          s6, t2, gp
                  sra          ra, s6, s4
                  slli         s11, zero, 11
                  auipc        s3, 800974
                  slti         a5, a6, -1949
671:              srai         s3, t6, 4
                  nop
                  nop
674:              add          s3, s6, t3
                  lui          s4, 12728
                  blt          t3, s10, 684f
677:              sll          a3, gp, a3
                  bne          t3, t1, 690f
                  bne          s0, a5, 689f
                  ori          a7, tp, -1096
                  sltu         a4, t4, t3
                  slt          a3, a4, s9
                  nop
684:              or           s3, s8, sp
                  slli         s4, a6, 31
                  blt          t3, s1, 689f
                  beq          a1, s9, 699f
                  slti         a6, s4, 222
689:              andi         t4, a0, -1862
690:              slti         t4, s4, -946
                  sub          t4, gp, t4
                  slt          t3, a5, a0
                  or           a7, s0, tp
                  sltu         s6, a6, t0
                  xor          a2, s7, s8
                  srai         s9, s6, 19
                  lui          s8, 415646
                  bltu         s7, s10, 707f
699:              sltu         t3, s1, ra
                  nop
                  slti         s8, sp, 372
                  ori          a5, s1, -90
                  ori          s9, a7, -411
                  bgeu         t5, a7, 721f
                  sra          tp, s4, t3
                  bge          sp, a7, 716f
707:              srai         t6, a7, 28
                  slt          t4, s10, a1
                  addi         s11, t5, -1701
                  srli         t0, s10, 12
                  sltu         zero, t6, a7
                  sltiu        gp, s0, -1196
                  xor          a5, sp, t2
                  bgeu         sp, gp, 717f
                  xori         a2, s7, -468
716:              addi         s0, t4, 1852
717:              xor          s1, s11, tp
                  addi         s7, a5, -1718
                  bgeu         t1, a0, 729f
                  blt          t6, s1, 728f
721:              srl          s8, s1, s3
                  sll          s0, t0, t2
                  bge          t6, s1, 738f
                  ori          t2, t6, 693
                  srli         s8, t3, 13
                  bne          s6, t4, 729f
                  lui          zero, 555452
728:              lui          s8, 310300
729:              addi         s7, t6, -1233
                  nop
                  srai         t0, t6, 9
                  bgeu         s4, t0, 740f
                  xor          t4, s1, s9
                  sltiu        s9, a0, 1870
                  addi         t5, s7, -1230
                  or           a3, a4, t0
                  slti         a2, s11, -424
738:              addi         zero, t0, 1121
                  beq          t0, a2, 743f
740:              slt          t4, t4, s4
                  slti         s0, a3, 453
                  srli         s1, s5, 23
743:              auipc        s5, 669357
                  addi         s0, gp, 1625
                  slti         a6, s6, -1677
                  xor          s9, s7, s4
                  lui          t3, 448724
                  srai         t5, ra, 13
                  bgeu         tp, s6, 761f
                  bgeu         s2, a6, 752f
                  xor          a6, s1, s9
752:              slt          s3, a7, t0
                  andi         s5, s8, -336
                  bne          t3, t6, 772f
                  slt          ra, a7, s7
                  srli         s11, t6, 10
                  sll          s6, a5, gp
                  sub          a6, s2, a0
                  srli         tp, t1, 0
                  beq          a0, s6, 770f
761:              slti         zero, a7, 100
                  srli         t0, gp, 5
                  srai         s3, s1, 8
                  addi         s5, ra, 1602
                  ori          gp, s4, -1004
                  xori         t4, t1, -423
                  slli         tp, t4, 26
                  bgeu         a6, a2, 783f
                  slti         t2, t3, -1282
770:              xor          s8, s5, t6
                  sltu         a2, a1, s1
772:              add          s10, gp, a4
                  bgeu         s7, gp, 783f
                  lui          a7, 347780
                  auipc        s9, 320592
                  srai         t5, s0, 9
                  srl          s3, a4, tp
                  xori         s8, a4, 1016
                  lui          tp, 991746
                  bgeu         s4, s5, 792f
                  srl          a0, s11, a7
                  xori         s6, s2, 1971
783:              andi         a3, gp, -1833
                  sra          tp, a4, t1
                  lui          s6, 413145
                  ori          t2, s1, -357
                  xor          s0, s10, s2
                  bge          a6, a5, 794f
                  xor          t3, a2, a7
                  or           a4, t0, t4
                  and          a1, a0, t6
792:              auipc        s8, 165685
                  or           s7, a4, s5
794:              xori         t2, a6, -1598
                  xor          t5, a7, t2
                  sll          s10, t2, t3
                  add          gp, s9, s3
                  slti         s1, t3, 126
                  nop
                  lw           t6, 4(s2)
                  or           s9, t0, s5
                  addi         s2, s2, 12
                  sltu         t3, s4, a3
                  auipc        a6, 67181
1083:             addi x11, x31, 0
1083:             jalr x11, x11, 0
sub_4:            addi         s2, s2, -56
                  nop
                  sw           t6, 4(s2)
                  sltu         t5, s11, s1
                  lui          a1, 547642
                  auipc        t4, 643428
                  srai         s5, t2, 22
                  xori         s7, s3, -1692
                  la           t3, sub_5
                  addi         t3, t3, 951
                  ori          t4, a7, 594
                  slti         t4, a3, 959
                  bgeu         s10, tp, sub_4_j7 #branch to jump instr
                  add          a5, gp, a6
sub_4_j7:         jalr         t6, t3, -951 #jump sub_4 -> sub_5
                  lui          s9, 365925
                  auipc        a0, 721799
                  xori         tp, t0, -1845
                  bltu         s11, t3, 9f
                  andi         t2, gp, 242
                  or           t2, ra, a3
                  and          s10, gp, gp
                  lui          t3, 636904
                  sub          ra, a2, s10
9:                sltiu        ra, t2, 1239
                  lw           t6, 4(s2)
                  and          s11, s0, tp
                  addi         s2, s2, 56
                  auipc        t0, 71115
                  and          s5, s3, s3
                  add          s8, s9, a0
                  add          s8, s9, gp
32:               addi x30, x31, 0
32:               jalr x30, x30, 0
sub_6:            addi         s2, s2, -56
                  slti         s8, gp, 947
                  sw           t6, 4(s2)
                  xori         gp, t0, -764
                  nop
                  srai         s10, a3, 25
                  sltiu        s6, t5, 1736
                  la           a3, region_0+338 #start riscv_load_store_rand_instr_stream_7
                  lh           t4, 56(a3)
                  sra          t0, s0, a1
                  lb           s4, -24(a3)
                  sh           gp, 30(a3)
                  andi         a6, s6, 2010
                  lbu          s3, 33(a3)
                  sh           s8, -48(a3)
                  sll          s10, a7, s2
                  sltiu        t2, s2, 646
                  sltiu        s1, s8, -278
                  slti         s9, s6, -706
                  sub          t6, t1, s6
                  srl          a0, s7, t6
                  add          t5, s8, s6
                  srli         a2, sp, 13
                  srli         s0, a5, 1
                  srli         s9, s1, 7
                  lb           t3, 53(a3)
                  lbu          s10, 29(a3)
                  lbu          t0, -16(a3)
                  lb           gp, -58(a3)
                  sb           s4, 57(a3)
                  lb           s0, 21(a3)
                  nop
                  lbu          a1, 36(a3)
                  srai         gp, s11, 25
                  lb           t5, 55(a3)
                  lb           s5, 25(a3)
                  sltiu        a1, s2, -1445
                  lb           s11, 43(a3)
                  sh           t4, -34(a3)
                  srli         t0, ra, 14
                  lb           t5, -51(a3)
                  auipc        s5, 111145
                  or           a7, t0, t1
                  lw           a4, -38(a3)
                  auipc        gp, 243626
                  lhu          a6, 56(a3)
                  sll          tp, a1, s1
                  sll          a6, s11, t4
                  add          s9, t1, s10
                  lhu          a2, -62(a3)
                  ori          s0, tp, -2009
                  sltu         s11, a3, t3
                  andi         s7, a2, 442
                  sw           ra, 14(a3)
                  lbu          a2, -11(a3)
                  or           t0, s8, a6
                  slli         a6, t0, 26
                  or           s3, s4, s2
                  sb           s0, 19(a3)
                  sh           t6, -8(a3)
                  ori          s4, t1, 676
                  sb           s8, 60(a3) #end riscv_load_store_rand_instr_stream_7
                  la           s6, region_0+1920 #start riscv_load_store_rand_instr_stream_0
                  auipc        s4, 955888
                  sltu         s5, a1, s4
                  sltiu        s9, a2, 937
                  sh           s3, -1234(s6)
                  addi         t4, a6, 697
                  lbu          a5, -273(s6)
                  lh           s1, -1910(s6)
                  lw           a3, -416(s6)
                  lb           a7, -587(s6)
                  lhu          s9, -1162(s6)
                  sb           s4, -1738(s6)
                  slli         a5, a0, 10
                  auipc        s10, 748031
                  sub          gp, a4, s1
                  sb           tp, -1195(s6)
                  andi         s1, tp, 587
                  and          s7, s5, s4
                  lbu          s1, -125(s6)
                  lb           a6, -361(s6)
                  lbu          t4, -1057(s6)
                  lbu          a3, -287(s6)
                  srl          t6, s11, t5
                  lbu          a3, -1205(s6)
                  add          t6, s4, a0
                  lb           t2, -227(s6)
                  srli         a2, s0, 3
                  lbu          t4, -450(s6)
                  lb           s4, -131(s6)
                  sll          a6, s6, s4
                  xor          s8, a7, s2
                  and          a5, s3, s1
                  slli         a7, s7, 16
                  sb           a2, -1067(s6) #end riscv_load_store_rand_instr_stream_0
                  la           t3, region_1+1033 #start riscv_load_store_rand_instr_stream_9
                  xori         tp, a1, -1646
                  sll          s6, zero, s7
                  sb           s4, -9(t3)
                  lh           s3, 1(t3)
                  lb           s5, 4(t3)
                  sw           t0, 7(t3)
                  sra          t0, tp, a4
                  srl          s9, s8, t0
                  srl          s9, sp, tp
                  and          s5, s5, s1
                  xor          a1, s7, t4
                  sltu         a2, s0, s2
                  srl          a0, a0, t3
                  srai         gp, s3, 17
                  sltiu        a0, a2, 1036
                  ori          t5, s5, 816
                  lh           a2, 11(t3)
                  lb           t4, -11(t3)
                  lbu          a1, 13(t3)
                  lb           s4, -2(t3)
                  sw           sp, 7(t3)
                  add          s10, s0, gp
                  sb           ra, 11(t3)
                  sb           a2, 14(t3)
                  lb           s4, 0(t3)
                  andi         a2, a4, 1721
                  slli         s7, s7, 19
                  lb           a0, 5(t3)
                  sh           t0, 3(t3)
                  slti         a7, t0, 858
                  lh           a3, 3(t3)
                  lb           s5, 13(t3)
                  sh           a6, 9(t3)
                  add          a4, s2, s1
                  andi         s11, t4, 1964
                  lbu          a0, -10(t3)
                  lbu          a7, 11(t3)
                  slti         t0, a2, -1062
                  lb           a7, -6(t3)
                  sb           t4, -8(t3) #end riscv_load_store_rand_instr_stream_9
                  la           s11, region_0+1776 #start riscv_load_store_rand_instr_stream_10
                  srl          a7, s3, s8
                  lb           s3, -187(s11)
                  sb           s3, 10(s11)
                  lb           tp, -75(s11)
                  xori         t5, a7, -582
                  sub          s4, zero, a7
                  srl          zero, t3, s4
                  auipc        a7, 500680
                  xor          s8, a4, a1
                  sltiu        tp, a6, 1127
                  nop
                  add          tp, s1, s2
                  add          t5, t3, sp
                  lhu          s10, 136(s11)
                  lui          a3, 196266
                  srl          s0, a7, s0
                  lui          s8, 432344
                  lbu          tp, 196(s11)
                  sltiu        gp, t3, 1497
                  lb           tp, 40(s11)
                  lhu          t5, 32(s11)
                  nop
                  and          a5, a5, a0
                  sb           s7, -226(s11)
                  or           a6, s11, a1
                  nop
                  sb           sp, 141(s11)
                  lw           s1, 12(s11)
                  or           a6, t1, sp
                  sub          zero, t6, t5
                  andi         ra, s10, -782
                  nop
                  slti         a2, s4, 869
                  sh           tp, -204(s11)
                  sb           zero, -101(s11)
                  xori         a3, sp, -1557
                  sra          t5, t2, tp
                  lbu          t2, -121(s11)
                  lhu          s4, 36(s11)
                  lb           t3, 81(s11)
                  xori         a5, a1, 607
                  lhu          a2, -92(s11)
                  sb           t2, -137(s11)
                  lbu          a2, 19(s11)
                  lbu          s4, 109(s11)
                  addi         a7, s0, 1645
                  sltu         gp, gp, a4
                  lh           t6, 132(s11)
                  lbu          t0, -246(s11) #end riscv_load_store_rand_instr_stream_10
                  la           t3, region_0+664 #start riscv_load_store_rand_instr_stream_4
                  nop
                  sw           t0, -12(t3)
                  sub          s9, a4, s0
                  srli         s8, a4, 16
                  slti         ra, ra, 1526
                  sub          a4, s3, a6
                  xori         a7, gp, 1105
                  lb           a3, -7(t3)
                  lhu          ra, 8(t3)
                  sltiu        a3, a1, -1203
                  add          gp, t3, ra
                  sw           a0, 8(t3)
                  lb           zero, -12(t3)
                  lb           a6, 11(t3)
                  lh           t2, 10(t3)
                  addi         t4, s11, -1779
                  ori          a3, a5, -347
                  xori         s0, t5, 612
                  addi         a3, a6, 1960
                  xori         s0, a5, 1600
                  srl          s9, s6, s2
                  sw           a0, -8(t3)
                  ori          s0, s1, 559
                  sb           a0, -12(t3)
                  sra          gp, t2, a7
                  lhu          t5, 4(t3)
                  lh           a5, -10(t3)
                  or           a6, a4, a3
                  lb           zero, -11(t3)
                  lh           a5, 6(t3)
                  lhu          a0, 8(t3)
                  srli         a2, s1, 29
                  add          s0, a1, t6
                  sb           s5, 7(t3)
                  sra          a5, t3, a2
                  lh           s11, -14(t3)
                  or           a4, t5, s11
                  lhu          s4, 2(t3)
                  sb           t0, 14(t3) #end riscv_load_store_rand_instr_stream_4
                  la           s9, region_0+1567 #start riscv_load_store_rand_instr_stream_2
                  sltiu        t3, t6, 1924
                  sra          zero, s9, s0
                  nop
                  lb           t0, -9(s9)
                  addi         a3, s7, 1783
                  sub          s6, a0, s2
                  lbu          s8, 4(s9)
                  sb           s6, 16(s9)
                  lui          zero, 410449
                  lhu          ra, -11(s9)
                  sll          s10, sp, s5
                  srai         s4, a0, 16
                  lb           gp, -4(s9)
                  sb           a0, 6(s9)
                  lb           a6, 4(s9)
                  srli         t3, a4, 5
                  sw           s3, -7(s9)
                  lb           s0, 8(s9)
                  sb           a1, 13(s9)
                  lb           s11, 10(s9)
                  ori          tp, a4, -2004
                  lh           zero, 1(s9)
                  sb           t4, 13(s9)
                  lb           t3, 14(s9)
                  sb           ra, -12(s9)
                  sb           gp, 1(s9)
                  srl          s10, a1, t6
                  sll          a7, zero, a6
                  xori         s8, a0, -52
                  sub          ra, s1, s0
                  sh           a6, -1(s9)
                  lb           a2, 0(s9)
                  lb           t6, -13(s9)
                  lb           a0, -2(s9)
                  nop
                  sb           ra, -16(s9)
                  slt          a5, s8, s0
                  xor          t2, sp, s7
                  sb           s0, 10(s9) #end riscv_load_store_rand_instr_stream_2
                  la           s8, region_1+444 #start riscv_load_store_rand_instr_stream_5
                  lb           t0, -95(s8)
                  sub          s9, s1, t2
                  lw           t0, 236(s8)
                  sb           t3, 186(s8)
                  sb           a6, 7(s8)
                  sb           ra, -224(s8)
                  sb           s0, 253(s8)
                  sltiu        t4, s10, -659
                  slli         t6, s9, 12
                  lbu          t6, 3(s8)
                  addi         a6, a1, -804
                  sub          a0, s10, tp
                  lb           s4, 255(s8)
                  lhu          t6, -118(s8)
                  sll          t4, a4, a4
                  srli         ra, tp, 30
                  srai         a0, t5, 8
                  lb           s10, 197(s8)
                  lbu          a5, -2(s8)
                  lbu          t5, 177(s8)
                  lhu          s3, 62(s8)
                  sb           t2, 141(s8)
                  lh           a3, 178(s8)
                  lbu          a1, -67(s8)
                  sb           a4, -214(s8)
                  lhu          s5, -6(s8)
                  lb           gp, -93(s8)
                  sll          a7, a2, s0
                  lb           t5, -57(s8)
                  sb           zero, -138(s8)
                  xori         a7, ra, 1675
                  lbu          t2, -130(s8)
                  slli         a5, s10, 10
                  slti         s0, s2, 860
                  sh           tp, 180(s8)
                  lb           a4, -77(s8)
                  andi         s11, t6, 244
                  lh           s7, 166(s8)
                  srai         s6, a6, 29
                  or           s9, s2, s1
                  srl          tp, a4, s0
                  lb           s3, -169(s8)
                  lh           zero, 172(s8)
                  slli         s11, t6, 2
                  and          a2, a4, tp
                  sll          t0, s0, t3
                  xori         s3, a7, 1212
                  srl          t0, s6, a6
                  lh           s10, -50(s8) #end riscv_load_store_rand_instr_stream_5
                  la           t2, region_0+430 #start riscv_load_store_rand_instr_stream_8
                  or           s3, s8, s4
                  srl          s4, t1, t6
                  sb           s6, -15(t2)
                  lbu          a1, 37(t2)
                  addi         zero, a2, 694
                  sb           a2, -25(t2)
                  or           s0, s8, s5
                  sw           s11, 38(t2)
                  lhu          a3, -24(t2)
                  sh           s6, 0(t2)
                  lh           s3, 60(t2)
                  and          a6, a5, a7
                  sb           t0, -63(t2)
                  sub          s11, a5, t2
                  lbu          s0, 11(t2)
                  lhu          s10, 6(t2)
                  lb           s5, -58(t2)
                  lb           zero, 53(t2)
                  xor          t3, gp, sp
                  lbu          a6, 27(t2)
                  sltiu        s3, sp, -81
                  lbu          a1, 45(t2)
                  sb           ra, -61(t2)
                  lbu          a0, -55(t2)
                  sub          a6, a6, s5
                  lbu          tp, -12(t2)
                  srai         t3, ra, 27
                  sw           t3, 14(t2)
                  lh           t6, 22(t2)
                  lb           zero, -44(t2)
                  slli         s3, t2, 13
                  sll          a2, sp, a1
                  sb           s9, -57(t2)
                  sw           s2, -62(t2)
                  ori          s9, s9, -716
                  slt          tp, t2, s9
                  xor          a7, zero, t1
                  lbu          a2, -61(t2)
                  and          a3, sp, t2
                  lbu          a2, 17(t2)
                  srai         a3, tp, 11
                  sb           t6, -62(t2)
                  lhu          s11, 40(t2)
                  lb           s5, 19(t2)
                  sub          a3, s0, t6
                  sb           s6, 7(t2) #end riscv_load_store_rand_instr_stream_8
                  la           ra, region_0+941 #start riscv_load_store_rand_instr_stream_11
                  xor          s8, a0, s1
                  sb           t6, 4(ra)
                  lh           t6, 15(ra)
                  lb           a5, 13(ra)
                  sb           ra, -10(ra)
                  sb           s1, -12(ra)
                  xori         s4, s0, -725
                  or           t4, a7, s11
                  slli         s10, s10, 30
                  lw           a1, -5(ra)
                  lbu          t4, 13(ra)
                  xori         a7, ra, 1190
                  lbu          a3, 8(ra)
                  sltiu        a7, a0, -1125
                  lhu          t2, 7(ra)
                  nop
                  lb           a1, -9(ra)
                  sub          s0, s5, gp
                  lh           s5, -11(ra)
                  lbu          a3, 6(ra)
                  add          t3, s7, a4
                  slti         a4, zero, 243
                  lb           s10, 2(ra)
                  lb           a0, 0(ra)
                  xori         a7, tp, 1151
                  srl          a7, a0, a2
                  nop
                  addi         t4, s5, -370
                  sb           t2, -16(ra)
                  lb           s9, 4(ra)
                  lbu          s8, -2(ra)
                  srli         t3, s4, 17
                  lb           t2, 9(ra)
                  sltu         s0, s0, ra
                  slli         a5, t5, 19
                  lb           s0, -16(ra)
                  lbu          a3, 4(ra)
                  sb           gp, 12(ra)
                  andi         a3, s0, -1913
                  sub          s11, zero, t3
                  sub          s5, a2, ra
                  sub          a7, a6, s8
                  auipc        a7, 800590
                  lb           tp, -16(ra)
                  lb           t4, 14(ra)
                  addi         s5, t0, -906
                  add          tp, t1, t6
                  lb           a3, -8(ra)
                  srl          t6, t2, sp
                  lh           s1, -7(ra)
                  slli         s0, ra, 0
                  lh           s4, -13(ra)
                  add          s6, a1, t4
                  sb           t4, 8(ra)
                  lbu          a7, -15(ra)
                  sb           s11, -1(ra) #end riscv_load_store_rand_instr_stream_11
                  sltiu        s11, t0, 534
                  slti         s5, s5, -1238
                  bge          s9, a4, 16f
                  bltu         a6, t5, 15f
                  slli         t5, a1, 21
                  addi         gp, s0, 1107
                  bltu         sp, s2, 14f
                  srl          s9, t6, t2
                  blt          s4, t4, 15f
                  add          a2, s4, s11
                  slli         t6, s2, 1
                  srli         s7, s9, 29
                  addi         s10, s7, 58
                  bltu         a4, a0, 24f
14:               ori          s9, s5, 979
15:               and          a2, a7, a2
16:               sra          t3, a6, s7
                  addi         zero, a1, -1434
                  sra          s7, s5, s5
                  add          t4, a1, s6
                  lui          a7, 1023668
                  sra          s4, a1, s11
                  nop
                  auipc        a7, 83860
24:               bne          a5, ra, 35f
                  nop
                  nop
                  sra          a0, t2, gp
                  srai         a3, s2, 7
                  ori          a3, s10, 371
                  slli         t5, a0, 16
                  and          s1, zero, tp
                  sltu         s11, s11, s3
                  sll          s4, s8, a6
                  or           s1, s2, a5
35:               sub          a3, t5, gp
                  nop
                  bge          sp, tp, 48f
                  lui          a3, 257379
                  srl          a2, a5, a5
                  bne          s1, a6, 41f
41:               slt          t3, s7, a6
                  and          t2, t0, s1
                  slt          a1, tp, t0
                  beq          s5, t3, 54f
                  blt          s7, s2, 49f
                  bltu         s3, t6, 61f
                  auipc        t4, 644768
48:               lui          t5, 354474
49:               sll          a6, s0, gp
                  beq          tp, s1, 59f
                  nop
                  or           a3, s1, s5
                  slli         s11, s4, 25
54:               srli         t3, a5, 19
                  slli         s6, t1, 1
                  sra          s11, a0, t0
                  slt          s5, t5, s2
                  sra          t2, s9, a2
59:               and          a0, t4, s6
                  xori         s0, t1, -725
61:               slt          a7, t0, s9
                  add          a4, s2, a0
                  slt          s1, t5, s1
                  auipc        a4, 496166
                  ori          s5, s8, 674
                  bge          s2, s4, 84f
                  beq          s4, a7, 84f
                  bge          s5, sp, 70f
                  srai         s7, s2, 27
70:               sltiu        s0, s1, -1000
                  sltiu        t3, a1, -1971
                  blt          t1, s7, 92f
                  srai         t0, s10, 4
                  auipc        s4, 157560
                  or           zero, a1, s2
                  srli         s6, t3, 20
                  ori          tp, a5, 196
                  auipc        zero, 439015
                  bltu         s9, a1, 95f
                  sltu         a0, t0, sp
                  srai         s1, t0, 20
                  auipc        s3, 1023502
                  bltu         t3, a6, 90f
84:               sll          t5, a3, ra
                  bge          a1, s1, 97f
                  bge          a4, a7, 95f
                  ori          s9, t3, 572
                  sltiu        gp, s5, 967
                  auipc        gp, 239332
90:               sltu         s5, s7, a6
                  bgeu         s0, tp, 106f
92:               auipc        s11, 625240
                  blt          a6, t3, 97f
                  bgeu         s2, t5, 99f
95:               slt          s1, s2, a1
                  sltiu        a4, a0, 451
97:               slti         tp, a1, -537
                  or           s11, zero, sp
99:               slli         t0, s11, 11
                  sltiu        a0, a1, 1209
                  addi         s3, a1, -408
                  xori         s7, a1, -1026
                  sub          t3, t2, a4
                  sll          tp, s0, t5
                  bge          ra, s7, 117f
106:              ori          a7, t6, -731
                  sub          s5, zero, zero
                  sll          tp, a2, a1
                  srli         s8, a2, 18
                  sltiu        a1, s2, 389
                  xori         a6, ra, -430
                  addi         a3, t2, -1294
                  bltu         s7, gp, 124f
                  nop
                  lui          t2, 211545
                  srli         ra, ra, 22
117:              ori          a3, a0, -1746
                  sra          t0, tp, s6
                  add          tp, a1, a1
                  slli         s7, a2, 9
                  sltu         t3, s3, s6
                  ori          tp, s0, 1694
                  sltu         s5, s7, a2
124:              bltu         t0, s4, 132f
                  bne          a7, tp, 130f
                  add          s7, s4, a3
                  sra          s6, a7, t3
                  beq          s7, s7, 143f
                  andi         tp, a4, -1170
130:              addi         a6, a3, 369
                  or           gp, tp, s4
132:              srl          s4, s9, t5
                  xori         s1, t2, -940
                  srl          s8, a6, s6
                  bltu         a7, a1, 154f
                  blt          t4, t0, 147f
                  addi         s4, a7, 405
                  or           s1, a4, a5
                  xori         s0, a2, -69
                  slti         s5, gp, 610
                  slli         t6, a0, 10
                  slt          s0, t2, ra
143:              blt          t5, s9, 153f
                  beq          a6, s1, 155f
                  and          a3, t1, a7
                  addi         s11, t1, -1447
147:              auipc        s10, 130252
                  bltu         s11, s6, 162f
                  xor          a0, gp, s9
                  xor          a6, s9, a5
                  sltiu        t2, a0, -1351
                  and          t2, tp, s10
153:              srai         a6, sp, 22
154:              nop
155:              sltu         t6, s10, s10
                  andi         s8, t4, -2019
                  addi         a7, t2, -1139
                  slli         s9, s6, 24
                  bgeu         ra, a1, 166f
                  beq          s0, s3, 175f
                  bltu         sp, s1, 176f
162:              or           zero, tp, a4
                  sll          t6, s8, gp
                  or           gp, s1, s1
                  sll          t5, sp, t3
166:              auipc        t0, 489885
                  bne          t4, s5, 169f
                  sltiu        s9, s0, 1087
169:              bltu         s6, a5, 186f
                  slti         ra, a1, -1878
                  sub          s6, a5, t3
                  andi         s1, s0, -979
                  blt          t1, s7, 181f
                  bne          sp, s0, 193f
175:              bne          ra, s11, 179f
176:              slli         gp, s0, 20
                  sub          s5, s8, a7
                  and          s8, t3, a5
179:              or           s1, s10, s4
                  bne          s5, sp, 191f
181:              slli         t6, a2, 29
                  or           s11, a1, gp
                  slt          t2, tp, t6
                  andi         a7, t2, 1412
                  slli         a6, s3, 11
186:              slt          s5, t0, zero
                  andi         s9, sp, 1626
                  xor          s1, t0, s2
                  xori         gp, s11, 491
                  auipc        s1, 466468
191:              sltiu        t4, t1, -1048
                  slt          t3, s5, sp
193:              addi         s5, t5, -810
                  xor          s10, t4, s1
                  bgeu         t0, a6, 210f
                  xor          t3, a0, sp
                  blt          zero, s4, 208f
                  and          gp, ra, s9
                  srl          s0, s0, s7
                  lui          t2, 272696
                  lui          a0, 137070
                  add          a2, s1, s1
                  xor          ra, t3, a4
                  bltu         tp, a2, 216f
                  beq          s2, s6, 216f
                  bge          a0, t3, 213f
                  slli         a2, t4, 25
208:              sra          a3, a4, zero
                  sll          a3, a3, t3
210:              slli         a5, a0, 4
                  and          tp, a6, t2
                  bge          s0, s0, 217f
213:              and          a0, s4, a1
                  bne          s0, t4, 218f
                  srai         gp, s9, 28
216:              srai         s0, sp, 2
217:              srai         a7, a0, 8
218:              bgeu         s11, t1, 236f
                  blt          t4, t1, 220f
220:              sltiu        t0, s6, 1187
                  blt          ra, t3, 233f
                  add          s1, t2, a0
                  slli         s0, s11, 13
                  add          s8, s4, ra
                  sra          a5, sp, t3
                  slti         t2, s7, 1979
                  srai         s5, s7, 8
                  srl          s5, gp, gp
                  bne          s9, a7, 245f
                  or           s8, zero, s4
                  sltiu        s6, a5, 1851
                  nop
233:              add          a1, a3, a2
                  sltiu        s9, s4, 1413
                  srl          s5, zero, tp
236:              sll          t3, a5, t4
                  blt          s8, a3, 242f
                  srai         zero, s10, 22
                  xori         a3, s5, 1565
                  and          t6, s11, s6
                  bltu         zero, t5, 252f
242:              beq          s10, ra, 251f
                  add          s6, t5, t2
                  sll          t4, s6, s5
245:              nop
                  sra          gp, t4, s11
                  add          a2, s6, a4
                  add          a7, t6, s8
                  beq          s6, s11, 258f
                  bge          a4, s6, 258f
251:              beq          t1, t1, 271f
252:              nop
                  sll          a3, a4, t5
                  sra          a4, a2, s7
                  bltu         gp, s4, 267f
                  slli         s9, a6, 27
                  slt          a0, t0, a3
258:              sltiu        tp, t1, 1077
                  beq          a1, s2, 267f
                  nop
                  sra          a1, s3, s8
                  bgeu         s6, ra, 273f
                  slli         ra, a7, 11
                  srai         a6, a4, 21
                  slli         s9, s8, 19
                  slt          tp, a2, s3
267:              sll          ra, t5, t4
                  blt          s3, a4, 283f
                  slti         s8, s7, 90
                  sub          t4, s1, a7
271:              xor          s11, zero, t3
                  add          s5, s2, t4
273:              sll          s3, a4, zero
                  lui          s3, 426082
                  srli         s1, s2, 19
                  bne          t6, a5, 277f
277:              lui          t2, 917873
                  slti         a7, t1, -885
                  sltu         s7, a2, a6
                  lui          s10, 15306
                  bne          s2, tp, 292f
                  bne          tp, s5, 300f
283:              bge          t4, s3, 288f
                  slti         t0, a3, 19
                  sra          s1, t0, s9
                  lui          s4, 865722
                  sra          tp, t2, s6
288:              bltu         s2, sp, 299f
                  slli         s8, s6, 18
                  and          s1, a7, a6
                  add          a3, gp, s8
292:              slli         a5, zero, 2
                  slt          t5, a1, s10
                  blt          t0, a6, 306f
                  or           tp, s10, a2
                  xor          s4, s9, s2
                  slli         s7, t6, 4
                  auipc        a0, 385769
299:              xori         s6, t5, -1090
300:              bge          s9, s3, 302f
                  nop
302:              srai         a2, s11, 12
                  sltu         t2, s2, s4
                  slt          s7, a2, a0
                  bne          sp, t6, 315f
306:              sra          a5, s5, t0
                  lui          a3, 172145
                  blt          a1, t0, 320f
                  andi         s7, a4, -523
                  beq          a4, a6, 325f
                  slli         s7, a7, 5
                  slti         s3, t3, -99
                  nop
                  bge          a5, a0, 321f
315:              addi         zero, s9, 463
                  beq          t2, s6, 325f
                  auipc        s9, 244053
                  srai         s1, a0, 14
                  slli         t2, tp, 16
320:              auipc        a5, 438126
321:              addi         ra, s8, -340
                  sltiu        gp, ra, -850
                  srai         a4, a4, 25
                  slt          s6, a4, s1
325:              auipc        s4, 439252
                  xori         s6, t2, 1871
                  or           s3, s5, ra
                  auipc        s0, 295518
                  andi         a5, s1, 964
                  srl          ra, t3, zero
                  add          s0, s4, s9
                  blt          tp, t5, 343f
                  srl          a5, s10, sp
                  or           a4, t5, s10
                  srai         a0, t4, 29
                  beq          s5, sp, 353f
                  srl          s8, a7, s8
                  and          s1, a1, sp
                  and          s8, s8, a2
                  auipc        a7, 482839
                  sltiu        zero, t0, 1864
                  slti         tp, s8, 730
343:              auipc        t0, 594600
                  srai         s0, tp, 12
                  auipc        a1, 107983
                  srai         gp, ra, 24
                  bltu         s7, t2, 359f
                  xori         s1, s2, -671
                  srli         s11, a2, 17
                  auipc        a4, 1042809
                  srai         a6, s5, 15
                  or           s11, zero, ra
353:              sub          t2, zero, s2
                  sub          s5, s10, t6
                  slt          s0, zero, t1
                  slli         s3, s10, 3
                  addi         s6, a3, -1749
                  srli         zero, a4, 16
359:              sltu         a5, t1, a4
                  bgeu         s10, s11, 367f
                  bgeu         s4, s0, 377f
                  andi         a4, tp, 19
                  or           s7, t0, t1
                  and          t6, tp, s9
                  bne          a7, t2, 369f
                  bltu         sp, tp, 377f
367:              nop
                  andi         s0, s9, 1880
369:              sll          gp, s11, s3
                  auipc        a7, 798848
                  nop
                  sub          s7, s4, s0
                  sltu         t4, t0, a1
                  sll          a3, s8, a2
                  xori         a4, a2, -547
                  xori         s5, a6, -483
377:              bge          ra, t5, 382f
                  blt          s6, s11, 387f
                  andi         t6, s0, -1557
                  bge          t0, t1, 388f
                  srai         ra, t5, 20
382:              blt          a5, a1, 386f
                  blt          s9, a7, 403f
                  xor          a2, s3, s4
                  sll          s6, s7, s7
386:              addi         a6, ra, -5
387:              bltu         s2, s2, 401f
388:              slli         t2, a4, 15
                  slli         tp, s4, 2
                  bgeu         t6, t5, 409f
                  blt          a7, s5, 406f
                  srli         tp, a2, 20
                  or           zero, s2, s3
                  auipc        s4, 193773
                  sra          t3, t4, s6
                  addi         zero, tp, -1853
                  blt          s2, s9, 413f
                  srli         s4, s8, 29
                  sltiu        zero, s6, -1419
                  nop
401:              slli         s5, s8, 20
                  sra          a0, s6, s11
403:              beq          a1, t2, 407f
                  addi         a4, a1, 1933
                  sltu         a0, s5, s10
406:              bltu         a5, s2, 414f
407:              or           a2, a7, a3
                  srai         a6, t6, 26
409:              srli         s1, a0, 5
                  srai         s4, t0, 1
                  srli         tp, s1, 9
                  slti         a0, a2, -1259
413:              sltu         a3, t3, a0
414:              addi         s9, a1, 1041
                  xor          s3, s2, sp
                  srl          t4, t5, s7
                  sltiu        s3, s5, -926
                  srl          t4, s11, s6
                  lui          a6, 967617
                  lui          s0, 114844
                  bltu         s3, sp, 436f
                  auipc        a2, 852425
                  slli         a6, t4, 15
                  srai         zero, s1, 0
                  srai         zero, a2, 21
                  sll          a4, s9, s0
                  addi         s11, s9, 1916
                  bne          ra, t0, 443f
                  or           t6, t6, s1
                  sra          s4, s0, t4
                  srl          ra, zero, ra
                  sltu         s0, t1, s4
                  xori         t0, t5, -2013
                  or           s7, a2, s10
                  sll          t6, a6, s7
436:              slt          s5, a3, t6
                  sll          s5, s7, a6
                  addi         t5, s5, 722
                  beq          s7, s10, 450f
                  sll          a7, a7, s0
                  sll          a2, ra, t4
                  addi         gp, sp, 170
443:              sll          s1, s6, a2
                  slti         s5, a6, -622
                  add          a1, t3, t5
                  sltu         a1, a7, a0
                  sll          a6, ra, a6
                  ori          s6, ra, -514
                  bgeu         s0, s11, 461f
450:              auipc        s5, 283084
                  slti         a0, s6, -252
                  bltu         s0, sp, 469f
                  ori          zero, s10, -1848
                  srli         s1, tp, 5
                  add          s9, s11, s10
                  bge          s2, gp, 467f
                  and          s5, s3, a4
                  srl          s4, s3, s7
                  blt          s2, a6, 461f
                  and          ra, t5, a2
461:              and          s10, sp, a4
                  nop
                  andi         a2, a1, -661
                  srl          s3, s2, zero
                  bltu         s9, t4, 472f
                  andi         a7, a1, 1120
467:              slt          s0, a2, a2
                  sll          a1, a3, s10
469:              beq          s9, t0, 479f
                  auipc        t3, 16313
                  bne          s1, t2, 482f
472:              xori         a6, a1, -1421
                  addi         t5, s10, -985
                  blt          s9, a3, 483f
                  bgeu         t4, s3, 487f
                  slti         s5, s6, 1648
                  sra          s1, s6, a3
                  bltu         s3, gp, 483f
479:              beq          s7, s8, 484f
                  srl          s1, s2, a1
                  ori          t5, a6, 1149
482:              slti         s5, s6, 1573
483:              bne          s8, a0, 497f
484:              blt          s2, a0, 491f
                  xor          s5, a0, t2
                  or           a5, t2, a0
487:              auipc        s10, 356523
                  sra          s4, t5, zero
                  sltu         t2, a0, t2
                  sltu         a6, tp, s8
491:              srai         s5, s4, 5
                  auipc        s9, 963871
                  sltiu        t3, t5, 1360
                  sra          s6, sp, gp
                  nop
                  and          s11, s8, s9
497:              bgeu         t6, t2, 509f
                  sra          s4, a1, s6
                  ori          a7, tp, 190
                  slt          a5, s4, s5
                  sltiu        gp, t5, 1955
                  bne          s1, gp, 513f
                  xori         t5, ra, -486
                  add          a3, a4, s3
                  bne          s2, t6, 506f
506:              andi         tp, t3, 1182
                  xori         a7, s8, -1779
                  sra          a3, sp, s7
509:              srai         a3, tp, 10
                  ori          t6, s10, 865
                  ori          a6, s10, -1203
                  add          s4, a1, t4
513:              blt          a2, t1, 524f
                  bne          a4, s11, 533f
                  bltu         s0, s7, 535f
                  sub          t5, s1, s10
                  slti         a5, gp, -1482
                  addi         a4, a3, -591
                  slt          t3, sp, s11
                  nop
                  sub          a0, s1, gp
                  sub          s7, a6, a0
                  srli         t3, t3, 3
524:              xor          t3, t2, t6
                  srli         s9, s11, 21
                  addi         s10, s2, -1304
                  sltiu        ra, t6, -1221
                  slt          a5, s11, s8
                  bltu         tp, a7, 533f
                  slt          t4, s6, s4
                  sltu         s8, a0, t4
                  beq          sp, s3, 547f
533:              xori         t5, sp, 2032
                  sll          s0, t6, t2
535:              lui          ra, 406352
                  add          a6, t3, s4
                  sub          s11, t6, s6
                  slt          a0, s5, tp
                  sll          s1, a5, s7
                  sltu         t2, t0, s11
                  bne          s5, s4, 549f
                  sra          tp, a3, a5
                  add          ra, zero, ra
                  beq          s1, a5, 562f
                  addi         ra, s5, 1273
                  srai         s0, gp, 28
547:              blt          s1, s9, 556f
                  sltu         a6, t5, s7
549:              sltiu        t3, s5, 986
                  ori          tp, t0, -89
                  sltiu        s4, s0, -277
                  sltiu        tp, s8, 677
                  addi         tp, s9, 259
                  sra          a3, zero, ra
                  auipc        t0, 83275
556:              bgeu         s0, t3, 561f
                  auipc        t0, 476779
                  ori          a6, gp, -601
                  srai         s4, a3, 2
                  xori         t2, t5, 1854
561:              bge          ra, a1, 569f
562:              addi         ra, s3, -1364
                  xor          t0, s10, sp
                  bge          s8, ra, 568f
                  sub          a4, s0, s11
                  slt          t0, s6, s3
                  auipc        t5, 755455
568:              sra          t6, s4, s7
569:              xori         s1, a1, -594
                  slli         s9, gp, 30
                  bne          a7, a4, 589f
                  sltu         zero, s9, s11
                  srli         a3, a5, 25
                  bltu         s8, s10, 589f
                  and          gp, s10, zero
                  srl          tp, s10, a3
                  blt          s5, t4, 586f
                  bne          s9, s4, 582f
                  xor          zero, s11, t0
                  lui          a7, 411493
                  beq          s7, ra, 596f
582:              srl          a0, a6, a6
                  xori         a2, t1, -179
                  srli         s6, tp, 14
                  slli         gp, t0, 0
586:              bltu         s3, t2, 596f
                  addi         t4, t1, -400
                  beq          a2, a5, 593f
589:              nop
                  add          s1, a0, a7
                  bge          s6, ra, 593f
                  and          t5, t4, t5
593:              bltu         a1, a0, 604f
                  beq          zero, a5, 606f
                  srli         tp, t0, 31
596:              slli         s9, a0, 18
                  sra          a2, t6, t0
                  srl          s10, s2, t0
                  slli         a2, s2, 30
                  xori         a4, s4, 1017
                  slli         a3, t5, 29
                  ori          a5, a3, -175
                  slli         ra, a6, 8
604:              andi         s5, a1, -728
                  sra          s10, s0, a1
606:              sll          a2, a6, zero
                  nop
                  srli         s7, a4, 19
                  or           t0, s4, t2
                  sra          tp, s3, s9
                  srai         a5, t4, 20
                  blt          t0, a3, 627f
                  lui          t2, 766351
                  bgeu         a4, t4, 626f
                  sltu         a1, t4, ra
                  sltu         a2, s5, s6
                  auipc        a3, 123588
                  auipc        zero, 804334
                  lui          gp, 405319
                  blt          ra, s2, 631f
                  sltu         t2, a1, a7
                  bne          gp, a7, 629f
                  xor          s7, a4, t5
                  add          a7, ra, zero
                  srl          s10, t2, zero
626:              add          zero, s1, t2
627:              sll          a6, a2, s2
                  auipc        s3, 970275
629:              slti         s4, s9, -519
                  bltu         gp, t0, 638f
631:              sub          a4, sp, s10
                  bltu         s9, t5, 633f
633:              lui          s1, 991515
                  andi         t6, t5, -832
                  xori         s6, t0, 1698
                  bgeu         s8, t5, 643f
                  lui          t4, 675413
638:              bltu         t0, s0, 647f
                  auipc        t4, 500513
                  lui          t2, 596841
                  addi         s7, tp, -1270
                  bltu         a1, a1, 653f
643:              sltu         s8, a3, gp
                  bge          s9, s3, 660f
                  bge          t6, a7, 656f
                  bltu         gp, s9, 657f
647:              bgeu         t3, tp, 666f
                  bne          a4, s7, 662f
                  bgeu         s11, s7, 661f
                  lui          t5, 1011323
                  srl          s4, a6, s0
                  sub          t3, a5, zero
653:              xor          s3, sp, ra
                  beq          s6, s6, 674f
                  bgeu         a0, t6, 672f
656:              sltu         s5, t3, s6
657:              xor          t3, a2, sp
                  slli         a5, gp, 17
                  slti         t5, s4, -300
660:              andi         s10, s8, -1868
661:              srl          a1, t2, t2
662:              auipc        s1, 355659
                  sll          a2, t0, t3
                  beq          t6, s8, 676f
                  and          s11, tp, t5
666:              bltu         a1, s2, 686f
                  add          a5, ra, t1
                  sra          t2, a7, s7
                  add          s9, s1, a6
                  addi         a2, a3, 960
                  and          gp, s9, a4
672:              andi         t3, s10, 713
                  beq          t3, t0, 684f
674:              slli         s6, s10, 18
                  bltu         gp, a2, 686f
676:              srai         s6, a3, 16
                  xori         s8, t5, -770
                  andi         t6, s6, 881
                  nop
                  srl          a5, a0, a4
                  nop
                  or           s9, zero, t6
                  sra          zero, t3, a4
684:              bgeu         zero, s1, 695f
                  bne          t2, s6, 697f
686:              blt          zero, a1, 690f
                  bne          a7, s1, 706f
                  andi         zero, s2, 930
                  sltiu        a5, s5, -1782
690:              slli         s9, s1, 28
                  sltiu        t6, t2, -1047
                  slt          a6, a7, t3
                  auipc        s1, 947943
                  sltu         s7, s3, a6
695:              ori          t6, t4, 1164
                  nop
697:              bge          ra, s9, 702f
                  and          s6, s0, a2
                  add          t5, a2, s10
                  beq          s3, ra, 712f
                  bge          s8, t3, 715f
702:              nop
                  lui          t5, 323319
                  bgeu         a2, s7, 711f
                  beq          s4, t5, 714f
706:              bgeu         a1, zero, 708f
                  beq          s1, s5, 717f
708:              bgeu         s9, a1, 712f
                  andi         s11, a1, 1372
                  bge          s3, t1, 715f
711:              addi         tp, a3, 1088
712:              bne          s7, s8, 719f
                  slt          s3, s7, t0
714:              sll          t4, a0, t3
715:              srli         s1, t4, 30
                  nop
717:              sub          s11, a1, t4
                  xori         s0, tp, -756
719:              slt          s7, s7, zero
                  lui          s6, 729994
                  and          zero, zero, a1
                  xor          zero, t1, t6
                  or           a5, t2, a6
                  addi         t5, s5, 228
                  sll          tp, a7, s2
                  ori          t0, s1, 1867
                  xori         t5, gp, 1817
                  or           a1, s8, tp
                  srai         s9, a0, 31
                  xor          s4, s8, s9
                  bne          zero, s9, 746f
                  bge          s11, s7, 740f
                  blt          t3, t4, 734f
734:              sll          t0, s9, a1
                  bltu         a7, s9, 746f
                  andi         a7, s7, 486
                  blt          s5, zero, 745f
                  sll          a1, tp, a7
                  beq          s4, s11, 754f
740:              beq          s9, s6, 751f
                  sll          zero, s10, t0
                  bne          s8, s3, 760f
                  or           a0, a7, a0
                  auipc        a2, 716069
745:              sra          t2, t4, a2
746:              ori          a0, t2, -262
                  add          zero, gp, s9
                  xori         s9, t5, 57
                  xori         s8, a0, -154
                  add          s7, a5, t2
751:              xori         a2, s4, -737
                  auipc        tp, 259094
                  or           s0, s1, t5
754:              sra          t3, t0, a4
                  ori          s11, a3, 1550
                  sltiu        a6, a6, 1105
                  or           a0, s6, s3
                  bne          s11, s5, 774f
                  blt          a0, s11, 774f
760:              sltiu        a0, a6, 720
                  or           s8, t1, a4
                  auipc        s5, 834649
                  slt          s1, s3, s5
                  srl          s1, t0, a7
                  srai         s5, s8, 0
                  sub          t0, t0, s11
                  bne          a7, tp, 776f
                  sltu         a0, a0, s8
                  srai         a4, t0, 16
                  slt          s6, a3, s9
                  slli         t5, t1, 15
                  srai         s3, gp, 25
                  bgeu         a2, a7, 790f
774:              slli         t5, s11, 10
                  sll          s10, a3, a0
776:              sltu         t2, s7, t0
                  addi         a2, t4, 1648
                  lui          s10, 925643
                  slti         tp, s1, -424
                  add          a1, s3, zero
                  srli         a2, t4, 14
                  beq          s4, a6, 793f
                  sub          a2, a4, s2
                  bge          s0, t6, 789f
                  srl          a7, t3, a5
                  addi         a4, ra, -796
                  or           a7, tp, s5
                  blt          s0, s4, 800f
789:              and          s11, a2, t2
790:              bltu         tp, a3, 801f
                  sub          s6, s3, t2
                  xor          t0, t4, a4
793:              bgeu         s9, a4, 797f
                  nop
                  xori         t6, gp, 1062
                  slli         ra, a5, 5
797:              bne          a4, a4, 808f
                  auipc        s4, 599135
                  xor          t0, a5, s10
800:              or           s3, a4, a5
801:              bgeu         t6, s10, 808f
                  bltu         s1, t0, 821f
                  slli         a3, s5, 11
                  xori         t3, s10, -1386
                  sltiu        a4, t4, 1689
                  slti         gp, s7, 1720
                  bgeu         ra, s8, 827f
808:              bltu         s3, s2, 816f
                  srl          s9, s8, t5
                  sra          tp, a7, a0
                  slti         t2, t5, 2008
                  blt          s4, s4, 814f
                  slti         a4, gp, 117
814:              slt          t6, t0, t2
                  xor          a4, t3, a0
816:              and          s1, a1, s2
                  sltu         s5, t4, s7
                  beq          a2, t5, 829f
                  or           a6, t6, sp
                  srai         a3, a5, 17
821:              auipc        s1, 285977
                  slt          a7, zero, s9
                  sltu         s7, s11, t0
                  lui          a0, 368150
                  srai         s0, s9, 28
                  addi         a2, s6, -1003
827:              bne          s2, t5, 836f
                  ori          t3, zero, 1290
829:              xori         t6, a1, 968
                  andi         a5, s4, -1018
                  lui          a6, 56560
                  add          s5, t0, a3
                  slt          gp, s3, sp
                  srai         gp, s2, 20
                  bge          a1, t3, 836f
836:              xori         s5, a6, -1520
                  addi         tp, a6, 189
                  andi         tp, gp, -1693
                  slli         s3, t5, 19
                  bge          a1, s6, 858f
                  or           a6, s4, a4
                  sltu         s11, a4, tp
                  slli         s8, t0, 13
                  slli         a3, zero, 15
                  and          t4, t6, s1
                  lui          a2, 512894
                  auipc        a1, 450201
                  andi         t3, t4, -927
                  slt          tp, s8, s6
                  xori         a5, gp, -791
                  slt          s10, t2, a7
                  auipc        s5, 682188
                  slti         a0, a4, 1867
                  sltiu        t2, t2, -1419
                  bge          s7, t3, 862f
                  bltu         a1, a5, 871f
                  bge          s9, t5, 868f
858:              andi         t0, t1, 1975
                  srl          t6, t4, a0
                  srli         t2, t0, 23
                  ori          t6, a2, 969
862:              bltu         a6, t3, 870f
                  nop
                  bgeu         s6, s9, 874f
                  sltiu        a3, s4, 417
                  or           a0, ra, s6
                  xori         zero, s5, -1298
868:              srai         s1, sp, 15
                  bgeu         s4, a7, 878f
870:              auipc        s11, 1040234
871:              lui          a1, 1023470
                  bne          t4, a0, 887f
                  auipc        a4, 647685
874:              srl          s9, t0, t1
                  sll          a1, s2, t1
                  bge          t6, s11, 881f
                  blt          s11, a1, 894f
878:              bne          a6, a2, 890f
                  lui          t0, 300345
                  sltu         ra, s7, a4
881:              slli         s5, s11, 31
                  srl          s11, s2, a2
                  bne          s11, a0, 897f
                  sll          s7, a7, a6
                  bne          a7, a6, 900f
                  xori         s9, zero, 728
887:              ori          t0, gp, 381
                  slti         s9, s8, 951
                  lui          a7, 463619
890:              sra          t5, s7, a4
                  sub          tp, a0, ra
                  addi         t6, a5, -1153
                  xori         s0, s0, -1656
894:              bltu         s1, s1, 906f
                  xor          t5, t4, t2
                  srli         s5, t0, 15
897:              nop
                  slti         t4, s7, -1549
                  add          t5, s8, s2
900:              blt          s11, t5, 916f
                  bge          s9, zero, 905f
                  srl          ra, s4, tp
                  bgeu         s5, s3, 914f
                  slt          s7, zero, a2
905:              bltu         s6, a5, 915f
906:              or           a1, s11, t4
                  bltu         a6, t5, 916f
                  lui          s6, 389453
                  sra          s1, s0, zero
                  xori         s0, a5, 1569
                  slti         t3, s0, -675
                  add          a4, s4, s0
                  srli         s1, s5, 5
914:              xor          s9, zero, a1
915:              slti         a2, t4, 1662
916:              ori          s9, s6, -398
                  bltu         t2, t2, 921f
                  slt          s0, t2, s6
                  srai         t4, s6, 22
                  srli         s7, s7, 18
921:              blt          s11, tp, 936f
                  sub          s7, s11, zero
                  srai         s11, a5, 14
                  add          s5, s0, t2
                  xori         tp, s1, -460
                  bne          s5, gp, 946f
                  sra          s10, t2, a1
                  srl          s8, a4, ra
                  beq          a3, a0, 948f
                  bltu         t5, s3, 942f
                  ori          t4, a0, -1770
                  auipc        t3, 493135
                  srl          s6, a1, s10
                  nop
                  xori         s10, a6, -1264
936:              bgeu         s3, t4, 951f
                  slli         gp, s10, 16
                  lui          t0, 243898
                  srli         s5, t6, 7
                  srl          s3, t5, s1
                  srai         s1, a5, 26
942:              sltu         s3, ra, s4
                  srli         s6, gp, 2
                  lui          s4, 450255
                  beq          tp, s3, 946f
946:              sll          s7, a3, ra
                  sll          ra, a0, zero
948:              andi         s3, s11, 408
                  sltu         a1, s4, s8
                  auipc        t0, 313420
951:              add          t5, a0, s10
                  addi         a0, t6, -1398
                  xori         a2, a1, 1145
                  bne          a7, s10, 959f
                  xori         s6, a1, 224
                  slt          s6, a4, a2
                  sltiu        a6, s11, 1981
                  beq          a4, t5, 973f
959:              bgeu         a3, sp, 973f
                  slt          a3, s5, zero
                  sltiu        a2, zero, -1355
                  nop
                  sra          s8, s5, a3
                  la           a0, region_0+279 #start riscv_load_store_rand_instr_stream_1
                  lhu          a6, -55(a0)
                  sb           s7, 2(a0)
                  or           s0, a2, tp
                  sb           t5, -8(a0)
                  srli         t6, a7, 8
                  slt          ra, t6, s1
                  and          s11, s10, t1
                  addi         s6, s11, -1332
                  add          t4, a6, a7
                  lh           s8, 61(a0)
                  sltu         t3, t3, s8
                  lb           s7, -41(a0)
                  slt          s11, tp, s6
                  sb           t1, 18(a0)
                  addi         s7, s0, -484
                  xor          a4, s3, t1
                  and          t6, t3, s0
                  lb           s0, -16(a0)
                  sb           t0, -50(a0)
                  andi         gp, s8, -498
                  sb           a6, 40(a0)
                  sb           s6, 9(a0)
                  sw           gp, 61(a0)
                  lhu          s8, 51(a0)
                  lw           a5, -43(a0) #end riscv_load_store_rand_instr_stream_1
                  ori          t6, a0, -505
                  lui          s0, 187733
                  sra          s10, s8, s11
                  sub          a0, s11, s5
                  lui          s4, 834400
                  sltiu        a5, s5, 70
                  and          t6, s4, a5
                  sltu         ra, a6, a6
                  sll          tp, s1, gp
973:              sll          s5, s4, a3
                  xori         t2, sp, -308
                  xori         s3, s10, -543
                  bltu         t4, s2, 988f
                  sub          tp, s1, t6
                  slti         t2, s5, 610
                  srli         s9, gp, 2
                  la           t3, sub_9
                  xori         s10, s10, 331
                  sub          t2, a4, s9
                  addi         t3, t3, 1024
                  addi         s5, s7, 2008
                  add          a6, t3, t5
                  slt          a2, tp, a4
                  add          s5, s9, ra
                  bltu         a4, t0, sub_6_j11 #branch to jump instr
                  sra          s0, s2, a0
sub_6_j11:        jalr         t6, t3, -1023 #jump sub_6 -> sub_9
                  bltu         a6, t1, 990f
                  srl          t4, s6, a0
                  lui          a0, 979377
                  ori          t6, t6, 1635
                  or           t6, t2, s5
                  auipc        s0, 946461
                  bge          a6, s9, 992f
                  sltiu        a2, s7, -870
                  add          s5, t0, t0
988:              xori         a1, s6, 1465
                  xori         a3, a4, -1288
990:              srai         t0, a4, 25
                  or           a7, a7, gp
992:              slt          a3, t0, t5
                  sra          s5, ra, s7
                  srli         t0, t4, 1
                  srli         a6, s10, 21
                  sltiu        a6, t5, 414
                  addi         t6, gp, -1121
                  auipc        t0, 325574
                  andi         a0, s5, 1415
                  srai         s5, s3, 31
                  bltu         a3, s0, 1012f
                  sub          t4, t5, t1
                  lui          s6, 317692
                  slt          a6, a2, s8
                  sub          a0, sp, ra
                  slt          t0, tp, a6
                  sra          t3, tp, a2
                  bgeu         s5, t1, 1019f
                  auipc        a1, 132541
                  srli         a3, s11, 7
                  srai         t2, s6, 16
1012:             bltu         a5, a3, 1014f
                  nop
1014:             add          a6, zero, t6
                  srli         s9, a7, 3
                  srli         a4, a1, 18
                  and          s10, s8, t3
                  addi         s7, s10, -1448
1019:             sra          s3, t3, s4
                  sltiu        t3, a1, 1073
                  and          s8, zero, s0
                  xori         t4, t5, 651
                  auipc        s10, 608416
                  srai         a3, gp, 16
                  beq          s1, a4, 1043f
                  blt          t1, s6, 1038f
                  lui          a0, 714065
                  lui          s0, 597630
                  addi         a6, a0, -950
                  sll          s7, a4, s8
                  bgeu         a3, a1, 1047f
                  bgeu         s0, s4, 1043f
                  ori          t3, a2, 1786
                  or           t4, s1, a0
                  or           s7, t2, t0
                  or           s11, zero, s7
                  xor          s3, s3, s1
1038:             sltiu        a2, a0, 733
                  sltu         s0, s6, a3
                  srli         a1, a2, 11
                  bltu         zero, s2, 1058f
                  sll          a3, t2, a7
1043:             sra          s11, s0, s2
                  sltu         s8, t1, t2
                  slt          s10, a5, a1
                  slt          s4, a0, t1
1047:             add          s5, a0, s6
                  beq          a3, a3, 1053f
                  slti         t2, s3, -903
                  sltu         s11, s7, t4
                  andi         s10, s1, 1802
                  sra          s0, t2, s1
1053:             blt          s1, a6, 1060f
                  auipc        a6, 839612
                  nop
                  srl          t4, gp, s11
                  lui          s11, 305561
1058:             nop
                  slli         t0, a6, 11
1060:             ori          s10, t4, 31
                  slti         zero, s0, -361
                  blt          a4, tp, 1066f
                  or           s5, t2, a6
                  slli         gp, s9, 22
                  sll          a0, sp, s1
1066:             sltiu        a5, s5, -2014
                  lui          s8, 523828
                  auipc        zero, 873526
                  xori         s4, sp, 1348
                  or           zero, t4, a1
                  and          s4, t3, s10
                  slt          s1, s11, s4
                  sll          t0, t0, sp
                  srl          s5, a6, gp
                  auipc        a3, 406249
                  addi         tp, s1, -141
                  xor          s7, a0, s6
                  nop
                  sub          a2, t5, s4
                  srai         s1, s11, 1
                  or           zero, t2, a0
                  sll          a7, s5, s4
                  lui          t5, 348504
                  xor          t3, t4, s10
                  bgeu         s10, t6, 1093f
                  sltiu        a3, t5, -102
                  slti         a1, t4, -1601
                  addi         s5, a5, 205
                  sltu         t0, a4, s3
                  slli         s8, a4, 29
                  sra          a5, t6, s0
                  bltu         t2, a1, 1101f
1093:             slt          tp, a2, s3
                  auipc        a2, 890779
                  la           a3, region_0+460 #start riscv_load_store_rand_instr_stream_3
                  lbu          ra, -29(a3)
                  lui          a0, 3259
                  ori          tp, t5, 1899
                  sltiu        t6, t6, -1770
                  or           s1, tp, a4
                  lbu          t4, 3(a3)
                  add          t4, a7, a4
                  sb           t1, -13(a3)
                  addi         s11, s7, -1882
                  sh           sp, 14(a3)
                  xori         s10, ra, 456
                  lb           s0, -57(a3)
                  lhu          s1, -18(a3)
                  lb           a0, -63(a3)
                  sb           t1, 41(a3)
                  lhu          s6, 62(a3)
                  auipc        s4, 407506
                  sb           s5, -63(a3)
                  andi         s9, t1, 667
                  lh           s0, 2(a3)
                  lb           t0, 59(a3)
                  add          a2, s1, a6
                  slli         t0, a5, 7
                  lbu          ra, 53(a3)
                  sltiu        s1, a6, 93
                  lbu          a1, 0(a3)
                  sltu         tp, t5, t1
                  lb           s9, -43(a3)
                  lw           s6, 28(a3)
                  auipc        s8, 288361
                  auipc        s9, 766351
                  sb           t6, -26(a3)
                  slti         a4, a4, -1072
                  sb           s1, -46(a3)
                  sw           a3, -60(a3)
                  or           tp, t6, s5
                  sb           s3, 61(a3)
                  add          s6, s4, a3
                  lbu          a0, 41(a3)
                  lh           t5, -42(a3)
                  srl          a4, t6, s9
                  sb           a1, -45(a3)
                  auipc        a7, 421125
                  slti         a2, s0, -279
                  slt          s5, t5, tp
                  add          s9, s2, s3
                  auipc        gp, 112130
                  xor          a0, a1, sp
                  lbu          t2, 51(a3)
                  lb           a2, 47(a3)
                  andi         zero, s1, 916
                  or           a5, s2, s4
                  lb           s3, -10(a3) #end riscv_load_store_rand_instr_stream_3
                  bge          s3, a4, 1103f
                  srli         t3, tp, 30
                  beq          s6, s4, 1102f
                  blt          s10, a0, 1110f
                  nop
                  ori          s0, t0, 1359
1101:             auipc        s10, 710357
1102:             srli         s0, t0, 20
1103:             slli         t5, s3, 3
                  ori          t2, t4, -555
                  and          a4, t6, t4
                  sub          t3, t2, gp
                  ori          t4, a4, -147
                  addi         ra, s9, -751
                  srai         s6, s6, 6
1110:             bgeu         s9, s3, 1125f
                  slt          s10, a3, t1
                  sra          s8, sp, gp
                  bne          t6, t5, 1120f
                  bgeu         sp, s9, 1121f
                  nop
                  slt          s1, s10, t1
                  bne          gp, s10, 1129f
                  sra          s8, t3, t2
                  bgeu         gp, zero, 1137f
1120:             srl          s5, sp, s11
1121:             or           s10, s4, a6
                  auipc        t3, 197845
                  auipc        t4, 629052
                  sra          s11, s10, ra
1125:             bne          t0, s2, 1129f
                  slli         a7, a5, 11
                  srli         t2, s3, 6
                  andi         a4, a3, -1921
1129:             sra          a0, a3, gp
                  xor          t0, a3, t3
                  blt          s4, t1, 1150f
                  sltiu        s4, s4, -211
                  slti         t4, t4, -1621
                  slt          s4, a5, t5
                  sub          a1, s0, t4
                  sltu         s5, a1, s0
1137:             andi         s0, t2, -1416
                  bltu         s1, t4, 1152f
                  srai         s10, t4, 3
                  srli         ra, a7, 22
                  and          s5, a4, sp
                  andi         zero, s0, 1614
                  bge          a7, s6, 1158f
                  lui          s11, 27163
                  sra          t3, t5, tp
                  xor          a0, sp, s7
                  srl          s6, s3, tp
                  bltu         t1, ra, 1156f
                  lui          t3, 928522
1150:             lui          a2, 292648
                  blt          s6, s5, 1162f
1152:             bgeu         t5, t3, 1163f
                  bltu         t0, ra, 1157f
                  sll          zero, sp, s11
                  xori         gp, zero, -190
1156:             sub          s10, s2, sp
1157:             sub          zero, s7, s4
1158:             andi         s7, gp, 328
                  sltu         a3, s2, s1
                  srl          a7, t6, gp
                  srai         ra, s10, 9
                  la           a5, region_1+641 #start riscv_load_store_rand_instr_stream_6
                  add          a7, s3, s1
                  and          a6, s0, zero
                  ori          s6, zero, -1758
                  sb           s9, 1260(a5)
                  lbu          gp, 520(a5)
                  lh           t6, 567(a5)
                  sb           a1, 155(a5)
                  srl          t2, t0, s5
                  lbu          a7, -360(a5)
                  lb           t5, 412(a5)
                  lb           t2, 1330(a5)
                  lhu          ra, 841(a5)
                  sh           t3, 1183(a5)
                  slti         s1, a0, 204
                  slt          s4, a3, s6
                  sb           a7, 1326(a5)
                  slt          t3, t6, a6
                  or           s6, s7, t0
                  nop
                  sltiu        a6, a7, -232
                  lb           s7, 1300(a5)
                  sltiu        tp, s11, -138
                  sltiu        a3, s3, -574
                  lbu          s11, 250(a5)
                  sb           a1, -278(a5)
                  slt          s4, s9, s5
                  sh           gp, -107(a5)
                  lb           t0, -144(a5)
                  lb           tp, 530(a5)
                  slt          a3, a1, a2
                  sb           tp, -565(a5)
                  auipc        s5, 679969
                  sb           t3, 38(a5)
                  lhu          s7, 1307(a5)
                  auipc        t0, 329406
                  sw           a6, -45(a5)
                  xori         t2, s6, 1589
                  or           gp, a4, t3
                  slli         zero, s0, 15
                  lhu          s5, 361(a5)
                  slli         zero, s5, 4
                  slt          s11, t1, tp
                  add          a1, ra, s6
                  ori          zero, s11, -433
                  slt          s10, sp, t5
                  sb           t0, 805(a5) #end riscv_load_store_rand_instr_stream_6
1162:             and          s4, t3, t0
1163:             sltiu        t3, a4, 1213
                  addi         a4, a4, -867
                  and          tp, s1, s6
                  bne          gp, a7, 1175f
                  xor          s1, s6, s8
                  bne          t1, a6, 1176f
                  sltiu        a1, s3, 984
                  sll          a7, sp, t0
                  srl          a6, a7, s11
                  bge          gp, s3, 1174f
                  ori          s10, s11, -1536
1174:             bltu         gp, t4, 1194f
1175:             bltu         s4, tp, 1186f
1176:             sub          ra, t3, zero
                  beq          a3, a4, 1192f
                  bltu         tp, s6, 1194f
                  sltu         zero, s6, s8
                  or           a3, s0, s6
                  sltu         t2, t5, s3
                  add          tp, a7, s0
                  andi         s0, ra, -683
                  auipc        t0, 771241
                  sra          a7, s11, t4
1186:             ori          t4, a1, -866
                  andi         t6, s2, -193
                  sll          a1, s10, sp
                  lui          s7, 817829
                  slti         zero, s1, -86
                  sll          a1, ra, s11
1192:             lui          t4, 611430
                  blt          a4, a1, 1204f
1194:             nop
                  andi         s7, gp, 971
                  or           t0, t6, t1
                  srl          s11, s1, s3
                  srai         s3, t0, 19
                  sltiu        a1, s5, -1967
                  slt          s4, s7, s8
                  bltu         s10, a7, 1202f
1202:             sll          a0, t4, sp
                  slti         tp, s1, 1944
1204:             srl          t3, t5, tp
                  sll          a1, t0, a3
                  sltu         s5, s11, gp
                  bltu         t6, sp, 1217f
                  and          a7, tp, s9
                  ori          zero, t4, -318
                  slti         t4, s6, -120
                  blt          a3, s8, 1220f
                  lui          gp, 475417
                  slt          s11, s0, a6
                  bgeu         s5, s10, 1219f
                  ori          tp, t3, 1159
                  sra          s8, s11, t4
1217:             and          ra, a6, s10
                  beq          s10, s0, 1229f
1219:             or           a4, s4, t0
1220:             addi         t3, s11, -221
                  lui          t4, 826746
                  or           a0, ra, sp
                  or           gp, s7, a2
                  slt          gp, a6, a4
                  nop
                  sltu         a2, a1, a4
                  slti         a6, t1, 1138
                  addi         a7, s5, 1940
1229:             bge          t3, s9, 1241f
                  sltiu        a7, s9, 1718
                  andi         s11, s3, -1972
                  bne          t6, a5, 1249f
                  sltu         s9, a2, tp
                  sltiu        ra, t3, 106
                  srl          t2, a3, s6
                  ori          s1, tp, 1454
                  or           s8, t1, zero
                  srai         a5, a4, 8
                  bne          s5, t2, 1251f
                  beq          a5, s4, 1242f
1241:             bge          t6, a5, 1245f
1242:             add          s1, s5, s7
                  nop
                  beq          s9, s7, 1259f
1245:             beq          gp, t3, 1256f
                  bltu         a7, s7, 1261f
                  sltiu        s3, a4, -707
                  andi         t6, tp, 772
1249:             sra          s5, gp, t3
                  or           a3, zero, a5
1251:             bne          s8, a7, 1270f
                  and          a2, t5, t1
                  bne          a6, t3, 1258f
                  nop
                  blt          a1, s5, 1256f
1256:             auipc        s0, 919648
                  andi         a0, a5, 1416
1258:             bge          s0, s1, 1270f
1259:             bge          s2, a7, 1276f
                  slti         s9, tp, -1004
1261:             sub          zero, a5, a4
                  beq          s3, s6, 1266f
                  srli         t5, a7, 10
                  xori         t2, t6, 279
                  srl          a4, s4, s1
1266:             xori         s11, a6, 506
                  sra          s3, t3, t3
                  and          a6, gp, gp
                  bge          s7, t0, 1277f
1270:             ori          s0, s2, -1759
                  ori          a5, s8, -1378
                  xori         a7, s1, 1438
                  andi         t0, sp, 94
                  slt          s7, zero, s2
                  sra          a2, s9, s3
1276:             ori          s11, t0, 1641
1277:             sll          a4, a2, t2
                  sra          s10, s4, t6
                  slt          a5, t6, s2
                  xori         a3, a4, 1231
                  slt          a7, s8, s1
                  bge          t3, t1, 1300f
                  auipc        t6, 332167
                  xor          t4, tp, t4
                  auipc        s8, 124288
                  lui          a1, 578509
                  sltu         s8, s5, s1
                  bge          a6, s10, 1297f
                  slli         a4, a2, 12
                  sltu         ra, s10, s7
                  nop
                  xor          a7, s9, s0
                  addi         s11, gp, 1233
                  bltu         s10, a6, 1305f
                  xori         ra, s1, -174
                  srli         t3, a2, 1
1297:             and          a0, a7, s3
                  sra          t5, s6, t0
                  slli         ra, t6, 18
1300:             srl          s3, a4, s5
                  sltiu        a0, s4, 1560
                  xor          s6, a3, s3
                  ori          t4, s6, 2039
                  sltu         a6, s5, a5
1305:             srl          s6, t1, t0
                  sub          s10, t2, t0
                  ori          a0, tp, 179
                  xori         s7, a3, 441
                  andi         a0, ra, 964
                  xori         s0, a6, 939
                  bltu         s10, s3, 1318f
                  xor          s4, sp, t2
                  bne          t5, a7, 1333f
                  bgeu         a0, t6, 1324f
                  bltu         s3, a0, 1320f
                  nop
                  bgeu         tp, a2, 1332f
1318:             srai         s5, zero, 16
                  and          s9, tp, t0
1320:             sll          s9, a4, s11
                  srai         s5, a6, 15
                  srai         a7, s11, 23
                  bgeu         s8, a0, 1334f
1324:             sll          s9, t5, t5
                  xor          a7, a5, t0
                  slti         s7, t1, -815
                  srli         t6, tp, 16
                  slt          s11, zero, s3
                  xor          s3, s0, t1
                  srai         s4, sp, 15
                  sra          a6, ra, t3
1332:             nop
1333:             auipc        t6, 127831
1334:             sltu         s1, tp, a2
                  slt          s9, s5, a3
                  bltu         s8, a2, 1343f
                  auipc        s6, 885814
                  lui          s0, 90251
                  sra          s8, zero, a1
                  or           s10, a5, t0
                  xori         s11, s8, 1133
                  slti         s3, s10, 597
1343:             auipc        s6, 8681
                  bltu         a5, s3, 1356f
                  srl          a5, s5, s1
                  blt          ra, t0, 1357f
                  sltu         ra, s3, t3
                  bgeu         a3, a7, 1359f
                  xori         t3, t6, 1416
                  beq          s3, s8, 1364f
                  addi         a0, s9, -916
                  slt          s4, s2, t0
                  srli         a5, t6, 2
                  lui          t4, 806467
                  sltu         a5, gp, s8
1356:             ori          t0, s6, 168
1357:             srli         s0, s5, 26
                  slt          a2, s0, s3
1359:             blt          s8, t0, 1368f
                  sub          ra, t0, ra
                  srl          a7, a5, s5
                  beq          a2, s7, 1378f
                  or           ra, s6, a4
1364:             sub          s4, sp, sp
                  bgeu         a1, s0, 1373f
                  lui          s1, 588312
                  or           a2, a7, t2
1368:             bne          sp, a0, 1379f
                  bge          s7, s11, 1374f
                  ori          a4, s3, 558
                  andi         t5, a6, 215
                  srai         s9, s2, 21
1373:             andi         s11, s10, -375
1374:             slti         t0, s5, 1054
                  andi         a6, s1, 1597
                  sll          t3, a5, s3
                  auipc        a6, 542891
1378:             sltiu        ra, s9, -281
1379:             nop
                  xor          a6, a0, a6
                  xor          s7, gp, s2
                  add          s10, a5, t0
                  xori         t4, a2, -277
                  bge          tp, t0, 1399f
                  and          a3, t5, gp
                  or           s6, a6, t0
                  xor          t0, s8, a6
                  add          t2, s0, a1
                  lui          t6, 892875
                  xori         t6, s2, 1634
                  bge          sp, t0, 1399f
                  slt          ra, s7, s9
                  slti         s10, s6, 880
                  bltu         a3, t2, 1411f
                  xori         a3, s2, 1127
                  sra          a2, s1, a7
                  sltu         ra, t0, a3
                  or           s6, a0, ra
1399:             addi         s5, a1, -812
                  auipc        t4, 595961
                  or           s4, t0, tp
                  lui          s6, 154672
                  and          s7, s5, t2
                  xori         a2, t4, -738
                  xor          gp, s4, sp
                  or           s7, a3, s4
                  sltiu        ra, s8, -1744
                  xor          s6, sp, t0
                  xor          t6, s6, zero
                  slt          s8, s10, zero
1411:             sll          t2, s1, s10
                  nop
                  and          a2, s2, zero
                  blt          a2, t1, 1429f
                  sltiu        s6, s10, -795
                  xor          a7, a5, s10
                  slt          t3, s7, t5
                  sub          s4, s7, a2
                  bgeu         s3, ra, 1433f
                  add          t3, s7, t0
                  bne          a0, s7, 1433f
                  or           ra, s11, t6
                  sltu         s3, t0, t0
                  slt          s8, s0, s11
                  auipc        a1, 660016
                  slli         t5, ra, 15
                  beq          t4, a3, 1428f
1428:             and          a3, tp, a6
1429:             srai         ra, t5, 31
                  srli         a3, t4, 2
                  auipc        gp, 478456
                  ori          t2, t0, 656
1433:             add          a3, s11, s1
                  slt          s4, s3, s0
                  xor          tp, s4, s9
                  slti         zero, s10, 1726
                  slt          a4, s6, tp
                  sub          t5, a4, s0
                  sltiu        t4, s7, -1141
                  bne          t3, t4, 1445f
                  srl          s5, s0, s6
                  lui          a6, 632826
                  xor          s6, t1, t6
                  sub          s7, a5, t3
1445:             ori          a3, s0, -764
                  sra          s6, s3, gp
                  bge          t5, s1, 1459f
                  slti         s3, zero, -1063
                  slli         t2, zero, 14
                  auipc        s8, 851084
                  or           a7, t1, s5
                  andi         gp, s4, -184
                  xor          a5, a2, s11
                  xori         ra, a4, 1790
                  bne          a5, s8, 1464f
                  addi         s4, a7, -1290
                  nop
                  xori         a4, a6, 830
1459:             srli         s3, s1, 20
                  slt          s7, t0, s4
                  beq          gp, s9, 1465f
                  or           a7, t5, s0
                  or           a0, s9, s2
1464:             lui          a0, 723822
1465:             bltu         s2, a2, 1475f
                  srai         t3, s6, 9
                  sll          a5, a7, t1
                  srl          t3, a7, s2
                  xori         s8, t1, 63
                  auipc        ra, 695904
                  srl          s7, s11, t3
                  srai         t2, a6, 21
                  and          s9, a5, s0
                  ori          s4, tp, 1592
1475:             bge          s3, a6, 1484f
                  lui          s11, 461271
                  andi         s7, a7, 1276
                  slli         a1, t2, 30
                  lui          t5, 192414
                  sll          gp, a6, s8
                  andi         zero, sp, -1950
                  nop
                  bgeu         t1, s2, 1494f
1484:             and          t0, t0, s7
                  slti         s3, s5, 1412
                  sltiu        t2, s6, -791
                  xori         a7, sp, 1374
                  slti         s7, a7, -1894
                  bltu         t4, s11, 1500f
                  bltu         t5, t0, 1510f
                  slli         a1, s6, 21
                  xori         s0, a0, -174
                  slli         t0, tp, 6
1494:             xori         t5, a2, -1878
                  auipc        t3, 144637
                  slt          a6, ra, a4
                  sll          s8, a5, s6
                  beq          a3, ra, 1517f
                  sll          s0, a7, s0
1500:             srl          s9, t5, s7
                  ori          s3, t3, -1319
                  bltu         a1, ra, 1513f
                  sll          a0, s5, a1
                  add          a5, s7, s4
                  xor          a4, zero, t1
                  bltu         s2, s6, 1513f
                  add          s6, s2, tp
                  slt          s9, zero, ra
                  sub          s11, t2, ra
1510:             nop
                  and          s6, s1, gp
                  sra          a1, s3, a6
1513:             slti         s3, a3, 1521
                  add          a5, s7, s9
                  sub          gp, s9, a5
                  bltu         s2, s10, 1527f
1517:             srl          t5, a2, a5
                  srli         s11, t3, 25
                  sub          a1, s6, s10
                  beq          s6, gp, 1522f
                  addi         s4, a0, 1106
1522:             sll          tp, a7, t6
                  slli         ra, a4, 1
                  xori         t5, s7, 120
                  slti         ra, zero, -1205
                  slti         tp, zero, -593
1527:             sltiu        t5, t0, 326
                  or           s5, ra, s3
                  beq          s6, s9, 1537f
                  sltu         t3, s7, s8
                  nop
                  add          a4, a2, ra
                  lui          s10, 49755
                  slli         a3, t2, 22
                  slt          t0, s10, s2
                  slli         gp, s2, 27
1537:             xori         t0, t5, 1163
                  bne          a1, t4, 1550f
                  or           s9, s11, t5
                  addi         s9, s4, 331
                  slt          s8, t4, t2
                  lui          t0, 974927
                  slli         ra, s4, 10
                  bge          s7, a5, 1551f
                  srl          s0, s1, t4
                  add          a0, ra, a7
                  xori         s1, zero, 903
                  sll          s1, tp, zero
                  blt          ra, t5, 1551f
1550:             slt          a2, s4, tp
1551:             addi         tp, sp, 259
                  lw           t6, 4(s2)
                  slli         gp, s5, 16
                  addi         s2, s2, 56
                  and          s10, s6, zero
                  slt          s1, tp, t1
                  sra          s11, t4, s11
                  slti         tp, s6, 143
2119:             addi x12, x31, 1
2119:             jalr x12, x12, 0
sub_10:           addi         s2, s2, -44
                  xori         s0, gp, -472
                  nop
                  sw           t6, 4(s2)
                  xori         a5, s8, -779
                  or           a2, s9, s9
                  slli         s10, ra, 21
                  sltiu        a2, a4, 1355
                  addi         a6, t5, 744
                  sltu         gp, gp, a2
                  srai         t4, t2, 17
                  addi         a5, s5, 1543
                  addi         s11, ra, -1920
                  or           s11, a3, s6
                  lui          a7, 577414
                  sll          t5, s11, zero
                  andi         a0, a2, -517
                  xor          a0, a5, a4
                  beq          gp, a2, 15f
                  srai         a1, t1, 22
                  ori          t2, a7, 1916
                  sltiu        gp, sp, -1683
15:               blt          t2, s4, 30f
                  sll          a6, t0, a6
                  blt          s1, zero, 25f
                  auipc        s3, 710865
                  slli         gp, a7, 2
                  xor          zero, t6, s9
                  ori          a3, tp, 286
                  or           s5, t6, s10
                  srli         a6, tp, 24
                  lui          s7, 488497
25:               andi         s5, zero, 1173
                  srli         s8, a7, 23
                  sltu         s0, a5, t6
                  slti         a4, s5, 1391
                  and          a6, t6, a2
30:               srl          a5, t5, s10
                  andi         t2, a6, -472
                  srli         t0, ra, 25
                  slt          ra, t1, a1
                  beq          zero, a1, 45f
                  sub          a0, s8, tp
                  andi         a3, a6, 435
                  slti         s4, tp, 1326
                  nop
                  beq          t1, a3, 42f
                  beq          s6, zero, 44f
                  sra          t4, a0, t2
42:               sltu         t0, s10, s0
                  blt          t5, a1, 60f
44:               or           a3, sp, a2
45:               slti         a1, s10, 862
                  sltu         s11, s8, t3
                  bgeu         t5, a0, 58f
                  srli         t2, sp, 30
                  bge          tp, s10, 53f
                  xori         t3, s1, -625
                  and          s11, s0, s8
                  bltu         s9, s3, 72f
53:               auipc        s1, 335161
                  bne          t6, s10, 58f
                  nop
                  xori         s3, t0, -576
                  sub          zero, s3, sp
58:               srli         s8, t0, 26
                  lui          a3, 514604
60:               bne          a5, s9, 68f
                  srl          a1, t4, a3
                  xor          s7, s3, t5
                  xori         s5, s0, -745
                  nop
                  slti         t6, s7, 365
                  nop
                  andi         s11, t5, 1255
68:               addi         gp, s0, 997
                  srai         s4, s6, 22
                  xor          a6, a2, a4
                  srli         t4, s3, 4
72:               sltu         s5, a1, t4
                  sltiu        s4, s1, -1364
                  bge          tp, a2, 78f
                  slli         t4, s3, 30
                  sra          t0, tp, s2
                  beq          ra, t3, 80f
78:               ori          zero, gp, 1925
                  bgeu         t0, gp, 96f
80:               add          s4, s11, s5
                  ori          s10, t0, -1429
                  bne          s7, s11, 86f
                  or           a2, s3, t0
                  xor          a0, a7, t2
                  nop
86:               lui          t2, 224791
                  bgeu         a2, a3, 97f
                  bge          s2, s5, 89f
89:               slli         t3, a3, 11
                  ori          a5, s10, -1941
                  bgeu         t6, s5, 97f
                  lui          s5, 513685
                  nop
                  slti         a0, a2, 1319
                  slti         a5, s1, -1140
96:               sltu         s5, t6, s11
97:               addi         a0, a0, 1241
                  ori          ra, s7, 1147
                  xori         s11, s0, -1881
                  slli         s9, s11, 24
                  andi         s1, s7, -360
                  sll          a4, s5, a3
                  bgeu         s6, a4, 105f
                  sll          a7, a7, t3
105:              srl          a7, t2, a2
                  bltu         zero, s2, 109f
                  ori          a4, zero, -1992
                  beq          s1, s11, 109f
109:              sra          a0, sp, a3
                  srli         gp, s4, 13
                  lw           t6, 4(s2)
                  srl          t5, s3, gp
                  xor          s5, s7, t6
                  addi         s2, s2, 44
                  slt          a0, sp, t3
                  slt          a0, s0, s0
                  addi         t4, a6, -1156
                  ori          s11, s6, 1210
126:              addi x20, x31, 1
126:              jalr x20, x20, 0
sub_2:            addi         s2, s2, -12
                  slli         s1, s10, 24
                  sw           t6, 4(s2)
                  srli         gp, a2, 2
                  slli         s5, a7, 29
                  slti         t2, a0, -1987
                  sll          zero, s9, a5
                  la           s0, region_1+1406 #start riscv_load_store_rand_instr_stream_0
                  sb           t0, 75(s0)
                  xor          a4, s2, sp
                  lb           t0, 12(s0)
                  and          t3, s4, s5
                  addi         ra, a3, -380
                  lb           zero, 148(s0)
                  addi         t4, t5, -1622
                  srl          t4, s7, t5
                  sll          a0, t4, s7
                  sub          t4, ra, tp
                  nop
                  slli         s10, a5, 1
                  srli         t3, s7, 7
                  xori         gp, tp, 343
                  slli         a2, a5, 6
                  addi         s4, s4, -1514
                  lb           s7, 10(s0)
                  sb           a6, 229(s0)
                  sb           s7, -173(s0)
                  lbu          a1, 163(s0)
                  auipc        t6, 335815
                  srli         a1, s5, 14
                  srl          s9, s1, a7
                  sub          s7, t6, a4
                  lh           s9, -58(s0)
                  lb           s4, -247(s0)
                  lbu          s1, 3(s0)
                  lui          a0, 194868
                  slt          gp, s3, s5
                  sb           s3, 55(s0) #end riscv_load_store_rand_instr_stream_0
                  slti         a1, s0, 175
                  bne          s11, t0, 12f
                  bge          s4, s8, 6f
                  sll          s0, s9, s9
                  sra          zero, a2, sp
                  bge          ra, zero, 14f
6:                andi         zero, s3, 1806
                  addi         ra, a0, 724
                  addi         gp, a3, 718
                  beq          gp, t2, 10f
10:               lui          gp, 36044
                  sltu         s9, a7, a3
12:               andi         a6, a6, -2010
                  or           a5, s5, tp
14:               ori          t6, a3, -1855
                  bltu         s5, a6, 34f
                  bne          s2, s10, 32f
                  sll          a4, a5, a0
                  andi         a4, tp, -45
                  sub          t3, s8, t3
                  sra          s7, sp, s0
                  auipc        a7, 249359
                  bge          a5, s5, 39f
                  or           a5, t2, t1
                  bgeu         s8, s1, 36f
                  xor          s7, sp, a6
                  ori          gp, s10, -1885
                  beq          a0, a6, 36f
                  srli         t3, s1, 20
                  or           a7, a6, a3
                  xori         a3, a1, 1664
                  sltiu        a2, ra, -1617
32:               xor          s0, gp, t5
                  auipc        s9, 1023403
34:               slt          s0, s3, s5
                  and          s9, t2, s0
36:               xor          ra, zero, s1
                  srai         a2, s7, 27
                  xor          a0, t0, s11
39:               srli         gp, s8, 30
                  bltu         s9, a5, 53f
                  ori          s10, s3, -236
                  bge          s7, a1, 50f
                  lui          a2, 939949
                  sra          t6, a0, s6
                  ori          t6, a0, -786
                  srli         a0, t3, 10
                  beq          gp, s8, 62f
                  sra          t2, s11, a5
                  xori         s8, s10, -1800
50:               andi         s0, t0, -766
                  xori         s6, gp, -717
                  and          gp, a6, t1
53:               ori          s7, a4, 831
                  sltu         zero, s4, a7
                  auipc        a7, 728810
                  bltu         t6, s1, 75f
                  sltiu        t5, t1, 1785
                  add          s3, t0, zero
                  add          s8, s8, s2
                  ori          t3, t1, -629
                  or           a2, s2, s5
62:               srai         a6, t1, 29
                  sltu         s10, t1, tp
                  blt          s8, s10, 67f
                  sra          t0, s4, a5
                  blt          s1, t0, 67f
67:               slti         a2, s1, -1035
                  srl          a5, s3, s9
                  sltiu        s9, s8, -460
                  sra          t0, a5, t4
                  auipc        s7, 24654
                  addi         zero, s6, 537
                  sll          s5, s6, s8
                  andi         a7, t5, 134
75:               ori          t4, t4, 1743
                  sub          a5, s0, a7
                  xori         s11, s10, 979
                  nop
                  sll          s10, gp, s8
                  sll          s10, t6, sp
                  bge          a3, s10, 101f
                  blt          s8, s7, 84f
                  lui          s6, 161390
84:               bne          t6, t1, 86f
                  addi         s0, s1, 1045
86:               srl          t0, s8, t0
                  slti         t2, zero, -781
                  srli         s1, s8, 23
                  sub          a2, s5, s2
                  slt          s5, s11, a7
                  sra          t2, tp, s9
                  nop
                  xori         t4, t6, -1906
                  and          s11, t4, t2
                  sltu         a2, sp, t2
                  sub          t6, a2, a2
                  andi         t6, a1, -1601
                  bge          a4, s0, 102f
                  sltu         s8, t1, s10
                  bltu         a5, s9, 111f
101:              sltu         s4, s9, t0
102:              add          s0, zero, s4
                  slti         t2, s2, -1509
                  addi         s7, a5, 1747
                  bne          s10, t0, 112f
                  bgeu         s11, zero, 108f
                  srl          t0, t3, s10
108:              auipc        a1, 318768
                  bge          s5, zero, 111f
                  slt          a2, ra, a5
111:              bge          a5, a7, 120f
112:              sltiu        ra, s7, -1096
                  bgeu         gp, zero, 115f
                  sub          s8, ra, a6
115:              and          a4, a1, t4
                  sltiu        t4, s3, -1240
                  xori         a7, a6, 785
                  bgeu         s0, a0, 134f
                  lui          s8, 814255
120:              srai         t2, s3, 17
                  lui          t6, 87630
                  slti         gp, s5, 94
                  and          s4, s3, s7
                  bge          a4, t6, 130f
                  andi         s10, a5, -517
                  srl          t3, s0, a1
                  xori         a3, t6, 1796
                  addi         zero, t5, 1427
                  blt          tp, s5, 133f
130:              nop
                  sra          gp, zero, t4
                  nop
133:              lui          tp, 260580
134:              bne          s10, a7, 150f
                  srli         a4, s5, 1
                  or           s1, t4, t1
                  srli         s7, sp, 27
                  slli         zero, t4, 12
                  bgeu         a2, s6, 156f
                  srl          s11, zero, s6
                  nop
                  xori         a3, s9, 2044
                  auipc        t5, 308195
                  addi         t6, zero, -1236
                  or           t2, s11, a5
                  sltiu        s10, s11, 585
                  srai         s4, a1, 13
                  sltiu        s6, t3, 1994
                  and          a0, s5, sp
150:              srai         a0, a3, 30
                  xori         s7, a6, 1801
                  andi         a3, a3, 1784
                  sltu         a0, t4, t6
                  sltu         a1, tp, s2
                  bne          t4, a5, 172f
156:              srai         s7, t3, 6
                  srl          s10, tp, t2
                  auipc        a1, 979394
                  slti         t4, t5, 509
                  xor          a1, s0, s7
                  blt          t3, s5, 180f
                  nop
                  andi         s8, tp, 732
                  bne          s5, s0, 167f
                  lui          s0, 117083
                  lui          gp, 115279
167:              bge          s2, zero, 168f
168:              slt          t3, a4, t3
                  sll          a6, t5, a6
                  or           a3, s2, t2
                  slli         t2, s6, 5
172:              andi         t6, s7, -64
                  sll          t3, a2, gp
                  nop
                  sra          a4, a5, s11
                  sltu         s7, s2, t6
                  sra          t4, a1, t0
                  xor          s5, a4, s0
                  lui          s4, 700640
180:              nop
                  srai         t0, t3, 11
                  bltu         s3, s6, 193f
                  sra          gp, s3, t5
                  bgeu         t5, s2, 186f
                  add          t2, a2, a0
186:              slti         s5, ra, 1398
                  add          s0, gp, s1
                  srl          s3, t6, a0
                  add          a7, s10, s9
                  bltu         s6, t5, 197f
                  sll          a5, s7, s6
                  slt          s11, t3, a5
193:              ori          a1, a7, -1412
                  srl          s9, a1, tp
                  ori          s10, t5, -1290
                  add          t2, a6, s6
197:              ori          s7, s1, 1363
                  sub          gp, tp, s4
                  lui          s10, 383562
                  or           a5, a2, s0
                  bgeu         t1, s8, 206f
                  add          a6, s9, tp
                  xor          t6, s10, a2
                  sltiu        a6, s6, 1835
                  bge          s8, s3, 206f
206:              auipc        s11, 290315
                  sub          s9, gp, a2
                  lw           t6, 4(s2)
                  xori         s9, sp, 593
                  slti         gp, a4, -1294
                  addi         s2, s2, 12
                  and          t3, tp, t1
                  sltiu        s6, t5, 497
252:              addi x11, x31, 0
252:              jalr x11, x11, 0
sub_8:            andi         t4, s6, -58
                  addi         s2, s2, -44
                  slti         t3, t6, 1148
                  srli         s4, sp, 19
                  ori          ra, s11, 1393
                  sltu         gp, gp, sp
                  sw           t6, 4(s2)
                  slli         a4, t6, 23
                  sra          s7, s4, t0
                  la           s6, region_1+948 #start riscv_load_store_rand_instr_stream_4
                  sb           t3, 46(s6)
                  sb           s2, 37(s6)
                  sub          t0, s5, t6
                  srli         s3, sp, 8
                  sltu         a4, a6, s5
                  lhu          s8, -6(s6)
                  lb           t6, -54(s6)
                  auipc        zero, 887415
                  sra          a0, a2, a1
                  lbu          zero, 32(s6)
                  addi         s1, a1, -649
                  slli         a4, t5, 24
                  and          s9, a0, t4
                  xor          gp, s1, s10
                  sltiu        t5, s2, -1994
                  srli         gp, a5, 14
                  lw           s5, 48(s6)
                  auipc        s5, 722316
                  addi         t3, t4, -747
                  auipc        s4, 373352
                  sll          a5, tp, s9
                  lui          s0, 841433
                  lhu          zero, -30(s6)
                  xor          t5, a0, tp
                  andi         s7, zero, 635
                  sb           t0, -31(s6)
                  lw           s11, -44(s6)
                  andi         a1, t0, -1933
                  and          t3, s4, s1
                  sub          tp, tp, s4
                  ori          s5, sp, -1946
                  add          s0, s2, a2
                  lb           t0, -63(s6)
                  srai         a7, a7, 3
                  sb           a4, 63(s6)
                  lb           a0, 61(s6)
                  srl          a2, a0, s3
                  srl          s10, s1, s6
                  addi         s1, tp, -1364
                  xor          s11, s3, t3
                  srli         a1, t0, 18
                  auipc        a4, 717885
                  lb           t0, 63(s6) #end riscv_load_store_rand_instr_stream_4
                  la           s3, region_0+1166 #start riscv_load_store_rand_instr_stream_6
                  andi         t2, t5, -19
                  andi         ra, t6, 135
                  lh           tp, -38(s3)
                  lb           s6, -167(s3)
                  lhu          a4, 8(s3)
                  ori          a0, s1, -1240
                  lb           ra, 125(s3)
                  lh           t5, -14(s3)
                  lui          s11, 1023328
                  lbu          a5, -69(s3)
                  lhu          t3, 142(s3)
                  sb           a5, -256(s3)
                  lw           a5, 118(s3)
                  sh           s4, -212(s3)
                  sb           ra, 79(s3)
                  sb           s9, -191(s3)
                  lb           t5, -45(s3)
                  slti         a6, zero, 92
                  lhu          a7, -96(s3)
                  sb           a4, -197(s3)
                  add          s4, a0, sp
                  slt          s0, a1, ra
                  xori         a5, t3, -8
                  ori          s11, a0, -1019
                  slli         s10, s1, 25
                  sb           s8, 15(s3)
                  lhu          a2, 150(s3)
                  srai         a1, t5, 6
                  sb           s8, -221(s3)
                  lbu          s11, 172(s3)
                  lw           s8, -2(s3) #end riscv_load_store_rand_instr_stream_6
                  la           a3, region_0+1567 #start riscv_load_store_rand_instr_stream_5
                  lb           t6, -6(a3)
                  lb           s3, 3(a3)
                  nop
                  or           s6, sp, s11
                  sra          a6, s10, a7
                  lhu          a2, 5(a3)
                  sra          s1, t3, tp
                  lbu          s9, 0(a3)
                  sra          a7, t6, tp
                  sb           t5, 7(a3)
                  sb           s0, 3(a3)
                  lhu          t2, 9(a3)
                  lb           s7, 1(a3)
                  sb           gp, 5(a3)
                  slli         a5, t4, 5
                  lbu          zero, 10(a3)
                  or           gp, s4, t3
                  auipc        s9, 733862
                  lb           gp, -8(a3)
                  lbu          t0, -1(a3)
                  sra          a0, s6, t4
                  srai         a5, zero, 17
                  lui          s4, 809001
                  sh           a7, -13(a3)
                  nop
                  sb           t4, 14(a3) #end riscv_load_store_rand_instr_stream_5
                  la           s10, region_0+810 #start riscv_load_store_rand_instr_stream_1
                  sll          ra, ra, s7
                  lbu          a0, 51(s10)
                  sltu         t5, a7, a4
                  lb           s9, -20(s10)
                  sh           t3, 6(s10)
                  sub          s4, a7, s11
                  slt          zero, tp, s7
                  sh           t6, -64(s10)
                  sltiu        a6, a4, -932
                  lbu          s0, -31(s10)
                  addi         a4, a6, 1391
                  slti         t3, a0, -384
                  lhu          a4, -32(s10)
                  srai         a7, sp, 16
                  sb           a5, 1(s10)
                  slti         t6, zero, -1002
                  sb           s7, -41(s10)
                  and          s0, zero, s5
                  sb           s5, -62(s10)
                  slli         s6, a2, 18
                  auipc        ra, 962190
                  nop
                  sra          a3, a1, s7
                  lb           a1, -3(s10)
                  lbu          a2, 45(s10)
                  nop
                  lb           a0, -59(s10)
                  andi         a3, t6, -943
                  sb           sp, 5(s10)
                  and          s5, a4, s8
                  sra          s7, a6, s9
                  nop
                  lhu          t2, 20(s10)
                  lb           a2, -1(s10)
                  sh           a3, 60(s10)
                  xori         s3, sp, 947
                  lh           a4, -22(s10)
                  sh           s10, -36(s10)
                  add          s8, s9, s1
                  sltu         a4, t0, s11
                  lbu          a1, 57(s10)
                  lbu          a1, -56(s10)
                  lbu          a6, 45(s10)
                  slli         gp, s7, 13
                  srl          a5, s0, sp
                  lb           t6, 5(s10)
                  sh           t2, -12(s10)
                  xor          s0, s8, s8
                  addi         a2, t4, -1771
                  sra          s3, gp, gp
                  xor          s7, t6, s10
                  sltiu        gp, s11, -967
                  srl          s3, a3, a1
                  sb           t3, -35(s10) #end riscv_load_store_rand_instr_stream_1
                  la           tp, region_0+766 #start riscv_load_store_rand_instr_stream_0
                  or           s11, ra, sp
                  sb           ra, 123(tp)
                  sll          s0, s0, gp
                  lb           s1, 14(tp)
                  andi         t2, t6, 1788
                  lbu          t4, 105(tp)
                  slt          s9, a5, a0
                  lhu          s4, 80(tp)
                  auipc        a6, 397541
                  lb           a3, 85(tp)
                  auipc        a3, 1020402
                  slt          a0, s8, a2
                  lb           s5, -46(tp)
                  ori          s11, s0, 2042
                  lui          a6, 986013
                  ori          s7, s7, 1800
                  srai         a7, s10, 13
                  andi         a5, t2, 1966
                  and          t4, a0, s5
                  lbu          a0, -17(tp)
                  sltu         s9, t4, s8
                  andi         t3, t6, -1025
                  lb           s5, -222(tp)
                  xori         zero, t4, 1484
                  sb           s6, -88(tp)
                  lb           a4, 100(tp)
                  addi         a4, a2, -1642
                  sb           ra, 209(tp)
                  auipc        s6, 7149
                  lb           s0, 216(tp)
                  or           t6, t6, a5
                  lui          s10, 214505
                  sll          a7, t0, s5
                  addi         t6, s8, 553
                  sltiu        s6, s5, 37
                  lb           s6, -185(tp)
                  or           t0, s5, s0
                  sltiu        zero, s10, 1168
                  and          s8, s9, t1
                  lh           a4, 236(tp)
                  ori          s3, s5, 1760
                  srl          s3, s7, s11
                  sh           s8, -126(tp)
                  xor          a4, s10, s5
                  lb           gp, 111(tp) #end riscv_load_store_rand_instr_stream_0
                  ori          s5, a0, -1775
                  sltu         s8, s8, a0
                  sub          s4, s1, a2
                  addi         s4, ra, 1740
                  sll          a7, tp, s10
                  bltu         sp, a4, 15f
                  sll          a6, a6, a3
                  xor          s1, t6, s3
                  sra          t4, a1, a7
                  bge          s2, s0, 14f
                  andi         ra, t3, -614
                  srl          s3, a0, t0
                  bltu         tp, t1, 26f
                  lui          a1, 739035
14:               bltu         a7, a4, 15f
15:               sub          s7, t6, a6
                  srli         s4, a3, 3
                  add          s0, t3, s3
                  andi         t5, a0, 1808
                  bgeu         t3, s3, 30f
                  srai         s0, a5, 26
                  srai         t6, s3, 12
                  sltu         a3, t2, t2
                  bne          s2, t1, 42f
                  xori         a3, a3, -306
                  slti         a0, s8, 1226
26:               ori          s6, ra, 1571
                  bgeu         s1, t0, 45f
                  sltiu        a4, s4, 1582
                  bltu         tp, a1, 44f
30:               lui          a6, 111024
                  lui          s1, 81977
                  add          s6, gp, s11
                  blt          t5, s7, 36f
                  slli         a5, t3, 6
                  bgeu         tp, s2, 39f
36:               or           t3, s4, a7
                  sll          t2, s4, s0
                  andi         s10, a3, 1563
39:               sltu         s0, zero, ra
                  lui          a6, 333458
                  auipc        tp, 942251
42:               bltu         a4, t2, 53f
                  beq          a7, a1, 46f
44:               blt          tp, a1, 54f
45:               bltu         a6, s1, 46f
46:               or           t0, s2, s6
                  addi         ra, a3, -592
                  srli         s4, a6, 8
                  xori         s8, a4, 41
                  beq          t2, s8, 53f
                  and          zero, s11, t4
                  lui          t0, 364199
53:               bge          t0, zero, 62f
54:               and          s10, t2, a7
                  addi         t4, t6, -1070
                  sra          t2, a2, s11
                  srl          t3, a6, s6
                  srai         s11, a1, 19
                  beq          s7, a0, 72f
                  lui          s10, 1002082
                  slli         a4, s1, 17
62:               and          t5, a4, s6
                  slt          s10, a6, s6
                  srai         s11, ra, 7
                  nop
                  srl          zero, a5, s3
                  xori         s0, gp, -356
                  slli         a5, t1, 2
                  slli         zero, t1, 4
                  bgeu         a3, s7, 86f
                  bge          a7, s3, 83f
72:               nop
                  xori         s9, sp, 1776
                  beq          t6, t0, 94f
                  sltiu        s10, s11, 497
                  add          zero, t5, a6
                  slli         t0, t3, 3
                  sra          a4, a2, s9
                  slti         t6, a7, -155
                  or           zero, s11, s6
                  add          s10, a0, t0
                  and          a4, ra, ra
83:               nop
                  and          s10, a3, a3
                  sll          zero, s11, s3
86:               lui          t6, 727244
                  xor          s8, ra, s10
                  nop
                  xor          tp, a0, a0
                  slli         s7, s7, 3
                  blt          t3, zero, 106f
                  srli         ra, a6, 20
                  bgeu         s8, s8, 106f
94:               sra          s11, t5, t2
                  auipc        t5, 614803
                  sra          a7, a2, t1
                  slt          a5, a5, t6
                  bgeu         s5, s2, 117f
                  slli         a6, a7, 22
                  beq          s10, tp, 120f
                  blt          t5, ra, 108f
                  slti         s1, a5, -1568
                  or           zero, a0, a0
                  bge          s7, t3, 122f
                  slt          s9, t2, t4
106:              xori         a6, t5, 1608
                  slli         s4, s11, 22
108:              nop
                  or           gp, t1, s2
                  blt          a7, t0, 122f
                  addi         a6, s4, 1093
                  blt          ra, a2, 119f
                  or           s4, gp, a4
                  bgeu         t3, s7, 121f
                  slti         t4, t3, -887
                  and          a7, a3, s10
117:              sll          s1, t3, a0
                  sltu         ra, a6, t2
119:              sltiu        t5, s5, 1260
120:              blt          t6, s7, 126f
121:              sub          a3, s9, t6
122:              andi         s7, s11, -1632
                  xor          s5, s8, s8
                  ori          t4, s8, -1070
                  xori         t3, s5, 922
126:              srai         s1, a7, 10
                  beq          t4, a4, 140f
                  xori         t0, tp, -1145
                  sll          s8, s0, a2
                  andi         t4, s10, 794
                  sltu         s5, s3, s2
                  lui          s5, 475678
                  slti         ra, gp, -1699
                  andi         gp, t1, -1157
                  bne          t3, s2, 149f
                  sub          s3, s10, s11
                  xor          t2, a5, t5
                  sltu         s9, ra, t4
                  sub          s5, s10, gp
140:              sll          s4, t3, ra
                  addi         t6, zero, -663
                  xor          t4, s5, s1
                  xori         t5, a7, -1456
                  bne          zero, tp, 156f
                  slt          t5, s2, t4
                  or           a6, a3, t6
                  slli         t2, ra, 22
                  sltiu        tp, a4, 1973
149:              sra          t2, a0, a7
                  bne          t0, s8, 155f
                  or           s0, s5, s2
                  andi         t6, a4, 1485
                  bne          s6, s1, 163f
                  srl          t0, t4, sp
155:              lui          tp, 197079
156:              lui          ra, 961306
                  addi         t2, sp, 1620
                  xor          s3, s5, t3
                  srl          t5, s2, a7
                  xor          s10, s10, t0
                  bne          t4, t1, 176f
                  or           s4, t3, s5
163:              auipc        a0, 432408
                  slli         t5, t1, 1
                  addi         s6, s0, -313
                  xori         zero, t5, -1280
                  lui          tp, 75351
                  bltu         a6, s0, 178f
                  beq          s0, t0, 172f
                  srai         s5, sp, 6
                  sltiu        a4, a3, 1888
172:              srl          s3, s6, t1
                  sra          ra, s5, tp
                  lui          a2, 762303
                  bne          s10, gp, 178f
176:              sll          s9, t2, a7
                  bltu         a6, a4, 192f
178:              nop
                  or           zero, s5, a5
                  sltiu        s10, a0, 450
                  sra          s8, a4, a5
                  bge          a7, s1, 183f
183:              bgeu         s10, s7, 186f
                  srl          s0, s11, a0
                  xor          s1, t0, s0
186:              beq          t5, s4, 198f
                  and          t5, s10, t4
                  auipc        s4, 389615
                  blt          s10, s0, 208f
                  la           tp, region_1+1451 #start riscv_load_store_rand_instr_stream_3
                  ori          gp, a6, 539
                  lbu          s5, -32(tp)
                  sb           s3, -36(tp)
                  srli         t3, a5, 10
                  srli         s3, ra, 22
                  lb           a0, 10(tp)
                  lbu          zero, 36(tp)
                  ori          s6, t3, 1021
                  lb           a1, 52(tp)
                  addi         t0, sp, 1959
                  lw           a3, -59(tp)
                  lhu          a3, -39(tp)
                  sh           s6, 63(tp)
                  andi         a4, a3, -911
                  lb           t2, 14(tp)
                  sltu         t0, s5, s7
                  sb           t4, 10(tp)
                  xori         t4, t6, 661
                  xor          s11, a4, s0
                  xor          t6, a0, a4
                  xor          a4, a2, s6
                  lbu          a0, -8(tp)
                  sub          a6, gp, ra
                  lbu          zero, -1(tp)
                  lb           t3, -10(tp)
                  lbu          ra, -2(tp)
                  sh           s3, 21(tp)
                  lb           s0, -27(tp)
                  lb           s9, -17(tp) #end riscv_load_store_rand_instr_stream_3
                  bltu         t2, gp, 209f
                  xor          s10, s6, zero
192:              srai         s1, zero, 13
                  or           t6, sp, s5
                  bgeu         t6, s0, 212f
                  slt          t2, s10, s9
                  xori         t3, s4, 957
                  sra          tp, a5, s9
198:              and          a4, zero, s8
                  nop
                  srl          zero, a6, s8
                  andi         a3, t0, 466
                  add          s3, s9, t6
                  xori         s7, s3, -1777
                  srli         t5, s4, 8
                  sub          s5, s5, s3
                  sub          s5, a7, s1
                  sltiu        zero, t2, -267
208:              blt          s10, ra, 228f
209:              sltiu        a5, t6, -932
                  xori         t6, zero, -1678
                  add          a0, a6, t3
212:              bgeu         ra, a7, 221f
                  xori         a2, s7, 1852
                  xori         s7, a6, -1594
                  auipc        s3, 367049
                  sll          a4, s6, tp
                  beq          a1, a3, 237f
                  addi         s5, a0, 1479
                  lui          t4, 876702
                  addi         s8, a1, 1074
221:              xori         s8, zero, -1059
                  beq          s4, s10, 240f
                  bgeu         s3, ra, 234f
                  addi         t2, tp, -18
                  bge          a4, s7, 241f
                  srai         ra, t6, 5
                  xor          s5, t5, tp
228:              bne          t3, zero, 234f
                  sub          a0, s0, s0
                  lui          s5, 164074
                  slti         s0, a0, 366
                  bne          a2, s8, 243f
                  slt          t3, s0, t3
234:              auipc        s3, 644089
                  bgeu         s2, t5, 248f
                  add          t5, s10, s0
237:              srli         a6, s9, 20
                  ori          s1, a6, 268
                  blt          a0, s4, 246f
240:              lui          a5, 396823
241:              andi         a7, s5, -276
                  blt          a5, t3, 246f
243:              bltu         s7, s5, 250f
                  srli         a1, s8, 10
                  or           tp, a2, a0
246:              bltu         a1, s8, 253f
                  andi         t3, a2, 70
248:              srli         a2, a3, 19
                  srli         a0, s3, 24
250:              xori         s8, s0, -639
                  bge          s4, t1, 252f
252:              auipc        zero, 331209
253:              slti         ra, zero, -835
                  bgeu         tp, s10, 270f
                  andi         t4, t6, 1961
                  auipc        s8, 949354
                  sll          s9, a3, s1
                  slli         s0, s7, 25
                  addi         a1, gp, 361
                  xori         a4, t2, 1875
                  sub          s5, s8, s0
                  sltiu        ra, t4, 1900
                  and          s1, gp, s7
                  or           ra, s2, t4
                  bgeu         t5, t2, 272f
                  blt          t4, tp, 279f
                  bgeu         tp, s6, 274f
                  slli         gp, s7, 7
                  xori         t0, a5, 930
270:              slt          a5, s3, t2
                  auipc        t0, 718753
272:              add          t4, a7, zero
                  and          tp, s0, s0
274:              sub          a6, s7, s10
                  nop
                  slti         t3, s10, -522
                  blt          t6, a6, 280f
                  xori         a0, ra, 324
279:              bge          s6, t6, 285f
280:              blt          s4, a6, 281f
281:              add          gp, zero, s10
                  auipc        s4, 1021216
                  ori          ra, a1, -890
                  beq          t4, s11, 293f
285:              sub          a3, t1, gp
                  beq          gp, s10, 301f
                  addi         s7, t4, 1379
                  blt          a7, s1, 306f
                  srl          t2, a3, t3
                  sra          s10, gp, s10
                  slt          a2, s11, s7
                  beq          gp, s10, 297f
293:              slti         s1, a5, 1521
                  beq          a6, gp, 313f
                  slt          s9, gp, a1
                  lui          s4, 221290
297:              add          gp, s4, s7
                  andi         a4, a6, 125
                  bgeu         a1, s7, 310f
                  xori         t2, t5, -257
301:              bltu         t6, s3, 308f
                  sll          ra, t1, t3
                  sra          a0, t5, t5
                  sub          tp, t1, s7
                  beq          a6, s8, 318f
306:              slli         a2, tp, 5
                  sub          t4, t1, zero
308:              slli         gp, t2, 11
                  srai         t0, t0, 24
310:              sltiu        zero, gp, -1546
                  srai         t3, s0, 14
                  blt          a7, a1, 332f
313:              slli         s7, a5, 19
                  sltiu        a3, a1, 2
                  andi         a7, t0, 1649
                  andi         s8, zero, -104
                  bne          s5, s3, 318f
318:              sltiu        tp, t4, 143
                  nop
                  bltu         a7, t5, 332f
                  bne          s0, t5, 336f
                  srl          s11, a4, a4
                  auipc        a2, 843574
                  xor          a3, tp, s2
                  bge          s4, ra, 328f
                  slli         ra, a1, 21
                  add          a3, s5, t1
328:              srai         zero, t5, 21
                  srl          t2, a5, s9
                  beq          s6, a6, 341f
                  andi         t0, gp, -424
332:              addi         t4, s7, -883
                  beq          s0, t2, 347f
                  slli         s0, tp, 4
                  srai         t3, t0, 29
336:              auipc        a1, 923311
                  auipc        a1, 9759
                  sub          s8, a2, s0
                  nop
                  auipc        s4, 609390
341:              srli         t2, sp, 21
                  nop
                  and          t5, a0, s9
                  sltu         s0, s10, sp
                  bne          s1, tp, 363f
                  add          a6, s6, t2
                  la           s11, region_0+1733 #start riscv_load_store_rand_instr_stream_2
                  srl          s4, t5, s3
                  lbu          t3, 164(s11)
                  slti         a1, a2, -688
                  and          s10, t0, s3
                  sltiu        a6, zero, 208
                  sltiu        a3, s3, 1850
                  sb           s2, -276(s11)
                  lb           s5, -234(s11)
                  lb           s4, -1392(s11)
                  slt          s6, t3, a7
                  lbu          s0, -1586(s11)
                  slli         a6, a3, 0
                  lui          a6, 486187
                  xori         t3, t2, 826
                  nop
                  lb           s3, 132(s11)
                  sb           t4, 89(s11)
                  srl          a7, s2, tp
                  addi         s4, a3, -215
                  xori         t6, s0, -1942
                  sb           t2, -621(s11)
                  lhu          t2, -935(s11)
                  sw           s10, -33(s11)
                  lb           t3, -1454(s11)
                  nop
                  sltu         a0, s11, s3
                  lb           a1, -1024(s11)
                  srl          s10, t3, a2
                  lw           s8, -885(s11)
                  ori          t5, sp, 708
                  sltu         t6, s8, t5
                  sb           s10, -200(s11)
                  lbu          s0, -368(s11) #end riscv_load_store_rand_instr_stream_2
347:              add          a0, s5, s4
                  nop
                  nop
                  slti         a2, zero, -1334
                  sltiu        s7, tp, 1736
                  bgeu         s3, a3, 356f
                  sll          a0, t2, a0
                  and          s5, s9, s9
                  sub          s1, s7, t3
356:              nop
                  xor          a2, t4, gp
                  xor          s5, s0, a4
                  slti         a4, s9, -1049
                  srai         tp, a7, 5
                  lui          gp, 247434
                  sll          t3, a1, a0
363:              srli         ra, s2, 24
                  add          t5, zero, s6
                  and          a4, t1, a2
                  beq          a2, s6, 378f
                  beq          ra, t4, 387f
                  sltu         s6, a3, s5
                  sra          gp, s9, a6
                  bltu         a4, s3, 380f
                  bne          ra, gp, 390f
                  blt          s9, ra, 375f
                  slli         t2, s8, 11
                  bne          a4, t1, 384f
375:              sll          a5, a4, a7
                  srai         s4, t4, 22
                  bgeu         gp, a1, 397f
378:              sltiu        s1, s5, -555
                  or           s9, t3, s8
380:              nop
                  srli         s3, s5, 17
                  sltiu        s5, t1, 377
                  slli         ra, tp, 31
384:              andi         s3, t3, -1720
                  ori          s5, a7, -489
                  xori         s4, t6, 196
387:              auipc        s6, 202307
                  lui          t6, 599452
                  bltu         s5, t5, 396f
390:              slti         a3, s5, 993
                  slt          s6, s0, s5
                  or           a4, t5, sp
                  andi         s11, a6, 685
                  bltu         sp, s2, 413f
                  add          s8, s7, t6
396:              slt          s1, s0, a7
397:              slt          a7, zero, s5
                  sra          s4, s5, zero
                  and          t5, s10, s10
                  sll          a3, s4, ra
                  sltu         s3, s11, ra
                  addi         a3, s4, 1283
                  andi         t0, s7, -432
                  sltu         s9, a0, s11
                  add          tp, t1, s7
                  slli         t2, s3, 26
                  add          s11, a3, sp
                  slt          s5, t4, a5
                  bgeu         s1, s6, 413f
                  sll          t4, s8, s0
                  srai         a3, t4, 19
                  or           t2, a5, t3
413:              or           a3, a2, a3
                  bne          s1, a4, 427f
                  srai         a0, a6, 2
                  slt          s10, t2, zero
                  srl          gp, t6, a0
                  addi         a7, s8, 1291
                  add          gp, tp, gp
                  srai         s10, s3, 29
                  bge          sp, t5, 424f
                  slt          a5, a0, s10
                  blt          s5, t5, 426f
424:              srl          t2, s5, t5
                  srai         zero, t0, 7
426:              lui          a6, 354779
427:              auipc        s0, 786635
                  ori          a5, s9, 1595
                  bge          a6, t4, 430f
430:              bne          a2, s8, 440f
                  bge          tp, s6, 449f
                  bgeu         s6, a4, 439f
                  sra          t6, a4, a4
                  sltiu        ra, t4, 1914
                  bltu         t0, t2, 454f
                  xor          t0, t2, gp
                  xori         gp, t1, 2003
                  sltiu        tp, a0, 1028
439:              sltiu        t6, s8, -1514
440:              andi         a0, t0, 1937
                  lui          s1, 72719
                  slli         s8, a7, 28
                  bltu         t2, t2, 454f
                  andi         s5, a5, -1967
                  srl          s6, tp, a7
                  blt          t1, a7, 461f
                  bltu         s4, a2, 452f
                  add          t2, a3, t2
449:              ori          a5, s0, 1165
                  blt          s2, t5, 457f
                  or           s6, s3, a0
452:              nop
                  bge          t1, t5, 471f
454:              srai         s1, gp, 3
                  srli         t3, a6, 31
                  add          a0, s8, s9
457:              srli         s1, s1, 9
                  bne          gp, a0, 473f
                  slt          s7, s1, t5
                  bne          a3, s10, 461f
461:              xori         a4, a2, 1296
                  auipc        a4, 51613
                  lui          s5, 262309
                  sltiu        ra, s4, 1952
                  add          a0, t5, gp
                  bltu         s6, s2, 480f
                  nop
                  or           a5, s9, t4
                  bne          a3, a3, 481f
                  srli         a3, a3, 22
471:              slli         a7, ra, 17
                  xori         t4, a4, 713
473:              srai         s5, a4, 6
                  or           ra, sp, t3
                  beq          t2, s7, 488f
                  slt          t2, s5, s10
                  auipc        a6, 997210
                  slt          s0, zero, t6
                  slli         t4, a7, 24
480:              sltiu        s5, a5, 500
481:              srl          s4, gp, s3
                  auipc        a6, 866862
                  srli         s3, s8, 19
                  sltiu        a4, s3, -480
                  andi         t6, tp, -1275
                  bgeu         zero, s5, 502f
                  sltiu        ra, a3, -911
488:              srli         a5, t1, 10
                  slti         t3, a7, 114
                  and          s3, s3, s9
                  slt          s10, s3, s3
                  slt          a6, sp, tp
                  srl          a6, a5, s2
                  sra          s10, t4, ra
                  xor          s10, a2, s0
                  slti         s6, a3, 922
                  bne          t3, s10, 508f
                  bge          tp, s9, 501f
                  sltu         zero, s9, s7
                  and          zero, a3, a1
501:              srl          a7, s9, s8
502:              sub          s10, zero, s4
                  slti         t5, s8, -342
                  lui          s5, 872011
                  add          ra, s7, s11
                  blt          t6, t2, 518f
                  nop
508:              bne          t3, t4, 517f
                  sltu         tp, s6, s1
                  addi         t4, a3, 1877
                  bgeu         tp, s9, 531f
                  addi         s8, s3, -357
                  addi         t3, t1, -289
                  nop
                  lui          a7, 403037
                  bge          t3, s3, 526f
517:              xori         t4, a6, -1722
518:              xor          a5, gp, a7
                  and          t5, s6, t2
                  beq          sp, s1, 526f
                  slt          a2, a0, t0
                  bltu         s3, t0, 529f
                  bltu         s11, t4, 543f
                  bltu         tp, t2, 535f
                  srli         t2, a5, 17
526:              and          t0, gp, a5
                  sra          tp, s9, s2
                  sltiu        s4, t0, 130
529:              and          s4, a5, t6
                  ori          t6, a4, 865
531:              xori         s5, s7, 537
                  ori          t2, ra, -505
                  sra          s10, s3, t2
                  slt          a2, s9, t5
535:              xor          a1, t0, a5
                  add          s11, s2, t1
                  bgeu         s7, s3, 541f
                  slti         a0, t6, -2003
                  andi         t6, a2, -583
                  and          a5, a4, s9
541:              ori          a6, s0, 473
                  slt          t5, gp, t3
543:              slt          a0, t5, s2
                  sltu         s8, t5, sp
                  add          t2, a1, a6
                  sra          t0, a1, s9
                  slti         a5, a0, 1826
                  ori          t0, s2, 651
                  sub          gp, s5, zero
                  add          s10, ra, t0
                  srai         s5, tp, 28
                  ori          s4, a7, -1502
                  sub          a5, t3, t5
                  auipc        a7, 697294
                  slti         t4, s11, -1686
                  srai         s9, s7, 24
                  sub          t5, sp, zero
                  slli         a2, zero, 18
                  bne          tp, s6, 566f
                  slti         s4, a3, -1921
                  auipc        a6, 752270
                  sltu         s11, tp, t6
                  blt          s1, t2, 575f
                  beq          s7, a7, 574f
                  bltu         a1, s9, 583f
566:              blt          a4, t5, 572f
                  xor          s3, t1, s2
                  xori         s0, t1, -376
                  ori          a5, t3, -693
                  or           s7, s5, t2
                  sltiu        s1, ra, -465
572:              xori         s9, a2, -61
                  bltu         s11, t6, 589f
574:              sub          t6, a3, t2
575:              slti         a1, s6, 560
                  xor          zero, s4, gp
                  slli         s5, s11, 15
                  srl          s3, a7, t4
                  sub          t3, a4, t3
                  sltu         tp, s8, a4
                  or           a4, a2, zero
                  slti         a7, sp, -1526
583:              sra          ra, s6, s0
                  srai         s3, s0, 23
                  srli         t0, a1, 13
                  srai         t4, s9, 12
                  lui          s1, 957430
                  sll          s8, s11, a2
589:              slti         t0, a6, 415
                  sltiu        a5, s9, 884
                  slli         s4, s10, 26
                  or           s7, s0, tp
                  srli         s10, sp, 21
                  bltu         s6, s11, 609f
                  slli         t5, t6, 27
                  nop
                  and          a5, ra, s4
                  srli         a5, t5, 6
                  bne          t1, a6, 600f
600:              bge          tp, zero, 603f
                  or           t6, a0, a2
                  lui          t3, 606739
603:              slti         a6, a6, 357
                  andi         s11, a2, -23
                  ori          t4, t4, -975
                  sra          t3, a1, a4
                  xori         t5, gp, -1338
                  bltu         a6, s7, 627f
609:              srai         t0, s0, 4
                  and          a7, a5, a2
                  srai         t2, a6, 18
                  sltu         s6, a7, s2
                  sltiu        s1, s3, -1217
                  srai         s9, a7, 28
                  slli         t5, t2, 18
                  slli         a1, tp, 9
                  beq          s8, a5, 632f
                  sub          a0, s3, s8
                  bne          ra, a2, 622f
                  addi         a6, s1, 74
                  add          gp, t6, a5
622:              and          s11, a7, s2
                  bltu         t3, ra, 624f
624:              auipc        a4, 841108
                  srai         t5, s10, 0
                  bne          s1, t6, 629f
627:              sub          t4, s3, t4
                  bgeu         t1, t1, 633f
629:              srl          a3, a4, s11
                  addi         s6, ra, -632
                  lui          s4, 139694
632:              sll          zero, s3, s7
633:              bltu         gp, s2, 653f
                  sltu         a4, ra, t5
                  blt          s9, a4, 646f
                  lui          a4, 473658
                  add          s7, zero, s6
                  nop
                  ori          s0, ra, -1391
                  add          t0, tp, s4
                  auipc        s0, 305743
                  bne          gp, a1, 655f
                  andi         a0, gp, -157
                  sltu         a1, t6, s1
                  andi         s11, t2, 697
646:              andi         s9, sp, 537
                  sltiu        s4, s2, 1906
                  bge          s5, sp, 662f
                  andi         s11, s4, 1448
                  slli         a2, s2, 11
                  sltu         ra, gp, s5
                  sltu         t0, gp, a1
653:              bgeu         sp, a4, 672f
                  slt          a1, s9, s9
655:              bgeu         s6, t5, 673f
                  addi         a6, s5, 1005
                  andi         t6, tp, -639
                  sll          s7, t6, a6
                  srai         s0, t4, 21
                  slti         a3, s7, -1285
                  xor          s11, a7, a6
662:              xori         gp, s8, 1300
                  bge          s5, s0, 670f
                  auipc        zero, 323719
                  bgeu         a6, s10, 678f
                  lui          a4, 597306
                  sltiu        s10, s1, -1440
                  addi         s8, s1, -842
                  slli         a2, a2, 23
670:              sll          zero, t5, a5
                  sub          a3, a0, t5
672:              lui          t0, 912133
673:              bltu         s6, s5, 685f
                  bgeu         a6, tp, 683f
                  bge          a0, a0, 685f
                  andi         a4, gp, 150
                  sltiu        s3, s2, -1896
678:              slt          t5, zero, s6
                  blt          s2, a4, 686f
                  slti         a0, tp, 882
                  sub          s9, s9, a0
                  sltiu        t0, s1, 2021
683:              xor          gp, t6, s4
                  sub          s11, s1, t3
685:              blt          s3, ra, 699f
686:              xor          t6, s7, t6
                  xor          t2, t6, s4
                  sub          a3, s8, t6
                  auipc        a2, 714824
                  addi         t4, t6, -785
                  slli         a7, s6, 20
                  or           t2, s0, t3
                  bge          t4, s6, 704f
                  slti         tp, a6, -740
                  bge          t2, t0, 700f
                  slt          s0, s0, s4
                  or           t0, gp, s5
                  or           s9, s7, s0
699:              srli         t4, ra, 23
700:              sub          zero, a6, tp
                  slt          t3, s10, s7
                  sltiu        a5, s9, 965
                  xor          a5, s6, a7
704:              lui          a5, 438101
                  auipc        s10, 306510
                  srli         s6, s10, 10
                  sub          t4, s2, a1
                  bltu         sp, a7, 714f
                  bne          a6, s8, 727f
                  add          s0, s8, ra
                  slt          s3, a2, s1
                  andi         s6, t1, -27
                  bne          t0, a7, 725f
714:              sra          a4, t0, a7
                  or           zero, s2, t3
                  add          a3, s2, ra
                  and          s3, t5, a1
                  srl          ra, a6, t0
                  add          s4, s11, ra
                  slt          a0, a6, s1
                  slti         s1, s7, -1921
                  add          s8, s11, a5
                  slli         t5, s0, 14
                  bne          t4, t6, 736f
725:              addi         a7, s9, 364
                  slt          s8, s6, t1
727:              sub          s11, s8, s2
                  or           t5, t2, gp
                  sll          a5, s11, s6
                  and          a2, s8, s3
                  addi         t2, a3, 268
                  srl          ra, a2, a5
                  beq          s8, s0, 751f
                  sltu         s6, sp, s9
                  andi         t6, gp, 1479
736:              ori          t0, t5, -1805
                  ori          s10, a0, -1221
                  sltiu        tp, s5, 1699
                  auipc        zero, 8132
                  sltiu        a0, a5, 109
                  bltu         t6, s1, 751f
                  sra          a1, a1, s5
                  bgeu         t2, t3, 759f
                  bne          gp, s11, 757f
                  ori          s5, t4, 1575
                  sra          t6, sp, s1
                  or           a0, a4, s6
                  and          s7, t5, a4
                  slti         t5, t0, -607
                  srl          s1, gp, t5
751:              xor          s9, sp, a1
                  sub          a1, a5, a1
                  andi         a3, a0, -1351
                  sra          s4, s6, s2
                  la           s6, region_1+1295 #start riscv_load_store_rand_instr_stream_7
                  andi         t5, zero, 1392
                  lb           ra, -12(s6)
                  nop
                  slli         a4, s11, 10
                  lh           a5, 13(s6)
                  xori         a6, s8, 883
                  addi         a6, s3, -930
                  or           a5, s4, t6
                  auipc        a5, 683346
                  lb           a6, 2(s6)
                  sh           t1, 13(s6)
                  lhu          s7, -15(s6)
                  srai         a4, a1, 10
                  lbu          s7, -7(s6)
                  lbu          s1, 12(s6)
                  or           a5, zero, s8
                  xor          a0, tp, a7
                  xori         a4, a1, -464
                  xor          a0, ra, gp
                  lhu          a0, 11(s6)
                  lb           a0, 13(s6)
                  lbu          s8, -12(s6)
                  sub          zero, s5, s4
                  srli         zero, tp, 14
                  addi         t4, s1, -460
                  slli         gp, s10, 20
                  srli         a6, s0, 25
                  lw           zero, 9(s6)
                  add          t0, t3, sp
                  lb           s3, 10(s6)
                  sb           t5, 7(s6)
                  lh           t4, 5(s6)
                  lhu          s11, -13(s6)
                  slli         s11, a3, 31
                  sra          a6, t5, s1
                  slt          t2, t1, s11
                  or           s10, s5, s10
                  sltu         tp, t1, t0
                  slli         a7, t0, 10
                  sra          a7, s0, t0
                  lb           s5, -4(s6)
                  srli         ra, sp, 28
                  ori          s1, zero, -1110
                  lhu          s11, -13(s6)
                  ori          s11, s5, -795
                  sb           ra, -8(s6) #end riscv_load_store_rand_instr_stream_7
                  srai         s8, s8, 20
                  bgeu         tp, s11, 763f
757:              lui          t2, 850916
                  andi         s8, sp, 1460
759:              srai         t6, t1, 16
                  lui          a5, 922915
                  slli         t3, s6, 16
                  slli         a2, s10, 19
763:              sll          s11, s4, s5
                  xor          a3, s7, t4
                  srai         t0, a1, 1
                  srli         tp, t0, 4
                  auipc        a4, 30582
                  sltiu        s11, s3, 1195
                  xori         t0, t1, -48
                  sra          s8, s9, s1
                  sra          t0, s6, tp
                  sltiu        s3, sp, 1802
                  or           t5, ra, a0
                  and          s1, gp, t1
                  srai         s11, t6, 30
                  sub          a5, ra, s1
                  lui          tp, 438507
                  slli         t6, a7, 15
                  srli         t5, a3, 23
                  andi         t5, a6, 1316
                  slt          a7, s11, s4
                  slt          s4, t4, s8
                  srl          t5, s4, s10
                  addi         a2, s6, 115
                  srli         a2, s4, 4
                  auipc        s0, 528517
                  blt          a6, s8, 802f
                  lui          ra, 546053
                  blt          a0, a6, 796f
                  sltu         s10, tp, sp
                  and          s8, s9, t6
                  auipc        a7, 365946
                  bge          s0, t1, 813f
                  xori         a0, t0, -801
                  xor          s1, a1, a5
796:              sltu         a5, s3, a1
                  srl          t0, a1, s2
                  sltu         a4, tp, a0
                  slt          s7, gp, t5
                  blt          a3, s5, 803f
                  slli         ra, zero, 17
802:              lui          a6, 689672
803:              sltiu        s7, s11, -1723
                  lui          tp, 506066
                  blt          t4, a4, 809f
                  srai         s10, t2, 28
                  addi         a7, a5, 1719
                  bne          gp, a0, 821f
809:              ori          s5, s9, 266
                  bgeu         a3, a7, 829f
                  sltu         a4, t5, s6
                  sll          s0, t5, a3
813:              srli         s1, t0, 8
                  sub          ra, t0, t0
                  and          s3, tp, t4
                  sra          t6, t3, s10
                  bne          s7, a7, 836f
                  blt          s5, a2, 821f
                  bne          a2, tp, 828f
                  auipc        s8, 396608
821:              sra          a3, t1, s5
                  beq          s5, sp, 823f
823:              slli         s3, t0, 8
                  bge          s0, tp, 839f
                  andi         a5, t6, 1966
                  bltu         a2, a4, 837f
                  bltu         t3, s10, 828f
828:              andi         s6, s6, -1616
829:              sltu         s5, sp, s1
                  ori          a6, tp, -290
                  sub          tp, a4, t0
                  auipc        a4, 318939
                  slli         s0, a4, 17
                  bgeu         s5, s7, 854f
                  bge          ra, s3, 845f
836:              slti         s10, s0, -636
837:              bge          t2, ra, 840f
                  nop
839:              addi         t0, a1, -1906
840:              bltu         s0, s7, 858f
                  bne          t0, a6, 855f
                  bltu         a0, a5, 857f
                  srli         t6, s1, 27
                  or           s0, a6, gp
845:              sltu         a5, s11, a4
                  srai         gp, sp, 17
                  nop
                  sra          s10, s3, s4
                  add          s8, s11, a3
                  and          tp, t5, sp
                  or           a0, tp, s10
                  sltiu        s1, s6, -162
                  sub          s10, a6, s6
854:              sra          a3, s8, s4
855:              xor          a0, t4, s6
                  bgeu         t2, sp, 868f
857:              xori         s5, s10, 443
858:              bne          t2, a7, 865f
                  addi         s8, t6, 2019
                  sra          s7, ra, a0
                  sltiu        s3, a5, 377
                  sll          a0, s0, gp
                  slti         t4, s4, 1830
                  bltu         a4, t5, 879f
865:              srli         t2, zero, 11
                  sltiu        s10, t5, -414
                  slt          s1, t0, a5
868:              srai         s9, t6, 10
                  bge          a2, t3, 870f
870:              bltu         t6, sp, 876f
                  andi         zero, s6, 1720
                  sltiu        s6, s7, 1894
                  srli         s7, a1, 3
                  addi         a3, s2, 630
                  addi         t2, a4, 1737
876:              sub          a4, a7, ra
                  ori          s8, a0, -1907
                  srl          t4, a6, gp
879:              xori         tp, s0, -556
                  andi         s5, t4, -789
                  bgeu         t6, ra, 894f
                  lui          tp, 749884
                  auipc        s5, 856576
                  nop
                  and          t5, t4, tp
                  srai         s9, s8, 27
                  lui          s8, 862368
                  lui          a7, 789499
                  slt          a0, s7, s3
                  xori         s7, s0, -335
                  xori         a0, a5, -384
                  srl          a6, a2, a5
                  slt          s7, s3, s10
894:              sub          s4, t0, a0
                  nop
                  bltu         s2, zero, 899f
                  bltu         s9, a5, 917f
                  sra          t2, a4, s3
899:              bgeu         a7, t0, 919f
                  slli         a2, a7, 24
                  auipc        a1, 693932
                  auipc        s7, 213475
                  srli         a7, s9, 30
                  bge          a1, a1, 913f
                  sub          gp, t5, s2
                  sltiu        a5, s5, 1773
                  slti         a6, s4, 1186
                  xori         s5, t1, -1783
                  srai         tp, a3, 28
                  bne          t6, s0, 915f
                  sltu         zero, s8, s10
                  xori         gp, s5, 1290
913:              auipc        s9, 914234
                  sll          t3, s5, sp
915:              and          s6, s8, s7
                  ori          t2, tp, -1930
917:              add          s4, zero, a0
                  andi         a3, s3, -1873
919:              bltu         s11, s8, 929f
                  srai         s8, s0, 6
                  bne          zero, s9, 932f
                  sll          t4, s5, s7
                  andi         s7, gp, 1589
                  beq          a6, t4, 931f
                  srl          t6, t0, zero
                  lui          a0, 496830
                  nop
                  bge          tp, a5, 940f
929:              auipc        t4, 402114
                  or           t0, s3, t4
931:              lui          a0, 472440
932:              srai         s3, gp, 3
                  srai         s4, s4, 20
                  lui          s8, 176423
                  sltiu        s5, a5, 526
                  srai         s1, s0, 30
                  bne          sp, t1, 940f
                  srl          s10, sp, a6
                  sra          a0, s1, a7
940:              sub          s11, s9, t4
                  srli         tp, sp, 9
                  add          tp, t0, s10
                  sltu         t6, t1, gp
                  and          a3, s0, t1
                  xor          t5, a0, a1
                  ori          a5, s7, 529
                  srl          a5, ra, a6
                  sub          s1, a3, s6
                  srli         zero, s1, 11
                  bge          t0, ra, 969f
                  beq          t5, s3, 961f
                  srli         a1, t6, 9
                  and          s1, tp, t5
                  sra          s4, t4, s2
                  xori         s6, s8, -481
                  srai         t5, s11, 8
                  and          a0, a2, s3
                  bgeu         zero, a7, 962f
                  nop
                  srai         a4, s7, 21
961:              and          t3, a4, a7
962:              or           a7, t5, a1
                  bne          s11, a2, 964f
964:              slli         a2, s0, 19
                  beq          gp, s4, 984f
                  add          zero, s0, t0
                  lui          a7, 941618
                  blt          s2, tp, 971f
969:              add          a4, s9, a3
                  bltu         a1, s2, 977f
971:              bge          a4, s9, 984f
                  xori         a2, t3, -385
                  srli         t0, t2, 20
                  srl          t5, s1, s3
                  sra          s3, t2, s11
                  sltiu        s0, a5, -619
977:              ori          zero, s4, -1128
                  bgeu         s4, gp, 989f
                  srl          s1, a6, s3
                  blt          t3, t6, 998f
                  slli         s10, tp, 18
                  and          t4, s7, s5
                  srli         s8, s9, 31
984:              nop
                  sltu         s8, s0, ra
                  sltu         s8, a5, s10
                  slli         a6, sp, 20
                  bne          s4, t6, 1004f
989:              sll          t4, zero, a3
                  sll          t5, t3, t1
                  blt          sp, a6, 994f
                  slli         t0, t2, 7
                  slli         s8, s4, 23
994:              blt          t3, t4, 1004f
                  blt          s6, s6, 996f
996:              bltu         s8, s0, 999f
                  nop
998:              bltu         a3, s7, 1013f
999:              xor          a3, s11, zero
                  bge          a1, tp, 1007f
                  bgeu         s11, t3, 1010f
                  auipc        s8, 679053
                  sra          a7, s8, t3
1004:             and          a3, a1, t0
                  andi         gp, s10, -1478
                  srl          s0, t0, s6
1007:             xori         s5, t5, 1340
                  sll          a3, ra, t1
                  lui          a4, 456748
1010:             xor          s10, a1, s3
                  blt          ra, tp, 1021f
                  slli         a1, a7, 28
1013:             slt          s8, s2, t3
                  slt          s1, s9, a1
                  sra          a2, a7, s1
                  beq          t6, gp, 1036f
                  sra          zero, a6, s2
                  sltiu        tp, a4, -1983
                  sltiu        s8, s11, -1510
                  sltiu        tp, s0, 392
1021:             sra          a7, t4, a5
                  sltiu        a2, s2, 776
                  sub          gp, s1, s1
                  bltu         gp, t2, 1044f
                  bltu         t2, s9, 1032f
                  sll          zero, a1, t1
                  andi         t0, t0, 947
                  sltu         t2, ra, s3
                  bltu         a2, t4, 1044f
                  slti         tp, a5, -542
                  xor          s3, a1, a0
1032:             addi         s7, a1, -1125
                  or           s8, t0, sp
                  beq          a6, gp, 1053f
                  or           a3, s6, a1
1036:             blt          a2, t4, 1047f
                  lui          t5, 588640
                  blt          t5, a4, 1050f
                  slti         s9, s7, 881
                  bge          t5, a1, 1044f
                  sra          s3, s11, a3
                  srai         s0, s6, 15
                  slti         t3, t0, 491
1044:             slti         s3, t2, -1225
                  bge          t6, t3, 1051f
                  blt          s0, gp, 1058f
1047:             sll          a5, a6, s10
                  lui          s1, 873309
                  srai         s3, s1, 0
1050:             ori          s7, ra, 430
1051:             nop
                  srl          gp, t4, gp
1053:             bne          a3, s2, 1058f
                  or           t6, t5, t6
                  sll          a0, s5, a2
                  andi         s9, s6, -1428
                  bge          t1, a6, 1058f
1058:             andi         s7, s1, 1415
                  and          tp, a4, s11
                  lw           t6, 4(s2)
                  add          a0, tp, a3
                  sub          t3, s6, a1
                  andi         t2, a2, -2003
                  xor          t3, tp, a7
                  addi         s2, s2, 44
                  xori         a2, t1, -624
1391:             addi x24, x31, 0
1391:             jalr x24, x24, 0
sub_5:            srai         a0, t4, 12
                  sltu         s9, s10, ra
                  addi         s2, s2, -36
                  and          t0, t1, s7
                  sltu         s1, sp, a7
                  sltu         t3, s5, a7
                  sw           t6, 4(s2)
                  ori          s10, s6, -1012
                  sltiu        s7, s6, 246
                  srl          a5, s10, s7
                  addi         t5, a1, 1928
                  bltu         zero, s1, sub_5_j8 #branch to jump instr
                  sltu         t2, zero, t2
                  andi         s6, a2, -1977
                  or           gp, s5, a3
sub_5_j8:         jal          t6, sub_6 #jump sub_5 -> sub_6
                  or           a1, tp, s9
                  andi         tp, ra, -1428
                  sltiu        s4, s2, -903
                  la           t6, sub_7
                  slt          ra, sp, a6
                  addi         t6, t6, 312
                  blt          s5, a3, sub_5_j9 #branch to jump instr
                  srai         s5, a2, 1
                  lui          t4, 888016
                  sltu         s9, t3, ra
                  andi         a2, s5, 379
                  xori         s11, a1, 799
sub_5_j9:         jalr         t6, t6, -311 #jump sub_5 -> sub_7
                  srl          t0, sp, zero
                  and          s10, s10, a5
                  auipc        ra, 301420
                  sltu         t2, ra, s6
                  xori         s7, a7, -1754
                  sltiu        s7, a1, 855
                  sub          s0, a7, a4
                  xor          a7, t0, ra
sub_5_j10:        jal          t6, sub_6 #jump sub_5 -> sub_6
                  blt          t2, t5, 12f
                  bltu         s9, a5, 14f
                  bge          tp, s11, 22f
                  add          tp, zero, s9
                  slti         s3, a7, -1016
                  or           t6, s10, a3
                  andi         a6, s9, 961
                  srl          t5, s10, s11
                  bne          zero, a6, 26f
                  slt          s4, t3, sp
                  srl          s1, a0, t1
                  xor          s11, s9, a7
12:               srai         s6, s10, 2
                  bltu         t6, s7, 22f
14:               nop
                  nop
                  srli         s9, s2, 8
                  xori         zero, a5, 1059
                  lui          s3, 933209
                  sltiu        t0, s0, -1499
                  srai         a4, s3, 30
                  srai         a2, s2, 6
22:               ori          s1, a5, -18
                  or           s11, s3, s6
                  add          a5, gp, s7
                  add          s11, a6, a3
26:               nop
                  ori          a2, s6, 1765
                  xori         t5, a0, 784
                  slt          s4, t6, zero
                  bltu         s0, a7, 31f
31:               blt          s1, t6, 35f
                  slt          a2, s4, zero
                  lui          a0, 1015103
                  andi         t2, t4, -1400
35:               ori          s0, s9, -494
                  sll          s7, a5, s2
                  slti         a1, s5, 955
                  lui          a4, 15111
                  sltiu        a1, ra, 1391
                  slli         t2, t4, 16
                  and          s4, s2, s6
                  bltu         a5, t0, 59f
                  sltu         s9, s0, gp
                  ori          a7, sp, 1543
                  srli         a3, a4, 19
                  lui          t3, 405499
                  lui          a6, 701665
                  or           a2, t2, t2
                  bne          a1, a0, 60f
                  xor          t2, t0, s2
                  sltiu        s10, t1, -1231
                  sub          a2, s0, a0
                  sltiu        ra, a5, -840
                  add          s7, s4, s4
                  sra          t2, a2, a6
                  xor          s6, s1, a2
                  slt          s0, zero, t6
                  slt          s8, s1, s8
59:               ori          t0, t4, -736
60:               nop
                  auipc        zero, 240364
                  slti         t5, t3, -76
                  beq          a6, s6, 72f
                  bne          t2, t5, 82f
                  slli         a2, sp, 14
                  bltu         t5, a6, 85f
                  lui          s5, 169565
                  sll          a3, tp, s10
                  sra          t2, s0, a4
                  beq          zero, s11, 73f
                  sub          s10, t5, t4
72:               sll          gp, a2, t2
73:               bltu         a6, a6, 80f
                  and          ra, s6, s5
                  nop
                  srli         s3, s0, 24
                  or           a1, a3, s3
                  slt          t6, a2, s10
                  auipc        t3, 846308
80:               sub          a5, zero, s11
                  slli         t6, a3, 24
82:               ori          t0, a6, -59
                  ori          s11, s3, -266
                  add          t3, zero, a4
85:               sltiu        s7, s0, -1082
                  srli         s5, zero, 21
                  xori         s6, a2, 318
                  slli         s11, s8, 8
                  blt          zero, t6, 92f
                  sltu         a0, a6, t4
                  ori          s9, a5, 1948
92:               sub          a4, s7, s0
                  sra          a2, t5, a1
                  sub          tp, t6, a3
                  srli         gp, s5, 25
                  sra          s11, gp, t3
                  lw           t6, 4(s2)
                  addi         s2, s2, 36
                  sra          s9, ra, s5
                  srli         s9, t1, 18
                  sra          a3, s4, s3
                  sltiu        s7, t6, 698
                  sltiu        s6, s3, -353
                  add          tp, s7, t0
143:              addi x8, x31, 1
143:              jalr x8, x8, 0
sub_9:            or           a1, s2, s9
                  slt          t2, s5, a0
                  addi         s2, s2, -48
                  sw           t6, 4(s2)
                  slti         t0, tp, -729
                  andi         a5, s11, 614
                  nop
                  lui          t3, 945482
                  la           t5, region_0+218 #start riscv_load_store_rand_instr_stream_3
                  sltu         t0, s6, a7
                  srli         a0, a7, 6
                  auipc        zero, 303952
                  sltu         s3, t1, sp
                  sub          t6, s3, s5
                  lbu          ra, 229(t5)
                  sw           s0, -102(t5)
                  lbu          a7, 8(t5)
                  lb           s7, 89(t5)
                  sb           a7, -125(t5)
                  lbu          s4, -149(t5)
                  srl          a4, s9, s4
                  lbu          s3, -37(t5)
                  lb           s8, 186(t5)
                  srl          t6, t2, t2
                  sll          s0, sp, a7
                  lbu          a0, -197(t5)
                  sb           t2, 159(t5)
                  and          zero, a3, t1
                  ori          s3, a0, 395
                  lb           s8, -144(t5)
                  sll          a2, zero, a7
                  slti         s1, a2, -1324
                  ori          a4, sp, -1973
                  sb           s6, 189(t5)
                  srl          a1, s11, s1
                  sb           a2, -167(t5)
                  srl          s1, s4, s11
                  srai         s10, a1, 31
                  andi         gp, s7, 761
                  sltu         s4, a7, s10
                  lbu          s9, -16(t5)
                  xori         s6, zero, -1517
                  addi         t0, s8, -672
                  lh           t6, 132(t5)
                  lbu          s0, -77(t5) #end riscv_load_store_rand_instr_stream_3
                  la           s1, region_1+1541 #start riscv_load_store_rand_instr_stream_2
                  lb           a0, 49(s1)
                  srl          t0, sp, s5
                  lb           s4, 59(s1)
                  lb           s10, -5(s1)
                  lui          a7, 488434
                  sh           s2, 33(s1)
                  andi         t2, s11, -1500
                  nop
                  sra          a1, t5, a6
                  sb           s1, 3(s1)
                  lb           a0, 44(s1)
                  sb           t1, 19(s1)
                  or           t3, t2, s2
                  lh           a3, -7(s1)
                  sb           s10, 53(s1)
                  sb           gp, 41(s1)
                  lb           s4, -56(s1)
                  sll          t0, t1, a5
                  lbu          a1, 56(s1)
                  auipc        t0, 957212
                  lb           a0, -15(s1)
                  andi         s5, s4, 1659
                  lbu          ra, 22(s1)
                  lh           s10, -13(s1)
                  sb           s9, -33(s1)
                  sra          a1, a2, t5
                  add          t5, t2, t5
                  ori          t5, s6, 374
                  xor          gp, t0, s2
                  xori         s5, t5, -1725
                  srai         t2, a1, 23
                  lbu          s5, -40(s1)
                  srli         s3, t2, 6
                  sb           a4, -7(s1)
                  lhu          t2, -9(s1) #end riscv_load_store_rand_instr_stream_2
                  auipc        a0, 598950
                  and          gp, s4, s7
                  xor          ra, s10, s4
                  nop
                  srai         s6, a5, 1
                  lui          a5, 1012579
                  xor          a4, a0, s10
                  slt          t6, s7, t0
                  nop
                  beq          s4, s3, 24f
                  auipc        s5, 937520
                  srli         s7, s3, 22
                  add          t0, s1, a5
                  srai         ra, s3, 4
                  addi         s7, sp, -516
                  sll          s7, t4, s3
                  bge          t6, s5, 34f
                  or           s3, a6, t1
                  ori          s11, a3, -446
                  nop
                  auipc        t0, 644338
                  slli         s11, t1, 31
                  bltu         s11, s1, 34f
                  slti         t2, s11, 68
24:               bgeu         s4, ra, 44f
                  bne          s0, sp, 38f
                  bge          s2, a1, 32f
                  and          a1, tp, s6
                  beq          a2, a2, 38f
                  sll          s11, s4, a2
                  or           a4, gp, a4
                  slt          s3, s9, s4
32:               auipc        s3, 708966
                  lui          zero, 340895
34:               ori          s1, t0, 840
                  bge          a3, s2, 50f
                  slt          t6, tp, a3
                  and          tp, ra, t6
38:               lui          t5, 471938
                  sll          s7, tp, t5
                  srai         gp, a1, 12
                  blt          s2, s1, 56f
                  or           a3, t0, a1
                  srli         s9, a5, 10
44:               slt          s9, s9, s4
                  srli         a1, s6, 14
                  slli         t5, s6, 9
                  lui          s0, 629333
                  sub          ra, s1, s10
                  xori         s5, t4, 153
50:               slti         a6, s6, -1089
                  or           s6, a0, gp
                  auipc        t2, 312979
                  sra          gp, s9, a1
                  bge          a6, t1, 71f
                  or           t0, a5, t4
56:               xori         s5, s2, 423
                  add          s4, zero, s10
                  lui          a4, 982792
                  sra          s8, s1, s0
                  ori          tp, s11, 1010
                  slti         s11, t0, -416
                  sltiu        a2, a3, 1570
                  slli         s3, ra, 25
                  bge          a5, a0, 72f
                  sra          s11, t3, a2
                  andi         s11, s4, -223
                  bgeu         t2, t0, 68f
68:               bne          t2, tp, 83f
                  sll          s4, sp, t5
                  nop
71:               xori         ra, s3, -1941
72:               srl          s7, s4, tp
                  srli         a0, zero, 20
                  srli         s11, s4, 8
                  bge          s8, a5, 86f
                  srl          a0, t0, a2
                  sub          t5, t2, a6
                  sub          t5, a6, zero
                  slti         s9, a6, -988
                  ori          t6, a2, -457
                  bne          a3, a5, 82f
82:               or           s11, s8, t2
83:               sra          a4, s0, a1
                  sltiu        a7, t6, 2018
                  add          a0, s9, s6
86:               sltu         a0, ra, s3
                  ori          t3, sp, 976
                  sub          s8, sp, a3
                  xori         tp, s3, 997
                  blt          tp, s8, 99f
                  andi         zero, s6, -1867
                  blt          sp, s10, 110f
                  srl          s5, sp, a5
                  auipc        s1, 735242
                  bne          s4, t3, 108f
                  auipc        a1, 524690
                  srl          a5, s4, a1
                  bgeu         t5, t0, 101f
99:               sltiu        s9, s1, -1565
                  and          s3, a0, gp
101:              slti         t6, s3, 663
                  nop
                  beq          t4, s7, 116f
                  sub          gp, a2, s1
                  addi         s9, a2, -135
                  add          tp, a3, t1
                  xor          t3, s6, a2
108:              auipc        s1, 878645
                  ori          a0, a1, -545
110:              bltu         a3, t5, 118f
                  add          s5, gp, zero
                  xori         t2, s1, 539
                  lui          a7, 181454
                  slli         t4, t3, 15
                  sltiu        tp, s3, -1333
116:              auipc        tp, 648238
                  sra          ra, t0, a7
118:              bltu         s11, ra, 129f
                  andi         s0, t6, 2005
                  xor          a7, sp, tp
                  bne          s10, a2, 139f
                  srl          t4, a4, s11
                  bne          tp, a5, 125f
                  slti         s9, a0, 456
125:              add          a1, a1, s10
                  lui          s0, 437867
                  bne          t4, s7, 139f
                  nop
129:              sub          s9, a0, sp
                  lui          s5, 343380
                  la           ra, region_0+1534 #start riscv_load_store_rand_instr_stream_4
                  lh           t4, -10(ra)
                  sb           gp, -2(ra)
                  sb           a6, 0(ra)
                  lbu          a2, 8(ra)
                  lb           tp, -3(ra)
                  or           t4, t6, ra
                  lb           s6, -11(ra)
                  sw           t0, 2(ra)
                  lb           s4, 12(ra)
                  lh           t3, 8(ra)
                  lbu          gp, 5(ra)
                  lui          a7, 958368
                  lbu          a3, -1(ra)
                  lbu          gp, 7(ra)
                  auipc        s6, 469458
                  lbu          t5, 1(ra)
                  sltu         s11, s10, t5
                  nop
                  addi         a6, tp, 1521
                  lh           a3, 10(ra)
                  sb           a7, 0(ra)
                  srli         s1, a3, 8
                  lb           t4, 15(ra)
                  lbu          s0, 7(ra)
                  lbu          s6, -1(ra)
                  or           s8, s0, a5
                  and          s0, t1, s5
                  slt          a0, a4, t1
                  sb           s4, -11(ra)
                  or           s10, t1, s9
                  lb           t2, 9(ra)
                  sub          s9, t1, tp
                  lbu          s9, 1(ra)
                  lb           s7, 3(ra)
                  and          a5, a1, s4
                  auipc        s0, 980828
                  addi         s4, s5, -996
                  sb           zero, -11(ra)
                  sb           t6, 11(ra)
                  sb           s7, 15(ra)
                  lbu          a5, -3(ra)
                  sh           s11, 14(ra)
                  lw           tp, 2(ra) #end riscv_load_store_rand_instr_stream_4
                  srli         zero, a7, 4
                  sltu         a6, t1, s0
                  bne          s10, gp, 136f
                  xor          s4, s6, s3
                  add          a5, a4, gp
136:              add          s5, s10, s8
                  slt          a3, s0, a6
                  srai         s3, t2, 10
139:              add          a0, t6, s1
                  andi         a0, s2, -575
                  sll          s4, t2, t5
                  sra          t0, ra, s5
                  bne          t1, tp, 158f
                  and          t2, zero, t4
                  nop
                  and          t0, t1, s2
                  bgeu         a4, a1, 154f
                  sll          a4, a2, s4
                  slli         a5, s1, 25
                  add          s7, t3, s3
                  xori         zero, a4, 1826
                  slli         a0, a2, 4
                  add          s7, s7, s9
154:              or           s7, t6, a0
                  slli         s9, s5, 14
                  andi         s0, s1, -1298
                  slti         s3, tp, 365
158:              bge          s3, s1, 175f
                  and          t5, a1, s10
                  slti         t4, s3, 333
                  sltu         tp, a0, t3
                  or           s0, s3, a6
                  andi         t6, ra, 1156
                  ori          a0, zero, -51
                  bge          s1, a5, 177f
                  add          a3, s7, ra
                  bltu         a2, gp, 182f
                  lui          s7, 902244
                  sltu         ra, a0, a4
                  beq          t1, t3, 185f
                  bge          a0, a3, 179f
                  blt          t6, a1, 187f
                  slli         ra, t3, 4
                  or           gp, a6, s9
175:              bgeu         a5, t3, 187f
                  ori          a7, a5, 1036
177:              sub          t2, tp, s0
                  bltu         t1, a0, 191f
179:              slli         s11, a0, 23
                  and          zero, gp, s4
                  blt          s7, ra, 193f
182:              add          t5, s0, t4
                  xor          t6, s6, s4
                  beq          s9, t5, 197f
185:              slti         t5, t5, 1131
                  sub          s8, ra, t0
187:              sltu         a0, s5, s3
                  srl          t0, s4, sp
                  bne          s8, a0, 199f
                  and          t3, a7, s5
191:              bne          s7, s8, 209f
                  xori         a4, s3, 185
193:              blt          a5, t1, 210f
                  srai         a0, gp, 24
                  auipc        gp, 978372
                  slli         s11, a3, 23
197:              sltiu        a7, a4, -36
                  and          t2, s10, s4
199:              bgeu         s1, s3, 201f
                  slt          t4, t6, s9
201:              blt          s0, s8, 210f
                  bne          t4, a6, 220f
                  addi         a6, t3, 434
                  or           s5, a6, a1
                  srl          t5, s8, s3
                  andi         s6, s11, -1464
                  srl          a0, s9, s0
                  bgeu         t1, s7, 211f
209:              sub          a4, t0, s2
210:              addi         a4, tp, -604
211:              sltu         t2, s6, tp
                  bltu         zero, s10, 220f
                  lui          t6, 144200
                  sub          a1, a3, ra
                  srli         s10, a3, 10
                  bltu         s10, a5, 217f
217:              srai         t5, s8, 8
                  sll          a1, t0, t3
                  nop
220:              beq          s11, a1, 238f
                  xori         s5, t3, -338
                  xor          a5, s10, a1
                  ori          s5, a1, -1242
                  bge          t5, t2, 236f
                  nop
                  add          t5, t6, a3
                  and          t6, t4, t2
                  auipc        t0, 858136
                  lui          a0, 134521
                  ori          s9, a5, -691
                  bgeu         s11, t0, 248f
                  auipc        a4, 988786
                  slli         s9, t4, 26
                  or           s5, tp, t1
                  nop
236:              lui          s3, 837291
                  slli         tp, ra, 15
238:              or           t0, s9, a0
                  beq          s4, gp, 254f
                  sub          a1, s11, gp
                  sltiu        s1, t2, 254
                  bne          s9, ra, 248f
                  xor          t6, a5, t6
                  slt          gp, a6, zero
                  bltu         s10, a4, 246f
246:              srl          a5, a2, tp
                  bge          t0, s6, 250f
248:              sltiu        s5, tp, -1228
                  srl          a1, a2, s4
250:              nop
                  bltu         a3, ra, 262f
                  and          tp, t6, a5
                  and          s7, s2, s2
254:              srl          gp, t1, s6
                  sub          ra, s9, s2
                  sub          s5, s5, gp
                  sltu         t6, a0, t3
                  blt          a3, s8, 265f
                  bgeu         t4, tp, 270f
                  srl          t0, t1, a2
                  sltu         s7, t0, a4
262:              lui          t6, 677689
                  sltu         s8, s9, t1
                  xor          s9, s5, s0
265:              slt          s1, t4, a4
                  slt          a6, s6, s7
                  nop
                  add          s10, a2, a6
                  srli         a2, s1, 13
270:              or           a6, s3, s7
                  bgeu         s7, s6, 291f
                  bge          s1, s7, 285f
                  xor          a0, a3, s8
                  sltiu        s7, a6, 1452
                  srl          t6, tp, s4
                  andi         tp, tp, -1445
                  sra          s1, t4, a4
                  xor          s11, s11, a0
                  beq          t5, s6, 294f
                  slti         s4, s2, 839
                  slt          a5, tp, s9
                  srl          zero, t4, s0
                  lui          a2, 681783
                  xor          s9, s3, s11
285:              sltiu        s6, s1, -1589
                  slli         s10, t2, 19
                  sll          a3, s8, s4
                  sltu         t0, s6, sp
                  and          s10, s0, s3
                  xor          a6, a3, a2
291:              blt          s7, a5, 309f
                  slt          t0, s7, a0
                  srl          s9, s3, a3
294:              auipc        s10, 1027260
                  beq          gp, s5, 313f
                  blt          s3, a6, 298f
                  beq          t4, a4, 310f
298:              add          s5, tp, t6
                  sra          s3, t0, a1
                  auipc        t5, 350242
                  or           s10, s10, t0
                  la           s7, sub_10
                  auipc        s10, 257628
                  addi         s7, s7, 1024
                  nop
                  xori         s8, s2, -432
                  sra          s10, sp, s2
                  slli         a7, t5, 25
                  srl          a7, a2, a3
                  srai         zero, t6, 17
sub_9_j13:        jalr         t6, s7, -1023 #jump sub_9 -> sub_10
                  srli         s10, a6, 0
                  ori          s10, t3, -1206
                  slti         a5, a4, 1829
                  sra          a0, s4, s6
                  la           s3, region_0+752 #start riscv_load_store_rand_instr_stream_0
                  sltiu        a7, gp, 137
                  sb           s5, 685(s3)
                  add          s10, gp, t4
                  lb           s9, 911(s3)
                  slt          t5, a5, a5
                  lhu          a7, 1130(s3)
                  sh           s8, 154(s3)
                  sw           a6, -24(s3)
                  sb           s2, 1031(s3)
                  lbu          tp, 67(s3)
                  and          t3, tp, t3
                  lbu          s8, 71(s3)
                  lw           a0, 1112(s3)
                  xor          t2, ra, sp
                  sltu         a2, t6, ra
                  addi         s5, t4, 1847
                  lui          t5, 489484
                  slti         s4, gp, 1307
                  lb           s7, 1005(s3)
                  nop
                  lb           gp, -567(s3)
                  srli         ra, a1, 24
                  sb           t6, 857(s3)
                  slli         zero, t6, 30
                  lbu          a4, -83(s3)
                  sb           a0, 645(s3)
                  sh           s0, -394(s3)
                  lbu          zero, -389(s3)
                  lhu          gp, 826(s3)
                  slli         a2, zero, 12
                  sub          s9, s11, s8
                  lh           s10, 204(s3)
                  lb           a5, -653(s3)
                  sltiu        s11, s1, 405
                  lb           s10, -664(s3)
                  lb           a3, 551(s3) #end riscv_load_store_rand_instr_stream_0
                  sub          t0, t2, gp
                  ori          t3, s5, 1549
                  or           a5, t3, sp
309:              slt          tp, t5, t2
310:              andi         t3, a1, -1641
                  slli         a1, s2, 18
                  and          a1, s8, s4
313:              sll          t0, zero, a3
                  or           a4, s5, s3
                  beq          sp, s9, 332f
                  bge          s5, s1, 331f
                  auipc        s4, 786209
                  bge          s2, a7, 319f
319:              bne          s9, s11, 325f
                  bgeu         a4, t3, 323f
                  sltiu        s9, s0, -804
                  sll          a2, a2, a1
323:              sltiu        s10, s2, -1862
                  lui          s9, 221710
325:              bltu         s2, s1, 340f
                  la           a5, region_0+168 #start riscv_load_store_rand_instr_stream_1
                  lb           s7, -5(a5)
                  slt          a6, s10, s1
                  sw           t2, -60(a5)
                  andi         s8, s8, -581
                  sltiu        s4, a6, -1532
                  add          s5, a5, t3
                  lb           a4, -53(a5)
                  sra          s1, s4, s5
                  ori          s9, t1, 982
                  srl          a4, tp, s7
                  sra          a3, s8, t6
                  sll          s11, t4, s8
                  add          a3, s5, t2
                  lui          a6, 653123
                  sb           s11, 45(a5)
                  slt          ra, t5, s9
                  xor          a7, t3, s8
                  nop
                  slti         s5, a0, 901
                  slti         t2, s3, 16
                  ori          ra, s11, -178
                  lbu          a1, -1(a5)
                  sra          a4, s3, s7
                  lhu          s11, -2(a5)
                  slt          gp, s4, s6
                  srl          tp, t3, s7
                  lb           t4, -5(a5)
                  lbu          s4, 16(a5)
                  ori          s11, t2, -1891
                  auipc        a4, 177534
                  and          a1, s2, s8
                  srl          a6, t0, s3
                  andi         a6, a3, -426
                  or           s7, t4, a6
                  lbu          a3, -46(a5)
                  sll          t6, a3, s2
                  slti         s8, a3, -1044
                  sll          s5, a3, zero
                  sb           t4, -61(a5)
                  sltiu        zero, s3, -2021
                  lb           a7, -6(a5) #end riscv_load_store_rand_instr_stream_1
                  ori          t4, s5, 830
                  xori         a1, a4, -1243
                  xor          a5, ra, zero
                  sll          a6, s9, a2
                  bltu         t1, tp, 342f
331:              xori         a4, s1, 816
332:              srai         a7, t1, 7
                  bge          a5, s7, 341f
                  slt          a0, s6, s1
                  sltu         s4, s1, s4
                  srai         a3, a6, 9
                  srli         a0, t6, 2
                  slti         a4, a0, -565
                  auipc        s4, 402569
340:              andi         t3, s1, 1312
341:              bgeu         t6, s0, 361f
342:              bltu         s5, s6, 354f
                  sltu         a4, t1, a2
                  and          t4, a6, t4
                  lui          s5, 811273
                  xor          s1, t5, s10
                  sub          tp, s6, s8
                  ori          a6, t4, -1926
                  blt          s11, ra, 366f
                  and          zero, a0, tp
                  srl          s0, a2, a5
                  slt          t0, ra, s8
                  sra          s7, a4, s1
354:              slli         s10, s2, 0
                  srli         a6, t2, 19
                  sub          tp, s1, t5
                  and          s3, s1, s2
                  blt          t5, s11, 359f
359:              bltu         gp, t4, 362f
                  sra          s0, s2, s10
361:              sltiu        zero, s5, 2005
362:              lui          a0, 735595
                  srl          a3, a5, gp
                  blt          t4, zero, 375f
                  andi         t3, t1, -1258
366:              sub          t3, a1, a5
                  or           s11, s7, t5
                  and          t6, s8, s1
                  sltiu        a1, t4, 1258
                  bge          t2, s10, 382f
                  lui          a4, 17340
                  slt          s9, s10, t5
                  xor          a5, ra, ra
                  srl          s10, s11, a2
375:              srl          t0, s2, t3
                  bltu         t1, a5, 387f
                  slli         s8, t1, 3
                  addi         s6, a4, 837
                  srai         a0, ra, 3
                  bne          a0, s2, 390f
                  slti         zero, a2, 1850
382:              or           ra, s3, s1
                  nop
                  lui          s1, 452953
                  srl          zero, a0, a1
                  beq          t1, s10, 401f
387:              addi         a3, t2, 874
                  bltu         zero, s8, 401f
                  bgeu         s10, t0, 398f
390:              auipc        s1, 689623
                  bgeu         ra, a4, 399f
                  auipc        s11, 53740
                  bne          t3, a4, 408f
                  bge          t6, s0, 412f
                  beq          a0, s0, 410f
                  xor          a1, s0, s4
                  slli         a3, a4, 0
398:              slt          s1, s1, a7
399:              bne          a6, zero, 406f
                  sltu         t5, t5, a6
401:              and          a5, a6, t0
                  xori         t5, s4, -489
                  slt          a6, t5, zero
                  bne          t3, tp, 417f
                  nop
406:              bge          s3, a3, 412f
                  lui          s7, 663349
408:              srai         s0, a1, 28
                  beq          a6, a7, 412f
410:              bgeu         zero, tp, 417f
                  xor          tp, s10, a5
412:              add          t2, tp, tp
                  sltiu        s3, s3, 1287
                  bgeu         a5, t6, 429f
                  sra          s1, s0, t0
                  bne          s4, t3, 436f
417:              beq          s10, t3, 430f
                  addi         a3, tp, 756
                  xori         a5, t2, -949
                  sll          a2, s3, a3
                  bne          s0, a6, 431f
                  bne          t6, tp, 430f
                  auipc        t0, 718328
                  sll          s0, a1, s8
                  sltiu        t2, a3, 404
                  sll          s9, s1, t0
                  bne          s3, s3, 445f
                  bltu         s11, t0, 446f
429:              addi         ra, a3, 1945
430:              srli         a0, t6, 9
431:              xori         a3, a0, -1945
                  add          a5, a1, a4
                  nop
                  sll          zero, tp, t3
                  beq          sp, ra, 450f
436:              bge          s5, a7, 438f
                  addi         s11, s5, 1818
438:              add          t5, t5, tp
                  srl          s11, s4, s5
                  nop
                  and          t5, a0, s2
                  bltu         a0, s1, 455f
                  addi         a1, t2, -1871
                  auipc        s8, 12259
445:              ori          t6, a4, -1249
446:              sltiu        s5, s3, 1101
                  sll          s8, zero, a2
                  bne          a0, gp, 465f
                  add          t2, a0, t6
450:              slt          zero, t2, a6
                  sub          s11, t3, t4
                  lui          t3, 449370
                  beq          s9, a3, 470f
                  slt          a7, ra, a6
455:              sub          s3, s6, t3
                  nop
                  sll          a1, s8, a6
                  xori         a3, a2, -1180
                  and          ra, s2, t3
                  nop
                  and          s10, a2, a2
                  andi         s8, s10, 821
                  bltu         s1, a6, 464f
464:              bne          a7, a7, 476f
465:              sub          s3, t0, s9
                  srl          a0, a7, s6
                  nop
                  srl          t2, t5, t5
                  nop
470:              sll          t3, s0, s3
                  addi         t4, t1, -934
                  lui          a0, 694791
                  xori         t6, gp, -2005
                  bge          t2, s1, 482f
                  ori          a7, a2, -1699
476:              srai         s9, t0, 14
                  slli         a3, s9, 26
                  addi         a5, t0, -611
                  slti         t3, s4, 832
                  xor          s7, t3, t1
                  xor          zero, s5, a6
482:              nop
                  srli         a1, t4, 22
                  or           ra, a1, s0
                  srl          t0, a5, t4
                  sltu         s10, t6, t4
                  slli         t6, a0, 28
                  nop
                  ori          a1, s2, 357
                  nop
                  add          t3, t1, a0
                  bltu         gp, s8, 510f
                  blt          t1, a2, 504f
                  auipc        tp, 189262
                  add          a0, s2, zero
                  srai         t5, t4, 24
                  xor          s0, t1, sp
                  sltiu        a1, t1, -563
                  sltu         tp, s11, t0
                  srai         zero, a6, 3
                  sll          gp, t5, t2
                  xori         a6, s7, -1979
                  sra          s1, s6, t3
504:              addi         s0, t5, 1527
                  bgeu         a7, a6, 518f
                  sltu         a2, t4, a4
                  slti         a6, s1, -632
                  blt          a4, s4, 520f
                  nop
510:              nop
                  or           t0, t4, tp
                  or           s5, s9, s6
                  andi         zero, a4, 1024
                  bgeu         s10, s10, 529f
                  sltu         a0, t5, s11
                  slt          t6, t4, t0
                  nop
518:              bltu         s2, a4, 530f
                  add          a6, zero, s2
520:              ori          s1, sp, -499
                  xori         s11, t1, -1787
                  andi         a7, s9, 1043
                  beq          a0, a6, 538f
                  lui          ra, 552118
                  sub          a3, a1, t1
                  sra          t6, a7, s2
                  bgeu         a5, s8, 536f
                  slt          a7, a2, a1
529:              xori         a5, a4, 833
530:              and          a5, t3, a5
                  sltiu        tp, a5, 1006
                  andi         s4, a3, -2044
                  auipc        a2, 479707
                  srl          s8, s8, a4
                  andi         a7, a5, 1518
536:              bgeu         tp, s8, 537f
537:              andi         s4, a5, 603
538:              ori          a0, s8, 1123
                  blt          s6, a1, 554f
                  bgeu         t2, sp, 543f
                  add          a7, a1, s5
                  auipc        ra, 268988
543:              sra          t3, s6, t6
                  slt          t2, gp, s9
                  srai         s11, zero, 20
                  sra          a4, s6, s3
                  bge          s5, a1, 558f
                  bltu         sp, a2, 556f
                  or           a1, t6, s6
                  sra          a7, ra, tp
                  blt          s2, s7, 566f
                  nop
                  slli         t0, s3, 11
554:              xori         s4, a1, 502
                  slti         s7, s1, -864
556:              bne          t4, a3, 571f
                  sltu         t0, a0, gp
558:              beq          s6, t6, 570f
                  sll          t5, tp, s7
                  slt          s4, a2, s7
                  slli         s10, a7, 30
                  addi         s4, t4, 990
                  bne          t4, t6, 578f
                  add          a2, ra, s7
                  srl          a6, s8, s5
566:              auipc        a7, 947706
                  bgeu         a6, zero, 573f
                  bne          s10, s9, 580f
                  andi         s11, s4, 1401
570:              beq          s0, tp, 588f
571:              nop
                  sll          a4, t2, s5
573:              srl          s7, gp, s0
                  or           s7, t1, a4
                  slti         tp, s3, -759
                  sra          s6, t4, tp
                  blt          ra, a6, 579f
578:              addi         zero, s3, -673
579:              blt          t5, s6, 580f
580:              and          s1, t3, a6
                  bltu         t0, zero, 592f
                  and          a1, t1, s9
                  blt          a0, t3, 586f
                  slli         a0, a4, 17
                  sra          s5, t1, s7
586:              slt          a1, s8, s5
                  bne          ra, s10, 594f
588:              sll          s9, s8, s7
                  srl          s3, a3, t3
                  bgeu         s2, tp, 605f
                  sra          a3, s7, s6
592:              nop
                  sltu         s1, s2, a0
594:              addi         s4, s5, -906
                  beq          a5, a7, 607f
                  sll          a6, ra, s8
                  and          t4, gp, sp
                  sra          s4, tp, a7
                  ori          zero, t2, 301
                  add          t5, a0, sp
                  sll          t5, a1, zero
                  sll          t3, a5, s8
                  nop
                  blt          a1, ra, 615f
605:              add          t0, s8, a5
                  sll          s0, s2, tp
607:              lui          s6, 471429
                  slli         a4, t6, 16
                  srai         t2, t1, 15
                  bgeu         s6, t0, 613f
                  bne          sp, sp, 612f
612:              beq          t5, t5, 621f
613:              sll          t5, zero, s2
                  bltu         a0, t6, 627f
615:              nop
                  sll          s0, a0, s11
                  lui          s11, 864760
                  srl          a1, ra, sp
                  ori          a6, s11, 892
                  andi         s3, gp, 1604
621:              srl          t2, s8, a2
                  andi         ra, t6, 915
                  bltu         s8, s1, 641f
                  and          t4, s9, s4
                  bltu         s1, a7, 640f
                  auipc        t3, 791063
627:              addi         a1, t1, -42
                  or           zero, s2, t6
                  ori          t0, s1, -1184
                  xori         s11, s6, -26
                  sub          t3, ra, zero
                  andi         t5, s1, -1077
                  slli         a1, s0, 14
                  bge          tp, t4, 651f
                  srl          t6, a0, s2
                  bltu         a6, t3, 654f
                  beq          t6, a6, 657f
                  or           s10, s6, s2
                  srl          t3, t3, s3
640:              sub          s11, t1, s11
641:              srl          s1, t5, a0
                  and          a6, a4, t5
                  add          tp, t2, t6
                  slt          a6, a3, a3
                  andi         t0, s1, -151
                  sra          tp, a5, s0
                  sll          s3, s4, a3
                  andi         a1, s3, 932
                  nop
                  sra          s9, zero, ra
651:              sll          a0, a4, a2
                  auipc        s0, 412
                  sltu         t5, ra, t0
654:              bge          a6, s9, 662f
                  slli         s10, s9, 1
                  sra          s0, tp, s6
657:              auipc        a5, 124935
                  sltu         a4, a7, a2
                  bgeu         s8, a2, 669f
                  or           a2, t1, sp
                  auipc        t3, 633578
662:              xori         s11, zero, 1446
                  blt          a5, s6, 676f
                  xor          a2, t5, s10
                  slli         a4, t1, 9
                  sll          ra, a3, t6
                  sltu         s10, zero, s1
                  sltu         gp, s0, s10
669:              slt          gp, gp, s11
                  add          a5, t4, t4
                  srli         a2, s7, 21
                  xori         a3, s9, -326
                  bne          t4, s3, 690f
                  slli         t5, s1, 26
                  srl          t2, ra, s4
676:              slli         t6, a7, 31
                  slli         a2, t2, 6
                  bne          s0, s6, 691f
                  bne          s5, sp, 680f
680:              bge          a7, a5, 698f
                  bgeu         t4, a3, 694f
                  sltiu        t4, s8, 625
                  beq          s10, s11, 701f
                  and          s10, t6, tp
                  srli         s4, s2, 20
                  addi         s1, tp, -813
                  auipc        s4, 785062
                  srli         a2, s5, 21
                  blt          s2, gp, 690f
690:              srai         zero, s1, 14
691:              addi         s6, a0, -1746
                  srli         s8, s4, 26
                  srl          s1, s4, s8
694:              auipc        s11, 952055
                  nop
                  bgeu         s11, a1, 711f
                  sub          s5, a3, s6
698:              xor          s3, s4, s4
                  sll          ra, t3, s4
                  bgeu         t5, t5, 702f
701:              ori          a5, a7, -1560
702:              slli         a4, s0, 12
                  slli         s10, s6, 10
                  auipc        zero, 676601
                  sltiu        a2, tp, -1471
                  xor          t0, ra, a6
                  beq          a4, s8, 721f
                  sra          a2, a3, t3
                  srl          s5, s8, s2
                  auipc        s1, 767628
711:              bgeu         ra, s10, 718f
                  sltiu        s11, a6, 1353
                  ori          t0, tp, 2043
                  bne          t3, gp, 717f
                  sltiu        a0, s3, 380
                  xori         s1, s9, -1990
717:              ori          ra, a0, -372
718:              bne          t6, s10, 721f
                  srl          s4, a1, s4
                  slt          t0, t5, zero
721:              xor          s10, zero, t2
                  lui          t5, 110346
                  lw           t6, 4(s2)
                  addi         s2, s2, 48
                  srai         s8, s1, 27
                  slt          t4, a1, s7
941:              addi x5, x31, 1
941:              jalr x5, x5, 0
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
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x6, x18, zero
                  csrr x14, 0x300 # MSTATUS
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 31
                  bne x14, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x14, 0x341 # MEPC
                  csrr x14, 0x342 # MCAUSE
                  li x30, 0x3 # BREAKPOINT
                  beq x14, x30, ebreak_handler
                  li x30, 0x8 # ECALL_UMODE
                  beq x14, x30, ecall_handler
                  li x30, 0x9 # ECALL_SMODE
                  beq x14, x30, ecall_handler
                  li x30, 0xb # ECALL_MMODE
                  beq x14, x30, ecall_handler
                  li x30, 0x1
                  beq x14, x30, instr_fault_handler
                  li x30, 0x5
                  beq x14, x30, load_fault_handler
                  li x30, 0x7
                  beq x14, x30, store_fault_handler
                  li x30, 0xc
                  beq x14, x30, pt_fault_handler
                  li x30, 0xd
                  beq x14, x30, pt_fault_handler
                  li x30, 0xf
                  beq x14, x30, pt_fault_handler
                  li x30, 0x2 # ILLEGAL_INSTRUCTION
                  beq x14, x30, illegal_instr_handler
                  csrr x30, 0x343 # MTVAL
                  1: la x2, test_done
                  jalr x1, x2, 0

ecall_handler:    
                  la x14, _start
                  sw x0, 0(x14)
                  sw x1, 4(x14)
                  sw x2, 8(x14)
                  sw x3, 12(x14)
                  sw x4, 16(x14)
                  sw x5, 20(x14)
                  sw x6, 24(x14)
                  sw x7, 28(x14)
                  sw x8, 32(x14)
                  sw x9, 36(x14)
                  sw x10, 40(x14)
                  sw x11, 44(x14)
                  sw x12, 48(x14)
                  sw x13, 52(x14)
                  sw x14, 56(x14)
                  sw x15, 60(x14)
                  sw x16, 64(x14)
                  sw x17, 68(x14)
                  sw x18, 72(x14)
                  sw x19, 76(x14)
                  sw x20, 80(x14)
                  sw x21, 84(x14)
                  sw x22, 88(x14)
                  sw x23, 92(x14)
                  sw x24, 96(x14)
                  sw x25, 100(x14)
                  sw x26, 104(x14)
                  sw x27, 108(x14)
                  sw x28, 112(x14)
                  sw x29, 116(x14)
                  sw x30, 120(x14)
                  sw x31, 124(x14)
                  la x2, write_tohost
                  jalr x0, x2, 0

instr_fault_handler:
                  add x18, x6, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

load_fault_handler:
                  add x18, x6, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

store_fault_handler:
                  add x18, x6, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

ebreak_handler:   
                  csrr  x14, 0x341
                  addi  x14, x14, 4
                  csrw  0x341, x14
                  add x18, x6, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

illegal_instr_handler:
                  csrr  x14, 0x341
                  addi  x14, x14, 4
                  csrw  0x341, x14
                  add x18, x6, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x14, 0x300 # MSTATUS;
                  csrr  x14, 0x304 # MIE;
                  csrr  x14, 0x344 # MIP;
                  csrrc x14, 0x344, x14 # MIP;
                  add x18, x6, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
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
