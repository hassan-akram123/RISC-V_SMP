.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x1, h0_start
jalr x0, x1, 0
h0_start:
                  li x24, 0x40000100
                  csrw 0x301, x24
kernel_sp:        
                  la x16, kernel_stack_end

trap_vec_init:    
                  la x24, mtvec_handler
                  ori x24, x24, 1
                  csrw 0x305, x24 # MTVEC

mepc_setup:       
                  la x24, init
                  csrw 0x341, x24

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x24, 0x1800
                  csrw 0x300, x24 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x0
                  li x2, 0x2
                  li x3, 0x80000000
                  li x4, 0xe
                  li x5, 0x80000000
                  li x6, 0xb
                  li x7, 0x686a5491
                  li x8, 0xf15e442
                  li x9, 0x38a5142d
                  li x10, 0x80000000
                  li x11, 0xe
                  li x12, 0xf4774ed6
                  li x13, 0x80000000
                  li x14, 0x8a63dd6b
                  li x15, 0xafdf2c1a
                  li x17, 0xfe237e3e
                  li x18, 0xf9d6bd8d
                  li x19, 0x0
                  li x20, 0x80000000
                  li x21, 0x53a53f8a
                  li x22, 0x80000000
                  li x23, 0x80000000
                  li x24, 0xc5935470
                  li x25, 0xfdc6c80c
                  li x26, 0xf663f067
                  li x28, 0x100a8c05
                  li x29, 0x80000000
                  li x30, 0x80000000
                  li x31, 0xdba17e4e
                  la x27, user_stack_end
main:             srl          s10, s11, a6
                  la           a4, sub_1
                  addi         a4, a4, -13
                  sltiu        s8, sp, 1263
                  xori         tp, t5, 1278
                  xor          s4, s9, t0
                  sll          tp, t3, gp
                  slli         s10, s6, 12
                  addi         gp, a2, 430
                  or           s5, t6, a2
main_j2:          jalr         s2, a4, 14 #jump main -> sub_1
                  la           t6, region_0+510 #start riscv_load_store_rand_instr_stream_0
                  lb           a3, 15(t6)
                  auipc        s0, 674023
                  auipc        s10, 1020335
                  sb           s6, -43(t6)
                  sltiu        t3, t4, -1706
                  lhu          a4, 60(t6)
                  auipc        s5, 648664
                  srai         s10, a1, 0
                  slti         s8, a4, -394
                  sh           a3, -60(t6)
                  lb           s3, -62(t6)
                  lb           s2, 52(t6)
                  and          t5, s6, a4
                  addi         s6, t3, -1276
                  sub          s7, s1, ra
                  slt          s7, s9, t4
                  lb           a3, 26(t6)
                  sh           s7, 26(t6)
                  lui          a4, 406065
                  sb           a6, -8(t6)
                  srai         s5, a6, 4
                  lhu          a1, -14(t6)
                  lb           s1, 33(t6)
                  lb           a0, 46(t6)
                  slli         a7, t3, 16
                  slt          tp, tp, sp
                  add          s6, s11, sp
                  xor          t1, t6, gp
                  andi         a2, s5, -64
                  lbu          s3, 4(t6)
                  sb           ra, 49(t6)
                  lui          s3, 956546
                  sb           a6, 25(t6)
                  lb           a7, 8(t6)
                  lb           tp, 45(t6)
                  auipc        s8, 695034
                  lh           s2, 8(t6)
                  sltiu        a3, t2, -1630
                  xori         t1, t3, -580
                  sh           a0, 40(t6)
                  lbu          s10, -43(t6)
                  lbu          zero, 37(t6)
                  lui          gp, 693899
                  lhu          t2, -10(t6)
                  sb           s2, 35(t6) #end riscv_load_store_rand_instr_stream_0
                  bge          t1, s4, 12f
                  lui          s2, 731904
                  bge          gp, s9, 12f
                  lui          s8, 613445
                  sra          a5, a4, s10
                  xori         t1, gp, -825
                  addi         a4, t2, -776
                  slt          s9, a2, gp
                  ori          t1, t3, -1018
                  lui          s10, 482666
                  slli         t4, s5, 17
                  la           s5, sub_1
                  srai         tp, s7, 8
                  addi         s5, s5, -387
                  xori         gp, a2, 1116
                  bltu         a5, a4, main_j1 #branch to jump instr
                  add          a5, a1, t3
main_j1:          jalr         s2, s5, 388 #jump main -> sub_1
                  sltu         s1, a5, s9
                  addi         s7, zero, 40
                  slti         gp, a3, 1836
                  or           s0, s11, zero
                  slt          a3, t4, s2
12:               addi         t4, s6, 1945
                  la x1, test_done
                  jalr x0, x1, 0
test_done:        
                  li gp, 1
                  ecall
sub_7:            bne          s7, s3, sub_7_stack_p
                  slli         a5, sp, 1
                  xori         gp, a6, 502
sub_7_stack_p:    addi         s11, s11, -36
                  add          a1, s11, ra
                  sltu         s1, a6, a7
                  sw           s2, 4(s11)
                  xor          s4, s7, a7
                  and          t0, s6, a3
                  srai         tp, sp, 16
                  slli         t5, s11, 15
                  beq          sp, s3, 9f
                  blt          a0, s9, 20f
                  srai         t6, s7, 24
                  sll          gp, s3, ra
                  sub          gp, a2, s0
                  srai         s10, a2, 30
                  bgeu         a2, t3, 13f
9:                xori         sp, t6, 523
                  sra          t4, t6, t4
                  auipc        sp, 560378
                  sltu         s5, s8, s10
13:               srl          s4, a0, tp
                  xor          a4, s1, t6
                  bgeu         zero, sp, 26f
                  lui          t6, 304242
                  bge          t1, t0, 27f
                  auipc        zero, 969882
                  beq          s0, t4, 25f
20:               sub          t6, t4, zero
                  la           a4, region_0+979 #start riscv_load_store_rand_instr_stream_0
                  sll          s3, a5, ra
                  lbu          t5, -913(a4)
                  lhu          gp, 351(a4)
                  sb           zero, -136(a4)
                  lhu          a5, -585(a4)
                  lb           gp, -184(a4)
                  sb           gp, 732(a4)
                  slt          t0, a3, s1
                  addi         tp, t4, 638
                  nop
                  srai         s10, s8, 6
                  lbu          sp, -550(a4)
                  sh           s11, -783(a4)
                  srai         t1, s3, 30
                  nop
                  sb           sp, -301(a4)
                  lb           s0, -500(a4)
                  auipc        t0, 312216
                  andi         s10, t2, 44
                  xor          s4, tp, tp
                  sb           t1, -787(a4)
                  sub          t4, a1, s9
                  lh           s4, -919(a4)
                  lbu          t4, 932(a4)
                  lh           t1, -739(a4)
                  sltu         t0, a4, a3
                  sub          t4, tp, s2
                  srl          tp, s11, t6
                  sb           a6, 308(a4)
                  lb           t2, 647(a4)
                  slli         t0, a6, 21
                  sb           a4, -88(a4)
                  sb           s6, 410(a4)
                  sb           t3, -62(a4)
                  lb           s0, -835(a4)
                  lhu          s10, 435(a4)
                  sb           s11, -666(a4)
                  sra          s6, s7, s9
                  lh           s8, -895(a4)
                  sh           t3, 45(a4)
                  add          s1, s5, t4
                  add          s1, a5, s9
                  lb           a7, -118(a4)
                  andi         zero, ra, -1383
                  sb           s7, -446(a4) #end riscv_load_store_rand_instr_stream_0
                  srai         a1, s9, 16
                  sub          s6, t4, ra
                  nop
                  or           sp, s3, s1
25:               sltiu        s2, s8, -1313
26:               slti         a2, s8, 2009
27:               ori          t3, ra, -1909
                  sltu         s8, s8, zero
                  nop
                  bge          s7, a3, 41f
                  xor          a1, s8, s6
                  slt          a5, s8, tp
                  lui          a7, 254103
                  sra          s8, a0, s3
                  xor          a1, a3, a1
                  slli         s6, t4, 22
                  xor          t0, s5, a3
                  sll          t0, s0, s4
                  add          s4, s0, s1
                  or           s1, t3, a0
41:               nop
                  slli         s1, sp, 13
                  bltu         a7, s2, 62f
                  and          s6, t0, s9
                  or           s0, a2, t4
                  nop
                  sltu         s8, t0, ra
                  sra          s10, t6, a4
                  slli         s3, s11, 17
                  nop
                  andi         a7, sp, -1989
                  or           s9, zero, sp
                  lui          s8, 678849
                  bltu         s11, s0, 71f
                  bne          a1, s7, 70f
                  ori          zero, s0, 849
                  blt          s3, t6, 62f
                  srli         s6, s9, 3
                  slti         s5, a2, 1560
                  slli         a2, s0, 20
                  auipc        t4, 645084
62:               and          a3, a2, s1
                  addi         s9, a7, 953
                  xori         s6, a3, -1000
                  sltu         s5, a4, a5
                  bne          t2, t6, 74f
                  slt          a5, s0, s6
                  andi         s1, a1, -2016
                  srli         a7, s0, 19
70:               blt          a1, s5, 90f
71:               slti         s7, s6, -1251
                  nop
                  auipc        t4, 899686
74:               ori          zero, tp, 63
                  sub          s1, t4, a5
                  and          gp, t0, s2
                  sltu         sp, t2, a5
                  blt          t6, t0, 90f
                  add          a1, s2, a6
                  sra          t3, s1, t2
                  srai         s6, t5, 23
                  slti         s1, s7, -414
                  auipc        s10, 226747
                  bge          t1, s4, 85f
85:               ori          s10, t4, 1545
                  slt          s3, s5, s3
                  lui          a5, 433688
                  slti         s3, s4, -905
                  sra          gp, s5, s3
90:               beq          gp, a1, 91f
91:               slt          s4, ra, a6
                  ori          t6, t0, 1355
                  sll          s6, a1, s1
                  nop
                  sll          s7, t3, a7
                  xor          s5, a6, t6
                  bltu         a4, gp, 102f
                  srl          s3, s10, gp
                  slt          s3, a2, s11
                  beq          a5, s6, 111f
                  bltu         s8, s9, 110f
102:              lui          sp, 553239
                  bltu         a3, t0, 118f
                  nop
                  sub          s1, s8, a7
                  srai         sp, sp, 12
                  sra          s1, t4, t6
                  sltiu        a3, s7, -400
                  nop
110:              sll          gp, zero, s10
111:              sub          a3, a6, s5
                  auipc        s1, 986415
                  sltiu        s10, t5, 1048
                  slti         s10, a1, -367
                  slt          s5, t6, t1
                  add          s1, s4, sp
                  bgeu         s5, s2, 121f
118:              srai         s10, s2, 9
                  xori         s6, a5, -37
                  bgeu         t1, s1, 122f
121:              sltu         t0, s4, t0
122:              bltu         t1, t1, 123f
123:              ori          s6, s3, 1137
                  sll          t5, s11, s9
                  lui          t0, 157272
                  sll          gp, a1, a4
                  xor          s3, s7, s7
                  and          a0, a4, t4
                  sub          a1, t5, t5
                  xori         a1, s6, -1934
                  and          tp, a0, s2
                  sra          s6, s8, s0
                  bge          s10, gp, 135f
                  xori         s2, s6, 1359
135:              bge          s11, s7, 143f
                  slli         a4, ra, 20
                  bltu         t3, a5, 157f
                  srli         a2, t2, 8
                  nop
                  sll          a5, a2, ra
                  sra          s0, ra, t2
                  la           a7, sub_10
                  slt          zero, s0, a6
                  slti         a4, t1, 1363
                  slli         sp, s1, 6
                  srl          gp, s7, sp
                  sll          s0, s3, t4
                  addi         a7, a7, -917
                  lui          s8, 456680
                  beq          t1, a6, sub_7_j13 #branch to jump instr
                  and          a4, ra, a5
                  andi         a5, s8, -115
sub_7_j13:        jalr         s2, a7, 917 #jump sub_7 -> sub_10
                  sub          a1, ra, s9
                  lui          a7, 380857
143:              sll          t4, s7, s6
                  addi         a1, s4, 706
                  and          sp, sp, t5
                  add          s8, s10, t0
                  auipc        t2, 741483
                  srai         a0, a5, 14
                  sra          t3, s8, s5
                  auipc        a2, 434336
                  ori          a3, t5, 71
                  add          s9, s5, s5
                  addi         t4, t3, -609
                  add          s9, t3, a4
                  bgeu         tp, t2, 164f
                  bge          a2, s3, 160f
157:              blt          a2, s7, 168f
                  addi         a2, s8, -506
                  beq          a2, a2, 167f
160:              slti         s4, zero, -11
                  auipc        s0, 248482
                  lui          t6, 133930
                  sub          s4, t0, sp
164:              addi         zero, ra, 914
                  sltu         t4, s7, t1
                  auipc        s9, 754114
167:              addi         t1, sp, 453
168:              add          t2, a1, zero
                  or           s8, s0, s11
                  srai         s5, t3, 11
                  blt          t1, t3, 179f
                  beq          t2, a5, 179f
                  srai         t1, sp, 30
                  andi         s5, s5, 1759
                  bgeu         a3, a5, 176f
176:              sltiu        t4, a3, -1155
                  srl          sp, a5, a4
                  srli         s3, s11, 22
179:              bge          t4, s7, 188f
                  and          t4, t4, s3
                  blt          tp, a0, 189f
                  auipc        a2, 62886
                  xor          a2, s8, a1
                  addi         s6, s2, -1776
                  sll          a1, s5, a3
                  bge          s7, a1, 196f
                  slti         s6, t2, 1798
188:              bne          a2, tp, 189f
189:              add          sp, t6, a5
                  and          t2, s5, a0
                  srai         t2, a0, 5
                  sll          a1, a7, t5
                  srai         s10, t0, 31
                  nop
                  xor          gp, tp, sp
196:              slti         s4, t6, 815
                  bne          s6, t3, 212f
                  beq          s2, a5, 209f
                  sltiu        t5, s10, 394
                  slti         s8, a2, 390
                  sub          a3, s4, s0
                  sra          a7, t3, a0
                  xori         gp, s0, -8
                  xori         s10, ra, 1399
                  bltu         zero, s11, 217f
                  blt          a1, sp, 211f
                  xor          s2, s5, s11
                  srl          a7, ra, t0
209:              xor          s10, t5, a2
                  sltiu        t3, t4, 1097
211:              srli         t5, zero, 18
212:              sltu         t0, s4, a4
                  sltiu        a3, s5, 409
                  beq          s0, s7, 219f
                  blt          a1, t1, 224f
                  sltu         s2, a1, t6
217:              beq          s7, s5, 219f
                  bltu         gp, s2, 233f
219:              bgeu         s3, a2, 230f
                  sltu         s0, a1, s5
                  bgeu         t6, t5, 232f
                  sltiu        s4, s6, -1409
                  bge          a6, s8, 225f
224:              srl          t6, a4, zero
225:              sra          t6, t1, s9
                  blt          t1, s9, 245f
                  add          s6, s7, s6
                  slli         s10, a0, 10
                  sltu         t2, t1, t6
230:              bltu         s4, s10, 235f
                  or           a5, t1, s4
232:              xori         s7, s8, 1964
233:              slt          s5, t1, s5
                  addi         s7, tp, 1119
235:              xor          sp, s11, t1
                  ori          s0, a7, -842
                  srai         t6, s1, 17
                  srli         a7, s8, 2
                  bgeu         s2, t2, 245f
                  sltu         s6, tp, t5
                  andi         t4, ra, 503
                  sll          t6, t1, gp
                  sltiu        a7, a6, -196
                  add          a4, t0, s0
245:              sub          s8, s10, s0
                  srai         zero, a0, 22
                  sra          a2, t4, s4
                  lw           s2, 4(s11)
                  srai         a0, s0, 3
                  addi         s11, s11, 36
                  nop
                  sra          a3, t2, a1
                  sltiu        zero, s9, 1442
                  sub          t1, a1, t6
                  sra          s0, ra, gp
                  sra          s3, a7, s4
325:              addi x11, x18, 1
325:              jalr x11, x11, 0
sub_9:            slt          a0, t1, t2
                  beq          ra, t4, sub_9_stack_p
sub_9_stack_p:    addi         s11, s11, -48
                  andi         a0, a4, -1704
                  sw           s2, 4(s11)
                  slt          gp, s4, a6
                  slli         t2, ra, 0
                  srl          a4, s0, t5
                  sltiu        t4, a2, 1625
                  slti         t4, sp, 1080
                  bne          s8, s4, 18f
                  auipc        t5, 506082
                  or           a4, s2, t4
                  slli         t4, t4, 24
                  sra          a0, ra, s10
                  srai         sp, sp, 31
                  srai         zero, a1, 5
                  sll          a2, s9, s5
                  srli         t2, s0, 13
                  xor          a2, t4, t0
                  sltu         a2, s9, t2
                  and          t2, s7, t3
                  bltu         gp, a3, 33f
                  srli         t6, zero, 11
18:               srl          t0, t3, a6
                  and          a0, t1, t3
                  srli         t4, t4, 7
                  bgeu         a7, s9, 32f
                  sub          t1, t1, s8
                  xori         t3, s8, -375
                  srai         a4, t5, 0
                  slt          zero, a7, s4
                  slt          s1, t6, s0
                  bltu         s10, a2, 36f
                  lui          t4, 1033379
                  ori          s8, t3, 693
                  bgeu         zero, t4, 42f
                  slli         s2, a0, 13
32:               slt          gp, tp, a2
33:               nop
                  slli         s6, s3, 29
                  nop
36:               sub          s4, s4, a3
                  beq          gp, t5, 41f
                  sltiu        t5, ra, 321
                  sra          t5, a4, a5
                  add          a5, a3, t1
41:               nop
42:               slti         s1, s2, 533
                  sra          s4, sp, s8
                  andi         s7, a1, 1042
                  sub          sp, s11, t5
                  xori         s9, a1, 1384
                  add          a7, s1, zero
                  andi         tp, s8, 1418
                  add          a3, s8, a0
                  srl          a4, s9, t0
                  andi         s3, t0, -1012
                  slt          s2, t2, s0
                  slti         a4, a6, -1366
                  xor          s3, a2, t6
                  add          s8, s5, t1
                  add          gp, a3, a6
                  sub          s0, s11, s0
                  add          sp, zero, t6
                  bgeu         t1, s5, 67f
                  beq          t1, s3, 79f
                  xori         t5, sp, 1156
                  and          a1, t0, s7
                  or           a0, a4, t1
                  sltu         t2, a0, s5
                  srli         s7, s2, 24
                  slli         a7, t6, 6
67:               slli         s5, a1, 20
                  and          a7, s6, t0
                  andi         s3, a5, -245
                  and          t1, a1, s2
                  xor          a1, ra, t4
                  add          s10, s0, t6
                  or           tp, s2, s4
                  andi         t6, a7, 1166
                  sub          zero, s11, s4
                  ori          s1, s8, -1652
                  sra          s1, t4, s3
                  sll          s9, gp, s9
79:               srai         t5, tp, 8
                  slti         t5, a6, 1933
                  bgeu         a3, s8, 84f
                  bgeu         s3, a7, 97f
                  beq          t2, s5, 92f
84:               sll          t6, gp, t3
                  add          sp, t1, s0
                  addi         tp, a0, 271
                  sltu         s1, s0, a5
                  slt          s7, s3, a1
                  bgeu         a1, s10, 92f
                  sltu         s8, a2, s0
                  xori         s10, a5, -1095
92:               srli         gp, a4, 4
                  slti         s1, t5, -1588
                  srl          s2, ra, t1
                  addi         zero, ra, 492
                  srai         a3, t2, 19
97:               ori          s9, s11, 638
                  beq          a3, a5, 112f
                  bgeu         t1, t1, 104f
                  sub          s5, a6, sp
                  nop
                  xor          t3, t3, s9
                  add          s9, a5, a5
104:              bgeu         t3, t2, 110f
                  nop
                  sltiu        s4, s6, 538
                  bne          a7, a3, 116f
                  andi         s7, t6, 409
                  bgeu         a4, a5, 111f
110:              srli         t4, a5, 13
111:              addi         t6, sp, 1187
112:              or           t4, t2, a3
                  sub          a1, gp, ra
                  and          a5, a7, s10
                  bltu         s4, t5, 117f
116:              andi         tp, s4, -1032
117:              blt          a0, tp, 134f
                  xori         s1, s5, -1467
                  slt          a4, s4, t4
                  add          s5, s11, a1
                  lui          t0, 985913
                  ori          t6, s1, -969
                  sub          a0, t6, s8
                  sub          a7, a6, a3
                  srl          tp, t5, t6
                  sll          s0, s5, t5
                  andi         t0, a2, -993
                  blt          ra, t1, 145f
                  add          s6, a1, a0
                  lui          t5, 46083
                  andi         s10, s8, -1273
                  lui          s1, 30847
                  sra          a4, gp, s11
134:              or           gp, s9, s10
                  or           t4, s9, t4
                  addi         s6, ra, 49
                  or           a2, t1, s5
                  blt          s0, a4, 140f
                  and          s3, t0, a7
140:              srli         s4, s7, 13
                  bltu         s0, a0, 157f
                  sltiu        a4, s5, -212
                  auipc        t3, 1005772
                  sltiu        t3, t4, 1536
145:              slli         s3, a5, 3
                  slti         s0, t2, -815
                  xor          s7, gp, sp
                  blt          s9, s2, 165f
                  srli         a5, s7, 18
                  srai         a2, s8, 15
                  addi         a3, t3, -1379
                  bltu         s9, gp, 165f
                  sltu         s4, t1, a0
                  slt          a2, a0, a3
                  slti         s6, sp, -1669
                  sll          a2, a2, sp
157:              nop
                  slli         s10, s9, 26
                  sra          t0, sp, tp
                  sra          a7, s5, s5
                  xor          sp, t0, s6
                  andi         s10, a5, 1087
                  add          t2, t1, s0
                  beq          gp, a1, 182f
165:              addi         t3, zero, 1600
                  sltu         tp, s7, a0
                  sltu         zero, a4, a3
                  sltiu        s5, t2, 668
                  bltu         a6, t2, 178f
                  srl          s1, s0, s3
                  slli         s4, s4, 8
                  sub          t5, tp, a1
                  srl          gp, s11, s1
                  ori          a3, ra, -966
                  and          s4, ra, a6
                  sltiu        t6, s0, 2000
                  slli         s5, s10, 16
178:              andi         sp, sp, -1058
                  srl          s4, s2, s10
                  add          a1, s8, s0
                  or           s1, a5, s4
182:              sltiu        t1, s1, -942
                  sra          a7, a4, t5
                  or           t0, a2, a0
                  xori         sp, a2, 128
                  blt          a6, t4, 201f
                  blt          s11, zero, 194f
                  sll          s1, s0, s4
                  addi         a1, s0, -800
                  bltu         t4, t6, 192f
                  blt          s11, s7, 206f
192:              add          a4, a3, s1
                  lui          s9, 851176
194:              bltu         s7, s2, 206f
                  bltu         a5, s7, 210f
                  sub          s0, s11, ra
                  slti         s1, a1, 173
                  bne          s11, t4, 207f
                  and          t2, a4, a3
                  blt          ra, s5, 207f
201:              add          a1, s8, s9
                  bgeu         a3, t2, 211f
                  bgeu         s6, t2, 220f
                  auipc        t3, 794380
                  bgeu         a5, s4, 222f
206:              xor          s5, t3, a7
207:              blt          sp, s3, 215f
                  sltu         a4, tp, s11
                  beq          s11, s5, 211f
210:              blt          tp, t0, 213f
211:              auipc        t3, 628734
                  or           a5, s3, s1
213:              xori         zero, sp, 2008
                  srl          s10, t3, s10
215:              srl          zero, a3, t3
                  la           s4, region_1+1269 #start riscv_load_store_rand_instr_stream_1
                  add          s1, a2, a7
                  sb           s7, -38(s4)
                  sb           t2, 30(s4)
                  slli         t1, s7, 2
                  sltu         a1, s0, ra
                  auipc        t6, 1020918
                  lh           gp, -17(s4)
                  lbu          a3, -44(s4)
                  sltiu        a4, a7, -1734
                  lb           s3, 49(s4)
                  lh           s7, 31(s4)
                  lbu          t6, 6(s4)
                  lb           s9, -64(s4)
                  lbu          a0, -46(s4)
                  lbu          t2, -58(s4)
                  ori          s2, t6, -458
                  slti         t5, a4, -1578
                  sw           t3, -5(s4)
                  and          t3, a2, sp
                  sb           t0, -52(s4)
                  sh           t2, 59(s4)
                  lbu          tp, 28(s4)
                  srl          t2, ra, t6
                  slli         s1, s11, 8
                  addi         t6, zero, -539
                  and          a2, s0, gp
                  sb           s6, -35(s4)
                  add          s8, t2, t3
                  slt          a0, a1, t5
                  lbu          a5, 2(s4)
                  lhu          zero, -35(s4)
                  sh           s5, -53(s4)
                  sb           a1, 17(s4)
                  lbu          s0, 29(s4)
                  sb           s11, 2(s4)
                  andi         s5, a3, 757
                  lbu          t3, -2(s4) #end riscv_load_store_rand_instr_stream_1
                  slt          a2, a1, t0
                  sra          tp, a3, a6
                  srl          s1, s0, gp
                  sll          s4, a4, s2
220:              sra          a7, zero, s4
                  xor          a5, s9, a3
222:              slt          s3, s5, s2
                  srai         gp, a1, 14
                  sra          s3, a2, s11
                  xor          t6, t4, s11
                  lui          s8, 629581
                  slti         t5, gp, 1463
                  sll          a7, a0, s3
                  srai         a0, a5, 1
                  beq          t6, s10, 247f
                  addi         s4, s7, -1749
                  ori          s9, s7, -1042
                  addi         s6, tp, -1784
                  sub          t2, ra, ra
                  bge          a6, ra, 238f
                  add          t6, s11, t4
                  slli         sp, sp, 11
238:              slli         s1, s2, 23
                  sll          a4, s6, s1
                  nop
                  sub          s0, a4, a6
                  sra          tp, t6, a0
                  srli         s2, s7, 0
                  slti         t1, t5, -771
                  nop
                  slti         a7, s5, -198
247:              beq          s5, a2, 262f
                  bne          a0, tp, 261f
                  nop
                  bne          gp, s5, 267f
                  add          a4, t6, t4
                  and          t2, a2, t2
                  slli         s5, s8, 10
                  xori         a2, t4, 929
                  addi         s8, t4, 423
                  sltiu        t2, ra, 1227
                  slti         s7, s4, -1776
                  bgeu         t1, s0, 260f
                  and          s8, s9, a7
260:              bltu         a7, s5, 266f
261:              sub          a4, s8, t5
262:              xori         a0, ra, 1475
                  and          s1, tp, s10
                  blt          t3, s6, 283f
                  ori          s1, t3, -179
266:              beq          a2, s4, 270f
267:              sra          s1, gp, s11
                  and          sp, t6, s1
                  sltu         a2, t3, s10
270:              srai         s8, tp, 22
                  sra          s1, s8, s8
                  lui          s8, 1093
                  sub          sp, t6, tp
                  bne          gp, t6, 290f
                  srai         t6, t5, 2
                  and          s7, a3, zero
                  bltu         tp, t5, 279f
                  ori          zero, gp, -108
279:              blt          t5, t2, 294f
                  srli         s7, t1, 4
                  addi         t4, tp, 1820
                  or           tp, t0, s8
283:              slt          s1, t6, s5
                  xori         t6, tp, 631
                  and          t0, a7, s2
                  sll          t1, a7, s11
                  slli         s2, zero, 19
                  ori          s5, s6, 1504
                  or           s2, s3, a0
290:              sub          a2, a2, t1
                  ori          t5, ra, 1534
                  nop
                  lui          t1, 575142
294:              lui          s5, 977546
                  blt          a7, zero, 309f
                  addi         sp, sp, -1800
                  slti         s6, t6, 1295
                  la           sp, region_0+997 #start riscv_load_store_rand_instr_stream_0
                  lui          t0, 884721
                  sh           zero, 51(sp)
                  lbu          a3, -62(sp)
                  sb           s3, -84(sp)
                  lhu          s6, -225(sp)
                  sb           t0, -119(sp)
                  xori         t0, gp, -115
                  sra          t1, zero, a1
                  sltu         gp, s3, t5
                  lbu          gp, 163(sp)
                  lh           a2, 23(sp)
                  nop
                  sb           gp, 105(sp)
                  lhu          a4, 241(sp)
                  sh           sp, 63(sp)
                  sh           t1, -253(sp)
                  lb           s5, 102(sp)
                  lb           s9, -37(sp)
                  nop
                  lb           s10, -84(sp)
                  sb           a4, -112(sp)
                  ori          t4, s1, 682
                  sb           t0, 54(sp)
                  lui          gp, 311907
                  sh           sp, -51(sp)
                  sh           t4, 205(sp)
                  addi         s9, t0, 777
                  sb           a2, -134(sp)
                  xori         s1, s6, -138
                  lbu          s10, 38(sp) #end riscv_load_store_rand_instr_stream_0
                  blt          a7, gp, 312f
                  sra          s2, s0, t5
                  ori          s10, s5, 457
                  andi         s5, s6, 1566
                  slti         s4, a1, -1466
                  nop
                  bltu         zero, ra, 312f
                  auipc        s5, 773032
                  beq          t1, s7, 312f
                  slti         s2, t1, -14
                  srl          a4, t0, s2
309:              xor          a5, t0, s0
                  srli         t2, t3, 31
                  ori          s8, s6, -1565
312:              slti         a5, s10, -1520
                  andi         a2, ra, 1659
                  lw           s2, 4(s11)
                  addi         s11, s11, 48
                  ori          t2, s8, 741
                  srl          s5, a6, t6
393:              addi x7, x18, 1
393:              jalr x7, x7, 0
sub_2:            bltu         s4, a0, sub_2_stack_p
                  slli         s8, tp, 26
                  sltu         t5, s10, s5
                  sra          s5, a2, s10
                  sub          s7, t6, a4
                  ori          s3, s1, -522
                  and          a5, s11, ra
                  or           tp, t2, a5
sub_2_stack_p:    addi         s11, s11, -24
                  add          t4, s4, t0
                  sw           s2, 4(s11)
                  slli         a4, s2, 27
                  or           t4, s10, s3
                  andi         s5, s9, -161
                  add          s1, t3, a7
                  ori          a3, a2, -932
                  add          zero, a6, s3
                  xor          a4, s8, s0
                  nop
                  srai         a4, t3, 20
                  slt          zero, s11, s9
sub_2_j4:         jal          s2, sub_3 #jump sub_2 -> sub_3
                  auipc        a0, 682534
                  nop
                  xor          s1, t0, a5
                  srli         t5, s9, 21
                  sub          s6, a1, s0
                  andi         t0, t4, 657
                  sub          a1, s0, gp
sub_2_j5:         jal          s2, sub_3 #jump sub_2 -> sub_3
                  xor          s1, a0, t2
                  nop
                  or           a7, s9, a3
                  sltiu        a1, t0, 1202
                  auipc        s10, 656522
                  bge          gp, t2, 12f
                  slli         s4, a0, 1
                  ori          tp, s8, -1666
                  and          gp, sp, a1
                  and          s1, s2, a5
                  slli         a0, zero, 12
                  ori          t4, s1, 21
12:               auipc        s2, 511223
                  srai         a4, s9, 10
                  and          s9, s1, a2
                  lw           s2, 4(s11)
                  sltiu        zero, t0, 632
                  addi         a1, t6, 669
                  srli         a3, t5, 11
                  addi         s11, s11, 24
                  srli         t3, gp, 4
                  sltiu        tp, s5, 254
                  sra          s10, t5, s10
                  xor          s7, t0, t5
                  sltu         s3, zero, t5
                  sltu         a7, a5, tp
                  add          t1, s7, a0
57:               addi x23, x18, 1
57:               jalr x23, x23, 0
sub_5:            slti         sp, t4, -239
                  nop
                  srl          a1, s8, a6
                  xor          a2, s1, gp
                  sra          s5, s5, s4
                  nop
                  addi         s11, s11, -56
                  xor          s10, s0, s11
                  sw           s2, 4(s11)
                  srl          tp, a5, gp
                  and          t2, t0, s9
                  add          sp, sp, a1
                  lui          s1, 414028
                  slt          a1, sp, s0
                  ori          s4, t6, -754
                  lui          a3, 581909
                  srl          s5, s0, s3
                  slti         s4, s5, 186
                  xori         s2, t6, 1899
                  sll          s0, t3, s4
sub_5_j10:        jal          s2, sub_8 #jump sub_5 -> sub_8
                  srli         s10, s4, 5
                  lui          a5, 278903
                  srli         s3, t1, 13
                  add          t3, s3, a1
                  add          a1, s5, t0
                  sra          s4, t0, t6
sub_5_j11:        jal          s2, sub_7 #jump sub_5 -> sub_7
                  srli         a4, ra, 2
                  beq          gp, a5, 19f
                  srl          s10, a0, ra
                  blt          s3, s9, 23f
                  xori         a5, t6, -1046
                  sll          a0, s4, t3
                  slli         t3, a1, 21
                  and          a3, tp, s2
                  bgeu         t0, s0, 9f
9:                or           s9, t5, sp
                  bgeu         t3, tp, 29f
                  srl          t0, t1, t4
                  auipc        a7, 426077
                  addi         s10, a4, 1854
                  nop
                  slt          s9, s2, zero
                  auipc        gp, 20760
                  beq          t0, a0, 23f
                  blt          a1, zero, 29f
19:               sll          zero, t1, t6
                  bltu         s2, gp, 24f
                  bltu         a1, a3, 33f
                  bgeu         a7, a4, 39f
23:               slt          s7, s4, a2
24:               and          t1, ra, s9
                  andi         sp, a1, -1706
                  lui          s2, 194187
                  blt          t4, s4, 32f
                  ori          tp, s3, 235
29:               andi         a2, t6, -300
                  srai         t4, gp, 15
                  bne          zero, s2, 43f
32:               bne          t3, s0, 35f
33:               sltu         t2, s4, a5
                  sll          t4, a7, t6
35:               sll          t2, t6, tp
                  add          s7, gp, s11
                  srl          a2, t3, tp
                  auipc        a0, 57468
39:               xor          a4, t6, a4
                  sra          t4, t6, s6
                  addi         t1, s4, 1033
                  xori         s1, t0, -1225
43:               and          s9, ra, s2
                  slt          s1, a6, ra
                  lw           s2, 4(s11)
                  lui          t3, 185348
                  lui          a0, 687085
                  addi         s4, s4, 1421
                  and          t3, s8, gp
                  addi         s11, s11, 56
                  srl          s5, gp, s6
80:               addi x3, x18, 0
80:               jalr x3, x3, 0
sub_4:            addi         s11, s11, -56
                  ori          t5, a7, -1003
                  addi         sp, s6, 599
                  sw           s2, 4(s11)
                  srli         s3, ra, 23
                  la           a7, region_0+463 #start riscv_load_store_rand_instr_stream_0
                  srai         t2, s5, 5
                  lb           s10, 368(a7)
                  sra          sp, tp, s1
                  addi         s7, sp, -883
                  sh           t2, 789(a7)
                  lhu          t5, 405(a7)
                  sb           t1, 196(a7)
                  lbu          s8, 500(a7)
                  sh           a1, 1179(a7)
                  nop
                  sb           s8, 1493(a7)
                  lh           s6, 789(a7)
                  sb           gp, 1032(a7)
                  lb           t5, 940(a7)
                  lh           sp, -437(a7)
                  lhu          t1, -297(a7)
                  add          s1, s8, t5
                  lhu          s2, -407(a7)
                  sb           t5, -120(a7)
                  lb           s9, -383(a7)
                  lbu          t5, 230(a7)
                  ori          s5, a0, -1403
                  lb           tp, 1188(a7)
                  sb           s3, -101(a7)
                  lbu          a4, 1326(a7)
                  lb           sp, 1358(a7)
                  sltiu        s0, s1, 1169
                  srl          tp, a1, s8
                  lbu          s2, 559(a7)
                  lh           a4, 625(a7)
                  lhu          s10, -153(a7)
                  slli         a3, s4, 15
                  lbu          a0, 598(a7)
                  lb           tp, 860(a7)
                  srai         s6, a1, 20
                  sb           s6, 1132(a7)
                  lb           s7, 102(a7)
                  xori         t3, s7, 309
                  lh           s7, 585(a7)
                  sb           a0, 924(a7)
                  andi         a5, a7, 908
                  sub          t3, s11, a0
                  lhu          zero, 463(a7) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+1842 #start riscv_load_store_rand_instr_stream_5
                  slt          s2, s9, s5
                  nop
                  addi         s7, s10, 312
                  sb           s9, -43(sp)
                  slti         gp, t6, -950
                  srli         s3, a5, 6
                  lbu          tp, -151(sp)
                  sltu         s7, a2, t0
                  slt          t1, t0, a5
                  lbu          s4, 137(sp)
                  sh           a7, 24(sp)
                  add          t4, s0, a0
                  sb           gp, -111(sp)
                  or           s6, gp, a4
                  sb           s9, -69(sp)
                  lbu          s7, -4(sp)
                  sb           a4, 15(sp)
                  lbu          a0, -55(sp)
                  lb           a2, 116(sp)
                  sltiu        zero, t6, 778
                  xori         a0, a1, 1771
                  addi         a0, a5, 827
                  lb           s5, -219(sp)
                  sltiu        a0, gp, -1243
                  srai         s9, s3, 22
                  nop
                  srai         a5, s11, 11
                  ori          s4, t2, 419
                  lb           a7, 155(sp)
                  srli         s7, gp, 8
                  andi         s3, s10, 628
                  lb           gp, -13(sp)
                  nop
                  or           a5, t5, s5
                  addi         t3, a7, -677
                  sltiu        a4, a5, 1132
                  and          gp, s4, s2
                  sltu         t5, s1, a6
                  xori         t2, s0, -1414
                  srli         t1, t6, 3
                  auipc        s9, 882749
                  srli         gp, t4, 11
                  slt          s5, s2, s8
                  lbu          t6, -75(sp) #end riscv_load_store_rand_instr_stream_5
                  la           s4, region_0+1434 #start riscv_load_store_rand_instr_stream_2
                  add          a4, ra, t0
                  sra          t4, a1, t5
                  andi         t3, s5, -1195
                  sb           s0, 12(s4)
                  addi         a4, a4, -1892
                  ori          sp, t2, -2017
                  slt          t3, sp, t4
                  sra          t3, t0, s7
                  slli         s2, a1, 24
                  lhu          a0, 16(s4)
                  lb           s7, 16(s4)
                  lbu          s8, 9(s4)
                  lbu          a0, 0(s4)
                  slli         t2, a1, 4
                  add          t2, s7, s11
                  or           s9, s8, a0
                  lbu          s10, -14(s4)
                  slt          s6, s9, a0
                  add          a1, a1, s6
                  slti         t3, s0, -55
                  ori          tp, s11, -430
                  lhu          s6, 12(s4)
                  sra          a7, a5, s5
                  sltiu        a4, s11, 1191
                  sltiu        a3, s5, 1534
                  lbu          a5, 5(s4)
                  srli         sp, s3, 29
                  lh           s6, -14(s4)
                  sb           t2, -9(s4) #end riscv_load_store_rand_instr_stream_2
                  la           tp, region_0+1133 #start riscv_load_store_rand_instr_stream_4
                  xor          t2, tp, s2
                  sb           s9, 3(tp)
                  lh           t4, -13(tp)
                  or           s0, gp, t0
                  andi         s6, gp, -1305
                  sw           s1, 7(tp)
                  lh           zero, -11(tp)
                  sb           a6, -16(tp)
                  andi         t4, t6, 1902
                  ori          s5, s10, 899
                  sra          t4, t5, zero
                  sh           t2, 9(tp)
                  srli         t5, s5, 28
                  lbu          t2, -1(tp)
                  slti         t5, s5, 227
                  lb           t3, 5(tp)
                  lb           t0, -13(tp)
                  lb           zero, -4(tp)
                  add          s8, s5, gp
                  sb           s10, 7(tp)
                  and          zero, s2, ra
                  lh           t1, -13(tp)
                  lbu          s6, 8(tp)
                  xor          a1, t2, ra
                  slti         s7, s10, -1695
                  sb           t5, -8(tp)
                  sub          t1, ra, s1
                  sltu         a4, tp, t2
                  sh           t4, -7(tp)
                  sb           a0, -14(tp)
                  sh           zero, -7(tp)
                  sb           s4, 11(tp)
                  slt          t4, s0, s2
                  srli         t3, t6, 13
                  sh           s2, 13(tp) #end riscv_load_store_rand_instr_stream_4
                  la           t0, region_1+124 #start riscv_load_store_rand_instr_stream_6
                  lhu          a3, 622(t0)
                  sll          gp, s3, a3
                  sb           s10, 689(t0)
                  lb           t5, 4(t0)
                  lhu          t4, 1108(t0)
                  lb           s6, 1835(t0)
                  slli         a3, a4, 21
                  sra          t5, s9, t5
                  and          a7, s1, s4
                  lui          s3, 109327
                  sh           a5, 1066(t0)
                  and          s5, s2, a1
                  lbu          zero, 1219(t0)
                  xor          s2, t0, t4
                  lb           a0, 1479(t0)
                  sltiu        s8, tp, -493
                  andi         s0, t5, 49
                  lb           s7, 1368(t0)
                  sw           t2, 352(t0)
                  lh           s5, -124(t0)
                  slli         s4, a0, 29
                  add          gp, sp, t4
                  slti         sp, s5, -228
                  add          a3, s2, a0
                  slli         t3, s10, 27
                  lbu          gp, 1039(t0)
                  nop
                  sw           s1, 28(t0)
                  add          s7, ra, a5
                  lb           a5, 1175(t0)
                  sra          s10, t1, s9
                  sh           t4, 226(t0)
                  lb           t3, -6(t0)
                  srai         s4, s2, 1
                  sb           t4, 1771(t0)
                  sltiu        t5, a4, -1029
                  nop
                  slti         t4, t2, 211
                  lb           gp, 603(t0)
                  sltiu        s1, s10, 1672
                  xori         a5, s3, 777
                  lbu          t2, 1783(t0)
                  slli         tp, t1, 13
                  auipc        s7, 176803
                  lbu          gp, 1541(t0)
                  lbu          t4, 287(t0) #end riscv_load_store_rand_instr_stream_6
                  sll          s3, s10, s6
                  xor          a0, s4, sp
                  addi         t3, s4, -88
                  slt          t0, zero, a2
                  slli         t2, s4, 27
                  nop
                  xor          a3, a6, a4
                  bne          s5, a4, 11f
                  srl          s6, s11, a1
                  srli         t2, sp, 17
                  lui          sp, 714211
11:               srl          tp, s9, s0
                  bne          s10, s11, 15f
                  lui          t3, 74081
                  auipc        a3, 252309
15:               lui          s9, 1022621
                  beq          t5, zero, 28f
                  lui          s10, 290897
                  auipc        s2, 195265
                  lui          s5, 360023
                  sltiu        s5, t3, -875
                  bltu         s6, s6, 33f
                  slt          s4, a2, a4
                  auipc        a7, 785786
                  sltiu        sp, a7, 1281
                  andi         t0, gp, -837
                  bltu         s4, a2, 38f
                  slti         tp, tp, 720
28:               xor          a0, s9, a7
                  xori         s8, s1, -1224
                  srli         s2, t2, 25
                  nop
                  and          zero, t4, zero
33:               addi         gp, s6, 1958
                  add          a2, s7, t3
                  slli         s8, s1, 18
                  sltu         s4, t2, a2
                  bne          s10, s10, 43f
38:               addi         a2, zero, -575
                  or           s8, a2, s7
                  blt          tp, t1, 41f
41:               auipc        a0, 240095
                  bge          s1, ra, 58f
43:               bgeu         s11, a7, 54f
                  addi         s8, s1, 440
                  bgeu         s2, s7, 53f
                  auipc        sp, 442346
                  srli         s5, ra, 9
                  lui          a5, 887063
                  slt          sp, s10, s3
                  sll          s9, t3, s7
                  slli         t6, s9, 4
                  sltiu        s0, t4, 1647
53:               slt          a4, s11, a4
54:               xor          a7, s10, a3
                  sub          t5, a2, ra
                  bne          t3, s2, 63f
                  lui          s2, 378358
58:               sltiu        a3, t5, 1544
                  addi         t3, a4, 1737
                  bgeu         s3, t1, 66f
                  bne          s9, s4, 81f
                  xor          t1, a6, gp
63:               sub          t2, s5, a2
                  beq          s11, a1, 83f
                  add          a7, t3, a0
66:               ori          s4, t5, 1916
                  xori         gp, t5, 221
                  srl          s0, tp, t2
                  slli         tp, t2, 28
                  srli         zero, a5, 7
                  sub          a4, s1, t5
                  xori         s2, s4, -31
                  sub          zero, s3, gp
                  bne          s0, t4, 94f
                  bgeu         ra, t1, 91f
                  andi         a0, s2, 1562
                  add          a3, a2, tp
                  addi         s1, a4, 1459
                  addi         s0, s0, 1111
                  srl          a5, ra, gp
81:               ori          t4, a1, -154
                  sub          s3, s1, s3
83:               beq          a5, t5, 90f
                  or           s5, tp, t3
                  bne          a3, a2, 91f
                  nop
                  sra          t3, s2, s7
                  lui          t3, 317947
                  addi         t6, a7, -316
90:               lui          a5, 936823
91:               bne          s7, s8, 102f
                  sltiu        t4, s2, 499
                  sra          s3, sp, sp
94:               sltu         t6, a4, s2
                  bgeu         a7, t1, 100f
                  bgeu         s11, s4, 115f
                  or           s9, s7, tp
                  bne          ra, sp, 106f
                  xori         tp, tp, -1347
100:              and          a5, s10, t4
                  lui          a2, 572851
102:              sub          a2, s3, a7
                  slt          s10, gp, s11
                  xor          t2, t3, a3
                  and          zero, ra, t5
106:              srl          gp, a2, s4
                  sub          s3, t0, a6
                  sll          t6, s4, t0
                  sra          a0, s5, a7
                  bgeu         s2, ra, 123f
                  sltiu        s3, s8, 435
                  bne          a0, s11, 117f
                  slti         s4, s5, 501
                  bltu         s1, s1, 119f
115:              addi         t1, s4, -269
                  sra          s8, s9, s8
117:              sll          t5, gp, s9
                  srli         s9, s1, 29
119:              ori          s8, s4, -377
                  nop
                  bgeu         s9, s3, 133f
                  bltu         t6, a0, 130f
123:              auipc        s9, 550060
                  slli         t5, a5, 11
                  bgeu         t4, s8, 131f
                  sub          a2, s8, a7
                  sltu         s6, a5, t2
                  slt          s4, s11, s3
                  ori          t0, a1, -1463
130:              srli         a4, s11, 5
131:              nop
                  slt          a4, ra, t4
133:              xori         t6, gp, 1291
                  bltu         a6, a2, 150f
                  slli         gp, a2, 26
                  srl          s4, t6, s10
                  lui          s10, 304565
                  sltu         t1, t3, ra
                  xor          a4, a5, s2
                  xori         t5, s8, -682
                  bltu         s2, s10, 155f
                  blt          t0, t0, 146f
                  and          a5, a7, s5
                  bne          s9, a7, 156f
                  srli         s9, t6, 11
146:              and          tp, a7, a1
                  sub          t3, t5, t0
                  slti         t6, s6, 609
                  lui          t3, 32224
150:              blt          s2, t3, 170f
                  or           s10, s8, s8
                  and          s7, s10, a4
                  bge          s3, a6, 169f
                  sltu         s3, a0, s8
155:              xori         t4, s6, -60
156:              ori          s7, s3, -877
                  auipc        a5, 605423
                  sltiu        gp, t5, -1267
                  srli         a4, s11, 12
                  bgeu         gp, t2, 168f
                  andi         s2, gp, 1260
                  sltiu        t3, gp, -1606
                  srai         t5, a3, 12
                  xori         s3, a4, 1080
                  slli         t3, s11, 31
                  sra          a5, gp, t0
                  lui          tp, 752999
168:              add          sp, t2, a3
169:              sra          s7, a0, a7
170:              sltu         s4, s10, zero
                  sll          s7, ra, s5
                  slt          s5, s4, s2
                  sltu         t3, a4, s11
                  slli         a1, a1, 29
                  bltu         s11, s7, 182f
                  sra          t3, a7, s8
                  or           s7, tp, tp
                  andi         a0, t2, 85
                  srl          t5, a7, s6
                  bge          s10, zero, 187f
                  sra          a3, s4, s0
182:              blt          s10, a7, 198f
                  srai         s2, sp, 14
                  bgeu         t2, s8, 195f
                  srai         s8, a3, 10
                  srli         a3, t4, 7
187:              ori          s2, s4, -323
                  xori         t2, t2, -1521
                  xor          t1, s10, s1
                  sra          tp, s5, a0
                  sltu         s0, a2, a5
                  bge          s6, sp, 211f
                  beq          a1, zero, 207f
                  sltu         a4, a2, s2
195:              sub          t3, t3, s4
                  bgeu         a7, a3, 204f
                  sltiu        t3, s3, 1929
198:              and          s10, a7, tp
                  bne          t3, s11, 205f
                  slti         s5, t0, 744
                  bltu         a2, s5, 209f
                  xor          s9, s2, a3
                  sll          a4, s11, t4
204:              or           t1, a4, s10
205:              xori         t0, t6, 223
                  add          a3, s10, a1
207:              bne          s2, a7, 220f
                  andi         a4, s1, -1022
209:              ori          tp, s10, -205
                  sra          a1, s0, s3
211:              sll          s3, t2, t6
                  bgeu         s4, s5, 217f
                  nop
                  sub          t5, a4, s10
                  xori         s4, s10, 432
                  andi         a1, s2, 875
217:              andi         t1, t1, -1544
                  sll          s4, a1, ra
                  sll          s10, a2, t3
220:              or           t3, a1, t2
                  bgeu         zero, a0, 240f
                  ori          s5, a7, 956
                  xori         t6, s6, -1314
                  bne          t6, s3, 230f
                  blt          a5, a5, 237f
                  xor          a5, t3, a2
                  blt          sp, t1, 232f
                  slt          t1, s7, s10
                  bltu         s1, t5, 235f
230:              bgeu         t2, s5, 231f
231:              blt          s0, a1, 242f
232:              srai         a5, t2, 21
                  xor          a4, s4, t6
                  sub          s8, s10, a6
235:              xor          zero, s7, s10
                  beq          sp, s1, 256f
237:              ori          zero, s3, 532
                  or           s9, s2, t4
                  srl          a4, s9, gp
240:              sltiu        zero, s7, 1607
                  slli         a3, s10, 17
242:              slt          s1, a5, sp
                  srl          t6, a5, s6
                  beq          sp, t3, 256f
                  srl          s1, s1, a1
                  sll          t4, a1, s3
                  slli         s7, s0, 31
                  addi         s4, s1, 1868
                  srai         s0, s5, 3
                  slti         s1, s0, -1683
                  bltu         t1, a0, 256f
                  andi         a1, t3, 1409
                  sltiu        a4, sp, -1526
                  xori         s8, a0, 1224
                  xori         t3, a4, 2019
256:              bne          s5, s7, 259f
                  auipc        s9, 515299
                  sub          s4, s1, t6
259:              lui          s6, 376048
                  lui          s3, 17004
                  beq          s9, s11, 273f
                  sra          s10, a6, s11
                  bltu         s11, a5, 269f
                  sll          t3, s1, s7
                  srli         s1, a0, 25
                  srl          t0, s11, ra
                  bltu         s8, a0, 283f
                  blt          t1, s8, 284f
269:              slti         s5, t1, -1749
                  slt          t4, t4, a7
                  srli         t6, s2, 22
                  slt          t6, a2, s0
273:              srl          s0, s1, a7
                  bne          a3, tp, 282f
                  bltu         t1, gp, 294f
                  beq          a6, a0, 289f
                  slli         s7, s5, 7
                  sra          a7, tp, t1
                  bne          a2, a3, 283f
                  bne          ra, a4, 283f
                  sltiu        t3, a2, 1974
282:              sltu         t6, gp, t3
283:              srli         t3, s4, 23
284:              lui          s2, 574098
                  sll          tp, s9, t6
                  bge          s0, s4, 287f
287:              slli         gp, gp, 7
                  andi         tp, a4, -969
289:              srl          a2, a1, s0
                  ori          a4, s0, -1766
                  and          s2, t4, s7
                  bgeu         a1, s9, 298f
                  addi         t3, s6, -353
294:              auipc        s1, 191446
                  bne          s2, s2, 309f
                  ori          s7, s7, 1730
                  xor          a1, s0, a0
298:              or           s9, a5, a5
                  srli         s7, a6, 16
                  nop
                  sltiu        t3, zero, -38
                  srli         s4, s6, 13
                  srl          t3, gp, s2
                  sltiu        s10, s2, 572
                  bne          a4, s2, 321f
                  or           t1, s7, s5
                  bltu         t6, a0, 313f
                  add          tp, a5, s5
309:              andi         s0, t0, -911
                  bge          s2, s10, 321f
                  andi         t4, zero, 1184
                  slli         s4, sp, 24
313:              and          a3, t4, gp
                  xori         a5, a3, -1486
                  addi         t2, t3, 1116
                  sltiu        sp, a1, 1905
                  sltu         s5, t3, gp
                  slt          a3, t4, zero
                  andi         s3, s8, 294
                  bgeu         sp, t2, 340f
321:              sll          s7, a2, t4
                  andi         t6, s4, 1412
                  ori          s4, t3, 1333
                  slti         a0, s2, 2014
                  slt          s2, t5, a2
                  andi         a1, a0, 929
                  bgeu         a1, a3, 333f
                  bgeu         a3, a6, 347f
                  blt          a7, t5, 341f
                  srl          a0, t0, s4
                  sra          gp, t6, tp
                  nop
333:              beq          s9, s10, 345f
                  slt          t5, t3, tp
                  sra          t5, a6, s5
                  bge          s10, a0, 347f
                  bgeu         a5, a0, 357f
                  lui          s3, 411735
                  xor          s0, s6, t6
340:              add          s2, t6, a1
341:              xori         a7, s10, 365
                  blt          tp, t6, 354f
                  slti         gp, t1, -313
                  add          t6, ra, s9
345:              auipc        sp, 467826
                  slli         tp, s10, 21
347:              and          s9, t5, a2
                  andi         t3, t3, -152
                  add          a2, t3, s3
                  andi         s9, s2, -702
                  sra          s2, t1, t2
                  slli         s3, a5, 4
                  bge          a2, t6, 360f
354:              srai         gp, s5, 11
                  addi         t5, t2, 1140
                  srl          s2, s10, s6
357:              and          s5, s2, s4
                  slli         zero, s9, 22
                  slli         a7, a3, 7
360:              sra          a4, t4, s9
                  xori         a3, t3, -1449
                  bltu         a2, ra, 367f
                  sltu         a2, ra, ra
                  add          s2, a2, s0
                  xori         s2, t2, 1981
                  and          s1, zero, gp
367:              sltiu        t3, a6, -939
                  beq          s2, s11, 373f
                  bge          a2, sp, 377f
                  nop
                  auipc        zero, 52475
                  auipc        a0, 646628
373:              add          s4, s6, gp
                  bne          a3, a2, 382f
                  xor          a7, ra, s6
                  sra          s3, s2, s4
377:              sll          t3, t2, a1
                  sub          t3, t6, t3
                  ori          s0, ra, -886
                  srl          s1, s1, s10
                  sub          gp, s10, a2
382:              srai         t0, gp, 31
                  sra          a4, t5, t4
                  or           a4, tp, sp
                  srl          s8, s9, s0
                  and          s6, s6, s0
                  xori         t2, s6, 1087
                  bgeu         a5, s0, 393f
                  slti         a2, a2, -1514
                  bge          t6, s6, 396f
                  sltu         a1, t1, a0
                  ori          t3, a1, -881
393:              bne          t1, a6, 409f
                  bgeu         t2, gp, 401f
                  sll          gp, t1, s2
396:              slt          s10, ra, a7
                  sltiu        t2, s6, 1889
                  sra          t0, s6, a2
                  addi         tp, a7, -261
                  xori         zero, s8, -650
401:              srl          t2, t6, s8
                  auipc        t4, 307990
                  lui          a4, 727141
                  slli         s10, s1, 28
                  sub          s2, s6, a7
                  beq          t2, a7, 418f
                  ori          t5, s0, 736
                  xor          s4, s8, zero
409:              sltiu        zero, t4, 648
                  sll          s7, t3, s6
                  slti         s7, s6, 1560
                  add          zero, a1, t3
                  slti         s6, a2, 1862
                  andi         a5, a3, -1291
                  addi         tp, s11, -67
                  sll          t5, a3, zero
                  lui          gp, 94869
418:              slt          sp, a1, gp
                  sub          a1, s9, a6
                  addi         t1, sp, 931
                  xori         s4, gp, 107
                  and          a0, s5, gp
                  addi         a5, a6, -1951
                  nop
                  auipc        t4, 588082
                  xori         t2, s4, 764
                  auipc        s9, 249316
                  slti         zero, s2, -1541
                  srai         t0, t5, 28
                  slt          s6, zero, s7
                  xori         s2, gp, -1293
                  xor          t0, s8, a3
                  sltiu        tp, s5, -1161
                  and          t0, t0, a3
                  auipc        a4, 450872
                  slti         s3, a0, -989
                  sra          s1, a3, a3
                  sltiu        s3, ra, -1895
                  sltu         s9, t1, a7
                  blt          s0, t0, 452f
                  bgeu         s4, t0, 453f
                  srl          t0, s7, s6
                  bne          s2, a5, 449f
                  srli         t5, s0, 15
                  add          t0, s8, a0
                  slli         sp, s8, 0
                  sra          a5, t2, zero
                  sltiu        s3, t0, 397
449:              add          s1, t1, a2
                  srli         s4, t2, 25
                  slti         s1, a2, 1123
452:              xori         s3, t6, 918
453:              nop
                  bgeu         t6, t4, 470f
                  bne          a4, zero, 463f
                  bge          zero, s4, 462f
                  blt          s7, a3, 461f
                  addi         s1, s4, 658
                  or           t1, sp, s5
                  slt          zero, a5, t5
461:              sltu         a3, s4, t4
462:              sra          gp, a1, a2
463:              blt          s6, s3, 477f
                  xori         t1, s11, -951
                  bltu         t1, t5, 471f
                  slt          t6, sp, s5
                  ori          t2, a1, 166
                  xori         s1, s9, 2009
                  sltu         s0, a3, a0
470:              add          a2, t4, a3
471:              ori          gp, s2, 205
                  add          s3, sp, t0
                  beq          a2, sp, 493f
                  add          t2, s11, s11
                  slti         a4, s8, -382
                  lui          s0, 507290
477:              bne          t1, a3, 482f
                  nop
                  srai         t2, s9, 31
                  xor          t1, a5, tp
                  and          a2, t4, t2
482:              sll          zero, a6, a1
                  sub          a4, s8, a4
                  bge          a0, a2, 503f
                  slli         s5, a0, 2
                  addi         a7, s1, -896
                  sltu         a5, t1, s0
                  xori         a3, s11, 1903
                  bltu         t1, t5, 500f
                  sltiu        s4, t5, 668
                  bgeu         a1, gp, 503f
                  xor          a7, s3, tp
493:              beq          s7, t3, 500f
                  sltu         s1, s9, t5
                  blt          s11, s3, 514f
                  srai         s5, sp, 14
                  xori         t3, t6, 1184
                  slli         t4, t1, 22
                  addi         a7, sp, 936
500:              xor          a7, s7, s7
                  nop
                  slti         a7, s2, 355
503:              srl          t0, t0, s7
                  slt          t4, a6, s0
                  bge          s8, t3, 521f
                  or           a3, s5, t6
                  sltu         t4, s1, a5
                  ori          t2, s11, -231
                  sub          t1, s8, s1
                  srai         s5, t1, 21
                  beq          a0, s6, 518f
                  blt          t3, a7, 520f
                  bltu         t0, s4, 521f
514:              and          s3, s7, s11
                  sra          a1, a7, s10
                  lui          s8, 227186
                  xori         t6, t0, 725
518:              srl          s3, t4, t5
                  or           s6, a2, t1
520:              lui          t2, 304171
521:              add          s3, t4, a5
                  srai         s4, s8, 30
                  sra          a7, t6, ra
                  ori          s2, t5, 1488
                  bge          a3, s8, 531f
                  xori         t3, a4, -528
                  lui          zero, 361083
                  addi         t4, s6, 1546
                  slt          tp, s0, zero
                  slli         s10, t6, 4
531:              srli         t2, s7, 10
                  bgeu         a0, s6, 537f
                  blt          s2, a3, 549f
                  blt          t2, s4, 547f
                  and          a0, ra, t3
                  andi         s0, sp, -1242
537:              bltu         tp, s11, 557f
                  auipc        s4, 253086
                  sub          s7, s1, a5
                  sll          s10, a1, a3
                  xor          a4, ra, s6
                  bltu         t0, s10, 547f
                  sltiu        a4, t3, 1306
                  and          sp, s6, a6
                  andi         s2, s7, 1343
                  slli         s1, s11, 8
547:              add          s4, s11, s11
                  sll          s9, t3, ra
549:              addi         s9, t6, -352
                  xori         s7, t2, -1
                  slli         s10, s7, 13
                  slli         s2, ra, 23
                  slti         gp, s11, -189
                  srai         a0, a7, 20
                  lui          zero, 440917
                  sltiu        s3, sp, -1953
557:              sub          sp, a5, t3
                  beq          s11, t2, 559f
559:              bgeu         a0, t3, 570f
                  sltiu        a4, s11, -1353
                  srl          s8, a4, s8
                  srli         a7, s7, 2
                  beq          t4, s4, 575f
                  andi         s7, t4, -727
                  add          a0, t2, s5
                  and          tp, s2, s3
                  bge          s8, t0, 570f
                  addi         t3, gp, -672
                  bltu         sp, a4, 581f
570:              sltiu        tp, s10, -1723
                  nop
                  auipc        s4, 665292
                  sltu         a5, t6, s0
                  la           sp, region_1+993 #start riscv_load_store_rand_instr_stream_3
                  sw           t0, 227(sp)
                  and          t3, a7, s8
                  xor          s2, t4, s9
                  srai         a4, s11, 22
                  srai         a0, s9, 0
                  andi         gp, s5, 43
                  lbu          s4, -588(sp)
                  lbu          s9, 128(sp)
                  srli         s9, s3, 15
                  lb           s0, -564(sp)
                  lbu          zero, 561(sp)
                  nop
                  lb           s0, 637(sp)
                  and          a0, t2, t6
                  lb           a3, -946(sp)
                  srl          a3, a6, sp
                  ori          s1, gp, -785
                  add          a7, a5, s2
                  sh           zero, 551(sp)
                  lui          a0, 717638
                  lb           a0, 32(sp)
                  lb           s9, -659(sp)
                  sb           s1, -102(sp)
                  sub          t4, s7, s6
                  slli         a3, s4, 1
                  sh           t2, -865(sp) #end riscv_load_store_rand_instr_stream_3
                  sll          a0, t5, s3
575:              andi         sp, a2, 848
                  sltu         t2, s8, s9
                  or           t2, t2, t6
                  add          sp, zero, t0
                  blt          s8, s4, 587f
                  auipc        t2, 143109
581:              sra          a2, gp, sp
                  bgeu         t3, s8, 602f
                  srli         sp, s0, 3
                  bgeu         a5, t3, 600f
                  ori          s10, t1, -946
                  addi         gp, sp, 1302
587:              bgeu         s0, zero, 595f
                  xor          s1, t6, tp
                  bltu         s0, a7, 596f
                  auipc        s1, 951294
                  auipc        t4, 1046167
                  srl          a0, zero, s5
                  bgeu         zero, s6, 600f
                  andi         t4, a6, 804
595:              sll          a0, t1, s6
596:              andi         a7, s11, 780
                  bltu         a1, a5, 613f
                  beq          s3, ra, 604f
                  bgeu         t2, tp, 607f
600:              bgeu         s9, t2, 612f
                  bge          zero, s7, 607f
602:              slti         t1, t3, -1971
                  slt          t2, s11, t3
604:              srai         t3, gp, 26
                  blt          a3, t5, 610f
                  or           a0, a6, s5
607:              blt          t2, s5, 620f
                  nop
                  beq          a2, t4, 628f
610:              bge          s0, ra, 624f
                  beq          s4, t6, 616f
612:              sltu         s4, s4, t0
613:              bne          s11, s7, 624f
                  sll          s2, s3, sp
                  bne          s2, s3, 631f
616:              xor          s2, t6, s6
                  srai         s5, a1, 26
                  bne          a6, s3, 638f
                  or           s7, sp, sp
620:              ori          a1, a6, -779
                  bgeu         a7, a0, 626f
                  blt          s8, a3, 634f
                  or           s1, a4, t1
624:              slti         a2, s1, -1648
                  srli         t0, t3, 3
626:              xori         tp, s7, -1874
                  slli         t4, a5, 18
628:              bgeu         a0, t1, 634f
                  slt          a7, s4, s11
                  sltiu        a1, s7, 681
631:              nop
                  bgeu         s11, t5, 636f
                  sltu         a3, s2, a2
634:              xor          t4, a7, s11
                  lui          a0, 1003945
636:              sra          s7, s6, sp
                  sub          t4, s0, a0
638:              bne          s5, a6, 644f
                  and          s4, a2, a6
                  sltiu        zero, s7, -1852
                  add          s4, s7, s7
                  andi         a3, s4, -104
                  srli         a2, a2, 26
644:              slti         s0, a0, -1467
                  sub          s3, t2, s9
                  nop
                  or           a1, s5, a6
                  sub          t6, a0, s6
                  sltu         gp, a5, sp
                  sltu         s6, s3, a7
                  sltu         sp, sp, ra
                  sltu         t2, s1, s5
                  slli         a3, t1, 16
                  bltu         t3, s9, 655f
655:              auipc        s3, 329830
                  slli         t3, tp, 21
                  bge          a3, a3, 676f
                  srl          t2, t4, t6
                  andi         s3, a5, -599
                  sltu         t0, a1, s1
                  andi         t6, t1, -1085
                  andi         t2, t4, 471
                  beq          t1, s2, 666f
                  andi         s6, t3, 351
                  slli         zero, s3, 12
666:              sltiu        a3, t4, -1799
                  slli         t3, s0, 15
                  addi         s8, sp, -247
                  auipc        a4, 513631
                  blt          t5, t6, 682f
                  bge          a4, zero, 682f
                  bne          ra, s2, 684f
                  slli         t2, tp, 20
                  or           s2, s5, a0
                  beq          s4, s7, 691f
676:              add          zero, s0, t1
                  srai         a0, s10, 7
                  slt          t4, s4, a6
                  bgeu         s3, s11, 685f
                  auipc        t1, 965042
                  blt          a3, s3, 693f
682:              xori         s1, gp, 2010
                  xori         t0, a2, 111
684:              lui          tp, 642793
685:              bne          s10, s8, 690f
                  lui          s2, 590370
                  sltu         t1, s11, s3
                  sltiu        s6, gp, 1254
                  blt          s2, s2, 705f
690:              bge          s2, a6, 697f
691:              bltu         a5, a4, 704f
                  srl          s6, s10, s9
693:              srai         t6, a5, 18
                  lui          s5, 288724
                  slti         s10, zero, 1429
                  sra          s1, t0, a0
697:              bgeu         gp, t3, 703f
                  sra          s8, a5, s6
                  nop
                  slli         s9, s10, 2
                  srl          sp, s0, t4
                  bgeu         t0, s1, 722f
703:              andi         a7, a4, -841
704:              blt          s10, a2, 711f
705:              sltu         a1, a3, s3
                  bge          t3, a3, 718f
                  or           sp, t1, s7
                  sltiu        a3, a5, 16
                  sll          t4, a0, s4
                  srai         a2, s8, 20
711:              xori         zero, t4, -213
                  add          t2, s8, zero
                  sltiu        t4, a6, 2038
                  lui          s0, 1010227
                  addi         tp, s1, -1925
                  bne          t4, s4, 735f
                  xori         t6, a1, -2030
718:              slt          s3, a0, a1
                  sltiu        t1, s1, 1142
                  addi         a4, a4, -188
                  ori          s10, ra, -1029
722:              blt          t4, a6, 730f
                  xori         s8, s3, -704
                  andi         t6, s4, -1196
                  or           t5, t5, a3
                  sub          sp, s2, s11
                  lui          s4, 481678
                  bltu         s0, s0, 740f
                  lui          s1, 197242
730:              srl          t5, s5, zero
                  sub          s3, sp, a7
                  slli         s6, t6, 6
                  nop
                  srl          s2, a4, t2
735:              sll          s2, t1, s11
                  lui          s3, 205612
                  auipc        s0, 734199
                  sub          s9, a0, t6
                  sltiu        t0, a0, 1578
740:              ori          sp, t1, 1153
                  slt          s7, a7, a7
                  sltu         t2, a0, s6
                  xor          t2, sp, t6
                  auipc        s5, 625795
                  xori         a4, t3, -1185
                  xor          s10, s4, s4
                  or           t5, s3, tp
                  xori         s7, a3, -589
                  nop
                  srli         s7, s11, 0
                  xor          t4, s6, zero
                  sltiu        tp, s1, 630
                  add          a3, t0, s9
                  auipc        zero, 77430
                  xor          s9, s11, s4
                  lui          s4, 41565
                  srli         t6, a5, 28
                  slli         a1, s11, 20
                  bne          t5, a5, 778f
                  and          s10, s8, t5
                  ori          s6, a7, 1725
                  sltiu        s8, s10, -1455
                  blt          sp, s10, 774f
                  add          gp, t4, t4
                  addi         s3, sp, 1769
                  sltiu        s2, a5, 1690
                  slli         s1, gp, 13
                  sra          s8, s3, s1
                  bne          tp, a1, 775f
                  sll          t4, a1, sp
                  beq          s1, tp, 772f
772:              ori          s7, s2, -303
                  srli         s6, ra, 26
774:              slti         a4, s6, 949
775:              beq          t6, t3, 786f
                  bltu         s11, s5, 790f
                  lui          s5, 310834
778:              srl          s2, t3, ra
                  auipc        s9, 387905
                  add          gp, s10, ra
                  addi         sp, s11, -1099
                  nop
                  sltiu        a2, t5, 229
                  or           t6, t2, s2
                  bne          s0, s5, 801f
786:              beq          a5, t0, 791f
                  xor          gp, s8, a5
                  and          sp, a6, t6
                  blt          s7, t3, 795f
790:              xori         a7, t2, 559
791:              auipc        t6, 866779
                  sltu         a1, ra, s8
                  lui          s2, 594428
                  lui          s2, 390261
795:              auipc        s2, 726137
                  bltu         s3, a7, 801f
                  nop
                  bge          t1, s2, 818f
                  ori          t3, a7, -1390
                  xori         a7, a0, -1664
801:              bltu         t5, t5, 805f
                  bne          s7, a4, 810f
                  sra          t6, a5, a7
                  ori          t0, s0, -659
805:              beq          a7, s0, 813f
                  srai         t5, a4, 25
                  sub          s9, a7, s7
                  xori         gp, t2, 1010
                  lui          s2, 383462
810:              sub          a0, a2, a5
                  andi         s2, t4, 456
                  beq          s2, ra, 815f
813:              sra          s3, s3, a3
                  bge          s2, a5, 830f
815:              lui          s5, 628668
                  sll          s6, s6, s6
                  blt          a5, a4, 818f
818:              addi         gp, s7, -211
                  nop
                  sltiu        s4, a0, 1151
                  slti         t0, a0, -792
                  slti         t1, t4, -1006
                  andi         t4, t3, -950
                  bgeu         t4, s7, 836f
                  ori          s9, a4, -1960
                  srai         s2, a6, 28
                  slli         a2, s8, 16
                  slt          s10, s6, s7
                  sltiu        tp, ra, -509
830:              srli         s4, t1, 8
                  slli         t0, s1, 31
                  srai         s4, s0, 25
                  bltu         sp, s7, 841f
                  xori         t0, t6, -1063
                  sra          s9, a6, a6
836:              blt          s1, s9, 847f
                  srl          sp, a5, s2
                  beq          a7, s10, 850f
                  beq          t4, s1, 847f
                  blt          t2, s6, 846f
841:              sltiu        s10, a1, 1060
                  sll          s4, sp, ra
                  bltu         a3, t5, 862f
                  addi         s0, a1, 100
                  lui          t2, 559362
846:              srl          t3, t0, t5
847:              sll          s4, a2, s3
                  add          t3, s11, s4
                  sra          t6, a5, s4
850:              andi         gp, t0, -1405
                  la           t6, region_0+344 #start riscv_load_store_rand_instr_stream_1
                  slti         t4, t0, 2008
                  sub          t0, s0, t3
                  lb           s9, 14(t6)
                  nop
                  sltiu        s6, t6, -681
                  xori         s8, s1, -420
                  lui          s10, 192401
                  sh           a3, -16(t6)
                  addi         tp, t1, -402
                  sltu         gp, t6, s8
                  and          a2, t1, a1
                  sh           s11, 4(t6)
                  slt          t1, s3, a6
                  lb           s1, 3(t6)
                  auipc        t4, 594493
                  and          t5, s4, a0
                  lui          s10, 614357
                  lb           gp, -1(t6)
                  sw           zero, -8(t6)
                  sll          a2, t4, a6
                  sra          tp, s9, s6
                  sltu         a7, s7, a3
                  xor          a5, gp, t1
                  sb           s0, -11(t6)
                  sb           a0, 10(t6)
                  andi         s7, s11, 336
                  lbu          s2, -9(t6)
                  sll          a5, zero, s5
                  sra          s7, s10, a1
                  lb           t2, -9(t6)
                  slli         s1, s1, 3
                  slt          s2, s3, ra
                  lbu          t0, -5(t6)
                  sb           s6, -14(t6) #end riscv_load_store_rand_instr_stream_1
                  lui          t6, 392016
                  slt          a0, a2, s8
                  bge          sp, s6, 867f
                  nop
                  and          sp, t3, a7
                  srl          gp, t0, s3
                  slli         t3, t5, 27
                  srai         zero, s0, 30
                  xori         s0, s5, 597
                  srai         s9, s3, 25
                  srl          s9, t6, s3
862:              sltiu        a0, t1, -1431
                  bne          gp, s10, 869f
                  andi         a5, zero, 1301
                  auipc        s7, 518687
                  or           s6, t4, t2
867:              andi         s1, t4, 132
                  sltu         s4, sp, t4
869:              slt          t6, a2, s3
                  bge          s7, a7, 873f
                  bge          a0, ra, 890f
                  srl          a2, s8, s2
873:              beq          s11, a6, 879f
                  and          t3, s2, ra
                  bgeu         zero, t5, 880f
                  add          s5, a4, a6
                  nop
                  xori         a1, a5, 317
879:              slli         zero, s7, 8
880:              bgeu         ra, gp, 888f
                  bgeu         s3, ra, 886f
                  xori         a0, t4, -1620
                  srai         a5, t3, 1
                  xor          gp, a2, s4
                  slt          a3, s10, t3
886:              slli         gp, a5, 15
                  slli         s2, s11, 12
888:              or           s9, t1, t4
                  srli         t1, a2, 0
890:              nop
                  slti         s7, sp, -83
                  srl          a1, t5, a1
                  sub          s2, s10, s1
                  or           gp, t1, s5
                  lui          s2, 328766
                  srl          s7, s7, s4
                  xor          s4, t4, a0
                  sra          s6, a5, a3
                  lui          a4, 127091
                  or           s4, s4, s0
                  lw           s2, 4(s11)
                  sltu         t0, t4, s11
                  addi         s11, s11, 56
                  or           t0, ra, a0
                  addi         s6, a6, -1448
                  ori          t1, s6, -1289
                  lui          zero, 889682
                  sra          t6, a4, s3
                  slt          t1, s2, zero
                  xori         s0, s2, 1592
                  sra          t6, a7, a6
1181:             addi x7, x18, 1
1181:             jalr x7, x7, 0
sub_1:            sltiu        s5, t5, 1293
                  slti         a0, s6, -646
                  addi         s11, s11, -32
                  add          a0, a4, tp
                  sw           s2, 4(s11)
                  xor          sp, a3, s4
                  la           sp, region_1+624 #start riscv_load_store_rand_instr_stream_8
                  sh           t2, -170(sp)
                  lb           t6, -189(sp)
                  sra          s1, t2, a0
                  lbu          t2, -3(sp)
                  lbu          zero, -46(sp)
                  srli         s5, t2, 15
                  srli         t6, s2, 14
                  sltu         s4, s7, s11
                  lb           zero, -141(sp)
                  lb           gp, -61(sp)
                  sltiu        t5, t3, 1918
                  sb           sp, 179(sp)
                  auipc        a7, 301292
                  slti         s7, t3, 1404
                  nop
                  sll          t3, gp, ra
                  lbu          a2, -45(sp)
                  lb           a1, 45(sp)
                  andi         s10, s11, 934
                  lhu          tp, 124(sp)
                  lui          s8, 659927
                  sltiu        t0, s6, -1330
                  sra          s8, s6, a7
                  srl          gp, a1, a6
                  sb           t1, 109(sp)
                  sltu         t6, s10, ra
                  xor          gp, s3, s9
                  sb           t5, 197(sp)
                  slt          t3, a7, s3
                  xori         s9, zero, 2000
                  slt          zero, a7, a5
                  srli         t6, s4, 15
                  sh           t3, 142(sp)
                  lb           a5, 207(sp)
                  sh           s3, -22(sp) #end riscv_load_store_rand_instr_stream_8
                  la           sp, region_1+1144 #start riscv_load_store_rand_instr_stream_12
                  and          a2, a3, a4
                  xori         s2, ra, 581
                  xor          a5, ra, t6
                  xori         t5, s2, 149
                  lbu          s3, 2(sp)
                  sb           ra, 10(sp)
                  slt          a4, s1, gp
                  sb           s1, -11(sp)
                  lb           s3, -1(sp)
                  sltu         a0, a4, s9
                  lui          s8, 632158
                  xori         a1, s11, 838
                  sb           t6, 11(sp)
                  lbu          s9, -6(sp)
                  lbu          zero, -1(sp)
                  andi         gp, s11, -1799
                  nop
                  xor          a5, s10, ra
                  sb           a7, -5(sp)
                  add          t2, s7, s5
                  slt          s8, s11, tp
                  lbu          s10, 11(sp)
                  lw           a5, 4(sp)
                  sub          t3, s0, s5
                  sltiu        t5, a3, -599
                  lbu          s0, -3(sp)
                  lui          a0, 564469
                  sltiu        t0, gp, -1208
                  lhu          s3, 16(sp)
                  slti         t3, a7, 173
                  nop
                  addi         t5, a1, -792
                  sb           a4, -16(sp)
                  add          s1, s5, t6
                  sb           ra, 8(sp)
                  lw           s3, -4(sp)
                  xori         t1, t4, 985
                  add          a3, s1, s7
                  sb           s6, 5(sp)
                  sb           s7, -9(sp)
                  sltiu        zero, t1, 73
                  sra          a3, s4, t2
                  sub          a0, s7, s0
                  lhu          s8, 16(sp)
                  lb           s8, 4(sp)
                  sb           s0, -8(sp)
                  lb           s10, 6(sp)
                  lbu          t1, -15(sp) #end riscv_load_store_rand_instr_stream_12
                  la           a0, region_0+216 #start riscv_load_store_rand_instr_stream_7
                  nop
                  slt          s10, s9, t4
                  xor          s9, t1, t6
                  lbu          s8, 122(a0)
                  lb           zero, 701(a0)
                  sb           s1, -191(a0)
                  sh           a2, 1098(a0)
                  xor          s3, s2, s8
                  lb           t5, 1321(a0)
                  lbu          t0, 1040(a0)
                  lbu          tp, 430(a0)
                  sb           a5, 1729(a0)
                  or           s5, t4, t2
                  lb           s2, 1023(a0)
                  srai         s6, ra, 22
                  lb           gp, 19(a0)
                  and          s4, a1, ra
                  sb           s8, 1278(a0)
                  slt          s10, s5, t4
                  sw           a7, 1244(a0)
                  sltu         a7, ra, t2
                  andi         a5, s1, -1428
                  lb           s6, 43(a0)
                  lb           t3, 1189(a0)
                  srai         s2, s5, 11
                  lb           a7, 583(a0)
                  srl          s2, zero, a2
                  lb           s4, 1595(a0)
                  lhu          s8, -172(a0) #end riscv_load_store_rand_instr_stream_7
                  la           t1, region_1+517 #start riscv_load_store_rand_instr_stream_10
                  slt          t3, s8, s7
                  lw           s8, -201(t1)
                  sb           s6, 158(t1)
                  add          t6, t6, s6
                  lbu          a7, 49(t1)
                  lb           a7, 986(t1)
                  sra          s1, a5, s10
                  andi         s7, t4, 635
                  sltiu        sp, s8, -442
                  slt          a2, s4, s11
                  sub          s3, s6, a6
                  slt          s9, a4, t0
                  lb           a0, -116(t1)
                  sb           s4, 948(t1)
                  lbu          s0, 1241(t1)
                  addi         a5, s7, 619
                  sb           s11, 1048(t1)
                  sub          s6, s2, ra
                  xori         a0, a3, 0
                  and          t6, s5, a1
                  ori          t0, t2, -192
                  sll          s4, t4, a0
                  slti         s6, tp, -1372
                  lb           a4, 776(t1)
                  lb           t5, 928(t1)
                  sb           a1, 356(t1)
                  sh           t5, 55(t1)
                  lb           t2, 1078(t1)
                  lb           tp, -381(t1)
                  sb           t3, 982(t1)
                  lw           a3, 867(t1) #end riscv_load_store_rand_instr_stream_10
                  la           s1, region_1+1160 #start riscv_load_store_rand_instr_stream_5
                  lbu          s2, 360(s1)
                  slt          t4, a4, a7
                  addi         t2, s8, -1264
                  srl          s7, t5, t6
                  or           a3, s7, a7
                  nop
                  ori          t0, ra, -1703
                  sb           a0, -195(s1)
                  slti         a3, t1, -2013
                  sltu         t0, s4, a6
                  addi         zero, s3, -843
                  lbu          s7, 303(s1)
                  lb           sp, -959(s1)
                  lbu          s0, 317(s1)
                  sltiu        t4, s11, -1623
                  or           a7, s0, t3
                  srl          t0, s10, a6
                  lhu          t6, 462(s1)
                  sb           s0, -711(s1)
                  lh           s10, -558(s1)
                  nop
                  slt          a4, a3, t3
                  or           s8, s3, tp
                  addi         t3, a1, -1065
                  xor          s8, zero, s3
                  sb           tp, -98(s1)
                  lh           t0, -196(s1) #end riscv_load_store_rand_instr_stream_5
                  sltu         s10, a5, gp
                  xori         t5, a0, 1281
                  bne          s9, tp, 3f
3:                blt          a0, s7, 12f
                  ori          t1, s8, 1306
                  xor          zero, s9, gp
                  sub          s2, t3, t3
                  nop
                  blt          s0, s9, 26f
                  srli         t2, a3, 29
                  andi         s10, s8, -579
                  beq          s9, t2, 31f
12:               bge          gp, s3, 29f
                  auipc        a4, 360441
                  bgeu         a0, s6, 30f
                  bge          s7, s9, 26f
                  auipc        a2, 784655
                  sra          t2, gp, tp
                  srai         t1, t0, 22
                  blt          s11, t0, 37f
                  xori         s5, ra, -300
                  blt          a7, zero, 30f
                  bne          s11, s11, 33f
                  srli         tp, s8, 16
                  srli         t1, t2, 18
                  or           a7, s0, t6
26:               srl          t0, gp, sp
                  srl          t4, s2, s3
                  bgeu         ra, gp, 37f
29:               bltu         a5, a3, 43f
30:               bge          t2, s6, 45f
31:               sltiu        s7, a5, 1195
                  srai         s10, zero, 1
33:               xor          t5, s11, s11
                  and          s4, s6, sp
                  bgeu         s6, t2, 41f
                  ori          s7, a3, -54
37:               lui          a4, 722088
                  andi         a0, s6, 1313
                  sll          gp, s11, t5
                  slti         a4, tp, -1763
41:               addi         s7, t4, -1089
                  sltiu        tp, a4, 824
43:               beq          a4, s11, 56f
                  and          a3, tp, zero
45:               ori          sp, a7, 1433
                  nop
                  srai         tp, a0, 10
                  blt          a3, a0, 51f
                  slli         a5, tp, 28
                  andi         s4, t1, -1015
51:               sltiu        t6, t3, -1238
                  sll          t3, t6, s10
                  ori          s3, t0, -782
                  srai         a0, s11, 3
                  xor          t1, tp, t4
                  la           t3, region_1+1868 #start riscv_load_store_rand_instr_stream_3
                  srai         s5, s9, 11
                  auipc        s1, 761413
                  sltiu        t6, t0, -1017
                  nop
                  sltu         a3, a6, t6
                  sb           a3, 27(t3)
                  lw           s8, 104(t3)
                  or           zero, t5, tp
                  andi         s6, s4, 575
                  xor          a1, a5, s7
                  slt          s2, a3, s3
                  sb           gp, 16(t3)
                  addi         s10, a7, 243
                  auipc        gp, 428797
                  slti         t6, a5, -1484
                  sh           a0, -200(t3)
                  sb           a0, -13(t3)
                  lbu          s4, 40(t3)
                  addi         s3, a7, 1601
                  srai         s3, s7, 13
                  srl          t2, s6, a4
                  lb           a7, 107(t3)
                  add          a5, s9, s11
                  srl          t6, s4, a0
                  lbu          a1, 91(t3)
                  lbu          a3, 35(t3)
                  lh           s7, -158(t3)
                  sub          s6, a5, gp
                  xor          s0, s3, a2
                  sb           t0, -21(t3) #end riscv_load_store_rand_instr_stream_3
56:               bltu         gp, s1, 58f
                  or           s7, s3, s1
58:               srai         s6, s7, 6
                  xor          sp, a6, s5
                  srl          t0, ra, s1
                  sub          t0, s5, tp
                  sltiu        t3, s8, -1436
                  slli         s1, a4, 13
                  srai         s9, ra, 9
                  and          a1, t5, s9
                  andi         a0, s5, 249
                  add          zero, s8, t6
                  ori          tp, s8, -143
                  bltu         a0, a2, 79f
                  andi         s7, a5, 319
                  add          a4, s11, t0
                  auipc        t6, 291941
                  slti         gp, s10, -538
                  slti         s2, ra, -623
                  auipc        s2, 813835
                  bltu         t6, s7, 83f
                  slli         a7, t2, 6
                  sltiu        a0, t3, -809
79:               beq          t2, s3, 90f
                  slli         a5, t1, 25
                  sltu         s1, a2, s11
                  sltiu        s4, t5, -582
83:               addi         s9, t4, -335
                  xor          t6, t6, s10
                  sll          t6, a5, t5
                  bltu         s2, s10, 92f
                  lui          s3, 643581
                  sltiu        zero, ra, 1346
                  beq          zero, tp, 107f
90:               bltu         t1, s5, 101f
                  add          a0, gp, a3
92:               blt          s3, sp, 110f
                  bge          a3, s10, 106f
                  srli         gp, t6, 29
                  blt          s7, ra, 107f
                  bne          t5, t5, 114f
                  bge          t4, a3, 112f
                  sub          a7, sp, s0
                  bgeu         t3, t5, 111f
                  sltiu        a5, s1, -800
101:              nop
                  andi         t3, t3, 1143
                  srl          a3, s11, s2
                  or           a0, s9, zero
                  blt          a0, a4, 108f
106:              bge          s2, t0, 108f
107:              sra          a4, a1, t4
108:              lui          t4, 163578
                  sltu         s1, gp, a5
110:              sltu         t0, s7, a7
111:              addi         s4, t5, -306
112:              bgeu         s0, gp, 115f
                  andi         a1, t6, 1973
114:              bgeu         sp, t2, 124f
115:              xori         a1, s11, 1117
                  xori         a3, t3, -986
                  lui          s2, 562573
                  bltu         s6, a3, 138f
                  beq          t3, t3, 132f
                  beq          t2, s8, 126f
                  xor          a3, t1, s9
                  add          s7, t3, t1
                  or           a1, s7, t0
124:              bne          s0, t3, 135f
                  slt          a0, s3, s3
126:              blt          s3, a3, 133f
                  bge          sp, a1, 136f
                  xor          s4, s2, s10
                  srl          s7, tp, t4
                  slli         s2, s6, 1
                  sltu         gp, tp, s2
132:              and          s4, a6, t4
133:              or           t0, t3, sp
                  addi         s5, t0, 1722
135:              or           s9, s5, tp
136:              bltu         s2, s2, 147f
                  srl          a7, tp, t1
138:              slti         t6, s10, -1201
                  andi         s2, t0, -1555
                  add          t1, t2, t0
                  sll          t3, t3, s3
                  beq          s5, t0, 160f
                  sltu         t5, s3, s3
                  blt          s6, a0, 156f
                  slti         t2, a1, 1740
                  xor          a4, t1, t5
147:              sltiu        s0, t3, -907
                  slt          a2, a0, s6
                  add          s2, s0, sp
                  auipc        a4, 269126
                  ori          s10, t0, 1155
                  ori          t3, t3, 714
                  sra          s5, s8, s5
                  sra          a0, t5, s3
                  lui          a1, 824654
156:              auipc        a7, 140099
                  blt          t2, a2, 166f
                  srai         a5, a1, 17
                  la           s0, region_0+419 #start riscv_load_store_rand_instr_stream_9
                  slli         t2, a5, 8
                  sb           t6, 242(s0)
                  or           t6, a4, t1
                  lb           s1, -67(s0)
                  slti         s2, s5, -1168
                  nop
                  srai         tp, s4, 4
                  slt          a3, t3, tp
                  slli         a1, t1, 10
                  add          s7, s1, s4
                  srli         tp, t4, 3
                  andi         s4, t2, -1022
                  sb           a1, 194(s0)
                  lbu          t4, 87(s0)
                  xor          sp, s0, a7
                  lui          s2, 3386
                  slti         t0, a5, 1283
                  sltu         sp, t1, s2
                  lh           s2, -163(s0)
                  lbu          s2, 148(s0)
                  sub          a5, a6, s8
                  sb           s3, 99(s0)
                  slt          t6, a4, a5
                  lbu          s8, -159(s0)
                  sb           s10, 67(s0)
                  auipc        zero, 196686
                  add          s4, t3, s10
                  sra          a2, sp, s10
                  slti         s5, s6, 852
                  slti         a4, s3, 1349
                  sb           a7, 0(s0) #end riscv_load_store_rand_instr_stream_9
                  bgeu         s1, sp, 162f
160:              beq          a7, s6, 178f
                  srli         sp, sp, 8
162:              beq          ra, a1, 179f
                  slti         zero, s5, -1806
                  srl          s2, t2, t4
                  bge          t2, a1, 183f
166:              beq          s5, s6, 175f
                  xor          s2, s9, t1
                  bgeu         tp, s7, 183f
                  slli         a1, zero, 5
                  sltiu        tp, t5, 1038
                  sltiu        t5, ra, 398
                  andi         t6, t2, 1991
                  srai         s8, tp, 24
                  or           a2, a4, s10
175:              sra          tp, a2, s3
                  nop
                  andi         a0, sp, -1976
178:              sltu         s9, a7, t4
179:              sra          t5, s0, t1
                  sltu         a4, s4, a3
                  auipc        s0, 867824
                  srli         t2, t6, 25
183:              or           a7, a0, s8
                  or           s5, a6, a7
                  sub          s1, s3, a6
                  beq          a4, a5, 192f
                  sra          t0, t0, a7
                  ori          zero, s0, -1337
                  ori          s10, s5, -1907
                  srl          s0, tp, s0
                  blt          a6, t0, 192f
192:              sll          s0, s2, t5
                  sltiu        t0, t4, -1386
                  ori          s10, a3, 1783
                  beq          s8, tp, 206f
                  xori         s8, t2, 761
                  auipc        a7, 392766
                  slli         s5, s6, 31
                  auipc        s8, 85422
                  srl          zero, a1, zero
                  ori          t0, t6, 1187
                  nop
                  sub          s5, a4, a1
                  srli         s5, s9, 14
                  bne          ra, s2, 218f
206:              sltu         a2, a7, s2
                  nop
                  or           a5, s11, a2
                  sltu         zero, zero, s6
                  beq          a0, a2, 228f
                  xori         a1, s3, -33
                  srli         a3, s7, 3
                  andi         t3, s5, -906
                  sra          t3, a6, s5
                  add          s9, s11, zero
                  bge          t2, a4, 232f
                  sub          a4, t2, t0
218:              andi         s7, t3, 1101
                  slti         tp, a6, -1212
                  slli         s5, zero, 29
                  sub          a4, gp, sp
                  bgeu         t0, s7, 237f
                  sltiu        zero, a0, -1147
                  beq          a1, t0, 238f
                  ori          a2, s2, -1613
                  srli         s3, t0, 19
                  and          t6, t4, a1
228:              and          t4, s5, s9
                  slti         s3, s11, -441
                  slti         sp, s1, 271
                  ori          s0, a7, -1023
232:              add          s5, a3, s4
                  slli         s1, tp, 10
                  srli         t0, a4, 31
                  ori          t2, a4, -1933
                  sltiu        tp, s10, -12
237:              sll          s9, t2, s6
238:              srli         a5, zero, 24
                  or           s0, a4, gp
                  slli         s2, a7, 10
                  blt          a6, zero, 259f
                  xor          s8, a0, gp
                  auipc        a5, 395600
                  addi         t4, a1, -537
                  sltu         s10, s1, s3
                  xori         t4, gp, 1740
                  and          t4, a5, t3
                  and          s7, s9, t4
                  add          s10, tp, a7
                  lui          t3, 862798
                  sub          s7, s6, s0
                  slt          tp, sp, s7
                  beq          s5, a2, 265f
                  lui          zero, 515297
                  sltu         s1, s2, s5
                  sra          t5, t6, s1
                  xor          t2, s10, t2
                  add          t5, a1, a4
259:              slli         s9, s4, 21
                  auipc        a2, 1046157
                  xori         s7, s11, -231
                  and          a7, tp, s11
                  srl          sp, t1, s5
                  bge          s8, a3, 275f
265:              sltiu        sp, tp, -1491
                  sltiu        t0, t2, -62
                  sltu         s6, s3, s1
                  andi         t0, t5, 673
                  nop
                  lui          a5, 174745
                  sltiu        s1, s11, 669
                  slt          t5, a6, t1
                  sll          a0, a1, s10
                  sub          s1, tp, gp
275:              andi         s9, a5, 240
                  bgeu         s6, s1, 288f
                  srli         a5, s4, 18
                  sltu         t2, s5, s1
                  ori          gp, s1, 966
                  srli         sp, a5, 24
                  srli         zero, s1, 3
                  srl          s0, sp, s5
                  slti         s8, t5, -181
                  xori         a7, t5, 1342
                  slli         zero, s10, 18
                  or           s1, t4, t4
                  nop
288:              slli         s4, s10, 26
                  lui          t5, 253166
                  srai         a4, a7, 10
                  ori          a1, a6, 1585
                  bgeu         s5, a7, 293f
293:              or           t1, t4, t6
                  srai         t0, gp, 0
                  slt          a3, s10, s2
                  andi         s5, t0, -760
                  andi         s10, a6, 928
                  ori          s4, t3, 359
                  andi         t0, s10, -882
                  bgeu         a4, s1, 302f
                  sltu         s5, a3, t4
302:              blt          t0, gp, 320f
                  bge          a6, t1, 320f
                  blt          s11, a5, 317f
                  bgeu         s10, sp, 308f
                  nop
                  and          t0, s10, a1
308:              srl          t6, tp, s8
                  andi         s5, sp, 2021
                  nop
                  auipc        s1, 914340
                  slti         s3, a5, -1644
                  bge          s6, a7, 333f
                  blt          gp, s7, 325f
                  srli         sp, s5, 12
                  lui          a1, 687089
317:              srai         a2, a0, 7
                  bgeu         t0, s2, 336f
                  bge          s1, tp, 330f
320:              ori          s10, t2, -1912
                  slli         t5, t6, 8
                  srl          t0, a3, t4
                  bne          s10, t5, 341f
                  srli         s6, s8, 5
325:              bge          s11, t2, 336f
                  slti         s2, s10, -2018
                  add          s6, s3, s1
                  blt          s0, s1, 331f
                  slli         a3, s11, 22
330:              ori          s6, ra, -716
331:              auipc        gp, 775558
                  or           s2, s10, s7
333:              bltu         t1, s10, 344f
                  andi         s5, a5, 599
                  srl          a5, sp, s11
336:              xori         s3, a6, -1373
                  slli         s1, zero, 16
                  slt          s0, a4, t5
                  ori          tp, s1, -1548
                  bge          t3, t4, 358f
341:              ori          s2, a1, -1032
                  xor          sp, zero, t3
                  auipc        a0, 852076
344:              sra          s5, t5, ra
                  and          s8, zero, a2
                  srai         s2, s1, 26
                  bge          tp, t6, 360f
                  srai         s5, gp, 21
                  slti         a5, a6, 463
                  sll          zero, a5, s6
                  addi         a0, s9, -1973
                  bge          sp, s8, 359f
                  xor          gp, a1, s0
                  sub          t5, a2, s5
                  add          t3, s9, t5
                  srai         a7, t2, 4
                  slli         t5, a2, 6
358:              bgeu         s0, s10, 364f
359:              slt          s8, zero, sp
360:              or           s5, s0, s11
                  beq          t5, s3, 370f
                  add          s7, a7, a5
                  sll          s0, t5, t6
364:              sltiu        t6, t0, -1528
                  sll          tp, ra, ra
                  sltu         s2, s9, t0
                  ori          s10, t4, 850
                  andi         a2, s3, 393
                  blt          t4, s7, 387f
370:              sub          s8, ra, t2
                  sll          a3, s10, a7
                  and          t1, s5, sp
                  sll          t3, s0, a2
                  sll          a7, a1, s2
                  xor          a0, a2, t2
                  sub          s2, a2, a4
                  slt          t6, tp, tp
                  sll          a1, ra, tp
                  srl          t4, s4, s2
                  bne          s9, s7, 389f
                  xori         zero, a3, -1320
                  add          s9, sp, ra
                  bgeu         s9, s11, 395f
                  slt          a3, gp, s8
                  slt          t4, a3, a2
                  and          a4, a3, tp
387:              xori         s8, t1, 618
                  bge          t2, t2, 397f
389:              sra          a3, sp, t0
                  blt          a6, s11, 405f
                  slti         t3, t3, -1071
                  sll          t6, t1, t6
                  xori         a2, a0, -2003
                  sub          a1, s7, s6
395:              addi         tp, t5, -1810
                  srai         a0, s5, 25
397:              or           s0, t6, s5
                  srli         t4, zero, 15
                  auipc        a3, 460765
                  add          s10, s7, s11
                  nop
                  beq          sp, t1, 418f
                  bgeu         t1, s3, 418f
                  and          s1, gp, sp
405:              bge          a0, gp, 419f
                  sltiu        s4, t4, 1949
                  lui          s5, 519174
                  andi         a1, s1, 793
                  xori         s7, s8, 1883
                  bne          s5, s10, 420f
                  blt          s1, tp, 417f
                  srai         a5, a6, 19
                  slt          s9, a5, a6
                  sll          a1, a3, zero
                  andi         zero, gp, -1082
                  andi         tp, a4, -1026
417:              srl          gp, s3, a7
418:              bne          s2, s0, 421f
419:              blt          s11, tp, 421f
420:              sra          s1, a1, a0
421:              ori          s2, a5, 1933
                  andi         s4, a1, -877
                  xor          t0, tp, a3
                  add          s4, a4, s8
                  bne          s1, t5, 435f
                  and          a2, a3, gp
                  xori         tp, a2, -1729
                  sltu         zero, a1, s10
                  bge          a2, s4, 446f
                  la           t3, region_0+116 #start riscv_load_store_rand_instr_stream_0
                  sltiu        zero, s9, 1356
                  slli         a7, t0, 26
                  lhu          t1, -74(t3)
                  lbu          a0, 17(t3)
                  sb           zero, 91(t3)
                  sw           zero, -92(t3)
                  andi         t6, sp, 1880
                  sltu         a3, t2, t1
                  and          a7, t4, a1
                  add          t2, s3, s10
                  lb           tp, 73(t3)
                  slti         s2, t5, -1330
                  lhu          s7, -110(t3)
                  and          a5, s1, a3
                  sw           t2, -24(t3)
                  sltu         a5, s3, s2
                  sh           t2, 94(t3)
                  sh           a2, -38(t3)
                  sb           s5, -51(t3)
                  lh           a0, -98(t3)
                  sb           a6, 97(t3)
                  xor          a7, a7, s6
                  srli         t6, t1, 20
                  srai         s7, s1, 23
                  sltiu        s3, a6, 568
                  nop
                  lb           s8, -105(t3)
                  lbu          s8, 130(t3)
                  lui          a0, 1002472
                  sltiu        t5, a3, 1760
                  auipc        s5, 865081
                  sb           tp, 235(t3)
                  sb           tp, 34(t3)
                  lbu          t2, -3(t3)
                  lhu          s8, -48(t3) #end riscv_load_store_rand_instr_stream_0
                  nop
                  srl          a5, a5, a6
                  bne          t1, s0, 450f
                  slli         s7, t2, 23
                  slt          a2, s3, a2
435:              or           s3, s3, a0
                  and          s6, a6, ra
                  bgeu         t2, s8, 440f
                  nop
                  add          a1, s6, t1
440:              srli         a4, a2, 31
                  sra          t3, t5, s2
                  sub          s5, sp, s10
                  xori         s0, s8, -1215
                  slti         a4, t5, 1899
                  slti         s2, a3, 956
446:              bgeu         s1, s2, 461f
                  lui          t4, 48622
                  sltu         a7, a6, s6
                  add          a3, tp, t6
450:              srai         t3, a2, 16
                  and          a7, s4, s4
                  nop
                  sltu         s9, s1, s7
                  xor          t5, t0, t4
                  sltiu        a7, a2, 1815
                  slti         t3, a1, 544
                  bge          s10, s7, 470f
                  bge          t3, s1, 469f
                  slli         t3, a1, 24
                  srli         s9, s7, 5
461:              nop
                  nop
                  xori         s5, a4, -1575
                  andi         a1, gp, -557
                  sltu         a5, s11, t5
                  ori          s9, t2, -574
                  and          s2, s8, t3
                  slt          a7, s3, s2
469:              beq          t0, t2, 487f
470:              or           t0, a2, s3
                  xor          t6, s9, a6
                  xor          t5, t6, s4
                  srai         a0, a3, 24
                  slti         a7, t0, 1533
                  nop
                  la           sp, region_1+1708 #start riscv_load_store_rand_instr_stream_4
                  sltu         t3, a2, t3
                  sb           a7, -1(sp)
                  sb           a2, -9(sp)
                  lui          t2, 831852
                  lbu          s10, -7(sp)
                  andi         t1, a0, 1523
                  sltu         s2, a0, t2
                  xor          t1, t6, gp
                  sll          t3, s4, s10
                  sb           a6, -1(sp)
                  lb           a5, -11(sp)
                  lb           s2, 15(sp)
                  lb           gp, 9(sp)
                  sb           s2, -11(sp)
                  sltu         s8, a4, s0
                  xor          t6, zero, s1
                  sw           s5, 4(sp)
                  lb           tp, 6(sp)
                  lb           s6, 1(sp)
                  lhu          a0, 12(sp)
                  lb           a7, -1(sp)
                  slti         a3, t4, 1192
                  lbu          gp, -1(sp)
                  add          t4, s9, s1
                  nop
                  slti         a4, tp, 372
                  lbu          a1, -1(sp)
                  sb           t2, -6(sp)
                  lb           t6, -16(sp)
                  lb           t4, 2(sp)
                  lb           zero, 5(sp)
                  sra          t2, t1, s6
                  nop
                  lbu          gp, 12(sp) #end riscv_load_store_rand_instr_stream_4
                  bgeu         tp, t6, 485f
                  sltu         t3, tp, a7
                  sll          s8, t2, s6
                  sub          s3, s6, a1
                  nop
                  slt          s3, sp, s5
                  sltu         t4, ra, t4
                  bgeu         s1, s3, 484f
484:              beq          s4, a7, 491f
485:              bgeu         sp, t6, 496f
                  xor          s7, s0, s4
487:              or           t3, a3, a6
                  slli         a5, t3, 1
                  and          t4, s6, t0
                  sub          s2, t4, t2
491:              addi         a3, a3, -656
                  sub          s0, s7, s0
                  srl          t3, tp, sp
                  nop
                  blt          zero, t4, 504f
496:              xor          t5, s8, t6
                  bne          s11, t1, 512f
                  addi         a1, s10, -46
                  srli         s3, t4, 8
                  sltiu        t0, s0, -448
                  auipc        s0, 445876
                  bne          gp, s10, 513f
                  sub          t6, s2, s3
504:              andi         a4, s3, 785
                  sub          a1, a7, t5
                  xor          t4, t0, tp
                  bne          t3, a2, 519f
                  lui          s4, 838052
                  slli         t6, s5, 28
                  bltu         zero, a5, 528f
                  sub          s6, s4, s5
512:              bge          a0, sp, 524f
513:              blt          s11, t1, 519f
                  bltu         a7, tp, 523f
                  andi         s8, t4, -86
                  srl          s0, a1, t2
                  andi         s7, a1, 334
                  nop
519:              auipc        t5, 1013641
                  sll          gp, t6, sp
                  bgeu         tp, s10, 539f
                  xori         a0, s7, 1219
523:              sub          a3, s1, tp
524:              or           s7, s4, s10
                  bge          sp, a7, 541f
                  srai         t3, t4, 30
                  srl          s9, s9, s5
528:              andi         s7, a6, 1917
                  bne          s2, s10, 549f
                  or           s9, a4, t1
                  addi         zero, tp, -18
                  nop
                  nop
                  bge          tp, s1, 540f
                  nop
                  add          s0, s11, a3
                  and          t1, s0, gp
                  lui          a1, 283029
539:              ori          t5, t2, -326
540:              lui          t5, 1022034
541:              xori         s7, a6, 1353
                  bltu         s11, a1, 555f
                  ori          a3, a4, -499
                  addi         gp, s4, 802
                  slli         a0, t2, 15
                  auipc        a3, 163437
                  and          t6, a6, a4
                  slli         t2, s7, 2
549:              addi         sp, tp, -874
                  bltu         s3, t3, 561f
                  xori         s1, t4, 306
                  or           t0, t0, a6
                  beq          ra, sp, 567f
                  auipc        s6, 737715
555:              xor          a1, gp, zero
                  bne          a6, s4, 574f
                  bltu         t5, s7, 573f
                  slti         t4, s7, 1195
                  xor          tp, a6, s0
                  beq          s7, s4, 571f
561:              sltu         s10, gp, a2
                  nop
                  bne          a2, s1, 570f
                  la           sp, region_1+479 #start riscv_load_store_rand_instr_stream_6
                  and          zero, s6, a1
                  add          a7, a0, t5
                  lb           t0, 254(sp)
                  lbu          s10, -148(sp)
                  lbu          zero, 101(sp)
                  lbu          a5, 216(sp)
                  or           s1, a2, gp
                  xor          s6, s8, sp
                  auipc        s1, 602051
                  andi         s8, s2, 727
                  lbu          s7, -230(sp)
                  lhu          s9, 99(sp)
                  lbu          s8, -51(sp)
                  lw           t5, 233(sp)
                  lbu          a5, -110(sp)
                  slt          s0, s5, a1
                  lbu          s2, 116(sp)
                  sltiu        t4, a6, -254
                  lbu          s6, 181(sp)
                  sb           s3, -52(sp)
                  sb           s3, -103(sp)
                  slli         a1, t6, 9
                  srl          s6, a2, s5
                  sll          t1, a7, s3
                  srli         s6, s6, 20
                  sh           zero, -123(sp)
                  lbu          t0, -16(sp)
                  sltu         s10, a6, t4
                  lbu          s10, 17(sp)
                  srli         t2, a3, 21
                  slt          zero, gp, s9
                  lbu          a3, -48(sp)
                  sb           a1, -204(sp)
                  nop
                  ori          gp, t4, 520
                  lbu          s0, 14(sp)
                  slt          gp, a3, s4
                  lb           t0, -159(sp)
                  srai         zero, zero, 24
                  lbu          s7, -85(sp) #end riscv_load_store_rand_instr_stream_6
                  and          t6, s7, a3
                  srai         gp, a0, 4
                  srl          t6, s3, t4
567:              auipc        t6, 582958
                  ori          s9, s2, 1700
                  slli         s5, t6, 10
570:              slti         t5, s10, -988
571:              ori          a0, tp, 545
                  bne          a5, s9, 590f
573:              bge          s5, a0, 582f
574:              auipc        s8, 988824
                  auipc        t4, 236513
                  nop
                  and          a3, a3, s2
                  beq          t4, t0, 591f
                  beq          t6, t5, 585f
                  and          a7, s1, a5
                  add          a1, s6, s2
582:              addi         a7, a5, 1552
                  srl          t5, a1, a6
                  srli         a1, s7, 7
585:              slt          a2, a1, s1
                  slli         t6, a1, 11
                  sra          s4, a3, a7
                  sltiu        s6, t4, 277
                  slti         a5, s5, -1299
590:              srai         gp, a5, 15
591:              lui          a0, 126730
                  or           t4, tp, s2
                  and          s6, a2, s8
                  sll          t3, a7, s4
                  and          t3, a7, t5
                  bltu         s5, a3, 605f
                  srai         t0, a0, 11
                  la           s6, region_1+1509 #start riscv_load_store_rand_instr_stream_11
                  sb           s0, 34(s6)
                  sh           zero, 57(s6)
                  lb           t4, 50(s6)
                  add          a5, s7, zero
                  andi         s4, t0, 874
                  lbu          t3, 44(s6)
                  lb           a4, -10(s6)
                  lh           a3, -55(s6)
                  lbu          a0, -36(s6)
                  slli         s4, ra, 16
                  lh           sp, -41(s6)
                  sb           s9, -12(s6)
                  lb           zero, 26(s6)
                  nop
                  lbu          sp, -9(s6)
                  lh           tp, -7(s6)
                  sb           a5, -35(s6)
                  auipc        t3, 569333
                  lhu          a2, 3(s6)
                  lbu          t6, -44(s6)
                  srai         s3, ra, 10
                  slli         tp, zero, 21
                  sh           s10, -63(s6)
                  srai         s7, t0, 12
                  sb           a4, -8(s6)
                  lb           a1, 15(s6)
                  sb           s10, 21(s6)
                  srl          t6, a6, gp
                  lb           t5, 9(s6)
                  sw           a5, -13(s6)
                  srli         a2, a1, 19
                  lbu          s8, -56(s6)
                  lb           a3, 28(s6)
                  slti         a0, t6, -1658
                  sh           s9, 51(s6)
                  sw           a4, -9(s6)
                  lbu          t3, 58(s6)
                  sh           s10, -9(s6) #end riscv_load_store_rand_instr_stream_11
                  slli         a3, s10, 25
                  addi         s2, a7, 131
                  and          s10, s7, a3
                  sltu         gp, t1, s3
                  srl          t4, a3, t0
                  auipc        s8, 248068
                  beq          a4, s3, 615f
605:              and          t4, s1, s3
                  xori         a1, t2, -1848
                  or           zero, s1, s5
                  bge          s1, s4, 617f
                  addi         a1, s4, -738
                  srl          s3, s11, gp
                  srl          a4, s1, s9
                  sltiu        s4, s0, 1956
                  auipc        t2, 815601
                  slti         s6, s7, -1241
615:              sltiu        t3, a1, -406
                  sltiu        t0, s0, -1158
617:              nop
                  nop
                  and          t2, a2, tp
                  and          tp, s4, s5
                  and          s2, s4, tp
                  sll          s9, t4, a2
                  or           t1, gp, a7
                  sra          s9, t4, a5
                  xor          sp, a2, a5
                  bltu         s8, t4, 637f
                  auipc        t3, 923612
                  andi         a4, t3, 139
                  ori          s10, t0, 742
                  srai         s6, t3, 3
                  sub          a4, t2, s10
                  sltu         s10, s4, a2
                  andi         t3, a1, 1745
                  bltu         s4, zero, 652f
                  xor          t6, s4, a3
                  beq          gp, t4, 646f
637:              slt          t6, t5, t1
                  andi         s2, t0, -1702
                  lui          s8, 784256
                  lui          gp, 661128
                  bge          a6, t3, 644f
                  lui          tp, 787985
                  slli         a7, s10, 1
644:              slt          t6, s6, s2
                  slt          t3, gp, a7
                  auipc        t3, 1018217
                  lui          s7, 770655
                  slt          s6, t4, s4
                  slt          t4, sp, t6
                  la           t6, sub_2
                  addi         s3, a7, -1569
                  addi         t6, t6, 279
                  lui          a0, 750431
                  blt          t0, s3, sub_1_j3 #branch to jump instr
                  nop
                  ori          s4, sp, 1872
                  nop
sub_1_j3:         jalr         s2, t6, -279 #jump sub_1 -> sub_2
                  slt          t6, t2, ra
646:              addi         s2, s9, 185
                  bge          sp, t0, 650f
                  sll          s9, tp, t0
                  bltu         ra, s5, 661f
650:              nop
                  bge          a5, t3, 665f
652:              bgeu         s9, t5, 670f
                  bne          sp, s8, 654f
654:              lui          t1, 995125
                  xor          s8, t2, sp
                  sub          gp, s2, t1
                  blt          a6, s7, 675f
                  srai         s4, s6, 29
                  srl          s0, s6, a3
                  addi         a5, s7, 58
661:              bgeu         a1, s4, 676f
                  and          t5, s9, s6
                  sltu         s2, s9, s11
                  auipc        t5, 872891
665:              nop
                  nop
                  sltu         s1, t1, t1
                  sra          a5, s5, a0
                  xori         s10, s5, 1530
670:              sra          s1, s4, gp
                  andi         gp, a1, 1613
                  lui          a2, 263050
                  sltiu        t1, a2, 220
                  bne          s2, a4, 692f
675:              bne          s6, s1, 677f
676:              andi         s8, s11, -978
677:              bge          a2, ra, 689f
                  sra          t1, a2, s1
                  slli         t0, t5, 3
                  slti         tp, tp, 429
                  srai         s9, a5, 13
                  xor          zero, t4, s0
                  nop
                  sltiu        s8, t0, -1822
                  auipc        a3, 231945
                  sra          t5, t3, s11
                  sra          a5, t6, t4
                  slli         s4, s11, 9
689:              srli         t5, s7, 28
                  srai         s10, s3, 24
                  sltu         a1, a3, a5
692:              ori          t0, s6, 1145
                  sra          s1, t1, a3
                  srai         s4, t0, 4
                  sub          s7, tp, s10
                  srli         t1, a4, 9
                  sltiu        a1, sp, -1983
                  bgeu         a4, a4, 715f
                  slli         s2, a6, 27
                  auipc        a0, 237285
                  lui          s9, 1008966
                  slti         a3, s9, -112
                  addi         s5, s1, -96
                  slti         a3, t1, 1094
                  beq          a0, zero, 716f
                  auipc        s2, 991705
                  andi         t2, t3, 1146
                  slli         t5, s0, 27
                  slt          a4, a1, s4
                  sll          t3, s0, a5
                  sltiu        s10, a5, -1039
                  bgeu         zero, t6, 727f
                  srl          a3, s5, s6
                  sub          s9, s7, s5
715:              slt          t3, t3, s7
716:              lui          s8, 859856
                  slti         a2, t1, 427
                  beq          a4, a6, 724f
                  beq          t2, s8, 732f
                  xor          s7, sp, a6
                  srli         s2, s10, 28
                  slli         s10, s7, 31
                  bge          t4, tp, 743f
724:              blt          s9, s4, 735f
                  srai         a5, s4, 30
                  sub          a7, a6, tp
727:              nop
                  srli         t1, s1, 22
                  sra          sp, gp, s10
                  sltu         t3, zero, s4
                  slli         t0, a2, 24
732:              bltu         ra, a3, 735f
                  sra          t6, tp, zero
                  auipc        t6, 591168
735:              or           s1, zero, s6
                  bgeu         a5, a6, 743f
                  sub          a1, s1, tp
                  sra          t4, ra, t3
                  sltiu        s1, s5, 175
                  beq          t0, a2, 754f
                  slti         s9, s6, 545
                  sub          a1, s9, a5
743:              slti         a5, s9, -1029
                  nop
                  sub          s3, s8, s11
                  nop
                  ori          gp, ra, -2004
                  xori         s5, a3, 2020
                  sll          s9, t3, a5
                  sltiu        s10, s1, -1904
                  ori          s4, gp, -1881
                  sub          s4, s1, s5
                  xori         sp, t2, -1996
754:              bgeu         a2, s2, 763f
                  ori          a7, a5, 356
                  sltu         t4, t3, a0
                  slt          gp, a0, t0
                  or           s3, a5, a2
                  sra          s3, tp, s10
                  sra          s8, s6, sp
                  bge          s5, s8, 774f
                  beq          s0, gp, 774f
763:              slli         t0, a5, 18
                  sltiu        t3, s4, -516
                  sll          a3, s9, s4
                  lui          s5, 379316
                  xor          t0, s2, s9
                  srli         t6, s6, 5
                  sll          a2, a0, zero
                  and          s8, s5, s5
                  addi         s0, s5, 1084
                  beq          t0, zero, 774f
                  auipc        s7, 550701
774:              sll          t2, a5, zero
                  srai         s3, a0, 12
                  xor          t3, t3, a6
                  auipc        s8, 989562
                  slt          s6, a4, a4
                  and          s2, t6, s8
                  ori          a4, s1, -615
                  slli         s6, t0, 16
                  slt          a3, t3, s1
                  sltiu        a2, t4, -1892
                  xori         t5, s10, 376
                  srai         t3, a5, 22
                  bne          s3, s6, 801f
                  sra          t4, s5, tp
                  xor          s8, t0, s10
                  or           gp, t2, a1
                  sll          s2, sp, s7
                  auipc        a2, 114370
                  srl          t3, s10, s10
                  add          t0, s11, s2
                  slt          a1, zero, s2
                  bgeu         s3, s5, 813f
                  auipc        t3, 22327
                  bltu         s6, sp, 808f
                  xor          a2, a7, sp
                  slli         s6, s3, 8
                  add          s10, a1, t1
801:              andi         s10, ra, 1927
                  sltu         a7, t0, a0
                  and          t0, t4, s5
                  sra          tp, a0, s0
                  bgeu         s1, s10, 815f
                  or           s5, t0, gp
                  xori         t6, a2, 1739
808:              andi         sp, a3, -1490
                  bge          a3, s4, 822f
                  srai         s2, s5, 8
                  auipc        a5, 420735
                  slt          a5, s2, ra
813:              ori          s4, t4, -780
                  xor          a0, zero, sp
815:              nop
                  bgeu         s3, a0, 834f
                  slli         gp, t6, 26
                  sra          s8, ra, a4
                  xori         s8, t4, -1788
                  srl          t2, t2, s6
                  add          gp, a6, a7
822:              slli         gp, t5, 22
                  ori          s0, a0, 1572
                  xor          t2, s6, t0
                  slt          a4, t1, s7
                  auipc        gp, 857578
                  srai         t0, a0, 30
                  srl          s10, t4, a2
                  srai         s0, t2, 25
                  or           s2, s10, s5
                  slti         s7, a0, 862
                  bltu         sp, s0, 848f
                  srli         s10, s10, 15
834:              slli         s9, a5, 10
                  blt          a7, a6, 853f
                  sltiu        t0, a0, 173
                  sll          s3, t4, a3
                  sltiu        gp, s10, -1608
                  auipc        a0, 640802
                  sub          a4, t3, a3
                  srai         s3, t4, 13
                  addi         s0, a6, -1658
                  addi         a4, a4, -103
                  slt          zero, s0, a3
                  sra          s6, s7, ra
                  addi         s3, ra, 2032
                  bge          a2, s3, 850f
848:              bge          t3, a5, 859f
                  srai         t3, s3, 2
850:              bge          tp, s1, 862f
                  sub          a1, a6, gp
                  srli         a0, s8, 5
853:              andi         t0, s0, -1592
                  nop
                  blt          s11, sp, 872f
                  xori         t3, sp, -490
                  sra          t5, t4, sp
                  srli         s7, t5, 24
859:              xor          s5, a2, a4
                  bltu         s8, t3, 878f
                  sltiu        sp, ra, -1154
862:              ori          tp, t4, 1223
                  srl          t5, tp, s4
                  sltu         t5, t6, zero
                  ori          s4, ra, 932
                  bltu         tp, a2, 875f
                  sub          s7, sp, gp
                  bgeu         t3, a6, 888f
                  bne          zero, a2, 884f
                  addi         s7, s8, 1682
                  and          s6, t1, t5
872:              srai         a7, a7, 11
                  auipc        t3, 289892
                  ori          s9, s2, -1349
875:              slt          s8, s5, a2
                  bge          t0, a1, 887f
                  or           s1, a6, t5
878:              srli         tp, ra, 9
                  slli         a2, t4, 26
                  or           s9, t4, s2
                  slli         s2, a7, 13
                  and          a1, a1, t6
                  or           s2, a4, a4
884:              xor          s1, t6, s10
                  and          gp, s1, a1
                  bgeu         t3, t1, 887f
887:              slti         t2, a2, -204
888:              bgeu         s1, t5, 894f
                  lui          t6, 965845
                  blt          t0, a2, 896f
                  blt          a2, s3, 909f
                  bne          a3, s0, 901f
                  lui          a5, 822612
894:              sltiu        s7, s6, -1654
                  bne          a5, s6, 915f
896:              xori         a7, t4, -1806
                  bge          t4, gp, 903f
                  sll          tp, a3, t2
                  ori          t2, s0, -1315
                  nop
901:              srai         a1, s5, 4
                  andi         a7, a5, 1992
903:              srli         s8, t4, 9
                  sll          t6, s3, gp
                  sra          gp, zero, a4
                  sll          t6, s3, t0
                  bgeu         s8, s0, 913f
                  sltiu        a2, t6, 231
909:              blt          t5, a5, 920f
                  bgeu         s7, t6, 928f
                  andi         s3, s10, 1209
                  or           tp, t4, t3
913:              bgeu         t4, t3, 915f
                  bltu         a6, a1, 926f
915:              beq          a5, gp, 926f
                  sra          a5, s4, sp
                  or           t4, s0, t6
                  or           s3, t6, a7
                  addi         t0, a4, -75
920:              bgeu         s6, s2, 938f
                  sra          t6, s8, sp
                  slti         s4, s7, -1534
                  xor          t4, a0, s8
                  add          a4, t2, s8
                  blt          t4, s7, 934f
926:              srai         s4, tp, 3
                  lui          s7, 68464
928:              sra          s4, s4, s6
                  xori         t3, t3, 1010
                  slt          t5, s8, s6
                  auipc        s4, 151794
                  bge          a0, sp, 942f
                  sll          sp, zero, s6
934:              srl          s0, a4, sp
                  bge          s2, t2, 944f
                  bge          a2, s4, 939f
                  lui          t6, 384085
938:              ori          s5, s7, -273
939:              add          t4, a7, s2
                  add          zero, t4, t0
                  add          s10, s11, ra
942:              sll          a5, s10, t0
                  sll          sp, t3, s8
944:              xor          gp, s7, ra
                  srli         gp, s3, 26
                  beq          s3, a1, 958f
                  blt          gp, s2, 962f
                  bge          s4, t6, 961f
                  srl          gp, t1, sp
                  sub          t5, s3, gp
                  blt          s7, a6, 968f
                  srai         sp, a5, 15
                  or           s4, tp, s11
                  slt          s9, s0, s7
                  auipc        gp, 1020278
                  sll          a3, s0, s1
                  blt          t3, s8, 968f
958:              slt          t4, s2, tp
                  nop
                  srai         t5, s2, 18
961:              srai         zero, t4, 15
962:              srl          t0, a4, a1
                  srai         t5, t4, 24
                  sltu         a5, a1, a3
                  sltu         t6, s1, s8
                  srai         a2, a3, 29
                  xori         a2, s5, -858
968:              srl          t1, s5, a7
                  sll          a2, a5, s1
                  slt          s5, a4, s0
                  nop
                  sll          a7, s7, s5
                  andi         t3, t2, 213
                  srli         s7, s1, 14
                  sra          s6, t3, gp
                  ori          t4, t3, 2015
                  slti         s3, t0, 574
                  sltu         a7, a1, a6
                  lui          t6, 410129
                  bgeu         gp, a5, 995f
                  slti         t1, s5, -1836
                  and          t3, a7, a7
                  bge          s0, s4, 992f
                  srli         a3, s7, 20
                  srl          s8, s7, s9
                  sra          s10, s6, gp
                  and          s9, gp, a7
                  nop
                  slt          s10, s5, ra
                  sltiu        t3, s10, 1281
                  sra          tp, s10, a5
992:              add          a2, ra, tp
                  sll          a0, s7, gp
                  slt          s7, t1, t2
995:              andi         t2, s10, 669
                  srai         s9, t6, 13
                  bltu         gp, a6, 1015f
                  or           a5, tp, t3
                  bge          t4, t2, 1015f
                  sltu         a1, t4, t5
                  bne          a6, t6, 1002f
1002:             or           a5, tp, t1
                  sll          t3, t1, sp
                  sra          a0, a0, a7
                  bltu         a0, s10, 1018f
                  ori          s4, gp, -644
                  xor          a7, t2, s5
                  bltu         s8, a7, 1026f
                  blt          t5, s11, 1016f
                  bne          t6, a3, 1028f
                  bne          s1, a5, 1025f
                  slt          zero, s5, a2
                  bgeu         a4, s11, 1024f
                  slti         a7, a3, 660
1015:             xori         tp, s4, 1740
1016:             sub          s4, t5, t5
                  and          tp, a3, a6
1018:             srl          a2, s4, s5
                  sub          a0, zero, ra
                  slt          s0, gp, t1
                  slti         a1, a0, -262
                  nop
                  slli         s3, zero, 7
1024:             add          s4, a5, s2
1025:             slt          s2, s2, tp
1026:             ori          s10, a0, 1634
                  bge          t0, s0, 1030f
1028:             beq          t1, t6, 1040f
                  srli         a3, a1, 2
1030:             blt          a6, s9, 1045f
                  addi         s0, zero, -730
                  addi         t0, ra, -659
                  sub          a5, t2, t6
                  lui          tp, 1027877
                  lui          a2, 492064
                  sra          a5, s9, a7
                  or           a7, t5, a2
                  sub          zero, gp, s2
                  slti         a7, s9, -1280
1040:             sltiu        t4, s4, 1938
                  nop
                  lui          a7, 904265
                  ori          s8, s8, 1924
                  sll          s8, t4, a5
1045:             ori          s0, tp, -142
                  sub          a4, t0, s4
                  auipc        a1, 310152
                  or           s8, s7, t3
                  sltiu        t3, s7, -1689
                  sra          a5, s0, s1
                  slt          s9, t1, tp
                  srli         s5, a0, 23
                  auipc        t3, 124605
                  slti         s9, a7, -548
                  add          s4, s0, a2
                  auipc        t5, 367821
                  sltiu        a2, a7, -1607
                  and          a4, a5, a4
                  bge          s9, t2, 1068f
                  bltu         a0, t5, 1063f
                  sra          t6, s10, s3
                  slt          a2, s5, t4
1063:             bge          sp, s9, 1066f
                  slt          t6, s11, t2
                  slti         s5, t1, -2017
1066:             addi         s6, t1, -433
                  addi         sp, s8, 113
1068:             sltu         a4, s4, s6
                  bltu         s9, s3, 1082f
                  nop
                  xor          a2, s1, a3
                  addi         s4, t4, 1733
                  bne          t0, t3, 1082f
                  sll          s10, s11, a0
                  bne          a2, s2, 1090f
                  srl          a4, a7, t6
                  sltiu        t0, s9, 1673
                  nop
                  add          s0, s11, a1
                  auipc        t0, 903103
                  add          s2, t3, s1
1082:             bne          s2, s10, 1100f
                  add          s4, tp, t1
                  srl          s10, t1, a1
                  blt          s8, t1, 1099f
                  xori         s4, a2, -896
                  srli         s9, s10, 21
                  xor          s4, t5, s6
                  ori          t2, sp, -927
1090:             xor          a3, s7, s9
                  and          t0, s2, s0
                  sra          a3, s8, a3
                  andi         t5, s6, -1057
                  andi         s10, s9, -561
                  or           a1, a7, t0
                  beq          s4, gp, 1109f
                  ori          t5, t2, 740
                  addi         t5, s0, 360
1099:             blt          a6, t0, 1117f
1100:             beq          s7, s1, 1112f
                  srli         a1, gp, 21
                  auipc        s7, 487012
                  srl          t1, a3, t0
                  nop
                  sltiu        t3, t6, -1245
                  slt          t2, s1, t2
                  addi         s5, s1, -2019
                  beq          s11, s10, 1126f
1109:             sltu         s8, t1, ra
                  beq          s1, t3, 1128f
                  sltiu        tp, a1, -524
1112:             sltiu        s9, s6, -535
                  bgeu         tp, a3, 1124f
                  slti         gp, s5, -33
                  or           s10, a4, s2
                  and          tp, a7, a7
1117:             ori          s3, tp, -1418
                  addi         s6, s6, -1248
                  addi         s8, t5, -1077
                  sltiu        s9, t6, 1468
                  and          tp, s6, zero
                  bgeu         t1, s5, 1133f
                  addi         s3, a3, -815
1124:             addi         s4, a7, 1808
                  xori         a2, t5, -1933
1126:             lui          s5, 1021376
                  add          a3, t0, s3
1128:             sra          t1, s11, s9
                  slt          a5, t4, s6
                  sll          a3, a4, gp
                  sub          s8, gp, gp
                  bge          s4, s6, 1133f
1133:             sltiu        s2, sp, -635
                  add          a7, a6, gp
                  xor          tp, tp, a2
                  and          s7, s3, s7
                  addi         t0, t3, -412
                  bltu         t4, tp, 1156f
                  xori         t5, a2, -451
                  and          a3, a0, s6
                  bge          sp, t4, 1152f
                  slli         a7, a4, 8
                  add          zero, t2, s6
                  la           a0, region_0+974 #start riscv_load_store_rand_instr_stream_2
                  slt          t6, t1, s10
                  lbu          tp, 12(a0)
                  slli         t3, t1, 23
                  xori         t1, tp, 1474
                  lb           a7, -4(a0)
                  lb           gp, -10(a0)
                  addi         tp, a3, -1216
                  lhu          t1, 10(a0)
                  auipc        s2, 273711
                  or           t3, sp, s10
                  lb           s3, 16(a0)
                  lb           t5, -13(a0)
                  lbu          t5, -12(a0)
                  srl          s2, s6, s0
                  sltu         s9, t1, s11
                  lb           a3, -2(a0)
                  lh           a5, -12(a0)
                  lw           t0, 14(a0)
                  srli         a1, s5, 27
                  sb           s10, -10(a0)
                  xori         s1, sp, -1021
                  addi         s0, s1, -336
                  lbu          a5, -11(a0)
                  sw           s11, 6(a0)
                  lui          a3, 8024
                  sll          s9, s7, a2
                  lbu          t3, -10(a0)
                  andi         a4, s9, -898
                  lbu          s2, -3(a0)
                  nop
                  slli         a1, a6, 5
                  sh           a3, -6(a0)
                  auipc        s0, 254897
                  lb           s7, -13(a0)
                  xori         tp, gp, 345
                  sw           s7, 2(a0)
                  sh           s3, 4(a0) #end riscv_load_store_rand_instr_stream_2
                  sltiu        a1, ra, 2011
                  sll          t5, a2, s10
                  ori          s9, s8, -635
                  xor          s1, s10, tp
                  srai         t2, s9, 0
                  srli         a4, s8, 6
                  sub          a1, s5, s5
                  ori          s7, a6, -1402
1152:             ori          s3, a4, 562
                  sltu         s10, s4, a6
                  blt          tp, s11, 1170f
                  slt          t5, t6, s7
1156:             slt          s8, s0, a1
                  ori          s6, sp, -684
                  add          s1, t1, s1
                  lui          a2, 942422
                  sub          s1, sp, t5
                  sub          a5, s10, gp
                  or           s8, a7, s10
                  sll          a0, s0, a3
                  lui          tp, 809540
                  srli         s4, s7, 8
                  srl          t3, t3, s9
                  sub          a3, a7, a4
                  beq          a3, a1, 1170f
                  or           s8, s3, t4
1170:             slli         s1, a6, 27
                  sll          sp, ra, s3
                  blt          a0, s9, 1178f
                  beq          t2, t1, 1190f
                  and          a5, ra, s6
                  srai         gp, a3, 17
                  xori         s2, s1, -1903
                  beq          a2, sp, 1187f
1178:             xor          s0, a7, s0
                  beq          sp, gp, 1185f
                  sltiu        s10, a7, -1851
                  auipc        t6, 489574
                  sub          s2, s4, gp
                  bge          t6, t2, 1203f
                  ori          s9, t1, 534
1185:             sltu         a7, t2, a3
                  ori          t2, a6, -1329
1187:             blt          a4, a1, 1196f
                  blt          zero, gp, 1195f
                  sub          s1, s3, gp
1190:             slt          s6, a0, s10
                  bge          t4, s4, 1202f
                  slti         t3, ra, -33
                  xor          s6, s10, s5
                  bltu         s5, s1, 1203f
1195:             sll          zero, t4, a0
1196:             bne          s3, ra, 1210f
                  or           t3, a4, s9
                  srli         t1, s4, 11
                  srli         a7, t1, 9
                  srl          t3, t4, s9
                  nop
1202:             srli         a2, a3, 9
1203:             srl          s10, s1, s7
                  xori         a5, a5, -183
                  xori         s7, t6, -1956
                  bne          sp, s9, 1226f
                  srli         t1, t4, 21
                  and          s4, t5, a4
                  andi         a1, a1, -1194
1210:             or           s2, s10, t5
                  beq          a2, a7, 1229f
                  bltu         s2, s2, 1225f
                  nop
                  blt          a2, s6, 1221f
                  sltiu        s4, a1, 420
                  auipc        a7, 554345
                  sub          a5, s1, sp
                  and          a5, s1, t0
                  nop
                  slti         t4, t2, -1945
1221:             bne          t3, s10, 1227f
                  nop
                  bge          t0, t2, 1233f
                  beq          t0, s2, 1241f
1225:             addi         a0, zero, -1605
1226:             bne          t4, s1, 1227f
1227:             bltu         t6, s4, 1239f
                  srai         gp, ra, 28
1229:             ori          s5, s9, -1539
                  nop
                  sra          s6, a7, t4
                  sltu         s4, s9, a7
1233:             sltu         t4, s5, gp
                  nop
                  lui          gp, 2044
                  add          sp, a5, s6
                  sltiu        a5, s1, -1937
                  beq          gp, a5, 1253f
1239:             beq          a3, s7, 1252f
                  or           a7, s1, a5
1241:             lui          s5, 712514
                  andi         sp, gp, 1752
                  beq          t1, s10, 1261f
                  add          s5, a3, t1
                  bgeu         s0, tp, 1254f
                  sll          s0, t3, t3
                  or           t1, gp, a4
                  sra          s9, s10, t0
                  sltu         t6, t3, s1
                  addi         a4, t5, 1990
                  nop
1252:             addi         s9, t5, -1593
1253:             sra          t2, ra, s10
1254:             or           s9, a1, s0
                  xori         sp, s5, -1564
                  bgeu         sp, t5, 1268f
                  beq          sp, t1, 1259f
                  sltiu        t3, s2, 1273
1259:             srl          s10, ra, t0
                  slli         a4, gp, 19
1261:             andi         t4, t5, 1050
                  ori          t3, s0, -1327
                  or           s4, s5, tp
                  andi         a5, a3, 870
                  slt          sp, s10, s4
                  sltiu        a4, s2, -362
                  srai         a4, s7, 26
1268:             sltu         t6, gp, s4
                  lui          t5, 927825
                  srli         sp, sp, 5
                  or           a0, t2, s6
                  bgeu         s0, s6, 1283f
                  sll          t4, s1, s9
                  slti         a3, a5, -404
                  lui          t0, 325217
                  slti         s2, s4, -1996
                  bgeu         tp, sp, 1292f
                  sltiu        s1, s5, 1649
                  sub          a7, s1, s6
                  blt          a4, t3, 1298f
                  bltu         a4, t2, 1299f
                  and          s6, ra, a7
1283:             srai         s1, sp, 31
                  nop
                  and          gp, t3, s1
                  srli         a5, s4, 29
                  sltiu        a4, a5, -78
                  and          s10, gp, s8
                  srli         s10, sp, 22
                  srl          t4, a3, a4
                  and          s0, a0, s4
1292:             lui          sp, 759188
                  or           tp, s1, ra
                  sub          t0, a6, s2
                  sll          t3, t4, s2
                  xori         a7, s7, 217
                  beq          a4, a4, 1300f
1298:             nop
1299:             bltu         a0, s2, 1310f
1300:             blt          tp, t6, 1306f
                  andi         sp, s0, 1665
                  srli         s4, t0, 29
                  lui          a4, 785822
                  slli         t5, a1, 12
                  addi         s3, a2, 1867
1306:             srai         s7, s9, 11
                  auipc        a3, 35348
                  srli         s9, s2, 28
                  nop
1310:             slti         tp, zero, 1664
                  lui          gp, 777172
                  andi         a7, a5, 1879
                  srli         s9, s9, 29
                  beq          s3, s6, 1330f
                  bne          s5, s6, 1318f
                  slli         s3, t1, 7
                  sll          a2, s8, t1
1318:             addi         a3, s2, 1842
                  sra          tp, s10, s1
                  bge          s1, s7, 1338f
                  sltiu        a5, t3, 367
                  blt          t3, s3, 1333f
                  sltiu        sp, s9, 166
                  nop
                  srai         t4, a4, 27
                  addi         t1, s2, -832
                  ori          a2, tp, 660
                  ori          s10, ra, 15
                  andi         s6, s10, 686
1330:             slti         t1, a7, -1485
                  slli         t1, s6, 14
                  xor          s8, s3, gp
1333:             sll          s10, a5, tp
                  sltiu        s1, a6, 239
                  srl          a5, s3, a2
                  blt          a2, s10, 1345f
                  lui          s3, 502987
1338:             or           tp, t1, s3
                  sra          a4, s2, s5
                  bne          s7, s10, 1351f
                  xori         s6, a2, -1518
                  srai         s10, zero, 7
                  add          s7, ra, s4
                  srli         s2, s10, 1
1345:             lui          s6, 819413
                  nop
                  srai         s2, s2, 14
                  bge          s11, s2, 1351f
                  sltiu        t6, a0, 1007
                  slti         s5, zero, 1196
1351:             andi         gp, s2, 1940
                  sltu         a0, t6, t4
                  beq          a6, t0, 1368f
                  sltiu        s1, s10, -876
                  slt          t4, s4, t1
                  bltu         t4, a6, 1374f
                  sra          s10, sp, s10
                  srl          s9, a6, t6
                  andi         s3, s4, -1996
                  srai         s1, a3, 22
                  or           a5, s6, s7
                  slli         t2, a1, 27
                  sltiu        t2, s11, 804
                  slli         s3, a2, 13
                  addi         zero, a4, -491
                  sra          zero, t0, a7
                  sll          t1, zero, sp
1368:             bne          s5, t6, 1375f
                  bge          a3, s9, 1383f
                  bge          zero, s0, 1385f
                  sub          sp, t6, s4
                  slt          a7, s5, t5
                  srl          sp, s0, s6
1374:             bge          a7, s7, 1385f
1375:             addi         a3, gp, -722
                  slti         t2, t6, -603
                  bne          t6, s0, 1395f
                  srli         s5, s10, 21
                  slti         t3, tp, -1164
                  andi         t4, s7, 353
                  nop
                  sra          t0, a0, a6
1383:             bltu         s2, sp, 1396f
                  srl          t2, ra, a5
1385:             or           t3, sp, t0
                  sll          a0, s0, zero
                  bge          t1, a1, 1398f
                  and          sp, s4, s5
                  andi         a0, t2, -122
                  lui          s10, 981368
                  bgeu         t4, s7, 1409f
                  slt          s3, a0, t3
                  xor          s10, s2, s10
                  add          gp, t1, s0
1395:             srli         t5, t4, 2
1396:             srl          s0, a1, s4
                  xori         a4, s3, -1558
1398:             sltu         a3, t3, s5
                  andi         a2, a6, -999
                  add          s1, s7, zero
                  sltu         a5, a0, s7
                  slt          zero, sp, s8
                  sltiu        s6, a5, -623
                  bge          tp, a0, 1415f
                  bne          a1, a5, 1423f
                  slt          s4, gp, a3
                  or           a0, a2, t1
                  xori         t4, s11, -598
1409:             slti         t3, s7, 1748
                  slli         a4, s7, 19
                  ori          s6, t2, 1388
                  sltiu        a2, a1, 564
                  sltiu        t2, s3, 990
                  add          zero, s10, a2
1415:             sll          t0, t0, t3
                  or           t4, tp, s2
                  beq          zero, a2, 1430f
                  sltiu        t4, t3, -1957
                  bge          s8, ra, 1422f
                  andi         s1, t3, 247
                  ori          s4, s11, -139
1422:             lui          a7, 717191
1423:             srai         s7, s7, 8
                  slli         s10, s7, 26
                  blt          a7, t1, 1437f
                  sra          t1, t5, a7
                  sltu         zero, s3, s1
                  add          s3, zero, sp
                  srli         s0, gp, 28
1430:             slt          gp, s1, a7
                  xor          tp, t3, t2
                  beq          s4, t0, 1438f
                  beq          s3, a0, 1442f
                  slti         a0, a6, 2045
                  xori         s7, a6, 363
                  andi         s5, s5, 245
1437:             beq          s2, a6, 1438f
1438:             slt          s5, t6, t6
                  srli         t0, zero, 13
                  slti         s2, sp, -1049
                  or           a1, s1, gp
1442:             bgeu         s3, s6, 1451f
                  slt          a1, t3, t6
                  beq          t2, t5, 1462f
                  bge          a7, a7, 1457f
                  andi         gp, gp, -1038
                  addi         t4, a2, 387
                  auipc        a3, 612867
                  andi         gp, s2, -1869
                  slli         s4, s1, 7
1451:             srl          t6, t2, s3
                  srl          gp, t5, ra
                  slt          gp, t0, t5
                  srai         zero, s6, 27
                  srai         t0, s8, 28
                  slt          a1, s10, t1
1457:             srl          s5, a5, a6
                  bgeu         a2, s11, 1460f
                  nop
1460:             blt          gp, s4, 1470f
                  lui          a4, 596543
1462:             bge          a7, zero, 1482f
                  sltu         tp, s6, a1
                  slt          a0, tp, a5
                  sltiu        zero, a3, -368
                  la           sp, region_1+765 #start riscv_load_store_rand_instr_stream_1
                  nop
                  sra          t2, s5, t4
                  sb           s7, 50(sp)
                  sub          a7, a3, a2
                  slli         s5, s11, 8
                  xor          s7, tp, zero
                  xor          a7, s10, s8
                  sb           s9, 53(sp)
                  srai         t2, s6, 29
                  srli         s10, a0, 1
                  xor          tp, s10, a1
                  lbu          s9, -45(sp)
                  lw           t6, 11(sp)
                  auipc        a4, 633913
                  andi         s4, t6, 316
                  lb           a7, 36(sp)
                  lui          t5, 176154
                  lhu          s8, 21(sp)
                  slli         gp, t4, 23
                  lbu          s9, 28(sp)
                  sb           s0, -16(sp)
                  sb           a5, -33(sp)
                  nop
                  sltiu        s2, a5, 43
                  lb           a4, -25(sp)
                  srli         s2, a7, 23
                  lh           t2, -55(sp)
                  lbu          t0, -64(sp)
                  ori          t1, s8, 1226
                  xori         t3, s5, 387
                  andi         t1, t2, 1524
                  sub          s6, a4, s0
                  or           s2, t4, t4
                  and          t0, a7, t3
                  sltiu        s2, s0, -66
                  ori          a0, s1, -364
                  addi         s9, s0, -1300
                  xor          a3, s5, a5
                  sltiu        s0, gp, 585
                  lb           s7, -6(sp) #end riscv_load_store_rand_instr_stream_1
                  ori          s5, t1, -529
                  nop
                  andi         s8, a0, 694
                  srl          t0, s7, gp
1470:             ori          t5, s0, 1441
                  nop
                  bge          t3, ra, 1481f
                  slti         s0, t0, -1193
                  nop
                  bne          s8, a7, 1492f
                  xor          a4, t5, t5
                  sub          t3, s9, a2
                  addi         t5, s6, 798
                  srai         zero, s7, 16
                  lui          a0, 956457
1481:             nop
1482:             srai         t2, a6, 12
                  or           s3, zero, t5
                  beq          a7, s2, 1495f
                  bgeu         s11, a5, 1491f
                  slti         s2, gp, 605
                  nop
                  lui          s6, 107197
                  beq          t0, s5, 1505f
                  andi         t4, a5, 1031
1491:             srai         s3, s6, 15
1492:             srli         s5, a3, 11
                  bltu         s5, s2, 1502f
                  beq          s7, sp, 1496f
1495:             sll          s1, t5, t6
1496:             or           t2, a3, a2
                  lui          t3, 528991
                  sub          a1, zero, ra
                  bne          s8, s2, 1510f
                  bgeu         a2, s5, 1514f
                  bge          t6, a6, 1507f
1502:             or           s0, a6, t5
                  and          a5, t5, s3
                  beq          s2, t2, 1519f
1505:             add          a7, t6, a6
                  sll          a3, s6, s3
1507:             srai         t5, t1, 0
                  bne          t4, a6, 1523f
                  srli         t3, t5, 6
1510:             beq          t3, a0, 1513f
                  nop
                  sltiu        a2, t0, 225
1513:             srl          t4, a7, a4
1514:             lui          a2, 437145
                  bltu         s11, s8, 1516f
1516:             sltiu        a3, t1, 818
                  beq          t2, ra, 1535f
                  beq          s11, a3, 1536f
1519:             bltu         a3, s7, 1537f
                  lui          a2, 323340
                  ori          gp, s5, -1654
                  blt          s7, t4, 1529f
1523:             bge          t2, t1, 1533f
                  slt          s6, a2, s9
                  bltu         s7, s3, 1537f
                  add          a0, s6, s5
                  ori          t0, s1, -1426
                  lui          a7, 389210
1529:             sub          t1, s1, s3
                  srl          t5, t1, t6
                  bltu         s11, s4, 1534f
                  sll          a0, tp, a6
1533:             slli         s10, t6, 1
1534:             sltu         t0, t1, tp
1535:             bge          s9, ra, 1544f
1536:             lui          s2, 523437
1537:             lui          s5, 164308
                  beq          s2, ra, 1554f
                  ori          gp, s7, -1569
                  sub          sp, t2, s10
                  nop
                  bgeu         t4, a2, 1553f
                  sra          s10, s3, ra
1544:             sra          a4, t1, a1
                  bgeu         s2, a3, 1554f
                  addi         s0, a0, -1614
                  sub          a7, a2, gp
                  xori         s6, s3, 811
                  sltu         t0, t5, gp
                  lui          s6, 187922
                  bge          t3, s8, 1569f
                  auipc        s4, 136601
1553:             bge          t3, s8, 1564f
1554:             srai         s8, t6, 2
                  bltu         ra, t3, 1575f
                  bge          t2, zero, 1567f
                  sltu         s0, a5, s11
                  auipc        t2, 32473
                  blt          s8, t2, 1577f
                  and          s5, s11, zero
                  add          tp, t5, t2
                  slti         t0, s1, -984
                  slti         t2, s5, 1725
1564:             sub          zero, t4, s3
                  slt          s7, a0, s9
                  beq          a2, tp, 1578f
1567:             slti         sp, gp, 1235
                  sltiu        s6, t0, 1967
1569:             sltiu        t0, s8, 859
                  auipc        s8, 1036774
                  or           a4, a1, t6
                  sub          a5, s7, a5
                  beq          s10, a1, 1586f
                  nop
1575:             or           a2, a5, a7
                  andi         s5, zero, -553
1577:             srl          a2, gp, s5
1578:             or           a5, s11, tp
                  bgeu         t1, t1, 1585f
                  blt          s8, s10, 1597f
                  nop
                  andi         s8, a0, 1606
                  xor          zero, s11, sp
                  slti         sp, a1, -649
1585:             add          a1, s6, t6
1586:             sll          t6, t4, s4
                  slli         a0, s4, 5
                  bge          a1, t5, 1601f
                  add          t0, t2, s5
                  srl          a0, t3, s10
                  blt          ra, s0, 1594f
                  xori         t4, sp, -553
                  slt          s0, s0, s9
1594:             ori          a5, s3, 1593
                  blt          t5, t4, 1607f
                  andi         zero, a7, -1840
1597:             slli         s3, s2, 0
                  slti         s5, zero, 636
                  bgeu         s1, s1, 1608f
                  add          s6, s2, s6
1601:             srli         t0, a3, 10
                  addi         zero, s6, -1464
                  addi         sp, s3, 1067
                  bltu         a5, s4, 1624f
                  and          s4, t4, a2
                  slti         s9, t5, 407
1607:             bne          s11, s4, 1625f
1608:             xori         a3, a3, -1650
                  or           s5, t4, s10
                  ori          s6, t4, -1468
                  sltiu        a7, s9, 626
                  srli         s7, s4, 26
                  bltu         a6, t3, 1626f
                  bltu         a4, s3, 1625f
                  sltiu        s2, s8, -671
                  add          s2, ra, s0
                  sub          s7, a6, gp
                  addi         a7, s9, 958
                  sra          gp, zero, s2
                  beq          a0, s11, 1627f
                  sltu         a0, sp, t1
                  bltu         a3, s8, 1634f
                  beq          s8, ra, 1634f
1624:             bgeu         a2, s6, 1630f
1625:             andi         sp, s1, -245
1626:             and          a7, a4, s3
1627:             srl          gp, ra, a0
                  nop
                  slt          s4, s0, a7
1630:             srli         s6, a7, 10
                  beq          a3, s4, 1634f
                  beq          t6, t6, 1634f
                  ori          gp, gp, -1552
1634:             slti         s10, t2, 1131
                  or           s0, s7, a7
                  lw           s2, 4(s11)
                  slti         s6, t1, -965
                  srl          s5, a2, t1
                  addi         s11, s11, 32
                  slti         sp, a4, 1046
2129:             addi x23, x18, 0
2129:             jalr x23, x23, 0
sub_8:            bge          s5, a1, sub_8_stack_p
                  lui          s6, 597949
                  or           t0, t2, t4
                  sltiu        t3, ra, 1155
                  srl          s1, t6, t0
sub_8_stack_p:    addi         s11, s11, -56
                  slt          s6, s1, s8
                  sll          t4, a2, a5
                  sw           s2, 4(s11)
                  xori         t3, s8, -942
                  and          s7, s5, a3
                  sltu         t4, s10, s9
                  lui          sp, 361884
                  la           s7, sub_9
                  srl          t6, s10, a6
                  slti         a1, t0, -1983
                  addi         a4, s0, -1655
                  addi         s7, s7, -289
                  and          a1, s4, s0
                  xori         s4, s9, -592
                  or           s8, s3, a2
                  slti         s5, s2, 606
                  andi         sp, s0, -341
                  slt          s10, s3, zero
sub_8_j14:        jalr         s2, s7, 290 #jump sub_8 -> sub_9
                  la           s7, region_1+972 #start riscv_load_store_rand_instr_stream_0
                  nop
                  lw           s6, 52(s7)
                  sb           a5, -24(s7)
                  sub          s3, t0, sp
                  lh           a1, 6(s7)
                  or           s3, t2, t2
                  lb           s10, -13(s7)
                  lb           sp, -4(s7)
                  lb           a1, -35(s7)
                  xor          zero, s10, sp
                  sb           s2, 57(s7)
                  or           a2, s1, t2
                  sb           a3, 7(s7)
                  srli         t3, s7, 10
                  sb           s4, -37(s7)
                  sll          t4, s11, zero
                  xori         a1, a1, -805
                  xor          a1, a0, a2
                  sll          a2, s11, s6
                  andi         t5, s7, 879
                  lhu          a2, 26(s7)
                  lb           a5, 53(s7)
                  auipc        t4, 446737
                  lb           s1, -30(s7)
                  lb           s0, -22(s7)
                  lw           a5, -24(s7)
                  xori         a1, s5, 928
                  lb           s1, -25(s7)
                  add          a4, t4, t5
                  lb           a3, 29(s7)
                  sltu         a2, zero, t3
                  slt          t4, t5, a6
                  srli         gp, s2, 24
                  lbu          s9, 17(s7)
                  lh           t1, 48(s7)
                  sra          a0, tp, s2
                  andi         s5, s8, 1369
                  slli         s2, a6, 15
                  lui          s4, 158317
                  lb           a7, 18(s7)
                  or           s9, gp, t0
                  sub          s1, t0, sp
                  addi         s10, s8, -1196
                  lbu          a7, 31(s7)
                  sb           s10, -2(s7) #end riscv_load_store_rand_instr_stream_0
                  la           s9, region_1+1110 #start riscv_load_store_rand_instr_stream_1
                  sb           s2, -226(s9)
                  addi         t4, t1, -477
                  lbu          a7, -20(s9)
                  lb           zero, 3(s9)
                  lhu          t4, 168(s9)
                  slt          a3, a6, s7
                  and          a1, a6, t2
                  srl          a1, s2, gp
                  xor          t3, s5, s1
                  lb           t0, 31(s9)
                  lbu          s7, 35(s9)
                  sll          s7, zero, t2
                  lbu          t0, -247(s9)
                  xor          sp, a1, t3
                  lb           t2, -160(s9)
                  lbu          sp, 243(s9)
                  sh           a7, 108(s9)
                  or           a0, s9, a1
                  sh           zero, -196(s9)
                  sb           tp, 97(s9)
                  sb           t2, -224(s9)
                  lhu          t3, 84(s9)
                  lh           s0, 116(s9)
                  lbu          a7, -6(s9)
                  sh           tp, 14(s9)
                  lb           sp, -179(s9)
                  lhu          t5, 130(s9)
                  lw           a7, 242(s9)
                  lui          s0, 311966
                  sltiu        a0, s2, -359
                  lb           s10, 101(s9)
                  sb           t0, 84(s9)
                  lb           tp, 122(s9)
                  slli         a3, a6, 10
                  and          a0, t0, gp
                  lbu          t6, 48(s9)
                  nop
                  lbu          a2, -97(s9)
                  lb           s1, 245(s9) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+1634 #start riscv_load_store_rand_instr_stream_2
                  sw           a7, 58(sp)
                  lbu          zero, -33(sp)
                  addi         zero, t2, 101
                  srl          s9, a3, a3
                  sll          s1, s0, s4
                  lhu          t3, -6(sp)
                  or           s10, t6, a2
                  andi         s1, t1, 1707
                  sw           s10, -62(sp)
                  srli         t3, a7, 9
                  nop
                  lb           s9, 15(sp)
                  lb           t6, 19(sp)
                  lhu          t1, 8(sp)
                  or           tp, a6, zero
                  lh           s9, -50(sp)
                  sltu         a5, t4, s5
                  sb           a7, -23(sp)
                  sw           s3, 54(sp)
                  lbu          t2, -63(sp)
                  sra          a2, a0, s7
                  sb           t2, -11(sp)
                  slt          s8, t5, s10
                  lbu          s2, 9(sp)
                  srai         s5, s1, 13
                  lhu          s4, -10(sp)
                  lbu          t6, -38(sp)
                  lh           s10, 34(sp)
                  sltu         a5, a1, s4
                  lh           s7, 56(sp)
                  srl          t6, ra, ra
                  auipc        t6, 848262
                  sb           s9, -20(sp)
                  xor          s5, s6, a2
                  sltiu        a4, a0, -467
                  lhu          s6, -32(sp)
                  auipc        s5, 747632
                  srl          a1, a0, t5
                  and          t6, s0, sp
                  sb           s5, 21(sp) #end riscv_load_store_rand_instr_stream_2
                  srli         s4, s3, 13
                  beq          s10, t3, 17f
                  andi         s3, a6, -239
                  or           a2, s7, s8
                  or           a5, s8, t6
                  slli         s3, a6, 11
                  sltiu        t3, ra, -252
                  sra          a1, s1, sp
                  lui          a0, 209893
                  bge          t6, s11, 13f
                  bne          s1, zero, 23f
                  and          gp, a0, s11
                  add          a5, a0, t1
13:               slli         t4, a2, 20
                  ori          s9, s11, -1734
                  sra          t3, s2, s1
                  bgeu         s11, t0, 29f
17:               andi         t1, a1, -339
                  xor          s8, a5, t5
                  sub          s9, t5, a5
                  nop
                  blt          t5, s2, 34f
                  srl          a1, t5, tp
23:               or           a2, t6, t5
                  or           zero, s0, tp
                  beq          t3, a6, 28f
                  sltiu        sp, s1, -182
                  lui          t2, 170936
28:               ori          t3, t0, -742
29:               slti         t6, s11, 1772
                  add          t3, s7, tp
                  slti         s8, s4, 1530
                  auipc        t4, 223216
                  nop
34:               addi         tp, s0, -1735
                  srai         s9, t0, 29
                  sub          s2, s7, s5
                  srl          a4, sp, gp
                  addi         t1, s9, -1927
                  auipc        t3, 460182
                  sra          t6, tp, s6
                  blt          a1, a5, 42f
42:               bge          s2, zero, 61f
                  bge          s11, s2, 45f
                  nop
45:               blt          s4, t3, 46f
46:               blt          s7, s10, 47f
47:               slti         a1, s4, 98
                  srl          s3, sp, s10
                  blt          a0, a5, 65f
                  sra          a0, s9, s3
                  bne          t0, s4, 66f
                  add          t4, ra, s2
                  sra          t5, a5, a6
                  and          s9, s9, gp
                  ori          t5, a4, 1454
                  srai         s1, t3, 8
                  srli         t5, a6, 14
                  bne          a0, t2, 75f
                  srl          tp, s10, s3
                  or           t0, t3, a4
61:               bne          a2, zero, 74f
                  andi         a0, zero, 315
                  lui          t4, 465564
                  slt          s7, s8, s4
65:               bne          s2, s0, 85f
66:               srli         s4, s9, 20
                  ori          s1, t4, 903
                  xori         s6, a5, 135
                  lui          t3, 386822
                  nop
                  sltiu        a5, a7, 322
                  beq          a0, s8, 75f
                  slti         t0, s11, 503
74:               bne          s2, t5, 90f
75:               and          a3, s5, t3
                  sub          a4, a4, a2
                  srai         t2, t5, 6
                  add          s10, a2, t0
                  slli         gp, ra, 20
                  sra          gp, s2, tp
                  xor          t6, tp, s7
                  bltu         s0, a5, 99f
                  slti         t4, s4, -1770
                  addi         s6, s9, -1279
85:               bltu         tp, t5, 105f
                  or           a5, s8, t5
                  xori         s9, t4, -1875
                  srai         s9, t1, 22
                  ori          t4, s6, 975
90:               slti         s3, t0, 770
                  xor          s2, t1, a3
                  nop
                  bltu         a0, tp, 112f
                  srli         t1, s5, 2
                  ori          s5, s6, 826
                  sltiu        a3, a3, 395
                  ori          t4, a7, 1983
                  addi         a4, a6, -1887
99:               xori         tp, a6, -147
                  add          t2, t4, t5
                  bge          zero, a2, 109f
                  sll          a5, s3, s10
                  slti         s6, s1, 998
                  slti         s2, s11, -1926
105:              srli         s4, a2, 3
                  xori         a0, s7, -354
                  bge          tp, s3, 126f
                  srli         t0, t4, 22
109:              or           s3, t6, tp
                  srai         s10, s2, 30
                  sll          t5, a6, a5
112:              blt          tp, s9, 130f
                  sub          s7, s6, s7
                  bltu         s8, s0, 131f
                  slt          a7, s6, s3
                  andi         sp, s6, -426
                  srl          t0, s11, s2
                  slt          s1, s4, s3
                  blt          s5, s4, 134f
                  addi         s4, a2, 1711
                  srli         a0, t3, 8
                  sltiu        a5, t6, -887
                  and          s0, t0, sp
                  xor          s0, a1, t5
                  bne          s1, a5, 131f
126:              auipc        t3, 797487
                  slt          s10, a1, s5
                  xor          t6, zero, s3
                  sll          s2, a2, t4
130:              auipc        a1, 585097
131:              slti         s6, t6, 1900
                  blt          a7, ra, 137f
                  lui          a5, 744356
134:              slt          t5, ra, s11
                  bgeu         s1, t1, 154f
                  nop
137:              addi         s10, s1, 374
                  nop
                  lui          s7, 12346
                  sltiu        s8, s9, 454
                  bltu         s2, t3, 148f
                  bne          a6, ra, 143f
143:              add          s1, ra, s4
                  blt          t2, s10, 157f
                  sltu         sp, a6, s1
                  srli         s3, t1, 31
                  blt          a6, tp, 167f
148:              xor          s1, t5, t3
                  or           t6, s0, a2
                  bgeu         s2, s5, 163f
                  and          s3, t0, s7
                  or           s8, a1, t1
                  xori         t1, s10, -504
154:              xor          sp, s7, s2
                  add          a5, s5, gp
                  or           a1, a0, s1
157:              andi         a2, s3, 1406
                  sltu         s4, a6, sp
                  xori         s7, t3, 979
                  sub          t1, t1, a2
                  slli         a3, s1, 25
                  sll          a0, a3, t4
163:              nop
                  or           s7, s6, sp
                  andi         t2, t1, -1690
                  slt          a7, a4, a5
167:              sub          s9, s1, a3
                  addi         a5, s7, 1363
                  sltu         s7, a0, t6
                  bge          a5, sp, 173f
                  bne          s3, s2, 188f
                  bltu         a7, s0, 191f
173:              sltu         s9, a3, s4
                  slli         a1, t5, 1
                  bge          a4, s9, 190f
                  sll          s0, t1, s4
                  beq          a3, s6, 194f
                  bgeu         s9, a5, 179f
179:              xor          t1, s1, s9
                  addi         s8, s7, -718
                  add          zero, s8, s4
                  sltu         t3, s9, a6
                  slti         s7, s8, -2045
                  addi         s2, a2, -1128
                  nop
                  and          a0, s10, zero
                  or           a7, t6, tp
188:              xori         s8, a2, 610
                  bgeu         s8, a0, 195f
190:              and          a2, s6, a1
191:              xor          t6, sp, sp
                  andi         t3, t0, 300
                  srai         t0, s5, 28
194:              bgeu         s9, tp, 212f
195:              sltu         t5, t1, s3
                  ori          s1, s8, -232
                  slti         s7, t3, 343
                  sll          a5, a7, t4
                  srai         s10, gp, 30
                  and          tp, t4, ra
                  nop
                  lui          a5, 657296
                  auipc        s6, 826215
                  bgeu         a6, s2, 217f
                  srai         t0, s0, 1
                  srl          tp, s11, t4
                  slti         zero, t2, -800
                  and          s7, s10, a4
                  ori          t4, sp, -1895
                  slli         zero, s0, 28
                  sltu         t6, t6, s6
212:              bgeu         s2, s11, 232f
                  and          s4, t6, a0
                  bgeu         s11, s0, 217f
                  sra          s6, t6, a5
                  blt          a3, s6, 235f
217:              and          s8, a4, gp
                  xor          sp, a1, s10
                  sltiu        a4, t0, 687
                  nop
                  sll          s3, s7, a3
                  auipc        s0, 443769
                  ori          s7, s9, -85
                  srl          a3, s8, t2
                  bgeu         a7, gp, 241f
                  bge          s11, a4, 242f
                  bgeu         t2, zero, 246f
                  beq          tp, a5, 247f
                  addi         s6, s1, 102
                  lui          a3, 804907
                  or           s5, a3, zero
232:              sltu         s2, s7, a2
                  beq          sp, s10, 237f
                  sltiu        a2, t4, 445
235:              slt          s2, t0, t0
                  sll          a4, a6, s6
237:              slt          s7, t1, s9
                  sub          t0, a0, a2
                  bge          t4, s6, 255f
                  xori         a0, sp, -192
241:              ori          a7, tp, 546
242:              andi         s5, tp, -1936
                  sltiu        a4, s10, 681
                  bne          t5, t3, 251f
                  beq          s5, s0, 262f
246:              auipc        tp, 384603
247:              sra          s10, a2, t0
                  add          t1, s1, a5
                  beq          a0, a0, 262f
                  sltiu        a3, a5, 759
251:              srli         a2, s10, 6
                  sub          s1, gp, a6
                  bne          a0, s11, 261f
                  sra          s0, t3, s11
255:              slt          tp, s4, s10
                  sub          s9, t4, zero
                  lui          t1, 123457
                  xori         a2, gp, 212
                  sltu         a5, s0, a6
                  lui          sp, 26893
261:              sra          a4, s10, s11
262:              sltiu        s5, s11, -461
                  bge          gp, s11, 268f
                  bne          ra, t6, 266f
                  sll          a3, a4, s6
266:              srl          t6, a1, s2
                  xori         s6, s8, 796
268:              sltiu        t5, t3, -617
                  bne          t2, a2, 284f
                  sltiu        s7, s3, -845
                  lui          a1, 669780
                  slti         s10, t1, -1697
                  bne          s9, a0, 274f
274:              srli         a1, ra, 3
                  lui          s4, 17177
                  bltu         a4, a0, 277f
277:              bgeu         a1, sp, 278f
278:              blt          t3, s0, 298f
                  bne          s2, tp, 294f
                  beq          t0, a4, 299f
                  blt          a4, tp, 296f
                  sll          s2, a0, t6
                  ori          a4, s5, 146
284:              lui          t6, 307781
                  bge          t2, a0, 304f
                  ori          t0, s6, -1538
                  or           a1, tp, sp
                  sll          s0, s10, a1
                  auipc        s10, 216427
                  sltiu        a1, zero, 555
                  or           s4, ra, s6
                  beq          s6, s5, 296f
                  addi         t2, t5, -805
294:              addi         t3, s5, 1419
                  ori          s3, a0, 391
296:              slt          s5, t5, a7
                  nop
298:              lui          sp, 883965
299:              bltu         s0, tp, 300f
300:              andi         a5, s11, -1646
                  addi         t0, t1, -913
                  slt          a1, t1, s7
                  sll          a7, a1, s6
304:              slli         s7, t4, 31
                  bne          s7, s10, 308f
                  sltu         t1, s10, t0
                  bgeu         s2, s10, 310f
308:              srai         t2, zero, 18
                  bge          t3, t2, 311f
310:              sltu         s10, a3, s8
311:              ori          a0, t4, 1758
                  slli         a3, t0, 16
                  sll          tp, s5, a4
                  sltiu        s5, s2, 1285
                  srl          s3, s1, s11
                  srai         s3, a5, 20
                  ori          s10, t1, -146
                  bne          s0, t3, 326f
                  srli         s6, gp, 13
                  slli         a4, t0, 23
                  bgeu         a4, t6, 328f
                  sll          t0, a1, t5
                  slt          tp, s1, t1
                  srl          t3, s3, s3
                  sub          s10, zero, s4
326:              sll          tp, a7, t6
                  andi         t4, s8, 59
328:              lui          s8, 202789
                  lui          s2, 900111
                  and          t6, a5, a0
                  bge          a2, ra, 344f
                  xor          sp, t1, t6
                  addi         t1, a3, -12
                  slt          s2, a0, a6
                  or           a4, s0, a7
                  xori         gp, a3, 1297
                  nop
                  blt          s8, s5, 351f
                  ori          t4, s0, 1857
                  addi         a3, gp, 1641
                  sltiu        a1, a5, -880
                  andi         a3, t2, -1084
                  lui          s10, 340154
344:              srl          a1, s7, t6
                  bltu         t5, a7, 361f
                  beq          t3, s0, 351f
                  slti         t5, t0, 542
                  srl          s8, s10, s1
                  slti         tp, ra, 65
                  bge          s0, s10, 363f
351:              xori         t4, a6, -1
                  addi         t6, tp, 1288
                  and          s2, s7, t3
                  addi         a2, s11, -753
                  lui          t6, 811346
                  bltu         s4, t6, 372f
                  add          a3, s9, s6
                  slt          t3, s5, s0
                  sub          tp, a3, s6
                  slli         s10, gp, 11
361:              ori          t3, sp, -1534
                  xori         tp, s11, -1171
363:              sra          tp, s7, zero
                  xori         a4, a3, -1948
                  srai         s9, s11, 17
                  lui          s9, 42954
                  nop
                  srli         t5, s6, 7
                  bge          s10, s11, 386f
                  sra          a7, t6, a5
                  sub          t2, a0, a4
372:              auipc        t4, 547966
                  bgeu         t3, a2, 389f
                  sltiu        tp, s0, 1186
                  or           t4, s9, s5
                  sub          sp, a5, a4
                  beq          s10, sp, 397f
                  or           s4, gp, a2
                  bge          a7, gp, 385f
                  andi         a5, s1, 437
                  lui          s3, 39444
                  bge          t1, s2, 395f
                  blt          s10, tp, 402f
                  beq          zero, zero, 403f
385:              bltu         a2, s9, 402f
386:              bne          s8, a6, 403f
                  srl          tp, a4, t3
                  sltiu        t4, s2, 1498
389:              sll          s3, s9, a3
                  slt          a2, t1, t4
                  xor          t3, s5, a4
                  and          s2, gp, s9
                  slli         t5, t5, 27
                  addi         s1, a0, -1343
395:              and          t4, s11, t1
                  lui          t1, 897445
397:              sra          tp, zero, t1
                  sub          t3, sp, a0
                  sra          s4, s9, ra
                  auipc        s9, 182357
                  lui          s10, 662658
402:              add          s8, tp, s11
403:              bne          t5, s10, 421f
                  srl          s9, sp, s9
                  srai         a2, t2, 28
                  slti         tp, s7, -2020
                  or           s10, ra, sp
                  slt          a7, t5, a3
                  xori         a7, s3, 694
                  sub          gp, s6, t1
                  nop
                  sltiu        gp, t0, 317
                  bge          s8, t6, 426f
                  sll          zero, s8, s10
                  beq          s2, a5, 428f
                  xori         a0, zero, 172
                  nop
                  bgeu         s5, t4, 422f
                  srl          a1, s0, sp
                  bne          t2, ra, 435f
421:              sltiu        tp, a4, -133
422:              and          a0, s8, s11
                  nop
                  bge          zero, a2, 441f
                  ori          a1, s11, 1089
426:              beq          t6, a4, 429f
                  addi         s9, s2, -1515
428:              auipc        a3, 471452
429:              auipc        s3, 930774
                  blt          s5, a0, 433f
                  xor          t5, a5, s3
                  auipc        s3, 560769
433:              sub          s4, s3, t1
                  srl          s4, a2, tp
435:              or           t6, s8, s2
                  nop
                  sra          t3, a1, zero
                  srai         s6, s11, 2
                  andi         t5, a4, -713
                  sll          a0, t1, s3
441:              xor          sp, s8, gp
                  slt          s5, t2, s7
                  blt          s9, a1, 444f
444:              xor          s5, gp, tp
                  srl          a2, t2, tp
                  addi         s1, gp, -713
                  sll          a7, a1, s0
                  slt          tp, s4, a6
                  slli         s5, s1, 9
                  bltu         t1, sp, 469f
                  bne          a7, a1, 452f
452:              lui          gp, 133745
                  bge          zero, tp, 466f
                  lui          s1, 192413
                  sub          a5, s4, s11
                  andi         tp, s6, -772
                  slt          a3, a5, s5
                  sltu         s5, ra, a7
                  srai         a3, a1, 9
                  blt          t1, s1, 467f
                  slt          a5, gp, a5
                  srli         t2, a6, 13
                  add          t1, gp, s9
                  sub          tp, s5, a0
                  blt          s11, s4, 484f
466:              srli         s7, tp, 30
467:              bne          a2, s7, 480f
                  srli         gp, s3, 22
469:              xor          s6, a1, s2
                  or           sp, s3, a3
                  andi         s0, s6, -1331
                  bge          s11, t3, 478f
                  ori          s1, s6, -121
                  lui          t0, 902726
                  or           a7, tp, s5
                  sub          t3, s5, gp
                  slti         a0, a7, 1299
478:              sltiu        s6, gp, 587
                  xori         tp, gp, 1087
480:              ori          a5, s6, 1535
                  beq          a3, ra, 486f
                  nop
                  nop
484:              xori         s6, t1, 444
                  sltiu        s10, s0, -1547
486:              sub          a3, s11, s10
                  xor          sp, ra, zero
                  lw           s2, 4(s11)
                  addi         s11, s11, 56
                  srl          a5, t4, sp
                  and          t3, s8, sp
                  sll          a0, a0, a1
645:              addi x15, x18, 1
645:              jalr x15, x15, 0
sub_3:            auipc        a4, 383653
                  sll          t6, t6, a1
                  xor          sp, s0, t0
                  bltu         a7, zero, sub_3_stack_p
                  srai         gp, s1, 22
                  andi         t6, s10, 868
                  andi         s10, gp, 1384
sub_3_stack_p:    addi         s11, s11, -24
                  sw           s2, 4(s11)
                  and          s0, a3, s0
                  xor          tp, a6, s6
                  slti         t0, gp, 663
                  srai         s0, a1, 26
                  srli         a0, ra, 21
                  sub          s8, s5, a6
                  ori          t6, t3, 1069
                  sltiu        s7, t4, -539
                  sra          s9, t4, a6
                  xori         s2, s1, -486
                  sra          s9, a5, s7
                  sltiu        zero, s0, -1322
sub_3_j6:         jal          s2, sub_6 #jump sub_3 -> sub_6
                  la           gp, sub_6
                  sra          s9, t5, a3
                  addi         gp, gp, -487
                  slli         t4, s4, 24
                  beq          t4, s8, sub_3_j9 #branch to jump instr
                  xor          s6, t5, s3
                  srl          a1, s3, s10
                  sub          t3, gp, tp
sub_3_j9:         jalr         s2, gp, 487 #jump sub_3 -> sub_6
                  la           a5, region_0+723 #start riscv_load_store_rand_instr_stream_0
                  sltu         t3, s5, t2
                  sb           s11, 176(a5)
                  slti         s5, s6, 955
                  addi         s5, t3, 1234
                  addi         t6, s2, -314
                  srli         s8, s11, 14
                  addi         t1, t4, 1471
                  addi         s0, s7, -1599
                  lb           s6, 12(a5)
                  srl          s8, t2, t1
                  srl          a3, t6, gp
                  lb           s2, -241(a5)
                  sra          sp, tp, s3
                  add          s0, a5, sp
                  sb           a1, 31(a5)
                  lb           s8, -132(a5)
                  srai         t5, s7, 21
                  add          t5, s1, ra
                  nop
                  srli         t1, s3, 29
                  xor          t3, s8, s5
                  lhu          s4, 19(a5)
                  and          sp, a3, a4
                  lb           tp, -56(a5)
                  lb           s0, -4(a5)
                  sh           t5, 199(a5)
                  lb           a4, 58(a5)
                  and          a4, s8, t0
                  sub          sp, s4, a5
                  lbu          a4, 125(a5)
                  srli         t6, s9, 9
                  and          t1, t2, s1
                  sh           s6, 167(a5)
                  lhu          a2, 177(a5)
                  sh           a4, 187(a5)
                  srli         a1, s11, 2
                  lh           s6, -249(a5) #end riscv_load_store_rand_instr_stream_0
                  addi         s4, t2, 1069
                  sub          a7, t0, a4
                  xor          a4, s2, s0
                  nop
                  or           zero, s10, a5
                  bne          a1, s5, 6f
6:                blt          t3, s10, 8f
                  add          s2, s0, s5
8:                sra          s5, t5, a6
                  add          t1, t3, tp
                  xori         a7, t1, -55
                  bgeu         a1, a2, 15f
                  sra          t6, zero, t2
                  beq          t0, s3, 17f
                  andi         a2, s4, -614
15:               srli         a4, s7, 0
                  sll          a0, a3, s1
17:               ori          zero, s8, 770
                  slti         t4, s11, 1645
                  bge          s6, a0, 28f
                  auipc        a2, 615278
                  sltu         a5, s9, a2
                  ori          a2, a6, -230
                  blt          s9, ra, 40f
                  nop
                  beq          a1, gp, 36f
                  nop
                  andi         t0, tp, 783
28:               sub          a0, t0, t2
                  srl          s0, s8, s10
                  bgeu         t1, tp, 40f
                  bgeu         ra, t1, 47f
                  and          t2, t3, s2
                  sll          a4, t4, s4
                  beq          a5, t4, 36f
                  nop
36:               add          a0, zero, s7
                  addi         sp, s2, 1315
                  xori         tp, s4, 1079
                  bgeu         t0, s5, 43f
40:               sra          s2, sp, tp
                  srli         a2, s3, 13
                  and          s7, s4, t3
43:               sltiu        a3, s6, 1524
                  sra          t5, s8, t6
                  xori         s9, zero, 1479
                  ori          t1, s7, 177
47:               nop
                  bgeu         s9, s2, 67f
                  beq          t5, s3, 52f
                  andi         t4, tp, -1103
                  auipc        t4, 594512
52:               bne          s9, t5, 53f
53:               or           s3, t1, s11
                  xori         sp, s4, 621
                  blt          t0, sp, 70f
                  bltu         s10, s0, 76f
                  or           a3, tp, s7
                  blt          a2, a3, 66f
                  sll          t4, a3, a7
                  addi         t5, s5, -1583
                  sub          a4, s8, a2
                  andi         s6, s4, -266
                  nop
                  srl          t3, t5, t3
                  bltu         s0, a6, 66f
66:               bgeu         s1, t2, 72f
67:               xor          zero, t1, a1
                  slt          sp, a4, a7
                  and          s3, s5, a1
70:               add          s0, t0, s0
                  srli         t0, a5, 3
72:               and          s5, t6, gp
                  sltu         a3, ra, s7
                  srl          s7, t3, s9
                  beq          s2, a5, 81f
76:               xori         t6, s9, -1695
                  srai         s2, s11, 4
                  slt          s10, a5, s10
                  sltu         a1, a6, tp
                  srl          a4, t5, t1
81:               auipc        t6, 463837
                  auipc        a1, 732904
                  srli         a5, a6, 0
                  srl          t4, t5, s6
                  lui          s6, 94753
                  sra          t0, a4, a2
                  la           a7, sub_4
                  sll          s7, s5, s0
                  addi         a7, a7, -199
                  ori          s1, s5, -783
                  xor          s4, s1, s6
sub_3_j7:         jalr         s2, a7, 200 #jump sub_3 -> sub_4
                  auipc        a4, 985367
                  bge          tp, s9, 90f
                  slli         s3, t4, 3
                  bgeu         a3, s8, 98f
                  add          s4, a2, ra
90:               xori         t0, s11, -1927
                  sll          s7, zero, s7
                  andi         s6, t0, 1852
                  lui          t5, 1031808
                  bge          t5, s3, 100f
                  srai         t3, a1, 28
                  or           a7, s3, s10
                  and          a7, t6, t6
98:               addi         gp, s11, 2043
                  sltiu        t2, t0, 1111
100:              sll          a4, sp, a6
                  sll          a1, t0, a2
                  beq          t1, s8, 122f
                  blt          s8, a2, 121f
                  bltu         t4, a3, 110f
                  andi         s9, a5, 872
                  lui          s5, 886803
                  auipc        zero, 421797
                  addi         s8, a5, 8
                  xor          t6, s2, a7
110:              bgeu         a5, a6, 129f
                  bltu         s10, s10, 123f
                  andi         s9, t0, -1708
                  sra          s8, s8, s5
                  sll          t6, s4, s10
                  xor          s10, t4, sp
                  slt          tp, a5, t1
                  bge          a1, gp, 137f
                  auipc        s10, 212298
                  addi         zero, t0, -209
                  xor          a0, s6, a4
121:              sll          sp, sp, s10
122:              slti         s3, a1, -181
123:              bge          s0, t0, 128f
                  blt          sp, a5, 142f
                  add          s5, t1, t5
                  bgeu         s5, s1, 136f
                  bltu         sp, s8, 130f
128:              slli         s4, t0, 17
129:              slli         a5, s1, 30
130:              slli         t4, a3, 29
                  bltu         s0, t3, 135f
                  slti         t6, gp, -1231
                  srli         s1, s1, 21
                  lui          zero, 242071
135:              and          a3, a6, s7
136:              sltiu        t5, s6, 961
137:              sll          s5, t1, a5
                  ori          t1, t4, -1135
                  srl          s2, t6, a0
                  sltiu        a4, a3, -980
                  srli         s3, s10, 12
142:              sra          t0, t5, s0
                  srli         s10, a1, 28
                  auipc        sp, 808349
                  slli         t1, s7, 18
                  xori         a5, a2, -707
                  bge          a3, s6, 153f
                  slt          sp, a2, s11
                  add          s8, s4, t5
                  sltu         s5, s3, s2
                  auipc        a2, 15149
                  add          t4, a0, gp
153:              auipc        s5, 123536
                  bge          t1, s5, 160f
                  andi         s5, s5, -909
                  srai         s5, sp, 3
                  xor          t6, sp, t0
                  blt          s10, s5, 162f
                  xor          s8, s1, t2
160:              sltu         gp, s7, a4
                  bge          t3, t5, 180f
                  ori          gp, s9, -281
                  sltiu        s5, t5, -1287
                  xor          a1, s2, a6
                  la           sp, sub_5
                  xor          s5, t6, a4
                  addi         sp, sp, 125
                  sltu         a0, a2, t5
                  srai         t6, a4, 0
                  sub          t6, t3, s4
                  and          gp, sp, s2
                  sub          gp, a4, s4
sub_3_j8:         jalr         s2, sp, -125 #jump sub_3 -> sub_5
162:              blt          zero, s4, 170f
                  sra          t1, a1, s3
                  or           t2, s5, t5
                  and          a2, s5, s6
                  andi         s0, t5, -1000
                  andi         a0, s10, 1052
                  sra          s6, s4, s2
                  bge          s11, s4, 171f
170:              bltu         s0, s6, 174f
171:              sltiu        a0, s5, 1976
                  slli         s8, s4, 17
                  sub          t4, s6, s0
174:              auipc        s5, 449299
                  auipc        a4, 603675
                  nop
                  bltu         t0, s6, 182f
                  slti         a5, a7, -682
                  sub          s1, t6, t4
180:              sub          t4, a5, s9
                  xori         a5, zero, -952
182:              addi         a2, s9, 1082
                  lw           s2, 4(s11)
                  nop
                  addi         s11, s11, 24
                  slt          t0, s4, t0
                  lui          s6, 69426
277:              addi x5, x18, 1
277:              jalr x5, x5, 0
sub_6:            bne          t2, t4, sub_6_stack_p
sub_6_stack_p:    addi         s11, s11, -16
                  andi         s5, t6, -1555
                  lui          s1, 315801
                  sw           s2, 4(s11)
                  nop
                  la           sp, region_1+924 #start riscv_load_store_rand_instr_stream_5
                  auipc        t5, 222722
                  lbu          s3, -251(sp)
                  sb           sp, -194(sp)
                  sll          a1, s9, s6
                  sltu         s1, sp, t3
                  and          s6, t5, s10
                  xor          s9, a5, gp
                  sb           zero, 239(sp)
                  nop
                  lbu          a0, -175(sp)
                  sb           gp, -177(sp)
                  lb           s5, -47(sp)
                  nop
                  add          s10, s8, s7
                  auipc        t3, 456208
                  sra          t6, s8, a0
                  auipc        s5, 708066
                  andi         s8, s2, 1689
                  sw           a2, -224(sp)
                  lbu          a7, -87(sp)
                  slt          s8, t0, t6
                  sltu         t3, s5, s2
                  lbu          s7, 91(sp)
                  lbu          t6, -183(sp)
                  lbu          gp, -122(sp)
                  sb           tp, -30(sp)
                  srli         zero, t5, 5
                  xor          s4, s10, s2
                  sb           s11, 249(sp)
                  slt          gp, s9, s3
                  srl          t5, sp, s1
                  sb           a5, 14(sp)
                  or           t4, a1, s6
                  xor          s0, sp, s6
                  slti         s8, t1, 679
                  sb           s3, 162(sp)
                  lb           s7, -182(sp)
                  sb           ra, -58(sp)
                  slti         s1, t6, -219
                  lui          s0, 67789
                  lbu          s0, -63(sp)
                  lb           t1, -18(sp) #end riscv_load_store_rand_instr_stream_5
                  la           t1, region_1+997 #start riscv_load_store_rand_instr_stream_0
                  lhu          t5, -63(t1)
                  xori         t2, t2, -872
                  andi         s10, s9, 1179
                  sh           gp, 9(t1)
                  sb           a6, 64(t1)
                  slti         a4, t4, -1935
                  sltu         a2, a4, t4
                  sll          gp, a5, a0
                  lbu          a7, -23(t1)
                  lb           s5, 55(t1)
                  xori         s10, zero, -823
                  sltiu        a7, a7, 750
                  lb           s3, 22(t1)
                  sw           s3, 3(t1)
                  lbu          a2, 16(t1)
                  srli         a1, ra, 0
                  ori          tp, a2, 318
                  and          s3, a5, s2
                  sub          a1, zero, t5
                  sb           s4, 35(t1)
                  lb           tp, -50(t1)
                  srai         t3, s1, 26
                  lhu          zero, -63(t1)
                  lbu          a5, -44(t1)
                  lb           tp, 5(t1)
                  sra          a0, a6, t4
                  addi         a1, a2, -252
                  and          s5, s2, s5
                  lb           s6, 45(t1)
                  xori         t4, t4, -277
                  sltiu        t5, a2, 1743
                  slti         zero, s2, -161
                  lui          s9, 526991
                  auipc        t6, 229477
                  srl          s6, s8, s3
                  sh           s11, -41(t1)
                  lui          t0, 239596
                  lb           s7, 24(t1)
                  srl          t2, s8, s7
                  lbu          t5, -12(t1) #end riscv_load_store_rand_instr_stream_0
                  la           s4, region_0+586 #start riscv_load_store_rand_instr_stream_7
                  slli         s10, gp, 3
                  lbu          gp, -3(s4)
                  slti         t6, gp, 515
                  sb           a0, 2(s4)
                  addi         zero, sp, -762
                  srl          a4, s8, t6
                  sub          s5, a7, s1
                  lbu          a2, 9(s4)
                  auipc        s10, 136427
                  and          t2, a7, s10
                  sltiu        t0, ra, -1645
                  sw           tp, 10(s4)
                  lbu          s10, 5(s4)
                  or           a0, s10, s7
                  sb           s7, 16(s4)
                  slli         t4, s5, 2
                  lhu          t6, -10(s4)
                  lb           t1, -13(s4)
                  lh           s8, 10(s4)
                  sb           t6, -7(s4)
                  sh           s8, 4(s4)
                  lbu          t3, -10(s4)
                  sw           s2, 6(s4)
                  lbu          gp, 5(s4)
                  add          s8, t3, a3
                  srai         a7, s6, 18
                  lhu          s9, -4(s4)
                  sb           s9, -7(s4)
                  sh           a2, -2(s4)
                  sb           s11, -1(s4) #end riscv_load_store_rand_instr_stream_7
                  la           a3, region_0+182 #start riscv_load_store_rand_instr_stream_6
                  lbu          s0, 240(a3)
                  sb           s4, 45(a3)
                  addi         s1, a2, 1165
                  add          t0, a3, s2
                  srli         t2, a4, 30
                  sra          a1, s1, a0
                  ori          a5, s11, -1961
                  nop
                  and          zero, s1, s4
                  sub          a7, s3, zero
                  nop
                  slli         s4, gp, 31
                  slti         s2, s8, 730
                  lb           t3, 233(a3)
                  slt          zero, t4, zero
                  or           s4, a0, a0
                  sra          t0, s9, a3
                  lui          sp, 541907
                  sb           s8, -17(a3)
                  sb           a5, 230(a3)
                  lbu          t6, -101(a3)
                  slti         t4, s6, -1393
                  lbu          s2, 92(a3)
                  srl          s10, s5, t1
                  xori         zero, t0, 520
                  auipc        s8, 572679
                  lbu          a5, 82(a3)
                  sb           s6, -79(a3)
                  sw           a5, -162(a3)
                  addi         s2, t3, -156
                  or           t6, sp, t5
                  slti         t2, t4, 331
                  srl          a4, s6, s4
                  lhu          s6, 254(a3)
                  lbu          zero, 101(a3)
                  sltiu        tp, a7, 472
                  addi         s0, s0, 283
                  add          s8, s9, s10
                  sra          s9, tp, s5
                  srl          a7, s5, s3
                  lbu          a0, 126(a3)
                  sltu         s3, t0, t5
                  lbu          t3, -182(a3) #end riscv_load_store_rand_instr_stream_6
                  la           a5, region_1+1898 #start riscv_load_store_rand_instr_stream_2
                  sh           tp, -114(a5)
                  slli         a0, a6, 8
                  sll          s2, s4, a4
                  sll          t5, t6, ra
                  lb           s5, -135(a5)
                  lbu          t1, -23(a5)
                  sh           gp, -156(a5)
                  lb           t6, -158(a5)
                  sb           t2, -215(a5)
                  slli         s8, t1, 23
                  lb           t6, -253(a5)
                  lh           t0, 0(a5)
                  slt          gp, a1, a7
                  sb           a4, -189(a5)
                  srl          a0, tp, s1
                  srl          tp, zero, s10
                  lb           a7, -154(a5)
                  lbu          s10, -215(a5)
                  lb           s6, -168(a5)
                  lhu          a2, -140(a5)
                  lui          a2, 444874
                  slt          t0, s11, a0
                  sb           a4, -127(a5)
                  or           s10, t6, s7
                  lhu          tp, -242(a5)
                  add          a4, s2, t3
                  sb           t6, 42(a5)
                  nop
                  xori         s7, a2, 1170
                  lbu          t0, -179(a5)
                  and          s3, s9, s8
                  sh           s2, 48(a5)
                  lb           s4, -40(a5)
                  lui          s4, 755212
                  sw           a2, -246(a5)
                  sltiu        sp, sp, -48
                  lbu          a1, -72(a5)
                  sh           t4, 60(a5)
                  lbu          a7, -87(a5)
                  lh           gp, -250(a5)
                  sra          sp, a3, t1
                  sb           sp, 22(a5)
                  nop
                  sb           t1, -163(a5)
                  sb           t2, -198(a5)
                  sll          s9, a4, t2
                  sb           t1, 21(a5)
                  sb           s4, -201(a5)
                  lbu          s0, -127(a5) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_1+1032 #start riscv_load_store_rand_instr_stream_4
                  lhu          s6, -30(sp)
                  sb           s11, -37(sp)
                  slti         t5, gp, -984
                  slti         s1, a5, 1557
                  xori         t6, s7, -348
                  sb           t6, 17(sp)
                  sb           a1, 42(sp)
                  nop
                  srli         a3, a4, 17
                  slt          s5, zero, a6
                  sb           a6, 53(sp)
                  or           t2, s4, ra
                  srli         a3, a7, 10
                  or           zero, a5, a7
                  auipc        t5, 570160
                  lh           a3, -22(sp)
                  sh           gp, -16(sp)
                  sb           s6, -13(sp)
                  lb           t6, -57(sp)
                  slt          t4, t1, t6
                  sb           a4, -4(sp)
                  auipc        tp, 334883
                  lui          tp, 99390
                  lbu          a3, 49(sp)
                  xor          t6, s4, t4
                  lui          a1, 980865
                  sb           s0, -38(sp)
                  xor          s2, s1, s5
                  sb           sp, -61(sp)
                  srl          a5, t6, t3
                  sra          s7, s4, t4
                  andi         a7, a1, -834
                  slti         a0, t5, 1787
                  sltu         s0, s7, tp
                  auipc        s2, 220566
                  add          a0, s4, t4
                  andi         s5, s7, -932
                  srl          t1, s10, t2
                  srli         s3, s6, 11
                  sb           t0, 27(sp)
                  sb           a4, 23(sp) #end riscv_load_store_rand_instr_stream_4
                  la           s6, region_0+1206 #start riscv_load_store_rand_instr_stream_3
                  xor          a4, a2, t2
                  lb           a3, -16(s6)
                  or           t2, s9, a5
                  sb           s8, -9(s6)
                  lbu          a2, 9(s6)
                  nop
                  lui          zero, 721262
                  srli         t1, s7, 2
                  sltu         t3, s0, a0
                  or           a0, ra, a6
                  lbu          a7, 4(s6)
                  lbu          s9, -12(s6)
                  srai         s9, s9, 29
                  sra          a5, a6, t0
                  ori          s5, a1, 750
                  lb           t1, 4(s6)
                  xori         t2, a0, -1808
                  add          s1, s10, a0
                  sll          t0, a2, s5
                  ori          a1, a5, 1540
                  sra          t5, t1, s4
                  add          t0, s8, gp
                  addi         t6, sp, 891
                  sll          a4, s3, s10
                  lbu          zero, 9(s6)
                  sb           sp, 12(s6)
                  lbu          a2, -7(s6)
                  srli         a7, t2, 18
                  sh           s8, -8(s6)
                  slti         s7, gp, -2041
                  sb           s5, 15(s6)
                  sltiu        s9, t5, 973
                  lw           sp, -2(s6)
                  sb           a5, 3(s6)
                  srl          t6, a4, a4
                  and          s0, ra, t0
                  addi         t0, a3, -1211
                  nop
                  sb           tp, -3(s6)
                  slti         s4, s2, -1768
                  sltiu        s3, s3, 1755
                  lhu          s8, 12(s6) #end riscv_load_store_rand_instr_stream_3
                  xori         s2, a3, 303
                  srl          s2, t3, sp
                  xor          s7, s7, tp
                  sub          a1, gp, t2
                  andi         a5, t3, 239
                  sra          t4, gp, t6
                  or           t5, t3, a6
                  xor          t4, a3, s1
                  andi         t1, s11, 1755
                  add          s4, a5, s8
                  srai         t4, tp, 17
                  xori         s2, t5, -93
                  bgeu         a1, t4, 17f
                  and          s5, a1, tp
                  lui          t1, 601496
                  andi         t0, t5, -1817
                  auipc        t2, 873932
17:               sub          s7, tp, t5
                  auipc        s2, 52737
                  bge          tp, t0, 35f
                  add          t3, tp, sp
                  bgeu         t6, tp, 31f
                  sltu         tp, s8, s9
                  sll          s0, zero, t6
                  slti         s6, t5, 341
                  slt          s10, a6, a7
                  bltu         t3, s4, 38f
                  blt          tp, a3, 35f
                  xor          tp, s4, a3
                  sll          s0, t1, a3
                  and          a3, a1, zero
31:               slt          t0, gp, s2
                  andi         tp, gp, 1324
                  andi         s5, s10, 12
                  andi         a4, s10, 1106
35:               and          t4, s8, t3
                  srl          s4, s9, sp
                  add          t4, t0, s9
38:               andi         a5, s7, 514
                  xor          t2, s2, sp
                  sll          s9, t2, a5
                  or           a0, s7, t1
                  srai         t2, a5, 31
                  sltu         s0, s2, ra
                  bge          tp, s11, 47f
                  bge          a1, s6, 62f
                  addi         zero, gp, 2001
47:               auipc        s3, 699259
                  xor          gp, s3, t2
                  sltiu        t5, t6, -1818
                  andi         s8, zero, -1115
                  ori          s1, zero, 292
                  slli         t4, t5, 21
                  srli         a2, sp, 18
                  lui          s6, 899974
                  beq          s4, a5, 69f
                  sra          a2, s6, a3
                  sra          zero, a2, s5
                  add          t2, t5, s3
                  lui          s3, 481294
                  addi         t6, t3, 286
                  srli         a7, t0, 24
62:               sll          a0, s5, s6
                  bge          a6, a3, 66f
                  beq          t6, s2, 74f
                  bltu         a4, a4, 83f
66:               slt          s2, s11, a1
                  sll          t0, a5, a7
                  ori          t4, a2, -1168
69:               beq          s6, t4, 74f
                  xori         zero, s7, -1316
                  beq          a1, a1, 87f
                  addi         t1, gp, 1288
                  or           sp, s11, ra
74:               sltu         s8, a5, s2
                  add          s10, s8, tp
                  sll          s2, s1, t6
                  sra          a1, s7, a5
                  srai         a5, t4, 15
                  ori          a7, s10, -1177
                  or           gp, a6, a0
                  sltiu        gp, a2, -1560
                  sltiu        a1, ra, -1687
83:               bltu         a4, t3, 100f
                  bge          t4, a3, 104f
                  sra          s8, s10, a1
                  addi         t4, a6, 791
87:               and          sp, zero, s11
                  bne          zero, a2, 105f
                  sltiu        s4, s3, -661
                  or           s4, s11, gp
                  slli         t1, t2, 18
                  beq          s5, a1, 110f
                  srl          a4, a3, s9
                  bge          t5, s8, 108f
                  or           s0, t2, s5
                  auipc        tp, 154081
                  bne          s2, t5, 111f
                  add          zero, s7, s1
                  addi         s0, s10, 68
100:              slti         sp, s3, -2016
                  bltu         s4, a5, 117f
                  xor          a0, a2, s10
                  auipc        s6, 180665
104:              blt          t1, s7, 122f
105:              blt          s2, a5, 118f
                  xori         t4, t1, -1526
                  xori         a5, t6, -1320
108:              bne          s8, s7, 117f
                  andi         s3, ra, 803
110:              bgeu         a5, s5, 117f
111:              slti         zero, a0, -1176
                  sll          a7, sp, a5
                  ori          s4, s7, -1814
                  auipc        a2, 763410
                  sltu         a2, zero, s0
                  auipc        s7, 883094
117:              srli         s7, t2, 8
118:              lui          t3, 237317
                  ori          t5, t1, 626
                  sltiu        s9, a7, -1306
                  and          s8, t0, s1
122:              srl          s2, s0, t2
                  sra          t2, tp, s4
                  blt          tp, tp, 140f
                  sltiu        s10, s10, -907
                  beq          s6, s2, 138f
                  beq          s2, t5, 138f
                  nop
                  sll          s8, t2, a0
                  xori         s8, s0, 621
                  bne          gp, ra, 138f
                  xor          a1, a0, t4
                  sltu         s1, t1, ra
                  sub          gp, a7, s9
                  lui          s10, 233140
                  slti         s8, s3, -1683
                  lui          a5, 658699
138:              blt          t3, s5, 141f
                  bge          a4, t0, 145f
140:              slli         t4, a7, 2
141:              sra          s10, t6, t2
                  bne          t0, a2, 155f
                  slti         t6, t0, 133
                  or           a3, s5, a3
145:              andi         s6, s2, -102
                  blt          t4, s7, 153f
                  sra          t2, s5, t4
                  lui          a2, 788798
                  slli         s4, a4, 31
                  slti         s4, t5, -2036
                  slli         a5, a3, 1
                  bltu         t0, a0, 157f
153:              sra          t2, s0, s7
                  sll          t5, a0, s0
155:              slti         a5, s7, -465
                  sll          s10, s1, s11
157:              nop
                  lui          t2, 153935
                  sltu         t4, a7, tp
                  addi         s0, gp, -2011
                  nop
                  xor          s0, a2, s10
                  sra          sp, s5, s6
                  slli         s0, sp, 12
                  slti         s6, zero, -1058
                  bltu         t0, t5, 175f
                  slt          s9, s11, t2
                  sra          t6, s8, gp
                  slt          s10, t3, s11
                  auipc        s1, 1015210
                  sra          s8, t6, t1
                  nop
                  add          s2, t0, s6
                  bltu         s5, zero, 185f
175:              sra          t4, ra, sp
                  addi         a0, tp, 1027
                  sltu         s10, s7, s9
                  or           a0, s6, a5
                  lui          t6, 750658
                  srai         s9, a5, 30
                  nop
                  bge          s7, a4, 199f
                  ori          a1, gp, 385
                  srl          s10, a7, s4
185:              bltu         s6, t6, 205f
                  xor          s6, t4, a4
                  bne          s9, s5, 197f
                  srai         s2, t5, 16
                  bge          t5, a3, 207f
                  sra          t6, s3, t3
                  or           tp, t2, t0
                  slti         s1, a2, 1330
                  slti         t1, s6, 373
                  ori          t6, s8, -547
                  beq          s4, a2, 209f
                  sltiu        s4, t2, -515
197:              slt          a0, a1, t2
                  or           t5, gp, s1
199:              blt          t4, s3, 213f
                  bge          t1, zero, 210f
                  slli         s7, t2, 4
                  and          zero, s4, s11
                  bltu         a4, t4, 221f
                  sll          s6, s1, gp
205:              and          s6, a7, t2
                  beq          t3, a3, 209f
207:              bltu         t4, a5, 210f
                  sub          t0, s11, s2
209:              sra          s9, s11, a3
210:              add          a5, s8, a1
                  sll          tp, zero, a1
                  slt          t5, a2, a6
213:              ori          sp, t6, 1471
                  xor          s7, sp, tp
                  slli         s8, s7, 13
                  srli         a3, s8, 18
                  sltiu        t1, t5, 794
                  sll          s4, t5, a1
                  sll          zero, a1, s6
                  sub          sp, s10, ra
221:              add          s2, t0, t3
                  srai         t1, ra, 14
                  blt          a4, s5, 240f
                  sra          a2, s2, a3
                  sltu         s8, s8, s9
                  or           s9, s4, a7
                  ori          a0, t5, 974
                  auipc        t5, 501036
                  blt          t5, a4, 245f
                  beq          t1, a7, 242f
                  or           a5, sp, s6
                  add          a3, t2, s3
                  sltu         s5, s8, t3
                  nop
                  slli         a1, s0, 17
                  add          s5, s4, s5
                  or           s8, s6, s10
                  sll          s10, a7, a3
                  nop
240:              auipc        gp, 381259
                  xori         t0, s8, 1169
242:              sub          s10, s0, s9
                  xori         sp, a5, -465
                  andi         gp, a2, -2027
245:              andi         a0, s4, -26
                  beq          t2, s2, 258f
                  bgeu         ra, t5, 255f
                  ori          s4, s7, -758
                  beq          t2, t0, 267f
                  slt          s6, s6, a4
                  slt          s4, a0, s5
                  andi         t1, s5, -1223
                  xori         sp, s1, 350
                  sltu         t1, s4, a4
255:              sll          s3, a3, s10
                  and          a2, s2, s0
                  lui          gp, 420152
258:              xori         s6, a6, 915
                  bne          a3, s9, 276f
                  sra          s10, a2, s11
                  sra          s10, t1, zero
                  xor          t1, zero, a4
                  slti         s10, ra, -546
                  srli         s4, t3, 0
                  lui          t2, 452531
                  or           a1, tp, gp
267:              sll          t1, t3, s6
                  or           t4, a0, s6
                  ori          s10, s1, -234
                  sub          s8, s9, s1
                  bne          t6, a0, 277f
                  or           a5, t6, a4
                  sltiu        t1, t4, 493
                  add          s10, s3, s7
                  srai         a0, t4, 11
276:              beq          s7, s0, 292f
277:              add          gp, t2, t5
                  srai         t6, a0, 31
                  ori          t0, t6, 836
                  sub          a2, s2, a6
                  and          a2, gp, sp
                  bgeu         t2, a1, 289f
                  blt          s0, s10, 299f
                  srl          sp, a4, s0
                  bge          sp, s0, 288f
                  bne          zero, tp, 302f
                  slli         s5, a0, 11
288:              sra          a1, s7, s3
289:              sra          a4, gp, t4
                  sltiu        s1, tp, 1291
                  andi         s7, a4, -711
292:              sub          s3, t1, t4
                  beq          s10, a1, 298f
                  ori          tp, s7, 422
                  sltu         zero, tp, a1
                  sra          t5, t5, a3
                  slt          t6, s6, s6
298:              sltiu        a0, s9, 1624
299:              sltiu        s5, s7, -1465
                  slti         sp, s2, 233
                  andi         t4, t1, 1211
302:              add          t6, a5, tp
                  or           s5, a5, a6
                  srli         s3, zero, 20
                  sltu         s2, t4, s11
                  andi         s7, s5, -620
                  addi         t1, s11, -1242
                  srai         t0, s11, 29
                  srai         s6, s10, 23
                  addi         a7, s10, -814
                  blt          t6, s7, 325f
                  beq          t6, a5, 322f
                  sll          zero, t3, gp
                  bne          a2, t4, 326f
                  bltu         t3, s1, 333f
                  lui          s6, 555988
                  slli         s5, t2, 28
                  srli         s3, s5, 17
                  bgeu         t2, s6, 333f
                  bltu         a0, sp, 323f
                  xor          a1, zero, s3
322:              addi         a0, gp, -868
323:              sll          s8, gp, a0
                  srli         a5, a1, 21
325:              sll          t0, a0, s7
326:              sltu         zero, t4, s5
                  nop
                  slti         zero, sp, -88
                  addi         t6, a5, 1622
                  slli         t5, t3, 14
                  xori         s3, t1, 593
                  nop
333:              xor          t6, a0, s0
                  slti         a2, t0, -1957
                  slli         s5, a1, 14
                  addi         t6, a6, -314
                  srai         a2, t0, 29
                  and          t0, t2, a2
                  srli         s5, s6, 28
                  sub          s6, s6, a3
                  lui          t6, 774456
                  bge          t2, ra, 352f
                  andi         gp, t3, 1692
                  xor          sp, t1, s6
                  or           s5, t6, s6
                  slt          s7, s10, s2
                  xor          t5, s11, a4
                  slt          s8, s10, s9
                  sub          sp, gp, ra
                  sra          s8, ra, t0
                  sra          a4, s9, t1
352:              sltiu        a4, a7, -916
                  blt          s5, t3, 356f
                  sltiu        s2, t2, 721
                  or           s1, ra, s5
356:              andi         s7, s10, -37
                  xor          s7, s1, s5
                  slli         t3, a4, 2
                  sltiu        t4, t3, 1546
                  sltu         a1, s7, s3
                  xor          t6, t3, s10
                  auipc        t3, 862396
                  sll          tp, tp, s10
                  xori         a1, t2, 280
                  or           t5, t0, a3
                  xor          s6, ra, t6
                  add          t6, sp, s5
                  lui          a7, 780215
                  lui          a7, 855914
                  xori         a7, s4, -786
                  or           a4, t3, t3
                  auipc        t4, 985725
                  beq          t3, a2, 387f
                  bgeu         s8, s8, 377f
                  slli         tp, zero, 19
                  blt          s5, s10, 394f
377:              sub          s3, tp, s1
                  and          s4, s8, zero
                  sub          gp, ra, a2
                  bgeu         t6, a1, 387f
                  sll          s3, t2, s5
                  auipc        a5, 420737
                  slti         a3, zero, 609
                  srl          s6, gp, s9
                  bgeu         s3, a5, 403f
                  sltiu        s10, s8, -868
387:              ori          s3, t3, 1286
                  slt          s0, tp, s4
                  srai         zero, s11, 2
                  xor          a0, tp, a6
                  sltu         s2, gp, t6
                  blt          t6, s5, 409f
                  sll          s4, tp, s1
394:              addi         t3, t2, 699
                  xori         a7, a5, 1172
                  add          zero, s0, t6
                  sltiu        gp, t5, -1370
                  andi         a3, a6, -1107
                  srl          a1, s10, s4
                  sltu         a4, a7, ra
                  srli         t1, s8, 15
                  blt          gp, s5, 409f
403:              srl          sp, s3, s11
                  srl          s4, s4, a1
                  sll          s7, s1, t2
                  sll          a5, a1, a7
                  addi         t5, a0, 1452
                  srai         a5, s0, 10
409:              srai         a7, s10, 12
                  sub          a7, s10, a4
                  srli         s8, t1, 30
                  blt          t2, zero, 423f
                  add          a5, s7, a4
                  auipc        a2, 652576
                  bne          t3, t0, 431f
                  auipc        t3, 103403
                  andi         a7, a2, 709
                  add          a7, t0, sp
                  sub          a0, s3, a6
                  xor          t2, a5, a6
                  addi         t5, s5, 1857
                  blt          s5, s10, 427f
423:              slt          s10, s7, gp
                  bge          s9, t5, 436f
                  ori          a3, s3, 1001
                  auipc        sp, 766622
427:              slt          a5, a6, a4
                  sltiu        a4, ra, 1198
                  auipc        a7, 1025959
                  slt          a1, s1, s4
431:              auipc        s1, 336897
                  ori          t3, s4, 1922
                  bltu         t3, s0, 442f
                  sll          s10, gp, s10
                  srai         s8, t0, 7
436:              srli         t4, t3, 25
                  srli         gp, a1, 12
                  or           a0, s9, s10
                  bge          a0, a6, 453f
                  sltiu        s10, s5, 26
                  slli         a5, a6, 26
442:              sub          a5, a1, t6
                  srai         a1, t0, 29
                  bge          s1, s9, 460f
                  sltiu        s4, s9, 1713
                  add          t3, gp, s11
                  srl          s4, s8, a2
                  and          s7, s7, s6
                  slti         s3, a4, 1795
                  slli         t4, t3, 17
                  addi         s1, a4, 1085
                  slt          t0, s5, s1
453:              andi         s0, t0, 139
                  slli         a2, a4, 27
                  xor          s6, a5, s3
                  srli         s7, t1, 26
                  slt          s7, a6, ra
                  andi         gp, a4, 734
                  sltiu        s5, a4, -870
460:              auipc        t2, 781315
                  slti         s1, s3, 1327
                  auipc        a4, 171940
                  beq          ra, t6, 479f
                  sltiu        a0, a1, -1748
                  andi         a4, s8, 1113
                  slt          t1, t2, a6
                  sra          a5, tp, s8
                  slti         a4, gp, -281
                  blt          s4, t1, 489f
                  add          t4, a3, gp
                  auipc        s10, 205466
                  nop
                  nop
                  bne          t2, s8, 491f
                  srai         t2, t0, 28
                  andi         a5, a4, 631
                  xor          s2, a0, a3
                  sltiu        s1, s6, -746
479:              beq          a5, a7, 492f
                  beq          tp, t4, 496f
                  srl          tp, gp, s8
                  bge          ra, zero, 499f
                  xor          a5, t5, s8
                  srli         s10, zero, 3
                  slti         s1, gp, 200
                  srai         t2, a3, 20
                  sub          t3, a1, a1
                  lui          s7, 552477
489:              beq          t4, tp, 497f
                  sra          a1, s11, s10
491:              and          a4, t3, s0
492:              addi         sp, s2, -1704
                  andi         s6, t0, 445
                  slt          s7, t1, t6
                  slti         t1, s1, 1598
496:              slti         t1, s5, 415
497:              lui          s10, 259362
                  nop
499:              bltu         t5, s8, 504f
                  xor          s0, a4, s6
                  bne          a6, s0, 507f
                  xor          a5, t2, s1
                  or           s1, t1, s9
504:              and          t3, a0, s10
                  bgeu         a7, a5, 519f
                  srli         s7, s7, 16
507:              sll          t1, a4, a1
                  beq          s7, s3, 518f
                  ori          a5, s4, 387
                  sra          s10, a3, a3
                  auipc        gp, 558956
                  sub          a0, t5, s8
                  bne          a4, t5, 531f
                  slli         s4, s6, 2
                  srli         s2, tp, 24
                  bne          sp, s4, 530f
                  bne          s1, a5, 526f
518:              sra          zero, s0, a0
519:              bne          t5, tp, 527f
                  blt          t0, s0, 527f
                  bltu         a3, s5, 524f
                  slti         zero, s3, 1333
                  sltu         s1, t5, a7
524:              bne          s6, a6, 538f
                  sltiu        a3, t1, -1844
526:              sub          s1, a3, s8
527:              and          s10, a7, s3
                  sra          gp, t1, s7
                  and          a2, a3, a6
530:              and          s4, sp, sp
531:              sltu         s0, a1, zero
                  add          s9, s9, a7
                  beq          a0, t0, 551f
                  srl          zero, a3, gp
                  and          s10, t5, s8
                  sll          a0, zero, t4
                  slli         sp, s5, 30
538:              ori          zero, t1, -1889
                  srai         s7, t5, 7
                  xori         s4, t5, 316
                  srl          s4, a3, t6
                  ori          a0, tp, -92
                  sub          sp, a2, s3
                  sra          s6, s5, s0
                  slti         a4, s4, 1772
                  ori          s8, s1, 1349
                  slti         s0, ra, -335
                  bgeu         s2, s7, 551f
                  or           a2, s9, t6
                  ori          tp, s5, 1277
551:              slti         s1, zero, -1944
                  slt          s1, a2, a2
                  or           t1, t1, t0
                  srli         s3, s7, 31
                  blt          t6, a4, 572f
                  bne          a0, a1, 569f
                  bgeu         a0, t3, 563f
                  andi         t0, t3, -1645
                  sub          t4, a4, ra
                  bge          a1, s6, 576f
                  xori         t1, t6, 436
                  srl          t6, s4, s10
563:              lui          a1, 113168
                  sll          zero, s11, t5
                  bge          s2, t6, 570f
                  addi         s3, s1, 842
                  slt          s9, s5, s6
                  or           a7, a6, s1
569:              bgeu         t6, s6, 576f
570:              sub          t2, t5, t3
                  slt          t5, t0, s4
572:              xori         t2, a4, 970
                  or           s1, a6, a1
                  sra          s1, s5, s9
                  slli         gp, s4, 31
576:              bge          tp, t2, 592f
                  andi         s0, s2, 119
                  nop
                  xor          s0, a7, s1
                  auipc        a7, 1014538
                  and          t6, s9, tp
                  andi         s0, s11, -1413
                  addi         zero, t3, 1098
                  or           s1, s3, s5
                  andi         a3, s10, 1256
                  and          a5, s8, t2
                  xor          t2, a3, t5
                  bge          a2, t3, 600f
                  srai         t5, a0, 24
                  nop
                  beq          s5, a7, 603f
592:              sra          t4, s2, t0
                  sra          s6, a4, a5
                  bne          a0, s7, 610f
                  blt          s5, gp, 613f
                  xori         s4, s7, 184
                  sra          t3, t5, t1
                  addi         s3, a7, -1892
                  beq          t5, a0, 616f
600:              bne          s3, t3, 616f
                  andi         a2, t1, -13
                  slli         s3, s2, 24
603:              ori          a3, s0, -1124
                  srli         s0, s7, 19
                  auipc        a4, 493919
                  sub          a5, a1, s10
                  auipc        s1, 1006733
                  bltu         sp, a7, 625f
                  auipc        a5, 305175
610:              lui          s9, 901635
                  sll          t2, s6, zero
                  srli         s10, a4, 20
613:              beq          s8, s9, 624f
                  sll          s4, t6, a5
                  xori         t6, s4, 610
616:              sra          a4, t2, a4
                  srl          a2, t0, s2
                  and          zero, s5, ra
                  sltiu        s1, t5, -834
                  xori         gp, t2, -1702
                  xor          s2, s10, s10
                  sra          a4, s8, t5
                  bge          s6, a4, 633f
624:              bne          s3, s10, 627f
625:              srai         t5, t6, 22
                  sll          a4, a0, t5
627:              xor          t5, s11, t4
                  bne          s0, a0, 648f
                  sub          s0, a0, a3
                  srli         t5, a4, 10
                  sltiu        a0, t1, -575
                  srli         a0, s6, 17
633:              blt          a1, t6, 638f
                  beq          s11, s10, 650f
                  xor          zero, a7, s8
                  slt          s9, s1, tp
                  add          t2, t0, s0
638:              slli         s6, a2, 19
                  sltu         a7, a6, s11
                  andi         s6, a1, -994
                  slli         gp, t6, 26
                  and          a5, t6, sp
                  sub          t3, gp, s9
                  sra          s0, ra, ra
                  sra          t0, s5, t2
                  slli         a1, t2, 17
                  sll          sp, s3, s6
648:              sll          s10, t2, s2
                  ori          tp, t0, -2030
650:              xori         a1, s2, 1292
                  bne          s6, a5, 654f
                  and          t6, s0, a0
                  andi         t5, a2, 1039
654:              srai         s9, zero, 26
                  add          s1, a4, t5
                  srli         s7, s3, 24
                  bltu         tp, s2, 675f
                  blt          s10, s2, 672f
                  addi         t2, s3, 665
                  lui          sp, 559822
                  ori          t1, t0, -2046
                  ori          s6, t5, 370
                  srai         t2, tp, 10
                  slt          s8, s2, a0
                  xori         a1, s11, -925
                  slt          s9, t6, a4
                  bge          a3, s5, 673f
                  sltu         s1, a0, s11
                  bge          t5, t6, 680f
                  nop
                  blt          t2, a1, 683f
672:              bltu         s8, s3, 689f
673:              xor          t6, sp, gp
                  bne          t3, a2, 677f
675:              srai         s6, t5, 28
                  sltu         t5, tp, s5
677:              or           t1, s11, s11
                  slti         t6, a2, 1727
                  sra          t2, a0, gp
680:              sub          a3, s7, s2
                  slt          s5, s3, s3
                  srli         s3, s7, 23
683:              slti         t5, s9, -1417
                  blt          tp, a4, 693f
                  bltu         t4, t0, 703f
                  auipc        a7, 320582
                  ori          s0, tp, 1178
                  slli         zero, t0, 18
689:              addi         zero, sp, 165
                  bgeu         gp, zero, 707f
                  sltu         s7, gp, t0
                  sll          t6, s7, zero
693:              or           t4, a3, a0
                  xor          tp, a2, s8
                  xor          a0, a0, s8
                  beq          s2, t0, 704f
                  auipc        gp, 358536
                  srli         t1, t0, 14
                  sra          s10, t2, s3
                  beq          ra, a2, 714f
                  slt          s9, s0, s3
                  blt          s2, sp, 718f
703:              andi         a3, s0, 831
704:              ori          s4, gp, 373
                  and          s6, t0, gp
                  bgeu         s4, t6, 711f
707:              or           t3, a5, s10
                  ori          a3, t0, 572
                  addi         s9, t5, -1736
                  ori          s5, a1, 16
711:              sub          s0, s5, t5
                  xori         a4, s10, -218
                  bne          gp, ra, 729f
714:              addi         t5, s7, 501
                  bltu         s11, t2, 735f
                  nop
                  lui          t1, 961627
718:              bltu         sp, s4, 721f
                  la           sp, region_1+766 #start riscv_load_store_rand_instr_stream_8
                  srai         s4, s1, 15
                  sb           gp, -111(sp)
                  lhu          s1, 240(sp)
                  lui          t0, 1004514
                  sra          a5, sp, s1
                  lb           s4, 207(sp)
                  sb           a4, -192(sp)
                  sra          a4, t2, sp
                  lb           a7, 219(sp)
                  or           s0, t2, s5
                  and          zero, t6, s9
                  lb           s4, 11(sp)
                  srl          t3, s7, a4
                  sltiu        a4, tp, 318
                  lhu          t0, 188(sp)
                  sb           zero, -53(sp)
                  slt          s3, tp, a4
                  srli         zero, t6, 9
                  xori         t1, zero, 1431
                  sb           s8, 241(sp)
                  sll          s4, a7, s11
                  xor          t5, t5, s2
                  sb           s3, 85(sp)
                  sh           sp, 42(sp)
                  or           a5, a3, ra
                  sb           t0, 0(sp)
                  lb           a3, 247(sp)
                  auipc        s1, 734384
                  slli         s3, s4, 13
                  sb           s10, 89(sp)
                  slti         a1, t3, -935
                  lb           t6, -181(sp)
                  lb           a2, -9(sp)
                  sb           t3, 9(sp)
                  or           t4, s5, a4
                  srai         a1, t5, 8
                  ori          t6, ra, 1780
                  lb           s7, -83(sp)
                  srli         s7, t1, 20
                  lbu          s5, -155(sp)
                  lb           a5, 129(sp)
                  lw           s10, 6(sp) #end riscv_load_store_rand_instr_stream_8
                  xor          a7, s6, ra
                  or           s7, t0, tp
721:              bge          s0, t4, 728f
                  andi         s9, ra, 1457
                  sra          t0, t0, gp
                  bltu         s0, s5, 731f
                  slli         zero, s3, 13
                  bge          gp, a2, 740f
                  nop
728:              auipc        a2, 358499
729:              sltu         a5, t3, t1
                  sra          s6, t1, s5
731:              sltu         s10, t2, a5
                  bge          s9, t5, 742f
                  sub          s3, a1, s5
                  srl          s1, s6, t1
735:              addi         s7, s0, -1887
                  bgeu         sp, t6, 752f
                  slli         a0, s7, 29
                  bne          s9, t4, 755f
                  srai         t4, tp, 5
740:              slti         t4, a0, 1605
                  nop
742:              auipc        s4, 194058
                  nop
                  lui          s8, 1033696
                  slti         s2, a2, -358
                  srl          a0, s1, s1
                  slt          a3, gp, a4
                  bge          t3, s0, 766f
                  slli         a3, s11, 12
                  slli         t6, s7, 26
                  srli         gp, t2, 6
752:              slli         s10, zero, 25
                  addi         t2, t2, 1539
                  xori         s8, s5, -484
755:              beq          s10, s6, 765f
                  sltu         tp, sp, s7
                  add          a5, a4, t3
                  nop
                  sra          s7, s2, a7
                  andi         s9, a0, -1212
                  ori          t3, zero, -1808
                  srai         a3, tp, 8
                  sub          t4, a0, sp
                  srli         t5, s2, 14
765:              bne          t3, t5, 770f
766:              sltu         s6, s10, zero
                  blt          zero, sp, 779f
                  sub          a1, s0, a3
                  sub          s5, tp, t2
770:              blt          t5, zero, 783f
                  srai         gp, s7, 3
                  lui          a5, 930294
                  nop
                  andi         t5, s6, 805
                  srl          s4, t1, t3
                  slti         s3, s7, 812
                  addi         s5, tp, 1186
                  beq          s6, s0, 790f
779:              xor          s10, a0, a5
                  sll          a2, s2, a6
                  nop
                  xor          a0, t5, a3
783:              andi         zero, s1, -863
                  bge          s11, t6, 798f
                  sub          sp, t6, s10
                  bgeu         a3, t1, 804f
                  lui          zero, 14259
                  xori         t6, s7, -1404
                  srai         t1, s1, 27
790:              and          t5, s1, gp
                  nop
                  and          s10, s7, a7
                  sub          a5, s7, s7
                  and          a5, t5, s7
                  bgeu         t0, s5, 804f
                  sltu         s9, s7, a2
                  ori          a3, a2, 12
798:              slti         a4, s1, 1429
                  sub          a3, s3, sp
                  sltiu        a0, s0, 1919
                  sltu         a4, t4, s0
                  srl          a0, s7, t3
                  nop
804:              bgeu         ra, t0, 809f
                  sll          t2, s4, a7
                  sub          a7, a4, t2
                  slti         t3, tp, 1251
                  srl          t3, a7, a6
809:              bgeu         s1, tp, 819f
                  bge          t5, t1, 826f
                  xori         a2, t0, 407
                  xori         t3, s2, 577
                  slli         t0, a2, 27
                  lui          gp, 34459
                  slti         s5, s6, -532
                  sub          s8, s2, a5
                  bge          s0, s8, 833f
                  bgeu         t4, a4, 825f
819:              beq          t6, a2, 833f
                  xori         a7, t3, -1778
                  nop
                  and          gp, zero, s1
                  slti         t6, t1, 611
                  slt          s3, s5, a7
825:              nop
826:              nop
                  bne          s10, a4, 845f
                  sub          sp, sp, sp
                  and          zero, sp, s11
                  and          s10, gp, a4
                  blt          a5, t3, 841f
                  and          s3, gp, s6
833:              slli         t5, t1, 31
                  sra          s7, t5, a0
                  sltiu        a0, s4, 1786
                  or           gp, t4, a4
                  srl          s8, ra, t0
                  ori          s10, s2, 1759
                  lui          zero, 260789
                  bne          a4, s4, 846f
841:              xori         s0, a5, -1386
                  srai         t5, gp, 14
                  sll          s10, t1, t6
                  beq          ra, s5, 861f
845:              addi         t2, a4, -279
846:              lui          a3, 298009
                  beq          t3, s1, 859f
                  bgeu         a3, s5, 865f
                  sub          s4, s4, s3
                  blt          t0, s3, 853f
                  andi         t1, s10, -445
                  bltu         s5, s9, 870f
853:              slt          s5, a7, zero
                  bge          t4, s5, 857f
                  slti         s6, tp, -91
                  sltiu        a2, s2, 1014
857:              sltiu        t3, t3, -1437
                  sltu         a5, s9, s5
859:              sll          sp, s10, t5
                  slt          s4, s2, a0
861:              or           a3, tp, a4
                  or           a4, s0, s9
                  auipc        t0, 215613
                  sltiu        s4, a7, -85
865:              sltu         a5, a2, a0
                  bne          s6, s7, 869f
                  lui          t4, 352533
                  srai         s10, s9, 20
869:              srai         t0, t3, 0
870:              sll          gp, a3, a4
                  bge          t1, s11, 878f
                  sll          s2, s8, t2
                  la           a1, region_1+320 #start riscv_load_store_rand_instr_stream_1
                  xor          t3, s11, s4
                  lui          a3, 527778
                  auipc        s10, 874044
                  lbu          s8, 61(a1)
                  sltu         t4, t2, t0
                  lb           s1, -31(a1)
                  lb           t2, 17(a1)
                  lui          sp, 830819
                  add          a0, s10, s5
                  xori         t0, a5, 448
                  add          a4, ra, a7
                  xori         tp, tp, 1227
                  lb           a7, 33(a1)
                  sw           s1, 16(a1)
                  sb           s6, 49(a1)
                  srai         t2, s9, 1
                  ori          gp, t5, 525
                  or           a7, s4, s4
                  slti         a0, s2, 861
                  auipc        s0, 697913
                  nop
                  sra          a3, t1, t0
                  xori         s9, a2, 2014
                  or           sp, a1, sp
                  lw           s1, -32(a1)
                  sb           t3, 57(a1)
                  auipc        t0, 620357
                  sb           a6, -11(a1)
                  add          s2, a3, s11
                  sb           s5, 1(a1)
                  lh           s9, -18(a1)
                  sub          t2, zero, t5
                  lbu          a5, 9(a1)
                  auipc        sp, 524894
                  sb           t5, 35(a1)
                  sb           t2, -31(a1)
                  lb           a3, 54(a1)
                  or           sp, s8, s9
                  srai         t3, a0, 8
                  sh           a2, 18(a1)
                  lhu          s3, 4(a1)
                  and          a5, a4, a7
                  xor          s8, s1, s1
                  sh           s11, 0(a1)
                  lb           s8, -33(a1) #end riscv_load_store_rand_instr_stream_1
                  or           a1, s0, sp
                  slli         s8, a3, 6
                  bne          s11, s11, 883f
                  sll          s4, s6, a6
                  nop
878:              or           s7, s10, a7
                  srl          sp, s3, s7
                  sll          t1, s6, s5
                  blt          s2, t3, 886f
                  sll          t3, s8, s2
883:              beq          s0, tp, 903f
                  blt          t0, t6, 897f
                  slli         a2, s11, 14
886:              sltu         t2, zero, gp
                  add          sp, s8, s7
                  lui          tp, 914051
                  add          t6, sp, s6
                  or           t0, t5, tp
                  and          s0, s10, t6
                  add          s3, s2, s7
                  bge          s4, t3, 907f
                  add          s7, zero, a5
                  bltu         s6, a4, 906f
                  ori          s8, t1, -1398
897:              sltu         s10, s0, a5
                  slti         t6, s9, -919
                  sltu         zero, s7, ra
                  xor          s5, zero, s3
                  bgeu         zero, s6, 917f
                  srai         t2, tp, 13
903:              srli         t3, s11, 23
                  slti         t2, sp, -1881
                  bge          t0, t4, 922f
906:              xori         tp, a5, -282
907:              sltu         t6, s4, s4
                  sra          s1, s1, s8
                  auipc        s0, 321116
                  sll          s6, s9, t5
                  xor          tp, t4, a2
                  slti         s4, a0, -946
                  srli         a5, a4, 30
                  or           s10, s5, s0
                  xor          sp, t5, t6
                  slli         s4, s1, 5
917:              and          s0, t5, s4
                  lui          a5, 779540
                  blt          a7, a0, 935f
                  beq          a4, t6, 923f
                  srl          t0, t4, t2
                  sll          a4, s7, zero
                  or           s0, t0, a5
                  slli         t3, t4, 1
                  auipc        s7, 78780
                  slti         sp, a3, -834
                  sltiu        a5, t2, 1139
                  srli         t2, s6, 19
                  and          a1, sp, a5
                  auipc        gp, 717286
sub_6_j12:        jal          s2, sub_8 #jump sub_6 -> sub_8
922:              sltiu        s0, s9, 159
923:              xori         zero, s0, 1456
                  srli         t2, s2, 12
                  xori         s8, s1, -230
                  blt          a3, gp, 943f
                  srli         tp, gp, 19
                  bge          s1, a6, 940f
                  xor          a1, gp, s10
                  andi         s10, t5, 1088
                  sltu         t4, a7, t0
                  srl          s8, s10, gp
                  slli         t2, s11, 29
                  sub          s10, s2, a4
935:              sub          s6, t2, s9
                  nop
                  ori          a5, s0, 1807
                  sltu         t2, s8, s7
                  srl          tp, zero, ra
940:              ori          s6, t6, 1585
                  lui          zero, 450513
                  sub          a7, s5, a6
943:              beq          a3, a2, 946f
                  or           s2, s9, t0
                  andi         a0, a0, 1690
946:              blt          s8, s6, 959f
                  bgeu         t0, a0, 963f
                  bltu         s4, s3, 964f
                  srli         t3, s11, 1
                  sltiu        s2, a4, -1744
                  andi         a4, a7, -58
                  slti         a2, s10, -666
                  xor          a1, a1, s6
                  blt          a7, s2, 972f
                  andi         s8, a7, -32
                  slti         tp, s2, 409
                  beq          s6, a4, 960f
                  sltiu        s5, t0, -283
959:              slli         a3, t4, 13
960:              nop
                  add          tp, s7, a1
                  lui          t0, 875702
963:              bge          t6, a4, 970f
964:              slt          t5, s1, t5
                  sltu         s5, a7, s9
                  slti         t5, zero, 810
                  slli         t2, gp, 12
                  sltu         t3, s1, a2
                  ori          s2, s11, 1582
970:              sltiu        s1, zero, -879
                  beq          s6, tp, 976f
972:              sub          t5, a5, t3
                  sltu         t1, t6, tp
                  sra          zero, s10, t6
                  beq          ra, t6, 984f
976:              sub          a5, s9, t0
                  sltu         s3, sp, gp
                  bne          zero, a2, 988f
                  beq          s11, a2, 993f
                  xori         t2, a1, -1499
                  addi         s9, s0, -1904
                  nop
                  sll          s5, s1, a1
984:              blt          sp, zero, 1004f
                  auipc        s1, 607157
                  auipc        t3, 859305
                  bltu         s11, s0, 994f
988:              beq          t0, s10, 1002f
                  nop
                  slli         gp, t4, 2
                  ori          t1, s0, -90
                  bne          sp, a1, 1003f
993:              or           t2, a0, s6
994:              and          s10, a7, t2
                  bltu         gp, a5, 1011f
                  bge          s3, tp, 1012f
                  srli         s9, a0, 3
                  nop
                  xori         s4, a2, 558
                  add          a7, ra, a2
                  sll          s8, s1, t2
1002:             bne          a4, a5, 1016f
1003:             bge          s9, s5, 1020f
1004:             srai         t3, t1, 3
                  ori          s9, a5, 1989
                  andi         t3, a4, 616
                  addi         sp, s3, 1711
                  add          a1, t1, a5
                  bgeu         zero, sp, 1014f
                  bltu         t0, a1, 1018f
1011:             beq          s5, t0, 1023f
1012:             andi         t5, a6, 1097
                  slli         s7, s0, 9
1014:             nop
                  slti         s1, s9, 1177
1016:             addi         s7, zero, 566
                  slt          a7, t0, a4
1018:             andi         a4, a4, 239
                  lui          a4, 204414
1020:             slt          a1, t6, s10
                  srli         sp, s10, 10
                  sltu         s9, s9, t2
1023:             bgeu         a2, a7, 1041f
                  slli         t6, a3, 3
                  andi         s4, t5, 1949
                  xori         a7, s4, 716
                  slli         s1, zero, 30
                  bne          a1, t0, 1045f
                  lui          t6, 914934
                  bltu         tp, a2, 1036f
                  bgeu         a6, s11, 1049f
                  xor          s2, a1, a7
                  or           a4, s4, s2
                  or           a4, t4, s3
                  slti         gp, s11, 1921
1036:             sltiu        s1, a6, 1111
                  add          gp, t5, tp
                  bne          s8, a1, 1048f
                  bne          zero, a4, 1050f
                  bne          ra, t0, 1056f
1041:             or           s4, s8, s11
                  slt          s8, a4, zero
                  slt          a0, t2, s6
                  nop
1045:             xori         s10, zero, 1236
                  nop
                  sltiu        s6, t2, 1112
1048:             bgeu         s8, s10, 1053f
1049:             bgeu         t2, s6, 1052f
1050:             bne          a2, t0, 1055f
                  or           t6, t6, zero
1052:             slt          a7, a4, t3
1053:             nop
                  auipc        s6, 312331
1055:             sltiu        a3, t1, 1575
1056:             ori          t6, s11, 1345
                  bne          a5, t5, 1070f
                  sra          s0, t3, a3
                  nop
                  xor          t4, a7, s3
                  ori          t0, a3, -1648
                  ori          a2, s8, -687
                  lui          s7, 877743
                  ori          s8, s5, -2023
                  slli         zero, tp, 6
                  sltu         s6, a0, gp
                  srli         s5, t6, 10
                  bltu         a1, t4, 1071f
                  srai         s4, s5, 14
1070:             and          zero, t2, t1
1071:             nop
                  slti         s4, a3, -321
                  beq          t4, a5, 1090f
                  add          t4, s10, s1
                  bgeu         sp, s10, 1089f
                  or           a4, s11, a5
                  bltu         ra, gp, 1087f
                  beq          s11, a6, 1095f
                  andi         zero, s1, -133
                  bgeu         s5, a1, 1086f
                  srli         t6, sp, 2
                  auipc        t4, 869111
                  auipc        t0, 222569
                  lui          a4, 22932
                  blt          s5, t6, 1088f
1086:             andi         a3, t6, -241
1087:             and          a7, s4, a5
1088:             bgeu         s6, t1, 1098f
1089:             blt          t0, s0, 1101f
1090:             bne          s2, a1, 1097f
                  bltu         sp, gp, 1098f
                  sltiu        s7, ra, 1750
                  sra          s8, ra, a6
                  xor          s0, a4, tp
1095:             srai         a0, a7, 0
                  auipc        t5, 377139
1097:             lui          a5, 341499
1098:             and          t5, a2, a3
                  sll          a0, a4, s3
                  ori          s9, s4, 1226
1101:             add          zero, s2, t3
                  slli         t4, t2, 1
                  srai         t6, gp, 2
                  sltiu        s8, t5, -824
                  srai         sp, s6, 4
                  or           s3, t4, a7
                  sll          t2, s0, s6
                  srli         sp, s3, 10
                  bgeu         s7, zero, 1125f
                  slt          t1, a1, zero
                  ori          s0, t4, 1421
                  bne          t6, a0, 1124f
                  slti         s7, ra, -274
                  ori          tp, s8, -144
                  sltu         a3, a5, s8
                  addi         t0, s0, 1426
                  blt          s3, t4, 1133f
                  lui          tp, 469537
                  andi         t3, gp, 557
                  xor          t4, t2, a4
                  sltiu        s2, a5, 1038
                  srai         a3, s7, 17
                  auipc        t3, 64409
1124:             addi         s2, a3, -287
1125:             and          s0, s10, t5
                  auipc        t5, 69700
                  and          t3, s8, a1
                  add          s3, zero, s2
                  bne          a0, s7, 1146f
                  lui          a4, 700787
                  blt          s8, s11, 1140f
                  srai         s1, s2, 17
1133:             bltu         ra, s10, 1147f
                  and          tp, a4, ra
                  xor          t2, s0, t5
                  srl          s3, s9, s4
                  lui          t1, 313510
                  auipc        s6, 891515
                  or           a1, s2, t0
1140:             beq          zero, sp, 1147f
                  bge          a0, a6, 1147f
                  addi         t4, gp, 539
                  sll          s5, t4, t1
                  and          a5, s8, s2
                  sltiu        t6, s1, -1707
1146:             srai         a4, s5, 16
1147:             nop
                  lw           s2, 4(s11)
                  sub          t1, tp, a0
                  srli         s10, a0, 27
                  nop
                  or           s10, a6, s3
                  ori          s0, a4, -380
                  addi         s11, s11, 16
                  slt          s1, s11, t6
1555:             addi x25, x18, 1
1555:             jalr x25, x25, 0
sub_10:           addi         s11, s11, -28
                  addi         s5, t0, -1759
                  sltu         s3, t3, zero
                  sw           s2, 4(s11)
                  srli         t4, a3, 0
                  srl          tp, s10, a2
                  slti         a5, a2, 1606
                  sll          t2, sp, t5
                  xori         t3, s3, 1439
                  sll          a7, s11, a2
                  bltu         t5, a1, 8f
                  lui          a1, 389690
                  bltu         zero, t0, 12f
                  and          t6, sp, a4
8:                auipc        t5, 992877
                  addi         s0, s6, 2001
                  nop
                  bgeu         t0, a2, 12f
12:               sltiu        s3, t1, 1980
                  lui          a2, 684782
                  lui          s6, 834276
                  addi         t2, ra, 650
                  lw           s2, 4(s11)
                  or           t2, s1, s11
                  sub          s7, gp, a5
                  srl          a4, a2, s9
                  addi         s11, s11, 28
                  sra          s6, s7, t6
                  sll          a7, ra, s3
                  auipc        s4, 683692
                  auipc        s9, 489534
31:               addi x20, x18, 1
31:               jalr x20, x20, 0
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
.word 0x7276aee0, 0xb0910771, 0x3c6bc6e4, 0x06aea493, 0x0e1e8c25, 0x15620c73, 0xf42d1768, 0x20dff168
.word 0x216eb31c, 0x9cd23981, 0x33297ce4, 0xb60b83a8, 0x4d47c297, 0xf8e73210, 0x3181c694, 0x56684427
.word 0x343afc98, 0xe1f50c05, 0x8ee4f340, 0x2013d607, 0x5be5bf7c, 0xa1ba0326, 0x3986b86d, 0xe78cd421
.word 0xc6ae3cc2, 0x021db9d4, 0xb0f42bcb, 0x7cd37f18, 0x8bd54e1a, 0xf5a4681c, 0x57491a83, 0x2966d070
.word 0xc61eecec, 0x0cf6d544, 0x9c69c215, 0x43bf0b7d, 0x651c6d32, 0x8b7ab14d, 0x1df0a415, 0x4756fb2a
.word 0x7224fe23, 0x4309d939, 0x9ca738c4, 0x8581ea7a, 0x323c8ed9, 0x04a175f2, 0x557ebef9, 0x4fce3b1e
.word 0xeb339195, 0xdb0cbead, 0xec15efb6, 0x5074f3c8, 0xcb214526, 0x56ef1f4a, 0xe55f07c2, 0x9c939ca3
.word 0xd7deeff2, 0x324443b2, 0xb7b53e96, 0x0e3c9a12, 0x5fa8b4c8, 0x52fba636, 0x31435efe, 0x8df1154b
.word 0x18495078, 0xb9f8fbe6, 0x6caebb0c, 0xf9675653, 0xb760344c, 0x1a68a5e8, 0x7b121905, 0xfbf025c9
.word 0x8fc9a58b, 0x5f1eed47, 0x073357d3, 0x4258101d, 0x9b952024, 0xf2460d13, 0x4d971c48, 0x1f0c875b
.word 0xabf477be, 0xa99a423c, 0x83a8435c, 0x13b66c74, 0xfc381e64, 0x8799a628, 0x7aa2479e, 0x68690e8b
.word 0xe2b63adf, 0xedc7befa, 0xc34001d2, 0xd918fb5a, 0xf4c77646, 0xbc7b236b, 0x7e05be87, 0xfa9cd430
.word 0x85fd8282, 0x28b66822, 0x9b6e02df, 0xca2df721, 0x042d780b, 0x46a2fc3c, 0x889c2a66, 0x027c2060
.word 0xae4c9268, 0x4b39c86e, 0x26d0026d, 0x9d1c4620, 0xf231bffa, 0xe6aec12f, 0x860e8511, 0x2a89abae
.word 0x18735b66, 0x8dbf7609, 0x29c21372, 0xcb548671, 0x0471965e, 0xef201967, 0x16dd9251, 0x92d332a5
.word 0xdb622cbd, 0x9058916b, 0x35c92b57, 0xa492d7e4, 0xb3e7eb13, 0x751f4fa5, 0xee2add05, 0x41e7a45b
.word 0x2316162c, 0xe43bb8e2, 0x2083bc9c, 0x88d2ba36, 0x6bcf26e0, 0x127a94d7, 0xc54b16de, 0xa3694354
.word 0x0f16baa6, 0x583d4d9d, 0xbe446f24, 0x4f6f59fb, 0x19c766e6, 0x6035e781, 0xb06acf99, 0x26c2f359
.word 0xca1dd1c3, 0xace5c193, 0x153f6655, 0x06412549, 0x40c9f28b, 0xaafcf465, 0xbb73a945, 0x58d0c972
.word 0x49e502a0, 0x0e9efdc9, 0x44a54bc0, 0x834b37cd, 0x0b236c7e, 0x72fc720a, 0x79a9bf55, 0x254cd169
.word 0x0941d70a, 0x7e3cd8bf, 0x926f75cf, 0x559391e1, 0x1a909c6a, 0xeceff5ea, 0xfb298217, 0x53db6b5a
.word 0xb0445795, 0x291776f6, 0x502ad5b9, 0x5e3debfa, 0x47554e6f, 0xeef79a1d, 0x5e5e26e8, 0xc98cf5bc
.word 0x27c75c04, 0xcfff417e, 0xff2cc41b, 0x29a48337, 0x0f9053cc, 0xa0ff21c7, 0xa68b8b32, 0xa685a3f7
.word 0x439870a5, 0x0f6cc362, 0xe3efa3b3, 0x4af265d8, 0x8682cc55, 0x1f8f652c, 0xd0f2671f, 0x7b08e69d
.word 0x042f3c38, 0x261f68b3, 0xae6dca6a, 0xfcc2a40f, 0x6254d425, 0xd132e193, 0xb4ef1e80, 0x8db7b210
.word 0xd73310df, 0xbeb1017d, 0x8d84f562, 0x6ec8692a, 0x0259d3b0, 0xde72f62e, 0x8d0f2d71, 0xc17394ab
.word 0x4eed5dc8, 0xb910d15c, 0x16e30f8c, 0x47dbe600, 0xb4a2055a, 0x86c2911e, 0x4277f912, 0xc99726f2
.word 0x551e560c, 0xe663d158, 0x1a817908, 0xf0b8355a, 0xe9541e27, 0x23cfb976, 0x29480353, 0xac37ff7c
.word 0xf9ba1164, 0xb5c6518d, 0x3cdd1d5c, 0x36fd92d1, 0x7cb6e6e2, 0xd3c159c9, 0x020eaa9f, 0x22dc7ae3
.word 0x164f9399, 0xda9fc71b, 0x9a0d33bd, 0x66ab2c9b, 0x221bbaa6, 0x87f90143, 0x6805d698, 0x1af13a04
.word 0x9e8f75a2, 0xee839c0c, 0x8f2f967b, 0xc73c4e07, 0xe67bf034, 0x205ebd7b, 0xf715face, 0x632bbf9d
.word 0xfac4e616, 0x7beee7a0, 0x0986e38a, 0x34f9236b, 0x630d8926, 0x8480f8ef, 0x3e17765b, 0x9f87cd31
.word 0x1b2dcac1, 0x1df4009c, 0x09d9d732, 0x52bb93f4, 0xc5a8c9bd, 0x44b8a953, 0x5163d86d, 0xb83f5633
.word 0x2241e888, 0x550e99a3, 0x2f78573c, 0x24b5e11a, 0x3f16b650, 0x98d8fed8, 0x8dfc0666, 0x6075ed51
.word 0x108c4d2a, 0x1e2e8535, 0x6e6217c9, 0xd503dd38, 0x3e1e6981, 0x87094a28, 0xf16cfb16, 0x162103a1
.word 0xdbaf573f, 0x0c52c399, 0x4ff111d8, 0x3d23f9c6, 0x98655d6c, 0xc91a4a18, 0x66accaad, 0x9ce75e76
.word 0xe19f308c, 0x97ac10a0, 0x0b12219d, 0x4174df57, 0x75d13ff9, 0xe772b6d9, 0xa036b026, 0x14f052f0
.word 0xa94bd757, 0x8183c424, 0x76a08c84, 0x8905aa75, 0xf9a30680, 0x1481ce85, 0xfe05b491, 0xa00881a7
.word 0x7b96e560, 0x9aef629c, 0x5ab69117, 0x135e8d71, 0x333b15c8, 0x1bff7d1a, 0x16ef34ba, 0x9fce5010
.word 0x3f9be6a6, 0xbf48dce1, 0x7fa2372b, 0x74034e46, 0xb17ad034, 0x881c3da8, 0x29820a90, 0x49210102
.word 0x9003090b, 0x0d1bb355, 0x8e9fc31c, 0x199b9235, 0xf6e0f4ce, 0x7481919d, 0xf92de500, 0x4306bc00
.word 0x6ae29835, 0x5c5397d2, 0x2f7c30a5, 0x1d201fde, 0xf8dda70d, 0x11ccd508, 0x2c544eb4, 0x03745cfc
.word 0xb9a86b07, 0xa6308913, 0xff324c2e, 0x6bcc3503, 0x700f62a9, 0x7e4e23b4, 0x77876cc4, 0xfd76d75a
.word 0x18e2f211, 0x49627125, 0xda8042f7, 0x73821be3, 0x0e7d8da4, 0x91cd08c2, 0x4bb80778, 0xd1c0a44e
.word 0xfe0c44d5, 0x33ab071f, 0x6d3b358a, 0xbf7fbba1, 0xf584bcd6, 0xcc46cd81, 0x6b935191, 0x2ceee9e7
.word 0xde87171e, 0x1d04e25b, 0xa51ee551, 0xe7f1ac11, 0x1d93c15d, 0xfb2f0e97, 0xcc395b8f, 0x95d4b87a
.word 0xc6b19c8f, 0xcca66245, 0x6fb48915, 0xb0ea3e72, 0x6ee3b3bc, 0xb996d606, 0xdf7217cf, 0x8aa55d01
.word 0x27b365e2, 0x31e75675, 0xcdff5273, 0x18ee62f7, 0xf1f111ad, 0x58611469, 0x88c5b525, 0x63f03046
.word 0xb069bf8a, 0x0e82a10b, 0x9a859f01, 0xd2be094d, 0x01b23494, 0xd8ec4d6b, 0x141969cb, 0x34e07f39
.word 0xe1a2146a, 0x417b60ca, 0x5da4dd31, 0x7171afae, 0x33fd3b16, 0x647b4e3e, 0xd2062353, 0x2d9167eb
.word 0xa43cc811, 0xc7e37cb2, 0xc510bf56, 0x6665bb9c, 0x7af315aa, 0x21075d4b, 0x92613d57, 0xea000c58
.word 0x678ae495, 0xa1aaaa0a, 0x854c810d, 0x11045580, 0x193ef838, 0x6ab81add, 0x4ada8070, 0xdba887d7
.word 0x4efaac74, 0x94fd7d8a, 0xd19206d7, 0x108ca40e, 0x1dee501a, 0x4e9bcdca, 0xae33a6eb, 0x522e0555
.word 0x2a719e7f, 0xac0fecc6, 0x9f768910, 0x4bc22f6b, 0x19e655da, 0x9a7bcb1b, 0xccced826, 0x13b85cad
.word 0xc7e7633f, 0xb73d329f, 0x9764c686, 0x101bfe0d, 0x1b9624a4, 0xc159b67e, 0xf3a3d63e, 0x1aaa89ae
.word 0x31979ca8, 0x8166270c, 0xc5c95023, 0x1e68537c, 0x93623d9e, 0x62f9546d, 0x05c0f16f, 0xafeacfc6
.word 0x2b6385f3, 0x0ecfb58a, 0x34f7d217, 0x6abc2282, 0xba14f5cc, 0xe7a05858, 0xfa154aed, 0x55cf58cd
.word 0xb3e2a8c5, 0x8f188e84, 0xfe6538b4, 0xd2f241f5, 0x24e1e556, 0x1c13bddd, 0x3cae415c, 0x4eb3b885
.word 0x795edcf6, 0xe47363da, 0xc8dd7c5f, 0x74d0efc3, 0x83b174cf, 0x07c815f3, 0xba7aac77, 0xb38c7c7b
.word 0x2009b30c, 0x0ee19651, 0x875b21a3, 0x6b3c0c57, 0x5f4364f4, 0x37da5c8e, 0x931286c1, 0x787d70c0
.word 0x46dc4f5a, 0x52e0e515, 0xd86141c7, 0x414d339f, 0x46a947a8, 0xf30befc8, 0x62d83a2a, 0xfd74cbf0
.word 0xcb7b6527, 0x102c130a, 0xd9ba1d62, 0x6067b2e4, 0x108a78de, 0xb905a8fb, 0xb0978531, 0x90ea79eb
.word 0xdf286f51, 0xf6e13396, 0x206702fa, 0xcb30b12f
.section .region_1,"aw",@progbits;
region_1:
.word 0x4116244d, 0x11b9c2e8, 0x93c6fe9b, 0x90b1331b, 0x05a44880, 0xe2c87eb1, 0xd91792fb, 0xb4e430bf
.word 0x5faa9fc7, 0xa91a00ba, 0x915e21ac, 0xe506a252, 0x92a1bf8f, 0xa013199c, 0x64f5baad, 0x0303506e
.word 0x8676bd59, 0x34521d26, 0x72ae72d2, 0x5daf7cb2, 0xea2c23d6, 0xdf77fda4, 0x5daa5f9c, 0x9e6a65da
.word 0x44a2c4b2, 0xdc86e9bb, 0x22541e4f, 0xc332e389, 0xc972e524, 0xda7e8338, 0x3e3ab395, 0x7a6ea508
.word 0xe3c4e47e, 0x6ae27898, 0x2da63cee, 0x029ea474, 0x86ff8f14, 0xbb2b8d00, 0xb37535d0, 0xb743fd21
.word 0x9ec79cef, 0x95ca4830, 0x12109102, 0xdceac6ca, 0x7b2c75a5, 0x7eeb6958, 0xb9a476e1, 0xf3f9b4bb
.word 0x3ad9ec95, 0x979e4491, 0x59a3f090, 0x24ea0fe8, 0xa0fad389, 0x1359f079, 0xf6b8d53c, 0x7a03c472
.word 0x2e772df1, 0x2bbe509e, 0xe3c63411, 0xed6e8376, 0x03e663cb, 0x4d868960, 0x4e5b0585, 0x0c26440a
.word 0x963c5cde, 0xc8f6e51a, 0x1773386f, 0x45e68b95, 0x79c38e65, 0x414f4d2d, 0x81709c9a, 0x7b9e5d3c
.word 0x67a5b9e4, 0x3c99086e, 0xc55cfa3b, 0x0b1ce89c, 0xc315be88, 0x115b5de8, 0xa094a0d5, 0x42288225
.word 0xa7e6fcae, 0x0c17d209, 0xdf08090f, 0x6dd56ecc, 0xf90322e8, 0x39e8c4d0, 0xe7fd0016, 0x7a8cbfd4
.word 0x267197b4, 0x241b3211, 0xde91e87e, 0x947dbc76, 0x5f1a0f39, 0x5cd91d58, 0xbb294525, 0x78fef62b
.word 0x8d6eb1c6, 0x568ad87a, 0x7345da3a, 0x41fbb4a3, 0xcbf5ec00, 0xc7622d23, 0x5135d885, 0xd48a3aa2
.word 0x1b062991, 0x3aef384b, 0x875fdf99, 0x2185dacd, 0x26077464, 0x3f05ae24, 0xb2e46d9a, 0x09cde164
.word 0x1c7907af, 0xa6b9d4fb, 0x0931d7bb, 0xf83e748d, 0x2de280b0, 0xb2c93e62, 0xe106a71b, 0xfb2d009f
.word 0x5778da7b, 0xcb1e2b1a, 0x2f939234, 0x728939c5, 0x7191bd82, 0x3cdf2253, 0x75c548fd, 0x8cf5758b
.word 0xa31bbdb6, 0x7a96e6e8, 0xea7c71e9, 0x5d478c5b, 0xf34153cc, 0x3f3dfe5b, 0x370a5442, 0xcab68e1b
.word 0x70f8c163, 0x3e2f8aac, 0xb5713730, 0xe62a2185, 0xaa8abdcf, 0x49368d22, 0xa06b099e, 0x121822a2
.word 0x90ffca76, 0x2062c765, 0x0b5b496e, 0xdd074fa7, 0x885beb4b, 0xec9ce599, 0x94e88e8d, 0xfc6931e5
.word 0x9feccc41, 0x0f1ef8c5, 0xf4a06eb2, 0xb35d63bf, 0x67dcba3f, 0xf2054610, 0x45b34677, 0x3f29111b
.word 0x480e02b7, 0x8d849431, 0x71c8d6ac, 0x545be69a, 0x67437d59, 0x9852fe06, 0xb2d7415b, 0xa8619037
.word 0x604b6e77, 0x566ea862, 0x0df9d068, 0x41c98003, 0xdec7193a, 0x86b76840, 0xbdb1eb71, 0xa123c925
.word 0x6951b45d, 0xdbf4654f, 0x6a0c691a, 0x5240c23c, 0xc7bcb5f5, 0x8f9c9b67, 0xab8f6dbd, 0x2ac62ca7
.word 0x76fa5dd5, 0xb9ecd239, 0x00d054bf, 0xfde53cc3, 0xfe20eecf, 0x91f49bfc, 0xe6de0184, 0x07d66fad
.word 0x65db61ac, 0x8a812184, 0x9cd8fd87, 0xd4119f88, 0xc6b0b60e, 0xd8bfb425, 0x629b54bd, 0x450c207a
.word 0x1e1c4d2d, 0xa0d864ff, 0xc525c51a, 0xc892dd07, 0x378aa0c8, 0xe189d5bd, 0xf3ce6e13, 0x955cd5d9
.word 0x090b66cb, 0x2ca9b4c2, 0x4807b229, 0xdee8215a, 0x258b4988, 0x2f4ff52a, 0xad63d36a, 0x1688e4be
.word 0x61d49703, 0x0f99696f, 0x3ddcf39b, 0xd0f29053, 0x16362ed2, 0x8d0f856e, 0x45d61c5a, 0xd1f4bb75
.word 0x41e5922b, 0x63b7a123, 0x5c9d7085, 0x486849a7, 0xebb51404, 0xf692bcc9, 0xb76af6ae, 0xd5bdd6b4
.word 0xe928fee0, 0xd91e3bbb, 0x2d851b63, 0xda1c6421, 0x2f76eade, 0x5609530b, 0x8c48f34f, 0xcb401510
.word 0xabce04ab, 0x0cf00e23, 0x5a29ee9a, 0xc4571607, 0x8eff5a89, 0x3e47e1cc, 0xadb3349e, 0xca7bffc3
.word 0x8dc16de6, 0x752ccc50, 0xeb4c06e9, 0xe1163931, 0xdf0117f6, 0xb1aeef01, 0x6f147065, 0x717e0249
.word 0x131a1827, 0x1b6f29ac, 0x22d0440a, 0x33f3664a, 0x614672f9, 0x1abc29c4, 0xf1ac0eb2, 0x83dbb674
.word 0x2eebef38, 0xc59cd8b5, 0xcb413358, 0xd5645739, 0x34b59ec9, 0xac39e7d9, 0x0a005ed5, 0x17c52a22
.word 0xd524545a, 0x19d726db, 0x9fab39b5, 0xfcb156df, 0xa50bc12b, 0x5185a57c, 0xa41c576a, 0x916a60a3
.word 0x30bcda4e, 0xd639daa0, 0x9e985b14, 0xc86f37e6, 0x8804c4f0, 0xf4af3521, 0x8f5b7131, 0xfc9fd8cd
.word 0xad6c3a67, 0x372f4f31, 0xaffb576c, 0x9b5a380d, 0xa481cf5a, 0xe756ccdc, 0xa5700f97, 0xbfb311e9
.word 0xf3119f35, 0x5293cf1d, 0xd0ffdcaf, 0x555c37f4, 0x0ecede71, 0xea93ce7a, 0x28d62f57, 0x5adab541
.word 0xe2b8e4fa, 0x008ff1e9, 0x807c9cb4, 0xc8110be6, 0x804a82ed, 0x13f7c880, 0xefea790c, 0xc075d82e
.word 0xfdd45a5b, 0xece4d380, 0xf4344770, 0x34296eef, 0x3159cefa, 0x8f257a6a, 0x2395d9d6, 0x7d352276
.word 0x0105bddf, 0x0aa21999, 0x3159ca2f, 0x1d39d568, 0xd07ed939, 0x92d83b12, 0xe401f4cb, 0x5db4d082
.word 0x029ebb3b, 0xb9331505, 0xd6235024, 0x152c55d5, 0xbd2b6a6b, 0xaef28094, 0x3f114777, 0x6e910648
.word 0x88754e86, 0x2082cda6, 0x0e6e80cf, 0xa92255da, 0xe8a35092, 0x1a6281c7, 0x8f5bbcbf, 0x2745d860
.word 0x20d04130, 0xb4cd057f, 0x1fa09fa0, 0x48bde326, 0x489720c3, 0x59bfe42a, 0x7bd36fbe, 0xd6223d0c
.word 0xa68420fc, 0x4a61018c, 0xcc6ebd84, 0xdaa844e4, 0x2314126b, 0x85f8440b, 0x0654dd08, 0xe5c1d0cb
.word 0x6090bfaf, 0x1f007ba7, 0xf8ca721d, 0x48096c8a, 0xe326e43a, 0x55c42324, 0x73f817bf, 0xbad86a08
.word 0x4d87a1b5, 0x8ac5d71f, 0x8c1d0270, 0x54be1a1a, 0x524ec93e, 0x8d840f1d, 0xe126f0d6, 0x7625daad
.word 0xae0cf2d6, 0x52624f14, 0x8d22beb3, 0x4be5d76a, 0x9c8ec68f, 0x6f4f312a, 0x1e9919b2, 0x68283600
.word 0xdae31c06, 0xefa594e5, 0x112ed625, 0x0eabfc5c, 0x839fd210, 0x87177d09, 0x14022a4f, 0x0350b641
.word 0x56109878, 0x688be778, 0x969aaaa0, 0x653158f6, 0x95e41022, 0x4326057a, 0x1fd15f10, 0xb0c08320
.word 0xa4116d8b, 0x20510964, 0xce8d214d, 0x2c9792c4, 0xcf21698a, 0x385cce92, 0x1e0d0713, 0xdc6fa126
.word 0x46bd0312, 0xf1ad1cd2, 0xb8500c1d, 0xf0a05a71, 0x66c81331, 0xe0516f73, 0xe015aa33, 0x4ddf8bd3
.word 0xa2607633, 0xa6dd1adf, 0x1ccc2e0b, 0x4c87e54e, 0x9c969455, 0xad159299, 0x4df4f64c, 0x9916fdab
.word 0xd1aa56e3, 0xa733d99e, 0xf0dd6866, 0x320039a7, 0x60648f52, 0x67d6f04d, 0x2f663265, 0x54c49d21
.word 0xb4401f88, 0x9f87fea2, 0xf2672d8a, 0xf4ce1a6b, 0xa9e3bcc9, 0x6c068a44, 0x78a05d0c, 0x90b08aa6
.word 0x8fdfb6bd, 0xdf7b8269, 0xc3c9c634, 0xc20734a9, 0xf2b8d9af, 0x990c6d86, 0xb0e4bb6e, 0x20532e90
.word 0x08321b59, 0xe72a3498, 0x10749c43, 0x9f6d1b2b, 0xecdc41e3, 0xc9145a90, 0xbb242e24, 0x0916eee0
.word 0x7b430309, 0xa7808cdc, 0x88b69607, 0xa6f56002, 0xfdaea28c, 0xf0f8cf79, 0x46f2b71a, 0x2b21307d
.word 0x709034f0, 0xad977b15, 0xe71670e9, 0x43c50736, 0x5796155b, 0x4080308a, 0x23b56e93, 0xce3e9bac
.word 0x21c07a9f, 0x43b728d5, 0x175ab851, 0x90e0ee44, 0xc99acbae, 0x4adb748a, 0xbd3602c1, 0x4fa03366
.word 0x9ba0146f, 0x87719cc3, 0xc7655505, 0xcadaf649, 0xea62580a, 0x1d095ae9, 0x770cf654, 0x19f627ca
.word 0xb2c4c4f3, 0x8c4c61f8, 0x99196a40, 0x04fd9d06, 0x17f54dbd, 0xf0c2e22c, 0x474f2db0, 0x9f5ba51c
.word 0xf2602df6, 0x6ae44e01, 0xe169436c, 0xb614aa2d
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
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x16, x27, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_2:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x16, x27, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_3:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x16, x27, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_4:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x16, x27, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_5:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x16, x27, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_6:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x16, x27, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_7:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x16, x27, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_8:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x16, x27, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_9:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x16, x27, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_10:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x16, x27, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_11:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x16, x27, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_12:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x16, x27, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_13:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x16, x27, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_14:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x16, x27, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_15:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x16, x27, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

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
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x16, x27, zero
                  csrr x24, 0x341 # MEPC
                  csrr x24, 0x342 # MCAUSE
                  li x2, 0x3 # BREAKPOINT
                  beq x24, x2, ebreak_handler
                  li x2, 0x8 # ECALL_UMODE
                  beq x24, x2, ecall_handler
                  li x2, 0x9 # ECALL_SMODE
                  beq x24, x2, ecall_handler
                  li x2, 0xb # ECALL_MMODE
                  beq x24, x2, ecall_handler
                  li x2, 0x1
                  beq x24, x2, instr_fault_handler
                  li x2, 0x5
                  beq x24, x2, load_fault_handler
                  li x2, 0x7
                  beq x24, x2, store_fault_handler
                  li x2, 0xc
                  beq x24, x2, pt_fault_handler
                  li x2, 0xd
                  beq x24, x2, pt_fault_handler
                  li x2, 0xf
                  beq x24, x2, pt_fault_handler
                  li x2, 0x2 # ILLEGAL_INSTRUCTION
                  beq x24, x2, illegal_instr_handler
                  csrr x2, 0x343 # MTVAL
                  1: la x1, test_done
                  jalr x1, x1, 0

ecall_handler:    
                  la x24, _start
                  sw x0, 0(x24)
                  sw x1, 4(x24)
                  sw x2, 8(x24)
                  sw x3, 12(x24)
                  sw x4, 16(x24)
                  sw x5, 20(x24)
                  sw x6, 24(x24)
                  sw x7, 28(x24)
                  sw x8, 32(x24)
                  sw x9, 36(x24)
                  sw x10, 40(x24)
                  sw x11, 44(x24)
                  sw x12, 48(x24)
                  sw x13, 52(x24)
                  sw x14, 56(x24)
                  sw x15, 60(x24)
                  sw x16, 64(x24)
                  sw x17, 68(x24)
                  sw x18, 72(x24)
                  sw x19, 76(x24)
                  sw x20, 80(x24)
                  sw x21, 84(x24)
                  sw x22, 88(x24)
                  sw x23, 92(x24)
                  sw x24, 96(x24)
                  sw x25, 100(x24)
                  sw x26, 104(x24)
                  sw x27, 108(x24)
                  sw x28, 112(x24)
                  sw x29, 116(x24)
                  sw x30, 120(x24)
                  sw x31, 124(x24)
                  la x1, write_tohost
                  jalr x0, x1, 0

instr_fault_handler:
                  add x27, x16, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

load_fault_handler:
                  add x27, x16, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

store_fault_handler:
                  add x27, x16, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

ebreak_handler:   
                  csrr  x24, 0x341
                  addi  x24, x24, 4
                  csrw  0x341, x24
                  add x27, x16, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

illegal_instr_handler:
                  csrr  x24, 0x341
                  addi  x24, x24, 4
                  csrw  0x341, x24
                  add x27, x16, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x24, 0x300 # MSTATUS;
                  csrr  x24, 0x304 # MIE;
                  csrr  x24, 0x344 # MIP;
                  csrrc x24, 0x344, x24 # MIP;
                  add x27, x16, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
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
