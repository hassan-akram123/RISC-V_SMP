.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x14, h0_start
jalr x0, x14, 0
h0_start:
                  li x7, 0x40000100
                  csrw 0x301, x7
kernel_sp:        
                  la x25, kernel_stack_end

trap_vec_init:    
                  la x7, mtvec_handler
                  ori x7, x7, 0
                  csrw 0x305, x7 # MTVEC

mepc_setup:       
                  la x7, init
                  csrw 0x341, x7

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x7, 0x1800
                  csrw 0x300, x7 # MSTATUS
                  mret
init:             
                  li x0, 0xf5a36520
                  li x1, 0x80000000
                  li x3, 0x7
                  li x4, 0xf4962045
                  li x5, 0x94287be9
                  li x6, 0xd54c97b9
                  li x7, 0x0
                  li x8, 0x7
                  li x9, 0xf8db9fb1
                  li x10, 0x80000000
                  li x11, 0xd
                  li x12, 0xa
                  li x13, 0x80000000
                  li x14, 0xbaa43b78
                  li x15, 0xf
                  li x16, 0x0
                  li x17, 0x0
                  li x18, 0xe
                  li x19, 0x26e03ebb
                  li x20, 0xfa7002e0
                  li x21, 0x0
                  li x22, 0xff5d7ae1
                  li x23, 0x2
                  li x24, 0xb
                  li x26, 0x80000000
                  li x27, 0x7
                  li x28, 0xfe792c17
                  li x29, 0x4
                  li x30, 0xf175074d
                  li x31, 0x0
                  la x2, user_stack_end
main:             la           s4, region_0+847 #start riscv_load_store_rand_instr_stream_0
                  sltu         s0, zero, s10
                  sb           a2, 34(s4)
                  lh           zero, 55(s4)
                  add          s8, a4, s5
                  andi         zero, a4, 1013
                  lb           s7, 49(s4)
                  lbu          a1, -63(s4)
                  srli         s8, zero, 16
                  slt          zero, gp, s4
                  or           s3, s8, s10
                  sltu         s3, s8, a3
                  and          s10, a6, t5
                  sb           s0, 17(s4)
                  addi         s8, s0, -1254
                  xor          a6, s8, s3
                  lh           a6, 63(s4)
                  lbu          a6, 42(s4)
                  lh           a6, -29(s4)
                  lbu          a2, 2(s4)
                  sltu         t5, s3, a0
                  ori          a5, t4, -78
                  ori          a5, s4, -25
                  lbu          s6, 2(s4)
                  sll          s0, s8, a2
                  lbu          a0, -10(s4)
                  sw           s8, -15(s4)
                  lb           s10, -9(s4)
                  lb           gp, -24(s4)
                  lbu          a0, 58(s4)
                  sb           zero, -63(s4)
                  lbu          a0, -54(s4)
                  srl          s2, t6, t1
                  lb           zero, 57(s4)
                  and          a0, s3, s8
                  sw           t6, 33(s4)
                  srai         tp, s6, 1
                  slti         gp, a6, -1759
                  xori         s1, s2, 1123
                  lh           a1, 43(s4)
                  lhu          t1, 17(s4)
                  sltu         s8, tp, s4
                  srli         s8, ra, 13
                  sh           a5, 19(s4)
                  lbu          a0, -14(s4)
                  sb           t2, 63(s4)
                  sh           a6, 39(s4)
                  sh           t6, -47(s4)
                  lb           a7, 6(s4)
                  srli         a0, s5, 21
                  xori         s11, a1, -1931
                  xor          t2, a3, s6
                  lh           a7, 57(s4)
                  lbu          t2, 56(s4) #end riscv_load_store_rand_instr_stream_0
                  la           s8, region_0+1054 #start riscv_load_store_rand_instr_stream_2
                  lbu          t5, 12(s8)
                  lb           t4, -5(s8)
                  sra          zero, s2, a0
                  sb           a6, -88(s8)
                  sub          s3, a0, t5
                  xor          t0, a0, s4
                  lb           a3, -158(s8)
                  sb           sp, -246(s8)
                  lb           a5, 235(s8)
                  sll          a6, s5, s11
                  sb           ra, 180(s8)
                  lui          t2, 909715
                  sb           s9, -15(s8)
                  lb           s4, -132(s8)
                  ori          gp, zero, -12
                  xor          tp, s5, a2
                  sra          s11, gp, sp
                  sh           zero, -6(s8)
                  addi         a1, gp, 1268
                  lhu          s10, 140(s8)
                  sb           a1, -226(s8)
                  sub          a2, s10, t2
                  slli         a0, a2, 1
                  lb           t2, -93(s8)
                  sub          a6, s3, a4
                  srli         s1, zero, 8
                  lb           a1, -227(s8)
                  add          a2, tp, ra
                  sw           s2, -74(s8) #end riscv_load_store_rand_instr_stream_2
                  la           s1, region_0+927 #start riscv_load_store_rand_instr_stream_3
                  lb           s0, -119(s1)
                  lbu          gp, 652(s1)
                  sh           s6, -441(s1)
                  slti         a0, s11, 1373
                  sub          t4, zero, gp
                  lui          zero, 77504
                  auipc        t0, 576417
                  xor          a6, ra, t3
                  sh           sp, -125(s1)
                  sll          a3, t6, t5
                  lb           a0, 312(s1)
                  sb           t1, -665(s1)
                  lhu          t6, 1067(s1)
                  srl          a2, s8, s0
                  lbu          t2, 22(s1)
                  sb           t1, 725(s1)
                  add          gp, s3, t2
                  lb           t3, -371(s1)
                  ori          s3, s7, 1338
                  xori         s5, a5, 549
                  lb           a0, 355(s1)
                  lbu          t0, 673(s1)
                  andi         a5, s7, 304
                  slti         a3, t0, 1787
                  sb           s7, -730(s1)
                  srl          s2, tp, s8
                  srl          a6, s6, sp
                  xor          a7, s0, sp
                  lb           a2, -829(s1)
                  lb           s4, -191(s1)
                  lh           a5, 857(s1)
                  lb           s7, 263(s1)
                  sra          ra, a3, a7
                  sb           t1, -10(s1)
                  nop
                  lui          t2, 233207
                  andi         ra, ra, 1633
                  sltiu        zero, ra, 1148
                  sb           s10, -577(s1)
                  sh           t3, -31(s1)
                  lh           zero, -469(s1)
                  sub          s2, gp, s6
                  and          t5, a3, s7
                  xor          s3, a4, a4
                  lb           zero, 530(s1)
                  slli         t0, t1, 20
                  xor          a5, gp, s7
                  lbu          t5, 1026(s1)
                  lb           a3, 360(s1)
                  lbu          t3, -611(s1) #end riscv_load_store_rand_instr_stream_3
                  bgeu         a7, s9, 10f
                  and          a2, a2, t5
                  srli         a6, s1, 29
                  ori          s2, s4, -1711
                  slt          a3, ra, s9
                  srl          s0, a7, ra
                  slli         s8, a5, 25
                  slli         tp, t4, 21
                  ori          a1, s0, -193
                  xor          s10, tp, t1
10:               ori          s3, t2, 1946
                  bne          s8, s5, 26f
                  sub          gp, s11, s6
                  addi         s4, s10, 761
                  lui          a2, 978299
                  add          t6, tp, s3
                  slti         t4, t5, 1998
                  slli         t1, t2, 28
                  andi         a5, t5, -1897
                  srl          s5, s7, s11
                  bge          a4, s11, 40f
                  srai         tp, s0, 18
                  ori          t0, ra, 2018
                  lui          s5, 372380
                  ori          t3, s2, -86
                  slti         s2, s1, 844
26:               sltu         a5, s6, zero
                  bne          t5, s10, 31f
                  slt          s3, ra, s0
                  sra          t2, a7, s8
                  srl          s8, t3, gp
31:               sltiu        t3, t6, 691
                  beq          a0, a1, 50f
                  beq          a5, a1, 51f
                  blt          t2, t1, 41f
                  srai         t3, t0, 28
                  bge          a4, s7, 53f
                  slt          t1, a7, zero
                  sltu         s10, t1, s11
                  blt          t5, zero, 46f
40:               slli         s3, t4, 9
41:               srli         s5, a2, 15
                  blt          s1, s9, 47f
                  xori         s8, s6, -778
                  sub          s1, tp, t2
                  blt          s1, s1, 55f
46:               bgeu         a4, s9, 64f
47:               srai         t6, s3, 15
                  xor          t6, a5, sp
                  blt          s1, s2, 61f
50:               bltu         a7, s5, 66f
51:               bltu         s6, s5, 60f
                  andi         t4, s7, 1742
53:               blt          s9, s5, 61f
                  bge          s5, a5, 73f
55:               nop
                  xor          s10, t4, tp
                  bne          a5, a2, 66f
                  nop
                  blt          s7, a7, 75f
60:               ori          a3, tp, -775
61:               add          s4, s10, s3
                  srai         s6, a6, 26
                  sltu         s0, s5, s2
64:               sub          a3, s10, a4
                  slli         t3, s11, 25
66:               or           tp, s6, s1
                  and          s6, sp, s10
                  slti         s0, a7, -1187
                  slt          a0, s6, s8
                  bne          zero, a0, 77f
                  bne          t4, a5, 75f
                  ori          a6, a2, 1228
73:               sra          gp, s0, s11
                  srai         a2, s11, 20
75:               sltiu        a1, s6, -208
                  bne          a7, ra, 85f
77:               xor          s0, t4, a4
                  srai         t6, s1, 23
                  or           tp, t5, s4
                  sll          a6, a6, t3
                  srli         a5, ra, 29
                  sll          s3, a2, s7
                  or           zero, s9, s3
                  sra          s5, a5, s4
85:               slt          s3, s11, a3
                  lui          t6, 296285
                  srl          a3, a0, t4
                  add          t4, a6, ra
                  sub          t1, a5, s7
                  andi         ra, a4, -1814
                  sltu         t2, a0, a7
                  xor          s8, a4, gp
                  sub          t4, t2, t6
                  and          gp, t2, a4
                  slti         t2, s6, 1356
                  sll          a5, sp, s1
                  nop
                  sra          ra, s1, a2
                  slt          s10, zero, a0
                  beq          s6, ra, 113f
                  slt          t4, t4, s2
                  ori          s5, a2, -381
                  andi         t5, s7, -1432
                  bge          gp, t4, 124f
                  addi         s6, s4, 677
                  xori         s11, gp, -1401
                  sltiu        gp, t6, -646
                  sltiu        s2, s2, 1908
                  slt          s1, s2, ra
                  nop
                  blt          t1, a4, 121f
                  or           t5, s0, sp
113:              xor          t4, s6, t3
                  lui          a5, 724766
                  srai         a2, t3, 7
                  slli         s5, ra, 24
                  bgeu         s4, s1, 124f
                  lui          t6, 570567
                  srai         s1, s8, 16
                  slt          s0, t1, a7
121:              slli         t6, tp, 10
                  add          tp, s4, a0
                  xor          t4, s3, sp
124:              sra          s11, a3, a6
                  blt          t0, t4, 133f
                  sltiu        t1, tp, -839
                  add          s11, ra, s7
                  and          a3, a4, a2
                  bltu         ra, a0, 130f
130:              add          s0, s0, s3
                  or           t1, s2, a2
                  sltu         zero, a0, s3
133:              bge          s0, s0, 135f
                  bge          s10, s8, 137f
135:              sll          s8, a7, zero
                  sltu         t2, t0, s6
137:              sltiu        a7, s6, -1065
                  sll          zero, a0, s0
                  xori         a2, s0, -1227
                  addi         gp, s2, 1657
                  addi         zero, s6, 190
                  and          s8, a4, s4
                  bne          a5, a6, 144f
144:              sll          s11, t3, s9
                  slti         s10, s7, -360
                  andi         a7, s5, -39
                  nop
                  bne          s3, t0, 156f
                  slt          a3, a2, s1
                  sltiu        a6, s0, -1780
                  xor          s4, a7, s9
                  srli         s2, sp, 10
                  bgeu         t4, t1, 168f
                  or           t4, a7, t0
                  bge          s0, ra, 173f
156:              auipc        s0, 601457
                  add          s11, a5, t6
                  sltiu        s11, ra, -311
                  srai         t6, s0, 20
                  add          s11, t1, s9
                  blt          t0, s3, 165f
                  bne          a2, a5, 164f
                  sra          s4, ra, a3
164:              nop
165:              bne          s7, t1, 183f
                  xori         s11, s8, -1898
                  nop
168:              sltiu        a2, s1, 921
                  ori          s8, s9, -638
                  sra          s0, a2, s8
                  srli         a7, zero, 30
                  add          t5, s8, tp
173:              bltu         t3, a2, 192f
                  srli         s6, s6, 25
                  sub          s8, zero, a6
                  sub          ra, s9, s6
                  xor          zero, s7, s9
                  nop
                  lui          s4, 853742
                  bltu         t5, s7, 189f
                  srli         t1, ra, 5
                  nop
183:              sra          a1, s9, s1
                  srl          a0, a6, t1
                  slti         a0, a5, 1780
                  and          s11, t3, t3
                  sltiu        a2, s11, 326
                  sll          a2, a4, s8
189:              ori          a0, s5, -1039
                  sra          a6, s9, s2
                  sub          s1, s9, s1
192:              addi         s4, s2, -1320
                  sra          tp, s3, t5
                  bgeu         a1, t1, 197f
                  andi         a6, t1, 999
                  beq          zero, t2, 201f
197:              sll          ra, a5, a4
                  auipc        t2, 442759
                  or           gp, s8, s4
                  add          s7, t3, s9
201:              xori         ra, s2, 1434
                  beq          a1, a7, 209f
                  beq          t4, s9, 212f
                  ori          a5, s4, 242
                  slli         s3, s10, 26
                  slt          a7, t0, s5
                  bne          a6, tp, 215f
                  bne          s7, t5, 221f
209:              auipc        s10, 492218
                  addi         zero, s10, -1751
                  beq          a5, t2, 228f
212:              add          s11, a1, t2
                  srli         t3, s3, 12
                  srl          a0, ra, t0
215:              blt          s2, a4, 231f
                  sub          s7, gp, s0
                  srai         t0, s3, 16
                  slli         a7, s11, 30
                  nop
                  bge          s6, t1, 224f
221:              bgeu         zero, t2, 231f
                  slt          s11, s11, a1
                  bge          s10, a3, 239f
224:              beq          s5, s10, 236f
                  srl          s11, ra, t1
                  auipc        t5, 395385
                  slti         s8, s6, -1817
228:              slli         a2, s1, 14
                  sub          s2, a7, a3
                  nop
231:              andi         a0, t3, 177
                  srl          s0, s0, a7
                  beq          t3, s5, 243f
                  srl          s7, a3, s0
                  slt          a5, s3, t1
236:              sll          s1, gp, t2
                  lui          a2, 617568
                  blt          a7, t4, 245f
239:              sltu         t6, s5, a3
                  sub          a6, s4, s11
                  and          a0, a1, a1
                  srai         s4, t2, 19
243:              bne          s1, a1, 263f
                  slli         s8, a6, 31
245:              andi         a7, a0, -563
                  sll          t2, a3, t4
                  sltiu        a0, a2, 687
                  blt          t3, s9, 268f
                  xor          zero, t2, ra
                  srl          t1, a3, t4
                  slti         tp, gp, -2045
                  xori         s4, s8, 962
                  andi         t5, t1, 920
                  slti         a7, s11, -1516
                  sra          s4, tp, a5
                  slli         tp, s8, 31
                  sltu         a3, a7, s2
                  andi         a3, s4, 1691
                  slti         t1, s2, 2019
                  srli         s0, t5, 19
                  srl          t3, t4, s10
                  and          s6, gp, a0
263:              addi         t1, s0, 1998
                  sltiu        s10, a2, 272
                  bge          ra, t2, 275f
                  sltu         a6, t4, s10
                  blt          s7, s1, 276f
268:              bgeu         ra, s3, 286f
                  bge          a0, s4, 276f
                  andi         s2, t4, 1048
                  and          ra, a3, a7
                  andi         s11, t4, -1060
                  bge          s10, a2, 280f
                  bltu         t5, s10, 284f
275:              and          a7, t4, tp
276:              add          s6, t4, t6
                  srli         s0, a6, 5
                  or           t6, a3, t6
                  bne          t0, tp, 286f
280:              auipc        s6, 649317
                  and          s7, s3, zero
                  srl          s11, gp, a1
                  ori          a3, s5, 796
284:              andi         s11, s4, -177
                  andi         s7, zero, 1751
286:              auipc        ra, 50513
                  nop
                  bne          s6, t0, 295f
                  auipc        t0, 811317
                  srl          tp, a1, a6
                  bne          zero, s5, 298f
                  addi         a0, a5, -884
                  and          a7, s7, a5
                  srl          t1, ra, t2
295:              andi         s4, s1, -629
                  slt          s10, s8, t1
                  sra          zero, a1, a5
298:              auipc        a1, 1030600
                  sltiu        a2, s6, -881
                  bgeu         sp, a7, 312f
                  sub          a5, t3, t1
                  sltiu        s1, s10, 363
                  beq          zero, t2, 304f
304:              bltu         s1, zero, 317f
                  andi         t0, a3, -1019
                  sltiu        t2, t5, -1073
                  auipc        t0, 949891
                  bne          a6, s10, 324f
                  bgeu         a1, t6, 325f
                  sra          a2, ra, s5
                  andi         a0, a1, -769
312:              or           s10, s1, s8
                  sltu         s3, a4, a3
                  or           t1, s6, t0
                  slli         ra, a4, 25
                  and          s4, t6, a2
317:              bltu         ra, a0, 337f
                  srl          t3, sp, sp
                  blt          a5, sp, 329f
                  slli         s10, a7, 6
                  srli         s3, gp, 5
                  bltu         s6, s2, 337f
                  blt          s9, s0, 341f
324:              blt          s7, s5, 344f
325:              bltu         zero, t2, 335f
                  xori         ra, a1, 1725
                  bne          t5, s3, 335f
                  addi         s4, t6, 50
329:              srai         t4, s7, 6
                  srl          t2, s2, a0
                  sll          t2, s1, a0
                  la           a0, region_1+649 #start riscv_load_store_rand_instr_stream_4
                  sb           s10, 202(a0)
                  addi         gp, s2, -252
                  lbu          a2, -232(a0)
                  lb           gp, 151(a0)
                  sb           a7, 246(a0)
                  lb           s2, -132(a0)
                  lbu          s10, 231(a0)
                  lui          a2, 527278
                  ori          t0, a4, -476
                  auipc        s5, 524354
                  and          tp, t2, s0
                  lb           t3, -119(a0)
                  lb           a2, 207(a0)
                  sb           s10, -239(a0)
                  srai         zero, s6, 10
                  lb           a1, 116(a0)
                  ori          t6, t5, 221
                  xori         a7, t5, -1830
                  slt          s8, s8, t1
                  sb           t1, -34(a0)
                  lbu          zero, 211(a0)
                  srai         s6, s8, 18
                  lbu          a5, -19(a0)
                  lb           t1, -161(a0)
                  lbu          gp, -1(a0)
                  auipc        s8, 287828
                  sra          s6, s5, zero
                  slti         a7, t5, -1843
                  sltiu        tp, t5, 602
                  srai         s0, s11, 3
                  srli         s1, sp, 24
                  andi         tp, tp, 1441
                  lbu          a7, 211(a0)
                  sb           ra, -248(a0)
                  srai         s6, ra, 1
                  srai         t6, s0, 18
                  lbu          gp, -247(a0)
                  sh           a6, -151(a0)
                  lb           a2, -255(a0)
                  lbu          gp, -168(a0)
                  sll          tp, t6, s10
                  srli         ra, t2, 24
                  lb           s4, 186(a0)
                  sb           s5, -38(a0) #end riscv_load_store_rand_instr_stream_4
                  srai         a5, s8, 4
                  or           s11, a2, a4
                  or           a0, a7, a2
335:              bgeu         s7, s11, 353f
                  xori         a7, zero, -387
337:              blt          s10, s4, 355f
                  blt          a3, s0, 345f
                  sll          s7, zero, s7
                  srl          a0, a1, tp
341:              andi         zero, ra, -619
                  ori          ra, t5, -24
                  slti         s8, sp, 586
344:              slli         t2, s10, 13
345:              sll          a7, t1, s10
                  ori          t1, zero, -758
                  sltiu        a7, s3, -1030
                  sltu         a1, t6, t6
                  and          a3, a6, a6
                  xor          s0, t3, s1
                  sltiu        a3, a3, -1498
                  xori         gp, t1, 1354
353:              lui          a2, 342383
                  or           s10, a6, a1
355:              add          gp, t6, zero
                  or           s10, t5, zero
                  nop
                  sll          a2, s9, s7
                  bne          a2, tp, 363f
                  beq          t3, s5, 377f
                  bltu         a4, t3, 365f
                  sub          a1, a2, tp
363:              lui          s4, 789870
                  xori         ra, ra, 751
365:              add          ra, a5, t1
                  sra          a7, t0, s8
                  andi         t4, s11, 1428
                  xori         s10, t2, -314
                  sub          a7, t5, s5
                  andi         s5, t3, -258
                  sub          ra, sp, a6
                  sub          s1, s6, a3
                  bge          a5, a2, 381f
                  slti         ra, t5, 41
                  bgeu         a6, sp, 380f
                  sltiu        gp, s6, -1851
377:              sll          zero, t4, t5
                  and          s10, s6, s7
                  nop
380:              or           a7, tp, sp
381:              sltiu        t1, t6, -229
                  beq          s7, a5, 391f
                  beq          t6, ra, 402f
                  sltiu        s4, s0, -750
                  bltu         t6, gp, 394f
                  srai         gp, t2, 29
                  addi         a2, t1, -1332
                  sub          t2, s9, a0
                  srli         t6, zero, 0
                  bne          s6, tp, 392f
391:              xor          a3, t6, a5
392:              sra          t6, a3, t6
                  sub          a5, a7, sp
394:              bge          s11, s9, 403f
                  bne          gp, a2, 398f
                  slli         t4, a4, 3
                  xor          s3, a1, gp
398:              xor          s7, s0, t5
                  sll          s0, sp, s4
                  sra          s2, a5, a5
                  srli         t6, ra, 31
402:              sltiu        s4, gp, -1555
403:              bne          s10, s11, 405f
                  lui          ra, 575420
405:              srl          s6, s8, s3
                  sub          s8, s5, s6
                  andi         a1, tp, 1449
                  la           a1, region_1+248 #start riscv_load_store_rand_instr_stream_1
                  lw           a3, 108(a1)
                  lb           s6, -51(a1)
                  slli         s8, t6, 8
                  lhu          t6, 34(a1)
                  lw           t1, 16(a1)
                  lbu          s11, 119(a1)
                  slt          ra, t4, t3
                  sub          s4, a0, a5
                  nop
                  srli         s10, t3, 2
                  addi         s3, t1, 1999
                  lui          a0, 484993
                  sb           t1, -133(a1)
                  lb           a7, 180(a1)
                  lbu          a6, 93(a1)
                  slli         s11, t0, 31
                  sltu         s3, a6, zero
                  lb           s3, -99(a1)
                  lbu          t0, 3(a1)
                  addi         s8, s11, -1373
                  slt          t1, t2, gp
                  lw           s7, 152(a1)
                  srl          s4, sp, zero
                  lb           t4, 121(a1)
                  addi         s3, a2, -1947
                  slli         a7, a2, 22
                  lb           s8, -60(a1)
                  lbu          t1, 255(a1)
                  sltiu        t3, s11, 94
                  slli         s6, a6, 11
                  sub          a3, a6, a5
                  lbu          s8, -150(a1)
                  or           t2, a5, a2
                  sb           s1, 199(a1)
                  lbu          s0, -218(a1)
                  lb           zero, -151(a1)
                  lbu          s5, 23(a1)
                  lui          s1, 274589
                  sll          s0, a3, s6
                  slt          a2, s0, ra
                  lbu          t6, 159(a1)
                  slli         s11, t2, 20
                  lb           s7, 211(a1)
                  lhu          ra, -52(a1)
                  sra          s6, a5, t2
                  lw           a6, -64(a1)
                  slt          s1, t0, s0
                  lbu          t5, -107(a1)
                  sra          a2, a0, sp
                  sh           a3, 236(a1) #end riscv_load_store_rand_instr_stream_1
                  addi         a0, s3, 1989
                  slti         s6, s10, -863
                  xori         tp, a0, -1681
                  sub          s1, s9, tp
                  beq          t2, s7, 422f
                  srl          s6, t3, tp
                  slt          t0, t6, a7
                  bge          s6, ra, 435f
                  slli         tp, a5, 11
                  add          t0, s8, zero
                  bgeu         s6, t5, 422f
                  bge          a2, t6, 436f
                  srli         t6, s11, 19
                  lui          s11, 981375
422:              add          s7, s9, t3
                  sub          s11, s6, t1
                  srai         ra, gp, 14
                  sra          t0, t3, a1
                  nop
                  xori         s0, t5, -213
                  bltu         zero, t1, 446f
                  bge          s9, ra, 437f
                  blt          s0, a4, 445f
                  addi         s0, a6, -564
                  slli         t0, sp, 23
                  sra          s5, s4, zero
                  bge          a1, s10, 441f
435:              ori          t1, a1, 895
436:              bne          s3, t3, 446f
437:              slti         s10, s8, 879
                  sll          ra, zero, s0
                  slt          s3, sp, s1
                  bgeu         t2, s1, 445f
441:              slti         ra, s3, -2019
                  srl          a0, a3, s5
                  srai         a5, a5, 18
                  addi         a3, s9, 1291
445:              nop
446:              auipc        gp, 590557
                  bltu         s7, s3, 451f
                  bgeu         tp, t1, 455f
                  slti         a6, s3, -423
                  sltu         a0, a6, t0
451:              slti         a2, s9, -1306
                  xori         a1, s11, 1264
                  sll          t2, a3, t6
                  or           s11, s9, tp
455:              xor          a3, t3, a4
                  ori          s2, a1, -1
                  sll          tp, a6, t5
                  ori          t4, a4, 1327
                  xor          s5, a5, s6
                  bne          t3, a6, 472f
                  beq          s4, s8, 479f
                  slti         s4, t2, -85
                  sll          t6, a3, sp
                  andi         s0, s0, 425
                  sll          a7, a7, t0
                  slli         a6, s11, 26
                  xori         a2, a6, -687
                  andi         s0, s3, 1776
                  srli         t5, tp, 13
                  add          s1, s8, s7
                  sll          t1, a5, s5
472:              slli         t3, t3, 30
                  bltu         s0, t6, 493f
                  sra          s5, s11, s4
                  sra          s2, s6, a3
                  auipc        s4, 80773
                  addi         s3, s7, 1775
                  bne          a5, s1, 485f
479:              andi         a1, tp, 128
                  bltu         s11, s8, 489f
                  beq          s9, ra, 482f
482:              sra          tp, s7, t2
                  lui          a1, 477336
                  or           t1, sp, tp
485:              andi         t3, a7, 733
                  add          a7, a4, s6
                  slt          s5, a4, t1
                  ori          s3, s0, 1389
489:              srai         s6, sp, 10
                  sll          s10, s5, s8
                  sltiu        a1, t3, -1034
                  addi         t4, a7, -880
493:              addi         ra, s8, 561
                  xor          s10, a1, zero
                  sltiu        s4, s8, -724
                  xor          a7, a7, a5
                  bltu         s8, a1, 506f
                  bltu         tp, a7, 514f
                  or           a6, a3, s5
                  sltiu        s11, s10, -136
                  sra          s10, t4, s4
                  addi         s7, a5, 281
                  bge          a6, s11, 512f
                  ori          zero, tp, -1587
                  srl          s2, s9, s8
506:              srai         s1, a3, 12
                  auipc        s10, 754573
                  and          t1, a0, a2
                  bne          a6, s2, 517f
                  addi         s11, a0, 1354
                  bge          s2, a0, 530f
512:              sll          s6, gp, a3
                  slt          t0, t2, ra
514:              beq          t1, a0, 527f
                  sub          s1, ra, tp
                  addi         a3, s8, 200
517:              addi         gp, s0, -1747
                  add          s5, t6, t1
                  xor          t2, a2, s10
                  andi         s5, gp, 1201
                  blt          t5, t5, 524f
                  slt          a0, a0, a0
                  add          zero, s11, s10
524:              bgeu         a0, a7, 540f
                  sub          t0, s10, s9
                  xori         a1, sp, -237
527:              bltu         s4, s11, 537f
                  bne          s7, s2, 546f
                  sra          gp, s11, a4
530:              slli         t2, s8, 29
                  slt          s4, s9, t3
                  sub          a1, a5, s3
                  andi         t2, s0, 1432
                  bge          ra, a7, 541f
                  sub          s6, s0, a7
                  andi         s2, s6, 876
537:              bgeu         a3, sp, 555f
                  andi         a2, t4, -704
                  sub          ra, t2, s4
540:              xori         s2, s8, 1682
541:              or           s4, s5, s3
                  sltu         s0, s8, a0
                  xor          zero, t4, a0
                  bltu         s4, t5, 551f
                  addi         a6, s1, -1637
546:              sltu         t3, s11, s8
                  addi         ra, s11, 1640
                  sll          s7, t4, ra
                  beq          t2, t4, 558f
                  nop
551:              auipc        s1, 642052
                  add          t2, t1, s8
                  add          ra, s4, gp
                  add          s3, ra, tp
555:              sltiu        t4, a3, -1094
                  add          s4, tp, a7
                  srl          s4, a3, gp
558:              or           s4, a0, a7
                  bne          t3, a0, 568f
                  sltu         s4, t2, a3
                  nop
                  slt          tp, tp, a2
                  bge          s4, a1, 582f
                  srli         a6, s10, 20
                  nop
                  xor          s0, a0, zero
                  sra          tp, s9, tp
568:              sll          a6, tp, gp
                  bgeu         s10, s8, 585f
                  bltu         a3, s6, 578f
                  or           s6, t4, a5
                  sltiu        s11, s7, 84
                  sltiu        s11, t6, 110
                  nop
                  bne          t3, a6, 592f
                  slli         s10, s2, 22
                  xor          t4, s0, a7
578:              sltu         s4, gp, s4
                  slti         t5, s1, -458
                  beq          a2, gp, 589f
                  xori         s5, tp, 1379
582:              andi         s3, s0, -533
                  bge          gp, s1, 593f
                  bgeu         a2, s6, 597f
585:              sra          s10, t3, s2
                  andi         tp, s3, 710
                  slti         t3, s2, 1293
                  auipc        a5, 106877
589:              bltu         s11, sp, 596f
                  slt          a0, s10, t0
                  ori          a7, a0, 546
                  la           t3, sub_1
                  slt          s11, s6, ra
                  addi         t3, t3, 787
                  xor          t2, a1, s3
                  or           s11, t6, s10
                  sltu         a0, t3, s2
                  andi         a5, t0, -1923
                  srai         t1, a5, 11
                  xori         a7, a5, -1165
                  or           t0, tp, s11
main_j1:          jalr         a5, t3, -787 #jump main -> sub_1
                  sll          a6, tp, t2
592:              nop
593:              srai         t5, s8, 17
                  xor          zero, t6, a2
                  bgeu         s4, a4, 596f
596:              addi         s10, t5, 197
597:              bgeu         s5, s3, 601f
                  xori         t2, tp, -487
                  bne          a0, s4, 611f
                  slt          tp, s2, t4
601:              and          a6, t0, s1
                  sra          ra, a4, t5
                  sltu         a2, s4, s1
                  sll          t0, tp, s0
                  and          a2, a5, s11
                  slt          a2, a5, a6
                  xori         t4, s8, -1464
                  slli         s7, a0, 17
                  sltu         t2, a3, a1
                  slli         t6, sp, 19
611:              addi         zero, s0, -589
                  nop
                  slti         s7, s6, -1005
                  xori         t5, a7, 717
                  srl          s10, a5, s7
                  ori          a0, a5, 937
                  add          s11, s3, s0
                  srai         s7, a6, 21
                  sltu         t1, a7, gp
                  srl          a2, s11, s7
                  lui          s6, 62370
                  srl          gp, s1, a0
                  sltiu        a0, a7, 1330
                  and          a2, s11, s7
                  sub          s11, a7, a7
                  sra          zero, a6, a6
                  bne          s8, t4, 643f
                  bne          a3, t2, 636f
                  sltiu        t3, t6, -1853
                  slt          t3, s0, t2
                  bne          t2, s9, 646f
                  ori          a2, gp, -1
                  blt          s3, ra, 643f
                  slti         s10, a6, 670
                  ori          s10, s11, 1468
                  sltiu        ra, s0, -1079
                  slt          ra, s4, a6
                  add          t0, tp, s11
                  la           s1, sub_2
                  sra          a5, a3, s1
                  or           s2, s5, s5
                  sra          s2, a2, t5
                  addi         s1, s1, -615
                  slti         t0, t0, -183
                  bge          ra, s11, main_j2 #branch to jump instr
                  sltiu        a0, s8, -1437
main_j2:          jalr         a5, s1, 615 #jump main -> sub_2
                  or           t2, sp, t3
636:              bltu         a7, zero, 641f
                  srai         a0, t3, 13
                  srl          s11, a2, a1
                  or           s11, a6, a2
                  add          t4, a4, s8
641:              or           t5, s1, a3
                  bgeu         t0, t5, 649f
643:              ori          t2, s8, -1591
                  lui          a2, 363760
                  bne          a3, sp, 665f
646:              ori          a7, a4, 1230
                  srl          tp, t1, a0
                  bltu         s2, tp, 651f
649:              or           s11, a3, t5
                  slli         tp, t1, 6
651:              slti         a6, t2, 559
                  bgeu         s0, s1, 656f
                  bne          a4, a0, 671f
                  xor          tp, t6, a7
                  sltu         t4, tp, t4
656:              and          s7, s10, t6
                  sub          a5, a2, t4
                  sltu         t5, s4, s8
                  bgeu         s7, a3, 661f
                  or           s3, s8, s7
661:              sll          ra, t6, zero
                  andi         s7, t6, 1803
                  sll          s1, a5, zero
                  ori          s1, s5, 809
665:              bne          a2, t6, 685f
                  sltiu        t3, a2, -340
                  addi         a3, t5, 469
                  slti         a1, a4, -2030
                  sltu         t3, sp, s2
                  sub          t2, s8, s2
671:              sra          s2, t5, tp
                  srai         a0, t5, 2
                  bltu         t0, a6, 687f
                  bge          a1, t2, 681f
                  slt          t4, s9, a0
                  xori         s0, s8, 1440
                  addi         t0, t2, 1362
                  xori         s2, a1, 1571
                  add          a2, t5, s9
                  nop
681:              srl          s0, gp, a0
                  srai         t1, t3, 29
                  nop
                  or           a5, s10, a3
685:              srai         s11, tp, 17
                  slt          a3, ra, s10
687:              srli         t1, s9, 19
                  la x14, test_done
                  jalr x0, x14, 0
test_done:        
                  li gp, 1
                  ecall
sub_7:            blt          a5, s10, sub_7_stack_p
                  slti         s11, t6, -518
sub_7_stack_p:    addi         sp, sp, -20
                  sw           a5, 4(sp)
                  auipc        t1, 143717
                  srai         s4, s2, 30
                  sltiu        s7, s2, 933
                  lui          tp, 1041543
                  ori          s0, s6, 450
                  srai         t4, a7, 27
                  lui          a3, 90328
                  la           t3, region_1+716 #start riscv_load_store_rand_instr_stream_0
                  lb           s4, -405(t3)
                  sh           tp, 364(t3)
                  auipc        t6, 717250
                  slli         s11, t6, 8
                  xor          a1, a5, ra
                  lb           ra, -142(t3)
                  sb           a2, -459(t3)
                  sll          s7, t6, tp
                  lw           a7, 660(t3)
                  srli         s1, a3, 28
                  srl          zero, s0, s4
                  and          a7, a0, t6
                  slli         s3, s8, 17
                  srai         zero, a4, 23
                  andi         t2, s10, -429
                  slti         s4, t2, -2021
                  nop
                  lh           s7, 282(t3)
                  sb           t3, 301(t3)
                  lhu          a3, -690(t3)
                  slti         s1, t3, 115
                  sll          s7, t0, sp
                  lbu          a3, 451(t3)
                  or           s10, a1, t3
                  sb           a5, 1002(t3)
                  lb           zero, 935(t3)
                  srl          t1, s8, t0
                  lb           s4, 443(t3)
                  lui          s2, 27006
                  auipc        t4, 574002
                  lbu          a3, 901(t3)
                  lhu          s1, 1274(t3)
                  sb           s6, 1243(t3)
                  sh           s4, 922(t3)
                  srli         a6, a5, 22
                  lbu          t6, -605(t3)
                  xor          s3, ra, gp
                  nop
                  sw           s0, -128(t3)
                  addi         s2, ra, -1558
                  slli         s4, s9, 26
                  lbu          a2, 503(t3)
                  sh           s6, 598(t3)
                  sb           a3, 529(t3)
                  slt          s2, a7, ra
                  slti         t5, a5, 573
                  srai         a2, a1, 27
                  sb           s5, 801(t3)
                  sll          t6, a7, s5
                  slt          t2, s8, s10
                  xor          t4, s3, t3
                  srl          s0, s4, s11
                  lhu          t0, 84(t3)
                  lh           tp, 1122(t3) #end riscv_load_store_rand_instr_stream_0
                  srl          s2, a6, sp
                  bgeu         tp, a2, 6f
                  slli         s8, s11, 23
                  srl          t3, zero, t4
                  nop
                  lui          s3, 428329
6:                sll          s0, s0, a6
                  or           s6, s1, a0
                  xori         t6, a0, -1273
                  bgeu         a4, ra, 14f
                  bne          tp, t5, 18f
                  sltiu        t4, t5, -708
                  srli         ra, s3, 10
                  auipc        t6, 372846
14:               add          s7, a4, a2
                  nop
                  sltiu        s4, s7, 50
                  slli         s2, zero, 21
18:               sub          s7, a6, t3
                  sltu         gp, s8, s3
                  bltu         s7, s9, 21f
21:               srli         t3, t6, 13
                  slli         s3, s2, 31
                  sub          a2, t1, s10
                  xori         a2, gp, -509
                  sra          s4, s8, zero
                  and          a0, s5, gp
                  beq          s0, t1, 37f
                  slti         s6, t3, 331
                  ori          a3, t3, -1358
                  srli         s3, s5, 21
                  bne          t4, a1, 41f
                  nop
                  srl          s4, t1, a2
                  nop
                  ori          gp, a0, 643
                  bgeu         s3, a5, 43f
37:               srai         a5, s6, 6
                  sra          a2, s11, s3
                  bne          a7, s3, 41f
                  lui          s0, 490959
41:               sra          s8, t1, t0
                  sub          t5, s8, t6
43:               nop
                  xor          t0, a6, gp
                  sub          a7, sp, s8
                  addi         s0, s5, -196
                  slti         t0, s8, 27
                  sub          t1, s9, t6
                  xori         zero, a2, -859
                  nop
                  slt          zero, a6, s0
                  slti         t6, t1, 1879
                  and          s10, t6, tp
                  xor          s8, a5, s11
                  sub          a2, s0, gp
                  bne          t0, sp, 57f
57:               srai         a7, zero, 5
                  and          s11, a2, t2
                  bne          s10, a0, 62f
                  bltu         a6, s3, 74f
                  or           a6, s10, t5
62:               sltiu        s1, sp, 1184
                  srli         t3, t0, 12
                  blt          a2, s9, 72f
                  andi         a0, a5, 1867
                  or           tp, s0, t4
                  slli         s3, s4, 31
                  add          t0, a6, a4
                  srl          gp, gp, t4
                  xori         a3, tp, -798
                  bge          a2, a7, 90f
72:               blt          sp, a4, 85f
                  and          t3, s4, t4
74:               or           s1, s10, a1
                  slli         t4, s1, 8
                  srli         a7, s2, 9
                  auipc        a3, 56058
                  auipc        t2, 594680
                  bltu         s6, s10, 90f
                  auipc        a0, 976884
                  bgeu         t4, a1, 93f
                  nop
                  sra          t3, sp, a0
                  bgeu         gp, t6, 99f
85:               nop
                  lui          s5, 355333
                  lui          ra, 1000403
                  sltu         s2, t4, a7
                  nop
90:               xori         a2, sp, -1418
                  sra          s6, t3, s10
                  slli         s11, s2, 18
93:               ori          s2, s7, -69
                  slti         t4, ra, 605
                  and          s4, t1, a4
                  bge          a2, s2, 106f
                  slli         s0, t1, 5
                  srl          a2, ra, s2
                  andi         s5, t0, 1679
                  or           a2, t4, s4
                  slli         t4, zero, 20
                  nop
                  slti         t2, t3, -637
                  andi         a1, s8, 1097
sub_7_j11:        jal          a5, sub_9 #jump sub_7 -> sub_9
                  sltu         a3, s11, t6
                  and          a7, a0, zero
99:               sub          t1, a5, a3
                  ori          a7, a6, -468
                  srai         s5, s1, 8
                  slti         s2, zero, -1059
                  sub          s2, a1, a6
                  sra          t0, t6, s2
                  lui          t3, 957917
106:              xor          s10, t2, a6
                  slti         s1, s8, 595
                  bne          t2, a4, 118f
                  sub          s3, s5, s9
                  srai         a1, t6, 27
                  auipc        t3, 792803
                  sub          s11, t0, sp
                  srai         t5, a3, 21
                  slti         zero, sp, -1824
                  xor          a1, a0, t6
                  andi         s1, s9, -1301
                  bne          s10, s5, 125f
118:              sub          t0, s3, a1
                  slti         zero, t6, 2045
                  slt          t1, s11, s1
                  srl          a1, s8, zero
                  andi         s10, s8, 657
                  sltu         ra, ra, t3
                  beq          s2, a1, 143f
125:              sltiu        s2, s3, -757
                  bge          s2, a0, 130f
                  bgeu         s7, s9, 134f
                  ori          zero, a6, 1697
                  srl          s3, a2, s10
130:              lui          s6, 426537
                  lui          t4, 672088
                  sra          a3, a2, a2
                  auipc        a7, 688278
134:              auipc        a5, 770157
                  or           s7, s7, tp
                  sltu         zero, s10, a1
                  blt          a4, gp, 141f
                  beq          s8, a3, 152f
                  slli         t3, s0, 30
                  addi         t0, t3, -830
141:              srl          zero, s9, s1
                  slli         a2, t6, 27
143:              ori          t5, t3, 1411
                  auipc        t0, 71985
                  lui          s10, 684148
                  sltiu        s8, s8, 1802
                  srli         t6, s7, 24
                  sra          t4, s5, s5
                  sll          t0, t4, a0
                  nop
                  sll          t0, a1, ra
152:              beq          t4, a2, 154f
                  auipc        t5, 47727
154:              slti         s8, s11, 1437
                  lw           a5, 4(sp)
                  ori          t1, s8, -253
                  lui          t1, 683233
                  addi         sp, sp, 20
                  sub          a1, t0, sp
235:              addi x29, x15, 1
235:              jalr x29, x29, 0
sub_5:            bge          t3, t1, sub_5_stack_p
                  srai         ra, s6, 6
                  srl          s3, t5, t5
                  srl          s3, a2, gp
sub_5_stack_p:    addi         sp, sp, -52
                  sw           a5, 4(sp)
                  srai         t2, a3, 28
                  add          s8, s0, s6
                  xori         s0, s11, -1546
                  srl          a2, s8, s8
                  sltu         a5, s7, t5
                  sra          a1, t1, s9
                  bltu         a2, s9, sub_5_j7 #branch to jump instr
                  slt          s7, t0, s3
                  and          a3, s9, a0
                  sll          t2, ra, a1
sub_5_j7:         jal          a5, sub_6 #jump sub_5 -> sub_6
                  slti         a6, s10, 637
                  la           s10, sub_6
                  nop
                  addi         s10, s10, -291
                  sra          t2, a6, gp
                  sltiu        t5, t6, -1917
                  xor          a1, t4, t4
                  sub          zero, a1, a6
                  bne          a4, a6, sub_5_j8 #branch to jump instr
                  sltiu        t5, s1, -2031
sub_5_j8:         jalr         a5, s10, 292 #jump sub_5 -> sub_6
                  la           t1, region_0+369 #start riscv_load_store_rand_instr_stream_1
                  lb           s2, -39(t1)
                  lb           t3, -48(t1)
                  sb           t6, 8(t1)
                  sw           zero, -49(t1)
                  sb           s7, 30(t1)
                  sb           sp, 32(t1)
                  sb           s4, 50(t1)
                  sb           t1, 12(t1)
                  sra          s1, a1, s11
                  sb           a1, -54(t1)
                  lbu          s1, 32(t1)
                  lbu          t2, -8(t1)
                  lb           s0, 30(t1)
                  xori         ra, s0, 1782
                  lbu          tp, 54(t1)
                  sh           tp, 39(t1)
                  xor          a7, a4, gp
                  sw           s5, -61(t1)
                  sb           a7, 64(t1)
                  nop
                  lbu          s3, 8(t1)
                  sb           t4, -29(t1)
                  lhu          t0, -11(t1)
                  sltu         ra, s0, t0
                  sltu         a1, zero, s11
                  lb           a2, -53(t1)
                  sw           a5, 3(t1)
                  lb           t2, 34(t1)
                  lbu          a0, -37(t1)
                  lbu          tp, 34(t1)
                  auipc        s0, 592403
                  slt          a3, s1, t5
                  slt          a0, s1, gp
                  sw           s8, 47(t1)
                  sub          s6, s2, a2
                  sub          t4, s6, t0
                  lbu          t3, -21(t1)
                  srli         a2, gp, 0
                  sh           a3, -33(t1)
                  sltiu        t4, s1, 872
                  lb           a0, 41(t1) #end riscv_load_store_rand_instr_stream_1
                  la           t6, region_1+1369 #start riscv_load_store_rand_instr_stream_0
                  ori          s6, gp, -2032
                  lb           t0, -186(t6)
                  lui          s5, 67491
                  sub          t5, s9, a4
                  auipc        s1, 307272
                  slli         s3, t6, 7
                  andi         s5, a0, 814
                  slt          a7, s11, a3
                  ori          a1, s3, 304
                  lbu          s6, 148(t6)
                  lui          t0, 105814
                  lb           a3, -31(t6)
                  sb           s4, -49(t6)
                  sub          t4, sp, a4
                  and          a2, a0, a4
                  slt          gp, a0, s10
                  slti         t3, t1, 1199
                  andi         a5, s6, 51
                  lhu          a1, -247(t6)
                  sb           zero, 218(t6)
                  sw           t1, -9(t6)
                  slli         s1, a2, 2
                  srli         t2, s10, 14
                  lbu          a0, -81(t6)
                  sub          ra, a0, a7
                  addi         s5, s0, -1840
                  slt          t4, gp, t6
                  srli         s2, a7, 24
                  auipc        tp, 417285
                  addi         tp, a6, 1031
                  auipc        s11, 509006
                  andi         s1, t4, 1634
                  sltu         s2, a0, zero
                  lb           t5, -148(t6)
                  lhu          s5, 73(t6) #end riscv_load_store_rand_instr_stream_0
                  la           a3, region_0+1295 #start riscv_load_store_rand_instr_stream_2
                  sb           a0, -61(a3)
                  lb           zero, 59(a3)
                  xori         s5, ra, 1122
                  sh           a1, 11(a3)
                  lb           a1, -45(a3)
                  sb           s8, 48(a3)
                  ori          s7, t1, 1292
                  lb           s7, 36(a3)
                  sb           a6, -62(a3)
                  add          s3, a4, sp
                  sll          a5, t5, s4
                  lbu          s1, 15(a3)
                  sll          s2, s0, ra
                  sb           s11, 5(a3)
                  lbu          a1, 16(a3)
                  ori          t2, s4, -269
                  sll          s10, t4, s1
                  slli         s8, s5, 19
                  addi         s4, t4, 967
                  add          a0, s4, sp
                  lb           a2, -8(a3)
                  xor          s1, a0, a3
                  andi         t2, s6, -527
                  lb           a2, -58(a3)
                  add          t2, ra, s0
                  lbu          zero, -40(a3)
                  sb           t4, -48(a3)
                  lui          s3, 548728
                  slti         t6, t3, -863
                  slti         zero, t6, -873
                  sra          s6, tp, t4
                  lui          t0, 625231
                  addi         s10, s3, -926
                  lb           a0, -61(a3) #end riscv_load_store_rand_instr_stream_2
                  addi         s8, s2, 1920
                  sll          a3, a2, s3
                  bne          s0, s8, 17f
                  sub          t4, zero, s0
                  add          s1, a7, a3
                  bgeu         t3, s11, 25f
                  lui          s2, 574744
                  bge          s11, gp, 24f
                  ori          t1, a1, 1180
                  lui          s3, 938030
                  bgeu         s5, s0, 23f
                  bgeu         a6, a1, 20f
                  sltu         ra, t0, s6
                  sltiu        a5, a0, -1066
                  add          t3, a7, t4
                  lui          t6, 946017
                  auipc        t5, 129017
17:               bge          t1, t3, 19f
                  bltu         gp, tp, 24f
19:               bgeu         s11, t4, 39f
20:               bltu         s6, t4, 31f
                  or           s8, t0, a4
                  sra          s10, s6, tp
23:               or           s11, a4, s4
24:               bge          s11, a2, 39f
25:               beq          s5, a7, 40f
                  and          a3, a7, s8
                  bge          s4, t3, 41f
                  sra          a6, s3, s6
                  srli         s6, tp, 9
                  ori          gp, s1, 1749
31:               beq          t6, a0, 45f
                  srai         a2, s11, 3
                  sltu         s2, t5, gp
                  slti         s7, a4, -1154
                  auipc        a6, 668817
                  srai         s1, s11, 0
                  blt          tp, t3, 51f
                  bge          s5, s8, 51f
39:               blt          s3, gp, 53f
40:               srl          a1, s3, t3
41:               bltu         s1, a6, 55f
                  or           t6, t4, s6
                  or           gp, s9, s2
                  ori          s3, s9, 1945
45:               bltu         zero, s6, 48f
                  auipc        t5, 348132
                  xori         a7, s0, 1713
48:               bgeu         s9, t1, 55f
                  sub          s3, a1, a1
                  sub          t0, s8, t6
51:               srai         a1, a4, 17
                  bgeu         s9, t0, 69f
53:               sltu         a3, s1, t0
                  auipc        s0, 533288
55:               sll          t0, s7, s10
                  lui          s0, 464675
                  andi         t3, t6, -667
                  bne          s9, gp, 70f
                  ori          s1, s5, -1612
                  and          a7, a0, s8
                  add          t3, a0, a6
                  andi         t6, ra, -1465
                  ori          tp, s5, -67
                  andi         gp, s4, 1735
                  srl          a2, s11, a5
                  srli         t0, a7, 18
                  or           gp, s1, s4
                  bgeu         s2, s3, 75f
69:               slt          t0, s11, s3
70:               bge          ra, t1, 77f
                  sltiu        s11, s3, -1473
                  sll          tp, sp, s11
                  lui          a2, 400286
                  sub          zero, a7, t2
75:               xor          s2, s3, s8
                  or           a3, ra, a5
77:               bltu         a4, tp, 87f
                  blt          s6, a1, 92f
                  sll          gp, s11, a3
                  addi         t0, s10, 1977
                  slt          tp, s11, a1
                  sra          t1, s4, a2
                  or           gp, a1, a6
                  blt          gp, s1, 100f
                  bge          t5, t5, 104f
                  ori          gp, t4, -1434
87:               sra          t3, ra, t2
                  add          t6, t4, s1
                  addi         s0, t4, 383
                  sltu         a3, t4, a7
                  bltu         tp, s9, 93f
92:               srai         a0, t6, 0
93:               beq          t6, s10, 99f
                  xori         t4, a2, 1528
                  nop
                  auipc        a6, 756059
                  sltu         tp, t2, t5
                  xori         a2, s8, -1849
99:               add          t1, t1, a1
100:              bne          a3, s2, 105f
                  sra          s8, zero, a7
                  and          t5, s0, sp
                  sltiu        tp, ra, -1398
104:              srai         ra, ra, 21
105:              bgeu         a4, s1, 117f
                  srai         t4, t3, 26
                  sra          zero, a4, s9
                  sra          a7, a0, s2
                  srl          a7, s8, tp
                  slt          t2, a1, s11
                  lui          t6, 909797
                  bge          s0, a4, 132f
                  sub          a5, a4, t1
                  bge          ra, a2, 131f
                  bge          gp, a3, 120f
                  sltiu        a2, s10, -1171
117:              and          s8, s4, tp
                  slli         t1, zero, 6
                  nop
120:              sltiu        a1, tp, 6
                  beq          a6, s3, 127f
                  add          tp, s6, a4
                  slt          a7, ra, a1
                  or           zero, s4, t3
                  beq          t6, s3, 139f
                  bgeu         s3, a6, 139f
127:              add          s6, ra, t6
                  ori          s10, zero, -474
                  sltiu        t4, a6, -328
                  xori         t1, s5, 1644
131:              add          s1, a4, t1
132:              blt          a7, s5, 147f
                  srai         s10, s1, 19
                  srli         s5, t1, 7
                  nop
                  or           s5, s7, a4
                  bne          a6, a3, 144f
                  bge          a4, s8, 155f
139:              bgeu         tp, s11, 153f
                  and          tp, t1, s5
                  srai         s8, tp, 13
                  srl          s5, a7, t0
                  sltiu        t4, t4, -1548
144:              srli         s4, t3, 9
                  beq          s5, zero, 159f
                  or           t4, t6, s3
147:              slt          a5, tp, t3
                  xor          a5, s6, t1
                  xor          a7, a6, s7
                  sub          t2, a0, s4
                  beq          ra, a1, 161f
                  slt          ra, zero, s3
153:              xor          a3, gp, s5
                  or           s3, a2, s7
155:              ori          t1, zero, -1583
                  xor          s2, gp, a4
                  and          a6, s7, t1
                  and          t4, a1, a7
159:              sltu         s8, t3, t4
                  bne          s6, a2, 173f
161:              nop
                  lui          ra, 908561
                  and          t5, s9, t1
                  xori         a3, s5, -591
                  or           a5, sp, sp
                  lui          a7, 937670
                  bgeu         gp, s7, 181f
                  auipc        a0, 497186
                  bltu         s8, s7, 184f
                  and          s10, t4, sp
                  bltu         t3, s11, 185f
                  sub          s7, s6, gp
173:              slti         s6, s7, -1305
                  blt          ra, s6, 176f
                  srl          s5, a3, s11
176:              sltu         s4, a5, s9
                  auipc        s1, 468571
                  xor          s0, s5, a0
                  sra          s4, t5, a4
                  ori          a0, sp, -1559
181:              sltiu        a5, s8, 382
                  srli         s5, s11, 15
                  la           s2, region_0+1343 #start riscv_load_store_rand_instr_stream_4
                  lbu          a1, -12(s2)
                  and          t4, a3, s1
                  srai         zero, a5, 23
                  slti         t0, s9, 731
                  sltu         ra, a2, t3
                  sub          ra, a7, a7
                  sb           s6, 12(s2)
                  sh           a7, 3(s2)
                  slt          s8, a0, t2
                  srl          s4, t6, a6
                  srl          t1, t6, gp
                  and          s1, t2, gp
                  sub          t2, t6, t0
                  add          t1, a5, a0
                  lh           a1, -3(s2)
                  lbu          s10, 5(s2)
                  slti         s3, s11, -1945
                  or           gp, s4, a7
                  sll          t5, t3, s1
                  lb           s7, -14(s2)
                  lb           s3, 5(s2)
                  lbu          s10, -12(s2)
                  srl          t5, tp, tp
                  sub          s6, s5, t2
                  sb           ra, 15(s2)
                  lb           s3, 8(s2)
                  sltiu        t0, t4, 763
                  srai         t0, t3, 11
                  auipc        tp, 412994
                  lbu          zero, -16(s2)
                  xor          s6, s3, a4
                  slli         a5, s10, 23
                  lb           tp, 11(s2)
                  srai         t0, a5, 24
                  sb           zero, 15(s2)
                  sw           t6, 1(s2)
                  add          t6, s6, t4
                  ori          t5, t3, -1734
                  or           gp, t1, t5
                  slt          t4, a4, t1
                  ori          s8, s9, 1700
                  lb           t2, -6(s2)
                  lw           t6, -11(s2)
                  sltu         t3, s6, gp
                  lbu          ra, -5(s2)
                  lbu          a7, 1(s2)
                  auipc        a0, 1022185
                  lb           s1, 6(s2) #end riscv_load_store_rand_instr_stream_4
                  srai         s1, a3, 11
184:              slt          a0, tp, s5
185:              and          a3, s4, s4
                  xori         s1, zero, -568
                  srli         s3, t3, 24
                  slt          a2, s8, s2
                  lui          t1, 476007
                  xori         s8, s4, 997
                  add          a7, s5, a7
                  addi         tp, a0, 1703
                  sltiu        t5, s7, 1745
                  xori         s8, s4, -9
                  add          a2, s1, t0
                  and          a0, s2, s0
                  sltiu        a6, gp, 941
                  bltu         a1, s8, 212f
                  srli         gp, a2, 3
                  srl          t4, t4, a7
                  xor          tp, ra, gp
                  bge          s0, a2, 222f
                  bgeu         t5, a0, 209f
                  sltiu        s11, a1, 2034
                  srl          s4, t2, s8
                  auipc        a3, 24931
                  sltu         tp, s6, t4
                  blt          t1, a7, 215f
209:              blt          s10, a0, 212f
                  bge          t6, a3, 219f
                  sltu         s10, t5, a5
212:              sltiu        tp, ra, -1181
                  sub          t1, s6, t0
                  andi         tp, t2, -663
215:              slti         a3, a2, 442
                  sub          gp, ra, s0
                  lui          s5, 1029431
                  blt          zero, s1, 220f
219:              bgeu         s11, a7, 226f
220:              ori          a7, a5, 701
                  xori         a5, s3, 1347
222:              beq          s7, gp, 241f
                  srl          s4, s11, a2
                  bltu         a5, sp, 239f
                  slli         t5, a4, 19
226:              sltiu        a1, s9, -871
                  sltu         s3, s0, t2
                  addi         s2, s3, -765
                  and          a7, t3, gp
                  srai         s10, ra, 12
                  sll          a2, s5, gp
                  bgeu         t6, a7, 243f
                  ori          s2, a4, -1052
                  auipc        s0, 124092
                  srai         s5, s7, 17
                  beq          t4, t6, 252f
                  sltiu        s0, a6, -830
                  ori          a0, a6, -1347
239:              bge          s10, t0, 252f
                  sltu         a3, s8, s10
241:              sltu         a1, t3, t1
                  srl          ra, t3, t0
243:              auipc        s5, 253654
                  or           s6, t6, a3
                  srl          s6, s0, t0
                  add          s0, t5, a7
                  sub          a1, s1, t6
                  srai         s0, s5, 1
                  slt          gp, s5, s9
                  and          s2, s6, ra
                  sltiu        s8, t3, 1682
252:              andi         s0, s6, -1626
                  add          a3, ra, s1
                  srli         s6, t4, 6
                  nop
                  sll          t5, t0, s5
                  srl          s7, s2, a4
                  auipc        zero, 68344
                  srl          s6, a5, a6
                  andi         s11, t5, 1157
                  srl          t6, t5, s6
                  ori          t2, t5, 1593
                  sra          a5, s2, ra
                  ori          ra, s6, 1688
                  addi         a0, t2, -1028
                  bgeu         s7, s8, 273f
                  andi         s0, a2, -1123
                  add          a0, a5, s6
                  lui          t1, 1030828
                  auipc        s1, 27857
                  xori         s11, t0, 2009
                  ori          t0, s10, 821
273:              sra          t0, tp, a4
                  lui          s5, 137531
                  beq          t5, sp, 292f
                  bne          ra, a6, 296f
                  and          a6, s4, s6
                  bge          s2, s6, 297f
                  slti         a1, s3, -1023
                  or           s6, tp, s3
                  bge          a5, a1, 301f
                  bne          s6, a0, 288f
                  ori          t5, a2, -1287
                  and          a5, a2, t1
                  lui          a7, 280653
                  xori         s10, t6, 1353
                  andi         a2, s0, 1375
288:              beq          t4, a6, 302f
                  sltu         t3, s11, s0
                  bltu         s10, t4, 304f
                  ori          t3, a6, 1557
292:              bne          a4, ra, 306f
                  nop
                  blt          t3, t5, 305f
                  andi         s5, s6, -628
296:              and          a7, s0, t1
297:              addi         t3, a1, 563
                  sll          zero, s9, s7
                  andi         t5, a6, -490
                  andi         s3, sp, 295
301:              bne          t0, a2, 316f
302:              sltu         a1, a3, a4
                  ori          a0, ra, 1563
304:              xor          t2, s10, t2
305:              xor          a5, a1, s4
306:              sub          s6, t1, zero
                  and          t0, t2, t5
                  beq          s0, s0, 321f
                  andi         t0, a3, 1359
                  sltiu        a5, s1, 115
                  slti         s1, s3, 712
                  sltu         s6, t4, t3
                  add          a7, t0, a3
                  srli         t3, t2, 10
                  sra          t5, gp, ra
316:              bltu         a4, t5, 323f
                  add          t3, s11, t3
                  sltiu        s1, s5, -1329
                  bltu         a5, s6, 326f
                  blt          a3, tp, 334f
321:              xor          ra, sp, s6
                  sll          a5, ra, s7
323:              ori          a3, s2, -1260
                  sltu         t2, s7, t4
                  or           s7, a0, a3
326:              srl          s5, s1, s4
                  slti         a2, gp, 918
                  sll          s8, a3, s1
                  xori         s5, s4, 1495
                  beq          s8, t5, 332f
                  auipc        s7, 880729
332:              xor          s4, t1, sp
                  xori         s2, t0, -1268
334:              sltiu        s8, s5, -1870
                  bne          t2, s4, 347f
                  slli         t3, a3, 31
                  bgeu         s8, t4, 352f
                  sra          t6, a3, t1
                  sltu         s10, t0, t4
                  lui          gp, 169110
                  nop
                  nop
                  xori         s4, s10, 1567
                  xori         s8, s6, -752
                  slli         a7, a7, 12
                  bltu         a6, s11, 361f
347:              and          s8, zero, t1
                  andi         a0, t2, 1756
                  slli         s0, s2, 21
                  bltu         s4, s10, 353f
                  slli         a6, gp, 27
352:              add          gp, gp, tp
353:              srl          s7, s4, t0
                  and          a7, t3, s5
                  slli         s10, ra, 5
                  srai         s3, s10, 19
                  slli         s8, tp, 11
                  add          s1, s5, t2
                  lui          s8, 605026
                  sltiu        a1, s8, -1496
361:              sltiu        tp, s8, -1565
                  slli         s1, gp, 31
                  or           tp, s5, t0
                  ori          t3, s5, 283
                  addi         gp, s7, 476
                  srli         a6, s1, 18
                  nop
                  addi         t1, t4, -1100
                  srl          t5, gp, t3
                  slt          s0, a0, s6
                  and          t5, s10, a4
                  bltu         s5, t4, 388f
                  sll          s6, a4, a7
                  bgeu         t1, s8, 376f
                  bne          sp, a0, 392f
376:              bge          s1, t6, 386f
                  slti         t1, t3, 469
                  bgeu         s10, t4, 392f
                  ori          s8, s4, -225
                  xori         t6, t3, 1475
                  la           s10, region_1+805 #start riscv_load_store_rand_instr_stream_3
                  lhu          t1, -55(s10)
                  or           t4, a4, gp
                  lb           t0, 56(s10)
                  sw           t1, -61(s10)
                  sb           t6, -14(s10)
                  sb           a1, 18(s10)
                  lb           t3, 4(s10)
                  slli         t0, t1, 22
                  ori          t0, a1, -333
                  slt          a3, a4, s3
                  lb           s0, 8(s10)
                  sb           s0, 25(s10)
                  sra          a6, s9, t1
                  lbu          s3, -62(s10)
                  auipc        a3, 628330
                  ori          s2, sp, -1632
                  addi         t6, s5, 1173
                  lb           t6, -3(s10)
                  lbu          zero, -63(s10)
                  lbu          tp, 13(s10)
                  sra          t1, tp, s7
                  slti         s8, a7, 1409
                  andi         t4, s6, -1960
                  sltu         t0, t4, a5
                  sb           sp, -1(s10)
                  sltu         s1, s10, s10
                  lui          a7, 310282
                  slti         a1, tp, -359
                  lb           tp, 33(s10) #end riscv_load_store_rand_instr_stream_3
                  slt          s6, gp, t2
                  slli         s8, s6, 23
                  blt          a2, t1, 397f
                  slli         s3, t4, 21
                  sll          a7, s3, t6
386:              srl          t1, s2, zero
                  sra          t3, t2, s5
388:              auipc        s11, 921576
                  ori          s8, t1, 1578
                  sltiu        s7, a3, -1008
                  or           a3, s6, t2
392:              add          s11, a5, s0
                  auipc        s0, 803636
                  srli         s8, s6, 16
                  ori          t5, t1, 1932
                  andi         a5, s0, 1823
397:              xori         t1, s2, -42
                  slti         t5, s11, 649
                  slti         s1, s7, -666
                  and          t3, s0, t2
                  andi         s0, gp, -907
                  sra          s0, s9, t5
                  slli         a5, a3, 7
                  sub          t0, a2, t5
                  sltiu        a0, t3, -1848
                  srli         a5, t5, 5
                  sra          s5, gp, t4
                  xori         t2, s6, -1768
                  xori         s5, t1, 1824
                  add          s7, tp, a6
                  or           s11, s11, s8
                  sub          s4, s6, t4
                  bne          sp, a6, 422f
                  xor          gp, a6, s9
                  beq          s8, s9, 420f
                  bge          t1, a0, 422f
                  or           a1, gp, s2
                  sltu         t4, a0, tp
                  slt          ra, t1, gp
420:              andi         a1, a0, -1273
                  sll          s7, s8, s11
422:              xor          ra, t5, s3
                  add          t3, s7, t4
                  xori         s10, s8, 118
                  sub          s4, s7, a7
                  addi         gp, a0, -687
                  and          a1, zero, a4
                  bltu         a6, gp, 435f
                  sra          s10, s7, s0
                  sltu         t4, s5, t4
                  sltiu        t5, t3, -674
                  bgeu         t0, a4, 446f
                  slt          t6, a0, zero
                  nop
435:              srai         s11, a1, 10
                  bltu         a1, s0, 445f
                  srli         tp, t0, 7
                  sra          t2, s10, s8
                  xor          s4, zero, s10
                  lui          t1, 409114
                  auipc        ra, 216009
                  xori         a1, s11, 858
                  addi         s6, s2, 1086
                  beq          s0, sp, 458f
445:              srl          s4, t2, t2
446:              sra          t0, a1, s2
                  nop
                  slli         t3, zero, 28
                  srli         a5, s10, 3
                  bgeu         a7, gp, 465f
                  sll          s8, a3, s0
                  sll          t2, s11, a2
                  bne          ra, t5, 470f
                  sll          t2, a1, t4
                  srai         a0, gp, 30
                  srli         s10, t0, 17
                  sll          t0, s11, s6
458:              bne          t5, a3, 477f
                  sltiu        a6, a0, 1375
                  xori         gp, s10, 1968
                  sltiu        s3, s9, 622
                  sltiu        s6, t0, -1158
                  slti         s0, tp, -55
                  slti         s1, s9, 1784
465:              sltu         a0, a3, sp
                  slli         s2, a0, 11
                  sra          t1, a1, sp
                  slli         s4, s7, 23
                  sra          s6, s2, zero
470:              srli         a5, a1, 14
                  sra          s10, t4, a0
                  srai         s2, t5, 8
                  addi         a3, a4, -1827
                  slti         s6, s9, -1837
                  srli         s8, a3, 25
                  and          s1, s1, a2
477:              andi         s2, t4, 1646
                  sll          s10, s1, t3
                  slti         s10, t0, 115
                  xori         s1, a3, -514
                  bne          t0, t6, 495f
                  addi         a5, a7, -1591
                  nop
                  blt          a5, a0, 490f
                  slli         s4, s3, 24
                  and          a1, s3, s10
                  bge          s2, s6, 502f
                  add          s5, a6, a2
                  andi         t0, gp, -2045
490:              xor          s10, s8, t6
                  slli         s3, ra, 21
                  sltu         t1, t0, s11
                  bne          a3, s4, 506f
                  addi         s4, gp, 571
495:              or           ra, a3, s3
                  bltu         t5, t3, 502f
                  bltu         s2, a2, 507f
                  andi         t4, s6, -705
                  srai         s5, a7, 6
                  nop
                  or           a6, a3, s4
502:              addi         a5, t3, -1846
                  bltu         t6, s4, 517f
                  slti         ra, a6, -892
                  sltu         a0, sp, sp
506:              srl          t6, t5, s0
507:              srl          s8, t2, s2
                  bgeu         t4, t2, 519f
                  or           t1, a2, s6
                  sltu         a7, s8, a4
                  sub          a1, s0, a4
                  slli         gp, a3, 0
                  nop
                  xori         t4, s4, 1788
                  bltu         s7, a2, 517f
                  sltu         s2, sp, s11
517:              sub          gp, t2, s6
                  srl          t5, a1, t0
519:              and          s5, a5, ra
                  and          a6, t3, a5
                  ori          t0, s0, -947
                  sltiu        t4, a3, -1857
                  slti         a0, s5, 1748
                  srl          ra, s8, t3
                  blt          t2, t5, 545f
                  or           a0, t3, a2
                  ori          t4, s11, -1354
                  beq          s4, a5, 531f
                  sub          zero, t2, t2
                  or           ra, s6, a6
531:              nop
                  slt          a3, s7, t5
                  bge          t0, t4, 538f
                  xori         t4, a4, 1620
                  slli         s1, s1, 19
                  add          t5, t2, t0
                  addi         zero, s11, 688
538:              blt          s4, s0, 545f
                  srli         a0, s1, 9
                  srli         s7, s9, 5
                  xor          s10, a1, a4
                  nop
                  add          zero, a0, s5
                  sub          s5, t0, a4
545:              lui          a3, 1040907
                  bgeu         s0, s7, 548f
                  beq          a2, tp, 554f
548:              ori          t4, a0, 1879
                  and          s10, t0, s4
                  xori         s6, a2, 1882
                  nop
                  blt          s7, tp, 564f
                  srli         ra, t1, 13
554:              or           t3, gp, a2
                  nop
                  lui          t1, 666879
                  add          a6, s7, a0
                  lui          s0, 557678
                  beq          s4, sp, 573f
                  addi         a5, t6, -1039
                  xori         t2, gp, -358
                  bltu         sp, gp, 577f
                  bne          a7, sp, 583f
564:              sltiu        t4, t0, 613
                  sub          t5, s9, gp
                  nop
                  srli         a2, s9, 14
                  blt          s11, t0, 582f
                  blt          tp, t0, 586f
                  slti         s3, s10, 718
                  srai         s3, a2, 28
                  bge          a0, gp, 588f
573:              sltiu        a5, t0, 1873
                  bgeu         a7, s11, 587f
                  srli         s7, s3, 14
                  lui          gp, 188164
577:              andi         zero, s0, 514
                  slti         tp, a7, 1493
                  andi         a2, sp, -165
                  or           tp, t0, s3
                  addi         s11, a1, -1771
582:              sra          s0, zero, s2
583:              srli         t6, s6, 10
                  bltu         a6, s5, 601f
                  slli         t4, t3, 7
586:              andi         a6, s11, 1451
587:              nop
588:              slt          a5, t3, t2
                  sltiu        s8, gp, -534
                  srli         s0, s6, 25
                  srl          t4, s0, t4
                  bge          s8, s5, 607f
                  sltu         t5, s1, t2
                  slti         gp, t1, -1653
                  andi         t3, t0, 1346
                  lui          t3, 147780
                  bne          s10, a1, 604f
                  blt          tp, t1, 600f
                  xori         s6, s11, 212
600:              bne          ra, a7, 612f
601:              slli         a0, sp, 23
                  sra          s7, s1, t6
                  nop
604:              nop
                  or           t2, t3, a2
                  slti         ra, s3, 699
607:              and          s3, s7, s4
                  sll          a3, a1, t5
                  nop
                  srai         t2, s10, 5
                  slt          a5, ra, t4
612:              add          tp, s2, zero
                  slt          s8, a0, s11
                  srl          a2, a4, a3
                  nop
                  nop
                  sub          gp, a0, zero
                  beq          t4, s11, 625f
                  sltu         a3, t1, t1
                  bltu         s9, s0, 629f
                  lui          tp, 425530
                  sltiu        s11, t0, -156
                  bltu         a7, s8, 629f
                  srl          gp, t4, t2
625:              add          tp, t0, s10
                  srl          s6, ra, s8
                  slti         tp, ra, 929
                  bge          a1, a4, 629f
629:              auipc        a5, 660587
                  slti         s7, s7, -431
                  sltiu        zero, s3, -1595
                  add          t2, ra, t0
                  or           s1, s3, a2
                  nop
                  xori         a3, t1, 95
                  sltiu        ra, gp, 795
                  lw           a5, 4(sp)
                  andi         t3, t0, 744
                  srli         s3, a1, 7
                  addi         sp, sp, 52
                  addi         tp, a3, 876
862:              addi x10, x15, 1
862:              jalr x10, x10, 0
sub_10:           sll          a2, s5, s2
                  bge          a4, a1, sub_10_stack_p
                  srli         zero, s9, 0
                  sub          t2, sp, t5
                  sltiu        t3, a1, 1099
sub_10_stack_p:   addi         sp, sp, -32
                  sw           a5, 4(sp)
                  slti         s2, s9, 55
                  blt          a0, s9, 14f
                  ori          t3, a5, 1785
                  slti         s0, t0, -621
                  andi         s5, s1, 762
                  beq          s5, s8, 10f
                  or           t0, s1, s3
                  sll          t3, s2, s7
                  sll          t1, s9, s5
                  bltu         t2, t6, 27f
                  and          ra, s4, a6
10:               addi         tp, gp, 1609
                  auipc        zero, 751119
                  bne          a6, s3, 17f
                  srl          ra, a6, s11
14:               xor          s6, s11, zero
                  sub          t6, a2, a2
                  slli         a0, s0, 25
17:               bgeu         t0, t1, 32f
                  sll          gp, t5, t3
                  bne          s4, s8, 34f
                  srl          s2, zero, s11
                  lui          t6, 544070
                  srli         t1, s0, 1
                  beq          t0, a5, 33f
                  and          s8, tp, t2
                  and          s11, a0, s10
                  addi         s4, s10, -833
27:               andi         ra, s9, 2023
                  slli         s1, t3, 25
                  bltu         s1, a5, 45f
                  srl          s5, t2, a2
                  srli         s7, s10, 7
32:               auipc        s10, 469423
33:               slti         t1, a0, -1438
34:               nop
                  bltu         sp, s7, 39f
                  sltu         t4, s10, t1
                  add          s0, s1, a4
                  srai         a7, s9, 22
39:               sltiu        t0, a7, -434
                  addi         t6, a2, -950
                  bne          tp, t5, 48f
                  sll          t5, a0, s0
                  beq          t3, s11, 62f
                  sll          a7, a7, a2
45:               slti         gp, s0, -767
                  andi         a6, t1, 851
                  xor          ra, sp, t6
48:               sltu         a0, t6, sp
                  bgeu         gp, t6, 62f
                  slt          a0, s3, s4
                  ori          s2, gp, 404
                  bgeu         a1, t1, 60f
                  bge          a2, s9, 62f
                  blt          s4, t0, 61f
                  beq          a2, t2, 62f
                  srl          t6, s7, a1
                  bne          t6, a7, 62f
                  slti         t5, s9, -232
                  ori          s0, s7, -245
60:               add          a5, a0, sp
61:               slli         a1, t1, 10
62:               lui          a7, 679125
                  lw           a5, 4(sp)
                  and          t3, s8, t0
                  sltu         s8, a7, t2
                  addi         sp, sp, 32
                  slt          s11, s6, t4
                  sll          s7, t0, ra
                  sll          s8, s5, s10
                  slli         s5, tp, 28
                  auipc        a6, 259981
                  xor          t0, sp, a0
                  sra          s6, t1, tp
                  sll          t5, s11, t1
83:               addi x5, x15, 1
83:               jalr x5, x5, 0
sub_6:            or           gp, s1, tp
                  blt          a0, t6, sub_6_stack_p
                  addi         t3, a6, 1731
sub_6_stack_p:    addi         sp, sp, -64
                  add          t2, s2, s6
                  sw           a5, 4(sp)
                  srai         t6, t0, 9
                  la           t3, sub_7
                  addi         t3, t3, -649
                  sltiu        a5, a3, 46
                  srli         s7, s5, 19
                  sltiu        t2, s8, -1738
                  beq          ra, s1, sub_6_j10 #branch to jump instr
                  lui          t0, 365248
                  srai         s3, a2, 11
                  and          t0, s7, t1
                  add          a3, s10, t6
                  sltu         s11, t3, s11
                  add          s7, t1, s3
sub_6_j10:        jalr         a5, t3, 649 #jump sub_6 -> sub_7
                  la           a1, region_0+1003 #start riscv_load_store_rand_instr_stream_1
                  or           s7, s6, ra
                  lbu          a6, 63(a1)
                  and          s7, sp, s6
                  lui          a5, 149813
                  sw           t6, -59(a1)
                  sh           a3, -25(a1)
                  xori         s3, t3, -266
                  lh           t5, -29(a1)
                  auipc        s8, 227627
                  srl          a0, a0, sp
                  or           s2, tp, s3
                  slt          t4, s0, s8
                  lb           a0, 42(a1)
                  lb           a6, -13(a1)
                  and          t4, s3, a7
                  srli         gp, ra, 11
                  xori         t2, tp, -1917
                  srl          s6, ra, a6
                  slli         s5, t0, 25
                  lbu          gp, 36(a1)
                  sra          tp, t4, a4
                  slt          s4, s11, zero
                  auipc        s2, 399848
                  and          s6, t4, a5
                  addi         a5, t2, 169
                  lb           s10, 3(a1)
                  addi         s7, t6, 1911
                  srli         s4, s4, 10
                  slli         s0, s5, 14
                  xor          s7, a7, a4
                  lbu          zero, 23(a1)
                  ori          a5, s0, 921
                  addi         a6, t5, -605
                  lb           t0, -2(a1) #end riscv_load_store_rand_instr_stream_1
                  la           s5, region_0+160 #start riscv_load_store_rand_instr_stream_0
                  srai         s2, s5, 11
                  sh           a4, 974(s5)
                  lbu          s6, 194(s5)
                  lui          s8, 59310
                  lbu          a5, 1671(s5)
                  lb           t0, -25(s5)
                  slli         tp, zero, 3
                  xori         s11, s4, 636
                  and          t3, s6, s2
                  srl          s2, a6, s10
                  lbu          s1, 315(s5)
                  lb           s1, 176(s5)
                  sll          a5, a4, s10
                  sltu         a2, s11, s2
                  lbu          s8, 1051(s5)
                  lbu          s8, 194(s5)
                  sltu         a7, t3, gp
                  srli         t5, t6, 8
                  lbu          t5, 856(s5)
                  lh           s8, 704(s5)
                  sh           s2, 250(s5)
                  sh           t0, 346(s5)
                  nop
                  auipc        t4, 622361
                  and          zero, tp, a4
                  lbu          ra, 1039(s5)
                  lb           tp, 360(s5)
                  sw           s9, 84(s5)
                  lb           zero, 320(s5)
                  lhu          s11, 836(s5)
                  lui          s3, 579093
                  lb           zero, 163(s5)
                  srl          a6, s7, a2
                  lbu          t3, 1521(s5)
                  lbu          s6, -102(s5)
                  andi         s11, t2, 174
                  sll          t3, s1, t5
                  lb           t0, 946(s5)
                  sltu         t0, t1, a3
                  ori          s8, t2, -1083
                  nop
                  slt          a1, s11, a7
                  lb           s1, 1579(s5)
                  auipc        a6, 960984
                  lui          a2, 383626
                  ori          s0, t5, -1611
                  lbu          s11, 1392(s5) #end riscv_load_store_rand_instr_stream_0
                  la           a6, region_0+1302 #start riscv_load_store_rand_instr_stream_2
                  sra          a2, s7, t2
                  lhu          s0, 374(a6)
                  ori          s1, s6, -1768
                  sb           s9, 151(a6)
                  add          s2, a3, t2
                  slt          s0, s1, t1
                  srl          t6, s9, t2
                  sltu         s11, a4, s3
                  slti         s1, s6, -1716
                  sltu         s7, a1, t1
                  sub          t4, a6, gp
                  sltiu        s1, gp, 1898
                  addi         tp, s2, 906
                  nop
                  add          s1, a3, s8
                  lb           s5, -1269(a6)
                  lbu          s7, -468(a6)
                  addi         zero, a7, 159
                  lb           s0, 618(a6)
                  srai         s10, s7, 31
                  or           s3, s7, t1
                  and          s2, sp, a3
                  slt          ra, s9, sp
                  lbu          t1, -739(a6)
                  ori          s7, s4, -443
                  lb           t1, -197(a6)
                  and          t3, s3, s0
                  srl          s10, a5, s5
                  lbu          t3, -1289(a6)
                  ori          s3, t2, 1619
                  add          gp, s5, s2
                  sb           s6, -1049(a6)
                  add          t1, s1, s8
                  nop
                  srli         s0, t0, 1
                  sh           tp, -596(a6)
                  xor          a1, t4, s1
                  sh           t3, -260(a6)
                  srai         t3, t2, 6
                  lbu          tp, -925(a6)
                  and          gp, a6, s8
                  lbu          t5, -973(a6) #end riscv_load_store_rand_instr_stream_2
                  bge          sp, s2, 2f
                  bne          a5, zero, 21f
2:                sra          s10, s10, t4
                  blt          a6, sp, 19f
                  lui          a1, 953637
                  srli         s8, t5, 25
                  bne          t3, s2, 23f
                  auipc        a5, 335180
                  blt          t1, s8, 28f
                  bge          tp, t2, 18f
                  addi         s2, sp, -1039
                  addi         s7, tp, -1071
                  nop
                  and          s10, a0, s4
                  sub          s2, s2, s10
                  xor          a6, t2, s6
                  slt          s10, a2, t1
                  slt          s5, a2, a7
18:               and          s4, s2, a2
19:               bltu         t0, s7, 38f
                  bge          a0, t3, 33f
21:               bge          gp, s9, 32f
                  bne          a6, a1, 24f
23:               andi         s4, a6, 979
24:               ori          a3, a5, 1659
                  sra          t2, a5, t6
                  beq          s4, s4, 44f
                  srli         s4, t1, 20
28:               srai         tp, a6, 5
                  xor          s4, a2, s9
                  slli         s4, s1, 26
                  bgeu         s4, s0, 43f
32:               srli         s4, ra, 7
33:               srli         t2, s8, 0
                  srai         s2, s6, 15
                  xor          s5, sp, t5
                  addi         a2, s7, -963
                  bgeu         s6, s7, 47f
38:               blt          tp, s3, 48f
                  ori          t5, gp, -1166
                  srli         s4, a6, 6
                  srai         a1, a2, 27
                  bltu         a1, a5, 44f
43:               beq          t5, gp, 54f
44:               bge          s10, s9, 56f
                  bne          sp, s3, 59f
                  srli         ra, s3, 10
47:               bltu         a3, s0, 53f
48:               add          ra, s0, a4
                  bne          s9, a1, 52f
                  lui          t6, 468780
                  nop
52:               bne          t3, a1, 66f
53:               ori          s2, t6, -1374
54:               srl          gp, a5, t1
                  bne          a2, a4, 69f
56:               and          s0, t2, s10
                  andi         s10, a7, 237
                  srl          a1, a7, s8
59:               bltu         s11, s9, 72f
                  slli         s3, a1, 16
                  bge          gp, s5, 69f
                  bne          a2, gp, 80f
                  nop
                  beq          s8, s11, 83f
                  sub          tp, t5, s11
66:               andi         zero, a0, 492
                  or           a7, gp, a7
                  slt          zero, s5, a5
69:               nop
                  nop
                  srl          s11, t4, t1
72:               sltu         a0, a1, s0
                  srai         s5, t2, 22
                  sll          t2, a3, gp
                  add          t3, s0, t2
                  sub          s8, s7, s3
                  bgeu         t4, a4, 84f
                  slti         t2, t6, -1573
                  ori          s10, s11, -163
80:               nop
                  blt          t5, s7, 92f
                  auipc        ra, 400126
83:               addi         s4, s10, 1746
84:               bge          s10, t0, 89f
                  lui          a0, 599979
                  lui          s4, 636801
                  srli         a7, a3, 12
                  bltu         s4, s2, 105f
89:               srai         tp, t2, 27
                  addi         s7, s1, -1816
                  slli         t6, t5, 3
92:               add          a6, a3, s2
                  bgeu         s5, t5, 107f
                  srl          s10, s9, ra
                  add          s4, a1, a4
                  bne          t0, s0, 116f
                  ori          a7, a5, 113
                  srai         a0, t5, 17
                  blt          a3, t2, 105f
                  sll          a3, s2, t5
                  add          t5, a1, t3
                  bge          t2, s5, 119f
                  bne          a0, s8, 106f
                  sra          t5, s0, s6
105:              blt          t1, t0, 116f
106:              srl          a7, t3, t1
107:              xori         s11, s6, -407
                  slt          a3, a2, a6
                  srli         t1, a5, 16
                  sltu         a1, a3, t6
                  and          a2, t2, a6
                  srai         s7, a0, 14
                  andi         ra, s3, -504
                  xori         a5, t5, 467
                  bltu         a2, a0, 120f
116:              and          s10, t1, a1
                  blt          s5, s8, 119f
                  blt          s5, gp, 131f
119:              sltu         t5, a0, s10
120:              xor          ra, a6, s7
                  bne          t3, s0, 129f
                  auipc        s3, 712288
                  sltu         s6, s2, a5
                  slt          a5, t5, s9
                  sll          a6, t3, sp
                  sltu         a1, s4, s5
                  ori          s4, s0, -259
                  sltiu        t1, ra, -321
129:              beq          t3, s0, 138f
                  bge          ra, ra, 132f
131:              bne          sp, a6, 147f
132:              srl          s0, s10, t4
                  sll          a2, a7, s3
                  sltu         tp, tp, a3
                  bgeu         s0, s7, 147f
                  add          t5, s8, t5
                  bltu         a5, s1, 155f
138:              sra          s10, s6, a6
                  slli         ra, s4, 13
                  sll          s5, s10, t1
                  xori         a1, t0, -1549
                  xor          a5, a3, a5
                  sltiu        a7, a7, -449
                  srli         t1, tp, 28
                  sltu         a3, t3, sp
                  sltiu        t3, s1, 1702
147:              xor          t3, s3, s9
                  add          s10, s7, a4
                  bltu         t5, a4, 163f
                  bge          a4, s6, 162f
                  srl          t0, a5, s3
                  beq          s0, a0, 170f
                  bge          sp, s7, 173f
                  auipc        t2, 622224
155:              blt          t2, s8, 165f
                  sra          t1, t4, a0
                  bgeu         t6, s3, 164f
                  slli         s2, ra, 27
                  nop
                  andi         ra, s0, -1675
                  xori         s7, s5, -1336
162:              sll          a3, gp, a5
                  slt          t3, s2, s11
                  la           t4, sub_8
                  srl          s10, a3, s5
                  slt          s11, s10, s2
                  addi         t4, t4, 146
                  sltu         gp, t1, t4
                  bne          s3, a6, sub_6_j9 #branch to jump instr
                  xor          a1, s1, s8
                  and          a3, t4, gp
                  or           t5, a6, s2
                  auipc        zero, 402101
                  srl          t5, t4, s3
sub_6_j9:         jalr         a5, t4, -145 #jump sub_6 -> sub_8
163:              add          a1, s4, tp
164:              or           a0, t3, gp
165:              beq          tp, t2, 176f
                  andi         t1, s10, -610
                  srl          zero, s4, a6
                  slli         gp, s7, 2
                  slti         a3, t0, -874
170:              slti         t2, a2, 1351
                  bne          a0, s6, 182f
                  lui          a5, 780857
173:              slti         a5, a6, -9
                  auipc        s6, 787819
                  srli         a3, t4, 19
176:              lui          a7, 196031
                  sltu         tp, t4, s8
                  addi         s0, a2, 1139
                  xori         s10, a3, -469
                  beq          a0, gp, 199f
                  add          s0, a4, s0
182:              ori          a1, t5, -1031
                  sltu         s10, t3, sp
                  slli         tp, s5, 14
                  xori         zero, s0, 1040
                  bgeu         t5, t4, 205f
                  nop
                  sub          t3, a7, sp
                  beq          a7, s10, 206f
                  sub          a0, a7, s2
                  addi         ra, gp, 1642
                  beq          zero, t1, 194f
                  slt          s7, s10, t5
194:              add          s10, sp, s7
                  sub          s8, a6, s1
                  sub          s7, t0, t4
                  slti         a0, s10, -1695
                  auipc        s0, 135025
199:              sltiu        s2, s10, 506
                  bgeu         s5, a5, 213f
                  auipc        t2, 373316
                  bne          a7, a5, 212f
                  nop
                  andi         a6, a7, -1561
205:              andi         tp, a5, 1322
206:              sub          s8, s1, s3
                  srl          s2, a6, a7
                  bne          s8, s1, 222f
                  bge          s5, s1, 218f
                  sltiu        t5, t5, -502
                  lui          a2, 88214
212:              beq          s2, s4, 231f
213:              lui          s11, 181013
                  ori          a1, gp, 942
                  ori          a3, gp, 1970
                  auipc        s1, 178622
                  ori          ra, t5, 1531
218:              bne          zero, t1, 231f
                  nop
                  slli         a3, t3, 3
                  or           t3, a7, t1
222:              sltiu        t6, t3, 2011
                  sra          t5, s6, t4
                  srli         a6, t0, 13
                  add          s0, s6, t2
                  auipc        a5, 1014326
                  beq          gp, t0, 232f
                  sltu         a1, s7, zero
                  slli         t5, a1, 3
                  slt          tp, t0, s9
231:              sll          ra, s10, t4
232:              slli         a6, s2, 6
                  or           s1, s2, t4
                  and          s11, a5, a0
                  beq          a2, zero, 254f
                  lui          t2, 432996
                  beq          t0, s0, 243f
                  add          a6, s2, s8
                  srli         s4, s7, 31
                  lui          s4, 294716
                  sub          s4, s8, t3
                  beq          tp, sp, 262f
243:              nop
                  slli         ra, a6, 1
                  or           a6, s2, s1
                  bgeu         a2, s3, 263f
                  ori          t2, t3, -786
                  sra          t5, a0, sp
                  sltiu        a1, s4, 930
                  bgeu         s11, a3, 252f
                  addi         s2, s9, -436
252:              slti         s8, s11, -640
                  beq          tp, s7, 266f
254:              sub          t4, s4, a0
                  beq          ra, t5, 257f
                  sltiu        t6, t1, -113
257:              srli         t0, s7, 6
                  add          a5, t1, sp
                  beq          zero, s7, 277f
                  addi         a2, a4, -553
                  addi         a6, t2, 440
262:              auipc        t4, 224115
263:              slt          tp, s3, s1
                  slli         t6, s8, 29
                  blt          s3, s10, 267f
266:              blt          a6, a3, 280f
267:              bne          a4, t3, 279f
                  slli         s5, a2, 9
                  bltu         a1, s6, 289f
                  sub          tp, t4, a3
                  ori          t4, a0, 1973
                  blt          s2, s6, 282f
                  bgeu         s5, s7, 284f
                  ori          a6, s1, 826
                  bgeu         a7, sp, 282f
                  slti         a1, t5, 1161
277:              srl          t0, sp, a2
                  xor          s11, s7, a0
279:              sub          s6, a2, s0
280:              nop
                  slt          gp, a6, s7
282:              slti         a2, s2, -868
                  lui          s8, 721489
284:              auipc        s1, 837419
                  auipc        t5, 171166
                  slti         s2, a3, 1362
                  andi         t4, gp, -1406
                  beq          a3, s6, 302f
289:              auipc        a7, 668186
                  srli         a0, a2, 19
                  slt          t3, t0, t5
                  andi         s4, t2, -299
                  slt          tp, a4, t2
                  andi         t6, t0, -314
                  sra          t4, t6, t6
                  and          a3, s11, s3
                  slti         s11, gp, -143
                  sll          t3, s11, a0
                  sra          ra, sp, s7
                  srli         a0, a7, 2
                  slt          a1, s11, t6
302:              sltiu        s1, t0, -1567
                  sub          a2, sp, a7
                  xor          a1, tp, t0
                  sra          t0, s10, s4
                  xor          a1, s11, s2
                  bne          t4, zero, 319f
                  lui          a7, 809496
                  auipc        t0, 558124
                  srl          t2, s10, s7
                  srli         a6, t0, 13
                  xori         s1, t0, -734
                  bne          ra, t0, 331f
                  sll          a1, a6, zero
                  and          a1, a6, s0
                  slti         s3, t6, -840
                  addi         s8, a2, 1441
                  or           s4, a2, s1
319:              srl          a6, s10, s4
                  lui          a2, 683131
                  beq          t1, gp, 324f
                  bge          s1, t3, 330f
                  bne          s6, s6, 340f
324:              srl          a1, s5, s1
                  bge          a1, s0, 336f
                  sub          gp, gp, s5
                  andi         a0, a7, -1219
                  sra          t4, t3, s11
                  sltu         a2, t6, a5
330:              add          s11, t0, a7
331:              auipc        s6, 559231
                  blt          gp, a1, 342f
                  addi         s11, t5, 1180
                  srai         s11, s7, 31
                  lui          s4, 93805
336:              blt          s10, t6, 347f
                  sub          t6, a6, s11
                  auipc        a5, 662321
                  add          s5, a6, s9
340:              lui          t5, 336282
                  and          t5, s3, s11
342:              nop
                  bge          t3, a1, 357f
                  sra          ra, s6, s8
                  sub          a0, a7, a7
                  bge          s1, s3, 362f
347:              bgeu         s0, a4, 365f
                  nop
                  lui          a3, 407291
                  sltu         s3, s1, t0
                  ori          s7, s5, -1738
                  slt          s1, s2, a2
                  or           t1, a7, s2
                  and          t4, t0, a0
                  srai         s5, a4, 27
                  nop
357:              xori         s4, s5, -29
                  bltu         t4, ra, 365f
                  srli         a3, a1, 14
                  addi         t0, a7, 1005
                  sub          a1, s9, s0
362:              add          t5, a5, zero
                  addi         t6, t0, 1281
                  sra          t0, a0, sp
365:              sltu         t6, s5, s2
                  srl          t0, s5, a1
                  sub          s8, t5, a4
                  slt          t6, sp, a2
                  sltu         a6, t3, zero
                  sub          a7, a2, s3
                  or           ra, t0, a6
                  add          t2, s1, s5
                  sltu         ra, zero, s3
                  bge          a1, s9, 384f
                  xor          s4, a2, a4
                  sltiu        s1, s1, 1177
                  slli         t0, a6, 21
                  beq          t3, t3, 384f
                  bne          s3, s1, 384f
                  slti         a3, s2, 724
                  srli         gp, s1, 13
                  beq          sp, a5, 384f
                  andi         s0, s4, 2018
384:              andi         t6, a5, 171
                  lw           a5, 4(sp)
                  sltu         zero, t6, t5
                  nop
                  ori          t2, sp, -832
                  and          t3, s10, a7
                  or           s0, t5, gp
                  addi         sp, sp, 64
                  auipc        s3, 425986
                  xori         s7, a3, 273
553:              addi x5, x15, 1
553:              jalr x5, x5, 0
sub_3:            and          ra, a3, sp
                  ori          s11, s4, -1856
                  srai         s1, s10, 1
                  slt          s8, s10, ra
                  blt          s0, a4, sub_3_stack_p
                  andi         s0, a1, 831
                  srai         s3, s0, 26
sub_3_stack_p:    addi         sp, sp, -60
                  lui          a0, 798106
                  sw           a5, 4(sp)
                  sub          a3, a5, s5
                  or           gp, s7, s10
                  andi         s7, s0, 1979
                  nop
                  sub          a0, s2, gp
                  slti         s0, a3, -1446
                  la           s7, sub_4
                  addi         s7, s7, 493
                  xor          a3, a7, a0
                  sub          s2, a0, s2
                  slti         s11, s4, -1064
                  slt          s4, t3, s11
                  add          t6, a7, s8
                  slt          tp, gp, t5
sub_3_j5:         jalr         a5, s7, -493 #jump sub_3 -> sub_4
                  auipc        t3, 897370
                  srl          s8, s10, s5
                  or           s7, a5, t2
                  sll          s7, t2, tp
                  bne          a2, s8, 19f
                  nop
                  nop
                  sltu         a3, s3, s2
                  bgeu         t5, t6, 11f
                  nop
                  beq          s4, t0, 29f
11:               andi         s0, t3, 500
                  lui          s1, 45327
                  sub          s3, s11, a1
                  srl          t1, s4, a4
                  sltu         s7, s0, ra
                  bltu         ra, s1, 19f
                  slli         t4, t1, 17
                  auipc        s10, 750237
19:               slt          t1, s8, t3
                  blt          a5, t5, 40f
                  xor          s4, tp, a4
                  srl          t0, sp, t0
                  auipc        t0, 356373
                  sltu         a5, t1, a1
                  beq          s9, t1, 40f
                  or           t2, t5, s4
                  andi         t0, a4, 887
                  lui          t0, 190887
29:               sra          s8, t5, s9
                  andi         s3, t5, -283
                  slli         tp, s7, 10
                  bne          s7, t0, 33f
33:               bne          t1, s2, 40f
                  xori         a0, s5, -2012
                  beq          t4, s9, 55f
                  sltiu        s4, t5, 338
                  slt          s5, a4, s4
                  addi         s10, sp, 1718
                  srl          t0, tp, s10
40:               or           a6, s8, gp
                  bge          t1, s10, 50f
                  slti         a0, a7, 1552
                  srai         s4, t5, 26
                  slt          t5, zero, s9
                  nop
                  beq          s4, s1, 53f
                  beq          ra, t4, 60f
                  add          s11, a1, s2
                  beq          s2, a1, 60f
50:               lui          a3, 227627
                  or           s10, t4, tp
                  bgeu         s1, t1, 72f
53:               srli         s7, a5, 3
                  addi         s0, t1, 630
55:               bne          a7, s6, 74f
                  bgeu         a1, ra, 60f
                  andi         gp, s9, -2008
                  bge          s9, zero, 67f
                  srai         ra, s10, 14
60:               slt          t5, s8, t0
                  xor          t2, a5, a6
                  sll          a2, tp, s4
                  lui          a1, 1036691
                  addi         s5, a6, 1789
                  sra          t5, s2, t5
                  xori         t2, s6, -1149
67:               blt          a7, a2, 84f
                  xori         s3, sp, 1537
                  and          s2, s2, t2
                  sltiu        a5, s11, 634
                  add          a3, s10, t3
72:               slti         a5, s7, 1384
                  ori          a0, s8, -1722
74:               xori         a7, s5, 1727
                  andi         s3, tp, 502
                  srl          s8, a7, s7
                  blt          s1, t6, 94f
                  bne          t5, a6, 88f
                  nop
                  sltu         a7, t3, a6
                  sll          s7, s5, zero
                  la           s0, sub_4
                  add          t0, s4, t0
                  slt          a6, s11, s1
                  slt          a5, t6, a5
                  addi         s0, s0, 754
                  sra          s10, s10, t6
                  add          s4, sp, ra
                  and          gp, s7, a5
                  auipc        s7, 758085
sub_3_j4:         jalr         a5, s0, -753 #jump sub_3 -> sub_4
                  or           s11, s8, t6
                  sltu         s4, a2, a7
                  xor          t2, s6, s8
                  nop
84:               srl          a1, tp, s10
                  sra          a2, t0, gp
                  slli         s8, s4, 20
                  xor          a5, ra, t4
88:               sub          a3, s5, tp
                  bne          a6, a2, 106f
                  auipc        zero, 150332
                  or           a7, a5, t1
                  srli         t4, zero, 19
                  bltu         a6, a1, 98f
94:               and          ra, s2, t5
                  xori         s3, s1, 1657
                  sub          a7, t3, a7
                  blt          s7, a0, 106f
98:               beq          gp, t0, 101f
                  auipc        a3, 454330
                  ori          a2, t2, 1647
101:              srai         s0, t2, 7
                  sub          tp, a7, a1
                  xori         s4, t4, 1689
                  blt          a7, t1, 111f
                  bge          s10, t1, 111f
106:              sll          a0, s3, t3
                  slti         t3, t0, -211
                  sll          s5, s11, t2
                  ori          s4, t1, 924
                  bltu         s10, s11, 115f
111:              xor          s11, s4, t5
                  addi         t5, t5, 754
                  sub          s10, a6, s7
                  sra          a5, ra, s8
115:              auipc        a1, 751401
                  lw           a5, 4(sp)
                  addi         sp, sp, 60
                  lui          s4, 651056
                  and          gp, a1, tp
                  or           s4, a4, s5
                  xor          gp, s9, s5
159:              addi x27, x15, 1
159:              jalr x27, x27, 0
sub_1:            slti         gp, t5, -1225
                  addi         sp, sp, -32
                  sltiu        s1, sp, -699
                  sw           a5, 4(sp)
                  sll          gp, s6, s8
                  andi         a3, t5, 240
                  xori         a0, a3, 1887
                  slti         tp, s8, -1047
                  add          a6, s9, s2
                  srai         s4, sp, 26
                  sltu         t2, a7, s11
                  sra          t5, a6, s1
                  xor          s5, s10, t5
                  xori         t4, t2, 1378
                  slli         ra, t3, 4
                  sll          gp, a7, s9
                  and          s2, s5, t0
                  srli         t2, s4, 8
                  sll          a6, a3, a4
                  sll          a6, s11, t0
                  addi         s8, t6, 1643
sub_1_j3:         jal          a5, sub_3 #jump sub_1 -> sub_3
                  sll          s1, s10, t6
                  addi         gp, s6, -500
                  sra          t3, a6, t3
                  srl          s6, t3, s4
                  sltiu        t2, tp, 1941
                  addi         s2, ra, 516
                  bge          t3, s7, 19f
                  auipc        t2, 1002787
                  bge          s4, t6, 22f
                  srai         s1, a4, 8
                  ori          s8, a2, -487
                  sub          a6, s10, a4
                  srl          s7, tp, s9
                  sltu         s5, s7, gp
                  xori         s1, a6, 238
                  bgeu         s5, s10, 21f
                  bne          tp, t3, 22f
                  xori         a3, s5, -1378
                  srli         t5, t0, 17
19:               bltu         t3, a6, 22f
                  srl          s7, sp, a4
21:               and          s4, a2, a5
22:               auipc        s0, 63979
                  addi         s7, s11, -95
                  and          s2, t4, a6
                  or           a6, s3, zero
                  or           s1, s11, zero
                  auipc        a3, 882534
                  add          zero, sp, s10
                  lw           a5, 4(sp)
                  sub          t5, s2, t2
                  sltiu        t5, a2, 1556
                  addi         sp, sp, 32
                  slti         a1, s10, 162
                  xor          t1, a0, s1
57:               addi x31, x15, 0
57:               jalr x31, x31, 0
sub_9:            sltu         s5, sp, s9
                  bge          s4, s9, sub_9_stack_p
                  nop
sub_9_stack_p:    addi         sp, sp, -64
                  andi         s3, s0, 285
                  sll          s3, s2, sp
                  sw           a5, 4(sp)
                  sll          s10, gp, gp
                  la           s0, region_0+785 #start riscv_load_store_rand_instr_stream_0
                  slti         s1, t4, -341
                  xor          s4, t0, tp
                  lb           t0, 212(s0)
                  lui          s10, 224833
                  lb           t3, 148(s0)
                  sb           s5, -226(s0)
                  sll          a3, s8, t1
                  slti         s3, s2, 990
                  lb           s2, -89(s0)
                  sra          a6, t3, s0
                  slti         s3, s9, -630
                  addi         s11, sp, 965
                  sb           gp, 86(s0)
                  sb           s5, -151(s0)
                  lbu          a6, 105(s0)
                  sb           a5, 154(s0)
                  lbu          s8, -94(s0)
                  sra          gp, a4, t1
                  lbu          s8, -152(s0)
                  nop
                  lh           t3, -97(s0)
                  sb           t0, -120(s0)
                  sh           a6, 61(s0)
                  xori         t4, a6, -1017
                  lhu          t3, 145(s0)
                  sw           a0, -233(s0)
                  lb           s11, -144(s0)
                  lui          ra, 516379
                  ori          t1, ra, -1607
                  lbu          t2, 197(s0)
                  lb           s1, -180(s0)
                  lb           s10, 194(s0)
                  lbu          tp, -94(s0)
                  lhu          s2, 151(s0)
                  slli         s8, a3, 8
                  slli         t6, t3, 31
                  slli         ra, s4, 30
                  lhu          t4, 71(s0)
                  add          t5, s3, t3
                  lhu          a6, -63(s0)
                  lb           s4, 17(s0)
                  lbu          s3, 62(s0)
                  sltiu        zero, s6, -1421
                  lui          t6, 819504
                  lhu          s3, -143(s0)
                  sltu         t1, s7, a1
                  lbu          s3, 66(s0) #end riscv_load_store_rand_instr_stream_0
                  bge          s2, zero, 13f
                  nop
                  bltu         t5, s9, 9f
                  sltu         tp, tp, a1
                  srli         s8, s0, 28
                  srl          t6, tp, t4
                  srai         s11, a5, 7
                  bltu         t0, s8, 15f
                  lui          s4, 538879
9:                sra          gp, zero, zero
                  srli         s8, a0, 31
                  sub          s8, a6, s11
                  sltu         a7, t3, a2
13:               bgeu         gp, t4, 26f
                  sll          s1, a4, a3
15:               srl          t5, a1, t5
                  bltu         t6, a1, 30f
                  sll          zero, t0, t2
                  srli         s11, a2, 3
                  srai         t6, s1, 7
                  sll          s1, t5, a2
                  and          t3, s3, s8
                  lui          s10, 404512
                  blt          s0, gp, 43f
                  beq          t3, s6, 33f
                  sltiu        zero, t2, -1210
26:               srai         tp, ra, 11
                  slti         s10, s8, -669
                  sll          t0, s3, s5
                  slli         t1, a5, 0
30:               and          t6, zero, s3
                  or           t2, s8, s7
                  bge          s5, t0, 42f
33:               xori         t2, s1, 532
                  srli         t1, s10, 7
                  xor          s2, a3, gp
                  add          gp, tp, a7
                  slt          a0, a4, gp
                  or           a1, a1, a4
                  lui          s10, 156994
                  bne          a1, a6, 45f
                  slti         ra, a3, 1900
42:               add          t3, s10, a3
43:               sltiu        a5, t4, -997
                  srl          a7, t0, s11
45:               bne          s0, a7, 47f
                  sltiu        ra, zero, 510
47:               add          s5, s9, t0
                  sub          tp, tp, s6
                  srli         a5, a0, 0
                  slt          t1, tp, gp
                  sra          a5, t3, a1
                  beq          s11, tp, 70f
                  xor          t5, s9, t4
                  sltu         ra, a5, s11
                  xori         t4, sp, 519
                  sll          a2, a3, s5
                  andi         t6, t5, 989
                  nop
                  beq          a2, ra, 60f
60:               or           a0, a5, s0
                  srli         a3, s5, 23
                  sltu         a1, s8, a1
                  bgeu         s9, t2, 79f
                  sltu         a1, s7, s1
                  beq          s8, sp, 67f
                  nop
67:               andi         s3, a3, -1298
                  bltu         a5, s5, 85f
                  slt          ra, a1, zero
70:               srai         t6, s4, 12
                  blt          t5, s11, 88f
                  srli         s7, t5, 6
                  srl          t1, s6, s9
                  bgeu         a7, gp, 89f
                  xor          s2, gp, s5
                  sub          a7, ra, t1
                  sll          s11, s4, gp
                  andi         t4, s8, 799
79:               and          ra, t2, s11
                  sll          a6, s2, s3
                  nop
                  ori          s10, t5, 1008
                  lui          a0, 878092
                  xori         t4, a0, -529
                  andi         zero, s5, 161
                  and          zero, s4, s4
                  lui          s6, 323937
                  la           a6, sub_10
                  addi         a6, a6, -938
                  srai         s11, a2, 1
                  nop
                  and          a3, s9, s7
                  nop
sub_9_j13:        jalr         a5, a6, 939 #jump sub_9 -> sub_10
                  xor          s2, t1, a5
85:               slli         tp, s5, 1
                  slli         t4, t4, 6
                  auipc        s1, 625190
88:               sll          s3, t0, sp
89:               beq          s1, s0, 100f
                  and          zero, tp, s3
                  bge          s8, s1, 95f
                  srli         ra, gp, 13
                  sll          a1, t0, s10
                  sltiu        ra, s4, 1419
95:               bne          s4, s1, 107f
                  auipc        s2, 974493
                  blt          s10, s2, 101f
                  and          s8, s6, sp
                  ori          s10, s0, 1331
100:              slti         tp, a4, 658
101:              srli         ra, t0, 20
                  sra          a6, a0, s0
                  blt          tp, s8, 122f
                  sltiu        tp, ra, 1
                  xor          s1, s1, t5
                  beq          s8, s5, 109f
107:              slt          t6, a2, a2
                  blt          s3, ra, 119f
109:              nop
                  addi         t5, t2, 1054
                  sra          t5, t0, t0
                  addi         a3, t5, -872
                  auipc        gp, 399524
                  beq          a3, t2, 119f
                  ori          s2, t2, 714
                  bltu         s3, t0, 130f
                  xori         t0, t5, 1705
                  slt          a0, s1, t3
119:              sltiu        a0, s8, 735
                  bge          t2, s7, 136f
                  ori          gp, a2, 1688
122:              sub          t3, sp, t5
                  bge          a2, t2, 136f
                  auipc        gp, 262024
                  srl          t6, s0, s7
                  sra          s10, a2, s11
                  xor          s2, s11, t3
                  sltiu        s8, s9, -1870
                  ori          s0, s8, 39
130:              blt          s7, gp, 136f
                  add          zero, s5, tp
                  sll          a1, sp, a5
                  and          a2, s1, s0
                  nop
                  slt          t3, s8, a0
136:              slt          s6, a0, t0
                  lw           a5, 4(sp)
                  sltu         s5, t0, s7
                  srli         gp, s8, 20
                  addi         sp, sp, 64
                  sll          s10, t6, t0
                  andi         gp, t0, 373
                  add          s10, s7, s0
                  auipc        t2, 646230
                  slti         gp, s11, 1029
                  addi         t6, s11, -1411
214:              addi x27, x15, 0
214:              jalr x27, x27, 0
sub_4:            sll          s5, s10, s3
                  beq          s10, s10, sub_4_stack_p
                  nop
                  lui          t3, 299810
                  or           s6, ra, s1
                  xori         s7, s1, 853
                  srli         s10, t2, 16
sub_4_stack_p:    addi         sp, sp, -64
                  sltiu        zero, s2, 1491
                  sw           a5, 4(sp)
                  xor          s5, s7, sp
                  slti         a0, tp, -915
                  and          t3, a0, a1
                  la           a7, region_1+1017 #start riscv_load_store_rand_instr_stream_0
                  srai         s0, a6, 3
                  lbu          zero, 15(a7)
                  ori          s8, s0, 1923
                  lhu          t3, -11(a7)
                  sb           a4, -58(a7)
                  lb           tp, 1(a7)
                  lb           s11, 15(a7)
                  sra          a2, s11, s7
                  sltu         t2, s2, s4
                  sb           a3, 38(a7)
                  lb           tp, 62(a7)
                  lb           s6, -28(a7)
                  lbu          a3, 38(a7)
                  sltu         t5, s3, s3
                  lbu          zero, -60(a7)
                  ori          s5, a0, 927
                  andi         a3, t4, 298
                  sh           t3, -47(a7)
                  lbu          s3, 58(a7)
                  andi         s5, s0, 1326
                  sltu         t4, zero, s0
                  sll          zero, ra, s9
                  lbu          s1, -58(a7)
                  slt          s5, a4, s7
                  sb           s8, 61(a7)
                  lb           a6, -48(a7)
                  lb           s1, -29(a7)
                  lbu          a0, 0(a7)
                  lw           s1, 11(a7)
                  sb           s6, 40(a7)
                  ori          t4, a3, 1030
                  sb           gp, -60(a7)
                  sltiu        t5, a1, 558
                  lw           a1, 27(a7)
                  addi         a3, s6, -1522
                  sb           a1, -26(a7)
                  srl          s5, s8, s9
                  sra          t2, s10, s3
                  lb           s1, -6(a7)
                  xori         t4, s7, 1484
                  lbu          s10, -23(a7)
                  lbu          a5, -6(a7)
                  lw           a0, -13(a7)
                  lb           a6, 10(a7)
                  sh           tp, -47(a7)
                  lb           s2, -20(a7) #end riscv_load_store_rand_instr_stream_0
                  slti         s7, t1, 1925
                  slli         t2, a1, 19
                  sltu         s7, s0, s4
                  sltu         t6, t0, t4
                  or           s7, a2, s1
                  ori          s0, t3, 112
                  sltiu        s5, tp, -1952
                  bltu         a5, t2, 18f
                  bltu         t2, a4, 17f
                  addi         tp, gp, 1201
                  andi         t3, t4, 1413
                  slti         s2, s0, 1344
                  beq          s11, t5, 19f
                  sub          t5, s7, t4
                  and          s3, s7, s5
                  blt          t2, s9, 18f
                  srl          a6, t6, ra
17:               bge          tp, a1, 21f
18:               ori          a0, t0, 982
19:               addi         zero, s4, 1475
                  beq          sp, t0, 28f
21:               auipc        s7, 129610
                  andi         a5, a6, -873
                  blt          a1, ra, 39f
                  bgeu         s0, a7, 35f
                  bge          t3, tp, 42f
                  and          s3, sp, a7
                  srl          s2, a6, s11
28:               bgeu         t5, a5, 32f
                  srai         t5, ra, 6
                  andi         s4, tp, -1948
                  xori         a1, a6, 1283
32:               ori          a5, a6, 190
                  addi         s10, t4, -230
                  nop
35:               sub          a3, s1, a1
                  xori         s5, ra, -1904
                  andi         a7, zero, 511
                  slli         a1, a0, 17
39:               sll          s10, zero, a0
                  bne          a1, s1, 54f
                  sltu         t4, a7, a0
42:               addi         a0, a2, 1653
                  srli         a3, t1, 11
                  slli         t1, t5, 9
                  xori         s0, t4, -1302
                  srai         zero, s1, 9
                  slli         s10, s3, 15
                  auipc        t0, 224933
                  xor          s0, s5, a0
                  addi         zero, t3, -1869
                  slt          a7, a4, a3
                  sltu         t4, s2, t1
                  slli         t4, t6, 22
54:               srl          t1, t4, a6
                  nop
                  xor          t2, a1, s7
                  slli         s6, t5, 12
                  andi         a7, s4, -786
                  slli         t5, a3, 15
                  bgeu         s5, s1, 63f
                  sub          t1, s1, t3
                  bge          s10, s3, 82f
63:               nop
                  bge          a4, a1, 74f
                  nop
                  slt          s6, s9, s2
                  and          s0, a2, s4
                  andi         gp, s1, -1322
                  lui          t1, 474796
                  slt          s0, t5, s9
                  auipc        t6, 160131
                  ori          a6, a1, 1398
                  add          a6, t0, s9
74:               bne          s2, t2, 75f
75:               addi         s8, a3, -1524
                  srl          a1, s6, s10
                  bltu         a4, sp, 95f
                  bne          a2, s5, 82f
                  lui          a0, 90203
                  nop
                  auipc        s8, 676808
82:               auipc        a3, 406180
                  and          s1, t0, a7
                  sub          s2, t5, ra
                  addi         t1, s5, 553
                  slt          a1, s0, sp
                  sltiu        s5, t2, -131
                  slt          a1, t2, s8
                  slti         ra, s9, 45
                  add          s10, s2, a3
                  bge          t4, s11, 105f
                  bgeu         a5, s2, 103f
                  slli         s2, s8, 18
                  ori          a0, a3, 1282
95:               bne          a7, a6, 108f
                  and          t0, s9, a3
                  ori          t0, s1, -1969
                  bne          s4, a1, 106f
                  bge          t0, s3, 111f
                  xori         a2, a3, 406
                  sra          s11, s11, t0
                  sra          gp, a6, a6
103:              or           t2, gp, s11
                  sltu         s5, s1, sp
105:              srl          s8, a5, sp
106:              srl          a3, s1, a7
                  andi         a6, s5, 1020
108:              slti         s4, t0, 1888
                  sltiu        s7, a5, -417
                  nop
111:              auipc        a6, 360561
                  slli         s1, a5, 1
                  srai         gp, zero, 29
                  srli         t0, s6, 17
                  sltu         a2, s10, t0
                  and          s11, s10, s5
                  bgeu         s9, s11, 127f
                  sub          t6, s10, t3
                  xor          t6, s6, a0
                  lui          s11, 270518
                  srl          ra, s7, t3
                  xori         a1, ra, 122
                  ori          t5, t0, 1666
                  and          s6, sp, s1
                  ori          t0, t3, -651
                  xori         s7, zero, 354
127:              or           s11, a5, t4
                  sub          a6, s2, a5
                  sltiu        a0, tp, -1902
                  and          s4, ra, s2
                  slti         t3, s2, -781
                  srai         s3, tp, 9
                  xori         ra, a5, 1464
                  srai         s1, s2, 19
                  srl          s8, gp, a3
                  slti         zero, t1, -2045
                  add          a6, t6, s6
                  lui          s3, 1042819
                  auipc        t6, 255958
                  slli         t6, s1, 17
sub_4_j6:         jal          a5, sub_5 #jump sub_4 -> sub_5
                  and          s7, tp, a7
                  srai         a7, s6, 30
                  xor          t3, t1, s0
                  srli         s7, s11, 6
                  sltu         a0, a5, t2
                  sll          s8, s7, s3
                  or           tp, t0, s0
                  xori         t2, sp, 360
                  bge          s8, zero, 157f
                  slti         t4, a5, -226
                  srl          t2, t5, a7
                  blt          s2, t6, 150f
                  srai         t0, t2, 13
                  lui          a0, 820670
150:              add          t3, t6, s7
                  sltu         t3, a3, a1
                  bltu         t4, t4, 167f
                  lui          s11, 705054
                  nop
                  bgeu         a3, s7, 164f
                  bltu         s6, s2, 158f
157:              slti         a1, s7, 1239
158:              or           t6, a5, gp
                  slt          ra, t5, s9
                  sll          gp, s4, s6
                  srl          zero, s0, a3
                  bltu         s6, a2, 164f
                  bge          s5, s7, 180f
164:              slti         t1, s2, 229
                  add          s4, a4, a0
                  slti         a7, tp, 714
167:              sub          s4, t1, t0
                  or           s6, a7, t6
                  andi         a5, s2, -790
                  and          t1, t3, s11
                  sra          a7, t2, s3
                  beq          gp, ra, 185f
                  auipc        a3, 1011353
                  nop
                  sub          tp, s5, s6
                  or           a7, s9, s0
                  nop
                  sll          a6, t6, tp
                  bltu         s7, t3, 182f
180:              bne          s6, a2, 192f
                  bltu         s1, a5, 191f
182:              xor          t2, gp, a6
                  sll          s7, s0, gp
                  lui          s5, 716175
185:              nop
                  beq          sp, s4, 193f
                  bge          a5, s6, 200f
                  bne          s10, t6, 196f
                  auipc        s3, 828062
                  add          t4, a5, a4
191:              srli         a2, s3, 16
192:              auipc        s0, 406758
193:              sltiu        t5, s0, -906
                  bgeu         a7, s4, 198f
                  addi         a7, s11, 625
196:              srai         s6, s1, 0
                  slli         s2, a0, 2
198:              auipc        t5, 1036590
                  sra          t3, t0, s6
200:              sltiu        a0, a3, -1747
                  auipc        t5, 722060
                  sltiu        s5, a2, 1841
                  nop
                  slt          a3, a1, a1
                  addi         tp, s11, 1068
                  sll          s5, a6, a5
                  lw           a5, 4(sp)
                  xor          s6, s6, a6
                  addi         sp, sp, 64
                  sub          a1, t6, a7
                  or           t2, a0, t2
                  lui          t0, 167803
279:              addi x19, x15, 0
279:              jalr x19, x19, 0
sub_8:            slt          t0, t3, t4
                  xori         a6, s8, 480
                  sub          a2, s0, t1
                  addi         sp, sp, -24
                  and          a3, gp, s5
                  xor          a0, s2, a4
                  lui          a2, 191300
                  or           a7, a3, a0
                  and          s8, s4, a7
                  sw           a5, 4(sp)
                  sll          s4, s2, a5
                  addi         gp, s4, 427
                  sra          s5, tp, a1
                  srai         t6, a6, 7
                  auipc        s3, 597879
                  xori         a0, s4, 498
                  and          s2, s7, t0
                  sll          s2, t6, s4
sub_8_j12:        jal          a5, sub_9 #jump sub_8 -> sub_9
                  ori          a3, a2, -1506
                  addi         s4, s10, -412
                  srai         gp, tp, 22
                  sub          ra, t6, t6
                  beq          t5, s2, 11f
                  sub          s11, a5, a3
                  ori          a0, a3, 613
                  sub          t1, a4, s3
                  andi         t5, a4, 1297
                  andi         a7, a0, 35
                  bltu         t0, t2, 18f
11:               sltiu        s5, s8, -1506
                  sll          t6, t5, a0
                  bge          a1, gp, 17f
                  sltu         tp, s3, a1
                  srl          ra, s11, sp
                  auipc        a3, 877177
17:               auipc        t3, 358966
18:               sltiu        t4, t6, 2023
                  add          zero, tp, t4
                  beq          gp, t1, 30f
                  bltu         t1, s11, 32f
                  blt          ra, t3, 27f
                  auipc        a0, 786472
                  sltiu        a3, a0, -523
                  bge          a5, s9, 42f
                  slti         t1, a2, 1855
27:               sltu         a1, s1, gp
                  sll          s2, s8, a6
                  sltu         a6, a5, s11
30:               slli         a6, s8, 17
                  sra          t6, s7, t2
32:               blt          a4, a2, 39f
                  addi         t4, gp, -819
                  blt          s0, t5, 43f
                  sltu         a2, a4, s1
                  slti         a2, t2, 1407
                  nop
                  sltu         s2, a6, a2
39:               bne          a1, s3, 49f
                  or           tp, a5, a3
                  bgeu         s6, s10, 53f
42:               srai         a7, s2, 24
43:               sub          a1, t4, ra
                  bltu         s3, a6, 51f
                  bge          t2, a1, 64f
                  auipc        s5, 76982
                  or           s1, a5, t4
                  ori          s7, a1, 1588
49:               or           a1, a5, t0
                  nop
51:               nop
                  sltu         s1, s2, t1
53:               sltu         s2, t2, ra
                  sra          zero, a2, sp
                  srli         tp, s8, 0
                  sra          t6, sp, a4
                  and          a2, ra, s1
                  nop
                  ori          t2, s11, -2038
                  slt          ra, t1, t5
                  xor          a2, t0, gp
                  slli         s11, ra, 19
                  beq          zero, a0, 65f
64:               bgeu         t1, s10, 65f
65:               addi         t1, s8, -1242
                  lw           a5, 4(sp)
                  andi         a2, t1, 580
                  addi         sp, sp, 24
                  ori          s2, t0, -40
                  nop
                  srai         a2, s10, 20
91:               addi x20, x15, 1
91:               jalr x20, x20, 0
sub_2:            slti         s3, a7, -518
                  srli         s7, t2, 1
                  addi         sp, sp, -28
                  or           s7, s6, t3
                  srli         t5, a0, 15
                  xori         a6, s7, 1781
                  slt          zero, s2, a3
                  srai         t0, t3, 11
                  sltu         s11, gp, s11
                  slti         s11, zero, -728
                  sw           a5, 4(sp)
                  srli         t1, s1, 15
                  la           s8, region_0+1373 #start riscv_load_store_rand_instr_stream_11
                  srl          t5, t1, tp
                  lb           zero, 48(s8)
                  slt          s6, zero, a5
                  sltiu        t0, t2, 780
                  sh           t2, -3(s8)
                  sh           s7, -55(s8)
                  nop
                  slt          a2, s1, s2
                  lbu          t4, 50(s8)
                  sb           s8, -50(s8)
                  auipc        a7, 161559
                  lbu          tp, 14(s8)
                  lbu          t3, -13(s8)
                  sw           tp, 11(s8)
                  nop
                  srai         a6, s1, 24
                  andi         t1, t0, -1298
                  sb           gp, -28(s8)
                  lb           t0, -52(s8)
                  andi         t3, s5, 101
                  lbu          s3, -3(s8)
                  sb           s9, -35(s8) #end riscv_load_store_rand_instr_stream_11
                  la           a0, region_0+1316 #start riscv_load_store_rand_instr_stream_8
                  lh           a7, -24(a0)
                  sb           sp, 49(a0)
                  sb           s10, -43(a0)
                  xor          ra, s1, s3
                  lhu          t1, 44(a0)
                  sb           a6, 5(a0)
                  slt          zero, a1, a2
                  lb           t0, 14(a0)
                  auipc        ra, 631018
                  sb           s0, 55(a0)
                  or           tp, a2, s1
                  nop
                  srl          t6, a5, t2
                  slti         s2, s3, -2038
                  xori         t2, a4, 52
                  srai         a2, s7, 13
                  lh           s11, -24(a0)
                  lui          s2, 879180
                  sw           a3, 8(a0)
                  xori         t0, t0, 1732
                  addi         a5, s11, -1298
                  sb           a1, -49(a0)
                  lb           s11, 22(a0)
                  and          tp, a2, a2
                  sltu         tp, a3, a5
                  lbu          s7, -15(a0)
                  lh           s7, -44(a0)
                  lhu          s0, 52(a0)
                  xori         t0, tp, 1738
                  sh           a1, 10(a0)
                  srli         s7, s4, 10
                  lbu          s11, 27(a0)
                  slt          s1, s0, t5
                  or           s11, s8, s6
                  sb           s11, -19(a0)
                  lbu          s10, 64(a0)
                  or           a2, t0, s2
                  lhu          s6, -60(a0) #end riscv_load_store_rand_instr_stream_8
                  la           s11, region_0+1266 #start riscv_load_store_rand_instr_stream_5
                  srai         t0, s1, 13
                  xori         t4, a5, 1920
                  lb           a7, -27(s11)
                  slli         a3, t3, 24
                  lb           t2, 43(s11)
                  lbu          a5, -2(s11)
                  sb           t2, -3(s11)
                  sb           s7, 42(s11)
                  sub          t2, s4, a5
                  lb           s6, 9(s11)
                  nop
                  sb           t5, 13(s11)
                  add          t1, a6, ra
                  sltiu        t4, a7, -706
                  ori          a3, sp, 1334
                  lw           t4, -26(s11)
                  lb           a0, 17(s11)
                  lw           t4, -26(s11)
                  addi         s10, gp, 890
                  lh           a2, -4(s11)
                  srai         s4, s10, 23
                  sb           a2, -8(s11)
                  srl          s3, t4, a1
                  srai         t3, zero, 9
                  sll          ra, ra, t6
                  and          t1, a3, s8
                  or           a2, tp, t6
                  or           tp, s9, a0
                  srl          s6, a2, s0
                  srl          s4, a6, gp
                  srl          t3, a2, s11
                  lui          tp, 469163
                  nop
                  sw           ra, 2(s11)
                  srl          s6, t6, t1
                  lui          t4, 463899
                  auipc        s6, 57786
                  srli         a5, gp, 6
                  lb           s10, 10(s11)
                  srli         a6, s2, 31
                  slt          a6, t3, tp
                  ori          t6, t0, -1795
                  sb           a2, 7(s11)
                  sb           a7, 11(s11) #end riscv_load_store_rand_instr_stream_5
                  la           t2, region_1+1123 #start riscv_load_store_rand_instr_stream_14
                  lh           s8, 39(t2)
                  and          s10, s5, s0
                  sb           t0, 7(t2)
                  sh           s8, -49(t2)
                  lbu          s0, 16(t2)
                  add          t6, a3, s0
                  xor          t3, a5, a4
                  andi         s2, tp, -353
                  lb           s4, 10(t2)
                  sb           s2, 40(t2)
                  sw           a4, -23(t2)
                  sra          t5, a0, t6
                  sh           gp, -59(t2)
                  lb           a1, -19(t2)
                  lbu          s2, -54(t2)
                  lb           s7, -7(t2)
                  lui          s11, 682097
                  sb           a4, 56(t2)
                  nop
                  lhu          s7, -15(t2)
                  slli         s5, gp, 11
                  sb           zero, 18(t2)
                  sltu         ra, a5, a3
                  sb           s5, 44(t2)
                  or           s8, t2, a4
                  lb           zero, 39(t2)
                  sb           t4, -56(t2)
                  auipc        s4, 158454
                  auipc        ra, 801714
                  lb           s3, 13(t2)
                  srl          t6, s8, a0
                  addi         s11, s3, -1455
                  sb           zero, 28(t2)
                  lbu          s10, 24(t2)
                  lui          ra, 292807
                  sb           a5, 26(t2)
                  srai         gp, a2, 1
                  and          s6, t2, t4
                  sll          a6, s10, s0
                  or           a5, t1, a0
                  lhu          t3, -53(t2)
                  lbu          s0, -22(t2)
                  lb           s7, 17(t2)
                  sll          s2, a7, t2
                  and          zero, t4, t3
                  lb           t4, -20(t2)
                  lb           a7, 10(t2) #end riscv_load_store_rand_instr_stream_14
                  la           s4, region_0+1232 #start riscv_load_store_rand_instr_stream_0
                  lbu          a0, -14(s4)
                  lhu          s5, 0(s4)
                  sb           t3, -5(s4)
                  sub          s2, t5, s1
                  sltu         t5, t0, s6
                  lb           s8, 5(s4)
                  ori          t0, a7, -2048
                  lbu          a6, -5(s4)
                  lbu          s3, 5(s4)
                  lb           s8, -2(s4)
                  lb           s8, 1(s4)
                  srai         zero, s0, 1
                  lbu          a2, -11(s4)
                  sb           s7, 10(s4)
                  lhu          s1, -2(s4)
                  lbu          s7, 0(s4)
                  lh           s3, 4(s4)
                  addi         a2, sp, 1876
                  sh           s11, 10(s4)
                  sb           s10, -7(s4)
                  sub          tp, s5, a2
                  xor          ra, a5, t4
                  add          gp, a6, a5
                  lw           s7, -8(s4)
                  srli         gp, s2, 22
                  add          t5, s2, tp
                  sb           s9, 5(s4)
                  sh           t4, 10(s4)
                  sll          t1, s3, s1
                  sb           s11, 9(s4)
                  lb           t5, -12(s4) #end riscv_load_store_rand_instr_stream_0
                  la           a5, region_1+130 #start riscv_load_store_rand_instr_stream_4
                  lhu          gp, 1642(a5)
                  lbu          a1, 1376(a5)
                  lh           s4, 1464(a5)
                  slli         s5, t1, 15
                  sll          a6, a4, a4
                  and          tp, a0, s1
                  and          s1, t6, ra
                  srli         s5, t5, 15
                  lb           s5, 565(a5)
                  lw           s7, 606(a5)
                  sltiu        a7, s10, -1243
                  ori          a7, zero, 150
                  lh           s8, 454(a5)
                  lbu          s8, 254(a5)
                  sw           tp, 734(a5)
                  and          a7, a3, t6
                  sub          t1, ra, t3
                  srl          s0, s6, t5
                  lhu          a6, 812(a5)
                  slli         t2, s8, 2
                  srai         t5, t6, 30
                  ori          s6, a3, -728
                  sb           s7, -37(a5)
                  lhu          s3, 728(a5)
                  lb           s2, 83(a5)
                  xori         s8, s0, -1703
                  add          t2, a0, t2
                  and          a3, t6, a3
                  sltu         t6, sp, ra
                  lbu          a2, 1273(a5)
                  lbu          s10, -18(a5)
                  lh           s5, 1100(a5)
                  addi         s6, s9, -842
                  add          a0, s4, a4
                  sb           a2, 278(a5)
                  srl          t0, a2, s1
                  lh           t3, 568(a5)
                  lb           a2, 311(a5)
                  lb           s2, 1639(a5)
                  srai         t3, t1, 29
                  xori         t6, t2, 2032
                  or           a3, t2, t1
                  lb           t2, 1357(a5)
                  sb           t1, -19(a5)
                  addi         s3, s6, -1849
                  lb           t5, -121(a5)
                  lb           a7, 416(a5)
                  sb           s2, 105(a5)
                  or           a2, tp, s3
                  or           t1, s9, s5
                  ori          s7, s4, 1142
                  lhu          t6, 984(a5)
                  lh           t0, 986(a5) #end riscv_load_store_rand_instr_stream_4
                  la           a0, region_1+1201 #start riscv_load_store_rand_instr_stream_10
                  sb           t1, -9(a0)
                  sb           s5, -4(a0)
                  slli         s3, s8, 15
                  sb           s7, 0(a0)
                  ori          s11, a3, 991
                  srli         gp, t0, 16
                  xori         zero, s11, -180
                  lbu          s4, 2(a0)
                  sb           s2, -12(a0)
                  lb           s6, 4(a0)
                  and          t5, s7, a4
                  lbu          s2, -4(a0)
                  sb           sp, 11(a0)
                  or           s0, gp, s3
                  lbu          s6, -14(a0)
                  sb           s8, -14(a0)
                  lbu          s11, 3(a0)
                  srli         t5, s2, 20
                  sb           a1, -6(a0)
                  lw           zero, 15(a0)
                  lh           s3, -15(a0)
                  slli         t2, a0, 13
                  srl          s5, a4, t2
                  addi         a6, tp, 1518
                  lb           zero, -12(a0)
                  xori         a3, s10, 655
                  sll          s3, s5, a1
                  lbu          t0, 6(a0)
                  slli         t6, s9, 7
                  lb           s10, 13(a0)
                  lb           a2, 9(a0)
                  lb           tp, 10(a0)
                  sb           s2, 1(a0)
                  lb           s7, -12(a0) #end riscv_load_store_rand_instr_stream_10
                  la           t4, region_1+908 #start riscv_load_store_rand_instr_stream_19
                  srli         s8, a1, 29
                  slti         s5, s8, 1171
                  lui          gp, 271418
                  slli         a6, s1, 0
                  sltu         a6, t4, a0
                  sb           s5, -55(t4)
                  ori          zero, s11, 1919
                  nop
                  sb           s9, 17(t4)
                  xor          s11, s11, t4
                  sltu         a2, s11, s8
                  lbu          t3, -31(t4)
                  andi         s4, a5, 1371
                  lb           a1, 19(t4)
                  slt          s11, s4, t3
                  lb           s8, -60(t4)
                  sb           s2, 37(t4)
                  sw           a2, 28(t4)
                  srl          a6, t0, s7
                  auipc        tp, 101184
                  sltiu        s3, s10, 198
                  srli         s10, s6, 25
                  sb           a6, -32(t4)
                  or           s5, t3, a3
                  add          s11, a6, a4
                  and          s2, t0, t6
                  lb           t2, 11(t4)
                  lbu          t3, 57(t4)
                  sltu         a5, s6, s5
                  lb           t6, -38(t4)
                  sb           a7, 39(t4)
                  ori          s10, a3, -931
                  auipc        t0, 662836
                  srai         t6, s5, 17
                  or           t3, a4, zero
                  lbu          s4, 43(t4)
                  add          a3, tp, a3
                  srai         s5, s0, 14
                  sb           s11, 63(t4)
                  lb           a0, -57(t4)
                  sltu         s7, s11, s5
                  lhu          a1, 24(t4)
                  srli         zero, s8, 10
                  lhu          a2, -30(t4)
                  srl          s6, t4, a7
                  lbu          a3, -49(t4) #end riscv_load_store_rand_instr_stream_19
                  la           a7, region_0+774 #start riscv_load_store_rand_instr_stream_2
                  sw           zero, 218(a7)
                  lbu          s11, -15(a7)
                  sb           t4, 135(a7)
                  or           s8, a1, a3
                  and          t1, t3, s11
                  sh           t2, 238(a7)
                  add          s8, gp, s6
                  sub          tp, s2, a2
                  sh           t1, 246(a7)
                  lbu          s0, -190(a7)
                  lbu          t3, 115(a7)
                  sra          t4, tp, ra
                  lb           t1, 241(a7)
                  lhu          t0, -96(a7)
                  andi         a1, s1, 772
                  sub          t0, s9, s3
                  sw           t2, -6(a7)
                  sltu         s2, t6, s1
                  auipc        t6, 759863
                  sll          t5, a5, t4
                  lb           s1, -53(a7)
                  lb           t2, 48(a7)
                  slti         s4, s8, -1746
                  addi         s8, gp, -1020
                  sh           t6, -38(a7)
                  sb           t1, 207(a7)
                  ori          a3, t1, -1339
                  lb           s2, 49(a7)
                  lbu          s5, 230(a7)
                  lb           s7, -106(a7)
                  lbu          s3, -25(a7)
                  sra          a0, a2, a5
                  lui          a2, 664642
                  lh           ra, 66(a7)
                  sub          gp, zero, s9
                  sra          s3, sp, s9
                  lb           s7, -231(a7)
                  sb           ra, -97(a7)
                  lbu          a2, -149(a7)
                  nop
                  slt          a3, s4, a2
                  sub          t1, a0, t4
                  sh           sp, 194(a7)
                  sltiu        s10, gp, 1689
                  xori         t0, t3, -489
                  lb           a3, 111(a7) #end riscv_load_store_rand_instr_stream_2
                  la           t0, region_1+1179 #start riscv_load_store_rand_instr_stream_16
                  sra          a3, a5, t0
                  lbu          a1, 0(t0)
                  sw           s7, 1(t0)
                  lb           t3, -6(t0)
                  lb           a5, 12(t0)
                  lbu          t2, -3(t0)
                  lh           s0, -1(t0)
                  lbu          s8, 8(t0)
                  slti         s6, gp, -916
                  lb           a2, 8(t0)
                  nop
                  sw           t0, -15(t0)
                  lb           s10, -1(t0)
                  xor          s8, t1, gp
                  auipc        t2, 723887
                  lb           t3, 13(t0)
                  lb           t3, -14(t0)
                  lb           s0, -6(t0)
                  slti         s11, s1, -1781
                  lui          a2, 314550
                  lb           s1, 16(t0)
                  lhu          a0, -11(t0)
                  lbu          s1, 11(t0)
                  and          s8, s0, s2
                  lhu          a5, 1(t0)
                  sw           t3, -11(t0)
                  srl          a0, t2, t6
                  lhu          a2, -15(t0)
                  lh           a1, 13(t0)
                  lw           t6, -3(t0)
                  sb           a6, 8(t0)
                  sh           t5, -7(t0)
                  slti         t1, s11, -1593
                  slli         t1, gp, 12
                  sb           s0, 4(t0)
                  srl          ra, s10, a2
                  lbu          s11, 6(t0)
                  sb           s0, 2(t0)
                  sb           a3, 14(t0) #end riscv_load_store_rand_instr_stream_16
                  la           t1, region_0+770 #start riscv_load_store_rand_instr_stream_18
                  sltu         s11, zero, s2
                  andi         ra, t4, -516
                  lh           s1, 1220(t1)
                  sb           s3, 588(t1)
                  lbu          zero, 534(t1)
                  lui          t2, 538483
                  slt          tp, s5, t6
                  sltu         s7, s3, s6
                  sb           t3, -623(t1)
                  sb           s9, 671(t1)
                  ori          ra, s11, 868
                  lbu          a5, 1011(t1)
                  slli         a6, zero, 24
                  xori         tp, t5, -1984
                  sb           a3, 439(t1)
                  ori          s5, s8, -1610
                  sb           s11, -380(t1)
                  or           a2, a4, s3
                  xori         s5, s10, -1250
                  sub          ra, zero, a6
                  sb           s8, 533(t1)
                  auipc        s5, 450763
                  lw           s4, 1126(t1)
                  lbu          a6, -112(t1)
                  lb           s10, -243(t1)
                  sub          t2, ra, s11
                  lw           s4, -530(t1)
                  lbu          s4, 579(t1)
                  xori         a7, t2, -1645
                  lbu          s4, -499(t1)
                  sb           zero, 439(t1)
                  sb           t1, 1119(t1)
                  sh           sp, 526(t1)
                  lbu          tp, 1154(t1)
                  lbu          s10, -321(t1)
                  slti         zero, t0, 680
                  sb           s3, -578(t1)
                  lb           a2, -485(t1)
                  lbu          t3, -255(t1)
                  andi         t3, a7, 1018
                  lb           zero, 309(t1) #end riscv_load_store_rand_instr_stream_18
                  la           t2, region_0+478 #start riscv_load_store_rand_instr_stream_7
                  sb           s5, -5(t2)
                  lhu          s3, -46(t2)
                  slli         s7, t5, 27
                  lb           zero, -9(t2)
                  xori         t5, a6, -854
                  sra          a3, s7, a4
                  srai         s0, a2, 1
                  lhu          s3, -32(t2)
                  and          s3, t2, t3
                  sb           t5, 4(t2)
                  xor          s0, s3, ra
                  lh           a5, 42(t2)
                  slti         t3, s11, 537
                  sltu         s11, a0, a7
                  sltu         s11, t6, t0
                  lw           a0, 2(t2)
                  nop
                  andi         a1, t0, -367
                  lw           a2, -10(t2)
                  sub          t4, s10, a6
                  srli         s6, gp, 11
                  lb           t6, 61(t2)
                  ori          zero, s7, 898
                  slli         t4, s11, 18
                  auipc        s5, 605069
                  lb           s8, 11(t2)
                  auipc        s8, 599215
                  lh           a6, 8(t2)
                  xor          a2, t0, t0
                  lui          s1, 995827
                  lui          a2, 966980
                  sll          a1, t6, s2
                  slti         t1, s0, -1647
                  sb           t6, 61(t2)
                  lhu          s6, -60(t2)
                  xor          s11, t5, a6
                  sb           t0, -10(t2)
                  slti         s8, t3, -1286
                  srai         tp, a0, 22
                  lbu          s7, 11(t2)
                  add          t1, s9, a2
                  sb           s4, -39(t2)
                  sb           s9, 19(t2)
                  lb           s3, 19(t2) #end riscv_load_store_rand_instr_stream_7
                  la           s2, region_1+708 #start riscv_load_store_rand_instr_stream_17
                  sb           zero, 202(s2)
                  lbu          t1, -49(s2)
                  sltu         t4, s1, a3
                  sh           a1, 94(s2)
                  sll          ra, t5, s1
                  lhu          t1, 148(s2)
                  sb           a7, -87(s2)
                  and          s10, tp, t4
                  lbu          s5, 221(s2)
                  lui          a5, 561398
                  sh           t1, 92(s2)
                  addi         ra, gp, -1838
                  and          t4, a5, a2
                  lhu          s11, -94(s2)
                  ori          t3, a6, -14
                  ori          s8, t5, 1593
                  slli         s4, t1, 5
                  sltiu        t1, s10, 278
                  slti         s8, s6, 562
                  lbu          a5, -178(s2)
                  lbu          t6, 129(s2)
                  xori         s5, t1, -972
                  lbu          a3, 231(s2)
                  srl          tp, tp, s6
                  xor          s5, a4, s2
                  lb           s3, 228(s2)
                  xori         t1, t6, 23
                  sb           gp, -188(s2)
                  sltiu        t4, s8, 1192
                  lb           t3, 99(s2)
                  nop
                  lbu          s10, 55(s2)
                  sb           t6, 75(s2)
                  nop
                  sltu         s5, sp, t1
                  andi         ra, s4, 318
                  slli         s10, s9, 18
                  sh           s8, -82(s2)
                  slti         a0, a1, 805
                  slti         t5, s0, 771
                  lhu          a6, -202(s2)
                  slli         ra, a6, 26
                  slti         t3, gp, -193
                  sb           tp, -191(s2)
                  lb           a6, 182(s2)
                  sb           a4, 199(s2)
                  or           s1, sp, t1
                  nop
                  lb           t1, -105(s2)
                  lui          t1, 80741
                  sb           s3, -192(s2)
                  lbu          t6, -14(s2) #end riscv_load_store_rand_instr_stream_17
                  bne          a4, s11, 20f
                  slt          t5, a4, a6
                  slli         t2, ra, 24
                  sub          t6, s1, a4
                  auipc        a5, 395798
                  blt          sp, ra, 16f
                  srai         s6, s10, 27
                  sll          s8, s9, a4
                  andi         s3, a3, -378
                  beq          zero, s11, 29f
                  blt          t4, gp, 12f
                  bltu         s10, s5, 31f
12:               add          t3, a4, s9
                  addi         s2, s4, 1042
                  andi         t4, s2, -542
                  slti         gp, sp, -477
16:               sub          a3, s9, s2
                  addi         t1, s7, 1323
                  slti         t6, s6, 64
                  srl          t2, t0, a2
20:               sub          zero, a5, a2
                  andi         a6, a3, 63
                  and          a1, sp, t3
                  slt          zero, s1, s6
                  srai         t3, s10, 0
                  andi         s8, t3, 199
                  srai         s11, a1, 3
                  sltiu        s10, t0, 1667
                  xori         s1, t3, -1702
29:               xor          tp, tp, ra
                  bgeu         s8, t6, 50f
31:               slt          a1, t3, t4
                  xori         s7, a1, 503
                  auipc        s1, 463117
                  xor          a7, t4, sp
                  or           t6, a4, zero
                  sra          a7, sp, a0
                  or           t5, s11, t3
                  xori         t2, a0, -1109
                  xor          zero, t6, a5
                  slli         t5, s10, 27
                  nop
                  sltiu        t4, s1, -364
                  and          s7, s9, ra
                  slti         t5, s2, -1102
                  beq          ra, s5, 61f
                  bne          sp, s2, 50f
                  andi         t0, s1, -1672
                  beq          t3, ra, 66f
                  xor          tp, s5, s11
50:               sub          tp, s8, t6
                  sub          s1, t4, t0
                  lui          t4, 372135
                  ori          s3, t3, 1726
                  bne          a4, tp, 65f
                  slti         a7, gp, -1481
                  sltiu        s6, s9, -744
                  add          tp, s11, gp
                  add          s4, a4, a6
                  or           gp, a2, s9
                  slli         a0, s11, 26
61:               slli         a3, s11, 1
                  sll          t2, a7, s11
                  slli         a6, a7, 16
                  auipc        s10, 557251
65:               ori          s8, s8, -1512
66:               xor          a2, a6, s6
                  slli         t0, tp, 18
                  sltu         t2, s4, s6
                  ori          t1, s7, 1450
                  slt          s7, s3, a5
                  sra          s2, s7, s10
                  ori          s8, tp, 1512
                  addi         s3, s3, 1927
                  xori         t6, t0, 1980
                  xor          s4, t6, t3
                  bgeu         zero, t5, 89f
                  bgeu         t4, a7, 94f
                  sll          s8, gp, a7
                  sltiu        t1, s8, 1376
                  bne          t0, s3, 84f
                  addi         s7, a7, -1527
                  nop
                  sub          a1, s6, a4
84:               or           a0, s6, s2
                  blt          zero, s5, 100f
                  or           zero, a7, s11
                  srai         a1, t6, 10
                  bltu         s10, s0, 91f
89:               bne          t0, s5, 92f
                  slt          s10, ra, t3
91:               auipc        t1, 663139
92:               slt          s10, s6, t3
                  srai         tp, s7, 8
94:               srli         s0, s0, 25
                  addi         a1, a4, 877
                  sra          a0, a4, a3
                  srai         s10, s0, 13
                  and          s10, tp, t5
                  sltu         s6, s4, s10
100:              xor          s1, s1, s7
                  srl          s0, a3, t4
                  srai         a3, s6, 4
                  sra          t4, s10, ra
                  beq          gp, s11, 110f
                  bgeu         a3, sp, 124f
                  add          s6, a6, a6
                  slli         a1, a2, 9
                  bge          t3, s9, 122f
                  srai         s10, t0, 18
110:              bgeu         t5, s4, 118f
                  nop
                  srai         s4, ra, 15
                  srai         a0, t1, 21
                  andi         ra, s8, -1712
                  ori          t2, s10, 769
                  bltu         t4, a5, 128f
                  auipc        t4, 790386
118:              slt          a1, s3, ra
                  bne          a1, s4, 128f
                  add          a5, s8, gp
                  bge          s1, s9, 127f
122:              sltiu        gp, a6, -1632
                  beq          s3, a2, 129f
124:              srl          t0, s4, a5
                  bltu         gp, s9, 128f
                  bne          t0, s11, 146f
127:              ori          s10, s2, 1468
128:              ori          a0, a0, -1447
129:              sra          t6, ra, s4
                  sltu         a7, s4, a7
                  bgeu         t2, tp, 142f
                  xor          s11, s2, s3
                  nop
                  bge          t0, t3, 152f
                  sub          s11, t6, a6
                  sub          t5, t2, s5
                  bne          t4, s11, 150f
                  ori          s7, s11, 992
                  xori         s10, t4, 819
                  add          s8, a3, s8
                  sll          a7, s1, a5
142:              lui          t1, 606520
                  sltu         a5, s8, t0
                  or           s10, s1, s7
                  sltu         s10, t4, s9
146:              sub          gp, a6, zero
                  ori          s10, s1, 499
                  sltiu        t1, a4, 1980
                  sltu         s1, a2, s9
150:              srai         s11, a1, 28
                  xor          a0, gp, s10
152:              lui          s5, 244410
                  bltu         s10, tp, 161f
                  bge          s10, zero, 160f
                  bltu         s9, a2, 174f
                  sub          t2, s0, t4
                  xori         t5, a3, -664
                  srli         t1, a4, 26
                  sub          a7, a1, sp
160:              slli         s1, s2, 20
161:              srl          t1, s9, s8
                  sltu         a5, s4, t0
                  bne          tp, s5, 174f
                  blt          a4, s1, 170f
                  andi         t3, s8, 88
                  sub          t3, t2, t4
                  beq          s4, ra, 182f
                  auipc        t3, 663536
                  ori          a1, s0, -2043
170:              slti         a6, t2, 869
                  slli         t5, gp, 12
                  and          s3, a2, s1
                  sub          ra, ra, s2
174:              srai         ra, t4, 14
                  srai         s6, a3, 21
                  auipc        s2, 415653
                  xor          s0, a5, t3
                  lui          s5, 599871
                  slli         t3, tp, 21
                  add          a6, s6, tp
                  sll          s7, s5, t3
182:              ori          t0, a4, 1169
                  slti         t1, t6, -188
                  beq          a5, s10, 204f
                  bgeu         a4, s11, 205f
                  bge          zero, ra, 197f
                  sltu         t3, s2, a3
                  or           a0, s5, s9
                  andi         t4, s3, 361
                  sltiu        a1, t5, 16
                  srai         t0, a7, 19
                  or           s7, zero, s10
                  srli         a3, t4, 7
                  add          zero, s4, a4
                  sll          t5, sp, s0
                  sltu         a7, a5, a2
197:              sltu         a7, a0, a6
                  srl          t0, a6, a7
                  bne          s10, s7, 219f
                  bltu         t5, a6, 218f
                  andi         a6, a0, -1145
                  beq          t3, t6, 213f
                  blt          zero, s4, 219f
204:              sltiu        gp, t0, 14
205:              srai         s1, a7, 17
                  bltu         s9, gp, 224f
                  slt          a3, t5, a0
                  blt          s4, a7, 225f
                  andi         s11, s1, 1674
                  and          t6, ra, s10
                  and          t6, a7, t1
                  sra          a2, s7, t4
213:              sll          s1, s0, a1
                  blt          tp, a2, 228f
                  xor          s11, s1, s6
                  or           t0, t2, a0
                  auipc        s4, 832419
218:              slti         s0, s9, 1191
219:              sltu         s5, a4, a4
                  srai         t1, s5, 9
                  srai         t0, sp, 4
                  or           tp, a0, s5
                  bge          a2, a2, 227f
224:              slti         s10, a5, -1054
225:              ori          a7, t5, -2016
                  nop
227:              xor          a2, a1, t2
228:              addi         a7, gp, -1859
                  sltiu        s2, ra, 395
                  ori          zero, a3, 1822
                  sra          a3, a3, s6
                  srl          s10, a1, s4
                  sll          zero, t4, s6
                  srai         t1, tp, 19
                  slti         s5, a0, 112
                  addi         tp, s11, 1173
                  slli         s7, s3, 26
                  sub          t4, s2, a3
                  xori         a3, s6, -475
                  addi         zero, a1, 1449
                  sltiu        s4, t5, 811
                  sll          t6, s6, sp
                  bgeu         s2, s1, 251f
                  addi         tp, gp, -253
                  sll          s4, s3, s11
                  ori          s5, t5, 720
                  bgeu         s8, ra, 256f
                  and          a6, t5, a3
                  nop
                  srai         s2, a6, 18
251:              bge          s4, s7, 254f
                  bge          t5, s0, 260f
                  sll          s0, s3, s4
254:              slli         a6, t1, 17
                  sll          s6, a7, s8
256:              addi         s10, s7, 1827
                  auipc        s4, 36444
                  add          a7, s7, s4
                  auipc        s4, 746679
260:              andi         t5, t2, -1025
                  sltiu        ra, a2, 407
                  addi         gp, a3, 503
                  sltiu        s8, s0, 1757
                  xor          t2, t0, s0
                  slli         tp, t3, 21
                  srai         a1, s10, 23
                  srl          t6, a1, t4
                  bltu         s7, t5, 271f
                  slt          s4, s3, s11
                  srli         s8, s4, 15
271:              nop
                  slli         a3, a1, 1
                  add          a3, gp, zero
                  sra          t4, zero, t1
                  ori          tp, a0, 1849
                  beq          a3, a0, 278f
                  slt          a1, a4, s2
278:              slti         t5, t0, -996
                  bgeu         t5, gp, 292f
                  sub          tp, s1, a5
                  blt          t1, s3, 293f
                  sra          zero, sp, s6
                  srl          a0, t5, t0
                  sll          s6, s6, t4
                  bgeu         s7, s6, 305f
                  slli         s6, sp, 19
                  sll          a2, t4, gp
                  xor          a5, sp, s7
                  auipc        t1, 528380
                  beq          a3, t6, 294f
                  bne          s11, zero, 304f
292:              ori          zero, a5, 1929
293:              sra          t1, a1, a4
294:              sltu         a1, a0, s11
                  bltu         s3, s8, 301f
                  srai         s0, s0, 8
                  sub          s11, s8, s4
                  sra          t1, t4, t5
                  slt          s8, t2, a7
                  sub          a1, t0, s10
301:              addi         a2, a3, 1153
                  and          a6, t1, s6
                  bge          s11, ra, 323f
304:              sll          s11, s10, s6
305:              auipc        s0, 783595
                  ori          a1, t6, 1019
                  and          t3, a6, t4
                  sra          s11, s8, tp
                  bne          t5, t3, 312f
                  and          s8, t4, gp
                  auipc        s11, 115675
312:              auipc        s7, 150239
                  bgeu         a3, s4, 331f
                  beq          ra, a5, 334f
                  xor          a6, s2, a1
                  and          a1, gp, tp
                  sltiu        s1, a1, -99
                  sra          s3, sp, a0
                  add          t0, s11, sp
                  andi         s0, a1, 396
                  bgeu         a5, t3, 336f
                  sltu         t5, t3, s6
323:              sra          t0, t4, a4
                  bgeu         s1, s3, 328f
                  xori         t4, t1, -1053
                  ori          t5, tp, 1623
                  or           s4, s7, s4
328:              beq          a6, s6, 332f
                  slt          t0, s10, s2
                  addi         s1, ra, -145
331:              add          s11, a2, s11
332:              blt          s3, sp, 352f
                  addi         t2, a4, -1677
334:              ori          s1, gp, -707
                  bgeu         sp, t4, 346f
336:              add          a1, a1, a4
                  bge          a2, a3, 351f
                  xori         t5, s10, -933
                  xori         a5, s9, -206
                  srai         s6, s9, 2
                  auipc        s6, 84875
                  srl          zero, a5, a0
                  srli         ra, a3, 0
                  slt          s6, a4, s2
                  srl          tp, s8, s6
346:              and          s11, s1, ra
                  sll          a3, s6, ra
                  lui          s4, 695094
                  srl          a7, tp, s7
                  bne          s2, s6, 353f
351:              bltu         t4, t0, 362f
352:              slt          s1, s3, s11
353:              bge          s2, a0, 373f
                  srl          t4, gp, s2
                  sltu         s4, sp, a7
                  slti         a3, a6, -1740
                  andi         s6, a2, 1632
                  slli         tp, s7, 26
                  or           s6, s1, t1
                  sltu         gp, a4, s5
                  or           zero, s6, s9
362:              beq          s4, a0, 373f
                  beq          a5, s8, 369f
                  sra          a7, s0, t1
                  sll          s10, ra, a3
                  add          a7, s4, s0
                  srli         s7, a5, 28
                  xori         a2, t5, -389
369:              slli         a0, a5, 26
                  sub          t2, ra, t6
                  sub          t3, s5, t0
                  auipc        a0, 928277
373:              bge          a4, t1, 391f
                  or           zero, s7, tp
                  bltu         s2, s3, 388f
                  auipc        ra, 266607
                  or           s1, s2, a2
                  sub          s0, t3, ra
                  sltu         t0, s4, a1
                  xor          s2, s3, a5
                  blt          t0, a3, 383f
                  srl          t2, tp, t2
383:              srl          t0, s5, s4
                  srl          a0, zero, t3
                  bge          t3, sp, 402f
                  sll          t3, t4, s9
                  bne          ra, sp, 390f
388:              sub          a5, s9, t0
                  addi         a5, s1, 1548
390:              auipc        s0, 667551
391:              add          tp, a6, t5
                  bgeu         t6, t6, 400f
                  sltiu        t0, s10, 837
                  bgeu         a4, a2, 410f
                  xor          a3, a5, ra
                  xor          ra, t3, s5
                  bgeu         s10, s3, 417f
                  srai         zero, sp, 26
                  blt          t6, a0, 405f
400:              andi         a6, s4, 240
                  sra          a7, s9, tp
402:              blt          ra, t5, 422f
                  bgeu         s2, zero, 409f
                  slt          s5, a2, t2
405:              sll          s8, s3, a5
                  nop
                  andi         a6, s1, -1838
                  add          s10, s4, a2
409:              sra          s5, s6, t1
410:              srl          s5, a0, sp
                  slli         t4, a1, 19
                  sub          tp, t3, t2
                  sub          a0, t6, zero
                  blt          ra, a7, 417f
                  sltiu        a5, s10, 2022
                  ori          s10, s6, 1134
417:              ori          s6, a7, 335
                  and          s8, a3, t3
                  slli         s0, a1, 27
                  sll          t5, a0, s10
                  nop
422:              xori         t0, zero, 922
                  srl          t1, t4, a3
                  slli         s2, gp, 11
                  bltu         s8, a6, 437f
                  andi         a6, a5, 545
                  sra          s7, a2, ra
                  sltu         a2, s10, s5
                  or           s2, t1, s4
                  sll          s1, ra, s5
                  sll          a6, s2, a4
                  sra          s0, a2, a2
                  sltiu        ra, s0, 409
                  sltu         s6, s5, s8
                  beq          t3, a6, 443f
                  slti         a6, t1, -1954
437:              and          s10, a1, s1
                  nop
                  srli         s6, s5, 30
                  lui          t3, 444751
                  sltiu        a5, s5, -329
                  slli         s8, s2, 9
443:              bltu         a1, t4, 452f
                  sll          s0, sp, s1
                  slt          t5, a2, s10
                  sub          a3, s1, tp
                  bgeu         a4, s7, 460f
                  xori         s4, a5, 1645
                  sltiu        zero, s6, -723
                  ori          s4, s11, -1736
                  srli         ra, s1, 18
452:              slti         s3, a5, -668
                  srli         a0, t3, 8
                  srli         t3, ra, 11
                  and          zero, gp, s3
                  bne          t6, s7, 475f
                  andi         s2, s2, -108
                  bgeu         a5, s0, 461f
                  and          a7, sp, s7
460:              slli         s6, s6, 5
461:              andi         a2, a1, -1965
                  sll          s10, a6, t4
                  sltu         t1, tp, a4
                  bltu         a6, t6, 480f
                  bgeu         s0, s4, 485f
                  bne          a2, a3, 474f
                  or           zero, ra, t6
                  andi         a6, s10, 128
                  srl          s10, tp, a3
                  srli         a0, a6, 9
                  blt          a5, s2, 489f
                  lui          s4, 944429
                  srli         t0, s6, 22
474:              bltu         sp, a4, 480f
475:              bge          s4, s2, 488f
                  bltu         a4, t0, 485f
                  bgeu         a4, s0, 490f
                  srl          gp, a5, ra
                  slli         tp, s2, 31
480:              xori         a2, a1, 1786
                  and          tp, a5, s5
                  bltu         t2, t2, 493f
                  sll          t5, a1, tp
                  sltiu        t5, s8, 780
485:              bge          s6, a6, 488f
                  slli         s8, a5, 14
                  bltu         s2, t4, 507f
488:              sltu         ra, s6, s1
489:              lui          s7, 614741
490:              bge          ra, a1, 498f
                  xor          gp, s6, a0
                  srai         t1, a6, 26
493:              bge          s7, s7, 504f
                  beq          s10, s0, 498f
                  slli         s7, a1, 5
                  sra          t2, s3, zero
                  srli         a1, t3, 24
498:              bgeu         t3, s8, 518f
                  add          a5, t3, s7
                  sltiu        a5, s8, -954
                  sll          tp, a3, ra
                  bne          s2, t0, 505f
                  ori          a1, a1, -82
504:              slt          s7, s2, t6
505:              lui          a7, 28417
                  or           s2, a2, s11
507:              slti         a0, t4, 1196
                  sll          s6, zero, s7
                  srl          s0, sp, t2
                  beq          s0, sp, 516f
                  and          s6, s9, a5
                  bltu         t1, tp, 524f
                  sll          t5, sp, a6
                  sltu         a2, ra, t4
                  slli         s0, s8, 7
516:              lui          t0, 326414
                  auipc        s8, 274915
518:              sra          s11, ra, zero
                  xor          s7, s3, s11
                  and          s0, s8, a1
                  lui          s5, 82123
                  sltu         a0, t1, zero
                  slt          s8, t3, a0
524:              addi         s7, a4, -1363
                  add          s7, a6, sp
                  ori          tp, a2, 821
                  bne          a5, s5, 531f
                  blt          sp, s8, 530f
                  slli         s2, t4, 8
530:              and          ra, a2, ra
531:              nop
                  bltu         a6, t5, 543f
                  add          s0, s6, s8
                  srli         t5, s3, 2
                  or           a5, s11, t2
                  slt          t4, s8, a1
                  xori         a0, a4, 898
                  nop
                  nop
                  blt          a0, gp, 555f
                  bltu         a6, a3, 558f
                  blt          a1, sp, 560f
543:              bltu         gp, t4, 549f
                  andi         t2, s1, 113
                  sltu         a5, s3, sp
                  slti         s2, s0, 610
                  and          s1, a1, a2
                  blt          a4, s3, 568f
549:              auipc        a5, 425606
                  sltu         s1, s11, s6
                  sll          t0, s8, t6
                  xor          a6, a3, tp
                  sltiu        s10, s8, 644
                  sltu         s8, a4, a3
555:              or           s8, a2, a0
                  bltu         gp, t3, 576f
                  andi         t0, t0, 1613
558:              auipc        s6, 304872
                  srl          s6, ra, a4
560:              nop
                  add          t3, t1, s5
                  blt          t4, tp, 576f
                  srl          a6, a0, s0
                  lui          s7, 855198
                  ori          a0, t6, -1721
                  or           s6, ra, t2
                  blt          t3, a4, 586f
568:              xori         t2, s0, -1263
                  sltiu        s0, s1, -989
                  slt          s11, t2, t2
                  bge          s4, a2, 582f
                  andi         t4, t3, -800
                  sll          s3, a3, t2
                  andi         a3, s7, -723
                  bge          t0, s8, 581f
576:              bgeu         t4, a7, 596f
                  auipc        s11, 1033455
                  andi         s0, s0, 1373
                  andi         a0, ra, 1910
                  nop
581:              srai         a3, t5, 9
582:              addi         t1, s1, 174
                  srl          t3, t1, t4
                  lui          s2, 259487
                  auipc        zero, 786447
586:              srai         s6, a6, 29
                  add          s2, s2, s2
                  srli         s8, t3, 6
                  and          s3, zero, zero
                  sltu         s0, t0, ra
                  ori          ra, s6, 1604
                  bne          s4, s0, 600f
                  sltiu        s0, a1, 291
                  srl          tp, s2, tp
                  beq          s1, s6, 598f
596:              srli         zero, a1, 9
                  bge          ra, s5, 611f
598:              and          tp, s10, a4
                  bge          t0, a2, 615f
600:              andi         s5, s5, -1183
                  andi         s3, a6, -1437
                  srl          t5, s6, s8
                  slti         s0, s4, 22
                  add          s10, a6, s8
                  bge          s4, s11, 608f
                  ori          a5, s3, 152
                  xori         ra, s3, 1453
608:              srai         a3, a1, 5
                  ori          tp, tp, -19
                  sltiu        a6, s9, 1190
611:              srl          ra, a7, a6
                  slli         t0, a0, 5
                  slti         a1, s11, -503
                  srli         s0, t6, 17
615:              bge          s3, t3, 627f
                  bge          t4, s7, 629f
                  bne          t2, s1, 623f
                  andi         s1, t5, -1940
                  nop
                  slt          t3, s4, t6
                  lui          s11, 341984
                  bgeu         a4, s5, 641f
623:              slli         zero, s7, 5
                  slli         s6, t3, 7
                  ori          tp, t3, -483
                  add          t0, a4, t3
627:              lui          s10, 627161
                  sltiu        s4, s9, -1448
629:              sltu         a0, s5, a0
                  xori         t6, a5, -346
                  xori         s0, s5, -259
                  or           a7, t1, zero
                  bge          s11, t2, 651f
                  nop
                  andi         a1, s1, -1835
                  bgeu         s2, t6, 656f
                  nop
                  and          t6, sp, a3
                  xori         s4, t5, 1916
                  slli         t6, sp, 26
641:              lui          s2, 681683
                  srai         t3, a2, 27
                  lui          a7, 914939
                  sltu         a0, s0, a3
                  sub          s2, t5, a1
                  and          t6, s1, t5
                  beq          t1, a4, 653f
                  srl          s0, a1, s11
                  sltu         a2, gp, s5
                  beq          t5, a5, 654f
651:              srl          t6, s6, a5
                  sltiu        s4, s2, -88
653:              ori          s3, s4, 707
654:              auipc        a1, 257110
                  sub          a0, a0, t6
656:              sub          tp, s1, s6
                  andi         s1, gp, -214
                  bge          gp, t4, 671f
                  sltiu        s4, zero, 155
                  add          s11, s6, s0
                  sra          s8, t3, s2
                  andi         s11, t1, 759
                  slti         a0, s0, -367
                  sltu         a6, a7, a7
                  bne          a6, s4, 676f
                  slti         t6, t1, 548
                  sra          s6, t0, a2
                  add          a6, s6, t6
                  or           s5, s6, tp
                  slti         t4, s6, -270
671:              or           s8, tp, s1
                  addi         ra, t2, -605
                  sltiu        s8, t5, -1972
                  add          s5, a1, t1
                  slli         a1, a4, 3
676:              slli         a1, a6, 5
                  slli         t2, a3, 19
                  srl          ra, t6, tp
                  nop
                  beq          sp, t1, 684f
                  and          a7, s3, s8
                  sll          s0, t5, t6
                  addi         s2, a5, 475
684:              slt          a0, s7, s9
                  srl          s8, t2, a0
                  andi         t5, t6, 106
                  auipc        a0, 889432
                  blt          a7, s4, 691f
                  slt          a5, s5, t4
                  sltiu        t6, a2, 1845
691:              srl          s2, s7, gp
                  slt          s5, s9, a5
                  and          s0, s3, tp
                  ori          a6, t2, -696
                  srai         s8, gp, 29
                  auipc        t6, 955913
                  srai         t6, s9, 24
                  bge          ra, t3, 713f
                  bne          s7, a4, 708f
                  bne          s8, s5, 720f
                  srl          t1, t4, s0
                  xor          zero, s7, t4
                  srli         t3, gp, 16
                  sltu         s10, t3, s5
                  or           a2, s4, s9
                  beq          s2, t3, 717f
                  nop
708:              add          t4, t4, s8
                  add          t3, a2, t5
                  andi         t3, t6, -1890
                  bne          a7, a4, 731f
                  sub          t4, s1, t3
713:              bne          s4, s6, 715f
                  sub          t4, s5, t0
715:              lui          a2, 526581
                  sra          t1, a7, t0
717:              bne          s11, a2, 737f
                  or           s7, t0, sp
                  bltu         t2, a6, 736f
720:              sltu         s4, a1, t6
                  bge          a1, t3, 729f
                  andi         zero, s5, -1405
                  or           zero, t3, s9
                  xori         s0, t1, 1100
                  xori         s7, a1, 72
                  auipc        s3, 1046312
                  sltiu        tp, gp, 1141
                  xori         t0, t4, 1630
729:              andi         s8, a1, -1814
                  sltiu        a3, gp, 1357
731:              andi         a5, a6, 97
                  slt          t5, t1, a4
                  beq          s5, a4, 751f
                  srai         s8, a1, 4
                  bgeu         t4, tp, 743f
736:              auipc        a3, 330251
737:              bltu         s3, s0, 743f
                  slt          s10, ra, a4
                  srl          tp, s10, s1
                  lui          t4, 93152
                  srai         a6, a4, 16
                  beq          s8, a7, 758f
743:              srl          s10, s4, a0
                  sra          zero, tp, sp
                  slti         a0, s3, 1716
                  sll          a0, sp, s5
                  ori          t6, s0, 1584
                  beq          s3, s10, 761f
                  sll          t5, s9, a6
                  andi         s1, sp, 211
751:              slti         s7, t3, -1554
                  bge          tp, s4, 766f
                  bne          s7, t3, 773f
                  blt          s6, s7, 765f
                  sltu         s7, a4, zero
                  xor          s1, ra, s5
                  srli         s0, tp, 21
758:              xor          zero, s4, a2
                  xori         a6, t6, -1044
                  sll          s1, s4, s2
761:              addi         s5, t2, 748
                  and          s0, t0, t5
                  lui          a1, 193881
                  bne          t0, s9, 783f
765:              andi         t5, s5, 218
766:              slli         t1, s6, 23
                  xor          t5, a7, a2
                  bltu         s2, s1, 777f
                  bltu         t0, t1, 786f
                  la           t4, region_1+1756 #start riscv_load_store_rand_instr_stream_15
                  sub          a7, a7, s9
                  lbu          a7, -55(t4)
                  lhu          t0, 16(t4)
                  xori         s0, tp, 944
                  lbu          s1, -51(t4)
                  add          s2, a5, t1
                  sb           s7, -18(t4)
                  xor          s6, a7, gp
                  add          a0, ra, tp
                  slli         a6, t5, 26
                  and          s7, s9, s6
                  sb           t6, -10(t4)
                  ori          ra, a6, 1512
                  or           a5, a2, t5
                  sltu         a7, s0, a0
                  sra          s8, a1, s8
                  sub          a5, s10, zero
                  sltiu        s11, a2, -1293
                  sltiu        s5, t5, 1682
                  slti         a5, s4, -749
                  sb           s4, -2(t4)
                  sltiu        s0, tp, 1216
                  addi         a5, a3, 779
                  nop
                  sw           a4, -44(t4)
                  sll          s10, t3, s10
                  xori         s4, a0, 741
                  lh           a0, -62(t4)
                  lb           t0, -13(t4)
                  nop
                  lui          zero, 684319
                  lbu          s10, -39(t4)
                  add          s11, t2, a7
                  lh           s2, -26(t4)
                  lbu          s0, 3(t4)
                  lui          s8, 621290
                  sltiu        s6, s7, -551
                  sltiu        a6, t6, -1579
                  lb           tp, -34(t4)
                  lh           t0, -52(t4) #end riscv_load_store_rand_instr_stream_15
                  sltu         a2, a4, a7
                  slti         a0, s5, 2012
                  addi         a5, s8, -1369
773:              add          zero, gp, a2
                  slt          a1, s11, t6
                  sll          t3, tp, s9
                  and          s0, s7, s7
777:              xori         t2, s0, -1429
                  auipc        t4, 414144
                  xor          s2, s3, a4
                  addi         a2, a6, -57
                  sub          s7, gp, t0
                  sra          t3, zero, s2
783:              blt          s10, s3, 803f
                  bge          a4, a4, 790f
                  or           t2, a3, s7
786:              sra          s11, ra, a2
                  beq          s5, t6, 798f
                  la           a2, region_1+1429 #start riscv_load_store_rand_instr_stream_1
                  lb           a5, 56(a2)
                  lbu          ra, 56(a2)
                  srai         t4, t2, 4
                  slt          t1, t1, t4
                  lb           a5, -4(a2)
                  nop
                  xori         a3, s9, 1057
                  and          t1, s10, s6
                  ori          gp, t2, 1395
                  sb           a6, 6(a2)
                  sltu         s11, a4, gp
                  lb           s7, 0(a2)
                  sh           a3, 31(a2)
                  sub          tp, tp, s8
                  sltiu        tp, s3, -399
                  or           t3, t6, s0
                  and          s8, tp, t2
                  srl          a3, s6, a6
                  slti         a5, a6, 1710
                  lbu          s11, -6(a2)
                  and          a3, a6, t3
                  srl          a5, a5, s0
                  sb           a1, -16(a2)
                  addi         s8, s11, 1481
                  add          ra, s8, s9
                  sb           tp, 64(a2)
                  lb           s2, 48(a2)
                  xor          a0, t1, a6
                  xor          a0, t3, ra
                  ori          s3, s3, -186
                  nop
                  sh           s0, -53(a2)
                  slti         a1, ra, 169
                  sltu         t2, a7, a3
                  sll          ra, a3, a5
                  sb           ra, 25(a2)
                  sb           s3, 30(a2)
                  sltu         s5, t4, tp
                  lhu          s2, 7(a2)
                  sll          a6, s5, t3
                  lbu          a6, -54(a2) #end riscv_load_store_rand_instr_stream_1
                  nop
                  and          s7, a3, t5
790:              sub          s3, a1, a6
                  sltiu        s2, a2, -1133
                  auipc        s8, 241105
                  sub          t5, a5, zero
                  bgeu         s5, t4, 812f
                  xori         s8, s4, 453
                  slt          s6, a5, s7
                  srli         ra, t6, 26
798:              lui          t0, 871972
                  addi         gp, s9, -1994
                  sub          a5, a2, a7
                  sll          a3, a0, s1
                  nop
803:              srl          a0, t3, s1
                  bge          s6, a1, 815f
                  sll          zero, t4, t3
                  sll          s8, s4, a4
                  la           ra, region_0+166 #start riscv_load_store_rand_instr_stream_9
                  lhu          a7, 972(ra)
                  sb           s3, 1344(ra)
                  lbu          a0, 1386(ra)
                  lhu          t5, 1590(ra)
                  nop
                  lhu          a2, 1322(ra)
                  slli         s1, sp, 17
                  sltiu        t3, s10, 713
                  nop
                  lh           a1, 1812(ra)
                  sub          t6, a5, s3
                  lb           t4, 1044(ra)
                  lbu          t1, 1577(ra)
                  sb           a7, 1291(ra)
                  lbu          t0, 1143(ra)
                  sh           t6, -116(ra)
                  xori         t0, gp, 1706
                  lbu          t0, 88(ra)
                  sll          s6, t0, sp
                  lhu          a3, 1826(ra)
                  sb           sp, 1031(ra)
                  addi         tp, a5, -846
                  sb           t2, 899(ra)
                  srai         s8, t0, 14
                  sll          s3, s8, ra
                  sltu         s3, ra, a2
                  slti         s11, t4, -19
                  ori          t1, s11, -808
                  sw           sp, -58(ra)
                  slti         a0, a4, 376
                  sb           t2, 1270(ra)
                  lbu          t6, 1281(ra)
                  sb           zero, 1199(ra)
                  lbu          t6, 529(ra)
                  lb           s4, 1271(ra)
                  lw           gp, 1730(ra)
                  lui          gp, 983573
                  lb           t2, 1791(ra) #end riscv_load_store_rand_instr_stream_9
                  blt          s2, a6, 819f
                  beq          t5, t5, 828f
                  bgeu         s3, a5, 815f
                  addi         s8, a0, 511
                  srl          s8, s10, a7
812:              beq          a2, s9, 816f
                  andi         s7, t6, -836
                  nop
815:              srl          t3, a3, a6
816:              sll          t3, s3, a6
                  nop
                  xor          a7, t4, s3
819:              bltu         t2, a2, 822f
                  bne          s3, t3, 835f
                  nop
822:              slti         gp, a6, -1507
                  slt          s6, s9, s9
                  bgeu         zero, t1, 826f
                  sub          t2, a2, t6
826:              bne          s3, t3, 829f
                  andi         s1, s11, -322
828:              srli         zero, a7, 7
829:              srai         t3, a7, 11
                  andi         t2, s4, 1189
                  lui          a5, 103799
                  andi         s7, s8, 1725
                  slt          a0, t6, ra
                  sra          tp, s4, a7
835:              sra          a1, s1, s11
                  bge          a5, s6, 839f
                  add          s3, s3, t6
                  srli         t3, t4, 1
839:              srl          ra, t1, t4
                  xor          a7, tp, sp
                  bltu         t6, a2, 859f
                  and          a3, s11, sp
                  add          zero, tp, s6
                  nop
                  bltu         s8, s3, 865f
                  and          s10, t6, a7
                  slt          t6, s0, t6
                  bge          s10, a0, 852f
                  bgeu         s10, t1, 862f
                  srl          t0, t1, ra
                  xori         zero, s1, 224
852:              bltu         s8, s0, 860f
                  nop
                  bne          gp, a6, 874f
                  lui          s0, 9091
                  lui          t3, 757511
                  srl          t0, a5, a7
                  xor          s8, s6, a3
859:              sll          gp, t3, s9
860:              sub          a1, a0, a0
                  bne          s11, gp, 864f
862:              blt          s8, sp, 880f
                  lui          t5, 631080
864:              sltiu        zero, a5, 910
865:              and          t1, t3, s7
                  and          s11, s1, zero
                  sra          t1, a4, s6
                  sub          s2, gp, zero
                  bltu         s7, a4, 885f
                  srai         s7, t3, 11
                  srai         t0, a1, 21
                  auipc        s10, 972538
                  slli         s5, s11, 30
874:              slli         s5, sp, 25
                  lui          t4, 366542
                  bltu         a4, a4, 884f
                  slli         t6, t3, 29
                  bge          t6, s8, 886f
                  xor          a3, tp, s4
880:              sltiu        s4, a3, 912
                  and          a5, t4, s1
                  sra          zero, s4, s6
                  sltu         s0, a4, s10
884:              srl          t6, s2, t3
885:              blt          s1, s1, 905f
886:              xori         s5, t2, 1884
                  xori         a0, s1, -1274
                  xor          tp, s1, a2
                  and          a5, s9, s4
                  srl          a6, ra, a7
                  slti         a3, s5, 677
                  bge          tp, s0, 912f
                  beq          t5, s4, 912f
                  auipc        t4, 137336
                  andi         a1, sp, 329
                  nop
                  slti         s6, a3, 79
                  sltu         s8, s0, s10
                  add          s6, s0, ra
                  srl          t6, s11, s7
                  nop
                  sll          a2, s9, s9
                  andi         a1, s2, -1021
                  or           ra, t2, t3
905:              add          s3, t0, a4
                  slli         t5, a6, 7
                  or           s1, a2, gp
                  sltu         s0, s7, t0
                  sltu         s2, gp, tp
                  auipc        t1, 384342
                  bge          t5, a1, 920f
912:              sub          s7, t4, s10
                  sub          s10, ra, s0
                  srai         t1, a6, 26
                  bne          s0, t2, 917f
                  bgeu         tp, tp, 922f
917:              slti         s0, s9, -1084
                  srai         s6, s7, 10
                  srai         a6, t4, 7
920:              andi         a2, a5, 1164
                  slt          zero, s6, a0
922:              beq          s9, gp, 937f
                  bge          gp, s11, 934f
                  nop
                  bge          s3, t3, 929f
                  bne          t4, a7, 929f
                  bne          a4, t2, 940f
                  bltu         s9, zero, 934f
929:              bge          tp, sp, 947f
                  addi         gp, tp, -12
                  bge          s4, s3, 942f
                  bne          a3, a0, 952f
                  addi         t3, a7, 1531
934:              slli         s4, s5, 25
                  auipc        s1, 819426
                  blt          a4, a4, 953f
937:              sll          s4, t6, a6
                  srl          s7, t0, s11
                  srai         gp, tp, 21
940:              add          s3, gp, zero
                  sltu         s6, a6, a4
942:              sltiu        a6, t6, -2005
                  beq          s11, t0, 949f
                  nop
                  or           a2, s9, sp
                  ori          s8, s2, -538
947:              andi         s11, a3, 1228
                  bltu         s3, s5, 961f
949:              addi         t6, s4, 702
                  xor          s5, sp, ra
                  sra          a7, a0, s1
952:              bge          zero, s5, 966f
953:              slli         zero, s8, 18
                  sltiu        s5, s1, -1999
                  beq          s5, a2, 958f
                  nop
                  ori          zero, t4, 1946
958:              bgeu         t5, t4, 978f
                  bge          s5, a6, 979f
                  xori         s4, tp, -1028
961:              auipc        s3, 337760
                  ori          t0, s7, -1342
                  srli         s5, a3, 3
                  add          a7, s6, t3
                  sll          s7, t4, s11
966:              beq          t5, a0, 977f
                  sltu         t6, zero, zero
                  ori          s1, a3, 1729
                  lui          a5, 144703
                  blt          ra, a2, 974f
                  sub          t0, s8, s11
                  xori         s7, ra, 1167
                  la           a6, region_0+707 #start riscv_load_store_rand_instr_stream_3
                  ori          t5, t6, -1210
                  nop
                  lw           zero, -231(a6)
                  sh           s6, 235(a6)
                  sb           s10, -220(a6)
                  and          a5, s9, a2
                  lbu          s2, -184(a6)
                  srai         t5, t5, 2
                  lh           s5, -157(a6)
                  slt          s1, s9, a4
                  lbu          s0, -59(a6)
                  sltiu        a5, sp, -1881
                  slt          a1, a6, s0
                  sw           s10, 85(a6)
                  xor          a1, s10, s0
                  sltu         s0, a6, t5
                  lb           a7, 198(a6)
                  slli         s8, a0, 29
                  srl          t5, s3, s4
                  srli         a5, a6, 29
                  lbu          s6, -101(a6)
                  sub          gp, s7, sp
                  add          a0, t2, a3
                  lhu          t0, -211(a6)
                  lbu          t6, 151(a6)
                  sh           s7, -7(a6)
                  lbu          s4, 227(a6)
                  lbu          t3, -18(a6)
                  auipc        a5, 841614
                  sll          a0, t2, s9
                  or           s4, t4, a2
                  lui          a5, 436615
                  lbu          zero, -26(a6)
                  lhu          s6, -219(a6)
                  ori          s10, t0, 1075
                  lb           s0, 138(a6)
                  sub          tp, t1, t2
                  lui          a2, 437281
                  sb           s7, -119(a6)
                  sb           a0, -98(a6)
                  sb           a5, 6(a6)
                  srai         ra, t3, 11
                  lw           a5, 221(a6) #end riscv_load_store_rand_instr_stream_3
                  srli         a5, s1, 13
974:              sltiu        t6, t6, -1219
                  and          t4, a1, s6
                  ori          a2, gp, -97
977:              slt          s1, s0, tp
978:              blt          s4, t4, 990f
979:              sub          s11, a3, a5
                  auipc        a5, 1046160
                  sltiu        s6, s5, -1933
                  srai         t6, s3, 18
                  srai         t5, s1, 2
                  srai         t1, s11, 20
                  sub          a3, s10, sp
                  xor          gp, a3, s3
                  sltu         t4, s11, a2
                  bge          a7, s8, 994f
                  lui          t3, 872819
990:              slli         s4, s9, 28
                  bne          a4, s7, 1002f
                  xori         a2, s3, -1580
                  sltu         gp, s0, s10
994:              srai         s3, zero, 13
                  bne          s9, s10, 1011f
                  lui          a3, 565149
                  bge          s5, s4, 1009f
                  sra          s4, a3, a7
                  lui          s6, 500751
                  lui          t1, 590879
                  blt          t1, s6, 1004f
1002:             slti         t2, t3, 832
                  beq          s1, s4, 1011f
1004:             srl          s10, s5, a0
                  add          a3, a2, s0
                  or           t2, s6, s2
                  and          t1, t1, a3
                  nop
1009:             slti         t5, s9, -592
                  srl          s6, s6, s9
1011:             ori          s7, a6, -1409
                  ori          s11, a7, -1095
                  sltu         t5, sp, a2
                  add          a7, s7, s9
                  sra          t5, a6, s1
                  srl          s11, s4, s4
                  sra          s3, zero, s2
                  andi         a2, s11, -1656
                  slt          s7, s5, s3
                  slt          zero, a7, s10
                  blt          zero, t2, 1024f
                  beq          t6, a5, 1030f
                  xori         s11, gp, -1493
1024:             addi         t0, a5, 1242
                  auipc        s5, 938160
                  lui          s3, 79397
                  sltiu        a3, t2, -907
                  slti         s10, a3, 1005
                  xor          gp, t6, a0
1030:             or           s8, gp, a5
                  or           a5, a5, t5
                  addi         a1, t0, 1360
                  ori          ra, t5, -22
                  sll          a3, t2, s0
                  auipc        a7, 865266
                  srl          gp, t0, s10
                  bgeu         a4, sp, 1040f
                  srl          t2, ra, a6
                  nop
1040:             and          t0, t4, s11
                  beq          a5, t0, 1061f
                  sra          a1, t2, s0
                  sub          zero, a5, s4
                  bge          t2, gp, 1057f
                  bltu         s10, s11, 1059f
                  bgeu         s11, a7, 1050f
                  bge          s0, s6, 1064f
                  srli         s8, gp, 14
                  slli         t3, s6, 15
1050:             slli         zero, a3, 2
                  beq          a7, s7, 1062f
                  lui          a0, 1039646
                  sltiu        s0, s8, -1683
                  sra          t5, t0, t6
                  srli         t5, tp, 23
                  xori         a2, t3, 1673
1057:             srli         a6, a6, 13
                  blt          a1, s7, 1062f
1059:             slt          gp, s10, a2
                  addi         s6, s10, 741
1061:             and          t5, s4, s4
1062:             sub          a0, t2, s0
                  xori         a1, s0, -159
1064:             sll          s3, a4, tp
                  sub          ra, t5, s3
                  blt          s1, s11, 1085f
                  ori          t4, s11, -726
                  add          a3, t2, a7
                  beq          s0, s2, 1089f
                  beq          a5, a5, 1090f
                  ori          s8, s10, -1356
                  lui          t6, 401485
                  slti         zero, t0, 1011
                  srl          t5, s7, s4
                  andi         t1, s0, 1176
                  slli         tp, s0, 15
                  srl          a6, s4, tp
                  blt          t4, a6, 1080f
                  sltiu        t3, a2, 169
1080:             sltu         zero, s8, s9
                  nop
                  nop
                  blt          a1, s2, 1089f
                  sub          s4, a0, t6
1085:             bgeu         s8, s10, 1103f
                  slt          gp, t1, zero
                  sub          gp, a5, s8
                  srl          a3, gp, s4
1089:             xori         ra, tp, 106
1090:             bltu         t6, a0, 1103f
                  srai         t1, t4, 4
                  xor          t4, a6, s8
                  andi         s1, s10, -1700
                  sltiu        t0, gp, 1989
                  bge          s1, a7, 1110f
                  srl          t0, s4, a5
                  and          s0, t6, a7
                  sub          t4, zero, s8
                  sub          s0, t6, a4
                  slt          s0, s2, s11
                  xori         s11, sp, -1850
                  sltu         s8, a1, s1
1103:             slti         a0, s1, 1646
                  bge          s2, t4, 1122f
                  slli         a3, t2, 4
                  bltu         s0, s8, 1126f
                  bgeu         s7, zero, 1127f
                  srai         s2, a3, 24
                  beq          a7, s9, 1120f
1110:             srai         s2, a6, 11
                  srai         t5, zero, 3
                  nop
                  andi         a7, t4, 1360
                  sltiu        s0, sp, -712
                  slt          tp, s6, t6
                  and          ra, s10, a7
                  or           a3, t0, t0
                  nop
                  sltu         t6, s6, t0
1120:             beq          s2, s1, 1126f
                  srl          a6, sp, s10
1122:             ori          s0, ra, 626
                  sub          s6, a2, s10
                  or           t2, t2, s7
                  and          a1, s6, s4
1126:             andi         t6, a2, 323
1127:             xori         s6, a1, 1113
                  bge          s2, a3, 1137f
                  ori          t0, tp, 1612
                  srl          s11, s2, s4
                  blt          s11, ra, 1134f
                  beq          a3, t5, 1152f
                  blt          s1, t5, 1144f
1134:             bne          a4, t2, 1142f
                  srl          s6, t1, t3
                  slti         t6, t2, 1971
1137:             andi         s10, s0, 955
                  sra          s5, t0, s4
                  bgeu         s2, t5, 1143f
                  or           t6, s1, sp
                  sll          s7, tp, t1
1142:             srai         a0, t1, 31
1143:             andi         t1, t5, 145
1144:             sll          s3, t0, a5
                  sltiu        s11, s6, -554
                  ori          t4, t6, -148
                  sll          t4, gp, s4
                  sll          t0, a7, s2
                  sltiu        ra, sp, -479
                  ori          t4, sp, -1267
                  beq          a6, s6, 1164f
1152:             srai         a2, a3, 29
                  slt          s11, tp, a6
                  blt          ra, s3, 1163f
                  beq          s6, s2, 1168f
                  blt          tp, s1, 1170f
                  srai         s0, s6, 28
                  xor          zero, zero, a6
                  auipc        ra, 781062
                  bltu         t0, a0, 1180f
                  slli         s1, s0, 23
                  srli         zero, s8, 29
1163:             and          s11, s6, s2
1164:             bltu         t6, a1, 1182f
                  sltu         a5, a6, t0
                  andi         zero, t1, 1341
                  sll          a3, a3, s3
1168:             ori          t4, s4, -727
                  lui          t4, 176463
1170:             ori          ra, a3, -296
                  xori         t6, a2, 236
                  nop
                  srl          t4, s9, t3
                  bltu         ra, a1, 1186f
                  slli         s1, t0, 1
                  or           s11, a0, a1
                  srai         s3, t6, 21
                  sltiu        t3, a0, -1461
                  nop
1180:             nop
                  sll          t5, a5, s7
1182:             srl          t2, t6, s9
                  xori         t3, a4, -656
                  slt          t2, a2, t5
                  bgeu         tp, s1, 1196f
1186:             bne          a3, sp, 1192f
                  srl          s5, a0, s1
                  and          a3, s7, ra
                  sub          s5, s11, s9
                  and          t5, a6, a3
                  addi         ra, a2, 1694
1192:             addi         t6, s4, -688
                  beq          s8, t4, 1210f
                  bltu         gp, a5, 1212f
                  beq          t5, t0, 1210f
1196:             sra          t3, gp, a7
                  slli         a5, s3, 13
                  auipc        t6, 363339
                  sltiu        t2, s9, 194
                  bltu         t0, s2, 1206f
                  lui          s5, 409645
                  sra          t5, s9, a7
                  or           s8, t2, sp
                  bltu         t5, t6, 1207f
                  add          a2, sp, a3
1206:             addi         a6, s3, 1310
1207:             sra          a7, a3, a2
                  xori         s8, s2, -106
                  slli         s0, s8, 0
1210:             and          s3, t5, t4
                  bge          a6, a0, 1213f
1212:             xori         t2, gp, 1352
1213:             blt          a7, t6, 1233f
                  addi         a3, t4, 1936
                  srli         a3, a2, 30
                  slti         s5, s8, 680
                  ori          t5, s4, -456
                  srai         t2, s2, 29
                  nop
                  srl          s2, gp, t6
                  bgeu         s4, s6, 1241f
                  ori          s1, t1, -1062
                  srai         s7, s8, 0
                  slli         s8, s9, 15
                  blt          s6, s8, 1236f
                  sub          s3, a7, t3
                  srl          t1, a4, ra
                  bge          a1, s3, 1234f
                  sll          t6, tp, a6
                  bne          t2, s10, 1250f
                  srl          gp, s10, s9
                  ori          t4, s10, -768
1233:             bne          zero, a0, 1252f
1234:             bne          s11, gp, 1242f
                  sra          a2, s10, t0
1236:             xor          s3, t4, s6
                  bge          s2, t1, 1253f
                  addi         gp, s5, 911
                  and          a1, s1, s4
                  slti         t2, a3, -836
1241:             bge          a6, a6, 1245f
1242:             bltu         a4, s5, 1245f
                  andi         ra, gp, -467
                  add          gp, a2, s9
1245:             nop
                  sub          ra, s3, a6
                  bne          a7, zero, 1267f
                  slli         tp, s0, 2
                  srai         a7, sp, 16
1250:             bltu         t6, t1, 1262f
                  sltu         a2, a4, s4
1252:             bge          a0, s8, 1255f
1253:             srai         s10, t4, 11
                  xori         s10, s0, 89
1255:             and          s8, ra, s11
                  bltu         a4, a7, 1264f
                  srai         s1, a3, 27
                  auipc        a0, 552202
                  srli         a7, tp, 1
                  sltiu        s0, s8, 1189
                  and          a5, a1, a4
1262:             xor          a3, s2, s5
                  slli         s2, a1, 21
1264:             add          zero, t5, s8
                  beq          a4, s3, 1283f
                  bltu         s10, gp, 1281f
1267:             bltu         s2, tp, 1270f
                  slt          t5, t1, s1
                  xori         gp, gp, -597
1270:             sltu         zero, s11, a3
                  srai         s8, t0, 6
                  slt          s0, s6, a1
                  xori         s5, s9, 1641
                  andi         a5, ra, -959
                  slti         s10, s6, 1144
                  blt          s9, t1, 1295f
                  lui          tp, 246381
                  slti         s3, s11, -1222
                  beq          s0, a5, 1299f
                  auipc        s2, 159234
1281:             sub          a6, t4, ra
                  slti         s5, a0, -730
1283:             lui          a5, 37282
                  srai         s7, s7, 8
                  lui          tp, 568473
                  bge          t2, s3, 1299f
                  sltiu        a2, s1, -75
                  bgeu         t5, a1, 1292f
                  bne          a0, s5, 1291f
                  addi         t5, a3, 346
1291:             lui          s8, 468146
1292:             addi         t6, t0, 164
                  bge          a3, sp, 1301f
                  lui          s0, 186999
1295:             beq          t1, s0, 1301f
                  addi         s3, sp, 240
                  bne          s7, s5, 1315f
                  srl          a5, s6, s7
1299:             and          a5, a7, s10
                  sltiu        t1, s2, -121
1301:             sltiu        s5, s1, -302
                  sltu         a2, gp, a0
                  slli         zero, a3, 4
                  blt          t2, s2, 1324f
                  auipc        tp, 846296
                  slti         s5, s2, 1320
                  bgeu         t5, s5, 1316f
                  beq          a2, s8, 1319f
                  bgeu         t4, a7, 1320f
                  ori          t4, tp, -124
                  slli         ra, s2, 25
                  andi         ra, a1, -494
                  ori          a1, s8, 1365
                  sltiu        s1, s1, 991
1315:             sltiu        s4, t4, -801
1316:             sltiu        ra, tp, 1620
                  slti         s7, a0, -1374
                  nop
1319:             bgeu         s4, s2, 1322f
1320:             slti         s1, t6, 233
                  andi         t5, a2, -1088
1322:             nop
                  srli         s0, a6, 2
1324:             andi         a1, ra, 1981
                  bne          t1, t0, 1339f
                  bgeu         s10, a7, 1332f
                  xori         t3, a0, 73
                  bge          a2, s4, 1344f
                  xor          a0, s11, ra
                  xori         t3, gp, 747
                  nop
1332:             sll          a2, s4, a6
                  sltu         gp, t3, s3
                  srai         t6, s4, 11
                  slli         t4, a6, 2
                  sltu         s10, a3, s6
                  ori          t3, s6, 535
                  srli         s8, s10, 26
1339:             slli         a1, t2, 16
                  sub          t2, s6, a0
                  sub          t6, t5, t3
                  srli         s11, t4, 13
                  la           t1, region_1+1025 #start riscv_load_store_rand_instr_stream_12
                  and          t5, s7, ra
                  auipc        s2, 345279
                  slti         a2, s4, 343
                  srl          s2, s3, a6
                  srl          s3, t0, s4
                  lbu          gp, 12(t1)
                  lbu          ra, 52(t1)
                  sb           s11, 25(t1)
                  add          a7, a7, s6
                  slli         s7, t1, 27
                  sll          s5, s4, a4
                  slt          a3, s8, a2
                  xori         t0, a5, -1279
                  srli         a3, s2, 20
                  auipc        a0, 1043056
                  lbu          s1, -40(t1)
                  sll          s5, t3, s9
                  slti         s2, s2, -1832
                  lhu          t3, -37(t1)
                  lui          a5, 359369
                  nop
                  slli         s6, zero, 31
                  sub          a3, s3, s3
                  sltiu        tp, s8, -288
                  andi         s11, t6, 1728
                  sltu         s11, s7, a5
                  sb           s5, 45(t1)
                  slli         a6, s8, 14
                  lui          a5, 478034
                  sb           s7, 13(t1)
                  sub          a6, t0, s9
                  lb           zero, -48(t1)
                  ori          t2, sp, -1103
                  nop
                  xori         a5, t0, 420
                  lbu          zero, -28(t1)
                  lb           zero, 33(t1)
                  sra          s5, gp, tp
                  and          s11, s11, s5
                  lbu          gp, -60(t1)
                  lbu          a3, -6(t1)
                  srli         ra, s9, 15
                  lh           s5, -21(t1)
                  sb           s10, 24(t1) #end riscv_load_store_rand_instr_stream_12
                  bltu         t0, s11, 1356f
1344:             add          a7, a4, t3
                  auipc        zero, 80663
                  slt          t3, s10, a1
                  beq          s11, s5, 1353f
                  nop
                  or           t6, tp, t2
                  sltu         a1, gp, s6
                  slti         tp, t2, -1193
                  srli         a2, s7, 15
1353:             slt          t0, ra, a4
                  slli         a2, a5, 8
                  and          a1, a3, sp
1356:             beq          s8, s6, 1373f
                  and          s0, t1, s7
                  bltu         t3, s8, 1369f
                  srl          t5, s6, sp
                  srl          t2, t2, s9
                  andi         tp, tp, 1001
                  lui          s5, 996632
                  bge          sp, sp, 1383f
                  sub          a3, t2, tp
                  addi         a7, a4, 179
                  sltu         a6, zero, t2
                  blt          s11, t2, 1387f
                  ori          t3, s10, 1349
1369:             srl          s1, t1, a6
                  auipc        a0, 729512
                  or           a0, s11, t4
                  bne          s9, t0, 1376f
1373:             srli         s2, a6, 18
                  slli         s1, t0, 26
                  ori          a2, s1, 1364
1376:             xor          s6, a0, s0
                  srli         s8, gp, 19
                  nop
                  nop
                  bltu         sp, s6, 1395f
                  slli         tp, s11, 5
                  slt          ra, zero, ra
1383:             bne          a6, s1, 1385f
                  sra          s1, sp, a0
1385:             bltu         s5, tp, 1398f
                  nop
1387:             andi         s8, s9, 133
                  bge          t4, t3, 1402f
                  lui          t3, 937621
                  auipc        zero, 371192
                  auipc        s8, 1013884
                  add          a5, t4, t5
                  auipc        t4, 482950
                  sra          a0, t3, s5
1395:             lui          t5, 891427
                  sltiu        t4, a4, 724
                  sltu         s11, s1, a5
1398:             lui          a7, 573639
                  add          a0, a1, gp
                  or           t6, a4, a4
                  srai         a7, a3, 31
1402:             or           a7, s6, gp
                  sra          t3, s6, s2
                  nop
                  sll          s6, t1, t0
                  lui          gp, 918561
                  sltiu        s0, t4, -2004
                  and          s3, a4, s11
                  auipc        a6, 133763
                  sra          s6, a7, t1
                  xori         gp, s7, -594
                  addi         zero, a7, -984
                  lui          zero, 963515
                  srai         t4, a3, 19
                  srli         s11, s9, 24
                  addi         t4, s0, -1958
                  nop
                  or           t0, s2, s4
                  srl          s8, a6, tp
                  slti         t3, t4, 278
                  bge          s6, s3, 1441f
                  slt          t1, s8, t2
                  srai         s4, s11, 0
                  or           t6, s7, s7
                  lui          zero, 978613
                  xori         s8, a5, -682
                  and          t4, s7, t0
                  and          s10, s5, a5
                  lui          a7, 626194
                  andi         a6, a7, 1983
                  auipc        t0, 857007
                  add          a2, s6, s5
                  bne          s7, a2, 1453f
                  add          s5, gp, s2
                  bne          a6, tp, 1438f
                  bltu         s8, sp, 1456f
                  slti         gp, s7, 1621
1438:             auipc        s8, 988195
                  nop
                  sltu         s1, s1, t5
1441:             andi         t3, t2, -25
                  sltu         zero, t0, s10
                  or           a1, t3, t0
                  nop
                  or           a1, tp, a6
                  slt          a3, zero, ra
                  nop
                  and          zero, t5, a0
                  slt          a5, a4, s10
                  srl          s4, a7, a1
                  bne          t0, a7, 1462f
                  or           t6, sp, s0
1453:             bltu         t5, a2, 1464f
                  ori          s10, a7, -234
                  and          ra, s8, s8
1456:             srai         t5, s3, 1
                  sltiu        a0, s6, 1527
                  srai         ra, t0, 31
                  beq          s10, s2, 1465f
                  and          t5, t4, zero
                  sll          a6, s9, ra
1462:             srl          a0, t1, t4
                  sra          s1, s3, t0
1464:             lui          s3, 103081
1465:             xori         s11, s6, -895
                  srai         t4, t3, 16
                  sra          a3, a0, t0
                  sltiu        s3, s0, 587
                  sll          a5, a7, sp
                  srl          gp, gp, t1
                  nop
                  ori          s11, a2, -1657
                  slli         s10, zero, 10
                  bltu         zero, ra, 1480f
                  andi         gp, a4, -1052
                  and          t6, s6, a6
                  add          t1, a4, s1
                  auipc        t2, 601647
                  andi         a5, s3, 1124
1480:             slt          ra, s2, s4
                  lui          t3, 236284
                  auipc        a3, 786634
                  xori         a7, s7, -141
                  xori         ra, s1, 1861
                  or           t5, t0, a0
                  andi         s1, s11, -1747
                  slti         s6, a2, -155
                  beq          s3, a3, 1499f
                  sub          a6, t2, s5
                  sltiu        a0, s5, 1841
                  beq          t0, s11, 1503f
                  sub          a1, s11, s0
                  srai         a3, s4, 23
                  srl          s3, s9, tp
                  srl          t6, t6, t5
                  or           s0, zero, a5
                  andi         s11, s5, 1663
                  lui          s6, 231026
1499:             sltiu        s4, s5, 577
                  addi         zero, a6, -1269
                  bltu         s9, t2, 1521f
                  add          s3, sp, s7
1503:             nop
                  addi         s6, a0, 1897
                  sra          s8, a0, s1
                  xori         gp, a2, -2018
                  slt          ra, s8, s7
                  bge          a3, a5, 1517f
                  bne          a0, gp, 1525f
                  srai         s6, s8, 22
                  slti         a2, s4, -135
                  sub          gp, s6, s9
                  sll          s1, a0, s9
                  blt          a6, a2, 1532f
                  xor          a2, gp, t4
                  bge          ra, s3, 1520f
1517:             sll          a1, t5, s6
                  lui          s8, 304843
                  sltu         s0, a7, t3
1520:             srai         s5, s1, 0
1521:             xor          a1, s2, a4
                  sltiu        t0, a0, 1951
                  ori          gp, t4, -1508
                  or           t4, s8, t5
1525:             sltu         s7, s4, a5
                  bgeu         t4, s11, 1532f
                  srai         s6, a0, 4
                  srai         s11, t6, 13
                  sra          t4, gp, s11
                  xor          t3, t3, s6
                  xori         ra, s9, -407
1532:             slli         s10, s9, 13
                  bltu         s1, ra, 1553f
                  ori          t3, t1, 867
                  slli         t2, s11, 8
                  add          s8, a2, a5
                  slli         s6, t4, 15
                  or           a5, t4, a6
                  and          t2, a0, s9
                  srl          t5, s7, t1
                  xori         t2, s3, -911
                  add          s1, a7, s1
                  la           t2, region_1+805 #start riscv_load_store_rand_instr_stream_6
                  sltiu        a1, t2, 747
                  lb           a3, -50(t2)
                  lh           tp, -55(t2)
                  srli         a3, s11, 19
                  lbu          s1, -28(t2)
                  sra          a1, a5, zero
                  sb           s10, -31(t2)
                  xor          a7, a2, s9
                  sb           zero, -50(t2)
                  lb           t0, -11(t2)
                  lhu          t5, 63(t2)
                  xori         s0, s11, 23
                  andi         a2, a1, 750
                  sb           zero, 46(t2)
                  or           a6, s11, s10
                  xor          t1, a7, s9
                  lhu          a2, -3(t2)
                  add          gp, s0, a5
                  lb           a6, 38(t2)
                  sb           t3, 54(t2)
                  lbu          gp, 2(t2)
                  lhu          s11, 13(t2)
                  sb           t4, 6(t2)
                  or           t1, s11, t5
                  srli         a2, s7, 15
                  sltu         a1, t0, t1
                  sb           s9, -34(t2)
                  sra          s1, a7, s8
                  sb           s4, 21(t2)
                  ori          tp, a4, 1263
                  lb           s6, 54(t2) #end riscv_load_store_rand_instr_stream_6
                  beq          a3, t1, 1560f
                  srai         t0, a0, 3
                  beq          a3, a7, 1564f
                  srl          a6, s5, s0
                  beq          sp, s11, 1550f
                  slli         s11, a5, 17
                  nop
1550:             bne          a4, s4, 1563f
                  sltu         s10, s7, t4
                  sub          a6, t1, s8
1553:             sltu         s10, t2, a0
                  ori          s7, s3, -2003
                  andi         s10, a7, 679
                  bltu         a6, a4, 1564f
                  and          t3, s2, a5
                  srli         s0, t3, 27
                  sll          t4, t0, t1
1560:             andi         a6, a2, 914
                  ori          t6, s1, 582
                  sltiu        a5, s7, -955
1563:             xor          t2, s2, t1
1564:             auipc        s8, 678554
                  or           s7, a5, sp
                  sltiu        a5, s2, 1583
                  blt          t2, a1, 1585f
                  bgeu         t4, s11, 1571f
                  srli         s1, a5, 4
                  slt          ra, s8, t6
1571:             slt          a6, s2, s5
                  nop
                  slli         t4, gp, 11
                  beq          t6, s6, 1578f
                  slt          a6, s10, ra
                  slti         s10, s0, -1337
                  sra          s7, t5, s8
1578:             sll          s6, t3, ra
                  nop
                  bge          s4, s7, 1588f
                  bgeu         t3, s1, 1584f
                  nop
                  sltu         s2, s3, s7
1584:             lui          s4, 324546
1585:             auipc        s10, 245487
                  bgeu         s6, t4, 1589f
                  beq          sp, s8, 1598f
1588:             sltiu        s11, t1, -1495
1589:             sltu         s7, gp, s7
                  bgeu         s1, s10, 1606f
                  auipc        s7, 261582
                  slli         a6, s11, 3
                  sll          a6, a5, a1
                  beq          a6, a2, 1607f
                  srl          a1, s2, s6
                  andi         s4, t1, 1596
                  bgeu         a6, a3, 1611f
1598:             srli         s2, tp, 22
                  bge          a0, t0, 1608f
                  auipc        ra, 958149
                  bne          a0, s7, 1618f
                  sll          s6, s11, t4
                  xori         s10, s8, -1639
                  sub          s10, a1, t2
                  srl          s0, a6, a7
1606:             srl          a1, s8, t2
1607:             slt          t4, s3, t4
1608:             ori          gp, s2, -134
                  sltu         a5, t5, gp
                  sltiu        t4, a2, 191
1611:             sub          s6, t6, a7
                  lui          s7, 133423
                  or           t4, s6, zero
                  auipc        a7, 751289
                  srli         a0, a3, 17
                  sub          zero, t5, a3
                  blt          s2, s2, 1623f
1618:             sltu         s7, s6, s8
                  bge          s0, a3, 1623f
                  slti         t1, a0, 1400
                  and          s2, s1, a2
                  beq          a0, t2, 1642f
1623:             addi         a3, sp, 935
                  nop
                  nop
                  slt          t4, sp, a6
                  lui          s0, 93788
                  slti         s8, t0, 964
                  ori          a1, s2, 104
                  and          s10, t5, s9
                  sltu         t0, a7, s7
                  srai         tp, s7, 24
                  andi         s3, a4, 891
                  beq          t0, t5, 1654f
                  and          a1, t2, a7
                  sub          s1, a5, ra
                  sltu         s10, s7, s0
                  srl          a5, s0, t5
                  srai         a6, t4, 10
                  srai         a0, a6, 23
                  slti         s4, a7, -857
1642:             ori          a0, a1, -1587
                  or           a6, a4, s0
                  bltu         a0, t6, 1657f
                  xori         zero, t4, 252
                  nop
                  blt          sp, a1, 1667f
                  addi         s5, t0, 11
                  srli         t4, t1, 24
                  bge          s11, t6, 1670f
                  slt          a6, a2, a6
                  srl          a2, t1, t0
                  srl          a3, sp, s0
1654:             slt          zero, a1, s1
                  blt          a1, s10, 1663f
                  lui          s4, 709934
1657:             andi         s11, s1, 1669
                  sltu         s2, s3, a4
                  sltiu        t5, sp, 76
                  bge          a0, s4, 1664f
                  nop
                  sra          a1, a5, sp
1663:             ori          s5, t1, -903
1664:             bgeu         a1, ra, 1675f
                  srli         t6, s5, 20
                  and          s10, s3, t5
1667:             sltu         s3, gp, a5
                  xor          ra, s9, t0
                  bltu         a2, t6, 1672f
1670:             bgeu         s6, a1, 1689f
                  slt          s8, s0, s3
1672:             and          gp, t6, s9
                  bge          s7, t6, 1685f
                  or           s6, t1, t4
1675:             add          t6, t6, gp
                  sll          ra, t6, s2
                  slt          s10, a4, s5
                  bltu         s8, s6, 1693f
                  lui          s5, 97488
                  auipc        s0, 535452
                  sltu         s4, t1, s9
                  lui          t0, 529333
                  or           s11, t6, t3
                  sll          s2, s4, a1
1685:             slli         tp, s11, 21
                  srai         a0, s0, 5
                  slti         a7, s8, -1489
                  bge          s7, a1, 1690f
1689:             andi         s8, s3, 1197
1690:             bltu         t6, a1, 1708f
                  bge          s7, zero, 1702f
                  ori          a2, a6, 2029
1693:             sra          t4, s10, a4
                  slt          t0, s6, s0
                  sll          t0, a3, t3
                  ori          s4, s1, -538
                  srl          s2, sp, tp
                  add          a1, s2, s10
                  lui          s3, 613949
                  slli         s7, a6, 11
                  sltiu        a1, s1, -689
1702:             addi         a7, t1, 1196
                  xor          gp, s7, s0
                  add          ra, t0, t4
                  sll          s4, a6, s7
                  sltiu        t6, t5, -497
                  srl          s8, t2, t4
1708:             auipc        s0, 7025
                  sltu         s8, s11, a1
                  ori          s10, s5, 535
                  sltiu        a0, t0, -1831
                  auipc        t4, 183417
                  sub          s10, s6, s1
                  bge          zero, s9, 1722f
                  or           t1, a7, t3
                  xor          gp, s5, a5
                  xor          s4, s1, a0
                  srli         s4, a2, 27
                  sra          t1, s6, a1
                  slli         s10, s6, 0
                  srli         a6, t5, 21
1722:             or           a6, a2, a6
                  bge          s3, a0, 1729f
                  beq          gp, s7, 1744f
                  bge          s4, a0, 1731f
                  sltu         ra, a7, t5
                  auipc        a0, 387037
                  bge          sp, sp, 1746f
1729:             sltiu        s3, a2, -1772
                  and          s0, s4, t4
1731:             slti         t6, a6, 1562
                  xor          a5, s5, zero
                  auipc        s4, 7898
                  sltiu        t2, sp, 1959
                  bne          s3, s8, 1747f
                  and          t6, a4, s8
                  sll          a1, a5, s4
                  bltu         t1, s9, 1754f
                  or           t3, a5, a6
                  bltu         s5, a1, 1748f
                  andi         s7, tp, 1464
                  sltiu        s5, s7, 112
                  bge          t0, s10, 1746f
1744:             sub          s0, zero, a2
                  auipc        gp, 583273
1746:             auipc        gp, 96484
1747:             beq          s1, s6, 1753f
1748:             slt          a6, a2, a2
                  srl          a0, zero, t2
                  nop
                  ori          a1, a5, 1200
                  slli         s3, ra, 5
1753:             andi         s0, tp, -547
1754:             add          ra, a7, gp
                  or           a5, a6, s8
                  srl          t5, s5, sp
                  nop
                  srl          s5, s11, t0
                  slt          t0, a1, s9
                  srai         a0, t6, 21
                  sra          s4, t4, t0
                  srai         gp, s9, 19
                  nop
                  srl          t2, s6, s0
                  beq          s11, s1, 1785f
                  ori          s6, t3, -1812
                  auipc        ra, 862097
                  sll          t4, s11, s1
                  slti         s5, gp, 98
                  sltu         a0, a6, a4
                  lui          a1, 125649
                  xor          s11, s5, s8
                  sll          zero, s10, a5
                  xori         a0, s9, 1323
                  and          s7, s1, s8
                  bge          s10, t3, 1790f
                  or           t6, t2, s10
                  bltu         gp, a5, 1789f
                  bltu         a3, s10, 1785f
                  addi         a5, a2, 150
                  or           s8, s0, t0
                  srli         s1, s9, 19
                  srli         gp, t5, 9
                  blt          t5, t4, 1804f
1785:             srl          t3, tp, t1
                  sll          s11, a0, s2
                  bgeu         t2, s2, 1791f
                  blt          s7, s6, 1792f
1789:             sll          s7, a2, s6
1790:             xori         t2, a3, -632
1791:             sra          a3, a5, sp
1792:             sltu         s2, t2, t6
                  auipc        a7, 398593
                  srli         a5, a6, 13
                  slt          s2, t2, s5
                  bltu         t0, tp, 1809f
                  or           a6, s0, s0
                  beq          ra, t3, 1804f
                  bge          s10, t6, 1801f
                  auipc        s7, 839072
1801:             and          t2, a7, a7
                  sltiu        s3, a1, -1654
                  auipc        s6, 68705
1804:             bltu         gp, s2, 1812f
                  bltu         t3, tp, 1808f
                  xori         s11, s6, 1220
                  slli         a7, s10, 24
1808:             srli         tp, s9, 22
1809:             bge          s5, t0, 1812f
                  bge          s9, s9, 1830f
                  blt          zero, t3, 1826f
1812:             srl          s0, s1, s5
                  sltiu        a7, a6, -800
                  lui          s11, 250763
                  sltu         a7, t2, a4
                  xori         a6, s6, 167
                  xori         zero, a3, 495
                  blt          zero, a4, 1829f
                  bgeu         s7, a6, 1830f
                  or           a3, a3, a0
                  bne          s4, s11, 1838f
                  bne          s3, s3, 1841f
                  and          s10, s5, a6
                  lui          s5, 954425
                  srl          gp, sp, t2
1826:             srai         s6, t0, 1
                  auipc        t1, 94677
                  srli         s6, t0, 3
1829:             sltiu        a2, s6, -1067
1830:             bltu         tp, t0, 1839f
                  xori         s10, t2, 1043
                  blt          gp, s6, 1852f
                  auipc        a2, 393364
                  bge          a3, a4, 1852f
                  ori          s4, zero, -1962
                  xori         a3, s10, -787
                  xori         a1, a6, 212
1838:             ori          s10, t3, -1604
1839:             bltu         t1, t3, 1857f
                  addi         s11, s11, -811
1841:             add          t3, a2, a2
                  nop
                  bltu         a1, sp, 1856f
                  ori          s3, gp, -563
                  or           zero, s4, tp
                  slt          t3, ra, t3
                  bne          gp, t4, 1867f
                  slli         s8, s8, 12
                  andi         gp, t2, -423
                  nop
                  auipc        s5, 197510
1852:             bltu         s10, sp, 1860f
                  bne          s11, gp, 1866f
                  blt          gp, t0, 1863f
                  xor          t3, a1, ra
1856:             ori          s1, t5, 827
1857:             xor          zero, tp, s6
                  xor          s5, zero, a3
                  addi         tp, s6, -265
1860:             sub          t0, s11, zero
                  bne          s0, s5, 1865f
                  srl          a0, a2, a7
1863:             blt          a2, a3, 1883f
                  ori          s5, s1, 369
1865:             bge          s3, tp, 1883f
1866:             andi         t6, zero, -1386
1867:             addi         zero, s5, -1336
                  addi         a6, s10, -1520
                  nop
                  xori         t6, a2, -304
                  bltu         s0, s6, 1886f
                  auipc        t2, 61246
                  srl          s8, a5, s10
                  la           t3, region_0+973 #start riscv_load_store_rand_instr_stream_13
                  slt          s7, t1, sp
                  sltu         a2, s7, t1
                  sh           s9, 5(t3)
                  lbu          tp, -3(t3)
                  lbu          t5, -14(t3)
                  lb           s0, -6(t3)
                  sub          s3, sp, a3
                  lh           t4, -9(t3)
                  sub          a7, s9, s10
                  or           a3, a7, s5
                  lb           s5, -13(t3)
                  slt          zero, t2, a5
                  srl          t6, t2, s3
                  and          s2, s11, s0
                  lb           ra, -4(t3)
                  lbu          a5, 2(t3)
                  addi         s11, a7, -1371
                  lb           a0, -11(t3)
                  sb           s10, 6(t3)
                  srli         s10, ra, 28
                  addi         s8, t5, 747
                  lhu          ra, 15(t3)
                  lbu          t4, 13(t3)
                  andi         s2, a2, -586
                  lb           s6, -7(t3)
                  slli         s1, s7, 16
                  xor          s1, s9, s5
                  sb           s3, 1(t3)
                  sb           a2, -10(t3)
                  lb           s1, 12(t3)
                  xori         t6, s6, -1396
                  xori         s10, t1, -676
                  sh           a2, -7(t3)
                  lb           tp, -1(t3)
                  sh           t4, 5(t3)
                  sltu         s1, t0, a0
                  sltu         s2, t0, gp
                  lhu          s6, 5(t3) #end riscv_load_store_rand_instr_stream_13
                  bgeu         s2, t1, 1894f
                  xori         a2, a4, 1130
                  bne          t6, s6, 1879f
                  bgeu         sp, t0, 1883f
                  sra          s3, s3, sp
1879:             add          s11, t6, t5
                  slt          a7, s7, s4
                  or           t5, s4, a1
                  bltu         s5, a3, 1884f
1883:             srli         a5, a1, 21
1884:             bltu         a5, zero, 1898f
                  srai         a6, t1, 11
1886:             srl          s10, s4, a6
                  bltu         t2, t1, 1893f
                  lui          t2, 264559
                  bne          a5, s4, 1909f
                  sra          s3, zero, s5
                  bne          a2, s0, 1894f
                  srl          t3, s9, a7
1893:             sltu         s0, t4, a6
1894:             blt          a0, s10, 1906f
                  add          s7, s11, t5
                  bgeu         s10, t4, 1916f
                  sra          a0, s4, tp
1898:             slli         ra, s8, 20
                  srai         t5, s1, 0
                  lui          a1, 1007842
                  slti         a0, a1, -1986
                  xori         s7, s0, 910
                  or           s1, sp, a3
                  beq          a1, t6, 1915f
                  nop
1906:             bge          s6, a6, 1919f
                  bge          t6, a7, 1918f
                  sll          tp, a1, s3
1909:             and          t1, s2, a6
                  sra          a5, zero, s1
                  slt          a5, t5, s10
                  ori          s3, t4, 1486
                  bgeu         s1, a0, 1932f
                  slli         gp, t3, 17
1915:             and          a7, s7, a6
1916:             auipc        s8, 329480
                  srl          s10, a0, t5
1918:             sltiu        zero, ra, 604
1919:             srai         a7, s5, 21
                  sltu         s8, a1, s0
                  beq          s2, s9, 1937f
                  slt          s11, sp, t6
                  sltiu        a1, a6, 1900
                  srai         t0, a4, 17
                  srai         t1, ra, 31
                  srai         s5, a5, 3
                  sll          t3, t2, s4
                  nop
                  lui          s6, 262099
                  andi         a6, gp, 1741
                  add          a7, a2, s0
1932:             slt          s6, a3, s1
                  bltu         a2, zero, 1937f
                  srl          t4, a5, zero
                  xori         s1, s3, -382
                  srli         s4, a6, 26
1937:             xori         s2, t2, -1890
                  and          t5, t3, s2
                  sub          s1, t2, s5
                  nop
                  sll          s3, a1, ra
                  sra          t4, a7, s4
                  ori          ra, sp, -1502
                  slti         t1, t0, 189
                  add          t5, a5, t3
                  nop
                  auipc        s11, 651696
                  sll          t0, s4, s8
                  sltiu        s3, t4, -875
                  srl          t3, a1, s6
                  add          s3, t4, t0
                  sra          a3, s5, zero
                  ori          a6, t2, 1489
                  srai         s6, gp, 18
                  bgeu         a6, s1, 1958f
                  and          t4, s6, t0
                  slli         a5, s9, 20
1958:             andi         tp, t2, -431
                  slli         t4, s4, 23
                  bge          a5, s8, 1968f
                  bne          s9, s1, 1967f
                  bne          t4, s11, 1982f
                  lui          s1, 178705
                  bltu         a1, ra, 1975f
                  sra          s7, t5, a7
                  nop
1967:             sltiu        s7, a6, 1713
1968:             bge          a5, s1, 1985f
                  sltiu        t5, a1, -1131
                  andi         a1, t5, -1618
                  and          a2, s7, tp
                  bgeu         s5, s1, 1990f
                  sll          a3, s7, t4
                  ori          t6, a4, -1835
1975:             sltiu        t5, a4, -1726
                  srli         t4, sp, 0
                  beq          t4, s0, 1997f
                  srai         t1, s11, 10
                  bge          s10, tp, 1985f
                  bltu         a5, s5, 1982f
                  sub          t5, a2, t5
1982:             andi         t2, s4, 1729
                  or           t3, a3, sp
                  beq          s2, a5, 1995f
1985:             bltu         t4, s4, 2005f
                  slli         gp, s7, 1
                  srli         a0, s11, 27
                  xori         a1, s2, 729
                  xor          s2, s6, t0
1990:             srai         tp, s3, 28
                  bge          tp, t0, 1997f
                  sltu         t0, s9, zero
                  nop
                  xori         zero, a3, -669
1995:             srai         s6, s9, 20
                  andi         s7, t6, -1288
1997:             bgeu         t0, a1, 2017f
                  srl          a2, t5, a1
                  add          s4, t1, s1
                  add          t5, a2, s9
                  ori          s1, sp, 108
                  addi         t5, a5, -241
                  sll          t0, a5, s9
                  xori         s6, s0, -941
2005:             bge          s2, s11, 2020f
                  sltu         ra, s5, a6
                  auipc        t1, 841781
                  sra          t2, t0, s7
                  lui          a5, 778298
                  slli         s0, s2, 10
                  bgeu         s9, t4, 2015f
                  srai         s8, s9, 16
                  beq          t3, s5, 2022f
                  sltiu        gp, a0, 1454
2015:             add          t4, ra, t3
                  sll          a0, s8, s6
2017:             andi         a5, a2, -845
                  bne          s5, s10, 2034f
                  slli         s11, t5, 30
2020:             xor          s2, s7, sp
                  beq          t3, t1, 2025f
2022:             bltu         a3, t0, 2033f
                  bge          s8, t2, 2040f
                  sra          s5, t3, t4
2025:             xori         s5, s2, 904
                  srli         zero, a0, 19
                  sll          s1, s1, a7
                  and          ra, gp, a0
                  lui          zero, 898958
                  xori         s2, s11, 1811
                  slti         a2, t2, 478
                  beq          s10, s1, 2051f
2033:             xor          a5, s7, a2
2034:             add          a3, a2, ra
                  slti         t4, s1, -1960
                  bne          t0, s2, 2039f
                  bgeu         s2, s4, 2043f
                  sra          ra, s1, s9
2039:             blt          s7, t3, 2051f
2040:             or           t0, a5, s1
                  slti         s6, s11, -626
                  bne          s11, a1, 2055f
2043:             sltiu        s6, t3, -949
                  sltu         s4, t3, s2
                  lui          a3, 10913
                  slti         s0, a2, 37
                  andi         a6, t2, 561
                  bgeu         s10, s8, 2068f
                  ori          s8, s10, 1264
                  xori         s10, s9, -831
2051:             add          s11, s7, gp
                  nop
                  bne          a3, a7, 2071f
                  ori          t6, s6, -925
2055:             srai         a2, zero, 15
                  xori         s1, s10, -229
                  sub          s2, t1, s8
                  sltu         s6, t3, s0
                  slti         a7, s4, 1668
                  slt          a3, s5, ra
                  sltiu        tp, s9, 245
                  bne          t4, tp, 2065f
                  lui          s11, 649957
                  srl          s7, gp, a0
2065:             and          a1, a2, s0
                  slt          a5, t1, s4
                  slt          gp, s6, t2
2068:             nop
                  addi         s11, s4, 2021
                  xor          t6, s3, s2
2071:             sltiu        a5, t6, -407
                  bgeu         tp, a0, 2086f
                  bge          a6, a1, 2084f
                  sltiu        s3, sp, 1018
                  slti         t4, s10, 1742
                  add          s0, zero, t6
                  auipc        t6, 521923
                  bne          zero, s2, 2096f
                  add          a6, t4, s1
                  slt          gp, ra, a7
                  lui          a7, 835179
                  bgeu         t5, s2, 2090f
                  srli         t4, a6, 31
2084:             sra          s6, s5, t6
                  bltu         s2, s9, 2093f
2086:             bgeu         t1, s8, 2089f
                  bgeu         s10, s0, 2100f
                  srli         s5, s10, 28
2089:             add          tp, t4, a1
2090:             sltu         a7, t5, s9
                  or           t1, s10, a0
                  sub          s4, s6, a1
2093:             slti         ra, a3, 1418
                  lui          a2, 63695
                  ori          s5, s5, -1339
2096:             bgeu         s7, a6, 2116f
                  slt          s3, a6, tp
                  and          s0, t0, s4
                  and          s11, t4, t2
2100:             srli         s11, a0, 25
                  xori         s11, ra, -910
                  addi         a6, tp, -923
                  srli         gp, s11, 25
                  nop
                  addi         s3, a5, -1288
                  nop
                  xor          t6, a5, a6
                  and          a3, t1, s11
                  srai         gp, a2, 6
                  sub          t1, t2, t6
                  bgeu         a5, t4, 2131f
                  xor          s8, a3, s9
                  slli         s2, s1, 17
                  srl          t6, a7, ra
                  lui          s4, 158323
2116:             sra          zero, s2, s3
                  bne          t4, s11, 2137f
                  or           s11, s11, s0
                  nop
                  slli         a1, s7, 22
                  or           s1, a0, s6
                  nop
                  auipc        s7, 1001751
                  add          t6, s3, a3
                  bne          t5, t3, 2136f
                  andi         s8, a6, -1174
                  andi         a2, s2, -1580
                  srli         a5, s4, 6
                  sra          s8, ra, t2
                  sub          t2, s1, s6
2131:             srl          s8, t6, a6
                  ori          a1, a5, -1988
                  xor          tp, a7, t1
                  srl          a5, zero, sp
                  bne          a7, t0, 2141f
2136:             srli         a2, t3, 14
2137:             or           t1, zero, s7
                  auipc        t6, 238261
                  nop
                  blt          s6, a1, 2153f
2141:             slt          a2, t4, tp
                  xor          s10, gp, a0
                  or           s0, s7, s7
                  slti         t5, s11, -1640
                  bne          s11, s1, 2149f
                  add          ra, gp, a7
                  bge          t3, s2, 2150f
                  srai         zero, a6, 9
2149:             beq          s6, a6, 2168f
2150:             blt          a4, a5, 2158f
                  slti         s6, s7, 720
                  andi         s3, s11, -110
2153:             and          t2, a0, s9
                  sub          t3, s2, s6
                  bne          t6, tp, 2159f
                  srl          s3, s2, s8
                  srai         s7, zero, 18
2158:             add          a1, s9, s1
2159:             slt          s6, a1, t1
                  sltiu        s10, a5, -711
                  sltu         t6, a4, s10
                  sra          ra, ra, tp
                  andi         a1, a1, -768
                  srli         s11, t2, 17
                  sll          s7, a7, t5
                  auipc        zero, 941880
                  srli         a0, gp, 10
2168:             sltiu        s3, gp, 1623
                  xori         a2, s1, -1411
                  blt          s11, t3, 2186f
                  blt          zero, t0, 2177f
                  sltiu        t0, ra, 1572
                  or           a2, s1, a0
                  sltiu        a7, a0, 505
                  sltiu        t5, s4, 75
                  sra          s11, a1, sp
2177:             bgeu         a0, a4, 2192f
                  slli         s2, t1, 30
                  bne          a4, ra, 2196f
                  bge          a0, s9, 2191f
                  xor          a3, s11, s5
                  bgeu         a6, sp, 2202f
                  lui          t1, 721372
                  srli         t2, t6, 17
                  slli         a6, a2, 5
2186:             ori          t4, a5, 306
                  srli         t3, s11, 5
                  bgeu         s10, t3, 2197f
                  xori         tp, t6, 805
                  xor          ra, s10, zero
2191:             sub          s4, t0, a7
2192:             addi         s4, s4, 548
                  xor          t5, t4, s9
                  bltu         t3, s2, 2205f
                  srl          s8, s8, s1
2196:             and          s6, s2, s0
2197:             sub          t6, s11, sp
                  slt          gp, s6, s3
                  or           s11, s3, a2
                  lui          s5, 51580
                  nop
2202:             bgeu         s2, a7, 2220f
                  xor          a6, a2, a5
                  addi         s11, gp, 2001
2205:             auipc        a7, 716915
                  auipc        a5, 1037004
                  sll          ra, s2, tp
                  bne          ra, t3, 2210f
                  srl          zero, s11, s11
2210:             bne          sp, s11, 2230f
                  slti         a2, a4, 375
                  andi         a3, a3, -882
                  auipc        s8, 464684
                  srai         t6, gp, 28
                  sltu         t5, t0, s10
                  srli         s6, t5, 30
                  andi         s6, a3, -62
                  bne          t5, a0, 2236f
                  ori          zero, t5, -2003
2220:             and          t1, s2, a2
                  beq          s0, a7, 2233f
                  srai         ra, s0, 19
                  xori         a3, t6, 1798
                  srli         t0, a3, 29
                  addi         a3, s2, 993
                  slti         s4, sp, 250
                  sll          s2, zero, t2
                  add          a1, s6, s3
                  slti         s4, s2, -326
2230:             nop
                  srai         t3, s6, 14
                  xori         s10, s8, 1838
2233:             blt          s3, s9, 2241f
                  slt          a0, s7, s2
                  beq          tp, a4, 2238f
2236:             bge          a0, t0, 2256f
                  beq          ra, s4, 2243f
2238:             or           s8, a1, s8
                  sltu         t0, s4, sp
                  add          a3, ra, t1
2241:             addi         s11, t6, 1130
                  ori          t5, s2, -439
2243:             bltu         ra, a1, 2246f
                  xori         s7, tp, -1842
                  or           s3, tp, t4
2246:             addi         zero, a7, -773
                  bltu         s7, s4, 2261f
                  sltiu        s0, s8, 1276
                  add          a7, t1, a2
                  bltu         s5, a1, 2263f
                  slli         t2, t3, 23
                  lui          s6, 1040667
                  nop
                  nop
                  sltu         s8, s1, t6
2256:             bge          tp, t3, 2274f
                  add          s11, s9, a0
                  nop
                  add          a0, a2, a2
                  xor          t6, s4, s1
2261:             addi         t1, ra, -1771
                  slli         s8, a5, 16
2263:             srai         a3, a4, 22
                  sub          s11, s10, a4
                  addi         t2, ra, 577
                  srai         a2, a3, 3
                  slt          s5, a3, s8
                  sub          s0, t3, s11
                  auipc        s3, 452325
                  sltu         s2, t0, a2
                  bltu         t3, s8, 2273f
                  sltiu        s1, t3, 798
2273:             slli         t1, t2, 23
2274:             xori         s2, s10, 1971
                  bltu         s11, s0, 2295f
                  ori          a1, tp, -1297
                  srli         s4, a4, 31
                  xor          ra, t4, s8
                  ori          t4, s9, 1229
                  and          a2, s2, ra
                  sltiu        gp, a3, -62
                  slti         a5, a7, -333
                  ori          a7, s0, -267
                  bltu         s4, t3, 2287f
                  xor          t3, sp, a0
                  beq          t2, a4, 2306f
2287:             add          a6, a4, a3
                  bge          t2, t4, 2307f
                  sltu         a5, t1, a7
                  lui          a7, 1032769
                  bne          a6, t6, 2300f
                  srai         t2, s1, 10
                  sltu         t4, a5, a0
                  auipc        t5, 43076
2295:             slt          s7, a1, s6
                  or           zero, s6, t4
                  sltu         t2, a4, gp
                  beq          s11, s1, 2318f
                  bge          a0, t3, 2303f
2300:             addi         zero, a6, -1108
                  and          s2, tp, a1
                  xor          t5, s1, gp
2303:             sll          t0, s4, a6
                  slti         s10, s0, 1174
                  auipc        t1, 261014
2306:             ori          s8, s11, 921
2307:             sltiu        a0, s4, -1539
                  xori         a6, s11, -444
                  ori          s0, sp, 721
                  ori          tp, t5, -140
                  slti         t0, t2, 1321
                  add          a0, sp, a5
                  blt          s3, t0, 2330f
                  beq          t6, s8, 2320f
                  srli         s7, a2, 11
                  bge          tp, a6, 2330f
                  srai         s11, t6, 26
2318:             sltu         s5, t2, t0
                  or           zero, ra, a6
2320:             lui          s10, 336283
                  addi         s10, t3, 1768
                  srl          s5, t4, t1
                  xor          s3, t0, t6
                  xor          a3, s8, sp
                  and          s1, s6, s11
                  slti         s0, t5, 368
                  blt          s4, a0, 2335f
                  srl          t4, s10, t0
                  bge          ra, s1, 2335f
2330:             sltu         a3, t1, t1
                  bltu         a7, sp, 2344f
                  and          a3, gp, a4
                  bne          gp, sp, 2349f
                  sub          t4, tp, s4
2335:             srl          gp, s11, s4
                  sltiu        s2, s6, -1620
                  srl          zero, s1, s8
                  add          s11, s6, t2
                  addi         a1, s9, 1833
                  xor          s11, s0, t0
                  sltu         s0, a1, s8
                  sra          s6, a1, a0
                  bltu         t2, s7, 2354f
2344:             blt          t1, t6, 2364f
                  xor          t3, t4, t3
                  sub          s4, a0, s6
                  bltu         sp, t5, 2365f
                  bltu         a3, tp, 2360f
2349:             bgeu         s1, a5, 2364f
                  and          tp, a5, s4
                  srai         tp, t3, 27
                  srl          t0, t4, ra
                  bge          s4, s10, 2356f
2354:             srai         s3, s2, 22
                  srl          a1, s3, t3
2356:             beq          s0, s5, 2359f
                  bgeu         t3, a2, 2368f
                  slt          a3, t5, a3
2359:             bge          s3, t3, 2363f
2360:             bge          s8, ra, 2373f
                  lui          s2, 152164
                  srl          t2, s8, a3
2363:             add          s3, sp, a2
2364:             sll          s6, t2, s0
2365:             bge          a4, s4, 2371f
                  add          t1, t1, s1
                  xor          a3, t5, ra
2368:             and          a2, t2, a5
                  srl          s8, s6, s2
                  sltiu        t6, s8, 1749
2371:             slli         s7, s8, 16
                  auipc        s0, 533276
2373:             slli         gp, t0, 26
                  bge          zero, s2, 2394f
                  srai         ra, s11, 27
                  blt          s7, s6, 2387f
                  or           t3, gp, t3
                  lui          gp, 988652
                  sra          s5, s7, s2
                  srl          s4, t0, s4
                  and          t4, a6, a1
                  bgeu         s4, s4, 2390f
                  ori          a2, a3, -1942
                  srli         s11, s9, 28
                  sll          s2, a5, s11
                  lui          a6, 905461
2387:             xor          t3, s10, t4
                  bltu         a2, t5, 2401f
                  sub          t4, a3, a5
2390:             beq          s7, s1, 2410f
                  or           t0, a2, a5
                  xor          t0, gp, t2
                  nop
2394:             srli         t5, tp, 17
                  srl          s5, s6, s9
                  srai         t4, t2, 26
                  sub          s1, s10, a1
                  slli         s2, a2, 31
                  sub          t3, s2, t3
                  bltu         tp, s6, 2411f
2401:             sub          s10, s3, ra
                  auipc        a1, 518464
                  nop
                  lui          t4, 682057
                  addi         s8, zero, 91
                  auipc        gp, 430893
                  slti         t2, s6, 2043
                  slli         t2, sp, 15
                  addi         t0, a5, 1129
2410:             xor          s4, s11, t0
2411:             bgeu         t3, s10, 2422f
                  sll          t2, tp, s0
                  xor          t4, s0, t0
                  sltu         a3, sp, sp
                  bltu         t6, t0, 2433f
                  bge          s1, s3, 2431f
                  or           t1, s9, a4
                  and          ra, t5, s4
                  srli         t6, tp, 15
                  blt          t5, sp, 2437f
                  slt          s7, a1, a7
2422:             xori         t5, s10, 1097
                  slti         t3, s1, -519
                  sltiu        s6, t6, -2007
                  xor          a3, a7, s8
                  auipc        s6, 873381
                  bge          sp, t5, 2447f
                  slt          a0, t2, s1
                  lui          s6, 625732
                  beq          s6, s10, 2450f
2431:             bge          s9, s0, 2440f
                  xor          s8, sp, a4
2433:             bne          a1, s11, 2439f
                  sltu         ra, a2, s7
                  slt          s7, t4, a0
                  sub          t0, zero, tp
2437:             and          s2, ra, t6
                  slti         a1, zero, -596
2439:             slt          t5, s2, t5
2440:             bltu         sp, gp, 2446f
                  srli         zero, s8, 12
                  srai         a1, t1, 8
                  xor          ra, s5, t3
                  slt          tp, s11, a4
                  auipc        s2, 335404
2446:             srl          t2, s0, tp
2447:             bge          t0, gp, 2460f
                  slt          t6, s0, t3
                  nop
2450:             srl          a2, gp, a1
                  sub          a7, t6, a3
                  beq          t2, a4, 2458f
                  slli         a3, sp, 28
                  sltiu        ra, t0, 1663
                  beq          ra, a5, 2475f
                  bgeu         s10, s11, 2470f
                  sub          a6, a5, a6
2458:             bgeu         s2, ra, 2469f
                  bgeu         s7, s7, 2462f
2460:             nop
                  or           s11, a1, s3
2462:             slli         t3, t6, 23
                  sltiu        ra, t1, 1183
                  slt          t5, a4, s11
                  ori          s11, tp, -1986
                  auipc        t2, 81569
                  and          a2, t1, t2
                  sub          t0, a2, sp
2469:             add          t4, a7, a3
2470:             andi         a0, s7, 230
                  addi         a0, s8, 702
                  blt          t4, t5, 2474f
                  srli         t1, s7, 12
2474:             bne          s1, t0, 2482f
2475:             slli         s4, s6, 4
                  addi         tp, s3, -1071
                  sub          s7, s0, s11
                  bne          s6, s3, 2490f
                  slti         s6, gp, -338
                  bne          t1, t1, 2483f
                  sll          s0, a0, s4
2482:             srl          s2, a5, a0
2483:             addi         ra, a4, -372
                  srl          t4, s6, t2
                  slli         t3, gp, 27
                  bge          s3, a0, 2494f
                  blt          s10, t6, 2503f
                  bltu         s11, a2, 2508f
                  sltu         a7, ra, s11
2490:             sub          a5, s5, a1
                  slt          s5, zero, a7
                  sltiu        s8, sp, -874
                  sltiu        zero, zero, -590
2494:             beq          a3, gp, 2498f
                  nop
                  nop
                  xor          ra, s11, a0
2498:             auipc        a6, 262368
                  bgeu         s7, a2, 2502f
                  bltu         a2, t2, 2519f
                  andi         s6, gp, 1687
2502:             andi         s5, s0, -652
2503:             auipc        a1, 570400
                  sltiu        tp, s2, -1588
                  bne          s2, t1, 2509f
                  sltu         s5, s0, t0
                  nop
2508:             srli         s1, t6, 20
2509:             slti         a2, s7, 1574
                  srl          a2, s4, a6
                  srl          t2, t2, a0
                  addi         s10, gp, -1478
                  sll          a3, ra, s7
                  sltiu        s6, s4, 870
                  bne          s10, tp, 2527f
                  slli         t2, a2, 14
                  addi         t3, s1, -1336
                  blt          s10, s8, 2527f
2519:             srl          zero, a3, s7
                  beq          tp, tp, 2527f
                  slt          s5, s3, s0
                  xori         s8, a2, 1255
                  srli         a3, s9, 3
                  ori          s10, a6, 140
                  slli         s11, t1, 13
                  addi         s8, s11, 2016
2527:             sub          t6, s8, a7
                  addi         s2, t3, -82
                  nop
                  lw           a5, 4(sp)
                  xor          s3, s5, s5
                  lui          t6, 405594
                  sltu         s8, s0, a3
                  sll          t5, s9, t0
                  auipc        a7, 958853
                  addi         sp, sp, 28
                  slti         t2, t5, 1060
                  or           a0, s8, a6
3383:             addi x9, x15, 0
3383:             jalr x9, x9, 0
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
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x25, x2, zero
                  csrr x7, 0x300 # MSTATUS
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 31
                  bne x7, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x7, 0x341 # MEPC
                  csrr x7, 0x342 # MCAUSE
                  li x6, 0x3 # BREAKPOINT
                  beq x7, x6, ebreak_handler
                  li x6, 0x8 # ECALL_UMODE
                  beq x7, x6, ecall_handler
                  li x6, 0x9 # ECALL_SMODE
                  beq x7, x6, ecall_handler
                  li x6, 0xb # ECALL_MMODE
                  beq x7, x6, ecall_handler
                  li x6, 0x1
                  beq x7, x6, instr_fault_handler
                  li x6, 0x5
                  beq x7, x6, load_fault_handler
                  li x6, 0x7
                  beq x7, x6, store_fault_handler
                  li x6, 0xc
                  beq x7, x6, pt_fault_handler
                  li x6, 0xd
                  beq x7, x6, pt_fault_handler
                  li x6, 0xf
                  beq x7, x6, pt_fault_handler
                  li x6, 0x2 # ILLEGAL_INSTRUCTION
                  beq x7, x6, illegal_instr_handler
                  csrr x6, 0x343 # MTVAL
                  1: la x14, test_done
                  jalr x1, x14, 0

ecall_handler:    
                  la x7, _start
                  sw x0, 0(x7)
                  sw x1, 4(x7)
                  sw x2, 8(x7)
                  sw x3, 12(x7)
                  sw x4, 16(x7)
                  sw x5, 20(x7)
                  sw x6, 24(x7)
                  sw x7, 28(x7)
                  sw x8, 32(x7)
                  sw x9, 36(x7)
                  sw x10, 40(x7)
                  sw x11, 44(x7)
                  sw x12, 48(x7)
                  sw x13, 52(x7)
                  sw x14, 56(x7)
                  sw x15, 60(x7)
                  sw x16, 64(x7)
                  sw x17, 68(x7)
                  sw x18, 72(x7)
                  sw x19, 76(x7)
                  sw x20, 80(x7)
                  sw x21, 84(x7)
                  sw x22, 88(x7)
                  sw x23, 92(x7)
                  sw x24, 96(x7)
                  sw x25, 100(x7)
                  sw x26, 104(x7)
                  sw x27, 108(x7)
                  sw x28, 112(x7)
                  sw x29, 116(x7)
                  sw x30, 120(x7)
                  sw x31, 124(x7)
                  la x14, write_tohost
                  jalr x0, x14, 0

instr_fault_handler:
                  add x2, x25, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

load_fault_handler:
                  add x2, x25, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

store_fault_handler:
                  add x2, x25, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

ebreak_handler:   
                  csrr  x7, 0x341
                  addi  x7, x7, 4
                  csrw  0x341, x7
                  add x2, x25, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

illegal_instr_handler:
                  csrr  x7, 0x341
                  addi  x7, x7, 4
                  csrw  0x341, x7
                  add x2, x25, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x7, 0x300 # MSTATUS;
                  csrr  x7, 0x304 # MIE;
                  csrr  x7, 0x344 # MIP;
                  csrrc x7, 0x344, x7 # MIP;
                  add x2, x25, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
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
