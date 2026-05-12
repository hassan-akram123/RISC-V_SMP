.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x12, h0_start
jalr x0, x12, 0
h0_start:
                  li x11, 0x40000100
                  csrw 0x301, x11
kernel_sp:        
                  la x2, kernel_stack_end

trap_vec_init:    
                  la x11, mtvec_handler
                  ori x11, x11, 0
                  csrw 0x305, x11 # MTVEC

mepc_setup:       
                  la x11, init
                  csrw 0x341, x11

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x11, 0x1800
                  csrw 0x300, x11 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0xd7ce3ec2
                  li x3, 0x9
                  li x4, 0x8e2c775e
                  li x5, 0x5
                  li x6, 0xa042db93
                  li x7, 0xfd7ecdea
                  li x8, 0xfc151e86
                  li x9, 0x80000000
                  li x10, 0x0
                  li x11, 0x80000000
                  li x12, 0xfce936c2
                  li x13, 0x80000000
                  li x14, 0x4
                  li x15, 0xf93eba3c
                  li x16, 0x0
                  li x17, 0xf1f7b6e4
                  li x18, 0xf3322d41
                  li x19, 0x80000000
                  li x20, 0x6
                  li x21, 0xf9b75de6
                  li x22, 0x80000000
                  li x23, 0xa
                  li x24, 0x0
                  li x26, 0x73b51682
                  li x27, 0x3
                  li x28, 0x2fa3cf8b
                  li x29, 0x0
                  li x30, 0xb8b2433d
                  li x31, 0x791cc566
                  la x25, user_stack_end
main:             sra          gp, a0, s9
                  srai         s8, a4, 30
                  or           s3, s7, t6
                  slti         tp, s5, -619
                  sra          ra, s3, s0
                  andi         t2, tp, -1011
                  la           t4, sub_1
                  sltiu        s11, a0, 484
                  addi         t4, t4, 69
                  lui          t1, 638501
                  blt          a3, a5, main_j2 #branch to jump instr
                  addi         t6, s7, 470
                  srli         s8, a5, 5
main_j2:          jalr         tp, t4, -68 #jump main -> sub_1
                  la           s5, region_1+1381 #start riscv_load_store_rand_instr_stream_0
                  slt          ra, s6, s9
                  andi         s11, s9, 285
                  sll          s2, s6, t5
                  andi         a0, s10, -251
                  lhu          a3, -9(s5)
                  lbu          a0, 4(s5)
                  sll          s10, s11, ra
                  sltu         s10, s11, a0
                  sh           a4, 15(s5)
                  andi         s3, t1, -118
                  lbu          s1, 16(s5)
                  sb           s5, -13(s5)
                  xori         t4, t3, -753
                  srli         gp, a1, 22
                  auipc        s1, 95662
                  and          a0, t0, a6
                  sb           a0, 14(s5)
                  lb           s11, -11(s5)
                  srli         t5, a4, 4
                  sb           sp, 1(s5)
                  lw           s1, -1(s5)
                  and          ra, a5, sp
                  lbu          t0, 1(s5)
                  sb           s2, 6(s5) #end riscv_load_store_rand_instr_stream_0
                  slli         t4, a7, 7
                  auipc        t0, 493521
                  sll          s7, s9, t0
                  lui          t0, 293210
                  bne          s5, t0, 9f
                  slli         s10, t4, 28
                  sltu         a3, a0, s10
                  and          s1, s3, t6
                  add          t0, a5, zero
                  la           ra, sub_1
                  addi         ra, ra, -553
                  slt          t2, t3, t4
                  and          a4, a7, a3
                  lui          a3, 603681
                  slti         s7, s11, -1077
                  ori          s1, s9, -1382
                  blt          tp, a6, main_j1 #branch to jump instr
                  addi         a4, s10, 1027
                  slt          a7, s11, t3
                  srli         a5, s8, 31
main_j1:          jalr         tp, ra, 553 #jump main -> sub_1
9:                xor          gp, ra, zero
                  la x12, test_done
                  jalr x0, x12, 0
test_done:        
                  li gp, 1
                  ecall
sub_10:           bge          s10, s2, sub_10_stack_p
                  auipc        zero, 277358
                  and          s10, t6, s2
sub_10_stack_p:   addi         s9, s9, -48
                  sw           tp, 4(s9)
                  sub          t0, a3, ra
                  slti         s10, a6, 1717
                  xori         a3, tp, 1324
                  sra          s10, a1, ra
                  bne          s5, t6, 16f
                  blt          a1, s2, 5f
                  and          t6, a0, t6
                  and          s10, s3, t6
5:                sra          s10, ra, t2
                  bgeu         a4, t3, 22f
                  nop
                  ori          t6, s11, 429
                  srai         s11, t5, 22
                  bne          s4, a2, 30f
                  and          s0, s2, t2
                  andi         s8, s4, -1937
                  bge          a6, s3, 14f
14:               or           t0, a4, t4
                  slti         ra, s6, 91
16:               bgeu         t3, a2, 26f
                  andi         t0, s6, -1512
                  addi         s6, t4, -1626
                  slt          t0, a1, s8
                  bltu         s2, t3, 25f
                  slt          s8, s10, a5
22:               lui          s4, 819230
                  auipc        gp, 404850
                  beq          t5, s9, 44f
25:               slti         zero, s5, 1543
26:               blt          t2, t0, 29f
                  sra          s10, a6, gp
                  sub          t5, s8, t6
29:               andi         s3, gp, -1544
30:               bge          s4, a2, 39f
                  bltu         t5, gp, 50f
                  or           s0, tp, s11
                  andi         s11, a7, -1091
                  add          a0, s1, s8
                  sltu         a4, t1, a7
                  blt          s6, t2, 54f
                  srl          ra, s2, a2
                  sltiu        s11, t5, 446
39:               andi         a3, t1, 485
                  sltiu        s0, t5, 368
                  sll          t1, s10, sp
                  srai         s0, s2, 31
                  andi         a4, s8, 1269
44:               sub          s6, t3, a5
                  xor          s7, a2, t0
                  auipc        s4, 642441
                  slt          a1, zero, s7
                  slti         t2, a6, -1426
                  xor          s7, s4, a6
50:               addi         s4, a2, 1143
                  srai         a0, a4, 2
                  lui          a4, 641177
                  sltu         gp, s1, s6
54:               sltu         a4, t6, s2
                  and          a3, s6, s3
                  blt          t4, ra, 60f
                  blt          s0, s0, 59f
                  andi         tp, a2, 281
59:               srai         s11, s4, 3
60:               slti         a4, a1, 1545
                  sltiu        a3, s2, -386
                  bgeu         s8, t4, 69f
                  sll          t6, s10, s7
                  nop
                  bgeu         a1, a1, 80f
                  bge          gp, s7, 80f
                  slli         a4, s10, 20
                  srli         s7, sp, 10
69:               bne          s1, t2, 85f
                  srli         ra, s11, 29
                  ori          s0, a5, -837
                  slt          s8, t0, s10
                  addi         s10, s2, 238
                  sra          s5, a3, s10
                  srli         t2, s6, 7
                  srl          s10, a0, a7
                  xori         a7, s8, -1252
                  sltiu        t2, ra, -2031
                  slli         s4, s11, 30
80:               nop
                  or           zero, s5, s1
                  slti         t0, t4, -123
                  or           a5, t6, s11
                  addi         s3, t5, -492
85:               lui          s3, 147897
                  add          t0, s3, ra
                  add          gp, a7, t1
                  andi         s0, s4, 520
                  bge          s0, t5, 99f
                  bne          s11, t6, 92f
                  slli         t5, a1, 27
92:               slti         s4, a0, -1564
                  auipc        s5, 207731
                  srai         s3, a6, 19
                  beq          s0, s3, 98f
                  lui          a7, 660386
                  addi         s5, s11, 1642
98:               bge          s11, s4, 115f
99:               and          s8, a5, a7
                  sltu         gp, t6, zero
                  slti         s7, s2, -1897
                  srl          ra, a6, zero
                  xor          gp, a0, s1
                  srai         s1, s1, 7
                  bgeu         a0, s6, 125f
                  srl          t1, s11, s6
                  nop
                  sltiu        a7, s4, 660
                  auipc        t5, 555607
                  bgeu         a2, s9, 115f
                  srai         t1, s6, 27
                  sra          t4, t0, t1
                  bge          s0, s3, 122f
                  and          s2, a7, s7
115:              slt          s0, t5, tp
                  ori          s0, s7, -82
                  andi         s6, s9, -622
                  ori          s1, s11, 507
                  blt          s8, s3, 129f
                  slt          t3, s4, s5
                  srai         a1, s4, 4
122:              sra          t0, zero, a4
                  srl          t1, t1, a2
                  andi         gp, a4, -106
125:              srai         a7, a7, 30
                  xori         s7, t4, -1954
                  sll          t4, tp, t1
                  ori          s10, s3, -1578
129:              bgeu         s11, s2, 146f
                  sltu         ra, s9, t4
                  slt          a6, zero, t3
                  la           s2, region_0+1997 #start riscv_load_store_rand_instr_stream_0
                  lhu          a3, -187(s2)
                  xori         t2, a7, 1366
                  lhu          t4, -19(s2)
                  lh           tp, -207(s2)
                  ori          t0, t5, 1964
                  lh           t5, -99(s2)
                  lhu          s3, -223(s2)
                  lbu          t4, -14(s2)
                  lhu          ra, -133(s2)
                  add          a3, s7, t0
                  lhu          s1, -247(s2)
                  srli         a6, s6, 27
                  srli         s10, s11, 31
                  lb           s6, -28(s2)
                  sb           s10, -49(s2)
                  srai         ra, t0, 5
                  lhu          s1, -153(s2)
                  sb           s8, -82(s2)
                  auipc        s1, 777533
                  sb           a5, -20(s2)
                  sltiu        t5, s1, -1640
                  lhu          t5, -189(s2)
                  sll          gp, t1, s2
                  lui          t3, 364545
                  xori         t0, s6, -1704
                  sub          s8, t1, s11
                  sb           t5, -202(s2)
                  sub          s3, t1, s4
                  lb           a4, -18(s2)
                  add          s10, a7, t4
                  lbu          s11, -38(s2)
                  lbu          t3, -133(s2)
                  auipc        s7, 419316
                  nop
                  sb           t5, 2(s2)
                  sh           a2, -207(s2)
                  lbu          s10, -232(s2) #end riscv_load_store_rand_instr_stream_0
                  bgeu         s7, s3, 139f
                  add          a1, a7, ra
                  sltu         s8, t4, a1
                  sll          s8, t4, t6
                  sltu         s1, t2, t3
                  xor          a6, a0, tp
                  blt          s5, s11, 149f
139:              blt          a6, gp, 157f
                  bge          s7, t1, 147f
                  slti         s8, s4, 1997
                  auipc        s10, 993115
                  slti         t5, tp, 505
                  sra          s5, t2, a5
                  sub          s10, s6, s10
146:              bge          t4, t0, 166f
147:              sub          s5, ra, s7
                  sub          s2, s3, t4
149:              addi         t5, a6, 13
                  beq          sp, t4, 160f
                  srl          s7, t0, s10
                  bge          gp, s1, 155f
                  blt          t2, a6, 155f
                  addi         s10, a0, 1998
155:              slli         t2, a7, 13
                  and          s10, a7, t0
157:              sra          a1, zero, a3
                  add          s5, t5, s11
                  xori         s8, zero, -558
160:              lui          a7, 585552
                  and          t4, s0, s10
                  srai         gp, t3, 4
                  bge          a5, t5, 177f
                  sll          a7, t0, sp
                  sub          s1, s3, t0
166:              bgeu         a1, s10, 171f
                  andi         a1, a4, 1091
                  auipc        t5, 927865
                  sra          s11, s4, s7
                  sra          gp, a0, s6
171:              blt          t2, s1, 172f
172:              bgeu         s9, s9, 182f
                  and          s0, s10, t4
                  or           t4, t0, a5
                  srl          t6, a4, s7
                  srl          a6, a3, t3
177:              sltu         t4, ra, s0
                  srai         t1, a1, 13
                  srli         t4, ra, 12
                  sltiu        s1, t4, 131
                  srl          gp, s5, a5
182:              andi         s4, t0, 199
                  sub          a6, s0, a5
                  auipc        t2, 269413
                  blt          s6, s3, 190f
                  lui          t6, 498887
                  srai         a1, t4, 20
                  or           a6, t5, s3
                  bgeu         a6, zero, 191f
190:              sra          t6, sp, s1
191:              and          s7, s11, s6
                  srli         a5, a7, 6
                  srai         t1, s6, 18
                  slti         t4, s4, -755
                  sra          s11, a1, a6
                  xor          tp, a3, t4
                  sltiu        s10, t3, 1281
                  addi         t5, t3, -206
                  slt          a0, s9, a6
                  auipc        s1, 49405
                  srli         t4, s4, 23
                  srl          s1, s8, ra
                  bne          t0, zero, 220f
                  bgeu         s4, tp, 224f
                  bge          a4, t2, 212f
                  lui          s7, 897334
                  sra          s1, s10, gp
                  sra          a3, s2, t3
                  sltu         s3, gp, t4
                  bltu         gp, a7, 228f
                  xor          s5, tp, t6
212:              sub          a7, t4, t5
                  xor          a1, s5, a6
                  sra          a3, s10, zero
                  and          ra, s10, t1
                  sra          t5, s6, s0
                  slt          s3, a4, zero
                  lui          s8, 195285
                  sll          a5, s10, a3
220:              sra          a7, t6, s2
                  and          tp, gp, ra
                  sltu         t5, gp, s0
                  sltu         s7, gp, t3
224:              nop
                  nop
                  andi         t0, s9, -1022
                  ori          a5, a5, 586
228:              andi         s1, s9, -1822
                  beq          s7, s0, 245f
                  sltiu        tp, a2, -1728
                  slti         t4, s11, -1314
                  blt          s10, a6, 247f
                  bgeu         s9, s3, 253f
                  sll          s1, t5, a7
                  beq          s8, a4, 252f
                  xori         zero, gp, -652
                  sltu         a6, t6, s3
                  xor          ra, zero, s10
                  srli         t2, a5, 14
                  slt          s1, t0, t1
                  andi         a4, a7, -824
                  nop
                  beq          t2, t0, 261f
                  slti         gp, t2, 1659
245:              bne          a2, a1, 254f
                  sll          a1, t6, a1
247:              bltu         s11, t3, 262f
                  srai         s4, s2, 7
                  auipc        s4, 616463
                  xori         s11, s2, 1786
                  xori         a5, a6, -1270
252:              blt          s11, s8, 261f
253:              slti         s11, a0, -217
254:              bltu         a3, s2, 273f
                  slt          t0, s0, s9
                  srai         s4, s9, 25
                  srli         t4, s3, 2
                  sltiu        s11, t4, 588
                  sltiu        t1, sp, 292
                  bltu         sp, s10, 276f
261:              srl          t6, s11, gp
262:              slti         s11, t3, -872
                  bltu         t4, s1, 273f
                  addi         a0, s0, 1377
                  blt          s6, zero, 269f
                  srli         zero, t1, 2
                  sub          a6, ra, zero
                  bgeu         a6, ra, 271f
269:              slti         s10, s11, -1580
                  nop
271:              bne          a0, s10, 282f
                  sltiu        a1, s5, -1785
273:              auipc        s4, 143853
                  auipc        s6, 322910
                  andi         s7, tp, -1162
276:              bltu         a5, ra, 279f
                  bgeu         ra, zero, 294f
                  srai         s3, ra, 1
279:              slti         s11, s4, -1045
                  sll          t0, a7, s7
                  srli         s4, t3, 1
282:              auipc        s0, 882916
                  blt          s9, s4, 301f
                  xor          a0, s0, s10
                  srai         gp, s4, 21
                  sltiu        t4, s8, -299
                  sub          zero, s4, a6
                  slli         t2, s8, 12
                  lui          tp, 931375
                  sltiu        t6, t0, 17
                  lui          t3, 397895
                  beq          t6, s6, 306f
                  bne          s6, tp, 304f
294:              addi         s5, s11, 325
                  xori         t1, t4, -716
                  bne          a0, s10, 316f
                  and          t4, s9, a5
                  srai         t2, s6, 27
                  addi         t6, a0, -819
                  slli         tp, a0, 22
301:              beq          s10, s1, 308f
                  bge          a1, s5, 307f
                  slt          t4, s2, t2
304:              or           t2, ra, s3
                  bge          a0, gp, 309f
306:              bne          t2, s4, 309f
307:              bge          ra, a4, 323f
308:              sltu         s8, t3, a5
309:              slti         t5, t4, 1684
                  slti         a1, a7, 1955
                  nop
                  ori          s1, s5, -691
                  sub          t4, s4, t2
                  ori          t5, t1, -406
                  slli         s11, zero, 0
316:              slti         s2, zero, -1215
                  slt          zero, s1, a1
                  srai         t5, t2, 28
                  beq          t4, s0, 336f
                  ori          ra, a5, 868
                  andi         s7, s8, -1848
                  add          s4, t0, a0
323:              sra          s6, t5, t3
                  sra          t1, t4, s1
                  nop
                  bge          sp, a1, 327f
327:              bgeu         s5, s6, 329f
                  slli         s7, t3, 0
329:              bltu         a0, sp, 349f
                  ori          s11, s9, -1744
                  bltu         t0, gp, 340f
                  andi         a7, s7, -1057
                  sltu         zero, s10, a3
                  srli         s4, s9, 2
                  srai         s8, s3, 13
336:              sltu         t2, a6, s11
                  sll          s10, t3, s0
                  xori         a0, t4, -271
                  srl          tp, a6, t3
340:              blt          s2, a7, 350f
                  sltiu        s2, a2, -451
                  xori         s1, gp, 1199
                  and          s3, s1, zero
                  lui          s8, 35961
                  xori         a1, gp, -6
                  la           tp, region_1+916 #start riscv_load_store_rand_instr_stream_1
                  slti         a0, t6, -987
                  lw           s0, -64(tp)
                  nop
                  sra          s10, s3, sp
                  lb           a0, 63(tp)
                  auipc        s10, 21217
                  lb           s4, -23(tp)
                  sb           s0, -26(tp)
                  slti         a6, s5, 1567
                  sb           a3, 23(tp)
                  xor          s8, s10, t1
                  sltu         a5, s8, a3
                  lb           t4, -16(tp)
                  lbu          t2, -7(tp)
                  and          a5, s4, s11
                  lbu          s0, -3(tp)
                  sb           s1, 21(tp)
                  lbu          s7, 54(tp)
                  lbu          a4, -25(tp)
                  lb           s4, -49(tp)
                  lui          a6, 457562
                  slli         t5, t1, 10
                  sh           a1, -12(tp)
                  lbu          a5, -49(tp)
                  lb           s8, -17(tp) #end riscv_load_store_rand_instr_stream_1
                  beq          gp, a4, 365f
                  blt          a1, s0, 356f
                  srli         t3, a6, 9
349:              add          a5, s9, t1
350:              blt          a2, zero, 352f
                  lui          a4, 341000
352:              srli         s6, t4, 22
                  srai         s2, t0, 28
                  sll          a3, a4, s4
                  xori         s3, t1, -1964
356:              sltiu        t4, s8, 1782
                  addi         gp, t2, -699
                  nop
                  beq          s10, s4, 369f
                  auipc        t5, 93160
                  bge          a4, s6, 370f
                  sub          s6, t4, a4
                  ori          a1, a3, -584
                  sub          t5, tp, a3
365:              beq          t1, a1, 370f
                  lui          t2, 920685
                  and          a7, gp, a0
                  and          s2, sp, s10
369:              xori         t4, a3, -865
370:              srl          s6, s7, s5
                  lw           tp, 4(s9)
                  addi         s9, s9, 48
                  and          a5, t5, t4
                  lui          a5, 562720
                  slti         gp, s5, 1429
                  and          a6, a4, t1
                  add          t6, gp, s0
                  addi         s6, a3, -251
451:              addi x31, x4, 1
451:              jalr x31, x31, 0
sub_6:            slt          a6, s6, a1
                  beq          s6, a6, sub_6_stack_p
                  slt          t5, s10, t5
sub_6_stack_p:    addi         s9, s9, -52
                  sltiu        t0, s4, 798
                  nop
                  sw           tp, 4(s9)
                  srai         gp, a1, 19
                  srai         gp, s3, 26
                  xor          t3, a5, gp
                  slli         a5, zero, 28
                  lui          a7, 543294
                  bgeu         s7, s6, 3f
3:                bgeu         a1, a5, 4f
4:                sltu         zero, s3, a1
                  ori          tp, a5, -810
                  xor          s11, tp, s4
                  srai         zero, t6, 25
                  auipc        s4, 664834
                  slt          a3, s8, s0
                  xor          gp, a2, t1
                  sltiu        a5, t3, -881
                  xori         t4, s9, -48
                  ori          t0, s10, 1102
                  xori         s1, s8, 1145
                  bltu         s9, t4, 25f
                  bltu         s6, t0, 34f
                  slti         a1, gp, -1548
                  bge          sp, gp, 31f
                  or           s7, tp, a3
                  srli         t4, t5, 29
                  sll          s5, zero, gp
                  srai         t1, s10, 19
                  lui          s7, 329386
                  srl          zero, s2, s1
25:               srli         s8, s3, 20
                  slti         t3, s6, -1164
                  addi         a3, a6, -1257
                  lui          s10, 635001
                  or           t4, t0, t1
                  nop
31:               nop
                  srai         t1, t6, 18
                  xori         a6, tp, 1438
34:               slli         t1, s10, 27
                  ori          s4, t2, -1590
                  nop
                  bgeu         s1, tp, 39f
                  or           s0, t2, a3
39:               sltiu        a1, s4, -1803
                  lw           tp, 4(s9)
                  srl          t1, t5, s11
                  addi         s9, s9, 52
                  sltu         t5, s1, a1
                  sll          s5, s5, a5
                  sra          t6, s0, tp
                  xori         a7, ra, -1754
57:               addi x10, x4, 1
57:               jalr x10, x10, 0
sub_5:            addi         s9, s9, -16
                  slli         t6, t4, 10
                  sw           tp, 4(s9)
                  and          a7, a1, s0
                  or           a6, a2, s2
                  lui          zero, 139081
                  or           a5, s1, s9
                  slli         a3, zero, 15
                  la           a1, sub_7
                  sll          s1, s0, a3
                  addi         a1, a1, 57
                  srai         zero, s2, 25
                  sltiu        s4, t0, -1806
                  sub          s2, s6, sp
                  or           s1, s2, s9
                  blt          sp, s3, sub_5_j8 #branch to jump instr
                  xori         s4, t2, 684
                  srli         tp, a1, 30
sub_5_j8:         jalr         tp, a1, -57 #jump sub_5 -> sub_7
                  bne          a7, a5, sub_5_j9 #branch to jump instr
                  srli         a4, t3, 23
                  lui          a4, 477279
                  sltu         t2, a6, s2
                  slli         s4, a6, 26
                  srai         t5, s2, 7
sub_5_j9:         jal          tp, sub_6 #jump sub_5 -> sub_6
                  la           t3, region_1+588 #start riscv_load_store_rand_instr_stream_0
                  sb           t1, 59(t3)
                  lb           s11, 18(t3)
                  sb           s2, -61(t3)
                  lb           s8, 32(t3)
                  sb           tp, -13(t3)
                  lb           t0, 24(t3)
                  and          s4, tp, s6
                  sb           t4, -60(t3)
                  slt          a1, a1, zero
                  lui          a3, 612215
                  auipc        ra, 283973
                  lb           t2, 45(t3)
                  slt          a4, a6, t2
                  or           t6, s2, zero
                  add          a6, s2, sp
                  sltu         t4, a0, a4
                  andi         t6, a1, -53
                  lbu          t5, -29(t3)
                  nop
                  slli         s3, s7, 26
                  sltu         a0, t4, a1
                  sltiu        t5, s11, 84
                  sw           a2, 48(t3)
                  lb           s1, -61(t3)
                  lh           ra, -16(t3)
                  sll          ra, a7, t2
                  sb           a0, -13(t3)
                  sh           a1, 48(t3)
                  ori          s8, s9, 2040
                  lui          a4, 520309
                  sb           a0, 42(t3)
                  lb           s4, 42(t3)
                  slli         s8, t4, 13
                  lbu          s2, 63(t3)
                  lhu          ra, 34(t3)
                  srl          s8, a6, t6
                  lbu          a7, -23(t3)
                  sh           s9, 56(t3)
                  lbu          s0, 26(t3)
                  andi         s7, s10, 199
                  sh           s10, -6(t3)
                  auipc        t2, 936441
                  sb           s2, 56(t3)
                  lbu          tp, -41(t3)
                  ori          s8, tp, -1569
                  nop
                  lhu          a0, 18(t3)
                  srli         t5, a4, 23
                  sb           sp, 3(t3)
                  sb           a3, 8(t3)
                  sb           s5, 9(t3)
                  sltiu        a1, t0, 1391
                  xor          gp, a1, t2
                  slt          zero, t1, s3
                  sb           t0, 64(t3)
                  add          s0, tp, s0
                  sltu         a3, s10, a1
                  lb           s11, -52(t3) #end riscv_load_store_rand_instr_stream_0
                  add          a6, a1, sp
                  srli         t5, zero, 14
                  beq          zero, s5, 11f
                  or           t1, s8, a1
                  sltu         s3, s0, a4
                  srli         s4, s5, 4
                  srli         s10, ra, 23
                  sra          t0, t2, s10
                  slt          a3, t0, a2
                  lui          ra, 619106
                  andi         s3, a4, 995
11:               xor          t2, a6, a2
                  slt          s1, s0, sp
                  nop
                  srl          a0, t2, s7
                  sub          a6, s2, s7
                  bge          sp, zero, 36f
                  or           s6, s1, a7
                  auipc        s8, 335538
                  slt          s1, tp, tp
                  add          ra, s8, t5
                  addi         a4, a7, -1325
                  and          t5, s0, a1
                  sub          t2, s8, sp
                  bne          a7, s2, 44f
                  ori          s1, s0, 2036
                  sltiu        t0, a5, 1275
                  bge          s11, sp, 44f
                  and          s5, s8, s2
                  srli         a7, a0, 28
                  lui          a0, 125807
                  blt          s7, s11, 35f
                  blt          tp, a4, 46f
                  bge          s1, s0, 38f
                  beq          a0, s6, 46f
35:               bltu         ra, a7, 52f
36:               or           s5, a5, s10
                  slt          s0, s9, t1
38:               sltu         s3, a4, gp
                  sltu         s5, t3, a6
                  sll          gp, s2, tp
                  lui          a4, 347614
                  auipc        a4, 682371
                  auipc        s6, 475683
44:               addi         t4, t6, -1006
                  addi         t1, tp, -1821
46:               lui          s4, 389399
                  blt          tp, a2, 63f
                  bltu         tp, s9, 54f
                  auipc        t3, 422643
                  xori         t2, ra, -1696
                  srl          tp, ra, a7
52:               sll          t5, s1, s7
                  blt          t3, t0, 71f
54:               slt          gp, t0, t5
                  andi         a3, t1, -463
                  bgeu         s6, zero, 57f
57:               bgeu         s11, t1, 67f
                  xor          a3, gp, t3
                  bge          t5, s7, 61f
                  bltu         a4, t5, 69f
61:               blt          t4, a7, 74f
                  sltiu        a4, s7, 446
63:               auipc        t0, 110609
                  slt          a5, gp, a4
                  bgeu         a7, s2, 73f
                  auipc        t0, 652272
67:               bne          gp, s2, 76f
                  addi         tp, s2, -1294
69:               ori          t0, a5, -72
                  slli         s0, a5, 1
71:               sra          a7, t4, s5
                  addi         s2, s9, -721
73:               srl          t5, s4, s2
74:               bne          s4, t6, 77f
                  sltu         s8, s7, tp
76:               srai         t5, a2, 15
77:               bge          a3, t6, 80f
                  lui          zero, 213173
                  andi         t1, t2, 617
80:               or           t0, a2, s5
                  sra          s8, t6, zero
                  ori          a6, s4, 975
                  or           s7, zero, s7
                  ori          a3, t3, -687
                  sltu         a5, t5, ra
                  bltu         a1, s3, 94f
                  slli         s7, gp, 3
                  srl          t5, t5, s1
                  bge          s6, t2, 96f
                  lui          t4, 226709
                  sra          a1, t4, zero
                  blt          s6, a5, 102f
                  sll          t6, t1, s8
94:               ori          t5, t1, 646
                  slti         t6, a2, 1659
96:               add          t4, t2, t3
                  beq          a0, gp, 110f
                  and          gp, s11, a1
                  sltu         s4, t3, a2
                  nop
                  ori          t4, a7, 1982
102:              srai         s11, a1, 22
                  auipc        a0, 767750
                  slli         s2, s6, 13
                  or           a7, s3, t3
                  bltu         a7, t1, 110f
                  xori         s3, t2, 1396
                  slli         t4, zero, 27
                  beq          s9, tp, 124f
110:              slli         a5, a5, 29
                  addi         s6, s10, -1577
                  bge          gp, t1, 122f
                  slti         t1, s0, -1056
                  srai         a0, s1, 14
                  blt          t3, t0, 132f
                  srai         gp, zero, 22
                  beq          t0, s5, 122f
                  blt          t4, s4, 124f
                  bne          s10, a4, 124f
                  nop
                  nop
122:              slti         s0, s5, 214
                  beq          a5, zero, 136f
124:              blt          gp, t1, 138f
                  slli         s6, s6, 11
                  lui          s3, 592440
                  ori          s11, s5, 415
                  slli         s1, s9, 17
                  slli         t3, t3, 28
                  ori          a4, a0, 276
                  sltu         a7, ra, s1
132:              ori          s5, t0, -579
                  xori         t5, t4, 92
                  bgeu         s10, s9, 147f
                  beq          s2, t3, 147f
136:              bge          s11, s0, 138f
                  bge          s2, sp, 146f
138:              srl          a6, s10, sp
                  nop
                  slti         s10, s6, -341
                  sub          s1, a1, zero
                  sra          a4, s11, s7
                  srai         a4, s10, 11
                  or           ra, a7, a7
                  auipc        s4, 500469
146:              xor          a4, t0, t2
147:              slt          t1, s11, t0
                  andi         zero, a3, -665
                  add          zero, zero, t4
                  slli         s10, ra, 24
                  or           a3, a2, t1
                  auipc        s0, 778887
                  lw           tp, 4(s9)
                  slti         a6, s7, 2047
                  xori         a1, s3, -816
                  auipc        a0, 865468
                  slti         ra, s11, 825
                  addi         s9, s9, 16
                  sltu         s2, a6, s11
245:              addi x3, x4, 1
245:              jalr x3, x3, 0
sub_1:            xor          s1, s7, s2
                  srai         t0, ra, 31
                  slli         t6, ra, 1
                  nop
                  slti         a1, t4, 1423
                  bge          zero, t1, sub_1_stack_p
                  auipc        a4, 762572
sub_1_stack_p:    addi         s9, s9, -56
                  sw           tp, 4(s9)
                  ori          a4, t0, -547
                  slti         s3, tp, -1258
                  xor          s8, s1, t3
                  and          a3, t4, s7
                  ori          s2, s3, -1294
                  andi         t0, a1, -1852
                  srl          ra, s2, t5
                  nop
                  add          t3, a7, a2
sub_1_j3:         jal          tp, sub_2 #jump sub_1 -> sub_2
                  andi         a3, s9, 1534
                  xor          t1, a5, s5
                  la           s0, sub_2
                  auipc        a5, 279251
                  slti         s5, a1, -1044
                  add          s11, t1, tp
                  xor          s10, t4, s10
                  slti         t1, s0, 56
                  addi         s0, s0, 112
                  srai         t2, a7, 27
sub_1_j4:         jalr         tp, s0, -111 #jump sub_1 -> sub_2
                  la           s2, sub_4
                  andi         s6, a3, 1022
                  srli         s8, s8, 10
                  addi         s2, s2, -160
                  slli         t0, a7, 19
                  slt          t5, s11, s6
                  xor          a0, s9, s5
                  sltu         t1, s3, a7
sub_1_j5:         jalr         tp, s2, 160 #jump sub_1 -> sub_4
                  lui          a3, 287364
                  sub          t0, s6, t2
                  la           s6, sub_3
                  addi         s6, s6, 119
                  sltiu        s7, s11, -1534
                  xori         t4, sp, 1140
                  xori         t0, s9, -225
sub_1_j6:         jalr         tp, s6, -119 #jump sub_1 -> sub_3
                  srl          a0, s9, a5
                  srl          t3, t1, s4
                  sll          ra, s8, t6
                  bge          a1, zero, 6f
                  srli         s6, s1, 30
                  slli         t5, a7, 21
6:                xori         t5, s2, 272
                  ori          s5, a7, 129
                  bltu         s8, t0, 18f
                  auipc        s1, 1020108
                  ori          tp, s6, -1035
                  sltu         s10, t2, sp
                  or           ra, s0, a4
                  or           a6, sp, t1
                  addi         s3, s10, 582
                  sll          s7, s0, gp
                  slli         a7, a2, 8
                  slti         s6, a5, 1249
18:               or           s1, zero, s4
                  sra          s2, tp, s1
                  sll          gp, s10, s4
                  slli         t5, a3, 16
                  sll          a3, t4, s7
                  addi         s7, zero, 490
                  sltiu        t2, s0, -240
                  lw           tp, 4(s9)
                  srl          t2, s10, a1
                  srai         t2, s9, 19
                  addi         s9, s9, 56
                  xori         t6, s10, 1171
77:               addi x13, x4, 0
77:               jalr x13, x13, 0
sub_8:            slli         s4, s0, 15
                  sra          a6, a1, tp
                  srl          a5, ra, s0
                  or           a5, gp, s3
                  sltu         s4, a7, s7
                  bne          t4, a0, sub_8_stack_p
                  srai         a1, s9, 18
sub_8_stack_p:    addi         s9, s9, -52
                  slti         s10, a4, 156
                  add          s4, s1, s2
                  lui          s0, 29062
                  sw           tp, 4(s9)
                  sra          gp, a2, s11
                  sltu         s6, s8, s2
                  xori         s8, a3, -1269
                  la           a7, sub_10
                  andi         a4, s0, -1574
                  addi         a7, a7, -1021
                  slti         s0, a1, -560
                  bgeu         s3, a3, sub_8_j12 #branch to jump instr
                  sll          t0, s10, gp
                  slli         s8, a7, 22
sub_8_j12:        jalr         tp, a7, 1022 #jump sub_8 -> sub_10
                  slt          s7, gp, s11
                  sll          s7, a7, sp
                  srli         a1, s0, 5
                  srai         a4, s7, 7
                  addi         a1, gp, 204
                  sltu         s2, a0, tp
                  sub          t2, s2, a1
sub_8_j13:        jal          tp, sub_9 #jump sub_8 -> sub_9
                  sltiu        t3, ra, -664
                  srli         t5, t4, 31
                  ori          t2, s8, 793
                  slti         a6, t4, 1040
                  addi         t5, t3, -361
                  addi         t5, t1, 1262
                  lui          s3, 445038
                  beq          s6, a5, 19f
                  slti         s6, a0, -1129
                  xor          t5, a5, s5
                  srl          s11, tp, t3
                  blt          a4, a4, 17f
                  srli         s7, a0, 10
                  slli         a6, t0, 29
                  sub          a6, s9, t3
                  slti         a4, t0, 19
                  andi         s3, s8, -1082
17:               andi         a4, a2, 1610
                  nop
19:               add          t3, t4, t3
                  sra          s2, ra, t0
                  bge          s9, a1, 24f
                  sltiu        s6, s4, -1326
                  bltu         s4, gp, 38f
24:               and          s10, t4, t5
                  bne          t1, zero, 38f
                  sra          s11, sp, ra
                  xori         s3, tp, 1818
                  beq          t4, ra, 37f
                  sltu         a7, s4, gp
                  ori          s2, s10, 995
                  xor          a7, t3, a6
                  addi         t0, t2, -293
                  sra          s0, zero, t3
                  addi         a0, tp, 2037
                  sub          a5, s11, s6
                  and          a3, s4, s7
37:               slti         a7, a6, -797
38:               beq          s7, s2, 55f
                  add          t5, a7, a3
                  add          a1, t6, a4
                  andi         s8, s6, 845
                  sltiu        s11, a3, -1382
                  slti         s1, zero, -1312
                  sll          t5, a2, t3
                  lui          s10, 592290
                  blt          s2, a0, 65f
                  slli         s3, gp, 22
                  add          a0, sp, a7
                  sra          s11, s3, t1
                  and          a3, a2, tp
                  slti         s8, gp, -1641
                  srli         t4, t2, 9
                  add          s5, s8, t4
                  slti         s6, s10, 1542
55:               blt          zero, a0, 56f
56:               nop
                  andi         tp, t3, -1527
                  sll          a6, s8, a6
                  sll          s3, gp, gp
                  andi         s5, a3, 598
                  bne          gp, s5, 67f
                  slti         a7, a4, -1153
                  slti         s0, a6, 150
                  andi         t3, t1, 1126
65:               bne          t5, s9, 78f
                  beq          ra, a2, 82f
67:               add          t4, a6, t2
                  sub          t5, s9, s2
                  add          a5, a4, s4
                  srai         t1, zero, 29
                  bne          t2, a6, 86f
                  slli         t1, s2, 5
                  xori         a3, a4, -1908
                  andi         s11, s8, -809
                  xor          t4, t4, a2
                  blt          s3, tp, 82f
                  srl          a4, t6, a6
78:               bge          t2, t0, 94f
                  bltu         sp, s7, 85f
                  slti         zero, t2, 1034
                  addi         a3, t0, -1667
82:               srl          s2, s5, t4
                  auipc        a1, 628432
                  bltu         s8, zero, 94f
85:               auipc        a4, 152479
86:               blt          a3, tp, 97f
                  srl          s6, s7, t6
                  lui          a3, 402067
                  nop
                  lui          t5, 625723
                  slti         t1, s3, 1123
                  sll          s8, a1, a7
                  addi         zero, a2, 1886
94:               addi         s6, s2, 1398
                  sra          zero, s4, t5
                  sra          s5, a6, zero
97:               xori         a6, a5, -321
                  addi         s11, s6, 324
                  and          a6, ra, t6
                  slti         s0, s3, 1598
                  srl          tp, tp, t6
                  addi         tp, s7, 1481
                  blt          gp, a4, 111f
                  auipc        ra, 459894
                  nop
                  add          s8, gp, a6
                  slli         s6, tp, 1
                  or           a5, t0, t4
                  bltu         t6, s9, 111f
                  nop
111:              sltiu        s7, t5, -1088
                  or           s3, a1, a3
                  addi         ra, t0, -964
                  lw           tp, 4(s9)
                  or           t1, t6, t4
                  lui          gp, 63095
                  and          s5, s11, t4
                  addi         s9, s9, 52
                  srli         t3, s0, 20
                  slt          t4, a1, s6
152:              addi x6, x4, 0
152:              jalr x6, x6, 0
sub_2:            addi         s10, a1, 102
                  and          ra, s3, a4
                  bne          s9, tp, sub_2_stack_p
sub_2_stack_p:    addi         s9, s9, -32
                  xor          a3, a0, t4
                  sw           tp, 4(s9)
                  srli         s4, a7, 14
                  add          zero, ra, zero
                  and          s2, t6, a7
                  la           a3, region_0+1714 #start riscv_load_store_rand_instr_stream_2
                  sw           zero, -2(a3)
                  or           t0, t1, s4
                  lb           s0, -9(a3)
                  srli         s8, s8, 13
                  sra          t2, s5, s0
                  lb           t6, 1(a3)
                  sb           t3, 11(a3)
                  lb           s11, -15(a3)
                  srai         t6, s7, 31
                  lb           s3, 9(a3)
                  sh           a6, 4(a3)
                  lbu          s1, -9(a3)
                  sb           ra, 3(a3)
                  sh           a7, -8(a3)
                  nop
                  lb           t3, -7(a3)
                  lb           s3, -7(a3)
                  sb           s2, 1(a3)
                  lhu          s7, -10(a3)
                  lb           s1, -7(a3)
                  sub          a7, t5, a7
                  lhu          a0, -8(a3)
                  srli         a0, s0, 11
                  lh           t2, -14(a3)
                  lb           a4, 13(a3)
                  sltu         zero, s2, tp
                  lb           s3, -7(a3)
                  srai         ra, a7, 11
                  sb           t2, -11(a3)
                  lb           a0, 13(a3)
                  slt          s4, t4, a4
                  lb           s0, -1(a3)
                  srl          t4, s4, s3
                  sb           t1, -14(a3)
                  sb           s1, 9(a3)
                  lbu          a5, 12(a3)
                  sb           s1, 1(a3)
                  srl          s8, tp, a3
                  slt          a1, sp, a4
                  nop
                  sh           t3, 16(a3)
                  lb           s7, 3(a3)
                  lbu          s0, 11(a3) #end riscv_load_store_rand_instr_stream_2
                  la           gp, region_0+1441 #start riscv_load_store_rand_instr_stream_3
                  srai         t5, s1, 17
                  srli         t2, s8, 9
                  sb           s5, -1168(gp)
                  lbu          t5, -400(gp)
                  and          s4, ra, s1
                  and          a3, a7, s6
                  sh           zero, -1439(gp)
                  sh           s6, 157(gp)
                  add          tp, gp, s10
                  sra          s4, t2, s10
                  sltu         t3, s1, s1
                  sltu         s8, s8, s5
                  lb           s10, -453(gp)
                  lui          t4, 113914
                  lb           s10, -555(gp)
                  lhu          t1, 67(gp)
                  lbu          t2, -1353(gp)
                  slti         t0, s0, 1177
                  lh           t2, -387(gp)
                  sb           t4, -1014(gp)
                  lhu          s4, -1419(gp)
                  sltu         s11, a2, t0
                  auipc        s3, 639845
                  lbu          a4, -570(gp)
                  lbu          s4, -794(gp)
                  xor          s4, t3, t5
                  sll          t1, t0, a3
                  ori          t1, a3, -267
                  lb           a0, -1256(gp)
                  and          s4, s0, t3
                  lhu          s0, -695(gp)
                  lbu          t1, -1358(gp)
                  lw           s5, 295(gp)
                  xor          t2, a7, s5
                  sb           zero, -1228(gp)
                  nop
                  xor          s10, gp, zero
                  lui          a1, 825279
                  sub          t1, gp, s9
                  nop
                  lb           zero, 138(gp)
                  lui          a4, 96226
                  sb           t3, -12(gp)
                  lbu          a4, -850(gp)
                  addi         t2, t1, -352
                  or           a3, s7, a7
                  slli         ra, s10, 31
                  sb           t2, -1316(gp)
                  or           s11, a1, sp
                  sh           a2, -1015(gp)
                  sh           a5, -77(gp)
                  sltiu        a1, t5, -833
                  lb           t6, -402(gp)
                  lbu          a1, 252(gp) #end riscv_load_store_rand_instr_stream_3
                  la           a4, region_1+1441 #start riscv_load_store_rand_instr_stream_0
                  add          a6, s2, zero
                  lui          s3, 611976
                  sltiu        a3, s2, -953
                  ori          a0, a2, 1742
                  sb           s4, -189(a4)
                  lhu          s10, 21(a4)
                  lb           a0, -162(a4)
                  srli         a1, sp, 24
                  sltu         t4, s9, s10
                  addi         t4, a3, 1624
                  lh           s1, -127(a4)
                  lb           s7, -31(a4)
                  slli         a7, a3, 27
                  sb           s9, -140(a4)
                  srl          s3, s0, t4
                  sra          zero, gp, a1
                  xor          t0, t1, ra
                  lbu          s0, 124(a4)
                  slt          t5, t1, t2
                  sltu         s1, s1, t6
                  lb           t4, 194(a4)
                  lb           t0, -98(a4)
                  lh           a3, -165(a4)
                  lbu          s3, -40(a4)
                  srai         s0, a5, 24
                  lb           s8, -206(a4)
                  add          a6, tp, sp
                  lb           a3, 230(a4)
                  sb           tp, 119(a4)
                  sw           s6, -141(a4)
                  lui          s10, 21573
                  andi         s6, s5, 1268
                  add          a3, a2, a5
                  auipc        t1, 147014
                  slt          gp, s10, t3
                  lh           ra, -43(a4)
                  sh           s7, 105(a4)
                  lbu          a6, -192(a4)
                  sb           s1, -56(a4)
                  xori         t1, zero, -1081
                  sra          zero, sp, t6
                  xor          a5, sp, s9
                  sub          s1, s2, a3
                  sb           zero, -155(a4)
                  lb           t3, -46(a4)
                  lbu          s4, 168(a4)
                  lh           s4, 45(a4)
                  sltiu        s10, s1, 1034
                  srl          s2, a4, t1
                  slli         s11, a0, 24
                  auipc        s7, 1022735
                  lh           a3, -79(a4) #end riscv_load_store_rand_instr_stream_0
                  la           gp, region_1+1860 #start riscv_load_store_rand_instr_stream_1
                  lb           t5, -15(gp)
                  lb           s11, -191(gp)
                  lhu          s4, -114(gp)
                  sltu         t6, s6, s9
                  lbu          t5, 73(gp)
                  sb           s0, -159(gp)
                  and          a6, s4, s3
                  sb           s2, 64(gp)
                  andi         t0, s4, 1378
                  lbu          zero, 118(gp)
                  lbu          s6, -62(gp)
                  or           a6, a6, s3
                  lui          a5, 944963
                  lb           s2, -195(gp)
                  lbu          a4, 30(gp)
                  andi         zero, a1, 685
                  or           s5, a3, gp
                  nop
                  nop
                  ori          tp, a4, 997
                  auipc        a3, 118396
                  sltu         t0, a4, a6
                  slli         s7, s0, 28
                  lb           s6, -179(gp)
                  sll          a3, a7, s2
                  ori          a3, t0, -478
                  ori          s5, s6, -836
                  lb           a1, 69(gp)
                  lw           t3, -208(gp)
                  sb           t6, -240(gp)
                  sra          s3, s7, t3
                  lh           a4, -230(gp)
                  lbu          a5, -6(gp)
                  srai         t6, s6, 3
                  srai         a0, s9, 11
                  sb           ra, -222(gp)
                  lbu          t0, -17(gp)
                  lh           a4, 70(gp)
                  lh           s8, -110(gp)
                  lw           t1, 104(gp)
                  srai         t1, ra, 5
                  auipc        t5, 788090
                  sll          ra, tp, t6
                  lbu          a5, 111(gp)
                  srai         tp, s7, 27
                  sb           tp, -237(gp)
                  sb           s2, 95(gp)
                  lb           t3, 85(gp)
                  auipc        s6, 947385
                  sltiu        s4, s8, 618
                  sub          s8, a3, s3
                  sb           zero, 3(gp) #end riscv_load_store_rand_instr_stream_1
                  ori          a6, s2, 289
                  beq          a4, t1, 20f
                  ori          s1, s11, 434
                  andi         gp, t4, 1296
                  slli         s10, t6, 6
                  nop
                  bltu         s5, ra, 8f
                  bltu         s2, s3, 25f
8:                auipc        s1, 244782
                  lui          t4, 92329
                  sra          t5, a6, t5
                  auipc        a5, 346703
                  lui          a0, 219155
                  add          s6, t1, a5
                  slli         a1, t1, 3
                  bltu         gp, s9, 24f
                  blt          tp, s11, 29f
                  and          t4, a2, a5
                  bge          s2, s0, 38f
                  srl          a1, s8, t6
20:               sltu         t1, t0, t1
                  auipc        t4, 788083
                  andi         zero, a7, 176
                  add          zero, a6, s3
24:               bltu         sp, a5, 32f
25:               xori         t4, t6, 270
                  sub          s1, t4, a7
                  slli         ra, sp, 14
                  sub          zero, a0, s6
29:               blt          s7, gp, 44f
                  addi         a1, tp, 616
                  add          s0, t5, s8
32:               srl          a0, s0, a5
                  or           t3, a6, s7
                  add          t2, s4, gp
                  xor          ra, gp, s1
                  or           a4, s10, a7
                  sub          a7, s10, a7
38:               srli         s1, s7, 28
                  sltiu        s7, s9, -655
                  blt          tp, t2, 55f
                  blt          s0, t6, 47f
                  beq          a7, t0, 48f
                  bge          s6, t5, 54f
44:               andi         a5, s3, 1682
                  ori          s10, t4, -142
                  xori         s8, a2, 1117
47:               bge          s4, s7, 58f
48:               slti         s3, a6, -1986
                  blt          s7, t2, 56f
                  blt          s3, a5, 60f
                  and          gp, s8, t2
                  sltu         t5, a6, t2
                  nop
54:               sll          a1, a4, s0
55:               and          zero, s1, a1
56:               sll          s0, s11, a0
                  auipc        a7, 322489
58:               addi         a6, a3, 1732
                  add          s1, s4, a5
60:               slti         t6, a1, -1935
                  sltiu        a3, t4, -521
                  srli         t5, s0, 31
                  sll          t3, s10, s11
                  slt          tp, a6, a4
                  addi         a6, t1, 615
                  bge          s11, s0, 73f
                  addi         a1, s3, 1080
                  bltu         s4, gp, 81f
                  slt          a7, t1, t4
                  bgeu         t1, a1, 77f
                  blt          s5, a2, 81f
                  lui          t3, 918227
73:               ori          a1, s8, 1642
                  ori          t0, gp, -1193
                  sltiu        a3, s6, -735
                  blt          s9, s2, 77f
77:               sub          s7, t1, t2
                  auipc        s11, 857677
                  ori          t0, a1, 105
                  bge          t3, a7, 92f
81:               nop
                  beq          s7, s11, 95f
                  nop
                  bge          t4, a5, 89f
                  slti         t5, zero, -478
                  andi         a5, s4, 687
                  sll          s11, tp, zero
                  auipc        tp, 260906
89:               sltu         s11, s0, s10
                  auipc        ra, 228486
                  andi         s5, t3, 489
92:               blt          a6, a1, 96f
                  bne          s1, sp, 98f
                  add          a7, s11, t2
95:               bne          s4, s7, 106f
96:               lui          t6, 1019951
                  xor          a5, a1, t4
98:               blt          t3, s7, 107f
                  srli         a5, a5, 27
                  add          s7, a4, s1
                  nop
                  srai         s2, s9, 9
                  srai         t2, s2, 30
                  sltiu        a5, t4, -1438
                  bne          s5, t0, 111f
106:              andi         a6, a1, -563
107:              srai         s0, s4, 0
                  srl          t5, a0, s5
                  add          t0, a6, t2
                  srai         s2, gp, 28
111:              sltiu        a7, t6, 1874
                  blt          s11, s0, 119f
                  sltu         s5, a4, a7
                  beq          s11, a2, 117f
                  auipc        s0, 573925
                  slti         s7, s3, -1610
117:              bne          ra, a5, 128f
                  xori         a4, zero, -1854
119:              sltiu        a3, s0, 377
                  xor          s1, a2, a3
                  blt          s8, gp, 136f
                  lui          a1, 952271
                  sra          t5, s0, a2
                  add          s11, s11, s4
                  slt          t1, t4, s3
                  bltu         a1, s1, 141f
                  add          a7, a0, s3
128:              bne          s1, s0, 132f
                  blt          s7, t2, 137f
                  add          s11, a5, a1
                  addi         t5, a1, 1060
132:              bltu         t6, s1, 137f
                  add          s0, ra, a4
                  sltu         t1, a2, s4
                  sra          s1, s11, a3
136:              andi         ra, s5, 1664
137:              slt          s0, a2, tp
                  bne          a7, a5, 148f
                  andi         t6, s10, 600
                  srai         s8, s9, 11
141:              or           s2, t2, a1
                  srl          s8, a7, a4
                  bne          t2, t4, 149f
                  or           s10, s2, ra
                  sltiu        s7, a6, 1010
                  auipc        s3, 387261
                  slti         s3, s3, -867
148:              beq          t6, zero, 157f
149:              srai         s5, t5, 1
                  xor          a4, tp, t0
                  srli         t2, t4, 16
                  bgeu         sp, t2, 171f
                  xor          a3, a0, s5
                  bne          a4, s0, 166f
                  bne          t4, s6, 168f
                  sll          gp, a6, s11
157:              sra          t2, a0, t1
                  slt          s11, s3, ra
                  or           t4, s4, t3
                  nop
                  slt          a1, a2, t5
                  slti         s1, s9, -305
                  sltu         s10, a6, s5
                  beq          s8, zero, 173f
                  srai         t0, a4, 29
166:              beq          s8, s8, 176f
                  sltiu        s3, a0, -451
168:              bgeu         s10, gp, 170f
                  slt          t3, s4, t6
170:              srai         t2, ra, 9
171:              slti         s2, s1, -1989
                  xori         s0, a3, 490
173:              bltu         s2, a6, 174f
174:              or           a3, s6, gp
                  beq          t1, zero, 182f
176:              add          t0, t5, t2
                  sra          t2, s1, a7
                  bgeu         t5, ra, 196f
                  and          t2, s3, zero
                  ori          a5, t3, 795
                  bltu         sp, s6, 186f
182:              xori         t5, tp, 614
                  srai         a0, s3, 10
                  srl          a0, s2, a5
                  auipc        s5, 44798
186:              xori         a5, s8, -612
                  add          a6, t0, s6
                  sll          t0, a6, s3
                  nop
                  auipc        a6, 443583
                  bgeu         s0, s1, 198f
                  and          s1, a2, a4
                  bne          t2, a6, 204f
                  bge          t4, t5, 201f
                  xori         s3, a7, -1914
196:              blt          a0, ra, 202f
                  ori          t2, s3, 1315
198:              sll          zero, tp, a1
                  xor          tp, ra, t1
                  srai         t5, t2, 7
201:              nop
202:              slt          a6, s4, t2
                  srl          tp, s1, s4
204:              sltu         s6, a3, t2
                  slti         t4, s10, 276
                  sll          s3, s6, s2
                  auipc        t5, 145994
                  bge          a1, t1, 214f
                  and          s11, a6, t5
                  or           s2, a7, s10
                  slti         t4, a3, 587
                  blt          s9, s2, 219f
                  bltu         t2, s10, 226f
214:              bge          t0, a2, 234f
                  sub          t1, s1, s11
                  blt          t0, t0, 227f
                  srli         a4, t2, 23
                  sra          a4, t5, a2
219:              addi         t1, t2, 1159
                  add          a6, a5, a1
                  bgeu         s3, a6, 224f
                  blt          s4, a4, 235f
                  sll          a6, t4, t6
224:              add          a4, s7, sp
                  slt          s7, s3, s4
226:              xor          s5, zero, s9
227:              srli         s0, s9, 8
                  xori         s11, s10, 236
                  and          s10, a3, s7
                  addi         s11, a0, -703
                  addi         ra, s1, 1650
                  or           t0, a4, s4
                  and          a4, s2, t4
234:              xori         t5, a7, -540
235:              or           s5, a4, a4
                  sltu         t5, t3, t2
                  sltu         s3, t1, tp
                  slt          ra, a0, t4
                  sra          t6, s6, t5
                  sltu         zero, a4, zero
                  sltu         a1, a6, s0
                  slti         a4, a2, -834
                  or           a4, s11, a5
                  slt          t1, s2, s4
                  blt          a6, tp, 256f
                  lui          t4, 363136
                  and          a3, t5, t2
                  or           s7, t2, a3
                  auipc        a5, 377771
                  nop
                  bne          ra, a2, 261f
                  sra          a1, s2, s4
                  auipc        a6, 961779
                  srai         s11, a2, 23
                  sra          a4, a5, t1
256:              blt          sp, s2, 266f
                  srli         s6, a7, 12
                  beq          a7, t3, 271f
                  sll          t6, zero, t2
                  sltu         s0, s6, t0
261:              xori         s4, s4, -2021
                  sub          s0, ra, s6
                  add          s10, a6, t0
                  sltu         t1, gp, s3
                  slt          s7, gp, a3
266:              srai         s10, a0, 28
                  bltu         s8, t0, 271f
                  srai         a4, s6, 24
                  bltu         s4, t6, 274f
                  nop
271:              sra          a6, s10, a6
                  srl          a5, t6, s4
                  slli         s2, s11, 22
274:              auipc        ra, 848654
                  beq          t1, s8, 278f
                  xori         s0, s10, -525
                  sll          s3, a0, s10
278:              nop
                  xor          a1, t2, s8
                  add          ra, a0, s5
                  srai         t4, tp, 5
                  xor          s4, s2, s8
                  sra          zero, gp, t6
                  sltiu        t4, s9, 1036
                  xori         s0, s4, -989
                  slti         a6, s6, -1659
                  andi         s2, zero, 1194
                  xor          s2, t6, gp
                  beq          s3, s5, 297f
                  nop
                  blt          a2, a1, 304f
                  srl          s10, s4, s8
                  sra          t1, a6, a4
                  and          a1, a0, s6
                  bltu         s7, s2, 315f
                  nop
297:              bge          t3, ra, 303f
                  bltu         s9, zero, 309f
                  bge          a4, ra, 308f
                  bge          a4, t3, 315f
                  blt          t4, tp, 308f
                  slt          t1, s6, s3
303:              sra          t2, tp, s3
304:              slti         s4, tp, -1158
                  slli         t2, s10, 18
                  xori         t3, a7, 1952
                  bgeu         t5, t4, 308f
308:              slti         s3, s2, -90
309:              sub          ra, a3, t1
                  xori         a3, gp, 51
                  ori          gp, tp, -1794
                  srl          zero, t0, s10
                  sll          a5, tp, zero
                  bltu         a1, a0, 327f
315:              nop
                  xor          t6, s3, t6
                  nop
                  lui          s4, 848522
                  bne          a4, s7, 325f
                  bge          ra, a6, 327f
                  sll          s3, t2, t5
                  sll          s10, t1, s9
                  srl          s4, ra, s6
                  srl          a7, a2, gp
325:              addi         t6, gp, 396
                  andi         zero, t5, -812
327:              add          s6, t6, t3
                  nop
                  lui          a3, 378384
                  sub          s10, tp, zero
                  slti         t6, t1, -1048
                  sll          t0, zero, s10
                  add          a6, a6, t2
                  srli         s8, s6, 11
                  ori          s10, a5, 399
                  auipc        tp, 393409
                  xor          gp, s4, zero
                  nop
                  sltiu        ra, tp, -753
                  bne          a4, a5, 358f
                  nop
                  or           s1, s11, a0
                  slti         tp, s11, 1743
                  sra          s0, a5, a5
                  bgeu         t5, a4, 360f
                  bgeu         a2, s11, 355f
                  bne          a7, s11, 353f
                  and          s6, t0, gp
                  sub          t3, s11, a4
                  xori         a7, s2, 1653
                  slli         s6, t0, 22
                  srli         t0, a5, 12
353:              bge          s1, t2, 372f
                  andi         t4, t0, -1345
355:              ori          a5, s11, -1398
                  auipc        s3, 262001
                  srl          t3, a3, a1
358:              blt          s8, a5, 365f
                  bne          gp, s0, 370f
360:              srl          s11, zero, s2
                  bge          s6, gp, 373f
                  lui          a5, 1021265
                  nop
                  blt          gp, s2, 366f
365:              xor          s6, s0, s3
366:              blt          t3, s2, 373f
                  beq          t0, ra, 372f
                  sub          s7, zero, ra
                  beq          a1, s1, 387f
370:              sltiu        s3, t2, -1289
                  bne          gp, a4, 381f
372:              srl          t3, a1, t6
373:              bne          s8, s4, 382f
                  andi         s10, t3, 806
                  bne          a0, s2, 378f
                  bgeu         s11, s0, 378f
                  sltu         a5, sp, a1
378:              srli         t4, a4, 11
                  or           a5, t5, gp
                  srai         a3, a4, 25
381:              srai         s2, a0, 25
382:              sub          s7, a4, s4
                  andi         s6, a7, -744
                  ori          s4, s3, 572
                  bltu         t2, t1, 393f
                  srli         s0, s3, 3
387:              bne          a5, a7, 394f
                  bgeu         s2, a7, 401f
                  srai         s1, t2, 23
                  slti         a7, a0, 92
                  bne          s9, s6, 410f
                  andi         tp, s10, 134
393:              bltu         s4, tp, 403f
394:              slti         s1, t4, 1906
                  sll          a4, s7, s9
                  and          s1, s4, s11
                  bltu         ra, sp, 417f
                  srai         s0, a6, 0
                  slti         a4, s2, 939
                  ori          a7, sp, -389
401:              srl          ra, a3, s2
                  sra          a7, s8, a6
403:              slti         t3, t6, -656
                  slt          a0, t0, a1
                  and          s7, sp, s4
                  srl          t3, tp, s6
                  addi         s2, t2, -1824
                  bgeu         s3, t5, 412f
                  bgeu         t5, a4, 424f
410:              bne          a5, s7, 416f
                  srli         a0, s4, 23
412:              bgeu         a6, ra, 418f
                  and          gp, s9, t3
                  bge          s5, s5, 429f
                  xor          s0, s5, s2
416:              auipc        tp, 948513
417:              and          t4, s5, t1
418:              auipc        t6, 94089
                  srai         a7, a2, 26
                  ori          s6, s11, -759
                  and          s8, ra, s11
                  blt          s9, s10, 429f
                  bne          s7, a3, 428f
424:              xori         s2, s4, -1476
                  addi         t5, s11, 371
                  sltu         s1, t6, a7
                  bge          t4, s4, 438f
428:              sub          s10, a0, s8
429:              sll          a6, a3, a6
                  sltu         s8, s11, t2
                  ori          t4, s9, -466
                  bltu         s9, s5, 439f
                  addi         s4, sp, -2003
                  lui          a5, 227153
                  sub          s6, s9, t4
                  sra          a1, s1, t6
                  sltiu        t6, ra, 1746
438:              bltu         s6, s10, 444f
439:              bgeu         t3, s2, 452f
                  srl          s11, a2, a1
                  srli         t5, t3, 21
                  addi         a7, t3, -824
                  slli         zero, tp, 15
444:              add          s7, a7, s10
                  slt          a7, s9, a7
                  addi         s3, t3, 630
                  bge          t6, a1, 458f
                  and          s10, a1, ra
                  blt          s1, s3, 456f
                  sll          s4, ra, s0
                  bltu         a6, ra, 462f
452:              srli         s3, tp, 23
                  ori          gp, t2, -1357
                  lui          a3, 492817
                  srai         t3, sp, 18
456:              slt          s11, s10, a6
                  bgeu         gp, s11, 469f
458:              srai         s4, s8, 7
                  ori          s3, s5, -1038
                  xor          s5, gp, t1
                  xori         t6, a1, 59
462:              srai         t6, s4, 18
                  addi         gp, s11, 422
                  xor          a0, s11, tp
                  bgeu         t2, s10, 466f
466:              lui          s3, 83332
                  bltu         t4, s4, 476f
                  xori         s6, a7, 1231
469:              blt          s6, ra, 474f
                  xor          t3, s10, s11
                  sra          s7, zero, zero
                  sra          gp, tp, t6
                  srl          t1, s6, zero
474:              lui          ra, 408624
                  beq          a3, t0, 488f
476:              bgeu         a6, s9, 480f
                  or           s11, s8, s6
                  xori         gp, s1, 1347
                  beq          s11, a0, 497f
480:              nop
                  or           gp, s10, t5
                  andi         zero, s9, 340
                  and          t4, t1, s8
                  addi         a1, s4, 643
                  or           s2, a2, s1
                  slli         zero, s2, 0
                  add          s8, s10, t4
488:              and          t4, a5, t3
                  add          ra, t6, t2
                  slt          ra, s6, ra
                  addi         a4, s9, 645
                  slt          s11, tp, a5
                  slli         s5, t5, 18
                  sub          a1, zero, tp
                  add          a5, s8, s0
                  slli         a6, zero, 12
497:              xor          s7, s10, a6
                  and          ra, t1, s11
                  bge          t2, s9, 510f
                  xor          s5, a2, s1
                  lui          t2, 971169
                  bne          a4, a2, 509f
                  bge          s10, s11, 510f
                  nop
                  andi         t1, a3, 891
                  add          s7, zero, sp
                  sub          tp, s4, a4
                  slt          t5, gp, a7
509:              sll          s1, gp, s8
510:              slli         s5, s9, 4
                  slti         s4, s0, 1199
                  add          gp, t0, t4
                  lw           tp, 4(s9)
                  sltiu        t6, a2, -730
                  addi         s9, s9, 32
                  nop
731:              addi x31, x4, 1
731:              jalr x31, x31, 0
sub_3:            slli         s3, s11, 31
                  sll          t4, t2, a2
                  bltu         a3, s9, sub_3_stack_p
                  or           t2, tp, zero
sub_3_stack_p:    addi         s9, s9, -32
                  sltiu        t6, s4, 498
                  xori         gp, s1, -149
                  srai         zero, s1, 26
                  sw           tp, 4(s9)
                  slti         a4, a1, 936
                  lui          ra, 608006
                  sltiu        gp, a0, 1854
                  nop
                  la           t2, region_1+1503 #start riscv_load_store_rand_instr_stream_1
                  srl          s4, s7, s5
                  lb           s5, 140(t2)
                  sltiu        gp, a0, 1677
                  lbu          a0, 180(t2)
                  slli         t4, s2, 4
                  sb           s9, -142(t2)
                  lh           s0, -13(t2)
                  lhu          ra, 23(t2)
                  xor          s1, t3, ra
                  lb           ra, 7(t2)
                  lbu          ra, -46(t2)
                  and          t3, a2, s1
                  xor          t1, tp, a0
                  auipc        t5, 682825
                  lhu          s1, 237(t2)
                  sb           a2, -112(t2)
                  nop
                  auipc        s3, 587603
                  and          t5, s1, tp
                  addi         s8, s4, -520
                  lhu          s7, 149(t2)
                  auipc        s3, 1047960
                  lui          a6, 961113
                  nop
                  addi         a4, s10, 1427
                  andi         t4, a6, -1320
                  slli         s5, s1, 29
                  lbu          t4, 127(t2)
                  sltu         tp, s9, s8
                  nop
                  sb           s1, -106(t2)
                  add          t5, t2, t5
                  srli         t3, zero, 3
                  lb           s2, -76(t2)
                  andi         ra, a0, 2021
                  lb           t4, 147(t2)
                  auipc        s3, 747501
                  sb           a4, -22(t2)
                  lbu          a4, 118(t2)
                  slti         t6, t0, 814
                  sltiu        ra, a1, -1312
                  lb           ra, 104(t2)
                  sb           a3, 84(t2)
                  sb           a7, 174(t2)
                  srai         s10, gp, 3
                  lbu          t5, 10(t2)
                  and          s2, s11, a0
                  sh           s6, -81(t2) #end riscv_load_store_rand_instr_stream_1
                  slti         s3, a3, -363
                  bge          s5, t5, 10f
                  and          t1, t4, t6
                  sltu         s2, t3, a1
                  bltu         s7, s10, 6f
                  sub          a3, s9, s8
6:                beq          gp, s6, 17f
                  sub          s2, a4, s6
                  slt          t4, t6, s6
                  sll          zero, t4, s10
10:               xor          a7, t6, a3
                  sll          a0, a6, t3
                  slt          s10, s10, s11
                  add          s11, t4, s1
                  bge          t0, tp, 25f
                  beq          t2, s6, 35f
                  slt          s0, a2, sp
17:               srli         s5, s10, 7
                  slti         a5, s6, 1493
                  beq          t2, s6, 39f
                  ori          s6, s2, -1094
                  nop
                  and          a4, a2, s11
                  blt          a6, s3, 42f
                  or           t0, a0, s5
25:               srl          s10, a1, a2
                  srl          t0, s2, s1
                  sra          a5, zero, zero
                  or           a3, sp, s7
                  or           s0, zero, a5
                  sll          t2, s6, t6
                  ori          t1, t4, 1933
                  lui          a6, 394650
                  sub          a0, s9, ra
                  beq          s0, s4, 39f
35:               ori          a3, t1, 1085
                  sll          t1, a0, a3
                  bgeu         s3, sp, 53f
                  bge          s1, t5, 51f
39:               slli         zero, s8, 31
                  sll          tp, gp, a7
                  and          s5, t6, s1
42:               xori         s1, s0, 540
                  xori         a5, a5, 1841
                  slti         a3, s3, -967
                  sra          a5, s9, s10
                  ori          s4, a6, 1883
                  srl          t0, s4, a7
                  sub          a6, a6, ra
                  auipc        s7, 316246
                  beq          s9, t6, 65f
51:               sll          gp, a1, s6
                  bgeu         s1, s7, 60f
53:               bgeu         a0, t2, 54f
54:               sub          a6, a4, a1
                  srli         gp, t0, 30
                  sltiu        gp, s0, 1904
                  slti         a1, s6, -224
                  slli         a0, s11, 9
                  ori          s2, sp, 1299
60:               sltiu        zero, sp, -1292
                  addi         t0, t0, -808
                  slli         s5, t0, 21
                  srl          s4, t2, tp
                  add          s11, s4, s0
65:               blt          a7, s3, 83f
                  ori          s3, a1, 491
                  ori          t3, t6, 1247
                  add          t5, zero, s1
                  or           t5, t3, zero
                  nop
                  srai         s3, s5, 20
                  blt          tp, t6, 87f
                  slti         tp, a3, 1025
                  bltu         s3, tp, 81f
                  xor          s3, s9, a2
                  bgeu         t6, s5, 84f
                  srli         s10, s2, 28
                  ori          t4, s7, 740
                  sll          s10, s1, s1
                  sll          tp, zero, s9
81:               lui          t4, 661785
                  srai         ra, t2, 31
83:               srli         t4, a3, 18
84:               addi         ra, t0, -1065
                  bge          t6, sp, 101f
                  sub          t4, t6, a6
87:               slti         a7, ra, 888
                  blt          zero, a2, 93f
                  xor          a5, a5, ra
                  sltiu        s10, a0, 1908
                  xori         a1, ra, 1404
                  nop
93:               andi         s7, ra, 20
                  srai         s1, zero, 20
                  slt          s7, a5, s1
                  andi         s11, a4, -229
                  xor          s1, gp, a2
                  sra          t1, a6, s3
                  auipc        t3, 730716
                  srli         tp, s4, 24
101:              srl          s10, a4, a4
                  add          t2, sp, s8
                  ori          t0, sp, 523
                  sub          s7, a1, sp
                  srai         a6, s3, 6
                  sltiu        t0, zero, -1711
                  srl          s2, t6, t4
                  ori          a1, t4, 359
                  lui          t6, 600716
                  nop
                  auipc        a5, 445765
                  sub          gp, t0, tp
                  ori          a6, gp, 1752
                  bltu         s7, a1, 127f
                  bltu         s3, t4, 133f
                  slt          a1, t4, s0
                  slti         s5, t2, -1669
                  sll          s1, s5, s4
                  slti         s3, s7, 1180
                  ori          s8, gp, 1774
                  bltu         a4, s11, 128f
                  ori          s7, s8, 118
                  slli         a0, s1, 26
                  addi         s5, ra, 1947
                  sltiu        s11, s0, 1786
                  sll          a5, s3, t1
127:              lui          zero, 333709
128:              srli         s7, s8, 26
                  la           t2, region_0+241 #start riscv_load_store_rand_instr_stream_0
                  lbu          s10, 1092(t2)
                  sb           s3, 1189(t2)
                  slt          t1, sp, gp
                  srai         a6, s7, 3
                  xori         a5, t6, -783
                  slli         s4, tp, 30
                  srli         s6, t1, 21
                  srai         t5, a2, 20
                  xor          s6, t3, s11
                  lb           a4, 834(t2)
                  lb           a3, 533(t2)
                  lh           a4, 1101(t2)
                  sra          t4, a4, gp
                  sltu         s6, a5, a1
                  sll          s4, s3, s9
                  srli         t4, t2, 5
                  sltu         a4, s8, s11
                  slti         zero, sp, -1894
                  sltiu        s2, a1, 1873
                  sh           a2, 589(t2)
                  xor          t6, s4, tp
                  addi         s1, s6, 1139
                  sra          s1, t3, gp
                  lbu          t3, 1542(t2)
                  slt          a6, s9, a4
                  sh           t3, 1095(t2)
                  sb           s9, 218(t2)
                  lbu          t5, 304(t2)
                  sra          s0, t3, t5
                  addi         s10, a6, 891
                  srl          s4, a1, t4
                  sb           s0, -106(t2) #end riscv_load_store_rand_instr_stream_0
                  srl          a6, gp, a6
                  slti         a7, t0, -2003
                  auipc        t6, 444324
                  sra          s7, s11, zero
133:              or           s2, s0, s5
                  bltu         s3, s4, 141f
                  sltu         s5, s0, tp
                  sltiu        tp, s6, 1691
                  srli         ra, s0, 10
                  bltu         t0, t5, 144f
                  bgeu         zero, s8, 142f
                  sra          s1, a1, t5
141:              srai         a3, a2, 31
142:              bltu         a2, s2, 156f
                  nop
144:              xori         a3, t2, -140
                  bge          ra, s11, 160f
                  bne          t6, a1, 162f
                  auipc        s6, 962273
                  srl          gp, t0, a3
                  nop
                  srl          gp, gp, s9
                  sltu         t1, a0, s9
                  slt          a0, s0, t4
                  xori         t3, a2, -1910
                  andi         tp, zero, -978
                  bgeu         t3, s11, 172f
156:              sltu         s0, s1, t1
                  sub          a4, s5, s5
                  or           t5, sp, s3
                  nop
160:              ori          t6, t5, -25
                  lui          t1, 293508
162:              lui          a7, 81864
                  nop
                  xor          tp, s5, a7
                  srai         a7, t6, 1
                  or           t5, t0, s6
                  slt          a5, t5, t3
                  sra          t3, t3, a5
                  andi         a6, a2, 620
                  auipc        t2, 615885
                  andi         t0, s7, 962
172:              andi         t1, s6, 191
                  srli         tp, a3, 1
                  ori          a1, t1, 312
                  srli         t5, tp, 16
                  sra          a7, t0, s7
                  sltu         s6, s11, sp
                  or           s0, t3, s2
                  nop
                  ori          a6, a2, -1023
                  sltiu        t5, a1, 668
                  ori          tp, t3, 1545
                  and          s0, a4, s4
                  sra          a6, t4, t3
                  bne          t4, s4, 194f
                  srl          s6, a1, s5
                  slli         gp, a3, 5
                  sll          s5, sp, s9
                  beq          tp, a0, 196f
                  xori         s7, a5, 1404
                  ori          t3, t4, -1880
                  sltu         a7, a0, s8
                  srai         a0, a7, 12
194:              bltu         zero, a5, 195f
195:              srli         s8, a0, 2
196:              srl          t3, gp, t4
                  ori          a7, s1, 1995
                  addi         a7, t0, 704
                  sltu         a5, s7, s10
                  srai         s5, a4, 11
                  bltu         s1, a3, 206f
                  auipc        s11, 836972
                  sub          s6, tp, a6
                  bltu         s9, zero, 211f
                  blt          s2, a5, 223f
206:              bltu         t1, a6, 215f
                  slli         a4, t1, 28
                  nop
                  blt          a0, a6, 222f
                  addi         a6, t4, -1975
211:              sltu         s2, t0, a1
                  sll          s10, s7, gp
                  srl          a5, t2, s11
                  or           a7, t5, a3
215:              bne          a2, sp, 234f
                  and          s3, s7, a7
                  andi         ra, sp, 628
                  slti         s1, sp, -1451
                  add          s1, a4, a3
                  sll          a3, t5, s5
                  bltu         s11, a4, 241f
222:              bne          s11, t6, 238f
223:              blt          a4, a2, 232f
                  ori          s3, zero, -1025
                  slti         t4, s7, 427
                  bltu         s2, s5, 244f
                  srli         s8, s5, 31
                  bne          t3, t1, 243f
                  srai         ra, a6, 5
                  slli         t3, t2, 7
                  lui          s2, 731843
232:              bltu         t4, s10, 239f
                  addi         s0, s10, 271
234:              srl          a0, s9, gp
                  slt          s1, s10, s3
                  ori          a1, zero, 749
                  beq          zero, s0, 243f
238:              beq          t3, t6, 241f
239:              bge          s5, a1, 247f
                  sub          s1, zero, a5
241:              sra          t6, a3, zero
                  bne          s9, zero, 262f
243:              bgeu         a0, s8, 258f
244:              slli         t1, a0, 6
                  slti         a4, t3, 1322
                  auipc        t6, 577538
247:              srai         t0, ra, 26
                  srai         t3, a1, 12
                  bne          sp, a4, 263f
                  beq          zero, s2, 265f
                  slli         t2, t2, 26
                  srai         s11, t5, 8
                  srli         s10, t1, 26
                  addi         s5, t2, 534
                  srli         a4, s4, 26
                  beq          t3, a4, 261f
                  xori         s3, s5, -1068
258:              xor          s0, t5, s0
                  slli         t3, sp, 6
                  beq          s6, a6, 262f
261:              or           s6, tp, s1
262:              lui          ra, 29550
263:              and          a5, t4, s0
                  bgeu         ra, s9, 265f
265:              lui          s7, 947232
                  srli         gp, s6, 13
                  and          a0, s2, ra
                  xor          s10, s1, s1
                  lw           tp, 4(s9)
                  slti         s0, zero, -813
                  addi         s9, s9, 32
                  slli         a3, ra, 28
368:              addi x10, x4, 0
368:              jalr x10, x10, 0
sub_4:            addi         s9, s9, -12
                  lui          s10, 497032
                  sw           tp, 4(s9)
                  xori         a1, s9, 1425
                  add          t2, t1, a2
                  slli         a3, s8, 29
                  slti         t6, s4, 800
                  slt          t4, ra, s7
                  slti         s5, s8, -2015
                  slt          t3, a2, t4
                  slt          t4, s8, a7
                  xori         gp, s5, -772
                  sub          t2, a4, a5
                  sltiu        zero, a6, 1940
                  addi         a5, t6, 1783
                  xori         a1, t5, 625
sub_4_j7:         jal          tp, sub_5 #jump sub_4 -> sub_5
                  beq          t4, t2, 16f
                  and          a6, t1, t3
                  andi         ra, t4, 442
                  blt          a7, zero, 15f
                  slt          a6, s6, s6
                  bgeu         s1, a2, 7f
                  sub          s8, s4, t2
7:                srai         tp, s7, 2
                  srli         a5, s1, 24
                  slli         t3, s6, 8
                  add          zero, zero, s7
                  beq          s3, t2, 17f
                  slli         zero, s10, 9
                  sltiu        t5, s1, -1566
                  xori         a5, t0, 806
15:               blt          s4, ra, 32f
16:               bltu         t2, sp, 21f
17:               sltiu        t2, s5, -32
                  sll          s0, s11, a5
                  auipc        tp, 400090
                  addi         s6, t5, 1348
21:               srl          s10, tp, ra
                  bgeu         t2, a1, 28f
                  sra          tp, s0, t6
                  addi         t4, a0, -363
                  xori         gp, a4, 227
                  srli         a0, s10, 15
                  or           a6, gp, tp
28:               ori          a0, t5, -1119
                  srli         a7, s8, 16
                  bge          a6, s0, 31f
31:               srl          t0, s5, sp
32:               xori         a0, s3, -1041
                  slti         s2, s7, -719
                  add          a0, tp, s11
                  sltu         zero, t5, s8
                  ori          t1, a6, 676
                  nop
                  lui          t3, 14472
                  sll          a1, s3, a2
                  or           a1, s7, a6
                  beq          s3, ra, 55f
                  xori         s7, t0, -1974
                  xor          s3, s9, s4
                  srai         a7, t0, 8
                  and          t2, t3, s3
                  addi         s0, a1, -526
                  sra          t2, s8, t4
                  slti         gp, a4, 383
                  andi         t6, sp, -1452
                  slt          a0, t6, s4
                  slt          t0, t6, a2
                  bgeu         t3, s5, 63f
                  sra          t5, t3, a0
                  and          gp, a6, s7
55:               beq          t0, ra, 59f
                  srai         t0, s7, 25
                  bge          s5, s5, 66f
                  beq          t6, t0, 61f
59:               slti         t0, s2, 1261
                  slli         s11, s6, 20
61:               bge          t6, a2, 63f
                  slt          s4, s5, t1
63:               xori         gp, t1, -1807
                  addi         s4, s8, -1456
                  sltiu        gp, s8, 1834
66:               lui          s11, 47377
                  sltu         tp, a3, a6
                  auipc        s11, 382137
                  lui          s0, 754680
                  addi         t4, gp, -1581
                  bne          zero, s9, 76f
                  slt          s4, s9, a4
                  sub          a7, s3, s2
                  lui          s1, 629938
                  srli         s3, s11, 3
76:               srai         t4, t5, 8
                  sra          s1, t4, a0
                  srai         s0, a4, 26
                  lw           tp, 4(s9)
                  andi         s10, a5, -959
                  addi         s9, s9, 12
                  nop
100:              addi x3, x4, 0
100:              jalr x3, x3, 0
sub_9:            addi         s9, s9, -56
                  srli         s3, t5, 7
                  sw           tp, 4(s9)
                  srl          t0, a6, gp
                  sltu         t5, t2, s5
                  la           ra, region_0+1734 #start riscv_load_store_rand_instr_stream_16
                  sltu         s11, a1, zero
                  or           t5, s1, t1
                  addi         t0, t4, 1448
                  lbu          s5, -105(ra)
                  add          a1, t6, a2
                  lbu          s8, -4(ra)
                  add          zero, t3, a7
                  sltiu        a3, s7, -174
                  nop
                  slt          gp, s7, a6
                  srai         s5, t0, 12
                  and          a1, a6, gp
                  srai         a3, s6, 3
                  lbu          t2, -1349(ra)
                  or           zero, t0, s6
                  sb           ra, -1093(ra)
                  ori          t0, s0, -537
                  xor          t6, a6, s2
                  lbu          a7, -1664(ra)
                  xori         a4, s7, -1078
                  sb           a2, -655(ra)
                  or           a5, s6, t5
                  sb           a7, -1093(ra)
                  srli         s4, tp, 20
                  sb           t4, -1601(ra)
                  lhu          s11, -1380(ra)
                  lb           t6, -140(ra)
                  lui          a1, 518300
                  sltiu        a4, t5, -265
                  lbu          s8, -487(ra)
                  lbu          t1, -631(ra)
                  sh           a1, -822(ra)
                  lbu          s5, -1098(ra)
                  slti         t0, gp, 1448
                  slti         s10, t4, -1054
                  lbu          a1, 148(ra)
                  sb           s6, -899(ra)
                  sltu         s11, s5, t3
                  lhu          tp, -1092(ra)
                  sltu         s6, t2, s4
                  nop
                  lb           a3, -1279(ra)
                  lb           s1, -525(ra)
                  addi         tp, t2, -63
                  sub          s10, a0, s0
                  sw           s4, -1494(ra)
                  sra          s3, s8, t4
                  andi         s3, a4, 1668
                  lbu          a3, -1525(ra)
                  lbu          t6, -571(ra)
                  slt          tp, sp, s4
                  sw           sp, -1214(ra)
                  sb           t5, -375(ra)
                  sb           a4, -534(ra) #end riscv_load_store_rand_instr_stream_16
                  la           a6, region_1+665 #start riscv_load_store_rand_instr_stream_19
                  sb           s0, 75(a6)
                  lbu          s10, -253(a6)
                  sb           tp, 80(a6)
                  slt          s1, sp, tp
                  xor          s11, s4, s2
                  lw           a5, 15(a6)
                  sltu         s6, a3, a3
                  addi         a0, s10, -255
                  lbu          s7, 154(a6)
                  lh           a1, 115(a6)
                  and          t4, s6, a0
                  srli         s7, s11, 25
                  slli         s3, t1, 7
                  or           s1, s3, a0
                  lh           gp, -31(a6)
                  sub          s2, a0, a2
                  slti         a7, a0, 1977
                  lh           s0, -29(a6)
                  srai         a7, s6, 4
                  ori          s3, s2, -1161
                  slt          s6, t5, s0
                  nop
                  lbu          t5, 28(a6)
                  sb           s5, 46(a6)
                  lh           t1, 121(a6)
                  lbu          s8, 75(a6)
                  lbu          s1, -110(a6) #end riscv_load_store_rand_instr_stream_19
                  la           a5, region_0+410 #start riscv_load_store_rand_instr_stream_20
                  lhu          ra, -226(a5)
                  add          s10, t2, s11
                  lbu          t3, -38(a5)
                  addi         s3, s8, -794
                  lhu          s0, -188(a5)
                  srai         t3, s6, 2
                  slt          gp, s5, s10
                  lhu          t4, -148(a5)
                  sb           a7, -37(a5)
                  srli         s2, t3, 11
                  ori          a1, zero, -77
                  lb           t0, -147(a5)
                  nop
                  sltiu        s1, t3, 211
                  slli         s2, s2, 12
                  sra          a7, s6, a3
                  lhu          t3, 222(a5)
                  sb           s4, 165(a5)
                  sb           t6, -135(a5)
                  and          t2, a0, t3
                  srli         t1, t0, 30
                  lb           s11, -117(a5)
                  lui          s3, 575742
                  or           s4, t5, s3
                  slt          a1, s7, ra
                  slt          t6, s8, a4
                  srl          a1, s7, s6
                  sb           gp, 155(a5)
                  sltiu        s6, a5, 750
                  lui          a4, 267192
                  sb           s11, 99(a5)
                  and          s7, s0, s3
                  or           a7, t4, s7
                  slti         t6, t6, 823
                  lbu          s11, 5(a5)
                  lb           ra, -123(a5)
                  xor          a7, s6, a2
                  sra          a1, t2, zero
                  sltu         zero, sp, s10
                  addi         s5, zero, -492
                  sb           t1, -200(a5)
                  srli         s2, a4, 19
                  lh           t6, 38(a5) #end riscv_load_store_rand_instr_stream_20
                  la           s1, region_1+665 #start riscv_load_store_rand_instr_stream_13
                  andi         t2, s1, 1788
                  lhu          s11, 7(s1)
                  sw           s8, -5(s1)
                  slti         t2, gp, -508
                  auipc        gp, 976093
                  sb           a0, 16(s1)
                  srli         s6, a4, 19
                  sb           ra, 11(s1)
                  slti         s0, zero, -1975
                  ori          s7, ra, -1477
                  sb           a2, -12(s1)
                  lb           s5, 8(s1)
                  and          s11, a5, s6
                  lh           a4, 7(s1)
                  sltu         a3, t0, a7
                  lh           a6, -9(s1)
                  xori         s6, s9, -1122
                  lb           s2, -11(s1)
                  sb           s2, 2(s1)
                  sub          s0, a4, ra
                  sh           s10, 7(s1)
                  nop
                  sll          t4, gp, s9
                  lbu          a5, 13(s1)
                  sub          t5, t2, gp
                  lui          a6, 710891
                  lb           s5, -5(s1)
                  or           zero, s3, s11
                  and          a3, t1, a4
                  sb           s1, 2(s1)
                  sll          t0, s8, s9
                  slti         zero, a1, -494
                  slli         s4, a0, 9
                  sb           t2, -4(s1)
                  sb           a5, -14(s1)
                  lb           s3, 6(s1)
                  sb           a2, -13(s1)
                  lbu          a6, -11(s1)
                  sltu         s8, t2, s9
                  lb           zero, -10(s1)
                  xor          a7, s0, a6
                  srli         t1, t5, 0
                  slli         t6, gp, 13
                  srli         s0, a0, 7
                  slli         a4, t0, 28
                  auipc        zero, 1016977
                  lbu          a0, -6(s1)
                  sb           s3, -10(s1)
                  lb           a1, -14(s1)
                  sw           a0, -1(s1)
                  slli         zero, s0, 20
                  lbu          s5, 0(s1)
                  lbu          t3, 0(s1)
                  srli         s10, ra, 15
                  lhu          a7, 7(s1)
                  lbu          s2, 1(s1)
                  sltiu        s0, t1, -613
                  lb           tp, 4(s1)
                  add          s4, s4, zero
                  lbu          s6, 9(s1) #end riscv_load_store_rand_instr_stream_13
                  la           s11, region_0+1254 #start riscv_load_store_rand_instr_stream_1
                  andi         s5, t4, 1201
                  lbu          s1, 41(s11)
                  srai         s4, sp, 21
                  srl          s4, a7, s4
                  lb           s3, 31(s11)
                  nop
                  slt          gp, a0, s11
                  lb           a3, -38(s11)
                  sub          a1, sp, s0
                  lui          t0, 458410
                  lh           s8, 20(s11)
                  lh           t0, 60(s11)
                  sb           s5, 61(s11)
                  sw           a7, 30(s11)
                  or           a3, s5, t1
                  sw           t1, -58(s11)
                  add          t0, a0, t2
                  sll          s5, s6, s2
                  lui          zero, 195115
                  auipc        s6, 1046907
                  lb           s1, 27(s11)
                  sll          gp, t6, ra
                  sll          t0, s1, t2
                  sb           a2, 2(s11)
                  lbu          s0, -64(s11)
                  lbu          a0, 35(s11)
                  andi         t3, a4, 428
                  sra          a1, a4, s4
                  lb           a6, 35(s11)
                  ori          s7, s7, -356
                  sub          s7, a7, s3
                  srai         a7, a6, 21
                  lbu          s4, 47(s11)
                  sltiu        s4, sp, -1111
                  slti         a1, a0, -1930
                  sh           a6, 12(s11)
                  nop
                  lbu          a1, 55(s11)
                  lhu          t6, 50(s11)
                  sw           gp, 6(s11)
                  lbu          zero, -45(s11)
                  lb           zero, -1(s11) #end riscv_load_store_rand_instr_stream_1
                  la           t1, region_1+452 #start riscv_load_store_rand_instr_stream_3
                  sw           s3, 16(t1)
                  lhu          tp, 12(t1)
                  lbu          tp, 15(t1)
                  lh           t6, -2(t1)
                  lb           tp, 5(t1)
                  lbu          t2, -6(t1)
                  lhu          s4, -2(t1)
                  lbu          t5, 3(t1)
                  sh           a7, 6(t1)
                  lb           t6, 3(t1)
                  lbu          s0, 15(t1)
                  nop
                  xor          gp, s8, a1
                  sll          s1, a2, s3
                  lb           s7, -4(t1)
                  lhu          t2, -6(t1)
                  lhu          t6, 4(t1)
                  lb           a3, 8(t1)
                  lh           s11, 12(t1)
                  lb           s11, -13(t1)
                  lb           s3, -11(t1)
                  srl          t3, ra, s9
                  lh           t5, 12(t1)
                  lbu          s0, 3(t1)
                  sb           tp, -7(t1)
                  slt          zero, a4, s11
                  xor          t4, tp, ra
                  slli         s8, t1, 19
                  lbu          s3, 13(t1)
                  srli         ra, a2, 17
                  andi         t6, a0, -1809
                  lhu          zero, -14(t1)
                  lbu          t4, 3(t1)
                  slli         ra, t0, 8
                  lbu          a0, 13(t1) #end riscv_load_store_rand_instr_stream_3
                  la           s11, region_0+1263 #start riscv_load_store_rand_instr_stream_11
                  sb           a3, -8(s11)
                  lb           t0, 9(s11)
                  slti         a4, s11, -993
                  sra          t0, a3, s1
                  lb           s6, -6(s11)
                  add          a3, a5, s1
                  sb           t2, -2(s11)
                  sb           s0, 7(s11)
                  sh           s0, 9(s11)
                  slti         t5, s3, -1952
                  srli         a1, tp, 9
                  lbu          s10, 0(s11)
                  lw           s4, 13(s11)
                  slti         s2, gp, 1764
                  slli         a7, t1, 26
                  slti         s3, s7, -1207
                  add          a5, s2, zero
                  auipc        s5, 1009954
                  lb           s3, -7(s11)
                  lbu          a5, 5(s11)
                  lh           t1, -15(s11)
                  xori         zero, zero, 238
                  srli         s1, a4, 27
                  sb           s2, 1(s11)
                  lhu          t3, -15(s11)
                  lw           s4, 5(s11)
                  andi         a1, s3, 1960
                  lbu          a3, -2(s11) #end riscv_load_store_rand_instr_stream_11
                  la           a3, region_0+1552 #start riscv_load_store_rand_instr_stream_22
                  auipc        s8, 328429
                  srl          tp, s11, t1
                  lb           a0, -7(a3)
                  lhu          tp, 6(a3)
                  sb           sp, -13(a3)
                  lbu          a5, 11(a3)
                  sra          t2, a4, ra
                  lb           s6, -14(a3)
                  lw           ra, -16(a3)
                  sb           t3, 5(a3)
                  sb           t5, 7(a3)
                  lhu          s0, 14(a3)
                  nop
                  sb           s0, -12(a3)
                  sb           s3, -15(a3)
                  lb           s7, -6(a3)
                  sub          s2, a6, s5
                  auipc        t3, 379463
                  sb           a2, 12(a3)
                  xor          s0, a1, s5
                  lb           s0, -11(a3)
                  lb           s11, -11(a3)
                  srl          s3, zero, t4
                  lb           s3, -9(a3)
                  sltu         t1, s6, t1
                  lw           s6, 4(a3)
                  lb           a1, -12(a3)
                  lb           a0, 3(a3)
                  lhu          s11, 4(a3)
                  sltu         tp, s10, a4
                  lbu          s1, -11(a3)
                  sh           a3, -2(a3)
                  lbu          t0, 1(a3)
                  and          a0, t4, a1
                  sw           t1, 0(a3)
                  lui          s6, 345300
                  lb           a0, 8(a3)
                  sb           s6, 15(a3) #end riscv_load_store_rand_instr_stream_22
                  la           s2, region_0+1923 #start riscv_load_store_rand_instr_stream_14
                  lbu          s11, 10(s2)
                  sra          s8, s1, s3
                  ori          a4, s4, -43
                  sra          s8, gp, s5
                  lb           t2, 58(s2)
                  sb           tp, 26(s2)
                  sh           s5, 55(s2)
                  lbu          a3, 8(s2)
                  lb           s11, -20(s2)
                  or           s7, t6, t3
                  lh           t2, 5(s2)
                  sltu         s3, s3, s1
                  lb           a1, -64(s2)
                  srl          a3, t4, s10
                  lb           a5, -44(s2)
                  lh           a6, 29(s2)
                  lhu          s11, -23(s2)
                  andi         zero, t2, -983
                  sltu         s10, s6, a6
                  lh           a0, 43(s2)
                  sb           s8, -62(s2)
                  lbu          a7, 44(s2)
                  lbu          t1, 20(s2)
                  lhu          t4, 13(s2)
                  srl          ra, tp, s9
                  auipc        ra, 492478
                  sltu         a4, t3, s10
                  slli         ra, gp, 27
                  sh           gp, -51(s2)
                  sub          t0, s10, a3
                  and          s11, a6, s2
                  lbu          t0, -55(s2)
                  xori         t1, a0, -1739
                  sh           a1, -21(s2)
                  sh           ra, -17(s2)
                  sb           zero, 18(s2)
                  srl          a3, sp, s0
                  sw           s3, -15(s2)
                  lui          tp, 957548
                  srli         s11, a0, 8
                  sub          t4, ra, a7
                  sh           s1, 39(s2)
                  ori          s4, s1, 998
                  srai         s4, a4, 19
                  srai         t3, t6, 15
                  sb           t0, 14(s2)
                  sb           ra, 60(s2)
                  sll          s3, t3, a1
                  lh           a7, 19(s2) #end riscv_load_store_rand_instr_stream_14
                  la           a1, region_0+220 #start riscv_load_store_rand_instr_stream_7
                  and          t1, zero, s6
                  sub          s11, s11, s6
                  add          t1, s7, a6
                  slt          a7, a6, s1
                  lw           s1, 100(a1)
                  sll          s2, a6, t4
                  lb           t1, 39(a1)
                  sh           s8, 34(a1)
                  add          t3, sp, s2
                  sra          ra, s6, t6
                  ori          t0, s10, -1565
                  lb           t6, -179(a1)
                  srl          t3, tp, s8
                  lbu          s10, -3(a1)
                  and          s7, a1, a5
                  srai         s7, s8, 11
                  sb           t5, -174(a1)
                  lbu          s6, 95(a1)
                  sub          a0, s10, ra
                  lb           t3, 125(a1)
                  sb           tp, -213(a1)
                  lb           t4, -3(a1)
                  sltiu        s6, a6, 1526
                  lbu          s8, 191(a1)
                  sra          t1, ra, a7
                  slt          a4, t0, t2
                  add          s0, a2, t5
                  srli         s10, a1, 17
                  sra          a4, s11, a1
                  lb           t3, -71(a1)
                  slt          a4, s3, s11
                  auipc        a4, 531119
                  lhu          s8, -186(a1)
                  xori         s6, s5, 1537
                  and          a7, sp, gp
                  lb           s4, -18(a1)
                  sra          s11, s5, s2
                  lbu          s5, 98(a1)
                  sltiu        s3, s8, 271
                  auipc        a0, 441803
                  addi         s1, s5, -1482
                  sh           s4, -6(a1) #end riscv_load_store_rand_instr_stream_7
                  la           s10, region_0+713 #start riscv_load_store_rand_instr_stream_4
                  ori          t1, t0, 300
                  and          a4, zero, s8
                  sh           a0, 51(s10)
                  slti         s0, s2, 1307
                  nop
                  lbu          a7, 0(s10)
                  sra          t6, t2, a4
                  lb           s5, 14(s10)
                  srli         s1, s11, 3
                  sub          a5, s10, a3
                  and          t5, s9, s6
                  sll          t4, ra, t6
                  sh           s9, -3(s10)
                  add          s4, s8, s0
                  sll          s5, s1, s4
                  srl          a5, s10, s5
                  xori         s8, s3, -1256
                  lh           s5, -25(s10)
                  lhu          a6, -31(s10)
                  addi         tp, t4, -1806
                  sb           s11, 38(s10)
                  sltu         t1, tp, zero
                  sra          s5, a3, a6
                  xori         ra, t2, 35
                  sb           s5, -16(s10)
                  lh           a4, 39(s10)
                  lbu          s1, -29(s10)
                  lw           t2, -57(s10) #end riscv_load_store_rand_instr_stream_4
                  la           s10, region_0+1968 #start riscv_load_store_rand_instr_stream_5
                  sb           zero, 15(s10)
                  lbu          t6, -9(s10)
                  lbu          s3, 13(s10)
                  ori          s2, zero, -379
                  sll          s8, s9, s3
                  lbu          t2, 11(s10)
                  srai         a5, s10, 4
                  slli         s1, zero, 22
                  sb           s3, 6(s10)
                  sh           a3, 12(s10)
                  xor          a6, s10, s1
                  lb           a3, 12(s10)
                  lui          a5, 488785
                  andi         s0, t3, -1607
                  or           s11, s8, s5
                  ori          s3, t4, 137
                  xor          zero, a0, t0
                  lb           a7, 5(s10)
                  lui          ra, 808643
                  sb           t1, -4(s10)
                  nop
                  sb           a1, -4(s10)
                  sub          t2, a5, a5
                  lhu          gp, 16(s10)
                  sh           gp, -6(s10)
                  sh           a6, -8(s10)
                  ori          a1, a7, -1408
                  lbu          s11, -2(s10)
                  srl          a7, s5, a0
                  srai         zero, a7, 3
                  lbu          t6, 12(s10)
                  lb           t6, 13(s10)
                  or           a5, t1, sp
                  lw           s0, 16(s10)
                  lbu          a7, 1(s10)
                  sltu         a5, a4, a4
                  lh           t3, 14(s10)
                  sltu         t6, a0, a4
                  sb           s9, -15(s10) #end riscv_load_store_rand_instr_stream_5
                  la           t1, region_0+1247 #start riscv_load_store_rand_instr_stream_9
                  sb           s1, -104(t1)
                  lui          a7, 144897
                  slt          t0, s6, s1
                  sb           t2, 552(t1)
                  sw           a0, 237(t1)
                  and          s4, s9, s6
                  lb           s5, -637(t1)
                  slt          s10, a0, a3
                  xori         zero, s5, 795
                  lb           t5, -793(t1)
                  srai         a5, a4, 17
                  andi         a1, a7, 1514
                  sra          s2, s5, s0
                  lh           s10, -839(t1)
                  xori         a1, t2, -960
                  lb           t3, 166(t1)
                  srli         s11, s11, 22
                  add          t2, ra, a2
                  ori          s5, a1, 1276
                  lb           zero, -858(t1)
                  srl          a1, a1, a3
                  addi         s3, a0, -977
                  addi         s1, s2, -74
                  slli         a1, s11, 19
                  lw           a3, 417(t1)
                  add          s7, a6, t3
                  lw           a6, -667(t1)
                  slli         zero, s6, 17
                  lb           s11, -1130(t1)
                  and          t4, a1, t3
                  xor          t0, s7, s1
                  lbu          s5, -755(t1)
                  lbu          s5, -375(t1)
                  lb           tp, -733(t1)
                  lb           a4, 695(t1)
                  lw           s7, -183(t1)
                  slli         s5, s0, 31
                  sb           s6, -230(t1)
                  lh           t5, 705(t1)
                  srl          zero, a7, a2
                  xor          t0, s6, gp
                  ori          gp, a7, -943
                  addi         t5, s10, -1827
                  or           s2, s9, a5
                  and          a3, s5, tp
                  slli         t0, s4, 26
                  sll          t5, a1, ra
                  lb           s11, 520(t1)
                  lhu          zero, -1095(t1) #end riscv_load_store_rand_instr_stream_9
                  la           a1, region_1+740 #start riscv_load_store_rand_instr_stream_23
                  sw           a1, -4(a1)
                  lbu          t5, 14(a1)
                  slt          gp, s11, a1
                  lb           s6, -4(a1)
                  lui          s8, 813526
                  lhu          s6, 16(a1)
                  lb           t4, -14(a1)
                  sh           a4, 0(a1)
                  sb           s9, -9(a1)
                  srl          s3, s2, s8
                  lb           s3, -3(a1)
                  lbu          t3, 13(a1)
                  srli         t0, s2, 9
                  lui          s10, 739219
                  lh           gp, -10(a1)
                  lh           t5, 4(a1)
                  srli         s1, s10, 26
                  lbu          zero, -13(a1)
                  add          tp, s10, ra
                  sb           t1, -1(a1)
                  lhu          s1, 4(a1)
                  sll          t5, t3, t2
                  lhu          t3, 10(a1)
                  add          s6, t0, s1
                  lbu          s2, -16(a1)
                  andi         s10, a0, -1348
                  lh           t1, 16(a1)
                  ori          s4, s6, 336
                  lhu          s3, 10(a1)
                  lbu          s1, 11(a1)
                  sltu         t1, sp, s8
                  sh           zero, -12(a1)
                  auipc        t0, 602412
                  lbu          a4, 2(a1)
                  lhu          t4, -16(a1)
                  ori          t2, a6, 705
                  sb           s4, 9(a1)
                  sb           gp, 9(a1)
                  ori          s5, a7, -1909
                  ori          zero, t5, 138
                  sb           a5, 13(a1)
                  sw           sp, -8(a1)
                  sb           t3, 13(a1) #end riscv_load_store_rand_instr_stream_23
                  la           s0, region_1+1387 #start riscv_load_store_rand_instr_stream_17
                  sb           t6, -960(s0)
                  sb           t0, 218(s0)
                  or           s10, s0, s1
                  lb           s1, 61(s0)
                  lw           s1, -1043(s0)
                  lh           t2, 217(s0)
                  sltiu        s7, a4, -272
                  or           t2, s9, t2
                  and          s8, s1, s7
                  sb           t0, -1014(s0)
                  nop
                  sltu         a5, ra, s10
                  lui          a7, 58944
                  sb           a1, -970(s0)
                  sub          s10, t3, s6
                  lbu          s1, 292(s0)
                  sb           t6, -58(s0)
                  slti         s3, a1, 288
                  sb           s2, -1074(s0)
                  lui          zero, 465359
                  sltiu        t4, t0, -1066
                  lbu          a7, -416(s0)
                  lhu          ra, -77(s0)
                  sll          t1, ra, a6
                  sh           gp, -693(s0)
                  lh           s10, 399(s0)
                  xor          t3, zero, s6
                  sb           a2, -120(s0)
                  sltiu        a0, zero, 1500
                  sltu         gp, t4, a7
                  add          t0, s2, a0
                  xor          s11, a2, a4
                  sub          s5, a6, s5
                  nop
                  sltu         s4, t5, tp
                  sb           a2, 176(s0)
                  sb           tp, 362(s0)
                  lb           s10, -461(s0) #end riscv_load_store_rand_instr_stream_17
                  la           a3, region_1+120 #start riscv_load_store_rand_instr_stream_8
                  lb           t5, 21(a3)
                  andi         s3, s7, 761
                  lw           t6, -48(a3)
                  xor          a7, a3, s7
                  lh           tp, -50(a3)
                  sub          a0, a5, s6
                  lhu          s4, 38(a3)
                  lbu          s2, 5(a3)
                  xori         s2, t6, 196
                  xori         t6, a5, 963
                  auipc        t4, 6253
                  lbu          a5, -57(a3)
                  lbu          s8, -37(a3)
                  sub          t6, a2, a0
                  sb           a6, -34(a3)
                  lw           a7, -16(a3)
                  lhu          t5, 62(a3)
                  lb           t2, -55(a3)
                  add          s6, a6, t6
                  lbu          t2, 38(a3)
                  sb           tp, 21(a3)
                  slli         t4, s0, 1
                  sh           sp, 38(a3)
                  sh           t6, 60(a3)
                  sb           t2, -51(a3)
                  lh           s11, -48(a3)
                  sll          t4, s2, t5
                  sb           a0, -9(a3)
                  add          a6, gp, a2
                  auipc        a4, 838435
                  addi         s11, t3, 410
                  lbu          a1, -7(a3)
                  lui          s6, 71006
                  sb           s4, -6(a3)
                  slti         a7, s10, -1924
                  sra          t6, zero, zero
                  lbu          s1, -49(a3)
                  lb           gp, 46(a3) #end riscv_load_store_rand_instr_stream_8
                  la           s1, region_0+1950 #start riscv_load_store_rand_instr_stream_6
                  lbu          t1, 3(s1)
                  addi         s4, s11, -878
                  ori          s3, s9, -1522
                  srl          s2, t2, t4
                  sltu         s10, a7, a2
                  addi         a6, t0, -1329
                  slti         s5, a1, 984
                  slti         a4, a3, 1603
                  sb           a1, -9(s1)
                  slti         a4, a2, 1085
                  lbu          tp, -2(s1)
                  ori          a4, s2, -1038
                  slt          tp, s7, s3
                  lb           t0, 3(s1)
                  sll          a6, s4, a7
                  auipc        a0, 1034610
                  lh           a6, 14(s1)
                  sll          t2, s6, s2
                  lbu          tp, -8(s1)
                  or           gp, tp, s3
                  lbu          a4, -1(s1)
                  nop
                  lbu          gp, 13(s1)
                  sltiu        t0, t2, 1988
                  lb           s2, 1(s1)
                  srli         tp, tp, 30
                  slli         s0, a0, 10
                  slt          s0, s10, t1
                  ori          ra, a2, -550
                  lui          t1, 761619
                  lb           a6, 5(s1) #end riscv_load_store_rand_instr_stream_6
                  slt          a0, a4, t6
                  slli         s11, a2, 4
                  nop
                  sltiu        t3, s0, 143
                  add          a7, zero, a0
                  sub          s10, s3, t5
                  sltiu        s10, s2, -2023
                  srl          a1, a4, a4
                  xor          gp, t3, a5
                  andi         t6, ra, -1711
                  bne          s4, s6, 15f
                  beq          tp, s10, 28f
                  sra          tp, t4, gp
                  ori          zero, t6, -1260
                  srl          s6, tp, t3
15:               addi         a3, zero, 629
                  srli         s5, s0, 6
                  bge          s11, tp, 27f
                  add          t0, a4, s2
                  bgeu         s7, ra, 37f
                  bltu         a1, zero, 27f
                  andi         tp, a0, 703
                  and          s7, t4, a4
                  add          s10, a5, s3
                  srl          t4, a1, s2
                  addi         s8, s4, -96
                  nop
27:               or           t1, t6, a1
28:               bgeu         s10, s7, 46f
                  sub          t4, t0, zero
                  srai         s3, t0, 21
                  beq          t3, s6, 51f
                  bgeu         sp, t3, 42f
                  sra          tp, s11, s6
                  ori          a5, a7, 962
                  slti         gp, t5, 1440
                  and          a3, s1, s11
37:               sll          s5, s4, t3
                  sll          s6, t3, sp
                  addi         zero, t3, 28
                  add          zero, zero, s2
                  slli         s1, a6, 4
42:               sltiu        a5, t2, -859
                  slli         gp, s2, 18
                  bge          tp, zero, 50f
                  xor          ra, s9, s6
46:               slti         a0, s8, 704
                  bge          t6, t1, 52f
                  addi         a5, t5, 1459
                  addi         a7, s2, 506
50:               bge          s7, s11, 62f
51:               andi         t6, sp, -1635
52:               srai         s7, s5, 10
                  bne          a1, t2, 56f
                  slli         ra, s9, 10
                  sub          a0, s10, s5
56:               beq          t4, ra, 61f
                  sub          s5, t3, gp
                  add          t4, s8, t6
                  beq          t6, a0, 75f
                  andi         a5, a3, -1438
61:               nop
62:               addi         a6, tp, 31
                  bgeu         zero, t6, 74f
                  or           t0, s6, a2
                  auipc        t0, 195288
                  srli         s1, s0, 12
                  bltu         s6, a1, 75f
                  blt          a5, a1, 85f
                  slti         s6, s1, -1980
                  or           a4, t3, ra
                  and          a6, sp, sp
                  bgeu         t0, s10, 76f
                  lui          t3, 1034104
74:               addi         s3, s4, -591
75:               and          a5, t6, a4
76:               slt          t2, s3, a2
                  ori          a6, s3, 1569
                  sub          t2, gp, a6
                  sub          a4, a6, sp
                  sra          t4, a1, s0
                  and          s10, s11, a3
                  and          s3, a4, s1
                  srli         a7, s3, 0
                  srli         a5, s2, 21
85:               bgeu         a0, s4, 90f
                  addi         t1, a2, -1041
                  and          s8, s10, s6
                  andi         s0, s4, 1617
                  slti         t2, zero, -119
90:               bltu         tp, gp, 93f
                  sra          s1, s3, a7
                  srai         a1, t0, 4
93:               auipc        s2, 452813
                  ori          t5, a0, 921
                  beq          s0, t4, 112f
                  bltu         s2, t0, 97f
97:               srli         gp, s11, 9
                  andi         t3, s9, 1707
                  nop
                  bgeu         ra, gp, 117f
                  sll          a7, a1, t6
                  sltu         gp, t0, a3
                  sltiu        t2, s4, 1845
                  bne          a6, s9, 121f
                  blt          s3, a2, 106f
106:              nop
                  sltu         t6, sp, t5
                  auipc        t3, 489471
                  srl          s10, a7, gp
                  nop
                  lui          s6, 898915
112:              xor          a6, s1, t3
                  srl          t5, zero, s1
                  xori         t0, t4, -427
                  slti         s0, a0, 25
                  or           t1, s9, a4
117:              srli         s1, s0, 30
                  srai         s3, s10, 7
                  srl          t6, t5, zero
                  ori          s4, a1, -2030
121:              sltiu        s7, s4, -1980
                  slli         a1, t2, 17
                  sltu         a1, a7, s6
                  xor          t5, t4, a5
                  lui          s5, 277548
                  auipc        a4, 798872
                  andi         ra, t6, -1448
                  sltu         s5, zero, s9
                  sltu         zero, a7, t2
                  sra          t3, zero, sp
                  and          s4, t3, s2
                  xori         t3, t0, 1289
                  sltiu        s3, s1, 1704
                  ori          gp, s9, -1147
                  slt          t6, s1, a5
                  or           s3, t0, t3
                  slt          ra, s1, s2
                  bltu         a6, sp, 153f
                  sltiu        s0, t1, 1713
                  beq          s7, a6, 143f
                  sll          s4, tp, s1
                  srli         s11, s8, 20
143:              xor          a5, s6, a6
                  slti         s8, a1, 1405
                  beq          a2, t6, 149f
                  lui          s2, 907608
                  sub          s8, a2, s6
                  sll          s5, a0, t2
149:              ori          s11, a6, 1617
                  andi         a1, tp, -2038
                  lui          ra, 708433
                  ori          s6, t3, -301
153:              bge          a0, ra, 164f
                  bgeu         a2, s0, 155f
155:              xor          t4, t5, sp
                  xor          gp, t5, s5
                  bgeu         a6, a6, 158f
158:              sll          a3, a6, gp
                  slti         gp, s8, 1813
                  slt          zero, s6, sp
                  sll          s7, t5, s7
                  or           s8, s3, s2
                  or           t4, s7, tp
164:              and          a0, t0, a5
                  sltu         t5, t0, a2
                  beq          s8, ra, 183f
                  add          t0, t1, a4
                  sra          s5, s5, gp
                  srai         a6, zero, 28
                  and          s2, t3, t3
                  sra          zero, s7, s9
                  xori         t3, s11, 280
                  andi         a4, s6, 912
                  xori         s7, s8, 168
                  blt          tp, s4, 176f
176:              srai         t6, s1, 7
                  sub          s5, a0, a7
                  sltu         t4, s11, t3
                  slli         s2, s10, 10
                  bge          s0, s4, 191f
                  srai         s0, s4, 11
                  sll          t5, t2, t3
183:              add          a1, s0, a0
                  addi         t0, t4, -1990
                  slt          tp, t5, tp
                  slti         t6, s2, 1661
                  slli         s8, a0, 14
                  sll          t6, t3, ra
                  addi         a0, sp, 1919
                  sll          s11, tp, s4
191:              add          s7, s4, a1
                  auipc        ra, 275378
                  nop
                  and          a4, t6, t1
                  sltiu        t0, a6, -1570
                  sltu         t0, t5, s3
                  andi         a6, s7, -184
                  auipc        zero, 628595
                  ori          s8, sp, 1257
                  srli         a7, s8, 6
                  auipc        s10, 727167
                  sub          tp, a0, tp
                  sra          t0, s5, t1
                  sub          a4, a0, t5
                  xori         gp, s9, -641
                  lui          t0, 117182
                  bne          t2, s9, 225f
                  nop
                  xori         s7, s5, -108
                  or           s0, a7, a2
                  slli         s2, t5, 19
                  sub          s4, gp, s6
                  blt          s7, s0, 216f
                  blt          t1, s10, 231f
                  ori          s10, s3, -30
216:              srai         s0, gp, 24
                  slt          t0, sp, s5
                  sll          a1, gp, t4
                  srli         t0, s7, 6
                  srai         t1, s5, 28
                  slt          a6, t5, s10
                  ori          s6, sp, 559
                  srl          zero, a6, s10
                  xor          a4, ra, s6
225:              bgeu         t2, ra, 228f
                  or           s4, s2, a0
                  slti         a0, ra, -252
228:              beq          s3, s11, 233f
                  bgeu         tp, t5, 236f
                  bne          s4, ra, 238f
231:              and          t0, t4, sp
                  beq          tp, t6, 247f
233:              nop
                  slti         s3, s6, -1662
                  sll          t3, gp, gp
236:              srai         zero, s8, 20
                  auipc        s8, 611103
238:              lui          a1, 247463
                  sll          s2, s6, a0
                  bgeu         t0, gp, 258f
                  srl          ra, tp, tp
                  sltu         s10, s11, t5
                  xor          tp, a5, a6
                  sll          a0, a3, t6
                  xori         t4, s2, -272
                  bltu         s6, t5, 263f
247:              ori          s6, s2, 183
                  nop
                  sltu         a1, s10, a5
                  xor          a3, t0, a2
                  slt          s6, t3, t0
                  sra          zero, s11, a0
                  and          s7, s10, a0
                  bltu         t1, a4, 255f
255:              sltu         s5, a0, s8
                  srai         s11, t6, 14
                  slli         t5, s0, 2
258:              slti         t3, t6, 1166
                  bge          s3, s0, 276f
                  sll          s0, s9, t5
                  sltu         a4, t6, sp
                  ori          s10, s5, -1421
263:              sll          s2, ra, s4
                  and          t6, sp, s5
                  xor          s5, s7, a7
                  xor          t6, s8, t6
                  lui          s1, 620369
                  and          t1, s7, a4
                  andi         a1, s10, -1994
                  xori         s10, s1, 2015
                  slt          t2, s5, s3
                  andi         gp, t2, 231
                  sra          s7, tp, a6
                  and          t3, a5, t2
                  slti         a7, t4, 1107
276:              bgeu         tp, s6, 293f
                  bgeu         s7, t6, 281f
                  and          s1, gp, a4
                  ori          s10, a5, -854
                  blt          sp, a5, 300f
281:              xor          zero, a4, s3
                  sltu         s10, a1, t4
                  srai         t2, t3, 3
                  addi         tp, s10, 1554
                  ori          gp, ra, 402
                  nop
                  or           s5, a1, sp
                  sub          ra, s3, t4
                  beq          t4, a6, 294f
                  srli         s5, s7, 29
                  bge          a2, a4, 301f
                  auipc        a5, 758685
293:              auipc        s5, 320858
294:              srl          a4, s4, s8
                  andi         t2, s0, 991
                  nop
                  xori         t2, s8, 1456
                  auipc        a3, 742025
                  lui          t1, 411346
300:              blt          gp, t5, 303f
301:              addi         gp, a2, 1876
                  and          a4, s4, tp
303:              bltu         ra, s4, 309f
                  sltu         t3, tp, a1
                  bgeu         a5, s6, 310f
                  sll          tp, gp, zero
                  srli         s0, t4, 19
                  and          s4, s6, a2
309:              srl          s8, a4, a1
310:              blt          s8, a3, 321f
                  and          gp, s8, tp
                  auipc        s11, 339023
                  sra          a3, s0, a7
                  andi         t5, a4, 1712
                  slli         a0, zero, 8
                  slt          s5, s1, s0
                  sltu         s6, a3, a6
                  bltu         gp, a7, 334f
                  auipc        t5, 402883
                  bltu         zero, sp, 324f
321:              andi         t0, ra, -598
                  sltiu        s3, s0, 1125
                  slt          s10, s2, a0
324:              bne          t1, t2, 329f
                  beq          a2, gp, 337f
                  sub          gp, s3, t0
                  slt          s6, tp, ra
                  and          ra, gp, t0
329:              xori         zero, a6, -263
                  lui          s10, 352364
                  slli         s1, a2, 26
                  beq          s2, sp, 342f
                  blt          t5, ra, 348f
334:              addi         s8, zero, -251
                  xor          t6, zero, s7
                  slli         s11, gp, 26
337:              blt          gp, t1, 354f
                  srli         s5, a3, 23
                  blt          s4, s3, 344f
                  srai         s6, s2, 17
                  bgeu         s11, s5, 358f
342:              slt          s8, ra, t4
                  beq          t6, a6, 360f
344:              xor          t0, t3, s0
                  andi         s11, ra, 1810
                  sltiu        s7, s2, 501
                  blt          s1, s1, 350f
348:              and          a7, s0, t4
                  add          t3, s11, a6
350:              bgeu         s11, tp, 355f
                  blt          t4, s3, 367f
                  ori          t4, s9, -123
                  bge          t6, ra, 358f
354:              sub          s11, a2, a4
355:              slt          a5, gp, s6
                  sltu         t6, t6, a1
                  add          zero, s6, a3
358:              sub          t1, t6, a3
                  slti         a1, a6, -758
360:              addi         a7, s4, -110
                  xori         zero, a1, -2048
                  lui          gp, 683077
                  bltu         zero, tp, 366f
                  bgeu         t3, t4, 368f
                  xor          s10, a6, a1
366:              and          a3, a1, s5
367:              and          gp, t0, zero
368:              nop
                  sub          s10, s0, t1
                  slli         s4, t4, 25
                  ori          s8, t2, 319
                  ori          a7, ra, 910
                  add          a1, ra, a2
                  srl          t3, s3, s7
                  sltiu        gp, zero, 1822
                  srl          s6, a5, s2
                  beq          s11, a4, 383f
                  sltu         t2, t1, s8
                  or           s4, ra, s8
                  slti         a4, s6, 1915
                  bgeu         t6, s1, 391f
                  sltiu        zero, t1, -210
383:              lui          s8, 1029269
                  xori         ra, s9, -1435
                  sll          s2, s3, t3
                  or           a6, a1, a0
                  bge          s0, t1, 395f
                  bge          gp, s1, 405f
                  lui          s4, 486195
                  slli         s11, a1, 28
391:              slli         s0, sp, 1
                  srli         a5, s3, 2
                  bne          a5, tp, 396f
                  auipc        a5, 865392
395:              and          gp, a7, a6
396:              bgeu         s4, t3, 413f
                  or           a7, a2, a5
                  sub          zero, sp, s8
                  bge          a7, a4, 400f
400:              sltu         s10, tp, a0
                  bge          a5, t6, 411f
                  or           a7, a7, a1
                  bltu         t4, t1, 404f
404:              srai         gp, s10, 16
405:              slli         s11, s8, 14
                  ori          a7, a1, -1695
                  slti         a4, zero, 605
                  bgeu         t1, ra, 426f
                  ori          s2, s10, -220
                  sub          t1, a2, t2
411:              andi         s3, zero, -753
                  ori          zero, t4, -1479
413:              sltiu        s5, a2, 1032
                  and          a3, s7, sp
                  srai         t4, t6, 0
                  andi         s3, t3, -360
                  sll          t0, t0, s2
                  andi         t5, s9, -1638
                  slli         t5, sp, 26
                  sub          s4, t6, t1
                  bne          gp, sp, 439f
                  ori          s10, s11, -222
                  srli         a4, ra, 21
                  srai         a3, s4, 1
                  auipc        s6, 444557
426:              srai         a7, s1, 24
                  nop
                  sltiu        s7, s10, 1159
                  nop
                  xori         gp, s5, -136
                  srli         s6, zero, 28
                  bge          zero, s5, 443f
                  sub          t0, s9, a3
                  beq          s6, s6, 446f
                  slt          s6, t4, s5
                  slti         ra, a1, -841
                  sra          t3, zero, s6
                  srai         s0, a3, 7
439:              srli         t6, s5, 5
                  slli         gp, gp, 1
                  bgeu         zero, t3, 448f
                  auipc        s3, 52747
443:              add          t2, s4, t0
                  slt          s5, a6, t3
                  auipc        a5, 786935
446:              bgeu         sp, t3, 447f
447:              slt          t5, s3, a5
448:              bltu         t3, t0, 453f
                  auipc        a4, 958338
                  sltu         a4, s5, s10
                  bgeu         a0, sp, 462f
                  slli         t4, a4, 16
453:              slti         s6, s2, 1325
                  beq          s4, a6, 474f
                  srl          t6, t1, a0
                  slli         t0, s8, 28
                  sltiu        s11, s3, -1292
                  slti         s2, t0, -1255
                  and          s6, s9, t3
                  sll          s6, s6, t0
                  addi         zero, a4, 502
462:              slli         a4, gp, 28
                  beq          a4, s9, 467f
                  lui          s2, 354378
                  auipc        s4, 15133
                  bgeu         a6, s9, 471f
467:              xori         t3, s8, 608
                  auipc        a1, 723015
                  nop
                  ori          a5, t4, -1450
471:              xori         s4, sp, -1408
                  sra          s0, t2, s5
                  sra          s8, s9, s3
474:              srai         t5, t2, 11
                  sll          gp, sp, a2
                  sub          a7, ra, a4
                  sll          s10, sp, a7
                  lui          t2, 973553
                  srli         t6, a5, 17
                  sub          s11, gp, s8
                  sltiu        s4, s9, 349
                  sub          ra, s6, gp
                  slt          tp, s6, zero
                  bgeu         a0, s11, 488f
                  slli         s2, a5, 15
                  sltiu        s7, s9, -2039
                  sub          a5, s4, t2
488:              srl          a7, s6, t2
                  sltiu        t6, a2, 241
                  slti         t4, a5, 715
                  bge          t6, t3, 509f
                  blt          s4, ra, 493f
493:              srai         s10, s11, 22
                  srli         s3, s0, 2
                  and          a1, s6, t3
                  srai         a4, sp, 1
                  and          s7, t6, s6
                  srai         a3, zero, 27
                  sub          s4, t5, s3
                  bltu         a7, ra, 505f
                  or           s2, t4, t6
                  slli         a4, s6, 9
                  add          s8, s6, a6
                  sltiu        gp, s3, -683
505:              sltiu        s6, tp, 766
                  beq          a0, s9, 523f
                  bgeu         s5, s11, 519f
                  bge          s0, s5, 525f
509:              bne          t1, a2, 515f
                  sub          t2, s7, t3
                  bltu         a2, s9, 528f
                  srl          s10, t1, a7
                  bge          a7, s10, 518f
                  slt          a5, a5, t2
515:              srli         a3, a6, 2
                  blt          t0, t6, 519f
                  addi         s0, s9, 1307
518:              auipc        a4, 228382
519:              bgeu         a1, s2, 529f
                  bgeu         s0, s11, 528f
                  add          s8, tp, s0
                  slli         ra, t0, 0
523:              slt          s10, s1, ra
                  sub          gp, t5, s4
525:              sub          a4, t4, s4
                  bge          a4, s2, 527f
527:              bne          a7, t5, 534f
528:              auipc        tp, 1037229
529:              blt          ra, s0, 530f
530:              blt          a1, a5, 545f
                  and          s4, s10, t0
                  sll          t4, s6, s5
                  xor          s5, s5, s6
534:              lui          s11, 650346
                  sra          t0, t2, s7
                  bgeu         gp, s0, 556f
                  lui          s8, 908387
                  sra          zero, t4, s2
                  blt          s11, a0, 549f
                  xori         a3, a2, -64
                  or           t1, s2, zero
                  srl          a0, sp, a3
                  lui          a0, 635039
                  addi         s8, s3, 1394
545:              or           t6, s9, s7
                  nop
                  slli         s10, a4, 16
                  beq          ra, s0, 566f
549:              slli         ra, ra, 25
                  slt          zero, s8, a5
                  srli         s2, s6, 16
                  sub          t6, s11, a3
                  sll          s11, a6, a7
                  sll          s1, s7, s1
                  slli         s0, a3, 14
556:              and          s5, sp, s9
                  and          s2, s0, zero
                  bltu         ra, s7, 561f
                  sltiu        t1, gp, 999
                  addi         t6, t2, -1470
561:              xor          s11, t3, s8
                  srl          s6, s5, t4
                  xor          s1, s7, zero
                  add          s11, s5, t1
                  beq          t2, a3, 582f
566:              bltu         s3, s3, 577f
                  xor          s0, a6, s7
                  bgeu         s4, a0, 573f
                  sltiu        t4, a5, -1988
                  srai         t3, ra, 21
                  andi         s7, s4, -756
                  srai         a3, s0, 25
573:              srl          s2, t5, a0
                  or           s7, s7, t4
                  andi         t6, s8, 1816
                  sll          a5, a0, s9
577:              bne          t3, ra, 593f
                  srli         s6, s1, 22
                  or           a5, sp, s7
                  add          t0, a7, s0
                  sra          tp, s0, s11
582:              sltiu        ra, s2, 180
                  slli         s4, a5, 25
                  auipc        s7, 698169
                  or           a6, s0, s7
                  ori          tp, t5, -1765
                  sub          s3, t6, t1
                  sltiu        s3, gp, -768
                  sltiu        zero, ra, 1594
                  srai         t6, s0, 24
                  sra          tp, s9, s11
                  bgeu         s3, t0, 595f
593:              slt          t6, a0, s7
                  xori         a5, a0, -1787
595:              sltu         s3, t4, a2
                  srai         s4, s9, 26
                  srl          t2, s3, a0
                  srl          s10, tp, s0
                  bge          gp, a1, 610f
                  blt          t1, s10, 617f
                  sltiu        a5, a6, -1406
                  add          t5, t0, s4
                  blt          s10, s3, 607f
                  slt          t5, s9, t3
                  or           t4, t6, s3
                  bltu         s6, s4, 617f
607:              auipc        a0, 858464
                  lui          tp, 804543
                  blt          sp, s9, 614f
610:              and          a0, a5, a6
                  sra          t6, s10, zero
                  or           t3, s2, s4
                  bltu         s10, gp, 630f
614:              ori          a7, t0, -217
                  bgeu         a6, s1, 631f
                  sra          s3, s2, s9
617:              ori          s10, t1, 505
                  slli         t3, s5, 23
                  or           a4, ra, zero
                  or           t6, t2, s9
                  bltu         zero, gp, 638f
                  bgeu         a6, a7, 632f
                  slt          s6, s1, a0
                  addi         t1, a6, 256
                  slli         s8, s3, 8
                  lui          gp, 103576
                  nop
                  srai         t3, s0, 2
                  srai         a1, s4, 17
630:              bltu         gp, s2, 647f
631:              bge          gp, s7, 632f
632:              blt          ra, s9, 637f
                  slti         a7, t3, 1805
                  add          t1, s2, a0
                  sltiu        s11, a5, -238
                  andi         t0, sp, 1932
637:              add          s4, s8, a4
638:              bgeu         s1, a7, 639f
639:              sltiu        a5, s2, 1152
                  slt          a0, a1, s2
                  sra          s4, tp, a5
                  sll          ra, s8, t1
                  beq          s0, a5, 647f
                  bge          s5, s4, 649f
                  sltu         s7, t1, t1
                  andi         t4, a4, 251
647:              ori          s5, s0, -1344
                  slt          s0, s6, a0
649:              slt          a4, a3, zero
                  slt          s0, a3, s10
                  and          s8, a4, t6
                  lui          t2, 1038048
                  bltu         a5, tp, 658f
                  srli         a0, s6, 11
                  slti         s1, t4, 1496
                  sltu         t4, s1, t1
                  lui          s11, 983074
658:              ori          a1, s6, -1263
                  srl          s5, s5, gp
                  srli         tp, s2, 2
                  or           s11, a5, s1
                  xori         s10, t3, 1857
                  bge          s7, a4, 680f
                  sltu         s7, s0, a2
                  or           s7, t2, t6
                  slli         s11, ra, 31
                  slt          a3, s9, t4
                  sra          s3, s6, t3
                  bge          s9, s10, 680f
                  srai         a5, ra, 22
                  bltu         ra, s4, 686f
                  srai         a4, a3, 12
                  bltu         ra, s9, 681f
                  auipc        a6, 33065
                  xori         t1, s1, 359
                  bgeu         t5, t1, 683f
                  beq          ra, s5, 683f
                  bne          t1, zero, 696f
                  slli         t1, s11, 11
680:              andi         s11, t3, -1622
681:              bge          s5, s9, 685f
                  blt          t4, a0, 699f
683:              srl          s2, t0, s9
                  ori          ra, s10, -1693
685:              beq          zero, a0, 697f
686:              xor          s2, t5, a7
                  srai         a1, t2, 11
                  auipc        gp, 550132
                  slt          tp, sp, t5
                  slt          t3, sp, a5
                  sra          a0, ra, a7
                  sltu         a5, ra, a0
                  srl          t5, s2, a1
                  addi         tp, s6, -1408
                  xor          a4, s2, s6
696:              srl          zero, s6, s8
697:              nop
                  add          s6, a3, a2
699:              slti         zero, a5, 431
                  auipc        s5, 551199
                  bne          a5, s6, 711f
                  sll          s11, s11, a3
                  nop
                  sub          t0, t3, ra
                  blt          gp, s7, 706f
706:              bltu         a5, gp, 726f
                  srli         s3, ra, 22
                  ori          a6, t1, 909
                  addi         s4, s9, -1987
                  sltu         s3, s3, t6
711:              slli         a5, s2, 22
                  add          t5, s3, s0
                  bne          s6, t6, 716f
                  lui          a6, 533957
                  beq          a1, t1, 718f
716:              sub          t3, s3, s11
                  andi         ra, s4, 511
718:              srli         s0, s0, 25
                  sub          zero, s4, sp
                  or           a6, a0, tp
                  srl          t6, a0, a3
                  or           s7, gp, a5
                  add          tp, a7, a4
                  slt          ra, t5, s8
                  srl          t4, s6, t3
726:              blt          zero, t3, 744f
                  sll          s7, t2, s6
                  auipc        a4, 508368
                  slti         a6, tp, -87
                  bge          s9, s9, 733f
                  or           s10, t0, a3
                  and          a0, s0, a2
733:              srl          a1, a2, s1
                  blt          s5, t1, 739f
                  slti         s7, a2, -1579
                  xor          zero, a0, a7
                  or           t2, s10, t6
                  xor          s8, a3, s5
739:              bne          s7, s3, 757f
                  nop
                  beq          gp, s6, 752f
                  bge          s6, t1, 745f
                  srl          a6, t2, t3
744:              slli         s1, s9, 18
745:              slli         t2, s11, 14
                  lui          gp, 503415
                  slti         t0, sp, -551
                  beq          a6, gp, 753f
                  beq          s5, t6, 752f
                  xor          ra, a2, s2
                  sra          s3, s11, a7
752:              addi         gp, s3, -1690
753:              sll          t3, gp, t3
                  bgeu         t6, t2, 757f
                  sltiu        t1, s7, -897
                  slli         a4, t5, 27
757:              sub          t6, ra, s5
                  srai         a3, t4, 30
                  sltu         s3, s6, s9
                  slt          gp, a6, t1
                  bltu         a3, tp, 772f
                  slt          s4, zero, t1
                  bltu         ra, t1, 769f
                  beq          a5, s5, 768f
                  sub          s5, s11, s8
                  sltu         s10, a2, gp
                  bne          a5, a6, 785f
768:              auipc        a5, 748907
769:              add          ra, s4, a0
                  xori         s6, s8, -665
                  bltu         a0, s8, 791f
772:              srli         s0, s2, 17
                  addi         t1, a3, 542
                  slt          ra, s11, s8
                  ori          t3, tp, 345
                  sltiu        a7, a0, -986
                  sra          s5, a6, t3
                  sra          t0, a7, t5
                  xor          s4, a4, t2
                  srai         t4, ra, 21
                  add          a3, s11, s1
                  nop
                  sll          s4, a0, s0
                  bltu         t4, sp, 785f
785:              slt          gp, t0, a5
                  add          t5, t3, t2
                  add          s3, s7, t1
                  nop
                  andi         zero, t2, -1467
                  slli         s7, s1, 20
791:              addi         gp, a3, 1338
                  sltu         a5, t0, t2
                  srai         gp, t2, 8
                  sra          s8, a4, sp
                  sltiu        t6, a2, 709
                  bne          t4, a4, 800f
                  sltiu        s10, tp, 1868
                  bge          t5, s4, 813f
                  sll          gp, s7, s9
800:              ori          s6, s4, -1123
                  addi         t3, s1, 240
                  add          a7, gp, s3
                  slt          s2, gp, t0
                  slt          s3, s1, t6
                  andi         a5, a7, 682
                  srl          s10, s9, t4
                  and          s11, s9, t0
                  xor          t2, s10, a1
                  xor          tp, s5, s5
                  sub          t3, a6, t5
                  ori          zero, s10, 1662
                  and          ra, s6, a5
813:              sltu         t6, s1, t2
                  xor          s1, gp, a5
                  srli         s4, a2, 29
                  ori          ra, t4, -789
                  slli         a5, s0, 3
                  auipc        gp, 636936
                  xori         a7, s6, -1628
                  bge          s4, t5, 830f
                  slt          s4, s0, tp
                  ori          s6, s0, 172
                  xori         gp, s9, -1759
                  sub          tp, gp, t6
                  bge          t2, s7, 842f
                  auipc        ra, 751401
                  bge          s3, a6, 839f
                  sll          t1, a7, s9
                  xori         gp, a7, 112
830:              slt          a7, s11, t0
                  slli         t3, a6, 27
                  srai         s8, gp, 6
                  ori          s11, t1, -904
                  nop
                  bltu         t5, a3, 842f
                  sltu         s2, a3, s0
                  slt          a7, t0, s3
                  slti         t6, s1, 1162
839:              bge          s7, t1, 847f
                  sltu         t1, t6, a5
                  or           s10, gp, s10
842:              nop
                  bne          t3, s11, 859f
                  sub          s5, t3, a6
                  srai         a0, gp, 9
                  slli         t4, tp, 0
847:              bge          t5, zero, 852f
                  slli         t2, t3, 16
                  srl          s1, gp, s0
                  bge          a3, s1, 867f
                  and          a7, t5, a7
852:              ori          gp, a4, -1706
                  sra          s2, s5, s1
                  lui          ra, 508989
                  sll          s7, t1, s11
                  srl          s3, t1, t3
                  auipc        s3, 662884
                  sll          t0, a2, t4
859:              xori         a7, a1, -957
                  lui          s7, 785099
                  ori          s8, s1, -1690
                  xor          s10, s3, s4
                  bge          s7, a5, 864f
864:              and          zero, t0, a4
                  slli         a1, s11, 3
                  srai         a7, s11, 14
867:              bltu         a2, s8, 884f
                  blt          a4, t4, 869f
869:              bltu         a1, gp, 879f
                  andi         a3, ra, -1490
                  ori          a5, t5, -815
                  sub          a5, tp, t0
                  srai         t6, s5, 15
                  slti         ra, a1, -598
                  add          s4, s5, a3
                  addi         tp, sp, -152
                  slli         s8, zero, 15
                  nop
879:              beq          a3, s8, 896f
                  xor          s3, t5, s9
                  add          s7, tp, s0
                  add          s4, a1, s11
                  slt          a1, t4, s11
884:              bne          s1, s9, 889f
                  bgeu         s6, s6, 902f
                  srl          a3, t6, s6
                  sltu         s10, gp, s0
                  blt          s2, a5, 906f
889:              auipc        t4, 136583
                  srl          s0, s11, s6
                  beq          s3, s2, 892f
892:              blt          a1, s3, 904f
                  srai         s0, t3, 3
                  sltu         a3, a0, ra
                  andi         s8, a0, 990
896:              slti         s2, tp, -143
                  ori          a3, s7, -1589
                  srli         s2, tp, 9
                  bne          s1, t4, 902f
                  bltu         sp, s10, 920f
                  blt          a2, s3, 906f
902:              slli         t0, s0, 4
                  andi         a3, s9, -311
904:              auipc        s1, 676322
                  xori         s3, s4, 38
906:              slti         s4, a5, 1784
                  sltiu        s4, a5, -1363
                  auipc        t4, 403123
                  addi         s11, s3, 301
                  nop
                  sltiu        ra, a5, -755
                  srli         t6, a5, 3
                  slli         s1, a7, 3
                  andi         s3, ra, 980
                  addi         zero, s1, 1044
                  sltiu        t2, t0, -1837
                  andi         t6, s0, -1528
                  slti         zero, a0, -557
                  or           s4, a3, s11
920:              bgeu         t4, a2, 931f
                  slt          a6, a7, s7
                  srli         a0, sp, 23
                  srli         zero, s1, 20
                  addi         t3, a2, 1539
                  auipc        s11, 594474
                  srai         a1, s11, 20
                  beq          ra, s3, 928f
928:              xori         s8, t1, 1120
                  bgeu         a3, s6, 939f
                  sra          t3, s8, s4
931:              add          a0, gp, a3
                  xor          s6, a5, s3
                  srai         a3, s5, 25
                  sra          s11, t0, gp
                  xor          t3, tp, s2
                  or           a6, ra, s7
                  xori         tp, s8, -1882
                  auipc        t4, 984208
939:              lui          s6, 901500
                  sltu         tp, a2, sp
                  beq          s4, s3, 956f
                  sll          s3, a5, a7
                  auipc        zero, 869828
                  slti         t2, t3, -1333
                  slli         t5, s4, 6
                  or           s6, s0, a2
                  slt          s0, a4, t0
                  xori         gp, s8, 831
                  andi         s5, s2, 1978
                  sra          t6, t6, t5
                  or           s4, a6, s8
                  bne          ra, t5, 953f
953:              and          a6, s3, a6
                  ori          t3, gp, -680
                  slti         s8, t4, -1282
956:              sltu         t0, a6, a4
                  sltiu        a6, s11, 1872
                  bne          s2, tp, 963f
                  xori         s2, s10, -1987
                  blt          a5, a4, 977f
                  nop
                  bgeu         a2, s0, 967f
963:              srl          t1, a1, s11
                  srl          t5, a5, t6
                  or           ra, a7, t1
                  sub          t0, s10, a6
967:              sltiu        t6, s0, -3
                  srai         s4, t2, 13
                  nop
                  and          ra, s5, s1
                  bne          s5, s0, 989f
                  sltiu        gp, a7, -954
                  bge          a2, a0, 990f
                  sltiu        ra, t2, 2007
                  xori         a6, a3, -356
                  xori         a6, s7, -1416
977:              srli         t3, a0, 26
                  nop
                  srli         s6, a2, 12
                  blt          a5, t6, 983f
                  xori         t6, s7, -1629
                  beq          s4, t5, 999f
983:              xor          s5, t3, a7
                  srl          zero, a0, t3
                  sltiu        tp, a7, 2030
                  sub          t5, t1, s11
                  ori          s5, t2, -615
                  xori         t4, s10, 1904
989:              bne          a2, a7, 1006f
990:              lui          ra, 760360
                  and          t0, zero, t4
                  nop
                  sub          s3, a7, s1
                  srai         s5, tp, 22
                  sltiu        s2, zero, 675
                  ori          zero, s9, -1211
                  andi         s0, t4, 680
                  slt          s8, t4, a0
999:              bltu         s6, t3, 1016f
                  xori         s3, zero, -305
                  bne          s4, t3, 1006f
                  bgeu         s11, s2, 1005f
                  srli         s4, s1, 29
                  or           s4, t1, s1
1005:             auipc        t0, 254774
1006:             bne          a4, gp, 1010f
                  xori         a4, zero, 1444
                  srl          a3, a6, s4
                  sub          s8, s4, s0
1010:             ori          t4, s6, 1448
                  bltu         a4, a3, 1017f
                  slt          a3, tp, s2
                  srli         t0, a7, 18
                  nop
                  srai         zero, t6, 25
1016:             beq          a4, s8, 1023f
1017:             blt          t0, a6, 1025f
                  slti         s11, a0, 1960
                  beq          s10, s8, 1030f
                  auipc        a0, 850700
                  xor          s2, a5, t5
                  sub          s4, s3, gp
1023:             sub          a5, s1, a2
                  sltiu        t5, s6, -1632
1025:             xori         a3, s1, -310
                  ori          s7, s4, -596
                  srai         a4, s11, 7
                  ori          s10, t1, -870
                  bgeu         s6, t6, 1039f
1030:             sltiu        a1, t6, 1738
                  srli         t0, s6, 0
                  bne          s5, s8, 1036f
                  and          a0, a5, t5
                  blt          s5, a2, 1050f
                  sll          t0, s11, t2
1036:             bne          s3, s4, 1039f
                  or           a1, t1, s11
                  bne          a6, a4, 1039f
1039:             auipc        t5, 300095
                  srli         t3, zero, 21
                  blt          a5, s4, 1046f
                  blt          ra, zero, 1052f
                  addi         s5, a2, 1170
                  beq          a4, t5, 1064f
                  xor          s8, a1, ra
1046:             or           tp, s9, t2
                  srli         a7, t6, 24
                  sra          s4, t5, a6
                  ori          ra, t5, -1974
1050:             sltu         tp, t6, s8
                  srai         t3, s9, 22
1052:             slti         a5, s2, -46
                  and          a3, a7, t6
                  sltiu        a1, s3, -205
                  andi         s8, t5, -966
                  srl          s4, t5, a1
                  srl          t4, ra, sp
                  beq          t4, a7, 1059f
1059:             or           a5, s8, s3
                  nop
                  add          a0, t6, t2
                  srai         a5, s2, 19
                  lui          s2, 685155
1064:             bne          s5, gp, 1081f
                  bltu         s9, s11, 1076f
                  bltu         t6, sp, 1071f
                  sra          s10, a0, a0
                  slt          a5, t0, s5
                  sub          s11, a0, s5
                  xori         t1, s5, 12
1071:             bgeu         zero, s8, 1083f
                  srl          t5, a7, s10
                  xor          s6, t2, tp
                  nop
                  auipc        s10, 886619
1076:             bltu         sp, gp, 1077f
1077:             or           s10, a7, t5
                  or           s8, a5, ra
                  slti         a5, ra, 1540
                  blt          s0, ra, 1084f
1081:             slti         a7, a4, 1202
                  srli         a5, a0, 18
1083:             auipc        s6, 848295
1084:             ori          a7, t2, 207
                  sltu         t6, sp, s9
                  andi         s11, a4, 601
                  sltu         gp, t3, a3
                  srl          a7, a1, s5
                  la           a1, region_0+1529 #start riscv_load_store_rand_instr_stream_18
                  sh           gp, 3(a1)
                  sb           s11, -11(a1)
                  lbu          a7, -142(a1)
                  lbu          zero, -178(a1)
                  slt          s0, s8, s6
                  or           a5, a1, s9
                  or           t4, t1, zero
                  lui          s7, 213180
                  lh           s3, 57(a1)
                  nop
                  lbu          a5, 0(a1)
                  lh           s7, -109(a1)
                  lbu          t4, 161(a1)
                  xor          t2, a5, ra
                  srli         s6, tp, 9
                  lbu          s11, 224(a1)
                  xor          t6, gp, sp
                  lb           ra, -216(a1)
                  xori         s6, t4, 1301
                  sh           s7, 51(a1)
                  auipc        s2, 525629
                  lh           t2, -213(a1)
                  lbu          s5, 58(a1)
                  lui          t6, 375052
                  sb           s8, -222(a1)
                  sh           a5, -65(a1)
                  addi         a4, t4, -2001
                  and          s4, s10, s3
                  lbu          s6, 250(a1)
                  lb           s7, -42(a1)
                  lb           a5, -111(a1)
                  auipc        s5, 437141
                  sltiu        s0, a4, -1886
                  lw           s1, -141(a1)
                  slt          t1, a6, s6
                  lb           t6, -100(a1)
                  lb           t0, -148(a1)
                  sb           t1, -19(a1)
                  sra          s6, s9, a3
                  lb           s3, -50(a1)
                  lh           s7, 49(a1)
                  sb           s11, 122(a1)
                  lb           t4, -28(a1)
                  nop
                  or           ra, s0, zero
                  lb           tp, 221(a1)
                  lb           s5, -209(a1)
                  sb           a1, 244(a1) #end riscv_load_store_rand_instr_stream_18
                  and          s0, t6, s2
                  sltu         ra, a3, a7
                  nop
                  bne          s11, s2, 1098f
                  bgeu         s1, s7, 1111f
                  blt          s0, s0, 1097f
                  addi         s10, a0, -1204
                  sll          t4, a1, ra
1097:             sub          s7, t0, s9
1098:             bge          a1, s1, 1115f
                  sltu         t0, a0, s0
                  slt          t2, zero, s5
                  blt          ra, t3, 1106f
                  addi         s0, a2, 8
                  slti         s7, t0, 549
                  slt          s1, t3, t0
                  nop
1106:             andi         gp, s7, 2040
                  bgeu         t5, t6, 1115f
                  lui          t6, 125977
                  addi         zero, s6, -364
                  ori          a7, gp, 1699
1111:             sltiu        ra, a6, -591
                  nop
                  bgeu         s7, a6, 1130f
                  auipc        a0, 952445
1115:             lui          a0, 930145
                  sra          t5, a4, a2
                  bge          s0, a3, 1121f
                  addi         t6, a1, 1895
                  sltu         s3, t3, t6
                  sll          a1, s1, a5
1121:             slti         ra, a3, -1247
                  auipc        a3, 174030
                  andi         s0, t4, 715
                  xori         a4, t6, 491
                  bgeu         t6, s7, 1136f
                  slli         t6, s8, 11
                  ori          zero, a7, 1706
                  and          a3, s7, s11
                  srai         a3, t2, 5
1130:             slt          zero, s8, a6
                  slli         gp, a5, 12
                  xori         s4, a4, 1995
                  slli         a6, s9, 0
                  slti         t1, a7, 910
                  bltu         s2, a1, 1145f
1136:             srli         a6, s0, 6
                  slt          s5, sp, s5
                  sra          gp, a6, a2
                  add          a1, zero, t6
                  nop
                  srai         a3, a0, 26
                  ori          zero, s4, 834
                  sll          a4, tp, s11
                  nop
1145:             beq          s0, t3, 1160f
                  and          s5, sp, s6
                  srli         s7, t2, 5
                  lui          ra, 84237
                  bne          t3, a4, 1167f
                  xori         a6, a4, -1250
                  sll          t0, t5, t1
                  and          a5, t6, s11
                  and          a4, s5, s1
                  addi         a5, sp, 920
                  sltu         t0, a2, ra
                  srl          s11, s9, s10
                  slti         a6, s1, 461
                  srli         s5, a2, 10
                  nop
1160:             xor          a3, s2, a2
                  add          t4, t6, t3
                  srl          s1, a0, t6
                  blt          s2, s2, 1168f
                  sub          t1, s7, ra
                  xor          s3, gp, t4
                  sltiu        a1, t0, -1064
1167:             slli         t3, s6, 26
1168:             srli         s6, s9, 25
                  addi         a3, a4, -461
                  slli         s10, t1, 17
                  sub          t4, s6, t5
                  xori         a4, s7, 1362
                  bge          a1, s9, 1176f
                  bltu         s2, s5, 1181f
                  xor          t0, tp, t4
1176:             srai         t1, s8, 9
                  slli         a4, a0, 29
                  bltu         tp, gp, 1194f
                  ori          a1, t2, -454
                  or           s10, a2, t4
1181:             srl          a1, s8, a2
                  slli         s4, s4, 17
                  sub          s10, zero, a3
                  sra          t2, t3, s10
                  andi         t2, s6, -1745
                  slli         t3, s10, 17
                  beq          s5, t5, 1204f
                  slli         tp, s0, 20
                  sltu         a7, a5, gp
                  bne          s8, s10, 1207f
                  bgeu         a5, s8, 1202f
                  xori         a5, a5, 1982
                  or           a4, s7, s1
1194:             sra          s0, t0, sp
                  srai         s1, t2, 30
                  sltiu        t5, a3, -537
                  bne          gp, t4, 1207f
                  slli         zero, a5, 21
                  xor          a7, a1, a6
                  sub          s2, s5, ra
                  srli         s11, t4, 19
1202:             bge          s3, s10, 1207f
                  xor          a3, t3, a1
1204:             sll          t2, a0, s10
                  bge          t1, sp, 1223f
                  auipc        t1, 372433
                  la           ra, region_0+764 #start riscv_load_store_rand_instr_stream_10
                  andi         a3, t2, -430
                  lbu          a4, 23(ra)
                  srai         a6, a3, 26
                  lbu          t2, 34(ra)
                  lb           t6, -46(ra)
                  lhu          a0, -46(ra)
                  sltu         t4, t2, gp
                  slli         t6, t3, 11
                  srai         zero, a6, 30
                  lbu          a3, -63(ra)
                  andi         s11, t1, 1708
                  xori         s11, s0, -167
                  lhu          s8, -14(ra)
                  sub          a1, t5, tp
                  addi         a1, s3, -1311
                  sra          s11, s8, s4
                  sb           s4, 31(ra)
                  lbu          s2, -49(ra)
                  sb           a0, 5(ra)
                  sb           t1, 64(ra)
                  srli         a5, t3, 25
                  sw           a5, 56(ra)
                  lh           s10, -38(ra)
                  add          a5, a2, a6
                  sb           t5, -39(ra)
                  sb           s9, -31(ra)
                  lbu          s4, -38(ra) #end riscv_load_store_rand_instr_stream_10
1207:             sub          a1, a0, t3
                  bgeu         s10, s8, 1218f
                  bgeu         a7, a5, 1212f
                  bltu         t6, s4, 1211f
1211:             bge          s10, s6, 1218f
1212:             srai         a1, a6, 9
                  lui          gp, 447483
                  slt          s7, zero, s6
                  add          s8, s3, a1
                  auipc        a7, 373060
                  sltiu        tp, s0, -475
1218:             srli         a3, t4, 21
                  xor          a7, zero, a3
                  xori         t6, a3, 1269
                  blt          s0, s3, 1224f
                  sra          a7, s0, t0
1223:             slli         zero, s11, 12
1224:             sll          s8, a5, a1
                  or           s10, s1, tp
                  add          s7, a5, a1
                  slli         s0, s1, 9
                  bgeu         s9, gp, 1239f
                  sll          s1, a7, sp
                  or           ra, t3, ra
                  bltu         t5, a0, 1248f
                  sltiu        a6, a1, 1825
                  addi         a4, s8, -1856
                  blt          a1, a3, 1246f
                  srl          a0, t1, s3
                  srl          s4, a5, s9
                  sra          s1, s4, s11
                  lui          s1, 840824
1239:             sltiu        s4, a0, 484
                  and          a6, s9, a6
                  sub          s8, a7, tp
                  bne          gp, a0, 1259f
                  or           a1, zero, zero
                  slti         a7, s5, -945
                  srai         s5, s3, 7
1246:             sra          zero, s7, a3
                  sltu         s4, a2, a0
1248:             beq          a6, tp, 1266f
                  bgeu         a1, tp, 1255f
                  andi         t0, s9, -1127
                  add          s3, t4, t0
                  xor          s2, t5, t0
                  srl          a7, t6, a5
                  bge          sp, tp, 1271f
1255:             addi         s10, s4, 314
                  sltiu        s3, t4, 398
                  bltu         ra, t3, 1274f
                  or           t5, a4, tp
1259:             beq          t6, sp, 1260f
1260:             add          s10, s11, t4
                  ori          s5, a4, -607
                  srl          s8, t0, ra
                  sltiu        t1, s5, 1830
                  and          s4, a5, zero
                  sra          s0, gp, t2
1266:             slt          s4, s5, s11
                  bge          s4, a5, 1272f
                  sub          s8, t6, a2
                  srli         s4, gp, 31
                  addi         a3, t6, -1890
1271:             auipc        a3, 288789
1272:             srai         s2, t4, 22
                  addi         t0, ra, -1630
1274:             bne          a2, t0, 1294f
                  ori          a1, t6, -1815
                  sltiu        s6, t5, -1711
                  sra          s7, s1, s2
                  slli         s8, s0, 18
                  bge          a6, a3, 1284f
                  and          s0, s7, s9
                  xor          a6, t0, s10
                  srai         zero, s4, 9
                  xori         s0, tp, -378
1284:             srli         s10, s11, 9
                  blt          a4, s11, 1300f
                  bgeu         s11, zero, 1291f
                  bgeu         tp, a3, 1295f
                  bne          zero, t1, 1292f
                  or           a7, ra, gp
                  sub          t1, tp, a2
1291:             andi         t6, s9, -974
1292:             bltu         a5, t1, 1295f
                  srai         t3, s11, 28
1294:             sll          t1, t2, t0
1295:             or           s4, t3, a5
                  bge          a4, s7, 1312f
                  xori         s10, a3, -2008
                  slli         a3, tp, 1
                  xori         t1, t0, -1050
1300:             sll          s10, a2, s5
                  slli         a6, s7, 0
                  addi         t6, t2, -988
                  auipc        s11, 49110
                  srli         s11, s4, 28
                  andi         t0, s10, -1960
                  and          s1, a0, s4
                  ori          s11, a5, 2033
                  addi         t2, s0, 844
                  srl          t0, a2, a2
                  bne          a7, a1, 1314f
                  sltu         t3, s4, s9
1312:             sra          s11, zero, a7
                  nop
1314:             andi         gp, gp, -1248
                  nop
                  bgeu         a4, t6, 1317f
1317:             nop
                  add          s6, sp, s2
                  srli         t0, t2, 17
                  or           ra, t4, zero
                  sll          zero, s3, a2
                  sltiu        s10, s2, 890
                  blt          s2, zero, 1340f
                  beq          t2, s6, 1325f
1325:             slli         a4, a3, 14
                  slt          t3, sp, s9
                  sltu         s5, s2, s3
                  or           s6, s10, s1
                  bne          s0, a3, 1346f
                  slli         a7, a7, 18
                  slli         s5, t2, 26
                  xor          s4, t5, t3
                  bne          a3, a7, 1336f
                  add          a4, t4, s5
                  slli         t5, a3, 0
1336:             sltu         s0, s5, gp
                  ori          a4, a6, -736
                  xor          a0, s3, s3
                  sll          s6, t2, a0
1340:             bge          t6, a1, 1350f
                  ori          a4, a2, -520
                  beq          tp, s11, 1359f
                  slti         s11, s4, 2024
                  xori         t0, gp, 584
                  bge          s0, t3, 1362f
1346:             sub          a3, s6, t3
                  bne          t2, s7, 1355f
                  bltu         a4, s9, 1363f
                  bge          t1, s0, 1353f
1350:             sub          s0, zero, s7
                  sub          s3, t4, t0
                  bge          a2, t3, 1369f
1353:             nop
                  blt          ra, a2, 1355f
1355:             slt          a3, s5, sp
                  addi         t1, a0, -1532
                  auipc        a3, 597673
                  sra          zero, sp, t2
1359:             sltu         zero, t3, t1
                  beq          s10, tp, 1365f
                  bge          t4, a7, 1364f
1362:             srli         a7, t5, 22
1363:             ori          tp, a2, -984
1364:             bne          a1, tp, 1384f
1365:             slti         s3, s10, 1961
                  sll          a6, t5, zero
                  blt          s7, a0, 1385f
                  srai         a0, t2, 28
1369:             ori          s8, a2, -1986
                  lui          a3, 911047
                  lui          t3, 522766
                  slli         t5, t3, 21
                  slli         ra, a6, 11
                  sltiu        t4, a3, 1605
                  bge          a0, s11, 1378f
                  srli         t6, s5, 23
                  srli         s0, t1, 19
1378:             nop
                  bne          t3, sp, 1385f
                  slti         a6, s11, 10
                  bge          a2, a5, 1386f
                  beq          a2, s2, 1392f
                  bge          a4, s7, 1401f
1384:             bge          a0, s7, 1389f
1385:             and          gp, s10, s9
1386:             srli         s7, a3, 14
                  or           s1, s2, s9
                  sra          s0, s6, a3
1389:             slt          a5, ra, s3
                  addi         ra, a0, 586
                  auipc        t3, 808665
1392:             lui          t0, 701270
                  beq          t1, s2, 1400f
                  add          t6, a0, a5
                  xori         a1, a3, 453
                  addi         s5, ra, -347
                  andi         t1, s11, 314
                  andi         t6, s0, 685
                  bgeu         s10, a4, 1416f
1400:             addi         tp, t5, -910
1401:             addi         zero, a0, -1839
                  ori          gp, a5, 854
                  slt          t1, gp, s6
                  srl          s7, t1, s10
                  slt          s7, zero, s7
                  sltu         tp, s7, gp
                  bge          t5, s7, 1411f
                  bge          zero, a7, 1409f
1409:             lui          t6, 1033491
                  beq          ra, a6, 1415f
1411:             bgeu         a7, a4, 1427f
                  srl          s2, s7, gp
                  srl          a4, zero, t5
                  srl          s11, s5, s0
1415:             bne          s5, s11, 1426f
1416:             addi         s6, tp, 18
                  addi         a7, a3, -700
                  sra          s1, a4, t0
                  srl          ra, s8, s10
                  andi         t5, a7, -266
                  blt          ra, a4, 1432f
                  slt          a0, a1, t4
                  nop
                  xori         s0, ra, 245
                  addi         t6, a4, -525
1426:             sll          t0, t0, sp
1427:             bne          a4, s4, 1439f
                  sltiu        a3, s1, 1075
                  add          t2, a6, a3
                  bgeu         sp, s4, 1436f
                  nop
1432:             blt          t6, a2, 1439f
                  sltu         t0, s6, t4
                  sltiu        t3, s5, 373
                  bne          s4, s8, 1440f
1436:             lui          t1, 707881
                  auipc        s1, 661044
                  addi         s4, t3, 1751
1439:             sll          t6, a2, a5
1440:             andi         tp, s1, -670
                  sltu         s4, t1, a1
                  or           t3, a3, tp
                  sltu         s7, sp, a4
                  lui          t6, 108911
                  blt          s11, s7, 1456f
                  auipc        zero, 199353
                  and          s2, a7, s0
                  add          a1, s4, a6
                  srai         zero, s9, 16
                  sub          s2, s8, zero
                  andi         s7, zero, -1523
                  sltiu        ra, t1, -692
                  and          s6, s0, t5
                  xori         a1, s1, 133
                  sll          s1, t5, a7
1456:             xori         t3, s9, 1943
                  slt          ra, a7, s6
                  nop
                  or           a5, t4, s1
                  beq          t2, a5, 1463f
                  srli         a7, t6, 19
                  slli         a4, t4, 9
1463:             andi         ra, a0, -1565
                  xori         s1, ra, 940
                  srai         a1, tp, 12
                  slli         s7, t4, 1
                  srli         s10, a6, 25
                  andi         t4, s8, 1879
                  blt          t5, t1, 1474f
                  add          a0, gp, gp
                  auipc        zero, 57239
                  xori         tp, a2, 441
                  srai         s4, a5, 18
1474:             sll          a0, sp, ra
                  sra          gp, s3, a2
                  slli         tp, t2, 10
                  addi         a3, t3, -1150
                  srl          a6, s8, s1
                  add          t3, s10, t1
                  sltu         t3, a4, t1
                  blt          a5, s4, 1484f
                  slti         a5, a4, -131
                  sra          tp, s9, a6
1484:             nop
                  addi         s6, a4, 911
                  add          zero, t3, s6
                  bge          t0, t2, 1504f
                  bltu         s2, s11, 1496f
                  srli         s0, a1, 24
                  srli         s4, a2, 13
                  sll          t2, a0, a1
                  bge          a0, gp, 1509f
                  or           a0, s0, a0
                  and          a0, s0, s11
                  bltu         a4, a4, 1513f
1496:             lui          t5, 20517
                  nop
                  add          s6, tp, s2
                  slt          s2, t1, s7
                  addi         s6, zero, -1954
                  beq          sp, ra, 1518f
                  or           a5, zero, s5
                  slt          s8, s0, s6
1504:             bge          s8, s5, 1507f
                  add          a4, a3, s7
                  slli         t1, s9, 12
1507:             sltu         s8, s2, s9
                  xor          ra, a0, s9
1509:             andi         t3, zero, 1482
                  slt          s2, t5, s9
                  slli         t5, t3, 1
                  and          a5, s8, gp
1513:             slli         s1, t2, 22
                  bne          s9, s11, 1515f
1515:             bltu         t0, a0, 1531f
                  sub          s6, s1, t5
                  sra          s7, s9, a0
1518:             sra          s1, s7, s9
                  add          a7, s1, s4
                  bge          a4, t6, 1525f
                  bltu         a3, a4, 1526f
                  beq          s8, t2, 1539f
                  bltu         s4, s0, 1527f
                  nop
1525:             slti         s2, t0, -348
1526:             andi         t1, t5, 1300
1527:             auipc        tp, 968650
                  or           zero, a0, s0
                  ori          s4, t6, -1881
                  srl          s7, s9, s3
1531:             slli         gp, t0, 0
                  nop
                  sra          s6, s11, a7
                  srai         s0, t5, 3
                  slt          a0, a6, t5
                  blt          sp, a3, 1547f
                  ori          a6, t2, -83
                  sltiu        tp, a1, -711
1539:             addi         s4, s7, -1702
                  andi         s6, a7, -1403
                  andi         t4, t6, 1204
                  auipc        a3, 245878
                  blt          s5, a1, 1561f
                  and          s2, a3, ra
                  srli         s4, a6, 10
                  beq          s2, gp, 1566f
1547:             sll          s10, s1, s11
                  ori          s11, s5, -221
                  bge          t1, s3, 1564f
                  add          t2, t2, s10
                  lui          s8, 881811
                  andi         a4, s9, -412
                  bltu         t1, a5, 1554f
1554:             bltu         a6, s5, 1555f
1555:             sltu         t4, a0, t0
                  sll          s0, t3, ra
                  sltiu        s8, s9, 1303
                  sll          a5, s2, zero
                  bge          s1, gp, 1576f
                  and          tp, t6, s2
1561:             addi         t5, t3, 782
                  srli         s2, t0, 10
                  bgeu         s10, s2, 1573f
1564:             srli         s1, s9, 20
                  bgeu         a5, t6, 1575f
1566:             ori          s7, a0, 1249
                  xori         a6, s10, -1449
                  ori          a1, gp, -1270
                  srai         s3, s10, 15
                  slt          s0, t1, s0
                  srli         t0, s10, 19
                  sub          t6, a5, s10
1573:             slti         s8, a7, 470
                  xori         a3, t6, 1890
1575:             sltiu        s2, t4, -1055
1576:             slt          t1, a6, s5
                  sub          s1, s6, s0
                  blt          zero, s10, 1590f
                  blt          zero, t4, 1583f
                  or           s7, s8, s10
                  bltu         s8, t6, 1585f
                  sltiu        t6, s11, 114
1583:             sll          a4, a3, a5
                  bltu         s11, a2, 1585f
1585:             andi         t2, a0, -1447
                  nop
                  slli         t6, zero, 28
                  and          s8, a2, s1
                  sra          gp, s9, a7
1590:             xor          a7, s6, s7
                  ori          s5, s7, -1869
                  sll          s10, s5, s10
                  and          t4, s3, a2
                  and          s6, s9, a7
                  bgeu         t1, a1, 1598f
                  xori         zero, a1, 429
                  xori         a0, ra, -841
1598:             and          t4, t6, t4
                  auipc        s1, 603076
                  slt          a7, t5, s2
                  slt          a3, s9, s10
                  blt          s6, t5, 1613f
                  add          t3, a0, t6
                  or           t0, a6, a7
                  sra          t0, sp, s3
                  addi         a6, t4, 1578
                  bne          s1, ra, 1608f
1608:             slti         s7, s11, -1172
                  nop
                  bge          a5, s5, 1614f
                  slt          s11, s5, a2
                  auipc        s7, 626475
1613:             sll          t5, s8, a1
1614:             beq          a5, t0, 1632f
                  addi         t2, t5, 437
                  slli         t4, t4, 13
                  nop
                  blt          s10, t2, 1621f
                  sub          s7, a1, s0
                  sub          t5, t6, a5
1621:             srai         gp, s3, 27
                  srai         t3, s0, 17
                  ori          s5, s7, -214
                  xor          a0, s3, s4
                  slli         a7, sp, 16
                  slli         s5, a0, 15
                  addi         s5, a1, 606
                  bgeu         s8, s5, 1648f
                  andi         t5, t0, -951
                  blt          s10, t6, 1645f
                  srl          s8, s6, ra
1632:             bgeu         t0, a3, 1633f
1633:             sltiu        s10, a3, -541
                  sltu         t2, t3, t1
                  add          t5, t0, a1
                  sltu         t3, a1, s9
                  auipc        t2, 743375
                  bne          s3, s4, 1655f
                  ori          tp, a6, -1144
                  add          s1, t5, a7
                  bgeu         t2, s5, 1648f
                  sll          t5, sp, s2
                  srai         tp, tp, 31
                  add          a1, s1, t6
1645:             bltu         t0, t1, 1663f
                  sltiu        t1, t1, -115
                  nop
1648:             bne          a5, s2, 1665f
                  xor          s11, a7, s6
                  slli         s8, a5, 20
                  sltu         t0, s7, t2
                  add          t1, s0, t6
                  xori         t3, zero, -301
                  sra          s11, s0, s8
1655:             xor          s11, s4, ra
                  slti         s10, t1, -723
                  auipc        s8, 988448
                  blt          zero, s11, 1664f
                  slti         a3, s11, -1061
                  sra          s6, tp, s11
                  sltiu        a3, a0, 605
                  nop
1663:             srli         a7, t3, 3
1664:             bne          tp, s5, 1680f
1665:             and          a7, t6, a5
                  sub          gp, t1, a4
                  slli         t3, a0, 16
                  andi         a4, a6, -789
                  nop
                  auipc        s6, 158563
                  sltu         s5, a6, ra
                  or           s10, s0, s8
                  auipc        s2, 278403
                  bltu         s6, s7, 1686f
                  sltiu        a1, s6, 834
                  ori          t0, a2, 30
                  bltu         sp, s5, 1694f
                  addi         s1, t4, 1395
                  bne          t2, a4, 1684f
1680:             or           a1, s2, a5
                  or           t0, a2, tp
                  slli         a3, s1, 5
                  addi         s10, s6, -1185
1684:             or           s1, s4, a2
                  beq          s1, s4, 1695f
1686:             add          t1, gp, a3
                  lui          s3, 67573
                  sub          s3, zero, t4
                  blt          t2, tp, 1706f
                  auipc        a7, 734330
                  slt          t6, tp, t3
                  slli         tp, s3, 14
                  slli         s3, a7, 15
1694:             xor          s6, s2, a5
1695:             blt          a3, a6, 1700f
                  srli         a0, t0, 29
                  blt          s1, s1, 1705f
                  nop
                  slti         gp, ra, 1642
1700:             blt          s9, s8, 1711f
                  slli         s4, s2, 11
                  ori          t2, s3, 583
                  or           ra, s6, t5
                  add          s1, a4, ra
1705:             bltu         s9, s10, 1715f
1706:             srai         t3, a0, 25
                  slt          a1, ra, s3
                  add          a0, s4, s3
                  blt          ra, s2, 1714f
                  xor          s2, s4, gp
1711:             sltu         t6, t0, tp
                  sltiu        s2, a6, -602
                  or           a6, t1, a5
1714:             slli         gp, t5, 17
1715:             or           s5, zero, t0
                  slli         tp, s4, 24
                  add          t0, a3, gp
                  xor          tp, sp, t3
                  auipc        t6, 343253
                  lui          s5, 206894
                  bge          a4, gp, 1726f
                  auipc        t4, 434163
                  sll          a0, s6, a1
                  srli         s6, s9, 28
                  slli         a4, s8, 7
1726:             slt          s8, t3, a2
                  bge          t6, s2, 1730f
                  slti         a1, a1, 682
                  srai         t6, s9, 2
1730:             bgeu         a2, s9, 1747f
                  addi         t5, tp, -1070
                  beq          t5, t6, 1749f
                  blt          t3, t6, 1743f
                  slt          s10, s11, s8
                  ori          tp, ra, 319
                  ori          a6, a7, -857
                  add          s3, s10, t3
                  or           gp, gp, t2
                  addi         s6, t5, -753
                  sra          s4, s4, s11
                  sub          s7, s1, s1
                  lui          s8, 858638
1743:             andi         t2, ra, -633
                  or           a7, a1, a2
                  and          s10, s6, s11
                  sltiu        a0, a2, 378
1747:             slti         t0, t3, 1591
                  auipc        a0, 111290
1749:             beq          t4, t2, 1753f
                  add          t3, a3, s6
                  srai         s2, s8, 18
                  slt          zero, a7, a2
1753:             sltu         s7, a6, s9
                  sub          s6, s10, s1
                  xori         s1, t0, -1238
                  bne          t2, t1, 1768f
                  slt          s0, a7, gp
                  add          a1, s4, a5
                  bltu         a0, a3, 1776f
                  bgeu         zero, t2, 1761f
1761:             beq          s0, t6, 1767f
                  bne          t0, s2, 1780f
                  add          a6, zero, zero
                  auipc        t2, 715797
                  beq          s9, a5, 1776f
                  add          a1, s10, s9
1767:             srl          s1, tp, a4
1768:             bge          ra, t3, 1788f
                  sra          a1, a2, s4
                  xor          t1, s0, s5
                  srl          t2, t1, t3
                  xori         a6, t1, -1889
                  addi         a7, s11, -1011
                  slli         s5, s9, 1
                  slli         a4, t0, 31
                  la           s10, region_1+158 #start riscv_load_store_rand_instr_stream_2
                  lbu          s5, -3(s10)
                  or           s8, tp, s3
                  ori          s5, gp, 374
                  add          t3, sp, a7
                  lh           s0, 2(s10)
                  sub          t5, a3, a5
                  sh           a1, 12(s10)
                  slt          s3, a0, s4
                  sub          s6, a2, s3
                  sltiu        s1, tp, -992
                  lbu          a1, -12(s10)
                  or           s4, s0, t2
                  slt          a3, s10, s5
                  srli         s5, ra, 15
                  sltiu        t0, a7, -1611
                  andi         t1, s3, -1153
                  lbu          a7, -13(s10)
                  ori          t2, tp, -1641
                  lb           a0, 16(s10)
                  sra          s2, a4, a4
                  lb           t4, 14(s10)
                  or           gp, sp, t5
                  lh           t5, -8(s10)
                  sub          s7, a1, ra
                  lhu          s11, 8(s10)
                  lbu          s11, 13(s10)
                  sltiu        a5, s11, 2040
                  lh           s0, 8(s10)
                  sb           s7, -3(s10)
                  lb           t1, -13(s10)
                  sb           s10, -15(s10)
                  nop
                  nop
                  srai         t6, s10, 0
                  slt          a1, s10, s10
                  xori         a4, s6, -416
                  auipc        a7, 251921
                  andi         a3, tp, -791
                  lb           t3, 13(s10)
                  lbu          s4, 1(s10)
                  andi         t1, zero, -1240
                  lb           a4, 1(s10)
                  slt          t4, s1, a3
                  lbu          s7, 15(s10)
                  lbu          a6, 7(s10) #end riscv_load_store_rand_instr_stream_2
1776:             sltiu        s7, t4, -1704
                  slti         ra, s2, -644
                  or           a5, a1, a3
                  bgeu         t6, t2, 1784f
1780:             and          t3, s11, s6
                  slli         zero, sp, 26
                  slt          s7, s9, s6
                  bltu         t2, gp, 1790f
1784:             auipc        t4, 808151
                  srai         s1, s1, 23
                  sll          t1, s2, t6
                  auipc        t2, 807391
1788:             or           ra, a5, a2
                  addi         a4, t6, -1156
1790:             add          ra, a6, t6
                  blt          s1, a2, 1794f
                  blt          tp, s9, 1793f
1793:             auipc        t1, 188380
1794:             bgeu         t3, a6, 1812f
                  blt          t4, a4, 1798f
                  sub          t0, gp, t6
                  srl          t1, t6, s2
1798:             srl          s7, a3, t4
                  lui          s8, 899875
                  slli         s7, s3, 21
                  srli         s3, s10, 15
                  srli         a7, s11, 29
                  blt          t1, a0, 1818f
                  srli         s10, s9, 22
                  bltu         gp, ra, 1806f
1806:             blt          s1, s6, 1823f
                  bltu         a5, tp, 1823f
                  addi         t4, a3, -318
                  nop
                  bgeu         s4, a5, 1815f
                  sll          t2, t2, s2
1812:             beq          gp, s10, 1822f
                  bgeu         t5, s2, 1821f
                  sltiu        zero, s9, 1453
1815:             or           gp, a5, s3
                  bltu         s8, a4, 1819f
                  and          a1, s0, ra
1818:             ori          s10, s2, 240
1819:             lui          t4, 106310
                  andi         s11, t5, -681
1821:             nop
1822:             sll          s11, sp, a1
1823:             add          t5, s7, a6
                  blt          s5, s10, 1829f
                  nop
                  sub          t5, t1, t4
                  sltu         t5, s3, a0
                  srli         a5, t4, 25
1829:             bltu         s10, t2, 1840f
                  slli         s2, a1, 24
                  sltiu        t1, s0, 474
                  andi         a5, a2, -756
                  sll          s1, t1, a0
                  addi         a0, t3, 672
                  blt          a5, a0, 1840f
                  xor          a4, s3, t2
                  or           tp, a4, s5
                  slt          s5, a6, s5
                  sltu         a0, a4, t0
1840:             add          s7, s7, a3
                  xori         a0, t4, 895
                  sub          ra, s2, a5
                  bge          s8, tp, 1847f
                  srl          tp, s9, s3
                  sub          a3, a4, s8
                  bgeu         a2, s0, 1863f
1847:             beq          a3, s3, 1864f
                  bge          s9, s0, 1866f
                  slli         s7, a7, 0
                  slti         s1, s4, 1275
                  sra          s1, a0, a5
                  add          s4, t6, t6
                  andi         a7, t0, -1529
                  slti         a4, t6, 1618
                  sub          a3, s8, s10
                  nop
                  auipc        a0, 560743
                  sltu         a4, a1, a6
                  bgeu         a2, a0, 1864f
                  blt          t4, t1, 1877f
                  srli         t5, s11, 28
                  nop
1863:             sll          s11, a7, s10
1864:             addi         a6, s1, -304
                  srai         a6, t2, 14
1866:             andi         a0, a5, -745
                  sltu         s11, t4, a0
                  xor          s4, t2, s2
                  srl          a7, t5, a3
                  ori          t5, t2, 850
                  sltu         s0, a0, zero
                  sltu         t6, s9, t6
                  blt          s5, t5, 1890f
                  xor          s2, s5, ra
                  xor          s6, t5, s7
                  auipc        s11, 921430
1877:             addi         t4, ra, -1761
                  and          t2, s9, s6
                  xori         gp, s7, 1338
                  nop
                  slli         tp, a0, 13
                  bltu         s9, gp, 1886f
                  srl          a4, t0, s11
                  sll          a6, s10, tp
                  sltu         s8, s6, a6
1886:             slt          s11, a0, a5
                  bne          s11, a7, 1907f
                  xor          t5, s11, s9
                  slt          a4, s1, s4
1890:             srli         t5, s0, 24
                  sltu         s11, ra, a3
                  srli         gp, a2, 5
                  auipc        a5, 925699
                  bne          a3, t4, 1911f
                  andi         t5, t6, -747
                  xor          s3, s11, a6
                  bge          tp, sp, 1913f
                  xor          s5, a1, sp
                  srai         s5, s5, 23
                  or           s0, t1, s11
                  bge          t5, ra, 1902f
1902:             srai         s10, a4, 20
                  xor          s2, t2, s6
                  auipc        t5, 406061
                  sltu         s4, s8, t2
                  bne          s0, a5, 1914f
1907:             sub          t0, t6, a1
                  ori          s10, sp, 1345
                  addi         s2, t4, -608
                  xori         s2, s7, -1270
1911:             bltu         a6, s9, 1916f
                  sra          t2, t2, a1
1913:             xori         a1, s3, 1381
1914:             sltiu        a3, t3, 927
                  add          t5, s10, s7
1916:             add          s2, t2, gp
                  add          t3, tp, s7
                  or           s4, sp, s2
                  xor          t5, gp, t3
                  bltu         s6, s3, 1925f
                  xor          s3, a4, t0
                  slli         s4, s4, 27
                  xor          a0, a1, tp
                  slt          gp, t0, t2
1925:             or           a4, zero, ra
                  sub          t3, t3, s0
                  slli         t1, t2, 13
                  slti         tp, sp, 999
                  auipc        s8, 896275
                  andi         a6, ra, 936
                  sub          s7, s2, s7
                  bne          gp, s5, 1949f
                  srai         gp, t3, 26
                  addi         a1, sp, -1019
                  ori          zero, a7, 1471
                  sub          s8, s4, s4
                  xori         s3, s3, -1780
                  sltiu        s8, a0, 1618
                  slt          s8, gp, t3
                  sll          s1, s7, s6
                  xori         s10, a7, 829
                  xori         a1, a2, -1063
                  xori         s4, s7, -1298
                  bne          a2, t3, 1945f
1945:             add          s2, zero, s6
                  addi         s6, s3, -1058
                  ori          s7, sp, -1476
                  nop
1949:             slti         a4, s0, 329
                  beq          s8, tp, 1962f
                  sltiu        tp, t6, -303
                  andi         ra, a0, -396
                  bltu         s8, s4, 1964f
                  add          t6, t0, ra
                  add          t0, s9, a6
                  xor          t0, zero, t2
                  andi         gp, s3, -166
                  beq          a4, a7, 1968f
                  sra          a4, s11, s0
                  addi         t4, a4, 611
                  beq          s5, s8, 1968f
1962:             add          t1, t5, s4
                  bgeu         s8, a4, 1981f
1964:             bgeu         a7, t5, 1981f
                  sltu         a6, a3, s11
                  bgeu         s8, s7, 1976f
                  beq          s3, t2, 1982f
1968:             slli         a0, s5, 30
                  addi         gp, a4, 1645
                  bgeu         s10, zero, 1971f
1971:             auipc        s4, 35313
                  addi         s1, a5, 1113
                  slt          s6, t1, t0
                  blt          s7, s11, 1978f
                  sub          tp, s5, s6
1976:             add          a7, a2, a0
                  andi         s2, t1, 247
1978:             bne          a3, s3, 1989f
                  sltiu        s6, a1, 68
                  bltu         t6, s11, 1983f
1981:             srai         t2, s0, 29
1982:             bltu         zero, s5, 1985f
1983:             srai         s1, a0, 28
                  bge          t1, s1, 1989f
1985:             and          s5, s4, a1
                  beq          t0, t0, 1992f
                  ori          t3, s1, -25
                  sub          s11, a1, s0
1989:             sltu         a4, tp, gp
                  sub          a0, s7, s8
                  sub          t4, t2, t2
1992:             sll          t1, s10, a0
                  srli         s8, t5, 5
                  lui          t3, 538585
                  lui          s10, 403201
                  ori          s2, s11, -1457
                  slli         s0, t1, 14
                  sll          s3, s8, a0
                  blt          gp, a4, 2002f
                  srai         t6, a7, 28
                  sltiu        s5, s2, -1850
2002:             auipc        ra, 43179
                  blt          s10, a6, 2020f
                  auipc        tp, 178525
                  sub          s10, t1, t3
                  xor          a6, s0, s0
                  addi         t0, a6, -956
                  srl          s3, a4, a2
                  sra          s2, a3, a2
                  bgeu         gp, t4, 2011f
2011:             slt          tp, s2, gp
                  slt          tp, s5, s2
                  or           t0, s3, a1
                  bgeu         s9, s6, 2025f
                  bltu         t1, t6, 2032f
                  xori         a5, s8, 508
                  sra          s4, s7, t6
                  slli         s10, s9, 3
                  nop
2020:             xori         a6, a2, -731
                  slti         s0, tp, -157
                  slt          gp, t2, a6
                  slt          a5, s7, s5
                  srl          s7, a0, a3
2025:             nop
                  sltiu        tp, t1, 887
                  add          t4, s5, t3
                  xori         a3, a0, 1779
                  or           a5, s6, s3
                  beq          s9, a6, 2033f
                  slt          zero, s2, tp
2032:             ori          s10, s1, 715
2033:             xor          t3, zero, s9
                  bltu         s11, t2, 2039f
                  add          s6, s6, t2
                  srl          s6, a3, a0
                  slt          s0, s5, s7
                  bltu         a3, a5, 2044f
2039:             ori          s3, t2, -992
                  srli         a7, s1, 17
                  bgeu         s5, s8, 2051f
                  slli         t2, t2, 30
                  bne          sp, t5, 2053f
2044:             sll          s5, t0, t0
                  slti         t2, s9, 750
                  sltiu        s3, zero, 874
                  xori         a4, t1, 553
                  sub          t3, a3, tp
                  and          s7, t1, s3
                  auipc        t6, 308606
2051:             auipc        t3, 471077
                  add          s4, s9, a2
2053:             xori         t1, s0, 450
                  andi         t4, gp, 1392
                  or           s11, a0, zero
                  sra          s0, t6, s10
                  bge          t6, a3, 2058f
2058:             lui          tp, 595488
                  slti         t4, sp, 659
                  ori          t3, tp, 1808
                  sll          a0, t2, t6
                  srli         a7, t6, 15
                  srli         s4, a1, 21
                  or           a0, a2, t3
                  addi         t0, t5, 1739
                  beq          s4, gp, 2071f
                  sub          gp, s6, t4
                  add          a3, s11, s2
                  slti         s0, a1, -1332
                  ori          t0, sp, 870
2071:             sra          t6, a5, s7
                  slli         s8, ra, 20
                  slt          t1, s10, s6
                  bne          a4, s6, 2092f
                  sub          s8, tp, t6
                  beq          s11, a4, 2096f
                  sltu         zero, a6, a3
                  add          a7, tp, a7
                  sub          t0, s4, a6
                  srl          t3, s6, s11
                  srl          a0, s8, a2
                  sltiu        a3, ra, 845
                  slli         t0, a7, 8
                  sltu         a6, ra, a3
                  sltiu        gp, t0, 186
                  sll          gp, s2, s1
                  slt          s0, t0, a5
                  bge          s6, s7, 2093f
                  xor          tp, s9, a5
                  sltu         t4, s3, s3
                  nop
2092:             sub          s1, a0, s11
2093:             sll          a4, a0, a0
                  blt          s9, a0, 2097f
                  ori          s7, sp, 1110
2096:             bge          ra, zero, 2114f
2097:             xori         s10, zero, -1321
                  bne          a7, s2, 2115f
                  bltu         s6, a1, 2114f
                  beq          s2, a7, 2101f
2101:             and          t2, s9, s0
                  and          t5, t2, a1
                  bltu         ra, s6, 2111f
                  bgeu         s3, s8, 2108f
                  ori          s7, s9, 675
                  bgeu         t3, t5, 2122f
                  bne          a2, a1, 2114f
2108:             nop
                  or           s10, t6, gp
                  bne          t6, s3, 2127f
2111:             blt          ra, s7, 2122f
                  beq          s5, s11, 2124f
                  bge          s3, a2, 2117f
2114:             srai         s6, a4, 11
2115:             ori          t5, a7, 1758
                  sltu         s4, t5, a6
2117:             srl          t1, t1, t4
                  slt          s0, s3, tp
                  sltiu        a7, t1, 1146
                  sltiu        a4, gp, -1236
                  srl          s10, a2, a5
2122:             andi         t6, s7, -1734
                  auipc        t1, 295705
2124:             beq          a2, s11, 2127f
                  bne          s7, a3, 2142f
                  slti         tp, t0, -285
2127:             sll          t3, s9, tp
                  addi         s8, t4, -1821
                  slt          s0, ra, t0
                  sltiu        ra, t1, 1569
                  slt          s6, a1, gp
                  bgeu         t2, s10, 2137f
                  andi         a1, t0, -1546
                  sltu         s10, t1, a1
                  andi         t2, t3, -1444
                  srai         t2, s0, 26
2137:             blt          a0, t2, 2140f
                  add          a7, s8, t6
                  or           t1, a7, t6
2140:             bgeu         s4, t0, 2144f
                  bgeu         t4, t0, 2142f
2142:             srl          s1, s3, s0
                  sll          s7, s5, a5
2144:             sll          a1, s3, a1
                  bltu         s5, a4, 2156f
                  lui          s8, 444081
                  and          s1, s0, a5
                  sll          gp, gp, zero
                  andi         s11, t4, -1766
                  srli         a1, t1, 6
                  srli         a5, zero, 31
                  slt          a7, t3, a0
                  bge          s0, s1, 2161f
                  sll          zero, s10, a5
                  beq          a1, s2, 2165f
2156:             sra          s3, gp, zero
                  bltu         s6, a7, 2162f
                  sll          s11, a0, t3
                  srli         ra, t0, 9
                  xori         t5, ra, -430
2161:             blt          t2, zero, 2179f
2162:             srai         t6, s10, 11
                  bne          t6, a7, 2174f
                  nop
2165:             nop
                  bgeu         a5, a2, 2171f
                  xori         a5, sp, 1237
                  blt          sp, a5, 2185f
                  and          s10, a6, tp
                  andi         s6, sp, 859
2171:             beq          t6, s11, 2188f
                  ori          s1, t2, -58
                  bge          a1, s0, 2185f
2174:             slti         t6, a0, 641
                  andi         s11, t1, 81
                  xori         s10, a2, 1648
                  srli         s5, tp, 10
                  xor          s10, a2, t4
2179:             nop
                  bgeu         s0, s7, 2181f
2181:             sra          s0, a4, sp
                  add          s0, s10, s10
                  slti         a7, t0, 1539
                  auipc        s3, 20188
2185:             srai         s4, t0, 13
                  nop
                  or           s3, t5, s2
2188:             sll          s10, gp, a2
                  srl          a4, sp, t5
                  or           a5, a6, s3
                  nop
                  blt          zero, s11, 2195f
                  blt          t2, a0, 2198f
                  srl          s8, s3, a0
2195:             sub          a0, a2, gp
                  slli         s2, s5, 7
                  srai         s5, a7, 31
2198:             slti         a5, t0, -426
                  slti         t5, tp, 1396
                  srai         s3, a1, 2
                  add          t3, s1, s11
                  srl          s7, s8, s5
                  sra          s5, a0, a5
                  lui          s3, 640606
                  srl          tp, s5, t1
                  slt          s0, s8, a6
                  srli         s4, a7, 14
                  slt          s6, s2, s8
                  ori          t5, t4, 15
                  andi         a6, a4, -1363
                  srai         s3, s7, 12
                  add          gp, a3, a4
                  sltu         a5, a2, gp
                  bne          s4, s3, 2229f
                  slt          s2, a2, t1
                  slli         a5, tp, 30
                  slti         s1, sp, 553
                  slli         s7, s0, 19
                  srai         ra, s7, 16
                  slli         a3, s9, 3
                  sll          a0, s6, zero
                  sltu         s2, s4, a6
                  bge          s5, s8, 2240f
                  bne          t1, t2, 2241f
                  srl          t1, sp, a6
                  bltu         sp, a2, 2230f
                  bne          t1, zero, 2230f
                  sub          tp, zero, t6
2229:             lui          t2, 952618
2230:             sltu         t2, s1, s2
                  bne          t0, zero, 2238f
                  or           a7, a5, a5
                  slt          gp, s8, ra
                  sltiu        s2, s2, -16
                  bne          s2, s3, 2245f
                  srl          tp, a6, a3
                  and          zero, s10, s1
2238:             sll          a3, sp, s2
                  bne          t0, s3, 2257f
2240:             slt          s2, a0, zero
2241:             bltu         s9, ra, 2246f
                  bge          a4, s4, 2243f
2243:             add          a0, t0, tp
                  xori         s6, tp, 1847
2245:             sub          a4, a5, a5
2246:             nop
                  andi         a3, t6, 1182
                  addi         s6, t5, -689
                  auipc        t1, 742920
                  blt          s7, t3, 2266f
                  bltu         t4, t3, 2268f
                  ori          a5, t6, -541
                  slt          a7, tp, a4
                  sub          t4, s10, tp
                  add          tp, a2, s6
                  xori         t3, ra, -213
2257:             sra          t2, sp, s9
                  sra          a0, a5, a2
                  bge          a1, a5, 2279f
                  sub          gp, s1, tp
                  srai         t4, ra, 1
                  add          s0, s5, sp
                  sub          s4, s2, a1
                  add          t4, t2, t4
                  slti         t4, a0, 1765
2266:             and          a6, s11, a2
                  andi         a3, tp, -672
2268:             bgeu         ra, a6, 2274f
                  bltu         a6, s9, 2270f
2270:             xori         s2, t5, -2020
                  slt          a4, s11, s5
                  blt          s10, s2, 2273f
2273:             bltu         sp, s1, 2277f
2274:             blt          s10, t6, 2277f
                  sltu         s10, s6, tp
                  nop
2277:             xor          tp, zero, t5
                  lui          a3, 145379
2279:             bltu         a0, s2, 2285f
                  slt          a4, a2, t6
                  srli         t6, s10, 14
                  nop
                  ori          s8, a0, 1199
                  srl          a3, gp, zero
2285:             lui          s10, 1037649
                  sll          a6, s9, a7
                  beq          gp, t5, 2304f
                  add          gp, s7, s2
                  add          t6, t2, a1
                  ori          t2, a6, 942
                  xor          s2, s10, sp
                  xor          zero, a2, a0
                  andi         t4, a7, -1096
                  sltiu        a5, s9, 521
                  ori          zero, a4, -2002
                  beq          sp, s1, 2308f
                  xori         s0, t3, -849
                  bltu         s3, s3, 2315f
                  blt          s5, t5, 2304f
                  addi         a6, t4, 722
                  nop
                  xor          t0, s0, a2
                  bne          t0, s5, 2308f
2304:             xori         t6, zero, 794
                  sltiu        a4, t2, 1882
                  slti         gp, s4, 1844
                  auipc        s2, 406916
2308:             xor          t0, t6, s6
                  beq          s11, s11, 2317f
                  auipc        s8, 844248
                  bgeu         s4, ra, 2318f
                  lui          s7, 12718
                  auipc        s0, 833333
                  bne          t5, t2, 2334f
2315:             beq          zero, a5, 2318f
                  sra          s4, s10, t6
2317:             xor          a4, sp, gp
2318:             slt          s5, zero, s1
                  blt          s6, t6, 2337f
                  sra          a3, s2, a4
                  add          s10, t2, a3
                  bge          t0, t4, 2333f
                  sra          s3, s3, t5
                  sltu         t2, a3, s0
                  slti         t5, a0, 769
                  bgeu         t3, zero, 2331f
                  sltu         s1, zero, gp
                  sll          zero, t5, s8
                  andi         s5, tp, 827
                  bgeu         a3, s9, 2347f
2331:             slti         a7, t0, -2010
                  bltu         s3, a2, 2335f
2333:             slt          s3, a0, gp
2334:             ori          s0, zero, -735
2335:             srli         s3, t2, 19
                  sra          t0, t6, a6
2337:             srai         t5, a7, 4
                  andi         ra, s10, -1741
                  sltiu        t4, a1, -2
                  add          t1, t2, tp
                  beq          s6, s6, 2358f
                  and          t0, zero, a5
                  auipc        s7, 417985
                  slli         s2, zero, 9
                  slli         s1, ra, 30
                  or           zero, t6, a7
2347:             or           s3, s10, s1
                  bgeu         gp, zero, 2358f
                  slti         t2, s7, 629
                  auipc        s10, 449485
                  addi         t2, a5, 1235
                  xori         t5, a7, -889
                  addi         s0, ra, -1097
                  bge          a2, t0, 2358f
                  slli         s4, s2, 15
                  sra          t2, t2, s2
                  xori         a5, s6, 290
2358:             sra          t6, a2, zero
                  xori         s8, a2, 1102
                  srai         tp, sp, 26
                  and          s3, a6, tp
                  sub          s5, ra, sp
                  sltiu        s8, s5, -1478
                  auipc        tp, 770481
                  bge          a2, s7, 2370f
                  or           s7, s6, a3
                  addi         t4, zero, -1475
                  auipc        s3, 730932
                  slti         a4, s6, 226
2370:             lui          s1, 298393
                  xori         ra, t0, -940
                  sub          s6, t3, a5
                  bne          s8, zero, 2388f
                  bne          a3, t5, 2391f
                  slt          a4, s11, t6
                  slli         s8, t6, 23
                  beq          a2, a6, 2378f
2378:             sltiu        s4, s4, 258
                  sll          s6, s11, a6
                  slt          a3, s2, zero
                  bge          zero, a5, 2397f
                  addi         s0, a4, -1014
                  blt          s9, tp, 2401f
                  bne          a6, a4, 2394f
                  and          t2, a1, a6
                  andi         s11, sp, 1605
                  slli         t2, s1, 11
2388:             beq          a7, s3, 2399f
                  ori          s7, a2, -62
                  sra          a0, zero, s6
2391:             bne          ra, s7, 2409f
                  sub          gp, t3, a0
                  srl          s6, tp, s5
2394:             auipc        s0, 111632
                  slli         t2, s0, 16
                  slli         a1, t0, 16
2397:             andi         s2, a1, -1839
                  addi         a3, a2, 201
2399:             sll          s7, s1, a1
                  bge          sp, a5, 2420f
2401:             sltu         tp, t1, s8
                  or           t6, a4, a6
                  beq          s5, zero, 2409f
                  xor          t3, t0, gp
                  ori          a7, a1, 533
                  sltiu        s7, a2, -1848
                  xor          s5, t6, a7
                  add          t0, s0, a7
2409:             ori          ra, t4, 1857
                  xor          a3, t6, a0
                  xori         s8, a1, 1370
                  xor          t4, s9, s10
                  sltu         t0, a2, s5
                  and          t5, s1, t6
                  srli         s10, gp, 11
                  addi         a4, zero, -693
                  sll          a5, a1, a4
                  xori         s11, s5, 951
                  blt          a5, a5, 2424f
2420:             slli         a0, a5, 22
                  srai         t4, a4, 21
                  sltiu        ra, tp, 622
                  andi         s3, t5, 420
2424:             bgeu         a7, s10, 2435f
                  lui          a0, 338357
                  slt          s3, t4, a2
                  sltu         a7, t6, s8
                  bgeu         t2, a0, 2443f
                  add          s2, t6, a1
                  srl          t3, a4, ra
                  srai         a6, s11, 9
                  sltiu        a3, s10, 1394
                  xori         zero, a6, -596
                  slti         gp, a7, -1767
2435:             sltiu        gp, tp, -1021
                  xori         t3, s10, -192
                  or           s11, a0, s4
                  nop
                  slti         a3, tp, 1518
                  slt          t1, s11, s9
                  add          s1, gp, ra
                  slt          tp, sp, t5
2443:             slti         a4, zero, -306
                  ori          s10, s8, 1731
                  bne          a2, t0, 2450f
                  xor          t6, s7, s8
                  bge          s5, sp, 2465f
                  sltiu        s2, s11, -992
                  addi         a5, t0, -55
2450:             sltiu        t0, t1, -1526
                  slti         a4, s3, -1377
                  auipc        zero, 14796
                  xori         a3, s7, 1535
                  srl          a4, s4, a5
                  srl          s5, s1, a2
                  bge          t2, s1, 2464f
                  bgeu         s11, t0, 2474f
                  lui          tp, 888608
                  bne          s7, s8, 2464f
                  lui          t5, 187895
                  beq          gp, s6, 2473f
                  sll          zero, a7, s9
                  andi         s3, zero, 678
2464:             sltu         t6, s1, ra
2465:             or           zero, t1, s7
                  beq          s11, tp, 2476f
                  slt          s0, s10, s9
                  bge          t0, t0, 2479f
                  beq          s3, s9, 2486f
                  and          s3, sp, zero
                  nop
                  sltu         s1, t0, gp
2473:             srai         a1, sp, 22
2474:             xori         a4, t3, -1391
                  sltu         t5, a3, s11
2476:             srl          tp, t2, a0
                  xori         a1, t3, 879
                  bne          s10, gp, 2495f
2479:             srl          t4, a2, t0
                  slti         s6, t0, -294
                  or           s7, s3, s10
                  sll          tp, a5, a7
                  add          t2, a6, s4
                  bne          s10, s2, 2501f
                  addi         s10, a1, -1390
2486:             slli         a4, a0, 4
                  sub          s8, s3, t1
                  or           t1, a2, t2
                  and          gp, t5, t6
                  blt          s6, gp, 2491f
2491:             bgeu         s3, t4, 2496f
                  add          s5, s8, ra
                  ori          s8, t4, -451
                  beq          a4, a1, 2511f
2495:             sra          t4, gp, t1
2496:             addi         s0, t4, -504
                  bne          t1, t0, 2500f
                  bne          s9, t0, 2505f
                  sra          t4, a2, t4
2500:             addi         a1, zero, 1033
2501:             auipc        s5, 31305
                  and          s2, t5, a5
                  sub          s6, s9, sp
                  add          s6, s4, s0
2505:             slli         t1, t6, 21
                  andi         a7, s8, -224
                  addi         s0, gp, -629
                  srl          s3, s7, a6
                  or           ra, t6, a6
                  srai         a6, t5, 31
2511:             beq          t3, a5, 2512f
2512:             or           s0, s11, t3
                  bltu         t4, t0, 2514f
2514:             addi         t4, s8, -1437
                  add          tp, s0, t2
                  auipc        a6, 38585
                  bltu         t1, a4, 2527f
                  or           s4, a7, s0
                  andi         ra, s6, -577
                  lui          s8, 148675
                  beq          s0, s1, 2524f
                  sub          t6, s2, s8
                  srai         s3, t2, 19
2524:             or           s11, s11, a2
                  nop
                  srli         s4, t4, 29
2527:             bne          a3, t3, 2531f
                  sub          s3, t5, tp
                  sltu         t3, s1, t6
                  slt          a4, t3, t1
2531:             blt          s1, sp, 2534f
                  slt          s2, a2, s7
                  add          s5, a5, s8
2534:             sltu         t0, a4, gp
                  slti         a0, a1, -479
                  blt          s9, t6, 2540f
                  add          s5, a3, s4
                  sll          a6, s1, t6
                  beq          s0, s9, 2555f
2540:             sll          a3, a2, gp
                  sltiu        s2, s4, -679
                  add          s6, gp, t2
                  andi         zero, s6, -388
                  xor          t5, t4, a7
                  bgeu         a1, t4, 2550f
                  srl          a4, s5, t4
                  xor          a3, s8, a6
                  bne          zero, s8, 2560f
                  andi         t2, sp, 1383
2550:             xor          a7, gp, tp
                  add          a5, tp, a6
                  sltiu        s11, t1, 1327
                  bgeu         a3, s6, 2558f
                  andi         s7, a6, 1962
2555:             lui          t5, 1028557
                  srai         t5, a7, 10
                  xori         a3, a1, 1749
2558:             sltiu        gp, t5, 123
                  xor          t0, tp, s6
2560:             slti         t2, t3, -582
                  sltiu        s6, a6, -802
                  auipc        s1, 117602
                  xori         t2, gp, 399
                  slt          a4, tp, a5
                  add          s11, tp, gp
                  xori         a5, s1, 2031
                  beq          a6, s4, 2572f
                  or           s7, a6, t0
                  andi         a5, a3, -1710
                  srl          zero, a6, s8
                  xor          s3, a6, t3
2572:             bge          s8, a3, 2589f
                  srli         a3, s6, 31
                  sub          a0, s10, t2
                  add          s0, s4, t0
                  auipc        s7, 357495
                  bltu         t4, a4, 2588f
                  srli         s10, s4, 0
                  bgeu         t3, s11, 2580f
2580:             sltiu        a5, ra, -816
                  bltu         s2, s1, 2584f
                  bgeu         t2, t6, 2592f
                  blt          gp, s5, 2587f
2584:             slli         s11, t5, 2
                  and          t4, s5, t2
                  xori         s2, t6, -972
2587:             srl          s2, s8, s0
2588:             srai         s8, tp, 16
2589:             slti         t0, a1, -746
                  bne          s0, t5, 2607f
                  sltu         t6, a4, a3
2592:             bne          s0, s11, 2602f
                  bne          s5, s6, 2594f
2594:             addi         t2, t5, 1661
                  bne          s6, t6, 2600f
                  slli         s6, t2, 1
                  srli         a0, s2, 26
                  lui          tp, 229979
                  bgeu         t6, a5, 2606f
2600:             slt          tp, s0, t2
                  bge          s7, s2, 2618f
2602:             beq          zero, a6, 2619f
                  sltiu        tp, a6, 1954
                  bltu         s3, s3, 2615f
                  or           ra, gp, s3
2606:             addi         t1, tp, 1945
2607:             xor          t2, a2, t3
                  slti         s3, s9, 556
                  sltiu        s5, gp, 1760
                  sltiu        a1, t5, -1484
                  sltu         ra, a7, s7
                  la           s4, region_1+1862 #start riscv_load_store_rand_instr_stream_12
                  or           a3, gp, a7
                  lbu          s1, -1240(s4)
                  sltiu        gp, s6, -1644
                  ori          t3, s3, -215
                  lbu          t5, -1659(s4)
                  lbu          s11, -1624(s4)
                  lhu          t2, -924(s4)
                  lui          s10, 847639
                  sb           t5, -586(s4)
                  srli         s5, s6, 25
                  srai         gp, s2, 7
                  lh           tp, 98(s4)
                  lui          s3, 640932
                  sh           s3, -1600(s4)
                  sh           ra, -142(s4)
                  add          s8, s4, s4
                  sltu         s0, s5, s8
                  lbu          a7, -307(s4)
                  sw           t2, -1190(s4)
                  lhu          a0, 40(s4)
                  and          s5, zero, s6
                  sb           s0, -1225(s4)
                  auipc        a5, 32361
                  srai         t6, sp, 7
                  xori         t1, a2, -824
                  xor          a4, s3, t1
                  lh           a7, -296(s4)
                  sltiu        a6, sp, -616
                  lhu          gp, -1148(s4)
                  addi         t1, a3, 68
                  sub          s6, s5, a3
                  lb           t4, 33(s4)
                  srai         t0, t0, 27
                  sb           a3, -413(s4)
                  sh           a0, -204(s4)
                  sll          ra, t3, t3
                  srl          t5, a4, gp
                  lb           t3, -1814(s4)
                  lhu          a7, -1252(s4)
                  sb           s9, -607(s4)
                  sb           a0, 23(s4) #end riscv_load_store_rand_instr_stream_12
                  or           t3, s1, s4
                  sra          t6, ra, t6
                  srl          s1, s4, s8
2615:             bltu         a4, s7, 2633f
                  sub          a3, s10, zero
                  sll          t1, a7, s1
2618:             nop
2619:             srli         gp, sp, 19
                  sltu         t2, t0, a5
                  sltiu        t3, s2, -1681
                  and          t5, zero, s11
                  bltu         t0, s6, 2639f
                  sltu         s1, s9, s1
                  slli         a7, s10, 31
                  ori          zero, zero, -1857
                  nop
                  or           gp, t5, s3
                  or           tp, t5, tp
                  srli         t2, t4, 25
                  slti         a6, a3, -797
                  andi         a4, a4, 1946
2633:             nop
                  srai         gp, a1, 30
                  blt          t0, zero, 2650f
                  sltiu        zero, t4, -1663
                  slt          tp, t2, t2
                  slli         gp, s11, 25
2639:             xori         ra, t6, -1234
                  blt          a0, t0, 2643f
                  srai         s11, a2, 15
                  sll          a4, a2, s0
2643:             srl          s2, s7, ra
                  auipc        t4, 891093
                  bgeu         t0, s2, 2649f
                  addi         a3, gp, 55
                  addi         ra, ra, 885
                  andi         gp, tp, 1253
2649:             srl          a4, a6, t6
2650:             auipc        t1, 583471
                  sll          s6, a4, s11
                  andi         t4, t2, -1205
                  srai         s1, a7, 28
                  lui          s2, 619680
                  sll          s8, a1, t2
                  bltu         t0, t1, 2676f
                  nop
                  blt          s4, s3, 2664f
                  sltiu        t3, t6, -1595
                  bgeu         a1, t0, 2668f
                  or           t3, tp, t1
                  xor          s11, s5, s1
                  xori         s5, tp, -56
2664:             or           t5, a5, t1
                  bgeu         s2, tp, 2683f
                  srl          s7, s11, s1
                  bge          a7, ra, 2684f
2668:             nop
                  srl          s8, t6, sp
                  srl          a0, s10, s8
                  beq          gp, t3, 2672f
2672:             sltiu        a3, s1, 1038
                  xori         s4, s1, -60
                  xori         t0, a2, 1237
                  auipc        a6, 393174
2676:             auipc        zero, 649803
                  andi         tp, s4, 465
                  slti         a1, gp, 1542
                  lui          s10, 8908
                  or           zero, tp, s9
                  slti         zero, t1, -9
                  slti         s8, zero, 1370
2683:             sltiu        s0, t0, -2042
2684:             sltu         s7, ra, s9
                  xori         t3, a5, -922
                  add          s0, t3, a1
                  addi         a1, a3, 1783
                  srl          s2, s6, t1
                  sltu         s3, s2, tp
                  slt          t2, t5, t2
                  addi         s0, s6, -1237
                  slt          a1, t2, a3
                  srl          a4, s7, s1
                  bgeu         a7, a2, 2697f
                  bne          s5, t2, 2710f
                  blt          t0, s2, 2713f
2697:             lui          zero, 260174
                  or           a6, t1, a3
                  slt          s3, s6, t0
                  sll          t5, a1, t0
                  xori         a0, a6, -139
                  xor          s10, s6, s2
                  bltu         a6, t2, 2708f
                  beq          s1, s6, 2720f
                  bltu         t0, sp, 2716f
                  sll          s7, tp, t1
                  bne          t5, a3, 2724f
2708:             blt          a0, gp, 2718f
                  ori          s7, a0, -1924
2710:             slti         s1, s1, -736
                  xor          t1, t6, s7
                  auipc        a4, 849826
2713:             or           s8, s6, t5
                  blt          zero, zero, 2718f
                  bne          a5, s6, 2732f
2716:             srli         t2, zero, 7
                  lui          a0, 518085
2718:             beq          s7, t5, 2724f
                  lui          s11, 299559
2720:             addi         a1, s9, -1047
                  bge          s10, tp, 2738f
                  nop
                  sll          t6, s2, s5
2724:             bne          tp, a1, 2741f
                  bltu         a6, s9, 2732f
                  xor          s6, gp, a4
                  sll          a0, gp, tp
                  beq          s11, t4, 2731f
                  nop
                  ori          a1, tp, -445
2731:             blt          t3, sp, 2735f
2732:             addi         ra, s10, 1759
                  slt          a5, t1, t4
                  sll          s11, s4, s11
2735:             slti         s10, s3, -488
                  sub          s4, ra, s5
                  add          s2, tp, zero
2738:             slti         s2, s0, 47
                  bgeu         s8, a5, 2744f
                  blt          t3, s0, 2745f
2741:             lui          a4, 782074
                  slti         s2, a4, -37
                  lui          s1, 565161
2744:             blt          t0, a4, 2752f
2745:             lui          s10, 505061
                  or           s6, a4, t1
                  andi         s8, t0, -1438
                  slti         a1, tp, -1602
                  slti         ra, t0, 1557
                  lui          a1, 64402
                  bne          s5, t4, 2761f
2752:             auipc        s2, 967686
                  blt          s0, t4, 2758f
                  srli         s1, a1, 18
                  xori         a0, t6, 1174
                  bge          s0, s10, 2759f
                  xor          t3, gp, a0
2758:             ori          ra, s6, 1874
2759:             and          s7, t2, s2
                  sub          t2, s1, a7
2761:             sra          a4, t4, t0
                  bltu         gp, a7, 2780f
                  xor          s4, s1, t6
                  andi         s2, a6, 1853
                  auipc        t3, 523103
                  add          a5, t5, ra
                  srai         s0, t5, 28
                  and          t6, t5, a3
                  nop
                  nop
                  sra          s5, t0, s3
                  slli         t3, s2, 21
                  slt          t5, s3, a5
                  sltu         ra, s10, s11
                  sra          s7, a5, a4
                  or           s1, a0, s4
                  beq          a1, s9, 2789f
                  slli         a0, t1, 31
                  lui          tp, 371225
2780:             slti         s11, s6, 1890
                  bne          t6, ra, 2784f
                  blt          ra, t3, 2783f
2783:             beq          t5, a0, 2794f
2784:             srai         t3, t2, 6
                  sltiu        a6, s7, -1075
                  blt          t6, t1, 2787f
2787:             sll          a4, t1, a4
                  slt          gp, s8, zero
2789:             srli         s7, a4, 22
                  sra          t6, s8, s4
                  sltiu        tp, zero, 784
                  xor          t1, sp, t1
                  sltiu        a4, gp, -1328
2794:             and          s5, tp, t1
                  lui          a1, 215317
                  slti         t3, t1, -1332
                  la           tp, region_0+1744 #start riscv_load_store_rand_instr_stream_15
                  auipc        s2, 782034
                  lhu          t0, -4(tp)
                  xor          t0, t2, s0
                  lhu          zero, 2(tp)
                  sll          s10, t4, s0
                  lbu          s7, 3(tp)
                  sll          gp, t5, a0
                  lb           s10, 10(tp)
                  lb           t6, 11(tp)
                  sb           s7, 6(tp)
                  sb           s1, -5(tp)
                  lbu          s6, 15(tp)
                  and          t3, t0, s3
                  andi         s10, gp, 1948
                  addi         t3, s2, 642
                  auipc        zero, 189004
                  sb           s2, 8(tp)
                  xori         s7, a4, -531
                  slt          s3, a1, s2
                  or           s8, a1, s3
                  lbu          s11, -13(tp)
                  xori         t4, ra, 225
                  sltiu        t5, t2, 1591
                  sll          s0, a2, t1
                  xor          a7, s6, s6
                  lui          a6, 373392
                  lhu          a4, -2(tp)
                  sra          a1, a3, t2
                  add          ra, t1, sp
                  sltu         s3, t0, t3
                  slli         t3, s3, 24
                  lbu          t1, 8(tp)
                  auipc        gp, 827957
                  sub          s5, tp, t5
                  sra          ra, a0, s2
                  sb           s7, 1(tp)
                  lb           s6, -6(tp)
                  lb           s3, 1(tp)
                  sltiu        t2, a5, 193
                  lb           a6, 14(tp)
                  sb           a1, 11(tp) #end riscv_load_store_rand_instr_stream_15
                  bgeu         a2, s8, 2817f
                  srl          s1, a6, s11
                  bgeu         t0, s2, 2817f
                  andi         t6, t2, -1852
                  and          s5, s8, a4
                  addi         t1, a7, 2000
                  or           a1, a1, s8
                  srai         s5, gp, 18
                  addi         s3, a1, -578
                  xor          a3, t5, t0
                  sltiu        t4, a7, 882
                  bne          a0, s6, 2809f
2809:             auipc        s2, 667292
                  sra          t1, s3, a1
                  sltu         a7, a3, a6
                  slt          a7, a1, a6
                  auipc        t1, 535170
                  sub          s7, tp, s3
                  slt          s2, s11, a0
                  la           a1, region_0+1204 #start riscv_load_store_rand_instr_stream_21
                  nop
                  slli         t6, t1, 11
                  lb           s6, -24(a1)
                  add          zero, t6, a0
                  lh           a7, -22(a1)
                  lb           t1, 35(a1)
                  and          s4, s5, a5
                  lb           ra, 45(a1)
                  lb           t5, 11(a1)
                  or           tp, gp, s3
                  lh           s4, -54(a1)
                  nop
                  lhu          s7, 56(a1)
                  sb           a3, 3(a1)
                  nop
                  lb           gp, -41(a1)
                  sb           tp, 13(a1)
                  xori         s10, t5, -701
                  lbu          s5, -22(a1)
                  sb           gp, 29(a1)
                  sb           t1, -62(a1)
                  slti         t4, gp, -1623
                  add          s11, a0, a3
                  lbu          s5, 11(a1)
                  sltiu        a0, t4, 892
                  lbu          t5, -18(a1)
                  nop
                  sb           t3, -50(a1)
                  nop
                  sh           a2, -28(a1)
                  lhu          s0, 50(a1)
                  srl          t2, a0, sp
                  nop
                  srai         tp, tp, 23
                  sh           a3, -46(a1)
                  slti         a0, s8, -1180
                  srl          s11, s9, t2
                  lbu          s3, 39(a1) #end riscv_load_store_rand_instr_stream_21
                  beq          sp, s9, 2821f
2817:             sltu         a5, s10, a4
                  slt          s5, s10, a1
                  bltu         t1, s8, 2835f
                  srl          a4, s3, a0
2821:             srli         s2, tp, 3
                  lui          s6, 564040
                  bgeu         a5, s10, 2840f
                  sll          a4, s2, a0
                  addi         t4, s0, 555
                  beq          zero, gp, 2843f
                  bne          s8, s1, 2832f
                  auipc        s6, 98608
                  sub          s1, s0, s5
                  sub          t3, t1, a6
                  or           a5, a6, s1
2832:             slt          t6, s10, s11
                  beq          a2, s4, 2834f
2834:             srli         a0, t1, 18
2835:             blt          a6, zero, 2852f
                  bgeu         t0, s3, 2839f
                  srli         a3, a3, 3
                  xori         gp, s11, -2026
2839:             slti         t5, a4, 462
2840:             srl          s3, t1, s4
                  slt          t3, s0, s6
                  bge          gp, s4, 2853f
2843:             slti         a6, t3, 1595
                  bge          a2, a1, 2862f
                  slli         t1, t3, 19
                  sub          a5, t3, t0
                  slti         s7, s2, -1424
                  sub          a6, t4, t0
                  ori          a3, a7, 1670
                  bne          t3, s10, 2857f
                  sll          s10, t0, t4
2852:             andi         a1, t4, -1186
2853:             nop
                  or           s3, t6, a0
                  la           t4, region_0+144 #start riscv_load_store_rand_instr_stream_0
                  srl          t2, t3, s7
                  slt          a4, s6, t0
                  or           a3, s8, s4
                  sb           a0, -23(t4)
                  sltiu        t0, t4, -2004
                  lhu          a1, 30(t4)
                  sll          ra, a4, ra
                  lbu          gp, -23(t4)
                  sub          t5, s9, s8
                  and          a7, a3, a0
                  sub          s3, s0, a6
                  sb           t4, 31(t4)
                  addi         ra, t3, -634
                  sub          s8, t1, a6
                  sw           sp, 8(t4)
                  add          a0, s5, s11
                  sh           s11, -32(t4)
                  auipc        zero, 6836
                  lbu          ra, -26(t4)
                  nop
                  lhu          s11, -56(t4)
                  lh           s8, -22(t4)
                  slt          t6, s5, tp
                  sra          t6, s4, t5
                  lb           t1, 2(t4)
                  slt          a1, s7, zero
                  addi         a1, s1, -1711
                  lbu          t1, -9(t4)
                  sub          s7, a5, a6
                  xor          s6, gp, a4
                  sra          s10, s2, a1
                  sltu         s5, s0, a1
                  sb           s6, 13(t4)
                  sub          t0, t1, gp
                  lbu          gp, 59(t4)
                  sra          s3, s0, zero
                  lh           s11, 30(t4)
                  slli         ra, s6, 9
                  sltu         t0, gp, s2
                  lb           s2, -28(t4)
                  lb           a4, -5(t4) #end riscv_load_store_rand_instr_stream_0
                  addi         s11, t4, -1578
                  sll          s10, s8, t1
2857:             beq          s4, s4, 2861f
                  bne          s9, sp, 2862f
                  sltiu        s10, a3, 172
                  sltu         a4, s7, t6
2861:             add          s11, s5, s10
2862:             bne          s8, t1, 2880f
                  sltu         ra, zero, s2
                  add          a1, s3, zero
                  srli         a5, s6, 4
                  nop
                  ori          s2, ra, -1456
                  bgeu         a1, t3, 2878f
                  srl          s5, s3, s1
                  sub          s6, a6, a4
                  srl          a0, zero, a5
                  slti         a6, s10, 1240
                  bltu         a7, tp, 2874f
2874:             and          zero, a0, s7
                  sltiu        a7, sp, 583
                  andi         s6, s9, -475
                  srli         a7, s11, 17
2878:             bne          a6, t1, 2881f
                  add          t6, a4, t5
2880:             sltu         s3, a6, s0
2881:             add          a5, s5, s8
                  slli         t6, a4, 27
                  srl          zero, t5, s0
                  sll          s10, a4, s5
                  blt          tp, t5, 2890f
                  slti         a0, a1, 2018
                  slti         t4, a7, 1749
                  blt          s9, t4, 2893f
                  sub          a6, s10, a3
2890:             bne          s2, a5, 2901f
                  slli         a1, t5, 8
                  srli         s7, t2, 29
2893:             bltu         s11, t3, 2896f
                  auipc        tp, 933318
                  slli         tp, a0, 27
2896:             and          s4, s2, s2
                  bge          s6, s11, 2914f
                  sub          t4, s0, s2
                  slli         t6, ra, 12
                  lui          a3, 494828
2901:             sltiu        s5, s5, -1966
                  sltiu        t2, gp, -1080
                  add          t1, a6, t0
                  nop
                  or           a5, s7, a5
                  beq          t4, sp, 2912f
                  sra          s3, t6, a5
                  srli         a1, t1, 15
                  sll          t3, s1, s1
                  slli         s10, s1, 29
                  sltu         s1, t3, a2
2912:             srli         t4, a4, 10
                  srl          s4, zero, a5
2914:             srl          s1, a3, t1
                  xor          s0, s11, s8
                  bge          s5, t3, 2917f
2917:             sll          t3, a2, a5
                  srai         s8, zero, 31
                  xor          s8, a2, a7
                  slti         s4, s8, -374
                  add          a1, gp, s4
                  srl          s7, s5, s3
                  and          a0, t5, t3
                  sltu         a3, tp, s6
                  srl          a0, t6, t0
                  add          s3, t4, s6
                  sltu         s7, s7, s2
                  add          s1, t1, a3
                  beq          gp, t1, 2939f
                  sub          s3, s6, s4
                  srli         t5, ra, 8
                  slli         zero, s9, 14
                  bgeu         s4, t2, 2945f
                  nop
                  srl          s5, s4, s11
                  sltiu        a6, s7, 998
                  auipc        s8, 446157
                  beq          a2, s5, 2946f
2939:             sltu         t1, gp, s1
                  addi         s3, s7, -137
                  beq          a0, s9, 2956f
                  beq          s8, a2, 2959f
                  bltu         s11, t4, 2963f
                  bltu         zero, tp, 2962f
2945:             sra          a6, t5, s0
2946:             addi         s10, a3, 1145
                  auipc        tp, 127852
                  srl          s6, s3, zero
                  xori         t2, t5, 547
                  xor          s3, s8, s2
                  bne          t0, s3, 2952f
2952:             srl          t0, s4, s11
                  and          s10, s0, t1
                  bne          ra, t5, 2959f
                  bne          s9, a7, 2958f
2956:             xor          a6, t2, s10
                  andi         a5, s2, 216
2958:             addi         zero, tp, -196
2959:             bge          s0, a2, 2963f
                  sll          t0, a3, a2
                  ori          t1, t3, 235
2962:             nop
2963:             blt          s5, t5, 2983f
                  sub          s6, t5, a1
                  sltiu        s8, t5, 1284
                  andi         a0, ra, 1489
                  andi         s4, a1, 1805
                  bgeu         t1, a5, 2980f
                  blt          s6, t0, 2986f
                  or           s11, s0, s2
                  bge          sp, s6, 2988f
                  bne          s6, t2, 2977f
                  blt          s7, s7, 2974f
2974:             bltu         a1, a2, 2991f
                  addi         a5, tp, -1601
                  xor          a0, a1, a0
2977:             slti         t1, s6, 610
                  sub          s11, s4, s3
                  bgeu         tp, s6, 2996f
2980:             srai         t5, a3, 19
                  or           a0, a1, t3
                  bltu         s8, t3, 2993f
2983:             and          s11, s4, a6
                  or           t5, a7, sp
                  bne          s11, a5, 2990f
2986:             or           s11, s5, s6
                  blt          s8, s5, 2992f
2988:             or           a6, a2, s9
                  xori         s4, a0, 951
2990:             srai         gp, s9, 0
2991:             slti         gp, a2, -338
2992:             bltu         t6, a0, 3002f
2993:             nop
                  auipc        s10, 1017128
                  slti         s7, a4, -532
2996:             xori         s1, ra, 2038
                  auipc        t5, 1015626
                  addi         t3, t0, -73
                  xori         t3, s3, 672
                  srl          t6, s10, t5
                  sltu         s6, a2, sp
3002:             sll          t6, t1, s4
                  srli         t3, t6, 0
                  ori          a5, sp, 410
                  andi         s0, s4, 1279
                  bltu         s2, gp, 3012f
                  beq          t3, a1, 3015f
                  sltiu        t2, s9, 2040
                  bge          s3, tp, 3012f
                  xor          tp, a3, s4
                  auipc        s4, 344915
3012:             sra          t2, s4, t0
                  addi         t0, s5, 1357
                  or           s8, a3, a7
3015:             srai         zero, tp, 7
                  srai         s1, a4, 0
                  srl          gp, s2, t6
                  ori          t0, sp, -1856
                  sub          a1, a0, t2
                  sltu         a0, zero, ra
                  bne          a3, tp, 3037f
                  bgeu         a6, s0, 3026f
                  srli         a5, s3, 28
                  srl          zero, a4, a1
                  andi         t0, s1, 257
3026:             ori          tp, a2, -1241
                  bgeu         a6, t1, 3030f
                  lui          tp, 258703
                  xori         zero, s5, -1946
3030:             ori          t5, t3, 114
                  add          tp, a3, s5
                  bgeu         a5, s7, 3047f
                  bltu         a0, t5, 3051f
                  sltu         a7, a1, t2
                  nop
                  bge          s11, a6, 3037f
3037:             sll          tp, t6, s9
                  auipc        t1, 259735
                  andi         a0, sp, -1401
                  slt          s5, zero, a5
                  blt          t5, sp, 3052f
                  ori          s8, a3, -1617
                  sra          t0, a6, s9
                  sll          s7, a2, a4
                  lui          a7, 1040541
                  slt          s8, a2, zero
3047:             lui          s8, 816475
                  sltu         a6, zero, t4
                  slli         a6, s9, 1
                  slt          a3, s4, s9
3051:             addi         a3, s10, -629
3052:             andi         a7, s11, 1832
                  addi         a0, t0, 139
                  bltu         s1, t3, 3064f
                  lui          t6, 859624
                  sltiu        t0, a4, -1784
                  srli         s0, a2, 22
                  srai         a5, tp, 13
                  xor          s1, s0, s2
                  srli         t2, t6, 16
                  auipc        zero, 366418
                  bltu         s10, a0, 3069f
                  xor          zero, t5, a0
3064:             sll          s1, a3, a2
                  or           t5, t3, s5
                  xor          s2, s0, sp
                  and          ra, s1, a6
                  sub          s5, t2, a6
3069:             xori         t0, a4, -1409
                  add          s8, a0, a5
                  addi         s11, ra, -764
                  or           ra, a2, a4
                  add          s5, s11, ra
                  sub          tp, t0, t4
                  srl          gp, s0, tp
                  and          t6, sp, ra
                  xori         t4, s8, -451
                  or           t6, gp, tp
                  srli         a3, gp, 18
                  sltiu        t4, a6, 611
                  slti         s5, ra, 1971
                  bltu         t3, sp, 3089f
                  and          tp, a7, a4
                  slt          s11, s3, s0
                  xor          s6, t5, t5
                  beq          a6, a2, 3089f
                  sltu         s1, tp, s11
                  lui          a6, 107933
3089:             slti         s7, tp, 550
                  andi         s4, a2, -1116
                  andi         a0, gp, -869
                  lw           tp, 4(s9)
                  sub          a6, s0, s0
                  addi         s9, s9, 56
                  sra          a3, t4, s9
                  addi         t1, s7, 1569
                  srai         ra, s2, 19
                  or           t6, a3, zero
4093:             addi x6, x4, 1
4093:             jalr x6, x6, 0
sub_7:            sra          a0, a7, t0
                  xor          s10, t2, t2
                  auipc        s10, 193976
                  bltu         s1, t2, sub_7_stack_p
                  srai         s3, s4, 20
                  add          a3, zero, s8
sub_7_stack_p:    addi         s9, s9, -16
                  sltiu        s5, s1, -1825
                  sw           tp, 4(s9)
                  add          gp, a6, s8
                  sltu         s7, s6, t2
                  la           s1, region_0+1928 #start riscv_load_store_rand_instr_stream_0
                  lb           a3, -239(s1)
                  lb           t4, -254(s1)
                  lbu          t3, -202(s1)
                  lh           s2, -110(s1)
                  lbu          a0, 31(s1)
                  lb           s2, -231(s1)
                  srl          a6, a1, a2
                  lbu          a6, 15(s1)
                  lh           tp, -178(s1)
                  sltiu        a4, s10, 1871
                  and          s8, t4, s9
                  add          s10, s1, gp
                  srli         s7, t4, 30
                  lw           t5, -204(s1)
                  srl          t3, a7, tp
                  lb           t0, -61(s1)
                  sra          t1, zero, a6
                  sb           t4, -201(s1)
                  sb           gp, 51(s1)
                  slt          a3, s0, t6
                  addi         zero, s8, 1002
                  slli         gp, s4, 7
                  sb           a1, -129(s1)
                  sb           t0, 65(s1)
                  srli         s7, s7, 30
                  lbu          t4, -111(s1)
                  xori         s6, t2, -229
                  xor          t1, s5, t4
                  sub          s4, tp, a1
                  sub          t5, s1, gp
                  sltiu        s5, t4, 27
                  srli         a0, t6, 31
                  lb           s2, 15(s1)
                  andi         s2, a5, -1311
                  srli         t2, a5, 20
                  sb           t4, -106(s1)
                  lui          t1, 378633
                  lbu          s4, -256(s1)
                  lbu          t4, -126(s1)
                  xor          t2, s10, s4
                  or           s10, t3, s5
                  lh           s6, -100(s1)
                  lb           s4, -129(s1) #end riscv_load_store_rand_instr_stream_0
                  la           s8, region_1+1606 #start riscv_load_store_rand_instr_stream_1
                  nop
                  sltiu        a5, a5, -566
                  sb           s11, -424(s8)
                  sub          s0, t4, s3
                  lb           t6, -657(s8)
                  add          zero, t1, a6
                  sb           t5, -1477(s8)
                  sw           t3, -1302(s8)
                  lw           s2, -50(s8)
                  sub          a1, a4, s3
                  sltu         s11, s0, s4
                  lh           t2, 158(s8)
                  addi         zero, s5, 109
                  lb           a6, -713(s8)
                  sb           a2, -662(s8)
                  xori         s2, a1, 1317
                  andi         s4, t0, 1321
                  or           a7, s11, a4
                  srl          a5, tp, a5
                  sb           s9, -337(s8)
                  lb           zero, -711(s8)
                  sb           s4, -527(s8)
                  lbu          a0, -925(s8)
                  lb           s3, -1217(s8)
                  sb           ra, -711(s8)
                  srl          s7, s3, s5
                  sw           a7, 14(s8)
                  lhu          a0, -1564(s8)
                  srli         t0, zero, 10
                  lb           ra, -380(s8)
                  and          t0, t6, t4
                  lbu          a4, -277(s8)
                  sb           a2, -863(s8)
                  sub          s5, t6, s7
                  sb           ra, -1299(s8)
                  lw           s0, -706(s8)
                  slti         t4, t2, -2023
                  sb           t2, -713(s8)
                  sb           a3, -1087(s8)
                  slt          s3, s11, s9
                  sb           a0, -241(s8)
                  lh           s6, 166(s8)
                  lbu          s11, -925(s8) #end riscv_load_store_rand_instr_stream_1
                  andi         zero, t5, -350
                  slli         s3, tp, 2
                  slti         t5, a5, 91
                  ori          a7, t1, -1564
                  or           t0, s7, ra
                  sltiu        s7, t6, -1104
                  bltu         t0, s3, 23f
                  andi         ra, t5, 647
                  ori          s11, s0, 275
                  srli         a1, s6, 2
                  srai         a7, s4, 24
                  slti         t5, t1, -88
                  and          zero, a3, s11
                  slti         s1, t4, -299
                  bne          ra, s0, 26f
                  srl          gp, ra, t0
                  slli         t4, s7, 21
                  srli         a3, s8, 16
                  bne          a3, ra, 25f
                  bgeu         s4, s2, 39f
                  bltu         a6, t4, 27f
                  bltu         a2, gp, 27f
                  sll          zero, a5, a0
23:               srl          tp, t5, t1
                  xori         t2, t5, -1003
25:               bge          s10, a2, 33f
26:               sll          gp, t5, s10
27:               srli         t4, a7, 28
                  bge          a0, s9, 39f
                  auipc        t6, 43960
                  andi         t6, a4, 463
                  sra          t6, t2, s7
                  sltu         s7, s7, s2
33:               nop
                  ori          a4, s2, -1791
                  bge          gp, a4, 52f
                  sll          t2, a7, a7
                  or           s10, t6, a0
                  sub          a4, t0, tp
                  sra          a0, s5, sp
                  beq          s7, s2, sub_7_j11 #branch to jump instr
                  xor          s10, a1, s4
sub_7_j11:        jal          tp, sub_8 #jump sub_7 -> sub_8
                  xor          t4, tp, s0
                  and          a5, gp, a6
                  xori         s2, a4, -383
39:               bgeu         t4, ra, 53f
                  lui          ra, 582021
                  blt          a6, s8, 55f
                  ori          t3, s0, -1694
                  or           s6, a5, s11
                  ori          s6, t4, 890
                  srli         s5, t3, 27
                  blt          a0, tp, 47f
47:               srli         t5, s2, 28
                  sltiu        s4, a7, -1727
                  bge          a7, s0, 56f
                  slti         a6, s1, -1041
                  bgeu         s7, t1, 64f
52:               andi         s5, t3, 395
53:               sll          ra, sp, sp
                  srai         tp, s7, 8
55:               beq          a5, s3, 58f
56:               sltu         s6, s9, a6
                  and          t2, s11, a6
58:               sub          a7, t6, sp
                  xor          s1, a0, t3
                  xor          t5, t0, a6
                  slt          s5, ra, t3
                  slti         s6, a0, -1410
                  blt          s5, s1, 83f
64:               sltiu        s0, s0, -1047
                  lui          ra, 741914
                  sll          t0, t2, a7
                  blt          a2, sp, 81f
                  bltu         t2, a3, 74f
                  bne          sp, a2, 80f
                  addi         s4, a4, -1578
                  beq          gp, s7, 91f
                  bgeu         t5, a7, 92f
                  bgeu         s7, s8, 78f
74:               add          s2, tp, a7
                  xori         t2, a5, 541
                  srl          t4, s2, a4
                  ori          s11, a2, 1500
78:               blt          s2, tp, 95f
                  auipc        s3, 432344
                  srli         a7, a2, 21
                  sub          s2, s9, s10
                  xor          t1, s4, t3
                  sll          a0, ra, gp
                  addi         a6, a4, 1113
                  and          zero, s4, a3
sub_7_j10:        jal          tp, sub_8 #jump sub_7 -> sub_8
                  slli         s3, s4, 7
80:               and          t5, t2, a3
81:               xori         s7, tp, -1362
                  sltiu        s2, s6, 237
83:               srli         t0, a5, 21
                  slli         t0, tp, 2
                  xori         a7, a2, 1518
                  slli         s7, t6, 31
                  sub          s3, a1, s6
                  add          a3, s6, sp
                  sra          a1, s3, t6
                  add          t0, a6, t6
91:               blt          s10, a6, 97f
92:               slti         a4, a6, -298
                  lui          a7, 935168
                  lui          zero, 877410
95:               blt          t4, t4, 115f
                  xori         a1, s8, -613
97:               bgeu         tp, s0, 117f
                  lui          a3, 277877
                  slt          s3, t0, s0
                  bgeu         a4, a1, 104f
                  blt          s4, a5, 112f
                  auipc        a0, 1036226
                  sll          s6, s5, s2
104:              nop
                  and          s2, t3, a3
                  nop
                  bge          a1, ra, 123f
                  blt          s10, s9, 122f
                  bltu         s9, t1, 116f
                  srai         a1, sp, 31
                  xor          tp, s11, t5
112:              and          s6, t2, s2
                  sra          a5, a4, a0
                  xori         s11, s8, 1996
115:              beq          a0, tp, 135f
116:              slt          s10, s7, s9
117:              and          s11, s1, gp
                  beq          t6, t5, 129f
                  xor          t1, s9, t1
                  srli         a0, t6, 6
                  ori          s4, a5, -1211
122:              and          s1, s1, t4
123:              srl          s3, s5, zero
                  sll          s6, t2, t2
                  bne          t4, s1, 139f
                  slt          a1, s0, t4
                  and          s4, s2, s5
                  sltiu        zero, tp, 900
129:              sub          t2, a2, zero
                  auipc        t3, 340121
                  bne          a3, a4, 136f
                  beq          t5, a7, 152f
                  or           s6, s2, s7
                  auipc        s8, 388877
135:              sltiu        gp, a3, -517
136:              sltu         t5, s9, tp
                  add          gp, s10, t1
                  ori          s8, ra, 1912
139:              bltu         s6, s9, 142f
                  sub          a5, ra, t1
                  nop
142:              xor          s1, a2, t3
                  sltiu        a0, a6, 1410
                  srli         s10, s1, 6
                  nop
                  slt          a0, a2, tp
                  sltiu        t3, s8, -600
                  sltu         t6, s2, tp
                  sub          a6, t2, t4
                  and          a5, a7, s9
                  ori          t3, a4, 771
152:              auipc        s8, 427772
                  add          t0, s0, t0
                  bltu         s11, s7, 160f
                  srli         t0, s1, 8
                  slli         s11, a5, 3
                  beq          a7, t5, 163f
                  ori          s10, a4, 1000
                  srl          s5, s5, a5
160:              nop
                  sub          tp, s8, s11
                  bltu         a0, s3, 176f
163:              sltiu        a1, ra, 867
                  sltiu        zero, t5, -268
                  srai         s3, a1, 16
                  bge          a5, s0, 186f
                  bne          sp, s11, 184f
                  beq          s3, a2, 175f
                  sll          s1, t2, s8
                  slt          s0, t4, t0
                  slt          s11, a5, s1
                  sra          s11, t6, s11
                  bne          a6, s7, 185f
                  sub          s2, s4, tp
175:              bge          s7, t1, 195f
176:              srai         t5, zero, 4
                  xor          t3, a5, gp
                  sra          a6, a6, s7
                  bge          t4, t6, 195f
                  blt          a4, t2, 197f
                  beq          s1, a3, 182f
182:              or           t3, s2, a4
                  xori         s0, t0, -1375
184:              and          s11, s2, t6
185:              nop
186:              sltu         tp, s10, s8
                  bltu         t2, s11, 195f
                  sll          t2, t3, a5
                  nop
                  ori          t2, s7, -1394
                  sub          s5, s2, s2
                  ori          t5, a5, -798
                  auipc        a6, 732222
                  slti         s7, s11, -79
195:              addi         s0, ra, -268
                  xor          s5, a1, t0
197:              slt          s11, s2, a0
                  slli         t0, s10, 19
                  srai         s11, a1, 9
                  add          s2, a3, gp
                  addi         s10, s4, -1422
                  slli         t0, s7, 18
                  lui          a6, 723265
                  bne          s8, a7, 215f
                  bge          gp, a3, 222f
                  ori          tp, a5, -1541
                  sra          zero, a7, t3
                  sra          s1, t4, t4
                  sub          a6, a2, ra
                  bge          a4, t6, 221f
                  srli         s8, zero, 19
                  xor          ra, a2, t3
                  sub          s4, tp, a2
                  and          s0, a5, s4
215:              sra          t2, a1, s6
                  beq          t6, s9, 230f
                  andi         a4, gp, 1812
                  xori         s1, a2, -337
                  bgeu         s7, a6, 239f
                  bne          t4, s5, 234f
221:              sra          a1, a4, s0
222:              xor          a4, s10, t6
                  bge          a2, tp, 236f
                  srli         s10, a6, 24
                  slt          s1, a5, s6
                  and          s1, a5, t3
                  nop
                  addi         a6, t5, -1479
                  lui          t5, 10164
230:              andi         t6, s8, -647
                  bne          s8, s2, 237f
                  ori          a4, t6, -900
                  bne          tp, s10, 240f
234:              nop
                  blt          tp, t6, 239f
236:              xori         a0, t1, -866
237:              srli         gp, s5, 28
                  auipc        a4, 167851
239:              xor          a3, s6, a1
240:              bge          s7, s10, 260f
                  xor          zero, s1, t1
                  sll          t3, s2, t0
                  nop
                  or           s8, s4, a4
                  sltiu        s1, gp, -1228
                  sub          a1, s4, t5
                  srl          t0, a3, t3
                  sub          s5, s6, t1
                  beq          s6, gp, 266f
                  slt          zero, s4, t1
                  bne          t1, a5, 271f
                  nop
                  auipc        a5, 737367
                  bge          s11, s7, 274f
                  sra          a0, s4, s8
                  beq          a7, a1, 270f
                  sll          t6, gp, zero
                  slt          gp, s8, s11
                  bne          a6, a7, 279f
260:              srli         s10, s8, 17
                  addi         a6, s10, -626
                  andi         t4, a3, -344
                  bgeu         a5, s4, 270f
                  sll          ra, t4, t4
                  bltu         s11, s4, 277f
266:              addi         t1, s9, 1673
                  or           t3, t2, a6
                  srli         t0, s0, 28
                  sltiu        a6, zero, 526
270:              lui          t3, 1016071
271:              slti         t2, s1, -1802
                  bltu         a7, a5, 275f
                  addi         s7, a1, 573
274:              slli         s4, a2, 19
275:              slli         s4, a2, 10
                  addi         a4, t4, 876
277:              addi         t6, a3, -1825
                  slt          s10, s7, s3
279:              andi         a0, gp, 141
                  and          s8, t0, s5
                  ori          t0, s5, 739
                  sll          a1, sp, a4
                  srai         a0, t3, 26
                  xor          a1, sp, t5
                  sub          zero, a7, s2
                  slt          s4, s3, a6
                  sll          t0, t5, s7
                  addi         a5, sp, 84
                  sub          t4, s10, s2
                  slti         s7, s5, 541
                  add          t3, a4, zero
                  xori         s10, zero, -650
                  sltiu        s7, t4, 600
                  ori          s3, t2, 965
                  srl          tp, t1, t4
                  xori         a7, s9, -1181
                  add          s10, a3, t4
                  andi         s11, t2, 1001
                  xori         gp, s7, 1673
                  sra          s11, a0, a7
                  lui          tp, 26533
                  srai         gp, a0, 9
                  slli         t6, ra, 3
                  sltiu        t1, a3, -1426
                  nop
                  andi         s3, t4, 1833
                  slti         zero, s11, 1151
                  andi         gp, s11, 1044
                  ori          a0, a4, -1957
                  add          s5, t3, s4
                  bge          a6, t6, 322f
                  sll          s10, a6, s2
                  bgeu         a0, a7, 319f
                  sltiu        s11, t2, 107
                  xori         s1, s7, -1853
                  srai         s2, t4, 25
                  or           gp, a7, a4
                  sltu         t4, t4, a7
319:              bltu         s2, a6, 330f
                  sra          s11, a1, s1
                  bgeu         s4, sp, 341f
322:              sltu         s4, a2, a7
                  or           gp, gp, t2
                  lui          t1, 431748
                  andi         s4, a2, -1157
                  addi         a1, s9, 390
                  bge          tp, t2, 334f
                  slti         ra, s8, -921
                  srai         t2, zero, 2
330:              xori         a5, s0, -1499
                  xor          s2, s11, s4
                  auipc        s6, 448992
                  bne          s3, t5, 344f
334:              beq          s10, sp, 346f
                  srai         s3, s4, 21
                  xori         a3, s5, -1920
                  srai         t3, a2, 17
                  sltu         a6, t2, sp
                  add          s6, s7, s7
                  bne          a3, s6, 346f
341:              slli         gp, t3, 4
                  sra          t5, s9, a1
                  slti         s10, a4, -1569
344:              bltu         t2, zero, 346f
                  ori          s10, s9, 822
346:              and          s11, a2, s9
                  lw           tp, 4(s9)
                  addi         s9, s9, 16
                  andi         s2, sp, 1687
                  xori         t0, s7, 674
                  srli         a6, s5, 2
                  lui          s8, 729995
467:              addi x17, x4, 0
467:              jalr x17, x17, 0
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
                  add x2, x25, zero
                  csrr x11, 0x300 # MSTATUS
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 31
                  bne x11, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x11, 0x341 # MEPC
                  csrr x11, 0x342 # MCAUSE
                  li x26, 0x3 # BREAKPOINT
                  beq x11, x26, ebreak_handler
                  li x26, 0x8 # ECALL_UMODE
                  beq x11, x26, ecall_handler
                  li x26, 0x9 # ECALL_SMODE
                  beq x11, x26, ecall_handler
                  li x26, 0xb # ECALL_MMODE
                  beq x11, x26, ecall_handler
                  li x26, 0x1
                  beq x11, x26, instr_fault_handler
                  li x26, 0x5
                  beq x11, x26, load_fault_handler
                  li x26, 0x7
                  beq x11, x26, store_fault_handler
                  li x26, 0xc
                  beq x11, x26, pt_fault_handler
                  li x26, 0xd
                  beq x11, x26, pt_fault_handler
                  li x26, 0xf
                  beq x11, x26, pt_fault_handler
                  li x26, 0x2 # ILLEGAL_INSTRUCTION
                  beq x11, x26, illegal_instr_handler
                  csrr x26, 0x343 # MTVAL
                  1: la x12, test_done
                  jalr x1, x12, 0

ecall_handler:    
                  la x11, _start
                  sw x0, 0(x11)
                  sw x1, 4(x11)
                  sw x2, 8(x11)
                  sw x3, 12(x11)
                  sw x4, 16(x11)
                  sw x5, 20(x11)
                  sw x6, 24(x11)
                  sw x7, 28(x11)
                  sw x8, 32(x11)
                  sw x9, 36(x11)
                  sw x10, 40(x11)
                  sw x11, 44(x11)
                  sw x12, 48(x11)
                  sw x13, 52(x11)
                  sw x14, 56(x11)
                  sw x15, 60(x11)
                  sw x16, 64(x11)
                  sw x17, 68(x11)
                  sw x18, 72(x11)
                  sw x19, 76(x11)
                  sw x20, 80(x11)
                  sw x21, 84(x11)
                  sw x22, 88(x11)
                  sw x23, 92(x11)
                  sw x24, 96(x11)
                  sw x25, 100(x11)
                  sw x26, 104(x11)
                  sw x27, 108(x11)
                  sw x28, 112(x11)
                  sw x29, 116(x11)
                  sw x30, 120(x11)
                  sw x31, 124(x11)
                  la x12, write_tohost
                  jalr x0, x12, 0

instr_fault_handler:
                  add x25, x2, zero
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
                  add x25, x2, zero
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
                  add x25, x2, zero
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
                  csrr  x11, 0x341
                  addi  x11, x11, 4
                  csrw  0x341, x11
                  add x25, x2, zero
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
                  csrr  x11, 0x341
                  addi  x11, x11, 4
                  csrw  0x341, x11
                  add x25, x2, zero
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
                  csrr  x11, 0x300 # MSTATUS;
                  csrr  x11, 0x304 # MIE;
                  csrr  x11, 0x344 # MIP;
                  csrrc x11, 0x344, x11 # MIP;
                  add x25, x2, zero
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
