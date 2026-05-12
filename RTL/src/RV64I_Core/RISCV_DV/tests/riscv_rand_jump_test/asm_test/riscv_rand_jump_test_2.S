.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x30, h0_start
jalr x0, x30, 0
h0_start:
                  li x4, 0x40000100
                  csrw 0x301, x4
kernel_sp:        
                  la x5, kernel_stack_end

trap_vec_init:    
                  la x4, mtvec_handler
                  ori x4, x4, 0
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
                  li x0, 0x0
                  li x1, 0x80000000
                  li x2, 0x0
                  li x3, 0xb
                  li x4, 0x80000000
                  li x7, 0xa
                  li x8, 0x0
                  li x9, 0x0
                  li x10, 0xf38cce03
                  li x11, 0x59d06648
                  li x12, 0xfc9a9e7a
                  li x13, 0xbc9a5208
                  li x14, 0x0
                  li x15, 0x0
                  li x16, 0x80000000
                  li x17, 0x80000000
                  li x18, 0x0
                  li x19, 0xf773f1f9
                  li x20, 0x6af9c977
                  li x21, 0x80000000
                  li x22, 0xff8b90c3
                  li x23, 0xf0ff1b63
                  li x24, 0x80000000
                  li x25, 0xfa89b541
                  li x26, 0xf
                  li x27, 0xf0076c8b
                  li x28, 0x80000000
                  li x29, 0xc925067a
                  li x30, 0x0
                  li x31, 0xf88dd3de
                  la x6, user_stack_end
main:             ori          t2, t6, 1503
                  andi         t3, a4, 1564
                  srli         s10, s11, 8
                  la           a0, sub_3
                  addi         a0, a0, 63
                  sltiu        a5, t5, -1729
                  sra          sp, s10, s10
                  slli         gp, ra, 7
                  sll          a2, a2, t0
                  or           a7, t4, tp
                  auipc        gp, 880797
main_j3:          jalr         s3, a0, -62 #jump main -> sub_3
                  la           sp, region_0+273 #start riscv_load_store_rand_instr_stream_0
                  add          s6, a4, t1
                  lbu          a3, 923(sp)
                  slli         tp, ra, 5
                  andi         s4, a5, 988
                  ori          tp, a7, -908
                  sltiu        zero, s3, -1045
                  sb           t6, 740(sp)
                  lh           s5, 857(sp)
                  sb           ra, 1448(sp)
                  srli         tp, t3, 31
                  lbu          a5, 233(sp)
                  sb           a0, 1174(sp)
                  lb           s7, 814(sp)
                  sw           s5, 899(sp)
                  sltu         t4, s1, a7
                  sb           s6, 820(sp)
                  sra          s11, a7, t5
                  lbu          zero, 924(sp)
                  srai         a4, a4, 24
                  xor          a7, a1, s5
                  lb           a5, 1271(sp)
                  lhu          gp, 1651(sp)
                  sra          a4, s7, s0
                  sh           zero, 677(sp)
                  sh           s9, 1111(sp)
                  sub          s8, t4, s4
                  sb           sp, 949(sp)
                  srai         t6, s1, 15
                  lbu          t4, 566(sp)
                  lb           ra, 744(sp)
                  sub          t6, zero, t1
                  sh           a5, 1103(sp)
                  lbu          s11, 1297(sp)
                  lh           s2, 917(sp)
                  lbu          s6, -140(sp)
                  lbu          a2, 381(sp)
                  srli         s6, s10, 24
                  lb           s9, 562(sp) #end riscv_load_store_rand_instr_stream_0
                  bltu         sp, a4, 15f
                  bltu         s10, gp, 18f
                  bne          s5, a3, 6f
                  add          a5, t5, a4
                  slli         t3, s2, 8
                  addi         t6, a7, 360
6:                blt          s4, t0, 20f
                  lui          s9, 356243
                  xor          s9, tp, s8
                  sra          s0, s8, s11
                  bge          s6, s1, 16f
                  bgeu         t2, s10, 27f
                  slli         a0, zero, 30
                  xori         sp, a3, 837
                  srai         s4, a7, 25
15:               sll          s5, s4, s7
16:               bge          a0, a3, 23f
                  srl          s9, s8, s10
18:               andi         a6, a3, 1537
                  and          a7, tp, t1
20:               srl          a6, s3, t1
                  auipc        t2, 39081
                  sltu         s2, s5, ra
23:               bne          a4, sp, 33f
                  sub          t4, s6, s11
                  xori         t4, s8, 504
                  bne          t0, s4, 28f
27:               ori          s4, t0, 1829
                  ori          a3, t6, 1472
                  xor          s3, s0, a0
                  la           gp, sub_2
                  srl          t4, t6, a1
                  add          sp, s9, a7
                  addi         gp, gp, 783
                  andi         s1, s5, -1090
main_j2:          jalr         s3, gp, -782 #jump main -> sub_2
28:               ori          sp, s7, -720
                  bne          t1, s9, 39f
                  bgeu         tp, t4, 31f
31:               lui          t6, 384566
                  bne          t1, a6, 34f
33:               beq          t6, s2, 43f
34:               nop
                  srl          s6, t0, t3
                  nop
                  srl          t6, sp, s10
                  sub          zero, s10, t2
39:               and          t3, t1, t2
                  or           s11, s5, s2
                  auipc        s10, 714277
                  srl          a2, a3, tp
43:               auipc        a0, 250331
                  bne          a5, s1, 62f
                  slti         sp, s10, 1854
                  add          s6, t1, t2
                  sltu         s8, s9, gp
                  bltu         a5, s9, 60f
                  sra          ra, s8, t0
                  sltu         s0, a1, s1
                  sltu         sp, s4, s11
                  slti         s5, gp, 1601
                  blt          s1, ra, 68f
                  srl          a3, a6, a0
                  sltiu        t2, s8, 873
                  add          t4, s7, gp
                  or           a3, t3, s11
                  ori          s7, s2, -1356
                  ori          s2, a6, 1913
60:               add          s0, s3, s5
                  xor          a4, a3, tp
62:               xor          a5, tp, t3
                  auipc        a4, 987253
                  sub          s3, s5, t3
                  bge          t6, s5, 85f
                  add          a4, s5, t2
                  bltu         s9, s10, 85f
68:               slli         t2, s6, 23
                  ori          s11, s5, 373
                  slli         t4, a7, 26
                  nop
                  sub          s5, zero, gp
                  sra          a7, s7, s1
                  bltu         gp, t6, 94f
                  bne          t0, s7, 88f
                  lui          a0, 89221
                  xori         s9, a4, -187
                  blt          t6, s3, 81f
                  bgeu         zero, t6, 93f
                  ori          a2, s6, 1734
81:               addi         a6, s4, -495
                  sll          t3, ra, t0
                  slli         sp, s4, 15
                  sltu         a1, t4, a7
85:               add          a5, gp, t5
                  bltu         a7, t0, 95f
                  bgeu         tp, zero, 107f
88:               sltiu        zero, a6, -1341
                  blt          s7, t6, 103f
                  nop
                  sub          ra, s0, s1
                  nop
93:               sll          s1, s4, a0
94:               sll          s1, s9, t3
95:               sll          s2, s7, a3
                  srai         s8, s10, 3
                  bge          t0, tp, 100f
                  srl          a2, s3, a7
                  and          t4, a7, s5
100:              sltu         a0, s7, tp
                  bgeu         a5, t0, 102f
102:              slti         a0, t5, 1186
103:              slti         ra, a0, -932
                  auipc        a4, 494217
                  sll          a2, t4, t3
                  sltu         s10, a0, a0
107:              slli         gp, sp, 29
                  slli         a0, s9, 15
                  slt          sp, ra, t0
                  bltu         ra, s7, 117f
                  bltu         tp, s11, 118f
                  sll          ra, t6, s1
                  bltu         a7, tp, 122f
                  sra          a0, a2, a3
                  lui          a2, 896695
                  bltu         s0, a5, 125f
117:              slli         s9, s3, 14
118:              srl          t2, t4, a0
                  slli         s10, a6, 18
                  sll          a3, gp, s11
                  or           gp, t6, a4
122:              andi         t2, t5, 197
                  srl          a6, t0, s10
                  bgeu         s11, a4, 126f
125:              and          a6, a2, zero
126:              xori         t6, t0, -1609
                  sltiu        s9, s8, 1277
                  sra          ra, t0, zero
                  xor          gp, s6, a4
                  srl          a2, s11, s1
                  add          a0, t5, s1
                  bltu         a2, a1, 133f
133:              sub          zero, s11, a1
                  andi         t4, s1, 658
                  beq          t5, t4, 153f
                  slli         s10, t6, 7
                  blt          a7, ra, 147f
                  ori          s7, s0, -245
                  andi         s3, a5, 1148
                  nop
                  sra          s11, s6, s8
                  add          a4, t5, s5
                  sra          a2, s5, s3
                  bgeu         a5, a7, 159f
                  bge          t0, t0, 152f
                  slli         s3, a1, 29
147:              and          sp, s6, s7
                  bne          t6, t5, 165f
                  sll          gp, ra, t6
                  bne          t1, tp, 152f
                  addi         s7, s5, 1290
152:              slti         s7, t5, 1417
153:              lui          s9, 907167
                  srl          a1, a5, t2
                  and          a1, a4, s11
                  slli         a0, s3, 25
                  sub          s11, sp, t5
                  bne          t5, t4, 161f
159:              srli         a6, a1, 30
                  sra          s8, t6, a5
161:              beq          t2, a5, 167f
                  lui          a5, 46375
                  bltu         s4, t5, 177f
                  slt          t6, a0, a0
165:              or           zero, s2, s3
                  slli         s7, a0, 16
167:              xor          t4, s4, s1
                  slli         a5, s6, 6
                  slti         s4, gp, -47
                  srl          a6, s5, s7
                  slt          a1, s8, s3
                  sub          t4, s1, s1
                  srai         sp, a6, 20
                  srl          a5, zero, s1
                  sra          a1, ra, s1
                  sltu         sp, t3, a6
177:              xor          t3, s0, s0
                  sra          s9, s5, t2
                  nop
                  auipc        a3, 334090
                  la           a5, sub_1
                  addi         a5, a5, -252
                  sll          s10, t3, zero
                  sltiu        s3, s6, -608
                  ori          s4, s3, 1342
                  bge          s8, gp, main_j1 #branch to jump instr
                  sltiu        t2, t1, -1367
                  and          a0, t1, s7
                  srl          s6, t2, s11
                  addi         a0, s4, -394
main_j1:          jalr         s3, a5, 252 #jump main -> sub_1
                  sltiu        s4, s11, -1809
                  sra          ra, t3, t3
                  xori         t2, tp, 749
                  sltu         a0, s7, t2
                  bltu         s2, s8, 196f
                  xor          a5, zero, t4
                  sll          s3, s0, s3
                  bne          gp, s10, 203f
                  sra          t6, tp, s11
                  sll          t4, a0, s10
                  sll          s11, ra, a1
                  beq          sp, t4, 205f
                  bge          s10, s3, 193f
193:              slti         t3, a0, 1301
                  andi         s9, t5, -1338
                  slli         a6, t1, 2
196:              srai         a4, t2, 19
                  lui          s3, 150103
                  bltu         s6, s5, 212f
                  srl          a0, s11, s4
                  bne          s7, s0, 220f
                  bltu         t1, s6, 208f
                  bne          t0, t3, 209f
203:              srl          s3, a5, s8
                  lui          a3, 983515
205:              xori         t4, s5, 1860
                  bne          s1, s7, 216f
                  blt          s2, a1, 222f
208:              beq          t5, s1, 226f
209:              sltu         gp, tp, a0
                  nop
                  nop
212:              srli         a2, a2, 9
                  xori         a6, tp, 452
                  sltiu        a1, s6, -1344
                  srai         s4, a4, 27
216:              sltiu        a6, a7, 897
                  lui          a7, 25803
                  slt          sp, s9, a5
                  srl          a5, s4, zero
220:              srai         s10, s2, 29
                  sll          a1, a6, a2
222:              srli         a0, s0, 3
                  auipc        a2, 463207
                  and          s3, s11, t1
                  addi         s10, a4, 1276
226:              beq          gp, a7, 231f
                  sra          s2, gp, s9
                  ori          a2, sp, 465
                  sltu         s5, a4, s3
                  and          s5, s9, s8
231:              addi         s2, s5, 1851
                  la x30, test_done
                  jalr x0, x30, 0
test_done:        
                  li gp, 1
                  ecall
sub_9:            addi         t1, t1, -48
                  or           a3, ra, s3
                  sw           s3, 4(t1)
                  sltiu        s5, ra, 1707
                  srl          ra, t3, t0
                  xor          t2, s3, s6
                  add          tp, t5, zero
                  and          s1, gp, a1
                  la           sp, region_0+1421 #start riscv_load_store_rand_instr_stream_4
                  sb           t6, -1334(sp)
                  sb           a0, 376(sp)
                  or           s8, a3, s3
                  sll          tp, a3, s2
                  add          a4, s10, s10
                  sw           s8, 571(sp)
                  sw           t5, -1297(sp)
                  andi         a2, t5, 201
                  auipc        s8, 572776
                  srl          tp, sp, s2
                  srl          t3, s5, a0
                  slt          s7, t0, s8
                  add          a2, s7, a0
                  auipc        s3, 94454
                  lb           s3, 477(sp)
                  sll          s11, s3, t2
                  sltu         s5, tp, a7
                  lhu          a2, -581(sp)
                  srli         a4, sp, 1
                  or           a6, s4, s6
                  lui          s7, 425002
                  add          gp, t4, t2
                  lbu          tp, -830(sp)
                  sra          s9, a6, t3
                  lbu          a4, 150(sp)
                  add          s3, s11, t2
                  sw           s10, 559(sp)
                  lui          a2, 180484
                  andi         t3, a0, 1561
                  sb           s7, 252(sp) #end riscv_load_store_rand_instr_stream_4
                  la           a5, region_0+834 #start riscv_load_store_rand_instr_stream_7
                  lbu          a7, -248(a5)
                  lbu          t6, -136(a5)
                  xor          s2, a4, gp
                  srl          zero, a0, s0
                  ori          a7, a5, 1479
                  srl          s6, s1, a7
                  slt          s6, a6, sp
                  srai         t4, s7, 18
                  sltu         s1, a6, gp
                  andi         a0, t2, -46
                  lb           a1, 199(a5)
                  sll          tp, ra, a3
                  nop
                  ori          zero, s7, -1115
                  sb           s9, -237(a5)
                  sltiu        tp, zero, -82
                  add          a6, s9, t2
                  lbu          a6, -71(a5)
                  slti         s9, gp, 1377
                  sll          a1, s8, t6
                  slti         tp, sp, 1366
                  nop
                  slti         a3, a6, -2021
                  auipc        s7, 530147
                  nop
                  sll          a6, t5, a5
                  sll          s0, t1, s5
                  srai         s11, t5, 9
                  and          s0, t3, s6
                  sb           s0, 76(a5)
                  srli         t2, s9, 18
                  lb           s7, -49(a5)
                  lbu          a6, 67(a5)
                  srli         s8, a1, 30
                  lui          t3, 707100
                  srai         s6, s11, 28
                  lhu          tp, 160(a5)
                  and          t4, s2, t5
                  sll          s1, t2, gp
                  lb           a3, -187(a5) #end riscv_load_store_rand_instr_stream_7
                  la           a5, region_1+968 #start riscv_load_store_rand_instr_stream_0
                  xor          ra, s0, s6
                  lhu          s1, 30(a5)
                  srai         t6, s1, 2
                  lb           zero, 61(a5)
                  xor          tp, t1, t5
                  or           t4, gp, sp
                  sw           a3, 0(a5)
                  sh           s3, 18(a5)
                  xori         a3, t3, -839
                  andi         a3, t1, 988
                  sltiu        t6, t1, -1357
                  slli         s4, t3, 16
                  sltiu        gp, s10, -1751
                  addi         a1, t0, 1031
                  srl          a7, a2, a7
                  lbu          a0, -39(a5)
                  lbu          s11, 22(a5)
                  sll          zero, gp, sp
                  slt          s11, t5, s10
                  sh           sp, -60(a5)
                  ori          s10, a6, 1984
                  lbu          s9, 56(a5)
                  srl          a3, s1, s4
                  sb           t3, -15(a5)
                  lb           s3, 20(a5)
                  lbu          zero, -63(a5)
                  add          s0, a4, a2
                  lb           s0, 15(a5) #end riscv_load_store_rand_instr_stream_0
                  la           a0, region_1+1094 #start riscv_load_store_rand_instr_stream_2
                  slt          s10, t3, s4
                  srli         tp, s9, 16
                  auipc        s10, 85646
                  sb           t2, 44(a0)
                  lbu          ra, 47(a0)
                  slt          a2, a7, s10
                  sb           t4, -37(a0)
                  srl          t2, t3, s5
                  auipc        s10, 748049
                  srli         s11, a4, 29
                  srl          s1, t1, a7
                  sltiu        t4, sp, 637
                  xori         t2, s7, -30
                  lbu          zero, 16(a0)
                  lb           a6, -31(a0)
                  sb           a0, -27(a0)
                  lbu          s2, -34(a0)
                  add          a1, t2, s0
                  add          a4, gp, a1
                  xor          s6, t4, a2
                  sb           s10, 5(a0)
                  sb           a4, 9(a0)
                  sltu         s8, s5, s9
                  srl          a6, s8, s8
                  slli         s1, a4, 28
                  andi         s0, a5, 893
                  xor          t2, a7, t6
                  lbu          a2, 41(a0)
                  lbu          s11, -19(a0)
                  or           tp, a0, zero
                  lbu          s8, 19(a0)
                  lh           a7, -28(a0)
                  add          a3, a0, t3
                  sub          s3, a1, s1
                  lbu          a4, -37(a0)
                  andi         s10, t5, -252
                  sb           a2, 35(a0)
                  addi         a6, t1, 1242
                  addi         s4, sp, -777
                  srl          t4, s11, s2
                  lb           s5, 33(a0)
                  and          zero, a0, zero
                  lui          s4, 814730
                  lb           a5, -3(a0)
                  sb           ra, 3(a0)
                  sltiu        a5, a3, 479
                  sb           a1, -51(a0)
                  auipc        a6, 798831
                  lb           s3, -61(a0)
                  lbu          tp, -7(a0)
                  add          s4, a0, gp
                  lw           a7, -22(a0) #end riscv_load_store_rand_instr_stream_2
                  la           s9, region_1+1376 #start riscv_load_store_rand_instr_stream_1
                  lui          a5, 378376
                  lb           s6, -29(s9)
                  sb           t1, -19(s9)
                  lbu          s7, 8(s9)
                  slli         a0, s11, 10
                  lb           s10, -49(s9)
                  xori         t2, a7, 344
                  sb           s8, -19(s9)
                  lbu          a4, 41(s9)
                  lbu          s5, -49(s9)
                  lb           a5, 55(s9)
                  sb           a7, 31(s9)
                  addi         t4, s8, 1876
                  lh           ra, 34(s9)
                  sh           t4, -16(s9)
                  xori         a7, sp, -312
                  slli         s1, t6, 19
                  nop
                  xor          a6, a1, t3
                  xori         s4, a0, -1140
                  sltu         s3, s6, t6
                  lhu          s6, -6(s9)
                  sb           a4, -25(s9)
                  sh           s7, 2(s9)
                  sh           a4, -50(s9)
                  lui          s1, 1011479
                  lb           t6, -27(s9)
                  andi         a0, a2, 1125
                  ori          s4, s2, 956
                  andi         sp, s11, -1696
                  slt          gp, sp, zero
                  nop
                  lb           s4, 59(s9)
                  xori         s10, s4, -1219
                  lb           s7, -9(s9)
                  slti         s6, t4, -1607
                  slli         s8, tp, 24
                  auipc        s2, 362369
                  lhu          a1, -28(s9)
                  xori         s3, a6, 137
                  sll          ra, a2, t0
                  srl          a4, t1, a7
                  lb           t3, 51(s9)
                  lui          s10, 1013358
                  srai         sp, a1, 0
                  sb           s3, -49(s9)
                  lh           zero, 26(s9)
                  lbu          zero, -54(s9)
                  lw           a5, -48(s9)
                  ori          a6, s2, 791
                  sh           a3, 6(s9)
                  slti         s11, s9, -620
                  srl          a0, s0, s10
                  sb           a4, -5(s9)
                  lb           gp, 1(s9)
                  lh           t3, -40(s9) #end riscv_load_store_rand_instr_stream_1
                  lui          ra, 182034
                  bltu         s4, a3, 5f
                  and          s6, a2, t1
                  bne          a6, s7, 21f
                  sra          s9, s5, gp
5:                sltiu        s6, s10, 1499
                  bne          a5, t0, 11f
                  andi         ra, t1, 201
                  srai         sp, s1, 12
                  bge          a7, t0, 24f
                  slli         a4, a3, 19
11:               bgeu         t2, t4, 19f
                  slti         a2, t2, -2036
                  andi         gp, s8, 113
                  bgeu         s8, t4, 23f
                  sltu         s11, s5, s9
                  andi         a2, t0, 1666
                  lui          s0, 204766
                  sub          s8, s9, a0
19:               sll          s10, t4, a1
                  sub          a6, t2, zero
21:               xori         s5, s6, 817
                  andi         a6, s8, -155
23:               sub          t4, t1, t6
24:               blt          s0, a0, 43f
                  bne          s6, s2, 30f
                  srai         s2, s8, 16
                  ori          t4, s2, 447
                  bltu         t4, s3, 36f
                  xori         s10, gp, 709
30:               add          a4, sp, a5
                  sltu         s4, s6, gp
                  bltu         t6, t0, 44f
                  sltu         a2, a5, t3
                  addi         a6, s1, 1684
                  auipc        s4, 130805
36:               slti         tp, s5, 1393
                  andi         s10, t2, -1713
                  srl          t6, a6, s4
                  or           a0, t3, s2
                  auipc        a2, 551315
                  slli         s0, s1, 25
                  beq          s6, a5, 61f
43:               sra          sp, s7, ra
44:               srli         a3, s0, 26
                  bgeu         t4, a1, 54f
                  sub          a1, s5, a2
                  bgeu         sp, t4, 58f
                  slti         t3, a0, 1455
                  andi         t2, gp, 1631
                  srai         s4, s3, 12
                  sltiu        a3, a2, 571
                  slli         s5, t1, 17
                  sub          a0, a5, t3
54:               xori         s1, tp, -2000
                  sll          a1, gp, a7
                  bltu         t3, a4, 68f
                  srl          t3, s2, tp
58:               sltiu        a1, s8, 104
                  slti         zero, sp, -299
                  srl          zero, t1, s5
61:               sub          t6, a1, a4
                  beq          ra, t5, 79f
                  sub          gp, s1, s10
                  or           s11, sp, a2
                  xori         ra, tp, -689
                  nop
                  srai         a6, t2, 19
68:               and          t3, s2, a4
                  bne          a4, a3, 83f
                  sll          tp, tp, t0
                  blt          a1, a3, 91f
                  andi         s4, t6, 603
                  nop
                  sltu         zero, a5, t5
                  blt          gp, s0, 81f
                  add          a4, s2, a0
                  nop
                  andi         s0, s5, -458
79:               bltu         s8, s2, 96f
                  sll          a6, t5, t5
81:               srli         t3, s8, 10
                  addi         a0, a7, -1854
83:               blt          s8, t5, 94f
                  blt          s7, s10, 100f
                  addi         t4, gp, -26
                  andi         s2, a1, 120
                  slti         s5, t0, 201
                  sltiu        a4, s10, 1484
                  andi         s6, t4, 1738
                  add          ra, tp, a5
91:               andi         gp, a2, -1425
                  srli         tp, zero, 2
                  slti         t6, a7, 665
94:               slli         s9, t0, 20
                  bne          s6, s8, 100f
96:               blt          s6, t1, 112f
                  blt          s3, gp, 107f
                  ori          s2, s5, 1232
                  sub          a2, t1, s7
100:              ori          s8, t0, 12
                  srai         s7, gp, 20
                  sll          s0, a1, t4
                  slt          a2, t1, t1
                  andi         s0, ra, 78
                  bgeu         a7, s9, 107f
                  slli         a3, a7, 1
107:              xor          zero, t4, t0
                  sltiu        t6, s3, -1884
                  ori          t2, t4, -1114
                  sltiu        a2, a4, -1292
                  and          s7, s9, zero
112:              and          s9, a1, s1
                  ori          s6, sp, -1990
                  blt          t5, s2, 116f
                  sub          s11, s10, t6
116:              xor          a7, a1, ra
                  bltu         sp, t5, 118f
118:              sltiu        s11, s9, 606
                  slti         a4, a1, -111
                  and          t4, t6, s4
                  sltiu        s1, t1, 1714
                  auipc        t2, 646007
                  bne          a1, s10, 142f
                  and          zero, t3, a2
                  sltiu        s7, a5, 923
                  bgeu         t4, ra, 143f
                  slti         t4, s3, -747
                  sra          s4, sp, s2
                  lui          t4, 194742
                  srl          s0, a6, a3
                  add          s3, a7, t2
                  srli         a1, a6, 11
                  andi         zero, a6, 1930
                  slt          s11, s5, a0
                  and          s11, s3, s9
                  srai         a6, a4, 2
                  slli         zero, a7, 31
                  slt          a0, tp, sp
                  blt          a2, s7, 151f
                  sub          s9, s10, s5
                  sra          s7, a2, ra
142:              sll          s7, a5, a7
143:              xor          s4, a0, t5
                  srli         ra, s3, 28
                  sltu         t3, s3, t3
                  bne          s9, s9, 161f
                  sub          s11, a5, t5
                  sub          s6, a3, a5
                  sltiu        a5, a0, 1679
                  add          a5, sp, t3
151:              slli         s1, ra, 19
                  nop
                  sltiu        s4, a6, 1127
                  xor          a6, a6, tp
                  sra          s8, s7, t2
                  sll          gp, a4, zero
                  or           s1, s1, s10
                  srl          t2, s7, gp
                  bne          s4, a2, 178f
                  sra          s6, s6, t0
                  la           s1, region_1+1994 #start riscv_load_store_rand_instr_stream_8
                  lb           a5, -31(s1)
                  lhu          s0, -20(s1)
                  lw           s4, -46(s1)
                  slt          tp, s2, s0
                  slti         s3, t4, -1775
                  lbu          ra, -60(s1)
                  lh           s0, -56(s1)
                  xori         s7, tp, 340
                  nop
                  srli         s0, t6, 25
                  or           s5, a0, s1
                  lui          a3, 306878
                  xori         s3, s3, -679
                  add          t6, tp, tp
                  lb           a2, -56(s1)
                  slli         tp, t6, 27
                  srai         t3, a1, 18
                  sb           s5, -19(s1)
                  lb           s11, -39(s1)
                  sltu         a6, a0, s3
                  sub          s11, s10, s11
                  sb           a7, -47(s1)
                  lb           s4, -17(s1)
                  xor          ra, s1, ra
                  sra          a6, s0, t2
                  xori         s4, a0, 324
                  lb           s2, -42(s1)
                  slli         a3, ra, 23
                  lh           s11, -12(s1)
                  nop
                  sb           ra, -38(s1)
                  sw           a5, -62(s1)
                  ori          s4, s10, -1467
                  lhu          s4, 0(s1)
                  sb           t1, -15(s1)
                  srl          t6, s8, gp
                  sb           a7, 2(s1)
                  sh           a3, -24(s1)
                  addi         s8, tp, -818
                  lh           zero, -36(s1)
                  sb           ra, -58(s1)
                  lh           s2, -42(s1)
                  lui          tp, 481279
                  lbu          s7, -5(s1)
                  lui          a7, 313727
                  slt          s4, t2, s7
                  ori          s10, t1, -1987
                  slti         ra, s3, 1041
                  sll          gp, s11, a3
                  sltiu        s6, sp, 791
                  sltiu        s11, gp, 495
                  sw           s4, -54(s1)
                  auipc        a6, 598743
                  lb           s6, -28(s1)
                  lhu          t4, -56(s1) #end riscv_load_store_rand_instr_stream_8
161:              srli         a3, s8, 17
                  auipc        t2, 60339
                  and          s8, s0, a6
                  or           t3, gp, t6
                  slt          a7, t0, a7
                  srli         s3, t3, 15
                  bge          t2, s10, 181f
                  beq          s5, s9, 172f
                  srl          gp, a7, s2
                  slli         zero, sp, 6
                  slti         t4, s10, -1767
172:              nop
                  sll          s9, t4, a2
                  or           a1, a0, a7
                  sltu         s7, s11, tp
                  bne          s4, s7, 187f
                  sll          s2, a4, a1
178:              sltiu        t2, tp, 830
                  srli         a1, t2, 22
                  sll          tp, t4, a6
181:              slti         a7, ra, -900
                  add          s3, s2, t2
                  slt          t2, sp, s1
                  bne          a1, a3, 200f
                  beq          t1, s9, 204f
                  nop
187:              srai         s0, s0, 8
                  bge          zero, s7, 198f
                  srai         s9, s10, 24
                  srl          s4, t2, s3
                  bgeu         s6, ra, 199f
                  bge          ra, s6, 210f
                  andi         a6, s9, 1954
                  ori          a3, a1, -114
                  add          s8, t0, tp
                  sll          t6, ra, s2
                  srai         tp, t6, 4
198:              bge          a6, a3, 210f
199:              bltu         s11, s0, 215f
200:              lui          t2, 961137
                  bgeu         t2, t6, 210f
                  nop
                  or           s4, s7, tp
204:              or           s6, s5, s0
                  slt          s7, t6, t4
                  xori         t2, a5, -1701
                  bge          s2, t2, 209f
                  beq          gp, s6, 213f
209:              slli         s5, t4, 12
210:              blt          s3, a6, 212f
                  andi         a7, ra, -1106
212:              sltu         a5, s11, s7
213:              and          a3, tp, t1
                  nop
215:              srai         a7, s10, 16
                  bltu         t0, s10, 221f
                  bltu         a4, t6, 236f
                  bltu         s10, s2, 219f
219:              xor          a6, a0, t6
                  srl          s11, a6, a5
221:              sltiu        s3, t1, -988
                  add          s5, s5, tp
                  sub          a6, a1, t5
                  sll          a0, t3, sp
                  srai         s10, a0, 6
                  sltu         s10, s5, zero
                  srli         s11, tp, 10
                  sra          s5, a5, s6
                  sltu         s5, a5, t6
                  lui          s9, 1020474
                  blt          s3, s4, 240f
                  srli         zero, zero, 13
                  sll          s1, a4, s4
                  slli         s2, s9, 30
                  sltu         a7, t1, sp
236:              srl          a7, a3, a0
                  bgeu         sp, t5, 254f
                  slti         a0, a2, 158
                  lui          s8, 465882
240:              srl          s2, zero, s11
                  sltiu        t2, s9, -321
                  bne          ra, s4, 253f
                  sll          t3, gp, a1
                  srl          t4, s4, tp
                  ori          t3, s2, -24
                  add          t6, a1, a1
                  slti         t3, t6, -1359
                  bltu         t3, a3, 253f
                  srli         t3, s8, 28
                  bgeu         s10, s1, 262f
                  slti         s3, a5, -709
                  xori         tp, a1, 471
253:              sra          a4, t0, a1
254:              or           s0, s8, t4
                  srl          a2, zero, a1
                  beq          s10, zero, 276f
                  ori          s8, s1, -1881
                  xor          s5, zero, t6
                  bgeu         s6, s8, 276f
                  auipc        a1, 960417
                  bltu         s2, t5, 273f
262:              sra          s8, a2, s2
                  slti         s9, s2, -1278
                  bltu         s3, s1, 270f
                  beq          gp, zero, 282f
                  srl          gp, t4, s9
                  slli         s2, s0, 31
                  sltu         s4, s6, a0
                  nop
270:              nop
                  addi         s6, t6, -33
                  bge          s8, a1, 280f
273:              beq          t4, a2, 292f
                  sltiu        tp, s6, -888
                  sra          zero, s11, s11
276:              lui          gp, 994636
                  sra          s10, t5, s9
                  and          ra, t4, s5
                  beq          a1, ra, 285f
280:              sub          s1, sp, s7
                  blt          s5, t4, 296f
282:              sltiu        s5, sp, -2
                  bgeu         t0, a6, 285f
                  sltiu        s10, s5, -1048
285:              beq          t1, s5, 294f
                  sltu         s9, s4, t4
                  bltu         s8, t5, 305f
                  xor          a3, a7, gp
                  bgeu         s1, s1, 299f
                  sub          gp, a4, s11
                  nop
292:              xor          s1, t6, a3
                  bgeu         s6, s2, 310f
294:              ori          s1, s2, -1332
                  ori          s11, s6, -1373
296:              bge          t2, t0, 300f
                  sub          t3, a3, a3
                  addi         a0, t0, 387
299:              ori          s1, zero, 1109
300:              andi         a3, t3, -1415
                  xori         a5, s2, -1885
                  lui          t2, 1008396
                  srli         s5, a6, 0
                  ori          a0, s3, 1471
305:              and          s2, s1, t1
                  addi         s5, t6, -853
                  xor          s3, s0, t5
                  bne          a1, tp, 319f
                  sub          a2, gp, zero
310:              bltu         s3, a4, 326f
                  add          a7, t4, a6
                  addi         a0, a2, 388
                  xor          a1, t2, s2
                  add          a6, a3, s0
                  and          s4, s2, s7
                  bge          s0, a3, 332f
                  and          s8, a3, tp
                  nop
319:              slli         s10, a3, 16
                  ori          tp, t5, -1190
                  srai         t4, ra, 26
                  nop
                  lui          t3, 1003010
                  slli         s0, t4, 17
                  sll          s3, sp, t5
326:              sra          a2, t0, s5
                  xor          t6, a3, t6
                  slti         s4, s0, -1883
                  xori         a7, s2, 1985
                  addi         zero, a5, 1383
                  srl          s0, sp, s4
332:              slli         a6, t3, 23
                  nop
                  bge          t4, s3, 346f
                  bge          t3, s7, 340f
                  sub          t4, tp, s1
                  auipc        zero, 110607
                  srai         s8, gp, 16
                  and          tp, t4, s5
340:              ori          t6, s5, -1204
                  srli         s9, a4, 20
                  and          s1, sp, s1
                  and          a3, a4, s0
                  sub          tp, a5, t2
                  bge          s4, gp, 354f
346:              blt          t6, s2, 360f
                  and          s3, gp, t3
                  xori         s5, s1, 1476
                  bgeu         a3, s7, 360f
                  bne          gp, zero, 369f
                  ori          a6, a6, -1873
                  andi         a0, s6, -86
                  beq          s0, s5, 370f
354:              blt          t0, s3, 366f
                  xori         s4, s6, 931
                  auipc        a6, 742897
                  bge          a7, a1, 358f
358:              beq          s10, sp, 363f
                  bge          s6, s11, 367f
360:              srli         t6, gp, 9
                  and          t3, s3, s11
                  sltu         s0, a2, s8
363:              sltiu        a0, s10, 502
                  sra          s2, t4, gp
                  ori          ra, a7, 1183
366:              auipc        s3, 828499
367:              sltu         s5, sp, s5
                  slt          s10, t1, a3
369:              and          s9, t1, a4
370:              bltu         s9, s9, 378f
                  srai         s6, t5, 16
                  srl          a3, s8, a1
                  blt          t5, s2, 392f
                  srli         a7, s3, 21
                  srli         ra, s7, 29
                  ori          a7, ra, 1623
                  beq          t2, a1, 379f
378:              bltu         a0, t3, 398f
379:              andi         t3, a3, 784
                  blt          t2, s8, 397f
                  xori         s8, ra, -1535
                  and          s9, t5, s6
                  xori         t3, ra, -76
                  auipc        s3, 943563
                  slti         s6, gp, 451
                  add          a3, s4, a1
                  srai         t2, a5, 15
                  or           s5, a7, a6
                  and          s8, sp, s7
                  slti         t4, sp, -532
                  srl          a3, tp, t1
392:              bge          a3, t1, 397f
                  bltu         s8, sp, 405f
                  blt          a0, s2, 400f
                  or           a4, t2, t2
                  srai         s5, t5, 23
397:              bge          a0, t1, 414f
398:              or           s5, t5, t2
                  and          s3, gp, s10
400:              ori          zero, zero, 946
                  lui          s10, 711591
                  xori         s10, sp, -703
                  beq          s2, s4, 422f
                  sll          zero, a0, a0
405:              bgeu         a5, s10, 410f
                  beq          ra, ra, 424f
                  slti         s4, a0, 1368
                  slli         s1, s2, 31
                  xor          s11, s11, t2
410:              nop
                  xor          a1, ra, s10
                  bne          t5, s11, 423f
                  beq          t2, s7, 430f
414:              sll          ra, a3, a2
                  slt          t3, s3, t2
                  ori          a4, s5, -1858
                  srli         s5, gp, 7
                  slli         s11, t3, 28
                  nop
                  slli         a4, sp, 15
                  auipc        a6, 528292
422:              sltiu        s8, s3, 1290
423:              andi         t2, zero, 224
424:              slli         s3, zero, 12
                  sltiu        t2, sp, 1238
                  and          t2, t4, t0
                  sub          s5, a2, s7
                  blt          sp, a5, 447f
                  slt          ra, a1, zero
430:              xori         s10, s2, -1196
                  bne          t5, t4, 450f
                  sll          s4, s0, a4
                  addi         s10, s0, -900
                  or           sp, s2, a3
                  srl          t3, s3, t0
                  sltu         s8, s3, s2
                  sltu         a5, s7, s9
                  auipc        a1, 558859
                  srli         t4, a6, 31
                  and          a4, t2, t0
                  xor          a4, a1, t4
                  addi         s9, t1, -327
                  srai         sp, s9, 2
                  or           s9, s3, a4
                  bltu         t3, s3, 459f
                  xor          s2, a3, t5
447:              andi         s3, a1, -1955
                  lui          s3, 149459
                  addi         s8, s2, -1568
450:              sltiu        s2, a0, 579
                  andi         s4, t6, -1261
                  beq          a5, tp, 454f
                  bltu         a1, s2, 454f
454:              xor          t4, s1, t4
                  xor          s2, ra, s9
                  bne          s0, t3, 468f
                  lui          t6, 76444
                  auipc        a0, 542163
459:              lui          s9, 501446
                  slti         s9, t4, 340
                  nop
                  sra          ra, s7, t2
                  and          t3, s6, s1
                  xori         a4, a3, 603
                  sltu         s9, s6, s1
                  lui          a5, 813964
                  and          s0, t3, t1
468:              sltu         sp, t4, s2
                  beq          s3, s4, 480f
                  and          s11, ra, gp
                  sll          s0, t0, a5
                  srai         s9, gp, 7
                  and          s6, sp, tp
                  slti         ra, ra, -1454
                  sub          s6, t1, s1
                  addi         t2, s7, -1400
                  sub          zero, s4, a2
                  lui          s2, 366046
                  ori          s2, t0, -1706
480:              xor          s10, t6, ra
                  andi         t4, s7, 1135
                  sra          t6, a7, a5
                  lui          s2, 479054
                  bge          t6, t6, 501f
                  srl          s6, a1, s2
                  lui          a2, 903403
                  sub          s7, s11, gp
                  bne          ra, a5, 504f
                  auipc        s8, 855609
                  addi         s1, s5, 1169
                  or           s10, a7, t2
                  slli         a4, s8, 26
                  bne          a7, a7, 513f
                  srli         s3, zero, 7
                  srl          s8, a1, t0
                  slti         a5, t3, -1870
                  bge          t5, s6, 509f
                  add          s6, s1, t3
                  slt          s8, s5, a3
                  slli         a2, a1, 23
501:              beq          a7, gp, 510f
                  and          a5, s3, a5
                  lui          zero, 36426
504:              beq          s5, t4, 509f
                  blt          s7, t6, 521f
                  xori         s10, t5, 1325
                  xori         tp, s5, -94
                  sub          a5, a0, t3
509:              add          s8, sp, t3
510:              add          a5, s4, a5
                  auipc        s11, 647607
                  ori          s6, s10, -405
513:              or           t2, s9, s11
                  bne          t5, a5, 524f
                  sltu         gp, t6, s6
                  sra          s7, a7, t1
                  sub          s3, a5, gp
                  ori          s1, s9, 0
                  beq          t5, s3, 524f
                  and          s7, s6, s8
521:              xor          s9, t6, gp
                  andi         t4, a5, -196
                  blt          s4, s8, 531f
524:              bne          s8, sp, 532f
                  bge          zero, s8, 537f
                  srai         s2, a1, 8
                  srai         a7, t6, 17
                  addi         a0, a7, -1948
                  ori          t3, zero, 1968
                  blt          t5, sp, 545f
531:              slt          t6, s6, s3
532:              xor          s0, a6, s8
                  srli         ra, t4, 6
                  beq          t0, tp, 538f
                  andi         sp, s3, 1352
                  slti         s6, s5, 827
537:              sub          t3, sp, s7
538:              and          a6, a6, s10
                  slti         gp, s5, -1290
                  lui          s7, 990876
                  sra          a2, ra, a6
                  bltu         s6, gp, 544f
                  auipc        s11, 1007236
544:              bltu         t2, s4, 553f
545:              srli         a2, s4, 5
                  srai         sp, gp, 7
                  nop
                  srai         s6, a3, 22
                  sub          a1, s7, s7
                  bltu         a7, tp, 555f
                  blt          ra, a1, 563f
                  sra          t2, tp, s3
553:              addi         a5, a5, 1489
                  addi         gp, s5, -1918
555:              auipc        sp, 1048048
                  srl          gp, s11, s1
                  bltu         s10, ra, 563f
                  lui          a3, 51525
                  andi         s0, a7, -845
                  blt          t6, s0, 562f
                  sra          a2, tp, a7
                  ori          t3, a7, 181
                  srai         ra, s7, 20
                  addi         s1, s11, -784
                  or           t2, a0, t5
                  lui          a2, 752094
                  nop
sub_9_j15:        jal          s3, sub_10 #jump sub_9 -> sub_10
                  nop
562:              ori          s4, zero, -803
563:              xor          a3, a0, t6
                  xor          a7, s6, tp
                  ori          a7, tp, 31
                  sra          t6, s8, s4
                  nop
                  sub          a2, t0, s8
                  sll          s0, s4, s5
                  bgeu         a7, tp, 587f
                  auipc        t3, 901003
                  xori         s1, a0, 387
                  addi         a2, a0, 1066
                  xor          s9, t3, a1
                  sltiu        s1, a1, 888
                  slti         s6, zero, 1619
                  bne          t4, a0, 585f
                  andi         a1, t2, -1630
                  add          s5, s9, sp
                  ori          a4, s2, 519
                  srl          s7, a7, t4
                  andi         s10, a4, -1326
                  and          t2, s2, a3
                  bltu         t4, s2, 600f
585:              slt          s6, s5, t3
                  lui          a3, 355173
587:              srai         a3, s5, 2
                  and          a3, s3, s11
                  addi         s10, t0, -1334
                  nop
                  slti         ra, s9, 188
                  sub          gp, t3, gp
                  lui          s0, 138246
                  sltu         a5, a2, a1
                  andi         a3, s4, 1049
                  beq          s0, tp, 607f
                  sll          s1, t1, t4
                  bge          a2, a7, 607f
                  srli         tp, s7, 30
600:              slli         t6, a5, 16
                  srai         t4, s7, 26
                  ori          s1, s7, -1330
                  slti         s8, a1, 1846
                  srli         t3, t4, 18
                  blt          s9, s8, 622f
                  nop
607:              xori         s11, a7, -1297
                  addi         s2, a3, -297
                  slt          a7, s0, gp
                  sltu         a6, t6, s8
                  srli         t2, gp, 18
                  bgeu         a0, s1, 614f
                  ori          a6, s2, -1967
614:              srli         a7, t2, 20
                  addi         a3, s4, 1579
                  or           s10, s7, t4
                  bgeu         t5, gp, 634f
                  bgeu         s5, s10, 629f
                  bltu         a5, s8, 638f
                  bltu         s8, t2, 621f
621:              xori         s1, s5, -1102
622:              sra          s1, t3, t6
                  bltu         a7, s7, 632f
                  ori          ra, tp, 499
                  sll          s5, s8, t0
                  slli         ra, s6, 31
                  auipc        ra, 926043
                  or           s6, s0, s6
629:              slti         s0, t0, -1737
                  auipc        sp, 375935
                  or           a1, s6, t1
632:              srai         a6, s5, 11
                  sub          s7, t5, gp
634:              slt          s3, s5, tp
                  xori         s2, a5, -1040
                  sltu         a5, a5, s5
                  slli         s3, zero, 30
638:              or           s3, s11, zero
                  or           s7, s9, s3
                  or           s11, s4, a1
                  and          s8, s3, s3
                  slti         a0, t0, -582
                  auipc        s0, 513713
                  sltu         tp, a2, a5
                  sltiu        gp, s8, 845
                  srai         s11, sp, 9
                  srai         sp, s11, 18
                  sltiu        s4, s3, 437
                  auipc        a6, 664903
                  auipc        s9, 32749
                  slli         s4, s4, 30
                  xor          s11, gp, t0
                  srli         s9, s3, 24
                  srli         a7, s2, 29
                  sltu         s11, t2, t6
                  bgeu         s2, a2, 671f
                  srai         s8, zero, 20
                  or           a5, a2, s7
                  slti         t4, a2, 1966
                  addi         a0, ra, 375
                  ori          t3, t4, -1201
                  sltu         s5, zero, a0
                  sra          s2, a2, s4
                  bne          t1, s7, 676f
                  bgeu         s1, t5, 681f
                  blt          t6, s8, 685f
                  blt          t0, t4, 675f
                  sltu         s5, t2, sp
                  blt          a6, a1, 687f
                  srli         s2, tp, 15
671:              sub          s9, s1, a2
                  bge          s6, s0, 677f
                  or           a6, s0, a7
                  or           tp, a2, sp
675:              bge          s3, sp, 687f
676:              sra          t3, t2, t1
677:              sltu         zero, t2, s0
                  xor          s5, s7, a6
                  xori         s1, t1, -1466
                  slti         s1, s1, 281
681:              srai         s6, s3, 5
                  srl          s2, t6, t2
                  xori         s8, a3, 1812
                  auipc        zero, 419696
685:              sra          s9, a5, ra
                  xor          t4, t6, a2
687:              add          s9, a0, t6
                  sltu         a0, a7, a7
                  xor          s3, gp, a1
                  la           a7, region_0+1117 #start riscv_load_store_rand_instr_stream_6
                  sltiu        a0, t4, -1178
                  or           zero, a0, a2
                  sb           t5, 90(a7)
                  sub          ra, s5, a4
                  lb           s6, -208(a7)
                  andi         sp, t0, -641
                  lui          t4, 770462
                  add          s7, t4, s4
                  lbu          s0, 54(a7)
                  srl          a4, s9, sp
                  srai         a4, s7, 8
                  slt          t6, a4, t5
                  slt          s1, s1, a2
                  auipc        s7, 339364
                  sb           a2, 159(a7)
                  lbu          s6, 254(a7)
                  sb           t3, 240(a7)
                  sb           s10, -220(a7)
                  lhu          a4, 213(a7)
                  lui          a3, 540919
                  sw           s10, 71(a7)
                  sltu         s6, t0, a3
                  lhu          s10, -107(a7)
                  sh           a5, 107(a7)
                  add          s8, s3, a6
                  lh           s3, -217(a7)
                  sh           s11, -53(a7)
                  sll          s7, a7, s0
                  sltiu        t2, s8, -162
                  srai         t3, t1, 18
                  sub          s7, s7, s7
                  or           s2, a6, a6
                  lh           a3, 135(a7)
                  and          zero, gp, tp
                  lbu          a4, 87(a7)
                  auipc        gp, 681437
                  andi         t6, t1, 1104
                  xor          t2, s7, s0
                  sltiu        s5, t6, 748
                  slt          s8, s2, zero
                  xori         s6, a5, -839
                  slti         s2, a1, 1123
                  sh           a2, 157(a7) #end riscv_load_store_rand_instr_stream_6
                  andi         t6, s0, 446
                  srai         t4, a1, 25
                  lui          s7, 725454
                  slli         s0, s8, 2
                  add          s5, s1, zero
                  add          gp, a4, s7
                  andi         sp, a0, 1621
                  xori         sp, ra, -1852
                  nop
                  bgeu         zero, a5, 713f
                  beq          s4, t1, 719f
                  srai         t6, s5, 18
                  sub          ra, t2, a1
                  xori         s2, s5, -1815
                  bltu         a2, a7, 708f
                  auipc        a6, 269090
                  bne          s4, s1, 726f
                  bne          s7, a6, 717f
708:              beq          s2, s6, 713f
                  slli         a4, zero, 16
                  ori          a3, a5, 1011
                  srli         t6, a6, 24
                  bltu         gp, t1, 724f
713:              lui          a7, 663558
                  beq          s8, a3, 718f
                  beq          s3, tp, 734f
                  beq          s8, zero, 733f
717:              xor          a1, sp, a7
718:              bgeu         s10, t3, 736f
719:              sltu         s10, s8, s11
                  bltu         s10, a5, 739f
                  sra          s4, zero, sp
                  add          a4, a3, sp
                  slti         a6, zero, 538
724:              auipc        t6, 977181
                  sub          s8, a0, s7
726:              xori         s0, s5, -1256
                  bgeu         gp, s5, 729f
                  slti         s2, t0, 1310
729:              sltiu        s8, t3, -708
                  bgeu         s0, a5, 731f
731:              ori          t6, zero, -1348
                  bne          t0, t1, 748f
733:              and          a6, s3, s8
734:              sra          s4, s11, zero
                  xor          s3, s5, s4
736:              addi         a2, tp, 917
                  beq          s5, gp, 751f
                  srl          s6, s4, s2
739:              add          s5, a5, s9
                  sra          s3, sp, t4
                  slli         a4, gp, 24
                  slli         a6, s11, 24
                  sra          a3, s7, a2
                  sra          s9, gp, a1
                  bgeu         s10, s4, 761f
                  sltiu        a7, s5, -2002
                  sll          t6, a0, a2
748:              slti         s9, gp, -651
                  bne          s5, t6, 758f
                  sll          s1, s7, s4
751:              auipc        s7, 641714
                  sra          s1, a3, a4
                  srl          gp, s8, s2
                  sub          s11, sp, a7
                  or           s4, t6, t5
                  la           t6, region_0+474 #start riscv_load_store_rand_instr_stream_3
                  lb           s10, 43(t6)
                  sb           a2, -15(t6)
                  lbu          s2, 22(t6)
                  sb           s2, -22(t6)
                  xori         a7, t1, -1439
                  sb           a5, 29(t6)
                  lb           t4, 31(t6)
                  sb           ra, 43(t6)
                  sb           gp, 47(t6)
                  sltu         s1, s10, t5
                  srl          s7, zero, s3
                  sltu         gp, s5, a6
                  lhu          a1, -58(t6)
                  sb           t3, 32(t6)
                  lbu          s11, 63(t6)
                  lb           s10, 10(t6)
                  lh           t4, -2(t6)
                  andi         gp, s9, 1250
                  lbu          s10, -31(t6)
                  nop
                  lui          zero, 502474
                  nop
                  lhu          a5, 16(t6)
                  sb           gp, 13(t6)
                  lui          a0, 873586
                  srai         a4, s6, 10
                  sltu         s11, a6, t2
                  lb           a0, 34(t6)
                  auipc        a0, 720824
                  lb           ra, -1(t6)
                  add          s6, t4, a5
                  sb           s3, -39(t6)
                  lbu          s7, 9(t6)
                  srl          s5, t5, sp
                  slti         s8, a0, -1085
                  sub          a2, t6, s3
                  sh           a7, 24(t6)
                  lhu          s9, -6(t6)
                  andi         s4, s10, -841
                  add          s5, s9, a1
                  lh           s2, -56(t6) #end riscv_load_store_rand_instr_stream_3
                  xor          t3, t5, s5
                  xori         t3, a0, 1539
758:              auipc        s10, 960279
                  bge          a4, a3, 771f
                  andi         ra, s9, 279
761:              slli         s11, s8, 22
                  nop
                  slt          s11, s2, s2
                  blt          t2, s5, 772f
                  addi         s7, a7, 595
                  auipc        a7, 448892
                  add          ra, tp, a7
                  srai         s2, s6, 12
                  srli         a3, a3, 25
                  sltu         zero, t4, t0
771:              auipc        s8, 91221
772:              srai         s4, t1, 10
                  bne          s10, s10, 784f
                  slli         ra, sp, 28
                  bgeu         t1, zero, 780f
                  addi         a1, s8, -616
                  beq          t4, s9, 782f
                  sra          a2, t2, a1
                  xor          s4, a6, s5
780:              slli         a2, s5, 10
                  srl          s4, a0, s8
782:              andi         ra, s2, -1999
                  slli         zero, a0, 5
784:              beq          gp, a1, 792f
                  xori         s4, s11, -1328
                  xori         a5, s11, -1271
                  ori          zero, s1, 1533
                  xor          s5, s2, t5
                  addi         s10, a4, 531
                  addi         t6, a5, 1555
                  srli         a4, s1, 6
792:              or           s9, t4, s8
                  slti         ra, t6, -1909
                  xori         s8, t2, -685
                  srai         a4, a1, 24
                  xor          s1, a7, a5
                  sll          s0, s11, a0
                  add          gp, s0, s3
                  or           sp, s2, t1
                  auipc        s9, 48940
                  beq          s9, t5, 816f
                  xori         a7, t2, -1840
                  sltu         s9, a2, s7
                  blt          s5, s10, 821f
                  slt          t2, s1, s6
                  sra          s2, s5, t4
                  sll          s10, s3, s7
                  or           t2, s2, s6
                  addi         t4, t4, 1163
                  bge          t6, zero, 829f
                  addi         a0, t5, 1144
                  srl          a3, s0, a4
                  auipc        s4, 472217
                  bge          a1, a0, 823f
                  nop
816:              blt          s11, t6, 818f
                  blt          t4, s6, 828f
818:              slt          a3, a7, t5
                  auipc        zero, 135395
                  andi         a3, a1, -1739
821:              sub          a6, gp, a2
                  sub          a6, t3, t2
823:              or           s11, s2, tp
                  addi         s5, t1, -1591
                  sra          t4, t4, a3
                  slli         s0, s8, 5
                  sra          s0, t4, s2
828:              bge          tp, gp, 840f
829:              add          s9, s9, s7
                  xor          t6, t0, a7
                  bltu         s3, t5, 851f
                  andi         t6, gp, 1149
                  srai         s6, gp, 9
                  srai         t6, a5, 12
                  srl          s11, s5, s9
                  sll          t3, t2, zero
                  nop
                  srl          s7, s5, gp
                  lui          a5, 337732
840:              srai         s5, t3, 3
                  ori          s5, s3, -75
                  bgeu         a0, t0, 847f
                  la           sp, region_0+13 #start riscv_load_store_rand_instr_stream_5
                  lui          s7, 347157
                  sll          t3, t4, ra
                  and          s2, a0, a1
                  sra          t4, t5, t5
                  addi         a1, t2, -1493
                  sb           s8, 95(sp)
                  addi         a0, a4, 1574
                  sub          a0, s1, tp
                  lb           a5, 30(sp)
                  sb           zero, 166(sp)
                  srai         s4, t3, 8
                  lbu          a1, 104(sp)
                  lbu          s7, 208(sp)
                  sltu         ra, s7, s3
                  srai         s4, tp, 30
                  lhu          tp, -13(sp)
                  sh           t4, 213(sp)
                  lbu          t4, 195(sp)
                  sltu         a5, t0, ra
                  sh           s10, 97(sp)
                  lhu          tp, -9(sp)
                  slti         ra, s0, -1098
                  add          s8, t6, s7
                  slti         a1, sp, -1945
                  lbu          s11, 213(sp) #end riscv_load_store_rand_instr_stream_5
                  srl          s0, s10, t4
                  xor          t2, t0, s2
                  bne          s1, a7, 855f
                  xori         s4, s1, 1842
847:              nop
                  bgeu         sp, s7, 854f
                  xori         a7, s9, 42
                  sll          s4, s8, s0
851:              xori         s6, a7, 816
                  add          tp, t2, t3
                  sll          a0, s0, s3
854:              nop
855:              slli         a1, tp, 0
                  srai         s6, t3, 1
                  ori          s3, s7, -1624
                  sltiu        s10, s3, -1819
                  xori         s5, s6, -588
                  nop
                  beq          s2, ra, sub_9_j16 #branch to jump instr
                  addi         s4, s8, 782
                  sltu         zero, t2, tp
                  slti         s11, t3, 651
                  srl          a4, s2, t3
                  sra          s2, t1, a7
sub_9_j16:        jal          s3, sub_10 #jump sub_9 -> sub_10
                  blt          s7, a3, 874f
                  auipc        s1, 261359
                  blt          t3, t0, 860f
860:              add          s11, s7, s3
                  auipc        sp, 1041190
                  add          s5, s8, s7
                  or           s4, a4, a3
                  xor          a4, s2, s3
                  sra          sp, ra, s8
                  bne          t1, a2, 883f
                  sra          t6, s0, a1
                  auipc        s8, 623145
                  and          a4, a7, s9
                  bltu         t3, a7, 890f
                  slli         s4, t0, 25
                  xor          gp, s9, s11
                  xori         s10, t1, 1860
874:              bge          s8, s4, 883f
                  ori          gp, zero, -2040
                  slli         s3, a3, 7
                  bne          sp, s7, 885f
                  slti         a3, s7, -1732
                  beq          s2, a2, 891f
                  or           zero, t1, t1
                  and          s6, a1, s5
                  nop
883:              sll          s10, s1, a0
                  andi         s7, t4, 1760
885:              beq          t4, zero, 891f
                  and          s4, a1, a5
                  sll          a0, a3, t5
                  sltiu        gp, t1, -345
                  sra          sp, s6, s2
890:              and          t6, a5, a6
891:              andi         a6, a6, -2046
                  ori          s10, s6, 424
                  srai         tp, t2, 20
                  sll          zero, gp, a5
                  nop
                  bgeu         t1, s2, 912f
                  sra          a5, a5, t4
                  add          a1, a1, t2
                  sra          s9, t2, a1
                  beq          s2, s6, 911f
                  sltu         gp, s4, s8
                  auipc        a0, 252915
                  sll          a1, s11, zero
                  and          ra, t5, a2
                  slli         gp, a1, 3
                  sub          a5, a2, s9
                  srli         s7, a0, 24
                  srl          s4, t6, a1
                  slt          s1, t3, s10
                  sltu         s11, a7, s11
911:              bne          a1, a2, 913f
912:              lui          t3, 435616
913:              auipc        s10, 804081
                  auipc        s5, 50029
                  blt          t5, s5, 927f
                  add          s2, gp, s5
                  nop
                  andi         s11, gp, 409
                  nop
                  xor          s2, s7, s2
                  slti         a2, ra, -1250
                  addi         a6, gp, -297
                  bltu         a6, zero, 938f
                  srli         a3, s1, 27
                  and          s4, gp, gp
                  ori          t2, a7, -58
927:              nop
                  bltu         t5, a5, 932f
                  bne          gp, t4, 939f
                  or           s11, a4, a0
                  slt          a6, a7, s3
932:              sltiu        tp, a2, -1987
                  beq          s1, t6, 945f
                  bgeu         tp, s1, 950f
                  nop
                  srl          a6, s1, s2
                  sra          a7, t0, t1
938:              auipc        s5, 952766
939:              blt          t3, a4, 944f
                  bltu         a7, s2, 957f
                  srai         a0, a5, 30
                  addi         a7, sp, -983
                  bltu         a4, zero, 951f
944:              bgeu         a5, zero, 958f
945:              or           s2, a0, s5
                  andi         ra, sp, 1992
                  bgeu         s4, a0, 956f
                  xori         s3, s10, -938
                  srai         s6, t2, 8
950:              slli         zero, a4, 0
951:              beq          ra, s2, 970f
                  srai         a1, a7, 22
                  bgeu         ra, a2, 972f
                  sll          s4, sp, s2
                  and          a7, tp, s7
956:              slti         t4, a4, -644
957:              add          s7, s0, sp
958:              slli         zero, s3, 17
                  bne          s2, tp, 964f
                  bge          a7, s5, 977f
                  auipc        s11, 956647
                  auipc        s8, 545340
                  bge          s11, a5, 965f
964:              addi         s5, s9, -264
965:              add          s0, sp, t2
                  sra          a7, s3, a7
                  bne          a2, s5, 985f
                  sra          a4, a6, tp
                  bne          a7, sp, 980f
970:              srl          s9, a3, s3
                  sra          s9, tp, a1
972:              sltu         gp, gp, a3
                  ori          t6, t3, 641
                  blt          ra, a3, 993f
                  bltu         t2, s10, 980f
                  addi         s9, s1, 167
977:              srl          a7, s9, t4
                  lui          a0, 1035006
                  slt          s10, s9, ra
980:              srl          ra, s11, t0
                  bltu         a6, a6, 986f
                  ori          s9, a1, -1644
                  srli         s7, a2, 3
                  addi         s0, ra, -1140
985:              nop
986:              and          a7, a3, s8
                  slt          t3, ra, tp
                  sra          gp, zero, a4
                  addi         t3, s8, -775
                  srai         zero, s0, 28
                  sltiu        tp, s6, 1447
                  or           s7, s8, s8
993:              bltu         s7, ra, 995f
                  add          a2, t3, a5
995:              addi         t6, t1, -1578
                  sra          s6, zero, zero
                  beq          a5, s1, 1005f
                  slt          a6, s9, gp
                  ori          t6, s1, -1464
                  sll          t6, a0, t6
                  blt          s0, a1, 1018f
                  sltu         s8, a0, s5
                  slti         s11, s8, 846
                  sub          a0, a6, zero
1005:             xori         s11, t3, 1762
                  slti         a3, s1, -781
                  sltiu        s0, s11, 1776
                  andi         a5, t6, 501
                  xori         a4, a7, -948
                  and          a3, sp, a1
                  slli         t6, t0, 18
                  ori          s2, t4, 1438
                  blt          t1, t6, 1024f
                  sll          t6, a6, s7
                  nop
                  sltiu        s9, a3, 825
                  sra          s8, a3, gp
1018:             slli         t3, t1, 31
                  srai         s5, s1, 12
                  slti         s0, tp, -239
                  sra          tp, s3, t2
                  sltiu        a3, s11, -829
                  slt          t4, s8, s1
1024:             slli         s5, gp, 5
                  srl          tp, a7, ra
                  bne          a1, ra, 1032f
                  slli         s3, a6, 26
                  bgeu         t3, t5, 1038f
                  srli         a7, s7, 10
                  addi         s3, s8, 449
                  blt          s10, ra, 1048f
1032:             ori          a6, a1, 1285
                  sltiu        s5, t2, -527
                  slt          s5, t2, tp
                  srai         s6, s7, 0
                  lui          s1, 319466
                  blt          a6, a2, 1046f
1038:             beq          a7, t4, 1046f
                  slt          gp, a3, s7
                  ori          s10, s10, -1841
                  xor          s4, s11, s2
                  nop
                  srli         t6, s7, 23
                  ori          zero, s3, 966
                  sltiu        zero, a6, -1356
1046:             blt          t6, s1, 1055f
                  sltiu        gp, a3, 300
1048:             sltiu        s0, ra, 403
                  lui          sp, 130930
                  xor          sp, a6, a0
                  sll          s9, ra, sp
                  bge          s0, t1, 1056f
                  sltiu        s1, s7, 1501
                  bge          a2, s2, 1073f
1055:             slt          s3, s11, a0
1056:             sra          a5, a3, zero
                  add          s3, s5, s11
                  lui          gp, 896136
                  bne          s8, s7, 1078f
                  lui          s6, 999107
                  ori          s1, t3, -1993
                  blt          t3, s8, 1077f
                  bltu         a3, tp, 1082f
                  auipc        t6, 667701
                  or           s4, s3, s6
                  xor          s10, a4, s10
                  auipc        s2, 219815
                  ori          s9, s11, 27
                  slt          t2, s9, s11
                  bge          s0, t5, 1082f
                  bne          t1, s4, 1091f
                  slli         s11, t6, 27
1073:             andi         a1, a5, 710
                  bge          zero, a1, 1091f
                  bne          s0, t4, 1087f
                  sra          a0, a1, gp
1077:             lui          s6, 879429
1078:             andi         a7, a5, -871
                  bne          s6, a4, 1081f
                  slli         t3, a2, 24
1081:             bge          s10, t5, 1097f
1082:             lui          t6, 820401
                  sll          s10, a7, a2
                  beq          a3, t4, 1089f
                  slt          s9, t0, s3
                  sub          a4, t0, s11
1087:             bltu         s2, tp, 1098f
                  bge          sp, a5, 1100f
1089:             sltu         s6, t6, s11
                  srl          a4, a4, t3
1091:             srai         s1, a2, 26
                  srai         sp, t6, 4
                  blt          a2, s7, 1109f
                  sltu         zero, tp, s2
                  ori          s9, t0, 977
                  add          a5, a7, a1
1097:             srl          s5, ra, a3
1098:             and          s6, ra, t3
                  srai         zero, zero, 13
1100:             sub          t4, a4, s5
                  beq          s2, s11, 1106f
                  bge          zero, ra, 1116f
                  xori         sp, t3, -1973
                  andi         t2, s9, 855
                  beq          a4, gp, 1123f
1106:             bge          s1, a6, 1107f
1107:             srai         a5, a2, 31
                  slli         a5, t3, 6
1109:             xor          a2, t4, t5
                  sltiu        s2, sp, 531
                  lui          s5, 467399
                  andi         gp, s8, 1138
                  andi         t3, gp, 1167
                  sll          s3, a5, s6
                  beq          zero, s7, 1135f
1116:             add          s9, s8, s10
                  sub          t2, tp, zero
                  sub          ra, a1, s4
                  andi         zero, t2, -1299
                  sub          a2, t2, s9
                  srl          zero, s10, s2
                  lui          s0, 807885
1123:             lui          s6, 576674
                  srli         s2, a5, 18
                  lui          a3, 846037
                  sub          tp, gp, t5
                  slt          a7, t2, a5
                  xor          sp, t0, s6
                  slt          s4, t4, s9
                  or           s3, t1, s5
                  addi         a2, a4, 193
                  blt          s10, s7, 1142f
                  or           s0, a0, s6
                  lui          tp, 695082
1135:             auipc        a4, 295594
                  srai         s10, t4, 22
                  andi         ra, sp, 973
                  bne          s10, s2, 1155f
                  addi         t3, s11, 816
                  srl          a2, gp, a4
                  slli         a4, a3, 5
1142:             sltiu        a0, a1, 2032
                  la           sp, region_1+257 #start riscv_load_store_rand_instr_stream_9
                  sb           a7, -133(sp)
                  xor          t4, t6, gp
                  sll          gp, a5, s4
                  xor          t3, s11, ra
                  and          s11, tp, a3
                  sltu         s2, tp, a6
                  srl          a6, s7, t1
                  srli         s11, s9, 24
                  lb           t3, 80(sp)
                  lh           s0, 157(sp)
                  auipc        s10, 487077
                  lb           s1, -94(sp)
                  slti         a7, s2, -606
                  sra          zero, a5, t5
                  lbu          a4, -58(sp)
                  lbu          s1, -32(sp)
                  lbu          s11, -174(sp)
                  slt          gp, s0, s0
                  slti         t4, a4, 1765
                  srl          t3, s9, s2
                  srl          a4, a3, a6
                  sra          ra, t4, a5
                  sw           s11, 235(sp)
                  lh           s9, 29(sp)
                  lb           s8, -64(sp)
                  lb           s3, 137(sp)
                  add          zero, a2, gp
                  and          a4, a7, t6
                  lb           s4, -27(sp)
                  sh           a0, 193(sp)
                  lb           s1, 45(sp)
                  srai         a7, a7, 0
                  sub          t6, a0, t6
                  slt          a1, sp, zero
                  sub          s7, sp, a6
                  lh           a4, 191(sp)
                  or           s2, a1, s7
                  addi         t3, a0, -1846
                  and          s3, t0, a7
                  sb           a4, -224(sp)
                  lbu          a5, 168(sp)
                  sltiu        a4, sp, -1023
                  sw           s7, 95(sp)
                  lui          a2, 622785
                  sh           s8, 157(sp)
                  sw           t2, -81(sp)
                  lbu          t6, -92(sp)
                  lw           a6, -17(sp)
                  nop
                  lbu          t6, -35(sp)
                  lb           s6, -84(sp)
                  sltu         s1, t6, s2
                  srl          s0, a7, s3
                  lbu          s5, 99(sp) #end riscv_load_store_rand_instr_stream_9
                  srli         zero, gp, 24
                  sltiu        t2, t6, -1572
                  xor          gp, a3, s7
                  auipc        a5, 141828
                  xor          s7, t2, s6
                  sra          t2, a0, s0
                  beq          a6, s5, 1161f
                  sltu         s10, t1, s1
                  bltu         s7, ra, 1166f
                  slli         t3, s10, 14
                  srai         s8, t6, 15
                  srai         t3, s4, 4
1155:             addi         s4, s2, -1940
                  bge          s6, t0, 1172f
                  bltu         a6, a7, 1169f
                  srai         gp, t6, 6
                  or           a3, s5, ra
                  or           s8, a1, t2
1161:             srai         t6, s3, 12
                  srli         t6, tp, 2
                  add          s6, s11, s2
                  sltu         tp, a4, s7
                  bne          s6, a1, 1183f
1166:             srai         s6, a2, 18
                  or           s7, gp, ra
                  sltiu        s9, t5, 1502
1169:             sub          s6, a4, s3
                  slt          a2, s7, s5
                  auipc        a3, 781777
1172:             xori         s9, s5, 477
                  ori          s11, t5, -1324
                  addi         a1, a5, -1462
                  xor          a2, a2, s5
                  slti         sp, gp, 1994
                  sra          t4, a7, s1
                  slt          t4, s9, a3
                  slti         s8, zero, -1029
                  andi         s4, t6, -1087
                  andi         s9, t1, 1987
                  sltiu        s3, s8, 1963
1183:             sltiu        s10, s7, 1863
                  addi         s10, zero, -313
                  addi         s7, s11, 49
                  sra          a2, s4, t4
                  sll          s6, t4, s1
                  ori          a5, t1, -635
                  sltu         s9, s3, sp
                  bge          zero, a7, 1194f
                  srli         gp, sp, 4
                  bltu         t5, t0, 1209f
                  auipc        s4, 955913
1194:             sltu         a2, s9, a7
                  xori         s2, a1, -1911
                  blt          a5, t1, 1213f
                  and          a7, s6, ra
                  sltu         s8, s5, a0
                  slli         s10, t0, 2
                  bgeu         s5, a3, 1219f
                  nop
                  bge          a2, a1, 1221f
                  or           a1, zero, t3
                  blt          s1, s10, 1212f
                  or           a4, a4, s4
                  add          a1, sp, t2
                  bgeu         s11, s3, 1216f
                  add          a1, s1, s1
1209:             sra          ra, s9, a1
                  bgeu         sp, t1, 1215f
                  addi         a1, s4, 1086
1212:             sltu         s1, a0, s4
1213:             bltu         a7, t4, 1214f
1214:             blt          s2, sp, 1222f
1215:             slli         tp, sp, 31
1216:             ori          ra, t4, 1637
                  sltu         s9, s8, a0
                  auipc        s5, 18012
1219:             slti         s3, s11, -1866
                  andi         s1, s3, -1756
1221:             slt          s9, sp, t1
1222:             nop
                  bgeu         a5, a2, 1225f
                  sltiu        t4, sp, 1155
1225:             add          s11, a2, t1
                  srl          s4, ra, t2
                  srai         zero, a0, 11
                  blt          t5, ra, 1237f
                  addi         a7, a1, -917
                  lui          a7, 746045
                  lui          s6, 117869
                  addi         s1, t5, 960
                  slti         s9, s5, -1884
                  xor          a4, t4, a4
                  srai         gp, t0, 20
                  sltu         s4, sp, t4
1237:             add          tp, s8, s11
                  nop
                  slti         t6, a3, -1883
                  srli         s3, s2, 10
                  or           a3, s8, s0
                  slt          s0, s0, a2
                  lui          t3, 308478
                  sll          s0, a0, a5
                  sub          s2, t0, t2
                  slti         s0, s6, 1125
                  sltiu        a6, s3, 1926
                  srli         t6, gp, 22
                  nop
                  slti         s4, t2, -152
                  or           s10, ra, s7
                  srl          gp, ra, s4
                  or           t2, t3, gp
                  sll          s6, a1, s4
                  sltiu        s4, t2, 1116
                  blt          t6, s8, 1272f
                  srli         s0, s9, 8
                  sltu         a2, t2, t2
                  and          t6, s8, s2
                  sll          a6, s9, s6
                  andi         a1, t5, 1564
                  nop
                  bgeu         s7, a4, 1268f
                  slt          tp, a5, t4
                  auipc        s4, 989484
                  sltu         t2, a3, s7
                  slti         sp, a4, 450
1268:             add          t3, s2, gp
                  or           s9, a0, gp
                  srai         zero, s1, 16
                  xor          a7, t1, s10
1272:             xor          zero, a2, a2
                  lui          s0, 554938
                  andi         ra, t6, -777
                  bge          t6, s7, 1294f
                  srl          s1, s7, t6
                  sra          a6, s0, t2
                  srl          s4, s2, t1
                  addi         gp, a3, 745
                  bne          t2, t6, 1294f
                  sra          t6, s3, s9
                  ori          a7, a2, -1478
                  srai         t3, a2, 17
                  xori         s11, a4, 649
                  sub          s2, t5, s8
                  slli         s0, a1, 9
                  srli         s7, a5, 7
                  sub          t2, s6, s11
                  addi         gp, s2, -647
                  lui          s1, 225777
                  bge          a1, gp, 1302f
                  srl          a1, a0, s7
                  srl          a4, t4, t0
1294:             sub          s3, a3, a2
                  blt          gp, a6, 1307f
                  bltu         s3, gp, 1302f
                  and          a3, s11, a5
                  sub          t6, t6, a1
                  auipc        t2, 163923
                  xor          s2, a1, t0
                  srl          s11, s5, zero
1302:             sub          s1, t5, s9
                  lui          t4, 366748
                  srli         s2, tp, 29
                  slt          a3, gp, ra
                  srai         t4, a7, 11
1307:             bgeu         t5, s8, 1309f
                  sub          s2, t3, a2
1309:             slti         a0, s2, 522
                  sub          t6, s3, s1
                  bne          a0, s0, 1322f
                  sra          s9, a0, a2
                  lui          zero, 257989
                  sltu         s10, s7, s1
                  addi         s7, gp, 737
                  auipc        t6, 578103
                  andi         s7, t1, 1477
                  sltu         a1, s11, zero
                  bge          s5, a5, 1324f
                  bgeu         t0, a0, 1325f
                  and          s0, a0, s10
1322:             srli         t6, s4, 20
                  bge          t5, t3, 1338f
1324:             sub          s8, s9, a1
1325:             beq          s11, s7, 1336f
                  srli         s3, s1, 31
                  auipc        a6, 1026338
                  bgeu         s3, a1, 1340f
                  blt          a7, s5, 1346f
                  add          a2, t0, s7
                  srai         t6, t6, 25
                  bgeu         s3, s1, 1340f
                  bgeu         a5, sp, 1345f
                  bne          s10, t6, 1350f
                  srl          t4, zero, s6
1336:             xor          a1, s9, ra
                  addi         t2, t3, -459
1338:             bltu         a7, s11, 1350f
                  xori         s8, a1, 1799
1340:             beq          sp, s6, 1350f
                  sub          sp, tp, s2
                  slt          t3, s5, s10
                  sub          s4, s3, t0
                  nop
1345:             addi         a6, s11, -1946
1346:             nop
                  bltu         a4, a3, 1350f
                  and          ra, t6, s2
                  slt          a1, s2, s0
1350:             nop
                  lw           s3, 4(t1)
                  xori         s8, a5, -1625
                  sra          zero, a1, t3
                  addi         t1, t1, 48
                  sra          s6, t3, gp
1817:             addi x31, x19, 1
1817:             jalr x31, x31, 0
sub_7:            addi         t1, t1, -40
                  nop
                  andi         a1, tp, -1134
                  sw           s3, 4(t1)
                  sub          s4, gp, s8
                  addi         s2, sp, 1105
                  slli         a2, t1, 25
                  srl          gp, t4, a0
                  srl          s9, a7, s4
                  sub          t6, t0, s5
                  la           a1, sub_9
                  srl          s8, s3, t6
                  slt          gp, t5, t1
                  addi         a1, a1, 722
                  sra          s9, gp, s5
sub_7_j13:        jalr         s3, a1, -721 #jump sub_7 -> sub_9
                  and          s5, s8, t4
                  sltu         s4, s3, t4
                  slt          s2, t5, a7
                  srli         t4, t0, 8
                  bltu         s11, sp, 18f
                  nop
                  xor          s7, a3, t4
                  beq          s11, s4, 16f
                  or           a4, a2, t3
                  addi         ra, t4, 1769
                  auipc        s11, 705950
                  auipc        s2, 853779
                  bge          s7, gp, 15f
                  and          ra, t2, t6
                  xor          a3, t5, a7
15:               srli         t2, s9, 31
16:               slt          zero, t4, a2
                  slti         a3, s9, -1996
18:               ori          t2, t3, 1065
                  sra          a7, a6, s0
                  slt          a5, tp, a2
                  sra          a4, a0, t3
                  sub          s0, t4, tp
                  blt          s6, s7, 29f
                  sra          tp, s3, a2
                  xori         s9, gp, -865
                  ori          a2, s3, -1845
                  ori          s3, s5, -183
                  srl          a4, t3, t5
29:               lui          s0, 421289
                  lui          gp, 266565
                  slt          sp, s4, s4
                  beq          s5, s8, 46f
                  slti         t6, t1, 785
                  slt          a1, ra, s5
                  bne          t4, s7, 46f
                  andi         zero, ra, -991
                  bne          a2, t3, 46f
                  slli         s4, s6, 20
                  beq          tp, tp, 45f
                  auipc        s7, 245792
                  srli         s5, tp, 29
                  andi         gp, s9, 1220
                  srl          a2, sp, a5
                  and          s2, s6, s4
45:               ori          s11, a4, -784
46:               add          a3, t2, ra
                  lw           s3, 4(t1)
                  slt          t3, a1, s3
                  addi         t1, t1, 40
                  auipc        a2, 364139
                  sltiu        s6, t2, 1928
                  or           a7, s9, s5
69:               addi x11, x19, 0
69:               jalr x11, x11, 0
sub_3:            and          t3, tp, s5
                  ori          a1, t1, -1432
                  sltu         s8, a1, t6
                  addi         t1, t1, -32
                  lui          a7, 947536
                  auipc        t6, 648199
                  slli         t6, s0, 18
                  sll          s9, s0, t3
                  add          t6, s5, s8
                  nop
                  sw           s3, 4(t1)
                  sub          a7, ra, t4
                  la           sp, region_1+779 #start riscv_load_store_rand_instr_stream_0
                  sb           ra, 64(sp)
                  lw           s10, -23(sp)
                  lb           a3, 5(sp)
                  ori          a0, t4, 104
                  lhu          s10, -27(sp)
                  lbu          s6, -37(sp)
                  lb           tp, 7(sp)
                  lbu          a0, -8(sp)
                  lhu          t4, -33(sp)
                  sb           t4, 52(sp)
                  sb           t6, 36(sp)
                  lbu          a5, 41(sp)
                  lbu          gp, 19(sp)
                  sb           t4, -17(sp)
                  add          ra, s10, ra
                  or           s0, a1, t3
                  andi         s1, a5, 1697
                  lui          a3, 235363
                  lb           s3, -6(sp)
                  lbu          s1, -1(sp)
                  sb           a2, 20(sp)
                  nop
                  lh           a4, 63(sp)
                  lh           s5, 5(sp)
                  sll          t3, tp, t6
                  lbu          s8, 24(sp)
                  srl          a0, a4, t1
                  lb           t6, 22(sp)
                  lb           s1, 3(sp)
                  slti         a2, t5, 523
                  add          a2, tp, t1
                  lbu          t2, 18(sp)
                  sh           t0, -49(sp)
                  lbu          zero, -48(sp)
                  slt          s5, zero, gp
                  lbu          s11, 40(sp)
                  sb           a5, 11(sp)
                  lb           s11, -60(sp)
                  sb           s5, -40(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s7, region_0+1323 #start riscv_load_store_rand_instr_stream_1
                  nop
                  ori          sp, t1, -197
                  lb           s5, -2(s7)
                  sub          t3, s1, gp
                  slt          s4, t3, a3
                  ori          a7, gp, 402
                  lh           t4, -17(s7)
                  lbu          ra, 60(s7)
                  lh           t2, 51(s7)
                  slti         s1, t6, 3
                  sh           s7, 7(s7)
                  lbu          a0, -22(s7)
                  sh           a0, 49(s7)
                  sll          ra, s11, s7
                  srl          t3, s2, a4
                  auipc        sp, 143361
                  lbu          a0, 58(s7)
                  srli         s9, s5, 7
                  sh           a2, -29(s7)
                  ori          t3, s0, -734
                  sll          s10, a0, s6
                  lb           a2, -27(s7)
                  addi         s6, a3, 1354
                  sltu         a4, s10, a0
                  or           s3, s7, a1
                  or           s10, t2, a3
                  xor          s2, t2, s2
                  lui          tp, 603954
                  auipc        t4, 585243
                  or           t4, t3, t2
                  lb           a3, -36(s7) #end riscv_load_store_rand_instr_stream_1
                  sltu         a1, a0, a4
                  bge          a3, a5, 11f
                  srli         ra, a2, 31
                  sltiu        zero, s9, 1956
                  addi         s4, s7, -2017
                  add          a2, t3, t2
                  beq          s8, s8, 17f
                  slti         gp, t6, -1719
                  xori         s7, s3, -869
                  srli         t3, zero, 24
                  nop
11:               or           a0, s6, gp
                  sll          s9, a7, s1
                  bge          zero, s5, 33f
                  blt          a6, a5, 27f
                  lui          tp, 319031
                  beq          a1, t2, 26f
17:               ori          a3, t0, -376
                  ori          gp, s1, -892
                  bne          s3, s2, 25f
                  sra          gp, t6, s4
                  sltiu        a1, a6, 1447
                  slt          a5, t2, ra
                  bne          t5, a2, 34f
                  srl          t6, gp, s8
25:               auipc        a7, 82691
26:               xor          gp, s5, s6
27:               addi         s6, s11, 1984
                  srai         a7, t0, 4
                  ori          s10, t6, 1950
                  slt          s3, s8, zero
                  srl          t4, a0, a1
                  sltu         s7, s9, t2
33:               auipc        a2, 739556
34:               nop
                  auipc        s7, 614347
                  sub          s4, a3, s9
                  slti         zero, a1, -1038
                  srl          zero, s3, t1
                  sltiu        t2, s0, 1059
                  blt          t0, s4, 50f
                  ori          s6, s4, -945
                  blt          t5, s3, 60f
                  addi         s3, s4, -1469
                  bgeu         a2, s3, 52f
                  bne          a7, t2, 62f
                  sub          s3, t4, a0
                  nop
                  or           s7, t1, a3
                  sub          s9, a3, s2
50:               sltu         a2, s7, a4
                  and          s11, s11, s6
52:               xori         a2, s8, -1315
                  sub          a5, s11, s4
                  sub          zero, zero, s9
                  sll          s5, t3, t6
                  srai         sp, gp, 27
                  auipc        a3, 308344
                  bne          a0, sp, 71f
                  srl          s5, s8, a7
60:               slti         s0, s3, -901
                  bne          s11, s1, 65f
62:               addi         s2, tp, 1364
                  ori          a4, a7, -33
                  sub          s4, a3, t1
65:               srl          tp, t0, s8
                  bne          tp, t5, 72f
                  andi         a0, s9, -451
                  ori          s3, a0, 539
                  addi         t6, a6, -845
                  blt          gp, s3, 79f
71:               bne          zero, t0, 75f
72:               andi         s11, s0, 1366
                  sltiu        s9, ra, 742
                  lui          t6, 643019
75:               sra          gp, a3, a3
                  bltu         a7, tp, 84f
                  andi         t2, s3, -1624
                  lui          t2, 904329
79:               nop
                  srai         a5, gp, 21
                  bgeu         ra, s0, 96f
                  bne          s5, s8, 102f
                  xor          sp, s11, s2
84:               sltiu        s3, ra, -36
                  andi         a6, s11, -1600
                  sll          a7, a3, t4
                  xor          s1, s4, a6
                  srli         ra, s6, 18
                  xor          sp, t6, a1
                  nop
                  bge          s1, a5, 111f
                  bltu         zero, a5, 102f
                  bgeu         a7, s7, 104f
                  slli         s7, t6, 12
                  ori          zero, t3, 881
96:               beq          gp, a6, 111f
                  sub          s0, gp, s9
                  ori          s1, tp, -1488
                  bltu         t5, a3, 112f
                  srai         s5, t0, 17
                  sltu         s11, s9, s5
102:              or           a6, s9, a7
                  slt          a7, sp, t2
104:              srai         a5, s10, 14
                  srai         tp, t4, 26
                  bne          t2, a7, 112f
                  auipc        s4, 816637
                  lui          t2, 843993
                  slt          s3, gp, tp
                  beq          s5, a5, 119f
111:              lui          a3, 683137
112:              slt          t4, s2, a0
                  ori          a0, gp, -1338
                  auipc        s2, 375444
                  or           t6, s5, t2
                  bge          s8, a2, 135f
                  ori          s4, a5, 400
                  bne          a2, t2, 124f
119:              and          zero, t2, t5
                  andi         t2, s10, -247
                  beq          s1, s1, 140f
                  sltiu        gp, a0, 1718
                  slli         t3, s4, 13
124:              xor          s2, s3, a5
                  bgeu         a3, s10, 131f
                  andi         s11, t1, 1489
                  auipc        s5, 11579
                  srai         s6, s6, 6
                  slt          gp, gp, s4
                  bgeu         s3, t1, 136f
131:              xor          s5, s0, ra
                  bge          s10, a3, 136f
                  bne          a5, t0, 139f
                  slt          t6, s1, s11
135:              xori         a6, a6, -356
136:              srli         s9, t4, 19
                  and          s3, s0, s8
                  slli         ra, t5, 5
                  la           sp, region_1+971 #start riscv_load_store_rand_instr_stream_2
                  sh           t5, -5(sp)
                  sw           s7, 13(sp)
                  lb           s9, 16(sp)
                  and          t3, t1, s11
                  lb           s11, 4(sp)
                  and          s2, a0, s3
                  and          a5, sp, t2
                  sb           gp, 9(sp)
                  lhu          s9, -11(sp)
                  sb           t2, 4(sp)
                  add          s5, tp, a7
                  lb           zero, 2(sp)
                  nop
                  lb           a5, 10(sp)
                  srli         a6, s9, 31
                  lbu          a5, 8(sp)
                  sb           s0, -10(sp)
                  lhu          t4, -3(sp)
                  lw           gp, -15(sp)
                  lui          s4, 271130
                  lb           a3, 7(sp)
                  sb           s0, 11(sp)
                  lh           t3, -11(sp)
                  lb           gp, 10(sp)
                  ori          s8, s6, -1168
                  sb           s8, -14(sp)
                  lui          a1, 126050
                  lbu          s10, -1(sp)
                  lw           s2, -3(sp)
                  lb           s2, 10(sp)
                  srli         a7, t3, 11
                  lbu          s7, 16(sp)
                  srl          s10, tp, zero
                  addi         a0, s3, 1358
                  sb           s5, -14(sp)
                  sra          a7, a0, t2
                  slti         a3, tp, -1674
                  lb           s3, 14(sp)
                  slli         ra, t2, 22
                  xori         gp, s8, 1979
                  nop
                  lbu          s1, 9(sp)
                  sh           ra, 9(sp)
                  lh           s4, -9(sp)
                  lbu          s4, 7(sp)
                  lb           s0, -6(sp)
                  nop
                  auipc        s4, 465224
                  nop
                  sb           a0, -14(sp) #end riscv_load_store_rand_instr_stream_2
139:              or           gp, ra, s4
140:              auipc        t2, 1039510
                  srli         s1, s0, 18
                  bltu         ra, tp, 148f
                  xor          tp, sp, a7
                  add          a7, t3, a7
                  and          s9, s2, s9
                  lui          t6, 39097
                  bltu         s0, tp, 160f
148:              lui          s0, 1034830
                  bgeu         t3, t2, 153f
                  blt          a0, a7, 159f
                  srl          sp, a5, tp
                  sll          a5, a2, s6
153:              sltu         s11, a4, a0
                  sra          s0, a0, tp
                  sll          t6, t5, s9
                  sra          s5, t4, a0
                  sltiu        s9, a2, 393
                  or           s5, s9, s8
159:              xor          s2, a2, a3
160:              sltiu        t2, t5, 113
                  beq          s7, t0, 167f
                  sra          gp, a1, t5
                  add          a0, s9, t1
                  sltu         s0, s11, a4
                  bne          s2, s3, 176f
                  or           s11, s10, s0
167:              lui          s5, 348821
                  sra          s6, t6, s0
                  bne          s1, s7, 177f
                  andi         s6, t2, 59
                  sub          a4, t4, t2
                  blt          s5, s8, 190f
                  beq          ra, s1, 183f
                  bltu         s4, a7, 180f
                  sra          s4, a6, s8
176:              srl          s10, a5, zero
177:              sltiu        gp, t3, 1144
                  sll          t6, a1, s9
                  and          s8, a1, s5
180:              sub          a5, s3, a1
                  bgeu         gp, s8, 192f
                  sra          a3, sp, t3
183:              ori          a5, s5, -1635
                  sra          s2, a4, t2
                  sra          t4, s7, a5
                  xori         s4, t5, -463
                  and          t2, t4, s11
                  slli         sp, s6, 29
                  auipc        t6, 930019
190:              and          a0, a5, t1
                  lui          a3, 244181
192:              or           s8, a6, tp
                  bne          t2, a5, 202f
                  sub          s6, s8, s8
                  add          a7, a5, t1
                  and          s2, a0, t1
                  beq          t2, a0, 207f
                  ori          tp, t3, 929
                  xor          s11, s11, s1
                  bne          a0, t0, 220f
                  addi         s6, ra, 155
202:              sub          a3, a2, s8
                  or           s1, s2, a2
                  sltu         a3, sp, t4
                  bne          tp, gp, 218f
                  nop
207:              slt          s6, t6, s5
                  xor          t2, s10, s5
                  srai         s7, s8, 22
                  bltu         a4, s5, 220f
                  sll          s1, s3, sp
                  or           a3, a7, t6
                  srli         t2, t5, 31
                  ori          s0, t0, 357
                  slti         zero, s5, 172
                  srai         sp, t0, 13
                  srai         t3, t5, 1
218:              andi         a2, t2, -1846
                  slli         s5, ra, 25
220:              blt          t2, a2, 235f
                  srl          a3, s1, a0
                  srli         a3, s2, 14
                  srli         t4, s4, 6
                  andi         s2, s9, 61
                  xori         ra, t3, 342
                  ori          s6, t6, 630
                  lui          t4, 268456
                  slli         s7, a3, 16
                  nop
                  slli         s7, a5, 14
                  sll          zero, s1, zero
                  sub          s2, s10, s5
                  sll          s1, zero, s2
                  srai         sp, ra, 26
235:              bne          t5, t2, 250f
                  slti         s4, s10, 555
                  and          a4, a7, s3
                  auipc        a2, 204309
                  slt          zero, sp, t6
                  ori          s1, s3, 244
                  sub          s11, a1, a4
                  ori          gp, s7, 356
                  bge          a6, s7, 253f
                  beq          tp, t2, 252f
                  slti         s6, t5, -1875
                  bge          s6, s7, 265f
                  bge          a5, ra, 264f
                  bne          s6, s11, 268f
                  sltu         a3, t4, s11
250:              bne          t3, a4, 263f
                  sra          a0, t6, t1
252:              sra          s3, s2, s10
253:              sll          t3, a2, tp
                  sub          a4, ra, t2
                  add          a2, a3, s6
                  slli         s6, t6, 31
                  auipc        s7, 926624
                  sltu         a0, tp, a0
                  slt          s6, s7, t5
                  add          t2, t2, a4
                  sub          a6, gp, s0
                  bge          t0, a5, 273f
263:              xori         s10, s2, 1346
264:              add          s4, t1, s2
265:              sub          t4, s2, s10
                  and          ra, s6, t3
                  slli         a3, t5, 17
268:              srl          s9, s9, a3
                  bgeu         s5, gp, 289f
                  sll          s4, s2, s7
                  sra          zero, ra, zero
                  sltiu        a7, t2, 1718
273:              and          zero, t4, gp
                  sltu         t2, s7, sp
                  srai         sp, zero, 2
                  bge          s3, a6, 295f
                  bgeu         s6, s9, 287f
                  sra          s4, s10, a4
                  andi         a1, s9, -1819
                  add          t6, s11, tp
                  xor          gp, tp, t1
                  bge          a0, a7, 295f
                  blt          ra, t1, 293f
                  bne          tp, gp, 294f
                  slt          t6, s7, tp
                  sub          zero, a1, s3
287:              xori         s8, tp, 1800
                  lui          s4, 386014
289:              blt          a7, zero, 293f
                  andi         a0, tp, -481
                  slt          s6, s11, zero
                  bgeu         s3, s3, 301f
293:              sltu         a7, s8, t2
294:              beq          s8, gp, 305f
295:              add          t2, t5, s9
                  bltu         s6, gp, 311f
                  xori         s9, t5, -1011
                  sll          s2, t0, s8
                  sub          a2, ra, a4
                  srl          s9, a2, s1
301:              beq          s0, s8, 312f
                  auipc        s11, 760531
                  sll          s3, a6, a0
                  srl          t2, t4, a2
305:              slli         s5, s2, 13
                  or           a6, s8, ra
                  sltu         s5, t0, s4
                  bne          s7, t3, 328f
                  beq          a4, s8, 329f
                  bgeu         t0, t2, 330f
311:              ori          s9, a2, -601
312:              bne          a5, s6, 318f
                  bge          s4, s7, 319f
                  bgeu         a1, gp, 324f
                  beq          t5, s9, 328f
                  slti         t4, a2, -641
                  sltiu        s3, ra, 1833
318:              sltiu        s2, t5, -244
319:              blt          s8, a0, 325f
                  srli         a6, a1, 17
                  sltu         a6, s3, s5
                  ori          zero, t4, 665
                  xor          s5, t5, a0
324:              sra          s0, s7, a1
325:              xori         tp, a6, 958
                  bne          a4, a3, 332f
                  ori          gp, tp, 893
328:              ori          t2, s9, -1078
329:              or           s8, a0, a0
330:              srl          s7, t4, a7
                  ori          s8, sp, -54
332:              xori         a6, t3, 136
                  slli         s6, a6, 10
                  xor          a6, s5, a7
                  blt          sp, s9, 343f
                  slli         s4, a4, 18
                  bge          s2, a1, 346f
                  slt          sp, gp, s4
                  add          tp, s9, a5
                  bltu         s0, ra, 355f
                  lui          s5, 56815
                  srai         a6, s3, 13
343:              slli         s9, a4, 11
                  sltiu        ra, a7, 1287
                  ori          t2, s0, -1571
346:              sra          s0, gp, s9
                  sltu         gp, t0, a4
                  ori          a6, a2, -298
                  sub          a1, tp, s4
                  or           a5, s2, s5
                  and          a3, s5, a4
                  beq          t0, s3, 365f
                  srl          s2, s3, s5
                  sltu         a6, s2, s4
355:              sltu         s5, t1, zero
                  bne          tp, t4, 364f
                  slt          a0, t1, s4
                  sll          a2, t0, s5
                  blt          s0, s8, 378f
                  slt          s0, t2, t0
                  sra          s8, s9, s5
                  auipc        t6, 694470
                  and          s6, t5, gp
364:              and          s2, s4, tp
365:              bne          gp, t2, 384f
                  andi         a5, sp, -1976
                  sra          s3, s10, t4
                  xori         a5, s1, 1287
                  beq          t6, s9, 373f
                  and          tp, t0, s7
                  srl          a5, s0, zero
                  ori          s11, s3, 1689
373:              beq          sp, s3, 384f
                  slli         t2, t2, 2
                  sra          a6, sp, ra
                  add          gp, gp, t4
                  lui          gp, 149691
378:              xor          a0, tp, a3
                  slli         ra, a6, 12
                  xori         a0, a4, -635
                  slti         a5, sp, 1794
                  or           s2, s3, sp
                  bltu         s4, t0, 389f
384:              beq          a2, s1, 402f
                  bgeu         s5, a1, 402f
                  srai         s4, t1, 9
                  sub          t2, s10, t5
                  slti         t2, a6, 1958
389:              and          s10, a1, a2
                  sltiu        s0, s7, -1782
                  add          tp, s6, s0
                  lui          s9, 799063
                  sub          s10, tp, t5
                  addi         s6, s9, 239
                  sltiu        sp, t1, -1272
                  lui          s6, 761835
                  srai         s9, s6, 23
                  or           a7, a0, s9
                  slli         s7, t1, 3
                  ori          s11, a5, -699
                  xor          s2, t6, gp
402:              slti         s6, s7, -1304
                  lui          a0, 248306
                  srli         tp, t5, 5
                  sltiu        s4, sp, -153
                  bge          s4, a7, 417f
                  xori         a1, t5, 381
                  slti         gp, s11, 254
                  and          t2, t4, s9
                  beq          a5, s1, 425f
                  sltu         a1, s6, s10
                  bgeu         s0, s3, 418f
                  add          s3, s3, s6
                  beq          s3, s11, 434f
                  lui          a2, 753660
                  addi         a4, t2, -715
417:              sltu         s1, a0, ra
418:              add          a5, s8, a6
                  bgeu         s0, s6, 438f
                  add          t4, t1, a6
                  sll          s9, s4, s8
                  nop
                  blt          t0, tp, 429f
                  bge          a6, a0, 428f
425:              slli         a5, s0, 12
                  bge          t5, t2, 437f
                  sll          a2, ra, t1
428:              sub          a3, tp, ra
429:              addi         t3, s3, -600
                  andi         t6, a0, 1254
                  addi         t4, a2, 45
                  sltiu        s8, s3, -1739
                  sub          a4, s11, a6
434:              sll          zero, s9, sp
                  lui          a7, 345606
                  addi         zero, t2, -1306
437:              bgeu         s7, s2, 438f
438:              srl          gp, t0, zero
                  sltiu        s6, a2, 1745
                  and          s1, s9, a6
                  ori          s2, s3, 878
                  srli         a6, s1, 5
                  sltiu        s1, a4, -673
                  lw           s3, 4(t1)
                  addi         t1, t1, 32
                  xori         a4, s4, -1722
                  slti         t6, s2, 1649
                  add          a5, s10, s10
                  sll          a7, t0, tp
                  slt          zero, a6, s4
586:              addi x14, x19, 0
586:              jalr x14, x14, 0
sub_8:            slt          a5, tp, a1
                  srl          s2, a5, a2
                  addi         t1, t1, -32
                  and          a6, t6, s0
                  andi         s5, s6, -1078
                  auipc        sp, 123422
                  xor          s8, a7, ra
                  sltiu        s10, s9, -672
                  slli         t2, t4, 15
                  sw           s3, 4(t1)
                  and          t2, s0, gp
                  nop
                  srli         s2, t2, 22
                  slli         a6, t1, 6
                  or           t3, ra, a4
                  sltiu        ra, t0, -955
                  addi         a0, s8, 674
                  nop
                  sltu         t4, s1, ra
sub_8_j14:        jal          s3, sub_9 #jump sub_8 -> sub_9
                  la           s6, region_0+1417 #start riscv_load_store_rand_instr_stream_0
                  lb           s2, -20(s6)
                  xor          s2, s7, s10
                  srli         a0, a0, 20
                  srl          t2, a1, s2
                  lb           t3, -225(s6)
                  sra          s8, a7, s6
                  sub          a3, s7, t2
                  lbu          a2, 198(s6)
                  lh           a7, 171(s6)
                  lb           a1, 175(s6)
                  srai         s4, s11, 25
                  lbu          sp, 41(s6)
                  slti         sp, s10, -629
                  lh           a7, 117(s6)
                  lbu          a7, 252(s6)
                  lb           s3, 110(s6)
                  lhu          s1, 29(s6)
                  or           zero, s0, zero
                  nop
                  lb           s10, -13(s6)
                  lbu          gp, -236(s6)
                  lw           t4, -33(s6)
                  sw           sp, -145(s6)
                  andi         gp, s4, -605
                  sh           t6, 41(s6)
                  and          a5, s9, s0
                  sb           a0, -127(s6)
                  lb           a2, -152(s6)
                  srli         a1, a6, 27
                  slt          a2, s6, a0
                  xor          s8, s3, s8
                  lb           a1, -210(s6)
                  srai         s9, s6, 28
                  xori         sp, a6, 1863
                  sb           t2, 228(s6)
                  lbu          a3, -202(s6)
                  lb           a6, 224(s6)
                  lb           a4, 77(s6) #end riscv_load_store_rand_instr_stream_0
                  bgeu         gp, s8, 4f
                  bltu         s11, t6, 7f
                  srl          a7, a0, sp
                  slli         a1, t1, 7
4:                slti         a6, t3, 1414
                  xor          s9, t4, a3
                  auipc        a5, 644309
7:                addi         a2, s6, 236
                  sub          a1, a1, a2
                  slli         a6, t1, 14
                  srli         ra, s2, 23
                  slli         t4, a5, 13
                  lui          s6, 754680
                  sra          a0, s5, tp
                  sra          gp, t4, s7
                  lui          s11, 339800
                  sra          a3, a4, a7
                  slt          s5, s3, a7
                  and          a2, a0, sp
                  or           a3, t5, a4
                  sra          s0, a1, t0
                  add          gp, t4, ra
                  srli         zero, s10, 3
                  or           s11, s2, s11
                  nop
                  bne          a7, t5, 27f
                  sra          t3, s6, s11
27:               and          s9, s0, tp
                  bne          s7, t0, 30f
                  lui          s8, 79465
30:               and          s6, s6, s9
                  or           s2, a3, t4
                  nop
                  addi         a0, gp, -1479
                  sll          s0, a3, tp
                  ori          gp, s0, -1315
                  srai         zero, t4, 25
                  xor          sp, t6, s10
                  sll          s0, t6, t0
                  xori         s10, a3, -1005
                  xor          s7, s10, a2
                  xor          s1, t0, s1
                  beq          a4, s11, 51f
                  slti         a5, ra, 1924
                  srli         sp, a1, 11
                  blt          t2, t4, 64f
                  andi         t3, a5, 63
                  nop
                  sltu         s11, ra, s4
                  slti         t4, s3, -1790
                  auipc        s3, 923037
51:               bne          a6, s11, 57f
                  and          ra, t2, s7
                  xori         ra, sp, -767
                  srl          s1, a0, a3
                  lui          a2, 923810
                  nop
57:               ori          s3, s4, 671
                  lui          gp, 650416
                  sra          a5, s6, a3
                  sub          s9, gp, a0
                  xori         zero, t5, -1256
                  srl          a3, s11, a6
                  beq          a6, s4, 80f
64:               and          s5, t2, t5
                  sltu         sp, a5, s6
                  add          tp, s5, a6
                  or           a4, a0, t1
                  blt          a7, s8, 74f
                  sltu         a2, a6, t2
                  beq          s9, t6, 90f
                  addi         tp, s8, -1850
                  bge          a5, a6, 88f
                  and          s0, t1, s2
74:               addi         a1, s8, -1556
                  srl          s2, sp, zero
                  srli         s9, sp, 10
                  nop
                  lui          s10, 238984
                  and          sp, a1, s0
80:               bgeu         t1, t5, 88f
                  bge          sp, s7, 83f
                  slli         a3, a6, 6
83:               srl          a6, s4, s10
                  sll          tp, a5, tp
                  xor          t3, gp, t2
                  ori          gp, zero, 710
                  ori          a0, s4, -583
88:               sltu         s2, t6, s11
                  xor          t2, ra, a4
90:               andi         t4, s11, 860
                  xor          zero, s4, t5
                  xor          a4, t2, s7
                  add          s4, a4, s11
                  srli         s9, s5, 2
                  slt          s9, s3, tp
                  xor          s0, gp, t5
                  srai         s2, s7, 0
                  auipc        s0, 933665
                  sra          a5, s7, a3
                  blt          s8, s1, 114f
                  sll          s6, a0, s6
                  slti         sp, t3, 106
                  bge          a0, s8, 118f
                  beq          s1, a4, 111f
                  srl          s9, s10, s0
                  slti         s1, ra, 1353
                  sra          s10, s3, s5
                  blt          s2, zero, 115f
                  nop
                  sra          a1, t1, s2
111:              srl          tp, a2, a1
                  sltiu        s9, s11, 1874
                  bge          s6, a6, 130f
114:              auipc        a2, 499366
115:              srai         gp, s4, 18
                  or           s8, s1, s0
                  sll          tp, t2, tp
118:              slt          s7, s6, sp
                  bge          s7, s8, 129f
                  bltu         s5, t2, 137f
                  sltu         s9, t4, a6
                  beq          t1, a0, 123f
123:              sltiu        gp, s8, 1453
                  bne          a5, sp, 136f
                  blt          s2, t2, 137f
                  slti         s10, s3, 1576
                  slti         gp, ra, 1178
                  sll          a5, s3, t5
129:              andi         s10, s8, 1638
130:              xor          s6, s11, a0
                  sltiu        tp, s10, -1025
                  srli         s1, t2, 26
                  nop
                  sll          s10, s8, gp
                  sll          s0, tp, a7
136:              bge          s9, s5, 137f
137:              xor          a7, a5, a0
                  srai         s1, tp, 26
                  lui          s7, 167539
                  xori         s10, a4, 651
                  ori          s2, a0, -133
                  lw           s3, 4(t1)
                  srl          a1, tp, a2
                  srl          s4, s1, a5
                  sltu         t3, a3, a1
                  addi         s6, s3, 182
                  addi         s10, a0, -1280
                  addi         t1, t1, 32
                  or           t3, s4, a3
209:              addi x25, x19, 1
209:              jalr x25, x25, 0
sub_5:            bge          t0, t2, sub_5_stack_p
                  srai         a0, a3, 15
sub_5_stack_p:    addi         t1, t1, -64
                  andi         a3, ra, -1023
                  slt          t2, a1, zero
                  sltu         t6, ra, t4
                  add          s4, tp, s7
                  sw           s3, 4(t1)
                  addi         a3, s10, 1175
                  la           sp, region_0+1417 #start riscv_load_store_rand_instr_stream_1
                  lb           s0, 122(sp)
                  slti         gp, a1, 562
                  lb           s7, -206(sp)
                  sb           s8, -14(sp)
                  sra          s2, s11, t3
                  lb           gp, 121(sp)
                  lhu          a4, -45(sp)
                  add          a0, s11, a2
                  auipc        a4, 957226
                  lbu          s2, 186(sp)
                  sb           s2, -32(sp)
                  xor          s4, t5, s10
                  lb           s0, -71(sp)
                  lbu          s9, 146(sp)
                  sb           t3, -146(sp)
                  lui          a1, 286629
                  nop
                  srli         s1, ra, 7
                  lh           ra, -171(sp)
                  slti         a5, tp, -1958
                  lbu          gp, 76(sp)
                  ori          t2, a0, 1261
                  lb           s2, 182(sp)
                  lb           s4, 186(sp) #end riscv_load_store_rand_instr_stream_1
                  la           s3, region_0+355 #start riscv_load_store_rand_instr_stream_5
                  sll          t2, a4, t3
                  sb           s10, 122(s3)
                  andi         t4, t6, -1063
                  lw           ra, -235(s3)
                  sb           a5, 6(s3)
                  sw           t1, -7(s3)
                  lbu          ra, 492(s3)
                  xori         s7, s1, 1767
                  andi         a2, s2, 103
                  srli         t3, t6, 11
                  slli         s6, s11, 8
                  slti         a1, s9, -1129
                  lb           s0, 674(s3)
                  lb           t6, 442(s3)
                  lhu          a0, 813(s3)
                  sb           s11, 478(s3)
                  xor          t6, s7, a2
                  sb           a1, 1232(s3)
                  sub          a0, a3, a2
                  lh           zero, 239(s3)
                  sll          zero, ra, s8
                  addi         a2, t4, -593
                  andi         s2, t1, 1182
                  lbu          t2, 152(s3)
                  lhu          zero, -283(s3)
                  sra          tp, a7, s4
                  nop
                  nop
                  add          a5, t1, s11
                  sll          s10, a5, a6
                  sh           s5, 981(s3)
                  sltu         s4, t3, s5
                  lbu          s5, 1554(s3)
                  add          a2, gp, a6
                  lbu          s6, 1638(s3)
                  lbu          sp, 354(s3)
                  sb           a3, -196(s3)
                  sll          a7, ra, s2
                  sll          a6, s11, a2
                  auipc        a6, 716348
                  lui          a1, 57524
                  add          s6, s7, s8
                  lb           s7, 1563(s3)
                  and          a0, s9, sp
                  lb           ra, 160(s3)
                  srai         s1, t6, 22
                  lb           s10, 1206(s3)
                  lbu          s8, 1615(s3)
                  lui          zero, 529910
                  lb           a1, 671(s3) #end riscv_load_store_rand_instr_stream_5
                  la           t2, region_1+1780 #start riscv_load_store_rand_instr_stream_10
                  or           s9, a7, a5
                  sltu         s11, t4, s9
                  srai         s0, s9, 6
                  lbu          a7, 104(t2)
                  lh           t3, 124(t2)
                  sb           a2, 149(t2)
                  slli         s11, s2, 10
                  sll          a1, t2, tp
                  addi         s7, a3, 1032
                  srl          a2, zero, s0
                  addi         t4, a7, 376
                  auipc        ra, 544047
                  sb           a2, -73(t2)
                  lb           t4, 207(t2)
                  srl          tp, s0, s3
                  slt          s2, t5, s4
                  and          s1, s9, t2
                  sb           t6, 80(t2)
                  sltiu        t6, t2, 677
                  or           a3, s3, t4
                  lb           s6, -89(t2)
                  sra          s2, s11, ra
                  lbu          a4, -30(t2)
                  sb           a3, 148(t2)
                  sb           s1, -235(t2)
                  lbu          s6, 118(t2)
                  sub          ra, s9, a5
                  lhu          a6, -32(t2)
                  sll          a0, a4, t6
                  sb           s0, -169(t2)
                  srai         a1, a6, 0
                  lui          s8, 961691
                  lui          s7, 565826
                  slt          a7, s5, s4
                  lbu          s3, -77(t2)
                  xori         a2, a6, 517
                  lui          s7, 917367
                  lbu          t6, -201(t2)
                  ori          s7, t6, 2023
                  add          t6, s8, s10
                  lb           s3, 151(t2)
                  sltu         s10, s4, a3
                  lb           gp, -190(t2)
                  sltiu        s6, s10, 339
                  sb           a6, -112(t2)
                  xor          t6, a5, t2
                  sltu         s1, s11, s6
                  lb           sp, -37(t2)
                  lb           zero, 113(t2) #end riscv_load_store_rand_instr_stream_10
                  la           s1, region_0+635 #start riscv_load_store_rand_instr_stream_8
                  sub          s10, s1, t5
                  lui          t6, 831723
                  andi         zero, s9, 1587
                  lb           a6, 0(s1)
                  sll          sp, ra, t3
                  ori          a2, t0, 2015
                  sb           a2, 38(s1)
                  srli         s8, a1, 19
                  or           s0, s1, s4
                  lb           s8, 20(s1)
                  lb           s11, -16(s1)
                  sra          a6, s9, a3
                  srl          t6, s11, sp
                  lb           zero, 32(s1)
                  auipc        t3, 584596
                  lbu          a3, 38(s1)
                  xori         a4, t4, 1324
                  lhu          a7, -29(s1)
                  lbu          s5, -36(s1)
                  sh           s8, 1(s1)
                  slli         s11, gp, 13
                  sb           zero, 8(s1)
                  lbu          t2, 60(s1)
                  lbu          a0, 28(s1)
                  lui          a0, 391103
                  lbu          t6, -2(s1)
                  lb           a2, -8(s1)
                  lbu          a1, -61(s1)
                  sb           a4, -39(s1)
                  lb           s0, -12(s1)
                  lh           a4, -61(s1)
                  sb           a5, 10(s1)
                  sll          a3, s11, s3
                  sb           tp, 28(s1)
                  xori         s9, s2, 1997
                  lb           a2, 29(s1)
                  slti         a6, t0, -1476
                  and          s6, t1, s6
                  xori         a6, t0, -1883
                  sll          zero, a3, s4
                  slli         gp, s1, 3
                  lbu          t3, 46(s1)
                  srai         t3, t0, 3
                  slti         s3, a2, 1491
                  sb           s0, -60(s1)
                  lbu          s7, 51(s1)
                  sh           gp, 53(s1)
                  or           s5, t3, s4
                  sw           s5, -39(s1)
                  sltiu        a7, a1, -697
                  lh           s8, 51(s1) #end riscv_load_store_rand_instr_stream_8
                  la           sp, region_1+1478 #start riscv_load_store_rand_instr_stream_3
                  srli         s11, s4, 14
                  sltu         a6, s9, s10
                  xor          a4, tp, s11
                  ori          a2, t1, 777
                  lbu          a7, 39(sp)
                  sltiu        zero, a6, 1476
                  nop
                  lb           ra, 52(sp)
                  lbu          a0, -53(sp)
                  sb           t1, -15(sp)
                  sll          a4, a4, s10
                  sltu         ra, a7, a4
                  sb           sp, 52(sp)
                  srli         a2, ra, 26
                  sb           s7, -44(sp)
                  add          t4, t2, a2
                  lb           gp, -42(sp)
                  sra          a1, s4, s7
                  lw           s5, -26(sp)
                  lbu          zero, -17(sp)
                  slt          a7, s7, s6
                  sb           t1, -5(sp)
                  lb           s9, 43(sp)
                  sh           s2, -20(sp)
                  lb           a0, -57(sp)
                  lbu          s4, 29(sp)
                  sb           s7, -9(sp)
                  lhu          s3, -34(sp)
                  lbu          s6, -9(sp)
                  ori          a0, tp, 673
                  sub          s4, t1, s6
                  srai         s4, s10, 20
                  or           s5, t4, a3
                  sb           s6, 59(sp)
                  slt          a2, gp, s1
                  sb           zero, -17(sp)
                  srl          t3, tp, s0
                  sltu         a6, sp, s9
                  lb           a1, -41(sp)
                  sltiu        s10, s10, 850
                  ori          a5, s0, -1446
                  lbu          a3, -35(sp)
                  lbu          s8, 16(sp)
                  lb           s6, 49(sp)
                  slli         s3, t2, 16
                  sb           s8, 59(sp)
                  sb           s11, 18(sp)
                  or           s8, a1, t0
                  lhu          s3, 62(sp)
                  or           s1, t2, tp
                  sb           s9, 15(sp)
                  and          s2, s1, s5
                  sb           s3, -33(sp)
                  sltiu        t4, t4, -308
                  sll          s8, sp, s6
                  lh           a7, -38(sp) #end riscv_load_store_rand_instr_stream_3
                  la           a0, region_1+1331 #start riscv_load_store_rand_instr_stream_7
                  lbu          s8, -1(a0)
                  xor          ra, s8, a0
                  slti         ra, s8, -955
                  sw           s4, -15(a0)
                  addi         s1, t4, 1657
                  sra          s2, a7, s10
                  lui          a5, 647419
                  sltu         s1, s9, a0
                  lbu          ra, -4(a0)
                  lb           a4, 7(a0)
                  lbu          s5, -4(a0)
                  lb           a2, -2(a0)
                  xor          s3, s11, a6
                  sw           t6, -3(a0)
                  sra          s7, t4, t0
                  srli         t4, s9, 3
                  sll          s3, s11, sp
                  sb           a3, 11(a0)
                  lui          tp, 747815
                  lhu          t3, -11(a0)
                  sb           zero, -3(a0)
                  srli         t4, sp, 0
                  sb           sp, 0(a0)
                  lhu          a7, 1(a0)
                  lh           s1, 5(a0)
                  andi         s11, zero, 778
                  srai         a7, s8, 23
                  sltiu        s5, a7, -1850
                  lui          s4, 975993
                  lw           a6, -15(a0)
                  lb           zero, -8(a0)
                  sll          s8, s2, a6
                  lh           a2, 15(a0)
                  sw           s7, 9(a0)
                  sll          a3, a4, tp
                  lb           a4, 12(a0)
                  lb           s10, 16(a0)
                  lhu          t3, 3(a0)
                  lbu          a2, 2(a0)
                  lb           ra, -16(a0)
                  nop
                  sra          sp, sp, s5
                  lbu          a4, 2(a0)
                  sltu         tp, s8, a1
                  andi         s9, zero, -856
                  sll          s3, t3, s11
                  sb           sp, 4(a0)
                  or           zero, sp, s1
                  srli         zero, s11, 4
                  sll          a3, ra, t5
                  lb           a4, -12(a0)
                  sb           a0, 2(a0)
                  slli         s9, t4, 12
                  lb           s11, 10(a0)
                  lw           s9, -11(a0) #end riscv_load_store_rand_instr_stream_7
                  la           a4, region_0+26 #start riscv_load_store_rand_instr_stream_11
                  slti         a6, gp, 1801
                  and          zero, t4, ra
                  sub          t4, tp, s9
                  lb           a6, 950(a4)
                  lb           s6, 419(a4)
                  lw           s0, 1458(a4)
                  slti         a6, s0, 209
                  sb           t2, 86(a4)
                  lui          a2, 297543
                  sh           s4, 770(a4)
                  add          s0, s10, zero
                  sltu         s8, t2, s6
                  lbu          s2, 289(a4)
                  sltiu        s0, s11, -1529
                  lbu          ra, 956(a4)
                  sub          tp, s0, t0
                  slli         s4, s11, 2
                  lh           tp, 984(a4)
                  lui          s6, 686088
                  srl          s11, a2, t0
                  sb           t4, 1893(a4)
                  auipc        t6, 557215
                  lb           zero, -13(a4)
                  ori          s7, s4, -1759
                  sltu         zero, tp, sp
                  lb           a6, 289(a4)
                  lb           ra, 1729(a4)
                  sb           a0, 229(a4)
                  lui          a3, 1047846
                  slt          s2, t0, s0
                  sub          t3, a0, s5
                  sll          t3, gp, t3
                  lbu          s0, 575(a4)
                  add          s5, s6, s4
                  sb           t4, 291(a4)
                  lbu          s11, 343(a4)
                  add          zero, s9, a4
                  lb           a6, 1655(a4)
                  slt          s5, s8, a0
                  sh           t2, 1068(a4)
                  sw           s4, 334(a4)
                  lbu          s7, 513(a4)
                  lbu          a2, 1035(a4)
                  srli         s5, s2, 13
                  add          t3, s6, a5
                  lhu          s2, 1502(a4)
                  lw           s8, 1374(a4)
                  lbu          s6, 760(a4)
                  add          s7, s3, s5
                  lb           tp, 960(a4)
                  slt          sp, t5, s9
                  ori          gp, a2, 738
                  sh           a7, 1924(a4)
                  nop
                  sll          s0, a7, gp
                  lb           s4, 755(a4)
                  lb           t4, 368(a4)
                  sb           tp, 1883(a4) #end riscv_load_store_rand_instr_stream_11
                  la           sp, region_1+577 #start riscv_load_store_rand_instr_stream_0
                  sb           s9, -16(sp)
                  lbu          zero, -7(sp)
                  sb           tp, 2(sp)
                  sub          s2, a4, sp
                  lhu          t3, -5(sp)
                  slt          s9, tp, gp
                  addi         t3, s4, 1221
                  sra          a2, s1, a6
                  or           ra, s6, s5
                  lb           s2, 8(sp)
                  lb           ra, 7(sp)
                  sb           s1, -6(sp)
                  addi         t4, s4, -1954
                  lhu          a0, -11(sp)
                  lb           a6, -4(sp)
                  ori          a2, t2, -539
                  lhu          s10, -1(sp)
                  sb           t1, 16(sp)
                  sltiu        t4, ra, 394
                  lb           t4, -12(sp)
                  lb           s10, 2(sp)
                  lui          s0, 425501
                  lb           s6, -3(sp)
                  lbu          tp, -12(sp)
                  lhu          a2, 7(sp)
                  auipc        s0, 471345
                  sb           s9, -14(sp)
                  sra          t4, t2, t5
                  sub          a2, a2, s4
                  xor          a4, s5, s10
                  ori          s7, gp, 1997
                  lb           zero, 10(sp)
                  lhu          gp, -15(sp)
                  lbu          a1, 5(sp)
                  slti         a3, a6, -1605
                  lhu          zero, -9(sp)
                  sltu         s6, t6, tp
                  and          zero, s1, s8
                  add          a6, t1, s8
                  sltu         s4, ra, t3
                  slti         s5, s9, 1344
                  lbu          a3, 3(sp)
                  lb           a4, -4(sp)
                  lb           s0, 16(sp)
                  sub          a5, t2, t2
                  sltu         gp, s2, s10
                  lw           s2, -9(sp)
                  sh           ra, -3(sp)
                  lui          a6, 986093
                  lb           t4, 0(sp)
                  slli         a2, a6, 17
                  sb           s11, -4(sp) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+903 #start riscv_load_store_rand_instr_stream_9
                  lui          a6, 151368
                  sb           a2, 480(sp)
                  sb           s10, 1096(sp)
                  lui          a5, 171651
                  sltiu        s6, a4, -1797
                  addi         a1, a6, -1145
                  slt          s3, sp, s3
                  sb           s7, 154(sp)
                  srl          t3, s5, a7
                  or           zero, a4, a6
                  sub          s6, s9, s4
                  sll          t4, gp, t0
                  sh           sp, 1033(sp)
                  slli         s6, tp, 17
                  or           a6, s3, t1
                  andi         t6, s1, -1356
                  lb           a6, 528(sp)
                  lbu          s8, 288(sp)
                  xor          s5, t2, a5
                  sltu         a1, t0, s6
                  andi         s1, t4, 621
                  srl          s6, a5, t1
                  xor          s3, t3, s1
                  sb           s7, 202(sp)
                  andi         zero, sp, -1049
                  lb           s10, -283(sp)
                  sb           a2, -26(sp)
                  sltu         t4, s6, s2
                  lb           t6, 614(sp)
                  sw           s3, 877(sp)
                  sb           t4, -256(sp)
                  lb           s4, 1049(sp)
                  sltiu        t2, s11, -1109
                  lbu          t6, -665(sp)
                  nop
                  and          s2, s8, ra
                  sb           a4, 440(sp) #end riscv_load_store_rand_instr_stream_9
                  addi         a6, s0, -1450
                  slli         tp, ra, 17
                  auipc        ra, 657375
                  nop
                  sltu         s11, a1, a7
                  sub          zero, s2, s0
                  and          gp, a5, zero
                  nop
                  auipc        s7, 921112
                  nop
                  la           a7, region_0+1917 #start riscv_load_store_rand_instr_stream_2
                  and          t3, s9, s9
                  lbu          sp, -8(a7)
                  lw           s0, -9(a7)
                  sltiu        a5, t5, 2026
                  ori          s5, a6, -679
                  lh           t2, 1(a7)
                  sb           a1, -7(a7)
                  lb           a0, 14(a7)
                  sra          tp, s11, gp
                  sb           s8, 14(a7)
                  lbu          s10, -5(a7)
                  sra          s1, a0, t6
                  sw           s10, 15(a7)
                  lbu          a2, 16(a7)
                  sb           s10, -3(a7)
                  sb           ra, 6(a7)
                  lh           zero, 13(a7)
                  lbu          a3, 14(a7)
                  slti         sp, tp, 1521
                  lb           a6, 7(a7)
                  sub          s10, s11, s4
                  lui          tp, 892860
                  sub          s4, t4, a3
                  sw           gp, -13(a7)
                  andi         s1, a7, 526
                  srli         a1, s7, 30
                  lh           s10, 5(a7)
                  sb           a1, 15(a7)
                  andi         a5, tp, 1435
                  sh           a6, 3(a7)
                  add          ra, a0, a4
                  lbu          t2, 16(a7)
                  xori         s7, a2, -1207
                  ori          s2, t5, -2048
                  slti         s9, a2, 258
                  sltiu        s1, tp, 1195
                  sb           s2, 6(a7)
                  lbu          s9, 0(a7)
                  nop
                  sb           t2, -2(a7)
                  lb           t6, -4(a7) #end riscv_load_store_rand_instr_stream_2
                  andi         tp, zero, 712
                  sltiu        a0, s6, -927
                  sll          s6, a1, a6
                  srli         s3, a7, 23
                  sra          s3, s11, tp
                  xori         t3, a6, -1964
                  beq          a7, t5, 35f
                  srai         a1, ra, 23
                  srli         a4, t6, 20
                  srl          gp, sp, s5
                  slti         t3, s0, 174
                  andi         s8, t2, 1211
                  bltu         a7, gp, 25f
                  lui          t6, 734936
                  addi         s6, s5, -577
25:               nop
                  and          s4, t5, s3
                  bge          a6, s4, 38f
                  bltu         s11, t5, 36f
                  or           s6, t0, a0
                  andi         s3, sp, 928
                  ori          t4, s7, 708
                  or           s3, a2, a6
                  add          a2, t1, zero
                  srl          t6, zero, s3
35:               add          a7, s9, s10
36:               slli         s11, a1, 9
                  slti         s10, a2, 1685
38:               beq          t1, t4, 55f
                  add          s1, gp, a2
                  sltu         sp, a5, s2
                  slli         t2, t4, 14
                  ori          zero, s0, -705
                  nop
                  bltu         a4, a4, 63f
                  nop
                  beq          ra, a6, 66f
                  beq          s8, tp, 54f
                  srai         s9, t5, 29
                  sltiu        sp, s10, -574
                  xori         s6, s2, -1790
                  bltu         s0, t2, 71f
                  nop
                  bltu         t1, a2, 70f
54:               auipc        zero, 196746
55:               andi         s3, t2, 38
                  nop
                  ori          t3, s4, -204
                  xori         a3, s11, 767
                  srl          s3, a5, a3
                  beq          zero, a4, 70f
                  bgeu         s10, a5, 74f
                  beq          a0, s3, 79f
63:               sra          s1, tp, t0
                  and          s4, a7, sp
                  bne          gp, gp, 76f
66:               blt          t6, t4, 72f
                  lui          a3, 541141
                  lui          s6, 860124
                  nop
70:               beq          s10, ra, 79f
71:               xor          ra, s3, s1
72:               beq          a0, t2, 76f
                  sll          a0, s3, sp
74:               lui          s2, 342890
                  srai         a3, zero, 17
76:               ori          zero, gp, 1527
                  srli         t2, t0, 21
                  bgeu         a3, ra, 97f
79:               bge          s6, t6, 84f
                  bgeu         t3, a1, 88f
                  sltu         zero, s2, a2
                  sltiu        s6, ra, -370
                  la           a1, sub_6
                  xori         s10, sp, 428
                  sltiu        t3, s10, -489
                  addi         s6, sp, -2038
                  addi         a1, a1, 2
                  sltu         ra, s1, a0
                  lui          s7, 278199
                  sra          s1, a7, a4
sub_5_j8:         jalr         s3, a1, -2 #jump sub_5 -> sub_6
                  sra          s8, t4, s2
                  sltiu        s10, a6, -878
                  nop
84:               sra          s4, sp, gp
                  addi         s9, s1, 618
                  srli         s11, s3, 31
                  sltiu        s0, a1, 1899
88:               bne          ra, t5, 104f
                  bne          t1, a3, 102f
                  sltiu        zero, a3, 1684
                  beq          a4, t6, 94f
                  sll          s2, t6, s0
                  sltiu        a5, s10, 1106
94:               bne          t6, sp, 101f
                  srai         a2, s10, 1
                  or           s4, s6, a7
97:               srl          a5, s3, sp
                  xori         s1, t4, 1046
                  sll          t3, s3, t0
                  bgeu         a2, s3, 105f
101:              andi         t2, a7, -93
102:              blt          t4, t3, 107f
                  sub          ra, a2, s11
104:              slli         a7, t0, 31
105:              nop
                  bge          t6, s6, 126f
107:              sltu         s8, s4, a7
                  addi         s1, s6, -406
                  auipc        a5, 470358
                  sltu         a3, a4, t6
                  xor          a1, s11, a7
                  addi         a6, a3, -1341
                  ori          sp, s0, -1820
                  or           a7, tp, t5
                  bgeu         a2, a2, 129f
                  xori         t2, t2, 423
                  slt          s3, zero, t2
                  auipc        s6, 1031787
                  srai         tp, a2, 16
                  or           s6, t1, t5
                  blt          a7, a4, 123f
                  slli         a2, s11, 20
123:              sll          a0, s7, s11
                  auipc        s5, 437454
                  addi         a1, sp, -583
126:              slt          s6, a7, s8
                  slt          s6, a7, sp
                  bne          t2, t6, 143f
129:              sub          zero, s2, s0
                  bltu         t2, a5, 147f
                  bne          sp, tp, 144f
                  ori          t4, a2, 244
                  andi         a2, s3, 932
                  nop
                  and          s8, t5, s6
                  slti         a5, a6, -1198
                  bne          a4, t2, 141f
                  slli         s1, sp, 12
                  xor          t2, s10, gp
                  sltu         sp, tp, t3
141:              srai         a5, ra, 30
                  blt          t5, t6, 145f
143:              and          s1, gp, a6
144:              xori         a4, s10, -1736
145:              blt          t4, t2, 153f
                  or           s0, a0, t1
147:              srai         s6, a4, 2
                  ori          a2, t5, -1077
                  addi         s3, a0, -951
                  lui          s8, 988539
                  ori          s0, t6, 1350
                  lui          tp, 999792
153:              bgeu         s8, t5, 158f
                  bltu         t3, a7, 156f
                  slli         a6, t5, 21
156:              sltu         s0, t2, t0
                  slli         t4, t4, 15
158:              or           s10, a1, a0
                  slli         t6, sp, 22
                  auipc        s5, 472163
                  sltiu        s1, sp, 1360
                  bltu         t6, t4, 179f
                  srai         t4, tp, 16
                  bgeu         a1, t5, 167f
                  sltu         s8, t6, ra
                  beq          s10, s6, 186f
167:              sra          s11, a0, s3
                  or           t3, s11, s3
                  auipc        sp, 186686
                  sltiu        t3, t6, 799
                  addi         t3, a7, -1836
                  bltu         a7, a1, 177f
                  or           a5, t0, s8
                  blt          s1, a5, 194f
                  sll          a7, a1, a3
                  bgeu         t6, s4, 193f
177:              sra          s5, zero, a5
                  ori          s8, s1, -1251
179:              xori         s10, t0, 1004
                  ori          s1, a6, -1699
                  ori          t6, t3, 1740
                  xor          t4, t4, s7
                  srl          a6, t0, sp
                  or           a0, sp, s2
                  xori         a1, a1, 1275
186:              ori          t2, a2, -190
                  bgeu         t3, sp, 201f
                  slti         a5, t3, 1909
                  auipc        a3, 224341
                  or           a0, sp, a2
                  sltiu        s9, gp, 1677
                  addi         ra, gp, -859
193:              ori          ra, s7, -89
194:              beq          a1, s0, 200f
                  bltu         s10, s11, 200f
                  or           s1, s1, t2
                  srli         ra, gp, 23
                  slti         a5, t1, -1942
                  xor          a7, a5, s9
200:              srai         s2, s0, 2
201:              bgeu         t6, a5, 220f
                  nop
                  srl          s5, t2, t4
                  lui          tp, 982919
                  bne          a7, t2, 213f
                  la           a0, region_1+326 #start riscv_load_store_rand_instr_stream_6
                  auipc        s5, 454357
                  lbu          gp, 13(a0)
                  sw           t5, 6(a0)
                  nop
                  and          s8, s5, t4
                  sb           s8, 12(a0)
                  lbu          s10, 5(a0)
                  slti         gp, s9, -2042
                  slt          a7, sp, a2
                  xori         zero, s7, 2043
                  lb           t3, 8(a0)
                  add          sp, s1, t6
                  slti         s6, s5, -656
                  sub          t4, a0, t5
                  xori         a1, s5, 712
                  slli         s4, s5, 10
                  lbu          a3, 16(a0)
                  xor          s6, s1, s2
                  sub          t2, t6, s5
                  lb           t2, -7(a0)
                  sw           t4, 2(a0)
                  and          gp, s2, a7
                  lbu          s0, 11(a0)
                  auipc        t4, 114856
                  slli         a1, s6, 30
                  sh           s3, 16(a0)
                  sb           s0, -13(a0)
                  sb           s1, -12(a0)
                  lbu          t3, -9(a0)
                  lbu          t6, 9(a0)
                  andi         s4, a0, -111
                  or           s5, a6, sp
                  lb           a4, -3(a0)
                  auipc        t4, 1026128
                  add          t6, a6, s8
                  lbu          s2, -10(a0)
                  lh           s4, -12(a0)
                  sra          t2, s3, a0
                  lb           s9, 11(a0)
                  sltu         t3, s6, s1
                  slli         s1, s9, 0
                  lh           t4, -12(a0)
                  sb           s4, -2(a0)
                  lw           a1, 10(a0)
                  lb           a6, 15(a0)
                  andi         s8, tp, -1493
                  sb           a7, -1(a0)
                  sb           a3, 0(a0)
                  lb           gp, -2(a0)
                  lbu          s3, -13(a0)
                  srli         a5, s10, 15
                  lh           zero, 2(a0)
                  sh           s9, -2(a0)
                  srai         s8, t3, 1
                  nop
                  srl          a7, s11, a1
                  lb           s5, -10(a0)
                  or           s3, tp, a0
                  lb           tp, -5(a0) #end riscv_load_store_rand_instr_stream_6
                  srli         a0, a4, 5
                  and          zero, a2, s10
                  blt          ra, s8, 228f
                  addi         s11, t0, -373
                  bge          s0, t3, 217f
                  sltu         s11, a3, s9
                  auipc        ra, 776191
213:              sra          a7, a3, ra
                  or           t6, t5, tp
                  nop
                  bne          s3, s9, 232f
217:              sltiu        s3, s2, 1286
                  blt          ra, s8, 225f
                  bge          t0, s8, 230f
220:              slli         s7, s11, 0
                  sltu         a3, a6, s6
                  xor          s11, s5, sp
                  blt          s4, a5, 233f
                  sltiu        t3, s4, -205
225:              slti         ra, tp, -748
                  blt          t4, s4, 245f
                  sltiu        s9, t0, -1163
228:              sltiu        a3, s4, -675
                  slti         t3, s4, 1894
230:              sltiu        a4, a2, -54
                  slti         s7, s8, 1296
232:              sll          s3, s6, s5
233:              slli         t4, t5, 19
                  srl          a2, a7, a3
                  srl          a4, s8, a3
                  xor          t3, t4, a6
                  slti         a1, a4, -1828
                  blt          s2, t6, 249f
                  srai         ra, a6, 7
                  bltu         s8, a1, 253f
                  sra          t6, s3, t3
                  beq          t5, s2, 251f
                  slli         s6, t0, 22
                  slli         a1, t6, 5
245:              xori         tp, s1, 504
                  sll          s11, s7, a0
                  andi         a3, s4, -1531
                  andi         s3, t2, -184
249:              and          t4, a7, a3
                  slt          a4, sp, s4
251:              or           a5, t1, gp
                  add          s6, s11, sp
253:              bge          s4, t1, 268f
                  sll          s7, a1, gp
                  srl          tp, t5, zero
                  lui          s6, 798180
                  sltiu        t6, t4, -1878
                  srli         gp, a2, 8
                  slti         a1, a4, -1568
                  ori          a7, a2, -131
                  auipc        s5, 981646
                  srl          ra, s7, ra
                  add          s5, a2, s1
                  add          a3, t6, t4
                  srai         t2, s9, 23
                  bgeu         a1, s2, 285f
                  and          s11, zero, zero
268:              slli         a7, s9, 27
                  bne          t3, s9, 277f
                  xori         t6, s9, 329
                  sub          a6, a4, sp
                  sub          s8, a6, s6
                  beq          t6, a1, 275f
                  srl          a0, s2, t2
275:              addi         t4, s7, -1635
                  slli         s11, a7, 26
277:              blt          t6, gp, 296f
                  xor          a6, tp, s9
                  sll          s5, s10, t4
                  sltu         a1, t4, s9
                  nop
                  sltiu        a5, a3, 240
                  xori         a2, s7, -981
                  sra          s0, zero, a6
285:              andi         a3, t6, 371
                  srl          s3, s11, a4
                  lui          s9, 1010208
                  bge          a6, t3, 305f
                  srli         t2, s4, 25
                  sll          s1, a5, t2
                  lui          s8, 941480
                  addi         ra, ra, 382
                  add          s6, s4, ra
                  ori          ra, a3, -221
                  and          s10, s0, s5
                  la           tp, sub_6
                  addi         tp, tp, -736
                  ori          s1, gp, 257
sub_5_j9:         jalr         s3, tp, 736 #jump sub_5 -> sub_6
                  slli         t6, gp, 11
                  slt          a3, sp, s11
                  sll          tp, a0, s2
                  beq          sp, a4, 302f
296:              slt          a4, t1, s1
                  auipc        a2, 3683
                  slt          s6, s5, t3
                  lui          s5, 832172
                  slti         t3, a3, -132
                  xor          s9, s10, s5
302:              sra          t3, s7, a4
                  sltiu        s2, a7, 273
                  slti         s10, t5, -264
305:              lui          s9, 429972
                  xori         s7, t3, 238
                  xori         a7, a1, -1785
                  andi         a1, a1, -1652
                  blt          s5, sp, 312f
                  nop
                  sltiu        a1, t3, -1408
312:              or           t3, a7, t5
                  srli         gp, s9, 0
                  bge          a1, t1, 329f
                  bltu         a3, s11, 325f
                  srl          s11, s11, a3
                  blt          s0, a3, 328f
                  bne          a7, ra, 325f
                  auipc        s1, 900913
                  lui          s11, 183148
                  sra          ra, zero, s8
                  sltiu        s8, t3, -1086
                  auipc        s2, 51148
                  ori          a4, s5, 1172
325:              slti         s0, zero, 1038
                  blt          t2, s9, 342f
                  slt          s10, s8, s6
328:              blt          s1, s8, 345f
329:              lui          gp, 52478
                  slli         s3, t6, 9
                  ori          s3, t6, 36
                  sltiu        s9, s8, -526
                  bge          t3, s7, 338f
                  andi         a6, a4, -1877
                  sltiu        s7, s5, 224
                  sltu         s1, t0, s10
                  add          a3, s7, s7
338:              bne          s5, s7, 347f
                  addi         a5, s8, -865
                  bltu         s0, gp, 353f
                  xori         t3, s1, 850
342:              bgeu         t0, t6, 361f
                  lui          sp, 859707
                  auipc        t3, 868682
345:              add          a0, s7, s11
                  andi         t3, t0, -1880
347:              addi         t6, gp, -681
                  bne          a1, a3, 367f
                  sra          s2, s6, s4
                  lui          a2, 839054
                  and          s2, a2, ra
                  add          a5, t1, s6
353:              or           t6, a7, s11
                  xori         s1, s2, -1582
                  or           t4, s1, s0
                  xor          gp, s9, s3
                  blt          s6, s0, 371f
                  sll          ra, s5, s5
                  bltu         t6, t4, 376f
                  sltiu        a4, sp, -1421
361:              blt          s4, ra, 381f
                  beq          t4, a3, 382f
                  xori         s7, a7, -743
                  bgeu         t1, s8, 370f
                  ori          s7, a2, 216
                  sll          t4, a1, t4
367:              and          s2, sp, gp
                  sltiu        s1, t4, -389
                  sra          s9, a2, s10
370:              srai         gp, tp, 14
371:              slli         a7, a3, 30
                  and          t3, t4, gp
                  srai         a1, a2, 23
                  sra          a5, a2, s4
                  sub          t3, s9, s3
376:              srli         s4, a0, 10
                  bge          a1, s11, 380f
                  andi         a4, t6, 1889
                  xori         s0, s7, -1447
380:              srai         t6, t6, 11
381:              slt          t6, a7, s10
382:              bltu         t5, a2, 387f
                  or           s6, s3, t3
                  andi         t4, s0, 1373
                  xor          a7, a3, t6
                  auipc        s5, 180408
387:              slti         a4, zero, 749
                  xori         t3, a0, 1220
                  bgeu         a3, s2, 393f
                  srl          gp, s2, a1
                  beq          a5, tp, 399f
                  slli         a1, s1, 9
393:              nop
                  srli         s9, s3, 0
                  sltiu        s6, a7, 1030
                  ori          sp, gp, 1948
                  lui          s10, 979016
                  xori         s2, a4, -1151
399:              blt          ra, zero, 419f
                  or           gp, a4, s1
                  nop
                  bltu         s1, t4, 413f
                  srl          t3, s9, a6
                  slt          ra, s10, s11
                  bge          a0, s1, 410f
                  and          s4, t1, a3
                  and          t6, s3, s5
                  addi         gp, a5, -1984
                  bne          a7, sp, 422f
410:              sra          a2, a5, a3
                  sll          s0, a6, s2
                  sltu         s7, a6, s7
413:              srli         s9, s4, 20
                  add          s4, t0, s10
                  add          s6, t1, a5
                  nop
                  slt          a4, s3, a2
                  andi         s7, s2, -1018
419:              add          s2, s4, s8
                  bge          a4, t3, 428f
                  and          a4, gp, t6
422:              xor          s2, t5, s8
                  sltiu        tp, s1, -1655
                  sra          s8, s11, s8
                  sra          s11, s6, s9
                  nop
                  andi         a6, s6, -267
428:              slti         a4, t5, -1444
                  srl          tp, a4, s6
                  ori          s8, s3, 465
                  bge          a3, s3, 446f
                  sltu         s7, s3, s7
                  nop
                  add          a5, s5, a7
                  slli         zero, gp, 4
                  xori         t6, a5, 2006
                  sltiu        t6, t6, -1019
                  srl          a7, gp, s7
                  sll          s1, a7, s6
                  bltu         s9, tp, 454f
                  beq          t5, a3, 452f
                  sltiu        s11, t4, 387
                  xori         a3, a5, 1362
                  auipc        a4, 144758
                  auipc        s1, 881326
446:              srl          a3, s5, s8
                  bltu         sp, a3, 456f
                  lui          t6, 807482
                  sra          s5, tp, a3
                  lui          a2, 635697
                  bltu         s7, t4, 453f
452:              or           s2, s3, t3
453:              andi         s0, s9, -221
454:              addi         a7, a3, -1511
                  auipc        sp, 49951
456:              and          sp, t4, s7
                  bne          gp, t0, 462f
                  sll          a4, a2, t6
                  sltu         s1, s2, s1
                  slt          a0, s0, ra
                  ori          s9, s3, -709
462:              bgeu         t2, gp, 472f
                  slli         s0, a4, 19
                  andi         a1, s0, 458
                  and          s0, s7, s6
                  auipc        sp, 71296
                  sll          tp, s4, gp
                  sll          s2, gp, t1
                  slt          s7, t4, a2
                  srai         a3, a5, 24
                  srai         tp, s3, 9
472:              srli         a0, tp, 28
                  slli         ra, a7, 18
                  xor          s0, s0, s5
                  bltu         s10, s0, 494f
                  bne          a0, s4, 493f
                  sll          s0, a2, a3
                  sltu         s3, s3, s5
                  andi         s1, a1, 1957
                  sll          a2, a5, t2
                  beq          s11, a2, 489f
                  bltu         a4, a5, 495f
                  slt          s8, s0, zero
                  xor          s0, s7, s0
                  xori         s11, a1, -239
                  xor          s3, s5, gp
                  lui          a2, 123381
                  blt          s3, t2, 508f
489:              xori         ra, ra, -298
                  srli         s10, s9, 1
                  slt          a5, s7, a2
                  bgeu         a6, t3, 499f
493:              srl          ra, a0, a4
494:              auipc        a1, 5634
495:              srli         sp, s5, 28
                  slt          a7, s4, s4
                  sra          t4, t6, s7
                  sltiu        a3, a6, -550
499:              srli         a4, t2, 2
                  slli         s7, t6, 23
                  slt          t6, t2, s3
                  ori          ra, t5, -813
                  srl          s8, zero, a7
                  xor          s5, s1, a1
                  sub          s4, t5, s7
                  blt          a5, a2, 523f
                  ori          t4, s5, 1292
508:              nop
                  andi         a2, a4, -145
                  bge          t6, s5, 529f
                  srai         a1, a5, 14
                  bltu         s0, t4, 518f
                  andi         a0, s7, -1047
                  srai         s6, s5, 7
                  sll          s10, s8, s9
                  bltu         s9, s9, 532f
                  xor          tp, s9, s10
518:              sub          a7, s4, s2
                  nop
                  bgeu         s7, s2, 525f
                  or           s0, t4, a2
                  srli         s7, a5, 17
523:              slti         t4, sp, 529
                  blt          a4, s1, 544f
525:              add          s6, a5, t3
                  bge          s6, t2, 529f
                  xor          s8, a5, t1
                  sll          s10, s10, t0
529:              bgeu         s0, zero, 533f
                  srli         a7, a1, 29
                  ori          s5, a0, 16
532:              sll          s11, s1, s4
533:              slli         a5, t3, 4
                  bge          s8, s0, 554f
                  andi         s6, s5, 1109
                  srl          s6, t0, a4
                  sltu         a1, t5, tp
                  sltiu        gp, a5, 1200
                  addi         s1, s10, -1994
                  andi         t6, a7, 1787
                  sltu         a4, s11, s9
                  ori          s9, t0, -179
                  andi         t4, s4, 1429
544:              sra          a5, s7, s0
                  auipc        t3, 899362
                  lui          s3, 792302
                  bge          a0, s0, 550f
                  srli         s5, t3, 31
                  bge          s11, s5, 560f
550:              bltu         s5, s6, 557f
                  srl          s4, a5, s5
                  sll          t3, t2, s3
                  sltu         a5, a5, t2
554:              xori         a5, gp, -696
                  bne          sp, s4, 568f
                  andi         s10, ra, 88
557:              nop
                  xor          ra, ra, t4
                  sltiu        a7, ra, 1252
560:              bltu         a7, s5, 579f
                  srai         s1, a7, 31
                  nop
                  ori          t3, s8, 1889
                  or           a2, t4, t1
                  beq          t1, gp, 570f
                  and          sp, s4, s2
                  auipc        s3, 61854
568:              and          s7, a7, s6
                  sll          s8, s6, s0
570:              slti         t2, a3, 753
                  and          t6, s7, a6
                  lui          a6, 488111
                  sub          s8, sp, s10
                  bne          zero, t2, 591f
                  bge          t3, ra, 586f
                  sltu         t2, s6, t3
                  srl          a5, s9, t1
                  or           s7, s1, zero
579:              and          s2, a0, a4
                  andi         a1, t3, 860
                  auipc        s0, 137554
                  bge          s4, t5, 590f
                  beq          s5, s7, 587f
                  sltiu        t2, s3, 1515
                  srli         s0, s2, 9
586:              add          s4, t2, a1
587:              sub          s3, s3, s2
                  slt          a7, t2, s9
                  srai         a0, t4, 29
590:              bne          s3, a6, 599f
591:              beq          sp, a7, 610f
                  beq          s11, a6, 606f
                  sra          a7, s0, sp
                  ori          s4, a2, -1771
                  auipc        s10, 868037
                  slt          s6, s10, s8
                  lui          a1, 144731
                  and          s4, s5, s11
599:              srli         a5, a0, 14
                  slli         s10, s2, 26
                  andi         a4, s2, -279
                  srai         s10, t4, 27
                  xori         s6, a7, -1121
                  bltu         s4, a6, 614f
                  sltu         s2, t4, a2
606:              srl          s1, a6, s6
                  srli         s5, s2, 13
                  beq          s6, a6, 611f
                  slt          a0, sp, s6
610:              srl          s4, s7, s5
611:              srl          a1, gp, t6
                  bne          t2, t5, 619f
                  bgeu         t0, t5, 616f
614:              andi         s9, s10, -1838
                  srai         t3, s1, 13
616:              xor          s3, a5, s7
                  srl          s0, s2, a6
                  sll          s8, a2, a1
619:              srl          a7, t0, ra
                  ori          s5, s7, 608
                  and          t4, s2, s9
                  nop
                  xori         a1, sp, -315
                  xor          a1, s4, s6
                  and          s3, s1, t6
                  sltu         a0, s5, a3
                  sll          t3, t4, s2
                  sll          a6, s7, t1
                  xor          a3, s2, a3
                  bgeu         a7, s2, 646f
                  nop
                  bltu         a7, s4, 647f
                  blt          t3, a4, 639f
                  bge          gp, s3, 647f
                  or           sp, a1, s7
                  sltiu        s7, s0, 1466
                  andi         s8, s3, -97
                  sltu         s2, gp, s1
639:              slli         gp, t4, 23
                  bne          s1, a0, 648f
                  bne          t0, t1, 646f
                  sub          a5, t2, a2
                  bne          s3, s6, 660f
                  bgeu         a6, a3, 663f
                  slt          s1, s11, t4
646:              srai         s3, ra, 27
647:              nop
648:              slt          s0, s5, s8
                  srli         gp, s6, 14
                  sltu         gp, a6, t4
                  sll          a4, a2, a5
                  bne          s10, t1, 654f
                  sub          sp, t0, a4
654:              xori         t6, s11, -1343
                  bge          a0, s5, 672f
                  sll          s9, s3, a0
                  xori         t4, s0, 133
                  bne          s7, s6, 678f
                  add          a4, s10, t2
660:              sll          t6, s8, a2
                  xor          gp, sp, s6
                  sll          sp, s6, gp
663:              sll          a7, a4, s5
                  ori          t4, t4, -690
                  bltu         s8, tp, 670f
                  xori         t4, t0, 1771
                  beq          zero, s6, 687f
                  slti         s2, a5, -1241
                  sub          s2, s7, t3
670:              xori         s2, a5, 472
                  add          a3, a4, s2
672:              beq          s3, t1, 691f
                  nop
                  sltu         a4, t4, a6
                  slt          t2, a1, t4
                  xor          t4, s10, s8
                  bltu         s1, a2, 697f
678:              bge          ra, t5, 685f
                  or           a1, t3, a5
                  nop
                  srli         a4, s4, 6
                  add          a6, zero, t0
                  srli         a3, s8, 30
                  slti         s7, sp, 1659
685:              beq          ra, zero, 690f
                  bge          s7, s8, 699f
687:              bne          a4, tp, 704f
                  xori         s3, a4, 1107
                  add          s10, s3, s11
690:              srli         s1, s7, 31
691:              sll          a0, t3, s0
                  srai         a3, s0, 0
                  lui          s1, 486561
                  sra          t4, a3, tp
                  auipc        s1, 25696
                  ori          t3, a1, 1953
697:              beq          a3, a0, 708f
                  lui          gp, 402850
699:              beq          a7, s5, 706f
                  bltu         t4, s4, 707f
                  xor          s7, t1, s3
                  slt          a5, tp, a0
                  add          t3, a2, tp
704:              slli         t3, s5, 29
                  bne          s4, tp, 708f
706:              and          a6, ra, a4
707:              sra          a0, s7, a5
708:              xori         a5, a2, 1364
                  auipc        s8, 995566
                  slti         s5, s2, 1167
                  srl          s4, t2, t6
                  blt          t2, a5, 717f
                  addi         a6, t0, 2000
                  bne          t4, a7, 725f
                  blt          a4, gp, 721f
                  sub          t4, zero, gp
717:              srl          s8, t1, a1
                  bltu         zero, a0, 722f
                  slti         s11, s11, -629
                  srli         tp, s1, 29
721:              blt          zero, s6, 734f
722:              sub          s0, gp, sp
                  srl          tp, t0, t0
                  bne          s4, s2, 744f
725:              sra          t6, a3, t5
                  srli         t2, ra, 6
                  xor          s6, a0, sp
                  add          s1, a6, a5
                  or           s8, ra, s6
                  bge          a2, t1, 735f
                  xor          s2, a1, t2
                  beq          s0, s10, 746f
                  andi         s7, zero, 1890
734:              bltu         s3, a2, 750f
735:              sub          a6, t1, sp
                  auipc        s0, 908836
                  and          s6, zero, s5
                  and          s4, t5, s0
                  sltu         t2, s0, s10
                  or           s1, zero, s1
                  sll          a4, s10, ra
                  auipc        tp, 625015
                  srai         a4, s6, 14
744:              beq          t0, t6, 755f
                  auipc        zero, 438506
746:              bne          a1, s8, 749f
                  xori         sp, s4, 1009
                  sltiu        s7, t0, -1352
749:              sra          s10, a1, s8
750:              addi         s1, a7, 1014
                  and          t3, a5, t2
                  andi         sp, s4, 113
                  sub          sp, s5, s11
                  auipc        s8, 575062
755:              add          s7, a3, s0
                  bgeu         t3, a0, 761f
                  srl          a4, s8, s7
                  blt          t3, t5, 767f
                  bge          s11, s4, 767f
                  bge          a7, s2, 762f
761:              sll          gp, a3, t2
762:              sra          ra, gp, a6
                  xor          a7, a2, a5
                  blt          s1, t3, 781f
                  add          zero, s1, a0
                  andi         s11, s0, 1567
767:              sltiu        s4, zero, -880
                  srl          s0, s11, gp
                  xori         s0, s1, 983
                  srli         a5, a6, 16
                  srli         s5, a7, 31
                  sra          s11, t2, t2
                  sltu         zero, s4, t5
                  sll          s0, s6, s11
                  xor          s0, t1, s1
                  and          s8, zero, t4
                  slt          s4, sp, s11
                  sltiu        s4, s6, -1893
                  addi         s3, t0, 2003
                  bgeu         a7, s5, 799f
781:              slli         s2, s4, 8
                  addi         s8, a7, 1143
                  xori         a5, t0, -1187
                  andi         s4, sp, 1043
                  srli         a0, t6, 14
                  blt          s10, s2, 799f
                  srli         a2, tp, 17
                  add          s6, gp, t4
                  andi         tp, a3, -548
                  addi         a0, s10, 1801
                  xori         ra, a2, 1948
                  sltu         zero, t2, s10
                  lui          t2, 825116
                  and          t3, a7, s7
                  blt          a1, s10, 815f
                  lui          a5, 930305
                  srli         s5, t2, 7
                  nop
799:              sra          ra, a7, t2
                  sltiu        s7, a6, 1920
                  or           a7, tp, a0
                  sltiu        a0, t6, 1421
                  bltu         t2, s8, 813f
                  slli         s4, a5, 25
                  xor          s2, t1, s9
                  lui          s11, 878344
                  sltiu        a2, a0, 1575
                  blt          s7, s11, 816f
                  srl          s6, s9, s2
                  sll          s10, s5, ra
                  sltiu        a5, s11, -319
                  xor          tp, t1, a6
813:              bltu         a6, a3, 830f
                  bltu         ra, t3, 829f
815:              slti         t6, gp, 651
816:              add          s11, ra, s0
                  bgeu         zero, gp, 836f
                  addi         s7, s8, -450
                  bne          s9, s4, 838f
                  bgeu         t6, a1, 837f
                  bge          s7, a1, 841f
                  srli         t4, t3, 8
                  add          sp, s9, s9
                  beq          a0, t1, 837f
                  slti         t3, a1, -338
                  bne          a1, a5, 831f
                  sltiu        s11, zero, 1260
                  addi         a7, a2, -1703
829:              lui          s2, 790289
830:              add          s8, t3, s8
831:              addi         a7, t0, 1524
                  xori         s5, a6, 808
                  bgeu         t6, t5, 841f
                  or           zero, s3, ra
                  srli         s1, s4, 22
836:              sltiu        t2, t4, 1103
837:              add          s0, s10, t0
838:              slli         s7, gp, 26
                  bne          s3, s7, 847f
                  beq          sp, ra, 853f
841:              lui          t2, 402390
                  auipc        s5, 688386
                  sra          gp, a0, t2
                  bne          s7, gp, 864f
                  addi         sp, a2, 749
                  srai         gp, s9, 17
847:              slti         a6, t3, 1070
                  blt          tp, t3, 850f
                  slli         a5, t2, 23
850:              sltiu        s4, a1, -319
                  srai         s0, a3, 31
                  nop
853:              srai         s6, a5, 13
                  add          a4, a1, s7
                  srl          t6, s3, a4
                  ori          a7, s9, 1116
                  or           a6, a2, a7
                  lui          s7, 1005800
                  sub          s5, sp, a4
                  add          a6, a7, a3
                  sltiu        sp, t0, -263
                  sra          s7, sp, t3
                  auipc        t6, 122275
864:              srai         a0, gp, 16
                  auipc        a3, 753017
                  srai         s5, s4, 9
                  slt          a1, zero, s0
                  xor          s1, tp, tp
                  blt          a5, t1, 886f
                  slt          t4, s11, a5
                  addi         s1, s11, 1366
                  bne          s9, a3, 876f
                  xor          a6, t4, t4
                  sub          s9, s1, a6
                  or           t6, t3, gp
876:              addi         a3, t1, 1439
                  ori          sp, s9, -988
                  slli         tp, a1, 8
                  auipc        t3, 406116
                  or           a3, a7, t0
                  beq          t4, sp, 887f
                  bge          a1, a3, 901f
                  nop
                  and          s3, t5, a0
                  and          s11, a6, a4
886:              andi         s5, a7, 1614
887:              or           s11, t3, a3
                  lui          gp, 425207
                  srai         s4, s6, 15
                  srli         a1, s9, 3
                  or           tp, tp, a6
                  xor          a1, a4, s5
                  xori         s10, s9, -1805
                  add          t3, s8, a4
                  slti         a4, tp, 1052
                  nop
                  srai         s6, a7, 28
                  blt          a7, s6, 918f
                  blt          a7, t3, 906f
                  xor          t4, s9, s5
901:              bge          s11, s0, 918f
                  addi         s6, s1, -1304
                  bltu         t6, a6, 914f
                  srli         s3, a1, 25
                  sub          s8, s1, s8
906:              srl          s1, s1, a2
                  bltu         gp, t6, 916f
                  xori         sp, s11, -1943
                  bgeu         gp, gp, 914f
                  sll          s6, a7, s11
                  auipc        zero, 860240
                  sltiu        tp, a4, 282
                  srai         s5, sp, 11
914:              add          a4, a6, s10
                  nop
916:              bne          a6, tp, 926f
                  bltu         a5, s1, 936f
918:              srl          zero, s3, s11
                  srli         a4, s1, 18
                  bltu         s11, t5, 931f
                  lui          a0, 598673
                  srli         s1, s0, 22
                  sll          s8, s3, s0
                  sub          a0, a4, tp
                  andi         ra, t3, -206
926:              nop
                  sll          a4, ra, gp
                  nop
                  addi         zero, s2, 1259
                  ori          tp, a1, 96
931:              and          a3, s8, s1
                  nop
                  srli         s1, s0, 24
                  slt          sp, t4, s5
                  xor          s3, t3, t4
936:              xori         s0, t5, 295
                  sltu         s9, t5, t4
                  addi         s8, s0, -942
                  bne          s5, a0, 946f
                  slli         s9, s6, 27
                  xori         a2, t5, 512
                  add          t2, t4, t0
                  sll          a5, s4, s1
                  bgeu         a2, s9, 959f
                  xor          s3, s9, a4
946:              bge          s5, t5, 963f
                  add          a7, t5, s8
                  auipc        s7, 1011914
                  xor          s11, t3, a5
                  srai         a0, t4, 25
                  xori         s11, s11, 1447
                  slti         gp, s5, 1067
                  slli         a7, t5, 12
                  sll          a2, t5, s7
                  srl          a5, zero, s3
                  add          a1, s8, zero
                  bgeu         t0, a4, 960f
                  slli         tp, a0, 20
959:              and          a7, a5, a3
960:              sub          a5, t2, s9
                  bgeu         t2, t1, 980f
                  bltu         a0, s1, 978f
963:              srl          s11, a3, a2
                  or           sp, a3, sp
                  xori         ra, t4, 1935
                  beq          t2, s6, 980f
                  auipc        t2, 723923
                  xori         s10, s5, 627
                  lui          t2, 241535
                  or           t2, s0, s8
                  sltiu        s11, t0, 322
                  add          zero, s4, s9
                  ori          s3, s7, 1893
                  beq          zero, gp, 994f
                  addi         a6, s2, -1222
                  andi         s3, sp, -2014
                  bgeu         zero, zero, 980f
978:              add          sp, a0, s10
                  addi         sp, t2, -1784
980:              sltiu        s6, a4, -387
                  auipc        a4, 649870
                  blt          t5, a2, 987f
                  bgeu         a0, s8, 994f
                  nop
                  srli         s5, s4, 6
                  bge          s4, t4, 1005f
987:              srl          t2, s10, s2
                  sub          a0, s0, gp
                  add          ra, a4, a7
                  slti         s5, a0, -726
                  bge          gp, ra, 997f
                  srai         t4, a6, 24
                  bne          a0, tp, 1004f
994:              ori          s10, t1, 1254
                  slli         s10, s1, 24
                  srai         s2, zero, 3
997:              srai         a7, t5, 9
                  xori         s9, ra, -1664
                  bne          t4, zero, 1019f
                  bge          t6, s4, 1019f
                  slli         a2, t4, 25
                  sltu         a4, a4, s2
                  add          a3, s6, sp
1004:             xori         s1, t3, 2033
1005:             lui          ra, 859233
                  srai         s3, a5, 3
                  bltu         a7, t0, 1022f
                  bge          tp, s4, 1018f
                  sra          t6, s10, s3
                  ori          s10, s11, -1669
                  sub          zero, t2, s9
                  lui          s2, 205529
                  sra          t6, s5, s0
                  bgeu         s10, t4, 1034f
                  sra          s3, t2, s1
                  srl          tp, a7, s2
                  and          s6, s8, s5
1018:             slti         s0, s3, -756
1019:             add          s10, a5, a4
                  slti         s0, a6, 1574
                  beq          a5, a6, 1028f
1022:             srl          gp, s3, s4
                  slt          s7, s1, s10
                  addi         a7, s8, -42
                  lui          a7, 867069
                  xori         s4, s4, 1089
                  blt          s4, a1, 1032f
1028:             xor          a5, a2, s11
                  addi         s9, s11, 1201
                  addi         tp, t0, -1633
                  sltu         t4, a0, gp
1032:             slti         s2, s10, -1347
                  bgeu         tp, a5, 1040f
1034:             beq          s11, t2, 1053f
                  sra          tp, s11, s5
                  sll          a7, s2, s4
                  andi         s1, a6, 288
                  srl          s0, ra, s1
                  slt          a7, s3, t2
1040:             slti         sp, s6, 605
                  blt          s0, s3, 1049f
                  bne          t2, t6, 1059f
                  sub          a5, s4, s8
                  slli         t4, s7, 26
                  slli         s11, ra, 7
                  addi         s10, s9, -1876
                  and          a1, s10, s11
                  auipc        s9, 1005330
1049:             bge          s4, s11, 1052f
                  srli         sp, s2, 29
                  slti         gp, s0, -1360
1052:             xori         s2, t2, -1924
1053:             srai         zero, a2, 26
                  lui          s11, 875417
                  bltu         ra, s4, 1064f
                  bltu         s5, a3, 1073f
                  srai         s2, ra, 6
                  beq          a6, s1, 1072f
1059:             slti         s11, s10, 432
                  nop
                  srai         zero, s10, 21
                  sltu         a1, s2, a0
                  sltu         zero, a2, a2
1064:             srai         s3, a5, 17
                  srl          a4, s8, tp
                  and          sp, t4, a1
                  srl          a5, s11, s11
                  sltiu        a0, t1, 966
                  sltiu        a1, gp, -341
                  srli         s10, a7, 20
                  bltu         s11, s1, 1079f
1072:             add          tp, t4, gp
1073:             srli         t4, s4, 8
                  srai         a0, a4, 17
                  beq          tp, t0, 1080f
                  auipc        tp, 540428
                  sll          sp, gp, gp
                  sub          a6, s1, t6
1079:             and          tp, s3, t3
                  la           a3, region_1+1220 #start riscv_load_store_rand_instr_stream_4
                  sub          s8, a1, zero
                  lb           t2, 523(a3)
                  slt          a1, sp, s5
                  sll          s6, a2, sp
                  xor          sp, t4, t2
                  lb           a5, -577(a3)
                  slt          s3, t2, a1
                  sll          s9, s8, s10
                  lhu          s7, 676(a3)
                  ori          tp, t4, 1512
                  ori          a5, s1, 1312
                  andi         tp, a3, 1520
                  sra          zero, a4, a0
                  lb           s0, -255(a3)
                  srl          s7, a1, ra
                  xori         s0, s8, -163
                  sb           a0, -901(a3)
                  sll          a1, t4, s5
                  or           a6, t0, t5
                  lbu          a2, -937(a3)
                  lui          ra, 112765
                  lb           s10, -529(a3)
                  lbu          t2, -166(a3)
                  and          s2, t2, s3
                  or           s3, t3, gp
                  sb           a0, 744(a3)
                  slt          a6, t2, s1
                  slti         s0, t0, -1902
                  lb           s8, -20(a3)
                  lb           a5, -753(a3)
                  add          sp, a3, t1
                  lbu          a7, 119(a3)
                  lui          a2, 415255
                  lbu          s8, -835(a3)
                  xor          a1, a2, s9
                  addi         t6, a0, 7
                  sra          s5, a4, sp
                  and          t4, t5, tp
                  and          s7, a4, a2
                  xori         s10, a0, -803
                  xor          s0, t1, s4
                  lui          s3, 140953
                  lh           t6, -180(a3)
                  lh           s10, 546(a3) #end riscv_load_store_rand_instr_stream_4
1080:             ori          a2, s7, 613
                  srli         a1, sp, 12
                  sra          s6, zero, a6
                  srai         a7, a5, 29
                  addi         s1, ra, 1566
                  sub          s0, a1, a0
                  bne          t4, t4, 1102f
                  andi         s1, s1, -1322
                  slt          t2, t3, s1
                  sltu         gp, s5, a6
                  srai         zero, s3, 21
                  slt          zero, t3, s1
                  or           gp, ra, a5
                  ori          gp, a7, 1358
                  slti         a5, a7, -803
                  sra          a1, s9, t0
                  blt          t6, t6, 1109f
                  or           t2, s9, t5
                  blt          t0, zero, 1103f
                  xor          s11, a4, s4
                  add          s9, s2, a5
                  blt          sp, t2, 1105f
1102:             slti         s9, s5, -717
1103:             bltu         s8, t4, 1123f
                  sltu         a4, t2, a6
1105:             bne          s11, s3, 1122f
                  sra          s1, s6, t0
                  or           s11, gp, t5
                  slti         sp, s8, 1709
1109:             nop
                  sra          t6, s7, s10
                  and          a1, t2, t5
                  add          ra, s11, s5
                  bge          s2, gp, 1116f
                  nop
                  sll          tp, s1, tp
1116:             auipc        s8, 27558
                  bge          a3, sp, 1130f
                  srl          t3, s10, s3
                  sltiu        ra, s5, 801
                  bge          s2, s5, 1122f
                  xor          s6, zero, s11
1122:             sub          a6, t5, s7
1123:             bne          t5, a7, 1142f
                  slti         a4, t1, -1739
                  srai         s11, t4, 31
                  srli         s10, s7, 16
                  bgeu         tp, s4, 1147f
                  xor          s5, t6, s2
                  srai         t3, tp, 2
1130:             sub          s5, t2, s1
                  srl          s3, ra, s6
                  and          tp, a0, gp
                  xori         tp, gp, -111
                  add          sp, t6, a1
                  sltu         a3, sp, a1
                  slti         t4, s3, -338
                  sub          s8, t4, s6
                  xor          s1, t1, t3
                  add          t2, s0, s1
                  srli         s6, a1, 2
                  sll          s5, a2, gp
1142:             srl          t4, s11, a2
                  ori          a1, sp, 763
                  bgeu         a1, t1, 1164f
                  blt          a7, s1, 1156f
                  ori          zero, s5, 858
1147:             bgeu         s5, s11, 1164f
                  lui          zero, 136
                  andi         sp, s7, 1397
                  nop
                  and          s6, ra, t4
                  auipc        s0, 125240
                  srai         tp, t2, 30
                  slt          a7, zero, a2
                  bge          s0, s7, 1168f
1156:             andi         s8, t5, 988
                  sll          a7, gp, s8
                  sltiu        zero, zero, 1919
                  bne          t4, s7, 1162f
                  slt          ra, s6, ra
                  beq          ra, s5, 1169f
1162:             xor          s7, s10, t6
                  beq          a1, s8, 1169f
1164:             bltu         s9, s5, 1173f
                  xori         a7, s5, -481
                  bne          a2, zero, 1181f
                  slti         s3, a1, -558
1168:             srli         t4, t4, 9
1169:             srli         a2, a1, 7
                  xor          s3, t4, a7
                  nop
                  slli         s5, s4, 26
1173:             auipc        a5, 955665
                  addi         s6, s4, -1572
                  srli         s4, sp, 14
                  srai         a3, sp, 2
                  sltiu        s6, s10, -1259
                  auipc        a0, 204873
                  srl          a5, a6, t3
                  auipc        s3, 352609
1181:             bltu         t2, sp, 1200f
                  addi         s8, s8, 936
                  xori         t6, gp, 1744
                  xor          a6, zero, t0
                  blt          s7, t3, 1205f
                  srai         t6, s6, 3
                  add          tp, tp, a2
                  add          t2, t0, s7
                  slti         sp, s0, 13
                  srl          s10, s1, t3
                  sra          s11, s0, s1
                  and          t3, s10, tp
                  sra          s3, gp, ra
                  srai         a6, s6, 17
                  add          a0, s0, s9
                  bgeu         sp, s10, 1204f
                  beq          s5, t1, 1214f
                  sltiu        s5, t1, -1770
                  nop
1200:             srai         t6, s7, 11
                  bgeu         a0, s3, 1206f
                  sll          s1, s10, t4
                  blt          s10, s7, 1213f
1204:             blt          a0, t4, 1207f
1205:             andi         s10, t5, -399
1206:             bge          s1, tp, 1223f
1207:             xor          a4, t2, sp
                  xor          s0, a4, s3
                  sltu         a5, s4, a2
                  bgeu         s9, s0, 1215f
                  sra          s0, a6, tp
                  andi         t4, s11, 1535
1213:             xori         s2, t5, 61
1214:             bgeu         s6, a3, 1221f
1215:             bne          a3, a5, 1217f
                  xor          gp, gp, s1
1217:             beq          t3, s7, 1222f
                  sub          a5, s10, t1
                  slt          s6, t3, t2
                  and          t6, a3, s9
1221:             bge          t0, s8, 1228f
1222:             bge          t5, s10, 1233f
1223:             addi         s9, t1, -1661
                  sltu         s0, a4, a1
                  srl          zero, t5, t6
                  slti         s9, gp, 29
                  bgeu         tp, s1, 1246f
1228:             sra          a7, t6, s6
                  nop
                  or           s6, t4, a7
                  sltiu        t2, s5, -617
                  slti         s3, s3, -1913
1233:             srai         zero, a1, 22
                  srai         gp, s10, 11
                  andi         s2, s1, 1171
                  sll          s4, ra, a2
                  or           a2, ra, t0
                  add          t4, t6, tp
                  slli         s5, a2, 23
                  sub          a2, s9, a5
                  or           s8, s1, a0
                  slt          t3, s8, s11
                  bgeu         ra, s9, 1247f
                  beq          t0, t2, 1258f
                  sll          a5, s6, a7
1246:             bne          s3, s4, 1262f
1247:             sltiu        sp, s4, 1879
                  and          s0, s8, s10
                  bne          t1, a4, 1262f
                  add          s10, a6, t5
                  slti         s10, a2, -1290
                  bltu         s7, s6, 1261f
                  slt          s5, t0, s2
                  sltiu        gp, a2, 871
                  andi         s3, a2, -949
                  srl          gp, s11, t0
                  sub          t2, a6, s3
1258:             sltiu        zero, a6, 1441
                  bge          s7, t1, 1266f
                  slt          s1, s8, s2
1261:             bltu         t6, s10, 1264f
1262:             xori         tp, s2, 1969
                  ori          a7, s0, 601
1264:             bltu         a6, a2, 1283f
                  sltu         s4, sp, tp
1266:             nop
                  beq          tp, a3, 1272f
                  auipc        t3, 132947
                  bne          t3, zero, 1277f
                  srl          s6, s6, s2
                  nop
1272:             sll          s5, a3, t2
                  add          s2, a6, sp
                  bgeu         a6, s7, 1289f
                  beq          t5, a4, 1283f
                  add          s11, gp, zero
1277:             beq          gp, s5, 1280f
                  beq          s8, sp, 1297f
                  or           t2, s0, a2
1280:             srai         a4, a1, 9
                  sltu         s7, s10, t2
                  slt          ra, gp, s7
1283:             bltu         a7, sp, 1300f
                  bgeu         s9, s9, 1303f
                  sll          tp, a2, s3
                  sra          t4, sp, t1
                  slti         a6, t6, 1320
                  slti         s3, t5, -655
1289:             beq          s4, gp, 1306f
                  auipc        tp, 142269
                  beq          a0, s8, 1297f
                  xori         s0, s3, 1805
                  bge          s7, tp, 1306f
                  slti         t6, t4, -227
                  andi         t2, a3, 1281
                  sltiu        s10, s7, -642
1297:             slt          a1, zero, s7
                  addi         s6, s4, 1696
                  addi         s5, s6, 247
1300:             bltu         tp, s1, 1304f
                  xor          zero, s7, a7
                  sra          a3, t5, a2
1303:             slli         a0, a4, 2
1304:             bltu         a3, zero, 1306f
                  sra          a6, t4, sp
1306:             beq          tp, t1, 1319f
                  sltu         sp, a0, t0
                  sll          t3, t3, a1
                  andi         a6, gp, -1121
                  bne          s5, t2, 1326f
                  blt          t3, a6, 1322f
                  srli         s0, a5, 21
                  slt          s4, a6, s4
                  beq          a4, a5, 1334f
                  lui          sp, 932059
                  slli         s9, a1, 22
                  add          s4, s0, t5
                  bne          s10, a3, 1328f
1319:             ori          tp, s10, -259
                  sll          sp, a3, s9
                  sra          s2, ra, a4
1322:             sltiu        zero, s0, -109
                  srli         t4, sp, 1
                  sra          tp, s4, a2
                  xori         s6, s5, 1588
1326:             bge          tp, s8, 1333f
                  and          s2, a2, s7
1328:             sub          gp, a5, s2
                  bne          s9, a1, 1349f
                  bne          s9, gp, 1335f
                  andi         t2, s11, -98
                  slli         t6, a1, 12
1333:             and          a6, a3, a1
1334:             srl          t4, a1, s0
1335:             bne          s1, t6, 1346f
                  add          sp, s3, a1
                  srli         s0, s7, 18
                  bne          a6, zero, 1355f
                  or           s4, gp, s1
                  sltu         s8, a0, a4
                  sll          t2, a7, ra
                  or           t3, t1, t1
                  sll          s5, s9, a2
                  bne          s11, a5, 1364f
                  xor          s1, s1, s10
1346:             bne          sp, s2, 1360f
                  slt          s3, s5, t2
                  bgeu         gp, a0, 1353f
1349:             srai         a4, a2, 2
                  bgeu         s8, a6, 1365f
                  or           a4, s1, s6
                  blt          a5, a5, 1372f
1353:             add          t6, s1, a7
                  sub          ra, s5, a5
1355:             bgeu         s10, a1, 1363f
                  blt          s7, a1, 1361f
                  slti         a2, s6, 1314
                  srli         a4, a0, 27
                  auipc        a6, 1014298
1360:             bge          t0, t5, 1380f
1361:             blt          a7, s0, 1381f
                  sra          tp, s10, s5
1363:             addi         a1, a5, -1135
1364:             add          a7, s3, a3
1365:             slt          s3, a3, s3
                  sll          t6, s1, a6
                  bge          t2, t5, 1374f
                  andi         s10, s5, 1650
                  sll          tp, s4, s0
                  bltu         t1, a6, 1375f
                  srai         a3, t5, 23
1372:             bgeu         a1, gp, 1375f
                  addi         s2, t0, 1333
1374:             srli         t4, s5, 23
1375:             sltiu        a6, s8, 1557
                  sltu         a6, ra, s6
                  slli         t3, a6, 27
                  bne          s1, t5, 1391f
                  andi         a2, a4, -647
1380:             sub          a2, a0, a3
1381:             sltu         a6, tp, sp
                  sub          t4, a5, gp
                  slti         sp, t1, 634
                  sltiu        zero, s9, 341
                  and          s4, t0, a2
                  srai         a6, s7, 1
                  sll          s11, s0, t1
                  bge          a6, t1, 1396f
                  andi         s9, s6, 687
                  sll          gp, s4, a5
1391:             slti         s8, t4, 118
                  and          s2, a5, s2
                  beq          t0, a4, 1410f
                  auipc        s2, 186007
                  xor          a7, s8, tp
1396:             beq          a0, ra, 1399f
                  sll          s11, s9, t3
                  srai         a5, a7, 21
1399:             srli         a1, s4, 5
                  xor          t6, gp, t4
                  auipc        s0, 38889
                  bltu         s3, t3, 1409f
                  or           a3, a3, s8
                  sub          s4, sp, ra
                  add          t3, a5, s11
                  sra          s0, s2, zero
                  and          a0, a4, a7
                  srai         s1, t1, 11
1409:             bne          tp, zero, 1420f
1410:             slli         s5, t2, 2
                  and          s8, a7, t1
                  lui          t2, 188952
                  srl          a6, t1, a3
                  or           s7, sp, s10
                  xori         tp, s10, -1639
                  bgeu         t0, a4, 1427f
                  sltiu        a5, t3, -2017
                  sub          a4, s2, s6
                  sltu         a4, s5, s7
1420:             sltiu        a2, s7, 991
                  bne          t6, t2, 1426f
                  auipc        t3, 153566
                  slti         a1, s7, -1710
                  sra          s10, a1, s9
                  sltiu        s0, s0, -1368
1426:             slt          s8, s2, a1
1427:             bge          s1, s5, 1429f
                  sltiu        s3, s1, -1988
1429:             add          a3, s4, s2
                  ori          s0, s0, -1873
                  bge          s1, s9, 1435f
                  blt          s0, a0, 1451f
                  slli         t4, s4, 28
                  srl          s4, s10, s3
1435:             lui          a2, 388842
                  srl          s7, s8, a3
                  add          a7, a5, sp
                  addi         s11, a2, 329
                  xor          t2, t3, tp
                  bne          tp, a3, 1457f
                  slli         a1, s1, 19
                  bne          s6, t0, 1452f
                  bltu         a0, s9, 1456f
                  blt          ra, t4, 1463f
                  ori          s6, t4, 360
                  lui          ra, 768993
                  andi         a5, s10, 1828
                  lui          a7, 943552
                  beq          t2, t3, 1458f
                  andi         t4, ra, 1385
1451:             auipc        s3, 989858
1452:             nop
                  blt          tp, a4, 1467f
                  and          t3, t4, s11
                  andi         t3, s3, 1967
1456:             sra          zero, a5, sp
1457:             lui          a2, 1003631
1458:             addi         a7, t1, 1446
                  slli         s0, gp, 5
                  blt          s0, t5, 1466f
                  lui          s2, 79273
                  nop
1463:             srai         s11, s2, 8
                  bgeu         s4, s11, 1483f
                  and          gp, a3, ra
1466:             lui          ra, 742180
1467:             and          a2, s7, s6
                  or           t6, s0, t0
                  sltiu        a5, s7, 18
                  bgeu         s10, ra, 1486f
                  add          s0, a4, a2
                  auipc        s11, 534872
                  srli         s7, s5, 4
                  xor          sp, s6, s5
                  and          tp, s8, a3
                  nop
                  sra          a2, a4, s10
                  and          a4, s4, s1
                  srai         t3, a0, 5
                  or           s6, zero, t4
                  ori          s2, ra, 243
                  slt          gp, sp, s4
1483:             slti         t4, a1, 1222
                  addi         s11, gp, 401
                  addi         t4, a1, 1632
1486:             xor          a6, s7, ra
                  srli         a1, s4, 9
                  sra          a3, t3, a7
                  srl          s0, s4, t4
                  sll          zero, s2, s5
                  addi         s1, s9, -710
                  bltu         gp, s11, 1497f
                  beq          zero, a4, 1496f
                  srai         t4, a0, 11
                  srli         t6, t0, 7
1496:             auipc        s4, 12554
1497:             sltiu        ra, s1, 416
                  lw           s3, 4(t1)
                  addi         t1, t1, 64
                  add          s4, s10, a7
                  sll          s5, s11, s1
                  andi         t6, a5, 2037
                  slt          t2, t1, a2
2120:             addi x21, x19, 0
2120:             jalr x21, x21, 0
sub_2:            addi         t1, t1, -52
                  sltiu        a5, a3, -772
                  nop
                  xor          a6, s9, s9
                  sra          a3, a7, a3
                  addi         a7, t1, 726
                  sw           s3, 4(t1)
                  sll          t6, s0, s4
                  auipc        t6, 844788
                  srli         s1, ra, 13
                  slli         s8, s5, 16
                  la           a4, region_0+881 #start riscv_load_store_rand_instr_stream_4
                  sub          sp, s4, s10
                  lui          zero, 103934
                  slti         sp, a4, -564
                  lbu          s8, -765(a4)
                  lui          tp, 128412
                  lb           t3, 696(a4)
                  lbu          a0, 252(a4)
                  slti         s3, t6, 1993
                  ori          a5, a3, -138
                  lbu          s5, 353(a4)
                  lb           s10, 308(a4)
                  lh           s1, 497(a4)
                  and          ra, a4, s10
                  slti         a0, a6, -1298
                  lb           t6, 210(a4)
                  addi         s4, s0, 479
                  add          zero, s6, zero
                  sra          t4, s11, a3
                  slti         a1, t0, 1191
                  lbu          zero, 112(a4)
                  add          s5, a0, s8
                  sh           a3, -73(a4)
                  sb           a7, 194(a4)
                  lb           a2, 617(a4)
                  slli         s6, s4, 12
                  xori         s3, sp, -339
                  xor          ra, t5, tp
                  sltiu        a7, s7, -2019
                  ori          s9, t2, -1896
                  srli         s8, a6, 21
                  sll          s2, t6, s0
                  sll          s5, zero, a1
                  slli         t4, t1, 0
                  sb           sp, -548(a4)
                  sll          s9, s5, t0
                  sb           s0, -721(a4)
                  or           ra, t3, a3
                  sb           s6, 776(a4)
                  lbu          s1, 921(a4)
                  sb           t5, 180(a4) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_0+1950 #start riscv_load_store_rand_instr_stream_5
                  or           a2, a5, a4
                  add          zero, a7, s3
                  lb           s9, 14(sp)
                  lui          s3, 1018042
                  auipc        s6, 264364
                  lb           s10, -3(sp)
                  lbu          t6, 11(sp)
                  slli         s8, t3, 19
                  lbu          s10, 7(sp)
                  xori         t4, s9, -1434
                  sltu         a2, s3, a2
                  lh           t6, 0(sp)
                  slli         a5, a7, 7
                  lui          tp, 81377
                  or           a3, s4, t3
                  lb           s10, 16(sp)
                  srai         s10, s1, 0
                  xori         ra, s6, -1395
                  lui          zero, 231622
                  nop
                  slt          t2, zero, s10
                  sltiu        s0, s1, -1776
                  lb           tp, -15(sp)
                  sltu         s1, t1, zero
                  sltu         s5, s2, s10
                  srai         s6, s5, 21
                  addi         s11, a4, 140
                  sb           s6, 2(sp)
                  sb           t3, -11(sp)
                  sra          zero, s0, s9
                  sb           s10, 8(sp)
                  and          a0, zero, s3
                  sll          s3, s1, s5
                  srai         a2, t4, 11
                  sra          a3, tp, s5
                  sll          ra, s3, a1
                  sh           s1, -10(sp)
                  lui          s8, 650185
                  lbu          gp, 10(sp) #end riscv_load_store_rand_instr_stream_5
                  la           s1, region_0+1697 #start riscv_load_store_rand_instr_stream_3
                  sra          s3, a7, a0
                  sb           gp, -156(s1)
                  srli         t3, s11, 18
                  ori          s5, t4, -1485
                  add          s6, a6, a3
                  ori          ra, a1, -1583
                  lh           s5, -39(s1)
                  sw           a0, 131(s1)
                  lbu          tp, 122(s1)
                  andi         a6, t2, 1317
                  sb           gp, 80(s1)
                  lb           s0, -237(s1)
                  lb           s9, -194(s1)
                  sb           t2, -194(s1)
                  andi         zero, s3, 916
                  sw           ra, -81(s1)
                  sb           s1, -173(s1)
                  auipc        a4, 388244
                  sh           s6, 93(s1)
                  lui          sp, 1034155
                  lb           a1, 94(s1)
                  lui          a3, 122685
                  ori          a0, a4, 1122
                  lbu          s10, 229(s1)
                  addi         tp, a7, -715
                  lb           s11, -26(s1)
                  sb           t6, -146(s1)
                  sll          s5, s10, s10
                  lh           s8, -225(s1)
                  lb           gp, -164(s1)
                  sh           s5, -37(s1)
                  nop
                  add          t6, t4, t0
                  sh           a0, -249(s1)
                  sra          s6, s0, t3
                  srli         sp, s1, 11
                  lbu          s7, -42(s1)
                  lbu          t2, 222(s1)
                  slti         a6, s8, -351
                  sb           s6, -227(s1)
                  slt          zero, t1, s4
                  and          t3, sp, ra
                  lb           s5, -157(s1)
                  srai         sp, s3, 15
                  sub          a1, t2, a2
                  lb           s5, 113(s1)
                  and          s7, s0, a6
                  slti         s11, gp, 835
                  srl          gp, s5, s10
                  nop
                  lb           tp, 86(s1)
                  nop
                  slli         s5, tp, 1
                  sltu         zero, s6, s8
                  or           a3, s10, s8
                  lb           s3, 46(s1)
                  sb           sp, -151(s1) #end riscv_load_store_rand_instr_stream_3
                  srli         s7, a3, 3
                  srli         a3, gp, 14
                  sltiu        zero, a7, 1189
                  bgeu         t5, s2, 18f
                  sll          zero, a5, s8
                  andi         a0, t2, 1227
                  or           a3, a5, t4
                  xor          a0, gp, s6
                  auipc        s2, 993405
                  bgeu         a5, s7, 13f
                  and          a2, a3, s6
                  slt          tp, s1, t5
                  add          sp, t1, a7
13:               sltu         s5, s1, gp
                  lui          ra, 46666
                  xori         tp, a7, -738
                  srai         zero, t0, 15
                  ori          s9, a4, -660
18:               or           s5, s5, s1
                  add          s0, t5, s3
                  or           s10, a7, t3
                  bltu         a1, s0, 22f
22:               srl          s4, t2, s8
                  auipc        tp, 1002675
                  and          t6, s7, t0
                  bltu         a3, s8, 28f
                  sra          s1, s0, ra
                  sltu         s4, t5, a3
28:               andi         a4, a1, 1846
                  nop
                  sltu         a1, t4, s10
                  sub          s8, t3, a5
                  sll          s5, a4, s0
                  sub          a2, sp, t6
                  bge          a4, t6, 35f
35:               sll          a6, a1, t5
                  xor          a2, sp, tp
                  sll          s1, t0, s11
                  bgeu         s11, s0, 47f
                  bne          a2, s0, 54f
                  slti         tp, s6, -1281
                  slt          s9, gp, a0
                  sub          s3, zero, s3
                  bgeu         s8, a3, 49f
                  andi         s3, gp, -637
                  slti         s8, a0, -1601
                  xor          a1, s4, ra
47:               beq          a2, t3, 50f
                  sltiu        s5, ra, -684
49:               sub          t3, t6, t2
50:               bltu         zero, t2, 54f
                  beq          s6, s7, 66f
                  or           tp, a2, sp
                  sltiu        s2, a1, 357
54:               sll          s10, zero, gp
                  or           t6, s3, s8
                  sub          a1, s4, s8
                  sra          s5, a5, t2
                  xori         s4, t5, 338
                  and          s7, s10, s2
                  slt          s8, t5, s10
                  bne          a4, a6, 72f
                  ori          s4, t4, 1629
                  or           s1, a7, t4
                  bgeu         sp, a2, 76f
                  xor          s0, sp, a1
66:               srli         tp, s9, 30
                  beq          s7, s8, 69f
                  lui          a0, 197141
69:               slli         a4, s8, 18
                  andi         zero, a0, 724
                  srli         tp, a6, 11
72:               add          a4, a5, tp
                  srl          s9, gp, s9
                  ori          s1, a2, 133
                  nop
76:               sra          zero, s6, a4
                  sub          t6, ra, a0
                  addi         s1, a6, 429
                  or           t3, a6, t0
                  sra          a6, s8, ra
                  sub          a0, t5, s0
                  slt          sp, t5, a3
                  auipc        a0, 777595
                  sltiu        a1, s10, 548
                  and          sp, s9, s11
                  and          t4, t5, s3
                  nop
                  lui          s9, 30196
                  bltu         t2, t3, 102f
                  beq          t3, s3, 91f
91:               add          s4, s11, a4
                  xori         t4, t6, -470
                  add          s11, s3, s7
                  slti         a2, s4, -352
                  nop
                  add          s0, a6, s3
                  sra          ra, s11, a4
                  srl          a1, s5, zero
                  sltiu        t6, s6, -1846
                  srl          ra, s10, s1
                  sra          s11, a1, t5
102:              bne          s5, t4, 122f
                  andi         s8, t4, -89
                  sub          a0, s11, s2
                  bne          s5, t2, 107f
                  sra          s5, tp, a1
107:              beq          s9, t1, 110f
                  add          a5, tp, s0
                  addi         s0, ra, -811
110:              beq          ra, t6, 118f
                  srli         s5, a1, 15
                  addi         t6, a5, 998
                  sll          s1, a6, s7
                  srli         t2, a5, 6
                  andi         a1, a7, -824
                  lui          a3, 429744
                  slti         s2, t1, 1464
118:              slli         a3, tp, 11
                  srl          s4, a4, zero
                  slli         t6, ra, 30
                  beq          t5, s11, 136f
122:              andi         t4, t4, 1284
                  or           s1, t6, s3
                  srli         s8, zero, 12
                  xori         gp, t6, 1388
                  nop
                  sra          a0, a2, s1
                  bge          s4, t3, 142f
                  bne          tp, a5, 143f
                  auipc        s3, 372246
                  slti         a5, s7, -1376
                  addi         s2, s6, 458
                  bge          s4, s9, 138f
                  slti         zero, gp, -1738
                  auipc        gp, 343263
136:              sub          t3, s6, a6
                  bge          ra, s5, 145f
138:              or           tp, a7, sp
                  bge          t0, s11, 143f
                  add          s7, t3, t6
                  auipc        s6, 193090
142:              andi         zero, s5, 1997
143:              bgeu         a6, a5, 150f
                  bltu         s8, t6, 148f
145:              sra          s3, a2, zero
                  srai         a0, t0, 18
                  and          a7, s9, a3
148:              bltu         t1, t0, 161f
                  auipc        a0, 133567
150:              sra          t4, ra, s10
                  beq          a5, t0, 157f
                  beq          a4, t4, 154f
                  bne          sp, sp, 156f
154:              sll          s5, t5, sp
                  bge          t2, ra, 169f
156:              sltu         a1, s1, s3
157:              bge          t3, a0, 161f
                  xor          s1, s9, tp
                  sltu         s0, t4, sp
                  sltiu        s0, s5, 1216
161:              blt          gp, s3, 163f
                  slli         a3, s10, 5
163:              xori         s6, sp, -708
                  bltu         s8, a2, 177f
                  blt          t4, s0, 180f
                  andi         s9, t0, -78
                  blt          a0, s4, 175f
                  sub          s5, s11, zero
169:              xori         s10, s1, -1202
                  addi         a1, tp, 428
                  slli         a3, t2, 15
                  bge          s4, a7, 173f
173:              bge          s0, a3, 174f
174:              srai         a7, t3, 27
175:              bge          s9, s7, 186f
                  addi         a7, t1, -877
177:              slli         a6, s6, 3
                  slli         sp, sp, 2
                  bltu         s8, s1, 180f
180:              sra          s11, t4, s8
                  add          s0, s6, s10
                  ori          zero, t1, -1613
                  srli         a1, s2, 16
                  sra          ra, tp, t4
                  or           t2, s11, s11
186:              andi         zero, s6, 566
                  auipc        t6, 914101
                  beq          a2, a1, 201f
                  auipc        a4, 928919
                  xor          s5, s8, a6
                  sub          s2, a3, a2
                  slt          s5, s4, a6
                  sub          s8, gp, t0
                  xor          a5, a7, s5
                  slli         s1, s9, 8
                  ori          t2, s8, -1018
                  sub          t3, s0, a5
                  blt          s7, tp, 213f
                  and          a5, s9, t1
                  sll          s4, s2, s0
201:              slt          s10, t2, t0
                  bgeu         gp, sp, 210f
                  auipc        a4, 584564
                  srl          a2, s5, s7
                  xor          s3, t3, a3
                  lui          a6, 517488
                  auipc        s6, 194670
                  ori          s2, t2, 568
                  slt          s2, tp, tp
210:              srai         s10, tp, 31
                  sub          s2, s4, s9
                  sltiu        a1, t1, -1359
213:              bge          s1, t5, 233f
                  lui          a6, 137409
                  slt          s9, a4, t4
                  sra          s6, s6, a2
                  addi         s5, s11, -1087
                  add          a6, tp, t5
                  bltu         s1, s4, 222f
                  addi         s5, a6, -392
                  bne          s3, s6, 233f
222:              xor          a3, s11, s8
                  sltiu        s1, s3, -1741
                  slli         s11, ra, 15
                  nop
                  add          t2, s9, sp
                  sub          s2, s2, t3
                  xor          s6, t4, s6
                  xor          t3, a5, tp
                  bne          a3, a2, 236f
                  xor          t3, a0, a0
                  addi         ra, t5, 1687
233:              bge          sp, s5, 238f
                  xori         tp, s1, -1946
                  andi         tp, s8, -1932
236:              nop
                  srai         gp, ra, 19
238:              beq          a5, s10, 252f
                  and          a0, s7, s2
                  sll          t2, s5, s7
                  xori         s6, t3, 255
                  slt          sp, s11, ra
                  srai         sp, s7, 14
                  ori          a4, s6, -873
                  bne          s6, ra, 254f
                  sll          s11, t1, ra
                  or           a1, s4, t5
                  sll          s10, t3, s5
                  sll          zero, t3, a0
                  bgeu         s8, t6, 254f
                  srli         a0, t2, 17
252:              and          s2, a3, s3
                  andi         s3, t4, -944
254:              srai         s5, t5, 14
                  bge          gp, a4, 259f
                  lui          t6, 481259
                  sub          s6, a3, s1
                  ori          ra, s6, -321
259:              xor          t4, s4, s11
                  bge          a1, s3, 266f
                  xori         s9, t1, -142
                  sltu         gp, s1, sp
                  bne          a6, tp, 278f
                  add          s3, t1, a2
                  sltiu        t4, zero, -1647
266:              sltiu        a4, sp, -1659
                  sra          t3, t1, gp
                  srli         t2, s6, 8
                  slt          zero, s8, a6
                  bne          t4, a4, 273f
                  sll          s6, t3, sp
                  bne          s6, ra, 287f
273:              andi         s9, tp, 85
                  or           s2, a0, t3
                  bge          t1, t4, 282f
                  bne          s1, s2, 280f
                  blt          s11, a1, 282f
278:              srli         t4, t3, 10
                  bne          t4, s11, 282f
280:              beq          s5, t3, 295f
                  sltu         t6, gp, t5
282:              sltiu        s10, a0, 1636
                  nop
                  bgeu         s11, sp, 292f
                  sll          s11, s0, a0
                  srl          sp, a6, s4
287:              lui          s1, 655974
                  addi         t2, t3, -1572
                  xor          a7, s7, t0
                  xor          a3, s2, ra
                  slti         a0, t3, 1592
292:              srli         s1, a5, 2
                  bne          a0, s7, 306f
                  or           s2, a0, t6
295:              addi         tp, s1, -1689
                  sltu         t2, s9, a1
                  beq          t1, s4, 303f
                  add          a6, s2, t5
                  blt          s10, t5, 303f
                  sra          s1, a6, a1
                  nop
                  lui          ra, 785995
303:              xor          gp, s9, a1
                  sub          s1, s7, s5
                  srli         a2, s2, 22
306:              sll          s10, s9, t5
                  beq          a7, s11, 321f
                  bgeu         t6, s3, 323f
                  lui          a3, 739362
                  lui          ra, 520951
                  slt          a1, s8, s1
                  bge          tp, a5, 327f
                  slt          a3, s7, s11
                  beq          t5, s9, 315f
315:              sll          s1, a3, s2
                  srl          s2, s8, a2
                  auipc        ra, 696472
                  and          gp, t1, a6
                  srli         a5, t3, 23
                  addi         t4, a3, -1557
321:              blt          tp, t4, 327f
                  beq          s8, s2, 329f
323:              blt          s9, t0, 325f
                  and          s11, s6, ra
325:              slti         s3, s11, -1563
                  bltu         t3, t4, 341f
327:              lui          sp, 214875
                  bgeu         a2, s8, 332f
329:              bne          s9, a5, 332f
                  sll          a5, t6, ra
                  srl          s9, a0, s2
332:              slt          s9, s8, a6
                  sll          a2, s11, s3
                  xor          s0, t4, s5
                  addi         zero, t5, -532
                  bne          a1, t6, 347f
                  xori         a6, a4, 2001
                  srl          s3, a2, s4
                  bgeu         t0, t6, 341f
                  xor          zero, zero, a7
341:              lui          zero, 487732
                  srai         a0, s1, 7
                  slli         zero, s8, 12
                  bge          a5, tp, 353f
                  xor          s3, t3, a2
                  auipc        gp, 249926
347:              sltu         a5, zero, t3
                  add          a3, s7, s4
                  blt          a2, a7, 361f
                  add          s11, a6, sp
                  sub          t3, s3, tp
                  ori          s0, s5, -1108
353:              slli         s7, s6, 28
                  slli         s4, s8, 7
                  blt          s6, a6, 363f
                  bne          t2, ra, 370f
                  andi         s10, s2, 1224
                  xor          t2, t1, a2
                  xor          s7, a2, gp
                  bne          a2, s8, 361f
361:              andi         tp, s5, -1292
                  addi         a0, zero, -1927
363:              blt          gp, s5, 367f
                  bgeu         s1, tp, 365f
365:              slt          s5, a6, t2
                  slli         s3, t1, 15
367:              lui          s0, 923194
                  srli         a0, s1, 16
                  lui          a2, 937905
370:              srai         a3, s7, 25
                  srli         gp, t3, 10
                  blt          sp, t2, 385f
                  sub          zero, t0, s2
                  slti         t3, t1, 1036
                  bgeu         s7, a5, 379f
                  sltu         s4, s0, t0
                  and          ra, t6, t4
                  nop
379:              slli         gp, a6, 18
                  lui          s11, 88515
                  bge          s7, a5, 384f
                  xor          zero, t4, t6
                  srl          t3, gp, s4
384:              sra          a4, s2, s6
385:              xor          s10, zero, zero
                  auipc        s2, 906014
                  ori          a7, s6, -243
                  xori         a5, s10, 1382
                  slt          t2, sp, s9
                  sltiu        a3, s3, -76
                  sltiu        a4, s10, 1392
                  bne          t0, s6, 412f
                  or           t6, sp, s3
                  sra          a7, t1, s1
                  bne          t4, ra, 403f
                  ori          s11, s0, -1884
                  beq          a7, a3, 401f
                  lui          a4, 773928
                  nop
                  sltiu        s8, s0, 671
401:              srl          tp, t1, t4
                  auipc        s3, 970129
403:              sll          tp, t5, t6
                  xor          t3, s0, s4
                  slli         t6, s0, 13
                  ori          s11, s2, 611
                  addi         s6, sp, 1405
                  nop
                  sltiu        s0, tp, -1350
                  sub          s7, s1, a3
                  slli         s8, s10, 12
412:              slt          a7, t5, t4
                  or           s3, sp, sp
                  add          s1, a5, t3
                  srli         a7, t6, 22
                  slt          s2, t1, s0
                  addi         s7, a1, -313
                  sll          s2, t3, s7
                  la           s3, region_0+294 #start riscv_load_store_rand_instr_stream_0
                  or           a5, a7, t6
                  lb           s10, -30(s3)
                  slti         s2, s2, 594
                  lb           a6, 15(s3)
                  ori          s8, t4, -1201
                  lbu          a0, 61(s3)
                  nop
                  sltu         s11, s11, s5
                  lw           a0, 30(s3)
                  ori          t4, s2, -618
                  nop
                  or           a7, s7, t5
                  lbu          a1, 18(s3)
                  addi         a6, s1, -1048
                  lbu          a7, -51(s3)
                  sra          s4, a3, s6
                  lbu          s8, 25(s3)
                  andi         t6, s3, -1173
                  lbu          s10, 35(s3)
                  lhu          a7, 2(s3)
                  lui          s10, 424883
                  lb           ra, -11(s3)
                  sltu         s4, s1, t0
                  sh           s6, 36(s3)
                  slti         a7, a2, 1646
                  sra          t2, a3, ra
                  sb           tp, -55(s3)
                  lb           s6, 38(s3)
                  auipc        t6, 770977
                  addi         a1, s4, -1624
                  sh           t2, 44(s3)
                  lhu          a5, -34(s3)
                  sub          sp, t1, a5
                  sh           zero, -62(s3)
                  lbu          sp, -45(s3)
                  slli         s10, a4, 26
                  lh           tp, 60(s3) #end riscv_load_store_rand_instr_stream_0
                  sra          s7, s9, tp
                  lui          s11, 778203
                  and          t2, a5, s3
                  bltu         s2, s6, 424f
                  addi         s2, s0, 501
424:              slti         s7, s2, 1375
                  bge          a3, a4, 432f
                  slti         s3, s4, -808
                  beq          s9, a7, 431f
                  add          a3, s10, a1
                  beq          a0, t2, 443f
                  auipc        t6, 416693
431:              sltu         t2, s8, t0
432:              beq          s11, t5, 440f
                  blt          a4, a2, 434f
434:              srai         s3, a2, 23
                  sub          s4, t0, s2
                  srl          s8, s11, t3
                  srai         a3, s3, 17
                  bge          t0, s4, 444f
                  nop
440:              xor          t6, s0, s4
                  sltu         s9, a6, t3
                  srli         zero, s3, 21
443:              srl          s4, a6, s9
444:              slli         s8, s7, 8
                  srli         s10, sp, 0
                  and          s9, s11, t0
                  blt          a1, a0, 462f
                  xor          ra, s2, a2
                  add          a1, gp, s11
                  sltiu        a5, a0, -1500
                  slli         s2, t2, 7
                  xor          t4, gp, a4
                  bne          s6, s7, 456f
                  slti         t3, s10, -617
                  andi         a4, s11, -1227
456:              sll          s0, t2, gp
                  srai         t4, s8, 7
                  xor          t6, s7, t6
                  or           s5, tp, a7
                  sltu         a1, s1, t5
                  srl          s6, s2, tp
462:              srai         t3, s5, 25
                  slli         a4, s5, 16
                  lui          s1, 474894
                  ori          a4, t2, -1820
                  or           s9, s4, ra
                  bne          s3, s2, 480f
                  slli         t6, sp, 3
                  srai         t3, sp, 31
                  sltiu        s8, s1, 684
                  blt          ra, s7, 480f
                  blt          t6, t5, 487f
                  sltiu        t3, s7, -1606
                  addi         s4, t6, -1805
                  auipc        a7, 490847
                  blt          ra, s9, 490f
                  sltiu        t6, s11, 700
                  srli         a2, t3, 9
                  sll          a3, tp, s2
480:              blt          a1, a6, 495f
                  addi         s5, t4, 888
                  bge          s3, t4, 488f
                  sra          s4, s11, sp
                  srai         tp, s9, 19
                  xori         s4, s4, 259
                  srli         s9, s8, 22
487:              sub          s4, t1, s8
488:              srli         s4, tp, 2
                  srai         ra, t3, 13
490:              sltu         t4, t5, zero
                  sltu         s7, a1, s8
                  andi         s5, a3, -446
                  sub          s3, s10, t0
                  or           a4, s1, t5
495:              bltu         a4, a6, 500f
                  xor          s7, s0, s4
                  srli         a1, s1, 6
                  nop
                  nop
500:              srai         t4, a2, 19
                  slti         zero, a7, 910
                  lui          t2, 45511
                  andi         a3, tp, -1210
                  xor          a0, a2, s1
                  add          a6, t5, a7
                  bgeu         a6, s0, 510f
                  nop
                  blt          a2, s2, 512f
                  andi         s8, s9, 772
510:              nop
                  bne          s8, a6, 512f
512:              bgeu         a5, s6, 523f
                  sll          a4, s2, a1
                  sltiu        tp, t5, -1631
                  bge          s8, zero, 530f
                  sltu         s1, sp, t3
                  lui          s5, 30391
                  blt          a4, a7, 520f
                  and          s4, s4, t4
520:              blt          s9, s8, 523f
                  sra          tp, sp, sp
                  srl          s4, sp, s9
523:              sra          ra, zero, t2
                  bne          tp, a1, 525f
525:              slli         s8, a3, 7
                  srli         s9, t3, 15
                  auipc        a4, 962544
                  slti         tp, a4, -474
                  sltiu        t6, s11, -1229
530:              slt          s2, s2, t3
                  sltiu        s5, t3, 320
                  srai         a6, a3, 8
                  andi         s8, s10, 942
                  or           a4, s2, a3
                  xor          s7, t0, t0
                  and          s6, t1, t0
                  sra          sp, a3, s1
                  srli         a2, s1, 3
                  sltiu        s2, a5, 959
                  bne          a4, ra, 552f
                  srli         s0, s6, 15
                  sltiu        a3, t5, -73
                  auipc        a6, 909847
                  blt          t5, a7, 557f
                  slti         s2, t6, -632
                  srai         s9, t4, 31
                  sltu         s10, t6, t4
                  slt          s0, s9, s7
                  slli         s2, s3, 12
                  bge          s6, a3, 553f
                  srai         gp, s11, 20
552:              slt          tp, s7, s5
553:              xor          t3, a4, a5
                  bge          s0, a6, 574f
                  srli         s9, s3, 26
                  and          s3, t5, s4
557:              andi         a5, s11, 1369
                  bge          a4, s4, 559f
559:              blt          sp, a5, 574f
                  auipc        s5, 360382
                  lui          s7, 352231
                  sll          s0, t6, s3
                  and          s9, s0, t5
                  srli         t2, a4, 5
                  sub          ra, a7, t6
                  beq          a2, t2, 570f
                  sra          s9, s11, s3
                  sra          zero, s0, s2
                  srai         s4, a3, 13
570:              sll          t2, s6, s7
                  sltiu        zero, gp, 1933
                  bge          s11, s8, 586f
                  andi         s9, s0, 1522
574:              lui          a7, 990641
                  bltu         a6, a5, 578f
                  bltu         t1, sp, 584f
                  beq          gp, s6, 588f
578:              slti         s6, s4, -644
                  srli         s0, t0, 23
                  blt          tp, s9, 595f
                  sra          s4, t6, s10
                  ori          t3, t4, -480
                  srai         s6, t5, 5
584:              sra          t6, tp, a4
                  and          a6, t5, t4
586:              andi         t3, s7, 2010
                  slt          s8, s9, zero
588:              or           s2, a4, zero
                  slti         ra, a0, -1805
                  slti         s5, s3, -617
                  sub          t2, t0, s10
                  bge          t0, zero, 593f
593:              and          a2, t0, s6
                  srai         a5, a4, 6
595:              bgeu         s5, a3, 609f
                  andi         a2, t6, 565
                  slli         a7, s11, 31
                  addi         gp, a1, -1492
                  ori          s6, a2, 521
                  bgeu         t6, sp, 613f
                  add          t2, gp, t4
                  beq          zero, s10, 606f
                  xori         t2, a7, 2020
                  sltiu        a4, a1, -1603
                  slli         a1, t6, 20
606:              andi         s8, s11, -536
                  sub          tp, s9, s5
                  lui          s6, 959014
609:              sub          a5, t4, s9
                  andi         gp, tp, 457
                  srai         s2, sp, 5
                  srl          tp, s10, s8
613:              bgeu         a4, a3, 614f
614:              beq          s8, s11, 618f
                  bltu         s1, s3, 630f
                  srli         zero, a6, 5
                  sltiu        a7, s8, -922
618:              xor          ra, s6, s7
                  bne          s2, s8, 621f
                  lui          s11, 131585
621:              xor          a6, sp, t5
                  ori          t3, a7, -1632
                  slti         tp, a1, 1106
                  bge          t0, zero, 630f
                  blt          s4, s11, 628f
                  beq          a5, a0, 641f
                  srli         t2, t4, 26
628:              bltu         a3, s2, 641f
                  blt          t6, s1, 632f
630:              andi         s5, a2, 869
                  nop
632:              slt          s11, s2, a7
                  sra          a7, a7, t3
                  slli         a4, s2, 29
                  nop
                  sll          gp, s5, s3
                  sll          a3, sp, a3
                  srl          t6, a3, s11
                  bgeu         s2, s2, 643f
                  bgeu         t3, s7, 649f
641:              xor          a7, t1, t2
                  lui          s0, 776880
643:              and          s10, a4, t6
                  sltiu        a0, gp, -1097
                  nop
                  sra          a3, a1, a6
                  xori         zero, sp, -1888
                  sltiu        a3, tp, -601
649:              slli         a5, s5, 10
                  lui          t2, 442333
                  addi         a4, t2, -1644
                  srl          t2, a5, s10
                  ori          s11, s5, -1919
                  slti         t2, zero, -1049
                  addi         s6, s8, -1149
                  xor          s8, s3, a1
                  sll          s11, t6, s6
                  srli         sp, a2, 13
                  sltu         a5, s9, a4
                  sltiu        a1, s11, 703
                  and          a3, s2, a0
                  bne          ra, s6, 664f
                  bltu         t4, zero, 669f
664:              blt          s7, s11, 676f
                  sll          a5, s4, s0
                  addi         gp, gp, 1603
                  xori         s3, a7, 1864
                  sra          a3, ra, gp
669:              nop
                  lui          s5, 1009142
                  srli         s11, s0, 3
                  srai         a0, a2, 24
                  ori          gp, s2, -1729
                  lui          a6, 101157
                  lui          ra, 135422
676:              srai         s0, s0, 0
                  addi         t6, t3, 1381
                  bltu         s11, s9, 685f
                  auipc        s1, 410762
                  bltu         s7, a1, 685f
                  add          zero, s5, a2
                  nop
                  and          a5, s3, t3
                  and          a3, t6, s0
685:              bltu         s8, s6, 693f
                  or           s8, a2, s5
                  sra          a0, t0, zero
                  srai         a4, s11, 26
                  and          s9, t3, s9
                  add          t4, s4, t6
                  beq          sp, s2, 711f
                  bltu         s1, t5, 695f
693:              add          s9, a2, a7
                  addi         s3, t6, -1193
695:              slli         s9, tp, 4
                  sll          s8, ra, a2
                  srl          sp, t2, s5
                  bne          t3, t3, 701f
                  sra          gp, s10, ra
                  bgeu         sp, s11, 706f
701:              sll          t2, zero, sp
                  nop
                  xor          a1, a0, tp
                  bne          a1, a4, 710f
                  slli         ra, s5, 18
706:              slt          t6, sp, s5
                  bgeu         gp, t6, 708f
708:              blt          sp, s9, 723f
                  andi         s10, t4, -931
710:              addi         a2, a2, 226
711:              sltu         a3, s6, zero
                  lui          s6, 125851
                  bltu         s8, s9, 728f
                  nop
                  srl          s4, s0, t3
                  nop
                  sltiu        s2, a0, -888
                  srai         a5, sp, 23
                  srai         a7, s4, 15
                  sltu         s3, a6, t2
                  xor          s5, ra, s4
                  xor          s7, s11, t1
723:              ori          sp, gp, 1261
                  auipc        tp, 785758
                  and          s7, s0, a3
                  srli         gp, s6, 22
                  sub          gp, a5, t5
728:              xor          gp, a7, a0
                  nop
                  nop
                  add          s2, a4, ra
                  addi         s0, a6, -752
                  add          a6, s11, a3
                  lui          t3, 303167
                  srli         a1, t1, 17
                  and          s11, ra, t4
                  xor          a1, t0, s10
                  sub          gp, a5, s11
                  sltu         tp, s6, gp
                  srl          a3, a5, s10
                  sltiu        a0, t3, 1354
                  bge          tp, s10, 744f
                  srli         a2, s3, 27
744:              bge          a0, s10, 749f
                  srai         a0, s5, 23
                  bltu         s3, s9, 758f
                  blt          t0, a5, 761f
                  bgeu         sp, t0, 751f
749:              srli         t3, a1, 17
                  srai         zero, s4, 5
751:              add          s9, sp, s6
                  xori         zero, a2, 1436
                  sltiu        a2, s5, 402
                  sltiu        tp, t0, 1415
                  sltiu        s6, gp, -1946
                  beq          s10, a7, 760f
                  la           tp, region_0+1846 #start riscv_load_store_rand_instr_stream_2
                  slli         s5, t4, 25
                  slt          s10, s9, a2
                  add          s1, t0, t0
                  lbu          t4, -6(tp)
                  xori         s5, a2, 499
                  add          s11, t1, s5
                  or           s0, a4, t4
                  sb           t2, 4(tp)
                  lhu          a4, 4(tp)
                  lb           a6, -9(tp)
                  addi         s8, s2, 202
                  and          s9, s10, s3
                  xor          ra, s7, a5
                  lbu          sp, -13(tp)
                  sb           t6, -5(tp)
                  lb           zero, 3(tp)
                  sltiu        s6, tp, 284
                  sb           s9, 11(tp)
                  lb           s9, 0(tp)
                  srai         sp, a6, 2
                  xori         a7, s3, 1514
                  sb           s2, 0(tp)
                  sra          t3, s10, ra
                  sll          a6, s8, s9
                  sh           gp, 12(tp)
                  lbu          s7, 7(tp)
                  xor          t6, s0, t0
                  sb           gp, 2(tp)
                  srl          t2, t2, s5
                  lbu          t6, -9(tp)
                  lhu          a3, -4(tp)
                  sltiu        s10, s8, -1433
                  sw           a7, 10(tp)
                  lui          s0, 1001821
                  addi         s9, s10, -2029
                  andi         s0, a0, -1535
                  slti         s2, s8, 564
                  addi         a4, s8, -1736
                  slli         sp, ra, 14
                  lb           s2, 3(tp)
                  lbu          sp, -6(tp)
                  sll          t6, s8, sp
                  lhu          s8, 0(tp)
                  sll          s4, sp, tp
                  lui          a4, 273751
                  sb           s8, -3(tp)
                  sb           ra, -4(tp)
                  lbu          s10, 13(tp)
                  sh           t2, -14(tp)
                  lbu          a6, 9(tp)
                  and          t3, gp, s11
                  lb           s9, -1(tp)
                  sra          s1, a7, a1
                  or           a0, s7, t3
                  srl          s9, s1, s6
                  lbu          s5, -14(tp)
                  sb           a5, -5(tp) #end riscv_load_store_rand_instr_stream_2
                  bne          s4, s1, 777f
758:              srai         s7, a7, 2
                  slli         s1, s1, 8
760:              slt          ra, tp, t6
761:              sltu         tp, s0, t5
                  or           gp, s0, t5
                  slti         s0, zero, -818
                  srai         t3, s9, 19
                  sra          s3, s5, gp
                  ori          a0, zero, -1077
                  slt          s4, s10, s10
                  bne          sp, s4, 777f
                  sra          a3, a4, t2
                  bne          s4, t6, 771f
771:              slt          tp, t0, s6
                  bne          s2, t3, 787f
                  sll          a6, s9, a6
                  sltiu        s11, s10, -439
                  sra          a1, a2, s1
                  lui          s2, 806663
777:              andi         s6, a0, 520
                  srai         s0, gp, 11
                  sub          a3, s8, t0
                  sltu         sp, t0, s9
                  slli         t6, zero, 11
                  beq          t5, a2, 795f
                  auipc        a3, 230259
                  sra          s1, a6, s11
                  slti         a6, s1, 1847
                  slt          gp, s10, t1
                  la           s9, region_1+435 #start riscv_load_store_rand_instr_stream_1
                  or           s10, s1, t4
                  lb           a4, 62(s9)
                  srli         t6, a2, 16
                  lb           s11, -26(s9)
                  auipc        a1, 1013751
                  lb           a0, -13(s9)
                  lh           s5, -63(s9)
                  lh           sp, 43(s9)
                  lb           zero, 53(s9)
                  lbu          s0, 7(s9)
                  or           s1, tp, a3
                  addi         a1, zero, -1929
                  sltu         s10, ra, s8
                  sb           a2, -16(s9)
                  lb           s2, 34(s9)
                  srli         a5, t5, 7
                  sb           s1, -5(s9)
                  sltu         sp, t0, a1
                  lhu          a3, -29(s9)
                  xori         t3, s6, 863
                  lhu          a0, 45(s9)
                  add          a6, s6, zero
                  lb           s11, -64(s9)
                  sb           a7, -39(s9) #end riscv_load_store_rand_instr_stream_1
787:              bltu         t3, a7, 788f
788:              bgeu         s8, t1, 802f
                  xor          s8, ra, s2
                  slt          s6, a2, t5
                  auipc        a5, 534936
                  sra          s11, t1, tp
                  bne          gp, t5, 800f
                  and          tp, s6, s0
795:              or           t4, t5, a1
                  addi         s5, a6, 1968
                  bltu         s5, t6, 806f
                  sub          tp, s7, t2
                  slli         sp, s3, 29
800:              sub          s11, s6, a4
                  beq          a6, zero, 805f
802:              addi         t6, t2, -1090
                  addi         s8, s9, -1277
                  and          a7, t3, s8
805:              ori          ra, a7, -1032
806:              srai         s4, s7, 8
                  xori         s5, s8, -1740
                  sll          t6, ra, s5
                  srl          t2, a6, t2
                  sub          a6, t1, a6
                  lw           s3, 4(t1)
                  addi         t1, t1, 52
                  ori          s0, s10, 451
                  xori         ra, gp, 678
1086:             addi x24, x19, 1
1086:             jalr x24, x24, 0
sub_10:           addi         t1, t1, -52
                  sw           s3, 4(t1)
                  lui          t4, 1020571
                  add          s9, s6, t1
                  sra          a0, s9, a4
                  xori         t4, t5, -1752
                  sub          a6, s8, s5
                  la           t3, region_0+598 #start riscv_load_store_rand_instr_stream_1
                  or           s8, s5, s7
                  sw           sp, 1118(t3)
                  lb           tp, 1048(t3)
                  sra          s8, sp, t5
                  sb           sp, 586(t3)
                  and          zero, t3, a4
                  sb           a6, 241(t3)
                  sub          a7, tp, t6
                  sb           t0, -521(t3)
                  sub          a4, a0, a0
                  lbu          t2, -329(t3)
                  ori          a4, a5, -885
                  and          a5, ra, s7
                  lb           s9, -376(t3)
                  lh           s11, 400(t3)
                  sb           t0, 1027(t3)
                  sb           s10, 721(t3)
                  add          s5, s1, ra
                  sb           t3, -557(t3)
                  srai         gp, a4, 11
                  add          sp, sp, s5
                  xori         a2, s4, 696
                  andi         tp, t1, -45
                  sw           zero, 886(t3)
                  lb           s5, 321(t3) #end riscv_load_store_rand_instr_stream_1
                  la           a2, region_1+1931 #start riscv_load_store_rand_instr_stream_0
                  sra          s7, a0, zero
                  lbu          zero, -177(a2)
                  slti         zero, t6, -1325
                  lw           s1, -611(a2)
                  or           a0, a2, a2
                  lui          s2, 946687
                  lui          s8, 11299
                  nop
                  sra          tp, a5, gp
                  lbu          s5, -1916(a2)
                  sw           zero, -1255(a2)
                  andi         a7, s1, 1279
                  and          sp, a3, s6
                  sltu         a4, tp, t1
                  lh           s11, -1293(a2)
                  nop
                  slti         a1, t5, 1168
                  lui          t3, 369362
                  xor          t4, a6, s6
                  sll          s0, s4, t5
                  lhu          t3, -919(a2)
                  sb           s1, -1024(a2)
                  lb           a7, -1665(a2)
                  ori          t2, s9, -592
                  lb           s1, -1666(a2)
                  addi         t6, a5, -1479
                  lbu          tp, -1614(a2)
                  andi         t6, s1, -280
                  lh           a1, -1729(a2)
                  lbu          t4, -247(a2)
                  sh           s2, -109(a2)
                  slli         s11, a6, 0
                  sub          s5, a3, t5
                  sb           a5, -1813(a2)
                  lb           s6, -1360(a2) #end riscv_load_store_rand_instr_stream_0
                  la           t3, region_0+1444 #start riscv_load_store_rand_instr_stream_2
                  auipc        a0, 808035
                  xori         s2, s9, -1360
                  sltu         a4, s11, zero
                  lb           s10, -1267(t3)
                  sll          s1, t6, s0
                  ori          a0, a2, 1571
                  xor          a6, a5, s2
                  lb           t6, -301(t3)
                  lhu          ra, 74(t3)
                  slti         s9, gp, -1924
                  sb           gp, 7(t3)
                  lbu          ra, -701(t3)
                  lb           sp, 389(t3)
                  andi         s3, s5, 625
                  sltu         a1, a6, s3
                  xor          a0, s4, a1
                  lbu          a4, 22(t3)
                  sb           t5, -1095(t3)
                  slli         a5, s5, 9
                  lb           s1, 92(t3)
                  lui          sp, 904023
                  lui          s6, 742724
                  lb           s4, -213(t3)
                  add          sp, a5, s7
                  add          s9, t6, a1
                  sb           s3, -227(t3)
                  lb           a5, -573(t3)
                  sb           t4, -315(t3)
                  lbu          gp, -510(t3)
                  or           t6, s3, a2
                  lb           s4, -361(t3)
                  sb           a2, -1003(t3)
                  lb           t6, -246(t3)
                  sb           s11, 516(t3)
                  srl          sp, t1, ra
                  lb           s7, 59(t3)
                  lbu          s2, 555(t3)
                  lh           a4, -1052(t3)
                  sub          s8, s3, t6
                  lbu          ra, -65(t3)
                  sw           a0, -752(t3)
                  sltiu        a2, s4, -215
                  nop
                  lhu          a7, -756(t3) #end riscv_load_store_rand_instr_stream_2
                  sltiu        a0, s8, 1283
                  bgeu         a4, a7, 18f
                  ori          a6, t3, -1393
                  bgeu         t6, s10, 20f
                  srai         a7, a6, 30
                  blt          t4, t6, 15f
                  sll          sp, t4, t0
                  bltu         a4, a7, 13f
                  slli         a5, t5, 29
                  xor          s9, t3, t6
                  sll          a6, a4, s3
                  add          a4, s7, s7
                  auipc        a0, 457433
13:               slli         a6, t5, 27
                  and          s5, ra, s6
15:               sra          a3, zero, s11
                  srli         s2, a6, 0
                  xor          t4, a5, gp
18:               addi         zero, t2, -67
                  bgeu         s4, a6, 35f
20:               bne          s5, s1, 34f
                  nop
                  ori          t2, a5, -1565
                  ori          tp, t1, -891
                  xor          s3, s6, t1
                  ori          s2, a1, 367
                  sltiu        a1, t5, -947
                  slli         s0, a3, 2
                  xori         a0, a5, 1428
                  srai         s11, a3, 10
                  blt          t4, t5, 42f
                  addi         t6, t0, 2032
                  ori          a0, a4, -701
                  bltu         a2, s2, 35f
34:               beq          a0, a2, 39f
35:               sub          s3, s6, s4
                  xor          ra, t0, t1
                  and          s5, tp, t0
                  sll          t2, s2, zero
39:               and          a2, a2, t0
                  andi         a1, a0, -1525
                  and          s6, s1, tp
42:               bge          s10, a7, 58f
                  sll          s9, t4, t6
                  slli         s10, gp, 10
                  xor          a6, t3, s10
                  xori         s3, s11, -177
                  nop
                  srli         t6, t5, 17
                  sltu         a7, s11, s11
                  sub          t3, a4, a2
                  or           a4, sp, t4
                  srai         t4, s8, 20
                  sltiu        a1, s0, -1919
                  andi         s1, t4, -451
                  slt          s1, a3, s10
                  srl          zero, gp, t1
                  and          s6, s0, t2
58:               beq          s10, ra, 72f
                  auipc        s5, 1001650
                  addi         ra, s2, -434
                  srli         a7, s4, 11
                  addi         t3, s10, -384
                  bge          t4, s3, 67f
                  auipc        a7, 223305
                  xor          a1, s8, sp
                  or           a0, t2, s10
67:               nop
                  addi         s4, s6, 1761
                  srl          a4, s2, ra
                  blt          t5, s6, 81f
                  beq          a1, s4, 89f
72:               bge          a5, t4, 89f
                  auipc        t2, 151107
                  sra          a7, t6, a1
                  lui          s6, 270820
                  and          gp, s10, gp
                  andi         s4, a7, 1482
                  blt          a4, s2, 90f
                  bge          a5, s9, 84f
                  beq          a1, gp, 84f
81:               sltiu        a5, t0, 144
                  lui          tp, 396891
                  srai         s3, a2, 28
84:               sub          s3, s9, s1
                  bne          sp, ra, 104f
                  addi         s6, t3, -1895
                  addi         s5, a6, 1909
                  slli         s9, s0, 24
89:               auipc        s0, 234287
90:               bge          s8, t6, 91f
91:               slt          a5, gp, s10
                  sub          t6, t2, a4
                  bge          s7, s3, 110f
                  slti         a3, t5, -1761
                  blt          gp, s9, 112f
                  slt          gp, sp, s2
                  bge          sp, s0, 103f
                  ori          s1, tp, -22
                  andi         zero, s9, -662
                  auipc        s8, 774701
                  andi         ra, s0, 50
                  xor          ra, s8, t2
103:              sll          zero, s0, a1
104:              bgeu         s7, s6, 105f
105:              add          a4, s8, ra
                  sltiu        a5, s1, 133
                  lui          a5, 693977
                  blt          s3, s10, 128f
                  xori         a7, s9, 422
110:              bltu         zero, a6, 124f
                  xor          s3, a2, s8
112:              srl          s0, s9, s2
                  lui          s7, 234904
                  addi         a1, s7, -2044
                  and          zero, t2, t5
                  add          s7, tp, t1
                  sltu         a0, s3, s11
                  srli         a5, zero, 24
                  beq          t6, sp, 129f
                  andi         s8, s10, -1751
                  addi         a5, s11, 1709
                  slti         t3, t1, 1492
                  slti         s9, t2, -1053
124:              xori         a0, a7, 1280
                  and          s3, a3, s2
                  bgeu         s4, t2, 146f
                  srai         s1, s2, 4
128:              beq          a5, s1, 138f
129:              beq          t3, s10, 146f
                  lui          zero, 159761
                  slt          s1, t4, s6
                  srli         t4, s5, 7
                  slti         s9, a4, -1007
                  srl          s1, s6, a5
                  sltiu        s3, gp, -206
                  bge          t2, a3, 148f
                  or           a7, t2, s2
138:              addi         s8, s10, -1889
                  beq          a6, a3, 150f
                  sll          s2, t3, t4
                  sub          s4, s11, s0
                  srl          s9, a6, s4
                  bne          sp, t3, 148f
                  sltu         gp, t1, a7
                  sra          ra, a7, s4
146:              or           s2, t4, sp
                  sltiu        s1, a3, 1343
148:              sra          s2, a7, s0
                  sltiu        a2, a5, -1043
150:              nop
                  add          zero, s2, t3
                  srai         sp, s7, 23
                  blt          a7, a3, 167f
                  and          gp, zero, t0
                  slti         s0, zero, -522
                  srl          gp, sp, s5
                  auipc        zero, 340737
                  blt          t4, s4, 164f
                  and          s0, s7, t2
                  sll          a5, tp, s5
                  slli         s11, t3, 8
                  bne          a4, tp, 178f
                  andi         s8, tp, -645
164:              srli         s8, s5, 8
                  beq          a4, s8, 169f
                  and          s5, s10, t6
167:              lui          a5, 581412
                  slt          s8, a1, a3
169:              sra          s8, s5, a6
                  bne          s1, a6, 171f
171:              xor          s2, s6, s4
                  sub          t4, gp, s4
                  sub          zero, t2, t0
                  sub          a3, a3, a1
                  beq          t5, t2, 192f
                  and          ra, s9, s3
                  sltu         ra, s6, a0
178:              bltu         t4, t1, 195f
                  add          s2, t0, sp
                  addi         s2, t3, -1346
                  blt          s11, s8, 198f
                  sltu         a6, a6, a7
                  srl          a2, zero, t4
                  sltu         s8, s4, a1
                  auipc        s9, 596373
                  sub          t6, gp, t0
                  add          sp, s2, s9
                  bne          a7, a7, 193f
                  slti         s0, tp, -482
                  nop
                  lui          tp, 648770
192:              ori          s2, a7, 854
193:              slli         s10, t1, 27
                  sub          s6, a7, t2
195:              bltu         t0, s9, 207f
                  bltu         sp, ra, 210f
                  sub          s1, s11, s4
198:              slli         s5, s0, 7
                  andi         s8, s3, 647
                  xori         s3, s5, -167
                  bltu         a6, tp, 215f
                  bltu         zero, s3, 219f
                  slt          a0, t5, gp
                  blt          s0, s2, 222f
                  or           gp, s7, t6
                  ori          a6, a0, -125
207:              sll          s3, t0, a0
                  slt          s9, s2, a1
                  xori         s10, t5, -610
210:              and          sp, t3, tp
                  sltu         a4, s7, t2
                  bge          a0, s0, 216f
                  sltu         t2, a1, gp
                  bgeu         sp, a1, 231f
215:              blt          zero, s1, 235f
216:              sra          a6, t4, t5
                  beq          t4, s3, 227f
                  bgeu         s11, a2, 237f
219:              lui          s9, 126980
                  slli         sp, s5, 12
                  bltu         zero, s5, 238f
222:              slli         t2, s1, 2
                  addi         a3, t1, 1707
                  srai         sp, a3, 11
                  srai         sp, a2, 4
                  srli         zero, s1, 21
227:              nop
                  add          tp, a6, t6
                  slti         t2, s5, -1831
                  sll          s7, a2, a4
231:              slt          a7, zero, a0
                  ori          t4, s2, 1162
                  bge          t4, t1, 234f
234:              srl          s1, sp, s6
235:              sll          sp, s5, s6
                  sll          s6, s1, t2
237:              xori         a6, a3, -1118
238:              ori          t2, a7, -1655
                  srl          s9, a7, ra
                  or           t4, s0, a0
                  slt          s7, a3, a4
                  sub          s4, s0, a1
                  lui          tp, 617629
                  slt          a7, s2, t2
                  sll          s3, a1, t6
                  sub          s5, s5, gp
                  andi         a1, s0, -525
                  andi         tp, t4, -1507
                  xor          s9, t5, s5
                  addi         a0, sp, -911
                  lui          s2, 856617
                  srl          s11, s9, s8
                  srli         sp, t3, 8
                  and          a7, s4, t4
                  slli         t3, a3, 22
                  sll          s5, s7, s11
                  srl          s11, a7, tp
                  srli         a4, sp, 20
                  lui          s10, 113498
                  sub          t3, a4, s8
                  and          s0, s4, zero
                  andi         t4, t5, -882
                  bne          s5, a6, 265f
                  srli         s9, s4, 10
265:              ori          s2, ra, -1614
                  sra          t6, a1, a2
                  srai         a6, zero, 2
                  sub          a3, a5, s3
                  slt          a3, s0, t3
                  sltiu        s4, ra, -1202
                  blt          s7, t1, 291f
                  sll          sp, s5, s5
                  blt          t0, t6, 279f
                  srai         a1, a4, 30
                  auipc        sp, 1015451
                  addi         t3, s10, -1319
                  auipc        t4, 552252
                  ori          tp, s11, -1844
279:              nop
                  sra          s9, s2, s10
                  addi         s9, s7, -1616
                  blt          gp, a4, 292f
                  slli         s2, s2, 22
                  add          t6, sp, s1
                  auipc        s11, 902280
                  sub          ra, s6, s0
                  sub          ra, s0, s8
                  sltiu        a3, t2, 424
                  sra          s7, a1, t1
                  lui          s8, 235645
291:              nop
292:              bne          s1, s1, 308f
                  bltu         s4, s9, 303f
                  add          s10, t5, a7
                  add          s10, t3, s3
                  xori         a1, ra, -841
                  bltu         s0, ra, 307f
                  sltu         s9, s1, a1
                  srli         s0, s4, 18
                  blt          s9, a5, 320f
                  lui          a4, 503572
                  srai         tp, a6, 8
303:              xori         tp, ra, -1881
                  sltiu        s6, s11, 1575
                  nop
                  lui          s9, 800360
307:              sltiu        sp, a3, -689
308:              sra          t6, a0, t3
                  andi         s2, t4, -488
                  bge          t0, t0, 327f
                  slt          s11, s4, t6
                  sll          t6, s10, a0
                  bltu         tp, s9, 333f
                  sll          s10, a6, a6
                  srai         zero, s11, 21
                  sub          s3, sp, gp
                  bltu         a1, s5, 334f
                  ori          s7, a2, 1397
                  bge          a5, sp, 337f
320:              lui          a4, 665801
                  addi         t2, ra, -128
                  slt          a1, a0, s5
                  srai         s5, t0, 23
                  bgeu         a6, t6, 330f
                  slti         s1, s10, 112
                  nop
327:              xori         a6, a4, -621
                  sub          t2, a2, t1
                  slti         s7, t3, -1284
330:              bgeu         t3, s10, 335f
                  andi         a3, tp, 561
                  srai         a4, s9, 24
333:              sltiu        a6, t0, 2040
334:              nop
335:              addi         t2, s6, 746
                  bne          t0, zero, 353f
337:              sra          s3, gp, s10
                  nop
                  slti         s10, s2, 2031
                  xori         zero, zero, -873
                  lui          ra, 474570
                  auipc        s10, 106201
                  slt          a2, s6, s6
                  xori         s11, t5, 1799
                  sra          tp, zero, a6
                  sra          gp, ra, ra
                  sra          a0, a2, s3
                  ori          s8, s7, 884
                  sltu         tp, gp, s0
                  xor          t3, a0, s10
                  slti         s2, t1, 331
                  auipc        sp, 339919
353:              bltu         s2, s10, 355f
                  sra          a2, t3, s1
355:              add          a3, t6, t2
                  add          sp, t5, s2
                  blt          a0, s11, 361f
                  sltu         a4, zero, s3
                  add          a7, tp, s3
                  srai         s10, t3, 2
361:              blt          t0, a2, 371f
                  bne          s8, a7, 373f
                  andi         s1, s4, -1212
                  bge          t3, s3, 383f
                  srai         s8, s0, 4
                  lui          s6, 27224
                  blt          a7, a5, 379f
                  addi         s1, tp, -594
                  andi         a4, s6, 803
                  sltu         sp, tp, t0
371:              sltiu        t4, t6, -997
                  slt          ra, s6, sp
373:              auipc        s4, 904693
                  nop
                  xor          s2, t4, zero
                  sltu         s1, t5, a0
                  andi         zero, s4, 327
                  slli         t6, sp, 4
379:              ori          a5, s0, -1215
                  sra          s8, a5, s3
                  slt          a7, ra, a2
                  sra          a7, a1, s3
383:              beq          t1, a0, 384f
384:              bgeu         tp, s6, 398f
                  ori          s10, s7, 588
                  slti         gp, gp, -1678
                  sltu         t2, t3, a1
                  slli         a3, s8, 28
                  blt          t1, s7, 399f
                  bne          s8, a3, 395f
                  beq          s9, s9, 405f
                  andi         t4, s1, 768
                  srli         s10, s10, 14
                  or           a6, ra, zero
395:              add          t6, s1, a2
                  sltiu        tp, t2, -1371
                  or           s11, a2, t4
398:              sltiu        t4, s7, 153
399:              blt          s7, t0, 416f
                  bne          t4, tp, 401f
401:              beq          zero, a1, 418f
                  sub          t3, a5, s11
                  srl          t2, s1, t6
                  bltu         a3, ra, 421f
405:              sub          t4, a4, t0
                  bltu         s6, tp, 410f
                  addi         s2, s0, -1487
                  sltiu        a3, a3, 1919
                  andi         s8, a7, 221
410:              bgeu         zero, a5, 426f
                  beq          s0, a2, 423f
                  xor          s2, s1, a1
                  bgeu         s4, s6, 427f
                  sra          a3, s10, t4
                  lui          s0, 86355
416:              slti         a4, s5, -606
                  srl          s2, s6, t3
418:              slt          s10, a1, a4
                  bgeu         a7, s5, 425f
                  slti         s10, s4, 85
421:              slli         s4, tp, 19
                  bge          a3, gp, 431f
423:              blt          a7, s1, 431f
                  beq          t4, s10, 431f
425:              sra          a6, s11, s4
426:              sra          a0, sp, s2
427:              sra          t4, a4, gp
                  and          a2, zero, t3
                  sll          a6, a3, s9
                  nop
431:              or           t4, t0, s8
                  srl          a0, ra, a3
                  addi         sp, s1, -2018
                  lw           s3, 4(t1)
                  addi         t1, t1, 52
                  srli         s6, s7, 29
                  srai         s0, t2, 2
                  srli         s1, sp, 17
                  xor          a7, t0, t1
                  lui          s8, 859865
                  xor          s5, t5, a1
556:              addi x22, x19, 1
556:              jalr x22, x22, 0
sub_6:            srai         t6, tp, 28
                  bge          gp, t4, sub_6_stack_p
                  sll          s4, a2, t3
sub_6_stack_p:    addi         t1, t1, -44
                  sra          tp, gp, t6
                  srai         s2, s3, 10
                  sw           s3, 4(t1)
                  addi         a5, s4, 216
                  sll          s2, a6, t2
                  srai         a7, sp, 1
                  auipc        a5, 270927
                  or           s1, s9, gp
                  slli         s6, s5, 13
                  ori          a7, t4, 1427
                  slti         s7, gp, 505
                  sll          gp, a3, s5
                  xori         s3, s3, 499
                  ori          s4, s5, -365
                  sltu         s0, s8, a4
                  bne          a7, t0, sub_6_j10 #branch to jump instr
                  sltiu        s3, a1, 1920
                  nop
sub_6_j10:        jal          s3, sub_7 #jump sub_6 -> sub_7
                  la           ra, sub_7
                  addi         s0, zero, -1483
                  sltiu        s9, t3, -1344
                  addi         ra, ra, 753
                  srli         gp, s3, 23
                  beq          s9, t1, sub_6_j11 #branch to jump instr
                  auipc        s0, 494347
                  xori         s2, t3, 1505
                  srai         s5, ra, 13
sub_6_j11:        jalr         s3, ra, -753 #jump sub_6 -> sub_7
                  sub          s0, s8, s1
                  la           t3, sub_8
                  nop
                  nop
                  sltiu        s5, s1, -1939
                  and          s1, a4, s1
                  srli         a1, zero, 31
                  srli         a2, tp, 1
                  addi         t3, t3, 212
                  sltiu        a2, t5, 1129
                  beq          a1, s9, sub_6_j12 #branch to jump instr
                  add          gp, s11, s11
sub_6_j12:        jalr         s3, t3, -211 #jump sub_6 -> sub_8
                  nop
                  nop
                  bne          a6, s10, 21f
                  and          zero, s1, s9
                  blt          s3, a3, 23f
                  lui          s10, 75613
                  xor          t2, t2, s6
                  bge          a1, s7, 22f
                  ori          s6, gp, -1233
                  slt          s3, a6, s1
                  sltiu        a1, s7, -1251
                  sub          s1, gp, a7
                  srl          a0, t2, s7
                  slt          zero, s2, t1
                  xori         s3, ra, -304
                  xor          s0, gp, s10
                  srai         ra, a5, 17
                  and          a7, s11, zero
                  blt          a2, ra, 29f
                  addi         a6, a6, -1414
                  slli         ra, s10, 0
21:               srai         s1, a7, 24
22:               sll          s8, t3, sp
23:               sra          a5, s1, s2
                  srli         a4, gp, 8
                  and          a2, t1, a4
                  sub          s5, s5, s10
                  auipc        sp, 544997
                  slt          s9, t1, s9
29:               slti         s10, t2, 860
                  lw           s3, 4(t1)
                  or           s11, s8, s6
                  or           s2, a0, s9
                  srl          s9, t3, gp
                  srai         s7, t2, 2
                  addi         t1, t1, 44
                  ori          tp, t2, 451
83:               addi x10, x19, 1
83:               jalr x10, x10, 0
sub_4:            bne          a2, sp, sub_4_stack_p
                  ori          s5, t0, 736
                  sltu         s2, tp, tp
sub_4_stack_p:    addi         t1, t1, -40
                  ori          tp, a1, 632
                  and          a7, gp, s3
                  sw           s3, 4(t1)
                  slt          gp, tp, t0
                  sll          a1, a6, ra
                  sll          t3, a7, s4
                  bge          s11, s3, sub_4_j6 #branch to jump instr
                  xori         s7, s0, -979
                  srai         a6, s1, 8
                  auipc        a3, 7155
                  srli         a0, t0, 25
                  sra          s4, t3, t1
sub_4_j6:         jal          s3, sub_5 #jump sub_4 -> sub_5
                  or           s6, s9, t3
                  or           t6, t0, t5
                  xori         s0, s5, -1997
                  la           a7, sub_5
                  addi         a7, a7, -255
                  srai         a2, t0, 2
                  xori         s4, t0, 103
                  bltu         s9, t0, sub_4_j7 #branch to jump instr
                  or           s2, a1, t0
sub_4_j7:         jalr         s3, a7, 256 #jump sub_4 -> sub_5
                  and          s8, zero, t1
                  bgeu         tp, s3, 9f
                  srl          a6, s4, a5
                  slti         s4, s3, 770
                  sltu         t6, zero, s4
                  ori          s10, a2, 138
                  addi         s5, t3, 1653
                  bne          s1, a1, 9f
                  sub          s11, t5, s3
9:                and          t4, t5, t5
                  xori         s2, s2, -1284
                  lw           s3, 4(t1)
                  sltu         a4, a0, s7
                  addi         t1, t1, 40
                  addi         zero, s7, 1013
42:               addi x18, x19, 1
42:               jalr x18, x18, 0
sub_1:            bgeu         t3, a7, sub_1_stack_p
                  slli         gp, t1, 27
                  srl          a4, t5, a3
sub_1_stack_p:    addi         t1, t1, -20
                  add          t4, s3, a3
                  sw           s3, 4(t1)
                  sra          s4, s5, a3
                  or           a4, s9, s7
                  la           a1, sub_4
                  sltu         s6, t5, a6
                  xor          t6, s0, s9
                  addi         a1, a1, 281
                  or           s8, a4, s10
                  xor          s5, a7, gp
sub_1_j4:         jalr         s3, a1, -280 #jump sub_1 -> sub_4
                  srl          gp, a3, t0
                  nop
                  add          t4, a3, a5
                  la           t6, sub_4
                  or           a1, sp, s3
                  andi         a6, s0, 553
                  addi         t6, t6, -217
                  ori          s0, s6, -1315
sub_1_j5:         jalr         s3, t6, 218 #jump sub_1 -> sub_4
                  slti         t4, s1, -934
                  ori          a6, t4, 241
                  slli         t2, s1, 9
                  andi         s7, t6, -741
                  ori          s6, t4, -1987
                  beq          a6, t2, 9f
                  srl          s11, t5, tp
                  andi         s8, s9, -856
                  and          t3, s6, s6
9:                andi         s6, t5, 1098
                  lw           s3, 4(t1)
                  xor          s10, s5, s3
                  slli         t4, s5, 18
                  and          tp, s2, s8
                  slt          a7, s11, s2
                  xori         t3, t5, 1366
                  slt          zero, a0, a2
                  addi         t1, t1, 20
                  srl          t6, t5, s11
                  sltu         a6, t2, sp
44:               addi x20, x19, 1
44:               jalr x20, x20, 0
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
.word 0x95749634, 0x52feb58a, 0xd8c3f932, 0x590b1949, 0x6fe2dfe6, 0x381a816b, 0xe733589e, 0x7e5e54a2
.word 0x66210723, 0x7c164f09, 0x1f57700e, 0x802047fa, 0x1cf42f7f, 0x12e0375f, 0xdff3b4ba, 0xae56339b
.word 0xf13cad1b, 0xca013927, 0x80226b9a, 0x8c6ef64c, 0x2a3fd356, 0x1f2b50b2, 0xe1f68679, 0x5a44b055
.word 0x5a69fa88, 0xc2db4cd1, 0xab793d97, 0x16f99d84, 0xcf8af5d0, 0xfe83daa9, 0xfac1838e, 0x5167f1f3
.word 0x024f4f5e, 0x1deae4ae, 0xc7147a47, 0xfb85c964, 0x0835ecb9, 0x6adfb12d, 0xbfd4605c, 0x8e8ef5c4
.word 0x3bf2ae53, 0xb891a361, 0x2a415000, 0xd4ce8588, 0x7c00ef64, 0x608d7813, 0x8579ffa9, 0x9b04da6c
.word 0xdf772bcc, 0x5eba0bd2, 0xdfc3e755, 0xc17d169f, 0xffc859ed, 0x04c7c643, 0x6e1d9ee4, 0x27a162d7
.word 0x1f584cab, 0xa5b89d8a, 0x00a93990, 0x1a0c5335, 0x03df51cb, 0x3b2b0a06, 0x5663b1de, 0x0a05efc9
.word 0x84be1fa2, 0x01bb2094, 0xa62f59c4, 0x25ddf083, 0xba3a7240, 0xd3071bbf, 0xdddf422f, 0x5c16c0a6
.word 0x22cde091, 0x3263c274, 0xc56a5d3f, 0xcd247907, 0xed739da1, 0x5a74de22, 0x0fdcd076, 0x85d3bed0
.word 0x77aa8044, 0x627409bf, 0x9516b38a, 0x133d1863, 0xd3b4a737, 0xb0d9f986, 0x46b08abe, 0x7a5c5561
.word 0x18445fa2, 0xf1f48a14, 0xb74fd561, 0x78e7ac94, 0x82b13635, 0x00246c05, 0x7b4efa5b, 0x173788ee
.word 0x2b3526e3, 0xe606a6cf, 0x2d10aa19, 0xfc63dd2c, 0x2f512ced, 0x77a49a25, 0x868f42e5, 0x81764876
.word 0x1d15985a, 0xf4f1e61e, 0x6810cfea, 0x51b26365, 0xde1f7323, 0x6079688a, 0x7ff38c9e, 0x251aa1da
.word 0x797f3d57, 0xdc7642e1, 0x6a6af2c3, 0x5c07a8fb, 0xe79b2fe7, 0x10918176, 0x3dd595f9, 0x055a8329
.word 0x49d5d91a, 0xe21e3f9f, 0xf5afa62a, 0x84a9770e, 0xe7078f18, 0xa52d8a53, 0xa2606b14, 0x9005c4fe
.word 0xe1941289, 0xc712fb0e, 0x473ff48b, 0x5107f23f, 0xd35e0398, 0xcb10463e, 0xcbaed2bc, 0x79a09d8e
.word 0x2dc630a4, 0x1eb19b7f, 0x7a45bfeb, 0xe86e7f93, 0x123ae60c, 0x7f596bb3, 0xdd66664d, 0x12ed0497
.word 0x079b67c6, 0x87cf67df, 0x93f52f01, 0x91203bd7, 0x3c0aaca2, 0x2388b3bf, 0x264b461e, 0x1e38e5f3
.word 0x3a7613fd, 0xc1566663, 0xf68245bc, 0x1374bd41, 0xfd9ac415, 0xeb1f2f8b, 0xa92ad788, 0x1ddf312c
.word 0xe67d83d0, 0xe6244d97, 0x8dbab8fb, 0xec8a1318, 0x15e45c5b, 0xbef5c648, 0xb4aba0e8, 0x6df601e0
.word 0x67b1ccac, 0xe51480fe, 0xc2b15fd3, 0x6a5c6f31, 0x20e273a0, 0xa979a4e7, 0xfd229723, 0x596ed10c
.word 0x193a050f, 0xc3fa4b56, 0xed7d09ca, 0xaff5f154, 0x5b065638, 0xddd4540b, 0x49975196, 0x4517f689
.word 0x6335b167, 0x7e9a14b2, 0x53dcd461, 0x279df359, 0xad080e95, 0x3bd95c9c, 0x3c338637, 0x89a3e6cd
.word 0xfa8874e1, 0xc247dac6, 0x60677dc9, 0xc7613d3e, 0x0a3eaea6, 0x78a21179, 0xa45457ef, 0x629a74be
.word 0x48a0c520, 0x13ef8cf4, 0xecf45d30, 0xb88dbb91, 0x7864bbb8, 0xeeb99623, 0xa5bf7b28, 0x653aa7a2
.word 0x0b3e771f, 0x328271a5, 0x129803ae, 0xf2c07f0d, 0x83808698, 0x4d002c15, 0x1e4df6c4, 0x9bcc0fda
.word 0xd34f25ef, 0x7333450d, 0x84fb5ddc, 0xfea70b67, 0xb8a19a50, 0xf94db54a, 0xf4045dd9, 0x2cf1684b
.word 0x4fce7591, 0x19ebab02, 0x27d9ac54, 0xe2acab81, 0x71262b80, 0x837011ce, 0x2ccf8958, 0x93a94f3e
.word 0x773cff5c, 0xa0815118, 0xf4d7b0c5, 0xa1e05d15, 0x989487a2, 0x7cde1b75, 0xbaefbc5b, 0x84c72d5c
.word 0x428484a2, 0xd85015dd, 0x384638e9, 0xfa1dca17, 0xe8ce48a8, 0xac5b0c60, 0x66f334da, 0x3093696d
.word 0xcc2fdc07, 0x4c8b752a, 0xed4d3fa0, 0xe5e58528, 0x82b8ee17, 0x147c7eb2, 0x4ad38b58, 0xa6fea61a
.word 0x3e29219b, 0x7420d8d6, 0x86387855, 0x912b8a1f, 0xff5722c7, 0x5dcbdcfa, 0x220530a4, 0x0ec45b35
.word 0x084bd4c8, 0x073e2e3c, 0x0dcbd519, 0x6cfc93d2, 0x0a3bce99, 0x77444c57, 0xedb69086, 0x82180662
.word 0x3d3a16a0, 0x1c2f55e0, 0xad20611c, 0x0bafc678, 0xb7412311, 0x65f960e2, 0xc01235a6, 0xc2ed4242
.word 0xe319ce67, 0xace10f46, 0x7900bf16, 0xf6d9c273, 0x1bfaa7a4, 0x7999af48, 0xf27db0d3, 0xd9c3f48c
.word 0xb8c68161, 0xb1e0a7b3, 0x070edc44, 0xb63c04f8, 0x3c37ee76, 0xb45b5267, 0xde9ad481, 0xdfa3a5a3
.word 0x7eb9619c, 0x0e3a8fbe, 0xc709dac1, 0xca2dcb8e, 0x2ccd9a15, 0x8d399bcc, 0xda652b13, 0x4232a66c
.word 0xe9bfc734, 0x20f3b575, 0x28f94100, 0xefc2e5c9, 0xff605e30, 0x6b919929, 0xf290269b, 0x0e5d6e6e
.word 0xe01c077a, 0x1f63e944, 0xa9a5bede, 0x9c1d611c, 0xeb3019de, 0x8c161042, 0x885764e4, 0xf38106ba
.word 0x62bb5840, 0xfe1496e2, 0x901cfcbf, 0x09814bf3, 0xef76b2d4, 0xd727f007, 0xd12f5660, 0x014b0b6e
.word 0x7beabaa3, 0x791be8e1, 0xe3b51986, 0xbe3a3e94, 0xb148596f, 0x06df2230, 0xce27d829, 0xf107ee21
.word 0xdc18e6e9, 0x6388c9d8, 0xdf47dca5, 0x7ae032e8, 0x9a50ce8e, 0x21b754dd, 0xe00ef197, 0x2d62d02c
.word 0xa841e7b8, 0x02350d04, 0xaad9bac5, 0x24c11bb7, 0x222917c2, 0x168577f6, 0x9f0d5ad8, 0x34b6a528
.word 0x870d398d, 0x86bbe13f, 0x120cc01a, 0xf0eb3e97, 0x0dde1cc8, 0x3907b223, 0x377fc021, 0x31a6966a
.word 0xedc28cf0, 0xdff0b1b3, 0x416a4749, 0xeaeea665, 0xe2772f97, 0x00162c45, 0xdb0f39a3, 0x754da89c
.word 0x896a1662, 0x298aee38, 0xd8f981f9, 0x98f742c0, 0xc9a4221c, 0x24071c74, 0xdd6a433d, 0x1614f079
.word 0x4a9cd2b7, 0x8093b462, 0x84ccee40, 0x39501498, 0x039dbf93, 0xb838fd05, 0x62708f30, 0x43430179
.word 0x41b1124d, 0x4307c91c, 0x221ee383, 0x07519874, 0xbe4179ec, 0x026ac838, 0xa50103b0, 0xdf09fa0d
.word 0x50c246a4, 0x851db0da, 0x48d6a703, 0x82d3bb37, 0x3064c417, 0xc89227ae, 0x13f2a303, 0x4a649bcf
.word 0xd50a58af, 0x0ec0353b, 0x124c27e2, 0x28cb3224, 0xa5aa5bf4, 0xb0b71e6c, 0x609c2e8e, 0x8eea9a1c
.word 0x6e551b8f, 0x33036afe, 0xf2097cb6, 0x6ef21776, 0x1f90466a, 0xeec02abf, 0x51c5c4c4, 0x54b8f3a4
.word 0x036dbe29, 0x7cde1755, 0x3daf70ce, 0x6f603612, 0xd5071536, 0x885b0ab0, 0xb8906b4a, 0x3184a400
.word 0x222f23fc, 0xd24f75d3, 0x28d288c1, 0x04802ff4, 0xe07ba9ec, 0x5e7d8172, 0x3ac893c6, 0x400b361e
.word 0xd3d3e0c3, 0x5d8874cb, 0x4b88cc1d, 0xf549b4df, 0xec813b4a, 0x4b84e5a4, 0x6ddf9626, 0x4f5384cc
.word 0x4d560451, 0x905db50d, 0xa73f7d95, 0x7079bf68, 0xbee19f05, 0xa4f18f12, 0xfb52ded4, 0x3f7c6a7a
.word 0x41f50a87, 0x43bcaa93, 0x5f094d84, 0xe89ed578, 0xde0772c9, 0xf83bc306, 0x47f13f49, 0x9e60f13f
.word 0xd48f8559, 0x27346b25, 0x71353c8f, 0xc5ef0495, 0xf53cf0d3, 0x54c3a395, 0x87639fbd, 0x69d95c9b
.word 0x533f8d2d, 0xac2c419b, 0xce41a96c, 0xdf41035b, 0x958042c3, 0x54070c96, 0xe957cd1a, 0x68dff9c6
.word 0x2dcfab04, 0x9f42ddfc, 0x0de8de71, 0xc9ff9062, 0x785a1e5c, 0xea60a379, 0x3035f385, 0xb0751fde
.word 0x99633944, 0x2b5185f7, 0x78434dc1, 0xb18c05f1, 0x9baadd4c, 0xb4a48360, 0x57bbecff, 0x7aa48a08
.word 0x2d8eadda, 0x83ed2e05, 0x5b4c6e4e, 0x8bd36bd9, 0x08213221, 0xc10d6f93, 0x6b95e658, 0xc37675cf
.word 0x1faa5898, 0x3672736f, 0x4294096d, 0xe32489ad
.section .region_1,"aw",@progbits;
region_1:
.word 0xd20ed984, 0x383dcb39, 0x22423fee, 0x61a6e163, 0x230a90b5, 0xb807df4b, 0xce46d629, 0x7412ad3f
.word 0x64506c6d, 0x8d7408a1, 0x898ed371, 0x2f05f698, 0xb453c98b, 0x004b547f, 0x148fa1ca, 0x73605579
.word 0x28866738, 0x32f42bcf, 0x5b7cee59, 0x1fc750e6, 0x2bc8475b, 0x267bced8, 0xd41db179, 0x32af1c88
.word 0xfe05971f, 0xa83e4ffb, 0xcfc598cf, 0xce065588, 0x85a68d9d, 0x2b405045, 0x050953cb, 0x927911a6
.word 0xdddfdd02, 0xaa030e01, 0x4ebf1369, 0xc6c02682, 0x6cfd4cd8, 0xc1b1c6c2, 0x8ec2646b, 0xe72a7752
.word 0x2d85f066, 0x7323dd29, 0x89719223, 0x68089bdf, 0xe5da5730, 0xc77a01a0, 0x2f7090bb, 0x6edf4a80
.word 0xa8f04b44, 0x768ffa85, 0xcd10981b, 0xc592b478, 0xe8c000ae, 0xca622485, 0xe2467b88, 0xe656acb8
.word 0x6f94c14c, 0x5cdd57c1, 0x786e2354, 0x926f8090, 0x6d85f3da, 0x5f873233, 0x7a7a4562, 0xa5b14dbc
.word 0x775452ca, 0xacc22ff9, 0xa08c1bba, 0x68e82ad9, 0x0d9766c8, 0xd7399bbd, 0xbac86076, 0x069b25a5
.word 0xc3b5e644, 0x5d93759a, 0x90a972ce, 0x0e81a579, 0xdbccd7df, 0x3b3d7acc, 0xab0fe957, 0x49c8e37b
.word 0x9130066b, 0x423ca5a9, 0x74632f41, 0x88e55831, 0x96a09511, 0x2cc586c2, 0x16376ff8, 0x4779116d
.word 0xdf2fd2de, 0x05ec8c64, 0x70426272, 0xa8aeb2a6, 0xea5ee7e6, 0xffb658d9, 0x32e3b271, 0xc58bb0a5
.word 0x6112499f, 0x4e3e36a2, 0xa7f7d353, 0xb14e70e3, 0x3a5a177a, 0x7788c963, 0xc9051b86, 0xc3eaf1fd
.word 0x029d7ea3, 0xd3f01d78, 0xf031e50e, 0xb2e94f6d, 0x29a782cf, 0xed04721d, 0x4a62f300, 0x9a15391d
.word 0x4d443790, 0xa7ddc57e, 0xdbb5ec6f, 0xb7dbdfb7, 0xe587d89a, 0xdf3124d5, 0xbdfb2527, 0x913b41b3
.word 0x8a91809d, 0xec5f38ab, 0x2e672166, 0x6a6c9d90, 0x60ca4de1, 0xfd24de18, 0xb8a28f4b, 0x93a54d22
.word 0x14be7b49, 0x9c507964, 0xfde571bb, 0x96f29170, 0xcbdb4797, 0xc48b83fd, 0x864e71e8, 0x00b4f59f
.word 0x80c569ef, 0x903d2dde, 0x389ed786, 0x677d32fe, 0x25fa8968, 0x2b537bce, 0x714453f3, 0xe8b77ae1
.word 0x95ff56e7, 0x8997cfd8, 0x1c24d945, 0xda5a2b87, 0xf51d8a9f, 0x9751b58a, 0x0f6f8a9a, 0xc5a52a33
.word 0x120e6931, 0xbd815acd, 0xea8fb584, 0x66cb1364, 0x7f460b11, 0xd8ffa8ea, 0xb809add0, 0x75763b78
.word 0x18280400, 0xe7d7c92c, 0x0032025c, 0x0657e016, 0x0545068a, 0xebc49803, 0xa367fc59, 0xc32795ad
.word 0xd0ac3e7c, 0x21569602, 0xa96f0433, 0xc2d3ff7a, 0x2e50bf6f, 0xdfee1af3, 0x3ff92281, 0x0d8c70e7
.word 0xece23ff3, 0x695c840b, 0x08ba176e, 0xad6b5b70, 0xc3cff50c, 0xdb1e6c67, 0x53a6db01, 0x20b88388
.word 0xeb5b511b, 0x15fb86f2, 0x228390cc, 0x6954fcc5, 0x7833f727, 0x35e71b96, 0x119e33ca, 0x49120402
.word 0xa57bf2ed, 0xab8c5680, 0xd7ed6f2c, 0x6acc05e8, 0x51d9512b, 0x5ff090d0, 0xf3bae9b7, 0xa116460e
.word 0x76efab33, 0x31b0481c, 0x4cd1068c, 0x38e2f0a5, 0xe46183a9, 0x7f35a0d5, 0xac88ea49, 0x67290b0a
.word 0x02f0e164, 0xc8a7b5ea, 0x34b4ea36, 0x16230cbf, 0x916240d6, 0x5bf80440, 0xb633593d, 0xac659867
.word 0xe29b72a0, 0xe98c527d, 0x7166d54f, 0x2071b2b0, 0xd5345d8c, 0x5b57b79f, 0xd7883f3c, 0xd6e06e64
.word 0xe35fb88d, 0xb039dc36, 0x454ed117, 0xb97022be, 0x8860d8e0, 0xdd11d806, 0xc786746b, 0x8b45409a
.word 0x16893175, 0xa32a6b90, 0x8580826a, 0x7b4c1422, 0xf6ef7318, 0x0da7464f, 0xd905f42d, 0x5c0fb748
.word 0xa8c18bce, 0x71f4247b, 0xf2d554c3, 0x60e9b56b, 0x563d027f, 0xa29e8a88, 0x4f0b05e6, 0x212cfce2
.word 0xdf1c12e1, 0xc456bea8, 0x79de32e7, 0xe31ba83c, 0xb697a167, 0xb4b32d3d, 0x7aab7f70, 0x793926ef
.word 0xb7eb65f0, 0x1ffc328b, 0x39cdc64a, 0xd5c63393, 0x9d13a55b, 0xa07ccfae, 0x6038aade, 0x86d8862d
.word 0x4909d84e, 0x41c58dc3, 0xe44c4097, 0xd12291fd, 0x95e6b4a8, 0x3342082a, 0x7f9046cc, 0x79bc03be
.word 0x738c0b21, 0xabb4c14f, 0x1a30025e, 0x180b2895, 0xfd0453bf, 0x22f86ef8, 0x2b757841, 0x6f23c328
.word 0x632121fd, 0x31e5b5fb, 0x4dce552b, 0x970bf3ef, 0x7550c48a, 0x1fe4fe01, 0xc41d1176, 0x12b12e5e
.word 0xf7a5c906, 0x02bc7a5a, 0x04243be0, 0x6d030099, 0x99895202, 0xd7750773, 0xac0eee89, 0xee2c8d76
.word 0x3cb4f5b2, 0xd2822f31, 0x4be547a6, 0x94289cf2, 0x251d8dd1, 0xb99b0f94, 0xc92ea2eb, 0xd4f54c1a
.word 0xd94d8d09, 0x0934556f, 0x7d4b8e86, 0x773bf578, 0x410d4adc, 0xcaa38bbe, 0x3d9875ce, 0xd968a905
.word 0xf3453f14, 0x67d1e36a, 0x1d30735b, 0x34ee9259, 0xf69c1524, 0xc73cd85f, 0x8971ea1e, 0xe478daaa
.word 0x7b56f7e6, 0xe812841f, 0x35c9b9d9, 0x7267549f, 0x701a3ecc, 0x77cff9b8, 0xd3637640, 0x4cd153d5
.word 0xae1b33e0, 0x68c0e42e, 0x9f4457cc, 0x4bc90a99, 0x62e7878a, 0x8b05b2b6, 0xb07ea8f8, 0xa8190841
.word 0xca95c735, 0x9c35e59c, 0x6a07cf60, 0x45adb703, 0x510f0b43, 0xe5646542, 0x7d633faf, 0x7d52c62f
.word 0x52b0ab3f, 0xdf808fa6, 0xd7d2166b, 0xcbb3d834, 0xc701a809, 0xc35319d9, 0x4cf8a844, 0x33c9d27b
.word 0x8c6ad5cc, 0xfca6bc20, 0x0310423c, 0x7929696f, 0x5111bd32, 0xf8af20d3, 0xc429cf30, 0x913c855e
.word 0x99778368, 0xaa816252, 0x1ca0a835, 0xf21a1dbd, 0xc18ebcf9, 0x7237ce0f, 0x74e918cc, 0x8652e51a
.word 0x82eb4af1, 0xa9416393, 0x0b2d508d, 0xc24f4426, 0x8c7417e6, 0x4918fd05, 0x25ddd0ee, 0xe36c6711
.word 0x04629f00, 0xcf861d89, 0x4b93669e, 0x1c8da809, 0xd1e10881, 0xac5774c8, 0xb274d6ef, 0x07a69198
.word 0x567a2ea5, 0xe8408e72, 0x2a6e595d, 0x191a5a95, 0xca779527, 0x429cf620, 0x49601996, 0x461c1545
.word 0x374edb32, 0xf69618b1, 0x7d4d04f6, 0x7e68aa63, 0xb390b175, 0x9adcf9ed, 0x982a464b, 0x6bd84c1d
.word 0x7ad99364, 0xe438b82e, 0xd6869995, 0xba650006, 0x8baea76e, 0x880e9581, 0x8d09d849, 0x0f6b80c7
.word 0x6a25a77a, 0x86f13142, 0x99a8a8e5, 0xa6d58193, 0x25a9f01e, 0x597fa452, 0xbd9cc702, 0x0b5062af
.word 0x54dd5a73, 0x56c203e0, 0x8c6efb83, 0x4a3e46c6, 0x688104c4, 0x65f74bfd, 0xaa91617e, 0x82460734
.word 0xa1797b43, 0xbc8c0849, 0x2178912f, 0x32efaf55, 0x0b6a5de8, 0xdeac0640, 0xba0b7d98, 0x9cba59b0
.word 0x0cd82704, 0xf7750d33, 0x5274087f, 0x70f13b54, 0x26be04ac, 0xfd1a567a, 0xa5658fe7, 0xc5401117
.word 0x8bec73cd, 0x4f7e7bb7, 0x2ca62d7b, 0xc5d0af34, 0xebf9285d, 0xeed0dbeb, 0x0ec50395, 0x52ca1e98
.word 0xfb5cf984, 0xc22250c1, 0xd51e950e, 0x42074316, 0x967b425c, 0x3c45b534, 0x8009b2c3, 0xa107865f
.word 0x499766ee, 0x582ca825, 0x746865eb, 0x31b1af71, 0xbe23304c, 0xe69a8576, 0xa14d04d2, 0x46bc0ef1
.word 0x1696a210, 0x6c3791a4, 0x3d392c5b, 0x99f95e18, 0x14bbc37a, 0xd4856763, 0x6a134d43, 0x9ae81c72
.word 0xccacce3a, 0x336db6c2, 0x572db27a, 0xcca827e7, 0x8f2c9bfd, 0x6aae1a0c, 0x74e4e36f, 0x8feae915
.word 0xbaff3bf8, 0xa4078dee, 0xcb3dcd59, 0xbd4d09fb, 0x6a9e0dc6, 0x006fbe33, 0x95ed919e, 0xcf6bb4d3
.word 0x01faaba2, 0x48de673b, 0x74ed990b, 0xdc14b798, 0x3f50eea4, 0x059c6632, 0xd9dd192c, 0xfe6237a0
.word 0xe417f605, 0xa2422628, 0x8c1853be, 0xd7e7044f
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
                  add x5, x6, zero
                  csrr x4, 0x300 # MSTATUS
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 31
                  bne x4, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x4, 0x341 # MEPC
                  csrr x4, 0x342 # MCAUSE
                  li x16, 0x3 # BREAKPOINT
                  beq x4, x16, ebreak_handler
                  li x16, 0x8 # ECALL_UMODE
                  beq x4, x16, ecall_handler
                  li x16, 0x9 # ECALL_SMODE
                  beq x4, x16, ecall_handler
                  li x16, 0xb # ECALL_MMODE
                  beq x4, x16, ecall_handler
                  li x16, 0x1
                  beq x4, x16, instr_fault_handler
                  li x16, 0x5
                  beq x4, x16, load_fault_handler
                  li x16, 0x7
                  beq x4, x16, store_fault_handler
                  li x16, 0xc
                  beq x4, x16, pt_fault_handler
                  li x16, 0xd
                  beq x4, x16, pt_fault_handler
                  li x16, 0xf
                  beq x4, x16, pt_fault_handler
                  li x16, 0x2 # ILLEGAL_INSTRUCTION
                  beq x4, x16, illegal_instr_handler
                  csrr x16, 0x343 # MTVAL
                  1: la x30, test_done
                  jalr x1, x30, 0

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
                  la x30, write_tohost
                  jalr x0, x30, 0

instr_fault_handler:
                  add x6, x5, zero
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
                  add x6, x5, zero
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
                  add x6, x5, zero
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
                  csrr  x4, 0x341
                  addi  x4, x4, 4
                  csrw  0x341, x4
                  add x6, x5, zero
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
                  csrr  x4, 0x341
                  addi  x4, x4, 4
                  csrw  0x341, x4
                  add x6, x5, zero
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
                  csrr  x4, 0x300 # MSTATUS;
                  csrr  x4, 0x304 # MIE;
                  csrr  x4, 0x344 # MIP;
                  csrrc x4, 0x344, x4 # MIP;
                  add x6, x5, zero
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
